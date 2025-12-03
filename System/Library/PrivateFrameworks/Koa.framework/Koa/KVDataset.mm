@interface KVDataset
- (BOOL)enumerateCascadeItemsWithError:(id *)error usingBlock:(id)block;
- (KVDataset)init;
- (KVDataset)initWithReader:(id)reader;
@end

@implementation KVDataset

- (BOOL)enumerateCascadeItemsWithError:(id *)error usingBlock:(id)block
{
  v59 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_2559AB22C;
  v56 = sub_2559AB23C;
  v57 = 0;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v50 = &v52;
  v51 = 0;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_2559AB9A4;
  v48[3] = &unk_279803988;
  v8 = v7;
  v49 = v8;
  v12 = objc_msgSend_enumerateItemsWithError_usingBlock_(self, v9, &v51, v48, v10, v11);
  v13 = v51;
  v43 = v13;
  if (v12)
  {

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v19 = objc_msgSend_allKeys(v8, v14, v15, v16, v17, v18, v43);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v44, v58, 16, v21);
    if (v22)
    {
      v23 = *v45;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v45 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v44 + 1) + 8 * i);
          v26 = objc_autoreleasePoolPush();
          v32 = objc_msgSend_unsignedShortValue(v25, v27, v28, v29, v30, v31);
          v37 = objc_msgSend_objectForKey_(v8, v33, v25, v34, v35, v36);
          LODWORD(v25) = blockCopy[2](blockCopy, v32, v37);

          objc_autoreleasePoolPop(v26);
          if (!v25)
          {
            v40 = 0;
            goto LABEL_19;
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v38, &v44, v58, 16, v39);
        v40 = 1;
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v40 = 1;
    }
  }

  else
  {
    if (v53[5])
    {
      v13 = v53[5];
    }

    if (error && v13)
    {
      *error = v13;
    }

    v40 = 0;
    v19 = v49;
  }

LABEL_19:

  _Block_object_dispose(&v52, 8);
  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

- (KVDataset)initWithReader:(id)reader
{
  readerCopy = reader;
  v9.receiver = self;
  v9.super_class = KVDataset;
  v6 = [(KVDataset *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_datasetReader, reader);
  }

  return v7;
}

- (KVDataset)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

@end