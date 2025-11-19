@interface MSPCompanionSyncedItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChangeType:(id)a3;
- (int)changeType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsChangeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Add"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Update"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Delete"])
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
  v4 = [(MSPCompanionSyncedItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v9 = [(MSPBookmarkStorage *)bookmark dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"bookmark"];
  }

  pin = self->_pin;
  if (pin)
  {
    v11 = [(MSPPinStorage *)pin dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"pin"];
  }

  searchRequest = self->_searchRequest;
  if (searchRequest)
  {
    v13 = [(MSPHistoryEntryStorage *)searchRequest dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"searchRequest"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v15 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:v15 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_syncId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_bookmark)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_pin)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_searchRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    changeType = self->_changeType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_syncId)
  {
    [v4 setSyncId:?];
    v4 = v5;
  }

  if (self->_bookmark)
  {
    [v5 setBookmark:?];
    v4 = v5;
  }

  if (self->_pin)
  {
    [v5 setPin:?];
    v4 = v5;
  }

  if (self->_searchRequest)
  {
    [v5 setSearchRequest:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_changeType;
    *(v4 + 56) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_syncId copyWithZone:a3];
  v7 = *(v5 + 6);
  *(v5 + 6) = v6;

  v8 = [(MSPBookmarkStorage *)self->_bookmark copyWithZone:a3];
  v9 = *(v5 + 2);
  *(v5 + 2) = v8;

  v10 = [(MSPPinStorage *)self->_pin copyWithZone:a3];
  v11 = *(v5 + 4);
  *(v5 + 4) = v10;

  v12 = [(MSPHistoryEntryStorage *)self->_searchRequest copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  syncId = self->_syncId;
  if (syncId | *(v4 + 6))
  {
    if (![(NSString *)syncId isEqual:?])
    {
      goto LABEL_14;
    }
  }

  bookmark = self->_bookmark;
  if (bookmark | *(v4 + 2))
  {
    if (![(MSPBookmarkStorage *)bookmark isEqual:?])
    {
      goto LABEL_14;
    }
  }

  pin = self->_pin;
  if (pin | *(v4 + 4))
  {
    if (![(MSPPinStorage *)pin isEqual:?])
    {
      goto LABEL_14;
    }
  }

  searchRequest = self->_searchRequest;
  if (searchRequest | *(v4 + 5))
  {
    if (![(MSPHistoryEntryStorage *)searchRequest isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(v4 + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) != 0 && self->_changeType == *(v4 + 6))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (*(v4 + 6))
  {
    [(MSPCompanionSyncedItem *)self setSyncId:?];
    v4 = v11;
  }

  bookmark = self->_bookmark;
  v6 = *(v4 + 2);
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

  v4 = v11;
LABEL_9:
  pin = self->_pin;
  v8 = *(v4 + 4);
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

  v4 = v11;
LABEL_15:
  searchRequest = self->_searchRequest;
  v10 = *(v4 + 5);
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

  v4 = v11;
LABEL_21:
  if (v4[14])
  {
    self->_changeType = v4[6];
    *&self->_has |= 1u;
  }

  _objc_release_x1();
}

@end