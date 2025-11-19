id sub_2251613E8(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(*(a1 + 32), a2, &unk_2838C8E68, *(a1 + 40), &unk_2838C8E80, off_27D719EC8);
  if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x277CCA9B8], v4, v3))
  {
    objc_msgSend_setModificationTime_(*(a1 + 40), v5, *(a1 + 48));
    v8 = objc_msgSend_insertObject_(*(a1 + 32), v7, *(a1 + 40));

    v3 = v8;
  }

  else if (!v3)
  {
    v9 = objc_msgSend_modificationTime(*(a1 + 40), v5, v6);
    objc_msgSend_timeIntervalSinceDate_(v9, v10, *(a1 + 48));
    v12 = v11;

    if (v12 >= 0.0)
    {
      v3 = 0;
    }

    else
    {
      objc_msgSend_setModificationTime_(*(a1 + 40), v13, *(a1 + 48));
      v3 = objc_msgSend_updateUsingObject_(*(a1 + 32), v14, *(a1 + 40));
    }
  }

  return v3;
}

void sub_22516185C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22516187C(uint64_t a1, const char *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 32), a2, *(a1 + 40), off_27D719EE0, &unk_28385CAE0);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = v23 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v20, v24, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = *(a1 + 32);
        v13 = objc_msgSend_knownUserKeys(v11, v6, v7, v20);
        LODWORD(v12) = objc_msgSend__cachedRecordKnownUserKeyData_satisfiesRequiredKeys_(v12, v14, v13, *(a1 + 48));

        if (v12)
        {
          v15 = objc_msgSend_etag(v11, v6, v7);
          v16 = *(*(a1 + 56) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v20, v24, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2251619F0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_setFetchedProperties_(v2, v3, &unk_2838C8E98);
  objc_msgSend_orderDescendingByProperty_(v2, v4, @"modificationTime");
  v7 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v5, @"recordID = $RECORDID AND containerID = $CONTAINERID AND databaseScope = $SCOPE AND dsid = $DSID");
  objc_msgSend_setSearchPredicate_(v2, v6, v7);
}

uint64_t sub_22516251C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6 = objc_msgSend_objectAtIndex_(a2, v5, 0);
  v8 = objc_msgSend_objectAtIndex_(v4, v7, 0);

  v10 = 0;
  if (v6 && v8)
  {
    v10 = objc_msgSend_compare_(v6, v9, v8);
  }

  return v10;
}

void sub_225162EA4(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  if (*(a1 + 32) == 1)
  {
    pthread_mutex_lock(&stru_280D54E50);
    objc_msgSend_removeObjectForKey_(qword_280D586D8, v8, v7);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v14 = v9;
    v15 = NSStringFromClass(v7);
    v18 = objc_msgSend_path(v5, v16, v17);
    v21 = objc_msgSend_CKSanitizedPath(v18, v19, v20);
    v22 = 138412802;
    v23 = v15;
    v24 = 2112;
    v25 = v21;
    v26 = 2112;
    v27 = v6;
    _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "%@ instance at %@ became invalid. Error: %@", &v22, 0x20u);
  }

  if (objc_msgSend_CKIsCorruptDatabaseError_(MEMORY[0x277CCA9B8], v10, v6))
  {
    objc_msgSend_remove(v5, v11, v12);
  }

  if (*(a1 + 32) == 1)
  {
    pthread_mutex_unlock(&stru_280D54E50);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_225163400()
{
  qword_280D58110 = objc_alloc_init(CKLastSentCapabilitiesAndUsage);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_225163CF8()
{
  qword_280D58120 = objc_alloc_init(CKUsageInfoImmutable);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_225164670()
{
  v0 = [CKDDeviceCapabilityManager alloc];
  qword_280D58128 = objc_msgSend_initInternal(v0, v1, v2);

  return MEMORY[0x2821F96F8]();
}

void sub_225164984(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_capabilitiesAndUsagesCachePerContainer(*(a1 + 32), v3, v4);
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, *(a1 + 40));

  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 48);
      v15 = 138412290;
      v16 = v14;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Dropping device capability and usage cache connection for container with ID: %@", &v15, 0xCu);
    }

    v11 = objc_msgSend_capabilitiesAndUsagesCachePerContainer(*(a1 + 32), v9, v10);
    objc_msgSend_removeObjectForKey_(v11, v12, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_225165BF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_225165C0C(uint64_t a1)
{
  v160 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_msgSend_queue(WeakRetained, v3, v4);
    dispatch_assert_queue_V2(v6);

    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v7, v8);
    v10 = v9;
    objc_msgSend_lastTrackedFailureTime(v5, v11, v12);
    v14 = v13;
    objc_msgSend_failureBackoffDelay(v5, v15, v16);
    if (v14 + v19 <= v10 || *(a1 + 96) == 1)
    {
      v20 = objc_msgSend_updateOperationsPerContainer(v5, v17, v18);
      v22 = objc_msgSend_objectForKey_(v20, v21, *(a1 + 32));

      if (v22)
      {
LABEL_93:

        goto LABEL_94;
      }

      v24 = *(a1 + 40);
      v155 = 0;
      v129 = objc_msgSend__lastSentCapabilityAndUsageForContainer_withError_(v5, v23, v24, &v155);
      v27 = v155;
      if (!v129)
      {
        if (!v27)
        {
          v115 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v25, v26);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v115, v116, *(a1 + 88), *(a1 + 48), @"CKDDeviceCapabilityManager.m", 348, @"There should be an error");
        }

        objc_msgSend__handleCacheErrorBeforeServerRequest_skipErrorMitigation_(v5, v25, v27, *(a1 + 96));
        v128 = 0;
        goto LABEL_92;
      }

      if (objc_msgSend_isNone(v129, v25, v26))
      {
        v126 = 0;
        v128 = 0;
        v30 = 1;
        isObsoleteUsage_operation = 1;
LABEL_22:
        if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(*(a1 + 56), v28, v29), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v39, v40, @"BypassDeviceCapabilityManagerThrottling"), v41 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend_BOOLValue(v41, v42, v43), v41, v39, (v44 & 1) != 0))
        {
          v45 = 1;
          v46 = 1;
          v47 = isObsoleteUsage_operation;
        }

        else
        {
          v48 = objc_msgSend_deviceContext(*(a1 + 56), v28, v29);
          v51 = objc_msgSend_throttleManager(v48, v49, v50);

          v55 = objc_msgSend_databaseScope(*(a1 + 56), v52, v53);
          if (v30)
          {
            v30 = objc_msgSend__isThrottledOperationType_forContainer_databaseScope_throttleManager_(v5, v54, 407, *(a1 + 40), v55, v51) ^ 1;
          }

          if ((v30 | isObsoleteUsage_operation))
          {
            v46 = objc_msgSend__isThrottledOperationType_forContainer_databaseScope_throttleManager_(v5, v54, 409, *(a1 + 40), v55, v51) ^ 1;
            v47 = v46 & isObsoleteUsage_operation;
            v45 = objc_msgSend__isThrottledOperationType_forContainer_databaseScope_throttleManager_(v5, v56, 410, *(a1 + 40), v55, v51) ^ 1;
            isObsoleteUsage_operation &= v45;
          }

          else
          {
            v47 = 0;
            isObsoleteUsage_operation = 0;
            v46 = 1;
            v45 = 1;
          }
        }

        if (v30)
        {
          v47 = v46;
        }

        else
        {
          v45 = isObsoleteUsage_operation;
        }

        if (v47 == 1)
        {
          v57 = *(a1 + 40);
          v58 = *(a1 + 56);
          v154 = v27;
          v59 = objc_msgSend__prepareZoneUsageSendForContainer_maxCount_triggerOperation_withCacheError_(v5, v28, v57, 1024, v58, &v154);
          v60 = v154;

          if (!v59)
          {
            if (!v60)
            {
              v117 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v28, v29);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v117, v118, *(a1 + 88), *(a1 + 48), @"CKDDeviceCapabilityManager.m", 432, @"There should be an error");
            }

            objc_msgSend__handleCacheErrorBeforeServerRequest_skipErrorMitigation_(v5, v28, v60, *(a1 + 96));
            v27 = v60;
            goto LABEL_92;
          }

          v27 = v60;
          if (!v45)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v59 = 0;
          if (!v45)
          {
LABEL_37:
            v61 = 0;
            goto LABEL_41;
          }
        }

        v62 = *(a1 + 40);
        v63 = *(a1 + 56);
        v153 = v27;
        v61 = objc_msgSend__prepareShareUsageSendForContainer_maxCount_triggerOperation_withCacheError_(v5, v28, v62, 1024, v63, &v153);
        v64 = v153;

        if (!v61)
        {
          if (!v64)
          {
            v119 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v28, v29);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v119, v120, *(a1 + 88), *(a1 + 48), @"CKDDeviceCapabilityManager.m", 444, @"There should be an error");
          }

          objc_msgSend__handleCacheErrorBeforeServerRequest_skipErrorMitigation_(v5, v28, v64, *(a1 + 96));
          v61 = 0;
          goto LABEL_91;
        }

        v27 = v64;
LABEL_41:
        if (objc_msgSend_count(v59, v28, v29))
        {
          v67 = v47;
        }

        else
        {
          v67 = 0;
        }

        v68 = (objc_msgSend_count(v61, v65, v66) != 0) & v45;
        if (((v30 | v67) & 1) == 0 && !v68)
        {
LABEL_90:
          v64 = v27;
LABEL_91:

          v27 = v64;
LABEL_92:

          goto LABEL_93;
        }

        if (!v30)
        {
          v124 = 0;
LABEL_73:
          if ((v67 | v68))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v80 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
            {
              v81 = v80;
              v84 = objc_msgSend_count(v59, v82, v83);
              v87 = objc_msgSend_count(v61, v85, v86);
              v88 = *(a1 + 72);
              *buf = 134218498;
              *&buf[4] = v84;
              *&buf[12] = 2048;
              *&buf[14] = v87;
              *&buf[22] = 2114;
              v157 = v88;
              _os_log_impl(&dword_22506F000, v81, OS_LOG_TYPE_DEFAULT, "Sending %zu zone usage and %zu share usage for container ID %{public}@", buf, 0x20u);
            }
          }

          v89 = [CKUpdateDeviceCapabilitiesOperationInfo alloc];
          if (v67)
          {
            v91 = v59;
          }

          else
          {
            v91 = 0;
          }

          if (v68)
          {
            SentCapabilities_zoneUsages_shareUsages = objc_msgSend_initWithSupportedCapabilities_lastSentCapabilities_zoneUsages_shareUsages_(v89, v90, v124, v128, v91, v61);
          }

          else
          {
            SentCapabilities_zoneUsages_shareUsages = objc_msgSend_initWithSupportedCapabilities_lastSentCapabilities_zoneUsages_shareUsages_(v89, v90, v124, v128, v91, 0);
          }

          v125 = SentCapabilities_zoneUsages_shareUsages;
          v127 = objc_opt_new();
          objc_msgSend_setName_(v127, v93, @"UpdateDeviceCapabilities");
          objc_msgSend_setGroup_(v125, v94, v127);
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = sub_2251668CC;
          aBlock[3] = &unk_278546E68;
          objc_copyWeak(&v151, (a1 + 80));
          v150 = *(a1 + 40);
          v152 = *(a1 + 96);
          v121 = _Block_copy(aBlock);
          v145[0] = MEMORY[0x277D85DD0];
          v145[1] = 3221225472;
          v145[2] = sub_225166A74;
          v145[3] = &unk_278546E90;
          objc_copyWeak(&v147, (a1 + 80));
          v146 = *(a1 + 40);
          v148 = *(a1 + 96);
          v123 = _Block_copy(v145);
          v141[0] = MEMORY[0x277D85DD0];
          v141[1] = 3221225472;
          v141[2] = sub_225166C38;
          v141[3] = &unk_278546EB8;
          objc_copyWeak(&v143, (a1 + 80));
          v142 = *(a1 + 40);
          v144 = *(a1 + 96);
          v95 = _Block_copy(v141);
          v137[0] = MEMORY[0x277D85DD0];
          v137[1] = 3221225472;
          v137[2] = sub_225166DFC;
          v137[3] = &unk_278546EE0;
          objc_copyWeak(&v140, (a1 + 80));
          v138 = *(a1 + 32);
          v139 = *(a1 + 72);
          v96 = _Block_copy(v137);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v157 = sub_225073F50;
          v158 = sub_225073534;
          v159 = 0;
          if (*(a1 + 97) == 1)
          {
            v97 = *(a1 + 56);
            v98 = objc_opt_class();
            v130[0] = MEMORY[0x277D85DD0];
            v130[1] = 3221225472;
            v130[2] = sub_225166F34;
            v130[3] = &unk_278546F08;
            v136 = buf;
            v131 = v127;
            v132 = v121;
            v133 = v123;
            v134 = v95;
            v135 = v96;
            objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(v97, v99, v98, v125, v130);
          }

          else
          {
            v102 = [CKDUpdateDeviceCapabilitiesOperation alloc];
            v104 = objc_msgSend_initWithOperationInfo_container_(v102, v103, v125, *(a1 + 40));
            v105 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v104;

            if (*MEMORY[0x277CBC810] == 1)
            {
              objc_msgSend_setSkipSettingUnitTestOverrides_(*(*&buf[8] + 40), v106, 1);
            }

            objc_msgSend_setUpdateDeviceCapabilitiesCompletionBlock_(*(*&buf[8] + 40), v106, v121, v121);
            objc_msgSend_setPerZoneUsageCompletionBlock_(*(*&buf[8] + 40), v107, v123);
            objc_msgSend_setPerShareUsageCompletionBlock_(*(*&buf[8] + 40), v108, v95);
            objc_msgSend_setCompletionBlock_(*(*&buf[8] + 40), v109, v96);
            objc_msgSend_addOperation_(*(a1 + 40), v110, *(*&buf[8] + 40));
          }

          v111 = *(*&buf[8] + 40);
          v112 = objc_msgSend_updateOperationsPerContainer(v5, v100, v101, v121);
          objc_msgSend_setObject_forKeyedSubscript_(v112, v113, v111, *(a1 + 32));

          _Block_object_dispose(buf, 8);
          objc_destroyWeak(&v140);

          objc_destroyWeak(&v143);
          objc_destroyWeak(&v147);

          objc_destroyWeak(&v151);
          goto LABEL_90;
        }

        v69 = *(a1 + 64);
        if (v69)
        {
          v124 = v69;
        }

        else
        {
          v124 = objc_opt_new();
        }

        if (v126)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v70 = *MEMORY[0x277CBC830];
          if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_73;
          }

          v71 = *(a1 + 72);
          *buf = 138543618;
          *&buf[4] = v71;
          *&buf[12] = 2114;
          *&buf[14] = v124;
          v72 = "Device capabilities for container ID %{public}@ have not been sent to the server recently, will send: %{public}@";
        }

        else
        {
          v73 = *MEMORY[0x277CBC878];
          v74 = *MEMORY[0x277CBC880];
          if (v128)
          {
            if (v74 != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v73);
            }

            v75 = *MEMORY[0x277CBC830];
            if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_73;
            }

            v76 = *(a1 + 72);
            *buf = 138543874;
            *&buf[4] = v76;
            *&buf[12] = 2114;
            *&buf[14] = v124;
            *&buf[22] = 2114;
            v157 = v128;
            v72 = "Device capabilities for container ID %{public}@ have changed, will send updated capabilities to the server. new: %{public}@, previous: %{public}@";
            v77 = v75;
            v78 = 32;
            goto LABEL_72;
          }

          if (v74 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v73);
          }

          v70 = *MEMORY[0x277CBC830];
          if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_73;
          }

          v79 = *(a1 + 72);
          *buf = 138543618;
          *&buf[4] = v79;
          *&buf[12] = 2114;
          *&buf[14] = v124;
          v72 = "Device capabilities for container ID %{public}@ have not previously been sent to the server, will send: %{public}@";
        }

        v77 = v70;
        v78 = 22;
LABEL_72:
        _os_log_impl(&dword_22506F000, v77, OS_LOG_TYPE_DEFAULT, v72, buf, v78);
        goto LABEL_73;
      }

      v128 = objc_msgSend_capabilitySet(v129, v28, v29);
      if (v128)
      {
        v34 = objc_msgSend_capabilitySetSavedDate(v129, v32, v33);
        isObsoleteCapabilities_operation = objc_msgSend_isObsoleteCapabilities_operation_(v5, v35, v34, *(a1 + 56));

        if (isObsoleteCapabilities_operation)
        {
          v30 = 1;
          v126 = 1;
LABEL_21:
          v37 = objc_msgSend_usageSavedDate(v129, v32, v33);
          isObsoleteUsage_operation = objc_msgSend_isObsoleteUsage_operation_(v5, v38, v37, *(a1 + 56));

          goto LABEL_22;
        }

        if (!*(a1 + 64))
        {
          goto LABEL_19;
        }

        if (objc_msgSend_isCapabilitySet_equalTo_(MEMORY[0x277CBC2B0], v32, v128))
        {
          if (*MEMORY[0x277CBC810] == 1)
          {
            v30 = objc_msgSend_checkAndClearUnitTestOverrides_(*(a1 + 56), v32, @"SendDeviceCapabilitiesEvenIfUnchanged");
LABEL_20:
            v126 = 0;
            goto LABEL_21;
          }

LABEL_19:
          v30 = 0;
          goto LABEL_20;
        }
      }

      v126 = 0;
      v30 = 1;
      goto LABEL_21;
    }
  }

LABEL_94:

  v114 = *MEMORY[0x277D85DE8];
}

void sub_22516687C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  _Block_object_dispose((v45 - 176), 8);
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a38);
  objc_destroyWeak(&a45);
  objc_destroyWeak((v45 - 216));
  _Unwind_Resume(a1);
}

void sub_2251668CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = objc_msgSend_queue(WeakRetained, v11, v12);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225166A14;
    block[3] = &unk_278546E40;
    objc_copyWeak(&v20, (a1 + 40));
    block[4] = v13;
    v16 = *(a1 + 32);
    v17 = v7;
    v21 = *(a1 + 48);
    v18 = v8;
    v19 = v9;
    dispatch_async(v14, block);

    objc_destroyWeak(&v20);
  }
}

void sub_225166A14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_msgSend__handleDeviceCapabilitiesResultForContainer_savedCapabilities_skipErrorMitigation_withCapabilitiesError_operationError_(*(a1 + 32), v3, *(a1 + 40), *(a1 + 48), *(a1 + 80), *(a1 + 56), *(a1 + 64));
    WeakRetained = v4;
  }
}

void sub_225166A74(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = objc_msgSend_queue(WeakRetained, v14, v15);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225166BD8;
    block[3] = &unk_278546E40;
    objc_copyWeak(&v24, (a1 + 40));
    v19 = *(a1 + 32);
    v20 = v9;
    v21 = v10;
    v25 = *(a1 + 48);
    v22 = v11;
    v23 = v12;
    dispatch_async(v17, block);

    objc_destroyWeak(&v24);
  }
}

void sub_225166BD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_msgSend__handleZoneUsageResultForContainer_zoneID_date_skipErrorMitigation_withUsageError_operationError_(WeakRetained, v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 80), *(a1 + 56), *(a1 + 64));
    WeakRetained = v4;
  }
}

void sub_225166C38(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = objc_msgSend_queue(WeakRetained, v14, v15);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225166D9C;
    block[3] = &unk_278546E40;
    objc_copyWeak(&v24, (a1 + 40));
    v19 = *(a1 + 32);
    v20 = v9;
    v21 = v10;
    v25 = *(a1 + 48);
    v22 = v11;
    v23 = v12;
    dispatch_async(v17, block);

    objc_destroyWeak(&v24);
  }
}

void sub_225166D9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_msgSend__handleShareUsageResultForContainer_shareID_date_skipErrorMitigation_withUsageError_operationError_(WeakRetained, v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 80), *(a1 + 56), *(a1 + 64));
    WeakRetained = v4;
  }
}

void sub_225166DFC(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_msgSend_queue(WeakRetained, v3, v4);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225166EE0;
    block[3] = &unk_278546EE0;
    objc_copyWeak(&v10, a1 + 6);
    v8 = a1[4];
    v9 = a1[5];
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
  }
}

void sub_225166EE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_msgSend__handleOperationCompletedForContainerLookupName_containerID_(WeakRetained, v3, *(a1 + 32), *(a1 + 40));
    WeakRetained = v4;
  }
}

void sub_225166F34(void *a1, void *a2)
{
  objc_storeStrong((*(a1[9] + 8) + 40), a2);
  v14 = a2;
  objc_msgSend_setUseEncryption_(*(*(a1[9] + 8) + 40), v4, 1);
  v5 = a1[4];
  v8 = objc_msgSend_operationInfo(*(*(a1[9] + 8) + 40), v6, v7);
  objc_msgSend_setGroup_(v8, v9, v5);

  objc_msgSend_setUpdateDeviceCapabilitiesCompletionBlock_(*(*(a1[9] + 8) + 40), v10, a1[5]);
  objc_msgSend_setPerZoneUsageCompletionBlock_(*(*(a1[9] + 8) + 40), v11, a1[6]);
  objc_msgSend_setPerShareUsageCompletionBlock_(*(*(a1[9] + 8) + 40), v12, a1[7]);
  objc_msgSend_setCompletionBlock_(*(*(a1[9] + 8) + 40), v13, a1[8]);
}

