@interface CKDUploadAssetsOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)_didFetchUploadTokensForAssetTokenRequest:(id)request error:(id)error newError:(id *)newError;
- (BOOL)_fetchConfiguration;
- (BOOL)_fetchUploadTokens;
- (BOOL)_planPackageSectionItemsForMMCSItems:(id)items;
- (BOOL)_planSectionsForPackage:(id)package error:(id *)error;
- (BOOL)_prepareForUpload;
- (BOOL)_upload;
- (BOOL)makeStateTransition;
- (CKDUploadAssetsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)CKStatusReportLogGroups;
- (id)_prepareAssetForUpload:(id)upload;
- (id)_preparePackageForUpload:(id)upload;
- (id)_prepareReferenceAssetForUpload:(id)upload;
- (id)_prepareReferencePackageForUpload:(id)upload;
- (void)_collectMetricsFromCompletedItemGroup:(id)group;
- (void)_collectMetricsFromCompletedItemGroupSet:(id)set;
- (void)_collectMetricsFromMMCSOperationMetrics:(id)metrics;
- (void)_didMakeProgressForAsset:(id)asset progress:(double)progress;
- (void)_didMakeProgressForMMCSItem:(id)item;
- (void)_didMakeProgressForMMCSSectionItem:(id)item task:(id)task;
- (void)_didPrepareAsset:(id)asset;
- (void)_didPrepareAssetBatch:(id)batch error:(id)error;
- (void)_didUploadAsset:(id)asset error:(id)error;
- (void)_didUploadMMCSItem:(id)item error:(id)error;
- (void)_didUploadMMCSItems:(id)items error:(id)error;
- (void)_didUploadMMCSSectionItem:(id)item task:(id)task error:(id)error;
- (void)_didUploadMMCSSectionItems:(id)items task:(id)task error:(id)error;
- (void)_didUploadPackageWithTask:(id)task;
- (void)_failAllItemsInAssetBatch:(id)batch error:(id)error;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_registerMMCSItems;
- (void)_removePackageManifests;
- (void)_uploadPackageSection:(id)section task:(id)task completionBlock:(id)block;
- (void)_uploadPackageSectionsWithEnumerator:(id)enumerator task:(id)task completionBlock:(id)block;
- (void)_uploadPackageSectionsWithPendingTasks:(id)tasks uploadingTasks:(id)uploadingTasks completedTasks:(id)completedTasks;
- (void)_uploadPackageSectionsWithTask:(id)task completionBlock:(id)block;
- (void)cancel;
- (void)finishWithError:(id)error;
- (void)main;
@end

@implementation CKDUploadAssetsOperation

- (CKDUploadAssetsOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  containerCopy = container;
  v62.receiver = self;
  v62.super_class = CKDUploadAssetsOperation;
  v8 = [(CKDDatabaseOperation *)&v62 initWithOperationInfo:infoCopy container:containerCopy];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = objc_msgSend_QOSClass(v8, v10, v11);
    v13 = dispatch_queue_attr_make_with_qos_class(v9, v12, 0);

    v14 = dispatch_queue_create("com.apple.cloudkit.upload", v13);
    queue = v8->_queue;
    v8->_queue = v14;

    v18 = objc_msgSend_assetsToUpload(infoCopy, v16, v17);
    v20 = objc_msgSend_sortedArrayUsingComparator_(v18, v19, &unk_28385D500);
    assetsToUpload = v8->_assetsToUpload;
    v8->_assetsToUpload = v20;

    v22 = objc_alloc_init(CKDCancelTokenGroup);
    cancelTokens = v8->_cancelTokens;
    v8->_cancelTokens = v22;

    v26 = objc_msgSend_containerID(containerCopy, v24, v25);
    if (objc_msgSend_specialContainerType(v26, v27, v28) == 5)
    {
      v31 = objc_msgSend_group(infoCopy, v29, v30);
      v34 = objc_msgSend_name(v31, v32, v33);
      isEqualToString = objc_msgSend_isEqualToString_(v34, v35, @"Compute State Upload");

      if (isEqualToString)
      {
        v37 = [CKDAssetRequestPlanner alloc];
        v39 = objc_msgSend_initWithAssetTokenRequestSizeLimit_(v37, v38, 0xFFFFFFFFLL);
LABEL_7:
        assetRequestPlanner = v8->_assetRequestPlanner;
        v8->_assetRequestPlanner = v39;

        v43 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v41, v42);
        uploadTasksByPackages = v8->_uploadTasksByPackages;
        v8->_uploadTasksByPackages = v43;

        v47 = objc_msgSend_assetUUIDToExpectedProperties(infoCopy, v45, v46);
        assetUUIDToExpectedProperties = v8->_assetUUIDToExpectedProperties;
        v8->_assetUUIDToExpectedProperties = v47;

        v51 = objc_msgSend_packageUUIDToExpectedProperties(infoCopy, v49, v50);
        packageUUIDToExpectedProperties = v8->_packageUUIDToExpectedProperties;
        v8->_packageUUIDToExpectedProperties = v51;

        v8->_temporary = objc_msgSend_temporary(infoCopy, v53, v54);
        v8->_shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(infoCopy, v55, v56);
        v59 = objc_msgSend_cloneContextsBySignature(infoCopy, v57, v58);
        cloneContextsBySignature = v8->_cloneContextsBySignature;
        v8->_cloneContextsBySignature = v59;

        goto LABEL_8;
      }
    }

    else
    {
    }

    v39 = objc_alloc_init(CKDAssetRequestPlanner);
    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

- (id)CKStatusReportLogGroups
{
  v19.receiver = self;
  v19.super_class = CKDUploadAssetsOperation;
  cKStatusReportLogGroups = [(CKDOperation *)&v19 CKStatusReportLogGroups];
  v6 = objc_msgSend_assetRequestPlanner(self, v4, v5);
  v9 = objc_msgSend_assetRegisterAndPutBatches(v6, v7, v8);
  v11 = objc_msgSend_CKFlatMap_(v9, v10, &unk_28385D460);

  if (objc_msgSend_count(v11, v12, v13))
  {
    if (!cKStatusReportLogGroups)
    {
      cKStatusReportLogGroups = objc_opt_new();
    }

    v16 = objc_msgSend_mutableCopy(v11, v14, v15);
    objc_msgSend_setObject_forKeyedSubscript_(cKStatusReportLogGroups, v17, v16, @"MMCS Items");
  }

  return cKStatusReportLogGroups;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_cancelTokens(self, a2, v2);
  objc_msgSend_removeAllCancelTokens(v4, v5, v6);

  v9 = objc_msgSend_state(self, v7, v8);
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      objc_msgSend_setState_(self, v10, 2);

      return MEMORY[0x2821F9670](self, sel__fetchConfiguration, v29);
    }

    else
    {
      if (v9 != 2)
      {
        return 1;
      }

      objc_msgSend_hash(self, v10, v11);
      kdebug_trace();
      objc_msgSend_setState_(self, v17, 3);

      return objc_msgSend__prepareForUpload(self, v18, v19);
    }
  }

  else if (v9 == 3)
  {
    objc_msgSend_hash(self, v10, v11);
    kdebug_trace();
    objc_msgSend_hash(self, v21, v22);
    kdebug_trace();
    objc_msgSend_setState_(self, v23, 4);

    return MEMORY[0x2821F9670](self, sel__fetchUploadTokens, v24);
  }

  else
  {
    if (v9 != 4)
    {
      if (v9 == 5)
      {
        objc_msgSend_hash(self, v10, v11);
        kdebug_trace();
        objc_msgSend_setState_(self, v12, 0xFFFFFFFFLL);
        v15 = objc_msgSend_error(self, v13, v14);
        objc_msgSend_finishWithError_(self, v16, v15);
      }

      return 1;
    }

    objc_msgSend_hash(self, v10, v11);
    kdebug_trace();
    objc_msgSend_hash(self, v25, v26);
    kdebug_trace();
    objc_msgSend_setState_(self, v27, 5);

    return MEMORY[0x2821F9670](self, sel__upload, v28);
  }
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 4)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDUploadAssetsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_278548F80[state - 2];
  }

  return v5;
}

- (void)_didPrepareAsset:(id)asset
{
  assetCopy = asset;
  if (!assetCopy)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CKDUploadAssetsOperation.m", 303, @"Expected non-nil asset for %@", self);
  }

  v8 = objc_msgSend_callbackQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251BAB4C;
  block[3] = &unk_278545898;
  block[4] = self;
  v13 = assetCopy;
  v9 = assetCopy;
  dispatch_async(v8, block);
}

- (void)_didMakeProgressForAsset:(id)asset progress:(double)progress
{
  assetCopy = asset;
  if (!assetCopy)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKDUploadAssetsOperation.m", 311, @"Expected non-nil asset for %@", self);
  }

  v10 = objc_msgSend_callbackQueue(self, v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251BACDC;
  block[3] = &unk_278545E20;
  block[4] = self;
  v15 = assetCopy;
  progressCopy = progress;
  v11 = assetCopy;
  dispatch_async(v10, block);
}

- (void)_didUploadAsset:(id)asset error:(id)error
{
  assetCopy = asset;
  errorCopy = error;
  v11 = errorCopy;
  if (assetCopy)
  {
    if (errorCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CKDUploadAssetsOperation.m", 319, @"Expected non-nil asset for %@", self);

    if (v11)
    {
      goto LABEL_5;
    }
  }

  if ((objc_msgSend_uploaded(assetCopy, v9, v10) & 1) == 0)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKDUploadAssetsOperation.m", 320, @"Expected asset %@ to be marked as uploaded for %@", assetCopy, self);
  }

LABEL_5:
  v12 = objc_msgSend_callbackQueue(self, v9, v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251BAEE0;
  block[3] = &unk_278546990;
  block[4] = self;
  v20 = assetCopy;
  v21 = v11;
  v13 = v11;
  v14 = assetCopy;
  dispatch_async(v12, block);
}

- (BOOL)_planSectionsForPackage:(id)package error:(id *)error
{
  v228 = *MEMORY[0x277D85DE8];
  packageCopy = package;
  selfCopy = self;
  v7 = objc_msgSend_container(self, v5, v6);
  v189 = objc_msgSend_MMCS(v7, v8, v9);

  MaxChunkCountForSection = objc_msgSend_getMaxChunkCountForSection(v189, v10, v11);
  if (!MaxChunkCountForSection)
  {
    if (error)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 1000, @"Invalid maxSectionChunkCount value: %lu", 0);
      *error = v40 = 0;
    }

    else
    {
      v40 = 0;
    }

    goto LABEL_79;
  }

  v13 = [CKDMMCSPackageSignatureGenerator alloc];
  v16 = objc_msgSend_boundaryKey(packageCopy, v14, v15);
  v182 = objc_msgSend_initWithBoundaryKey_(v13, v17, v16);

  v18 = [CKDMMCSPackageSignatureGenerator alloc];
  v21 = objc_msgSend_boundaryKey(packageCopy, v19, v20);
  v23 = objc_msgSend_initWithBoundaryKey_(v18, v22, v21);

  v184 = objc_msgSend_itemEnumerator(packageCopy, v24, v25);
  v215 = 0;
  v216 = &v215;
  v217 = 0x3032000000;
  v218 = sub_225073FF0;
  v219 = sub_225073584;
  v220 = objc_msgSend_prepareForSectionPlanning(packageCopy, v26, v27);
  v181 = dispatch_semaphore_create(0);
  if (!v216[5])
  {
    v30 = 0;
    v187 = 0;
    v195 = 0;
    v183 = 0;
    v186 = *MEMORY[0x277CBC120];
    v31 = v23;
    while (1)
    {
      v202 = v31;
      context = objc_autoreleasePoolPush();
      isCancelled = objc_msgSend_isCancelled(selfCopy, v45, v46);
      if (isCancelled)
      {
        v49 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v47, v186, 1, @"Operation was cancelled");
        v196 = 0;
        v50 = v216[5];
        v216[5] = v49;
LABEL_69:

        goto LABEL_70;
      }

      v204 = objc_msgSend_nextObjectBatch(v184, v47, v48);

      if (v204)
      {
        break;
      }

      v30 = 0;
      v196 = 0;
LABEL_70:
      v31 = v202;
      objc_autoreleasePoolPop(context);
      v158 = v216[5];
      if (!v196)
      {
        if (!v158 && v183)
        {
          v162 = objc_msgSend_dataByFinishingSignature(v202, v28, v29);
          v165 = objc_msgSend_dataByFinishingVerificationKey(v202, v163, v164);
          v166 = objc_alloc(MEMORY[0x277CBC548]);
          v168 = objc_msgSend_initWithIndex_signature_verificationKey_(v166, v167, v187, v162, v165);
          v170 = objc_msgSend_addSection_(packageCopy, v169, v168);
          v171 = v216[5];
          v216[5] = v170;

          v174 = objc_msgSend_signature(v168, v172, v173);
          objc_msgSend_updateWithData_(v182, v175, v174);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v176 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v222 = v168;
            v223 = 2048;
            v224 = v183;
            v225 = 2048;
            v226 = v195;
            _os_log_debug_impl(&dword_22506F000, v176, OS_LOG_TYPE_DEBUG, "Added last section %@ with %lu items and %lu chunks", buf, 0x20u);
          }

          v31 = v202;
        }

        goto LABEL_4;
      }

      if (v158)
      {
        goto LABEL_4;
      }
    }

    v212[0] = MEMORY[0x277D85DD0];
    v212[1] = 3221225472;
    v212[2] = sub_2251BBE00;
    v212[3] = &unk_278548E00;
    v190 = packageCopy;
    v213 = v190;
    v214 = selfCopy;
    v188 = objc_msgSend_CKMap_(v204, v51, v212);
    v52 = [CKDMMCSItemGroupSet alloc];
    v185 = objc_msgSend_initWithItems_(v52, v53, v188);
    if (objc_msgSend_useMMCSEncryptionV2(v190, v54, v55))
    {
      v56 = 66;
    }

    else
    {
      v56 = 2;
    }

    v209[0] = MEMORY[0x277D85DD0];
    v209[1] = 3221225472;
    v209[2] = sub_2251BBF50;
    v209[3] = &unk_278548E28;
    v211 = &v215;
    v57 = v181;
    v210 = v57;
    v191 = objc_msgSend_registerItemGroupSet_operation_options_completionHandler_(v189, v58, v185, selfCopy, v56, v209);
    v61 = objc_msgSend_cancelTokens(selfCopy, v59, v60);
    objc_msgSend_addCancelToken_withOperation_(v61, v62, v191, selfCopy);

    dispatch_semaphore_wait(v57, 0xFFFFFFFFFFFFFFFFLL);
    v65 = objc_msgSend_cancelTokens(selfCopy, v63, v64);
    objc_msgSend_removeCancelToken_(v65, v66, v191);

    v67 = v216[5];
    v196 = v67 == 0;
    if (v67)
    {
LABEL_68:

      v50 = v213;
      v30 = v204;
      goto LABEL_69;
    }

    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    obj = v188;
    v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, &v205, v227, 16);
    if (!v69)
    {
      goto LABEL_67;
    }

    v200 = *v206;
    v201 = 0;
