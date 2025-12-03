@interface XRRecentArrayStoredPrefs
+ (id)sharedInstanceForPreferencePath:(id)path;
- (XRRecentArrayStoredPrefs)initWithMaximumRecentCount:(unint64_t)count preferencePath:(id)path;
- (void)_readUserDefaults;
- (void)dealloc;
- (void)synchronize;
@end

@implementation XRRecentArrayStoredPrefs

+ (id)sharedInstanceForPreferencePath:(id)path
{
  pathCopy = path;
  if (qword_27EE86930 != -1)
  {
    sub_2480B3BB0();
  }

  dispatch_semaphore_wait(qword_27EE86928, 0xFFFFFFFFFFFFFFFFLL);
  v7 = objc_msgSend_objectForKey_(qword_27EE86920, v4, pathCopy, v5, v6);
  if (!v7)
  {
    v8 = [XRRecentArrayStoredPrefs alloc];
    v7 = objc_msgSend_initWithMaximumRecentCount_preferencePath_(v8, v9, 10, pathCopy, v10);
    objc_msgSend_setObject_forKeyedSubscript_(qword_27EE86920, v11, v7, pathCopy, v12);
  }

  dispatch_semaphore_signal(qword_27EE86928);

  return v7;
}

- (XRRecentArrayStoredPrefs)initWithMaximumRecentCount:(unint64_t)count preferencePath:(id)path
{
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = XRRecentArrayStoredPrefs;
  v10 = [(XRRecentArray *)&v23 initWithMaximumRecentCount:count];
  if (v10)
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@.array", v8, v9, pathCopy);
    preferencePathArray = v10->_preferencePathArray;
    v10->_preferencePathArray = v11;

    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%@.maxCount", v14, v15, pathCopy);
    preferencePathMaxCount = v10->_preferencePathMaxCount;
    v10->_preferencePathMaxCount = v16;

    objc_msgSend__readUserDefaults(v10, v18, v19, v20, v21);
  }

  return v10;
}

- (void)dealloc
{
  objc_msgSend_synchronize(self, a2, v2, v3, v4);
  v6.receiver = self;
  v6.super_class = XRRecentArrayStoredPrefs;
  [(XRRecentArrayStoredPrefs *)&v6 dealloc];
}

- (void)_readUserDefaults
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2, v3, v4);
  v10 = objc_msgSend_objectForKey_(v6, v7, self->_preferencePathArray, v8, v9);
  v14 = objc_msgSend_objectForKey_(v6, v11, self->_preferencePathMaxCount, v12, v13);
  v19 = v14;
  if (v10)
  {
    v20 = v14 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    objc_msgSend_setObject_forKey_(v6, v15, MEMORY[0x277CBEBF8], self->_preferencePathArray, v18);
    objc_msgSend_setObject_forKey_(v6, v21, &unk_285A47180, self->_preferencePathMaxCount, v22);
    v27 = objc_msgSend_unsignedIntegerValue(&unk_285A47180, v23, v24, v25, v26);
    v49.receiver = self;
    v49.super_class = XRRecentArrayStoredPrefs;
    [(XRRecentArray *)&v49 setMaximumRecentCount:v27];
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v42 = v10;
    v28 = objc_msgSend_reverseObjectEnumerator(v10, v15, v16, v17, v18);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v45, v50, 16);
    if (v30)
    {
      v31 = v30;
      v32 = *v46;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v46 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v45 + 1) + 8 * i);
          v44.receiver = self;
          v44.super_class = XRRecentArrayStoredPrefs;
          [(XRRecentArray *)&v44 addEntry:v34];
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v35, &v45, v50, 16);
      }

      while (v31);
    }

    v40 = objc_msgSend_unsignedIntegerValue(v19, v36, v37, v38, v39);
    v43.receiver = self;
    v43.super_class = XRRecentArrayStoredPrefs;
    [(XRRecentArray *)&v43 setMaximumRecentCount:v40];
    v10 = v42;
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)synchronize
{
  dispatch_semaphore_wait(self->super._lock, 0xFFFFFFFFFFFFFFFFLL);
  v15 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v3, v4, v5, v6);
  objc_msgSend_setObject_forKey_(v15, v7, self->super._entries, self->_preferencePathArray, v8);
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v9, self->super._maximumRecentCount, v10, v11);
  objc_msgSend_setObject_forKey_(v15, v13, v12, self->_preferencePathMaxCount, v14);

  dispatch_semaphore_signal(self->super._lock);
}

@end