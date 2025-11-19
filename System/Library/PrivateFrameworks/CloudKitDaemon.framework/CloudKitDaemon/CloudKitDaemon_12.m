uint64_t sub_225295240(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  result = PCSFPAddPublicIdentity();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_22529717C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v2 == 1)
  {
    result = PCSFPAddPublicIdentityWithShareFlags();
  }

  else
  {
    result = PCSFPAddPublicIdentity();
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_2252971CC(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_synchronizeQueue(*(a1 + 32), v9, v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252972FC;
  block[3] = &unk_27854BD68;
  v21 = a2;
  v15 = v7;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = v8;
  v19 = *(a1 + 32);
  v20 = *(a1 + 56);
  v22 = *(a1 + 64);
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

void sub_2252972FC(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 80) == 1 && !*(a1 + 32))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *buf = 138543618;
      v21 = v15;
      v22 = 2114;
      v23 = v16;
      _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "User key sync succeeded for service %{public}@ and operation %{public}@. Retrying zone PCS creation.", buf, 0x16u);
    }

    objc_msgSend__locked_createZonePCSWithSyncKeyRegistryRetry_requestorOperationID_keySyncAnalytics_createV2PCS_completionHandler_(*(a1 + 64), v11, 0, *(a1 + 48), *(a1 + 56), *(a1 + 81), *(a1 + 72));
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v2 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 40);
      v12 = *(a1 + 48);
      v14 = *(a1 + 32);
      *buf = 138543874;
      v21 = v13;
      v22 = 2114;
      v23 = v12;
      v24 = 2112;
      v25 = v14;
      _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "User key sync failed for service %{public}@ and operation %{public}@. Won't retry zone PCS creation due to error: %@.", buf, 0x20u);
    }

    objc_msgSend_setOverallResult_(*(a1 + 56), v3, @"failure");
    objc_msgSend_setError_(*(a1 + 56), v4, *(a1 + 32));
    objc_msgSend_sendCoreAnalyticsEventForKeySync_(CKDPCSKeySyncManager, v5, *(a1 + 56));
    v8 = objc_msgSend_callbackQueue(*(a1 + 64), v6, v7);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22529756C;
    v17[3] = &unk_2785456C8;
    v19 = *(a1 + 72);
    v18 = *(a1 + 32);
    dispatch_async(v8, v17);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22529756C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

uint64_t sub_225297590(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_2252979D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225297A00(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[5] + 8);
  v4 = PCSFPCopyExported();
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

void sub_225297C5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = PCSPublicIdentityCopyPublicKey();
  objc_msgSend_addObject_(v1, v2, v3);
}

void sub_2252986D8(uint64_t a1, const char *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    objc_msgSend_setIsCurrentUser_(*(a1 + 32), a2, 1);
    objc_msgSend_setCallingParticipant_(*(a1 + 40), v3, *(a1 + 32));
    v6 = objc_msgSend_acceptanceStatus(*(a1 + 32), v4, v5);
    v9 = MEMORY[0x277CBC880];
    v10 = MEMORY[0x277CBC858];
    if (v6 == 2)
    {
      v11 = objc_msgSend_userIdentity(*(a1 + 32), v7, v8);
      v14 = objc_msgSend_userRecordID(v11, v12, v13);
      v17 = objc_msgSend_recordName(v14, v15, v16);

      if (*v9 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v18 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(a1 + 32);
        v31 = v18;
        v34 = objc_msgSend_participantID(v30, v32, v33);
        v35 = 138412546;
        v36 = v34;
        v37 = 2112;
        v38 = v17;
        _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Stingray share is already accepted by participant %@, filling anonymousID %@ for share metadata.", &v35, 0x16u);
      }

      objc_msgSend_fillAnonymousCKUserID_(*(a1 + 40), v19, v17);
    }

    if (*v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 40);
      v23 = v20;
      v26 = objc_msgSend_callingParticipant(v22, v24, v25);
      v29 = objc_msgSend_recordID(*(a1 + 48), v27, v28);
      v35 = 138412546;
      v36 = v26;
      v37 = 2112;
      v38 = v29;
      _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Found current participant %@ on anonymous to server share %@", &v35, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 56));
  v21 = *MEMORY[0x277D85DE8];
}

void sub_22529B130(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22529B194(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t sub_22529B1B4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

uint64_t sub_22529B1E0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_22529B20C(uint64_t a1, uint64_t a2, __CFString *cf)
{
  v65 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v9 = &stru_28385ED00;
    v10 = @"un";
    v11 = *(*(*(a1 + 80) + 8) + 24);
    if (a2)
    {
      v10 = &stru_28385ED00;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = @". Error: ";
    if (cf)
    {
      v9 = cf;
    }

    else
    {
      v15 = &stru_28385ED00;
    }

    *buf = 138544898;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2114;
    v56 = v11;
    v57 = 2114;
    v58 = v13;
    v59 = 2114;
    v60 = v14;
    v61 = 2114;
    v62 = v15;
    v63 = 2112;
    v64 = v9;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Finished unwrapping PCS with data %{public}@ %@successfully with identities %{public}@ for service %{public}@ operation %{public}@.%{public}@%@", buf, 0x48u);
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    goto LABEL_16;
  }

  if (!cf)
  {
    *(*(*(a1 + 88) + 8) + 24) = a2;
    v8 = *(*(*(a1 + 88) + 8) + 24);
    if (v8)
    {
      CFRetain(v8);
    }

    goto LABEL_26;
  }

LABEL_16:
  v16 = *(a1 + 56);
  v17 = objc_opt_class();
  v19 = objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v17, v18, cf, 5004, @"Failed to decrypt PCS data with user identities");
  v20 = *(*(a1 + 96) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v24 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v22, v23);
  if (objc_msgSend_isAppleInternalInstall(v24, v25, v26))
  {
    v27 = *(a1 + 104);

    if (v27)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v30 = objc_msgSend_identityManager(*(a1 + 56), v28, v29);
      FullKeychainIdentitySetWithError = objc_msgSend_createFullKeychainIdentitySetWithError_(v30, v31, 0);

      v56 = FullKeychainIdentitySetWithError;
      if (*(*&buf[8] + 24))
      {
        if (*v6 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v33 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v41 = *(*(*(a1 + 80) + 8) + 24);
          v42 = *(*&buf[8] + 24);
          *v51 = 138412546;
          v52 = v41;
          v53 = 2112;
          v54 = v42;
          _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Decryption with identity set %@ failed. Attempting to decrypt using all identities in the keychain %@", v51, 0x16u);
        }

        dispatch_group_enter(*(a1 + 64));
        v36 = objc_msgSend_synchronizeQueue(*(a1 + 56), v34, v35);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22529B600;
        block[3] = &unk_27854BE58;
        v49 = buf;
        v44 = *(a1 + 72);
        v45 = *(a1 + 32);
        v37 = *(a1 + 40);
        v38 = *(a1 + 56);
        v39 = *(a1 + 64);
        v46 = v37;
        v47 = v38;
        v50 = *(a1 + 96);
        v48 = v39;
        dispatch_async(v36, block);
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
  }

LABEL_26:
  dispatch_group_leave(*(a1 + 64));

  v40 = *MEMORY[0x277D85DE8];
}

void sub_22529B5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22529B600(uint64_t a1, const char *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = *(*(*(a1 + 72) + 8) + 24);
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277D42F48];
  v13[0] = *MEMORY[0x277D42F58];
  v13[1] = v5;
  v14[0] = v4;
  v14[1] = MEMORY[0x277CBEC28];
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v14, v13, 2);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
  v11 = *(a1 + 64);
  PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync();

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22529B744(uint64_t a1, uint64_t a2, void *cf)
{
  v28 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  else if (a2)
  {
    PCSFPGetUnwrapPublicIdentity();
    v5 = PCSPublicIdentityGetServiceName();
    if ((objc_msgSend_isEqualToString_(*(a1 + 32), v6, v5) & 1) == 0)
    {
      v9 = *(a1 + 32);
      v10 = objc_msgSend_containerID(*(a1 + 40), v7, v8);
      v13 = objc_msgSend_responsibleBundleID(*(a1 + 40), v11, v12);
      CKWarnForIncorrectServiceIdentity(v9, v10, v13);

      v14 = *(a1 + 40);
      v15 = objc_opt_class();
      v17 = objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v15, v16, 0, 5004, @"Could not decrypt PCS data with the selected identity. A key to decrypt this data does exist, but it will not be used.");
      v18 = *(*(a1 + 56) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        v24 = 138543618;
        v25 = v5;
        v26 = 2114;
        v27 = v23;
        _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Was able to decrypt pcs with %{public}@ key in the keychain, but not the %{public}@ key. Possibly a misconfigured client set up.", &v24, 0x16u);
      }
    }
  }

  v21 = *(*(*(a1 + 64) + 8) + 24);
  if (v21)
  {
    CFRelease(v21);
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 48));

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22529B914(uint64_t a1)
{
  v129 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC858];
  if (*(*(*(a1 + 120) + 8) + 40))
  {
    goto LABEL_2;
  }

  if (!*(*(*(a1 + 128) + 8) + 24) && !*(a1 + 32))
  {
    v65 = *(a1 + 56);
    v66 = objc_opt_class();
    v68 = objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v66, v67, *(*(*(a1 + 144) + 8) + 24), 5004, @"Failed to decrypt PCS data with user identities");
    v69 = *(*(a1 + 120) + 8);
    v70 = *(v69 + 40);
    *(v69 + 40) = v68;

LABEL_2:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v3 = *v2;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(*(*(a1 + 120) + 8) + 40);
      v5 = *(a1 + 64);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 138413058;
      v122 = v4;
      v123 = 2112;
      v124 = v6;
      v125 = 2112;
      v126 = v5;
      v127 = 2112;
      v128 = v7;
      _os_log_error_impl(&dword_22506F000, v3, OS_LOG_TYPE_ERROR, "Error creating PCS: %@.\nIdentity %@\nPEM data was %@\nPCS data %@.", buf, 0x2Au);
    }

    goto LABEL_12;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *v2;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (*(*(*(a1 + 128) + 8) + 24))
    {
      v84 = @"PCS";
    }

    else
    {
      v84 = @"PPPCS data";
    }

    v85 = *(a1 + 40);
    v86 = *(a1 + 48);
    *buf = 138543874;
    v122 = v84;
    v123 = 2112;
    v124 = v85;
    v125 = 2114;
    v126 = v86;
    _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Created %{public}@ using identity %@ \nFrom data %{public}@", buf, 0x20u);
  }

  v9 = objc_alloc_init(CKDPCSData);
  v10 = *(*(a1 + 136) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  objc_msgSend_setPcs_(*(*(*(a1 + 136) + 8) + 40), v12, *(*(*(a1 + 128) + 8) + 24));
  objc_msgSend_setPcsData_(*(*(*(a1 + 136) + 8) + 40), v13, *(a1 + 32));
LABEL_12:
  v15 = objc_opt_new();
  if (*(*(*(a1 + 128) + 8) + 24))
  {
    v16 = PCSShareProtectionCopyPublicKeys();
    v119[1] = MEMORY[0x277D85DD0];
    v119[2] = 3221225472;
    v119[3] = sub_22529C288;
    v119[4] = &unk_27854A5B8;
    v120 = v15;
    CKCFArrayForEach();
    if (v16)
    {
      CFRelease(v16);
    }
  }

  v17 = *(*(*(a1 + 152) + 8) + 24);
  if (v17)
  {
    CFRelease(v17);
    *(*(*(a1 + 152) + 8) + 24) = 0;
  }

  v18 = *(*(*(a1 + 128) + 8) + 24);
  if (v18)
  {
    CFRelease(v18);
    *(*(*(a1 + 128) + 8) + 24) = 0;
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v19 = *(a1 + 56);
    v20 = *(a1 + 184);
    v21 = *(*(a1 + 120) + 8);
    v119[0] = *(v21 + 40);
    objc_msgSend__checkUnitTestOverridesForDecryptionFailuresWithState_error_(v19, v14, (v20 & 1) == 0, v119);
    objc_storeStrong((v21 + 40), v119[0]);
    if (*(*(*(a1 + 120) + 8) + 40))
    {
      v22 = *(*(a1 + 136) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = 0;
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22529C2E8;
  aBlock[3] = &unk_27854BEF8;
  v107 = *(a1 + 72);
  v108 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = *(a1 + 56);
  v109 = v24;
  v110 = v25;
  v26 = *(a1 + 168);
  v115 = *(a1 + 160);
  v116 = v26;
  v27 = *(a1 + 96);
  v28 = *(a1 + 144);
  v111 = v27;
  v114 = v28;
  v113 = *(a1 + 112);
  v29 = *(a1 + 48);
  v30 = *(a1 + 176);
  v112 = v29;
  v117 = v30;
  v118 = *(a1 + 185);
  v31 = _Block_copy(aBlock);
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = sub_22529CA30;
  v96[3] = &unk_27854BF48;
  v32 = *(a1 + 120);
  v105 = *(a1 + 168);
  v33 = *(a1 + 56);
  v103 = v32;
  v96[4] = v33;
  v104 = *(a1 + 136);
  v97 = *(a1 + 80);
  v98 = *(a1 + 72);
  v99 = *(a1 + 88);
  v100 = *(a1 + 48);
  v101 = *(a1 + 104);
  v102 = *(a1 + 112);
  v34 = _Block_copy(v96);
  v37 = objc_msgSend_domain(*(*(*(a1 + 120) + 8) + 40), v35, v36);
  if (objc_msgSend_isEqualToString_(v37, v38, *MEMORY[0x277CBC120]))
  {
    v43 = objc_msgSend_code(*(*(*(a1 + 120) + 8) + 40), v39, v40) != 5000 && objc_msgSend_code(*(*(*(a1 + 120) + 8) + 40), v41, v42) != 5004;
  }

  else
  {
    v43 = 1;
  }

  if (*(*(*(a1 + 120) + 8) + 40) && !v43 && *(a1 + 184) == 1)
  {
    if (*(a1 + 96) && (*(a1 + 176) - 3) <= 1)
    {
      v46 = objc_msgSend_identityManager(*(a1 + 56), v44, v45);
      v48 = objc_msgSend_PCSServiceStringFromCKServiceType_(v46, v47, *(a1 + 168));

      IsManatee = objc_msgSend_serviceTypeIsManatee_(*(a1 + 56), v49, *(a1 + 168));
      v53 = objc_msgSend_userKeySyncNotifier(*(a1 + 56), v51, v52);
      v89 = MEMORY[0x277D85DD0];
      v90 = 3221225472;
      v91 = sub_22529CF10;
      v92 = &unk_27854BF98;
      v93 = *(a1 + 56);
      v94 = v31;
      v95 = v34;
      v56 = _Block_copy(&v89);
      if (v53)
      {
        v57 = objc_msgSend_account(*(a1 + 56), v54, v55, v89, v90, v91, v92, v93, v94);
        v60 = objc_msgSend_dsid(v57, v58, v59);
        objc_msgSend_getKeySyncEligibilityForService_isManatee_accountDSID_lastModifiedDate_testOverrideProvider_completionHandler_(v53, v61, v48, IsManatee, v60, *(a1 + 96), *(a1 + 56), v56);
      }

      else
      {
        v57 = objc_msgSend_sharedManager(CKDPCSKeySyncManager, v54, v55, v89, v90, v91, v92, v93, v94);
        v60 = objc_msgSend_account(*(a1 + 56), v75, v76);
        v79 = objc_msgSend_dsid(v60, v77, v78);
        v80 = IsManatee;
        v81 = v48;
        v82 = v79;
        objc_msgSend_getKeySyncEligibilityForService_isManatee_accountDSID_lastModifiedDate_testOverrideProvider_completionHandler_(v57, v83, v81, v80, v79, *(a1 + 96), *(a1 + 56), v56);

        v48 = v81;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v64 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v87 = *(a1 + 72);
        v88 = *(a1 + 96);
        *buf = 138543618;
        v122 = v87;
        v123 = 2114;
        v124 = v88;
        _os_log_debug_impl(&dword_22506F000, v64, OS_LOG_TYPE_DEBUG, "Either the PCS object is not zonePCS or PPPCS, or the PCS blob lacks the lastModifiedDate. PCS object type %{public}@. lastModifiedDate:%{public}@", buf, 0x16u);
      }

      (*(v31 + 2))(v31, 1);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v62 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 184))
      {
        v71 = @"YES";
      }

      else
      {
        v71 = @"NO";
      }

      v72 = @" Error:";
      v73 = *(*(*(a1 + 120) + 8) + 40);
      *buf = 138543874;
      if (!v73)
      {
        v72 = &stru_28385ED00;
      }

      v122 = v71;
      if (v73)
      {
        v74 = v73;
      }

      else
      {
        v74 = &stru_28385ED00;
      }

      v123 = 2114;
      v124 = v72;
      v125 = 2112;
      v126 = v74;
      _os_log_debug_impl(&dword_22506F000, v62, OS_LOG_TYPE_DEBUG, "Either successfully decrypted the PCS or we are not allowed to sync key registry. canSyncKeyRegistry:%{public}@.%{public}@%@", buf, 0x20u);
    }

    v34[2](v34);
  }

  v63 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22529C288(uint64_t a1)
{
  v2 = PCSPublicIdentityGetPublicID();
  if (v2)
  {
    objc_msgSend_addObject_(*(a1 + 32), v2, v2);
  }

  return MEMORY[0x2821F96F8]();
}

void sub_22529C2E8(uint64_t a1, unsigned int a2)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = @"dis";
    v28 = *(a1 + 48);
    if (a2)
    {
      v27 = @"en";
    }

    *buf = 138544130;
    v40 = v25;
    v41 = 2114;
    v42 = v26;
    v43 = 2114;
    v44 = v28;
    v45 = 2114;
    v46 = v27;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Attempting user key sync before retrying %{public}@ PCS decryption for service %{public}@ and operation %{public}@, with throttling %{public}@abled.", buf, 0x2Au);
  }

  v31 = a2;
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend__checkPCSTestOverrideForKey_(*(a1 + 56), v5, @"DisallowKRSToBePerformed"))
  {
    v29 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, *(a1 + 96), *(a1 + 56), @"CKDPCSManager.m", 1742, @"KRS is not allowed from unit test override");
  }

  v8 = *(a1 + 104);
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_22529C5BC;
  v32[3] = &unk_27854BED0;
  v11 = *(a1 + 48);
  v12 = *(a1 + 88);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v10;
  *(&v17 + 1) = v13;
  v33 = v17;
  v34 = v16;
  v18 = *(a1 + 80);
  v19 = *(a1 + 72);
  v37 = vextq_s8(*(a1 + 104), *(a1 + 104), 8uLL);
  v38 = *(a1 + 120);
  v20 = *(a1 + 64);
  *&v21 = v19;
  *(&v21 + 1) = v20;
  *&v22 = v18;
  *(&v22 + 1) = v12;
  v36 = v22;
  v35 = v21;
  objc_msgSend_synchronizeUserKeyRegistryForServiceType_resourceLastModifiedDate_outdatedPublicKeyID_shouldThrottle_context_requestorOperationID_completionHandler_(v10, v23, v8, v9, 0, v31, 0x28387E920, v11, v32);

  v24 = *MEMORY[0x277D85DE8];
}

