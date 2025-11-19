@interface CKDFetchRecordZonesOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)_locked_checkAndUpdateZonePCSIfNeededForZone:(id)a3 error:(id *)a4;
- (BOOL)makeStateTransition;
- (CKDFetchRecordZonesOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (void)_cachePCSOnRecordZone:(id)a3;
- (void)_continueHandlingFetchedRecordZone:(id)a3 zoneID:(id)a4;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_handleAnonymousZoneDataObjects:(id)a3 responsecode:(id)a4;
- (void)_handleRecordZoneFetch:(id)a3 zoneID:(id)a4 responseCode:(id)a5 error:(id)a6;
- (void)_handleRecordZoneSaved:(id)a3 error:(id)a4;
- (void)_locked_callbackForRecordZone:(id)a3 zoneID:(id)a4 error:(id)a5;
- (void)_sendErrorForFailedZones;
- (void)fetchZonesFromServer:(id)a3;
- (void)main;
- (void)saveZonesWithUpdatedZonePCS;
@end

@implementation CKDFetchRecordZonesOperation

- (CKDFetchRecordZonesOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = CKDFetchRecordZonesOperation;
  v9 = [(CKDDatabaseOperation *)&v25 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_recordZoneIDs(v6, v7, v8);
    recordZoneIDs = v9->_recordZoneIDs;
    v9->_recordZoneIDs = v10;

    v9->_isFetchAllRecordZonesOperation = objc_msgSend_isFetchAllRecordZonesOperation(v6, v12, v13);
    v9->_ignorePCSFailures = objc_msgSend_ignorePCSFailures(v6, v14, v15);
    v16 = objc_opt_new();
    zonesToSaveForPCSUpdateByZoneID = v9->_zonesToSaveForPCSUpdateByZoneID;
    v9->_zonesToSaveForPCSUpdateByZoneID = v16;

    v18 = objc_opt_new();
    zoneIDsNeedingPCSUpdateRetry = v9->_zoneIDsNeedingPCSUpdateRetry;
    v9->_zoneIDsNeedingPCSUpdateRetry = v18;

    v20 = objc_opt_new();
    pcsUpdateErrorsByZoneID = v9->_pcsUpdateErrorsByZoneID;
    v9->_pcsUpdateErrorsByZoneID = v20;

    v22 = objc_opt_new();
    zoneIDsNeedingDugongKeyRoll = v9->_zoneIDsNeedingDugongKeyRoll;
    v9->_zoneIDsNeedingDugongKeyRoll = v22;
  }

  return v9;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  switch(v4)
  {
    case 3:
      if (objc_msgSend_shouldRetry(self, v5, v6))
      {
        v13 = objc_msgSend_numZoneSaveAttempts(self, v11, v12);
        v16 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15);
        if (v13 >= objc_msgSend_PCSRetryCount(v16, v17, v18))
        {
        }

        else
        {
          v21 = objc_msgSend_zoneIDsNeedingPCSUpdateRetry(self, v19, v20);
          v24 = objc_msgSend_count(v21, v22, v23);

          if (v24)
          {
            objc_msgSend_setShouldRetry_(self, v11, 0);
            v27 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(self, v25, v26);
            objc_msgSend_removeAllObjects(v27, v28, v29);

            v32 = objc_msgSend_zoneIDsNeedingPCSUpdateRetry(self, v30, v31);
            v35 = objc_msgSend_copy(v32, v33, v34);
            objc_msgSend_setRecordZoneIDs_(self, v36, v35);

            v39 = objc_msgSend_zoneIDsNeedingPCSUpdateRetry(self, v37, v38);
            objc_msgSend_removeAllObjects(v39, v40, v41);

LABEL_4:
            objc_msgSend_setState_(self, v5, 2);
            objc_msgSend_fetchZonesFromServer(self, v7, v8);
            return 1;
          }
        }
      }

      objc_msgSend__sendErrorForFailedZones(self, v11, v12);
      objc_msgSend_setState_(self, v42, 0xFFFFFFFFLL);
      v45 = objc_msgSend_error(self, v43, v44);
      objc_msgSend_finishWithError_(self, v46, v45);

      return 1;
    case 2:
      objc_msgSend_setState_(self, v5, 3);
      objc_msgSend_saveZonesWithUpdatedZonePCS(self, v9, v10);
      return 1;
    case 1:
      goto LABEL_4;
  }

  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = @"Fetching Zones";
  }

  else if (a3 == 3)
  {
    v5 = @"Updating Zone PCS";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDFetchRecordZonesOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-record-zones", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_sendErrorForFailedZones
{
  v64 = *MEMORY[0x277D85DE8];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v4 = objc_msgSend_zoneIDsNeedingPCSUpdateRetry(self, a2, v2);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v53, v63, 16);
  if (v6)
  {
    v9 = v6;
    v10 = 0;
    v11 = *v54;
    v47 = *MEMORY[0x277CBC120];
    obj = v4;
    do
    {
      v12 = 0;
      do
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v53 + 1) + 8 * v12);
        v14 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(self, v7, v8);
        v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v13);

        v19 = objc_msgSend_pcsUpdateErrorsByZoneID(self, v17, v18);
        v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v13);

        if (!v21)
        {
          v21 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v22, v47, 2037, 0, @"Error saving record zone %@ to server: Protection data didn't match", v13);
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v23 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v26 = v23;
          v29 = objc_msgSend_numZoneSaveAttempts(self, v27, v28);
          *buf = 138412802;
          v58 = v13;
          v59 = 2048;
          v60 = v29;
          v61 = 2112;
          v62 = v21;
          _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Failed to save zone %@ to the server %ld times with error %@", buf, 0x20u);
        }

        if (objc_msgSend_code(v21, v24, v25) == 2053)
        {
          v10 |= objc_msgSend_numZoneSaveAttempts(self, v30, v31) > 1;
        }

        v32 = objc_msgSend_callbackQueue(self, v30, v31);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2252471EC;
        block[3] = &unk_2785463D0;
        block[4] = self;
        v50 = v16;
        v51 = v13;
        v52 = v21;
        v33 = v21;
        v34 = v16;
        dispatch_async(v32, block);

        ++v12;
      }

      while (v9 != v12);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v53, v63, 16);
    }

    while (v9);

    if (v10)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v35 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        v36 = v35;
        v39 = objc_msgSend_zoneIDsNeedingPCSUpdateRetry(self, v37, v38);
        v42 = objc_msgSend_count(v39, v40, v41);
        v45 = objc_msgSend_operationID(self, v43, v44);
        *buf = 134218242;
        v58 = v42;
        v59 = 2114;
        v60 = v45;
        _os_log_fault_impl(&dword_22506F000, v36, OS_LOG_TYPE_FAULT, "Failed to save %lu zones for operation %{public}@ despite user key sync.", buf, 0x16u);
      }
    }
  }

  else
  {
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)_locked_callbackForRecordZone:(id)a3 zoneID:(id)a4 error:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_callbackQueue(self, v11, v12);
  dispatch_assert_queue_V2(v13);

  v16 = objc_msgSend_zoneID(v8, v14, v15);
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v9;
  }

  v19 = v18;

  if (v19)
  {
    v22 = objc_msgSend_zoneIDsNeedingDugongKeyRoll(self, v20, v21);
    v24 = objc_msgSend_containsObject_(v22, v23, v19);

    if (v24)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v25 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v33 = v25;
        v36 = objc_msgSend_operationID(self, v34, v35);
        v37 = 138543618;
        v38 = v36;
        v39 = 2114;
        v40 = 0x28387E400;
        _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Operation %{public}@ sending CoreAnalytics event %{public}@", &v37, 0x16u);
      }

      v27 = objc_msgSend_dugongKeyRollAnalyticsPayloadWithError_(self, v26, v10);
      AnalyticsSendEvent();
    }
  }

  v28 = objc_msgSend_recordZoneFetchedProgressBlock(self, v20, v21);

  if (v28)
  {
    v31 = objc_msgSend_recordZoneFetchedProgressBlock(self, v29, v30);
    (v31)[2](v31, v8, v19, v10);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)_locked_checkAndUpdateZonePCSIfNeededForZone:(id)a3 error:(id *)a4
{
  v478 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v10 = objc_msgSend_callbackQueue(self, v8, v9);
  dispatch_assert_queue_V2(v10);

  if (objc_msgSend_databaseScope(self, v11, v12) != 2)
  {
    goto LABEL_4;
  }

  v15 = objc_msgSend_container(self, v13, v14);
  v18 = objc_msgSend_options(v15, v16, v17);
  if (objc_msgSend_useAnonymousToServerShareParticipants(v18, v19, v20))
  {
    v23 = objc_msgSend_zoneID(v7, v21, v22);
    v26 = objc_msgSend_zoneName(v23, v24, v25);
    isEqualToString = objc_msgSend_isEqualToString_(v26, v27, *MEMORY[0x277CBC068]);

    if (isEqualToString)
    {
LABEL_4:
      v31 = 0;
      goto LABEL_148;
    }
  }

  else
  {
  }

  v32 = a4;
  v441 = a2;
  v33 = objc_msgSend_container(self, v29, v30);
  v36 = objc_msgSend_pcsManager(v33, v34, v35);
  v39 = objc_msgSend_zonePCS(v7, v37, v38);
  v451 = objc_msgSend_zoneishPCS(v7, v40, v41);
  v44 = objc_msgSend_deviceContext(v33, v42, v43);
  v49 = objc_msgSend_testDeviceReference(v44, v45, v46);
  if (v49)
  {
    v50 = objc_msgSend_zoneID(v7, v47, v48);
    v53 = objc_msgSend_zoneName(v50, v51, v52);
    v444 = objc_msgSend_isEqualToString_(v53, v54, @"UpdateBreakerZone");
  }

  else
  {
    v444 = 0;
  }

  v452 = v33;
  if (*MEMORY[0x277CBC810] != 1)
  {
    v442 = 0;
    v446 = 0;
    v449 = 0;
    v62 = v39;
    v445 = v32;
    v69 = v451;
    goto LABEL_15;
  }

  v57 = objc_msgSend_unitTestOverrides(self, v55, v56);
  v59 = objc_msgSend_objectForKeyedSubscript_(v57, v58, @"ZonePCSIdentityRollPartialFailure");

  v62 = v39;
  if (v59)
  {
    v63 = PCSFPCreatePrivateKey();
    v65 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v64, *MEMORY[0x277CBC120], 5018, @"Partially failing zone identity update because unit tests");
    v66 = v36;
    if (v63)
    {
      CFRelease(v63);
    }

    v31 = 0;
    v67 = 0;
    v68 = v32;
    goto LABEL_144;
  }

  v136 = objc_msgSend_unitTestOverrides(self, v60, v61);
  v138 = objc_msgSend_objectForKeyedSubscript_(v136, v137, @"RollZoneishMasterKeyOnFetch");

  v141 = v138 != 0;
  if (v138)
  {
    _PCSFPSetShouldRoll();
  }

  v448 = v36;
  v142 = objc_msgSend_unitTestOverrides(self, v139, v140);
  v144 = objc_msgSend_objectForKeyedSubscript_(v142, v143, @"RollZoneAndZoneishPCSForShareDelete");

  v145 = v144 != 0;
  v149 = objc_msgSend_checkAndClearUnitTestOverrides_(self, v146, @"ForceShouldRollOnceForZonePCSOnDecrypt");
  v68 = v32;
  if (v149)
  {
    _PCSFPSetShouldRoll();
  }

  v150 = objc_msgSend_unitTestOverrides(self, v147, v148);
  v152 = objc_msgSend_objectForKeyedSubscript_(v150, v151, @"ForceShouldRollAlwaysForZonePCSOnDecrypt");

  if (v152)
  {
    v149 = 1;
    _PCSFPSetShouldRoll();
  }

  v155 = objc_msgSend_unitTestOverrides(self, v153, v154);
  v157 = objc_msgSend_objectForKeyedSubscript_(v155, v156, @"ForceZoneResaveButNoKeysRolled");

  if (!v157)
  {
    v224 = objc_msgSend_unitTestOverrides(self, v158, v159);
    v226 = objc_msgSend_objectForKeyedSubscript_(v224, v225, @"RollZoneIdentityOnFetch");

    if (v226)
    {
      v227 = self;
      v228 = objc_msgSend_pcsManager(v452, v55, v56);
      v231 = objc_msgSend_protectionData(v7, v229, v230);
      v468 = 0;
      v233 = objc_msgSend_createSharePCSFromData_ofType_withService_error_(v228, v232, v231, 3, 3, &v468);
      v65 = v468;

      objc_msgSend_setZonePCS_(v7, v234, v233);
      if (v233)
      {
        CFRelease(v233);
      }

      if (v65)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v33 = v452;
        v66 = v448;
        v237 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v472 = v65;
          _os_log_error_impl(&dword_22506F000, v237, OS_LOG_TYPE_ERROR, "Couldn't create zone PCS from data: %@", buf, 0xCu);
        }

        v31 = 0;
        goto LABEL_108;
      }

      v442 = v145;
      v449 = v141;
      v69 = v451;
      v445 = v32;
      v446 = 1;
      self = v227;
      v62 = objc_msgSend_zonePCS(v7, v235, v236);
    }

    else
    {
      v442 = v145;
      v446 = v149;
      v449 = v141;
      v69 = v451;
      v445 = v32;
    }

    v36 = v448;
