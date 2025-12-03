@interface CKDFetchRecordZonesURLRequest
- (BOOL)requiresCKAnonymousUserIDs;
- (CKDFetchRecordZonesURLRequest)initWithOperation:(id)operation recordZoneIDs:(id)ds;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDFetchRecordZonesURLRequest

- (CKDFetchRecordZonesURLRequest)initWithOperation:(id)operation recordZoneIDs:(id)ds
{
  dsCopy = ds;
  v17.receiver = self;
  v17.super_class = CKDFetchRecordZonesURLRequest;
  v8 = [(CKDURLRequest *)&v17 initWithOperation:operation];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_zoneIDs, ds);
    v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
    recordZones = v9->_recordZones;
    v9->_recordZones = v12;

    v14 = objc_opt_new();
    zoneIDByRequestID = v9->_zoneIDByRequestID;
    v9->_zoneIDByRequestID = v14;
  }

  return v9;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v15.receiver = self;
  v15.super_class = CKDFetchRecordZonesURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v15 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_zoneIDs(self, v6, v7, v15.receiver, v15.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v14, v13, @"zoneIDs");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_zoneIDs(self, v5, v6);
  objc_msgSend_setFetchRecordZoneIDs_(propertiesCopy, v8, v7);

  v9.receiver = self;
  v9.super_class = CKDFetchRecordZonesURLRequest;
  [(CKDURLRequest *)&v9 fillOutRequestProperties:propertiesCopy];
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
  v10.receiver = self;
  v10.super_class = CKDFetchRecordZonesURLRequest;
  if (![(CKDURLRequest *)&v10 requiresCKAnonymousUserIDs])
  {
    return 0;
  }

  v5 = objc_msgSend_zoneIDs(self, v3, v4);
  v8 = objc_msgSend_count(v5, v6, v7) != 0;

  return v8;
}

- (id)generateRequestOperations
{
  v98 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v6 = objc_msgSend_zoneIDs(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (v9)
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = objc_msgSend_zoneIDs(self, v10, v11);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v93, v97, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v94;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v94 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v93 + 1) + 8 * i);
          v20 = objc_msgSend_operationType(self, v14, v15);
          v22 = objc_msgSend_operationRequestWithType_(self, v21, v20);
          if (objc_msgSend_requiresCKAnonymousUserIDs(self, v23, v24))
          {
            v27 = objc_msgSend_anonymousCKUserID(v19, v25, v26);

            if (!v27)
            {
              v74 = objc_opt_new();
              v76 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v75, @"An anonymousCKUserID is required to fetch zone %@ in the shared database when using anonymous to server share participants", v19);
              objc_msgSend_setObject_forKeyedSubscript_(v74, v77, v76, *MEMORY[0x277CCA450]);
              v80 = objc_msgSend_operation(self, v78, v79);
              v83 = objc_msgSend_topmostParentOperation(v80, v81, v82);

              v87 = objc_msgSend_operationID(v83, v84, v85);
              if (v87)
              {
                objc_msgSend_setObject_forKeyedSubscript_(v74, v86, v87, *MEMORY[0x277CBBF60]);
              }

              v88 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v86, *MEMORY[0x277CBC120], 5015, v74);
              objc_msgSend_finishWithError_(self, v89, v88);

              v73 = 0;
              goto LABEL_18;
            }

            v30 = objc_msgSend_anonymousCKUserID(v19, v28, v29);
            v33 = objc_msgSend_CKDPIdentifier_User(v30, v31, v32);
            v36 = objc_msgSend_request(v22, v34, v35);
            objc_msgSend_setAnonymousCKUserID_(v36, v37, v33);
          }

          v38 = objc_opt_new();
          objc_msgSend_setZoneRetrieveRequest_(v22, v39, v38);

          v42 = objc_msgSend_translator(self, v40, v41);
          v44 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(v42, v43, v19);
          v47 = objc_msgSend_zoneRetrieveRequest(v22, v45, v46);
          objc_msgSend_setZoneIdentifier_(v47, v48, v44);

          PCSInfo = objc_msgSend_onlyFetchPCSInfo(self, v49, v50);
          v54 = objc_msgSend_zoneRetrieveRequest(v22, v52, v53);
          objc_msgSend_setOnlyFetchPCSInfo_(v54, v55, PCSInfo);

          objc_msgSend_addObject_(v3, v56, v22);
          v59 = objc_msgSend_zoneIDByRequestID(self, v57, v58);
          v62 = objc_msgSend_request(v22, v60, v61);
          v65 = objc_msgSend_operationUUID(v62, v63, v64);
          objc_msgSend_setObject_forKeyedSubscript_(v59, v66, v19, v65);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v93, v97, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v67 = objc_msgSend_operationType(self, v10, v11);
    v69 = objc_msgSend_operationRequestWithType_(self, v68, v67);
    v70 = objc_opt_new();
    objc_msgSend_setZoneRetrieveRequest_(v69, v71, v70);

    objc_msgSend_addObject_(v3, v72, v69);
  }

  v73 = v3;
