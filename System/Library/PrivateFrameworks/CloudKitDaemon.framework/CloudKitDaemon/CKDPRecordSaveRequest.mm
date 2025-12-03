@interface CKDPRecordSaveRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)saveSemanticsAsString:(int)string;
- (int)StringAsSaveSemantics:(id)semantics;
- (int)saveSemantics;
- (unint64_t)hash;
- (void)addConflictLosersToResolve:(id)resolve;
- (void)addFieldsToDeleteIfExistOnMerge:(id)merge;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMerge:(BOOL)merge;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordSaveRequest

+ (id)options
{
  if (qword_280D54ED0 != -1)
  {
    dispatch_once(&qword_280D54ED0, &unk_28385DF80);
  }

  v3 = qword_280D54EC8;

  return v3;
}

- (void)setHasMerge:(BOOL)merge
{
  if (merge)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addFieldsToDeleteIfExistOnMerge:(id)merge
{
  mergeCopy = merge;
  fieldsToDeleteIfExistOnMerges = self->_fieldsToDeleteIfExistOnMerges;
  v8 = mergeCopy;
  if (!fieldsToDeleteIfExistOnMerges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fieldsToDeleteIfExistOnMerges;
    self->_fieldsToDeleteIfExistOnMerges = v6;

    mergeCopy = v8;
    fieldsToDeleteIfExistOnMerges = self->_fieldsToDeleteIfExistOnMerges;
  }

  objc_msgSend_addObject_(fieldsToDeleteIfExistOnMerges, mergeCopy, mergeCopy);
}

- (int)saveSemantics
{
  if (*&self->_has)
  {
    return self->_saveSemantics;
  }

  else
  {
    return 3;
  }
}

- (id)saveSemanticsAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854CB98[string - 1];
  }

  return v4;
}