LABEL_15:
    v70 = objc_msgSend_zonePCSKeysToRemove(v7, v55, v56);
    v73 = objc_msgSend_protectionEtag(v7, v71, v72);
    v74 = v62;
    v76 = objc_msgSend_removePCSKeys_fromPCS_withProtectionEtag_forOperation_(v36, v75, v70, v62, v73, self);
    v77 = v7;
    v78 = v76;

    v81 = objc_msgSend_zoneishPCSKeysToRemove(v77, v79, v80);
    v82 = v77;
    v85 = objc_msgSend_zoneishProtectionData(v77, v83, v84);
    v87 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v86, v85);
    v88 = v36;
    v90 = objc_msgSend_removePCSKeys_fromPCS_withProtectionEtag_forOperation_(v36, v89, v81, v69, v87, self);

    v439 = v78;
    v440 = v90;
    if (v78 | v90)
    {
      v467[0] = MEMORY[0x277D85DD0];
      v467[1] = 3221225472;
      v467[2] = sub_2252495DC;
      v467[3] = &unk_27854AC90;
      v467[4] = v78;
      v467[5] = v90;
      objc_msgSend_updateCloudKitMetrics_(self, v91, v467);
    }

    v93 = objc_msgSend_pcsManager(v452, v91, v92);
    v447 = v88;
    if (objc_msgSend_canRollShareKeys(v93, v94, v95))
    {
      v7 = v82;
      v98 = objc_msgSend_invitedKeysToRemove(v82, v96, v97);
      v101 = objc_msgSend_count(v98, v99, v100);
      v102 = v442;
      if (v101)
      {
        v102 = 1;
      }

      v443 = v102;

      v103 = v74;
    }

    else
    {
      v443 = 0;
      v103 = v74;
      v7 = v82;
    }

    v106 = objc_msgSend_pcsManager(v452, v104, v105);
    isZoneishZone_bypassAllowlistedContainers = objc_msgSend_zonePCSNeedsKeyRolled_isZoneishZone_bypassAllowlistedContainers_(v106, v107, v103, v451 != 0, 0);

    v111 = objc_msgSend_pcsManager(v452, v109, v110);
    isSinglyWrappedRemindersZone = objc_msgSend_isSinglyWrappedRemindersZone_(v111, v112, v103);

    v116 = objc_msgSend_containerID(self, v114, v115);
    v119 = objc_msgSend_specialContainerType(v116, v117, v118);

    v122 = 0;
    v123 = 0;
    if (v119 == 25 && (isSinglyWrappedRemindersZone & 1) == 0)
    {
      v124 = objc_msgSend_container(self, v120, v121);
      v127 = objc_msgSend_pcsManager(v124, v125, v126);
      v128 = v103;
      v129 = v127;
      v466 = 0;
      v131 = objc_msgSend_dataFromZonePCS_error_(v127, v130, v128, &v466);
      v132 = self;
      v65 = v466;

      if (v65)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v33 = v452;
        v66 = v447;
        v135 = *MEMORY[0x277CBC830];
        v68 = v445;
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v472 = v65;
          _os_log_impl(&dword_22506F000, v135, OS_LOG_TYPE_INFO, "Warn: Couldn't export protection data for decrypting with Reminders identity: %@", buf, 0xCu);
        }

        v122 = 0;
