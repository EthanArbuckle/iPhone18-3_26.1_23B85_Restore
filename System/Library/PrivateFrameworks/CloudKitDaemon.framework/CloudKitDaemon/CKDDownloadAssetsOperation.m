@interface CKDDownloadAssetsOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)_download;
- (BOOL)_postProcess;
- (BOOL)_prepareForDownload;
- (BOOL)makeStateTransition;
- (BOOL)shouldDownloadAssetFromTranscoder:(id)a3;
- (CKDDownloadAssetsOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)CKStatusReportLogGroups;
- (id)_tryToFillInTheDerivativeTemplateWithAsset:(id)a3;
- (id)activityCreate;
- (void)_collectMetricsFromCompletedItemGroup:(id)a3;
- (void)_collectMetricsFromCompletedItemGroupSet:(id)a3;
- (void)_collectMetricsFromMMCSOperationMetrics:(id)a3;
- (void)_didCommandForAsset:(id)a3 command:(id)a4;
- (void)_didCommandForMMCSItem:(id)a3 command:(id)a4;
- (void)_didDownloadAsset:(id)a3 error:(id)a4;
- (void)_didDownloadMMCSItem:(id)a3 inMemory:(BOOL)a4 error:(id)a5;
- (void)_didDownloadMMCSSectionItem:(id)a3 task:(id)a4 error:(id)a5;
- (void)_didDownloadMMCSSectionItems:(id)a3 task:(id)a4 error:(id)a5;
- (void)_didMakeProgressForAsset:(id)a3 progress:(double)a4;
- (void)_didMakeProgressForMMCSSectionItem:(id)a3 task:(id)a4;
- (void)_didPrepareAsset:(id)a3;
- (void)_downloadMMCSItems:(id)a3 downloadTasksByPackages:(id)a4 shouldFetchAssetContentInMemory:(BOOL)a5;
- (void)_downloadPackageSectionAtIndex:(int64_t)a3 task:(id)a4 completionBlock:(id)a5;
- (void)_downloadPackageSectionsWithPendingTasks:(id)a3 downloadingTasks:(id)a4 completedTasks:(id)a5;
- (void)_downloadPackageSectionsWithSectionEnumerator:(id)a3 task:(id)a4 completionBlock:(id)a5;
- (void)_downloadPackageSectionsWithTask:(id)a3 completionBlock:(id)a4;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_prepareAssetForDownload:(id)a3;
- (void)_preparePackageForDataDownload:(id)a3;
- (void)_preparePackageForDownload:(id)a3;
- (void)_preparePackageForMetadataDownload:(id)a3;
- (void)_removeUntrackedMMCSItems:(id)a3;
- (void)cancel;
- (void)main;
@end

@implementation CKDDownloadAssetsOperation

- (CKDDownloadAssetsOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v32.receiver = self;
  v32.super_class = CKDDownloadAssetsOperation;
  v7 = [(CKDDatabaseOperation *)&v32 initWithOperationInfo:v6 container:a4];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = objc_msgSend_QOSClass(v7, v9, v10);
    v12 = dispatch_queue_attr_make_with_qos_class(v8, v11, 0);

    v13 = dispatch_queue_create("com.apple.cloudkit.download", v12);
    queue = v7->_queue;
    v7->_queue = v13;

    v15 = objc_alloc_init(CKDCancelTokenGroup);
    cancelTokens = v7->_cancelTokens;
    v7->_cancelTokens = v15;

    v19 = objc_msgSend_assetsToDownload(v6, v17, v18);
    assetsToDownload = v7->_assetsToDownload;
    v7->_assetsToDownload = v19;

    v23 = objc_msgSend_assetsToDownloadInMemory(v6, v21, v22);
    assetsToDownloadInMemory = v7->_assetsToDownloadInMemory;
    v7->_assetsToDownloadInMemory = v23;

    v27 = objc_msgSend_assetURLInfosToFillOut(v6, v25, v26);
    assetURLInfosToFillOut = v7->_assetURLInfosToFillOut;
    v7->_assetURLInfosToFillOut = v27;

    v7->_shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(v6, v29, v30);
  }

  return v7;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/download-assets", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (id)CKStatusReportLogGroups
{
  v17.receiver = self;
  v17.super_class = CKDDownloadAssetsOperation;
  v3 = [(CKDOperation *)&v17 CKStatusReportLogGroups];
  if (os_unfair_lock_trylock(&self->_prepareLock))
  {
    if (!v3)
    {
      v3 = objc_opt_new();
    }

    v6 = objc_msgSend_MMCSItemsToDownload(self, v4, v5);
    v8 = objc_msgSend_CKMap_(v6, v7, &unk_28385D360);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v9, v8, @"MMCS Items");

    v12 = objc_msgSend_MMCSItemsToDownloadInMemory(self, v10, v11);
    v14 = objc_msgSend_CKMap_(v12, v13, &unk_28385D380);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v15, v14, @"MMCS In Memory Items");

    os_unfair_lock_unlock(&self->_prepareLock);
  }

  return v3;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_cancelTokens(self, a2, v2);
  objc_msgSend_removeAllCancelTokens(v4, v5, v6);

  v9 = objc_msgSend_state(self, v7, v8);
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        objc_msgSend_hash(self, v10, v11);
        kdebug_trace();
        objc_msgSend_setState_(self, v16, 0xFFFFFFFFLL);
        v19 = objc_msgSend_error(self, v17, v18);
        objc_msgSend_finishWithError_(self, v20, v19);
      }

      return 1;
    }

    objc_msgSend_setState_(self, v10, 4);

    return MEMORY[0x2821F9670](self, sel__postProcess, v23);
  }

  else
  {
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        objc_msgSend_hash(self, v10, v11);
        kdebug_trace();
        objc_msgSend_hash(self, v12, v13);
        kdebug_trace();
        objc_msgSend_setState_(self, v14, 3);

        return MEMORY[0x2821F9670](self, sel__download, v15);
      }

      return 1;
    }

    objc_msgSend_hash(self, v10, v11);
    kdebug_trace();
    objc_msgSend_setState_(self, v21, 2);

    return MEMORY[0x2821F9670](self, sel__prepareForDownload, v22);
  }
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 - 2 >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDDownloadAssetsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_278548B18[a3 - 2];
  }

  return v5;
}

- (void)_removeUntrackedMMCSItems:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v22, v26, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = objc_msgSend_fileURL(v11, v6, v7);
        if (v12)
        {
          v13 = v12;
          v14 = objc_msgSend_trackingUUID(v11, v6, v7);

          if (!v14)
          {
            v15 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7);
            v18 = objc_msgSend_fileURL(v11, v16, v17);
            objc_msgSend_removeItemAtURL_error_(v15, v19, v18, 0);

            objc_msgSend_setFileURL_(v11, v20, 0);
          }
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v22, v26, 16);
    }

    while (v8);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_didPrepareAsset:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CKDDownloadAssetsOperation.m", 271, @"Expected non-nil asset for %@", self);
  }

  v8 = objc_msgSend_callbackQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251A707C;
  block[3] = &unk_278545898;
  block[4] = self;
  v13 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

- (void)_didMakeProgressForAsset:(id)a3 progress:(double)a4
{
  v9 = a3;
  if (!v9)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKDDownloadAssetsOperation.m", 279, @"Expected non-nil asset for %@", self);
  }

  v10 = objc_msgSend_callbackQueue(self, v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251A720C;
  block[3] = &unk_278545E20;
  block[4] = self;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  dispatch_async(v10, block);
}

- (void)_didCommandForAsset:(id)a3 command:(id)a4
{
  v7 = a3;
  v10 = a4;
  if (!v7)
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, self, @"CKDDownloadAssetsOperation.m", 287, @"Expected non-nil asset for %@", self);
  }

  v11 = v7;
  v14 = objc_msgSend_mutableCopy(v10, v12, v13);
  v17 = objc_msgSend_recordKey(v11, v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v18, v17, @"RecordKey");

  v19 = MEMORY[0x277CCABB0];
  v22 = objc_msgSend_arrayIndex(v11, v20, v21);
  v24 = objc_msgSend_numberWithInteger_(v19, v23, v22);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v25, v24, @"ArrayIndex");

  v28 = objc_msgSend_callbackQueue(self, v26, v27);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251A7444;
  block[3] = &unk_278546990;
  block[4] = self;
  v34 = v11;
  v35 = v14;
  v29 = v14;
  v30 = v11;
  dispatch_async(v28, block);
}

- (void)_didDownloadAsset:(id)a3 error:(id)a4
{
  v7 = a3;
  v10 = a4;
  if (!v7)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKDDownloadAssetsOperation.m", 298, @"Expected non-nil asset for %@", self);
  }

  v11 = objc_msgSend_callbackQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251A75F0;
  block[3] = &unk_278546990;
  block[4] = self;
  v17 = v7;
  v18 = v10;
  v12 = v10;
  v13 = v7;
  dispatch_async(v11, block);
}

