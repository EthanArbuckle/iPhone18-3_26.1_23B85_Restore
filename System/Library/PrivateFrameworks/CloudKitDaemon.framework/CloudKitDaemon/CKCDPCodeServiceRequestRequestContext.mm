@interface CKCDPCodeServiceRequestRequestContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)databaseEnvironmentAsString:(int)a3;
- (id)databaseTypeAsString:(int)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDatabaseEnvironment:(id)a3;
- (int)StringAsDatabaseType:(id)a3;
- (int)databaseEnvironment;
- (int)databaseType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDatabaseEnvironment:(BOOL)a3;
- (void)setHasDatabaseType:(BOOL)a3;
- (void)setHasInternalBuild:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKCDPCodeServiceRequestRequestContext

- (int)databaseEnvironment
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_databaseEnvironment;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDatabaseEnvironment:(BOOL)a3
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

- (id)databaseEnvironmentAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"production";
    }

    else
    {
      v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
    }
  }

  else
  {
    v4 = @"sandbox";
  }

  return v4;
}

- (int)StringAsDatabaseEnvironment:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"sandbox"))
  {
    isEqualToString = 0;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v3, v5, @"production");
  }

  return isEqualToString;
}

- (int)databaseType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_databaseType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDatabaseType:(BOOL)a3
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

- (id)databaseTypeAsString:(int)a3
{
  if (a3 >= 6)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854C768[a3];
  }

  return v4;
}

