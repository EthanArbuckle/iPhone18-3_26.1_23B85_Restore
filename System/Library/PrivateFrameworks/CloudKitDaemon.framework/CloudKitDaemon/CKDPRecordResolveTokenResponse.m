@interface CKDPRecordResolveTokenResponse
- (BOOL)isEqual:(id)a3;
- (id)containerEnvironmentAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContainerEnvironment:(id)a3;
- (int)containerEnvironment;
- (unint64_t)hash;
- (void)addRecord:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRecordResolveTokenResponse

- (int)containerEnvironment
{
  if (*&self->_has)
  {
    return self->_containerEnvironment;
  }

  else
  {
    return 2;
  }
}

- (id)containerEnvironmentAsString:(int)a3
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

- (int)StringAsContainerEnvironment:(id)a3
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

- (void)addRecord:(id)a3
{
  v4 = a3;
  records = self->_records;
  v8 = v4;
  if (!records)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_records;
    self->_records = v6;

    v4 = v8;
    records = self->_records;
  }

  objc_msgSend_addObject_(records, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordResolveTokenResponse;
  v4 = [(CKDPRecordResolveTokenResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  container = self->_container;
  if (container)
  {
    objc_msgSend_setObject_forKey_(v4, v5, container, @"container");
  }

  if (*&self->_has)
  {
    containerEnvironment = self->_containerEnvironment;
    if (containerEnvironment == 1)
    {
      v9 = @"production";
      objc_msgSend_setObject_forKey_(v6, v5, @"production", @"containerEnvironment");
    }

    else if (containerEnvironment == 2)
    {
      v9 = @"sandbox";
      objc_msgSend_setObject_forKey_(v6, v5, @"sandbox", @"containerEnvironment");
    }

    else
    {
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_containerEnvironment);
      objc_msgSend_setObject_forKey_(v6, v10, v9, @"containerEnvironment");
    }
  }

  if (objc_msgSend_count(self->_records, v5, container))
  {
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = objc_msgSend_count(self->_records, v14, v15);
    v18 = objc_msgSend_initWithCapacity_(v13, v17, v16);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = self->_records;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v41, v45, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v42;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = objc_msgSend_dictionaryRepresentation(*(*(&v41 + 1) + 8 * i), v22, v23);
          objc_msgSend_addObject_(v18, v28, v27);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v41, v45, 16);
      }

      while (v24);
    }

    objc_msgSend_setObject_forKey_(v6, v29, v18, @"record");
  }

  shareRecord = self->_shareRecord;
  if (shareRecord)
  {
    v31 = objc_msgSend_dictionaryRepresentation(shareRecord, v11, v12);
    objc_msgSend_setObject_forKey_(v6, v32, v31, @"shareRecord");
  }

  shareMetadata = self->_shareMetadata;
  if (shareMetadata)
  {
    v34 = objc_msgSend_dictionaryRepresentation(shareMetadata, v11, v12);
    objc_msgSend_setObject_forKey_(v6, v35, v34, @"shareMetadata");
  }

  recordZone = self->_recordZone;
  if (recordZone)
  {
    v37 = objc_msgSend_dictionaryRepresentation(recordZone, v11, v12);
    objc_msgSend_setObject_forKey_(v6, v38, v37, @"recordZone");
  }

  v39 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_container)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    containerEnvironment = self->_containerEnvironment;
    PBDataWriterWriteInt32Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_records;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v15, v19, 16);
    }

    while (v9);
  }

  if (self->_shareRecord)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_shareMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_recordZone)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  container = self->_container;
  v20 = v4;
  if (container)
  {
    objc_msgSend_setContainer_(v4, v5, container);
    v4 = v20;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_containerEnvironment;
    *(v4 + 56) |= 1u;
  }

  if (objc_msgSend_recordsCount(self, v5, container))
  {
    objc_msgSend_clearRecords(v20, v7, v8);
    v11 = objc_msgSend_recordsCount(self, v9, v10);
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_recordAtIndex_(self, v7, i);
        objc_msgSend_addRecord_(v20, v15, v14);
      }
    }
  }

  shareRecord = self->_shareRecord;
  if (shareRecord)
  {
    objc_msgSend_setShareRecord_(v20, v7, shareRecord);
  }

  shareMetadata = self->_shareMetadata;
  v18 = v20;
  if (shareMetadata)
  {
    objc_msgSend_setShareMetadata_(v20, v7, shareMetadata);
    v18 = v20;
  }

  recordZone = self->_recordZone;
  if (recordZone)
  {
    objc_msgSend_setRecordZone_(v20, v7, recordZone);
    v18 = v20;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_container, v11, a3);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if (*&self->_has)
  {
    *(v10 + 16) = self->_containerEnvironment;
    *(v10 + 56) |= 1u;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = self->_records;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v34, v38, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v35;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v34 + 1) + 8 * i), v17, a3, v34);
        objc_msgSend_addRecord_(v10, v22, v21);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v34, v38, 16);
    }

    while (v18);
  }

  v24 = objc_msgSend_copyWithZone_(self->_shareRecord, v23, a3);
  v25 = *(v10 + 48);
  *(v10 + 48) = v24;

  v27 = objc_msgSend_copyWithZone_(self->_shareMetadata, v26, a3);
  v28 = *(v10 + 40);
  *(v10 + 40) = v27;

  v30 = objc_msgSend_copyWithZone_(self->_recordZone, v29, a3);
  v31 = *(v10 + 24);
  *(v10 + 24) = v30;

  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_17;
  }

  container = self->_container;
  v9 = v4[1];
  if (container | v9)
  {
    if (!objc_msgSend_isEqual_(container, v7, v9))
    {
      goto LABEL_17;
    }
  }

  v10 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((v4[7] & 1) == 0 || self->_containerEnvironment != *(v4 + 4))
    {
      goto LABEL_17;
    }
  }

  else if (v4[7])
  {
LABEL_17:
    isEqual = 0;
    goto LABEL_18;
  }

  records = self->_records;
  v12 = v4[4];
  if (records | v12 && !objc_msgSend_isEqual_(records, v7, v12))
  {
    goto LABEL_17;
  }

  shareRecord = self->_shareRecord;
  v14 = v4[6];
  if (shareRecord | v14)
  {
    if (!objc_msgSend_isEqual_(shareRecord, v7, v14))
    {
      goto LABEL_17;
    }
  }

  shareMetadata = self->_shareMetadata;
  v16 = v4[5];
  if (shareMetadata | v16)
  {
    if (!objc_msgSend_isEqual_(shareMetadata, v7, v16))
    {
      goto LABEL_17;
    }
  }

  recordZone = self->_recordZone;
  v18 = v4[3];
  if (recordZone | v18)
  {
    isEqual = objc_msgSend_isEqual_(recordZone, v7, v18);
  }

  else
  {
    isEqual = 1;
  }

