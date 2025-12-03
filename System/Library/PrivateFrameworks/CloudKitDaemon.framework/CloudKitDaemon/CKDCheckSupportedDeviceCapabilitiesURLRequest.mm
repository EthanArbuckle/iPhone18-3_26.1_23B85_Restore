@interface CKDCheckSupportedDeviceCapabilitiesURLRequest
- (CKDCheckSupportedDeviceCapabilitiesURLRequest)initWithOperation:(id)operation continuations:(id)continuations zoneIDs:(id)ds desiredCapabilitySets:(id)sets options:(id)options;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)reportClientValidationError:(id)error forZoneID:(id)d capabilitySet:(id)set failureType:(id)type;
- (void)reportContinuationToken:(id)token forZoneID:(id)d capabilitySet:(id)set;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDCheckSupportedDeviceCapabilitiesURLRequest

- (CKDCheckSupportedDeviceCapabilitiesURLRequest)initWithOperation:(id)operation continuations:(id)continuations zoneIDs:(id)ds desiredCapabilitySets:(id)sets options:(id)options
{
  continuationsCopy = continuations;
  dsCopy = ds;
  setsCopy = sets;
  optionsCopy = options;
  v24.receiver = self;
  v24.super_class = CKDCheckSupportedDeviceCapabilitiesURLRequest;
  v17 = [(CKDURLRequest *)&v24 initWithOperation:operation];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_continuations, continuations);
    objc_storeStrong(&v18->_zoneIDs, ds);
    objc_storeStrong(&v18->_desiredCapabilitySets, sets);
    v19 = objc_opt_new();
    zoneIDByRequestID = v18->_zoneIDByRequestID;
    v18->_zoneIDByRequestID = v19;

    v21 = objc_opt_new();
    capabililitySetsByRequestID = v18->_capabililitySetsByRequestID;
    v18->_capabililitySetsByRequestID = v21;

    objc_storeStrong(&v18->_options, options);
  }

  return v18;
}

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)generateRequestOperations
{
  v249 = *MEMORY[0x277D85DE8];
  v227 = objc_opt_new();
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  obj = objc_msgSend_continuations(self, v3, v4);
  v228 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v238, v248, 16);
  if (v228)
  {
    v225 = *v239;
    do
    {
      v6 = 0;
      do
      {
        if (*v239 != v225)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v238 + 1) + 8 * v6);
        v8 = objc_opt_new();
        v11 = objc_msgSend_continuationToken(v7, v9, v10);
        objc_msgSend_setContinuation_(v8, v12, v11);

        v15 = objc_msgSend_translator(self, v13, v14);
        v18 = objc_msgSend_zoneID(v7, v16, v17);
        v20 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(v15, v19, v18);
        objc_msgSend_setZoneIdentifier_(v8, v21, v20);

        v24 = objc_msgSend_translator(self, v22, v23);
        v27 = objc_msgSend_capabilitySet(v7, v25, v26);
        v30 = objc_msgSend_container(self, v28, v29);
        v33 = objc_msgSend_deviceID(v30, v31, v32);
        v35 = objc_msgSend_pDeviceCapabilitiesFromDeviceCapabilitySet_withDeviceID_(v24, v34, v27, v33);

        v38 = objc_msgSend_zoneLevelCapabilities(v35, v36, v37);
        objc_msgSend_setZoneLevelCapabilities_(v8, v39, v38);

        v42 = objc_msgSend_recordLevelCapabilities(v35, v40, v41);
        objc_msgSend_setRecordLevelCapabilities_(v8, v43, v42);

        v44 = v35;
        v47 = objc_msgSend_fieldLevelCapabilities(v35, v45, v46);
        objc_msgSend_setFieldLevelCapabilities_(v8, v48, v47);

        v51 = objc_msgSend_options(self, v49, v50);
        LODWORD(v33) = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v51, v52, v53);

        if (v33)
        {
          v56 = objc_msgSend_options(self, v54, v55);
          v59 = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v56, v57, v58);
          objc_msgSend_setExcludeDevicesWithoutCapabilityCheckingSupport_(v8, v60, v59);
        }

        v61 = objc_msgSend_options(self, v54, v55);
        v64 = objc_msgSend_excludeZoneAccessBefore(v61, v62, v63);

        if (v64)
        {
          v67 = objc_msgSend_translator(self, v65, v66);
          v70 = objc_msgSend_options(self, v68, v69);
          v73 = objc_msgSend_excludeZoneAccessBefore(v70, v71, v72);
          v75 = objc_msgSend_pDateFromDate_(v67, v74, v73);
          objc_msgSend_setExcludeZoneAccessBefore_(v8, v76, v75);
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v77 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
        {
          v112 = v77;
          v115 = objc_msgSend_requestUUID(self, v113, v114);
          *buf = 138543618;
          v245 = v115;
          v246 = 2112;
          v247 = v8;
          _os_log_debug_impl(&dword_22506F000, v112, OS_LOG_TYPE_DEBUG, "req: %{public}@, Sending continuation device capabilities check: %@", buf, 0x16u);
        }

        v80 = objc_msgSend_operationType(self, v78, v79);
        v82 = objc_msgSend_operationRequestWithType_(self, v81, v80);
        objc_msgSend_setAdopterCapabilitiesCheckRequest_(v82, v83, v8);
        v86 = objc_msgSend_zoneID(v7, v84, v85);
        v89 = objc_msgSend_zoneIDByRequestID(self, v87, v88);
        v92 = objc_msgSend_request(v82, v90, v91);
        v95 = objc_msgSend_operationUUID(v92, v93, v94);
        objc_msgSend_setObject_forKeyedSubscript_(v89, v96, v86, v95);

        v99 = objc_msgSend_capabilitySet(v7, v97, v98);
        v102 = objc_msgSend_capabililitySetsByRequestID(self, v100, v101);
        v105 = objc_msgSend_request(v82, v103, v104);
        v108 = objc_msgSend_operationUUID(v105, v106, v107);
        objc_msgSend_setObject_forKeyedSubscript_(v102, v109, v99, v108);

        objc_msgSend_addObject_(v227, v110, v82);
        ++v6;
      }

      while (v228 != v6);
      v228 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v111, &v238, v248, 16);
    }

    while (v228);
  }

  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v219 = objc_msgSend_zoneIDs(self, v116, v117);
  v221 = objc_msgSend_countByEnumeratingWithState_objects_count_(v219, v118, &v234, v243, 16);
  if (v221)
  {
    v220 = *v235;
    do
    {
      v121 = 0;
      do
      {
        if (*v235 != v220)
        {
          objc_enumerationMutation(v219);
        }

        v222 = v121;
        v122 = *(*(&v234 + 1) + 8 * v121);
        v230 = 0u;
        v231 = 0u;
        v232 = 0u;
        v233 = 0u;
        obja = objc_msgSend_desiredCapabilitySets(self, v119, v120);
        v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v123, &v230, v242, 16);
        if (v229)
        {
          v226 = *v231;
          do
          {
            v124 = 0;
            do
            {
              if (*v231 != v226)
              {
                objc_enumerationMutation(obja);
              }

              v125 = *(*(&v230 + 1) + 8 * v124);
              v126 = objc_opt_new();
              v129 = objc_msgSend_translator(self, v127, v128);
              v131 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(v129, v130, v122);
              objc_msgSend_setZoneIdentifier_(v126, v132, v131);

              v135 = objc_msgSend_translator(self, v133, v134);
              v138 = objc_msgSend_container(self, v136, v137);
              v141 = objc_msgSend_deviceID(v138, v139, v140);
              v143 = objc_msgSend_pDeviceCapabilitiesFromDeviceCapabilitySet_withDeviceID_(v135, v142, v125, v141);

              v146 = objc_msgSend_zoneLevelCapabilities(v143, v144, v145);
              objc_msgSend_setZoneLevelCapabilities_(v126, v147, v146);

              v150 = objc_msgSend_recordLevelCapabilities(v143, v148, v149);
              objc_msgSend_setRecordLevelCapabilities_(v126, v151, v150);

              v154 = objc_msgSend_fieldLevelCapabilities(v143, v152, v153);
              objc_msgSend_setFieldLevelCapabilities_(v126, v155, v154);

              v158 = objc_msgSend_options(self, v156, v157);
              LODWORD(v138) = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v158, v159, v160);

              if (v138)
              {
                v163 = objc_msgSend_options(self, v161, v162);
                v166 = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v163, v164, v165);
                objc_msgSend_setExcludeDevicesWithoutCapabilityCheckingSupport_(v126, v167, v166);
              }

              v168 = objc_msgSend_options(self, v161, v162);
              v171 = objc_msgSend_excludeZoneAccessBefore(v168, v169, v170);

              if (v171)
              {
                v174 = objc_msgSend_translator(self, v172, v173);
                v177 = objc_msgSend_options(self, v175, v176);
                v180 = objc_msgSend_excludeZoneAccessBefore(v177, v178, v179);
                v182 = objc_msgSend_pDateFromDate_(v174, v181, v180);
                objc_msgSend_setExcludeZoneAccessBefore_(v126, v183, v182);
              }

              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v184 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
              {
                v213 = v184;
                v216 = objc_msgSend_requestUUID(self, v214, v215);
                *buf = 138543618;
                v245 = v216;
                v246 = 2112;
                v247 = v126;
                _os_log_debug_impl(&dword_22506F000, v213, OS_LOG_TYPE_DEBUG, "req: %{public}@, Sending device capabilities check: %@", buf, 0x16u);
              }

              v187 = objc_msgSend_operationType(self, v185, v186);
              v189 = objc_msgSend_operationRequestWithType_(self, v188, v187);
              objc_msgSend_setAdopterCapabilitiesCheckRequest_(v189, v190, v126);
              v193 = objc_msgSend_zoneIDByRequestID(self, v191, v192);
              v196 = objc_msgSend_request(v189, v194, v195);
              v199 = objc_msgSend_operationUUID(v196, v197, v198);
              objc_msgSend_setObject_forKeyedSubscript_(v193, v200, v122, v199);

              v203 = objc_msgSend_capabililitySetsByRequestID(self, v201, v202);
              v206 = objc_msgSend_request(v189, v204, v205);
              v209 = objc_msgSend_operationUUID(v206, v207, v208);
              objc_msgSend_setObject_forKeyedSubscript_(v203, v210, v125, v209);

              objc_msgSend_addObject_(v227, v211, v189);
              ++v124;
            }

            while (v229 != v124);
            v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v212, &v230, v242, 16);
          }

          while (v229);
        }

        v121 = v222 + 1;
      }

      while (v222 + 1 != v221);
      v221 = objc_msgSend_countByEnumeratingWithState_objects_count_(v219, v119, &v234, v243, 16);
    }

    while (v221);
  }

  v217 = *MEMORY[0x277D85DE8];

  return v227;
}

