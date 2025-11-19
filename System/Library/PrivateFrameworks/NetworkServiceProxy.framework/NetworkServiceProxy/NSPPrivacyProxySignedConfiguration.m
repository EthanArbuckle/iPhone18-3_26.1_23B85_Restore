@interface NSPPrivacyProxySignedConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAlgorithm:(id)a3;
- (int)algorithm;
- (unint64_t)hash;
- (void)addCertificates:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxySignedConfiguration

- (void)addCertificates:(id)a3
{
  v4 = a3;
  certificates = self->_certificates;
  v8 = v4;
  if (!certificates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_certificates;
    self->_certificates = v6;

    v4 = v8;
    certificates = self->_certificates;
  }

  [(NSMutableArray *)certificates addObject:v4];
}

- (int)algorithm
{
  if (*&self->_has)
  {
    return self->_algorithm;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsAlgorithm:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ECDSA_SHA256"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxySignedConfiguration;
  v4 = [(NSPPrivacyProxySignedConfiguration *)&v8 description];
  v5 = [(NSPPrivacyProxySignedConfiguration *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  configuration = self->_configuration;
  if (configuration)
  {
    v5 = [(NSPPrivacyProxyConfiguration *)configuration dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"configuration"];
  }

  signature = self->_signature;
  if (signature)
  {
    [v3 setObject:signature forKey:@"signature"];
  }

  certificates = self->_certificates;
  if (certificates)
  {
    [v3 setObject:certificates forKey:@"certificates"];
  }

  if (*&self->_has)
  {
    algorithm = self->_algorithm;
    if (algorithm)
    {
      if (algorithm == 1)
      {
        v9 = @"ECDSA_SHA256";
      }

      else
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_algorithm];
      }
    }

    else
    {
      v9 = @"UNKNOWN";
    }

    [v3 setObject:v9 forKey:@"algorithm"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_configuration)
  {
    __assert_rtn("[NSPPrivacyProxySignedConfiguration writeTo:]", "NSPPrivacyProxySignedConfiguration.m", 187, "self->_configuration != nil");
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
  if (!self->_signature)
  {
    __assert_rtn("[NSPPrivacyProxySignedConfiguration writeTo:]", "NSPPrivacyProxySignedConfiguration.m", 192, "nil != self->_signature");
  }

  PBDataWriterWriteDataField();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_certificates;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteDataField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    algorithm = self->_algorithm;
    PBDataWriterWriteInt32Field();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  [v8 setConfiguration:self->_configuration];
  [v8 setSignature:self->_signature];
  if ([(NSPPrivacyProxySignedConfiguration *)self certificatesCount])
  {
    [v8 clearCertificates];
    v4 = [(NSPPrivacyProxySignedConfiguration *)self certificatesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSPPrivacyProxySignedConfiguration *)self certificatesAtIndex:i];
        [v8 addCertificates:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(v8 + 2) = self->_algorithm;
    *(v8 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSPPrivacyProxyConfiguration *)self->_configuration copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSData *)self->_signature copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_certificates;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{a3, v18}];
        [v5 addCertificates:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_algorithm;
    *(v5 + 40) |= 1u;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  configuration = self->_configuration;
  if (configuration | *(v4 + 3))
  {
    if (![(NSPPrivacyProxyConfiguration *)configuration isEqual:?])
    {
      goto LABEL_12;
    }
  }

  signature = self->_signature;
  if (signature | *(v4 + 4))
  {
    if (![(NSData *)signature isEqual:?])
    {
      goto LABEL_12;
    }
  }

  certificates = self->_certificates;
  if (certificates | *(v4 + 2))
  {
    if (![(NSMutableArray *)certificates isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_algorithm == *(v4 + 2))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSPPrivacyProxyConfiguration *)self->_configuration hash];
  v4 = [(NSData *)self->_signature hash];
  v5 = [(NSMutableArray *)self->_certificates hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_algorithm;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  configuration = self->_configuration;
  v6 = *(v4 + 3);
  if (configuration)
  {
    if (v6)
    {
      [(NSPPrivacyProxyConfiguration *)configuration mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NSPPrivacyProxySignedConfiguration *)self setConfiguration:?];
  }

  if (*(v4 + 4))
  {
    [(NSPPrivacyProxySignedConfiguration *)self setSignature:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NSPPrivacyProxySignedConfiguration *)self addCertificates:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (*(v4 + 40))
  {
    self->_algorithm = *(v4 + 2);
    *&self->_has |= 1u;
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end