@interface _MRSystemPlaybackGenericTracklistQueueProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRepeatMode:(id)mode;
- (int)StringAsShuffleMode:(id)mode;
- (int)repeatMode;
- (int)shuffleMode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasShuffleMode:(BOOL)mode;
- (void)writeTo:(id)to;
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

- (void)setHasShuffleMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsShuffleMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Off"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Albums"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"Songs"])
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

- (int)StringAsRepeatMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"One"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"All"])
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
  dictionaryRepresentation = [(_MRSystemPlaybackGenericTracklistQueueProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  firstTrackIdentifier = self->_firstTrackIdentifier;
  if (firstTrackIdentifier)
  {
    [dictionary setObject:firstTrackIdentifier forKey:@"firstTrackIdentifier"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_firstTrackIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_trackIdentifiers)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_collectionIdentifierSet)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    shuffleMode = self->_shuffleMode;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    repeatMode = self->_repeatMode;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_firstTrackIdentifier)
  {
    [toCopy setFirstTrackIdentifier:?];
    toCopy = v6;
  }

  if (self->_trackIdentifiers)
  {
    [v6 setTrackIdentifiers:?];
    toCopy = v6;
  }

  if (self->_collectionIdentifierSet)
  {
    [v6 setCollectionIdentifierSet:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 7) = self->_shuffleMode;
    *(toCopy + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 6) = self->_repeatMode;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_firstTrackIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_trackIdentifiers copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSData *)self->_collectionIdentifierSet copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  firstTrackIdentifier = self->_firstTrackIdentifier;
  if (firstTrackIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)firstTrackIdentifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  trackIdentifiers = self->_trackIdentifiers;
  if (trackIdentifiers | *(equalCopy + 4))
  {
    if (![(NSString *)trackIdentifiers isEqual:?])
    {
      goto LABEL_17;
    }
  }

  collectionIdentifierSet = self->_collectionIdentifierSet;
  if (collectionIdentifierSet | *(equalCopy + 1))
  {
    if (![(NSData *)collectionIdentifierSet isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_shuffleMode != *(equalCopy + 7))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_repeatMode != *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(_MRSystemPlaybackGenericTracklistQueueProtobuf *)self setFirstTrackIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(_MRSystemPlaybackGenericTracklistQueueProtobuf *)self setTrackIdentifiers:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 1))
  {
    [(_MRSystemPlaybackGenericTracklistQueueProtobuf *)self setCollectionIdentifierSet:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 40);
  if ((v5 & 2) != 0)
  {
    self->_shuffleMode = fromCopy[7];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 40);
  }

  if (v5)
  {
    self->_repeatMode = fromCopy[6];
    *&self->_has |= 1u;
  }
}

@end