- (int)StringAsSaveSemantics:(id)semantics
{
  semanticsCopy = semantics;
  if (objc_msgSend_isEqualToString_(semanticsCopy, v4, @"failIfOutdated"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(semanticsCopy, v5, @"failIfExists"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(semanticsCopy, v7, @"override"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)addConflictLosersToResolve:(id)resolve
{
  resolveCopy = resolve;
  conflictLosersToResolves = self->_conflictLosersToResolves;
  v8 = resolveCopy;
  if (!conflictLosersToResolves)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_conflictLosersToResolves;
    self->_conflictLosersToResolves = v6;

    resolveCopy = v8;
    conflictLosersToResolves = self->_conflictLosersToResolves;
  }

  objc_msgSend_addObject_(conflictLosersToResolves, resolveCopy, resolveCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordSaveRequest;
  v4 = [(CKDPRecordSaveRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  record = self->_record;
  if (record)
  {
    v8 = objc_msgSend_dictionaryRepresentation(record, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"record");
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_merge);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"merge");
  }

  if (objc_msgSend_count(self->_fieldsToDeleteIfExistOnMerges, v4, v5))
  {
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = objc_msgSend_count(self->_fieldsToDeleteIfExistOnMerges, v14, v15);
    v18 = objc_msgSend_initWithCapacity_(v13, v17, v16);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v19 = self->_fieldsToDeleteIfExistOnMerges;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v49, v53, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v50;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v50 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = objc_msgSend_dictionaryRepresentation(*(*(&v49 + 1) + 8 * i), v22, v23);
          objc_msgSend_addObject_(v18, v28, v27);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v49, v53, 16);
      }

      while (v24);
    }

    objc_msgSend_setObject_forKey_(v6, v29, v18, @"fieldsToDeleteIfExistOnMerge");
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setObject_forKey_(v6, v12, etag, @"etag");
  }

  conflictLoserUpdate = self->_conflictLoserUpdate;
  if (conflictLoserUpdate)
  {
    v32 = objc_msgSend_dictionaryRepresentation(conflictLoserUpdate, v12, etag);
    objc_msgSend_setObject_forKey_(v6, v33, v32, @"conflictLoserUpdate");
  }

  if (*&self->_has)
  {
    v34 = self->_saveSemantics - 1;
    if (v34 >= 3)
    {
      v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"(unknown: %i)", self->_saveSemantics);
    }

    else
    {
      v35 = off_27854CB98[v34];
    }

    objc_msgSend_setObject_forKey_(v6, v12, v35, @"saveSemantics");
  }

  zoneProtectionInfoTag = self->_zoneProtectionInfoTag;
  if (zoneProtectionInfoTag)
  {
    objc_msgSend_setObject_forKey_(v6, v12, zoneProtectionInfoTag, @"zoneProtectionInfoTag");
  }

  recordProtectionInfoTag = self->_recordProtectionInfoTag;
  if (recordProtectionInfoTag)
  {
    objc_msgSend_setObject_forKey_(v6, v12, recordProtectionInfoTag, @"recordProtectionInfoTag");
  }

  conflictLosersToResolves = self->_conflictLosersToResolves;
  if (conflictLosersToResolves)
  {
    objc_msgSend_setObject_forKey_(v6, v12, conflictLosersToResolves, @"conflictLosersToResolve");
  }

  shareEtag = self->_shareEtag;
  if (shareEtag)
  {
    objc_msgSend_setObject_forKey_(v6, v12, shareEtag, @"shareEtag");
  }

  shareIDUpdate = self->_shareIDUpdate;
  if (shareIDUpdate)
  {
    v41 = objc_msgSend_dictionaryRepresentation(shareIDUpdate, v12, shareEtag);
    objc_msgSend_setObject_forKey_(v6, v42, v41, @"shareIDUpdate");
  }

  parentChainProtectionInfoTag = self->_parentChainProtectionInfoTag;
  if (parentChainProtectionInfoTag)
  {
    objc_msgSend_setObject_forKey_(v6, v12, parentChainProtectionInfoTag, @"parentChainProtectionInfoTag");
  }

  requestedFields = self->_requestedFields;
  if (requestedFields)
  {
    v45 = objc_msgSend_dictionaryRepresentation(requestedFields, v12, parentChainProtectionInfoTag);
    objc_msgSend_setObject_forKey_(v6, v46, v45, @"requestedFields");
  }

  v47 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)to
{
  v34 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_record)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    merge = self->_merge;
    PBDataWriterWriteBOOLField();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_fieldsToDeleteIfExistOnMerges;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v28, v33, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v28, v33, 16);
    }

    while (v9);
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conflictLoserUpdate)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    saveSemantics = self->_saveSemantics;
    PBDataWriterWriteInt32Field();
  }

  if (self->_zoneProtectionInfoTag)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_recordProtectionInfoTag)
  {
    PBDataWriterWriteStringField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = self->_conflictLosersToResolves;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v24, v32, 16);
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v24 + 1) + 8 * v20);
        PBDataWriterWriteStringField();
        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v22, &v24, v32, 16);
    }

    while (v18);
  }

  if (self->_shareEtag)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shareIDUpdate)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_parentChainProtectionInfoTag)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_requestedFields)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  record = self->_record;
  v35 = toCopy;
  if (record)
  {
    objc_msgSend_setRecord_(toCopy, v5, record);
    toCopy = v35;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[104] = self->_merge;
    toCopy[108] |= 2u;
  }

  if (objc_msgSend_fieldsToDeleteIfExistOnMergesCount(self, v5, record))
  {
    objc_msgSend_clearFieldsToDeleteIfExistOnMerges(v35, v7, v8);
    v11 = objc_msgSend_fieldsToDeleteIfExistOnMergesCount(self, v9, v10);
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_fieldsToDeleteIfExistOnMergeAtIndex_(self, v7, i);
        objc_msgSend_addFieldsToDeleteIfExistOnMerge_(v35, v15, v14);
      }
    }
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setEtag_(v35, v7, etag);
  }

  conflictLoserUpdate = self->_conflictLoserUpdate;
  v18 = v35;
  if (conflictLoserUpdate)
  {
    objc_msgSend_setConflictLoserUpdate_(v35, v7, conflictLoserUpdate);
    v18 = v35;
  }

  if (*&self->_has)
  {
    *(v18 + 18) = self->_saveSemantics;
    v18[108] |= 1u;
  }

  zoneProtectionInfoTag = self->_zoneProtectionInfoTag;
  if (zoneProtectionInfoTag)
  {
    objc_msgSend_setZoneProtectionInfoTag_(v35, v7, zoneProtectionInfoTag);
  }

  recordProtectionInfoTag = self->_recordProtectionInfoTag;
  if (recordProtectionInfoTag)
  {
    objc_msgSend_setRecordProtectionInfoTag_(v35, v7, recordProtectionInfoTag);
  }

  if (objc_msgSend_conflictLosersToResolvesCount(self, v7, recordProtectionInfoTag))
  {
    objc_msgSend_clearConflictLosersToResolves(v35, v21, v22);
    v25 = objc_msgSend_conflictLosersToResolvesCount(self, v23, v24);
    if (v25)
    {
      v26 = v25;
      for (j = 0; j != v26; ++j)
      {
        v28 = objc_msgSend_conflictLosersToResolveAtIndex_(self, v21, j);
        objc_msgSend_addConflictLosersToResolve_(v35, v29, v28);
      }
    }
  }

  shareEtag = self->_shareEtag;
  if (shareEtag)
  {
    objc_msgSend_setShareEtag_(v35, v21, shareEtag);
  }

  shareIDUpdate = self->_shareIDUpdate;
  v32 = v35;
  if (shareIDUpdate)
  {
    objc_msgSend_setShareIDUpdate_(v35, v21, shareIDUpdate);
    v32 = v35;
  }

  parentChainProtectionInfoTag = self->_parentChainProtectionInfoTag;
  if (parentChainProtectionInfoTag)
  {
    objc_msgSend_setParentChainProtectionInfoTag_(v35, v21, parentChainProtectionInfoTag);
    v32 = v35;
  }

  requestedFields = self->_requestedFields;
  if (requestedFields)
  {
    objc_msgSend_setRequestedFields_(v35, v21, requestedFields);
    v32 = v35;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_record, v11, zone);
  v13 = *(v10 + 48);
  *(v10 + 48) = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 104) = self->_merge;
    *(v10 + 108) |= 2u;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v14 = self->_fieldsToDeleteIfExistOnMerges;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v62, v67, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v63;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v63 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v62 + 1) + 8 * i), v17, zone);
        objc_msgSend_addFieldsToDeleteIfExistOnMerge_(v10, v22, v21);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v62, v67, 16);
    }

    while (v18);
  }

  v24 = objc_msgSend_copyWithZone_(self->_etag, v23, zone);
  v25 = *(v10 + 24);
  *(v10 + 24) = v24;

  v27 = objc_msgSend_copyWithZone_(self->_conflictLoserUpdate, v26, zone);
  v28 = *(v10 + 8);
  *(v10 + 8) = v27;

  if (*&self->_has)
  {
    *(v10 + 72) = self->_saveSemantics;
    *(v10 + 108) |= 1u;
  }

  v30 = objc_msgSend_copyWithZone_(self->_zoneProtectionInfoTag, v29, zone);
  v31 = *(v10 + 96);
  *(v10 + 96) = v30;

  v33 = objc_msgSend_copyWithZone_(self->_recordProtectionInfoTag, v32, zone);
  v34 = *(v10 + 56);
  *(v10 + 56) = v33;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v35 = self->_conflictLosersToResolves;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v58, v66, 16);
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

        v42 = objc_msgSend_copyWithZone_(*(*(&v58 + 1) + 8 * j), v38, zone, v58);
        objc_msgSend_addConflictLosersToResolve_(v10, v43, v42);
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v58, v66, 16);
    }

    while (v39);
  }

  v45 = objc_msgSend_copyWithZone_(self->_shareEtag, v44, zone);
  v46 = *(v10 + 80);
  *(v10 + 80) = v45;

  v48 = objc_msgSend_copyWithZone_(self->_shareIDUpdate, v47, zone);
  v49 = *(v10 + 88);
  *(v10 + 88) = v48;

  v51 = objc_msgSend_copyWithZone_(self->_parentChainProtectionInfoTag, v50, zone);
  v52 = *(v10 + 40);
  *(v10 + 40) = v51;

  v54 = objc_msgSend_copyWithZone_(self->_requestedFields, v53, zone);
  v55 = *(v10 + 64);
  *(v10 + 64) = v54;

  v56 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_16;
  }

  record = self->_record;
  v9 = equalCopy[6];
  if (record | v9)
  {
    if (!objc_msgSend_isEqual_(record, v7, v9))
    {
      goto LABEL_16;
    }
  }

  v10 = *(equalCopy + 108);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 108) & 2) == 0)
    {
      goto LABEL_16;
    }

    v20 = *(equalCopy + 104);
    if (self->_merge)
    {
      if ((equalCopy[13] & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (equalCopy[13])
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 108) & 2) != 0)
  {
    goto LABEL_16;
  }

  fieldsToDeleteIfExistOnMerges = self->_fieldsToDeleteIfExistOnMerges;
  v12 = equalCopy[4];
  if (fieldsToDeleteIfExistOnMerges | v12 && !objc_msgSend_isEqual_(fieldsToDeleteIfExistOnMerges, v7, v12))
  {
    goto LABEL_16;
  }

  etag = self->_etag;
  v14 = equalCopy[3];
  if (etag | v14)
  {
    if (!objc_msgSend_isEqual_(etag, v7, v14))
    {
      goto LABEL_16;
    }
  }

  conflictLoserUpdate = self->_conflictLoserUpdate;
  v16 = equalCopy[1];
  if (conflictLoserUpdate | v16)
  {
    if (!objc_msgSend_isEqual_(conflictLoserUpdate, v7, v16))
    {
      goto LABEL_16;
    }
  }

  v17 = *(equalCopy + 108);
  if (*&self->_has)
  {
    if ((*(equalCopy + 108) & 1) != 0 && self->_saveSemantics == *(equalCopy + 18))
    {
      goto LABEL_25;
    }

LABEL_16:
    isEqual = 0;
    goto LABEL_17;
  }

  if (*(equalCopy + 108))
  {
    goto LABEL_16;
  }

