@interface CKDUpdateDeviceCapabilitiesURLRequest
- (CKDUpdateDeviceCapabilitiesURLRequest)initWithOperation:(id)operation supportedCapabilities:(id)capabilities zoneUsages:(id)usages shareUsages:(id)shareUsages;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDUpdateDeviceCapabilitiesURLRequest

- (CKDUpdateDeviceCapabilitiesURLRequest)initWithOperation:(id)operation supportedCapabilities:(id)capabilities zoneUsages:(id)usages shareUsages:(id)shareUsages
{
  capabilitiesCopy = capabilities;
  usagesCopy = usages;
  shareUsagesCopy = shareUsages;
  v17.receiver = self;
  v17.super_class = CKDUpdateDeviceCapabilitiesURLRequest;
  v14 = [(CKDURLRequest *)&v17 initWithOperation:operation];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_supportedCapabilities, capabilities);
    objc_storeStrong(&v15->_zoneUsages, usages);
    objc_storeStrong(&v15->_shareUsages, shareUsages);
  }

  return v15;
}

- (id)requestOperationClasses
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_zoneUsages(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (v9)
  {
    v12 = objc_opt_class();
    objc_msgSend_addObject_(v3, v13, v12);
  }

  v14 = objc_msgSend_shareUsages(self, v10, v11);
  v17 = objc_msgSend_count(v14, v15, v16);

  if (v17)
  {
    v20 = objc_opt_class();
    objc_msgSend_addObject_(v3, v21, v20);
  }

  v22 = objc_msgSend_supportedCapabilities(self, v18, v19);
  if (v22)
  {

LABEL_7:
    v25 = objc_opt_class();
    objc_msgSend_addObject_(v3, v26, v25);
    goto LABEL_9;
  }

  if (!objc_msgSend_count(v3, v23, v24))
  {
    goto LABEL_7;
  }

LABEL_9:

  return v3;
}

