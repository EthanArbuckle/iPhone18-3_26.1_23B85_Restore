@interface CKDProtocolTranslator
+ (id)standaloneTranslatorWithDatabaseScope:(int64_t)a3;
- (BOOL)_isDefaultUserNameFromClient:(id)a3;
- (BOOL)_isDefaultUserNameFromServer:(id)a3;
- (BOOL)_valueTypeIsAnEncryptedBytesTypeForField:(id)a3;
- (BOOL)haveDownloadPreauthorizations;
- (BOOL)objectIsAnEncryptedType:(id)a3;
- (CKDPIdentifier)pUserID;
- (CKDProtocolTranslator)initWithContainer:(id)a3 databaseScope:(int64_t)a4 requireContainerScopedUserID:(BOOL)a5;
- (CKDProtocolTranslatorIdentityDelegate)identityDelegate;
- (NSString)containerScopedUserID;
- (id)_capabilitiesFromPCapabilities:(id)a3 level:(int)a4;
- (id)_pRecordFromRecordSansValues:(id)a3 forCache:(BOOL)a4;
- (id)assetFromPAsset:(id)a3 field:(id)a4 error:(id *)a5;
- (id)blockedIdentityFromPBlockedUser:(id)a3;
- (id)containerPrivacySettingsFromPContainerPrivacySettings:(id)a3;
- (id)cryptoRequirementsFromPSignedCryptoRequirements:(id)a3 zoneID:(id)a4 error:(id *)a5 requiredFeaturesValidationFailureType:(id *)a6;
- (id)dateFromPDate:(id)a3;
- (id)deltaMetadataVectorsFromPDistributedTimestamps:(id)a3 error:(id *)a4;
- (id)deltaPRecordFromRecord:(id)a3 withAllFields:(BOOL)a4 outDeletedMergeFields:(id *)a5 outKeysToSend:(id *)a6;
- (id)deviceCapabilitySetFromPDeviceCapabilitySet:(id)a3;
- (id)downloadPreauthorizationForResponseUUID:(id)a3;
- (id)encryptedObjectRepresentationFromFieldValue:(id)a3;
- (id)featureSetFromPAdopterFeatureSet:(id)a3 ofFeatureClass:(Class)a4;
- (id)identityFromPUser:(id)a3;
- (id)initInternalWithContainerScopedUserID:(id)a3 orgAdminUserID:(id)a4 bundleID:(id)a5 databaseScope:(int64_t)a6 addDatabaseScopeToZoneIDs:(BOOL)a7 pcsManager:(id)a8 clientSDKVersion:(unsigned int)a9 isAppleInternal:(BOOL)a10;
- (id)locationFieldValueWithLatitude:(double)a3 longitude:(double)a4;
- (id)mergeableDeltaFromPDelta:(id)a3 valueID:(id)a4 error:(id *)a5;
- (id)mergeableDeltaMetadataFromPMetadata:(id)a3 mergeableValueID:(id)a4 error:(id *)a5;
- (id)mergeableRecordValueFromPRecordField:(id)a3 inPRecordIdentifier:(id)a4 asAnonymousCKUserID:(id)a5 error:(id *)a6;
- (id)notificationFromPPushMessage:(id)a3;
- (id)objectRepresentationFromField:(id)a3 inRecord:(id)a4 asAnonymousCKUserID:(id)a5;
- (id)objectRepresentationFromFieldValue:(id)a3;
- (id)pAdopterFeatureSetFromFeatureSet:(id)a3;
- (id)pAdopterFeatureSetFromRequiredFeatures:(id)a3;
- (id)pAliasWithIdentityLookupInfo:(id)a3;
- (id)pAliasWithPhoneNumber:(id)a3;
- (id)pAliasWithUserRecordID:(id)a3;
- (id)pAssetFromAsset:(id)a3;
- (id)pBlockedUserFromShareBlockedIdentity:(id)a3;
- (id)pCapabilitiesFrom:(id)a3;
- (id)pContainerScopedRecordIdentifierWithPRecordIdentifier:(id)a3;
- (id)pContainerScopedRecordZoneIdentifierFromFromPRecordZoneIdentifier:(id)a3;
- (id)pContainerScopedUserIdentifierFromPUserIdentifier:(id)a3;
- (id)pDateFromDate:(id)a3;
- (id)pDeviceCapabilitiesFromDeviceCapabilitySet:(id)a3 withDeviceID:(id)a4;
- (id)pEncryptedMergeableValueFromRecordValue:(id)a3;
- (id)pFieldActionWithLocation:(int64_t)a3 length:(unint64_t)a4 values:(id)a5;
- (id)pIdentifierFromUserRecordID:(id)a3;
- (id)pMergeableDeltaFromDelta:(id)a3 error:(id *)a4;
- (id)pMergeableDeltaMetadataFromMetadata:(id)a3 mergeableValueID:(id)a4 error:(id *)a5;
- (id)pMergeableValueFromMergeableValueID:(id)a3;
- (id)pMergeableValueIdentifierFromMergeableValueID:(id)a3;
- (id)pPackageFromPackage:(id)a3;
- (id)pParticipantFromShareParticipant:(id)a3 forCache:(BOOL)a4;
- (id)pProtectionInfoKeysToRemoveFromPCSKeysToRemove:(id)a3;
- (id)pQueryFromQuery:(id)a3 error:(id *)a4;
- (id)pRecordIdentifierFromRecordID:(id)a3;
- (id)pRecordIdentifierFromUserRecordName:(id)a3;
- (id)pRecordZoneFromRecordZone:(id)a3;
- (id)pRecordZoneIdentifierFromRecordZoneID:(id)a3;
- (id)pRecordZoneReferenceFromRecordZoneReference:(id)a3;
- (id)pReferenceFromReference:(id)a3 error:(id *)a4;
- (id)pRequesterFromShareRequester:(id)a3;
- (id)pShareIdentifierFromRecordID:(id)a3;
- (id)pShareUsageFromShareRecordID:(id)a3 at:(id)a4 withDeviceID:(id)a5;
- (id)pSignedVersionedBlobFrom:(id)a3 signature:(id)a4;
- (id)pStreamingAssetFromStreamingAsset:(id)a3 forCache:(BOOL)a4;
- (id)pSubscriptionFromSubscription:(id)a3 error:(id *)a4;
- (id)pUserIdentifierFromUserRecordName:(id)a3;
- (id)pZoneCryptoFeatureRequirmentsFromZone:(id)a3;
- (id)pZoneUsageFromZoneID:(id)a3 at:(id)a4 withDeviceID:(id)a5;
- (id)packageFromPPackage:(id)a3 error:(id *)a4;
- (id)pcsKeysToRemoveFromPProtectionInfoKeysToRemove:(id)a3;
- (id)recordFromPRecord:(id)a3 asAnonymousCKUserID:(id)a4 error:(id *)a5;
- (id)recordIDFromPRecordIdentifier:(id)a3 asAnonymousCKUserID:(id)a4 error:(id *)a5;
- (id)recordIDFromPShareIdentifier:(id)a3 asAnonymousCKUserID:(id)a4 error:(id *)a5;
- (id)recordIDFromPUserName:(id)a3 error:(id *)a4;
- (id)recordZoneFromPRecordZone:(id)a3 asAnonymousCKUserID:(id)a4 databaseScope:(int64_t)a5 error:(id *)a6 requiredFeaturesValidationFailureType:(id *)a7;
- (id)recordZoneIDFromPRecordZoneIdentifier:(id)a3 asAnonymousCKUserID:(id)a4 error:(id *)a5;
- (id)referenceFromPReference:(id)a3 asAnonymousCKUserID:(id)a4 error:(id *)a5;
- (id)requiredFeatureSetFromPAdopterFeatureSet:(id)a3;
- (id)shareFromPShare:(id)a3 asAnonymousCKUserID:(id)a4 error:(id *)a5;
- (id)shareParticipantFromPParticipant:(id)a3 shareID:(id)a4 shouldMatchCurrentUserParticipantByPublicKey:(BOOL)a5 error:(id *)a6;
- (id)shareRequesterFromPRequester:(id)a3;
- (id)streamingAssetFromPStreamingAsset:(id)a3 error:(id *)a4;
- (id)subscriptionFromPSubscription:(id)a3 error:(id *)a4;
- (id)userNameFromPIdentifier:(id)a3 error:(id *)a4;
- (int)fieldValueTypeFromEncryptedDataObject:(id)a3 isInList:(BOOL)a4;
- (int)fieldValueTypeFromObject:(id)a3;
- (int64_t)databaseScope;
- (unint64_t)capabilitiesFromPZoneCapabilities:(id)a3;
- (void)addCapability:(id)a3 to:(id)a4;
- (void)consumeResponseHeader:(id)a3;
- (void)setDownloadPreauthorization:(id)a3 forResponseUUID:(id)a4;
@end

@implementation CKDProtocolTranslator

- (NSString)containerScopedUserID
{
  v4 = objc_msgSend_overriddenContainerScopedUserID(self, a2, v2);
  containerScopedUserID = v4;
  if (!v4)
  {
    containerScopedUserID = self->_containerScopedUserID;
    if (!containerScopedUserID)
    {
      containerScopedUserID = *MEMORY[0x277CBC088];
    }
  }

  v6 = containerScopedUserID;

  return v6;
}

- (int64_t)databaseScope
{
  result = objc_msgSend_overriddenDatabaseScope(self, a2, v2);
  if (!result)
  {
    return self->_databaseScope;
  }

  return result;
}

- (id)initInternalWithContainerScopedUserID:(id)a3 orgAdminUserID:(id)a4 bundleID:(id)a5 databaseScope:(int64_t)a6 addDatabaseScopeToZoneIDs:(BOOL)a7 pcsManager:(id)a8 clientSDKVersion:(unsigned int)a9 isAppleInternal:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v30.receiver = self;
  v30.super_class = CKDProtocolTranslator;
  v22 = [(CKDProtocolTranslator *)&v30 init];
  if (v22)
  {
    v23 = objc_msgSend_copy(v16, v20, v21);
    containerScopedUserID = v22->_containerScopedUserID;
    v22->_containerScopedUserID = v23;

    v27 = objc_msgSend_copy(v17, v25, v26);
    orgAdminUserID = v22->_orgAdminUserID;
    v22->_orgAdminUserID = v27;

    v22->_databaseScope = a6;
    v22->_bundleID = v18;
    v22->_addDatabaseScopeToZoneIDs = a7;
    objc_storeStrong(&v22->_pcsManager, a8);
    v22->_clientSDKVersion = a9;
    v22->_isAppleInternal = a10;
  }

  return v22;
}

- (CKDProtocolTranslator)initWithContainer:(id)a3 databaseScope:(int64_t)a4 requireContainerScopedUserID:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v12 = objc_msgSend_containerScopedUserID(v9, v10, v11);

  if (!v12 && v5)
  {
    v47 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v47, v48, a2, self, @"CKDProtocolTranslator.m", 118, @"Without a user id, this translator won't do what you want");
  }

  v15 = objc_msgSend_options(v9, v13, v14);
  v18 = objc_msgSend_addDatabaseScopeToZoneIDs(v15, v16, v17);

  if (v18)
  {
    v21 = 1;
  }

  else
  {
    v22 = objc_msgSend_containerID(v9, v19, v20);
    v21 = objc_msgSend_specialContainerType(v22, v23, v24) == 5;
  }

  v25 = objc_msgSend_clientSDKVersion(v9, v19, v20);
  v28 = objc_msgSend_containerID(v9, v26, v27);
  isAppleInternal = objc_msgSend_isAppleInternal(v28, v29, v30);

  v34 = objc_msgSend_containerScopedUserID(v9, v32, v33);
  v37 = objc_msgSend_orgAdminUserID(v9, v35, v36);
  v40 = objc_msgSend_applicationBundleID(v9, v38, v39);
  v43 = objc_msgSend_pcsManager(v9, v41, v42);
  BYTE4(v49) = isAppleInternal;
  LODWORD(v49) = v25;
  v45 = objc_msgSend_initInternalWithContainerScopedUserID_orgAdminUserID_bundleID_databaseScope_addDatabaseScopeToZoneIDs_pcsManager_clientSDKVersion_isAppleInternal_(self, v44, v34, v37, v40, a4, v21, v43, v49);

  return v45;
}

+ (id)standaloneTranslatorWithDatabaseScope:(int64_t)a3
{
  v4 = [a1 alloc];
  BYTE4(v9) = 1;
  LODWORD(v9) = 0;
  isAppleInternal = objc_msgSend_initInternalWithContainerScopedUserID_orgAdminUserID_bundleID_databaseScope_addDatabaseScopeToZoneIDs_pcsManager_clientSDKVersion_isAppleInternal_(v4, v5, 0, 0, 0, a3, 0, 0, v9);
  objc_msgSend_setOverriddenContainerScopedUserID_(isAppleInternal, v7, *MEMORY[0x277CBC088]);

  return isAppleInternal;
}

- (BOOL)haveDownloadPreauthorizations
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_downloadPreauthorizationMap != 0;
  objc_sync_exit(v2);

  return v3;
}

- (id)downloadPreauthorizationForResponseUUID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v7 = objc_msgSend_objectForKeyedSubscript_(v5->_downloadPreauthorizationMap, v6, v4);
  objc_sync_exit(v5);

  return v7;
}

- (void)setDownloadPreauthorization:(id)a3 forResponseUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (v8->_downloadPreauthorizationMap)
  {
    if (v6)
    {
LABEL_3:
      objc_msgSend_setObject_forKeyedSubscript_(v8->_downloadPreauthorizationMap, v9, v6, v7);
      goto LABEL_9;
    }
  }

  else
  {
    v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v9, v10);
    downloadPreauthorizationMap = v8->_downloadPreauthorizationMap;
    v8->_downloadPreauthorizationMap = v11;

    if (v6)
    {
      goto LABEL_3;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Download Preauthorization Failed to Init", v14, 2u);
  }

LABEL_9:
  objc_sync_exit(v8);
}

- (void)consumeResponseHeader:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = objc_msgSend_assetAuthorizationResponses(a3, a2, a3);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v48, v53, 16);
  if (v4)
  {
    v7 = v4;
    v42 = *v49;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v48 + 1) + 8 * i);
        v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v13 = objc_msgSend_responseHeaders(v9, v11, v12);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v44, v52, 16);
        if (v15)
        {
          v18 = v15;
          v19 = *v45;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v45 != v19)
              {
                objc_enumerationMutation(v13);
              }

              v21 = *(*(&v44 + 1) + 8 * j);
              v22 = objc_msgSend_headerValue(v21, v16, v17);
              v25 = objc_msgSend_headerKey(v21, v23, v24);
              objc_msgSend_setObject_forKey_(v10, v26, v22, v25);
            }

            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v44, v52, 16);
          }

          while (v18);
        }

        v27 = objc_alloc(MEMORY[0x277CBC198]);
        v30 = objc_msgSend_responseUUID(v9, v28, v29);
        v33 = objc_msgSend_authGetResponseBody(v9, v31, v32);
        v35 = objc_msgSend_initWithResponseUUID_contentResponseHeaders_contentResponseBody_(v27, v34, v30, v10, v33);

        v38 = objc_msgSend_responseUUID(v9, v36, v37);
        objc_msgSend_setDownloadPreauthorization_forResponseUUID_(self, v39, v35, v38);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v48, v53, 16);
    }

    while (v7);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isDefaultUserNameFromServer:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_msgSend_containerScopedUserID(self, v4, v5);
    if (objc_msgSend_isEqualToString_(v7, v8, v6))
    {
      isEqualToString = 1;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(*MEMORY[0x277CBC088], v9, v6);
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (BOOL)_isDefaultUserNameFromClient:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_containerScopedUserID(self, v5, v6);
  if (objc_msgSend_isEqualToString_(v7, v8, v4))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(*MEMORY[0x277CBBF28], v9, v4);
  }

  return isEqualToString;
}

- (CKDPIdentifier)pUserID
{
  v3 = objc_msgSend_containerScopedUserID(self, a2, v2);
  v6 = objc_msgSend_CKDPIdentifier_User(v3, v4, v5);

  return v6;
}

- (id)recordIDFromPUserName:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (objc_msgSend__isDefaultUserNameFromServer_(self, v6, v5))
  {
    v7 = *MEMORY[0x277CBBF28];

    v5 = v7;
  }

  if (_CKCheckArgument())
  {
    v8 = objc_alloc(MEMORY[0x277CBC5D0]);
    v10 = objc_msgSend_initWithRecordName_(v8, v9, v5);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pIdentifierFromUserRecordID:(id)a3
{
  v4 = objc_msgSend_recordName(a3, a2, a3);
  if (objc_msgSend__isDefaultUserNameFromClient_(self, v5, v4))
  {
    v8 = objc_msgSend_containerScopedUserID(self, v6, v7);

    v4 = v8;
  }

  v9 = objc_msgSend_CKDPIdentifier_User(v4, v6, v7);

  return v9;
}

- (id)pUserIdentifierFromUserRecordName:(id)a3
{
  v4 = a3;
  if (objc_msgSend__isDefaultUserNameFromClient_(self, v5, v4))
  {
    if (objc_msgSend_databaseScope(self, v6, v7) == 1 || objc_msgSend_databaseScope(self, v8, v9) == 4)
    {
      v12 = *MEMORY[0x277CBC088];
    }

    else
    {
      v12 = objc_msgSend_containerScopedUserID(self, v10, v11);
    }

    v13 = v12;

    v4 = v13;
  }

  v14 = objc_msgSend_CKDPIdentifier_User(v4, v6, v7);

  return v14;
}

- (id)pContainerScopedUserIdentifierFromPUserIdentifier:(id)a3
{
  v4 = a3;
  if (objc_msgSend__isDefaultUserNameFromServer_(self, v5, v4))
  {
    v8 = objc_msgSend_containerScopedUserID(self, v6, v7);

    v4 = v8;
  }

  v9 = objc_msgSend_CKDPIdentifier_User(v4, v6, v7);

  return v9;
}

- (id)pRecordIdentifierFromUserRecordName:(id)a3
{
  v4 = a3;
  if (objc_msgSend__isDefaultUserNameFromClient_(self, v5, v4))
  {
    v8 = objc_msgSend_containerScopedUserID(self, v6, v7);

    v4 = v8;
  }

  v9 = objc_msgSend_CKDPIdentifier_Record(v4, v6, v7);

  return v9;
}

- (id)userNameFromPIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v8 = objc_msgSend_name(v5, v6, v7);
  v9 = _CKCheckArgument();

  if (v9)
  {
    v12 = objc_msgSend_name(v5, v10, v11);
    if (objc_msgSend_hasName(v5, v13, v14))
    {
      v17 = objc_msgSend_name(v5, v15, v16);
      isDefaultUserNameFromServer = objc_msgSend__isDefaultUserNameFromServer_(self, v18, v17);

      if (isDefaultUserNameFromServer)
      {
        v20 = *MEMORY[0x277CBBF28];

        v12 = v20;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)recordIDFromPRecordIdentifier:(id)a3 asAnonymousCKUserID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_defaultRecordZone(MEMORY[0x277CBC5E8], v10, v11);
  v15 = objc_msgSend_zoneID(v12, v13, v14);
  v18 = objc_msgSend_copy(v15, v16, v17);

  v21 = objc_msgSend_zoneIdentifier(v8, v19, v20);
  v24 = objc_msgSend_ownerIdentifier(v21, v22, v23);
  v27 = objc_msgSend_name(v24, v25, v26);
  isDefaultUserNameFromServer = objc_msgSend__isDefaultUserNameFromServer_(self, v28, v27);

  if (objc_msgSend_hasZoneIdentifier(v8, v30, v31))
  {
    v34 = objc_msgSend_zoneIdentifier(v8, v32, v33);
    v37 = objc_msgSend_value(v34, v35, v36);
    v40 = objc_msgSend_name(v37, v38, v39);
    v42 = objc_msgSend_isEqualToString_(v40, v41, *MEMORY[0x277CBC060]) ^ 1;
  }

  else
  {
    v42 = 0;
  }

  v43 = objc_msgSend_addDatabaseScopeToZoneIDs(self, v32, v33);
  if (!isDefaultUserNameFromServer || (v42 & 1) != 0 || v43)
  {
    v46 = objc_msgSend_zoneIdentifier(v8, v44, v45);
    v48 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_asAnonymousCKUserID_error_(self, v47, v46, v9, a5);

    v18 = v48;
    if (!v48)
    {
      goto LABEL_10;
    }
  }

  v49 = objc_msgSend_value(v8, v44, v45);
  v52 = objc_msgSend_name(v49, v50, v51);
  v53 = _CKCheckArgument();

  if (v53)
  {
    v54 = objc_alloc(MEMORY[0x277CBC5D0]);
    v57 = objc_msgSend_value(v8, v55, v56);
    v60 = objc_msgSend_name(v57, v58, v59);
    v62 = objc_msgSend_initWithRecordName_zoneID_(v54, v61, v60, v18);
  }

  else
  {
LABEL_10:
    v62 = 0;
  }

  return v62;
}

- (id)pRecordIdentifierFromRecordID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_recordName(v4, v6, v7);
  v10 = objc_msgSend_pRecordIdentifierFromUserRecordName_(self, v9, v8);
  objc_msgSend_setValue_(v5, v11, v10);

  v14 = objc_msgSend_zoneID(v4, v12, v13);

  v16 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v15, v14);
  objc_msgSend_setZoneIdentifier_(v5, v17, v16);

  return v5;
}

- (id)pContainerScopedRecordIdentifierWithPRecordIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_value(v4, v6, v7);
  objc_msgSend_setValue_(v5, v9, v8);

  v12 = objc_msgSend_zoneIdentifier(v4, v10, v11);

  v14 = objc_msgSend_pContainerScopedRecordZoneIdentifierFromFromPRecordZoneIdentifier_(self, v13, v12);
  objc_msgSend_setZoneIdentifier_(v5, v15, v14);

  v18 = objc_msgSend_zoneIdentifier(v5, v16, v17);

  if (v18)
  {
    v18 = v5;
  }

  return v18;
}

- (id)recordZoneIDFromPRecordZoneIdentifier:(id)a3 asAnonymousCKUserID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_ownerIdentifier(v8, v10, v11);
  v14 = objc_msgSend_userNameFromPIdentifier_error_(self, v13, v12, a5);

  if (!v14 || (objc_msgSend_value(v8, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_name(v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v21 = _CKCheckArgument(), v20, v17, !v21))
  {
    v32 = 0;
    goto LABEL_10;
  }

  if (!objc_msgSend_addDatabaseScopeToZoneIDs(self, v22, v23))
  {
    goto LABEL_8;
  }

  v26 = objc_msgSend_databaseScope(self, v24, v25);
  if (objc_msgSend_hasDatabaseType(v8, v27, v28))
  {
    v31 = objc_msgSend_databaseType(v8, v29, v30) - 1;
    if (v31 <= 3)
    {
      v26 = qword_225447F98[v31];
      goto LABEL_9;
    }

LABEL_8:
    v26 = 0;
  }

LABEL_9:
  v33 = objc_alloc(MEMORY[0x277CBC5F8]);
  v36 = objc_msgSend_value(v8, v34, v35);
  v39 = objc_msgSend_name(v36, v37, v38);
  v32 = objc_msgSend_initWithZoneName_ownerName_anonymousCKUserID_databaseScope_(v33, v40, v39, v14, v9, v26);

LABEL_10:

  return v32;
}

- (id)pRecordZoneIdentifierFromRecordZoneID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_zoneName(v4, v6, v7);
  v11 = objc_msgSend_CKDPIdentifier_Zone(v8, v9, v10);
  objc_msgSend_setValue_(v5, v12, v11);

  v15 = objc_msgSend_ownerName(v4, v13, v14);
  v17 = objc_msgSend_pUserIdentifierFromUserRecordName_(self, v16, v15);
  objc_msgSend_setOwnerIdentifier_(v5, v18, v17);

  v21 = objc_msgSend_databaseScope(v4, v19, v20);
  if (!v21)
  {
    v21 = objc_msgSend_databaseScope(self, v22, v23);
  }

  if (v21 > 4)
  {
    objc_msgSend_setDatabaseType_(v5, v22, 1);
  }

  else
  {
    objc_msgSend_setDatabaseType_(v5, v22, dword_225447FB8[v21]);
  }

  return v5;
}

- (id)pContainerScopedRecordZoneIdentifierFromFromPRecordZoneIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_value(v4, v6, v7);
  objc_msgSend_setValue_(v5, v9, v8);

  v12 = objc_msgSend_ownerIdentifier(v4, v10, v11);
  v15 = objc_msgSend_name(v12, v13, v14);
  v17 = objc_msgSend_pContainerScopedUserIdentifierFromPUserIdentifier_(self, v16, v15);
  objc_msgSend_setOwnerIdentifier_(v5, v18, v17);

  v21 = objc_msgSend_ownerIdentifier(v5, v19, v20);

  if (v21)
  {
    if (objc_msgSend_hasDatabaseType(v4, v22, v23))
    {
      v26 = objc_msgSend_databaseType(v4, v24, v25);
      objc_msgSend_setDatabaseType_(v5, v27, v26);
    }

    v21 = v5;
  }

  return v21;
}

- (id)pShareIdentifierFromRecordID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_recordName(v4, v6, v7);
  v11 = objc_msgSend_CKDPIdentifier_ShareId(v8, v9, v10);
  objc_msgSend_setValue_(v5, v12, v11);

  v15 = objc_msgSend_zoneID(v4, v13, v14);

  v17 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v16, v15);
  objc_msgSend_setZoneIdentifier_(v5, v18, v17);

  return v5;
}

- (id)recordIDFromPShareIdentifier:(id)a3 asAnonymousCKUserID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_zoneIdentifier(v8, v10, v11);
  v14 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_asAnonymousCKUserID_error_(self, v13, v12, v9, a5);

  if (v14 && (objc_msgSend_value(v8, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_name(v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v21 = _CKCheckArgument(), v20, v17, v21))
  {
    v22 = objc_alloc(MEMORY[0x277CBC5D0]);
    v25 = objc_msgSend_value(v8, v23, v24);
    v28 = objc_msgSend_name(v25, v26, v27);
    v30 = objc_msgSend_initWithRecordName_zoneID_(v22, v29, v28, v14);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)referenceFromPReference:(id)a3 asAnonymousCKUserID:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_recordIdentifier(v8, v10, v11);
  v29 = 0;
  v14 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(self, v13, v12, v9, &v29);

  v17 = v29;
  if (v14)
  {
    if (objc_msgSend_hasType(v8, v15, v16))
    {
      v20 = objc_msgSend_type(v8, v18, v19);
      v21 = sub_22509E008(v20);
    }

    else
    {
      v21 = 0;
    }

    v24 = objc_alloc(MEMORY[0x277CBC620]);
    v23 = objc_msgSend_initWithRecordID_action_(v24, v25, v14, v21);
    if (!a5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = v17;
    _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "Invalid record identifier from server %{public}@: %@", buf, 0x16u);
  }

  v23 = 0;
  if (a5)
  {
LABEL_12:
    v26 = v17;
    *a5 = v17;
  }

LABEL_13:

  v27 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)pReferenceFromReference:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v9 = objc_msgSend_recordID(v5, v7, v8);
  v11 = objc_msgSend_pRecordIdentifierFromRecordID_(self, v10, v9);
  objc_msgSend_setRecordIdentifier_(v6, v12, v11);

  v15 = objc_msgSend_referenceAction(v5, v13, v14);
  if (*MEMORY[0x277CBC070] == v15)
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  if (v15 == 1)
  {
    objc_msgSend_setType_(v6, v16, 1);
  }

  else
  {
    objc_msgSend_setType_(v6, v16, v17);
  }

  return v6;
}

