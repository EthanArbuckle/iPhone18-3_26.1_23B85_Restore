@interface _MRAudioFadeMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFadeType:(id)type;
- (int)fadeType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRAudioFadeMessageProtobuf

- (int)fadeType
{
  if (*&self->_has)
  {
    return self->_fadeType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsFadeType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"FadeOut"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"FadeIn"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAudioFadeMessageProtobuf;
  v4 = [(_MRAudioFadeMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRAudioFadeMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  playerPath = self->_playerPath;
  if (playerPath)
  {
    dictionaryRepresentation = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"playerPath"];
  }

  if (*&self->_has)
  {
    fadeType = self->_fadeType;
    if (fadeType)
    {
      if (fadeType == 1)
      {
        v7 = @"FadeIn";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_fadeType];
      }
    }

    else
    {
      v7 = @"FadeOut";
    }

    [dictionary setObject:v7 forKey:@"fadeType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    fadeType = self->_fadeType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_playerPath)
  {
    v5 = toCopy;
    [toCopy setPlayerPath:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_fadeType;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_fadeType;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  playerPath = self->_playerPath;
  if (playerPath | *(equalCopy + 2))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_fadeType == *(equalCopy + 2))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_fadeType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  playerPath = self->_playerPath;
  v6 = *(fromCopy + 2);
  if (playerPath)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRAudioFadeMessageProtobuf *)self setPlayerPath:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 24))
  {
    self->_fadeType = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end