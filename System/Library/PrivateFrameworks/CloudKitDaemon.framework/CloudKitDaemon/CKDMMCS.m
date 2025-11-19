@interface CKDMMCS
+ (id)MMCSWrapperForApplicationBundleID:(id)a3 directoryContext:(id)a4 database:(id)a5 error:(id *)a6;
+ (id)_errorWithMMCSError:(id)a3 path:(id)a4 description:(id)a5 operationType:(int64_t)a6;
+ (id)_userInfoFromMMCSRetryableError:(id)a3;
+ (id)assetKeyWithType:(unint64_t)a3 error:(id *)a4;
+ (id)protocolHeaders;
+ (id)protocolVersion;
+ (id)referenceSignatureFromAssetKey:(id)a3;
+ (id)sharedWrappersByPath;
+ (id)zeroSizeFileSignature;
+ (int64_t)_commonErrorCodeWithMMCSError:(id)a3;
+ (int64_t)_errorCodeWithMMCSGetError:(id)a3;
+ (int64_t)_errorCodeWithMMCSPutError:(id)a3;
+ (int64_t)_errorCodeWithMMCSRegisterError:(id)a3;
+ (void)purgeMMCSDirectoryWithPath:(id)a3;
- (BOOL)_getRegisteredItemsGreaterThan:(unint64_t)a3 itemIds:(unint64_t *)a4 itemCount:(unint64_t *)a5 error:(id *)a6;
- (BOOL)isTrackingItemID:(unint64_t)a3;
- (BOOL)registeredItemCount:(unint64_t *)a3 error:(id *)a4;
- (CKDMMCS)initWithMMCSEngineContext:(id)a3 directoryContext:(id)a4;
- (_mmcs_engine)getMMCSEngine;
- (id)CKStatusReportArray;
- (id)_contextToGetItemGroup:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 command:(id)a7 completionHandler:(id)a8;
- (id)_contextToGetSectionItem:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 completionHandler:(id)a7;
- (id)_contextToPutItemGroup:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 completionHandler:(id)a7;
- (id)_contextToPutSectionItem:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 completionHandler:(id)a7;
- (id)_contextToRegisterItemGroup:(id)a3 operation:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (id)_referenceIdentifierFromAssetKey:(id)a3;
- (id)getItemGroupSet:(id)a3 operation:(id)a4 shouldFetchAssetContentInMemory:(BOOL)a5 options:(id)a6 progress:(id)a7 command:(id)a8 completionHandler:(id)a9;
- (id)getSectionItem:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 completionHandler:(id)a7;
- (id)putItemGroupSet:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 completionHandler:(id)a7;
- (id)putSectionItem:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 completionHandler:(id)a7;
- (id)registerItemGroupSet:(id)a3 operation:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (id)registeredMMCSItemForRereferencedAsset:(id)a3;
- (id)retrieveChunkWithSignature:(id)a3;
- (unsigned)getMaxChunkCountForSection;
- (void)_logMMCSOptions:(id)a3;
- (void)_unregisterItemIDs:(id)a3;
- (void)dealloc;
- (void)drop;
- (void)performOperationCleanup;
- (void)showRegisteredItemsInContainer:(id)a3;
- (void)startTrackingItemIDsForMMCSItems:(id)a3;
- (void)stopTrackingItemIDsForMMCSItems:(id)a3;
- (void)unregisterItemIDs:(id)a3;
@end

@implementation CKDMMCS

+ (id)protocolVersion
{
  v3 = objc_msgSend_protocolHeaders(a1, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"x-apple-mmcs-proto-version");

  return v5;
}

+ (id)protocolHeaders
{
  objc_msgSend__appID(CKDMMCSEngineContext, a2, v2);
  v3 = MMCSICloudRequestHeadersCopy();

  return v3;
}

+ (id)sharedWrappersByPath
{
  if (qword_280D580D0 != -1)
  {
    dispatch_once(&qword_280D580D0, &unk_28385C680);
  }

  v3 = qword_280D580C8;

  return v3;
}

- (void)drop
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = MEMORY[0x277CBC830];
  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v19 = v5;
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = objc_msgSend_checkoutCount(self, v20, v21);
    _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "%@ dropping with count %lld", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v8 = objc_msgSend_MMCSEngineContext(self, v6, v7);
  v11 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, v9, v10);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = sub_225099480;
  v25 = &unk_278546290;
  v26 = self;
  v28 = buf;
  v29 = &v30;
  v12 = v8;
  v27 = v12;
  dispatch_sync(v11, &v22);

  v13 = self;
  objc_sync_enter(v13);
  if (*(*&buf[8] + 24) == 1 && (objc_msgSend_didDrop(v13, v14, v15, v22, v23, v24, v25, v26) & 1) == 0)
  {
    objc_msgSend_setDidDrop_(v13, v16, 1);
  }

  objc_sync_exit(v13);

  if (*(*&buf[8] + 24) == 1 && (v31[3] & 1) == 0)
  {
    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *v34 = 138412290;
      v35 = v13;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "%@ actually dropping but did not tear down", v34, 0xCu);
    }
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(buf, 8);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v3 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v2;
      _os_log_error_impl(&dword_22506F000, v3, OS_LOG_TYPE_ERROR, "Failed to drop %@", buf, 0xCu);
    }

    if (!v2->_didDrop)
    {
      __assert_rtn("[CKDMMCS dealloc]", "CKDMMCS.m", 543, "_didDrop && Failed to drop CKDMMCS dealloc");
    }
  }

  objc_sync_exit(v2);

  v5.receiver = v2;
  v5.super_class = CKDMMCS;
  [(CKDMMCS *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

+ (id)zeroSizeFileSignature
{
  if (qword_280D580C0 != -1)
  {
    dispatch_once(&qword_280D580C0, &unk_28385C660);
  }

  v3 = qword_280D580B8;

  return v3;
}

+ (id)_userInfoFromMMCSRetryableError:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_userInfo(v3, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, *MEMORY[0x277D25470]);

  v11 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v9, v10);
  v14 = objc_msgSend_defaultRetryAfter(v11, v12, v13);

  v15 = *MEMORY[0x277D25468];
  v17 = objc_msgSend_objectForKeyedSubscript_(v8, v16, *MEMORY[0x277D25468]);
  v20 = v17;
  if (v17)
  {
    v14 = objc_msgSend_intValue(v17, v18, v19);
    if ((v14 - 0x7FFFFFFF) <= 0x80000001)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v21 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v30 = v20;
        v31 = 2114;
        v32 = v15;
        v33 = 2112;
        v34 = v3;
        _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Warn: Invalid value (%{public}@) for %{public}@ key in error %@", buf, 0x20u);
      }
    }
  }

  v22 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v18, v14, *MEMORY[0x277CBBF68]);
  v28 = v22;
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, &v28, &v27, 1);

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (int64_t)_commonErrorCodeWithMMCSError:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_code(v3, v4, v5);
  v9 = 0;
  if (v6 > 14)
  {
    if (v6 <= 32)
    {
      if (v6 == 15)
      {
        v9 = 1003;
        goto LABEL_24;
      }

      if (v6 == 23)
      {
        goto LABEL_23;
      }

      if (v6 != 25)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (v6 == 33)
    {
      goto LABEL_23;
    }

    if (v6 != 35)
    {
      if (v6 != 38)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      *v21 = 0;
      _os_log_fault_impl(&dword_22506F000, v20, OS_LOG_TYPE_FAULT, "Programmer error starting MMCS request.", v21, 2u);
    }

    v9 = 2022;
  }

  else
  {
    if (v6 <= 7)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          v9 = 1;
        }

        else if (v6 == 7)
        {
          v10 = objc_msgSend_userInfo(v3, v7, v8);
          v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, *MEMORY[0x277CCA7E8]);

          if (v12)
          {
            v15 = objc_msgSend_domain(v12, v13, v14);
            if (objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x277D25460]))
            {
              if (objc_msgSend_code(v12, v17, v18) == 11)
              {
                v9 = 3003;
              }

              else
              {
                v9 = 1013;
              }
            }

            else
            {
              v9 = 1013;
            }
          }

          else
          {
            v9 = 1013;
          }
        }

        goto LABEL_24;
      }