- (id)recordFromPRecord:(id)a3 asAnonymousCKUserID:(id)a4 error:(id *)a5
{
  v421 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_recordIdentifier(v8, v10, v11);
  v397 = v9;
  v398 = self;
  v14 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(self, v13, v12, v9, a5);

  if (!v14)
  {
    v28 = 0;
    goto LABEL_122;
  }

  v17 = objc_msgSend_type(v8, v15, v16);
  v20 = objc_msgSend_name(v17, v18, v19);
  v393 = *MEMORY[0x277CBC050];
  isEqualToString = objc_msgSend_isEqualToString_(v20, v21, *MEMORY[0x277CBC050]);

  if (isEqualToString)
  {
    v25 = objc_msgSend_shareInfo(v8, v23, v24);
    inited = objc_msgSend_shareFromPShare_asAnonymousCKUserID_error_(v398, v26, v25, v397, a5);
  }

  else
  {
    v29 = objc_alloc(MEMORY[0x277CBC5A0]);
    v25 = objc_msgSend_type(v8, v30, v31);
    v34 = objc_msgSend_name(v25, v32, v33);
    inited = objc_msgSend_initInternalSkippingValidationWithRecordType_recordID_(v29, v35, v34, v14);
  }

  if (!inited)
  {
    goto LABEL_120;
  }

  if (objc_msgSend_hasStableUrl(v8, v36, v37))
  {
    v40 = objc_msgSend_stableUrl(v8, v38, v39);
    if (objc_msgSend_hasRoutingKey(v40, v41, v42))
    {
      v45 = objc_msgSend_stableUrl(v8, v43, v44);
      v48 = objc_msgSend_routingKey(v45, v46, v47);
      objc_msgSend_setRoutingKey_(inited, v49, v48);
    }

    else
    {
      objc_msgSend_setRoutingKey_(inited, v43, 0);
    }

    v52 = objc_msgSend_stableUrl(v8, v50, v51);
    hasEncryptedPublicSharingKey = objc_msgSend_hasEncryptedPublicSharingKey(v52, v53, v54);

    if (hasEncryptedPublicSharingKey)
    {
      v58 = objc_alloc(MEMORY[0x277CBC2E8]);
      v61 = objc_msgSend_stableUrl(v8, v59, v60);
      v64 = objc_msgSend_encryptedPublicSharingKey(v61, v62, v63);
      v66 = objc_msgSend_initWithEncryptedData_(v58, v65, v64);
      objc_msgSend_setMutableEncryptedPSK_(inited, v67, v66);
    }

    v68 = objc_msgSend_stableUrl(v8, v56, v57);
    v71 = objc_msgSend_displayedHostname(v68, v69, v70);
    objc_msgSend_setDisplayedHostname_(inited, v72, v71);
  }

  v395 = v8;
  v396 = inited;
  v394 = v14;
  if (objc_msgSend_hasOneTimeStableUrlInfo(v8, v38, v39))
  {
    v391 = a5;
    v392 = inited;
    v75 = objc_opt_new();
    v411 = 0u;
    v412 = 0u;
    v413 = 0u;
    v414 = 0u;
    v78 = objc_msgSend_oneTimeStableUrlInfo(v8, v76, v77);
    v81 = objc_msgSend_oneTimeUrls(v78, v79, v80);

    v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v411, v420, 16);
    if (v83)
    {
      v86 = v83;
      v87 = *v412;
      do
      {
        for (i = 0; i != v86; ++i)
        {
          if (*v412 != v87)
          {
            objc_enumerationMutation(v81);
          }

          v89 = *(*(&v411 + 1) + 8 * i);
          if (objc_msgSend_hasEncryptedFullTokenInfo(v89, v84, v85, v391) && objc_msgSend_participantIdsCount(v89, v84, v85))
          {
            v90 = objc_alloc(MEMORY[0x277CBC2E8]);
            v93 = objc_msgSend_encryptedFullTokenInfo(v89, v91, v92);
            v95 = objc_msgSend_initWithEncryptedData_(v90, v94, v93);

            v96 = objc_alloc(MEMORY[0x277CBC4E0]);
            v99 = objc_msgSend_participantIds(v89, v97, v98);
            v102 = objc_msgSend_firstObject(v99, v100, v101);
            v104 = objc_msgSend_initWithEncryptedOneTimeFullToken_participantID_(v96, v103, v95, v102);

            v107 = objc_msgSend_participantIds(v89, v105, v106);
            v110 = objc_msgSend_firstObject(v107, v108, v109);
            objc_msgSend_setObject_forKeyedSubscript_(v75, v111, v104, v110);
          }
        }

        v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v84, &v411, v420, 16);
      }

      while (v86);
    }

    if (objc_msgSend_count(v75, v112, v113))
    {
      objc_msgSend_setOneTimeURLMetadatasByParticipantID_(v392, v114, v75);
      v409 = 0u;
      v410 = 0u;
      v407 = 0u;
      v408 = 0u;
      v117 = objc_msgSend_allParticipants(v392, v115, v116);
      v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v118, &v407, v419, 16);
      if (v119)
      {
        v122 = v119;
        v123 = *v408;
        do
        {
          for (j = 0; j != v122; ++j)
          {
            if (*v408 != v123)
            {
              objc_enumerationMutation(v117);
            }

            v125 = *(*(&v407 + 1) + 8 * j);
            v126 = objc_msgSend_allKeys(v75, v120, v121, v391);
            v129 = objc_msgSend_participantID(v125, v127, v128);
            v131 = objc_msgSend_containsObject_(v126, v130, v129);

            if (v131)
            {
              objc_msgSend_setUsesOneTimeURL_(v125, v120, 1);
            }
          }

          v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v120, &v407, v419, 16);
        }

        while (v122);
      }
    }

    v14 = v394;
    v8 = v395;
    inited = v396;
    a5 = v391;
  }

  v132 = objc_msgSend_etag(v8, v73, v74, v391);
  objc_msgSend_setEtag_(inited, v133, v132);

  if (objc_msgSend_hasTimeStatistics(v8, v134, v135))
  {
    v138 = objc_msgSend_timeStatistics(v8, v136, v137);
    if (objc_msgSend_hasCreation(v138, v139, v140))
    {
      v143 = MEMORY[0x277CBEAA8];
      v144 = objc_msgSend_timeStatistics(v8, v141, v142);
      v147 = objc_msgSend_creation(v144, v145, v146);
      objc_msgSend_time(v147, v148, v149);
      v152 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v143, v150, v151);
      objc_msgSend_setCreationDate_(inited, v153, v152);
    }

    else
    {
      objc_msgSend_setCreationDate_(inited, v141, 0);
    }

    v156 = objc_msgSend_timeStatistics(v8, v154, v155);
    if (objc_msgSend_hasModification(v156, v157, v158))
    {
      v161 = MEMORY[0x277CBEAA8];
      v162 = objc_msgSend_timeStatistics(v8, v159, v160);
      v165 = objc_msgSend_modification(v162, v163, v164);
      objc_msgSend_time(v165, v166, v167);
      v170 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v161, v168, v169);
      objc_msgSend_setModificationDate_(inited, v171, v170);
    }

    else
    {
      objc_msgSend_setModificationDate_(inited, v159, 0);
    }
  }

  if (objc_msgSend_hasCreatedBy(v8, v136, v137))
  {
    v174 = objc_msgSend_createdBy(v8, v172, v173);
    v177 = objc_msgSend_name(v174, v175, v176);
    v179 = objc_msgSend_recordIDFromPUserName_error_(v398, v178, v177, 0);
    objc_msgSend_setCreatorUserRecordID_(inited, v180, v179);
  }

  if (objc_msgSend_hasModifiedBy(v8, v172, v173))
  {
    v183 = objc_msgSend_modifiedBy(v8, v181, v182);
    v186 = objc_msgSend_name(v183, v184, v185);
    v188 = objc_msgSend_recordIDFromPUserName_error_(v398, v187, v186, 0);
    objc_msgSend_setLastModifiedUserRecordID_(inited, v189, v188);
  }

  if (objc_msgSend_hasModifiedByDevice(v8, v181, v182))
  {
    v192 = objc_msgSend_modifiedByDevice(v8, v190, v191);
    objc_msgSend_setModifiedByDevice_(inited, v193, v192);
  }

  if (objc_msgSend_hasExpirationTime(v8, v190, v191))
  {
    v196 = MEMORY[0x277CBEAA8];
    v197 = objc_msgSend_expirationTime(v8, v194, v195);
    objc_msgSend_time(v197, v198, v199);
    v202 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v196, v200, v201);
    objc_msgSend_setExpirationDate_(inited, v203, v202);
  }

  if (objc_msgSend_hasExpired(v8, v194, v195))
  {
    v206 = objc_msgSend_expired(v8, v204, v205);
    objc_msgSend_setExpired_(inited, v207, v206);
  }

  if (objc_msgSend_hasProtectionInfo(v8, v204, v205))
  {
    v210 = objc_msgSend_protectionInfo(v8, v208, v209);
    v213 = objc_msgSend_protectionInfo(v210, v211, v212);
    v216 = objc_msgSend_length(v213, v214, v215);

    if (v216)
    {
      v217 = objc_msgSend_protectionInfo(v8, v208, v209);
      v220 = objc_msgSend_protectionInfo(v217, v218, v219);
      objc_msgSend_setProtectionData_(inited, v221, v220);

      v224 = objc_msgSend_protectionInfo(v8, v222, v223);
      v227 = objc_msgSend_protectionInfoTag(v224, v225, v226);
      objc_msgSend_setProtectionEtag_(inited, v228, v227);
    }
  }

  if (objc_msgSend_hasZoneishPrimaryKeyId(v8, v208, v209))
  {
    v231 = objc_msgSend_zoneishPrimaryKeyId(v8, v229, v230);
    objc_msgSend_setZoneishKeyID_(inited, v232, v231);
  }

  objc_msgSend_setTrackChanges_(inited, v229, 0);
  if (!objc_msgSend_hasShareId(v8, v233, v234))
  {
    goto LABEL_65;
  }

  v237 = objc_msgSend_type(v8, v235, v236);
  v240 = objc_msgSend_name(v237, v238, v239);
  v242 = objc_msgSend_isEqualToString_(v240, v241, v393);

  if (v242)
  {
    goto LABEL_65;
  }

  v243 = objc_msgSend_shareId(v8, v235, v236);
  v245 = objc_msgSend_recordIDFromPShareIdentifier_asAnonymousCKUserID_error_(v398, v244, v243, v397, a5);

  if (v245)
  {
    v246 = objc_alloc(MEMORY[0x277CBC620]);
    v248 = objc_msgSend_initWithRecordID_action_(v246, v247, v245, 0);
    objc_msgSend_setShare_(inited, v249, v248);

    v252 = objc_msgSend_share(inited, v250, v251);

    if (v252)
    {

LABEL_65:
      if (!objc_msgSend_hasChainParent(v8, v235, v236))
      {
LABEL_72:
        v279 = objc_msgSend_tombstonedPublicKeyIDs(v8, v253, v254);
        objc_msgSend_setTombstonedPublicKeyIDs_(inited, v280, v279);

        if (objc_msgSend_hasChainPrivateKey(v8, v281, v282))
        {
          v285 = objc_alloc(MEMORY[0x277CBC2E8]);
          v288 = objc_msgSend_chainPrivateKey(v8, v286, v287);
          v290 = objc_msgSend_initWithEncryptedData_(v285, v289, v288);
          objc_msgSend_setChainPrivateKey_(inited, v291, v290);
        }

        if (objc_msgSend_hasChainProtectionInfo(v8, v283, v284))
        {
          v294 = objc_msgSend_chainProtectionInfo(v8, v292, v293);
          v297 = objc_msgSend_protectionInfo(v294, v295, v296);
          objc_msgSend_setChainProtectionInfo_(inited, v298, v297);
        }

        v405 = 0u;
        v406 = 0u;
        v403 = 0u;
        v404 = 0u;
        v299 = objc_msgSend_fields(v8, v292, v293);
        v301 = objc_msgSend_countByEnumeratingWithState_objects_count_(v299, v300, &v403, v416, 16);
        if (v301)
        {
          v304 = v301;
          v305 = *v404;
          do
          {
            for (k = 0; k != v304; ++k)
            {
              if (*v404 != v305)
              {
                objc_enumerationMutation(v299);
              }

              v307 = *(*(&v403 + 1) + 8 * k);
              v308 = objc_msgSend_identifier(v307, v302, v303);
              v311 = objc_msgSend_name(v308, v309, v310);
              hasPrefix = objc_msgSend_hasPrefix_(v311, v312, @"_");

              if ((hasPrefix & 1) == 0)
              {
                v314 = objc_msgSend_identifier(v307, v302, v303);
                v317 = objc_msgSend_name(v314, v315, v316);

                v319 = objc_msgSend_objectRepresentationFromField_inRecord_asAnonymousCKUserID_(v398, v318, v307, v8, v397);
                if ((objc_msgSend_objectIsAnEncryptedType_(v398, v320, v319) & 1) != 0 || objc_msgSend__valueTypeIsAnEncryptedBytesTypeForField_(v398, v321, v307))
                {
                  v323 = objc_msgSend_encryptedValueStore(v396, v321, v322);
                }

                else
                {
                  v323 = objc_msgSend_valueStore(v396, v321, v322);
                }

                v325 = v323;
                objc_msgSend_setObjectNoValidate_forKey_(v323, v324, v319, v317);

                v8 = v395;
              }
            }

            v304 = objc_msgSend_countByEnumeratingWithState_objects_count_(v299, v302, &v403, v416, 16);
          }

          while (v304);
        }

        inited = v396;
        objc_msgSend_setTrackChanges_(v396, v326, 1);
        if (objc_msgSend_pluginFieldsCount(v8, v327, v328))
        {
          v331 = objc_alloc(MEMORY[0x277CBEB38]);
          v334 = objc_msgSend_pluginFieldsCount(v8, v332, v333);
          v336 = objc_msgSend_initWithCapacity_(v331, v335, v334);
          v399 = 0u;
          v400 = 0u;
          v401 = 0u;
          v402 = 0u;
          v339 = objc_msgSend_pluginFields(v8, v337, v338);
          v341 = objc_msgSend_countByEnumeratingWithState_objects_count_(v339, v340, &v399, v415, 16);
          if (v341)
          {
            v344 = v341;
            v345 = *v400;
            do
            {
              for (m = 0; m != v344; ++m)
              {
                if (*v400 != v345)
                {
                  objc_enumerationMutation(v339);
                }

                v347 = *(*(&v399 + 1) + 8 * m);
                v348 = objc_msgSend_value(v347, v342, v343);
                v350 = objc_msgSend_objectRepresentationFromFieldValue_(v398, v349, v348);
                v353 = objc_msgSend_identifier(v347, v351, v352);
                v356 = objc_msgSend_name(v353, v354, v355);
                objc_msgSend_setObject_forKeyedSubscript_(v336, v357, v350, v356);
              }

              v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v339, v342, &v399, v415, 16);
            }

            while (v344);
          }

          inited = v396;
          objc_msgSend_setPluginFields_(v396, v358, v336);
        }

        v359 = objc_msgSend_conflictLoserEtags(v8, v329, v330);
        objc_msgSend_setConflictLoserEtags_(inited, v360, v359);

        objc_msgSend_setKnownToServer_(inited, v361, 1);
        if (objc_msgSend_hasPermission(v8, v362, v363))
        {
          if (objc_msgSend_permission(v8, v364, v365) == 1)
          {
            v366 = 2;
          }

          else
          {
            v366 = 1;
          }
        }

        else
        {
          v366 = 0;
        }

        v14 = v394;
        objc_msgSend_setPermission_(inited, v364, v366);
        if (objc_msgSend_hasProtectionInfoKeysToRemove(v8, v367, v368))
        {
          v371 = objc_msgSend_protectionInfoKeysToRemove(v8, v369, v370);
          v373 = objc_msgSend_pcsKeysToRemoveFromPProtectionInfoKeysToRemove_(v398, v372, v371);
          objc_msgSend_setPcsKeysToRemove_(inited, v374, v373);
        }

        v28 = inited;
        goto LABEL_121;
      }

      v245 = objc_msgSend_chainParent(v8, v253, v254);
      if (!objc_msgSend_hasReference(v245, v255, v256))
      {
LABEL_69:
        if (objc_msgSend_hasPublicKeyID(v245, v257, v258))
        {
          v277 = objc_msgSend_publicKeyID(v245, v275, v276);
          objc_msgSend_setChainParentPublicKeyID_(inited, v278, v277);
        }

        goto LABEL_72;
      }

      v259 = objc_msgSend_chainParent(v8, v257, v258);
      v262 = objc_msgSend_reference(v259, v260, v261);
      v265 = objc_msgSend_recordIdentifier(v262, v263, v264);
      v267 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(v398, v266, v265, v397, a5);

      v268 = objc_alloc(MEMORY[0x277CBC620]);
      v270 = objc_msgSend_initWithRecordID_action_(v268, v269, v267, 0);
      objc_msgSend_setParent_(inited, v271, v270);

      v274 = objc_msgSend_parent(inited, v272, v273);

      if (v274)
      {

        goto LABEL_69;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v380 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v384 = v380;
        v387 = objc_msgSend_chainParent(v8, v385, v386);
        v390 = objc_msgSend_reference(v387, v388, v389);
        *buf = 138543362;
        v418 = v390;
        _os_log_debug_impl(&dword_22506F000, v384, OS_LOG_TYPE_DEBUG, "Couldn't convert parent record ID: %{public}@", buf, 0xCu);
      }

      goto LABEL_119;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v381 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v418 = v245;
      _os_log_debug_impl(&dword_22506F000, v381, OS_LOG_TYPE_DEBUG, "Couldn't create a share reference for share %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v375 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v376 = v375;
      v379 = objc_msgSend_shareId(v8, v377, v378);
      *buf = 138543362;
      v418 = v379;
      _os_log_debug_impl(&dword_22506F000, v376, OS_LOG_TYPE_DEBUG, "Couldn't convert share ID for record: %{public}@", buf, 0xCu);
    }
  }

LABEL_119:

LABEL_120:
  v28 = 0;
LABEL_121:

LABEL_122:
  v382 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)dateFromPDate:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  objc_msgSend_time(a3, a2, a3);

  return objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v3, v4, v5);
}

- (id)pProtectionInfoKeysToRemoveFromPCSKeysToRemove:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v7 = objc_msgSend_etag(v3, v5, v6);
  objc_msgSend_setProtectionInfoTag_(v4, v8, v7);

  v9 = MEMORY[0x277CBEB18];
  v12 = objc_msgSend_keys(v3, v10, v11);
  v15 = objc_msgSend_count(v12, v13, v14);
  v17 = objc_msgSend_arrayWithCapacity_(v9, v16, v15);
  objc_msgSend_setKeysToRemoves_(v4, v18, v17);

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v21 = objc_msgSend_keys(v3, v19, v20, 0);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v43, v47, 16);
  if (v23)
  {
    v24 = v23;
    v25 = *v44;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v43 + 1) + 8 * i);
        v28 = objc_opt_new();
        v31 = objc_msgSend_pcsKeyID(v27, v29, v30);
        objc_msgSend_setKeyId_(v28, v32, v31);

        v35 = objc_msgSend_keyType(v27, v33, v34);
        if ((v35 - 1) <= 2)
        {
          objc_msgSend_setKeyType_(v28, v36, v35);
        }

        v38 = objc_msgSend_keysToRemoves(v4, v36, v37);
        objc_msgSend_addObject_(v38, v39, v28);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v40, &v43, v47, 16);
    }

    while (v24);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)pcsKeysToRemoveFromPProtectionInfoKeysToRemove:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (objc_msgSend_hasProtectionInfoTag(v3, v4, v5))
  {
    v8 = objc_msgSend_protectionInfoTag(v3, v6, v7);
  }

  else
  {
    v8 = objc_opt_new();
  }

  v47 = v8;
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_keysToRemovesCount(v3, v10, v11);
  v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v48 = v3;
  v17 = objc_msgSend_keysToRemoves(v3, v15, v16);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v49, v55, 16);
  if (v19)
  {
    v22 = v19;
    v23 = *v50;
    v24 = MEMORY[0x277CBC880];
    v25 = MEMORY[0x277CBC830];
    do
    {
      v26 = 0;
      do
      {
        if (*v50 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v27 = *(*(&v49 + 1) + 8 * v26);
        if (objc_msgSend_hasKeyId(v27, v20, v21, v47) && objc_msgSend_hasKeyType(v27, v28, v29))
        {
          v32 = objc_msgSend_keyType(v27, v30, v31) - 1;
          if (v32 < 3)
          {
            v33 = v32 + 1;
          }

          else
          {
            v33 = 0;
          }

          v34 = objc_alloc(MEMORY[0x277CBC528]);
          v37 = objc_msgSend_keyId(v27, v35, v36);
          v39 = objc_msgSend_initWithKeyID_keyType_(v34, v38, v37, v33);

          objc_msgSend_addObject_(v14, v40, v39);
        }

        else
        {
          if (*v24 != -1)
          {
            dispatch_once(v24, *MEMORY[0x277CBC878]);
          }

          v41 = *v25;
          if (os_log_type_enabled(*v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v54 = v27;
            _os_log_impl(&dword_22506F000, v41, OS_LOG_TYPE_INFO, "Warn: Ignoring PCS key to remove because key type and/or key ID is not specified: %{public}@", buf, 0xCu);
          }
        }

        ++v26;
      }

      while (v22 != v26);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v49, v55, 16);
    }

    while (v22);
  }

  v42 = objc_alloc(MEMORY[0x277CBC530]);
  v44 = objc_msgSend_initWithEtag_keys_(v42, v43, v47, v14);

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

- (BOOL)_valueTypeIsAnEncryptedBytesTypeForField:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_value(v3, v4, v5);
  if (objc_msgSend_type(v6, v7, v8) == 20)
  {
    v11 = 1;
  }

  else
  {
    v12 = objc_msgSend_value(v3, v9, v10);
    v11 = objc_msgSend_type(v12, v13, v14) == 21;
  }

  return v11;
}

- (id)pDateFromDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_msgSend_timeIntervalSinceReferenceDate(v3, v5, v6);
  v8 = v7;

  objc_msgSend_setTime_(v4, v9, v10, v8);

  return v4;
}

- (id)_pRecordFromRecordSansValues:(id)a3 forCache:(BOOL)a4
{
  v4 = a4;
  v349 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v10 = objc_msgSend_etag(v6, v8, v9);
  objc_msgSend_setEtag_(v7, v11, v10);

  v14 = objc_msgSend_recordID(v6, v12, v13);
  v16 = objc_msgSend_pRecordIdentifierFromRecordID_(self, v15, v14);
  objc_msgSend_setRecordIdentifier_(v7, v17, v16);

  v18 = objc_opt_new();
  objc_msgSend_setType_(v7, v19, v18);

  v22 = objc_msgSend_recordType(v6, v20, v21);
  v25 = objc_msgSend_type(v7, v23, v24);
  objc_msgSend_setName_(v25, v26, v22);

  v29 = objc_msgSend_conflictLoserEtags(v6, v27, v28);
  v32 = objc_msgSend_mutableCopy(v29, v30, v31);
  objc_msgSend_setConflictLoserEtags_(v7, v33, v32);

  if (!v4)
  {
    goto LABEL_19;
  }

  v36 = objc_msgSend_creationDate(v6, v34, v35);
  if (v36)
  {

LABEL_5:
    v42 = objc_opt_new();
    objc_msgSend_setTimeStatistics_(v7, v43, v42);

    goto LABEL_6;
  }

  v39 = objc_msgSend_modificationDate(v6, v37, v38);

  if (v39)
  {
    goto LABEL_5;
  }

LABEL_6:
  v44 = objc_msgSend_creationDate(v6, v40, v41);

  if (v44)
  {
    v47 = objc_msgSend_creationDate(v6, v45, v46);
    v49 = objc_msgSend_pDateFromDate_(self, v48, v47);
    v52 = objc_msgSend_timeStatistics(v7, v50, v51);
    objc_msgSend_setCreation_(v52, v53, v49);
  }

  v54 = objc_msgSend_modificationDate(v6, v45, v46);

  if (v54)
  {
    v57 = objc_msgSend_modificationDate(v6, v55, v56);
    v59 = objc_msgSend_pDateFromDate_(self, v58, v57);
    v62 = objc_msgSend_timeStatistics(v7, v60, v61);
    objc_msgSend_setModification_(v62, v63, v59);
  }

  v64 = objc_msgSend_creatorUserRecordID(v6, v55, v56);

  if (v64)
  {
    v67 = objc_msgSend_creatorUserRecordID(v6, v65, v66);
    v69 = objc_msgSend_pIdentifierFromUserRecordID_(self, v68, v67);
    objc_msgSend_setCreatedBy_(v7, v70, v69);
  }

  v71 = objc_msgSend_lastModifiedUserRecordID(v6, v65, v66);

  if (v71)
  {
    v74 = objc_msgSend_lastModifiedUserRecordID(v6, v72, v73);
    v76 = objc_msgSend_pIdentifierFromUserRecordID_(self, v75, v74);
    objc_msgSend_setModifiedBy_(v7, v77, v76);
  }

  v78 = objc_msgSend_modifiedByDevice(v6, v72, v73);

  if (v78)
  {
    v81 = objc_msgSend_modifiedByDevice(v6, v79, v80);
    objc_msgSend_setModifiedByDevice_(v7, v82, v81);
  }

  v83 = objc_msgSend_expirationDate(v6, v79, v80);

  if (v83)
  {
    v86 = objc_msgSend_expirationDate(v6, v84, v85);
    v88 = objc_msgSend_pDateFromDate_(self, v87, v86);
    objc_msgSend_setExpirationTime_(v7, v89, v88);
  }

  isExpired = objc_msgSend_isExpired(v6, v84, v85);
  objc_msgSend_setExpired_(v7, v91, isExpired);
LABEL_19:
  v92 = objc_msgSend_protectionData(v6, v34, v35);

  if (v92)
  {
    v95 = objc_opt_new();
    objc_msgSend_setProtectionInfo_(v7, v96, v95);

    v99 = objc_msgSend_protectionData(v6, v97, v98);
    v102 = objc_msgSend_protectionInfo(v7, v100, v101);
    objc_msgSend_setProtectionInfo_(v102, v103, v99);

    v106 = objc_msgSend_protectionEtag(v6, v104, v105);
    v109 = objc_msgSend_protectionInfo(v7, v107, v108);
    objc_msgSend_setProtectionInfoTag_(v109, v110, v106);
  }

  v111 = objc_msgSend_zoneishKeyID(v6, v93, v94);

  if (v111)
  {
    v114 = objc_msgSend_zoneishKeyID(v6, v112, v113);
    objc_msgSend_setZoneishPrimaryKeyId_(v7, v115, v114);

    objc_msgSend_setProtectionInfo_(v7, v116, 0);
  }

  v117 = objc_msgSend_share(v6, v112, v113);

  if (v117)
  {
    v120 = objc_msgSend_share(v6, v118, v119);
    v123 = objc_msgSend_recordID(v120, v121, v122);
    v125 = objc_msgSend_pShareIdentifierFromRecordID_(self, v124, v123);
    objc_msgSend_setShareId_(v7, v126, v125);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v129 = v6;
    v132 = objc_msgSend_currentUserParticipant(v129, v130, v131);
    v135 = v132;
    if (v4)
    {
      v136 = objc_msgSend_pShareFromShare_forCache_(self, v133, v129, 1);
      objc_msgSend_setShareInfo_(v7, v137, v136);
    }

    else
    {
      if (objc_msgSend_role(v132, v133, v134) == 1 || objc_msgSend_role(v135, v140, v141) == 2)
      {
        v143 = objc_msgSend_pShareFromShare_forCache_(self, v140, v129, 0);
        objc_msgSend_setShareInfo_(v7, v144, v143);
      }

      v145 = objc_msgSend_oneTimeURLMetadatasByParticipantID(v129, v140, v142);
      v148 = objc_msgSend_count(v145, v146, v147);

      if (!v148)
      {
        goto LABEL_42;
      }
    }

    v335 = self;
    v336 = v4;
    v337 = v6;
    if ((objc_msgSend_hasOneTimeStableUrlInfo(v7, v138, v139) & 1) == 0)
    {
      v149 = objc_opt_new();
      objc_msgSend_setOneTimeStableUrlInfo_(v7, v150, v149);
    }

    v334 = v135;
    v338 = v7;
    v151 = objc_opt_new();
    v341 = 0u;
    v342 = 0u;
    v343 = 0u;
    v344 = 0u;
    obj = objc_msgSend_oneTimeURLMetadatasByParticipantID(v129, v152, v153);
    v155 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v154, &v341, v348, 16);
    if (v155)
    {
      v158 = v155;
      v159 = *v342;
      do
      {
        for (i = 0; i != v158; ++i)
        {
          if (*v342 != v159)
          {
            objc_enumerationMutation(obj);
          }

          v161 = *(*(&v341 + 1) + 8 * i);
          v162 = objc_msgSend_oneTimeURLMetadatasByParticipantID(v129, v156, v157);
          v164 = objc_msgSend_objectForKeyedSubscript_(v162, v163, v161);

          v165 = objc_opt_new();
          v168 = objc_msgSend_encryptedOneTimeFullToken(v164, v166, v167);
          v171 = objc_msgSend_encryptedData(v168, v169, v170);
          objc_msgSend_setEncryptedFullTokenInfo_(v165, v172, v171);

          v175 = objc_msgSend_participantID(v164, v173, v174);
          v347 = v175;
          v177 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v176, &v347, 1);
          v180 = objc_msgSend_mutableCopy(v177, v178, v179);
          objc_msgSend_setParticipantIds_(v165, v181, v180);

          v184 = objc_msgSend_encryptedOneTimeFullTokenData(v164, v182, v183);
          objc_msgSend_setProtectedFullToken_(v165, v185, v184);

          v188 = objc_msgSend_oneTimeShortSharingTokenHashData(v164, v186, v187);
          objc_msgSend_setShortTokenHash_(v165, v189, v188);

          objc_msgSend_addObject_(v151, v190, v165);
        }

        v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v156, &v341, v348, 16);
      }

      while (v158);
    }

    v7 = v338;
    v193 = objc_msgSend_oneTimeStableUrlInfo(v338, v191, v192);
    objc_msgSend_setOneTimeUrls_(v193, v194, v151);

    v6 = v337;
    v4 = v336;
    v135 = v334;
    self = v335;