LABEL_18:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_container, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_containerEnvironment;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 ^ v4;
  v9 = objc_msgSend_hash(self->_records, v5, v6);
  v12 = v8 ^ v9 ^ objc_msgSend_hash(self->_shareRecord, v10, v11);
  v15 = objc_msgSend_hash(self->_shareMetadata, v13, v14);
  return v12 ^ v15 ^ objc_msgSend_hash(self->_recordZone, v16, v17);
}

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(v5 + 1);
  if (v6)
  {
    objc_msgSend_setContainer_(self, v4, v6);
  }

  if (*(v5 + 56))
  {
    self->_containerEnvironment = *(v5 + 4);
    *&self->_has |= 1u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(v5 + 4);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v22, v26, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_addRecord_(self, v10, *(*(&v22 + 1) + 8 * i), v22);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v22, v26, 16);
    }

    while (v11);
  }

  shareRecord = self->_shareRecord;
  v16 = *(v5 + 6);
  if (shareRecord)
  {
    if (v16)
    {
      objc_msgSend_mergeFrom_(shareRecord, v14, v16);
    }
  }

  else if (v16)
  {
    objc_msgSend_setShareRecord_(self, v14, v16);
  }

  shareMetadata = self->_shareMetadata;
  v18 = *(v5 + 5);
  if (shareMetadata)
  {
    if (v18)
    {
      objc_msgSend_mergeFrom_(shareMetadata, v14, v18);
    }
  }

  else if (v18)
  {
    objc_msgSend_setShareMetadata_(self, v14, v18);
  }

  recordZone = self->_recordZone;
  v20 = *(v5 + 3);
  if (recordZone)
  {
    if (v20)
    {
      objc_msgSend_mergeFrom_(recordZone, v14, v20);
    }
  }

  else if (v20)
  {
    objc_msgSend_setRecordZone_(self, v14, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end