LABEL_113:

        v67 = 0;
LABEL_114:
        v31 = 0;
        goto LABEL_142;
      }

      v432 = v132;
      v179 = objc_msgSend_container(v132, v133, v134);
      v182 = objc_msgSend_pcsManager(v179, v180, v181);
      v465 = 0;
      v122 = objc_msgSend_createSharePCSFromData_ofType_withService_error_(v182, v183, v131, 3, 4, &v465);
      v65 = v465;

      if (!v122 || v65)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v33 = v452;
        v66 = v447;
        v280 = *MEMORY[0x277CBC858];
        v68 = v445;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          v395 = v280;
          v398 = objc_msgSend_zoneID(v7, v396, v397);
          *buf = 138412546;
          v472 = v398;
          v473 = 2112;
          v474 = v65;
          _os_log_error_impl(&dword_22506F000, v395, OS_LOG_TYPE_ERROR, "Couldn't decrypt zone %@ with Reminders identity: %@", buf, 0x16u);
        }

        goto LABEL_113;
      }

      v186 = objc_msgSend_pcsManager(v452, v184, v185);
      v123 = objc_msgSend_zonePCSNeedsKeyRolled_isZoneishZone_bypassAllowlistedContainers_(v186, v187, v122, v451 != 0, 0);

      self = v432;
      v103 = v74;
    }

    v435 = isSinglyWrappedRemindersZone;
    v188 = isZoneishZone_bypassAllowlistedContainers | v446 | v443;
    v33 = v452;
    v189 = v451 != 0;
    if (!((v451 == 0) | v188 & 1))
    {
      v189 = v449 | v123;
    }

    v437 = isZoneishZone_bypassAllowlistedContainers | v446 | v443;
    v438 = v189;
    if (((v188 | v123) & 1) != 0 || v189)
    {
      objc_msgSend_pcsManager(v452, v120, v121);
      v190 = v122;
      v192 = v191 = v123;
      v194 = objc_msgSend_sizeOfPCS_(v192, v193, v103);
      v197 = objc_msgSend_pcsManager(v452, v195, v196);
      v199 = objc_msgSend_sizeOfPCS_(v197, v198, v451);

      v202 = objc_msgSend_pcsManager(v452, v200, v201);
      v203 = v199 + v194;
      v103 = v74;
      LODWORD(v194) = objc_msgSend_isPCSSizeTooBigForKeyRoll_(v202, v204, v203);

      v123 = v191;
      v122 = v190;
      if (v194)
      {
        v66 = v447;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v445;
        v205 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
        {
          v207 = v205;
          v210 = objc_msgSend_zoneID(v7, v208, v209);
          *buf = 138412290;
          v472 = v210;
          _os_log_impl(&dword_22506F000, v207, OS_LOG_TYPE_INFO, "Skipping PCS key roll for zone %@ because the combined PCS size is too big", buf, 0xCu);
        }

        objc_msgSend_updateCloudKitMetrics_(self, v206, &unk_28385D7C0);
        v67 = 0;
        v31 = 0;
        v65 = 0;
        goto LABEL_142;
      }
    }

    v211 = v437;
    v66 = v447;
    v436 = v122;
    HIDWORD(v429) = v123;
    if (v437)
    {
      LODWORD(v429) = v437;
      v212 = *MEMORY[0x277CBC878];
      v213 = MEMORY[0x277CBC880];
      v68 = v445;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v212);
      }

      v214 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v214, OS_LOG_TYPE_INFO))
      {
        v217 = objc_msgSend_zoneID(v7, v215, v216);
        *buf = 138412290;
        v472 = v217;
        _os_log_impl(&dword_22506F000, v214, OS_LOG_TYPE_INFO, "Updating identity on zone PCS for zone %@", buf, 0xCu);
      }

      if (*MEMORY[0x277CBC810] == 1)
      {
        v220 = objc_msgSend_unitTestOverrides(self, v218, v219);
        v222 = objc_msgSend_objectForKeyedSubscript_(v220, v221, @"testUpdatingZonePCSAfterIdentityRoll");

        if (v222)
        {
          v223 = 3;
        }

        else
        {
          v223 = 0;
        }
      }

      else
      {
        v223 = 0;
      }

      if (v443)
      {
        objc_msgSend_setDidAttemptDugongKeyRoll_(self, v218, 1);
        v433 = self;
        v240 = objc_msgSend_zoneIDsNeedingDugongKeyRoll(self, v238, v239);
        v243 = objc_msgSend_zoneID(v7, v241, v242);
        objc_msgSend_addObject_(v240, v244, v243);

        v463 = 0u;
        v464 = 0u;
        v461 = 0u;
        v462 = 0u;
        v450 = v7;
        v247 = objc_msgSend_invitedKeysToRemove(v7, v245, v246);
        v249 = objc_msgSend_countByEnumeratingWithState_objects_count_(v247, v248, &v461, v477, 16);
        if (v249)
        {
          v252 = v249;
          v253 = *v462;
          do
          {
            v254 = 0;
            do
            {
              if (*v462 != v253)
              {
                objc_enumerationMutation(v247);
              }

              v255 = *(*(&v461 + 1) + 8 * v254);
              v256 = objc_msgSend_pcsManager(v33, v250, v251, v429);
              v258 = objc_msgSend_removePublicKeyID_fromPCS_(v256, v257, v255, v103);

              if (v258)
              {
                v259 = *MEMORY[0x277CBC878];
                if (*v213 != -1)
                {
                  dispatch_once(v213, v259);
                }

                v260 = *MEMORY[0x277CBC858];
                if (os_log_type_enabled(v260, OS_LOG_TYPE_ERROR))
                {
                  v263 = objc_msgSend_zoneID(v450, v261, v262);
                  *buf = 138543874;
                  v472 = v255;
                  v473 = 2112;
                  v474 = v263;
                  v475 = 2112;
                  v476 = v258;
                  _os_log_error_impl(&dword_22506F000, v260, OS_LOG_TYPE_ERROR, "Failed to remove server provided invited key %{public}@ from zone %@: %@", buf, 0x20u);

                  v33 = v452;
                }
              }

              ++v254;
              v103 = v74;
            }

            while (v252 != v254);
            v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(v247, v250, &v461, v477, 16);
          }

          while (v252);
        }

        v266 = objc_msgSend_pcsManager(v33, v264, v265);
        v460 = 0;
        v67 = objc_msgSend_rollIdentityForSharePCS_ofType_removeAllExistingPrivateKeys_error_(v266, v267, v103, 3, 0, &v460);
        v65 = v460;

        if (v65)
        {
          v68 = v445;
          v66 = v447;
          if (*v213 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v7 = v450;
          v269 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
          {
            v270 = v269;
            objc_msgSend_zoneID(v450, v271, v272);
            v274 = v273 = v67;
            *buf = 138412546;
            v472 = v274;
            v473 = 2112;
            v474 = v65;
            _os_log_error_impl(&dword_22506F000, v270, OS_LOG_TYPE_ERROR, "Failed to roll identity for zone PCS for zone %@: %@", buf, 0x16u);

            v67 = v273;
          }

LABEL_140:
          v31 = 0;
LABEL_141:
          v122 = v436;
          goto LABEL_142;
        }

        self = v433;
        objc_msgSend_updateCloudKitMetrics_(v433, v268, &unk_28385D7E0);
        v66 = v447;
        v7 = v450;
        v68 = v445;
      }

      else
      {
        v275 = objc_msgSend_pcsManager(v452, v218, v219);
        objc_msgSend_updateIdentityAndRollKeyForZonePCS_usingServiceIdentityWithType_forOperation_(v275, v276, v103, v223, self);
        v65 = v277 = self;

        if (v65)
        {
          if (*v213 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v278 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
          {
            v399 = v278;
            v402 = objc_msgSend_zoneID(v7, v400, v401);
            *buf = 138412546;
            v472 = v402;
            v473 = 2112;
            v474 = v65;
            _os_log_error_impl(&dword_22506F000, v399, OS_LOG_TYPE_ERROR, "Couldn't update identity on zone PCS for zone %@: %@", buf, 0x16u);
          }

          v67 = 0;
          goto LABEL_140;
        }

        v67 = 0;
        self = v277;
      }

      v211 = v429;
      v123 = HIDWORD(v429);
    }

    else
    {
      v67 = 0;
      v68 = v445;
    }

    v453 = v67;
    if (v123)
    {
      v281 = *MEMORY[0x277CBC878];
      v282 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v281);
      }

      v283 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v283, OS_LOG_TYPE_INFO))
      {
        v286 = objc_msgSend_zoneID(v7, v284, v285);
        *buf = 138412290;
        v472 = v286;
        _os_log_impl(&dword_22506F000, v283, OS_LOG_TYPE_INFO, "Reminders zone %@ needs to be rolled for the Reminders identity", buf, 0xCu);
      }

      v289 = objc_msgSend_pcsManager(v33, v287, v288);
      objc_msgSend_updateIdentityAndRollKeyForZonePCS_usingServiceIdentityWithType_forOperation_(v289, v290, v436, 4, self);
      v65 = v291 = self;

      if (v65)
      {
        if (*v282 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v122 = v436;
        v67 = v453;
        v292 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          v293 = v292;
          v296 = objc_msgSend_zoneID(v7, v294, v295);
          *buf = 138412546;
          v472 = v296;
          v473 = 2112;
          v474 = v65;
          _os_log_error_impl(&dword_22506F000, v293, OS_LOG_TYPE_ERROR, "Couldn't roll Reminders identity on zone PCS for zone %@: %@", buf, 0x16u);

          v67 = v453;
        }

        goto LABEL_114;
      }

      v211 = 1;
      self = v291;
      v103 = v436;
      v67 = v453;
    }

    v297 = v103;
    v298 = v66;
    v299 = v68;
    if (v438)
    {
      v300 = *MEMORY[0x277CBC878];
      v301 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v300);
      }

      v302 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v302, OS_LOG_TYPE_DEBUG))
      {
        v394 = objc_msgSend_zoneID(v7, v303, v304);
        *buf = 138412290;
        v472 = v394;
        _os_log_debug_impl(&dword_22506F000, v302, OS_LOG_TYPE_DEBUG, "Updating zoneish PCS on zone %@", buf, 0xCu);
      }

      v307 = objc_msgSend_pcsManager(v33, v305, v306);
      objc_msgSend_rollMasterKeyForRecordPCS_isZoneishRecord_bypassAllowlistedContainers_forOperation_(v307, v308, v451, 1, v443, self);
      v65 = v309 = self;

      if (v65)
      {
        if (*v301 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v299;
        v67 = v453;
        v312 = *MEMORY[0x277CBC858];
        v66 = v298;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v472 = v65;
          _os_log_error_impl(&dword_22506F000, v312, OS_LOG_TYPE_ERROR, "Couldn't roll master key for zoneish PCS: %@", buf, 0xCu);
        }

        goto LABEL_140;
      }

      v434 = v309;
      v344 = objc_msgSend_pcsManager(v33, v310, v311);
      v459 = 0;
      v346 = objc_msgSend_dataFromRecordPCS_error_(v344, v345, v451, &v459);
      v65 = v459;

      if (v65 || !v346)
      {
        v67 = v453;
        if (*v301 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v299;
        v357 = v346;
        v387 = *MEMORY[0x277CBC858];
        v66 = v298;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v472 = v65;
          _os_log_error_impl(&dword_22506F000, v387, OS_LOG_TYPE_ERROR, "Couldn't serialize zoneish PCS: %@", buf, 0xCu);
        }

        v122 = v436;
        goto LABEL_241;
      }

      v349 = objc_msgSend_pcsManager(v33, v347, v348);
      v458 = 0;
      v351 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v349, v350, v346, 1, v297, &v458);
      v65 = v458;

      if (v65 || !v351)
      {
        if (*v301 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v299;
        v357 = v346;
        v393 = *MEMORY[0x277CBC858];
        v66 = v298;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v472 = v65;
          _os_log_error_impl(&dword_22506F000, v393, OS_LOG_TYPE_ERROR, "Couldn't decode zoneishPCS data: %@", buf, 0xCu);
        }

        v122 = v436;
        if (v351)
        {
          CFRelease(v351);
        }

        goto LABEL_240;
      }

      v354 = objc_msgSend_pcsManager(v33, v352, v353);
      v65 = objc_msgSend_updateZoneIdentityForRecordPCS_usingZonePCS_isZoneishRecord_bypassAllowlistedContainers_(v354, v355, v351, v297, 1, v443);

      if (v65)
      {
        if (*v301 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v299;
        v357 = v346;
        v358 = *MEMORY[0x277CBC858];
        v66 = v298;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          v423 = v358;
          v426 = objc_msgSend_zoneID(v7, v424, v425);
          *buf = 138412546;
          v472 = v426;
          v473 = 2112;
          v474 = v65;
          _os_log_error_impl(&dword_22506F000, v423, OS_LOG_TYPE_ERROR, "Couldn't update identity on zoneish PCS for zone %@: %@", buf, 0x16u);
        }

        CFRelease(v351);
        goto LABEL_239;
      }

      objc_msgSend_setZoneishPCS_(v7, v356, v351);
      CFRelease(v351);
      v405 = objc_msgSend_zoneishPCS(v7, v403, v404);
      v408 = objc_msgSend_pcsManager(v33, v406, v407);
      v457 = 0;
      v451 = v405;
      v410 = objc_msgSend_dataFromRecordPCS_error_(v408, v409, v405, &v457);
      v65 = v457;

      if (v65 || !v410)
      {
        if (*v301 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v299;
        v421 = *MEMORY[0x277CBC858];
        v66 = v298;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v472 = v65;
          _os_log_error_impl(&dword_22506F000, v421, OS_LOG_TYPE_ERROR, "Couldn't serialize zoneish PCS: %@", buf, 0xCu);
        }

        goto LABEL_238;
      }

      objc_msgSend_setZoneishProtectionData_(v7, v411, v410);
      v414 = objc_msgSend_pcsManager(v33, v412, v413);
      v65 = objc_msgSend_removePrivateKeysForKeyIDs_fromPCS_(v414, v415, v453, v297);

      if (v65)
      {
        if (*v301 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v299;
        v416 = *MEMORY[0x277CBC858];
        v66 = v298;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          v417 = v416;
          v420 = objc_msgSend_zoneID(v7, v418, v419);
          *buf = 138412546;
          v472 = v420;
          v473 = 2112;
          v474 = v65;
          _os_log_error_impl(&dword_22506F000, v417, OS_LOG_TYPE_ERROR, "Couldn't clean up old private keys from PCS for zone %@: %@", buf, 0x16u);
        }

LABEL_238:
        v357 = v410;
LABEL_239:
        v122 = v436;
LABEL_240:
        v67 = v453;
LABEL_241:

        goto LABEL_114;
      }

      LODWORD(v429) = 1;
      v67 = v453;
    }

    else
    {
      LODWORD(v429) = v211;
      v434 = self;
    }

    v316 = objc_msgSend_pcsManager(v33, v120, v121, v429);
    v318 = objc_msgSend_zonePCSNeedsUpdate_(v316, v317, v297) | v444;

    if (v318)
    {
      v321 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v321);
      }

      v322 = MEMORY[0x277CBC858];
      v323 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v323, OS_LOG_TYPE_INFO))
      {
        v326 = objc_msgSend_zoneID(v7, v324, v325);
        *buf = 138412290;
        v472 = v326;
        _os_log_impl(&dword_22506F000, v323, OS_LOG_TYPE_INFO, "Updating service identity in zone PCS for zone %@", buf, 0xCu);

        v67 = v453;
      }

      v329 = objc_msgSend_pcsManager(v33, v327, v328);
      v65 = objc_msgSend_updateServiceIdentityOnZonePCS_(v329, v330, v297);

      if (v65)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v122 = v436;
        v331 = *v322;
        if (os_log_type_enabled(*v322, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v472 = v65;
          _os_log_error_impl(&dword_22506F000, v331, OS_LOG_TYPE_ERROR, "Couldn't add our updated service identity to zone PCS: %@", buf, 0xCu);
        }

        v31 = 0;
        v68 = v299;
        v66 = v298;
        goto LABEL_142;
      }
    }

    if (v435)
    {
      v332 = *MEMORY[0x277CBC878];
      v333 = MEMORY[0x277CBC880];
      v68 = v299;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v332);
      }

      v66 = v298;

      v334 = MEMORY[0x277CBC858];
      v335 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v335, OS_LOG_TYPE_INFO))
      {
        v338 = objc_msgSend_zoneID(v7, v336, v337);
        *buf = 138412290;
        v472 = v338;
        _os_log_impl(&dword_22506F000, v335, OS_LOG_TYPE_INFO, "Adding Reminders specific identity for Reminders zone %@", buf, 0xCu);

        v67 = v453;
      }

      v341 = objc_msgSend_pcsManager(v33, v339, v340);
      v65 = objc_msgSend_addIdentityForService_toPCS_(v341, v342, 4, v297);

      if (v65)
      {
        if (*v333 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v343 = *v334;
        v122 = v436;
        if (os_log_type_enabled(*v334, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v472 = v65;
          _os_log_error_impl(&dword_22506F000, v343, OS_LOG_TYPE_ERROR, "Couldn't add Reminders specific identity for Reminders zone PCS: %@", buf, 0xCu);
        }

        goto LABEL_114;
      }
    }

    else
    {
      v68 = v299;
      v66 = v298;
      if (!v439 && ((v438 | v437 | v431 | v318) & 1) == 0 && !v440)
      {
        v31 = 0;
        v65 = 0;
        goto LABEL_141;
      }
    }

    if (v430 & *MEMORY[0x277CBC810])
    {
      v359 = objc_msgSend_unitTestOverrides(v434, v319, v320);
      v361 = objc_msgSend_objectForKeyedSubscript_(v359, v360, @"ShouldNotKeyRoll");

      if (v361)
      {
        v427 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v319, v320);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v427, v428, v441, v434, @"CKDFetchRecordZonesOperation.m", 472, @"Did not expect a key roll");
      }
    }

    v362 = v297;
    if (v440)
    {
      v456 = 0;
      v363 = objc_msgSend_dataFromRecordPCS_error_(v66, v319, v451, &v456);
      v65 = v456;
      if (v65 || !v363)
      {
        v389 = *MEMORY[0x277CBC878];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v389);
        }

        v122 = v436;

        v390 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(v390, OS_LOG_TYPE_ERROR))
        {
          v422 = objc_msgSend_zoneID(v7, v391, v392);
          *buf = 138412546;
          v472 = v422;
          v473 = 2112;
          v474 = v65;
          _os_log_error_impl(&dword_22506F000, v390, OS_LOG_TYPE_ERROR, "Failed to serialize zoneish PCS for zone ID: %@: %@", buf, 0x16u);
        }

        v31 = 1;
        v67 = v453;
        goto LABEL_142;
      }

      objc_msgSend_setZoneishProtectionData_(v7, v364, v363);
    }

    v365 = objc_msgSend_pcsManager(v33, v319, v320);
    v455 = 0;
    v367 = objc_msgSend_dataFromZonePCS_error_(v365, v366, v297, &v455);
    v65 = v455;

    if (v65 || !v367)
    {
      v388 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v388);
      }

      v122 = v436;

      v383 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v383, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v472 = v65;
        _os_log_error_impl(&dword_22506F000, v383, OS_LOG_TYPE_ERROR, "Couldn't serialize zone PCS: %@", buf, 0xCu);
      }
    }

    else
    {
      objc_msgSend_setProtectionData_(v7, v368, v367);
      v371 = objc_msgSend_protectionEtag(v7, v369, v370);
      objc_msgSend_setPreviousProtectionEtag_(v7, v372, v371);

      v375 = objc_msgSend_pcsManager(v33, v373, v374);
      v454 = 0;
      v377 = objc_msgSend_etagFromZonePCS_error_(v375, v376, v362, &v454);
      v65 = v454;
      objc_msgSend_setProtectionEtag_(v7, v378, v377);

      if (v444 && !objc_msgSend_numZoneSaveAttempts(v434, v379, v380))
      {
        objc_msgSend_setPreviousProtectionEtag_(v7, v381, @"NO_ETAG_FOR_YOU");
      }

      v122 = v436;
      v67 = v453;
      if (!v65)
      {
        goto LABEL_215;
      }

      v382 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v382);
      }

      v383 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v383, OS_LOG_TYPE_ERROR))
      {
        v386 = objc_msgSend_zoneID(v7, v384, v385);
        *buf = 138412546;
        v472 = v386;
        v473 = 2112;
        v474 = v65;
        _os_log_error_impl(&dword_22506F000, v383, OS_LOG_TYPE_ERROR, "Couldn't create a PCS etag for zone %@: %@", buf, 0x16u);
      }
    }

    v67 = v453;