LABEL_42:
  }

  v195 = objc_msgSend_chainPrivateKey(v6, v127, v128);
  v198 = objc_msgSend_encryptedData(v195, v196, v197);

  if (v198)
  {
    v201 = objc_msgSend_chainPrivateKey(v6, v199, v200);
    v204 = objc_msgSend_encryptedData(v201, v202, v203);
    objc_msgSend_setChainPrivateKey_(v7, v205, v204);
  }

  v206 = objc_msgSend_chainProtectionInfo(v6, v199, v200);

  if (v206)
  {
    v209 = objc_opt_new();
    objc_msgSend_setChainProtectionInfo_(v7, v210, v209);

    v213 = objc_msgSend_chainProtectionInfo(v6, v211, v212);
    v216 = objc_msgSend_chainProtectionInfo(v7, v214, v215);
    objc_msgSend_setProtectionInfo_(v216, v217, v213);
  }

  if ((objc_msgSend_hasUpdatedParent(v6, v207, v208) & 1) != 0 || v4)
  {
    v220 = objc_opt_new();
    objc_msgSend_setChainParent_(v7, v221, v220);

    v224 = objc_msgSend_parent(v6, v222, v223);

    if (v224)
    {
      if (objc_msgSend_dontCreateValidatingParentReferences(self, v218, v219))
      {
        v225 = 0;
      }

      else
      {
        v225 = *MEMORY[0x277CBC070];
      }

      v226 = objc_alloc(MEMORY[0x277CBC620]);
      v229 = objc_msgSend_parent(v6, v227, v228);
      v232 = objc_msgSend_recordID(v229, v230, v231);
      v234 = objc_msgSend_initWithRecordID_action_(v226, v233, v232, v225);

      v340 = 0;
      v236 = objc_msgSend_pReferenceFromReference_error_(self, v235, v234, &v340);
      v237 = v340;
      v240 = objc_msgSend_chainParent(v7, v238, v239);
      objc_msgSend_setReference_(v240, v241, v236);

      v244 = objc_msgSend_chainParent(v7, v242, v243);
      v247 = objc_msgSend_reference(v244, v245, v246);

      if (!v247 || v237)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v250 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v251 = v250;
          v254 = objc_msgSend_recordID(v6, v252, v253);
          *buf = 138543362;
          v346 = v254;
          _os_log_impl(&dword_22506F000, v251, OS_LOG_TYPE_INFO, "Warn: Couldn't create a parent reference for record %{public}@", buf, 0xCu);
        }
      }

      v255 = objc_msgSend_chainParentPublicKeyID(v6, v248, v249);

      if (v255)
      {
        v258 = objc_msgSend_chainParentPublicKeyID(v6, v256, v257);
        v261 = objc_msgSend_chainParent(v7, v259, v260);
        objc_msgSend_setPublicKeyID_(v261, v262, v258);
      }
    }
  }

  if (v4)
  {
    v263 = objc_msgSend_tombstonedPublicKeyIDs(v6, v218, v219);
    v266 = objc_msgSend_mutableCopy(v263, v264, v265);
    objc_msgSend_setTombstonedPublicKeyIDs_(v7, v267, v266);
  }

  if (objc_msgSend_hasUpdatedExpirationTimeInterval(v6, v218, v219))
  {
    v270 = objc_opt_new();
    objc_msgSend_setStorageExpiration_(v7, v271, v270);

    v274 = objc_msgSend_updatedExpirationTimeInterval(v6, v272, v273);

    v277 = objc_msgSend_storageExpiration(v7, v275, v276);
    v279 = v277;
    if (v274)
    {
      objc_msgSend_setOperationType_(v277, v278, 2);

      v279 = objc_msgSend_updatedExpirationTimeInterval(v6, v280, v281);
      v284 = objc_msgSend_unsignedLongLongValue(v279, v282, v283);
      v287 = objc_msgSend_storageExpiration(v7, v285, v286);
      objc_msgSend_setDuration_(v287, v288, v284);
    }

    else
    {
      objc_msgSend_setOperationType_(v277, v278, 1);
    }
  }

  if (v4 || objc_msgSend_canHostServerURLInfo(v6, v268, v269) && (objc_msgSend_shortSharingTokenHashData(v6, v289, v290), v291 = objc_claimAutoreleasedReturnValue(), v291, v291))
  {
    if ((objc_msgSend_hasStableUrl(v7, v268, v269) & 1) == 0)
    {
      v294 = objc_opt_new();
      objc_msgSend_setStableUrl_(v7, v295, v294);
    }

    v296 = objc_msgSend_mutableEncryptedPSK(v6, v292, v293);
    v299 = objc_msgSend_encryptedData(v296, v297, v298);
    v302 = objc_msgSend_stableUrl(v7, v300, v301);
    objc_msgSend_setEncryptedPublicSharingKey_(v302, v303, v299);

    v306 = objc_msgSend_encryptedFullTokenData(v6, v304, v305);
    v309 = objc_msgSend_stableUrl(v7, v307, v308);
    objc_msgSend_setProtectedFullToken_(v309, v310, v306);

    v313 = objc_msgSend_routingKey(v6, v311, v312);
    v316 = objc_msgSend_stableUrl(v7, v314, v315);
    objc_msgSend_setRoutingKey_(v316, v317, v313);

    v320 = objc_msgSend_shortSharingTokenHashData(v6, v318, v319);
    v323 = objc_msgSend_stableUrl(v7, v321, v322);
    objc_msgSend_setShortTokenHash_(v323, v324, v320);

    v327 = objc_msgSend_displayedHostname(v6, v325, v326);
    v330 = objc_msgSend_stableUrl(v7, v328, v329);
    objc_msgSend_setDisplayedHostname_(v330, v331, v327);
  }

  v332 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)deltaPRecordFromRecord:(id)a3 withAllFields:(BOOL)a4 outDeletedMergeFields:(id *)a5 outKeysToSend:(id *)a6
{
  v127 = a5;
  v6 = a4;
  v150 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v133 = objc_opt_new();
  v134 = objc_msgSend__pRecordFromRecordSansValues_forCache_(self, v9, v8, 0);
  v12 = objc_msgSend_valueStore(v8, v10, v11);
  obj = objc_msgSend_changedKeys(v12, v13, v14);

  v17 = objc_msgSend_encryptedValueStore(v8, v15, v16);
  v129 = objc_msgSend_changedKeys(v17, v18, v19);

  if (v6)
  {
    v21 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB58], v20, obj);
    v24 = v21;
    if (v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = objc_msgSend_set(MEMORY[0x277CBEB58], v22, v23);
    }

    v27 = v25;

    v30 = objc_msgSend_valueStore(v8, v28, v29);
    v33 = objc_msgSend_allKeys(v30, v31, v32);
    v35 = v33;
    v36 = MEMORY[0x277CBEBF8];
    if (v33)
    {
      objc_msgSend_addObjectsFromArray_(v27, v34, v33, v127);
    }

    else
    {
      objc_msgSend_addObjectsFromArray_(v27, v34, MEMORY[0x277CBEBF8], v127);
    }

    v26 = objc_msgSend_allObjects(v27, v37, v38);

    v40 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB58], v39, v129);
    v43 = v40;
    if (v40)
    {
      v44 = v40;
    }

    else
    {
      v44 = objc_msgSend_set(MEMORY[0x277CBEB58], v41, v42);
    }

    v45 = v44;

    v48 = objc_msgSend_encryptedValueStore(v8, v46, v47);
    v51 = objc_msgSend_allKeys(v48, v49, v50);
    v53 = v51;
    if (v51)
    {
      objc_msgSend_addObjectsFromArray_(v45, v52, v51);
    }

    else
    {
      objc_msgSend_addObjectsFromArray_(v45, v52, v36);
    }

    v56 = objc_msgSend_allObjects(v45, v54, v55);

    v129 = v56;
  }

  else
  {
    v26 = obj;
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  obja = v26;
  v58 = 0;
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v57, &v143, v149, 16);
  if (v61)
  {
    v62 = *v144;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v144 != v62)
        {
          objc_enumerationMutation(obja);
        }

        v64 = *(*(&v143 + 1) + 8 * i);
        v65 = objc_msgSend_valueStore(v8, v59, v60, v127);
        v67 = objc_msgSend_rawValueForKey_(v65, v66, v64);

        if (v67)
        {
          v69 = objc_msgSend_pFieldWithKey_value_forCache_(self, v68, v64, v67, 0);
          v72 = objc_msgSend_actions(v69, v70, v71);
          if (objc_msgSend_count(v72, v73, v74))
          {
            v75 = v58 == 0;
          }

          else
          {
            v75 = 0;
          }

          v76 = v75;

          if (v76)
          {
            v58 = objc_opt_new();
          }

          sub_2250A0728(v134, v69, v58);
        }

        else
        {
          v69 = objc_opt_new();
          objc_msgSend_setName_(v69, v77, v64);
          objc_msgSend_addObject_(v133, v78, v69);
        }
      }

      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v59, &v143, v149, 16);
    }

    while (v61);
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v130 = v129;
  v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v79, &v139, v148, 16);
  if (v82)
  {
    v83 = *v140;
    do
    {
      for (j = 0; j != v82; ++j)
      {
        if (*v140 != v83)
        {
          objc_enumerationMutation(v130);
        }

        v85 = *(*(&v139 + 1) + 8 * j);
        v86 = objc_msgSend_encryptedValueStore(v8, v80, v81, v127);
        v88 = objc_msgSend_rawValueForKey_(v86, v87, v85);

        if (v88)
        {
          v90 = objc_msgSend_pFieldWithKey_value_forCache_(self, v89, v85, v88, 0);
          v93 = objc_msgSend_actions(v90, v91, v92);
          if (objc_msgSend_count(v93, v94, v95))
          {
            v96 = v58 == 0;
          }

          else
          {
            v96 = 0;
          }

          v97 = v96;

          if (v97)
          {
            v58 = objc_opt_new();
          }

          sub_2250A0728(v134, v90, v58);
        }

        else
        {
          v90 = objc_opt_new();
          objc_msgSend_setName_(v90, v98, v85);
          objc_msgSend_addObject_(v133, v99, v90);
        }
      }

      v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v80, &v139, v148, 16);
    }

    while (v82);
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v102 = objc_msgSend_pluginFields(v8, v100, v101);
  v105 = objc_msgSend_allKeys(v102, v103, v104);

  v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v106, &v135, v147, 16);
  if (v109)
  {
    v110 = *v136;
    do
    {
      for (k = 0; k != v109; ++k)
      {
        if (*v136 != v110)
        {
          objc_enumerationMutation(v105);
        }

        v112 = *(*(&v135 + 1) + 8 * k);
        v113 = objc_msgSend_pluginFields(v8, v107, v108, v127);
        v115 = objc_msgSend_objectForKeyedSubscript_(v113, v114, v112);

        v117 = objc_msgSend_pFieldWithKey_value_forCache_(self, v116, v112, v115, 0);
        objc_msgSend_addPluginFields_(v134, v118, v117);
      }

      v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v107, &v135, v147, 16);
    }

    while (v109);
  }

  if (v127 && objc_msgSend_count(v133, v119, v120))
  {
    v121 = v133;
    *v127 = v133;
  }

  if (a6)
  {
    v122 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB58], v119, obja);
    objc_msgSend_addObjectsFromArray_(v122, v123, v130);
    v124 = v122;
    *a6 = v122;
  }

  v125 = *MEMORY[0x277D85DE8];

  return v134;
}

- (id)assetFromPAsset:(id)a3 field:(id)a4 error:(id *)a5
{
  v127 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc(MEMORY[0x277CBC190]);
  inited = objc_msgSend_initInternal(v9, v10, v11);
  v15 = objc_msgSend_signature(v7, v13, v14);
  objc_msgSend_setSignature_(inited, v16, v15);

  v19 = objc_msgSend_size(v7, v17, v18);
  objc_msgSend_setPaddedFileSize_(inited, v20, v19);
  v23 = objc_msgSend_size(v7, v21, v22);
  objc_msgSend_setSize_(inited, v24, v23);
  v25 = MEMORY[0x277CBEBC0];
  v28 = objc_msgSend_contentBaseURL(v7, v26, v27);
  v30 = objc_msgSend_URLWithString_(v25, v29, v28);
  objc_msgSend_setContentBaseURL_(inited, v31, v30);

  v34 = objc_msgSend_owner(v7, v32, v33);
  objc_msgSend_setOwner_(inited, v35, v34);

  v38 = objc_msgSend_requestor(v7, v36, v37);
  objc_msgSend_setRequestor_(inited, v39, v38);

  v42 = objc_msgSend_downloadToken(v7, v40, v41);
  objc_msgSend_setAuthToken_(inited, v43, v42);

  if (objc_msgSend_hasAssetAuthorizationResponseUUID(v7, v44, v45) && objc_msgSend_haveDownloadPreauthorizations(self, v46, v47))
  {
    v48 = objc_msgSend_assetAuthorizationResponseUUID(v7, v46, v47);
    v50 = objc_msgSend_downloadPreauthorizationForResponseUUID_(self, v49, v48);

    if (v50)
    {
      objc_msgSend_setDownloadPreauthorization_(inited, v51, v50);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v52 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v121 = v52;
        v124 = objc_msgSend_assetAuthorizationResponseUUID(v7, v122, v123);
        v125 = 138543362;
        v126 = v124;
        _os_log_error_impl(&dword_22506F000, v121, OS_LOG_TYPE_ERROR, "Download Preauthorization For Response UUID %{public}@ Not Found", &v125, 0xCu);
      }
    }
  }

  v53 = objc_msgSend_uploadReceipt(v7, v46, v47);
  objc_msgSend_setUploadReceipt_(inited, v54, v53);

  if ((objc_msgSend_hasDownloadBaseURL(v7, v55, v56) & 1) != 0 || objc_msgSend_hasConstructedAssetDownloadURL(v7, v57, v58))
  {
    v59 = objc_msgSend_downloadBaseURL(v7, v57, v58);
    objc_msgSend_setDownloadBaseURL_(inited, v60, v59);

    v63 = objc_msgSend_constructedAssetDownloadURL(v7, v61, v62);
    objc_msgSend_setConstructedAssetDownloadURLTemplate_(inited, v64, v63);

    if (objc_msgSend_hasDownloadURLExpiration(v7, v65, v66))
    {
      v67 = MEMORY[0x277CBEAA8];
      v68 = objc_msgSend_downloadURLExpiration(v7, v57, v58);
      v71 = objc_msgSend_dateWithTimeIntervalSince1970_(v67, v69, v70, v68);
      objc_msgSend_setDownloadURLExpiration_(inited, v72, v71);
    }
  }

  if (objc_msgSend_hasConstructedAssetDownloadURL(v7, v57, v58))
  {
    v75 = objc_msgSend_constructedAssetDownloadURL(v7, v73, v74);
    objc_msgSend_setConstructedAssetDownloadURLTemplate_(inited, v76, v75);

    if (objc_msgSend_hasConstructedAssetDownloadEstimatedSize(v7, v77, v78))
    {
      v81 = objc_msgSend_constructedAssetDownloadEstimatedSize(v7, v79, v80);
    }

    else
    {
      v81 = objc_msgSend_size(v7, v79, v80);
    }

    objc_msgSend_setConstructedAssetEstimatedSize_(inited, v82, v81);
  }

  if (objc_msgSend_hasConstructedAssetDownloadParameters(v7, v73, v74))
  {
    v85 = objc_msgSend_constructedAssetDownloadParameters(v7, v83, v84);
    objc_msgSend_setConstructedAssetDownloadParameters_(inited, v86, v85);
  }

  v87 = objc_msgSend_referenceSignature(v7, v83, v84);
  objc_msgSend_setReferenceSignature_(inited, v88, v87);

  v91 = objc_msgSend_protectionInfo(v7, v89, v90);
  v94 = objc_msgSend_protectionInfo(v91, v92, v93);
  objc_msgSend_setWrappedAssetKey_(inited, v95, v94);

  if (objc_msgSend_hasClearAssetKey(v7, v96, v97))
  {
    v100 = objc_msgSend_clearAssetKey(v7, v98, v99);
    v103 = objc_msgSend_length(v100, v101, v102);

    if (v103)
    {
      v104 = objc_msgSend_clearAssetKey(v7, v98, v99);
      objc_msgSend_setClearAssetKey_(inited, v105, v104);

      v108 = objc_msgSend_clearAssetKey(inited, v106, v107);
      objc_msgSend_setAssetKey_(inited, v109, v108);
    }
  }

  if (objc_msgSend_hasDownloadTokenExpiration(v7, v98, v99))
  {
    v112 = objc_msgSend_downloadTokenExpiration(v7, v110, v111);
    objc_msgSend_setDownloadTokenExpiration_(inited, v113, v112);
  }

  v114 = objc_msgSend_identifier(v8, v110, v111);
  v117 = objc_msgSend_name(v114, v115, v116);
  objc_msgSend_setRecordKey_(inited, v118, v117);

  v119 = *MEMORY[0x277D85DE8];

  return inited;
}

- (id)pAssetFromAsset:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_record(v4, v5, v6);
  v8 = objc_opt_new();
  v11 = objc_msgSend_signature(v4, v9, v10);
  objc_msgSend_setSignature_(v8, v12, v11);

  v15 = objc_msgSend_paddedFileSize(v4, v13, v14);
  objc_msgSend_setSize_(v8, v16, v15);
  if (v7)
  {
    v19 = objc_msgSend_recordID(v7, v17, v18);
    v21 = objc_msgSend_pRecordIdentifierFromRecordID_(self, v20, v19);
    objc_msgSend_setRecordId_(v8, v22, v21);
  }

  v23 = objc_msgSend_uploadReceipt(v4, v17, v18);
  objc_msgSend_setUploadReceipt_(v8, v24, v23);

  v27 = objc_msgSend_wrappedAssetKey(v4, v25, v26);

  if (v27)
  {
    v30 = objc_opt_new();
    objc_msgSend_setProtectionInfo_(v8, v31, v30);

    v34 = objc_msgSend_wrappedAssetKey(v4, v32, v33);
    v37 = objc_msgSend_protectionInfo(v8, v35, v36);
    objc_msgSend_setProtectionInfo_(v37, v38, v34);
  }

  v39 = objc_msgSend_clearAssetKey(v4, v28, v29);

  if (v39)
  {
    v42 = objc_msgSend_clearAssetKey(v4, v40, v41);
    objc_msgSend_setClearAssetKey_(v8, v43, v42);
  }

  v44 = objc_msgSend_referenceSignature(v4, v40, v41);

  if (v44)
  {
    v47 = objc_msgSend_referenceSignature(v4, v45, v46);
    objc_msgSend_setReferenceSignature_(v8, v48, v47);
  }

  v49 = objc_msgSend_downloadPreauthorization(v4, v45, v46);

  if (v49)
  {
    v52 = objc_msgSend_downloadPreauthorization(v4, v50, v51);
    v55 = objc_msgSend_responseUUID(v52, v53, v54);
    objc_msgSend_setAssetAuthorizationResponseUUID_(v8, v56, v55);
  }

  return v8;
}

- (id)packageFromPPackage:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CBC208];
  v10 = objc_msgSend_bundleID(self, v8, v9);
  v12 = objc_msgSend_packageForBundleID_error_(v7, v11, v10, a4);

  if (v12)
  {
    v15 = objc_msgSend_sections(v6, v13, v14);
    v18 = objc_msgSend_count(v15, v16, v17);

    v19 = objc_alloc(MEMORY[0x277CBEB18]);
    v21 = objc_msgSend_initWithCapacity_(v19, v20, v18 + 1);
    v24 = objc_msgSend_manifest(v6, v22, v23);
    v26 = objc_msgSend_assetFromPAsset_field_error_(self, v25, v24, 0, a4);

    if (v26)
    {
      v43 = v12;
      objc_msgSend_addObject_(v21, v27, v26);
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v30 = objc_msgSend_sections(v6, v28, v29);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v44, v48, 16);
      if (v32)
      {
        v34 = v32;
        v35 = *v45;
        while (2)
        {
          v36 = 0;
          v37 = v26;
          do
          {
            if (*v45 != v35)
            {
              objc_enumerationMutation(v30);
            }

            v26 = objc_msgSend_assetFromPAsset_field_error_(self, v33, *(*(&v44 + 1) + 8 * v36), 0, a4);

            if (!v26)
            {
              v40 = 0;
              v12 = v43;
              goto LABEL_14;
            }

            objc_msgSend_addObject_(v21, v38, v26);
            ++v36;
            v37 = v26;
          }

          while (v34 != v36);
          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v44, v48, 16);
          if (v34)
          {
            continue;
          }

          break;
        }
      }

      v12 = v43;
      objc_msgSend_setAssets_(v43, v39, v21);
      v40 = v43;
      v30 = v26;
LABEL_14:
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)pPackageFromPackage:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_assets(v4, v6, v7);
  v11 = objc_msgSend_objectEnumerator(v8, v9, v10);

  v14 = objc_msgSend_nextObject(v11, v12, v13);
  v16 = objc_msgSend_pAssetFromAsset_(self, v15, v14);
  objc_msgSend_setManifest_(v5, v17, v16);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v11;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v29, v33, 16);
  if (v20)
  {
    v22 = v20;
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = objc_msgSend_pAssetFromAsset_(self, v21, *(*(&v29 + 1) + 8 * i), v29);
        objc_msgSend_addSections_(v5, v26, v25);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v29, v33, 16);
    }

    while (v22);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)pStreamingAssetFromStreamingAsset:(id)a3 forCache:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_opt_new();
  v9 = objc_msgSend_owner(v5, v7, v8);
  if (v9)
  {
    v12 = v9;
    v13 = objc_msgSend_fileSignature(v5, v10, v11);
    if (v13)
    {
      v16 = v13;
      v17 = objc_msgSend_referenceSignature(v5, v14, v15);

      if (!v17)
      {
        goto LABEL_6;
      }

      v12 = objc_opt_new();
      v20 = objc_msgSend_referenceSignature(v5, v18, v19);
      objc_msgSend_setReferenceSignature_(v12, v21, v20);

      v24 = objc_msgSend_fileSignature(v5, v22, v23);
      objc_msgSend_setFileSignature_(v12, v25, v24);

      v28 = objc_msgSend_owner(v5, v26, v27);
      objc_msgSend_setOwner_(v12, v29, v28);

      objc_msgSend_setAssetId_(v6, v30, v12);
    }
  }

LABEL_6:
  if (!v4)
  {
    goto LABEL_17;
  }

  v31 = objc_msgSend_downloadURL(v5, v10, v11);
  if (v31)
  {
  }

  else if (!objc_msgSend_hasSize(v5, v32, v33))
  {
    goto LABEL_17;
  }

  v34 = objc_opt_new();
  v37 = objc_msgSend_downloadURL(v5, v35, v36);

  if (v37)
  {
    v40 = objc_msgSend_downloadURL(v5, v38, v39);
    v43 = objc_msgSend_absoluteString(v40, v41, v42);
    objc_msgSend_setDownloadURL_(v34, v44, v43);
  }

  if (objc_msgSend_hasSize(v5, v38, v39))
  {
    v47 = objc_msgSend_size(v5, v45, v46);
    objc_msgSend_setSize_(v34, v48, v47);
  }

  v49 = objc_msgSend_downloadURLExpirationDate(v5, v45, v46);

  if (v49)
  {
    v52 = objc_msgSend_downloadURLExpirationDate(v5, v50, v51);
    objc_msgSend_timeIntervalSince1970(v52, v53, v54);
    objc_msgSend_setDownloadURLExpirationTimeSeconds_(v34, v56, v55);
  }

  objc_msgSend_setRetrieveAssetResponse_(v6, v50, v34);

LABEL_17:
  v57 = objc_opt_new();
  objc_msgSend_setRequestedSize_(v57, v58, 0x7FFFFFFFFFFFFFFFLL);
  if (objc_msgSend_hasSize(v5, v59, v60))
  {
    v63 = objc_msgSend_size(v5, v61, v62);
    objc_msgSend_setUploadedSize_(v57, v64, v63);
  }

  v65 = objc_msgSend_uploadReceipt(v5, v61, v62);

  if (v65)
  {
    v68 = objc_msgSend_uploadReceipt(v5, v66, v67);
    objc_msgSend_setUploadReceipt_(v57, v69, v68);
  }

  objc_msgSend_setSaveAssetRequest_(v6, v66, v57);

  return v6;
}

- (id)streamingAssetFromPStreamingAsset:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBC6D0]);
  inited = objc_msgSend_initInternal(v5, v6, v7);
  if (objc_msgSend_hasAssetId(v4, v9, v10))
  {
    v13 = objc_msgSend_assetId(v4, v11, v12);
    if (objc_msgSend_hasOwner(v13, v14, v15))
    {
      v18 = objc_msgSend_owner(v13, v16, v17);
      objc_msgSend_setOwner_(inited, v19, v18);
    }

    if (objc_msgSend_hasFileSignature(v13, v16, v17))
    {
      v22 = objc_msgSend_fileSignature(v13, v20, v21);
      objc_msgSend_setFileSignature_(inited, v23, v22);
    }

    if (objc_msgSend_hasReferenceSignature(v13, v20, v21))
    {
      v26 = objc_msgSend_referenceSignature(v13, v24, v25);
      objc_msgSend_setReferenceSignature_(inited, v27, v26);
    }
  }

  if (objc_msgSend_hasSaveAssetResponse(v4, v11, v12))
  {
    v30 = objc_msgSend_saveAssetResponse(v4, v28, v29);
    if (objc_msgSend_hasUploadURL(v30, v31, v32))
    {
      v35 = MEMORY[0x277CBEBC0];
      v36 = objc_msgSend_uploadURL(v30, v33, v34);
      v38 = objc_msgSend_URLWithString_(v35, v37, v36);
      objc_msgSend_setUploadURL_(inited, v39, v38);
    }

    if (objc_msgSend_hasReservedSize(v30, v33, v34))
    {
      v42 = objc_msgSend_reservedSize(v30, v40, v41);
      objc_msgSend_setReservedSize_(inited, v43, v42);
    }

    if (objc_msgSend_hasUploadURLExpirationTimeSeconds(v30, v40, v41))
    {
      v46 = MEMORY[0x277CBEAA8];
      v47 = objc_msgSend_uploadURLExpirationTimeSeconds(v30, v44, v45);
      v50 = objc_msgSend_dateWithTimeIntervalSince1970_(v46, v48, v49, v47);
      objc_msgSend_setUploadURLExpirationDate_(inited, v51, v50);
    }
  }

  if (objc_msgSend_hasRetrieveAssetResponse(v4, v28, v29))
  {
    v54 = objc_msgSend_retrieveAssetResponse(v4, v52, v53);
    if (objc_msgSend_hasSize(v54, v55, v56))
    {
      v59 = objc_msgSend_size(v54, v57, v58);
      objc_msgSend_setSize_(inited, v60, v59);
    }

    if (objc_msgSend_hasDownloadURL(v54, v57, v58))
    {
      v63 = MEMORY[0x277CBEBC0];
      v64 = objc_msgSend_downloadURL(v54, v61, v62);
      v66 = objc_msgSend_URLWithString_(v63, v65, v64);
      objc_msgSend_setDownloadURL_(inited, v67, v66);
    }

    if (objc_msgSend_hasDownloadURLExpirationTimeSeconds(v54, v61, v62))
    {
      v70 = MEMORY[0x277CBEAA8];
      v71 = objc_msgSend_downloadURLExpirationTimeSeconds(v54, v68, v69);
      v74 = objc_msgSend_dateWithTimeIntervalSince1970_(v70, v72, v73, v71);
      objc_msgSend_setDownloadURLExpirationDate_(inited, v75, v74);
    }
  }

  return inited;
}