- (id)generateRequestOperations
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v6 = objc_msgSend_supportedCapabilities(self, v4, v5);

  if (!v6)
  {
    goto LABEL_16;
  }

  v68 = objc_opt_new();
  v11 = objc_msgSend_translator(self, v9, v10);
  v14 = objc_msgSend_supportedCapabilities(self, v12, v13);
  v17 = objc_msgSend_container(self, v15, v16);
  v20 = objc_msgSend_deviceID(v17, v18, v19);
  v22 = objc_msgSend_pDeviceCapabilitiesFromDeviceCapabilitySet_withDeviceID_(v11, v21, v14, v20);

  v25 = objc_msgSend_data(v22, v23, v24);
  v28 = objc_msgSend_container(self, v26, v27);
  v31 = objc_msgSend_pcsManager(v28, v29, v30);
  v75 = 0;
  v33 = objc_msgSend_createCloudKitFeaturesSignatureForData_forScope_error_(v31, v32, v25, 1, &v75);
  v34 = v75;

  v35 = v34 || v33 == 0;
  v36 = !v35;
  v67 = v36;
  if (v35)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v53 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v34;
      _os_log_error_impl(&dword_22506F000, v53, OS_LOG_TYPE_ERROR, "Failed to generate signature for supported device capabilities. Error: %{public}@", &buf, 0xCu);
    }

    v37 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v54, *MEMORY[0x277CBC120], 5023, v34, @"Failed to create cryptographic signature when saving device capabilities.");
    objc_msgSend_finishWithError_(self, v55, v37);
  }

  else
  {
    v37 = objc_opt_new();
    objc_msgSend_setVersion_(v37, v38, 1);
    objc_msgSend_setSerializedObject_(v37, v39, v25);
    objc_msgSend_setSignature_(v37, v40, v33);
    objc_msgSend_setSignedSupportedAdopterCapabilities_(v68, v41, v37);
    v43 = objc_msgSend_operationRequestWithType_(self, v42, 407);
    objc_msgSend_setAdopterCapabilitiesSaveRequest_(v43, v44, v68);
    objc_msgSend_addObject_(v3, v45, v43);
    v48 = objc_msgSend_request(v43, v46, v47);
    v51 = objc_msgSend_operationUUID(v48, v49, v50);
    objc_msgSend_setDeviceCapabilitiesSaveRequestID_(self, v52, v51);
  }

  if (!v67)
  {
    v61 = 0;
  }

  else
  {
LABEL_16:
    *&buf = 0;
    *(&buf + 1) = &buf;
    v77 = 0x2020000000;
    v78 = 0;
    v56 = objc_msgSend_zoneUsages(self, v7, v8);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_2253E331C;
    v72[3] = &unk_27854D688;
    v72[4] = self;
    p_buf = &buf;
    v57 = v3;
    v73 = v57;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v56, v58, v72);

    if (*(*(&buf + 1) + 24))
    {
      v61 = 0;
    }

    else
    {
      v62 = objc_msgSend_shareUsages(self, v59, v60);
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = sub_2253E3660;
      v69[3] = &unk_27854D6B0;
      v69[4] = self;
      v71 = &buf;
      v63 = v57;
      v70 = v63;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v62, v64, v69);

      if (*(*(&buf + 1) + 24))
      {
        v61 = 0;
      }

      else
      {
        v61 = v63;
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  v65 = *MEMORY[0x277D85DE8];

  return v61;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v91 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_msgSend_response(objectCopy, v5, v6);
  v10 = objc_msgSend_operationUUID(v7, v8, v9);

  v13 = objc_msgSend_response(objectCopy, v11, v12);
  v16 = objc_msgSend_type(v13, v14, v15);

  if (v16 != 407)
  {
    v31 = objc_msgSend_response(objectCopy, v17, v18);
    v34 = objc_msgSend_type(v31, v32, v33);

    if (v34 == 409)
    {
      v37 = objc_msgSend_zoneIDByRequestID(self, v35, v36);
      v39 = objc_msgSend_objectForKeyedSubscript_(v37, v38, v10);

      v42 = objc_msgSend_zoneUsages(self, v40, v41);
      v44 = objc_msgSend_objectForKeyedSubscript_(v42, v43, v39);

      if (v39 && v44)
      {
        v47 = objc_msgSend_zoneUsageUpdatedBlock(self, v45, v46);

        if (v47)
        {
          v50 = objc_msgSend_zoneUsageUpdatedBlock(self, v48, v49);
LABEL_20:
          v73 = v50;
          v74 = objc_msgSend_result(objectCopy, v51, v52);
          (v73)[2](v73, v39, v44, v74);

          goto LABEL_21;
        }

        goto LABEL_21;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v75 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v86 = v10;
        v87 = 2112;
        v88 = v39;
        v89 = 2112;
        v90 = v44;
        v77 = "Unexpected zone usage save response for operationUUID %@, zoneID: %@, date: %@";
LABEL_40:
        _os_log_error_impl(&dword_22506F000, v75, OS_LOG_TYPE_ERROR, v77, buf, 0x20u);
      }
    }

    else
    {
      v56 = objc_msgSend_response(objectCopy, v35, v36);
      v59 = objc_msgSend_type(v56, v57, v58);

      if (v59 != 410)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v78 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v86 = v10;
          v87 = 2112;
          v88 = objectCopy;
          _os_log_error_impl(&dword_22506F000, v78, OS_LOG_TYPE_ERROR, "Unexpected response type for operationUUID %@: %@", buf, 0x16u);
        }

        goto LABEL_30;
      }

      v62 = objc_msgSend_shareIDByRequestID(self, v60, v61);
      v39 = objc_msgSend_objectForKeyedSubscript_(v62, v63, v10);

      v66 = objc_msgSend_shareUsages(self, v64, v65);
      v44 = objc_msgSend_objectForKeyedSubscript_(v66, v67, v39);

      if (v39 && v44)
      {
        v70 = objc_msgSend_shareUsageUpdatedBlock(self, v68, v69);

        if (v70)
        {
          v50 = objc_msgSend_shareUsageUpdatedBlock(self, v71, v72);
          goto LABEL_20;
        }

LABEL_21:
        v55 = 0;
LABEL_35:

        goto LABEL_36;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v75 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v86 = v10;
        v87 = 2112;
        v88 = v39;
        v89 = 2112;
        v90 = v44;
        v77 = "Unexpected share usage save response for operationUUID %@, shareID: %@, date: %@";
        goto LABEL_40;
      }
    }

    v55 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v76, *MEMORY[0x277CBBF50], 1, @"Unrecognized operation UUID in server response: %@", v10);
    goto LABEL_35;
  }

  v19 = objc_msgSend_deviceCapabilitiesSaveRequestID(self, v17, v18);
  isEqual = objc_msgSend_isEqual_(v10, v20, v19);

  if (isEqual)
  {
    v24 = objc_msgSend_deviceCapabilitiesUpdatedBlock(self, v22, v23);

    if (v24)
    {
      v27 = objc_msgSend_deviceCapabilitiesUpdatedBlock(self, v25, v26);
      v30 = objc_msgSend_result(objectCopy, v28, v29);
      (v27)[2](v27, v30);
    }

LABEL_30:
    v55 = 0;
    goto LABEL_36;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v53 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v81 = v53;
    v84 = objc_msgSend_deviceCapabilitiesSaveRequestID(self, v82, v83);
    *buf = 138412546;
    v86 = v10;
    v87 = 2112;
    v88 = v84;
    _os_log_error_impl(&dword_22506F000, v81, OS_LOG_TYPE_ERROR, "Unexpected device capabilities save response operationUUID: %@, expeccted: %@", buf, 0x16u);
  }

  v55 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v54, *MEMORY[0x277CBBF50], 1, @"Unrecognized operation UUID in server response: %@", v10);
