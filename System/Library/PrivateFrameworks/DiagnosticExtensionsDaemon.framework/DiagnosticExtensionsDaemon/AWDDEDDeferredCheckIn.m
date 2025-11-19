@interface AWDDEDDeferredCheckIn
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDDEDDeferredCheckIn

- (void)setHasTimestamp:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDDEDDeferredCheckIn;
  v4 = [(AWDDEDDeferredCheckIn *)&v8 description];
  v5 = [(AWDDEDDeferredCheckIn *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numtasks];
    [v3 setObject:v6 forKey:@"numtasks"];
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
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    numtasks = self->_numtasks;
    PBDataWriterWriteUint64Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_timestamp;
    *(v4 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[1] = self->_numtasks;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 1) = self->_numtasks;
    *(result + 24) |= 1u;
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

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_numtasks != *(v4 + 1))
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
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
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
  v3 = 2654435761u * self->_numtasks;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 24);
  }

  if (v5)
  {
    self->_numtasks = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end