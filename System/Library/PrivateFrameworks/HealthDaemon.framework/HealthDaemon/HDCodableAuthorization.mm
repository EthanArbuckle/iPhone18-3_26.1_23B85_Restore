@interface HDCodableAuthorization
- (BOOL)isEqual:(id)equal;
- (id)_modificationDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_setAuthorizationModeWithNumber:(id)number;
- (void)_setAuthorizationRequestWithNumber:(id)number;
- (void)_setAuthorizationStatusWithNumber:(id)number;
- (void)_setDataTypeCodeWithObjectType:(id)type;
- (void)_setModificationDate:(id)date;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAuthorizationRequest:(BOOL)request;
- (void)setHasAuthorizationStatus:(BOOL)status;
- (void)setHasModificationDate:(BOOL)date;
- (void)setHasModificationEpoch:(BOOL)epoch;
- (void)setHasObjectType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation HDCodableAuthorization

- (void)setHasObjectType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasAuthorizationStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAuthorizationRequest:(BOOL)request
{
  if (request)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasModificationDate:(BOOL)date
{
  if (date)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasModificationEpoch:(BOOL)epoch
{
  if (epoch)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableAuthorization;
  v4 = [(HDCodableAuthorization *)&v8 description];
  dictionaryRepresentation = [(HDCodableAuthorization *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_objectType];
    [dictionary setObject:v9 forKey:@"objectType"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_authorizationStatus];
  [dictionary setObject:v10 forKey:@"authorizationStatus"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_authorizationRequest];
  [dictionary setObject:v11 forKey:@"authorizationRequest"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_modificationDate];
  [dictionary setObject:v12 forKey:@"modificationDate"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_modificationEpoch];
  [dictionary setObject:v13 forKey:@"modificationEpoch"];

  if (*&self->_has)
  {
LABEL_7:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_authorizationMode];
    [dictionary setObject:v5 forKey:@"authorizationMode"];
  }

LABEL_8:
  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"syncIdentity"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v12 = toCopy;
  if ((has & 0x20) != 0)
  {
    objectType = self->_objectType;
    PBDataWriterWriteInt64Field();
    toCopy = v12;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  authorizationStatus = self->_authorizationStatus;
  PBDataWriterWriteInt64Field();
  toCopy = v12;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  authorizationRequest = self->_authorizationRequest;
  PBDataWriterWriteInt64Field();
  toCopy = v12;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  modificationDate = self->_modificationDate;
  PBDataWriterWriteDoubleField();
  toCopy = v12;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  modificationEpoch = self->_modificationEpoch;
  PBDataWriterWriteInt64Field();
  toCopy = v12;
  if (*&self->_has)
  {
LABEL_7:
    authorizationMode = self->_authorizationMode;
    PBDataWriterWriteInt64Field();
    toCopy = v12;
  }

LABEL_8:
  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    toCopy[6] = self->_objectType;
    *(toCopy + 64) |= 0x20u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[3] = self->_authorizationStatus;
  *(toCopy + 64) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  toCopy[2] = self->_authorizationRequest;
  *(toCopy + 64) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  toCopy[4] = *&self->_modificationDate;
  *(toCopy + 64) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  toCopy[5] = self->_modificationEpoch;
  *(toCopy + 64) |= 0x10u;
  if (*&self->_has)
  {
LABEL_7:
    toCopy[1] = self->_authorizationMode;
    *(toCopy + 64) |= 1u;
  }

LABEL_8:
  if (self->_syncIdentity)
  {
    v6 = toCopy;
    [toCopy setSyncIdentity:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 48) = self->_objectType;
    *(v5 + 64) |= 0x20u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_authorizationStatus;
  *(v5 + 64) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v5 + 16) = self->_authorizationRequest;
  *(v5 + 64) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    *(v5 + 40) = self->_modificationEpoch;
    *(v5 + 64) |= 0x10u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_12:
  *(v5 + 32) = self->_modificationDate;
  *(v5 + 64) |= 8u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (has)
  {
LABEL_7:
    *(v5 + 8) = self->_authorizationMode;
    *(v5 + 64) |= 1u;
  }

LABEL_8:
  v8 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v9 = v6[7];
  v6[7] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  v5 = *(equalCopy + 64);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 64) & 0x20) == 0 || self->_objectType != *(equalCopy + 6))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 64) & 0x20) != 0)
  {
LABEL_34:
    v7 = 0;
    goto LABEL_35;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_authorizationStatus != *(equalCopy + 3))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_authorizationRequest != *(equalCopy + 2))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0 || self->_modificationDate != *(equalCopy + 4))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 64) & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 64) & 0x10) == 0 || self->_modificationEpoch != *(equalCopy + 5))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 64) & 0x10) != 0)
  {
    goto LABEL_34;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_authorizationMode != *(equalCopy + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_34;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(equalCopy + 7))
  {
    v7 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_35:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    v8 = 2654435761 * self->_objectType;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v9 = 2654435761 * self->_authorizationStatus;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v10 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v14 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = 2654435761 * self->_authorizationRequest;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  modificationDate = self->_modificationDate;
  if (modificationDate < 0.0)
  {
    modificationDate = -modificationDate;
  }

  *v6.i64 = floor(modificationDate + 0.5);
  v12 = (modificationDate - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v7, v6).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_13:
  if ((*&self->_has & 0x10) != 0)
  {
    v15 = 2654435761 * self->_modificationEpoch;
    if (*&self->_has)
    {
      goto LABEL_15;
    }

LABEL_17:
    v16 = 0;
    return v9 ^ v8 ^ v10 ^ v14 ^ v15 ^ v16 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash:v3];
  }

  v15 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  v16 = 2654435761 * self->_authorizationMode;
  return v9 ^ v8 ^ v10 ^ v14 ^ v15 ^ v16 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 64);
  if ((v6 & 0x20) != 0)
  {
    self->_objectType = *(fromCopy + 6);
    *&self->_has |= 0x20u;
    v6 = *(fromCopy + 64);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(fromCopy + 64) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_authorizationStatus = *(fromCopy + 3);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 64);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_authorizationRequest = *(fromCopy + 2);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 64);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_modificationDate = *(fromCopy + 4);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 64);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_modificationEpoch = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  if (*(fromCopy + 64))
  {
LABEL_7:
    self->_authorizationMode = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_8:
  syncIdentity = self->_syncIdentity;
  v8 = v5[7];
  if (syncIdentity)
  {
    if (v8)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HDCodableAuthorization *)self setSyncIdentity:?];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_setDataTypeCodeWithObjectType:(id)type
{
  code = [type code];

  [(HDCodableAuthorization *)self setObjectType:code];
}

- (void)_setAuthorizationStatusWithNumber:(id)number
{
  integerValue = [number integerValue];

  [(HDCodableAuthorization *)self setAuthorizationStatus:integerValue];
}

- (void)_setAuthorizationRequestWithNumber:(id)number
{
  integerValue = [number integerValue];

  [(HDCodableAuthorization *)self setAuthorizationRequest:integerValue];
}

- (void)_setAuthorizationModeWithNumber:(id)number
{
  integerValue = [number integerValue];

  [(HDCodableAuthorization *)self setAuthorizationMode:integerValue];
}

- (id)_modificationDate
{
  if ((*&self->_has & 8) != 0)
  {
    modificationDate = self->_modificationDate;
    v3 = HDDecodeDateForValue();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setModificationDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];

    [(HDCodableAuthorization *)self setModificationDate:?];
  }

  else
  {

    [(HDCodableAuthorization *)self setHasModificationDate:?];
  }
}

@end