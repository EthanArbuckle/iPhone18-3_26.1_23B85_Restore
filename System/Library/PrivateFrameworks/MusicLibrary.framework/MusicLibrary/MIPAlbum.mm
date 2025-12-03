@interface MIPAlbum
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLibraryIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCompilation:(BOOL)compilation;
- (void)setHasLikedState:(BOOL)state;
- (void)setHasNumDiscs:(BOOL)discs;
- (void)setHasNumTracks:(BOOL)tracks;
- (void)setHasPersistentId:(BOOL)id;
- (void)setHasStoreId:(BOOL)id;
- (void)setHasUserRating:(BOOL)rating;
- (void)writeTo:(id)to;
@end

@implementation MIPAlbum

- (void)mergeFrom:(id)from
{
  v21 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[13] & 4) != 0)
  {
    self->_storeId = fromCopy[3];
    *&self->_has |= 4u;
  }

  if (fromCopy[9])
  {
    [(MIPAlbum *)self setName:?];
  }

  if (*(v5 + 11))
  {
    [(MIPAlbum *)self setSortName:?];
  }

  artist = self->_artist;
  v7 = *(v5 + 4);
  if (artist)
  {
    if (v7)
    {
      [(MIPArtist *)artist mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(MIPAlbum *)self setArtist:?];
  }

  v8 = *(v5 + 104);
  if ((v8 & 0x20) != 0)
  {
    self->_numTracks = *(v5 + 21);
    *&self->_has |= 0x20u;
    v8 = *(v5 + 104);
  }

  if ((v8 & 0x10) != 0)
  {
    self->_numDiscs = *(v5 + 20);
    *&self->_has |= 0x10u;
  }

  if (*(v5 + 5))
  {
    [(MIPAlbum *)self setArtworkId:?];
  }

  v9 = *(v5 + 104);
  if ((v9 & 0x40) != 0)
  {
    self->_userRating = *(v5 + 24);
    *&self->_has |= 0x40u;
    v9 = *(v5 + 104);
    if ((v9 & 0x80) == 0)
    {
LABEL_20:
      if ((v9 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((*(v5 + 104) & 0x80) == 0)
  {
    goto LABEL_20;
  }

  self->_compilation = *(v5 + 100);
  *&self->_has |= 0x80u;
  if ((*(v5 + 104) & 2) != 0)
  {
LABEL_21:
    self->_persistentId = *(v5 + 2);
    *&self->_has |= 2u;
  }

LABEL_22:
  if (*(v5 + 6))
  {
    [(MIPAlbum *)self setCloudId:?];
  }

  v10 = *(v5 + 104);
  if ((v10 & 8) != 0)
  {
    self->_likedState = *(v5 + 16);
    *&self->_has |= 8u;
    v10 = *(v5 + 104);
  }

  if (v10)
  {
    self->_likedStateChangedDate = *(v5 + 1);
    *&self->_has |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(v5 + 7);
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(MIPAlbum *)self addLibraryIdentifiers:*(*(&v16 + 1) + 8 * i), v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v16 = 2654435761 * self->_storeId;
  }

  else
  {
    v16 = 0;
  }

  v15 = [(NSString *)self->_name hash];
  v14 = [(NSString *)self->_sortName hash];
  v3 = [(MIPArtist *)self->_artist hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v4 = 2654435761 * self->_numTracks;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_6:
      v5 = 2654435761 * self->_numDiscs;
      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_9:
  v6 = [(NSString *)self->_artworkId hash];
  if ((*&self->_has & 0x40) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v7 = 2654435761 * self->_userRating;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v8 = 2654435761 * self->_compilation;
  if ((*&self->_has & 2) != 0)
  {
LABEL_12:
    v9 = 2654435761 * self->_persistentId;
    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
LABEL_16:
  v10 = [(NSString *)self->_cloudId hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_likedState;
    if (*&self->_has)
    {
      goto LABEL_18;
    }

LABEL_20:
    v12 = 0;
    return v15 ^ v16 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSMutableArray *)self->_libraryIdentifiers hash];
  }

  v11 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  v12 = 2654435761 * self->_likedStateChangedDate;
  return v15 ^ v16 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSMutableArray *)self->_libraryIdentifiers hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_59;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 104) & 4) == 0 || self->_storeId != *(equalCopy + 3))
    {
      goto LABEL_59;
    }
  }

  else if ((*(equalCopy + 104) & 4) != 0)
  {
    goto LABEL_59;
  }

  name = self->_name;
  if (name | *(equalCopy + 9) && ![(NSString *)name isEqual:?])
  {
    goto LABEL_59;
  }

  sortName = self->_sortName;
  if (sortName | *(equalCopy + 11))
  {
    if (![(NSString *)sortName isEqual:?])
    {
      goto LABEL_59;
    }
  }

  artist = self->_artist;
  if (artist | *(equalCopy + 4))
  {
    if (![(MIPArtist *)artist isEqual:?])
    {
      goto LABEL_59;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 104);
  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 104) & 0x20) == 0 || self->_numTracks != *(equalCopy + 21))
    {
      goto LABEL_59;
    }
  }

  else if ((*(equalCopy + 104) & 0x20) != 0)
  {
    goto LABEL_59;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 104) & 0x10) == 0 || self->_numDiscs != *(equalCopy + 20))
    {
      goto LABEL_59;
    }
  }

  else if ((*(equalCopy + 104) & 0x10) != 0)
  {
    goto LABEL_59;
  }

  artworkId = self->_artworkId;
  if (artworkId | *(equalCopy + 5))
  {
    if (![(NSString *)artworkId isEqual:?])
    {
      goto LABEL_59;
    }

    has = self->_has;
    v9 = *(equalCopy + 104);
  }

  if ((has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_userRating != *(equalCopy + 24))
    {
      goto LABEL_59;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_59;
  }

  if (has < 0)
  {
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_59;
    }

    if (self->_compilation)
    {
      if ((*(equalCopy + 100) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 100))
    {
      goto LABEL_59;
    }
  }

  else if (v9 < 0)
  {
    goto LABEL_59;
  }

  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_persistentId != *(equalCopy + 2))
    {
      goto LABEL_59;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_59;
  }

  cloudId = self->_cloudId;
  if (cloudId | *(equalCopy + 6))
  {
    if ([(NSString *)cloudId isEqual:?])
    {
      has = self->_has;
      v9 = *(equalCopy + 104);
      goto LABEL_45;
    }

LABEL_59:
    v13 = 0;
    goto LABEL_60;
  }