void sub_22529C5BC(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_synchronizeQueue(*(a1 + 32), v9, v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22529C75C;
  block[3] = &unk_27854BEA8;
  v33 = a2;
  v26 = v7;
  v24 = *(a1 + 32);
  v12 = *(a1 + 88);
  v13 = *(&v24 + 1);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  v27 = v24;
  v28 = v16;
  v29 = v8;
  v17 = *(a1 + 80);
  v18 = *(a1 + 64);
  v32 = *(a1 + 96);
  v34 = *(a1 + 112);
  v19 = *(a1 + 72);
  *&v20 = v18;
  *(&v20 + 1) = v19;
  *&v21 = v17;
  *(&v21 + 1) = v12;
  v31 = v21;
  v30 = v20;
  v22 = v8;
  v23 = v7;
  dispatch_async(v11, block);
}

void sub_22529C75C(uint64_t a1, const char *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a1 + 128) == 1 && !*(a1 + 32))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      v20 = *(a1 + 64);
      *buf = 138543874;
      v25 = v18;
      v26 = 2114;
      v27 = v19;
      v28 = 2114;
      v29 = v20;
      _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "User key sync succeeded for service %{public}@ and operation %{public}@. Retrying %{public}@ PCS decryption.", buf, 0x20u);
    }

    v13 = *(a1 + 56);
    objc_msgSend__locked_createPCSFromData_ofType_usingPCSServiceType_tryDecryptingWithOtherServices_withSyncKeyRegistryRetry_lastModifiedDate_keySyncAnalytics_requestorOperationID_completionHandler_(*(a1 + 40), v12, *(a1 + 80), *(a1 + 112), *(a1 + 120), *(a1 + 129), 0, *(a1 + 88), *(a1 + 72), v13, *(a1 + 96));
  }

  else
  {
    objc_msgSend__locked_markMissingIdentitiesFromFailedDecryptError_serviceName_(*(a1 + 40), a2, *(*(*(a1 + 104) + 8) + 24), *(a1 + 48));
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v3 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v17 = *(a1 + 32);
      *buf = 138544130;
      v25 = v14;
      v26 = 2114;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "User key sync failed for service %{public}@ and operation %{public}@. Won't retry %{public}@ PCS decryption due to error: %@.", buf, 0x2Au);
    }

    objc_msgSend_setOverallResult_(*(a1 + 72), v4, @"failure");
    objc_msgSend_setError_(*(a1 + 72), v5, *(a1 + 32));
    objc_msgSend_sendCoreAnalyticsEventForKeySync_(CKDPCSKeySyncManager, v6, *(a1 + 72));
    v9 = objc_msgSend_callbackQueue(*(a1 + 40), v7, v8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22529CA0C;
    block[3] = &unk_2785456C8;
    v23 = *(a1 + 96);
    v22 = *(a1 + 32);
    dispatch_async(v9, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22529CA0C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void sub_22529CA30(uint64_t a1, const char *a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 88) + 8) + 40) && !*(*(*(a1 + 96) + 8) + 40) && !*(a1 + 112) && objc_msgSend_currentServiceIsManatee(*(a1 + 32), a2, a3))
  {
    objc_msgSend__locked_markMissingIdentitiesFromFailedDecryptError_serviceName_(*(a1 + 32), a2, *(*(*(a1 + 104) + 8) + 24), *(a1 + 40));
    if (objc_msgSend_code(*(*(*(a1 + 88) + 8) + 40), v4, v5) == 5000)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v8 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "Failed to decrypt PCS data even after user key sync because we have no identities. Returning retryable failure.", buf, 2u);
      }

      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = 5008;
      objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v10, v12, *(*(*(a1 + 104) + 8) + 24), 5008, @"Failed to decrypt. Keys unavailable even after synchronization");
    }

    else
    {
      if (objc_msgSend_code(*(*(*(a1 + 88) + 8) + 40), v6, v7) != 5004)
      {
        goto LABEL_19;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v34 = *(a1 + 40);
        v33 = *(a1 + 48);
        v35 = *(a1 + 56);
        *buf = 138543874;
        v41 = v33;
        v42 = 2114;
        v43 = v34;
        v44 = 2114;
        v45 = v35;
        _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Failed to decrypt %{public}@ PCS data even after user key sync for service %{public}@ operation %{public}@. Returning permanent failure.", buf, 0x20u);
      }

      objc_msgSend_markUndecryptablePCS_(*(a1 + 32), v14, *(a1 + 64));
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v11 = 5011;
      objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v16, v17, *(*(*(a1 + 104) + 8) + 24), 5011, @"Failed to decrypt. Keys unavailable even after synchronization");
    }
    v18 = ;
    v19 = *(*(a1 + 88) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    if (!*(*(*(a1 + 88) + 8) + 40))
    {
      v21 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], v11, *(*(*(a1 + 104) + 8) + 24), @"Failed to decrypt. Keys unavailable even after synchronization");
      v22 = *(*(a1 + 88) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }
  }

LABEL_19:
  v24 = *(*(*(a1 + 88) + 8) + 40);
  if (v24 && !*(*(*(a1 + 96) + 8) + 40) && objc_msgSend_code(v24, a2, a3) == 5011 && !*(a1 + 112))
  {
    v25 = *(a1 + 32);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_22529CE84;
    v39[3] = &unk_278545A00;
    v39[4] = v25;
    objc_msgSend__onSynchronizeQueue_(v25, a2, v39);
  }

  v26 = *(a1 + 72);
  if (v26)
  {
    if (*(*(*(a1 + 96) + 8) + 40) && !*(*(*(a1 + 88) + 8) + 40))
    {
      v27 = &off_27854DFC0;
    }

    else
    {
      v27 = &off_27854DFC8;
    }

    objc_msgSend_setOverallResult_(v26, a2, *v27);
    objc_msgSend_setError_(*(a1 + 72), v28, *(*(*(a1 + 88) + 8) + 40));
    objc_msgSend_sendCoreAnalyticsEventForKeySync_(CKDPCSKeySyncManager, v29, *(a1 + 72));
  }

  v30 = *(*(*(a1 + 104) + 8) + 24);
  if (v30)
  {
    CFRelease(v30);
    *(*(*(a1 + 104) + 8) + 24) = 0;
  }

  v31 = objc_msgSend_callbackQueue(*(a1 + 32), a2, a3);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_22529CEE0;
  v36[3] = &unk_27854BF20;
  v37 = *(a1 + 80);
  v38 = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
  dispatch_async(v31, v36);

  v32 = *MEMORY[0x277D85DE8];
}

void sub_22529CE84(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3);
  objc_msgSend_setLastMissingManateeIdentityErrorDateForCurrentService_(*(a1 + 32), v4, v5);
}

uint64_t sub_22529CEE0(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  }

  return result;
}

void sub_22529CF10(void **a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v5 = objc_msgSend_synchronizeQueue(a1[4], a2, a3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22529CFD4;
  block[3] = &unk_27854BF70;
  v9 = v3;
  v7 = a1[5];
  v8 = a1[6];
  dispatch_async(v5, block);
}

uint64_t sub_22529CFD4(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void sub_22529D55C(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a2;
  v6 = objc_alloc_init(CKDZonePCSData);
  v9 = objc_msgSend_pcs(v5, v7, v8);

  objc_msgSend_setPcs_(v6, v10, v9);
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v6, v12);
  }
}

void sub_22529D6CC(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v8 = objc_msgSend_pcsData(a2, v6, v7);
    (*(v3 + 16))(v3, v8, v5);
  }
}

void sub_22529D87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22529D894(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_identityManager(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_PCSServiceStringFromCKServiceType_(v4, v5, *(a1 + 48));

  v9 = objc_msgSend_identityManager(*(a1 + 32), v7, v8);
  v10 = *(a1 + 48);
  v11 = *(*(a1 + 40) + 8);
  obj = *(v11 + 40);
  v13 = objc_msgSend_copyIdentitySetWithType_options_error_(v9, v12, v10, 0, &obj);
  objc_storeStrong((v11 + 40), obj);

  if (!v13 || *(*(*(a1 + 40) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v15 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v26 = v6;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Warn: No identity set for service %{public}@: %@", buf, 0x16u);
    }

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v16 = MEMORY[0x277CBC560];
      v17 = *MEMORY[0x277CBC120];
      v18 = sub_2252927B0(*(a1 + 48));
      v20 = objc_msgSend_errorWithDomain_code_format_(v16, v19, v17, 5000, @"Failed to preflight a %@ identity", v18);
      v21 = *(*(a1 + 40) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22529DCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22529DD28(uint64_t a1, const char *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = *(*(*(a1 + 72) + 8) + 24);
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277D42F48];
  v17[0] = *MEMORY[0x277D42F58];
  v17[1] = v5;
  v18[0] = v4;
  v18[1] = MEMORY[0x277CBEC38];
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v18, v17, 2);
  v7 = *(a1 + 40);
  v16 = *(a1 + 88);
  v8 = *(a1 + 128) >> 64;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = *(a1 + 64);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v15 = v13;
  PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync();

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22529DEA8(void *a1, const void *a2, void *cf)
{
  v44 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = *(*(a1[8] + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(a1[8] + 8) + 24) = 0;
  }

  v7 = sub_225292788(a1[10]);
  if (!a2 || cf)
  {
    v9 = a1[4];
    v10 = objc_opt_class();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"Failed to unwrap %@ data", v7);
    v14 = objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v10, v13, cf, 5004, v12);
    v15 = *(a1[9] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (!*(*(a1[9] + 8) + 40))
    {
      v18 = MEMORY[0x277CBC560];
      v19 = *MEMORY[0x277CBC120];
      v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"Couldn't unwrap %@ object from data", v7);
      v22 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(v18, v21, v19, 5004, 0, cf, 0, 0, v20);
      v23 = *(a1[9] + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v25 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v28 = *(*(a1[9] + 8) + 40);
      v29 = *(*(a1[8] + 8) + 24);
      v30 = a1[5];
      v31 = a1[6];
      *buf = 138413314;
      v35 = v7;
      v36 = 2112;
      v37 = v28;
      v38 = 2112;
      v39 = v29;
      v40 = 2112;
      v41 = v30;
      v42 = 2112;
      v43 = v31;
      _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Error unwrapping %@: %@.\nIdentity %@\nPEM data was %@\nZone PCS data %@.", buf, 0x34u);
    }

    v26 = *(*(a1[9] + 8) + 40);
    (*(a1[7] + 16))();
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v32 = *(*(a1[8] + 8) + 24);
      v33 = a1[6];
      *buf = 138413058;
      v35 = v7;
      v36 = 2112;
      v37 = v32;
      v38 = 2114;
      v39 = v33;
      v40 = 2112;
      v41 = a2;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Unwrapped %@ using identity %@ from data %{public}@: %@.", buf, 0x2Au);
    }

    CFRetain(a2);
    (*(a1[7] + 16))();
    CFRelease(a2);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_22529F5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22529F614(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_keyRollsSkippedBySizeCheck(v6, v2, v3);
  objc_msgSend_setKeyRollsSkippedBySizeCheck_(v6, v5, v4 + 1);
}

uint64_t sub_22529F65C(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[5] + 8);
  result = PCSFPRollMasterKey();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_22529F6A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v9 = a2;
  if (v2 == 1)
  {
    v5 = objc_msgSend_zoneishKeysRolled(v9, v3, v4);
    objc_msgSend_setZoneishKeysRolled_(v9, v6, v5 + 1);
  }

  else
  {
    v7 = objc_msgSend_perRecordKeysRolled(v9, v3, v4);
    objc_msgSend_setPerRecordKeysRolled_(v9, v8, v7 + 1);
  }
}

void sub_22529FA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22529FA98(void *a1, const char *a2, uint64_t a3)
{
  v4 = a1[5];
  v5 = a1[6];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v6 = off_27D71F848;
  v18 = off_27D71F848;
  if (!off_27D71F848)
  {
    v7 = sub_2252B4EE4(a1, a2, a3);
    v16[3] = dlsym(v7, "MarkForCounterSigning");
    off_27D71F848 = v16[3];
    v6 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (v6)
  {
    *(*(a1[4] + 8) + 24) = v6(v4, v5);
  }

  else
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "_Bool CKMarkForCounterSigning(PCSShareProtectionRef, PCSShareProtectionRef)");
    v13 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v14, v12, @"CKDPCSManager.m", 66, @"%s", v13);

    __break(1u);
  }
}

void sub_22529FC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252A0248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A0274(void *a1)
{
  v4 = a1 + 6;
  v2 = a1[6];
  v3 = v4[1];
  v5 = *(a1[5] + 8);
  result = PCSFPUpdateZoneKey();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252A07B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A07E0(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  result = PCSFPRemovePrivateKey();
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t sub_2252A0C28(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  result = PCSFPRemovePrivateKey();
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void sub_2252A0E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A0EB4(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[5] + 8);
  v4 = PCSFPCopyExported();
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

void sub_2252A1788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_2252A17B4(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_keyRollsSkippedBySizeCheck(v6, v2, v3);
  objc_msgSend_setKeyRollsSkippedBySizeCheck_(v6, v5, v4 + 1);
}

uint64_t sub_2252A17FC(void *a1)
{
  v4 = a1 + 6;
  v2 = a1[6];
  v3 = v4[1];
  v5 = *(a1[5] + 8);
  result = PCSFPUpdateIdentityAndRollZoneKey();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252A183C(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_zoneKeysRolled(v6, v2, v3);
  objc_msgSend_setZoneKeysRolled_(v6, v5, v4 + 1);
}

void sub_2252A29B4(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_keyRollsSkippedBySizeCheck(v6, v2, v3);
  objc_msgSend_setKeyRollsSkippedBySizeCheck_(v6, v5, v4 + 1);
}

void sub_2252A29FC(uint64_t a1, void *a2)
{
  v10 = a2;
  v4 = objc_msgSend_shareKeysRolled(v10, v2, v3);
  objc_msgSend_setShareKeysRolled_(v10, v5, v4 + 1);
  v8 = objc_msgSend_zoneKeysRolled(v10, v6, v7);
  objc_msgSend_setZoneKeysRolled_(v10, v9, v8 + 1);
}

void sub_2252A2BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2252A2BD8(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  v3 = PCSFPCopyAvailableMasterKeyIDs();
  if (objc_msgSend_count(v3, v4, v5) == 1)
  {
    v6 = a1[6];
    v7 = *(a1[5] + 8);
    *(*(a1[4] + 8) + 24) = PCSFPRollMasterKey();
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Warn: PCS does not have a single primary key, skipping primary key replacement. keys: %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2252A41A8(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_keyRollsSkippedBySizeCheck(v6, v2, v3);
  objc_msgSend_setKeyRollsSkippedBySizeCheck_(v6, v5, v4 + 1);
}

void sub_2252A46D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A46F0(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  result = PCSFPAddPublicIdentityWithShareFlags();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252A4A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void *sub_2252A4AB0(void *result, CFTypeRef cf, char a3)
{
  if ((a3 & 0x20) != 0)
  {
    v3 = result;
    if (!*(*(result[4] + 8) + 24))
    {
      result = CFRetain(cf);
      *(*(v3[4] + 8) + 24) = result;
    }
  }

  return result;
}

void sub_2252A4AFC(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a1[7];
  v3 = *(*(a1[4] + 8) + 24);
  v4 = PCSFPRemovePublicIdentity();
  v5 = *MEMORY[0x277CBC878];
  v6 = *MEMORY[0x277CBC880];
  if (v4)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v7 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v8 = *(*(a1[4] + 8) + 24);
      v9 = a1[7];
      v19 = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Removed parent zone PCS identity %@ from child zone PCS %@", &v19, 0x16u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v10 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v12 = *(*(a1[4] + 8) + 24);
      v13 = a1[7];
      v19 = 138412546;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Warn: Unable to remove parent zone identity %@ from child zone PCS %@", &v19, 0x16u);
    }

    if (!*(*(a1[5] + 8) + 40))
    {
      v14 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 5002, @"Couldn't remove a parent zone PCS identity from the child zone.");
      v15 = *(a1[5] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  v17 = *(*(a1[4] + 8) + 24);
  if (v17)
  {
    CFRelease(v17);
    *(*(a1[4] + 8) + 24) = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2252A532C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 240), 8);
  _Block_object_dispose((v39 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A5378(uint64_t a1, const char *a2, uint64_t a3)
{
  v22[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 72) == 1)
  {
    v4 = *MEMORY[0x277D42F88];
  }

  else
  {
    v21[0] = *MEMORY[0x277D42F78];
    v6 = objc_msgSend_identityManager(*(a1 + 56), a2, a3);
    v9 = objc_msgSend_serviceName(v6, v7, v8);
    v10 = *MEMORY[0x277D42F98];
    v11 = *(a1 + 64);
    v22[0] = v9;
    v22[1] = v11;
    v12 = *MEMORY[0x277D42F58];
    v21[1] = v10;
    v21[2] = v12;
    v22[2] = *MEMORY[0x277D42F60];
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v22, v21, 3);
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *MEMORY[0x277D42F80];
    v18 = *(*(*(a1 + 48) + 8) + 40);
  }

  v5 = *(*(a1 + 40) + 8) + 24;
  result = PCSFPCreate();
  *(*(*(a1 + 32) + 8) + 24) = result;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2252A54C8(void *a1)
{
  v2 = a1[6];
  v3 = *(*(a1[5] + 8) + 24);
  result = PCSFPAddSharePCS();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_2252A5504(void *a1)
{
  v2 = a1[6];
  v3 = *(*(a1[5] + 8) + 24);
  result = PCSFPAddSharePCS();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252A5B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_2252A5B80(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D42F80];
  if (*(a1 + 48) == 1)
  {
    v4 = *MEMORY[0x277D42F88];

    v3 = v4;
  }

  v8 = *MEMORY[0x277D42F58];
  v9[0] = *MEMORY[0x277D42F60];
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v2, v9, &v8, 1);
  v6 = *(*(a1 + 40) + 8);
  *(*(*(a1 + 32) + 8) + 24) = PCSFPCreate();

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2252A5C84(void *a1)
{
  v2 = a1[6];
  v3 = *(*(a1[5] + 8) + 24);
  v4 = a1[7];
  v5 = *(v2 + 8);
  result = PCSFPAddEncryptedSharePCS();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_2252A5CD0(void *a1)
{
  v2 = a1[6];
  v3 = *(*(a1[5] + 8) + 24);
  result = PCSFPAddSharePCS();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252A6010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A603C(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[5] + 8);
  v4 = PCSFPCopyExported();
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

void sub_2252A6590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252A67C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252A6CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A6D14(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  result = PCSFPAddPublicIdentityWithShareFlags();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_2252A726C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A7298(void *a1)
{
  v4 = a1 + 6;
  v2 = a1[6];
  v3 = v4[1];
  v5 = *(a1[5] + 8);
  result = PCSFPRemoveSharePCS();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252A7AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Unwind_Resume(a1);
}

void sub_2252A7B7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v111 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(*(*(*(a1 + 32) + 8) + 40), a2, a3))
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v98, v110, 16);
    if (v8)
    {
      v9 = v8;
      v10 = *v99;
      v85 = *MEMORY[0x277CBC120];
      v11 = MEMORY[0x277CBC880];
      v12 = MEMORY[0x277CBC858];
      do
      {
        v13 = 0;
        do
        {
          if (*v99 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v98 + 1) + 8 * v13);
          v97 = 0;
          v15 = *(a1 + 80);
          if (PCSFPRemoveMasterKey())
          {
            v17 = v97 == 0;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {
            if (*v11 != -1)
            {
              dispatch_once(v11, *MEMORY[0x277CBC878]);
            }

            v22 = *v12;
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
            {
              v23 = *(a1 + 80);
              *buf = 138543618;
              v105 = v14;
              v106 = 2112;
              v107 = v23;
              _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Removed primary key with ID %{public}@ from PCS %@", buf, 0x16u);
            }

            ++*(*(*(a1 + 40) + 8) + 24);
          }

          else
          {
            v18 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v16, v85, 5005, @"Unspecified failure.");
            if (*v11 != -1)
            {
              dispatch_once(v11, *MEMORY[0x277CBC878]);
            }

            v19 = *v12;
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
            {
              v20 = *(a1 + 80);
              *buf = 138543874;
              v105 = v14;
              v106 = 2112;
              v107 = v20;
              v108 = 2112;
              v109 = v18;
              _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Warn: Failed to remove primary key with ID %{public}@ from PCS %@: %@", buf, 0x20u);
            }
          }

          ++v13;
        }

        while (v9 != v13);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v21, &v98, v110, 16);
      }

      while (v9);
    }
  }

  if (objc_msgSend_count(*(*(*(a1 + 48) + 8) + 40), v4, v5))
  {
    v26 = *(a1 + 80);
    v27 = PCSFPCopyKeyIDs();
    v28 = objc_opt_new();
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v29 = v27;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v93, v103, 16);
    if (v31)
    {
      v32 = v31;
      v33 = *v94;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v94 != v33)
          {
            objc_enumerationMutation(v29);
          }

          v35 = *(*(&v93 + 1) + 8 * i);
          v36 = *(a1 + 80);
          v37 = PCSFPCopyPrivateKey();
          v39 = PCSIdentityCopyCurrentKeyFingerprint();
          if (v37)
          {
            CFRelease(v37);
          }

          objc_msgSend_setObject_forKey_(v28, v38, v35, v39);
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v40, &v93, v103, 16);
      }

      while (v32);
    }

    v84 = v29;

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = *(*(*(a1 + 48) + 8) + 40);
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v89, v102, 16);
    if (v42)
    {
      v44 = v42;
      v45 = *v90;
      v46 = MEMORY[0x277CBC880];
      v47 = MEMORY[0x277CBC858];
      do
      {
        v48 = 0;
        do
        {
          if (*v90 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v89 + 1) + 8 * v48);
          v50 = objc_msgSend_objectForKey_(v28, v43, v49);
          if (!v50)
          {
            if (*v46 != -1)
            {
              dispatch_once(v46, *MEMORY[0x277CBC878]);
            }

            v56 = *v47;
            if (os_log_type_enabled(*v47, OS_LOG_TYPE_INFO))
            {
              v57 = *(a1 + 80);
              *buf = 138543618;
              v105 = v49;
              v106 = 2114;
              v107 = v57;
              _os_log_impl(&dword_22506F000, v56, OS_LOG_TYPE_INFO, "Warn: Failed to remove private key with public key ID %{public}@. No matching public key found in the PCS %{public}@", buf, 0x16u);
            }

            v58 = *(a1 + 80);
            v59 = PCSFPCopyDiagnostic();
            if (*v46 != -1)
            {
              dispatch_once(v46, *MEMORY[0x277CBC878]);
            }

            v60 = *v47;
            if (os_log_type_enabled(*v47, OS_LOG_TYPE_DEBUG))
            {
LABEL_64:
              *buf = 138543362;
              v105 = v59;
              _os_log_debug_impl(&dword_22506F000, v60, OS_LOG_TYPE_DEBUG, "PCS diagnostics: %{public}@", buf, 0xCu);
            }

LABEL_61:

            goto LABEL_62;
          }

          v51 = *(a1 + 80);
          v52 = PCSFPRemovePrivateKey();
          v53 = *MEMORY[0x277CBC878];
          v54 = *v46;
          if (!v52)
          {
            if (*v46 != -1)
            {
              dispatch_once(v46, v53);
            }

            v61 = *v47;
            if (os_log_type_enabled(*v47, OS_LOG_TYPE_INFO))
            {
              v62 = *(a1 + 80);
              *buf = 138543874;
              v105 = v50;
              v106 = 2114;
              v107 = v49;
              v108 = 2114;
              v109 = v62;
              _os_log_impl(&dword_22506F000, v61, OS_LOG_TYPE_INFO, "Warn: Failed to remove private key with public key %{public}@ (keyID: %{public}@) from PCS %{public}@", buf, 0x20u);
            }

            v63 = *(a1 + 80);
            v59 = PCSFPCopyDiagnostic();
            if (*v46 != -1)
            {
              dispatch_once(v46, *MEMORY[0x277CBC878]);
            }

            v60 = *v47;
            if (os_log_type_enabled(*v47, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_64;
            }

            goto LABEL_61;
          }

          if (*v46 != -1)
          {
            dispatch_once(v46, v53);
          }

          v55 = *v47;
          if (os_log_type_enabled(*v47, OS_LOG_TYPE_DEBUG))
          {
            v64 = *(a1 + 80);
            *buf = 138543874;
            v105 = v50;
            v106 = 2114;
            v107 = v49;
            v108 = 2112;
            v109 = v64;
            _os_log_debug_impl(&dword_22506F000, v55, OS_LOG_TYPE_DEBUG, "Removed private key with public key %{public}@ (keyID: %{public}@) from PCS %@", buf, 0x20u);
          }

          ++*(*(*(a1 + 56) + 8) + 24);
LABEL_62:

          ++v48;
        }

        while (v44 != v48);
        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v89, v102, 16);
        v44 = v65;
      }

      while (v65);
    }
  }

  if (objc_msgSend_count(*(*(*(a1 + 64) + 8) + 40), v24, v25))
  {
    v66 = *(a1 + 80);
    v67 = PCSFPCopyPublicIdentities();
    if (v67)
    {
      v88 = *(a1 + 80);
      v87 = *(a1 + 64);
      CKCFArrayForEach();
      if (!objc_msgSend_count(*(*(*(a1 + 64) + 8) + 40), v68, v69))
      {
LABEL_86:

        goto LABEL_87;
      }

      v70 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v71 = MEMORY[0x277CBC858];
      v72 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v73 = *(*(*(a1 + 64) + 8) + 40);
        v74 = *(a1 + 80);
        *buf = 138543618;
        v105 = v73;
        v106 = 2114;
        v107 = v74;
        _os_log_impl(&dword_22506F000, v72, OS_LOG_TYPE_INFO, "Failed to remove sharees with keyIDs: %{public}@ from PCS because no matching public identities were found in the PCS %{public}@", buf, 0x16u);
      }

      v75 = *(a1 + 80);
      v76 = PCSFPCopyDiagnostic();
      if (*v70 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v77 = *v71;
      if (!os_log_type_enabled(*v71, OS_LOG_TYPE_DEBUG))
      {
LABEL_85:

        goto LABEL_86;
      }

      *buf = 138543362;
      v105 = v76;
    }

    else
    {
      v78 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v79 = MEMORY[0x277CBC858];
      v80 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v81 = *(a1 + 80);
        *buf = 138543362;
        v105 = v81;
        _os_log_impl(&dword_22506F000, v80, OS_LOG_TYPE_INFO, "Warn: Failed to remove sharees from PCS, the PCS has no public identities: %{public}@", buf, 0xCu);
      }

      v82 = *(a1 + 80);
      v76 = PCSFPCopyDiagnostic();
      if (*v78 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v77 = *v79;
      if (!os_log_type_enabled(*v79, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_85;
      }

      *buf = 138543362;
      v105 = v76;
    }

    _os_log_debug_impl(&dword_22506F000, v77, OS_LOG_TYPE_DEBUG, "PCS diagnostics: %{public}@", buf, 0xCu);
    goto LABEL_85;
  }

LABEL_87:
  v83 = *MEMORY[0x277D85DE8];
}

void sub_2252A857C(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = PCSPublicIdentityCopyCurrentKeyFingerprint();
  if (objc_msgSend_containsObject_(*(*(a1[4] + 8) + 40), v3, v2))
  {
    v4 = a1[6];
    if (PCSFPRemovePublicIdentity())
    {
      ++*(*(a1[5] + 8) + 24);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v5 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v7 = a1[6];
        v16 = 138543618;
        v17 = v2;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_22506F000, v5, OS_LOG_TYPE_INFO, "Removed sharee public identity for keyID %{public}@ from PCS %@", &v16, 0x16u);
      }
    }

    else
    {
      v8 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v9 = MEMORY[0x277CBC858];
      v10 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v11 = a1[6];
        v16 = 138543618;
        v17 = v2;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Warn: Failed to remove the sharee public identity matching keyID %{public}@ from PCS %@", &v16, 0x16u);
      }

      v12 = a1[6];
      v13 = PCSFPCopyDiagnostic();
      if (*v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v14 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138543362;
        v17 = v13;
        _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "PCS diagnostics: %{public}@", &v16, 0xCu);
      }
    }

    objc_msgSend_removeObject_(*(*(a1[4] + 8) + 40), v6, v2);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2252A87EC(uint64_t a1, void *a2)
{
  v7 = a2;
  v5 = objc_msgSend_keysNotRemoved(v7, v3, v4);
  objc_msgSend_setKeysNotRemoved_(v7, v6, *(a1 + 32) + v5);
}

