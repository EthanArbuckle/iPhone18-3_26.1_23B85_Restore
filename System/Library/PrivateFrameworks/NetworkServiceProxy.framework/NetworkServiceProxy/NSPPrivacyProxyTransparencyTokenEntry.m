@interface NSPPrivacyProxyTransparencyTokenEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTokenKeys:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyTransparencyTokenEntry

- (void)addTokenKeys:(id)a3
{
  v4 = a3;
  tokenKeys = self->_tokenKeys;
  v8 = v4;
  if (!tokenKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_tokenKeys;
    self->_tokenKeys = v6;

    v4 = v8;
    tokenKeys = self->_tokenKeys;
  }

  [(NSMutableArray *)tokenKeys addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyTransparencyTokenEntry;
  v4 = [(NSPPrivacyProxyTransparencyTokenEntry *)&v8 description];
  v5 = [(NSPPrivacyProxyTransparencyTokenEntry *)self dictionaryRepresentation];
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

  issuerName = self->_issuerName;
  if (issuerName)
  {
    [v3 setObject:issuerName forKey:@"issuerName"];
  }

  if ([(NSMutableArray *)self->_tokenKeys count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_tokenKeys, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_tokenKeys;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"tokenKeys"];
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
  if (!self->_issuerName)
  {
    __assert_rtn("[NSPPrivacyProxyTransparencyTokenEntry writeTo:]", "NSPPrivacyProxyTransparencyTokenEntry.m", 163, "nil != self->_issuerName");
  }

  PBDataWriterWriteStringField();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_tokenKeys;
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

  v13 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[2] = self->_configurationDeliveryStart;
  v4[1] = self->_configurationDeliveryEnd;
  v9 = v4;
  [v4 setIssuerName:self->_issuerName];
  if ([(NSPPrivacyProxyTransparencyTokenEntry *)self tokenKeysCount])
  {
    [v9 clearTokenKeys];
    v5 = [(NSPPrivacyProxyTransparencyTokenEntry *)self tokenKeysCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSPPrivacyProxyTransparencyTokenEntry *)self tokenKeysAtIndex:i];
        [v9 addTokenKeys:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[2] = self->_configurationDeliveryStart;
  v5[1] = self->_configurationDeliveryEnd;
  v6 = [(NSString *)self->_issuerName copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_tokenKeys;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{a3, v16}];
        [v5 addTokenKeys:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_configurationDeliveryStart == v4[2] && self->_configurationDeliveryEnd == v4[1] && ((issuerName = self->_issuerName, !(issuerName | v4[3])) || -[NSString isEqual:](issuerName, "isEqual:")))
  {
    tokenKeys = self->_tokenKeys;
    if (tokenKeys | v4[4])
    {
      v7 = [(NSMutableArray *)tokenKeys isEqual:?];
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
  v4 = [(NSString *)self->_issuerName hash];
  return v3 ^ v4 ^ [(NSMutableArray *)self->_tokenKeys hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_configurationDeliveryStart = *(v4 + 2);
  self->_configurationDeliveryEnd = *(v4 + 1);
  if (*(v4 + 3))
  {
    [(NSPPrivacyProxyTransparencyTokenEntry *)self setIssuerName:?];
  }

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

        [(NSPPrivacyProxyTransparencyTokenEntry *)self addTokenKeys:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end