LABEL_27:
    v70 = 0;
    v199 = v69;
    while (1)
    {
      if (*v206 != v200)
      {
        objc_enumerationMutation(obj);
      }

      v71 = *(*(&v205 + 1) + 8 * v70);
      v72 = objc_autoreleasePoolPush();
      v75 = objc_msgSend_error(v71, v73, v74);
      v76 = v216[5];
      v216[5] = v75;

      if (!v216[5])
      {
        break;
      }

      v79 = 0;
LABEL_64:
      objc_autoreleasePoolPop(v72);
      if (!v79)
      {
        goto LABEL_67;
      }

      if (v199 == ++v70)
      {
        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v156, &v205, v227, 16);
        if (!v69)
        {
LABEL_67:

          goto LABEL_68;
        }

        goto LABEL_27;
      }
    }

    v80 = objc_msgSend_signature(v71, v77, v78);
    v83 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v81, v82);
    isEqualToData = objc_msgSend_isEqualToData_(v80, v84, v83);

    if ((isEqualToData & 1) != 0 || !objc_msgSend_chunkCount(v71, v86, v87) || !objc_msgSend_fileSize(v71, v86, v87))
    {
      v88 = MEMORY[0x277CBC6A8];
      v89 = objc_msgSend_signature(v71, v86, v87);
      LODWORD(v88) = objc_msgSend_isValidV2Signature_(v88, v90, v89);

      if (((v88 | isEqualToData) & 1) == 0)
      {
        v178 = 404;
        v179 = "isZeroFileSignature && Expected zeroSizeFileSignature";
LABEL_92:
        __assert_rtn("[CKDUploadAssetsOperation _planSectionsForPackage:error:]", "CKDUploadAssetsOperation.m", v178, v179);
      }

      if (objc_msgSend_chunkCount(v71, v91, v92))
      {
        v178 = 406;
        v179 = "MMCSItem.chunkCount == 0 && Expected MMCSItem.chunkCount == 0";
        goto LABEL_92;
      }

      if (objc_msgSend_fileSize(v71, v93, v94))
      {
        v178 = 407;
        v179 = "MMCSItem.fileSize == 0 && Expected MMCSItem.size == 0";
        goto LABEL_92;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v95 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        v157 = objc_msgSend_itemID(v71, v96, v97);
        *buf = 134217984;
        v222 = v157;
        _os_log_debug_impl(&dword_22506F000, v95, OS_LOG_TYPE_DEBUG, "Zero-length asset with itemID %llu", buf, 0xCu);
      }
    }

    if (v201 >= objc_msgSend_count(v204, v86, v87))
    {
      v178 = 411;
      v179 = "i < packageItems.count";
      goto LABEL_92;
    }

    v101 = objc_msgSend_objectAtIndexedSubscript_(v204, v98, v201);
    if (MaxChunkCountForSection < v195)
    {
      v102 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v99, v186, 1000, @"Invalid sectionChunkCount value: %lu", v195);
      v103 = v216[5];
      v216[5] = v102;

LABEL_49:
      v79 = 0;
LABEL_63:

      ++v201;
      goto LABEL_64;
    }

    if (MaxChunkCountForSection < objc_msgSend_chunkCount(v71, v99, v100) + v195)
    {
      v106 = objc_msgSend_dataByFinishingSignature(v202, v104, v105);
      v109 = objc_msgSend_dataByFinishingVerificationKey(v202, v107, v108);
      v110 = objc_alloc(MEMORY[0x277CBC548]);
      v112 = objc_msgSend_initWithIndex_signature_verificationKey_(v110, v111, v187, v106, v109);
      v114 = objc_msgSend_addSection_(v190, v113, v112);
      v115 = v216[5];
      v216[5] = v114;

      ++v187;
      if (v216[5])
      {

        goto LABEL_49;
      }

      v118 = objc_msgSend_signature(v112, v116, v117);
      objc_msgSend_updateWithData_(v182, v119, v118);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v120 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v222 = v112;
        v223 = 2048;
        v224 = v183;
        v225 = 2048;
        v226 = v195;
        _os_log_debug_impl(&dword_22506F000, v120, OS_LOG_TYPE_DEBUG, "Added section %@ with %lu items and %lu chunks", buf, 0x20u);
      }

      v121 = [CKDMMCSPackageSignatureGenerator alloc];
      v124 = objc_msgSend_boundaryKey(v190, v122, v123);
      v126 = objc_msgSend_initWithBoundaryKey_(v121, v125, v124);

      v183 = 0;
      v195 = 0;
      v202 = v126;
    }

    v127 = objc_msgSend_assetZoneKey(v71, v104, v105);
    v130 = objc_msgSend_useMMCSEncryptionV2(v127, v128, v129);
    v133 = objc_msgSend_BOOLValue(v130, v131, v132);

    if (v133)
    {
      v136 = objc_msgSend_paddedFileSize(v71, v134, v135);
    }

    else
    {
      v136 = 0;
    }

    v137 = objc_msgSend_chunkCount(v71, v134, v135);
    v140 = objc_msgSend_signature(v71, v138, v139);
    objc_msgSend_updateWithData_(v202, v141, v140);

    v144 = objc_msgSend_signature(v71, v142, v143);
    v147 = objc_msgSend_fileSize(v71, v145, v146);
    v150 = objc_msgSend_itemID(v71, v148, v149);
    v152 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v151, v187);
    v154 = objc_msgSend_updateItem_withSignature_size_paddedSize_itemID_sectionIndex_(v190, v153, v101, v144, v147, v136, v150, v152);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v195 += v137;
    ++v183;
    v155 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v222 = v71;
      v223 = 2048;
      v224 = v187;
      _os_log_debug_impl(&dword_22506F000, v155, OS_LOG_TYPE_DEBUG, "Added item %@ to section %lu", buf, 0x16u);
    }

    v79 = 1;
    goto LABEL_63;
  }

  v30 = 0;
  LOBYTE(isCancelled) = 0;
  v31 = v23;
LABEL_4:
  v32 = objc_msgSend_dataByFinishingSignature(v182, v28, v29);
  if (objc_msgSend_useMMCSEncryptionV2(packageCopy, v33, v34))
  {
    v37 = objc_msgSend_dataByFinishingVerificationKey(v182, v35, v36);
    v39 = objc_msgSend_setSignature_verificationKey_(packageCopy, v38, v32, v37);
  }

  else
  {
    v37 = 0;
    v39 = objc_msgSend_setSignature_verificationKey_(packageCopy, v35, v32, 0);
  }

  v41 = v39;
  v42 = v31;
  v43 = v216[5];
  v40 = v43 == 0;
  if (v43)
  {
    if ((isCancelled & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v44 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v177 = v216[5];
        *buf = 138412546;
        v222 = packageCopy;
        v223 = 2112;
        v224 = v177;
        _os_log_error_impl(&dword_22506F000, v44, OS_LOG_TYPE_ERROR, "Failed to create sections for package %@: %@", buf, 0x16u);
      }
    }

    if (error)
    {
      *error = v216[5];
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v159 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v222 = packageCopy;
      _os_log_debug_impl(&dword_22506F000, v159, OS_LOG_TYPE_DEBUG, "Created sections for package %@", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v215, 8);
LABEL_79:

  v160 = *MEMORY[0x277D85DE8];
  return v40;
}

- (void)_didPrepareAssetBatch:(id)batch error:(id)error
{
  v199 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  errorCopy = error;
  v182 = errorCopy;
  v183 = batchCopy;
  selfCopy = self;
  if (errorCopy)
  {
    v12 = errorCopy;
    goto LABEL_30;
  }

  v12 = objc_msgSend_firstMMCSItemError(batchCopy, v8, v9);
  if (!v12)
  {
    v13 = objc_msgSend_packageUUIDToExpectedProperties(self, v10, v11);
    if (v13 && (v16 = v13, v17 = objc_msgSend_isPackageSectionBatch(batchCopy, v14, v15), v16, v17))
    {
      v18 = objc_msgSend_allMMCSAndSectionItems(batchCopy, v14, v15);
      v21 = objc_msgSend_count(v18, v19, v20);

      if (v21)
      {
        v22 = objc_msgSend_allMMCSAndSectionItems(batchCopy, v10, v11);
        v25 = objc_msgSend_firstObject(v22, v23, v24);
        v28 = objc_msgSend_package(v25, v26, v27);

        v31 = objc_msgSend_packageUUIDToExpectedProperties(self, v29, v30);
        v34 = objc_msgSend_UUID(v28, v32, v33);
        v36 = objc_msgSend_objectForKey_(v31, v35, v34);

        if (v36)
        {
          v39 = objc_msgSend_allMMCSAndSectionItems(batchCopy, v37, v38);
          v42 = objc_msgSend_count(v39, v40, v41);
          v45 = objc_msgSend_count(v36, v43, v44);

          if (v42 != v45)
          {
            v113 = MEMORY[0x277CBC560];
            v114 = *MEMORY[0x277CBC120];
            v115 = objc_msgSend_count(v36, v46, v47);
            v57 = objc_msgSend_allMMCSAndSectionItems(batchCopy, v116, v117);
            v120 = objc_msgSend_count(v57, v118, v119);
            v181 = v115;
            self = selfCopy;
            v12 = objc_msgSend_errorWithDomain_code_format_(v113, v121, v114, 3012, @"Number of expected file signatures did not match number of assets in package %@ (%lu versus %lu)", v28, v181, v120);
LABEL_28:

            goto LABEL_29;
          }

          v48 = objc_msgSend_allMMCSAndSectionItems(batchCopy, v46, v47);
          v51 = objc_msgSend_count(v48, v49, v50);

          if (v51)
          {
            v54 = 0;
            while (1)
            {
              v55 = objc_msgSend_allMMCSAndSectionItems(batchCopy, v52, v53);
              v57 = objc_msgSend_objectAtIndexedSubscript_(v55, v56, v54);

              v59 = objc_msgSend_objectAtIndexedSubscript_(v36, v58, v54);
              v62 = objc_msgSend_fileSignature(v59, v60, v61);

              if (v62)
              {
                v65 = objc_msgSend_signature(v57, v63, v64);
                isEqualToData = objc_msgSend_isEqualToData_(v62, v66, v65);

                if ((isEqualToData & 1) == 0)
                {
                  break;
                }
              }

              ++v54;
              batchCopy = v183;
              v71 = objc_msgSend_allMMCSAndSectionItems(v183, v69, v70);
              v74 = objc_msgSend_count(v71, v72, v73);

              if (v54 >= v74)
              {
                v12 = 0;
                self = selfCopy;
                goto LABEL_29;
              }
            }

            v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v68, *MEMORY[0x277CBC120], 3012, @"Did not find expected file signature for item %@ in package %@", v57, v28);

            batchCopy = v183;
            self = selfCopy;
            goto LABEL_28;
          }
        }

        v12 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      v75 = objc_msgSend_assetUUIDToExpectedProperties(self, v14, v15);
      if (v75)
      {
        v76 = v75;
        isPackageSectionBatch = objc_msgSend_isPackageSectionBatch(batchCopy, v10, v11);

        if ((isPackageSectionBatch & 1) == 0)
        {
          v78 = objc_msgSend_allMMCSItems(batchCopy, v10, v11);
          v81 = objc_msgSend_count(v78, v79, v80);

          if (v81)
          {
            v82 = 0;
            while (1)
            {
              v83 = objc_msgSend_allMMCSItems(batchCopy, v10, v11);
              v85 = objc_msgSend_objectAtIndexedSubscript_(v83, v84, v82);

              v88 = objc_msgSend_asset(v85, v86, v87);
              if (v88)
              {
                v91 = v88;
                v92 = objc_msgSend_assetUUIDToExpectedProperties(self, v89, v90);
                v95 = objc_msgSend_UUID(v91, v93, v94);
                v97 = objc_msgSend_objectForKey_(v92, v96, v95);
                v100 = objc_msgSend_fileSignature(v97, v98, v99);

                if (v100)
                {
                  v103 = objc_msgSend_signature(v85, v101, v102);
                  v105 = objc_msgSend_isEqualToData_(v100, v104, v103);

                  if (!v105)
                  {
                    v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v106, *MEMORY[0x277CBC120], 3012, @"Did not find expected file signature for asset %@", v91);

                    batchCopy = v183;
                    self = selfCopy;
                    goto LABEL_30;
                  }
                }

                batchCopy = v183;
                self = selfCopy;
              }

              ++v82;
              v109 = objc_msgSend_allMMCSItems(batchCopy, v107, v108);
              v112 = objc_msgSend_count(v109, v110, v111);

              v12 = 0;
              if (v82 >= v112)
              {
                goto LABEL_30;
              }
            }
          }
        }
      }
    }

    v12 = 0;
  }

LABEL_30:
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v122 = objc_msgSend_allMMCSItems(batchCopy, v10, v11);
  v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v123, &v186, v198, 16);
  if (!v124)
  {
    goto LABEL_57;
  }

  v127 = v124;
  v128 = *v187;
  v185 = *MEMORY[0x277CBC120];
  do
  {
    v129 = 0;
    do
    {
      if (*v187 != v128)
      {
        objc_enumerationMutation(v122);
      }

      v130 = *(*(&v186 + 1) + 8 * v129);
      v131 = objc_msgSend_package(v130, v125, v126);
      v136 = objc_msgSend_asset(v130, v132, v133);
      if (v12)
      {
        if (v131)
        {
          v137 = objc_msgSend_uploadTasksByPackages(self, v134, v135);
          objc_msgSend_removeObjectForKey_(v137, v138, v131);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v139 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v153 = v139;
            v156 = objc_msgSend_operationID(self, v154, v155);
            *buf = 138413058;
            v191 = v130;
            v192 = 2112;
            v193 = v131;
            v194 = 2114;
            v195 = v156;
            v196 = 2112;
            v197 = v12;
            _os_log_error_impl(&dword_22506F000, v153, OS_LOG_TYPE_ERROR, "Failed to register MMCS item %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);

            self = selfCopy;
          }

LABEL_41:
          objc_msgSend__didUploadAsset_error_(self, v140, v131, v12);
          goto LABEL_50;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v143 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v157 = v143;
          v160 = objc_msgSend_operationID(selfCopy, v158, v159);
          *buf = 138412802;
          v191 = v130;
          v192 = 2114;
          v193 = v160;
          v194 = 2112;
          v195 = v12;
          _os_log_error_impl(&dword_22506F000, v157, OS_LOG_TYPE_ERROR, "Failed to register MMCS item %@ for operation %{public}@: %@", buf, 0x20u);

          self = selfCopy;
        }

        objc_msgSend__didUploadAsset_error_(self, v144, v136, v12);
      }

      else
      {
        if (v131 && !objc_msgSend_fileSize(v130, v134, v135))
        {
          v145 = objc_msgSend_uploadTasksByPackages(self, v141, v142);
          objc_msgSend_removeObjectForKey_(v145, v146, v131);

          v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v147, v185, 1000, @"Invalid size for the manifest for package %@", v131);
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v148 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v149 = v148;
            v152 = objc_msgSend_operationID(selfCopy, v150, v151);
            *buf = 138413058;
            v191 = v130;
            v192 = 2112;
            v193 = v131;
            v194 = 2114;
            v195 = v152;
            v196 = 2112;
            v197 = v12;
            _os_log_error_impl(&dword_22506F000, v149, OS_LOG_TYPE_ERROR, "Invalid package manifest size for MMCS item %@, package %@ and operation %{public}@: %@", buf, 0x2Au);

            self = selfCopy;
          }

          goto LABEL_41;
        }

        v12 = 0;
      }

