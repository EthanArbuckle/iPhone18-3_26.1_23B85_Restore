@interface SyncedBookmarkRepr
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDirectionsMode:(id)mode;
- (int)StringAsType:(id)type;
- (int)directionsMode;
- (unint64_t)hash;
- (void)addPlaces:(id)places;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDirectionsMode:(BOOL)mode;
- (void)setHasLatitude:(BOOL)latitude;
- (void)setHasLongitude:(BOOL)longitude;
- (void)setHasProviderID:(BOOL)d;
- (void)setHasRegionLatitude:(BOOL)latitude;
- (void)setHasRegionLatitudeDelta:(BOOL)delta;
- (void)setHasRegionLongitude:(BOOL)longitude;
- (void)setHasRegionLongitudeDelta:(BOOL)delta;
- (void)writeTo:(id)to;
@end

@implementation SyncedBookmarkRepr

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PLACE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"CONTACT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"USER_LOCATION"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"REGION"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"TRIP"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"SEARCH"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLatitude:(BOOL)latitude
{
  if (latitude)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasLongitude:(BOOL)longitude
{
  if (longitude)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRegionLatitude:(BOOL)latitude
{
  if (latitude)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRegionLongitude:(BOOL)longitude
{
  if (longitude)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRegionLatitudeDelta:(BOOL)delta
{
  if (delta)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRegionLongitudeDelta:(BOOL)delta
{
  if (delta)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasProviderID:(BOOL)d
{
  if (d)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)directionsMode
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_directionsMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDirectionsMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)StringAsDirectionsMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"DRIVING"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"TRANSIT"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"WALKING"])
  {
    v4 = 3;
  }

  else if ([modeCopy isEqualToString:@"CYCLING"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addPlaces:(id)places
{
  placesCopy = places;
  places = self->_places;
  v8 = placesCopy;
  if (!places)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_places;
    self->_places = v6;

    placesCopy = v8;
    places = self->_places;
  }

  [(NSMutableArray *)places addObject:placesCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SyncedBookmarkRepr;
  v3 = [(SyncedBookmarkRepr *)&v7 description];
  dictionaryRepresentation = [(SyncedBookmarkRepr *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  type = self->_type;
  if (type >= 6)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = *(&off_10003D0E8 + type);
  }

  [v3 setObject:v5 forKey:@"type"];

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  singleLineAddress = self->_singleLineAddress;
  if (singleLineAddress)
  {
    [v3 setObject:singleLineAddress forKey:@"singleLineAddress"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v13 = [NSNumber numberWithDouble:self->_latitude];
    [v3 setObject:v13 forKey:@"latitude"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_10:
      if ((has & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_10;
  }

  v14 = [NSNumber numberWithDouble:self->_longitude];
  [v3 setObject:v14 forKey:@"longitude"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = [NSNumber numberWithDouble:self->_regionLatitude];
  [v3 setObject:v15 forKey:@"regionLatitude"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = [NSNumber numberWithDouble:self->_regionLongitude];
  [v3 setObject:v16 forKey:@"regionLongitude"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = [NSNumber numberWithDouble:self->_regionLatitudeDelta];
  [v3 setObject:v17 forKey:@"regionLatitudeDelta"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v18 = [NSNumber numberWithDouble:self->_regionLongitudeDelta];
  [v3 setObject:v18 forKey:@"regionLongitudeDelta"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_15:
    if ((has & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_28:
  v19 = [NSNumber numberWithUnsignedInt:self->_providerID];
  [v3 setObject:v19 forKey:@"providerID"];

  if (*&self->_has)
  {
LABEL_16:
    v9 = [NSNumber numberWithUnsignedLongLong:self->_businessID];
    [v3 setObject:v9 forKey:@"businessID"];
  }

LABEL_17:
  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier)
  {
    [v3 setObject:contactIdentifier forKey:@"contactIdentifier"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    directionsMode = self->_directionsMode;
    if (directionsMode >= 5)
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_directionsMode];
    }

    else
    {
      v12 = *(&off_10003D118 + directionsMode);
    }

    [v3 setObject:v12 forKey:@"directionsMode"];
  }

  if ([(NSMutableArray *)self->_places count])
  {
    v20 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_places, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = self->_places;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKey:@"places"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  type = self->_type;
  PBDataWriterWriteInt32Field();
  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_singleLineAddress)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    latitude = self->_latitude;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  longitude = self->_longitude;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  regionLatitude = self->_regionLatitude;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  regionLongitude = self->_regionLongitude;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  regionLatitudeDelta = self->_regionLatitudeDelta;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  regionLongitudeDelta = self->_regionLongitudeDelta;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_32:
  providerID = self->_providerID;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_13:
    businessID = self->_businessID;
    PBDataWriterWriteUint64Field();
  }

LABEL_14:
  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x80) != 0)
  {
    directionsMode = self->_directionsMode;
    PBDataWriterWriteInt32Field();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = self->_places;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[28] = self->_type;
  v10 = toCopy;
  if (self->_title)
  {
    [toCopy setTitle:?];
    toCopy = v10;
  }

  if (self->_singleLineAddress)
  {
    [v10 setSingleLineAddress:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_latitude;
    *(toCopy + 58) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 3) = *&self->_longitude;
  *(toCopy + 58) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(toCopy + 4) = *&self->_regionLatitude;
  *(toCopy + 58) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(toCopy + 6) = *&self->_regionLongitude;
  *(toCopy + 58) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(toCopy + 5) = *&self->_regionLatitudeDelta;
  *(toCopy + 58) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(toCopy + 7) = *&self->_regionLongitudeDelta;
  *(toCopy + 58) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_31:
  toCopy[22] = self->_providerID;
  *(toCopy + 58) |= 0x100u;
  if (*&self->_has)
  {
LABEL_13:
    *(toCopy + 1) = self->_businessID;
    *(toCopy + 58) |= 1u;
  }

LABEL_14:
  if (self->_contactIdentifier)
  {
    [v10 setContactIdentifier:?];
    toCopy = v10;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    toCopy[18] = self->_directionsMode;
    *(toCopy + 58) |= 0x80u;
  }

  if ([(SyncedBookmarkRepr *)self placesCount])
  {
    [v10 clearPlaces];
    placesCount = [(SyncedBookmarkRepr *)self placesCount];
    if (placesCount)
    {
      v7 = placesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SyncedBookmarkRepr *)self placesAtIndex:i];
        [v10 addPlaces:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[28] = self->_type;
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 13);
  *(v5 + 13) = v6;

  v8 = [(NSString *)self->_singleLineAddress copyWithZone:zone];
  v9 = *(v5 + 12);
  *(v5 + 12) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 2) = *&self->_latitude;
    *(v5 + 58) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 3) = *&self->_longitude;
  *(v5 + 58) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 4) = *&self->_regionLatitude;
  *(v5 + 58) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 6) = *&self->_regionLongitude;
  *(v5 + 58) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 5) = *&self->_regionLatitudeDelta;
  *(v5 + 58) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 7) = *&self->_regionLongitudeDelta;
  *(v5 + 58) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_26:
  v5[22] = self->_providerID;
  *(v5 + 58) |= 0x100u;
  if (*&self->_has)
  {
LABEL_9:
    *(v5 + 1) = self->_businessID;
    *(v5 + 58) |= 1u;
  }

LABEL_10:
  v11 = [(NSString *)self->_contactIdentifier copyWithZone:zone];
  v12 = *(v5 + 8);
  *(v5 + 8) = v11;

  if ((*&self->_has & 0x80) != 0)
  {
    v5[18] = self->_directionsMode;
    *(v5 + 58) |= 0x80u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_places;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{zone, v20}];
        [v5 addPlaces:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  if (self->_type != *(equalCopy + 28))
  {
    goto LABEL_57;
  }

  title = self->_title;
  if (title | *(equalCopy + 13))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_57;
    }
  }

  singleLineAddress = self->_singleLineAddress;
  if (singleLineAddress | *(equalCopy + 12))
  {
    if (![(NSString *)singleLineAddress isEqual:?])
    {
      goto LABEL_57;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 58);
  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_latitude != *(equalCopy + 2))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_longitude != *(equalCopy + 3))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_regionLatitude != *(equalCopy + 4))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_regionLongitude != *(equalCopy + 6))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_regionLatitudeDelta != *(equalCopy + 5))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_regionLongitudeDelta != *(equalCopy + 7))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_57;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 58) & 0x100) == 0 || self->_providerID != *(equalCopy + 22))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 58) & 0x100) != 0)
  {
    goto LABEL_57;
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_businessID != *(equalCopy + 1))
    {
      goto LABEL_57;
    }
  }

  else if (v8)
  {
    goto LABEL_57;
  }

  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier | *(equalCopy + 8))
  {
    if (![(NSString *)contactIdentifier isEqual:?])
    {
LABEL_57:
      v12 = 0;
      goto LABEL_58;
    }

    has = self->_has;
  }

  v10 = *(equalCopy + 58);
  if ((has & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_directionsMode != *(equalCopy + 18))
    {
      goto LABEL_57;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_57;
  }

  places = self->_places;
  if (places | *(equalCopy + 10))
  {
    v12 = [(NSMutableArray *)places isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_58:

  return v12;
}

- (unint64_t)hash
{
  type = self->_type;
  v34 = [(NSString *)self->_title hash];
  v33 = [(NSString *)self->_singleLineAddress hash];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = fabs(self->_latitude);
    v6 = floor(v5 + 0.5);
    v7 = (v5 - v6) * 1.84467441e19;
    v4 = 2654435761u * (v6 - trunc(v6 * 5.42101086e-20) * 1.84467441e19);
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v4 += v7;
      }
    }

    else
    {
      v4 -= fabs(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((has & 4) != 0)
  {
    v9 = fabs(self->_longitude);
    v10 = floor(v9 + 0.5);
    v11 = (v9 - v10) * 1.84467441e19;
    v8 = 2654435761u * (v10 - trunc(v10 * 5.42101086e-20) * 1.84467441e19);
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v8 += v11;
      }
    }

    else
    {
      v8 -= fabs(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((has & 8) != 0)
  {
    v13 = fabs(self->_regionLatitude);
    v14 = floor(v13 + 0.5);
    v15 = (v13 - v14) * 1.84467441e19;
    v12 = 2654435761u * (v14 - trunc(v14 * 5.42101086e-20) * 1.84467441e19);
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v12 += v15;
      }
    }

    else
    {
      v12 -= fabs(v15);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((has & 0x20) != 0)
  {
    v17 = fabs(self->_regionLongitude);
    v18 = floor(v17 + 0.5);
    v19 = (v17 - v18) * 1.84467441e19;
    v16 = 2654435761u * (v18 - trunc(v18 * 5.42101086e-20) * 1.84467441e19);
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v16 += v19;
      }
    }

    else
    {
      v16 -= fabs(v19);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((has & 0x10) != 0)
  {
    v21 = fabs(self->_regionLatitudeDelta);
    v22 = floor(v21 + 0.5);
    v23 = (v21 - v22) * 1.84467441e19;
    v20 = 2654435761u * (v22 - trunc(v22 * 5.42101086e-20) * 1.84467441e19);
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v20 += v23;
      }
    }

    else
    {
      v20 -= fabs(v23);
    }
  }

  else
  {
    v20 = 0;
  }

  if ((has & 0x40) != 0)
  {
    v25 = fabs(self->_regionLongitudeDelta);
    v26 = floor(v25 + 0.5);
    v27 = (v25 - v26) * 1.84467441e19;
    v24 = 2654435761u * (v26 - trunc(v26 * 5.42101086e-20) * 1.84467441e19);
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v24 += v27;
      }
    }

    else
    {
      v24 -= fabs(v27);
    }
  }

  else
  {
    v24 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v28 = 2654435761 * self->_providerID;
    if (has)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v28 = 0;
    if (has)
    {
LABEL_39:
      v29 = 2654435761u * self->_businessID;
      goto LABEL_42;
    }
  }

  v29 = 0;
