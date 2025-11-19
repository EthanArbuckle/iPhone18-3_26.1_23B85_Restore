@interface CKDOperationMetrics
+ (id)mergeUniquedCommaSeparatedString:(id)a3 with:(id)a4;
+ (unint64_t)makeAdopterCapabilityCheckResultWithIsSupported:(BOOL)a3 isOwner:(BOOL)a4 isUsageStingraySigned:(BOOL)a5 isCapabilitiesStingraySigned:(BOOL)a6 isUsageManateeSigned:(BOOL)a7 isCapabilitiesManateeSigned:(BOOL)a8 isKTValidated:(BOOL)a9;
+ (unint64_t)mergeAdopterCapabilityCheckResult:(unint64_t)a3 with:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (CKDOperationMetrics)init;
- (CKDOperationMetrics)initWithCoder:(id)a3;
- (NSArray)rangesCopy;
- (NSMutableArray)ranges;
- (NSMutableDictionary)requestOperationCountsByType;
- (id)CKPropertiesDescription;
- (id)_initWithStartDate:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newRangeWithOperationState:(unint64_t)a3 startDate:(id)a4 duration:(double)a5;
- (void)addAdopterCapabilityCheckResult:(unint64_t)a3;
- (void)addAdopterCapabilityCheckValidationFailure:(id)a3;
- (void)addCKSpecificMetricsFromMetrics:(id)a3;
- (void)addRange:(id)a3;
- (void)addRequestOperationCountsByOperationType:(id)a3;
- (void)addRequiredFeatureSetValidationFailure:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)mergeAdopterCapabilityCheckValidationFailureTypes:(id)a3;
- (void)mergeRequiredFeatureSetValidationFailureTypes:(id)a3;
@end

@implementation CKDOperationMetrics

- (CKDOperationMetrics)init
{
  v4 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2);
  started = objc_msgSend__initWithStartDate_(self, v5, v4);

  return started;
}

- (NSMutableArray)ranges
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_ranges)
  {
    v3 = objc_opt_new();
    ranges = v2->_ranges;
    v2->_ranges = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_ranges;

  return v5;
}

- (NSArray)rangesCopy
{
  v3 = objc_msgSend_copy(self->_ranges, a2, v2);

  return v3;
}

- (NSMutableDictionary)requestOperationCountsByType
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_requestOperationCountsByType)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestOperationCountsByType = v2->_requestOperationCountsByType;
    v2->_requestOperationCountsByType = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_requestOperationCountsByType;

  return v5;
}

- (id)_initWithStartDate:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CKDOperationMetrics;
  v6 = [(CKDOperationMetrics *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startDate, a3);
    v8 = objc_opt_new();
    totalBytesByChunkProfile = v7->_totalBytesByChunkProfile;
    v7->_totalBytesByChunkProfile = v8;

    v10 = objc_opt_new();
    chunkCountByChunkProfile = v7->_chunkCountByChunkProfile;
    v7->_chunkCountByChunkProfile = v10;

    v12 = objc_opt_new();
    fileCountByChunkProfile = v7->_fileCountByChunkProfile;
    v7->_fileCountByChunkProfile = v12;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKDOperationMetrics alloc];
  v7 = objc_msgSend_startDate(self, v5, v6);
  started = objc_msgSend__initWithStartDate_(v4, v8, v7);

  v12 = objc_msgSend_ranges(self, v10, v11);
  v15 = objc_msgSend_mutableCopy(v12, v13, v14);
  v16 = *(started + 360);
  *(started + 360) = v15;

  objc_msgSend_duration(self, v17, v18);
  *(started + 24) = v19;
  objc_msgSend_queueing(self, v20, v21);
  *(started + 32) = v22;
  objc_msgSend_executing(self, v23, v24);
  *(started + 40) = v25;
  *(started + 48) = objc_msgSend_bytesUploaded(self, v26, v27);
  *(started + 56) = objc_msgSend_bytesDownloaded(self, v28, v29);
  *(started + 96) = objc_msgSend_networkServiceType(self, v30, v31);
  *(started + 64) = objc_msgSend_connections(self, v32, v33);
  *(started + 72) = objc_msgSend_connectionsCreated(self, v34, v35);
  *(started + 88) = objc_msgSend_bytesFulfilledLocally(self, v36, v37);
  *(started + 104) = objc_msgSend_bytesResumed(self, v38, v39);
  *(started + 112) = objc_msgSend_recordsUploaded(self, v40, v41);
  *(started + 120) = objc_msgSend_recordsDownloaded(self, v42, v43);
  *(started + 136) = objc_msgSend_assetsUploaded(self, v44, v45);
  *(started + 144) = objc_msgSend_assetsUploadedFileSize(self, v46, v47);
  *(started + 152) = objc_msgSend_assetsDownloaded(self, v48, v49);
  *(started + 160) = objc_msgSend_assetsDownloadedFileSize(self, v50, v51);
  *(started + 128) = objc_msgSend_recordsDeleted(self, v52, v53);
  *(started + 176) = objc_msgSend_retries(self, v54, v55);
  *(started + 168) = objc_msgSend_requestCount(self, v56, v57);
  v60 = objc_msgSend_requestOperationCountsByType(self, v58, v59);
  v63 = objc_msgSend_mutableCopy(v60, v61, v62);
  v64 = *(started + 328);
  *(started + 328) = v63;

  v67 = objc_msgSend_totalBytesByChunkProfile(self, v65, v66);
  v70 = objc_msgSend_mutableCopy(v67, v68, v69);
  v71 = *(started + 336);
  *(started + 336) = v70;

  v74 = objc_msgSend_chunkCountByChunkProfile(self, v72, v73);
  v77 = objc_msgSend_mutableCopy(v74, v75, v76);
  v78 = *(started + 344);
  *(started + 344) = v77;

  v81 = objc_msgSend_fileCountByChunkProfile(self, v79, v80);
  v84 = objc_msgSend_mutableCopy(v81, v82, v83);
  v85 = *(started + 352);
  *(started + 352) = v84;

  *(started + 184) = objc_msgSend_zoneishKeysRolled(self, v86, v87);
  *(started + 192) = objc_msgSend_perRecordKeysRolled(self, v88, v89);
  *(started + 200) = objc_msgSend_zoneKeysRolled(self, v90, v91);
  *(started + 208) = objc_msgSend_shareKeysRolled(self, v92, v93);
  *(started + 216) = objc_msgSend_keyRollsSkippedBySizeCheck(self, v94, v95);
  *(started + 224) = objc_msgSend_identitiesRolledOnRecordSave(self, v96, v97);
  *(started + 232) = objc_msgSend_identitiesRolledOnZoneSave(self, v98, v99);
  *(started + 240) = objc_msgSend_failedIdentityRollAttempts(self, v100, v101);
  *(started + 8) = objc_msgSend_walrusEnabled(self, v102, v103);
  *(started + 248) = objc_msgSend_zoneKeysRemoved(self, v104, v105);
  *(started + 256) = objc_msgSend_zoneishKeysRemoved(self, v106, v107);
  *(started + 264) = objc_msgSend_recordKeysRemoved(self, v108, v109);
  *(started + 272) = objc_msgSend_keysNotRemoved(self, v110, v111);
  *(started + 280) = objc_msgSend_adopterCapabilityCheckValidationFailures(self, v112, v113);
  v116 = objc_msgSend_adopterCapabilityCheckValidationFailureTypes(self, v114, v115);
  v117 = *(started + 288);
  *(started + 288) = v116;

  *(started + 296) = objc_msgSend_adopterCapabilityCheckResult(self, v118, v119);
  *(started + 304) = objc_msgSend_requiredFeatureSetValidationFailures(self, v120, v121);
  v124 = objc_msgSend_requiredFeatureSetValidationFailureTypes(self, v122, v123);
  v125 = *(started + 312);
  *(started + 312) = v124;

  v128 = objc_msgSend_zoneIDs(self, v126, v127);
  v129 = *(started + 320);
  *(started + 320) = v128;

  return started;
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_startDate(self, a2, v2);
  objc_msgSend_duration(self, v6, v7);
  v9 = v8;
  objc_msgSend_queueing(self, v10, v11);
  v13 = v12;
  objc_msgSend_executing(self, v14, v15);
  v17 = v16;
  v20 = objc_msgSend_bytesUploaded(self, v18, v19);
  v23 = objc_msgSend_bytesDownloaded(self, v21, v22);
  v26 = objc_msgSend_requestCount(self, v24, v25);
  v29 = objc_msgSend_connections(self, v27, v28);
  v32 = objc_msgSend_connectionsCreated(self, v30, v31);
  v34 = objc_msgSend_stringWithFormat_(v4, v33, @"startDate=%@, duration=%0.3f, queueing=%0.3f, executing=%0.3f, bytesUploaded=%lu, bytesDownloaded=%lu, requests=%lu, connections=%lu, connectionsCreated=%lu", v5, v9, v13, v17, v20, v23, v26, v29, v32);

  return v34;
}