LABEL_18:

  v90 = *MEMORY[0x277D85DE8];

  return v73;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v311 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_msgSend_zoneIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(objectCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  if (!objc_msgSend_hasZoneRetrieveResponse(objectCopy, v16, v17))
  {
    v190 = objc_msgSend_result(objectCopy, v18, v19);
    hasError = objc_msgSend_hasError(v190, v191, v192);

    if (hasError)
    {
      v196 = objc_msgSend_zoneIDs(self, v194, v195);
      v199 = objc_msgSend_count(v196, v197, v198);

      if (v199)
      {
        v202 = objc_msgSend_recordZoneFetchedBlock(self, v200, v201);

        if (v202)
        {
          v205 = objc_msgSend_recordZoneFetchedBlock(self, v203, v204);
          v208 = objc_msgSend_result(objectCopy, v206, v207);
          (v205)[2](v205, 0, v15, v208, 0);
LABEL_74:
        }
      }

      else
      {
        v274 = objc_msgSend_errorFetchingAllRecordZonesBlock(self, v200, v201);

        if (v274)
        {
          v205 = objc_msgSend_errorFetchingAllRecordZonesBlock(self, v275, v276);
          v208 = objc_msgSend_result(objectCopy, v277, v278);
          (v205[2])(v205, v208);
          goto LABEL_74;
        }
      }
    }

    v27 = 0;
    goto LABEL_76;
  }

  v305 = 0u;
  v306 = 0u;
  v303 = 0u;
  v304 = 0u;
  v20 = objc_msgSend_zoneRetrieveResponse(objectCopy, v18, v19);
  v23 = objc_msgSend_zoneSummarys(v20, v21, v22);

  obj = v23;
  v292 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v303, v310, 16);
  v27 = 0;
  if (v292)
  {
    v291 = *v304;
    v286 = *MEMORY[0x277CBBF28];
    while (2)
    {
      for (i = 0; i != v292; ++i)
      {
        if (*v304 != v291)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v303 + 1) + 8 * i);
        v32 = objc_msgSend_targetZone(v29, v25, v26);
        if (v32)
        {
          v33 = objc_msgSend_translator(self, v30, v31);
          v36 = objc_msgSend_anonymousCKUserID(v15, v34, v35);
          v39 = objc_msgSend_databaseScope(self, v37, v38);
          v301 = 0;
          v302 = v27;
          v41 = objc_msgSend_recordZoneFromPRecordZone_asAnonymousCKUserID_databaseScope_error_requiredFeaturesValidationFailureType_(v33, v40, v32, v36, v39, &v302, &v301);
          v293 = v302;

          v42 = v301;
          if (v42)
          {
            v45 = objc_msgSend_operation(self, v43, v44);
            v299[0] = MEMORY[0x277D85DD0];
            v299[1] = 3221225472;
            v299[2] = sub_2253DC7D0;
            v299[3] = &unk_2785487F8;
            v300 = v42;
            objc_msgSend_updateCloudKitMetrics_(v45, v46, v299);
          }

          if (!v41)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v209 = v42;
            v210 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v309 = v293;
              _os_log_error_impl(&dword_22506F000, v210, OS_LOG_TYPE_ERROR, "Failed to convert record zone: %@", buf, 0xCu);
            }

            v213 = objc_msgSend_result(objectCopy, v211, v212);
            objc_msgSend_setCode_(v213, v214, 3);

            v215 = objc_opt_new();
            v218 = objc_msgSend_result(objectCopy, v216, v217);
            objc_msgSend_setError_(v218, v219, v215);

            v220 = objc_opt_new();
            v223 = objc_msgSend_result(objectCopy, v221, v222);
            v226 = objc_msgSend_error(v223, v224, v225);
            objc_msgSend_setClientError_(v226, v227, v220);

            v230 = objc_msgSend_result(objectCopy, v228, v229);
            v233 = objc_msgSend_error(v230, v231, v232);
            v236 = objc_msgSend_clientError(v233, v234, v235);
            objc_msgSend_setType_(v236, v237, 7);

            v240 = objc_msgSend_result(objectCopy, v238, v239);
            v243 = objc_msgSend_error(v240, v241, v242);
            objc_msgSend_setErrorKey_(v243, v244, @"Invalid record zone");

            v245 = MEMORY[0x277CCACA8];
            v248 = objc_msgSend_localizedDescription(v293, v246, v247);
            v250 = objc_msgSend_stringWithFormat_(v245, v249, @"The record zone could not be converted because it is invalid: %@", v248);
            v253 = objc_msgSend_result(objectCopy, v251, v252);
            v256 = objc_msgSend_error(v253, v254, v255);
            objc_msgSend_setErrorDescription_(v256, v257, v250);

            if (v15)
            {
              v260 = v293;
              goto LABEL_68;
            }

            v261 = objc_msgSend_translator(self, v258, v259);
            v264 = objc_msgSend_zoneIdentifier(v32, v262, v263);
            v298 = v293;
            v15 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_asAnonymousCKUserID_error_(v261, v265, v264, 0, &v298);
            v260 = v298;

            if (v15)
            {
LABEL_68:
              v266 = objc_msgSend_recordZoneFetchedBlock(self, v258, v259);

              if (v266)
              {
                v269 = objc_msgSend_recordZoneFetchedBlock(self, v267, v268);
                v272 = objc_msgSend_result(objectCopy, v270, v271);
                (v269)[2](v269, 0, v15, v272, v260);
                goto LABEL_70;
              }
            }

            else
            {
              v281 = objc_msgSend_errorFetchingAllRecordZonesBlock(self, v258, v259);

              if (v281)
              {
                v269 = objc_msgSend_errorFetchingAllRecordZonesBlock(self, v282, v283);
                v272 = objc_msgSend_result(objectCopy, v284, v285);
                (v269[2])(v269, v272);
                v15 = 0;
LABEL_70:
              }

              else
              {
                v15 = 0;
              }
            }

            v273 = v260;

            goto LABEL_77;
          }

          v47 = objc_msgSend_zoneID(v41, v43, v44);
          isEqual = objc_msgSend_isEqual_(v47, v48, v15);

          if ((isEqual & 1) == 0)
          {
            v289 = v42;
            v290 = v32;
            selfCopy = self;
            v53 = objectCopy;
            v54 = objc_msgSend_ownerName(v15, v50, v51);
            isEqualToString = objc_msgSend_isEqualToString_(v54, v55, v286);

            v58 = objc_msgSend_zoneID(v41, v56, v57);
            v61 = objc_msgSend_ownerName(v58, v59, v60);
            v63 = objc_msgSend_isEqualToString_(v61, v62, v286);

            v66 = objc_msgSend_zoneID(v41, v64, v65);
            v69 = objc_msgSend_zoneName(v66, v67, v68);
            v70 = v15;
            v71 = v69;
            v72 = v70;
            v75 = objc_msgSend_zoneName(v70, v73, v74);
            if (objc_msgSend_isEqualToString_(v71, v76, v75))
            {

              v77 = isEqualToString == v63;
              objectCopy = v53;
              v15 = v72;
              self = selfCopy;
              v42 = v289;
              v32 = v290;
              if (!v77)
              {
                objc_msgSend_setZoneID_(v41, v50, v15);
              }
            }

            else
            {

              objectCopy = v53;
              v15 = v72;
              self = selfCopy;
              v42 = v289;
              v32 = v290;
            }
          }

          if (objc_msgSend_hasClientChangeToken(v29, v50, v51))
          {
            v80 = objc_msgSend_clientChangeToken(v29, v78, v79);
            objc_msgSend_setClientChangeToken_(v41, v81, v80);
          }

          if (objc_msgSend_hasCurrentServerContinuationToken(v29, v78, v79))
          {
            v84 = objc_alloc(MEMORY[0x277CBC670]);
            v87 = objc_msgSend_currentServerContinuationToken(v29, v85, v86);
            v89 = objc_msgSend_initWithData_(v84, v88, v87);

            objc_msgSend_setCurrentServerChangeToken_(v41, v90, v89);
          }

          if (objc_msgSend_hasDeviceCount(v29, v82, v83))
          {
            v93 = objc_msgSend_deviceCount(v29, v91, v92);
            objc_msgSend_setDeviceCount_(v41, v94, v93);
          }

          if (objc_msgSend_hasAssetQuotaUsage(v29, v91, v92))
          {
            v97 = objc_msgSend_assetQuotaUsage(v29, v95, v96);
            objc_msgSend_setAssetQuotaUsage_(v41, v98, v97);
          }

          if (objc_msgSend_hasMetadataQuotaUsage(v29, v95, v96))
          {
            v101 = objc_msgSend_metadataQuotaUsage(v29, v99, v100);
            objc_msgSend_setMetadataQuotaUsage_(v41, v102, v101);
          }

          if (objc_msgSend_hasZoneishPcsNeedsRolled(v29, v99, v100))
          {
            v105 = objc_msgSend_zoneishPcsNeedsRolled(v29, v103, v104);
            objc_msgSend_setNeedsZoneishPCSRolled_(v41, v106, v105);
          }

          if (objc_msgSend_hasCapabilities(v29, v103, v104))
          {
            v109 = objc_msgSend_translator(self, v107, v108);
            v112 = objc_msgSend_capabilities(v29, v110, v111);
            v114 = objc_msgSend_capabilitiesFromPZoneCapabilities_(v109, v113, v112);
            objc_msgSend_setCapabilities_(v41, v115, v114);
          }

          if (objc_msgSend_hasZoneKeyRollAllowed(v29, v107, v108))
          {
            v118 = objc_msgSend_zoneKeyRollAllowed(v29, v116, v117);
            objc_msgSend_setZoneKeyRollAllowed_(v41, v119, v118);
          }

          if (objc_msgSend_hasZonePcsModificationTime(v29, v116, v117))
          {
            v122 = MEMORY[0x277CBEAA8];
            v123 = objc_msgSend_zonePcsModificationTime(v29, v120, v121);
            objc_msgSend_time(v123, v124, v125);
            v128 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v122, v126, v127);
            objc_msgSend_setZonePCSModificationDate_(v41, v129, v128);
          }

          if (objc_msgSend_hasZonePcsModificationDevice(v29, v120, v121))
          {
            v132 = objc_msgSend_zonePcsModificationDevice(v29, v130, v131);
            objc_msgSend_setZonePCSLastModifierDevice_(v41, v133, v132);
          }

          if (objc_msgSend_hasExpirationTime(v29, v130, v131))
          {
            v136 = objc_msgSend_expirationTime(v29, v134, v135);
            objc_msgSend_time(v136, v137, v138);
            v140 = v139;

            v143 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v141, v142, v140);
            objc_msgSend_setExpirationDate_(v41, v144, v143);
          }

          if (objc_msgSend_hasExpired(v29, v134, v135))
          {
            v147 = objc_msgSend_expired(v29, v145, v146);
            objc_msgSend_setExpired_(v41, v148, v147);
          }

          v149 = objc_msgSend_recordZones(self, v145, v146);
          objc_msgSend_addObject_(v149, v150, v41);

          v27 = v293;
        }

        else
        {
          v41 = 0;
        }

        v151 = objc_msgSend_recordZoneFetchedBlock(self, v30, v31);

        if (v151)
        {
          v154 = objc_msgSend_recordZoneFetchedBlock(self, v152, v153);
          v157 = objc_msgSend_result(objectCopy, v155, v156);
          (v154)[2](v154, v41, v15, v157, 0);
        }
      }

      v292 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v303, v310, 16);
      if (v292)
      {
        continue;
      }

      break;
    }
  }

  selfCopy2 = self;
  v159 = v15;

  v160 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v163 = objc_msgSend_zoneRetrieveResponse(objectCopy, v161, v162);
  v166 = objc_msgSend_anonymousZoneInfos(v163, v164, v165);

  v296 = 0u;
  v297 = 0u;
  v294 = 0u;
  v295 = 0u;
  v167 = v166;
  v169 = objc_msgSend_countByEnumeratingWithState_objects_count_(v167, v168, &v294, v307, 16);
  if (v169)
  {
    v172 = v169;
    v173 = *v295;
    do
    {
      for (j = 0; j != v172; ++j)
      {
        if (*v295 != v173)
        {
          objc_enumerationMutation(v167);
        }

        v175 = objc_msgSend_anonymousZoneInfoData(*(*(&v294 + 1) + 8 * j), v170, v171);
        objc_msgSend_addObject_(v160, v176, v175);
      }

      v172 = objc_msgSend_countByEnumeratingWithState_objects_count_(v167, v170, &v294, v307, 16);
    }

    while (v172);
  }

  v179 = objc_msgSend_anonymousRecordZoneTuplesFetchedBlock(selfCopy2, v177, v178);
  if (v179)
  {
    v182 = v179;
    v183 = objc_msgSend_count(v160, v180, v181);

    if (v183)
    {
      v186 = objc_msgSend_anonymousRecordZoneTuplesFetchedBlock(selfCopy2, v184, v185);
      v189 = objc_msgSend_result(objectCopy, v187, v188);
      (v186)[2](v186, v160, v189);
    }
  }

  v15 = v159;
