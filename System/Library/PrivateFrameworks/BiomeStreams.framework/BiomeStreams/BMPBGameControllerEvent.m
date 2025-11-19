@interface BMPBGameControllerEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsControllerConnected:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBGameControllerEvent

- (void)setHasIsControllerConnected:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBGameControllerEvent;
  v4 = [(BMPBGameControllerEvent *)&v8 description];
  v5 = [(BMPBGameControllerEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isControllerConnected];
    [v3 setObject:v5 forKey:@"isControllerConnected"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_numberOfControllersConnected];
    [v3 setObject:v6 forKey:@"numberOfControllersConnected"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    isControllerConnected = self->_isControllerConnected;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    numberOfControllersConnected = self->_numberOfControllersConnected;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[12] = self->_isControllerConnected;
    v4[16] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 2) = self->_numberOfControllersConnected;
    v4[16] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 12) = self->_isControllerConnected;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_numberOfControllersConnected;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v4 + 12);
    if (self->_isControllerConnected)
    {
      if ((*(v4 + 12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (*(v4 + 12))
    {
      goto LABEL_9;
    }
  }

  else if ((*(v4 + 16) & 2) != 0)
  {
    goto LABEL_9;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) != 0 && self->_numberOfControllersConnected == *(v4 + 2))
    {
      v5 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v5 = 0;
  }

LABEL_10:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_isControllerConnected;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_numberOfControllersConnected;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if ((v5 & 2) != 0)
  {
    self->_isControllerConnected = *(v4 + 12);
    *&self->_has |= 2u;
    v5 = *(v4 + 16);
  }

  if (v5)
  {
    self->_numberOfControllersConnected = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end