void sub_225167658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_225167698(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v10 = objc_msgSend_startSendingWithResendingRefreshInterval_maxFailureCount_(v8, v9, 3, 86400.0);
  v14 = objc_msgSend_failureCount(v8, v11, v12);
  v15 = a1[4];
  v16 = a1[5];
  v17 = *(a1[6] + 8);
  v20 = *(v17 + 40);
  v19 = (v17 + 40);
  v18 = v20;
  if (v14 >= 4)
  {
    obj = v18;
    v21 = objc_msgSend__deleteZoneUsageForZoneID_inContainer_withError_(v15, v13, v7, v16, &obj);
    objc_storeStrong(v19, obj);
    if (v21)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v37 = v18;
  v22 = objc_msgSend__setZoneUsage_forZoneID_inContainer_withError_(v15, v13, v8, v7, v16, &v37);
  objc_storeStrong(v19, v37);
  if (!v22)
  {
    goto LABEL_13;
  }

  if (v10)
  {
    v24 = *(*(a1[7] + 8) + 40);
    if (!v24)
    {
      v25 = objc_opt_new();
      v26 = *(a1[7] + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v24 = *(*(a1[7] + 8) + 40);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v24, v23, v10, v7);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v32 = a1[5];
      v33 = v28;
      v36 = objc_msgSend_containerID(v32, v34, v35);
      *buf = 138543874;
      v40 = v36;
      v41 = 2112;
      v42 = v10;
      v43 = 2114;
      v44 = v7;
      _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Sending zone usage to the server. \n\tcontainerID: %{public}@ \n\tdate: %@ \n\tzoneID: %{public}@", buf, 0x20u);
    }

    v29 = *(a1[8] + 8);
    v30 = *(v29 + 24) + 1;
    *(v29 + 24) = v30;
    if (v30 >= a1[9])
    {
LABEL_13:
      *a4 = 1;
    }
  }

LABEL_14:

  v31 = *MEMORY[0x277D85DE8];
}

void sub_225167D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 184), 8);
  _Block_object_dispose((v28 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_225167D8C(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v10 = objc_msgSend_startSendingWithResendingRefreshInterval_maxFailureCount_(a3, v8, 3, 86400.0);
  if (v10)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(*(a1[5] + 8) + 40), v9, v10, v7);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v15 = a1[4];
      v16 = v11;
      v19 = objc_msgSend_containerID(v15, v17, v18);
      v20 = 138543874;
      v21 = v19;
      v22 = 2112;
      v23 = v10;
      v24 = 2114;
      v25 = v7;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Sending share usage to the server. \n\tcontainerID: %{public}@ \n\tdate: %@ \n\tshareID: %{public}@", &v20, 0x20u);
    }

    v12 = *(a1[6] + 8);
    v13 = *(v12 + 24) + 1;
    *(v12 + 24) = v13;
    if (v13 >= a1[7])
    {
      *a4 = 1;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_225167F28(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a1[6];
  v9 = *(v8 + 16);
  v10 = a2;
  v9(v8, v10, v7, a4);
  v14 = objc_msgSend_failureCount(v7, v11, v12);
  v15 = a1[4];
  v16 = a1[5];
  v17 = *(a1[7] + 8);
  v20 = *(v17 + 40);
  v19 = (v17 + 40);
  v18 = v20;
  if (v14 < 4)
  {
    obj = v18;
    v21 = objc_msgSend__setShareUsage_forShareID_inContainer_withError_(v15, v13, v7, v10, v16, &obj);

    v22 = obj;
  }

  else
  {
    v24 = v18;
    v21 = objc_msgSend__deleteShareUsageForShareID_inContainer_withError_(v15, v13, v10, v16, &v24);

    v22 = v24;
  }

  objc_storeStrong(v19, v22);
  if ((v21 & 1) == 0)
  {
    *a4 = 1;
  }
}

void sub_225168024(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v10 = objc_msgSend_shareIDForRecordID_(*(a1 + 32), v9, v7);
  if (v10)
  {
    (*(*(a1 + 56) + 16))();
    v14 = objc_msgSend_failureCount(v8, v11, v12);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(*(a1 + 64) + 8);
    v20 = *(v17 + 40);
    v19 = (v17 + 40);
    v18 = v20;
    if (v14 >= 4)
    {
      obj = v18;
      v21 = objc_msgSend__deleteShareUsageForShareID_inContainer_withError_(v15, v13, v10, v16, &obj);
      objc_storeStrong(v19, obj);
      if (v21)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v29 = v18;
    v22 = objc_msgSend__setShareUsage_forShareID_inContainer_withError_(v15, v13, v8, v10, v16, &v29);
    objc_storeStrong(v19, v29);
    if (!v22 || (v24 = *(a1 + 40), v25 = *(a1 + 48), v26 = *(*(a1 + 64) + 8), v28 = *(v26 + 40), v27 = objc_msgSend__deleteRecordWithUnknownShareUsage_inContainer_withError_(v24, v23, v7, v25, &v28), objc_storeStrong((v26 + 40), v28), (v27 & 1) == 0))
    {
LABEL_7:
      *a4 = 1;
    }
  }

LABEL_8:
}

void sub_2251697B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251697D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_now(MEMORY[0x277CBEAA8], a2, a3);
  v7 = MEMORY[0x277CBC810];
  if (*MEMORY[0x277CBC810] == 1)
  {
    v8 = objc_msgSend_unitTestOverrides(*(a1 + 32), v4, v5);
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"InvalidUsageTimestamp");
    v13 = objc_msgSend_BOOLValue(v10, v11, v12);

    if (v13)
    {
      v16 = MEMORY[0x277CBEAA8];
      objc_msgSend_timeIntervalSince1970(v6, v14, v15);
      v20 = objc_msgSend_dateWithTimeIntervalSince1970_(v16, v18, v19, v17 + -2764800.0);
LABEL_7:

      v6 = v20;
      goto LABEL_8;
    }

    if (*v7)
    {
      v21 = objc_msgSend_unitTestOverrides(*(a1 + 32), v14, v15);
      v23 = objc_msgSend_objectForKey_(v21, v22, @"ZoneAndShareUsageDate");

      if (v23)
      {
        v26 = objc_msgSend_unitTestOverrides(*(a1 + 32), v24, v25);
        v20 = objc_msgSend_objectForKeyedSubscript_(v26, v27, @"ZoneAndShareUsageDate");

        v6 = v26;
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v28 = *(a1 + 40);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v54, v58, 16);
  if (v30)
  {
    v32 = v30;
    v33 = *v55;
LABEL_10:
    v34 = 0;
    while (1)
    {
      if (*v55 != v33)
      {
        objc_enumerationMutation(v28);
      }

      v35 = *(*(&v54 + 1) + 8 * v34);
      v36 = *(a1 + 48);
      v37 = *(a1 + 56);
      v38 = *(*(a1 + 64) + 8);
      obj = *(v38 + 40);
      v39 = objc_msgSend__zoneUsageForZoneID_inContainer_withError_(v36, v31, v35, v37, &obj);
      objc_storeStrong((v38 + 40), obj);
      if (!v39)
      {
        break;
      }

      if (objc_msgSend_isNone(v39, v40, v41))
      {
        v43 = [CKUsageInfo alloc];
        Used = objc_msgSend_initWithLastUsed_(v43, v44, v6);

        v39 = Used;
      }

      else
      {
        objc_msgSend_setLastUsed_(v39, v42, v6);
      }

      v47 = *(a1 + 48);
      v48 = *(a1 + 56);
      v49 = *(*(a1 + 64) + 8);
      v52 = *(v49 + 40);
      v50 = objc_msgSend__setZoneUsage_forZoneID_inContainer_withError_(v47, v46, v39, v35, v48, &v52);
      objc_storeStrong((v49 + 40), v52);

      if (!v50)
      {
        break;
      }

      if (v32 == ++v34)
      {
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v54, v58, 16);
        if (v32)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

void sub_22516AAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v12 + 72));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 - 120));
  _Unwind_Resume(a1);
}

void sub_22516AAE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = [CKUsageInfo alloc];
    Used = objc_msgSend_initWithLastUsed_(v3, v4, *(a1 + 32));
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(*(a1 + 64) + 8);
    obj = *(v9 + 40);
    objc_msgSend__setRecordWithUnknownShareUsage_forRecordID_inContainer_withError_(v6, v10, Used, v7, v8, &obj);
    objc_storeStrong((v9 + 40), obj);
  }
}

void sub_22516AE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22516AE38(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = objc_msgSend__shareUsageForShareID_inContainer_withError_(v3, a2, v4, v5, &obj);
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    if (objc_msgSend_isNone(v7, v8, v9))
    {
      v11 = [CKUsageInfo alloc];
      Used = objc_msgSend_initWithLastUsed_(v11, v12, a1[7]);

      v7 = Used;
    }

    else
    {
      objc_msgSend_setLastUsed_(v7, v10, a1[7]);
    }

    v15 = a1[4];
    v16 = a1[5];
    v17 = a1[6];
    v18 = *(a1[8] + 8);
    v19 = *(v18 + 40);
    objc_msgSend__setShareUsage_forShareID_inContainer_withError_(v15, v14, v7, v16, v17, &v19);
    objc_storeStrong((v18 + 40), v19);
  }
}

uint64_t sub_22516AF9C(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D58138 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], a2, a3);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22516B030(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D58148 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], a2, a3);

  return MEMORY[0x2821F96F8]();
}

void sub_22516C0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_22516C0F8()
{
  qword_280D58158 = dispatch_workloop_create("com.apple.cloudkit.accountStatus");

  return MEMORY[0x2821F96F8]();
}

void sub_22516C134(uint64_t a1, void *a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v10 = objc_msgSend_accountOrNil(WeakRetained, v7, v8);
      v13 = v10;
      if (v10)
      {
        v14 = objc_msgSend_accountID(v10, v11, v12);
        isEqualToString = objc_msgSend_isEqualToString_(v5, v15, v14);

        if (isEqualToString)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v17 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            v21 = 134218242;
            v22 = v9;
            v23 = 2112;
            v24 = v5;
            _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Container %p clearing caches for deletion of account %@", &v21, 0x16u);
          }

          objc_msgSend__clearCaches(v9, v18, v19);
        }
      }
    }

    objc_msgSend__reloadAccount_(v9, v7, 1);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_22516C2A0(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  if ((objc_msgSend_isEqualToString_(*(a1 + 32), v5, v12) & 1) == 0)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, *(a1 + 56), *(a1 + 40), @"CKDContainer.m", 499, @"Received auth token renewal change notification for a different account: %@, expected: %@", v12, *(a1 + 32));
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend_handleAuthTokenRenewalChangeInProgress_(WeakRetained, v9, a2);
}

void sub_22516C4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_sync_exit(v15);
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22516C518(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v2 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v5 = v2;
      v8 = objc_msgSend_containerID(WeakRetained, v6, v7);
      v11 = objc_msgSend_ckShortDescription(v8, v9, v10);
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_22506F000, v5, OS_LOG_TYPE_INFO, "Session validation timer fired for container: %@", &v14, 0xCu);
    }

    objc_msgSend__cancelSessionValidationTimer(WeakRetained, v3, v4);
    objc_msgSend_checkSessionValidityCacheOnly_error_(WeakRetained, v12, 0, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22516DD14(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v19 = 0;
    v4 = objc_msgSend_checkSessionValidityCacheOnly_error_(WeakRetained, v2, 0, &v19);
    v5 = v19;
    v8 = v5;
    if ((v4 & 1) == 0)
    {
      isCloudCoreSessionNoLongerValidError = objc_msgSend_isCloudCoreSessionNoLongerValidError(v5, v6, v7);
      v10 = *MEMORY[0x277CBC878];
      v11 = *MEMORY[0x277CBC880];
      if (isCloudCoreSessionNoLongerValidError)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v10);
        }

        v12 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v8;
          _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Container session is invalid: %@", buf, 0xCu);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v10);
        }

        v13 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v15 = v13;
          v18 = objc_msgSend_ckShortDescription(v3, v16, v17);
          *buf = 138412546;
          v21 = v18;
          v22 = 2112;
          v23 = v8;
          _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Failed to validate the CloudCore session for container %@: %@", buf, 0x16u);
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22516E478(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CBC878];
  v5 = *MEMORY[0x277CBC880];
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v4);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_22506F000, v6, OS_LOG_TYPE_ERROR, "Failed to set file attribution for %@: %@", &v11, 0x16u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v4);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Set file attribution for %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22516E700(uint64_t a1, const char *a2, uint64_t a3)
{
  v145 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_fakeErrorsByClassName(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (!v7)
  {
LABEL_14:
    v42 = objc_msgSend_fakeResponseOperationResultByClassNameByItemID(*(a1 + 32), v8, v9);
    v45 = objc_msgSend_count(v42, v43, v44);

    if (!v45)
    {
LABEL_37:
      objc_msgSend_performRequest(*(a1 + 40), v46, v47);
      goto LABEL_38;
    }

    v48 = *(a1 + 40);
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    v53 = objc_msgSend_fakeResponseOperationResultByClassNameByItemID(*(a1 + 32), v51, v52);
    v55 = objc_msgSend_objectForKeyedSubscript_(v53, v54, v50);

    if (!v55)
    {
LABEL_36:

      goto LABEL_37;
    }

    v58 = objc_msgSend_fakeResponseOperationLifetimeByClassName(*(a1 + 32), v56, v57);
    v60 = objc_msgSend_objectForKeyedSubscript_(v58, v59, v50);

    if (objc_msgSend_integerValue(v60, v61, v62) < 2)
    {
      if (objc_msgSend_integerValue(v60, v63, v64) == 1)
      {
        v75 = objc_msgSend_fakeResponseOperationResultByClassNameByItemID(*(a1 + 32), v73, v74);
        objc_msgSend_removeObjectForKey_(v75, v76, v50);

        v79 = objc_msgSend_fakeResponseOperationLifetimeByClassName(*(a1 + 32), v77, v78);
        objc_msgSend_removeObjectForKey_(v79, v80, v50);

        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v68 = objc_msgSend_allValues(v55, v81, v82);
        v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v83, &v130, v134, 16);
        if (v84)
        {
          v87 = v84;
          v88 = *v131;
          do
          {
            for (i = 0; i != v87; ++i)
            {
              if (*v131 != v88)
              {
                objc_enumerationMutation(v68);
              }

              v90 = objc_msgSend_v2(*(*(&v130 + 1) + 8 * i), v85, v86);
              v91 = v90;
              if (v90)
              {
                (*(v90 + 16))(v90, 0);
              }
            }

            v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v85, &v130, v134, 16);
          }

          while (v87);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v92 = *MEMORY[0x277CBC830];
        if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        v68 = v92;
        *buf = 134217984;
        v136 = objc_msgSend_integerValue(v60, v125, v126);
        _os_log_error_impl(&dword_22506F000, v68, OS_LOG_TYPE_ERROR, "A fake response is being tracked that has an invalid lifetime of %li", buf, 0xCu);
      }
    }

    else
    {
      v65 = MEMORY[0x277CCABB0];
      v66 = objc_msgSend_integerValue(v60, v63, v64);
      v68 = objc_msgSend_numberWithInteger_(v65, v67, v66 - 1);
      v71 = objc_msgSend_fakeResponseOperationLifetimeByClassName(*(a1 + 32), v69, v70);
      objc_msgSend_setObject_forKeyedSubscript_(v71, v72, v68, v50);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

LABEL_33:
    v93 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v98 = *(a1 + 40);
      loga = v93;
      v99 = objc_opt_class();
      v100 = NSStringFromClass(v99);
      v101 = *(a1 + 40);
      v127 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v101, v102, 1, 0, 0);
      v105 = objc_msgSend_CKPropertiesStyleString(v127, v103, v104);
      v107 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(*(a1 + 40), v106, 0, 1, 0);
      v110 = objc_msgSend_CKPropertiesStyleString(v107, v108, v109);
      *buf = 138544386;
      v136 = v100;
      v137 = 2048;
      v138 = v101;
      v139 = 2114;
      v140 = v105;
      v141 = 2112;
      v142 = v110;
      v143 = 2112;
      v144 = v55;
      _os_log_error_impl(&dword_22506F000, loga, OS_LOG_TYPE_ERROR, "Asking URL Request <%{public}@: %p; %{public}@, %@> to return fake operation result %@", buf, 0x34u);
    }

    v95 = objc_msgSend_CKMapValues_(v55, v94, &unk_28385CC40);
    objc_msgSend_setFakeResponseOperationResultByItemID_(*(a1 + 40), v96, v95);

    goto LABEL_36;
  }

  v10 = objc_msgSend_fakeErrorsByClassName(*(a1 + 32), v8, v9);
  v11 = *(a1 + 40);
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v10, v14, v13);

  if (!v15 || (objc_msgSend_firstObject(v15, v16, v17), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_14;
  }

  v20 = v18;
  objc_msgSend_removeObjectAtIndex_(v15, v19, 0);
  if (!objc_msgSend_count(v15, v21, v22))
  {
    v25 = objc_msgSend_fakeErrorsByClassName(*(a1 + 32), v23, v24);
    v26 = *(a1 + 40);
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    objc_msgSend_removeObjectForKey_(v25, v29, v28);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v30 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v111 = *(a1 + 40);
    log = v30;
    v112 = objc_opt_class();
    v113 = NSStringFromClass(v112);
    v114 = *(a1 + 40);
    v116 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v114, v115, 1, 0, 0);
    v119 = objc_msgSend_CKPropertiesStyleString(v116, v117, v118);
    v121 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(*(a1 + 40), v120, 0, 1, 0);
    v124 = objc_msgSend_CKPropertiesStyleString(v121, v122, v123);
    *buf = 138544386;
    v136 = v113;
    v137 = 2048;
    v138 = v114;
    v139 = 2114;
    v140 = v119;
    v141 = 2112;
    v142 = v124;
    v143 = 2112;
    v144 = v20;
    _os_log_error_impl(&dword_22506F000, log, OS_LOG_TYPE_ERROR, "Prematurely failing request <%{public}@: %p; %{public}@, %@> with error %@ because that's what you asked for", buf, 0x34u);
  }

  v33 = *(a1 + 40);
  v34 = objc_msgSend_v1(v20, v31, v32);
  objc_msgSend_finishWithError_(v33, v35, v34);

  v38 = objc_msgSend_v2(v20, v36, v37);

  if (v38)
  {
    v41 = objc_msgSend_v2(v20, v39, v40);
    v41[2](v41, 0);
  }

LABEL_38:
  v97 = *MEMORY[0x277D85DE8];
}

void sub_22516F554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22516F578(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_setServerConfig_(WeakRetained, v7, v9);

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

void sub_22516F6F0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  if (!v6)
  {
    objc_msgSend_setServerInfo_(*(a1 + 32), v5, v8);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v6);
  }
}

void sub_22516F820(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v9 = *(a1 + 40);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = objc_msgSend_publicCodeServiceURL(v12, v5, v6);
      goto LABEL_13;
    }

    if (v9 == 4)
    {
      v10 = objc_msgSend_publicMetricsServiceURL(v12, v5, v6);
      goto LABEL_13;
    }

LABEL_10:
    v10 = objc_msgSend_publicCloudDBURL(v12, v5, v6);
    goto LABEL_13;
  }

  if (v9 == 1)
  {
    v10 = objc_msgSend_publicShareServiceURL(v12, v5, v6);
    goto LABEL_13;
  }

  if (v9 != 2)
  {
    goto LABEL_10;
  }

  v10 = objc_msgSend_publicDeviceServiceURL(v12, v5, v6);
LABEL_13:
  v8 = v10;
LABEL_14:
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v8, v7);
  }
}

void sub_22516F9D0(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = v7;
    v19 = objc_msgSend_containerScopedUserID(v5, v17, v18);
    v22 = objc_msgSend_account(*(a1 + 32), v20, v21);
    v25 = objc_msgSend_dsid(v22, v23, v24);
    v26 = 138543618;
    v27 = v19;
    v28 = 2112;
    v29 = v25;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Fetched container scoped user ID of %{public}@ for dsid %@", &v26, 0x16u);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = objc_msgSend_containerScopedUserID(v5, v8, v9);
    v14 = objc_msgSend_orgAdminUserID(v5, v12, v13);
    (*(v10 + 16))(v10, v11, v14, v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_22516FC24(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v8 = a3;
    v7 = objc_msgSend_environment(a2, v5, v6);
    (*(v3 + 16))(v3, v7, v8);
  }
}

void sub_22516FE48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22516FE6C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (*(a1 + 32))
  {
    v7 = objc_msgSend_baseURLForServerType_partitionType_(WeakRetained, v5, *(a1 + 48), 1);
    (*(*(a1 + 32) + 16))();
  }
}

void sub_2251706D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2251706FC(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = *MEMORY[0x277CBBF10];
  v8 = objc_msgSend_applicationBundleID(*(a1 + 32), v6, v7);
  v10 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v4, v9, v5, @"%@", 0, v8);

  if (objc_msgSend_isEqualToString_(v10, v11, v3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    v15 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      *buf = 138543618;
      v29 = v16;
      v30 = 2114;
      v31 = v3;
      v17 = "Allowing data repair container %{public}@ to set bundle identifier override on operation to '%{public}@'";
LABEL_12:
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, v17, buf, 0x16u);
    }
  }

  else if (objc_msgSend_length(*(a1 + 40), v12, v13) && objc_msgSend_hasPrefix_(v3, v18, *(a1 + 40)))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    v15 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 32);
      *buf = 138543618;
      v29 = v19;
      v30 = 2114;
      v31 = v3;
      v17 = "Allowing %{public}@ to set bundle identifier override on operation to prefixed value '%{public}@'";
      goto LABEL_12;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      v27 = *(a1 + 32);
      *buf = 138412546;
      v29 = v27;
      v30 = 2114;
      v31 = v3;
      _os_log_fault_impl(&dword_22506F000, v20, OS_LOG_TYPE_FAULT, "Container %@ is not allowed to set bundle identifier override '%{public}@'", buf, 0x16u);
    }

    v22 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v21, *MEMORY[0x277CBBF50], 8, @"Container %@ is not allowed to set application bundle identifier override %@ without an entitlement", *(a1 + 32), v3);
    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    v15 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_2251710F8()
{
  v0 = objc_opt_new();
  v1 = qword_280D58170;
  qword_280D58170 = v0;

  objc_msgSend_setName_(qword_280D58170, v2, @"com.apple.cloudkit.sharedThrottlingQueue");
  v9 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v3, v4);
  v7 = objc_msgSend_clientThrottleQueueWidth(v9, v5, v6);
  objc_msgSend_setMaxConcurrentOperationCount_(qword_280D58170, v8, v7);
}

