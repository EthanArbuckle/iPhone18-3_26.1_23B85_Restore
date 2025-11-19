@interface CKDModifyRecordsOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)_hasHandlerInState:(unint64_t)a3;
- (BOOL)_needsSigningPCS;
- (BOOL)_prepareRecordsForSave;
- (BOOL)_topoSortRecords;
- (BOOL)isOperationType:(int)a3;
- (BOOL)makeStateTransition;
- (BOOL)needsUserKeySyncToPopulateServiceIdentity;
- (BOOL)retryPCSFailures;
- (BOOL)validateAgainstLiveContainer:(id)a3 error:(id *)a4;
- (CKDDecryptRecordsOperation)recordDecryptOperation;
- (CKDModifyRecordsOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (CKDProtocolTranslator)translator;
- (id)_prepareAssetsForUpload;
- (id)_setBoundaryKeyOnAssetsToUpload:(id)a3;
- (id)_topoSortRecordsForHandlers:(id)a3;
- (id)activityCreate;
- (id)analyticsPayload;
- (id)handlerForSaveWithRecord:(id)a3;
- (id)relevantZoneIDs;
- (id)requestedFieldsByRecordIDForRecords:(id)a3;
- (int)operationType;
- (void)_applySideEffects;
- (void)_batchFetchAssetRecordsForRereferencing;
- (void)_clearProtectionDataIfNotEntitled;
- (void)_continueRecordsModify;
- (void)_determineEnvironment;
- (void)_didCompleteRecordFetchOperation:(id)a3 assetArrayByRecordID:(id)a4;
- (void)_enumerateHandlersInState:(unint64_t)a3 withBlock:(id)a4;
- (void)_fetchContainerScopedUserID;
- (void)_fetchGlobalPerUserBoundaryKey;
- (void)_fetchPackageRecordsForRereferencing;
- (void)_fetchRecordPCSData;
- (void)_fetchRecordsForRereferencing;
- (void)_fetchSharePCSData;
- (void)_fetchShareParticipants;
- (void)_fetchUserPublicKeys;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_handleDecryptionFailure:(id)a3 forRecordID:(id)a4;
- (void)_handleMergeableDeltaSavedForRecordID:(id)a3 key:(id)a4 result:(id)a5;
- (void)_handleRecordDeleted:(id)a3 handler:(id)a4 responseCode:(id)a5;
- (void)_handleRecordSaved:(id)a3 handler:(id)a4 etag:(id)a5 dateStatistics:(id)a6 expirationDate:(id)a7 responseCode:(id)a8 keysAssociatedWithETag:(id)a9 recordForOplockFailure:(id)a10 serverRecord:(id)a11;
- (void)_handleReplaceDeltasRequest:(id)a3 result:(id)a4;
- (void)_markRecordHandlersAsUploaded;
- (void)_performCallbacksForAtomicZoneHandlers:(id)a3;
- (void)_performCallbacksForNonAtomicZoneHandlers:(id)a3;
- (void)_performHandlerCallbacks;
- (void)_prepareForUpload;
- (void)_prepareParentPCS;
- (void)_reallyHandleRecordSaved:(id)a3 handler:(id)a4 etag:(id)a5 dateStatistics:(id)a6 expirationDate:(id)a7 responseCode:(id)a8 keysAssociatedWithETag:(id)a9 recordForOplockFailure:(id)a10 decryptedServerRecord:(id)a11;
- (void)_reportRecordsInFlight;
- (void)_synchronizeUserKeyRegistryIfNeeded;
- (void)_uploadAssets;
- (void)_uploadMergeableDeltas;
- (void)_verifyRecordEncryption;
- (void)assetArray:(id)a3 didFetchRecord:(id)a4 error:(id)a5;
- (void)callbackWithMetadata:(id)a3 error:(id)a4;
- (void)deleteCallbackWithMetadata:(id)a3 error:(id)a4;
- (void)finishDecryption;
- (void)finishWithError:(id)a3;
- (void)main;
- (void)packageArray:(id)a3 didFetchRecord:(id)a4 error:(id)a5;
- (void)saveCallbackWithMetadata:(id)a3 error:(id)a4;
@end

@implementation CKDModifyRecordsOperation

- (CKDModifyRecordsOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v221 = *MEMORY[0x277D85DE8];
  v215.receiver = self;
  v215.super_class = CKDModifyRecordsOperation;
  v192 = a3;
  v182 = a4;
  v193 = [(CKDDatabaseOperation *)&v215 initWithOperationInfo:v192 container:?];
  if (v193)
  {
    v5 = objc_opt_new();
    modifyHandlersByZoneID = v193->_modifyHandlersByZoneID;
    v193->_modifyHandlersByZoneID = v5;

    v193->_originatingFromDaemon = objc_msgSend_originatingFromDaemon(v192, v7, v8);
    v193->_markAsParticipantNeedsNewInvitationToken = objc_msgSend_markAsParticipantNeedsNewInvitationToken(v192, v9, v10);
    v193->_shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(v192, v11, v12);
    v190 = objc_opt_new();
    v211 = 0;
    v212 = &v211;
    v213 = 0x2020000000;
    v214 = 0;
    v15 = objc_msgSend_recordsToSave(v192, v13, v14);
    v193->_hasRecordsToSave = objc_msgSend_count(v15, v16, v17) != 0;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    obj = v15;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v207, v220, 16);
    if (v21)
    {
      v22 = 0;
      v23 = 0;
      v188 = *v208;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v208 != v188)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v207 + 1) + 8 * i);
          v26 = objc_msgSend_recordID(v25, v19, v20);
          v29 = objc_msgSend_zoneID(v26, v27, v28);

          v32 = objc_msgSend_objectForKeyedSubscript_(v193->_modifyHandlersByZoneID, v30, v29);
          if (!v32)
          {
            v32 = objc_opt_new();
            objc_msgSend_setObject_forKeyedSubscript_(v193->_modifyHandlersByZoneID, v33, v32, v29);
          }

          v34 = objc_msgSend_handlerForSaveWithRecord_(v193, v31, v25);
          objc_msgSend_setBatchRank_(v34, v35, v22);
          objc_msgSend_addObject_(v32, v36, v34);
          v39 = objc_msgSend_assetUUIDToExpectedProperties(v192, v37, v38);
          objc_msgSend_setAssetUUIDToExpectedProperties_(v34, v40, v39);

          v43 = objc_msgSend_recordID(v25, v41, v42);
          objc_msgSend_setObject_forKeyedSubscript_(v190, v44, v34, v43);

          v47 = objc_msgSend_size(v25, v45, v46);
          ++v212[3];
          v219 = objc_opt_class();
          v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, &v219, 1);
          v206[0] = MEMORY[0x277D85DD0];
          v206[1] = 3221225472;
          v206[2] = sub_2251FCBE0;
          v206[3] = &unk_278549F10;
          v206[4] = &v211;
          objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(v25, v50, v49, v206);

          v23 += v47;
          ++v22;
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v207, v220, 16);
      }

      while (v21);
    }

    else
    {
      v23 = 0;
    }

    v189 = v23;

    v53 = objc_msgSend_recordIDsToDelete(v192, v51, v52);
    v193->_hasRecordsToDelete = objc_msgSend_count(v53, v54, v55) != 0;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v187 = v53;
    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v56, &v202, v218, 16);
    if (v59)
    {
      v60 = *v203;
      v61 = *MEMORY[0x277CBC020];
      do
      {
        for (j = 0; j != v59; ++j)
        {
          if (*v203 != v60)
          {
            objc_enumerationMutation(v187);
          }

          v63 = *(*(&v202 + 1) + 8 * j);
          v64 = objc_msgSend_zoneID(v63, v57, v58);
          v67 = objc_msgSend_objectForKeyedSubscript_(v193->_modifyHandlersByZoneID, v65, v64);
          if (!v67)
          {
            v67 = objc_opt_new();
            objc_msgSend_setObject_forKeyedSubscript_(v193->_modifyHandlersByZoneID, v68, v67, v64);
          }

          v69 = objc_msgSend_handlerForDeleteWithRecordID_(v193, v66, v63);
          v72 = objc_msgSend_recordIDsToDeleteToEtags(v192, v70, v71);
          v74 = objc_msgSend_objectForKeyedSubscript_(v72, v73, v63);
          objc_msgSend_setEtag_(v69, v75, v74);

          objc_msgSend_addObject_(v67, v76, v69);
          objc_msgSend_setObject_forKeyedSubscript_(v190, v77, v69, v63);
          if (objc_msgSend_markAsParticipantNeedsNewInvitationToken(v192, v78, v79))
          {
            v82 = objc_msgSend_recordName(v63, v80, v81);
            isEqualToString = objc_msgSend_isEqualToString_(v82, v83, v61);

            if (isEqualToString)
            {
              v193->_requestNeedsUserPublicKeys = 1;
            }
          }

          v85 = objc_msgSend_size(v63, v80, v81);

          v189 += v85;
        }

        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v57, &v202, v218, 16);
      }

      while (v59);
    }

    objc_storeStrong(&v193->_handlersByRecordID, v190);
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v183 = objc_msgSend_allValues(v193->_modifyHandlersByZoneID, v86, v87);
    v185 = objc_msgSend_countByEnumeratingWithState_objects_count_(v183, v88, &v198, v217, 16);
    if (v185)
    {
      v184 = *v199;
      v89 = *MEMORY[0x277CBC120];
      do
      {
        for (k = 0; k != v185; ++k)
        {
          if (*v199 != v184)
          {
            objc_enumerationMutation(v183);
          }

          v90 = *(*(&v198 + 1) + 8 * k);
          v91 = objc_opt_new();
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v92 = v90;
          v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v194, v216, 16);
          if (v96)
          {
            v97 = *v195;
            do
            {
              for (m = 0; m != v96; ++m)
              {
                if (*v195 != v97)
                {
                  objc_enumerationMutation(v92);
                }

                v99 = *(*(&v194 + 1) + 8 * m);
                v100 = objc_msgSend_recordID(v99, v94, v95);
                v102 = objc_msgSend_objectForKeyedSubscript_(v91, v101, v100);

                if (v102)
                {
                  v105 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v103, v89, 1017, @"You can't pass multiple instances of the same record to a CKModifyRecordsOperation");
                  objc_msgSend_setState_(v99, v106, 12);
                  objc_msgSend_setError_(v99, v107, v105);
                  v110 = objc_msgSend_recordID(v99, v108, v109);
                  v112 = objc_msgSend_objectForKeyedSubscript_(v91, v111, v110);

                  objc_msgSend_setState_(v112, v113, 12);
                  objc_msgSend_setError_(v112, v114, v105);
                }

                else
                {
                  v105 = objc_msgSend_recordID(v99, v103, v104);
                  objc_msgSend_setObject_forKeyedSubscript_(v91, v115, v99, v105);
                }
              }

              v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v94, &v194, v216, 16);
            }

            while (v96);
          }
        }

        v185 = objc_msgSend_countByEnumeratingWithState_objects_count_(v183, v116, &v198, v217, 16);
      }

      while (v185);
    }

    v119 = objc_msgSend_conflictLosersToResolveByRecordID(v192, v117, v118);
    conflictLosersToResolveByRecordID = v193->_conflictLosersToResolveByRecordID;
    v193->_conflictLosersToResolveByRecordID = v119;

    v123 = objc_msgSend_pluginFieldsForRecordDeletesByID(v192, v121, v122);
    pluginFieldsForRecordDeletesByID = v193->_pluginFieldsForRecordDeletesByID;
    v193->_pluginFieldsForRecordDeletesByID = v123;

    v127 = objc_msgSend_recordsToSave(v192, v125, v126);
    if (objc_msgSend_count(v127, v128, v129))
    {
      v193->_haveOutstandingHandlers = 1;
    }

    else
    {
      v132 = objc_msgSend_recordIDsToDelete(v192, v130, v131);
      v193->_haveOutstandingHandlers = objc_msgSend_count(v132, v133, v134) != 0;
    }

    v193->_savePolicy = objc_msgSend_savePolicy(v192, v135, v136);
    v139 = objc_msgSend_clientChangeTokenData(v192, v137, v138);
    clientChangeTokenData = v193->_clientChangeTokenData;
    v193->_clientChangeTokenData = v139;

    v193->_shouldOnlySaveAssetContent = objc_msgSend_shouldOnlySaveAssetContent(v192, v141, v142);
    v193->_atomic = objc_msgSend_atomic(v192, v143, v144);
    v193->_retryPCSFailures = objc_msgSend_shouldSkipPCSRetryBehavior(v192, v145, v146) ^ 1;
    v193->_shouldReportRecordsInFlight = objc_msgSend_shouldReportRecordsInFlight(v192, v147, v148);
    v151 = objc_msgSend_createSerialQueue(v193, v149, v150);
    modifyRecordsQueue = v193->_modifyRecordsQueue;
    v193->_modifyRecordsQueue = v151;

    v193->_shouldModifyRecordsInDatabase = objc_msgSend_shouldModifyRecordsInDatabase(v192, v153, v154);
    v193->_alwaysFetchPCSFromServer = objc_msgSend_alwaysFetchPCSFromServer(v192, v155, v156);
    v159 = objc_msgSend_assetUUIDToExpectedProperties(v192, v157, v158);
    assetUUIDToExpectedProperties = v193->_assetUUIDToExpectedProperties;
    v193->_assetUUIDToExpectedProperties = v159;

    v163 = objc_msgSend_packageUUIDToExpectedProperties(v192, v161, v162);
    packageUUIDToExpectedProperties = v193->_packageUUIDToExpectedProperties;
    v193->_packageUUIDToExpectedProperties = v163;

    v167 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v165, v166);
    v170 = objc_msgSend_maximumMergeableDeltaRequestSize(v167, v168, v169);

    v173 = v193->_atomic || v189 < v170 && v212[3] < *MEMORY[0x277CBBFA0];
    v193->_includeMergeableDeltasInModifyRecordsRequest = v173;
    if (*MEMORY[0x277CBC810] == 1)
    {
      v174 = objc_msgSend_unitTestOverrides(v193, v171, v172);
      v176 = objc_msgSend_objectForKeyedSubscript_(v174, v175, @"ForceSeparateRequestForMergeableDeltaUpload");
      v179 = objc_msgSend_BOOLValue(v176, v177, v178);

      if (v179)
      {
        v193->_includeMergeableDeltasInModifyRecordsRequest = 0;
      }
    }

    _Block_object_dispose(&v211, 8);
  }

  v180 = *MEMORY[0x277D85DE8];
  return v193;
}

- (BOOL)retryPCSFailures
{
  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(self, a2, v2), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v4, v5, @"DontRetryPCSFailures"), v6 = objc_claimAutoreleasedReturnValue(), v6, v4, v6))
  {
    return 0;
  }

  else
  {
    return self->_retryPCSFailures;
  }
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/modify-records", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)_hasHandlerInState:(unint64_t)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = objc_msgSend_modifyHandlersByZoneID(self, a2, a3);
  v7 = objc_msgSend_allValues(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v30, v35, 16);
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
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = v13;
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v26, v34, 16);
        if (v16)
        {
          v19 = v16;
          v20 = *v27;
          while (2)
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v27 != v20)
              {
                objc_enumerationMutation(v14);
              }

              if (objc_msgSend_state(*(*(&v26 + 1) + 8 * j), v17, v18) == a3)
              {

                v23 = 1;
                goto LABEL_19;
              }
            }

            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v26, v34, 16);
            if (v19)
            {
              continue;
            }

            break;
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v22, &v30, v35, 16);
      v23 = 0;
    }

    while (v10);
  }

  else
  {
    v23 = 0;
  }

LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)_enumerateHandlersInState:(unint64_t)a3 withBlock:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (v8)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = objc_msgSend_modifyHandlersByZoneID(self, v6, v7);
    v12 = objc_msgSend_allValues(v9, v10, v11);

    obj = v12;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v35, v40, 16);
    if (v14)
    {
      v15 = v14;
      v30 = *v36;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v18 = v17;
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v31, v39, 16);
          if (v20)
          {
            v23 = v20;
            v24 = *v32;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v32 != v24)
                {
                  objc_enumerationMutation(v18);
                }

                v26 = *(*(&v31 + 1) + 8 * j);
                if (objc_msgSend_state(v26, v21, v22) == a3)
                {
                  v8[2](v8, v26);
                }
              }

              v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v31, v39, 16);
            }

            while (v23);
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v35, v40, 16);
      }

      while (v15);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (int)operationType
{
  hasRecordsToDelete = self->_hasRecordsToDelete;
  if (self->_hasRecordsToSave)
  {
    if (!self->_hasRecordsToDelete)
    {
      return 210;
    }
  }

  else if (self->_hasRecordsToDelete)
  {
    return 214;
  }

  return 0;
}

- (BOOL)isOperationType:(int)a3
{
  if (a3 == 214)
  {
    v5 = 489;
  }

  else
  {
    if (a3 != 210)
    {
      v9 = v3;
      v10 = v4;
      v8.receiver = self;
      v8.super_class = CKDModifyRecordsOperation;
      v6 = [(CKDOperation *)&v8 isOperationType:?];
      return v6 & 1;
    }

    v5 = 488;
  }

  v6 = *(&self->super.super.super.super.isa + v5);
  return v6 & 1;
}

- (id)handlerForSaveWithRecord:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_modifyHandlerWithShare_operation_(CKDModifyShareHandler, v5, v4, self);
  }

  else
  {
    objc_msgSend_modifyHandlerWithRecord_operation_(CKDModifyRecordHandler, v5, v4, self);
  }
  v6 = ;

  return v6;
}

- (CKDDecryptRecordsOperation)recordDecryptOperation
{
  v2 = self;
  objc_sync_enter(v2);
  decryptOperation = v2->_decryptOperation;
  if (!decryptOperation || objc_msgSend_isFinished(decryptOperation, v3, v4))
  {
    v6 = objc_opt_new();
    v7 = objc_opt_class();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2251FD350;
    v11[3] = &unk_278548B60;
    v11[4] = v2;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(v2, v8, v7, v6, v11);
  }

  v9 = v2->_decryptOperation;
  objc_sync_exit(v2);

  return v9;
}

- (void)finishDecryption
{
  obj = self;
  objc_sync_enter(obj);
  decryptOperation = obj->_decryptOperation;
  if (decryptOperation && (objc_msgSend_isFinished(decryptOperation, v2, v3) & 1) == 0)
  {
    objc_msgSend_finishDecryption(obj->_decryptOperation, v5, v6);
  }

  objc_sync_exit(obj);
}

- (BOOL)makeStateTransition
{
  v82 = *MEMORY[0x277D85DE8];
  objc_msgSend__performHandlerCallbacks(self, a2, v2);
  switch(objc_msgSend_state(self, v4, v5))
  {
    case 1:
      objc_msgSend_setState_(self, v6, 2);
      objc_msgSend__determineEnvironment(self, v33, v34);
      break;
    case 2:
      objc_msgSend_setState_(self, v6, 3);
      objc_msgSend__fetchContainerScopedUserID(self, v35, v36);
      break;
    case 3:
      objc_msgSend_setState_(self, v6, 4);
      objc_msgSend__fetchUserPublicKeys(self, v18, v19);
      break;
    case 4:
      objc_msgSend_setState_(self, v6, 5);
      objc_msgSend__applySideEffects(self, v31, v32);
      break;
    case 5:
      objc_msgSend_setState_(self, v6, 6);
      v13 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2821F9670](self, sel__topoSortRecords, v12);
    case 6:
      objc_msgSend_setState_(self, v6, 7);
      objc_msgSend__synchronizeUserKeyRegistryIfNeeded(self, v48, v49);
      break;
    case 7:
    case 18:
      goto LABEL_2;
    case 8:
      objc_msgSend_setState_(self, v6, 10);
      objc_msgSend__fetchSharePCSData(self, v54, v55);
      break;
    case 9:
      objc_msgSend_setState_(self, v6, 11);
      objc_msgSend__fetchRecordsForRereferencing(self, v16, v17);
      break;
    case 10:
      objc_msgSend_setState_(self, v6, 9);
      objc_msgSend__fetchRecordPCSData(self, v52, v53);
      break;
    case 11:
      objc_msgSend_setState_(self, v6, 12);
      objc_msgSend__prepareForUpload(self, v10, v11);
      break;
    case 12:
      objc_msgSend_setState_(self, v6, 13);
      objc_msgSend__uploadAssets(self, v14, v15);
      break;
    case 13:
      if (objc_msgSend_shouldOnlySaveAssetContent(self, v6, v7))
      {
        goto LABEL_23;
      }

      objc_msgSend_setState_(self, v28, 14);
      v70 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2821F9670](self, sel__prepareRecordsForSave, v69);
    case 14:
      v20 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v6, v7);
      shouldDecryptRecordsBeforeSave = objc_msgSend_shouldDecryptRecordsBeforeSave(v20, v21, v22);

      if (!shouldDecryptRecordsBeforeSave)
      {
        goto LABEL_12;
      }

      objc_msgSend_setState_(self, v6, 15);
      objc_msgSend__verifyRecordEncryption(self, v24, v25);
      break;
    case 15:
