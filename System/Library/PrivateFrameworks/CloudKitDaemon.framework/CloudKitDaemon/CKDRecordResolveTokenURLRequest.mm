@interface CKDRecordResolveTokenURLRequest
- (BOOL)sendRequestAnonymously;
- (CKDRecordResolveTokenURLRequest)initWithOperation:(id)a3 shortTokenLookupInfos:(id)a4;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)a3;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
- (void)requestDidParseNodeFailure:(id)a3;
@end

@implementation CKDRecordResolveTokenURLRequest

- (CKDRecordResolveTokenURLRequest)initWithOperation:(id)a3 shortTokenLookupInfos:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CKDRecordResolveTokenURLRequest;
  v8 = [(CKDURLRequest *)&v13 initWithOperation:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lookupInfos, a4);
    v10 = objc_opt_new();
    lookupInfosByRequestID = v9->_lookupInfosByRequestID;
    v9->_lookupInfosByRequestID = v10;
  }

  return v9;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v15.receiver = self;
  v15.super_class = CKDRecordResolveTokenURLRequest;
  v4 = a3;
  [(CKDURLRequest *)&v15 fillOutEquivalencyPropertiesBuilder:v4];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_lookupInfos(self, v6, v7, v15.receiver, v15.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(v4, v14, v13, @"lookupInfos");
}

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)sendRequestAnonymously
{
  v13.receiver = self;
  v13.super_class = CKDRecordResolveTokenURLRequest;
  if ([(CKDURLRequest *)&v13 sendRequestAnonymously])
  {
    return 1;
  }

  v6 = objc_msgSend_container(self, v3, v4);
  v9 = objc_msgSend_options(v6, v7, v8);
  v5 = objc_msgSend_useAnonymousToServerShareParticipants(v9, v10, v11);

  return v5;
}