void sub_225171180(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_msgSend_userInfo(v3, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"CKDAuthorizationBundleIdentifierKey");

  v12 = objc_msgSend_applicationBundleIdentifierForTCC(WeakRetained, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v13, v9);

  if (isEqualToString)
  {
    v17 = objc_msgSend_tccAuthQueue(WeakRetained, v15, v16);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_22517129C;
    v18[3] = &unk_278545898;
    v19 = v3;
    v20 = WeakRetained;
    dispatch_async(v17, v18);
  }
}

void sub_22517129C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(*(a1 + 32), a2, a3);
  v10 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"CKDAuthorizationKey");

  if (v10)
  {
    v8 = objc_msgSend_unsignedIntegerValue(v10, v6, v7);
    objc_msgSend__lockedHandleTCCAuthorizationChangedEvent_(*(a1 + 40), v9, v8);
  }

  else
  {
    objc_msgSend__lockedHandleTCCAuthorizationChangedEvent_(*(a1 + 40), v6, -1);
  }
}

void sub_225171E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225171E64(uint64_t a1, const char *a2)
{
  result = objc_msgSend__lockedHasTCCAuthorization_(*(a1 + 32), a2, *(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_22517233C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v6 = objc_msgSend_completionBlock(*(a1 + 32), v4, v5);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22517255C;
  v27[3] = &unk_2785471F8;
  v7 = v6;
  v28 = v7;
  objc_copyWeak(&v31, &location);
  v29 = *(a1 + 64);
  v30 = *(a1 + 72);
  objc_msgSend_setCompletionBlock_(*(a1 + 32), v8, v27);
  isLongLived = objc_msgSend_isLongLived(*(a1 + 32), v9, v10);
  v14 = *(a1 + 40);
  if (isLongLived)
  {
    v15 = objc_msgSend_uncancellableOperationQueue(v14, v11, v12);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2251725FC;
    v23[3] = &unk_278547248;
    v22 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = *(a1 + 56);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    *&v20 = v22;
    *(&v20 + 1) = v16;
    v24 = v20;
    v25 = v19;
    v26 = *(a1 + 72);
    objc_msgSend_addOperationWithBlock_(v15, v21, v23);
  }

  else
  {
    objc_msgSend_addOperation_(v14, v11, *(a1 + 32));
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void sub_225172534(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_22517255C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 40);
  v11 = WeakRetained;
  v7 = objc_msgSend_container(WeakRetained, v5, v6);
  v9 = v7;
  v10 = *(a1 + 48);
  if (v4)
  {
    objc_msgSend__handleCompletionForOperation_initialMessageReplyBlock_customCompletionBlock_(v7, v8, v11, v10, *(a1 + 40));
  }

  else
  {
    objc_msgSend__handleCompletionForOperation_initialMessageReplyBlock_(v7, v8, v11, v10);
  }
}

void sub_2251725FC(uint64_t a1, const char *a2, uint64_t a3)
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_deviceContext(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_operationInfoCache(v4, v5, v6);
  v10 = objc_msgSend_operationID(*(a1 + 40), v8, v9);
  v12 = objc_msgSend_operationInfoMetadataForOperationWithID_(v7, v11, v10);

  v15 = objc_msgSend_retryNumber(v12, v13, v14);
  v18 = objc_msgSend_integerValue(v15, v16, v17);

  if (objc_msgSend_isOutstandingOperation(*(a1 + 40), v19, v20) && (!objc_msgSend_isOutstandingOperation(*(a1 + 40), v21, v22) || (objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v21, v22), v23 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend_longlivedOperationMaxRetryCount(v23, v24, v25), v23, v18 <= v26)))
  {
    if (!v12)
    {
      v29 = objc_msgSend_operationID(*(a1 + 48), v21, v22);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v30 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v29;
        _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "No cached metadata found for outstanding operation %{public}@. Finishing it with an error", location, 0xCu);
      }

      v33 = objc_msgSend_deviceContext(*(a1 + 32), v31, v32);
      v36 = objc_msgSend_operationInfoCache(v33, v34, v35);
      v37 = *(a1 + 40);
      v40 = objc_msgSend_appContainerAccountTuple(*(a1 + 32), v38, v39);
      objc_msgSend_setOperationInfo_forOperationID_appContainerAccountTuple_(v36, v41, v37, v29, v40);

      v43 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v42, *MEMORY[0x277CBC120], 1000, @"No cached metadata found for outstanding operation %@", v29);
      v45 = objc_msgSend_CKInvocationToFinishOperationWithInfo_withError_(MEMORY[0x277CBEAE8], v44, *(a1 + 40), v43);
      v46 = [CKDLongLivedOperationPersistedCallback alloc];
      isCompletionCallback = objc_msgSend_initWithProtocol_invocation_isCompletionCallback_(v46, v47, *(a1 + 56), v45, 1);
      v51 = objc_msgSend_deviceContext(*(a1 + 32), v49, v50);
      v54 = objc_msgSend_operationInfoCache(v51, v52, v53);
      objc_msgSend_archiveCallback_forOperationID_(v54, v55, isCompletionCallback, v29);
    }
  }

  else
  {
    v27 = objc_msgSend_container(*(a1 + 48), v21, v22);
    objc_msgSend_addOperation_(v27, v28, *(a1 + 48));
  }

  v56 = [CKDLongLivedCallbackRelayOperation alloc];
  v58 = objc_msgSend_initWithOperationInfo_container_(v56, v57, *(a1 + 40), *(a1 + 32));
  v61 = objc_msgSend_clientOperationCallbackProxy(v58, v59, v60);
  objc_msgSend_activate(v61, v62, v63);

  objc_initWeak(location, v58);
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = sub_2251729D0;
  v67[3] = &unk_278547220;
  objc_copyWeak(&v69, location);
  v68 = *(a1 + 64);
  objc_msgSend_setCompletionBlock_(v58, v64, v67);
  objc_msgSend_addOperation_(*(a1 + 32), v65, v58);

  objc_destroyWeak(&v69);
  objc_destroyWeak(location);

  v66 = *MEMORY[0x277D85DE8];
}

void sub_2251729A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251729D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_container(WeakRetained, v2, v3);
  objc_msgSend__handleCompletionForOperation_initialMessageReplyBlock_customCompletionBlock_(v4, v5, WeakRetained, *(a1 + 32), &unk_28385CC80);
}

void sub_225172B94(uint64_t a1)
{
  v87 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, *(a1 + 32));
  if (objc_msgSend_wantsRequestStatistics(*(a1 + 40), v2, v3))
  {
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = sub_225172FF8;
    v80[3] = &unk_278547298;
    objc_copyWeak(&v81, &location);
    objc_msgSend_setRequestCompletedBlock_(*(a1 + 32), v6, v80);
    objc_destroyWeak(&v81);
  }

  v7 = objc_msgSend_pendingOperationIDs(*(a1 + 48), v4, v5);
  objc_sync_enter(v7);
  v10 = objc_msgSend_pendingOperationIDs(*(a1 + 48), v8, v9);
  v12 = objc_msgSend_containsObject_(v10, v11, *(a1 + 56));

  v15 = objc_msgSend_pendingOperationIDs(*(a1 + 48), v13, v14);
  objc_msgSend_removeObject_(v15, v16, *(a1 + 56));

  objc_sync_exit(v7);
  if ((v12 & 1) != 0 || (objc_msgSend_cancel(*(a1 + 32), v17, v18), objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 1, @"Operation %@ was cancelled", *(a1 + 56)), (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v22 = *(a1 + 48);
    v23 = *(a1 + 32);
    v79 = 0;
    objc_msgSend__isContainerAuthorizedForOperation_error_(v22, v17, v23, &v79);
    v21 = v79;
    if (!v21)
    {
      if (objc_msgSend_isLongLivedCallbackRelayOperation(*(a1 + 32), v17, v20))
      {
        v29 = objc_msgSend_processScopedClientProxy(*(a1 + 48), v27, v28);
        if (!objc_msgSend_processIsAttached(v29, v30, v31))
        {
LABEL_15:

          goto LABEL_16;
        }

        isOutstandingOperation = objc_msgSend_isOutstandingOperation(*(a1 + 40), v32, v33);

        if ((isOutstandingOperation & 1) == 0)
        {
          v35 = objc_msgSend_deviceContext(*(a1 + 48), v27, v28);
          v38 = objc_msgSend_operationInfoCache(v35, v36, v37);
          v39 = *(a1 + 56);
          v40 = *(a1 + 40);
          v43 = objc_msgSend_appContainerAccountTuple(*(a1 + 48), v41, v42);
          objc_msgSend_setOperationInfo_forOperationID_appContainerAccountTuple_(v38, v44, v40, v39, v43);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v45 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v78 = *(a1 + 48);
            v77 = *(a1 + 56);
            *buf = 138543618;
            v84 = v77;
            v85 = 2112;
            v86 = v78;
            _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Writing down long-lived operation %{public}@ for container: %@", buf, 0x16u);
          }

          v29 = objc_msgSend_clientOperationCallbackProxy(*(a1 + 32), v46, v47);
          objc_msgSend_handleLongLivedOperationDidPersist(v29, v48, v49);
          goto LABEL_15;
        }
      }

LABEL_16:
      if (objc_msgSend_isLongLived(*(a1 + 32), v27, v28))
      {
        if ((objc_msgSend_isLongLivedCallbackRelayOperation(*(a1 + 32), v50, v51) & 1) == 0)
        {
          v52 = objc_msgSend_ckOperationClassName(*(a1 + 40), v50, v51);
          v55 = objc_msgSend_containerID(*(a1 + 48), v53, v54);
          isOperationAllowedIndependentlyInSyncBubble = _isOperationAllowedIndependentlyInSyncBubble(v52, v55);

          if (isOperationAllowedIndependentlyInSyncBubble)
          {
            objc_msgSend_beginUserSyncTask(*(a1 + 32), v50, v51);
          }
        }
      }

      v21 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v50, v51);
      if (objc_msgSend_usesBackgroundSession(*(a1 + 32), v57, v58))
      {
        v61 = objc_msgSend_backgroundOperationThrottleQueue(*(a1 + 48), v59, v60);

        v21 = v61;
      }

      v62 = objc_msgSend_entitlements(*(a1 + 48), v59, v60);
      if (objc_msgSend_hasCloudKitSupportServiceEntitlement(v62, v63, v64))
      {
        isCloudKitSupportOperation = objc_msgSend_isCloudKitSupportOperation(*(a1 + 32), v65, v66);

        if (!isCloudKitSupportOperation)
        {
LABEL_26:
          v70 = [CKDPlaceholderOperation alloc];
          v25 = objc_msgSend_initWithOperation_targetOperationQueue_(v70, v71, *(a1 + 32), v21);
          v74 = objc_msgSend_operationQueue(*(a1 + 48), v72, v73);
          objc_msgSend_addOperation_(v74, v75, v25);

          goto LABEL_27;
        }

        objc_msgSend_cloudKitSupportOperationThrottleQueue(*(a1 + 48), v68, v69);
        v21 = v62 = v21;
      }

      goto LABEL_26;
    }
  }

  v24 = *(a1 + 32);
  v25 = objc_msgSend_CKClientSuitableError(v21, v17, v20);
  objc_msgSend_finishWithError_(v24, v26, v25);
LABEL_27:

  objc_destroyWeak(&location);
  v76 = *MEMORY[0x277D85DE8];
}

void sub_225172FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225172FF8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v4, v5);
    objc_msgSend_handleRequestDidComplete_(v6, v7, v3);
  }
}

void sub_225173144(uint64_t a1)
{
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_2251731F8;
  v10 = &unk_278546550;
  v2 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v2;
  v3 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v7);
  v6 = objc_msgSend_accountStatusWorkloop(*(a1 + 32), v4, v5, v7, v8, v9, v10, v11);
  dispatch_async(v6, v3);
}

