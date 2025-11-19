@interface NSPPrivacyProxyTransparencyOHTTPEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTargetInformation:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyTransparencyOHTTPEntry

- (void)addTargetInformation:(id)a3
{
  v4 = a3;
  targetInformations = self->_targetInformations;
  v8 = v4;
  if (!targetInformations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_targetInformations;
    self->_targetInformations = v6;

    v4 = v8;
    targetInformations = self->_targetInformations;
  }

  [(NSMutableArray *)targetInformations addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyTransparencyOHTTPEntry;
  v4 = [(NSPPrivacyProxyTransparencyOHTTPEntry *)&v8 description];
  v5 = [(NSPPrivacyProxyTransparencyOHTTPEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_configurationDeliveryStart];
  [v3 setObject:v4 forKey:@"configurationDeliveryStart"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_configurationDeliveryEnd];
  [v3 setObject:v5 forKey:@"configurationDeliveryEnd"];

  if ([(NSMutableArray *)self->_targetInformations count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_targetInformations, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_targetInformations;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"targetInformation"];
  }

  keyConfiguration = self->_keyConfiguration;
  if (keyConfiguration)
  {
    [v3 setObject:keyConfiguration forKey:@"keyConfiguration"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  configurationDeliveryStart = self->_configurationDeliveryStart;
  PBDataWriterWriteUint64Field();
  configurationDeliveryEnd = self->_configurationDeliveryEnd;
  PBDataWriterWriteUint64Field();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_targetInformations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if (!self->_keyConfiguration)
  {
    __assert_rtn("[NSPPrivacyProxyTransparencyOHTTPEntry writeTo:]", "NSPPrivacyProxyTransparencyOHTTPEntry.m", 170, "nil != self->_keyConfiguration");
  }

  PBDataWriterWriteDataField();

  v13 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[2] = self->_configurationDeliveryStart;
  v9 = v4;
  v4[1] = self->_configurationDeliveryEnd;
  if ([(NSPPrivacyProxyTransparencyOHTTPEntry *)self targetInformationsCount])
  {
    [v9 clearTargetInformations];
    v5 = [(NSPPrivacyProxyTransparencyOHTTPEntry *)self targetInformationsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSPPrivacyProxyTransparencyOHTTPEntry *)self targetInformationAtIndex:i];
        [v9 addTargetInformation:v8];
      }
    }
  }

  [v9 setKeyConfiguration:self->_keyConfiguration];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[2] = self->_configurationDeliveryStart;
  v5[1] = self->_configurationDeliveryEnd;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_targetInformations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) copyWithZone:{a3, v16}];
        [v5 addTargetInformation:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [(NSData *)self->_keyConfiguration copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_configurationDeliveryStart == v4[2] && self->_configurationDeliveryEnd == v4[1] && ((targetInformations = self->_targetInformations, !(targetInformations | v4[4])) || -[NSMutableArray isEqual:](targetInformations, "isEqual:")))
  {
    keyConfiguration = self->_keyConfiguration;
    if (keyConfiguration | v4[3])
    {
      v7 = [(NSData *)keyConfiguration isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = (2654435761u * self->_configurationDeliveryEnd) ^ (2654435761u * self->_configurationDeliveryStart);
  v4 = [(NSMutableArray *)self->_targetInformations hash];
  return v3 ^ v4 ^ [(NSData *)self->_keyConfiguration hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_configurationDeliveryStart = *(v4 + 2);
  self->_configurationDeliveryEnd = *(v4 + 1);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 4);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSPPrivacyProxyTransparencyOHTTPEntry *)self addTargetInformation:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 3))
  {
    [(NSPPrivacyProxyTransparencyOHTTPEntry *)self setKeyConfiguration:?];
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end