LABEL_23:
      v9 = 1013;
      goto LABEL_24;
    }

    switch(v6)
    {
      case 8:
        v9 = 2003;
        break;
      case 9:
        v9 = 3002;
        break;
      case 13:
LABEL_19:
        v9 = 2000;
        break;
    }
  }

LABEL_24:

  return v9;
}

+ (int64_t)_errorCodeWithMMCSGetError:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_code(v3, v4, v5);
  if (v6 > 28)
  {
    if (v6 > 38)
    {
      if (v6 == 39)
      {
        v12 = objc_msgSend_userInfo(v3, v7, v8);
        v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, *MEMORY[0x277CCA7E8]);

        if (v14 && (objc_msgSend_domain(v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v17, v18, *MEMORY[0x277CBEE48]), v17, isEqualToString))
        {
          if (objc_msgSend_code(v14, v20, v21) == 69)
          {
            v11 = 3007;
          }

          else if (objc_msgSend_code(v14, v22, v23) == 28)
          {
            v11 = 3008;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else if (v6 == 48)
      {
        v11 = 3013;
      }

      else
      {
        v11 = 0;
      }
    }

    else if (v6 == 29 || v6 == 32)
    {
      v11 = 3006;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v9 = 2000;
    v10 = 3006;
    if (v6 != 28)
    {
      v10 = 0;
    }

    if (v6 != 12)
    {
      v9 = v10;
    }

    if ((v6 - 20) >= 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = 3006;
    }
  }

  return v11;
}

+ (int64_t)_errorCodeWithMMCSPutError:(id)a3
{
  v3 = objc_msgSend_code(a3, a2, a3);
  result = 0;
  if (v3 <= 16)
  {
    if (v3 > 10)
    {
      if (v3 == 11 || v3 == 12)
      {
        return 3003;
      }
    }

    else
    {
      if (v3 == 2)
      {
        return 3006;
      }

      if (v3 == 5)
      {
        return 1013;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (v3 > 26)
    {
      if (v3 == 27)
      {
        return 3006;
      }

      if (v3 != 28)
      {
        if (v3 != 29)
        {
          return result;
        }

        return 3006;
      }

      return 3003;
    }

    v5 = 3006;
    if (v3 != 18)
    {
      v5 = 0;
    }

    if (v3 == 17)
    {
      return 2000;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

+ (int64_t)_errorCodeWithMMCSRegisterError:(id)a3
{
  v3 = objc_msgSend_code(a3, a2, a3);
  v4 = 3003;
  v5 = 3006;
  if (v3 != 18)
  {
    v5 = 0;
  }

  if (v3 != 28)
  {
    v4 = v5;
  }

  if (v3 == 29)
  {
    return 3006;
  }

  else
  {
    return v4;
  }
}

+ (id)_errorWithMMCSError:(id)a3 path:(id)a4 description:(id)a5 operationType:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v10;
  v16 = v13;
  v17 = *MEMORY[0x277D25460];
  v18 = MEMORY[0x277CBC120];
  if (!v13)
  {
LABEL_8:
    v41 = objc_msgSend_domain(v16, v14, v15);
    isEqualToString = objc_msgSend_isEqualToString_(v41, v42, v17);

    if (!isEqualToString)
    {
      v24 = 0;
      v46 = 3001;
      goto LABEL_23;
    }

    v45 = objc_msgSend__commonErrorCodeWithMMCSError_(a1, v44, v16);
    if (v45)
    {
      v46 = v45;
LABEL_22:
      v24 = 0;
      goto LABEL_23;
    }

    if (a6 <= 6)
    {
      if (((1 << a6) & 0xA) != 0)
      {
        v47 = objc_msgSend__errorCodeWithMMCSPutError_(a1, v44, v16);
      }

      else if (((1 << a6) & 0x14) != 0)
      {
        v47 = objc_msgSend__errorCodeWithMMCSGetError_(a1, v44, v16);
      }

      else
      {
        if (((1 << a6) & 0x60) == 0)
        {
          goto LABEL_28;
        }

        v47 = objc_msgSend__errorCodeWithMMCSRegisterError_(a1, v44, v16);
      }

      v46 = v47;
      if (v47)
      {
        goto LABEL_22;
      }
    }

LABEL_28:
    v24 = objc_msgSend__userInfoFromMMCSRetryableError_(a1, v44, v16);
    v46 = 2022;
LABEL_23:
    v48 = objc_msgSend_secureCodableError_(MEMORY[0x277CBC560], v44, v16);
    v23 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(MEMORY[0x277CBC560], v49, *v18, v46, v24, v48, v11, 0, v12);

LABEL_24:
    goto LABEL_25;
  }

  v51 = a1;
  v52 = a6;
  v53 = v12;
  v19 = v11;
  v20 = *MEMORY[0x277CBBF50];
  v21 = *MEMORY[0x277CBC120];
  v22 = *MEMORY[0x277CCA7E8];
  v23 = v13;
  while (1)
  {
    v24 = objc_msgSend_domain(v23, v14, v15);
    if (objc_msgSend_isEqualToString_(v24, v25, v20))
    {
      v11 = v19;
      v12 = v53;
      goto LABEL_24;
    }

    v28 = objc_msgSend_domain(v23, v26, v27);
    v30 = objc_msgSend_isEqualToString_(v28, v29, v21);

    if (v30)
    {
      break;
    }

    v33 = objc_msgSend_domain(v23, v31, v32);
    v35 = objc_msgSend_isEqualToString_(v33, v34, v17);

    if (v35)
    {
      v38 = objc_msgSend_userInfo(v23, v36, v37);
      v40 = objc_msgSend_objectForKeyedSubscript_(v38, v39, v22);

      v23 = v40;
      if (v40)
      {
        continue;
      }
    }

    a1 = v51;

    v11 = v19;
    a6 = v52;
    v12 = v53;
    v18 = MEMORY[0x277CBC120];
    goto LABEL_8;
  }

  v11 = v19;
  v12 = v53;
LABEL_25:

  return v23;
}

+ (void)purgeMMCSDirectoryWithPath:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v44 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v44, v45, a2, a1, @"CKDMMCS.m", 413, @"Expected non-nil path: %@", 0);
  }

  v8 = objc_alloc(MEMORY[0x277CBEBC0]);
  isDirectory = objc_msgSend_initFileURLWithPath_isDirectory_(v8, v9, v7, 1);
  v48 = 0;
  v11 = *MEMORY[0x277CBE868];
  v47 = 0;
  ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(isDirectory, v12, &v48, v11, &v47);
  v14 = v48;
  v17 = v47;
  if (ResourceValue_forKey_error)
  {
    v18 = v14 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18 && (objc_msgSend_BOOLValue(v14, v15, v16) & 1) != 0)
  {
    v21 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v19, v20);
    v46 = v17;
    v23 = objc_msgSend_removeItemAtPath_error_(v21, v22, v7, &v46);
    v24 = v46;

    v25 = *MEMORY[0x277CBC878];
    v26 = *MEMORY[0x277CBC880];
    if (v23)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v25);
      }

      v27 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      v28 = v27;
      v31 = objc_msgSend_CKSanitizedPath(v7, v29, v30);
      *buf = 138543362;
      v50 = v31;
      v32 = "Removed dir at %{public}@";
      v33 = v28;
      v34 = 12;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v25);
      }

      v36 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      v28 = v36;
      v31 = objc_msgSend_CKSanitizedPath(v7, v37, v38);
      *buf = 138543618;
      v50 = v31;
      v51 = 2112;
      v52 = v24;
      v32 = "Warn: Failed to remove dir at %{public}@: %@";
      v33 = v28;
      v34 = 22;
    }

    _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, v32, buf, v34);

