@interface _MRSendButtonEventMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasButtonDown:(BOOL)down;
- (void)setHasUsagePage:(BOOL)page;
- (void)writeTo:(id)to;
@end

@implementation _MRSendButtonEventMessageProtobuf

- (void)setHasUsagePage:(BOOL)page
{
  if (page)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasButtonDown:(BOOL)down
{
  if (down)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendButtonEventMessageProtobuf;
  v4 = [(_MRSendButtonEventMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSendButtonEventMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_usagePage];
    [dictionary setObject:v7 forKey:@"usagePage"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_usage];
  [dictionary setObject:v8 forKey:@"usage"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_buttonDown];
    [dictionary setObject:v5 forKey:@"buttonDown"];
  }

LABEL_5:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 2) != 0)
  {
    usagePage = self->_usagePage;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  usage = self->_usage;
  PBDataWriterWriteUint32Field();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    buttonDown = self->_buttonDown;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[3] = self->_usagePage;
    *(toCopy + 20) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[2] = self->_usage;
  *(toCopy + 20) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(toCopy + 16) = self->_buttonDown;
    *(toCopy + 20) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_usagePage;
    *(result + 20) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_usage;
  *(result + 20) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 16) = self->_buttonDown;
  *(result + 20) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_usagePage != *(equalCopy + 3))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 20) & 2) != 0)
  {
    goto LABEL_14;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_usage != *(equalCopy + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 20))
  {
    goto LABEL_14;
  }

  v5 = (*(equalCopy + 20) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 20) & 4) == 0)
    {
LABEL_14:
      v5 = 0;
      goto LABEL_15;
    }

    if (self->_buttonDown)
    {
      if ((*(equalCopy + 16) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(equalCopy + 16))
    {
      goto LABEL_14;
    }

    v5 = 1;
  }

LABEL_15:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_usagePage;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_usage;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_buttonDown;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if ((v5 & 2) != 0)
  {
    self->_usagePage = *(fromCopy + 3);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 20);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 20) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_usage = *(fromCopy + 2);
  *&self->_has |= 1u;
  if ((*(fromCopy + 20) & 4) != 0)
  {
LABEL_4:
    self->_buttonDown = *(fromCopy + 16);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end