- (id)pMergeableValueIdentifierFromMergeableValueID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_name(v4, v6, v7);
  v11 = objc_msgSend_CKDPIdentifier_MergeableValue(v8, v9, v10);
  objc_msgSend_setValue_(v5, v12, v11);

  v15 = objc_msgSend_zoneID(v4, v13, v14);

  v17 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v16, v15);
  objc_msgSend_setZoneIdentifier_(v5, v18, v17);

  return v5;
}

- (id)mergeableRecordValueFromPRecordField:(id)a3 inPRecordIdentifier:(id)a4 asAnonymousCKUserID:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v16 = objc_msgSend_value(v11, v14, v15);
  v19 = objc_msgSend_type(v16, v17, v18);
  if (v19 == 29)
  {
    v22 = objc_msgSend_encryptedMergeableValue(v16, v20, v21);

    if (v22)
    {
      v25 = objc_msgSend_encryptedMergeableValue(v16, v23, v24);
      v63 = 1;
      objc_msgSend_identifier(v25, v28, v29);
      goto LABEL_7;
    }

    v63 = 1;
  }

  else
  {
    if (v19 != 28)
    {
      if (a6)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 1005, @"Invalid field value type");
        v22 = 0;
        *a6 = v30 = 0;
        goto LABEL_25;
      }

      v22 = 0;
      goto LABEL_18;
    }

    v22 = objc_msgSend_mergeableValue(v16, v20, v21);

    if (v22)
    {
      v25 = objc_msgSend_mergeableValue(v16, v23, v24);
      v63 = 0;
      objc_msgSend_identifier(v25, v26, v27);
      v22 = LABEL_7:;

      goto LABEL_12;
    }

    v63 = 0;
  }

LABEL_12:
  v31 = objc_msgSend_name(v22, v23, v24);
  v32 = _CKCheckArgument();

  if (!v32)
  {
LABEL_18:
    v30 = 0;
    goto LABEL_25;
  }

  v35 = objc_msgSend_name(v22, v33, v34);

  if (v35)
  {
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_20:
    v39 = 0;
LABEL_21:
    if (a6)
    {
      objc_msgSend_errorWithDomain_code_userInfo_error_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBC120], 1017, 0, v39, @"No zone ID for mergeable value");
      *a6 = v30 = 0;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_24;
  }

  v59 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v36, v37);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v59, v60, a2, self, @"CKDProtocolTranslator.m", 1201, @"Convincing clang");

  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_15:
  v64 = 0;
  v38 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(self, v36, v12, v13, &v64);
  v39 = v64;
  if (!v38)
  {
    goto LABEL_21;
  }

  v40 = objc_alloc(MEMORY[0x277CBC478]);
  v43 = objc_msgSend_name(v22, v41, v42);
  v46 = objc_msgSend_identifier(v11, v44, v45);
  v49 = objc_msgSend_name(v46, v47, v48);
  v50 = v38;
  v62 = v38;
  v51 = v12;
  v52 = v13;
  v53 = v39;
  v54 = v49;
  v56 = objc_msgSend_initWithName_recordID_key_encrypted_(v40, v55, v43, v50, v49, v63);

  v39 = v53;
  v13 = v52;
  v12 = v51;

  v30 = objc_alloc_init(MEMORY[0x277CBC470]);
  objc_msgSend_setValueID_(v30, v57, v56);
  objc_msgSend_setIsValueIDKnownToServer_(v30, v58, 1);

LABEL_24:
LABEL_25:

  return v30;
}

- (id)pMergeableValueFromMergeableValueID:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKDProtocolTranslator.m", 1228, @"Trying to create a mergeable value proto without a mergeable value ID");
  }

  v8 = objc_opt_new();
  v11 = objc_msgSend_name(v7, v9, v10);
  v14 = objc_msgSend_CKDPIdentifier_MergeableValue(v11, v12, v13);
  objc_msgSend_setIdentifier_(v8, v15, v14);

  return v8;
}

- (id)pEncryptedMergeableValueFromRecordValue:(id)a3
{
  v5 = a3;
  v8 = objc_msgSend_valueID(v5, v6, v7);

  if (!v8)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CKDProtocolTranslator.m", 1235, @"Trying to create a mergeable value proto without a mergeable value ID");
  }

  v11 = objc_opt_new();
  v14 = objc_msgSend_valueID(v5, v12, v13);

  v17 = objc_msgSend_name(v14, v15, v16);
  v20 = objc_msgSend_CKDPIdentifier_MergeableValue(v17, v18, v19);
  objc_msgSend_setIdentifier_(v11, v21, v20);

  return v11;
}

- (id)mergeableDeltaFromPDelta:(id)a3 valueID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (objc_msgSend_hasMetadata(v8, v10, v11))
  {
    v14 = objc_msgSend_metadata(v8, v12, v13);
    v16 = objc_msgSend_mergeableDeltaMetadataFromPMetadata_mergeableValueID_error_(self, v15, v14, v9, a5);

    if (v16)
    {
      v19 = objc_msgSend_payload(v8, v17, v18);
      v22 = 0;
      if (v19 > 2)
      {
        if ((v19 - 3) < 2)
        {
          v29 = objc_msgSend_asset(v8, v20, v21);
          v32 = v29;
          if (v29)
          {
            v33 = v29;
          }

          else
          {
            v33 = objc_msgSend_encryptedAsset(v8, v30, v31);
          }

          v38 = v33;

          v45 = 0;
          v40 = objc_msgSend_assetFromPAsset_field_error_(self, v39, v38, 0, &v45);
          v26 = v45;
          if (v40)
          {
            v42 = objc_alloc(MEMORY[0x277CBC458]);
            v22 = objc_msgSend_initWithValueID_metadata_asset_(v42, v43, v9, v16, v40);
          }

          else if (a5)
          {
            objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v41, *MEMORY[0x277CBC120], 2005, v26, @"Failed to parse asset from server");
            *a5 = v22 = 0;
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_26;
        }

        goto LABEL_27;
      }

      if (v19)
      {
        if (v19 == 1)
        {
          v34 = objc_alloc(MEMORY[0x277CBC458]);
          v26 = objc_msgSend_data(v8, v35, v36);
          v28 = objc_msgSend_initWithValueID_metadata_data_(v34, v37, v9, v16, v26);
          goto LABEL_18;
        }

        if (v19 == 2)
        {
          v23 = objc_alloc(MEMORY[0x277CBC458]);
          v26 = objc_msgSend_encryptedData(v8, v24, v25);
          v28 = objc_msgSend_initWithValueID_metadata_encryptedData_(v23, v27, v9, v16, v26);
LABEL_18:
          v22 = v28;
LABEL_26:
        }

LABEL_27:

        goto LABEL_28;
      }

      if (a5)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 1017, @"Unknown or missing mergeable delta payload");
        *a5 = v22 = 0;
        goto LABEL_27;
      }
    }

    v22 = 0;
    goto LABEL_27;
  }

  if (a5)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 1017, @"Missing mergeable delta metadata: %@", v8);
    *a5 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_28:

  return v22;
}

- (id)pMergeableDeltaFromDelta:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(CKDPMergeableDelta);
  v10 = objc_msgSend_valueID(v6, v8, v9);
  isEncrypted = objc_msgSend_isEncrypted(v10, v11, v12);

  if (isEncrypted)
  {
    v16 = objc_msgSend_encryptedData(v6, v14, v15);

    if (v16)
    {
      v19 = objc_msgSend_encryptedData(v6, v17, v18);
      objc_msgSend_setEncryptedData_(v7, v20, v19);
      goto LABEL_11;
    }

    v27 = objc_msgSend_asset(v6, v17, v18);

    if (v27)
    {
      v19 = objc_msgSend_asset(v6, v28, v29);
      v25 = objc_msgSend_pAssetFromAsset_(self, v30, v19);
      objc_msgSend_setEncryptedAsset_(v7, v31, v25);
      goto LABEL_10;
    }

    if (a4)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v28, *MEMORY[0x277CBC120], 1017, @"No encrypted data on delta %@", v6);
      *a4 = v45 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v21 = objc_msgSend_asset(v6, v14, v15);

    if (v21)
    {
      v19 = objc_msgSend_asset(v6, v22, v23);
      v25 = objc_msgSend_pAssetFromAsset_(self, v24, v19);
      objc_msgSend_setAsset_(v7, v26, v25);
LABEL_10:

LABEL_11:
      v37 = objc_msgSend_metadata(v6, v33, v34);
      if (v37)
      {
        v38 = objc_msgSend_valueID(v6, v35, v36);
        v40 = objc_msgSend_pMergeableDeltaMetadataFromMetadata_mergeableValueID_error_(self, v39, v37, v38, a4);
        objc_msgSend_setMetadata_(v7, v41, v40);

        v44 = objc_msgSend_metadata(v7, v42, v43);

        if (v44)
        {
          v45 = v7;
LABEL_17:

          goto LABEL_18;
        }
      }

      else if (a4)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v35, *MEMORY[0x277CBC120], 1017, @"No metadata on delta %@", v6);
        *a4 = v45 = 0;
        goto LABEL_17;
      }

      v45 = 0;
      goto LABEL_17;
    }

    v47 = 0;
    v25 = objc_msgSend_dataWithError_(v6, v22, &v47);
    v19 = v47;
    if (v25)
    {
      objc_msgSend_setData_(v7, v32, v25);
      goto LABEL_10;
    }

    if (a4)
    {
      *a4 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v32, *MEMORY[0x277CBC120], 1017, v19, @"Failed to get data from mergeable delta %@", v6);
    }
  }

  v45 = 0;
LABEL_18:

  return v45;
}

- (id)mergeableDeltaMetadataFromPMetadata:(id)a3 mergeableValueID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v13 = objc_msgSend_identifier(v8, v10, v11);
  if (v13)
  {
    v14 = objc_opt_new();
    v90 = objc_opt_new();
    v15 = objc_opt_new();
    v89 = objc_opt_new();
    v18 = objc_msgSend_replacedDeltaIdentifiers(v8, v16, v17);
    v21 = objc_msgSend_count(v18, v19, v20);

    if (v21)
    {
      v24 = MEMORY[0x277CBEB98];
      objc_msgSend_replacedDeltaIdentifiers(v8, v22, v23);
      v26 = v25 = v15;
      v21 = objc_msgSend_setWithArray_(v24, v27, v26);

      v15 = v25;
    }

    if (objc_msgSend_isEncrypted(v9, v22, v23))
    {
      v30 = objc_alloc(MEMORY[0x277CBC460]);
      v31 = objc_alloc(MEMORY[0x277CBC468]);
      v88 = v14;
      v32 = v15;
      v34 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v31, v33, v14, v90, v15, v89);
      v36 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(v30, v35, v13, v34, v21);

      if (!objc_msgSend_hasProtectionInfo(v8, v37, v38) || (objc_msgSend_protectionInfo(v8, v39, v40), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend_protectionInfo(v41, v42, v43), v44 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend_length(v44, v45, v46), v44, v41, !v47))
      {
        if (a5)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v39, *MEMORY[0x277CBC120], 1017, @"Missing protection info for delta metadata");
          *a5 = v78 = 0;
        }

        else
        {
          v78 = 0;
        }

        v14 = v88;
        v15 = v32;
        goto LABEL_33;
      }

      v49 = objc_msgSend_protectionInfo(v8, v39, v48);
      v52 = objc_msgSend_protectionInfo(v49, v50, v51);
      objc_msgSend_setEnvelope_(v36, v53, v52);

      if ((objc_msgSend_hasTimestamps(v8, v54, v55) & 1) == 0 && (objc_msgSend_hasEncryptedTimestamps(v8, v56, v57) & 1) == 0)
      {
        v15 = v32;
        if (a5)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v56, *MEMORY[0x277CBC120], 1017, @"No version vectors in delta metadata proto");
          *a5 = v78 = 0;
        }

        else
        {
          v78 = 0;
        }

        v14 = v88;
        goto LABEL_33;
      }

      v15 = v32;
      if (!objc_msgSend_hasTimestamps(v8, v56, v57))
      {
        goto LABEL_12;
      }

      if (objc_msgSend_hasTimestampsAuthTag(v8, v58, v59))
      {
        v61 = objc_alloc(MEMORY[0x277CBC7A0]);
        v64 = objc_msgSend_timestamps(v8, v62, v63);
        v67 = objc_msgSend_data(v64, v65, v66);
        v70 = objc_msgSend_timestampsAuthTag(v8, v68, v69);
        v72 = objc_msgSend_initWithObject1_object2_(v61, v71, v67, v70);
        objc_msgSend_setAuthenticatedTimestamps_(v36, v73, v72);

        v15 = v32;
LABEL_12:
        v14 = v88;
        if (!objc_msgSend_hasEncryptedTimestamps(v8, v58, v59))
        {
LABEL_21:
          v36 = v36;
          v78 = v36;
LABEL_33:

          goto LABEL_34;
        }

        v76 = objc_msgSend_encryptedTimestamps(v8, v74, v75);
        objc_msgSend_setEncryptedTimestamps_(v36, v77, v76);
LABEL_20:

        goto LABEL_21;
      }

      v14 = v88;
      if (a5)
      {
        v86 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v60, *MEMORY[0x277CBC120], 1017, @"Missing authentication tag for timestamps");
        goto LABEL_26;
      }
    }

    else
    {
      if (objc_msgSend_hasTimestamps(v8, v28, v29))
      {
        v81 = objc_msgSend_timestamps(v8, v79, v80);
        v76 = objc_msgSend_deltaMetadataVectorsFromPDistributedTimestamps_error_(self, v82, v81, a5);

        if (v76 && (objc_msgSend__validate_(v76, v83, a5) & 1) != 0)
        {
          v84 = objc_alloc(MEMORY[0x277CBC460]);
          v36 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(v84, v85, v13, v76, v21);
          goto LABEL_20;
        }
      }

      else if (a5)
      {
        v86 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v79, *MEMORY[0x277CBC120], 1017, @"No version vectors in delta metadata proto");
        v36 = 0;
LABEL_26:
        v78 = 0;
        *a5 = v86;
        goto LABEL_33;
      }

      v36 = 0;
    }

    v78 = 0;
    goto LABEL_33;
  }

  if (a5)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 1017, @"No identifier in delta metadata proto");
    *a5 = v78 = 0;
  }

  else
  {
    v78 = 0;
  }

LABEL_34:

  return v78;
}

- (id)deltaMetadataVectorsFromPDistributedTimestamps:(id)a3 error:(id *)a4
{
  v19 = 0;
  v5 = objc_msgSend_deltaMetadataVectorsFromPDistributedTimestamps_error_(MEMORY[0x277CBC468], a2, a3, &v19);
  v6 = v19;
  v9 = v6;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = !v10;
  if (a4 && v11)
  {
    v12 = MEMORY[0x277CBC560];
    v13 = *MEMORY[0x277CBC120];
    v14 = objc_msgSend_userInfo(v6, v7, v8);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, *MEMORY[0x277CCA450]);
    *a4 = objc_msgSend_errorWithDomain_code_format_(v12, v17, v13, 1017, @"%@", v16);
  }

  return v5;
}

- (id)pMergeableDeltaMetadataFromMetadata:(id)a3 mergeableValueID:(id)a4 error:(id *)a5
{
  v78 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v12 = objc_msgSend_identifier(v7, v10, v11);
  objc_msgSend_setIdentifier_(v9, v13, v12);

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v16 = objc_msgSend_replacedDeltaIdentifiers(v7, v14, v15);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v73, v77, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v74;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v74 != v21)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_addReplacedDeltaIdentifiers_(v9, v19, *(*(&v73 + 1) + 8 * i));
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v73, v77, 16);
    }

    while (v20);
  }

  if (!objc_msgSend_isEncrypted(v8, v23, v24))
  {
    v35 = MEMORY[0x277CBC468];
    v36 = objc_msgSend_vectors(v7, v25, v26);
    v38 = objc_msgSend_pDistributedTimestampsFromDeltaMetadataVectors_(v35, v37, v36);
    objc_msgSend_setTimestamps_(v9, v39, v38);

    v34 = 0;
    v40 = v9;
LABEL_21:

    v68 = v34;
    v9 = v40;
LABEL_22:
    if (a5)
    {
      v69 = v68;
      *a5 = v68;
    }

    v9 = v9;
    v34 = v68;
    v70 = v9;
    goto LABEL_25;
  }

  v28 = objc_msgSend_envelope(v7, v25, v26);
  if (v28)
  {
    v29 = objc_opt_new();
    objc_msgSend_setProtectionInfo_(v29, v30, v28);
    objc_msgSend_setProtectionInfo_(v9, v31, v29);

    v34 = 0;
  }

  else
  {
    v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, *MEMORY[0x277CBC120], 1017, @"No envelope on metadata: %@", v7);
  }

  v41 = objc_msgSend_encryptedTimestamps(v7, v32, v33);
  if (v41)
  {

    goto LABEL_16;
  }

  v46 = objc_msgSend_authenticatedTimestamps(v7, v42, v43);

  if (v46)
  {
LABEL_16:
    v47 = objc_msgSend_encryptedTimestamps(v7, v44, v45);

    if (v47)
    {
      v50 = objc_msgSend_encryptedTimestamps(v7, v48, v49);
      objc_msgSend_setEncryptedTimestamps_(v9, v51, v50);
    }

    v52 = objc_msgSend_authenticatedTimestamps(v7, v48, v49);

    if (v52)
    {
      v53 = objc_alloc(MEMORY[0x277CBC248]);
      v56 = objc_msgSend_authenticatedTimestamps(v7, v54, v55);
      v58 = objc_msgSend_objectAtIndexedSubscript_(v56, v57, 0);
      v60 = objc_msgSend_initWithData_(v53, v59, v58);
      objc_msgSend_setTimestamps_(v9, v61, v60);

      v64 = objc_msgSend_authenticatedTimestamps(v7, v62, v63);
      v66 = objc_msgSend_objectAtIndexedSubscript_(v64, v65, 1);
      objc_msgSend_setTimestampsAuthTag_(v9, v67, v66);
    }

    v40 = 0;
    v68 = 0;
    v36 = v9;
    if (!v34)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (a5)
  {
    *a5 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v44, *MEMORY[0x277CBC120], 1017, @"No version vectors in delta metadata");
  }

  v70 = 0;
LABEL_25:

  v71 = *MEMORY[0x277D85DE8];

  return v70;
}

- (id)pQueryFromQuery:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v10 = objc_msgSend_predicate(v6, v8, v9);
  v50 = 0;
  v12 = objc_msgSend_CKDPQueryFiltersWithTranslator_error_(v10, v11, self, &v50);
  v13 = v50;

  if (!v12)
  {
    goto LABEL_4;
  }

  v14 = CKVerifyFilters(v12);

  if (v14)
  {
    v13 = v14;
LABEL_4:
    if (a4)
    {
      v15 = v13;
      *a4 = v13;
    }

    v16 = 0;
    goto LABEL_22;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v17 = v12;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v46, v52, 16);
  if (v20)
  {
    v21 = *v47;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v47 != v21)
        {
          objc_enumerationMutation(v17);
        }

        objc_msgSend_addFilters_(v7, v19, *(*(&v46 + 1) + 8 * i));
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v46, v52, 16);
    }

    while (v20);
  }

  v23 = objc_alloc_init(CKDPRecordType);
  v26 = objc_msgSend_recordType(v6, v24, v25);
  objc_msgSend_setName_(v23, v27, v26);

  objc_msgSend_addTypes_(v7, v28, v23);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v31 = objc_msgSend_sortDescriptors(v6, v29, v30);
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v42, v51, 16);
  if (v35)
  {
    v36 = *v43;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(v31);
        }

        v38 = objc_msgSend_CKDPQuerySort(*(*(&v42 + 1) + 8 * j), v33, v34);
        objc_msgSend_addSorts_(v7, v39, v38);
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v33, &v42, v51, 16);
    }

    while (v35);
  }

  v16 = v7;
LABEL_22:

  v40 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)subscriptionFromPSubscription:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend_identifier(v6, v7, v8);
  v12 = objc_msgSend_name(v9, v10, v11);

  if (objc_msgSend_hasZoneIdentifier(v6, v13, v14))
  {
    v17 = objc_msgSend_zoneIdentifier(v6, v15, v16);
    v19 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_error_(self, v18, v17, a4);

    if (!v19)
    {
      v20 = 0;
      v21 = 0;
LABEL_4:
      v22 = 0;
LABEL_5:
      v23 = 0;
      goto LABEL_60;
    }
  }

  else
  {
    v19 = 0;
  }

  v26 = v12;
  if (objc_msgSend_hasEvaluationType(v6, v15, v16))
  {
    v27 = objc_msgSend_evaluationType(v6, v24, v25);
    if (v27 > 3)
    {
      LOBYTE(v28) = 0;
      LOBYTE(v29) = 0;
      LOBYTE(v297) = 0;
    }

    else
    {
      v28 = 2u >> (v27 & 0xF);
      v29 = 4u >> (v27 & 0xF);
      v297 = 8u >> (v27 & 0xF);
    }
  }

  else
  {
    LOBYTE(v29) = 0;
    LOBYTE(v297) = 0;
    LOBYTE(v28) = 1;
  }

  if (objc_msgSend_filtersCount(v6, v24, v25))
  {
    v32 = MEMORY[0x277CCAC30];
    v33 = objc_msgSend_filters(v6, v30, v31);
    v22 = objc_msgSend_predicateWithCKDPQueryFilters_translator_(v32, v34, v33, self);
  }

  else if (objc_msgSend_evaluationType(v6, v30, v31) == 1)
  {
    v22 = objc_msgSend_predicateWithValue_(MEMORY[0x277CCAC30], v35, 1);
  }

  else
  {
    v22 = 0;
  }

  v21 = objc_msgSend_recordTypes(v6, v35, v36);
  if (v21)
  {
    v39 = objc_msgSend_recordTypes(v6, v37, v38);
    v42 = objc_msgSend_count(v39, v40, v41);

    if (v42)
    {
      v43 = objc_msgSend_recordTypes(v6, v37, v38);
      v45 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, 0);
      v21 = objc_msgSend_name(v45, v46, v47);
    }

    else
    {
      v21 = 0;
    }
  }

  if (objc_msgSend_mutationTriggers(v6, v37, v38) && objc_msgSend_mutationTriggersCount(v6, v48, v49))
  {
    v50 = 0;
    v51 = 0;
    do
    {
      v54 = *(objc_msgSend_mutationTriggers(v6, v48, v49) + 4 * v50);
      v55 = v51 | 2;
      v56 = v51 | 1;
      if (v54 != 1)
      {
        v56 = v51;
      }

      if (v54 != 2)
      {
        v55 = v56;
      }

      if (v54 == 3)
      {
        v51 |= 4uLL;
      }

      else
      {
        v51 = v55;
      }

      ++v50;
    }

    while (v50 < objc_msgSend_mutationTriggersCount(v6, v52, v53));
  }

  else
  {
    v51 = 0;
  }

  if (objc_msgSend_fireOnce(v6, v48, v49))
  {
    v51 |= 8uLL;
  }

  if (v28)
  {
    v12 = v26;
    if (!v21)
    {
      if (a4)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v57, *MEMORY[0x277CBBF50], 2019, @"Subscription from server didn't have a record type");
        v21 = 0;
        *a4 = v23 = 0;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v20 = v19;
      goto LABEL_60;
    }

    if (v22)
    {
      v59 = objc_alloc(MEMORY[0x277CBC598]);
      v61 = objc_msgSend_initWithRecordType_predicate_subscriptionID_options_(v59, v60, v21, v22, v26, v51);
      v20 = v19;
      objc_msgSend_setZoneID_(v61, v62, v19);
      goto LABEL_49;
    }

    v20 = v19;
    if (!a4)
    {
      goto LABEL_4;
    }

    v295 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v57, *MEMORY[0x277CBBF50], 2019, @"Subscription from server didn't have a predicate");
    v22 = 0;
LABEL_57:
    v23 = 0;
    *a4 = v295;
    goto LABEL_60;
  }

  v12 = v26;
  if ((v29 & 1) == 0)
  {
    if (v297)
    {
      v66 = objc_alloc(MEMORY[0x277CBC2A0]);
      v61 = objc_msgSend_initWithSubscriptionID_(v66, v67, v26);
      objc_msgSend_setRecordType_(v61, v68, v21);
    }

    else
    {
      v61 = 0;
    }

    v20 = v19;
    goto LABEL_49;
  }

  if (!v19)
  {
    if (!a4)
    {
      v20 = 0;
      goto LABEL_5;
    }

    v295 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v57, *MEMORY[0x277CBBF50], 2019, @"Subscription from server didn't have a zone id");
    v20 = 0;
    goto LABEL_57;
  }

  v20 = v19;
  v63 = objc_alloc(MEMORY[0x277CBC618]);
  v61 = objc_msgSend_initWithZoneID_subscriptionID_(v63, v64, v19, v12);
  objc_msgSend_setRecordType_(v61, v65, v21);