void sub_2251731F8(uint64_t a1)
{
  v241 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v5 = objc_msgSend__accountStatus(*(a1 + 32), v3, v4);
  objc_msgSend_setAccountStatus_(v2, v6, v5);
  objc_msgSend_setWalrusStatus_(v2, v7, 0);
  objc_msgSend_setDeviceToDeviceEncryptionAvailability_(v2, v8, 0);
  v11 = objc_msgSend_options(*(a1 + 32), v9, v10);
  v14 = objc_msgSend_bypassPCSEncryption(v11, v12, v13);
  objc_msgSend_setBypassPCSEncryption_(v2, v15, v14);

  hasTCCAuthorization = objc_msgSend_hasTCCAuthorization_(*(a1 + 32), v16, 1);
  objc_msgSend_setAccountAccessAuthorization_(v2, v18, hasTCCAuthorization);
  v21 = objc_msgSend_account(*(a1 + 32), v19, v20);
  v24 = objc_msgSend_identifier(v21, v22, v23);
  if (v24)
  {
    v27 = v24;
    v28 = objc_msgSend_containerID(*(a1 + 32), v25, v26);

    if (!v28)
    {
      goto LABEL_5;
    }

    v31 = MEMORY[0x277CCACA8];
    v32 = objc_msgSend_account(*(a1 + 32), v29, v30);
    v35 = objc_msgSend_identifier(v32, v33, v34);
    v38 = objc_msgSend_containerID(*(a1 + 32), v36, v37);
    v21 = objc_msgSend_stringWithFormat_(v31, v39, @"%@|%@", v35, v38);

    v42 = objc_msgSend_CKSHA256Base64(v21, v40, v41);
    objc_msgSend_setIdentifier_(v2, v43, v42);
  }

LABEL_5:
  v44 = objc_msgSend_bypassPCSEncryption(v2, v29, v30);
  v47 = objc_msgSend_account(*(a1 + 32), v45, v46);
  if (objc_msgSend_isPrimaryAccount(v47, v48, v49))
  {
    v52 = 0;
  }

  else
  {
    v53 = objc_msgSend_deviceContext(*(a1 + 32), v50, v51);
    v56 = objc_msgSend_testDeviceReference(v53, v54, v55);
    v52 = v56 == 0;
  }

  v59 = objc_msgSend_account(*(a1 + 32), v57, v58);
  v62 = MEMORY[0x277CBC830];
  v63 = MEMORY[0x277CBC880];
  if (!v59 || (v64 = v59, objc_msgSend_account(*(a1 + 32), v60, v61), v65 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend_accountType(v65, v66, v67), v65, v64, v68 == 1))
  {
LABEL_10:
    if (*v63 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    goto LABEL_15;
  }

  if (*v63 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v69 = *v62;
  if (os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
  {
    if (v52)
    {
      v197 = &stru_28385ED00;
    }

    else
    {
      v197 = @" not";
    }

    v198 = *(a1 + 32);
    v199 = v69;
    v202 = objc_msgSend_containerID(v198, v200, v201);
    *buf = 138412802;
    v234 = v197;
    v235 = 2048;
    v236 = v198;
    v237 = 2112;
    v238 = v202;
    _os_log_debug_impl(&dword_22506F000, v199, OS_LOG_TYPE_DEBUG, "Current account is%@ secondary account for CKDContainer %p, containerID %@.", buf, 0x20u);

    goto LABEL_10;
  }

LABEL_15:
  v70 = *v62;
  if (os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
  {
    v149 = *(a1 + 32);
    v150 = v70;
    v153 = objc_msgSend_accountOverrideInfo(v149, v151, v152);
    v154 = *(a1 + 32);
    *buf = 138412546;
    v234 = v153;
    v235 = 2048;
    v236 = v154;
    _os_log_debug_impl(&dword_22506F000, v150, OS_LOG_TYPE_DEBUG, "Account Override info %@ for CKDContainer %p", buf, 0x16u);
  }

  v73 = objc_msgSend_options(*(a1 + 32), v71, v72);
  OnlyManatee = objc_msgSend_forceEnableReadOnlyManatee(v73, v74, v75);

  if (OnlyManatee)
  {
    objc_msgSend_setDeviceToDeviceEncryptionAvailability_(v2, v77, 3);
    goto LABEL_25;
  }

  if (!((objc_msgSend_accountStatus(v2, v77, v78) == 3) | v44 & 1))
  {
    v81 = objc_msgSend_deviceContext(*(a1 + 32), v79, v80);
    v84 = objc_msgSend_accountDataSecurityObserver(v81, v82, v83);

    v87 = objc_msgSend_account(*(a1 + 32), v85, v86);
    error = objc_msgSend_isManateeAvailableForAccount_isSecondaryAccount_allowFetch_error_(v84, v88, v87, v52, 1, 0);

    if (error)
    {
      v92 = objc_msgSend_deviceToDeviceEncryptionAvailability(v2, v90, v91);
      objc_msgSend_setDeviceToDeviceEncryptionAvailability_(v2, v93, v92 | 2);
    }

    else
    {
      v96 = objc_msgSend_account(*(a1 + 32), v90, v91);
      v98 = objc_msgSend_accountSupportsManatee_(v84, v97, v96);

      if (!v98)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    v99 = objc_msgSend_deviceToDeviceEncryptionAvailability(v2, v94, v95);
    objc_msgSend_setDeviceToDeviceEncryptionAvailability_(v2, v100, v99 | 1);
    goto LABEL_24;
  }

LABEL_25:
  v101 = objc_msgSend_account(*(a1 + 32), v79, v80);
  if (objc_msgSend_isCarryAccount(v101, v102, v103))
  {
    objc_msgSend_setAccountPartition_(v2, v104, 2);
  }

  else
  {
    objc_msgSend_setAccountPartition_(v2, v104, 1);
  }

  objc_msgSend_setHasValidCredentials_(v2, v105, 1);
  objc_msgSend_setNeedsToVerifyTerms_(v2, v106, 0);
  v109 = objc_msgSend_account(*(a1 + 32), v107, v108);
  v110 = *(a1 + 32);
  v232 = 0;
  v112 = objc_msgSend_iCloudAuthTokenWithContainer_error_(v109, v111, v110, &v232);
  v113 = v232;

  if (!v112 || v113)
  {
    objc_msgSend_setHasValidCredentials_(v2, v114, 0);
  }

  v116 = objc_msgSend_account(*(a1 + 32), v114, v115);
  v117 = *(a1 + 32);
  v231 = v113;
  v119 = objc_msgSend_cloudKitAuthTokenWithContainer_error_(v116, v118, v117, &v231);
  v120 = v231;

  if (!v119 || v120)
  {
    v123 = objc_msgSend_domain(v120, v121, v122);
    v126 = v123;
    if (v123 == *MEMORY[0x277CBC120])
    {
      v128 = objc_msgSend_code(v120, v124, v125);

      if (v128 == 1004)
      {
        objc_msgSend_setNeedsToVerifyTerms_(v2, v127, 1);
      }
    }

    else
    {
    }

    objc_msgSend_setHasValidCredentials_(v2, v127, 0);
  }

  if ((v44 & 1) == 0)
  {
    v129 = objc_msgSend_deviceContext(*(a1 + 32), v121, v122);
    v132 = objc_msgSend_accountDataSecurityObserver(v129, v130, v131);

    v135 = objc_msgSend_account(*(a1 + 32), v133, v134);
    if (objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v132, v136, v135, 1))
    {
      objc_msgSend_setWalrusStatus_(v2, v137, 1);
    }

    else
    {
      objc_msgSend_setWalrusStatus_(v2, v137, 2);
    }
  }

  if (objc_msgSend_accountStatus(v2, v121, v122) == 1 && (objc_msgSend_hasValidCredentials(v2, v138, v139) & 1) == 0)
  {
    objc_msgSend_clientSDKVersion(*(a1 + 32), v138, v139);
    if (CKLinkCheck32f5805a68adfc1b65f94a0de69aa32177c7cd24())
    {
      if ((objc_msgSend__isAdopterAppleInternal(*(a1 + 32), v138, v139) & 1) == 0)
      {
        if (*v63 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v140 = *v62;
        if (os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
        {
          v217 = v140;
          objc_msgSend_accountStatus(v2, v218, v219);
          v220 = CKStringFromAccountStatus();
          v223 = objc_msgSend_containerID(*(a1 + 32), v221, v222);
          *buf = 138412546;
          v234 = v220;
          v235 = 2112;
          v236 = v223;
          _os_log_debug_impl(&dword_22506F000, v217, OS_LOG_TYPE_DEBUG, "Account does not have valid credentials. Setting account status from %@ to temporarily unavailable for container: %@", buf, 0x16u);
        }

        objc_msgSend_setAccountStatus_(v2, v141, 4);
      }
    }
  }

  if (objc_msgSend_accountStatus(v2, v138, v139) == 1 && objc_msgSend_walrusStatus(v2, v142, v143) == 1 && (objc_msgSend_deviceToDeviceEncryptionAvailability(v2, v142, v143) & 2) == 0 && (objc_msgSend_bypassPCSEncryption(v2, v142, v143) & 1) == 0)
  {
    v144 = objc_msgSend_options(*(a1 + 32), v142, v143);
    if (objc_msgSend_useClearAssetEncryption(v144, v145, v146))
    {
    }

    else
    {
      objc_msgSend_clientSDKVersion(*(a1 + 32), v147, v148);
      v155 = CKLinkCheck32f5805a68adfc1b65f94a0de69aa32177c7cd24();

      if (v155)
      {
        if (*v63 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v156 = *v62;
        if (os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
        {
          v224 = v156;
          objc_msgSend_accountStatus(v2, v225, v226);
          v227 = CKStringFromAccountStatus();
          v230 = objc_msgSend_containerID(*(a1 + 32), v228, v229);
          *buf = 138412546;
          v234 = v227;
          v235 = 2112;
          v236 = v230;
          _os_log_debug_impl(&dword_22506F000, v224, OS_LOG_TYPE_DEBUG, "Account has walrus but not manatee. Setting account status from %@ to temporarily unavailable for container: %@", buf, 0x16u);
        }

        objc_msgSend_setAccountStatus_(v2, v157, 4);
      }
    }
  }

  v158 = objc_msgSend_account(*(a1 + 32), v142, v143);
  if (objc_msgSend_isWarmingUp(v158, v159, v160) && (objc_msgSend_clientSDKVersion(*(a1 + 32), v161, v162), (CKLinkCheck1b43ebd13e37451090125b6380e6d1e8() & 1) != 0))
  {
    v165 = objc_msgSend_entitlements(*(a1 + 32), v163, v164);
    hasNotifyOnAccountWarmupEntitlement = objc_msgSend_hasNotifyOnAccountWarmupEntitlement(v165, v166, v167);

    if ((hasNotifyOnAccountWarmupEntitlement & 1) == 0)
    {
      if (*v63 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v171 = *v62;
      if (os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
      {
        v210 = v171;
        objc_msgSend_accountStatus(v2, v211, v212);
        v213 = CKStringFromAccountStatus();
        v216 = objc_msgSend_containerID(*(a1 + 32), v214, v215);
        *buf = 138412546;
        v234 = v213;
        v235 = 2112;
        v236 = v216;
        _os_log_debug_impl(&dword_22506F000, v210, OS_LOG_TYPE_DEBUG, "Account is still warming up. Setting account status from %@ to temporarily unavailable for container: %@", buf, 0x16u);
      }

      objc_msgSend_setAccountStatus_(v2, v172, 4);
    }
  }

  else
  {
  }

  if (objc_msgSend_shouldUsePCSEncryption(*(a1 + 32), v169, v170))
  {
    v175 = objc_msgSend_pcsManager(*(a1 + 32), v173, v174);
    v178 = objc_msgSend_pcsServiceName(v175, v176, v177);

    v181 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v179, v180);
    v183 = objc_msgSend_serviceNeedsDBRReauthentication_(v181, v182, v178);

    if (v183)
    {
      if (*v63 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v184 = *v62;
      if (os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
      {
        v203 = v184;
        objc_msgSend_accountStatus(v2, v204, v205);
        v206 = CKStringFromAccountStatus();
        v209 = objc_msgSend_containerID(*(a1 + 32), v207, v208);
        *buf = 138412802;
        v234 = v178;
        v235 = 2112;
        v236 = v206;
        v237 = 2112;
        v238 = v209;
        _os_log_debug_impl(&dword_22506F000, v203, OS_LOG_TYPE_DEBUG, "Service: %@ needs DBR re-authentication. Setting account status from %@ to temporarily unavailable for container: %@", buf, 0x20u);
      }

      objc_msgSend_setAccountStatus_(v2, v185, 4);
    }
  }

  v186 = objc_msgSend_build(v2, v173, v174);
  if (*v63 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v187 = *v62;
  if (os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
  {
    v190 = *(a1 + 32);
    v191 = v187;
    v194 = objc_msgSend_account(v190, v192, v193);
    v195 = &stru_28385ED00;
    *buf = 138413058;
    v196 = @".\nError was ";
    v234 = v194;
    v235 = 2112;
    if (!v120)
    {
      v196 = &stru_28385ED00;
    }

    v236 = v186;
    if (v120)
    {
      v195 = v120;
    }

    v237 = 2114;
    v238 = v196;
    v239 = 2112;
    v240 = v195;
    _os_log_debug_impl(&dword_22506F000, v191, OS_LOG_TYPE_DEBUG, "Returning account info for account %@ \nto client: %@%{public}@%@", buf, 0x2Au);
  }

  v188 = *(a1 + 40);
  if (v188)
  {
    (*(v188 + 16))(v188, v186, 0);
  }

  v189 = *MEMORY[0x277D85DE8];
}

void sub_225173F18(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accountStatusWorkloop(*(a1 + 32), a2, a3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225173FBC;
  v6[3] = &unk_278546550;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, v6);
}

uint64_t sub_225173FBC(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Reloading account for %@", &v12, 0xCu);
  }

  v6 = objc_msgSend_sharedAccountStore(CKDAccountStore, v3, v4);
  objc_msgSend_invalidateCache(v6, v7, v8);

  objc_msgSend__reloadAccount_(*(a1 + 32), v9, 1);
  result = (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_225174184(uint64_t a1)
{
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_225174238;
  v10 = &unk_278546550;
  v2 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v2;
  v3 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v7);
  v6 = objc_msgSend_accountStatusWorkloop(*(a1 + 32), v4, v5, v7, v8, v9, v10, v11);
  dispatch_async(v6, v3);
}

void sub_225174238(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend__accountStatus(*(a1 + 32), a2, a3) == 1)
  {
    v28 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v4, v5);
    v6 = objc_opt_new();
    objc_msgSend_setResolvedConfiguration_(v6, v7, v28);
    v8 = [CKDOperationInfoHolderOperation alloc];
    v10 = objc_msgSend_containerForOperationInfo_(*(a1 + 32), v9, v6);
    v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, v6, v10);

    objc_msgSend_fetchImportantUserIDsForOperation_withCompletionHandler_(*(a1 + 32), v13, v12, *(a1 + 40));
  }

  else
  {
    if (!*(a1 + 40))
    {
      return;
    }

    v14 = objc_msgSend_entitlements(*(a1 + 32), v4, v5);
    isBackgroundAssetsExtension = objc_msgSend_isBackgroundAssetsExtension(v14, v15, v16);

    if (isBackgroundAssetsExtension)
    {
      v20 = @"Background Assets Extension processes don't have access to an iCloud account";
    }

    else
    {
      v21 = objc_msgSend_entitlements(*(a1 + 32), v18, v19);
      v24 = objc_msgSend_cloudServices(v21, v22, v23);
      v26 = objc_msgSend_containsObject_(v24, v25, *MEMORY[0x277CBC8C8]);

      v20 = @"CloudKit-Anonymous / App Clips processes don't have access to an iCloud account";
      if (v26)
      {
        v20 = @"No iCloud account is configured";
      }
    }

    v27 = *(a1 + 40);
    v28 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v18, *MEMORY[0x277CBBF50], 9, @"%@", v20);
    (*(v27 + 16))(v27, 0, 0);
  }
}

void sub_22517455C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517457C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (v4)
  {
    v7 = *(a1 + 40);
    v8 = objc_msgSend_error(WeakRetained, v5, v6);
    (*(v7 + 16))(v7, 1, v8);
  }

  else
  {
    if (*(a1 + 56) == 1)
    {
      v9 = objc_msgSend_discoverable(WeakRetained, v5, v6);
      objc_msgSend__applicationPermissionStatusFromUserPrivacySetting_(*(a1 + 32), v10, v9);
    }

    else
    {
      objc_msgSend__applicationPermissionStatusFromUserPrivacySetting_(*(a1 + 32), v5, 0);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_2251747DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v20 - 72));
  _Unwind_Resume(a1);
}

void sub_22517480C(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (v5)
  {
    v8 = *(a1 + 40);
    v9 = objc_msgSend_error(WeakRetained, v6, v7);
    (*(v8 + 16))(v8, 1, 0, v9);
LABEL_16:
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = WeakRetained;
    v9 = objc_msgSend_containerPrivacySettings(WeakRetained, v6, v7);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v34, v38, 16);
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v34 + 1) + 8 * v14);
          v16 = objc_loadWeakRetained((a1 + 56));
          v19 = objc_msgSend_containerID(v16, v17, v18);
          v22 = objc_msgSend_containerID(v15, v20, v21);
          isEqual = objc_msgSend_isEqual_(v19, v23, v22);

          if (isEqual)
          {
            if (*(a1 + 64))
            {
              v28 = objc_msgSend_discoverable(v15, v25, v26) != 0;
              v27 = objc_msgSend_discoverable(v15, v29, v30);
            }

            else
            {
              v27 = 0;
              v28 = 0;
            }

            WeakRetained = v33;
            v31 = objc_msgSend__applicationPermissionStatusFromUserPrivacySetting_(*(a1 + 32), v25, v27);
            (*(*(a1 + 40) + 16))(*(a1 + 40), v31, v28, 0);
            goto LABEL_16;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v25, &v34, v38, 16);
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 40) + 16))();
    WeakRetained = v33;
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_225174BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225174BCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (v4)
  {
    v7 = objc_msgSend_error(WeakRetained, v5, v6);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (*(a1 + 48))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v8, 0);
  }
}

void sub_225174D24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 1;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 1;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = a2;
  v6 = dispatch_group_create();
  v7 = v6;
  if (!a2)
  {
    dispatch_group_enter(v6);
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_225174F4C;
    v25[3] = &unk_278547358;
    v25[4] = v8;
    v27 = v30;
    v28 = v29;
    v26 = v7;
    objc_msgSend__globalStatusForApplicationPermission_completionHandler_(v8, v10, v9, v25);
  }

  v11 = CKGetGlobalQueue();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22517515C;
  v16[3] = &unk_2785473A8;
  v23 = a2;
  v20 = v29;
  v12 = *(a1 + 40);
  v21 = v32;
  v13 = *(a1 + 32);
  v17 = v5;
  v18 = v13;
  v19 = v12;
  v14 = *(a1 + 48);
  v22 = v30;
  v24 = v14;
  v15 = v5;
  dispatch_group_notify(v7, v11, v16);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);
}

void sub_225174F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_225174F4C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v31[3] = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (a2 == 3)
  {
    if ((a3 & 1) == 0)
    {
      v29 = objc_msgSend_applicationDisplayName(*(a1 + 32), v7, v8);
      v10 = CKLocalizedString();

      v11 = CKLocalizedString();
      v12 = *MEMORY[0x277CBF198];
      v30[0] = *MEMORY[0x277CBF188];
      v30[1] = v12;
      v31[0] = v10;
      v31[1] = v11;
      v30[2] = *MEMORY[0x277CBF1E8];
      v13 = CKLocalizedString();
      v31[2] = v13;
      v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v31, v30, 3, v29);
      v18 = objc_msgSend_mutableCopy(v15, v16, v17);

      v21 = objc_msgSend_applicationIcon(*(a1 + 32), v19, v20);

      if (v21)
      {
        v24 = objc_msgSend_applicationIcon(*(a1 + 32), v22, v23);
        objc_msgSend_setObject_forKeyedSubscript_(v18, v25, v24, *MEMORY[0x277CBF1F0]);
      }

      v26 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v18);
      objc_msgSend_showUserNotification_withCompletionBlock_(MEMORY[0x277CBC7D0], v27, v26, &unk_28385CCA0);
      if (v26)
      {
        CFRelease(v26);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));

  v28 = *MEMORY[0x277D85DE8];
}

void sub_22517515C(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 80);
    v5 = *(*(*(a1 + 56) + 8) + 24);
    *buf = 67109376;
    v52 = v4;
    v53 = 1024;
    v54 = v5;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Permission status: %d (global: %d)", buf, 0xEu);
  }

  v6 = *(a1 + 80);
  if ((v6 - 2) < 2)
  {
    v7 = *(*(*(a1 + 56) + 8) + 24);
    if (v6 != v7)
    {
      goto LABEL_11;
    }

LABEL_9:
    v8 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
    goto LABEL_27;
  }

  if (v6 == 1)
  {
    goto LABEL_9;
  }

  v7 = *(*(*(a1 + 56) + 8) + 24);
LABEL_11:
  if (v7 == 2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v9 = objc_msgSend_deviceContext(*(a1 + 40), v6, v3);
  v12 = objc_msgSend_testDeviceReference(v9, v10, v11);

  if (v12)
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v15 = *(*(*(a1 + 72) + 8) + 24);
  v16 = *(*(*(a1 + 64) + 8) + 24);
  if (v15 == 1 && (v16 & 1) != 0)
  {
    *buf = 0;
    if (*(a1 + 88))
    {
      v44 = objc_msgSend_applicationDisplayName(*(a1 + 40), v13, v14);
      v19 = CKLocalizedString();

      v20 = *MEMORY[0x277CBF188];
      v50[0] = v19;
      v21 = *MEMORY[0x277CBF198];
      v49[0] = v20;
      v49[1] = v21;
      v22 = CKLocalizedString();
      v50[1] = v22;
      v49[2] = *MEMORY[0x277CBF1E8];
      v23 = CKLocalizedString();
      v50[2] = v23;
      v49[3] = *MEMORY[0x277CBF1C0];
      v24 = CKLocalizedString();
      v50[3] = v24;
      v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v50, v49, 4, v44);
      v18 = objc_msgSend_mutableCopy(v26, v27, v28);

      v31 = objc_msgSend_applicationIcon(*(a1 + 40), v29, v30);

      if (v31)
      {
        v34 = objc_msgSend_applicationIcon(*(a1 + 40), v32, v33);
        objc_msgSend_setObject_forKeyedSubscript_(v18, v35, v34, *MEMORY[0x277CBF1F0]);
      }

      v36 = CFUserNotificationCreate(0, 0.0, 3uLL, buf, v18);

      if (v36)
      {
        v37 = MEMORY[0x277CBC7D0];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = sub_22517559C;
        v45[3] = &unk_278547380;
        v38 = *(a1 + 88);
        v39 = *(a1 + 48);
        v45[4] = *(a1 + 40);
        v47 = v38;
        v46 = v39;
        v48 = v36;
        objc_msgSend_showUserNotification_withCompletionBlock_(v37, v40, v36, v45);

LABEL_26:
        goto LABEL_27;
      }

      v17 = *buf;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v41 = *(a1 + 48);
    v42 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBBF50], 1, @"Could not create a user notification %d", v17);
    (*(v41 + 16))(v41, 1, v42);

    goto LABEL_26;
  }

  objc_msgSend__setApplicationPermission_enabled_completionHandler_(*(a1 + 40), v13, *(a1 + 88), (v15 ^ 1) & v16, *(a1 + 48));
LABEL_27:
  v43 = *MEMORY[0x277D85DE8];
}

void sub_22517559C(uint64_t a1, const char *a2, char a3)
{
  if ((a3 & 3) == 1)
  {
    objc_msgSend__setApplicationPermission_enabled_completionHandler_(*(a1 + 32), a2, *(a1 + 48), 0, *(a1 + 40));
  }

  else if ((a3 & 3) != 0)
  {
    v4 = *(a1 + 40);
    v5 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBBF50], 1, @"Could not create a user notification");
    (*(v4 + 16))(v4, 1, v5);
  }

  else
  {
    objc_msgSend__setApplicationPermission_enabled_completionHandler_(*(a1 + 32), a2, *(a1 + 48), 1, *(a1 + 40));
  }

  v6 = *(a1 + 56);

  CFRelease(v6);
}

void sub_225175700(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = objc_msgSend_clientOperationCallbackProxy(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_operationMetrics(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_error(*(a1 + 32), v7, v8);
  objc_msgSend_handleOperationDidCompleteWithMetrics_error_(v11, v10, v6, v9);
}

void sub_225175B0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }

  objc_msgSend_invalidate(*(a1 + 32), a2, a3);
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    obj = objc_msgSend_operationStatisticsByClassName(*(a1 + 40), v5, v6);
    objc_sync_enter(obj);
    v7 = *(a1 + 48);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = objc_msgSend_operationStatisticsByClassName(*(a1 + 40), v10, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v9);

    if (!v14)
    {
      v16 = [CKDOperationStatistics alloc];
      v14 = objc_msgSend_initWithOperationClassName_(v16, v17, v9);
      v20 = objc_msgSend_operationStatisticsByClassName(*(a1 + 40), v18, v19);
      objc_msgSend_setObject_forKeyedSubscript_(v20, v21, v14, v9);
    }

    objc_msgSend_pushStatisticsTo_(*(a1 + 48), v15, v14);

    objc_sync_exit(obj);
  }
}

void sub_225175F9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_deviceContext(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_operationInfoCache(v4, v5, v6);
  v10 = objc_msgSend_outstandingOperationInfosForIDs_(v7, v8, *(a1 + 40));

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, 0);
  }
}

void sub_2251760E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_deviceContext(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_operationInfoCache(v4, v5, v6);
  v10 = objc_msgSend_appContainerAccountTuple(*(a1 + 32), v8, v9);
  v13 = objc_msgSend_allOutstandingOperationIDsForAppContainerAccountTuple_(v7, v11, v10);

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v13, 0);
  }
}

void sub_2251762C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251762E0(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending user identity to client for operation %{public}@ lookupInfo: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleUserIdentityDiscoveryForLookupInfo_userIdentity_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_225176570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225176590(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v6;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending user identity to client for operation %{public}@ userIdentity: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleUserIdentityDiscovery_(v11, v12, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22517681C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517683C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v18 = v10;
    v21 = objc_msgSend_operationID(v17, v19, v20);
    v22 = 138543618;
    v23 = v21;
    v24 = 2112;
    v25 = v7;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Sending user identity to client for operation %{public}@ lookupInfo: %@", &v22, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
  objc_msgSend_handleShareParticipantFetchForLookupInfo_shareParticipant_error_(v14, v15, v7, v8, v9);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_225176B58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225176B88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 32);
    v27 = v11;
    v30 = objc_msgSend_operationID(v26, v28, v29);
    v31 = 138543618;
    v32 = v30;
    v33 = 2112;
    v34 = v7;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Sending save completion to client for operation %{public}@ zoneID: %@", &v31, 0x16u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v8, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleSaveForRecordZoneID_recordZone_error_(v23, v24, v7, v8, v9);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_225176D58(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending delete completion to client for operation %{public}@ zoneID: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleDeleteForRecordZoneID_error_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_225176FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225177008(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 32);
    v27 = v11;
    v30 = objc_msgSend_operationID(v26, v28, v29);
    v31 = 138543618;
    v32 = v30;
    v33 = 2112;
    v34 = v8;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Sending fetch record zones progress to client for operation %{public}@ zoneID: %@", &v31, 0x16u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v7, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleFetchForRecordZoneID_recordZone_error_(v23, v24, v8, v7, v9);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2251774D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_225177530(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543874;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending zone-was-updated progress to client for operation %{public}@ zoneID: %@ parentZoneID: %@", &v19, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleChangeForRecordZoneID_parentZoneID_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_225177698(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = v4;
    v15 = objc_msgSend_operationID(v11, v13, v14);
    v16 = 138543618;
    v17 = v15;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Sending zone-was-deleted progress to client for operation %{public}@ zoneID: %@", &v16, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleDeleteForRecordZoneID_(v8, v9, v3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2251777DC(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = v4;
    v15 = objc_msgSend_operationID(v11, v13, v14);
    v16 = 138543618;
    v17 = v15;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Sending zone-was-purged progress to client for operation %{public}@ zoneID: %@", &v16, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handlePurgeForRecordZoneID_(v8, v9, v3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_225177920(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = v4;
    v15 = objc_msgSend_operationID(v11, v13, v14);
    v16 = 138543618;
    v17 = v15;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Sending zone-was-delete-due-to-encrypted-data-reset progress to client for operation %{public}@ zoneID: %@", &v16, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleEncryptedDataResetForRecordZoneID_(v8, v9, v3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_225177A64(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    v20 = v12;
    v23 = objc_msgSend_operationID(v19, v21, v22);
    v24 = 138543618;
    v25 = v23;
    v26 = 2112;
    v27 = v10;
    _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Sending change token update progress to client for operation %{public}@ error: %@", &v24, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v14, v15);
  objc_msgSend_handleChangeSetCompletionWithServerChangeToken_databaseChangesStatus_error_reply_(v16, v17, v9, a3, v10, v11);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_225177D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225177D38(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = objc_msgSend_makeClientResult(v12, v14, v15);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 32);
    v24 = v17;
    v27 = objc_msgSend_operationID(v23, v25, v26);
    v28 = 138544386;
    v29 = v27;
    v30 = 2112;
    v31 = v16;
    v32 = 2114;
    v33 = v9;
    v34 = 2114;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "Sending supported device capability check progress to client for operation %{public}@. result: %@, zoneID: %{public}@, capabilitySet: %{public}@, error: %@", &v28, 0x34u);
  }

  v20 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v18, v19);
  objc_msgSend_handleSupportedDeviceCapabilityCheckResultForRecordZoneID_capabilitySet_result_error_(v20, v21, v9, v10, v16, v11);

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2251783A8(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_225178438;
  v5[3] = &unk_278547588;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  objc_msgSend_enumerateContainersUsingBlock_(a2, v4, v5);
}

