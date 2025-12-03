@interface MSPCompanionSyncedItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChangeType:(id)type;
- (int)changeType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPCompanionSyncedItem

- (int)changeType
{
  if (*&self->_has)
  {
    return self->_changeType;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsChangeType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Add"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Update"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Delete"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = MSPCompanionSyncedItem;
  v3 = [(MSPCompanionSyncedItem *)&v7 description];
  dictionaryRepresentation = [(MSPCompanionSyncedItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  syncId = self->_syncId;
  if (syncId)
  {
    [v3 setObject:syncId forKey:@"syncId"];
  }

  if (*&self->_has)
  {
    v6 = self->_changeType - 1;
    if (v6 >= 3)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_changeType];
    }

    else
    {
      v7 = *(&off_1000851C0 + v6);
    }

    [v4 setObject:v7 forKey:@"changeType"];
  }

  bookmark = self->_bookmark;
  if (bookmark)
  {
    dictionaryRepresentation = [(MSPBookmarkStorage *)bookmark dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"bookmark"];
  }

  pin = self->_pin;
  if (pin)
  {
    dictionaryRepresentation2 = [(MSPPinStorage *)pin dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"pin"];
  }

  searchRequest = self->_searchRequest;
  if (searchRequest)
  {
    dictionaryRepresentation3 = [(MSPHistoryEntryStorage *)searchRequest dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"searchRequest"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation4 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_syncId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_bookmark)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_pin)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_searchRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    changeType = self->_changeType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_syncId)
  {
    [toCopy setSyncId:?];
    toCopy = v5;
  }

  if (self->_bookmark)
  {
    [v5 setBookmark:?];
    toCopy = v5;
  }

  if (self->_pin)
  {
    [v5 setPin:?];
    toCopy = v5;
  }

  if (self->_searchRequest)
  {
    [v5 setSearchRequest:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_changeType;
    *(toCopy + 56) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_syncId copyWithZone:zone];
  v7 = *(v5 + 6);
  *(v5 + 6) = v6;

  v8 = [(MSPBookmarkStorage *)self->_bookmark copyWithZone:zone];
  v9 = *(v5 + 2);
  *(v5 + 2) = v8;

  v10 = [(MSPPinStorage *)self->_pin copyWithZone:zone];
  v11 = *(v5 + 4);
  *(v5 + 4) = v10;

  v12 = [(MSPHistoryEntryStorage *)self->_searchRequest copyWithZone:zone];
  v13 = *(v5 + 5);
  *(v5 + 5) = v12;

  if (*&self->_has)
  {
    *(v5 + 6) = self->_changeType;
    *(v5 + 56) |= 1u;
  }

  objc_storeStrong(v5 + 1, self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  syncId = self->_syncId;
  if (syncId | *(equalCopy + 6))
  {
    if (![(NSString *)syncId isEqual:?])
    {
      goto LABEL_14;
    }
  }

  bookmark = self->_bookmark;
  if (bookmark | *(equalCopy + 2))
  {
    if (![(MSPBookmarkStorage *)bookmark isEqual:?])
    {
      goto LABEL_14;
    }
  }

  pin = self->_pin;
  if (pin | *(equalCopy + 4))
  {
    if (![(MSPPinStorage *)pin isEqual:?])
    {
      goto LABEL_14;
    }
  }

  searchRequest = self->_searchRequest;
  if (searchRequest | *(equalCopy + 5))
  {
    if (![(MSPHistoryEntryStorage *)searchRequest isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(equalCopy + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) != 0 && self->_changeType == *(equalCopy + 6))
    {
      v9 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_syncId hash];
  v4 = [(MSPBookmarkStorage *)self->_bookmark hash];
  v5 = [(MSPPinStorage *)self->_pin hash];
  v6 = [(MSPHistoryEntryStorage *)self->_searchRequest hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_changeType;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v11 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(MSPCompanionSyncedItem *)self setSyncId:?];
    fromCopy = v11;
  }

  bookmark = self->_bookmark;
  v6 = *(fromCopy + 2);
  if (bookmark)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(MSPBookmarkStorage *)bookmark mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(MSPCompanionSyncedItem *)self setBookmark:?];
  }

  fromCopy = v11;
LABEL_9:
  pin = self->_pin;
  v8 = *(fromCopy + 4);
  if (pin)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(MSPPinStorage *)pin mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(MSPCompanionSyncedItem *)self setPin:?];
  }

  fromCopy = v11;
LABEL_15:
  searchRequest = self->_searchRequest;
  v10 = *(fromCopy + 5);
  if (searchRequest)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    [(MSPHistoryEntryStorage *)searchRequest mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    [(MSPCompanionSyncedItem *)self setSearchRequest:?];
  }

  fromCopy = v11;
LABEL_21:
  if (fromCopy[14])
  {
    self->_changeType = fromCopy[6];
    *&self->_has |= 1u;
  }

  _objc_release_x1();
}

@end