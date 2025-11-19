@interface CSStingrayRecordClientMetadataKeyRegistry
+ (id)parseFromKeyRegistryPlist:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)convertToPList;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addServiceEntry:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSStingrayRecordClientMetadataKeyRegistry

+ (id)parseFromKeyRegistryPlist:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = objc_alloc_init(CSStingrayRecordClientMetadataKeyRegistry);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = objc_msgSend_allKeys(v4, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v28, v32, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = objc_msgSend_objectForKeyedSubscript_(v4, v10, v14);
        v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"PublicIdentities");
        if (v17)
        {
          v18 = objc_alloc_init(CSStingrayRecordClientMetadataKeyRegistryEntry);
          objc_msgSend_setPcsService_(v18, v19, v14);
          v22 = objc_msgSend_mutableCopy(v17, v20, v21);
          objc_msgSend_setPublicKeys_(v18, v23, v22);

          objc_msgSend_addServiceEntry_(v27, v24, v18);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v28, v32, 16);
    }

    while (v11);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)convertToPList
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = objc_msgSend_serviceEntrys(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v30, v36, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = objc_msgSend_pcsService(v15, v10, v11);
        if (objc_msgSend_length(v16, v17, v18))
        {
          v21 = objc_msgSend_publicKeys(v15, v19, v20);

          if (!v21)
          {
            continue;
          }

          v34 = @"PublicIdentities";
          v16 = objc_msgSend_publicKeys(v15, v10, v11);
          v35 = v16;
          v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, &v35, &v34, 1);
          v26 = objc_msgSend_pcsService(v15, v24, v25);
          objc_msgSend_setObject_forKeyedSubscript_(v4, v27, v23, v26);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v30, v36, 16);
    }

    while (v12);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)addServiceEntry:(id)a3
{
  v4 = a3;
  serviceEntrys = self->_serviceEntrys;
  v8 = v4;
  if (!serviceEntrys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_serviceEntrys;
    self->_serviceEntrys = v6;

    v4 = v8;
    serviceEntrys = self->_serviceEntrys;
  }

  objc_msgSend_addObject_(serviceEntrys, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CSStingrayRecordClientMetadataKeyRegistry;
  v4 = [(CSStingrayRecordClientMetadataKeyRegistry *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_count(self->_serviceEntrys, v5, v6))
  {
    v7 = objc_alloc(MEMORY[0x277CBEB18]);
    v10 = objc_msgSend_count(self->_serviceEntrys, v8, v9);
    v12 = objc_msgSend_initWithCapacity_(v7, v11, v10);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = self->_serviceEntrys;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v26, v30, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = objc_msgSend_dictionaryRepresentation(*(*(&v26 + 1) + 8 * i), v16, v17, v26);
          objc_msgSend_addObject_(v12, v22, v21);
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v26, v30, 16);
      }

      while (v18);
    }

    objc_msgSend_setObject_forKey_(v4, v23, v12, @"serviceEntry");
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_serviceEntrys;
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
  v16 = a3;
  if (objc_msgSend_serviceEntrysCount(self, v4, v5))
  {
    objc_msgSend_clearServiceEntrys(v16, v6, v7);
    v10 = objc_msgSend_serviceEntrysCount(self, v8, v9);
    if (v10)
    {
      v12 = v10;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_serviceEntryAtIndex_(self, v11, i);
        objc_msgSend_addServiceEntry_(v16, v15, v14);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_serviceEntrys;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v26, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v22 + 1) + 8 * v17), v14, a3, v22);
        objc_msgSend_addServiceEntry_(v10, v19, v18);

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v22, v26, 16);
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    serviceEntrys = self->_serviceEntrys;
    v9 = v4[1];
    if (serviceEntrys | v9)
    {
      isEqual = objc_msgSend_isEqual_(serviceEntrys, v7, v9);
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

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a3 + 1);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_addServiceEntry_(self, v7, *(*(&v12 + 1) + 8 * v10++), v12);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v12, v16, 16);
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end