- (id)_tryToFillInTheDerivativeTemplateWithAsset:(id)a3
{
  v139 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_deviceContext(self, v5, v6);
  v10 = objc_msgSend_accountDataSecurityObserver(v7, v8, v9);
  v13 = objc_msgSend_container(self, v11, v12);
  v16 = objc_msgSend_account(v13, v14, v15);
  v18 = objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v10, v17, v16, 1);

  if (v18)
  {
    v21 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 5013, @"Cannot fill in derivative template due to walrus enabled for asset %@", v4);
    goto LABEL_55;
  }

  v22 = MEMORY[0x277CBC190];
  v23 = objc_msgSend_constructedAssetDownloadURLTemplate(v4, v19, v20);
  v25 = objc_msgSend__canonicalizeTemplateURL_(v22, v24, v23);

  v27 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x277CCACE0], v26, v25, 0);
  v28 = MEMORY[0x277CCACA8];
  v31 = objc_msgSend_percentEncodedPath(v27, v29, v30);
  v34 = objc_msgSend_percentEncodedQuery(v27, v32, v33);
  v132 = objc_msgSend_stringWithFormat_(v28, v35, @"%@?%@", v31, v34);

  v38 = objc_msgSend_host(v25, v36, v37);
  v39 = MEMORY[0x277CBC190];
  v42 = objc_msgSend_constructedAssetDownloadURLTemplate(v4, v40, v41);
  LOBYTE(v39) = objc_msgSend__templateURLRequiresAssetKey_(v39, v43, v42);

  v46 = MEMORY[0x277CBC830];
  if ((v39 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v62 = v46;
    v63 = *v46;
    if (os_log_type_enabled(*v46, OS_LOG_TYPE_DEBUG))
    {
      v93 = v63;
      v96 = objc_msgSend_signature(v4, v94, v95);
      *buf = 138412290;
      v138 = v96;
      _os_log_debug_impl(&dword_22506F000, v93, OS_LOG_TYPE_DEBUG, "Not filling in key for constructed asset URL template for asset %@ because it doesn't require a key", buf, 0xCu);

      v62 = v46;
    }

    v66 = 0;
    v67 = 0;
    goto LABEL_40;
  }

  if (!v38)
  {
    v68 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v44, *MEMORY[0x277CBC120], 1000, @"asset %@ has constructedAssetDownloadURLTemplate but cannot parse out host string", v4);
    v67 = 0;
    v66 = 0;
    v62 = v46;
    if (v68)
    {
      goto LABEL_54;
    }

LABEL_40:
    v134 = v67;
    v98 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v64, v65);
    objc_msgSend_setObject_forKeyedSubscript_(v98, v99, &stru_28385ED00, @"f");
    if (v66)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v98, v100, v66, @"uk");
    }

    v102 = MEMORY[0x277CBC190];
    v103 = objc_msgSend_constructedAssetDownloadURLTemplate(v4, v100, v101);
    v105 = objc_msgSend__expandTemplateURL_fieldValues_(v102, v104, v103, v98);

    if (v134)
    {
      v107 = objc_msgSend_stringByAppendingString_(v105, v106, v134);

      v105 = v107;
    }

    v108 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v106, v105);
    objc_msgSend_setConstructedAssetDownloadURL_(v4, v109, v108);

    v112 = objc_msgSend_constructedAssetDownloadURL(v4, v110, v111);

    if (v112)
    {
      v68 = 0;
    }

    else
    {
      v68 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v113, *MEMORY[0x277CBC120], 1, @"Couldn't create asset download URL from template");
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v114 = *v62;
      if (!os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      v125 = v114;
      v131 = objc_msgSend_constructedAssetDownloadURLTemplate(v4, v126, v127);
      *buf = 138543362;
      v138 = v131;
      _os_log_error_impl(&dword_22506F000, v125, OS_LOG_TYPE_ERROR, "Couldn't create asset download URL from template %{public}@", buf, 0xCu);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

LABEL_51:
    v115 = *v62;
    if (os_log_type_enabled(*v62, OS_LOG_TYPE_INFO))
    {
      v116 = v115;
      objc_msgSend_constructedAssetDownloadURLTemplate(v4, v117, v118);
      v119 = v27;
      v120 = v25;
      v122 = v121 = v38;
      *buf = 138543362;
      v138 = v122;
      _os_log_impl(&dword_22506F000, v116, OS_LOG_TYPE_INFO, "constructedAssetDownloadURL %{public}@", buf, 0xCu);

      v38 = v121;
      v25 = v120;
      v27 = v119;
    }

    v67 = v134;
    goto LABEL_54;
  }

  v47 = objc_msgSend_keyOrErrorForHostname(self, v44, v45);
  v49 = objc_msgSend_objectForKeyedSubscript_(v47, v48, v38);

  if (!v49)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v50, *MEMORY[0x277CBC120], 1000, @"no public cert result for host %@ asset %@", v38, v4);
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = v49;
LABEL_29:
      v68 = v70;
      v67 = 0;
      v66 = 0;
      v62 = v46;
      goto LABEL_39;
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v69, *MEMORY[0x277CBC120], 1000, @"unknown public cert result for host %@ asset %@", v38, v4);
    v70 = LABEL_28:;
    goto LABEL_29;
  }

  v51 = v49;
  v130 = v51;
  if (objc_msgSend_useEncryption(self, v52, v53))
  {
    v56 = objc_msgSend_assetKey(v4, v54, v55);

    if (v56)
    {
      v59 = objc_msgSend_assetKey(v4, v57, v58);
      v62 = v46;
      goto LABEL_23;
    }

    v62 = v46;
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v57, *MEMORY[0x277CBC120], 1000, @"expected assetKey for asset %@", v4);
  }

  else
  {
    if (!objc_msgSend_useClearAssetEncryption(self, v54, v55))
    {
      goto LABEL_59;
    }

    v62 = v46;
    v73 = objc_msgSend_clearAssetKey(v4, v71, v72);

    if (v73)
    {
      v59 = objc_msgSend_clearAssetKey(v4, v74, v75);
LABEL_23:
      v128 = v59;
      if (v59)
      {
        v129 = v38;
        v76 = MEMORY[0x277CCACA8];
        objc_msgSend_publicKey(v51, v60, v61);
        v78 = v77 = v51;
        v81 = objc_msgSend_CKBase64URLSafeString(v78, v79, v80);
        v83 = objc_msgSend_stringWithFormat_(v76, v82, @"&pk=%@", v81);

        v133 = v83;
        v85 = objc_msgSend_stringByAppendingString_(v132, v84, v83);

        v135 = 0;
        v136 = 0;
        v132 = v85;
        LODWORD(v78) = CKEncryptWithPublicKey(v77, v128, v85, &v136, &v135);
        v86 = v136;
        v87 = v135;
        v90 = v87;
        if (v78 && v86)
        {
          v66 = objc_msgSend_CKBase64URLSafeString(v86, v88, v89);
          v68 = 0;
        }

        else
        {
          v91 = v87;
          if (!v91)
          {
            v91 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v92, *MEMORY[0x277CBC120], 1, @"Couldn't wrap asset key: no error");
          }

          v68 = v91;
          v66 = 0;
        }

        v38 = v129;
        v67 = v133;
        goto LABEL_38;
      }

LABEL_59:
      __assert_rtn("[CKDDownloadAssetsOperation _tryToFillInTheDerivativeTemplateWithAsset:]", "CKDDownloadAssetsOperation.m", 349, "assetKey && assetKey expected");
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v74, *MEMORY[0x277CBC120], 1000, @"expected clearAssetKey for asset %@", v4);
  }
  v97 = ;
  if (!v97)
  {
    goto LABEL_59;
  }

  v68 = v97;
  v67 = 0;
  v66 = 0;
LABEL_38:

LABEL_39:
  if (!v68)
  {
    goto LABEL_40;
  }

LABEL_54:
  v21 = v68;

LABEL_55:
  v123 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_prepareAssetForDownload:(id)a3
{
  v104 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = objc_msgSend_signature(v5, v6, v7);

  if (v8)
  {
    if (!objc_msgSend_paddedFileSize(v5, v9, v10) || (objc_msgSend_authToken(v5, v11, v12), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v13 = objc_msgSend_container(self, v11, v12);
      v8 = MEMORY[0x277CBC6A8];
      v16 = objc_msgSend_signature(v5, v14, v15);
      LODWORD(v8) = objc_msgSend_isValidV2Signature_(v8, v17, v16);

      v20 = objc_msgSend_options(v13, v18, v19);
      v23 = objc_msgSend_mmcsEncryptionSupport(v20, v21, v22);

      if (v8)
      {
        v26 = objc_msgSend_options(v13, v24, v25);
        v29 = objc_msgSend_mmcsEncryptionSupport(v26, v27, v28) & 2 | v23 & 1;

        if (v29)
        {
          goto LABEL_11;
        }
      }

      else if (v23)
      {
        goto LABEL_11;
      }

      if (objc_msgSend_size(v5, v24, v25) || (objc_msgSend_signature(v5, v30, v31), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend_zeroSizeFileSignature(CKDMMCS, v33, v34), v35 = objc_claimAutoreleasedReturnValue(), isEqualToData = objc_msgSend_isEqualToData_(v32, v36, v35), v35, v32, (isEqualToData & 1) == 0))
      {
        v39 = *MEMORY[0x277CBC120];
        if (v8)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v30, v39, 1000, @"Inconsistent signature type for asset %@, Asset was %@, container does not support", v5, @"V2");
        }

        else
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v30, v39, 1000, @"Inconsistent signature type for asset %@, Asset was %@, container does not support", v5, @"V1");
        }
        v38 = ;
LABEL_16:

        if (!v38)
        {
          goto LABEL_17;
        }

LABEL_21:
        objc_msgSend_shouldDownloadAssetFromTranscoder_(self, v40, v5);
        goto LABEL_22;
      }

LABEL_11:
      v38 = 0;
      goto LABEL_16;
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 1000, @"Missing download token for asset %@", v5);
  }

  else
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 1000, @"Missing signature for asset %@", v5);
  }
  v38 = ;
  if (v38)
  {
    goto LABEL_21;
  }

