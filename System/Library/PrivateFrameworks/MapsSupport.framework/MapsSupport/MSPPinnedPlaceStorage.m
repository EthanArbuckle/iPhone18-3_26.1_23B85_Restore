@interface MSPPinnedPlaceStorage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)addContactStorage:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHidden:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPPinnedPlaceStorage

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MAP_ITEM"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HOME"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WORK"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PARKED_CAR"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SCHOOL"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addContactStorage:(id)a3
{
  v4 = a3;
  contactStorages = self->_contactStorages;
  v8 = v4;
  if (!contactStorages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_contactStorages;
    self->_contactStorages = v6;

    v4 = v8;
    contactStorages = self->_contactStorages;
  }

  [(NSMutableArray *)contactStorages addObject:v4];
}

- (void)setHasHidden:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPPinnedPlaceStorage;
  v4 = [(MSPPinnedPlaceStorage *)&v8 description];
  v5 = [(MSPPinnedPlaceStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 6)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_279866348[type];
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  customName = self->_customName;
  if (customName)
  {
    [v3 setObject:customName forKey:@"customName"];
  }

  mapItemStorage = self->_mapItemStorage;
  if (mapItemStorage)
  {
    v9 = [(GEOMapItemStorage *)mapItemStorage dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"mapItemStorage"];
  }

  if ([(NSMutableArray *)self->_contactStorages count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_contactStorages, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = self->_contactStorages;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"contactStorage"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_hidden];
    [v3 setObject:v17 forKey:@"hidden"];
  }

  originatingAddressString = self->_originatingAddressString;
  if (originatingAddressString)
  {
    [v3 setObject:originatingAddressString forKey:@"originatingAddressString"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v20 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v20 forKey:@"Unknown Fields"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_customName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_mapItemStorage)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_contactStorages;
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

  if ((*&self->_has & 2) != 0)
  {
    hidden = self->_hidden;
    PBDataWriterWriteBOOLField();
  }

  if (self->_originatingAddressString)
  {
    PBDataWriterWriteStringField();
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4, v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[14] = self->_type;
    *(v4 + 64) |= 1u;
  }

  v10 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
  }

  if (self->_customName)
  {
    [v10 setCustomName:?];
  }

  if (self->_mapItemStorage)
  {
    [v10 setMapItemStorage:?];
  }

  if ([(MSPPinnedPlaceStorage *)self contactStoragesCount])
  {
    [v10 clearContactStorages];
    v5 = [(MSPPinnedPlaceStorage *)self contactStoragesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(MSPPinnedPlaceStorage *)self contactStorageAtIndex:i];
        [v10 addContactStorage:v8];
      }
    }
  }

  v9 = v10;
  if ((*&self->_has & 2) != 0)
  {
    v10[60] = self->_hidden;
    v10[64] |= 2u;
  }

  if (self->_originatingAddressString)
  {
    [v10 setOriginatingAddressString:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 56) = self->_type;
    *(v5 + 64) |= 1u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:a3];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(NSString *)self->_customName copyWithZone:a3];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  v11 = [(GEOMapItemStorage *)self->_mapItemStorage copyWithZone:a3];
  v12 = *(v6 + 40);
  *(v6 + 40) = v11;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_contactStorages;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v23 + 1) + 8 * v17) copyWithZone:{a3, v23}];
        [v6 addContactStorage:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 60) = self->_hidden;
    *(v6 + 64) |= 2u;
  }

  v19 = [(NSString *)self->_originatingAddressString copyWithZone:a3, v23];
  v20 = *(v6 + 48);
  *(v6 + 48) = v19;

  objc_storeStrong((v6 + 8), self->_unknownFields);
  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_type != *(v4 + 14))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_20;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 4) && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_20;
  }

  customName = self->_customName;
  if (customName | *(v4 + 3))
  {
    if (![(NSString *)customName isEqual:?])
    {
      goto LABEL_20;
    }
  }

  mapItemStorage = self->_mapItemStorage;
  if (mapItemStorage | *(v4 + 5))
  {
    if (![(GEOMapItemStorage *)mapItemStorage isEqual:?])
    {
      goto LABEL_20;
    }
  }

  contactStorages = self->_contactStorages;
  if (contactStorages | *(v4 + 2))
  {
    if (![(NSMutableArray *)contactStorages isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v10 = *(v4 + 64);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 64) & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  if ((*(v4 + 64) & 2) == 0)
  {
    goto LABEL_20;
  }

  v14 = *(v4 + 60);
  if (self->_hidden)
  {
    if ((*(v4 + 60) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_20;
  }

LABEL_17:
  originatingAddressString = self->_originatingAddressString;
  if (originatingAddressString | *(v4 + 6))
  {
    v12 = [(NSString *)originatingAddressString isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_identifier hash];
  v5 = [(NSString *)self->_customName hash];
  v6 = [(GEOMapItemStorage *)self->_mapItemStorage hash];
  v7 = [(NSMutableArray *)self->_contactStorages hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_hidden;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_originatingAddressString hash];
}

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4[16])
  {
    self->_type = v4[14];
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(MSPPinnedPlaceStorage *)self setIdentifier:?];
  }

  if (*(v5 + 3))
  {
    [(MSPPinnedPlaceStorage *)self setCustomName:?];
  }

  mapItemStorage = self->_mapItemStorage;
  v7 = *(v5 + 5);
  if (mapItemStorage)
  {
    if (v7)
    {
      [(GEOMapItemStorage *)mapItemStorage mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(MSPPinnedPlaceStorage *)self setMapItemStorage:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(v5 + 2);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(MSPPinnedPlaceStorage *)self addContactStorage:*(*(&v14 + 1) + 8 * i), v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  if ((*(v5 + 64) & 2) != 0)
  {
    self->_hidden = *(v5 + 60);
    *&self->_has |= 2u;
  }

  if (*(v5 + 6))
  {
    [(MSPPinnedPlaceStorage *)self setOriginatingAddressString:?];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end