- (void)addRange:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_ranges(self, v5, v6);
  objc_sync_enter(v7);
  v10 = objc_msgSend_ranges(self, v8, v9);
  objc_msgSend_addObject_(v10, v11, v4);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = objc_msgSend_ranges(self, v12, v13, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v33, v37, 16);
  if (v18)
  {
    v19 = *v34;
    v20 = 0.0;
    v21 = 0.0;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v23 = *(*(&v33 + 1) + 8 * i);
        if (!objc_msgSend_operationState(v23, v16, v17))
        {
          objc_msgSend_duration(v23, v24, v25);
          v20 = v20 + v26;
        }

        if (objc_msgSend_operationState(v23, v24, v25) == 1)
        {
          objc_msgSend_duration(v23, v16, v17);
          v21 = v21 + v27;
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v33, v37, 16);
    }

    while (v18);
  }

  else
  {
    v20 = 0.0;
    v21 = 0.0;
  }

  objc_msgSend_setQueueing_(self, v28, v29, v20);
  objc_msgSend_setExecuting_(self, v30, v31, v21);
  objc_sync_exit(v7);

  v32 = *MEMORY[0x277D85DE8];
}

- (void)addRequestOperationCountsByOperationType:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  obj = objc_msgSend_requestOperationCountsByType(self, v5, v6);
  objc_sync_enter(obj);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = objc_msgSend_allKeys(v4, v7, v8);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v38, v42, 16);
  if (v13)
  {
    v14 = *v39;
    v37 = v9;
    do
    {
      v15 = 0;
      do
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v37);
        }

        v16 = *(*(&v38 + 1) + 8 * v15);
        v17 = objc_msgSend_requestOperationCountsByType(self, v11, v12, obj);
        v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, v16);

        v20 = MEMORY[0x277CCABB0];
        v23 = objc_msgSend_integerValue(v19, v21, v22);
        v25 = objc_msgSend_objectForKeyedSubscript_(v4, v24, v16);
        v28 = objc_msgSend_integerValue(v25, v26, v27);
        v30 = objc_msgSend_numberWithInteger_(v20, v29, v28 + v23);
        v33 = objc_msgSend_requestOperationCountsByType(self, v31, v32);
        objc_msgSend_setObject_forKeyedSubscript_(v33, v34, v30, v16);

        ++v15;
      }

      while (v13 != v15);
      v9 = v37;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v11, &v38, v42, 16);
    }

    while (v13);
  }

  objc_sync_exit(obj);
  v35 = *MEMORY[0x277D85DE8];
}

+ (id)mergeUniquedCommaSeparatedString:(id)a3 with:(id)a4
{
  v5 = MEMORY[0x277CBEB58];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v10 = objc_msgSend_componentsSeparatedByString_(v7, v9, @",");

  v12 = objc_msgSend_initWithArray_(v8, v11, v10);
  v14 = objc_msgSend_componentsSeparatedByString_(v6, v13, @",");

  objc_msgSend_addObjectsFromArray_(v12, v15, v14);
  v18 = objc_msgSend_allObjects(v12, v16, v17);
  v20 = objc_msgSend_sortedArrayUsingSelector_(v18, v19, sel_localizedStandardCompare_);
  v22 = objc_msgSend_componentsJoinedByString_(v20, v21, @",");

  return v22;
}

