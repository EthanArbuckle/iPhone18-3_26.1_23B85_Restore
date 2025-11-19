@interface CKDPRequestOperationHeader
- (BOOL)isEqual:(id)a3;
- (id)_applicationContainerEnvironmentCKLogValue;
- (id)_isolationLevelCKLogValue;
- (id)_targetDatabaseCKLogValue;
- (id)applicationContainerEnvironmentAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)isolationLevelAsString:(int)a3;
- (id)requestOriginatorAsString:(int)a3;
- (id)targetDatabaseAsString:(int)a3;
- (int)StringAsApplicationContainerEnvironment:(id)a3;
- (int)StringAsIsolationLevel:(id)a3;
- (int)StringAsRequestOriginator:(id)a3;
- (int)StringAsTargetDatabase:(id)a3;
- (int)applicationContainerEnvironment;
- (int)isolationLevel;
- (int)requestOriginator;
- (int)targetDatabase;
- (unint64_t)hash;
- (void)addActiveThrottlingLabel:(id)a3;
- (void)addServiceIdentityKeyIDs:(id)a3;
- (void)addSupplementalZoneInfos:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasApplicationContainerEnvironment:(BOOL)a3;
- (void)setHasDeviceProtocolVersion:(BOOL)a3;
- (void)setHasDeviceSoftwareIsAppleInternal:(BOOL)a3;
- (void)setHasEntitlementsValidated:(BOOL)a3;
- (void)setHasGlobalConfigVersion:(BOOL)a3;
- (void)setHasIsolationLevel:(BOOL)a3;
- (void)setHasOperationGroupQuantity:(BOOL)a3;
- (void)setHasRequestOriginator:(BOOL)a3;
- (void)setHasTargetDatabase:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRequestOperationHeader

- (id)_applicationContainerEnvironmentCKLogValue
{
  v3 = objc_msgSend_applicationContainerEnvironment(self, a2, v2);
  if (v3 == 1)
  {
    v5 = @"production";
  }

  else if (v3 == 2)
  {
    v5 = @"sandbox";
  }

  else
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", v3);
  }

  return v5;
}

- (id)_isolationLevelCKLogValue
{
  v3 = objc_msgSend_isolationLevel(self, a2, v2);
  if (v3 == 1)
  {
    v5 = @"zone";
  }

  else if (v3 == 2)
  {
    v5 = @"operation";
  }

  else
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", v3);
  }

  return v5;
}

- (id)_targetDatabaseCKLogValue
{
  v3 = objc_msgSend_targetDatabase(self, a2, v2);
  if ((v3 - 1) >= 4)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", v3);
  }

  else
  {
    v5 = *(&off_2785485B8 + (v3 - 1));
  }

  return v5;
}

- (void)setHasGlobalConfigVersion:(BOOL)a3
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

- (void)setHasDeviceProtocolVersion:(BOOL)a3
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

- (int)applicationContainerEnvironment
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_applicationContainerEnvironment;
  }

  else
  {
    return 2;
  }
}

- (void)setHasApplicationContainerEnvironment:(BOOL)a3
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

- (id)applicationContainerEnvironmentAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"production";
  }

  else if (a3 == 2)
  {
    v4 = @"sandbox";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  return v4;
}

- (int)StringAsApplicationContainerEnvironment:(id)a3
{
  v3 = a3;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(v3, v4, @"production") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v3, v5, @"sandbox"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (int)targetDatabase
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_targetDatabase;
  }

  else
  {
    return 1;
  }
}

- (void)setHasTargetDatabase:(BOOL)a3
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

- (id)targetDatabaseAsString:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CBB0[a3 - 1];
  }

  return v4;
}

- (int)StringAsTargetDatabase:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"privateDB"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"publicDB"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"sharedDB"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, @"orgDB"))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int)isolationLevel
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_isolationLevel;
  }

  else
  {
    return 1;
  }
}

- (void)setHasIsolationLevel:(BOOL)a3
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

- (id)isolationLevelAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"zone";
  }

  else if (a3 == 2)
  {
    v4 = @"operation";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  return v4;
}

- (int)StringAsIsolationLevel:(id)a3
{
  v3 = a3;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(v3, v4, @"zone") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v3, v5, @"operation"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (void)setHasOperationGroupQuantity:(BOOL)a3
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

- (void)addServiceIdentityKeyIDs:(id)a3
{
  v4 = a3;
  serviceIdentityKeyIDs = self->_serviceIdentityKeyIDs;
  v8 = v4;
  if (!serviceIdentityKeyIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_serviceIdentityKeyIDs;
    self->_serviceIdentityKeyIDs = v6;

    v4 = v8;
    serviceIdentityKeyIDs = self->_serviceIdentityKeyIDs;
  }

  objc_msgSend_addObject_(serviceIdentityKeyIDs, v4, v4);
}

- (void)setHasDeviceSoftwareIsAppleInternal:(BOOL)a3
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

- (void)addActiveThrottlingLabel:(id)a3
{
  v4 = a3;
  activeThrottlingLabels = self->_activeThrottlingLabels;
  v8 = v4;
  if (!activeThrottlingLabels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_activeThrottlingLabels;
    self->_activeThrottlingLabels = v6;

    v4 = v8;
    activeThrottlingLabels = self->_activeThrottlingLabels;
  }

  objc_msgSend_addObject_(activeThrottlingLabels, v4, v4);
}

- (void)setHasEntitlementsValidated:(BOOL)a3
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

- (int)requestOriginator
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_requestOriginator;
  }

  else
  {
    return 1;
  }
}

- (void)setHasRequestOriginator:(BOOL)a3
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

- (id)requestOriginatorAsString:(int)a3
{
  if ((a3 - 1) >= 6)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CBD0[a3 - 1];
  }

  return v4;
}

