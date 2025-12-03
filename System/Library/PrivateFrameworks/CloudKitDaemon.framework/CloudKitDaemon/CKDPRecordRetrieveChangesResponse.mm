@interface CKDPRecordRetrieveChangesResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusAsString:(int)string;
- (int)StringAsStatus:(id)status;
- (int)status;
- (unint64_t)hash;
- (void)addChangedDeltas:(id)deltas;
- (void)addChangedRecord:(id)record;
- (void)addChangedShare:(id)share;
- (void)addSyncObligations:(id)obligations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPendingArchivedRecords:(BOOL)records;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordRetrieveChangesResponse

- (void)addChangedRecord:(id)record
{
  recordCopy = record;
  changedRecords = self->_changedRecords;
  v8 = recordCopy;
  if (!changedRecords)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_changedRecords;
    self->_changedRecords = v6;

    recordCopy = v8;
    changedRecords = self->_changedRecords;
  }

  objc_msgSend_addObject_(changedRecords, recordCopy, recordCopy);
}

- (int)status
{
  if (*&self->_has)
  {
    return self->_status;
  }

  else
  {
    return 1;
  }
}

- (id)statusAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854CB50[string - 1];
  }

  return v4;
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if (objc_msgSend_isEqualToString_(statusCopy, v4, @"inconsistent"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(statusCopy, v5, @"consistent"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(statusCopy, v7, @"noPendingChanges"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)addChangedShare:(id)share
{
  shareCopy = share;
  changedShares = self->_changedShares;
  v8 = shareCopy;
  if (!changedShares)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_changedShares;
    self->_changedShares = v6;

    shareCopy = v8;
    changedShares = self->_changedShares;
  }

  objc_msgSend_addObject_(changedShares, shareCopy, shareCopy);
}

- (void)setHasPendingArchivedRecords:(BOOL)records
{
  if (records)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addChangedDeltas:(id)deltas
{
  deltasCopy = deltas;
  changedDeltas = self->_changedDeltas;
  v8 = deltasCopy;
  if (!changedDeltas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_changedDeltas;
    self->_changedDeltas = v6;

    deltasCopy = v8;
    changedDeltas = self->_changedDeltas;
  }

  objc_msgSend_addObject_(changedDeltas, deltasCopy, deltasCopy);
}

- (void)addSyncObligations:(id)obligations
{
  obligationsCopy = obligations;
  syncObligations = self->_syncObligations;
  v8 = obligationsCopy;
  if (!syncObligations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_syncObligations;
    self->_syncObligations = v6;

    obligationsCopy = v8;
    syncObligations = self->_syncObligations;
  }

  objc_msgSend_addObject_(syncObligations, obligationsCopy, obligationsCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordRetrieveChangesResponse;
  v4 = [(CKDPRecordRetrieveChangesResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v113 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_count(self->_changedRecords, v5, v6))
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = objc_msgSend_count(self->_changedRecords, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v14 = self->_changedRecords;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v105, v112, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v106;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v106 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = objc_msgSend_dictionaryRepresentation(*(*(&v105 + 1) + 8 * i), v17, v18);
          objc_msgSend_addObject_(v13, v23, v22);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v105, v112, 16);
      }

      while (v19);
    }

    objc_msgSend_setObject_forKey_(v4, v24, v13, @"changedRecord");
  }

  syncContinuationToken = self->_syncContinuationToken;
  if (syncContinuationToken)
  {
    objc_msgSend_setObject_forKey_(v4, v7, syncContinuationToken, @"syncContinuationToken");
  }

  clientChangeToken = self->_clientChangeToken;
  if (clientChangeToken)
  {
    objc_msgSend_setObject_forKey_(v4, v7, clientChangeToken, @"clientChangeToken");
  }

  if (*&self->_has)
  {
    v27 = self->_status - 1;
    if (v27 >= 3)
    {
      v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"(unknown: %i)", self->_status);
    }

    else
    {
      v28 = off_27854CB50[v27];
    }

    objc_msgSend_setObject_forKey_(v4, v7, v28, @"status");
  }

  if (objc_msgSend_count(self->_changedShares, v7, clientChangeToken))
  {
    v31 = objc_alloc(MEMORY[0x277CBEB18]);
    v34 = objc_msgSend_count(self->_changedShares, v32, v33);
    v36 = objc_msgSend_initWithCapacity_(v31, v35, v34);
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v37 = self->_changedShares;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v101, v111, 16);
    if (v39)
    {
      v42 = v39;
      v43 = *v102;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v102 != v43)
          {
            objc_enumerationMutation(v37);
          }

          v45 = objc_msgSend_dictionaryRepresentation(*(*(&v101 + 1) + 8 * j), v40, v41);
          objc_msgSend_addObject_(v36, v46, v45);
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v101, v111, 16);
      }

      while (v42);
    }

    objc_msgSend_setObject_forKey_(v4, v47, v36, @"changedShare");
  }

  if ((*&self->_has & 2) != 0)
  {
    v48 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v29, self->_pendingArchivedRecords);
    objc_msgSend_setObject_forKey_(v4, v49, v48, @"pendingArchivedRecords");
  }

  if (objc_msgSend_count(self->_changedDeltas, v29, v30))
  {
    v52 = objc_alloc(MEMORY[0x277CBEB18]);
    v55 = objc_msgSend_count(self->_changedDeltas, v53, v54);
    v57 = objc_msgSend_initWithCapacity_(v52, v56, v55);
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v58 = self->_changedDeltas;
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v97, v110, 16);
    if (v60)
    {
      v63 = v60;
      v64 = *v98;
      do
      {
        for (k = 0; k != v63; ++k)
        {
          if (*v98 != v64)
          {
            objc_enumerationMutation(v58);
          }

          v66 = objc_msgSend_dictionaryRepresentation(*(*(&v97 + 1) + 8 * k), v61, v62);
          objc_msgSend_addObject_(v57, v67, v66);
        }

        v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v97, v110, 16);
      }

      while (v63);
    }

    objc_msgSend_setObject_forKey_(v4, v68, v57, @"changedDeltas");
  }

  if (objc_msgSend_count(self->_syncObligations, v50, v51))
  {
    v71 = objc_alloc(MEMORY[0x277CBEB18]);
    v74 = objc_msgSend_count(self->_syncObligations, v72, v73);
    v76 = objc_msgSend_initWithCapacity_(v71, v75, v74);
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v77 = self->_syncObligations;
    v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v93, v109, 16);
    if (v79)
    {
      v82 = v79;
      v83 = *v94;
      do
      {
        for (m = 0; m != v82; ++m)
        {
          if (*v94 != v83)
          {
            objc_enumerationMutation(v77);
          }

          v85 = objc_msgSend_dictionaryRepresentation(*(*(&v93 + 1) + 8 * m), v80, v81);
          objc_msgSend_addObject_(v76, v86, v85);
        }

        v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v80, &v93, v109, 16);
      }

      while (v82);
    }

    objc_msgSend_setObject_forKey_(v4, v87, v76, @"syncObligations");
  }

  zoneAttributesChange = self->_zoneAttributesChange;
  if (zoneAttributesChange)
  {
    v89 = objc_msgSend_dictionaryRepresentation(zoneAttributesChange, v69, v70);
    objc_msgSend_setObject_forKey_(v4, v90, v89, @"zoneAttributesChange");
  }

  v91 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v60 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = self->_changedRecords;
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

  if (self->_syncContinuationToken)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_clientChangeToken)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = self->_changedShares;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v48, v58, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    do
    {
      v19 = 0;
      do
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v48 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v21, &v48, v58, 16);
    }

    while (v17);
  }

  if ((*&self->_has & 2) != 0)
  {
    pendingArchivedRecords = self->_pendingArchivedRecords;
    PBDataWriterWriteBOOLField();
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = self->_changedDeltas;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v44, v57, 16);
  if (v25)
  {
    v26 = v25;
    v27 = *v45;
    do
    {
      v28 = 0;
      do
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v44 + 1) + 8 * v28);
        PBDataWriterWriteSubmessage();
        ++v28;
      }

      while (v26 != v28);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v30, &v44, v57, 16);
    }

    while (v26);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = self->_syncObligations;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v40, v56, 16);
  if (v33)
  {
    v34 = v33;
    v35 = *v41;
    do
    {
      v36 = 0;
      do
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(*(&v40 + 1) + 8 * v36);
        PBDataWriterWriteSubmessage();
        ++v36;
      }

      while (v34 != v36);
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v38, &v40, v56, 16);
    }

    while (v34);
  }

  if (self->_zoneAttributesChange)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (objc_msgSend_changedRecordsCount(self, v4, v5))
  {
    objc_msgSend_clearChangedRecords(toCopy, v6, v7);
    v10 = objc_msgSend_changedRecordsCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_changedRecordAtIndex_(self, v6, i);
        objc_msgSend_addChangedRecord_(toCopy, v14, v13);
      }
    }
  }

  syncContinuationToken = self->_syncContinuationToken;
  if (syncContinuationToken)
  {
    objc_msgSend_setSyncContinuationToken_(toCopy, v6, syncContinuationToken);
  }

  clientChangeToken = self->_clientChangeToken;
  if (clientChangeToken)
  {
    objc_msgSend_setClientChangeToken_(toCopy, v6, clientChangeToken);
  }

  if (*&self->_has)
  {
    *(toCopy + 10) = self->_status;
    *(toCopy + 76) |= 1u;
  }

  if (objc_msgSend_changedSharesCount(self, v6, clientChangeToken))
  {
    objc_msgSend_clearChangedShares(toCopy, v17, v18);
    v21 = objc_msgSend_changedSharesCount(self, v19, v20);
    if (v21)
    {
      v22 = v21;
      for (j = 0; j != v22; ++j)
      {
        v24 = objc_msgSend_changedShareAtIndex_(self, v17, j);
        objc_msgSend_addChangedShare_(toCopy, v25, v24);
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 72) = self->_pendingArchivedRecords;
    *(toCopy + 76) |= 2u;
  }

  if (objc_msgSend_changedDeltasCount(self, v17, v18))
  {
    objc_msgSend_clearChangedDeltas(toCopy, v26, v27);
    v30 = objc_msgSend_changedDeltasCount(self, v28, v29);
    if (v30)
    {
      v31 = v30;
      for (k = 0; k != v31; ++k)
      {
        v33 = objc_msgSend_changedDeltasAtIndex_(self, v26, k);
        objc_msgSend_addChangedDeltas_(toCopy, v34, v33);
      }
    }
  }

  if (objc_msgSend_syncObligationsCount(self, v26, v27))
  {
    objc_msgSend_clearSyncObligations(toCopy, v35, v36);
    v39 = objc_msgSend_syncObligationsCount(self, v37, v38);
    if (v39)
    {
      v40 = v39;
      for (m = 0; m != v40; ++m)
      {
        v42 = objc_msgSend_syncObligationsAtIndex_(self, v35, m);
        objc_msgSend_addSyncObligations_(toCopy, v43, v42);
      }
    }
  }

  zoneAttributesChange = self->_zoneAttributesChange;
  if (zoneAttributesChange)
  {
    objc_msgSend_setZoneAttributesChange_(toCopy, v35, zoneAttributesChange);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v11 = self->_changedRecords;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v70, v77, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v71;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v71 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v70 + 1) + 8 * i), v14, zone);
        objc_msgSend_addChangedRecord_(v10, v19, v18);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v70, v77, 16);
    }

    while (v15);
  }

  v21 = objc_msgSend_copyWithZone_(self->_syncContinuationToken, v20, zone);
  v22 = *(v10 + 48);
  *(v10 + 48) = v21;

  v24 = objc_msgSend_copyWithZone_(self->_clientChangeToken, v23, zone);
  v25 = *(v10 + 32);
  *(v10 + 32) = v24;

  if (*&self->_has)
  {
    *(v10 + 40) = self->_status;
    *(v10 + 76) |= 1u;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v26 = self->_changedShares;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v66, v76, 16);
  if (v28)
  {
    v30 = v28;
    v31 = *v67;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v67 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = objc_msgSend_copyWithZone_(*(*(&v66 + 1) + 8 * j), v29, zone);
        objc_msgSend_addChangedShare_(v10, v34, v33);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v66, v76, 16);
    }

    while (v30);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 72) = self->_pendingArchivedRecords;
    *(v10 + 76) |= 2u;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v35 = self->_changedDeltas;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v62, v75, 16);
  if (v37)
  {
    v39 = v37;
    v40 = *v63;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v63 != v40)
        {
          objc_enumerationMutation(v35);
        }

        v42 = objc_msgSend_copyWithZone_(*(*(&v62 + 1) + 8 * k), v38, zone);
        objc_msgSend_addChangedDeltas_(v10, v43, v42);
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v62, v75, 16);
    }

    while (v39);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v44 = self->_syncObligations;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v58, v74, 16);
  if (v46)
  {
    v48 = v46;
    v49 = *v59;
    do
    {
      for (m = 0; m != v48; ++m)
      {
        if (*v59 != v49)
        {
          objc_enumerationMutation(v44);
        }

        v51 = objc_msgSend_copyWithZone_(*(*(&v58 + 1) + 8 * m), v47, zone, v58);
        objc_msgSend_addSyncObligations_(v10, v52, v51);
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v47, &v58, v74, 16);
    }

    while (v48);
  }

  v54 = objc_msgSend_copyWithZone_(self->_zoneAttributesChange, v53, zone);
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
    goto LABEL_25;
  }

  changedRecords = self->_changedRecords;
  v9 = equalCopy[2];
  if (changedRecords | v9)
  {
    if (!objc_msgSend_isEqual_(changedRecords, v7, v9))
    {
      goto LABEL_25;
    }
  }

  syncContinuationToken = self->_syncContinuationToken;
  v11 = equalCopy[6];
  if (syncContinuationToken | v11)
  {
    if (!objc_msgSend_isEqual_(syncContinuationToken, v7, v11))
    {
      goto LABEL_25;
    }
  }

  clientChangeToken = self->_clientChangeToken;
  v13 = equalCopy[4];
  if (clientChangeToken | v13)
  {
    if (!objc_msgSend_isEqual_(clientChangeToken, v7, v13))
    {
      goto LABEL_25;
    }
  }

  has = self->_has;
  v15 = *(equalCopy + 76);
  if (has)
  {
    if ((*(equalCopy + 76) & 1) == 0 || self->_status != *(equalCopy + 10))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 76))
  {
    goto LABEL_25;
  }

  changedShares = self->_changedShares;
  v17 = equalCopy[3];
  if (changedShares | v17)
  {
    if (!objc_msgSend_isEqual_(changedShares, v7, v17))
    {
      goto LABEL_25;
    }

    has = self->_has;
    v15 = *(equalCopy + 76);
  }

  if ((has & 2) == 0)
  {
    if ((v15 & 2) == 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    isEqual = 0;
    goto LABEL_26;
  }

  if ((v15 & 2) == 0)
  {
    goto LABEL_25;
  }

  v26 = *(equalCopy + 72);
  if (self->_pendingArchivedRecords)
  {
    if ((equalCopy[9] & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (equalCopy[9])
  {
    goto LABEL_25;
  }

LABEL_18:
  changedDeltas = self->_changedDeltas;
  v19 = equalCopy[1];
  if (changedDeltas | v19 && !objc_msgSend_isEqual_(changedDeltas, v7, v19))
  {
    goto LABEL_25;
  }

  syncObligations = self->_syncObligations;
  v21 = equalCopy[7];
  if (syncObligations | v21)
  {
    if (!objc_msgSend_isEqual_(syncObligations, v7, v21))
    {
      goto LABEL_25;
    }
  }

  zoneAttributesChange = self->_zoneAttributesChange;
  v23 = equalCopy[8];
  if (zoneAttributesChange | v23)
  {
    isEqual = objc_msgSend_isEqual_(zoneAttributesChange, v7, v23);
  }

  else
  {
    isEqual = 1;
  }

LABEL_26:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_changedRecords, a2, v2);
  v7 = objc_msgSend_hash(self->_syncContinuationToken, v5, v6);
  v12 = objc_msgSend_hash(self->_clientChangeToken, v8, v9);
  if (*&self->_has)
  {
    v13 = 2654435761 * self->_status;
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_msgSend_hash(self->_changedShares, v10, v11);
  if ((*&self->_has & 2) != 0)
  {
    v17 = 2654435761 * self->_pendingArchivedRecords;
  }

  else
  {
    v17 = 0;
  }

  v18 = v7 ^ v4 ^ v12 ^ v13;
  v19 = v14 ^ v17 ^ objc_msgSend_hash(self->_changedDeltas, v15, v16);
  v22 = v18 ^ v19 ^ objc_msgSend_hash(self->_syncObligations, v20, v21);
  return v22 ^ objc_msgSend_hash(self->_zoneAttributesChange, v23, v24);
}

- (void)mergeFrom:(id)from
{
  v60 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = *(fromCopy + 2);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v52, v59, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v53;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_addChangedRecord_(self, v8, *(*(&v52 + 1) + 8 * i));
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v52, v59, 16);
    }

    while (v9);
  }

  v13 = *(fromCopy + 6);
  if (v13)
  {
    objc_msgSend_setSyncContinuationToken_(self, v12, v13);
  }

  v14 = *(fromCopy + 4);
  if (v14)
  {
    objc_msgSend_setClientChangeToken_(self, v12, v14);
  }

  if (*(fromCopy + 76))
  {
    self->_status = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = *(fromCopy + 3);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v48, v58, 16);
  if (v17)
  {
    v19 = v17;
    v20 = *v49;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v49 != v20)
        {
          objc_enumerationMutation(v15);
        }

        objc_msgSend_addChangedShare_(self, v18, *(*(&v48 + 1) + 8 * j));
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v48, v58, 16);
    }

    while (v19);
  }

  if ((*(fromCopy + 76) & 2) != 0)
  {
    self->_pendingArchivedRecords = *(fromCopy + 72);
    *&self->_has |= 2u;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v22 = *(fromCopy + 1);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v44, v57, 16);
  if (v24)
  {
    v26 = v24;
    v27 = *v45;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(v22);
        }

        objc_msgSend_addChangedDeltas_(self, v25, *(*(&v44 + 1) + 8 * k));
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v44, v57, 16);
    }

    while (v26);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v29 = *(fromCopy + 7);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v40, v56, 16);
  if (v31)
  {
    v33 = v31;
    v34 = *v41;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(v29);
        }

        objc_msgSend_addSyncObligations_(self, v32, *(*(&v40 + 1) + 8 * m), v40);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v40, v56, 16);
    }

    while (v33);
  }

  zoneAttributesChange = self->_zoneAttributesChange;
  v38 = *(fromCopy + 8);
  if (zoneAttributesChange)
  {
    if (v38)
    {
      objc_msgSend_mergeFrom_(zoneAttributesChange, v36, v38);
    }
  }

  else if (v38)
  {
    objc_msgSend_setZoneAttributesChange_(self, v36, v38);
  }

  v39 = *MEMORY[0x277D85DE8];
}

@end