- (void)mergeAdopterCapabilityCheckValidationFailureTypes:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v11 = objc_msgSend_adopterCapabilityCheckValidationFailureTypes(self, v6, v7);
  v9 = objc_msgSend_mergeUniquedCommaSeparatedString_with_(v5, v8, v11, v4);

  objc_msgSend_setAdopterCapabilityCheckValidationFailureTypes_(self, v10, v9);
}

- (void)mergeRequiredFeatureSetValidationFailureTypes:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v11 = objc_msgSend_requiredFeatureSetValidationFailureTypes(self, v6, v7);
  v9 = objc_msgSend_mergeUniquedCommaSeparatedString_with_(v5, v8, v11, v4);

  objc_msgSend_setRequiredFeatureSetValidationFailureTypes_(self, v10, v9);
}

+ (unint64_t)makeAdopterCapabilityCheckResultWithIsSupported:(BOOL)a3 isOwner:(BOOL)a4 isUsageStingraySigned:(BOOL)a5 isCapabilitiesStingraySigned:(BOOL)a6 isUsageManateeSigned:(BOOL)a7 isCapabilitiesManateeSigned:(BOOL)a8 isKTValidated:(BOOL)a9
{
  v9 = 128;
  if (a3)
  {
    v9 = 129;
  }

  if (a4)
  {
    v9 |= 2uLL;
  }

  if (a5)
  {
    v9 |= 4uLL;
  }

  if (a6)
  {
    v9 |= 8uLL;
  }

  if (a7)
  {
    v9 |= 0x10uLL;
  }

  if (a8)
  {
    v9 |= 0x20uLL;
  }

  if (a9)
  {
    return v9 | 0x40;
  }

  else
  {
    return v9;
  }
}

+ (unint64_t)mergeAdopterCapabilityCheckResult:(unint64_t)a3 with:(unint64_t)a4
{
  if (a4 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (a4 == 129)
  {
    v4 = a3;
  }

  if (a3 == 129)
  {
    v4 = a4;
  }

  if (!a3)
  {
    v4 = a4;
  }

  if (a3 == a4)
  {
    v4 = a3;
  }

  if (a4)
  {
    return v4;
  }

  else
  {
    return a3;
  }
}

- (void)addAdopterCapabilityCheckResult:(unint64_t)a3
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_adopterCapabilityCheckResult(self, v6, v7);
  v10 = objc_msgSend_mergeAdopterCapabilityCheckResult_with_(v5, v9, v8, a3);

  MEMORY[0x2821F9670](self, sel_setAdopterCapabilityCheckResult_, v10);
}

- (void)addAdopterCapabilityCheckValidationFailure:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_componentsSeparatedByString_(v4, v5, @",");
  v9 = objc_msgSend_count(v6, v7, v8);
  v12 = objc_msgSend_adopterCapabilityCheckValidationFailures(self, v10, v11);
  objc_msgSend_setAdopterCapabilityCheckValidationFailures_(self, v13, v12 + v9);

  v14 = objc_opt_class();
  v20 = objc_msgSend_adopterCapabilityCheckValidationFailureTypes(self, v15, v16);
  v18 = objc_msgSend_mergeUniquedCommaSeparatedString_with_(v14, v17, v20, v4);

  objc_msgSend_setAdopterCapabilityCheckValidationFailureTypes_(self, v19, v18);
}

- (void)addRequiredFeatureSetValidationFailure:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_componentsSeparatedByString_(v4, v5, @",");
  v9 = objc_msgSend_count(v6, v7, v8);
  v12 = objc_msgSend_requiredFeatureSetValidationFailures(self, v10, v11);
  objc_msgSend_setRequiredFeatureSetValidationFailures_(self, v13, v12 + v9);

  v14 = objc_opt_class();
  v20 = objc_msgSend_requiredFeatureSetValidationFailureTypes(self, v15, v16);
  v18 = objc_msgSend_mergeUniquedCommaSeparatedString_with_(v14, v17, v20, v4);

  objc_msgSend_setRequiredFeatureSetValidationFailureTypes_(self, v19, v18);
}

- (id)newRangeWithOperationState:(unint64_t)a3 startDate:(id)a4 duration:(double)a5
{
  v7 = a4;
  v8 = [CKOperationStateTimeRange alloc];
  started = objc_msgSend_initWithOperationState_startDate_duration_(v8, v9, a3, v7, a5);

  return started;
}