LABEL_36:

  v79 = *MEMORY[0x277D85DE8];

  return v55;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v63 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v7 = objc_msgSend_response(failureCopy, v5, v6);
  v10 = objc_msgSend_operationUUID(v7, v8, v9);

  v13 = objc_msgSend_deviceCapabilitiesSaveRequestID(self, v11, v12);
  isEqual = objc_msgSend_isEqual_(v10, v14, v13);

  if (!isEqual)
  {
    v25 = objc_msgSend_zoneIDByRequestID(self, v16, v17);
    v21 = objc_msgSend_objectForKeyedSubscript_(v25, v26, v10);

    if (v21)
    {
      v29 = objc_msgSend_zoneUsages(self, v27, v28);
      v31 = objc_msgSend_objectForKeyedSubscript_(v29, v30, v21);

      v34 = objc_msgSend_zoneUsageUpdatedBlock(self, v32, v33);

      if (v34)
      {
        v37 = objc_msgSend_zoneUsageUpdatedBlock(self, v35, v36);
        v40 = objc_msgSend_result(failureCopy, v38, v39);
        (v37)[2](v37, v21, v31, v40);
      }
    }

    else
    {
      v41 = objc_msgSend_shareIDByRequestID(self, v27, v28);
      v31 = objc_msgSend_objectForKeyedSubscript_(v41, v42, v10);

      if (v31)
      {
        v45 = objc_msgSend_shareUsages(self, v43, v44);
        v47 = objc_msgSend_objectForKeyedSubscript_(v45, v46, v31);

        v50 = objc_msgSend_shareUsageUpdatedBlock(self, v48, v49);

        if (v50)
        {
          v53 = objc_msgSend_shareUsageUpdatedBlock(self, v51, v52);
          v56 = objc_msgSend_result(failureCopy, v54, v55);
          (v53)[2](v53, v31, v47, v56);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v57 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v59 = 138412546;
          v60 = v10;
          v61 = 2112;
          v62 = failureCopy;
          _os_log_error_impl(&dword_22506F000, v57, OS_LOG_TYPE_ERROR, "Unexpected response for operationUUID %@: %@", &v59, 0x16u);
        }
      }
    }

    goto LABEL_16;
  }

  v18 = objc_msgSend_deviceCapabilitiesUpdatedBlock(self, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_deviceCapabilitiesUpdatedBlock(self, v19, v20);
    v24 = objc_msgSend_result(failureCopy, v22, v23);
    (v21)[2](v21, v24);

LABEL_16:
  }

  v58 = *MEMORY[0x277D85DE8];
}

@end