@interface BMPBMindfulnessSessionEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSessionType:(id)type;
- (int)StringAsStateType:(id)type;
- (int)sessionType;
- (int)stateType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStateType:(BOOL)type;
- (void)writeTo:(id)to;
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

- (int)StringAsSessionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Breathe"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Reflect"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Meditation"])
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

- (void)setHasStateType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsStateType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Start"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Stop"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Pause"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Resume"])
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
  dictionaryRepresentation = [(BMPBMindfulnessSessionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v6 forKey:@"sessionType"];

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

    [dictionary setObject:v8 forKey:@"stateType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    sessionType = self->_sessionType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    stateType = self->_stateType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_sessionType;
    *(toCopy + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[3] = self->_stateType;
    *(toCopy + 16) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) == 0 || self->_sessionType != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 16))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0 || self->_stateType != *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if (v5)
  {
    self->_sessionType = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_stateType = *(fromCopy + 3);
    *&self->_has |= 2u;
  }
}

@end