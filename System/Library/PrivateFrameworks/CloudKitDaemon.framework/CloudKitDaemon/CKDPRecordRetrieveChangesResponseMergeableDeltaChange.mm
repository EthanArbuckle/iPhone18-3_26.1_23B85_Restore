@interface CKDPRecordRetrieveChangesResponseMergeableDeltaChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDeltas:(id)deltas;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordRetrieveChangesResponseMergeableDeltaChange

- (void)addDeltas:(id)deltas
{
  deltasCopy = deltas;
  deltas = self->_deltas;
  v8 = deltasCopy;
  if (!deltas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_deltas;
    self->_deltas = v6;

    deltasCopy = v8;
    deltas = self->_deltas;
  }

  objc_msgSend_addObject_(deltas, deltasCopy, deltasCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordRetrieveChangesResponseMergeableDeltaChange;
  v4 = [(CKDPRecordRetrieveChangesResponseMergeableDeltaChange *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  identifier = self->_identifier;
  if (identifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(identifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"identifier");
  }

  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    v11 = objc_msgSend_dictionaryRepresentation(recordIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"recordIdentifier");
  }

  fieldIdentifier = self->_fieldIdentifier;
  if (fieldIdentifier)
  {
    v14 = objc_msgSend_dictionaryRepresentation(fieldIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"fieldIdentifier");
  }

  if (objc_msgSend_count(self->_deltas, v4, v5))
  {
    v18 = objc_alloc(MEMORY[0x277CBEB18]);
    v21 = objc_msgSend_count(self->_deltas, v19, v20);
    v23 = objc_msgSend_initWithCapacity_(v18, v22, v21);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v24 = self->_deltas;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v40, v44, 16);
    if (v26)
    {
      v29 = v26;
      v30 = *v41;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(v24);
          }

          v32 = objc_msgSend_dictionaryRepresentation(*(*(&v40 + 1) + 8 * i), v27, v28, v40);
          objc_msgSend_addObject_(v23, v33, v32);
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v40, v44, 16);
      }

      while (v29);
    }

    objc_msgSend_setObject_forKey_(v6, v34, v23, @"deltas");
  }

  recordType = self->_recordType;
  if (recordType)
  {
    v36 = objc_msgSend_dictionaryRepresentation(recordType, v16, v17);
    objc_msgSend_setObject_forKey_(v6, v37, v36, @"recordType");
  }

  v38 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_recordIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_fieldIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_deltas;
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
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v14, v18, 16);
    }

    while (v8);
  }

  if (self->_recordType)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  identifier = self->_identifier;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(toCopy, v4, identifier);
  }

  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    objc_msgSend_setRecordIdentifier_(toCopy, v4, recordIdentifier);
  }

  fieldIdentifier = self->_fieldIdentifier;
  if (fieldIdentifier)
  {
    objc_msgSend_setFieldIdentifier_(toCopy, v4, fieldIdentifier);
  }

  if (objc_msgSend_deltasCount(self, v4, fieldIdentifier))
  {
    objc_msgSend_clearDeltas(toCopy, v8, v9);
    v12 = objc_msgSend_deltasCount(self, v10, v11);
    if (v12)
    {
      v13 = v12;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_msgSend_deltasAtIndex_(self, v8, i);
        objc_msgSend_addDeltas_(toCopy, v16, v15);
      }
    }
  }

  recordType = self->_recordType;
  if (recordType)
  {
    objc_msgSend_setRecordType_(toCopy, v8, recordType);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, zone);
  v13 = v10[3];
  v10[3] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_recordIdentifier, v14, zone);
  v16 = v10[4];
  v10[4] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_fieldIdentifier, v17, zone);
  v19 = v10[2];
  v10[2] = v18;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = self->_deltas;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v34, v38, 16);
  if (v22)
  {
    v24 = v22;
    v25 = *v35;
    do
    {
      v26 = 0;
      do
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = objc_msgSend_copyWithZone_(*(*(&v34 + 1) + 8 * v26), v23, zone, v34);
        objc_msgSend_addDeltas_(v10, v28, v27);

        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v34, v38, 16);
    }

    while (v24);
  }

  v30 = objc_msgSend_copyWithZone_(self->_recordType, v29, zone);
  v31 = v10[5];
  v10[5] = v30;

  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_12;
  }

  identifier = self->_identifier;
  v9 = equalCopy[3];
  if (identifier | v9)
  {
    if (!objc_msgSend_isEqual_(identifier, v7, v9))
    {
      goto LABEL_12;
    }
  }

  if (((recordIdentifier = self->_recordIdentifier, v11 = equalCopy[4], !(recordIdentifier | v11)) || objc_msgSend_isEqual_(recordIdentifier, v7, v11)) && ((fieldIdentifier = self->_fieldIdentifier, v13 = equalCopy[2], !(fieldIdentifier | v13)) || objc_msgSend_isEqual_(fieldIdentifier, v7, v13)) && ((deltas = self->_deltas, v15 = equalCopy[1], !(deltas | v15)) || objc_msgSend_isEqual_(deltas, v7, v15)))
  {
    recordType = self->_recordType;
    v17 = equalCopy[5];
    if (recordType | v17)
    {
      isEqual = objc_msgSend_isEqual_(recordType, v7, v17);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
LABEL_12:
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_identifier, a2, v2);
  v7 = objc_msgSend_hash(self->_recordIdentifier, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_fieldIdentifier, v8, v9);
  v13 = v7 ^ v10 ^ objc_msgSend_hash(self->_deltas, v11, v12);
  return v13 ^ objc_msgSend_hash(self->_recordType, v14, v15);
}

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  identifier = self->_identifier;
  v7 = *(fromCopy + 3);
  if (identifier)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(identifier, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setIdentifier_(self, v4, v7);
  }

  recordIdentifier = self->_recordIdentifier;
  v9 = *(fromCopy + 4);
  if (recordIdentifier)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(recordIdentifier, v4, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setRecordIdentifier_(self, v4, v9);
  }

  fieldIdentifier = self->_fieldIdentifier;
  v11 = *(fromCopy + 2);
  if (fieldIdentifier)
  {
    if (v11)
    {
      objc_msgSend_mergeFrom_(fieldIdentifier, v4, v11);
    }
  }

  else if (v11)
  {
    objc_msgSend_setFieldIdentifier_(self, v4, v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = *(fromCopy + 1);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v23, v27, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_addDeltas_(self, v15, *(*(&v23 + 1) + 8 * i), v23);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v23, v27, 16);
    }

    while (v16);
  }

  recordType = self->_recordType;
  v21 = *(fromCopy + 5);
  if (recordType)
  {
    if (v21)
    {
      objc_msgSend_mergeFrom_(recordType, v19, v21);
    }
  }

  else if (v21)
  {
    objc_msgSend_setRecordType_(self, v19, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end