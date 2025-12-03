@interface CKDSPIContainer
- (void)clearAssetCacheWithDatabaseScope:(int64_t)scope completionHandler:(id)handler;
- (void)clearCachesForRecordWithRecordID:(id)d databaseScope:(int64_t)scope completionHandler:(id)handler;
- (void)clearCachesForZoneWithZoneID:(id)d databaseScope:(int64_t)scope completionHandler:(id)handler;
- (void)clearCachesWithOptions:(unint64_t)options databaseScope:(int64_t)scope completionHandler:(id)handler;
- (void)clearContainerFromMetadataCache;
- (void)clearInvalidatedPCSCacheEntriesIfNeeded;
- (void)clearPILSCacheForLookupInfos:(id)infos;
- (void)clearRecordCacheWithDatabaseScope:(int64_t)scope;
- (void)countAssetCacheItemsWithDatabaseScope:(int64_t)scope completionHandler:(id)handler;
- (void)currentDeviceIDWithCompletionHandler:(id)handler;
- (void)decryptPersonalInfoOnShare:(id)share completionHandler:(id)handler;
- (void)dropDetachedContainersWithCompletionHandler:(id)handler;
- (void)fetchPCSFromCacheForRecordWithRecordID:(id)d databaseScope:(int64_t)scope completionHandler:(id)handler;
- (void)fetchPCSFromCacheForShareWithRecordID:(id)d databaseScope:(int64_t)scope completionHandler:(id)handler;
- (void)fetchPCSFromCacheForZoneWithZoneID:(id)d databaseScope:(int64_t)scope localCacheOnly:(BOOL)only unitTestOverrides:(id)overrides completionHandler:(id)handler;
- (void)frameworkCachesDirectoryWithCompletionHandler:(id)handler;
- (void)getCloudCoreSessionValidityError:(id)error;
- (void)getNewWebSharingIdentityDataWithCompletionHandler:(id)handler;
- (void)getNewWebSharingIdentityWithCompletionHandler:(id)handler;
- (void)getOutstandingOperationCountWithCompletionHandler:(id)handler;
- (void)getRecordPCSDiagnosticsForZonesWithCompletionHandler:(id)handler;
- (void)getRegisteredItemCountWithCompletionHandler:(id)handler;
- (void)globalPerUserBoundaryKeyWithCompletionHandler:(id)handler;
- (void)performAggregateZonePCSOperation:(id)operation withBlock:(id)block;
- (void)performArchiveRecordsOperation:(id)operation withBlock:(id)block;
- (void)performCompleteParticipantVettingOperation:(id)operation withBlock:(id)block;
- (void)performDeserializeRecordModificationsOperation:(id)operation withBlock:(id)block;
- (void)performFetchArchivedRecordsOperation:(id)operation withBlock:(id)block;
- (void)performFetchMergeableDeltaMetadataOperation:(id)operation withBlock:(id)block;
- (void)performFetchMergeableDeltasOperation:(id)operation withBlock:(id)block;
- (void)performFetchRecordVersionsOperation:(id)operation withBlock:(id)block;
- (void)performFetchRegisteredBundleIDsOperation:(id)operation withBlock:(id)block;
- (void)performFetchShareParticipantKeyOperation:(id)operation withBlock:(id)block;
- (void)performFetchUserQuotaOperation:(id)operation withBlock:(id)block;
- (void)performInitiateParticipantVettingOperation:(id)operation withBlock:(id)block;
- (void)performMarkAssetBrokenOperation:(id)operation withBlock:(id)block;
- (void)performModifyRecordAccessOperation:(id)operation withBlock:(id)block;
- (void)performModifyWebSharingOperation:(id)operation withBlock:(id)block;
- (void)performPublishAssetsOperation:(id)operation withBlock:(id)block;
- (void)performRepairAssetsOperation:(id)operation withBlock:(id)block;
- (void)performReplaceMergeableDeltasOperation:(id)operation withBlock:(id)block;
- (void)performSerializeRecordModificationsOperation:(id)operation withBlock:(id)block;
- (void)performUploadMergeableDeltasOperation:(id)operation withBlock:(id)block;
- (void)representativeDataclassEnabledWithCompletionHandler:(id)handler;
- (void)resetAllApplicationPermissionsWithCompletionHandler:(id)handler;
- (void)serverEnvironmentWithCompletionHandler:(id)handler;
- (void)serverPreferredPushEnvironmentWithCompletionHandler:(id)handler;
- (void)setFakeError:(id)error forNextRequestOfClassName:(id)name completionHandler:(id)handler;
- (void)showAssetCacheWithDatabaseScope:(int64_t)scope;
- (void)statusGroupsForApplicationPermission:(unint64_t)permission completionHandler:(id)handler;
- (void)tossConfigWithCompletionHandler:(id)handler;
@end