LABEL_49:
  if (objc_msgSend_hasNotification(v6, v57, v58))
  {
    v69 = objc_alloc_init(MEMORY[0x277CBC4D0]);
    objc_msgSend_setNotificationInfo_(v61, v70, v69);

    v73 = objc_msgSend_notification(v6, v71, v72);
    shouldBadge = objc_msgSend_shouldBadge(v73, v74, v75);
    v79 = objc_msgSend_notificationInfo(v61, v77, v78);
    objc_msgSend_setShouldBadge_(v79, v80, shouldBadge);

    v83 = objc_msgSend_notification(v6, v81, v82);
    shouldSendContentAvailable = objc_msgSend_shouldSendContentAvailable(v83, v84, v85);
    v89 = objc_msgSend_notificationInfo(v61, v87, v88);
    objc_msgSend_setShouldSendContentAvailable_(v89, v90, shouldSendContentAvailable);

    v93 = objc_msgSend_notification(v6, v91, v92);
    shouldSendMutableContent = objc_msgSend_shouldSendMutableContent(v93, v94, v95);
    v99 = objc_msgSend_notificationInfo(v61, v97, v98);
    objc_msgSend_setShouldSendMutableContent_(v99, v100, shouldSendMutableContent);

    v103 = objc_msgSend_notification(v6, v101, v102);
    v106 = objc_msgSend_collapseIdKey(v103, v104, v105);
    v109 = objc_msgSend_notificationInfo(v61, v107, v108);
    objc_msgSend_setCollapseIDKey_(v109, v110, v106);

    v113 = objc_msgSend_notification(v6, v111, v112);
    v116 = objc_msgSend_additionalFields(v113, v114, v115);
    v119 = objc_msgSend_notificationInfo(v61, v117, v118);
    objc_msgSend_setDesiredKeys_(v119, v120, v116);

    v123 = objc_msgSend_notification(v6, v121, v122);
    LODWORD(v116) = objc_msgSend_hasAlert(v123, v124, v125);

    if (v116)
    {
      v128 = objc_msgSend_notification(v6, v126, v127);
      v131 = objc_msgSend_alert(v128, v129, v130);
      v134 = objc_msgSend_text(v131, v132, v133);
      v137 = objc_msgSend_notificationInfo(v61, v135, v136);
      objc_msgSend_setAlertBody_(v137, v138, v134);

      v141 = objc_msgSend_notification(v6, v139, v140);
      v144 = objc_msgSend_alert(v141, v142, v143);
      v147 = objc_msgSend_localizedKey(v144, v145, v146);
      v150 = objc_msgSend_notificationInfo(v61, v148, v149);
      objc_msgSend_setAlertLocalizationKey_(v150, v151, v147);

      v154 = objc_msgSend_notification(v6, v152, v153);
      v157 = objc_msgSend_alert(v154, v155, v156);
      v160 = objc_msgSend_localizedArguments(v157, v158, v159);
      v163 = objc_msgSend_notificationInfo(v61, v161, v162);
      objc_msgSend_setAlertLocalizationArgs_(v163, v164, v160);

      v167 = objc_msgSend_notification(v6, v165, v166);
      v170 = objc_msgSend_alert(v167, v168, v169);
      v173 = objc_msgSend_title(v170, v171, v172);
      v176 = objc_msgSend_notificationInfo(v61, v174, v175);
      objc_msgSend_setTitle_(v176, v177, v173);

      v180 = objc_msgSend_notification(v6, v178, v179);
      v183 = objc_msgSend_alert(v180, v181, v182);
      v186 = objc_msgSend_titleLocalizedKey(v183, v184, v185);
      v189 = objc_msgSend_notificationInfo(v61, v187, v188);
      objc_msgSend_setTitleLocalizationKey_(v189, v190, v186);

      v193 = objc_msgSend_notification(v6, v191, v192);
      v196 = objc_msgSend_alert(v193, v194, v195);
      v199 = objc_msgSend_titleLocalizedArguments(v196, v197, v198);
      v202 = objc_msgSend_notificationInfo(v61, v200, v201);
      objc_msgSend_setTitleLocalizationArgs_(v202, v203, v199);

      v206 = objc_msgSend_notification(v6, v204, v205);
      v209 = objc_msgSend_alert(v206, v207, v208);
      v212 = objc_msgSend_subtitle(v209, v210, v211);
      v215 = objc_msgSend_notificationInfo(v61, v213, v214);
      objc_msgSend_setSubtitle_(v215, v216, v212);

      v219 = objc_msgSend_notification(v6, v217, v218);
      v222 = objc_msgSend_alert(v219, v220, v221);
      v225 = objc_msgSend_subtitleLocalizedKey(v222, v223, v224);
      v228 = objc_msgSend_notificationInfo(v61, v226, v227);
      objc_msgSend_setSubtitleLocalizationKey_(v228, v229, v225);

      v232 = objc_msgSend_notification(v6, v230, v231);
      v235 = objc_msgSend_alert(v232, v233, v234);
      v238 = objc_msgSend_subtitleLocalizedArguments(v235, v236, v237);
      v241 = objc_msgSend_notificationInfo(v61, v239, v240);
      objc_msgSend_setSubtitleLocalizationArgs_(v241, v242, v238);

      v245 = objc_msgSend_notification(v6, v243, v244);
      v248 = objc_msgSend_alert(v245, v246, v247);
      v251 = objc_msgSend_actionLocKey(v248, v249, v250);
      v254 = objc_msgSend_notificationInfo(v61, v252, v253);
      objc_msgSend_setAlertActionLocalizationKey_(v254, v255, v251);

      v258 = objc_msgSend_notification(v6, v256, v257);
      v261 = objc_msgSend_alert(v258, v259, v260);
      v264 = objc_msgSend_launchImage(v261, v262, v263);
      v267 = objc_msgSend_notificationInfo(v61, v265, v266);
      objc_msgSend_setAlertLaunchImage_(v267, v268, v264);

      v271 = objc_msgSend_notification(v6, v269, v270);
      v274 = objc_msgSend_alert(v271, v272, v273);
      v277 = objc_msgSend_soundName(v274, v275, v276);
      v280 = objc_msgSend_notificationInfo(v61, v278, v279);
      objc_msgSend_setSoundName_(v280, v281, v277);

      v284 = objc_msgSend_notification(v6, v282, v283);
      v287 = objc_msgSend_alert(v284, v285, v286);
      v290 = objc_msgSend_category(v287, v288, v289);
      v293 = objc_msgSend_notificationInfo(v61, v291, v292);
      objc_msgSend_setCategory_(v293, v294, v290);
    }
  }

  v23 = v61;
LABEL_60:

  return v23;
}

- (id)pSubscriptionFromSubscription:(id)a3 error:(id *)a4
{
  v328 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v10 = objc_msgSend_subscriptionID(v6, v8, v9);
  v13 = objc_msgSend_CKDPIdentifier_Subscription(v10, v11, v12);
  objc_msgSend_setIdentifier_(v7, v14, v13);

  if (objc_msgSend_subscriptionType(v6, v15, v16) == 1)
  {
    v19 = v6;
    v22 = objc_msgSend_zoneID(v19, v20, v21);

    if (v22)
    {
      v25 = objc_msgSend_zoneID(v19, v23, v24);
      v27 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v26, v25);
      objc_msgSend_setZoneIdentifier_(v7, v28, v27);
    }

    v29 = objc_msgSend_predicate(v19, v23, v24);
    v326 = 0;
    v31 = objc_msgSend_CKDPQueryFiltersWithTranslator_error_(v29, v30, self, &v326);
    v32 = v326;

    if (!v31 && v32)
    {
      if (!a4)
      {
LABEL_8:

        v34 = 0;
        goto LABEL_43;
      }

LABEL_7:
      v33 = v32;
      *a4 = v32;
      goto LABEL_8;
    }

    v46 = CKVerifyFilters(v31);

    if (v46)
    {
      v32 = v46;
      if (!a4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v324 = 0u;
    v325 = 0u;
    v322 = 0u;
    v323 = 0u;
    v52 = v31;
    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v58, &v322, v327, 16);
    if (v59)
    {
      v61 = v59;
      v62 = *v323;
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v323 != v62)
          {
            objc_enumerationMutation(v52);
          }

          objc_msgSend_addFilters_(v7, v60, *(*(&v322 + 1) + 8 * i), v322);
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v60, &v322, v327, 16);
      }

      while (v61);
    }

    v64 = objc_opt_new();
    v67 = objc_msgSend_recordType(v19, v65, v66);
    objc_msgSend_setName_(v64, v68, v67);

    objc_msgSend_addRecordTypes_(v7, v69, v64);
    SubscriptionOptions = objc_msgSend_querySubscriptionOptions(v19, v70, v71);
    v73 = SubscriptionOptions;
    objc_msgSend_setFireOnce_(v7, v74, (SubscriptionOptions >> 3) & 1);
    if (v73)
    {
      objc_msgSend_addMutationTriggers_(v7, v75, 1);
      if ((v73 & 2) == 0)
      {
LABEL_29:
        if ((v73 & 4) == 0)
        {
LABEL_31:

          goto LABEL_32;
        }

LABEL_30:
        objc_msgSend_addMutationTriggers_(v7, v75, 3, v322);
        goto LABEL_31;
      }
    }

    else if ((v73 & 2) == 0)
    {
      goto LABEL_29;
    }

    objc_msgSend_addMutationTriggers_(v7, v75, 2, v322);
    if ((v73 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (objc_msgSend_subscriptionType(v6, v17, v18) == 2)
  {
    v19 = v6;
    v39 = objc_msgSend_zoneID(v19, v37, v38);

    if (v39)
    {
      v42 = objc_msgSend_zoneID(v19, v40, v41);
      v44 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v43, v42);
      objc_msgSend_setZoneIdentifier_(v7, v45, v44);
    }

    objc_msgSend_recordType(v19, v40, v41);
    goto LABEL_18;
  }

  if (objc_msgSend_subscriptionType(v6, v35, v36) == 3)
  {
    v19 = v6;
    objc_msgSend_recordType(v19, v49, v50);
    v51 = LABEL_18:;

    if (!v51)
    {
LABEL_33:

      goto LABEL_34;
    }

    v52 = objc_opt_new();
    v55 = objc_msgSend_recordType(v19, v53, v54);
    objc_msgSend_setName_(v52, v56, v55);

    objc_msgSend_addRecordTypes_(v7, v57, v52);
LABEL_32:

    goto LABEL_33;
  }

LABEL_34:
  v76 = objc_msgSend_subscriptionType(v6, v47, v48, v322);
  if (v76 == 3)
  {
    v78 = 3;
  }

  else
  {
    v78 = 1;
  }

  if (v76 == 2)
  {
    objc_msgSend_setEvaluationType_(v7, v77, 2);
  }

  else
  {
    objc_msgSend_setEvaluationType_(v7, v77, v78);
  }

  v81 = objc_msgSend_notificationInfo(v6, v79, v80);

  if (v81)
  {
    v82 = objc_opt_new();
    objc_msgSend_setNotification_(v7, v83, v82);

    v84 = MEMORY[0x277CBEB18];
    v87 = objc_msgSend_notificationInfo(v6, v85, v86);
    v90 = objc_msgSend_desiredKeys(v87, v88, v89);
    v92 = objc_msgSend_arrayWithArray_(v84, v91, v90);
    v95 = objc_msgSend_notification(v7, v93, v94);
    objc_msgSend_setAdditionalFields_(v95, v96, v92);

    v99 = objc_msgSend_notificationInfo(v6, v97, v98);
    shouldBadge = objc_msgSend_shouldBadge(v99, v100, v101);
    v105 = objc_msgSend_notification(v7, v103, v104);
    objc_msgSend_setShouldBadge_(v105, v106, shouldBadge);

    v109 = objc_msgSend_notificationInfo(v6, v107, v108);
    shouldSendContentAvailable = objc_msgSend_shouldSendContentAvailable(v109, v110, v111);
    v115 = objc_msgSend_notification(v7, v113, v114);
    objc_msgSend_setShouldSendContentAvailable_(v115, v116, shouldSendContentAvailable);

    v119 = objc_msgSend_notificationInfo(v6, v117, v118);
    shouldSendMutableContent = objc_msgSend_shouldSendMutableContent(v119, v120, v121);
    v125 = objc_msgSend_notification(v7, v123, v124);
    objc_msgSend_setShouldSendMutableContent_(v125, v126, shouldSendMutableContent);

    v129 = objc_msgSend_notificationInfo(v6, v127, v128);
    v132 = objc_msgSend_collapseIDKey(v129, v130, v131);
    v135 = objc_msgSend_notification(v7, v133, v134);
    objc_msgSend_setCollapseIdKey_(v135, v136, v132);

    v137 = objc_opt_new();
    v140 = objc_msgSend_notification(v7, v138, v139);
    objc_msgSend_setAlert_(v140, v141, v137);

    v144 = objc_msgSend_notificationInfo(v6, v142, v143);
    v147 = objc_msgSend_alertBody(v144, v145, v146);
    v150 = objc_msgSend_notification(v7, v148, v149);
    v153 = objc_msgSend_alert(v150, v151, v152);
    objc_msgSend_setText_(v153, v154, v147);

    v157 = objc_msgSend_notificationInfo(v6, v155, v156);
    v160 = objc_msgSend_alertLocalizationKey(v157, v158, v159);
    v163 = objc_msgSend_notification(v7, v161, v162);
    v166 = objc_msgSend_alert(v163, v164, v165);
    objc_msgSend_setLocalizedKey_(v166, v167, v160);

    v168 = MEMORY[0x277CBEB18];
    v171 = objc_msgSend_notificationInfo(v6, v169, v170);
    v174 = objc_msgSend_alertLocalizationArgs(v171, v172, v173);
    v176 = objc_msgSend_arrayWithArray_(v168, v175, v174);
    v179 = objc_msgSend_notification(v7, v177, v178);
    v182 = objc_msgSend_alert(v179, v180, v181);
    objc_msgSend_setLocalizedArguments_(v182, v183, v176);

    v186 = objc_msgSend_notificationInfo(v6, v184, v185);
    v189 = objc_msgSend_title(v186, v187, v188);
    v192 = objc_msgSend_notification(v7, v190, v191);
    v195 = objc_msgSend_alert(v192, v193, v194);
    objc_msgSend_setTitle_(v195, v196, v189);

    v199 = objc_msgSend_notificationInfo(v6, v197, v198);
    v202 = objc_msgSend_titleLocalizationKey(v199, v200, v201);
    v205 = objc_msgSend_notification(v7, v203, v204);
    v208 = objc_msgSend_alert(v205, v206, v207);
    objc_msgSend_setTitleLocalizedKey_(v208, v209, v202);

    v210 = MEMORY[0x277CBEB18];
    v213 = objc_msgSend_notificationInfo(v6, v211, v212);
    v216 = objc_msgSend_titleLocalizationArgs(v213, v214, v215);
    v218 = objc_msgSend_arrayWithArray_(v210, v217, v216);
    v221 = objc_msgSend_notification(v7, v219, v220);
    v224 = objc_msgSend_alert(v221, v222, v223);
    objc_msgSend_setTitleLocalizedArguments_(v224, v225, v218);

    v228 = objc_msgSend_notificationInfo(v6, v226, v227);
    v231 = objc_msgSend_subtitle(v228, v229, v230);
    v234 = objc_msgSend_notification(v7, v232, v233);
    v237 = objc_msgSend_alert(v234, v235, v236);
    objc_msgSend_setSubtitle_(v237, v238, v231);

    v241 = objc_msgSend_notificationInfo(v6, v239, v240);
    v244 = objc_msgSend_subtitleLocalizationKey(v241, v242, v243);
    v247 = objc_msgSend_notification(v7, v245, v246);
    v250 = objc_msgSend_alert(v247, v248, v249);
    objc_msgSend_setSubtitleLocalizedKey_(v250, v251, v244);

    v252 = MEMORY[0x277CBEB18];
    v255 = objc_msgSend_notificationInfo(v6, v253, v254);
    v258 = objc_msgSend_subtitleLocalizationArgs(v255, v256, v257);
    v260 = objc_msgSend_arrayWithArray_(v252, v259, v258);
    v263 = objc_msgSend_notification(v7, v261, v262);
    v266 = objc_msgSend_alert(v263, v264, v265);
    objc_msgSend_setSubtitleLocalizedArguments_(v266, v267, v260);

    v270 = objc_msgSend_notificationInfo(v6, v268, v269);
    v273 = objc_msgSend_alertActionLocalizationKey(v270, v271, v272);
    v276 = objc_msgSend_notification(v7, v274, v275);
    v279 = objc_msgSend_alert(v276, v277, v278);
    objc_msgSend_setActionLocKey_(v279, v280, v273);

    v283 = objc_msgSend_notificationInfo(v6, v281, v282);
    v286 = objc_msgSend_alertLaunchImage(v283, v284, v285);
    v289 = objc_msgSend_notification(v7, v287, v288);
    v292 = objc_msgSend_alert(v289, v290, v291);
    objc_msgSend_setLaunchImage_(v292, v293, v286);

    v296 = objc_msgSend_notificationInfo(v6, v294, v295);
    v299 = objc_msgSend_soundName(v296, v297, v298);
    v302 = objc_msgSend_notification(v7, v300, v301);
    v305 = objc_msgSend_alert(v302, v303, v304);
    objc_msgSend_setSoundName_(v305, v306, v299);

    v309 = objc_msgSend_notificationInfo(v6, v307, v308);
    v312 = objc_msgSend_category(v309, v310, v311);
    v315 = objc_msgSend_notification(v7, v313, v314);
    v318 = objc_msgSend_alert(v315, v316, v317);
    objc_msgSend_setCategory_(v318, v319, v312);
  }

  v34 = v7;
LABEL_43:

  v320 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)recordZoneFromPRecordZone:(id)a3 asAnonymousCKUserID:(id)a4 databaseScope:(int64_t)a5 error:(id *)a6 requiredFeaturesValidationFailureType:(id *)a7
{
  v175 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v15 = a4;
  if (!a7)
  {
    v166 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v166, v167, a2, self, @"CKDProtocolTranslator.m", 1773, @"requiredFeaturesValidationFailureType must not be nil");
  }

  v16 = objc_msgSend_defaultRecordZone(MEMORY[0x277CBC5E8], v13, v14);
  v19 = objc_msgSend_copy(v16, v17, v18);

  v22 = objc_msgSend_zoneIdentifier(v12, v20, v21);
  v25 = objc_msgSend_value(v22, v23, v24);
  v28 = objc_msgSend_name(v25, v26, v27);

  if (!_CKCheckArgument())
  {
    v98 = 0;
LABEL_23:
    v116 = 0;
    goto LABEL_45;
  }

  v31 = objc_msgSend_zoneIdentifier(v12, v29, v30);
  v172 = 0;
  v168 = v15;
  v33 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_asAnonymousCKUserID_error_(self, v32, v31, v15, &v172);
  v34 = v172;
  objc_msgSend_setZoneID_(v19, v35, v33);

  v38 = objc_msgSend_zoneID(v19, v36, v37);

  if (!v38)
  {
    if (a6)
    {
      v117 = v34;
      v116 = 0;
      *a6 = v34;
    }

    else
    {
      v116 = 0;
    }

    v98 = v34;
    v15 = v168;
    goto LABEL_45;
  }

  if (objc_msgSend_hasProtectionInfo(v12, v39, v40))
  {
    v43 = objc_msgSend_protectionInfo(v12, v41, v42);
    v46 = objc_msgSend_protectionInfo(v43, v44, v45);
    v49 = objc_msgSend_length(v46, v47, v48);

    if (v49)
    {
      v50 = objc_msgSend_protectionInfo(v12, v41, v42);
      v53 = objc_msgSend_protectionInfo(v50, v51, v52);
      objc_msgSend_setProtectionData_(v19, v54, v53);

      v57 = objc_msgSend_protectionInfo(v12, v55, v56);
      v60 = objc_msgSend_protectionInfoTag(v57, v58, v59);
      objc_msgSend_setProtectionEtag_(v19, v61, v60);

      if (objc_msgSend_hasZoneProtectionInfoKeysToRemove(v12, v62, v63))
      {
        v64 = objc_msgSend_zoneProtectionInfoKeysToRemove(v12, v41, v42);
        v66 = objc_msgSend_pcsKeysToRemoveFromPProtectionInfoKeysToRemove_(self, v65, v64);
        objc_msgSend_setZonePCSKeysToRemove_(v19, v67, v66);
      }
    }
  }

  if (objc_msgSend_hasRecordProtectionInfo(v12, v41, v42))
  {
    v70 = objc_msgSend_recordProtectionInfo(v12, v68, v69);
    v73 = objc_msgSend_protectionInfo(v70, v71, v72);
    v76 = objc_msgSend_length(v73, v74, v75);

    if (v76)
    {
      v77 = objc_msgSend_recordProtectionInfo(v12, v68, v69);
      v80 = objc_msgSend_protectionInfo(v77, v78, v79);
      objc_msgSend_setZoneishProtectionData_(v19, v81, v80);

      if (objc_msgSend_hasRecordProtectionInfoKeysToRemove(v12, v82, v83))
      {
        v86 = objc_msgSend_recordProtectionInfoKeysToRemove(v12, v84, v85);
        v88 = objc_msgSend_pcsKeysToRemoveFromPProtectionInfoKeysToRemove_(self, v87, v86);
        objc_msgSend_setZoneishPCSKeysToRemove_(v19, v89, v88);
      }

      objc_msgSend__setEncryptionScopeNoSideEffects_(v19, v84, 1);
    }
  }

  if (!objc_msgSend_hasSignedCryptoRequirements(v12, v68, v69))
  {
    goto LABEL_18;
  }

  v92 = objc_msgSend_signedCryptoRequirements(v12, v90, v91);
  v95 = objc_msgSend_zoneID(v19, v93, v94);
  v171 = v34;
  v97 = objc_msgSend_cryptoRequirementsFromPSignedCryptoRequirements_zoneID_error_requiredFeaturesValidationFailureType_(self, v96, v92, v95, &v171, a7);
  v98 = v171;

  if (v98 || !v97)
  {
    v15 = v168;
    if (a6)
    {
      v150 = v98;
      *a6 = v98;
    }

    goto LABEL_23;
  }

  v101 = objc_msgSend_requiredAdopterFeatures(v97, v99, v100);
  objc_msgSend_setRequiredFeatures_(v19, v102, v101);

  v105 = objc_msgSend_requiredAdopterFeatures(v97, v103, v104);
  objc_msgSend_setOriginalRequiredFeatures_(v19, v106, v105);

  v34 = 0;
LABEL_18:
  v15 = v168;
  if (objc_msgSend_hasShareId(v12, v90, v91))
  {
    v109 = objc_msgSend_shareId(v12, v107, v108);
    v170 = v34;
    v111 = objc_msgSend_recordIDFromPShareIdentifier_asAnonymousCKUserID_error_(self, v110, v109, v168, &v170);
    v98 = v170;

    if (v111)
    {
      v112 = objc_alloc(MEMORY[0x277CBC620]);
      v114 = objc_msgSend_initWithRecordID_action_(v112, v113, v111, 0);
      objc_msgSend_setShare_(v19, v115, v114);
    }
  }

  else
  {
    v98 = v34;
  }

  v118 = objc_msgSend_protectionInfoKeysToRemoves(v12, v107, v108);
  objc_msgSend_setInvitedKeysToRemove_(v19, v119, v118);

  if (objc_msgSend_hasParentReference(v12, v120, v121))
  {
    v124 = objc_msgSend_parentReference(v12, v122, v123);
    hasZoneIdentifier = objc_msgSend_hasZoneIdentifier(v124, v125, v126);

    if (hasZoneIdentifier)
    {
      v130 = objc_msgSend_parentReference(v12, v128, v129);
      v133 = objc_msgSend_zoneIdentifier(v130, v131, v132);
      v169 = v98;
      v135 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_asAnonymousCKUserID_error_(self, v134, v133, v168, &v169);
      v136 = v169;

      v139 = objc_msgSend_parentReference(v12, v137, v138);
      hasReferenceType = objc_msgSend_hasReferenceType(v139, v140, v141);

      if (hasReferenceType)
      {
        v145 = objc_msgSend_parentReference(v12, v143, v144);
        v148 = objc_msgSend_referenceType(v145, v146, v147);
        v149 = sub_225395698(v148);
      }

      else
      {
        v149 = 1;
      }

      v156 = objc_alloc(MEMORY[0x277CBC610]);
      v158 = objc_msgSend_initWithZoneID_action_(v156, v157, v135, v149);
      objc_msgSend_setParent_(v19, v159, v158);

      v98 = v136;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v151 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v152 = v151;
        v155 = objc_msgSend_zoneIdentifier(v12, v153, v154);
        *buf = 138412290;
        v174 = v155;
        _os_log_error_impl(&dword_22506F000, v152, OS_LOG_TYPE_ERROR, "Zone %@ has a parent reference that is missing a zone identifier.", buf, 0xCu);
      }
    }
  }

  if (objc_msgSend_hasEtag(v12, v122, v123))
  {
    v162 = objc_msgSend_etag(v12, v160, v161);
    objc_msgSend_setEtag_(v19, v163, v162);
  }

  v116 = v19;
LABEL_45:

  v164 = *MEMORY[0x277D85DE8];

  return v116;
}

- (id)pRecordZoneReferenceFromRecordZoneReference:(id)a3
{
  v4 = a3;
  v7 = objc_opt_new();
  if (v4)
  {
    v8 = objc_msgSend_zoneID(v4, v5, v6);
    v10 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v9, v8);
    objc_msgSend_setZoneIdentifier_(v7, v11, v10);

    v14 = objc_msgSend_referenceAction(v4, v12, v13);
    if (v14 == 1)
    {
      objc_msgSend_setReferenceType_(v7, v15, 1);
    }

    else
    {
      objc_msgSend_setReferenceType_(v7, v15, 2 * (v14 != 2));
    }
  }

  return v7;
}

- (id)cryptoRequirementsFromPSignedCryptoRequirements:(id)a3 zoneID:(id)a4 error:(id *)a5 requiredFeaturesValidationFailureType:(id *)a6
{
  *&v110[5] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v14 = a4;
  if (a6)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v101 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v101, v102, a2, self, @"CKDProtocolTranslator.m", 1863, @"requiredFeaturesValidationFailureType must not be nil");

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v103 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v103, v104, a2, self, @"CKDProtocolTranslator.m", 1864, @"Being asked to parse a nil SignedCryptoRequirements");

LABEL_3:
  v15 = objc_alloc_init(CKDCryptoRequirements);
  v18 = objc_msgSend_serializedRequirements(v11, v16, v17);
  if (!v18)
  {
    goto LABEL_14;
  }

  v21 = v18;
  v22 = objc_msgSend_signature(v11, v19, v20);
  if (!v22)
  {

LABEL_14:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v42 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v108 = v14;
      _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "Failed to parse required features for zone %{public}@: Requirements, signature or version is missing.", buf, 0xCu);
      if (!a5)
      {
        goto LABEL_19;
      }
    }

    else if (!a5)
    {
LABEL_19:
      v40 = 0;
      v41 = @"incompleteCryptoRequirements";
      goto LABEL_20;
    }

    *a5 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v43, *MEMORY[0x277CBC120], 1000, @"Failed to parse required features for zone %@. Missing attributes.", v14);
    goto LABEL_19;
  }

  v25 = v22;
  v26 = objc_msgSend_version(v11, v23, v24);

  if (!v26)
  {
    goto LABEL_14;
  }

  v29 = objc_msgSend_version(v11, v27, v28);
  v32 = MEMORY[0x277CBC980];
  if (v29 > *MEMORY[0x277CBC980])
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v91 = v33;
      v94 = objc_msgSend_version(v11, v92, v93);
      v95 = *v32;
      *buf = 138543874;
      v108 = v14;
      v109 = 1024;
      *v110 = v94;
      v110[2] = 1024;
      *&v110[3] = v95;
      _os_log_error_impl(&dword_22506F000, v91, OS_LOG_TYPE_ERROR, "Failed to parse required features for zone %{public}@: Unsupported signed requirements version: %d. The current OS supports versions up to %d.", buf, 0x18u);

      if (!a5)
      {
        goto LABEL_12;
      }
    }

    else if (!a5)
    {
LABEL_12:
      v40 = 0;
      v41 = @"unsupportedCryptoRequirementsVersion";
LABEL_20:
      *a6 = v41;
      goto LABEL_21;
    }

    v36 = MEMORY[0x277CBC560];
    v37 = *MEMORY[0x277CBC120];
    v38 = objc_msgSend_version(v11, v34, v35);
    *a5 = objc_msgSend_errorWithDomain_code_format_(v36, v39, v37, 5021, @"Failed to parse required features for zone %@. Version %d is required the current OS only supports versions up to %d.", v14, v38, *v32);;
    goto LABEL_12;
  }

  v105 = v15;
  v46 = objc_msgSend_pcsManager(self, v30, v31);
  v49 = objc_msgSend_signature(v11, v47, v48);
  v52 = objc_msgSend_serializedRequirements(v11, v50, v51);
  v106 = 0;
  v54 = objc_msgSend_validateFullPublicKeySignature_forSignedData_error_(v46, v53, v49, v52, &v106);
  v55 = v106;

  if (!v54 || v55)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = v105;
    v76 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v108 = v14;
      v109 = 2112;
      *v110 = v55;
      _os_log_error_impl(&dword_22506F000, v76, OS_LOG_TYPE_ERROR, "Failed to parse required features for zone %{public}@: Signature validation failed: %@", buf, 0x16u);
      if (!a5)
      {
        goto LABEL_40;
      }
    }

    else if (!a5)
    {
LABEL_40:
      *a6 = @"invalidCryptoRequirementsSignature";

      v40 = 0;
      goto LABEL_21;
    }

    *a5 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v77, *MEMORY[0x277CBC120], 5022, v55, @"Failed to validate the cryptographic signature of the required features for zone %@.", v14);
    goto LABEL_40;
  }

  v56 = [CKDPZoneCryptoFeatureRequirements alloc];
  v59 = objc_msgSend_serializedRequirements(v11, v57, v58);
  v61 = objc_msgSend_initWithData_(v56, v60, v59);

  if (!v61)
  {
    v15 = v105;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v87 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v108 = v14;
      _os_log_error_impl(&dword_22506F000, v87, OS_LOG_TYPE_ERROR, "Failed to parse required features for zone %{public}@: Failed to parse the required features from the signed blob.", buf, 0xCu);
      if (!a5)
      {
        goto LABEL_51;
      }
    }

    else if (!a5)
    {
LABEL_51:
      v40 = 0;
      v75 = @"invalidCryptoFeatureRequirements";
      goto LABEL_58;
    }

    *a5 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v88, *MEMORY[0x277CBC120], 1005, @"Failed to parse the required features for zone %@.", v14);
    goto LABEL_51;
  }

  v15 = v105;
  if (objc_msgSend_hasMinimumSchemaVersion(v61, v62, v63))
  {
    v66 = objc_msgSend_minimumSchemaVersion(v61, v64, v65);
    v67 = MEMORY[0x277CBC8D0];
    if (v66 > *MEMORY[0x277CBC8D0])
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v68 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v96 = v68;
        v99 = objc_msgSend_minimumSchemaVersion(v61, v97, v98);
        v100 = *v67;
        *buf = 138543874;
        v108 = v14;
        v109 = 1024;
        *v110 = v99;
        v110[2] = 1024;
        *&v110[3] = v100;
        _os_log_error_impl(&dword_22506F000, v96, OS_LOG_TYPE_ERROR, "Failed to parse required features for zone %{public}@: Unsupported minimum schema version: %d. The current OS supports schema versions up to %d.", buf, 0x18u);

        if (!a5)
        {
          goto LABEL_34;
        }
      }

      else if (!a5)
      {
LABEL_34:
        v40 = 0;
        v75 = @"unsupportedCryptoFeatureRequirementsVersion";
LABEL_58:
        *a6 = v75;
        goto LABEL_59;
      }

      v71 = MEMORY[0x277CBC560];
      v72 = *MEMORY[0x277CBC120];
      v73 = objc_msgSend_minimumSchemaVersion(v61, v69, v70);
      *a5 = objc_msgSend_errorWithDomain_code_format_(v71, v74, v72, 5021, @"Failed to parse required features for zone %@. Schema version %d or higher is required the current OS only supports schema versions up to %d.", v14, v73, *v67);;
      goto LABEL_34;
    }
  }

  if (!objc_msgSend_hasRequiredAdopterFeatures(v61, v64, v65) || (objc_msgSend_requiredAdopterFeatures(v61, v78, v79), v80 = objc_claimAutoreleasedReturnValue(), v80, !v80))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v89 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v108 = v14;
      _os_log_error_impl(&dword_22506F000, v89, OS_LOG_TYPE_ERROR, "Failed to parse required features for zone %{public}@: The required features are missing.", buf, 0xCu);
      if (!a5)
      {
        goto LABEL_57;
      }
    }

    else if (!a5)
    {
LABEL_57:
      v40 = 0;
      v75 = @"invalidAdopterFeatures";
      goto LABEL_58;
    }

    *a5 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v90, *MEMORY[0x277CBC120], 1005, @"Failed to parse required features for zone with ID %@. The required features are missing.", v14);
    goto LABEL_57;
  }

  v83 = objc_msgSend_requiredAdopterFeatures(v61, v81, v82);
  v85 = objc_msgSend_requiredFeatureSetFromPAdopterFeatureSet_(self, v84, v83);

  objc_msgSend_setRequiredAdopterFeatures_(v105, v86, v85);
  v40 = v105;

