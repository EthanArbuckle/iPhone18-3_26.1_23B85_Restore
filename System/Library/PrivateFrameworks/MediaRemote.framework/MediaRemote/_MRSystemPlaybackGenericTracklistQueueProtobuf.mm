@interface _MRSystemPlaybackGenericTracklistQueueProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRepeatMode:(id)a3;
- (int)StringAsShuffleMode:(id)a3;
- (int)repeatMode;
- (int)shuffleMode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasShuffleMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSystemPlaybackGenericTracklistQueueProtobuf

- (int)shuffleMode
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_shuffleMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasShuffleMode:(BOOL)a3
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

- (int)StringAsShuffleMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Off"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Albums"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Songs"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)repeatMode
{
  if (*&self->_has)
  {
    return self->_repeatMode;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRepeatMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"One"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"All"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSystemPlaybackGenericTracklistQueueProtobuf;
  v4 = [(_MRSystemPlaybackGenericTracklistQueueProtobuf *)&v8 description];
  v5 = [(_MRSystemPlaybackGenericTracklistQueueProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  firstTrackIdentifier = self->_firstTrackIdentifier;
  if (firstTrackIdentifier)
  {
    [v3 setObject:firstTrackIdentifier forKey:@"firstTrackIdentifier"];
  }

  trackIdentifiers = self->_trackIdentifiers;
  if (trackIdentifiers)
  {
    [v4 setObject:trackIdentifiers forKey:@"trackIdentifiers"];
  }

  collectionIdentifierSet = self->_collectionIdentifierSet;
  if (collectionIdentifierSet)
  {
    [v4 setObject:collectionIdentifierSet forKey:@"collectionIdentifierSet"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    shuffleMode = self->_shuffleMode;
    if (shuffleMode >= 4)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_shuffleMode];
    }

    else
    {
      v10 = off_1E769ECD0[shuffleMode];
    }

    [v4 setObject:v10 forKey:@"shuffleMode"];

    has = self->_has;
  }

  if (has)
  {
    repeatMode = self->_repeatMode;
    if (repeatMode >= 4)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_repeatMode];
    }

    else
    {
      v12 = off_1E769ECF0[repeatMode];
    }

    [v4 setObject:v12 forKey:@"repeatMode"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_firstTrackIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_trackIdentifiers)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_collectionIdentifierSet)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    shuffleMode = self->_shuffleMode;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    repeatMode = self->_repeatMode;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_firstTrackIdentifier)
  {
    [v4 setFirstTrackIdentifier:?];
    v4 = v6;
  }

  if (self->_trackIdentifiers)
  {
    [v6 setTrackIdentifiers:?];
    v4 = v6;
  }

  if (self->_collectionIdentifierSet)
  {
    [v6 setCollectionIdentifierSet:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 7) = self->_shuffleMode;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 6) = self->_repeatMode;
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_firstTrackIdentifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_trackIdentifiers copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSData *)self->_collectionIdentifierSet copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 28) = self->_shuffleMode;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 24) = self->_repeatMode;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  firstTrackIdentifier = self->_firstTrackIdentifier;
  if (firstTrackIdentifier | *(v4 + 2))
  {
    if (![(NSString *)firstTrackIdentifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  trackIdentifiers = self->_trackIdentifiers;
  if (trackIdentifiers | *(v4 + 4))
  {
    if (![(NSString *)trackIdentifiers isEqual:?])
    {
      goto LABEL_17;
    }
  }

  collectionIdentifierSet = self->_collectionIdentifierSet;
  if (collectionIdentifierSet | *(v4 + 1))
  {
    if (![(NSData *)collectionIdentifierSet isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_shuffleMode != *(v4 + 7))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_repeatMode != *(v4 + 6))
    {
      goto LABEL_17;
    }

    v8 = 1;
  }

LABEL_18:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_firstTrackIdentifier hash];
  v4 = [(NSString *)self->_trackIdentifiers hash];
  v5 = [(NSData *)self->_collectionIdentifierSet hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_shuffleMode;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_repeatMode;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(_MRSystemPlaybackGenericTracklistQueueProtobuf *)self setFirstTrackIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(_MRSystemPlaybackGenericTracklistQueueProtobuf *)self setTrackIdentifiers:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(_MRSystemPlaybackGenericTracklistQueueProtobuf *)self setCollectionIdentifierSet:?];
    v4 = v6;
  }

  v5 = *(v4 + 40);
  if ((v5 & 2) != 0)
  {
    self->_shuffleMode = v4[7];
    *&self->_has |= 2u;
    v5 = *(v4 + 40);
  }

  if (v5)
  {
    self->_repeatMode = v4[6];
    *&self->_has |= 1u;
  }
}

@end