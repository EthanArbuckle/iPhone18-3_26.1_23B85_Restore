@interface CKDPRecordDeleteRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPluginFields:(id)fields;
- (void)addPublicKeys:(id)keys;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordDeleteRequest

+ (id)options
{
  if (qword_280D55030 != -1)
  {
    dispatch_once(&qword_280D55030, &unk_28385DEC0);
  }

  v3 = qword_280D55028;

  return v3;
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

- (void)addPublicKeys:(id)keys
{
  keysCopy = keys;
  publicKeys = self->_publicKeys;
  v8 = keysCopy;
  if (!publicKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_publicKeys;
    self->_publicKeys = v6;

    keysCopy = v8;
    publicKeys = self->_publicKeys;
  }

  objc_msgSend_addObject_(publicKeys, keysCopy, keysCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordDeleteRequest;
  v4 = [(CKDPRecordDeleteRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(recordIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"recordIdentifier");
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, etag, @"etag");
  }

  if (objc_msgSend_count(self->_pluginFields, v4, etag))
  {
    v12 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = objc_msgSend_count(self->_pluginFields, v13, v14);
    v17 = objc_msgSend_initWithCapacity_(v12, v16, v15);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = self->_pluginFields;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v34, v38, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v35;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = objc_msgSend_dictionaryRepresentation(*(*(&v34 + 1) + 8 * i), v21, v22, v34);
          objc_msgSend_addObject_(v17, v27, v26);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v34, v38, 16);
      }

      while (v23);
    }

    objc_msgSend_setObject_forKey_(v6, v28, v17, @"pluginFields");
  }

  if (*&self->_has)
  {
    v29 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, self->_participantKeyLost);
    objc_msgSend_setObject_forKey_(v6, v30, v29, @"participantKeyLost");
  }

  publicKeys = self->_publicKeys;
  if (publicKeys)
  {
    objc_msgSend_setObject_forKey_(v6, v11, publicKeys, @"publicKeys");
  }

  v32 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)to
{
  v33 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_recordIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_pluginFields;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v27, v32, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v27, v32, 16);
    }

    while (v8);
  }

  if (*&self->_has)
  {
    participantKeyLost = self->_participantKeyLost;
    PBDataWriterWriteBOOLField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_publicKeys;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v23, v31, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v23 + 1) + 8 * v19);
        PBDataWriterWriteDataField();
        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v21, &v23, v31, 16);
    }

    while (v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    objc_msgSend_setRecordIdentifier_(toCopy, v4, recordIdentifier);
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setEtag_(toCopy, v4, etag);
  }

  if (objc_msgSend_pluginFieldsCount(self, v4, etag))
  {
    objc_msgSend_clearPluginFields(toCopy, v7, v8);
    v11 = objc_msgSend_pluginFieldsCount(self, v9, v10);
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_pluginFieldsAtIndex_(self, v7, i);
        objc_msgSend_addPluginFields_(toCopy, v15, v14);
      }
    }
  }

  if (*&self->_has)
  {
    toCopy[40] = self->_participantKeyLost;
    toCopy[44] |= 1u;
  }

  if (objc_msgSend_publicKeysCount(self, v7, v8))
  {
    objc_msgSend_clearPublicKeys(toCopy, v16, v17);
    v20 = objc_msgSend_publicKeysCount(self, v18, v19);
    if (v20)
    {
      v22 = v20;
      for (j = 0; j != v22; ++j)
      {
        v24 = objc_msgSend_publicKeysAtIndex_(self, v21, j);
        objc_msgSend_addPublicKeys_(toCopy, v25, v24);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_recordIdentifier, v11, zone);
  v13 = *(v10 + 32);
  *(v10 + 32) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_etag, v14, zone);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = self->_pluginFields;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v41, v46, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v42;
    do
    {
      v23 = 0;
      do
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_copyWithZone_(*(*(&v41 + 1) + 8 * v23), v20, zone);
        objc_msgSend_addPluginFields_(v10, v25, v24);

        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v41, v46, 16);
    }

    while (v21);
  }

  if (*&self->_has)
  {
    *(v10 + 40) = self->_participantKeyLost;
    *(v10 + 44) |= 1u;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v26 = self->_publicKeys;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v37, v45, 16);
  if (v28)
  {
    v30 = v28;
    v31 = *v38;
    do
    {
      v32 = 0;
      do
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = objc_msgSend_copyWithZone_(*(*(&v37 + 1) + 8 * v32), v29, zone, v37);
        objc_msgSend_addPublicKeys_(v10, v34, v33);

        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v37, v45, 16);
    }

    while (v30);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_13;
  }

  recordIdentifier = self->_recordIdentifier;
  v9 = equalCopy[4];
  if (recordIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(recordIdentifier, v7, v9))
    {
      goto LABEL_13;
    }
  }

  etag = self->_etag;
  v11 = equalCopy[1];
  if (etag | v11)
  {
    if (!objc_msgSend_isEqual_(etag, v7, v11))
    {
      goto LABEL_13;
    }
  }

  pluginFields = self->_pluginFields;
  v13 = equalCopy[2];
  if (pluginFields | v13)
  {
    if (!objc_msgSend_isEqual_(pluginFields, v7, v13))
    {
      goto LABEL_13;
    }
  }

  v14 = *(equalCopy + 44);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((*(equalCopy + 44) & 1) == 0)
  {
    goto LABEL_13;
  }

  v14 = *(equalCopy + 40);
  if (!self->_participantKeyLost)
  {
LABEL_9:
    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    isEqual = 0;
    goto LABEL_14;
  }

  if ((equalCopy[5] & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  publicKeys = self->_publicKeys;
  v16 = equalCopy[3];
  if (publicKeys | v16)
  {
    isEqual = objc_msgSend_isEqual_(publicKeys, v7, v16);
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
  v4 = objc_msgSend_hash(self->_recordIdentifier, a2, v2);
  v7 = objc_msgSend_hash(self->_etag, v5, v6);
  v10 = objc_msgSend_hash(self->_pluginFields, v8, v9);
  if (*&self->_has)
  {
    v13 = 2654435761 * self->_participantKeyLost;
  }

  else
  {
    v13 = 0;
  }

  return v7 ^ v4 ^ v10 ^ v13 ^ objc_msgSend_hash(self->_publicKeys, v11, v12);
}

- (void)mergeFrom:(id)from
{
  v34 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  recordIdentifier = self->_recordIdentifier;
  v7 = *(fromCopy + 4);
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

  v8 = *(fromCopy + 1);
  if (v8)
  {
    objc_msgSend_setEtag_(self, v4, v8);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = *(fromCopy + 2);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v28, v33, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_addPluginFields_(self, v12, *(*(&v28 + 1) + 8 * i));
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v28, v33, 16);
    }

    while (v13);
  }

  if (*(fromCopy + 44))
  {
    self->_participantKeyLost = *(fromCopy + 40);
    *&self->_has |= 1u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = *(fromCopy + 3);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v24, v32, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v25;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_addPublicKeys_(self, v19, *(*(&v24 + 1) + 8 * j), v24);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v24, v32, 16);
    }

    while (v20);
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end