LABEL_12:
      if (!objc_msgSend_shouldReportRecordsInFlight(self, v6, v7))
      {
        goto LABEL_14;
      }

      objc_msgSend_setState_(self, v6, 16);
      objc_msgSend__reportRecordsInFlight(self, v26, v27);
      break;
    case 16:
LABEL_14:
      if (objc_msgSend_shouldModifyRecordsInDatabase(self, v6, v7))
      {
        objc_msgSend_setState_(self, v28, 17);
        objc_msgSend__continueRecordsModify(self, v29, v30);
      }

      else
      {
LABEL_23:
        objc_msgSend_setState_(self, v28, 19);
        objc_msgSend__markRecordHandlersAsUploaded(self, v46, v47);
      }

      break;
    case 17:
      if (objc_msgSend__hasHandlerInState_(self, v6, 10) && (v39 = objc_msgSend_saveAttempts(self, v37, v38), objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v40, v41), v42 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend_PCSRetryCount(v42, v43, v44), v42, v39 <= v45))
      {
        objc_msgSend_setState_(self, v37, 18);
        objc_msgSend__fetchShareParticipants(self, v71, v72);
      }

      else
      {
        objc_msgSend_setState_(self, v37, 19);
      }

      break;
    case 19:
      objc_msgSend_setState_(self, v6, 20);
      objc_msgSend__uploadMergeableDeltas(self, v50, v51);
      break;
    case 20:
      if (objc_msgSend_haveOutstandingHandlers(self, v6, v7) && (v58 = objc_msgSend_saveAttempts(self, v56, v57), objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v59, v60), v61 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend_PCSRetryCount(v61, v62, v63), v61, v58 <= v64))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v74 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v75 = v74;
          v78 = objc_msgSend_modifyHandlersByZoneID(self, v76, v77);
          v80 = 138412290;
          v81 = v78;
          _os_log_impl(&dword_22506F000, v75, OS_LOG_TYPE_INFO, "Records needed PCS info re-fetched: %@", &v80, 0xCu);
        }

LABEL_2:
        objc_msgSend_setState_(self, v6, 8);
        objc_msgSend__prepareParentPCS(self, v8, v9);
      }

      else
      {
        objc_msgSend_setState_(self, v56, 0xFFFFFFFFLL);
        v67 = objc_msgSend_error(self, v65, v66);
        objc_msgSend_finishWithError_(self, v68, v67);
      }

      break;
    default:
      break;
  }

  v73 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 - 2 >= 0x13)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDModifyRecordsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_27854A360[a3 - 2];
  }

  return v5;
}

- (void)callbackWithMetadata:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  LODWORD(a4) = objc_msgSend_isDelete(v6, v8, v9);
  v12 = objc_msgSend_callbackQueue(self, v10, v11);
  if (a4)
  {
    v13 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v14 = sub_2251FDA04;
  }

  else
  {
    v13 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v14 = sub_2251FDA14;
  }

  v13[2] = v14;
  v13[3] = &unk_278546990;
  v13[4] = self;
  v13[5] = v6;
  v13[6] = v7;
  v15 = v7;
  v16 = v6;
  dispatch_async(v12, v13);
}

- (void)saveCallbackWithMetadata:(id)a3 error:(id)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (objc_msgSend_saveCompletionBlockCalled(v7, v9, v10))
  {
    v72 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    v75 = objc_msgSend_record(v7, v73, v74);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v72, v76, a2, self, @"CKDModifyRecordsOperation.m", 647, @"saveCallbackWithMetadata:error: called twice on %@", v75);
  }

  v13 = objc_msgSend_serverRecord(v7, v11, v12);
  v16 = objc_msgSend_streamingAssetRequestOptions(self, v14, v15);
  objc_msgSend_setStreamingAssetRequestOptions_(v13, v17, v16);

  if (v8)
  {
    v20 = objc_msgSend_saveCompletionBlock(self, v18, v19);

    if (!v20)
    {
      goto LABEL_13;
    }

    v23 = objc_msgSend_saveCompletionBlock(self, v21, v22);
    v26 = objc_msgSend_record(v7, v24, v25);
    v29 = objc_msgSend_recordID(v26, v27, v28);
    (v23)[2](v23, v29, 0, 0, v8);
    goto LABEL_12;
  }

  v32 = objc_msgSend_error(v7, v18, v19);
  if (v32)
  {
    goto LABEL_9;
  }

  v33 = objc_msgSend_saveProgressBlock(self, v30, v31);

  if (v33)
  {
    v32 = objc_msgSend_saveProgressBlock(self, v34, v35);
    v38 = objc_msgSend_record(v7, v36, v37);
    v41 = objc_msgSend_recordID(v38, v39, v40);
    (v32)[2](v32, v41, 1.0);

LABEL_9:
  }

  v42 = objc_msgSend_saveCompletionBlock(self, v34, v35);

  if (!v42)
  {
    goto LABEL_13;
  }

  v23 = objc_msgSend_saveCompletionBlock(self, v21, v22);
  v26 = objc_msgSend_record(v7, v43, v44);
  v29 = objc_msgSend_recordID(v26, v45, v46);
  v49 = objc_msgSend_record(v7, v47, v48);
  v52 = objc_msgSend_serverRecord(v7, v50, v51);
  v55 = objc_msgSend_error(v7, v53, v54);
  (v23)[2](v23, v29, v49, v52, v55);

LABEL_12:
LABEL_13:
  if (objc_msgSend_didAttemptZoneWideShareKeyRoll(v7, v21, v22))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v58 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v63 = v58;
      v66 = objc_msgSend_operationID(self, v64, v65);
      *buf = 138543618;
      v80 = v66;
      v81 = 2114;
      v82 = 0x28387E400;
      _os_log_debug_impl(&dword_22506F000, v63, OS_LOG_TYPE_DEBUG, "Operation %{public}@ sending CoreAnalytics event %{public}@", buf, 0x16u);

      if (v8)
      {
        goto LABEL_18;
      }
    }

    else if (v8)
    {
LABEL_18:
      v61 = v8;
LABEL_21:
      v67 = v61;
      v68 = objc_msgSend_dugongKeyRollAnalyticsPayloadWithError_(self, v62, v61);
      AnalyticsSendEvent();

      goto LABEL_22;
    }

    v61 = objc_msgSend_error(v7, v59, v60);
    goto LABEL_21;
  }

LABEL_22:
  if (!v8)
  {
    v69 = objc_msgSend_error(v7, v56, v57);

    if (!v69)
    {
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = sub_2251FDE78;
      v77[3] = &unk_278549F38;
      v77[4] = self;
      v78 = v7;
      objc_msgSend_updateCloudKitMetrics_(self, v70, v77);
    }
  }

  objc_msgSend_setSaveCompletionBlockCalled_(v7, v56, 1);

  v71 = *MEMORY[0x277D85DE8];
}

- (void)deleteCallbackWithMetadata:(id)a3 error:(id)a4
{
  v23 = a3;
  v6 = a4;
  v9 = objc_msgSend_deleteCompletionBlock(self, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_deleteCompletionBlock(self, v10, v11);
    v17 = objc_msgSend_recordID(v23, v13, v14);
    if (v6)
    {
      (v12)[2](v12, v17, v6);
    }

    else
    {
      v18 = objc_msgSend_error(v23, v15, v16);
      (v12)[2](v12, v17, v18);
    }
  }

  if (!v6)
  {
    v19 = objc_msgSend_error(v23, v10, v11);

    if (!v19 && (objc_msgSend_shouldOnlySaveAssetContent(self, v20, v21) & 1) == 0)
    {
      objc_msgSend_updateCloudKitMetrics_(self, v22, &unk_28385D600);
    }
  }
}

- (void)_performCallbacksForNonAtomicZoneHandlers:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_saveAttempts(self, v5, v6);
  v10 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v8, v9);
  v13 = objc_msgSend_PCSRetryCount(v10, v11, v12);
  v14 = v7 <= v13;

  if (*MEMORY[0x277CBC810] == 1)
  {
    v17 = objc_msgSend_unitTestOverrides(self, v15, v16);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"PreventRecordModifyRetries");

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = v7 <= v13;
    }

    v14 = v20;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v21 = v4;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v59, v63, 16);
  if (v23)
  {
    v26 = v23;
    v27 = *v60;
    do
    {
      v28 = 0;
      do
      {
        if (*v60 != v27)
        {
          objc_enumerationMutation(v21);
        }

        v29 = *(*(&v59 + 1) + 8 * v28);
        v30 = objc_msgSend_state(v29, v24, v25);
        if (v30 <= 8)
        {
          if (v30 < 8)
          {
            goto LABEL_21;
          }

          if (v30 == 8)
          {
            goto LABEL_20;
          }

LABEL_26:
          v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v24, v25);
          v35 = objc_msgSend_state(v29, v33, v34);
          v38 = objc_msgSend_state(self, v36, v37);
          v41 = objc_msgSend_modifyHandlersByZoneID(self, v39, v40);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v42, a2, self, @"CKDModifyRecordsOperation.m", 759, @"Unexpected handler state in default zone %ld %ld %@", v35, v38, v41);

          goto LABEL_22;
        }

        if (v30 <= 12)
        {
          if ((v30 - 9) < 2)
          {
LABEL_21:
            objc_msgSend_setHaveOutstandingHandlers_(self, v24, 1);
            goto LABEL_22;
          }

          if ((v30 - 11) < 2)
          {
            goto LABEL_20;
          }

          goto LABEL_26;
        }

        if (v30 != 13)
        {
          if (v30 == 14)
          {
            goto LABEL_22;
          }

          goto LABEL_26;
        }

        if (!v14)
        {
LABEL_20:
          objc_msgSend_setState_(v29, v24, 14);
          objc_msgSend_callbackWithMetadata_error_(self, v31, v29, 0);
          goto LABEL_22;
        }

        objc_msgSend_setError_(v29, v24, 0);
        if (objc_msgSend_isDelete(v29, v43, v44))
        {
          v47 = objc_msgSend__needsSigningPCS(self, v45, v46) == 0;
          v49 = 5;
          v50 = 2;
          goto LABEL_33;
        }

        if ((objc_msgSend_needsRefetch(v29, v45, v46) & 1) == 0)
        {
          v47 = objc_msgSend_isShare(v29, v51, v52) == 0;
          v49 = 2;
          v50 = 10;
LABEL_33:
          if (v47)
          {
            objc_msgSend_setState_(v29, v48, v49);
          }

          else
          {
            objc_msgSend_setState_(v29, v48, v50);
          }

          goto LABEL_36;
        }

        objc_msgSend_setState_(v29, v51, 9);
LABEL_36:
        objc_msgSend_setNeedsRefetch_(v29, v53, 0);
        objc_msgSend_setHaveOutstandingHandlers_(self, v54, 1);
        objc_msgSend_updateCloudKitMetrics_(self, v55, &unk_28385D620);
LABEL_22:
        ++v28;
      }

      while (v26 != v28);
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v59, v63, 16);
      v26 = v56;
    }

    while (v56);
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (void)_performCallbacksForAtomicZoneHandlers:(id)a3
{
  v154 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_saveAttempts(self, v5, v6);
  v10 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v8, v9);
  v13 = objc_msgSend_PCSRetryCount(v10, v11, v12);
  v131 = v7 <= v13;

  if (*MEMORY[0x277CBC810] == 1)
  {
    v16 = objc_msgSend_unitTestOverrides(self, v14, v15);
    v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"PreventRecordModifyRetries");

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v7 <= v13;
    }

    v20 = v19;
    v131 = v20;
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v21 = v4;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v146, v153, 16);
  obj = v21;
  if (v23)
  {
    v26 = v23;
    v27 = 0;
    v28 = 0;
    v29 = *v147;
    do
    {
      v30 = 0;
      do
      {
        if (*v147 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = objc_msgSend_state(*(*(&v146 + 1) + 8 * v30), v24, v25);
        if (v31 <= 0xD)
        {
          if (((1 << v31) & 0x6FF) != 0)
          {
            objc_msgSend_setHaveOutstandingHandlers_(self, v24, 1);
          }

          else if (((1 << v31) & 0x2800) != 0)
          {
            v27 |= v131;
            v28 |= !v131;
          }

          else if (v31 == 12)
          {
            v28 = 1;
          }
        }

        ++v30;
      }

      while (v26 != v30);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v146, v153, 16);
      v26 = v32;
    }

    while (v32);
    v21 = obj;

    if (v28)
    {
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v35 = obj;
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v142, v152, 16);
      if (!v37)
      {
        goto LABEL_82;
      }

      v40 = v37;
      v41 = *v143;
      v132 = *MEMORY[0x277CBC120];
      while (1)
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v143 != v41)
          {
            objc_enumerationMutation(v35);
          }

          v43 = *(*(&v142 + 1) + 8 * i);
          v44 = objc_msgSend_state(v43, v38, v39);
          if (v44 > 8)
          {
            if ((v44 - 9) >= 4)
            {
              if (v44 != 13)
              {
                if (v44 == 14)
                {
                  continue;
                }

                goto LABEL_39;
              }

              objc_msgSend_setState_(v43, v38, 14);
              v68 = MEMORY[0x277CBC560];
              v71 = objc_msgSend_error(v43, v69, v70);
              v74 = objc_msgSend_recordID(v43, v72, v73);
              v54 = objc_msgSend_errorWithDomain_code_error_format_(v68, v75, v132, 2055, v71, @"Record %@ will not be saved but can be retried as is", v74);

              goto LABEL_41;
            }
          }

          else if (v44 >= 8)
          {
            if (v44 == 8)
            {
              objc_msgSend_setState_(v43, v38, 14);
              objc_msgSend_callbackWithMetadata_error_(self, v45, v43, 0);
              continue;
            }

LABEL_39:
            v57 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v38, v39);
            v60 = objc_msgSend_state(v43, v58, v59);
            v63 = objc_msgSend_state(self, v61, v62);
            v66 = objc_msgSend_modifyHandlersByZoneID(self, v64, v65);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v57, v67, a2, self, @"CKDModifyRecordsOperation.m", 870, @"Unexpected handler state in failed atomic zone %ld %ld %@", v60, v63, v66);

            continue;
          }

          objc_msgSend_setState_(v43, v38, 14);
          v50 = objc_msgSend_error(v43, v46, v47);
          if (!v50)
          {
            v51 = MEMORY[0x277CBC560];
            v52 = objc_msgSend_recordID(v43, v48, v49);
            v54 = objc_msgSend_errorWithDomain_code_format_(v51, v53, v132, 2024, @"Record %@ will not be saved because of previous error in atomic zone", v52);

LABEL_41:
            v50 = objc_msgSend_CKClientSuitableError(v54, v55, v56);
          }

          objc_msgSend_callbackWithMetadata_error_(self, v48, v43, v50);
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v142, v152, 16);
        if (!v40)
        {
          goto LABEL_82;
        }
      }
    }

    if (v27)
    {
      objc_msgSend_setHaveOutstandingHandlers_(self, v33, 1);
      objc_msgSend_updateCloudKitMetrics_(self, v76, &unk_28385D640);
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v77 = obj;
      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v138, v151, 16);
      if (!v79)
      {
        goto LABEL_82;
      }

      v81 = v79;
      v82 = *v139;
      while (1)
      {
        for (j = 0; j != v81; ++j)
        {
          if (*v139 != v82)
          {
            objc_enumerationMutation(v77);
          }

          v84 = *(*(&v138 + 1) + 8 * j);
          objc_msgSend_setError_(v84, v80, 0);
          v87 = objc_msgSend_state(v84, v85, v86);
          if (v87 >= 0xC && v87 != 13)
          {
            v96 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v88, v89);
            v99 = objc_msgSend_state(v84, v97, v98);
            v102 = objc_msgSend_state(self, v100, v101);
            v105 = objc_msgSend_modifyHandlersByZoneID(self, v103, v104);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v96, v106, a2, self, @"CKDModifyRecordsOperation.m", 911, @"Unexpected handler state in retryable atomic zone %ld %ld %@", v99, v102, v105);

            continue;
          }

          if (objc_msgSend_isDelete(v84, v88, v89))
          {
            if (!objc_msgSend__needsSigningPCS(self, v91, v92))
            {
              objc_msgSend_setState_(v84, v93, 5);
              continue;
            }
          }

          else
          {
            if (objc_msgSend_needsRefetch(v84, v91, v92))
            {
              objc_msgSend_setState_(v84, v94, 9);
              continue;
            }

            if (objc_msgSend_isShare(v84, v94, v95))
            {
              objc_msgSend_setState_(v84, v93, 10);
              continue;
            }
          }

          objc_msgSend_setState_(v84, v93, 2);
        }

        v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v80, &v138, v151, 16);
        if (!v81)
        {
          goto LABEL_82;
        }
      }
    }
  }

  else
  {
  }

  if ((objc_msgSend_haveOutstandingHandlers(self, v33, v34) & 1) == 0)
  {
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v107 = v21;
    v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v108, &v134, v150, 16);
    if (v109)
    {
      v112 = v109;
      v113 = *v135;
      do
      {
        for (k = 0; k != v112; ++k)
        {
          if (*v135 != v113)
          {
            objc_enumerationMutation(v107);
          }

          v115 = *(*(&v134 + 1) + 8 * k);
          v116 = objc_msgSend_state(v115, v110, v111);
          if (v116 != 14)
          {
            if (v116 == 8)
            {
              objc_msgSend_setState_(v115, v110, 14);
              objc_msgSend_callbackWithMetadata_error_(self, v117, v115, 0);
            }

            else
            {
              v118 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v110, v111);
              v121 = objc_msgSend_state(v115, v119, v120);
              v124 = objc_msgSend_state(self, v122, v123);
              v127 = objc_msgSend_modifyHandlersByZoneID(self, v125, v126);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v118, v128, a2, self, @"CKDModifyRecordsOperation.m", 927, @"Unexpected handler state in failed atomic zone %ld %ld %@", v121, v124, v127);
            }
          }
        }

        v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v110, &v134, v150, 16);
      }

      while (v112);
    }

LABEL_82:
    v21 = obj;
  }

  v129 = *MEMORY[0x277D85DE8];
}

