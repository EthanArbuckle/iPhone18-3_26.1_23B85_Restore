@interface CSFDERecordFDEClientMetadataFDEKeyRegistryFDEEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addPublicKeys:(id)keys;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSFDERecordFDEClientMetadataFDEKeyRegistryFDEEntry

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
  v11.super_class = CSFDERecordFDEClientMetadataFDEKeyRegistryFDEEntry;
  v4 = [(CSFDERecordFDEClientMetadataFDEKeyRegistryFDEEntry *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  pcsService = self->_pcsService;
  if (pcsService)
  {
    objc_msgSend_setObject_forKey_(v4, v5, pcsService, @"pcsService");
  }

  publicKeys = self->_publicKeys;
  if (publicKeys)
  {
    objc_msgSend_setObject_forKey_(v6, v5, publicKeys, @"publicKeys");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_pcsService)
  {
    PBDataWriterWriteStringField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_publicKeys;
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
        PBDataWriterWriteDataField();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v14, v18, 16);
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  pcsService = self->_pcsService;
  if (pcsService)
  {
    objc_msgSend_setPcsService_(toCopy, v4, pcsService);
  }

  if (objc_msgSend_publicKeysCount(self, v4, pcsService))
  {
    objc_msgSend_clearPublicKeys(toCopy, v6, v7);
    v10 = objc_msgSend_publicKeysCount(self, v8, v9);
    if (v10)
    {
      v12 = v10;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_publicKeysAtIndex_(self, v11, i);
        objc_msgSend_addPublicKeys_(toCopy, v15, v14);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_pcsService, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = self->_publicKeys;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v25, v29, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v26;
    do
    {
      v20 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v25 + 1) + 8 * v20), v17, zone, v25);
        objc_msgSend_addPublicKeys_(v10, v22, v21);

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v25, v29, 16);
    }

    while (v18);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((pcsService = self->_pcsService, v9 = equalCopy[1], !(pcsService | v9)) || objc_msgSend_isEqual_(pcsService, v7, v9)))
  {
    publicKeys = self->_publicKeys;
    v11 = equalCopy[2];
    if (publicKeys | v11)
    {
      isEqual = objc_msgSend_isEqual_(publicKeys, v7, v11);
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
  v6 = *(fromCopy + 1);
  if (v6)
  {
    objc_msgSend_setPcsService_(self, v4, v6);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(fromCopy + 2);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_addPublicKeys_(self, v10, *(*(&v15 + 1) + 8 * i), v15);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v15, v19, 16);
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end