LABEL_23:
    goto LABEL_24;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v35 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v40 = v35;
    v43 = objc_msgSend_CKSanitizedPath(v7, v41, v42);
    *buf = 138543874;
    v50 = v43;
    v51 = 2112;
    v52 = v17;
    v53 = 2114;
    v54 = v14;
    _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Skipping remove dir at %{public}@: %@ %{public}@", buf, 0x20u);
  }

  v24 = v17;
LABEL_24:

  v39 = *MEMORY[0x277D85DE8];
}

+ (id)MMCSWrapperForApplicationBundleID:(id)a3 directoryContext:(id)a4 database:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v15 = a5;
  if (!v11)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, a1, @"CKDMMCS.m", 432, @"Expected non-nil application bundle ID");
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_225073EA0;
  v43 = sub_2250734DC;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_225073EA0;
  v37 = sub_2250734DC;
  v38 = 0;
  v16 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, v13, v14);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225127554;
  block[3] = &unk_2785462B8;
  v29 = &v33;
  v17 = v12;
  v26 = v17;
  v30 = &v45;
  v18 = v11;
  v27 = v18;
  v19 = v15;
  v28 = v19;
  v31 = &v39;
  v32 = a1;
  dispatch_sync(v16, block);

  if ((v46[3] & 1) == 0)
  {
    v20 = v34[5];
    v34[5] = 0;

    if (a6)
    {
      *a6 = v40[5];
    }
  }

  v21 = v34[5];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);

  return v21;
}

+ (id)assetKeyWithType:(unint64_t)a3 error:(id *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3 > 1)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, a1, @"CKDMMCS.m", 504, @"Unsupported CKDMMCSAssetKeyType");
  }

  else
  {
    v5 = MMCSReferenceObjectCreateWithType();
    if (v5)
    {
      goto LABEL_12;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v15 = 0;
    _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "MMCSReferenceObjectCreateWithType failed with error %@", buf, 0xCu);
    if (a4)
    {
      goto LABEL_9;
    }
  }

  else if (a4)
  {
LABEL_9:
    objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 5003, 0, @"MMCSReferenceObjectCreateWithType failed");
    *a4 = v5 = 0;
    goto LABEL_12;
  }

  v5 = 0;
LABEL_12:
  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)referenceSignatureFromAssetKey:(id)a3
{
  if (a3)
  {
    v4 = MMCSReferenceSignatureCreateWithReferenceObject();
    if (!v4)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CKDMMCS)initWithMMCSEngineContext:(id)a3 directoryContext:(id)a4
{
  v8 = a3;
  v11 = a4;
  if (!v8)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDMMCS.m", 529, @"Expected non-nil MMCS engine context");
  }

  v27.receiver = self;
  v27.super_class = CKDMMCS;
  v12 = [(CKDMMCS *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_MMCSEngineContext, a3);
    v16 = objc_msgSend_mmcsWorkingDirectory(v11, v14, v15);
    path = v13->_path;
    v13->_path = v16;

    v20 = objc_msgSend_temporaryDirectory(v11, v18, v19);
    temporaryDirectory = v13->_temporaryDirectory;
    v13->_temporaryDirectory = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    trackedItemIDs = v13->_trackedItemIDs;
    v13->_trackedItemIDs = v22;
  }

  return v13;
}