- (void)_performHandlerCallbacks
{
  v38 = *MEMORY[0x277D85DE8];
  objc_msgSend_setHaveOutstandingHandlers_(self, a2, 0);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = objc_msgSend_modifyHandlersByZoneID(self, v3, v4, 0);
  v8 = objc_msgSend_allKeys(v5, v6, v7);

  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v33, v37, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v34;
    do
    {
      v15 = 0;
      do
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v33 + 1) + 8 * v15);
        v17 = objc_msgSend_modifyHandlersByZoneID(self, v11, v12);
        v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, v16);

        v22 = objc_msgSend_atomic(self, v20, v21);
        v25 = objc_msgSend_container(self, v23, v24);
        objc_msgSend_clientSDKVersion(v25, v26, v27);
        if (CKLinkCheck48d9728e8c354416a38f82379cbb35e3())
        {

          if ((v22 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {
          isDefaultRecordZoneID = objc_msgSend_isDefaultRecordZoneID(v16, v28, v29);

          if (((isDefaultRecordZoneID ^ 1) & v22 & 1) == 0)
          {
LABEL_8:
            objc_msgSend__performCallbacksForNonAtomicZoneHandlers_(self, v30, v19);
            goto LABEL_11;
          }
        }

        objc_msgSend__performCallbacksForAtomicZoneHandlers_(self, v30, v19);
LABEL_11:

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v33, v37, 16);
    }

    while (v13);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_determineEnvironment
{
  v19 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  if (objc_msgSend_isAppleInternalInstall(v19, v4, v5))
  {
    v8 = objc_msgSend_container(self, v6, v7);
    v11 = objc_msgSend_cachedEnvironment(v8, v9, v10);

    if (v11 == -1)
    {
      objc_initWeak(&location, self);
      v14 = objc_msgSend_stateTransitionGroup(self, v12, v13);
      dispatch_group_enter(v14);

      v17 = objc_msgSend_container(self, v15, v16);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_2251FEEB0;
      v20[3] = &unk_278549F80;
      objc_copyWeak(&v21, &location);
      objc_msgSend_fetchServerEnvironmentForOperation_withCompletionHandler_(v17, v18, self, v20);

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

- (void)_fetchUserPublicKeys
{
  v57 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_requestNeedsUserPublicKeys(self, a2, v2))
  {
    v6 = objc_msgSend_userPublicKeys(self, v4, v5);
    v9 = objc_msgSend_count(v6, v7, v8);

    if (!v9)
    {
      v10 = MEMORY[0x277CBC880];
      v11 = MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v12 = MEMORY[0x277CBC830];
      v13 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v36 = v13;
        v39 = objc_msgSend_operationID(self, v37, v38);
        *buf = 138543362;
        v52 = v39;
        _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Fetching user public keys for operation %{public}@", buf, 0xCu);
      }

      v16 = objc_msgSend_container(self, v14, v15);
      v19 = objc_msgSend_pcsManager(v16, v17, v18);
      v50 = 0;
      v21 = objc_msgSend_copyAllPublicKeysForService_withError_(v19, v20, 0, &v50);
      v22 = v50;

      v25 = objc_msgSend_count(v21, v23, v24);
      v26 = *v11;
      v27 = *v10;
      if (!v25 || v22)
      {
        if (v27 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v26);
        }

        v30 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v52 = v22;
          _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "Error fetching current service public keys for user: %@", buf, 0xCu);
        }

        v33 = objc_msgSend_error(self, v31, v32);

        if (!v33)
        {
          objc_msgSend_setError_(self, v34, v22);
        }
      }

      else
      {
        if (v27 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v26);
        }

        v28 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
        {
          v40 = v28;
          v43 = objc_msgSend_count(v21, v41, v42);
          if (objc_msgSend_count(v21, v44, v45) == 1)
          {
            v48 = &stru_28385ED00;
          }

          else
          {
            v48 = @"s";
          }

          v49 = objc_msgSend_operationID(self, v46, v47);
          *buf = 134218498;
          v52 = v43;
          v53 = 2114;
          v54 = v48;
          v55 = 2114;
          v56 = v49;
          _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Fetched %lu user public key%{public}@ for operation %{public}@", buf, 0x20u);
        }

        objc_msgSend_setUserPublicKeys_(self, v29, v21);
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_fetchContainerScopedUserID
{
  objc_initWeak(&location, self);
  v5 = objc_msgSend_stateTransitionGroup(self, v3, v4);
  dispatch_group_enter(v5);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2251FF2FC;
  v7[3] = &unk_278549318;
  objc_copyWeak(&v8, &location);
  objc_msgSend_fetchContainerScopedUserID_(self, v6, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_applySideEffects
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2251FF3E0;
  v2[3] = &unk_278549FA8;
  v2[4] = self;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, a2, 0, v2);
}

- (id)_topoSortRecordsForHandlers:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v6, v7);
  v9 = objc_opt_new();
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v10 = v4;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v71, v76, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v72;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v72 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v71 + 1) + 8 * i);
        v20 = objc_msgSend_record(v18, v13, v14);
        if (v20)
        {
          objc_msgSend_addObject_(v5, v19, v20);
          objc_msgSend_setObject_forKey_(v8, v21, v18, v20);
        }

        else
        {
          objc_msgSend_addObject_(v9, v19, v18);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v71, v76, 16);
    }

    while (v15);
  }

  if (objc_msgSend_count(v5, v22, v23))
  {
    v24 = objc_alloc_init(MEMORY[0x277CBC5C0]);
    v70 = 0;
    v26 = objc_msgSend_addRecords_error_(v24, v25, v5, &v70);
    v27 = v70;
    v30 = v27;
    if (v26)
    {
      v69 = v27;
      v31 = objc_msgSend_recordsByTopologicalSortWithError_(v24, v28, &v69);
      v32 = v69;

      if (v31)
      {
        v62 = v10;
        v63 = v32;
        v64 = v24;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v35 = v31;
        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v65, v75, 16);
        if (v37)
        {
          v39 = v37;
          v40 = 0;
          v41 = *v66;
          do
          {
            v42 = v35;
            v43 = 0;
            v44 = v40;
            do
            {
              if (*v66 != v41)
              {
                objc_enumerationMutation(v42);
              }

              v45 = objc_msgSend_objectForKey_(v8, v38, *(*(&v65 + 1) + 8 * v43));
              v40 = v44 + 1;
              objc_msgSend_setBatchRank_(v45, v46, v44);
              objc_msgSend_addObject_(v9, v47, v45);

              ++v43;
              ++v44;
            }

            while (v39 != v43);
            v35 = v42;
            v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v38, &v65, v75, 16);
          }

          while (v39);
        }

        v48 = v9;
        v32 = v63;
        v24 = v64;
        v10 = v62;
      }

      else
      {
        v54 = MEMORY[0x277CBC560];
        v55 = *MEMORY[0x277CBC120];
        v56 = objc_msgSend_localizedDescription(v32, v33, v34);
        v58 = objc_msgSend_errorWithDomain_code_format_(v54, v57, v55, 1007, @"Invalid list of records: %@", v56);
        objc_msgSend_setError_(self, v59, v58);

        v35 = 0;
        v48 = 0;
      }
    }

    else
    {
      v49 = MEMORY[0x277CBC560];
      v50 = *MEMORY[0x277CBC120];
      v35 = objc_msgSend_localizedDescription(v27, v28, v29);
      v52 = objc_msgSend_errorWithDomain_code_format_(v49, v51, v50, 1007, @"Invalid list of records: %@", v35);
      objc_msgSend_setError_(self, v53, v52);

      v48 = 0;
      v32 = v30;
    }
  }

  else
  {
    v48 = v9;
  }

  v60 = *MEMORY[0x277D85DE8];

  return v48;
}

- (BOOL)_topoSortRecords
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_options(v4, v5, v6);
  v10 = objc_msgSend_maintainRecordUploadOrder(v7, v8, v9);

  if (*MEMORY[0x277CBC810])
  {
    v13 = objc_msgSend_unitTestOverrides(self, v11, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"SkipToposortingRecords");
    v16 = v15 != 0;

    if ((v16 | v10))
    {
      goto LABEL_15;
    }
  }

  else if (v10)
  {
LABEL_15:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v49 = v46;
      v52 = objc_msgSend_container(self, v50, v51);
      v55 = objc_msgSend_containerID(v52, v53, v54);
      v58 = objc_msgSend_ckShortDescription(v55, v56, v57);
      *buf = 138543362;
      v64 = v58;
      _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Skipping topo sort of all zones for container %{public}@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v17 = objc_msgSend_container(self, v11, v12);
  v20 = objc_msgSend_containerID(v17, v18, v19);
  shouldToposortInContainerID = objc_msgSend__shouldToposortInContainerID_(self, v21, v20);

  if (!shouldToposortInContainerID)
  {
    goto LABEL_15;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v25 = objc_msgSend_modifyHandlersByZoneID(self, v23, v24, 0);
  v28 = objc_msgSend_allKeys(v25, v26, v27);

  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v59, v65, 16);
  if (v30)
  {
    v33 = v30;
    v34 = *v60;
    while (2)
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v60 != v34)
        {
          objc_enumerationMutation(v28);
        }

        v36 = *(*(&v59 + 1) + 8 * i);
        v37 = objc_msgSend_modifyHandlersByZoneID(self, v31, v32);
        v39 = objc_msgSend_objectForKeyedSubscript_(v37, v38, v36);
        v41 = objc_msgSend__topoSortRecordsForHandlers_(self, v40, v39);

        if (!v41)
        {

          result = 0;
          goto LABEL_20;
        }

        v44 = objc_msgSend_modifyHandlersByZoneID(self, v42, v43);
        objc_msgSend_setObject_forKeyedSubscript_(v44, v45, v41, v36);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v59, v65, 16);
      if (v33)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
  result = 1;
LABEL_20:
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_fetchShareParticipants
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2251FFEE8;
  v30[3] = &unk_278549FA8;
  v4 = v3;
  v31 = v4;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, v5, 10, v30);
  if (objc_msgSend_count(v4, v6, v7))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v11 = v8;
      v14 = objc_msgSend_allKeys(v4, v12, v13);
      *buf = 138412290;
      v34 = v14;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Fetching participants for shares: %@", buf, 0xCu);
    }

    v15 = objc_msgSend_stateTransitionGroup(self, v9, v10);
    dispatch_group_enter(v15);

    v16 = objc_opt_new();
    v19 = objc_msgSend_allKeys(v4, v17, v18);
    objc_msgSend_setRecordIDs_(v16, v20, v19);

    v32 = *MEMORY[0x277CBC040];
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, &v32, 1);
    objc_msgSend_setDesiredKeys_(v16, v23, v22);

    v24 = objc_opt_class();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_2251FFF6C;
    v27[3] = &unk_278548C48;
    v28 = v4;
    v29 = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v25, v24, v16, v27);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizeUserKeyRegistryIfNeeded
{
  v31 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(self, a2, v2))
  {
    v6 = objc_msgSend_topmostParentOperation(self, v4, v5);
    v9 = objc_msgSend_operationID(v6, v7, v8);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v30 = v9;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Will attempt user key sync for operation %{public}@.", buf, 0xCu);
    }

    v13 = objc_msgSend_stateTransitionGroup(self, v11, v12);
    dispatch_group_enter(v13);

    objc_initWeak(buf, self);
    objc_msgSend_noteOperationWillWaitOnPCS(self, v14, v15);
    v18 = objc_msgSend_container(self, v16, v17);
    v21 = objc_msgSend_pcsManager(v18, v19, v20);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2252005A8;
    v25[3] = &unk_278549FD0;
    objc_copyWeak(&v28, buf);
    v22 = v9;
    v26 = v22;
    v27 = self;
    objc_msgSend_synchronizeUserKeyRegistryForServiceType_resourceLastModifiedDate_outdatedPublicKeyID_shouldThrottle_context_requestorOperationID_completionHandler_(v21, v23, 0, 0, 0, 1, 0x28387E940, v22, v25);

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)needsUserKeySyncToPopulateServiceIdentity
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = objc_msgSend_handlersByRecordID(self, a2, v2);
  v7 = objc_msgSend_allValues(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v19;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v7);
        }

        if (objc_msgSend_requiresPCS(*(*(&v18 + 1) + 8 * v14), v10, v11))
        {

          v17.receiver = self;
          v17.super_class = CKDModifyRecordsOperation;
          result = [(CKDDatabaseOperation *)&v17 needsUserKeySyncToPopulateServiceIdentity];
          goto LABEL_11;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v22, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  result = 0;
LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_prepareParentPCS
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_saveAttempts(self, a2, v2);
  objc_msgSend_setSaveAttempts_(self, v5, (v4 + 1));
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_225074060;
  v46 = sub_2250735BC;
  v47 = objc_opt_new();
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_225200E88;
  v41[3] = &unk_278549FF8;
  v41[4] = &v42;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, v6, 2, v41);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = v43[5];
  v9 = 0;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v37, v48, 16);
  if (v12)
  {
    v13 = *v38;
    v14 = MEMORY[0x277CBC810];
    do
    {
      v15 = 0;
      do
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v37 + 1) + 8 * v15);
        v17 = objc_msgSend_handlersByRecordID(self, v10, v11, v37);
        v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, v16);

        if (v19)
        {
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          objc_msgSend_setObject_forKeyedSubscript_(v9, v20, v19, v16);
          v23 = objc_msgSend_record(v19, v21, v22);
          objc_msgSend_setWantsChainPCS_(v23, v24, 1);

          if (*v14 == 1)
          {
            v27 = objc_msgSend_unitTestOverrides(self, v25, v26);
            v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, @"SkipChainPCS");
            v30 = v29 == 0;

            if (!v30)
            {
              v33 = objc_msgSend_record(v19, v31, v32);
              objc_msgSend_setWantsChainPCS_(v33, v34, 0);
            }
          }
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v37, v48, 16);
    }

    while (v12);
  }

  objc_msgSend_setParentsByRecordID_(self, v35, v9);
  _Block_object_dispose(&v42, 8);

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_fetchSharePCSData
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_225201118;
  v19[3] = &unk_27854A020;
  v19[4] = self;
  v4 = v3;
  v20 = v4;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, v5, 1, v19);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v21, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_fetchSharePCSData(*(*(&v15 + 1) + 8 * v13++), v9, v10, v15);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v15, v21, 16);
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_needsSigningPCS
{
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_options(v4, v5, v6);
  if (objc_msgSend_useAnonymousToServerShareParticipants(v7, v8, v9))
  {
    v12 = objc_msgSend_databaseScope(self, v10, v11) == 3;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_fetchRecordPCSData
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_225201448;
  v19[3] = &unk_27854A020;
  v19[4] = self;
  v4 = v3;
  v20 = v4;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, v5, 2, v19);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v21, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_fetchRecordPCSData(*(*(&v15 + 1) + 8 * v13++), v9, v10, v15);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v15, v21, 16);
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)assetArray:(id)a3 didFetchRecord:(id)a4 error:(id)a5
{
  v216 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  v188 = v10;
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v173 = v11;
    v174 = objc_opt_class();
    v175 = NSStringFromClass(v174);
    v178 = objc_msgSend_ckShortDescription(self, v176, v177);
    v181 = objc_msgSend_recordID(v9, v179, v180);
    v182 = v181;
    *buf = 138544642;
    v183 = @" Error was ";
    v205 = v175;
    v184 = &stru_28385ED00;
    v206 = 2048;
    if (!v10)
    {
      v183 = &stru_28385ED00;
    }

    v207 = self;
    if (v10)
    {
      v184 = v10;
    }

    v208 = 2114;
    v209 = v178;
    v210 = 2112;
    v211 = v181;
    v212 = 2114;
    v213 = v183;
    v214 = 2112;
    v215 = v184;
    _os_log_debug_impl(&dword_22506F000, v173, OS_LOG_TYPE_DEBUG, "Record fetcher <%{public}@: %p; %{public}@> fetched a record with ID %@.%{public}@%@", buf, 0x3Eu);
  }

  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  obj = v8;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v198, v203, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v199;
    v16 = *MEMORY[0x277CBC120];
    v186 = *MEMORY[0x277CBC120];
    v187 = *v199;
    v189 = self;
    v185 = v9;
    do
    {
      v17 = 0;
      v190 = v14;
      do
      {
        if (*v199 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v198 + 1) + 8 * v17);
        v21 = objc_msgSend_handlersByAssetNeedingRecordFetch(self, v19, v20);
        v193 = objc_msgSend_objectForKey_(v21, v22, v18);

        if (!v10)
        {
          v33 = objc_msgSend_assetReference(v18, v23, v24);
          v36 = objc_msgSend_fieldName(v33, v34, v35);
          v38 = objc_msgSend_objectForKeyedSubscript_(v9, v37, v36);

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = v9;
            v40 = v38;
            v41 = v38;
            v44 = objc_msgSend_reReferenceItemID(v41, v42, v43);
            objc_msgSend_setReReferenceItemID_(v18, v45, v44);
            v48 = objc_msgSend_signature(v41, v46, v47);
            v51 = objc_msgSend_assetReference(v18, v49, v50);
            v54 = objc_msgSend_fileSignature(v51, v52, v53);
            isEqualToData = objc_msgSend_isEqualToData_(v48, v55, v54);

            v59 = objc_msgSend_assetRereferenceInfo(v18, v57, v58);
            v62 = v59;
            if (isEqualToData)
            {
              PropertiesWithAsset = objc_msgSend_validateAndSetRecordFetchPropertiesWithAsset_(v59, v60, v41);

              if ((PropertiesWithAsset & 1) == 0)
              {
                v66 = objc_msgSend_assetRereferenceInfo(v18, v64, v65);
                v69 = objc_msgSend_error(v66, v67, v68);

                v15 = v187;
                v10 = v188;
                v14 = v190;
                if (!v69)
                {
                  objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v70, v186, 1, @"the referenced asset %@ has missing information", v41);
                  goto LABEL_35;
                }

LABEL_41:

                v31 = v40;
                v9 = v39;
                self = v189;
                goto LABEL_47;
              }

LABEL_33:
              v15 = v187;
              v10 = v188;
LABEL_40:
              v14 = v190;
              goto LABEL_41;
            }

            v104 = objc_msgSend_error(v59, v60, v61);

            if (v104)
            {
              goto LABEL_33;
            }

            v124 = MEMORY[0x277CBC560];
            v110 = objc_msgSend_assetReference(v18, v105, v106);
            v113 = objc_msgSend_fileSignature(v110, v125, v126);
            v129 = objc_msgSend_signature(v41, v127, v128);
            v131 = objc_msgSend_errorWithDomain_code_format_(v124, v130, v186, 1, @"the referencing asset's signature %@ and the referenced asset's signature %@ don't match", v113, v129);
            v134 = objc_msgSend_assetRereferenceInfo(v18, v132, v133);
            objc_msgSend_setError_(v134, v135, v131);

            v15 = v187;
            v10 = v188;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v71 = v38;
              v194 = 0u;
              v195 = 0u;
              v196 = 0u;
              v197 = 0u;
              v192 = v71;
              v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v192, v72, &v194, v202, 16);
              if (v73)
              {
                v74 = v73;
                v75 = *v195;
                while (2)
                {
                  for (i = 0; i != v74; ++i)
                  {
                    if (*v195 != v75)
                    {
                      objc_enumerationMutation(v192);
                    }

                    v77 = *(*(&v194 + 1) + 8 * i);
                    v80 = objc_msgSend_signature(v77, v78, v79);
                    v83 = objc_msgSend_assetReference(v18, v81, v82);
                    v86 = objc_msgSend_fileSignature(v83, v84, v85);
                    v88 = objc_msgSend_isEqualToData_(v80, v87, v86);

                    if (v88)
                    {
                      v115 = objc_msgSend_reReferenceItemID(v77, v89, v90);
                      objc_msgSend_setReReferenceItemID_(v18, v116, v115);
                      v119 = objc_msgSend_assetRereferenceInfo(v18, v117, v118);
                      v121 = objc_msgSend_validateAndSetRecordFetchPropertiesWithAsset_(v119, v120, v77);

                      if (v121)
                      {
                        v100 = v192;
                        v10 = v188;
                        self = v189;
                        v9 = v185;
                        v15 = v187;
                        v14 = v190;
                      }

                      else
                      {
                        v136 = objc_msgSend_assetRereferenceInfo(v18, v122, v123);
                        v139 = objc_msgSend_error(v136, v137, v138);

                        v10 = v188;
                        self = v189;
                        v9 = v185;
                        v15 = v187;
                        v14 = v190;
                        if (!v139)
                        {
                          v141 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v140, v186, 1, @"the referenced asset %@ has missing information", v77);
                          v144 = objc_msgSend_assetRereferenceInfo(v18, v142, v143);
                          objc_msgSend_setError_(v144, v145, v141);
                        }

                        v100 = v192;
                      }

                      goto LABEL_45;
                    }
                  }

                  v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v192, v91, &v194, v202, 16);
                  if (v74)
                  {
                    continue;
                  }

                  break;
                }
              }

              v94 = objc_msgSend_assetRereferenceInfo(v18, v92, v93);
              v97 = objc_msgSend_error(v94, v95, v96);

              v10 = v188;
              self = v189;
              v9 = v185;
              v15 = v187;
              v14 = v190;
              if (!v97)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v98 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_22506F000, v98, OS_LOG_TYPE_ERROR, "re-referenced asset signature not found in source asset array", buf, 2u);
                }

                v100 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v99, v186, 3011, @"Re-referenced asset signature not found in source asset array");
                v77 = objc_msgSend_assetRereferenceInfo(v18, v101, v102);
                objc_msgSend_setError_(v77, v103, v100);