- (int)StringAsDatabaseType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"privateDatabase"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"publicDatabase"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"sharedDatabase"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, @"orgDatabase"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v3, v9, @"teamDatabase"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(v3, v10, @"gameDatabase"))
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setHasInternalBuild:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPCodeServiceRequestRequestContext;
  v4 = [(CKCDPCodeServiceRequestRequestContext *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  userId = self->_userId;
  if (userId)
  {
    objc_msgSend_setObject_forKey_(v4, v5, userId, @"userId");
  }

  containerName = self->_containerName;
  if (containerName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, containerName, @"containerName");
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    databaseEnvironment = self->_databaseEnvironment;
    if (databaseEnvironment)
    {
      if (databaseEnvironment == 1)
      {
        v11 = @"production";
        objc_msgSend_setObject_forKey_(v6, v5, @"production", @"databaseEnvironment");
      }

      else
      {
        v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_databaseEnvironment);
        objc_msgSend_setObject_forKey_(v6, v12, v11, @"databaseEnvironment");
      }
    }

    else
    {
      v11 = @"sandbox";
      objc_msgSend_setObject_forKey_(v6, v5, @"sandbox", @"databaseEnvironment");
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    databaseType = self->_databaseType;
    if (databaseType >= 6)
    {
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_databaseType);
    }

    else
    {
      v14 = off_27854C768[databaseType];
    }

    objc_msgSend_setObject_forKey_(v6, v5, v14, @"databaseType");
  }

  deviceId = self->_deviceId;
  if (deviceId)
  {
    objc_msgSend_setObject_forKey_(v6, v5, deviceId, @"deviceId");
  }

  applicationBundleId = self->_applicationBundleId;
  if (applicationBundleId)
  {
    objc_msgSend_setObject_forKey_(v6, v5, applicationBundleId, @"applicationBundleId");
  }

  clientInfo = self->_clientInfo;
  if (clientInfo)
  {
    objc_msgSend_setObject_forKey_(v6, v5, clientInfo, @"clientInfo");
  }

  if (*&self->_has)
  {
    v18 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v5, self->_dsid);
    objc_msgSend_setObject_forKey_(v6, v19, v18, @"dsid");
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    objc_msgSend_setObject_forKey_(v6, v5, userAgent, @"userAgent");
  }

  operationGroup = self->_operationGroup;
  if (operationGroup)
  {
    v22 = objc_msgSend_dictionaryRepresentation(operationGroup, v5, userAgent);
    objc_msgSend_setObject_forKey_(v6, v23, v22, @"operationGroup");
  }

  databaseOwnerId = self->_databaseOwnerId;
  if (databaseOwnerId)
  {
    v25 = objc_msgSend_dictionaryRepresentation(databaseOwnerId, v5, userAgent);
    objc_msgSend_setObject_forKey_(v6, v26, v25, @"databaseOwnerId");
  }

  if ((*&self->_has & 8) != 0)
  {
    v27 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_internalBuild);
    objc_msgSend_setObject_forKey_(v6, v28, v27, @"internalBuild");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_userId)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_containerName)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    databaseEnvironment = self->_databaseEnvironment;
    PBDataWriterWriteInt32Field();
    v4 = v10;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    databaseType = self->_databaseType;
    PBDataWriterWriteInt32Field();
    v4 = v10;
  }

  if (self->_deviceId)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_applicationBundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_clientInfo)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (*&self->_has)
  {
    dsid = self->_dsid;
    PBDataWriterWriteUint64Field();
    v4 = v10;
  }

  if (self->_userAgent)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_operationGroup)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_databaseOwnerId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    internalBuild = self->_internalBuild;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  userId = self->_userId;
  v15 = v4;
  if (userId)
  {
    objc_msgSend_setUserId_(v4, v5, userId);
    v4 = v15;
  }

  containerName = self->_containerName;
  if (containerName)
  {
    objc_msgSend_setContainerName_(v15, v5, containerName);
    v4 = v15;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 10) = self->_databaseEnvironment;
    *(v4 + 100) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 14) = self->_databaseType;
    *(v4 + 100) |= 4u;
  }

  deviceId = self->_deviceId;
  if (deviceId)
  {
    objc_msgSend_setDeviceId_(v15, v5, deviceId);
    v4 = v15;
  }

  applicationBundleId = self->_applicationBundleId;
  if (applicationBundleId)
  {
    objc_msgSend_setApplicationBundleId_(v15, v5, applicationBundleId);
    v4 = v15;
  }

  clientInfo = self->_clientInfo;
  if (clientInfo)
  {
    objc_msgSend_setClientInfo_(v15, v5, clientInfo);
    v4 = v15;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_dsid;
    *(v4 + 100) |= 1u;
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    objc_msgSend_setUserAgent_(v15, v5, userAgent);
    v4 = v15;
  }

  operationGroup = self->_operationGroup;
  if (operationGroup)
  {
    objc_msgSend_setOperationGroup_(v15, v5, operationGroup);
    v4 = v15;
  }

  databaseOwnerId = self->_databaseOwnerId;
  if (databaseOwnerId)
  {
    objc_msgSend_setDatabaseOwnerId_(v15, v5, databaseOwnerId);
    v4 = v15;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 96) = self->_internalBuild;
    *(v4 + 100) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_userId, v11, a3);
  v13 = *(v10 + 88);
  *(v10 + 88) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_containerName, v14, a3);
  v16 = *(v10 + 32);
  *(v10 + 32) = v15;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 40) = self->_databaseEnvironment;
    *(v10 + 100) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v10 + 56) = self->_databaseType;
    *(v10 + 100) |= 4u;
  }

  v19 = objc_msgSend_copyWithZone_(self->_deviceId, v17, a3);
  v20 = *(v10 + 64);
  *(v10 + 64) = v19;

  v22 = objc_msgSend_copyWithZone_(self->_applicationBundleId, v21, a3);
  v23 = *(v10 + 16);
  *(v10 + 16) = v22;

  v25 = objc_msgSend_copyWithZone_(self->_clientInfo, v24, a3);
  v26 = *(v10 + 24);
  *(v10 + 24) = v25;

  if (*&self->_has)
  {
    *(v10 + 8) = self->_dsid;
    *(v10 + 100) |= 1u;
  }

  v28 = objc_msgSend_copyWithZone_(self->_userAgent, v27, a3);
  v29 = *(v10 + 80);
  *(v10 + 80) = v28;

  v31 = objc_msgSend_copyWithZone_(self->_operationGroup, v30, a3);
  v32 = *(v10 + 72);
  *(v10 + 72) = v31;

  v34 = objc_msgSend_copyWithZone_(self->_databaseOwnerId, v33, a3);
  v35 = *(v10 + 48);
  *(v10 + 48) = v34;

  if ((*&self->_has & 8) != 0)
  {
    *(v10 + 96) = self->_internalBuild;
    *(v10 + 100) |= 8u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_35;
  }

  userId = self->_userId;
  v9 = v4[11];
  if (userId | v9)
  {
    if (!objc_msgSend_isEqual_(userId, v7, v9))
    {
      goto LABEL_35;
    }
  }

  containerName = self->_containerName;
  v11 = v4[4];
  if (containerName | v11)
  {
    if (!objc_msgSend_isEqual_(containerName, v7, v11))
    {
      goto LABEL_35;
    }
  }

  v12 = *(v4 + 100);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 100) & 2) == 0 || self->_databaseEnvironment != *(v4 + 10))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 100) & 2) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 100) & 4) == 0 || self->_databaseType != *(v4 + 14))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 100) & 4) != 0)
  {
    goto LABEL_35;
  }

  deviceId = self->_deviceId;
  v14 = v4[8];
  if (deviceId | v14 && !objc_msgSend_isEqual_(deviceId, v7, v14))
  {
    goto LABEL_35;
  }

  applicationBundleId = self->_applicationBundleId;
  v16 = v4[2];
  if (applicationBundleId | v16)
  {
    if (!objc_msgSend_isEqual_(applicationBundleId, v7, v16))
    {
      goto LABEL_35;
    }
  }

  clientInfo = self->_clientInfo;
  v18 = v4[3];
  if (clientInfo | v18)
  {
    if (!objc_msgSend_isEqual_(clientInfo, v7, v18))
    {
      goto LABEL_35;
    }
  }

  v19 = *(v4 + 100);
  if (*&self->_has)
  {
    if ((*(v4 + 100) & 1) == 0 || self->_dsid != v4[1])
    {
      goto LABEL_35;
    }
  }

  else if (*(v4 + 100))
  {
    goto LABEL_35;
  }

  userAgent = self->_userAgent;
  v21 = v4[10];
  if (userAgent | v21 && !objc_msgSend_isEqual_(userAgent, v7, v21))
  {
    goto LABEL_35;
  }

  operationGroup = self->_operationGroup;
  v23 = v4[9];
  if (operationGroup | v23)
  {
    if (!objc_msgSend_isEqual_(operationGroup, v7, v23))
    {
      goto LABEL_35;
    }
  }

  databaseOwnerId = self->_databaseOwnerId;
  v25 = v4[6];
  if (databaseOwnerId | v25)
  {
    if (!objc_msgSend_isEqual_(databaseOwnerId, v7, v25))
    {
      goto LABEL_35;
    }
  }

  v26 = (*(v4 + 100) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 100) & 8) == 0)
    {
LABEL_35:
      v26 = 0;
      goto LABEL_36;
    }

    if (self->_internalBuild)
    {
      if ((v4[12] & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 96))
    {
      goto LABEL_35;
    }

    v26 = 1;
  }

