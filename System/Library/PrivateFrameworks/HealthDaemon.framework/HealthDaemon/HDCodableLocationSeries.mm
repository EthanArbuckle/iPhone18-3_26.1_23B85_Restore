@interface HDCodableLocationSeries
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLocationData:(id)data;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFrozen:(BOOL)frozen;
- (void)writeTo:(id)to;
@end

@implementation HDCodableLocationSeries

- (BOOL)applyToObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HDCodableLocationSeries sample](self, "sample"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 applyToObject:objectCopy], v5, v6))
  {
    [objectCopy _setFrozen:{-[HDCodableLocationSeries frozen](self, "frozen")}];
    [objectCopy _setCodableWorkoutRoute:self];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setHasFrozen:(BOOL)frozen
{
  if (frozen)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addLocationData:(id)data
{
  dataCopy = data;
  locationDatas = self->_locationDatas;
  v8 = dataCopy;
  if (!locationDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_locationDatas;
    self->_locationDatas = v6;

    dataCopy = v8;
    locationDatas = self->_locationDatas;
  }

  [(NSMutableArray *)locationDatas addObject:dataCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableLocationSeries;
  v4 = [(HDCodableLocationSeries *)&v8 description];
  dictionaryRepresentation = [(HDCodableLocationSeries *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    dictionaryRepresentation = [(HDCodableSample *)sample dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sample"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_frozen];
    [dictionary setObject:v6 forKey:@"frozen"];
  }

  continuationUUID = self->_continuationUUID;
  if (continuationUUID)
  {
    [dictionary setObject:continuationUUID forKey:@"continuationUUID"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_final];
    [dictionary setObject:v8 forKey:@"final"];
  }

  if ([(NSMutableArray *)self->_locationDatas count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_locationDatas, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_locationDatas;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation2 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation2];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [dictionary setObject:v9 forKey:@"locationData"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    frozen = self->_frozen;
    PBDataWriterWriteBOOLField();
  }

  if (self->_continuationUUID)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    final = self->_final;
    PBDataWriterWriteBOOLField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_locationDatas;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[33] = self->_frozen;
    toCopy[36] |= 2u;
  }

  if (self->_continuationUUID)
  {
    [v9 setContinuationUUID:?];
    toCopy = v9;
  }

  if (*&self->_has)
  {
    toCopy[32] = self->_final;
    toCopy[36] |= 1u;
  }

  if ([(HDCodableLocationSeries *)self locationDatasCount])
  {
    [v9 clearLocationDatas];
    locationDatasCount = [(HDCodableLocationSeries *)self locationDatasCount];
    if (locationDatasCount)
    {
      v6 = locationDatasCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HDCodableLocationSeries *)self locationDataAtIndex:i];
        [v9 addLocationData:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 33) = self->_frozen;
    *(v5 + 36) |= 2u;
  }

  v8 = [(NSData *)self->_continuationUUID copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_final;
    *(v5 + 36) |= 1u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_locationDatas;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{zone, v18}];
        [v5 addLocationData:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 3))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_22;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 36);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_22;
    }

    v11 = *(equalCopy + 33);
    if (self->_frozen)
    {
      if ((*(equalCopy + 33) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(equalCopy + 33))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_22;
  }

  continuationUUID = self->_continuationUUID;
  if (continuationUUID | *(equalCopy + 1))
  {
    if (![(NSData *)continuationUUID isEqual:?])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v7 = *(equalCopy + 36);
  }

  if ((has & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_22;
  }

  v7 = *(equalCopy + 32);
  if (!self->_final)
  {
LABEL_10:
    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  if ((*(equalCopy + 32) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  locationDatas = self->_locationDatas;
  if (locationDatas | *(equalCopy + 2))
  {
    v10 = [(NSMutableArray *)locationDatas isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_23:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSample *)self->_sample hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_frozen;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSData *)self->_continuationUUID hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_final;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSMutableArray *)self->_locationDatas hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 3);
  if (sample)
  {
    if (v6)
    {
      [(HDCodableSample *)sample mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableLocationSeries *)self setSample:?];
  }

  if ((*(fromCopy + 36) & 2) != 0)
  {
    self->_frozen = *(fromCopy + 33);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    [(HDCodableLocationSeries *)self setContinuationUUID:?];
  }

  if (*(fromCopy + 36))
  {
    self->_final = *(fromCopy + 32);
    *&self->_has |= 1u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 2);
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

        [(HDCodableLocationSeries *)self addLocationData:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end