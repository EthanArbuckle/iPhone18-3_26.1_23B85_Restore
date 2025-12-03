@interface CKDMovePhotosOperation
- (CKDMovePhotosOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)_createModifyRequestWithRecordsToSave:(id)save recordsToDelete:(id)delete recordsToDeleteToEtags:(id)etags recordIDsToDeleteToSigningPCSIdentity:(id)identity handlersByRecordID:(id)d sendMergeableDeltas:(BOOL)deltas;
- (id)activityCreate;
- (id)handlerForDeleteWithRecordID:(id)d;
- (id)handlerForSaveWithRecord:(id)record;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleRecordMoved:(id)moved handler:(id)handler responseCode:(id)code recordForOplockFailure:(id)failure destinationServerRecord:(id)record moveMarkerServerRecord:(id)serverRecord;
- (void)_reallyHandleRecordMoved:(id)moved handler:(id)handler responseCode:(id)code recordForOplockFailure:(id)failure destinationServerRecord:(id)record moveMarkerServerRecord:(id)serverRecord;
- (void)callbackWithMetadata:(id)metadata error:(id)error;
- (void)main;
- (void)moveCallbackWithMetadata:(id)metadata error:(id)error;
@end

@implementation CKDMovePhotosOperation

- (CKDMovePhotosOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  containerCopy = container;
  v10 = objc_msgSend_moveChanges(infoCopy, v8, v9);
  v12 = objc_msgSend_CKMap_(v10, v11, &unk_28385D720);

  objc_msgSend_setRecordsToSave_(infoCopy, v13, v12);
  v16 = objc_msgSend_moveChanges(infoCopy, v14, v15);
  v18 = objc_msgSend_CKMapToDictionary_(v16, v17, &unk_28385D740);

  objc_storeStrong(&self->_moveChangesByDestinationRecordID, v18);
  v23.receiver = self;
  v23.super_class = CKDMovePhotosOperation;
  v19 = [(CKDModifyRecordsOperation *)&v23 initWithOperationInfo:infoCopy container:containerCopy];

  if (v19)
  {
    objc_storeStrong(&v19->_moveChangesByDestinationRecordID, v18);
    v19->_sourceDatabaseScope = objc_msgSend_sourceDatabaseScope(infoCopy, v20, v21);
  }

  return v19;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/move-photos", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (id)handlerForSaveWithRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKDMovePhotosOperation.m", 87, @"Not expected to move shares");
  }

  v8 = objc_msgSend_moveChangesByDestinationRecordID(self, v6, v7);
  v11 = objc_msgSend_recordID(recordCopy, v9, v10);
  v13 = objc_msgSend_objectForKeyedSubscript_(v8, v12, v11);

  v15 = objc_msgSend_moveHandlerWithMoveChange_operation_(CKDMoveRecordHandler, v14, v13, self);

  return v15;
}

- (id)handlerForDeleteWithRecordID:(id)d
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, d);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKDMovePhotosOperation.m", 93, @"Not expected to delete records in a move");

  return 0;
}

- (void)callbackWithMetadata:(id)metadata error:(id)error
{
  metadataCopy = metadata;
  errorCopy = error;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKDMovePhotosOperation.m", 100, @"How'd a move operation get a non-move handler?");
  }

  v11 = objc_msgSend_callbackQueue(self, v9, v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252202EC;
  block[3] = &unk_278546990;
  block[4] = self;
  v17 = metadataCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = metadataCopy;
  dispatch_async(v11, block);
}