LABEL_17:
  v42 = objc_msgSend_constructedAssetDownloadURLTemplate(v5, v40, v41);

  if (v42)
  {
    v38 = objc_msgSend__tryToFillInTheDerivativeTemplateWithAsset_(self, v43, v5);
  }

  else
  {
    v38 = 0;
  }

  shouldDownloadAssetFromTranscoder = objc_msgSend_shouldDownloadAssetFromTranscoder_(self, v43, v5);
  v49 = shouldDownloadAssetFromTranscoder;
  if (v38 || (shouldDownloadAssetFromTranscoder & 1) != 0)
  {
    if (!v38)
    {
      goto LABEL_39;
    }

LABEL_22:
    v45 = 0;
    goto LABEL_23;
  }

  if (!objc_msgSend_paddedFileSize(v5, v44, v48))
  {
    v50 = objc_msgSend_constructedAssetDownloadURLTemplate(v5, v44, v48);

    if (!v50)
    {
      v51 = objc_msgSend_data(MEMORY[0x277CBEA90], v44, v48);
      v54 = objc_msgSend_container(self, v52, v53);
      v57 = objc_msgSend_MMCS(v54, v55, v56);

      v60 = objc_msgSend_assetCache(v57, v58, v59);
      v63 = objc_msgSend_signature(v5, v61, v62);
      v100 = v51;
      v101 = 0;
      v45 = objc_msgSend_trackDownloadedData_signature_error_(v60, v64, v51, v63, &v101);
      v38 = v101;

      if (!(v45 | v38))
      {
        v83 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v65, v66);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v83, v84, a2, self, @"CKDDownloadAssetsOperation.m", 442, @"Expected non-nil error for asset %@", v5);

        if (v49)
        {
          goto LABEL_40;
        }

        goto LABEL_44;
      }

      if (v45)
      {
        v67 = objc_msgSend_fileURL(v45, v65, v66);
        objc_msgSend_setFileURL_(v5, v68, v67);

        v71 = objc_msgSend_trackingUUID(v45, v69, v70);
        objc_msgSend_setUUID_(v5, v72, v71);

        objc_msgSend_setWasCached_(v5, v73, 1);
        if (!v38)
        {
          v75 = objc_msgSend_fileURL(v5, v44, v74);
          objc_msgSend_setDownloaded_(v5, v76, v75 != 0);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v77 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v103 = v5;
            _os_log_debug_impl(&dword_22506F000, v77, OS_LOG_TYPE_DEBUG, "Returning asset from cache: %@", buf, 0xCu);
          }

          objc_msgSend__didPrepareAsset_(self, v78, v5);
          objc_msgSend__didMakeProgressForAsset_progress_(self, v79, v5, 1.0);
          objc_msgSend__didDownloadAsset_error_(self, v80, v5, 0);
          goto LABEL_24;
        }

LABEL_23:
        objc_msgSend__didDownloadAsset_error_(self, v44, v5, v38);

        goto LABEL_24;
      }

      if (v38)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_39:
  if (v49)
  {
LABEL_40:
    v81 = objc_msgSend_assetsToDownloadFromTranscoder(self, v44, v48);
    objc_msgSend_addObject_(v81, v82, v5);

    v45 = 0;
    goto LABEL_24;
  }

LABEL_44:
  v85 = [CKDMMCSItem alloc];
  v45 = objc_msgSend_initWithAsset_(v85, v86, v5);
  v89 = objc_msgSend_paddedFileSize(v5, v87, v88);
  objc_msgSend_setPaddedFileSize_(v45, v90, v89);
  if ((v8 & 1) == 0)
  {
    v93 = objc_msgSend_size(v5, v91, v92);
    objc_msgSend_setFileSize_(v45, v94, v93);
  }

  v95 = objc_msgSend_operationInfo(self, v91, v92);
  v98 = objc_msgSend_usesAssetDownloadStagingManager(v95, v96, v97);

  if (v98)
  {
    objc_msgSend_setUsesAssetDownloadStagingManager_(v45, v99, 1);
  }

  objc_msgSend_addObject_(self->_prepareMMCSItemsToDownload, v99, v45);
LABEL_24:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)_preparePackageForDataDownload:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_assets(v4, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);
  v13 = objc_msgSend_initWithCapacity_(v5, v12, v11);

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v16 = objc_msgSend_assets(v4, v14, v15);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v57, v61, 16);
  v19 = 0x277CBC000uLL;
  v20 = MEMORY[0x277CBC120];
  if (v18)
  {
    v56 = self;
    v21 = 0;
    v22 = *v58;
    while (2)
    {
      v23 = 0;
      v24 = v21;
      v21 += v18;
      do
      {
        if (*v58 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v25 = *(*(&v57 + 1) + 8 * v23);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v19 = 0x277CBC000uLL;
          v20 = MEMORY[0x277CBC120];
          v18 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v26, *MEMORY[0x277CBC120], 1000, @"Invalid package manifest for package %@", v4);
          self = v56;
          goto LABEL_14;
        }

        if (v24)
        {
          objc_msgSend_addObject_(v13, v26, v25);
        }

        ++v24;
        ++v23;
      }

      while (v18 != v23);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v26, &v57, v61, 16);
      if (v18)
      {
        continue;
      }

      break;
    }

    v24 = v21;
    self = v56;
    v19 = 0x277CBC000;
    v20 = MEMORY[0x277CBC120];
  }

  else
  {
    v24 = 0;
  }

LABEL_14:

  if (!v18 && !v24)
  {
    v18 = objc_msgSend_errorWithDomain_code_format_(*(v19 + 1376), v27, *v20, 1000, @"No package manifest found for package %@", v4);
  }

  if (v18)
  {
    objc_msgSend__didDownloadAsset_error_(self, v27, v4, v18);
  }

  else
  {
    v29 = objc_msgSend_assets(v4, v27, v28);
    v32 = objc_msgSend_firstObject(v29, v30, v31);

    v33 = [CKDMMCSItem alloc];
    v35 = objc_msgSend_initWithAsset_(v33, v34, v32);
    v38 = objc_msgSend_size(v32, v36, v37);
    objc_msgSend_setFileSize_(v35, v39, v38);
    objc_msgSend_setPackage_(v35, v40, v4);
    objc_msgSend_setIsPackageManifest_(v35, v41, 1);
    objc_msgSend_addObject_(self->_prepareMMCSItemsToDownload, v42, v35);
    v43 = [CKPackageDownloadTask alloc];
    v46 = objc_msgSend_downloadProgressBlock(self, v44, v45);
    v48 = objc_msgSend_initWithPackage_trackProgress_(v43, v47, v4, v46 != 0);

    objc_msgSend_setManifestAsset_(v48, v49, v32);
    objc_msgSend_setSectionAssets_(v48, v50, v13);
    v53 = objc_msgSend_downloadTasksByPackages(self, v51, v52);
    objc_msgSend_setObject_forKey_(v53, v54, v48, v4);
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (void)_preparePackageForMetadataDownload:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = objc_msgSend_assets(a3, a2, a3, 0);
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

        objc_msgSend__prepareAssetForDownload_(self, v7, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v12, v16, 16);
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_preparePackageForDownload:(id)a3
{
  v7 = a3;
  if (sub_2251A88B0(self, v4, v5))
  {
    objc_msgSend__preparePackageForMetadataDownload_(self, v6, v7);
  }

  else
  {
    objc_msgSend__preparePackageForDataDownload_(self, v6, v7);
  }
}

- (BOOL)_prepareForDownload
{
  v205 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v162 = v3;
    v165 = objc_msgSend_assetsToDownload(self, v163, v164);
    v168 = objc_msgSend_assetsToDownloadInMemory(self, v166, v167);
    v171 = objc_msgSend_assetURLInfosToFillOut(self, v169, v170);
    v174 = objc_msgSend_operationID(self, v172, v173);
    *buf = 138413058;
    v198 = v165;
    v199 = 2112;
    v200 = v168;
    v201 = 2112;
    v202 = v171;
    v203 = 2114;
    v204 = v174;
    _os_log_debug_impl(&dword_22506F000, v162, OS_LOG_TYPE_DEBUG, "Downloading assets %@, in-memory assets %@, and publish assets %@ for operation %{public}@", buf, 0x2Au);
  }

  os_unfair_lock_lock(&self->_prepareLock);
  v183 = objc_msgSend_container(self, v4, v5);
  v8 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v6, v7);
  objc_msgSend_setDownloadTasksByPackages_(self, v9, v8);

  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_assetsToDownload(self, v11, v12);
  v16 = objc_msgSend_count(v13, v14, v15);
  v18 = objc_msgSend_initWithCapacity_(v10, v17, v16);
  prepareMMCSItemsToDownload = self->_prepareMMCSItemsToDownload;
  self->_prepareMMCSItemsToDownload = v18;

  v20 = objc_alloc(MEMORY[0x277CBEB18]);
  v23 = objc_msgSend_assetsToDownloadInMemory(self, v21, v22);
  v26 = objc_msgSend_count(v23, v24, v25);
  v28 = objc_msgSend_initWithCapacity_(v20, v27, v26);
  prepareMMCSItemsToDownloadInMemory = self->_prepareMMCSItemsToDownloadInMemory;
  self->_prepareMMCSItemsToDownloadInMemory = v28;

  v30 = objc_alloc(MEMORY[0x277CBEB18]);
  v33 = objc_msgSend_assetsToDownload(self, v31, v32);
  v36 = objc_msgSend_count(v33, v34, v35);
  v180 = objc_msgSend_initWithCapacity_(v30, v37, v36);

  v38 = objc_alloc(MEMORY[0x277CBEB18]);
  v41 = objc_msgSend_assetsToDownloadInMemory(self, v39, v40);
  v44 = objc_msgSend_count(v41, v42, v43);
  v181 = objc_msgSend_initWithCapacity_(v38, v45, v44);

  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v48 = objc_msgSend_assetsToDownload(self, v46, v47);
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v189, v196, 16);
  if (v51)
  {
    v52 = *v190;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v190 != v52)
        {
          objc_enumerationMutation(v48);
        }

        v54 = *(*(&v189 + 1) + 8 * i);
        v55 = objc_msgSend__prepareForDownloadWithOperation_(v54, v50, self);
        objc_msgSend__didPrepareAsset_(self, v56, v54);
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v50, &v189, v196, 16);
    }

    while (v51);
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v59 = objc_msgSend_assetsToDownloadInMemory(self, v57, v58);
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v185, v195, 16);
  if (v61)
  {
    v62 = *v186;
    v182 = *MEMORY[0x277CBC120];
    obj = v59;
    do
    {
      v63 = 0;
      do
      {
        if (*v186 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v64 = *(*(&v185 + 1) + 8 * v63);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v95 = 0;
          goto LABEL_47;
        }

        v66 = v64;
        v69 = objc_msgSend_signature(v66, v67, v68);
        v70 = v69 == 0;

        if (v70)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v71, v182, 1000, @"Missing signature for asset %@", v66);
        }

        else if (objc_msgSend_paddedFileSize(v66, v71, v72) && (objc_msgSend_authToken(v66, v73, v74), v75 = objc_claimAutoreleasedReturnValue(), v76 = v75 == 0, v75, v76))
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v73, v182, 1000, @"Missing download token for asset %@", v66);
        }

        else
        {
          v77 = MEMORY[0x277CBC6A8];
          v78 = objc_msgSend_signature(v66, v73, v74);
          isValidV2Signature = objc_msgSend_isValidV2Signature_(v77, v79, v78);

          if (isValidV2Signature)
          {
            v83 = objc_msgSend_options(v183, v81, v82);
            v86 = objc_msgSend_mmcsEncryptionSupport(v83, v84, v85);

            v89 = objc_msgSend_options(v183, v87, v88);
            v92 = objc_msgSend_mmcsEncryptionSupport(v89, v90, v91);

            if ((v92 >> 1) & 1 | v86 & 1)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v96 = objc_msgSend_options(v183, v81, v82);
            v99 = (objc_msgSend_mmcsEncryptionSupport(v96, v97, v98) & 1) == 0;

            if (!v99)
            {
              goto LABEL_34;
            }
          }

          if (!objc_msgSend_size(v66, v93, v94))
          {
            v101 = objc_msgSend_signature(v66, v93, v100);
            v104 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v102, v103);
            isEqualToData = objc_msgSend_isEqualToData_(v101, v105, v104);

            if (isEqualToData)
            {
LABEL_34:
              v108 = objc_msgSend_constructedAssetDownloadURLTemplate(v66, v93, v94);
              v109 = v108 == 0;

              if (v109)
              {
                v107 = 0;
              }

              else
              {
                v107 = objc_msgSend__tryToFillInTheDerivativeTemplateWithAsset_(self, v93, v66);
              }

              goto LABEL_37;
            }
          }

          if (isValidV2Signature)
          {
            objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v93, v182, 1000, @"Inconsistent signature type for asset %@, Asset was %@, container does not support", v66, @"V2");
          }

          else
          {
            objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v93, v182, 1000, @"Inconsistent signature type for asset %@, Asset was %@, container does not support", v66, @"V1");
          }
        }
        v107 = ;
        if (!v107)
        {
          goto LABEL_34;
        }