LABEL_50:

      ++v129;
    }

    while (v127 != v129);
    v161 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v125, &v186, v198, 16);
    v127 = v161;
  }

  while (v161);
LABEL_57:

  if (v12)
  {
    objc_msgSend_failBatch_(self->_assetRequestPlanner, v162, v183);
  }

  v164 = objc_msgSend_authPutRequest(v183, v162, v163);
  v167 = objc_msgSend_length(v164, v165, v166);
  v170 = objc_msgSend_assetTokenRequestSizeLimit(self->_assetRequestPlanner, v168, v169);

  if (v170 < v167)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v171 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v174 = v171;
      v177 = objc_msgSend_authPutRequest(v183, v175, v176);
      v180 = objc_msgSend_length(v177, v178, v179);
      *buf = 138412546;
      v191 = v183;
      v192 = 2048;
      v193 = v180;
      _os_log_error_impl(&dword_22506F000, v174, OS_LOG_TYPE_ERROR, "Ignoring preAuthPutResponse for batch %@ : too big at %lu bytes", buf, 0x16u);
    }

    objc_msgSend_setAuthPutRequest_(v183, v172, 0);
  }

  v173 = *MEMORY[0x277D85DE8];
}

- (BOOL)_fetchConfiguration
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v7 = objc_msgSend_container(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2251BC9E0;
  v10[3] = &unk_278548770;
  v10[4] = self;
  objc_msgSend_fetchConfigurationForOperation_withCompletionHandler_(v7, v8, self, v10);

  return 1;
}

- (id)_prepareAssetForUpload:(id)upload
{
  v50 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  v7 = objc_msgSend_fileURL(uploadCopy, v5, v6);
  v12 = objc_msgSend_fileHandle(uploadCopy, v8, v9);
  if (!(v7 | v12) && (objc_msgSend_shouldReadAssetContentUsingClientProxy(uploadCopy, v10, v11) & 1) == 0)
  {
    v28 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 1017, @"nil fileURL property");
    objc_msgSend__didUploadAsset_error_(self, v30, uploadCopy, v28);
    v29 = 0;
    goto LABEL_20;
  }

  v14 = [CKDMMCSItem alloc];
  v17 = objc_msgSend_temporary(self, v15, v16);
  v19 = objc_msgSend_initWithAsset_temporary_(v14, v18, uploadCopy, v17);
  v22 = objc_msgSend_UUID(uploadCopy, v20, v21);
  objc_msgSend_setTrackingUUID_(v19, v23, v22);

  v47 = 0;
  v25 = objc_msgSend_getFileSizeWithOperation_error_(v19, v24, self, &v47);
  v28 = v47;
  if (!v25)
  {
    objc_msgSend__didUploadAsset_error_(self, v26, uploadCopy, v28);
LABEL_18:
    v29 = 0;
    goto LABEL_19;
  }

  if (!objc_msgSend_unsignedLongLongValue(v25, v26, v27))
  {
    v31 = *MEMORY[0x277CBC878];
    v32 = *MEMORY[0x277CBC880];
    if (v7)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v31);
      }

      v33 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v36 = v33;
        v39 = objc_msgSend_path(v7, v37, v38);
        *buf = 138543362;
        v49 = v39;
        _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Skipped uploading empty asset file at %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v31);
      }

      v40 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v49 = v12;
        _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Skipped uploading empty asset file with filehandle %@", buf, 0xCu);
      }
    }

    v41 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v34, v35);
    objc_msgSend_setSignature_(uploadCopy, v42, v41);

    objc_msgSend_setUploaded_(uploadCopy, v43, 1);
    objc_msgSend__didUploadAsset_error_(self, v44, uploadCopy, 0);
    goto LABEL_18;
  }

  v29 = v19;
LABEL_19:

LABEL_20:
  v45 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)_prepareReferenceAssetForUpload:(id)upload
{
  uploadCopy = upload;
  v7 = objc_msgSend_container(self, v5, v6);
  v10 = objc_msgSend_MMCS(v7, v8, v9);

  if (objc_msgSend_size(uploadCopy, v11, v12) || (objc_msgSend_signature(uploadCopy, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_zeroSizeFileSignature(CKDMMCS, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), isEqualToData = objc_msgSend_isEqualToData_(v15, v19, v18), v18, v15, !isEqualToData))
  {
    v24 = objc_msgSend_registeredMMCSItemForRereferencedAsset_(v10, v13, uploadCopy);
    v27 = v24;
    if (v24)
    {
      objc_msgSend_error(v24, v25, v26);
    }

    else
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v25, *MEMORY[0x277CBC120], 1017, @"failed to create MMCS item for re-referenced asset");
    }
    v30 = ;
    if (v30)
    {
      objc_msgSend__didUploadAsset_error_(self, v28, uploadCopy, v30);
LABEL_18:

      goto LABEL_19;
    }

    v31 = objc_msgSend_databaseScope(self, v28, v29);
    objc_msgSend_setupForReReferenceWithAsset_destinationDatabaseScope_(v27, v32, uploadCopy, v31);
    v35 = objc_msgSend_assetZoneKey(v27, v33, v34);
    if (objc_msgSend_isCrossOwner(v35, v36, v37))
    {
      cloneContextsBySignature = self->_cloneContextsBySignature;
      v41 = objc_msgSend_signature(v27, v38, v39);
      v43 = objc_msgSend_objectForKey_(cloneContextsBySignature, v42, v41);

      if (!v43)
      {
        v30 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v44, *MEMORY[0x277CBC120], 1017, @"no clone context for asset clone");
        objc_msgSend__didUploadAsset_error_(self, v49, uploadCopy, v30);
        goto LABEL_17;
      }

      objc_msgSend_setCloneContext_(v35, v44, v43);
    }

    v45 = objc_msgSend_UUID(uploadCopy, v38, v39);
    objc_msgSend_setTrackingUUID_(v27, v46, v45);

    objc_msgSend_addMMCSItem_(self->_assetRequestPlanner, v47, v27);
    v30 = 0;
LABEL_17:

    goto LABEL_18;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v21 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v50 = 0;
    _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Skipped rereference of empty asset", v50, 2u);
  }

  objc_msgSend_setUploaded_(uploadCopy, v22, 1);
  objc_msgSend__didUploadAsset_error_(self, v23, uploadCopy, 0);
LABEL_19:

  return 0;
}

- (id)_preparePackageForUpload:(id)upload
{
  v164 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  v7 = objc_msgSend_container(self, v5, v6);
  v157 = 0;
  v9 = objc_msgSend__planSectionsForPackage_error_(self, v8, uploadCopy, &v157);
  v12 = v157;
  if ((v9 & 1) == 0)
  {
    objc_msgSend__didUploadAsset_error_(self, v10, uploadCopy, v12);
    v62 = 0;
    goto LABEL_42;
  }

  v13 = objc_msgSend_directoryContext(v7, v10, v11);
  v16 = objc_msgSend_temporaryDirectory(v13, v14, v15);
  v17 = CKCreateGUID();
  v19 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v16, v18, v17, 0);

  v20 = [CKDMMCSItem alloc];
  v22 = objc_msgSend_initWithPackage_temporary_(v20, v21, uploadCopy, 1);
  objc_msgSend_setManifestItem_(uploadCopy, v23, v22);
  v26 = objc_msgSend_UUID(uploadCopy, v24, v25);
  objc_msgSend_setTrackingUUID_(v22, v27, v26);

  objc_msgSend_setFileURL_(v22, v28, v19);
  objc_msgSend_setShouldReadRawEncryptedData_(v22, v29, 0);
  objc_msgSend_setIsPackageManifest_(v22, v30, 1);
  if (objc_msgSend_useEncryption(self, v31, v32))
  {
    v153 = v7;
    v154 = v19;
    v35 = objc_msgSend_packageUUIDToExpectedProperties(self, v33, v34);
    v38 = objc_msgSend_UUID(uploadCopy, v36, v37);
    v40 = objc_msgSend_objectForKeyedSubscript_(v35, v39, v38);
    v43 = objc_msgSend_count(v40, v41, v42);
    if (v43 == objc_msgSend_sectionCount(uploadCopy, v44, v45) + 1)
    {
      v149 = objc_msgSend_packageUUIDToExpectedProperties(self, v46, v47);
      objc_msgSend_UUID(uploadCopy, v48, v49);
      v50 = v151 = v35;
      v52 = objc_msgSend_objectForKeyedSubscript_(v149, v51, v50);
      objc_msgSend_firstObject(v52, v53, v54);
      v55 = v12;
      v57 = v56 = v22;
      v60 = objc_msgSend_assetKey(v57, v58, v59);

      v22 = v56;
      v12 = v55;

      v61 = v60;
      v35 = v151;
    }

    else
    {
      v61 = 0;
    }

    v68 = objc_msgSend_useMMCSEncryptionV2(uploadCopy, v66, v67);
    if (v61)
    {
      objc_msgSend_setAssetKey_(v22, v69, v61);
      v72 = 0;
    }

    else
    {
      v156 = 0;
      v74 = objc_msgSend_assetKeyWithType_error_(CKDMMCS, v69, v68, &v156);
      v72 = v156;
      objc_msgSend_setAssetKey_(v22, v75, v74);
    }

    v19 = v154;
    v76 = objc_msgSend_assetKey(v22, v70, v71);

    if (v76 && !v72)
    {
      v79 = objc_msgSend_packageUUIDToExpectedProperties(self, v77, v78);
      v82 = objc_msgSend_UUID(uploadCopy, v80, v81);
      v84 = objc_msgSend_objectForKeyedSubscript_(v79, v83, v82);
      v87 = objc_msgSend_count(v84, v85, v86);
      if (v87 == objc_msgSend_sectionCount(uploadCopy, v88, v89) + 1)
      {
        v148 = objc_msgSend_packageUUIDToExpectedProperties(self, v90, v91);
        objc_msgSend_UUID(uploadCopy, v92, v93);
        v94 = v152 = v22;
        objc_msgSend_objectForKeyedSubscript_(v148, v95, v94);
        v96 = v150 = v61;
        v99 = objc_msgSend_firstObject(v96, v97, v98);
        v102 = objc_msgSend_referenceSignature(v99, v100, v101);

        v61 = v150;
        v22 = v152;
      }

      else
      {
        v102 = 0;
      }

      if (v102)
      {
        objc_msgSend_setReferenceSignature_(v22, v103, v102);
      }

      else
      {
        v105 = objc_msgSend_assetKey(v22, v103, v104);
        v107 = objc_msgSend_referenceSignatureFromAssetKey_(CKDMMCS, v106, v105);
        objc_msgSend_setReferenceSignature_(v22, v108, v107);
      }

      v7 = v153;
      v19 = v154;

      goto LABEL_26;
    }

    objc_msgSend__didUploadAsset_error_(self, v77, uploadCopy, v12);

    v62 = 0;
    v7 = v153;
  }

  else
  {
    if (!objc_msgSend_useClearAssetEncryption(self, v33, v34))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v73 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }

      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v73, OS_LOG_TYPE_DEBUG, "skipping asset keys on manifest item because encryption is disabled", buf, 2u);
LABEL_26:
      if (*MEMORY[0x277CBC880] != -1)
      {
        v109 = v22;
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        goto LABEL_28;
      }

LABEL_27:
      v109 = v22;
LABEL_28:
      v110 = MEMORY[0x277CBC830];
      v111 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v136 = v111;
        v139 = objc_msgSend_operationID(self, v137, v138);
        *buf = 138412546;
        v159 = uploadCopy;
        v160 = 2114;
        v161 = v139;
        _os_log_debug_impl(&dword_22506F000, v136, OS_LOG_TYPE_DEBUG, "Creating manifest for package %@ and operation %{public}@", buf, 0x16u);
      }

      v114 = objc_msgSend_path(v19, v112, v113);
      v155 = v12;
      v116 = objc_msgSend_writePackage_toFile_error_(CKDPackageManifest, v115, uploadCopy, v114, &v155);
      v117 = v155;

      v118 = *MEMORY[0x277CBC878];
      v119 = *MEMORY[0x277CBC880];
      if (v116)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v118);
        }

        v120 = *v110;
        if (os_log_type_enabled(*v110, OS_LOG_TYPE_DEBUG))
        {
          v140 = v120;
          v143 = objc_msgSend_operationID(self, v141, v142);
          *buf = 138412802;
          v159 = uploadCopy;
          v160 = 2114;
          v161 = v143;
          v162 = 2114;
          v163 = v19;
          _os_log_debug_impl(&dword_22506F000, v140, OS_LOG_TYPE_DEBUG, "Wrote the package manifest for package %@ and operation %{public}@: %{public}@", buf, 0x20u);
        }

        v121 = [CKDPackageUploadTask alloc];
        v124 = objc_msgSend_uploadProgressBlock(self, v122, v123);
        v126 = objc_msgSend_initWithPackage_trackProgress_(v121, v125, uploadCopy, v124 != 0);

        v22 = v109;
        objc_msgSend_setMMCSManifestItem_(v126, v127, v109);
        v130 = objc_msgSend_uploadTasksByPackages(self, v128, v129);
        objc_msgSend_setObject_forKey_(v130, v131, v126, uploadCopy);

        v62 = v109;
        v12 = v117;
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v118);
        }

        v132 = *v110;
        if (os_log_type_enabled(*v110, OS_LOG_TYPE_ERROR))
        {
          v144 = v132;
          v147 = objc_msgSend_operationID(self, v145, v146);
          *buf = 138412802;
          v159 = uploadCopy;
          v160 = 2114;
          v161 = v147;
          v162 = 2112;
          v163 = v117;
          _os_log_error_impl(&dword_22506F000, v144, OS_LOG_TYPE_ERROR, "Failed to create the manifest for package %@ and operation %{public}@: %@", buf, 0x20u);
        }

        objc_msgSend__didUploadAsset_error_(self, v133, uploadCopy, v117);
        v62 = 0;
        v12 = v117;
        v22 = v109;
      }

      goto LABEL_41;
    }

    v64 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v63, *MEMORY[0x277CBC120], 1000, @"clear asset key not supported for package manifests");

    objc_msgSend__didUploadAsset_error_(self, v65, uploadCopy, v64);
    v62 = 0;
    v12 = v64;
  }