- (void)moveCallbackWithMetadata:(id)metadata error:(id)error
{
  v83 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  errorCopy = error;
  v11 = objc_msgSend_moveChange(metadataCopy, v9, v10);
  v14 = objc_msgSend_sourceRecordID(v11, v12, v13);

  if (objc_msgSend_saveCompletionBlockCalled(metadataCopy, v15, v16))
  {
    v73 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v73, v74, a2, self, @"CKDMovePhotosOperation.m", 108, @"moveCallbackWithMetadata:error: called twice on %@", v14);
  }

  v19 = objc_msgSend_serverDestinationRecord(metadataCopy, v17, v18);
  v22 = objc_msgSend_streamingAssetRequestOptions(self, v20, v21);
  objc_msgSend_setStreamingAssetRequestOptions_(v19, v23, v22);

  if (errorCopy)
  {
    v26 = objc_msgSend_moveCompletionBlock(self, v24, v25);

    if (!v26)
    {
      goto LABEL_13;
    }

    v29 = objc_msgSend_moveCompletionBlock(self, v27, v28);
    (v29)[2](v29, v14, 0, 0, 0, errorCopy);
    goto LABEL_12;
  }

  v32 = objc_msgSend_error(metadataCopy, v24, v25);
  if (v32)
  {
    goto LABEL_9;
  }

  v33 = objc_msgSend_saveProgressBlock(self, v30, v31);

  if (v33)
  {
    v32 = objc_msgSend_saveProgressBlock(self, v34, v35);
    (v32)[2](v32, v14, 1.0);
LABEL_9:
  }

  v36 = objc_msgSend_moveCompletionBlock(self, v34, v35);

  if (!v36)
  {
    goto LABEL_13;
  }

  v29 = objc_msgSend_moveCompletionBlock(self, v27, v28);
  v75 = objc_msgSend_moveChange(metadataCopy, v37, v38);
  objc_msgSend_sourceRecordID(v75, v39, v40);
  v41 = v76 = v14;
  v44 = objc_msgSend_moveChange(metadataCopy, v42, v43);
  v47 = objc_msgSend_destinationRecord(v44, v45, v46);
  v50 = objc_msgSend_serverDestinationRecord(metadataCopy, v48, v49);
  v53 = objc_msgSend_serverMoveMarkerRecord(metadataCopy, v51, v52);
  v56 = objc_msgSend_error(metadataCopy, v54, v55);
  (v29)[2](v29, v41, v47, v50, v53, v56);

  v14 = v76;
LABEL_12:

LABEL_13:
  if (objc_msgSend_didAttemptZoneWideShareKeyRoll(metadataCopy, v27, v28))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v59 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v64 = v59;
      v67 = objc_msgSend_operationID(self, v65, v66);
      *buf = 138543618;
      v80 = v67;
      v81 = 2114;
      v82 = 0x28387E400;
      _os_log_debug_impl(&dword_22506F000, v64, OS_LOG_TYPE_DEBUG, "Operation %{public}@ sending CoreAnalytics event %{public}@", buf, 0x16u);

      if (errorCopy)
      {
        goto LABEL_18;
      }
    }

    else if (errorCopy)
    {
LABEL_18:
      v62 = errorCopy;
LABEL_21:
      v68 = v62;
      v69 = objc_msgSend_dugongKeyRollAnalyticsPayloadWithError_(self, v63, v62);
      AnalyticsSendEvent();

      goto LABEL_22;
    }

    v62 = objc_msgSend_error(metadataCopy, v60, v61);
    goto LABEL_21;
  }

LABEL_22:
  if (!errorCopy)
  {
    v70 = objc_msgSend_error(metadataCopy, v57, v58);

    if (!v70)
    {
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = sub_225220748;
      v77[3] = &unk_278549F38;
      v77[4] = self;
      v78 = metadataCopy;
      objc_msgSend_updateCloudKitMetrics_(self, v71, v77);
    }
  }

  objc_msgSend_setSaveCompletionBlockCalled_(metadataCopy, v57, 1);

  v72 = *MEMORY[0x277D85DE8];
}