LABEL_37:
        shouldDownloadAssetFromTranscoder = objc_msgSend_shouldDownloadAssetFromTranscoder_(self, v93, v66);
        if ((v107 != 0) | shouldDownloadAssetFromTranscoder & 1)
        {
          if (v107)
          {
            objc_msgSend__didDownloadAsset_error_(self, v110, v66, v107);
            v95 = 0;
LABEL_40:

            goto LABEL_48;
          }
        }

        else if (!objc_msgSend_paddedFileSize(v66, v110, v111))
        {
          v114 = objc_msgSend_constructedAssetDownloadURLTemplate(v66, v110, v113);
          v115 = v114 == 0;

          if (v115)
          {
            v95 = objc_alloc_init(CKDMMCSItem);
            if (!v95)
            {
              v137 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v124, v125);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v137, v138, a2, self, @"CKDDownloadAssetsOperation.m", 586, @"Expected non-nil asset");
            }

            objc_msgSend_setPaddedFileSize_(v95, v124, 0);
            objc_msgSend_setFileSize_(v95, v126, 0);
            objc_msgSend_setWasCached_(v66, v127, 1);
            objc_msgSend_setDownloaded_(v66, v128, 1);
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v129 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v198 = v66;
              _os_log_debug_impl(&dword_22506F000, v129, OS_LOG_TYPE_DEBUG, "Returning asset from cache: %@", buf, 0xCu);
            }

            objc_msgSend__didPrepareAsset_(self, v130, v66);
            v193[0] = @"Data";
            v131 = objc_opt_new();
            v193[1] = @"Offset";
            v194[0] = v131;
            v194[1] = &unk_2838C8418;
            v133 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v132, v194, v193, 2);
            objc_msgSend__didCommandForAsset_command_(self, v134, v66, v133);

            objc_msgSend__didMakeProgressForAsset_progress_(self, v135, v66, 1.0);
            objc_msgSend__didDownloadAsset_error_(self, v136, v66, 0);
            goto LABEL_40;
          }
        }

        if (shouldDownloadAssetFromTranscoder)
        {
          objc_msgSend_addObject_(v181, v110, v66);
          v95 = 0;
        }

        else
        {
          v116 = [CKDMMCSItem alloc];
          v95 = objc_msgSend_initWithAsset_(v116, v117, v66);
          v120 = objc_msgSend_size(v66, v118, v119);
          objc_msgSend_setFileSize_(v95, v121, v120);
          objc_msgSend_addObject_(self->_prepareMMCSItemsToDownloadInMemory, v122, v95);
        }

LABEL_47:
        objc_msgSend__didPrepareAsset_(self, v65, v64);
LABEL_48:

        ++v63;
      }

      while (v61 != v63);
      v59 = obj;
      v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v123, &v185, v195, 16);
      v61 = v139;
    }

    while (v139);
  }

  if (objc_msgSend_count(self->_prepareMMCSItemsToDownload, v140, v141) || objc_msgSend_count(self->_prepareMMCSItemsToDownloadInMemory, v142, v143))
  {
    goto LABEL_63;
  }

  v144 = objc_msgSend_assetURLInfosToFillOut(self, v142, v143);
  if (objc_msgSend_count(v144, v145, v146) || objc_msgSend_count(v180, v147, v148))
  {

LABEL_63:
    v151 = objc_msgSend_copy(self->_prepareMMCSItemsToDownload, v142, v143);
    objc_msgSend_setMMCSItemsToDownload_(self, v152, v151);

    v155 = objc_msgSend_copy(self->_prepareMMCSItemsToDownloadInMemory, v153, v154);
    objc_msgSend_setMMCSItemsToDownloadInMemory_(self, v156, v155);
    v157 = 1;
    goto LABEL_64;
  }

  v175 = objc_msgSend_count(v181, v149, v150) == 0;

  if (!v175)
  {
    goto LABEL_63;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v155 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
  {
    v178 = objc_msgSend_operationID(self, v176, v177);
    *buf = 138543362;
    v198 = v178;
    _os_log_debug_impl(&dword_22506F000, v155, OS_LOG_TYPE_DEBUG, "No assets to download for %{public}@", buf, 0xCu);
  }

  v157 = 0;
LABEL_64:

  v158 = self->_prepareMMCSItemsToDownload;
  self->_prepareMMCSItemsToDownload = 0;

  v159 = self->_prepareMMCSItemsToDownloadInMemory;
  self->_prepareMMCSItemsToDownloadInMemory = 0;

  os_unfair_lock_unlock(&self->_prepareLock);
  v160 = *MEMORY[0x277D85DE8];
  return v157;
}

- (void)_didDownloadMMCSItem:(id)a3 inMemory:(BOOL)a4 error:(id)a5
{
  v104[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v12 = objc_msgSend_package(v8, v10, v11);
  v15 = objc_msgSend_asset(v8, v13, v14);
  v18 = objc_msgSend_error(v8, v16, v17);
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v9;
  }

  v21 = v20;

  if (v21)
  {
    v104[0] = v8;
    v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v104, 1);
    objc_msgSend__removeUntrackedMMCSItems_(self, v25, v24);

    if (v12)
    {
      v28 = objc_msgSend_downloadTasksByPackages(self, v26, v27);
      v30 = objc_msgSend_objectForKey_(v28, v29, v12);

      objc_msgSend_setError_(v30, v31, v21);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v84 = v32;
        v87 = objc_msgSend_operationID(self, v85, v86);
        *buf = 138413058;
        v97 = v8;
        v98 = 2112;
        v99 = v12;
        v100 = 2114;
        v101 = v87;
        v102 = 2112;
        v103 = v21;
        _os_log_debug_impl(&dword_22506F000, v84, OS_LOG_TYPE_DEBUG, "Failed to download MMCS item %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);
      }

      objc_msgSend__didDownloadAsset_error_(self, v33, v12, v21);
      v36 = objc_msgSend_group(v30, v34, v35);
      dispatch_group_leave(v36);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v80 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v88 = v80;
        v91 = objc_msgSend_operationID(self, v89, v90);
        *buf = 138412802;
        v97 = v8;
        v98 = 2114;
        v99 = v91;
        v100 = 2112;
        v101 = v21;
        _os_log_debug_impl(&dword_22506F000, v88, OS_LOG_TYPE_DEBUG, "Failed to download MMCS item %@ for operation %{public}@: %@", buf, 0x20u);
      }

      objc_msgSend__didDownloadAsset_error_(self, v81, v15, v21);
    }
  }

  else
  {
    if (!v15)
    {
      v92 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v22, v23);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v92, v93, a2, self, @"CKDDownloadAssetsOperation.m", 643, @"Expected non-nil asset for item %@", v8);
    }

    v37 = objc_msgSend_fileSize(v8, v22, v23);
    objc_msgSend_setSize_(v15, v38, v37);
    v41 = objc_msgSend_paddedFileSize(v8, v39, v40);
    objc_msgSend_setPaddedFileSize_(v15, v42, v41);
    v45 = objc_msgSend_verificationKey(v8, v43, v44);
    objc_msgSend_setVerificationKey_(v15, v46, v45);

    if (sub_2251A88B0(self, v47, v48))
    {
      v51 = objc_msgSend_itemID(v8, v49, v50);
      objc_msgSend_setReReferenceItemID_(v15, v52, v51);
    }

    if (!v8)
    {
      v94 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v49, v50);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v94, v95, a2, self, @"CKDDownloadAssetsOperation.m", 668, @"Expected non-nil MMCS item");
    }

    v53 = objc_msgSend_trackingUUID(v8, v49, v50);
    objc_msgSend_setUUID_(v15, v54, v53);

    if (objc_msgSend_downloadLooksOkay(v8, v55, v56))
    {
      objc_msgSend_setDownloaded_(v15, v57, 1);
      v61 = objc_msgSend_fileURL(v8, v59, v60);
      objc_msgSend_setFileURL_(v15, v62, v61);

      v65 = objc_msgSend_fileHandle(v8, v63, v64);
      objc_msgSend_setFileHandle_(v15, v66, v65);
    }

    if (v12)
    {
      v67 = objc_msgSend_downloadTasksByPackages(self, v57, v58);
      v69 = objc_msgSend_objectForKey_(v67, v68, v12);

      v72 = objc_msgSend_progressTracker(v69, v70, v71);
      objc_msgSend_updateProgressWithItem_progress_(v72, v73, v15, 1.0);
      v75 = v74;

      objc_msgSend__didMakeProgressForAsset_progress_(self, v76, v12, v75);
      v79 = objc_msgSend_group(v69, v77, v78);
      dispatch_group_leave(v79);
    }

    else
    {
      objc_msgSend__didMakeProgressForAsset_progress_(self, v57, v15, 1.0);
      objc_msgSend__didDownloadAsset_error_(self, v82, v15, 0);
    }
  }

  v83 = *MEMORY[0x277D85DE8];
}

