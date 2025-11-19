@interface HDCodableFHIRCredential
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeleted:(BOOL)a3;
- (void)setHasReceivedDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableFHIRCredential

- (void)setHasReceivedDate:(BOOL)a3
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

- (void)setHasDeleted:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableFHIRCredential;
  v4 = [(HDCodableFHIRCredential *)&v8 description];
  v5 = [(HDCodableFHIRCredential *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  accountSyncIdentifier = self->_accountSyncIdentifier;
  if (accountSyncIdentifier)
  {
    [v4 setObject:accountSyncIdentifier forKey:@"accountSyncIdentifier"];
  }

  scopeString = self->_scopeString;
  if (scopeString)
  {
    [v4 setObject:scopeString forKey:@"scopeString"];
  }

  requestedScopeString = self->_requestedScopeString;
  if (requestedScopeString)
  {
    [v4 setObject:requestedScopeString forKey:@"requestedScopeString"];
  }

  patientID = self->_patientID;
  if (patientID)
  {
    [v4 setObject:patientID forKey:@"patientID"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_receivedDate];
    [v4 setObject:v17 forKey:@"receivedDate"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_expirationDate];
  [v4 setObject:v18 forKey:@"expirationDate"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_14:
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
    [v4 setObject:v11 forKey:@"deleted"];
  }

LABEL_15:
  messageVersion = self->_messageVersion;
  if (messageVersion)
  {
    v13 = [(HDCodableMessageVersion *)messageVersion dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"messageVersion"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v15 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:v15 forKey:@"syncIdentity"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  if (self->_accountSyncIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  if (self->_scopeString)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_requestedScopeString)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_patientID)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    receivedDate = self->_receivedDate;
    PBDataWriterWriteDoubleField();
    v4 = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  expirationDate = self->_expirationDate;
  PBDataWriterWriteDoubleField();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_14:
    deleted = self->_deleted;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

LABEL_15:
  if (self->_messageVersion)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v6;
  }

  if (self->_accountSyncIdentifier)
  {
    [v6 setAccountSyncIdentifier:?];
    v4 = v6;
  }

  if (self->_scopeString)
  {
    [v6 setScopeString:?];
    v4 = v6;
  }

  if (self->_requestedScopeString)
  {
    [v6 setRequestedScopeString:?];
    v4 = v6;
  }

  if (self->_patientID)
  {
    [v6 setPatientID:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_receivedDate;
    *(v4 + 84) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  *(v4 + 1) = *&self->_expirationDate;
  *(v4 + 84) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_14:
    *(v4 + 80) = self->_deleted;
    *(v4 + 84) |= 4u;
  }

LABEL_15:
  if (self->_messageVersion)
  {
    [v6 setMessageVersion:?];
    v4 = v6;
  }

  if (self->_syncIdentity)
  {
    [v6 setSyncIdentity:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_accountSyncIdentifier copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_scopeString copyWithZone:a3];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  v12 = [(NSString *)self->_requestedScopeString copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSString *)self->_patientID copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_expirationDate;
    *(v5 + 84) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_receivedDate;
  *(v5 + 84) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 80) = self->_deleted;
    *(v5 + 84) |= 4u;
  }

LABEL_5:
  v17 = [(HDCodableMessageVersion *)self->_messageVersion copyWithZone:a3];
  v18 = *(v5 + 40);
  *(v5 + 40) = v17;

  v19 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v20 = *(v5 + 72);
  *(v5 + 72) = v19;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 4))
  {
    if (![(NSData *)identifier isEqual:?])
    {
      goto LABEL_29;
    }
  }

  accountSyncIdentifier = self->_accountSyncIdentifier;
  if (accountSyncIdentifier | *(v4 + 3))
  {
    if (![(NSData *)accountSyncIdentifier isEqual:?])
    {
      goto LABEL_29;
    }
  }

  scopeString = self->_scopeString;
  if (scopeString | *(v4 + 8))
  {
    if (![(NSString *)scopeString isEqual:?])
    {
      goto LABEL_29;
    }
  }

  requestedScopeString = self->_requestedScopeString;
  if (requestedScopeString | *(v4 + 7))
  {
    if (![(NSString *)requestedScopeString isEqual:?])
    {
      goto LABEL_29;
    }
  }

  patientID = self->_patientID;
  if (patientID | *(v4 + 6))
  {
    if (![(NSString *)patientID isEqual:?])
    {
      goto LABEL_29;
    }
  }

  v10 = *(v4 + 84);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 84) & 2) == 0 || self->_receivedDate != *(v4 + 2))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 84) & 2) != 0)
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 84) & 1) == 0 || self->_expirationDate != *(v4 + 1))
    {
      goto LABEL_29;
    }
  }

  else if (*(v4 + 84))
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 84) & 4) == 0)
    {
      goto LABEL_24;
    }