LABEL_59:
LABEL_21:

  v44 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)pRecordZoneFromRecordZone:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_zoneID(v4, v6, v7);
  v10 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v9, v8);
  objc_msgSend_setZoneIdentifier_(v5, v11, v10);

  v14 = objc_msgSend_protectionData(v4, v12, v13);

  v17 = MEMORY[0x277CBC810];
  if (v14)
  {
    v18 = objc_opt_new();
    objc_msgSend_setProtectionInfo_(v5, v19, v18);

    v22 = objc_msgSend_protectionData(v4, v20, v21);
    v25 = objc_msgSend_protectionInfo(v5, v23, v24);
    objc_msgSend_setProtectionInfo_(v25, v26, v22);

    v29 = objc_msgSend_protectionEtag(v4, v27, v28);
    v32 = objc_msgSend_protectionInfo(v5, v30, v31);
    objc_msgSend_setProtectionInfoTag_(v32, v33, v29);

    if (*v17 == 1)
    {
      if (objc_msgSend_applyPCSKeysToRemoveForTesting(v4, v15, v16))
      {
        v34 = objc_msgSend_zonePCSKeysToRemove(v4, v15, v16);

        if (v34)
        {
          v35 = objc_msgSend_protectionEtag(v4, v15, v16);
          v38 = objc_msgSend_zonePCSKeysToRemove(v4, v36, v37);
          objc_msgSend_setEtag_(v38, v39, v35);

          v42 = objc_msgSend_zonePCSKeysToRemove(v4, v40, v41);
          v44 = objc_msgSend_pProtectionInfoKeysToRemoveFromPCSKeysToRemove_(self, v43, v42);
          objc_msgSend_setZoneProtectionInfoKeysToRemove_(v5, v45, v44);
        }
      }
    }
  }

  v46 = objc_msgSend_zoneishProtectionData(v4, v15, v16);

  if (v46)
  {
    v49 = objc_opt_new();
    objc_msgSend_setRecordProtectionInfo_(v5, v50, v49);

    v53 = objc_msgSend_zoneishProtectionData(v4, v51, v52);
    v56 = objc_msgSend_recordProtectionInfo(v5, v54, v55);
    objc_msgSend_setProtectionInfo_(v56, v57, v53);

    if (*v17 == 1)
    {
      if (objc_msgSend_applyPCSKeysToRemoveForTesting(v4, v47, v48))
      {
        v58 = objc_msgSend_zoneishPCSKeysToRemove(v4, v47, v48);

        if (v58)
        {
          v59 = objc_msgSend_zoneishProtectionData(v4, v47, v48);
          v61 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v60, v59);
          v64 = objc_msgSend_zoneishPCSKeysToRemove(v4, v62, v63);
          objc_msgSend_setEtag_(v64, v65, v61);

          v68 = objc_msgSend_zoneishPCSKeysToRemove(v4, v66, v67);
          v70 = objc_msgSend_pProtectionInfoKeysToRemoveFromPCSKeysToRemove_(self, v69, v68);
          objc_msgSend_setRecordProtectionInfoKeysToRemove_(v5, v71, v70);
        }
      }
    }
  }

  if (objc_msgSend_hasUpdatedExpirationTimeInterval(v4, v47, v48))
  {
    v74 = objc_opt_new();
    objc_msgSend_setStorageExpiration_(v5, v75, v74);

    v78 = objc_msgSend_updatedExpirationTimeInterval(v4, v76, v77);

    v81 = objc_msgSend_storageExpiration(v5, v79, v80);
    v83 = v81;
    if (v78)
    {
      objc_msgSend_setOperationType_(v81, v82, 2);

      v83 = objc_msgSend_updatedExpirationTimeInterval(v4, v84, v85);
      v88 = objc_msgSend_unsignedLongLongValue(v83, v86, v87);
      v91 = objc_msgSend_storageExpiration(v5, v89, v90);
      objc_msgSend_setDuration_(v91, v92, v88);
    }

    else
    {
      objc_msgSend_setOperationType_(v81, v82, 1);
    }
  }

  if (objc_msgSend_hasUpdatedParent(v4, v72, v73))
  {
    v95 = objc_msgSend_parent(v4, v93, v94);
    v97 = objc_msgSend_pRecordZoneReferenceFromRecordZoneReference_(self, v96, v95);
    objc_msgSend_setParentReference_(v5, v98, v97);
  }

  v99 = objc_msgSend_etag(v4, v93, v94);

  if (v99)
  {
    v102 = objc_msgSend_etag(v4, v100, v101);
    objc_msgSend_setEtag_(v5, v103, v102);
  }

  return v5;
}

- (unint64_t)capabilitiesFromPZoneCapabilities:(id)a3
{
  v3 = a3;
  if (objc_msgSend_atomicSaves(v3, v4, v5))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | objc_msgSend_fetchChanges(v3, v6, v7);
  if (objc_msgSend_hierarchicalSharing(v3, v10, v11))
  {
    v14 = v9 | 4;
  }

  else
  {
    v14 = v9;
  }

  v15 = objc_msgSend_zoneSharing(v3, v12, v13);

  if (v15)
  {
    return v14 | 8;
  }

  else
  {
    return v14;
  }
}

- (id)featureSetFromPAdopterFeatureSet:(id)a3 ofFeatureClass:(Class)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v5;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v30, v34, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [a4 alloc];
        v17 = objc_msgSend_key(v13, v15, v16, v30);
        v20 = objc_msgSend_value(v13, v18, v19);
        v22 = objc_msgSend_initWithName_value_(v14, v21, v17, v20);
        objc_msgSend_addObject_(v6, v23, v22);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v24, &v30, v34, 16);
    }

    while (v10);
  }

  v25 = objc_alloc(MEMORY[0x277CBC368]);
  v27 = objc_msgSend_initWithFeatures_(v25, v26, v6);

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)pAdopterFeatureSetFromFeatureSet:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = objc_msgSend_features(v3, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v27, v31, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = objc_opt_new();
        v17 = objc_msgSend_name(v13, v15, v16);
        objc_msgSend_setKey_(v14, v18, v17);

        v21 = objc_msgSend_value(v13, v19, v20);
        objc_msgSend_setValue_(v14, v22, v21);

        objc_msgSend_addObject_(v4, v23, v14);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v24, &v27, v31, 16);
    }

    while (v10);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)pAdopterFeatureSetFromRequiredFeatures:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_fieldFeatures(v4, v6, v7);
  v10 = objc_msgSend_pAdopterFeatureSetFromFeatureSet_(self, v9, v8);
  v13 = objc_msgSend_mutableCopy(v10, v11, v12);
  objc_msgSend_setFieldFeatures_(v5, v14, v13);

  v17 = objc_msgSend_recordFeatures(v4, v15, v16);
  v19 = objc_msgSend_pAdopterFeatureSetFromFeatureSet_(self, v18, v17);
  v22 = objc_msgSend_mutableCopy(v19, v20, v21);
  objc_msgSend_setRecordFeatures_(v5, v23, v22);

  v26 = objc_msgSend_zoneFeatures(v4, v24, v25);

  v28 = objc_msgSend_pAdopterFeatureSetFromFeatureSet_(self, v27, v26);
  v31 = objc_msgSend_mutableCopy(v28, v29, v30);
  objc_msgSend_setZoneFeatures_(v5, v32, v31);

  return v5;
}

- (id)requiredFeatureSetFromPAdopterFeatureSet:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_fieldFeatures(v4, v5, v6);
  v8 = objc_opt_class();
  v10 = objc_msgSend_featureSetFromPAdopterFeatureSet_ofFeatureClass_(self, v9, v7, v8);

  v13 = objc_msgSend_recordFeatures(v4, v11, v12);
  v14 = objc_opt_class();
  v16 = objc_msgSend_featureSetFromPAdopterFeatureSet_ofFeatureClass_(self, v15, v13, v14);

  v19 = objc_msgSend_zoneFeatures(v4, v17, v18);

  v20 = objc_opt_class();
  v22 = objc_msgSend_featureSetFromPAdopterFeatureSet_ofFeatureClass_(self, v21, v19, v20);

  v23 = objc_alloc(MEMORY[0x277CBC638]);
  v26 = objc_msgSend_features(v22, v24, v25);
  v29 = objc_msgSend_features(v16, v27, v28);
  v32 = objc_msgSend_features(v10, v30, v31);
  v34 = objc_msgSend_initWithZoneFeatures_recordFeatures_fieldFeatures_(v23, v33, v26, v29, v32);

  return v34;
}

- (id)pZoneCryptoFeatureRequirmentsFromZone:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_requiredFeatures(v4, v6, v7);
  v10 = objc_msgSend_pAdopterFeatureSetFromRequiredFeatures_(self, v9, v8);
  objc_msgSend_setRequiredAdopterFeatures_(v5, v11, v10);

  v14 = objc_msgSend_zoneID(v4, v12, v13);

  v16 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v15, v14);
  objc_msgSend_setZoneIdentifier_(v5, v17, v16);

  objc_msgSend_setMinimumSchemaVersion_(v5, v18, *MEMORY[0x277CBC8D8]);

  return v5;
}

- (void)addCapability:(id)a3 to:(id)a4
{
  v19 = a4;
  v5 = a3;
  v8 = objc_msgSend_name(v5, v6, v7);
  v10 = objc_msgSend_objectForKey_(v19, v9, v8);

  if (!v10)
  {
    v10 = objc_opt_new();
  }

  v13 = objc_msgSend_value(v5, v11, v12);
  objc_msgSend_addObject_(v10, v14, v13);

  v17 = objc_msgSend_name(v5, v15, v16);

  objc_msgSend_setObject_forKey_(v19, v18, v10, v17);
}

- (id)pCapabilitiesFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2253A4454;
  v8[3] = &unk_27854A048;
  v5 = v4;
  v9 = v5;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v3, v6, v8);

  return v5;
}

- (id)_capabilitiesFromPCapabilities:(id)a3 level:(int)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_2253A45E0;
  v19 = &unk_27854CE28;
  v20 = v6;
  v21 = a4;
  v7 = v6;
  objc_msgSend_enumerateObjectsUsingBlock_(v5, v8, &v16);

  v9 = MEMORY[0x277CBC2B0];
  v12 = objc_msgSend_copy(v7, v10, v11, v16, v17, v18, v19);
  v14 = objc_msgSend_pruneAndSort_(v9, v13, v12);

  return v14;
}

- (id)deviceCapabilitySetFromPDeviceCapabilitySet:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_fieldLevelCapabilities(v4, v5, v6);
  v9 = objc_msgSend__capabilitiesFromPCapabilities_level_(self, v8, v7, 3);

  v12 = objc_msgSend_recordLevelCapabilities(v4, v10, v11);
  v14 = objc_msgSend__capabilitiesFromPCapabilities_level_(self, v13, v12, 2);

  v17 = objc_msgSend_zoneLevelCapabilities(v4, v15, v16);

  v19 = objc_msgSend__capabilitiesFromPCapabilities_level_(self, v18, v17, 1);

  v20 = objc_opt_new();
  objc_msgSend_addObjectsFromArray_(v20, v21, v9);
  objc_msgSend_addObjectsFromArray_(v20, v22, v14);
  objc_msgSend_addObjectsFromArray_(v20, v23, v19);

  return v20;
}

- (id)pDeviceCapabilitiesFromDeviceCapabilitySet:(id)a3 withDeviceID:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  objc_msgSend_setVersion_(v8, v9, 1);
  v12 = objc_msgSend_now(MEMORY[0x277CBEAA8], v10, v11);
  v14 = objc_msgSend_pDateFromDate_(self, v13, v12);
  objc_msgSend_setTime_(v8, v15, v14);

  v18 = objc_msgSend_containerScopedUserID(self, v16, v17);
  v21 = objc_msgSend_CKDPIdentifier_User(v18, v19, v20);
  objc_msgSend_setUserIdentifier_(v8, v22, v21);

  v59 = v7;
  v25 = objc_msgSend_CKDPIdentifier_Device(v7, v23, v24);
  objc_msgSend_setDeviceIdentifier_(v8, v26, v25);

  v60 = v6;
  if (v6)
  {
    v28 = objc_msgSend_pruneAndSort_(MEMORY[0x277CBC2B0], v27, v6);
  }

  else
  {
    v28 = objc_opt_new();
  }

  v29 = v28;
  v30 = objc_opt_new();
  v31 = objc_opt_new();
  v32 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v33 = v29;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v61, v65, 16);
  if (v35)
  {
    v38 = v35;
    v39 = *v62;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v62 != v39)
        {
          objc_enumerationMutation(v33);
        }

        v41 = *(*(&v61 + 1) + 8 * i);
        v42 = objc_msgSend_level(v41, v36, v37);
        v43 = v30;
        if (v42 == 1)
        {
          goto LABEL_14;
        }

        if (v42 == 3)
        {
          v43 = v32;
LABEL_14:
          objc_msgSend_addCapability_to_(self, v36, v41, v43);
          continue;
        }

        v43 = v31;
        if (v42 == 2)
        {
          goto LABEL_14;
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v61, v65, 16);
    }

    while (v38);
  }

  if (objc_msgSend_count(v30, v44, v45))
  {
    v48 = objc_msgSend_pCapabilitiesFrom_(self, v46, v30);
    objc_msgSend_setZoneLevelCapabilities_(v8, v49, v48);
  }

  if (objc_msgSend_count(v31, v46, v47))
  {
    v52 = objc_msgSend_pCapabilitiesFrom_(self, v50, v31);
    objc_msgSend_setRecordLevelCapabilities_(v8, v53, v52);
  }

  if (objc_msgSend_count(v32, v50, v51))
  {
    v55 = objc_msgSend_pCapabilitiesFrom_(self, v54, v32);
    objc_msgSend_setFieldLevelCapabilities_(v8, v56, v55);
  }

  v57 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)pSignedVersionedBlobFrom:(id)a3 signature:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  objc_msgSend_setVersion_(v7, v8, 1);
  objc_msgSend_setSerializedObject_(v7, v9, v6);

  objc_msgSend_setSignature_(v7, v10, v5);

  return v7;
}

- (id)pZoneUsageFromZoneID:(id)a3 at:(id)a4 withDeviceID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  objc_msgSend_setVersion_(v11, v12, 1);
  v14 = objc_msgSend_pDateFromDate_(self, v13, v9);

  objc_msgSend_setTime_(v11, v15, v14);
  v18 = objc_msgSend_CKDPIdentifier_Device(v8, v16, v17);

  objc_msgSend_setDeviceIdentifier_(v11, v19, v18);
  v22 = objc_msgSend_containerScopedUserID(self, v20, v21);
  v25 = objc_msgSend_CKDPIdentifier_User(v22, v23, v24);
  objc_msgSend_setUserIdentifier_(v11, v26, v25);

  v28 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(self, v27, v10);

  objc_msgSend_setZoneIdentifier_(v11, v29, v28);

  return v11;
}

- (id)pShareUsageFromShareRecordID:(id)a3 at:(id)a4 withDeviceID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  objc_msgSend_setVersion_(v11, v12, 1);
  v14 = objc_msgSend_pDateFromDate_(self, v13, v9);

  objc_msgSend_setTime_(v11, v15, v14);
  v18 = objc_msgSend_CKDPIdentifier_Device(v8, v16, v17);

  objc_msgSend_setDeviceIdentifier_(v11, v19, v18);
  v22 = objc_msgSend_containerScopedUserID(self, v20, v21);
  v25 = objc_msgSend_CKDPIdentifier_User(v22, v23, v24);
  objc_msgSend_setUserIdentifier_(v11, v26, v25);

  v28 = objc_msgSend_pShareIdentifierFromRecordID_(self, v27, v10);

  objc_msgSend_setShareIdentifier_(v11, v29, v28);

  return v11;
}

- (id)containerPrivacySettingsFromPContainerPrivacySettings:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_applicationContainer(v3, v4, v5);
  if (objc_msgSend_applicationContainerEnvironment(v3, v7, v8) == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = objc_alloc(MEMORY[0x277CBC220]);
  v12 = objc_msgSend_initWithContainerIdentifier_environment_(v10, v11, v6, v9);
  v15 = objc_msgSend_userPrivacySettings(v3, v13, v14);
  v18 = objc_msgSend_discoverable(v15, v16, v17);

  v21 = objc_msgSend_applicationBundles(v3, v19, v20);

  if (v21)
  {
    v24 = MEMORY[0x277CBEB98];
    v25 = objc_msgSend_applicationBundles(v3, v22, v23);
    v21 = objc_msgSend_setWithArray_(v24, v26, v25);
  }

  v27 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v22, &unk_2838C8F28);
  isEqual = objc_msgSend_isEqual_(v21, v28, v27);

  if (isEqual)
  {
    v31 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v30, v6);

    v21 = v31;
  }

  v32 = [CKDContainerPrivacySettings alloc];
  v34 = objc_msgSend_initWithContainerID_applicationBundleIDs_discoverable_(v32, v33, v12, v21, v18);

  return v34;
}

- (id)shareFromPShare:(id)a3 asAnonymousCKUserID:(id)a4 error:(id *)a5
{
  v233 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ((objc_msgSend_hasShareId(v8, v10, v11) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v182 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v227 = v8;
      _os_log_debug_impl(&dword_22506F000, v182, OS_LOG_TYPE_DEBUG, "Share has no share ID: %@", buf, 0xCu);
    }

    v181 = 0;
    goto LABEL_95;
  }

  v14 = objc_msgSend_shareId(v8, v12, v13);
  v16 = objc_msgSend_recordIDFromPShareIdentifier_asAnonymousCKUserID_error_(self, v15, v14, v9, a5);

  if (!v16)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v183 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v193 = v183;
      v196 = objc_msgSend_shareId(v8, v194, v195);
      *buf = 138543362;
      v227 = v196;
      _os_log_debug_impl(&dword_22506F000, v193, OS_LOG_TYPE_DEBUG, "Couldn't create a record ID from share ID %{public}@", buf, 0xCu);
    }

    v181 = 0;
    goto LABEL_94;
  }

  v17 = objc_alloc(MEMORY[0x277CBC680]);
  inited = objc_msgSend_initInternalWithShareRecordID_(v17, v18, v16);
  if (!inited)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v186 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v227 = v16;
      _os_log_debug_impl(&dword_22506F000, v186, OS_LOG_TYPE_DEBUG, "Couldn't create a share with ID %{public}@. Giving up.", buf, 0xCu);
    }

    v181 = 0;
    goto LABEL_93;
  }

  if (objc_msgSend_hasEtag(v8, v19, v20))
  {
    v23 = objc_msgSend_etag(v8, v21, v22);
    objc_msgSend_setEtag_(inited, v24, v23);
  }

  v26 = objc_msgSend_publicAccess(v8, v21, v22) - 1;
  if (v26 < 3)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = 0;
  }

  objc_msgSend__setPublicPermissionNoSideEffects_(inited, v25, v27);
  v30 = objc_msgSend_invitedKeyToRemoves(v8, v28, v29);
  objc_msgSend_setInvitedKeysToRemove_(inited, v31, v30);

  if (objc_msgSend_hasPublisherModelType(v8, v32, v33))
  {
    v36 = objc_msgSend_publisherModelType(v8, v34, v35) - 1;
    if (v36 <= 3)
    {
      objc_msgSend_setParticipantVisibility_(inited, v34, qword_225447FD0[v36]);
    }
  }

  v204 = a5;
  if (objc_msgSend_hasParticipantSelfRemovalBehavior(v8, v34, v35))
  {
    v39 = objc_msgSend_participantSelfRemovalBehavior(v8, v37, v38);
    if (v39 - 1 <= 2)
    {
      objc_msgSend_setParticipantSelfRemovalBehavior_(inited, v37, v39);
    }
  }

  v40 = objc_msgSend_anonymousPublicAccess(v8, v37, v38);
  objc_msgSend_setAllowsAnonymousPublicAccess_(inited, v41, v40);
  v42 = objc_alloc(MEMORY[0x277CBEB18]);
  v45 = objc_msgSend_participants(v8, v43, v44);
  v48 = objc_msgSend_count(v45, v46, v47);
  v209 = objc_msgSend_initWithCapacity_(v42, v49, v48);

  objc_msgSend_resetFetchedParticipants(inited, v50, v51);
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v205 = v8;
  obj = objc_msgSend_participants(v8, v52, v53);
  v207 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v54, &v220, v232, 16);
  if (v207)
  {
    v206 = *v221;
    do
    {
      v56 = 0;
      do
      {
        if (*v221 != v206)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(*(&v220 + 1) + 8 * v56);
        v219 = 0;
        v58 = objc_msgSend_shareParticipantFromPParticipant_shareID_shouldMatchCurrentUserParticipantByPublicKey_error_(self, v55, v57, v16, 0, &v219);
        v61 = v219;
        if (!v58)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v8 = v205;
          v184 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v227 = v57;
            v228 = 2114;
            v229 = v16;
            v230 = 2112;
            v231 = v61;
            _os_log_debug_impl(&dword_22506F000, v184, OS_LOG_TYPE_DEBUG, "Failed to convert participant %@ for share %{public}@: %@", buf, 0x20u);
            if (!v204)
            {
              goto LABEL_91;
            }
          }

          else if (!v204)
          {
            goto LABEL_91;
          }

          v185 = v61;
          v181 = 0;
          *v204 = v61;
          goto LABEL_92;
        }

        v62 = self;
        v63 = v16;
        if (objc_msgSend_role(v58, v59, v60) == 4)
        {
          v66 = objc_msgSend_publicPermission(inited, v64, v65);
          objc_msgSend_setPermission_(v58, v67, v66);
        }

        v68 = objc_msgSend_userIdentity(v58, v64, v65);
        v71 = objc_msgSend_userRecordID(v68, v69, v70);
        v74 = objc_msgSend_recordName(v71, v72, v73);
        v75 = v9;
        isEqualToString = objc_msgSend_isEqualToString_(v9, v76, v74);

        if (isEqualToString)
        {
          objc_msgSend_setIsCurrentUser_(v58, v78, 1);
        }

        objc_msgSend_addObject_(v209, v78, v58);
        objc_msgSend_registerFetchedParticipant_(inited, v79, v58);

        ++v56;
        v9 = v75;
        v16 = v63;
        self = v62;
      }

      while (v207 != v56);
      v207 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, &v220, v232, 16);
    }

    while (v207);
  }

  objc_msgSend_setAllParticipants_(inited, v80, v209);
  v83 = objc_msgSend_currentUserParticipant(inited, v81, v82);

  v8 = v205;
  if (!v83)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v84 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v197 = v84;
      objc_msgSend_recordID(inited, v198, v199);
      v201 = v200 = v9;
      *buf = 138543362;
      v227 = v201;
      _os_log_debug_impl(&dword_22506F000, v197, OS_LOG_TYPE_DEBUG, "Matching public keys to find current user participant on share %{public}@", buf, 0xCu);

      v9 = v200;
    }

    v87 = objc_msgSend_identityDelegate(self, v85, v86);
    objc_msgSend_markCurrentUserParticipantViaPublicKeyMatchingForShare_(v87, v88, inited);
  }

  v202 = v9;
  v89 = objc_alloc(MEMORY[0x277CBEB18]);
  v92 = objc_msgSend_requestingAccess(v205, v90, v91);
  v95 = objc_msgSend_requestingAccessUsersCount(v92, v93, v94);
  obj = objc_msgSend_initWithCapacity_(v89, v96, v95);

  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  v99 = objc_msgSend_requestingAccess(v205, v97, v98);
  v61 = objc_msgSend_requestingAccessUsers(v99, v100, v101);

  v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v102, &v215, v225, 16);
  if (v103)
  {
    v105 = v103;
    v106 = *v216;
    do
    {
      for (i = 0; i != v105; ++i)
      {
        if (*v216 != v106)
        {
          objc_enumerationMutation(v61);
        }

        v108 = *(*(&v215 + 1) + 8 * i);
        v109 = objc_msgSend_shareRequesterFromPRequester_(self, v104, v108, v202);
        if (!v109)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v9 = v202;
          v187 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v227 = v108;
            v228 = 2114;
            v229 = v16;
            _os_log_debug_impl(&dword_22506F000, v187, OS_LOG_TYPE_DEBUG, "Failed to convert requester %@ for share %{public}@", buf, 0x16u);
            if (v204)
            {
              goto LABEL_84;
            }
          }

          else if (v204)
          {
LABEL_84:
            objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v188, *MEMORY[0x277CBC120], 1005, @"Unable to parse requester");
            *v204 = v181 = 0;
            goto LABEL_92;
          }

LABEL_91:
          v181 = 0;
          goto LABEL_92;
        }

        v111 = v109;
        objc_msgSend_addObject_(obj, v110, v109);
      }

      v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v104, &v215, v225, 16);
    }

    while (v105);
  }

  objc_msgSend_setRequesters_(inited, v112, obj);
  v113 = objc_alloc(MEMORY[0x277CBEB18]);
  v116 = objc_msgSend_blockedAccess(v205, v114, v115);
  v119 = objc_msgSend_blockedUsersCount(v116, v117, v118);
  v61 = objc_msgSend_initWithCapacity_(v113, v120, v119);

  v213 = 0u;
  v214 = 0u;
  v211 = 0u;
  v212 = 0u;
  v123 = objc_msgSend_blockedAccess(v205, v121, v122);
  v126 = objc_msgSend_blockedUsers(v123, v124, v125);

  v127 = v126;
  v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v126, v128, &v211, v224, 16);
  if (!v129)
  {
    goto LABEL_49;
  }

  v131 = v129;
  v132 = *v212;
  while (2)
  {
    for (j = 0; j != v131; ++j)
    {
      if (*v212 != v132)
      {
        objc_enumerationMutation(v127);
      }

      v134 = *(*(&v211 + 1) + 8 * j);
      v135 = objc_msgSend_blockedIdentityFromPBlockedUser_(self, v130, v134, v202);
      if (!v135)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v9 = v202;
        v189 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v227 = v134;
          v228 = 2114;
          v229 = v16;
          _os_log_debug_impl(&dword_22506F000, v189, OS_LOG_TYPE_DEBUG, "Failed to convert blocked identity %@ for share %{public}@", buf, 0x16u);
          if (!v204)
          {
            goto LABEL_90;
          }
        }

        else if (!v204)
        {
LABEL_90:

          goto LABEL_91;
        }

        *v204 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v190, *MEMORY[0x277CBC120], 1005, @"Unable to parse blocked user");
        goto LABEL_90;
      }

      v137 = v135;
      objc_msgSend_addObject_(v61, v136, v135);
    }

    v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v127, v130, &v211, v224, 16);
    if (v131)
    {
      continue;
    }

    break;
  }

