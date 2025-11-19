@interface CKDPResponseOperation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPResponseOperation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPResponseOperation;
  v4 = [(CKDPResponseOperation *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  response = self->_response;
  if (response)
  {
    v8 = objc_msgSend_dictionaryRepresentation(response, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"response");
  }

  v10 = self->_result;
  if (v10)
  {
    v11 = objc_msgSend_dictionaryRepresentation(v10, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"result");
  }

  header = self->_header;
  if (header)
  {
    v14 = objc_msgSend_dictionaryRepresentation(header, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"header");
  }

  functionInvokeResponse = self->_functionInvokeResponse;
  if (functionInvokeResponse)
  {
    v17 = objc_msgSend_dictionaryRepresentation(functionInvokeResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"functionInvokeResponse");
  }

  mergeableDeltaSaveResponse = self->_mergeableDeltaSaveResponse;
  if (mergeableDeltaSaveResponse)
  {
    v20 = objc_msgSend_dictionaryRepresentation(mergeableDeltaSaveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v21, v20, @"mergeableDeltaSaveResponse");
  }

  mergeableDeltaMetadataRetrieveResponse = self->_mergeableDeltaMetadataRetrieveResponse;
  if (mergeableDeltaMetadataRetrieveResponse)
  {
    v23 = objc_msgSend_dictionaryRepresentation(mergeableDeltaMetadataRetrieveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v24, v23, @"mergeableDeltaMetadataRetrieveResponse");
  }

  mergeableDeltaReplaceResponse = self->_mergeableDeltaReplaceResponse;
  if (mergeableDeltaReplaceResponse)
  {
    v26 = objc_msgSend_dictionaryRepresentation(mergeableDeltaReplaceResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v27, v26, @"mergeableDeltaReplaceResponse");
  }

  mergeableDeltaRetrieveResponse = self->_mergeableDeltaRetrieveResponse;
  if (mergeableDeltaRetrieveResponse)
  {
    v29 = objc_msgSend_dictionaryRepresentation(mergeableDeltaRetrieveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v30, v29, @"mergeableDeltaRetrieveResponse");
  }

  shareVettingInitiateResponse = self->_shareVettingInitiateResponse;
  if (shareVettingInitiateResponse)
  {
    v32 = objc_msgSend_dictionaryRepresentation(shareVettingInitiateResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v33, v32, @"shareVettingInitiateResponse");
  }

  zoneSaveResponse = self->_zoneSaveResponse;
  if (zoneSaveResponse)
  {
    v35 = objc_msgSend_dictionaryRepresentation(zoneSaveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v36, v35, @"zoneSaveResponse");
  }

  zoneRetrieveResponse = self->_zoneRetrieveResponse;
  if (zoneRetrieveResponse)
  {
    v38 = objc_msgSend_dictionaryRepresentation(zoneRetrieveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v39, v38, @"zoneRetrieveResponse");
  }

  zoneDeleteResponse = self->_zoneDeleteResponse;
  if (zoneDeleteResponse)
  {
    v41 = objc_msgSend_dictionaryRepresentation(zoneDeleteResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v42, v41, @"zoneDeleteResponse");
  }

  zoneRetrieveChangesResponse = self->_zoneRetrieveChangesResponse;
  if (zoneRetrieveChangesResponse)
  {
    v44 = objc_msgSend_dictionaryRepresentation(zoneRetrieveChangesResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v45, v44, @"zoneRetrieveChangesResponse");
  }

  zoneRetrieveAncestorsResponse = self->_zoneRetrieveAncestorsResponse;
  if (zoneRetrieveAncestorsResponse)
  {
    v47 = objc_msgSend_dictionaryRepresentation(zoneRetrieveAncestorsResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v48, v47, @"zoneRetrieveAncestorsResponse");
  }

  zoneChildrenRetrieveResponse = self->_zoneChildrenRetrieveResponse;
  if (zoneChildrenRetrieveResponse)
  {
    v50 = objc_msgSend_dictionaryRepresentation(zoneChildrenRetrieveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v51, v50, @"zoneChildrenRetrieveResponse");
  }

  recordSaveResponse = self->_recordSaveResponse;
  if (recordSaveResponse)
  {
    v53 = objc_msgSend_dictionaryRepresentation(recordSaveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v54, v53, @"recordSaveResponse");
  }

  recordRetrieveResponse = self->_recordRetrieveResponse;
  if (recordRetrieveResponse)
  {
    v56 = objc_msgSend_dictionaryRepresentation(recordRetrieveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v57, v56, @"recordRetrieveResponse");
  }

  recordRetrieveVersionsResponse = self->_recordRetrieveVersionsResponse;
  if (recordRetrieveVersionsResponse)
  {
    v59 = objc_msgSend_dictionaryRepresentation(recordRetrieveVersionsResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v60, v59, @"recordRetrieveVersionsResponse");
  }

  recordRetrieveChangesResponse = self->_recordRetrieveChangesResponse;
  if (recordRetrieveChangesResponse)
  {
    v62 = objc_msgSend_dictionaryRepresentation(recordRetrieveChangesResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v63, v62, @"recordRetrieveChangesResponse");
  }

  recordDeleteResponse = self->_recordDeleteResponse;
  if (recordDeleteResponse)
  {
    v65 = objc_msgSend_dictionaryRepresentation(recordDeleteResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v66, v65, @"recordDeleteResponse");
  }

  recordResolveTokenResponse = self->_recordResolveTokenResponse;
  if (recordResolveTokenResponse)
  {
    v68 = objc_msgSend_dictionaryRepresentation(recordResolveTokenResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v69, v68, @"recordResolveTokenResponse");
  }

  shareAccessResponse = self->_shareAccessResponse;
  if (shareAccessResponse)
  {
    v71 = objc_msgSend_dictionaryRepresentation(shareAccessResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v72, v71, @"shareAccessResponse");
  }

  recordMoveResponse = self->_recordMoveResponse;
  if (recordMoveResponse)
  {
    v74 = objc_msgSend_dictionaryRepresentation(recordMoveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v75, v74, @"recordMoveResponse");
  }

  fetchArchivedRecordsResponse = self->_fetchArchivedRecordsResponse;
  if (fetchArchivedRecordsResponse)
  {
    v77 = objc_msgSend_dictionaryRepresentation(fetchArchivedRecordsResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v78, v77, @"fetchArchivedRecordsResponse");
  }

  userAvailableQuotaResponse = self->_userAvailableQuotaResponse;
  if (userAvailableQuotaResponse)
  {
    v80 = objc_msgSend_dictionaryRepresentation(userAvailableQuotaResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v81, v80, @"userAvailableQuotaResponse");
  }

  userRetrieveResponse = self->_userRetrieveResponse;
  if (userRetrieveResponse)
  {
    v83 = objc_msgSend_dictionaryRepresentation(userRetrieveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v84, v83, @"userRetrieveResponse");
  }

  queryRetrieveResponse = self->_queryRetrieveResponse;
  if (queryRetrieveResponse)
  {
    v86 = objc_msgSend_dictionaryRepresentation(queryRetrieveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v87, v86, @"queryRetrieveResponse");
  }

  assetUploadTokenRetrieveResponse = self->_assetUploadTokenRetrieveResponse;
  if (assetUploadTokenRetrieveResponse)
  {
    v89 = objc_msgSend_dictionaryRepresentation(assetUploadTokenRetrieveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v90, v89, @"assetUploadTokenRetrieveResponse");
  }

  deleteContainerResponse = self->_deleteContainerResponse;
  if (deleteContainerResponse)
  {
    v92 = objc_msgSend_dictionaryRepresentation(deleteContainerResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v93, v92, @"deleteContainerResponse");
  }

  bundlesForContainerResponse = self->_bundlesForContainerResponse;
  if (bundlesForContainerResponse)
  {
    v95 = objc_msgSend_dictionaryRepresentation(bundlesForContainerResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v96, v95, @"bundlesForContainerResponse");
  }

  webAuthTokenRetrieveResponse = self->_webAuthTokenRetrieveResponse;
  if (webAuthTokenRetrieveResponse)
  {
    v98 = objc_msgSend_dictionaryRepresentation(webAuthTokenRetrieveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v99, v98, @"webAuthTokenRetrieveResponse");
  }

  updateMissingAssetStatusResponse = self->_updateMissingAssetStatusResponse;
  if (updateMissingAssetStatusResponse)
  {
    v101 = objc_msgSend_dictionaryRepresentation(updateMissingAssetStatusResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v102, v101, @"updateMissingAssetStatusResponse");
  }

  shareAcceptResponse = self->_shareAcceptResponse;
  if (shareAcceptResponse)
  {
    v104 = objc_msgSend_dictionaryRepresentation(shareAcceptResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v105, v104, @"shareAcceptResponse");
  }

  shareDeclineResponse = self->_shareDeclineResponse;
  if (shareDeclineResponse)
  {
    v107 = objc_msgSend_dictionaryRepresentation(shareDeclineResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v108, v107, @"shareDeclineResponse");
  }

  anonymousShareAddResponse = self->_anonymousShareAddResponse;
  if (anonymousShareAddResponse)
  {
    v110 = objc_msgSend_dictionaryRepresentation(anonymousShareAddResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v111, v110, @"anonymousShareAddResponse");
  }

  anonymousShareRemoveResponse = self->_anonymousShareRemoveResponse;
  if (anonymousShareRemoveResponse)
  {
    v113 = objc_msgSend_dictionaryRepresentation(anonymousShareRemoveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v114, v113, @"anonymousShareRemoveResponse");
  }

  subscriptionCreateResponse = self->_subscriptionCreateResponse;
  if (subscriptionCreateResponse)
  {
    v116 = objc_msgSend_dictionaryRepresentation(subscriptionCreateResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v117, v116, @"subscriptionCreateResponse");
  }

  subscriptionRetrieveResponse = self->_subscriptionRetrieveResponse;
  if (subscriptionRetrieveResponse)
  {
    v119 = objc_msgSend_dictionaryRepresentation(subscriptionRetrieveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v120, v119, @"subscriptionRetrieveResponse");
  }

  subscriptionDeleteResponse = self->_subscriptionDeleteResponse;
  if (subscriptionDeleteResponse)
  {
    v122 = objc_msgSend_dictionaryRepresentation(subscriptionDeleteResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v123, v122, @"subscriptionDeleteResponse");
  }

  archiveRecordsResponse = self->_archiveRecordsResponse;
  if (archiveRecordsResponse)
  {
    v125 = objc_msgSend_dictionaryRepresentation(archiveRecordsResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v126, v125, @"archiveRecordsResponse");
  }

  markAssetBrokenResponse = self->_markAssetBrokenResponse;
  if (markAssetBrokenResponse)
  {
    v128 = objc_msgSend_dictionaryRepresentation(markAssetBrokenResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v129, v128, @"markAssetBrokenResponse");
  }

  userQueryResponse = self->_userQueryResponse;
  if (userQueryResponse)
  {
    v131 = objc_msgSend_dictionaryRepresentation(userQueryResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v132, v131, @"userQueryResponse");
  }

  userPrivacySettingsUpdateResponse = self->_userPrivacySettingsUpdateResponse;
  if (userPrivacySettingsUpdateResponse)
  {
    v134 = objc_msgSend_dictionaryRepresentation(userPrivacySettingsUpdateResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v135, v134, @"userPrivacySettingsUpdateResponse");
  }

  userPrivacySettingsResetResponse = self->_userPrivacySettingsResetResponse;
  if (userPrivacySettingsResetResponse)
  {
    v137 = objc_msgSend_dictionaryRepresentation(userPrivacySettingsResetResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v138, v137, @"userPrivacySettingsResetResponse");
  }

  userPrivacySettingsBatchLookupResponse = self->_userPrivacySettingsBatchLookupResponse;
  if (userPrivacySettingsBatchLookupResponse)
  {
    v140 = objc_msgSend_dictionaryRepresentation(userPrivacySettingsBatchLookupResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v141, v140, @"userPrivacySettingsBatchLookupResponse");
  }

  userPrivacySettingsRetrieveResponse = self->_userPrivacySettingsRetrieveResponse;
  if (userPrivacySettingsRetrieveResponse)
  {
    v143 = objc_msgSend_dictionaryRepresentation(userPrivacySettingsRetrieveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v144, v143, @"userPrivacySettingsRetrieveResponse");
  }

  adopterCapabilitiesSaveResponse = self->_adopterCapabilitiesSaveResponse;
  if (adopterCapabilitiesSaveResponse)
  {
    v146 = objc_msgSend_dictionaryRepresentation(adopterCapabilitiesSaveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v147, v146, @"adopterCapabilitiesSaveResponse");
  }

  zoneUsageSaveResponse = self->_zoneUsageSaveResponse;
  if (zoneUsageSaveResponse)
  {
    v149 = objc_msgSend_dictionaryRepresentation(zoneUsageSaveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v150, v149, @"zoneUsageSaveResponse");
  }

  shareUsageSaveResponse = self->_shareUsageSaveResponse;
  if (shareUsageSaveResponse)
  {
    v152 = objc_msgSend_dictionaryRepresentation(shareUsageSaveResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v153, v152, @"shareUsageSaveResponse");
  }

  adopterCapabilitiesCheckResponse = self->_adopterCapabilitiesCheckResponse;
  if (adopterCapabilitiesCheckResponse)
  {
    v155 = objc_msgSend_dictionaryRepresentation(adopterCapabilitiesCheckResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v156, v155, @"adopterCapabilitiesCheckResponse");
  }

  tokenRegistrationResponse = self->_tokenRegistrationResponse;
  if (tokenRegistrationResponse)
  {
    v158 = objc_msgSend_dictionaryRepresentation(tokenRegistrationResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v159, v158, @"tokenRegistrationResponse");
  }

  tokenUnregistrationResponse = self->_tokenUnregistrationResponse;
  if (tokenUnregistrationResponse)
  {
    v161 = objc_msgSend_dictionaryRepresentation(tokenUnregistrationResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v162, v161, @"tokenUnregistrationResponse");
  }

  setBadgeCountResponse = self->_setBadgeCountResponse;
  if (setBadgeCountResponse)
  {
    v164 = objc_msgSend_dictionaryRepresentation(setBadgeCountResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v165, v164, @"setBadgeCountResponse");
  }

  notificationSyncResponse = self->_notificationSyncResponse;
  if (notificationSyncResponse)
  {
    v167 = objc_msgSend_dictionaryRepresentation(notificationSyncResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v168, v167, @"notificationSyncResponse");
  }

  notificationMarkReadResponse = self->_notificationMarkReadResponse;
  if (notificationMarkReadResponse)
  {
    v170 = objc_msgSend_dictionaryRepresentation(notificationMarkReadResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v171, v170, @"notificationMarkReadResponse");
  }

  v172 = v6;

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_response)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_result)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneSaveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneRetrieveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneDeleteResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneRetrieveChangesResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneChildrenRetrieveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneRetrieveAncestorsResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordSaveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordRetrieveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordRetrieveVersionsResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordRetrieveChangesResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordDeleteResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordResolveTokenResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_fetchArchivedRecordsResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_recordMoveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_shareAccessResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_queryRetrieveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mergeableDeltaSaveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mergeableDeltaMetadataRetrieveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mergeableDeltaReplaceResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mergeableDeltaRetrieveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_assetUploadTokenRetrieveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_deleteContainerResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userAvailableQuotaResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_bundlesForContainerResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_webAuthTokenRetrieveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_updateMissingAssetStatusResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_anonymousShareAddResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_anonymousShareRemoveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_subscriptionCreateResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_subscriptionRetrieveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_subscriptionDeleteResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userRetrieveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userQueryResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userPrivacySettingsRetrieveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userPrivacySettingsUpdateResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userPrivacySettingsResetResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userPrivacySettingsBatchLookupResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_adopterCapabilitiesSaveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_adopterCapabilitiesCheckResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneUsageSaveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_shareUsageSaveResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_shareAcceptResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_shareDeclineResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_shareVettingInitiateResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_tokenRegistrationResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_tokenUnregistrationResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_setBadgeCountResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_notificationSyncResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_notificationMarkReadResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_archiveRecordsResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_markAssetBrokenResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_functionInvokeResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  response = self->_response;
  v61 = v4;
  if (response)
  {
    objc_msgSend_setResponse_(v4, v5, response);
    v4 = v61;
  }

  result = self->_result;
  if (result)
  {
    objc_msgSend_setResult_(v61, v5, result);
    v4 = v61;
  }

  header = self->_header;
  if (header)
  {
    objc_msgSend_setHeader_(v61, v5, header);
    v4 = v61;
  }

  zoneSaveResponse = self->_zoneSaveResponse;
  if (zoneSaveResponse)
  {
    objc_msgSend_setZoneSaveResponse_(v61, v5, zoneSaveResponse);
    v4 = v61;
  }

  zoneRetrieveResponse = self->_zoneRetrieveResponse;
  if (zoneRetrieveResponse)
  {
    objc_msgSend_setZoneRetrieveResponse_(v61, v5, zoneRetrieveResponse);
    v4 = v61;
  }

  zoneDeleteResponse = self->_zoneDeleteResponse;
  if (zoneDeleteResponse)
  {
    objc_msgSend_setZoneDeleteResponse_(v61, v5, zoneDeleteResponse);
    v4 = v61;
  }

  zoneRetrieveChangesResponse = self->_zoneRetrieveChangesResponse;
  if (zoneRetrieveChangesResponse)
  {
    objc_msgSend_setZoneRetrieveChangesResponse_(v61, v5, zoneRetrieveChangesResponse);
    v4 = v61;
  }

  zoneChildrenRetrieveResponse = self->_zoneChildrenRetrieveResponse;
  if (zoneChildrenRetrieveResponse)
  {
    objc_msgSend_setZoneChildrenRetrieveResponse_(v61, v5, zoneChildrenRetrieveResponse);
    v4 = v61;
  }

  zoneRetrieveAncestorsResponse = self->_zoneRetrieveAncestorsResponse;
  if (zoneRetrieveAncestorsResponse)
  {
    objc_msgSend_setZoneRetrieveAncestorsResponse_(v61, v5, zoneRetrieveAncestorsResponse);
    v4 = v61;
  }

  recordSaveResponse = self->_recordSaveResponse;
  if (recordSaveResponse)
  {
    objc_msgSend_setRecordSaveResponse_(v61, v5, recordSaveResponse);
    v4 = v61;
  }

  recordRetrieveResponse = self->_recordRetrieveResponse;
  if (recordRetrieveResponse)
  {
    objc_msgSend_setRecordRetrieveResponse_(v61, v5, recordRetrieveResponse);
    v4 = v61;
  }

  recordRetrieveVersionsResponse = self->_recordRetrieveVersionsResponse;
  if (recordRetrieveVersionsResponse)
  {
    objc_msgSend_setRecordRetrieveVersionsResponse_(v61, v5, recordRetrieveVersionsResponse);
    v4 = v61;
  }

  recordRetrieveChangesResponse = self->_recordRetrieveChangesResponse;
  if (recordRetrieveChangesResponse)
  {
    objc_msgSend_setRecordRetrieveChangesResponse_(v61, v5, recordRetrieveChangesResponse);
    v4 = v61;
  }

  recordDeleteResponse = self->_recordDeleteResponse;
  if (recordDeleteResponse)
  {
    objc_msgSend_setRecordDeleteResponse_(v61, v5, recordDeleteResponse);
    v4 = v61;
  }

  recordResolveTokenResponse = self->_recordResolveTokenResponse;
  if (recordResolveTokenResponse)
  {
    objc_msgSend_setRecordResolveTokenResponse_(v61, v5, recordResolveTokenResponse);
    v4 = v61;
  }

  fetchArchivedRecordsResponse = self->_fetchArchivedRecordsResponse;
  if (fetchArchivedRecordsResponse)
  {
    objc_msgSend_setFetchArchivedRecordsResponse_(v61, v5, fetchArchivedRecordsResponse);
    v4 = v61;
  }

  recordMoveResponse = self->_recordMoveResponse;
  if (recordMoveResponse)
  {
    objc_msgSend_setRecordMoveResponse_(v61, v5, recordMoveResponse);
    v4 = v61;
  }

  shareAccessResponse = self->_shareAccessResponse;
  if (shareAccessResponse)
  {
    objc_msgSend_setShareAccessResponse_(v61, v5, shareAccessResponse);
    v4 = v61;
  }

  queryRetrieveResponse = self->_queryRetrieveResponse;
  if (queryRetrieveResponse)
  {
    objc_msgSend_setQueryRetrieveResponse_(v61, v5, queryRetrieveResponse);
    v4 = v61;
  }

  mergeableDeltaSaveResponse = self->_mergeableDeltaSaveResponse;
  if (mergeableDeltaSaveResponse)
  {
    objc_msgSend_setMergeableDeltaSaveResponse_(v61, v5, mergeableDeltaSaveResponse);
    v4 = v61;
  }

  mergeableDeltaMetadataRetrieveResponse = self->_mergeableDeltaMetadataRetrieveResponse;
  if (mergeableDeltaMetadataRetrieveResponse)
  {
    objc_msgSend_setMergeableDeltaMetadataRetrieveResponse_(v61, v5, mergeableDeltaMetadataRetrieveResponse);
    v4 = v61;
  }

  mergeableDeltaReplaceResponse = self->_mergeableDeltaReplaceResponse;
  if (mergeableDeltaReplaceResponse)
  {
    objc_msgSend_setMergeableDeltaReplaceResponse_(v61, v5, mergeableDeltaReplaceResponse);
    v4 = v61;
  }

  mergeableDeltaRetrieveResponse = self->_mergeableDeltaRetrieveResponse;
  if (mergeableDeltaRetrieveResponse)
  {
    objc_msgSend_setMergeableDeltaRetrieveResponse_(v61, v5, mergeableDeltaRetrieveResponse);
    v4 = v61;
  }

  assetUploadTokenRetrieveResponse = self->_assetUploadTokenRetrieveResponse;
  if (assetUploadTokenRetrieveResponse)
  {
    objc_msgSend_setAssetUploadTokenRetrieveResponse_(v61, v5, assetUploadTokenRetrieveResponse);
    v4 = v61;
  }

  deleteContainerResponse = self->_deleteContainerResponse;
  if (deleteContainerResponse)
  {
    objc_msgSend_setDeleteContainerResponse_(v61, v5, deleteContainerResponse);
    v4 = v61;
  }

  userAvailableQuotaResponse = self->_userAvailableQuotaResponse;
  if (userAvailableQuotaResponse)
  {
    objc_msgSend_setUserAvailableQuotaResponse_(v61, v5, userAvailableQuotaResponse);
    v4 = v61;
  }

  bundlesForContainerResponse = self->_bundlesForContainerResponse;
  if (bundlesForContainerResponse)
  {
    objc_msgSend_setBundlesForContainerResponse_(v61, v5, bundlesForContainerResponse);
    v4 = v61;
  }

  webAuthTokenRetrieveResponse = self->_webAuthTokenRetrieveResponse;
  if (webAuthTokenRetrieveResponse)
  {
    objc_msgSend_setWebAuthTokenRetrieveResponse_(v61, v5, webAuthTokenRetrieveResponse);
    v4 = v61;
  }

  updateMissingAssetStatusResponse = self->_updateMissingAssetStatusResponse;
  if (updateMissingAssetStatusResponse)
  {
    objc_msgSend_setUpdateMissingAssetStatusResponse_(v61, v5, updateMissingAssetStatusResponse);
    v4 = v61;
  }

  anonymousShareAddResponse = self->_anonymousShareAddResponse;
  if (anonymousShareAddResponse)
  {
    objc_msgSend_setAnonymousShareAddResponse_(v61, v5, anonymousShareAddResponse);
    v4 = v61;
  }

  anonymousShareRemoveResponse = self->_anonymousShareRemoveResponse;
  if (anonymousShareRemoveResponse)
  {
    objc_msgSend_setAnonymousShareRemoveResponse_(v61, v5, anonymousShareRemoveResponse);
    v4 = v61;
  }

  subscriptionCreateResponse = self->_subscriptionCreateResponse;
  if (subscriptionCreateResponse)
  {
    objc_msgSend_setSubscriptionCreateResponse_(v61, v5, subscriptionCreateResponse);
    v4 = v61;
  }

  subscriptionRetrieveResponse = self->_subscriptionRetrieveResponse;
  if (subscriptionRetrieveResponse)
  {
    objc_msgSend_setSubscriptionRetrieveResponse_(v61, v5, subscriptionRetrieveResponse);
    v4 = v61;
  }

  subscriptionDeleteResponse = self->_subscriptionDeleteResponse;
  if (subscriptionDeleteResponse)
  {
    objc_msgSend_setSubscriptionDeleteResponse_(v61, v5, subscriptionDeleteResponse);
    v4 = v61;
  }

  userRetrieveResponse = self->_userRetrieveResponse;
  if (userRetrieveResponse)
  {
    objc_msgSend_setUserRetrieveResponse_(v61, v5, userRetrieveResponse);
    v4 = v61;
  }

  userQueryResponse = self->_userQueryResponse;
  if (userQueryResponse)
  {
    objc_msgSend_setUserQueryResponse_(v61, v5, userQueryResponse);
    v4 = v61;
  }

  userPrivacySettingsRetrieveResponse = self->_userPrivacySettingsRetrieveResponse;
  if (userPrivacySettingsRetrieveResponse)
  {
    objc_msgSend_setUserPrivacySettingsRetrieveResponse_(v61, v5, userPrivacySettingsRetrieveResponse);
    v4 = v61;
  }

  userPrivacySettingsUpdateResponse = self->_userPrivacySettingsUpdateResponse;
  if (userPrivacySettingsUpdateResponse)
  {
    objc_msgSend_setUserPrivacySettingsUpdateResponse_(v61, v5, userPrivacySettingsUpdateResponse);
    v4 = v61;
  }

  userPrivacySettingsResetResponse = self->_userPrivacySettingsResetResponse;
  if (userPrivacySettingsResetResponse)
  {
    objc_msgSend_setUserPrivacySettingsResetResponse_(v61, v5, userPrivacySettingsResetResponse);
    v4 = v61;
  }

  userPrivacySettingsBatchLookupResponse = self->_userPrivacySettingsBatchLookupResponse;
  if (userPrivacySettingsBatchLookupResponse)
  {
    objc_msgSend_setUserPrivacySettingsBatchLookupResponse_(v61, v5, userPrivacySettingsBatchLookupResponse);
    v4 = v61;
  }

  adopterCapabilitiesSaveResponse = self->_adopterCapabilitiesSaveResponse;
  if (adopterCapabilitiesSaveResponse)
  {
    objc_msgSend_setAdopterCapabilitiesSaveResponse_(v61, v5, adopterCapabilitiesSaveResponse);
    v4 = v61;
  }

  adopterCapabilitiesCheckResponse = self->_adopterCapabilitiesCheckResponse;
  if (adopterCapabilitiesCheckResponse)
  {
    objc_msgSend_setAdopterCapabilitiesCheckResponse_(v61, v5, adopterCapabilitiesCheckResponse);
    v4 = v61;
  }

  zoneUsageSaveResponse = self->_zoneUsageSaveResponse;
  if (zoneUsageSaveResponse)
  {
    objc_msgSend_setZoneUsageSaveResponse_(v61, v5, zoneUsageSaveResponse);
    v4 = v61;
  }

  shareUsageSaveResponse = self->_shareUsageSaveResponse;
  if (shareUsageSaveResponse)
  {
    objc_msgSend_setShareUsageSaveResponse_(v61, v5, shareUsageSaveResponse);
    v4 = v61;
  }

  shareAcceptResponse = self->_shareAcceptResponse;
  if (shareAcceptResponse)
  {
    objc_msgSend_setShareAcceptResponse_(v61, v5, shareAcceptResponse);
    v4 = v61;
  }

  shareDeclineResponse = self->_shareDeclineResponse;
  if (shareDeclineResponse)
  {
    objc_msgSend_setShareDeclineResponse_(v61, v5, shareDeclineResponse);
    v4 = v61;
  }

  shareVettingInitiateResponse = self->_shareVettingInitiateResponse;
  if (shareVettingInitiateResponse)
  {
    objc_msgSend_setShareVettingInitiateResponse_(v61, v5, shareVettingInitiateResponse);
    v4 = v61;
  }

  tokenRegistrationResponse = self->_tokenRegistrationResponse;
  if (tokenRegistrationResponse)
  {
    objc_msgSend_setTokenRegistrationResponse_(v61, v5, tokenRegistrationResponse);
    v4 = v61;
  }

  tokenUnregistrationResponse = self->_tokenUnregistrationResponse;
  if (tokenUnregistrationResponse)
  {
    objc_msgSend_setTokenUnregistrationResponse_(v61, v5, tokenUnregistrationResponse);
    v4 = v61;
  }

  setBadgeCountResponse = self->_setBadgeCountResponse;
  if (setBadgeCountResponse)
  {
    objc_msgSend_setSetBadgeCountResponse_(v61, v5, setBadgeCountResponse);
    v4 = v61;
  }

  notificationSyncResponse = self->_notificationSyncResponse;
  if (notificationSyncResponse)
  {
    objc_msgSend_setNotificationSyncResponse_(v61, v5, notificationSyncResponse);
    v4 = v61;
  }

  notificationMarkReadResponse = self->_notificationMarkReadResponse;
  if (notificationMarkReadResponse)
  {
    objc_msgSend_setNotificationMarkReadResponse_(v61, v5, notificationMarkReadResponse);
    v4 = v61;
  }

  archiveRecordsResponse = self->_archiveRecordsResponse;
  if (archiveRecordsResponse)
  {
    objc_msgSend_setArchiveRecordsResponse_(v61, v5, archiveRecordsResponse);
    v4 = v61;
  }

  markAssetBrokenResponse = self->_markAssetBrokenResponse;
  if (markAssetBrokenResponse)
  {
    objc_msgSend_setMarkAssetBrokenResponse_(v61, v5, markAssetBrokenResponse);
    v4 = v61;
  }

  functionInvokeResponse = self->_functionInvokeResponse;
  if (functionInvokeResponse)
  {
    objc_msgSend_setFunctionInvokeResponse_(v61, v5, functionInvokeResponse);
    v4 = v61;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_response, v11, a3);
  v13 = v10[27];
  v10[27] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_result, v14, a3);
  v16 = v10[28];
  v10[28] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_header, v17, a3);
  v19 = v10[11];
  v10[11] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_zoneSaveResponse, v20, a3);
  v22 = v10[54];
  v10[54] = v21;

  v24 = objc_msgSend_copyWithZone_(self->_zoneRetrieveResponse, v23, a3);
  v25 = v10[53];
  v10[53] = v24;

  v27 = objc_msgSend_copyWithZone_(self->_zoneDeleteResponse, v26, a3);
  v28 = v10[50];
  v10[50] = v27;

  v30 = objc_msgSend_copyWithZone_(self->_zoneRetrieveChangesResponse, v29, a3);
  v31 = v10[52];
  v10[52] = v30;

  v33 = objc_msgSend_copyWithZone_(self->_zoneChildrenRetrieveResponse, v32, a3);
  v34 = v10[49];
  v10[49] = v33;

  v36 = objc_msgSend_copyWithZone_(self->_zoneRetrieveAncestorsResponse, v35, a3);
  v37 = v10[51];
  v10[51] = v36;

  v39 = objc_msgSend_copyWithZone_(self->_recordSaveResponse, v38, a3);
  v40 = v10[26];
  v10[26] = v39;

  v42 = objc_msgSend_copyWithZone_(self->_recordRetrieveResponse, v41, a3);
  v43 = v10[24];
  v10[24] = v42;

  v45 = objc_msgSend_copyWithZone_(self->_recordRetrieveVersionsResponse, v44, a3);
  v46 = v10[25];
  v10[25] = v45;

  v48 = objc_msgSend_copyWithZone_(self->_recordRetrieveChangesResponse, v47, a3);
  v49 = v10[23];
  v10[23] = v48;

  v51 = objc_msgSend_copyWithZone_(self->_recordDeleteResponse, v50, a3);
  v52 = v10[20];
  v10[20] = v51;

  v54 = objc_msgSend_copyWithZone_(self->_recordResolveTokenResponse, v53, a3);
  v55 = v10[22];
  v10[22] = v54;

  v57 = objc_msgSend_copyWithZone_(self->_fetchArchivedRecordsResponse, v56, a3);
  v58 = v10[9];
  v10[9] = v57;

  v60 = objc_msgSend_copyWithZone_(self->_recordMoveResponse, v59, a3);
  v61 = v10[21];
  v10[21] = v60;

  v63 = objc_msgSend_copyWithZone_(self->_shareAccessResponse, v62, a3);
  v64 = v10[31];
  v10[31] = v63;

  v66 = objc_msgSend_copyWithZone_(self->_queryRetrieveResponse, v65, a3);
  v67 = v10[19];
  v10[19] = v66;

  v69 = objc_msgSend_copyWithZone_(self->_mergeableDeltaSaveResponse, v68, a3);
  v70 = v10[16];
  v10[16] = v69;

  v72 = objc_msgSend_copyWithZone_(self->_mergeableDeltaMetadataRetrieveResponse, v71, a3);
  v73 = v10[13];
  v10[13] = v72;

  v75 = objc_msgSend_copyWithZone_(self->_mergeableDeltaReplaceResponse, v74, a3);
  v76 = v10[14];
  v10[14] = v75;

  v78 = objc_msgSend_copyWithZone_(self->_mergeableDeltaRetrieveResponse, v77, a3);
  v79 = v10[15];
  v10[15] = v78;

  v81 = objc_msgSend_copyWithZone_(self->_assetUploadTokenRetrieveResponse, v80, a3);
  v82 = v10[6];
  v10[6] = v81;

  v84 = objc_msgSend_copyWithZone_(self->_deleteContainerResponse, v83, a3);
  v85 = v10[8];
  v10[8] = v84;

  v87 = objc_msgSend_copyWithZone_(self->_userAvailableQuotaResponse, v86, a3);
  v88 = v10[41];
  v10[41] = v87;

  v90 = objc_msgSend_copyWithZone_(self->_bundlesForContainerResponse, v89, a3);
  v91 = v10[7];
  v10[7] = v90;

  v93 = objc_msgSend_copyWithZone_(self->_webAuthTokenRetrieveResponse, v92, a3);
  v94 = v10[48];
  v10[48] = v93;

  v96 = objc_msgSend_copyWithZone_(self->_updateMissingAssetStatusResponse, v95, a3);
  v97 = v10[40];
  v10[40] = v96;

  v99 = objc_msgSend_copyWithZone_(self->_anonymousShareAddResponse, v98, a3);
  v100 = v10[3];
  v10[3] = v99;

  v102 = objc_msgSend_copyWithZone_(self->_anonymousShareRemoveResponse, v101, a3);
  v103 = v10[4];
  v10[4] = v102;

  v105 = objc_msgSend_copyWithZone_(self->_subscriptionCreateResponse, v104, a3);
  v106 = v10[35];
  v10[35] = v105;

  v108 = objc_msgSend_copyWithZone_(self->_subscriptionRetrieveResponse, v107, a3);
  v109 = v10[37];
  v10[37] = v108;

  v111 = objc_msgSend_copyWithZone_(self->_subscriptionDeleteResponse, v110, a3);
  v112 = v10[36];
  v10[36] = v111;

  v114 = objc_msgSend_copyWithZone_(self->_userRetrieveResponse, v113, a3);
  v115 = v10[47];
  v10[47] = v114;

  v117 = objc_msgSend_copyWithZone_(self->_userQueryResponse, v116, a3);
  v118 = v10[46];
  v10[46] = v117;

  v120 = objc_msgSend_copyWithZone_(self->_userPrivacySettingsRetrieveResponse, v119, a3);
  v121 = v10[44];
  v10[44] = v120;

  v123 = objc_msgSend_copyWithZone_(self->_userPrivacySettingsUpdateResponse, v122, a3);
  v124 = v10[45];
  v10[45] = v123;

  v126 = objc_msgSend_copyWithZone_(self->_userPrivacySettingsResetResponse, v125, a3);
  v127 = v10[43];
  v10[43] = v126;

  v129 = objc_msgSend_copyWithZone_(self->_userPrivacySettingsBatchLookupResponse, v128, a3);
  v130 = v10[42];
  v10[42] = v129;

  v132 = objc_msgSend_copyWithZone_(self->_adopterCapabilitiesSaveResponse, v131, a3);
  v133 = v10[2];
  v10[2] = v132;

  v135 = objc_msgSend_copyWithZone_(self->_adopterCapabilitiesCheckResponse, v134, a3);
  v136 = v10[1];
  v10[1] = v135;

  v138 = objc_msgSend_copyWithZone_(self->_zoneUsageSaveResponse, v137, a3);
  v139 = v10[55];
  v10[55] = v138;

  v141 = objc_msgSend_copyWithZone_(self->_shareUsageSaveResponse, v140, a3);
  v142 = v10[33];
  v10[33] = v141;

  v144 = objc_msgSend_copyWithZone_(self->_shareAcceptResponse, v143, a3);
  v145 = v10[30];
  v10[30] = v144;

  v147 = objc_msgSend_copyWithZone_(self->_shareDeclineResponse, v146, a3);
  v148 = v10[32];
  v10[32] = v147;

  v150 = objc_msgSend_copyWithZone_(self->_shareVettingInitiateResponse, v149, a3);
  v151 = v10[34];
  v10[34] = v150;

  v153 = objc_msgSend_copyWithZone_(self->_tokenRegistrationResponse, v152, a3);
  v154 = v10[38];
  v10[38] = v153;

  v156 = objc_msgSend_copyWithZone_(self->_tokenUnregistrationResponse, v155, a3);
  v157 = v10[39];
  v10[39] = v156;

  v159 = objc_msgSend_copyWithZone_(self->_setBadgeCountResponse, v158, a3);
  v160 = v10[29];
  v10[29] = v159;

  v162 = objc_msgSend_copyWithZone_(self->_notificationSyncResponse, v161, a3);
  v163 = v10[18];
  v10[18] = v162;

  v165 = objc_msgSend_copyWithZone_(self->_notificationMarkReadResponse, v164, a3);
  v166 = v10[17];
  v10[17] = v165;

  v168 = objc_msgSend_copyWithZone_(self->_archiveRecordsResponse, v167, a3);
  v169 = v10[5];
  v10[5] = v168;

  v171 = objc_msgSend_copyWithZone_(self->_markAssetBrokenResponse, v170, a3);
  v172 = v10[12];
  v10[12] = v171;

  v174 = objc_msgSend_copyWithZone_(self->_functionInvokeResponse, v173, a3);
  v175 = v10[10];
  v10[10] = v174;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_112;
  }

  response = self->_response;
  v9 = v4[27];
  if (response | v9)
  {
    if (!objc_msgSend_isEqual_(response, v7, v9))
    {
      goto LABEL_112;
    }
  }

  v10 = self->_result;
  v11 = v4[28];
  if (v10 | v11)
  {
    if (!objc_msgSend_isEqual_(v10, v7, v11))
    {
      goto LABEL_112;
    }
  }

  header = self->_header;
  v13 = v4[11];
  if (header | v13)
  {
    if (!objc_msgSend_isEqual_(header, v7, v13))
    {
      goto LABEL_112;
    }
  }

  zoneSaveResponse = self->_zoneSaveResponse;
  v15 = v4[54];
  if (zoneSaveResponse | v15)
  {
    if (!objc_msgSend_isEqual_(zoneSaveResponse, v7, v15))
    {
      goto LABEL_112;
    }
  }

  zoneRetrieveResponse = self->_zoneRetrieveResponse;
  v17 = v4[53];
  if (zoneRetrieveResponse | v17)
  {
    if (!objc_msgSend_isEqual_(zoneRetrieveResponse, v7, v17))
    {
      goto LABEL_112;
    }
  }

  zoneDeleteResponse = self->_zoneDeleteResponse;
  v19 = v4[50];
  if (zoneDeleteResponse | v19)
  {
    if (!objc_msgSend_isEqual_(zoneDeleteResponse, v7, v19))
    {
      goto LABEL_112;
    }
  }

  zoneRetrieveChangesResponse = self->_zoneRetrieveChangesResponse;
  v21 = v4[52];
  if (zoneRetrieveChangesResponse | v21)
  {
    if (!objc_msgSend_isEqual_(zoneRetrieveChangesResponse, v7, v21))
    {
      goto LABEL_112;
    }
  }

  zoneChildrenRetrieveResponse = self->_zoneChildrenRetrieveResponse;
  v23 = v4[49];
  if (zoneChildrenRetrieveResponse | v23)
  {
    if (!objc_msgSend_isEqual_(zoneChildrenRetrieveResponse, v7, v23))
    {
      goto LABEL_112;
    }
  }

  zoneRetrieveAncestorsResponse = self->_zoneRetrieveAncestorsResponse;
  v25 = v4[51];
  if (zoneRetrieveAncestorsResponse | v25)
  {
    if (!objc_msgSend_isEqual_(zoneRetrieveAncestorsResponse, v7, v25))
    {
      goto LABEL_112;
    }
  }

  recordSaveResponse = self->_recordSaveResponse;
  v27 = v4[26];
  if (recordSaveResponse | v27)
  {
    if (!objc_msgSend_isEqual_(recordSaveResponse, v7, v27))
    {
      goto LABEL_112;
    }
  }

  recordRetrieveResponse = self->_recordRetrieveResponse;
  v29 = v4[24];
  if (recordRetrieveResponse | v29)
  {
    if (!objc_msgSend_isEqual_(recordRetrieveResponse, v7, v29))
    {
      goto LABEL_112;
    }
  }

  recordRetrieveVersionsResponse = self->_recordRetrieveVersionsResponse;
  v31 = v4[25];
  if (recordRetrieveVersionsResponse | v31)
  {
    if (!objc_msgSend_isEqual_(recordRetrieveVersionsResponse, v7, v31))
    {
      goto LABEL_112;
    }
  }

  recordRetrieveChangesResponse = self->_recordRetrieveChangesResponse;
  v33 = v4[23];
  if (recordRetrieveChangesResponse | v33)
  {
    if (!objc_msgSend_isEqual_(recordRetrieveChangesResponse, v7, v33))
    {
      goto LABEL_112;
    }
  }

  recordDeleteResponse = self->_recordDeleteResponse;
  v35 = v4[20];
  if (recordDeleteResponse | v35)
  {
    if (!objc_msgSend_isEqual_(recordDeleteResponse, v7, v35))
    {
      goto LABEL_112;
    }
  }

  recordResolveTokenResponse = self->_recordResolveTokenResponse;
  v37 = v4[22];
  if (recordResolveTokenResponse | v37)
  {
    if (!objc_msgSend_isEqual_(recordResolveTokenResponse, v7, v37))
    {
      goto LABEL_112;
    }
  }

  fetchArchivedRecordsResponse = self->_fetchArchivedRecordsResponse;
  v39 = v4[9];
  if (fetchArchivedRecordsResponse | v39)
  {
    if (!objc_msgSend_isEqual_(fetchArchivedRecordsResponse, v7, v39))
    {
      goto LABEL_112;
    }
  }

  recordMoveResponse = self->_recordMoveResponse;
  v41 = v4[21];
  if (recordMoveResponse | v41)
  {
    if (!objc_msgSend_isEqual_(recordMoveResponse, v7, v41))
    {
      goto LABEL_112;
    }
  }

  shareAccessResponse = self->_shareAccessResponse;
  v43 = v4[31];
  if (shareAccessResponse | v43)
  {
    if (!objc_msgSend_isEqual_(shareAccessResponse, v7, v43))
    {
      goto LABEL_112;
    }
  }

  queryRetrieveResponse = self->_queryRetrieveResponse;
  v45 = v4[19];
  if (queryRetrieveResponse | v45)
  {
    if (!objc_msgSend_isEqual_(queryRetrieveResponse, v7, v45))
    {
      goto LABEL_112;
    }
  }

  mergeableDeltaSaveResponse = self->_mergeableDeltaSaveResponse;
  v47 = v4[16];
  if (mergeableDeltaSaveResponse | v47)
  {
    if (!objc_msgSend_isEqual_(mergeableDeltaSaveResponse, v7, v47))
    {
      goto LABEL_112;
    }
  }

  mergeableDeltaMetadataRetrieveResponse = self->_mergeableDeltaMetadataRetrieveResponse;
  v49 = v4[13];
  if (mergeableDeltaMetadataRetrieveResponse | v49)
  {
    if (!objc_msgSend_isEqual_(mergeableDeltaMetadataRetrieveResponse, v7, v49))
    {
      goto LABEL_112;
    }
  }

  mergeableDeltaReplaceResponse = self->_mergeableDeltaReplaceResponse;
  v51 = v4[14];
  if (mergeableDeltaReplaceResponse | v51)
  {
    if (!objc_msgSend_isEqual_(mergeableDeltaReplaceResponse, v7, v51))
    {
      goto LABEL_112;
    }
  }

  mergeableDeltaRetrieveResponse = self->_mergeableDeltaRetrieveResponse;
  v53 = v4[15];
  if (mergeableDeltaRetrieveResponse | v53)
  {
    if (!objc_msgSend_isEqual_(mergeableDeltaRetrieveResponse, v7, v53))
    {
      goto LABEL_112;
    }
  }

  assetUploadTokenRetrieveResponse = self->_assetUploadTokenRetrieveResponse;
  v55 = v4[6];
  if (assetUploadTokenRetrieveResponse | v55)
  {
    if (!objc_msgSend_isEqual_(assetUploadTokenRetrieveResponse, v7, v55))
    {
      goto LABEL_112;
    }
  }

  deleteContainerResponse = self->_deleteContainerResponse;
  v57 = v4[8];
  if (deleteContainerResponse | v57)
  {
    if (!objc_msgSend_isEqual_(deleteContainerResponse, v7, v57))
    {
      goto LABEL_112;
    }
  }

  userAvailableQuotaResponse = self->_userAvailableQuotaResponse;
  v59 = v4[41];
  if (userAvailableQuotaResponse | v59)
  {
    if (!objc_msgSend_isEqual_(userAvailableQuotaResponse, v7, v59))
    {
      goto LABEL_112;
    }
  }

  bundlesForContainerResponse = self->_bundlesForContainerResponse;
  v61 = v4[7];
  if (bundlesForContainerResponse | v61)
  {
    if (!objc_msgSend_isEqual_(bundlesForContainerResponse, v7, v61))
    {
      goto LABEL_112;
    }
  }

  webAuthTokenRetrieveResponse = self->_webAuthTokenRetrieveResponse;
  v63 = v4[48];
  if (webAuthTokenRetrieveResponse | v63)
  {
    if (!objc_msgSend_isEqual_(webAuthTokenRetrieveResponse, v7, v63))
    {
      goto LABEL_112;
    }
  }

  updateMissingAssetStatusResponse = self->_updateMissingAssetStatusResponse;
  v65 = v4[40];
  if (updateMissingAssetStatusResponse | v65)
  {
    if (!objc_msgSend_isEqual_(updateMissingAssetStatusResponse, v7, v65))
    {
      goto LABEL_112;
    }
  }

  anonymousShareAddResponse = self->_anonymousShareAddResponse;
  v67 = v4[3];
  if (anonymousShareAddResponse | v67)
  {
    if (!objc_msgSend_isEqual_(anonymousShareAddResponse, v7, v67))
    {
      goto LABEL_112;
    }
  }

  anonymousShareRemoveResponse = self->_anonymousShareRemoveResponse;
  v69 = v4[4];
  if (anonymousShareRemoveResponse | v69)
  {
    if (!objc_msgSend_isEqual_(anonymousShareRemoveResponse, v7, v69))
    {
      goto LABEL_112;
    }
  }

  subscriptionCreateResponse = self->_subscriptionCreateResponse;
  v71 = v4[35];
  if (subscriptionCreateResponse | v71)
  {
    if (!objc_msgSend_isEqual_(subscriptionCreateResponse, v7, v71))
    {
      goto LABEL_112;
    }
  }

  subscriptionRetrieveResponse = self->_subscriptionRetrieveResponse;
  v73 = v4[37];
  if (subscriptionRetrieveResponse | v73)
  {
    if (!objc_msgSend_isEqual_(subscriptionRetrieveResponse, v7, v73))
    {
      goto LABEL_112;
    }
  }

  subscriptionDeleteResponse = self->_subscriptionDeleteResponse;
  v75 = v4[36];
  if (subscriptionDeleteResponse | v75)
  {
    if (!objc_msgSend_isEqual_(subscriptionDeleteResponse, v7, v75))
    {
      goto LABEL_112;
    }
  }

  userRetrieveResponse = self->_userRetrieveResponse;
  v77 = v4[47];
  if (userRetrieveResponse | v77)
  {
    if (!objc_msgSend_isEqual_(userRetrieveResponse, v7, v77))
    {
      goto LABEL_112;
    }
  }

  userQueryResponse = self->_userQueryResponse;
  v79 = v4[46];
  if (userQueryResponse | v79)
  {
    if (!objc_msgSend_isEqual_(userQueryResponse, v7, v79))
    {
      goto LABEL_112;
    }
  }

  userPrivacySettingsRetrieveResponse = self->_userPrivacySettingsRetrieveResponse;
  v81 = v4[44];
  if (userPrivacySettingsRetrieveResponse | v81)
  {
    if (!objc_msgSend_isEqual_(userPrivacySettingsRetrieveResponse, v7, v81))
    {
      goto LABEL_112;
    }
  }

  userPrivacySettingsUpdateResponse = self->_userPrivacySettingsUpdateResponse;
  v83 = v4[45];
  if (userPrivacySettingsUpdateResponse | v83)
  {
    if (!objc_msgSend_isEqual_(userPrivacySettingsUpdateResponse, v7, v83))
    {
      goto LABEL_112;
    }
  }

  userPrivacySettingsResetResponse = self->_userPrivacySettingsResetResponse;
  v85 = v4[43];
  if (userPrivacySettingsResetResponse | v85)
  {
    if (!objc_msgSend_isEqual_(userPrivacySettingsResetResponse, v7, v85))
    {
      goto LABEL_112;
    }
  }

  userPrivacySettingsBatchLookupResponse = self->_userPrivacySettingsBatchLookupResponse;
  v87 = v4[42];
  if (userPrivacySettingsBatchLookupResponse | v87)
  {
    if (!objc_msgSend_isEqual_(userPrivacySettingsBatchLookupResponse, v7, v87))
    {
      goto LABEL_112;
    }
  }

  adopterCapabilitiesSaveResponse = self->_adopterCapabilitiesSaveResponse;
  v89 = v4[2];
  if (adopterCapabilitiesSaveResponse | v89)
  {
    if (!objc_msgSend_isEqual_(adopterCapabilitiesSaveResponse, v7, v89))
    {
      goto LABEL_112;
    }
  }

  adopterCapabilitiesCheckResponse = self->_adopterCapabilitiesCheckResponse;
  v91 = v4[1];
  if (adopterCapabilitiesCheckResponse | v91)
  {
    if (!objc_msgSend_isEqual_(adopterCapabilitiesCheckResponse, v7, v91))
    {
      goto LABEL_112;
    }
  }

  zoneUsageSaveResponse = self->_zoneUsageSaveResponse;
  v93 = v4[55];
  if (zoneUsageSaveResponse | v93)
  {
    if (!objc_msgSend_isEqual_(zoneUsageSaveResponse, v7, v93))
    {
      goto LABEL_112;
    }
  }

  shareUsageSaveResponse = self->_shareUsageSaveResponse;
  v95 = v4[33];
  if (shareUsageSaveResponse | v95)
  {
    if (!objc_msgSend_isEqual_(shareUsageSaveResponse, v7, v95))
    {
      goto LABEL_112;
    }
  }

  shareAcceptResponse = self->_shareAcceptResponse;
  v97 = v4[30];
  if (shareAcceptResponse | v97)
  {
    if (!objc_msgSend_isEqual_(shareAcceptResponse, v7, v97))
    {
      goto LABEL_112;
    }
  }

  shareDeclineResponse = self->_shareDeclineResponse;
  v99 = v4[32];
  if (shareDeclineResponse | v99)
  {
    if (!objc_msgSend_isEqual_(shareDeclineResponse, v7, v99))
    {
      goto LABEL_112;
    }
  }

  shareVettingInitiateResponse = self->_shareVettingInitiateResponse;
  v101 = v4[34];
  if (shareVettingInitiateResponse | v101)
  {
    if (!objc_msgSend_isEqual_(shareVettingInitiateResponse, v7, v101))
    {
      goto LABEL_112;
    }
  }

  tokenRegistrationResponse = self->_tokenRegistrationResponse;
  v103 = v4[38];
  if (tokenRegistrationResponse | v103)
  {
    if (!objc_msgSend_isEqual_(tokenRegistrationResponse, v7, v103))
    {
      goto LABEL_112;
    }
  }

  tokenUnregistrationResponse = self->_tokenUnregistrationResponse;
  v105 = v4[39];
  if (tokenUnregistrationResponse | v105)
  {
    if (!objc_msgSend_isEqual_(tokenUnregistrationResponse, v7, v105))
    {
      goto LABEL_112;
    }
  }

  setBadgeCountResponse = self->_setBadgeCountResponse;
  v107 = v4[29];
  if (setBadgeCountResponse | v107)
  {
    if (!objc_msgSend_isEqual_(setBadgeCountResponse, v7, v107))
    {
      goto LABEL_112;
    }
  }

  notificationSyncResponse = self->_notificationSyncResponse;
  v109 = v4[18];
  if (notificationSyncResponse | v109)
  {
    if (!objc_msgSend_isEqual_(notificationSyncResponse, v7, v109))
    {
      goto LABEL_112;
    }
  }

  if (((notificationMarkReadResponse = self->_notificationMarkReadResponse, v111 = v4[17], !(notificationMarkReadResponse | v111)) || objc_msgSend_isEqual_(notificationMarkReadResponse, v7, v111)) && ((archiveRecordsResponse = self->_archiveRecordsResponse, v113 = v4[5], !(archiveRecordsResponse | v113)) || objc_msgSend_isEqual_(archiveRecordsResponse, v7, v113)) && ((markAssetBrokenResponse = self->_markAssetBrokenResponse, v115 = v4[12], !(markAssetBrokenResponse | v115)) || objc_msgSend_isEqual_(markAssetBrokenResponse, v7, v115)))
  {
    functionInvokeResponse = self->_functionInvokeResponse;
    v117 = v4[10];
    if (functionInvokeResponse | v117)
    {
      isEqual = objc_msgSend_isEqual_(functionInvokeResponse, v7, v117);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
LABEL_112:
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_response, a2, v2);
  v7 = objc_msgSend_hash(self->_result, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_header, v8, v9);
  v13 = v7 ^ v10 ^ objc_msgSend_hash(self->_zoneSaveResponse, v11, v12);
  v16 = objc_msgSend_hash(self->_zoneRetrieveResponse, v14, v15);
  v19 = v16 ^ objc_msgSend_hash(self->_zoneDeleteResponse, v17, v18);
  v22 = v13 ^ v19 ^ objc_msgSend_hash(self->_zoneRetrieveChangesResponse, v20, v21);
  v25 = objc_msgSend_hash(self->_zoneChildrenRetrieveResponse, v23, v24);
  v28 = v25 ^ objc_msgSend_hash(self->_zoneRetrieveAncestorsResponse, v26, v27);
  v31 = v28 ^ objc_msgSend_hash(self->_recordSaveResponse, v29, v30);
  v34 = v22 ^ v31 ^ objc_msgSend_hash(self->_recordRetrieveResponse, v32, v33);
  v37 = objc_msgSend_hash(self->_recordRetrieveVersionsResponse, v35, v36);
  v40 = v37 ^ objc_msgSend_hash(self->_recordRetrieveChangesResponse, v38, v39);
  v43 = v40 ^ objc_msgSend_hash(self->_recordDeleteResponse, v41, v42);
  v46 = v43 ^ objc_msgSend_hash(self->_recordResolveTokenResponse, v44, v45);
  v49 = v34 ^ v46 ^ objc_msgSend_hash(self->_fetchArchivedRecordsResponse, v47, v48);
  v52 = objc_msgSend_hash(self->_recordMoveResponse, v50, v51);
  v55 = v52 ^ objc_msgSend_hash(self->_shareAccessResponse, v53, v54);
  v58 = v55 ^ objc_msgSend_hash(self->_queryRetrieveResponse, v56, v57);
  v61 = v58 ^ objc_msgSend_hash(self->_mergeableDeltaSaveResponse, v59, v60);
  v64 = v61 ^ objc_msgSend_hash(self->_mergeableDeltaMetadataRetrieveResponse, v62, v63);
  v67 = v49 ^ v64 ^ objc_msgSend_hash(self->_mergeableDeltaReplaceResponse, v65, v66);
  v70 = objc_msgSend_hash(self->_mergeableDeltaRetrieveResponse, v68, v69);
  v73 = v70 ^ objc_msgSend_hash(self->_assetUploadTokenRetrieveResponse, v71, v72);
  v76 = v73 ^ objc_msgSend_hash(self->_deleteContainerResponse, v74, v75);
  v79 = v76 ^ objc_msgSend_hash(self->_userAvailableQuotaResponse, v77, v78);
  v82 = v79 ^ objc_msgSend_hash(self->_bundlesForContainerResponse, v80, v81);
  v85 = v82 ^ objc_msgSend_hash(self->_webAuthTokenRetrieveResponse, v83, v84);
  v88 = v67 ^ v85 ^ objc_msgSend_hash(self->_updateMissingAssetStatusResponse, v86, v87);
  v91 = objc_msgSend_hash(self->_anonymousShareAddResponse, v89, v90);
  v94 = v91 ^ objc_msgSend_hash(self->_anonymousShareRemoveResponse, v92, v93);
  v97 = v94 ^ objc_msgSend_hash(self->_subscriptionCreateResponse, v95, v96);
  v100 = v97 ^ objc_msgSend_hash(self->_subscriptionRetrieveResponse, v98, v99);
  v103 = v100 ^ objc_msgSend_hash(self->_subscriptionDeleteResponse, v101, v102);
  v106 = v103 ^ objc_msgSend_hash(self->_userRetrieveResponse, v104, v105);
  v109 = v106 ^ objc_msgSend_hash(self->_userQueryResponse, v107, v108);
  v112 = v88 ^ v109 ^ objc_msgSend_hash(self->_userPrivacySettingsRetrieveResponse, v110, v111);
  v115 = objc_msgSend_hash(self->_userPrivacySettingsUpdateResponse, v113, v114);
  v118 = v115 ^ objc_msgSend_hash(self->_userPrivacySettingsResetResponse, v116, v117);
  v121 = v118 ^ objc_msgSend_hash(self->_userPrivacySettingsBatchLookupResponse, v119, v120);
  v124 = v121 ^ objc_msgSend_hash(self->_adopterCapabilitiesSaveResponse, v122, v123);
  v127 = v124 ^ objc_msgSend_hash(self->_adopterCapabilitiesCheckResponse, v125, v126);
  v130 = v127 ^ objc_msgSend_hash(self->_zoneUsageSaveResponse, v128, v129);
  v133 = v130 ^ objc_msgSend_hash(self->_shareUsageSaveResponse, v131, v132);
  v136 = v133 ^ objc_msgSend_hash(self->_shareAcceptResponse, v134, v135);
  v139 = v112 ^ v136 ^ objc_msgSend_hash(self->_shareDeclineResponse, v137, v138);
  v142 = objc_msgSend_hash(self->_shareVettingInitiateResponse, v140, v141);
  v145 = v142 ^ objc_msgSend_hash(self->_tokenRegistrationResponse, v143, v144);
  v148 = v145 ^ objc_msgSend_hash(self->_tokenUnregistrationResponse, v146, v147);
  v151 = v148 ^ objc_msgSend_hash(self->_setBadgeCountResponse, v149, v150);
  v154 = v151 ^ objc_msgSend_hash(self->_notificationSyncResponse, v152, v153);
  v157 = v154 ^ objc_msgSend_hash(self->_notificationMarkReadResponse, v155, v156);
  v160 = v157 ^ objc_msgSend_hash(self->_archiveRecordsResponse, v158, v159);
  v163 = v160 ^ objc_msgSend_hash(self->_markAssetBrokenResponse, v161, v162);
  return v139 ^ v163 ^ objc_msgSend_hash(self->_functionInvokeResponse, v164, v165);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  response = self->_response;
  v115 = v4;
  v6 = v4[27];
  if (response)
  {
    if (v6)
    {
      objc_msgSend_mergeFrom_(response, v4, v6);
    }
  }

  else if (v6)
  {
    objc_msgSend_setResponse_(self, v4, v6);
  }

  result = self->_result;
  v8 = v115[28];
  if (result)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(result, v115, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setResult_(self, v115, v8);
  }

  header = self->_header;
  v10 = v115[11];
  if (header)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(header, v115, v10);
    }
  }

  else if (v10)
  {
    objc_msgSend_setHeader_(self, v115, v10);
  }

  zoneSaveResponse = self->_zoneSaveResponse;
  v12 = v115[54];
  if (zoneSaveResponse)
  {
    if (v12)
    {
      objc_msgSend_mergeFrom_(zoneSaveResponse, v115, v12);
    }
  }

  else if (v12)
  {
    objc_msgSend_setZoneSaveResponse_(self, v115, v12);
  }

  zoneRetrieveResponse = self->_zoneRetrieveResponse;
  v14 = v115[53];
  if (zoneRetrieveResponse)
  {
    if (v14)
    {
      objc_msgSend_mergeFrom_(zoneRetrieveResponse, v115, v14);
    }
  }

  else if (v14)
  {
    objc_msgSend_setZoneRetrieveResponse_(self, v115, v14);
  }

  zoneDeleteResponse = self->_zoneDeleteResponse;
  v16 = v115[50];
  if (zoneDeleteResponse)
  {
    if (v16)
    {
      objc_msgSend_mergeFrom_(zoneDeleteResponse, v115, v16);
    }
  }

  else if (v16)
  {
    objc_msgSend_setZoneDeleteResponse_(self, v115, v16);
  }

  zoneRetrieveChangesResponse = self->_zoneRetrieveChangesResponse;
  v18 = v115[52];
  if (zoneRetrieveChangesResponse)
  {
    if (v18)
    {
      objc_msgSend_mergeFrom_(zoneRetrieveChangesResponse, v115, v18);
    }
  }

  else if (v18)
  {
    objc_msgSend_setZoneRetrieveChangesResponse_(self, v115, v18);
  }

  zoneChildrenRetrieveResponse = self->_zoneChildrenRetrieveResponse;
  v20 = v115[49];
  if (zoneChildrenRetrieveResponse)
  {
    if (v20)
    {
      objc_msgSend_mergeFrom_(zoneChildrenRetrieveResponse, v115, v20);
    }
  }

  else if (v20)
  {
    objc_msgSend_setZoneChildrenRetrieveResponse_(self, v115, v20);
  }

  zoneRetrieveAncestorsResponse = self->_zoneRetrieveAncestorsResponse;
  v22 = v115[51];
  if (zoneRetrieveAncestorsResponse)
  {
    if (v22)
    {
      objc_msgSend_mergeFrom_(zoneRetrieveAncestorsResponse, v115, v22);
    }
  }

  else if (v22)
  {
    objc_msgSend_setZoneRetrieveAncestorsResponse_(self, v115, v22);
  }

  recordSaveResponse = self->_recordSaveResponse;
  v24 = v115[26];
  if (recordSaveResponse)
  {
    if (v24)
    {
      objc_msgSend_mergeFrom_(recordSaveResponse, v115, v24);
    }
  }

  else if (v24)
  {
    objc_msgSend_setRecordSaveResponse_(self, v115, v24);
  }

  recordRetrieveResponse = self->_recordRetrieveResponse;
  v26 = v115[24];
  if (recordRetrieveResponse)
  {
    if (v26)
    {
      objc_msgSend_mergeFrom_(recordRetrieveResponse, v115, v26);
    }
  }

  else if (v26)
  {
    objc_msgSend_setRecordRetrieveResponse_(self, v115, v26);
  }

  recordRetrieveVersionsResponse = self->_recordRetrieveVersionsResponse;
  v28 = v115[25];
  if (recordRetrieveVersionsResponse)
  {
    if (v28)
    {
      objc_msgSend_mergeFrom_(recordRetrieveVersionsResponse, v115, v28);
    }
  }

  else if (v28)
  {
    objc_msgSend_setRecordRetrieveVersionsResponse_(self, v115, v28);
  }

  recordRetrieveChangesResponse = self->_recordRetrieveChangesResponse;
  v30 = v115[23];
  if (recordRetrieveChangesResponse)
  {
    if (v30)
    {
      objc_msgSend_mergeFrom_(recordRetrieveChangesResponse, v115, v30);
    }
  }

  else if (v30)
  {
    objc_msgSend_setRecordRetrieveChangesResponse_(self, v115, v30);
  }

  recordDeleteResponse = self->_recordDeleteResponse;
  v32 = v115[20];
  if (recordDeleteResponse)
  {
    if (v32)
    {
      objc_msgSend_mergeFrom_(recordDeleteResponse, v115, v32);
    }
  }

  else if (v32)
  {
    objc_msgSend_setRecordDeleteResponse_(self, v115, v32);
  }

  recordResolveTokenResponse = self->_recordResolveTokenResponse;
  v34 = v115[22];
  if (recordResolveTokenResponse)
  {
    if (v34)
    {
      objc_msgSend_mergeFrom_(recordResolveTokenResponse, v115, v34);
    }
  }

  else if (v34)
  {
    objc_msgSend_setRecordResolveTokenResponse_(self, v115, v34);
  }

  fetchArchivedRecordsResponse = self->_fetchArchivedRecordsResponse;
  v36 = v115[9];
  if (fetchArchivedRecordsResponse)
  {
    if (v36)
    {
      objc_msgSend_mergeFrom_(fetchArchivedRecordsResponse, v115, v36);
    }
  }

  else if (v36)
  {
    objc_msgSend_setFetchArchivedRecordsResponse_(self, v115, v36);
  }

  recordMoveResponse = self->_recordMoveResponse;
  v38 = v115[21];
  if (recordMoveResponse)
  {
    if (v38)
    {
      objc_msgSend_mergeFrom_(recordMoveResponse, v115, v38);
    }
  }

  else if (v38)
  {
    objc_msgSend_setRecordMoveResponse_(self, v115, v38);
  }

  shareAccessResponse = self->_shareAccessResponse;
  v40 = v115[31];
  if (shareAccessResponse)
  {
    if (v40)
    {
      objc_msgSend_mergeFrom_(shareAccessResponse, v115, v40);
    }
  }

  else if (v40)
  {
    objc_msgSend_setShareAccessResponse_(self, v115, v40);
  }

  queryRetrieveResponse = self->_queryRetrieveResponse;
  v42 = v115[19];
  if (queryRetrieveResponse)
  {
    if (v42)
    {
      objc_msgSend_mergeFrom_(queryRetrieveResponse, v115, v42);
    }
  }

  else if (v42)
  {
    objc_msgSend_setQueryRetrieveResponse_(self, v115, v42);
  }

  mergeableDeltaSaveResponse = self->_mergeableDeltaSaveResponse;
  v44 = v115[16];
  if (mergeableDeltaSaveResponse)
  {
    if (v44)
    {
      objc_msgSend_mergeFrom_(mergeableDeltaSaveResponse, v115, v44);
    }
  }

  else if (v44)
  {
    objc_msgSend_setMergeableDeltaSaveResponse_(self, v115, v44);
  }

  mergeableDeltaMetadataRetrieveResponse = self->_mergeableDeltaMetadataRetrieveResponse;
  v46 = v115[13];
  if (mergeableDeltaMetadataRetrieveResponse)
  {
    if (v46)
    {
      objc_msgSend_mergeFrom_(mergeableDeltaMetadataRetrieveResponse, v115, v46);
    }
  }

  else if (v46)
  {
    objc_msgSend_setMergeableDeltaMetadataRetrieveResponse_(self, v115, v46);
  }

  mergeableDeltaReplaceResponse = self->_mergeableDeltaReplaceResponse;
  v48 = v115[14];
  if (mergeableDeltaReplaceResponse)
  {
    if (v48)
    {
      objc_msgSend_mergeFrom_(mergeableDeltaReplaceResponse, v115, v48);
    }
  }

  else if (v48)
  {
    objc_msgSend_setMergeableDeltaReplaceResponse_(self, v115, v48);
  }

  mergeableDeltaRetrieveResponse = self->_mergeableDeltaRetrieveResponse;
  v50 = v115[15];
  if (mergeableDeltaRetrieveResponse)
  {
    if (v50)
    {
      objc_msgSend_mergeFrom_(mergeableDeltaRetrieveResponse, v115, v50);
    }
  }

  else if (v50)
  {
    objc_msgSend_setMergeableDeltaRetrieveResponse_(self, v115, v50);
  }

  assetUploadTokenRetrieveResponse = self->_assetUploadTokenRetrieveResponse;
  v52 = v115[6];
  if (assetUploadTokenRetrieveResponse)
  {
    if (v52)
    {
      objc_msgSend_mergeFrom_(assetUploadTokenRetrieveResponse, v115, v52);
    }
  }

  else if (v52)
  {
    objc_msgSend_setAssetUploadTokenRetrieveResponse_(self, v115, v52);
  }

  deleteContainerResponse = self->_deleteContainerResponse;
  v54 = v115[8];
  if (deleteContainerResponse)
  {
    if (v54)
    {
      objc_msgSend_mergeFrom_(deleteContainerResponse, v115, v54);
    }
  }

  else if (v54)
  {
    objc_msgSend_setDeleteContainerResponse_(self, v115, v54);
  }

  userAvailableQuotaResponse = self->_userAvailableQuotaResponse;
  v56 = v115[41];
  if (userAvailableQuotaResponse)
  {
    if (v56)
    {
      objc_msgSend_mergeFrom_(userAvailableQuotaResponse, v115, v56);
    }
  }

  else if (v56)
  {
    objc_msgSend_setUserAvailableQuotaResponse_(self, v115, v56);
  }

  bundlesForContainerResponse = self->_bundlesForContainerResponse;
  v58 = v115[7];
  if (bundlesForContainerResponse)
  {
    if (v58)
    {
      objc_msgSend_mergeFrom_(bundlesForContainerResponse, v115, v58);
    }
  }

  else if (v58)
  {
    objc_msgSend_setBundlesForContainerResponse_(self, v115, v58);
  }

  webAuthTokenRetrieveResponse = self->_webAuthTokenRetrieveResponse;
  v60 = v115[48];
  if (webAuthTokenRetrieveResponse)
  {
    if (v60)
    {
      objc_msgSend_mergeFrom_(webAuthTokenRetrieveResponse, v115, v60);
    }
  }

  else if (v60)
  {
    objc_msgSend_setWebAuthTokenRetrieveResponse_(self, v115, v60);
  }

  updateMissingAssetStatusResponse = self->_updateMissingAssetStatusResponse;
  v62 = v115[40];
  if (updateMissingAssetStatusResponse)
  {
    if (v62)
    {
      objc_msgSend_mergeFrom_(updateMissingAssetStatusResponse, v115, v62);
    }
  }

  else if (v62)
  {
    objc_msgSend_setUpdateMissingAssetStatusResponse_(self, v115, v62);
  }

  anonymousShareAddResponse = self->_anonymousShareAddResponse;
  v64 = v115[3];
  if (anonymousShareAddResponse)
  {
    if (v64)
    {
      objc_msgSend_mergeFrom_(anonymousShareAddResponse, v115, v64);
    }
  }

  else if (v64)
  {
    objc_msgSend_setAnonymousShareAddResponse_(self, v115, v64);
  }

  anonymousShareRemoveResponse = self->_anonymousShareRemoveResponse;
  v66 = v115[4];
  if (anonymousShareRemoveResponse)
  {
    if (v66)
    {
      objc_msgSend_mergeFrom_(anonymousShareRemoveResponse, v115, v66);
    }
  }

  else if (v66)
  {
    objc_msgSend_setAnonymousShareRemoveResponse_(self, v115, v66);
  }

  subscriptionCreateResponse = self->_subscriptionCreateResponse;
  v68 = v115[35];
  if (subscriptionCreateResponse)
  {
    if (v68)
    {
      objc_msgSend_mergeFrom_(subscriptionCreateResponse, v115, v68);
    }
  }

  else if (v68)
  {
    objc_msgSend_setSubscriptionCreateResponse_(self, v115, v68);
  }

  subscriptionRetrieveResponse = self->_subscriptionRetrieveResponse;
  v70 = v115[37];
  if (subscriptionRetrieveResponse)
  {
    if (v70)
    {
      objc_msgSend_mergeFrom_(subscriptionRetrieveResponse, v115, v70);
    }
  }

  else if (v70)
  {
    objc_msgSend_setSubscriptionRetrieveResponse_(self, v115, v70);
  }

  subscriptionDeleteResponse = self->_subscriptionDeleteResponse;
  v72 = v115[36];
  if (subscriptionDeleteResponse)
  {
    if (v72)
    {
      objc_msgSend_mergeFrom_(subscriptionDeleteResponse, v115, v72);
    }
  }

  else if (v72)
  {
    objc_msgSend_setSubscriptionDeleteResponse_(self, v115, v72);
  }

  userRetrieveResponse = self->_userRetrieveResponse;
  v74 = v115[47];
  if (userRetrieveResponse)
  {
    if (v74)
    {
      objc_msgSend_mergeFrom_(userRetrieveResponse, v115, v74);
    }
  }

  else if (v74)
  {
    objc_msgSend_setUserRetrieveResponse_(self, v115, v74);
  }

  userQueryResponse = self->_userQueryResponse;
  v76 = v115[46];
  if (userQueryResponse)
  {
    if (v76)
    {
      objc_msgSend_mergeFrom_(userQueryResponse, v115, v76);
    }
  }

  else if (v76)
  {
    objc_msgSend_setUserQueryResponse_(self, v115, v76);
  }

  userPrivacySettingsRetrieveResponse = self->_userPrivacySettingsRetrieveResponse;
  v78 = v115[44];
  if (userPrivacySettingsRetrieveResponse)
  {
    if (v78)
    {
      objc_msgSend_mergeFrom_(userPrivacySettingsRetrieveResponse, v115, v78);
    }
  }

  else if (v78)
  {
    objc_msgSend_setUserPrivacySettingsRetrieveResponse_(self, v115, v78);
  }

  userPrivacySettingsUpdateResponse = self->_userPrivacySettingsUpdateResponse;
  v80 = v115[45];
  if (userPrivacySettingsUpdateResponse)
  {
    if (v80)
    {
      objc_msgSend_mergeFrom_(userPrivacySettingsUpdateResponse, v115, v80);
    }
  }

  else if (v80)
  {
    objc_msgSend_setUserPrivacySettingsUpdateResponse_(self, v115, v80);
  }

  userPrivacySettingsResetResponse = self->_userPrivacySettingsResetResponse;
  v82 = v115[43];
  if (userPrivacySettingsResetResponse)
  {
    if (v82)
    {
      objc_msgSend_mergeFrom_(userPrivacySettingsResetResponse, v115, v82);
    }
  }

  else if (v82)
  {
    objc_msgSend_setUserPrivacySettingsResetResponse_(self, v115, v82);
  }

  userPrivacySettingsBatchLookupResponse = self->_userPrivacySettingsBatchLookupResponse;
  v84 = v115[42];
  if (userPrivacySettingsBatchLookupResponse)
  {
    if (v84)
    {
      objc_msgSend_mergeFrom_(userPrivacySettingsBatchLookupResponse, v115, v84);
    }
  }

  else if (v84)
  {
    objc_msgSend_setUserPrivacySettingsBatchLookupResponse_(self, v115, v84);
  }

  adopterCapabilitiesSaveResponse = self->_adopterCapabilitiesSaveResponse;
  v86 = v115[2];
  if (adopterCapabilitiesSaveResponse)
  {
    if (v86)
    {
      objc_msgSend_mergeFrom_(adopterCapabilitiesSaveResponse, v115, v86);
    }
  }

  else if (v86)
  {
    objc_msgSend_setAdopterCapabilitiesSaveResponse_(self, v115, v86);
  }

  adopterCapabilitiesCheckResponse = self->_adopterCapabilitiesCheckResponse;
  v88 = v115[1];
  if (adopterCapabilitiesCheckResponse)
  {
    if (v88)
    {
      objc_msgSend_mergeFrom_(adopterCapabilitiesCheckResponse, v115, v88);
    }
  }

  else if (v88)
  {
    objc_msgSend_setAdopterCapabilitiesCheckResponse_(self, v115, v88);
  }

  zoneUsageSaveResponse = self->_zoneUsageSaveResponse;
  v90 = v115[55];
  if (zoneUsageSaveResponse)
  {
    if (v90)
    {
      objc_msgSend_mergeFrom_(zoneUsageSaveResponse, v115, v90);
    }
  }

  else if (v90)
  {
    objc_msgSend_setZoneUsageSaveResponse_(self, v115, v90);
  }

  shareUsageSaveResponse = self->_shareUsageSaveResponse;
  v92 = v115[33];
  if (shareUsageSaveResponse)
  {
    if (v92)
    {
      objc_msgSend_mergeFrom_(shareUsageSaveResponse, v115, v92);
    }
  }

  else if (v92)
  {
    objc_msgSend_setShareUsageSaveResponse_(self, v115, v92);
  }

  shareAcceptResponse = self->_shareAcceptResponse;
  v94 = v115[30];
  if (shareAcceptResponse)
  {
    if (v94)
    {
      objc_msgSend_mergeFrom_(shareAcceptResponse, v115, v94);
    }
  }

  else if (v94)
  {
    objc_msgSend_setShareAcceptResponse_(self, v115, v94);
  }

  shareDeclineResponse = self->_shareDeclineResponse;
  v96 = v115[32];
  if (shareDeclineResponse)
  {
    if (v96)
    {
      objc_msgSend_mergeFrom_(shareDeclineResponse, v115, v96);
    }
  }

  else if (v96)
  {
    objc_msgSend_setShareDeclineResponse_(self, v115, v96);
  }

  shareVettingInitiateResponse = self->_shareVettingInitiateResponse;
  v98 = v115[34];
  if (shareVettingInitiateResponse)
  {
    if (v98)
    {
      objc_msgSend_mergeFrom_(shareVettingInitiateResponse, v115, v98);
    }
  }

  else if (v98)
  {
    objc_msgSend_setShareVettingInitiateResponse_(self, v115, v98);
  }

  tokenRegistrationResponse = self->_tokenRegistrationResponse;
  v100 = v115[38];
  if (tokenRegistrationResponse)
  {
    if (v100)
    {
      objc_msgSend_mergeFrom_(tokenRegistrationResponse, v115, v100);
    }
  }

  else if (v100)
  {
    objc_msgSend_setTokenRegistrationResponse_(self, v115, v100);
  }

  tokenUnregistrationResponse = self->_tokenUnregistrationResponse;
  v102 = v115[39];
  if (tokenUnregistrationResponse)
  {
    if (v102)
    {
      objc_msgSend_mergeFrom_(tokenUnregistrationResponse, v115, v102);
    }
  }

  else if (v102)
  {
    objc_msgSend_setTokenUnregistrationResponse_(self, v115, v102);
  }

  setBadgeCountResponse = self->_setBadgeCountResponse;
  v104 = v115[29];
  if (setBadgeCountResponse)
  {
    if (v104)
    {
      objc_msgSend_mergeFrom_(setBadgeCountResponse, v115, v104);
    }
  }

  else if (v104)
  {
    objc_msgSend_setSetBadgeCountResponse_(self, v115, v104);
  }

  notificationSyncResponse = self->_notificationSyncResponse;
  v106 = v115[18];
  if (notificationSyncResponse)
  {
    if (v106)
    {
      objc_msgSend_mergeFrom_(notificationSyncResponse, v115, v106);
    }
  }

  else if (v106)
  {
    objc_msgSend_setNotificationSyncResponse_(self, v115, v106);
  }

  notificationMarkReadResponse = self->_notificationMarkReadResponse;
  v108 = v115[17];
  if (notificationMarkReadResponse)
  {
    if (v108)
    {
      objc_msgSend_mergeFrom_(notificationMarkReadResponse, v115, v108);
    }
  }

  else if (v108)
  {
    objc_msgSend_setNotificationMarkReadResponse_(self, v115, v108);
  }

  archiveRecordsResponse = self->_archiveRecordsResponse;
  v110 = v115[5];
  if (archiveRecordsResponse)
  {
    if (v110)
    {
      objc_msgSend_mergeFrom_(archiveRecordsResponse, v115, v110);
    }
  }

  else if (v110)
  {
    objc_msgSend_setArchiveRecordsResponse_(self, v115, v110);
  }

  markAssetBrokenResponse = self->_markAssetBrokenResponse;
  v112 = v115[12];
  if (markAssetBrokenResponse)
  {
    if (v112)
    {
      objc_msgSend_mergeFrom_(markAssetBrokenResponse, v115, v112);
    }
  }

  else if (v112)
  {
    objc_msgSend_setMarkAssetBrokenResponse_(self, v115, v112);
  }

  functionInvokeResponse = self->_functionInvokeResponse;
  v114 = v115[10];
  if (functionInvokeResponse)
  {
    if (v114)
    {
      objc_msgSend_mergeFrom_(functionInvokeResponse, v115, v114);
    }
  }

  else if (v114)
  {
    objc_msgSend_setFunctionInvokeResponse_(self, v115, v114);
  }
}

@end