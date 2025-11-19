@interface AWDDEDBugSessionEnded
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSessionState:(id)a3;
- (int)sessionState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSessionState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDDEDBugSessionEnded

- (int)sessionState
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_sessionState;
  }

  else
  {
    return -1;
  }
}

- (void)setHasSessionState:(BOOL)a3
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

- (int)StringAsSessionState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DEDSessionStateError"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"DEDSessionStateUnknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DEDSessionStateFinished"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DEDSessionStateStale"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DEDSessionStateCancelled"])
  {
    v4 = 3;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDDEDBugSessionEnded;
  v4 = [(AWDDEDBugSessionEnded *)&v8 description];
  v5 = [(AWDDEDBugSessionEnded *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = self->_sessionState + 1;
    if (v6 >= 5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_sessionState];
    }

    else
    {
      v7 = off_278F665C8[v6];
    }

    [v3 setObject:v7 forKey:@"sessionState"];
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
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    sessionState = self->_sessionState;
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
    v4[1] = self->_timestamp;
    *(v4 + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 4) = self->_sessionState;
    *(v4 + 20) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 4) = self->_sessionState;
    *(result + 20) |= 2u;
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
    if ((*(v4 + 20) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_sessionState != *(v4 + 4))
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
    v2 = 2654435761u * self->_timestamp;
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
  v3 = 2654435761 * self->_sessionState;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 20);
  }

  if ((v5 & 2) != 0)
  {
    self->_sessionState = *(v4 + 4);
    *&self->_has |= 2u;
  }
}

@end