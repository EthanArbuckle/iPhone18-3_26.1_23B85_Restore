@interface CKDPZone
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addProtectionInfoKeysToRemove:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPZone

- (void)addProtectionInfoKeysToRemove:(id)a3
{
  v4 = a3;
  protectionInfoKeysToRemoves = self->_protectionInfoKeysToRemoves;
  v8 = v4;
  if (!protectionInfoKeysToRemoves)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_protectionInfoKeysToRemoves;
    self->_protectionInfoKeysToRemoves = v6;

    v4 = v8;
    protectionInfoKeysToRemoves = self->_protectionInfoKeysToRemoves;
  }

  objc_msgSend_addObject_(protectionInfoKeysToRemoves, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZone;
  v4 = [(CKDPZone *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(zoneIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"zoneIdentifier");
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    v11 = objc_msgSend_dictionaryRepresentation(protectionInfo, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"protectionInfo");
  }

  recordProtectionInfo = self->_recordProtectionInfo;
  if (recordProtectionInfo)
  {
    v14 = objc_msgSend_dictionaryRepresentation(recordProtectionInfo, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"recordProtectionInfo");
  }

  stableUrl = self->_stableUrl;
  if (stableUrl)
  {
    v17 = objc_msgSend_dictionaryRepresentation(stableUrl, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"stableUrl");
  }

  shareId = self->_shareId;
  if (shareId)
  {
    v20 = objc_msgSend_dictionaryRepresentation(shareId, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v21, v20, @"shareId");
  }

  protectionInfoKeysToRemoves = self->_protectionInfoKeysToRemoves;
  if (protectionInfoKeysToRemoves)
  {
    objc_msgSend_setObject_forKey_(v6, v4, protectionInfoKeysToRemoves, @"protectionInfoKeysToRemove");
  }

  storageExpiration = self->_storageExpiration;
  if (storageExpiration)
  {
    v24 = objc_msgSend_dictionaryRepresentation(storageExpiration, v4, protectionInfoKeysToRemoves);
    objc_msgSend_setObject_forKey_(v6, v25, v24, @"storageExpiration");
  }

  signedCryptoRequirements = self->_signedCryptoRequirements;
  if (signedCryptoRequirements)
  {
    v27 = objc_msgSend_dictionaryRepresentation(signedCryptoRequirements, v4, protectionInfoKeysToRemoves);
    objc_msgSend_setObject_forKey_(v6, v28, v27, @"signedCryptoRequirements");
  }

  appliedCryptoFeatures = self->_appliedCryptoFeatures;
  if (appliedCryptoFeatures)
  {
    v30 = objc_msgSend_dictionaryRepresentation(appliedCryptoFeatures, v4, protectionInfoKeysToRemoves);
    objc_msgSend_setObject_forKey_(v6, v31, v30, @"appliedCryptoFeatures");
  }

  zoneProtectionInfoKeysToRemove = self->_zoneProtectionInfoKeysToRemove;
  if (zoneProtectionInfoKeysToRemove)
  {
    v33 = objc_msgSend_dictionaryRepresentation(zoneProtectionInfoKeysToRemove, v4, protectionInfoKeysToRemoves);
    objc_msgSend_setObject_forKey_(v6, v34, v33, @"zoneProtectionInfoKeysToRemove");
  }

  recordProtectionInfoKeysToRemove = self->_recordProtectionInfoKeysToRemove;
  if (recordProtectionInfoKeysToRemove)
  {
    v36 = objc_msgSend_dictionaryRepresentation(recordProtectionInfoKeysToRemove, v4, protectionInfoKeysToRemoves);
    objc_msgSend_setObject_forKey_(v6, v37, v36, @"recordProtectionInfoKeysToRemove");
  }

  parentReference = self->_parentReference;
  if (parentReference)
  {
    v39 = objc_msgSend_dictionaryRepresentation(parentReference, v4, protectionInfoKeysToRemoves);
    objc_msgSend_setObject_forKey_(v6, v40, v39, @"parentReference");
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, etag, @"etag");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_protectionInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_recordProtectionInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_stableUrl)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_shareId)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_protectionInfoKeysToRemoves;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteDataField();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v14, v18, 16);
    }

    while (v8);
  }

  if (self->_storageExpiration)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_signedCryptoRequirements)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_appliedCryptoFeatures)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_zoneProtectionInfoKeysToRemove)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_recordProtectionInfoKeysToRemove)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_parentReference)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v27 = a3;
  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(v27, v4, zoneIdentifier);
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    objc_msgSend_setProtectionInfo_(v27, v4, protectionInfo);
  }

  recordProtectionInfo = self->_recordProtectionInfo;
  if (recordProtectionInfo)
  {
    objc_msgSend_setRecordProtectionInfo_(v27, v4, recordProtectionInfo);
  }

  stableUrl = self->_stableUrl;
  if (stableUrl)
  {
    objc_msgSend_setStableUrl_(v27, v4, stableUrl);
  }

  shareId = self->_shareId;
  if (shareId)
  {
    objc_msgSend_setShareId_(v27, v4, shareId);
  }

  if (objc_msgSend_protectionInfoKeysToRemovesCount(self, v4, shareId))
  {
    objc_msgSend_clearProtectionInfoKeysToRemoves(v27, v10, v11);
    v14 = objc_msgSend_protectionInfoKeysToRemovesCount(self, v12, v13);
    if (v14)
    {
      v15 = v14;
      for (i = 0; i != v15; ++i)
      {
        v17 = objc_msgSend_protectionInfoKeysToRemoveAtIndex_(self, v10, i);
        objc_msgSend_addProtectionInfoKeysToRemove_(v27, v18, v17);
      }
    }
  }

  storageExpiration = self->_storageExpiration;
  if (storageExpiration)
  {
    objc_msgSend_setStorageExpiration_(v27, v10, storageExpiration);
  }

  signedCryptoRequirements = self->_signedCryptoRequirements;
  v21 = v27;
  if (signedCryptoRequirements)
  {
    objc_msgSend_setSignedCryptoRequirements_(v27, v10, signedCryptoRequirements);
    v21 = v27;
  }

  appliedCryptoFeatures = self->_appliedCryptoFeatures;
  if (appliedCryptoFeatures)
  {
    objc_msgSend_setAppliedCryptoFeatures_(v27, v10, appliedCryptoFeatures);
    v21 = v27;
  }

  zoneProtectionInfoKeysToRemove = self->_zoneProtectionInfoKeysToRemove;
  if (zoneProtectionInfoKeysToRemove)
  {
    objc_msgSend_setZoneProtectionInfoKeysToRemove_(v27, v10, zoneProtectionInfoKeysToRemove);
    v21 = v27;
  }

  recordProtectionInfoKeysToRemove = self->_recordProtectionInfoKeysToRemove;
  if (recordProtectionInfoKeysToRemove)
  {
    objc_msgSend_setRecordProtectionInfoKeysToRemove_(v27, v10, recordProtectionInfoKeysToRemove);
    v21 = v27;
  }

  parentReference = self->_parentReference;
  if (parentReference)
  {
    objc_msgSend_setParentReference_(v27, v10, parentReference);
    v21 = v27;
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setEtag_(v27, v10, etag);
    v21 = v27;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v11, a3);
  v13 = v10[12];
  v10[12] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_protectionInfo, v14, a3);
  v16 = v10[4];
  v10[4] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_recordProtectionInfo, v17, a3);
  v19 = v10[6];
  v10[6] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_stableUrl, v20, a3);
  v22 = v10[10];
  v10[10] = v21;

  v24 = objc_msgSend_copyWithZone_(self->_shareId, v23, a3);
  v25 = v10[8];
  v10[8] = v24;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v26 = self->_protectionInfoKeysToRemoves;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v58, v62, 16);
  if (v28)
  {
    v30 = v28;
    v31 = *v59;
    do
    {
      v32 = 0;
      do
      {
        if (*v59 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = objc_msgSend_copyWithZone_(*(*(&v58 + 1) + 8 * v32), v29, a3, v58);
        objc_msgSend_addProtectionInfoKeysToRemove_(v10, v34, v33);

        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v58, v62, 16);
    }

    while (v30);
  }

  v36 = objc_msgSend_copyWithZone_(self->_storageExpiration, v35, a3);
  v37 = v10[11];
  v10[11] = v36;

  v39 = objc_msgSend_copyWithZone_(self->_signedCryptoRequirements, v38, a3);
  v40 = v10[9];
  v10[9] = v39;

  v42 = objc_msgSend_copyWithZone_(self->_appliedCryptoFeatures, v41, a3);
  v43 = v10[1];
  v10[1] = v42;

  v45 = objc_msgSend_copyWithZone_(self->_zoneProtectionInfoKeysToRemove, v44, a3);
  v46 = v10[13];
  v10[13] = v45;

  v48 = objc_msgSend_copyWithZone_(self->_recordProtectionInfoKeysToRemove, v47, a3);
  v49 = v10[7];
  v10[7] = v48;

  v51 = objc_msgSend_copyWithZone_(self->_parentReference, v50, a3);
  v52 = v10[3];
  v10[3] = v51;

  v54 = objc_msgSend_copyWithZone_(self->_etag, v53, a3);
  v55 = v10[2];
  v10[2] = v54;

  v56 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_28;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v9 = v4[12];
  if (zoneIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(zoneIdentifier, v7, v9))
    {
      goto LABEL_28;
    }
  }

  protectionInfo = self->_protectionInfo;
  v11 = v4[4];
  if (protectionInfo | v11)
  {
    if (!objc_msgSend_isEqual_(protectionInfo, v7, v11))
    {
      goto LABEL_28;
    }
  }

  recordProtectionInfo = self->_recordProtectionInfo;
  v13 = v4[6];
  if (recordProtectionInfo | v13)
  {
    if (!objc_msgSend_isEqual_(recordProtectionInfo, v7, v13))
    {
      goto LABEL_28;
    }
  }

  stableUrl = self->_stableUrl;
  v15 = v4[10];
  if (stableUrl | v15)
  {
    if (!objc_msgSend_isEqual_(stableUrl, v7, v15))
    {
      goto LABEL_28;
    }
  }

  shareId = self->_shareId;
  v17 = v4[8];
  if (shareId | v17)
  {
    if (!objc_msgSend_isEqual_(shareId, v7, v17))
    {
      goto LABEL_28;
    }
  }

  protectionInfoKeysToRemoves = self->_protectionInfoKeysToRemoves;
  v19 = v4[5];
  if (protectionInfoKeysToRemoves | v19)
  {
    if (!objc_msgSend_isEqual_(protectionInfoKeysToRemoves, v7, v19))
    {
      goto LABEL_28;
    }
  }

  storageExpiration = self->_storageExpiration;
  v21 = v4[11];
  if (storageExpiration | v21)
  {
    if (!objc_msgSend_isEqual_(storageExpiration, v7, v21))
    {
      goto LABEL_28;
    }
  }

  signedCryptoRequirements = self->_signedCryptoRequirements;
  v23 = v4[9];
  if (signedCryptoRequirements | v23)
  {
    if (!objc_msgSend_isEqual_(signedCryptoRequirements, v7, v23))
    {
      goto LABEL_28;
    }
  }

  appliedCryptoFeatures = self->_appliedCryptoFeatures;
  v25 = v4[1];
  if (appliedCryptoFeatures | v25)
  {
    if (!objc_msgSend_isEqual_(appliedCryptoFeatures, v7, v25))
    {
      goto LABEL_28;
    }
  }

  if (((zoneProtectionInfoKeysToRemove = self->_zoneProtectionInfoKeysToRemove, v27 = v4[13], !(zoneProtectionInfoKeysToRemove | v27)) || objc_msgSend_isEqual_(zoneProtectionInfoKeysToRemove, v7, v27)) && ((recordProtectionInfoKeysToRemove = self->_recordProtectionInfoKeysToRemove, v29 = v4[7], !(recordProtectionInfoKeysToRemove | v29)) || objc_msgSend_isEqual_(recordProtectionInfoKeysToRemove, v7, v29)) && ((parentReference = self->_parentReference, v31 = v4[3], !(parentReference | v31)) || objc_msgSend_isEqual_(parentReference, v7, v31)))
  {
    etag = self->_etag;
    v33 = v4[2];
    if (etag | v33)
    {
      isEqual = objc_msgSend_isEqual_(etag, v7, v33);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
LABEL_28:
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_zoneIdentifier, a2, v2);
  v7 = objc_msgSend_hash(self->_protectionInfo, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_recordProtectionInfo, v8, v9);
  v13 = v7 ^ v10 ^ objc_msgSend_hash(self->_stableUrl, v11, v12);
  v16 = objc_msgSend_hash(self->_shareId, v14, v15);
  v19 = v16 ^ objc_msgSend_hash(self->_protectionInfoKeysToRemoves, v17, v18);
  v22 = v13 ^ v19 ^ objc_msgSend_hash(self->_storageExpiration, v20, v21);
  v25 = objc_msgSend_hash(self->_signedCryptoRequirements, v23, v24);
  v28 = v25 ^ objc_msgSend_hash(self->_appliedCryptoFeatures, v26, v27);
  v31 = v28 ^ objc_msgSend_hash(self->_zoneProtectionInfoKeysToRemove, v29, v30);
  v34 = v22 ^ v31 ^ objc_msgSend_hash(self->_recordProtectionInfoKeysToRemove, v32, v33);
  v37 = objc_msgSend_hash(self->_parentReference, v35, v36);
  return v34 ^ v37 ^ objc_msgSend_hash(self->_etag, v38, v39);
}

