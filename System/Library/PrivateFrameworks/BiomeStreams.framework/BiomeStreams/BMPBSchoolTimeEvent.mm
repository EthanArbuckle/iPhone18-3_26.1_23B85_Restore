@interface BMPBSchoolTimeEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsReason:(id)a3;
- (int)reason;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStarting:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBSchoolTimeEvent

- (void)setHasStarting:(BOOL)a3
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

- (int)reason
{
  if (*&self->_has)
  {
    return self->_reason;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"UserInitiated"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Scheduled"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSchoolTimeEvent;
  v4 = [(BMPBSchoolTimeEvent *)&v8 description];
  v5 = [(BMPBSchoolTimeEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
    [v3 setObject:v5 forKey:@"starting"];

    has = self->_has;
  }

  if (has)
  {
    reason = self->_reason;
    if (reason >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_reason];
    }

    else
    {
      v7 = off_1E6E52FC0[reason];
    }

    [v3 setObject:v7 forKey:@"reason"];
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
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    reason = self->_reason;
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
    v4[12] = self->_starting;
    v4[16] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 2) = self->_reason;
    v4[16] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 12) = self->_starting;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_reason;
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
    if (self->_starting)
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
    if ((*(v4 + 16) & 1) != 0 && self->_reason == *(v4 + 2))
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
    v2 = 2654435761 * self->_starting;
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
  v3 = 2654435761 * self->_reason;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if ((v5 & 2) != 0)
  {
    self->_starting = *(v4 + 12);
    *&self->_has |= 2u;
    v5 = *(v4 + 16);
  }

  if (v5)
  {
    self->_reason = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end