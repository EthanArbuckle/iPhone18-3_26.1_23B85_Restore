@interface HDCodableAuthorization
- (BOOL)isEqual:(id)a3;
- (id)_modificationDate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_setAuthorizationModeWithNumber:(id)a3;
- (void)_setAuthorizationRequestWithNumber:(id)a3;
- (void)_setAuthorizationStatusWithNumber:(id)a3;
- (void)_setDataTypeCodeWithObjectType:(id)a3;
- (void)_setModificationDate:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAuthorizationRequest:(BOOL)a3;
- (void)setHasAuthorizationStatus:(BOOL)a3;
- (void)setHasModificationDate:(BOOL)a3;
- (void)setHasModificationEpoch:(BOOL)a3;
- (void)setHasObjectType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableAuthorization

- (void)setHasObjectType:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasAuthorizationStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAuthorizationRequest:(BOOL)a3
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

- (void)setHasModificationDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasModificationEpoch:(BOOL)a3
{
  if (a3)
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
  v5 = [(HDCodableAuthorization *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_objectType];
    [v3 setObject:v9 forKey:@"objectType"];

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
  [v3 setObject:v10 forKey:@"authorizationStatus"];

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
  [v3 setObject:v11 forKey:@"authorizationRequest"];

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
  [v3 setObject:v12 forKey:@"modificationDate"];

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
  [v3 setObject:v13 forKey:@"modificationEpoch"];

  if (*&self->_has)
  {
LABEL_7:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_authorizationMode];
    [v3 setObject:v5 forKey:@"authorizationMode"];
  }

LABEL_8:
  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v7 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"syncIdentity"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v12 = v4;
  if ((has & 0x20) != 0)
  {
    objectType = self->_objectType;
    PBDataWriterWriteInt64Field();
    v4 = v12;
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
  v4 = v12;
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
  v4 = v12;
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
  v4 = v12;
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
  v4 = v12;
  if (*&self->_has)
  {
LABEL_7:
    authorizationMode = self->_authorizationMode;
    PBDataWriterWriteInt64Field();
    v4 = v12;
  }

LABEL_8:
  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v4[6] = self->_objectType;
    *(v4 + 64) |= 0x20u;
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

  v4[3] = self->_authorizationStatus;
  *(v4 + 64) |= 4u;
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
  v4[2] = self->_authorizationRequest;
  *(v4 + 64) |= 2u;
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
  v4[4] = *&self->_modificationDate;
  *(v4 + 64) |= 8u;
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
  v4[5] = self->_modificationEpoch;
  *(v4 + 64) |= 0x10u;
  if (*&self->_has)
  {
LABEL_7:
    v4[1] = self->_authorizationMode;
    *(v4 + 64) |= 1u;
  }

LABEL_8:
  if (self->_syncIdentity)
  {
    v6 = v4;
    [v4 setSyncIdentity:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v9 = v6[7];
  v6[7] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  v5 = *(v4 + 64);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 64) & 0x20) == 0 || self->_objectType != *(v4 + 6))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 64) & 0x20) != 0)
  {
LABEL_34:
    v7 = 0;
    goto LABEL_35;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_authorizationStatus != *(v4 + 3))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 64) & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_authorizationRequest != *(v4 + 2))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 64) & 8) == 0 || self->_modificationDate != *(v4 + 4))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 64) & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 64) & 0x10) == 0 || self->_modificationEpoch != *(v4 + 5))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 64) & 0x10) != 0)
  {
    goto LABEL_34;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_authorizationMode != *(v4 + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_34;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 7))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 64);
  if ((v6 & 0x20) != 0)
  {
    self->_objectType = *(v4 + 6);
    *&self->_has |= 0x20u;
    v6 = *(v4 + 64);
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

  else if ((*(v4 + 64) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_authorizationStatus = *(v4 + 3);
  *&self->_has |= 4u;
  v6 = *(v4 + 64);
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
  self->_authorizationRequest = *(v4 + 2);
  *&self->_has |= 2u;
  v6 = *(v4 + 64);
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
  self->_modificationDate = *(v4 + 4);
  *&self->_has |= 8u;
  v6 = *(v4 + 64);
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
  self->_modificationEpoch = *(v4 + 5);
  *&self->_has |= 0x10u;
  if (*(v4 + 64))
  {
LABEL_7:
    self->_authorizationMode = *(v4 + 1);
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

- (void)_setDataTypeCodeWithObjectType:(id)a3
{
  v4 = [a3 code];

  [(HDCodableAuthorization *)self setObjectType:v4];
}

- (void)_setAuthorizationStatusWithNumber:(id)a3
{
  v4 = [a3 integerValue];

  [(HDCodableAuthorization *)self setAuthorizationStatus:v4];
}

- (void)_setAuthorizationRequestWithNumber:(id)a3
{
  v4 = [a3 integerValue];

  [(HDCodableAuthorization *)self setAuthorizationRequest:v4];
}

- (void)_setAuthorizationModeWithNumber:(id)a3
{
  v4 = [a3 integerValue];

  [(HDCodableAuthorization *)self setAuthorizationMode:v4];
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

- (void)_setModificationDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];

    [(HDCodableAuthorization *)self setModificationDate:?];
  }

  else
  {

    [(HDCodableAuthorization *)self setHasModificationDate:?];
  }
}

@end