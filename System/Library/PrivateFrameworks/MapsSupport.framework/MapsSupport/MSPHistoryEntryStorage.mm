@interface MSPHistoryEntryStorage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSearchType:(id)type;
- (int)searchType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSearchType:(BOOL)type;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasTracksRAPRecordingOnly:(BOOL)only;
- (void)writeTo:(id)to;
@end

@implementation MSPHistoryEntryStorage

- (int)searchType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_searchType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasSearchType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsSearchType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"QUERY_SEARCH"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"DIRECTIONS_SEARCH"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"PLACE_DISPLAY"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"TRANSIT_LINE_ITEM"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"RIDESHARING_TRIP"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTracksRAPRecordingOnly:(BOOL)only
{
  if (only)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPHistoryEntryStorage;
  v4 = [(MSPHistoryEntryStorage *)&v8 description];
  dictionaryRepresentation = [(MSPHistoryEntryStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = self->_searchType - 1;
    if (v4 >= 5)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_searchType];
    }

    else
    {
      v5 = off_279867D58[v4];
    }

    [dictionary setObject:v5 forKey:@"searchType"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [dictionary setObject:v8 forKey:@"timestamp"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_position];
    [dictionary setObject:v9 forKey:@"position"];
  }

  querySearch = self->_querySearch;
  if (querySearch)
  {
    dictionaryRepresentation = [(MSPQuerySearch *)querySearch dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"querySearch"];
  }

  directionsSearch = self->_directionsSearch;
  if (directionsSearch)
  {
    dictionaryRepresentation2 = [(MSPDirectionsSearch *)directionsSearch dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"directionsSearch"];
  }

  placeDisplay = self->_placeDisplay;
  if (placeDisplay)
  {
    dictionaryRepresentation3 = [(MSPPlaceDisplay *)placeDisplay dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"placeDisplay"];
  }

  transitLineItem = self->_transitLineItem;
  if (transitLineItem)
  {
    dictionaryRepresentation4 = [(MSPTransitStorageLineItem *)transitLineItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"transitLineItem"];
  }

  ridesharingTrip = self->_ridesharingTrip;
  if (ridesharingTrip)
  {
    dictionaryRepresentation5 = [(MSPRidesharingTrip *)ridesharingTrip dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"ridesharingTrip"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_tracksRAPRecordingOnly];
    [dictionary setObject:v20 forKey:@"tracksRAPRecordingOnly"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation6 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"Unknown Fields"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    searchType = self->_searchType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if (has)
  {
    position = self->_position;
    PBDataWriterWriteDoubleField();
  }

  if (self->_querySearch)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_directionsSearch)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_placeDisplay)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_transitLineItem)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_ridesharingTrip)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    tracksRAPRecordingOnly = self->_tracksRAPRecordingOnly;
    PBDataWriterWriteBOOLField();
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[18] = self->_searchType;
    *(toCopy + 92) |= 4u;
  }

  v6 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 3) = *&self->_timestamp;
    *(toCopy + 92) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 2) = *&self->_position;
    *(toCopy + 92) |= 1u;
  }

  if (self->_querySearch)
  {
    [v6 setQuerySearch:?];
    toCopy = v6;
  }

  if (self->_directionsSearch)
  {
    [v6 setDirectionsSearch:?];
    toCopy = v6;
  }

  if (self->_placeDisplay)
  {
    [v6 setPlaceDisplay:?];
    toCopy = v6;
  }

  if (self->_transitLineItem)
  {
    [v6 setTransitLineItem:?];
    toCopy = v6;
  }

  if (self->_ridesharingTrip)
  {
    [v6 setRidesharingTrip:?];
    toCopy = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 88) = self->_tracksRAPRecordingOnly;
    *(toCopy + 92) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 72) = self->_searchType;
    *(v5 + 92) |= 4u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:zone];
  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 24) = self->_timestamp;
    *(v6 + 92) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 16) = self->_position;
    *(v6 + 92) |= 1u;
  }

  v10 = [(MSPQuerySearch *)self->_querySearch copyWithZone:zone];
  v11 = *(v6 + 56);
  *(v6 + 56) = v10;

  v12 = [(MSPDirectionsSearch *)self->_directionsSearch copyWithZone:zone];
  v13 = *(v6 + 32);
  *(v6 + 32) = v12;

  v14 = [(MSPPlaceDisplay *)self->_placeDisplay copyWithZone:zone];
  v15 = *(v6 + 48);
  *(v6 + 48) = v14;

  v16 = [(MSPTransitStorageLineItem *)self->_transitLineItem copyWithZone:zone];
  v17 = *(v6 + 80);
  *(v6 + 80) = v16;

  v18 = [(MSPRidesharingTrip *)self->_ridesharingTrip copyWithZone:zone];
  v19 = *(v6 + 64);
  *(v6 + 64) = v18;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 88) = self->_tracksRAPRecordingOnly;
    *(v6 + 92) |= 8u;
  }

  objc_storeStrong((v6 + 8), self->_unknownFields);
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  has = self->_has;
  v6 = *(equalCopy + 92);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 92) & 4) == 0 || self->_searchType != *(equalCopy + 18))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 92) & 4) != 0)
  {
    goto LABEL_32;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 5))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_32;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 92);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 92) & 2) == 0 || self->_timestamp != *(equalCopy + 3))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 92) & 2) != 0)
  {
    goto LABEL_32;
  }

  if (has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_position != *(equalCopy + 2))
    {
      goto LABEL_32;
    }
  }

  else if (*(equalCopy + 92))
  {
    goto LABEL_32;
  }

  querySearch = self->_querySearch;
  if (querySearch | *(equalCopy + 7) && ![(MSPQuerySearch *)querySearch isEqual:?])
  {
    goto LABEL_32;
  }

  directionsSearch = self->_directionsSearch;
  if (directionsSearch | *(equalCopy + 4))
  {
    if (![(MSPDirectionsSearch *)directionsSearch isEqual:?])
    {
      goto LABEL_32;
    }
  }

  placeDisplay = self->_placeDisplay;
  if (placeDisplay | *(equalCopy + 6))
  {
    if (![(MSPPlaceDisplay *)placeDisplay isEqual:?])
    {
      goto LABEL_32;
    }
  }

  transitLineItem = self->_transitLineItem;
  if (transitLineItem | *(equalCopy + 10))
  {
    if (![(MSPTransitStorageLineItem *)transitLineItem isEqual:?])
    {
      goto LABEL_32;
    }
  }

  ridesharingTrip = self->_ridesharingTrip;
  if (ridesharingTrip | *(equalCopy + 8))
  {
    if (![(MSPRidesharingTrip *)ridesharingTrip isEqual:?])
    {
      goto LABEL_32;
    }
  }

  v14 = (*(equalCopy + 92) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 92) & 8) != 0)
    {
      if (self->_tracksRAPRecordingOnly)
      {
        if ((*(equalCopy + 88) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (*(equalCopy + 88))
      {
        goto LABEL_32;
      }

      v14 = 1;
      goto LABEL_33;
    }

LABEL_32:
    v14 = 0;
  }

LABEL_33:

  return v14;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v21 = 2654435761 * self->_searchType;
  }

  else
  {
    v21 = 0;
  }

  v3 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v4.i64 = floor(timestamp + 0.5);
    v8 = (timestamp - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*&self->_has)
  {
    position = self->_position;
    if (position < 0.0)
    {
      position = -position;
    }

    *v4.i64 = floor(position + 0.5);
    v12 = (position - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = [(MSPQuerySearch *)self->_querySearch hash];
  v15 = [(MSPDirectionsSearch *)self->_directionsSearch hash];
  v16 = [(MSPPlaceDisplay *)self->_placeDisplay hash];
  v17 = [(MSPTransitStorageLineItem *)self->_transitLineItem hash];
  v18 = [(MSPRidesharingTrip *)self->_ridesharingTrip hash];
  if ((*&self->_has & 8) != 0)
  {
    v19 = 2654435761 * self->_tracksRAPRecordingOnly;
  }

  else
  {
    v19 = 0;
  }

  return v3 ^ v21 ^ v6 ^ v10 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[23] & 4) != 0)
  {
    self->_searchType = fromCopy[18];
    *&self->_has |= 4u;
  }

  v17 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(MSPHistoryEntryStorage *)self setIdentifier:?];
    v5 = v17;
  }

  v6 = *(v5 + 92);
  if ((v6 & 2) != 0)
  {
    self->_timestamp = *(v5 + 3);
    *&self->_has |= 2u;
    v6 = *(v5 + 92);
  }

  if (v6)
  {
    self->_position = *(v5 + 2);
    *&self->_has |= 1u;
  }

  querySearch = self->_querySearch;
  v8 = *(v5 + 7);
  if (querySearch)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(MSPQuerySearch *)querySearch mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(MSPHistoryEntryStorage *)self setQuerySearch:?];
  }

  v5 = v17;