LABEL_215:

    v31 = 1;
LABEL_142:
    if (v122)
    {
      CFRelease(v122);
    }

    goto LABEL_144;
  }

  v33 = v452;
  v160 = objc_msgSend_pcsManager(v452, v158, v159);
  v470 = 0;
  v162 = objc_msgSend_dataFromZonePCS_error_(v160, v161, v62, &v470);
  v65 = v470;

  if (v65 || !v162)
  {
    v66 = v448;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v279 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v472 = v65;
      _os_log_error_impl(&dword_22506F000, v279, OS_LOG_TYPE_ERROR, "Couldn't serialize zone PCS for tests: %@", buf, 0xCu);
    }
  }

  else
  {
    objc_msgSend_setProtectionData_(v7, v163, v162);
    v166 = objc_msgSend_protectionEtag(v7, v164, v165);
    objc_msgSend_setPreviousProtectionEtag_(v7, v167, v166);

    v170 = objc_msgSend_pcsManager(v452, v168, v169);
    v469 = 0;
    v172 = objc_msgSend_etagFromZonePCS_error_(v170, v171, v62, &v469);
    v65 = v469;
    objc_msgSend_setProtectionEtag_(v7, v173, v172);

    v66 = v448;
    if (!v65)
    {
      v31 = 1;
      goto LABEL_107;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v174 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v175 = v174;
      v178 = objc_msgSend_zoneID(v7, v176, v177);
      *buf = 138412546;
      v472 = v178;
      v473 = 2112;
      v474 = v65;
      _os_log_error_impl(&dword_22506F000, v175, OS_LOG_TYPE_ERROR, "Couldn't create a PCS etag for zone for tests %@: %@", buf, 0x16u);
    }
  }

  v31 = 0;