- (void)reportClientValidationError:(id)error forZoneID:(id)d capabilitySet:(id)set failureType:(id)type
{
  errorCopy = error;
  dCopy = d;
  setCopy = set;
  typeCopy = type;
  v16 = objc_msgSend_errorFromClientValidationBlock(self, v14, v15);

  if (v16)
  {
    v19 = objc_msgSend_errorFromClientValidationBlock(self, v17, v18);
    (v19)[2](v19, errorCopy, dCopy, setCopy);
  }

  if (typeCopy)
  {
    v20 = objc_msgSend_operation(self, v17, v18);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2253DF7FC;
    v22[3] = &unk_2785487F8;
    v23 = typeCopy;
    objc_msgSend_updateCloudKitMetrics_(v20, v21, v22);
  }
}

- (void)reportContinuationToken:(id)token forZoneID:(id)d capabilitySet:(id)set
{
  v30 = *MEMORY[0x277D85DE8];
  setCopy = set;
  dCopy = d;
  tokenCopy = token;
  v11 = [CKDCheckSupportedDeviceCapabilitiesContinuationParams alloc];
  v13 = objc_msgSend_initWithContinuationToken_zoneID_capabilitySet_(v11, v12, tokenCopy, dCopy, setCopy);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
  {
    v17 = v14;
    v20 = objc_msgSend_requestUUID(self, v18, v19);
    v26 = 138543618;
    v27 = v20;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "req: %{public}@, Received continuation token from device capability check: %@", &v26, 0x16u);
  }

  v21 = objc_msgSend_continuationResponseBlock(self, v15, v16);

  if (v21)
  {
    v24 = objc_msgSend_continuationResponseBlock(self, v22, v23);
    (v24)[2](v24, v13);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)requestDidParseProtobufObject:(id)object
{
  v730 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_msgSend_zoneIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(objectCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_capabililitySetsByRequestID(self, v16, v17);
  v21 = objc_msgSend_response(objectCopy, v19, v20);
  v24 = objc_msgSend_operationUUID(v21, v22, v23);
  v26 = objc_msgSend_objectForKeyedSubscript_(v18, v25, v24);

  v27 = MEMORY[0x277CBC878];
  v28 = *MEMORY[0x277CBC878];
  v29 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v28);
  }

  v30 = MEMORY[0x277CBC860];
  v31 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v90 = objc_msgSend_requestUUID(self, v32, v33);
    *buf = 138543874;
    v717 = v90;
    v718 = 2112;
    v719 = objectCopy;
    v720 = 2112;
    v721 = v15;
    _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "req: %{public}@, Received device capabilities check response: %@ for zoneID: %@", buf, 0x20u);
  }

  v36 = objc_msgSend_result(objectCopy, v34, v35);
  hasError = objc_msgSend_hasError(v36, v37, v38);

  if (!hasError)
  {
    v48 = objc_opt_new();
    v708 = v48;
    if (!objc_msgSend_hasAdopterCapabilitiesCheckResponse(objectCopy, v49, v50))
    {
      v45 = 0;
      v704 = 0;
      v66 = 0;
LABEL_14:
      v67 = *v27;
      if (*v29 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v67);
      }

      v68 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v122 = objc_msgSend_requestUUID(self, v69, v70);
        v125 = objc_msgSend_result(objectCopy, v123, v124);
        *buf = 138543874;
        v717 = v122;
        v718 = 2112;
        v719 = v125;
        v720 = 2112;
        v721 = v15;
        _os_log_error_impl(&dword_22506F000, v68, OS_LOG_TYPE_ERROR, "req: %{public}@, Incomplete device capability check response from the server: %@, zoneID: %@", buf, 0x20u);
      }

      v71 = MEMORY[0x277CBC560];
      v72 = *MEMORY[0x277CBBF50];
      v75 = objc_msgSend_requestUUID(self, v73, v74);
      v64 = objc_msgSend_errorWithDomain_code_format_(v71, v76, v72, 161, @"Incomplete device capability check response for request %@", v75);

      objc_msgSend_reportClientValidationError_forZoneID_capabilitySet_failureType_(self, v77, v64, v15, v26, v66);
      goto LABEL_47;
    }

    v53 = objc_msgSend_adopterCapabilitiesCheckResponse(objectCopy, v51, v52);
    if (objc_msgSend_hasContinuation(v53, v54, v55))
    {
      v58 = objc_msgSend_continuation(v53, v56, v57);
      v61 = objc_msgSend_length(v58, v59, v60);

      if (v61)
      {
        v62 = objc_msgSend_continuation(v53, v56, v57);

        if (v62)
        {
          objc_msgSend_reportContinuationToken_forZoneID_capabilitySet_(self, v63, v62, v15, v26);

          v64 = 0;
          v65 = 0;
          v45 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v45 = 0;
        v704 = 0;
        v66 = 0;
LABEL_211:
        v29 = MEMORY[0x277CBC880];
        goto LABEL_14;
      }
    }

    v703 = v53;
    if (!objc_msgSend_hasIsSupported(v53, v56, v57))
    {
      goto LABEL_44;
    }

    if (objc_msgSend_isSupported(v53, v78, v79))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v27);
      }

      v82 = *v30;
      v83 = 1;
      if (os_log_type_enabled(*v30, OS_LOG_TYPE_INFO))
      {
        v84 = v82;
        v87 = objc_msgSend_requestUUID(self, v85, v86);
        *buf = 138543618;
        v717 = v87;
        v718 = 2112;
        v719 = v15;
        _os_log_impl(&dword_22506F000, v84, OS_LOG_TYPE_INFO, "req: %{public}@, Server returned isSupported:YES for the device capability check. zoneID: %@", buf, 0x16u);
      }

      v66 = 0;
      v64 = 0;
      v704 = 0;
      v88 = 0;
      v694 = 0;
      canValidateWithKT = 0;
      v45 = 0;
      LOBYTE(v89) = 1;
      goto LABEL_45;
    }

    if (!objc_msgSend_hasSignedSupportedAdopterCapabilities(v53, v80, v81) || (hasSignedZoneUsage = objc_msgSend_hasSignedZoneUsage(v53, v91, v92), v96 = v53, v97 = MEMORY[0x277CBC880], (hasSignedZoneUsage & 1) == 0) && !objc_msgSend_hasSignedShareUsage(v96, v94, v95))
    {
LABEL_44:
      v66 = 0;
      v64 = 0;
      v704 = 0;
      v88 = 0;
      v694 = 0;
      canValidateWithKT = 0;
      v45 = 0;
      v83 = 0;
      LOBYTE(v89) = 0;
      goto LABEL_45;
    }

    if (objc_msgSend_hasSignedZoneUsage(v96, v94, v95) && objc_msgSend_hasSignedShareUsage(v96, v98, v99))
    {
      v100 = *v27;
      if (*v97 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v100);
      }

      v101 = *v30;
      if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        v104 = objc_msgSend_requestUUID(self, v102, v103);
        *buf = 138543618;
        v717 = v104;
        v718 = 2112;
        v719 = v15;
        _os_log_impl(&dword_22506F000, v101, OS_LOG_TYPE_INFO, "req: %{public}@, Warn: Unexpected - server returned isSupported:NO with both zone and share usage! zoneID: %@", buf, 0x16u);
      }

      v96 = v703;
    }

    if (!objc_msgSend_hasSignedZoneUsage(v96, v98, v99))
    {
      v692 = 0;
      v689 = 0;
      v690 = 0;
      v66 = 0;
      v64 = 0;
      canValidateWithKT = 0;
      v45 = 0;
      v126 = @"share participant";
      goto LABEL_53;
    }

    v107 = objc_msgSend_signedZoneUsage(v96, v105, v106);
    v693 = v107;
    if (objc_msgSend_hasVersion(v107, v108, v109) && objc_msgSend_version(v107, v110, v111) >= 2)
    {
      if (*v97 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v27);
      }

      v112 = *v30;
      if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
      {
        v507 = v112;
        v510 = objc_msgSend_requestUUID(self, v508, v509);
        v513 = objc_msgSend_version(v693, v511, v512);
        *buf = 138543874;
        v717 = v510;
        v718 = 2048;
        v719 = v513;
        v720 = 2112;
        v721 = v15;
        _os_log_error_impl(&dword_22506F000, v507, OS_LOG_TYPE_ERROR, "req: %{public}@, Unsupported device capability check response from the server: Zone usage blob version %ld is not supported. zoneID: %@", buf, 0x20u);
      }

      v115 = MEMORY[0x277CBC560];
      v116 = *MEMORY[0x277CBBF50];
      v691 = objc_msgSend_requestUUID(self, v113, v114);
      v64 = objc_msgSend_errorWithDomain_code_format_(v115, v117, v116, 160, @"Unsupported zone usage version in device capability check response for request %@", v691);
      v692 = 0;
      v689 = 0;
      v690 = 0;
      v704 = 0;
      v88 = 0;
      v694 = 0;
      canValidateWithKT = 0;
      v45 = 0;
      LOBYTE(v89) = 0;
      v83 = 10;
      v66 = @"unsupportedSignedVersionedBlobVersion";
      goto LABEL_203;
    }

    if (objc_msgSend_hasSignature(v107, v110, v111) && (v142 = v107, objc_msgSend_signature(v107, v140, v141), v143 = objc_claimAutoreleasedReturnValue(), v146 = objc_msgSend_length(v143, v144, v145), v143, v146))
    {
      v147 = objc_msgSend_container(self, v140, v141);
      v150 = objc_msgSend_pcsManager(v147, v148, v149);
      v153 = objc_msgSend_signature(v142, v151, v152);
      v156 = objc_msgSend_serializedObject(v142, v154, v155);
      v715 = 0;
      v158 = objc_msgSend_validateFullPublicKeySignature_forSignedData_error_(v150, v157, v153, v156, &v715);
      v89 = v715;

      if (!v158 || v89)
      {
        v691 = v89;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v414 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
        {
          v545 = v414;
          v548 = objc_msgSend_requestUUID(self, v546, v547);
          *buf = 138543874;
          v717 = v548;
          v718 = 2112;
          v719 = v89;
          v720 = 2112;
          v721 = v15;
          _os_log_error_impl(&dword_22506F000, v545, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Zone usage signature validation failed: %@ zoneID: %@", buf, 0x20u);
        }

        v417 = MEMORY[0x277CBC560];
        v418 = *MEMORY[0x277CBBF50];
        v419 = objc_msgSend_requestUUID(self, v415, v416);
        v64 = objc_msgSend_errorWithDomain_code_error_format_(v417, v420, v418, 161, v89, @"Failed to validate zone usage signature in device capability check response for request %@", v419);

        v692 = 0;
        v689 = 0;
        v690 = 0;
        v704 = 0;
        v88 = 0;
        v694 = 0;
        canValidateWithKT = 0;
        v45 = 0;
        LOBYTE(v89) = 0;
        v83 = 10;
        v66 = @"invalidZoneUsageSignature";
        goto LABEL_203;
      }

      canValidateWithKT = objc_msgSend_canValidateWithKT(v693, v159, v160);
      v163 = objc_msgSend_container(self, v161, v162);
      v166 = objc_msgSend_pcsManager(v163, v164, v165);
      v169 = objc_msgSend_signature(v693, v167, v168);
      v714 = 0;
      v171 = objc_msgSend_publicKeyFromSignature_error_(v166, v170, v169, &v714);
      v172 = v714;

      v27 = MEMORY[0x277CBC878];
      v30 = MEMORY[0x277CBC860];
      if (v172)
      {
        v173 = *MEMORY[0x277CBC878];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v173);
        }

        v174 = *v30;
        if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
        {
          v571 = objc_msgSend_requestUUID(self, v175, v176);
          *buf = 138543618;
          v717 = v571;
          v718 = 2112;
          v719 = v172;
          _os_log_error_impl(&dword_22506F000, v174, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to extract public key from the signature: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v177 = objc_msgSend_options(self, v140, v141);
      v180 = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v177, v178, v179);

      if (v180)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *v27);
        }

        v181 = *v30;
        if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
        {
          v503 = v181;
          v506 = objc_msgSend_requestUUID(self, v504, v505);
          *buf = 138543362;
          v717 = v506;
          _os_log_error_impl(&dword_22506F000, v503, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server. Server returned isSupported:NO for a device without capability checking support, when devices without capability checking support should have been excluded.", buf, 0xCu);
        }

        v184 = MEMORY[0x277CBC560];
        v185 = *MEMORY[0x277CBBF50];
        v691 = objc_msgSend_requestUUID(self, v182, v183);
        v64 = objc_msgSend_errorWithDomain_code_format_(v184, v186, v185, 161, @"Device without capability checking support should have been excluded, but was returned by server in request: %@", v691);
        v692 = 0;
        v689 = 0;
        v690 = 0;
        v704 = 0;
        v88 = 0;
        v694 = 0;
        canValidateWithKT = 0;
        v45 = 0;
        LOBYTE(v89) = 0;
        v83 = 10;
        v66 = @"serverDetectedDeviceNotExcluded";
        goto LABEL_203;
      }

      v171 = 0;
      canValidateWithKT = 0;
    }

    v278 = [CKDPZoneUsage alloc];
    v281 = objc_msgSend_serializedObject(v693, v279, v280);
    v283 = objc_msgSend_initWithData_(v278, v282, v281);

    v691 = v283;
    v692 = v171;
    if (objc_msgSend_hasVersion(v283, v284, v285) && objc_msgSend_version(v283, v286, v287) >= 2)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v27);
      }

      v288 = *v30;
      if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
      {
        v549 = v288;
        v552 = objc_msgSend_requestUUID(self, v550, v551);
        v555 = objc_msgSend_version(v691, v553, v554);
        *buf = 138543874;
        v717 = v552;
        v718 = 2048;
        v719 = v555;
        v720 = 2112;
        v721 = v15;
        _os_log_error_impl(&dword_22506F000, v549, OS_LOG_TYPE_ERROR, "req: %{public}@, Unsupported device capability check response from the server: Zone usage version %ld is not supported. zoneID: %@", buf, 0x20u);
      }

      v291 = MEMORY[0x277CBC560];
      v292 = *MEMORY[0x277CBBF50];
      v293 = objc_msgSend_requestUUID(self, v289, v290);
      v64 = objc_msgSend_errorWithDomain_code_format_(v291, v294, v292, 160, @"Unsupported zone usage version in device capability check response for request %@", v293);
      v66 = @"unsupportedZoneUsageVersion";
