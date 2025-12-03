@interface CKDPZoneRetrieveResponseZoneSummary
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDeviceCount:(BOOL)count;
- (void)setHasExpired:(BOOL)expired;
- (void)setHasMetadataQuotaUsage:(BOOL)usage;
- (void)setHasZoneKeyRollAllowed:(BOOL)allowed;
- (void)setHasZoneishPcsNeedsRolled:(BOOL)rolled;
- (void)writeTo:(id)to;
@end

@implementation CKDPZoneRetrieveResponseZoneSummary

- (void)setHasDeviceCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMetadataQuotaUsage:(BOOL)usage
{
  if (usage)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasZoneishPcsNeedsRolled:(BOOL)rolled
{
  if (rolled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasZoneKeyRollAllowed:(BOOL)allowed
{
  if (allowed)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasExpired:(BOOL)expired
{
  if (expired)
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
  v11.receiver = self;
  v11.super_class = CKDPZoneRetrieveResponseZoneSummary;
  v4 = [(CKDPZoneRetrieveResponseZoneSummary *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  targetZone = self->_targetZone;
  if (targetZone)
  {
    v8 = objc_msgSend_dictionaryRepresentation(targetZone, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"targetZone");
  }

  currentServerContinuationToken = self->_currentServerContinuationToken;
  if (currentServerContinuationToken)
  {
    objc_msgSend_setObject_forKey_(v6, v4, currentServerContinuationToken, @"currentServerContinuationToken");
  }

  clientChangeToken = self->_clientChangeToken;
  if (clientChangeToken)
  {
    objc_msgSend_setObject_forKey_(v6, v4, clientChangeToken, @"clientChangeToken");
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v33 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_deviceCount);
    objc_msgSend_setObject_forKey_(v6, v34, v33, @"deviceCount");

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  v35 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_assetQuotaUsage);
  objc_msgSend_setObject_forKey_(v6, v36, v35, @"assetQuotaUsage");

  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_metadataQuotaUsage);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"metadataQuotaUsage");
  }

LABEL_11:
  capabilities = self->_capabilities;
  if (capabilities)
  {
    v16 = objc_msgSend_dictionaryRepresentation(capabilities, v4, clientChangeToken);
    objc_msgSend_setObject_forKey_(v6, v17, v16, @"capabilities");
  }

  v18 = self->_has;
  if ((v18 & 0x20) != 0)
  {
    v19 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_zoneishPcsNeedsRolled);
    objc_msgSend_setObject_forKey_(v6, v20, v19, @"zoneishPcsNeedsRolled");

    v18 = self->_has;
  }

  if ((v18 & 0x10) != 0)
  {
    v21 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_zoneKeyRollAllowed);
    objc_msgSend_setObject_forKey_(v6, v22, v21, @"zoneKeyRollAllowed");
  }

  zonePcsModificationTime = self->_zonePcsModificationTime;
  if (zonePcsModificationTime)
  {
    v24 = objc_msgSend_dictionaryRepresentation(zonePcsModificationTime, v4, clientChangeToken);
    objc_msgSend_setObject_forKey_(v6, v25, v24, @"zonePcsModificationTime");
  }

  zonePcsModificationDevice = self->_zonePcsModificationDevice;
  if (zonePcsModificationDevice)
  {
    objc_msgSend_setObject_forKey_(v6, v4, zonePcsModificationDevice, @"zonePcsModificationDevice");
  }

  if ((*&self->_has & 8) != 0)
  {
    v27 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_expired);
    objc_msgSend_setObject_forKey_(v6, v28, v27, @"expired");
  }

  expirationTime = self->_expirationTime;
  if (expirationTime)
  {
    v30 = objc_msgSend_dictionaryRepresentation(expirationTime, v4, zonePcsModificationDevice);
    objc_msgSend_setObject_forKey_(v6, v31, v30, @"expirationTime");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v13 = toCopy;
  if (self->_targetZone)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v13;
  }

  if (self->_currentServerContinuationToken)
  {
    PBDataWriterWriteDataField();
    toCopy = v13;
  }

  if (self->_clientChangeToken)
  {
    PBDataWriterWriteDataField();
    toCopy = v13;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    deviceCount = self->_deviceCount;
    PBDataWriterWriteInt32Field();
    toCopy = v13;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  assetQuotaUsage = self->_assetQuotaUsage;
  PBDataWriterWriteInt64Field();
  toCopy = v13;
  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    metadataQuotaUsage = self->_metadataQuotaUsage;
    PBDataWriterWriteInt64Field();
    toCopy = v13;
  }