@implementation CKDSPIContainer

- (void)frameworkCachesDirectoryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_uncancellableOperationQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_225182A40;
  v10[3] = &unk_2785456C8;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)performFetchRecordVersionsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchRecordVersionsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225182C18;
  v16[3] = &unk_278547B40;
  objc_copyWeak(&v18, &location);
  v13 = operationCopy;
  v17 = v13;
  objc_msgSend_setRecordVersionFetchedBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)performFetchArchivedRecordsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchArchivedRecordsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_2251830C4;
  v27[3] = &unk_278547830;
  objc_copyWeak(&v29, &location);
  v13 = operationCopy;
  v28 = v13;
  objc_msgSend_setRecordFetchedBlock_(v12, v14, v27);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_225183294;
  v24[3] = &unk_278547B68;
  v15 = v13;
  v25 = v15;
  objc_copyWeak(&v26, &location);
  objc_msgSend_setServerChangeTokenUpdatedBlock_(v12, v16, v24);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = sub_22518342C;
  v22 = &unk_278547098;
  objc_copyWeak(&v23, &location);
  objc_msgSend_setCompletionBlock_(v12, v17, &v19);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v18, v12, blockCopy, v19, v20, v21, v22);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)performArchiveRecordsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDArchiveRecordsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2251835D8;
  v16[3] = &unk_278547B90;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setRecordArchivedBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)performPublishAssetsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDPublishAssetsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225183888;
  v16[3] = &unk_278547BB8;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setAssetPublishedBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)performRepairAssetsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDRepairAssetsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225183B68;
  v16[3] = &unk_278547BE0;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setAssetOrPackageRepairedBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)performMarkAssetBrokenOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDMarkAssetBrokenOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225183E20;
  v16[3] = &unk_278547B90;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setAssetOrPackageMarkedBrokenBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)performModifyWebSharingOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDModifyWebSharingOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_225184158;
  v21[3] = &unk_278547C08;
  v13 = operationCopy;
  v22 = v13;
  objc_copyWeak(&v23, &location);
  objc_msgSend_setRecordWebSharedBlock_(v12, v14, v21);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2251842E8;
  v18[3] = &unk_278547B90;
  v15 = v13;
  v19 = v15;
  objc_copyWeak(&v20, &location);
  objc_msgSend_setRecordWebUnsharedBlock_(v12, v16, v18);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v17, v12, blockCopy);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)getNewWebSharingIdentityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_uncancellableOperationQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2251844FC;
  v10[3] = &unk_278546550;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)getNewWebSharingIdentityDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225184874;
  v7[3] = &unk_278547C30;
  v8 = handlerCopy;
  v5 = handlerCopy;
  objc_msgSend_getNewWebSharingIdentityWithCompletionHandler_(self, v6, v7);
}

