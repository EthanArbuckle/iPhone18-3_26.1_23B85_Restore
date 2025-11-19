@interface NSPPrivacyProxyTokenIssuer
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

@implementation NSPPrivacyProxyTokenIssuer

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
  v8.super_class = NSPPrivacyProxyTokenIssuer;
  v4 = [(NSPPrivacyProxyTokenIssuer *)&v8 description];
  v5 = [(NSPPrivacyProxyTokenIssuer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  issuerName = self->_issuerName;
  if (issuerName)
  {
    [v3 setObject:issuerName forKey:@"issuerName"];
  }

  if ([(NSMutableArray *)self->_tokenKeys count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_tokenKeys, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_tokenKeys;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"tokenKeys"];
  }

  transparencyKeyBundle = self->_transparencyKeyBundle;
  if (transparencyKeyBundle)
  {
    [v4 setObject:transparencyKeyBundle forKey:@"transparencyKeyBundle"];
  }

  transparencyProof = self->_transparencyProof;
  if (transparencyProof)
  {
    [v4 setObject:transparencyProof forKey:@"transparencyProof"];
  }

  transparencyInternalProof = self->_transparencyInternalProof;
  if (transparencyInternalProof)
  {
    [v4 setObject:transparencyInternalProof forKey:@"transparencyInternalProof"];
  }

  if (*&self->_has)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsTokenUsageFeedback];
    [v4 setObject:v16 forKey:@"supportsTokenUsageFeedback"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_issuerName)
  {
    __assert_rtn("[NSPPrivacyProxyTokenIssuer writeTo:]", "NSPPrivacyProxyTokenIssuer.m", 210, "nil != self->_issuerName");
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_tokenKeys;
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
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (self->_transparencyKeyBundle)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_transparencyProof)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_transparencyInternalProof)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    supportsTokenUsageFeedback = self->_supportsTokenUsageFeedback;
    PBDataWriterWriteBOOLField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  [v9 setIssuerName:self->_issuerName];
  if ([(NSPPrivacyProxyTokenIssuer *)self tokenKeysCount])
  {
    [v9 clearTokenKeys];
    v4 = [(NSPPrivacyProxyTokenIssuer *)self tokenKeysCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSPPrivacyProxyTokenIssuer *)self tokenKeysAtIndex:i];
        [v9 addTokenKeys:v7];
      }
    }
  }

  if (self->_transparencyKeyBundle)
  {
    [v9 setTransparencyKeyBundle:?];
  }

  v8 = v9;
  if (self->_transparencyProof)
  {
    [v9 setTransparencyProof:?];
    v8 = v9;
  }

  if (self->_transparencyInternalProof)
  {
    [v9 setTransparencyInternalProof:?];
    v8 = v9;
  }

  if (*&self->_has)
  {
    v8[48] = self->_supportsTokenUsageFeedback;
    v8[52] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_issuerName copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_tokenKeys;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v22 + 1) + 8 * i) copyWithZone:{a3, v22}];
        [v5 addTokenKeys:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v14 = [(NSData *)self->_transparencyKeyBundle copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  v16 = [(NSData *)self->_transparencyProof copyWithZone:a3];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  v18 = [(NSData *)self->_transparencyInternalProof copyWithZone:a3];
  v19 = *(v5 + 24);
  *(v5 + 24) = v18;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_supportsTokenUsageFeedback;
    *(v5 + 52) |= 1u;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  issuerName = self->_issuerName;
  if (issuerName | *(v4 + 1))
  {
    if (![(NSString *)issuerName isEqual:?])
    {
      goto LABEL_14;
    }
  }

  tokenKeys = self->_tokenKeys;
  if (tokenKeys | *(v4 + 2))
  {
    if (![(NSMutableArray *)tokenKeys isEqual:?])
    {
      goto LABEL_14;
    }
  }

  transparencyKeyBundle = self->_transparencyKeyBundle;
  if (transparencyKeyBundle | *(v4 + 4))
  {
    if (![(NSData *)transparencyKeyBundle isEqual:?])
    {
      goto LABEL_14;
    }
  }

  transparencyProof = self->_transparencyProof;
  if (transparencyProof | *(v4 + 5))
  {
    if (![(NSData *)transparencyProof isEqual:?])
    {
      goto LABEL_14;
    }
  }

  transparencyInternalProof = self->_transparencyInternalProof;
  if (transparencyInternalProof | *(v4 + 3))
  {
    if (![(NSData *)transparencyInternalProof isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v10 = (*(v4 + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0)
    {
LABEL_14:
      v10 = 0;
      goto LABEL_15;
    }

    if (self->_supportsTokenUsageFeedback)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_14;
    }

    v10 = 1;
  }

LABEL_15:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_issuerName hash];
  v4 = [(NSMutableArray *)self->_tokenKeys hash];
  v5 = [(NSData *)self->_transparencyKeyBundle hash];
  v6 = [(NSData *)self->_transparencyProof hash];
  v7 = [(NSData *)self->_transparencyInternalProof hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_supportsTokenUsageFeedback;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 1))
  {
    [(NSPPrivacyProxyTokenIssuer *)self setIssuerName:?];
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

        [(NSPPrivacyProxyTokenIssuer *)self addTokenKeys:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 4))
  {
    [(NSPPrivacyProxyTokenIssuer *)self setTransparencyKeyBundle:?];
  }

  if (*(v4 + 5))
  {
    [(NSPPrivacyProxyTokenIssuer *)self setTransparencyProof:?];
  }

  if (*(v4 + 3))
  {
    [(NSPPrivacyProxyTokenIssuer *)self setTransparencyInternalProof:?];
  }

  if (*(v4 + 52))
  {
    self->_supportsTokenUsageFeedback = *(v4 + 48);
    *&self->_has |= 1u;
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end