- (id)_createModifyRequestWithRecordsToSave:(id)save recordsToDelete:(id)delete recordsToDeleteToEtags:(id)etags recordIDsToDeleteToSigningPCSIdentity:(id)identity handlersByRecordID:(id)d sendMergeableDeltas:(BOOL)deltas
{
  saveCopy = save;
  deleteCopy = delete;
  etagsCopy = etags;
  identityCopy = identity;
  dCopy = d;
  objc_initWeak(&location, self);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_225220AF8;
  v48[3] = &unk_27854A640;
  v48[4] = self;
  v20 = objc_msgSend_CKMap_(saveCopy, v19, v48);
  if (objc_msgSend_count(deleteCopy, v21, v22))
  {
    v40 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v23, v24);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v40, v41, a2, self, @"CKDMovePhotosOperation.m", 162, @"How did a move operation decide to delete records?");
  }

  if (objc_msgSend_count(identityCopy, v23, v24))
  {
    v42 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v25, v26);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, a2, self, @"CKDMovePhotosOperation.m", 163, @"How did a move operation decide to delete records?");
  }

  if (objc_msgSend_count(etagsCopy, v25, v26))
  {
    v44 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v27, v28);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v44, v45, a2, self, @"CKDMovePhotosOperation.m", 164, @"How did a move operation decide to delete records?");
  }

  v29 = [CKDMovePhotosURLRequest alloc];
  v32 = objc_msgSend_sourceDatabaseScope(self, v30, v31);
  v35 = objc_msgSend_atomic(self, v33, v34);
  v37 = objc_msgSend_initWithOperation_moveChanges_sourceDatabaseScope_atomic_(v29, v36, self, v20, v32, v35);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_225220B7C;
  v46[3] = &unk_27854A668;
  objc_copyWeak(&v47, &location);
  objc_msgSend_setRecordPostedBlock_(v37, v38, v46);
  objc_destroyWeak(&v47);

  objc_destroyWeak(&location);

  return v37;
}

- (void)_handleRecordMoved:(id)moved handler:(id)handler responseCode:(id)code recordForOplockFailure:(id)failure destinationServerRecord:(id)record moveMarkerServerRecord:(id)serverRecord
{
  v84 = *MEMORY[0x277D85DE8];
  movedCopy = moved;
  handlerCopy = handler;
  codeCopy = code;
  failureCopy = failure;
  recordCopy = record;
  serverRecordCopy = serverRecord;
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x3032000000;
  v80[3] = sub_225074080;
  v80[4] = sub_2250735CC;
  v20 = recordCopy;
  v81 = v20;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x3032000000;
  v78[3] = sub_225074080;
  v78[4] = sub_2250735CC;
  v21 = serverRecordCopy;
  v79 = v21;
  v24 = objc_msgSend_stateTransitionGroup(self, v22, v23);
  dispatch_group_enter(v24);

  v25 = dispatch_group_create();
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = sub_225074080;
  v76[4] = sub_2250735CC;
  v77 = 0;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x3032000000;
  v74[3] = sub_225074080;
  v74[4] = sub_2250735CC;
  v75 = 0;
  if ((objc_msgSend_hasPropertiesRequiringEncryption(v20, v26, v27) & 1) != 0 || objc_msgSend_hasPropertiesRequiringEncryption(v21, v28, v29))
  {
    if (objc_msgSend_hasPropertiesRequiringEncryption(v20, v28, v29))
    {
      dispatch_group_enter(v25);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v52 = objc_msgSend_recordID(v20, v33, v34);
        *buf = 138412290;
        v83 = v52;
        _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Decrypting destination record %@ returned from move", buf, 0xCu);
      }

      v37 = objc_msgSend_recordDecryptOperation(self, v35, v36);
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = sub_225221288;
      v69[3] = &unk_27854A690;
      v70 = v20;
      v72 = v76;
      v73 = v80;
      v71 = v25;
      objc_msgSend_decryptRecord_withCompletion_(v37, v38, v70, v69);
    }

    if (objc_msgSend_hasPropertiesRequiringEncryption(v21, v30, v31))
    {
      dispatch_group_enter(v25);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v39 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v53 = objc_msgSend_recordID(v21, v40, v41);
        *buf = 138412290;
        v83 = v53;
        _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Decrypting move marker record %@ returned from move", buf, 0xCu);
      }

      v44 = objc_msgSend_recordDecryptOperation(self, v42, v43);
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = sub_225221438;
      v64[3] = &unk_27854A690;
      v65 = v21;
      v67 = v74;
      v68 = v78;
      v66 = v25;
      objc_msgSend_decryptRecord_withCompletion_(v44, v45, v65, v64);
    }
  }

  v46 = objc_msgSend_callbackQueue(self, v28, v29);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252215E8;
  block[3] = &unk_27854A6B8;
  v55 = handlerCopy;
  selfCopy = self;
  v57 = movedCopy;
  v58 = codeCopy;
  v59 = failureCopy;
  v60 = v76;
  v61 = v74;
  v62 = v80;
  v63 = v78;
  v47 = failureCopy;
  v48 = codeCopy;
  v49 = movedCopy;
  v50 = handlerCopy;
  dispatch_group_notify(v25, v46, block);

  _Block_object_dispose(v74, 8);
  _Block_object_dispose(v76, 8);

  _Block_object_dispose(v78, 8);
  _Block_object_dispose(v80, 8);

  v51 = *MEMORY[0x277D85DE8];
}