LABEL_25:
  zoneProtectionInfoTag = self->_zoneProtectionInfoTag;
  v22 = equalCopy[12];
  if (zoneProtectionInfoTag | v22 && !objc_msgSend_isEqual_(zoneProtectionInfoTag, v7, v22))
  {
    goto LABEL_16;
  }

  recordProtectionInfoTag = self->_recordProtectionInfoTag;
  v24 = equalCopy[7];
  if (recordProtectionInfoTag | v24)
  {
    if (!objc_msgSend_isEqual_(recordProtectionInfoTag, v7, v24))
    {
      goto LABEL_16;
    }
  }

  conflictLosersToResolves = self->_conflictLosersToResolves;
  v26 = equalCopy[2];
  if (conflictLosersToResolves | v26)
  {
    if (!objc_msgSend_isEqual_(conflictLosersToResolves, v7, v26))
    {
      goto LABEL_16;
    }
  }

  shareEtag = self->_shareEtag;
  v28 = equalCopy[10];
  if (shareEtag | v28)
  {
    if (!objc_msgSend_isEqual_(shareEtag, v7, v28))
    {
      goto LABEL_16;
    }
  }

  shareIDUpdate = self->_shareIDUpdate;
  v30 = equalCopy[11];
  if (shareIDUpdate | v30)
  {
    if (!objc_msgSend_isEqual_(shareIDUpdate, v7, v30))
    {
      goto LABEL_16;
    }
  }

  parentChainProtectionInfoTag = self->_parentChainProtectionInfoTag;
  v32 = equalCopy[5];
  if (parentChainProtectionInfoTag | v32)
  {
    if (!objc_msgSend_isEqual_(parentChainProtectionInfoTag, v7, v32))
    {
      goto LABEL_16;
    }
  }

  requestedFields = self->_requestedFields;
  v34 = equalCopy[8];
  if (requestedFields | v34)
  {
    isEqual = objc_msgSend_isEqual_(requestedFields, v7, v34);
  }

  else
  {
    isEqual = 1;
  }