- (void)performSerializeRecordModificationsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDSerializeRecordModificationsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_225184A44;
  v18 = &unk_278547C58;
  objc_copyWeak(&v19, &location);
  objc_msgSend_setSerializeCompletionBlock_(v12, v13, &v15);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v14, v12, blockCopy, v15, v16, v17, v18);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)performDeserializeRecordModificationsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDDeserializeRecordModificationsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_225184C08;
  v18 = &unk_278547C80;
  objc_copyWeak(&v19, &location);
  objc_msgSend_setDeserializeCompletionBlock_(v12, v13, &v15);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v14, v12, blockCopy, v15, v16, v17, v18);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)performModifyRecordAccessOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDModifyRecordAccessOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_225184E7C;
  v21[3] = &unk_278547C08;
  v13 = operationCopy;
  v22 = v13;
  objc_copyWeak(&v23, &location);
  objc_msgSend_setAccessWasGrantedBlock_(v12, v14, v21);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22518500C;
  v18[3] = &unk_278547B90;
  v15 = v13;
  v19 = v15;
  objc_copyWeak(&v20, &location);
  objc_msgSend_setAccessWasRevokedBlock_(v12, v16, v18);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v17, v12, blockCopy);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)performCompleteParticipantVettingOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDCompleteParticipantVettingOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_225185344;
  v21[3] = &unk_278547CA8;
  v13 = operationCopy;
  v22 = v13;
  objc_copyWeak(&v23, &location);
  objc_msgSend_setVerifyProgressURLReconstructedBlock_(v12, v14, v21);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_225185488;
  v18[3] = &unk_278547CD0;
  v15 = v13;
  v19 = v15;
  objc_copyWeak(&v20, &location);
  objc_msgSend_setVerifyProgressShareMetadataFetchedBlock_(v12, v16, v18);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v17, v12, blockCopy);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)performFetchShareParticipantKeyOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchShareParticipantKeyOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22518571C;
  v16[3] = &unk_278547CF8;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setShareParticipantKeyFetchedBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)decryptPersonalInfoOnShare:(id)share completionHandler:(id)handler
{
  shareCopy = share;
  handlerCopy = handler;
  v10 = objc_msgSend_uncancellableOperationQueue(self, v8, v9);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_225185968;
  v14[3] = &unk_278547D48;
  v15 = shareCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v11 = shareCopy;
  v12 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v10, v13, v14);
}

- (void)performInitiateParticipantVettingOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDInitiateParticipantVettingOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225185ED0;
  v16[3] = &unk_278547D70;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setParticipantVettingProgressBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)performFetchUserQuotaOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchUserQuotaOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_225186144;
  v14[3] = &unk_278547098;
  objc_copyWeak(&v15, &location);
  objc_msgSend_performOperation_initialMessageReplyBlock_customCompletionBlock_(self, v13, v12, blockCopy, v14);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)performFetchMergeableDeltasOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchMergeableDeltasOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_225186404;
  v18 = &unk_278547D98;
  objc_copyWeak(&v19, &location);
  objc_msgSend_setDeltasFetchedBlock_(v12, v13, &v15);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v14, v12, blockCopy, v15, v16, v17, v18);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)performFetchMergeableDeltaMetadataOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchMergeableDeltaMetadataOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2251866B8;
  v18 = &unk_278547D98;
  objc_copyWeak(&v19, &location);
  objc_msgSend_setMetadataFetchedBlock_(v12, v13, &v15);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v14, v12, blockCopy, v15, v16, v17, v18);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)performReplaceMergeableDeltasOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDReplaceMergeableDeltasOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_22518696C;
  v18 = &unk_278547DC0;
  objc_copyWeak(&v19, &location);
  objc_msgSend_setPerReplacementCompletionBlock_(v12, v13, &v15);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v14, v12, blockCopy, v15, v16, v17, v18);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)performUploadMergeableDeltasOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDUploadMergeableDeltasOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_225186C80;
  v18[3] = &unk_278547DE8;
  objc_copyWeak(&v19, &location);
  objc_msgSend_setUploadDeltaCompletionBlock_(v12, v13, v18);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225186E38;
  v16[3] = &unk_278547DC0;
  objc_copyWeak(&v17, &location);
  objc_msgSend_setReplaceDeltasRequestCompletionBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)performFetchRegisteredBundleIDsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchRegisteredBundleIDsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251870D0;
  v14[3] = &unk_278547098;
  objc_copyWeak(&v15, &location);
  objc_msgSend_performOperation_initialMessageReplyBlock_customCompletionBlock_(self, v13, v12, blockCopy, v14);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)serverPreferredPushEnvironmentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_uncancellableOperationQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22518731C;
  v10[3] = &unk_278546550;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)serverEnvironmentWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x277CBC4F0];
  handlerCopy = handler;
  v16 = objc_msgSend_defaultConvenienceOperationConfiguration(v4, v6, v7);
  v8 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v8, v9, v16);
  v10 = [CKDOperationInfoHolderOperation alloc];
  v12 = objc_msgSend_containerForOperationInfo_(self, v11, v8);
  v14 = objc_msgSend_initWithOperationInfo_container_(v10, v13, v8, v12);

  objc_msgSend_fetchServerEnvironmentForOperation_withCompletionHandler_(self, v15, v14, handlerCopy);
}