LABEL_42:
  v30 = [(NSString *)self->_contactIdentifier hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v31 = 2654435761 * self->_directionsMode;
  }

  else
  {
    v31 = 0;
  }

  return v34 ^ v33 ^ v4 ^ v8 ^ v12 ^ (2654435761 * type) ^ v16 ^ v20 ^ v24 ^ v28 ^ v29 ^ v30 ^ v31 ^ [(NSMutableArray *)self->_places hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_type = *(fromCopy + 28);
  if (*(fromCopy + 13))
  {
    [(SyncedBookmarkRepr *)self setTitle:?];
  }

  if (*(fromCopy + 12))
  {
    [(SyncedBookmarkRepr *)self setSingleLineAddress:?];
  }

  v5 = *(fromCopy + 58);
  if ((v5 & 2) != 0)
  {
    self->_latitude = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 58);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_longitude = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 58);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_regionLatitude = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 58);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_regionLongitude = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 58);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_regionLatitudeDelta = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 58);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_regionLongitudeDelta = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 58);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_32:
  self->_providerID = *(fromCopy + 22);
  *&self->_has |= 0x100u;
  if (*(fromCopy + 58))
  {
LABEL_13:
    self->_businessID = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_14:
  if (*(fromCopy + 8))
  {
    [(SyncedBookmarkRepr *)self setContactIdentifier:?];
  }

  if ((*(fromCopy + 58) & 0x80) != 0)
  {
    self->_directionsMode = *(fromCopy + 18);
    *&self->_has |= 0x80u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(fromCopy + 10);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SyncedBookmarkRepr *)self addPlaces:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end