LABEL_11:
  if (self->_capabilities)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v13;
  }

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    zoneishPcsNeedsRolled = self->_zoneishPcsNeedsRolled;
    PBDataWriterWriteBOOLField();
    toCopy = v13;
    v7 = self->_has;
  }

  if ((v7 & 0x10) != 0)
  {
    zoneKeyRollAllowed = self->_zoneKeyRollAllowed;
    PBDataWriterWriteBOOLField();
    toCopy = v13;
  }

  if (self->_zonePcsModificationTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v13;
  }

  if (self->_zonePcsModificationDevice)
  {
    PBDataWriterWriteStringField();
    toCopy = v13;
  }

  if ((*&self->_has & 8) != 0)
  {
    expired = self->_expired;
    PBDataWriterWriteBOOLField();
    toCopy = v13;
  }

  if (self->_expirationTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v13;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  targetZone = self->_targetZone;
  v15 = toCopy;
  if (targetZone)
  {
    objc_msgSend_setTargetZone_(toCopy, v5, targetZone);
    toCopy = v15;
  }

  currentServerContinuationToken = self->_currentServerContinuationToken;
  if (currentServerContinuationToken)
  {
    objc_msgSend_setCurrentServerContinuationToken_(v15, v5, currentServerContinuationToken);
    toCopy = v15;
  }

  clientChangeToken = self->_clientChangeToken;
  if (clientChangeToken)
  {
    objc_msgSend_setClientChangeToken_(v15, v5, clientChangeToken);
    toCopy = v15;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 12) = self->_deviceCount;
    *(toCopy + 92) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 1) = self->_assetQuotaUsage;
  *(toCopy + 92) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    *(toCopy + 2) = self->_metadataQuotaUsage;
    *(toCopy + 92) |= 2u;
  }

LABEL_11:
  capabilities = self->_capabilities;
  if (capabilities)
  {
    objc_msgSend_setCapabilities_(v15, v5, capabilities);
    toCopy = v15;
  }

  v11 = self->_has;
  if ((v11 & 0x20) != 0)
  {
    *(toCopy + 90) = self->_zoneishPcsNeedsRolled;
    *(toCopy + 92) |= 0x20u;
    v11 = self->_has;
  }

  if ((v11 & 0x10) != 0)
  {
    *(toCopy + 89) = self->_zoneKeyRollAllowed;
    *(toCopy + 92) |= 0x10u;
  }

  zonePcsModificationTime = self->_zonePcsModificationTime;
  if (zonePcsModificationTime)
  {
    objc_msgSend_setZonePcsModificationTime_(v15, v5, zonePcsModificationTime);
    toCopy = v15;
  }

  zonePcsModificationDevice = self->_zonePcsModificationDevice;
  if (zonePcsModificationDevice)
  {
    objc_msgSend_setZonePcsModificationDevice_(v15, v5, zonePcsModificationDevice);
    toCopy = v15;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 88) = self->_expired;
    *(toCopy + 92) |= 8u;
  }

  expirationTime = self->_expirationTime;
  if (expirationTime)
  {
    objc_msgSend_setExpirationTime_(v15, v5, expirationTime);
    toCopy = v15;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_targetZone, v11, zone);
  v13 = *(v10 + 64);
  *(v10 + 64) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_currentServerContinuationToken, v14, zone);
  v16 = *(v10 + 40);
  *(v10 + 40) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_clientChangeToken, v17, zone);
  v19 = *(v10 + 32);
  *(v10 + 32) = v18;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v10 + 48) = self->_deviceCount;
    *(v10 + 92) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v10 + 8) = self->_assetQuotaUsage;
  *(v10 + 92) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v10 + 16) = self->_metadataQuotaUsage;
    *(v10 + 92) |= 2u;
  }