- (void)currentDeviceIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_uncancellableOperationQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_225187860;
  v10[3] = &unk_2785456C8;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)globalPerUserBoundaryKeyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_uncancellableOperationQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22518798C;
  v10[3] = &unk_278546550;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)performAggregateZonePCSOperation:(id)operation withBlock:(id)block
{
  blockCopy = block;
  operationCopy = operation;
  v8 = [CKDAggregateZonePCSOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v13 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v12, v13, blockCopy);
}

- (void)countAssetCacheItemsWithDatabaseScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = objc_msgSend_uncancellableOperationQueue(self, v7, v8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2251880A0;
  v12[3] = &unk_278547E60;
  v13 = handlerCopy;
  scopeCopy = scope;
  v12[4] = self;
  v10 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v9, v11, v12);
}

- (void)clearAssetCacheWithDatabaseScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_msgSend_uncancellableOperationQueue(self, v6, v7);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251881B4;
  v11[3] = &unk_278546550;
  v11[4] = self;
  v12 = handlerCopy;
  v9 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v8, v10, v11);
}

- (void)showAssetCacheWithDatabaseScope:(int64_t)scope
{
  v4 = objc_msgSend_uncancellableOperationQueue(self, a2, scope);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225188294;
  v6[3] = &unk_278545A00;
  v6[4] = self;
  objc_msgSend_addOperationWithBlock_(v4, v5, v6);
}

- (void)clearRecordCacheWithDatabaseScope:(int64_t)scope
{
  v5 = objc_msgSend_uncancellableOperationQueue(self, a2, scope);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225188330;
  v7[3] = &unk_278546110;
  v7[4] = self;
  v7[5] = scope;
  objc_msgSend_addOperationWithBlock_(v5, v6, v7);
}

- (void)clearCachesWithOptions:(unint64_t)options databaseScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = objc_msgSend_uncancellableOperationQueue(self, v9, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22518854C;
  v14[3] = &unk_278547E88;
  optionsCopy = options;
  scopeCopy = scope;
  v14[4] = self;
  v15 = handlerCopy;
  v12 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v11, v13, v14);
}

- (void)clearCachesForRecordWithRecordID:(id)d databaseScope:(int64_t)scope completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v12 = objc_msgSend_uncancellableOperationQueue(self, v10, v11);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2251889CC;
  v16[3] = &unk_278547EB0;
  v16[4] = self;
  v17 = dCopy;
  v18 = handlerCopy;
  scopeCopy = scope;
  v13 = handlerCopy;
  v14 = dCopy;
  objc_msgSend_addOperationWithBlock_(v12, v15, v16);
}

- (void)clearCachesForZoneWithZoneID:(id)d databaseScope:(int64_t)scope completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v12 = objc_msgSend_uncancellableOperationQueue(self, v10, v11);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225188B2C;
  v16[3] = &unk_278547EB0;
  v16[4] = self;
  v17 = dCopy;
  v18 = handlerCopy;
  scopeCopy = scope;
  v13 = handlerCopy;
  v14 = dCopy;
  objc_msgSend_addOperationWithBlock_(v12, v15, v16);
}

- (void)fetchPCSFromCacheForZoneWithZoneID:(id)d databaseScope:(int64_t)scope localCacheOnly:(BOOL)only unitTestOverrides:(id)overrides completionHandler:(id)handler
{
  dCopy = d;
  overridesCopy = overrides;
  handlerCopy = handler;
  v17 = objc_msgSend_uncancellableOperationQueue(self, v15, v16);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_225188CA0;
  v22[3] = &unk_278547ED8;
  v25 = handlerCopy;
  scopeCopy = scope;
  v22[4] = self;
  v23 = overridesCopy;
  onlyCopy = only;
  v24 = dCopy;
  v18 = handlerCopy;
  v19 = dCopy;
  v20 = overridesCopy;
  objc_msgSend_addOperationWithBlock_(v17, v21, v22);
}

