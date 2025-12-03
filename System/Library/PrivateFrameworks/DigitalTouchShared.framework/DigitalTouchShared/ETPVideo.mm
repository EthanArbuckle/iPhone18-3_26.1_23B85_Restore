@interface ETPVideo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)mediaTypeAsString:(int)string;
- (int)StringAsMediaType:(id)type;
- (int)mediaType;
- (unint64_t)hash;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ETPVideo

- (int)mediaType
{
  if (*&self->_has)
  {
    return self->_mediaType;
  }

  else
  {
    return 1;
  }
}

- (id)mediaTypeAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"Video";
  }

  else if (string == 2)
  {
    v4 = @"Photo";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (int)StringAsMediaType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"Video"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"Photo"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ETPVideo;
  v4 = [(ETPVideo *)&v8 description];
  dictionaryRepresentation = [(ETPVideo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  introMessageData = self->_introMessageData;
  if (introMessageData)
  {
    [dictionary setObject:introMessageData forKey:@"introMessageData"];
  }

  playingMessagesData = self->_playingMessagesData;
  if (playingMessagesData)
  {
    [v4 setObject:playingMessagesData forKey:@"playingMessagesData"];
  }

  if (*&self->_has)
  {
    mediaType = self->_mediaType;
    if (mediaType == 1)
    {
      v8 = @"Video";
    }

    else if (mediaType == 2)
    {
      v8 = @"Photo";
    }

    else
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_mediaType];
    }

    [v4 setObject:v8 forKey:@"mediaType"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_introMessageData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_playingMessagesData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_introMessageData copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSData *)self->_playingMessagesData copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_mediaType;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  introMessageData = self->_introMessageData;
  if (introMessageData | *(equalCopy + 1))
  {
    if (![(NSData *)introMessageData isEqual:?])
    {
      goto LABEL_10;
    }
  }

  playingMessagesData = self->_playingMessagesData;
  if (playingMessagesData | *(equalCopy + 3))
  {
    if (![(NSData *)playingMessagesData isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_mediaType == *(equalCopy + 4))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_introMessageData hash];
  v4 = [(NSData *)self->_playingMessagesData hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_mediaType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(ETPVideo *)self setIntroMessageData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(ETPVideo *)self setPlayingMessagesData:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_mediaType = fromCopy[4];
    *&self->_has |= 1u;
  }
}

@end