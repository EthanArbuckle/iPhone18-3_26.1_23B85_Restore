@interface CKDPFetchArchivedRecordsResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusAsString:(int)string;
- (int)StringAsStatus:(id)status;
- (int)status;
- (unint64_t)hash;
- (void)addRecord:(id)record;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPFetchArchivedRecordsResponse

- (void)addRecord:(id)record
{
  recordCopy = record;
  records = self->_records;
  v8 = recordCopy;
  if (!records)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_records;
    self->_records = v6;

    recordCopy = v8;
    records = self->_records;
  }

  objc_msgSend_addObject_(records, recordCopy, recordCopy);
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
  if (string == 1)
  {
    v4 = @"incomplete";
  }

  else if (string == 2)
  {
    v4 = @"complete";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  return v4;
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(statusCopy, v4, @"incomplete") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(statusCopy, v5, @"complete"))
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPFetchArchivedRecordsResponse;
  v4 = [(CKDPFetchArchivedRecordsResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_count(self->_records, v5, v6))
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = objc_msgSend_count(self->_records, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = self->_records;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v31, v35, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v32;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = objc_msgSend_dictionaryRepresentation(*(*(&v31 + 1) + 8 * i), v17, v18);
          objc_msgSend_addObject_(v13, v23, v22);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v31, v35, 16);
      }

      while (v19);
    }

    objc_msgSend_setObject_forKey_(v4, v24, v13, @"record");
  }

  archiveContinuationToken = self->_archiveContinuationToken;
  if (archiveContinuationToken)
  {
    objc_msgSend_setObject_forKey_(v4, v7, archiveContinuationToken, @"archiveContinuationToken");
  }

  if (*&self->_has)
  {
    status = self->_status;
    if (status == 1)
    {
      v27 = @"incomplete";
      objc_msgSend_setObject_forKey_(v4, v7, @"incomplete", @"status");
    }

    else if (status == 2)
    {
      v27 = @"complete";
      objc_msgSend_setObject_forKey_(v4, v7, @"complete", @"status");
    }

    else
    {
      v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"(unknown: %i)", self->_status);
      objc_msgSend_setObject_forKey_(v4, v28, v27, @"status");
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_records;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v15, v19, 16);
    }

    while (v8);
  }

  if (self->_archiveContinuationToken)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (objc_msgSend_recordsCount(self, v4, v5))
  {
    objc_msgSend_clearRecords(toCopy, v6, v7);
    v10 = objc_msgSend_recordsCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_recordAtIndex_(self, v6, i);
        objc_msgSend_addRecord_(toCopy, v14, v13);
      }
    }
  }

  archiveContinuationToken = self->_archiveContinuationToken;
  if (archiveContinuationToken)
  {
    objc_msgSend_setArchiveContinuationToken_(toCopy, v6, archiveContinuationToken);
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_status;
    *(toCopy + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = self->_records;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v25, v29, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v25 + 1) + 8 * i), v14, zone, v25);
        objc_msgSend_addRecord_(v10, v19, v18);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v25, v29, 16);
    }

    while (v15);
  }

  v21 = objc_msgSend_copyWithZone_(self->_archiveContinuationToken, v20, zone);
  v22 = *(v10 + 8);
  *(v10 + 8) = v21;

  if (*&self->_has)
  {
    *(v10 + 24) = self->_status;
    *(v10 + 28) |= 1u;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_10;
  }

  records = self->_records;
  v9 = equalCopy[2];
  if (records | v9)
  {
    if (!objc_msgSend_isEqual_(records, v7, v9))
    {
      goto LABEL_10;
    }
  }

  archiveContinuationToken = self->_archiveContinuationToken;
  v11 = equalCopy[1];
  if (archiveContinuationToken | v11)
  {
    if (!objc_msgSend_isEqual_(archiveContinuationToken, v7, v11))
    {
      goto LABEL_10;
    }
  }

  v12 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_status == *(equalCopy + 6))
    {
      v12 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_records, a2, v2);
  v7 = objc_msgSend_hash(self->_archiveContinuationToken, v5, v6);
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_status;
  }

  else
  {
    v8 = 0;
  }

  return v7 ^ v4 ^ v8;
}

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(fromCopy + 2);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_addRecord_(self, v8, *(*(&v15 + 1) + 8 * i), v15);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v15, v19, 16);
    }

    while (v9);
  }

  v13 = *(fromCopy + 1);
  if (v13)
  {
    objc_msgSend_setArchiveContinuationToken_(self, v12, v13);
  }

  if (*(fromCopy + 28))
  {
    self->_status = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end