LABEL_49:

  objc_msgSend_setBlockedIdentities_(inited, v138, v61);
  if (objc_msgSend_hasDenyAccessRequests(v205, v139, v140))
  {
    v143 = objc_msgSend_denyAccessRequests(v205, v141, v142);
    objc_msgSend__setAccessRequestsEnabledNoSideEffects_(inited, v144, v143 ^ 1u);
  }

  if (objc_msgSend_hasShortTokenRoutingKey(v205, v141, v142, v202))
  {
    v147 = objc_msgSend_shortTokenRoutingKey(v205, v145, v146);
    objc_msgSend_setRoutingKey_(inited, v148, v147);
  }

  if (objc_msgSend_hasDisplayedHostname(v205, v145, v146))
  {
    v151 = objc_msgSend_displayedHostname(v205, v149, v150);
    objc_msgSend_setDisplayedHostname_(inited, v152, v151);
  }

  if (objc_msgSend_hasInvitedPcs(v205, v149, v150))
  {
    v155 = objc_msgSend_invitedPcs(v205, v153, v154);
    v158 = objc_msgSend_protectionInfo(v155, v156, v157);
    objc_msgSend_setInvitedProtectionData_(inited, v159, v158);

    v162 = objc_msgSend_invitedPcs(v205, v160, v161);
    v165 = objc_msgSend_protectionInfoTag(v162, v163, v164);
    objc_msgSend_setInvitedProtectionEtag_(inited, v166, v165);
  }

  if (objc_msgSend_hasSelfAddedPcs(v205, v153, v154))
  {
    v169 = objc_msgSend_selfAddedPcs(v205, v167, v168);
    v172 = objc_msgSend_protectionInfo(v169, v170, v171);
    objc_msgSend_setPublicProtectionData_(inited, v173, v172);

    v176 = objc_msgSend_selfAddedPcs(v205, v174, v175);
    v179 = objc_msgSend_protectionInfoTag(v176, v177, v178);
    objc_msgSend_setPublicProtectionEtag_(inited, v180, v179);
  }

  v181 = inited;
  v9 = v203;
LABEL_92:

LABEL_93:
LABEL_94:

LABEL_95:
  v191 = *MEMORY[0x277D85DE8];

  return v181;
}

- (id)shareParticipantFromPParticipant:(id)a3 shareID:(id)a4 shouldMatchCurrentUserParticipantByPublicKey:(BOOL)a5 error:(id *)a6
{
  v291 = a5;
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc(MEMORY[0x277CBC7C0]);
  inited = objc_msgSend_initInternal(v11, v12, v13);
  v17 = objc_msgSend_userId(v9, v15, v16);
  hasName = objc_msgSend_hasName(v17, v18, v19);

  if (!hasName)
  {
    v28 = 0;
LABEL_5:
    if (objc_msgSend_hasContactInformation(v9, v21, v22))
    {
      v32 = objc_msgSend_contactInformation(v9, v30, v31);
      hasEmailAddress = objc_msgSend_hasEmailAddress(v32, v33, v34);

      if (hasEmailAddress)
      {
        v38 = objc_alloc(MEMORY[0x277CBC7C8]);
        v41 = objc_msgSend_contactInformation(v9, v39, v40);
        v44 = objc_msgSend_emailAddress(v41, v42, v43);
        v46 = objc_msgSend_initWithEmailAddress_(v38, v45, v44);
        objc_msgSend_setLookupInfo_(inited, v47, v46);
      }

      v48 = objc_msgSend_contactInformation(v9, v36, v37);
      hasPhoneNumber = objc_msgSend_hasPhoneNumber(v48, v49, v50);

      if (hasPhoneNumber)
      {
        v54 = objc_alloc(MEMORY[0x277CBC7C8]);
        v57 = objc_msgSend_contactInformation(v9, v55, v56);
        v60 = objc_msgSend_phoneNumber(v57, v58, v59);
        v62 = objc_msgSend_initWithPhoneNumber_(v54, v61, v60);
        objc_msgSend_setLookupInfo_(inited, v63, v62);
      }

      v64 = objc_msgSend_contactInformation(v9, v52, v53);
      hasContainerScopedUserId = objc_msgSend_hasContainerScopedUserId(v64, v65, v66);

      if (hasContainerScopedUserId)
      {
        v70 = objc_alloc(MEMORY[0x277CBC7C8]);
        v73 = objc_msgSend_contactInformation(v9, v71, v72);
        v76 = objc_msgSend_containerScopedUserId(v73, v74, v75);
        v78 = objc_msgSend_recordIDFromPUserName_error_(self, v77, v76, 0);
        v80 = objc_msgSend_initWithUserRecordID_(v70, v79, v78);
        objc_msgSend_setLookupInfo_(inited, v81, v80);
      }

      v82 = objc_msgSend_contactInformation(v9, v68, v69);
      v85 = objc_msgSend_firstName(v82, v83, v84);
      v88 = objc_msgSend_nameComponents(inited, v86, v87);
      objc_msgSend_setGivenName_(v88, v89, v85);

      v92 = objc_msgSend_contactInformation(v9, v90, v91);
      v95 = objc_msgSend_lastName(v92, v93, v94);
      v98 = objc_msgSend_nameComponents(inited, v96, v97);
      objc_msgSend_setFamilyName_(v98, v99, v95);
    }

    if (objc_msgSend_hasOutOfNetworkPrivateKey(v9, v30, v31))
    {
      v102 = objc_msgSend_outOfNetworkPrivateKey(v9, v100, v101);
      objc_msgSend_setOutOfNetworkPrivateKey_(inited, v103, v102);
    }

    if (objc_msgSend_hasPublicKey(v9, v100, v101))
    {
      v106 = objc_msgSend_publicKey(v9, v104, v105);
      v109 = objc_msgSend_protectionInfo(v106, v107, v108);
      objc_msgSend_setPublicSharingKey_(inited, v110, v109);
    }

    v111 = objc_msgSend_publicKeyVersion(v9, v104, v105);
    objc_msgSend_setPublicKeyVersion_(inited, v112, v111);
    if (objc_msgSend_hasIsInNetwork(v9, v113, v114))
    {
      v117 = objc_msgSend_isInNetwork(v9, v115, v116);
      objc_msgSend_setHasiCloudAccount_(inited, v118, v117);
    }

    else if (objc_msgSend_hasOutOfNetworkKeyType(v9, v115, v116))
    {
      objc_msgSend_setHasiCloudAccount_(inited, v119, 0);
    }

    else
    {
      v121 = objc_msgSend_hasOutOfNetworkPrivateKey(v9, v119, v120) ^ 1;
      objc_msgSend_setHasiCloudAccount_(inited, v122, v121);
    }

    v123 = objc_alloc(MEMORY[0x277CBC6A0]);
    v125 = objc_msgSend_initInternalWithUserIdentity_(v123, v124, inited);
    v128 = objc_msgSend_participantId(v9, v126, v127);
    v131 = objc_msgSend_name(v128, v129, v130);
    objc_msgSend_setParticipantID_(v125, v132, v131);

    objc_msgSend_setShareID_(v125, v133, v10);
    if (objc_msgSend_hasInviterId(v9, v134, v135))
    {
      v138 = objc_msgSend_inviterId(v9, v136, v137);
      v141 = objc_msgSend_name(v138, v139, v140);
      objc_msgSend_setInviterID_(v125, v142, v141);
    }

    if (objc_msgSend_hasParticipantType(v9, v136, v137))
    {
      v145 = objc_msgSend_participantType(v9, v143, v144);
      v148 = objc_msgSend_clientSDKVersion(self, v146, v147);
      isAppleInternal = objc_msgSend_isAppleInternal(self, v149, v150);
      v152 = sub_2253965F8(v145, v148, isAppleInternal);
      objc_msgSend_setRole_(v125, v153, v152);
    }

    else
    {
      v152 = 0;
      objc_msgSend_setRole_(v125, v143, 0);
    }

    objc_msgSend_setOriginalParticipantRole_(v125, v154, v152);
    if (objc_msgSend_hasState(v9, v155, v156))
    {
      v159 = objc_msgSend_state(v9, v157, v158);
      if (v159 - 2 >= 3)
      {
        objc_msgSend_setAcceptanceStatus_(v125, v160, 1);
      }

      else
      {
        objc_msgSend_setAcceptanceStatus_(v125, v160, v159);
      }
    }

    else
    {
      v163 = 2 * (objc_msgSend_role(v125, v157, v158) == 1);
      objc_msgSend_setAcceptanceStatus_(v125, v164, v163);
    }

    v166 = objc_msgSend_permission(v9, v161, v162) - 1;
    if (v166 < 3)
    {
      objc_msgSend_setPermission_(v125, v165, v166 + 1);
    }

    else
    {
      objc_msgSend_setPermission_(v125, v165, 0);
    }

    v169 = objc_msgSend_recordName(v28, v167, v168);
    isDefaultUserNameFromServer = objc_msgSend__isDefaultUserNameFromServer_(self, v170, v169);

    if (isDefaultUserNameFromServer)
    {
      goto LABEL_37;
    }

    v174 = objc_msgSend_userIdentity(v125, v172, v173);
    v177 = objc_msgSend_userRecordID(v174, v175, v176);
    v180 = objc_msgSend_recordName(v177, v178, v179);
    isEqualToString = objc_msgSend_isEqualToString_(v180, v181, *MEMORY[0x277CBBF28]);

    if (isEqualToString)
    {
      goto LABEL_37;
    }

    if (v291)
    {
      v282 = objc_msgSend_identityDelegate(self, v172, v183);
      v285 = objc_msgSend_publicKey(v9, v283, v284);
      v288 = objc_msgSend_protectionInfo(v285, v286, v287);
      v290 = objc_msgSend_sharingFingerprintsContainPublicKeyWithData_error_(v282, v289, v288, 0);

      if (v290)
      {
LABEL_37:
        objc_msgSend_setIsCurrentUser_(v125, v172, 1);
      }
    }

    v184 = objc_msgSend_userIdentity(v125, v172, v183);
    v187 = objc_msgSend_userRecordID(v184, v185, v186);
    v190 = objc_msgSend_recordName(v187, v188, v189);
    v193 = objc_msgSend_orgAdminUserID(self, v191, v192);
    v195 = objc_msgSend_isEqualToString_(v190, v194, v193);

    if ((v195 & 1) != 0 || objc_msgSend_isOrgUser(v9, v196, v197))
    {
      objc_msgSend_setIsOrgAdminUser_(v125, v196, 1);
    }

    v199 = objc_msgSend_protectionInfo(v9, v196, v198);
    v202 = objc_msgSend_protectionInfo(v199, v200, v201);
    v205 = objc_msgSend_length(v202, v203, v204);

    if (v205)
    {
      v208 = objc_msgSend_protectionInfo(v9, v206, v207);
      v211 = objc_msgSend_protectionInfo(v208, v209, v210);
      objc_msgSend_setProtectionInfo_(v125, v212, v211);
    }

    v213 = objc_msgSend_protectionInfoPublicKey(v9, v206, v207);
    v216 = objc_msgSend_length(v213, v214, v215);

    if (v216)
    {
      v219 = objc_msgSend_protectionInfoPublicKey(v9, v217, v218);
      objc_msgSend_setProtectionInfoPublicKey_(v125, v220, v219);
    }

    if (objc_msgSend_hasKeyHealth(v9, v217, v218))
    {
      v224 = objc_msgSend_keyHealth(v9, v221, v222) - 1;
      if (v224 < 3)
      {
        objc_msgSend_setMutableInvitationTokenStatus_(v125, v223, v224 + 1);
      }

      else
      {
        objc_msgSend_setMutableInvitationTokenStatus_(v125, v223, 0);
      }
    }

    v225 = objc_msgSend_createdInProcess(v9, v221, v222);
    objc_msgSend_setCreatedInProcess_(v125, v226, v225);
    v229 = objc_msgSend_acceptedInProcess(v9, v227, v228);
    objc_msgSend_setAcceptedInProcess_(v125, v230, v229);
    isAnonymousInvitedParticipant = objc_msgSend_isAnonymousInvitedParticipant(v9, v231, v232);
    objc_msgSend_setIsAnonymousInvitedParticipant_(v125, v234, isAnonymousInvitedParticipant);
    if (objc_msgSend_hasIsApprovedRequester(v9, v235, v236))
    {
      isApprovedRequester = objc_msgSend_isApprovedRequester(v9, v237, v238);
      objc_msgSend_setIsApprovedRequester_(v125, v240, isApprovedRequester);
    }

    if (objc_msgSend_hasInviteNSSecTimestampDate(v9, v237, v238))
    {
      v243 = MEMORY[0x277CBEAA8];
      v244 = objc_msgSend_inviteNSSecTimestampDate(v9, v241, v242);
      objc_msgSend_time(v244, v245, v246);
      v249 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v243, v247, v248);
      objc_msgSend_setInvitationDate_(v125, v250, v249);
    }

    else
    {
      if (!objc_msgSend_hasInviteTimestampDate(v9, v241, v242))
      {
        goto LABEL_56;
      }

      v253 = objc_msgSend_inviteTimestampDate(v9, v251, v252);
      objc_msgSend_time(v253, v254, v255);
      v257 = v256 / 1000.0;

      v244 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v258, v259, v257);
      objc_msgSend_setInvitationDate_(v125, v260, v244);
    }

LABEL_56:
    if (objc_msgSend_hasAcceptedNSSecTimestampDate(v9, v251, v252))
    {
      v263 = MEMORY[0x277CBEAA8];
      v264 = objc_msgSend_acceptedNSSecTimestampDate(v9, v261, v262);
      objc_msgSend_time(v264, v265, v266);
      v269 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v263, v267, v268);
      objc_msgSend_setAcceptanceDate_(v125, v270, v269);
    }

    else
    {
      if (!objc_msgSend_hasAcceptedTimestampDate(v9, v261, v262))
      {
LABEL_61:

        goto LABEL_62;
      }

      v273 = objc_msgSend_acceptedTimestampDate(v9, v271, v272);
      objc_msgSend_time(v273, v274, v275);
      v277 = v276 / 1000.0;

      v264 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v278, v279, v277);
      objc_msgSend_setAcceptanceDate_(v125, v280, v264);
    }

    goto LABEL_61;
  }

  v23 = objc_msgSend_userId(v9, v21, v22);
  v26 = objc_msgSend_name(v23, v24, v25);
  v28 = objc_msgSend_recordIDFromPUserName_error_(self, v27, v26, a6);

  if (v28)
  {
    objc_msgSend_setUserRecordID_(inited, v29, v28);
    goto LABEL_5;
  }

  v125 = 0;
LABEL_62:

  return v125;
}

- (id)pParticipantFromShareParticipant:(id)a3 forCache:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8 = objc_opt_new();
  if (v4)
  {
    v9 = objc_msgSend_userIdentity(v5, v6, v7);
    v12 = objc_msgSend_userRecordID(v9, v10, v11);
    v15 = objc_msgSend_recordName(v12, v13, v14);
    v17 = objc_msgSend_pUserIdentifierFromUserRecordName_(self, v16, v15);
    objc_msgSend_setUserId_(v8, v18, v17);
  }

  v19 = objc_msgSend_role(v5, v6, v7);
  v22 = sub_225396550(v19, v20, v21);
  objc_msgSend_setParticipantType_(v8, v23, v22);
  if (objc_msgSend_role(v5, v24, v25) != 4)
  {
    v28 = objc_msgSend_permission(v5, v26, v27);
    v31 = sub_22539649C(v28, v29, v30);
    objc_msgSend_setPermission_(v8, v32, v31);
  }

  v33 = objc_msgSend_userIdentity(v5, v26, v27);
  v38 = 0x278543000uLL;
  if (!objc_msgSend_isAnonymousInvitedParticipant(v5, v34, v35) || objc_msgSend_forceSendPublicKeyForAnonymousParticipants(v5, v36, v37))
  {
    v39 = objc_msgSend_lookupInfo(v33, v36, v37);
    v42 = objc_msgSend_userRecordID(v39, v40, v41);
    if (v42)
    {
      v45 = v42;
      v46 = objc_msgSend_role(v5, v43, v44);

      if (v46 != 1)
      {
        v49 = objc_opt_new();
        objc_msgSend_setContactInformation_(v8, v50, v49);

        v53 = objc_msgSend_lookupInfo(v33, v51, v52);
        v56 = objc_msgSend_userRecordID(v53, v54, v55);
        v59 = objc_msgSend_recordName(v56, v57, v58);
        v61 = objc_msgSend_pUserIdentifierFromUserRecordName_(self, v60, v59);
        objc_msgSend_name(v61, v62, v63);
        v64 = v33;
        v66 = v65 = v4;
        v69 = objc_msgSend_contactInformation(v8, v67, v68);
        objc_msgSend_setContainerScopedUserId_(v69, v70, v66);

        v4 = v65;
        v33 = v64;
        v38 = 0x278543000;

        goto LABEL_15;
      }
    }

    else
    {
    }

    v71 = objc_msgSend_lookupInfo(v33, v47, v48);
    v74 = objc_msgSend_emailAddress(v71, v72, v73);

    if (v74)
    {
      v77 = objc_opt_new();
      objc_msgSend_setContactInformation_(v8, v78, v77);

      v53 = objc_msgSend_lookupInfo(v33, v79, v80);
      v56 = objc_msgSend_emailAddress(v53, v81, v82);
      v85 = objc_msgSend_contactInformation(v8, v83, v84);
      objc_msgSend_setEmailAddress_(v85, v86, v56);
    }

    else
    {
      v87 = objc_msgSend_lookupInfo(v33, v75, v76);
      v90 = objc_msgSend_phoneNumber(v87, v88, v89);

      if (!v90)
      {
        goto LABEL_16;
      }

      v93 = objc_opt_new();
      objc_msgSend_setContactInformation_(v8, v94, v93);

      v97 = objc_msgSend_lookupInfo(v33, v95, v96);
      v100 = objc_msgSend_phoneNumber(v97, v98, v99);
      v53 = sub_225405704(v100);

      v56 = objc_msgSend_contactInformation(v8, v101, v102);
      objc_msgSend_setPhoneNumber_(v56, v103, v53);
    }

LABEL_15:

LABEL_16:
    if (v4)
    {
      v104 = objc_msgSend_lookupInfo(v33, v91, v92);
      v107 = objc_msgSend_emailAddress(v104, v105, v106);
      v110 = objc_msgSend_contactInformation(v8, v108, v109);
      objc_msgSend_setEmailAddress_(v110, v111, v107);

      v114 = objc_msgSend_lookupInfo(v33, v112, v113);
      v117 = objc_msgSend_phoneNumber(v114, v115, v116);
      v120 = objc_msgSend_contactInformation(v8, v118, v119);
      objc_msgSend_setPhoneNumber_(v120, v121, v117);
    }

    v122 = objc_msgSend_contactInformation(v8, v91, v92);

    v125 = objc_msgSend_nameComponents(v33, v123, v124);
    v128 = objc_msgSend_familyName(v125, v126, v127);
    v131 = v128;
    if (!v122)
    {
      if (objc_msgSend_isEqualToString_(v128, v129, &stru_28385ED00))
      {
        v134 = objc_msgSend_nameComponents(v33, v132, v133);
        v137 = objc_msgSend_givenName(v134, v135, v136);
        isEqualToString = objc_msgSend_isEqualToString_(v137, v138, &stru_28385ED00);

        if (isEqualToString)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }

      v140 = objc_opt_new();
      objc_msgSend_setContactInformation_(v8, v141, v140);

      v125 = objc_msgSend_nameComponents(v33, v142, v143);
      v131 = objc_msgSend_familyName(v125, v144, v145);
    }

    v146 = objc_msgSend_contactInformation(v8, v129, v130);
    objc_msgSend_setLastName_(v146, v147, v131);

    v150 = objc_msgSend_nameComponents(v33, v148, v149);
    v153 = objc_msgSend_givenName(v150, v151, v152);
    v156 = objc_msgSend_contactInformation(v8, v154, v155);
    objc_msgSend_setFirstName_(v156, v157, v153);

LABEL_25:
    v158 = *(v38 + 3136);
    v159 = objc_opt_new();
    objc_msgSend_setPublicKey_(v8, v160, v159);

    v163 = objc_msgSend_publicSharingKey(v33, v161, v162);
    v166 = objc_msgSend_publicKey(v8, v164, v165);
    objc_msgSend_setProtectionInfo_(v166, v167, v163);
  }

  v168 = objc_msgSend_userIdentity(v5, v36, v37);
  v171 = objc_msgSend_publicKeyVersion(v168, v169, v170);
  objc_msgSend_setPublicKeyVersion_(v8, v172, v171);

  v175 = objc_msgSend_participantID(v5, v173, v174);
  v178 = objc_msgSend_length(v175, v176, v177);

  if (v178)
  {
    v181 = objc_msgSend_participantID(v5, v179, v180);
    v184 = objc_msgSend_CKDPIdentifier_User(v181, v182, v183);
    objc_msgSend_setParticipantId_(v8, v185, v184);
  }

  v186 = objc_msgSend_inviterID(v5, v179, v180);
  v189 = objc_msgSend_length(v186, v187, v188);

  if (v189)
  {
    v192 = objc_msgSend_inviterID(v5, v190, v191);
    v195 = objc_msgSend_CKDPIdentifier_User(v192, v193, v194);
    objc_msgSend_setInviterId_(v8, v196, v195);
  }

  v197 = MEMORY[0x277CBC810];
  if (v4 || objc_msgSend_acceptanceStatus(v5, v190, v191) == 3 || (v283 = objc_msgSend_role(v5, v190, v191), (*v197 & 1) != 0) || v283 != 4)
  {
    v198 = objc_msgSend_acceptanceStatus(v5, v190, v191);
    if ((v198 - 2) >= 3)
    {
      objc_msgSend_setState_(v8, v199, 1);
    }

    else
    {
      objc_msgSend_setState_(v8, v199, v198);
    }
  }

  if (objc_msgSend_isOrgAdminUser(v5, v190, v191))
  {
    objc_msgSend_setIsOrgUser_(v8, v200, 1);
  }

  else
  {
    objc_msgSend_userIdentity(v5, v200, v201);
    v205 = v204 = v38;
    v208 = objc_msgSend_userRecordID(v205, v206, v207);
    v211 = objc_msgSend_recordName(v208, v209, v210);
    v214 = objc_msgSend_orgAdminUserID(self, v212, v213);
    v216 = objc_msgSend_isEqualToString_(v211, v215, v214);

    v38 = v204;
    objc_msgSend_setIsOrgUser_(v8, v217, v216);
  }

  v218 = objc_msgSend_protectionInfo(v5, v202, v203);

  if (v218)
  {
    v221 = *(v38 + 3136);
    v222 = objc_opt_new();
    objc_msgSend_setProtectionInfo_(v8, v223, v222);

    v226 = objc_msgSend_protectionInfo(v5, v224, v225);
    v229 = objc_msgSend_protectionInfo(v8, v227, v228);
    objc_msgSend_setProtectionInfo_(v229, v230, v226);
  }

  v231 = objc_msgSend_userIdentity(v5, v219, v220);
  v234 = objc_msgSend_outOfNetworkPrivateKey(v231, v232, v233);
  v237 = objc_msgSend_length(v234, v235, v236);

  if (v237)
  {
    v240 = objc_msgSend_userIdentity(v5, v238, v239);
    v243 = objc_msgSend_outOfNetworkPrivateKey(v240, v241, v242);
    objc_msgSend_setOutOfNetworkPrivateKey_(v8, v244, v243);

    objc_msgSend_setOutOfNetworkKeyType_(v8, v245, 0);
  }

  v246 = objc_msgSend_protectionInfoPublicKey(v5, v238, v239);
  v249 = objc_msgSend_length(v246, v247, v248);

  if (v249)
  {
    v252 = objc_msgSend_protectionInfoPublicKey(v5, v250, v251);
    objc_msgSend_setProtectionInfoPublicKey_(v8, v253, v252);
  }

  v254 = objc_msgSend_createdInProcess(v5, v250, v251);
  objc_msgSend_setCreatedInProcess_(v8, v255, v254);
  v258 = objc_msgSend_acceptedInProcess(v5, v256, v257);
  objc_msgSend_setAcceptedInProcess_(v8, v259, v258);
  v262 = objc_msgSend_invitationTokenStatus(v5, v260, v261);
  v265 = sub_2253963F0(v262, v263, v264);
  objc_msgSend_setKeyHealth_(v8, v266, v265);
  isAnonymousInvitedParticipant = objc_msgSend_isAnonymousInvitedParticipant(v5, v267, v268);
  objc_msgSend_setIsAnonymousInvitedParticipant_(v8, v270, isAnonymousInvitedParticipant);
  isApprovedRequester = objc_msgSend_isApprovedRequester(v5, v271, v272);
  objc_msgSend_setIsApprovedRequester_(v8, v274, isApprovedRequester);
  if (*v197 == 1)
  {
    v277 = objc_msgSend_userIdentity(v5, v275, v276);
    v280 = objc_msgSend_hasiCloudAccount(v277, v278, v279);
    objc_msgSend_setIsInNetwork_(v8, v281, v280);
  }

  return v8;
}

- (id)shareRequesterFromPRequester:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBC7C0]);
    inited = objc_msgSend_initInternal(v5, v6, v7);
    v9 = objc_alloc(MEMORY[0x277CBC7C8]);
    v12 = objc_msgSend_initInternal(v9, v10, v11);
    if (objc_msgSend_hasUserId(v4, v13, v14))
    {
      v17 = objc_msgSend_userId(v4, v15, v16);
      v19 = objc_msgSend_recordIDFromPUserName_error_(self, v18, v17, 0);
      objc_msgSend_setUserRecordID_(inited, v20, v19);

      objc_msgSend_setHasiCloudAccount_(inited, v21, 1);
      v24 = objc_msgSend_userId(v4, v22, v23);
      v26 = objc_msgSend_recordIDFromPUserName_error_(self, v25, v24, 0);
      objc_msgSend_setUserRecordID_(v12, v27, v26);
    }

    if (objc_msgSend_hasContactInformation(v4, v15, v16))
    {
      v30 = objc_msgSend_contactInformation(v4, v28, v29);
      hasEmailAddress = objc_msgSend_hasEmailAddress(v30, v31, v32);

      if (hasEmailAddress)
      {
        v36 = objc_msgSend_contactInformation(v4, v34, v35);
        v39 = objc_msgSend_emailAddress(v36, v37, v38);
        objc_msgSend_setEmailAddress_(v12, v40, v39);
      }

      v41 = objc_msgSend_contactInformation(v4, v34, v35);
      hasPhoneNumber = objc_msgSend_hasPhoneNumber(v41, v42, v43);

      if (hasPhoneNumber)
      {
        v47 = objc_msgSend_contactInformation(v4, v45, v46);
        v50 = objc_msgSend_phoneNumber(v47, v48, v49);
        objc_msgSend_setPhoneNumber_(v12, v51, v50);
      }

      v52 = objc_msgSend_contactInformation(v4, v45, v46);
      hasFirstName = objc_msgSend_hasFirstName(v52, v53, v54);

      if (hasFirstName)
      {
        v58 = objc_msgSend_contactInformation(v4, v56, v57);
        v61 = objc_msgSend_firstName(v58, v59, v60);
        v64 = objc_msgSend_nameComponents(inited, v62, v63);
        objc_msgSend_setGivenName_(v64, v65, v61);
      }

      v66 = objc_msgSend_contactInformation(v4, v56, v57);
      hasLastName = objc_msgSend_hasLastName(v66, v67, v68);

      if (hasLastName)
      {
        v71 = objc_msgSend_contactInformation(v4, v28, v70);
        v74 = objc_msgSend_lastName(v71, v72, v73);
        v77 = objc_msgSend_nameComponents(inited, v75, v76);
        objc_msgSend_setFamilyName_(v77, v78, v74);
      }
    }

    objc_msgSend_setLookupInfo_(inited, v28, v12);
    v79 = objc_alloc(MEMORY[0x277CBC688]);
    v81 = objc_msgSend_initWithUserIdentity_(v79, v80, inited);
  }

  else
  {
    v81 = 0;
  }

  return v81;
}