LABEL_17:

  return isEqual;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_record, a2, v2);
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_merge;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_msgSend_hash(self->_fieldsToDeleteIfExistOnMerges, v4, v5);
  v11 = objc_msgSend_hash(self->_etag, v9, v10);
  v14 = objc_msgSend_hash(self->_conflictLoserUpdate, v12, v13);
  if (*&self->_has)
  {
    v17 = 2654435761 * self->_saveSemantics;
  }

  else
  {
    v17 = 0;
  }

  v18 = v7 ^ v6 ^ v8 ^ v11 ^ v14 ^ v17 ^ objc_msgSend_hash(self->_zoneProtectionInfoTag, v15, v16);
  v21 = objc_msgSend_hash(self->_recordProtectionInfoTag, v19, v20);
  v24 = v21 ^ objc_msgSend_hash(self->_conflictLosersToResolves, v22, v23);
  v27 = v24 ^ objc_msgSend_hash(self->_shareEtag, v25, v26);
  v30 = v18 ^ v27 ^ objc_msgSend_hash(self->_shareIDUpdate, v28, v29);
  v33 = objc_msgSend_hash(self->_parentChainProtectionInfoTag, v31, v32);
  return v30 ^ v33 ^ objc_msgSend_hash(self->_requestedFields, v34, v35);
}