- (id)generateRequestOperations
{
  v4 = objc_msgSend_lookupInfos(self, a2, v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2253D6884;
  v8[3] = &unk_27854D5F8;
  v8[4] = self;
  v6 = objc_msgSend_CKMap_(v4, v5, v8);

  return v6;
}

- (id)requestDidParseProtobufObject:(id)a3
{
  v526 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_response(v4, v5, v6);
  v10 = objc_msgSend_operationUUID(v7, v8, v9);

  v13 = objc_msgSend_lookupInfosByRequestID(self, v11, v12);
  v496 = v10;
  v498 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v10);

  if (!objc_msgSend_hasRecordResolveTokenResponse(v4, v15, v16))
  {
    inited = 0;
    v101 = 0;
LABEL_136:
    v421 = objc_msgSend_result(v4, v17, v18);
    if (v101)
    {
      v422 = objc_opt_new();

      objc_msgSend_setCode_(v422, v423, 3);
      v424 = objc_opt_new();
      objc_msgSend_setError_(v422, v425, v424);

      v426 = objc_opt_new();
      objc_msgSend_error(v422, v427, v428);
      v430 = v429 = self;
      objc_msgSend_setClientError_(v430, v431, v426);

      v434 = objc_msgSend_error(v422, v432, v433);
      v437 = objc_msgSend_clientError(v434, v435, v436);
      objc_msgSend_setType_(v437, v438, 106);

      self = v429;
      v441 = objc_msgSend_error(v422, v439, v440);
      objc_msgSend_setErrorKey_(v441, v442, @"Client OS version does not support the crypto requirements on the share");

      v445 = objc_msgSend_error(v422, v443, v444);
      objc_msgSend_setErrorDescription_(v445, v446, @"Unable to parse crypto requirements on the share");

      v421 = v422;
    }

    v447 = objc_msgSend_tokenResolveBlock(self, v419, v420);

    if (v447)
    {
      v450 = objc_msgSend_tokenResolveBlock(self, v448, v449);
      (v450)[2](v450, v498, inited, v421);
    }

    v451 = v101;

    goto LABEL_141;
  }

  v19 = objc_msgSend_recordResolveTokenResponse(v4, v17, v18);
  v22 = objc_msgSend_shareMetadata(v19, v20, v21);
  v25 = v22;
  if (!v22 || !objc_msgSend_hasDenyAccessRequests(v22, v23, v24) || (objc_msgSend_denyAccessRequests(v25, v26, v27) & 1) != 0 || (objc_msgSend_hasCallerParticipant(v25, v28, v29) & 1) != 0 || (objc_msgSend_hasOwnerParticipant(v25, v30, v31) & 1) != 0 || (objc_msgSend_hasParticipantType(v25, v32, v33) & 1) != 0 || (objc_msgSend_hasParticipantState(v25, v34, v35) & 1) != 0 || (objc_msgSend_hasParticipantPermission(v25, v36, v37) & 1) != 0 || objc_msgSend_hasProtectedFullToken(v25, v38, v39))
  {

    goto LABEL_12;
  }

  hasRootRecordType = objc_msgSend_hasRootRecordType(v25, v40, v41);

  if (hasRootRecordType)
  {
LABEL_12:
    v44 = objc_msgSend_container(v19, v42, v43);
    if (objc_msgSend_containerEnvironment(v19, v45, v46) == 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = 2;
    }

    v48 = objc_alloc(MEMORY[0x277CBC220]);
    v494 = v44;
    v495 = objc_msgSend_initWithContainerIdentifier_environment_(v48, v49, v44, v47);
    v500 = objc_msgSend_translator(self, v50, v51);
    v54 = objc_msgSend_shareMetadata(v19, v52, v53);
    if (objc_msgSend_hasParticipantType(v54, v55, v56))
    {
      v59 = objc_msgSend_shareMetadata(v19, v57, v58);
      if (objc_msgSend_participantType(v59, v60, v61) == 1)
      {
        v64 = objc_msgSend_shareMetadata(v19, v62, v63);
        hasOwnerParticipant = objc_msgSend_hasOwnerParticipant(v64, v65, v66);

        if (!hasOwnerParticipant)
        {
          goto LABEL_24;
        }

        v70 = objc_msgSend_privateDBTranslator(self, v68, v69);

        if (!v70)
        {
          v73 = [CKDProtocolTranslator alloc];
          v76 = objc_msgSend_container(self, v74, v75);
          v78 = objc_msgSend_initWithContainer_databaseScope_(v73, v77, v76, 2);
          objc_msgSend_setPrivateDBTranslator_(self, v79, v78);

          v82 = objc_msgSend_shareMetadata(v19, v80, v81);
          v85 = objc_msgSend_ownerParticipant(v82, v83, v84);
          v88 = objc_msgSend_userId(v85, v86, v87);
          v91 = objc_msgSend_name(v88, v89, v90);
          v94 = objc_msgSend_privateDBTranslator(self, v92, v93);
          objc_msgSend_setOverriddenContainerScopedUserID_(v94, v95, v91);

          v98 = objc_msgSend_privateDBTranslator(self, v96, v97);
          objc_msgSend_setOverriddenDatabaseScope_(v98, v99, 2);
        }

        objc_msgSend_privateDBTranslator(self, v71, v72);
        v500 = v54 = v500;
      }

      else
      {
      }
    }

LABEL_24:
    v102 = objc_msgSend_shareRecord(v19, v68, v69);
    v516 = 0;
    v497 = objc_msgSend_recordFromPRecord_error_(v500, v103, v102, &v516);
    v104 = v516;

    if (v104)
    {
      v105 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v105);
      }

      v106 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
      {
        v109 = objc_msgSend_shareRecord(v19, v107, v108);
        *buf = 138412546;
        v518 = v109;
        v519 = 2112;
        v520 = v104;
        _os_log_impl(&dword_22506F000, v106, OS_LOG_TYPE_INFO, "Warn: Couldn't get a shareRecord from %@: %@", buf, 0x16u);
      }
    }

    v110 = objc_alloc(MEMORY[0x277CBC698]);
    inited = objc_msgSend_initWithShare_containerID_(v110, v111, v497, v495);
    v114 = objc_msgSend_shareMetadata(v19, v112, v113);
    hasParticipantType = objc_msgSend_hasParticipantType(v114, v115, v116);

    v499 = inited;
    if (hasParticipantType)
    {
      v120 = objc_msgSend_shareMetadata(v19, v118, v119);
      v123 = objc_msgSend_participantType(v120, v121, v122);
      v126 = objc_msgSend_container(self, v124, v125);
      v129 = objc_msgSend_clientSDKVersion(v126, v127, v128);
      v132 = objc_msgSend_container(self, v130, v131);
      v135 = objc_msgSend_containerID(v132, v133, v134);
      isAppleInternal = objc_msgSend_isAppleInternal(v135, v136, v137);
      v139 = sub_2253965F8(v123, v129, isAppleInternal);
      objc_msgSend_setParticipantRole_(v499, v140, v139);

      inited = v499;
    }

    v141 = objc_msgSend_shareMetadata(v19, v118, v119);
    hasParticipantState = objc_msgSend_hasParticipantState(v141, v142, v143);

    if (hasParticipantState)
    {
      v147 = objc_msgSend_shareMetadata(v19, v145, v146);
      v151 = objc_msgSend_participantState(v147, v148, v149) - 2;
      if (v151 >= 3)
      {
        objc_msgSend_setParticipantStatus_(inited, v150, 1);
      }

      else
      {
        objc_msgSend_setParticipantStatus_(inited, v150, v151 + 2);
      }
    }

    v152 = objc_msgSend_shareMetadata(v19, v145, v146);
    hasParticipantPermission = objc_msgSend_hasParticipantPermission(v152, v153, v154);

    if (hasParticipantPermission)
    {
      v158 = objc_msgSend_shareMetadata(v19, v156, v157);
      v162 = objc_msgSend_participantPermission(v158, v159, v160) - 1;
      if (v162 < 3)
      {
        objc_msgSend_setParticipantPermission_(inited, v161, v162 + 1);
      }

      else
      {
        objc_msgSend_setParticipantPermission_(inited, v161, 0);
      }
    }

    v163 = objc_msgSend_shareMetadata(v19, v156, v157);
    v166 = objc_msgSend_protectedFullToken(v163, v164, v165);
    objc_msgSend_setProtectedFullToken_(inited, v167, v166);

    v170 = objc_msgSend_shareMetadata(v19, v168, v169);
    v173 = objc_msgSend_rootRecordType(v170, v171, v172);
    v176 = objc_msgSend_name(v173, v174, v175);
    objc_msgSend_setRootRecordType_(inited, v177, v176);

    if (objc_msgSend_recordsCount(v19, v178, v179))
    {
      v487 = objc_autoreleasePoolPush();
      v184 = objc_msgSend_records(v19, v182, v183);
      v187 = objc_msgSend_firstObject(v184, v185, v186);
      v515 = 0;
      v490 = objc_msgSend_recordFromPRecord_error_(v500, v188, v187, &v515);
      v189 = v515;

      if (v189)
      {
        v192 = *MEMORY[0x277CBC878];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v192);
        }

        v193 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
        {
          v196 = objc_msgSend_records(v19, v194, v195);
          v199 = objc_msgSend_firstObject(v196, v197, v198);
          *buf = 138412546;
          v518 = v199;
          v519 = 2112;
          v520 = v189;
          _os_log_impl(&dword_22506F000, v193, OS_LOG_TYPE_INFO, "Warn: Couldn't get a root record from %@: %@", buf, 0x16u);
        }
      }

      v200 = v490;
      v204 = objc_msgSend_recordID(v490, v190, v191);
      objc_msgSend_setHierarchicalRootRecordID_(inited, v201, v204);

      LODWORD(v204) = objc_msgSend_shouldFetchRootRecord(self, v202, v203);
      if (objc_msgSend_recordsCount(v19, v205, v206) <= v204)
      {
        v212 = 0;
        v251 = v487;
        objc_msgSend_setSharedItemHierarchyIDs_(inited, v207, 0);
      }

      else
      {
        v204 = v204;
        v208 = *MEMORY[0x277CBC878];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v208);
        }

        v209 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v209, OS_LOG_TYPE_DEBUG))
        {
          v458 = objc_msgSend_recordsCount(v19, v210, v211);
          *buf = 134217984;
          v518 = v458 - v204;
          _os_log_debug_impl(&dword_22506F000, v209, OS_LOG_TYPE_DEBUG, "Found %lu additional share hierarchy records", buf, 0xCu);
        }

        v212 = objc_opt_new();
        v215 = objc_msgSend_records(v19, v213, v214);
        v218 = objc_msgSend_count(v215, v216, v217);

        if (v218 > v204)
        {
          v486 = 138543362;
          while (1)
          {
            v221 = objc_msgSend_records(v19, v219, v220, v486);
            v223 = objc_msgSend_objectAtIndex_(v221, v222, v204);

            v224 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v224);
            }

            v225 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(v225, OS_LOG_TYPE_DEBUG))
            {
              v244 = objc_msgSend_recordIdentifier(v223, v226, v227);
              v247 = objc_msgSend_value(v244, v245, v246);
              v250 = objc_msgSend_name(v247, v248, v249);
              *buf = v486;
              v518 = v250;
              _os_log_debug_impl(&dword_22506F000, v225, OS_LOG_TYPE_DEBUG, "Parsing share hierarchy record %{public}@", buf, 0xCu);
            }

            v230 = objc_msgSend_recordIdentifier(v223, v228, v229);
            v514 = 0;
            v232 = objc_msgSend_recordIDFromPRecordIdentifier_error_(v500, v231, v230, &v514);
            v233 = v514;

            v234 = *MEMORY[0x277CBC878];
            v235 = *MEMORY[0x277CBC880];
            if (v233 || !v232)
            {
              break;
            }

            if (v235 != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v234);
            }

            v236 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(v236, OS_LOG_TYPE_DEBUG))
            {
              *buf = v486;
              v518 = v232;
              _os_log_debug_impl(&dword_22506F000, v236, OS_LOG_TYPE_DEBUG, "Parsed share hierarchy record ID %{public}@", buf, 0xCu);
            }

            objc_msgSend_addObject_(v212, v237, v232);
            ++v204;
            v240 = objc_msgSend_records(v19, v238, v239);
            v243 = objc_msgSend_count(v240, v241, v242);

            if (v204 >= v243)
            {
              goto LABEL_74;
            }
          }

          if (v235 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v234);
          }

          v254 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(v254, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v518 = v223;
            v519 = 2112;
            v520 = v233;
            _os_log_impl(&dword_22506F000, v254, OS_LOG_TYPE_INFO, "Warn: Couldn't get a shared hierarchy record ID from %@: %@", buf, 0x16u);
          }

          objc_msgSend_removeAllObjects(v212, v255, v256);