LABEL_41:

LABEL_42:
  v134 = *MEMORY[0x277D85DE8];

  return v62;
}

- (id)_prepareReferencePackageForUpload:(id)upload
{
  v4 = objc_msgSend_assets(upload, a2, upload);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2251BD8C8;
  v7[3] = &unk_278548E50;
  v7[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(v4, v5, v7);

  return 0;
}

- (BOOL)_planPackageSectionItemsForMMCSItems:(id)items
{
  v179 = *MEMORY[0x277D85DE8];
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  itemsCopy = items;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v5, &v170, v178, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v171;
    v11 = &OBJC_IVAR___CKDDeviceCapabilityUsageSQLEntry__IDString;
    v12 = MEMORY[0x277CBC830];
    *&v8 = 138412546;
    v152 = v8;
    selfCopy = self;
    v155 = itemsCopy;
    v153 = *v171;
    while (2)
    {
      v13 = 0;
      v154 = v9;
      do
      {
        if (*v171 != v10)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v14 = *(*(&v170 + 1) + 8 * v13);
        v163 = v11[145];
        objc_msgSend_addMMCSItem_(*(&self->super.super.super.super.isa + v163), v7, v14, v152);
        v17 = objc_msgSend_package(v14, v15, v16);
        v20 = v17;
        if (v17)
        {
          v156 = v13;
          v21 = objc_msgSend_sectionCount(v17, v18, v19);
          v22 = objc_alloc(MEMORY[0x277CBEB18]);
          v24 = objc_msgSend_initWithCapacity_(v22, v23, v21);
          v27 = v24;
          if (v21)
          {
            v28 = 0;
            v165 = v21 + 1;
            v160 = v21;
            v161 = v20;
            v157 = v24;
            while (1)
            {
              v169 = 0;
              v29 = objc_msgSend_sectionAtIndex_error_(v20, v25, v28, &v169);
              v30 = v169;
              if (v30)
              {
                break;
              }

              v31 = [CKDMMCSItem alloc];
              v33 = objc_msgSend_initWithPackage_(v31, v32, v20);
              v36 = objc_msgSend_UUID(v20, v34, v35);
              objc_msgSend_setTrackingUUID_(v33, v37, v36);

              v40 = objc_msgSend_signature(v29, v38, v39);
              objc_msgSend_setSignature_(v33, v41, v40);

              v168 = 0;
              v43 = objc_msgSend_size_(v29, v42, &v168);
              v44 = v168;
              objc_msgSend_setFileSize_(v33, v45, v43);
              if (v44)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                itemsCopy = v155;
                v142 = *v12;
                if (!os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_71;
                }

                *buf = 138412290;
                v175 = v44;
                v143 = "Error fetching package size: %@";
LABEL_60:
                _os_log_error_impl(&dword_22506F000, v142, OS_LOG_TYPE_ERROR, v143, buf, 0xCu);
LABEL_71:

                goto LABEL_72;
              }

              if (objc_msgSend_useMMCSEncryptionV2(v20, v46, v47))
              {
                v167 = 0;
                v50 = objc_msgSend_paddedSize_(v29, v48, &v167);
                v44 = v167;
                objc_msgSend_setPaddedFileSize_(v33, v51, v50);
                if (v44)
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  itemsCopy = v155;
                  v142 = *v12;
                  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v175 = v44;
                    v143 = "Error fetching package paddedSize: %@";
                    goto LABEL_60;
                  }

                  goto LABEL_71;
                }
              }

              else
              {
                v54 = objc_msgSend_fileSize(v33, v48, v49);
                objc_msgSend_setPaddedFileSize_(v33, v55, v54);
              }

              v56 = objc_msgSend_verificationKey(v29, v52, v53);
              objc_msgSend_setVerificationKey_(v33, v57, v56);

              objc_msgSend_addObject_(v27, v58, v33);
              if (objc_msgSend_useEncryption(self, v59, v60))
              {
                v164 = v29;
                v63 = objc_msgSend_packageUUIDToExpectedProperties(self, v61, v62);
                v66 = objc_msgSend_UUID(v20, v64, v65);
                v68 = objc_msgSend_objectForKeyedSubscript_(v63, v67, v66);
                if (objc_msgSend_count(v68, v69, v70) == v165)
                {
                  v158 = objc_msgSend_packageUUIDToExpectedProperties(self, v71, v72);
                  v75 = objc_msgSend_UUID(v20, v73, v74);
                  v77 = objc_msgSend_objectForKeyedSubscript_(v158, v76, v75);
                  v79 = objc_msgSend_objectAtIndexedSubscript_(v77, v78, v28 + 1);
                  objc_msgSend_assetKey(v79, v80, v81);
                  v83 = v82 = v27;

                  v20 = v161;
                  v84 = v83;
                  v27 = v82;

                  self = selfCopy;
                }

                else
                {
                  v84 = 0;
                }

                v92 = objc_msgSend_useMMCSEncryptionV2(v20, v90, v91);
                if (v84)
                {
                  objc_msgSend_setAssetKey_(v33, v93, v84);
                  v96 = 0;
                }

                else
                {
                  v166 = 0;
                  v97 = objc_msgSend_assetKeyWithType_error_(CKDMMCS, v93, v92, &v166);
                  v96 = v166;
                  objc_msgSend_setAssetKey_(v33, v98, v97);
                }

                v99 = objc_msgSend_assetKey(v33, v94, v95);

                if (!v99 || v96)
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  itemsCopy = v155;
                  v145 = *MEMORY[0x277CBC830];
                  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                  {
                    v148 = v145;
                    v151 = objc_msgSend_trackingUUID(v33, v149, v150);
                    *buf = 138543618;
                    v175 = v151;
                    v176 = 2112;
                    v177 = v96;
                    _os_log_error_impl(&dword_22506F000, v148, OS_LOG_TYPE_ERROR, "error creating asset key for manifest item %{public}@: %@", buf, 0x16u);
                  }

                  v44 = 0;
                  v29 = v164;
                  goto LABEL_71;
                }

                v102 = objc_msgSend_packageUUIDToExpectedProperties(self, v100, v101);
                v105 = objc_msgSend_UUID(v20, v103, v104);
                objc_msgSend_objectForKeyedSubscript_(v102, v106, v105);
                v108 = v107 = self;
                if (objc_msgSend_count(v108, v109, v110) == v165)
                {
                  v113 = objc_msgSend_packageUUIDToExpectedProperties(v107, v111, v112);
                  v116 = objc_msgSend_UUID(v20, v114, v115);
                  objc_msgSend_objectForKeyedSubscript_(v113, v117, v116);
                  v118 = v159 = v84;
                  v120 = objc_msgSend_objectAtIndexedSubscript_(v118, v119, v28 + 1);
                  v123 = objc_msgSend_referenceSignature(v120, v121, v122);

                  v27 = v157;
                  v84 = v159;

                  v20 = v161;
                }

                else
                {
                  v123 = 0;
                }

                if (v123)
                {
                  objc_msgSend_setReferenceSignature_(v33, v124, v123);
                }

                else
                {
                  v126 = objc_msgSend_assetKey(v33, v124, v125);
                  v128 = objc_msgSend_referenceSignatureFromAssetKey_(CKDMMCS, v127, v126);
                  objc_msgSend_setReferenceSignature_(v33, v129, v128);
                }

                v12 = MEMORY[0x277CBC830];
                self = selfCopy;
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v130 = *v12;
                if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
                {
                  v132 = v130;
                  v135 = objc_msgSend_referenceSignature(v33, v133, v134);
                  *buf = v152;
                  v175 = v135;
                  v176 = 2112;
                  v177 = v33;
                  _os_log_debug_impl(&dword_22506F000, v132, OS_LOG_TYPE_DEBUG, "created asset key with reference identifier %@ for mmcs section %@", buf, 0x16u);
                }

                v29 = v164;
                v21 = v160;
              }

              else
              {
                v85 = objc_msgSend_useClearAssetEncryption(self, v61, v62);
                v86 = *MEMORY[0x277CBC880];
                if (v85)
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  itemsCopy = v155;
                  v144 = *v12;
                  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_22506F000, v144, OS_LOG_TYPE_ERROR, "clear asset key not supported for package sections.", buf, 2u);
                  }

                  v44 = 0;
                  goto LABEL_71;
                }

                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v87 = *v12;
                if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&dword_22506F000, v87, OS_LOG_TYPE_DEBUG, "skipping asset keys on section item because encryption is disabled", buf, 2u);
                }
              }

              if (objc_msgSend_paddedFileSize(v33, v88, v89))
              {
                objc_msgSend_addMMCSSectionItem_(*(&self->super.super.super.super.isa + v163), v131, v33);
              }

              if (v21 == ++v28)
              {
                goto LABEL_43;
              }
            }

            v44 = v30;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            itemsCopy = v155;
            v141 = *v12;
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v175 = v44;
              _os_log_error_impl(&dword_22506F000, v141, OS_LOG_TYPE_ERROR, "Error fetching package section: %@", buf, 0xCu);
            }

LABEL_72:

            v140 = 0;
            goto LABEL_73;
          }

LABEL_43:
          v136 = objc_msgSend_uploadTasksByPackages(self, v25, v26);
          v138 = objc_msgSend_objectForKey_(v136, v137, v20);

          objc_msgSend_setMMCSSectionItems_(v138, v139, v27);
          v9 = v154;
          itemsCopy = v155;
          v10 = v153;
          v11 = &OBJC_IVAR___CKDDeviceCapabilityUsageSQLEntry__IDString;
          v13 = v156;
        }

        ++v13;
      }

      while (v13 != v9);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v7, &v170, v178, 16);
      v140 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v140 = 1;
  }

LABEL_73:

  v146 = *MEMORY[0x277D85DE8];
  return v140;
}

- (void)_registerMMCSItems
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_container(self, a2, v2);
  v53 = objc_msgSend_MMCS(v4, v5, v6);

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = objc_msgSend_assetRegisterAndPutBatches(self->_assetRequestPlanner, v7, v8);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v60, v64, 16);
  if (v10)
  {
    v13 = v10;
    v54 = *v61;
    do
    {
      v14 = 0;
      do
      {
        if (*v61 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v60 + 1) + 8 * v14);
        v16 = objc_msgSend_allMMCSItems(v15, v11, v12);
        if (objc_msgSend_count(v16, v17, v18))
        {
          v21 = objc_msgSend_stateTransitionGroup(self, v19, v20);
          dispatch_group_enter(v21);

          v22 = [CKDMMCSItemGroupSet alloc];
          v24 = objc_msgSend_initWithItems_(v22, v23, v16);
          v27 = objc_msgSend_itemsGroups(v24, v25, v26);
          if (objc_msgSend_count(v27, v28, v29) != 1)
          {
            __assert_rtn("[CKDUploadAssetsOperation _registerMMCSItems]", "CKDUploadAssetsOperation.m", 791, "allItemGroups.count == 1");
          }

          if (objc_msgSend_isRereferenceAssetBatch(v15, v30, v31))
          {
            v34 = objc_msgSend_assetZone(v15, v32, v33);
            v37 = objc_msgSend_assetZoneKey(v34, v35, v36);
            v40 = objc_msgSend_cloneContext(v37, v38, v39);
            objc_msgSend_setCloneContext_(v24, v41, v40);

            v42 = 16;
          }

          else if (objc_msgSend_useMMCSEncryptionV2(v15, v32, v33))
          {
            v42 = 82;
          }

          else
          {
            v42 = 18;
          }

          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = sub_2251BE618;
          v55[3] = &unk_278548E78;
          v56 = v27;
          v57 = v15;
          selfCopy = self;
          v44 = v27;
          v46 = objc_msgSend_registerItemGroupSet_operation_options_completionHandler_(v53, v45, v24, self, v42, v55);
          v49 = objc_msgSend_cancelTokens(self, v47, v48);
          objc_msgSend_addCancelToken_withOperation_(v49, v50, v46, self);
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v43 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22506F000, v43, OS_LOG_TYPE_ERROR, "Skipping empty upload batch", buf, 2u);
          }
        }

        ++v14;
      }

      while (v13 != v14);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v60, v64, 16);
    }

    while (v13);
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (BOOL)_prepareForUpload
{
  v60 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_isCancelled(self, a2, v2) & 1) == 0)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v8 = objc_msgSend_assetsToUpload(self, v6, v7);
    v11 = objc_msgSend_count(v8, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v5, v12, v11);

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v16 = objc_msgSend_assetsToUpload(self, v14, v15, 0);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v51, v59, 16);
    if (v18)
    {
      v20 = v18;
      v21 = 0;
      v22 = *v52;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v24 = *(*(&v51 + 1) + 8 * i);
          v25 = objc_msgSend__prepareForUploadWithOperation_(v24, v19, self);
          isReference = objc_msgSend_isReference(v24, v26, v27);
          if (v25)
          {
            objc_msgSend_addObject_(v13, v28, v25);
          }

          v21 |= isReference;
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v51, v59, 16);
      }

      while (v20);
    }

    else
    {
      v21 = 0;
    }

    if (objc_msgSend_count(v13, v30, v31) || (v21 & 1) != 0)
    {
      if (objc_msgSend__planPackageSectionItemsForMMCSItems_(self, v32, v13))
      {
        objc_msgSend_resetAssetTokenRequests(self->_assetRequestPlanner, v38, v39);
        objc_msgSend_planRegisterBatches(self->_assetRequestPlanner, v40, v41);
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v42 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v47 = v42;
          v50 = objc_msgSend_operationID(self, v48, v49);
          *buf = 138412546;
          v56 = v13;
          v57 = 2114;
          v58 = v50;
          _os_log_debug_impl(&dword_22506F000, v47, OS_LOG_TYPE_DEBUG, "Registering MMCS items %@ for operation %{public}@", buf, 0x16u);
        }

        objc_msgSend__registerMMCSItems(self, v43, v44);
        v4 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v33 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v34 = v33;
        v37 = objc_msgSend_operationID(self, v35, v36);
        *buf = 138543362;
        v56 = v37;
        _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "No assets to upload for operation %{public}@", buf, 0xCu);
      }
    }

    v4 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v4 = 0;
