@interface NPKProtoReserveStorageForAppletTypesResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addReservationID:(id)d;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoReserveStorageForAppletTypesResponse

- (void)addReservationID:(id)d
{
  dCopy = d;
  reservationIDs = self->_reservationIDs;
  v8 = dCopy;
  if (!reservationIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_reservationIDs;
    self->_reservationIDs = v6;

    dCopy = v8;
    reservationIDs = self->_reservationIDs;
  }

  [(NSMutableArray *)reservationIDs addObject:dCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoReserveStorageForAppletTypesResponse;
  v4 = [(NPKProtoReserveStorageForAppletTypesResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoReserveStorageForAppletTypesResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  reservationIDs = self->_reservationIDs;
  if (reservationIDs)
  {
    [dictionary setObject:reservationIDs forKey:@"reservationID"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFull];
    [v4 setObject:v6 forKey:@"isFull"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v4 setObject:errorData forKey:@"errorData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_reservationIDs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    isFull = self->_isFull;
    PBDataWriterWriteBOOLField();
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPKProtoReserveStorageForAppletTypesResponse *)self reservationIDsCount])
  {
    [toCopy clearReservationIDs];
    reservationIDsCount = [(NPKProtoReserveStorageForAppletTypesResponse *)self reservationIDsCount];
    if (reservationIDsCount)
    {
      v5 = reservationIDsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoReserveStorageForAppletTypesResponse *)self reservationIDAtIndex:i];
        [toCopy addReservationID:v7];
      }
    }
  }

  v8 = toCopy;
  if (*&self->_has)
  {
    toCopy[24] = self->_isFull;
    toCopy[28] |= 1u;
  }

  if (self->_errorData)
  {
    [toCopy setErrorData:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_reservationIDs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) copyWithZone:{zone, v16}];
        [v5 addReservationID:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    *(v5 + 24) = self->_isFull;
    *(v5 + 28) |= 1u;
  }

  v12 = [(NSData *)self->_errorData copyWithZone:zone, v16];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  reservationIDs = self->_reservationIDs;
  if (reservationIDs | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)reservationIDs isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(equalCopy + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(equalCopy + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(equalCopy + 24);
  if (!self->_isFull)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if ((*(equalCopy + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  errorData = self->_errorData;
  if (errorData | *(equalCopy + 1))
  {
    v8 = [(NSData *)errorData isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_reservationIDs hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isFull;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSData *)self->_errorData hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 2);
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

        [(NPKProtoReserveStorageForAppletTypesResponse *)self addReservationID:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 28))
  {
    self->_isFull = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(NPKProtoReserveStorageForAppletTypesResponse *)self setErrorData:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end