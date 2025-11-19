@interface HDCodableClinicalAccount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasClinicalSharingLastSharedDate:(BOOL)a3;
- (void)setHasClinicalSharingMultiDeviceStatus:(BOOL)a3;
- (void)setHasClinicalSharingUserStatus:(BOOL)a3;
- (void)setHasCreationDate:(BOOL)a3;
- (void)setHasFailedFetchAttemptsCount:(BOOL)a3;
- (void)setHasLastFailedFetchDate:(BOOL)a3;
- (void)setHasLastFetchDate:(BOOL)a3;
- (void)setHasLastFullFetchDate:(BOOL)a3;
- (void)setHasModificationDate:(BOOL)a3;
- (void)setHasUserEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableClinicalAccount

- (void)setHasUserEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasCreationDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasModificationDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasLastFetchDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasLastFullFetchDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasClinicalSharingLastSharedDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasClinicalSharingUserStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasClinicalSharingMultiDeviceStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasLastFailedFetchDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasFailedFetchAttemptsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableClinicalAccount;
  v4 = [(HDCodableClinicalAccount *)&v8 description];
  v5 = [(HDCodableClinicalAccount *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  gatewayExternalID = self->_gatewayExternalID;
  if (gatewayExternalID)
  {
    [v3 setObject:gatewayExternalID forKey:@"gatewayExternalID"];
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_userEnabled];
    [v4 setObject:v25 forKey:@"userEnabled"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_5:
      if ((has & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  v26 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
  [v4 setObject:v26 forKey:@"creationDate"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_40:
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:self->_modificationDate];
  [v4 setObject:v27 forKey:@"modificationDate"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastFetchDate];
    [v4 setObject:v7 forKey:@"lastFetchDate"];
  }

LABEL_8:
  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier)
  {
    [v4 setObject:syncIdentifier forKey:@"syncIdentifier"];
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastFullFetchDate];
    [v4 setObject:v9 forKey:@"lastFullFetchDate"];
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [v4 setObject:accountIdentifier forKey:@"accountIdentifier"];
  }

  patientHash = self->_patientHash;
  if (patientHash)
  {
    [v4 setObject:patientHash forKey:@"patientHash"];
  }

  messageVersion = self->_messageVersion;
  if (messageVersion)
  {
    v13 = [(HDCodableMessageVersion *)messageVersion dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"messageVersion"];
  }

  signedClinicalDataIssuerIdentifier = self->_signedClinicalDataIssuerIdentifier;
  if (signedClinicalDataIssuerIdentifier)
  {
    [v4 setObject:signedClinicalDataIssuerIdentifier forKey:@"signedClinicalDataIssuerIdentifier"];
  }

  v15 = self->_has;
  if (v15)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clinicalSharingFirstSharedDate];
    [v4 setObject:v28 forKey:@"clinicalSharingFirstSharedDate"];

    v15 = self->_has;
    if ((v15 & 2) == 0)
    {
LABEL_22:
      if ((v15 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_44;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_22;
  }

  v29 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clinicalSharingLastSharedDate];
  [v4 setObject:v29 forKey:@"clinicalSharingLastSharedDate"];

  v15 = self->_has;
  if ((v15 & 8) == 0)
  {
LABEL_23:
    if ((v15 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_44:
  v30 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_clinicalSharingUserStatus];
  [v4 setObject:v30 forKey:@"clinicalSharingUserStatus"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_clinicalSharingMultiDeviceStatus];
    [v4 setObject:v16 forKey:@"clinicalSharingMultiDeviceStatus"];
  }

LABEL_25:
  clinicalSharingPrimaryDeviceName = self->_clinicalSharingPrimaryDeviceName;
  if (clinicalSharingPrimaryDeviceName)
  {
    [v4 setObject:clinicalSharingPrimaryDeviceName forKey:@"clinicalSharingPrimaryDeviceName"];
  }

  v18 = self->_has;
  if ((v18 & 0x40) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastFailedFetchDate];
    [v4 setObject:v19 forKey:@"lastFailedFetchDate"];

    v18 = self->_has;
  }

  if ((v18 & 0x20) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_failedFetchAttemptsCount];
    [v4 setObject:v20 forKey:@"failedFetchAttemptsCount"];
  }

  credentialSyncIdentifier = self->_credentialSyncIdentifier;
  if (credentialSyncIdentifier)
  {
    [v4 setObject:credentialSyncIdentifier forKey:@"credentialSyncIdentifier"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v23 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:v23 forKey:@"syncIdentity"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v19 = v4;
  if (self->_gatewayExternalID)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    userEnabled = self->_userEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v19;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_5:
      if ((has & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  creationDate = self->_creationDate;
  PBDataWriterWriteDoubleField();
  v4 = v19;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_40:
  modificationDate = self->_modificationDate;
  PBDataWriterWriteDoubleField();
  v4 = v19;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_7:
    lastFetchDate = self->_lastFetchDate;
    PBDataWriterWriteDoubleField();
    v4 = v19;
  }

LABEL_8:
  if (self->_syncIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v19;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    lastFullFetchDate = self->_lastFullFetchDate;
    PBDataWriterWriteDoubleField();
    v4 = v19;
  }

  if (self->_accountIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_patientHash)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_messageVersion)
  {
    PBDataWriterWriteSubmessage();
    v4 = v19;
  }

  if (self->_signedClinicalDataIssuerIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  v8 = self->_has;
  if (v8)
  {
    clinicalSharingFirstSharedDate = self->_clinicalSharingFirstSharedDate;
    PBDataWriterWriteDoubleField();
    v4 = v19;
    v8 = self->_has;
    if ((v8 & 2) == 0)
    {
LABEL_22:
      if ((v8 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_44;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_22;
  }

  clinicalSharingLastSharedDate = self->_clinicalSharingLastSharedDate;
  PBDataWriterWriteDoubleField();
  v4 = v19;
  v8 = self->_has;
  if ((v8 & 8) == 0)
  {
LABEL_23:
    if ((v8 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_44:
  clinicalSharingUserStatus = self->_clinicalSharingUserStatus;
  PBDataWriterWriteInt64Field();
  v4 = v19;
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    clinicalSharingMultiDeviceStatus = self->_clinicalSharingMultiDeviceStatus;
    PBDataWriterWriteInt64Field();
    v4 = v19;
  }

LABEL_25:
  if (self->_clinicalSharingPrimaryDeviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  v10 = self->_has;
  if ((v10 & 0x40) != 0)
  {
    lastFailedFetchDate = self->_lastFailedFetchDate;
    PBDataWriterWriteDoubleField();
    v4 = v19;
    v10 = self->_has;
  }

  if ((v10 & 0x20) != 0)
  {
    failedFetchAttemptsCount = self->_failedFetchAttemptsCount;
    PBDataWriterWriteInt64Field();
    v4 = v19;
  }

  if (self->_credentialSyncIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v19;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v19;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_gatewayExternalID)
  {
    [v4 setGatewayExternalID:?];
    v4 = v8;
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(v4 + 160) = self->_userEnabled;
    *(v4 + 82) |= 0x400u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_5:
      if ((has & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 5) = *&self->_creationDate;
  *(v4 + 82) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_40:
  *(v4 + 10) = *&self->_modificationDate;
  *(v4 + 82) |= 0x200u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_7:
    *(v4 + 8) = *&self->_lastFetchDate;
    *(v4 + 82) |= 0x80u;
  }

LABEL_8:
  if (self->_syncIdentifier)
  {
    [v8 setSyncIdentifier:?];
    v4 = v8;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    *(v4 + 9) = *&self->_lastFullFetchDate;
    *(v4 + 82) |= 0x100u;
  }

  if (self->_accountIdentifier)
  {
    [v8 setAccountIdentifier:?];
    v4 = v8;
  }

  if (self->_patientHash)
  {
    [v8 setPatientHash:?];
    v4 = v8;
  }

  if (self->_messageVersion)
  {
    [v8 setMessageVersion:?];
    v4 = v8;
  }

  if (self->_signedClinicalDataIssuerIdentifier)
  {
    [v8 setSignedClinicalDataIssuerIdentifier:?];
    v4 = v8;
  }

  v6 = self->_has;
  if (v6)
  {
    *(v4 + 1) = *&self->_clinicalSharingFirstSharedDate;
    *(v4 + 82) |= 1u;
    v6 = self->_has;
    if ((v6 & 2) == 0)
    {
LABEL_22:
      if ((v6 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_44;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_22;
  }

  *(v4 + 2) = *&self->_clinicalSharingLastSharedDate;
  *(v4 + 82) |= 2u;
  v6 = self->_has;
  if ((v6 & 8) == 0)
  {
LABEL_23:
    if ((v6 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_44:
  *(v4 + 4) = self->_clinicalSharingUserStatus;
  *(v4 + 82) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    *(v4 + 3) = self->_clinicalSharingMultiDeviceStatus;
    *(v4 + 82) |= 4u;
  }

LABEL_25:
  if (self->_clinicalSharingPrimaryDeviceName)
  {
    [v8 setClinicalSharingPrimaryDeviceName:?];
    v4 = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x40) != 0)
  {
    *(v4 + 7) = *&self->_lastFailedFetchDate;
    *(v4 + 82) |= 0x40u;
    v7 = self->_has;
  }

  if ((v7 & 0x20) != 0)
  {
    *(v4 + 6) = self->_failedFetchAttemptsCount;
    *(v4 + 82) |= 0x20u;
  }

  if (self->_credentialSyncIdentifier)
  {
    [v8 setCredentialSyncIdentifier:?];
    v4 = v8;
  }

  if (self->_syncIdentity)
  {
    [v8 setSyncIdentity:?];
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_gatewayExternalID copyWithZone:a3];
  v7 = *(v5 + 112);
  *(v5 + 112) = v6;

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(v5 + 160) = self->_userEnabled;
    *(v5 + 164) |= 0x400u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_creationDate;
  *(v5 + 164) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_20:
  *(v5 + 80) = self->_modificationDate;
  *(v5 + 164) |= 0x200u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_5:
    *(v5 + 64) = self->_lastFetchDate;
    *(v5 + 164) |= 0x80u;
  }

LABEL_6:
  v9 = [(NSData *)self->_syncIdentifier copyWithZone:a3];
  v10 = *(v5 + 144);
  *(v5 + 144) = v9;

  if ((*&self->_has & 0x100) != 0)
  {
    *(v5 + 72) = self->_lastFullFetchDate;
    *(v5 + 164) |= 0x100u;
  }

  v11 = [(NSString *)self->_accountIdentifier copyWithZone:a3];
  v12 = *(v5 + 88);
  *(v5 + 88) = v11;

  v13 = [(NSString *)self->_patientHash copyWithZone:a3];
  v14 = *(v5 + 128);
  *(v5 + 128) = v13;

  v15 = [(HDCodableMessageVersion *)self->_messageVersion copyWithZone:a3];
  v16 = *(v5 + 120);
  *(v5 + 120) = v15;

  v17 = [(NSString *)self->_signedClinicalDataIssuerIdentifier copyWithZone:a3];
  v18 = *(v5 + 136);
  *(v5 + 136) = v17;

  v19 = self->_has;
  if (v19)
  {
    *(v5 + 8) = self->_clinicalSharingFirstSharedDate;
    *(v5 + 164) |= 1u;
    v19 = self->_has;
    if ((v19 & 2) == 0)
    {
LABEL_10:
      if ((v19 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 16) = self->_clinicalSharingLastSharedDate;
  *(v5 + 164) |= 2u;
  v19 = self->_has;
  if ((v19 & 8) == 0)
  {
LABEL_11:
    if ((v19 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_24:
  *(v5 + 32) = self->_clinicalSharingUserStatus;
  *(v5 + 164) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    *(v5 + 24) = self->_clinicalSharingMultiDeviceStatus;
    *(v5 + 164) |= 4u;
  }

LABEL_13:
  v20 = [(NSString *)self->_clinicalSharingPrimaryDeviceName copyWithZone:a3];
  v21 = *(v5 + 96);
  *(v5 + 96) = v20;

  v22 = self->_has;
  if ((v22 & 0x40) != 0)
  {
    *(v5 + 56) = self->_lastFailedFetchDate;
    *(v5 + 164) |= 0x40u;
    v22 = self->_has;
  }

  if ((v22 & 0x20) != 0)
  {
    *(v5 + 48) = self->_failedFetchAttemptsCount;
    *(v5 + 164) |= 0x20u;
  }

  v23 = [(NSData *)self->_credentialSyncIdentifier copyWithZone:a3];
  v24 = *(v5 + 104);
  *(v5 + 104) = v23;

  v25 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v26 = *(v5 + 152);
  *(v5 + 152) = v25;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_80;
  }

  gatewayExternalID = self->_gatewayExternalID;
  if (gatewayExternalID | *(v4 + 14))
  {
    if (![(NSString *)gatewayExternalID isEqual:?])
    {
      goto LABEL_80;
    }
  }

  has = self->_has;
  v7 = *(v4 + 82);
  if ((has & 0x400) != 0)
  {
    if ((*(v4 + 82) & 0x400) == 0)
    {
      goto LABEL_80;
    }

    v8 = *(v4 + 160);
    if (self->_userEnabled)
    {
      if ((*(v4 + 160) & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    else if (*(v4 + 160))
    {
      goto LABEL_80;
    }
  }

  else if ((*(v4 + 82) & 0x400) != 0)
  {
    goto LABEL_80;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_creationDate != *(v4 + 5))
    {
      goto LABEL_80;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_80;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 82) & 0x200) == 0 || self->_modificationDate != *(v4 + 10))
    {
      goto LABEL_80;
    }
  }

  else if ((*(v4 + 82) & 0x200) != 0)
  {
    goto LABEL_80;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_lastFetchDate != *(v4 + 8))
    {
      goto LABEL_80;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_80;
  }

  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier | *(v4 + 18))
  {
    if (![(NSData *)syncIdentifier isEqual:?])
    {
      goto LABEL_80;
    }

    has = self->_has;
    v7 = *(v4 + 82);
  }

  if ((has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_lastFullFetchDate != *(v4 + 9))
    {
      goto LABEL_80;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_80;
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier | *(v4 + 11) && ![(NSString *)accountIdentifier isEqual:?])
  {
    goto LABEL_80;
  }

  patientHash = self->_patientHash;
  if (patientHash | *(v4 + 16))
  {
    if (![(NSString *)patientHash isEqual:?])
    {
      goto LABEL_80;
    }
  }

  messageVersion = self->_messageVersion;
  if (messageVersion | *(v4 + 15))
  {
    if (![(HDCodableMessageVersion *)messageVersion isEqual:?])
    {
      goto LABEL_80;
    }
  }

  signedClinicalDataIssuerIdentifier = self->_signedClinicalDataIssuerIdentifier;
  if (signedClinicalDataIssuerIdentifier | *(v4 + 17))
  {
    if (![(NSString *)signedClinicalDataIssuerIdentifier isEqual:?])
    {
      goto LABEL_80;
    }
  }

  v14 = self->_has;
  v15 = *(v4 + 82);
  if (v14)
  {
    if ((v15 & 1) == 0 || self->_clinicalSharingFirstSharedDate != *(v4 + 1))
    {
      goto LABEL_80;
    }
  }

  else if (v15)
  {
    goto LABEL_80;
  }

  if ((v14 & 2) != 0)
  {
    if ((v15 & 2) == 0 || self->_clinicalSharingLastSharedDate != *(v4 + 2))
    {
      goto LABEL_80;
    }
  }

  else if ((v15 & 2) != 0)
  {
    goto LABEL_80;
  }

  if ((v14 & 8) != 0)
  {
    if ((v15 & 8) == 0 || self->_clinicalSharingUserStatus != *(v4 + 4))
    {
      goto LABEL_80;
    }
  }

  else if ((v15 & 8) != 0)
  {
    goto LABEL_80;
  }

  if ((v14 & 4) != 0)
  {
    if ((v15 & 4) == 0 || self->_clinicalSharingMultiDeviceStatus != *(v4 + 3))
    {
      goto LABEL_80;
    }
  }

  else if ((v15 & 4) != 0)
  {
    goto LABEL_80;
  }

  clinicalSharingPrimaryDeviceName = self->_clinicalSharingPrimaryDeviceName;
  if (clinicalSharingPrimaryDeviceName | *(v4 + 12))
  {
    if ([(NSString *)clinicalSharingPrimaryDeviceName isEqual:?])
    {
      v14 = self->_has;
      v15 = *(v4 + 82);
      goto LABEL_66;
    }

LABEL_80:
    v19 = 0;
    goto LABEL_81;
  }

LABEL_66:
  if ((v14 & 0x40) != 0)
  {
    if ((v15 & 0x40) == 0 || self->_lastFailedFetchDate != *(v4 + 7))
    {
      goto LABEL_80;
    }
  }

  else if ((v15 & 0x40) != 0)
  {
    goto LABEL_80;
  }

  if ((v14 & 0x20) != 0)
  {
    if ((v15 & 0x20) == 0 || self->_failedFetchAttemptsCount != *(v4 + 6))
    {
      goto LABEL_80;
    }
  }

  else if ((v15 & 0x20) != 0)
  {
    goto LABEL_80;
  }

  credentialSyncIdentifier = self->_credentialSyncIdentifier;
  if (credentialSyncIdentifier | *(v4 + 13) && ![(NSData *)credentialSyncIdentifier isEqual:?])
  {
    goto LABEL_80;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 19))
  {
    v19 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v19 = 1;
  }

LABEL_81:

  return v19;
}

- (unint64_t)hash
{
  v57 = [(NSString *)self->_gatewayExternalID hash];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v56 = 2654435761 * self->_userEnabled;
    if ((has & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v56 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  creationDate = self->_creationDate;
  if (creationDate < 0.0)
  {
    creationDate = -creationDate;
  }

  *v3.i64 = floor(creationDate + 0.5);
  v7 = (creationDate - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v8), v4, v3);
  v9 = 2654435761u * *v3.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_9:
  if ((*&self->_has & 0x200) != 0)
  {
    modificationDate = self->_modificationDate;
    if (modificationDate < 0.0)
    {
      modificationDate = -modificationDate;
    }

    *v3.i64 = floor(modificationDate + 0.5);
    v12 = (modificationDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v13), v4, v3);
    v10 = 2654435761u * *v3.i64;
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

  v54 = v10;
  v55 = v9;
  if ((has & 0x80) != 0)
  {
    lastFetchDate = self->_lastFetchDate;
    if (lastFetchDate < 0.0)
    {
      lastFetchDate = -lastFetchDate;
    }

    *v3.i64 = floor(lastFetchDate + 0.5);
    v16 = (lastFetchDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v4, v3).i64;
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

  v53 = v14;
  v52 = [(NSData *)self->_syncIdentifier hash];
  if ((*&self->_has & 0x100) != 0)
  {
    lastFullFetchDate = self->_lastFullFetchDate;
    if (lastFullFetchDate < 0.0)
    {
      lastFullFetchDate = -lastFullFetchDate;
    }

    *v18.i64 = floor(lastFullFetchDate + 0.5);
    v22 = (lastFullFetchDate - *v18.i64) * 1.84467441e19;
    *v19.i64 = *v18.i64 - trunc(*v18.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v20 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v19, v18).i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  v51 = [(NSString *)self->_accountIdentifier hash];
  v50 = [(NSString *)self->_patientHash hash];
  v24 = [(HDCodableMessageVersion *)self->_messageVersion hash];
  v25 = [(NSString *)self->_signedClinicalDataIssuerIdentifier hash];
  v28 = self->_has;
  if (v28)
  {
    clinicalSharingFirstSharedDate = self->_clinicalSharingFirstSharedDate;
    if (clinicalSharingFirstSharedDate < 0.0)
    {
      clinicalSharingFirstSharedDate = -clinicalSharingFirstSharedDate;
    }

    *v26.i64 = floor(clinicalSharingFirstSharedDate + 0.5);
    v31 = (clinicalSharingFirstSharedDate - *v26.i64) * 1.84467441e19;
    *v27.i64 = *v26.i64 - trunc(*v26.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v26 = vbslq_s8(vnegq_f64(v32), v27, v26);
    v29 = 2654435761u * *v26.i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabs(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  if ((v28 & 2) != 0)
  {
    clinicalSharingLastSharedDate = self->_clinicalSharingLastSharedDate;
    if (clinicalSharingLastSharedDate < 0.0)
    {
      clinicalSharingLastSharedDate = -clinicalSharingLastSharedDate;
    }

    *v26.i64 = floor(clinicalSharingLastSharedDate + 0.5);
    v35 = (clinicalSharingLastSharedDate - *v26.i64) * 1.84467441e19;
    *v27.i64 = *v26.i64 - trunc(*v26.i64 * 5.42101086e-20) * 1.84467441e19;
    v36.f64[0] = NAN;
    v36.f64[1] = NAN;
    v33 = 2654435761u * *vbslq_s8(vnegq_f64(v36), v27, v26).i64;
    if (v35 >= 0.0)
    {
      if (v35 > 0.0)
      {
        v33 += v35;
      }
    }

    else
    {
      v33 -= fabs(v35);
    }
  }

  else
  {
    v33 = 0;
  }

  if ((v28 & 8) != 0)
  {
    v37 = 2654435761 * self->_clinicalSharingUserStatus;
    if ((v28 & 4) != 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v37 = 0;
    if ((v28 & 4) != 0)
    {
LABEL_53:
      v38 = 2654435761 * self->_clinicalSharingMultiDeviceStatus;
      goto LABEL_56;
    }
  }

  v38 = 0;
LABEL_56:
  v39 = [(NSString *)self->_clinicalSharingPrimaryDeviceName hash];
  v42 = self->_has;
  if ((v42 & 0x40) != 0)
  {
    lastFailedFetchDate = self->_lastFailedFetchDate;
    if (lastFailedFetchDate < 0.0)
    {
      lastFailedFetchDate = -lastFailedFetchDate;
    }

    *v40.i64 = floor(lastFailedFetchDate + 0.5);
    v45 = (lastFailedFetchDate - *v40.i64) * 1.84467441e19;
    *v41.i64 = *v40.i64 - trunc(*v40.i64 * 5.42101086e-20) * 1.84467441e19;
    v46.f64[0] = NAN;
    v46.f64[1] = NAN;
    v43 = 2654435761u * *vbslq_s8(vnegq_f64(v46), v41, v40).i64;
    if (v45 >= 0.0)
    {
      if (v45 > 0.0)
      {
        v43 += v45;
      }
    }

    else
    {
      v43 -= fabs(v45);
    }
  }

  else
  {
    v43 = 0;
  }

  if ((v42 & 0x20) != 0)
  {
    v47 = 2654435761 * self->_failedFetchAttemptsCount;
  }

  else
  {
    v47 = 0;
  }

  v48 = v56 ^ v57 ^ v55 ^ v54 ^ v53 ^ v52 ^ v20 ^ v51 ^ v50 ^ v24 ^ v25 ^ v29 ^ v33 ^ v37 ^ v38 ^ v39 ^ v43 ^ v47 ^ [(NSData *)self->_credentialSyncIdentifier hash];
  return v48 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (*(v4 + 14))
  {
    [(HDCodableClinicalAccount *)self setGatewayExternalID:?];
    v4 = v12;
  }

  v5 = *(v4 + 82);
  if ((v5 & 0x400) != 0)
  {
    self->_userEnabled = *(v4 + 160);
    *&self->_has |= 0x400u;
    v5 = *(v4 + 82);
    if ((v5 & 0x10) == 0)
    {
LABEL_5:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_5;
  }

  self->_creationDate = *(v4 + 5);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 82);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  self->_modificationDate = *(v4 + 10);
  *&self->_has |= 0x200u;
  if ((*(v4 + 82) & 0x80) != 0)
  {
LABEL_7:
    self->_lastFetchDate = *(v4 + 8);
    *&self->_has |= 0x80u;
  }

LABEL_8:
  if (*(v4 + 18))
  {
    [(HDCodableClinicalAccount *)self setSyncIdentifier:?];
    v4 = v12;
  }

  if ((*(v4 + 82) & 0x100) != 0)
  {
    self->_lastFullFetchDate = *(v4 + 9);
    *&self->_has |= 0x100u;
  }

  if (*(v4 + 11))
  {
    [(HDCodableClinicalAccount *)self setAccountIdentifier:?];
    v4 = v12;
  }

  if (*(v4 + 16))
  {
    [(HDCodableClinicalAccount *)self setPatientHash:?];
    v4 = v12;
  }

  messageVersion = self->_messageVersion;
  v7 = *(v4 + 15);
  if (messageVersion)
  {
    if (!v7)
    {
      goto LABEL_26;
    }

    [(HDCodableMessageVersion *)messageVersion mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_26;
    }

    [(HDCodableClinicalAccount *)self setMessageVersion:?];
  }

  v4 = v12;
LABEL_26:
  if (*(v4 + 17))
  {
    [(HDCodableClinicalAccount *)self setSignedClinicalDataIssuerIdentifier:?];
    v4 = v12;
  }

  v8 = *(v4 + 82);
  if (v8)
  {
    self->_clinicalSharingFirstSharedDate = *(v4 + 1);
    *&self->_has |= 1u;
    v8 = *(v4 + 82);
    if ((v8 & 2) == 0)
    {
LABEL_30:
      if ((v8 & 8) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_46;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_30;
  }

  self->_clinicalSharingLastSharedDate = *(v4 + 2);
  *&self->_has |= 2u;
  v8 = *(v4 + 82);
  if ((v8 & 8) == 0)
  {
LABEL_31:
    if ((v8 & 4) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_46:
  self->_clinicalSharingUserStatus = *(v4 + 4);
  *&self->_has |= 8u;
  if ((*(v4 + 82) & 4) != 0)
  {
LABEL_32:
    self->_clinicalSharingMultiDeviceStatus = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_33:
  if (*(v4 + 12))
  {
    [(HDCodableClinicalAccount *)self setClinicalSharingPrimaryDeviceName:?];
    v4 = v12;
  }

  v9 = *(v4 + 82);
  if ((v9 & 0x40) != 0)
  {
    self->_lastFailedFetchDate = *(v4 + 7);
    *&self->_has |= 0x40u;
    v9 = *(v4 + 82);
  }

  if ((v9 & 0x20) != 0)
  {
    self->_failedFetchAttemptsCount = *(v4 + 6);
    *&self->_has |= 0x20u;
  }

  if (*(v4 + 13))
  {
    [(HDCodableClinicalAccount *)self setCredentialSyncIdentifier:?];
    v4 = v12;
  }

  syncIdentity = self->_syncIdentity;
  v11 = *(v4 + 19);
  if (syncIdentity)
  {
    if (!v11)
    {
      goto LABEL_51;
    }

    syncIdentity = [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_51;
    }

    syncIdentity = [(HDCodableClinicalAccount *)self setSyncIdentity:?];
  }

  v4 = v12;
LABEL_51:

  MEMORY[0x2821F96F8](syncIdentity, v4);
}

@end