- (void)fetchPCSFromCacheForShareWithRecordID:(id)d databaseScope:(int64_t)scope completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v12 = objc_msgSend_uncancellableOperationQueue(self, v10, v11);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225188E80;
  v16[3] = &unk_278547EB0;
  v16[4] = self;
  v17 = dCopy;
  v18 = handlerCopy;
  scopeCopy = scope;
  v13 = handlerCopy;
  v14 = dCopy;
  objc_msgSend_addOperationWithBlock_(v12, v15, v16);
}

- (void)fetchPCSFromCacheForRecordWithRecordID:(id)d databaseScope:(int64_t)scope completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v12 = objc_msgSend_uncancellableOperationQueue(self, v10, v11);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225189048;
  v16[3] = &unk_278547EB0;
  v16[4] = self;
  v17 = dCopy;
  v18 = handlerCopy;
  scopeCopy = scope;
  v13 = handlerCopy;
  v14 = dCopy;
  objc_msgSend_addOperationWithBlock_(v12, v15, v16);
}

- (void)clearInvalidatedPCSCacheEntriesIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v9 = v3;
    v12 = objc_msgSend_containerID(self, v10, v11);
    *buf = 138412290;
    v15 = v12;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Clearing the persisted PCS cache for container %@", buf, 0xCu);
  }

  v6 = objc_msgSend_uncancellableOperationQueue(self, v4, v5);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_225189290;
  v13[3] = &unk_278545A00;
  v13[4] = self;
  objc_msgSend_addOperationWithBlock_(v6, v7, v13);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getOutstandingOperationCountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_uncancellableOperationQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2251893C4;
  v10[3] = &unk_278546550;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)getRegisteredItemCountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_uncancellableOperationQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_225189770;
  v10[3] = &unk_278546550;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)dropDetachedContainersWithCompletionHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v42 = objc_msgSend_sharedDetachedContainers(CKDContainer, v3, v4);
  objc_sync_enter(v42);
  v7 = objc_msgSend_sharedDetachedContainers(CKDContainer, v5, v6);
  v10 = objc_msgSend_allObjects(v7, v8, v9);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v10;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v49, v53, 16);
  if (v14)
  {
    v45 = *v50;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        v17 = objc_msgSend_appContainerTuple(v16, v12, v13, v42);
        v20 = objc_msgSend_appContainerTuple(self, v18, v19);
        if (!objc_msgSend_isEqual_(v17, v21, v20))
        {
          goto LABEL_11;
        }

        v24 = objc_msgSend_entitlements(v16, v22, v23);
        v27 = objc_msgSend_entitlements(self, v25, v26);
        if (!objc_msgSend_isEqual_(v24, v28, v27))
        {

LABEL_11:
          goto LABEL_12;
        }

        v31 = objc_msgSend_options(v16, v29, v30);
        v34 = objc_msgSend_options(self, v32, v33);
        isEqual = objc_msgSend_isEqual_(v31, v35, v34);

        if (!isEqual)
        {
          continue;
        }

        v17 = objc_msgSend_sharedDetachedContainers(CKDContainer, v12, v13);
        objc_msgSend_removeObject_(v17, v37, v16);
LABEL_12:
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v49, v53, 16);
    }

    while (v14);
  }

  objc_sync_exit(v42);
  if (handlerCopy)
  {
    v40 = objc_msgSend_cancellationQueue(self, v38, v39);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225189BA4;
    block[3] = &unk_2785456A0;
    v48 = handlerCopy;
    dispatch_async(v40, block);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)resetAllApplicationPermissionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v5, v6);
  v8 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v8, v9, v7);
  v10 = [CKDResetUserPrivacySettingsOperation alloc];
  v12 = objc_msgSend_containerForOperationInfo_(self, v11, v8);
  v14 = objc_msgSend_initWithOperationInfo_container_(v10, v13, v8, v12);

  objc_initWeak(&location, v14);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_225189D30;
  v18[3] = &unk_278547220;
  objc_copyWeak(&v20, &location);
  v15 = handlerCopy;
  v19 = v15;
  objc_msgSend_setCompletionBlock_(v14, v16, v18);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v17, v14, 0);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)statusGroupsForApplicationPermission:(unint64_t)permission completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v6, v7);
  v9 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v9, v10, v8);
  v11 = [CKDBatchFetchUserPrivacySettingsOperation alloc];
  v13 = objc_msgSend_containerForOperationInfo_(self, v12, v9);
  v15 = objc_msgSend_initWithOperationInfo_container_(v11, v14, v9, v13);

  objc_initWeak(&location, v15);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_225189F90;
  v19[3] = &unk_278547220;
  objc_copyWeak(&v21, &location);
  v16 = handlerCopy;
  v20 = v16;
  objc_msgSend_setCompletionBlock_(v15, v17, v19);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v18, v15, 0);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)clearContainerFromMetadataCache
{
  v11 = objc_msgSend_deviceContext(self, a2, v2);
  v6 = objc_msgSend_metadataCache(v11, v4, v5);
  v9 = objc_msgSend_containerID(self, v7, v8);
  objc_msgSend_removeContainerID_(v6, v10, v9);
}