- (void)_collectMetricsFromMMCSOperationMetrics:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2251A99AC;
    v8[3] = &unk_2785487F8;
    v9 = v4;
    objc_msgSend_updateMMCSMetrics_(self, v7, v8);
  }
}

- (void)_collectMetricsFromCompletedItemGroup:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_metrics(a3, a2, a3);
  v6 = v4;
  if (v4)
  {
    v10[0] = v4;
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v10, 1);
    objc_msgSend__collectMetricsFromMMCSOperationMetrics_(self, v8, v7);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_collectMetricsFromCompletedItemGroupSet:(id)a3
{
  v4 = objc_msgSend_itemsGroups(a3, a2, a3);
  v7 = objc_msgSend_CKCompactMap_(v4, v5, &unk_28385D3A0);

  objc_msgSend__collectMetricsFromMMCSOperationMetrics_(self, v6, v7);
}

- (void)_didCommandForMMCSItem:(id)a3 command:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_asset(a3, v7, v8);
  objc_msgSend__didCommandForAsset_command_(self, v9, v10, v6);
}

- (void)_didDownloadMMCSSectionItem:(id)a3 task:(id)a4 error:(id)a5
{
  v145 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14 = objc_msgSend_mmcs(self, v12, v13);
  v17 = objc_msgSend_container(self, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_assetCache(v14, v18, v19);

    if (!v20)
    {
      v116 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
      v119 = objc_msgSend_container(self, v117, v118);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v116, v120, a2, self, @"CKDDownloadAssetsOperation.m", 747, @"Expected non-nil assetCache for %@", v119);
    }
  }

  v129 = objc_msgSend_package(v10, v18, v19);
  v23 = objc_msgSend_error(v9, v21, v22);
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v11;
  }

  v26 = v25;

  if (v26)
  {
LABEL_8:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v108 = v29;
      v111 = objc_msgSend_operationID(self, v109, v110);
      *buf = 138413058;
      v137 = v9;
      v138 = 2112;
      v139 = v129;
      v140 = 2114;
      v141 = v111;
      v142 = 2112;
      v143 = v26;
      _os_log_debug_impl(&dword_22506F000, v108, OS_LOG_TYPE_DEBUG, "Failed to download MMCS section item %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);
    }

    objc_msgSend_setError_(v10, v30, v26);
    v33 = objc_msgSend_sectionItems(v9, v31, v32);
    objc_msgSend__removeUntrackedMMCSItems_(self, v34, v33);

    goto LABEL_48;
  }

  if (sub_2251A88B0(self, v27, v28))
  {
    goto LABEL_43;
  }

  v125 = a2;
  v126 = self;
  v121 = v14;
  v122 = v11;
  v123 = v10;
  v35 = objc_alloc(MEMORY[0x277CBEB18]);
  v37 = objc_msgSend_initWithCapacity_(v35, v36, 100);
  v38 = objc_alloc(MEMORY[0x277CBEB18]);
  v40 = objc_msgSend_initWithCapacity_(v38, v39, 100);
  v124 = v9;
  v43 = objc_msgSend_sectionItems(v9, v41, v42);
  v128 = objc_msgSend_objectEnumerator(v43, v44, v45);

  v48 = 0;
  v127 = v37;
  while (1)
  {
    while (1)
    {
      v49 = v48;
      v48 = objc_msgSend_nextObject(v128, v46, v47);

      if (!v48)
      {
LABEL_25:
        v26 = 0;
        goto LABEL_26;
      }

      v50 = objc_msgSend_error(v48, v46, v47);

      if (v50)
      {
        break;
      }

      v54 = objc_msgSend_fileURL(v48, v51, v52);
      if (!v54)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v55 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v137 = v48;
          _os_log_debug_impl(&dword_22506F000, v55, OS_LOG_TYPE_DEBUG, "Expected non-nil fileURL for %@", buf, 0xCu);
        }

        v58 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v56, v57);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v58, v59, v125, v126, @"CKDDownloadAssetsOperation.m", 771, @"Expected non-nil fileURL for %@", v48);
      }

      objc_msgSend_addObject_(v40, v53, v54);
      v60 = MEMORY[0x277CCABB0];
      v63 = objc_msgSend_packageIndex(v48, v61, v62);
      v65 = objc_msgSend_numberWithUnsignedLongLong_(v60, v64, v63);
      objc_msgSend_addObject_(v37, v66, v65);

      v69 = objc_msgSend_count(v37, v67, v68);
      if (v69 >= 0x64)
      {
        goto LABEL_25;
      }
    }

    v26 = objc_msgSend_error(v48, v51, v52);
LABEL_26:
    v70 = objc_msgSend_count(v37, v46, v47);
    if (v26 || !v70)
    {
      break;
    }

    v130 = v70;
    v131 = v48;
    v72 = objc_msgSend_updateItemsAtIndexes_fileURLs_(v129, v71, v37, v40);
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v73 = v37;
    v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v132, v144, 16);
    v77 = MEMORY[0x277CBC880];
    if (v75)
    {
      v78 = v75;
      v79 = 0;
      v80 = *v133;
      do
      {
        v81 = 0;
        do
        {
          if (*v133 != v80)
          {
            objc_enumerationMutation(v73);
          }

          v82 = *(*(&v132 + 1) + 8 * v81);
          v83 = objc_msgSend_objectAtIndex_(v40, v76, v79);
          if (*v77 != -1)
          {
            dispatch_once(v77, *MEMORY[0x277CBC878]);
          }

          v84 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v85 = v84;
            v88 = objc_msgSend_unsignedIntegerValue(v82, v86, v87);
            v91 = objc_msgSend_path(v83, v89, v90);
            *buf = 134218242;
            v137 = v88;
            v138 = 2114;
            v139 = v91;
            _os_log_debug_impl(&dword_22506F000, v85, OS_LOG_TYPE_DEBUG, "Updated package item with index:%lu and path:%{public}@", buf, 0x16u);

            v77 = MEMORY[0x277CBC880];
          }

          ++v81;
          ++v79;
        }

        while (v78 != v81);
        v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v76, &v132, v144, 16);
      }

      while (v78);
    }

    objc_msgSend_removeAllObjects(v40, v92, v93);
    objc_msgSend_removeAllObjects(v73, v94, v95);

    v48 = 0;
    v26 = 0;
    v37 = v127;
    if (v130 <= 0x63)
    {
      goto LABEL_42;
    }
  }

LABEL_42:
  v10 = v123;
  v9 = v124;
  v14 = v121;
  v11 = v122;
  self = v126;
  if (v26)
  {
    goto LABEL_8;
  }

LABEL_43:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v96 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v112 = v96;
    v115 = objc_msgSend_operationID(self, v113, v114);
    *buf = 138413058;
    v137 = v9;
    v138 = 2112;
    v139 = v129;
    v140 = 2114;
    v141 = v115;
    v142 = 2112;
    v143 = 0;
    _os_log_debug_impl(&dword_22506F000, v112, OS_LOG_TYPE_DEBUG, "Downloaded MMCS section item %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);
  }

  v26 = objc_msgSend_asset(v9, v97, v98);
  objc_msgSend_setDownloaded_(v26, v99, 1);
  v102 = objc_msgSend_progressTracker(v10, v100, v101);
  objc_msgSend_updateProgressWithItem_progress_(v102, v103, v26, 1.0);
  v105 = v104;

  objc_msgSend__didMakeProgressForAsset_progress_(self, v106, v129, v105);
LABEL_48:

  v107 = *MEMORY[0x277D85DE8];
}

