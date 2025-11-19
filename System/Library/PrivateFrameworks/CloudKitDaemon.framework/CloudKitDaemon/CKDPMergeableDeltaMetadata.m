@interface CKDPMergeableDeltaMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addReplacedDeltaIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPMergeableDeltaMetadata

- (void)addReplacedDeltaIdentifiers:(id)a3
{
  v4 = a3;
  replacedDeltaIdentifiers = self->_replacedDeltaIdentifiers;
  v8 = v4;
  if (!replacedDeltaIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_replacedDeltaIdentifiers;
    self->_replacedDeltaIdentifiers = v6;

    v4 = v8;
    replacedDeltaIdentifiers = self->_replacedDeltaIdentifiers;
  }

  objc_msgSend_addObject_(replacedDeltaIdentifiers, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPMergeableDeltaMetadata;
  v4 = [(CKDPMergeableDeltaMetadata *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  identifier = self->_identifier;
  if (identifier)
  {
    objc_msgSend_setObject_forKey_(v4, v5, identifier, @"identifier");
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    v9 = objc_msgSend_dictionaryRepresentation(protectionInfo, v5, identifier);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"protectionInfo");
  }

  encryptedTimestamps = self->_encryptedTimestamps;
  if (encryptedTimestamps)
  {
    objc_msgSend_setObject_forKey_(v6, v5, encryptedTimestamps, @"encryptedTimestamps");
  }

  timestamps = self->_timestamps;
  if (timestamps)
  {
    v13 = objc_msgSend_dictionaryRepresentation(timestamps, v5, encryptedTimestamps);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"timestamps");
  }

  timestampsAuthTag = self->_timestampsAuthTag;
  if (timestampsAuthTag)
  {
    objc_msgSend_setObject_forKey_(v6, v5, timestampsAuthTag, @"timestampsAuthTag");
  }

  replacedDeltaIdentifiers = self->_replacedDeltaIdentifiers;
  if (replacedDeltaIdentifiers)
  {
    objc_msgSend_setObject_forKey_(v6, v5, replacedDeltaIdentifiers, @"replacedDeltaIdentifiers");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_protectionInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_encryptedTimestamps)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_timestamps)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_timestampsAuthTag)
  {
    PBDataWriterWriteDataField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_replacedDeltaIdentifiers;
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
        PBDataWriterWriteStringField();
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
  v20 = a3;
  identifier = self->_identifier;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(v20, v4, identifier);
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    objc_msgSend_setProtectionInfo_(v20, v4, protectionInfo);
  }

  encryptedTimestamps = self->_encryptedTimestamps;
  if (encryptedTimestamps)
  {
    objc_msgSend_setEncryptedTimestamps_(v20, v4, encryptedTimestamps);
  }

  timestamps = self->_timestamps;
  if (timestamps)
  {
    objc_msgSend_setTimestamps_(v20, v4, timestamps);
  }

  timestampsAuthTag = self->_timestampsAuthTag;
  if (timestampsAuthTag)
  {
    objc_msgSend_setTimestampsAuthTag_(v20, v4, timestampsAuthTag);
  }

  if (objc_msgSend_replacedDeltaIdentifiersCount(self, v4, timestampsAuthTag))
  {
    objc_msgSend_clearReplacedDeltaIdentifiers(v20, v10, v11);
    v14 = objc_msgSend_replacedDeltaIdentifiersCount(self, v12, v13);
    if (v14)
    {
      v16 = v14;
      for (i = 0; i != v16; ++i)
      {
        v18 = objc_msgSend_replacedDeltaIdentifiersAtIndex_(self, v15, i);
        objc_msgSend_addReplacedDeltaIdentifiers_(v20, v19, v18);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, a3);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_protectionInfo, v14, a3);
  v16 = v10[3];
  v10[3] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_encryptedTimestamps, v17, a3);
  v19 = v10[1];
  v10[1] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_timestamps, v20, a3);
  v22 = v10[5];
  v10[5] = v21;

  v24 = objc_msgSend_copyWithZone_(self->_timestampsAuthTag, v23, a3);
  v25 = v10[6];
  v10[6] = v24;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v26 = self->_replacedDeltaIdentifiers;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v37, v41, 16);
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

        v33 = objc_msgSend_copyWithZone_(*(*(&v37 + 1) + 8 * v32), v29, a3, v37);
        objc_msgSend_addReplacedDeltaIdentifiers_(v10, v34, v33);

        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v37, v41, 16);
    }

    while (v30);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_14;
  }

  identifier = self->_identifier;
  v9 = v4[2];
  if (identifier | v9)
  {
    if (!objc_msgSend_isEqual_(identifier, v7, v9))
    {
      goto LABEL_14;
    }
  }

  protectionInfo = self->_protectionInfo;
  v11 = v4[3];
  if (protectionInfo | v11)
  {
    if (!objc_msgSend_isEqual_(protectionInfo, v7, v11))
    {
      goto LABEL_14;
    }
  }

  if (((encryptedTimestamps = self->_encryptedTimestamps, v13 = v4[1], !(encryptedTimestamps | v13)) || objc_msgSend_isEqual_(encryptedTimestamps, v7, v13)) && ((timestamps = self->_timestamps, v15 = v4[5], !(timestamps | v15)) || objc_msgSend_isEqual_(timestamps, v7, v15)) && ((timestampsAuthTag = self->_timestampsAuthTag, v17 = v4[6], !(timestampsAuthTag | v17)) || objc_msgSend_isEqual_(timestampsAuthTag, v7, v17)))
  {
    replacedDeltaIdentifiers = self->_replacedDeltaIdentifiers;
    v19 = v4[4];
    if (replacedDeltaIdentifiers | v19)
    {
      isEqual = objc_msgSend_isEqual_(replacedDeltaIdentifiers, v7, v19);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
LABEL_14:
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_identifier, a2, v2);
  v7 = objc_msgSend_hash(self->_protectionInfo, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_encryptedTimestamps, v8, v9);
  v13 = v7 ^ v10 ^ objc_msgSend_hash(self->_timestamps, v11, v12);
  v16 = objc_msgSend_hash(self->_timestampsAuthTag, v14, v15);
  return v13 ^ v16 ^ objc_msgSend_hash(self->_replacedDeltaIdentifiers, v17, v18);
}

- (void)mergeFrom:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(v5 + 2);
  if (v6)
  {
    objc_msgSend_setIdentifier_(self, v4, v6);
  }

  protectionInfo = self->_protectionInfo;
  v8 = *(v5 + 3);
  if (protectionInfo)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(protectionInfo, v4, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setProtectionInfo_(self, v4, v8);
  }

  v9 = *(v5 + 1);
  if (v9)
  {
    objc_msgSend_setEncryptedTimestamps_(self, v4, v9);
  }

  timestamps = self->_timestamps;
  v11 = *(v5 + 5);
  if (timestamps)
  {
    if (v11)
    {
      objc_msgSend_mergeFrom_(timestamps, v4, v11);
    }
  }

  else if (v11)
  {
    objc_msgSend_setTimestamps_(self, v4, v11);
  }

  v12 = *(v5 + 6);
  if (v12)
  {
    objc_msgSend_setTimestampsAuthTag_(self, v4, v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = *(v5 + 4);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v21, v25, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v22;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_addReplacedDeltaIdentifiers_(self, v16, *(*(&v21 + 1) + 8 * i), v21);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v21, v25, 16);
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end