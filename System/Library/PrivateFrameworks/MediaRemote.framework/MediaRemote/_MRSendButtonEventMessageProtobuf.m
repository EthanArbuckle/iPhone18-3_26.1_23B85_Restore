@interface _MRSendButtonEventMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasButtonDown:(BOOL)a3;
- (void)setHasUsagePage:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSendButtonEventMessageProtobuf

- (void)setHasUsagePage:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasButtonDown:(BOOL)a3
{
  if (a3)
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
  v5 = [(_MRSendButtonEventMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_usagePage];
    [v3 setObject:v7 forKey:@"usagePage"];

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
  [v3 setObject:v8 forKey:@"usage"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_buttonDown];
    [v3 setObject:v5 forKey:@"buttonDown"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 2) != 0)
  {
    usagePage = self->_usagePage;
    PBDataWriterWriteUint32Field();
    v4 = v9;
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
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    buttonDown = self->_buttonDown;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_usagePage;
    *(v4 + 20) |= 2u;
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

  v4[2] = self->_usage;
  *(v4 + 20) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v4 + 16) = self->_buttonDown;
    *(v4 + 20) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_usagePage != *(v4 + 3))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
    goto LABEL_14;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_usage != *(v4 + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_14;
  }

  v5 = (*(v4 + 20) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 20) & 4) == 0)
    {
LABEL_14:
      v5 = 0;
      goto LABEL_15;
    }

    if (self->_buttonDown)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(v4 + 16))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 2) != 0)
  {
    self->_usagePage = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 20);
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

  else if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_usage = *(v4 + 2);
  *&self->_has |= 1u;
  if ((*(v4 + 20) & 4) != 0)
  {
LABEL_4:
    self->_buttonDown = *(v4 + 16);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end