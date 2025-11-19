@interface CKDPRealTimeMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAssociatedMergeableDeltas:(id)a3;
- (void)addDeleteRecordids:(id)a3;
- (void)addSaveRecords:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRealTimeMessage

- (void)addSaveRecords:(id)a3
{
  v4 = a3;
  saveRecords = self->_saveRecords;
  v8 = v4;
  if (!saveRecords)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_saveRecords;
    self->_saveRecords = v6;

    v4 = v8;
    saveRecords = self->_saveRecords;
  }

  objc_msgSend_addObject_(saveRecords, v4, v4);
}

- (void)addDeleteRecordids:(id)a3
{
  v4 = a3;
  deleteRecordids = self->_deleteRecordids;
  v8 = v4;
  if (!deleteRecordids)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_deleteRecordids;
    self->_deleteRecordids = v6;

    v4 = v8;
    deleteRecordids = self->_deleteRecordids;
  }

  objc_msgSend_addObject_(deleteRecordids, v4, v4);
}

- (void)addAssociatedMergeableDeltas:(id)a3
{
  v4 = a3;
  associatedMergeableDeltas = self->_associatedMergeableDeltas;
  v8 = v4;
  if (!associatedMergeableDeltas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_associatedMergeableDeltas;
    self->_associatedMergeableDeltas = v6;

    v4 = v8;
    associatedMergeableDeltas = self->_associatedMergeableDeltas;
  }

  objc_msgSend_addObject_(associatedMergeableDeltas, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRealTimeMessage;
  v4 = [(CKDPRealTimeMessage *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v81 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v7 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_version);
    objc_msgSend_setObject_forKey_(v6, v8, v7, @"version");
  }

  if (objc_msgSend_count(self->_saveRecords, v4, v5))
  {
    v11 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = objc_msgSend_count(self->_saveRecords, v12, v13);
    v16 = objc_msgSend_initWithCapacity_(v11, v15, v14);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v17 = self->_saveRecords;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v74, v80, 16);
    if (v19)
    {
      v22 = v19;
      v23 = *v75;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v75 != v23)
          {
            objc_enumerationMutation(v17);
          }

          v25 = objc_msgSend_dictionaryRepresentation(*(*(&v74 + 1) + 8 * i), v20, v21);
          objc_msgSend_addObject_(v16, v26, v25);
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v74, v80, 16);
      }

      while (v22);
    }

    objc_msgSend_setObject_forKey_(v6, v27, v16, @"save_records");
  }

  if (objc_msgSend_count(self->_deleteRecordids, v9, v10))
  {
    v30 = objc_alloc(MEMORY[0x277CBEB18]);
    v33 = objc_msgSend_count(self->_deleteRecordids, v31, v32);
    v35 = objc_msgSend_initWithCapacity_(v30, v34, v33);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v36 = self->_deleteRecordids;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v70, v79, 16);
    if (v38)
    {
      v41 = v38;
      v42 = *v71;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v71 != v42)
          {
            objc_enumerationMutation(v36);
          }

          v44 = objc_msgSend_dictionaryRepresentation(*(*(&v70 + 1) + 8 * j), v39, v40);
          objc_msgSend_addObject_(v35, v45, v44);
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v70, v79, 16);
      }

      while (v41);
    }

    objc_msgSend_setObject_forKey_(v6, v46, v35, @"delete_recordids");
  }

  if (objc_msgSend_count(self->_associatedMergeableDeltas, v28, v29))
  {
    v47 = objc_alloc(MEMORY[0x277CBEB18]);
    v50 = objc_msgSend_count(self->_associatedMergeableDeltas, v48, v49);
    v52 = objc_msgSend_initWithCapacity_(v47, v51, v50);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v53 = self->_associatedMergeableDeltas;
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v66, v78, 16);
    if (v55)
    {
      v58 = v55;
      v59 = *v67;
      do
      {
        for (k = 0; k != v58; ++k)
        {
          if (*v67 != v59)
          {
            objc_enumerationMutation(v53);
          }

          v61 = objc_msgSend_dictionaryRepresentation(*(*(&v66 + 1) + 8 * k), v56, v57, v66);
          objc_msgSend_addObject_(v52, v62, v61);
        }

        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v66, v78, 16);
      }

      while (v58);
    }

    objc_msgSend_setObject_forKey_(v6, v63, v52, @"associated_mergeable_deltas");
  }

  v64 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)readFrom:(id)a3
{
  v5 = objc_msgSend_position(a3, a2, a3);
  if (v5 < objc_msgSend_length(a3, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a3, v8, v9))
      {
        return objc_msgSend_hasError(a3, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v65) = 0;
        v13 = objc_msgSend_position(a3, v8, v9, v65) + 1;
        if (v13 >= objc_msgSend_position(a3, v14, v15) && (v18 = objc_msgSend_position(a3, v16, v17) + 1, v18 <= objc_msgSend_length(a3, v19, v20)))
        {
          v21 = objc_msgSend_data(a3, v16, v17);
          v24 = objc_msgSend_position(a3, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v65, v24, 1);

          v28 = objc_msgSend_position(a3, v26, v27);
          objc_msgSend_setPosition_(a3, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a3, v16, v17);
        }

        v12 |= (v65 & 0x7F) << v10;
        if ((v65 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a3, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a3, v8, v9))
      {
        return objc_msgSend_hasError(a3, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a3, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = objc_alloc_init(CKDPRealTimeMessageDeleteRecordID);
          objc_msgSend_addDeleteRecordids_(self, v59, v33);
          v65 = 0;
          v66 = 0;
          if (!PBReaderPlaceMark() || !sub_225318DEC(v33, a3, v60))
          {
LABEL_48:

            return 0;
          }

          goto LABEL_41;
        }

        if (v32 == 4)
        {
          v33 = objc_alloc_init(CKDPRealTimeMessageAssociatedMergeableDeltas);
          objc_msgSend_addAssociatedMergeableDeltas_(self, v36, v33);
          v65 = 0;
          v66 = 0;
          if (!PBReaderPlaceMark() || !sub_2253181E0(&v33->super.super.isa, a3, v37))
          {
            goto LABEL_48;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            LOBYTE(v65) = 0;
            v41 = objc_msgSend_position(a3, v32, v9, v65) + 1;
            if (v41 >= objc_msgSend_position(a3, v42, v43) && (v46 = objc_msgSend_position(a3, v44, v45) + 1, v46 <= objc_msgSend_length(a3, v47, v48)))
            {
              v49 = objc_msgSend_data(a3, v44, v45);
              v52 = objc_msgSend_position(a3, v50, v51);
              objc_msgSend_getBytes_range_(v49, v53, &v65, v52, 1);

              v56 = objc_msgSend_position(a3, v54, v55);
              objc_msgSend_setPosition_(a3, v57, v56 + 1);
            }

            else
            {
              objc_msgSend__setError(a3, v44, v45);
            }

            v40 |= (v65 & 0x7F) << v38;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v30 = v39++ >= 9;
            if (v30)
            {
              v58 = 0;
              goto LABEL_45;
            }
          }

          if (objc_msgSend_hasError(a3, v32, v9))
          {
            v58 = 0;
          }

          else
          {
            v58 = v40;
          }

LABEL_45:
          self->_version = v58;
          goto LABEL_46;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CKDPRealTimeMessageSaveRecord);
          objc_msgSend_addSaveRecords_(self, v34, v33);
          v65 = 0;
          v66 = 0;
          if (!PBReaderPlaceMark() || !sub_225319314(v33, a3, v35))
          {
            goto LABEL_48;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v61 = objc_msgSend_position(a3, v32, v9);
    }

    while (v61 < objc_msgSend_length(a3, v62, v63));
  }

  return objc_msgSend_hasError(a3, v8, v9) ^ 1;
}

- (void)writeTo:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = self->_saveRecords;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v39, v45, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      v11 = 0;
      do
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v39 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v39, v45, 16);
    }

    while (v9);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = self->_deleteRecordids;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v35, v44, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    do
    {
      v19 = 0;
      do
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v35 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v21, &v35, v44, 16);
    }

    while (v17);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = self->_associatedMergeableDeltas;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v31, v43, 16);
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v31 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v29, &v31, v43, 16);
    }

    while (v25);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_version;
    *(v4 + 36) |= 1u;
  }

  v35 = v4;
  if (objc_msgSend_saveRecordsCount(self, v5, v6))
  {
    objc_msgSend_clearSaveRecords(v35, v7, v8);
    v11 = objc_msgSend_saveRecordsCount(self, v9, v10);
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_saveRecordsAtIndex_(self, v7, i);
        objc_msgSend_addSaveRecords_(v35, v15, v14);
      }
    }
  }

  if (objc_msgSend_deleteRecordidsCount(self, v7, v8))
  {
    objc_msgSend_clearDeleteRecordids(v35, v16, v17);
    v20 = objc_msgSend_deleteRecordidsCount(self, v18, v19);
    if (v20)
    {
      v21 = v20;
      for (j = 0; j != v21; ++j)
      {
        v23 = objc_msgSend_deleteRecordidsAtIndex_(self, v16, j);
        objc_msgSend_addDeleteRecordids_(v35, v24, v23);
      }
    }
  }

  if (objc_msgSend_associatedMergeableDeltasCount(self, v16, v17))
  {
    objc_msgSend_clearAssociatedMergeableDeltas(v35, v25, v26);
    v29 = objc_msgSend_associatedMergeableDeltasCount(self, v27, v28);
    if (v29)
    {
      v31 = v29;
      for (k = 0; k != v31; ++k)
      {
        v33 = objc_msgSend_associatedMergeableDeltasAtIndex_(self, v30, k);
        objc_msgSend_addAssociatedMergeableDeltas_(v35, v34, v33);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v11 = v10;
  if (*&self->_has)
  {
    *(v10 + 32) = self->_version;
    *(v10 + 36) |= 1u;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = self->_saveRecords;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v49, v55, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v50;
    do
    {
      v18 = 0;
      do
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = objc_msgSend_copyWithZone_(*(*(&v49 + 1) + 8 * v18), v15, a3);
        objc_msgSend_addSaveRecords_(v11, v20, v19);

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v49, v55, 16);
    }

    while (v16);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v21 = self->_deleteRecordids;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v45, v54, 16);
  if (v23)
  {
    v25 = v23;
    v26 = *v46;
    do
    {
      v27 = 0;
      do
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = objc_msgSend_copyWithZone_(*(*(&v45 + 1) + 8 * v27), v24, a3);
        objc_msgSend_addDeleteRecordids_(v11, v29, v28);

        ++v27;
      }

      while (v25 != v27);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v45, v54, 16);
    }

    while (v25);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v30 = self->_associatedMergeableDeltas;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v41, v53, 16);
  if (v32)
  {
    v34 = v32;
    v35 = *v42;
    do
    {
      v36 = 0;
      do
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(v30);
        }

        v37 = objc_msgSend_copyWithZone_(*(*(&v41 + 1) + 8 * v36), v33, a3, v41);
        objc_msgSend_addAssociatedMergeableDeltas_(v11, v38, v37);

        ++v36;
      }

      while (v34 != v36);
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v41, v53, 16);
    }

    while (v34);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_13;
  }

  v8 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_version != *(v4 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_13:
    isEqual = 0;
    goto LABEL_14;
  }

  saveRecords = self->_saveRecords;
  v10 = v4[3];
  if (saveRecords | v10 && !objc_msgSend_isEqual_(saveRecords, v7, v10))
  {
    goto LABEL_13;
  }

  deleteRecordids = self->_deleteRecordids;
  v12 = v4[2];
  if (deleteRecordids | v12)
  {
    if (!objc_msgSend_isEqual_(deleteRecordids, v7, v12))
    {
      goto LABEL_13;
    }
  }

  associatedMergeableDeltas = self->_associatedMergeableDeltas;
  v14 = v4[1];
  if (associatedMergeableDeltas | v14)
  {
    isEqual = objc_msgSend_isEqual_(associatedMergeableDeltas, v7, v14);
  }

  else
  {
    isEqual = 1;
  }

LABEL_14:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_version;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_saveRecords, a2, v2) ^ v4;
  v8 = objc_msgSend_hash(self->_deleteRecordids, v6, v7);
  return v5 ^ v8 ^ objc_msgSend_hash(self->_associatedMergeableDeltas, v9, v10);
}

- (void)mergeFrom:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 36))
  {
    self->_version = *(v4 + 8);
    *&self->_has |= 1u;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = *(v4 + 3);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v36, v42, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v37;
    do
    {
      v12 = 0;
      do
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_addSaveRecords_(self, v9, *(*(&v36 + 1) + 8 * v12++));
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v36, v42, 16);
    }

    while (v10);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v5[2];
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v32, v41, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v33;
    do
    {
      v19 = 0;
      do
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_addDeleteRecordids_(self, v16, *(*(&v32 + 1) + 8 * v19++));
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v32, v41, 16);
    }

    while (v17);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = v5[1];
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v28, v40, 16);
  if (v22)
  {
    v24 = v22;
    v25 = *v29;
    do
    {
      v26 = 0;
      do
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v20);
        }

        objc_msgSend_addAssociatedMergeableDeltas_(self, v23, *(*(&v28 + 1) + 8 * v26++), v28);
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v28, v40, 16);
    }

    while (v24);
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end