uint64_t sub_2252A948C(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  result = PCSFPAddPublicIdentity();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_2252A9BD8(void *a1)
{
  v4 = a1 + 6;
  v2 = a1[6];
  v3 = v4[1];
  v5 = *(a1[5] + 8);
  result = PCSFPAddPrivateKey();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_2252A9C18(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  result = PCSFPAddPublicIdentity();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252AA2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252AA328(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[5] + 8);
  v4 = PCSFPCopyExported();
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

void sub_2252AA7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252AA814(void *a1)
{
  v4 = a1 + 6;
  v2 = a1[6];
  v3 = v4[1];
  v5 = *(a1[5] + 8);
  result = PCSFPCreateWithExported();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252AAC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2252AAC6C(void *a1, const char *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a1[8];
  v4 = a1[4];
  v9 = *MEMORY[0x277D42F58];
  v10[0] = v4;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v10, &v9, 1);
  v6 = a1[5];
  v7 = *(a1[7] + 8);
  *(*(a1[6] + 8) + 24) = PCSObjectCreateFromExportedWithIdentitiesAndOptions();

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2252ABD00(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

void sub_2252ABD2C(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = a2;
  dispatch_assert_queue_V2(v7);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  v11 = objc_msgSend_pcs(v8, v9, v10);

  if (v11)
  {
    objc_msgSend_setMyParticipantPCS_(*(a1 + 40), v12, v11);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 48);
      *buf = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = v11;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Successfully decrypted a per-participant PCS using our %{public}@ identity: %@", buf, 0x16u);
    }
  }

  v14 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252ABF04;
  block[3] = &unk_27854C238;
  v21 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16 = *(a1 + 64);
  v20 = v15;
  v22 = v16;
  dispatch_async(v14, block);

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2252ABF04(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

void sub_2252ABF30(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  dispatch_assert_queue_V2(*(a1 + 32));
  objc_storeStrong((*(*(a1 + 88) + 8) + 40), a3);
  v11 = objc_msgSend_pcs(v7, v9, v10);

  if (v11)
  {
    objc_msgSend_setMyParticipantPCS_(*(a1 + 40), v12, v11);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 48);
      v15 = v13;
      v18 = objc_msgSend_identityManager(v14, v16, v17);
      v20 = objc_msgSend_PCSServiceStringFromCKServiceType_(v18, v19, *(a1 + 104));
      *buf = 138543618;
      v58 = v20;
      v59 = 2112;
      v60 = v11;
      _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Successfully decrypted a per-participant PCS using our %{public}@ identity: %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  if (*(a1 + 120) != 1)
  {
LABEL_12:
    v35 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2252AC544;
    block[3] = &unk_27854C238;
    v28 = v49;
    v49[0] = *(a1 + 80);
    v31 = &v48;
    v36 = *(a1 + 40);
    v37 = *(a1 + 88);
    v48 = v36;
    v49[1] = v37;
    dispatch_async(v35, block);
    goto LABEL_13;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v21 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v39 = *(a1 + 48);
    v40 = *(a1 + 56);
    v41 = v21;
    v44 = objc_msgSend_identityManager(v39, v42, v43);
    v46 = objc_msgSend_PCSServiceStringFromCKServiceType_(v44, v45, *(a1 + 112));
    *buf = 138412546;
    v58 = v40;
    v59 = 2114;
    v60 = v46;
    _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Attempting decryption of per-participant PCS for share %@ using our %{public}@ identity", buf, 0x16u);
  }

  v24 = objc_msgSend_myParticipantPCSData(*(a1 + 40), v22, v23);
  v25 = *(a1 + 112);
  v26 = *(a1 + 64);
  v27 = *(a1 + 72);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_2252AC308;
  v50[3] = &unk_27854C288;
  v28 = &v51;
  v29 = *(a1 + 32);
  v30 = *(a1 + 88);
  v51 = v29;
  v54 = v30;
  v31 = v52;
  v32 = *(a1 + 40);
  v33 = *(a1 + 48);
  v52[0] = v32;
  v52[1] = v33;
  v55 = *(a1 + 112);
  v56 = 0;
  v53 = *(a1 + 80);
  objc_msgSend__createPCSFromData_ofType_usingPCSServiceType_tryDecryptingWithOtherServices_withSyncKeyRegistryRetry_lastModifiedDate_requestorOperationID_completionHandler_(WeakRetained, v34, v24, 4, v25, 0, 1, v26, v27, v50);

LABEL_13:
  v38 = *MEMORY[0x277D85DE8];
}

void sub_2252AC308(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = a2;
  dispatch_assert_queue_V2(v7);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  v11 = objc_msgSend_pcs(v8, v9, v10);

  if (v11)
  {
    objc_msgSend_setMyParticipantPCS_(*(a1 + 40), v12, v11);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 48);
      v19 = v13;
      v22 = objc_msgSend_identityManager(v18, v20, v21);
      v24 = objc_msgSend_PCSServiceStringFromCKServiceType_(v22, v23, *(a1 + 72));
      v25 = *(a1 + 80);
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Successfully decrypted a per-participant PCS using our %{public}@ identity: %@", buf, 0x16u);
    }
  }

  v14 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252AC518;
  block[3] = &unk_27854C238;
  v28 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16 = *(a1 + 64);
  v27 = v15;
  v29 = v16;
  dispatch_async(v14, block);

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2252AC518(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

uint64_t sub_2252AC544(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

uint64_t sub_2252AC570(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

void sub_2252AC70C(uint64_t a1, void *a2, void *a3)
{
  v126 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_callbackQueue(*(a1 + 32), v7, v8);
  dispatch_assert_queue_V2(v9);

  v12 = objc_msgSend_myParticipantPCS(v5, v10, v11);
  v13 = MEMORY[0x277CBC880];
  v14 = MEMORY[0x277CBC858];
  if (!v12)
  {
    v35 = 0;
    goto LABEL_20;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Trying to unlock PCS blobs for the share using our PPPCS", buf, 2u);
  }

  v18 = *(a1 + 32);
  v19 = objc_msgSend_pcsData(v5, v16, v17);
  v22 = objc_msgSend_myParticipantPCS(v5, v20, v21);
  v121 = 0;
  v24 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_logFailure_error_(v18, v23, v19, 5, v22, 1, &v121);
  v25 = v121;

  if (v24)
  {
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Successfully decrypted the invited share PCS using our per-participant PCS", buf, 2u);
    }
  }

  v27 = *(a1 + 32);
  v30 = objc_msgSend_publicPCSData(v5, v28, v29);
  v33 = objc_msgSend_myParticipantPCS(v5, v31, v32);
  v120 = 0;
  v35 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_logFailure_error_(v27, v34, v30, 0, v33, 0, &v120);
  v36 = v120;

  if (v35)
  {
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Successfully decrypted the public share PCS using our per-participant PCS", buf, 2u);
    }
  }

  if (!v24)
  {
LABEL_20:
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v38 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      v107 = *(a1 + 64);
      v108 = v38;
      v109 = sub_2252927B0(v107);
      *buf = 138543362;
      v123 = v109;
      _os_log_debug_impl(&dword_22506F000, v108, OS_LOG_TYPE_DEBUG, "Trying to unlock the invited PCS using our %{public}@ service identity", buf, 0xCu);
    }

    v41 = *(a1 + 32);
    v42 = objc_msgSend_pcsData(v5, v39, v40);
    v43 = *(a1 + 64);
    v119 = 0;
    v24 = objc_msgSend_createSharePCSFromData_ofType_withService_logFailure_error_(v41, v44, v42, 5, v43, 0, &v119);
    v45 = v119;

    if (v24)
    {
      if (*v13 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v46 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, "Successfully decrypted the invited share PCS using our identity", buf, 2u);
      }
    }

    if (v35)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if (v35)
  {
LABEL_35:
    v54 = v24 == 0;
    goto LABEL_36;
  }

LABEL_30:
  if (*v13 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v47 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
  {
    v112 = *(a1 + 64);
    v113 = v47;
    v114 = sub_2252927B0(v112);
    *buf = 138543362;
    v123 = v114;
    _os_log_debug_impl(&dword_22506F000, v113, OS_LOG_TYPE_DEBUG, "Trying to unlock the public PCS using our %{public}@ service identity", buf, 0xCu);
  }

  v50 = *(a1 + 32);
  v51 = objc_msgSend_publicPCSData(v5, v48, v49);
  v52 = *(a1 + 64);
  v118 = 0;
  v35 = objc_msgSend_createSharePCSFromData_ofType_withService_logFailure_error_(v50, v53, v51, 0, v52, 0, &v118);

  if (v35)
  {
    goto LABEL_35;
  }

  if (*(a1 + 40))
  {
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v79 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v79, OS_LOG_TYPE_DEBUG, "Trying to unlock the public PCS using the public sharing key", buf, 2u);
    }

    v82 = *(a1 + 32);
    v83 = objc_msgSend_publicPCSData(v5, v80, v81);
    v84 = *(a1 + 40);
    v117 = 0;
    v35 = objc_msgSend_createSharePCSFromData_sharePrivateKey_error_(v82, v85, v83, v84, &v117);
  }

  else
  {
    v35 = 0;
  }

  v54 = v24 == 0;
  if (v24 && !v35)
  {
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v95 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v95, OS_LOG_TYPE_DEBUG, "Trying to unlock the public PCS using the decrypted invited PCS", buf, 2u);
    }

    v98 = *(a1 + 32);
    v99 = objc_msgSend_publicPCSData(v5, v96, v97);
    v116 = 0;
    v35 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v98, v100, v99, 0, v24, &v116);
    v101 = v116;

    v102 = *MEMORY[0x277CBC878];
    v103 = *v13;
    if (!v35 || v101)
    {
      if (v103 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v102);
      }

      v104 = *v14;
      if (!os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_99;
      }

      v110 = *(a1 + 48);
      *buf = 138412290;
      v123 = v110;
      v106 = "Couldn't decrypt public PCS for share %@ using the private PCS. Oh well, moving on.";
    }

    else
    {
      if (v103 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v102);
      }

      v104 = *v14;
      if (!os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_99;
      }

      v105 = *(a1 + 48);
      *buf = 138412290;
      v123 = v105;
      v106 = "Successfully decrypted the public PCS for share %@ using the private PCS";
    }

    _os_log_impl(&dword_22506F000, v104, OS_LOG_TYPE_INFO, v106, buf, 0xCu);