LABEL_15:
  directionsSearch = self->_directionsSearch;
  v10 = *(v5 + 4);
  if (directionsSearch)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    [(MSPDirectionsSearch *)directionsSearch mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    [(MSPHistoryEntryStorage *)self setDirectionsSearch:?];
  }

  v5 = v17;
LABEL_21:
  placeDisplay = self->_placeDisplay;
  v12 = *(v5 + 6);
  if (placeDisplay)
  {
    if (!v12)
    {
      goto LABEL_27;
    }

    [(MSPPlaceDisplay *)placeDisplay mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_27;
    }

    [(MSPHistoryEntryStorage *)self setPlaceDisplay:?];
  }

  v5 = v17;
LABEL_27:
  transitLineItem = self->_transitLineItem;
  v14 = *(v5 + 10);
  if (transitLineItem)
  {
    if (!v14)
    {
      goto LABEL_33;
    }

    [(MSPTransitStorageLineItem *)transitLineItem mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_33;
    }

    [(MSPHistoryEntryStorage *)self setTransitLineItem:?];
  }

  v5 = v17;
LABEL_33:
  ridesharingTrip = self->_ridesharingTrip;
  v16 = *(v5 + 8);
  if (ridesharingTrip)
  {
    if (!v16)
    {
      goto LABEL_39;
    }

    [(MSPRidesharingTrip *)ridesharingTrip mergeFrom:?];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_39;
    }

    [(MSPHistoryEntryStorage *)self setRidesharingTrip:?];
  }

  v5 = v17;
LABEL_39:
  if ((v5[23] & 8) != 0)
  {
    self->_tracksRAPRecordingOnly = *(v5 + 88);
    *&self->_has |= 8u;
  }

  MEMORY[0x2821F96F8]();
}

@end