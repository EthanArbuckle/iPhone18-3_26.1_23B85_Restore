@interface BUSimpleFileCopier
+ (BOOL)countFilesAndSizesInDirectory:(id)a3 totalFileSize:(unint64_t *)a4 totalFileCount:(unint64_t *)a5 totalFileCountExcludeDir:(unint64_t *)a6;
- (BOOL)copyToURL:(id)a3 error:(id *)a4;
- (BOOL)countTotalFileSize:(unint64_t *)a3 totalFileCount:(unint64_t *)a4;
- (BOOL)fileManager:(id)a3 shouldCopyItemAtURL:(id)a4 toURL:(id)a5;
- (BUFileCopierDelegate)delegate;
- (BUSimpleFileCopier)initWithURL:(id)a3;
- (void)_finishCurrentCopyItem;
@end

@implementation BUSimpleFileCopier

- (BUSimpleFileCopier)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BUSimpleFileCopier;
  v6 = [(BUSimpleFileCopier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fromURL, a3);
  }

  return v7;
}

- (BOOL)countTotalFileSize:(unint64_t *)a3 totalFileCount:(unint64_t *)a4
{
  v6 = objc_msgSend_fromURL(self, a2, a3);
  v9 = objc_msgSend_path(v6, v7, v8);

  LOBYTE(a4) = objc_msgSend_countFilesAndSizesInDirectory_totalFileSize_totalFileCount_totalFileCountExcludeDir_(BUSimpleFileCopier, v10, v9, a3, 0, a4);
  return a4;
}

- (void)_finishCurrentCopyItem
{
  v4 = objc_msgSend_currentCopyItemURL(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_path(v4, v5, v6);
    v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v9, v10);
    v32 = 0;
    v13 = objc_msgSend_attributesOfItemAtPath_error_(v11, v12, v8, &v32);
    v14 = v32;

    if (!v14)
    {
      v16 = objc_msgSend_objectForKeyedSubscript_(v13, v15, *MEMORY[0x277CCA1E0]);
      isEqualToString = objc_msgSend_isEqualToString_(v16, v17, *MEMORY[0x277CCA1E8]);

      if ((isEqualToString & 1) == 0)
      {
        v20 = objc_msgSend_objectForKeyedSubscript_(v13, v19, *MEMORY[0x277CCA1C0]);
        v23 = objc_msgSend_longLongValue(v20, v21, v22);
        v26 = objc_msgSend_delegate(self, v24, v25);
        v27 = objc_opt_respondsToSelector();

        if (v27)
        {
          v30 = objc_msgSend_delegate(self, v28, v29);
          objc_msgSend_didCopyItemToURL_fileSize_(v30, v31, v7, v23);
        }
      }
    }
  }

  objc_msgSend_setCurrentCopyItemURL_(self, v5, 0);
}

- (BOOL)fileManager:(id)a3 shouldCopyItemAtURL:(id)a4 toURL:(id)a5
{
  v6 = a5;
  objc_msgSend__finishCurrentCopyItem(self, v7, v8);
  v11 = objc_msgSend_delegate(self, v9, v10);
  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) != 0 && (objc_msgSend_delegate(self, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), shouldCopyItemToURL = objc_msgSend_shouldCopyItemToURL_(v15, v16, v6), v15, !shouldCopyItemToURL))
  {
    v18 = 0;
  }

  else
  {
    objc_msgSend_setCurrentCopyItemURL_(self, v13, v6);
    v18 = 1;
  }

  return v18;
}

- (BOOL)copyToURL:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCAA00];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  objc_msgSend_setDelegate_(v8, v9, self);
  v12 = objc_msgSend_fromURL(self, v10, v11);
  v15 = objc_msgSend_path(v12, v13, v14);

  v18 = objc_msgSend_path(v7, v16, v17);

  v21 = objc_msgSend_fromURL(self, v19, v20);
  v39 = 0;
  v22 = *MEMORY[0x277CBE868];
  v38 = 0;
  ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v21, v23, &v39, v22, &v38);
  v25 = v39;
  v26 = v38;

  if (ResourceValue_forKey_error)
  {
    v37 = v26;
    v28 = objc_msgSend_copyItemAtPath_toPath_error_(v8, v27, v15, v18, &v37);
    v29 = v37;

    objc_msgSend__finishCurrentCopyItem(self, v30, v31);
    if (v28)
    {
      v32 = 1;
      v26 = v29;
      if (!a4)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v26 = v29;
  }

  else
  {
    v33 = BookUtilityLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_241DD0264(self, v26, v33);
    }
  }

  v34 = BookUtilityLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    sub_241DD0324(v26, v34);
  }

  v32 = 0;
  if (a4)
  {
LABEL_12:
    v35 = v26;
    *a4 = v26;
  }

LABEL_13:

  return v32;
}

+ (BOOL)countFilesAndSizesInDirectory:(id)a3 totalFileSize:(unint64_t *)a4 totalFileCount:(unint64_t *)a5 totalFileCountExcludeDir:(unint64_t *)a6
{
  v9 = a3;
  v12 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v10, v11);
  v14 = objc_msgSend_enumeratorAtPath_(v12, v13, v9);

  if (v14)
  {
    v39 = a4;
    v40 = a5;
    v41 = a6;
    v42 = v9;
    v17 = objc_msgSend_nextObject(v14, v15, v16);

    if (v17)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = *MEMORY[0x277CCA1E0];
      v24 = *MEMORY[0x277CCA1E8];
      v25 = *MEMORY[0x277CCA1C0];
      do
      {
        v26 = objc_msgSend_fileAttributes(v14, v18, v19);
        v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, v23);
        isEqualToString = objc_msgSend_isEqualToString_(v28, v29, v24);

        if ((isEqualToString & 1) == 0)
        {
          ++v22;
          v32 = objc_msgSend_objectForKeyedSubscript_(v26, v31, v25);
          v20 += objc_msgSend_longLongValue(v32, v33, v34);
        }

        v37 = objc_msgSend_nextObject(v14, v35, v36);

        ++v21;
      }

      while (v37);
    }

    else
    {
      v22 = 0;
      v21 = 0;
      v20 = 0;
    }

    if (v39)
    {
      *v39 = v20;
    }

    if (v40)
    {
      *v40 = v21;
    }

    v9 = v42;
    if (v41)
    {
      *v41 = v22;
    }
  }

  return v14 != 0;
}

- (BUFileCopierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end