LABEL_28:
  v45 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_failAllItemsInAssetBatch:(id)batch error:(id)error
{
  v57 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  errorCopy = error;
  if (!errorCopy)
  {
    __assert_rtn("[CKDUploadAssetsOperation _failAllItemsInAssetBatch:error:]", "CKDUploadAssetsOperation.m", 863, "error");
  }

  v10 = errorCopy;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = batchCopy;
  v11 = objc_msgSend_allRegularAndSectionAndRereferenceItems(batchCopy, v8, v9);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v44, v56, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v45;
    v43 = v11;
    do
    {
      v18 = 0;
      do
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v44 + 1) + 8 * v18);
        v20 = objc_msgSend_package(v19, v14, v15);
        v25 = objc_msgSend_asset(v19, v21, v22);
        if (v20)
        {
          v26 = objc_msgSend_uploadTasksByPackages(self, v23, v24);
          objc_msgSend_removeObjectForKey_(v26, v27, v20);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v28 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v32 = v28;
            v35 = objc_msgSend_operationID(self, v33, v34);
            *buf = 138413058;
            v49 = v19;
            v50 = 2112;
            v51 = v20;
            v52 = 2114;
            v53 = v35;
            v54 = 2112;
            v55 = v10;
            _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Failed MMCS item %@, package %@ and operation %{public}@: %@", buf, 0x2Au);

            v11 = v43;
          }

          objc_msgSend__didUploadAsset_error_(self, v29, v20, v10);
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v30 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v36 = v30;
            v39 = objc_msgSend_operationID(self, v37, v38);
            *buf = 138412802;
            v49 = v19;
            v50 = 2114;
            v51 = v39;
            v52 = 2112;
            v53 = v10;
            _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "Failed MMCS item %@ and operation %{public}@: %@", buf, 0x20u);

            v11 = v43;
          }

          objc_msgSend__didUploadAsset_error_(self, v31, v25, v10);
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v44, v56, 16);
    }

    while (v16);
  }

  objc_msgSend_failBatch_(self->_assetRequestPlanner, v40, v42);
  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)_didFetchUploadTokensForAssetTokenRequest:(id)request error:(id)error newError:(id *)newError
{
  v54 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v11 = objc_msgSend_assetBatches(request, v9, v10);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v48, v53, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v49;
    v18 = *MEMORY[0x277CBC120];
    v39 = *MEMORY[0x277CBC120];
    v40 = *v49;
    v19 = 1;
    v41 = v11;
    selfCopy = self;
    while (1)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v21 = *(*(&v48 + 1) + 8 * i);
        if (errorCopy)
        {
          v22 = errorCopy;
LABEL_9:
          v25 = v22;
          objc_msgSend__failAllItemsInAssetBatch_error_(self, v23, v21, v22);
LABEL_10:
          if (newError)
          {
            v26 = v25;
            v19 = 0;
            *newError = v25;
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_25;
        }

        v22 = objc_msgSend_firstMMCSItemError(*(*(&v48 + 1) + 8 * i), v14, v15);
        if (v22)
        {
          goto LABEL_9;
        }

        v43 = v19;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v27 = objc_msgSend_allRegularAndSectionAndRereferenceItems(v21, v23, v24);
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v44, v52, 16);
        if (v29)
        {
          v32 = v29;
          v33 = *v45;
LABEL_15:
          v34 = 0;
          while (1)
          {
            if (*v45 != v33)
            {
              objc_enumerationMutation(v27);
            }

            v35 = objc_msgSend_authToken(*(*(&v44 + 1) + 8 * v34), v30, v31);

            if (!v35)
            {
              break;
            }

            if (v32 == ++v34)
            {
              v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v44, v52, 16);
              if (v32)
              {
                goto LABEL_15;
              }

              goto LABEL_21;
            }
          }

          v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v30, v39, 1000, @"No authToken received for asset");

          if (!v25)
          {
            goto LABEL_24;
          }

          v11 = v41;
          self = selfCopy;
          v17 = v40;
          objc_msgSend__failAllItemsInAssetBatch_error_(selfCopy, v36, v21, v25);
          goto LABEL_10;
        }

LABEL_21:

        v25 = 0;
LABEL_24:
        v11 = v41;
        self = selfCopy;
        v17 = v40;
        v19 = v43;
LABEL_25:
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v48, v53, 16);
      if (!v16)
      {
        goto LABEL_29;
      }
    }
  }

  LOBYTE(v19) = 1;
LABEL_29:

  v37 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

- (BOOL)_fetchUploadTokens
{
  v170 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_atomic(self, a2, v2))
  {
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    obj = objc_msgSend_assetRegisterAndPutBatches(self->_assetRequestPlanner, v4, v5);
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v157, v169, 16);
    if (v7)
    {
      v10 = v7;
      v11 = 0;
      v12 = *v158;
      v13 = *MEMORY[0x277CBC120];
      v123 = *v158;
      do
      {
        v14 = 0;
        v125 = v10;
        do
        {
          if (*v158 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v130 = v14;
          v15 = *(*(&v157 + 1) + 8 * v14);
          if (objc_msgSend_isFailed(v15, v8, v9))
          {
            v16 = objc_msgSend_assetBatchesByZoneID(self->_assetRequestPlanner, v8, v9);
            v19 = objc_msgSend_assetZone(v15, v17, v18);
            v22 = objc_msgSend_assetZoneKey(v19, v20, v21);
            v25 = objc_msgSend_destinationZoneID(v22, v23, v24);
            v27 = objc_msgSend_objectForKeyedSubscript_(v16, v26, v25);

            v155 = 0u;
            v156 = 0u;
            v153 = 0u;
            v154 = 0u;
            v28 = v27;
            v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v153, v168, 16);
            if (v30)
            {
              v33 = v30;
              v34 = *v154;
              do
              {
                for (i = 0; i != v33; ++i)
                {
                  if (*v154 != v34)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v36 = *(*(&v153 + 1) + 8 * i);
                  if ((objc_msgSend_isFailed(v36, v31, v32) & 1) == 0)
                  {
                    if (!v11)
                    {
                      v11 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v31, v13, 1000, @"Atomic zone yo something in the batch failed.");;
                    }

                    objc_msgSend__failAllItemsInAssetBatch_error_(self, v31, v36, v11);
                  }
                }

                v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v153, v168, 16);
              }

              while (v33);
            }

            v12 = v123;
            v10 = v125;
          }

          v14 = v130 + 1;
        }

        while (v130 + 1 != v10);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v157, v169, 16);
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }
  }

  objc_msgSend_planAssetRequests(self->_assetRequestPlanner, v4, v5);
  hasSuccessfulAssetTokenRequests = objc_msgSend_hasSuccessfulAssetTokenRequests(self->_assetRequestPlanner, v37, v38);
  v42 = hasSuccessfulAssetTokenRequests;
  if (hasSuccessfulAssetTokenRequests)
  {
    v120 = hasSuccessfulAssetTokenRequests;
    v43 = objc_msgSend_uploadPreparationBlock(self, v40, v41);

    if (v43)
    {
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v121 = objc_msgSend_assetTokenRequests(self->_assetRequestPlanner, v44, v45);
      v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v46, &v149, v165, 16);
      if (v124)
      {
        v122 = *v150;
        do
        {
          v49 = 0;
          do
          {
            if (*v150 != v122)
            {
              objc_enumerationMutation(v121);
            }

            v126 = v49;
            v50 = *(*(&v149 + 1) + 8 * v49);
            v145 = 0u;
            v146 = 0u;
            v147 = 0u;
            v148 = 0u;
            obja = objc_msgSend_successfulBatches(v50, v47, v48);
            v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v51, &v145, v164, 16);
            if (v52)
            {
              v55 = v52;
              v131 = *v146;
              do
              {
                for (j = 0; j != v55; ++j)
                {
                  if (*v146 != v131)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v57 = *(*(&v145 + 1) + 8 * j);
                  v141 = 0u;
                  v142 = 0u;
                  v143 = 0u;
                  v144 = 0u;
                  v58 = objc_msgSend_allMMCSItems(v57, v53, v54);
                  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v141, v163, 16);
                  if (v60)
                  {
                    v63 = v60;
                    v64 = *v142;
                    do
                    {
                      for (k = 0; k != v63; ++k)
                      {
                        if (*v142 != v64)
                        {
                          objc_enumerationMutation(v58);
                        }

                        v66 = *(*(&v141 + 1) + 8 * k);
                        v67 = objc_msgSend_error(v66, v61, v62);

                        if (v67)
                        {
                          v76 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v68, v69);
                          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v76, v77, a2, self, @"CKDUploadAssetsOperation.m", 943, @"Expected nil error for %@", v66);
                        }

                        v70 = objc_msgSend_package(v66, v68, v69);
                        v73 = objc_msgSend_asset(v66, v71, v72);
                        v75 = v73;
                        if (v70)
                        {
                          objc_msgSend__didPrepareAsset_(self, v74, v70);
                        }

                        else
                        {
                          objc_msgSend__didPrepareAsset_(self, v74, v73);
                        }
                      }

                      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v141, v163, 16);
                    }

                    while (v63);
                  }

                  v139 = 0u;
                  v140 = 0u;
                  v137 = 0u;
                  v138 = 0u;
                  v80 = objc_msgSend_allRereferenceMMCSPackageItems(v57, v78, v79);
                  v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v81, &v137, v162, 16);
                  if (v82)
                  {
                    v85 = v82;
                    v86 = *v138;
                    do
                    {
                      for (m = 0; m != v85; ++m)
                      {
                        if (*v138 != v86)
                        {
                          objc_enumerationMutation(v80);
                        }

                        v88 = *(*(&v137 + 1) + 8 * m);
                        v89 = objc_msgSend_error(v88, v83, v84);

                        if (v89)
                        {
                          v98 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v90, v91);
                          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v98, v99, a2, self, @"CKDUploadAssetsOperation.m", 949, @"Expected nil error for %@", v88);
                        }

                        v92 = objc_msgSend_package(v88, v90, v91);
                        v95 = objc_msgSend_asset(v88, v93, v94);
                        v97 = v95;
                        if (v92)
                        {
                          objc_msgSend__didPrepareAsset_(self, v96, v92);
                        }

                        else
                        {
                          objc_msgSend__didPrepareAsset_(self, v96, v95);
                        }
                      }

                      v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v83, &v137, v162, 16);
                    }

                    while (v85);
                  }
                }

                v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v53, &v145, v164, 16);
              }

              while (v55);
            }

            v49 = v126 + 1;
          }

          while (v126 + 1 != v124);
          v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v47, &v149, v165, 16);
        }

        while (v124);
      }
    }

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v100 = objc_msgSend_assetTokenRequests(self->_assetRequestPlanner, v44, v45);
    v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v101, &v133, v161, 16);
    if (v102)
    {
      v105 = v102;
      v106 = *v134;
      do
      {
        for (n = 0; n != v105; ++n)
        {
          if (*v134 != v106)
          {
            objc_enumerationMutation(v100);
          }

          v108 = *(*(&v133 + 1) + 8 * n);
          if (objc_msgSend_hasSuccessfulBatches(v108, v103, v104))
          {
            v109 = objc_opt_new();
            objc_msgSend_setAssetTokenRequest_(v109, v110, v108);
            v111 = objc_opt_class();
            v132[0] = MEMORY[0x277D85DD0];
            v132[1] = 3221225472;
            v132[2] = sub_2251BF828;
            v132[3] = &unk_278548C48;
            v132[4] = self;
            v132[5] = v108;
            objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v112, v111, v109, v132);
          }
        }

        v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v103, &v133, v161, 16);
      }

      while (v105);
    }

    v42 = v120;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v113 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v116 = v113;
      v119 = objc_msgSend_operationID(self, v117, v118);
      *buf = 138543362;
      v167 = v119;
      _os_log_debug_impl(&dword_22506F000, v116, OS_LOG_TYPE_DEBUG, "No assets to upload for operation %{public}@", buf, 0xCu);
    }
  }

  v114 = *MEMORY[0x277D85DE8];
  return v42;
}

- (void)_didUploadMMCSSectionItem:(id)item task:(id)task error:(id)error
{
  v58 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  taskCopy = task;
  errorCopy = error;
  v13 = objc_msgSend_package(taskCopy, v11, v12);
  v16 = objc_msgSend_error(itemCopy, v14, v15);
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = errorCopy;
  }

  v19 = v18;

  if (v19)
  {
LABEL_15:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v38 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v41 = v38;
      v44 = objc_msgSend_operationID(self, v42, v43);
      *buf = 138413058;
      v50 = itemCopy;
      v51 = 2112;
      v52 = v13;
      v53 = 2114;
      v54 = v44;
      v55 = 2112;
      v56 = v19;
      _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Failed to upload MMCS section item %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);
    }

    objc_msgSend_setError_(taskCopy, v39, v19);
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v22 = objc_msgSend_sectionItems(itemCopy, v20, v21, 0);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v45, v57, 16);
    if (v24)
    {
      v27 = v24;
      v28 = *v46;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v46 != v28)
          {
            objc_enumerationMutation(v22);
          }

          v30 = objc_msgSend_error(*(*(&v45 + 1) + 8 * i), v25, v26);
          if (v30)
          {
            v19 = v30;

            goto LABEL_15;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v45, v57, 16);
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v33 = objc_msgSend_progressTracker(taskCopy, v31, v32);
    objc_msgSend_updateProgressWithItem_progress_(v33, v34, itemCopy, 1.0);
    v36 = v35;

    objc_msgSend__didMakeProgressForAsset_progress_(self, v37, v13, v36);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_didUploadMMCSSectionItems:(id)items task:(id)task error:(id)error
{
  v40 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  taskCopy = task;
  errorCopy = error;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v11, &v29, v39, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        if ((objc_msgSend_finished(v18, v13, v14) & 1) == 0)
        {
          objc_msgSend_setFinished_(v18, v13, 1);
          objc_msgSend__didUploadMMCSSectionItem_task_error_(self, v19, v18, taskCopy, errorCopy);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v13, &v29, v39, 16);
    }

    while (v15);
  }

  if (errorCopy)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v22 = v20;
      v25 = objc_msgSend_count(itemsCopy, v23, v24);
      v28 = objc_msgSend_operationID(self, v26, v27);
      *buf = 134218498;
      v34 = v25;
      v35 = 2114;
      v36 = v28;
      v37 = 2112;
      v38 = errorCopy;
      _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Failed to upload %lu MMCS section items for operation %{public}@: %@", buf, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_didMakeProgressForMMCSSectionItem:(id)item task:(id)task
{
  itemCopy = item;
  taskCopy = task;
  v9 = objc_msgSend_finished(itemCopy, v7, v8);
  v12 = objc_msgSend_error(itemCopy, v10, v11);
  v15 = v12;
  if (v9)
  {
    objc_msgSend__didUploadMMCSSectionItem_task_error_(self, v13, itemCopy, taskCopy, v12);
  }

  else if (!v12)
  {
    objc_msgSend_progress(itemCopy, v13, v14);
    if (v18 < 0.0)
    {
      goto LABEL_7;
    }

    v15 = objc_msgSend_package(taskCopy, v16, v17);
    v21 = objc_msgSend_progressTracker(taskCopy, v19, v20);
    objc_msgSend_progress(itemCopy, v22, v23);
    objc_msgSend_updateProgressWithItem_progress_(v21, v24, itemCopy);
    v26 = v25;

    objc_msgSend__didMakeProgressForAsset_progress_(self, v27, v15, v26);
  }

LABEL_7:
}