LABEL_29:
    v13 = 0;
    goto LABEL_30;
  }

  if ((*(v4 + 84) & 4) == 0)
  {
    goto LABEL_29;
  }

  v15 = *(v4 + 80);
  if (self->_deleted)
  {
    if ((*(v4 + 80) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (*(v4 + 80))
  {
    goto LABEL_29;
  }

LABEL_24:
  messageVersion = self->_messageVersion;
  if (messageVersion | *(v4 + 5) && ![(HDCodableMessageVersion *)messageVersion isEqual:?])
  {
    goto LABEL_29;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 9))
  {
    v13 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_30:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_identifier hash];
  v4 = [(NSData *)self->_accountSyncIdentifier hash];
  v5 = [(NSString *)self->_scopeString hash];
  v6 = [(NSString *)self->_requestedScopeString hash];
  v7 = [(NSString *)self->_patientID hash];
  if ((*&self->_has & 2) != 0)
  {
    receivedDate = self->_receivedDate;
    if (receivedDate < 0.0)
    {
      receivedDate = -receivedDate;
    }

    *v8.i64 = floor(receivedDate + 0.5);
    v12 = (receivedDate - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v8 = vbslq_s8(vnegq_f64(v13), v9, v8);
    v10 = 2654435761u * *v8.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if (*&self->_has)
  {
    expirationDate = self->_expirationDate;
    if (expirationDate < 0.0)
    {
      expirationDate = -expirationDate;
    }

    *v8.i64 = floor(expirationDate + 0.5);
    v16 = (expirationDate - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v9, v8).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v18 = 2654435761 * self->_deleted;
  }

  else
  {
    v18 = 0;
  }

  v19 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ v14;
  v20 = v18 ^ [(HDCodableMessageVersion *)self->_messageVersion hash];
  return v19 ^ v20 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (*(v4 + 4))
  {
    [(HDCodableFHIRCredential *)self setIdentifier:?];
    v4 = v10;
  }

  if (*(v4 + 3))
  {
    [(HDCodableFHIRCredential *)self setAccountSyncIdentifier:?];
    v4 = v10;
  }

  if (*(v4 + 8))
  {
    [(HDCodableFHIRCredential *)self setScopeString:?];
    v4 = v10;
  }

  if (*(v4 + 7))
  {
    [(HDCodableFHIRCredential *)self setRequestedScopeString:?];
    v4 = v10;
  }

  if (*(v4 + 6))
  {
    [(HDCodableFHIRCredential *)self setPatientID:?];
    v4 = v10;
  }

  v5 = *(v4 + 84);
  if ((v5 & 2) != 0)
  {
    self->_receivedDate = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 84);
    if ((v5 & 1) == 0)
    {
LABEL_13:
      if ((v5 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 84) & 1) == 0)
  {
    goto LABEL_13;
  }

  self->_expirationDate = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 84) & 4) != 0)
  {
LABEL_14:
    self->_deleted = *(v4 + 80);
    *&self->_has |= 4u;
  }

LABEL_15:
  messageVersion = self->_messageVersion;
  v7 = *(v4 + 5);
  if (messageVersion)
  {
    if (!v7)
    {
      goto LABEL_24;
    }

    [(HDCodableMessageVersion *)messageVersion mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_24;
    }

    [(HDCodableFHIRCredential *)self setMessageVersion:?];
  }

  v4 = v10;
LABEL_24:
  syncIdentity = self->_syncIdentity;
  v9 = *(v4 + 9);
  if (syncIdentity)
  {
    if (!v9)
    {
      goto LABEL_30;
    }

    syncIdentity = [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_30;
    }

    syncIdentity = [(HDCodableFHIRCredential *)self setSyncIdentity:?];
  }

  v4 = v10;
LABEL_30:

  MEMORY[0x2821F96F8](syncIdentity, v4);
}

@end