LABEL_74:
          inited = v499;
        }

        v251 = v487;
        v200 = v490;
        objc_msgSend_setSharedItemHierarchyIDs_(inited, v219, v212);
      }

      if (objc_msgSend_shouldFetchRootRecord(self, v252, v253))
      {
        objc_msgSend_setRootRecord_(inited, v257, v200);
      }

      objc_autoreleasePoolPop(v251);
    }

    v258 = objc_msgSend_shareMetadata(v19, v180, v181);
    hasCallerParticipant = objc_msgSend_hasCallerParticipant(v258, v259, v260);

    if (hasCallerParticipant)
    {
      v264 = objc_msgSend_shareMetadata(v19, v262, v263);
      v267 = objc_msgSend_callerParticipant(v264, v265, v266);
      v270 = objc_msgSend_recordID(v497, v268, v269);
      v513 = 0;
      v272 = objc_msgSend_shareParticipantFromPParticipant_shareID_error_(v500, v271, v267, v270, &v513);
      v273 = v513;
      objc_msgSend_setCallingParticipant_(inited, v274, v272);

      v277 = objc_msgSend_callingParticipant(inited, v275, v276);
      objc_msgSend_setIsCurrentUser_(v277, v278, 1);

      v279 = *MEMORY[0x277CBC878];
      v280 = *MEMORY[0x277CBC880];
      if (v273)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v279);
        }

        v281 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v281, OS_LOG_TYPE_INFO))
        {
          v284 = objc_msgSend_shareMetadata(v19, v282, v283);
          v287 = objc_msgSend_callerParticipant(v284, v285, v286);
          *buf = 138412546;
          v518 = v287;
          v519 = 2112;
          v520 = v273;
          _os_log_impl(&dword_22506F000, v281, OS_LOG_TYPE_INFO, "Warn: Couldn't get a calling participant from %@: %@", buf, 0x16u);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v279);
        }

        v273 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v273, OS_LOG_TYPE_INFO))
        {
          v290 = objc_msgSend_callingParticipant(inited, v288, v289);
          *buf = 138412290;
          v518 = v290;
          _os_log_impl(&dword_22506F000, v273, OS_LOG_TYPE_INFO, "Parsed calling participant: %@", buf, 0xCu);
        }
      }
    }

    v291 = objc_msgSend_share(inited, v262, v263);
    v294 = objc_msgSend_currentUserParticipant(v291, v292, v293);

    if (!v294)
    {
      v297 = objc_msgSend_callingParticipant(inited, v295, v296);

      if (v297)
      {
        v488 = v4;
        v491 = v19;
        v486 = self;
        v512 = 0u;
        v510 = 0u;
        v511 = 0u;
        v509 = 0u;
        v298 = objc_msgSend_share(inited, v295, v296);
        v301 = objc_msgSend_participants(v298, v299, v300);

        v303 = objc_msgSend_countByEnumeratingWithState_objects_count_(v301, v302, &v509, v525, 16);
        if (v303)
        {
          v306 = v303;
          v307 = *v510;
          while (2)
          {
            for (i = 0; i != v306; ++i)
            {
              if (*v510 != v307)
              {
                objc_enumerationMutation(v301);
              }

              v309 = *(*(&v509 + 1) + 8 * i);
              v310 = objc_msgSend_participantID(v309, v304, v305);
              v313 = objc_msgSend_callingParticipant(inited, v311, v312);
              v316 = objc_msgSend_participantID(v313, v314, v315);
              isEqualToString = objc_msgSend_isEqualToString_(v310, v317, v316);

              if (isEqualToString)
              {
                objc_msgSend_setIsCurrentUser_(v309, v304, 1);
                inited = v499;
                goto LABEL_103;
              }

              inited = v499;
            }

            v306 = objc_msgSend_countByEnumeratingWithState_objects_count_(v301, v304, &v509, v525, 16);
            if (v306)
            {
              continue;
            }

            break;
          }
        }

LABEL_103:

        v4 = v488;
        v19 = v491;
        self = v486;
      }
    }

    v319 = objc_msgSend_share(inited, v295, v296);
    v322 = objc_msgSend_currentUserParticipant(v319, v320, v321);

    v323 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v323);
    }

    v324 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v324, OS_LOG_TYPE_DEBUG))
    {
      v454 = objc_msgSend_share(inited, v325, v326);
      v457 = objc_msgSend_recordID(v454, v455, v456);
      *buf = 138543618;
      v518 = v457;
      v519 = 2112;
      v520 = v322;
      _os_log_debug_impl(&dword_22506F000, v324, OS_LOG_TYPE_DEBUG, "Found current user participant on share %{public}@: %@", buf, 0x16u);
    }

    v329 = objc_msgSend_shareMetadata(v19, v327, v328);
    v332 = objc_msgSend_hasOwnerParticipant(v329, v330, v331);

    if (v332)
    {
      v335 = objc_msgSend_shareMetadata(v19, v333, v334);
      v338 = objc_msgSend_ownerParticipant(v335, v336, v337);
      objc_msgSend_recordID(v497, v339, v340);
      v341 = v19;
      v343 = v342 = self;
      v508 = 0;
      v345 = objc_msgSend_shareParticipantFromPParticipant_shareID_error_(v500, v344, v338, v343, &v508);
      v101 = v508;

      self = v342;
      v19 = v341;

      v348 = objc_msgSend_userIdentity(v345, v346, v347);
      objc_msgSend_setOwnerIdentity_(inited, v349, v348);

      if (v101)
      {
        goto LABEL_135;
      }
    }

    v350 = objc_msgSend_shareMetadata(v19, v333, v334);
    hasSignedCryptoRequirements = objc_msgSend_hasSignedCryptoRequirements(v350, v351, v352);

    if (hasSignedCryptoRequirements)
    {
      v356 = v322;
      v357 = v19;
      v358 = self;
      v492 = v357;
      v359 = objc_msgSend_shareMetadata(v357, v354, v355);
      v362 = objc_msgSend_signedCryptoRequirements(v359, v360, v361);
      v365 = objc_msgSend_recordID(v497, v363, v364);
      v368 = objc_msgSend_zoneID(v365, v366, v367);
      v506 = 0;
      v507 = 0;
      v370 = objc_msgSend_cryptoRequirementsFromPSignedCryptoRequirements_zoneID_error_requiredFeaturesValidationFailureType_(v500, v369, v362, v368, &v507, &v506);
      v101 = v507;
      v371 = v506;

      if (!(v101 | v371))
      {
        v374 = objc_msgSend_requiredAdopterFeatures(v370, v372, v373);

        if (v374)
        {
          v376 = objc_msgSend_requiredAdopterFeatures(v370, v372, v375);
          inited = v499;
          objc_msgSend_setRequiredFeatures_(v499, v377, v376);

          self = v358;
          v19 = v492;
          v322 = v356;
          objc_msgSend_shareRecord(v492, v378, v379);
          v382 = LABEL_119:;
          v385 = objc_msgSend_shareInfo(v382, v383, v384);
          v388 = objc_msgSend_potentialMatchsCount(v385, v386, v387);

          if (v388)
          {
            v391 = objc_msgSend_shareRecord(v19, v389, v390);
            v394 = objc_msgSend_shareInfo(v391, v392, v393);
            v397 = objc_msgSend_potentialMatchs(v394, v395, v396);
            v503[0] = MEMORY[0x277D85DD0];
            v503[1] = 3221225472;
            v503[2] = sub_2253D8234;
            v503[3] = &unk_27854D620;
            v504 = v500;
            v505 = v497;
            objc_msgSend_CKCompactMap_(v397, v398, v503);
            v399 = v19;
            v401 = v400 = self;
            objc_msgSend_setOutOfNetworkMatches_(inited, v402, v401);

            self = v400;
            v19 = v399;
          }

          if (objc_msgSend_hasRecordZone(v19, v389, v390))
          {
            v405 = objc_msgSend_recordZone(v19, v403, v404);
            v501 = 0;
            v502 = 0;
            v407 = objc_msgSend_recordZoneFromPRecordZone_error_requiredFeaturesValidationFailureType_(v500, v406, v405, &v502, &v501);
            v101 = v502;
            v408 = v501;

            v409 = *MEMORY[0x277CBC878];
            v410 = *MEMORY[0x277CBC880];
            if (v101)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v409);
              }

              v411 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(v411, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v518 = v101;
                _os_log_error_impl(&dword_22506F000, v411, OS_LOG_TYPE_ERROR, "Couldn't parse shared zone from resolve token response: %@", buf, 0xCu);
              }
            }

            else
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v409);
              }

              v411 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(v411, OS_LOG_TYPE_DEBUG))
              {
                v489 = v322;
                v493 = objc_msgSend_zoneID(v407, v412, v413);
                v463 = objc_msgSend_share(v407, v459, v460);
                if (v463)
                {
                  v464 = @" with shareID ";
                }

                else
                {
                  v464 = @" without any shareID ";
                }

                v467 = objc_msgSend_share(v407, v461, v462);
                if (v467)
                {
                  v486 = objc_msgSend_share(v407, v465, v466);
                  v468 = objc_msgSend_recordID(v486, v469, v470);
                }

                else
                {
                  v468 = &stru_28385ED00;
                }

                *buf = 138544130;
                v518 = v493;
                v519 = 2114;
                v520 = v464;
                v521 = 2114;
                v471 = v468;
                v522 = v468;
                v523 = 2112;
                v524 = v499;
                _os_log_debug_impl(&dword_22506F000, v411, OS_LOG_TYPE_DEBUG, "Parsed zone %{public}@%{public}@%{public}@ from response for share metadata %@", buf, 0x2Au);
                if (v467)
                {
                }

                v322 = v489;
              }
            }

            v417 = objc_msgSend_share(v407, v414, v415);
            if (v417)
            {
              v418 = v407;
            }

            else
            {
              v418 = 0;
            }

            objc_msgSend_setSharedZone_(v499, v416, v418);

            inited = v499;
          }

          else
          {
            v101 = 0;
          }