LABEL_99:
  }

  if (!v35)
  {
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v111 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v111, OS_LOG_TYPE_INFO, "Failed to decrypt the public share PCS using our identity", buf, 2u);
    }

    v72 = 0;
    v35 = 0;
    goto LABEL_54;
  }

LABEL_36:
  if (*v13 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v55 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
  {
    v58 = *(a1 + 48);
    *buf = 138412290;
    v123 = v58;
    _os_log_impl(&dword_22506F000, v55, OS_LOG_TYPE_INFO, "We were able to decrypt the share public PCS using our identity for share %@", buf, 0xCu);
  }

  if (v54)
  {
    if (objc_msgSend_publicPermission(v5, v56, v57) != 1 && objc_msgSend_publicPermission(v5, v59, v60))
    {
      v63 = *(a1 + 32);
      v64 = objc_msgSend_pcsData(v5, v61, v62);
      v115 = 0;
      v24 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_logFailure_error_(v63, v65, v64, 5, v35, 0, &v115);
      v66 = v115;

      v67 = *MEMORY[0x277CBC878];
      v68 = *v13;
      if (v24 && !v66)
      {
        if (v68 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v67);
        }

        v69 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
        {
          v70 = *(a1 + 48);
          *buf = 138412290;
          v123 = v70;
          _os_log_impl(&dword_22506F000, v69, OS_LOG_TYPE_INFO, "Unlocked private share PCS for share %@ using the public PCS", buf, 0xCu);
        }

        goto LABEL_67;
      }

      if (v68 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v67);
      }

      v86 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
      {
        v87 = *(a1 + 48);
        *buf = 138412546;
        v123 = v87;
        v124 = 2112;
        v125 = v66;
        _os_log_impl(&dword_22506F000, v86, OS_LOG_TYPE_INFO, "Couldn't decrypt share private PCS with public PCS for share %@: %@", buf, 0x16u);
      }

      goto LABEL_66;
    }

    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v71 = *v14;
    v72 = 1;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
    {
      v73 = *(a1 + 48);
      v74 = v71;
      v77 = objc_msgSend_publicPermission(v5, v75, v76);
      *buf = 138412546;
      v123 = v73;
      v124 = 2048;
      v125 = v77;
      _os_log_impl(&dword_22506F000, v74, OS_LOG_TYPE_INFO, "We were able to decrypt the public share PCS for %@ with our identity, but since the share permission is %ld we can't decrypt the private PCS. This might not go well...", buf, 0x16u);
    }

    v24 = 0;
LABEL_54:
    v78 = v24 != 0;
    goto LABEL_69;
  }

LABEL_66:
  if (v24)
  {
LABEL_67:
    objc_msgSend_setPublicPCS_(v5, v56, v35);
    objc_msgSend_setInvitedPCS_(v5, v88, v24);
    CFRelease(v24);
    v89 = 0;
    goto LABEL_77;
  }

  v78 = 0;
  v72 = 1;
LABEL_69:
  if (*v13 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v90 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
  {
    v92 = *(a1 + 48);
    *buf = 138412290;
    v123 = v92;
    _os_log_impl(&dword_22506F000, v90, OS_LOG_TYPE_INFO, "Warn: Couldn't unlock the private share PCS for share %@", buf, 0xCu);
  }

  v89 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v91, *MEMORY[0x277CBC120], 5004, v6, @"Couldn't unlock the private share PCS for share %@", *(a1 + 48));
  if (!v78)
  {
    if (!v72)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  CFRelease(v24);
  if (v72)
  {
LABEL_77:
    CFRelease(v35);
  }

LABEL_78:
  v93 = *(a1 + 56);
  if (v93)
  {
    (*(v93 + 16))(v93, v5, v89);
  }

  v94 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2252AD43C(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  v4 = a1[9];
  v3 = a1[10];
  v5 = a1[8];
  return MEMORY[0x2821F9670](a1[4], sel__locked_pcsDataFromFetchedShare_withPublicSharingKey_oonPrivateKey_withServiceType_requestorOperationID_completionHandler_, a1[5]);
}

uint64_t sub_2252AD8D4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t sub_2252AD8F4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0);
  }

  return result;
}

void sub_2252AD918(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_callbackQueue(*(a1 + 32), v7, v8);
  dispatch_assert_queue_V2(v9);

  if (objc_msgSend_pcs(v5, v10, v11) && objc_msgSend_publicPCS(v5, v12, v13))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      v16 = v14;
      v19 = objc_msgSend_recordID(v15, v17, v18);
      v29 = 138412290;
      v30 = v19;
      v20 = "Decrypted share PCS for share %@";
      v21 = v16;
      v22 = 12;
LABEL_11:
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, v20, &v29, v22);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 40);
      v16 = v23;
      v19 = objc_msgSend_recordID(v24, v25, v26);
      v29 = 138412546;
      v30 = v19;
      v31 = 2112;
      v32 = v6;
      v20 = "Couldn't unlock the private share PCS for share %@: %@";
      v21 = v16;
      v22 = 22;
      goto LABEL_11;
    }
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    (*(v27 + 16))(v27, v5, v6);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2252AED38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252AED5C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  result = PCSFPAddPublicIdentityWithShareFlags();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_2252AF288(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  result = PCSFPRemovePublicIdentity();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252AF9D0(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = PCSPublicIdentityCopyPublicKey();
  if (objc_msgSend_isEqualToData_(*(a1 + 32), v5, v4))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v6 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = MEMORY[0x277CBC830];
    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Removing public identity for key %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x2020000000;
    v24 = 0;
    v11 = *(a1 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2252AFC28;
    v17[3] = &unk_27854BD18;
    v12 = *(a1 + 64);
    v17[4] = &buf;
    v17[5] = v12;
    v17[6] = a2;
    objc_msgSend__onSynchronizeQueue_(v11, v9, v17);
    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      if (*v6 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 64);
        *v18 = 138543618;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Failed to remove public identity matching key %{public}@ from record PCS %@", v18, 0x16u);
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2252AFC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252AFC28(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  result = PCSFPRemovePublicIdentity();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252AFEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2252AFED0(uint64_t *a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = PCSPublicIdentityCopyCurrentKeyFingerprint();
  if (objc_msgSend_isEqualToData_(a1[4], v5, v4))
  {
    *(*(a1[6] + 8) + 24) = 1;
    v6 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = MEMORY[0x277CBC830];
    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v10 = a1[4];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Removing public identity for keyID %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x2020000000;
    v29 = 0;
    v11 = a1[5];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2252B0174;
    v22[3] = &unk_27854BD18;
    v12 = a1[8];
    v22[4] = &buf;
    v22[5] = v12;
    v22[6] = a2;
    objc_msgSend__onSynchronizeQueue_(v11, v9, v22);
    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      if (*v6 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        v15 = a1[4];
        v16 = a1[8];
        *v23 = 138543618;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Failed to remove public identity matching keyID %{public}@ from PCS %@", v23, 0x16u);
      }

      if (!*(*(a1[7] + 8) + 40))
      {
        v17 = a1[4];
        v18 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 5005, @"Couldn't remove public identity with keyID %@ from PCS %@", v17, a1[8]);
        v19 = *(a1[7] + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2252B0174(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  result = PCSFPRemovePublicIdentity();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252B0EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252B0F20(uint64_t a1, CFTypeRef cf1, int a3)
{
  result = CFEqual(cf1, *(a1 + 40));
  if (result)
  {
    if (a3 <= 3)
    {
      if (!a3)
      {
        v6 = 0;
        goto LABEL_17;
      }

      if (a3 == 2)
      {
        v6 = 2;
        goto LABEL_17;
      }
    }

    else if (a3 > 15)
    {
      if (a3 == 16)
      {
        v6 = 16;
        goto LABEL_17;
      }

      if (a3 == 32)
      {
        v6 = 32;
        goto LABEL_17;
      }
    }

    else
    {
      if (a3 == 4)
      {
        v6 = 4;
        goto LABEL_17;
      }

      if (a3 == 8)
      {
        v6 = 8;
LABEL_17:
        *(*(*(a1 + 32) + 8) + 24) = v6;
        return result;
      }
    }

    v6 = 1;
    goto LABEL_17;
  }

  return result;
}

void sub_2252B2944(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_synchronizeQueue(*(a1 + 32), v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2252B2A30;
  v13[3] = &unk_2785488E0;
  v14 = v5;
  v15 = v6;
  v10 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, v13);
}

void sub_2252B2A30(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 40) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    objc_msgSend_setBoundaryKeyData_(*(a1 + 48), a2, v3);
    v7 = 0;
  }

  else
  {
    v7 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 5005);
  }

  v8 = objc_msgSend_callbackQueue(*(a1 + 48), v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252B2B4C;
  block[3] = &unk_2785457E0;
  v13 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

void sub_2252B34E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose((v54 - 248), 8);
  _Block_object_dispose((v54 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252B3544(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void sub_2252B3564(uint64_t a1, char a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Warn: Keychain sync for signing identity %{public}@ failed: %@", &v13, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 40));

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2252B36A8(uint64_t a1, char a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Warn: Keychain sync for signing identity %{public}@ failed: %@", &v13, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 40));

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2252B37EC(void *a1)
{
  result = a1[4];
  if (result)
  {
    if (*(*(a1[5] + 8) + 24) == 1)
    {
      v3 = *(*(a1[6] + 8) + 24);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(*(a1[7] + 8) + 40);
    if (!v4)
    {
      v4 = *(*(a1[8] + 8) + 40);
    }

    return (*(result + 16))(result, v3 & 1, v4);
  }

  return result;
}

uint64_t sub_2252B3CA0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0, 0);
  }

  return result;
}

uint64_t sub_2252B3CC4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32), 0);
  }

  return result;
}

void sub_2252B3CEC(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_callbackQueue(*(a1 + 32), v9, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2252B3DE4;
  v15[3] = &unk_27854C440;
  v12 = *(a1 + 40);
  v17 = v8;
  v18 = v12;
  v19 = a2;
  v16 = v7;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
}

uint64_t sub_2252B3DE4(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32), *(a1 + 40));
  }

  return result;
}

uint64_t sub_2252B41E8(uint64_t a1, const char *a2)
{
  qword_280D583B8 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], a2, @"com.apple.cloudkit.unittest.nopcs.CKManateeContainerTests.", @"com.apple.cloudkit.zoneshare.test_non_manatee", @"com.apple.cloudkit.unittest.zonesharing.", @"com.apple.cloudkit.unittest.fdb.zonesharing.", @"com.apple.test.p", @"com.apple.test.fdb.p", @"com.apple.cloudkit.unittest.CKAnonymousToServerShareParticipantTests.", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2252B4348()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  qword_280D583C8 = objc_msgSend_initWithObjects_(v0, v1, @"ForceUserKeyRegistrySyncRetryOnZonePCSCreation", @"ForceUserKeyRegistrySyncRetryOnDecryption", @"ForceMissingIdentitiesErrorOnDecryptionRetry", @"ForceDecryptFailedErrorOnDecryptionRetry", @"ResetKeySyncState", @"AllowThrottlingWithUnitTestAccount", @"AllowRealKeySync", @"ForceKeySyncFailure", @"ForceKeySyncFailureForReminders", @"ForceNoCurrentIdentityOnce", @"FakeOutCurrentIdentityIsMissing", @"ForceImmediateUserKeyRegistrySyncFailure", @"FakeSignatureGenerationErrorDeviceCapabilities", @"FakeSignatureGenerationErrorZoneUsage", @"FakeSignatureGenerationErrorShareUsage", @"FakeSignatureGenerationErrorRequiredFeatures", @"FakeSignatureGenerationErrorAnonymousToServerShareAccept", @"FakeSignatureGenerationErrorAnonymousToServerAuthentication", @"FakeInvalidSignature", @"ForceKRSReturnExistingIdentityValue", @"DisallowKRSToBePerformed", @"ExpectedPersonaIdentifier", @"ForceKeyRegistrySyncOnRemindersZoneCreation", @"ForceSingleIdentityForRemindersZone", @"GenerateOneInvalidSignature", @"OverrideShareModificationDate", @"FakeSignatureValidationError", @"ExpectValidationSuccessWithManateeIdentity", @"ExpectValidationSuccessWithStingrayIdentity", @"ClearContainersOnPCSNotifier", @"SimulateMissingSigningIdentityForDeviceCapabilities", @"SimulateMissingSigningIdentityForZoneUsage", @"SimulateMissingSigningIdentityForShareUsage", @"SimulateMissingSigningIdentityForRequiredFeatures", @"FakeDBRAccountNeedsReauthenticationPCSError", 0);

  return MEMORY[0x2821F96F8]();
}

void sub_2252B45F8(uint64_t a1, const char *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_pcsTestOverrides(*(a1 + 32), a2, a3);
  if (!v4 || (v7 = v4, v8 = objc_msgSend_count(*(a1 + 40), v5, v6), v7, !v8))
  {
    v11 = objc_opt_new();
    objc_msgSend_setPcsTestOverrides_(*(a1 + 32), v12, v11);
  }

  if (!objc_msgSend_count(*(a1 + 40), v9, v10))
  {
    v15 = objc_msgSend_identityManager(*(a1 + 32), v13, v14);
    objc_msgSend_clearOverrides(v15, v16, v17);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v18 = *(a1 + 40);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v47, v51, 16);
  if (v20)
  {
    v21 = v20;
    v22 = *v48;
    do
    {
      v23 = 0;
      do
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v47 + 1) + 8 * v23);
        v25 = *(a1 + 32);
        v26 = objc_opt_class();
        v29 = objc_msgSend_pcsOverrideKeys(v26, v27, v28, v47);
        v31 = objc_msgSend_containsObject_(v29, v30, v24);

        if (v31)
        {
          v34 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v32, v24);
          v37 = objc_msgSend_pcsTestOverrides(*(a1 + 32), v35, v36);
          objc_msgSend_setObject_forKeyedSubscript_(v37, v38, v34, v24);
        }

        else
        {
          v39 = objc_msgSend_overrideKeys(CKDPCSIdentityManager, v32, v33);
          v41 = objc_msgSend_containsObject_(v39, v40, v24);

          if (!v41)
          {
            goto LABEL_16;
          }

          v34 = objc_msgSend_identityManager(*(a1 + 32), v42, v43);
          v37 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v44, v24);
          objc_msgSend_setOverride_value_(v34, v45, v24, v37);
        }

LABEL_16:
        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v42, &v47, v51, 16);
    }

    while (v21);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void sub_2252B4970(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pcsTestOverrides(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_BOOLValue(v6, v7, v8);

  v12 = objc_msgSend_pcsTestOverrides(*(a1 + 32), v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v11, 0, *(a1 + 40));
}

void sub_2252B4B58(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_pcsTestOverrides(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v8, v4, *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_BOOLValue(v5, v6, v7);
}

void sub_2252B4D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252B4D5C(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_pcsTestOverrides(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v8, v4, *(a1 + 40));
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void *sub_2252B4E94(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_2252B4EE4(a1, a2, a3);
  result = dlsym(v4, "MarkForCounterSigning");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27D71F848 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2252B4EE4(uint64_t a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  if (!qword_27D71F850)
  {
    v10[1] = MEMORY[0x277D85DD0];
    v10[2] = 3221225472;
    v10[3] = sub_2252B5038;
    v10[4] = &unk_278545AD0;
    v10[5] = v10;
    v11 = xmmword_27854C4A8;
    v12 = 0;
    qword_27D71F850 = _sl_dlopen();
  }

  v3 = qword_27D71F850;
  if (!qword_27D71F850)
  {
    v3 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void *ProtectedCloudStorageLibrary(void)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v9, v8, @"CKDPCSManager.m", 65, @"%s", v10[0]);

    __break(1u);
    goto LABEL_7;
  }

  v4 = v10[0];
  if (v10[0])
  {
LABEL_7:
    free(v4);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2252B5038(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_27D71F850 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2252B50AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_2252B4EE4(a1, a2, a3);
  result = dlsym(v4, "PCSObjectCreateFromExportedWithKeyedPCSAndOptionsWithTrusts");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27D71F858 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2252B50FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_2252B4EE4(a1, a2, a3);
  result = dlsym(v4, "PCSNeedsRollAndCounterSign");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27D71F860 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uintptr_t sub_2252B5538()
{
  result = dispatch_source_get_data(qword_280D583E8);
  qword_280D583E0 = result;
  return result;
}

void sub_2252B563C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_pcsCache(a2, a2, a3);
  objc_msgSend_runMemoryCacheEviction(v5, v3, v4);
}

void sub_2252B57EC(uint64_t a1)
{
  v2 = CKGetGlobalQueue();
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2);
  v4 = qword_280D583F0;
  qword_280D583F0 = v3;

  v5 = qword_280D583F0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2252B5938;
  v9[3] = &unk_278545AD0;
  v9[4] = *(a1 + 32);
  v6 = v9;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_2250878E0;
  handler[3] = &unk_2785456A0;
  v11 = v6;
  dispatch_source_set_event_handler(v5, handler);

  v7 = qword_280D583F0;
  v8 = dispatch_time(0, 1800000000000);
  dispatch_source_set_timer(v7, v8, 0x1A3185C5000uLL, 0x1A3185C5000uLL);
}

void sub_2252B5938(uint64_t a1)
{
  v2 = _os_activity_create(&dword_22506F000, "pcsMemoryCacheEvict", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v2, &v7);
  objc_msgSend_stopEvictionTimer(*(a1 + 32), v3, v4);
  objc_msgSend_runMemoryCacheEvictionInAllCaches(*(a1 + 32), v5, v6);
  os_activity_scope_leave(&v7);
}

uint64_t sub_2252B5AA0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_msgSend_lastAccess(a2, v5, v6);
  v8 = v7;
  objc_msgSend_lastAccess(v4, v9, v10);
  v12 = v11;

  if (v8 > v12)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_2252B5C20(uint64_t a1, const char *a2, uint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_cacheEntries(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKey_(v4, v5, *(a1 + 40));

  if (v6)
  {
    v9 = objc_msgSend_pcsData(v6, v7, v8);
    v12 = objc_msgSend_pcs(v9, v10, v11);

    v13 = *MEMORY[0x277CBC878];
    v14 = *MEMORY[0x277CBC880];
    if (v12)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v15 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v37 = *(a1 + 32);
        v38 = *(a1 + 40);
        v39 = v15;
        v42 = objc_msgSend_pcsData(v6, v40, v41);
        v45 = objc_msgSend_etag(v42, v43, v44);
        v48 = 138543874;
        v49 = v37;
        v50 = 2114;
        v51 = v38;
        v52 = 2114;
        v53 = v45;
        _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Returning PCS data from in-memory cache (%{public}@). scopedItemID=%{public}@, protectionInfoTag=%{public}@", &v48, 0x20u);
      }

      v18 = *(a1 + 32);
      v19 = objc_msgSend_memoryCacheHitCount(v18, v16, v17);
      objc_msgSend_setMemoryCacheHitCount_(v18, v20, v19 + 1);
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v21, v22);
      objc_msgSend_setLastAccess_(v6, v23, v24);
      v27 = objc_msgSend_pcsData(v6, v25, v26);
      v30 = objc_msgSend_copy(v27, v28, v29);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v31 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v46 = *(a1 + 32);
        v47 = *(a1 + 40);
        v48 = 138543618;
        v49 = v46;
        v50 = 2114;
        v51 = v47;
        _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Found a memory cache entry in (%{public}@) but it has no decrypted data, removing it. scopedItemID=%{public}@", &v48, 0x16u);
      }

      v27 = objc_msgSend_cacheEntries(*(a1 + 32), v32, v33);
      objc_msgSend_removeObjectForKey_(v27, v34, *(a1 + 40));
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  v35 = *(a1 + 48);
  if (v35)
  {
    (*(v35 + 16))(v35, v30);
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2252B5FDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_pcs(*(a1 + 32), a2, a3);
  v7 = *(a1 + 40);
  if (v4)
  {
    updated = objc_msgSend_memoryCacheUpdateCount(*(a1 + 40), v5, v6);
    objc_msgSend_setMemoryCacheUpdateCount_(v7, v9, updated + 1);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a1 + 40);
      v37 = *(a1 + 48);
      v39 = *(a1 + 32);
      v40 = v10;
      v43 = objc_msgSend_etag(v39, v41, v42);
      v46 = 138543874;
      v47 = v38;
      v48 = 2114;
      v49 = v37;
      v50 = 2114;
      v51 = v43;
      _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Setting PCS data in the in-memory cache (%{public}@). scopedItemID=%{public}@, protectionInfoTag=%{public}@", &v46, 0x20u);
    }

    v11 = objc_opt_new();
    objc_msgSend_setPcsData_(v11, v12, *(a1 + 32));
    v15 = objc_msgSend_cacheEntries(*(a1 + 40), v13, v14);
    objc_msgSend_setObject_forKey_(v15, v16, v11, *(a1 + 48));

    v19 = objc_msgSend_cacheEntries(*(a1 + 40), v17, v18);
    v22 = objc_msgSend_count(v19, v20, v21);

    v25 = objc_msgSend_memoryCacheHighwaterCount(*(a1 + 40), v23, v24);
    if (v22 <= v25)
    {
      objc_msgSend_setMemoryCacheHighwaterCount_(*(a1 + 40), v26, v25);
    }

    else
    {
      objc_msgSend_setMemoryCacheHighwaterCount_(*(a1 + 40), v26, v22);
    }
  }

  else
  {
    v27 = objc_msgSend_memoryCacheDeleteCount(*(a1 + 40), v5, v6);
    objc_msgSend_setMemoryCacheDeleteCount_(v7, v28, v27 + 1);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v44 = *(a1 + 40);
      v45 = *(a1 + 48);
      v46 = 138543618;
      v47 = v44;
      v48 = 2114;
      v49 = v45;
      _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Removing PCS data in the in-memory cache (%{public}@). scopedItemID=%{public}@", &v46, 0x16u);
    }

    v11 = objc_msgSend_cacheEntries(*(a1 + 40), v30, v31);
    objc_msgSend_removeObjectForKey_(v11, v32, *(a1 + 48));
  }

  objc_msgSend__lockedEvictEntriesFromCache(*(a1 + 40), v33, v34);
  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2252B63F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252B640C(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_cacheEntries(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_count(v6, v4, v5);
}

uint64_t sub_2252B689C()
{
  qword_280D58400 = objc_alloc_init(CKDPCSNotifier);

  return MEMORY[0x2821F96F8]();
}

void sub_2252B709C(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_msgSend_weakUnscopedIdentityChangeWatchers(WeakRetained, v3, v4);
    objc_sync_enter(v6);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = objc_msgSend_weakUnscopedIdentityChangeWatchers(v5, v7, v8, 0);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v22, 16);
    if (v13)
    {
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v9);
          }

          objc_msgSend_pcsIdentityChanged(*(*(&v18 + 1) + 8 * v15++), v11, v12);
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v18, v22, 16);
      }

      while (v13);
    }

    objc_sync_exit(v6);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2252B7484(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = 138543362;
    v14 = a3;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Received identities changed notification %{public}@", &v13, 0xCu);
  }

  v8 = objc_msgSend_pcsUpdateSource(v4, v6, v7);

  if (v8)
  {
    v11 = objc_msgSend_pcsUpdateSource(v4, v9, v10);
    dispatch_source_merge_data(v11, 1uLL);
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    objc_msgSend_clearSharedMockIdentitySetsCache(CKDPCSIdentityManager, v9, v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2252B75C4(uint64_t a1)
{
  v267 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state.opaque[1] = 0;
  state.opaque[0] = 0;
  v216 = _os_activity_create(&dword_22506F000, "CKDPCSNotifier/PCSIdentitiesChanged", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v216, &state);
  v227 = WeakRetained;
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC810] == 1)
    {
      v219 = objc_msgSend_checkAndClearTestOverrides_(WeakRetained, v2, @"ClearContainerOnPCSUpdateSource");
    }

    else
    {
      v219 = 0;
    }

    v3 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v3);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "PCS identities changed. Clearing PCS identity caches and in-memory PCS objects", buf, 2u);
    }

    v7 = objc_msgSend_weakUnscopedIdentityChangeWatchers(v227, v5, v6);
    objc_sync_enter(v7);
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    v255 = 0u;
    v10 = objc_msgSend_weakUnscopedIdentityChangeWatchers(v227, v8, v9);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v252, v266, 16);
    if (v14)
    {
      v15 = *v253;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v253 != v15)
          {
            objc_enumerationMutation(v10);
          }

          objc_msgSend_pcsIdentityChanged(*(*(&v252 + 1) + 8 * i), v12, v13);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v252, v266, 16);
      }

      while (v14);
    }

    objc_sync_exit(v7);
    obj = objc_msgSend_cloudCoreIdentityContextsMap(v227, v17, v18);
    objc_sync_enter(obj);
    v228 = objc_opt_new();
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v21 = objc_msgSend_cloudCoreIdentityContextsMap(v227, v19, v20);
    v24 = objc_msgSend_allKeys(v21, v22, v23);

    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v248, v265, 16);
    if (v28)
    {
      v29 = *v249;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v249 != v29)
          {
            objc_enumerationMutation(v24);
          }

          v31 = *(*(&v248 + 1) + 8 * j);
          v32 = objc_msgSend_cloudCoreIdentityContextsMap(v227, v26, v27);
          v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, v31);

          v37 = objc_msgSend_account(v34, v35, v36);
          v40 = objc_msgSend_service(v34, v38, v39);
          v42 = objc_msgSend_currentIdentityPublicKeyIDForAccount_serviceName_error_(CKDPCSIdentityManager, v41, v37, v40, 0);

          if (v42)
          {
            v45 = objc_msgSend_delegate(v34, v43, v44);
            v46 = *MEMORY[0x277CBC878];
            v47 = *MEMORY[0x277CBC880];
            if (v45)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v46);
              }

              v48 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v57 = objc_msgSend_service(v34, v49, v50);
                *buf = 138543362;
                v259 = v57;
                _os_log_debug_impl(&dword_22506F000, v48, OS_LOG_TYPE_DEBUG, "Service %{public}@ now has a current identity, calling delegate.", buf, 0xCu);
              }

              objc_msgSend_pcsIdentityChanged(v45, v51, v52);
            }

            else
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v46);
              }

              v53 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                v58 = objc_msgSend_service(v34, v54, v55);
                *buf = 138543362;
                v259 = v58;
                _os_log_debug_impl(&dword_22506F000, v53, OS_LOG_TYPE_DEBUG, "Delegate has been deleted. Removing watcher for service %{public}@", buf, 0xCu);
              }

              objc_msgSend_addObject_(v228, v56, v31);
            }
          }
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v248, v265, 16);
      }

      while (v28);
    }

    v61 = objc_msgSend_cloudCoreIdentityContextsMap(v227, v59, v60);
    objc_msgSend_removeObjectsForKeys_(v61, v62, v228);

    objc_sync_exit(obj);
    v215 = objc_msgSend_missingIdentitiesContextMap(v227, v63, v64);
    objc_sync_enter(v215);
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    v67 = objc_msgSend_missingIdentitiesContextMap(v227, v65, v66);
    v217 = objc_msgSend_allKeys(v67, v68, v69);

    v220 = objc_msgSend_countByEnumeratingWithState_objects_count_(v217, v70, &v244, v264, 16);
    if (v220)
    {
      v218 = *v245;
      v74 = *MEMORY[0x277CBC908];
      *&v73 = 138412290;
      v214 = v73;
LABEL_38:
      v223 = 0;
      while (1)
      {
        if (*v245 != v218)
        {
          objc_enumerationMutation(v217);
        }

        v222 = *(*(&v244 + 1) + 8 * v223);
        v75 = objc_msgSend_missingIdentitiesContextMap(v227, v71, v72, v214);
        obja = objc_msgSend_objectForKeyedSubscript_(v75, v76, v222);

        if (v219)
        {
          objc_msgSend_setContainer_(obja, v77, 0);
        }

        v224 = objc_msgSend_container(obja, v77, v78);
        if (v224)
        {
          v81 = objc_msgSend_pcsManager(v224, v79, v80);
          v84 = objc_msgSend_identityManager(v81, v82, v83);
          objc_msgSend_identitiesChanged(v84, v85, v86);

          v89 = objc_msgSend_pcsCache(v224, v87, v88);
          objc_msgSend_clearPCSMemoryCaches(v89, v90, v91);

          v94 = objc_msgSend_pcsManager(v224, v92, v93);
          objc_msgSend_setBoundaryKeyData_(v94, v95, 0);
        }

        v229 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v96 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v99 = objc_msgSend_copyOfMissingIdentityPublicKeys(obja, v97, v98);
        if (objc_msgSend_count(v99, v100, v101))
        {
        }

        else
        {
          v106 = objc_msgSend_copyOfServicesWithMissingIdentities(obja, v102, v103);
          v109 = objc_msgSend_count(v106, v107, v108) == 0;

          if (v109)
          {
            goto LABEL_92;
          }
        }

        v110 = objc_msgSend_account(obja, v104, v105);
        v111 = v110 == 0;

        v112 = *MEMORY[0x277CBC878];
        if (v111)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v112);
          }

          v193 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22506F000, v193, OS_LOG_TYPE_ERROR, "No account found on missing identities context.", buf, 2u);
          }

          goto LABEL_118;
        }

        v113 = v112;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v113);
        }

        v114 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_22506F000, v114, OS_LOG_TYPE_DEBUG, "We've come across missing identities before. Checking to see if a formerly missing key has arrived.", buf, 2u);
        }

        v117 = objc_msgSend_account(obja, v115, v116);
        v120 = objc_msgSend_copyOfServicesWithMissingIdentities(obja, v118, v119);
        v123 = objc_msgSend_anyObject(v120, v121, v122);
        v125 = v123;
        v126 = *MEMORY[0x277D43050];
        if (v123)
        {
          v127 = v123;
        }

        else
        {
          v127 = *MEMORY[0x277D43050];
        }

        v243 = 0;
        v128 = objc_msgSend_createFullKeychainIdentitySetForAccount_serviceName_error_(CKDPCSIdentityManager, v124, v117, v127, &v243);
        v221 = v243;

        if (!v128)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v211 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
          {
            v213 = @"Unknown error";
            if (v221)
            {
              v213 = v221;
            }

            *buf = v214;
            v259 = v213;
            _os_log_error_impl(&dword_22506F000, v211, OS_LOG_TYPE_ERROR, "Couldn't get a full identity set to verify against: %@", buf, 0xCu);
          }

          goto LABEL_128;
        }

        v241 = 0u;
        v242 = 0u;
        v239 = 0u;
        v240 = 0u;
        v131 = objc_msgSend_copyOfServicesWithMissingIdentities(obja, v129, v130);
        v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v132, &v239, v263, 16);
        if (v133)
        {
          v134 = *v240;
          do
          {
            v135 = 0;
            do
            {
              if (*v240 != v134)
              {
                objc_enumerationMutation(v131);
              }

              v136 = *(*(&v239 + 1) + 8 * v135);
              cf = 0;
              v138 = PCSIdentitySetCopyCurrentIdentityWithError();
              v139 = cf;
              if (v138)
              {
                v140 = cf == 0;
              }

              else
              {
                v140 = 0;
              }

              if (v140)
              {
                v141 = *MEMORY[0x277CBC878];
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v141);
                }

                v142 = *MEMORY[0x277CBC858];
                if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v259 = v136;
                  _os_log_debug_impl(&dword_22506F000, v142, OS_LOG_TYPE_DEBUG, "Service %{public}@ now has a current identity", buf, 0xCu);
                }

                objc_msgSend_addObject_(v229, v143, v136);
                v139 = cf;
              }

              if (v139)
              {
                CFRelease(v139);
                cf = 0;
              }

              if (v138)
              {
                CFRelease(v138);
              }

              ++v135;
            }

            while (v133 != v135);
            v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v137, &v239, v263, 16);
          }

          while (v133);
        }

        v236 = 0u;
        v237 = 0u;
        v234 = 0u;
        v235 = 0u;
        v146 = objc_msgSend_copyOfMissingIdentityPublicKeys(obja, v144, v145);
        v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(v146, v147, &v234, v262, 16);
        if (v148)
        {
          v149 = *v235;
          do
          {
            v150 = 0;
            do
            {
              if (*v235 != v149)
              {
                objc_enumerationMutation(v146);
              }

              v151 = *(*(&v234 + 1) + 8 * v150);
              v153 = PCSIdentitySetCopyIdentity();
              if (v153)
              {
                v154 = *MEMORY[0x277CBC878];
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v154);
                }

                v155 = *MEMORY[0x277CBC858];
                if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543618;
                  v259 = v151;
                  v260 = 2112;
                  v261 = v153;
                  _os_log_debug_impl(&dword_22506F000, v155, OS_LOG_TYPE_DEBUG, "Formerly missing public key %{public}@ was found with identity %@.", buf, 0x16u);
                }

                objc_msgSend_addObject_(v96, v156, v151);
                CFRelease(v153);
              }

              ++v150;
            }

            while (v148 != v150);
            v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(v146, v152, &v234, v262, 16);
          }

          while (v148);
        }

        CFRelease(v128);
