@interface _MRAudioFadeResponseMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRAudioFadeResponseMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAudioFadeResponseMessageProtobuf;
  v4 = [(_MRAudioFadeResponseMessageProtobuf *)&v8 description];
  v5 = [(_MRAudioFadeResponseMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_fadeDuration];
    [v3 setObject:v4 forKey:@"fadeDuration"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    fadeDuration = self->_fadeDuration;
    PBDataWriterWriteInt64Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_fadeDuration;
    *(a3 + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 1) = self->_fadeDuration;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) != 0 && self->_fadeDuration == *(v4 + 1))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_fadeDuration;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 16))
  {
    self->_fadeDuration = *(a3 + 1);
    *&self->_has |= 1u;
  }
}

@end