- (void)_uploadPackageSection:(id)section task:(id)task completionBlock:(id)block
{
  v144 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  taskCopy = task;
  blockCopy = block;
  v14 = objc_msgSend_container(self, v12, v13);
  v116 = objc_msgSend_MMCS(v14, v15, v16);

  v117 = objc_msgSend_package(taskCopy, v17, v18);
  v21 = objc_msgSend_MMCSSectionItems(taskCopy, v19, v20);
  v24 = objc_msgSend_sectionIndex(sectionCopy, v22, v23);
  if (!objc_msgSend_isCancelled(self, v25, v26))
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = sub_2251C09EC;
    v132[3] = &unk_278548EC8;
    v32 = v117;
    v133 = v32;
    selfCopy = self;
    v115 = v30;
    v135 = v115;
    v114 = v31;
    v136 = v114;
    v34 = objc_msgSend_enumerateItemsInSection_withBlock_(v32, v33, v24, v132);
    if (objc_msgSend_count(v21, v35, v36) <= v24)
    {
      v44 = MEMORY[0x277CBC560];
      v45 = objc_msgSend_count(v21, v37, v38);
      v47 = objc_msgSend_errorWithDomain_code_format_(v44, v46, *MEMORY[0x277CBC120], 1000, @"Invalid section %@ at index %lu/%lu", sectionCopy, v24, v45);
      objc_msgSend_setError_(taskCopy, v48, v47);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v49 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v93 = v49;
        v96 = objc_msgSend_count(v21, v94, v95);
        *location = 134218498;
        *&location[4] = v24;
        v138 = 2048;
        v139 = v96;
        v140 = 2112;
        v141 = sectionCopy;
        _os_log_error_impl(&dword_22506F000, v93, OS_LOG_TYPE_ERROR, "Invalid section index %lu/%lu for section %@", location, 0x20u);
      }

      if (blockCopy)
      {
        blockCopy[2](blockCopy);
      }

      goto LABEL_34;
    }

    v113 = objc_msgSend_objectAtIndex_(v21, v37, v24);
    v131 = 0;
    v40 = objc_msgSend_size_(sectionCopy, v39, &v131);
    v41 = v131;
    v112 = v41;
    if (v41)
    {
      objc_msgSend_setError_(taskCopy, v42, v41);
      if (!blockCopy)
      {
LABEL_33:

LABEL_34:
        goto LABEL_35;
      }
    }

    else if (v40 == objc_msgSend_fileSize(v113, v42, v43) && (objc_msgSend_signature(sectionCopy, v50, v51), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend_signature(v113, v53, v54), v55 = objc_claimAutoreleasedReturnValue(), group = objc_msgSend_isEqualToData_(v52, v56, v55), v55, v52, (group & 1) != 0))
    {
      v57 = CKCreateGUID();
      objc_msgSend_setPutPackageSectionIdentifier_(v113, v58, v57);

      objc_msgSend_setSectionItems_(v113, v59, v115);
      if ((objc_msgSend_useEncryption(self, v60, v61) & 1) != 0 || objc_msgSend_useClearAssetEncryption(self, v62, v63))
      {
        if (objc_msgSend_fileSize(v113, v62, v63))
        {
          v64 = objc_msgSend_referenceSignature(v113, v62, v63);
          v65 = v64 == 0;

          if (v65)
          {
            v66 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v62, v63);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v66, v67, a2, self, @"CKDUploadAssetsOperation.m", 1101, @"Expected non-nil reference signature for %@", v113);
          }
        }
      }

      if (objc_msgSend_fileSize(v113, v62, v63))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v70 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v104 = v70;
          v107 = objc_msgSend_operationID(self, v105, v106);
          *location = 138413058;
          *&location[4] = v113;
          v138 = 2048;
          v139 = v24;
          v140 = 2112;
          v141 = v32;
          v142 = 2114;
          v143 = v107;
          _os_log_debug_impl(&dword_22506F000, v104, OS_LOG_TYPE_DEBUG, "Uploading MMCS section item %@ at index %lu for package %@ and operation %{public}@", location, 0x2Au);
        }

        v71 = dispatch_group_create();
        dispatch_group_enter(v71);
        objc_initWeak(location, self);
        v74 = objc_msgSend_MMCSRequestOptions(taskCopy, v72, v73);
        v128[0] = MEMORY[0x277D85DD0];
        v128[1] = 3221225472;
        v128[2] = sub_2251C0B7C;
        v128[3] = &unk_278548EF0;
        objc_copyWeak(&v130, location);
        v129 = taskCopy;
        v122[0] = MEMORY[0x277D85DD0];
        v122[1] = 3221225472;
        v122[2] = sub_2251C0BDC;
        v122[3] = &unk_278548F18;
        v123 = v113;
        v124 = v114;
        selfCopy2 = self;
        v75 = v129;
        v126 = v75;
        groupa = v71;
        v127 = groupa;
        v77 = objc_msgSend_putSectionItem_operation_options_progress_completionHandler_(v116, v76, v123, self, v74, v128, v122);

        v80 = objc_msgSend_cancelTokens(v75, v78, v79);
        objc_msgSend_addCancelToken_withOperation_(v80, v81, v77, self);

        objc_msgSend_qualityOfService(self, v82, v83);
        v84 = CKGetGlobalQueue();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2251C0CC4;
        block[3] = &unk_278546C30;
        v119 = v75;
        v120 = v77;
        v121 = blockCopy;
        v85 = v77;
        dispatch_group_notify(groupa, v84, block);

        objc_destroyWeak(&v130);
        objc_destroyWeak(location);

        goto LABEL_33;
      }

      if (objc_msgSend_count(v115, v68, v69))
      {
        v108 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v97, v98);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v108, v109, a2, self, @"CKDUploadAssetsOperation.m", 1104, @"Expected 0 non-empty items in the empty section %@", v113);
      }

      objc_msgSend_setSectionItems_(v113, v97, v114);
      objc_msgSend__didUploadMMCSSectionItem_task_error_(self, v99, v113, taskCopy, 0);
      if (!blockCopy)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v86 = MEMORY[0x277CBC560];
      v87 = objc_msgSend_count(v21, v50, v51);
      v89 = objc_msgSend_errorWithDomain_code_format_(v86, v88, *MEMORY[0x277CBC120], 1000, @"Invalid section %@ at index %lu/%lu", sectionCopy, v24, v87);
      objc_msgSend_setError_(taskCopy, v90, v89);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v91 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v100 = v91;
        v103 = objc_msgSend_count(v21, v101, v102);
        *location = 134218754;
        *&location[4] = v24;
        v138 = 2048;
        v139 = v103;
        v140 = 2112;
        v141 = sectionCopy;
        v142 = 2112;
        v143 = v113;
        _os_log_error_impl(&dword_22506F000, v100, OS_LOG_TYPE_ERROR, "Invalid section at index %lu/%lu for section %@: %@", location, 0x2Au);
      }

      if (!blockCopy)
      {
        goto LABEL_33;
      }
    }

    blockCopy[2](blockCopy);
    goto LABEL_33;
  }

  v28 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, *MEMORY[0x277CBC120], 1, @"Operation was cancelled");
  objc_msgSend_setError_(taskCopy, v29, v28);

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

LABEL_35:

  v92 = *MEMORY[0x277D85DE8];
}

- (void)_uploadPackageSectionsWithEnumerator:(id)enumerator task:(id)task completionBlock:(id)block
{
  enumeratorCopy = enumerator;
  taskCopy = task;
  blockCopy = block;
  v13 = objc_msgSend_error(taskCopy, v11, v12);

  if (v13 || (objc_msgSend_nextObject(enumeratorCopy, v14, v15), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    v17 = v16;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2251C0E68;
    v19[3] = &unk_2785488E0;
    v19[4] = self;
    v20 = enumeratorCopy;
    v21 = taskCopy;
    v22 = blockCopy;
    objc_msgSend__uploadPackageSection_task_completionBlock_(self, v18, v17, v21, v19);
  }
}

- (void)_uploadPackageSectionsWithTask:(id)task completionBlock:(id)block
{
  v87 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  blockCopy = block;
  v10 = objc_msgSend_package(taskCopy, v8, v9);
  v13 = objc_msgSend_MMCSSectionItems(taskCopy, v11, v12);
  v16 = objc_msgSend_sectionCount(v10, v14, v15);
  if (objc_msgSend_isCancelled(self, v17, v18))
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 1, @"Operation was cancelled");
    goto LABEL_16;
  }

  if (v16 == objc_msgSend_count(v13, v19, v20))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v64 = v23;
      v67 = objc_msgSend_operationID(self, v65, v66);
      *buf = 138412802;
      v80 = v13;
      v81 = 2112;
      v82 = v10;
      v83 = 2114;
      v84 = v67;
      _os_log_debug_impl(&dword_22506F000, v64, OS_LOG_TYPE_DEBUG, "Uploading MMCS section items %@ for package %@ and operation %{public}@", buf, 0x20u);
    }

    v74 = v13;
    v24 = objc_alloc(MEMORY[0x277CBEB18]);
    v27 = objc_msgSend_initWithCapacity_(v24, v25, v16);
    v28 = 0;
    if (!v16)
    {
LABEL_12:
      v33 = [CKDMMCSRequestOptions alloc];
      selfCopy = self;
      v35 = objc_msgSend_initWithOperation_(v33, v34, self);
      v38 = objc_msgSend_record(v10, v36, v37);
      v41 = objc_msgSend_recordID(v38, v39, v40);
      v44 = objc_msgSend_zoneID(v41, v42, v43);
      v47 = objc_msgSend_zoneName(v44, v45, v46);

      if (v47)
      {
        v78 = v47;
        v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, &v78, 1);
        objc_msgSend_setZoneNames_(v35, v50, v49);
      }

      objc_msgSend_setMMCSRequestOptions_(taskCopy, v48, v35);
      v53 = objc_msgSend_objectEnumerator(v27, v51, v52);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = sub_2251C1368;
      v75[3] = &unk_2785456A0;
      v76 = blockCopy;
      objc_msgSend__uploadPackageSectionsWithEnumerator_task_completionBlock_(selfCopy, v54, v53, taskCopy, v75);

      v13 = v74;
      goto LABEL_23;
    }

    v29 = 0;
    while (1)
    {
      v30 = v28;
      v77 = v28;
      v31 = objc_msgSend_sectionAtIndex_error_(v10, v26, v29, &v77);
      v28 = v77;

      if (!v31)
      {
        break;
      }

      objc_msgSend_addObject_(v27, v32, v31);

      if (v16 == ++v29)
      {
        goto LABEL_12;
      }
    }

    v60 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v32, *MEMORY[0x277CBC120], 1000, @"Can't find section at index %lu: %@", v29, v28);
    objc_msgSend_setError_(taskCopy, v61, v60);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = v74;
    v62 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v68 = v62;
      v71 = objc_msgSend_operationID(self, v69, v70);
      *buf = 134218754;
      v80 = v29;
      v81 = 2112;
      v82 = v10;
      v83 = 2114;
      v84 = v71;
      v85 = 2114;
      v86 = v28;
      _os_log_error_impl(&dword_22506F000, v68, OS_LOG_TYPE_ERROR, "Can't find section at index %lu for package %@ and operation %{public}@: %{public}@", buf, 0x2Au);

      if (!blockCopy)
      {
        goto LABEL_23;
      }
    }

    else if (!blockCopy)
    {
LABEL_23:

      goto LABEL_24;
    }

    blockCopy[2](blockCopy);
    goto LABEL_23;
  }

  v55 = MEMORY[0x277CBC560];
  v56 = *MEMORY[0x277CBC120];
  v72 = objc_msgSend_count(v13, v21, v22);
  objc_msgSend_errorWithDomain_code_format_(v55, v57, v56, 1000, @"Invalid section count %lu/%lu", v16, v72);
  v58 = LABEL_16:;
  objc_msgSend_setError_(taskCopy, v59, v58);

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

LABEL_24:

  v63 = *MEMORY[0x277D85DE8];
}

- (void)_uploadPackageSectionsWithPendingTasks:(id)tasks uploadingTasks:(id)uploadingTasks completedTasks:(id)completedTasks
{
  tasksCopy = tasks;
  uploadingTasksCopy = uploadingTasks;
  completedTasksCopy = completedTasks;
  if (!objc_msgSend_maxPackageUploadsPerBatch(self, v12, v13))
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDUploadAssetsOperation.m", 1191, @"Expected non-0 maxPackageUploadsPerBatch");
  }

  v16 = objc_msgSend_count(uploadingTasksCopy, v14, v15);
  if (v16 > objc_msgSend_maxPackageUploadsPerBatch(self, v17, v18))
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKDUploadAssetsOperation.m", 1192, @"Expected max uploading tasks: %@", uploadingTasksCopy);

    if (!completedTasksCopy)
    {
      goto LABEL_7;
    }
  }

  else if (!completedTasksCopy)
  {
    goto LABEL_7;
  }

  if (!objc_msgSend_count(completedTasksCopy, v19, v20))
  {
    v29 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, a2, self, @"CKDUploadAssetsOperation.m", 1193, @"Expected completed tasks: %@", completedTasksCopy);
  }

LABEL_7:
  v21 = objc_msgSend_queue(self, v19, v20);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251C157C;
  block[3] = &unk_2785463D0;
  v32 = uploadingTasksCopy;
  v33 = completedTasksCopy;
  selfCopy = self;
  v35 = tasksCopy;
  v22 = tasksCopy;
  v23 = completedTasksCopy;
  v24 = uploadingTasksCopy;
  dispatch_async(v21, block);
}