LABEL_76:
  v273 = v27;
LABEL_77:

  v279 = *MEMORY[0x277D85DE8];

  return v273;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  failureCopy = failure;
  v6 = objc_msgSend_zoneIDByRequestID(self, v4, v5);
  v9 = objc_msgSend_response(failureCopy, v7, v8);
  v12 = objc_msgSend_operationUUID(v9, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v6, v13, v12);

  v17 = objc_msgSend_zoneIDs(self, v15, v16);
  v20 = objc_msgSend_count(v17, v18, v19);

  if (v20)
  {
    v23 = objc_msgSend_recordZoneFetchedBlock(self, v21, v22);

    if (!v23)
    {
      goto LABEL_7;
    }

    v26 = objc_msgSend_recordZoneFetchedBlock(self, v24, v25);
    v29 = objc_msgSend_result(failureCopy, v27, v28);
    (v26)[2](v26, 0, v14, v29, 0);
  }

  else
  {
    v30 = objc_msgSend_errorFetchingAllRecordZonesBlock(self, v21, v22);

    if (!v30)
    {
      goto LABEL_7;
    }

    v26 = objc_msgSend_errorFetchingAllRecordZonesBlock(self, v31, v32);
    v29 = objc_msgSend_result(failureCopy, v33, v34);
    (v26[2])(v26, v29);
  }

LABEL_7:
}

@end