LABEL_107:

LABEL_108:
  v67 = 0;
LABEL_144:
  if (v68 && v65)
  {
    v313 = v65;
    *v68 = v65;
  }

LABEL_148:
  v314 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)_handleRecordZoneSaved:(id)a3 error:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v20 = @" with error ";
    v21 = &stru_28385ED00;
    *buf = 138412802;
    v34 = v6;
    if (v7)
    {
      v21 = v7;
    }

    else
    {
      v20 = &stru_28385ED00;
    }

    v35 = 2114;
    v36 = v20;
    v37 = 2112;
    v38 = v21;
    _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Saved updated zone %@%{public}@%@", buf, 0x20u);
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else if (!v7)
  {
    goto LABEL_12;
  }

  if (objc_msgSend_code(v7, v9, v10) == 2037 || objc_msgSend_code(v7, v9, v11) == 2053)
  {
    objc_msgSend_setShouldRetry_(self, v9, 1);
    v14 = objc_msgSend_zoneIDsNeedingPCSUpdateRetry(self, v12, v13);
    objc_msgSend_addObject_(v14, v15, v6);

    v18 = objc_msgSend_pcsUpdateErrorsByZoneID(self, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v18, v19, v7, v6);
    goto LABEL_16;
  }

LABEL_12:
  v22 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(self, v9, v10);
  v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, v6);

  if (!v7 && v24)
  {
    objc_msgSend__cachePCSOnRecordZone_(self, v25, v24);
  }

  v27 = objc_msgSend_callbackQueue(self, v25, v26);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_225249954;
  v29[3] = &unk_2785463D0;
  v29[4] = self;
  v30 = v24;
  v31 = v6;
  v32 = v7;
  v18 = v24;
  dispatch_async(v27, v29);

