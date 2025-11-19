@interface CKDPRealTimeMessageAssociatedMergeableDeltas
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMergeableDeltas:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRealTimeMessageAssociatedMergeableDeltas

- (void)addMergeableDeltas:(id)a3
{
  v4 = a3;
  mergeableDeltas = self->_mergeableDeltas;
  v8 = v4;
  if (!mergeableDeltas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_mergeableDeltas;
    self->_mergeableDeltas = v6;

    v4 = v8;
    mergeableDeltas = self->_mergeableDeltas;
  }

  objc_msgSend_addObject_(mergeableDeltas, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRealTimeMessageAssociatedMergeableDeltas;
  v4 = [(CKDPRealTimeMessageAssociatedMergeableDeltas *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(recordIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"record_identifier");
  }

  fieldIdentifier = self->_fieldIdentifier;
  if (fieldIdentifier)
  {
    v11 = objc_msgSend_dictionaryRepresentation(fieldIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"field_identifier");
  }

  identifier = self->_identifier;
  if (identifier)
  {
    v14 = objc_msgSend_dictionaryRepresentation(identifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"identifier");
  }

  if (objc_msgSend_count(self->_mergeableDeltas, v4, v5))
  {
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    v19 = objc_msgSend_count(self->_mergeableDeltas, v17, v18);
    v21 = objc_msgSend_initWithCapacity_(v16, v20, v19);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v22 = self->_mergeableDeltas;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v35, v39, 16);
    if (v24)
    {
      v27 = v24;
      v28 = *v36;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v22);
          }

          v30 = objc_msgSend_dictionaryRepresentation(*(*(&v35 + 1) + 8 * i), v25, v26, v35);
          objc_msgSend_addObject_(v21, v31, v30);
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v35, v39, 16);
      }

      while (v27);
    }

    objc_msgSend_setObject_forKey_(v6, v32, v21, @"mergeable_deltas");
  }

  v33 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_recordIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_fieldIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_mergeableDeltas;
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

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v18 = a3;
  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    objc_msgSend_setRecordIdentifier_(v18, v4, recordIdentifier);
  }

  fieldIdentifier = self->_fieldIdentifier;
  if (fieldIdentifier)
  {
    objc_msgSend_setFieldIdentifier_(v18, v4, fieldIdentifier);
  }

  identifier = self->_identifier;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(v18, v4, identifier);
  }

  if (objc_msgSend_mergeableDeltasCount(self, v4, identifier))
  {
    objc_msgSend_clearMergeableDeltas(v18, v8, v9);
    v12 = objc_msgSend_mergeableDeltasCount(self, v10, v11);
    if (v12)
    {
      v14 = v12;
      for (i = 0; i != v14; ++i)
      {
        v16 = objc_msgSend_mergeableDeltasAtIndex_(self, v13, i);
        objc_msgSend_addMergeableDeltas_(v18, v17, v16);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_recordIdentifier, v11, a3);
  v13 = v10[4];
  v10[4] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_fieldIdentifier, v14, a3);
  v16 = v10[1];
  v10[1] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_identifier, v17, a3);
  v19 = v10[2];
  v10[2] = v18;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = self->_mergeableDeltas;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v31, v35, 16);
  if (v22)
  {
    v24 = v22;
    v25 = *v32;
    do
    {
      v26 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = objc_msgSend_copyWithZone_(*(*(&v31 + 1) + 8 * v26), v23, a3, v31);
        objc_msgSend_addMergeableDeltas_(v10, v28, v27);

        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v31, v35, 16);
    }

    while (v24);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((recordIdentifier = self->_recordIdentifier, v9 = v4[4], !(recordIdentifier | v9)) || objc_msgSend_isEqual_(recordIdentifier, v7, v9)) && ((fieldIdentifier = self->_fieldIdentifier, v11 = v4[1], !(fieldIdentifier | v11)) || objc_msgSend_isEqual_(fieldIdentifier, v7, v11)) && ((identifier = self->_identifier, v13 = v4[2], !(identifier | v13)) || objc_msgSend_isEqual_(identifier, v7, v13)))
  {
    mergeableDeltas = self->_mergeableDeltas;
    v15 = v4[3];
    if (mergeableDeltas | v15)
    {
      isEqual = objc_msgSend_isEqual_(mergeableDeltas, v7, v15);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_recordIdentifier, a2, v2);
  v7 = objc_msgSend_hash(self->_fieldIdentifier, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_identifier, v8, v9);
  return v7 ^ v10 ^ objc_msgSend_hash(self->_mergeableDeltas, v11, v12);
}

- (void)mergeFrom:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  recordIdentifier = self->_recordIdentifier;
  v7 = *(v5 + 4);
  if (recordIdentifier)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(recordIdentifier, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setRecordIdentifier_(self, v4, v7);
  }

  fieldIdentifier = self->_fieldIdentifier;
  v9 = *(v5 + 1);
  if (fieldIdentifier)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(fieldIdentifier, v4, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setFieldIdentifier_(self, v4, v9);
  }

  identifier = self->_identifier;
  v11 = *(v5 + 2);
  if (identifier)
  {
    if (v11)
    {
      objc_msgSend_mergeFrom_(identifier, v4, v11);
    }
  }

  else if (v11)
  {
    objc_msgSend_setIdentifier_(self, v4, v11);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = *(v5 + 3);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v20, v24, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_addMergeableDeltas_(self, v15, *(*(&v20 + 1) + 8 * i), v20);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v20, v24, 16);
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end