void sub_225178438(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_msgSend_isEligibleForBroadcastingToContainer_(*(a1 + 32), v4, v3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Found eligible container %@", &v7, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_225178794(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22517886C;
  v6[3] = &unk_2785475D8;
  v7 = v3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  v4 = v3;
  objc_msgSend_enumerateClientContainers_(v4, v5, v6);
}

void sub_22517886C(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    *buf = 138412546;
    v16 = v3;
    v17 = 2112;
    v18 = v12;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Broadcasting share update to client container %@ for container: %@", buf, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 56);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251789EC;
  v13[3] = &unk_2785470C0;
  v14 = v3;
  v9 = v3;
  objc_msgSend_handleSharingUIUpdatedShare_recordID_isDeleted_error_reply_(v9, v10, v5, v6, v7, v8, v13);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2251789EC(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_22506F000, v4, OS_LOG_TYPE_ERROR, "Error broadcasting share update to client container %@: %@", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_225178DF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 48));
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_225178E58(uint64_t a1, void *a2, double a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v6;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 134218242;
    v19 = a3;
    v20 = 2114;
    v21 = v17;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending record save progress %lf to client for operation %{public}@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v8, v9);
  objc_msgSend_handleRecordModificationForRecordID_didProgress_(v10, v11, v5, a3);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_225178FAC(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending records in flight progress to client for operation %{public}@ with recordIDs: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleRecordIDsInFlight_reply_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22517910C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v90 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14 = objc_opt_new();
  v17 = objc_msgSend_etag(v10, v15, v16);
  objc_msgSend_setEtag_(v14, v18, v17);

  v21 = objc_msgSend_creationDate(v10, v19, v20);
  objc_msgSend_setCreationDate_(v14, v22, v21);

  v25 = objc_msgSend_modificationDate(v10, v23, v24);
  objc_msgSend_setModificationDate_(v14, v26, v25);

  v29 = objc_msgSend_expirationDate(v10, v27, v28);
  objc_msgSend_setExpirationDate_(v14, v30, v29);

  objc_msgSend_setServerRecord_(v14, v31, v12);
  v34 = objc_msgSend_container(WeakRetained, v32, v33);
  v37 = objc_msgSend_entitlements(v34, v35, v36);
  if (objc_msgSend_hasProtectionDataEntitlement(v37, v38, v39))
  {
  }

  else
  {
    v44 = objc_msgSend_operationInfo(WeakRetained, v40, v41);
    shouldOnlySaveAssetContent = objc_msgSend_shouldOnlySaveAssetContent(v44, v45, v46);

    if (!shouldOnlySaveAssetContent)
    {
      goto LABEL_6;
    }
  }

  v48 = objc_msgSend_protectionData(v10, v42, v43);
  objc_msgSend_setProtectionData_(v14, v49, v48);

  if (objc_msgSend_signingPCSIdentity(v10, v50, v51))
  {
    objc_msgSend_signingPCSIdentity(v10, v42, v43);
    ExportedRawCompact = PCSIdentityCreateExportedRawCompact();
    objc_msgSend_setSigningPCSIdentityData_(v14, v53, ExportedRawCompact);
  }

LABEL_6:
  v54 = objc_msgSend_container(WeakRetained, v42, v43);
  v57 = objc_msgSend_options(v54, v55, v56);
  if (objc_msgSend_returnPCSMetadata(v57, v58, v59))
  {
    v60 = CKIsPCSError();

    if (v60)
    {
      goto LABEL_11;
    }

    objc_msgSend_fillOutPCSMetadataInfo(v10, v61, v62);
    v65 = objc_msgSend_pcsKeyID(v10, v63, v64);
    objc_msgSend_setPcsKeyID_(v14, v66, v65);

    v69 = objc_msgSend_allPCSKeyIDs(v10, v67, v68);
    objc_msgSend_setAllPCSKeyIDs_(v14, v70, v69);

    v54 = objc_msgSend_zoneishKeyID(v10, v71, v72);
    objc_msgSend_setZoneishKeyID_(v14, v73, v54);
  }

  else
  {
  }

LABEL_11:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v74 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v81 = *(a1 + 32);
    v82 = v74;
    v85 = objc_msgSend_operationID(v81, v83, v84);
    v86 = 138543618;
    v87 = v85;
    v88 = 2112;
    v89 = v9;
    _os_log_debug_impl(&dword_22506F000, v82, OS_LOG_TYPE_DEBUG, "Sending record save completion to client for operation %{public}@ for recordID: %@", &v86, 0x16u);
  }

  v77 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v75, v76);
  objc_msgSend_handleSaveForRecordID_recordMetadata_error_(v77, v78, v9, v14, v11);

  objc_msgSend__broadcastUpdateIfNeededForRecord_recordXPCMetadata_recordID_isDeleted_error_(*(a1 + 40), v79, v10, v14, v9, 0, v11);
  v80 = *MEMORY[0x277D85DE8];
}

void sub_2251794B4(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    v16 = v7;
    v19 = objc_msgSend_operationID(v15, v17, v18);
    v20 = 138543618;
    v21 = v19;
    v22 = 2112;
    v23 = v5;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Sending delete completion to client for operation %{public}@ for recordID: %@", &v20, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleDeleteForRecordID_error_(v11, v12, v5, v6);

  objc_msgSend__broadcastUpdateIfNeededForRecord_recordXPCMetadata_recordID_isDeleted_error_(*(a1 + 40), v13, 0, 0, v5, 1, v6);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_225179630(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8, double a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  v46 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v19 = a3;
  v20 = a5;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v36 = *(a1 + 32);
    v33 = v26;
    v37 = objc_msgSend_operationID(v36, v34, v35);
    *buf = 138543618;
    v43 = v37;
    v44 = 2112;
    v45 = v18;
    _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Sending upload completion to client for operation %{public}@ for recordID: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v30 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v28, v29);
  objc_msgSend_handleRecordUploadForRecordID_recordKey_arrayIndex_signature_size_paddedFileSize_uploaded_uploadReceipt_uploadReceiptExpiration_wrappedAssetKey_clearAssetKey_referenceSignature_(v30, v31, v18, v19, a4, v20, a6, a7, a9, a8, v21, v22, v23, v24);

  v32 = *MEMORY[0x277D85DE8];
}

void sub_225179968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225179988(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_userRecord(WeakRetained, v3, v4);
  v8 = objc_msgSend_recordID(v5, v6, v7);
  v11 = objc_msgSend_error(WeakRetained, v9, v10);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v27 = *(a1 + 32);
    v28 = v12;
    v31 = objc_msgSend_operationID(v27, v29, v30);
    v32 = 138543874;
    v33 = v31;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v11;
    _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Sending fetch completion to client for operation %{public}@ for recordID: %@ error: %@", &v32, 0x20u);
  }

  v15 = objc_msgSend_container(WeakRetained, v13, v14);
  v18 = objc_msgSend_options(v15, v16, v17);
  if (objc_msgSend_returnPCSMetadata(v18, v19, v20))
  {
    v21 = CKIsPCSError();

    if ((v21 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v5, v22, v23);
    }
  }

  else
  {
  }

  v24 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v22, v23);
  objc_msgSend_handleFetchForRecordID_record_error_(v24, v25, v8, v5, v11);

  v26 = *MEMORY[0x277D85DE8];
}

void sub_225179D74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_225179DB4(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleFetchForRecordID_didProgress_(v8, v9, v5, a3);
}

void sub_225179E30(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v28 = *(a1 + 32);
    v29 = v7;
    v32 = objc_msgSend_operationID(v28, v30, v31);
    v33 = 138543618;
    v34 = v32;
    v35 = 2112;
    v36 = v5;
    _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Sending record fetch command to client for operation %{public}@ for recordID: %@", &v33, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  v13 = objc_msgSend_objectForKeyedSubscript_(v6, v12, @"RecordKey");
  v15 = objc_msgSend_objectForKeyedSubscript_(v6, v14, @"ArrayIndex");
  v18 = objc_msgSend_integerValue(v15, v16, v17);
  v20 = objc_msgSend_objectForKeyedSubscript_(v6, v19, @"Data");
  v22 = objc_msgSend_objectForKeyedSubscript_(v6, v21, @"Offset");
  v25 = objc_msgSend_unsignedLongLongValue(v22, v23, v24);
  objc_msgSend_handleAssetDataForRecordID_recordKey_arrayIndex_data_offset_(v11, v26, v5, v13, v18, v20, v25);

  v27 = *MEMORY[0x277D85DE8];
}

void sub_22517A03C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 32);
    v27 = v11;
    v30 = objc_msgSend_operationID(v26, v28, v29);
    v31 = 138543874;
    v32 = v30;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Sending record fetch completion to client for operation %{public}@ for recordID: %@ error: %@", &v31, 0x20u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v7, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleFetchForRecordID_record_error_(v23, v24, v8, v7, v9);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22517A590(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_22517A5F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 32);
    v27 = v11;
    v30 = objc_msgSend_operationID(v26, v28, v29);
    v33 = objc_msgSend_ckShortDescription(v7, v31, v32);
    v34 = 138543618;
    v35 = v30;
    v36 = 2112;
    v37 = v33;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Sending record changed progress to client for operation %{public}@ for recordID: %@", &v34, 0x16u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v8, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleChangeForRecordID_record_error_(v23, v24, v7, v8, v9);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22517A7D4(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending record deleted progress to client for operation %{public}@ for recordID: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleDeleteForRecordID_recordType_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22517A934(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = v4;
    v15 = objc_msgSend_operationID(v11, v13, v14);
    v18 = objc_msgSend_zoneID(v3, v16, v17);
    v19 = 138543618;
    v20 = v15;
    v21 = 2112;
    v22 = v18;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Sending zone attributes changed progress to client for operation %{public}@ for zoneID: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleAttributesChangedForZone_(v8, v9, v3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_22517AA94(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v38 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v32 = *(a1 + 32);
    v29 = v22;
    v33 = objc_msgSend_operationID(v32, v30, v31);
    *buf = 138543618;
    v35 = v33;
    v36 = 2112;
    v37 = v16;
    _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Sending change token update progress to client for operation %{public}@ for zoneID: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v26 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v24, v25);
  objc_msgSend_handleChangeSetCompletionForRecordZoneID_serverChangeToken_clientChangeTokenData_recordChangesStatus_hasPendingArchivedRecords_syncObligationZoneIDs_error_reply_(v26, v27, v16, v17, v18, a5, a6, v19, v20, v21);

  v28 = *MEMORY[0x277D85DE8];
}

void sub_22517AC68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_hash(WeakRetained, v1, v2);
  kdebug_trace();
}

void sub_22517AF94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_22517AFF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 32);
    v27 = v11;
    v30 = objc_msgSend_operationID(v26, v28, v29);
    v33 = objc_msgSend_ckShortDescription(v7, v31, v32);
    v34 = 138543618;
    v35 = v30;
    v36 = 2112;
    v37 = v33;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Sending record changed progress to client for operation %{public}@ for recordID: %@", &v34, 0x16u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v8, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleChangeForRecordID_record_error_(v23, v24, v7, v8, v9);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22517B1D4(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending record deleted progress to client for operation %{public}@ for recordID: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleDeleteForRecordID_(v11, v12, v5);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22517B330(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v38 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = v20;
  if (v19)
  {
    (*(v20 + 2))(v20, 0);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 32);
      v30 = v22;
      v33 = objc_msgSend_operationID(v29, v31, v32);
      v34 = 138543618;
      v35 = v33;
      v36 = 2112;
      v37 = v15;
      _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Sending change token update progress to client for operation %{public}@ for zoneID: %@", &v34, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v26 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v24, v25);
    objc_msgSend_handleChangeSetCompletionWithServerChangeToken_clientChangeTokenData_recordChangesStatus_reply_(v26, v27, v16, v17, a5, v21);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_22517B508(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_hash(WeakRetained, v1, v2);
  kdebug_trace();
}

void sub_22517B564(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v23 = v2;
    v26 = objc_msgSend_operationID(WeakRetained, v24, v25);
    v29 = objc_msgSend_resultServerChangeToken(WeakRetained, v27, v28);
    v32 = objc_msgSend_resultClientChangeTokenData(WeakRetained, v30, v31);
    v35 = 138544130;
    v36 = v26;
    v37 = 2112;
    v38 = v29;
    v39 = 2112;
    v40 = v32;
    v41 = 2048;
    v42 = objc_msgSend_resultStatus(WeakRetained, v33, v34);
    _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Sending completion for operation %{public}@ with server change token %@, client change token date %@, record changes status %ld", &v35, 0x2Au);
  }

  v5 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v3, v4);
  v8 = objc_msgSend_resultServerChangeToken(WeakRetained, v6, v7);
  v11 = objc_msgSend_resultClientChangeTokenData(WeakRetained, v9, v10);
  v14 = objc_msgSend_resultStatus(WeakRetained, v12, v13);
  v17 = objc_msgSend_operationMetrics(WeakRetained, v15, v16);
  v20 = objc_msgSend_error(WeakRetained, v18, v19);
  objc_msgSend_handleOperationDidCompleteWithServerChangeToken_clientChangeTokenData_recordChangesStatus_metrics_error_(v5, v21, v8, v11, v14, v17, v20);

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22517B97C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_22517B9BC(uint64_t a1, void *a2, double a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v6;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543362;
    v19 = v17;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending record move progress to client for operation %{public}@", &v18, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v8, v9);
  objc_msgSend_handleRecordModificationForRecordID_didProgress_(v10, v11, v5, a3);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22517BB04(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v112 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a4;
  v107 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v21 = objc_msgSend_etag(v12, v19, v20);
  objc_msgSend_setEtag_(v17, v22, v21);

  v25 = objc_msgSend_creationDate(v12, v23, v24);
  objc_msgSend_setCreationDate_(v17, v26, v25);

  v29 = objc_msgSend_modificationDate(v12, v27, v28);
  objc_msgSend_setModificationDate_(v17, v30, v29);

  objc_msgSend_setServerRecord_(v17, v31, v15);
  v34 = objc_msgSend_etag(v13, v32, v33);
  objc_msgSend_setEtag_(v18, v35, v34);

  v38 = objc_msgSend_creationDate(v13, v36, v37);
  objc_msgSend_setCreationDate_(v18, v39, v38);

  v42 = objc_msgSend_modificationDate(v13, v40, v41);
  objc_msgSend_setModificationDate_(v18, v43, v42);

  objc_msgSend_setServerRecord_(v18, v44, v13);
  v47 = objc_msgSend_container(WeakRetained, v45, v46);
  v50 = objc_msgSend_entitlements(v47, v48, v49);
  hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v50, v51, v52);

  if (hasProtectionDataEntitlement)
  {
    v56 = objc_msgSend_protectionData(v12, v54, v55);
    objc_msgSend_setProtectionData_(v17, v57, v56);

    v60 = objc_msgSend_protectionData(v13, v58, v59);
    objc_msgSend_setProtectionData_(v18, v61, v60);
  }

  v62 = objc_msgSend_container(WeakRetained, v54, v55);
  v65 = objc_msgSend_options(v62, v63, v64);
  if (objc_msgSend_returnPCSMetadata(v65, v66, v67))
  {
    v68 = CKIsPCSError();

    if (v68)
    {
      goto LABEL_8;
    }

    objc_msgSend_fillOutPCSMetadataInfo(v12, v69, v70);
    v73 = objc_msgSend_pcsKeyID(v12, v71, v72);
    objc_msgSend_setPcsKeyID_(v17, v74, v73);

    v77 = objc_msgSend_allPCSKeyIDs(v12, v75, v76);
    objc_msgSend_setAllPCSKeyIDs_(v17, v78, v77);

    v81 = objc_msgSend_zoneishKeyID(v12, v79, v80);
    objc_msgSend_setZoneishKeyID_(v17, v82, v81);

    objc_msgSend_fillOutPCSMetadataInfo(v13, v83, v84);
    v87 = objc_msgSend_pcsKeyID(v13, v85, v86);
    objc_msgSend_setPcsKeyID_(v18, v88, v87);

    v91 = objc_msgSend_allPCSKeyIDs(v13, v89, v90);
    objc_msgSend_setAllPCSKeyIDs_(v18, v92, v91);

    v62 = objc_msgSend_zoneishKeyID(v13, v93, v94);
    objc_msgSend_setZoneishKeyID_(v18, v95, v62);
  }

  else
  {
  }

LABEL_8:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v96 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v102 = *(v107 + 32);
    v103 = v96;
    v106 = objc_msgSend_operationID(v102, v104, v105);
    *buf = 138543618;
    v109 = v106;
    v110 = 2112;
    v111 = v11;
    _os_log_debug_impl(&dword_22506F000, v103, OS_LOG_TYPE_DEBUG, "Sending record move completion to client for operation %{public}@ for recordID: %@", buf, 0x16u);
  }

  v99 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v97, v98);
  objc_msgSend_handleMoveForSourceRecordID_destinationMetadata_moveMarkerMetadata_error_(v99, v100, v11, v17, v18, v14);

  v101 = *MEMORY[0x277D85DE8];
}

void sub_22517BF38(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8, double a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  v46 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v19 = a3;
  v20 = a5;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v36 = *(a1 + 32);
    v33 = v26;
    v37 = objc_msgSend_operationID(v36, v34, v35);
    *buf = 138543618;
    v43 = v37;
    v44 = 2112;
    v45 = v18;
    _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Sending upload completion to client for operation %{public}@ for recordID: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v30 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v28, v29);
  objc_msgSend_handleRecordUploadForRecordID_recordKey_arrayIndex_signature_size_paddedFileSize_uploaded_uploadReceipt_uploadReceiptExpiration_wrappedAssetKey_clearAssetKey_referenceSignature_(v30, v31, v18, v19, a4, v20, a6, a7, a9, a8, v21, v22, v23, v24);

  v32 = *MEMORY[0x277D85DE8];
}

void sub_22517C344(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_22517C380(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v18 = v10;
    v21 = objc_msgSend_operationID(v17, v19, v20);
    v24 = objc_msgSend_recordID(v8, v22, v23);
    v25 = 138543618;
    v26 = v21;
    v27 = 2112;
    v28 = v24;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Sending record fetch completion for operation %{public}@ with record: %@", &v25, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
  objc_msgSend_handleQueryDidFetchForRecordID_record_error_(v14, v15, v7, v8, v9);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22517C510(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending query cursor update progress to client for operation %{public}@ with cursor: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleQueryDidFetchCursor_reply_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22517C670(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v17 = v2;
    v20 = objc_msgSend_operationID(WeakRetained, v18, v19);
    v23 = objc_msgSend_resultsCursor(WeakRetained, v21, v22);
    v24 = 138543618;
    v25 = v20;
    v26 = 2112;
    v27 = v23;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Sending completion for operation %{public}@ with cursor %@", &v24, 0x16u);
  }

  v5 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v3, v4);
  v8 = objc_msgSend_resultsCursor(WeakRetained, v6, v7);
  v11 = objc_msgSend_operationMetrics(WeakRetained, v9, v10);
  v14 = objc_msgSend_error(WeakRetained, v12, v13);
  objc_msgSend_handleOperationDidCompleteWithCursor_metrics_error_(v5, v15, v8, v11, v14);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22517C9B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_22517C9E0(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending save completion to client for operation %{public}@ for subscription ID: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleSubscriptionSaveForSubscriptionID_error_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22517CB40(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending delete completion to client for operation %{public}@ for subscription ID: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleSubscriptionDeleteForSubscriptionID_error_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22517CDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517CDF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v18 = v10;
    v21 = objc_msgSend_operationID(v17, v19, v20);
    v22 = 138543618;
    v23 = v21;
    v24 = 2112;
    v25 = v8;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Sending fetch subscription progress to client for operation %{public}@ for subscription ID: %@", &v22, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
  objc_msgSend_handleSubscriptionFetchForSubscriptionID_subscription_error_(v14, v15, v8, v7, v9);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22517D094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517D0B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v18 = v10;
    v21 = objc_msgSend_operationID(v17, v19, v20);
    v22 = 138543618;
    v23 = v21;
    v24 = 2112;
    v25 = v7;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Sending accept share progress to client for operation %{public}@ for url: %@", &v22, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
  objc_msgSend_handleShareAcceptanceForURL_share_error_(v14, v15, v7, v8, v9);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22517D358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517D378(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending decline share progress to client for operation %{public}@ for url: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleShareDeclineForURL_error_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22517D608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517D628(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending share access request progress to client for operation %{public}@ for url: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleShareAccessRequestForURL_error_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22517D8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517D8E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v18 = v10;
    v21 = objc_msgSend_operationID(v17, v19, v20);
    v22 = 138543618;
    v23 = v21;
    v24 = 2112;
    v25 = v7;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Sending share metadata progress to client for operation %{public}@ for url: %@", &v22, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
  objc_msgSend_handleShareMetadataFetchForURL_shareMetadata_error_(v14, v15, v7, v8, v9);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22517DB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517DBA8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 32);
    v21 = v13;
    v24 = objc_msgSend_operationID(v20, v22, v23);
    v25 = 138543618;
    v26 = v24;
    v27 = 2112;
    v28 = v9;
    _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Sending bundleIDs mapping progress to client for operation %{public}@ for url: %@", &v25, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v15, v16);
  objc_msgSend_handleBundleIDsFetchedForURL_appBundleIDs_daemonBundleIDs_error_(v17, v18, v9, v10, v11, v12);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22517DE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517DE68(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v17 = v2;
    v20 = objc_msgSend_operationID(WeakRetained, v18, v19);
    v23 = objc_msgSend_webAuthToken(WeakRetained, v21, v22);
    v24 = 138543618;
    v25 = v20;
    v26 = 2112;
    v27 = v23;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Sending completion for operation %{public}@ with web auth token %@", &v24, 0x16u);
  }

  v5 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v3, v4);
  v8 = objc_msgSend_webAuthToken(WeakRetained, v6, v7);
  v11 = objc_msgSend_operationMetrics(WeakRetained, v9, v10);
  v14 = objc_msgSend_error(WeakRetained, v12, v13);
  objc_msgSend_handleOperationDidCompleteWithWebAuthToken_metrics_error_(v5, v15, v8, v11, v14);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22517E0B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_account(*(a1 + 32), a2, a3);
  v7 = v4;
  if (!v4 || objc_msgSend_accountType(v4, v5, v6) == 1)
  {
    v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v5, *MEMORY[0x277CBC120], 1002, @"This requires an authenticated account");
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, 0, 0, v9);
    }

    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    v9 = objc_msgSend_primaryEmail(v7, v5, v8);
    v13 = objc_msgSend_formattedUsername(v7, v11, v12);
    v16 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15);
    if (objc_msgSend_isAppleInternalInstall(v16, v17, v18))
    {
      v21 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v19, v20);
      v24 = objc_msgSend_containerIdentifierToEmailOverrides(v21, v22, v23);
      v27 = objc_msgSend_count(v24, v25, v26);

      if (!v27)
      {
LABEL_15:
        v45 = *(a1 + 40);
        v46 = objc_msgSend_fullName(v7, v28, v29);
        (*(v45 + 16))(v45, v46, v9, v13, 0);

LABEL_16:
        goto LABEL_17;
      }

      v30 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v28, v29);
      v33 = objc_msgSend_containerIdentifierToEmailOverrides(v30, v31, v32);
      v36 = objc_msgSend_containerID(*(a1 + 32), v34, v35);
      v39 = objc_msgSend_containerIdentifier(v36, v37, v38);
      v16 = objc_msgSend_objectForKey_(v33, v40, v39);

      if (objc_msgSend_length(v16, v41, v42))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v43 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v48 = *(a1 + 32);
          v49 = v43;
          v52 = objc_msgSend_containerID(v48, v50, v51);
          v55 = objc_msgSend_containerIdentifier(v52, v53, v54);
          v56 = 138412546;
          v57 = v16;
          v58 = 2112;
          v59 = v55;
          _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Returning override user email %@ for container %@", &v56, 0x16u);
        }

        v44 = v16;

        v9 = v44;
        v13 = v9;
      }
    }

    goto LABEL_15;
  }

