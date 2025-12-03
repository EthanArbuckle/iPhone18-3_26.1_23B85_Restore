@interface CKCDPCodeServiceRequestRequestContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)databaseEnvironmentAsString:(int)string;
- (id)databaseTypeAsString:(int)string;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDatabaseEnvironment:(id)environment;
- (int)StringAsDatabaseType:(id)type;
- (int)databaseEnvironment;
- (int)databaseType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDatabaseEnvironment:(BOOL)environment;
- (void)setHasDatabaseType:(BOOL)type;
- (void)setHasInternalBuild:(BOOL)build;
- (void)writeTo:(id)to;
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

- (void)setHasDatabaseEnvironment:(BOOL)environment
{
  if (environment)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)databaseEnvironmentAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"production";
    }

    else
    {
      v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
    }
  }

  else
  {
    v4 = @"sandbox";
  }

  return v4;
}

- (int)StringAsDatabaseEnvironment:(id)environment
{
  environmentCopy = environment;
  if (objc_msgSend_isEqualToString_(environmentCopy, v4, @"sandbox"))
  {
    isEqualToString = 0;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(environmentCopy, v5, @"production");
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

- (void)setHasDatabaseType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)databaseTypeAsString:(int)string
{
  if (string >= 6)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854C768[string];
  }

  return v4;
}