LABEL_136:

      v689 = 0;
      v690 = 0;
      v704 = 0;
      v88 = 0;
      v694 = 0;
      v45 = 0;
      LOBYTE(v89) = 0;
      v83 = 10;
LABEL_203:

      goto LABEL_204;
    }

    v295 = MEMORY[0x277CBC880];
    if (!v283 || !objc_msgSend_hasZoneIdentifier(v283, v286, v287) || !objc_msgSend_hasUserIdentifier(v283, v296, v297) || !objc_msgSend_hasDeviceIdentifier(v283, v298, v299) || (objc_msgSend_hasTime(v283, v300, v301) & 1) == 0)
    {
      if (*v295 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v27);
      }

      v338 = *v30;
      if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
      {
        v499 = v338;
        v502 = objc_msgSend_requestUUID(self, v500, v501);
        *buf = 138543874;
        v717 = v502;
        v718 = 2112;
        v719 = v691;
        v720 = 2112;
        v721 = v15;
        _os_log_error_impl(&dword_22506F000, v499, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Invalid zone usage content: %@, zoneID: %@", buf, 0x20u);
      }

      v341 = MEMORY[0x277CBC560];
      v342 = *MEMORY[0x277CBBF50];
      v293 = objc_msgSend_requestUUID(self, v339, v340);
      v64 = objc_msgSend_errorWithDomain_code_format_(v341, v343, v342, 161, @"Invalid zone usage content in device capability check response for request %@", v293);
      v66 = @"incompleteZoneUsage";
      goto LABEL_136;
    }

    objc_msgSend_translator(self, v302, v303);
    v305 = v304 = v283;
    v308 = objc_msgSend_time(v304, v306, v307);
    v690 = objc_msgSend_dateFromPDate_(v305, v309, v308);

    v312 = objc_msgSend_deviceIdentifier(v304, v310, v311);
    v689 = objc_msgSend_name(v312, v313, v314);

    v317 = objc_msgSend_userIdentifier(v304, v315, v316);
    v45 = objc_msgSend_name(v317, v318, v319);

    v322 = objc_msgSend_translator(self, v320, v321);
    v325 = objc_msgSend_zoneIdentifier(v304, v323, v324);
    v713 = 0;
    v327 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_error_(v322, v326, v325, &v713);
    v699 = v713;

    v707 = v327;
    if (objc_msgSend_isEqual_(v327, v328, v15))
    {
      v331 = objc_msgSend_translator(self, v329, v330);
      v334 = objc_msgSend_containerScopedUserID(v331, v332, v333);
      isEqual = objc_msgSend_isEqual_(v45, v335, v334);

      if (isEqual)
      {
        v66 = 0;
        v64 = 0;
        v83 = 0;
        LODWORD(v89) = 1;
        v337 = v699;
LABEL_231:

        if (!v89)
        {
          v704 = 0;
          v88 = 0;
          v694 = 0;
          goto LABEL_204;
        }

        v126 = @"owner";
        v27 = MEMORY[0x277CBC878];
LABEL_53:
        if (!objc_msgSend_hasSignedShareUsage(v703, v105, v106))
        {
          v687 = v126;
          v704 = 0;
LABEL_79:
          v187 = objc_msgSend_options(self, v127, v128);
          v190 = objc_msgSend_excludeZoneAccessBefore(v187, v188, v189);

          v693 = v190;
          if (v190)
          {
            objc_msgSend_timeIntervalSinceDate_(v690, v191, v190);
            if (v193 < 0.0)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *v27);
              }

              v194 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
              {
                v514 = v194;
                v517 = objc_msgSend_requestUUID(self, v515, v516);
                *buf = 138544130;
                v717 = v517;
                v718 = 2112;
                v719 = v690;
                v720 = 2112;
                v721 = v190;
                v722 = 2112;
                v723 = v15;
                _os_log_error_impl(&dword_22506F000, v514, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server: Zone/share usage blob date is too old: %@ (vs. %@), zoneID: %@", buf, 0x2Au);
              }

              v197 = MEMORY[0x277CBC560];
              v198 = *MEMORY[0x277CBBF50];
              v691 = objc_msgSend_requestUUID(self, v195, v196);
              v686 = objc_msgSend_errorWithDomain_code_format_(v197, v199, v198, 161, @"Invalid zone/share usage date (%@) in device capability check response for request %@", v690, v691);
              v88 = 0;
              v694 = 0;
              LOBYTE(v89) = 0;
              v83 = 10;
              v66 = @"usageTooOld";
              goto LABEL_201;
            }
          }

          v233 = objc_msgSend_signedSupportedAdopterCapabilities(v703, v191, v192);
          v691 = v233;
          if (objc_msgSend_hasVersion(v233, v234, v235) && objc_msgSend_version(v233, v236, v237) >= 2)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *v27);
            }

            v238 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
            {
              v564 = v238;
              v567 = objc_msgSend_requestUUID(self, v565, v566);
              v570 = objc_msgSend_version(v233, v568, v569);
              *buf = 138543874;
              v717 = v567;
              v718 = 2048;
              v719 = v570;
              v720 = 2112;
              v721 = v15;
              _os_log_error_impl(&dword_22506F000, v564, OS_LOG_TYPE_ERROR, "req: %{public}@, Unsupported device capability check response from the server: Device capabilities blob version %ld is not supported. zoneID: %@", buf, 0x20u);
            }

            v241 = MEMORY[0x277CBC560];
            v242 = *MEMORY[0x277CBBF50];
            v684 = objc_msgSend_requestUUID(self, v239, v240);
            v686 = objc_msgSend_errorWithDomain_code_format_(v241, v243, v242, 160, @"Unsupported device capabilities version in device capability check response for request %@", v684);
            v88 = 0;
            v694 = 0;
            LOBYTE(v89) = 0;
            v83 = 10;
            v66 = @"unsupportedSignedVersionedBlobVersion";
            goto LABEL_200;
          }

          if (objc_msgSend_hasSignature(v233, v236, v237) && (objc_msgSend_signature(v233, v244, v245), v246 = objc_claimAutoreleasedReturnValue(), v697 = objc_msgSend_length(v246, v247, v248), v246, v697))
          {
            v698 = objc_msgSend_container(self, v244, v245);
            v675 = objc_msgSend_pcsManager(v698, v249, v250);
            v673 = objc_msgSend_signature(v233, v251, v252);
            objc_msgSend_serializedObject(v233, v253, v254);
            v255 = v709[1] = 0;
            v679 = objc_msgSend_validateFullPublicKeySignature_forSignedData_error_(v675, v256, v673);
            v684 = 0;

            if (!v679 || v684)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *v27);
              }

              v481 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
              {
                v593 = v481;
                v596 = objc_msgSend_requestUUID(self, v594, v595);
                *buf = 138543874;
                v717 = v596;
                v718 = 2112;
                v719 = v684;
                v720 = 2112;
                v721 = v15;
                _os_log_error_impl(&dword_22506F000, v593, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Device capabilities signature validation failed: %@, zoneID: %@", buf, 0x20u);
              }

              v484 = MEMORY[0x277CBC560];
              v485 = *MEMORY[0x277CBBF50];
              v486 = objc_msgSend_requestUUID(self, v482, v483);
              v686 = objc_msgSend_errorWithDomain_code_error_format_(v484, v487, v485, 161, v684, @"Failed to validate device capabilities signature in device capability check response for request %@", v486);

              v88 = 0;
              v694 = 0;
              LOBYTE(v89) = 0;
              v83 = 10;
              v64 = v486;
              v66 = @"invalidDeviceCapabilitySignature";
              goto LABEL_200;
            }

            v694 = objc_msgSend_canValidateWithKT(v233, v257, v258);
            v680 = objc_msgSend_container(self, v259, v260);
            v263 = objc_msgSend_pcsManager(v680, v261, v262);
            v266 = objc_msgSend_signature(v233, v264, v265);
            v709[0] = 0;
            v684 = objc_msgSend_publicKeyFromSignature_error_(v263, v267, v266, v709);
            v676 = v709[0];
          }

          else
          {
            v361 = objc_msgSend_options(self, v244, v245);
            v364 = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v361, v362, v363);

            if (v364)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *v27);
              }

              v365 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
              {
                v560 = v365;
                v563 = objc_msgSend_requestUUID(self, v561, v562);
                *buf = 138543362;
                v717 = v563;
                _os_log_error_impl(&dword_22506F000, v560, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server. Server returned isSupported:NO for a device without capability checking support, when devices without capability checking support should have been excluded.", buf, 0xCu);
              }

              v368 = MEMORY[0x277CBC560];
              v369 = *MEMORY[0x277CBBF50];
              v684 = objc_msgSend_requestUUID(self, v366, v367);
              v686 = objc_msgSend_errorWithDomain_code_format_(v368, v370, v369, 161, @"Device without capability checking support should have been excluded, but was returned by server in request: %@", v684);
              v88 = 0;
              v694 = 0;
              LOBYTE(v89) = 0;
              v83 = 10;
              v66 = @"serverDetectedDeviceNotExcluded";
              goto LABEL_200;
            }

            v684 = 0;
            v694 = 0;
          }

          v421 = [CKDPSupportedCapabilities alloc];
          v424 = objc_msgSend_serializedObject(v691, v422, v423);
          v426 = objc_msgSend_initWithData_(v421, v425, v424);

          v682 = v426;
          if (!v426 || !objc_msgSend_hasUserIdentifier(v426, v427, v428) || !objc_msgSend_hasDeviceIdentifier(v426, v429, v430) || (objc_msgSend_hasTime(v426, v431, v432) & 1) == 0)
          {
            v463 = *v27;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v463);
            }

            v464 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(v464, OS_LOG_TYPE_ERROR))
            {
              v544 = objc_msgSend_requestUUID(self, v465, v466);
              *buf = 138543874;
              v717 = v544;
              v718 = 2112;
              v719 = v426;
              v720 = 2112;
              v721 = v15;
              _os_log_error_impl(&dword_22506F000, v464, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Invalid device capabilities content: %@, zoneID: %@", buf, 0x20u);
            }

            v467 = MEMORY[0x277CBC560];
            v468 = *MEMORY[0x277CBBF50];
            v678 = objc_msgSend_requestUUID(self, v469, v470);
            v472 = objc_msgSend_errorWithDomain_code_format_(v467, v471, v468, 161, @"Invalid device capabilities content in device capability check response for request %@", v678);
            v88 = 0;
            LOBYTE(v89) = 0;
            v473 = v64;
            v83 = 10;
            v66 = @"incompleteDeviceCapabilities";
            v64 = v472;
            goto LABEL_187;
          }

          v435 = objc_msgSend_userIdentifier(v426, v433, v434);
          v678 = objc_msgSend_name(v435, v436, v437);

          v440 = objc_msgSend_deviceIdentifier(v426, v438, v439);
          v674 = objc_msgSend_name(v440, v441, v442);

          if (!objc_msgSend_isEqual_(v678, v443, v45) || (objc_msgSend_isEqual_(v674, v444, v689) & 1) == 0)
          {
            v522 = *v27;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v522);
            }

            v523 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(v523, OS_LOG_TYPE_ERROR))
            {
              v640 = objc_msgSend_requestUUID(self, v524, v525);
              *buf = 138544642;
              v717 = v640;
              v718 = 2112;
              v719 = v678;
              v720 = 2112;
              v721 = v45;
              v722 = 2112;
              v723 = v674;
              v724 = 2112;
              v725 = v689;
              v726 = 2112;
              v727 = v15;
              _os_log_error_impl(&dword_22506F000, v523, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Device capabilities have different userID and/or deviceID than the zone/share usage. userID: %@ vs. %@, deviceID: %@ vs. %@, zoneID: %@", buf, 0x3Eu);
            }

            v526 = MEMORY[0x277CBC560];
            v527 = *MEMORY[0x277CBBF50];
            v672 = objc_msgSend_requestUUID(self, v528, v529);
            v531 = objc_msgSend_errorWithDomain_code_format_(v526, v530, v527, 161, @"Inconsistent device capabilities and usage in device capability check response for request %@", v672);
            v88 = 0;
            LOBYTE(v89) = 0;
            v532 = v64;
            v83 = 10;
            v66 = @"incorrectCapabilities";
            v64 = v531;
            goto LABEL_256;
          }

          v447 = objc_msgSend_translator(self, v445, v446);
          v449 = objc_msgSend_deviceCapabilitySetFromPDeviceCapabilitySet_(v447, v448, v426);

          v671 = v449;
          if (objc_msgSend_isCapabilitySet_subsetOf_(MEMORY[0x277CBC2B0], v450, v26, v449))
          {
            v453 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v453);
            }

            v454 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(v454, OS_LOG_TYPE_ERROR))
            {
              v669 = objc_msgSend_requestUUID(self, v455, v456);
              *buf = 138544130;
              v717 = v669;
              v718 = 2112;
              v719 = v26;
              v720 = 2112;
              v721 = v449;
              v722 = 2112;
              v723 = v15;
              _os_log_error_impl(&dword_22506F000, v454, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Server returned isSupported:NO, but the returned device capabilities do support the requested capabilities. requested: %@, returned: %@, zoneID: %@", buf, 0x2Au);
            }

            v89 = MEMORY[0x277CBC560];
            v457 = *MEMORY[0x277CBBF50];
            v460 = objc_msgSend_requestUUID(self, v458, v459);
            v462 = objc_msgSend_errorWithDomain_code_format_(v89, v461, v457, 161, @"Incorrect device capability check response for request %@", v460);

            v672 = 0;
            v88 = 0;
            LOBYTE(v89) = 0;
            v83 = 10;
            v64 = v462;
            v66 = @"capabilitiesSupported";
          }

          else
          {
            v618 = objc_msgSend_translator(self, v451, v452);
            v621 = objc_msgSend_time(v682, v619, v620);
            v623 = objc_msgSend_dateFromPDate_(v618, v622, v621);

            v672 = v623;
            objc_msgSend_timeIntervalSinceNow(v623, v624, v625);
            if (v628 >= -16070400.0 && (objc_msgSend_timeIntervalSinceNow(v690, v626, v627), v629 >= -16070400.0))
            {
              v642 = *MEMORY[0x277CBC878];
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v642);
              }

              v643 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(v643, OS_LOG_TYPE_INFO))
              {
                v646 = objc_msgSend_requestUUID(self, v644, v645);
                *buf = 138544898;
                v717 = v646;
                v718 = 2112;
                v719 = v15;
                v720 = 2112;
                v721 = v687;
                v722 = 2112;
                v723 = v45;
                v724 = 2112;
                v725 = v689;
                v726 = 2112;
                v727 = v690;
                v728 = 2112;
                v729 = v671;
                _os_log_impl(&dword_22506F000, v643, OS_LOG_TYPE_INFO, "req: %{public}@, Server returned isSupported:NO for the device capability check. zoneID: %@, %@ userID: %@, deviceID: %@, accessed: %@, supported capabilities: %@", buf, 0x48u);
              }

              if (v684 && objc_msgSend_isEqualToData_(v692, v647, v684))
              {
                if (v692 && objc_msgSend_length(v692, v647, v648))
                {
                  objc_msgSend_addObject_(v708, v649, v692);
                }
              }

              else
              {
                if (canValidateWithKT != v694)
                {
                  v650 = v692;
                  if (canValidateWithKT)
                  {
                    v650 = v684;
                  }

                  v651 = v650;
                  v654 = v651;
                  if (v651 && objc_msgSend_length(v651, v652, v653))
                  {
                    objc_msgSend_addObject_(v708, v655, v654);
                  }

                  v88 = 0;
                  v83 = 0;
                  LOBYTE(v89) = 1;
                  goto LABEL_255;
                }

                if (v692 && objc_msgSend_length(v692, v647, v648))
                {
                  objc_msgSend_addObject_(v708, v647, v692);
                }

                if (v684 && objc_msgSend_length(v684, v647, v648))
                {
                  objc_msgSend_addObject_(v708, v667, v684);
                }
              }

              v83 = 0;
              LOBYTE(v89) = 1;
              v88 = canValidateWithKT;
            }

            else
            {
              v630 = *MEMORY[0x277CBC878];
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v630);
              }

              v631 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(v631, OS_LOG_TYPE_ERROR))
              {
                v670 = objc_msgSend_requestUUID(self, v632, v633);
                *buf = 138544130;
                v717 = v670;
                v718 = 2112;
                v719 = v623;
                v720 = 2112;
                v721 = v690;
                v722 = 2112;
                v723 = v15;
                _os_log_error_impl(&dword_22506F000, v631, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Server returned device capabilities and/or zone/share usage that is too far in the past: %@ and %@, zoneID: %@", buf, 0x2Au);
              }

              v89 = MEMORY[0x277CBC560];
              v634 = *MEMORY[0x277CBBF50];
              v637 = objc_msgSend_requestUUID(self, v635, v636);
              v639 = objc_msgSend_errorWithDomain_code_format_(v89, v638, v634, 161, @"Obsolete device capability check response for request %@", v637);

              v88 = 0;
              LOBYTE(v89) = 0;
              v83 = 10;
              v64 = v639;
              v66 = @"capabilitiesTooOld";
            }
          }

