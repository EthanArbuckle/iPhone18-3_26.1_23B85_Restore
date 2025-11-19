@interface _MRAudioFadeMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFadeType:(id)a3;
- (int)fadeType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsFadeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FadeOut"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"FadeIn"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAudioFadeMessageProtobuf;
  v4 = [(_MRAudioFadeMessageProtobuf *)&v8 description];
  v5 = [(_MRAudioFadeMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  playerPath = self->_playerPath;
  if (playerPath)
  {
    v5 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"playerPath"];
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

    [v3 setObject:v7 forKey:@"fadeType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    fadeType = self->_fadeType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_playerPath)
  {
    v5 = v4;
    [v4 setPlayerPath:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_fadeType;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_fadeType;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  playerPath = self->_playerPath;
  if (playerPath | *(v4 + 2))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_fadeType == *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  playerPath = self->_playerPath;
  v6 = *(v4 + 2);
  if (playerPath)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRAudioFadeMessageProtobuf *)self setPlayerPath:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 24))
  {
    self->_fadeType = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end