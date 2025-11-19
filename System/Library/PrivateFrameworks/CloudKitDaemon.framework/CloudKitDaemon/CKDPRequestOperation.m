@interface CKDPRequestOperation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRequestOperation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRequestOperation;
  v4 = [(CKDPRequestOperation *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  header = self->_header;
  if (header)
  {
    v8 = objc_msgSend_dictionaryRepresentation(header, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"header");
  }

  request = self->_request;
  if (request)
  {
    v11 = objc_msgSend_dictionaryRepresentation(request, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"request");
  }

  functionInvokeRequest = self->_functionInvokeRequest;
  if (functionInvokeRequest)
  {
    v14 = objc_msgSend_dictionaryRepresentation(functionInvokeRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"functionInvokeRequest");
  }

  mergeableDeltaSaveRequest = self->_mergeableDeltaSaveRequest;
  if (mergeableDeltaSaveRequest)
  {
    v17 = objc_msgSend_dictionaryRepresentation(mergeableDeltaSaveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"mergeableDeltaSaveRequest");
  }

  mergeableDeltaMetadataRetrieveRequest = self->_mergeableDeltaMetadataRetrieveRequest;
  if (mergeableDeltaMetadataRetrieveRequest)
  {
    v20 = objc_msgSend_dictionaryRepresentation(mergeableDeltaMetadataRetrieveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v21, v20, @"mergeableDeltaMetadataRetrieveRequest");
  }

  mergeableDeltaReplaceRequest = self->_mergeableDeltaReplaceRequest;
  if (mergeableDeltaReplaceRequest)
  {
    v23 = objc_msgSend_dictionaryRepresentation(mergeableDeltaReplaceRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v24, v23, @"mergeableDeltaReplaceRequest");
  }

  mergeableDeltaRetrieveRequest = self->_mergeableDeltaRetrieveRequest;
  if (mergeableDeltaRetrieveRequest)
  {
    v26 = objc_msgSend_dictionaryRepresentation(mergeableDeltaRetrieveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v27, v26, @"mergeableDeltaRetrieveRequest");
  }

  shareVettingInitiateRequest = self->_shareVettingInitiateRequest;
  if (shareVettingInitiateRequest)
  {
    v29 = objc_msgSend_dictionaryRepresentation(shareVettingInitiateRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v30, v29, @"shareVettingInitiateRequest");
  }

  zoneSaveRequest = self->_zoneSaveRequest;
  if (zoneSaveRequest)
  {
    v32 = objc_msgSend_dictionaryRepresentation(zoneSaveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v33, v32, @"zoneSaveRequest");
  }

  zoneRetrieveRequest = self->_zoneRetrieveRequest;
  if (zoneRetrieveRequest)
  {
    v35 = objc_msgSend_dictionaryRepresentation(zoneRetrieveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v36, v35, @"zoneRetrieveRequest");
  }

  zoneDeleteRequest = self->_zoneDeleteRequest;
  if (zoneDeleteRequest)
  {
    v38 = objc_msgSend_dictionaryRepresentation(zoneDeleteRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v39, v38, @"zoneDeleteRequest");
  }

  zoneRetrieveChangesRequest = self->_zoneRetrieveChangesRequest;
  if (zoneRetrieveChangesRequest)
  {
    v41 = objc_msgSend_dictionaryRepresentation(zoneRetrieveChangesRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v42, v41, @"zoneRetrieveChangesRequest");
  }

  zoneRetrieveAncestorsRequest = self->_zoneRetrieveAncestorsRequest;
  if (zoneRetrieveAncestorsRequest)
  {
    v44 = objc_msgSend_dictionaryRepresentation(zoneRetrieveAncestorsRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v45, v44, @"zoneRetrieveAncestorsRequest");
  }

  zoneChildrenRetrieveRequest = self->_zoneChildrenRetrieveRequest;
  if (zoneChildrenRetrieveRequest)
  {
    v47 = objc_msgSend_dictionaryRepresentation(zoneChildrenRetrieveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v48, v47, @"zoneChildrenRetrieveRequest");
  }

  recordSaveRequest = self->_recordSaveRequest;
  if (recordSaveRequest)
  {
    v50 = objc_msgSend_dictionaryRepresentation(recordSaveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v51, v50, @"recordSaveRequest");
  }

  recordRetrieveRequest = self->_recordRetrieveRequest;
  if (recordRetrieveRequest)
  {
    v53 = objc_msgSend_dictionaryRepresentation(recordRetrieveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v54, v53, @"recordRetrieveRequest");
  }

  recordRetrieveVersionsRequest = self->_recordRetrieveVersionsRequest;
  if (recordRetrieveVersionsRequest)
  {
    v56 = objc_msgSend_dictionaryRepresentation(recordRetrieveVersionsRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v57, v56, @"recordRetrieveVersionsRequest");
  }

  recordRetrieveChangesRequest = self->_recordRetrieveChangesRequest;
  if (recordRetrieveChangesRequest)
  {
    v59 = objc_msgSend_dictionaryRepresentation(recordRetrieveChangesRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v60, v59, @"recordRetrieveChangesRequest");
  }

  recordDeleteRequest = self->_recordDeleteRequest;
  if (recordDeleteRequest)
  {
    v62 = objc_msgSend_dictionaryRepresentation(recordDeleteRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v63, v62, @"recordDeleteRequest");
  }

  recordResolveTokenRequest = self->_recordResolveTokenRequest;
  if (recordResolveTokenRequest)
  {
    v65 = objc_msgSend_dictionaryRepresentation(recordResolveTokenRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v66, v65, @"recordResolveTokenRequest");
  }

  shareAccessRequest = self->_shareAccessRequest;
  if (shareAccessRequest)
  {
    v68 = objc_msgSend_dictionaryRepresentation(shareAccessRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v69, v68, @"shareAccessRequest");
  }

  recordMoveRequest = self->_recordMoveRequest;
  if (recordMoveRequest)
  {
    v71 = objc_msgSend_dictionaryRepresentation(recordMoveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v72, v71, @"recordMoveRequest");
  }

  fetchArchivedRecordsRequest = self->_fetchArchivedRecordsRequest;
  if (fetchArchivedRecordsRequest)
  {
    v74 = objc_msgSend_dictionaryRepresentation(fetchArchivedRecordsRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v75, v74, @"fetchArchivedRecordsRequest");
  }

  userAvailableQuotaRequest = self->_userAvailableQuotaRequest;
  if (userAvailableQuotaRequest)
  {
    v77 = objc_msgSend_dictionaryRepresentation(userAvailableQuotaRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v78, v77, @"userAvailableQuotaRequest");
  }

  userRetrieveRequest = self->_userRetrieveRequest;
  if (userRetrieveRequest)
  {
    v80 = objc_msgSend_dictionaryRepresentation(userRetrieveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v81, v80, @"userRetrieveRequest");
  }

  queryRetrieveRequest = self->_queryRetrieveRequest;
  if (queryRetrieveRequest)
  {
    v83 = objc_msgSend_dictionaryRepresentation(queryRetrieveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v84, v83, @"queryRetrieveRequest");
  }

  assetUploadTokenRetrieveRequest = self->_assetUploadTokenRetrieveRequest;
  if (assetUploadTokenRetrieveRequest)
  {
    v86 = objc_msgSend_dictionaryRepresentation(assetUploadTokenRetrieveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v87, v86, @"assetUploadTokenRetrieveRequest");
  }

  deleteContainerRequest = self->_deleteContainerRequest;
  if (deleteContainerRequest)
  {
    v89 = objc_msgSend_dictionaryRepresentation(deleteContainerRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v90, v89, @"deleteContainerRequest");
  }

  bundlesForContainerRequest = self->_bundlesForContainerRequest;
  if (bundlesForContainerRequest)
  {
    v92 = objc_msgSend_dictionaryRepresentation(bundlesForContainerRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v93, v92, @"bundlesForContainerRequest");
  }

  webAuthTokenRetrieveRequest = self->_webAuthTokenRetrieveRequest;
  if (webAuthTokenRetrieveRequest)
  {
    v95 = objc_msgSend_dictionaryRepresentation(webAuthTokenRetrieveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v96, v95, @"webAuthTokenRetrieveRequest");
  }

  updateMissingAssetStatusRequest = self->_updateMissingAssetStatusRequest;
  if (updateMissingAssetStatusRequest)
  {
    v98 = objc_msgSend_dictionaryRepresentation(updateMissingAssetStatusRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v99, v98, @"updateMissingAssetStatusRequest");
  }

  shareAcceptRequest = self->_shareAcceptRequest;
  if (shareAcceptRequest)
  {
    v101 = objc_msgSend_dictionaryRepresentation(shareAcceptRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v102, v101, @"shareAcceptRequest");
  }

  shareDeclineRequest = self->_shareDeclineRequest;
  if (shareDeclineRequest)
  {
    v104 = objc_msgSend_dictionaryRepresentation(shareDeclineRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v105, v104, @"shareDeclineRequest");
  }

  anonymousShareAddRequest = self->_anonymousShareAddRequest;
  if (anonymousShareAddRequest)
  {
    v107 = objc_msgSend_dictionaryRepresentation(anonymousShareAddRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v108, v107, @"anonymousShareAddRequest");
  }

  anonymousShareRemoveRequest = self->_anonymousShareRemoveRequest;
  if (anonymousShareRemoveRequest)
  {
    v110 = objc_msgSend_dictionaryRepresentation(anonymousShareRemoveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v111, v110, @"anonymousShareRemoveRequest");
  }

  subscriptionCreateRequest = self->_subscriptionCreateRequest;
  if (subscriptionCreateRequest)
  {
    v113 = objc_msgSend_dictionaryRepresentation(subscriptionCreateRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v114, v113, @"subscriptionCreateRequest");
  }

  subscriptionRetrieveRequest = self->_subscriptionRetrieveRequest;
  if (subscriptionRetrieveRequest)
  {
    v116 = objc_msgSend_dictionaryRepresentation(subscriptionRetrieveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v117, v116, @"subscriptionRetrieveRequest");
  }

  subscriptionDeleteRequest = self->_subscriptionDeleteRequest;
  if (subscriptionDeleteRequest)
  {
    v119 = objc_msgSend_dictionaryRepresentation(subscriptionDeleteRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v120, v119, @"subscriptionDeleteRequest");
  }

  archiveRecordsRequest = self->_archiveRecordsRequest;
  if (archiveRecordsRequest)
  {
    v122 = objc_msgSend_dictionaryRepresentation(archiveRecordsRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v123, v122, @"archiveRecordsRequest");
  }

  markAssetBrokenRequest = self->_markAssetBrokenRequest;
  if (markAssetBrokenRequest)
  {
    v125 = objc_msgSend_dictionaryRepresentation(markAssetBrokenRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v126, v125, @"markAssetBrokenRequest");
  }

  userQueryRequest = self->_userQueryRequest;
  if (userQueryRequest)
  {
    v128 = objc_msgSend_dictionaryRepresentation(userQueryRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v129, v128, @"userQueryRequest");
  }

  userPrivacySettingsUpdateRequest = self->_userPrivacySettingsUpdateRequest;
  if (userPrivacySettingsUpdateRequest)
  {
    v131 = objc_msgSend_dictionaryRepresentation(userPrivacySettingsUpdateRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v132, v131, @"userPrivacySettingsUpdateRequest");
  }

  userPrivacySettingsResetRequest = self->_userPrivacySettingsResetRequest;
  if (userPrivacySettingsResetRequest)
  {
    v134 = objc_msgSend_dictionaryRepresentation(userPrivacySettingsResetRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v135, v134, @"userPrivacySettingsResetRequest");
  }

  userPrivacySettingsBatchLookupRequest = self->_userPrivacySettingsBatchLookupRequest;
  if (userPrivacySettingsBatchLookupRequest)
  {
    v137 = objc_msgSend_dictionaryRepresentation(userPrivacySettingsBatchLookupRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v138, v137, @"userPrivacySettingsBatchLookupRequest");
  }

  userPrivacySettingsRetrieveRequest = self->_userPrivacySettingsRetrieveRequest;
  if (userPrivacySettingsRetrieveRequest)
  {
    v140 = objc_msgSend_dictionaryRepresentation(userPrivacySettingsRetrieveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v141, v140, @"userPrivacySettingsRetrieveRequest");
  }

  adopterCapabilitiesSaveRequest = self->_adopterCapabilitiesSaveRequest;
  if (adopterCapabilitiesSaveRequest)
  {
    v143 = objc_msgSend_dictionaryRepresentation(adopterCapabilitiesSaveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v144, v143, @"adopterCapabilitiesSaveRequest");
  }

  zoneUsageSaveRequest = self->_zoneUsageSaveRequest;
  if (zoneUsageSaveRequest)
  {
    v146 = objc_msgSend_dictionaryRepresentation(zoneUsageSaveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v147, v146, @"zoneUsageSaveRequest");
  }

  shareUsageSaveRequest = self->_shareUsageSaveRequest;
  if (shareUsageSaveRequest)
  {
    v149 = objc_msgSend_dictionaryRepresentation(shareUsageSaveRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v150, v149, @"shareUsageSaveRequest");
  }

  adopterCapabilitiesCheckRequest = self->_adopterCapabilitiesCheckRequest;
  if (adopterCapabilitiesCheckRequest)
  {
    v152 = objc_msgSend_dictionaryRepresentation(adopterCapabilitiesCheckRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v153, v152, @"adopterCapabilitiesCheckRequest");
  }

  tokenRegistrationRequest = self->_tokenRegistrationRequest;
  if (tokenRegistrationRequest)
  {
    v155 = objc_msgSend_dictionaryRepresentation(tokenRegistrationRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v156, v155, @"tokenRegistrationRequest");
  }

  tokenUnregistrationRequest = self->_tokenUnregistrationRequest;
  if (tokenUnregistrationRequest)
  {
    v158 = objc_msgSend_dictionaryRepresentation(tokenUnregistrationRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v159, v158, @"tokenUnregistrationRequest");
  }

  setBadgeCountRequest = self->_setBadgeCountRequest;
  if (setBadgeCountRequest)
  {
    v161 = objc_msgSend_dictionaryRepresentation(setBadgeCountRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v162, v161, @"setBadgeCountRequest");
  }

  notificationSyncRequest = self->_notificationSyncRequest;
  if (notificationSyncRequest)
  {
    v164 = objc_msgSend_dictionaryRepresentation(notificationSyncRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v165, v164, @"notificationSyncRequest");
  }

  notificationMarkReadRequest = self->_notificationMarkReadRequest;
  if (notificationMarkReadRequest)
  {
    v167 = objc_msgSend_dictionaryRepresentation(notificationMarkReadRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v168, v167, @"notificationMarkReadRequest");
  }

  v169 = v6;

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneSaveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneRetrieveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneDeleteRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneRetrieveChangesRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneChildrenRetrieveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneRetrieveAncestorsRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordSaveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordRetrieveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordRetrieveVersionsRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordRetrieveChangesRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordDeleteRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordResolveTokenRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_fetchArchivedRecordsRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordMoveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_shareAccessRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_queryRetrieveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mergeableDeltaSaveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mergeableDeltaMetadataRetrieveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mergeableDeltaReplaceRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mergeableDeltaRetrieveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_assetUploadTokenRetrieveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_deleteContainerRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userAvailableQuotaRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_bundlesForContainerRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_webAuthTokenRetrieveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_updateMissingAssetStatusRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_anonymousShareAddRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_anonymousShareRemoveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_subscriptionCreateRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_subscriptionRetrieveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_subscriptionDeleteRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userRetrieveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userQueryRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userPrivacySettingsRetrieveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userPrivacySettingsUpdateRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userPrivacySettingsResetRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userPrivacySettingsBatchLookupRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_adopterCapabilitiesSaveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_adopterCapabilitiesCheckRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneUsageSaveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_shareUsageSaveRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_shareAcceptRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_shareDeclineRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_shareVettingInitiateRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_tokenRegistrationRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_tokenUnregistrationRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_setBadgeCountRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_notificationSyncRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_notificationMarkReadRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_archiveRecordsRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_markAssetBrokenRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_functionInvokeRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  header = self->_header;
  v60 = v4;
  if (header)
  {
    objc_msgSend_setHeader_(v4, v5, header);
    v4 = v60;
  }

  request = self->_request;
  if (request)
  {
    objc_msgSend_setRequest_(v60, v5, request);
    v4 = v60;
  }

  zoneSaveRequest = self->_zoneSaveRequest;
  if (zoneSaveRequest)
  {
    objc_msgSend_setZoneSaveRequest_(v60, v5, zoneSaveRequest);
    v4 = v60;
  }

  zoneRetrieveRequest = self->_zoneRetrieveRequest;
  if (zoneRetrieveRequest)
  {
    objc_msgSend_setZoneRetrieveRequest_(v60, v5, zoneRetrieveRequest);
    v4 = v60;
  }

  zoneDeleteRequest = self->_zoneDeleteRequest;
  if (zoneDeleteRequest)
  {
    objc_msgSend_setZoneDeleteRequest_(v60, v5, zoneDeleteRequest);
    v4 = v60;
  }

  zoneRetrieveChangesRequest = self->_zoneRetrieveChangesRequest;
  if (zoneRetrieveChangesRequest)
  {
    objc_msgSend_setZoneRetrieveChangesRequest_(v60, v5, zoneRetrieveChangesRequest);
    v4 = v60;
  }

  zoneChildrenRetrieveRequest = self->_zoneChildrenRetrieveRequest;
  if (zoneChildrenRetrieveRequest)
  {
    objc_msgSend_setZoneChildrenRetrieveRequest_(v60, v5, zoneChildrenRetrieveRequest);
    v4 = v60;
  }

  zoneRetrieveAncestorsRequest = self->_zoneRetrieveAncestorsRequest;
  if (zoneRetrieveAncestorsRequest)
  {
    objc_msgSend_setZoneRetrieveAncestorsRequest_(v60, v5, zoneRetrieveAncestorsRequest);
    v4 = v60;
  }

  recordSaveRequest = self->_recordSaveRequest;
  if (recordSaveRequest)
  {
    objc_msgSend_setRecordSaveRequest_(v60, v5, recordSaveRequest);
    v4 = v60;
  }

  recordRetrieveRequest = self->_recordRetrieveRequest;
  if (recordRetrieveRequest)
  {
    objc_msgSend_setRecordRetrieveRequest_(v60, v5, recordRetrieveRequest);
    v4 = v60;
  }

  recordRetrieveVersionsRequest = self->_recordRetrieveVersionsRequest;
  if (recordRetrieveVersionsRequest)
  {
    objc_msgSend_setRecordRetrieveVersionsRequest_(v60, v5, recordRetrieveVersionsRequest);
    v4 = v60;
  }

  recordRetrieveChangesRequest = self->_recordRetrieveChangesRequest;
  if (recordRetrieveChangesRequest)
  {
    objc_msgSend_setRecordRetrieveChangesRequest_(v60, v5, recordRetrieveChangesRequest);
    v4 = v60;
  }

  recordDeleteRequest = self->_recordDeleteRequest;
  if (recordDeleteRequest)
  {
    objc_msgSend_setRecordDeleteRequest_(v60, v5, recordDeleteRequest);
    v4 = v60;
  }

  recordResolveTokenRequest = self->_recordResolveTokenRequest;
  if (recordResolveTokenRequest)
  {
    objc_msgSend_setRecordResolveTokenRequest_(v60, v5, recordResolveTokenRequest);
    v4 = v60;
  }

  fetchArchivedRecordsRequest = self->_fetchArchivedRecordsRequest;
  if (fetchArchivedRecordsRequest)
  {
    objc_msgSend_setFetchArchivedRecordsRequest_(v60, v5, fetchArchivedRecordsRequest);
    v4 = v60;
  }

  recordMoveRequest = self->_recordMoveRequest;
  if (recordMoveRequest)
  {
    objc_msgSend_setRecordMoveRequest_(v60, v5, recordMoveRequest);
    v4 = v60;
  }

  shareAccessRequest = self->_shareAccessRequest;
  if (shareAccessRequest)
  {
    objc_msgSend_setShareAccessRequest_(v60, v5, shareAccessRequest);
    v4 = v60;
  }

  queryRetrieveRequest = self->_queryRetrieveRequest;
  if (queryRetrieveRequest)
  {
    objc_msgSend_setQueryRetrieveRequest_(v60, v5, queryRetrieveRequest);
    v4 = v60;
  }

  mergeableDeltaSaveRequest = self->_mergeableDeltaSaveRequest;
  if (mergeableDeltaSaveRequest)
  {
    objc_msgSend_setMergeableDeltaSaveRequest_(v60, v5, mergeableDeltaSaveRequest);
    v4 = v60;
  }

  mergeableDeltaMetadataRetrieveRequest = self->_mergeableDeltaMetadataRetrieveRequest;
  if (mergeableDeltaMetadataRetrieveRequest)
  {
    objc_msgSend_setMergeableDeltaMetadataRetrieveRequest_(v60, v5, mergeableDeltaMetadataRetrieveRequest);
    v4 = v60;
  }

  mergeableDeltaReplaceRequest = self->_mergeableDeltaReplaceRequest;
  if (mergeableDeltaReplaceRequest)
  {
    objc_msgSend_setMergeableDeltaReplaceRequest_(v60, v5, mergeableDeltaReplaceRequest);
    v4 = v60;
  }

  mergeableDeltaRetrieveRequest = self->_mergeableDeltaRetrieveRequest;
  if (mergeableDeltaRetrieveRequest)
  {
    objc_msgSend_setMergeableDeltaRetrieveRequest_(v60, v5, mergeableDeltaRetrieveRequest);
    v4 = v60;
  }

  assetUploadTokenRetrieveRequest = self->_assetUploadTokenRetrieveRequest;
  if (assetUploadTokenRetrieveRequest)
  {
    objc_msgSend_setAssetUploadTokenRetrieveRequest_(v60, v5, assetUploadTokenRetrieveRequest);
    v4 = v60;
  }

  deleteContainerRequest = self->_deleteContainerRequest;
  if (deleteContainerRequest)
  {
    objc_msgSend_setDeleteContainerRequest_(v60, v5, deleteContainerRequest);
    v4 = v60;
  }

  userAvailableQuotaRequest = self->_userAvailableQuotaRequest;
  if (userAvailableQuotaRequest)
  {
    objc_msgSend_setUserAvailableQuotaRequest_(v60, v5, userAvailableQuotaRequest);
    v4 = v60;
  }

  bundlesForContainerRequest = self->_bundlesForContainerRequest;
  if (bundlesForContainerRequest)
  {
    objc_msgSend_setBundlesForContainerRequest_(v60, v5, bundlesForContainerRequest);
    v4 = v60;
  }

  webAuthTokenRetrieveRequest = self->_webAuthTokenRetrieveRequest;
  if (webAuthTokenRetrieveRequest)
  {
    objc_msgSend_setWebAuthTokenRetrieveRequest_(v60, v5, webAuthTokenRetrieveRequest);
    v4 = v60;
  }

  updateMissingAssetStatusRequest = self->_updateMissingAssetStatusRequest;
  if (updateMissingAssetStatusRequest)
  {
    objc_msgSend_setUpdateMissingAssetStatusRequest_(v60, v5, updateMissingAssetStatusRequest);
    v4 = v60;
  }

  anonymousShareAddRequest = self->_anonymousShareAddRequest;
  if (anonymousShareAddRequest)
  {
    objc_msgSend_setAnonymousShareAddRequest_(v60, v5, anonymousShareAddRequest);
    v4 = v60;
  }

  anonymousShareRemoveRequest = self->_anonymousShareRemoveRequest;
  if (anonymousShareRemoveRequest)
  {
    objc_msgSend_setAnonymousShareRemoveRequest_(v60, v5, anonymousShareRemoveRequest);
    v4 = v60;
  }

  subscriptionCreateRequest = self->_subscriptionCreateRequest;
  if (subscriptionCreateRequest)
  {
    objc_msgSend_setSubscriptionCreateRequest_(v60, v5, subscriptionCreateRequest);
    v4 = v60;
  }

  subscriptionRetrieveRequest = self->_subscriptionRetrieveRequest;
  if (subscriptionRetrieveRequest)
  {
    objc_msgSend_setSubscriptionRetrieveRequest_(v60, v5, subscriptionRetrieveRequest);
    v4 = v60;
  }

  subscriptionDeleteRequest = self->_subscriptionDeleteRequest;
  if (subscriptionDeleteRequest)
  {
    objc_msgSend_setSubscriptionDeleteRequest_(v60, v5, subscriptionDeleteRequest);
    v4 = v60;
  }

  userRetrieveRequest = self->_userRetrieveRequest;
  if (userRetrieveRequest)
  {
    objc_msgSend_setUserRetrieveRequest_(v60, v5, userRetrieveRequest);
    v4 = v60;
  }

  userQueryRequest = self->_userQueryRequest;
  if (userQueryRequest)
  {
    objc_msgSend_setUserQueryRequest_(v60, v5, userQueryRequest);
    v4 = v60;
  }

  userPrivacySettingsRetrieveRequest = self->_userPrivacySettingsRetrieveRequest;
  if (userPrivacySettingsRetrieveRequest)
  {
    objc_msgSend_setUserPrivacySettingsRetrieveRequest_(v60, v5, userPrivacySettingsRetrieveRequest);
    v4 = v60;
  }

  userPrivacySettingsUpdateRequest = self->_userPrivacySettingsUpdateRequest;
  if (userPrivacySettingsUpdateRequest)
  {
    objc_msgSend_setUserPrivacySettingsUpdateRequest_(v60, v5, userPrivacySettingsUpdateRequest);
    v4 = v60;
  }

  userPrivacySettingsResetRequest = self->_userPrivacySettingsResetRequest;
  if (userPrivacySettingsResetRequest)
  {
    objc_msgSend_setUserPrivacySettingsResetRequest_(v60, v5, userPrivacySettingsResetRequest);
    v4 = v60;
  }

  userPrivacySettingsBatchLookupRequest = self->_userPrivacySettingsBatchLookupRequest;
  if (userPrivacySettingsBatchLookupRequest)
  {
    objc_msgSend_setUserPrivacySettingsBatchLookupRequest_(v60, v5, userPrivacySettingsBatchLookupRequest);
    v4 = v60;
  }

  adopterCapabilitiesSaveRequest = self->_adopterCapabilitiesSaveRequest;
  if (adopterCapabilitiesSaveRequest)
  {
    objc_msgSend_setAdopterCapabilitiesSaveRequest_(v60, v5, adopterCapabilitiesSaveRequest);
    v4 = v60;
  }

  adopterCapabilitiesCheckRequest = self->_adopterCapabilitiesCheckRequest;
  if (adopterCapabilitiesCheckRequest)
  {
    objc_msgSend_setAdopterCapabilitiesCheckRequest_(v60, v5, adopterCapabilitiesCheckRequest);
    v4 = v60;
  }

  zoneUsageSaveRequest = self->_zoneUsageSaveRequest;
  if (zoneUsageSaveRequest)
  {
    objc_msgSend_setZoneUsageSaveRequest_(v60, v5, zoneUsageSaveRequest);
    v4 = v60;
  }

  shareUsageSaveRequest = self->_shareUsageSaveRequest;
  if (shareUsageSaveRequest)
  {
    objc_msgSend_setShareUsageSaveRequest_(v60, v5, shareUsageSaveRequest);
    v4 = v60;
  }

  shareAcceptRequest = self->_shareAcceptRequest;
  if (shareAcceptRequest)
  {
    objc_msgSend_setShareAcceptRequest_(v60, v5, shareAcceptRequest);
    v4 = v60;
  }

  shareDeclineRequest = self->_shareDeclineRequest;
  if (shareDeclineRequest)
  {
    objc_msgSend_setShareDeclineRequest_(v60, v5, shareDeclineRequest);
    v4 = v60;
  }

  shareVettingInitiateRequest = self->_shareVettingInitiateRequest;
  if (shareVettingInitiateRequest)
  {
    objc_msgSend_setShareVettingInitiateRequest_(v60, v5, shareVettingInitiateRequest);
    v4 = v60;
  }

  tokenRegistrationRequest = self->_tokenRegistrationRequest;
  if (tokenRegistrationRequest)
  {
    objc_msgSend_setTokenRegistrationRequest_(v60, v5, tokenRegistrationRequest);
    v4 = v60;
  }

  tokenUnregistrationRequest = self->_tokenUnregistrationRequest;
  if (tokenUnregistrationRequest)
  {
    objc_msgSend_setTokenUnregistrationRequest_(v60, v5, tokenUnregistrationRequest);
    v4 = v60;
  }

  setBadgeCountRequest = self->_setBadgeCountRequest;
  if (setBadgeCountRequest)
  {
    objc_msgSend_setSetBadgeCountRequest_(v60, v5, setBadgeCountRequest);
    v4 = v60;
  }

  notificationSyncRequest = self->_notificationSyncRequest;
  if (notificationSyncRequest)
  {
    objc_msgSend_setNotificationSyncRequest_(v60, v5, notificationSyncRequest);
    v4 = v60;
  }

  notificationMarkReadRequest = self->_notificationMarkReadRequest;
  if (notificationMarkReadRequest)
  {
    objc_msgSend_setNotificationMarkReadRequest_(v60, v5, notificationMarkReadRequest);
    v4 = v60;
  }

  archiveRecordsRequest = self->_archiveRecordsRequest;
  if (archiveRecordsRequest)
  {
    objc_msgSend_setArchiveRecordsRequest_(v60, v5, archiveRecordsRequest);
    v4 = v60;
  }

  markAssetBrokenRequest = self->_markAssetBrokenRequest;
  if (markAssetBrokenRequest)
  {
    objc_msgSend_setMarkAssetBrokenRequest_(v60, v5, markAssetBrokenRequest);
    v4 = v60;
  }

  functionInvokeRequest = self->_functionInvokeRequest;
  if (functionInvokeRequest)
  {
    objc_msgSend_setFunctionInvokeRequest_(v60, v5, functionInvokeRequest);
    v4 = v60;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_header, v11, a3);
  v13 = v10[11];
  v10[11] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_request, v14, a3);
  v16 = v10[27];
  v10[27] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_zoneSaveRequest, v17, a3);
  v19 = v10[53];
  v10[53] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_zoneRetrieveRequest, v20, a3);
  v22 = v10[52];
  v10[52] = v21;

  v24 = objc_msgSend_copyWithZone_(self->_zoneDeleteRequest, v23, a3);
  v25 = v10[49];
  v10[49] = v24;

  v27 = objc_msgSend_copyWithZone_(self->_zoneRetrieveChangesRequest, v26, a3);
  v28 = v10[51];
  v10[51] = v27;

  v30 = objc_msgSend_copyWithZone_(self->_zoneChildrenRetrieveRequest, v29, a3);
  v31 = v10[48];
  v10[48] = v30;

  v33 = objc_msgSend_copyWithZone_(self->_zoneRetrieveAncestorsRequest, v32, a3);
  v34 = v10[50];
  v10[50] = v33;

  v36 = objc_msgSend_copyWithZone_(self->_recordSaveRequest, v35, a3);
  v37 = v10[26];
  v10[26] = v36;

  v39 = objc_msgSend_copyWithZone_(self->_recordRetrieveRequest, v38, a3);
  v40 = v10[24];
  v10[24] = v39;

  v42 = objc_msgSend_copyWithZone_(self->_recordRetrieveVersionsRequest, v41, a3);
  v43 = v10[25];
  v10[25] = v42;

  v45 = objc_msgSend_copyWithZone_(self->_recordRetrieveChangesRequest, v44, a3);
  v46 = v10[23];
  v10[23] = v45;

  v48 = objc_msgSend_copyWithZone_(self->_recordDeleteRequest, v47, a3);
  v49 = v10[20];
  v10[20] = v48;

  v51 = objc_msgSend_copyWithZone_(self->_recordResolveTokenRequest, v50, a3);
  v52 = v10[22];
  v10[22] = v51;

  v54 = objc_msgSend_copyWithZone_(self->_fetchArchivedRecordsRequest, v53, a3);
  v55 = v10[9];
  v10[9] = v54;

  v57 = objc_msgSend_copyWithZone_(self->_recordMoveRequest, v56, a3);
  v58 = v10[21];
  v10[21] = v57;

  v60 = objc_msgSend_copyWithZone_(self->_shareAccessRequest, v59, a3);
  v61 = v10[30];
  v10[30] = v60;

  v63 = objc_msgSend_copyWithZone_(self->_queryRetrieveRequest, v62, a3);
  v64 = v10[19];
  v10[19] = v63;

  v66 = objc_msgSend_copyWithZone_(self->_mergeableDeltaSaveRequest, v65, a3);
  v67 = v10[16];
  v10[16] = v66;

  v69 = objc_msgSend_copyWithZone_(self->_mergeableDeltaMetadataRetrieveRequest, v68, a3);
  v70 = v10[13];
  v10[13] = v69;

  v72 = objc_msgSend_copyWithZone_(self->_mergeableDeltaReplaceRequest, v71, a3);
  v73 = v10[14];
  v10[14] = v72;

  v75 = objc_msgSend_copyWithZone_(self->_mergeableDeltaRetrieveRequest, v74, a3);
  v76 = v10[15];
  v10[15] = v75;

  v78 = objc_msgSend_copyWithZone_(self->_assetUploadTokenRetrieveRequest, v77, a3);
  v79 = v10[6];
  v10[6] = v78;

  v81 = objc_msgSend_copyWithZone_(self->_deleteContainerRequest, v80, a3);
  v82 = v10[8];
  v10[8] = v81;

  v84 = objc_msgSend_copyWithZone_(self->_userAvailableQuotaRequest, v83, a3);
  v85 = v10[40];
  v10[40] = v84;

  v87 = objc_msgSend_copyWithZone_(self->_bundlesForContainerRequest, v86, a3);
  v88 = v10[7];
  v10[7] = v87;

  v90 = objc_msgSend_copyWithZone_(self->_webAuthTokenRetrieveRequest, v89, a3);
  v91 = v10[47];
  v10[47] = v90;

  v93 = objc_msgSend_copyWithZone_(self->_updateMissingAssetStatusRequest, v92, a3);
  v94 = v10[39];
  v10[39] = v93;

  v96 = objc_msgSend_copyWithZone_(self->_anonymousShareAddRequest, v95, a3);
  v97 = v10[3];
  v10[3] = v96;

  v99 = objc_msgSend_copyWithZone_(self->_anonymousShareRemoveRequest, v98, a3);
  v100 = v10[4];
  v10[4] = v99;

  v102 = objc_msgSend_copyWithZone_(self->_subscriptionCreateRequest, v101, a3);
  v103 = v10[34];
  v10[34] = v102;

  v105 = objc_msgSend_copyWithZone_(self->_subscriptionRetrieveRequest, v104, a3);
  v106 = v10[36];
  v10[36] = v105;

  v108 = objc_msgSend_copyWithZone_(self->_subscriptionDeleteRequest, v107, a3);
  v109 = v10[35];
  v10[35] = v108;

  v111 = objc_msgSend_copyWithZone_(self->_userRetrieveRequest, v110, a3);
  v112 = v10[46];
  v10[46] = v111;

  v114 = objc_msgSend_copyWithZone_(self->_userQueryRequest, v113, a3);
  v115 = v10[45];
  v10[45] = v114;

  v117 = objc_msgSend_copyWithZone_(self->_userPrivacySettingsRetrieveRequest, v116, a3);
  v118 = v10[43];
  v10[43] = v117;

  v120 = objc_msgSend_copyWithZone_(self->_userPrivacySettingsUpdateRequest, v119, a3);
  v121 = v10[44];
  v10[44] = v120;

  v123 = objc_msgSend_copyWithZone_(self->_userPrivacySettingsResetRequest, v122, a3);
  v124 = v10[42];
  v10[42] = v123;

  v126 = objc_msgSend_copyWithZone_(self->_userPrivacySettingsBatchLookupRequest, v125, a3);
  v127 = v10[41];
  v10[41] = v126;

  v129 = objc_msgSend_copyWithZone_(self->_adopterCapabilitiesSaveRequest, v128, a3);
  v130 = v10[2];
  v10[2] = v129;

  v132 = objc_msgSend_copyWithZone_(self->_adopterCapabilitiesCheckRequest, v131, a3);
  v133 = v10[1];
  v10[1] = v132;

  v135 = objc_msgSend_copyWithZone_(self->_zoneUsageSaveRequest, v134, a3);
  v136 = v10[54];
  v10[54] = v135;

  v138 = objc_msgSend_copyWithZone_(self->_shareUsageSaveRequest, v137, a3);
  v139 = v10[32];
  v10[32] = v138;

  v141 = objc_msgSend_copyWithZone_(self->_shareAcceptRequest, v140, a3);
  v142 = v10[29];
  v10[29] = v141;

  v144 = objc_msgSend_copyWithZone_(self->_shareDeclineRequest, v143, a3);
  v145 = v10[31];
  v10[31] = v144;

  v147 = objc_msgSend_copyWithZone_(self->_shareVettingInitiateRequest, v146, a3);
  v148 = v10[33];
  v10[33] = v147;

  v150 = objc_msgSend_copyWithZone_(self->_tokenRegistrationRequest, v149, a3);
  v151 = v10[37];
  v10[37] = v150;

  v153 = objc_msgSend_copyWithZone_(self->_tokenUnregistrationRequest, v152, a3);
  v154 = v10[38];
  v10[38] = v153;

  v156 = objc_msgSend_copyWithZone_(self->_setBadgeCountRequest, v155, a3);
  v157 = v10[28];
  v10[28] = v156;

  v159 = objc_msgSend_copyWithZone_(self->_notificationSyncRequest, v158, a3);
  v160 = v10[18];
  v10[18] = v159;

  v162 = objc_msgSend_copyWithZone_(self->_notificationMarkReadRequest, v161, a3);
  v163 = v10[17];
  v10[17] = v162;

  v165 = objc_msgSend_copyWithZone_(self->_archiveRecordsRequest, v164, a3);
  v166 = v10[5];
  v10[5] = v165;

  v168 = objc_msgSend_copyWithZone_(self->_markAssetBrokenRequest, v167, a3);
  v169 = v10[12];
  v10[12] = v168;

  v171 = objc_msgSend_copyWithZone_(self->_functionInvokeRequest, v170, a3);
  v172 = v10[10];
  v10[10] = v171;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_110;
  }

  header = self->_header;
  v9 = v4[11];
  if (header | v9)
  {
    if (!objc_msgSend_isEqual_(header, v7, v9))
    {
      goto LABEL_110;
    }
  }

  request = self->_request;
  v11 = v4[27];
  if (request | v11)
  {
    if (!objc_msgSend_isEqual_(request, v7, v11))
    {
      goto LABEL_110;
    }
  }

  zoneSaveRequest = self->_zoneSaveRequest;
  v13 = v4[53];
  if (zoneSaveRequest | v13)
  {
    if (!objc_msgSend_isEqual_(zoneSaveRequest, v7, v13))
    {
      goto LABEL_110;
    }
  }

  zoneRetrieveRequest = self->_zoneRetrieveRequest;
  v15 = v4[52];
  if (zoneRetrieveRequest | v15)
  {
    if (!objc_msgSend_isEqual_(zoneRetrieveRequest, v7, v15))
    {
      goto LABEL_110;
    }
  }

  zoneDeleteRequest = self->_zoneDeleteRequest;
  v17 = v4[49];
  if (zoneDeleteRequest | v17)
  {
    if (!objc_msgSend_isEqual_(zoneDeleteRequest, v7, v17))
    {
      goto LABEL_110;
    }
  }

  zoneRetrieveChangesRequest = self->_zoneRetrieveChangesRequest;
  v19 = v4[51];
  if (zoneRetrieveChangesRequest | v19)
  {
    if (!objc_msgSend_isEqual_(zoneRetrieveChangesRequest, v7, v19))
    {
      goto LABEL_110;
    }
  }

  zoneChildrenRetrieveRequest = self->_zoneChildrenRetrieveRequest;
  v21 = v4[48];
  if (zoneChildrenRetrieveRequest | v21)
  {
    if (!objc_msgSend_isEqual_(zoneChildrenRetrieveRequest, v7, v21))
    {
      goto LABEL_110;
    }
  }

  zoneRetrieveAncestorsRequest = self->_zoneRetrieveAncestorsRequest;
  v23 = v4[50];
  if (zoneRetrieveAncestorsRequest | v23)
  {
    if (!objc_msgSend_isEqual_(zoneRetrieveAncestorsRequest, v7, v23))
    {
      goto LABEL_110;
    }
  }

  recordSaveRequest = self->_recordSaveRequest;
  v25 = v4[26];
  if (recordSaveRequest | v25)
  {
    if (!objc_msgSend_isEqual_(recordSaveRequest, v7, v25))
    {
      goto LABEL_110;
    }
  }

  recordRetrieveRequest = self->_recordRetrieveRequest;
  v27 = v4[24];
  if (recordRetrieveRequest | v27)
  {
    if (!objc_msgSend_isEqual_(recordRetrieveRequest, v7, v27))
    {
      goto LABEL_110;
    }
  }

  recordRetrieveVersionsRequest = self->_recordRetrieveVersionsRequest;
  v29 = v4[25];
  if (recordRetrieveVersionsRequest | v29)
  {
    if (!objc_msgSend_isEqual_(recordRetrieveVersionsRequest, v7, v29))
    {
      goto LABEL_110;
    }
  }

  recordRetrieveChangesRequest = self->_recordRetrieveChangesRequest;
  v31 = v4[23];
  if (recordRetrieveChangesRequest | v31)
  {
    if (!objc_msgSend_isEqual_(recordRetrieveChangesRequest, v7, v31))
    {
      goto LABEL_110;
    }
  }

  recordDeleteRequest = self->_recordDeleteRequest;
  v33 = v4[20];
  if (recordDeleteRequest | v33)
  {
    if (!objc_msgSend_isEqual_(recordDeleteRequest, v7, v33))
    {
      goto LABEL_110;
    }
  }

  recordResolveTokenRequest = self->_recordResolveTokenRequest;
  v35 = v4[22];
  if (recordResolveTokenRequest | v35)
  {
    if (!objc_msgSend_isEqual_(recordResolveTokenRequest, v7, v35))
    {
      goto LABEL_110;
    }
  }

  fetchArchivedRecordsRequest = self->_fetchArchivedRecordsRequest;
  v37 = v4[9];
  if (fetchArchivedRecordsRequest | v37)
  {
    if (!objc_msgSend_isEqual_(fetchArchivedRecordsRequest, v7, v37))
    {
      goto LABEL_110;
    }
  }

  recordMoveRequest = self->_recordMoveRequest;
  v39 = v4[21];
  if (recordMoveRequest | v39)
  {
    if (!objc_msgSend_isEqual_(recordMoveRequest, v7, v39))
    {
      goto LABEL_110;
    }
  }

  shareAccessRequest = self->_shareAccessRequest;
  v41 = v4[30];
  if (shareAccessRequest | v41)
  {
    if (!objc_msgSend_isEqual_(shareAccessRequest, v7, v41))
    {
      goto LABEL_110;
    }
  }

  queryRetrieveRequest = self->_queryRetrieveRequest;
  v43 = v4[19];
  if (queryRetrieveRequest | v43)
  {
    if (!objc_msgSend_isEqual_(queryRetrieveRequest, v7, v43))
    {
      goto LABEL_110;
    }
  }

  mergeableDeltaSaveRequest = self->_mergeableDeltaSaveRequest;
  v45 = v4[16];
  if (mergeableDeltaSaveRequest | v45)
  {
    if (!objc_msgSend_isEqual_(mergeableDeltaSaveRequest, v7, v45))
    {
      goto LABEL_110;
    }
  }

  mergeableDeltaMetadataRetrieveRequest = self->_mergeableDeltaMetadataRetrieveRequest;
  v47 = v4[13];
  if (mergeableDeltaMetadataRetrieveRequest | v47)
  {
    if (!objc_msgSend_isEqual_(mergeableDeltaMetadataRetrieveRequest, v7, v47))
    {
      goto LABEL_110;
    }
  }

  mergeableDeltaReplaceRequest = self->_mergeableDeltaReplaceRequest;
  v49 = v4[14];
  if (mergeableDeltaReplaceRequest | v49)
  {
    if (!objc_msgSend_isEqual_(mergeableDeltaReplaceRequest, v7, v49))
    {
      goto LABEL_110;
    }
  }

  mergeableDeltaRetrieveRequest = self->_mergeableDeltaRetrieveRequest;
  v51 = v4[15];
  if (mergeableDeltaRetrieveRequest | v51)
  {
    if (!objc_msgSend_isEqual_(mergeableDeltaRetrieveRequest, v7, v51))
    {
      goto LABEL_110;
    }
  }

  assetUploadTokenRetrieveRequest = self->_assetUploadTokenRetrieveRequest;
  v53 = v4[6];
  if (assetUploadTokenRetrieveRequest | v53)
  {
    if (!objc_msgSend_isEqual_(assetUploadTokenRetrieveRequest, v7, v53))
    {
      goto LABEL_110;
    }
  }

  deleteContainerRequest = self->_deleteContainerRequest;
  v55 = v4[8];
  if (deleteContainerRequest | v55)
  {
    if (!objc_msgSend_isEqual_(deleteContainerRequest, v7, v55))
    {
      goto LABEL_110;
    }
  }

  userAvailableQuotaRequest = self->_userAvailableQuotaRequest;
  v57 = v4[40];
  if (userAvailableQuotaRequest | v57)
  {
    if (!objc_msgSend_isEqual_(userAvailableQuotaRequest, v7, v57))
    {
      goto LABEL_110;
    }
  }

  bundlesForContainerRequest = self->_bundlesForContainerRequest;
  v59 = v4[7];
  if (bundlesForContainerRequest | v59)
  {
    if (!objc_msgSend_isEqual_(bundlesForContainerRequest, v7, v59))
    {
      goto LABEL_110;
    }
  }

  webAuthTokenRetrieveRequest = self->_webAuthTokenRetrieveRequest;
  v61 = v4[47];
  if (webAuthTokenRetrieveRequest | v61)
  {
    if (!objc_msgSend_isEqual_(webAuthTokenRetrieveRequest, v7, v61))
    {
      goto LABEL_110;
    }
  }

  updateMissingAssetStatusRequest = self->_updateMissingAssetStatusRequest;
  v63 = v4[39];
  if (updateMissingAssetStatusRequest | v63)
  {
    if (!objc_msgSend_isEqual_(updateMissingAssetStatusRequest, v7, v63))
    {
      goto LABEL_110;
    }
  }

  anonymousShareAddRequest = self->_anonymousShareAddRequest;
  v65 = v4[3];
  if (anonymousShareAddRequest | v65)
  {
    if (!objc_msgSend_isEqual_(anonymousShareAddRequest, v7, v65))
    {
      goto LABEL_110;
    }
  }

  anonymousShareRemoveRequest = self->_anonymousShareRemoveRequest;
  v67 = v4[4];
  if (anonymousShareRemoveRequest | v67)
  {
    if (!objc_msgSend_isEqual_(anonymousShareRemoveRequest, v7, v67))
    {
      goto LABEL_110;
    }
  }

  subscriptionCreateRequest = self->_subscriptionCreateRequest;
  v69 = v4[34];
  if (subscriptionCreateRequest | v69)
  {
    if (!objc_msgSend_isEqual_(subscriptionCreateRequest, v7, v69))
    {
      goto LABEL_110;
    }
  }

  subscriptionRetrieveRequest = self->_subscriptionRetrieveRequest;
  v71 = v4[36];
  if (subscriptionRetrieveRequest | v71)
  {
    if (!objc_msgSend_isEqual_(subscriptionRetrieveRequest, v7, v71))
    {
      goto LABEL_110;
    }
  }

  subscriptionDeleteRequest = self->_subscriptionDeleteRequest;
  v73 = v4[35];
  if (subscriptionDeleteRequest | v73)
  {
    if (!objc_msgSend_isEqual_(subscriptionDeleteRequest, v7, v73))
    {
      goto LABEL_110;
    }
  }

  userRetrieveRequest = self->_userRetrieveRequest;
  v75 = v4[46];
  if (userRetrieveRequest | v75)
  {
    if (!objc_msgSend_isEqual_(userRetrieveRequest, v7, v75))
    {
      goto LABEL_110;
    }
  }

  userQueryRequest = self->_userQueryRequest;
  v77 = v4[45];
  if (userQueryRequest | v77)
  {
    if (!objc_msgSend_isEqual_(userQueryRequest, v7, v77))
    {
      goto LABEL_110;
    }
  }

  userPrivacySettingsRetrieveRequest = self->_userPrivacySettingsRetrieveRequest;
  v79 = v4[43];
  if (userPrivacySettingsRetrieveRequest | v79)
  {
    if (!objc_msgSend_isEqual_(userPrivacySettingsRetrieveRequest, v7, v79))
    {
      goto LABEL_110;
    }
  }

  userPrivacySettingsUpdateRequest = self->_userPrivacySettingsUpdateRequest;
  v81 = v4[44];
  if (userPrivacySettingsUpdateRequest | v81)
  {
    if (!objc_msgSend_isEqual_(userPrivacySettingsUpdateRequest, v7, v81))
    {
      goto LABEL_110;
    }
  }

  userPrivacySettingsResetRequest = self->_userPrivacySettingsResetRequest;
  v83 = v4[42];
  if (userPrivacySettingsResetRequest | v83)
  {
    if (!objc_msgSend_isEqual_(userPrivacySettingsResetRequest, v7, v83))
    {
      goto LABEL_110;
    }
  }

  userPrivacySettingsBatchLookupRequest = self->_userPrivacySettingsBatchLookupRequest;
  v85 = v4[41];
  if (userPrivacySettingsBatchLookupRequest | v85)
  {
    if (!objc_msgSend_isEqual_(userPrivacySettingsBatchLookupRequest, v7, v85))
    {
      goto LABEL_110;
    }
  }

  adopterCapabilitiesSaveRequest = self->_adopterCapabilitiesSaveRequest;
  v87 = v4[2];
  if (adopterCapabilitiesSaveRequest | v87)
  {
    if (!objc_msgSend_isEqual_(adopterCapabilitiesSaveRequest, v7, v87))
    {
      goto LABEL_110;
    }
  }

  adopterCapabilitiesCheckRequest = self->_adopterCapabilitiesCheckRequest;
  v89 = v4[1];
  if (adopterCapabilitiesCheckRequest | v89)
  {
    if (!objc_msgSend_isEqual_(adopterCapabilitiesCheckRequest, v7, v89))
    {
      goto LABEL_110;
    }
  }

  zoneUsageSaveRequest = self->_zoneUsageSaveRequest;
  v91 = v4[54];
  if (zoneUsageSaveRequest | v91)
  {
    if (!objc_msgSend_isEqual_(zoneUsageSaveRequest, v7, v91))
    {
      goto LABEL_110;
    }
  }

  shareUsageSaveRequest = self->_shareUsageSaveRequest;
  v93 = v4[32];
  if (shareUsageSaveRequest | v93)
  {
    if (!objc_msgSend_isEqual_(shareUsageSaveRequest, v7, v93))
    {
      goto LABEL_110;
    }
  }

  shareAcceptRequest = self->_shareAcceptRequest;
  v95 = v4[29];
  if (shareAcceptRequest | v95)
  {
    if (!objc_msgSend_isEqual_(shareAcceptRequest, v7, v95))
    {
      goto LABEL_110;
    }
  }

  shareDeclineRequest = self->_shareDeclineRequest;
  v97 = v4[31];
  if (shareDeclineRequest | v97)
  {
    if (!objc_msgSend_isEqual_(shareDeclineRequest, v7, v97))
    {
      goto LABEL_110;
    }
  }

  shareVettingInitiateRequest = self->_shareVettingInitiateRequest;
  v99 = v4[33];
  if (shareVettingInitiateRequest | v99)
  {
    if (!objc_msgSend_isEqual_(shareVettingInitiateRequest, v7, v99))
    {
      goto LABEL_110;
    }
  }

  tokenRegistrationRequest = self->_tokenRegistrationRequest;
  v101 = v4[37];
  if (tokenRegistrationRequest | v101)
  {
    if (!objc_msgSend_isEqual_(tokenRegistrationRequest, v7, v101))
    {
      goto LABEL_110;
    }
  }

  tokenUnregistrationRequest = self->_tokenUnregistrationRequest;
  v103 = v4[38];
  if (tokenUnregistrationRequest | v103)
  {
    if (!objc_msgSend_isEqual_(tokenUnregistrationRequest, v7, v103))
    {
      goto LABEL_110;
    }
  }

  setBadgeCountRequest = self->_setBadgeCountRequest;
  v105 = v4[28];
  if (setBadgeCountRequest | v105)
  {
    if (!objc_msgSend_isEqual_(setBadgeCountRequest, v7, v105))
    {
      goto LABEL_110;
    }
  }

  notificationSyncRequest = self->_notificationSyncRequest;
  v107 = v4[18];
  if (notificationSyncRequest | v107)
  {
    if (!objc_msgSend_isEqual_(notificationSyncRequest, v7, v107))
    {
      goto LABEL_110;
    }
  }

  if (((notificationMarkReadRequest = self->_notificationMarkReadRequest, v109 = v4[17], !(notificationMarkReadRequest | v109)) || objc_msgSend_isEqual_(notificationMarkReadRequest, v7, v109)) && ((archiveRecordsRequest = self->_archiveRecordsRequest, v111 = v4[5], !(archiveRecordsRequest | v111)) || objc_msgSend_isEqual_(archiveRecordsRequest, v7, v111)) && ((markAssetBrokenRequest = self->_markAssetBrokenRequest, v113 = v4[12], !(markAssetBrokenRequest | v113)) || objc_msgSend_isEqual_(markAssetBrokenRequest, v7, v113)))
  {
    functionInvokeRequest = self->_functionInvokeRequest;
    v115 = v4[10];
    if (functionInvokeRequest | v115)
    {
      isEqual = objc_msgSend_isEqual_(functionInvokeRequest, v7, v115);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
LABEL_110:
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_header, a2, v2);
  v7 = objc_msgSend_hash(self->_request, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_zoneSaveRequest, v8, v9);
  v13 = v7 ^ v10 ^ objc_msgSend_hash(self->_zoneRetrieveRequest, v11, v12);
  v16 = objc_msgSend_hash(self->_zoneDeleteRequest, v14, v15);
  v19 = v16 ^ objc_msgSend_hash(self->_zoneRetrieveChangesRequest, v17, v18);
  v22 = v13 ^ v19 ^ objc_msgSend_hash(self->_zoneChildrenRetrieveRequest, v20, v21);
  v25 = objc_msgSend_hash(self->_zoneRetrieveAncestorsRequest, v23, v24);
  v28 = v25 ^ objc_msgSend_hash(self->_recordSaveRequest, v26, v27);
  v31 = v28 ^ objc_msgSend_hash(self->_recordRetrieveRequest, v29, v30);
  v34 = v22 ^ v31 ^ objc_msgSend_hash(self->_recordRetrieveVersionsRequest, v32, v33);
  v37 = objc_msgSend_hash(self->_recordRetrieveChangesRequest, v35, v36);
  v40 = v37 ^ objc_msgSend_hash(self->_recordDeleteRequest, v38, v39);
  v43 = v40 ^ objc_msgSend_hash(self->_recordResolveTokenRequest, v41, v42);
  v46 = v43 ^ objc_msgSend_hash(self->_fetchArchivedRecordsRequest, v44, v45);
  v49 = v34 ^ v46 ^ objc_msgSend_hash(self->_recordMoveRequest, v47, v48);
  v52 = objc_msgSend_hash(self->_shareAccessRequest, v50, v51);
  v55 = v52 ^ objc_msgSend_hash(self->_queryRetrieveRequest, v53, v54);
  v58 = v55 ^ objc_msgSend_hash(self->_mergeableDeltaSaveRequest, v56, v57);
  v61 = v58 ^ objc_msgSend_hash(self->_mergeableDeltaMetadataRetrieveRequest, v59, v60);
  v64 = v61 ^ objc_msgSend_hash(self->_mergeableDeltaReplaceRequest, v62, v63);
  v67 = v49 ^ v64 ^ objc_msgSend_hash(self->_mergeableDeltaRetrieveRequest, v65, v66);
  v70 = objc_msgSend_hash(self->_assetUploadTokenRetrieveRequest, v68, v69);
  v73 = v70 ^ objc_msgSend_hash(self->_deleteContainerRequest, v71, v72);
  v76 = v73 ^ objc_msgSend_hash(self->_userAvailableQuotaRequest, v74, v75);
  v79 = v76 ^ objc_msgSend_hash(self->_bundlesForContainerRequest, v77, v78);
  v82 = v79 ^ objc_msgSend_hash(self->_webAuthTokenRetrieveRequest, v80, v81);
  v85 = v82 ^ objc_msgSend_hash(self->_updateMissingAssetStatusRequest, v83, v84);
  v88 = v67 ^ v85 ^ objc_msgSend_hash(self->_anonymousShareAddRequest, v86, v87);
  v91 = objc_msgSend_hash(self->_anonymousShareRemoveRequest, v89, v90);
  v94 = v91 ^ objc_msgSend_hash(self->_subscriptionCreateRequest, v92, v93);
  v97 = v94 ^ objc_msgSend_hash(self->_subscriptionRetrieveRequest, v95, v96);
  v100 = v97 ^ objc_msgSend_hash(self->_subscriptionDeleteRequest, v98, v99);
  v103 = v100 ^ objc_msgSend_hash(self->_userRetrieveRequest, v101, v102);
  v106 = v103 ^ objc_msgSend_hash(self->_userQueryRequest, v104, v105);
  v109 = v106 ^ objc_msgSend_hash(self->_userPrivacySettingsRetrieveRequest, v107, v108);
  v112 = v88 ^ v109 ^ objc_msgSend_hash(self->_userPrivacySettingsUpdateRequest, v110, v111);
  v115 = objc_msgSend_hash(self->_userPrivacySettingsResetRequest, v113, v114);
  v118 = v115 ^ objc_msgSend_hash(self->_userPrivacySettingsBatchLookupRequest, v116, v117);
  v121 = v118 ^ objc_msgSend_hash(self->_adopterCapabilitiesSaveRequest, v119, v120);
  v124 = v121 ^ objc_msgSend_hash(self->_adopterCapabilitiesCheckRequest, v122, v123);
  v127 = v124 ^ objc_msgSend_hash(self->_zoneUsageSaveRequest, v125, v126);
  v130 = v127 ^ objc_msgSend_hash(self->_shareUsageSaveRequest, v128, v129);
  v133 = v130 ^ objc_msgSend_hash(self->_shareAcceptRequest, v131, v132);
  v136 = v133 ^ objc_msgSend_hash(self->_shareDeclineRequest, v134, v135);
  v139 = v112 ^ v136 ^ objc_msgSend_hash(self->_shareVettingInitiateRequest, v137, v138);
  v142 = objc_msgSend_hash(self->_tokenRegistrationRequest, v140, v141);
  v145 = v142 ^ objc_msgSend_hash(self->_tokenUnregistrationRequest, v143, v144);
  v148 = v145 ^ objc_msgSend_hash(self->_setBadgeCountRequest, v146, v147);
  v151 = v148 ^ objc_msgSend_hash(self->_notificationSyncRequest, v149, v150);
  v154 = v151 ^ objc_msgSend_hash(self->_notificationMarkReadRequest, v152, v153);
  v157 = v154 ^ objc_msgSend_hash(self->_archiveRecordsRequest, v155, v156);
  v160 = v157 ^ objc_msgSend_hash(self->_markAssetBrokenRequest, v158, v159);
  return v139 ^ v160 ^ objc_msgSend_hash(self->_functionInvokeRequest, v161, v162);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v113 = v4;
  v6 = v4[11];
  if (header)
  {
    if (v6)
    {
      objc_msgSend_mergeFrom_(header, v4, v6);
    }
  }

  else if (v6)
  {
    objc_msgSend_setHeader_(self, v4, v6);
  }

  request = self->_request;
  v8 = v113[27];
  if (request)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(request, v113, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setRequest_(self, v113, v8);
  }

  zoneSaveRequest = self->_zoneSaveRequest;
  v10 = v113[53];
  if (zoneSaveRequest)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(zoneSaveRequest, v113, v10);
    }
  }

  else if (v10)
  {
    objc_msgSend_setZoneSaveRequest_(self, v113, v10);
  }

  zoneRetrieveRequest = self->_zoneRetrieveRequest;
  v12 = v113[52];
  if (zoneRetrieveRequest)
  {
    if (v12)
    {
      objc_msgSend_mergeFrom_(zoneRetrieveRequest, v113, v12);
    }
  }

  else if (v12)
  {
    objc_msgSend_setZoneRetrieveRequest_(self, v113, v12);
  }

  zoneDeleteRequest = self->_zoneDeleteRequest;
  v14 = v113[49];
  if (zoneDeleteRequest)
  {
    if (v14)
    {
      objc_msgSend_mergeFrom_(zoneDeleteRequest, v113, v14);
    }
  }

  else if (v14)
  {
    objc_msgSend_setZoneDeleteRequest_(self, v113, v14);
  }

  zoneRetrieveChangesRequest = self->_zoneRetrieveChangesRequest;
  v16 = v113[51];
  if (zoneRetrieveChangesRequest)
  {
    if (v16)
    {
      objc_msgSend_mergeFrom_(zoneRetrieveChangesRequest, v113, v16);
    }
  }

  else if (v16)
  {
    objc_msgSend_setZoneRetrieveChangesRequest_(self, v113, v16);
  }

  zoneChildrenRetrieveRequest = self->_zoneChildrenRetrieveRequest;
  v18 = v113[48];
  if (zoneChildrenRetrieveRequest)
  {
    if (v18)
    {
      objc_msgSend_mergeFrom_(zoneChildrenRetrieveRequest, v113, v18);
    }
  }

  else if (v18)
  {
    objc_msgSend_setZoneChildrenRetrieveRequest_(self, v113, v18);
  }

  zoneRetrieveAncestorsRequest = self->_zoneRetrieveAncestorsRequest;
  v20 = v113[50];
  if (zoneRetrieveAncestorsRequest)
  {
    if (v20)
    {
      objc_msgSend_mergeFrom_(zoneRetrieveAncestorsRequest, v113, v20);
    }
  }

  else if (v20)
  {
    objc_msgSend_setZoneRetrieveAncestorsRequest_(self, v113, v20);
  }

  recordSaveRequest = self->_recordSaveRequest;
  v22 = v113[26];
  if (recordSaveRequest)
  {
    if (v22)
    {
      objc_msgSend_mergeFrom_(recordSaveRequest, v113, v22);
    }
  }

  else if (v22)
  {
    objc_msgSend_setRecordSaveRequest_(self, v113, v22);
  }

  recordRetrieveRequest = self->_recordRetrieveRequest;
  v24 = v113[24];
  if (recordRetrieveRequest)
  {
    if (v24)
    {
      objc_msgSend_mergeFrom_(recordRetrieveRequest, v113, v24);
    }
  }

  else if (v24)
  {
    objc_msgSend_setRecordRetrieveRequest_(self, v113, v24);
  }

  recordRetrieveVersionsRequest = self->_recordRetrieveVersionsRequest;
  v26 = v113[25];
  if (recordRetrieveVersionsRequest)
  {
    if (v26)
    {
      objc_msgSend_mergeFrom_(recordRetrieveVersionsRequest, v113, v26);
    }
  }

  else if (v26)
  {
    objc_msgSend_setRecordRetrieveVersionsRequest_(self, v113, v26);
  }

  recordRetrieveChangesRequest = self->_recordRetrieveChangesRequest;
  v28 = v113[23];
  if (recordRetrieveChangesRequest)
  {
    if (v28)
    {
      objc_msgSend_mergeFrom_(recordRetrieveChangesRequest, v113, v28);
    }
  }

  else if (v28)
  {
    objc_msgSend_setRecordRetrieveChangesRequest_(self, v113, v28);
  }

  recordDeleteRequest = self->_recordDeleteRequest;
  v30 = v113[20];
  if (recordDeleteRequest)
  {
    if (v30)
    {
      objc_msgSend_mergeFrom_(recordDeleteRequest, v113, v30);
    }
  }

  else if (v30)
  {
    objc_msgSend_setRecordDeleteRequest_(self, v113, v30);
  }

  recordResolveTokenRequest = self->_recordResolveTokenRequest;
  v32 = v113[22];
  if (recordResolveTokenRequest)
  {
    if (v32)
    {
      objc_msgSend_mergeFrom_(recordResolveTokenRequest, v113, v32);
    }
  }

  else if (v32)
  {
    objc_msgSend_setRecordResolveTokenRequest_(self, v113, v32);
  }

  fetchArchivedRecordsRequest = self->_fetchArchivedRecordsRequest;
  v34 = v113[9];
  if (fetchArchivedRecordsRequest)
  {
    if (v34)
    {
      objc_msgSend_mergeFrom_(fetchArchivedRecordsRequest, v113, v34);
    }
  }

  else if (v34)
  {
    objc_msgSend_setFetchArchivedRecordsRequest_(self, v113, v34);
  }

  recordMoveRequest = self->_recordMoveRequest;
  v36 = v113[21];
  if (recordMoveRequest)
  {
    if (v36)
    {
      objc_msgSend_mergeFrom_(recordMoveRequest, v113, v36);
    }
  }

  else if (v36)
  {
    objc_msgSend_setRecordMoveRequest_(self, v113, v36);
  }

  shareAccessRequest = self->_shareAccessRequest;
  v38 = v113[30];
  if (shareAccessRequest)
  {
    if (v38)
    {
      objc_msgSend_mergeFrom_(shareAccessRequest, v113, v38);
    }
  }

  else if (v38)
  {
    objc_msgSend_setShareAccessRequest_(self, v113, v38);
  }

  queryRetrieveRequest = self->_queryRetrieveRequest;
  v40 = v113[19];
  if (queryRetrieveRequest)
  {
    if (v40)
    {
      objc_msgSend_mergeFrom_(queryRetrieveRequest, v113, v40);
    }
  }

  else if (v40)
  {
    objc_msgSend_setQueryRetrieveRequest_(self, v113, v40);
  }

  mergeableDeltaSaveRequest = self->_mergeableDeltaSaveRequest;
  v42 = v113[16];
  if (mergeableDeltaSaveRequest)
  {
    if (v42)
    {
      objc_msgSend_mergeFrom_(mergeableDeltaSaveRequest, v113, v42);
    }
  }

  else if (v42)
  {
    objc_msgSend_setMergeableDeltaSaveRequest_(self, v113, v42);
  }

  mergeableDeltaMetadataRetrieveRequest = self->_mergeableDeltaMetadataRetrieveRequest;
  v44 = v113[13];
  if (mergeableDeltaMetadataRetrieveRequest)
  {
    if (v44)
    {
      objc_msgSend_mergeFrom_(mergeableDeltaMetadataRetrieveRequest, v113, v44);
    }
  }

  else if (v44)
  {
    objc_msgSend_setMergeableDeltaMetadataRetrieveRequest_(self, v113, v44);
  }

  mergeableDeltaReplaceRequest = self->_mergeableDeltaReplaceRequest;
  v46 = v113[14];
  if (mergeableDeltaReplaceRequest)
  {
    if (v46)
    {
      objc_msgSend_mergeFrom_(mergeableDeltaReplaceRequest, v113, v46);
    }
  }

  else if (v46)
  {
    objc_msgSend_setMergeableDeltaReplaceRequest_(self, v113, v46);
  }

  mergeableDeltaRetrieveRequest = self->_mergeableDeltaRetrieveRequest;
  v48 = v113[15];
  if (mergeableDeltaRetrieveRequest)
  {
    if (v48)
    {
      objc_msgSend_mergeFrom_(mergeableDeltaRetrieveRequest, v113, v48);
    }
  }

  else if (v48)
  {
    objc_msgSend_setMergeableDeltaRetrieveRequest_(self, v113, v48);
  }

  assetUploadTokenRetrieveRequest = self->_assetUploadTokenRetrieveRequest;
  v50 = v113[6];
  if (assetUploadTokenRetrieveRequest)
  {
    if (v50)
    {
      objc_msgSend_mergeFrom_(assetUploadTokenRetrieveRequest, v113, v50);
    }
  }

  else if (v50)
  {
    objc_msgSend_setAssetUploadTokenRetrieveRequest_(self, v113, v50);
  }

  deleteContainerRequest = self->_deleteContainerRequest;
  v52 = v113[8];
  if (deleteContainerRequest)
  {
    if (v52)
    {
      objc_msgSend_mergeFrom_(deleteContainerRequest, v113, v52);
    }
  }

  else if (v52)
  {
    objc_msgSend_setDeleteContainerRequest_(self, v113, v52);
  }

  userAvailableQuotaRequest = self->_userAvailableQuotaRequest;
  v54 = v113[40];
  if (userAvailableQuotaRequest)
  {
    if (v54)
    {
      objc_msgSend_mergeFrom_(userAvailableQuotaRequest, v113, v54);
    }
  }

  else if (v54)
  {
    objc_msgSend_setUserAvailableQuotaRequest_(self, v113, v54);
  }

  bundlesForContainerRequest = self->_bundlesForContainerRequest;
  v56 = v113[7];
  if (bundlesForContainerRequest)
  {
    if (v56)
    {
      objc_msgSend_mergeFrom_(bundlesForContainerRequest, v113, v56);
    }
  }

  else if (v56)
  {
    objc_msgSend_setBundlesForContainerRequest_(self, v113, v56);
  }

  webAuthTokenRetrieveRequest = self->_webAuthTokenRetrieveRequest;
  v58 = v113[47];
  if (webAuthTokenRetrieveRequest)
  {
    if (v58)
    {
      objc_msgSend_mergeFrom_(webAuthTokenRetrieveRequest, v113, v58);
    }
  }

  else if (v58)
  {
    objc_msgSend_setWebAuthTokenRetrieveRequest_(self, v113, v58);
  }

  updateMissingAssetStatusRequest = self->_updateMissingAssetStatusRequest;
  v60 = v113[39];
  if (updateMissingAssetStatusRequest)
  {
    if (v60)
    {
      objc_msgSend_mergeFrom_(updateMissingAssetStatusRequest, v113, v60);
    }
  }

  else if (v60)
  {
    objc_msgSend_setUpdateMissingAssetStatusRequest_(self, v113, v60);
  }

  anonymousShareAddRequest = self->_anonymousShareAddRequest;
  v62 = v113[3];
  if (anonymousShareAddRequest)
  {
    if (v62)
    {
      objc_msgSend_mergeFrom_(anonymousShareAddRequest, v113, v62);
    }
  }

  else if (v62)
  {
    objc_msgSend_setAnonymousShareAddRequest_(self, v113, v62);
  }

  anonymousShareRemoveRequest = self->_anonymousShareRemoveRequest;
  v64 = v113[4];
  if (anonymousShareRemoveRequest)
  {
    if (v64)
    {
      objc_msgSend_mergeFrom_(anonymousShareRemoveRequest, v113, v64);
    }
  }

  else if (v64)
  {
    objc_msgSend_setAnonymousShareRemoveRequest_(self, v113, v64);
  }

  subscriptionCreateRequest = self->_subscriptionCreateRequest;
  v66 = v113[34];
  if (subscriptionCreateRequest)
  {
    if (v66)
    {
      objc_msgSend_mergeFrom_(subscriptionCreateRequest, v113, v66);
    }
  }

  else if (v66)
  {
    objc_msgSend_setSubscriptionCreateRequest_(self, v113, v66);
  }

  subscriptionRetrieveRequest = self->_subscriptionRetrieveRequest;
  v68 = v113[36];
  if (subscriptionRetrieveRequest)
  {
    if (v68)
    {
      objc_msgSend_mergeFrom_(subscriptionRetrieveRequest, v113, v68);
    }
  }

  else if (v68)
  {
    objc_msgSend_setSubscriptionRetrieveRequest_(self, v113, v68);
  }

  subscriptionDeleteRequest = self->_subscriptionDeleteRequest;
  v70 = v113[35];
  if (subscriptionDeleteRequest)
  {
    if (v70)
    {
      objc_msgSend_mergeFrom_(subscriptionDeleteRequest, v113, v70);
    }
  }

  else if (v70)
  {
    objc_msgSend_setSubscriptionDeleteRequest_(self, v113, v70);
  }

  userRetrieveRequest = self->_userRetrieveRequest;
  v72 = v113[46];
  if (userRetrieveRequest)
  {
    if (v72)
    {
      objc_msgSend_mergeFrom_(userRetrieveRequest, v113, v72);
    }
  }

  else if (v72)
  {
    objc_msgSend_setUserRetrieveRequest_(self, v113, v72);
  }

  userQueryRequest = self->_userQueryRequest;
  v74 = v113[45];
  if (userQueryRequest)
  {
    if (v74)
    {
      objc_msgSend_mergeFrom_(userQueryRequest, v113, v74);
    }
  }

  else if (v74)
  {
    objc_msgSend_setUserQueryRequest_(self, v113, v74);
  }

  userPrivacySettingsRetrieveRequest = self->_userPrivacySettingsRetrieveRequest;
  v76 = v113[43];
  if (userPrivacySettingsRetrieveRequest)
  {
    if (v76)
    {
      objc_msgSend_mergeFrom_(userPrivacySettingsRetrieveRequest, v113, v76);
    }
  }

  else if (v76)
  {
    objc_msgSend_setUserPrivacySettingsRetrieveRequest_(self, v113, v76);
  }

  userPrivacySettingsUpdateRequest = self->_userPrivacySettingsUpdateRequest;
  v78 = v113[44];
  if (userPrivacySettingsUpdateRequest)
  {
    if (v78)
    {
      objc_msgSend_mergeFrom_(userPrivacySettingsUpdateRequest, v113, v78);
    }
  }

  else if (v78)
  {
    objc_msgSend_setUserPrivacySettingsUpdateRequest_(self, v113, v78);
  }

  userPrivacySettingsResetRequest = self->_userPrivacySettingsResetRequest;
  v80 = v113[42];
  if (userPrivacySettingsResetRequest)
  {
    if (v80)
    {
      objc_msgSend_mergeFrom_(userPrivacySettingsResetRequest, v113, v80);
    }
  }

  else if (v80)
  {
    objc_msgSend_setUserPrivacySettingsResetRequest_(self, v113, v80);
  }

  userPrivacySettingsBatchLookupRequest = self->_userPrivacySettingsBatchLookupRequest;
  v82 = v113[41];
  if (userPrivacySettingsBatchLookupRequest)
  {
    if (v82)
    {
      objc_msgSend_mergeFrom_(userPrivacySettingsBatchLookupRequest, v113, v82);
    }
  }

  else if (v82)
  {
    objc_msgSend_setUserPrivacySettingsBatchLookupRequest_(self, v113, v82);
  }

  adopterCapabilitiesSaveRequest = self->_adopterCapabilitiesSaveRequest;
  v84 = v113[2];
  if (adopterCapabilitiesSaveRequest)
  {
    if (v84)
    {
      objc_msgSend_mergeFrom_(adopterCapabilitiesSaveRequest, v113, v84);
    }
  }

  else if (v84)
  {
    objc_msgSend_setAdopterCapabilitiesSaveRequest_(self, v113, v84);
  }

  adopterCapabilitiesCheckRequest = self->_adopterCapabilitiesCheckRequest;
  v86 = v113[1];
  if (adopterCapabilitiesCheckRequest)
  {
    if (v86)
    {
      objc_msgSend_mergeFrom_(adopterCapabilitiesCheckRequest, v113, v86);
    }
  }

  else if (v86)
  {
    objc_msgSend_setAdopterCapabilitiesCheckRequest_(self, v113, v86);
  }

  zoneUsageSaveRequest = self->_zoneUsageSaveRequest;
  v88 = v113[54];
  if (zoneUsageSaveRequest)
  {
    if (v88)
    {
      objc_msgSend_mergeFrom_(zoneUsageSaveRequest, v113, v88);
    }
  }

  else if (v88)
  {
    objc_msgSend_setZoneUsageSaveRequest_(self, v113, v88);
  }

  shareUsageSaveRequest = self->_shareUsageSaveRequest;
  v90 = v113[32];
  if (shareUsageSaveRequest)
  {
    if (v90)
    {
      objc_msgSend_mergeFrom_(shareUsageSaveRequest, v113, v90);
    }
  }

  else if (v90)
  {
    objc_msgSend_setShareUsageSaveRequest_(self, v113, v90);
  }

  shareAcceptRequest = self->_shareAcceptRequest;
  v92 = v113[29];
  if (shareAcceptRequest)
  {
    if (v92)
    {
      objc_msgSend_mergeFrom_(shareAcceptRequest, v113, v92);
    }
  }

  else if (v92)
  {
    objc_msgSend_setShareAcceptRequest_(self, v113, v92);
  }

  shareDeclineRequest = self->_shareDeclineRequest;
  v94 = v113[31];
  if (shareDeclineRequest)
  {
    if (v94)
    {
      objc_msgSend_mergeFrom_(shareDeclineRequest, v113, v94);
    }
  }

  else if (v94)
  {
    objc_msgSend_setShareDeclineRequest_(self, v113, v94);
  }

  shareVettingInitiateRequest = self->_shareVettingInitiateRequest;
  v96 = v113[33];
  if (shareVettingInitiateRequest)
  {
    if (v96)
    {
      objc_msgSend_mergeFrom_(shareVettingInitiateRequest, v113, v96);
    }
  }

  else if (v96)
  {
    objc_msgSend_setShareVettingInitiateRequest_(self, v113, v96);
  }

  tokenRegistrationRequest = self->_tokenRegistrationRequest;
  v98 = v113[37];
  if (tokenRegistrationRequest)
  {
    if (v98)
    {
      objc_msgSend_mergeFrom_(tokenRegistrationRequest, v113, v98);
    }
  }

  else if (v98)
  {
    objc_msgSend_setTokenRegistrationRequest_(self, v113, v98);
  }

  tokenUnregistrationRequest = self->_tokenUnregistrationRequest;
  v100 = v113[38];
  if (tokenUnregistrationRequest)
  {
    if (v100)
    {
      objc_msgSend_mergeFrom_(tokenUnregistrationRequest, v113, v100);
    }
  }

  else if (v100)
  {
    objc_msgSend_setTokenUnregistrationRequest_(self, v113, v100);
  }

  setBadgeCountRequest = self->_setBadgeCountRequest;
  v102 = v113[28];
  if (setBadgeCountRequest)
  {
    if (v102)
    {
      objc_msgSend_mergeFrom_(setBadgeCountRequest, v113, v102);
    }
  }

  else if (v102)
  {
    objc_msgSend_setSetBadgeCountRequest_(self, v113, v102);
  }

  notificationSyncRequest = self->_notificationSyncRequest;
  v104 = v113[18];
  if (notificationSyncRequest)
  {
    if (v104)
    {
      objc_msgSend_mergeFrom_(notificationSyncRequest, v113, v104);
    }
  }

  else if (v104)
  {
    objc_msgSend_setNotificationSyncRequest_(self, v113, v104);
  }

  notificationMarkReadRequest = self->_notificationMarkReadRequest;
  v106 = v113[17];
  if (notificationMarkReadRequest)
  {
    if (v106)
    {
      objc_msgSend_mergeFrom_(notificationMarkReadRequest, v113, v106);
    }
  }

  else if (v106)
  {
    objc_msgSend_setNotificationMarkReadRequest_(self, v113, v106);
  }

  archiveRecordsRequest = self->_archiveRecordsRequest;
  v108 = v113[5];
  if (archiveRecordsRequest)
  {
    if (v108)
    {
      objc_msgSend_mergeFrom_(archiveRecordsRequest, v113, v108);
    }
  }

  else if (v108)
  {
    objc_msgSend_setArchiveRecordsRequest_(self, v113, v108);
  }

  markAssetBrokenRequest = self->_markAssetBrokenRequest;
  v110 = v113[12];
  if (markAssetBrokenRequest)
  {
    if (v110)
    {
      objc_msgSend_mergeFrom_(markAssetBrokenRequest, v113, v110);
    }
  }

  else if (v110)
  {
    objc_msgSend_setMarkAssetBrokenRequest_(self, v113, v110);
  }

  functionInvokeRequest = self->_functionInvokeRequest;
  v112 = v113[10];
  if (functionInvokeRequest)
  {
    if (v112)
    {
      objc_msgSend_mergeFrom_(functionInvokeRequest, v113, v112);
    }
  }

  else if (v112)
  {
    objc_msgSend_setFunctionInvokeRequest_(self, v113, v112);
  }
}

@end