LABEL_92:
        if (objc_msgSend_count(v96, v104, v105) || objc_msgSend_count(v229, v157, v158))
        {
          v159 = objc_msgSend_pcsManager(v224, v157, v158);
          v162 = objc_msgSend_undecryptablePCSDataHashes(v159, v160, v161);
          objc_msgSend_removeAllObjects(v162, v163, v164);

          v167 = objc_msgSend_missingIdentityPublicKeys(obja, v165, v166);
          objc_msgSend_minusSet_(v167, v168, v96);

          v171 = objc_msgSend_servicesWithMissingIdentities(obja, v169, v170);
          objc_msgSend_minusSet_(v171, v172, v229);

          v173 = *MEMORY[0x277CBC878];
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v173);
          }

          v174 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_22506F000, v174, OS_LOG_TYPE_DEBUG, "One or more previously missing PCS identities have arrived. Posting a notification to all clients", buf, 2u);
          }

          objc_msgSend_invalidateCachedAccountInfo(MEMORY[0x277CBC160], v175, v176);
          v232 = 0u;
          v233 = 0u;
          v230 = 0u;
          v231 = 0u;
          v177 = v229;
          v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v178, &v230, v257, 16);
          if (v179)
          {
            v180 = *v231;
            do
            {
              for (k = 0; k != v179; ++k)
              {
                if (*v231 != v180)
                {
                  objc_enumerationMutation(v177);
                }

                v182 = *(*(&v230 + 1) + 8 * k);
                v183 = CKNotificationKey();
                v186 = objc_msgSend_UTF8String(v183, v184, v185);
                notify_post(v186);
              }

              v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v187, &v230, v257, 16);
            }

            while (v179);
          }
        }

        v188 = objc_msgSend_copyOfServicesWithMissingIdentities(obja, v157, v158);
        if (objc_msgSend_count(v188, v189, v190))
        {
        }

        else
        {
          v194 = objc_msgSend_copyOfMissingIdentityPublicKeys(obja, v191, v192);
          v197 = (v224 | objc_msgSend_count(v194, v195, v196)) == 0;

          if (v197)
          {
            v200 = objc_msgSend_missingIdentitiesContextMap(v227, v198, v199);
            objc_msgSend_removeObjectForKey_(v200, v201, v222);

            v202 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v202);
            }

            v203 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
            {
              *buf = v214;
              v259 = v222;
              _os_log_debug_impl(&dword_22506F000, v203, OS_LOG_TYPE_DEBUG, "Removed empty context from manager context map for UUID: %@", buf, 0xCu);
            }
          }
        }

LABEL_118:

        if (++v223 == v220)
        {
          v220 = objc_msgSend_countByEnumeratingWithState_objects_count_(v217, v71, &v244, v264, 16);
          if (v220)
          {
            goto LABEL_38;
          }

          break;
        }
      }
    }

    v204 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v204);
    }

    v217 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v217, OS_LOG_TYPE_DEBUG))
    {
      v207 = objc_msgSend_missingIdentitiesContextMap(v227, v205, v206);
      v210 = objc_msgSend_count(v207, v208, v209);
      *buf = 134217984;
      v259 = v210;
      _os_log_debug_impl(&dword_22506F000, v217, OS_LOG_TYPE_DEBUG, "Number of remaining missing identity contexts: %lu", buf, 0xCu);
    }

LABEL_128:

    objc_sync_exit(v215);
  }

  os_activity_scope_leave(&state);

  v212 = *MEMORY[0x277D85DE8];
}

void sub_2252B85DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id obj)
{
  objc_sync_exit(obj);
  os_activity_scope_leave(&STACK[0x240]);
  _Unwind_Resume(a1);
}

void sub_2252B9648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v13 = a3;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Received DBR account became ready notification %{public}@", buf, 0xCu);
  }

  v8 = objc_msgSend_sharedManager(CKDPCSKeySyncManager, v6, v7);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2252B9898;
  v11[3] = &unk_278545AD0;
  v11[4] = a2;
  objc_msgSend_setRacedWithGuitarfishRepairCallbackOnAllOutstandingHandlersWithCompletion_(v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2252B9898(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = objc_msgSend_servicesNeedingDBRReauthentication(v1, v2, v3);
  objc_msgSend_clearServicesNeedingDBRReauthentication(v1, v5, v6);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v4;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v26, v30, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    v12 = *MEMORY[0x277CBC888];
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = CKNotificationKey();
        v18 = objc_msgSend_UTF8String(v15, v16, v17, v26);
        notify_post(v18);

        ++v13;
      }

      while (v10 != v13);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v19, &v26, v30, 16);
    }

    while (v10);
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v22 = objc_msgSend_servicesNeedingDBRReauthentication(v1, v20, v21);
    if (objc_msgSend_count(v22, v23, v24))
    {
      __assert_rtn("_guitarfishRepairCallback_block_invoke", "CKDPCSNotifier.m", 467, "notifier.servicesNeedingDBRReauthentication.count == 0");
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2252BA40C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_cacheTable(a2, a2, a3);
  objc_msgSend_deleteAllEntries_(v4, v3, 0);
}

