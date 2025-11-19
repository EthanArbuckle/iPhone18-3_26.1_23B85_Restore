@interface _MPCProtoContainerIdentifierSet
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _MPCProtoContainerIdentifierSet

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_delegateInfoID;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_storeAdamID;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_storePlaylistGlobalID hash];
  v6 = [(NSString *)self->_storePlaylistVersionHash hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_cloudID;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6 ^ v7;
  v9 = [(NSString *)self->_cloudCollectionID hash];
  v10 = v9 ^ [(NSString *)self->_radioStationID hash];
  return v8 ^ v10 ^ [(NSString *)self->_cloudUniversalLibraryID hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_delegateInfoID != *(v4 + 2))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 72) & 2) != 0)
  {
LABEL_27:
    v10 = 0;
    goto LABEL_28;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 72) & 4) == 0 || self->_storeAdamID != *(v4 + 3))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 72) & 4) != 0)
  {
    goto LABEL_27;
  }

  storePlaylistGlobalID = self->_storePlaylistGlobalID;
  if (storePlaylistGlobalID | *(v4 + 7) && ![(NSString *)storePlaylistGlobalID isEqual:?])
  {
    goto LABEL_27;
  }

  storePlaylistVersionHash = self->_storePlaylistVersionHash;
  if (storePlaylistVersionHash | *(v4 + 8))
  {
    if (![(NSString *)storePlaylistVersionHash isEqual:?])
    {
      goto LABEL_27;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_cloudID != *(v4 + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_27;
  }

  cloudCollectionID = self->_cloudCollectionID;
  if (cloudCollectionID | *(v4 + 4) && ![(NSString *)cloudCollectionID isEqual:?])
  {
    goto LABEL_27;
  }

  radioStationID = self->_radioStationID;
  if (radioStationID | *(v4 + 6))
  {
    if (![(NSString *)radioStationID isEqual:?])
    {
      goto LABEL_27;
    }
  }

  cloudUniversalLibraryID = self->_cloudUniversalLibraryID;
  if (cloudUniversalLibraryID | *(v4 + 5))
  {
    v10 = [(NSString *)cloudUniversalLibraryID isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_28:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_delegateInfoID;
    *(v5 + 72) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_storeAdamID;
    *(v5 + 72) |= 4u;
  }

  v8 = [(NSString *)self->_storePlaylistGlobalID copyWithZone:a3];
  v9 = *(v6 + 56);
  *(v6 + 56) = v8;

  v10 = [(NSString *)self->_storePlaylistVersionHash copyWithZone:a3];
  v11 = *(v6 + 64);
  *(v6 + 64) = v10;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_cloudID;
    *(v6 + 72) |= 1u;
  }

  v12 = [(NSString *)self->_cloudCollectionID copyWithZone:a3];
  v13 = *(v6 + 32);
  *(v6 + 32) = v12;

  v14 = [(NSString *)self->_radioStationID copyWithZone:a3];
  v15 = *(v6 + 48);
  *(v6 + 48) = v14;

  v16 = [(NSString *)self->_cloudUniversalLibraryID copyWithZone:a3];
  v17 = *(v6 + 40);
  *(v6 + 40) = v16;

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_storePlaylistGlobalID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_storePlaylistVersionHash)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_cloudCollectionID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_radioStationID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_cloudUniversalLibraryID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_delegateInfoID];
    [v3 setObject:v5 forKey:@"delegateInfoID"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_storeAdamID];
    [v3 setObject:v6 forKey:@"storeAdamID"];
  }

  storePlaylistGlobalID = self->_storePlaylistGlobalID;
  if (storePlaylistGlobalID)
  {
    [v3 setObject:storePlaylistGlobalID forKey:@"storePlaylistGlobalID"];
  }

  storePlaylistVersionHash = self->_storePlaylistVersionHash;
  if (storePlaylistVersionHash)
  {
    [v3 setObject:storePlaylistVersionHash forKey:@"storePlaylistVersionHash"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_cloudID];
    [v3 setObject:v9 forKey:@"cloudID"];
  }

  cloudCollectionID = self->_cloudCollectionID;
  if (cloudCollectionID)
  {
    [v3 setObject:cloudCollectionID forKey:@"cloudCollectionID"];
  }

  radioStationID = self->_radioStationID;
  if (radioStationID)
  {
    [v3 setObject:radioStationID forKey:@"radioStationID"];
  }

  cloudUniversalLibraryID = self->_cloudUniversalLibraryID;
  if (cloudUniversalLibraryID)
  {
    [v3 setObject:cloudUniversalLibraryID forKey:@"cloudUniversalLibraryID"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoContainerIdentifierSet;
  v4 = [(_MPCProtoContainerIdentifierSet *)&v8 description];
  v5 = [(_MPCProtoContainerIdentifierSet *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end