- (void)_didDownloadMMCSSectionItems:(id)a3 task:(id)a4 error:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v26, v34, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v8);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        if ((objc_msgSend_finished(v18, v13, v14) & 1) == 0)
        {
          objc_msgSend_setFinished_(v18, v13, 1);
          objc_msgSend__didDownloadMMCSSectionItem_task_error_(self, v19, v18, v9, v10);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v13, &v26, v34, 16);
    }

    while (v15);
  }

  if (v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v22 = v20;
      v25 = objc_msgSend_count(v8, v23, v24);
      *buf = 134218242;
      v31 = v25;
      v32 = 2112;
      v33 = v10;
      _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Failed to download %lu MMCS section items: %@", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_didMakeProgressForMMCSSectionItem:(id)a3 task:(id)a4
{
  v30 = a3;
  v6 = a4;
  if (objc_msgSend_finished(v30, v7, v8))
  {
    v11 = objc_msgSend_error(v30, v9, v10);
    objc_msgSend__didDownloadMMCSSectionItem_task_error_(self, v12, v30, v6, v11);
LABEL_6:

    goto LABEL_7;
  }

  objc_msgSend_progress(v30, v9, v10);
  v14 = v13;
  v17 = objc_msgSend_error(v30, v15, v16);

  if (!v17 && v14 >= 0.0)
  {
    v11 = objc_msgSend_package(v30, v18, v19);
    v22 = objc_msgSend_progressTracker(v6, v20, v21);
    v25 = objc_msgSend_asset(v30, v23, v24);
    objc_msgSend_updateProgressWithItem_progress_(v22, v26, v25, v14);
    v28 = v27;

    objc_msgSend__didMakeProgressForAsset_progress_(self, v29, v11, v28);
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_downloadPackageSectionAtIndex:(int64_t)a3 task:(id)a4 completionBlock:(id)a5
{
  v177 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v12 = a5;
  if (a3 < 0)
  {
    v114 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v114, v115, a2, self, @"CKDDownloadAssetsOperation.m", 840, @"Expected a valid sectionIndex: %ld", a3);
  }

  if (!objc_msgSend_isCancelled(self, v10, v11))
  {
    v125 = objc_msgSend_mmcs(self, v13, v14);
    v19 = objc_msgSend_package(v9, v17, v18);
    v126 = objc_msgSend_downloadItemIndices(v19, v20, v21);
    v162 = 0;
    v163 = &v162;
    v164 = 0x3032000000;
    v165 = sub_225073FD0;
    v166 = sub_225073574;
    v167 = 0;
    v161 = 0;
    v23 = objc_msgSend_sectionAtIndex_error_(v19, v22, a3, &v161);
    objc_storeStrong(&v167, v161);
    if (!v23)
    {
      v32 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 1000, @"Couldn't find section at index %ld for package %@, error: %@", a3, v19, v163[5]);
      objc_msgSend_setError_(v9, v33, v32);

      if (v12)
      {
        v12[2](v12);
      }

      goto LABEL_24;
    }

    v155 = 0;
    v156 = &v155;
    v157 = 0x3032000000;
    v158 = sub_225073FD0;
    v159 = sub_225073574;
    v160 = objc_opt_new();
    v149 = 0;
    v150 = &v149;
    v151 = 0x3032000000;
    v152 = sub_225073FD0;
    v153 = sub_225073574;
    v154 = objc_opt_new();
    v143[0] = MEMORY[0x277D85DD0];
    v143[1] = 3221225472;
    v143[2] = sub_2251AB4EC;
    v143[3] = &unk_278548840;
    v25 = v19;
    v144 = v25;
    v146 = &v162;
    v26 = v23;
    v145 = v26;
    v147 = &v155;
    v148 = &v149;
    objc_msgSend_enumerateIndexesUsingBlock_(v126, v27, v143);
    v29 = (v163 + 5);
    if (v163[5])
    {
      v30 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v28, *MEMORY[0x277CBC120], 1000, @"Error creating download package items: %@", v163[5]);
      objc_msgSend_setError_(v9, v31, v30);

      if (v12)
      {
        v12[2](v12);
      }

      goto LABEL_23;
    }

    obj = 0;
    v122 = objc_msgSend_size_(v26, v28, &obj);
    objc_storeStrong(v29, obj);
    if (v163[5])
    {
      v36 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v34, *MEMORY[0x277CBC120], 1000, @"Error determining section size: %@", v163[5]);
      objc_msgSend_setError_(v9, v37, v36);

      if (v12)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    if (v122)
    {
      v120 = objc_msgSend_sectionIndex(v26, v34, v35);
      if (v120 == -1 || (objc_msgSend_assets(v25, v38, v39), v40 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend_count(v40, v41, v42) > (v120 + 1), v40, !v43))
      {
        v52 = MEMORY[0x277CBC560];
        v53 = objc_msgSend_assets(v25, v38, v39);
        v56 = objc_msgSend_count(v53, v54, v55);
        v58 = objc_msgSend_errorWithDomain_code_format_(v52, v57, *MEMORY[0x277CBC120], 1000, @"Invalid section index %llu(%lu) for package %@", v120, v56, v25);
        objc_msgSend_setError_(v9, v59, v58);

        if (v12)
        {
LABEL_20:
          v12[2](v12);
        }

LABEL_21:
        v60 = 0;
LABEL_22:

LABEL_23:
        _Block_object_dispose(&v149, 8);

        _Block_object_dispose(&v155, 8);
LABEL_24:

        _Block_object_dispose(&v162, 8);
        goto LABEL_25;
      }

      v44 = objc_msgSend_assets(v25, v38, v39);
      v46 = objc_msgSend_objectAtIndex_(v44, v45, v120 + 1);

      v47 = [CKDMMCSItem alloc];
      v49 = objc_msgSend_initWithAsset_(v47, v48, v46);
      objc_msgSend_setPackage_(v49, v50, v25);
      v121 = v49;
    }

    else
    {
      v62 = [CKDMMCSItem alloc];
      v121 = objc_msgSend_initWithPackage_(v62, v63, v25);
    }

    objc_msgSend_setSectionItems_(v121, v51, v156[5]);
    objc_msgSend_setFileSize_(v121, v64, v122);
    objc_msgSend_setPaddedFileSize_(v121, v65, v122);
    if (objc_msgSend_fileSize(v121, v66, v67) && objc_msgSend_count(v156[5], v68, v69))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v70 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        v112 = v156[5];
        v113 = objc_msgSend_operationID(self, v71, v72);
        *location = 138413314;
        *&location[4] = v121;
        v169 = 2048;
        v170 = a3;
        v171 = 2112;
        v172 = v112;
        v173 = 2112;
        v174 = v25;
        v175 = 2114;
        v176 = v113;
        _os_log_debug_impl(&dword_22506F000, v70, OS_LOG_TYPE_DEBUG, "Downloading MMCS section item %@ at index %lu with MMCS items %@ for package %@ and operation %{public}@", location, 0x34u);
      }

      v123 = objc_alloc(MEMORY[0x277CCACA8]);
      v75 = objc_msgSend_recordKey(v25, v73, v74);
      v78 = objc_msgSend_record(v25, v76, v77);
      v81 = objc_msgSend_recordID(v78, v79, v80);
      v84 = objc_msgSend_recordName(v81, v82, v83);
      v124 = objc_msgSend_initWithFormat_(v123, v85, @"down|%@|%@|section:%lu", v75, v84, a3);

      v86 = [CKDProgressTracker alloc];
      v88 = objc_msgSend_initWithTrackingID_(v86, v87, v124);
      objc_msgSend_startTrackingItems_(v88, v89, v156[5]);
      v90 = dispatch_group_create();
      dispatch_group_enter(v90);
      objc_initWeak(location, self);
      v119 = objc_msgSend_MMCSRequestOptions(v9, v91, v92);
      v137[0] = MEMORY[0x277D85DD0];
      v137[1] = 3221225472;
      v137[2] = sub_2251AB7B4;
      v137[3] = &unk_278548868;
      v118 = v88;
      v138 = v118;
      v139 = v121;
      objc_copyWeak(&v141, location);
      v140 = v9;
      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = sub_2251AB860;
      v131[3] = &unk_2785488B8;
      v131[4] = self;
      v136 = &v149;
      v132 = v125;
      v133 = v139;
      v93 = v140;
      v134 = v93;
      v94 = v90;
      v135 = v94;
      v121 = v133;
      v96 = objc_msgSend_getSectionItem_operation_options_progress_completionHandler_(v132, v95, v133, self, v119, v137, v131);

      v99 = objc_msgSend_cancelTokens(v93, v97, v98);
      objc_msgSend_addCancelToken_withOperation_(v99, v100, v96, self);

      objc_msgSend_qualityOfService(self, v101, v102);
      v103 = CKGetGlobalQueue();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2251ABA9C;
      block[3] = &unk_278546C30;
      v128 = v93;
      v129 = v96;
      v130 = v12;
      v104 = v96;
      dispatch_group_notify(v94, v103, block);

      objc_destroyWeak(&v141);
      objc_destroyWeak(location);
    }

    else
    {
      if (objc_msgSend_count(v156[5], v68, v69))
      {
        v116 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v105, v106);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v116, v117, a2, self, @"CKDDownloadAssetsOperation.m", 927, @"Expected 0 non-empty items in the empty section %@", v121);
      }

      v107 = objc_msgSend_assetCache(v125, v105, v106);
      v109 = objc_msgSend_trackCachedButNotRegisteredMMCSItems_error_(v107, v108, v150[5], 0);

      objc_msgSend_setSectionItems_(v121, v110, v150[5]);
      objc_msgSend__didDownloadMMCSSectionItem_task_error_(self, v111, v121, v9, 0);
      if (v12)
      {
        v12[2](v12);
        v60 = v121;
        goto LABEL_22;
      }
    }

    v60 = v121;
    goto LABEL_22;
  }

  v15 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 1, @"Operation was cancelled");
  objc_msgSend_setError_(v9, v16, v15);

  if (v12)
  {
    v12[2](v12);
  }

LABEL_25:

  v61 = *MEMORY[0x277D85DE8];
}

- (void)_downloadPackageSectionsWithSectionEnumerator:(id)a3 task:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_error(v9, v11, v12);

  if (v13 || (objc_msgSend_nextObject(v8, v14, v15), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (v10)
    {
      v10[2](v10);
    }
  }

  else
  {
    v19 = v16;
    v20 = objc_msgSend_integerValue(v16, v17, v18);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2251ABC50;
    v22[3] = &unk_2785488E0;
    v22[4] = self;
    v23 = v8;
    v24 = v9;
    v25 = v10;
    objc_msgSend__downloadPackageSectionAtIndex_task_completionBlock_(self, v21, v20, v24, v22);
  }
}

