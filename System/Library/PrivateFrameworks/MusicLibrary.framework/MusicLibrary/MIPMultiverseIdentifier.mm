@interface MIPMultiverseIdentifier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)mediaObjectTypeAsString:(int)a3;
- (id)mediaTypeAsString:(int)a3;
- (int)StringAsMediaObjectType:(id)a3;
- (int)StringAsMediaType:(id)a3;
- (int)mediaObjectType;
- (int)mediaType;
- (unint64_t)hash;
- (void)addLibraryIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMediaObjectType:(BOOL)a3;
- (void)setHasMediaType:(BOOL)a3;
- (void)setHasPurchaseHistoryId:(BOOL)a3;
- (void)setHasSagaId:(BOOL)a3;
- (void)setHasStoreId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MIPMultiverseIdentifier

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 80);
  if ((v6 & 0x10) != 0)
  {
    self->_mediaObjectType = v4[16];
    *&self->_has |= 0x10u;
    v6 = *(v4 + 80);
  }

  if ((v6 & 0x20) != 0)
  {
    self->_mediaType = v4[17];
    *&self->_has |= 0x20u;
  }

  if (*(v4 + 9))
  {
    [(MIPMultiverseIdentifier *)self setName:?];
  }

  v7 = *(v5 + 80);
  if (v7)
  {
    self->_accountId = *(v5 + 1);
    *&self->_has |= 1u;
    v7 = *(v5 + 80);
    if ((v7 & 8) == 0)
    {
LABEL_9:
      if ((v7 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  else if ((v5[20] & 8) == 0)
  {
    goto LABEL_9;
  }

  self->_storeId = *(v5 + 4);
  *&self->_has |= 8u;
  v7 = *(v5 + 80);
  if ((v7 & 4) == 0)
  {
LABEL_10:
    if ((v7 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_26:
  self->_sagaId = *(v5 + 3);
  *&self->_has |= 4u;
  if ((v5[20] & 2) != 0)
  {
LABEL_11:
    self->_purchaseHistoryId = *(v5 + 2);
    *&self->_has |= 2u;
  }

LABEL_12:
  if (*(v5 + 6))
  {
    [(MIPMultiverseIdentifier *)self setCloudUniversalLibraryId:?];
  }

  if (*(v5 + 5))
  {
    [(MIPMultiverseIdentifier *)self setCloudLibraryId:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(v5 + 7);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(MIPMultiverseIdentifier *)self addLibraryIdentifiers:*(*(&v13 + 1) + 8 * i), v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_mediaObjectType;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_mediaType;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_accountId;
    if ((*&self->_has & 8) != 0)
    {
LABEL_8:
      v7 = 2654435761 * self->_storeId;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      v8 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      v9 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v8 = 2654435761 * self->_sagaId;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v9 = 2654435761 * self->_purchaseHistoryId;
LABEL_15:
  v10 = v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v5;
  v11 = [(NSString *)self->_cloudUniversalLibraryId hash];
  v12 = v10 ^ v11 ^ [(NSString *)self->_cloudLibraryId hash];
  return v12 ^ [(NSMutableArray *)self->_libraryIdentifiers hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  has = self->_has;
  v6 = *(v4 + 80);
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 80) & 0x10) == 0 || self->_mediaObjectType != *(v4 + 16))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 80) & 0x10) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 80) & 0x20) == 0 || self->_mediaType != *(v4 + 17))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 80) & 0x20) != 0)
  {
    goto LABEL_41;
  }

  name = self->_name;
  if (name | *(v4 + 9))
  {
    if (![(NSString *)name isEqual:?])
    {
LABEL_41:
      v11 = 0;
      goto LABEL_42;
    }

    has = self->_has;
    v6 = *(v4 + 80);
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_accountId != *(v4 + 1))
    {
      goto LABEL_41;
    }
  }

  else if (v6)
  {
    goto LABEL_41;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_storeId != *(v4 + 4))
    {
      goto LABEL_41;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_41;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_sagaId != *(v4 + 3))
    {
      goto LABEL_41;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_41;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_purchaseHistoryId != *(v4 + 2))
    {
      goto LABEL_41;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_41;
  }

  cloudUniversalLibraryId = self->_cloudUniversalLibraryId;
  if (cloudUniversalLibraryId | *(v4 + 6) && ![(NSString *)cloudUniversalLibraryId isEqual:?])
  {
    goto LABEL_41;
  }

  cloudLibraryId = self->_cloudLibraryId;
  if (cloudLibraryId | *(v4 + 5))
  {
    if (![(NSString *)cloudLibraryId isEqual:?])
    {
      goto LABEL_41;
    }
  }

  libraryIdentifiers = self->_libraryIdentifiers;
  if (libraryIdentifiers | *(v4 + 7))
  {
    v11 = [(NSMutableArray *)libraryIdentifiers isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_42:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 64) = self->_mediaObjectType;
    *(v5 + 80) |= 0x10u;
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    *(v5 + 68) = self->_mediaType;
    *(v5 + 80) |= 0x20u;
  }

  v8 = [(NSString *)self->_name copyWithZone:a3];
  v9 = *(v6 + 72);
  *(v6 + 72) = v8;

  v10 = self->_has;
  if (v10)
  {
    *(v6 + 8) = self->_accountId;
    *(v6 + 80) |= 1u;
    v10 = self->_has;
    if ((v10 & 8) == 0)
    {
LABEL_7:
      if ((v10 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 32) = self->_storeId;
  *(v6 + 80) |= 8u;
  v10 = self->_has;
  if ((v10 & 4) == 0)
  {
LABEL_8:
    if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_20:
  *(v6 + 24) = self->_sagaId;
  *(v6 + 80) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_9:
    *(v6 + 16) = self->_purchaseHistoryId;
    *(v6 + 80) |= 2u;
  }

LABEL_10:
  v11 = [(NSString *)self->_cloudUniversalLibraryId copyWithZone:a3];
  v12 = *(v6 + 48);
  *(v6 + 48) = v11;

  v13 = [(NSString *)self->_cloudLibraryId copyWithZone:a3];
  v14 = *(v6 + 40);
  *(v6 + 40) = v13;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = self->_libraryIdentifiers;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v22 + 1) + 8 * i) copyWithZone:{a3, v22}];
        [v6 addLibraryIdentifiers:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[16] = self->_mediaObjectType;
    *(v4 + 80) |= 0x10u;
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v4[17] = self->_mediaType;
    *(v4 + 80) |= 0x20u;
  }

  v11 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v11;
  }

  v6 = self->_has;
  if (v6)
  {
    *(v4 + 1) = self->_accountId;
    *(v4 + 80) |= 1u;
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 4) = self->_storeId;
  *(v4 + 80) |= 8u;
  v6 = self->_has;
  if ((v6 & 4) == 0)
  {
LABEL_10:
    if ((v6 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_25:
  *(v4 + 3) = self->_sagaId;
  *(v4 + 80) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_11:
    *(v4 + 2) = self->_purchaseHistoryId;
    *(v4 + 80) |= 2u;
  }

LABEL_12:
  if (self->_cloudUniversalLibraryId)
  {
    [v11 setCloudUniversalLibraryId:?];
  }

  if (self->_cloudLibraryId)
  {
    [v11 setCloudLibraryId:?];
  }

  if ([(MIPMultiverseIdentifier *)self libraryIdentifiersCount])
  {
    [v11 clearLibraryIdentifiers];
    v7 = [(MIPMultiverseIdentifier *)self libraryIdentifiersCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(MIPMultiverseIdentifier *)self libraryIdentifiersAtIndex:i];
        [v11 addLibraryIdentifiers:v10];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if (v6)
  {
    PBDataWriterWriteInt64Field();
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteInt64Field();
  v6 = self->_has;
  if ((v6 & 4) == 0)
  {
LABEL_10:
    if ((v6 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_26:
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_11:
    PBDataWriterWriteInt64Field();
  }

LABEL_12:
  if (self->_cloudUniversalLibraryId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cloudLibraryId)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_libraryIdentifiers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v5 = self->_mediaObjectType - 1;
    if (v5 >= 9)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_mediaObjectType];
    }

    else
    {
      v6 = off_278763AF0[v5];
    }

    [v3 setObject:v6 forKey:@"mediaObjectType"];

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v7 = self->_mediaType - 1;
    if (v7 >= 0xD)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_mediaType];
    }

    else
    {
      v8 = off_278763B38[v7];
    }

    [v3 setObject:v8 forKey:@"mediaType"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  v10 = self->_has;
  if (v10)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_accountId];
    [v3 setObject:v22 forKey:@"accountId"];

    v10 = self->_has;
    if ((v10 & 8) == 0)
    {
LABEL_15:
      if ((v10 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

  v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_storeId];
  [v3 setObject:v23 forKey:@"storeId"];

  v10 = self->_has;
  if ((v10 & 4) == 0)
  {
LABEL_16:
    if ((v10 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_36:
  v24 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sagaId];
  [v3 setObject:v24 forKey:@"sagaId"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_17:
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_purchaseHistoryId];
    [v3 setObject:v11 forKey:@"purchaseHistoryId"];
  }

LABEL_18:
  cloudUniversalLibraryId = self->_cloudUniversalLibraryId;
  if (cloudUniversalLibraryId)
  {
    [v3 setObject:cloudUniversalLibraryId forKey:@"cloudUniversalLibraryId"];
  }

  cloudLibraryId = self->_cloudLibraryId;
  if (cloudLibraryId)
  {
    [v3 setObject:cloudLibraryId forKey:@"cloudLibraryId"];
  }

  if ([(NSMutableArray *)self->_libraryIdentifiers count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_libraryIdentifiers, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = self->_libraryIdentifiers;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"libraryIdentifiers"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPMultiverseIdentifier;
  v4 = [(MIPMultiverseIdentifier *)&v8 description];
  v5 = [(MIPMultiverseIdentifier *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addLibraryIdentifiers:(id)a3
{
  v4 = a3;
  libraryIdentifiers = self->_libraryIdentifiers;
  v8 = v4;
  if (!libraryIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_libraryIdentifiers;
    self->_libraryIdentifiers = v6;

    v4 = v8;
    libraryIdentifiers = self->_libraryIdentifiers;
  }

  [(NSMutableArray *)libraryIdentifiers addObject:v4];
}

- (void)setHasPurchaseHistoryId:(BOOL)a3
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

- (void)setHasSagaId:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasStoreId:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsMediaType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Song"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Movie"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TVShow"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Podcast"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"VoiceMemo"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"VideoPodcast"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"MusicVideo"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"AudioBook"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"DigitalBooklet"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ITunesUAudio"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ITunesUVideo"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"HomeVideo"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"MusicQuiz"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)mediaTypeAsString:(int)a3
{
  if ((a3 - 1) >= 0xD)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_278763B38[a3 - 1];
  }

  return v4;
}

- (void)setHasMediaType:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)mediaType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_mediaType;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsMediaObjectType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Album"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Artist"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Composer"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Genre"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Series"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MediaItem"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Playlist"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"AlbumArtist"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"LibraryPin"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)mediaObjectTypeAsString:(int)a3
{
  if ((a3 - 1) >= 9)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_278763AF0[a3 - 1];
  }

  return v4;
}

- (void)setHasMediaObjectType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)mediaObjectType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_mediaObjectType;
  }

  else
  {
    return 1;
  }
}

@end