LABEL_16:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)saveZonesWithUpdatedZonePCS
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_numZoneSaveAttempts(self, v8, v9);
    objc_msgSend_setNumZoneSaveAttempts_(self, v11, v10 + 1);
    v14 = objc_msgSend_stateTransitionGroup(self, v12, v13);
    dispatch_group_enter(v14);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v29 = v15;
      v32 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(self, v30, v31);
      v35 = objc_msgSend_allKeys(v32, v33, v34);
      *buf = 138412290;
      v38 = v35;
      _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Saving the following zones with updated zone PCS to the server:\n%@", buf, 0xCu);
    }

    v16 = objc_opt_new();
    v19 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(self, v17, v18);
    v22 = objc_msgSend_allValues(v19, v20, v21);
    objc_msgSend_setRecordZonesToSave_(v16, v23, v22);

    objc_msgSend_setAllowDefaultZoneSave_(v16, v24, 1);
    objc_msgSend_setMaxZoneSaveAttempts_(v16, v25, 1);
    v26 = objc_opt_class();
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_225249B80;
    v36[3] = &unk_278548B60;
    v36[4] = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v27, v26, v16, v36);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_handleAnonymousZoneDataObjects:(id)a3 responsecode:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v37 = a4;
  v8 = objc_msgSend_container(self, v6, v7);
  v11 = objc_msgSend_options(v8, v9, v10);
  v14 = objc_msgSend_useAnonymousToServerShareParticipants(v11, v12, v13);

  if (v14)
  {
    v17 = objc_msgSend_stateTransitionGroup(self, v15, v16);
    dispatch_group_enter(v17);

    objc_initWeak(&location, self);
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x2020000000;
    v52[3] = objc_msgSend_count(v38, v18, v19);
    *buf = 0;
    v47 = buf;
    v48 = 0x3032000000;
    v49 = sub_2250740D0;
    v50 = sub_2250735F4;
    v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v38;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v42, v54, 16);
    if (v23)
    {
      v24 = *v43;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v42 + 1) + 8 * i);
          v27 = objc_msgSend_container(self, v21, v22);
          v30 = objc_msgSend_anonymousSharingManager(v27, v28, v29);
          v33 = objc_msgSend_encryptedTupleData(v26, v31, v32);
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = sub_22524A1B8;
          v40[3] = &unk_27854AF58;
          v40[5] = buf;
          v40[6] = v52;
          objc_copyWeak(&v41, &location);
          v40[4] = self;
          objc_msgSend_decryptShareTuple_withCompletionBlock_(v30, v34, v33, v40);

          objc_destroyWeak(&v41);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v42, v54, 16);
      }

      while (v23);
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v52, 8);
    objc_destroyWeak(&location);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v35 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "useAnonymousToServerShareParticipants is not enabled", buf, 2u);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_handleRecordZoneFetch:(id)a3 zoneID:(id)a4 responseCode:(id)a5 error:(id)a6
{
  v97 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v82 = v14;
    *location = 138412802;
    *&location[4] = v10;
    v93 = 2112;
    v94 = v11;
    v95 = 2048;
    v96 = objc_msgSend_code(v12, v83, v84);
    _os_log_debug_impl(&dword_22506F000, v82, OS_LOG_TYPE_DEBUG, "Fetched record zone %@ (id %@) with response code %ld", location, 0x20u);
  }

  v17 = objc_msgSend_code(v12, v15, v16);
  if (v13 || v17 != 1)
  {
    if (!v13)
    {
      v29 = MEMORY[0x277CBC560];
      v30 = sub_2253962A4(v12);
      v33 = objc_msgSend_request(self, v31, v32);
      v34 = sub_225395734(v33, v12);
      v37 = objc_msgSend_error(v12, v35, v36);
      v40 = objc_msgSend_errorDescription(v37, v38, v39);
      v13 = objc_msgSend_errorWithDomain_code_userInfo_format_(v29, v41, *MEMORY[0x277CBC120], v30, v34, @"Error fetching record zone %@ from server: %@", v11, v40);
    }

    if (objc_msgSend_CKIsNotFoundError(v13, v18, v19))
    {
      v42 = objc_msgSend_container(self, v20, v21);
      v45 = objc_msgSend_options(v42, v43, v44);
      if (objc_msgSend_useAnonymousToServerShareParticipants(v45, v46, v47))
      {
        v50 = objc_msgSend_databaseScope(self, v48, v49) == 3;

        if (v50)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v53 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *location = 138412290;
            *&location[4] = v11;
            _os_log_debug_impl(&dword_22506F000, v53, OS_LOG_TYPE_DEBUG, "Possible anonymous share %@ not found. Removing share from anonymous share list", location, 0xCu);
          }

          objc_initWeak(location, self);
          v56 = objc_msgSend_stateTransitionGroup(self, v54, v55);
          dispatch_group_enter(v56);

          v59 = objc_msgSend_container(self, v57, v58);
          v62 = objc_msgSend_anonymousSharingManager(v59, v60, v61);
          v91 = v11;
          v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v63, &v91, 1);
          v89[0] = MEMORY[0x277D85DD0];
          v89[1] = 3221225472;
          v89[2] = sub_22524A7F0;
          v89[3] = &unk_278549318;
          objc_copyWeak(&v90, location);
          objc_msgSend_removeAnonymousSharesFromSharedDB_operation_withCompletionBlock_(v62, v65, v64, self, v89);

          objc_destroyWeak(&v90);
          objc_destroyWeak(location);
        }
      }

      else
      {
      }

      v66 = objc_msgSend_container(self, v51, v52);
      v69 = objc_msgSend_recordCache(v66, v67, v68);
      objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v69, v70, v66, v11);

      objc_msgSend_setPCSData_forFetchedZoneID_(self, v71, 0, v11);
      v74 = objc_msgSend_container(self, v72, v73);
      v77 = objc_msgSend_pcsCache(v74, v75, v76);
      objc_msgSend_removePCSDataForItemsInZoneWithID_(v77, v78, v11);
    }

    goto LABEL_23;
  }

  v13 = objc_msgSend_protectionData(v10, v18, v19);
  if (!v13)
  {
LABEL_23:
    v79 = objc_msgSend_callbackQueue(self, v20, v21);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22524A904;
    block[3] = &unk_2785463D0;
    block[4] = self;
    v86 = v10;
    v87 = v11;
    v88 = v13;
    v80 = v13;
    dispatch_async(v79, block);

    goto LABEL_24;
  }

  v22 = objc_msgSend_container(self, v20, v21);
  v25 = objc_msgSend_options(v22, v23, v24);
  v28 = objc_msgSend_bypassPCSEncryption(v25, v26, v27);

  if (v28)
  {
    v13 = 0;
    goto LABEL_23;
  }

  objc_msgSend__continueHandlingFetchedRecordZone_zoneID_(self, v20, v10, v11);