LABEL_255:
          v532 = v671;
LABEL_256:

          v473 = v674;
LABEL_187:
          v686 = v64;

          v64 = v682;
LABEL_200:

          v64 = v684;
LABEL_201:

          goto LABEL_202;
        }

        v129 = objc_msgSend_signedShareUsage(v703, v127, v128);
        v693 = v129;
        if (objc_msgSend_hasVersion(v129, v130, v131) && objc_msgSend_version(v129, v132, v133) >= 2)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *v27);
          }

          v134 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
          {
            v537 = v134;
            v540 = objc_msgSend_requestUUID(self, v538, v539);
            v543 = objc_msgSend_version(v693, v541, v542);
            *buf = 138543874;
            v717 = v540;
            v718 = 2048;
            v719 = v543;
            v720 = 2112;
            v721 = v15;
            _os_log_error_impl(&dword_22506F000, v537, OS_LOG_TYPE_ERROR, "req: %{public}@, Unsupported device capability check response from the server: Share usage blob version %ld is not supported. zoneID: %@", buf, 0x20u);
          }

          v137 = MEMORY[0x277CBC560];
          v138 = *MEMORY[0x277CBBF50];
          v691 = objc_msgSend_requestUUID(self, v135, v136);
          v686 = objc_msgSend_errorWithDomain_code_format_(v137, v139, v138, 160, @"Unsupported share usage version in device capability check response for request %@", v691);
          v66 = @"unsupportedSignedVersionedBlobVersion";
