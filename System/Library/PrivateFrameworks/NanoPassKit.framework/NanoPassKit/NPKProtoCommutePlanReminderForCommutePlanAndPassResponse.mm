@interface NPKProtoCommutePlanReminderForCommutePlanAndPassResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPending:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCommutePlanReminderForCommutePlanAndPassResponse

- (void)setHasPending:(BOOL)a3
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
  v8.super_class = NPKProtoCommutePlanReminderForCommutePlanAndPassResponse;
  v4 = [(NPKProtoCommutePlanReminderForCommutePlanAndPassResponse *)&v8 description];
  v5 = [(NPKProtoCommutePlanReminderForCommutePlanAndPassResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v5 forKey:@"pending"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_reminderInterval];
    [v3 setObject:v6 forKey:@"reminderInterval"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v3 setObject:errorData forKey:@"errorData"];
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
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    reminderInterval = self->_reminderInterval;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[24] = self->_pending;
    v4[28] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_reminderInterval;
    v4[28] |= 1u;
  }

  if (self->_errorData)
  {
    v6 = v4;
    [v4 setErrorData:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSData *)self->_errorData copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = *(v4 + 28);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if ((*(v4 + 28) & 2) == 0)
  {
    goto LABEL_16;
  }

  v6 = *(v4 + 24);
  if (self->_pending)
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_16;
  }

LABEL_4:
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_reminderInterval != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_16;
  }

  errorData = self->_errorData;
  if (errorData | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_pending = *(v4 + 24);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
  }

  if (v5)
  {
    self->_reminderInterval = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v6 = v4;
    [(NPKProtoCommutePlanReminderForCommutePlanAndPassResponse *)self setErrorData:?];
    v4 = v6;
  }
}

@end