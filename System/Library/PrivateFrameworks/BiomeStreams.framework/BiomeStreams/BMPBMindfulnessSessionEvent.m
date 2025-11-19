@interface BMPBMindfulnessSessionEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSessionType:(id)a3;
- (int)StringAsStateType:(id)a3;
- (int)sessionType;
- (int)stateType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStateType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBMindfulnessSessionEvent

- (int)sessionType
{
  if (*&self->_has)
  {
    return self->_sessionType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsSessionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Breathe"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Reflect"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Meditation"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)stateType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_stateType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStateType:(BOOL)a3
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

- (int)StringAsStateType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Start"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Stop"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Pause"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Resume"])
  {
    v4 = 4;
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
  v8.super_class = BMPBMindfulnessSessionEvent;
  v4 = [(BMPBMindfulnessSessionEvent *)&v8 description];
  v5 = [(BMPBMindfulnessSessionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    sessionType = self->_sessionType;
    if (sessionType >= 3)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sessionType];
    }

    else
    {
      v6 = off_1E6E53B88[sessionType];
    }

    [v3 setObject:v6 forKey:@"sessionType"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    stateType = self->_stateType;
    if (stateType >= 5)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_stateType];
    }

    else
    {
      v8 = off_1E6E53BA0[stateType];
    }

    [v3 setObject:v8 forKey:@"stateType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    sessionType = self->_sessionType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    stateType = self->_stateType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_sessionType;
    *(v4 + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[3] = self->_stateType;
    *(v4 + 16) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_sessionType;
    *(result + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 3) = self->_stateType;
    *(result + 16) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_sessionType != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 16))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0 || self->_stateType != *(v4 + 3))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_sessionType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_stateType;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if (v5)
  {
    self->_sessionType = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_stateType = *(v4 + 3);
    *&self->_has |= 2u;
  }
}

@end