LABEL_45:
              }

              v31 = v192;

              goto LABEL_47;
            }

            v39 = v9;
            v107 = MEMORY[0x277CBC560];
            v40 = v38;
            v108 = objc_opt_class();
            v41 = NSStringFromClass(v108);
            objc_msgSend_errorWithDomain_code_format_(v107, v109, v186, 1, @"Can't handle fieldValue %@", v41);
            v110 = LABEL_35:;
            v113 = objc_msgSend_assetRereferenceInfo(v18, v111, v112);
            objc_msgSend_setError_(v113, v114, v110);
          }

          goto LABEL_40;
        }

        v25 = objc_msgSend_assetRereferenceInfo(v18, v23, v24);
        v28 = objc_msgSend_error(v25, v26, v27);

        if (v28)
        {
          goto LABEL_48;
        }

        v31 = objc_msgSend_assetRereferenceInfo(v18, v29, v30);
        objc_msgSend_setError_(v31, v32, v10);
LABEL_47:

LABEL_48:
        v146 = objc_msgSend_assetRereferenceInfo(v18, v29, v30);
        v149 = objc_msgSend_error(v146, v147, v148);

        if (v149)
        {
          v152 = objc_msgSend_assetRereferenceInfo(v18, v150, v151);
          v155 = objc_msgSend_destinationFieldName(v152, v153, v154);

          if (v155)
          {
            v158 = objc_msgSend_rereferencedAssetArrayByFieldname(v193, v156, v157);

            if (!v158)
            {
              v161 = objc_opt_new();
              objc_msgSend_setRereferencedAssetArrayByFieldname_(v193, v162, v161);
            }

            v163 = objc_msgSend_rereferencedAssetArrayByFieldname(v193, v159, v160);
            v165 = objc_msgSend_objectForKeyedSubscript_(v163, v164, v155);

            if (!v165)
            {
              v165 = objc_opt_new();
              v169 = objc_msgSend_rereferencedAssetArrayByFieldname(v193, v167, v168);
              objc_msgSend_setObject_forKeyedSubscript_(v169, v170, v165, v155);
            }

            objc_msgSend_addObject_(v165, v166, v18);
          }
        }

        ++v17;
      }

      while (v17 != v14);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v171, &v198, v203, 16);
    }

    while (v14);
  }

  v172 = *MEMORY[0x277D85DE8];
}

- (void)packageArray:(id)a3 didFetchRecord:(id)a4 error:(id)a5
{
  v119 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v91 = a5;
  if (v91)
  {
    v11 = v8;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v16 = objc_msgSend_recordID(v9, v14, v15);
      *buf = 138412546;
      v116 = v91;
      v117 = 2112;
      v118 = v16;
      _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Encountered error %@ when fetching record with recordID %@ for package cloning", buf, 0x16u);
    }
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v11 = v8;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v109, v114, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v110;
      v22 = *MEMORY[0x277CBC120];
      v92 = *MEMORY[0x277CBC120];
      v93 = *v110;
      v95 = v9;
      v96 = v8;
      v94 = self;
      do
      {
        v23 = 0;
        v24 = v11;
        v97 = v20;
        do
        {
          if (*v110 != v21)
          {
            objc_enumerationMutation(v24);
          }

          v25 = *(*(&v109 + 1) + 8 * v23);
          v26 = objc_msgSend_packageReference(v25, v18, v19, v91);
          v104 = objc_msgSend_fieldName(v26, v27, v28);
          v30 = objc_msgSend_objectForKeyedSubscript_(v9, v29, v104);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v99 = v30;
            v100 = v23;
            v33 = v30;
            v34 = MEMORY[0x277CBEB18];
            v37 = objc_msgSend_assets(v33, v35, v36);
            v40 = objc_msgSend_count(v37, v38, v39);
            v103 = objc_msgSend_arrayWithCapacity_(v34, v41, v40);

            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v98 = v33;
            obj = objc_msgSend_assets(v33, v42, v43);
            v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v44, &v105, v113, 16);
            v46 = v25;
            if (v45)
            {
              v47 = v45;
              v48 = 0;
              v102 = *v106;
              do
              {
                v49 = 0;
                v50 = v48;
                do
                {
                  if (*v106 != v102)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v51 = *(*(&v105 + 1) + 8 * v49);
                  v52 = objc_alloc(MEMORY[0x277CBC1B0]);
                  v55 = objc_msgSend_recordID(v26, v53, v54);
                  v58 = objc_msgSend_databaseScope(v26, v56, v57);
                  v61 = objc_msgSend_signature(v51, v59, v60);
                  v63 = objc_msgSend_initWithExistingRecordID_databaseScope_fieldName_fileSignature_(v52, v62, v55, v58, v104, v61);

                  objc_msgSend_setIsPackageMember_(v63, v64, 1);
                  v65 = objc_alloc(MEMORY[0x277CBC190]);
                  v67 = objc_msgSend_initWithAssetReference_(v65, v66, v63);
                  v70 = objc_msgSend_reReferenceItemID(v51, v68, v69);
                  objc_msgSend_setReReferenceItemID_(v67, v71, v70);
                  v48 = v50 + 1;
                  objc_msgSend_setArrayIndex_(v67, v72, v50);
                  v75 = objc_msgSend_boundaryKey(v46, v73, v74);
                  objc_msgSend_setBoundaryKey_(v67, v76, v75);

                  objc_msgSend_addObject_(v103, v77, v67);
                  ++v49;
                  v50 = v48;
                }

                while (v47 != v49);
                v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v78, &v105, v113, 16);
              }

              while (v47);
            }

            v79 = v46;
            v80 = v103;
            objc_msgSend_setAssets_(v79, v81, v103);
            v82 = v95;
            v24 = v96;
            v21 = v93;
            v83 = v94;
            v20 = v97;
            v84 = v98;
            v30 = v99;
            v23 = v100;
          }

          else
          {
            v82 = v9;
            v83 = self;
            objc_msgSend_handlersByAssetNeedingRecordFetch(self, v31, v32);
            v86 = v85 = v24;
            v84 = objc_msgSend_objectForKey_(v86, v87, v25);

            v24 = v85;
            v80 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v88, v92, 3011, 0, @"One or more referenced asset do not exist");
            objc_msgSend_setError_(v84, v89, v80);
          }

          ++v23;
          self = v83;
          v9 = v82;
        }

        while (v23 != v20);
        v11 = v24;
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v18, &v109, v114, 16);
      }

      while (v20);
    }
  }

  v90 = *MEMORY[0x277D85DE8];
}

- (void)_didCompleteRecordFetchOperation:(id)a3 assetArrayByRecordID:(id)a4
{
  v98 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_error(v6, v8, v9);

  if (!v10)
  {
    v78 = v6;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v13 = objc_msgSend_keyEnumerator(v7, v11, v12);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v83, v97, 16);
    if (v15)
    {
      v17 = v15;
      v18 = *v84;
      v79 = *MEMORY[0x277CBC120];
      v80 = v13;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v84 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = objc_msgSend_objectForKeyedSubscript_(v7, v16, *(*(&v83 + 1) + 8 * i));
          if (objc_msgSend_count(v20, v21, v22))
          {
            v25 = objc_msgSend_handlersByAssetNeedingRecordFetch(self, v23, v24);
            v28 = objc_msgSend_firstObject(v20, v26, v27);
            v30 = objc_msgSend_objectForKey_(v25, v29, v28);

            v33 = objc_msgSend_error(v30, v31, v32);

            if (!v33)
            {
              v36 = v7;
              v37 = self;
              v38 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v34, v35);
              v41 = objc_msgSend_rereferencedAssetArrayByFieldname(v30, v39, v40);
              v81[0] = MEMORY[0x277D85DD0];
              v81[1] = 3221225472;
              v81[2] = sub_22520286C;
              v81[3] = &unk_27854A048;
              v42 = v38;
              v82 = v42;
              objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v41, v43, v81);

              if (objc_msgSend_count(v42, v44, v45))
              {
                objc_msgSend_setState_(v30, v46, 12);
                v47 = MEMORY[0x277CBC560];
                v95 = @"FailedAssetsByFieldName";
                v96 = v42;
                v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v48, &v96, &v95, 1);
                v51 = objc_msgSend_errorWithDomain_code_userInfo_format_(v47, v50, v79, 3011, v49, @"One or more referenced asset do not exist");
                objc_msgSend_setError_(v30, v52, v51);
              }

              self = v37;
              v7 = v36;
              v13 = v80;
            }
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v83, v97, 16);
      }

      while (v17);
    }

    v6 = v78;
  }

  v53 = objc_msgSend_error(v6, v11, v12);

  v54 = MEMORY[0x277CBC880];
  v55 = MEMORY[0x277CBC830];
  if (v53)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v56 = *v55;
    if (os_log_type_enabled(*v55, OS_LOG_TYPE_INFO))
    {
      v59 = v56;
      v62 = objc_msgSend_error(v6, v60, v61);
      *buf = 138412290;
      v88 = v62;
      _os_log_impl(&dword_22506F000, v59, OS_LOG_TYPE_INFO, "Error fetching records: %@", buf, 0xCu);
    }

    v63 = objc_msgSend_error(self, v57, v58);

    if (!v63)
    {
      v66 = objc_msgSend_error(v6, v64, v65);
      objc_msgSend_setError_(self, v67, v66);
    }
  }

  if (*v54 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v68 = *v55;
  if (os_log_type_enabled(*v55, OS_LOG_TYPE_DEBUG))
  {
    v72 = v68;
    v73 = objc_opt_class();
    v74 = NSStringFromClass(v73);
    v77 = objc_msgSend_ckShortDescription(self, v75, v76);
    *buf = 134218754;
    v88 = v6;
    v89 = 2114;
    v90 = v74;
    v91 = 2048;
    v92 = self;
    v93 = 2114;
    v94 = v77;
    _os_log_debug_impl(&dword_22506F000, v72, OS_LOG_TYPE_DEBUG, "Fetch records operation %p completed for <%{public}@: %p; %{public}@>", buf, 0x2Au);
  }

  objc_msgSend_hash(self, v69, v70);
  kdebug_trace();

  v71 = *MEMORY[0x277D85DE8];
}

- (void)_batchFetchAssetRecordsForRereferencing
{
  v139 = *MEMORY[0x277D85DE8];
  v111 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v5 = objc_msgSend_handlersByAssetNeedingRecordFetch(self, v3, v4);
  v8 = objc_msgSend_keyEnumerator(v5, v6, v7);

  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v132, v138, 16);
  if (v10)
  {
    v11 = *v133;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v133 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v132 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v13;
          if ((objc_msgSend_isReference(v15, v16, v17) & 1) == 0)
          {
            v33 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, a2, self, @"CKDModifyRecordsOperation.m", 1507, @"Expected isReference %@", v15);
          }

          v20 = [CKDModifyRecordsOperationReReferenceBatchKey alloc];
          v22 = objc_msgSend_initWithAsset_(v20, v21, v15);
          v26 = objc_msgSend_objectForKeyedSubscript_(v111, v23, v22);
          if (!v26)
          {
            v26 = objc_msgSend_array(MEMORY[0x277CBEB18], v24, v25);
            objc_msgSend_setObject_forKeyedSubscript_(v111, v27, v26, v22);
          }

          objc_msgSend_addObject_(v26, v24, v15);
          v30 = objc_msgSend_assetRereferenceInfo(v15, v28, v29);
          objc_msgSend_clearRecordFetchProperties(v30, v31, v32);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, &v132, v138, 16);
    }

    while (v10);
  }

  v126 = 0;
  v127 = &v126;
  v128 = 0x3032000000;
  v129 = sub_225074060;
  v130 = sub_2250735BC;
  v131 = self->_cloneContextsBySignature;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = objc_msgSend_allKeys(v111, v35, v36);
  v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v122, v137, 16);
  if (v107)
  {
    v106 = *v123;
    do
    {
      for (j = 0; j != v107; ++j)
      {
        if (*v123 != v106)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v122 + 1) + 8 * j);
        v41 = objc_msgSend_set(MEMORY[0x277CBEB58], v38, v39);
        v44 = objc_msgSend_set(MEMORY[0x277CBEB58], v42, v43);
        v46 = objc_msgSend_objectForKeyedSubscript_(v111, v45, v40);
        v108 = v40;
        v47 = objc_opt_new();
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v112 = v46;
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v48, &v118, v136, 16);
        if (v51)
        {
          v52 = *v119;
          do
          {
            for (k = 0; k != v51; ++k)
            {
              if (*v119 != v52)
              {
                objc_enumerationMutation(v112);
              }

              v54 = *(*(&v118 + 1) + 8 * k);
              v55 = objc_msgSend_assetReference(v54, v49, v50);
              v58 = objc_msgSend_recordID(v55, v56, v57);

              v61 = objc_msgSend_objectForKeyedSubscript_(v47, v59, v58);
              if (!v61)
              {
                v61 = objc_opt_new();
                objc_msgSend_setObject_forKeyedSubscript_(v47, v62, v61, v58);
              }

              objc_msgSend_addObject_(v61, v60, v54);
              objc_msgSend_addObject_(v44, v63, v58);
              v66 = objc_msgSend_assetReference(v54, v64, v65);
              v69 = objc_msgSend_fieldName(v66, v67, v68);
              objc_msgSend_addObject_(v41, v70, v69);
            }

            v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v49, &v118, v136, 16);
          }

          while (v51);
        }

        v71 = objc_opt_new();
        v74 = objc_msgSend_allObjects(v44, v72, v73);
        objc_msgSend_setRecordIDs_(v71, v75, v74);

        v78 = objc_msgSend_allObjects(v41, v76, v77);
        objc_msgSend_setDesiredKeys_(v71, v79, v78);

        v82 = objc_msgSend_container(self, v80, v81);
        v85 = objc_msgSend_options(v82, v83, v84);
        v88 = objc_msgSend_mmcsEncryptionSupport(v85, v86, v87);
        objc_msgSend_setShouldFetchAssetContent_(v71, v89, (v88 >> 1) & 1);

        objc_msgSend_setShouldFetchAssetContent_(v71, v90, 1);
        objc_msgSend_setFetchingAssetsForRereference_(v71, v91, 1);
        v94 = objc_msgSend_databaseScope(v108, v92, v93);
        if (objc_msgSend_isClone(v108, v95, v96))
        {
          if (!v127[5])
          {
            v98 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v99 = v127[5];
            v127[5] = v98;

            objc_storeStrong(&self->_cloneContextsBySignature, v127[5]);
          }

          v117[0] = MEMORY[0x277D85DD0];
          v117[1] = 3221225472;
          v117[2] = sub_2252030D0;
          v117[3] = &unk_27854A070;
          v117[4] = &v126;
          objc_msgSend_setCloneContextReturnBlock_(v71, v97, v117);
        }

        v100 = objc_opt_class();
        v113[0] = MEMORY[0x277D85DD0];
        v113[1] = 3221225472;
        v113[2] = sub_225203280;
        v113[3] = &unk_27854A098;
        v113[4] = self;
        v115 = v94;
        v116 = a2;
        v101 = v47;
        v114 = v101;
        objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v102, v100, v71, v113);
      }

      v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v122, v137, 16);
    }

    while (v107);
  }

  _Block_object_dispose(&v126, 8);
  v103 = *MEMORY[0x277D85DE8];
}

- (void)_fetchPackageRecordsForRereferencing
{
  v137 = *MEMORY[0x277D85DE8];
  v107 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v106 = objc_msgSend_handlersByAssetNeedingRecordFetch(self, v3, v4);
  objc_opt_class();
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = objc_msgSend_keyEnumerator(v106, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v130, v136, 16);
  if (v8)
  {
    v9 = *v131;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v131 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v130 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v13 = v11;
          v15 = objc_msgSend_objectForKey_(v106, v14, v13);
          v16 = [CKDModifyRecordsOperationReReferenceBatchKey alloc];
          v19 = objc_msgSend_record(v15, v17, v18);
          v22 = objc_msgSend_recordID(v19, v20, v21);
          v25 = objc_msgSend_zoneID(v22, v23, v24);
          v27 = objc_msgSend_initWithPackageReference_destinationRecordZoneID_(v16, v26, v13, v25);

          v31 = objc_msgSend_objectForKeyedSubscript_(v107, v28, v27);
          if (!v31)
          {
            v31 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30);
            objc_msgSend_setObject_forKeyedSubscript_(v107, v32, v31, v27);
          }

          objc_msgSend_addObject_(v31, v29, v13);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v130, v136, 16);
    }

    while (v8);
  }

  v33 = MEMORY[0x277CBEB98];
  v36 = objc_msgSend_allKeys(v107, v34, v35);
  v38 = objc_msgSend_setWithArray_(v33, v37, v36);

  v124 = 0;
  v125 = &v124;
  v126 = 0x3032000000;
  v127 = sub_225074060;
  v128 = sub_2250735BC;
  v97 = 496;
  v129 = self->_cloneContextsBySignature;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v99 = v38;
  v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v39, &v120, v135, 16);
  if (v102)
  {
    v101 = *v121;
    v98 = v115;
    do
    {
      for (j = 0; j != v102; ++j)
      {
        if (*v121 != v101)
        {
          objc_enumerationMutation(v99);
        }

        v42 = *(*(&v120 + 1) + 8 * j);
        v43 = objc_msgSend_set(MEMORY[0x277CBEB58], v40, v41, v97, v98);
        v46 = objc_msgSend_set(MEMORY[0x277CBEB58], v44, v45);
        v48 = objc_msgSend_objectForKeyedSubscript_(v107, v47, v42);
        v104 = v42;
        v49 = objc_opt_new();
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        obja = v48;
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v50, &v116, v134, 16);
        if (v53)
        {
          v54 = *v117;
          do
          {
            for (k = 0; k != v53; ++k)
            {
              if (*v117 != v54)
              {
                objc_enumerationMutation(obja);
              }

              v56 = *(*(&v116 + 1) + 8 * k);
              v57 = objc_msgSend_packageReference(v56, v51, v52);
              v60 = objc_msgSend_recordID(v57, v58, v59);

              v64 = objc_msgSend_objectForKeyedSubscript_(v49, v61, v60);
              if (!v64)
              {
                v64 = objc_msgSend_array(MEMORY[0x277CBEB18], v62, v63);
                objc_msgSend_setObject_forKeyedSubscript_(v49, v65, v64, v60);
              }

              objc_msgSend_addObject_(v64, v62, v56);
              objc_msgSend_addObject_(v46, v66, v60);
              v69 = objc_msgSend_packageReference(v56, v67, v68);
              v72 = objc_msgSend_fieldName(v69, v70, v71);
              objc_msgSend_addObject_(v43, v73, v72);
            }

            v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v51, &v116, v134, 16);
          }

          while (v53);
        }

        v74 = objc_opt_new();
        v77 = objc_msgSend_allObjects(v46, v75, v76);
        objc_msgSend_setRecordIDs_(v74, v78, v77);

        v81 = objc_msgSend_allObjects(v43, v79, v80);
        objc_msgSend_setDesiredKeys_(v74, v82, v81);

        objc_msgSend_setShouldFetchAssetContent_(v74, v83, 1);
        objc_msgSend_setFetchingAssetsForRereference_(v74, v84, 1);
        v87 = objc_msgSend_databaseScope(v104, v85, v86);
        if (objc_msgSend_isClone(v104, v88, v89))
        {
          if (!v125[5])
          {
            v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v92 = v125[5];
            v125[5] = v91;

            objc_storeStrong((&self->super.super.super.super.isa + v97), v125[5]);
          }

          v114[0] = MEMORY[0x277D85DD0];
          v114[1] = 3221225472;
          v115[0] = sub_225203E90;
          v115[1] = &unk_27854A070;
          v115[2] = &v124;
          objc_msgSend_setCloneContextReturnBlock_(v74, v90, v114);
        }

        v93 = objc_opt_class();
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = sub_225204040;
        v110[3] = &unk_27854A098;
        v110[4] = self;
        v112 = v87;
        v113 = a2;
        v94 = v49;
        v111 = v94;
        objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v95, v93, v74, v110);
      }

      v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v40, &v120, v135, 16);
    }

    while (v102);
  }

  _Block_object_dispose(&v124, 8);
  v96 = *MEMORY[0x277D85DE8];
}