- (void)_reallyHandleRecordMoved:(id)moved handler:(id)handler responseCode:(id)code recordForOplockFailure:(id)failure destinationServerRecord:(id)record moveMarkerServerRecord:(id)serverRecord
{
  v388 = *MEMORY[0x277D85DE8];
  movedCopy = moved;
  handlerCopy = handler;
  codeCopy = code;
  failureCopy = failure;
  recordCopy = record;
  serverRecordCopy = serverRecord;
  v367 = objc_msgSend_container(self, v20, v21);
  if (movedCopy)
  {
    v24 = objc_msgSend_handlersByRecordID(self, v22, v23);
    v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, movedCopy);
    v369 = objc_msgSend_record(v26, v27, v28);
  }

  else
  {
    v369 = 0;
  }

  objc_msgSend_setServerDestinationRecord_(handlerCopy, v22, recordCopy);
  objc_msgSend_setServerMoveMarkerRecord_(handlerCopy, v29, serverRecordCopy);
  v32 = objc_msgSend_code(codeCopy, v30, v31);
  if (!movedCopy || v32 != 1)
  {
    v365 = failureCopy;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v366 = serverRecordCopy;
    v57 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v385 = movedCopy;
      v386 = 2112;
      v387 = codeCopy;
      _os_log_impl(&dword_22506F000, v57, OS_LOG_TYPE_INFO, "Error when moving record %@: %@", buf, 0x16u);
    }

    v60 = objc_msgSend_error(codeCopy, v58, v59);
    v63 = objc_msgSend_clientError(v60, v61, v62);
    hasType = objc_msgSend_hasType(v63, v64, v65);

    if (hasType)
    {
      v69 = objc_msgSend_error(codeCopy, v67, v68);
      v72 = objc_msgSend_clientError(v69, v70, v71);
      v75 = objc_msgSend_type(v72, v73, v74);

      if (v75 == 52)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        serverRecordCopy = v366;
        v78 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v385 = movedCopy;
          v79 = "Record PCS etag failed for record %@";
LABEL_38:
          _os_log_impl(&dword_22506F000, v78, OS_LOG_TYPE_INFO, v79, buf, 0xCu);
          v360 = 0;
          goto LABEL_39;
        }

        goto LABEL_41;
      }

      v93 = objc_msgSend_error(codeCopy, v76, v77);
      v96 = objc_msgSend_clientError(v93, v94, v95);
      v99 = objc_msgSend_type(v96, v97, v98);

      if (v99 == 53)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        serverRecordCopy = v366;
        v78 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v385 = movedCopy;
          v79 = "Zone PCS etag failed for record %@";
          goto LABEL_38;
        }

