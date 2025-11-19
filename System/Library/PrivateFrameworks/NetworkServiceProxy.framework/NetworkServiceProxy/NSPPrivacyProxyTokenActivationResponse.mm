@interface NSPPrivacyProxyTokenActivationResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addActivatedTokenList:(id)a3;
- (void)addAuxiliaryAuthArray:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyTokenActivationResponse

- (void)addActivatedTokenList:(id)a3
{
  v4 = a3;
  activatedTokenLists = self->_activatedTokenLists;
  v8 = v4;
  if (!activatedTokenLists)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_activatedTokenLists;
    self->_activatedTokenLists = v6;

    v4 = v8;
    activatedTokenLists = self->_activatedTokenLists;
  }

  [(NSMutableArray *)activatedTokenLists addObject:v4];
}

- (void)addAuxiliaryAuthArray:(id)a3
{
  v4 = a3;
  auxiliaryAuthArrays = self->_auxiliaryAuthArrays;
  v8 = v4;
  if (!auxiliaryAuthArrays)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_auxiliaryAuthArrays;
    self->_auxiliaryAuthArrays = v6;

    v4 = v8;
    auxiliaryAuthArrays = self->_auxiliaryAuthArrays;
  }

  [(NSMutableArray *)auxiliaryAuthArrays addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyTokenActivationResponse;
  v4 = [(NSPPrivacyProxyTokenActivationResponse *)&v8 description];
  v5 = [(NSPPrivacyProxyTokenActivationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tokenExpiryTimestamp];
    [v3 setObject:v4 forKey:@"tokenExpiryTimestamp"];
  }

  activatedTokenLists = self->_activatedTokenLists;
  if (activatedTokenLists)
  {
    [v3 setObject:activatedTokenLists forKey:@"activatedTokenList"];
  }

  if ([(NSMutableArray *)self->_auxiliaryAuthArrays count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_auxiliaryAuthArrays, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_auxiliaryAuthArrays;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"auxiliaryAuthArray"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    tokenExpiryTimestamp = self->_tokenExpiryTimestamp;
    PBDataWriterWriteUint64Field();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_activatedTokenLists;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteDataField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_auxiliaryAuthArrays;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_tokenExpiryTimestamp;
    *(v4 + 32) |= 1u;
  }

  v13 = v4;
  if ([(NSPPrivacyProxyTokenActivationResponse *)self activatedTokenListsCount])
  {
    [v13 clearActivatedTokenLists];
    v5 = [(NSPPrivacyProxyTokenActivationResponse *)self activatedTokenListsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSPPrivacyProxyTokenActivationResponse *)self activatedTokenListAtIndex:i];
        [v13 addActivatedTokenList:v8];
      }
    }
  }

  if ([(NSPPrivacyProxyTokenActivationResponse *)self auxiliaryAuthArraysCount])
  {
    [v13 clearAuxiliaryAuthArrays];
    v9 = [(NSPPrivacyProxyTokenActivationResponse *)self auxiliaryAuthArraysCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NSPPrivacyProxyTokenActivationResponse *)self auxiliaryAuthArrayAtIndex:j];
        [v13 addAuxiliaryAuthArray:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_tokenExpiryTimestamp;
    *(v5 + 32) |= 1u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_activatedTokenLists;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v25 + 1) + 8 * v11) copyWithZone:a3];
        [v6 addActivatedTokenList:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_auxiliaryAuthArrays;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * v17) copyWithZone:{a3, v21}];
        [v6 addAuxiliaryAuthArray:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_tokenExpiryTimestamp != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  activatedTokenLists = self->_activatedTokenLists;
  if (activatedTokenLists | *(v4 + 2) && ![(NSMutableArray *)activatedTokenLists isEqual:?])
  {
    goto LABEL_11;
  }

  auxiliaryAuthArrays = self->_auxiliaryAuthArrays;
  if (auxiliaryAuthArrays | *(v4 + 3))
  {
    v8 = [(NSMutableArray *)auxiliaryAuthArrays isEqual:?];
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
    v3 = 2654435761u * self->_tokenExpiryTimestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_activatedTokenLists hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_auxiliaryAuthArrays hash];
}

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 32))
  {
    self->_tokenExpiryTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(v4 + 2);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NSPPrivacyProxyTokenActivationResponse *)self addActivatedTokenList:*(*(&v21 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v5[3];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(NSPPrivacyProxyTokenActivationResponse *)self addAuxiliaryAuthArray:*(*(&v17 + 1) + 8 * v15++), v17];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end