@interface MIPArtist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLibraryIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLikedState:(BOOL)state;
- (void)setHasPersistentId:(BOOL)id;
- (void)setHasSortOrder:(BOOL)order;
- (void)setHasSortOrderSection:(BOOL)section;
- (void)setHasStoreId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation MIPArtist

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[12] & 0x10) != 0)
  {
    self->_storeId = fromCopy[5];
    *&self->_has |= 0x10u;
  }

  if (fromCopy[10])
  {
    [(MIPArtist *)self setName:?];
  }

  if (*(v5 + 11))
  {
    [(MIPArtist *)self setSortName:?];
  }

  if (*(v5 + 6))
  {
    [(MIPArtist *)self setArtworkId:?];
  }

  if ((*(v5 + 96) & 2) != 0)
  {
    self->_persistentId = *(v5 + 2);
    *&self->_has |= 2u;
  }

  if (*(v5 + 7))
  {
    [(MIPArtist *)self setCloudUniversalLibraryId:?];
  }

  v6 = *(v5 + 96);
  if ((v6 & 0x20) != 0)
  {
    self->_likedState = *(v5 + 18);
    *&self->_has |= 0x20u;
    v6 = *(v5 + 96);
    if ((v6 & 1) == 0)
    {
LABEL_15:
      if ((v6 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((*(v5 + 96) & 1) == 0)
  {
    goto LABEL_15;
  }

  self->_likedStateChangedDate = *(v5 + 1);
  *&self->_has |= 1u;
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_16:
    if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_28:
  self->_sortOrder = *(v5 + 3);
  *&self->_has |= 4u;
  if ((*(v5 + 96) & 8) != 0)
  {
LABEL_17:
    self->_sortOrderSection = *(v5 + 4);
    *&self->_has |= 8u;
  }

LABEL_18:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(v5 + 8);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        [(MIPArtist *)self addLibraryIdentifiers:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_storeId;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_name hash];
  v5 = [(NSString *)self->_sortName hash];
  v6 = [(NSString *)self->_artworkId hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_persistentId;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_cloudUniversalLibraryId hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v9 = 2654435761 * self->_likedState;
    if (*&self->_has)
    {
LABEL_9:
      v10 = 2654435761 * self->_likedStateChangedDate;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      v11 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_11;
      }

LABEL_15:
      v12 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSMutableArray *)self->_libraryIdentifiers hash];
    }
  }

  else
  {
    v9 = 0;
    if (*&self->_has)
    {
      goto LABEL_9;
    }
  }

  v10 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v11 = 2654435761 * self->_sortOrder;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v12 = 2654435761 * self->_sortOrderSection;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSMutableArray *)self->_libraryIdentifiers hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 96) & 0x10) == 0 || self->_storeId != *(equalCopy + 5))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 96) & 0x10) != 0)
  {
    goto LABEL_43;
  }

  name = self->_name;
  if (name | *(equalCopy + 10) && ![(NSString *)name isEqual:?])
  {
    goto LABEL_43;
  }

  sortName = self->_sortName;
  if (sortName | *(equalCopy + 11))
  {
    if (![(NSString *)sortName isEqual:?])
    {
      goto LABEL_43;
    }
  }

  artworkId = self->_artworkId;
  if (artworkId | *(equalCopy + 6))
  {
    if (![(NSString *)artworkId isEqual:?])
    {
      goto LABEL_43;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 96);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 96) & 2) == 0 || self->_persistentId != *(equalCopy + 2))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 96) & 2) != 0)
  {
    goto LABEL_43;
  }

  cloudUniversalLibraryId = self->_cloudUniversalLibraryId;
  if (cloudUniversalLibraryId | *(equalCopy + 7))
  {
    if (![(NSString *)cloudUniversalLibraryId isEqual:?])
    {
LABEL_43:
      v12 = 0;
      goto LABEL_44;
    }

    has = self->_has;
    v9 = *(equalCopy + 96);
  }

  if ((has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_likedState != *(equalCopy + 18))
    {
      goto LABEL_43;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_43;
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_likedStateChangedDate != *(equalCopy + 1))
    {
      goto LABEL_43;
    }
  }

  else if (v9)
  {
    goto LABEL_43;
  }

  if ((has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_sortOrder != *(equalCopy + 3))
    {
      goto LABEL_43;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_43;
  }

  if ((has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_sortOrderSection != *(equalCopy + 4))
    {
      goto LABEL_43;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_43;
  }

  libraryIdentifiers = self->_libraryIdentifiers;
  if (libraryIdentifiers | *(equalCopy + 8))
  {
    v12 = [(NSMutableArray *)libraryIdentifiers isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_44:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 40) = self->_storeId;
    *(v5 + 96) |= 0x10u;
  }

  v7 = [(NSString *)self->_name copyWithZone:zone];
  v8 = *(v6 + 80);
  *(v6 + 80) = v7;

  v9 = [(NSString *)self->_sortName copyWithZone:zone];
  v10 = *(v6 + 88);
  *(v6 + 88) = v9;

  v11 = [(NSString *)self->_artworkId copyWithZone:zone];
  v12 = *(v6 + 48);
  *(v6 + 48) = v11;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_persistentId;
    *(v6 + 96) |= 2u;
  }

  v13 = [(NSString *)self->_cloudUniversalLibraryId copyWithZone:zone];
  v14 = *(v6 + 56);
  *(v6 + 56) = v13;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v6 + 72) = self->_likedState;
    *(v6 + 96) |= 0x20u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 8) = self->_likedStateChangedDate;
  *(v6 + 96) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_20:
  *(v6 + 24) = self->_sortOrder;
  *(v6 + 96) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    *(v6 + 32) = self->_sortOrderSection;
    *(v6 + 96) |= 8u;
  }