LABEL_135:

          goto LABEL_136;
        }
      }

      inited = v499;
      if ((objc_msgSend_isEqualToString_(v371, v372, @"unsupportedCryptoRequirementsVersion") & 1) != 0 || objc_msgSend_isEqualToString_(v371, v380, @"unsupportedCryptoFeatureRequirementsVersion"))
      {
        v381 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v380, *MEMORY[0x277CBC120], 5021, @"Crypto requirements in the share metadata are not supported by this OS version");

        v101 = v381;
      }

      self = v358;
      v322 = v356;

      v19 = v492;
      if (v101)
      {
        goto LABEL_135;
      }
    }

    objc_msgSend_shareRecord(v19, v354, v355);
    goto LABEL_119;
  }

  v473 = objc_alloc(MEMORY[0x277CBC698]);
  inited = objc_msgSend_initInternal(v473, v474, v475);
  objc_msgSend_setAccessRequestsEnabled_(inited, v476, 1);
  v479 = objc_msgSend_tokenResolveBlock(self, v477, v478);

  if (v479)
  {
    v482 = objc_msgSend_tokenResolveBlock(self, v480, v481);
    v485 = objc_msgSend_result(v4, v483, v484);
    (v482)[2](v482, v498, inited, v485);
  }

  v451 = 0;
LABEL_141:

  v452 = *MEMORY[0x277D85DE8];

  return v451;
}

- (void)requestDidParseNodeFailure:(id)a3
{
  v24 = a3;
  v6 = objc_msgSend_response(v24, v4, v5);
  v9 = objc_msgSend_operationUUID(v6, v7, v8);

  v12 = objc_msgSend_lookupInfosByRequestID(self, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v9);

  v17 = objc_msgSend_tokenResolveBlock(self, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_tokenResolveBlock(self, v18, v19);
    v23 = objc_msgSend_result(v24, v21, v22);
    (v20)[2](v20, v14, 0, v23);
  }
}

@end