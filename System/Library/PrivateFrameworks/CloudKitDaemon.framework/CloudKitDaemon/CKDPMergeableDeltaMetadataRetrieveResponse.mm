@interface CKDPMergeableDeltaMetadataRetrieveResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addMetadata:(id)metadata;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPMergeableDeltaMetadataRetrieveResponse

- (void)addMetadata:(id)metadata
{
  metadataCopy = metadata;
  metadatas = self->_metadatas;
  v8 = metadataCopy;
  if (!metadatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_metadatas;
    self->_metadatas = v6;

    metadataCopy = v8;
    metadatas = self->_metadatas;
  }

  objc_msgSend_addObject_(metadatas, metadataCopy, metadataCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPMergeableDeltaMetadataRetrieveResponse;
  v4 = [(CKDPMergeableDeltaMetadataRetrieveResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_count(self->_metadatas, v5, v6))
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = objc_msgSend_count(self->_metadatas, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = self->_metadatas;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v28, v32, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = objc_msgSend_dictionaryRepresentation(*(*(&v28 + 1) + 8 * i), v17, v18, v28);
          objc_msgSend_addObject_(v13, v23, v22);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v28, v32, 16);
      }

      while (v19);
    }

    objc_msgSend_setObject_forKey_(v4, v24, v13, @"metadata");
  }

  continuation = self->_continuation;
  if (continuation)
  {
    objc_msgSend_setObject_forKey_(v4, v7, continuation, @"continuation");
  }

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_metadatas;
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

  if (self->_continuation)
  {
    PBDataWriterWriteDataField();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (objc_msgSend_metadatasCount(self, v4, v5))
  {
    objc_msgSend_clearMetadatas(toCopy, v6, v7);
    v10 = objc_msgSend_metadatasCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_metadataAtIndex_(self, v6, i);
        objc_msgSend_addMetadata_(toCopy, v14, v13);
      }
    }
  }

  continuation = self->_continuation;
  if (continuation)
  {
    objc_msgSend_setContinuation_(toCopy, v6, continuation);
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
  v11 = self->_metadatas;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v25, v29, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v26;
    do
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v25 + 1) + 8 * v17), v14, zone, v25);
        objc_msgSend_addMetadata_(v10, v19, v18);

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v25, v29, 16);
    }

    while (v15);
  }

  v21 = objc_msgSend_copyWithZone_(self->_continuation, v20, zone);
  v22 = v10[1];
  v10[1] = v21;

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((metadatas = self->_metadatas, v9 = equalCopy[2], !(metadatas | v9)) || objc_msgSend_isEqual_(metadatas, v7, v9)))
  {
    continuation = self->_continuation;
    v11 = equalCopy[1];
    if (continuation | v11)
    {
      isEqual = objc_msgSend_isEqual_(continuation, v7, v11);
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

        objc_msgSend_addMetadata_(self, v8, *(*(&v15 + 1) + 8 * i), v15);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v15, v19, 16);
    }

    while (v9);
  }

  v13 = *(fromCopy + 1);
  if (v13)
  {
    objc_msgSend_setContinuation_(self, v12, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end