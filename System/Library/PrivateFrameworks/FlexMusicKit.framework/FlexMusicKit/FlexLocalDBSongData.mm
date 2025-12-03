@interface FlexLocalDBSongData
- (BOOL)_validateSongData;
- (FlexLocalDBSongData)initWithUID:(id)d songData:(id)data shouldValidate:(BOOL)validate;
- (id)_allRequiredKeys;
@end

@implementation FlexLocalDBSongData

- (FlexLocalDBSongData)initWithUID:(id)d songData:(id)data shouldValidate:(BOOL)validate
{
  validateCopy = validate;
  dCopy = d;
  dataCopy = data;
  v32.receiver = self;
  v32.super_class = FlexLocalDBSongData;
  v11 = [(FlexLocalDBSongData *)&v32 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uid, d);
    v13 = objc_alloc(MEMORY[0x277CCAD78]);
    v17 = objc_msgSend_initWithUUIDString_(v13, v14, dCopy, v15, v16);
    v22 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v18, v19, v20, v21);
    songData = v12->_songData;
    v12->_songData = v22;

    objc_msgSend_addEntriesFromDictionary_(v12->_songData, v24, dataCopy, v25, v26);
    if (validateCopy && !objc_msgSend__validateSongData(v12, v27, v28, v29, v30) || !v17)
    {

      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)_validateSongData
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__allRequiredKeys(self, a2, v2, v3, v4);
  v11 = objc_msgSend_mutableCopy(v6, v7, v8, v9, v10);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = self->_songData;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v28, v32, 16);
  if (v14)
  {
    v18 = v14;
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_removeObject_(v11, v15, *(*(&v28 + 1) + 8 * i), v16, v17, v28);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v28, v32, 16);
    }

    while (v18);
  }

  v25 = objc_msgSend_count(v11, v21, v22, v23, v24) == 0;
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)_allRequiredKeys
{
  if (qword_27F060D40 != -1)
  {
    sub_24B7EC25C();
  }

  v3 = qword_27F060D48;

  return v3;
}

@end