- (_mmcs_engine)getMMCSEngine
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v22 = v21;
      v23 = NSStringFromSelector(a2);
      v24 = 138412546;
      v25 = self;
      v26 = 2114;
      v27 = v23;
      _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", &v24, 0x16u);
    }

    __assert_rtn("[CKDMMCS getMMCSEngine]", "CKDMMCS.m", 551, "0 && already dropped");
  }

  v5 = objc_msgSend_MMCSEngineContext(self, a2, v2);

  if (!v5)
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CKDMMCS.m", 552, @"Expected non-nil MMCS engine context");
  }

  v8 = objc_msgSend_MMCSEngineContext(self, v6, v7);
  objc_msgSend_assertMMCSSerialized(v8, v9, v10);

  v13 = objc_msgSend_MMCSEngineContext(self, v11, v12);
  v16 = objc_msgSend_MMCSEngine(v13, v14, v15);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (unsigned)getMaxChunkCountForSection
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
      v18 = NSStringFromSelector(a2);
      v19 = 138412546;
      v20 = self;
      v21 = 2114;
      v22 = v18;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", &v19, 0x16u);
    }

    __assert_rtn("[CKDMMCS getMaxChunkCountForSection]", "CKDMMCS.m", 559, "0 && already dropped");
  }

  v5 = objc_msgSend_MMCSEngineContext(self, a2, v2);

  if (!v5)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKDMMCS.m", 560, @"Expected non-nil MMCS engine context");
  }

  v8 = objc_msgSend_MMCSEngineContext(self, v6, v7);
  v11 = objc_msgSend_maxChunkCountForSection(v8, v9, v10);

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_referenceIdentifierFromAssetKey:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      v22 = NSStringFromSelector(a2);
      v23 = 138412546;
      v24 = self;
      v25 = 2114;
      *v26 = v22;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", &v23, 0x16u);
    }

    __assert_rtn("[CKDMMCS _referenceIdentifierFromAssetKey:]", "CKDMMCS.m", 566, "0 && already dropped");
  }

  v8 = v5;
  if (v5)
  {
    *&v26[2] = 0;
    v9 = objc_msgSend_bytes(v5, v6, v7, 0, 0, *&v26[2], v27);
    v12 = objc_msgSend_length(v8, v10, v11);
    CC_SHA1(v9, v12, &v23);
    v14 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v13, &v23, 20);
    v17 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_logMMCSOptions:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = NSStringFromSelector(a2);
      *buf = 138412546;
      v16 = self;
      v17 = 2114;
      v18 = v13;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _logMMCSOptions:]", "CKDMMCS.m", 584, "0 && already dropped");
  }

  v7 = v5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_225128670;
  v14[3] = &unk_278546308;
  v14[4] = self;
  v8 = objc_msgSend_CKMapKeysAndValues_(v5, v6, v14);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Using MMCS options: %{public}@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performOperationCleanup
{
  v4 = objc_msgSend_MMCSEngineContext(self, a2, v2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225128A9C;
  v6[3] = &unk_278545A00;
  v6[4] = self;
  objc_msgSend_MMCSSerializeSyncRecursive_(v4, v5, v6);
}

- (id)_contextToRegisterItemGroup:(id)a3 operation:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v40 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v41 = v40;
      v42 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v42;
      _os_log_error_impl(&dword_22506F000, v41, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _contextToRegisterItemGroup:operation:options:completionHandler:]", "CKDMMCS.m", 964, "0 && already dropped");
  }

  v16 = v13;
  v17 = objc_msgSend_operationID(v12, v14, v15);
  v20 = objc_msgSend_container(v12, v18, v19);
  v23 = objc_msgSend_containerID(v20, v21, v22);
  v26 = objc_msgSend_containerIdentifier(v23, v24, v25);

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v55 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 3221225472;
  v45 = sub_225128E00;
  v46 = &unk_278546380;
  v52 = a5;
  v27 = v11;
  v47 = v27;
  v53 = (a5 & 4) != 0;
  v28 = v17;
  v48 = v28;
  v51 = buf;
  v29 = v26;
  v49 = v29;
  v50 = self;
  v30 = _Block_copy(&aBlock);
  v31 = [CKDMMCSItemGroupContext alloc];
  started = objc_msgSend_initWithMMCS_itemGroup_operation_progress_command_start_groupCompletion_(v31, v32, self, v27, v12, 0, 0, v30, v16, aBlock, v44, v45, v46);
  v34 = [CKDRegisterOperationInfo alloc];
  v36 = objc_msgSend_initWithOptions_(v34, v35, a5);
  objc_msgSend_setOperationInfo_(started, v37, v36);

  _Block_object_dispose(buf, 8);
  v38 = *MEMORY[0x277D85DE8];

  return started;
}

- (id)registerItemGroupSet:(id)a3 operation:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v39 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v40 = v39;
      v41 = NSStringFromSelector(a2);
      *buf = 138412546;
      v50 = self;
      v51 = 2114;
      v52 = v41;
      _os_log_error_impl(&dword_22506F000, v40, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS registerItemGroupSet:operation:options:completionHandler:]", "CKDMMCS.m", 1055, "0 && already dropped");
  }

  v14 = v13;
  v15 = [CKDMMCSItemGroupSetContext alloc];
  v42 = v14;
  v17 = objc_msgSend_initWithItemGroupSet_itemGroupSetCompletionBlock_(v15, v16, v11, v14);
  v19 = v17;
  if ((a5 & 0x42) != 0)
  {
    objc_msgSend_setMmcsOperationType_(v17, v18, 6);
  }

  else
  {
    objc_msgSend_setMmcsOperationType_(v17, v18, 5);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = v11;
  v22 = objc_msgSend_itemsGroups(v11, v20, v21);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v44, v48, 16);
  if (v24)
  {
    v27 = v24;
    v28 = *v45;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(v22);
        }

        v30 = *(*(&v44 + 1) + 8 * i);
        v31 = objc_msgSend_itemGroupCompletionBlock(v19, v25, v26);
        v33 = objc_msgSend__contextToRegisterItemGroup_operation_options_completionHandler_(self, v32, v30, v12, a5, v31);

        objc_msgSend_addItemGroupContext_(v19, v34, v33);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v44, v48, 16);
    }

    while (v27);
  }

  objc_msgSend_start(v19, v35, v36);
  v37 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_contextToGetItemGroup:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 command:(id)a7 completionHandler:(id)a8
{
  v58 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v45 = a6;
  v17 = a7;
  v18 = a8;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v42 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v43 = v42;
      v44 = NSStringFromSelector(a2);
      *buf = 138412546;
      v55 = self;
      v56 = 2114;
      v57 = v44;
      _os_log_error_impl(&dword_22506F000, v43, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _contextToGetItemGroup:operation:options:progress:command:completionHandler:]", "CKDMMCS.m", 1080, "0 && already dropped");
  }

  v21 = v18;
  v22 = objc_msgSend_operationID(v15, v19, v20);
  v25 = objc_msgSend_container(v15, v23, v24);
  v28 = objc_msgSend_containerID(v25, v26, v27);
  v31 = objc_msgSend_containerIdentifier(v28, v29, v30);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225129CAC;
  aBlock[3] = &unk_2785463A8;
  v48 = v14;
  v49 = v22;
  v50 = v16;
  v51 = self;
  v52 = v31;
  v53 = a2;
  v32 = v31;
  v33 = v16;
  v34 = v22;
  v35 = v14;
  v36 = _Block_copy(aBlock);
  v37 = [CKDMMCSItemGroupContext alloc];
  started = objc_msgSend_initWithMMCS_itemGroup_operation_progress_command_start_groupCompletion_(v37, v38, self, v35, v15, v45, v17, v36, v21);

  v40 = *MEMORY[0x277D85DE8];

  return started;
}