LABEL_17:

  v47 = *MEMORY[0x277D85DE8];
}

void sub_22517E4F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pendingOperationIDs(*(a1 + 32), a2, a3);
  objc_sync_enter(v4);
  v7 = objc_msgSend_pendingOperationIDs(*(a1 + 32), v5, v6);
  objc_msgSend_removeAllObjects(v7, v8, v9);

  objc_sync_exit(v4);
  v12 = objc_msgSend_cancellationQueue(*(a1 + 32), v10, v11);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22517E5E0;
  v13[3] = &unk_278547970;
  v13[4] = *(a1 + 32);
  v14 = *(a1 + 40);
  dispatch_async(v12, v13);
}

uint64_t sub_22517E5E0(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v53 = *(a1 + 32);
    *buf = 138412290;
    v60 = v53;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Cancelling all operations for %@", buf, 0xCu);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v3, v4, 0);
  v8 = objc_msgSend_operations(v5, v6, v7);

  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v54, v58, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v55;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v55 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v54 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v14;
          v19 = objc_msgSend_container(v16, v17, v18);
          v20 = *(a1 + 32);

          if (*(a1 + 40) == 1)
          {
            if (v19 != v20 || (objc_msgSend_isAnonymous(v16, v21, v22) & 1) != 0)
            {
              goto LABEL_17;
            }

LABEL_16:
            objc_msgSend_cancel(v16, v21, v22);
          }

          else if (v19 == v20)
          {
            goto LABEL_16;
          }

LABEL_17:

          continue;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v54, v58, 16);
    }

    while (v11);
  }

  v23 = *(a1 + 40);
  v26 = objc_msgSend_cloudKitSupportOperationThrottleQueue(*(a1 + 32), v24, v25);
  v29 = v26;
  if (v23 == 1)
  {
    objc_msgSend_cancelAllAccountScopedOperations(v26, v27, v28);

    v32 = objc_msgSend_backgroundOperationThrottleQueue(*(a1 + 32), v30, v31);
    objc_msgSend_cancelAllAccountScopedOperations(v32, v33, v34);

    v37 = objc_msgSend_operationQueue(*(a1 + 32), v35, v36);
    objc_msgSend_cancelAllAccountScopedOperations(v37, v38, v39);
  }

  else
  {
    objc_msgSend_cancelAllOperations(v26, v27, v28);

    v42 = objc_msgSend_backgroundOperationThrottleQueue(*(a1 + 32), v40, v41);
    objc_msgSend_cancelAllOperations(v42, v43, v44);

    v37 = objc_msgSend_operationQueue(*(a1 + 32), v45, v46);
    objc_msgSend_cancelAllOperations(v37, v47, v48);
  }

  result = objc_msgSend_cancelAllOperations(*(*(a1 + 32) + 408), v49, v50);
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22517E960(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pendingOperationIDs(*(a1 + 32), a2, a3);
  objc_sync_enter(v4);
  v7 = objc_msgSend_pendingOperationIDs(*(a1 + 32), v5, v6);
  objc_msgSend_removeObject_(v7, v8, *(a1 + 40));

  objc_sync_exit(v4);
  v11 = objc_msgSend_cancellationQueue(*(a1 + 32), v9, v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22517EA70;
  block[3] = &unk_278546C30;
  v12 = *(a1 + 40);
  v13 = *(a1 + 32);
  v15 = v12;
  v16 = v13;
  v17 = *(a1 + 48);
  dispatch_async(v11, block);
}

void sub_22517EA70(uint64_t a1, const char *a2, uint64_t a3)
{
  v104 = *MEMORY[0x277D85DE8];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v4 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, a2, a3);
  v7 = objc_msgSend_operations(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v96, v103, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v97;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v97 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v15 = *(*(&v96 + 1) + 8 * v14);
      v16 = objc_msgSend_operationID(v15, v10, v11);
      isEqualToString = objc_msgSend_isEqualToString_(v16, v17, *(a1 + 32));

      if (isEqualToString)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v96, v103, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v21 = v15;

    if (v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_9:
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v22 = objc_msgSend_cloudKitSupportOperationThrottleQueue(*(a1 + 40), v19, v20);
  v25 = objc_msgSend_operations(v22, v23, v24);

  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v92, v102, 16);
  if (v27)
  {
    v30 = v27;
    v31 = *v93;
LABEL_13:
    v32 = 0;
    while (1)
    {
      if (*v93 != v31)
      {
        objc_enumerationMutation(v25);
      }

      v33 = *(*(&v92 + 1) + 8 * v32);
      v34 = objc_msgSend_operationID(v33, v28, v29);
      v36 = objc_msgSend_isEqualToString_(v34, v35, *(a1 + 32));

      if (v36)
      {
        break;
      }

      if (v30 == ++v32)
      {
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v92, v102, 16);
        if (v30)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    v21 = v33;

    if (v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_19:
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v37 = objc_msgSend_backgroundOperationThrottleQueue(*(a1 + 40), v19, v20);
  v40 = objc_msgSend_operations(v37, v38, v39);

  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v88, v101, 16);
  if (v42)
  {
    v45 = v42;
    v46 = *v89;
LABEL_23:
    v47 = 0;
    while (1)
    {
      if (*v89 != v46)
      {
        objc_enumerationMutation(v40);
      }

      v48 = *(*(&v88 + 1) + 8 * v47);
      v49 = objc_msgSend_operationID(v48, v43, v44);
      v51 = objc_msgSend_isEqualToString_(v49, v50, *(a1 + 32));

      if (v51)
      {
        break;
      }

      if (v45 == ++v47)
      {
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v43, &v88, v101, 16);
        if (v45)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    v21 = v48;

    if (v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_29:
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v52 = objc_msgSend_operationQueue(*(a1 + 40), v19, v20);
  v55 = objc_msgSend_operations(v52, v53, v54);

  v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v84, v100, 16);
  if (v57)
  {
    v58 = v57;
    v59 = *v85;
LABEL_33:
    v60 = 0;
    while (1)
    {
      if (*v85 != v59)
      {
        objc_enumerationMutation(v55);
      }

      v61 = *(*(&v84 + 1) + 8 * v60);
      if (objc_opt_respondsToSelector())
      {
        v64 = objc_msgSend_operationID(v61, v62, v63);
        v66 = objc_msgSend_isEqualToString_(v64, v65, *(a1 + 32));

        if (v66)
        {
          break;
        }
      }

      if (v58 == ++v60)
      {
        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v62, &v84, v100, 16);
        if (v58)
        {
          goto LABEL_33;
        }

        goto LABEL_40;
      }
    }

    v21 = v61;

    if (!v21)
    {
      goto LABEL_43;
    }

LABEL_42:
    objc_msgSend_cancel(v21, v19, v20);
  }

  else
  {
LABEL_40:

    v21 = 0;
  }

LABEL_43:
  v67 = dispatch_group_create();
  dispatch_group_enter(v67);
  v68 = CKGetGlobalQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22517EFA4;
  block[3] = &unk_2785456A0;
  v83 = *(a1 + 48);
  dispatch_group_notify(v67, v68, block);

  v71 = objc_msgSend_processScopedClientProxy(*(a1 + 40), v69, v70);
  v74 = objc_msgSend_clientConnection(v71, v72, v73);

  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = sub_22517EFBC;
  v79[3] = &unk_278547998;
  v75 = *(a1 + 32);
  v79[4] = *(a1 + 40);
  v80 = v67;
  v81 = v75;
  v76 = v67;
  objc_msgSend_enumerateContainersWithOptions_usingBlock_(v74, v77, 4, v79);
  dispatch_group_leave(v76);

  v78 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22517EFA4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_22517EFBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32) != v3)
  {
    v7 = objc_msgSend_processScopedClientProxy(v3, v4, v5);

    if (!v7)
    {
      dispatch_group_enter(*(a1 + 40));
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_22517F08C;
      v10[3] = &unk_278545A00;
      v8 = *(a1 + 48);
      v11 = *(a1 + 40);
      objc_msgSend_cancelOperationWithIdentifier_completionHandler_(v6, v9, v8, v10);
    }
  }
}

void sub_22517F1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517F218(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_sandboxExtensions(WeakRetained, v3, v4);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Sending sandbox extensions to client...", v15, 2u);
    }

    v12 = *(a1 + 32);
    v13 = objc_msgSend_sandboxExtensions(WeakRetained, v10, v11);
    objc_msgSend_consumeSandboxExtensions_reply_(v12, v14, v13, &unk_28385CCC0);
  }
}

void sub_22517F318(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v3 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Error sending sandbox extensions to client: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_225180530(_Unwind_Exception *a1)
{
  objc_destroyWeak((v6 + 40));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v7 - 112));
  _Unwind_Resume(a1);
}

void sub_2251805A0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v14, v15);
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  if (v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  if (v10)
  {
    v19 = v10;
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2251806D4;
  v22[3] = &unk_278547A00;
  v23 = v9;
  v20 = v9;
  objc_msgSend_handleReplaceLocalWithWireSerializations_encryptedMasterKeys_wireEnvelopes_reply_(v16, v21, v17, v18, v19, v22);
}

void sub_2251806D4(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "After replacing record archives, client returned serialized request: %@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2251807E8(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Asking client to deserialize initial response: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22518096C;
  v15[3] = &unk_278547A50;
  v16 = v6;
  v12 = v6;
  objc_msgSend_handleInitialResponseReceived_reply_(v11, v13, v5, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22518096C(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "After deserializing initial response, client returned wire serializations: %@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void sub_225180A80(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Asking client to replace wire transport blobs: %@", &v12, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  v10 = v8;
  if (v3)
  {
    objc_msgSend_handleReplaceWireSerializationsWithRecords_(v8, v9, v3);
  }

  else
  {
    objc_msgSend_handleReplaceWireSerializationsWithRecords_(v8, v9, MEMORY[0x277CBEBF8]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_225180BA0(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleFetchForRecordID_didProgress_(v8, v9, v5, a3);
}

void sub_225180C1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v5, v10, @"RecordKey");
  v13 = objc_msgSend_objectForKeyedSubscript_(v5, v12, @"ArrayIndex");
  v16 = objc_msgSend_integerValue(v13, v14, v15);
  v18 = objc_msgSend_objectForKeyedSubscript_(v5, v17, @"Data");
  v20 = objc_msgSend_objectForKeyedSubscript_(v5, v19, @"Offset");

  v23 = objc_msgSend_unsignedLongLongValue(v20, v21, v22);
  objc_msgSend_handleAssetDataForRecordID_recordKey_arrayIndex_data_offset_(v9, v24, v6, v11, v16, v18, v23);
}

void sub_225180D54(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 32);
    v27 = v11;
    v30 = objc_msgSend_operationID(v26, v28, v29);
    v31 = 138543874;
    v32 = v30;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Sending record fetch completion to client for operation %{public}@ for recordID: %@ error: %@", &v31, 0x20u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v7, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleFetchForRecordID_record_error_(v23, v24, v8, v7, v9);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2251811B8(uint64_t a1, const char *a2)
{
  v15 = objc_msgSend_CKStatusReportArrayIncludingSharedOperations_(*(a1 + 40), a2, *(a1 + 32) == 0);
  if (v15)
  {
    if (*(a1 + 32))
    {
      v4 = objc_autoreleasePoolPush();
      v5 = MEMORY[0x277CCACA8];
      v7 = objc_msgSend_CKComponentsAndSubcomponentsJoinedByString_(v15, v6, @"\n");
      v9 = objc_msgSend_stringWithFormat_(v5, v8, @"%@", v7);

      v10 = *(a1 + 32);
      v12 = objc_msgSend_dataUsingEncoding_(v9, v11, 4);
      objc_msgSend_writeData_(v10, v13, v12);

      objc_autoreleasePoolPop(v4);
    }

    else
    {
      objc_msgSend__dumpStatusReportArrayToOsTrace_(*(a1 + 40), v3, v15);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, 0);
  }
}

void sub_225181540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225181560(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Daemon submitted CKEventMetric %@.", &v8, 0xCu);
  }

  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22518207C(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v5, v6);
  v9 = objc_msgSend_containerWithAppContainerAccountTuple_deviceContext_sharedContainerTable_(CKDContainer, v8, v3, v7, 0);

  v25 = 0;
  LOBYTE(v7) = objc_msgSend_setupAssetTransfers_(v9, v10, &v25);
  v13 = v25;
  if ((v7 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v27 = v13;
      _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "MMCS setup failed:%@", buf, 0xCu);
    }

    __assert_rtn("[CKDContainer showAssetCache]_block_invoke", "CKDContainer.m", 3895, "0 && no container.MMCS");
  }

  v14 = objc_msgSend_MMCS(v9, v11, v12);

  if (!v14)
  {
    v17 = objc_msgSend_MMCS(v9, v15, v16);
    if (!v17)
    {
      __assert_rtn("[CKDContainer showAssetCache]_block_invoke", "CKDContainer.m", 3897, "container.MMCS && no container.MMCS");
    }
  }

  v18 = objc_msgSend_MMCS(v9, v15, v16);
  v21 = objc_msgSend_assetCache(v18, v19, v20);

  objc_msgSend_showAssetCacheInContainer_(v21, v22, *(a1 + 32));
  objc_autoreleasePoolPop(v4);

  v23 = *MEMORY[0x277D85DE8];
}

void sub_225182844(void *a1, const char *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = objc_msgSend_operations(a1, a2, a3, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v16, v20, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          if ((objc_msgSend_isAnonymous(v9, v10, v11) & 1) == 0)
          {
            objc_msgSend_cancel(v9, v12, v13);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v14, &v16, v20, 16);
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_225182A40(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v10 = objc_msgSend_directoryContext(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_frameworkCachesDirectory(v10, v4, v5);
  v9 = objc_msgSend_path(v6, v7, v8);
  (*(v3 + 16))(v3, v9, 0);
}

void sub_225182BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225182C18(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v35 = *(a1 + 32);
    v36 = v13;
    v39 = objc_msgSend_operationID(v35, v37, v38);
    *buf = 138543618;
    v46 = v39;
    v47 = 2112;
    v48 = v9;
    _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Sending archived record progress to client for operation %{public}@ for recordID: %@", buf, 0x16u);
  }

  v16 = objc_msgSend_container(WeakRetained, v14, v15);
  v19 = objc_msgSend_options(v16, v17, v18);
  if (!objc_msgSend_returnPCSMetadata(v19, v20, v21))
  {

LABEL_16:
    goto LABEL_17;
  }

  v22 = CKIsPCSError();

  if ((v22 & 1) == 0)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v16 = v10;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v25, &v40, v44, 16);
    if (v26)
    {
      v29 = v26;
      v30 = *v41;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(v16);
          }

          objc_msgSend_fillOutPCSMetadataInfo(*(*(&v40 + 1) + 8 * i), v27, v28, v40);
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v27, &v40, v44, 16);
      }

      while (v29);
    }

    goto LABEL_16;
  }

LABEL_17:
  v32 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v23, v24, v40);
  objc_msgSend_handleFetchForRecordID_isDeleted_versions_error_(v32, v33, v9, a3, v10, v11);

  v34 = *MEMORY[0x277D85DE8];
}

void sub_225183084(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_2251830C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 32);
    v27 = v11;
    v30 = objc_msgSend_operationID(v26, v28, v29);
    v31 = 138543618;
    v32 = v30;
    v33 = 2112;
    v34 = v7;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Sending archived record progress to client for operation %{public}@ for recordID: %@", &v31, 0x16u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v8, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleFetchForRecordID_record_error_(v23, v24, v7, v8, v9);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_225183294(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 32);
    v23 = v15;
    v26 = objc_msgSend_operationID(v22, v24, v25);
    v27 = 138543618;
    v28 = v26;
    v29 = 2112;
    v30 = v11;
    _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Sending change token update progress to client for operation %{public}@ for zoneID: %@", &v27, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v19 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v17, v18);
  objc_msgSend_handleChangeSetCompletionForRecordZoneID_serverChangeToken_archivedRecordStatus_error_reply_(v19, v20, v11, v12, a4, v13, v14);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_22518342C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_hash(WeakRetained, v1, v2);
  kdebug_trace();
}

void sub_2251835B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251835D8(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending archive record progress to client for operation %{public}@ for recordID: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleRecordArchivalForRecordID_error_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_225183868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225183888(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 32);
    v21 = v13;
    v24 = objc_msgSend_operationID(v20, v22, v23);
    v25 = 138543618;
    v26 = v24;
    v27 = 2112;
    v28 = v9;
    _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Sending asset published progress to client for operation %{public}@ with recordID: %@", &v25, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v15, v16);
  objc_msgSend_handleAssetPublishCompletionForRecordID_publishedAsset_recordKey_error_(v17, v18, v9, v11, v10, v12);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_225183B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225183B68(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = objc_msgSend_repairZoneRecordID(a2, v6, v7);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = v9;
    v20 = objc_msgSend_operationID(v16, v18, v19);
    v21 = 138543618;
    v22 = v20;
    v23 = 2112;
    v24 = v8;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Sending asset repair progress to client for operation %{public}@ with recordID: %@", &v21, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v11, v12);
  objc_msgSend_handleAssetRepairCompletionForRecordID_error_(v13, v14, v8, v5);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_225183E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225183E20(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending mark asset broken progress to client for operation %{public}@ with recordID: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleMarkAssetBrokenCompletionWithRepairRecordID_error_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_225184128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225184158(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 32);
    v21 = v13;
    v24 = objc_msgSend_operationID(v20, v22, v23);
    v25 = 138543618;
    v26 = v24;
    v27 = 2112;
    v28 = v9;
    _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Sending record web sharing progress to client for operation %{public}@ for recordID: %@", &v25, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v15, v16);
  objc_msgSend_handleWebSharingInitiationForRecordID_sharingKey_baseSharingToken_error_(v17, v18, v9, v10, v11, v12);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2251842E8(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending record web unsharing progress to client for operation %{public}@ for recordID: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleWebSharingRevocationForRecordID_error_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2251844FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_pcsManager(*(a1 + 32), a2, a3);
  v28 = 0;
  RandomSharingIdentityWithError = objc_msgSend_createRandomSharingIdentityWithError_(v4, v5, &v28);
  v7 = v28;

  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = RandomSharingIdentityWithError == 0;
  }

  if (v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v30 = v12;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Warn: Couldn't create a web sharing identity for client %@: %@", buf, 0x16u);
    }

    if (RandomSharingIdentityWithError)
    {
      CFRelease(RandomSharingIdentityWithError);
    }

    v13 = 0;
  }

  else
  {
    v14 = objc_msgSend_pcsManager(*(a1 + 32), v8, v9);
    v27 = 0;
    v16 = objc_msgSend_dataFromSharingIdentity_error_(v14, v15, RandomSharingIdentityWithError, &v27);
    v7 = v27;

    v17 = *MEMORY[0x277CBC878];
    v18 = *MEMORY[0x277CBC880];
    if (v7 || !v16)
    {
      if (v18 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 32);
        *buf = 138412802;
        v30 = v24;
        v31 = 2112;
        v32 = v7;
        v33 = 2112;
        v34 = RandomSharingIdentityWithError;
        _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Warn: Couldn't convert web sharing identity to data for client %@: %@ (identity was %@)", buf, 0x20u);
      }

      v13 = 0;
    }

    else
    {
      if (v18 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v20 = *(a1 + 32);
        *buf = 138412546;
        v30 = v20;
        v31 = 2112;
        v32 = RandomSharingIdentityWithError;
        _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Successfully created a web sharing identity for %@: %@", buf, 0x16u);
      }

      v21 = objc_alloc(MEMORY[0x277CBC2E8]);
      v13 = objc_msgSend_initWithData_(v21, v22, v16);
    }

    CFRelease(RandomSharingIdentityWithError);
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    (*(v25 + 16))(v25, v13, v7);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_225184874(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v8 = objc_msgSend_data(a2, v6, v7);
    (*(v3 + 16))(v3, v8, v5);
  }
}

void sub_225184A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225184A44(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v7, v8);
  objc_msgSend_handleSerialization_error_(v9, v10, v6, v5);
}