LABEL_41:
        v360 = 0;
        goto LABEL_42;
      }

      v171 = objc_msgSend_error(codeCopy, v100, v101);
      v174 = objc_msgSend_clientError(v171, v172, v173);
      v177 = objc_msgSend_type(v174, v175, v176);

      v180 = objc_msgSend_error(codeCopy, v178, v179);
      v183 = v180;
      if (v177 == 15)
      {
        v184 = objc_msgSend_errorDescription(v180, v181, v182);
        hasPrefix = objc_msgSend_hasPrefix_(v184, v185, @"Record PCS oplock failed");

        if (hasPrefix)
        {
          v189 = 1;
          v190 = @"Record";
        }

        else
        {
          v219 = objc_msgSend_error(codeCopy, v187, v188);
          v222 = objc_msgSend_errorDescription(v219, v220, v221);
          v224 = objc_msgSend_hasPrefix_(v222, v223, @"Zone PCS oplock failed");

          if (v224)
          {
            v189 = 1;
            v190 = @"Zone";
          }

          else
          {
            v249 = objc_msgSend_error(codeCopy, v225, v226);
            v252 = objc_msgSend_errorDescription(v249, v250, v251);
            v189 = objc_msgSend_hasPrefix_(v252, v253, @"Share Etag Oplock failure");

            if (v189)
            {
              v190 = @"Share";
            }

            else
            {
              v190 = @"Unknown";
            }
          }
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v254 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v385 = v190;
          v386 = 2112;
          v387 = movedCopy;
          _os_log_impl(&dword_22506F000, v254, OS_LOG_TYPE_INFO, "%{public}@ oplock failed for record %@", buf, 0x16u);
        }

        if (v189)
        {
          v360 = 0;
          serverRecordCopy = v366;
LABEL_39:
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

LABEL_42:
          v102 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v385 = movedCopy;
            _os_log_impl(&dword_22506F000, v102, OS_LOG_TYPE_INFO, "Handling error for record %@ as an oplock failure", buf, 0xCu);
          }

          if (objc_msgSend_retryPCSFailures(self, v103, v104))
          {
            selfCopy = self;
            objc_msgSend_clearProtectionDataForRecord(handlerCopy, v105, v106);
            v110 = objc_msgSend_recordID(v369, v108, v109);
            v113 = objc_msgSend_zoneID(v110, v111, v112);

            if (!v113)
            {
              v37 = v369;
              objc_msgSend_setState_(handlerCopy, v114, 13);
              goto LABEL_62;
            }

            v362 = recordCopy;
            v358 = handlerCopy;
            v359 = movedCopy;
            v381 = 0u;
            v382 = 0u;
            v380 = 0u;
            v379 = 0u;
            v116 = objc_msgSend_modifyHandlersByZoneID(self, v114, v115);
            v119 = objc_msgSend_recordID(v369, v117, v118);
            v122 = objc_msgSend_zoneID(v119, v120, v121);
            v124 = objc_msgSend_objectForKeyedSubscript_(v116, v123, v122);

            v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v379, v383, 16);
            if (v126)
            {
              v127 = v126;
              v128 = *v380;
              do
              {
                v129 = 0;
                do
                {
                  if (*v380 != v128)
                  {
                    objc_enumerationMutation(v124);
                  }

                  v130 = *(*(&v379 + 1) + 8 * v129);
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v131 = *MEMORY[0x277CBC830];
                  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
                  {
                    v156 = v131;
                    v159 = objc_msgSend_record(v130, v157, v158);
                    v162 = objc_msgSend_recordID(v159, v160, v161);
                    *buf = 138412290;
                    v385 = v162;
                    _os_log_debug_impl(&dword_22506F000, v156, OS_LOG_TYPE_DEBUG, "Clearing zone PCS tag for record %@", buf, 0xCu);
                  }

                  v134 = objc_msgSend_record(v130, v132, v133);
                  objc_msgSend_setZoneProtectionEtag_(v134, v135, 0);

                  v138 = objc_msgSend_record(v130, v136, v137);
                  objc_msgSend_setShareEtag_(v138, v139, 0);

                  v142 = objc_msgSend_error(codeCopy, v140, v141);
                  v145 = objc_msgSend_clientError(v142, v143, v144);
                  v148 = objc_msgSend_type(v145, v146, v147);

                  if (v148 != 52)
                  {
                    v151 = objc_msgSend_record(v130, v149, v150);
                    v154 = objc_msgSend_recordID(v151, v152, v153);
                    objc_msgSend_setPCSData_forFetchedRecordID_(selfCopy, v155, 0, v154);
                  }

                  ++v129;
                }

                while (v127 != v129);
                v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v149, &v379, v383, 16);
              }

              while (v127);
            }

            v163 = 13;
            handlerCopy = v358;
            movedCopy = v359;
            recordCopy = v362;
            serverRecordCopy = v366;
          }

          else
          {
            v163 = 12;
          }

          v37 = v369;
          objc_msgSend_setState_(handlerCopy, v105, v163);
