@interface HDCodableNotificationInstructionMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCreationDateTimeInterval:(BOOL)interval;
- (void)setHasCurrentCompatibilityVersion:(BOOL)version;
- (void)setHasExpirationDateTimeInterval:(BOOL)interval;
- (void)setHasMinimumCompatibleVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HDCodableNotificationInstructionMessage

- (void)setHasCurrentCompatibilityVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMinimumCompatibleVersion:(BOOL)version
{
  if (version)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasCreationDateTimeInterval:(BOOL)interval
{
  if (interval)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasExpirationDateTimeInterval:(BOOL)interval
{
  if (interval)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableNotificationInstructionMessage;
  v4 = [(HDCodableNotificationInstructionMessage *)&v8 description];
  dictionaryRepresentation = [(HDCodableNotificationInstructionMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_currentCompatibilityVersion];
    [dictionary setObject:v14 forKey:@"currentCompatibilityVersion"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_minimumCompatibleVersion];
  [dictionary setObject:v15 forKey:@"minimumCompatibleVersion"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDateTimeInterval];
    [dictionary setObject:v5 forKey:@"creationDateTimeInterval"];
  }

LABEL_5:
  sendingDeviceInfo = self->_sendingDeviceInfo;
  if (sendingDeviceInfo)
  {
    [dictionary setObject:sendingDeviceInfo forKey:@"sendingDeviceInfo"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_action];
    [dictionary setObject:v7 forKey:@"action"];
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [dictionary setObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  categoryIdentifier = self->_categoryIdentifier;
  if (categoryIdentifier)
  {
    [dictionary setObject:categoryIdentifier forKey:@"categoryIdentifier"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_expirationDateTimeInterval];
    [dictionary setObject:v10 forKey:@"expirationDateTimeInterval"];
  }

  criteria = self->_criteria;
  if (criteria)
  {
    dictionaryRepresentation = [(HDCodableNotificationInstructionCriteria *)criteria dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"criteria"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v11 = toCopy;
  if ((has & 4) != 0)
  {
    currentCompatibilityVersion = self->_currentCompatibilityVersion;
    PBDataWriterWriteInt64Field();
    toCopy = v11;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  minimumCompatibleVersion = self->_minimumCompatibleVersion;
  PBDataWriterWriteInt64Field();
  toCopy = v11;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    creationDateTimeInterval = self->_creationDateTimeInterval;
    PBDataWriterWriteDoubleField();
    toCopy = v11;
  }

LABEL_5:
  if (self->_sendingDeviceInfo)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (*&self->_has)
  {
    action = self->_action;
    PBDataWriterWriteInt64Field();
    toCopy = v11;
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_categoryIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if ((*&self->_has & 8) != 0)
  {
    expirationDateTimeInterval = self->_expirationDateTimeInterval;
    PBDataWriterWriteDoubleField();
    toCopy = v11;
  }

  if (self->_criteria)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v11;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[3] = self->_currentCompatibilityVersion;
    *(toCopy + 80) |= 4u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  toCopy[5] = self->_minimumCompatibleVersion;
  *(toCopy + 80) |= 0x10u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    toCopy[2] = *&self->_creationDateTimeInterval;
    *(toCopy + 80) |= 2u;
  }

LABEL_5:
  v6 = toCopy;
  if (self->_sendingDeviceInfo)
  {
    [toCopy setSendingDeviceInfo:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    toCopy[1] = self->_action;
    *(toCopy + 80) |= 1u;
  }

  if (self->_clientIdentifier)
  {
    [v6 setClientIdentifier:?];
    toCopy = v6;
  }

  if (self->_categoryIdentifier)
  {
    [v6 setCategoryIdentifier:?];
    toCopy = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    toCopy[4] = *&self->_expirationDateTimeInterval;
    *(toCopy + 80) |= 8u;
  }

  if (self->_criteria)
  {
    [v6 setCriteria:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_currentCompatibilityVersion;
    *(v5 + 80) |= 4u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_minimumCompatibleVersion;
  *(v5 + 80) |= 0x10u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_creationDateTimeInterval;
    *(v5 + 80) |= 2u;
  }

LABEL_5:
  v8 = [(NSString *)self->_sendingDeviceInfo copyWithZone:zone];
  v9 = *(v6 + 72);
  *(v6 + 72) = v8;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_action;
    *(v6 + 80) |= 1u;
  }

  v10 = [(NSString *)self->_clientIdentifier copyWithZone:zone];
  v11 = *(v6 + 56);
  *(v6 + 56) = v10;

  v12 = [(NSString *)self->_categoryIdentifier copyWithZone:zone];
  v13 = *(v6 + 48);
  *(v6 + 48) = v12;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 32) = self->_expirationDateTimeInterval;
    *(v6 + 80) |= 8u;
  }

  v14 = [(HDCodableNotificationInstructionCriteria *)self->_criteria copyWithZone:zone];
  v15 = *(v6 + 64);
  *(v6 + 64) = v14;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  has = self->_has;
  v6 = *(equalCopy + 80);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 80) & 4) == 0 || self->_currentCompatibilityVersion != *(equalCopy + 3))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 80) & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 80) & 0x10) == 0 || self->_minimumCompatibleVersion != *(equalCopy + 5))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 80) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 80) & 2) == 0 || self->_creationDateTimeInterval != *(equalCopy + 2))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 80) & 2) != 0)
  {
    goto LABEL_36;
  }

  sendingDeviceInfo = self->_sendingDeviceInfo;
  if (sendingDeviceInfo | *(equalCopy + 9))
  {
    if (![(NSString *)sendingDeviceInfo isEqual:?])
    {
LABEL_36:
      v12 = 0;
      goto LABEL_37;
    }

    has = self->_has;
    v6 = *(equalCopy + 80);
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_action != *(equalCopy + 1))
    {
      goto LABEL_36;
    }
  }

  else if (v6)
  {
    goto LABEL_36;
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier | *(equalCopy + 7) && ![(NSString *)clientIdentifier isEqual:?])
  {
    goto LABEL_36;
  }

  categoryIdentifier = self->_categoryIdentifier;
  if (categoryIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)categoryIdentifier isEqual:?])
    {
      goto LABEL_36;
    }
  }

  v10 = *(equalCopy + 80);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 80) & 8) == 0 || self->_expirationDateTimeInterval != *(equalCopy + 4))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 80) & 8) != 0)
  {
    goto LABEL_36;
  }

  criteria = self->_criteria;
  if (criteria | *(equalCopy + 8))
  {
    v12 = [(HDCodableNotificationInstructionCriteria *)criteria isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_37:

  return v12;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v5 = 2654435761 * self->_currentCompatibilityVersion;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = 2654435761 * self->_minimumCompatibleVersion;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  creationDateTimeInterval = self->_creationDateTimeInterval;
  if (creationDateTimeInterval < 0.0)
  {
    creationDateTimeInterval = -creationDateTimeInterval;
  }

  *v2.i64 = floor(creationDateTimeInterval + 0.5);
  v8 = (creationDateTimeInterval - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_11:
  v11 = [(NSString *)self->_sendingDeviceInfo hash];
  if (*&self->_has)
  {
    v12 = 2654435761 * self->_action;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSString *)self->_clientIdentifier hash];
  v14 = [(NSString *)self->_categoryIdentifier hash];
  if ((*&self->_has & 8) != 0)
  {
    expirationDateTimeInterval = self->_expirationDateTimeInterval;
    if (expirationDateTimeInterval < 0.0)
    {
      expirationDateTimeInterval = -expirationDateTimeInterval;
    }

    *v15.i64 = floor(expirationDateTimeInterval + 0.5);
    v19 = (expirationDateTimeInterval - *v15.i64) * 1.84467441e19;
    *v16.i64 = *v15.i64 - trunc(*v15.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v17 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v16, v15).i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 ^ v5 ^ v10 ^ v12 ^ v11 ^ v13 ^ v14 ^ v17 ^ [(HDCodableNotificationInstructionCriteria *)self->_criteria hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 80);
  if ((v6 & 4) != 0)
  {
    self->_currentCompatibilityVersion = *(fromCopy + 3);
    *&self->_has |= 4u;
    v6 = *(fromCopy + 80);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 80) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_minimumCompatibleVersion = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 80) & 2) != 0)
  {
LABEL_4:
    self->_creationDateTimeInterval = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_5:
  v9 = fromCopy;
  if (*(fromCopy + 9))
  {
    [(HDCodableNotificationInstructionMessage *)self setSendingDeviceInfo:?];
    v5 = v9;
  }

  if (*(v5 + 80))
  {
    self->_action = *(v5 + 1);
    *&self->_has |= 1u;
  }

  if (*(v5 + 7))
  {
    [(HDCodableNotificationInstructionMessage *)self setClientIdentifier:?];
    v5 = v9;
  }

  if (*(v5 + 6))
  {
    [(HDCodableNotificationInstructionMessage *)self setCategoryIdentifier:?];
    v5 = v9;
  }

  if ((*(v5 + 80) & 8) != 0)
  {
    self->_expirationDateTimeInterval = *(v5 + 4);
    *&self->_has |= 8u;
  }

  criteria = self->_criteria;
  v8 = *(v5 + 8);
  if (criteria)
  {
    if (!v8)
    {
      goto LABEL_24;
    }

    criteria = [(HDCodableNotificationInstructionCriteria *)criteria mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_24;
    }

    criteria = [(HDCodableNotificationInstructionMessage *)self setCriteria:?];
  }

  v5 = v9;
LABEL_24:

  MEMORY[0x2821F96F8](criteria, v5);
}

@end