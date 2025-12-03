@interface CKDAcceptSharesURLRequest
- (BOOL)requiresCKAnonymousUserIDs;
- (CKDAcceptSharesURLRequest)initWithOperation:(id)operation shareMetadatasToAccept:(id)accept;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (id)returnVerificationKeyAndSignatureForRequestOperation:(id)operation dataToBeSigned:(id)signed error:(id *)error;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDAcceptSharesURLRequest

- (CKDAcceptSharesURLRequest)initWithOperation:(id)operation shareMetadatasToAccept:(id)accept
{
  acceptCopy = accept;
  v13.receiver = self;
  v13.super_class = CKDAcceptSharesURLRequest;
  v8 = [(CKDURLRequest *)&v13 initWithOperation:operation];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_shareMetadatasToAccept, accept);
    v10 = objc_opt_new();
    shareMetadataByRequestID = v9->_shareMetadataByRequestID;
    v9->_shareMetadataByRequestID = v10;
  }

  return v9;
}

- (id)zoneIDsToLock
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = objc_msgSend_shareMetadatasToAccept(self, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v24, v28, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_shareRecordID(*(*(&v24 + 1) + 8 * i), v9, v10);
        v17 = objc_msgSend_zoneID(v14, v15, v16);

        if (v17)
        {
          objc_msgSend_addObject_(v3, v18, v17);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v24, v28, 16);
    }

    while (v11);
  }

  v21 = objc_msgSend_allObjects(v3, v19, v20);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v17.receiver = self;
  v17.super_class = CKDAcceptSharesURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v17 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v7 = objc_msgSend_shareMetadatasToAccept(self, v5, v6, v17.receiver, v17.super_class);
  v9 = objc_msgSend_CKMap_(v7, v8, &unk_28385E5E0);

  v10 = MEMORY[0x277CBEB98];
  v13 = objc_msgSend_ckEquivalencyProperties(v9, v11, v12);
  v15 = objc_msgSend_setWithArray_(v10, v14, v13);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v16, v15, @"shareMetadatas");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_shareMetadatasToAccept(self, v5, v6);
  v9 = objc_msgSend_CKMap_(v7, v8, &unk_28385E600);

  objc_msgSend_setModifyRecordIDs_(propertiesCopy, v10, v9);
  v11.receiver = self;
  v11.super_class = CKDAcceptSharesURLRequest;
  [(CKDURLRequest *)&v11 fillOutRequestProperties:propertiesCopy];
}

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)requiresCKAnonymousUserIDs
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_options(v6, v7, v8);
  v12 = objc_msgSend_useAnonymousToServerShareParticipants(v9, v10, v11);

  return v12;
}