LABEL_62:
          failureCopy = v365;
          if (v360)
          {
            objc_msgSend_setError_(handlerCopy, v164, v360);

            goto LABEL_115;
          }

          v165 = MEMORY[0x277CBC560];
          v166 = *MEMORY[0x277CBC120];
          v167 = objc_msgSend_recordID(v37, v164, 0);
          v169 = objc_msgSend_errorWithDomain_code_userInfo_format_(v165, v168, v166, 2037, 0, @"Error moving record %@ on server: Protection data didn't match", v167);
          objc_msgSend_setError_(handlerCopy, v170, v169);

LABEL_114:
          v37 = v369;
          goto LABEL_115;
        }
      }

      else
      {
        v191 = objc_msgSend_clientError(v180, v181, v182);
        v194 = objc_msgSend_type(v191, v192, v193);

        if (v194 == 48)
        {
          v197 = objc_msgSend_recordCache(v367, v195, v196);
          v200 = objc_msgSend_zoneID(movedCopy, v198, v199);
          objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v197, v201, v367, v200);

          if (objc_msgSend_databaseScope(self, v202, v203) != 1)
          {
            v204 = objc_msgSend_recordID(v369, v67, v68);
            v207 = objc_msgSend_zoneID(v204, v205, v206);
            objc_msgSend_setPCSData_forFetchedZoneID_(self, v208, 0, v207);

            v211 = objc_msgSend_pcsCache(v367, v209, v210);
            v214 = objc_msgSend_recordID(v369, v212, v213);
            v217 = objc_msgSend_zoneID(v214, v215, v216);
            objc_msgSend_removePCSDataForItemsInZoneWithID_(v211, v218, v217);
          }
        }

        else
        {
          v227 = objc_msgSend_error(codeCopy, v195, v196);
          v230 = objc_msgSend_clientError(v227, v228, v229);
          v233 = objc_msgSend_type(v230, v231, v232);

          if (v233 == 64)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            selfCopy2 = self;
            v363 = recordCopy;
            v235 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22506F000, v235, OS_LOG_TYPE_INFO, "Record PCS chain was invalid", buf, 2u);
            }

            v236 = MEMORY[0x277CBC560];
            v237 = *MEMORY[0x277CBC120];
            v238 = sub_2253962A4(codeCopy);
            v241 = objc_msgSend_recordID(v369, v239, v240);
            v244 = objc_msgSend_error(codeCopy, v242, v243);
            v247 = objc_msgSend_errorDescription(v244, v245, v246);
            v360 = objc_msgSend_errorWithDomain_code_userInfo_format_(v236, v248, v237, v238, 0, @"Error moving record %@ on server: %@", v241, v247);

            recordCopy = v363;
            serverRecordCopy = v366;
            self = selfCopy2;
            goto LABEL_39;
          }
        }
      }
    }

    v255 = objc_msgSend_error(codeCopy, v67, v68);
    if (objc_msgSend_hasExtensionError(v255, v256, v257))
    {
      v260 = objc_msgSend_error(codeCopy, v258, v259);
      v263 = objc_msgSend_extensionError(v260, v261, v262);
      hasTypeCode = objc_msgSend_hasTypeCode(v263, v264, v265);

      if (hasTypeCode)
      {
        v269 = MEMORY[0x277CBC560];
        v270 = *MEMORY[0x277CBC120];
        v271 = objc_msgSend_request(self, v267, v268);
        v272 = sub_225395734(v271, codeCopy);
        v274 = objc_msgSend_errorWithDomain_code_userInfo_format_(v269, v273, v270, 6000, v272, @"Plugin-Specific Error");
        objc_msgSend_setError_(handlerCopy, v275, v274);

        objc_msgSend_setState_(handlerCopy, v276, 12);
LABEL_113:
        serverRecordCopy = v366;
        goto LABEL_114;
      }
    }

    else
    {
    }

    v364 = recordCopy;
    selfCopy3 = self;
    v277 = objc_msgSend_request(self, v267, v268);
    v278 = sub_225395734(v277, codeCopy);
    v281 = objc_msgSend_mutableCopy(v278, v279, v280);

    v284 = objc_msgSend_error(codeCopy, v282, v283);
    v287 = objc_msgSend_clientError(v284, v285, v286);
    v290 = objc_msgSend_moveOplockFailure(v287, v288, v289);
    hasMovedRecordDestinationIdentifier = objc_msgSend_hasMovedRecordDestinationIdentifier(v290, v291, v292);

    if (hasMovedRecordDestinationIdentifier)
    {
      v296 = objc_msgSend_translator(selfCopy3, v294, v295);
      v299 = objc_msgSend_error(codeCopy, v297, v298);
      v302 = objc_msgSend_clientError(v299, v300, v301);
      v305 = objc_msgSend_moveOplockFailure(v302, v303, v304);
      objc_msgSend_movedRecordDestinationIdentifier(v305, v306, v307);
      v309 = v308 = v281;
      v311 = objc_msgSend_recordIDFromPRecordIdentifier_error_(v296, v310, v309, 0);

      v281 = v308;
      if (v311)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v308, v312, v311, *MEMORY[0x277CBC018]);
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2252229C0;
    aBlock[3] = &unk_2785470C0;
    v378 = handlerCopy;
    v313 = _Block_copy(aBlock);
    v316 = objc_msgSend_error(codeCopy, v314, v315);
    v319 = objc_msgSend_clientError(v316, v317, v318);
    hasOplockFailure = objc_msgSend_hasOplockFailure(v319, v320, v321);

    if (hasOplockFailure)
    {
      v323 = v365;
      v324 = v369;
      v329 = objc_msgSend_copyWithOriginalValues(v324, v325, v326);
      if (v329)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v281, v327, v329, *MEMORY[0x277CBBFD8]);
      }

      if (v323)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v281, v327, v323, *MEMORY[0x277CBBFE8]);
      }

      if (v324)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v281, v327, v324, *MEMORY[0x277CBBFE0]);
      }

      if (objc_msgSend_hasPropertiesRequiringEncryption(v323, v327, v328))
      {
        v332 = objc_msgSend_stateTransitionGroup(selfCopy3, v330, v331);
        dispatch_group_enter(v332);

        v361 = v329;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        failureCopy = v365;
        v333 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v354 = v333;
          v357 = objc_msgSend_recordID(v323, v355, v356);
          *buf = 138412290;
          v385 = v357;
          _os_log_debug_impl(&dword_22506F000, v354, OS_LOG_TYPE_DEBUG, "Decrypting server record returned by oplock failure %@", buf, 0xCu);
        }

        v336 = objc_msgSend_recordDecryptOperation(selfCopy3, v334, v335);
        v370[0] = MEMORY[0x277D85DD0];
        v370[1] = 3221225472;
        v370[2] = sub_225222A30;
        v370[3] = &unk_27854A200;
        v371 = v323;
        v372 = v281;
        v373 = codeCopy;
        v374 = movedCopy;
        v375 = selfCopy3;
        v376 = v313;
        v337 = v323;
        objc_msgSend_decryptRecord_withCompletion_(v336, v338, v337, v370);

        goto LABEL_112;
      }
    }

    v339 = MEMORY[0x277CBC560];
    v340 = *MEMORY[0x277CBC120];
    v341 = sub_2253962A4(codeCopy);
    objc_msgSend_error(codeCopy, v342, v343);
    v344 = v313;
    v345 = v281;
    v347 = v346 = movedCopy;
    objc_msgSend_errorDescription(v347, v348, v349);
    v351 = v350 = handlerCopy;
    v324 = objc_msgSend_errorWithDomain_code_userInfo_format_(v339, v352, v340, v341, v345, @"Error moving record %@ on server: %@", v346, v351);

    handlerCopy = v350;
    movedCopy = v346;
    v281 = v345;
    v313 = v344;
    v344[2](v344, v324);
    failureCopy = v365;