LABEL_10:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = self->_libraryIdentifiers;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v23 + 1) + 8 * i) copyWithZone:{zone, v23}];
        [v6 addLibraryIdentifiers:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x10) != 0)
  {
    toCopy[5] = self->_storeId;
    *(toCopy + 96) |= 0x10u;
  }

  v10 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v10;
  }

  if (self->_sortName)
  {
    [v10 setSortName:?];
    toCopy = v10;
  }

  if (self->_artworkId)
  {
    [v10 setArtworkId:?];
    toCopy = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = self->_persistentId;
    *(toCopy + 96) |= 2u;
  }

  if (self->_cloudUniversalLibraryId)
  {
    [v10 setCloudUniversalLibraryId:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(toCopy + 18) = self->_likedState;
    *(toCopy + 96) |= 0x20u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_15:
      if ((has & 4) == 0)
      {
        goto LABEL_16;
      }

LABEL_27:
      toCopy[3] = self->_sortOrder;
      *(toCopy + 96) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

  toCopy[1] = self->_likedStateChangedDate;
  *(toCopy + 96) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  if ((has & 8) != 0)
  {
LABEL_17:
    toCopy[4] = self->_sortOrderSection;
    *(toCopy + 96) |= 8u;
  }

LABEL_18:
  if ([(MIPArtist *)self libraryIdentifiersCount])
  {
    [v10 clearLibraryIdentifiers];
    libraryIdentifiersCount = [(MIPArtist *)self libraryIdentifiersCount];
    if (libraryIdentifiersCount)
    {
      v7 = libraryIdentifiersCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(MIPArtist *)self libraryIdentifiersAtIndex:i];
        [v10 addLibraryIdentifiers:v9];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sortName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_artworkId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_cloudUniversalLibraryId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_15:
      if ((has & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_16:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_28:
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_17:
    PBDataWriterWriteInt64Field();
  }

LABEL_18:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_libraryIdentifiers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_storeId];
    [dictionary setObject:v4 forKey:@"storeId"];
  }

  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  sortName = self->_sortName;
  if (sortName)
  {
    [dictionary setObject:sortName forKey:@"sortName"];
  }

  artworkId = self->_artworkId;
  if (artworkId)
  {
    [dictionary setObject:artworkId forKey:@"artworkId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_persistentId];
    [dictionary setObject:v8 forKey:@"persistentId"];
  }

  cloudUniversalLibraryId = self->_cloudUniversalLibraryId;
  if (cloudUniversalLibraryId)
  {
    [dictionary setObject:cloudUniversalLibraryId forKey:@"cloudUniversalLibraryId"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithInt:self->_likedState];
    [dictionary setObject:v20 forKey:@"likedState"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_15:
      if ((has & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_likedStateChangedDate];
  [dictionary setObject:v21 forKey:@"likedStateChangedDate"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_16:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_32:
  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sortOrder];
  [dictionary setObject:v22 forKey:@"sortOrder"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_17:
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sortOrderSection];
    [dictionary setObject:v11 forKey:@"sortOrderSection"];
  }

LABEL_18:
  if ([(NSMutableArray *)self->_libraryIdentifiers count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_libraryIdentifiers, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = self->_libraryIdentifiers;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"libraryIdentifiers"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPArtist;
  v4 = [(MIPArtist *)&v8 description];
  dictionaryRepresentation = [(MIPArtist *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addLibraryIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  libraryIdentifiers = self->_libraryIdentifiers;
  v8 = identifiersCopy;
  if (!libraryIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_libraryIdentifiers;
    self->_libraryIdentifiers = v6;

    identifiersCopy = v8;
    libraryIdentifiers = self->_libraryIdentifiers;
  }

  [(NSMutableArray *)libraryIdentifiers addObject:identifiersCopy];
}

- (void)setHasSortOrderSection:(BOOL)section
{
  if (section)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSortOrder:(BOOL)order
{
  if (order)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLikedState:(BOOL)state
{
  if (state)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasPersistentId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasStoreId:(BOOL)id
{
  if (id)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

@end