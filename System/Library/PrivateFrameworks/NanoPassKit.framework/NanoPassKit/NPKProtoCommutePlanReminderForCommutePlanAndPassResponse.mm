@interface NPKProtoCommutePlanReminderForCommutePlanAndPassResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPending:(BOOL)pending;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCommutePlanReminderForCommutePlanAndPassResponse

- (void)setHasPending:(BOOL)pending
{
  if (pending)
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
  v8.super_class = NPKProtoCommutePlanReminderForCommutePlanAndPassResponse;
  v4 = [(NPKProtoCommutePlanReminderForCommutePlanAndPassResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCommutePlanReminderForCommutePlanAndPassResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v5 forKey:@"pending"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_reminderInterval];
    [dictionary setObject:v6 forKey:@"reminderInterval"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [dictionary setObject:errorData forKey:@"errorData"];
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
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    reminderInterval = self->_reminderInterval;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[24] = self->_pending;
    toCopy[28] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_reminderInterval;
    toCopy[28] |= 1u;
  }

  if (self->_errorData)
  {
    v6 = toCopy;
    [toCopy setErrorData:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_pending;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_reminderInterval;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSData *)self->_errorData copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = *(equalCopy + 28);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if ((*(equalCopy + 28) & 2) == 0)
  {
    goto LABEL_16;
  }

  v6 = *(equalCopy + 24);
  if (self->_pending)
  {
    if ((*(equalCopy + 24) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_16;
  }

LABEL_4:
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_reminderInterval != *(equalCopy + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_16;
  }

  errorData = self->_errorData;
  if (errorData | *(equalCopy + 2))
  {
    v8 = [(NSData *)errorData isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_pending;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    return v12 ^ v8 ^ [(NSData *)self->_errorData hash:v3];
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  reminderInterval = self->_reminderInterval;
  if (reminderInterval < 0.0)
  {
    reminderInterval = -reminderInterval;
  }

  *v6.i64 = floor(reminderInterval + 0.5);
  v10 = (reminderInterval - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

  return v12 ^ v8 ^ [(NSData *)self->_errorData hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if ((v5 & 2) != 0)
  {
    self->_pending = *(fromCopy + 24);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 28);
  }

  if (v5)
  {
    self->_reminderInterval = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(NPKProtoCommutePlanReminderForCommutePlanAndPassResponse *)self setErrorData:?];
    fromCopy = v6;
  }
}

@end