LABEL_24:

  v81 = *MEMORY[0x277D85DE8];
}

- (void)_continueHandlingFetchedRecordZone:(id)a3 zoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x2020000000;
  v101 = 1;
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x3032000000;
  v98[3] = sub_2250740D0;
  v98[4] = sub_2250735F4;
  v99 = 0;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x3032000000;
  v96[3] = sub_2250740D0;
  v96[4] = sub_2250735F4;
  v97 = 0;
  v8 = dispatch_group_create();
  v11 = objc_msgSend_stateTransitionGroup(self, v9, v10);
  dispatch_group_enter(v11);

  v14 = objc_msgSend_container(self, v12, v13);
  v17 = objc_msgSend_entitlements(v14, v15, v16);
  hasZoneProtectionDataEntitlement = objc_msgSend_hasZoneProtectionDataEntitlement(v17, v18, v19);
  objc_msgSend_setSerializeProtectionData_(v6, v21, hasZoneProtectionDataEntitlement);

  if (objc_msgSend_databaseScope(self, v22, v23) == 2)
  {
    dispatch_group_enter(v8);
    objc_msgSend_noteOperationWillWaitOnPCS(self, v26, v27);
    v32 = objc_msgSend_zonePCSModificationDate(v6, v28, v29);
    if (*MEMORY[0x277CBC810] == 1)
    {
      v33 = objc_msgSend_unitTestOverrides(self, v30, v31);
      v35 = objc_msgSend_objectForKeyedSubscript_(v33, v34, @"OverrideZonePCSModificationDate");

      if (v35)
      {
        v38 = objc_msgSend_unitTestOverrides(self, v36, v37);
        v40 = objc_msgSend_objectForKeyedSubscript_(v38, v39, @"OverrideZonePCSModificationDate");

        v32 = v40;
      }
    }

    v78 = v7;
    objc_initWeak(&location, self);
    v43 = objc_msgSend_topmostParentOperation(self, v41, v42);
    v46 = objc_msgSend_operationID(v43, v44, v45);

    v49 = objc_msgSend_container(self, v47, v48);
    v52 = objc_msgSend_pcsManager(v49, v50, v51);
    v55 = objc_msgSend_protectionData(v6, v53, v54);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = sub_22524AE40;
    v88[3] = &unk_27854AF80;
    objc_copyWeak(&v94, &location);
    v92 = v98;
    v56 = v6;
    v89 = v56;
    v90 = self;
    v93 = v96;
    v57 = v8;
    v91 = v57;
    objc_msgSend_createZonePCSFromData_usingServiceIdentityWithType_zonePCSModificationDate_requestorOperationID_completionHandler_(v52, v58, v55, 0, v32, v46, v88);

    v61 = objc_msgSend_containerID(self, v59, v60);
    v64 = objc_msgSend_specialContainerType(v61, v62, v63);

    if (v64 == 25)
    {
      dispatch_group_enter(v57);
      v67 = objc_msgSend_container(self, v65, v66);
      v70 = objc_msgSend_pcsManager(v67, v68, v69);
      v73 = objc_msgSend_protectionData(v56, v71, v72);
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = sub_22524B08C;
      v85[3] = &unk_27854AFA8;
      v86 = v56;
      v87 = v57;
      objc_msgSend_createZonePCSFromData_usingServiceIdentityWithType_zonePCSModificationDate_requestorOperationID_completionHandler_(v70, v74, v73, 4, v32, v46, v85);
    }

    objc_destroyWeak(&v94);
    objc_destroyWeak(&location);

    v7 = v78;
  }

  v75 = objc_msgSend_callbackQueue(self, v24, v25);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22524B1C8;
  block[3] = &unk_27854AFD0;
  block[4] = self;
  v80 = v6;
  v83 = v98;
  v84 = v100;
  v81 = v7;
  v82 = v96;
  v76 = v7;
  v77 = v6;
  dispatch_group_notify(v8, v75, block);

  _Block_object_dispose(v96, 8);
  _Block_object_dispose(v98, 8);

  _Block_object_dispose(v100, 8);
}