- (id)getItemGroupSet:(id)a3 operation:(id)a4 shouldFetchAssetContentInMemory:(BOOL)a5 options:(id)a6 progress:(id)a7 command:(id)a8 completionHandler:(id)a9
{
  v82 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v66 = a7;
  v70 = a8;
  v18 = a9;
  v69 = self;
  v19 = *MEMORY[0x277CBC878];
  v20 = *MEMORY[0x277CBC880];
  if (self->_didDrop)
  {
    if (v20 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v19);
    }

    v61 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v62 = v61;
      v63 = NSStringFromSelector(a2);
      *buf = 138412546;
      v77 = self;
      v78 = 2114;
      v79 = v63;
      _os_log_error_impl(&dword_22506F000, v62, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS getItemGroupSet:operation:shouldFetchAssetContentInMemory:options:progress:command:completionHandler:]", "CKDMMCS.m", 1208, "0 && already dropped");
  }

  v21 = v18;
  if (v20 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v19);
  }

  v22 = v66;
  v23 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v57 = v23;
    v60 = objc_msgSend_operationID(v16, v58, v59);
    *buf = 138412802;
    v77 = v15;
    v78 = 2114;
    v79 = v60;
    v80 = 2112;
    v81 = v17;
    _os_log_debug_impl(&dword_22506F000, v57, OS_LOG_TYPE_DEBUG, "Getting MMCS item group set %@ for operationID:%{public}@ with options %@", buf, 0x20u);
  }

  v24 = [CKDMMCSItemGroupSetContext alloc];
  v64 = v21;
  v26 = objc_msgSend_initWithItemGroupSet_itemGroupSetCompletionBlock_(v24, v25, v15, v21);
  objc_msgSend_setMmcsOperationType_(v26, v27, 2);
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v65 = v15;
  obj = objc_msgSend_itemsGroups(v15, v28, v29);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v71, v75, 16);
  if (v31)
  {
    v34 = v31;
    v35 = *v72;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v72 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v71 + 1) + 8 * i);
        v38 = objc_msgSend_itemGroupCompletionBlock(v26, v32, v33);
        v40 = objc_msgSend__contextToGetItemGroup_operation_options_progress_command_completionHandler_(v69, v39, v37, v16, v17, v22, v70, v38);

        v43 = objc_alloc_init(CKDMMCSGetOperationInfo);
        if (a5)
        {
          objc_msgSend_setDestination_(v43, v41, 1);
        }

        else
        {
          v45 = objc_msgSend_operationInfo(v16, v41, v42);
          v48 = v17;
          v49 = objc_msgSend_usesAssetDownloadStagingManager(v45, v46, v47);

          v51 = v49 == 0;
          v17 = v48;
          v22 = v66;
          if (v51)
          {
            objc_msgSend_setDestination_(v43, v50, 0);
          }

          else
          {
            objc_msgSend_setDestination_(v43, v50, 2);
          }
        }

        objc_msgSend_setOperationInfo_(v40, v44, v43);
        objc_msgSend_addItemGroupContext_(v26, v52, v40);
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v71, v75, 16);
    }

    while (v34);
  }

  objc_msgSend_start(v26, v53, v54);
  v55 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_contextToPutItemGroup:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 completionHandler:(id)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v40 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v41 = v40;
      v42 = NSStringFromSelector(a2);
      *buf = 138412546;
      v52 = self;
      v53 = 2114;
      v54 = v42;
      _os_log_error_impl(&dword_22506F000, v41, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _contextToPutItemGroup:operation:options:progress:completionHandler:]", "CKDMMCS.m", 1237, "0 && already dropped");
  }

  v19 = v16;
  v20 = objc_msgSend_operationID(v13, v17, v18);
  v23 = objc_msgSend_container(v13, v21, v22);
  v26 = objc_msgSend_containerID(v23, v24, v25);
  v29 = objc_msgSend_containerIdentifier(v26, v27, v28);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22512ADD8;
  aBlock[3] = &unk_2785463A8;
  v45 = v12;
  v46 = v20;
  v47 = v14;
  v48 = self;
  v49 = v29;
  v50 = a2;
  v30 = v29;
  v31 = v14;
  v32 = v20;
  v33 = v12;
  v34 = _Block_copy(aBlock);
  v35 = [CKDMMCSItemGroupContext alloc];
  started = objc_msgSend_initWithMMCS_itemGroup_operation_progress_command_start_groupCompletion_(v35, v36, self, v33, v13, v15, 0, v34, v19);

  v38 = *MEMORY[0x277D85DE8];

  return started;
}

