@interface CKDPRecord
+ (id)recordFromData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)_permissionAsString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentation;
- (id)description;
- (id)dictionaryRepresentation;
- (id)fieldData;
- (id)fieldForKey:(id)key;
- (id)permissionAsString:(int)string;
- (int)StringAsPermission:(id)permission;
- (int)permission;
- (unint64_t)hash;
- (void)_inflateFieldsFromData:(id)data;
- (void)addConflictLoserEtags:(id)etags;
- (void)addFields:(id)fields;
- (void)addPluginFields:(id)fields;
- (void)addTombstonedPublicKeyIDs:(id)ds;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasExpired:(BOOL)expired;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecord

- (int)permission
{
  if (*&self->_has)
  {
    return self->_permission;
  }

  else
  {
    return 1;
  }
}

- (id)dataRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277D43178]);
  objc_msgSend_writeTo_(self, v4, v3);
  v7 = objc_msgSend_data(v3, v5, v6);

  return v7;
}

- (id)_permissionAsString
{
  v3 = objc_msgSend_permission(self, a2, v2);
  if (v3 == 1)
  {
    v5 = @"readOnly";
  }

  else if (v3 == 2)
  {
    v5 = @"readWrite";
  }

  else
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", v3);
  }

  return v5;
}

- (void)addFields:(id)fields
{
  fieldsCopy = fields;
  fields = self->_fields;
  v8 = fieldsCopy;
  if (!fields)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fields;
    self->_fields = v6;

    fieldsCopy = v8;
    fields = self->_fields;
  }

  objc_msgSend_addObject_(fields, fieldsCopy, fieldsCopy);
}

- (void)addConflictLoserEtags:(id)etags
{
  etagsCopy = etags;
  conflictLoserEtags = self->_conflictLoserEtags;
  v8 = etagsCopy;
  if (!conflictLoserEtags)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_conflictLoserEtags;
    self->_conflictLoserEtags = v6;

    etagsCopy = v8;
    conflictLoserEtags = self->_conflictLoserEtags;
  }

  objc_msgSend_addObject_(conflictLoserEtags, etagsCopy, etagsCopy);
}

- (void)addPluginFields:(id)fields
{
  fieldsCopy = fields;
  pluginFields = self->_pluginFields;
  v8 = fieldsCopy;
  if (!pluginFields)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_pluginFields;
    self->_pluginFields = v6;

    fieldsCopy = v8;
    pluginFields = self->_pluginFields;
  }

  objc_msgSend_addObject_(pluginFields, fieldsCopy, fieldsCopy);
}

- (id)permissionAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"readOnly";
  }

  else if (string == 2)
  {
    v4 = @"readWrite";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  return v4;
}

- (int)StringAsPermission:(id)permission
{
  permissionCopy = permission;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(permissionCopy, v4, @"readOnly") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(permissionCopy, v5, @"readWrite"))
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

- (void)addTombstonedPublicKeyIDs:(id)ds
{
  dsCopy = ds;
  tombstonedPublicKeyIDs = self->_tombstonedPublicKeyIDs;
  v8 = dsCopy;
  if (!tombstonedPublicKeyIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_tombstonedPublicKeyIDs;
    self->_tombstonedPublicKeyIDs = v6;

    dsCopy = v8;
    tombstonedPublicKeyIDs = self->_tombstonedPublicKeyIDs;
  }

  objc_msgSend_addObject_(tombstonedPublicKeyIDs, dsCopy, dsCopy);
}