- (id)generateRequestOperations
{
  v144 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  obj = objc_msgSend_shareMetadatasToAccept(self, v4, v5);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v139, v143, 16);
  if (v7)
  {
    v10 = v7;
    v138 = *v140;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v140 != v138)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v139 + 1) + 8 * i);
        v13 = objc_msgSend_operationType(self, v8, v9);
        v15 = objc_msgSend_operationRequestWithType_(self, v14, v13);
        if (objc_msgSend_requiresCKAnonymousUserIDs(self, v16, v17))
        {
          v20 = objc_msgSend_anonymousCKUserID(v12, v18, v19);

          if (!v20)
          {
            v115 = objc_opt_new();
            v116 = MEMORY[0x277CCACA8];
            v119 = objc_msgSend_shareRecordID(v12, v117, v118);
            v121 = objc_msgSend_stringWithFormat_(v116, v120, @"An anonymousCKUserID is required to accept share %@ when using anonymous to server share participants", v119);

            objc_msgSend_setObject_forKeyedSubscript_(v115, v122, v121, *MEMORY[0x277CCA450]);
            v125 = objc_msgSend_operation(self, v123, v124);
            v128 = objc_msgSend_topmostParentOperation(v125, v126, v127);

            v132 = objc_msgSend_operationID(v128, v129, v130);
            if (v132)
            {
              objc_msgSend_setObject_forKeyedSubscript_(v115, v131, v132, *MEMORY[0x277CBBF60]);
            }

            v133 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v131, *MEMORY[0x277CBC120], 5015, v115);
            objc_msgSend_finishWithError_(self, v134, v133);

            v114 = 0;
            goto LABEL_23;
          }

          v23 = objc_msgSend_anonymousCKUserID(v12, v21, v22);
          v26 = objc_msgSend_CKDPIdentifier_User(v23, v24, v25);
          v29 = objc_msgSend_request(v15, v27, v28);
          objc_msgSend_setAnonymousCKUserID_(v29, v30, v26);
        }

        v31 = v3;
        v32 = objc_opt_new();
        objc_msgSend_setShareAcceptRequest_(v15, v33, v32);
        v36 = objc_msgSend_translator(self, v34, v35);
        v39 = objc_msgSend_shareRecordID(v12, v37, v38);
        v41 = objc_msgSend_pShareIdentifierFromRecordID_(v36, v40, v39);
        objc_msgSend_setShareId_(v32, v42, v41);

        v45 = objc_msgSend_etag(v12, v43, v44);
        objc_msgSend_setEtag_(v32, v46, v45);

        v49 = objc_msgSend_acceptedInProcess(v12, v47, v48);
        objc_msgSend_setAcceptedInProcess_(v32, v50, v49);
        v53 = objc_msgSend_publicPCSData(v12, v51, v52);

        if (v53)
        {
          v56 = objc_opt_new();
          objc_msgSend_setSelfAddedPcs_(v32, v57, v56);

          v60 = objc_msgSend_publicPCSData(v12, v58, v59);
          v63 = objc_msgSend_selfAddedPcs(v32, v61, v62);
          objc_msgSend_setProtectionInfo_(v63, v64, v60);

          v67 = objc_msgSend_publicPCSEtag(v12, v65, v66);
          v70 = objc_msgSend_selfAddedPcs(v32, v68, v69);
          objc_msgSend_setProtectionInfoTag_(v70, v71, v67);
        }

        v72 = objc_msgSend_publicKey(v12, v54, v55);

        if (v72)
        {
          v75 = objc_opt_new();
          objc_msgSend_setPublicKey_(v32, v76, v75);

          v79 = objc_msgSend_publicKey(v12, v77, v78);
          v82 = objc_msgSend_publicKey(v32, v80, v81);
          objc_msgSend_setProtectionInfo_(v82, v83, v79);

          v86 = objc_msgSend_publicKeyVersion(v12, v84, v85);
          objc_msgSend_setPublicKeyVersion_(v32, v87, v86);
        }

        v88 = objc_msgSend_pppcsProtectionInfo(v12, v73, v74);

        if (v88)
        {
          v91 = objc_opt_new();
          objc_msgSend_setProtectionInfo_(v32, v92, v91);

          v95 = objc_msgSend_pppcsProtectionInfo(v12, v93, v94);
          v98 = objc_msgSend_protectionInfo(v32, v96, v97);
          objc_msgSend_setProtectionInfo_(v98, v99, v95);
        }

        v100 = objc_msgSend_participantID(v12, v89, v90);

        if (v100)
        {
          v103 = objc_msgSend_participantID(v12, v101, v102);
          objc_msgSend_setParticipantId_(v32, v104, v103);
        }

        v105 = objc_msgSend_shareMetadataByRequestID(self, v101, v102);
        v108 = objc_msgSend_request(v15, v106, v107);
        v111 = objc_msgSend_operationUUID(v108, v109, v110);
        objc_msgSend_setObject_forKeyedSubscript_(v105, v112, v12, v111);

        v3 = v31;
        objc_msgSend_addObject_(v31, v113, v15);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v139, v143, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v114 = v3;
LABEL_23:

  v135 = *MEMORY[0x277D85DE8];

  return v114;
}

- (id)returnVerificationKeyAndSignatureForRequestOperation:(id)operation dataToBeSigned:(id)signed error:(id *)error
{
  v66 = *MEMORY[0x277D85DE8];
  signedCopy = signed;
  operationCopy = operation;
  if ((objc_msgSend_requiresCKAnonymousUserIDs(self, v11, v12) & 1) == 0)
  {
    v54 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v54, v55, a2, self, @"CKDAcceptSharesURLRequest.m", 142, @"Signature is only required for anonymous to server requests");
  }

  v15 = objc_msgSend_shareMetadataByRequestID(self, v13, v14);
  v18 = objc_msgSend_request(operationCopy, v16, v17);

  v21 = objc_msgSend_operationUUID(v18, v19, v20);
  v23 = objc_msgSend_objectForKeyedSubscript_(v15, v22, v21);

  if (!objc_msgSend_signingPCSIdentity(v23, v24, v25))
  {
    v56 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v26, v27);
    v59 = objc_msgSend_shareRecordID(v23, v57, v58);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v56, v60, a2, self, @"CKDAcceptSharesURLRequest.m", 146, @"A signing identity is required to accept share %@ when using anonymous to server share participants.", v59);
  }

  v28 = objc_msgSend_container(self, v26, v27);
  v31 = objc_msgSend_pcsManager(v28, v29, v30);
  v34 = objc_msgSend_signingPCSIdentity(v23, v32, v33);
  v61 = 0;
  v36 = objc_msgSend_createSignatureWithIdentity_dataToBeSigned_forScope_error_(v31, v35, v34, signedCopy, 5, &v61);

  v37 = v61;
  if (objc_msgSend_length(v36, v38, v39) && !v37)
  {
    v40 = objc_alloc(MEMORY[0x277CBC7A0]);
    objc_msgSend_signingPCSIdentity(v23, v41, v42);
    v43 = PCSIdentityCopyExportedPublicKey();
    v45 = objc_msgSend_initWithObject1_object2_(v40, v44, v43, v36);

    if (!error)
    {
      goto LABEL_15;
    }

LABEL_14:
    v47 = v37;
    *error = v37;
    goto LABEL_15;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v46 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v50 = v46;
    v53 = objc_msgSend_signingPCSIdentity(v23, v51, v52);
    *buf = 138543618;
    v63 = v53;
    v64 = 2112;
    v65 = v37;
    _os_log_error_impl(&dword_22506F000, v50, OS_LOG_TYPE_ERROR, "Couldn't generate a request signature with signing identity %{public}@ because we got an error from PCS: %@", buf, 0x16u);
  }

  v45 = 0;
  if (error)
  {
    goto LABEL_14;
  }

