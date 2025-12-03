@interface _MRLyricsItemProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRLyricsItemProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRLyricsItemProtobuf;
  v4 = [(_MRLyricsItemProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRLyricsItemProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  lyrics = self->_lyrics;
  if (lyrics)
  {
    [dictionary setObject:lyrics forKey:@"lyrics"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_userProvided];
    [v4 setObject:v6 forKey:@"userProvided"];
  }

  token = self->_token;
  if (token)
  {
    dictionaryRepresentation = [(_MRLyricsTokenProtobuf *)token dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"token"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_lyrics)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    userProvided = self->_userProvided;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_token)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_lyrics)
  {
    [toCopy setLyrics:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_userProvided;
    toCopy[28] |= 1u;
  }

  if (self->_token)
  {
    [v5 setToken:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_lyrics copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_userProvided;
    *(v5 + 28) |= 1u;
  }

  v8 = [(_MRLyricsTokenProtobuf *)self->_token copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  lyrics = self->_lyrics;
  if (lyrics | *(equalCopy + 1))
  {
    if (![(NSString *)lyrics isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(equalCopy + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(equalCopy + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(equalCopy + 24);
  if (!self->_userProvided)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if ((*(equalCopy + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  token = self->_token;
  if (token | *(equalCopy + 2))
  {
    v8 = [(_MRLyricsTokenProtobuf *)token isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_lyrics hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_userProvided;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(_MRLyricsTokenProtobuf *)self->_token hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(_MRLyricsItemProtobuf *)self setLyrics:?];
    fromCopy = v7;
  }

  if (fromCopy[28])
  {
    self->_userProvided = fromCopy[24];
    *&self->_has |= 1u;
  }

  token = self->_token;
  v6 = *(fromCopy + 2);
  if (token)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(_MRLyricsTokenProtobuf *)token mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(_MRLyricsItemProtobuf *)self setToken:?];
  }

  fromCopy = v7;
LABEL_11:
}

@end