- (void)_downloadPackageSectionsWithTask:(id)a3 completionBlock:(id)a4
{
  v114 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_isCancelled(self, v8, v9))
  {
    v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 1, @"Operation was cancelled");
    objc_msgSend_setError_(v6, v13, v12);

    if (!v7)
    {
      goto LABEL_33;
    }

    goto LABEL_6;
  }

  v14 = objc_msgSend_error(v6, v10, v11);

  if (v14)
  {
    if (v7)
    {
LABEL_6:
      v7[2](v7);
    }
  }

  else
  {
    v99 = 0;
    v100 = &v99;
    v101 = 0x3032000000;
    v102 = sub_225073FD0;
    v103 = sub_225073574;
    v104 = 0;
    v17 = objc_msgSend_package(v6, v15, v16);
    v20 = objc_msgSend_manifestAsset(v6, v18, v19);
    v23 = objc_msgSend_fileURL(v20, v21, v22);
    v26 = objc_msgSend_path(v23, v24, v25);

    if (v26)
    {
      v28 = (v100 + 5);
      obj = v100[5];
      v29 = objc_msgSend_readContentsOfFile_intoPackage_error_(CKDPackageManifest, v27, v26, v17, &obj);
      objc_storeStrong(v28, obj);
      if (v29)
      {
        v32 = objc_msgSend_itemCount(v17, v30, v31);
        v85 = objc_msgSend_sectionCount(v17, v33, v34);
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v35 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218754;
          v107 = v32;
          v108 = 2048;
          v109 = v85;
          v110 = 2112;
          v111 = v17;
          v112 = 2114;
          v113 = v26;
          _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Read the package manifest with %lu items and %lu sections for package %@ at %{public}@", buf, 0x2Au);
        }

        v86 = objc_msgSend_downloadItemIndices(v17, v36, v37);
        v38 = v100[5];
        v100[5] = 0;

        v39 = objc_alloc_init(MEMORY[0x277CCAB58]);
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = sub_2251AC3E4;
        v94[3] = &unk_278548908;
        v40 = v17;
        v95 = v40;
        v97 = &v99;
        v41 = v39;
        v96 = v41;
        objc_msgSend_enumerateIndexesUsingBlock_(v86, v42, v94);
        v44 = v100[5];
        if (v44)
        {
          objc_msgSend_setError_(v6, v43, v44);
          if (v7)
          {
            v7[2](v7);
          }
        }

        else
        {
          v81 = objc_msgSend_CKMap_(v41, v43, &unk_28385D3C0);
          v55 = [CKDMMCSRequestOptions alloc];
          v84 = objc_msgSend_initWithOperation_(v55, v56, self);
          v59 = objc_msgSend_record(v40, v57, v58);
          v62 = objc_msgSend_recordID(v59, v60, v61);
          v65 = objc_msgSend_zoneID(v62, v63, v64);
          v83 = objc_msgSend_zoneName(v65, v66, v67);

          if (v83)
          {
            v105 = v83;
            v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v68, &v105, 1);
            objc_msgSend_setZoneNames_(v84, v70, v69);
          }

          objc_msgSend_setMMCSRequestOptions_(v6, v68, v84, v81);
          objc_msgSend_setSectionIndices_(v6, v71, v41);
          v74 = objc_msgSend_objectEnumerator(v82, v72, v73);
          v87[0] = MEMORY[0x277D85DD0];
          v87[1] = 3221225472;
          v87[2] = sub_2251AC4AC;
          v87[3] = &unk_278548950;
          v88 = v6;
          v93 = v85;
          v89 = v40;
          v90 = v41;
          v91 = self;
          v92 = v7;
          objc_msgSend__downloadPackageSectionsWithSectionEnumerator_task_completionBlock_(self, v75, v74, v88, v87);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v51 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v79 = objc_msgSend_operationID(self, v52, v53);
          v80 = v100[5];
          *buf = 138413058;
          v107 = v26;
          v108 = 2112;
          v109 = v17;
          v110 = 2114;
          v111 = v79;
          v112 = 2112;
          v113 = v80;
          _os_log_error_impl(&dword_22506F000, v51, OS_LOG_TYPE_ERROR, "Failed to read the manifest file at %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);
        }

        objc_msgSend_setError_(v6, v54, v100[5]);
        if (v7)
        {
          v7[2](v7);
        }
      }
    }

    else
    {
      v45 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, *MEMORY[0x277CBC120], 1017, @"Missing path for the package manifest");
      v46 = v100[5];
      v100[5] = v45;

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v47 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v77 = objc_msgSend_operationID(self, v48, v49);
        v78 = v100[5];
        *buf = 138412802;
        v107 = v17;
        v108 = 2114;
        v109 = v77;
        v110 = 2112;
        v111 = v78;
        _os_log_error_impl(&dword_22506F000, v47, OS_LOG_TYPE_ERROR, "Missing path for package manifest for package %@ and operation %{public}@: %@", buf, 0x20u);
      }

      objc_msgSend_setError_(v6, v50, v100[5]);
      if (v7)
      {
        v7[2](v7);
      }
    }

    _Block_object_dispose(&v99, 8);
  }

LABEL_33:

  v76 = *MEMORY[0x277D85DE8];
}

- (void)_downloadPackageSectionsWithPendingTasks:(id)a3 downloadingTasks:(id)a4 completedTasks:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!objc_msgSend_maxPackageDownloadsPerBatch(self, v12, v13))
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDDownloadAssetsOperation.m", 1082, @"Expected non-0 maxPackageDownloadsPerBatch");
  }

  v16 = objc_msgSend_count(v10, v14, v15);
  if (v16 > objc_msgSend_maxPackageDownloadsPerBatch(self, v17, v18))
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKDDownloadAssetsOperation.m", 1083, @"Expected max downloading tasks: %@", v10);

    if (!v11)
    {
      goto LABEL_7;
    }
  }

  else if (!v11)
  {
    goto LABEL_7;
  }

  if (!objc_msgSend_count(v11, v19, v20))
  {
    v29 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, a2, self, @"CKDDownloadAssetsOperation.m", 1084, @"Expected completed tasks: %@", v11);
  }

LABEL_7:
  v21 = objc_msgSend_queue(self, v19, v20);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251AC840;
  block[3] = &unk_2785463D0;
  v32 = v10;
  v33 = v11;
  v34 = self;
  v35 = v9;
  v22 = v9;
  v23 = v11;
  v24 = v10;
  dispatch_async(v21, block);
}

- (BOOL)_download
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_MMCSItemsToDownload(self, a2, v2);
  v7 = objc_msgSend_MMCSItemsToDownloadInMemory(self, v5, v6);
  if (objc_msgSend_count(v4, v8, v9) || objc_msgSend_count(v7, v10, v11))
  {
    goto LABEL_7;
  }

  v12 = objc_msgSend_assetsToDownloadFromTranscoder(self, v10, v11);
  if (objc_msgSend_count(v12, v13, v14))
  {
    goto LABEL_6;
  }

  v17 = objc_msgSend_assetsToDownloadFromTranscoderInMemory(self, v15, v16);
  if (objc_msgSend_count(v17, v18, v19))
  {

LABEL_6:
LABEL_7:
    if (objc_msgSend_count(v4, v10, v11))
    {
      v24 = objc_msgSend_downloadTasksByPackages(self, v22, v23);
      objc_msgSend__downloadMMCSItems_downloadTasksByPackages_shouldFetchAssetContentInMemory_(self, v25, v4, v24, 0);
    }

    if (objc_msgSend_count(v7, v22, v23))
    {
      objc_msgSend__downloadMMCSItems_downloadTasksByPackages_shouldFetchAssetContentInMemory_(self, v26, v7, 0, 1);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v28 = objc_msgSend_assetsToDownloadFromTranscoder(self, v26, v27);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v60, v65, 16);
    if (v30)
    {
      v32 = v30;
      v33 = *v61;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v61 != v33)
          {
            objc_enumerationMutation(v28);
          }

          objc_msgSend__downloadTranscodedAsset_inMemory_(self, v31, *(*(&v60 + 1) + 8 * i), 0);
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v60, v65, 16);
      }

      while (v32);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v37 = objc_msgSend_assetsToDownloadFromTranscoderInMemory(self, v35, v36, 0);
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v56, v64, 16);
    if (v39)
    {
      v41 = v39;
      v42 = *v57;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v57 != v42)
          {
            objc_enumerationMutation(v37);
          }

          objc_msgSend__downloadTranscodedAsset_inMemory_(self, v40, *(*(&v56 + 1) + 8 * j), 1);
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v56, v64, 16);
      }

      while (v41);
    }

    v44 = 1;
    goto LABEL_26;
  }

  v47 = objc_msgSend_assetURLInfosToFillOut(self, v20, v21);
  v50 = objc_msgSend_count(v47, v48, v49);

  if (v50)
  {
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v51 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v52 = v51;
    v55 = objc_msgSend_operationID(self, v53, v54);
    *buf = 138543362;
    v67 = v55;
    _os_log_debug_impl(&dword_22506F000, v52, OS_LOG_TYPE_DEBUG, "No files or packages to download for %{public}@", buf, 0xCu);
  }

  v44 = 0;
LABEL_26:

  v45 = *MEMORY[0x277D85DE8];
  return v44;
}