LABEL_45:
  if ((has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_likedState != *(equalCopy + 16))
    {
      goto LABEL_59;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_59;
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_likedStateChangedDate != *(equalCopy + 1))
    {
      goto LABEL_59;
    }
  }

  else if (v9)
  {
    goto LABEL_59;
  }

  libraryIdentifiers = self->_libraryIdentifiers;
  if (libraryIdentifiers | *(equalCopy + 7))
  {
    v13 = [(NSMutableArray *)libraryIdentifiers isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_60:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_storeId;
    *(v5 + 104) |= 4u;
  }

  v7 = [(NSString *)self->_name copyWithZone:zone];
  v8 = *(v6 + 72);
  *(v6 + 72) = v7;

  v9 = [(NSString *)self->_sortName copyWithZone:zone];
  v10 = *(v6 + 88);
  *(v6 + 88) = v9;

  v11 = [(MIPArtist *)self->_artist copyWithZone:zone];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v6 + 84) = self->_numTracks;
    *(v6 + 104) |= 0x20u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v6 + 80) = self->_numDiscs;
    *(v6 + 104) |= 0x10u;
  }

  v14 = [(NSString *)self->_artworkId copyWithZone:zone];
  v15 = *(v6 + 40);
  *(v6 + 40) = v14;

  v16 = self->_has;
  if ((v16 & 0x40) != 0)
  {
    *(v6 + 96) = self->_userRating;
    *(v6 + 104) |= 0x40u;
    v16 = self->_has;
    if ((v16 & 0x80) == 0)
    {
LABEL_9:
      if ((v16 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_9;
  }

  *(v6 + 100) = self->_compilation;
  *(v6 + 104) |= 0x80u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    *(v6 + 16) = self->_persistentId;
    *(v6 + 104) |= 2u;
  }

LABEL_11:
  v17 = [(NSString *)self->_cloudId copyWithZone:zone];
  v18 = *(v6 + 48);
  *(v6 + 48) = v17;

  v19 = self->_has;
  if ((v19 & 8) != 0)
  {
    *(v6 + 64) = self->_likedState;
    *(v6 + 104) |= 8u;
    v19 = self->_has;
  }

  if (v19)
  {
    *(v6 + 8) = self->_likedStateChangedDate;
    *(v6 + 104) |= 1u;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = self->_libraryIdentifiers;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v27 + 1) + 8 * i) copyWithZone:{zone, v27}];
        [v6 addLibraryIdentifiers:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[3] = self->_storeId;
    *(toCopy + 104) |= 4u;
  }

  v12 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v12;
  }

  if (self->_sortName)
  {
    [v12 setSortName:?];
    toCopy = v12;
  }

  if (self->_artist)
  {
    [v12 setArtist:?];
    toCopy = v12;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(toCopy + 21) = self->_numTracks;
    *(toCopy + 104) |= 0x20u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(toCopy + 20) = self->_numDiscs;
    *(toCopy + 104) |= 0x10u;
  }

  if (self->_artworkId)
  {
    [v12 setArtworkId:?];
    toCopy = v12;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(toCopy + 24) = self->_userRating;
    *(toCopy + 104) |= 0x40u;
    v6 = self->_has;
    if ((v6 & 0x80) == 0)
    {
LABEL_17:
      if ((v6 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_17;
  }

  *(toCopy + 100) = self->_compilation;
  *(toCopy + 104) |= 0x80u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_18:
    toCopy[2] = self->_persistentId;
    *(toCopy + 104) |= 2u;
  }

LABEL_19:
  if (self->_cloudId)
  {
    [v12 setCloudId:?];
    toCopy = v12;
  }

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    *(toCopy + 16) = self->_likedState;
    *(toCopy + 104) |= 8u;
    v7 = self->_has;
  }

  if (v7)
  {
    toCopy[1] = self->_likedStateChangedDate;
    *(toCopy + 104) |= 1u;
  }

  if ([(MIPAlbum *)self libraryIdentifiersCount])
  {
    [v12 clearLibraryIdentifiers];
    libraryIdentifiersCount = [(MIPAlbum *)self libraryIdentifiersCount];
    if (libraryIdentifiersCount)
    {
      v9 = libraryIdentifiersCount;
      for (i = 0; i != v9; ++i)
      {
        v11 = [(MIPAlbum *)self libraryIdentifiersAtIndex:i];
        [v12 addLibraryIdentifiers:v11];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if ((*&self->_has & 4) != 0)
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

  if (self->_artist)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_artworkId)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = self->_has;
    if ((v6 & 0x80) == 0)
    {
LABEL_17:
      if ((v6 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_17;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_18:
    PBDataWriterWriteInt64Field();
  }

LABEL_19:
  if (self->_cloudId)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = self->_has;
  }

  if (v7)
  {
    PBDataWriterWriteInt64Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_libraryIdentifiers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
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

  artist = self->_artist;
  if (artist)
  {
    dictionaryRepresentation = [(MIPArtist *)artist dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"artist"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_numTracks];
    [dictionary setObject:v10 forKey:@"numTracks"];

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_numDiscs];
    [dictionary setObject:v11 forKey:@"numDiscs"];
  }

  artworkId = self->_artworkId;
  if (artworkId)
  {
    [dictionary setObject:artworkId forKey:@"artworkId"];
  }

  v13 = self->_has;
  if ((v13 & 0x40) != 0)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithInt:self->_userRating];
    [dictionary setObject:v27 forKey:@"userRating"];

    v13 = self->_has;
    if ((v13 & 0x80) == 0)
    {
LABEL_17:
      if ((v13 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_17;
  }

  v28 = [MEMORY[0x277CCABB0] numberWithBool:self->_compilation];
  [dictionary setObject:v28 forKey:@"compilation"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_18:
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_persistentId];
    [dictionary setObject:v14 forKey:@"persistentId"];
  }

LABEL_19:
  cloudId = self->_cloudId;
  if (cloudId)
  {
    [dictionary setObject:cloudId forKey:@"cloudId"];
  }

  v16 = self->_has;
  if ((v16 & 8) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_likedState];
    [dictionary setObject:v17 forKey:@"likedState"];

    v16 = self->_has;
  }

  if (v16)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_likedStateChangedDate];
    [dictionary setObject:v18 forKey:@"likedStateChangedDate"];
  }

  if ([(NSMutableArray *)self->_libraryIdentifiers count])
  {
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_libraryIdentifiers, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = self->_libraryIdentifiers;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation2 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v19 addObject:dictionaryRepresentation2];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v22);
    }

    [dictionary setObject:v19 forKey:@"libraryIdentifiers"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPAlbum;
  v4 = [(MIPAlbum *)&v8 description];
  dictionaryRepresentation = [(MIPAlbum *)self dictionaryRepresentation];
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

- (void)setHasLikedState:(BOOL)state
{
  if (state)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
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

- (void)setHasCompilation:(BOOL)compilation
{
  if (compilation)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasUserRating:(BOOL)rating
{
  if (rating)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasNumDiscs:(BOOL)discs
{
  if (discs)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNumTracks:(BOOL)tracks
{
  if (tracks)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasStoreId:(BOOL)id
{
  if (id)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

@end