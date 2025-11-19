@interface NSPPrivacyProxyTokenAttester
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAuthType:(id)a3;
- (int)authType;
- (unint64_t)hash;
- (void)addAssociatedIssuers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyTokenAttester

- (int)authType
{
  if (*&self->_has)
  {
    return self->_authType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAuthType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"BAA"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ANISETTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BAA_ANISETTE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TOKEN"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addAssociatedIssuers:(id)a3
{
  v4 = a3;
  associatedIssuers = self->_associatedIssuers;
  v8 = v4;
  if (!associatedIssuers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_associatedIssuers;
    self->_associatedIssuers = v6;

    v4 = v8;
    associatedIssuers = self->_associatedIssuers;
  }

  [(NSMutableArray *)associatedIssuers addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyTokenAttester;
  v4 = [(NSPPrivacyProxyTokenAttester *)&v8 description];
  v5 = [(NSPPrivacyProxyTokenAttester *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    authType = self->_authType;
    if (authType >= 5)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_authType];
    }

    else
    {
      v5 = off_1E7A31060[authType];
    }

    [v3 setObject:v5 forKey:@"authType"];
  }

  attesterURL = self->_attesterURL;
  if (attesterURL)
  {
    [v3 setObject:attesterURL forKey:@"attesterURL"];
  }

  if ([(NSMutableArray *)self->_associatedIssuers count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_associatedIssuers, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_associatedIssuers;
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

    [v3 setObject:v7 forKey:@"associatedIssuers"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    authType = self->_authType;
    PBDataWriterWriteInt32Field();
  }

  if (!self->_attesterURL)
  {
    __assert_rtn("[NSPPrivacyProxyTokenAttester writeTo:]", "NSPPrivacyProxyTokenAttester.m", 184, "nil != self->_attesterURL");
  }

  PBDataWriterWriteStringField();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_associatedIssuers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_authType;
    *(v4 + 28) |= 1u;
  }

  v9 = v4;
  [v4 setAttesterURL:self->_attesterURL];
  if ([(NSPPrivacyProxyTokenAttester *)self associatedIssuersCount])
  {
    [v9 clearAssociatedIssuers];
    v5 = [(NSPPrivacyProxyTokenAttester *)self associatedIssuersCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSPPrivacyProxyTokenAttester *)self associatedIssuersAtIndex:i];
        [v9 addAssociatedIssuers:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_authType;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_attesterURL copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_associatedIssuers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{a3, v17}];
        [v6 addAssociatedIssuers:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_authType != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  attesterURL = self->_attesterURL;
  if (attesterURL | *(v4 + 2) && ![(NSString *)attesterURL isEqual:?])
  {
    goto LABEL_11;
  }

  associatedIssuers = self->_associatedIssuers;
  if (associatedIssuers | *(v4 + 1))
  {
    v8 = [(NSMutableArray *)associatedIssuers isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_authType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_attesterURL hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_associatedIssuers hash];
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 28))
  {
    self->_authType = *(v4 + 6);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(NSPPrivacyProxyTokenAttester *)self setAttesterURL:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5[1];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NSPPrivacyProxyTokenAttester *)self addAssociatedIssuers:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end