- (id)blockedIdentityFromPBlockedUser:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBC7C0]);
    inited = objc_msgSend_initInternal(v5, v6, v7);
    v9 = objc_alloc(MEMORY[0x277CBC7C8]);
    v12 = objc_msgSend_initInternal(v9, v10, v11);
    if (objc_msgSend_hasUserId(v4, v13, v14))
    {
      v17 = objc_msgSend_userId(v4, v15, v16);
      v19 = objc_msgSend_recordIDFromPUserName_error_(self, v18, v17, 0);
      objc_msgSend_setUserRecordID_(inited, v20, v19);

      objc_msgSend_setHasiCloudAccount_(inited, v21, 1);
      v24 = objc_msgSend_userId(v4, v22, v23);
      v26 = objc_msgSend_recordIDFromPUserName_error_(self, v25, v24, 0);
      objc_msgSend_setUserRecordID_(v12, v27, v26);
    }

    if (objc_msgSend_hasContactInformation(v4, v15, v16))
    {
      v30 = objc_msgSend_contactInformation(v4, v28, v29);
      hasEmailAddress = objc_msgSend_hasEmailAddress(v30, v31, v32);

      if (hasEmailAddress)
      {
        v36 = objc_msgSend_contactInformation(v4, v34, v35);
        v39 = objc_msgSend_emailAddress(v36, v37, v38);
        objc_msgSend_setEmailAddress_(v12, v40, v39);
      }

      v41 = objc_msgSend_contactInformation(v4, v34, v35);
      hasPhoneNumber = objc_msgSend_hasPhoneNumber(v41, v42, v43);

      if (hasPhoneNumber)
      {
        v47 = objc_msgSend_contactInformation(v4, v45, v46);
        v50 = objc_msgSend_phoneNumber(v47, v48, v49);
        objc_msgSend_setPhoneNumber_(v12, v51, v50);
      }

      v52 = objc_msgSend_contactInformation(v4, v45, v46);
      hasFirstName = objc_msgSend_hasFirstName(v52, v53, v54);

      if (hasFirstName)
      {
        v58 = objc_msgSend_contactInformation(v4, v56, v57);
        v61 = objc_msgSend_firstName(v58, v59, v60);
        v64 = objc_msgSend_nameComponents(inited, v62, v63);
        objc_msgSend_setGivenName_(v64, v65, v61);
      }

      v66 = objc_msgSend_contactInformation(v4, v56, v57);
      hasLastName = objc_msgSend_hasLastName(v66, v67, v68);

      if (hasLastName)
      {
        v71 = objc_msgSend_contactInformation(v4, v28, v70);
        v74 = objc_msgSend_lastName(v71, v72, v73);
        v77 = objc_msgSend_nameComponents(inited, v75, v76);
        objc_msgSend_setFamilyName_(v77, v78, v74);
      }
    }

    objc_msgSend_setLookupInfo_(inited, v28, v12);
    v79 = objc_alloc(MEMORY[0x277CBC690]);
    v81 = objc_msgSend_initWithUserIdentity_(v79, v80, inited);
  }

  else
  {
    v81 = 0;
  }

  return v81;
}

- (id)pRequesterFromShareRequester:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(CKDPUserInformationRequestAccess);
    v8 = objc_msgSend_userIdentity(v4, v6, v7);

    v11 = objc_msgSend_lookupInfo(v8, v9, v10);
    v14 = objc_msgSend_userRecordID(v11, v12, v13);
    v17 = objc_msgSend_recordName(v14, v15, v16);
    v19 = objc_msgSend_pUserIdentifierFromUserRecordName_(self, v18, v17);
    v22 = objc_msgSend_name(v19, v20, v21);
    objc_msgSend_setUserId_(v5, v23, v22);

    v24 = objc_alloc_init(CKDPContactInformation);
    v27 = objc_msgSend_nameComponents(v8, v25, v26);
    v30 = objc_msgSend_givenName(v27, v28, v29);
    objc_msgSend_setFirstName_(v24, v31, v30);

    v34 = objc_msgSend_nameComponents(v8, v32, v33);
    v37 = objc_msgSend_familyName(v34, v35, v36);
    objc_msgSend_setLastName_(v24, v38, v37);

    v41 = objc_msgSend_lookupInfo(v8, v39, v40);
    v44 = objc_msgSend_emailAddress(v41, v42, v43);
    objc_msgSend_setEmailAddress_(v24, v45, v44);

    v48 = objc_msgSend_lookupInfo(v8, v46, v47);
    v51 = objc_msgSend_phoneNumber(v48, v49, v50);
    objc_msgSend_setPhoneNumber_(v24, v52, v51);

    objc_msgSend_setContactInformation_(v5, v53, v24);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pBlockedUserFromShareBlockedIdentity:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(CKDPUserInformationBlockedRequestAccess);
    v8 = objc_msgSend_userIdentity(v4, v6, v7);

    v11 = objc_msgSend_lookupInfo(v8, v9, v10);
    v14 = objc_msgSend_userRecordID(v11, v12, v13);
    v17 = objc_msgSend_recordName(v14, v15, v16);
    v19 = objc_msgSend_pUserIdentifierFromUserRecordName_(self, v18, v17);
    v22 = objc_msgSend_name(v19, v20, v21);
    objc_msgSend_setUserId_(v5, v23, v22);

    v24 = objc_alloc_init(CKDPContactInformation);
    v27 = objc_msgSend_nameComponents(v8, v25, v26);
    v30 = objc_msgSend_givenName(v27, v28, v29);
    objc_msgSend_setFirstName_(v24, v31, v30);

    v34 = objc_msgSend_nameComponents(v8, v32, v33);
    v37 = objc_msgSend_familyName(v34, v35, v36);
    objc_msgSend_setLastName_(v24, v38, v37);

    v41 = objc_msgSend_lookupInfo(v8, v39, v40);
    v44 = objc_msgSend_emailAddress(v41, v42, v43);
    objc_msgSend_setEmailAddress_(v24, v45, v44);

    v48 = objc_msgSend_lookupInfo(v8, v46, v47);
    v51 = objc_msgSend_phoneNumber(v48, v49, v50);
    objc_msgSend_setPhoneNumber_(v24, v52, v51);

    objc_msgSend_setContactInformation_(v5, v53, v24);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)notificationFromPPushMessage:(id)a3
{
  v112[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_payload(v3, v4, v5);
  v9 = objc_msgSend_length(v6, v7, v8);

  if (v9)
  {
    v12 = MEMORY[0x277CCAAA0];
    v13 = objc_msgSend_payload(v3, v10, v11);
    v106 = 0;
    v15 = objc_msgSend_JSONObjectWithData_options_error_(v12, v14, v13, 4, &v106);
    v16 = v106;

    if (v15)
    {
      v111 = *MEMORY[0x277CBC970];
      v112[0] = v15;
      v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v112, &v111, 1);
      objc_msgSend__realNotificationFromRemoteNotificationDictionary_(MEMORY[0x277CBC4C0], v19, v18);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v26 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v108 = v16;
        _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "Unable to convert payload message: %@", buf, 0xCu);
      }

      v18 = 0;
      objc_msgSend__realNotificationFromRemoteNotificationDictionary_(MEMORY[0x277CBC4C0], v27, 0);
    }
    inited = ;
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x277CBC4C0]);
    inited = objc_msgSend_initInternal(v20, v21, v22);
  }

  v28 = objc_msgSend_uuid(v3, v23, v24);

  if (v28)
  {
    v31 = objc_alloc(MEMORY[0x277CBC4C8]);
    v34 = objc_msgSend_uuid(v3, v32, v33);
    v36 = objc_msgSend_initWithNotificationUUID_(v31, v35, v34);

    objc_msgSend_setNotificationID_(inited, v37, v36);
  }

  if (objc_msgSend_hasDialog(v3, v29, v30))
  {
    v40 = MEMORY[0x277CCAAA0];
    v41 = objc_msgSend_dialog(v3, v38, v39);
    v43 = objc_msgSend_dataUsingEncoding_(v41, v42, 4);
    v105 = 0;
    v45 = objc_msgSend_JSONObjectWithData_options_error_(v40, v44, v43, 4, &v105);
    v46 = v105;

    if (v45)
    {
      v47 = v45;
      if (objc_opt_respondsToSelector())
      {
        v50 = objc_msgSend_objectForKeyedSubscript_(v47, v48, *MEMORY[0x277CBC930]);
        objc_msgSend_setAlertBody_(inited, v51, v50);

        v53 = objc_msgSend_objectForKeyedSubscript_(v47, v52, *MEMORY[0x277CBC948]);
        objc_msgSend_setAlertLocalizationKey_(inited, v54, v53);

        v56 = objc_msgSend_objectForKeyedSubscript_(v47, v55, *MEMORY[0x277CBC940]);
        objc_msgSend_setAlertLocalizationArgs_(inited, v57, v56);

        v59 = objc_msgSend_objectForKeyedSubscript_(v47, v58, *MEMORY[0x277CBC968]);
        objc_msgSend_setTitleLocalizationKey_(inited, v60, v59);

        v62 = objc_msgSend_objectForKeyedSubscript_(v47, v61, *MEMORY[0x277CBC960]);
        objc_msgSend_setTitleLocalizationArgs_(inited, v63, v62);

        v65 = objc_msgSend_objectForKeyedSubscript_(v47, v64, *MEMORY[0x277CBC958]);
        objc_msgSend_setSubtitleLocalizationKey_(inited, v66, v65);

        v68 = objc_msgSend_objectForKeyedSubscript_(v47, v67, *MEMORY[0x277CBC950]);
        objc_msgSend_setSubtitleLocalizationArgs_(inited, v69, v68);

        v71 = objc_msgSend_objectForKeyedSubscript_(v47, v70, *MEMORY[0x277CBC928]);
        objc_msgSend_setAlertActionLocalizationKey_(inited, v72, v71);

        v74 = objc_msgSend_objectForKeyedSubscript_(v47, v73, *MEMORY[0x277CBC938]);
        objc_msgSend_setAlertLaunchImage_(inited, v75, v74);
      }

      else
      {
        v74 = objc_msgSend_dialog(v3, v48, v49);
        objc_msgSend_setAlertBody_(inited, v80, v74);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v76 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v101 = v76;
        v104 = objc_msgSend_dialog(v3, v102, v103);
        *buf = 138412546;
        v108 = v104;
        v109 = 2112;
        v110 = v46;
        _os_log_error_impl(&dword_22506F000, v101, OS_LOG_TYPE_ERROR, "Unable to parse dialog body %@: %@", buf, 0x16u);
      }

      v47 = objc_msgSend_dialog(v3, v77, v78);
      objc_msgSend_setAlertBody_(inited, v79, v47);
    }
  }

  v81 = objc_msgSend_sound(v3, v38, v39);
  objc_msgSend_setSoundName_(inited, v82, v81);

  if (objc_msgSend_hasBadgeCount(v3, v83, v84))
  {
    v87 = MEMORY[0x277CCABB0];
    v88 = objc_msgSend_badgeCount(v3, v85, v86);
    v90 = objc_msgSend_numberWithInt_(v87, v89, v88);
    objc_msgSend_setBadge_(inited, v91, v90);
  }

  v92 = objc_msgSend_category(v3, v85, v86);
  objc_msgSend_setCategory_(inited, v93, v92);

  if (objc_msgSend_hasIsRead(v3, v94, v95) && objc_msgSend_isRead(v3, v96, v97))
  {
    objc_msgSend_setNotificationType_(inited, v98, 3);
  }

  v99 = *MEMORY[0x277D85DE8];

  return inited;
}

- (id)pAliasWithIdentityLookupInfo:(id)a3
{
  v5 = a3;
  if (objc_msgSend_lookupField(v5, v6, v7) == 1)
  {
    v10 = objc_msgSend_emailAddress(v5, v8, v9);
    v12 = objc_msgSend_pAliasWithEmailAddress_(self, v11, v10);
  }

  else if (objc_msgSend_lookupField(v5, v8, v9) == 2)
  {
    v10 = objc_msgSend_userRecordID(v5, v13, v14);
    v12 = objc_msgSend_pAliasWithUserRecordID_(self, v15, v10);
  }

  else
  {
    if (objc_msgSend_lookupField(v5, v13, v14) != 3)
    {
      v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
      v24 = objc_msgSend_lookupField(v5, v22, v23);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v25, a2, self, @"CKDProtocolTranslator.m", 2840, @"Unknown lookup field in CKUserIdentityLookupInfo: %ld", v24);
    }

    v10 = objc_msgSend_phoneNumber(v5, v16, v17);
    v12 = objc_msgSend_pAliasWithPhoneNumber_(self, v18, v10);
  }

  v19 = v12;

  return v19;
}

- (id)pAliasWithPhoneNumber:(id)a3
{
  v4 = sub_225405704(a3);
  v6 = objc_msgSend_pAliasWithHashedStringID_type_(self, v5, v4, 3);

  return v6;
}

- (id)pAliasWithUserRecordID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_recordName(v4, v6, v7);
  if (objc_msgSend__isDefaultUserNameFromClient_(self, v9, v8))
  {
    objc_msgSend_containerScopedUserID(self, v10, v11);
  }

  else
  {
    objc_msgSend_recordName(v4, v10, v11);
  }
  v12 = ;
  objc_msgSend_setIdentifier_(v5, v13, v12);

  objc_msgSend_setType_(v5, v14, 2);

  return v5;
}

- (id)identityFromPUser:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBC7C0]);
    inited = objc_msgSend_initInternal(v4, v5, v6);
    v10 = objc_msgSend_lastName(v3, v8, v9);
    v13 = objc_msgSend_nameComponents(inited, v11, v12);
    objc_msgSend_setFamilyName_(v13, v14, v10);

    v17 = objc_msgSend_firstName(v3, v15, v16);
    v20 = objc_msgSend_nameComponents(inited, v18, v19);
    objc_msgSend_setGivenName_(v20, v21, v17);

    v24 = objc_msgSend_identifier(v3, v22, v23);
    LODWORD(v20) = objc_msgSend_hasName(v24, v25, v26);

    if (v20)
    {
      v27 = objc_alloc(MEMORY[0x277CBC5D0]);
      v30 = objc_msgSend_identifier(v3, v28, v29);
      v33 = objc_msgSend_name(v30, v31, v32);
      v35 = objc_msgSend_initWithRecordName_(v27, v34, v33);
      objc_msgSend_setUserRecordID_(inited, v36, v35);
    }
  }

  else
  {
    inited = 0;
  }

  return inited;
}

- (CKDProtocolTranslatorIdentityDelegate)identityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_identityDelegate);

  return WeakRetained;
}

- (int)fieldValueTypeFromEncryptedDataObject:(id)a3 isInList:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v4)
  {
    v6 = 21;
  }

  else
  {
    v6 = 20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = !v4;
    v8 = 2;
    v9 = 10;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = !v4;
    v8 = 3;
    v9 = 15;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = !v4;
    v8 = 7;
    v9 = 17;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = !v4;
    v8 = 8;
    v9 = 18;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = !v4;
    v8 = 5;
    v9 = 13;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = !v4;
    v8 = 4;
    v9 = 12;
LABEL_16:
    if (v7)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 10;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = 15;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = 17;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = 18;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = 12;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = 9;
            }

            else
            {
              v10 = v6;
            }
          }
        }
      }
    }
  }

LABEL_19:

  return v10;
}

- (int)fieldValueTypeFromObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = CFNumberIsFloatType(v4) == 0;
    v6 = 7;
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 2;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 3;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 1;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_fieldValueTypeFromEncryptedDataObject_isInList_(self, v8, v4, 0);
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
    if (!objc_msgSend_count(v9, v10, v11))
    {
      v7 = 9;
      goto LABEL_26;
    }

    v13 = objc_msgSend_objectAtIndexedSubscript_(v9, v12, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v7 = 13;
LABEL_20:

LABEL_26:
      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 11;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_msgSend_fieldValueTypeFromEncryptedDataObject_isInList_(self, v15, v13, 1);
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 10;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 12;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (CFNumberIsFloatType(v13))
      {
        v7 = 18;
      }

      else
      {
        v7 = 17;
      }

      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 15;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 14;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 25;
      goto LABEL_20;
    }

    v29 = objc_alloc(MEMORY[0x277CBC360]);
    v30 = objc_opt_class();
    v24 = NSStringFromClass(v30);
    v26 = objc_msgSend_initWithCode_format_(v29, v31, 1006, @"Can't encode array %@ of unknown child class: %@", v9, v24);
LABEL_57:
    v27 = v26;
    v28 = v26;

    objc_exception_throw(v27);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = 5;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 6;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 19;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 4;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 24;
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = objc_alloc(MEMORY[0x277CBC360]);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v26 = objc_msgSend_initWithCode_format_(v22, v25, 1006, @"Can't encode object %@ of class %@", v4, v24);
    goto LABEL_57;
  }

  v18 = objc_msgSend_valueID(v4, v16, v17);
  isEncrypted = objc_msgSend_isEncrypted(v18, v19, v20);

  v5 = isEncrypted == 0;
  v6 = 28;
LABEL_3:
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 1;
  }

LABEL_27:

  return v7;
}

- (BOOL)objectIsAnEncryptedType:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_firstObject(v3, v4, v5);

    v3 = v6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEncrypted = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_msgSend_valueID(v3, v8, v9);
      isEncrypted = objc_msgSend_isEncrypted(v10, v11, v12);
    }

    else
    {
      isEncrypted = 0;
    }
  }

  return isEncrypted;
}

- (id)locationFieldValueWithLatitude:(double)a3 longitude:(double)a4
{
  v6 = objc_opt_new();
  objc_msgSend_setType_(v6, v7, 4);
  if (a4 > 180.0 || fabs(a3) > 90.0 || a4 < -180.0)
  {
    v15 = objc_alloc(MEMORY[0x277CBC360]);
    v17 = objc_msgSend_initWithCode_format_(v15, v16, 1006, @"Invalid latitude/longitude value in location");
    objc_exception_throw(v17);
  }

  v8 = objc_opt_new();
  objc_msgSend_setLatitude_(v8, v9, v10, a3);
  objc_msgSend_setLongitude_(v8, v11, v12, a4);
  objc_msgSend_setLocationValue_(v6, v13, v8);

  return v6;
}

- (id)encryptedObjectRepresentationFromFieldValue:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = 0;
  switch(objc_msgSend_type(v3, v4, v5))
  {
    case 1u:
    case 0x14u:
      v10 = MEMORY[0x277CBC2E8];
      goto LABEL_19;
    case 2u:
      v10 = MEMORY[0x277CBC2F0];
      goto LABEL_19;
    case 3u:
      v10 = MEMORY[0x277CBC340];
      goto LABEL_19;
    case 4u:
      v10 = MEMORY[0x277CBC318];
      goto LABEL_19;
    case 5u:
      v10 = MEMORY[0x277CBC338];
      goto LABEL_19;
    case 6u:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0x10u:
    case 0x13u:
    case 0x15u:
    case 0x18u:
    case 0x19u:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v7 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v23 = objc_msgSend_type(v3, v8, v9);
        v25 = v23 - 1;
        if (v23 - 1) < 0x1F && ((0x799FFFFFu >> v25))
        {
          v26 = off_27854CF40[v25];
        }

        else
        {
          v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"(unknown: %i)", v23);
        }

        *buf = 138412290;
        v28 = v26;
        _os_log_fault_impl(&dword_22506F000, v7, OS_LOG_TYPE_FAULT, "Did not expect %@ field to have encrypted flag set", buf, 0xCu);
      }

      v6 = 0;
      break;
    case 7u:
      v10 = MEMORY[0x277CBC328];
      goto LABEL_19;
    case 8u:
      v10 = MEMORY[0x277CBC300];
      goto LABEL_19;
    case 9u:
      v11 = objc_alloc(MEMORY[0x277CBC310]);
      v14 = objc_msgSend_data(MEMORY[0x277CBEA90], v12, v13);
      v16 = objc_msgSend_initWithData_(v11, v15, v14);
      goto LABEL_20;
    case 0xAu:
      v10 = MEMORY[0x277CBC2F8];
      goto LABEL_19;
    case 0xCu:
      v10 = MEMORY[0x277CBC320];
      goto LABEL_19;
    case 0xFu:
      v10 = MEMORY[0x277CBC348];
      goto LABEL_19;
    case 0x11u:
      v10 = MEMORY[0x277CBC330];
      goto LABEL_19;
    case 0x12u:
      v10 = MEMORY[0x277CBC308];
LABEL_19:
      v17 = [v10 alloc];
      v14 = objc_msgSend_bytesValue(v3, v18, v19);
      v16 = objc_msgSend_initWithEncryptedData_(v17, v20, v14);
LABEL_20:
      v6 = v16;

      break;
    default:
      break;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)objectRepresentationFromFieldValue:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  objc_msgSend_setValue_(v5, v6, v4);

  v8 = objc_msgSend_objectRepresentationFromField_inRecord_asAnonymousCKUserID_(self, v7, v5, 0, 0);

  return v8;
}

- (id)objectRepresentationFromField:(id)a3 inRecord:(id)a4 asAnonymousCKUserID:(id)a5
{
  v76 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_value(v8, v11, v12);
  if (objc_msgSend_isEncrypted(v13, v14, v15))
  {
    v18 = objc_msgSend_encryptedObjectRepresentationFromFieldValue_(self, v16, v13);
LABEL_3:
    v19 = v18;
  }

  else
  {
    v19 = objc_msgSend_listValues(v13, v16, v17);

    if (v19)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v74 = 0x2020000000;
      v75 = 0;
      v22 = objc_msgSend_listValues(v13, v20, v21);
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = sub_2253AADAC;
      v72[3] = &unk_27854CE50;
      v72[4] = self;
      v72[5] = &buf;
      v19 = objc_msgSend_CKCompactMap_(v22, v23, v72);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      switch(objc_msgSend_type(v13, v20, v21))
      {
        case 1u:
          v18 = objc_msgSend_bytesValue(v13, v26, v27);
          goto LABEL_3;
        case 2u:
          v52 = MEMORY[0x277CBEAA8];
          v35 = objc_msgSend_dateValue(v13, v26, v27);
          objc_msgSend_time(v35, v53, v54);
          v37 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v52, v55, v56);
          goto LABEL_45;
        case 3u:
          v18 = objc_msgSend_stringValue(v13, v26, v27);
          goto LABEL_3;
        case 4u:
          v50 = MEMORY[0x277CE41F8];
          v35 = objc_msgSend_locationValue(v13, v26, v27);
          v37 = objc_msgSend_CKLocationFromPLocationCoordinate_(v50, v51, v35);
          goto LABEL_45;
        case 5u:
          v38 = objc_msgSend_referenceValue(v13, v26, v27);
          v71 = 0;
          v19 = objc_msgSend_referenceFromPReference_error_(self, v39, v38, &v71);
          v40 = v71;

          if (v40 || !v19)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v41 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v40;
              _os_log_error_impl(&dword_22506F000, v41, OS_LOG_TYPE_ERROR, "Invalid field value (record identifier) from server: %@", &buf, 0xCu);
            }
          }

          break;
        case 6u:
          v46 = objc_msgSend_assetValue(v13, v26, v27);
          v70 = 0;
          v19 = objc_msgSend_assetFromPAsset_field_error_(self, v47, v46, v8, &v70);
          v48 = v70;

          if (!v19 && v48)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v49 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v48;
              _os_log_error_impl(&dword_22506F000, v49, OS_LOG_TYPE_ERROR, "Invalid asset type from server: %@", &buf, 0xCu);
            }
          }

          break;
        case 7u:
          v57 = MEMORY[0x277CCABB0];
          v58 = objc_msgSend_signedValue(v13, v26, v27);
          v18 = objc_msgSend_numberWithLongLong_(v57, v59, v58);
          goto LABEL_3;
        case 8u:
          v60 = MEMORY[0x277CCABB0];
          objc_msgSend_ckDoubleValue(v13, v26, v27);
          v18 = objc_msgSend_numberWithDouble_(v60, v61, v62);
          goto LABEL_3;
        case 9u:
        case 0xAu:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x10u:
        case 0x11u:
        case 0x12u:
        case 0x15u:
        case 0x19u:
          v18 = objc_msgSend_array(MEMORY[0x277CBEA60], v26, v27);
          goto LABEL_3;
        case 0x13u:
          v63 = objc_msgSend_packageValue(v13, v26, v27);
          v69 = 0;
          v19 = objc_msgSend_packageFromPPackage_error_(self, v64, v63, &v69);
          v65 = v69;

          if (!v19 && v65)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v66 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v65;
              _os_log_error_impl(&dword_22506F000, v66, OS_LOG_TYPE_ERROR, "Invalid package type from server: %@", &buf, 0xCu);
            }
          }

          break;
        case 0x14u:
          v32 = objc_alloc(MEMORY[0x277CBC2E8]);
          v35 = objc_msgSend_bytesValue(v13, v33, v34);
          v37 = objc_msgSend_initWithEncryptedData_(v32, v36, v35);
LABEL_45:
          v19 = v37;

          break;
        case 0x18u:
          v42 = objc_msgSend_streamingAssetValue(v13, v26, v27);
          v68 = 0;
          v19 = objc_msgSend_streamingAssetFromPStreamingAsset_error_(self, v43, v42, &v68);
          v44 = v68;

          if (!v19 && v44)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v45 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v44;
              _os_log_error_impl(&dword_22506F000, v45, OS_LOG_TYPE_ERROR, "Invalid streaming asset type from server: %@", &buf, 0xCu);
            }
          }

          break;
        case 0x1Cu:
        case 0x1Du:
          if (v9)
          {
            v28 = objc_msgSend_recordIdentifier(v9, v26, v27);
            v67 = 0;
            v19 = objc_msgSend_mergeableRecordValueFromPRecordField_inPRecordIdentifier_asAnonymousCKUserID_error_(self, v29, v8, v28, v10, &v67);
            v30 = v67;

            if (!v19 || v30)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v31 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v30;
                _os_log_error_impl(&dword_22506F000, v31, OS_LOG_TYPE_ERROR, "Invalid mergeable value type from server: %@", &buf, 0xCu);
              }
            }
          }

          else
          {
            v19 = 0;
          }

          break;
        default:
          break;
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)pFieldActionWithLocation:(int64_t)a3 length:(unint64_t)a4 values:(id)a5
{
  v7 = a5;
  v10 = v7;
  if (a3 != -1 || a4)
  {
    if (a4)
    {
      v19 = a4 + a3;
      v20 = objc_msgSend_count(v7, v8, v9);
      v11 = objc_opt_new();
      objc_msgSend_setIndex_(v11, v21, a3);
      objc_msgSend_setIsReversed_(v11, v22, 0);
      v14 = objc_opt_new();
      objc_msgSend_setIndex_(v14, v23, (v19 - 1));
      objc_msgSend_setIsReversed_(v14, v24, 0);
      v25 = objc_opt_new();
      objc_msgSend_setLeft_(v25, v26, v11);
      objc_msgSend_setRight_(v25, v27, v14);
      v28 = objc_opt_new();
      objc_msgSend_setRange_(v28, v29, v25);
      if (v20)
      {
        v32 = objc_msgSend_mutableCopy(v10, v30, v31);
        objc_msgSend_setValues_(v28, v33, v32);

        v34 = objc_opt_new();
        objc_msgSend_setReplaceListRange_(v34, v35, v28);
      }

      else
      {
        v34 = objc_opt_new();
        objc_msgSend_setDeleteListRange_(v34, v43, v28);
      }

      goto LABEL_11;
    }

    v11 = objc_opt_new();
    objc_msgSend_setIndex_(v11, v36, a3);
    objc_msgSend_setIsReversed_(v11, v37, 0);
    v14 = objc_opt_new();
    objc_msgSend_setPosition_(v14, v38, v11);
    objc_msgSend_setInsertAfter_(v14, v39, 0);
  }

  else
  {
    v11 = objc_opt_new();
    objc_msgSend_setIndex_(v11, v12, 0);
    objc_msgSend_setIsReversed_(v11, v13, 1);
    v14 = objc_opt_new();
    objc_msgSend_setPosition_(v14, v15, v11);
    objc_msgSend_setInsertAfter_(v14, v16, 1);
  }

  v40 = objc_msgSend_mutableCopy(v10, v17, v18);
  objc_msgSend_setValues_(v14, v41, v40);

  v34 = objc_opt_new();
  objc_msgSend_setInsertIntoList_(v34, v42, v14);
LABEL_11:

  return v34;
}

@end