void sub_2252BA61C(uint64_t a1, const char *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_deviceScopedDatabase(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_specialContainerType(*(a1 + 40), v5, v6);
  v9 = objc_msgSend_tableGroupOptionsForContainerType_(CKDPCSSQLCacheTableGroup, v8, v7);
  v10 = *(a1 + 48);
  v22 = 0;
  v12 = objc_msgSend_tableGroupInDatabase_withName_options_error_(CKDPCSSQLCacheTableGroup, v11, v4, v10, v9, &v22);
  v13 = v22;
  if (v12)
  {
    objc_storeStrong((*(a1 + 56) + 32), v12);
    v16 = objc_msgSend_cacheTable(v12, v14, v15);
    v17 = *(a1 + 56);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      *buf = 138412546;
      v24 = v21;
      v25 = 2112;
      v26 = v13;
      _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Failed to create PCS cache database for containerID %@, error: %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2252BA8CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_sqliteRepresentation(*(a1 + 40), a2, a3);
  v8 = objc_msgSend__lockedFetchPCSDataForID_databaseScope_itemType_(v4, v6, v5, *(a1 + 56), 2);

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, 0);
  }
}

void sub_2252BAA24(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_sqliteRepresentation(*(a1 + 40), a2, a3);
  v8 = objc_msgSend__lockedFetchPCSDataForID_databaseScope_itemType_(v4, v6, v5, *(a1 + 56), 1);

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, 0);
  }
}

void sub_2252BAB7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_sqliteRepresentation(*(a1 + 40), a2, a3);
  v8 = objc_msgSend__lockedFetchPCSDataForID_databaseScope_itemType_(v4, v6, v5, *(a1 + 56), 3);

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, 0);
  }
}

uint64_t sub_2252BAFFC(uint64_t a1, const char *a2)
{
  objc_msgSend__lockedSetPCSData_databaseScope_itemType_forID_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 64), *(a1 + 72), *(a1 + 48));
  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_2252BB144(void *a1, const char *a2, uint64_t a3)
{
  v4 = a1[4];
  if (v4)
  {
    v5 = *(a1[5] + 40);
    v6 = objc_msgSend_sqliteRepresentation(v4, a2, a3);
    v8 = objc_msgSend_deletePCSDataForZone_account_serviceName_(v5, v7, v6, *(a1[5] + 16), *(a1[5] + 24));
  }

  result = a1[6];
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

void sub_2252BB2A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(*(a1 + 40) + 40);
    v6 = objc_msgSend_sqliteRepresentation(v4, a2, a3);
    v8 = objc_msgSend_deletePCSDataForShare_account_serviceName_(v5, v7, v6, *(*(a1 + 40) + 16), *(*(a1 + 40) + 24));
  }

  if (*(a1 + 48))
  {
    v9 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2252BB38C;
    block[3] = &unk_2785456A0;
    v11 = *(a1 + 48);
    dispatch_async(v9, block);
  }
}

uint64_t sub_2252BB4BC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_2252BBB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252BBD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252BC750(uint64_t a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  v5 = objc_msgSend_completionHandlersByItemID(*(a1 + 32), a2, a3);
  objc_sync_enter(v5);
  objc_msgSend_callbacksForItemWithID_(*v4, v6, *(a1 + 40));
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v7 = v19 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v9)
  {
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(a1 + 40);
        v12 = *(a1 + 48);
        v14 = *(a1 + 56);
        (*(*(*(&v18 + 1) + 8 * v11) + 16))(*(*(&v18 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v15, &v18, v22, 16);
    }

    while (v9);
  }

  objc_msgSend_removeCallbacksForItemWithID_(*(a1 + 32), v16, *(a1 + 40), v18);
  objc_sync_exit(v5);

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2252BC970(uint64_t a1, const char *a2, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  obj = objc_msgSend_completionHandlersByItemID(*(a1 + 32), a2, a3);
  objc_sync_enter(obj);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = objc_msgSend_allItemIDs(*v4, v5, v6);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v45, v50, 16);
  if (v10)
  {
    v11 = *v46;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v14 = objc_msgSend_callbacksForItemWithID_(*(a1 + 32), v9, v13);
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v15 = v14;
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v41, v49, 16);
        if (v17)
        {
          v18 = *v42;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v42 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(a1 + 40);
              (*(*(*(&v41 + 1) + 8 * j) + 16))();
            }

            v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v21, &v41, v49, 16);
          }

          while (v17);
        }

        objc_msgSend_removeCallbacksForItemWithID_(*(a1 + 32), v22, v13);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v45, v50, 16);
    }

    while (v10);
  }

  objc_sync_exit(obj);
  v25 = objc_msgSend_completionHandler(*(a1 + 32), v23, v24);

  if (v25)
  {
    objc_msgSend_highestQOS(*(a1 + 32), v26, v27);
    v28 = CKGetGlobalQueue();
    v31 = objc_msgSend_completionHandler(*(a1 + 32), v29, v30);
    dispatch_async(v28, v31);
  }

  objc_msgSend_setIsFinished_(*(a1 + 32), v26, 1);
  v34 = objc_msgSend_domain(*(a1 + 40), v32, v33);
  if (objc_msgSend_isEqualToString_(v34, v35, *MEMORY[0x277CBBF50]))
  {
    v38 = objc_msgSend_code(*(a1 + 40), v36, v37) == 20;
  }

  else
  {
    v38 = 0;
  }

  objc_msgSend_setIsCancelled_(*(a1 + 32), v36, v38);

  v39 = *MEMORY[0x277D85DE8];
}

void sub_2252BD1D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v76 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isCancelled(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Not starting fetch because this operation has already been cancelled", buf, 2u);
    }
  }

  else
  {
    if (objc_msgSend_isFinished(*(a1 + 32), v4, v5) && objc_msgSend_isFinished(*(a1 + 32), v7, v8))
    {
      v58 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v58, v59, *(a1 + 40), *(a1 + 32), @"CKDQueuedFetch.m", 292, @"You can't restart a fetch that has already finished");
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v50 = *(a1 + 32);
      v51 = v11;
      v54 = objc_msgSend_numberOfCallbacks(v50, v52, v53);
      objc_msgSend_highestQOS(*(a1 + 32), v55, v56);
      v57 = CKStringForQOS();
      *buf = 138412802;
      v73 = v50;
      v74 = 1024;
      *v75 = v54;
      *&v75[4] = 2114;
      *&v75[6] = v57;
      _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "Starting aggregate fetch %@ with %d callbacks at QoS %{public}@", buf, 0x1Cu);
    }

    v62 = objc_opt_new();
    group = dispatch_group_create();
    v61 = objc_msgSend_container(*(a1 + 32), v12, v13);
    v16 = objc_msgSend_serverConfig(v61, v14, v15);
    v19 = objc_msgSend_containerID(v61, v17, v18);
    v21 = objc_msgSend_maxBatchSize_(v16, v20, v19);

    if (v21 <= 0)
    {
      v24 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v22, v23);
      v21 = objc_msgSend_maxBatchSize(v24, v25, v26);
    }

    v27 = objc_msgSend_allItemIDs(*(a1 + 32), v22, v23);
    v30 = objc_msgSend_count(v27, v28, v29);

    objc_initWeak(&location, *(a1 + 32));
    if (v30 >= 1)
    {
      v34 = 0;
      *&v33 = 134218240;
      v60 = v33;
      do
      {
        if (v21 >= v30 - v34)
        {
          v35 = v30 - v34;
        }

        else
        {
          v35 = v21;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v36 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = v60;
          v73 = v35;
          v74 = 2048;
          *v75 = v34;
          _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Generating a batch of %ld records from index %ld", buf, 0x16u);
        }

        v39 = objc_msgSend_allItemIDs(*(a1 + 32), v37, v38, v60);
        v41 = objc_msgSend_subarrayWithRange_(v39, v40, v34, v35);

        v42 = *(a1 + 32);
        v45 = objc_msgSend_operationQueue(v42, v43, v44);
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = sub_2252BD738;
        v67[3] = &unk_27854C648;
        v67[4] = *(a1 + 32);
        objc_copyWeak(&v70, &location);
        v68 = v62;
        v69 = group;
        objc_msgSend_createFetchOperationForItemIDs_operationQueue_operationConfigurationBlock_(v42, v46, v41, v45, v67);

        objc_destroyWeak(&v70);
        v34 += v35;
      }

      while (v34 < v30);
    }

    objc_msgSend_highestQOS(*(a1 + 32), v31, v32);
    v47 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2252BDACC;
    block[3] = &unk_2785476F0;
    objc_copyWeak(&v66, &location);
    v65 = v62;
    v48 = v62;
    dispatch_group_notify(group, v47, block);

    objc_destroyWeak(&v66);
    objc_destroyWeak(&location);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void sub_2252BD738(void **a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_highestQOS(a1[4], v4, v5);
  objc_msgSend_setQualityOfService_(v3, v7, v6);
  v10 = objc_msgSend_operationID(v3, v8, v9);
  objc_msgSend_setRunningOperationID_(a1[4], v11, v10);

  objc_initWeak(&location, v3);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2252BD890;
  v13[3] = &unk_27854A920;
  objc_copyWeak(&v16, a1 + 7);
  objc_copyWeak(&v17, &location);
  v14 = a1[5];
  v15 = a1[6];
  objc_msgSend_setCompletionBlock_(v3, v12, v13);
  dispatch_group_enter(a1[6]);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void sub_2252BD86C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2252BD890(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v19 = v4;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v26 = objc_msgSend_error(v3, v22, v23);
    if (v26)
    {
      v27 = @" with error ";
    }

    else
    {
      v27 = &stru_28385ED00;
    }

    v28 = objc_msgSend_error(v3, v24, v25);
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = &stru_28385ED00;
    }

    v31 = 138544130;
    v32 = v21;
    v33 = 2112;
    v34 = WeakRetained;
    v35 = 2114;
    v36 = v27;
    v37 = 2112;
    v38 = v30;
    _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ operation %@ finished%{public}@%@.", &v31, 0x2Au);
  }

  v7 = objc_msgSend_error(v3, v5, v6);

  if (v7)
  {
    v10 = *(a1 + 32);
    objc_sync_enter(v10);
    v11 = *(a1 + 32);
    v14 = objc_msgSend_error(v3, v12, v13);
    objc_msgSend_addObject_(v11, v15, v14);

    objc_sync_exit(v10);
  }

  v16 = objc_msgSend_initialOperation(WeakRetained, v8, v9);
  objc_msgSend_combineMetricsWithOperation_(v16, v17, v3);

  dispatch_group_leave(*(a1 + 40));
  v18 = *MEMORY[0x277D85DE8];
}

void sub_2252BDACC(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = v3;
    v13 = objc_msgSend_count(v9, v11, v12);
    v14 = @" with errors ";
    v15 = *(a1 + 32);
    if (!v13)
    {
      v14 = &stru_28385ED00;
    }

    *v16 = 138412802;
    *&v16[4] = WeakRetained;
    if (!v15)
    {
      v15 = &stru_28385ED00;
    }

    *&v16[12] = 2112;
    *&v16[14] = v14;
    v17 = 2112;
    v18 = v15;
    _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Bulk record fetch operation %@ finished%@%@.", v16, 0x20u);
  }

  v6 = objc_msgSend_firstObject(*(a1 + 32), v4, v5, *v16);
  objc_msgSend_finishFetchOperationWithError_(WeakRetained, v7, v6);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2252BE148(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setUseCachedEtags_(v3, v4, 0);
  objc_msgSend_setSkipDecryption_(v3, v5, 1);
  objc_initWeak(&location, *(a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2252BE24C;
  v9[3] = &unk_278548CC0;
  objc_copyWeak(&v10, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v6, v9);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v7, v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_2252BE22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252BE24C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_performCallbacksForItemWithID_withItem_error_(WeakRetained, v10, v8, v9, v7);
}

void sub_2252BE574(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setOnlyFetchPCSInfo_(v3, v4, 1);
  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2252BE66C;
  v8[3] = &unk_27854C698;
  objc_copyWeak(&v9, &location);
  objc_msgSend_setRecordZoneFetchedProgressBlock_(v3, v5, v8);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v6, v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_2252BE64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252BE66C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_performCallbacksForItemWithID_withItem_error_(WeakRetained, v10, v8, v9, v7);
}

uint64_t sub_2252BE754(void *a1, const char *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_participants(a1, a2, a3, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_msgSend_hasEncryptedPersonalInfo(*(*(&v12 + 1) + 8 * i), v5, v6))
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v16, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_2252BE850(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = objc_msgSend_participants(a1, v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v21, v25, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = objc_msgSend_recordID(a1, v12, v13);
        objc_msgSend__encryptPersonalInfoWithPCSBlob_inShareWithID_pcsManager_(v17, v19, a3, v18, v6);

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v21, v25, 16);
    }

    while (v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2252BE988(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = objc_msgSend_participants(a1, v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v21, v25, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = objc_msgSend_recordID(a1, v12, v13);
        objc_msgSend__decryptPersonalInfoWithPCSBlob_inShareWithID_pcsManager_(v17, v19, a3, v18, v6);

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v21, v25, 16);
    }

    while (v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2252BEAC0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v18 = v17;
    v21 = objc_msgSend_recordID(a1, v19, v20);
    *buf = 138412290;
    v35 = v21;
    _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Ingesting manatee sharing invitation data for share %@", buf, 0xCu);
  }

  objc_initWeak(buf, a1);
  v24 = objc_msgSend_pcsManager(v14, v22, v23);
  v27 = objc_msgSend_sharingInvitationData(v12, v25, v26);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2252BED04;
  v31[3] = &unk_27854C6C0;
  objc_copyWeak(&v33, buf);
  v28 = v16;
  v32 = v28;
  objc_msgSend_createIngestedPPPCSDataFromInvitationData_shareModificationDate_requestorOperationID_completionHandler_(v24, v29, v27, v13, v15, v31);

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);

  v30 = *MEMORY[0x277D85DE8];
}

void sub_2252BECD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252BED04(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_msgSend_currentUserParticipant(WeakRetained, v8, v9);
  if (v5 && !v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Setting per-participant PCS on self participant: %@", &v15, 0xCu);
    }

    objc_msgSend_setProtectionInfo_(v10, v12, v5);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2252BEEB8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_pcsManager(v6, v7, v8);
  v12 = objc_msgSend_serviceTypeForSharing(v9, v10, v11);

  v14 = objc_msgSend_dataWithShare_serviceType_(CKDSharePCSData, v13, a1, v12);
  if (objc_msgSend_invitedPCS(v14, v15, v16))
  {
    objc_msgSend_setSharePCSData_(a1, v17, v14);
    v20 = objc_msgSend_invitedPCS(v14, v18, v19);
    v23 = objc_msgSend_pcsManager(v6, v21, v22);
    objc_msgSend__encryptPersonalInfoWithPCSBlob_pcsManager_(a1, v24, v20, v23);

    v25 = dispatch_group_create();
    dispatch_group_enter(v25);
    v28 = objc_msgSend_pcsCache(v6, v26, v27);
    v31 = objc_msgSend_recordID(a1, v29, v30);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_2252BF10C;
    v40[3] = &unk_278548128;
    v40[4] = a1;
    v41 = v25;
    v32 = v25;
    objc_msgSend__setPCSData_forFetchedShareID_withScope_withCompletionHandler_(v28, v33, v14, v31, a4, v40);

    dispatch_group_wait(v32, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v36 = v34;
      v39 = objc_msgSend_recordID(a1, v37, v38);
      *buf = 138412290;
      v43 = v39;
      _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "Didn't get any pre-decrypted share PCS for share %@", buf, 0xCu);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_2252BF10C(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = v4;
    v10 = objc_msgSend_recordID(v6, v8, v9);
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v3;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Error setting PCS data for share %@ in the cache: %@", &v11, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2252BF230(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, char a7, void *a8, void *a9, void *a10)
{
  v63 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v49 = a5;
  v50 = a6;
  v16 = a8;
  v17 = a9;
  v47 = a10;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = sub_225074160;
  v58[4] = sub_22507363C;
  v59 = 0;
  if (v16)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v43 = objc_msgSend_zoneID(v16, v21, v22);
      v46 = objc_msgSend_recordID(a1, v44, v45);
      *location = 138412546;
      *&location[4] = v43;
      v61 = 2112;
      v62 = v46;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Got a shared zone %@ to prep PCS for share %@", location, 0x16u);
    }

    v24 = objc_msgSend_dataWithZone_(CKDZonePCSData, v23, v16);
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_msgSend_containerID(v15, v18, v19);
  if (objc_msgSend_specialContainerType(v25, v26, v27) == 4)
  {
    v30 = 1;
  }

  else
  {
    v31 = objc_msgSend_pcsManager(v15, v28, v29);
    IsManatee = objc_msgSend_currentServiceIsManatee(v31, v32, v33);

    if (IsManatee)
    {
      v30 = 0;
    }

    else
    {
      v30 = 2;
    }
  }

  objc_initWeak(location, a1);
  v37 = objc_msgSend_pcsManager(v15, v35, v36);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_2252BF5D4;
  v51[3] = &unk_27854C6E8;
  objc_copyWeak(v56, location);
  v55 = v58;
  v57 = a7;
  v38 = v15;
  v52 = v38;
  v56[1] = a4;
  v39 = v24;
  v53 = v39;
  v40 = v47;
  v54 = v40;
  objc_msgSend_pcsDataFromFetchedShare_withPublicSharingKey_oonPrivateKey_withServiceType_requestorOperationID_completionHandler_(v37, v41, a1, v49, v50, v30, v17, v51);

  objc_destroyWeak(v56);
  objc_destroyWeak(location);

  _Block_object_dispose(v58, 8);
  v42 = *MEMORY[0x277D85DE8];
}

void sub_2252BF588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252BF5D4(uint64_t a1, void *a2, void *a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = WeakRetained;
  if (v5 && (objc_msgSend_setSharePCSData_(WeakRetained, v8, v5), !v6))
  {
    if (*(a1 + 80) == 1)
    {
      v22 = objc_msgSend_invitedKeysToRemove(v9, v10, v11);
      if (objc_msgSend_count(v22, v23, v24))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v25 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v28 = v25;
          *buf = 134218242;
          v80 = objc_msgSend_count(v22, v29, v30);
          v81 = 2112;
          v82 = v22;
          _os_log_impl(&dword_22506F000, v28, OS_LOG_TYPE_INFO, "Need to remove %lu public key(s) from the private share PCS: %@", buf, 0x16u);
        }

        v31 = objc_msgSend_pcsManager(*(a1 + 32), v26, v27);
        v34 = objc_msgSend_invitedPCS(v5, v32, v33);
        objc_msgSend_removePublicKeys_fromPCS_(v31, v35, v22, v34);
      }
    }

    if (objc_msgSend_invitedPCS(v5, v10, v11))
    {
      v17 = objc_msgSend_recordID(v9, v36, v37);
      v40 = objc_msgSend_invitedPCS(v5, v38, v39);
      v43 = objc_msgSend_pcsManager(*(a1 + 32), v41, v42);
      objc_msgSend__encryptPersonalInfoWithPCSBlob_pcsManager_(v9, v44, v40, v43);

      v45 = dispatch_group_create();
      dispatch_group_enter(v45);
      v48 = objc_msgSend_pcsCache(*(a1 + 32), v46, v47);
      v49 = *(a1 + 72);
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = sub_2252BFB10;
      v76[3] = &unk_278548040;
      v78 = *(a1 + 56);
      v21 = v45;
      v77 = v21;
      objc_msgSend__setPCSData_forFetchedShareID_withScope_withCompletionHandler_(v48, v50, v5, v17, v49, v76);

      if (*(a1 + 40))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v51 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v80 = v17;
          _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Decrypting shared zone PCS data for share %@", buf, 0xCu);
        }

        v54 = objc_msgSend_pcsManager(*(a1 + 32), v52, v53);
        v55 = *(a1 + 40);
        v58 = objc_msgSend_invitedPCS(v5, v56, v57);
        v59 = *(*(a1 + 56) + 8);
        obj = *(v59 + 40);
        objc_msgSend_decryptSharedZonePCSData_withInvitedPCS_error_(v54, v60, v55, v58, &obj);
        objc_storeStrong((v59 + 40), obj);

        dispatch_group_enter(v21);
        v63 = objc_msgSend_pcsCache(*(a1 + 32), v61, v62);
        v64 = *(a1 + 40);
        v67 = objc_msgSend_zoneID(v17, v65, v66);
        v68 = *(a1 + 72);
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = sub_2252BFB7C;
        v72[3] = &unk_278548040;
        v74 = *(a1 + 56);
        v73 = v21;
        objc_msgSend__setPCSData_forFetchedZoneID_withScope_withCompletionHandler_(v63, v69, v64, v67, v68, v72);
      }

      dispatch_group_wait(v21, 0xFFFFFFFFFFFFFFFFLL);

      goto LABEL_25;
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
      *buf = 138412290;
      v80 = v6;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Warn: Couldn't create share PCS data: %@", buf, 0xCu);
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v15 = MEMORY[0x277CBC560];
      v16 = *MEMORY[0x277CBC120];
      v17 = objc_msgSend_recordID(v9, v13, v14);
      v19 = objc_msgSend_errorWithDomain_code_error_format_(v15, v18, v16, 5004, v6, @"Couldn't create share PCS data for share %@", v17);
      v20 = *(*(a1 + 56) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
LABEL_25:
    }
  }

  v70 = *(a1 + 48);
  if (v70)
  {
    (*(v70 + 16))(v70, *(*(*(a1 + 56) + 8) + 40) == 0);
  }

  v71 = *MEMORY[0x277D85DE8];
}

void sub_2252BFB10(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_2252BFB7C(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_2252BFBE8(void *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_encryptedPersonalInfo(a1, a2, a3);
  if (v6)
  {
    hasEncryptedPersonalInfo = 1;
  }

  else
  {
    v8 = objc_msgSend_userIdentity(a1, v4, v5);
    hasEncryptedPersonalInfo = objc_msgSend_hasEncryptedPersonalInfo(v8, v9, v10);
  }

  return hasEncryptedPersonalInfo;
}

void sub_2252BFC4C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v34[0] = @"CreatedInProcess";
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = a4;
  v13 = objc_msgSend_createdInProcess(a1, v11, v12);
  v15 = objc_msgSend_numberWithBool_(v8, v14, v13);
  v34[1] = @"ParticipantAcceptedInProcess";
  v35[0] = v15;
  v16 = MEMORY[0x277CCABB0];
  v19 = objc_msgSend_acceptedInProcess(a1, v17, v18);
  v21 = objc_msgSend_numberWithBool_(v16, v20, v19);
  v35[1] = v21;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v35, v34, 2);

  v26 = objc_msgSend_participantID(a1, v24, v25);
  v27 = sub_2252BFDD0(v23, a3, v9, v10, v26);
  objc_msgSend_setEncryptedPersonalInfo_(a1, v28, v27);

  v31 = objc_msgSend_userIdentity(a1, v29, v30);
  objc_msgSend__encryptPersonalInfoWithPCSBlob_participantID_inShareWithID_pcsManager_(v31, v32, a3, v26, v10, v9);

  v33 = *MEMORY[0x277D85DE8];
}

id sub_2252BFDD0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CCAAB0];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v9, v13, a1, 1, 0);
  v15 = objc_alloc(MEMORY[0x277CBC2E8]);
  v17 = objc_msgSend_initWithData_(v15, v16, v14);
  v18 = [CKDWrappingContext alloc];
  v20 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v18, v19, v11, v10, 0, 0, 0);

  v22 = objc_msgSend_wrapEncryptedData_withPCS_inContext_(v12, v21, v17, a2, v20);

  if (v22)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v25 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v29 = 138412290;
      v30 = v22;
      _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Couldn't encrypt participant properties %@", &v29, 0xCu);
    }
  }

  v26 = objc_msgSend_encryptedData(v17, v23, v24);

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void sub_2252BFFA8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v32 = a4;
  v8 = a5;
  v11 = objc_msgSend_participantID(a1, v9, v10);
  v14 = objc_msgSend_encryptedPersonalInfo(a1, v12, v13);
  v15 = sub_2252C00F4(v14, a3, v8, v32, v11);

  if (v15)
  {
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"CreatedInProcess");
    v21 = v18;
    if (v18)
    {
      v22 = objc_msgSend_BOOLValue(v18, v19, v20);
      objc_msgSend_setCreatedInProcess_(a1, v23, v22);
    }

    v24 = objc_msgSend_objectForKeyedSubscript_(v15, v19, @"ParticipantAcceptedInProcess");
    v27 = v24;
    if (v24)
    {
      v28 = objc_msgSend_BOOLValue(v24, v25, v26);
      objc_msgSend_setAcceptedInProcess_(a1, v29, v28);
    }
  }

  v30 = objc_msgSend_userIdentity(a1, v16, v17);
  objc_msgSend__decryptPersonalInfoWithPCSBlob_participantID_inShareWithID_pcsManager_(v30, v31, a3, v11, v32, v8);
}