- (void)setHasExpired:(BOOL)expired
{
  if (expired)
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
  v11.receiver = self;
  v11.super_class = CKDPRecord;
  v4 = [(CKDPRecord *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v119 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setObject_forKey_(v4, v5, etag, @"etag");
  }

  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    v9 = objc_msgSend_dictionaryRepresentation(recordIdentifier, v5, etag);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"recordIdentifier");
  }

  type = self->_type;
  if (type)
  {
    v12 = objc_msgSend_dictionaryRepresentation(type, v5, etag);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"type");
  }

  createdBy = self->_createdBy;
  if (createdBy)
  {
    v15 = objc_msgSend_dictionaryRepresentation(createdBy, v5, etag);
    objc_msgSend_setObject_forKey_(v6, v16, v15, @"createdBy");
  }

  timeStatistics = self->_timeStatistics;
  if (timeStatistics)
  {
    v18 = objc_msgSend_dictionaryRepresentation(timeStatistics, v5, etag);
    objc_msgSend_setObject_forKey_(v6, v19, v18, @"timeStatistics");
  }

  if (objc_msgSend_count(self->_fields, v5, etag))
  {
    v22 = objc_alloc(MEMORY[0x277CBEB18]);
    v25 = objc_msgSend_count(self->_fields, v23, v24);
    v27 = objc_msgSend_initWithCapacity_(v22, v26, v25);
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v28 = self->_fields;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v113, v118, 16);
    if (v30)
    {
      v33 = v30;
      v34 = *v114;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v114 != v34)
          {
            objc_enumerationMutation(v28);
          }

          v36 = objc_msgSend_dictionaryRepresentation(*(*(&v113 + 1) + 8 * i), v31, v32);
          objc_msgSend_addObject_(v27, v37, v36);
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v113, v118, 16);
      }

      while (v33);
    }

    objc_msgSend_setObject_forKey_(v6, v38, v27, @"fields");
  }

  shareId = self->_shareId;
  if (shareId)
  {
    v40 = objc_msgSend_dictionaryRepresentation(shareId, v20, v21);
    objc_msgSend_setObject_forKey_(v6, v41, v40, @"shareId");
  }

  modifiedBy = self->_modifiedBy;
  if (modifiedBy)
  {
    v43 = objc_msgSend_dictionaryRepresentation(modifiedBy, v20, v21);
    objc_msgSend_setObject_forKey_(v6, v44, v43, @"modifiedBy");
  }

  conflictLoserEtags = self->_conflictLoserEtags;
  if (conflictLoserEtags)
  {
    objc_msgSend_setObject_forKey_(v6, v20, conflictLoserEtags, @"conflictLoserEtags");
  }

  modifiedByDevice = self->_modifiedByDevice;
  if (modifiedByDevice)
  {
    objc_msgSend_setObject_forKey_(v6, v20, modifiedByDevice, @"modifiedByDevice");
  }

  if (objc_msgSend_count(self->_pluginFields, v20, modifiedByDevice))
  {
    v49 = objc_alloc(MEMORY[0x277CBEB18]);
    v52 = objc_msgSend_count(self->_pluginFields, v50, v51);
    v54 = objc_msgSend_initWithCapacity_(v49, v53, v52);
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v55 = self->_pluginFields;
    v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v109, v117, 16);
    if (v57)
    {
      v60 = v57;
      v61 = *v110;
      do
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v110 != v61)
          {
            objc_enumerationMutation(v55);
          }

          v63 = objc_msgSend_dictionaryRepresentation(*(*(&v109 + 1) + 8 * j), v58, v59);
          objc_msgSend_addObject_(v54, v64, v63);
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v58, &v109, v117, 16);
      }

      while (v60);
    }

    objc_msgSend_setObject_forKey_(v6, v65, v54, @"pluginFields");
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    v67 = objc_msgSend_dictionaryRepresentation(protectionInfo, v47, v48);
    objc_msgSend_setObject_forKey_(v6, v68, v67, @"protectionInfo");
  }

  if (*&self->_has)
  {
    permission = self->_permission;
    if (permission == 1)
    {
      v70 = @"readOnly";
      objc_msgSend_setObject_forKey_(v6, v47, @"readOnly", @"permission");
    }

    else if (permission == 2)
    {
      v70 = @"readWrite";
      objc_msgSend_setObject_forKey_(v6, v47, @"readWrite", @"permission");
    }

    else
    {
      v70 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v47, @"(unknown: %i)", self->_permission);
      objc_msgSend_setObject_forKey_(v6, v71, v70, @"permission");
    }
  }

  shareInfo = self->_shareInfo;
  if (shareInfo)
  {
    v73 = objc_msgSend_dictionaryRepresentation(shareInfo, v47, v48);
    objc_msgSend_setObject_forKey_(v6, v74, v73, @"shareInfo");
  }

  chainPrivateKey = self->_chainPrivateKey;
  if (chainPrivateKey)
  {
    objc_msgSend_setObject_forKey_(v6, v47, chainPrivateKey, @"chainPrivateKey");
  }

  chainProtectionInfo = self->_chainProtectionInfo;
  if (chainProtectionInfo)
  {
    v77 = objc_msgSend_dictionaryRepresentation(chainProtectionInfo, v47, chainPrivateKey);
    objc_msgSend_setObject_forKey_(v6, v78, v77, @"chainProtectionInfo");
  }

  chainParent = self->_chainParent;
  if (chainParent)
  {
    v80 = objc_msgSend_dictionaryRepresentation(chainParent, v47, chainPrivateKey);
    objc_msgSend_setObject_forKey_(v6, v81, v80, @"chainParent");
  }

  stableUrl = self->_stableUrl;
  if (stableUrl)
  {
    v83 = objc_msgSend_dictionaryRepresentation(stableUrl, v47, chainPrivateKey);
    objc_msgSend_setObject_forKey_(v6, v84, v83, @"stableUrl");
  }

  tombstonedPublicKeyIDs = self->_tombstonedPublicKeyIDs;
  if (tombstonedPublicKeyIDs)
  {
    objc_msgSend_setObject_forKey_(v6, v47, tombstonedPublicKeyIDs, @"tombstonedPublicKeyIDs");
  }

  zoneishPrimaryKeyId = self->_zoneishPrimaryKeyId;
  if (zoneishPrimaryKeyId)
  {
    objc_msgSend_setObject_forKey_(v6, v47, zoneishPrimaryKeyId, @"zoneishPrimaryKeyId");
  }

  storageExpiration = self->_storageExpiration;
  if (storageExpiration)
  {
    v88 = objc_msgSend_dictionaryRepresentation(storageExpiration, v47, zoneishPrimaryKeyId);
    objc_msgSend_setObject_forKey_(v6, v89, v88, @"storageExpiration");
  }

  if ((*&self->_has & 2) != 0)
  {
    v90 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v47, self->_expired);
    objc_msgSend_setObject_forKey_(v6, v91, v90, @"expired");
  }

  expirationTime = self->_expirationTime;
  if (expirationTime)
  {
    v93 = objc_msgSend_dictionaryRepresentation(expirationTime, v47, zoneishPrimaryKeyId);
    objc_msgSend_setObject_forKey_(v6, v94, v93, @"expirationTime");
  }

  appliedCryptoFeatures = self->_appliedCryptoFeatures;
  if (appliedCryptoFeatures)
  {
    v96 = objc_msgSend_dictionaryRepresentation(appliedCryptoFeatures, v47, zoneishPrimaryKeyId);
    objc_msgSend_setObject_forKey_(v6, v97, v96, @"appliedCryptoFeatures");
  }

  protectionInfoKeysToRemove = self->_protectionInfoKeysToRemove;
  if (protectionInfoKeysToRemove)
  {
    v99 = objc_msgSend_dictionaryRepresentation(protectionInfoKeysToRemove, v47, zoneishPrimaryKeyId);
    objc_msgSend_setObject_forKey_(v6, v100, v99, @"protectionInfoKeysToRemove");
  }

  oneTimeStableUrlInfo = self->_oneTimeStableUrlInfo;
  if (oneTimeStableUrlInfo)
  {
    v102 = objc_msgSend_dictionaryRepresentation(oneTimeStableUrlInfo, v47, zoneishPrimaryKeyId);
    objc_msgSend_setObject_forKey_(v6, v103, v102, @"oneTimeStableUrlInfo");
  }

  chainProtectionInfoKeysToRemove = self->_chainProtectionInfoKeysToRemove;
  if (chainProtectionInfoKeysToRemove)
  {
    v105 = objc_msgSend_dictionaryRepresentation(chainProtectionInfoKeysToRemove, v47, zoneishPrimaryKeyId);
    objc_msgSend_setObject_forKey_(v6, v106, v105, @"chainProtectionInfoKeysToRemove");
  }

  v107 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)to
{
  v60 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_etag)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_recordIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_type)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_createdBy)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_timeStatistics)
  {
    PBDataWriterWriteSubmessage();
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = self->_fields;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v52, v59, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v53;
    do
    {
      v10 = 0;
      do
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v52 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v52, v59, 16);
    }

    while (v8);
  }

  if (self->_shareId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_modifiedBy)
  {
    PBDataWriterWriteSubmessage();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v13 = self->_conflictLoserEtags;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v48, v58, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    do
    {
      v18 = 0;
      do
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v48 + 1) + 8 * v18);
        PBDataWriterWriteStringField();
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v48, v58, 16);
    }

    while (v16);
  }

  if (self->_modifiedByDevice)
  {
    PBDataWriterWriteStringField();
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v21 = self->_pluginFields;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v44, v57, 16);
  if (v23)
  {
    v24 = v23;
    v25 = *v45;
    do
    {
      v26 = 0;
      do
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v44 + 1) + 8 * v26);
        PBDataWriterWriteSubmessage();
        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v28, &v44, v57, 16);
    }

    while (v24);
  }

  if (self->_protectionInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    permission = self->_permission;
    PBDataWriterWriteInt32Field();
  }

  if (self->_shareInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_chainPrivateKey)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_chainProtectionInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_chainParent)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_stableUrl)
  {
    PBDataWriterWriteSubmessage();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v30 = self->_tombstonedPublicKeyIDs;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v40, v56, 16);
  if (v32)
  {
    v33 = v32;
    v34 = *v41;
    do
    {
      v35 = 0;
      do
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v40 + 1) + 8 * v35);
        PBDataWriterWriteDataField();
        ++v35;
      }

      while (v33 != v35);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v37, &v40, v56, 16);
    }

    while (v33);
  }

  if (self->_zoneishPrimaryKeyId)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_storageExpiration)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    expired = self->_expired;
    PBDataWriterWriteBOOLField();
  }

  if (self->_expirationTime)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_appliedCryptoFeatures)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_protectionInfoKeysToRemove)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_oneTimeStableUrlInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_chainProtectionInfoKeysToRemove)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setEtag_(toCopy, v4, etag);
  }

  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    objc_msgSend_setRecordIdentifier_(toCopy, v4, recordIdentifier);
  }

  type = self->_type;
  if (type)
  {
    objc_msgSend_setType_(toCopy, v4, type);
  }

  createdBy = self->_createdBy;
  if (createdBy)
  {
    objc_msgSend_setCreatedBy_(toCopy, v4, createdBy);
  }

  timeStatistics = self->_timeStatistics;
  if (timeStatistics)
  {
    objc_msgSend_setTimeStatistics_(toCopy, v4, timeStatistics);
  }

  if (objc_msgSend_fieldsCount(self, v4, timeStatistics))
  {
    objc_msgSend_clearFields(toCopy, v10, v11);
    v14 = objc_msgSend_fieldsCount(self, v12, v13);
    if (v14)
    {
      v15 = v14;
      for (i = 0; i != v15; ++i)
      {
        v17 = objc_msgSend_fieldsAtIndex_(self, v10, i);
        objc_msgSend_addFields_(toCopy, v18, v17);
      }
    }
  }

  shareId = self->_shareId;
  if (shareId)
  {
    objc_msgSend_setShareId_(toCopy, v10, shareId);
  }

  modifiedBy = self->_modifiedBy;
  if (modifiedBy)
  {
    objc_msgSend_setModifiedBy_(toCopy, v10, modifiedBy);
  }

  if (objc_msgSend_conflictLoserEtagsCount(self, v10, modifiedBy))
  {
    objc_msgSend_clearConflictLoserEtags(toCopy, v21, v22);
    v25 = objc_msgSend_conflictLoserEtagsCount(self, v23, v24);
    if (v25)
    {
      v26 = v25;
      for (j = 0; j != v26; ++j)
      {
        v28 = objc_msgSend_conflictLoserEtagsAtIndex_(self, v21, j);
        objc_msgSend_addConflictLoserEtags_(toCopy, v29, v28);
      }
    }
  }

  modifiedByDevice = self->_modifiedByDevice;
  if (modifiedByDevice)
  {
    objc_msgSend_setModifiedByDevice_(toCopy, v21, modifiedByDevice);
  }

  if (objc_msgSend_pluginFieldsCount(self, v21, modifiedByDevice))
  {
    objc_msgSend_clearPluginFields(toCopy, v31, v32);
    v35 = objc_msgSend_pluginFieldsCount(self, v33, v34);
    if (v35)
    {
      v36 = v35;
      for (k = 0; k != v36; ++k)
      {
        v38 = objc_msgSend_pluginFieldsAtIndex_(self, v31, k);
        objc_msgSend_addPluginFields_(toCopy, v39, v38);
      }
    }
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    objc_msgSend_setProtectionInfo_(toCopy, v31, protectionInfo);
  }

  if (*&self->_has)
  {
    *(toCopy + 28) = self->_permission;
    *(toCopy + 220) |= 1u;
  }

  shareInfo = self->_shareInfo;
  if (shareInfo)
  {
    objc_msgSend_setShareInfo_(toCopy, v31, shareInfo);
  }

  chainPrivateKey = self->_chainPrivateKey;
  if (chainPrivateKey)
  {
    objc_msgSend_setChainPrivateKey_(toCopy, v31, chainPrivateKey);
  }

  chainProtectionInfo = self->_chainProtectionInfo;
  if (chainProtectionInfo)
  {
    objc_msgSend_setChainProtectionInfo_(toCopy, v31, chainProtectionInfo);
  }

  chainParent = self->_chainParent;
  if (chainParent)
  {
    objc_msgSend_setChainParent_(toCopy, v31, chainParent);
  }

  stableUrl = self->_stableUrl;
  if (stableUrl)
  {
    objc_msgSend_setStableUrl_(toCopy, v31, stableUrl);
  }

  if (objc_msgSend_tombstonedPublicKeyIDsCount(self, v31, stableUrl))
  {
    objc_msgSend_clearTombstonedPublicKeyIDs(toCopy, v46, v47);
    v50 = objc_msgSend_tombstonedPublicKeyIDsCount(self, v48, v49);
    if (v50)
    {
      v51 = v50;
      for (m = 0; m != v51; ++m)
      {
        v53 = objc_msgSend_tombstonedPublicKeyIDsAtIndex_(self, v46, m);
        objc_msgSend_addTombstonedPublicKeyIDs_(toCopy, v54, v53);
      }
    }
  }

  zoneishPrimaryKeyId = self->_zoneishPrimaryKeyId;
  if (zoneishPrimaryKeyId)
  {
    objc_msgSend_setZoneishPrimaryKeyId_(toCopy, v46, zoneishPrimaryKeyId);
  }

  storageExpiration = self->_storageExpiration;
  v57 = toCopy;
  if (storageExpiration)
  {
    objc_msgSend_setStorageExpiration_(toCopy, v46, storageExpiration);
    v57 = toCopy;
  }

  if ((*&self->_has & 2) != 0)
  {
    v57[216] = self->_expired;
    v57[220] |= 2u;
  }

  expirationTime = self->_expirationTime;
  if (expirationTime)
  {
    objc_msgSend_setExpirationTime_(toCopy, v46, expirationTime);
    v57 = toCopy;
  }

  appliedCryptoFeatures = self->_appliedCryptoFeatures;
  if (appliedCryptoFeatures)
  {
    objc_msgSend_setAppliedCryptoFeatures_(toCopy, v46, appliedCryptoFeatures);
    v57 = toCopy;
  }

  protectionInfoKeysToRemove = self->_protectionInfoKeysToRemove;
  if (protectionInfoKeysToRemove)
  {
    objc_msgSend_setProtectionInfoKeysToRemove_(toCopy, v46, protectionInfoKeysToRemove);
    v57 = toCopy;
  }

  oneTimeStableUrlInfo = self->_oneTimeStableUrlInfo;
  if (oneTimeStableUrlInfo)
  {
    objc_msgSend_setOneTimeStableUrlInfo_(toCopy, v46, oneTimeStableUrlInfo);
    v57 = toCopy;
  }

  chainProtectionInfoKeysToRemove = self->_chainProtectionInfoKeysToRemove;
  if (chainProtectionInfoKeysToRemove)
  {
    objc_msgSend_setChainProtectionInfoKeysToRemove_(toCopy, v46, chainProtectionInfoKeysToRemove);
    v57 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v132 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_etag, v11, zone);
  v13 = *(v10 + 64);
  *(v10 + 64) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_recordIdentifier, v14, zone);
  v16 = *(v10 + 144);
  *(v10 + 144) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_type, v17, zone);
  v19 = *(v10 + 200);
  *(v10 + 200) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_createdBy, v20, zone);
  v22 = *(v10 + 56);
  *(v10 + 56) = v21;

  v24 = objc_msgSend_copyWithZone_(self->_timeStatistics, v23, zone);
  v25 = *(v10 + 184);
  *(v10 + 184) = v24;

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v26 = self->_fields;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v124, v131, 16);
  if (v28)
  {
    v30 = v28;
    v31 = *v125;
    do
    {
      v32 = 0;
      do
      {
        if (*v125 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = objc_msgSend_copyWithZone_(*(*(&v124 + 1) + 8 * v32), v29, zone);
        objc_msgSend_addFields_(v10, v34, v33);

        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v124, v131, 16);
    }

    while (v30);
  }

  v36 = objc_msgSend_copyWithZone_(self->_shareId, v35, zone);
  v37 = *(v10 + 152);
  *(v10 + 152) = v36;

  v39 = objc_msgSend_copyWithZone_(self->_modifiedBy, v38, zone);
  v40 = *(v10 + 88);
  *(v10 + 88) = v39;

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v41 = self->_conflictLoserEtags;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v120, v130, 16);
  if (v43)
  {
    v45 = v43;
    v46 = *v121;
    do
    {
      v47 = 0;
      do
      {
        if (*v121 != v46)
        {
          objc_enumerationMutation(v41);
        }

        v48 = objc_msgSend_copyWithZone_(*(*(&v120 + 1) + 8 * v47), v44, zone);
        objc_msgSend_addConflictLoserEtags_(v10, v49, v48);

        ++v47;
      }

      while (v45 != v47);
      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v44, &v120, v130, 16);
    }

    while (v45);
  }

  v51 = objc_msgSend_copyWithZone_(self->_modifiedByDevice, v50, zone);
  v52 = *(v10 + 96);
  *(v10 + 96) = v51;

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v53 = self->_pluginFields;
  v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v116, v129, 16);
  if (v55)
  {
    v57 = v55;
    v58 = *v117;
    do
    {
      v59 = 0;
      do
      {
        if (*v117 != v58)
        {
          objc_enumerationMutation(v53);
        }

        v60 = objc_msgSend_copyWithZone_(*(*(&v116 + 1) + 8 * v59), v56, zone);
        objc_msgSend_addPluginFields_(v10, v61, v60);

        ++v59;
      }

      while (v57 != v59);
      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v116, v129, 16);
    }

    while (v57);
  }

  v63 = objc_msgSend_copyWithZone_(self->_protectionInfo, v62, zone);
  v64 = *(v10 + 128);
  *(v10 + 128) = v63;

  if (*&self->_has)
  {
    *(v10 + 112) = self->_permission;
    *(v10 + 220) |= 1u;
  }

  v66 = objc_msgSend_copyWithZone_(self->_shareInfo, v65, zone);
  v67 = *(v10 + 160);
  *(v10 + 160) = v66;

  v69 = objc_msgSend_copyWithZone_(self->_chainPrivateKey, v68, zone);
  v70 = *(v10 + 24);
  *(v10 + 24) = v69;

  v72 = objc_msgSend_copyWithZone_(self->_chainProtectionInfo, v71, zone);
  v73 = *(v10 + 32);
  *(v10 + 32) = v72;

  v75 = objc_msgSend_copyWithZone_(self->_chainParent, v74, zone);
  v76 = *(v10 + 16);
  *(v10 + 16) = v75;

  v78 = objc_msgSend_copyWithZone_(self->_stableUrl, v77, zone);
  v79 = *(v10 + 168);
  *(v10 + 168) = v78;

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v80 = self->_tombstonedPublicKeyIDs;
  v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v81, &v112, v128, 16);
  if (v82)
  {
    v84 = v82;
    v85 = *v113;
    do
    {
      v86 = 0;
      do
      {
        if (*v113 != v85)
        {
          objc_enumerationMutation(v80);
        }

        v87 = objc_msgSend_copyWithZone_(*(*(&v112 + 1) + 8 * v86), v83, zone, v112);
        objc_msgSend_addTombstonedPublicKeyIDs_(v10, v88, v87);

        ++v86;
      }

      while (v84 != v86);
      v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v83, &v112, v128, 16);
    }

    while (v84);
  }

  v90 = objc_msgSend_copyWithZone_(self->_zoneishPrimaryKeyId, v89, zone);
  v91 = *(v10 + 208);
  *(v10 + 208) = v90;

  v93 = objc_msgSend_copyWithZone_(self->_storageExpiration, v92, zone);
  v94 = *(v10 + 176);
  *(v10 + 176) = v93;

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 216) = self->_expired;
    *(v10 + 220) |= 2u;
  }

  v96 = objc_msgSend_copyWithZone_(self->_expirationTime, v95, zone, v112);
  v97 = *(v10 + 72);
  *(v10 + 72) = v96;

  v99 = objc_msgSend_copyWithZone_(self->_appliedCryptoFeatures, v98, zone);
  v100 = *(v10 + 8);
  *(v10 + 8) = v99;

  v102 = objc_msgSend_copyWithZone_(self->_protectionInfoKeysToRemove, v101, zone);
  v103 = *(v10 + 136);
  *(v10 + 136) = v102;

  v105 = objc_msgSend_copyWithZone_(self->_oneTimeStableUrlInfo, v104, zone);
  v106 = *(v10 + 104);
  *(v10 + 104) = v105;

  v108 = objc_msgSend_copyWithZone_(self->_chainProtectionInfoKeysToRemove, v107, zone);
  v109 = *(v10 + 40);
  *(v10 + 40) = v108;

  v110 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_60;
  }

  etag = self->_etag;
  v9 = equalCopy[8];
  if (etag | v9)
  {
    if (!objc_msgSend_isEqual_(etag, v7, v9))
    {
      goto LABEL_60;
    }
  }

  recordIdentifier = self->_recordIdentifier;
  v11 = equalCopy[18];
  if (recordIdentifier | v11)
  {
    if (!objc_msgSend_isEqual_(recordIdentifier, v7, v11))
    {
      goto LABEL_60;
    }
  }

  type = self->_type;
  v13 = equalCopy[25];
  if (type | v13)
  {
    if (!objc_msgSend_isEqual_(type, v7, v13))
    {
      goto LABEL_60;
    }
  }

  createdBy = self->_createdBy;
  v15 = equalCopy[7];
  if (createdBy | v15)
  {
    if (!objc_msgSend_isEqual_(createdBy, v7, v15))
    {
      goto LABEL_60;
    }
  }

  timeStatistics = self->_timeStatistics;
  v17 = equalCopy[23];
  if (timeStatistics | v17)
  {
    if (!objc_msgSend_isEqual_(timeStatistics, v7, v17))
    {
      goto LABEL_60;
    }
  }

  fields = self->_fields;
  v19 = equalCopy[10];
  if (fields | v19)
  {
    if (!objc_msgSend_isEqual_(fields, v7, v19))
    {
      goto LABEL_60;
    }
  }

  shareId = self->_shareId;
  v21 = equalCopy[19];
  if (shareId | v21)
  {
    if (!objc_msgSend_isEqual_(shareId, v7, v21))
    {
      goto LABEL_60;
    }
  }

  modifiedBy = self->_modifiedBy;
  v23 = equalCopy[11];
  if (modifiedBy | v23)
  {
    if (!objc_msgSend_isEqual_(modifiedBy, v7, v23))
    {
      goto LABEL_60;
    }
  }

  conflictLoserEtags = self->_conflictLoserEtags;
  v25 = equalCopy[6];
  if (conflictLoserEtags | v25)
  {
    if (!objc_msgSend_isEqual_(conflictLoserEtags, v7, v25))
    {
      goto LABEL_60;
    }
  }

  modifiedByDevice = self->_modifiedByDevice;
  v27 = equalCopy[12];
  if (modifiedByDevice | v27)
  {
    if (!objc_msgSend_isEqual_(modifiedByDevice, v7, v27))
    {
      goto LABEL_60;
    }
  }

  pluginFields = self->_pluginFields;
  v29 = equalCopy[15];
  if (pluginFields | v29)
  {
    if (!objc_msgSend_isEqual_(pluginFields, v7, v29))
    {
      goto LABEL_60;
    }
  }

  protectionInfo = self->_protectionInfo;
  v31 = equalCopy[16];
  if (protectionInfo | v31)
  {
    if (!objc_msgSend_isEqual_(protectionInfo, v7, v31))
    {
      goto LABEL_60;
    }
  }

  v32 = *(equalCopy + 220);
  if (*&self->_has)
  {
    if ((*(equalCopy + 220) & 1) == 0 || self->_permission != *(equalCopy + 28))
    {
      goto LABEL_60;
    }
  }

  else if (*(equalCopy + 220))
  {
    goto LABEL_60;
  }

  shareInfo = self->_shareInfo;
  v34 = equalCopy[20];
  if (shareInfo | v34 && !objc_msgSend_isEqual_(shareInfo, v7, v34))
  {
    goto LABEL_60;
  }

  chainPrivateKey = self->_chainPrivateKey;
  v36 = equalCopy[3];
  if (chainPrivateKey | v36)
  {
    if (!objc_msgSend_isEqual_(chainPrivateKey, v7, v36))
    {
      goto LABEL_60;
    }
  }

  chainProtectionInfo = self->_chainProtectionInfo;
  v38 = equalCopy[4];
  if (chainProtectionInfo | v38)
  {
    if (!objc_msgSend_isEqual_(chainProtectionInfo, v7, v38))
    {
      goto LABEL_60;
    }
  }

  chainParent = self->_chainParent;
  v40 = equalCopy[2];
  if (chainParent | v40)
  {
    if (!objc_msgSend_isEqual_(chainParent, v7, v40))
    {
      goto LABEL_60;
    }
  }

  stableUrl = self->_stableUrl;
  v42 = equalCopy[21];
  if (stableUrl | v42)
  {
    if (!objc_msgSend_isEqual_(stableUrl, v7, v42))
    {
      goto LABEL_60;
    }
  }

  tombstonedPublicKeyIDs = self->_tombstonedPublicKeyIDs;
  v44 = equalCopy[24];
  if (tombstonedPublicKeyIDs | v44)
  {
    if (!objc_msgSend_isEqual_(tombstonedPublicKeyIDs, v7, v44))
    {
      goto LABEL_60;
    }
  }

  zoneishPrimaryKeyId = self->_zoneishPrimaryKeyId;
  v46 = equalCopy[26];
  if (zoneishPrimaryKeyId | v46)
  {
    if (!objc_msgSend_isEqual_(zoneishPrimaryKeyId, v7, v46))
    {
      goto LABEL_60;
    }
  }

  storageExpiration = self->_storageExpiration;
  v48 = equalCopy[22];
  if (storageExpiration | v48)
  {
    if (!objc_msgSend_isEqual_(storageExpiration, v7, v48))
    {
      goto LABEL_60;
    }
  }

  v49 = *(equalCopy + 220);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 220) & 2) == 0)
    {
      goto LABEL_49;
    }

