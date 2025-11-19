@interface PBBProtoWarrantySentinel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAppleLanguages:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSentinelExists:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PBBProtoWarrantySentinel

- (void)setHasSentinelExists:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addAppleLanguages:(id)a3
{
  v4 = a3;
  appleLanguages = self->_appleLanguages;
  v8 = v4;
  if (!appleLanguages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_appleLanguages;
    self->_appleLanguages = v6;

    v4 = v8;
    appleLanguages = self->_appleLanguages;
  }

  [(NSMutableArray *)appleLanguages addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoWarrantySentinel;
  v4 = [(PBBProtoWarrantySentinel *)&v8 description];
  v5 = [(PBBProtoWarrantySentinel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_sentinelExists];
    [v3 setObject:v5 forKey:@"sentinelExists"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_removeSentinel];
    [v3 setObject:v6 forKey:@"removeSentinel"];
  }

  appleLanguages = self->_appleLanguages;
  if (appleLanguages)
  {
    [v3 setObject:appleLanguages forKey:@"appleLanguages"];
  }

  appleLocale = self->_appleLocale;
  if (appleLocale)
  {
    [v3 setObject:appleLocale forKey:@"appleLocale"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v3 setObject:deviceName forKey:@"deviceName"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    sentinelExists = self->_sentinelExists;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    removeSentinel = self->_removeSentinel;
    PBDataWriterWriteBOOLField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_appleLanguages;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (self->_appleLocale)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[33] = self->_sentinelExists;
    v4[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[32] = self->_removeSentinel;
    v4[36] |= 1u;
  }

  v11 = v4;
  if ([(PBBProtoWarrantySentinel *)self appleLanguagesCount])
  {
    [v11 clearAppleLanguages];
    v6 = [(PBBProtoWarrantySentinel *)self appleLanguagesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PBBProtoWarrantySentinel *)self appleLanguagesAtIndex:i];
        [v11 addAppleLanguages:v9];
      }
    }
  }

  if (self->_appleLocale)
  {
    [v11 setAppleLocale:?];
  }

  v10 = v11;
  if (self->_deviceName)
  {
    [v11 setDeviceName:?];
    v10 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[33] = self->_sentinelExists;
    v5[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[32] = self->_removeSentinel;
    v5[36] |= 1u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_appleLanguages;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{a3, v20}];
        [v6 addAppleLanguages:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_appleLocale copyWithZone:a3];
  v15 = v6[2];
  v6[2] = v14;

  v16 = [(NSString *)self->_deviceName copyWithZone:a3];
  v17 = v6[3];
  v6[3] = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(v4 + 36);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(v4 + 33);
    if (self->_sentinelExists)
    {
      if ((*(v4 + 33) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(v4 + 33))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(v4 + 36) & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = *(v4 + 32);
  if (!self->_removeSentinel)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  if ((*(v4 + 32) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  appleLanguages = self->_appleLanguages;
  if (appleLanguages | *(v4 + 1) && ![(NSMutableArray *)appleLanguages isEqual:?])
  {
    goto LABEL_21;
  }

  appleLocale = self->_appleLocale;
  if (appleLocale | *(v4 + 2))
  {
    if (![(NSString *)appleLocale isEqual:?])
    {
      goto LABEL_21;
    }
  }

  deviceName = self->_deviceName;
  if (deviceName | *(v4 + 3))
  {
    v9 = [(NSString *)deviceName isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_22:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_sentinelExists;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_removeSentinel;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSMutableArray *)self->_appleLanguages hash];
  v6 = [(NSString *)self->_appleLocale hash];
  return v5 ^ v6 ^ [(NSString *)self->_deviceName hash];
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 36);
  if ((v6 & 2) != 0)
  {
    self->_sentinelExists = *(v4 + 33);
    *&self->_has |= 2u;
    v6 = *(v4 + 36);
  }

  if (v6)
  {
    self->_removeSentinel = *(v4 + 32);
    *&self->_has |= 1u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 1);
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

        [(PBBProtoWarrantySentinel *)self addAppleLanguages:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (v5[2])
  {
    [(PBBProtoWarrantySentinel *)self setAppleLocale:?];
  }

  if (v5[3])
  {
    [(PBBProtoWarrantySentinel *)self setDeviceName:?];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end