LABEL_5:
  v22 = objc_msgSend_copyWithZone_(self->_capabilities, v20, zone);
  v23 = *(v10 + 24);
  *(v10 + 24) = v22;

  v25 = self->_has;
  if ((v25 & 0x20) != 0)
  {
    *(v10 + 90) = self->_zoneishPcsNeedsRolled;
    *(v10 + 92) |= 0x20u;
    v25 = self->_has;
  }

  if ((v25 & 0x10) != 0)
  {
    *(v10 + 89) = self->_zoneKeyRollAllowed;
    *(v10 + 92) |= 0x10u;
  }

  v26 = objc_msgSend_copyWithZone_(self->_zonePcsModificationTime, v24, zone);
  v27 = *(v10 + 80);
  *(v10 + 80) = v26;

  v29 = objc_msgSend_copyWithZone_(self->_zonePcsModificationDevice, v28, zone);
  v30 = *(v10 + 72);
  *(v10 + 72) = v29;

  if ((*&self->_has & 8) != 0)
  {
    *(v10 + 88) = self->_expired;
    *(v10 + 92) |= 8u;
  }

  v32 = objc_msgSend_copyWithZone_(self->_expirationTime, v31, zone);
  v33 = *(v10 + 56);
  *(v10 + 56) = v32;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_51;
  }

  targetZone = self->_targetZone;
  v9 = equalCopy[8];
  if (targetZone | v9)
  {
    if (!objc_msgSend_isEqual_(targetZone, v7, v9))
    {
      goto LABEL_51;
    }
  }

  currentServerContinuationToken = self->_currentServerContinuationToken;
  v11 = equalCopy[5];
  if (currentServerContinuationToken | v11)
  {
    if (!objc_msgSend_isEqual_(currentServerContinuationToken, v7, v11))
    {
      goto LABEL_51;
    }
  }

  clientChangeToken = self->_clientChangeToken;
  v13 = equalCopy[4];
  if (clientChangeToken | v13)
  {
    if (!objc_msgSend_isEqual_(clientChangeToken, v7, v13))
    {
      goto LABEL_51;
    }
  }

  has = self->_has;
  v15 = *(equalCopy + 92);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 92) & 4) == 0 || self->_deviceCount != *(equalCopy + 12))
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 92) & 4) != 0)
  {
    goto LABEL_51;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_assetQuotaUsage != equalCopy[1])
    {
      goto LABEL_51;
    }
  }

  else if (*(equalCopy + 92))
  {
    goto LABEL_51;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 92) & 2) == 0 || self->_metadataQuotaUsage != equalCopy[2])
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 92) & 2) != 0)
  {
    goto LABEL_51;
  }

  capabilities = self->_capabilities;
  v17 = equalCopy[3];
  if (capabilities | v17)
  {
    if (!objc_msgSend_isEqual_(capabilities, v7, v17))
    {
      goto LABEL_51;
    }

    has = self->_has;
    v15 = *(equalCopy + 92);
  }

  if ((has & 0x20) != 0)
  {
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    v26 = *(equalCopy + 90);
    if (self->_zoneishPcsNeedsRolled)
    {
      if ((*(equalCopy + 90) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (*(equalCopy + 90))
    {
      goto LABEL_51;
    }
  }

  else if ((v15 & 0x20) != 0)
  {
    goto LABEL_51;
  }

  if ((has & 0x10) != 0)
  {
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_51;
    }

    v27 = *(equalCopy + 89);
    if (self->_zoneKeyRollAllowed)
    {
      if ((*(equalCopy + 89) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (*(equalCopy + 89))
    {
      goto LABEL_51;
    }
  }

  else if ((v15 & 0x10) != 0)
  {
    goto LABEL_51;
  }

  zonePcsModificationTime = self->_zonePcsModificationTime;
  v19 = equalCopy[10];
  if (zonePcsModificationTime | v19 && !objc_msgSend_isEqual_(zonePcsModificationTime, v7, v19))
  {
    goto LABEL_51;
  }

  zonePcsModificationDevice = self->_zonePcsModificationDevice;
  v21 = equalCopy[9];
  if (zonePcsModificationDevice | v21)
  {
    if (!objc_msgSend_isEqual_(zonePcsModificationDevice, v7, v21))
    {
      goto LABEL_51;
    }
  }

  v22 = *(equalCopy + 92);
  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 92) & 8) == 0)
    {
      goto LABEL_36;
    }

LABEL_51:
    isEqual = 0;
    goto LABEL_52;
  }

  if ((*(equalCopy + 92) & 8) == 0)
  {
    goto LABEL_51;
  }

  v29 = *(equalCopy + 88);
  if (self->_expired)
  {
    if ((equalCopy[11] & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (equalCopy[11])
  {
    goto LABEL_51;
  }

LABEL_36:
  expirationTime = self->_expirationTime;
  v24 = equalCopy[7];
  if (expirationTime | v24)
  {
    isEqual = objc_msgSend_isEqual_(expirationTime, v7, v24);
  }

  else
  {
    isEqual = 1;
  }

LABEL_52:

  return isEqual;
}

- (unint64_t)hash
{
  v29 = objc_msgSend_hash(self->_targetZone, a2, v2);
  v28 = objc_msgSend_hash(self->_currentServerContinuationToken, v4, v5);
  v27 = objc_msgSend_hash(self->_clientChangeToken, v6, v7);
  if ((*&self->_has & 4) == 0)
  {
    v25 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v25 = 2654435761 * self->_deviceCount;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = 2654435761 * self->_assetQuotaUsage;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v11 = 2654435761 * self->_metadataQuotaUsage;
    goto LABEL_8;
  }

LABEL_7:
  v11 = 0;
LABEL_8:
  v14 = objc_msgSend_hash(self->_capabilities, v8, v9, v25);
  if ((*&self->_has & 0x20) != 0)
  {
    v15 = 2654435761 * self->_zoneishPcsNeedsRolled;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_10:
      v16 = 2654435761 * self->_zoneKeyRollAllowed;
      goto LABEL_13;
    }
  }

  v16 = 0;
LABEL_13:
  v17 = objc_msgSend_hash(self->_zonePcsModificationTime, v12, v13);
  v20 = objc_msgSend_hash(self->_zonePcsModificationDevice, v18, v19);
  if ((*&self->_has & 8) != 0)
  {
    v23 = 2654435761 * self->_expired;
  }

  else
  {
    v23 = 0;
  }

  return v28 ^ v29 ^ v27 ^ v26 ^ v10 ^ v11 ^ v14 ^ v15 ^ v16 ^ v17 ^ v20 ^ v23 ^ objc_msgSend_hash(self->_expirationTime, v21, v22);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  targetZone = self->_targetZone;
  v6 = *(fromCopy + 8);
  v18 = fromCopy;
  if (targetZone)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(targetZone, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setTargetZone_(self, fromCopy, v6);
  }

  fromCopy = v18;
LABEL_7:
  v7 = *(fromCopy + 5);
  if (v7)
  {
    objc_msgSend_setCurrentServerContinuationToken_(self, fromCopy, v7);
    fromCopy = v18;
  }

  v8 = *(fromCopy + 4);
  if (v8)
  {
    objc_msgSend_setClientChangeToken_(self, fromCopy, v8);
    fromCopy = v18;
  }

  v9 = *(fromCopy + 92);
  if ((v9 & 4) != 0)
  {
    self->_deviceCount = *(fromCopy + 12);
    *&self->_has |= 4u;
    v9 = *(fromCopy + 92);
    if ((v9 & 1) == 0)
    {
LABEL_13:
      if ((v9 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(fromCopy + 92) & 1) == 0)
  {
    goto LABEL_13;
  }

  self->_assetQuotaUsage = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 92) & 2) != 0)
  {
LABEL_14:
    self->_metadataQuotaUsage = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_15:
  capabilities = self->_capabilities;
  v11 = *(fromCopy + 3);
  if (capabilities)
  {
    if (!v11)
    {
      goto LABEL_24;
    }

    objc_msgSend_mergeFrom_(capabilities, fromCopy, v11);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_24;
    }

    objc_msgSend_setCapabilities_(self, fromCopy, v11);
  }

  fromCopy = v18;
LABEL_24:
  v12 = *(fromCopy + 92);
  if ((v12 & 0x20) != 0)
  {
    self->_zoneishPcsNeedsRolled = *(fromCopy + 90);
    *&self->_has |= 0x20u;
    v12 = *(fromCopy + 92);
  }

  if ((v12 & 0x10) != 0)
  {
    self->_zoneKeyRollAllowed = *(fromCopy + 89);
    *&self->_has |= 0x10u;
  }

  zonePcsModificationTime = self->_zonePcsModificationTime;
  v14 = *(fromCopy + 10);
  if (zonePcsModificationTime)
  {
    if (!v14)
    {
      goto LABEL_34;
    }

    objc_msgSend_mergeFrom_(zonePcsModificationTime, fromCopy, v14);
  }

  else
  {
    if (!v14)
    {
      goto LABEL_34;
    }

    objc_msgSend_setZonePcsModificationTime_(self, fromCopy, v14);
  }

  fromCopy = v18;
LABEL_34:
  v15 = *(fromCopy + 9);
  if (v15)
  {
    objc_msgSend_setZonePcsModificationDevice_(self, fromCopy, v15);
    fromCopy = v18;
  }

  if ((*(fromCopy + 92) & 8) != 0)
  {
    self->_expired = *(fromCopy + 88);
    *&self->_has |= 8u;
  }

  expirationTime = self->_expirationTime;
  v17 = *(fromCopy + 7);
  if (expirationTime)
  {
    if (v17)
    {
      objc_msgSend_mergeFrom_(expirationTime, fromCopy, v17);
    }
  }

  else if (v17)
  {
    objc_msgSend_setExpirationTime_(self, fromCopy, v17);
  }

  MEMORY[0x2821F96F8]();
}

@end