@interface _MRLyricsItemProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRLyricsItemProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRLyricsItemProtobuf;
  v4 = [(_MRLyricsItemProtobuf *)&v8 description];
  v5 = [(_MRLyricsItemProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  lyrics = self->_lyrics;
  if (lyrics)
  {
    [v3 setObject:lyrics forKey:@"lyrics"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_userProvided];
    [v4 setObject:v6 forKey:@"userProvided"];
  }

  token = self->_token;
  if (token)
  {
    v8 = [(_MRLyricsTokenProtobuf *)token dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"token"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_lyrics)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    userProvided = self->_userProvided;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_token)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_lyrics)
  {
    [v4 setLyrics:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_userProvided;
    v4[28] |= 1u;
  }

  if (self->_token)
  {
    [v5 setToken:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_lyrics copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_userProvided;
    *(v5 + 28) |= 1u;
  }

  v8 = [(_MRLyricsTokenProtobuf *)self->_token copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  lyrics = self->_lyrics;
  if (lyrics | *(v4 + 1))
  {
    if (![(NSString *)lyrics isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(v4 + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v4 + 24);
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

  if ((*(v4 + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  token = self->_token;
  if (token | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 1))
  {
    [(_MRLyricsItemProtobuf *)self setLyrics:?];
    v4 = v7;
  }

  if (v4[28])
  {
    self->_userProvided = v4[24];
    *&self->_has |= 1u;
  }

  token = self->_token;
  v6 = *(v4 + 2);
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

  v4 = v7;
LABEL_11:
}

@end