- (void)mergeFrom:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  zoneIdentifier = self->_zoneIdentifier;
  v7 = *(v5 + 12);
  if (zoneIdentifier)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(zoneIdentifier, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setZoneIdentifier_(self, v4, v7);
  }

  protectionInfo = self->_protectionInfo;
  v9 = *(v5 + 4);
  if (protectionInfo)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(protectionInfo, v4, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setProtectionInfo_(self, v4, v9);
  }

  recordProtectionInfo = self->_recordProtectionInfo;
  v11 = *(v5 + 6);
  if (recordProtectionInfo)
  {
    if (v11)
    {
      objc_msgSend_mergeFrom_(recordProtectionInfo, v4, v11);
    }
  }

  else if (v11)
  {
    objc_msgSend_setRecordProtectionInfo_(self, v4, v11);
  }

  stableUrl = self->_stableUrl;
  v13 = *(v5 + 10);
  if (stableUrl)
  {
    if (v13)
    {
      objc_msgSend_mergeFrom_(stableUrl, v4, v13);
    }
  }

  else if (v13)
  {
    objc_msgSend_setStableUrl_(self, v4, v13);
  }

  shareId = self->_shareId;
  v15 = *(v5 + 8);
  if (shareId)
  {
    if (v15)
    {
      objc_msgSend_mergeFrom_(shareId, v4, v15);
    }
  }

  else if (v15)
  {
    objc_msgSend_setShareId_(self, v4, v15);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = *(v5 + 5);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v38, v42, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v39;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_addProtectionInfoKeysToRemove_(self, v19, *(*(&v38 + 1) + 8 * i), v38);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v38, v42, 16);
    }

    while (v20);
  }

  storageExpiration = self->_storageExpiration;
  v25 = *(v5 + 11);
  if (storageExpiration)
  {
    if (v25)
    {
      objc_msgSend_mergeFrom_(storageExpiration, v23, v25);
    }
  }

  else if (v25)
  {
    objc_msgSend_setStorageExpiration_(self, v23, v25);
  }

  signedCryptoRequirements = self->_signedCryptoRequirements;
  v27 = *(v5 + 9);
  if (signedCryptoRequirements)
  {
    if (v27)
    {
      objc_msgSend_mergeFrom_(signedCryptoRequirements, v23, v27);
    }
  }

  else if (v27)
  {
    objc_msgSend_setSignedCryptoRequirements_(self, v23, v27);
  }

  appliedCryptoFeatures = self->_appliedCryptoFeatures;
  v29 = *(v5 + 1);
  if (appliedCryptoFeatures)
  {
    if (v29)
    {
      objc_msgSend_mergeFrom_(appliedCryptoFeatures, v23, v29);
    }
  }

  else if (v29)
  {
    objc_msgSend_setAppliedCryptoFeatures_(self, v23, v29);
  }

  zoneProtectionInfoKeysToRemove = self->_zoneProtectionInfoKeysToRemove;
  v31 = *(v5 + 13);
  if (zoneProtectionInfoKeysToRemove)
  {
    if (v31)
    {
      objc_msgSend_mergeFrom_(zoneProtectionInfoKeysToRemove, v23, v31);
    }
  }

  else if (v31)
  {
    objc_msgSend_setZoneProtectionInfoKeysToRemove_(self, v23, v31);
  }

  recordProtectionInfoKeysToRemove = self->_recordProtectionInfoKeysToRemove;
  v33 = *(v5 + 7);
  if (recordProtectionInfoKeysToRemove)
  {
    if (v33)
    {
      objc_msgSend_mergeFrom_(recordProtectionInfoKeysToRemove, v23, v33);
    }
  }

  else if (v33)
  {
    objc_msgSend_setRecordProtectionInfoKeysToRemove_(self, v23, v33);
  }

  parentReference = self->_parentReference;
  v35 = *(v5 + 3);
  if (parentReference)
  {
    if (v35)
    {
      objc_msgSend_mergeFrom_(parentReference, v23, v35);
    }
  }

  else if (v35)
  {
    objc_msgSend_setParentReference_(self, v23, v35);
  }

  v36 = *(v5 + 2);
  if (v36)
  {
    objc_msgSend_setEtag_(self, v23, v36);
  }

  v37 = *MEMORY[0x277D85DE8];
}

@end