void sub_225184BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225184C08(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v10, v11);
  objc_msgSend_handleDeserializationOfSaves_deletes_error_(v12, v13, v9, v8, v7);
}

void sub_225184E4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225184E7C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 32);
    v21 = v13;
    v24 = objc_msgSend_operationID(v20, v22, v23);
    v25 = 138543618;
    v26 = v24;
    v27 = 2112;
    v28 = v9;
    _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Sending record access grant progress to client for operation %{public}@ for recordID: %@", &v25, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v15, v16);
  objc_msgSend_handleRecordAccessInitiationForRecordID_accessToken_referenceIdentifier_error_(v17, v18, v9, v10, v11, v12);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22518500C(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending record access revoke progress to client for operation %{public}@ for recordID: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleRecordAccessRevocationForRecordID_error_(v11, v12, v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_225185314(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225185344(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = v4;
    v15 = objc_msgSend_operationID(v11, v13, v14);
    v16 = 138543618;
    v17 = v15;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Sending vetting completion progress to client for operation %{public}@ for url: %@", &v16, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleReconstructedShareURL_(v8, v9, v3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_225185488(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = v4;
    v15 = objc_msgSend_operationID(v11, v13, v14);
    v16 = 138543618;
    v17 = v15;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Sending vetting completion progress to client for operation %{public}@ for share metadata: %@", &v16, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleFetchedShareMetadata_(v8, v9, v3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2251856FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22518571C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v18 = v10;
    v21 = objc_msgSend_operationID(v17, v19, v20);
    v22 = 138543618;
    v23 = v21;
    v24 = 2112;
    v25 = v7;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Sending share participant key fetch progress to client for operation %{public}@ recordID: %@", &v22, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
  objc_msgSend_handleParticipantKeyFetchForRecordID_participantKey_error_(v14, v15, v7, v8, v9);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_225185968(void **a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_entitlements(a1[4], a2, a3);
  if (objc_msgSend_hasParticipantPIIEntitlement(v4, v5, v6))
  {

    goto LABEL_4;
  }

  v11 = objc_msgSend_entitlements(a1[4], v7, v8);
  hasOutOfProcessUIEntitlement = objc_msgSend_hasOutOfProcessUIEntitlement(v11, v12, v13);

  if (hasOutOfProcessUIEntitlement)
  {
LABEL_4:
    if (objc_msgSend_hasEncryptedPersonalInfo(a1[5], v9, v10))
    {
      v17 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v15, v16);
      v18 = objc_opt_new();
      objc_msgSend_setResolvedConfiguration_(v18, v19, v17);
      v22 = objc_msgSend_recordID(a1[5], v20, v21);
      v25 = objc_msgSend_zoneID(v22, v23, v24);
      v28 = objc_msgSend_ownerName(v25, v26, v27);
      isEqualToString = objc_msgSend_isEqualToString_(v28, v29, *MEMORY[0x277CBBF28]);

      if (isEqualToString)
      {
        objc_msgSend_setDatabaseScope_(v18, v31, 2);
      }

      else
      {
        objc_msgSend_setDatabaseScope_(v18, v31, 3);
      }

      v32 = [CKDDatabaseOperation alloc];
      v34 = objc_msgSend_containerForOperationInfo_(a1[4], v33, v18);
      v36 = objc_msgSend_initWithOperationInfo_container_(v32, v35, v18, v34);

      v39 = objc_msgSend_pcsCache(a1[4], v37, v38);
      v42 = objc_msgSend_recordID(a1[5], v40, v41);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_225185C34;
      v50[3] = &unk_278547D20;
      v53 = a1[6];
      v43 = a1[5];
      v44 = a1[4];
      v51 = v43;
      v52 = v44;
      objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v39, v45, v42, v36, 0, v50);
    }

    else
    {
      v46 = a1[5];
      v47 = *(a1[6] + 2);

      v47();
    }

    return;
  }

  v48 = a1[6];
  v49 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBBF50], 8, @"Container %@ is not allowed to decrypt share personal info", a1[4]);
  v48[2](v48, 0, v49);
}

uint64_t sub_225185C34(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);
LABEL_5:

    return v5();
  }

  v6 = objc_msgSend_invitedPCS(a2, a2, 0);
  if (v6)
  {
    v9 = v6;
    v10 = *(a1 + 32);
    v11 = objc_msgSend_pcsManager(*(a1 + 40), v7, v8);
    objc_msgSend__decryptPersonalInfoWithPCSBlob_pcsManager_(v10, v12, v9, v11);

    objc_msgSend_setSerializePersonalInfo_(*(a1 + 32), v13, 1);
    v14 = *(a1 + 32);
    v5 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Fetched PCS for share, but result had no invitedPCS?", v17, 2u);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_225185EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225185ED0(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = v4;
    v15 = objc_msgSend_operationID(v11, v13, v14);
    v16 = 138543618;
    v17 = v15;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Sending initiate participant vetting operation progress to client for operation %{public}@ error: %@", &v16, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleParticipantVettingProgressWithError_(v8, v9, v3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_225186128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225186144(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v17 = v2;
    v20 = objc_msgSend_operationID(WeakRetained, v18, v19);
    v23 = 138543618;
    v24 = v20;
    v25 = 2048;
    v26 = objc_msgSend_quotaAvailable(WeakRetained, v21, v22);
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Sending completion for operation %{public}@ with quota available %lld", &v23, 0x16u);
  }

  v5 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v3, v4);
  v8 = objc_msgSend_quotaAvailable(WeakRetained, v6, v7);
  v11 = objc_msgSend_operationMetrics(WeakRetained, v9, v10);
  v14 = objc_msgSend_error(WeakRetained, v12, v13);
  objc_msgSend_handleOperationDidCompleteWithQuotaAvailable_metrics_error_(v5, v15, v8, v11, v14);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2251863E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225186404(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v17 = v11;
      v20 = objc_msgSend_operationID(WeakRetained, v18, v19);
      v21 = 138543618;
      v22 = v20;
      v23 = 2112;
      v24 = v7;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Sending mergeable delta fetched progress to client for operation %{public}@ for %@", &v21, 0x16u);
    }

    v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
    objc_msgSend_handleFetchForMergeableValueID_fetchedDeltas_error_(v14, v15, v7, v8, v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_225186698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251866B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v17 = v11;
      v20 = objc_msgSend_operationID(WeakRetained, v18, v19);
      v21 = 138543618;
      v22 = v20;
      v23 = 2112;
      v24 = v7;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Sending fetched metadata to client for operation %{public}@ for value %@", &v21, 0x16u);
    }

    v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
    objc_msgSend_handleFetchForMergeableValueID_metadatas_error_(v14, v15, v7, v8, v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22518694C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22518696C(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v14 = v8;
      v17 = objc_msgSend_operationID(WeakRetained, v15, v16);
      v18 = 138543618;
      v19 = v17;
      v20 = 2112;
      v21 = v5;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending per-value replacement request completion to client for operation %{public}@ for request %@", &v18, 0x16u);
    }

    v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
    objc_msgSend_handleCompletedReplaceDeltasRequest_error_(v11, v12, v5, v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_225186C50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225186C80(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v20 = v8;
      v23 = objc_msgSend_operationID(WeakRetained, v21, v22);
      v26 = objc_msgSend_metadata(v5, v24, v25);
      v29 = objc_msgSend_identifier(v26, v27, v28);
      v30 = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = v29;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Sending delta upload progress to client for operation %{public}@ for %@", &v30, 0x16u);
    }

    v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
    v14 = objc_msgSend_metadata(v5, v12, v13);
    v17 = objc_msgSend_identifier(v14, v15, v16);
    objc_msgSend_handleUploadForDeltaIdentifier_error_(v11, v18, v17, v6);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_225186E38(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v14 = v8;
      v17 = objc_msgSend_operationID(WeakRetained, v15, v16);
      v18 = 138543618;
      v19 = v17;
      v20 = 2112;
      v21 = v5;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending replacement progress to client for operation %{public}@ for %@", &v18, 0x16u);
    }

    v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
    objc_msgSend_handleReplacementRequest_error_(v11, v12, v5, v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2251870B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251870D0(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v17 = v2;
    v20 = objc_msgSend_operationID(WeakRetained, v18, v19);
    v23 = objc_msgSend_bundleIDs(WeakRetained, v21, v22);
    v24 = 138543618;
    v25 = v20;
    v26 = 2112;
    v27 = v23;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Sending completion for operation %{public}@ with bundle IDs %@", &v24, 0x16u);
  }

  v5 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v3, v4);
  v8 = objc_msgSend_bundleIDs(WeakRetained, v6, v7);
  v11 = objc_msgSend_operationMetrics(WeakRetained, v9, v10);
  v14 = objc_msgSend_error(WeakRetained, v12, v13);
  objc_msgSend_handleOperationDidCompleteWithBundleIDs_metrics_error_(v5, v15, v8, v11, v14);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22518731C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_account(*(a1 + 32), a2, a3);
  if (!v4)
  {
    goto LABEL_17;
  }

  v7 = v4;
  v8 = objc_msgSend_account(*(a1 + 32), v5, v6);
  v11 = objc_msgSend_accountType(v8, v9, v10);

  if (v11 == 1)
  {
    goto LABEL_17;
  }

  if ((objc_msgSend_canAuthWithCloudKit(*(a1 + 32), v12, v13) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v21 = "When determining serverPreferredPushEnvironment, the account could not auth with CloudKit.  Falling back to default iCloud Environment value";
LABEL_19:
    _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
LABEL_17:
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_225187540;
    v25[3] = &unk_278545BC0;
    v22 = *(a1 + 32);
    v26 = *(a1 + 40);
    objc_msgSend_serverEnvironmentWithCompletionHandler_(v22, v23, v25);

    return;
  }

  v16 = objc_msgSend_account(*(a1 + 32), v14, v15);
  v24 = objc_msgSend_serverPreferredPushEnvironment(v16, v17, v18);

  if (!v24)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v21 = "When determining serverPreferredPushEnvironment, the account had no apsEnv in its dataclass bag.  Falling back to default iCloud Environment value";
    goto LABEL_19;
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, v24, 0);
  }

  MEMORY[0x2821F96F8]();
}

void sub_225187540(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "When determining serverPreferredPushEnvironment, failed our fallback to default iCloud Environment value: %@", &v13, 0xCu);
    }

    goto LABEL_6;
  }

  if ((a2 - 1) < 3)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = MEMORY[0x277CEE9E8];
LABEL_14:
      (*(v10 + 16))(v10, *v11, 0);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (!a2)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = MEMORY[0x277CEE9F0];
      goto LABEL_14;
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v6, *MEMORY[0x277CBC120], 1000, @"Could not determine serverPreferredPushEnvironment from account or iCloud Environment");
LABEL_6:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v7);
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

void sub_225187860(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = objc_msgSend_hardwareID(*(a1 + 32), a2, a3);
    (*(v3 + 16))(v3, v4, 0);
  }
}

void sub_22518798C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_account(*(a1 + 32), a2, a3);

  if (!v4)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v5, *MEMORY[0x277CBC120], 1002, @"This requires an authenticated account, we have no account");
    goto LABEL_5;
  }

  v7 = objc_msgSend_account(*(a1 + 32), v5, v6);
  v10 = objc_msgSend_accountType(v7, v8, v9);

  if (v10 == 1)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 1002, @"This requires an authenticated account, we have only have an anonymous account");
LABEL_5:
    objc_claimAutoreleasedReturnValue();
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }

    MEMORY[0x2821F9730]();
    return;
  }

  if (objc_msgSend_canAuthWithCloudKit(*(a1 + 32), v11, v12))
  {
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = sub_225073F60;
    v36[4] = sub_22507353C;
    v37 = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = sub_225073F60;
    v34[4] = sub_22507353C;
    v35 = 0;
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    v18 = objc_msgSend_pcsManager(*(a1 + 32), v16, v17);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_225187D04;
    v30[3] = &unk_278547E10;
    v32 = v36;
    v33 = v34;
    v19 = v15;
    v31 = v19;
    objc_msgSend_globalPerUserBoundaryKeyDataWithCompletionHandler_(v18, v20, v30);

    v21 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225187DA0;
    block[3] = &unk_278547E38;
    v28 = v36;
    v29 = v34;
    v27 = *(a1 + 40);
    dispatch_group_notify(v19, v21, block);

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(v36, 8);
  }

  else
  {
    v22 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 1002, @"This requires an authenticated account, the current account cannot auth with CloudKit");
    v25 = objc_msgSend_possiblyWrappedAuthTokenErrorGivenError_(*(a1 + 32), v23, v22);

    v24 = *(a1 + 40);
    if (v24)
    {
      (*(v24 + 16))(v24, 0, v25);
    }
  }
}

void sub_225187CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_225187D04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_225187DA0(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = *(*(a1[5] + 8) + 40);
    v7 = v2;
    v10 = objc_msgSend_length(v6, v8, v9);
    v12 = objc_msgSend_stringWithFormat_(v5, v11, @"<%lu bytes>", v10);
    v13 = v12;
    v14 = *(*(a1[6] + 8) + 40);
    v15 = @". Error was ";
    if (!v14)
    {
      v15 = &stru_28385ED00;
      v14 = &stru_28385ED00;
    }

    *buf = 138412802;
    v17 = v12;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = v14;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Returning boundary key to client: %@%@%@", buf, 0x20u);
  }

  result = a1[4];
  if (result)
  {
    result = (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2251880A0(uint64_t a1, const char *a2)
{
  objc_msgSend_countAssetCacheItemsWithDatabaseScope_(*(a1 + 32), a2, *(a1 + 48));
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_2251881B4(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_clearAssetCache(*(a1 + 32), a2, a3);
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_225188330(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v9 = objc_msgSend_applicationBundleID(v5, v7, v8);
    v10 = *(a1 + 40);
    v11 = CKDatabaseScopeString();
    v20 = 138412546;
    v21 = v9;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Clearing record cache for %@ with scope %@", &v20, 0x16u);
  }

  v12 = objc_msgSend_recordCache(*(a1 + 32), v3, v4);
  objc_msgSend_clearAllRecordsInScope_container_(v12, v13, *(a1 + 40), *(a1 + 32));

  v16 = objc_msgSend_pcsCache(*(a1 + 32), v14, v15);
  objc_msgSend_clearPCSCaches(v16, v17, v18);

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22518854C(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = MEMORY[0x277CBC880];
  v4 = MEMORY[0x277CBC830];
  if (v2)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(a1 + 32);
      v40 = 134217984;
      v41 = v36;
      _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Clearing the asset cache for container %p", &v40, 0xCu);
    }

    objc_msgSend_clearAssetCache(*(a1 + 32), v6, v7);
    v2 = *(a1 + 48);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*v3 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v37 = *(a1 + 32);
    v40 = 134217984;
    v41 = v37;
    _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Clearing the record cache for container %p", &v40, 0xCu);
  }

  objc_msgSend_clearRecordCacheWithDatabaseScope_(*(a1 + 32), v9, *(a1 + 56));
  v2 = *(a1 + 48);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_17:
  if (*v3 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v38 = *(a1 + 32);
    v40 = 134217984;
    v41 = v38;
    _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Clearing the persisted PCS cache for container %p", &v40, 0xCu);
  }

  v13 = objc_msgSend_pcsCache(*(a1 + 32), v11, v12);
  objc_msgSend_clearPCSCaches(v13, v14, v15);

  v2 = *(a1 + 48);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

LABEL_22:
  if (*v3 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v39 = *(a1 + 32);
    v40 = 134217984;
    v41 = v39;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Clearing the in-memory PCS cache for container %p", &v40, 0xCu);
  }

  v19 = objc_msgSend_pcsCache(*(a1 + 32), v17, v18);
  objc_msgSend_clearPCSMemoryCaches(v19, v20, v21);

  if ((*(a1 + 48) & 0x10) != 0)
  {
LABEL_27:
    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v40) = 0;
      _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Clearing the container info cache", &v40, 2u);
    }

    v25 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v23, v24);
    objc_msgSend_expireGlobalConfiguration(v25, v26, v27);

    v30 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v28, v29);
    objc_msgSend_expireConfigurationForContainer_(v30, v31, *(a1 + 32));

    objc_msgSend_setServerConfig_(*(a1 + 32), v32, 0);
    objc_msgSend_setServerInfo_(*(a1 + 32), v33, 0);
  }

LABEL_32:
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2251889CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordCache(*(a1 + 32), a2, a3);
  objc_msgSend_deleteRecordWithID_container_scope_(v4, v5, *(a1 + 40), *(a1 + 32), *(a1 + 56));

  v9 = objc_msgSend_pcsCache(*(a1 + 32), v6, v7);
  objc_msgSend__setPCSData_forFetchedRecordID_withScope_withCompletionHandler_(v9, v8, 0, *(a1 + 40), *(a1 + 56), *(a1 + 48));
}

void sub_225188B2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_pcsCache(*(a1 + 32), a2, a3);
  objc_msgSend__setPCSData_forFetchedZoneID_withScope_withCompletionHandler_(v5, v4, 0, *(a1 + 40), *(a1 + 56), *(a1 + 48));
}

void sub_225188CA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], a2, a3);
  v4 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v4, v5, v18);
  v6 = [CKDDatabaseOperation alloc];
  v8 = objc_msgSend_containerForOperationInfo_(*(a1 + 32), v7, v4);
  v10 = objc_msgSend_initWithOperationInfo_container_(v6, v9, v4, v8);

  objc_msgSend_setDatabaseScope_(v10, v11, *(a1 + 64));
  objc_msgSend_addUnitTestOverrides_(v10, v12, *(a1 + 40));
  v15 = objc_msgSend_pcsCache(*(a1 + 32), v13, v14);
  v17 = v15;
  if (*(a1 + 72))
  {
    objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v15, v16, *(a1 + 48), v10, 2, *(a1 + 56));
  }

  else
  {
    objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v15, v16, *(a1 + 48), v10, 0, *(a1 + 56));
  }
}

void sub_225188E80(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], a2, a3);
  v4 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v4, v5, v16);
  v6 = [CKDDatabaseOperation alloc];
  v8 = objc_msgSend_containerForOperationInfo_(*(a1 + 32), v7, v4);
  v10 = objc_msgSend_initWithOperationInfo_container_(v6, v9, v4, v8);

  objc_msgSend_setDatabaseScope_(v10, v11, *(a1 + 56));
  v14 = objc_msgSend_pcsCache(*(a1 + 32), v12, v13);
  objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v14, v15, *(a1 + 40), v10, 2, *(a1 + 48));
}

void sub_225189048(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], a2, a3);
  v4 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v4, v5, v16);
  v6 = [CKDDatabaseOperation alloc];
  v8 = objc_msgSend_containerForOperationInfo_(*(a1 + 32), v7, v4);
  v10 = objc_msgSend_initWithOperationInfo_container_(v6, v9, v4, v8);

  objc_msgSend_setDatabaseScope_(v10, v11, *(a1 + 56));
  v14 = objc_msgSend_pcsCache(*(a1 + 32), v12, v13);
  objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v14, v15, *(a1 + 40), v10, 2, *(a1 + 48));
}

void sub_225189290(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_containerID(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_specialContainerType(v4, v5, v6) == 5;

  v11 = objc_msgSend_pcsCache(*(a1 + 32), v8, v9);
  objc_msgSend_clearInvalidatedPCSSQLCacheEntriesWithSkipZonePCS_completionHandler_(v11, v10, v7, 0);
}

void sub_2251893C4(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v5 = objc_msgSend_operationQueue(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_operations(v5, v6, v7);
  objc_msgSend_addObjectsFromArray_(v2, v9, v8);

  v12 = objc_msgSend_cloudKitSupportOperationThrottleQueue(*(a1 + 32), v10, v11);
  v15 = objc_msgSend_operations(v12, v13, v14);
  objc_msgSend_addObjectsFromArray_(v2, v16, v15);

  v19 = objc_msgSend_backgroundOperationThrottleQueue(*(a1 + 32), v17, v18);
  v22 = objc_msgSend_operations(v19, v20, v21);
  objc_msgSend_addObjectsFromArray_(v2, v23, v22);

  v26 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v24, v25);
  v29 = objc_msgSend_operations(v26, v27, v28);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_22518967C;
  v47[3] = &unk_278547F00;
  v47[4] = *(a1 + 32);
  v31 = objc_msgSend_CKFilter_(v29, v30, v47);

  objc_msgSend_addObjectsFromArray_(v2, v32, v31);
  if (objc_msgSend_count(v2, v33, v34))
  {
    v37 = objc_msgSend_count(v2, v35, v36);
    if (v37 - 1 >= 0)
    {
      v38 = v37;
      do
      {
        v39 = objc_msgSend_objectAtIndex_(v2, v35, --v38);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_removeObjectAtIndex_(v2, v40, v38);
        }
      }

      while (v38 > 0);
    }
  }

  if (objc_msgSend_count(v2, v35, v36))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v43 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = v2;
      _os_log_impl(&dword_22506F000, v43, OS_LOG_TYPE_INFO, "Unexpectedly found some outstanding operations: %@", buf, 0xCu);
    }
  }

  v44 = *(a1 + 40);
  v45 = objc_msgSend_count(v2, v41, v42);
  (*(v44 + 16))(v44, v45, 0);

  v46 = *MEMORY[0x277D85DE8];
}

