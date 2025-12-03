@interface BMPBReadMessageEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBReadMessageEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBReadMessageEvent;
  v4 = [(BMPBReadMessageEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBReadMessageEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  idsHandle = self->_idsHandle;
  if (idsHandle)
  {
    [dictionary setObject:idsHandle forKey:@"idsHandle"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_markedUnread];
    [v4 setObject:v6 forKey:@"markedUnread"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_idsHandle)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    markedUnread = self->_markedUnread;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_idsHandle)
  {
    v5 = toCopy;
    [toCopy setIdsHandle:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[16] = self->_markedUnread;
    toCopy[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_idsHandle copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_markedUnread;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  idsHandle = self->_idsHandle;
  if (idsHandle | *(equalCopy + 1))
  {
    if (![(NSString *)idsHandle isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_markedUnread)
    {
      if ((*(equalCopy + 16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(equalCopy + 16))
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_idsHandle hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_markedUnread;
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
  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(BMPBReadMessageEvent *)self setIdsHandle:?];
    fromCopy = v5;
  }

  if (fromCopy[20])
  {
    self->_markedUnread = fromCopy[16];
    *&self->_has |= 1u;
  }
}

@end