LABEL_112:

    recordCopy = v364;
    goto LABEL_113;
  }

  v33 = *MEMORY[0x277CBC878];
  v34 = *MEMORY[0x277CBC880];
  if (!v369)
  {
    if (v34 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v33);
    }

    v366 = serverRecordCopy;
    v80 = recordCopy;
    v81 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v385 = movedCopy;
      _os_log_error_impl(&dword_22506F000, v81, OS_LOG_TYPE_ERROR, "Got a response for record with ID %@, but we didn't try to move that record.", buf, 0xCu);
    }

    objc_msgSend_setState_(handlerCopy, v82, 12);
    v83 = MEMORY[0x277CBC560];
    v84 = *MEMORY[0x277CBC120];
    v85 = sub_2253962A4(codeCopy);
    v88 = objc_msgSend_request(self, v86, v87);
    v89 = sub_225395734(v88, codeCopy);
    v91 = objc_msgSend_errorWithDomain_code_userInfo_format_(v83, v90, v84, v85, v89, @"Got a response for record with ID %@, but we didn't try to move that record.", movedCopy);
    objc_msgSend_setError_(handlerCopy, v92, v91);

    recordCopy = v80;
    goto LABEL_113;
  }

  if (v34 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v33);
  }

  v35 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v385 = movedCopy;
    _os_log_impl(&dword_22506F000, v35, OS_LOG_TYPE_INFO, "Record %@ was successfully moved on the server", buf, 0xCu);
  }

  objc_msgSend_setState_(handlerCopy, v36, 8);
  v37 = v369;
  objc_msgSend_setKnownToServer_(v369, v38, 1);
  objc_msgSend_setKnownToServer_(serverRecordCopy, v39, 1);
  v42 = objc_msgSend_etag(recordCopy, v40, v41);

  if (v42)
  {
    v45 = objc_msgSend_etag(recordCopy, v43, v44);
    objc_msgSend_setEtag_(v369, v46, v45);
  }

  v47 = objc_msgSend_creationDate(recordCopy, v43, v44);

  if (v47)
  {
    v50 = objc_msgSend_creationDate(recordCopy, v48, v49);
    objc_msgSend_setCreationDate_(v369, v51, v50);
  }

  v52 = objc_msgSend_modificationDate(recordCopy, v48, v49);

  if (v52)
  {
    v55 = objc_msgSend_modificationDate(recordCopy, v53, v54);
    objc_msgSend_setModificationDate_(v369, v56, v55);
  }

  objc_msgSend_savePCSDataToCache(handlerCopy, v53, v54);