- (void)clearPILSCacheForLookupInfos:(id)infos
{
  infosCopy = infos;
  v7 = objc_msgSend_backgroundPublicIdentityLookupService(self, v5, v6);
  objc_msgSend_removeCacheForLookupInfos_(v7, v8, infosCopy);

  v12 = objc_msgSend_foregroundPublicIdentityLookupService(self, v9, v10);
  objc_msgSend_removeCacheForLookupInfos_(v12, v11, infosCopy);
}

- (void)representativeDataclassEnabledWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_uncancellableOperationQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22518A21C;
  v10[3] = &unk_278546550;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)getCloudCoreSessionValidityError:(id)error
{
  errorCopy = error;
  v7 = objc_msgSend_uncancellableOperationQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22518A3F4;
  v10[3] = &unk_278546550;
  v10[4] = self;
  v11 = errorCopy;
  v8 = errorCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)getRecordPCSDiagnosticsForZonesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22506F000, v5, OS_LOG_TYPE_INFO, "Getting Record PCS diagnostics for all zones", buf, 2u);
  }

  v6 = objc_opt_new();
  objc_msgSend_setDatabaseScope_(v6, v7, 2);
  v8 = [CKDFetchRecordPCSDiagnosticsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, v6);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, v6, v10);

  objc_initWeak(buf, v12);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_22518A65C;
  v19 = &unk_278547F28;
  v13 = handlerCopy;
  v20 = v13;
  objc_copyWeak(&v21, buf);
  objc_msgSend_setCompletionBlock_(v12, v14, &v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, 0, v16, v17, v18, v19);
  objc_destroyWeak(&v21);

  objc_destroyWeak(buf);
}

- (void)tossConfigWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v5, OS_LOG_TYPE_INFO, "Tossing client configuration", buf, 2u);
  }

  v8 = objc_msgSend_uncancellableOperationQueue(self, v6, v7);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22518A7F0;
  v11[3] = &unk_278546550;
  v11[4] = self;
  v12 = handlerCopy;
  v9 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v8, v10, v11);
}

- (void)setFakeError:(id)error forNextRequestOfClassName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  errorCopy = error;
  v12 = objc_msgSend_fakeErrorsByClassName(self, v10, v11);

  if (!v12)
  {
    v15 = objc_opt_new();
    objc_msgSend_setFakeErrorsByClassName_(self, v16, v15);
  }

  v17 = objc_msgSend_fakeErrorsByClassName(self, v13, v14);
  v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, nameCopy);

  if (!v19)
  {
    v22 = objc_opt_new();
    v25 = objc_msgSend_fakeErrorsByClassName(self, v23, v24);
    objc_msgSend_setObject_forKeyedSubscript_(v25, v26, v22, nameCopy);
  }

  v27 = objc_msgSend_fakeErrorsByClassName(self, v20, v21);
  v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, nameCopy);
  v30 = objc_alloc(MEMORY[0x277CBC7A0]);
  v31 = _Block_copy(handlerCopy);

  v33 = objc_msgSend_initWithObject1_object2_(v30, v32, errorCopy, v31);
  objc_msgSend_addObject_(v29, v34, v33);
}

@end