id sub_2252C00F4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v9)
  {
    v13 = objc_alloc(MEMORY[0x277CBC2E8]);
    v15 = objc_msgSend_initWithEncryptedData_(v13, v14, v9);
    v16 = [CKDWrappingContext alloc];
    v18 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v16, v17, v11, v12, 0, 0, 0);
    v22 = objc_msgSend_unwrapEncryptedData_withPCS_inContext_(v10, v19, v15, a2, v18);
    if (v22)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v46 = v22;
        _os_log_error_impl(&dword_22506F000, v23, OS_LOG_TYPE_ERROR, "Couldn't decrypt participant properties %@", buf, 0xCu);
      }
    }

    else
    {
      v24 = objc_msgSend_data(v15, v20, v21);
      if (v24)
      {
        v44 = v18;
        v42 = objc_alloc(MEMORY[0x277CBEB98]);
        v25 = objc_opt_class();
        v26 = v24;
        v27 = objc_opt_class();
        v28 = objc_opt_class();
        v29 = objc_opt_class();
        v40 = v27;
        v24 = v26;
        v31 = objc_msgSend_initWithObjects_(v42, v30, v25, v40, v28, v29, 0);
        v33 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x277CCAAC8], v32, v31, v24, 0);
        if (v33)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            goto LABEL_22;
          }
        }

        v43 = v31;
        v18 = v44;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v34 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          if (v33)
          {
            v39 = objc_opt_class();
            v38 = NSStringFromClass(v39);
          }

          else
          {
            v38 = @"nil";
          }

          *buf = 138543362;
          v41 = v38;
          v46 = v38;
          _os_log_error_impl(&dword_22506F000, v34, OS_LOG_TYPE_ERROR, "Decrypted PII was of unexpected class %{public}@", buf, 0xCu);
          if (v33)
          {
          }
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v35 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22506F000, v35, OS_LOG_TYPE_ERROR, "Decrypted PII was empty", buf, 2u);
        }
      }
    }
  }

  v33 = 0;
LABEL_22:

  v36 = *MEMORY[0x277D85DE8];

  return v33;
}

uint64_t sub_2252C04DC(void *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_encryptedPersonalInfo(a1, a2, a3);
  if (v6)
  {
    hasEncryptedPersonalInfo = 1;
  }

  else
  {
    v8 = objc_msgSend_lookupInfo(a1, v4, v5);
    hasEncryptedPersonalInfo = objc_msgSend_hasEncryptedPersonalInfo(v8, v9, v10);
  }

  return hasEncryptedPersonalInfo;
}

void sub_2252C0540(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v23 = objc_opt_new();
  v16 = objc_msgSend_nameComponents(a1, v13, v14);
  if (v16)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v23, v15, v16, @"NameComponents");
  }

  v17 = sub_2252BFDD0(v23, a3, v10, v11, v12);
  objc_msgSend_setEncryptedPersonalInfo_(a1, v18, v17);

  v21 = objc_msgSend_lookupInfo(a1, v19, v20);
  objc_msgSend__encryptPersonalInfoWithPCSBlob_participantID_inShareWithID_pcsManager_(v21, v22, a3, v12, v11, v10);
}

void sub_2252C065C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v22 = a4;
  v10 = a5;
  v11 = a6;
  v14 = objc_msgSend_encryptedPersonalInfo(a1, v12, v13);
  v15 = sub_2252C00F4(v14, a3, v11, v10, v22);

  if (v15)
  {
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"NameComponents");
    objc_msgSend_setNameComponents_(a1, v19, v18);
  }

  v20 = objc_msgSend_lookupInfo(a1, v16, v17);
  objc_msgSend__decryptPersonalInfoWithPCSBlob_participantID_inShareWithID_pcsManager_(v20, v21, a3, v22, v10, v11);
}

BOOL sub_2252C075C(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_encryptedPersonalInfo(a1, a2, a3);
  v4 = v3 != 0;

  return v4;
}

void sub_2252C0790(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v22 = a4;
  v10 = a5;
  v11 = a6;
  v12 = objc_opt_new();
  v17 = objc_msgSend_emailAddress(a1, v13, v14);
  if (v17)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v15, v17, @"Email");
  }

  v19 = objc_msgSend_phoneNumber(a1, v15, v16);
  if (v19)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v18, v19, @"Phone");
  }

  v20 = sub_2252BFDD0(v12, a3, v11, v10, v22);
  objc_msgSend_setEncryptedPersonalInfo_(a1, v21, v20);
}

void sub_2252C08AC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v15 = objc_msgSend_encryptedPersonalInfo(a1, v13, v14);
  v25 = sub_2252C00F4(v15, a3, v10, v11, v12);

  v17 = objc_msgSend_objectForKeyedSubscript_(v25, v16, @"Email");

  if (v17)
  {
    v19 = objc_msgSend_objectForKeyedSubscript_(v25, v18, @"Email");
    objc_msgSend_setEmailAddress_(a1, v20, v19);
  }

  v21 = objc_msgSend_objectForKeyedSubscript_(v25, v18, @"Phone");

  if (v21)
  {
    v23 = objc_msgSend_objectForKeyedSubscript_(v25, v22, @"Phone");
    objc_msgSend_setPhoneNumber_(a1, v24, v23);
  }
}

BOOL sub_2252C09E8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_encryptedData(a1, a2, a3);
  v4 = v3 != 0;

  return v4;
}

void sub_2252C0A1C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v9 = objc_msgSend_share(a1, v7, v8);
  v12 = objc_msgSend_recordID(v9, v10, v11);

  v27 = @"AcceptedInProcess";
  v13 = MEMORY[0x277CCABB0];
  v16 = objc_msgSend_acceptedInProcess(a1, v14, v15);
  v18 = objc_msgSend_numberWithBool_(v13, v17, v16);
  v28[0] = v18;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v28, &v27, 1);

  v23 = objc_msgSend_recordName(v12, v21, v22);
  v24 = sub_2252BFDD0(v20, a3, v6, v12, v23);

  objc_msgSend_setEncryptedData_(a1, v25, v24);
  v26 = *MEMORY[0x277D85DE8];
}

void sub_2252C0B54(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v9 = objc_msgSend_share(a1, v7, v8);
  v26 = objc_msgSend_recordID(v9, v10, v11);

  v14 = objc_msgSend_encryptedData(a1, v12, v13);
  v17 = objc_msgSend_recordName(v26, v15, v16);
  v18 = sub_2252C00F4(v14, a3, v6, v26, v17);

  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"AcceptedInProcess");
  v23 = v20;
  if (v20)
  {
    v24 = objc_msgSend_BOOLValue(v20, v21, v22);
    objc_msgSend_setAcceptedInProcess_(a1, v25, v24);
  }
}