- (id)putItemGroupSet:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 completionHandler:(id)a7
{
  v66 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v54 = self;
  v18 = *MEMORY[0x277CBC878];
  v19 = *MEMORY[0x277CBC880];
  if (self->_didDrop)
  {
    if (v19 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v18);
    }

    v49 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v50 = v49;
      v51 = NSStringFromSelector(a2);
      *buf = 138412546;
      v61 = self;
      v62 = 2114;
      v63 = v51;
      _os_log_error_impl(&dword_22506F000, v50, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS putItemGroupSet:operation:options:progress:completionHandler:]", "CKDMMCS.m", 1342, "0 && already dropped");
  }

  v20 = v17;
  if (v19 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v18);
  }

  v21 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v45 = v21;
    v48 = objc_msgSend_operationID(v14, v46, v47);
    *buf = 138412802;
    v61 = v13;
    v62 = 2114;
    v63 = v48;
    v64 = 2112;
    v65 = v15;
    _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Putting MMCS item group set %@ for operationID:%{public}@ with options %@", buf, 0x20u);
  }

  v22 = [CKDMMCSItemGroupSetContext alloc];
  v52 = v20;
  v24 = objc_msgSend_initWithItemGroupSet_itemGroupSetCompletionBlock_(v22, v23, v13, v20);
  objc_msgSend_setMmcsOperationType_(v24, v25, 1);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = v13;
  v28 = objc_msgSend_itemsGroups(v13, v26, v27);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v55, v59, 16);
  if (v30)
  {
    v33 = v30;
    v34 = *v56;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v56 != v34)
        {
          objc_enumerationMutation(v28);
        }

        v36 = *(*(&v55 + 1) + 8 * i);
        v37 = objc_msgSend_itemGroupCompletionBlock(v24, v31, v32);
        v39 = objc_msgSend__contextToPutItemGroup_operation_options_progress_completionHandler_(v54, v38, v36, v14, v15, v16, v37);

        objc_msgSend_addItemGroupContext_(v24, v40, v39);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v55, v59, 16);
    }

    while (v33);
  }

  objc_msgSend_start(v24, v41, v42);
  v43 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)retrieveChunkWithSignature:(id)a3
{
  v53[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = MEMORY[0x277CBC830];
  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v46 = self;
    v47 = 2112;
    v48 = v4;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "[%@ retrieveChunkWithSignature:%@] starting", buf, 0x16u);
  }

  v8 = [C3DownloadChunkContext alloc];
  v10 = objc_msgSend_initWithMMCS_(v8, v9, self);
  v53[0] = v4;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v53, 1);
  v13 = objc_opt_new();
  v16 = objc_msgSend_MMCSEngineContext(self, v14, v15);
  v37 = MEMORY[0x277D85DD0];
  v38 = 3221225472;
  v39 = sub_22512BD10;
  v40 = &unk_2785463D0;
  v41 = self;
  v17 = v10;
  v42 = v17;
  v18 = v13;
  v43 = v18;
  v19 = v12;
  v44 = v19;
  objc_msgSend_MMCSSerializeSyncRecursive_(v16, v20, &v37);

  v23 = objc_msgSend_signatureToMutableData(v17, v21, v22, v37, v38, v39, v40, v41);
  v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v4);

  if (*v5 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v33 = v26;
    v36 = objc_msgSend_signatureToMutableData(v17, v34, v35);
    *buf = 138413058;
    v46 = self;
    v47 = 2112;
    v48 = v4;
    v49 = 2112;
    v50 = v25;
    v51 = 2112;
    v52 = v36;
    _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "[%@ retrieveChunkWithSignature:%@] found %@ with %@", buf, 0x2Au);
  }

  if (objc_msgSend_length(v25, v27, v28))
  {
    v29 = v25;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)registeredMMCSItemForRereferencedAsset:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_225073EA0;
  v19 = sub_2250734DC;
  v20 = 0;
  v7 = objc_msgSend_MMCSEngineContext(self, v5, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22512C0B4;
  v12[3] = &unk_278546420;
  v14 = &v15;
  v12[4] = self;
  v8 = v4;
  v13 = v8;
  objc_msgSend_MMCSSerializeSyncRecursive_(v7, v9, v12);

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)CKStatusReportArray
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS CKStatusReportArray]", "CKDMMCS.m", 1389, "0 && already dropped");
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = sub_225073EA0;
  v18 = sub_2250734DC;
  v19 = @"Empty MMCS Status";
  v4 = objc_msgSend_MMCSEngineContext(self, a2, v2);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22512C41C;
  v14[3] = &unk_278546448;
  v14[4] = self;
  v14[5] = buf;
  objc_msgSend_MMCSSerializeSyncRecursive_(v4, v5, v14);

  v15 = *(*&buf[8] + 40);
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, &v15, 1);
  _Block_object_dispose(buf, 8);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_getRegisteredItemsGreaterThan:(unint64_t)a3 itemIds:(unint64_t *)a4 itemCount:(unint64_t *)a5 error:(id *)a6
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = NSStringFromSelector(a2);
      *v13 = 138412546;
      *&v13[4] = self;
      v14 = 2114;
      v15 = v12;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", v13, 0x16u);
    }

    __assert_rtn("[CKDMMCS _getRegisteredItemsGreaterThan:itemIds:itemCount:error:]", "CKDMMCS.m", 1398, "0 && already dropped");
  }

  *v13 = 0;
  objc_msgSend_getMMCSEngine(self, a2, a3);
  result = MMCSGetRegisteredItems() != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)registeredItemCount:(unint64_t *)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS registeredItemCount:error:]", "CKDMMCS.m", 1414, "0 && already dropped");
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v23 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = objc_msgSend_MMCSEngineContext(self, a2, a3);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22512C850;
  v17[3] = &unk_278546470;
  v17[4] = self;
  v17[5] = buf;
  v17[6] = &v18;
  v17[7] = a3;
  objc_msgSend_MMCSSerializeSyncRecursive_(v7, v8, v17);

  v9 = v19[3];
  if (v9)
  {
    if (a4)
    {
      *a4 = v9;
    }

    else
    {
      CFRelease(v9);
      v19[3] = 0;
    }
  }

  v10 = *(*&buf[8] + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(buf, 8);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)showRegisteredItemsInContainer:(id)a3
{
  v91[2] = *MEMORY[0x277D85DE8];
  v61 = a3;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v56 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v57 = v56;
      v58 = NSStringFromSelector(a2);
      *v88 = 138412546;
      *&v88[4] = self;
      *&v88[12] = 2114;
      *&v88[14] = v58;
      _os_log_error_impl(&dword_22506F000, v57, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", v88, 0x16u);
    }

    __assert_rtn("[CKDMMCS showRegisteredItemsInContainer:]", "CKDMMCS.m", 1432, "0 && already dropped");
  }

  obj = 0;
  v79 = 0;
  *v88 = 0;
  *&v88[8] = v88;
  *&v88[16] = 0x3032000000;
  v89 = sub_225073EA0;
  v90 = sub_2250734DC;
  v91[0] = 0;
  v6 = objc_msgSend_registeredItemCount_error_(self, v5, &v79, &obj);
  objc_storeStrong(v91, obj);
  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v85) = 134217984;
      *(&v85 + 4) = v79;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "MMCS has %llu registered items.", &v85, 0xCu);
    }

    v10 = v79;
    if (v79 <= 0x64)
    {
      v10 = 100;
    }

    *&v85 = 0;
    *(&v85 + 1) = &v85;
    if (v10 >= 0x3E8)
    {
      v11 = 1000;
    }

    else
    {
      v11 = v10;
    }

    v86 = 0x2020000000;
    v87 = 0;
    v14 = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
    v15 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v16 = *(&v85 + 1);
    *&v17 = 134218240;
    v60 = v17;
    v62 = v11;
    while (1)
    {
      *(v16 + 24) = v11;
      v18 = objc_msgSend_MMCSEngineContext(self, v12, v13, v60);
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = sub_22512D130;
      v73[3] = &unk_278546498;
      v73[4] = self;
      v73[5] = &v74;
      v73[8] = v15;
      v73[9] = v14;
      v73[6] = &v85;
      v73[7] = v88;
      objc_msgSend_MMCSSerializeSyncRecursive_(v18, v19, v73);

      if ((v75[3] & 1) == 0)
      {
        break;
      }

      if (*(*(&v85 + 1) + 24))
      {
        v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13);
        if (*(*(&v85 + 1) + 24) >= 1)
        {
          v21 = 0;
          while (1)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v22 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v27 = v14[v21];
              *buf = 134217984;
              v82 = v27;
              _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "MMCS itemID %llu registered.", buf, 0xCu);
            }

            v23 = v14[v21];
            if (v15 >= v23)
            {
              break;
            }

            v24 = objc_alloc_init(CKDMMCSItem);
            objc_msgSend_setItemID_(v24, v25, v14[v21]);
            objc_msgSend_addObject_(v20, v26, v24);

            ++v21;
            v15 = v23;
            if (v21 >= *(*(&v85 + 1) + 24))
            {
              goto LABEL_29;
            }
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v28 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v51 = v14[v21];
            *buf = v60;
            v82 = v15;
            v83 = 2048;
            v84 = v51;
            _os_log_error_impl(&dword_22506F000, v28, OS_LOG_TYPE_ERROR, "Expected registered item IDs to be ordered ascending: Previous itemId %llu is not less than %llu.", buf, 0x16u);
          }
        }

        v23 = v15;
