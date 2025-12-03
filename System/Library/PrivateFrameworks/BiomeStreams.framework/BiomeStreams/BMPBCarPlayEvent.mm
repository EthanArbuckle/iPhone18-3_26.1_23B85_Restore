@interface BMPBCarPlayEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsReason:(id)reason;
- (int)reason;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsStart:(BOOL)start;
- (void)writeTo:(id)to;
@end

@implementation BMPBCarPlayEvent

- (void)setHasIsStart:(BOOL)start
{
  if (start)
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

- (int)StringAsReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"USB"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"WiFi"])
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
  v8.super_class = BMPBCarPlayEvent;
  v4 = [(BMPBCarPlayEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBCarPlayEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStart];
    [dictionary setObject:v5 forKey:@"isStart"];

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
      v7 = off_1E6E53128[reason];
    }

    [dictionary setObject:v7 forKey:@"reason"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    isStart = self->_isStart;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    reason = self->_reason;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[12] = self->_isStart;
    toCopy[16] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 2) = self->_reason;
    toCopy[16] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 12) = self->_isStart;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(equalCopy + 12);
    if (self->_isStart)
    {
      if ((*(equalCopy + 12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (*(equalCopy + 12))
    {
      goto LABEL_9;
    }
  }

  else if ((*(equalCopy + 16) & 2) != 0)
  {
    goto LABEL_9;
  }

  v5 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) != 0 && self->_reason == *(equalCopy + 2))
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
  v3 = 2654435761 * self->_reason;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if ((v5 & 2) != 0)
  {
    self->_isStart = *(fromCopy + 12);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 16);
  }

  if (v5)
  {
    self->_reason = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end