- (void)addCKSpecificMetricsFromMetrics:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_recordsUploaded(v4, v5, v6);
  v10 = objc_msgSend_recordsUploaded(self, v8, v9);
  objc_msgSend_setRecordsUploaded_(self, v11, v10 + v7);
  v14 = objc_msgSend_recordsDownloaded(v4, v12, v13);
  v17 = objc_msgSend_recordsDownloaded(self, v15, v16);
  objc_msgSend_setRecordsDownloaded_(self, v18, v17 + v14);
  v21 = objc_msgSend_recordsDeleted(v4, v19, v20);
  v24 = objc_msgSend_recordsDeleted(self, v22, v23);
  objc_msgSend_setRecordsDeleted_(self, v25, v24 + v21);
  v28 = objc_msgSend_assetsUploaded(v4, v26, v27);
  v31 = objc_msgSend_assetsUploaded(self, v29, v30);
  objc_msgSend_setAssetsUploaded_(self, v32, v31 + v28);
  v35 = objc_msgSend_assetsUploadedFileSize(v4, v33, v34);
  v38 = objc_msgSend_assetsUploadedFileSize(self, v36, v37);
  objc_msgSend_setAssetsUploadedFileSize_(self, v39, v38 + v35);
  v42 = objc_msgSend_assetsDownloaded(v4, v40, v41);
  v45 = objc_msgSend_assetsDownloaded(self, v43, v44);
  objc_msgSend_setAssetsDownloaded_(self, v46, v45 + v42);
  v49 = objc_msgSend_assetsDownloadedFileSize(v4, v47, v48);
  v52 = objc_msgSend_assetsDownloadedFileSize(self, v50, v51);
  objc_msgSend_setAssetsDownloadedFileSize_(self, v53, v52 + v49);
  v56 = objc_msgSend_retries(v4, v54, v55);
  v59 = objc_msgSend_retries(self, v57, v58);
  objc_msgSend_setRetries_(self, v60, v59 + v56);
  v63 = objc_msgSend_requestCount(v4, v61, v62);
  v66 = objc_msgSend_requestCount(self, v64, v65);
  objc_msgSend_setRequestCount_(self, v67, v66 + v63);
  v70 = objc_msgSend_requestOperationCountsByType(v4, v68, v69);
  objc_msgSend_addRequestOperationCountsByOperationType_(self, v71, v70);

  v74 = objc_msgSend_zoneishKeysRolled(v4, v72, v73);
  v77 = objc_msgSend_zoneishKeysRolled(self, v75, v76);
  objc_msgSend_setZoneishKeysRolled_(self, v78, v77 + v74);
  v81 = objc_msgSend_perRecordKeysRolled(v4, v79, v80);
  v84 = objc_msgSend_perRecordKeysRolled(self, v82, v83);
  objc_msgSend_setPerRecordKeysRolled_(self, v85, v84 + v81);
  v88 = objc_msgSend_zoneKeysRolled(v4, v86, v87);
  v91 = objc_msgSend_zoneKeysRolled(self, v89, v90);
  objc_msgSend_setZoneKeysRolled_(self, v92, v91 + v88);
  v95 = objc_msgSend_shareKeysRolled(v4, v93, v94);
  v98 = objc_msgSend_shareKeysRolled(self, v96, v97);
  objc_msgSend_setShareKeysRolled_(self, v99, v98 + v95);
  v102 = objc_msgSend_keyRollsSkippedBySizeCheck(v4, v100, v101);
  v105 = objc_msgSend_keyRollsSkippedBySizeCheck(self, v103, v104);
  objc_msgSend_setKeyRollsSkippedBySizeCheck_(self, v106, v105 + v102);
  v109 = objc_msgSend_identitiesRolledOnRecordSave(v4, v107, v108);
  v112 = objc_msgSend_identitiesRolledOnRecordSave(self, v110, v111);
  objc_msgSend_setIdentitiesRolledOnRecordSave_(self, v113, v112 + v109);
  v116 = objc_msgSend_identitiesRolledOnZoneSave(v4, v114, v115);
  v119 = objc_msgSend_identitiesRolledOnZoneSave(self, v117, v118);
  objc_msgSend_setIdentitiesRolledOnZoneSave_(self, v120, v119 + v116);
  v123 = objc_msgSend_failedIdentityRollAttempts(v4, v121, v122);
  v126 = objc_msgSend_failedIdentityRollAttempts(self, v124, v125);
  objc_msgSend_setFailedIdentityRollAttempts_(self, v127, v126 + v123);
  v130 = objc_msgSend_zoneKeysRemoved(v4, v128, v129);
  v133 = objc_msgSend_zoneKeysRemoved(self, v131, v132);
  objc_msgSend_setZoneKeysRemoved_(self, v134, v133 + v130);
  v137 = objc_msgSend_zoneishKeysRemoved(v4, v135, v136);
  v140 = objc_msgSend_zoneishKeysRemoved(self, v138, v139);
  objc_msgSend_setZoneishKeysRemoved_(self, v141, v140 + v137);
  v144 = objc_msgSend_recordKeysRemoved(v4, v142, v143);
  v147 = objc_msgSend_recordKeysRemoved(self, v145, v146);
  objc_msgSend_setRecordKeysRemoved_(self, v148, v147 + v144);
  v151 = objc_msgSend_keysNotRemoved(v4, v149, v150);
  v154 = objc_msgSend_keysNotRemoved(self, v152, v153);
  objc_msgSend_setKeysNotRemoved_(self, v155, v154 + v151);
  v158 = objc_msgSend_adopterCapabilityCheckValidationFailures(v4, v156, v157);
  v161 = objc_msgSend_adopterCapabilityCheckValidationFailures(self, v159, v160);
  objc_msgSend_setAdopterCapabilityCheckValidationFailures_(self, v162, v161 + v158);
  v165 = objc_msgSend_adopterCapabilityCheckValidationFailureTypes(v4, v163, v164);
  objc_msgSend_mergeAdopterCapabilityCheckValidationFailureTypes_(self, v166, v165);

  v169 = objc_msgSend_adopterCapabilityCheckResult(v4, v167, v168);
  objc_msgSend_addAdopterCapabilityCheckResult_(self, v170, v169);
  v173 = objc_msgSend_requiredFeatureSetValidationFailures(v4, v171, v172);
  v176 = objc_msgSend_requiredFeatureSetValidationFailures(self, v174, v175);
  objc_msgSend_setRequiredFeatureSetValidationFailures_(self, v177, v176 + v173);
  v181 = objc_msgSend_requiredFeatureSetValidationFailureTypes(v4, v178, v179);

  objc_msgSend_mergeRequiredFeatureSetValidationFailureTypes_(self, v180, v181);
}