LABEL_29:
        v29 = [CKDMMCSItemGroupSet alloc];
        v66 = objc_msgSend_initWithItems_(v29, v30, v20);
        v31 = [CKDOperation alloc];
        v32 = objc_opt_new();
        v65 = objc_msgSend_initWithOperationInfo_container_(v31, v33, v32, v61);

        v34 = dispatch_semaphore_create(0);
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = sub_22512D1A4;
        v71[3] = &unk_2785464C0;
        v35 = v34;
        v72 = v35;
        v64 = objc_msgSend_registerItemGroupSet_operation_options_completionHandler_(self, v36, v66, v65, 4, v71);
        v63 = v35;
        dispatch_semaphore_wait(v35, 0xFFFFFFFFFFFFFFFFLL);
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v39 = objc_msgSend_itemsGroups(v66, v37, v38);
        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v67, v80, 16);
        if (v43)
        {
          v44 = *v68;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v68 != v44)
              {
                objc_enumerationMutation(v39);
              }

              v46 = objc_msgSend_items(*(*(&v67 + 1) + 8 * i), v41, v42);
              v49 = objc_msgSend_assetCache(self, v47, v48);
              objc_msgSend_checkAssetHandlesForRegisteredMMCSItems_(v49, v50, v46);
            }

            v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v41, &v67, v80, 16);
          }

          while (v43);
        }

        v15 = v23;
      }

      v11 = v62;
      v16 = *(&v85 + 1);
      if (*(*(&v85 + 1) + 24) != v62)
      {
        goto LABEL_47;
      }
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v54 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v59 = *(*&v88[8] + 40);
      *buf = 138412290;
      v82 = v59;
      _os_log_error_impl(&dword_22506F000, v54, OS_LOG_TYPE_ERROR, "Error enumerating registered items %@", buf, 0xCu);
    }

LABEL_47:
    free(v14);
    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(&v85, 8);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v52 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v53 = *(*&v88[8] + 40);
      LODWORD(v85) = 138412290;
      *(&v85 + 4) = v53;
      _os_log_debug_impl(&dword_22506F000, v52, OS_LOG_TYPE_DEBUG, "Error counting registered items %@", &v85, 0xCu);
    }
  }

  _Block_object_dispose(v88, 8);

  v55 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterItemIDs:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_didDrop)
  {
    v37 = self;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v38 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v39 = v38;
      v40 = NSStringFromSelector(a2);
      *buf = 138412546;
      v51 = v37;
      v52 = 2114;
      v53 = v40;
      _os_log_error_impl(&dword_22506F000, v39, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _unregisterItemIDs:]", "CKDMMCS.m", 1493, "0 && already dropped");
  }

  v8 = v5;
  v9 = objc_msgSend_count(v5, v6, v7);
  if (v9)
  {
    v10 = v9;
    v41 = self;
    v44 = malloc_type_calloc(8uLL, v9, 0xCEAFF8D3uLL);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v42 = v8;
    obj = v8;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v45, v49, 16);
    if (v12)
    {
      v15 = v12;
      v16 = 0;
      v17 = *v46;
      v18 = MEMORY[0x277CBC878];
      v19 = MEMORY[0x277CBC880];
      v20 = MEMORY[0x277CBC830];
      do
      {
        v21 = 0;
        do
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v22 = objc_msgSend_unsignedLongLongValue(*(*(&v45 + 1) + 8 * v21), v13, v14, v41);
          v23 = *v18;
          v24 = *v19;
          if (v22)
          {
            v25 = v22;
            if (v24 != -1)
            {
              dispatch_once(v19, v23);
            }

            v26 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v51 = v25;
              _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Unregistering itemID=%llu with MMCS", buf, 0xCu);
            }

            v44[v16++] = v25;
          }

          else
          {
            if (v24 != -1)
            {
              dispatch_once(v19, v23);
            }

            v27 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "_unregisterItemIDs Zero itemID", buf, 2u);
            }

            --v10;
          }

          ++v21;
        }

        while (v15 != v21);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v45, v49, 16);
      }

      while (v15);
    }

    objc_msgSend_getMMCSEngine(v41, v28, v29);
    if (HIDWORD(v10))
    {
      v33 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v30, v31);
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "uint32_t CKDownsizeOrDie(NSUInteger)");
      objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v33, v36, v35, @"CloudKit-Prefix.pch", 34, @"That number was ridiculous");
    }

    MMCSUnregisterFiles();
    free(v44);
    v8 = v42;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)unregisterItemIDs:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      *buf = 138412546;
      v19 = self;
      v20 = 2114;
      v21 = v15;
      _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS unregisterItemIDs:]", "CKDMMCS.m", 1515, "0 && already dropped");
  }

  v8 = v5;
  v9 = objc_msgSend_MMCSEngineContext(self, v6, v7);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22512D718;
  v16[3] = &unk_278545898;
  v16[4] = self;
  v17 = v8;
  v10 = v8;
  objc_msgSend_MMCSSerializeSyncRecursive_(v9, v11, v16);

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_contextToPutSectionItem:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 completionHandler:(id)a7
{
  v73 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v56 = a6;
  v55 = a7;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v50 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v51 = v50;
      v52 = NSStringFromSelector(a2);
      *buf = 138412546;
      v70 = self;
      v71 = 2114;
      v72 = v52;
      _os_log_error_impl(&dword_22506F000, v51, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _contextToPutSectionItem:operation:options:progress:completionHandler:]", "CKDMMCS.m", 1526, "0 && already dropped");
  }

  v18 = objc_msgSend_operationID(v14, v16, v17);
  v21 = objc_msgSend_container(v14, v19, v20);
  v24 = objc_msgSend_containerID(v21, v22, v23);
  v27 = objc_msgSend_containerIdentifier(v24, v25, v26);

  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = &stru_28385ED00;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22512DAC4;
  aBlock[3] = &unk_2785463A8;
  v29 = v13;
  v67 = a2;
  v62 = v29;
  v63 = self;
  v54 = self;
  v53 = v15;
  v64 = v53;
  v30 = v28;
  v65 = v30;
  v31 = v18;
  v66 = v31;
  v32 = _Block_copy(aBlock);
  v33 = [CKDMMCSItemGroup alloc];
  v35 = objc_msgSend_initWithItem_(v33, v34, v29);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v38 = objc_msgSend_sectionItems(v29, v36, v37);
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v57, v68, 16);
  if (v40)
  {
    v42 = v40;
    v43 = *v58;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v58 != v43)
        {
          objc_enumerationMutation(v38);
        }

        objc_msgSend_addItem_(v35, v41, *(*(&v57 + 1) + 8 * i));
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v57, v68, 16);
    }

    while (v42);
  }

  v45 = [CKDMMCSItemGroupContext alloc];
  started = objc_msgSend_initWithMMCS_itemGroup_operation_progress_command_start_groupCompletion_(v45, v46, v54, v35, v14, v56, 0, v32, v55);

  v48 = *MEMORY[0x277D85DE8];

  return started;
}

