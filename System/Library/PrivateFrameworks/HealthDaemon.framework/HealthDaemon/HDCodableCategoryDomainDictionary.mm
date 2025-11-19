@interface HDCodableCategoryDomainDictionary
- (BOOL)_validateForInsertionWithError:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (HDCodableCategoryDomainDictionary)initWithCategory:(int64_t)a3 domain:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addKeyValuePairs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableCategoryDomainDictionary

- (HDCodableCategoryDomainDictionary)initWithCategory:(int64_t)a3 domain:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HDCodableCategoryDomainDictionary;
  v7 = [(HDCodableCategoryDomainDictionary *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(HDCodableCategoryDomainDictionary *)v7 setCategory:a3];
    v9 = [v6 copy];
    [(HDCodableCategoryDomainDictionary *)v8 setDomain:v9];
  }

  return v8;
}

- (void)addKeyValuePairs:(id)a3
{
  v4 = a3;
  keyValuePairs = self->_keyValuePairs;
  v8 = v4;
  if (!keyValuePairs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_keyValuePairs;
    self->_keyValuePairs = v6;

    v4 = v8;
    keyValuePairs = self->_keyValuePairs;
  }

  [(NSMutableArray *)keyValuePairs addObject:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableCategoryDomainDictionary;
  v4 = [(HDCodableCategoryDomainDictionary *)&v8 description];
  v5 = [(HDCodableCategoryDomainDictionary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_category];
    [v3 setObject:v4 forKey:@"category"];
  }

  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  if ([(NSMutableArray *)self->_keyValuePairs count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_keyValuePairs, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_keyValuePairs;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"keyValuePairs"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v14 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"syncIdentity"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    category = self->_category;
    PBDataWriterWriteInt64Field();
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_keyValuePairs;
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

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_category;
    *(v4 + 40) |= 1u;
  }

  v9 = v4;
  if (self->_domain)
  {
    [v4 setDomain:?];
  }

  if ([(HDCodableCategoryDomainDictionary *)self keyValuePairsCount])
  {
    [v9 clearKeyValuePairs];
    v5 = [(HDCodableCategoryDomainDictionary *)self keyValuePairsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HDCodableCategoryDomainDictionary *)self keyValuePairsAtIndex:i];
        [v9 addKeyValuePairs:v8];
      }
    }
  }

  if (self->_syncIdentity)
  {
    [v9 setSyncIdentity:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_category;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_domain copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_keyValuePairs;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v19 + 1) + 8 * v13) copyWithZone:{a3, v19}];
        [v6 addKeyValuePairs:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v16 = v6[4];
  v6[4] = v15;

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_category != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  domain = self->_domain;
  if (domain | *(v4 + 2) && ![(NSString *)domain isEqual:?])
  {
    goto LABEL_13;
  }

  keyValuePairs = self->_keyValuePairs;
  if (keyValuePairs | *(v4 + 3))
  {
    if (![(NSMutableArray *)keyValuePairs isEqual:?])
    {
      goto LABEL_13;
    }
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 4))
  {
    v9 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_category;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_domain hash]^ v3;
  v5 = [(NSMutableArray *)self->_keyValuePairs hash];
  return v4 ^ v5 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    self->_category = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[2])
  {
    [(HDCodableCategoryDomainDictionary *)self setDomain:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5[3];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HDCodableCategoryDomainDictionary *)self addKeyValuePairs:*(*(&v14 + 1) + 8 * i), v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  syncIdentity = self->_syncIdentity;
  v12 = v5[4];
  if (syncIdentity)
  {
    if (v12)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(HDCodableCategoryDomainDictionary *)self setSyncIdentity:?];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_validateForInsertionWithError:(id *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(HDCodableCategoryDomainDictionary *)self hasCategory])
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Missing category"];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_keyValuePairs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    v11 = @"Missing key in pair for %ld (%@)";
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if (!v13[5])
        {
          goto LABEL_15;
        }

        if (![v13 hasTimestamp])
        {
          v11 = @"Missing timestamp in pair for %ld (%@)";
LABEL_15:
          v14 = MEMORY[0x277CCA9B8];
          v15 = objc_opt_class();
          category = self->_category;
          v17 = [v14 hk_errorForInvalidArgument:@"@" class:v15 selector:a2 format:{v11, category, self->_domain, v22}];

          v6 = v17;
          goto LABEL_16;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v18 = v6;
  if (v18)
  {
    if (a3)
    {
      v19 = v18;
      *a3 = v18;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18 == 0;
}

@end