LABEL_115:

  v353 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v27 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v6 = v3;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v10 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v9, 1, 0, 0);
    v13 = objc_msgSend_CKPropertiesStyleString(v10, v11, v12);
    v15 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v14, 0, 1, 0);
    v18 = objc_msgSend_CKPropertiesStyleString(v15, v16, v17);
    v19 = 138544130;
    v20 = v8;
    v21 = 2048;
    selfCopy = self;
    v23 = 2114;
    v24 = v13;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Starting Move Photos operation <%{public}@: %p; %{public}@, %@>", &v19, 0x2Au);
  }

  objc_msgSend_makeStateTransition_(self, v4, 0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  v7 = objc_msgSend_sourceZoneID(self, v5, v6);

  if (v7)
  {
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_msgSend_sourceZoneID(self, v8, v9);
    v13 = objc_msgSend_setWithObject_(v10, v12, v11);

    if (objc_msgSend_count(v13, v14, v15))
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_225222FE8;
      v18[3] = &unk_2785487F8;
      v19 = v13;
      objc_msgSend_updateCloudKitMetrics_(self, v16, v18);
    }
  }

  objc_msgSend_setMoveCompletionBlock_(self, v8, 0);
  v17.receiver = self;
  v17.super_class = CKDMovePhotosOperation;
  [(CKDModifyRecordsOperation *)&v17 _finishOnCallbackQueueWithError:errorCopy];
}

@end