LABEL_15:

  v48 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v115 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_msgSend_shareMetadataByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(objectCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  if (!objc_msgSend_hasShareAcceptResponse(objectCopy, v16, v17))
  {
    v23 = 0;
    goto LABEL_11;
  }

  v20 = objc_msgSend_shareAcceptResponse(objectCopy, v18, v19);
  v23 = objc_msgSend_share(v20, v21, v22);

  if (!v23)
  {
LABEL_11:
    v29 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  v24 = objc_msgSend_translator(self, v18, v19);
  v27 = objc_msgSend_anonymousCKUserID(v15, v25, v26);
  v112 = 0;
  v29 = objc_msgSend_shareFromPShare_asAnonymousCKUserID_error_(v24, v28, v23, v27, &v112);
  v30 = v112;

  if (!v29 && v30)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v31 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v114 = v30;
      _os_log_error_impl(&dword_22506F000, v31, OS_LOG_TYPE_ERROR, "Failed to convert share: %@", buf, 0xCu);
    }

    v34 = objc_msgSend_result(objectCopy, v32, v33);
    objc_msgSend_setCode_(v34, v35, 3);

    v36 = objc_opt_new();
    v39 = objc_msgSend_result(objectCopy, v37, v38);
    objc_msgSend_setError_(v39, v40, v36);

    v41 = objc_opt_new();
    v44 = objc_msgSend_result(objectCopy, v42, v43);
    v47 = objc_msgSend_error(v44, v45, v46);
    objc_msgSend_setClientError_(v47, v48, v41);

    v51 = objc_msgSend_result(objectCopy, v49, v50);
    v54 = objc_msgSend_error(v51, v52, v53);
    v57 = objc_msgSend_clientError(v54, v55, v56);
    objc_msgSend_setType_(v57, v58, 7);

    v61 = objc_msgSend_result(objectCopy, v59, v60);
    v64 = objc_msgSend_error(v61, v62, v63);
    objc_msgSend_setErrorKey_(v64, v65, @"Invalid share");

    v66 = MEMORY[0x277CCACA8];
    v69 = objc_msgSend_localizedDescription(v30, v67, v68);
    v71 = objc_msgSend_stringWithFormat_(v66, v70, @"The share could not be converted because it is invalid: %@", v69);
    v74 = objc_msgSend_result(objectCopy, v72, v73);
    v77 = objc_msgSend_error(v74, v75, v76);
    objc_msgSend_setErrorDescription_(v77, v78, v71);
    v29 = 0;
    goto LABEL_15;
  }

  if (v29)
  {
    v79 = objc_msgSend_container(self, v18, v19);
    v82 = objc_msgSend_allowsDeviceCapabilitiesReporting(v79, v80, v81);

    if (v82)
    {
      v83 = objc_msgSend_container(self, v18, v19);
      v69 = objc_msgSend_cacheForContainer_(CKDShareIDCache, v84, v83);

      objc_msgSend_addShare_(v69, v85, v29);
      v71 = objc_msgSend_now(MEMORY[0x277CBEAA8], v86, v87);
      v74 = objc_msgSend_sharedManager(CKDDeviceCapabilityManager, v88, v89);
      v77 = objc_msgSend_recordID(v29, v90, v91);
      v111 = objc_msgSend_container(self, v92, v93);
      v110 = objc_msgSend_operation(self, v94, v95);
      objc_msgSend_noteShareUsageForShareID_at_container_operation_(v74, v96, v77, v71, v111, v110);

LABEL_15:
    }
  }

LABEL_16:
  v97 = objc_msgSend_shareAcceptedBlock(self, v18, v19);

  if (v97)
  {
    v100 = objc_msgSend_shareAcceptedBlock(self, v98, v99);
    v103 = objc_msgSend_shareURL(v15, v101, v102);
    v106 = objc_msgSend_result(objectCopy, v104, v105);
    (v100)[2](v100, v103, v29, v106);
  }

  v107 = v30;

  v108 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  failureCopy = failure;
  v6 = objc_msgSend_shareMetadataByRequestID(self, v4, v5);
  v9 = objc_msgSend_response(failureCopy, v7, v8);
  v12 = objc_msgSend_operationUUID(v9, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v6, v13, v12);

  v17 = objc_msgSend_shareAcceptedBlock(self, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_shareAcceptedBlock(self, v18, v19);
    v23 = objc_msgSend_shareURL(v14, v21, v22);
    v26 = objc_msgSend_result(failureCopy, v24, v25);
    (v20)[2](v20, v23, 0, v26);
  }
}

@end