LABEL_36:

  return v26;
}

- (unint64_t)hash
{
  v31 = objc_msgSend_hash(self->_userId, a2, v2);
  v30 = objc_msgSend_hash(self->_containerName, v4, v5);
  if ((*&self->_has & 2) != 0)
  {
    v29 = 2654435761 * self->_databaseEnvironment;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v8 = objc_msgSend_hash(self->_deviceId, v6, v7, 2654435761 * self->_databaseType);
      goto LABEL_6;
    }
  }

  v8 = objc_msgSend_hash(self->_deviceId, v6, v7, 0);
LABEL_6:
  v11 = v8;
  v12 = objc_msgSend_hash(self->_applicationBundleId, v9, v10);
  v17 = objc_msgSend_hash(self->_clientInfo, v13, v14);
  if (*&self->_has)
  {
    v18 = 2654435761u * self->_dsid;
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_msgSend_hash(self->_userAgent, v15, v16);
  v22 = objc_msgSend_hash(self->_operationGroup, v20, v21);
  v25 = objc_msgSend_hash(self->_databaseOwnerId, v23, v24);
  if ((*&self->_has & 8) != 0)
  {
    v26 = 2654435761 * self->_internalBuild;
  }

  else
  {
    v26 = 0;
  }

  return v30 ^ v31 ^ v29 ^ v28 ^ v11 ^ v12 ^ v17 ^ v18 ^ v19 ^ v22 ^ v25 ^ v26;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 11);
  v16 = v4;
  if (v5)
  {
    objc_msgSend_setUserId_(self, v4, v5);
    v4 = v16;
  }

  v6 = *(v4 + 4);
  if (v6)
  {
    objc_msgSend_setContainerName_(self, v4, v6);
    v4 = v16;
  }

  v7 = *(v4 + 100);
  if ((v7 & 2) != 0)
  {
    self->_databaseEnvironment = *(v4 + 10);
    *&self->_has |= 2u;
    v7 = *(v4 + 100);
  }

  if ((v7 & 4) != 0)
  {
    self->_databaseType = *(v4 + 14);
    *&self->_has |= 4u;
  }

  v8 = *(v4 + 8);
  if (v8)
  {
    objc_msgSend_setDeviceId_(self, v4, v8);
    v4 = v16;
  }

  v9 = *(v4 + 2);
  if (v9)
  {
    objc_msgSend_setApplicationBundleId_(self, v4, v9);
    v4 = v16;
  }

  v10 = *(v4 + 3);
  if (v10)
  {
    objc_msgSend_setClientInfo_(self, v4, v10);
    v4 = v16;
  }

  if (*(v4 + 100))
  {
    self->_dsid = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v11 = *(v4 + 10);
  if (v11)
  {
    objc_msgSend_setUserAgent_(self, v4, v11);
    v4 = v16;
  }

  operationGroup = self->_operationGroup;
  v13 = *(v4 + 9);
  if (operationGroup)
  {
    if (!v13)
    {
      goto LABEL_25;
    }

    objc_msgSend_mergeFrom_(operationGroup, v4, v13);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_25;
    }

    objc_msgSend_setOperationGroup_(self, v4, v13);
  }

  v4 = v16;
LABEL_25:
  databaseOwnerId = self->_databaseOwnerId;
  v15 = *(v4 + 6);
  if (databaseOwnerId)
  {
    if (!v15)
    {
      goto LABEL_31;
    }

    objc_msgSend_mergeFrom_(databaseOwnerId, v4, v15);
  }

  else
  {
    if (!v15)
    {
      goto LABEL_31;
    }

    objc_msgSend_setDatabaseOwnerId_(self, v4, v15);
  }

  v4 = v16;
LABEL_31:
  if ((*(v4 + 100) & 8) != 0)
  {
    self->_internalBuild = *(v4 + 96);
    *&self->_has |= 8u;
  }

  MEMORY[0x2821F96F8]();
}

@end