- (void)_didUploadMMCSItem:(id)item error:(id)error
{
  v79 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  errorCopy = error;
  v11 = objc_msgSend_error(itemCopy, v9, v10);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = errorCopy;
  }

  v14 = v13;

  v17 = objc_msgSend_package(itemCopy, v15, v16);
  v22 = objc_msgSend_asset(itemCopy, v18, v19);
  if (v14)
  {
    v23 = *MEMORY[0x277CBC878];
    v24 = *MEMORY[0x277CBC880];
    if (v17)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v23);
      }

      v25 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v61 = v25;
        v64 = objc_msgSend_operationID(self, v62, v63);
        *buf = 138413058;
        v72 = itemCopy;
        v73 = 2112;
        v74 = v17;
        v75 = 2114;
        v76 = v64;
        v77 = 2112;
        v78 = v14;
        _os_log_debug_impl(&dword_22506F000, v61, OS_LOG_TYPE_DEBUG, "Failed to upload MMCS item %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);
      }

      v28 = objc_msgSend_uploadTasksByPackages(self, v26, v27);
      v30 = objc_msgSend_objectForKey_(v28, v29, v17);

      objc_msgSend_setError_(v30, v31, v14);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v23);
      }

      v45 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v65 = v45;
        v68 = objc_msgSend_operationID(self, v66, v67);
        *buf = 138412802;
        v72 = itemCopy;
        v73 = 2114;
        v74 = v68;
        v75 = 2112;
        v76 = v14;
        _os_log_debug_impl(&dword_22506F000, v65, OS_LOG_TYPE_DEBUG, "Failed to upload MMCS item %@ for operation %{public}@: %@", buf, 0x20u);
      }

      objc_msgSend__didUploadAsset_error_(self, v46, v22, v14);
    }
  }

  else
  {
    v32 = objc_msgSend_fileSize(itemCopy, v20, v21);
    if (v17)
    {
      if (!v32)
      {
        v69 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v33, v34);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v69, v70, a2, self, @"CKDUploadAssetsOperation.m", 1244, @"Expected non-0 size for the manifest for package %@", v17);
      }

      v35 = objc_msgSend_uploadTasksByPackages(self, v33, v34);
      v37 = objc_msgSend_objectForKey_(v35, v36, v17);

      v40 = objc_msgSend_progressTracker(v37, v38, v39);
      objc_msgSend_updateProgressWithItem_progress_(v40, v41, itemCopy, 1.0);
      v43 = v42;

      objc_msgSend__didMakeProgressForAsset_progress_(self, v44, v17, v43);
    }

    else
    {
      if (v32)
      {
        v47 = objc_msgSend_uploadReceipt(itemCopy, v33, v34);
        objc_msgSend_setUploadReceipt_(v22, v48, v47);
        objc_msgSend_setUploaded_(v22, v49, v47 != 0);
      }

      else
      {
        objc_msgSend_setUploadReceipt_(v22, v33, 0);
      }

      objc_msgSend_uploadReceiptExpiration(itemCopy, v50, v51);
      objc_msgSend_setUploadReceiptExpiration_(v22, v52, v53);
      v56 = objc_msgSend_paddedFileSize(itemCopy, v54, v55);
      objc_msgSend_setPaddedFileSize_(v22, v57, v56);
      objc_msgSend__didMakeProgressForAsset_progress_(self, v58, v22, 1.0);
      objc_msgSend__didUploadAsset_error_(self, v59, v22, 0);
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)_collectMetricsFromMMCSOperationMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (objc_msgSend_count(metricsCopy, v5, v6))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2251C1DF4;
    v8[3] = &unk_2785487F8;
    v9 = metricsCopy;
    objc_msgSend_updateMMCSMetrics_(self, v7, v8);
  }
}

- (void)_collectMetricsFromCompletedItemGroup:(id)group
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_metrics(group, a2, group);
  v6 = v4;
  if (v4)
  {
    v10[0] = v4;
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v10, 1);
    objc_msgSend__collectMetricsFromMMCSOperationMetrics_(self, v8, v7);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_collectMetricsFromCompletedItemGroupSet:(id)set
{
  v4 = objc_msgSend_itemsGroups(set, a2, set);
  v7 = objc_msgSend_CKCompactMap_(v4, v5, &unk_28385D4A0);

  objc_msgSend__collectMetricsFromMMCSOperationMetrics_(self, v6, v7);
}

- (void)_didUploadMMCSItems:(id)items error:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  errorCopy = error;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v8, &v26, v36, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        if ((objc_msgSend_finished(v15, v10, v11) & 1) == 0)
        {
          objc_msgSend_setFinished_(v15, v10, 1);
          objc_msgSend__didUploadMMCSItem_error_(self, v16, v15, errorCopy);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v10, &v26, v36, 16);
    }

    while (v12);
  }

  if (errorCopy)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v19 = v17;
      v22 = objc_msgSend_count(itemsCopy, v20, v21);
      v25 = objc_msgSend_operationID(self, v23, v24);
      *buf = 134218498;
      v31 = v22;
      v32 = 2114;
      v33 = v25;
      v34 = 2112;
      v35 = errorCopy;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Failed to upload %lu MMCS items for operation %{public}@: %@", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_didMakeProgressForMMCSItem:(id)item
{
  itemCopy = item;
  v6 = objc_msgSend_finished(itemCopy, v4, v5);
  v9 = objc_msgSend_error(itemCopy, v7, v8);
  v12 = v9;
  if (v6)
  {
    objc_msgSend__didUploadMMCSItem_error_(self, v10, itemCopy, v9);
  }

  else if (!v9)
  {
    objc_msgSend_progress(itemCopy, v10, v11);
    if (v15 < 0.0)
    {
      goto LABEL_10;
    }

    v12 = objc_msgSend_package(itemCopy, v13, v14);
    if (v12)
    {
      v18 = objc_msgSend_uploadTasksByPackages(self, v16, v17);
      v20 = objc_msgSend_objectForKey_(v18, v19, v12);

      v23 = objc_msgSend_progressTracker(v20, v21, v22);
      objc_msgSend_progress(itemCopy, v24, v25);
      objc_msgSend_updateProgressWithItem_progress_(v23, v26, itemCopy);
      v28 = v27;

      objc_msgSend__didMakeProgressForAsset_progress_(self, v29, v12, v28);
    }

    else
    {
      v20 = objc_msgSend_asset(itemCopy, v16, v17);
      objc_msgSend_progress(itemCopy, v30, v31);
      objc_msgSend__didMakeProgressForAsset_progress_(self, v32, v20, v33);
    }
  }

LABEL_10:
}

- (void)_didUploadPackageWithTask:(id)task
{
  v166 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v7 = objc_msgSend_package(taskCopy, v5, v6);
  v10 = objc_msgSend_error(taskCopy, v8, v9);

  if (v10)
  {
    objc_msgSend_setUploaded_(v7, v11, 0);
    objc_msgSend_setAssets_(v7, v13, 0);
    v16 = objc_msgSend_error(taskCopy, v14, v15);
    objc_msgSend__didUploadAsset_error_(self, v17, v7, v16);

    goto LABEL_46;
  }

  v18 = objc_msgSend_MMCSSectionItems(taskCopy, v11, v12);
  v21 = objc_msgSend_MMCSManifestItem(taskCopy, v19, v20);
  v24 = objc_msgSend_record(v7, v22, v23);
  v27 = objc_msgSend_count(v18, v25, v26);
  v28 = objc_alloc(MEMORY[0x277CBEB18]);
  v159 = objc_msgSend_initWithCapacity_(v28, v29, v27 + 1);
  v30 = objc_alloc(MEMORY[0x277CBC190]);
  inited = objc_msgSend_initInternal(v30, v31, v32);
  objc_msgSend_setRecord_(inited, v34, v24);
  v35 = v7;
  v38 = objc_msgSend_recordKey(v7, v36, v37);
  objc_msgSend_setRecordKey_(inited, v39, v38);

  v42 = objc_msgSend_signature(v21, v40, v41);
  objc_msgSend_setSignature_(inited, v43, v42);

  v46 = objc_msgSend_fileSize(v21, v44, v45);
  objc_msgSend_setSize_(inited, v47, v46);
  v50 = objc_msgSend_paddedFileSize(v21, v48, v49);
  objc_msgSend_setPaddedFileSize_(inited, v51, v50);
  v54 = objc_msgSend_uploadReceipt(v21, v52, v53);
  objc_msgSend_setUploadReceipt_(inited, v55, v54);

  objc_msgSend_uploadReceiptExpiration(v21, v56, v57);
  objc_msgSend_setUploadReceiptExpiration_(inited, v58, v59);
  v62 = objc_msgSend_uploadReceipt(v21, v60, v61);
  objc_msgSend_setUploaded_(inited, v63, v62 != 0);

  v66 = objc_msgSend_useEncryption(self, v64, v65);
  v69 = MEMORY[0x277CBC878];
  v70 = MEMORY[0x277CBC880];
  v156 = v21;
  v157 = taskCopy;
  if (v66)
  {
    v71 = objc_msgSend_assetKey(v21, v67, v68);
    objc_msgSend_setAssetKey_(inited, v72, v71);

    v75 = objc_msgSend_assetKey(inited, v73, v74);
    v77 = objc_msgSend_referenceSignatureFromAssetKey_(CKDMMCS, v76, v75);
    objc_msgSend_setReferenceSignature_(inited, v78, v77);
  }

  else
  {
    v80 = objc_msgSend_useClearAssetEncryption(self, v67, v68);
    v81 = *v69;
    v82 = *v70;
    if (v80)
    {
      if (*v70 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v81);
      }

      v83 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22506F000, v83, OS_LOG_TYPE_ERROR, "Clear Asset Key Not Supported For Package Manifests.", buf, 2u);
      }
    }

    else
    {
      if (*v70 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v81);
      }

      v84 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v84, OS_LOG_TYPE_DEBUG, "Skipping asset keys on manifest item because encryption is disabled", buf, 2u);
      }
    }
  }

  objc_msgSend_addObject_(v159, v79, inited);
  v155 = inited;
  v87 = objc_msgSend_uploaded(inited, v85, v86);
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  obj = v18;
  v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v88, &v160, v165, 16);
  if (v89)
  {
    v90 = v89;
    v91 = *v161;
    do
    {
      v92 = 0;
      do
      {
        if (*v161 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v93 = *(*(&v160 + 1) + 8 * v92);
        v94 = objc_alloc(MEMORY[0x277CBC190]);
        v97 = objc_msgSend_initInternal(v94, v95, v96);
        objc_msgSend_setRecord_(v97, v98, v24);
        v101 = objc_msgSend_recordKey(v35, v99, v100);
        objc_msgSend_setRecordKey_(v97, v102, v101);

        v105 = objc_msgSend_signature(v93, v103, v104);
        objc_msgSend_setSignature_(v97, v106, v105);

        v109 = objc_msgSend_fileSize(v93, v107, v108);
        objc_msgSend_setSize_(v97, v110, v109);
        v113 = objc_msgSend_paddedFileSize(v93, v111, v112);
        objc_msgSend_setPaddedFileSize_(v97, v114, v113);
        if (objc_msgSend_fileSize(v93, v115, v116))
        {
          v119 = objc_msgSend_uploadReceipt(v93, v117, v118);
          objc_msgSend_setUploadReceipt_(v97, v120, v119);
        }

        else
        {
          objc_msgSend_setUploadReceipt_(v97, v117, 0);
        }

        objc_msgSend_uploadReceiptExpiration(v93, v121, v122);
        objc_msgSend_setUploadReceiptExpiration_(v97, v123, v124);
        if (objc_msgSend_useEncryption(self, v125, v126))
        {
          v129 = objc_msgSend_assetKey(v93, v127, v128);
          objc_msgSend_setAssetKey_(v97, v130, v129);

          v133 = objc_msgSend_referenceSignature(v93, v131, v132);
          objc_msgSend_setReferenceSignature_(v97, v134, v133);
        }

        else
        {
          v137 = objc_msgSend_useClearAssetEncryption(self, v127, v128);
          v138 = *MEMORY[0x277CBC878];
          v139 = *MEMORY[0x277CBC880];
          if (v137)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v138);
            }

            v140 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22506F000, v140, OS_LOG_TYPE_ERROR, "Clear Asset Key Not Supported For Package Section.", buf, 2u);
            }
          }

          else
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v138);
            }

            v141 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_22506F000, v141, OS_LOG_TYPE_DEBUG, "Skipping asset keys on section item because encryption is disabled", buf, 2u);
            }
          }
        }

        if (objc_msgSend_fileSize(v93, v135, v136))
        {
          v144 = objc_msgSend_uploadReceipt(v93, v142, v143);
          objc_msgSend_setUploaded_(v97, v145, v144 != 0);

          if (v87)
          {
            goto LABEL_35;
          }
        }

        else
        {
          objc_msgSend_setUploaded_(v97, v142, 1);
          if (v87)
          {
LABEL_35:
            v87 = objc_msgSend_uploaded(v97, v146, v147);
            goto LABEL_38;
          }
        }

        v87 = 0;
LABEL_38:
        if (objc_msgSend_fileSize(v93, v146, v147))
        {
          objc_msgSend_addObject_(v159, v148, v97);
        }

        ++v92;
      }

      while (v90 != v92);
      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v149, &v160, v165, 16);
    }

    while (v90);
  }

  if (v87)
  {
    v151 = v159;
  }

  else
  {
    v151 = 0;
  }

  v7 = v35;
  objc_msgSend_setAssets_(v35, v150, v151);
  objc_msgSend_setUploaded_(v35, v152, v87);
  objc_msgSend__didUploadAsset_error_(self, v153, v35, 0);

  taskCopy = v157;
LABEL_46:

  v154 = *MEMORY[0x277D85DE8];
}