- (void)_cachePCSOnRecordZone:(id)a3
{
  v4 = a3;
  v18 = objc_msgSend_dataWithZone_(CKDZonePCSData, v5, v4);
  v8 = objc_msgSend_zonePCS(v4, v6, v7);
  objc_msgSend_setPcs_(v18, v9, v8);
  v12 = objc_msgSend_zoneishPCS(v4, v10, v11);
  objc_msgSend_setZoneishPCS_(v18, v13, v12);
  v16 = objc_msgSend_zoneID(v4, v14, v15);

  objc_msgSend_setPCSData_forFetchedZoneID_(self, v17, v18, v16);
}

- (void)fetchZonesFromServer:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_recordZoneIDs(self, v5, v6);
  if (objc_msgSend_count(v4, v8, v9))
  {
    v12 = v4;

    v7 = v12;
  }

  if (objc_msgSend_count(v7, v10, v11) || objc_msgSend_isFetchAllRecordZonesOperation(self, v13, v14))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v45 = v15;
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v50 = objc_msgSend_ckShortDescription(self, v48, v49);
      *location = 138543874;
      *&location[4] = v47;
      v65 = 2048;
      v66 = self;
      v67 = 2114;
      v68 = v50;
      _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Fetch record zones operation <%{public}@: %p; %{public}@> is starting", location, 0x20u);
    }

    v18 = objc_msgSend_stateTransitionGroup(self, v16, v17);
    dispatch_group_enter(v18);

    v19 = [CKDFetchRecordZonesURLRequest alloc];
    v21 = objc_msgSend_initWithOperation_recordZoneIDs_(v19, v20, self, v7);
    PCSInfo = objc_msgSend_onlyFetchPCSInfo(self, v22, v23);
    objc_msgSend_setOnlyFetchPCSInfo_(v21, v25, PCSInfo);
    objc_initWeak(location, self);
    objc_initWeak(&from, v21);
    v28 = objc_msgSend_container(self, v26, v27);
    v31 = objc_msgSend_options(v28, v29, v30);
    v34 = objc_msgSend_useAnonymousToServerShareParticipants(v31, v32, v33);

    if (v34)
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = sub_22524BA58;
      v61[3] = &unk_27854AFF8;
      objc_copyWeak(&v62, location);
      objc_msgSend_setAnonymousRecordZoneTuplesFetchedBlock_(v21, v35, v61);
      objc_destroyWeak(&v62);
    }

    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_22524BBC4;
    v59[3] = &unk_27854B020;
    objc_copyWeak(&v60, location);
    objc_msgSend_setRecordZoneFetchedBlock_(v21, v36, v59);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = sub_22524BC6C;
    v57[3] = &unk_27854AB78;
    objc_copyWeak(&v58, location);
    objc_msgSend_setErrorFetchingAllRecordZonesBlock_(v21, v37, v57);
    v51 = MEMORY[0x277D85DD0];
    v52 = 3221225472;
    v53 = sub_22524BF3C;
    v54 = &unk_278548748;
    objc_copyWeak(&v55, location);
    objc_copyWeak(&v56, &from);
    objc_msgSend_setCompletionBlock_(v21, v38, &v51);
    objc_msgSend_setRequest_(self, v39, v21, v51, v52, v53, v54);
    v42 = objc_msgSend_container(self, v40, v41);
    objc_msgSend_performRequest_(v42, v43, v21);

    objc_destroyWeak(&v56);
    objc_destroyWeak(&v55);
    objc_destroyWeak(&v58);
    objc_destroyWeak(&v60);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v4 = objc_msgSend_recordZoneIDs(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6))
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_msgSend_isFetchAllRecordZonesOperation(self, v7, v8) ^ 1;
  }

  objc_msgSend_makeStateTransition_(self, v10, v9);
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v8 = objc_msgSend_recordZoneIDs(self, v6, v7);
  v10 = objc_msgSend_setWithArray_(v4, v9, v8);

  if (objc_msgSend_count(v10, v11, v12))
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22524C338;
    v16[3] = &unk_2785487F8;
    v17 = v10;
    objc_msgSend_updateCloudKitMetrics_(self, v14, v16);
  }

  objc_msgSend_setRecordZoneFetchedProgressBlock_(self, v13, 0);
  v15.receiver = self;
  v15.super_class = CKDFetchRecordZonesOperation;
  [(CKDOperation *)&v15 _finishOnCallbackQueueWithError:v5];
}

@end