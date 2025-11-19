@interface BMPBScreenSharingEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsStart:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBScreenSharingEvent

- (void)setHasIsStart:(BOOL)a3
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

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unspecified"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"AirPlayMirroring"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBScreenSharingEvent;
  v4 = [(BMPBScreenSharingEvent *)&v8 description];
  v5 = [(BMPBScreenSharingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStart];
    [v3 setObject:v5 forKey:@"isStart"];

    has = self->_has;
  }

  if (has)
  {
    type = self->_type;
    if (type)
    {
      if (type == 1)
      {
        v7 = @"AirPlayMirroring";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
      }
    }

    else
    {
      v7 = @"Unspecified";
    }

    [v3 setObject:v7 forKey:@"type"];
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
    isStart = self->_isStart;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    type = self->_type;
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
    v4[12] = self->_isStart;
    v4[16] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 2) = self->_type;
    v4[16] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 12) = self->_isStart;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_type;
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
    if (self->_isStart)
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
    if ((*(v4 + 16) & 1) != 0 && self->_type == *(v4 + 2))
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
    v2 = 2654435761 * self->_isStart;
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
  v3 = 2654435761 * self->_type;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if ((v5 & 2) != 0)
  {
    self->_isStart = *(v4 + 12);
    *&self->_has |= 2u;
    v5 = *(v4 + 16);
  }

  if (v5)
  {
    self->_type = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end