LABEL_193:

          goto LABEL_194;
        }

        if (objc_msgSend_hasSignature(v129, v132, v133) && (objc_msgSend_signature(v129, v200, v201), v202 = objc_claimAutoreleasedReturnValue(), v205 = objc_msgSend_length(v202, v203, v204), v202, v205))
        {
          v688 = v126;
          v705 = objc_msgSend_container(self, v200, v201);
          v683 = objc_msgSend_pcsManager(v705, v206, v207);
          v210 = objc_msgSend_signature(v693, v208, v209);
          v213 = objc_msgSend_serializedObject(v693, v211, v212);
          v712 = 0;
          v695 = objc_msgSend_validateFullPublicKeySignature_forSignedData_error_(v683, v214, v210, v213, &v712);
          v215 = v712;

          if (!v695 || v215)
          {
            v691 = v215;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v474 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
            {
              v572 = v474;
              v575 = objc_msgSend_requestUUID(self, v573, v574);
              *buf = 138543874;
              v717 = v575;
              v718 = 2112;
              v719 = v215;
              v720 = 2112;
              v721 = v15;
              _os_log_error_impl(&dword_22506F000, v572, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Share usage signature validation failed: %@ zoneID: %@", buf, 0x20u);
            }

            v477 = MEMORY[0x277CBC560];
            v478 = *MEMORY[0x277CBBF50];
            v479 = objc_msgSend_requestUUID(self, v475, v476);
            v686 = objc_msgSend_errorWithDomain_code_error_format_(v477, v480, v478, 161, v215, @"Failed to validate share usage signature in device capability check response for request %@", v479);

            v66 = @"invalidShareUsageSignature";
            v64 = v479;
            goto LABEL_193;
          }

          canValidateWithKT = objc_msgSend_canValidateWithKT(v693, v216, v217);
          v696 = objc_msgSend_container(self, v218, v219);
          v222 = objc_msgSend_pcsManager(v696, v220, v221);
          v225 = objc_msgSend_signature(v693, v223, v224);
          v711 = 0;
          v706 = objc_msgSend_publicKeyFromSignature_error_(v222, v226, v225, &v711);
          v227 = v711;

          v228 = v227;
          v126 = v688;
          if (v228)
          {
            v229 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v229);
            }

            v230 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
            {
              objc_msgSend_requestUUID(self, v231, v232);
              v597 = v701 = v228;
              *buf = 138543618;
              v717 = v597;
              v718 = 2112;
              v719 = v701;
              _os_log_error_impl(&dword_22506F000, v230, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to extract public key from the signature: %@", buf, 0x16u);

              v228 = v701;
            }
          }

          v692 = v706;
        }

        else
        {
          v268 = objc_msgSend_options(self, v200, v201);
          v271 = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v268, v269, v270);

          if (v271)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v272 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
            {
              v533 = v272;
              v536 = objc_msgSend_requestUUID(self, v534, v535);
              *buf = 138543362;
              v717 = v536;
              _os_log_error_impl(&dword_22506F000, v533, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server. Server returned isSupported:NO for a device without capability checking support, when devices without capability checking support should have been excluded.", buf, 0xCu);
            }

            v275 = MEMORY[0x277CBC560];
            v276 = *MEMORY[0x277CBBF50];
            v691 = objc_msgSend_requestUUID(self, v273, v274);
            v686 = objc_msgSend_errorWithDomain_code_format_(v275, v277, v276, 161, @"Device without capability checking support should have been excluded, but was returned by server in request: %@", v691);
            v66 = @"serverDetectedDeviceNotExcluded";
            goto LABEL_193;
          }
        }

        v344 = [CKDPShareUsage alloc];
        v347 = objc_msgSend_serializedObject(v693, v345, v346);
        v349 = objc_msgSend_initWithData_(v344, v348, v347);

        v691 = v349;
        if (objc_msgSend_hasVersion(v349, v350, v351) && objc_msgSend_version(v349, v352, v353) >= 2)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v354 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
          {
            v576 = v354;
            v579 = objc_msgSend_requestUUID(self, v577, v578);
            v582 = objc_msgSend_version(v691, v580, v581);
            *buf = 138543874;
            v717 = v579;
            v718 = 2048;
            v719 = v582;
            v720 = 2112;
            v721 = v15;
            _os_log_error_impl(&dword_22506F000, v576, OS_LOG_TYPE_ERROR, "req: %{public}@, Unsupported device capability check response from the server: Share usage version %ld is not supported. zoneID: %@", buf, 0x20u);
          }

          v357 = MEMORY[0x277CBC560];
          v358 = *MEMORY[0x277CBBF50];
          v359 = objc_msgSend_requestUUID(self, v355, v356);
          v686 = objc_msgSend_errorWithDomain_code_format_(v357, v360, v358, 160, @"Unsupported share usage version in device capability check response for request %@", v359);
          v66 = @"unsupportedShareUsageVersion";