- (id)putSectionItem:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 completionHandler:(id)a7
{
  v46 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = *MEMORY[0x277CBC878];
  v19 = *MEMORY[0x277CBC880];
  if (self->_didDrop)
  {
    if (v19 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v18);
    }

    v37 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v38 = v37;
      v39 = NSStringFromSelector(a2);
      v40 = 138412546;
      v41 = self;
      v42 = 2114;
      v43 = v39;
      _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", &v40, 0x16u);
    }

    __assert_rtn("[CKDMMCS putSectionItem:operation:options:progress:completionHandler:]", "CKDMMCS.m", 1617, "0 && already dropped");
  }

  v20 = v17;
  if (v19 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v18);
  }

  v21 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v33 = v21;
    v36 = objc_msgSend_operationID(v14, v34, v35);
    v40 = 138412802;
    v41 = v13;
    v42 = 2114;
    v43 = v36;
    v44 = 2112;
    v45 = v15;
    _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Putting MMCS section item %@ for operationID:%{public}@ with options %@", &v40, 0x20u);
  }

  v23 = objc_msgSend__contextToPutSectionItem_operation_options_progress_completionHandler_(self, v22, v13, v14, v15, v16, v20);
  objc_msgSend_setMmcsOperationType_(v23, v24, 3);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(v14, v25, v26);
  objc_msgSend_setShouldCloneFileInAssetCache_(v23, v28, shouldCloneFileInAssetCache);
  objc_msgSend_start(v23, v29, v30);

  v31 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_contextToGetSectionItem:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 completionHandler:(id)a7
{
  v73 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v56 = a6;
  v55 = a7;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v50 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v51 = v50;
      v52 = NSStringFromSelector(a2);
      *buf = 138412546;
      v70 = self;
      v71 = 2114;
      v72 = v52;
      _os_log_error_impl(&dword_22506F000, v51, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _contextToGetSectionItem:operation:options:progress:completionHandler:]", "CKDMMCS.m", 1632, "0 && already dropped");
  }

  v18 = objc_msgSend_operationID(v14, v16, v17);
  v21 = objc_msgSend_container(v14, v19, v20);
  v24 = objc_msgSend_containerID(v21, v22, v23);
  v27 = objc_msgSend_containerIdentifier(v24, v25, v26);

  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = &stru_28385ED00;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22512E730;
  aBlock[3] = &unk_2785463A8;
  v29 = v13;
  v67 = a2;
  v62 = v29;
  v63 = self;
  v54 = self;
  v53 = v15;
  v64 = v53;
  v30 = v28;
  v65 = v30;
  v31 = v18;
  v66 = v31;
  v32 = _Block_copy(aBlock);
  v33 = [CKDMMCSItemGroup alloc];
  v35 = objc_msgSend_initWithItem_(v33, v34, v29);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v38 = objc_msgSend_sectionItems(v29, v36, v37);
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v57, v68, 16);
  if (v40)
  {
    v42 = v40;
    v43 = *v58;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v58 != v43)
        {
          objc_enumerationMutation(v38);
        }

        objc_msgSend_addItem_(v35, v41, *(*(&v57 + 1) + 8 * i));
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v57, v68, 16);
    }

    while (v42);
  }

  v45 = [CKDMMCSItemGroupContext alloc];
  started = objc_msgSend_initWithMMCS_itemGroup_operation_progress_command_start_groupCompletion_(v45, v46, v54, v35, v14, v56, 0, v32, v55);

  v48 = *MEMORY[0x277D85DE8];

  return started;
}

- (id)getSectionItem:(id)a3 operation:(id)a4 options:(id)a5 progress:(id)a6 completionHandler:(id)a7
{
  v46 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = *MEMORY[0x277CBC878];
  v19 = *MEMORY[0x277CBC880];
  if (self->_didDrop)
  {
    if (v19 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v18);
    }

    v37 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v38 = v37;
      v39 = NSStringFromSelector(a2);
      v40 = 138412546;
      v41 = self;
      v42 = 2114;
      v43 = v39;
      _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", &v40, 0x16u);
    }

    __assert_rtn("[CKDMMCS getSectionItem:operation:options:progress:completionHandler:]", "CKDMMCS.m", 1739, "0 && already dropped");
  }

  v20 = v17;
  if (v19 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v18);
  }

  v21 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v33 = v21;
    v36 = objc_msgSend_operationID(v14, v34, v35);
    v40 = 138412802;
    v41 = v13;
    v42 = 2114;
    v43 = v36;
    v44 = 2112;
    v45 = v15;
    _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Getting MMCS section item %@ for operationID:%{public}@ with options %@", &v40, 0x20u);
  }

  v23 = objc_msgSend__contextToGetSectionItem_operation_options_progress_completionHandler_(self, v22, v13, v14, v15, v16, v20);
  objc_msgSend_setMmcsOperationType_(v23, v24, 4);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(v14, v25, v26);
  objc_msgSend_setShouldCloneFileInAssetCache_(v23, v28, shouldCloneFileInAssetCache);
  objc_msgSend_start(v23, v29, v30);

  v31 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)startTrackingItemIDsForMMCSItems:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_trackedItemIDs;
  objc_sync_enter(v5);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
  if (v10)
  {
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v6);
        }

        trackedItemIDs = self->_trackedItemIDs;
        v14 = MEMORY[0x277CCABB0];
        v15 = objc_msgSend_itemID(*(*(&v20 + 1) + 8 * v12), v8, v9, v20);
        v17 = objc_msgSend_numberWithUnsignedLongLong_(v14, v16, v15);
        objc_msgSend_addObject_(trackedItemIDs, v18, v17);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v20, v24, 16);
    }

    while (v10);
  }

  objc_sync_exit(v5);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)stopTrackingItemIDsForMMCSItems:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_trackedItemIDs;
  objc_sync_enter(v5);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
  if (v10)
  {
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v6);
        }

        trackedItemIDs = self->_trackedItemIDs;
        v14 = MEMORY[0x277CCABB0];
        v15 = objc_msgSend_itemID(*(*(&v20 + 1) + 8 * v12), v8, v9, v20);
        v17 = objc_msgSend_numberWithUnsignedLongLong_(v14, v16, v15);
        objc_msgSend_removeObject_(trackedItemIDs, v18, v17);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v20, v24, 16);
    }

    while (v10);
  }

  objc_sync_exit(v5);
  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)isTrackingItemID:(unint64_t)a3
{
  v5 = self->_trackedItemIDs;
  objc_sync_enter(v5);
  trackedItemIDs = self->_trackedItemIDs;
  v8 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v7, a3);
  LOBYTE(trackedItemIDs) = objc_msgSend_containsObject_(trackedItemIDs, v9, v8);

  objc_sync_exit(v5);
  return trackedItemIDs;
}

@end