- (int)StringAsDatabaseType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"privateDatabase"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"publicDatabase"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"sharedDatabase"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v8, @"orgDatabase"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v9, @"teamDatabase"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v10, @"gameDatabase"))
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setHasInternalBuild:(BOOL)build
{
  if (build)
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_userId)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_containerName)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    databaseEnvironment = self->_databaseEnvironment;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    databaseType = self->_databaseType;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
  }

  if (self->_deviceId)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_applicationBundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_clientInfo)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (*&self->_has)
  {
    dsid = self->_dsid;
    PBDataWriterWriteUint64Field();
    toCopy = v10;
  }

  if (self->_userAgent)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_operationGroup)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_databaseOwnerId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    internalBuild = self->_internalBuild;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  userId = self->_userId;
  v15 = toCopy;
  if (userId)
  {
    objc_msgSend_setUserId_(toCopy, v5, userId);
    toCopy = v15;
  }

  containerName = self->_containerName;
  if (containerName)
  {
    objc_msgSend_setContainerName_(v15, v5, containerName);
    toCopy = v15;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 10) = self->_databaseEnvironment;
    *(toCopy + 100) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 14) = self->_databaseType;
    *(toCopy + 100) |= 4u;
  }

  deviceId = self->_deviceId;
  if (deviceId)
  {
    objc_msgSend_setDeviceId_(v15, v5, deviceId);
    toCopy = v15;
  }

  applicationBundleId = self->_applicationBundleId;
  if (applicationBundleId)
  {
    objc_msgSend_setApplicationBundleId_(v15, v5, applicationBundleId);
    toCopy = v15;
  }

  clientInfo = self->_clientInfo;
  if (clientInfo)
  {
    objc_msgSend_setClientInfo_(v15, v5, clientInfo);
    toCopy = v15;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_dsid;
    *(toCopy + 100) |= 1u;
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    objc_msgSend_setUserAgent_(v15, v5, userAgent);
    toCopy = v15;
  }

  operationGroup = self->_operationGroup;
  if (operationGroup)
  {
    objc_msgSend_setOperationGroup_(v15, v5, operationGroup);
    toCopy = v15;
  }

  databaseOwnerId = self->_databaseOwnerId;
  if (databaseOwnerId)
  {
    objc_msgSend_setDatabaseOwnerId_(v15, v5, databaseOwnerId);
    toCopy = v15;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 96) = self->_internalBuild;
    *(toCopy + 100) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_userId, v11, zone);
  v13 = *(v10 + 88);
  *(v10 + 88) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_containerName, v14, zone);
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

  v19 = objc_msgSend_copyWithZone_(self->_deviceId, v17, zone);
  v20 = *(v10 + 64);
  *(v10 + 64) = v19;

  v22 = objc_msgSend_copyWithZone_(self->_applicationBundleId, v21, zone);
  v23 = *(v10 + 16);
  *(v10 + 16) = v22;

  v25 = objc_msgSend_copyWithZone_(self->_clientInfo, v24, zone);
  v26 = *(v10 + 24);
  *(v10 + 24) = v25;

  if (*&self->_has)
  {
    *(v10 + 8) = self->_dsid;
    *(v10 + 100) |= 1u;
  }

  v28 = objc_msgSend_copyWithZone_(self->_userAgent, v27, zone);
  v29 = *(v10 + 80);
  *(v10 + 80) = v28;

  v31 = objc_msgSend_copyWithZone_(self->_operationGroup, v30, zone);
  v32 = *(v10 + 72);
  *(v10 + 72) = v31;

  v34 = objc_msgSend_copyWithZone_(self->_databaseOwnerId, v33, zone);
  v35 = *(v10 + 48);
  *(v10 + 48) = v34;

  if ((*&self->_has & 8) != 0)
  {
    *(v10 + 96) = self->_internalBuild;
    *(v10 + 100) |= 8u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_35;
  }

  userId = self->_userId;
  v9 = equalCopy[11];
  if (userId | v9)
  {
    if (!objc_msgSend_isEqual_(userId, v7, v9))
    {
      goto LABEL_35;
    }
  }

  containerName = self->_containerName;
  v11 = equalCopy[4];
  if (containerName | v11)
  {
    if (!objc_msgSend_isEqual_(containerName, v7, v11))
    {
      goto LABEL_35;
    }
  }

  v12 = *(equalCopy + 100);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 100) & 2) == 0 || self->_databaseEnvironment != *(equalCopy + 10))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 100) & 2) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 100) & 4) == 0 || self->_databaseType != *(equalCopy + 14))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 100) & 4) != 0)
  {
    goto LABEL_35;
  }

  deviceId = self->_deviceId;
  v14 = equalCopy[8];
  if (deviceId | v14 && !objc_msgSend_isEqual_(deviceId, v7, v14))
  {
    goto LABEL_35;
  }

  applicationBundleId = self->_applicationBundleId;
  v16 = equalCopy[2];
  if (applicationBundleId | v16)
  {
    if (!objc_msgSend_isEqual_(applicationBundleId, v7, v16))
    {
      goto LABEL_35;
    }
  }

  clientInfo = self->_clientInfo;
  v18 = equalCopy[3];
  if (clientInfo | v18)
  {
    if (!objc_msgSend_isEqual_(clientInfo, v7, v18))
    {
      goto LABEL_35;
    }
  }

  v19 = *(equalCopy + 100);
  if (*&self->_has)
  {
    if ((*(equalCopy + 100) & 1) == 0 || self->_dsid != equalCopy[1])
    {
      goto LABEL_35;
    }
  }

  else if (*(equalCopy + 100))
  {
    goto LABEL_35;
  }

  userAgent = self->_userAgent;
  v21 = equalCopy[10];
  if (userAgent | v21 && !objc_msgSend_isEqual_(userAgent, v7, v21))
  {
    goto LABEL_35;
  }

  operationGroup = self->_operationGroup;
  v23 = equalCopy[9];
  if (operationGroup | v23)
  {
    if (!objc_msgSend_isEqual_(operationGroup, v7, v23))
    {
      goto LABEL_35;
    }
  }

  databaseOwnerId = self->_databaseOwnerId;
  v25 = equalCopy[6];
  if (databaseOwnerId | v25)
  {
    if (!objc_msgSend_isEqual_(databaseOwnerId, v7, v25))
    {
      goto LABEL_35;
    }
  }

  v26 = (*(equalCopy + 100) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 100) & 8) == 0)
    {
LABEL_35:
      v26 = 0;
      goto LABEL_36;
    }

    if (self->_internalBuild)
    {
      if ((equalCopy[12] & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 96))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 11);
  v16 = fromCopy;
  if (v5)
  {
    objc_msgSend_setUserId_(self, fromCopy, v5);
    fromCopy = v16;
  }

  v6 = *(fromCopy + 4);
  if (v6)
  {
    objc_msgSend_setContainerName_(self, fromCopy, v6);
    fromCopy = v16;
  }

  v7 = *(fromCopy + 100);
  if ((v7 & 2) != 0)
  {
    self->_databaseEnvironment = *(fromCopy + 10);
    *&self->_has |= 2u;
    v7 = *(fromCopy + 100);
  }

  if ((v7 & 4) != 0)
  {
    self->_databaseType = *(fromCopy + 14);
    *&self->_has |= 4u;
  }

  v8 = *(fromCopy + 8);
  if (v8)
  {
    objc_msgSend_setDeviceId_(self, fromCopy, v8);
    fromCopy = v16;
  }

  v9 = *(fromCopy + 2);
  if (v9)
  {
    objc_msgSend_setApplicationBundleId_(self, fromCopy, v9);
    fromCopy = v16;
  }

  v10 = *(fromCopy + 3);
  if (v10)
  {
    objc_msgSend_setClientInfo_(self, fromCopy, v10);
    fromCopy = v16;
  }

  if (*(fromCopy + 100))
  {
    self->_dsid = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v11 = *(fromCopy + 10);
  if (v11)
  {
    objc_msgSend_setUserAgent_(self, fromCopy, v11);
    fromCopy = v16;
  }

  operationGroup = self->_operationGroup;
  v13 = *(fromCopy + 9);
  if (operationGroup)
  {
    if (!v13)
    {
      goto LABEL_25;
    }

    objc_msgSend_mergeFrom_(operationGroup, fromCopy, v13);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_25;
    }

    objc_msgSend_setOperationGroup_(self, fromCopy, v13);
  }

  fromCopy = v16;
LABEL_25:
  databaseOwnerId = self->_databaseOwnerId;
  v15 = *(fromCopy + 6);
  if (databaseOwnerId)
  {
    if (!v15)
    {
      goto LABEL_31;
    }

    objc_msgSend_mergeFrom_(databaseOwnerId, fromCopy, v15);
  }

  else
  {
    if (!v15)
    {
      goto LABEL_31;
    }

    objc_msgSend_setDatabaseOwnerId_(self, fromCopy, v15);
  }

  fromCopy = v16;
LABEL_31:
  if ((*(fromCopy + 100) & 8) != 0)
  {
    self->_internalBuild = *(fromCopy + 96);
    *&self->_has |= 8u;
  }

  MEMORY[0x2821F96F8]();
}

@end