- (void)mergeFrom:(id)from
{
  v46 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  record = self->_record;
  v7 = *(fromCopy + 6);
  if (record)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(record, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setRecord_(self, v4, v7);
  }

  if ((*(fromCopy + 108) & 2) != 0)
  {
    self->_merge = *(fromCopy + 104);
    *&self->_has |= 2u;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = *(fromCopy + 4);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v40, v45, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addFieldsToDeleteIfExistOnMerge_(self, v11, *(*(&v40 + 1) + 8 * i));
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v40, v45, 16);
    }

    while (v12);
  }

  v16 = *(fromCopy + 3);
  if (v16)
  {
    objc_msgSend_setEtag_(self, v15, v16);
  }

  conflictLoserUpdate = self->_conflictLoserUpdate;
  v18 = *(fromCopy + 1);
  if (conflictLoserUpdate)
  {
    if (v18)
    {
      objc_msgSend_mergeFrom_(conflictLoserUpdate, v15, v18);
    }
  }

  else if (v18)
  {
    objc_msgSend_setConflictLoserUpdate_(self, v15, v18);
  }

  if (*(fromCopy + 108))
  {
    self->_saveSemantics = *(fromCopy + 18);
    *&self->_has |= 1u;
  }

  v19 = *(fromCopy + 12);
  if (v19)
  {
    objc_msgSend_setZoneProtectionInfoTag_(self, v15, v19);
  }

  v20 = *(fromCopy + 7);
  if (v20)
  {
    objc_msgSend_setRecordProtectionInfoTag_(self, v15, v20);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = *(fromCopy + 2);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v36, v44, 16);
  if (v23)
  {
    v25 = v23;
    v26 = *v37;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(v21);
        }

        objc_msgSend_addConflictLosersToResolve_(self, v24, *(*(&v36 + 1) + 8 * j), v36);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v36, v44, 16);
    }

    while (v25);
  }

  v29 = *(fromCopy + 10);
  if (v29)
  {
    objc_msgSend_setShareEtag_(self, v28, v29);
  }

  shareIDUpdate = self->_shareIDUpdate;
  v31 = *(fromCopy + 11);
  if (shareIDUpdate)
  {
    if (v31)
    {
      objc_msgSend_mergeFrom_(shareIDUpdate, v28, v31);
    }
  }

  else if (v31)
  {
    objc_msgSend_setShareIDUpdate_(self, v28, v31);
  }

  v32 = *(fromCopy + 5);
  if (v32)
  {
    objc_msgSend_setParentChainProtectionInfoTag_(self, v28, v32);
  }

  requestedFields = self->_requestedFields;
  v34 = *(fromCopy + 8);
  if (requestedFields)
  {
    if (v34)
    {
      objc_msgSend_mergeFrom_(requestedFields, v28, v34);
    }
  }

  else if (v34)
  {
    objc_msgSend_setRequestedFields_(self, v28, v34);
  }

  v35 = *MEMORY[0x277D85DE8];
}

@end