- (void)_downloadMMCSItems:(id)a3 downloadTasksByPackages:(id)a4 shouldFetchAssetContentInMemory:(BOOL)a5
{
  v135 = a5;
  v178 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v133 = a4;
  val = self;
  v134 = objc_msgSend_mmcs(self, v8, v9);
  group = dispatch_group_create();
  v12 = objc_msgSend_stateTransitionGroup(self, v10, v11);
  dispatch_group_enter(v12);

  dispatch_group_enter(group);
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  obj = v7;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v168, v177, 16);
  if (v16)
  {
    v17 = *v169;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v169 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v21 = objc_msgSend_package(*(*(&v168 + 1) + 8 * i), v14, v15);
        if (v21)
        {
          v22 = objc_msgSend_downloadTasksByPackages(val, v19, v20);
          v24 = objc_msgSend_objectForKey_(v22, v23, v21);

          v27 = objc_msgSend_group(v24, v25, v26);
          dispatch_group_enter(v27);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v168, v177, 16);
    }

    while (v16);
  }

  v30 = objc_msgSend_downloadTasksByPackages(val, v28, v29);
  v33 = objc_msgSend_count(v30, v31, v32);

  if (v33)
  {
    v36 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v34, v35);
    v38 = objc_msgSend_maxPackageDownloadsPerBatchWithDefaultValue_(v36, v37, 6);

    if (v38 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = v38;
    }

    if (v40 >= 0x64)
    {
      objc_msgSend_setMaxPackageDownloadsPerBatch_(val, v39, 100);
    }

    else
    {
      objc_msgSend_setMaxPackageDownloadsPerBatch_(val, v39, v40);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v41 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v129 = v41;
      v132 = objc_msgSend_maxPackageDownloadsPerBatch(val, v130, v131);
      *location = 134218240;
      *&location[4] = v132;
      v175 = 2048;
      v176 = v38;
      _os_log_debug_impl(&dword_22506F000, v129, OS_LOG_TYPE_DEBUG, "maxPackageDownloadsPerBatch:%lu (%lu)", location, 0x16u);
    }

    v42 = objc_alloc(MEMORY[0x277CBEB18]);
    v45 = objc_msgSend_downloadTasksByPackages(val, v43, v44);
    v48 = objc_msgSend_count(v45, v46, v47);
    v50 = objc_msgSend_initWithCapacity_(v42, v49, v48);

    v51 = objc_alloc(MEMORY[0x277CBEB18]);
    v54 = objc_msgSend_maxPackageDownloadsPerBatch(val, v52, v53);
    v56 = objc_msgSend_initWithCapacity_(v51, v55, v54);
    v57 = objc_autoreleasePoolPush();
    v60 = objc_msgSend_downloadTasksByPackages(val, v58, v59);
    v63 = objc_msgSend_objectEnumerator(v60, v61, v62);

    v66 = objc_msgSend_nextObject(v63, v64, v65);
    while (v66)
    {
      dispatch_group_enter(group);
      v69 = objc_msgSend_group(v66, v67, v68);
      v72 = objc_msgSend_queue(val, v70, v71);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2251AD88C;
      block[3] = &unk_278548978;
      v163 = v66;
      v164 = val;
      v165 = group;
      v166 = v50;
      v167 = v56;
      v73 = v66;
      dispatch_group_notify(v69, v72, block);

      v66 = objc_msgSend_nextObject(v63, v74, v75);
    }

    objc_autoreleasePoolPop(v57);
  }

  v76 = [CKDMMCSItemGroupSet alloc];
  v136 = objc_msgSend_initWithItems_(v76, v77, obj);
  v78 = [CKDMMCSRequestOptions alloc];
  v137 = objc_msgSend_initWithOperation_(v78, v79, val);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(val, v80, v81);
  objc_msgSend_setShouldCloneFileInAssetCache_(v137, v83, shouldCloneFileInAssetCache);
  v84 = objc_opt_new();
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v139 = objc_msgSend_itemsGroups(v136, v85, v86);
  v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v87, &v158, v173, 16);
  if (v90)
  {
    v140 = *v159;
    do
    {
      for (j = 0; j != v90; ++j)
      {
        if (*v159 != v140)
        {
          objc_enumerationMutation(v139);
        }

        v92 = *(*(&v158 + 1) + 8 * j);
        v154 = 0u;
        v155 = 0u;
        v156 = 0u;
        v157 = 0u;
        v93 = objc_msgSend_items(v92, v88, v89);
        v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, &v154, v172, 16);
        if (v97)
        {
          v98 = *v155;
          do
          {
            for (k = 0; k != v97; ++k)
            {
              if (*v155 != v98)
              {
                objc_enumerationMutation(v93);
              }

              v100 = objc_msgSend_recordID(*(*(&v154 + 1) + 8 * k), v95, v96);
              v103 = objc_msgSend_zoneID(v100, v101, v102);
              v106 = objc_msgSend_zoneName(v103, v104, v105);

              if (v106)
              {
                objc_msgSend_addObject_(v84, v107, v106);
              }
            }

            v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v95, &v154, v172, 16);
          }

          while (v97);
        }
      }

      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v88, &v158, v173, 16);
    }

    while (v90);
  }

  v110 = objc_msgSend_allObjects(v84, v108, v109);
  objc_msgSend_setZoneNames_(v137, v111, v110);

  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(val, v112, v113), v114 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v114, v115, @"DownloadAssetsFakeMMCSError"), v116 = objc_claimAutoreleasedReturnValue(), v114, v116))
  {
    objc_msgSend__didDownloadMMCSItems_inMemory_error_(val, v117, obj, v135, v116);
    dispatch_group_leave(group);

    v120 = 0;
  }

  else
  {
    objc_initWeak(location, val);
    v151[0] = MEMORY[0x277D85DD0];
    v151[1] = 3221225472;
    v151[2] = sub_2251ADC68;
    v151[3] = &unk_2785489A0;
    objc_copyWeak(&v152, location);
    v153 = v135;
    v149[0] = MEMORY[0x277D85DD0];
    v149[1] = 3221225472;
    v149[2] = sub_2251ADCC8;
    v149[3] = &unk_2785489C8;
    objc_copyWeak(&v150, location);
    v145[0] = MEMORY[0x277D85DD0];
    v145[1] = 3221225472;
    v145[2] = sub_2251ADD58;
    v145[3] = &unk_2785489F0;
    v145[4] = val;
    v146 = obj;
    v148 = v135;
    v147 = group;
    v120 = objc_msgSend_getItemGroupSet_operation_shouldFetchAssetContentInMemory_options_progress_command_completionHandler_(v134, v121, v136, val, v135, v137, v151, v149, v145);
    v124 = objc_msgSend_cancelTokens(val, v122, v123);
    objc_msgSend_addCancelToken_withOperation_(v124, v125, v120, val);

    objc_destroyWeak(&v150);
    objc_destroyWeak(&v152);
    objc_destroyWeak(location);
  }

  objc_msgSend_qualityOfService(val, v118, v119);
  v126 = CKGetGlobalQueue();
  v143[0] = MEMORY[0x277D85DD0];
  v143[1] = 3221225472;
  v143[2] = sub_2251ADFAC;
  v143[3] = &unk_278545898;
  v143[4] = val;
  v144 = v120;
  v127 = v120;
  dispatch_group_notify(group, v126, v143);

  v128 = *MEMORY[0x277D85DE8];
}

- (BOOL)_postProcess
{
  v53 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = objc_msgSend_assetURLInfosToFillOut(self, a2, v2);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v48, v52, 16);
  if (v5)
  {
    v8 = v5;
    v46 = *v49;
    v44 = *MEMORY[0x277CBC120];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v49 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        v11 = objc_msgSend_asset(v10, v6, v7);
        v14 = objc_msgSend_recordPCS(v10, v12, v13);
        v17 = objc_msgSend_recordKey(v11, v15, v16);
        v20 = objc_msgSend_container(self, v18, v19);
        v23 = objc_msgSend_pcsManager(v20, v21, v22);
        v26 = objc_msgSend_useEncryption(self, v24, v25);
        v29 = objc_msgSend_useClearAssetEncryption(self, v27, v28);
        v47 = 0;
        LOBYTE(v43) = 0;
        LOBYTE(v26) = objc_msgSend_fillInDownloadURLsForAssetWithFieldName_fileName_recordPCS_pcsManager_useEncryption_useClearAssetEncryption_alwaysAllowKeyExport_outError_(v11, v30, v17, 0, v14, v23, v26, v29, v43, &v47);
        v31 = v47;

        if ((v26 & 1) == 0 && !v31)
        {
          v34 = MEMORY[0x277CBC560];
          v35 = objc_msgSend_asset(v10, v32, v33);
          v31 = objc_msgSend_errorWithDomain_code_format_(v34, v36, v44, 1000, @"Failed to fill out download URL for asset %@", v35);
        }

        v37 = objc_msgSend_urlFilledOutBlock(self, v32, v33);

        if (v37)
        {
          v40 = objc_msgSend_urlFilledOutBlock(self, v38, v39);
          (v40)[2](v40, v10, v31);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v48, v52, 16);
    }

    while (v8);
  }

  v41 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = CKDDownloadAssetsOperation;
  [(CKDOperation *)&v8 cancel];
  v5 = objc_msgSend_cancelTokens(self, v3, v4);
  objc_msgSend_cancel(v5, v6, v7);
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  objc_msgSend_hash(self, v5, v6);
  kdebug_trace();
  objc_msgSend_setDownloadPreparationBlock_(self, v7, 0);
  objc_msgSend_setDownloadProgressBlock_(self, v8, 0);
  objc_msgSend_setDownloadCommandBlock_(self, v9, 0);
  objc_msgSend_setDownloadCompletionBlock_(self, v10, 0);
  objc_msgSend_setUrlFilledOutBlock_(self, v11, 0);
  v14 = objc_msgSend_mmcs(self, v12, v13);
  objc_msgSend_performOperationCleanup(v14, v15, v16);

  v17.receiver = self;
  v17.super_class = CKDDownloadAssetsOperation;
  [(CKDOperation *)&v17 _finishOnCallbackQueueWithError:v4];
}

- (void)main
{
  objc_msgSend_hash(self, a2, v2);
  kdebug_trace();
  v6 = objc_msgSend_mmcs(self, v4, v5);

  v9 = 0;
  if (!v6)
  {
    v10 = objc_msgSend_container(self, v7, v8);
    v35 = 0;
    v12 = objc_msgSend_setupAssetTransfers_(v10, v11, &v35);
    v9 = v35;

    if ((v12 & 1) == 0)
    {
      objc_msgSend_finishWithError_(self, v13, v9);
      goto LABEL_12;
    }

    v15 = objc_msgSend_container(self, v13, v14);
    v18 = objc_msgSend_MMCS(v15, v16, v17);
    objc_msgSend_setMmcs_(self, v19, v18);
  }

  v20 = objc_msgSend_assetsToDownload(self, v7, v8);
  if (objc_msgSend_count(v20, v21, v22))
  {
    v25 = 0;
  }

  else
  {
    v26 = objc_msgSend_assetsToDownloadInMemory(self, v23, v24);
    if (objc_msgSend_count(v26, v27, v28))
    {
      v25 = 0;
    }

    else
    {
      v31 = objc_msgSend_assetURLInfosToFillOut(self, v29, v30);
      v25 = objc_msgSend_count(v31, v32, v33) == 0;
    }
  }

  objc_msgSend_makeStateTransition_(self, v34, v25);
LABEL_12:
}

- (BOOL)shouldDownloadAssetFromTranscoder:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v7 = objc_msgSend_constructedAssetDownloadParameters(v4, v5, v6);
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v9 = objc_msgSend_unitTestOverrides(self, v5, v6);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"DownloadAssetsFromTranscodingService");
    v8 |= objc_msgSend_BOOLValue(v11, v12, v13);
  }

  return v8;
}

@end