- (void)_fetchRecordsForRereferencing
{
  v5 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], a2, v2);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_225204584;
  v13[3] = &unk_27854A0C0;
  v14 = v5;
  v15 = a2;
  v13[4] = self;
  v6 = v5;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, v7, 3, v13);
  objc_msgSend_setHandlersByAssetNeedingRecordFetch_(self, v8, v6);
  objc_msgSend__fetchPackageRecordsForRereferencing(self, v9, v10);
  objc_msgSend__batchFetchAssetRecordsForRereferencing(self, v11, v12);
}

- (void)_prepareForUpload
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend__prepareAssetsForUpload(self, a2, v2);
  objc_msgSend_setHandlersByAsset_(self, v5, v4);

  v8 = objc_msgSend_handlersByAsset(self, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_container(self, v12, v13);
    v17 = objc_msgSend_options(v14, v15, v16);
    v20 = objc_msgSend_mmcsEncryptionSupport(v17, v18, v19);

    if (v20 != 1)
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v23 = objc_msgSend_handlersByAsset(self, v21, v22, 0);
      v26 = objc_msgSend_keyEnumerator(v23, v24, v25);

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v64, v68, 16);
      if (v28)
      {
        v29 = v28;
        v30 = *v65;
        while (2)
        {
          v31 = 0;
          do
          {
            if (*v65 != v30)
            {
              objc_enumerationMutation(v26);
            }

            v32 = *(*(&v64 + 1) + 8 * v31);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
              v36 = objc_msgSend_container(self, v34, v35);
              v39 = objc_msgSend_options(v36, v37, v38);
              if (objc_msgSend_mmcsEncryptionSupport(v39, v40, v41) == 2 || (objc_msgSend_useMMCSEncryptionV2(v33, v42, v43) & 1) != 0)
              {
                v44 = objc_msgSend_boundaryKey(v33, v42, v43);

                if (!v44)
                {
                  goto LABEL_23;
                }
              }

              else
              {
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = v32;
              v49 = objc_msgSend_container(self, v47, v48);
              v52 = objc_msgSend_options(v49, v50, v51);
              if (objc_msgSend_mmcsEncryptionSupport(v52, v53, v54) == 2 || (objc_msgSend_useMMCSEncryptionV2(v46, v55, v56) & 1) != 0)
              {
                v57 = objc_msgSend_boundaryKey(v46, v55, v56);

                if (!v57)
                {
LABEL_23:

                  v60 = objc_msgSend_cachedGlobalPerUserBoundaryKeyData(self, v58, v59);

                  if (!v60)
                  {
                    objc_msgSend__fetchGlobalPerUserBoundaryKey(self, v61, v62);
                  }

                  goto LABEL_25;
                }
              }

              else
              {
              }
            }

            ++v31;
          }

          while (v29 != v31);
          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v45, &v64, v68, 16);
          if (v29)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_25:
  v63 = *MEMORY[0x277D85DE8];
}

- (id)_prepareAssetsForUpload
{
  v4 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], a2, v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_225204AF8;
  v8[3] = &unk_278549FA8;
  v5 = v4;
  v9 = v5;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, v6, 4, v8);

  return v5;
}

- (void)_fetchGlobalPerUserBoundaryKey
{
  v25 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v19 = objc_msgSend_operationID(self, v4, v5);
    *buf = 138543362;
    v24 = v19;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Fetching user boundary key for operation %{public}@", buf, 0xCu);
  }

  v8 = objc_msgSend_stateTransitionGroup(self, v6, v7);
  dispatch_group_enter(v8);

  objc_msgSend_noteOperationWillWaitOnPCS(self, v9, v10);
  v13 = objc_msgSend_container(self, v11, v12);
  v16 = objc_msgSend_pcsManager(v13, v14, v15);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_225204EB4;
  v20[3] = &unk_27854A0E8;
  objc_copyWeak(&v21, &location);
  v20[4] = self;
  objc_msgSend_globalPerUserBoundaryKeyDataWithCompletionHandler_(v16, v17, v20);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_uploadAssets
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_handlersByAsset(self, a2, v2);
  if (objc_msgSend_count(v5, v6, v7))
  {
    v10 = objc_msgSend_keyEnumerator(v5, v8, v9);
    v13 = objc_msgSend_allObjects(v10, v11, v12);

    v14 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = MEMORY[0x277CBC830];
    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v62 = v16;
      v65 = objc_msgSend_operationID(self, v63, v64);
      *buf = 138543618;
      v70 = v65;
      v71 = 2112;
      v72 = v13;
      _os_log_debug_impl(&dword_22506F000, v62, OS_LOG_TYPE_DEBUG, "Uploading assets for operation %{public}@: %@", buf, 0x16u);
    }

    v19 = objc_msgSend_container(self, v17, v18);
    v22 = objc_msgSend_options(v19, v20, v21);
    v25 = objc_msgSend_mmcsEncryptionSupport(v22, v23, v24);

    if ((v25 & 2) != 0)
    {
      v27 = objc_msgSend__setBoundaryKeyOnAssetsToUpload_(self, v26, v13);

      if (!objc_msgSend_count(v27, v33, v34))
      {
        if (*v14 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v57 = *v15;
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
        {
          v58 = v57;
          v61 = objc_msgSend_operationID(self, v59, v60);
          *buf = 138543362;
          v70 = v61;
          _os_log_debug_impl(&dword_22506F000, v58, OS_LOG_TYPE_DEBUG, "No assets to upload after setting boundary keys for operation %{public}@", buf, 0xCu);
        }

        goto LABEL_15;
      }

      v13 = v27;
    }

    else
    {
      v27 = v13;
    }

    v35 = objc_opt_new();
    objc_msgSend_setAssetsToUpload_(v35, v36, v13);
    v39 = objc_msgSend_assetUUIDToExpectedProperties(self, v37, v38);
    objc_msgSend_setAssetUUIDToExpectedProperties_(v35, v40, v39);

    v43 = objc_msgSend_packageUUIDToExpectedProperties(self, v41, v42);
    objc_msgSend_setPackageUUIDToExpectedProperties_(v35, v44, v43);

    v47 = objc_msgSend_originatingFromDaemon(self, v45, v46);
    objc_msgSend_setTemporary_(v35, v48, v47);
    shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(self, v49, v50);
    objc_msgSend_setShouldCloneFileInAssetCache_(v35, v52, shouldCloneFileInAssetCache);
    objc_msgSend_setCloneContextsBySignature_(v35, v53, self->_cloneContextsBySignature);
    v54 = objc_opt_class();
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_225205588;
    v66[3] = &unk_278549720;
    v66[4] = self;
    v68 = a2;
    v67 = v5;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v55, v54, v35, v66);

LABEL_15:
    goto LABEL_16;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v28 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v29 = v28;
    v32 = objc_msgSend_operationID(self, v30, v31);
    *buf = 138543362;
    v70 = v32;
    _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "No assets to upload for operation %{public}@", buf, 0xCu);
  }

LABEL_16:

  v56 = *MEMORY[0x277D85DE8];
}

- (id)_setBoundaryKeyOnAssetsToUpload:(id)a3
{
  v101 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v90, v100, 16);
  if (!v5)
  {
    v87 = 0;
    v88 = 0;
    v85 = v3;
    goto LABEL_42;
  }

  v6 = v5;
  v87 = 0;
  v88 = 0;
  v7 = *v91;
  v8 = 0x277CBC000uLL;
  v85 = v3;
  v86 = *MEMORY[0x277CBBF50];
  v9 = 0x277CBC000;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v91 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v90 + 1) + 8 * i);
      v12 = *(v8 + 400);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v6;
        v14 = v7;
        v15 = v8;
        v16 = v3;
        v17 = v11;
        v20 = objc_msgSend_container(self, v18, v19);
        v23 = objc_msgSend_options(v20, v21, v22);
        v26 = objc_msgSend_mmcsEncryptionSupport(v23, v24, v25);

        if ((v26 & 1) == 0)
        {
          v31 = objc_msgSend_boundaryKey(v17, v27, v28);
          goto LABEL_10;
        }

        v32 = objc_msgSend_useMMCSEncryptionV2(v17, v27, v28);
        v35 = objc_msgSend_boundaryKey(v17, v33, v34);
        v31 = v35;
        if (v32)
        {
LABEL_10:
          if (v31)
          {
            v36 = 0;
            ++HIDWORD(v88);
LABEL_21:

            v3 = v16;
            v8 = v15;
            v7 = v14;
            v6 = v13;
            v9 = 0x277CBC000uLL;
            goto LABEL_22;
          }

          v31 = objc_msgSend_cachedGlobalPerUserBoundaryKeyData(self, v29, v30);
          if (v31)
          {
            objc_msgSend_setBoundaryKey_(v17, v29, v31);
            v36 = 0;
            LODWORD(v88) = v88 + 1;
            goto LABEL_21;
          }

          v37 = @"Expected non-nil cached boundary key";
        }

        else
        {
          v37 = @"Boundary key not supported for MMCSv1 asset upload";
          if (!v35)
          {
            v36 = 0;
            goto LABEL_21;
          }
        }

        v36 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v29, v86, 12, v37);
        if (v36)
        {
          v40 = v87;
          if (!v87)
          {
            v41 = objc_msgSend_mutableCopy(v16, v38, v39);

            v40 = v41;
            v85 = v41;
          }

          v87 = v40;
          objc_msgSend_removeObject_(v40, v38, v17);
          v43 = objc_msgSend_objectForKey_(self->_handlersByAsset, v42, v17);
          objc_msgSend_setError_(v43, v44, v36);
          objc_msgSend_setState_(v43, v45, 12);
        }

        goto LABEL_21;
      }

LABEL_22:
      v46 = *(v9 + 1336);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        continue;
      }

      v48 = v11;
      v51 = objc_msgSend_container(self, v49, v50);
      v54 = objc_msgSend_options(v51, v52, v53);
      v57 = objc_msgSend_mmcsEncryptionSupport(v54, v55, v56);

      if (v57)
      {
        v63 = objc_msgSend_useMMCSEncryptionV2(v48, v58, v59);
        v66 = objc_msgSend_boundaryKey(v48, v64, v65);
        v62 = v66;
        if (!v63)
        {
          v69 = @"Boundary key not supported for MMCSv1 package upload";
          if (v66)
          {
            goto LABEL_33;
          }

          v67 = 0;
          goto LABEL_37;
        }
      }

      else
      {
        v62 = objc_msgSend_boundaryKey(v48, v58, v59);
      }

      if (v62)
      {
        v67 = 0;
        ++HIDWORD(v88);
      }

      else
      {
        v62 = objc_msgSend_cachedGlobalPerUserBoundaryKeyData(self, v60, v61);
        if (!v62)
        {
          v69 = @"Expected non-nil cached boundary key";
LABEL_33:
          v67 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v60, v86, 12, v69);
          if (v67)
          {
            v72 = v87;
            if (!v87)
            {
              v73 = objc_msgSend_mutableCopy(v3, v70, v71);

              v72 = v73;
              v85 = v73;
            }

            v87 = v72;
            objc_msgSend_removeObject_(v72, v70, v48);
            v75 = objc_msgSend_objectForKey_(self->_handlersByAsset, v74, v48);
            objc_msgSend_setError_(v75, v76, v67);
            objc_msgSend_setState_(v75, v77, 12);
          }

          goto LABEL_37;
        }

        v68 = objc_msgSend_setBoundaryKey_(v48, v60, v62);
        v67 = 0;
        LODWORD(v88) = v88 + 1;
      }

LABEL_37:
    }

    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v47, &v90, v100, 16);
  }

  while (v6);
LABEL_42:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v78 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v81 = v78;
    v84 = objc_msgSend_count(v3, v82, v83);
    *buf = 134218496;
    v95 = v84;
    v96 = 1024;
    v97 = v88;
    v98 = 1024;
    v99 = HIDWORD(v88);
    _os_log_debug_impl(&dword_22506F000, v81, OS_LOG_TYPE_DEBUG, "Of %lu potential v2 assets, globalPerUser %d, custom %d", buf, 0x18u);
  }

  v79 = *MEMORY[0x277D85DE8];

  return v85;
}

- (void)_markRecordHandlersAsUploaded
{
  v24 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v12 = v4;
    v15 = objc_msgSend_operationID(self, v13, v14);
    v18 = objc_msgSend_modifyHandlersByZoneID(self, v16, v17);
    *buf = 138543618;
    v21 = v15;
    v22 = 2112;
    v23 = v18;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Skipping saving records for operation %{public}@ after uploading assets: %@", buf, 0x16u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_225206ECC;
  v19[3] = &unk_27854A188;
  v19[4] = self;
  v19[5] = a2;
  v5 = _Block_copy(v19);
  if (objc_msgSend_shouldOnlySaveAssetContent(self, v6, v7))
  {
    objc_msgSend__enumerateHandlersInState_withBlock_(self, v8, 5, v5);
  }

  if ((objc_msgSend_shouldModifyRecordsInDatabase(self, v8, v9) & 1) == 0)
  {
    objc_msgSend__enumerateHandlersInState_withBlock_(self, v10, 6, v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_prepareRecordsForSave
{
  v4 = self;
  v90 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_shouldOnlySaveAssetContent(self, a2, v2))
  {
    v58 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v58, v59, a2, v4, @"CKDModifyRecordsOperation.m", 2059, @"We shouldn't get into this state if shouldOnlySaveAssetContent is true");
  }

  haveOutstandingHandlers = objc_msgSend_haveOutstandingHandlers(v4, v5, v6);
  if (haveOutstandingHandlers)
  {
    v61 = haveOutstandingHandlers;
    v62 = a2;
    v68 = objc_opt_new();
    v8 = dispatch_group_create();
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v11 = objc_msgSend_modifyHandlersByZoneID(v4, v9, v10);
    v14 = objc_msgSend_allKeys(v11, v12, v13);

    obj = v14;
    v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v78, v89, 16);
    if (v66)
    {
      v64 = *v79;
      v65 = v4;
      do
      {
        v18 = 0;
        do
        {
          if (*v79 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v78 + 1) + 8 * v18);
          v20 = objc_msgSend_atomic(v4, v16, v17);
          v23 = objc_msgSend_container(v4, v21, v22);
          objc_msgSend_clientSDKVersion(v23, v24, v25);
          v67 = v18;
          if (CKLinkCheck48d9728e8c354416a38f82379cbb35e3())
          {
          }

          else
          {
            isDefaultRecordZoneID = objc_msgSend_isDefaultRecordZoneID(v19, v26, v27);

            v20 &= isDefaultRecordZoneID ^ 1;
          }

          v31 = objc_msgSend_modifyHandlersByZoneID(v4, v28, v29);
          v33 = objc_msgSend_objectForKeyedSubscript_(v31, v32, v19);

          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v34 = v33;
          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v74, v88, 16);
          if (v36)
          {
            v39 = v36;
            v40 = *v75;
            do
            {
              v41 = 0;
              do
              {
                if (*v75 != v40)
                {
                  objc_enumerationMutation(v34);
                }

                v42 = *(*(&v74 + 1) + 8 * v41);
                if (objc_msgSend_state(v42, v37, v38) == 5)
                {
                  dispatch_group_enter(v8);
                  v72[0] = MEMORY[0x277D85DD0];
                  v72[1] = 3221225472;
                  v72[2] = sub_225207438;
                  v72[3] = &unk_278545A00;
                  v73 = v8;
                  objc_msgSend_prepareForSaveWithCompletionHandler_(v42, v43, v72);
                }

                else if (v20)
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v44 = *MEMORY[0x277CBC830];
                  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
                  {
                    v46 = v44;
                    v49 = objc_msgSend_state(v42, v47, v48);
                    *buf = 138412802;
                    v83 = v19;
                    v84 = 2112;
                    v85 = v42;
                    v86 = 2048;
                    v87 = v49;
                    _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, "Will skip zone %@ because handler isn't ready:\n%@. Handler state %lu", buf, 0x20u);
                  }

                  objc_msgSend_addObject_(v68, v45, v19);
                }

                ++v41;
              }

              while (v39 != v41);
              v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v74, v88, 16);
            }

            while (v39);
          }

          v18 = v67 + 1;
          v4 = v65;
        }

        while (v67 + 1 != v66);
        v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v78, v89, 16);
      }

      while (v66);
    }

    v52 = objc_msgSend_stateTransitionGroup(v4, v50, v51);
    dispatch_group_enter(v52);

    v55 = objc_msgSend_modifyRecordsQueue(v4, v53, v54);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225207440;
    block[3] = &unk_278545E20;
    block[4] = v4;
    v70 = v68;
    v71 = v62;
    v56 = v68;
    dispatch_group_notify(v8, v55, block);

    LOBYTE(haveOutstandingHandlers) = v61;
  }

  v57 = *MEMORY[0x277D85DE8];
  return haveOutstandingHandlers;
}

- (CKDProtocolTranslator)translator
{
  translator = self->_translator;
  if (!translator)
  {
    v4 = [CKDProtocolTranslator alloc];
    v7 = objc_msgSend_container(self, v5, v6);
    v10 = objc_msgSend_databaseScope(self, v8, v9);
    v12 = objc_msgSend_initWithContainer_databaseScope_(v4, v11, v7, v10);
    v13 = self->_translator;
    self->_translator = v12;

    translator = self->_translator;
  }

  return translator;
}