- (void)encodeWithCoder:(id)a3
{
  v178 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_startDate(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v178, v8, v7, @"startDate");

  objc_msgSend_duration(self, v9, v10);
  objc_msgSend_encodeDouble_forKey_(v178, v11, @"duration");
  objc_msgSend_queueing(self, v12, v13);
  objc_msgSend_encodeDouble_forKey_(v178, v14, @"queueing");
  objc_msgSend_executing(self, v15, v16);
  objc_msgSend_encodeDouble_forKey_(v178, v17, @"executing");
  v20 = objc_msgSend_bytesUploaded(self, v18, v19);
  objc_msgSend_encodeInt64_forKey_(v178, v21, v20, @"bytesUploaded");
  v24 = objc_msgSend_bytesDownloaded(self, v22, v23);
  objc_msgSend_encodeInt64_forKey_(v178, v25, v24, @"bytesDownloaded");
  v28 = objc_msgSend_connections(self, v26, v27);
  objc_msgSend_encodeInt64_forKey_(v178, v29, v28, @"connections");
  v32 = objc_msgSend_connectionsCreated(self, v30, v31);
  objc_msgSend_encodeInt64_forKey_(v178, v33, v32, @"connectionsCreated");
  v36 = objc_msgSend_bytesFulfilledByPeers(self, v34, v35);
  objc_msgSend_encodeInt64_forKey_(v178, v37, v36, @"bytesFulfilledByPeers");
  v40 = objc_msgSend_bytesFulfilledLocally(self, v38, v39);
  objc_msgSend_encodeInt64_forKey_(v178, v41, v40, @"bytesFulfilledLocally");
  v44 = objc_msgSend_networkServiceType(self, v42, v43);
  objc_msgSend_encodeInt64_forKey_(v178, v45, v44, @"networkServiceType");
  v48 = objc_msgSend_bytesResumed(self, v46, v47);
  objc_msgSend_encodeInt64_forKey_(v178, v49, v48, @"bytesResumed");
  v52 = objc_msgSend_recordsUploaded(self, v50, v51);
  objc_msgSend_encodeInt64_forKey_(v178, v53, v52, @"recordsUploaded");
  v56 = objc_msgSend_recordsDownloaded(self, v54, v55);
  objc_msgSend_encodeInt64_forKey_(v178, v57, v56, @"recordsDownloaded");
  v60 = objc_msgSend_recordsDeleted(self, v58, v59);
  objc_msgSend_encodeInt64_forKey_(v178, v61, v60, @"recordsDeleted");
  v64 = objc_msgSend_assetsUploaded(self, v62, v63);
  objc_msgSend_encodeInt64_forKey_(v178, v65, v64, @"assetsUploaded");
  v68 = objc_msgSend_assetsUploadedFileSize(self, v66, v67);
  objc_msgSend_encodeInt64_forKey_(v178, v69, v68, @"assetsUploadedFileSize");
  v72 = objc_msgSend_assetsDownloaded(self, v70, v71);
  objc_msgSend_encodeInt64_forKey_(v178, v73, v72, @"assetsDownloaded");
  v76 = objc_msgSend_assetsDownloadedFileSize(self, v74, v75);
  objc_msgSend_encodeInt64_forKey_(v178, v77, v76, @"assetsDownloadedFileSize");
  v80 = objc_msgSend_retries(self, v78, v79);
  objc_msgSend_encodeInt64_forKey_(v178, v81, v80, @"retries");
  v84 = objc_msgSend_requestCount(self, v82, v83);
  objc_msgSend_encodeInt64_forKey_(v178, v85, v84, @"requestCount");
  v88 = objc_msgSend_requestOperationCountsByType(self, v86, v87);
  objc_msgSend_encodeObject_forKey_(v178, v89, v88, @"requestOperationCountsByType");

  v92 = objc_msgSend_totalBytesByChunkProfile(self, v90, v91);
  objc_msgSend_encodeObject_forKey_(v178, v93, v92, @"totalBytesByChunkProfile");

  v96 = objc_msgSend_chunkCountByChunkProfile(self, v94, v95);
  objc_msgSend_encodeObject_forKey_(v178, v97, v96, @"chunkCountByChunkProfile");

  v100 = objc_msgSend_fileCountByChunkProfile(self, v98, v99);
  objc_msgSend_encodeObject_forKey_(v178, v101, v100, @"fileCountByChunkProfile");

  v104 = objc_msgSend_zoneishKeysRolled(self, v102, v103);
  objc_msgSend_encodeInt64_forKey_(v178, v105, v104, @"zoneishKeysRolled");
  v108 = objc_msgSend_perRecordKeysRolled(self, v106, v107);
  objc_msgSend_encodeInt64_forKey_(v178, v109, v108, @"perRecordKeysRolled");
  v112 = objc_msgSend_zoneKeysRolled(self, v110, v111);
  objc_msgSend_encodeInt64_forKey_(v178, v113, v112, @"zoneKeysRolled");
  v116 = objc_msgSend_shareKeysRolled(self, v114, v115);
  objc_msgSend_encodeInt64_forKey_(v178, v117, v116, @"shareKeysRolled");
  v120 = objc_msgSend_keyRollsSkippedBySizeCheck(self, v118, v119);
  objc_msgSend_encodeInt64_forKey_(v178, v121, v120, @"keyRollsSkippedBySizeCheck");
  v124 = objc_msgSend_identitiesRolledOnRecordSave(self, v122, v123);
  objc_msgSend_encodeInt64_forKey_(v178, v125, v124, @"identitiesRolledOnRecordSave");
  v128 = objc_msgSend_identitiesRolledOnZoneSave(self, v126, v127);
  objc_msgSend_encodeInt64_forKey_(v178, v129, v128, @"identitiesRolledOnZoneSave");
  v132 = objc_msgSend_failedIdentityRollAttempts(self, v130, v131);
  objc_msgSend_encodeInt64_forKey_(v178, v133, v132, @"failedIdentityRollAttempts");
  v136 = objc_msgSend_zoneKeysRemoved(self, v134, v135);
  objc_msgSend_encodeInt64_forKey_(v178, v137, v136, @"zoneKeysRemoved");
  v140 = objc_msgSend_zoneishKeysRemoved(self, v138, v139);
  objc_msgSend_encodeInt64_forKey_(v178, v141, v140, @"zoneishKeysRemoved");
  v144 = objc_msgSend_recordKeysRemoved(self, v142, v143);
  objc_msgSend_encodeInt64_forKey_(v178, v145, v144, @"recordKeysRemoved");
  v148 = objc_msgSend_keysNotRemoved(self, v146, v147);
  objc_msgSend_encodeInt64_forKey_(v178, v149, v148, @"keysNotRemoved");
  v152 = objc_msgSend_adopterCapabilityCheckValidationFailures(self, v150, v151);
  objc_msgSend_encodeInt64_forKey_(v178, v153, v152, @"adopterCapabilityCheckValidationFailures");
  v156 = objc_msgSend_adopterCapabilityCheckValidationFailureTypes(self, v154, v155);
  objc_msgSend_encodeObject_forKey_(v178, v157, v156, @"adopterCapabilityCheckValidationFailureTypes");

  v160 = objc_msgSend_adopterCapabilityCheckResult(self, v158, v159);
  objc_msgSend_encodeInt64_forKey_(v178, v161, v160, @"adopterCapabilityCheckResult");
  v164 = objc_msgSend_requiredFeatureSetValidationFailures(self, v162, v163);
  objc_msgSend_encodeInt64_forKey_(v178, v165, v164, @"requiredFeatureSetValidationFailures");
  v168 = objc_msgSend_requiredFeatureSetValidationFailureTypes(self, v166, v167);
  objc_msgSend_encodeObject_forKey_(v178, v169, v168, @"requiredFeatureSetValidationFailureTypes");

  v172 = objc_msgSend_walrusEnabled(self, v170, v171);
  objc_msgSend_encodeBool_forKey_(v178, v173, v172, @"walrusEnabled");
  v176 = objc_msgSend_zoneIDs(self, v174, v175);
  objc_msgSend_encodeObject_forKey_(v178, v177, v176, @"zoneNames");

  objc_autoreleasePoolPop(v4);
}

