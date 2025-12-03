@interface BMPBUserFocusActivityEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBUserFocusActivityEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBUserFocusActivityEvent;
  v4 = [(BMPBUserFocusActivityEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBUserFocusActivityEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStart];
    [dictionary setObject:v4 forKey:@"isStart"];
  }

  mode = self->_mode;
  if (mode)
  {
    [dictionary setObject:mode forKey:@"mode"];
  }

  clientID = self->_clientID;
  if (clientID)
  {
    [dictionary setObject:clientID forKey:@"clientID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    isStart = self->_isStart;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_mode)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_clientID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[24] = self->_isStart;
    toCopy[28] |= 1u;
  }

  v5 = toCopy;
  if (self->_mode)
  {
    [toCopy setMode:?];
    toCopy = v5;
  }

  if (self->_clientID)
  {
    [v5 setClientID:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_isStart;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_mode copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_clientID copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(equalCopy + 24);
    if (self->_isStart)
    {
      if (*(equalCopy + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  mode = self->_mode;
  if (mode | *(equalCopy + 2) && ![(NSString *)mode isEqual:?])
  {
    goto LABEL_9;
  }

  clientID = self->_clientID;
  if (clientID | *(equalCopy + 1))
  {
    v8 = [(NSString *)clientID isEqual:?];
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
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isStart;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_mode hash]^ v3;
  return v4 ^ [(NSString *)self->_clientID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[28])
  {
    self->_isStart = fromCopy[24];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(BMPBUserFocusActivityEvent *)self setMode:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(BMPBUserFocusActivityEvent *)self setClientID:?];
    fromCopy = v5;
  }
}

@end