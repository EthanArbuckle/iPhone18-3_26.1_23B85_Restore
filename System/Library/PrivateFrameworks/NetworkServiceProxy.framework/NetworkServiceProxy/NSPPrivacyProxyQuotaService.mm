@interface NSPPrivacyProxyQuotaService
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addSupportedUseCaseIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyQuotaService

- (void)addSupportedUseCaseIdentifiers:(id)a3
{
  v4 = a3;
  supportedUseCaseIdentifiers = self->_supportedUseCaseIdentifiers;
  v8 = v4;
  if (!supportedUseCaseIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_supportedUseCaseIdentifiers;
    self->_supportedUseCaseIdentifiers = v6;

    v4 = v8;
    supportedUseCaseIdentifiers = self->_supportedUseCaseIdentifiers;
  }

  [(NSMutableArray *)supportedUseCaseIdentifiers addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyQuotaService;
  v4 = [(NSPPrivacyProxyQuotaService *)&v8 description];
  v5 = [(NSPPrivacyProxyQuotaService *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  serviceURL = self->_serviceURL;
  if (serviceURL)
  {
    [v3 setObject:serviceURL forKey:@"serviceURL"];
  }

  supportedUseCaseIdentifiers = self->_supportedUseCaseIdentifiers;
  if (supportedUseCaseIdentifiers)
  {
    [v4 setObject:supportedUseCaseIdentifiers forKey:@"supportedUseCaseIdentifiers"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_serviceURL)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_supportedUseCaseIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_serviceURL)
  {
    [v8 setServiceURL:?];
  }

  if ([(NSPPrivacyProxyQuotaService *)self supportedUseCaseIdentifiersCount])
  {
    [v8 clearSupportedUseCaseIdentifiers];
    v4 = [(NSPPrivacyProxyQuotaService *)self supportedUseCaseIdentifiersCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSPPrivacyProxyQuotaService *)self supportedUseCaseIdentifiersAtIndex:i];
        [v8 addSupportedUseCaseIdentifiers:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_serviceURL copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_supportedUseCaseIdentifiers;
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
        [v5 addSupportedUseCaseIdentifiers:v13];

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
  if ([v4 isMemberOfClass:objc_opt_class()] && ((serviceURL = self->_serviceURL, !(serviceURL | v4[1])) || -[NSString isEqual:](serviceURL, "isEqual:")))
  {
    supportedUseCaseIdentifiers = self->_supportedUseCaseIdentifiers;
    if (supportedUseCaseIdentifiers | v4[2])
    {
      v7 = [(NSMutableArray *)supportedUseCaseIdentifiers isEqual:?];
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

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 1))
  {
    [(NSPPrivacyProxyQuotaService *)self setServiceURL:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 2);
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

        [(NSPPrivacyProxyQuotaService *)self addSupportedUseCaseIdentifiers:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end