- (int)StringAsRequestOriginator:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"unknown"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"cloudd"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"iCloudApp"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, @"syncEngine"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(v3, v9, @"adopter"))
  {
    v6 = 5;
  }

  else if (objc_msgSend_isEqualToString_(v3, v10, @"ckctl"))
  {
    v6 = 6;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)addSupplementalZoneInfos:(id)a3
{
  v4 = a3;
  supplementalZoneInfos = self->_supplementalZoneInfos;
  v8 = v4;
  if (!supplementalZoneInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_supplementalZoneInfos;
    self->_supplementalZoneInfos = v6;

    v4 = v8;
    supplementalZoneInfos = self->_supplementalZoneInfos;
  }

  objc_msgSend_addObject_(supplementalZoneInfos, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRequestOperationHeader;
  v4 = [(CKDPRequestOperationHeader *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  userToken = self->_userToken;
  if (userToken)
  {
    objc_msgSend_setObject_forKey_(v4, v5, userToken, @"userToken");
  }

  applicationContainer = self->_applicationContainer;
  if (applicationContainer)
  {
    objc_msgSend_setObject_forKey_(v6, v5, applicationContainer, @"applicationContainer");
  }

  applicationBundle = self->_applicationBundle;
  if (applicationBundle)
  {
    objc_msgSend_setObject_forKey_(v6, v5, applicationBundle, @"applicationBundle");
  }

  applicationVersion = self->_applicationVersion;
  if (applicationVersion)
  {
    objc_msgSend_setObject_forKey_(v6, v5, applicationVersion, @"applicationVersion");
  }

  has = self->_has;
  if (has)
  {
    v12 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v5, self->_applicationConfigVersion);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"applicationConfigVersion");

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v14 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v5, self->_globalConfigVersion);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"globalConfigVersion");
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    v17 = objc_msgSend_dictionaryRepresentation(deviceIdentifier, v5, applicationVersion);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"deviceIdentifier");
  }

  deviceSoftwareVersion = self->_deviceSoftwareVersion;
  if (deviceSoftwareVersion)
  {
    objc_msgSend_setObject_forKey_(v6, v5, deviceSoftwareVersion, @"deviceSoftwareVersion");
  }

  deviceHardwareVersion = self->_deviceHardwareVersion;
  if (deviceHardwareVersion)
  {
    objc_msgSend_setObject_forKey_(v6, v5, deviceHardwareVersion, @"deviceHardwareVersion");
  }

  deviceLibraryName = self->_deviceLibraryName;
  if (deviceLibraryName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, deviceLibraryName, @"deviceLibraryName");
  }

  deviceLibraryVersion = self->_deviceLibraryVersion;
  if (deviceLibraryVersion)
  {
    objc_msgSend_setObject_forKey_(v6, v5, deviceLibraryVersion, @"deviceLibraryVersion");
  }

  if ((*&self->_has & 2) != 0)
  {
    v23 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v5, self->_deviceProtocolVersion);
    objc_msgSend_setObject_forKey_(v6, v24, v23, @"deviceProtocolVersion");
  }

  locale = self->_locale;
  if (locale)
  {
    v26 = objc_msgSend_dictionaryRepresentation(locale, v5, deviceLibraryVersion);
    objc_msgSend_setObject_forKey_(v6, v27, v26, @"locale");
  }

  mmcsProtocolVersion = self->_mmcsProtocolVersion;
  if (mmcsProtocolVersion)
  {
    objc_msgSend_setObject_forKey_(v6, v5, mmcsProtocolVersion, @"mmcsProtocolVersion");
  }

  if ((*&self->_has & 0x10) != 0)
  {
    applicationContainerEnvironment = self->_applicationContainerEnvironment;
    if (applicationContainerEnvironment == 1)
    {
      v30 = @"production";
      objc_msgSend_setObject_forKey_(v6, v5, @"production", @"applicationContainerEnvironment");
    }

    else if (applicationContainerEnvironment == 2)
    {
      v30 = @"sandbox";
      objc_msgSend_setObject_forKey_(v6, v5, @"sandbox", @"applicationContainerEnvironment");
    }

    else
    {
      v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_applicationContainerEnvironment);
      objc_msgSend_setObject_forKey_(v6, v31, v30, @"applicationContainerEnvironment");
    }
  }

  clientChangeToken = self->_clientChangeToken;
  if (clientChangeToken)
  {
    objc_msgSend_setObject_forKey_(v6, v5, clientChangeToken, @"clientChangeToken");
  }

  deviceAssignedName = self->_deviceAssignedName;
  if (deviceAssignedName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, deviceAssignedName, @"deviceAssignedName");
  }

  deviceHardwareID = self->_deviceHardwareID;
  if (deviceHardwareID)
  {
    objc_msgSend_setObject_forKey_(v6, v5, deviceHardwareID, @"deviceHardwareID");
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v35 = self->_targetDatabase - 1;
    if (v35 >= 4)
    {
      v36 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_targetDatabase);
    }

    else
    {
      v36 = off_27854CBB0[v35];
    }

    objc_msgSend_setObject_forKey_(v6, v5, v36, @"targetDatabase");
  }

  userIDContainerID = self->_userIDContainerID;
  if (userIDContainerID)
  {
    objc_msgSend_setObject_forKey_(v6, v5, userIDContainerID, @"userIDContainerID");
  }

  if ((*&self->_has & 0x20) != 0)
  {
    isolationLevel = self->_isolationLevel;
    if (isolationLevel == 1)
    {
      v39 = @"zone";
      objc_msgSend_setObject_forKey_(v6, v5, @"zone", @"isolationLevel");
    }

    else if (isolationLevel == 2)
    {
      v39 = @"operation";
      objc_msgSend_setObject_forKey_(v6, v5, @"operation", @"isolationLevel");
    }

    else
    {
      v39 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_isolationLevel);
      objc_msgSend_setObject_forKey_(v6, v40, v39, @"isolationLevel");
    }
  }

  operationGroupName = self->_operationGroupName;
  if (operationGroupName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, operationGroupName, @"operationGroupName");
  }

  if ((*&self->_has & 8) != 0)
  {
    v42 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v5, self->_operationGroupQuantity);
    objc_msgSend_setObject_forKey_(v6, v43, v42, @"operationGroupQuantity");
  }

  serviceIdentityKeyIDs = self->_serviceIdentityKeyIDs;
  if (serviceIdentityKeyIDs)
  {
    objc_msgSend_setObject_forKey_(v6, v5, serviceIdentityKeyIDs, @"serviceIdentityKeyIDs");
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v45 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_deviceSoftwareIsAppleInternal);
    objc_msgSend_setObject_forKey_(v6, v46, v45, @"deviceSoftwareIsAppleInternal");
  }

  assetAuthorizeGetRequestOptions = self->_assetAuthorizeGetRequestOptions;
  if (assetAuthorizeGetRequestOptions)
  {
    v48 = objc_msgSend_dictionaryRepresentation(assetAuthorizeGetRequestOptions, v5, serviceIdentityKeyIDs);
    objc_msgSend_setObject_forKey_(v6, v49, v48, @"assetAuthorizeGetRequestOptions");
  }

  activeThrottlingLabels = self->_activeThrottlingLabels;
  if (activeThrottlingLabels)
  {
    objc_msgSend_setObject_forKey_(v6, v5, activeThrottlingLabels, @"activeThrottlingLabel");
  }

  deviceUDID = self->_deviceUDID;
  if (deviceUDID)
  {
    objc_msgSend_setObject_forKey_(v6, v5, deviceUDID, @"deviceUDID");
  }

  deviceSerialNumber = self->_deviceSerialNumber;
  if (deviceSerialNumber)
  {
    objc_msgSend_setObject_forKey_(v6, v5, deviceSerialNumber, @"deviceSerialNumber");
  }

  v53 = self->_has;
  if ((v53 & 0x200) != 0)
  {
    v54 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_entitlementsValidated);
    objc_msgSend_setObject_forKey_(v6, v55, v54, @"entitlementsValidated");

    v53 = self->_has;
  }

  if ((v53 & 0x40) != 0)
  {
    v56 = self->_requestOriginator - 1;
    if (v56 >= 6)
    {
      v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_requestOriginator);
    }

    else
    {
      v57 = off_27854CBD0[v56];
    }

    objc_msgSend_setObject_forKey_(v6, v5, v57, @"requestOriginator");
  }

  if (objc_msgSend_count(self->_supplementalZoneInfos, v5, deviceSerialNumber))
  {
    v58 = objc_alloc(MEMORY[0x277CBEB18]);
    v61 = objc_msgSend_count(self->_supplementalZoneInfos, v59, v60);
    v63 = objc_msgSend_initWithCapacity_(v58, v62, v61);
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v64 = self->_supplementalZoneInfos;
    v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v78, v82, 16);
    if (v66)
    {
      v69 = v66;
      v70 = *v79;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v79 != v70)
          {
            objc_enumerationMutation(v64);
          }

          v72 = objc_msgSend_dictionaryRepresentation(*(*(&v78 + 1) + 8 * i), v67, v68);
          objc_msgSend_addObject_(v63, v73, v72);
        }

        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v67, &v78, v82, 16);
      }

      while (v69);
    }

    objc_msgSend_setObject_forKey_(v6, v74, v63, @"supplementalZoneInfos");
  }

  v75 = v6;

  v76 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)writeTo:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_userToken)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_applicationContainer)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_applicationBundle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_applicationVersion)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    applicationConfigVersion = self->_applicationConfigVersion;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    globalConfigVersion = self->_globalConfigVersion;
    PBDataWriterWriteUint64Field();
  }

  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_deviceSoftwareVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceHardwareVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceLibraryName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceLibraryVersion)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    deviceProtocolVersion = self->_deviceProtocolVersion;
    PBDataWriterWriteUint64Field();
  }

  if (self->_locale)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_mmcsProtocolVersion)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    applicationContainerEnvironment = self->_applicationContainerEnvironment;
    PBDataWriterWriteInt32Field();
  }

  if (self->_clientChangeToken)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_deviceAssignedName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceHardwareID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x80) != 0)
  {
    targetDatabase = self->_targetDatabase;
    PBDataWriterWriteInt32Field();
  }

  if (self->_userIDContainerID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    isolationLevel = self->_isolationLevel;
    PBDataWriterWriteInt32Field();
  }

  if (self->_operationGroupName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    operationGroupQuantity = self->_operationGroupQuantity;
    PBDataWriterWriteUint64Field();
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = self->_serviceIdentityKeyIDs;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v50, v56, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v51;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v51 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v50 + 1) + 8 * i);
        PBDataWriterWriteDataField();
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v50, v56, 16);
    }

    while (v16);
  }

  if ((*&self->_has & 0x100) != 0)
  {
    deviceSoftwareIsAppleInternal = self->_deviceSoftwareIsAppleInternal;
    PBDataWriterWriteBOOLField();
  }

  if (self->_assetAuthorizeGetRequestOptions)
  {
    PBDataWriterWriteSubmessage();
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v22 = self->_activeThrottlingLabels;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v46, v55, 16);
  if (v24)
  {
    v25 = v24;
    v26 = *v47;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v47 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v46 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v29, &v46, v55, 16);
    }

    while (v25);
  }

  if (self->_deviceUDID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceSerialNumber)
  {
    PBDataWriterWriteStringField();
  }

  v30 = self->_has;
  if ((v30 & 0x200) != 0)
  {
    entitlementsValidated = self->_entitlementsValidated;
    PBDataWriterWriteBOOLField();
    v30 = self->_has;
  }

  if ((v30 & 0x40) != 0)
  {
    requestOriginator = self->_requestOriginator;
    PBDataWriterWriteInt32Field();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v33 = self->_supplementalZoneInfos;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v42, v54, 16);
  if (v35)
  {
    v36 = v35;
    v37 = *v43;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(v33);
        }

        v39 = *(*(&v42 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v40, &v42, v54, 16);
    }

    while (v36);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  userToken = self->_userToken;
  v56 = v4;
  if (userToken)
  {
    objc_msgSend_setUserToken_(v4, v5, userToken);
    v4 = v56;
  }

  applicationContainer = self->_applicationContainer;
  if (applicationContainer)
  {
    objc_msgSend_setApplicationContainer_(v56, v5, applicationContainer);
    v4 = v56;
  }

  applicationBundle = self->_applicationBundle;
  if (applicationBundle)
  {
    objc_msgSend_setApplicationBundle_(v56, v5, applicationBundle);
    v4 = v56;
  }

  applicationVersion = self->_applicationVersion;
  if (applicationVersion)
  {
    objc_msgSend_setApplicationVersion_(v56, v5, applicationVersion);
    v4 = v56;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_applicationConfigVersion;
    *(v4 + 126) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 3) = self->_globalConfigVersion;
    *(v4 + 126) |= 4u;
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    objc_msgSend_setDeviceIdentifier_(v56, v5, deviceIdentifier);
    v4 = v56;
  }

  deviceSoftwareVersion = self->_deviceSoftwareVersion;
  if (deviceSoftwareVersion)
  {
    objc_msgSend_setDeviceSoftwareVersion_(v56, v5, deviceSoftwareVersion);
    v4 = v56;
  }

  deviceHardwareVersion = self->_deviceHardwareVersion;
  if (deviceHardwareVersion)
  {
    objc_msgSend_setDeviceHardwareVersion_(v56, v5, deviceHardwareVersion);
    v4 = v56;
  }

  deviceLibraryName = self->_deviceLibraryName;
  if (deviceLibraryName)
  {
    objc_msgSend_setDeviceLibraryName_(v56, v5, deviceLibraryName);
    v4 = v56;
  }

  deviceLibraryVersion = self->_deviceLibraryVersion;
  if (deviceLibraryVersion)
  {
    objc_msgSend_setDeviceLibraryVersion_(v56, v5, deviceLibraryVersion);
    v4 = v56;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = self->_deviceProtocolVersion;
    *(v4 + 126) |= 2u;
  }

  locale = self->_locale;
  if (locale)
  {
    objc_msgSend_setLocale_(v56, v5, locale);
    v4 = v56;
  }

  mmcsProtocolVersion = self->_mmcsProtocolVersion;
  if (mmcsProtocolVersion)
  {
    objc_msgSend_setMmcsProtocolVersion_(v56, v5, mmcsProtocolVersion);
    v4 = v56;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v4 + 16) = self->_applicationContainerEnvironment;
    *(v4 + 126) |= 0x10u;
  }

  clientChangeToken = self->_clientChangeToken;
  if (clientChangeToken)
  {
    objc_msgSend_setClientChangeToken_(v56, v5, clientChangeToken);
    v4 = v56;
  }

  deviceAssignedName = self->_deviceAssignedName;
  if (deviceAssignedName)
  {
    objc_msgSend_setDeviceAssignedName_(v56, v5, deviceAssignedName);
    v4 = v56;
  }

  deviceHardwareID = self->_deviceHardwareID;
  if (deviceHardwareID)
  {
    objc_msgSend_setDeviceHardwareID_(v56, v5, deviceHardwareID);
    v4 = v56;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(v4 + 56) = self->_targetDatabase;
    *(v4 + 126) |= 0x80u;
  }

  userIDContainerID = self->_userIDContainerID;
  if (userIDContainerID)
  {
    objc_msgSend_setUserIDContainerID_(v56, v5, userIDContainerID);
    v4 = v56;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v4 + 42) = self->_isolationLevel;
    *(v4 + 126) |= 0x20u;
  }

  operationGroupName = self->_operationGroupName;
  if (operationGroupName)
  {
    objc_msgSend_setOperationGroupName_(v56, v5, operationGroupName);
    v4 = v56;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 4) = self->_operationGroupQuantity;
    *(v4 + 126) |= 8u;
  }

  if (objc_msgSend_serviceIdentityKeyIDsCount(self, v5, operationGroupName))
  {
    objc_msgSend_clearServiceIdentityKeyIDs(v56, v23, v24);
    v27 = objc_msgSend_serviceIdentityKeyIDsCount(self, v25, v26);
    if (v27)
    {
      v28 = v27;
      for (i = 0; i != v28; ++i)
      {
        v30 = objc_msgSend_serviceIdentityKeyIDsAtIndex_(self, v23, i);
        objc_msgSend_addServiceIdentityKeyIDs_(v56, v31, v30);
      }
    }
  }

  if ((*&self->_has & 0x100) != 0)
  {
    *(v56 + 248) = self->_deviceSoftwareIsAppleInternal;
    *(v56 + 126) |= 0x100u;
  }

  assetAuthorizeGetRequestOptions = self->_assetAuthorizeGetRequestOptions;
  if (assetAuthorizeGetRequestOptions)
  {
    objc_msgSend_setAssetAuthorizeGetRequestOptions_(v56, v23, assetAuthorizeGetRequestOptions);
  }

  if (objc_msgSend_activeThrottlingLabelsCount(self, v23, assetAuthorizeGetRequestOptions))
  {
    objc_msgSend_clearActiveThrottlingLabels(v56, v33, v34);
    active = objc_msgSend_activeThrottlingLabelsCount(self, v35, v36);
    if (active)
    {
      v38 = active;
      for (j = 0; j != v38; ++j)
      {
        v40 = objc_msgSend_activeThrottlingLabelAtIndex_(self, v33, j);
        objc_msgSend_addActiveThrottlingLabel_(v56, v41, v40);
      }
    }
  }

  deviceUDID = self->_deviceUDID;
  if (deviceUDID)
  {
    objc_msgSend_setDeviceUDID_(v56, v33, deviceUDID);
  }

  deviceSerialNumber = self->_deviceSerialNumber;
  v44 = v56;
  if (deviceSerialNumber)
  {
    objc_msgSend_setDeviceSerialNumber_(v56, v33, deviceSerialNumber);
    v44 = v56;
  }

  v45 = self->_has;
  if ((v45 & 0x200) != 0)
  {
    v44[249] = self->_entitlementsValidated;
    *(v44 + 126) |= 0x200u;
    v45 = self->_has;
  }

  if ((v45 & 0x40) != 0)
  {
    *(v44 + 50) = self->_requestOriginator;
    *(v44 + 126) |= 0x40u;
  }

  if (objc_msgSend_supplementalZoneInfosCount(self, v33, deviceSerialNumber))
  {
    objc_msgSend_clearSupplementalZoneInfos(v56, v46, v47);
    v50 = objc_msgSend_supplementalZoneInfosCount(self, v48, v49);
    if (v50)
    {
      v52 = v50;
      for (k = 0; k != v52; ++k)
      {
        v54 = objc_msgSend_supplementalZoneInfosAtIndex_(self, v51, k);
        objc_msgSend_addSupplementalZoneInfos_(v56, v55, v54);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v114 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_userToken, v11, a3);
  v13 = *(v10 + 240);
  *(v10 + 240) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_applicationContainer, v14, a3);
  v16 = *(v10 + 56);
  *(v10 + 56) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_applicationBundle, v17, a3);
  v19 = *(v10 + 48);
  *(v10 + 48) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_applicationVersion, v20, a3);
  v22 = *(v10 + 72);
  *(v10 + 72) = v21;

  has = self->_has;
  if (has)
  {
    *(v10 + 8) = self->_applicationConfigVersion;
    *(v10 + 252) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v10 + 24) = self->_globalConfigVersion;
    *(v10 + 252) |= 4u;
  }

  v25 = objc_msgSend_copyWithZone_(self->_deviceIdentifier, v23, a3);
  v26 = *(v10 + 120);
  *(v10 + 120) = v25;

  v28 = objc_msgSend_copyWithZone_(self->_deviceSoftwareVersion, v27, a3);
  v29 = *(v10 + 152);
  *(v10 + 152) = v28;

  v31 = objc_msgSend_copyWithZone_(self->_deviceHardwareVersion, v30, a3);
  v32 = *(v10 + 112);
  *(v10 + 112) = v31;

  v34 = objc_msgSend_copyWithZone_(self->_deviceLibraryName, v33, a3);
  v35 = *(v10 + 128);
  *(v10 + 128) = v34;

  v37 = objc_msgSend_copyWithZone_(self->_deviceLibraryVersion, v36, a3);
  v38 = *(v10 + 136);
  *(v10 + 136) = v37;

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 16) = self->_deviceProtocolVersion;
    *(v10 + 252) |= 2u;
  }

  v40 = objc_msgSend_copyWithZone_(self->_locale, v39, a3);
  v41 = *(v10 + 176);
  *(v10 + 176) = v40;

  v43 = objc_msgSend_copyWithZone_(self->_mmcsProtocolVersion, v42, a3);
  v44 = *(v10 + 184);
  *(v10 + 184) = v43;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v10 + 64) = self->_applicationContainerEnvironment;
    *(v10 + 252) |= 0x10u;
  }

  v46 = objc_msgSend_copyWithZone_(self->_clientChangeToken, v45, a3);
  v47 = *(v10 + 88);
  *(v10 + 88) = v46;

  v49 = objc_msgSend_copyWithZone_(self->_deviceAssignedName, v48, a3);
  v50 = *(v10 + 96);
  *(v10 + 96) = v49;

  v52 = objc_msgSend_copyWithZone_(self->_deviceHardwareID, v51, a3);
  v53 = *(v10 + 104);
  *(v10 + 104) = v52;

  if ((*&self->_has & 0x80) != 0)
  {
    *(v10 + 224) = self->_targetDatabase;
    *(v10 + 252) |= 0x80u;
  }

  v55 = objc_msgSend_copyWithZone_(self->_userIDContainerID, v54, a3);
  v56 = *(v10 + 232);
  *(v10 + 232) = v55;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v10 + 168) = self->_isolationLevel;
    *(v10 + 252) |= 0x20u;
  }

  v58 = objc_msgSend_copyWithZone_(self->_operationGroupName, v57, a3);
  v59 = *(v10 + 192);
  *(v10 + 192) = v58;

  if ((*&self->_has & 8) != 0)
  {
    *(v10 + 32) = self->_operationGroupQuantity;
    *(v10 + 252) |= 8u;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v60 = self->_serviceIdentityKeyIDs;
  v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v107, v113, 16);
  if (v62)
  {
    v64 = v62;
    v65 = *v108;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v108 != v65)
        {
          objc_enumerationMutation(v60);
        }

        v67 = objc_msgSend_copyWithZone_(*(*(&v107 + 1) + 8 * i), v63, a3);
        objc_msgSend_addServiceIdentityKeyIDs_(v10, v68, v67);
      }

      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v63, &v107, v113, 16);
    }

    while (v64);
  }

  if ((*&self->_has & 0x100) != 0)
  {
    *(v10 + 248) = self->_deviceSoftwareIsAppleInternal;
    *(v10 + 252) |= 0x100u;
  }

  v70 = objc_msgSend_copyWithZone_(self->_assetAuthorizeGetRequestOptions, v69, a3);
  v71 = *(v10 + 80);
  *(v10 + 80) = v70;

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v72 = self->_activeThrottlingLabels;
  v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v103, v112, 16);
  if (v74)
  {
    v76 = v74;
    v77 = *v104;
    do
    {
      for (j = 0; j != v76; ++j)
      {
        if (*v104 != v77)
        {
          objc_enumerationMutation(v72);
        }

        v79 = objc_msgSend_copyWithZone_(*(*(&v103 + 1) + 8 * j), v75, a3);
        objc_msgSend_addActiveThrottlingLabel_(v10, v80, v79);
      }

      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v75, &v103, v112, 16);
    }

    while (v76);
  }

  v82 = objc_msgSend_copyWithZone_(self->_deviceUDID, v81, a3);
  v83 = *(v10 + 160);
  *(v10 + 160) = v82;

  v85 = objc_msgSend_copyWithZone_(self->_deviceSerialNumber, v84, a3);
  v86 = *(v10 + 144);
  *(v10 + 144) = v85;

  v87 = self->_has;
  if ((v87 & 0x200) != 0)
  {
    *(v10 + 249) = self->_entitlementsValidated;
    *(v10 + 252) |= 0x200u;
    v87 = self->_has;
  }

  if ((v87 & 0x40) != 0)
  {
    *(v10 + 200) = self->_requestOriginator;
    *(v10 + 252) |= 0x40u;
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v88 = self->_supplementalZoneInfos;
  v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v99, v111, 16);
  if (v90)
  {
    v92 = v90;
    v93 = *v100;
    do
    {
      for (k = 0; k != v92; ++k)
      {
        if (*v100 != v93)
        {
          objc_enumerationMutation(v88);
        }

        v95 = objc_msgSend_copyWithZone_(*(*(&v99 + 1) + 8 * k), v91, a3, v99);
        objc_msgSend_addSupplementalZoneInfos_(v10, v96, v95);
      }

      v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v91, &v99, v111, 16);
    }

    while (v92);
  }

  v97 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_90;
  }

  userToken = self->_userToken;
  v9 = v4[30];
  if (userToken | v9)
  {
    if (!objc_msgSend_isEqual_(userToken, v7, v9))
    {
      goto LABEL_90;
    }
  }

  applicationContainer = self->_applicationContainer;
  v11 = v4[7];
  if (applicationContainer | v11)
  {
    if (!objc_msgSend_isEqual_(applicationContainer, v7, v11))
    {
      goto LABEL_90;
    }
  }

  applicationBundle = self->_applicationBundle;
  v13 = v4[6];
  if (applicationBundle | v13)
  {
    if (!objc_msgSend_isEqual_(applicationBundle, v7, v13))
    {
      goto LABEL_90;
    }
  }

  applicationVersion = self->_applicationVersion;
  v15 = v4[9];
  if (applicationVersion | v15)
  {
    if (!objc_msgSend_isEqual_(applicationVersion, v7, v15))
    {
      goto LABEL_90;
    }
  }

  has = self->_has;
  v17 = *(v4 + 126);
  if (has)
  {
    if ((v17 & 1) == 0 || self->_applicationConfigVersion != v4[1])
    {
      goto LABEL_90;
    }
  }

  else if (v17)
  {
    goto LABEL_90;
  }

  if ((has & 4) != 0)
  {
    if ((v17 & 4) == 0 || self->_globalConfigVersion != v4[3])
    {
      goto LABEL_90;
    }
  }

  else if ((v17 & 4) != 0)
  {
    goto LABEL_90;
  }

  deviceIdentifier = self->_deviceIdentifier;
  v19 = v4[15];
  if (deviceIdentifier | v19 && !objc_msgSend_isEqual_(deviceIdentifier, v7, v19))
  {
    goto LABEL_90;
  }

  deviceSoftwareVersion = self->_deviceSoftwareVersion;
  v21 = v4[19];
  if (deviceSoftwareVersion | v21)
  {
    if (!objc_msgSend_isEqual_(deviceSoftwareVersion, v7, v21))
    {
      goto LABEL_90;
    }
  }

  deviceHardwareVersion = self->_deviceHardwareVersion;
  v23 = v4[14];
  if (deviceHardwareVersion | v23)
  {
    if (!objc_msgSend_isEqual_(deviceHardwareVersion, v7, v23))
    {
      goto LABEL_90;
    }
  }

  deviceLibraryName = self->_deviceLibraryName;
  v25 = v4[16];
  if (deviceLibraryName | v25)
  {
    if (!objc_msgSend_isEqual_(deviceLibraryName, v7, v25))
    {
      goto LABEL_90;
    }
  }

  deviceLibraryVersion = self->_deviceLibraryVersion;
  v27 = v4[17];
  if (deviceLibraryVersion | v27)
  {
    if (!objc_msgSend_isEqual_(deviceLibraryVersion, v7, v27))
    {
      goto LABEL_90;
    }
  }

  v28 = *(v4 + 126);
  if ((*&self->_has & 2) != 0)
  {
    if ((v28 & 2) == 0 || self->_deviceProtocolVersion != v4[2])
    {
      goto LABEL_90;
    }
  }

  else if ((v28 & 2) != 0)
  {
    goto LABEL_90;
  }

  locale = self->_locale;
  v30 = v4[22];
  if (locale | v30 && !objc_msgSend_isEqual_(locale, v7, v30))
  {
    goto LABEL_90;
  }

  mmcsProtocolVersion = self->_mmcsProtocolVersion;
  v32 = v4[23];
  if (mmcsProtocolVersion | v32)
  {
    if (!objc_msgSend_isEqual_(mmcsProtocolVersion, v7, v32))
    {
      goto LABEL_90;
    }
  }

  v33 = *(v4 + 126);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((v33 & 0x10) == 0 || self->_applicationContainerEnvironment != *(v4 + 16))
    {
      goto LABEL_90;
    }
  }

  else if ((v33 & 0x10) != 0)
  {
    goto LABEL_90;
  }

  clientChangeToken = self->_clientChangeToken;
  v35 = v4[11];
  if (clientChangeToken | v35 && !objc_msgSend_isEqual_(clientChangeToken, v7, v35))
  {
    goto LABEL_90;
  }

  deviceAssignedName = self->_deviceAssignedName;
  v37 = v4[12];
  if (deviceAssignedName | v37)
  {
    if (!objc_msgSend_isEqual_(deviceAssignedName, v7, v37))
    {
      goto LABEL_90;
    }
  }

  deviceHardwareID = self->_deviceHardwareID;
  v39 = v4[13];
  if (deviceHardwareID | v39)
  {
    if (!objc_msgSend_isEqual_(deviceHardwareID, v7, v39))
    {
      goto LABEL_90;
    }
  }

  v40 = self->_has;
  v41 = *(v4 + 126);
  if ((v40 & 0x80) != 0)
  {
    if ((v41 & 0x80) == 0 || self->_targetDatabase != *(v4 + 56))
    {
      goto LABEL_90;
    }
  }

  else if ((v41 & 0x80) != 0)
  {
    goto LABEL_90;
  }

  userIDContainerID = self->_userIDContainerID;
  v43 = v4[29];
  if (userIDContainerID | v43)
  {
    if (!objc_msgSend_isEqual_(userIDContainerID, v7, v43))
    {
      goto LABEL_90;
    }

    v40 = self->_has;
    v41 = *(v4 + 126);
  }

  if ((v40 & 0x20) != 0)
  {
    if ((v41 & 0x20) == 0 || self->_isolationLevel != *(v4 + 42))
    {
      goto LABEL_90;
    }
  }

  else if ((v41 & 0x20) != 0)
  {
    goto LABEL_90;
  }

  operationGroupName = self->_operationGroupName;
  v45 = v4[24];
  if (operationGroupName | v45)
  {
    if (!objc_msgSend_isEqual_(operationGroupName, v7, v45))
    {
      goto LABEL_90;
    }

    v40 = self->_has;
    v41 = *(v4 + 126);
  }

  if ((v40 & 8) != 0)
  {
    if ((v41 & 8) == 0 || self->_operationGroupQuantity != v4[4])
    {
      goto LABEL_90;
    }
  }

  else if ((v41 & 8) != 0)
  {
    goto LABEL_90;
  }

  serviceIdentityKeyIDs = self->_serviceIdentityKeyIDs;
  v47 = v4[26];
  if (serviceIdentityKeyIDs | v47)
  {
    if (!objc_msgSend_isEqual_(serviceIdentityKeyIDs, v7, v47))
    {
      goto LABEL_90;
    }

    v40 = self->_has;
    v41 = *(v4 + 126);
  }

  if ((v40 & 0x100) != 0)
  {
    if ((v41 & 0x100) == 0)
    {
      goto LABEL_90;
    }

    v60 = *(v4 + 248);
    if (self->_deviceSoftwareIsAppleInternal)
    {
      if ((v4[31] & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (v4[31])
    {
      goto LABEL_90;
    }
  }

  else if ((v41 & 0x100) != 0)
  {
    goto LABEL_90;
  }

  assetAuthorizeGetRequestOptions = self->_assetAuthorizeGetRequestOptions;
  v49 = v4[10];
  if (assetAuthorizeGetRequestOptions | v49 && !objc_msgSend_isEqual_(assetAuthorizeGetRequestOptions, v7, v49))
  {
    goto LABEL_90;
  }

  activeThrottlingLabels = self->_activeThrottlingLabels;
  v51 = v4[5];
  if (activeThrottlingLabels | v51)
  {
    if (!objc_msgSend_isEqual_(activeThrottlingLabels, v7, v51))
    {
      goto LABEL_90;
    }
  }

  deviceUDID = self->_deviceUDID;
  v53 = v4[20];
  if (deviceUDID | v53)
  {
    if (!objc_msgSend_isEqual_(deviceUDID, v7, v53))
    {
      goto LABEL_90;
    }
  }

  deviceSerialNumber = self->_deviceSerialNumber;
  v55 = v4[18];
  if (deviceSerialNumber | v55)
  {
    if (!objc_msgSend_isEqual_(deviceSerialNumber, v7, v55))
    {
      goto LABEL_90;
    }
  }

  v56 = self->_has;
  v57 = *(v4 + 126);
  if ((v56 & 0x200) != 0)
  {
    if ((*(v4 + 126) & 0x200) == 0)
    {
      goto LABEL_90;
    }

    v61 = *(v4 + 249);
    if (self->_entitlementsValidated)
    {
      if ((*(v4 + 249) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (*(v4 + 249))
    {
      goto LABEL_90;
    }
  }

  else if ((*(v4 + 126) & 0x200) != 0)
  {
    goto LABEL_90;
  }

  if ((v56 & 0x40) == 0)
  {
    if ((v57 & 0x40) == 0)
    {
      goto LABEL_103;
    }

LABEL_90:
    isEqual = 0;
    goto LABEL_91;
  }

  if ((v57 & 0x40) == 0 || self->_requestOriginator != *(v4 + 50))
  {
    goto LABEL_90;
  }

LABEL_103:
  supplementalZoneInfos = self->_supplementalZoneInfos;
  v63 = v4[27];
  if (supplementalZoneInfos | v63)
  {
    isEqual = objc_msgSend_isEqual_(supplementalZoneInfos, v7, v63);
  }

  else
  {
    isEqual = 1;
  }

LABEL_91:

  return isEqual;
}

- (unint64_t)hash
{
  v80 = objc_msgSend_hash(self->_userToken, a2, v2);
  v79 = objc_msgSend_hash(self->_applicationContainer, v4, v5);
  v78 = objc_msgSend_hash(self->_applicationBundle, v6, v7);
  v77 = objc_msgSend_hash(self->_applicationVersion, v8, v9);
  has = self->_has;
  if (has)
  {
    v76 = 2654435761u * self->_applicationConfigVersion;
    if ((has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v76 = 0;
    if ((has & 4) != 0)
    {
LABEL_3:
      v75 = 2654435761u * self->_globalConfigVersion;
      goto LABEL_6;
    }
  }

  v75 = 0;
LABEL_6:
  v74 = objc_msgSend_hash(self->_deviceIdentifier, v10, v11);
  v73 = objc_msgSend_hash(self->_deviceSoftwareVersion, v13, v14);
  v72 = objc_msgSend_hash(self->_deviceHardwareVersion, v15, v16);
  v71 = objc_msgSend_hash(self->_deviceLibraryName, v17, v18);
  v70 = objc_msgSend_hash(self->_deviceLibraryVersion, v19, v20);
  if ((*&self->_has & 2) != 0)
  {
    v69 = 2654435761u * self->_deviceProtocolVersion;
  }

  else
  {
    v69 = 0;
  }

  v68 = objc_msgSend_hash(self->_locale, v21, v22);
  v67 = objc_msgSend_hash(self->_mmcsProtocolVersion, v23, v24);
  if ((*&self->_has & 0x10) != 0)
  {
    v66 = 2654435761 * self->_applicationContainerEnvironment;
  }

  else
  {
    v66 = 0;
  }

  v65 = objc_msgSend_hash(self->_clientChangeToken, v25, v26);
  v64 = objc_msgSend_hash(self->_deviceAssignedName, v27, v28);
  v63 = objc_msgSend_hash(self->_deviceHardwareID, v29, v30);
  if ((*&self->_has & 0x80) != 0)
  {
    v62 = 2654435761 * self->_targetDatabase;
  }

  else
  {
    v62 = 0;
  }

  v61 = objc_msgSend_hash(self->_userIDContainerID, v31, v32);
  if ((*&self->_has & 0x20) != 0)
  {
    v35 = objc_msgSend_hash(self->_operationGroupName, v33, v34, 2654435761 * self->_isolationLevel);
  }

  else
  {
    v35 = objc_msgSend_hash(self->_operationGroupName, v33, v34, 0);
  }

  v38 = v35;
  if ((*&self->_has & 8) != 0)
  {
    v39 = 2654435761u * self->_operationGroupQuantity;
  }

  else
  {
    v39 = 0;
  }

  v42 = objc_msgSend_hash(self->_serviceIdentityKeyIDs, v36, v37);
  if ((*&self->_has & 0x100) != 0)
  {
    v43 = 2654435761 * self->_deviceSoftwareIsAppleInternal;
  }

  else
  {
    v43 = 0;
  }

  v44 = objc_msgSend_hash(self->_assetAuthorizeGetRequestOptions, v40, v41);
  v47 = objc_msgSend_hash(self->_activeThrottlingLabels, v45, v46);
  v50 = objc_msgSend_hash(self->_deviceUDID, v48, v49);
  v53 = objc_msgSend_hash(self->_deviceSerialNumber, v51, v52);
  v56 = self->_has;
  if ((v56 & 0x200) != 0)
  {
    v57 = 2654435761 * self->_entitlementsValidated;
    if ((v56 & 0x40) != 0)
    {
      goto LABEL_26;
    }

LABEL_28:
    v58 = 0;
    return v79 ^ v80 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v38 ^ v39 ^ v42 ^ v43 ^ v44 ^ v47 ^ v50 ^ v53 ^ v57 ^ v58 ^ objc_msgSend_hash(self->_supplementalZoneInfos, v54, v55);
  }

  v57 = 0;
  if ((v56 & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  v58 = 2654435761 * self->_requestOriginator;
  return v79 ^ v80 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v38 ^ v39 ^ v42 ^ v43 ^ v44 ^ v47 ^ v50 ^ v53 ^ v57 ^ v58 ^ objc_msgSend_hash(self->_supplementalZoneInfos, v54, v55);
}

- (void)mergeFrom:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(v5 + 30);
  if (v6)
  {
    objc_msgSend_setUserToken_(self, v4, v6);
  }

  v7 = *(v5 + 7);
  if (v7)
  {
    objc_msgSend_setApplicationContainer_(self, v4, v7);
  }

  v8 = *(v5 + 6);
  if (v8)
  {
    objc_msgSend_setApplicationBundle_(self, v4, v8);
  }

  v9 = *(v5 + 9);
  if (v9)
  {
    objc_msgSend_setApplicationVersion_(self, v4, v9);
  }

  v10 = *(v5 + 126);
  if (v10)
  {
    self->_applicationConfigVersion = *(v5 + 1);
    *&self->_has |= 1u;
    v10 = *(v5 + 126);
  }

  if ((v10 & 4) != 0)
  {
    self->_globalConfigVersion = *(v5 + 3);
    *&self->_has |= 4u;
  }

  deviceIdentifier = self->_deviceIdentifier;
  v12 = *(v5 + 15);
  if (deviceIdentifier)
  {
    if (v12)
    {
      objc_msgSend_mergeFrom_(deviceIdentifier, v4, v12);
    }
  }

  else if (v12)
  {
    objc_msgSend_setDeviceIdentifier_(self, v4, v12);
  }

  v13 = *(v5 + 19);
  if (v13)
  {
    objc_msgSend_setDeviceSoftwareVersion_(self, v4, v13);
  }

  v14 = *(v5 + 14);
  if (v14)
  {
    objc_msgSend_setDeviceHardwareVersion_(self, v4, v14);
  }

  v15 = *(v5 + 16);
  if (v15)
  {
    objc_msgSend_setDeviceLibraryName_(self, v4, v15);
  }

  v16 = *(v5 + 17);
  if (v16)
  {
    objc_msgSend_setDeviceLibraryVersion_(self, v4, v16);
  }

  if ((*(v5 + 126) & 2) != 0)
  {
    self->_deviceProtocolVersion = *(v5 + 2);
    *&self->_has |= 2u;
  }

  locale = self->_locale;
  v18 = *(v5 + 22);
  if (locale)
  {
    if (v18)
    {
      objc_msgSend_mergeFrom_(locale, v4, v18);
    }
  }

  else if (v18)
  {
    objc_msgSend_setLocale_(self, v4, v18);
  }

  v19 = *(v5 + 23);
  if (v19)
  {
    objc_msgSend_setMmcsProtocolVersion_(self, v4, v19);
  }

  if ((*(v5 + 126) & 0x10) != 0)
  {
    self->_applicationContainerEnvironment = *(v5 + 16);
    *&self->_has |= 0x10u;
  }

  v20 = *(v5 + 11);
  if (v20)
  {
    objc_msgSend_setClientChangeToken_(self, v4, v20);
  }

  v21 = *(v5 + 12);
  if (v21)
  {
    objc_msgSend_setDeviceAssignedName_(self, v4, v21);
  }

  v22 = *(v5 + 13);
  if (v22)
  {
    objc_msgSend_setDeviceHardwareID_(self, v4, v22);
  }

  if ((*(v5 + 126) & 0x80) != 0)
  {
    self->_targetDatabase = *(v5 + 56);
    *&self->_has |= 0x80u;
  }

  v23 = *(v5 + 29);
  if (v23)
  {
    objc_msgSend_setUserIDContainerID_(self, v4, v23);
  }

  if ((*(v5 + 126) & 0x20) != 0)
  {
    self->_isolationLevel = *(v5 + 42);
    *&self->_has |= 0x20u;
  }

  v24 = *(v5 + 24);
  if (v24)
  {
    objc_msgSend_setOperationGroupName_(self, v4, v24);
  }

  if ((*(v5 + 126) & 8) != 0)
  {
    self->_operationGroupQuantity = *(v5 + 4);
    *&self->_has |= 8u;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v25 = *(v5 + 26);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v62, v68, 16);
  if (v27)
  {
    v29 = v27;
    v30 = *v63;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v63 != v30)
        {
          objc_enumerationMutation(v25);
        }

        objc_msgSend_addServiceIdentityKeyIDs_(self, v28, *(*(&v62 + 1) + 8 * i));
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v62, v68, 16);
    }

    while (v29);
  }

  if ((*(v5 + 126) & 0x100) != 0)
  {
    self->_deviceSoftwareIsAppleInternal = *(v5 + 248);
    *&self->_has |= 0x100u;
  }

  assetAuthorizeGetRequestOptions = self->_assetAuthorizeGetRequestOptions;
  v34 = *(v5 + 10);
  if (assetAuthorizeGetRequestOptions)
  {
    if (v34)
    {
      objc_msgSend_mergeFrom_(assetAuthorizeGetRequestOptions, v32, v34);
    }
  }

  else if (v34)
  {
    objc_msgSend_setAssetAuthorizeGetRequestOptions_(self, v32, v34);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v35 = *(v5 + 5);
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v58, v67, 16);
  if (v37)
  {
    v39 = v37;
    v40 = *v59;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v59 != v40)
        {
          objc_enumerationMutation(v35);
        }

        objc_msgSend_addActiveThrottlingLabel_(self, v38, *(*(&v58 + 1) + 8 * j));
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v58, v67, 16);
    }

    while (v39);
  }

  v43 = *(v5 + 20);
  if (v43)
  {
    objc_msgSend_setDeviceUDID_(self, v42, v43);
  }

  v44 = *(v5 + 18);
  if (v44)
  {
    objc_msgSend_setDeviceSerialNumber_(self, v42, v44);
  }

  v45 = *(v5 + 126);
  if ((v45 & 0x200) != 0)
  {
    self->_entitlementsValidated = *(v5 + 249);
    *&self->_has |= 0x200u;
    v45 = *(v5 + 126);
  }

  if ((v45 & 0x40) != 0)
  {
    self->_requestOriginator = *(v5 + 50);
    *&self->_has |= 0x40u;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v46 = *(v5 + 27);
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v54, v66, 16);
  if (v48)
  {
    v50 = v48;
    v51 = *v55;
    do
    {
      for (k = 0; k != v50; ++k)
      {
        if (*v55 != v51)
        {
          objc_enumerationMutation(v46);
        }

        objc_msgSend_addSupplementalZoneInfos_(self, v49, *(*(&v54 + 1) + 8 * k), v54);
      }

      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v49, &v54, v66, 16);
    }

    while (v50);
  }

  v53 = *MEMORY[0x277D85DE8];
}

@end