- (void)_handleDecryptionFailure:(id)a3 forRecordID:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBC880];
  v9 = MEMORY[0x277CBC878];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = MEMORY[0x277CBC830];
  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v36 = v7;
    v37 = 2112;
    v38 = v6;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Failed to decrypt record with ID %@: %@.", buf, 0x16u);
  }

  if (objc_msgSend_code(v6, v12, v13) == 5004)
  {
    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v9);
    }

    v15 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v36 = v7;
      v37 = 2112;
      v38 = v6;
      _os_log_fault_impl(&dword_22506F000, v15, OS_LOG_TYPE_FAULT, "Failed to decrypt record with ID %@: %@", buf, 0x16u);
    }
  }

  v16 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 5004, v6, @"Couldn't decrypt data on record %@", v7);
  v19 = objc_msgSend_handlersByRecordID(self, v17, v18);
  v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v7);

  objc_msgSend_setError_(v21, v22, v16);
  v25 = objc_msgSend_retryPCSFailures(self, v23, v24);
  v26 = *v9;
  v27 = *v8;
  if (v25)
  {
    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v26);
    }

    v28 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v36 = v7;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Marking record %@ for another retry after fetching PCS data", buf, 0xCu);
    }

    objc_msgSend_clearProtectionDataForRecord(v21, v29, v30);
    objc_msgSend_setState_(v21, v31, 13);
  }

  else
  {
    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v26);
    }

    v32 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v36 = v7;
      _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Failing save of record %@ because we couldn't decrypt it", buf, 0xCu);
    }

    objc_msgSend_setState_(v21, v33, 12);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_verifyRecordEncryption
{
  v125 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_useEncryption(self, a2, v2))
  {
    v6 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v4, v5);
    shouldDecryptRecordsBeforeSave = objc_msgSend_shouldDecryptRecordsBeforeSave(v6, v7, v8);

    if (shouldDecryptRecordsBeforeSave)
    {
      v105 = objc_opt_new();
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v12 = objc_msgSend_recordsToSave(self, v10, v11);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v116, v124, 16);
      if (v14)
      {
        v18 = v14;
        v19 = *v117;
        *&v17 = 138412290;
        v104 = v17;
        do
        {
          v20 = 0;
          do
          {
            if (*v117 != v19)
            {
              objc_enumerationMutation(v12);
            }

            v21 = *(*(&v116 + 1) + 8 * v20);
            if (objc_msgSend_hasPropertiesRequiringEncryption(v21, v15, v16, v104))
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v22 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
              {
                v41 = v22;
                v44 = objc_msgSend_recordID(v21, v42, v43);
                *buf = v104;
                v123 = v44;
                _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Verifying encrypted data on record %@ before uploading it", buf, 0xCu);
              }

              v25 = objc_msgSend_translator(self, v23, v24);
              v28 = objc_msgSend_savePolicy(self, v26, v27) == 2;
              v30 = objc_msgSend_deltaPRecordFromRecord_withAllFields_outDeletedMergeFields_outKeysToSend_(v25, v29, v21, v28, 0, 0);

              v33 = objc_msgSend_translator(self, v31, v32);
              v115 = 0;
              v35 = objc_msgSend_recordFromPRecord_error_(v33, v34, v30, &v115);
              v36 = v115;

              if (v36 || !v35)
              {
                v39 = objc_msgSend_recordID(v21, v37, v38);
                objc_msgSend__handleDecryptionFailure_forRecordID_(self, v40, v36, v39);
              }

              else
              {
                objc_msgSend_addObject_(v105, v37, v35);
              }
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v116, v124, 16);
        }

        while (v18);
      }

      v45 = v105;
      if (objc_msgSend_count(v105, v46, v47))
      {
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v48 = v105;
        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v111, v121, 16);
        if (v50)
        {
          v53 = v50;
          v54 = *v112;
          v55 = *MEMORY[0x277CBC020];
          do
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v112 != v54)
              {
                objc_enumerationMutation(v48);
              }

              v57 = *(*(&v111 + 1) + 8 * i);
              v58 = objc_msgSend_recordID(v57, v51, v52);
              objc_msgSend_setPCSData_forFetchedRecordID_(self, v59, 0, v58);

              v62 = objc_msgSend_recordID(v57, v60, v61);
              v65 = objc_msgSend_zoneID(v62, v63, v64);
              objc_msgSend_setPCSData_forFetchedZoneID_(self, v66, 0, v65);

              v69 = objc_msgSend_share(v57, v67, v68);
              v72 = objc_msgSend_recordID(v69, v70, v71);
              objc_msgSend_setPCSData_forFetchedShareID_(self, v73, 0, v72);

              v74 = objc_alloc(MEMORY[0x277CBC5D0]);
              v77 = objc_msgSend_recordID(v57, v75, v76);
              v80 = objc_msgSend_zoneID(v77, v78, v79);
              v82 = objc_msgSend_initWithRecordName_zoneID_(v74, v81, v55, v80);

              objc_msgSend_setPCSData_forFetchedShareID_(self, v83, 0, v82);
            }

            v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v111, v121, 16);
          }

          while (v53);
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v84 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v100 = v84;
          v103 = objc_msgSend_count(v48, v101, v102);
          *buf = 134217984;
          v123 = v103;
          _os_log_debug_impl(&dword_22506F000, v100, OS_LOG_TYPE_DEBUG, "Sending %ld records to the record decrypt operation before uploading them to the server", buf, 0xCu);
        }

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v85 = v48;
        v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v107, v120, 16);
        if (v87)
        {
          v90 = v87;
          v91 = *v108;
          do
          {
            for (j = 0; j != v90; ++j)
            {
              if (*v108 != v91)
              {
                objc_enumerationMutation(v85);
              }

              v93 = *(*(&v107 + 1) + 8 * j);
              v94 = objc_msgSend_stateTransitionGroup(self, v88, v89);
              dispatch_group_enter(v94);

              v97 = objc_msgSend_recordDecryptOperation(self, v95, v96);
              v106[0] = MEMORY[0x277D85DD0];
              v106[1] = 3221225472;
              v106[2] = sub_225208388;
              v106[3] = &unk_27854A1B0;
              v106[4] = self;
              objc_msgSend_decryptRecord_withCompletion_(v97, v98, v93, v106);
            }

            v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v88, &v107, v120, 16);
          }

          while (v90);
        }

        v45 = v105;
      }
    }
  }

  v99 = *MEMORY[0x277D85DE8];
}

- (void)_handleRecordSaved:(id)a3 handler:(id)a4 etag:(id)a5 dateStatistics:(id)a6 expirationDate:(id)a7 responseCode:(id)a8 keysAssociatedWithETag:(id)a9 recordForOplockFailure:(id)a10 serverRecord:(id)a11
{
  v57 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  if (objc_msgSend_hasPropertiesRequiringEncryption(v25, v26, v27))
  {
    v42 = v22;
    v43 = v17;
    v30 = objc_msgSend_stateTransitionGroup(self, v28, v29);
    dispatch_group_enter(v30);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v31 = v18;
    v32 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v37 = v32;
      v40 = objc_msgSend_recordID(v25, v38, v39);
      *buf = 138412290;
      v56 = v40;
      _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Decrypting server record %@ returned from save", buf, 0xCu);
    }

    v41 = objc_msgSend_recordDecryptOperation(self, v33, v34);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_225208804;
    v44[3] = &unk_27854A1D8;
    v45 = v25;
    v18 = v31;
    v46 = v31;
    v47 = self;
    v17 = v43;
    v48 = v43;
    v49 = v19;
    v50 = v20;
    v51 = v21;
    v22 = v42;
    v52 = v42;
    v53 = v23;
    v54 = v24;
    objc_msgSend_decryptRecord_withCompletion_(v41, v35, v45, v44);
  }

  else
  {
    objc_msgSend__reallyHandleRecordSaved_handler_etag_dateStatistics_expirationDate_responseCode_keysAssociatedWithETag_recordForOplockFailure_decryptedServerRecord_(self, v28, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_reallyHandleRecordSaved:(id)a3 handler:(id)a4 etag:(id)a5 dateStatistics:(id)a6 expirationDate:(id)a7 responseCode:(id)a8 keysAssociatedWithETag:(id)a9 recordForOplockFailure:(id)a10 decryptedServerRecord:(id)a11
{
  v451 = *MEMORY[0x277D85DE8];
  v428 = a3;
  v427 = a4;
  v422 = a5;
  v423 = a6;
  v421 = a7;
  v17 = a8;
  v419 = a9;
  v420 = a10;
  v425 = a11;
  val = self;
  v424 = objc_msgSend_container(self, v18, v19);
  if (v428)
  {
    v22 = objc_msgSend_handlersByRecordID(self, v20, v21);
    v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, v428);
    v426 = objc_msgSend_record(v24, v25, v26);
  }

  else
  {
    v426 = 0;
  }

  objc_opt_class();
  v27 = v425;
  if (objc_opt_isKindOfClass())
  {
    v30 = objc_msgSend_entitlements(v424, v28, v29);
    if (objc_msgSend_hasOutOfProcessUIEntitlement(v30, v31, v32))
    {
      v27 = v425;
      objc_msgSend_setSerializePersonalInfo_(v425, v33, 1);
    }

    else
    {
      v35 = objc_msgSend_entitlements(v424, v33, v34);
      hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v35, v36, v37);
      v27 = v425;
      objc_msgSend_setSerializePersonalInfo_(v425, v39, hasParticipantPIIEntitlement);
    }

    shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(v424, v40, v41);
    objc_msgSend_setSerializeOwnerInfo_(v27, v43, shouldSerializeOwnerInfo);
  }

  objc_msgSend_setServerRecord_(v427, v28, v27);
  v46 = objc_msgSend_code(v17, v44, v45);
  if (v428 && v46 == 1)
  {
    if (v426)
    {
      if (objc_msgSend_canSkipRecordSaveForMergeables(v426, v47, v48) && objc_msgSend_state(v427, v49, v50) == 11)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v51 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v448 = v428;
          _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Mergeable record already failed with an atomic failure %@", buf, 0xCu);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v76 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v448 = v428;
          _os_log_impl(&dword_22506F000, v76, OS_LOG_TYPE_INFO, "Record %@ was successfully saved to the server", buf, 0xCu);
        }

        if (objc_msgSend_includeMergeableDeltasInModifyRecordsRequest(self, v77, v78))
        {
          objc_msgSend_setState_(v427, v79, 8);
        }

        else
        {
          objc_msgSend_setState_(v427, v79, 7);
        }

        objc_msgSend_setKnownToServer_(v426, v80, 1);
        if (v422)
        {
          objc_msgSend_setEtag_(v426, v81, v422);
        }

        v83 = objc_msgSend_creation(v423, v81, v82);
        hasTime = objc_msgSend_hasTime(v83, v84, v85);

        if (hasTime)
        {
          v89 = MEMORY[0x277CBEAA8];
          v90 = objc_msgSend_creation(v423, v87, v88);
          objc_msgSend_time(v90, v91, v92);
          v95 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v89, v93, v94);

          if (v95)
          {
            objc_msgSend_setCreationDate_(v426, v87, v95);
          }
        }

        v96 = objc_msgSend_modification(v423, v87, v88);
        v99 = objc_msgSend_hasTime(v96, v97, v98);

        if (v99)
        {
          v102 = MEMORY[0x277CBEAA8];
          v103 = objc_msgSend_modification(v423, v100, v101);
          objc_msgSend_time(v103, v104, v105);
          v108 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v102, v106, v107);

          if (v108)
          {
            objc_msgSend_setModificationDate_(v426, v100, v108);
          }
        }

        objc_msgSend_setExpirationDate_(v426, v100, v421);
        objc_msgSend_setHasUpdatedExpirationTimeInterval_(v426, v109, 0);
        objc_msgSend_setUpdatedExpirationTimeInterval_(v426, v110, 0);
        objc_msgSend_savePCSDataToCache(v427, v111, v112);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v113 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v448 = v428;
        _os_log_error_impl(&dword_22506F000, v113, OS_LOG_TYPE_ERROR, "Got a response for record with ID %@, but we didn't try to put that record.", buf, 0xCu);
      }

      objc_msgSend_setState_(v427, v114, 12);
      v115 = MEMORY[0x277CBC560];
      v116 = sub_2253962A4(v17);
      v119 = objc_msgSend_request(self, v117, v118);
      v120 = sub_225395734(v119, v17);
      v122 = objc_msgSend_errorWithDomain_code_userInfo_format_(v115, v121, *MEMORY[0x277CBC120], v116, v120, @"Got a response for record with ID %@, but we didn't try to put that record.", v428);
      objc_msgSend_setError_(v427, v123, v122);
    }

    goto LABEL_132;
  }

  v52 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v53 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v448 = v428;
    v449 = 2112;
    v450 = v17;
    _os_log_impl(&dword_22506F000, v53, OS_LOG_TYPE_INFO, "Error when saving record %@ to the server: %@", buf, 0x16u);
  }

  v56 = objc_msgSend_error(v17, v54, v55);
  v59 = objc_msgSend_clientError(v56, v57, v58);
  hasType = objc_msgSend_hasType(v59, v60, v61);

  if (!hasType)
  {
    goto LABEL_108;
  }

  v65 = objc_msgSend_error(v17, v63, v64);
  v68 = objc_msgSend_clientError(v65, v66, v67);
  v71 = objc_msgSend_type(v68, v69, v70) == 52;

  if (v71)
  {
    if (*v52 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v74 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v448 = v428;
      v75 = "Record PCS etag failed for record %@";
LABEL_54:
      _os_log_impl(&dword_22506F000, v74, OS_LOG_TYPE_INFO, v75, buf, 0xCu);
LABEL_55:
      v418 = 0;
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  v124 = objc_msgSend_error(v17, v72, v73);
  v127 = objc_msgSend_clientError(v124, v125, v126);
  v130 = objc_msgSend_type(v127, v128, v129) == 53;

  if (!v130)
  {
    v198 = objc_msgSend_error(v17, v131, v132);
    v201 = objc_msgSend_clientError(v198, v199, v200);
    v204 = objc_msgSend_type(v201, v202, v203) == 15;

    v207 = objc_msgSend_error(v17, v205, v206);
    v210 = v207;
    if (v204)
    {
      v211 = objc_msgSend_errorDescription(v207, v208, v209);
      hasPrefix = objc_msgSend_hasPrefix_(v211, v212, @"Record PCS oplock failed");

      if (hasPrefix)
      {
        v216 = 1;
        v217 = @"Record";
      }

      else
      {
        v245 = objc_msgSend_error(v17, v214, v215);
        v248 = objc_msgSend_errorDescription(v245, v246, v247);
        v250 = objc_msgSend_hasPrefix_(v248, v249, @"Zone PCS oplock failed");

        if (v250)
        {
          v216 = 1;
          v217 = @"Zone";
        }

        else
        {
          v296 = objc_msgSend_error(v17, v251, v252);
          v299 = objc_msgSend_errorDescription(v296, v297, v298);
          v216 = objc_msgSend_hasPrefix_(v299, v300, @"Share Etag Oplock failure");

          if (v216)
          {
            v217 = @"Share";
          }

          else
          {
            v217 = @"Unknown";
          }
        }
      }

      if (*v52 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v301 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v448 = v217;
        v449 = 2112;
        v450 = v428;
        _os_log_impl(&dword_22506F000, v301, OS_LOG_TYPE_INFO, "%{public}@ oplock failed for record %@", buf, 0x16u);
      }

      if (v216)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v218 = objc_msgSend_clientError(v207, v208, v209);
      v221 = objc_msgSend_type(v218, v219, v220) == 48;

      if (!v221)
      {
        v253 = objc_msgSend_error(v17, v222, v223);
        v256 = objc_msgSend_clientError(v253, v254, v255);
        v259 = objc_msgSend_type(v256, v257, v258) == 62;

        if (!v259)
        {
          v402 = objc_msgSend_error(v17, v260, v261);
          v405 = objc_msgSend_clientError(v402, v403, v404);
          v408 = objc_msgSend_type(v405, v406, v407) == 64;

          if (!v408)
          {
            goto LABEL_108;
          }

          if (*v52 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v409 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22506F000, v409, OS_LOG_TYPE_INFO, "Record PCS chain was invalid", buf, 2u);
          }
        }

        v262 = MEMORY[0x277CBC560];
        v263 = sub_2253962A4(v17);
        v266 = objc_msgSend_recordID(v426, v264, v265);
        v269 = objc_msgSend_error(v17, v267, v268);
        v272 = objc_msgSend_errorDescription(v269, v270, v271);
        v418 = objc_msgSend_errorWithDomain_code_userInfo_format_(v262, v273, *MEMORY[0x277CBC120], v263, 0, @"Error saving share %@ to server: %@", v266, v272);

LABEL_56:
        if (*v52 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        goto LABEL_59;
      }

      v224 = objc_msgSend_options(v424, v222, v223);
      if (((v428 != 0) & objc_msgSend_useAnonymousToServerShareParticipants(v224, v225, v226)) == 1)
      {
        v229 = objc_msgSend_databaseScope(self, v227, v228) == 3;

        if (v229)
        {
          if (*v52 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v232 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v414 = v232;
            v417 = objc_msgSend_zoneID(v428, v415, v416);
            *buf = 138412290;
            v448 = v417;
            _os_log_debug_impl(&dword_22506F000, v414, OS_LOG_TYPE_DEBUG, "Possible anonymous share %@ not found. Removing share from anonymous share list", buf, 0xCu);
          }

          objc_initWeak(buf, self);
          v235 = objc_msgSend_stateTransitionGroup(self, v233, v234);
          dispatch_group_enter(v235);

          v238 = objc_msgSend_anonymousSharingManager(v424, v236, v237);
          v241 = objc_msgSend_zoneID(v428, v239, v240);
          v446 = v241;
          v243 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v242, &v446, 1);
          v443[0] = MEMORY[0x277D85DD0];
          v443[1] = 3221225472;
          v443[2] = sub_22520A160;
          v443[3] = &unk_278549318;
          objc_copyWeak(&v444, buf);
          objc_msgSend_removeAnonymousSharesFromSharedDB_operation_withCompletionBlock_(v238, v244, v243, self, v443);

          objc_destroyWeak(&v444);
          objc_destroyWeak(buf);
        }
      }

      else
      {
      }

      v274 = objc_msgSend_recordCache(v424, v230, v231);
      v277 = objc_msgSend_zoneID(v428, v275, v276);
      objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v274, v278, v424, v277);

      if (objc_msgSend_databaseScope(self, v279, v280) != 1)
      {
        v281 = objc_msgSend_recordID(v426, v63, v64);
        v284 = objc_msgSend_zoneID(v281, v282, v283);
        objc_msgSend_setPCSData_forFetchedZoneID_(self, v285, 0, v284);

        v288 = objc_msgSend_pcsCache(v424, v286, v287);
        v291 = objc_msgSend_recordID(v426, v289, v290);
        v294 = objc_msgSend_zoneID(v291, v292, v293);
        objc_msgSend_removePCSDataForItemsInZoneWithID_(v288, v295, v294);
      }
    }

LABEL_108:
    v302 = objc_msgSend_error(v17, v63, v64);
    if (objc_msgSend_hasExtensionError(v302, v303, v304))
    {
      v307 = objc_msgSend_error(v17, v305, v306);
      v310 = objc_msgSend_extensionError(v307, v308, v309);
      hasTypeCode = objc_msgSend_hasTypeCode(v310, v311, v312);

      if (hasTypeCode)
      {
        v316 = MEMORY[0x277CBC560];
        v317 = objc_msgSend_request(self, v314, v315);
        v318 = sub_225395734(v317, v17);
        v320 = objc_msgSend_errorWithDomain_code_userInfo_format_(v316, v319, *MEMORY[0x277CBC120], 6000, v318, @"Plugin-Specific Error");
        objc_msgSend_setError_(v427, v321, v320);

        objc_msgSend_setState_(v427, v322, 12);
        goto LABEL_132;
      }
    }

    else
    {
    }

    v323 = objc_msgSend_request(self, v314, v315);
    v324 = sub_225395734(v323, v17);
    v327 = objc_msgSend_mutableCopy(v324, v325, v326);

    v330 = objc_msgSend_error(v17, v328, v329);
    v333 = objc_msgSend_clientError(v330, v331, v332);
    v336 = objc_msgSend_moveOplockFailure(v333, v334, v335);
    hasMovedRecordDestinationIdentifier = objc_msgSend_hasMovedRecordDestinationIdentifier(v336, v337, v338);

    if (hasMovedRecordDestinationIdentifier)
    {
      v342 = objc_msgSend_translator(self, v340, v341);
      v345 = objc_msgSend_error(v17, v343, v344);
      v348 = objc_msgSend_clientError(v345, v346, v347);
      v351 = objc_msgSend_moveOplockFailure(v348, v349, v350);
      v354 = objc_msgSend_movedRecordDestinationIdentifier(v351, v352, v353);
      v356 = objc_msgSend_recordIDFromPRecordIdentifier_error_(v342, v355, v354, 0);

      if (v356)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v327, v357, v356, *MEMORY[0x277CBC018]);
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22520A274;
    aBlock[3] = &unk_2785470C0;
    v438 = v427;
    v358 = _Block_copy(aBlock);
    v361 = objc_msgSend_error(v17, v359, v360);
    v364 = objc_msgSend_clientError(v361, v362, v363);
    hasOplockFailure = objc_msgSend_hasOplockFailure(v364, v365, v366);

    if (hasOplockFailure)
    {
      v368 = v420;
      v369 = v426;
      v374 = objc_msgSend_copyWithOriginalValues(v369, v370, v371);
      if (v374)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v327, v372, v374, *MEMORY[0x277CBBFD8]);
      }

      if (v368)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v327, v372, v368, *MEMORY[0x277CBBFE8]);
        v377 = objc_msgSend_recordChangeTag(v368, v375, v376);
        objc_msgSend_setObject_forKeyedSubscript_(v327, v378, v377, *MEMORY[0x277CBBF78]);
      }

      if (v369)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v327, v372, v369, *MEMORY[0x277CBBFE0]);
        v381 = objc_msgSend_recordChangeTag(v369, v379, v380);
        objc_msgSend_setObject_forKeyedSubscript_(v327, v382, v381, *MEMORY[0x277CBBF40]);
      }

      if (objc_msgSend_hasPropertiesRequiringEncryption(v368, v372, v373))
      {
        v385 = objc_msgSend_stateTransitionGroup(val, v383, v384);
        dispatch_group_enter(v385);

        if (*v52 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v386 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v410 = v386;
          v413 = objc_msgSend_recordID(v368, v411, v412);
          *buf = 138412290;
          v448 = v413;
          _os_log_debug_impl(&dword_22506F000, v410, OS_LOG_TYPE_DEBUG, "Decrypting server record returned by oplock failure %@", buf, 0xCu);
        }

        v389 = objc_msgSend_recordDecryptOperation(val, v387, v388);
        v430[0] = MEMORY[0x277D85DD0];
        v430[1] = 3221225472;
        v430[2] = sub_22520A2E4;
        v430[3] = &unk_27854A200;
        v431 = v368;
        v432 = v327;
        v433 = v17;
        v434 = v428;
        v435 = val;
        v436 = v358;
        v390 = v368;
        objc_msgSend_decryptRecord_withCompletion_(v389, v391, v390, v430);

        goto LABEL_131;
      }
    }

    v392 = MEMORY[0x277CBC560];
    v393 = sub_2253962A4(v17);
    v396 = objc_msgSend_error(v17, v394, v395);
    v399 = objc_msgSend_errorDescription(v396, v397, v398);
    v369 = objc_msgSend_errorWithDomain_code_userInfo_format_(v392, v400, *MEMORY[0x277CBC120], v393, v327, @"Error saving record %@ to server: %@", v428, v399);

    (*(v358 + 2))(v358, v369);