LABEL_163:

LABEL_194:
          v704 = 0;
          v88 = 0;
          v694 = 0;
          LOBYTE(v89) = 0;
          v83 = 10;
LABEL_202:
          v64 = v686;
          goto LABEL_203;
        }

        if (!v349 || !objc_msgSend_hasShareIdentifier(v349, v352, v353) || !objc_msgSend_hasUserIdentifier(v349, v371, v372) || !objc_msgSend_hasDeviceIdentifier(v349, v373, v374) || (objc_msgSend_hasTime(v349, v375, v376) & 1) == 0)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v408 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
          {
            v518 = v408;
            v521 = objc_msgSend_requestUUID(self, v519, v520);
            *buf = 138543874;
            v717 = v521;
            v718 = 2112;
            v719 = v691;
            v720 = 2112;
            v721 = v15;
            _os_log_error_impl(&dword_22506F000, v518, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Invalid share usage content: %@, zoneID: %@", buf, 0x20u);
          }

          v411 = MEMORY[0x277CBC560];
          v412 = *MEMORY[0x277CBBF50];
          v359 = objc_msgSend_requestUUID(self, v409, v410);
          v686 = objc_msgSend_errorWithDomain_code_format_(v411, v413, v412, 161, @"Invalid share usage content in device capability check response for request %@", v359);
          v66 = @"incompleteShareUsage";
          goto LABEL_163;
        }

        v687 = v126;
        objc_msgSend_translator(self, v377, v378);
        v380 = v379 = v349;
        v383 = objc_msgSend_time(v379, v381, v382);
        v685 = objc_msgSend_dateFromPDate_(v380, v384, v383);

        v387 = objc_msgSend_deviceIdentifier(v379, v385, v386);
        v681 = objc_msgSend_name(v387, v388, v389);

        v392 = objc_msgSend_userIdentifier(v379, v390, v391);
        v677 = objc_msgSend_name(v392, v393, v394);

        v397 = objc_msgSend_translator(self, v395, v396);
        v400 = objc_msgSend_shareIdentifier(v379, v398, v399);
        v710 = 0;
        v402 = objc_msgSend_recordIDFromPShareIdentifier_error_(v397, v401, v400, &v710);
        v700 = v710;

        v704 = v402;
        if (v402)
        {
          v405 = objc_msgSend_zoneID(v402, v403, v404);
          if (objc_msgSend_isEqual_(v405, v406, v15))
          {
            v83 = 0;
            v407 = 1;
LABEL_245:

            if (v407)
            {
              v689 = v681;
              v690 = v685;
              v45 = v677;
              v27 = MEMORY[0x277CBC878];
              goto LABEL_79;
            }

            v88 = 0;
            v694 = 0;
            LOBYTE(v89) = 0;
            v689 = v681;
            v690 = v685;
            v45 = v677;
LABEL_204:

            if (v83)
            {

              v83 = 0;
              if (v64)
              {
                goto LABEL_46;
              }

              goto LABEL_206;
            }

LABEL_45:

            if (v64)
            {
LABEL_46:
              objc_msgSend_reportClientValidationError_forZoneID_capabilitySet_failureType_(self, v118, v64, v15, v26, v66);
LABEL_47:
              v65 = v704;
              v48 = v708;
              goto LABEL_48;
            }

LABEL_206:
            if (v89)
            {
              v488 = objc_msgSend_supportedDeviceCapabilitiesCheckedForZoneBlock(self, v118, v119);

              if (v488)
              {
                v489 = [CKDDeviceCapabilityCheckResult alloc];
                v48 = v708;
                if (v83)
                {
                  inited = objc_msgSend_initSupported(v489, v490, v491);
                  v65 = v704;
                }

                else
                {
                  v65 = v704;
                  inited = objc_msgSend_initNotSupportedWithUserID_publicKeys_canValidateWithKT_shareID_usageIsManateeSigned_capabilitiesIsManateeSigned_(v489, v490, v45, v708, v88, v704, canValidateWithKT, v694);
                }

                v495 = objc_msgSend_supportedDeviceCapabilitiesCheckedForZoneBlock(self, v492, v493);
                v498 = objc_msgSend_result(objectCopy, v496, v497);
                (v495)[2](v495, v15, v26, inited, v498);

                v64 = 0;
                goto LABEL_48;
              }

              v64 = 0;
              goto LABEL_47;
            }

            v27 = MEMORY[0x277CBC878];
            goto LABEL_211;
          }

          v608 = *MEMORY[0x277CBC878];
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v608);
          }

          v609 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(v609, OS_LOG_TYPE_ERROR))
          {
            v668 = objc_msgSend_requestUUID(self, v610, v611);
            *buf = 138543874;
            v717 = v668;
            v718 = 2112;
            v719 = v405;
            v720 = 2112;
            v721 = v15;
            _os_log_error_impl(&dword_22506F000, v609, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Share usage is for a different zone: %@ (expected %@)", buf, 0x20u);
          }

          v612 = MEMORY[0x277CBC560];
          v613 = *MEMORY[0x277CBBF50];
          v616 = objc_msgSend_requestUUID(self, v614, v615);
          v607 = objc_msgSend_errorWithDomain_code_error_format_(v612, v617, v613, 161, v700, @"Invalid share usage zone ID in device capability check response for request %@", v616);

          v66 = @"incorrectZone";
          v64 = v616;
        }

        else
        {
          v598 = *MEMORY[0x277CBC878];
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v598);
          }

          v599 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(v599, OS_LOG_TYPE_ERROR))
          {
            v663 = objc_msgSend_requestUUID(self, v600, v601);
            v666 = objc_msgSend_shareIdentifier(v691, v664, v665);
            *buf = 138543618;
            v717 = v663;
            v718 = 2112;
            v719 = v666;
            _os_log_error_impl(&dword_22506F000, v599, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Invalid shareID: %@", buf, 0x16u);
          }

          v602 = MEMORY[0x277CBC560];
          v603 = *MEMORY[0x277CBBF50];
          v405 = objc_msgSend_requestUUID(self, v604, v605);
          v607 = objc_msgSend_errorWithDomain_code_error_format_(v602, v606, v603, 161, v700, @"Invalid share ID in device capability check response for request %@", v405);
          v66 = @"invalidShareID";
        }

        v407 = 0;
        v83 = 10;
        v64 = v607;
        goto LABEL_245;
      }

      v583 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v583);
      }

      v557 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(v557, OS_LOG_TYPE_ERROR))
      {
        v656 = objc_msgSend_requestUUID(self, v584, v585);
        v659 = objc_msgSend_translator(self, v657, v658);
        v662 = objc_msgSend_containerScopedUserID(v659, v660, v661);
        *buf = 138544130;
        v717 = v656;
        v718 = 2112;
        v719 = v45;
        v720 = 2112;
        v721 = v662;
        v722 = 2112;
        v723 = v15;
        _os_log_error_impl(&dword_22506F000, v557, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Zone usage is for a different user: %@ (expected %@), zoneID: %@", buf, 0x2Au);
      }

      v66 = @"incorrectUserID";
      v89 = @"Invalid zone usage user ID in device capability check response for request %@";
    }

    else
    {
      v556 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v556);
      }

      v557 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(v557, OS_LOG_TYPE_ERROR))
      {
        v641 = objc_msgSend_requestUUID(self, v558, v559);
        *buf = 138543874;
        v717 = v641;
        v718 = 2112;
        v719 = v327;
        v720 = 2112;
        v721 = v15;
        _os_log_error_impl(&dword_22506F000, v557, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Zone usage is for a different zone: %@ (expected %@)", buf, 0x20u);
      }

      v66 = @"incorrectZone";
      v89 = @"Invalid zone usage zone ID in device capability check response for request %@";
    }

    v586 = MEMORY[0x277CBC560];
    v587 = *MEMORY[0x277CBBF50];
    v590 = objc_msgSend_requestUUID(self, v588, v589);
    v591 = v587;
    v337 = v699;
    v64 = objc_msgSend_errorWithDomain_code_error_format_(v586, v592, v591, 161, v699, v89, v590);

    LODWORD(v89) = 0;
    v83 = 10;
    goto LABEL_231;
  }

  v42 = objc_msgSend_errorFromServerBlock(self, v40, v41);

  if (v42)
  {
    v45 = objc_msgSend_errorFromServerBlock(self, v43, v44);
    v48 = objc_msgSend_result(objectCopy, v46, v47);
    (v45->data)(v45, v15, v26, v48);
LABEL_49:
  }

  v120 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v54 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v7 = objc_msgSend_zoneIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(failureCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_capabililitySetsByRequestID(self, v16, v17);
  v21 = objc_msgSend_response(failureCopy, v19, v20);
  v24 = objc_msgSend_operationUUID(v21, v22, v23);
  v26 = objc_msgSend_objectForKeyedSubscript_(v18, v25, v24);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
  {
    v38 = v27;
    v41 = objc_msgSend_requestUUID(self, v39, v40);
    v44 = objc_msgSend_response(failureCopy, v42, v43);
    v47 = objc_msgSend_operationUUID(v44, v45, v46);
    v48 = 138543874;
    v49 = v41;
    v50 = 2112;
    v51 = v47;
    v52 = 2112;
    v53 = failureCopy;
    _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "req: %{public}@, Parse failure in device capabilities check response, operationUUID: %@, responseObject: %@", &v48, 0x20u);
  }

  v30 = objc_msgSend_errorFromServerBlock(self, v28, v29);

  if (v30)
  {
    v33 = objc_msgSend_errorFromServerBlock(self, v31, v32);
    v36 = objc_msgSend_result(failureCopy, v34, v35);
    (v33)[2](v33, v15, v26, v36);
  }

  v37 = *MEMORY[0x277D85DE8];
}

@end