- (BOOL)_upload
{
  v287 = *MEMORY[0x277D85DE8];
  hasSuccessfulBatches = objc_msgSend_hasSuccessfulBatches(self->_assetRequestPlanner, a2, v2);
  if (hasSuccessfulBatches)
  {
    v6 = objc_msgSend_container(self, v4, v5);
    v225 = objc_msgSend_MMCS(v6, v7, v8);

    group = dispatch_group_create();
    dispatch_group_enter(group);
    v11 = objc_msgSend_stateTransitionGroup(self, v9, v10);
    dispatch_group_enter(v11);

    objc_msgSend_qualityOfService(self, v12, v13);
    v14 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251C3768;
    block[3] = &unk_278545A00;
    block[4] = self;
    dispatch_group_notify(group, v14, block);

    v274 = 0u;
    v275 = 0u;
    v272 = 0u;
    v273 = 0u;
    obj = objc_msgSend_assetRegisterAndPutBatches(self->_assetRequestPlanner, v15, v16);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v272, v286, 16);
    if (v20)
    {
      v238 = *v273;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v273 != v238)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v272 + 1) + 8 * i);
          if ((objc_msgSend_isFailed(v22, v18, v19, v225) & 1) == 0)
          {
            v270 = 0u;
            v271 = 0u;
            v268 = 0u;
            v269 = 0u;
            v23 = objc_msgSend_allMMCSAndSectionItems(v22, v18, v19);
            v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v268, v285, 16);
            if (v27)
            {
              v28 = *v269;
              do
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v269 != v28)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v32 = objc_msgSend_package(*(*(&v268 + 1) + 8 * j), v25, v26);
                  if (v32)
                  {
                    v33 = objc_msgSend_uploadTasksByPackages(self, v30, v31);
                    v35 = objc_msgSend_objectForKey_(v33, v34, v32);

                    v38 = objc_msgSend_group(v35, v36, v37);
                    dispatch_group_enter(v38);
                  }
                }

                v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v268, v285, 16);
              }

              while (v27);
            }
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v272, v286, 16);
      }

      while (v20);
    }

    v41 = objc_msgSend_uploadTasksByPackages(self, v39, v40);
    v44 = objc_msgSend_count(v41, v42, v43);

    if (v44)
    {
      v47 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v45, v46);
      v49 = objc_msgSend_maxPackageUploadsPerBatchWithDefaultValue_(v47, v48, 6);

      if (v49 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v49;
      }

      if (v51 >= 0x64)
      {
        objc_msgSend_setMaxPackageUploadsPerBatch_(self, v50, 100, v225);
      }

      else
      {
        objc_msgSend_setMaxPackageUploadsPerBatch_(self, v50, v51, v225);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v52 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v221 = v52;
        v224 = objc_msgSend_maxPackageUploadsPerBatch(self, v222, v223);
        *location = 134218240;
        *&location[4] = v224;
        v283 = 2048;
        v284 = v49;
        _os_log_debug_impl(&dword_22506F000, v221, OS_LOG_TYPE_DEBUG, "maxPackageUploadsPerBatch:%lu (%lu)", location, 0x16u);
      }

      v53 = objc_alloc(MEMORY[0x277CBEB18]);
      v56 = objc_msgSend_uploadTasksByPackages(self, v54, v55);
      v59 = objc_msgSend_count(v56, v57, v58);
      v61 = objc_msgSend_initWithCapacity_(v53, v60, v59);

      v62 = objc_alloc(MEMORY[0x277CBEB18]);
      v65 = objc_msgSend_maxPackageUploadsPerBatch(self, v63, v64);
      obja = objc_msgSend_initWithCapacity_(v62, v66, v65);
      v69 = objc_msgSend_uploadTasksByPackages(self, v67, v68);
      v72 = objc_msgSend_objectEnumerator(v69, v70, v71);
      v75 = objc_msgSend_allObjects(v72, v73, v74);
      v77 = objc_msgSend_sortedArrayUsingComparator_(v75, v76, &unk_28385D500);

      v266 = 0u;
      v267 = 0u;
      v264 = 0u;
      v265 = 0u;
      v239 = v77;
      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v239, v78, &v264, v281, 16);
      if (v79)
      {
        v80 = *v265;
        do
        {
          for (k = 0; k != v79; ++k)
          {
            if (*v265 != v80)
            {
              objc_enumerationMutation(v239);
            }

            v82 = *(*(&v264 + 1) + 8 * k);
            dispatch_group_enter(group);
            objc_msgSend_addObject_(v61, v83, v82);
            v86 = objc_msgSend_group(v82, v84, v85);
            dispatch_group_enter(v86);

            v89 = objc_msgSend_group(v82, v87, v88);
            v92 = objc_msgSend_queue(self, v90, v91);
            v262[0] = MEMORY[0x277D85DD0];
            v262[1] = 3221225472;
            v262[2] = sub_2251C37D0;
            v262[3] = &unk_278546990;
            v262[4] = self;
            v262[5] = v82;
            v263 = group;
            dispatch_group_notify(v89, v92, v262);
          }

          v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v239, v93, &v264, v281, 16);
        }

        while (v79);
      }

      objc_msgSend__uploadPackageSectionsWithPendingTasks_uploadingTasks_completedTasks_(self, v94, v61, obja, 0);
    }

    v260 = 0u;
    v261 = 0u;
    v258 = 0u;
    v259 = 0u;
    v227 = objc_msgSend_assetRegisterAndPutBatches(self->_assetRequestPlanner, v45, v46, v225);
    v230 = objc_msgSend_countByEnumeratingWithState_objects_count_(v227, v95, &v258, v280, 16);
    if (v230)
    {
      v228 = *v259;
      do
      {
        for (m = 0; m != v230; ++m)
        {
          if (*v259 != v228)
          {
            objc_enumerationMutation(v227);
          }

          v232 = *(*(&v258 + 1) + 8 * m);
          v233 = objc_msgSend_allMMCSItems(v232, v96, v97);
          if (!objc_msgSend_count(v233, v98, v99))
          {
            goto LABEL_83;
          }

          isFailed = objc_msgSend_isFailed(v232, v100, v101);

          if (isFailed)
          {
            continue;
          }

          dispatch_group_enter(group);
          v103 = [CKDMMCSItemGroupSet alloc];
          v106 = objc_msgSend_allMMCSItems(v232, v104, v105);
          v233 = objc_msgSend_initWithItems_(v103, v107, v106);

          if (_os_feature_enabled_impl())
          {
            v110 = objc_msgSend_allMMCSItems(v232, v108, v109);
            v112 = objc_msgSend_CKFilter_(v110, v111, &unk_28385D4C0);

            if (objc_msgSend_count(v112, v113, v114))
            {
              objc_msgSend__didUploadMMCSItems_error_(self, v115, v112, 0);
              v256 = 0u;
              v257 = 0u;
              v254 = 0u;
              v255 = 0u;
              v117 = v112;
              v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v118, &v254, v279, 16);
              if (v121)
              {
                v122 = *v255;
                do
                {
                  for (n = 0; n != v121; ++n)
                  {
                    if (*v255 != v122)
                    {
                      objc_enumerationMutation(v117);
                    }

                    v126 = objc_msgSend_package(*(*(&v254 + 1) + 8 * n), v119, v120);
                    if (v126)
                    {
                      v127 = objc_msgSend_uploadTasksByPackages(self, v124, v125);
                      v129 = objc_msgSend_objectForKey_(v127, v128, v126);

                      v132 = objc_msgSend_group(v129, v130, v131);
                      dispatch_group_leave(v132);
                    }
                  }

                  v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v119, &v254, v279, 16);
                }

                while (v121);
              }
            }

            v133 = objc_msgSend_allMMCSItems(v232, v115, v116);
            v135 = objc_msgSend_CKFilter_(v133, v134, &unk_28385D4E0);

            if (!objc_msgSend_count(v135, v136, v137))
            {
              goto LABEL_82;
            }

            v138 = [CKDMMCSItemGroupSet alloc];
            v140 = objc_msgSend_initWithItems_(v138, v139, v135);

            v233 = v140;
          }

          v141 = objc_msgSend_assetZone(v232, v108, v109);
          v144 = objc_msgSend_assetZoneKey(v141, v142, v143);
          v147 = objc_msgSend_cloneContext(v144, v145, v146);
          objc_msgSend_setCloneContext_(v233, v148, v147);

          v151 = objc_msgSend_itemsGroups(v233, v149, v150);
          if (objc_msgSend_count(v151, v152, v153) != 1)
          {
            __assert_rtn("[CKDUploadAssetsOperation _upload]", "CKDUploadAssetsOperation.m", 1470, "putItemGroupSet.itemsGroups.count == 1");
          }

          v112 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v252 = 0u;
          v253 = 0u;
          v250 = 0u;
          v251 = 0u;
          v234 = objc_msgSend_itemsGroups(v233, v154, v155);
          v240 = objc_msgSend_countByEnumeratingWithState_objects_count_(v234, v156, &v250, v278, 16);
          if (v240)
          {
            objb = *v251;
            do
            {
              for (ii = 0; ii != v240; ii = ii + 1)
              {
                if (*v251 != objb)
                {
                  objc_enumerationMutation(v234);
                }

                v160 = *(*(&v250 + 1) + 8 * ii);
                v246 = 0u;
                v247 = 0u;
                v248 = 0u;
                v249 = 0u;
                v161 = objc_msgSend_items(v160, v157, v158);
                v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v161, v162, &v246, v277, 16);
                if (v165)
                {
                  v166 = *v247;
                  do
                  {
                    for (jj = 0; jj != v165; ++jj)
                    {
                      if (*v247 != v166)
                      {
                        objc_enumerationMutation(v161);
                      }

                      v168 = objc_msgSend_recordID(*(*(&v246 + 1) + 8 * jj), v163, v164);
                      v171 = objc_msgSend_zoneID(v168, v169, v170);
                      v174 = objc_msgSend_zoneName(v171, v172, v173);

                      if (v174)
                      {
                        objc_msgSend_addObject_(v112, v175, v174);
                      }
                    }

                    v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v161, v163, &v246, v277, 16);
                  }

                  while (v165);
                }
              }

              v240 = objc_msgSend_countByEnumeratingWithState_objects_count_(v234, v157, &v250, v278, 16);
            }

            while (v240);
          }

          v176 = [CKDMMCSRequestOptions alloc];
          v135 = objc_msgSend_initWithOperation_(v176, v177, self);
          v180 = objc_msgSend_allObjects(v112, v178, v179);
          objc_msgSend_setZoneNames_(v135, v181, v180);

          v184 = objc_msgSend_assetZone(v232, v182, v183);
          v187 = objc_msgSend_assetZoneKey(v184, v185, v186);

          v190 = objc_msgSend_useMMCSEncryptionV2(v187, v188, v189);
          v193 = objc_msgSend_BOOLValue(v190, v191, v192);

          v196 = objc_msgSend_cloneContext(v187, v194, v195);
          v197 = v196 != 0;

          if ((v197 & v193 & 1) == 0)
          {
            v200 = objc_msgSend_authPutResponse(v232, v198, v199);
            objc_msgSend_setAuthPutResponse_(v135, v201, v200);
          }

          if (v193)
          {
            objc_msgSend_setUseFORD_(v135, v198, 1);
          }

          v202 = objc_msgSend_authPutResponseHeaders(v232, v198, v199);
          objc_msgSend_setAuthPutResponseHeaders_(v135, v203, v202);

          shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(self, v204, v205);
          objc_msgSend_setShouldCloneFileInAssetCache_(v135, v207, shouldCloneFileInAssetCache);
          objc_initWeak(location, self);
          v244[0] = MEMORY[0x277D85DD0];
          v244[1] = 3221225472;
          v244[2] = sub_2251C3880;
          v244[3] = &unk_278548F60;
          objc_copyWeak(&v245, location);
          v242[0] = MEMORY[0x277D85DD0];
          v242[1] = 3221225472;
          v242[2] = sub_2251C38DC;
          v242[3] = &unk_278548E78;
          v242[4] = self;
          v242[5] = v232;
          v243 = group;
          v209 = objc_msgSend_putItemGroupSet_operation_options_progress_completionHandler_(v226, v208, v233, self, v135, v244, v242);
          v212 = objc_msgSend_cancelTokens(self, v210, v211);
          objc_msgSend_addCancelToken_withOperation_(v212, v213, v209, self);

          objc_destroyWeak(&v245);
          objc_destroyWeak(location);

LABEL_82:
LABEL_83:
        }

        v230 = objc_msgSend_countByEnumeratingWithState_objects_count_(v227, v96, &v258, v280, 16);
      }

      while (v230);
    }

    dispatch_group_leave(group);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v214 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v217 = v214;
      v220 = objc_msgSend_operationID(self, v218, v219);
      *location = 138543362;
      *&location[4] = v220;
      _os_log_debug_impl(&dword_22506F000, v217, OS_LOG_TYPE_DEBUG, "No files or packages to upload for operation %{public}@", location, 0xCu);
    }
  }

  v215 = *MEMORY[0x277D85DE8];
  return hasSuccessfulBatches;
}

- (void)_removePackageManifests
{
  v58 = *MEMORY[0x277D85DE8];
  v46 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2);
  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = objc_msgSend_assetsToUpload(self, v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v49, v57, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v50;
    *&v9 = 138543618;
    v44 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v49 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v13;
          v18 = objc_msgSend_manifestItem(v15, v16, v17);
          v21 = v18;
          if (v18)
          {
            v22 = MEMORY[0x277CCABB0];
            v23 = objc_msgSend_itemID(v18, v19, v20);
            v25 = objc_msgSend_numberWithUnsignedLongLong_(v22, v24, v23);
            objc_msgSend_addObject_(v47, v26, v25);

            v30 = objc_msgSend_fileURL(v21, v27, v28);
            if (v30)
            {
              v48 = 0;
              v31 = objc_msgSend_removeItemAtURL_error_(v46, v29, v30, &v48);
              v32 = v48;
              v33 = *MEMORY[0x277CBC878];
              v34 = *MEMORY[0x277CBC880];
              if (v31)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v33);
                }

                v35 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
                {
                  v36 = v35;
                  v45 = objc_msgSend_path(v30, v37, v38);
                  *buf = 138543362;
                  v54 = v45;
                  _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Removed package manifest at %{public}@", buf, 0xCu);
                  goto LABEL_23;
                }
              }

              else
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v33);
                }

                v39 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                {
                  v36 = v39;
                  v45 = objc_msgSend_path(v30, v40, v41);
                  *buf = v44;
                  v54 = v45;
                  v55 = 2112;
                  v56 = v32;
                  _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "Failed to remove package manifest at %{public}@: %@", buf, 0x16u);
LABEL_23:
                }
              }
            }

            else
            {
              v32 = 0;
            }

            objc_msgSend_setManifestItem_(v15, v29, 0, v44);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v14, &v49, v57, 16);
      v10 = v42;
    }

    while (v42);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = CKDUploadAssetsOperation;
  [(CKDOperation *)&v8 cancel];
  v5 = objc_msgSend_cancelTokens(self, v3, v4);
  objc_msgSend_cancel(v5, v6, v7);
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  objc_msgSend__removePackageManifests(self, v5, v6);
  v9 = objc_msgSend_cancelTokens(self, v7, v8);
  objc_msgSend_removeAllCancelTokens(v9, v10, v11);

  v12.receiver = self;
  v12.super_class = CKDUploadAssetsOperation;
  [(CKDOperation *)&v12 finishWithError:errorCopy];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_hash(self, v5, v6);
  kdebug_trace();
  objc_msgSend_setUploadPreparationBlock_(self, v7, 0);
  objc_msgSend_setUploadProgressBlock_(self, v8, 0);
  objc_msgSend_setUploadCompletionBlock_(self, v9, 0);
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_MMCS(v12, v13, v14);
  objc_msgSend_performOperationCleanup(v15, v16, v17);

  v18.receiver = self;
  v18.super_class = CKDUploadAssetsOperation;
  [(CKDOperation *)&v18 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)main
{
  objc_msgSend_hash(self, a2, v2);
  kdebug_trace();
  v6 = objc_msgSend_container(self, v4, v5);
  v17 = 0;
  v8 = objc_msgSend_setupAssetTransfers_(v6, v7, &v17);
  v9 = v17;

  if (v8)
  {
    v12 = objc_msgSend_assetsToUpload(self, v10, v11);
    v15 = objc_msgSend_count(v12, v13, v14) == 0;

    objc_msgSend_makeStateTransition_(self, v16, v15);
  }

  else
  {
    objc_msgSend_finishWithError_(self, v10, v9);
  }
}

@end