LABEL_131:

    goto LABEL_132;
  }

  if (*v52 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v74 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v448 = v428;
    v75 = "Zone PCS etag failed for record %@";
    goto LABEL_54;
  }

LABEL_58:
  v418 = 0;
LABEL_59:
  v133 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v448 = v428;
    _os_log_impl(&dword_22506F000, v133, OS_LOG_TYPE_INFO, "Handling error for record %@ as an oplock failure", buf, 0xCu);
  }

  if (objc_msgSend_retryPCSFailures(self, v134, v135))
  {
    objc_msgSend_clearProtectionDataForRecord(v427, v136, v137);
    v140 = objc_msgSend_recordID(v426, v138, v139);
    v143 = objc_msgSend_zoneID(v140, v141, v142);

    if (v143)
    {
      v441 = 0u;
      v442 = 0u;
      v440 = 0u;
      v439 = 0u;
      v146 = objc_msgSend_modifyHandlersByZoneID(self, v144, v145);
      v149 = objc_msgSend_recordID(v426, v147, v148);
      v152 = objc_msgSend_zoneID(v149, v150, v151);
      v154 = objc_msgSend_objectForKeyedSubscript_(v146, v153, v152);

      v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v154, v155, &v439, v445, 16);
      if (v156)
      {
        v157 = *v440;
        do
        {
          v158 = 0;
          do
          {
            if (*v440 != v157)
            {
              objc_enumerationMutation(v154);
            }

            v159 = *(*(&v439 + 1) + 8 * v158);
            if (*v52 != -1)
            {
              dispatch_once(v52, *MEMORY[0x277CBC878]);
            }

            v160 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v185 = v160;
              v188 = objc_msgSend_record(v159, v186, v187);
              v191 = objc_msgSend_recordID(v188, v189, v190);
              *buf = 138412290;
              v448 = v191;
              _os_log_debug_impl(&dword_22506F000, v185, OS_LOG_TYPE_DEBUG, "Clearing zone PCS tag for record %@", buf, 0xCu);
            }

            v163 = objc_msgSend_record(v159, v161, v162);
            objc_msgSend_setZoneProtectionEtag_(v163, v164, 0);

            v167 = objc_msgSend_record(v159, v165, v166);
            objc_msgSend_setShareEtag_(v167, v168, 0);

            v171 = objc_msgSend_error(v17, v169, v170);
            v174 = objc_msgSend_clientError(v171, v172, v173);
            v177 = objc_msgSend_type(v174, v175, v176) == 52;

            if (!v177)
            {
              v180 = objc_msgSend_record(v159, v178, v179);
              v183 = objc_msgSend_recordID(v180, v181, v182);
              objc_msgSend_setPCSData_forFetchedRecordID_(val, v184, 0, v183);
            }

            ++v158;
          }

          while (v156 != v158);
          v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v154, v178, &v439, v445, 16);
        }

        while (v156);
      }
    }

    objc_msgSend_setState_(v427, v144, 13);
  }

  else
  {
    objc_msgSend_setState_(v427, v136, 12);
  }

  if (v418)
  {
    objc_msgSend_setError_(v427, v192, v418);
  }

  else
  {
    v193 = MEMORY[0x277CBC560];
    v194 = objc_msgSend_recordID(v426, v192, 0);
    v196 = objc_msgSend_errorWithDomain_code_userInfo_format_(v193, v195, *MEMORY[0x277CBC120], 2037, 0, @"Error saving record %@ to server: Protection data didn't match", v194);
    objc_msgSend_setError_(v427, v197, v196);
  }

LABEL_132:

  v401 = *MEMORY[0x277D85DE8];
}

- (void)_handleRecordDeleted:(id)a3 handler:(id)a4 responseCode:(id)a5
{
  v89[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_code(v10, v11, v12);
  v14 = MEMORY[0x277CBC878];
  v15 = *MEMORY[0x277CBC878];
  v16 = MEMORY[0x277CBC880];
  v17 = *MEMORY[0x277CBC880];
  v18 = MEMORY[0x277CBC830];
  if (v13 == 1)
  {
    if (v17 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v15);
    }

    v19 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v86 = v8;
      _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Record %@ was successfully deleted from the server", buf, 0xCu);
    }

    v22 = objc_msgSend_container(self, v20, v21);
    v25 = objc_msgSend_options(v22, v23, v24);
    if (objc_msgSend_useAnonymousToServerShareParticipants(v25, v26, v27) && objc_msgSend_databaseScope(self, v28, v29) == 3)
    {
      v32 = objc_msgSend_recordName(v8, v30, v31);
      isEqualToString = objc_msgSend_isEqualToString_(v32, v33, *MEMORY[0x277CBC020]);

      if (isEqualToString)
      {
        if (*v16 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *v14);
        }

        v35 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v86 = v8;
          _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Possible anonymous share deleted. Removing share from anonymous share list: %@", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v38 = objc_msgSend_stateTransitionGroup(self, v36, v37);
        dispatch_group_enter(v38);

        v41 = objc_msgSend_container(self, v39, v40);
        v44 = objc_msgSend_anonymousSharingManager(v41, v42, v43);
        v47 = objc_msgSend_zoneID(v8, v45, v46);
        v89[0] = v47;
        v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v89, 1);
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = sub_22520AAAC;
        v83[3] = &unk_278549318;
        objc_copyWeak(&v84, buf);
        objc_msgSend_removeAnonymousSharesFromSharedDB_operation_withCompletionBlock_(v44, v50, v49, self, v83);

        objc_destroyWeak(&v84);
        objc_destroyWeak(buf);
      }
    }

    else
    {
    }

    objc_msgSend_setState_(v9, v34, 8);
    v65 = objc_msgSend_container(self, v70, v71);
    v74 = objc_msgSend_recordCache(v65, v72, v73);
    v77 = objc_msgSend_databaseScope(self, v75, v76);
    objc_msgSend_deleteRecordWithID_container_scope_(v74, v78, v8, v65, v77);

    objc_msgSend_setPCSData_forFetchedRecordID_(self, v79, 0, v8);
    objc_msgSend_setPCSData_forFetchedShareID_(self, v80, 0, v8);
  }

  else
  {
    if (v17 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v15);
    }

    v51 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v86 = v10;
      v87 = 2112;
      v88 = v8;
      _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Error %@ when deleting record %@ from the server", buf, 0x16u);
    }

    v52 = MEMORY[0x277CBC560];
    v53 = sub_2253962A4(v10);
    v56 = objc_msgSend_request(self, v54, v55);
    v57 = sub_225395734(v56, v10);
    v60 = objc_msgSend_error(v10, v58, v59);
    v63 = objc_msgSend_errorDescription(v60, v61, v62);
    v65 = objc_msgSend_errorWithDomain_code_userInfo_format_(v52, v64, *MEMORY[0x277CBC120], v53, v57, @"Error deleting record %@: %@", v8, v63);

    objc_msgSend_setError_(v9, v66, v65);
    if (objc_msgSend_code(v65, v67, v68) == 2024)
    {
      objc_msgSend_setState_(v9, v69, 11);
    }

    else
    {
      objc_msgSend_setState_(v9, v69, 12);
    }
  }

  v81 = *MEMORY[0x277D85DE8];
}

- (void)_handleMergeableDeltaSavedForRecordID:(id)a3 key:(id)a4 result:(id)a5
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_handlersByRecordID(self, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v8);

  v20 = objc_msgSend_record(v15, v16, v17);
  if (v20)
  {
    if (objc_msgSend_code(v10, v18, v19) != 1)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v70 = v20;
      v27 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v75 = v9;
        v76 = 2112;
        v77 = v8;
        v78 = 2112;
        v79 = v10;
        _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "Error syncing mergeable delta for key %@ on record %@: %@", buf, 0x20u);
      }

      v28 = MEMORY[0x277CBC560];
      v29 = *MEMORY[0x277CBC120];
      v30 = sub_2253962A4(v10);
      v33 = objc_msgSend_request(self, v31, v32);
      v34 = sub_225395734(v33, v10);
      v71 = v10;
      objc_msgSend_error(v10, v35, v36);
      v38 = v37 = v8;
      v41 = objc_msgSend_errorDescription(v38, v39, v40);
      v72 = v9;
      v73 = v37;
      v25 = objc_msgSend_errorWithDomain_code_userInfo_format_(v28, v42, v29, v30, v34, @"Error saving mergeable delta for key '%@' on record %@: %@", v9, v37, v41);

      if (objc_msgSend_code(v25, v43, v44) == 2024)
      {
        v8 = v73;
        v20 = v70;
        v10 = v71;
        objc_msgSend_setState_(v15, v45, 11);
      }

      else
      {
        v47 = objc_msgSend_error(v15, v45, v46);
        v20 = v70;
        if (v47 && (v50 = v47, objc_msgSend_error(v15, v48, v49), v51 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend_code(v51, v52, v53), v51, v50, v54 != 2024))
        {
          v10 = v71;
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v66 = *MEMORY[0x277CBC830];
          v9 = v72;
          v8 = v73;
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_22506F000, v66, OS_LOG_TYPE_DEBUG, "Not overwriting existing error for modify records handler", buf, 2u);
          }

          objc_msgSend_setState_(v15, v67, 12);
        }

        else
        {
          objc_msgSend_setError_(v15, v48, v25);
          v9 = v72;
          v8 = v73;
          v10 = v71;
          objc_msgSend_setState_(v15, v55, 12);
        }
      }

      goto LABEL_33;
    }

    v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v9);
    if (v22)
    {
      v25 = v22;
      goto LABEL_19;
    }

    v56 = objc_msgSend_encryptedValues(v20, v23, v24);
    v25 = objc_msgSend_objectForKeyedSubscript_(v56, v57, v9);

    if (v25)
    {
LABEL_19:
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v59 = *MEMORY[0x277CBC878];
      v60 = *MEMORY[0x277CBC880];
      if (isKindOfClass)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v59);
        }

        v61 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v75 = v9;
          v76 = 2112;
          v77 = v8;
          _os_log_debug_impl(&dword_22506F000, v61, OS_LOG_TYPE_DEBUG, "Finished saving mergeable delta for key %@ on record %@", buf, 0x16u);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v59);
        }

        v62 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v63 = v62;
          v64 = objc_opt_class();
          v65 = NSStringFromClass(v64);
          *buf = 138412546;
          v75 = v9;
          v76 = 2112;
          v77 = v65;
          _os_log_error_impl(&dword_22506F000, v63, OS_LOG_TYPE_ERROR, "Value in record for key '%@' is not a mergeable record value: %@", buf, 0x16u);
        }
      }

LABEL_33:

      goto LABEL_34;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v69 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v69, OS_LOG_TYPE_ERROR, "No value on record after successful mergeable delta save", buf, 2u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v75 = v9;
      v76 = 2112;
      v77 = v8;
      _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "No record on modify handler for mergeable delta save for key %@ on record %@", buf, 0x16u);
    }
  }

LABEL_34:

  v68 = *MEMORY[0x277D85DE8];
}

- (void)_handleReplaceDeltasRequest:(id)a3 result:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_handlersByRecordID(self, v8, v9);
  v13 = objc_msgSend_valueID(v6, v11, v12);
  v16 = objc_msgSend_recordID(v13, v14, v15);
  v18 = objc_msgSend_objectForKeyedSubscript_(v10, v17, v16);

  v23 = objc_msgSend_record(v18, v19, v20);
  if (v23)
  {
    if (objc_msgSend_code(v7, v21, v22) == 1)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v24 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v25 = v24;
        v28 = objc_msgSend_operationID(self, v26, v27);
        *buf = 138543618;
        v70 = v28;
        v71 = 2112;
        v72 = v6;
        _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Modify operation %{public}@ successfully replaced deltas for request: %@", buf, 0x16u);
LABEL_11:
      }
    }

    else
    {
      v68 = v6;
      v41 = sub_2253962A4(v7);
      v44 = objc_msgSend_request(self, v42, v43);
      v45 = sub_225395734(v44, v7);

      v46 = MEMORY[0x277CBC560];
      v47 = *MEMORY[0x277CBC120];
      v50 = objc_msgSend_error(v7, v48, v49);
      v53 = objc_msgSend_errorDescription(v50, v51, v52);
      v54 = v47;
      v55 = v45;
      v57 = objc_msgSend_errorWithDomain_code_userInfo_format_(v46, v56, v54, v41, v45, @"Error replacing mergeable deltas: %@", v53);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v58 = *MEMORY[0x277CBC840];
      v6 = v68;
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
      {
        v64 = v58;
        v67 = objc_msgSend_operationID(self, v65, v66);
        *buf = 138543618;
        v70 = v67;
        v71 = 2112;
        v72 = v57;
        _os_log_error_impl(&dword_22506F000, v64, OS_LOG_TYPE_ERROR, "Modify operation %{public}@ failed to replace deltas with error: %@", buf, 0x16u);
      }

      if (objc_msgSend_code(v57, v59, v60) == 2024)
      {
        objc_msgSend_setState_(v18, v61, 11);
      }

      else
      {
        objc_msgSend_setError_(v18, v61, v57);
        objc_msgSend_setState_(v18, v62, 12);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v28 = v29;
      v25 = objc_msgSend_valueID(v6, v30, v31);
      v34 = objc_msgSend_key(v25, v32, v33);
      v37 = objc_msgSend_valueID(v6, v35, v36);
      v40 = objc_msgSend_recordID(v37, v38, v39);
      *buf = 138412546;
      v70 = v34;
      v71 = 2112;
      v72 = v40;
      _os_log_impl(&dword_22506F000, v28, OS_LOG_TYPE_INFO, "No record on modify handler for mergeable delta replacement for key %@ on record %@", buf, 0x16u);

      goto LABEL_11;
    }
  }

  v63 = *MEMORY[0x277D85DE8];
}

- (id)requestedFieldsByRecordIDForRecords:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a3;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v25, v29, 16);
  if (v4)
  {
    v7 = v4;
    v8 = 0;
    v9 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = objc_msgSend_allKeys(v11, v5, v6);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = sub_22520BD54;
        v24[3] = &unk_27854A278;
        v24[4] = v11;
        v14 = objc_msgSend_CKFilter_(v12, v13, v24);

        if (objc_msgSend_count(v14, v15, v16))
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
          }

          v19 = objc_msgSend_recordID(v11, v17, v18);
          objc_msgSend_setObject_forKeyedSubscript_(v8, v20, v14, v19);
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v25, v29, 16);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_reportRecordsInFlight
{
  v22 = objc_msgSend_recordsToSave(self, a2, v2);
  if (objc_msgSend_count(v22, v4, v5))
  {
    v8 = objc_msgSend_recordsInFlightBlock(self, v6, v7);

    if (v8)
    {
      objc_msgSend_setShouldReportRecordsInFlight_(self, v9, 0);
      v12 = objc_msgSend_recordsToSave(self, v10, v11);
      v14 = objc_msgSend_valueForKeyPath_(v12, v13, @"recordID");

      v17 = objc_msgSend_stateTransitionGroup(self, v15, v16);
      dispatch_group_enter(v17);

      v20 = objc_msgSend_callbackQueue(self, v18, v19);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22520BF5C;
      block[3] = &unk_278545898;
      block[4] = self;
      v24 = v14;
      v21 = v14;
      dispatch_async(v20, block);
    }
  }

  else
  {
  }
}