LABEL_60:
    isEqual = 0;
    goto LABEL_61;
  }

  if ((*(equalCopy + 220) & 2) == 0)
  {
    goto LABEL_60;
  }

  v62 = *(equalCopy + 216);
  if (self->_expired)
  {
    if ((equalCopy[27] & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (equalCopy[27])
  {
    goto LABEL_60;
  }

LABEL_49:
  expirationTime = self->_expirationTime;
  v51 = equalCopy[9];
  if (expirationTime | v51 && !objc_msgSend_isEqual_(expirationTime, v7, v51))
  {
    goto LABEL_60;
  }

  appliedCryptoFeatures = self->_appliedCryptoFeatures;
  v53 = equalCopy[1];
  if (appliedCryptoFeatures | v53)
  {
    if (!objc_msgSend_isEqual_(appliedCryptoFeatures, v7, v53))
    {
      goto LABEL_60;
    }
  }

  protectionInfoKeysToRemove = self->_protectionInfoKeysToRemove;
  v55 = equalCopy[17];
  if (protectionInfoKeysToRemove | v55)
  {
    if (!objc_msgSend_isEqual_(protectionInfoKeysToRemove, v7, v55))
    {
      goto LABEL_60;
    }
  }

  oneTimeStableUrlInfo = self->_oneTimeStableUrlInfo;
  v57 = equalCopy[13];
  if (oneTimeStableUrlInfo | v57)
  {
    if (!objc_msgSend_isEqual_(oneTimeStableUrlInfo, v7, v57))
    {
      goto LABEL_60;
    }
  }

  chainProtectionInfoKeysToRemove = self->_chainProtectionInfoKeysToRemove;
  v59 = equalCopy[5];
  if (chainProtectionInfoKeysToRemove | v59)
  {
    isEqual = objc_msgSend_isEqual_(chainProtectionInfoKeysToRemove, v7, v59);
  }

  else
  {
    isEqual = 1;
  }

LABEL_61:

  return isEqual;
}

- (unint64_t)hash
{
  v80 = objc_msgSend_hash(self->_etag, a2, v2);
  v79 = objc_msgSend_hash(self->_recordIdentifier, v4, v5);
  v78 = objc_msgSend_hash(self->_type, v6, v7);
  v77 = objc_msgSend_hash(self->_createdBy, v8, v9);
  v76 = objc_msgSend_hash(self->_timeStatistics, v10, v11);
  v75 = objc_msgSend_hash(self->_fields, v12, v13);
  v74 = objc_msgSend_hash(self->_shareId, v14, v15);
  v73 = objc_msgSend_hash(self->_modifiedBy, v16, v17);
  v72 = objc_msgSend_hash(self->_conflictLoserEtags, v18, v19);
  v71 = objc_msgSend_hash(self->_modifiedByDevice, v20, v21);
  v70 = objc_msgSend_hash(self->_pluginFields, v22, v23);
  v68 = objc_msgSend_hash(self->_protectionInfo, v24, v25);
  if (*&self->_has)
  {
    v28 = 2654435761 * self->_permission;
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_msgSend_hash(self->_shareInfo, v26, v27, v68);
  v32 = objc_msgSend_hash(self->_chainPrivateKey, v30, v31);
  v35 = objc_msgSend_hash(self->_chainProtectionInfo, v33, v34);
  v38 = objc_msgSend_hash(self->_chainParent, v36, v37);
  v41 = objc_msgSend_hash(self->_stableUrl, v39, v40);
  v44 = objc_msgSend_hash(self->_tombstonedPublicKeyIDs, v42, v43);
  v47 = objc_msgSend_hash(self->_zoneishPrimaryKeyId, v45, v46);
  v50 = objc_msgSend_hash(self->_storageExpiration, v48, v49);
  if ((*&self->_has & 2) != 0)
  {
    v53 = 2654435761 * self->_expired;
  }

  else
  {
    v53 = 0;
  }

  v54 = v79 ^ v80 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v28 ^ v29 ^ v32 ^ v35 ^ v38 ^ v41 ^ v44 ^ v47 ^ v50 ^ v53;
  v55 = objc_msgSend_hash(self->_expirationTime, v51, v52);
  v58 = v55 ^ objc_msgSend_hash(self->_appliedCryptoFeatures, v56, v57);
  v61 = v58 ^ objc_msgSend_hash(self->_protectionInfoKeysToRemove, v59, v60);
  v64 = v61 ^ objc_msgSend_hash(self->_oneTimeStableUrlInfo, v62, v63);
  return v54 ^ v64 ^ objc_msgSend_hash(self->_chainProtectionInfoKeysToRemove, v65, v66);
}

- (void)mergeFrom:(id)from
{
  v97 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = *(fromCopy + 8);
  if (v6)
  {
    objc_msgSend_setEtag_(self, v4, v6);
  }

  recordIdentifier = self->_recordIdentifier;
  v8 = *(fromCopy + 18);
  if (recordIdentifier)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(recordIdentifier, v4, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setRecordIdentifier_(self, v4, v8);
  }

  type = self->_type;
  v10 = *(fromCopy + 25);
  if (type)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(type, v4, v10);
    }
  }

  else if (v10)
  {
    objc_msgSend_setType_(self, v4, v10);
  }

  createdBy = self->_createdBy;
  v12 = *(fromCopy + 7);
  if (createdBy)
  {
    if (v12)
    {
      objc_msgSend_mergeFrom_(createdBy, v4, v12);
    }
  }

  else if (v12)
  {
    objc_msgSend_setCreatedBy_(self, v4, v12);
  }

  timeStatistics = self->_timeStatistics;
  v14 = *(fromCopy + 23);
  if (timeStatistics)
  {
    if (v14)
    {
      objc_msgSend_mergeFrom_(timeStatistics, v4, v14);
    }
  }

  else if (v14)
  {
    objc_msgSend_setTimeStatistics_(self, v4, v14);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v15 = *(fromCopy + 10);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v89, v96, 16);
  if (v17)
  {
    v19 = v17;
    v20 = *v90;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v90 != v20)
        {
          objc_enumerationMutation(v15);
        }

        objc_msgSend_addFields_(self, v18, *(*(&v89 + 1) + 8 * i));
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v89, v96, 16);
    }

    while (v19);
  }

  shareId = self->_shareId;
  v24 = *(fromCopy + 19);
  if (shareId)
  {
    if (v24)
    {
      objc_msgSend_mergeFrom_(shareId, v22, v24);
    }
  }

  else if (v24)
  {
    objc_msgSend_setShareId_(self, v22, v24);
  }

  modifiedBy = self->_modifiedBy;
  v26 = *(fromCopy + 11);
  if (modifiedBy)
  {
    if (v26)
    {
      objc_msgSend_mergeFrom_(modifiedBy, v22, v26);
    }
  }

  else if (v26)
  {
    objc_msgSend_setModifiedBy_(self, v22, v26);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v27 = *(fromCopy + 6);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v85, v95, 16);
  if (v29)
  {
    v31 = v29;
    v32 = *v86;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v86 != v32)
        {
          objc_enumerationMutation(v27);
        }

        objc_msgSend_addConflictLoserEtags_(self, v30, *(*(&v85 + 1) + 8 * j));
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v85, v95, 16);
    }

    while (v31);
  }

  v35 = *(fromCopy + 12);
  if (v35)
  {
    objc_msgSend_setModifiedByDevice_(self, v34, v35);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v36 = *(fromCopy + 15);
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v81, v94, 16);
  if (v38)
  {
    v40 = v38;
    v41 = *v82;
    do
    {
      for (k = 0; k != v40; ++k)
      {
        if (*v82 != v41)
        {
          objc_enumerationMutation(v36);
        }

        objc_msgSend_addPluginFields_(self, v39, *(*(&v81 + 1) + 8 * k));
      }

      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v81, v94, 16);
    }

    while (v40);
  }

  protectionInfo = self->_protectionInfo;
  v45 = *(fromCopy + 16);
  if (protectionInfo)
  {
    if (v45)
    {
      objc_msgSend_mergeFrom_(protectionInfo, v43, v45);
    }
  }

  else if (v45)
  {
    objc_msgSend_setProtectionInfo_(self, v43, v45);
  }

  if (*(fromCopy + 220))
  {
    self->_permission = *(fromCopy + 28);
    *&self->_has |= 1u;
  }

  shareInfo = self->_shareInfo;
  v47 = *(fromCopy + 20);
  if (shareInfo)
  {
    if (v47)
    {
      objc_msgSend_mergeFrom_(shareInfo, v43, v47);
    }
  }

  else if (v47)
  {
    objc_msgSend_setShareInfo_(self, v43, v47);
  }

  v48 = *(fromCopy + 3);
  if (v48)
  {
    objc_msgSend_setChainPrivateKey_(self, v43, v48);
  }

  chainProtectionInfo = self->_chainProtectionInfo;
  v50 = *(fromCopy + 4);
  if (chainProtectionInfo)
  {
    if (v50)
    {
      objc_msgSend_mergeFrom_(chainProtectionInfo, v43, v50);
    }
  }

  else if (v50)
  {
    objc_msgSend_setChainProtectionInfo_(self, v43, v50);
  }

  chainParent = self->_chainParent;
  v52 = *(fromCopy + 2);
  if (chainParent)
  {
    if (v52)
    {
      objc_msgSend_mergeFrom_(chainParent, v43, v52);
    }
  }

  else if (v52)
  {
    objc_msgSend_setChainParent_(self, v43, v52);
  }

  stableUrl = self->_stableUrl;
  v54 = *(fromCopy + 21);
  if (stableUrl)
  {
    if (v54)
    {
      objc_msgSend_mergeFrom_(stableUrl, v43, v54);
    }
  }

  else if (v54)
  {
    objc_msgSend_setStableUrl_(self, v43, v54);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v55 = *(fromCopy + 24);
  v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v77, v93, 16);
  if (v57)
  {
    v59 = v57;
    v60 = *v78;
    do
    {
      for (m = 0; m != v59; ++m)
      {
        if (*v78 != v60)
        {
          objc_enumerationMutation(v55);
        }

        objc_msgSend_addTombstonedPublicKeyIDs_(self, v58, *(*(&v77 + 1) + 8 * m), v77);
      }

      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v58, &v77, v93, 16);
    }

    while (v59);
  }

  v63 = *(fromCopy + 26);
  if (v63)
  {
    objc_msgSend_setZoneishPrimaryKeyId_(self, v62, v63);
  }

  storageExpiration = self->_storageExpiration;
  v65 = *(fromCopy + 22);
  if (storageExpiration)
  {
    if (v65)
    {
      objc_msgSend_mergeFrom_(storageExpiration, v62, v65);
    }
  }

  else if (v65)
  {
    objc_msgSend_setStorageExpiration_(self, v62, v65);
  }

  if ((*(fromCopy + 220) & 2) != 0)
  {
    self->_expired = *(fromCopy + 216);
    *&self->_has |= 2u;
  }

  expirationTime = self->_expirationTime;
  v67 = *(fromCopy + 9);
  if (expirationTime)
  {
    if (v67)
    {
      objc_msgSend_mergeFrom_(expirationTime, v62, v67);
    }
  }

  else if (v67)
  {
    objc_msgSend_setExpirationTime_(self, v62, v67);
  }

  appliedCryptoFeatures = self->_appliedCryptoFeatures;
  v69 = *(fromCopy + 1);
  if (appliedCryptoFeatures)
  {
    if (v69)
    {
      objc_msgSend_mergeFrom_(appliedCryptoFeatures, v62, v69);
    }
  }

  else if (v69)
  {
    objc_msgSend_setAppliedCryptoFeatures_(self, v62, v69);
  }

  protectionInfoKeysToRemove = self->_protectionInfoKeysToRemove;
  v71 = *(fromCopy + 17);
  if (protectionInfoKeysToRemove)
  {
    if (v71)
    {
      objc_msgSend_mergeFrom_(protectionInfoKeysToRemove, v62, v71);
    }
  }

  else if (v71)
  {
    objc_msgSend_setProtectionInfoKeysToRemove_(self, v62, v71);
  }

  oneTimeStableUrlInfo = self->_oneTimeStableUrlInfo;
  v73 = *(fromCopy + 13);
  if (oneTimeStableUrlInfo)
  {
    if (v73)
    {
      objc_msgSend_mergeFrom_(oneTimeStableUrlInfo, v62, v73);
    }
  }

  else if (v73)
  {
    objc_msgSend_setOneTimeStableUrlInfo_(self, v62, v73);
  }

  chainProtectionInfoKeysToRemove = self->_chainProtectionInfoKeysToRemove;
  v75 = *(fromCopy + 5);
  if (chainProtectionInfoKeysToRemove)
  {
    if (v75)
    {
      objc_msgSend_mergeFrom_(chainProtectionInfoKeysToRemove, v62, v75);
    }
  }

  else if (v75)
  {
    objc_msgSend_setChainProtectionInfoKeysToRemove_(self, v62, v75);
  }

  v76 = *MEMORY[0x277D85DE8];
}