BOOL sub_22518967C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_container(a2, a2, a3);
  v5 = v4 == *(a1 + 32);

  return v5;
}

void sub_225189770(uint64_t a1, const char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v4 = objc_msgSend_MMCS(*(a1 + 32), a2, a3);
  v10 = 0;
  v6 = objc_msgSend_registeredItemCount_error_(v4, v5, &v11, &v10);
  v7 = v10;

  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Error counting registered items %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_225189D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225189D30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (!v4)
  {
    v7 = objc_msgSend_sharedAccountStore(CKDAccountStore, v5, v6);
    v10 = objc_msgSend_accountStore(v7, v8, v9);

    v12 = objc_msgSend_accountTypeWithAccountTypeIdentifier_(v10, v11, *MEMORY[0x277CB8BE8]);
    objc_msgSend_clearAllPermissionsGrantedForAccountType_(v10, v13, v12);
  }

  v14 = *(a1 + 32);
  v15 = WeakRetained;
  if (v14)
  {
    v16 = objc_msgSend_error(WeakRetained, v5, v6);
    (*(v14 + 16))(v14, v16);

    v15 = WeakRetained;
  }
}

void sub_225189F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225189F90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (v4)
  {
    v7 = *(a1 + 32);
    v8 = objc_msgSend_error(WeakRetained, v5, v6);
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    v9 = objc_msgSend_containerPrivacySettings(WeakRetained, v5, v6);
    v8 = objc_msgSend_appPermissionGroupsFromContainerPrivacySettings_(CKDBatchFetchUserPrivacySettingsOperation, v10, v9);

    (*(*(a1 + 32) + 16))(*(a1 + 32), v8, 0);
  }
}

void sub_22518A21C(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = objc_msgSend_account(*(a1 + 32), a2, a3);
  if (v19)
  {
    v6 = objc_msgSend_accountType(v19, v4, v5) == 1;
    v8 = v19;
    if (!v6)
    {
      if (!*(a1 + 40))
      {
        goto LABEL_12;
      }

      v12 = objc_msgSend_containerID(*(a1 + 32), v4, v7);
      v9 = objc_msgSend_representativeDataclass(v12, v13, v14);

      if (v9)
      {
        v17 = objc_msgSend_account(*(a1 + 32), v15, v16);
        objc_msgSend_isDataclassEnabled_(v17, v18, v9);
      }

      v11 = *(*(a1 + 40) + 16);
      goto LABEL_10;
    }
  }

  v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v4, *MEMORY[0x277CBC120], 1002, @"This requires an authenticated account");
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 16);
LABEL_10:
    v11();
  }

  v8 = v19;
LABEL_12:
}

void sub_22518A3F4(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v12 = 0;
  v4 = objc_msgSend_checkSessionValidityCacheOnly_error_(v3, a2, 0, &v12);
  v5 = v12;
  v8 = v5;
  v9 = 0;
  if ((v4 & 1) == 0 && v5)
  {
    isCloudCoreSessionNoLongerValidError = objc_msgSend_isCloudCoreSessionNoLongerValidError(v5, v6, v7);
    v9 = isCloudCoreSessionNoLongerValidError ? 0 : v8;
    if (!isCloudCoreSessionNoLongerValidError)
    {
      v8 = 0;
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v8, v9);
  }
}

void sub_22518A63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22518A65C(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_corruptRecords(WeakRetained, v2, v3);
  (*(v1 + 16))(v1, v4);
}

uint64_t sub_22518A7F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedManager(CKDServerConfigurationManager, a2, a3);
  objc_msgSend_expireGlobalConfiguration(v4, v5, v6);

  v9 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v7, v8);
  objc_msgSend_expireConfigurationForContainer_(v9, v10, *(a1 + 32));

  result = *(a1 + 40);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

void sub_22518AF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22518AF48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[8] = 1;
  }

  v8 = WeakRetained;
  sub_225099E0C(WeakRetained, v6, v7);
  v4[2](v4);
}

void **sub_22518AFC4(void **result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = result;
    v5 = objc_msgSend_appContainerTuple(result[4], a2, a3);
    v8 = objc_msgSend_processScopedClientProxy(v4[5], v6, v7);
    v9 = v4[4];
    if (v9)
    {
      v10 = v9[10];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v14 = objc_msgSend_entitlements(v9, v12, v13);
    v17 = objc_msgSend_options(v4[4], v15, v16);
    v20 = objc_msgSend_sharedContainers(v4[5], v18, v19);
    v22 = objc_msgSend_containerWithAppContainerTuple_processScopedClientProxy_logicalDeviceScopedClientProxy_containerEntitlements_containerOptions_sharedContainerTable_(CKDContainer, v21, v5, v8, v11, v14, v17, v20);
    v23 = *(v4[6] + 1);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    v25 = *(*(v4[6] + 1) + 40);
    v28 = objc_msgSend_distantContainer(v4[4], v26, v27);
    objc_msgSend_linkWithClientContainer_(v25, v29, v28);

    v30 = *(*(v4[6] + 1) + 40);
    v31 = (v4[4] + 16);

    return objc_storeWeak(v31, v30);
  }

  return result;
}

void sub_22518B904(uint64_t a1, const char *a2)
{
  aBlock = 0;
  objc_msgSend_getArgument_atIndex_(*(a1 + 32), a2, &aBlock, a2);
  _Block_signature(aBlock);
  v4 = aBlock;
  v5 = *(a1 + 40);
  objc_msgSend_beginContentAccess(v5, v6, v7);
  v10 = MEMORY[0x277D85DD0];
  v11 = v4;
  v8 = v4;
  v12 = __NSMakeSpecialForwardingCaptureBlock();
  objc_msgSend_setArgument_atIndex_(*(a1 + 32), v9, &v12, a2, v10, 3221225472, sub_22518BA04, &unk_278547FA0);
}

uint64_t sub_22518BA04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_setTarget_(v4, v5, v3);
  objc_msgSend_invoke(v4, v6, v7);

  v10 = *(a1 + 40);

  return objc_msgSend_endContentAccess(v10, v8, v9);
}

void sub_22518BC60(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    if (v3)
    {
      *(v3 + 9) = 1;
    }

    if ((v4 & 2) != 0)
    {
      sub_225099E0C(*(a1 + 32), a2, a3);
    }
  }

  else if (v3)
  {
    *(v3 + 9) = 0;
  }
}

void sub_22518BF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22518BF90(uint64_t a1)
{
  v2 = sub_225099FA8(*(a1 + 32));
  if (v2)
  {
    isContentDiscarded = objc_msgSend_isContentDiscarded(v2, v2, v3);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = *(v5 + 72);
    }

    isContentDiscarded = v5 == 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = isContentDiscarded;

  return MEMORY[0x2821F96F8]();
}

void sub_22518C1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22518C1DC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v1 = *(v1 + 64);
  }

  *(*(*(result + 40) + 8) + 24) = v1;
  return result;
}

void sub_22518C42C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v10)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }

    else
    {
      objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }
    v9 = ;
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_22518C63C(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = *(a1 + 32);
  objc_sync_enter(v8);
  if (v7)
  {
    v11 = objc_msgSend_logicalDeviceScopedClientProxyCreator(*(a1 + 32), v9, v10);

    if (v11)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 32);
        v25 = 138412546;
        v26 = v16;
        v27 = 2112;
        v28 = v7;
        _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Ignoring superfluous logical device scoped client proxy for %@: %@", &v25, 0x16u);
      }

      v17 = objc_msgSend_logicalDeviceScopedClientProxyCreator(*(a1 + 32), v14, v15);
    }

    else
    {
      objc_msgSend_setLogicalDeviceScopedClientProxyCreator_(*(a1 + 32), v12, v7);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v22 = *MEMORY[0x277CBC830];
      v17 = v7;
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 32);
        v25 = 138412546;
        v26 = v23;
        v27 = 2112;
        v28 = v7;
        _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "Got a logical device scoped client proxy for %@: %@", &v25, 0x16u);
        v17 = v7;
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      v25 = 138412546;
      v26 = v21;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Ignoring failed attempt to get logical device scoped client proxy for %@: %@", &v25, 0x16u);
    }

    v17 = objc_msgSend_logicalDeviceScopedClientProxyCreator(*(a1 + 32), v19, v20);
  }

  objc_sync_exit(v8);

  (*(*(a1 + 40) + 16))();
  v24 = *MEMORY[0x277D85DE8];
}

void sub_22518CC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22518CC4C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_22518CCAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22518CD54;
  v7[3] = &unk_278548068;
  v9 = *(a1 + 56);
  v6 = *(a1 + 40);
  v4 = v6;
  v8 = v6;
  objc_msgSend_openFileWithOpenInfo_reply_(a2, v5, v3, v7);
}

void sub_22518CD54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_22518D114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_22518D13C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_22518D19C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22518D258;
  v9[3] = &unk_278547E10;
  v11 = *(a1 + 56);
  v8 = *(a1 + 40);
  v6 = v8;
  v10 = v8;
  objc_msgSend_readBytesOfInMemoryAssetContentWithUUID_offset_length_reply_(a2, v7, v3, v4, v5, v9);
}

void sub_22518D258(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_22518D494(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = objc_msgSend_throttleBlockingUntilNextRequestWindow(v2, v4, v5);
  objc_msgSend_addThrottle_(v3, v6, v7);
}

void sub_22518DB58(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v8 = objc_msgSend_protocol(v3, v5, v6);
  objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(v2, v7, v4, v8);
}

void sub_22518E590(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v10)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }

    else
    {
      objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }
    v9 = ;
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_22518E7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  objc_sync_exit(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_22518E7E0(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v5)
  {
    v10 = objc_msgSend_processScopedClientProxyCreator(*(a1 + 32), v8, v9);

    if (v10)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v12 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        *v24 = 138412546;
        *&v24[4] = v15;
        *&v24[12] = 2112;
        *&v24[14] = v5;
        v16 = "Ignoring superfluous process scoped client proxy for %@: %@";
LABEL_15:
        _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, v16, v24, 0x16u);
      }
    }

    else
    {
      objc_msgSend_setProcessScopedClientProxyCreator_(*(a1 + 32), v11, v5);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v12 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v18 = *(a1 + 32);
        *v24 = 138412546;
        *&v24[4] = v18;
        *&v24[12] = 2112;
        *&v24[14] = v5;
        v16 = "Got a process scoped client proxy for %@: %@";
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      *v24 = 138412546;
      *&v24[4] = v17;
      *&v24[12] = 2112;
      *&v24[14] = v6;
      v16 = "Ignoring failed attempt to get process scoped client proxy for %@: %@";
      goto LABEL_15;
    }
  }

  v19 = objc_msgSend_processScopedClientProxyCreator(*(a1 + 32), v13, v14, *v24, *&v24[16], v25);
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  objc_sync_exit(v7);
  v22 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22518EDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22518EDF8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_22518EE58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22518EF0C;
  v8[3] = &unk_278548178;
  v10 = *(a1 + 64);
  v7 = *(a1 + 48);
  v5 = v7;
  v9 = v7;
  objc_msgSend_getFileMetadataWithFileHandle_openInfo_reply_(a2, v6, v3, v4, v8);
}

void sub_22518EF0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_22518F974()
{
  v0 = [CKDProcessScopedStateManager alloc];
  qword_280D58178 = objc_msgSend_initInternal(v0, v1, v2);

  return MEMORY[0x2821F96F8]();
}

void sub_22518FD94(uint64_t a1, void *a2)
{
  v41 = a2;
  v5 = objc_msgSend_appContainerTuple(v41, v3, v4);
  v8 = objc_msgSend_applicationID(v5, v6, v7);
  v11 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v8, v9, v10);
  v14 = v11;
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v16 = objc_msgSend_appContainerTuple(v41, v12, v13);
    v19 = objc_msgSend_applicationID(v16, v17, v18);
    v15 = objc_msgSend_applicationBundleIdentifier(v19, v20, v21);
  }

  if (objc_msgSend_isEqualToString_(v15, v22, *(a1 + 32)))
  {
    v25 = *(a1 + 40);
    v26 = objc_msgSend_appContainerTuple(v41, v23, v24);
    v29 = objc_msgSend_containerID(v26, v27, v28);
    v32 = objc_msgSend_containerIdentifier(v29, v30, v31);
    LODWORD(v25) = objc_msgSend_containsObject_(v25, v33, v32);

    if (v25)
    {
      v36 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v34, v35);
      v39 = objc_msgSend_tokenRegistrationScheduler(v36, v37, v38);
      objc_msgSend_unregisterTokenForAppContainerAccountTuple_(v39, v40, v41);
    }
  }
}

void sub_225190100(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22506F000, v4, OS_LOG_TYPE_INFO, "Resetting TCC access", v6, 2u);
  }

  v5 = *MEMORY[0x277D6C190];
  TCCAccessReset();
  (*(*(a1 + 32) + 16))();
}

void sub_2251905FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_dataContainerURL(*(a1 + 32), a2, a3);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v3, v4, @"Library/Caches/CloudKit", 1);
    v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8);
    v12 = objc_msgSend_absoluteString(v6, v10, v11);
    v14 = objc_msgSend_fileExistsAtPath_(v9, v13, v12);

    if (v14)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v15 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v18 = v15;
        v21 = objc_msgSend_absoluteString(v6, v19, v20);
        v24 = objc_msgSend_CKSanitizedPath(v21, v22, v23);
        v28 = 138412290;
        v29 = v24;
        _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Removing cache at %@", &v28, 0xCu);
      }

      v25 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v16, v17);
      objc_msgSend_removeItemAtURL_error_(v25, v26, v6, 0);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2251907A4(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_225190CAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_appContainerTuple(v5, v7, v8);
  v12 = objc_msgSend_persona(v9, v10, v11);
  v15 = v5;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  CKPersonaPerformBlock();
}

void sub_225190DC0(uint64_t a1, void *a2)
{
  v155 = *MEMORY[0x277D85DE8];
  v146 = a2;
  v5 = objc_msgSend_operationInfo(*(a1 + 32), v3, v4);
  v147 = v5;
  v6 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = MEMORY[0x277CBC830];
  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v11 = v8;
    v14 = objc_msgSend_operationID(v5, v12, v13);
    *buf = 138543362;
    *&buf[4] = v14;
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Found outstanding operation ID %{public}@", buf, 0xCu);
  }

  if (v146)
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 40);
      v19 = v15;
      v22 = objc_msgSend_appContainerTuple(v18, v20, v21);
      v25 = objc_msgSend_persona(v22, v23, v24);
      v28 = objc_msgSend_operationID(v5, v26, v27);
      *buf = 138412802;
      *&buf[4] = v25;
      v149 = 2112;
      v150 = v28;
      v151 = 2112;
      v152 = v146;
      _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Could not adopt persona %@ for long-lived operation %@ with error: %@", buf, 0x20u);
    }

    v29 = *(a1 + 48);
    v30 = objc_msgSend_operationID(v5, v16, v17);
    objc_msgSend_addObject_(v29, v31, v30);
  }

  v32 = objc_msgSend_retryNumber(*(a1 + 32), v9, v10);
  v35 = objc_msgSend_integerValue(v32, v33, v34);

  v40 = objc_msgSend_lastAttemptDate(*(a1 + 32), v36, v37);
  v41 = -1;
  if (v40 && v35 >= 1)
  {
    v42 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v38, v39);
    v45 = objc_msgSend_date(MEMORY[0x277CBEAA8], v43, v44);
    v47 = objc_msgSend_components_fromDate_toDate_options_(v42, v46, 128, v40, v45, 0);

    v41 = objc_msgSend_second(v47, v48, v49);
  }

  if (v146)
  {
    goto LABEL_30;
  }

  v50 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v38, v39);
  v53 = objc_msgSend_longlivedOperationMaxRetryCount(v50, v51, v52);

  if (v35 > v53)
  {
LABEL_29:
    v79 = *(a1 + 48);
    v80 = objc_msgSend_operationID(v5, v54, v55);
    objc_msgSend_addObject_(v79, v81, v80);

LABEL_30:
    isOperationAllowedIndependentlyInSyncBubble = 0;
    goto LABEL_31;
  }

  v56 = objc_msgSend_ckOperationClassName(v5, v54, v55);

  if (!v56)
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v78 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_FAULT))
    {
      v141 = v78;
      v144 = objc_msgSend_operationID(v5, v142, v143);
      *buf = 138412290;
      *&buf[4] = v144;
      _os_log_fault_impl(&dword_22506F000, v141, OS_LOG_TYPE_FAULT, "Error preparing for long-lived operation %@. Operation class name missing.", buf, 0xCu);
    }

    goto LABEL_29;
  }

  if (CKIsRunningInSyncBubble())
  {
    v145 = v41;
    v59 = v40;
    v60 = v7;
    v61 = objc_msgSend_ckOperationClassName(v5, v57, v58);
    v64 = objc_msgSend_appContainerTuple(*(a1 + 40), v62, v63);
    v67 = objc_msgSend_containerID(v64, v65, v66);
    isOperationAllowedIndependentlyInSyncBubble = _isOperationAllowedIndependentlyInSyncBubble(v61, v67);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = v60;
    v69 = *v60;
    if (!os_log_type_enabled(*v60, OS_LOG_TYPE_INFO))
    {
      v6 = MEMORY[0x277CBC880];
      v40 = v59;
      goto LABEL_33;
    }

    if (isOperationAllowedIndependentlyInSyncBubble)
    {
      v70 = @"Allowing";
    }

    else
    {
      v70 = @"Denying";
    }

    v71 = v69;
    v74 = objc_msgSend_operationID(v5, v72, v73);
    v77 = objc_msgSend_ckOperationClassName(v5, v75, v76);
    *buf = 138412802;
    *&buf[4] = v70;
    v149 = 2114;
    v150 = v74;
    v151 = 2114;
    v152 = v77;
    _os_log_impl(&dword_22506F000, v71, OS_LOG_TYPE_INFO, "%@ operation %{public}@ of class %{public}@ from running in sync bubble", buf, 0x20u);

    v7 = v60;
    v6 = MEMORY[0x277CBC880];
    v40 = v59;
    v41 = v145;
  }

  else
  {
    isOperationAllowedIndependentlyInSyncBubble = 1;
  }

LABEL_31:
  if (*v6 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

LABEL_33:
  v82 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
  {
    v85 = v7;
    if (isOperationAllowedIndependentlyInSyncBubble)
    {
      v86 = &stru_28385ED00;
    }

    else
    {
      v86 = @" not";
    }

    v87 = v82;
    v90 = objc_msgSend_operationID(v5, v88, v89);
    v91 = v35;
    v92 = v6;
    v93 = v90;
    *buf = 138413058;
    *&buf[4] = v86;
    v7 = v85;
    v149 = 2114;
    v150 = v90;
    v151 = 2048;
    v152 = (v91 + 1);
    v153 = 2048;
    v154 = v41;
    _os_log_impl(&dword_22506F000, v87, OS_LOG_TYPE_INFO, "Will%@ enqueue outstanding operation ID %{public}@ for retry number %ld. Seconds since last retry:%ld", buf, 0x2Au);

    v6 = v92;
  }

  if (isOperationAllowedIndependentlyInSyncBubble)
  {
    v94 = *(a1 + 40);
    v95 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v83, v84);
    v98 = objc_msgSend_sharedDetachedContainers(CKDContainer, v96, v97);
    v100 = objc_msgSend_containerWithAppContainerAccountTuple_deviceContext_sharedContainerTable_(CKDContainer, v99, v94, v95, v98);

    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v101 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v104 = v101;
      v107 = objc_msgSend_operationID(v5, v105, v106);
      *buf = 138543618;
      *&buf[4] = v107;
      v149 = 2112;
      v150 = v100;
      _os_log_impl(&dword_22506F000, v104, OS_LOG_TYPE_INFO, "Starting outstanding operation ID %{public}@ for container %@", buf, 0x16u);
    }

    v108 = objc_msgSend_ckOperationClassName(v5, v102, v103);
    v110 = objc_msgSend_substringFromIndex_(v108, v109, 2);

    v112 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v111, @"perform%@:withBlock:", v110);
    v113 = NSSelectorFromString(v112);
    if (objc_opt_respondsToSelector())
    {
      *buf = &unk_28385CE60;
      v115 = MEMORY[0x277CBEAE8];
      v116 = objc_msgSend_methodSignatureForSelector_(v100, v114, v113);
      v118 = objc_msgSend_invocationWithMethodSignature_(v115, v117, v116);

      objc_msgSend_retainArguments(v118, v119, v120);
      objc_msgSend_setTarget_(v118, v121, v100);
      objc_msgSend_setSelector_(v118, v122, v113);
      objc_msgSend_setArgument_atIndex_(v118, v123, &v147, 2);
      objc_msgSend_setArgument_atIndex_(v118, v124, buf, 3);
      objc_msgSend_invoke(v118, v125, v126);
    }

    else
    {
      if (*v6 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v127 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        v134 = v127;
        v137 = objc_msgSend_operationID(v5, v135, v136);
        v140 = objc_msgSend_ckOperationClassName(v5, v138, v139);
        *buf = 138543874;
        *&buf[4] = v137;
        v149 = 2114;
        v150 = v140;
        v151 = 2114;
        v152 = v112;
        _os_log_error_impl(&dword_22506F000, v134, OS_LOG_TYPE_ERROR, "Operation %{public}@ with ckOperationClassName %{public}@ doesn't respond to selector %{public}@. Dropping from long lived cache.", buf, 0x20u);
      }

      v130 = *(a1 + 56);
      v131 = objc_msgSend_operationID(v5, v128, v129);
      objc_msgSend_deleteAllInfoForOperationWithID_(v130, v132, v131);
    }
  }

  v133 = *MEMORY[0x277D85DE8];
}