uint64_t sub_2252C3AA4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v122 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v122, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v122 & 0x7F) << v10;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 2)
      {
        break;
      }

      if (v32 != 3)
      {
        if (v32 == 4)
        {
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            v124 = 0;
            v79 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v79 >= objc_msgSend_position(a2, v80, v81) && (v84 = objc_msgSend_position(a2, v82, v83) + 1, v84 <= objc_msgSend_length(a2, v85, v86)))
            {
              v87 = objc_msgSend_data(a2, v82, v83);
              v90 = objc_msgSend_position(a2, v88, v89);
              objc_msgSend_getBytes_range_(v87, v91, &v124, v90, 1);

              v94 = objc_msgSend_position(a2, v92, v93);
              objc_msgSend_setPosition_(a2, v95, v94 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v82, v83);
            }

            v78 |= (v124 & 0x7F) << v76;
            if ((v124 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v30 = v77++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_65;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v78;
          }

LABEL_65:
          v118 = 24;
        }

        else
        {
          if (v32 != 5)
          {
            goto LABEL_60;
          }

          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v126 = 0;
            v36 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v126, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v126 & 0x7F) << v33;
            if ((v126 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_71;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_71:
          v118 = 8;
        }

LABEL_76:
        *(a1 + v118) = v53;
        goto LABEL_77;
      }

      v74 = PBReaderReadString();
      v75 = *(a1 + 32);
      *(a1 + 32) = v74;

LABEL_77:
      v119 = objc_msgSend_position(a2, v32, v9);
      if (v119 >= objc_msgSend_length(a2, v120, v121))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 1)
    {
      v96 = 0;
      v97 = 0;
      v98 = 0;
      *(a1 + 44) |= 8u;
      while (1)
      {
        v123 = 0;
        v99 = objc_msgSend_position(a2, v32, v9) + 1;
        if (v99 >= objc_msgSend_position(a2, v100, v101) && (v104 = objc_msgSend_position(a2, v102, v103) + 1, v104 <= objc_msgSend_length(a2, v105, v106)))
        {
          v107 = objc_msgSend_data(a2, v102, v103);
          v110 = objc_msgSend_position(a2, v108, v109);
          objc_msgSend_getBytes_range_(v107, v111, &v123, v110, 1);

          v114 = objc_msgSend_position(a2, v112, v113);
          objc_msgSend_setPosition_(a2, v115, v114 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v102, v103);
        }

        v98 |= (v123 & 0x7F) << v96;
        if ((v123 & 0x80) == 0)
        {
          break;
        }

        v96 += 7;
        v30 = v97++ >= 9;
        if (v30)
        {
          LOBYTE(v116) = 0;
          goto LABEL_67;
        }
      }

      v116 = (v98 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_67:
      *(a1 + 40) = v116;
      goto LABEL_77;
    }

    if (v32 != 2)
    {
LABEL_60:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_77;
    }

    v54 = 0;
    v55 = 0;
    v56 = 0;
    *(a1 + 44) |= 2u;
    while (1)
    {
      v125 = 0;
      v57 = objc_msgSend_position(a2, v32, v9) + 1;
      if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
      {
        v65 = objc_msgSend_data(a2, v60, v61);
        v68 = objc_msgSend_position(a2, v66, v67);
        objc_msgSend_getBytes_range_(v65, v69, &v125, v68, 1);

        v72 = objc_msgSend_position(a2, v70, v71);
        objc_msgSend_setPosition_(a2, v73, v72 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v60, v61);
      }

      v56 |= (v125 & 0x7F) << v54;
      if ((v125 & 0x80) == 0)
      {
        break;
      }

      v54 += 7;
      v30 = v55++ >= 9;
      if (v30)
      {
        v53 = 0;
        goto LABEL_75;
      }
    }

    if (objc_msgSend_hasError(a2, v32, v9))
    {
      v53 = 0;
    }

    else
    {
      v53 = v56;
    }

LABEL_75:
    v118 = 16;
    goto LABEL_76;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C4A74(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v61[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v61[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61[0] & 0x7F) << v10;
        if ((v61[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v39 = objc_msgSend_position(a2, v32, v9, v61[0]) + 1;
          if (v39 >= objc_msgSend_position(a2, v40, v41) && (v44 = objc_msgSend_position(a2, v42, v43) + 1, v44 <= objc_msgSend_length(a2, v45, v46)))
          {
            v47 = objc_msgSend_data(a2, v42, v43);
            v50 = objc_msgSend_position(a2, v48, v49);
            objc_msgSend_getBytes_range_(v47, v51, v61, v50, 1);

            v54 = objc_msgSend_position(a2, v52, v53);
            objc_msgSend_setPosition_(a2, v55, v54 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v42, v43);
          }

          v38 |= (v61[0] & 0x7F) << v36;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v30 = v37++ >= 9;
          if (v30)
          {
            v56 = 0;
            goto LABEL_36;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v56 = 0;
        }

        else
        {
          v56 = v38;
        }

LABEL_36:
        *(a1 + 8) = v56;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKCDPCodeServiceRequestAssetAuthorizeGetRequestOptionsHeaderInfo);
        objc_msgSend_addContentRequestHeaders_(a1, v34, v33);
        v61[0] = 0;
        v61[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252C54F8(v33, a2, v35))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C54F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKCDPCodeServiceRequestAssetAuthorizeGetRequestOptionsHeaderInfo__headerValue;
LABEL_21:
        v33 = PBReaderReadString();
        v34 = *v32;
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = &OBJC_IVAR___CKCDPCodeServiceRequestAssetAuthorizeGetRequestOptionsHeaderInfo__headerKey;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C5B84(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadData();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C5FF0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C66B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v60[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v60[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60[0] & 0x7F) << v10;
        if ((v60[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v54 = objc_alloc_init(CKCDPCodeServiceRequestServiceClientConfig);
        objc_storeStrong((a1 + 8), v54);
        v60[0] = 0;
        v60[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252CB130(v54, a2, v55))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v32 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v60[0]) = 0;
          v36 = objc_msgSend_position(a2, v32, v9, v60[0]) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, v60, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v60[0] & 0x7F) << v33;
          if ((v60[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_36;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v53 = 0;
        }

        else
        {
          v53 = v35;
        }

LABEL_36:
        *(a1 + 16) = v53;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v56 = objc_msgSend_position(a2, v32, v9);
    }

    while (v56 < objc_msgSend_length(a2, v57, v58));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C71FC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v79 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v79, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v79 & 0x7F) << v10;
        if ((v79 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        objc_msgSend_clearOneofValuesForIdentifier(a1, v32, v9);
        *(a1 + 32) |= 2u;
        *(a1 + 16) = 2;
        v73 = PBReaderReadString();
        v74 = *(a1 + 24);
        *(a1 + 24) = v73;
      }

      else if (v32 == 1)
      {
        objc_msgSend_clearOneofValuesForIdentifier(a1, v32, v9);
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 32) |= 2u;
        *(a1 + 16) = 1;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v81 = 0;
          v55 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v55 >= objc_msgSend_position(a2, v56, v57) && (v60 = objc_msgSend_position(a2, v58, v59) + 1, v60 <= objc_msgSend_length(a2, v61, v62)))
          {
            v63 = objc_msgSend_data(a2, v58, v59);
            v66 = objc_msgSend_position(a2, v64, v65);
            objc_msgSend_getBytes_range_(v63, v67, &v81, v66, 1);

            v70 = objc_msgSend_position(a2, v68, v69);
            objc_msgSend_setPosition_(a2, v71, v70 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v58, v59);
          }

          v54 |= (v81 & 0x7F) << v52;
          if ((v81 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v30 = v53++ >= 9;
          if (v30)
          {
            v72 = 0;
            goto LABEL_44;
          }
        }

        v72 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v54;
LABEL_44:
        *(a1 + 8) = v72;
      }

      else if (v32)
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v33 = 0;
        while (1)
        {
          v80 = 0;
          v34 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v34 >= objc_msgSend_position(a2, v35, v36) && (v39 = objc_msgSend_position(a2, v37, v38) + 1, v39 <= objc_msgSend_length(a2, v40, v41)))
          {
            v42 = objc_msgSend_data(a2, v37, v38);
            v45 = objc_msgSend_position(a2, v43, v44);
            objc_msgSend_getBytes_range_(v42, v46, &v80, v45, 1);

            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_setPosition_(a2, v50, v49 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v37, v38);
          }

          if ((v80 & 0x80000000) == 0)
          {
            break;
          }

          if (v33++ > 8)
          {
            goto LABEL_46;
          }
        }

        objc_msgSend_hasError(a2, v32, v9);
      }

LABEL_46:
      v76 = objc_msgSend_position(a2, v32, v9);
    }

    while (v76 < objc_msgSend_length(a2, v77, v78));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C7C2C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v61 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61 & 0x7F) << v10;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 2)
      {
        break;
      }

      if (v32 == 3)
      {
        v33 = PBReaderReadString();
        v34 = 24;
LABEL_36:
        v57 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_41;
      }

      if (v32 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v62 = 0;
        v38 = objc_msgSend_position(a2, v32, v9) + 1;
        if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
        {
          v46 = objc_msgSend_data(a2, v41, v42);
          v49 = objc_msgSend_position(a2, v47, v48);
          objc_msgSend_getBytes_range_(v46, v50, &v62, v49, 1);

          v53 = objc_msgSend_position(a2, v51, v52);
          objc_msgSend_setPosition_(a2, v54, v53 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v41, v42);
        }

        v37 |= (v62 & 0x7F) << v35;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v35 += 7;
        v30 = v36++ >= 9;
        if (v30)
        {
          v55 = 0;
          goto LABEL_40;
        }
      }

      if (objc_msgSend_hasError(a2, v32, v9))
      {
        v55 = 0;
      }

      else
      {
        v55 = v37;
      }

LABEL_40:
      *(a1 + 8) = v55;
LABEL_41:
      v58 = objc_msgSend_position(a2, v32, v9);
      if (v58 >= objc_msgSend_length(a2, v59, v60))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 1)
    {
      v33 = PBReaderReadString();
      v34 = 32;
    }

    else
    {
      if (v32 != 2)
      {
        goto LABEL_32;
      }

      v33 = PBReaderReadString();
      v34 = 16;
    }

    goto LABEL_36;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C87C0(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKCDPCodeServiceRequestProtectedCloudComputeMetadataCryptoSession);
        objc_msgSend_addCryptoSessions_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252C8F90(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C8F90(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadData();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C9B00(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v127) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v127) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v127, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v127 & 0x7F) << v10;
        if ((v127 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 7)
      {
        if (v32 > 10)
        {
          switch(v32)
          {
            case 0xB:
              v97 = objc_alloc_init(CKCDPCodeServiceRequestOperationGroup);
              objc_storeStrong((a1 + 72), v97);
              v127 = 0;
              v128 = 0;
              if (!PBReaderPlaceMark() || !sub_2252C7C2C(v97, a2, v98))
              {
LABEL_100:

                return 0;
              }

              goto LABEL_80;
            case 0xC:
              v97 = objc_alloc_init(CKCDPCodeServiceRequestDatabaseOwner);
              objc_storeStrong((a1 + 48), v97);
              v127 = 0;
              v128 = 0;
              if (!PBReaderPlaceMark() || !sub_2252C71FC(v97, a2, v121))
              {
                goto LABEL_100;
              }

LABEL_80:
              PBReaderRecallMark();

              goto LABEL_98;
            case 0x10:
              v56 = 0;
              v57 = 0;
              v58 = 0;
              *(a1 + 100) |= 8u;
              while (1)
              {
                LOBYTE(v127) = 0;
                v59 = objc_msgSend_position(a2, v32, v9, v127) + 1;
                if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
                {
                  v67 = objc_msgSend_data(a2, v62, v63);
                  v70 = objc_msgSend_position(a2, v68, v69);
                  objc_msgSend_getBytes_range_(v67, v71, &v127, v70, 1);

                  v74 = objc_msgSend_position(a2, v72, v73);
                  objc_msgSend_setPosition_(a2, v75, v74 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v62, v63);
                }

                v58 |= (v127 & 0x7F) << v56;
                if ((v127 & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                v30 = v57++ >= 9;
                if (v30)
                {
                  LOBYTE(v76) = 0;
                  goto LABEL_88;
                }
              }

              v76 = (v58 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_88:
              *(a1 + 96) = v76;
              goto LABEL_98;
          }
        }

        else
        {
          switch(v32)
          {
            case 8:
              v54 = PBReaderReadString();
              v55 = 24;
              goto LABEL_77;
            case 9:
              v99 = 0;
              v100 = 0;
              v101 = 0;
              *(a1 + 100) |= 1u;
              while (1)
              {
                LOBYTE(v127) = 0;
                v102 = objc_msgSend_position(a2, v32, v9, v127) + 1;
                if (v102 >= objc_msgSend_position(a2, v103, v104) && (v107 = objc_msgSend_position(a2, v105, v106) + 1, v107 <= objc_msgSend_length(a2, v108, v109)))
                {
                  v110 = objc_msgSend_data(a2, v105, v106);
                  v113 = objc_msgSend_position(a2, v111, v112);
                  objc_msgSend_getBytes_range_(v110, v114, &v127, v113, 1);

                  v117 = objc_msgSend_position(a2, v115, v116);
                  objc_msgSend_setPosition_(a2, v118, v117 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v105, v106);
                }

                v101 |= (v127 & 0x7F) << v99;
                if ((v127 & 0x80) == 0)
                {
                  break;
                }

                v99 += 7;
                v30 = v100++ >= 9;
                if (v30)
                {
                  v119 = 0;
                  goto LABEL_97;
                }
              }

              if (objc_msgSend_hasError(a2, v32, v9))
              {
                v119 = 0;
              }

              else
              {
                v119 = v101;
              }

LABEL_97:
              *(a1 + 8) = v119;
              goto LABEL_98;
            case 0xA:
              v54 = PBReaderReadString();
              v55 = 80;
LABEL_77:
              v120 = *(a1 + v55);
              *(a1 + v55) = v54;

              goto LABEL_98;
          }
        }
      }

      else if (v32 > 3)
      {
        switch(v32)
        {
          case 4:
            v77 = 0;
            v78 = 0;
            v79 = 0;
            *(a1 + 100) |= 4u;
            while (1)
            {
              LOBYTE(v127) = 0;
              v80 = objc_msgSend_position(a2, v32, v9, v127) + 1;
              if (v80 >= objc_msgSend_position(a2, v81, v82) && (v85 = objc_msgSend_position(a2, v83, v84) + 1, v85 <= objc_msgSend_length(a2, v86, v87)))
              {
                v88 = objc_msgSend_data(a2, v83, v84);
                v91 = objc_msgSend_position(a2, v89, v90);
                objc_msgSend_getBytes_range_(v88, v92, &v127, v91, 1);

                v95 = objc_msgSend_position(a2, v93, v94);
                objc_msgSend_setPosition_(a2, v96, v95 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v83, v84);
              }

              v79 |= (v127 & 0x7F) << v77;
              if ((v127 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              v30 = v78++ >= 9;
              if (v30)
              {
                v53 = 0;
                goto LABEL_92;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v53 = 0;
            }

            else
            {
              v53 = v79;
            }

LABEL_92:
            v122 = 56;
            goto LABEL_93;
          case 5:
            v54 = PBReaderReadString();
            v55 = 64;
            goto LABEL_77;
          case 6:
            v54 = PBReaderReadString();
            v55 = 16;
            goto LABEL_77;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v54 = PBReaderReadString();
            v55 = 88;
            goto LABEL_77;
          case 2:
            v54 = PBReaderReadString();
            v55 = 32;
            goto LABEL_77;
          case 3:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 100) |= 2u;
            while (1)
            {
              LOBYTE(v127) = 0;
              v36 = objc_msgSend_position(a2, v32, v9, v127) + 1;
              if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
              {
                v44 = objc_msgSend_data(a2, v39, v40);
                v47 = objc_msgSend_position(a2, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v127, v47, 1);

                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_setPosition_(a2, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v39, v40);
              }

              v35 |= (v127 & 0x7F) << v33;
              if ((v127 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                v53 = 0;
                goto LABEL_86;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v53 = 0;
            }

            else
            {
              v53 = v35;
            }

LABEL_86:
            v122 = 40;
LABEL_93:
            *(a1 + v122) = v53;
            goto LABEL_98;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_98:
      v123 = objc_msgSend_position(a2, v32, v9);
    }

    while (v123 < objc_msgSend_length(a2, v124, v125));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252CB130(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v60 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v61 = 0;
          v38 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v61, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v61 & 0x7F) << v35;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_34;
          }
        }

        v55 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v37;
LABEL_34:
        *(a1 + 16) = v55;
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = *(a1 + 8);
        *(a1 + 8) = v33;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252CC958(char *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v44[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v44[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v44, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v44[0] & 0x7F) << v10;
        if ((v44[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 == 2)
      {
        v33 = PBReaderReadData();
        v34 = 8;
LABEL_22:
        v35 = *&a1[v34];
        *&a1[v34] = v33;
LABEL_26:

        goto LABEL_28;
      }

      if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = 24;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v40 = objc_msgSend_position(a2, v38, v39);
      if (v40 >= objc_msgSend_length(a2, v41, v42))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v35 = objc_alloc_init(CKCDPCodeServiceResponseAssetAuthorizationResponseHeaderInfo);
    objc_msgSend_addResponseHeaders_(a1, v36, v35);
    v44[0] = 0;
    v44[1] = 0;
    if (!PBReaderPlaceMark() || !sub_2252CD3B8(v35, a2, v37))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252CD3B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKCDPCodeServiceResponseAssetAuthorizationResponseHeaderInfo__headerValue;
LABEL_21:
        v33 = PBReaderReadString();
        v34 = *v32;
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = &OBJC_IVAR___CKCDPCodeServiceResponseAssetAuthorizationResponseHeaderInfo__headerKey;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252CDC0C(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKCDPCodeServiceResponseAttestationResponseAttestation);
        objc_msgSend_addAttestations_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252CE484(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252CE484(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v43 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = PBReaderReadString();
          v34 = &OBJC_IVAR___CKCDPCodeServiceResponseAttestationResponseAttestation__pckCertificate;
          goto LABEL_28;
        }

        if (v32 == 4)
        {
          v33 = PBReaderReadData();
          v34 = &OBJC_IVAR___CKCDPCodeServiceResponseAttestationResponseAttestation__routingToken;
          goto LABEL_28;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = PBReaderReadData();
          v34 = &OBJC_IVAR___CKCDPCodeServiceResponseAttestationResponseAttestation__appQuote;
          goto LABEL_28;
        }

        if (v32 == 2)
        {
          v33 = PBReaderReadData();
          v34 = &OBJC_IVAR___CKCDPCodeServiceResponseAttestationResponseAttestation__aqeQuote;
LABEL_28:
          v37 = *v34;
          v38 = *(a1 + v37);
          *(a1 + v37) = v33;

          goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v39 = objc_msgSend_position(a2, v35, v36);
    }

    while (v39 < objc_msgSend_length(a2, v40, v41));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252CF2C0(_BYTE *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v105[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v105[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v105, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v105[0] & 0x7F) << v10;
        if ((v105[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 3)
      {
        break;
      }

      if (v32 == 4)
      {
        v76 = 0;
        v77 = 0;
        v78 = 0;
        a1[52] |= 1u;
        while (1)
        {
          LOBYTE(v105[0]) = 0;
          v79 = objc_msgSend_position(a2, v32, v9, v105[0]) + 1;
          if (v79 >= objc_msgSend_position(a2, v80, v81) && (v84 = objc_msgSend_position(a2, v82, v83) + 1, v84 <= objc_msgSend_length(a2, v85, v86)))
          {
            v87 = objc_msgSend_data(a2, v82, v83);
            v90 = objc_msgSend_position(a2, v88, v89);
            objc_msgSend_getBytes_range_(v87, v91, v105, v90, 1);

            v94 = objc_msgSend_position(a2, v92, v93);
            objc_msgSend_setPosition_(a2, v95, v94 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v82, v83);
          }

          v78 |= (v105[0] & 0x7F) << v76;
          if ((v105[0] & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v30 = v77++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_66;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v78;
        }

LABEL_66:
        v100 = 8;
        goto LABEL_71;
      }

      if (v32 != 5)
      {
        if (v32 == 6)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          a1[52] |= 4u;
          while (1)
          {
            LOBYTE(v105[0]) = 0;
            v38 = objc_msgSend_position(a2, v32, v9, v105[0]) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, v105, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v105[0] & 0x7F) << v35;
            if ((v105[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              v55 = 0;
              goto LABEL_70;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v55 = 0;
          }

          else
          {
            v55 = v37;
          }

LABEL_70:
          v100 = 48;
          goto LABEL_71;
        }

LABEL_52:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_72;
      }

      v97 = objc_alloc_init(CKCDPErrorUserInfoEntry);
      objc_msgSend_addAuxiliaryUserInfo_(a1, v98, v97);
      v105[0] = 0;
      v105[1] = 0;
      if (!PBReaderPlaceMark() || !sub_2252D037C(v97, a2, v99))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_72:
      v101 = objc_msgSend_position(a2, v32, v9);
      if (v101 >= objc_msgSend_length(a2, v102, v103))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    switch(v32)
    {
      case 1:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        a1[52] |= 2u;
        while (1)
        {
          LOBYTE(v105[0]) = 0;
          v59 = objc_msgSend_position(a2, v32, v9, v105[0]) + 1;
          if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
          {
            v67 = objc_msgSend_data(a2, v62, v63);
            v70 = objc_msgSend_position(a2, v68, v69);
            objc_msgSend_getBytes_range_(v67, v71, v105, v70, 1);

            v74 = objc_msgSend_position(a2, v72, v73);
            objc_msgSend_setPosition_(a2, v75, v74 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v62, v63);
          }

          v58 |= (v105[0] & 0x7F) << v56;
          if ((v105[0] & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v30 = v57++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_62;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v58;
        }

LABEL_62:
        v100 = 32;
LABEL_71:
        *&a1[v100] = v55;
        goto LABEL_72;
      case 2:
        v33 = PBReaderReadString();
        v34 = 40;
        goto LABEL_55;
      case 3:
        v33 = PBReaderReadString();
        v34 = 16;
LABEL_55:
        v96 = *&a1[v34];
        *&a1[v34] = v33;

        goto LABEL_72;
    }

    goto LABEL_52;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252D037C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKCDPErrorUserInfoValue);
    objc_storeStrong((a1 + 16), v33);
    v41[0] = 0;
    v41[1] = 0;
    if (!PBReaderPlaceMark() || !sub_2252D111C(v33, a2, v34))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252D111C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v121 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v121, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v121 & 0x7F) << v10;
        if ((v121 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 48) |= 4u;
          *(a1 + 40) = 3;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v124 = 0;
            v78 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v78 >= objc_msgSend_position(a2, v79, v80) && (v83 = objc_msgSend_position(a2, v81, v82) + 1, v83 <= objc_msgSend_length(a2, v84, v85)))
            {
              v86 = objc_msgSend_data(a2, v81, v82);
              v89 = objc_msgSend_position(a2, v87, v88);
              objc_msgSend_getBytes_range_(v86, v90, &v124, v89, 1);

              v93 = objc_msgSend_position(a2, v91, v92);
              objc_msgSend_setPosition_(a2, v94, v93 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v81, v82);
            }

            v77 |= (v124 & 0x7F) << v75;
            if ((v124 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v30 = v76++ >= 9;
            if (v30)
            {
              LOBYTE(v95) = 0;
              goto LABEL_61;
            }
          }

          v95 = (v77 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_61:
          *(a1 + 44) = v95;
        }

        else
        {
          if (v32 == 4)
          {
            objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
            *(a1 + 48) |= 4u;
            *(a1 + 40) = 4;
            v54 = PBReaderReadString();
            v55 = 32;
          }

          else
          {
            if (v32 != 5)
            {
LABEL_52:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_68;
            }

            objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
            *(a1 + 48) |= 4u;
            *(a1 + 40) = 5;
            v54 = PBReaderReadData();
            v55 = 24;
          }

          v107 = *(a1 + v55);
          *(a1 + v55) = v54;
        }
      }

      else if (v32)
      {
        if (v32 == 1)
        {
          objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
          *(a1 + 48) |= 4u;
          *(a1 + 40) = 1;
          *(a1 + 48) |= 1u;
          v120 = 0;
          v99 = objc_msgSend_position(a2, v97, v98) + 8;
          if (v99 >= objc_msgSend_position(a2, v100, v101) && (v104 = objc_msgSend_position(a2, v102, v103) + 8, v104 <= objc_msgSend_length(a2, v105, v106)))
          {
            v108 = objc_msgSend_data(a2, v102, v103);
            v111 = objc_msgSend_position(a2, v109, v110);
            objc_msgSend_getBytes_range_(v108, v112, &v120, v111, 8);

            v115 = objc_msgSend_position(a2, v113, v114);
            objc_msgSend_setPosition_(a2, v116, v115 + 8);
          }

          else
          {
            objc_msgSend__setError(a2, v102, v103);
          }

          *(a1 + 8) = v120;
        }

        else
        {
          if (v32 != 2)
          {
            goto LABEL_52;
          }

          objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 48) |= 4u;
          *(a1 + 40) = 2;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v123 = 0;
            v36 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v123, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v123 & 0x7F) << v33;
            if ((v123 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_65;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_65:
          *(a1 + 16) = v53;
        }
      }

      else
      {
        v56 = 0;
        while (1)
        {
          v122 = 0;
          v57 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
          {
            v65 = objc_msgSend_data(a2, v60, v61);
            v68 = objc_msgSend_position(a2, v66, v67);
            objc_msgSend_getBytes_range_(v65, v69, &v122, v68, 1);

            v72 = objc_msgSend_position(a2, v70, v71);
            objc_msgSend_setPosition_(a2, v73, v72 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v60, v61);
          }

          if ((v122 & 0x80000000) == 0)
          {
            break;
          }

          if (v56++ > 8)
          {
            goto LABEL_68;
          }
        }

        objc_msgSend_hasError(a2, v32, v9);
      }

LABEL_68:
      v117 = objc_msgSend_position(a2, v32, v9);
    }

    while (v117 < objc_msgSend_length(a2, v118, v119));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}