- (void)_inflateFieldsFromData:(id)data
{
  v62 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    objc_msgSend_clearFields(self, v4, v5);
    v7 = objc_alloc(MEMORY[0x277D43170]);
    v9 = objc_msgSend_initWithData_(v7, v8, dataCopy);
    v12 = objc_msgSend_position(v9, v10, v11);
    if (v12 < objc_msgSend_length(v9, v13, v14))
    {
      v17 = MEMORY[0x277CBC880];
      v18 = MEMORY[0x277CBC830];
      while (1)
      {
        if (objc_msgSend_hasError(v9, v15, v16))
        {
          goto LABEL_42;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          buf[0] = 0;
          v24 = objc_msgSend_position(v9, v19, v20) + 1;
          if (v24 >= objc_msgSend_position(v9, v25, v26) && (v29 = objc_msgSend_position(v9, v27, v28) + 1, v29 <= objc_msgSend_length(v9, v30, v31)))
          {
            v32 = objc_msgSend_data(v9, v27, v28);
            v35 = objc_msgSend_position(v9, v33, v34);
            objc_msgSend_getBytes_range_(v32, v36, buf, v35, 1);

            v39 = objc_msgSend_position(v9, v37, v38);
            objc_msgSend_setPosition_(v9, v40, v39 + 1);
          }

          else
          {
            objc_msgSend__setError(v9, v27, v28);
          }

          v23 |= (buf[0] & 0x7F) << v21;
          if ((buf[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          if (v22++ >= 9)
          {
            v42 = 0;
            goto LABEL_17;
          }
        }

        v42 = objc_msgSend_hasError(v9, v19, v20) ? 0 : v23;
LABEL_17:
        if (objc_msgSend_hasError(v9, v19, v20))
        {
          break;
        }

        if ((v42 & 7) == 4)
        {
          goto LABEL_42;
        }

        if ((*&v42 & 0x7FFF8) != 0x18)
        {
          if (*v17 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v56 = *v18;
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *&buf[4] = (v42 >> 3);
            v53 = "Warn: Found an unexpected field tag: %d";
            v54 = v56;
            v55 = 8;
            goto LABEL_36;
          }

          goto LABEL_42;
        }

        v43 = objc_opt_new();
        objc_msgSend_addFields_(self, v44, v43);
        *buf = 0;
        v61 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          if (*v17 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v57 = *v18;
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
          {
            *v59 = 0;
            _os_log_impl(&dword_22506F000, v57, OS_LOG_TYPE_INFO, "Warn: Couldn't place a reader mark", v59, 2u);
          }

          goto LABEL_42;
        }

        if ((CKDPRecordFieldReadFrom(v43, v9, v45) & 1) == 0)
        {
          if (*v17 != -1)
          {
            dispatch_once(v17, *MEMORY[0x277CBC878]);
          }

          v46 = *v18;
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
          {
            *v59 = 0;
            _os_log_impl(&dword_22506F000, v46, OS_LOG_TYPE_INFO, "Warn: Couldn't read field", v59, 2u);
          }
        }

        PBReaderRecallMark();

        v49 = objc_msgSend_position(v9, v47, v48);
        if (v49 >= objc_msgSend_length(v9, v50, v51))
        {
          goto LABEL_42;
        }
      }

      if (*v17 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v52 = *v18;
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v53 = "Warn: Hit an error while decoding fields for a record";
        v54 = v52;
        v55 = 2;
LABEL_36:
        _os_log_impl(&dword_22506F000, v54, OS_LOG_TYPE_INFO, v53, buf, v55);
      }
    }

LABEL_42:
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (id)fieldData
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_fields;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v23, v27, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = objc_opt_new();
        objc_msgSend_writeTo_(v10, v12, v11, v23);
        v15 = objc_msgSend_data(v11, v13, v14);
        objc_msgSend_writeData_forTag_(v3, v16, v15, 3);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v17, &v23, v27, 16);
    }

    while (v7);
  }

  v20 = objc_msgSend_data(v3, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)fieldForKey:(id)key
{
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_fields;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v21, v25, 16);
  if (v9)
  {
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = objc_msgSend_identifier(v12, v7, v8, v21);
        v16 = objc_msgSend_name(v13, v14, v15);
        isEqualToString = objc_msgSend_isEqualToString_(v16, v17, keyCopy);

        if (isEqualToString)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v21, v25, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)recordFromData:(id)data
{
  dataCopy = data;
  v4 = objc_alloc_init(CKDPRecord);
  v5 = objc_alloc(MEMORY[0x277D43170]);
  v7 = objc_msgSend_initWithData_(v5, v6, dataCopy);

  CKDPRecordReadFrom(v4, v7, v8);

  return v4;
}

@end