- (CKDOperationMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v118.receiver = self;
  v118.super_class = CKDOperationMetrics;
  v5 = [(CKDOperationMetrics *)&v118 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"startDate");
    startDate = v5->_startDate;
    v5->_startDate = v9;

    objc_msgSend_decodeDoubleForKey_(v4, v11, @"duration");
    v5->_duration = v12;
    objc_msgSend_decodeDoubleForKey_(v4, v13, @"queueing");
    v5->_queueing = v14;
    objc_msgSend_decodeDoubleForKey_(v4, v15, @"executing");
    v5->_executing = v16;
    v5->_bytesUploaded = objc_msgSend_decodeInt64ForKey_(v4, v17, @"bytesUploaded");
    v5->_bytesDownloaded = objc_msgSend_decodeInt64ForKey_(v4, v18, @"bytesDownloaded");
    v5->_connections = objc_msgSend_decodeInt64ForKey_(v4, v19, @"connections");
    v5->_connectionsCreated = objc_msgSend_decodeInt64ForKey_(v4, v20, @"connectionsCreated");
    v5->_bytesFulfilledByPeers = objc_msgSend_decodeInt64ForKey_(v4, v21, @"bytesFulfilledByPeers");
    v5->_bytesFulfilledLocally = objc_msgSend_decodeInt64ForKey_(v4, v22, @"bytesFulfilledLocally");
    v5->_networkServiceType = objc_msgSend_decodeInt64ForKey_(v4, v23, @"networkServiceType");
    v5->_bytesResumed = objc_msgSend_decodeInt64ForKey_(v4, v24, @"bytesResumed");
    v5->_recordsUploaded = objc_msgSend_decodeInt64ForKey_(v4, v25, @"recordsUploaded");
    v5->_recordsDownloaded = objc_msgSend_decodeInt64ForKey_(v4, v26, @"recordsDownloaded");
    v5->_recordsDeleted = objc_msgSend_decodeInt64ForKey_(v4, v27, @"recordsDeleted");
    v5->_assetsUploaded = objc_msgSend_decodeInt64ForKey_(v4, v28, @"assetsUploaded");
    v5->_assetsUploadedFileSize = objc_msgSend_decodeInt64ForKey_(v4, v29, @"assetsUploadedFileSize");
    v5->_assetsDownloaded = objc_msgSend_decodeInt64ForKey_(v4, v30, @"assetsDownloaded");
    v5->_assetsDownloadedFileSize = objc_msgSend_decodeInt64ForKey_(v4, v31, @"assetsDownloadedFileSize");
    v5->_retries = objc_msgSend_decodeInt64ForKey_(v4, v32, @"retries");
    v5->_requestCount = objc_msgSend_decodeInt64ForKey_(v4, v33, @"requestCount");
    v34 = MEMORY[0x277CBEB98];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v38 = objc_msgSend_setWithObjects_(v34, v37, v35, v36, 0);
    v40 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v39, v38, @"requestOperationCountsByType");
    v43 = objc_msgSend_mutableCopy(v40, v41, v42);
    requestOperationCountsByType = v5->_requestOperationCountsByType;
    v5->_requestOperationCountsByType = v43;

    v45 = MEMORY[0x277CBEB98];
    v46 = objc_opt_class();
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v50 = objc_msgSend_setWithObjects_(v45, v49, v46, v47, v48, 0);
    v52 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v51, v50, @"totalBytesByChunkProfile");
    v55 = objc_msgSend_mutableCopy(v52, v53, v54);
    totalBytesByChunkProfile = v5->_totalBytesByChunkProfile;
    v5->_totalBytesByChunkProfile = v55;

    v57 = MEMORY[0x277CBEB98];
    v58 = objc_opt_class();
    v59 = objc_opt_class();
    v60 = objc_opt_class();
    v62 = objc_msgSend_setWithObjects_(v57, v61, v58, v59, v60, 0);
    v64 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v63, v62, @"chunkCountByChunkProfile");
    v67 = objc_msgSend_mutableCopy(v64, v65, v66);
    chunkCountByChunkProfile = v5->_chunkCountByChunkProfile;
    v5->_chunkCountByChunkProfile = v67;

    v69 = MEMORY[0x277CBEB98];
    v70 = objc_opt_class();
    v71 = objc_opt_class();
    v72 = objc_opt_class();
    v74 = objc_msgSend_setWithObjects_(v69, v73, v70, v71, v72, 0);
    v76 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v75, v74, @"fileCountByChunkProfile");
    v79 = objc_msgSend_mutableCopy(v76, v77, v78);
    fileCountByChunkProfile = v5->_fileCountByChunkProfile;
    v5->_fileCountByChunkProfile = v79;

    v5->_zoneishKeysRolled = objc_msgSend_decodeInt64ForKey_(v4, v81, @"zoneishKeysRolled");
    v5->_perRecordKeysRolled = objc_msgSend_decodeInt64ForKey_(v4, v82, @"perRecordKeysRolled");
    v5->_zoneKeysRolled = objc_msgSend_decodeInt64ForKey_(v4, v83, @"zoneKeysRolled");
    v5->_shareKeysRolled = objc_msgSend_decodeInt64ForKey_(v4, v84, @"shareKeysRolled");
    v5->_keyRollsSkippedBySizeCheck = objc_msgSend_decodeInt64ForKey_(v4, v85, @"keyRollsSkippedBySizeCheck");
    v5->_identitiesRolledOnRecordSave = objc_msgSend_decodeInt64ForKey_(v4, v86, @"identitiesRolledOnRecordSave");
    v5->_identitiesRolledOnZoneSave = objc_msgSend_decodeInt64ForKey_(v4, v87, @"identitiesRolledOnZoneSave");
    v5->_failedIdentityRollAttempts = objc_msgSend_decodeInt64ForKey_(v4, v88, @"failedIdentityRollAttempts");
    v5->_zoneKeysRemoved = objc_msgSend_decodeInt64ForKey_(v4, v89, @"zoneKeysRemoved");
    v5->_zoneishKeysRemoved = objc_msgSend_decodeInt64ForKey_(v4, v90, @"zoneishKeysRemoved");
    v5->_recordKeysRemoved = objc_msgSend_decodeInt64ForKey_(v4, v91, @"recordKeysRemoved");
    v5->_keysNotRemoved = objc_msgSend_decodeInt64ForKey_(v4, v92, @"keysNotRemoved");
    v5->_adopterCapabilityCheckValidationFailures = objc_msgSend_decodeInt64ForKey_(v4, v93, @"adopterCapabilityCheckValidationFailures");
    v94 = objc_opt_class();
    v96 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v95, v94, @"adopterCapabilityCheckValidationFailureTypes");
    adopterCapabilityCheckValidationFailureTypes = v5->_adopterCapabilityCheckValidationFailureTypes;
    v5->_adopterCapabilityCheckValidationFailureTypes = v96;

    v5->_adopterCapabilityCheckResult = objc_msgSend_decodeInt64ForKey_(v4, v98, @"adopterCapabilityCheckResult");
    v5->_requiredFeatureSetValidationFailures = objc_msgSend_decodeInt64ForKey_(v4, v99, @"requiredFeatureSetValidationFailures");
    v100 = objc_opt_class();
    v102 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v101, v100, @"requiredFeatureSetValidationFailureTypes");
    requiredFeatureSetValidationFailureTypes = v5->_requiredFeatureSetValidationFailureTypes;
    v5->_requiredFeatureSetValidationFailureTypes = v102;

    v5->_walrusEnabled = objc_msgSend_decodeBoolForKey_(v4, v104, @"walrusEnabled");
    v105 = MEMORY[0x277CBEB98];
    v106 = objc_opt_class();
    v107 = objc_opt_class();
    v108 = objc_opt_class();
    v110 = objc_msgSend_setWithObjects_(v105, v109, v106, v107, v108, 0);
    v112 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v111, v110, @"zoneNames");
    v115 = objc_msgSend_mutableCopy(v112, v113, v114);
    zoneIDs = v5->_zoneIDs;
    v5->_zoneIDs = v115;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v243 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_46;
    }

    v7 = objc_msgSend_startDate(self, v5, v6);
    v10 = objc_msgSend_startDate(v4, v8, v9);
    isEqualToDate = objc_msgSend_isEqualToDate_(v7, v11, v10);

    if (!isEqualToDate)
    {
      goto LABEL_46;
    }

    objc_msgSend_duration(self, v13, v14);
    v16 = v15;
    objc_msgSend_duration(v4, v17, v18);
    if (v16 != v21)
    {
      goto LABEL_46;
    }

    objc_msgSend_queueing(self, v19, v20);
    v23 = v22;
    objc_msgSend_queueing(v4, v24, v25);
    if (v23 != v28)
    {
      goto LABEL_46;
    }

    objc_msgSend_executing(self, v26, v27);
    v30 = v29;
    objc_msgSend_executing(v4, v31, v32);
    if (v30 != v35)
    {
      goto LABEL_46;
    }

    v36 = objc_msgSend_bytesUploaded(self, v33, v34);
    if (v36 != objc_msgSend_bytesUploaded(v4, v37, v38))
    {
      goto LABEL_46;
    }

    v41 = objc_msgSend_bytesDownloaded(self, v39, v40);
    if (v41 != objc_msgSend_bytesDownloaded(v4, v42, v43))
    {
      goto LABEL_46;
    }

    v46 = objc_msgSend_connections(self, v44, v45);
    if (v46 != objc_msgSend_connections(v4, v47, v48))
    {
      goto LABEL_46;
    }

    v51 = objc_msgSend_connectionsCreated(self, v49, v50);
    if (v51 != objc_msgSend_connectionsCreated(v4, v52, v53))
    {
      goto LABEL_46;
    }

    v56 = objc_msgSend_bytesFulfilledByPeers(self, v54, v55);
    if (v56 != objc_msgSend_bytesFulfilledByPeers(v4, v57, v58))
    {
      goto LABEL_46;
    }

    v61 = objc_msgSend_bytesFulfilledLocally(self, v59, v60);
    if (v61 != objc_msgSend_bytesFulfilledLocally(v4, v62, v63))
    {
      goto LABEL_46;
    }

    v66 = objc_msgSend_bytesResumed(self, v64, v65);
    if (v66 != objc_msgSend_bytesResumed(v4, v67, v68))
    {
      goto LABEL_46;
    }

    v71 = objc_msgSend_recordsUploaded(self, v69, v70);
    if (v71 != objc_msgSend_recordsUploaded(v4, v72, v73))
    {
      goto LABEL_46;
    }

    v76 = objc_msgSend_recordsDownloaded(self, v74, v75);
    if (v76 != objc_msgSend_recordsDownloaded(v4, v77, v78))
    {
      goto LABEL_46;
    }

    v81 = objc_msgSend_recordsDeleted(self, v79, v80);
    if (v81 != objc_msgSend_recordsDeleted(v4, v82, v83))
    {
      goto LABEL_46;
    }

    v86 = objc_msgSend_assetsUploaded(self, v84, v85);
    if (v86 != objc_msgSend_assetsUploaded(v4, v87, v88))
    {
      goto LABEL_46;
    }

    v91 = objc_msgSend_assetsUploadedFileSize(self, v89, v90);
    if (v91 != objc_msgSend_assetsUploadedFileSize(v4, v92, v93))
    {
      goto LABEL_46;
    }

    v96 = objc_msgSend_assetsDownloaded(self, v94, v95);
    if (v96 != objc_msgSend_assetsDownloaded(v4, v97, v98))
    {
      goto LABEL_46;
    }

    v101 = objc_msgSend_assetsDownloadedFileSize(self, v99, v100);
    if (v101 != objc_msgSend_assetsDownloadedFileSize(v4, v102, v103))
    {
      goto LABEL_46;
    }

    v106 = objc_msgSend_retries(self, v104, v105);
    if (v106 != objc_msgSend_retries(v4, v107, v108))
    {
      goto LABEL_46;
    }

    v111 = objc_msgSend_requestCount(self, v109, v110);
    if (v111 != objc_msgSend_requestCount(v4, v112, v113))
    {
      goto LABEL_46;
    }

    v116 = objc_msgSend_requestOperationCountsByType(self, v114, v115);
    v119 = objc_msgSend_requestOperationCountsByType(v4, v117, v118);
    isEqual = objc_msgSend_isEqual_(v116, v120, v119);

    if (!isEqual)
    {
      goto LABEL_46;
    }

    v124 = objc_msgSend_totalBytesByChunkProfile(self, v122, v123);
    v127 = objc_msgSend_totalBytesByChunkProfile(v4, v125, v126);
    v128 = CKObjectsAreBothNilOrEqual();

    if (!v128)
    {
      goto LABEL_46;
    }

    v131 = objc_msgSend_chunkCountByChunkProfile(self, v129, v130);
    v134 = objc_msgSend_chunkCountByChunkProfile(v4, v132, v133);
    v135 = CKObjectsAreBothNilOrEqual();

    if (!v135)
    {
      goto LABEL_46;
    }

    v138 = objc_msgSend_fileCountByChunkProfile(self, v136, v137);
    v141 = objc_msgSend_fileCountByChunkProfile(v4, v139, v140);
    v142 = CKObjectsAreBothNilOrEqual();

    if (!v142)
    {
      goto LABEL_46;
    }

    v145 = objc_msgSend_zoneishKeysRolled(self, v143, v144);
    if (v145 != objc_msgSend_zoneishKeysRolled(v4, v146, v147))
    {
      goto LABEL_46;
    }

    v150 = objc_msgSend_perRecordKeysRolled(self, v148, v149);
    if (v150 != objc_msgSend_perRecordKeysRolled(v4, v151, v152))
    {
      goto LABEL_46;
    }

    v155 = objc_msgSend_zoneKeysRolled(self, v153, v154);
    if (v155 != objc_msgSend_zoneKeysRolled(v4, v156, v157))
    {
      goto LABEL_46;
    }

    v160 = objc_msgSend_shareKeysRolled(self, v158, v159);
    if (v160 != objc_msgSend_shareKeysRolled(v4, v161, v162))
    {
      goto LABEL_46;
    }

    v165 = objc_msgSend_keyRollsSkippedBySizeCheck(self, v163, v164);
    if (v165 != objc_msgSend_keyRollsSkippedBySizeCheck(v4, v166, v167))
    {
      goto LABEL_46;
    }

    v170 = objc_msgSend_identitiesRolledOnRecordSave(self, v168, v169);
    if (v170 != objc_msgSend_identitiesRolledOnRecordSave(v4, v171, v172))
    {
      goto LABEL_46;
    }

    v175 = objc_msgSend_identitiesRolledOnZoneSave(self, v173, v174);
    if (v175 != objc_msgSend_identitiesRolledOnZoneSave(v4, v176, v177))
    {
      goto LABEL_46;
    }

    v180 = objc_msgSend_failedIdentityRollAttempts(self, v178, v179);
    if (v180 != objc_msgSend_failedIdentityRollAttempts(v4, v181, v182))
    {
      goto LABEL_46;
    }

    v185 = objc_msgSend_walrusEnabled(self, v183, v184);
    if (v185 != objc_msgSend_walrusEnabled(v4, v186, v187))
    {
      goto LABEL_46;
    }

    v190 = objc_msgSend_zoneKeysRemoved(self, v188, v189);
    if (v190 != objc_msgSend_zoneKeysRemoved(v4, v191, v192))
    {
      goto LABEL_46;
    }

    v195 = objc_msgSend_zoneishKeysRemoved(self, v193, v194);
    if (v195 != objc_msgSend_zoneishKeysRemoved(v4, v196, v197))
    {
      goto LABEL_46;
    }

    v200 = objc_msgSend_recordKeysRemoved(self, v198, v199);
    if (v200 != objc_msgSend_recordKeysRemoved(v4, v201, v202))
    {
      goto LABEL_46;
    }

    v205 = objc_msgSend_keysNotRemoved(self, v203, v204);
    if (v205 != objc_msgSend_keysNotRemoved(v4, v206, v207))
    {
      goto LABEL_46;
    }

    v210 = objc_msgSend_adopterCapabilityCheckValidationFailures(self, v208, v209);
    if (v210 != objc_msgSend_adopterCapabilityCheckValidationFailures(v4, v211, v212))
    {
      goto LABEL_46;
    }

    v215 = objc_msgSend_adopterCapabilityCheckValidationFailureTypes(self, v213, v214);
    v218 = objc_msgSend_adopterCapabilityCheckValidationFailureTypes(v4, v216, v217);
    v219 = CKObjectsAreBothNilOrEqual();

    if (!v219)
    {
      goto LABEL_46;
    }

    v222 = objc_msgSend_adopterCapabilityCheckResult(self, v220, v221);
    if (v222 != objc_msgSend_adopterCapabilityCheckResult(v4, v223, v224))
    {
      goto LABEL_46;
    }

    v227 = objc_msgSend_requiredFeatureSetValidationFailures(self, v225, v226);
    if (v227 != objc_msgSend_requiredFeatureSetValidationFailures(v4, v228, v229))
    {
      goto LABEL_46;
    }

    v232 = objc_msgSend_requiredFeatureSetValidationFailureTypes(self, v230, v231);
    v235 = objc_msgSend_requiredFeatureSetValidationFailureTypes(v4, v233, v234);
    v236 = CKObjectsAreBothNilOrEqual();

    if (v236)
    {
      v239 = objc_msgSend_zoneIDs(self, v237, v238);
      v242 = objc_msgSend_zoneIDs(v4, v240, v241);
      v243 = CKObjectsAreBothNilOrEqual();
    }

    else
    {
LABEL_46:
      v243 = 0;
    }
  }

  return v243;
}

@end