- (void)_continueRecordsModify
{
  v165 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_shouldOnlySaveAssetContent(self, a2, v2))
  {
    v146 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v4, v5);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v146, v147, a2, self, @"CKDModifyRecordsOperation.m", 2705, @"We shouldn't get into this state if shouldOnlySaveAssetContent is true");
  }

  if ((objc_msgSend_shouldModifyRecordsInDatabase(self, v4, v5) & 1) == 0)
  {
    v148 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v148, v149, a2, self, @"CKDModifyRecordsOperation.m", 2706, @"We shouldn't get into this state if shouldModifyRecordsInDatabase is false");
  }

  v8 = objc_msgSend_container(self, v6, v7);

  if (!v8)
  {
    v150 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v150, v151, a2, self, @"CKDModifyRecordsOperation.m", 2707, @"Expected non-nil container");
  }

  if (!objc_msgSend_haveOutstandingHandlers(self, v9, v10))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v70 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v70, OS_LOG_TYPE_DEBUG, "Not sending a modify request to the server", buf, 2u);
    }

    goto LABEL_59;
  }

  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v14 = objc_msgSend_recordsToSave(self, v12, v13);
  v17 = objc_msgSend_count(v14, v15, v16);
  v155 = objc_msgSend_initWithCapacity_(v11, v18, v17);

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v21 = objc_msgSend_recordsToSave(self, v19, v20);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v158, v164, 16);
  if (!v25)
  {

    goto LABEL_46;
  }

  v26 = *v159;
  v27 = 1;
  do
  {
    v28 = 0;
    do
    {
      if (*v159 != v26)
      {
        objc_enumerationMutation(v21);
      }

      v29 = *(*(&v158 + 1) + 8 * v28);
      v30 = objc_msgSend_handlersByRecordID(self, v23, v24);
      v33 = objc_msgSend_recordID(v29, v31, v32);
      v35 = objc_msgSend_objectForKeyedSubscript_(v30, v34, v33);

      if (objc_msgSend_state(v35, v36, v37) == 6)
      {
        if (!objc_msgSend_canSkipRecordSaveForMergeables(v29, v38, v39))
        {
          goto LABEL_17;
        }

        if (objc_msgSend_containsMergeableValuesWithDeltasToSave(v29, v40, v41))
        {
          if (objc_msgSend_includeMergeableDeltasInModifyRecordsRequest(self, v42, v43))
          {
LABEL_17:
            objc_msgSend_addObject_(v155, v40, v29);
            v46 = objc_msgSend_saveAttempts(v35, v44, v45);
            objc_msgSend_setSaveAttempts_(v35, v47, (v46 + 1));
            goto LABEL_23;
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v51 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v61 = v51;
            v64 = objc_msgSend_recordID(v29, v62, v63);
            *buf = 138412290;
            v163[0] = v64;
            _os_log_debug_impl(&dword_22506F000, v61, OS_LOG_TYPE_DEBUG, "Skipping record upload for purely mergeable record: %@", buf, 0xCu);
          }

          objc_msgSend_setState_(v35, v52, 7);
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v49 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v57 = v49;
            v60 = objc_msgSend_recordID(v29, v58, v59);
            *buf = 138412290;
            v163[0] = v60;
            _os_log_debug_impl(&dword_22506F000, v57, OS_LOG_TYPE_DEBUG, "Skipping record save for purely mergeable record without any deltas to save: %@", buf, 0xCu);
          }

          objc_msgSend_setState_(v35, v50, 8);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v48 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v53 = v48;
          v56 = objc_msgSend_recordID(v35, v54, v55);
          *buf = 138412290;
          v163[0] = v56;
          _os_log_debug_impl(&dword_22506F000, v53, OS_LOG_TYPE_DEBUG, "Record %@ isn't ready, so we're going to skip the record upload phase.", buf, 0xCu);
        }

        v27 = 0;
      }

LABEL_23:

      ++v28;
    }

    while (v25 != v28);
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v158, v164, 16);
    v25 = v65;
  }

  while (v65);

  if ((v27 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v68 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v69 = "Some records failed to prepare for this save. Skipping save to the server and retrying if possible";
      goto LABEL_64;
    }

    goto LABEL_58;
  }

LABEL_46:
  if (!objc_msgSend_count(v155, v66, v67) && (objc_msgSend_recordIDsToDelete(self, v71, v72), v73 = objc_claimAutoreleasedReturnValue(), v76 = objc_msgSend_count(v73, v74, v75) == 0, v73, v76))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v68 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v69 = "No records to save or delete. Skipping sending a request to the server.";
LABEL_64:
      _os_log_debug_impl(&dword_22506F000, v68, OS_LOG_TYPE_DEBUG, v69, buf, 2u);
    }
  }

  else
  {
    v77 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v78 = MEMORY[0x277CBC830];
    v79 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v132 = v79;
      v135 = objc_msgSend_count(v155, v133, v134);
      v138 = objc_msgSend_clientChangeTokenData(self, v136, v137);
      *buf = 67109378;
      LODWORD(v163[0]) = v135;
      WORD2(v163[0]) = 2112;
      *(v163 + 6) = v138;
      _os_log_debug_impl(&dword_22506F000, v132, OS_LOG_TYPE_DEBUG, "Saving %d records to the server with change token %@", buf, 0x12u);

      if (*v77 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }
    }

    v80 = *v78;
    if (os_log_type_enabled(*v78, OS_LOG_TYPE_DEBUG))
    {
      v139 = v80;
      v142 = objc_msgSend_recordIDsToDelete(self, v140, v141);
      v145 = objc_msgSend_count(v142, v143, v144);
      *buf = 67109120;
      LODWORD(v163[0]) = v145;
      _os_log_debug_impl(&dword_22506F000, v139, OS_LOG_TYPE_DEBUG, "Deleting %d records from the server.", buf, 8u);
    }

    v83 = objc_msgSend_recordIDsToDelete(self, v81, v82);
    v86 = objc_msgSend_recordIDsToDeleteToEtags(self, v84, v85);
    v89 = objc_msgSend_recordIDsToDeleteToSigningPCSIdentity(self, v87, v88);
    v92 = objc_msgSend_handlersByRecordID(self, v90, v91);
    v95 = objc_msgSend_includeMergeableDeltasInModifyRecordsRequest(self, v93, v94);
    v97 = objc_msgSend__createModifyRequestWithRecordsToSave_recordsToDelete_recordsToDeleteToEtags_recordIDsToDeleteToSigningPCSIdentity_handlersByRecordID_sendMergeableDeltas_(self, v96, v155, v83, v86, v89, v92, v95);

    if (*MEMORY[0x277CBC810] == 1)
    {
      v100 = objc_msgSend_unitTestOverrides(self, v98, v99);
      v102 = objc_msgSend_objectForKeyedSubscript_(v100, v101, @"ModifyRecordsAlwaysUsesHTTPS");
      v103 = v102 == 0;

      if (!v103)
      {
        v106 = objc_msgSend_url(v97, v104, v105);
        v109 = objc_msgSend_absoluteString(v106, v107, v108);
        hasPrefix = objc_msgSend_hasPrefix_(v109, v110, @"https");

        if ((hasPrefix & 1) == 0)
        {
          v152 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v112, v113);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v152, v153, a2, self, @"CKDModifyRecordsOperation.m", 2750, @"CKDModifyRecordsOperation must use https in its request URL.");
        }
      }
    }

    objc_initWeak(buf, v97);
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = sub_22520CB64;
    v156[3] = &unk_2785483B8;
    v156[4] = self;
    objc_copyWeak(&v157, buf);
    objc_msgSend_setCompletionBlock_(v97, v114, v156);
    v117 = objc_msgSend_stateTransitionGroup(self, v115, v116);
    dispatch_group_enter(v117);

    objc_msgSend_setRequest_(self, v118, v97);
    v121 = objc_msgSend_requestOptions(v97, v119, v120);
    objc_msgSend_setStreamingAssetRequestOptions_(self, v122, v121);

    objc_msgSend_setRecordsToSave_(self, v123, 0);
    objc_msgSend_setRecordIDsToDelete_(self, v124, 0);
    objc_msgSend_setRecordIDsToDeleteToEtags_(self, v125, 0);
    objc_msgSend_setRecordIDsToDeleteToSigningPCSIdentity_(self, v126, 0);
    v129 = objc_msgSend_container(self, v127, v128);
    objc_msgSend_performRequest_(v129, v130, v97);

    objc_destroyWeak(&v157);
    objc_destroyWeak(buf);
  }

LABEL_58:

LABEL_59:
  v131 = *MEMORY[0x277D85DE8];
}

- (void)_uploadMergeableDeltas
{
  v49 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_includeMergeableDeltasInModifyRecordsRequest(self, a2, v2))
  {
    v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
    v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9);
    v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_22520D000;
    v41[3] = &unk_27854A2A0;
    v14 = v7;
    v42 = v14;
    v15 = v13;
    v43 = v15;
    v16 = v10;
    v44 = v16;
    objc_msgSend__enumerateHandlersInState_withBlock_(self, v17, 7, v41);
    if (objc_msgSend_count(v14, v18, v19) || objc_msgSend_count(v16, v20, v21))
    {
      v22 = objc_msgSend_CKMap_(v14, v20, &unk_28385D6E0);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v34 = v23;
        v37 = objc_msgSend_operationID(self, v35, v36);
        *buf = 138543618;
        v46 = v37;
        v47 = 2112;
        v48 = v22;
        _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Uploading mergeable deltas for operation %{public}@: %@", buf, 0x16u);
      }

      v24 = objc_alloc_init(MEMORY[0x277CBC7B8]);
      objc_msgSend_setDeltas_(v24, v25, v14);
      objc_msgSend_setReplacementRequests_(v24, v26, v16);
      v27 = objc_opt_class();
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_22520D358;
      v38[3] = &unk_278548C48;
      v39 = v15;
      v40 = self;
      objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v28, v27, v24, v38);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v30 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      v22 = v30;
      v33 = objc_msgSend_operationID(self, v31, v32);
      *buf = 138543362;
      v46 = v33;
      _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "No mergeable deltas or replacements for operation %{public}@", buf, 0xCu);
    }

LABEL_14:
    goto LABEL_15;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Not uploading mergeable deltas separately", buf, 2u);
  }

LABEL_15:
  v29 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  objc_msgSend_hash(self, a2, v2);
  kdebug_trace();
  objc_msgSend__clearProtectionDataIfNotEntitled(self, v4, v5);
  v9 = objc_msgSend_haveOutstandingHandlers(self, v6, v7) ^ 1;

  objc_msgSend_makeStateTransition_(self, v8, v9);
}

- (void)_clearProtectionDataIfNotEntitled
{
  v41 = *MEMORY[0x277D85DE8];
  v35 = objc_msgSend_container(self, a2, v2);
  v6 = objc_msgSend_entitlements(v35, v4, v5);
  if (objc_msgSend_hasProtectionDataEntitlement(v6, v7, v8))
  {

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = objc_msgSend_trustProtectionData(self, v9, v10);

    if ((v12 & 1) == 0)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v15 = objc_msgSend_handlersByRecordID(self, v13, v14);
      v18 = objc_msgSend_allValues(v15, v16, v17);

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v36, v40, 16);
      if (v20)
      {
        v23 = v20;
        v24 = *v37;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(v18);
            }

            v26 = objc_msgSend_record(*(*(&v36 + 1) + 8 * i), v21, v22);
            objc_msgSend_setProtectionData_(v26, v27, 0);
            objc_msgSend_setProtectionEtag_(v26, v28, 0);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = v26;
              objc_msgSend_setInvitedProtectionData_(v29, v30, 0);
              objc_msgSend_setInvitedProtectionEtag_(v29, v31, 0);
              objc_msgSend_setPublicProtectionData_(v29, v32, 0);
              objc_msgSend_setPublicProtectionEtag_(v29, v33, 0);
            }
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v36, v40, 16);
        }

        while (v23);
      }
    }

    v34 = *MEMORY[0x277D85DE8];
  }
}

- (void)finishWithError:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_finishDecryption(self, v5, v6);
  if (!v4 && (objc_msgSend_isCancelled(self, v7, v8) & 1) == 0)
  {
    v9 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = MEMORY[0x277CBC830];
    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v36 = v11;
      v39 = objc_msgSend_operationID(self, v37, v38);
      *buf = 138543362;
      v56 = v39;
      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Ensuring all handlers have completed for operation %{public}@", buf, 0xCu);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v14 = objc_msgSend_modifyHandlersByZoneID(self, v12, v13);
    v17 = objc_msgSend_allValues(v14, v15, v16);

    obj = v17;
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v49, v54, 16);
    if (v42)
    {
      v41 = *v50;
      do
      {
        v19 = 0;
        do
        {
          if (*v50 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v43 = v19;
          v20 = *(*(&v49 + 1) + 8 * v19);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v21 = v20;
          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v45, v53, 16);
          if (v23)
          {
            v26 = v23;
            v27 = *v46;
            do
            {
              v28 = 0;
              do
              {
                if (*v46 != v27)
                {
                  objc_enumerationMutation(v21);
                }

                if (objc_msgSend_state(*(*(&v45 + 1) + 8 * v28), v24, v25) != 14)
                {
                  if (*v9 != -1)
                  {
                    dispatch_once(v9, *MEMORY[0x277CBC878]);
                  }

                  v29 = *v10;
                  if (os_log_type_enabled(*v10, OS_LOG_TYPE_FAULT))
                  {
                    v30 = v29;
                    v33 = objc_msgSend_operationID(self, v31, v32);
                    *buf = 138543362;
                    v56 = v33;
                    _os_log_fault_impl(&dword_22506F000, v30, OS_LOG_TYPE_FAULT, "Operation %{public}@ tried to finish without an error but it has outstanding handlers", buf, 0xCu);
                  }
                }

                ++v28;
              }

              while (v26 != v28);
              v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v45, v53, 16);
            }

            while (v26);
          }

          v19 = v43 + 1;
        }

        while (v43 + 1 != v42);
        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v49, v54, 16);
      }

      while (v42);
    }

    v4 = 0;
  }

  v44.receiver = self;
  v44.super_class = CKDModifyRecordsOperation;
  [(CKDOperation *)&v44 finishWithError:v4];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_hash(self, v5, v6);
  kdebug_trace();
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = objc_msgSend_modifyHandlersByZoneID(self, v8, v9);
  v13 = objc_msgSend_allKeys(v10, v11, v12);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v31, v35, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v32;
    do
    {
      v19 = 0;
      do
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_addObject_(v7, v16, *(*(&v31 + 1) + 8 * v19++));
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v31, v35, 16);
    }

    while (v17);
  }

  if (objc_msgSend_count(v7, v20, v21))
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22520E520;
    v29[3] = &unk_2785487F8;
    v30 = v7;
    objc_msgSend_updateCloudKitMetrics_(self, v23, v29);
  }

  objc_msgSend_setSaveProgressBlock_(self, v22, 0);
  objc_msgSend_setSaveCompletionBlock_(self, v24, 0);
  objc_msgSend_setDeleteCompletionBlock_(self, v25, 0);
  objc_msgSend_setUploadCompletionBlock_(self, v26, 0);
  v28.receiver = self;
  v28.super_class = CKDModifyRecordsOperation;
  [(CKDOperation *)&v28 _finishOnCallbackQueueWithError:v4];

  v27 = *MEMORY[0x277D85DE8];
}

- (id)analyticsPayload
{
  v37.receiver = self;
  v37.super_class = CKDModifyRecordsOperation;
  v3 = [(CKDDatabaseOperation *)&v37 analyticsPayload];
  v4 = MEMORY[0x277CCABB0];
  v7 = objc_msgSend_recordsToSave(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  v12 = objc_msgSend_numberWithUnsignedInteger_(v4, v11, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v13, v12, 0x28387E740);

  v14 = MEMORY[0x277CCABB0];
  v17 = objc_msgSend_recordIDsToDelete(self, v15, v16);
  v20 = objc_msgSend_count(v17, v18, v19);
  v22 = objc_msgSend_numberWithUnsignedInteger_(v14, v21, v20);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v23, v22, 0x28387E760);

  v26 = objc_msgSend_savePolicy(self, v24, v25);
  v28 = @"SaveIfServerRecordUnchanged";
  if (v26 == 1)
  {
    v28 = @"SaveChangedKeys";
  }

  if (v26 == 2)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v27, @"SaveAllKeys", 0x28387E780);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v27, v28, 0x28387E780);
  }

  v31 = MEMORY[0x277CCABB0];
  v32 = objc_msgSend_atomic(self, v29, v30);
  v34 = objc_msgSend_numberWithBool_(v31, v33, v32);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v35, v34, 0x28387E7A0);

  return v3;
}

- (BOOL)validateAgainstLiveContainer:(id)a3 error:(id *)a4
{
  v119 = *MEMORY[0x277D85DE8];
  v82 = a3;
  v83 = self;
  v112.receiver = self;
  v112.super_class = CKDModifyRecordsOperation;
  v81 = a4;
  if ([(CKDOperation *)&v112 validateAgainstLiveContainer:v82 error:a4])
  {
    v80 = objc_msgSend_operationInfo(self, v6, v7);
    v106 = 0;
    v107 = &v106;
    v108 = 0x3032000000;
    v109 = sub_225074060;
    v110 = sub_2250735BC;
    v111 = 0;
    if (objc_msgSend_isLongLived(self, v8, v9))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22520EE0C;
      aBlock[3] = &unk_27854A318;
      v105 = &v106;
      aBlock[4] = self;
      v104 = v82;
      v10 = _Block_copy(aBlock);
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v13 = objc_msgSend_recordsToSave(v80, v11, v12);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v99, v118, 16);
      if (v15)
      {
        v16 = *v100;
        do
        {
          v17 = 0;
          do
          {
            if (*v100 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v99 + 1) + 8 * v17);
            v117[0] = objc_opt_class();
            v117[1] = objc_opt_class();
            v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v117, 2);
            LODWORD(v18) = objc_msgSend_containsValueOfClasses_passingTest_(v18, v21, v20, v10);

            if (v18 && !v107[5])
            {
              v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v22, v23);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, v83, @"CKDModifyRecordsOperation.m", 3044, @"If you're gonna fail our value check, there better be a reason");
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v22, &v99, v118, 16);
        }

        while (v15);
      }

      v26 = v107[5];
      if (v26)
      {
        if (a4)
        {
          *a4 = v26;
        }

        goto LABEL_33;
      }
    }

    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = sub_22520F22C;
    v96[3] = &unk_27854A340;
    v28 = v82;
    v97 = v28;
    v98 = &v106;
    v29 = _Block_copy(v96);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v32 = objc_msgSend_recordsToSave(v80, v30, v31);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v92, v116, 16);
    if (v34)
    {
      v35 = *v93;
      do
      {
        v36 = 0;
        do
        {
          if (*v93 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v92 + 1) + 8 * v36);
          v115 = objc_opt_class();
          v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, &v115, 1);
          LODWORD(v37) = objc_msgSend_containsValueOfClasses_passingTest_(v37, v40, v39, v29);

          if (v37 && !v107[5])
          {
            v43 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v41, v42);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v43, v44, a2, v83, @"CKDModifyRecordsOperation.m", 3070, @"If you're gonna fail our value check, there better be a reason");
          }

          ++v36;
        }

        while (v34 != v36);
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v41, &v92, v116, 16);
      }

      while (v34);
    }

    v45 = v107[5];
    if (!v45)
    {

      objc_msgSend_clientSDKVersion(v28, v48, v49);
      if (CKLinkCheck168f06831e5b4d3ab6cc64d69a8cc447())
      {
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v52 = objc_msgSend_recordsToSave(v80, v50, v51);
        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v88, v114, 16);
        obj = v52;
        if (v54)
        {
          v76 = *v89;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v89 != v76)
              {
                objc_enumerationMutation(obj);
              }

              v55 = *(*(&v88 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v57 = v55;
                v84 = 0u;
                v85 = 0u;
                v86 = 0u;
                v87 = 0u;
                v75 = v57;
                v60 = objc_msgSend_participants(v57, v58, v59);
                v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v84, v113, 16);
                if (v64)
                {
                  v65 = *v85;
                  while (2)
                  {
                    for (j = 0; j != v64; ++j)
                    {
                      if (*v85 != v65)
                      {
                        objc_enumerationMutation(v60);
                      }

                      if (objc_msgSend_usesOneTimeURL(*(*(&v84 + 1) + 8 * j), v62, v63))
                      {
                        v67 = MEMORY[0x277CBEC10];
                        if (*MEMORY[0x277CBC810] == 1)
                        {
                          v67 = objc_msgSend_unitTestOverrides(v83, v62, v63);
                        }

                        v68 = objc_msgSend_container(v83, v62, v63);
                        v71 = objc_msgSend_entitlements(v68, v69, v70);
                        v72 = CKCanUseOneTimeLinksWithEntitlements();
                        v73 = 0;

                        if ((v72 & 1) == 0)
                        {
                          if (v81)
                          {
                            v74 = v73;
                            *v81 = v73;
                          }

                          goto LABEL_33;
                        }
                      }
                    }

                    v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v62, &v84, v113, 16);
                    if (v64)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }
            }

            v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v56, &v88, v114, 16);
          }

          while (v54);
        }
      }

      v27 = 1;
      goto LABEL_34;
    }

    if (v81)
    {
      *v81 = v45;
    }

LABEL_33:
    v27 = 0;
LABEL_34:
    _Block_object_dispose(&v106, 8);

    goto LABEL_35;
  }

  v27 = 0;
LABEL_35:

  v46 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)relevantZoneIDs
{
  if (self->_hasRecordsToSave || self->_hasRecordsToDelete)
  {
    v3 = objc_msgSend_modifyHandlersByZoneID(self, a2, v2);
    v6 = objc_msgSend_allKeys(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end