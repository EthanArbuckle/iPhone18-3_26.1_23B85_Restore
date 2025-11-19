void sub_22520632C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v58 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_uploadCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = *(v3 + 40);
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v53, v57, 16);
    if (v47)
    {
      v45 = *v54;
      v46 = v3;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v54 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v53 + 1) + 8 * i);
          v10 = objc_msgSend_uploadCompletionBlock(*(v3 + 32), v6, v7);
          v52 = *(v3 + 48);
          v13 = objc_msgSend_recordKey(v9, v11, v12);
          v51 = objc_msgSend_arrayIndex(v9, v14, v15);
          v18 = objc_msgSend_signature(v9, v16, v17);
          v50 = objc_msgSend_size(v9, v19, v20);
          v49 = objc_msgSend_paddedFileSize(v9, v21, v22);
          if (objc_msgSend_shouldOnlySaveAssetContent(*(v3 + 32), v23, v24))
          {
            v48 = objc_msgSend_uploaded(v9, v25, v26);
          }

          else
          {
            v48 = 0;
          }

          shouldOnlySaveAssetContent = objc_msgSend_shouldOnlySaveAssetContent(*(v3 + 32), v25, v26);
          if (shouldOnlySaveAssetContent)
          {
            v30 = objc_msgSend_uploadReceipt(v9, v27, v28);
            v44 = v30;
          }

          else
          {
            v30 = 0;
          }

          v33 = 0.0;
          if (objc_msgSend_shouldOnlySaveAssetContent(*(v3 + 32), v27, v28))
          {
            objc_msgSend_uploadReceiptExpiration(v9, v31, v32);
            v33 = v34;
          }

          v35 = objc_msgSend_wrappedAssetKey(v9, v31, v32);
          v38 = objc_msgSend_clearAssetKey(v9, v36, v37);
          v41 = objc_msgSend_referenceSignature(v9, v39, v40);
          (v10)[2](v10, v52, v13, v51, v18, v50, v49, v48, v33, v30, v35, v38, v41, 0);

          if (shouldOnlySaveAssetContent)
          {
          }

          v3 = v46;
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v53, v57, 16);
      }

      while (v47);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void sub_2252065A4(void **a1)
{
  v45 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v11 = a1[4];
      v12 = v8;
      v15 = objc_msgSend_operationID(v11, v13, v14);
      v18 = objc_msgSend_error(WeakRetained, v16, v17);
      *buf = 138543618;
      v42 = v15;
      v43 = 2112;
      v44 = v18;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Failed to upload assets for operation %{public}@: %@", buf, 0x16u);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = objc_msgSend_objectEnumerator(a1[5], v9, v10, 0);
    v22 = objc_msgSend_allObjects(v19, v20, v21);

    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v36, v40, 16);
    if (v24)
    {
      v26 = v24;
      v27 = *v37;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(v22);
          }

          v29 = *(*(&v36 + 1) + 8 * i);
          objc_msgSend_setState_(v29, v25, 12);
          v32 = objc_msgSend_error(WeakRetained, v30, v31);
          objc_msgSend_setError_(v29, v33, v32);
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v36, v40, 16);
      }

      while (v26);
    }
  }

  v34 = objc_msgSend_stateTransitionGroup(a1[4], v6, v7);
  dispatch_group_leave(v34);

  v35 = *MEMORY[0x277D85DE8];
}

void sub_225206ECC(uint64_t a1, void *a2)
{
  v13 = a2;
  if ((objc_msgSend_isDelete(v13, v3, v4) & 1) == 0)
  {
    v9 = objc_msgSend_record(v13, v5, v6);
    if (!v9)
    {
      v11 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, *(a1 + 40), *(a1 + 32), @"CKDModifyRecordsOperation.m", 2041, @"Expected a non-nil record for handler %@", v13);
    }

    if (objc_msgSend_includeMergeableDeltasInModifyRecordsRequest(*(a1 + 32), v7, v8))
    {
      objc_msgSend_setState_(v13, v10, 8);
    }

    else
    {
      objc_msgSend_setState_(v13, v10, 7);
    }
  }
}

void sub_225207440(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v117 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_haveOutstandingHandlers(*(a1 + 32), a2, a3))
  {
    v6 = objc_opt_new();
    v104 = objc_opt_new();
    v103 = objc_opt_new();
    v100 = objc_opt_new();
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v9 = objc_msgSend_modifyHandlersByZoneID(*(v3 + 32), v7, v8);
    v12 = objc_msgSend_allKeys(v9, v10, v11);

    obj = v12;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v109, v116, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v110;
      v101 = v6;
      v102 = v3;
      v96 = *v110;
      do
      {
        v18 = 0;
        v97 = v16;
        do
        {
          if (*v110 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v109 + 1) + 8 * v18);
          if (objc_msgSend_containsObject_(*(v3 + 40), v15, v19))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v22 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v115 = v19;
              _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Skipping zone %@ because some items in that zone aren't ready to be uploaded yet", buf, 0xCu);
            }
          }

          else
          {
            v99 = v18;
            v23 = objc_msgSend_modifyHandlersByZoneID(*(v3 + 32), v20, v21);
            v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v19);

            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v26 = v25;
            v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v105, v113, 16);
            if (v28)
            {
              v31 = v28;
              v32 = *v106;
              do
              {
                v33 = 0;
                do
                {
                  if (*v106 != v32)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v34 = *(*(&v105 + 1) + 8 * v33);
                  if (objc_msgSend_state(v34, v29, v30) == 6)
                  {
                    v35 = objc_msgSend_record(v34, v29, v30);
                    if (objc_msgSend_isDelete(v34, v36, v37))
                    {
                      v40 = objc_msgSend_recordID(v34, v38, v39);

                      if (!v40)
                      {
                        v87 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v41, v42);
                        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v87, v88, *(v3 + 48), *(v3 + 32), @"CKDModifyRecordsOperation.m", 2108, @"Lost a recordID");
                      }

                      v43 = objc_msgSend_recordID(v34, v41, v42);
                      objc_msgSend_addObject_(v104, v44, v43);

                      v47 = objc_msgSend_etag(v34, v45, v46);

                      if (v47)
                      {
                        v50 = objc_msgSend_etag(v34, v48, v49);
                        v53 = objc_msgSend_recordID(v34, v51, v52);
                        objc_msgSend_setObject_forKeyedSubscript_(v103, v54, v50, v53);
                      }

                      if (objc_msgSend__needsSigningPCS(*(v3 + 32), v48, v49))
                      {
                        v57 = objc_msgSend_recordPCSData(v34, v55, v56);
                        v60 = objc_msgSend_signingPCS(v57, v58, v59);

                        if (v60)
                        {
                          v63 = objc_msgSend_recordPCSData(v34, v61, v62);
                          objc_msgSend_signingPCS(v63, v64, v65);
                          v66 = PCSFPCopyCurrentPrivateKey();

                          if (v66)
                          {
                            v69 = objc_msgSend_container(*(v3 + 32), v67, v68);
                            v72 = objc_msgSend_pcsManager(v69, v70, v71);
                            v74 = objc_msgSend_dataFromSharingIdentity_error_(v72, v73, v66, 0);

                            if (v74)
                            {
                              v77 = objc_msgSend_recordID(v34, v75, v76);
                              objc_msgSend_setObject_forKeyedSubscript_(v100, v78, v74, v77);
                            }

                            CFRelease(v66);

                            v6 = v101;
                            v3 = v102;
                          }

                          else
                          {
                            if (*MEMORY[0x277CBC880] != -1)
                            {
                              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                            }

                            v79 = *MEMORY[0x277CBC830];
                            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
                            {
                              v80 = v79;
                              v83 = objc_msgSend_recordPCSData(v34, v81, v82);
                              v86 = objc_msgSend_signingPCS(v83, v84, v85);
                              *buf = 138412290;
                              v115 = v86;
                              _os_log_debug_impl(&dword_22506F000, v80, OS_LOG_TYPE_DEBUG, "Record does have signing PCS %@ but failed to get private key", buf, 0xCu);

                              v3 = v102;
                              v6 = v101;
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      objc_msgSend_addObject_(v6, v38, v35);
                    }
                  }

                  ++v33;
                }

                while (v31 != v33);
                v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v105, v113, 16);
                v31 = v89;
              }

              while (v89);
            }

            v17 = v96;
            v16 = v97;
            v18 = v99;
          }

          ++v18;
        }

        while (v18 != v16);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v109, v116, 16);
      }

      while (v16);
    }

    objc_msgSend_setRecordsToSave_(*(v3 + 32), v90, v6);
    objc_msgSend_setRecordIDsToDelete_(*(v3 + 32), v91, v104);
    objc_msgSend_setRecordIDsToDeleteToEtags_(*(v3 + 32), v92, v103);
    objc_msgSend_setRecordIDsToDeleteToSigningPCSIdentity_(*(v3 + 32), v93, v100);
  }

  v94 = objc_msgSend_stateTransitionGroup(*(v3 + 32), v4, v5);
  dispatch_group_leave(v94);

  v95 = *MEMORY[0x277D85DE8];
}

void sub_225208388(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_recordID(v5, v6, v7);
    objc_msgSend__handleDecryptionFailure_forRecordID_(v9, v11, v8, v10);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v17 = v14;
      v20 = objc_msgSend_recordID(v5, v18, v19);
      v21 = 138412290;
      v22 = v20;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Successfully decrypted record %@. Continuing with save of that record", &v21, 0xCu);
    }
  }

  v15 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v12, v13);
  dispatch_group_leave(v15);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_225208804(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *MEMORY[0x277CBC878];
  v9 = *MEMORY[0x277CBC880];
  if (!v5 || v6)
  {
    if (v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 32);
      v27 = v14;
      v30 = objc_msgSend_recordID(v26, v28, v29);
      *buf = 138412290;
      v37 = v30;
      _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Failed to decrypt server record %@. Returning as is.", buf, 0xCu);
    }

    objc_msgSend_setState_(*(a1 + 40), v15, 12);
    v16 = MEMORY[0x277CBC560];
    v17 = *MEMORY[0x277CBC120];
    v20 = objc_msgSend_recordID(*(a1 + 32), v18, v19);
    v22 = objc_msgSend_errorWithDomain_code_format_(v16, v21, v17, 5004, @"Couldn't decrypt record returned from the server in response to our save of record %@", v20);
    objc_msgSend_setError_(*(a1 + 40), v23, v22);
  }

  else
  {
    if (v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a1 + 32);
      v32 = v10;
      v35 = objc_msgSend_recordID(v31, v33, v34);
      *buf = 138412290;
      v37 = v35;
      _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Successfully decrypted server record from save %@", buf, 0xCu);
    }

    objc_msgSend__reallyHandleRecordSaved_handler_etag_dateStatistics_expirationDate_responseCode_keysAssociatedWithETag_recordForOplockFailure_decryptedServerRecord_(*(a1 + 48), v11, *(a1 + 56), *(a1 + 40), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), v5);
  }

  v24 = objc_msgSend_stateTransitionGroup(*(a1 + 48), v12, v13);
  dispatch_group_leave(v24);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22520A134(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_22520A160(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Failed to remove anonymous share. error: %@", &v10, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v8);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22520A274(uint64_t a1, const char *a2)
{
  objc_msgSend_setError_(*(a1 + 32), a2, a2);
  v5 = objc_msgSend_error(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_code(v5, v6, v7);

  v10 = *(a1 + 32);
  if (v8 == 2024)
  {
    v11 = 11;
  }

  else
  {
    v11 = 12;
  }

  return objc_msgSend_setState_(v10, v9, v11);
}

void sub_22520A2E4(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *MEMORY[0x277CBC878];
  v9 = *MEMORY[0x277CBC880];
  if (!v5 || v6)
  {
    if (v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v25 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v36 = *(a1 + 32);
      v37 = v25;
      v40 = objc_msgSend_recordID(v36, v38, v39);
      *buf = 138412290;
      v46 = v40;
      _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Failed to decrypt the server record %@. Returning as is.", buf, 0xCu);

      if (!v7)
      {
        goto LABEL_13;
      }
    }

    else if (!v7)
    {
LABEL_13:
      v28 = MEMORY[0x277CBC560];
      v29 = *MEMORY[0x277CBC120];
      v30 = *(a1 + 40);
      v19 = objc_msgSend_recordID(*(a1 + 32), v26, v27);
      v24 = objc_msgSend_errorWithDomain_code_userInfo_format_(v28, v31, v29, 5004, v30, @"Failed to decrypt the server record %@ returned from oplock failure.", v19);
      goto LABEL_14;
    }

    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v26, v7, *MEMORY[0x277CCA7E8]);
    goto LABEL_13;
  }

  if (v9 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v8);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v41 = v10;
    v44 = objc_msgSend_recordID(v5, v42, v43);
    *buf = 138412290;
    v46 = v44;
    _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Successfully decrypted record %@", buf, 0xCu);
  }

  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v11, v5, *MEMORY[0x277CBBFE8]);
  v12 = MEMORY[0x277CBC560];
  v13 = *MEMORY[0x277CBC120];
  v14 = sub_2253962A4(*(a1 + 48));
  v15 = *(a1 + 56);
  v16 = *(a1 + 40);
  v19 = objc_msgSend_error(*(a1 + 48), v17, v18);
  v22 = objc_msgSend_errorDescription(v19, v20, v21);
  v24 = objc_msgSend_errorWithDomain_code_userInfo_format_(v12, v23, v13, v14, v16, @"Error saving record %@ to server: %@", v15, v22);

LABEL_14:
  (*(*(a1 + 72) + 16))();
  v34 = objc_msgSend_stateTransitionGroup(*(a1 + 64), v32, v33);
  dispatch_group_leave(v34);

  v35 = *MEMORY[0x277D85DE8];
}

void sub_22520AA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22520AAAC(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Failed to remove anonymous share. error: %@", &v10, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22520B8D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_22520B91C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v33 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a6;
  v22 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v26 = objc_msgSend_handlersByRecordID(WeakRetained, v24, v25);
  v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, v22);

  v31 = objc_msgSend_record(v28, v29, v30);

  if (v31)
  {
    objc_msgSend__handleRecordSaved_handler_etag_dateStatistics_expirationDate_responseCode_keysAssociatedWithETag_recordForOplockFailure_serverRecord_(WeakRetained, v32, v22, v28, v33, v16, v17, v21, v18, v19, v20);
  }

  else
  {
    objc_msgSend__handleRecordDeleted_handler_responseCode_(WeakRetained, v32, v22, v28, v21);
  }
}

void sub_22520BA7C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleMergeableDeltaSavedForRecordID_key_result_(WeakRetained, v10, v9, v8, v7);
}

void sub_22520BB08(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleReplaceDeltasRequest_result_(WeakRetained, v7, v6, v5);
}

BOOL sub_22520BD54(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_objectForKey_(*(a1 + 32), a2, a2);
  objc_opt_class();
  v3 = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_firstObject(v2, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) == 0))
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_22520BF5C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordsInFlightBlock(*(a1 + 32), a2, a3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22520BFF4;
  v6[3] = &unk_2785470C0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  (v4)[2](v4, v5, v6);
}

void sub_22520BFF4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v12 = objc_msgSend_operationID(v8, v10, v11);
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Finishing daemon operation %{public}@ due to client-returned error %@", &v15, 0x16u);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v7, v5);
  }

  v13 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v3, v4);
  dispatch_group_leave(v13);

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22520CB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22520CB64(uint64_t a1, const char *a2)
{
  objc_msgSend_setRequest_(*(a1 + 32), a2, 0);
  v6 = objc_msgSend_error(*(a1 + 32), v3, v4);
  if (v6)
  {
    objc_msgSend_setError_(*(a1 + 32), v5, v6);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = objc_msgSend_error(WeakRetained, v8, v9);
    objc_msgSend_setError_(*(a1 + 32), v11, v10);
  }

  v14 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v12, v13);
  dispatch_group_leave(v14);
}

void sub_22520D000(uint64_t a1, void *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_record(v3, v4, v5);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v9 = objc_msgSend_allKeys(v6, v7, v8);
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v65, v70, 16);
  if (!v60)
  {

LABEL_26:
    objc_msgSend_setState_(v3, v54, 8);
    goto LABEL_27;
  }

  v12 = 0;
  v59 = *v66;
  v56 = v6;
  v57 = v9;
  do
  {
    for (i = 0; i != v60; ++i)
    {
      if (*v66 != v59)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v65 + 1) + 8 * i);
      v15 = objc_msgSend_objectForKeyedSubscript_(v6, v11, v14);
      v18 = v15;
      if (v15)
      {
        v19 = v15;
      }

      else
      {
        v20 = objc_msgSend_encryptedValues(v6, v16, v17);
        v19 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v14);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v19;
        v25 = objc_msgSend_deltasToSave(v22, v23, v24);
        v28 = objc_msgSend_count(v25, v26, v27);

        if (v28)
        {
          v31 = *(a1 + 32);
          v32 = objc_msgSend_deltasToSave(v22, v29, v30);
          v35 = objc_msgSend_allObjects(v32, v33, v34);
          objc_msgSend_addObjectsFromArray_(v31, v36, v35);

          v37 = *(a1 + 40);
          v40 = objc_msgSend_valueID(v22, v38, v39);
          objc_msgSend_setObject_forKeyedSubscript_(v37, v41, v3, v40);

          v12 = 1;
        }

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v42 = objc_msgSend_pendingReplacementRequests(v22, v29, v30);
        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v61, v69, 16);
        if (v44)
        {
          v46 = v44;
          v58 = v19;
          v47 = *v62;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v62 != v47)
              {
                objc_enumerationMutation(v42);
              }

              objc_msgSend_addObject_(*(a1 + 48), v45, *(*(&v61 + 1) + 8 * j));
              v49 = *(a1 + 40);
              v52 = objc_msgSend_valueID(v22, v50, v51);
              objc_msgSend_setObject_forKeyedSubscript_(v49, v53, v3, v52);
            }

            v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v61, v69, 16);
          }

          while (v46);
          v12 = 1;
          v6 = v56;
          v19 = v58;
        }

        v9 = v57;
      }
    }

    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v65, v70, 16);
  }

  while (v60);

  if ((v12 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_27:

  v55 = *MEMORY[0x277D85DE8];
}

id sub_22520D308(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_metadata(a2, a2, a3);
  v6 = objc_msgSend_identifier(v3, v4, v5);

  return v6;
}

void sub_22520D358(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22520D540;
  v22[3] = &unk_27854A2C8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v23 = v4;
  v24 = v5;
  objc_msgSend_setUploadDeltaCompletionBlock_(v3, v6, v22);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22520D834;
  v19[3] = &unk_27854A2F0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v20 = v7;
  v21 = v8;
  objc_msgSend_setReplaceDeltasRequestCompletionBlock_(v3, v9, v19);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22520DAB4;
  v16[3] = &unk_278546EE0;
  objc_copyWeak(&v18, &location);
  v15 = *(a1 + 32);
  v10 = v15.i64[0];
  v17 = vextq_s8(v15, v15, 8uLL);
  objc_msgSend_setCompletionBlock_(v3, v11, v16);
  v14 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v12, v13);
  dispatch_group_enter(v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void sub_22520D518(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22520D540(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10 = objc_msgSend_valueID(v5, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v11, v10);

  if (v12)
  {
    v13 = *MEMORY[0x277CBC878];
    v14 = *MEMORY[0x277CBC880];
    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v15 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v32 = v15;
        v35 = objc_msgSend_metadata(v5, v33, v34);
        v38 = objc_msgSend_identifier(v35, v36, v37);
        v41 = objc_msgSend_operationID(*(a1 + 40), v39, v40);
        v42 = 138412802;
        v43 = v38;
        v44 = 2114;
        v45 = v41;
        v46 = 2112;
        v47 = v6;
        _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Failed to upload delta, %@, for operation %{public}@: %@", &v42, 0x20u);
      }

      objc_msgSend_setError_(v12, v16, v6);
      objc_msgSend_setState_(v12, v17, 12);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v24 = v23;
        v27 = objc_msgSend_metadata(v5, v25, v26);
        v30 = objc_msgSend_identifier(v27, v28, v29);
        v42 = 138412290;
        v43 = v30;
        _os_log_impl(&dword_22506F000, v24, OS_LOG_TYPE_INFO, "Successfully uploaded delta: %@", &v42, 0xCu);
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
      v19 = v18;
      v22 = objc_msgSend_valueID(v5, v20, v21);
      v42 = 138412290;
      v43 = v22;
      _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "No modify handler for delta: %@", &v42, 0xCu);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_22520D834(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10 = objc_msgSend_valueID(v5, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v11, v10);

  if (v12)
  {
    v13 = *MEMORY[0x277CBC878];
    v14 = *MEMORY[0x277CBC880];
    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v15 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 40);
        v22 = v15;
        v25 = objc_msgSend_operationID(v21, v23, v24);
        v26 = 138412802;
        v27 = v5;
        v28 = 2114;
        v29 = v25;
        v30 = 2112;
        v31 = v6;
        _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "Failed to replace deltas %@ for operation %{public}@: %@", &v26, 0x20u);
      }

      objc_msgSend_setError_(v12, v16, v6);
      objc_msgSend_setState_(v12, v17, 12);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v26 = 138412290;
        v27 = v5;
        _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Successfully replaced deltas: %@", &v26, 0xCu);
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
      v26 = 138412290;
      v27 = v5;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "No modify handler for replacement request: %@", &v26, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_22520DAB4(void **a1)
{
  v48 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v31 = a1[4];
      v32 = v8;
      v35 = objc_msgSend_operationID(v31, v33, v34);
      v38 = objc_msgSend_error(WeakRetained, v36, v37);
      *buf = 138543618;
      v45 = v35;
      v46 = 2112;
      v47 = v38;
      _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Failed to upload delta for operation %{public}@: %@", buf, 0x16u);
    }
  }

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_msgSend_allValues(a1[5], v6, v7);
  v12 = objc_msgSend_setWithArray_(v9, v11, v10);

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = v12;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v39, v43, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v40;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v39 + 1) + 8 * i);
        if (objc_msgSend_state(v21, v16, v17, v39) == 7)
        {
          objc_msgSend_setState_(v21, v16, 8);
          v24 = objc_msgSend_error(WeakRetained, v22, v23);

          if (v24)
          {
            v25 = objc_msgSend_error(WeakRetained, v16, v17);
            objc_msgSend_setError_(v21, v26, v25);
          }
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v39, v43, 16);
    }

    while (v18);
  }

  v29 = objc_msgSend_stateTransitionGroup(a1[4], v27, v28);
  dispatch_group_leave(v29);

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22520EE0C(uint64_t a1, uint64_t a2, void *a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_21:
      v9 = 0;
      goto LABEL_22;
    }

    v12 = objc_msgSend_fileURL(v4, v10, v11);
    v16 = objc_msgSend_URLByResolvingSymlinksInPath(v12, v13, v14);
    if (!v16)
    {
LABEL_20:

      goto LABEL_21;
    }

    canOpenFileAtURL = objc_msgSend_canOpenFileAtURL_(*(a1 + 40), v15, v16);
    v20 = canOpenFileAtURL;
    if (*MEMORY[0x277CBC810] == 1)
    {
      v21 = objc_msgSend_unitTestOverrides(*(a1 + 32), v18, v19);
      v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, @"SandboxFailureRoot");

      v26 = objc_msgSend_stringByResolvingSymlinksInPath(v23, v24, v25);
      v27 = v26;
      if (v23)
      {
        v75 = v20;
        v28 = v16;
        v31 = objc_msgSend_path(v28, v29, v30);
        isEqualToString = objc_msgSend_isEqualToString_(v31, v32, @"/");

        if (isEqualToString)
        {
          v36 = v28;
LABEL_18:

          if (v75)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v74 = v28;
          v37 = v28;
          while (1)
          {
            v38 = objc_msgSend_path(v37, v34, v35);
            if (objc_msgSend_isEqualToString_(v38, v39, v23))
            {
              break;
            }

            v42 = objc_msgSend_path(v37, v40, v41);
            v44 = objc_msgSend_isEqualToString_(v42, v43, v27);

            if (v44)
            {
              goto LABEL_24;
            }

            v36 = objc_msgSend_URLByDeletingLastPathComponent(v37, v45, v46);

            v49 = objc_msgSend_path(v36, v47, v48);
            v51 = objc_msgSend_isEqualToString_(v49, v50, @"/");

            v37 = v36;
            if (v51)
            {
              goto LABEL_18;
            }
          }

LABEL_24:
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v54 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            v55 = v54;
            v58 = objc_msgSend_path(v74, v56, v57);
            *buf = 138543362;
            v77 = v58;
            _os_log_impl(&dword_22506F000, v55, OS_LOG_TYPE_INFO, "Pretending this is an invalid sandbox path: %{public}@", buf, 0xCu);
          }
        }

LABEL_29:
        v59 = objc_msgSend_directoryContext(*(a1 + 40), v18, v19);
        v62 = objc_msgSend_containerDirectory(v59, v60, v61);

        if (v62 && (objc_msgSend_absoluteString(v16, v63, v64), v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend_absoluteString(v62, v66, v67), v68 = objc_claimAutoreleasedReturnValue(), hasPrefix = objc_msgSend_hasPrefix_(v65, v69, v68), v68, v65, (hasPrefix & 1) == 0))
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v63, *MEMORY[0x277CBBF50], 12, @"Long Lived Operation %@ may not save a record with asset %@, whose fileURL %@ is inaccessible. Note that your app should not be re-installed between enqueueing and resuming a LongLivedOperation, as your container directory will change (it's now %@)", *(a1 + 32), v4, v12, v62);
        }

        else
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v63, *MEMORY[0x277CBBF50], 12, @"Long Lived Operation %@ may not save a record with asset %@, whose fileURL %@ is inaccessible", *(a1 + 32), v4, v12);
        }
        v71 = ;
        v72 = *(*(a1 + 48) + 8);
        v73 = *(v72 + 40);
        *(v72 + 40) = v71;

        goto LABEL_3;
      }

      if ((v20 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (!canOpenFileAtURL)
    {
      goto LABEL_29;
    }

LABEL_19:
    objc_msgSend_setRealPathURL_(v4, v18, v16);
    goto LABEL_20;
  }

  v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v5, *MEMORY[0x277CBBF50], 12, @"Long Lived Operation %@ may not save a record with a CKPackage value.  Found %@", *(a1 + 32), v4);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

LABEL_3:
  v9 = 1;
LABEL_22:

  v52 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_22520F22C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_boundaryKey(v4, v5, v6), v7 = objc_claimAutoreleasedReturnValue(), v7, v7) && (objc_msgSend_entitlements(*(a1 + 32), v8, v9), v10 = objc_claimAutoreleasedReturnValue(), hasAssetBoundaryKeyEntitlement = objc_msgSend_hasAssetBoundaryKeyEntitlement(v10, v11, v12), v10, (hasAssetBoundaryKeyEntitlement & 1) == 0))
  {
    v17 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBBF50], 12, @"Usage of [CKAsset boundaryKey] is CloudKit SPI and requires an entitlement. com.apple.private.cloudkit.assetBoundaryKey");
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_2252103A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  objc_destroyWeak((v30 - 120));
  _Unwind_Resume(a1);
}

void sub_2252103F4(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = objc_msgSend_pcs(v6, v9, v10);
  v12 = *MEMORY[0x277CBC878];
  v13 = *MEMORY[0x277CBC880];
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v14 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v18 = objc_msgSend_shareID(v6, v16, v17);
      v19 = *(*(*(a1 + 48) + 8) + 40);
      v29 = 138412546;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Successfully decrypted PCS data for share %@: %@", &v29, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v20 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v22 = *(a1 + 32);
      v23 = v20;
      v26 = objc_msgSend_shareID(v22, v24, v25);
      v29 = 138412546;
      v30 = v26;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Warn: Couldn't decrypt existing share protection data on share %@: %@", &v29, 0x16u);
    }

    objc_msgSend_setState_(WeakRetained, v21, 12);
    if (v7)
    {
      objc_msgSend_setError_(WeakRetained, v27, v7);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v28 = *MEMORY[0x277D85DE8];
}

void sub_225210630(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    objc_msgSend__fetchSharePCSData(WeakRetained, v3, v4);
  }

  else
  {
    objc_msgSend__prepareDependentPCSUpdateIfNeededForShareWithSharePCS_error_(WeakRetained, v3, *(*(*(a1 + 48) + 8) + 40), 0);
  }

  v7 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v5, v6);
  dispatch_group_leave(v7);
}

void sub_2252109EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_225210A44(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v6)
  {
    v11 = (*(*(a1 + 56) + 8) + 40);
    v12 = a2;
LABEL_3:
    objc_storeStrong(v11, v12);
    goto LABEL_12;
  }

  if (!v7 || objc_msgSend_CKIsObjectNotFoundError(v7, v8, v9))
  {
    dispatch_group_enter(*(a1 + 32));
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_225210C5C;
    v22[3] = &unk_27854A428;
    v22[4] = WeakRetained;
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = *(a1 + 56);
    objc_msgSend__fetchRootRecordPublicSharingIdentityWithCompletionHandler_(WeakRetained, v13, v22);

    goto LABEL_12;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v18 = objc_msgSend_shareID(WeakRetained, v16, v17);
    *buf = 138412546;
    v27 = v18;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Fatal error fetching PCS data for share %@: %@. Refusing to save share.", buf, 0x16u);
  }

  v19 = *(*(a1 + 48) + 8);
  v20 = *(v19 + 40);
  v11 = (v19 + 40);
  if (!v20)
  {
    v12 = a3;
    goto LABEL_3;
  }

LABEL_12:
  dispatch_group_leave(*(a1 + 32));

  v21 = *MEMORY[0x277D85DE8];
}

void sub_225210C5C(uint64_t a1, void *a2, void *a3)
{
  v113 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (!v6 || objc_msgSend_CKIsObjectNotFoundError(v6, v7, v8))
  {
    if (!v5)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v37 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v82 = *(a1 + 32);
        v83 = v37;
        v86 = objc_msgSend_share(v82, v84, v85);
        v89 = objc_msgSend_rootRecordID(v86, v87, v88);
        *buf = 138412290;
        v108 = v89;
        _os_log_debug_impl(&dword_22506F000, v83, OS_LOG_TYPE_DEBUG, "Didn't get a public sharing identity for root record %@", buf, 0xCu);
      }

      goto LABEL_16;
    }

    v10 = objc_msgSend_share(*(a1 + 32), v7, v8);
    v13 = objc_msgSend_mutableEncryptedPSK(v10, v11, v12);
    v16 = objc_msgSend_data(v13, v14, v15);

    if (!v16)
    {
      goto LABEL_7;
    }

    v19 = objc_msgSend_data(v5, v17, v18);
    if (!v19 || (v22 = v19, objc_msgSend_data(v5, v20, v21), v23 = objc_claimAutoreleasedReturnValue(), isEqualToData = objc_msgSend_isEqualToData_(v16, v24, v23), v23, v22, (isEqualToData & 1) != 0))
    {
LABEL_7:
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v26 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v71 = *(a1 + 32);
        v72 = v26;
        v75 = objc_msgSend_share(v71, v73, v74);
        v78 = objc_msgSend_rootRecordID(v75, v76, v77);
        v81 = objc_msgSend_shareID(*(a1 + 32), v79, v80);
        *buf = 138412802;
        v108 = v78;
        v109 = 2112;
        v110 = v81;
        v111 = 2112;
        v112 = v5;
        _os_log_debug_impl(&dword_22506F000, v72, OS_LOG_TYPE_DEBUG, "Setting public sharing identity from root record %@ on share %@: %@", buf, 0x20u);
      }

      v27 = objc_alloc(MEMORY[0x277CBC2E8]);
      v30 = objc_msgSend_data(v5, v28, v29);
      v32 = objc_msgSend_initWithData_(v27, v31, v30);
      v35 = objc_msgSend_share(*(a1 + 32), v33, v34);
      objc_msgSend_setMutableEncryptedPSK_(v35, v36, v32);

LABEL_16:
      dispatch_group_enter(*(a1 + 40));
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = sub_225211240;
      v104[3] = &unk_27854A400;
      v38 = *(a1 + 40);
      v39 = *(a1 + 48);
      v104[4] = *(a1 + 32);
      v106 = *(a1 + 56);
      v105 = v38;
      objc_msgSend_createSharePCSDataWithKRS_(v39, v40, v104);

      goto LABEL_28;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v41 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v90 = *(a1 + 32);
      v91 = v41;
      v94 = objc_msgSend_share(v90, v92, v93);
      v97 = objc_msgSend_recordID(v94, v95, v96);
      v100 = objc_msgSend_share(*(a1 + 32), v98, v99);
      v103 = objc_msgSend_rootRecordID(v100, v101, v102);
      *buf = 138412546;
      v108 = v97;
      v109 = 2112;
      v110 = v103;
      _os_log_error_impl(&dword_22506F000, v91, OS_LOG_TYPE_ERROR, "Public sharing identity on share %@ does not match the public sharing identity from its root record (%@). Refusing to save share.", buf, 0x16u);
    }

    v44 = MEMORY[0x277CBC560];
    v45 = *MEMORY[0x277CBC120];
    v46 = objc_msgSend_share(*(a1 + 32), v42, v43);
    v49 = objc_msgSend_recordID(v46, v47, v48);
    v52 = objc_msgSend_share(*(a1 + 32), v50, v51);
    v55 = objc_msgSend_rootRecordID(v52, v53, v54);
    v57 = objc_msgSend_errorWithDomain_code_format_(v44, v56, v45, 1017, @"Public sharing identity on share %@ does not match the public sharing identity from its root record (%@).", v49, v55);

    v9 = v57;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v58 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v63 = *(a1 + 32);
    v64 = v58;
    v67 = objc_msgSend_share(v63, v65, v66);
    v70 = objc_msgSend_rootRecordID(v67, v68, v69);
    *buf = 138412546;
    v108 = v70;
    v109 = 2112;
    v110 = v9;
    _os_log_error_impl(&dword_22506F000, v64, OS_LOG_TYPE_ERROR, "Fatal error fetching PCS data for root record %@: %@. Refusing to save share.", buf, 0x16u);
  }

  v59 = *(*(a1 + 56) + 8);
  v61 = *(v59 + 40);
  v60 = (v59 + 40);
  if (!v61)
  {
    objc_storeStrong(v60, v9);
  }

LABEL_28:
  dispatch_group_leave(*(a1 + 40));

  v62 = *MEMORY[0x277D85DE8];
}

void sub_225211240(uint64_t a1, void *a2, void *a3)
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6 || !v7)
  {
    v80 = v7;
    v81 = v6;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    v82 = objc_opt_new();
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v15 = objc_msgSend_share(*(a1 + 32), v13, v14);
    v18 = objc_msgSend_participants(v15, v16, v17);

    obj = v18;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v89, v94, 16);
    if (v20)
    {
      v23 = v20;
      v24 = MEMORY[0x277CBC880];
      v25 = *v90;
      v26 = MEMORY[0x277CBC830];
      do
      {
        v27 = 0;
        do
        {
          if (*v90 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v89 + 1) + 8 * v27);
          v29 = objc_msgSend_protectionInfo(v28, v21, v22);

          if (v29)
          {
            if (*v24 != -1)
            {
              dispatch_once(v24, *MEMORY[0x277CBC878]);
            }

            v30 = *v26;
            if (os_log_type_enabled(*v26, OS_LOG_TYPE_INFO))
            {
              v32 = v30;
              v35 = objc_msgSend_participantID(v28, v33, v34);
              v38 = objc_msgSend_shareID(*(a1 + 32), v36, v37);
              *buf = 138412546;
              v96 = v35;
              v97 = 2112;
              v98 = v38;
              _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Removing protectionInfo from existing share participant %@ because share PCS was re-created for share %@.", buf, 0x16u);
            }

            objc_msgSend_setProtectionInfo_(v28, v31, 0);
            if (objc_msgSend_role(v28, v39, v40) != 1 && (objc_msgSend_isCurrentUser(v28, v21, v22) & 1) == 0)
            {
              objc_msgSend_addObject_(v82, v21, v28);
            }
          }

          ++v27;
        }

        while (v23 != v27);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v89, v94, 16);
      }

      while (v23);
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v12 = v82;
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v41, &v85, v93, 16);
    if (v42)
    {
      v43 = v42;
      v44 = MEMORY[0x277CBC880];
      v45 = *v86;
      v46 = MEMORY[0x277CBC830];
      do
      {
        v47 = 0;
        obja = v43;
        do
        {
          if (*v86 != v45)
          {
            objc_enumerationMutation(v12);
          }

          v48 = *(*(&v85 + 1) + 8 * v47);
          if (*v44 != -1)
          {
            dispatch_once(v44, *MEMORY[0x277CBC878]);
          }

          v49 = *v46;
          if (os_log_type_enabled(*v46, OS_LOG_TYPE_INFO))
          {
            v52 = v49;
            objc_msgSend_participantID(v48, v53, v54);
            v55 = v45;
            v57 = v56 = v44;
            objc_msgSend_shareID(*(a1 + 32), v58, v59);
            v60 = a1;
            v61 = v46;
            v63 = v62 = v12;
            *buf = 138412546;
            v96 = v57;
            v97 = 2112;
            v98 = v63;
            _os_log_impl(&dword_22506F000, v52, OS_LOG_TYPE_INFO, "Removing and re-adding existing share participant %@ because share PCS was re-created for share %@.", buf, 0x16u);

            v12 = v62;
            v46 = v61;
            a1 = v60;

            v44 = v56;
            v45 = v55;
            v43 = obja;
          }

          v64 = objc_msgSend_share(*(a1 + 32), v50, v51);
          objc_msgSend_removeParticipant_(v64, v65, v48);

          v68 = objc_msgSend_share(*(a1 + 32), v66, v67);
          objc_msgSend_addParticipant_(v68, v69, v48);

          ++v47;
        }

        while (v43 != v47);
        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v70, &v85, v93, 16);
      }

      while (v43);
    }

    v8 = v80;
    v6 = v81;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v72 = *(a1 + 32);
      v73 = v9;
      v76 = objc_msgSend_share(v72, v74, v75);
      v79 = objc_msgSend_recordID(v76, v77, v78);
      *buf = 138412546;
      v96 = v79;
      v97 = 2112;
      v98 = v8;
      _os_log_error_impl(&dword_22506F000, v73, OS_LOG_TYPE_ERROR, "Fatal error creating new share PCS data share %@: %@. Refusing to save share.", buf, 0x16u);
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = v8;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  dispatch_group_leave(*(a1 + 40));
  v71 = *MEMORY[0x277D85DE8];
}

void sub_225211770(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend__prepareDependentPCSUpdateIfNeededForShareWithSharePCS_error_(WeakRetained, v2, *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 40) + 8) + 40));
  v5 = objc_msgSend_operation(WeakRetained, v3, v4);
  v8 = objc_msgSend_stateTransitionGroup(v5, v6, v7);
  dispatch_group_leave(v8);
}

void sub_225211BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225211C08(uint64_t a1, char a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (*MEMORY[0x277CBC810] == 1)
  {
    v9 = objc_msgSend_unitTestOverrides(*(a1 + 32), v6, v7);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"SimultateSharePCSCreateKRSFailure");

    if (v11)
    {
      v13 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 5000, @"SimultateSharePCSCreateKRSFailure set.");

      v14 = v13 == 0;
      v5 = v13;
      goto LABEL_11;
    }
  }

  v14 = v5 == 0;
  if (v5 || (a2 & 1) == 0)
  {
LABEL_11:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v31 = v22;
      v34 = objc_msgSend_shareID(WeakRetained, v32, v33);
      v35 = *(a1 + 40);
      *buf = 138412546;
      v43 = v34;
      v44 = 2114;
      v45 = v35;
      _os_log_error_impl(&dword_22506F000, v31, OS_LOG_TYPE_ERROR, "Failed to KRS for share %@ with service name %{public}@.", buf, 0x16u);

      if (!v14)
      {
        goto LABEL_16;
      }
    }

    else if (!v14)
    {
LABEL_16:
      v21 = *(*(a1 + 48) + 16);
      goto LABEL_17;
    }

    v25 = MEMORY[0x277CBC560];
    v26 = *MEMORY[0x277CBC120];
    v27 = *(a1 + 40);
    v28 = objc_msgSend_shareID(WeakRetained, v23, v24);
    v5 = objc_msgSend_errorWithDomain_code_format_(v25, v29, v26, 5000, @"Couldn't get a current public %@ identity for the owner to create share PCS for share %@.", v27, v28);

    goto LABEL_16;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v36 = v15;
    v39 = objc_msgSend_shareID(WeakRetained, v37, v38);
    v40 = *(a1 + 40);
    *buf = 138412546;
    v43 = v39;
    v44 = 2114;
    v45 = v40;
    _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "KRS successful for share %@ with service name %{public}@. Retrying share PCS creation.", buf, 0x16u);
  }

  v41 = 0;
  v17 = objc_msgSend__createNewSharePCSDataWithError_(WeakRetained, v16, &v41);
  v5 = v41;
  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = *(*(*(a1 + 56) + 8) + 40);
  v21 = *(*(a1 + 48) + 16);
LABEL_17:
  v21();

  v30 = *MEMORY[0x277D85DE8];
}

void sub_2252121F0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v8 = objc_msgSend_encryptedPublicSharingKey(a2, v6, v7);
  (*(v4 + 16))(v4, v8, v5);
}

void sub_2252132A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 80));
  _Block_object_dispose(&a29, 8);
  objc_destroyWeak((v30 - 160));
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_2252132F0(uint64_t a1, void *a2, void *a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v10 = objc_msgSend_pcs(v5, v8, v9);
  if (!v6 && v10)
  {
    v13 = objc_msgSend_copy(v5, v11, v12);
    v16 = objc_msgSend_share(*(a1 + 40), v14, v15);
    v19 = objc_msgSend_currentUserParticipant(v16, v17, v18);
    v22 = objc_msgSend_role(v19, v20, v21);

    if (v22 == 1)
    {
      v23 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v24 = MEMORY[0x277CBC830];
      v25 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v66 = v25;
        v69 = objc_msgSend_shareID(WeakRetained, v67, v68);
        *buf = 138412290;
        v72 = v69;
        _os_log_debug_impl(&dword_22506F000, v66, OS_LOG_TYPE_DEBUG, "Adding invited PCS to zone PCS for zone-wide share %@", buf, 0xCu);
      }

      v28 = objc_msgSend_pcsManager(WeakRetained, v26, v27);
      v31 = objc_msgSend_pcs(*(a1 + 48), v29, v30);
      v34 = objc_msgSend_pcs(v13, v32, v33);
      v70 = 0;
      v36 = objc_msgSend_addSharePCS_toRecordPCS_error_(v28, v35, v31, v34, &v70);
      v6 = v70;

      if (v36)
      {
        if (*v23 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v39 = *v24;
        if (os_log_type_enabled(*v24, OS_LOG_TYPE_INFO))
        {
          v42 = *(a1 + 40);
          v43 = v39;
          v46 = objc_msgSend_shareID(v42, v44, v45);
          *buf = 138412290;
          v72 = v46;
          _os_log_impl(&dword_22506F000, v43, OS_LOG_TYPE_INFO, "Updating signing key on invited pcs for zone-wide share %@", buf, 0xCu);
        }

        v47 = objc_msgSend_pcsManager(WeakRetained, v40, v41);
        v50 = objc_msgSend_pcs(*(a1 + 48), v48, v49);
        v53 = objc_msgSend_pcs(v13, v51, v52);
        LOBYTE(v50) = objc_msgSend_updateSigningIdentityOnPCS_usingSignedPCS_(v47, v54, v50, v53);

        if ((v50 & 1) != 0 || v6)
        {
          goto LABEL_22;
        }

        v55 = @"Couldn't update signing key on invited pcs for share %@";
        goto LABEL_21;
      }

      if (!v6)
      {
        v55 = @"Couldn't add invited PCS to zone PCS for zone-wide share %@";
LABEL_21:
        v56 = MEMORY[0x277CBC560];
        v57 = *MEMORY[0x277CBC120];
        v58 = objc_msgSend_shareID(WeakRetained, v37, v38);
        v6 = objc_msgSend_errorWithDomain_code_format_(v56, v59, v57, 5001, v55, v58);
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_22:
    v60 = *(*(a1 + 64) + 8);
    v61 = *(v60 + 40);
    *(v60 + 40) = v13;

    goto LABEL_23;
  }

  if (!v6)
  {
    v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 5001, @"Didn't get PCS data for zone %@", *(a1 + 32));
  }

LABEL_23:
  v62 = *(*(a1 + 72) + 8);
  v63 = *(v62 + 40);
  *(v62 + 40) = v6;
  v64 = v6;

  dispatch_group_leave(*(a1 + 56));
  v65 = *MEMORY[0x277D85DE8];
}

void sub_22521368C(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = objc_msgSend__rollShareAndZonePCSIfNeededForSharePCS_zonePCSData_(WeakRetained, v3, *(a1 + 32), *(*(*(a1 + 48) + 8) + 40));
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v9 = objc_msgSend__handleSharePCSData_zonePCSData_(v4, v8, *(a1 + 32), *(*(*(a1 + 48) + 8) + 40));
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v14 = v12;
    v17 = objc_msgSend_shareID(v4, v15, v16);
    v18 = v17;
    v19 = @" with error: ";
    v20 = *(*(*(a1 + 40) + 8) + 40);
    if (!v20)
    {
      v19 = &stru_28385ED00;
      v20 = &stru_28385ED00;
    }

    v33 = 138412802;
    v34 = v17;
    v35 = 2114;
    v36 = v19;
    v37 = 2112;
    v38 = v20;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Done updating pcs for share %@%{public}@%@", &v33, 0x20u);
  }

  v21 = *(*(*(a1 + 40) + 8) + 40);
  if (v21)
  {
    objc_msgSend_setError_(v4, v13, v21);
    objc_msgSend_setState_(v4, v22, 12);
  }

  else
  {
    objc_msgSend_setState_(v4, v13, 2);
  }

  v25 = objc_msgSend_pcsGroup(v4, v23, v24);
  dispatch_group_leave(v25);

  v28 = objc_msgSend_operation(v4, v26, v27);
  v31 = objc_msgSend_stateTransitionGroup(v28, v29, v30);
  dispatch_group_leave(v31);

  v32 = *MEMORY[0x277D85DE8];
}

void sub_225213D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225213D70(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (v3)
  {
    objc_msgSend_setError_(WeakRetained, v5, v3);
    objc_msgSend_setState_(v7, v8, 12);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = objc_msgSend_operation(WeakRetained, v5, v6);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_225213EA4;
    v13[3] = &unk_27854A518;
    objc_copyWeak(&v17, (a1 + 48));
    v16 = *(a1 + 40);
    v10 = v9;
    v11 = *(a1 + 32);
    v14 = v10;
    v15 = v11;
    objc_msgSend__addPublicKeyToSelfParticipantWithCompletionHandler_(v7, v12, v13);

    objc_destroyWeak(&v17);
  }
}

void sub_225213EA4(uint64_t a1, void *a2)
{
  v110 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (!v3)
  {
    v107 = 0;
    v8 = objc_msgSend__setupParticipantsProtectionInfos_(WeakRetained, v5, &v107);
    v9 = v107;
    v11 = v9;
    if (v8)
    {
      v106 = v9;
      updated = objc_msgSend__updateSharePublicPCSWithError_(v6, v10, &v106);
      v13 = v106;

      if ((updated & 1) == 0)
      {
        objc_msgSend_setError_(v6, v14, v13);
        objc_msgSend_setState_(v6, v50, 12);
        (*(*(a1 + 48) + 16))();
        v11 = v13;
        goto LABEL_37;
      }

      v105 = v13;
      v15 = objc_msgSend__serializePCSDataForShareWithError_(v6, v14, &v105);
      v11 = v105;

      if (v15)
      {
        v95 = v11;
        v17 = objc_msgSend_container(*(a1 + 32), v10, v16);
        v20 = objc_msgSend_options(v17, v18, v19);
        if (objc_msgSend_useAnonymousToServerShareParticipants(v20, v21, v22))
        {
          v25 = objc_msgSend_share(v6, v23, v24);
          v28 = objc_msgSend_currentUserParticipant(v25, v26, v27);
          v31 = objc_msgSend_role(v28, v29, v30);

          if (v31 != 1)
          {
LABEL_24:
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v51 = objc_msgSend_share(v6, v32, v33);
            v54 = objc_msgSend_addedParticipants(v51, v52, v53);

            v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v97, v108, 16);
            if (v56)
            {
              v59 = v56;
              v60 = *v98;
              do
              {
                for (i = 0; i != v59; ++i)
                {
                  if (*v98 != v60)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v62 = *(*(&v97 + 1) + 8 * i);
                  v63 = objc_msgSend_container(*(a1 + 32), v57, v58);
                  v66 = objc_msgSend_entitlements(v63, v64, v65);
                  hasOutOfProcessUIEntitlement = objc_msgSend_hasOutOfProcessUIEntitlement(v66, v67, v68);
                  objc_msgSend_setCreatedInProcess_(v62, v70, hasOutOfProcessUIEntitlement ^ 1u);
                }

                v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v57, &v97, v108, 16);
              }

              while (v59);
            }

            v73 = objc_msgSend_sharePCSData(v6, v71, v72);
            v76 = objc_msgSend_invitedPCS(v73, v74, v75);

            if (v76)
            {
              v79 = objc_msgSend_share(v6, v77, v78);
              v82 = objc_msgSend_sharePCSData(v6, v80, v81);
              v85 = objc_msgSend_invitedPCS(v82, v83, v84);
              v88 = objc_msgSend_pcsManager(v6, v86, v87);
              objc_msgSend__decryptPersonalInfoWithPCSBlob_pcsManager_(v79, v89, v85, v88);
            }

            objc_msgSend__alignParticipantPermissions(v6, v77, v78);
            if (objc_msgSend_state(v6, v90, v91) == 5)
            {
              v92 = *(a1 + 48);
              v96.receiver = *(a1 + 40);
              v96.super_class = CKDModifyShareHandler;
              objc_msgSendSuper2(&v96, sel_prepareForSaveWithCompletionHandler_, v92);
            }

            else
            {
              (*(*(a1 + 48) + 16))();
            }

            v11 = v95;
            goto LABEL_37;
          }

          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v34 = objc_msgSend_share(v6, v32, v33);
          v17 = objc_msgSend_allParticipants(v34, v35, v36);

          v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v37, &v101, v109, 16);
          if (v38)
          {
            v41 = v38;
            v94 = v6;
            v42 = *v102;
            v43 = MEMORY[0x277CBC810];
            do
            {
              for (j = 0; j != v41; ++j)
              {
                if (*v102 != v42)
                {
                  objc_enumerationMutation(v17);
                }

                v45 = *(*(&v101 + 1) + 8 * j);
                if (objc_msgSend_role(v45, v39, v40) != 1)
                {
                  objc_msgSend_setIsAnonymousInvitedParticipant_(v45, v39, 1);
                  if (*v43 == 1)
                  {
                    v46 = objc_msgSend_unitTestOverrides(*(a1 + 32), v39, v40);
                    v48 = objc_msgSend_objectForKeyedSubscript_(v46, v47, @"ForceSendPublicKeyForAnonymousParticipants");

                    if (v48)
                    {
                      objc_msgSend_setForceSendPublicKeyForAnonymousParticipants_(v45, v39, 1);
                    }
                  }
                }
              }

              v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v39, &v101, v109, 16);
            }

            while (v41);
            v6 = v94;
            v3 = 0;
          }
        }

        else
        {
        }

        goto LABEL_24;
      }
    }

    objc_msgSend_setError_(v6, v10, v11);
    objc_msgSend_setState_(v6, v49, 12);
    (*(*(a1 + 48) + 16))();
LABEL_37:

    goto LABEL_38;
  }

  objc_msgSend_setError_(WeakRetained, v5, v3);
  objc_msgSend_setState_(v6, v7, 12);
  (*(*(a1 + 48) + 16))();
LABEL_38:

  v93 = *MEMORY[0x277D85DE8];
}

void sub_22521460C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225214638(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!a2 || v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      v27 = v18;
      v30 = objc_msgSend_participantID(v26, v28, v29);
      v33 = objc_msgSend_shareID(WeakRetained, v31, v32);
      *buf = 138543874;
      v35 = v30;
      v36 = 2114;
      v37 = v33;
      v38 = 2114;
      v39 = v5;
      _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "Failed to decrypt self participant PCS for participant %{public}@ on share %{public}@, error: %{public}@", buf, 0x20u);

      if (v5)
      {
        goto LABEL_17;
      }
    }

    else if (v5)
    {
LABEL_17:
      (*(*(a1 + 40) + 16))();

      goto LABEL_18;
    }

    v21 = MEMORY[0x277CBC560];
    v22 = *MEMORY[0x277CBC120];
    v23 = objc_msgSend_participantID(*(a1 + 32), v19, v20);
    v5 = objc_msgSend_errorWithDomain_code_format_(v21, v24, v22, 5005, @"Couldn't decrypt self PPPCS for participant %@ when setting up other participants", v23);

    goto LABEL_17;
  }

  v7 = PCSFPGetOwnerIdentity();
  WeakRetained[19] = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = WeakRetained[18];
  if (v8)
  {
    CFRetain(v8);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v14 = objc_msgSend_participantID(v10, v12, v13);
    v17 = objc_msgSend_shareID(WeakRetained, v15, v16);
    *buf = 138543874;
    v35 = a2;
    v36 = 2112;
    v37 = v14;
    v38 = 2114;
    v39 = v17;
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Successfully decrypted self participant PCS %{public}@ for participant %@ on share %{public}@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
}

void sub_225216FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225216FDC(uint64_t a1, char a2, void *a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = objc_msgSend_operation(WeakRetained, v7, v8);
  if (v5 || (a2 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v36 = v33;
      v39 = objc_msgSend_operationID(v11, v37, v38);
      *buf = 138543618;
      v74 = v39;
      v75 = 2112;
      v76 = v5;
      _os_log_impl(&dword_22506F000, v36, OS_LOG_TYPE_INFO, "User key sync failed for operation %{public}@ with error %@", buf, 0x16u);
    }

    if (!v5)
    {
      v40 = MEMORY[0x277CBC560];
      v41 = *MEMORY[0x277CBC120];
      v42 = objc_msgSend_shareID(WeakRetained, v34, v35);
      v5 = objc_msgSend_errorWithDomain_code_format_(v40, v43, v41, 5000, @"Couldn't get a current public CloudDocs identity for the owner on share %@", v42);
    }
  }

  else
  {
    v12 = objc_msgSend_pcsManager(WeakRetained, v9, v10);
    v13 = *(a1 + 56);
    v72 = 0;
    v15 = objc_msgSend_participantPublicKeyForServiceType_error_(v12, v14, v13, &v72);
    v5 = v72;
    v18 = objc_msgSend_userIdentity(*(a1 + 32), v16, v17);
    objc_msgSend_setPublicSharingKey_(v18, v19, v15);

    v20 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = MEMORY[0x277CBC830];
    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v25 = v22;
      v28 = objc_msgSend_operationID(v11, v26, v27);
      v29 = *(a1 + 32);
      *buf = 138543618;
      v74 = v28;
      v75 = 2112;
      v76 = v29;
      _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "User key sync succeeded for operation %{public}@. Obtained the public sharing key for participant %@ on a retry", buf, 0x16u);
    }

    v30 = objc_msgSend_protectionInfo(*(a1 + 32), v23, v24);
    if (v30)
    {
    }

    else
    {
      v44 = objc_msgSend_share(WeakRetained, v31, v32);
      v47 = objc_msgSend_addedParticipants(v44, v45, v46);
      v49 = objc_msgSend_containsObject_(v47, v48, *(a1 + 32));

      if ((v49 & 1) == 0)
      {
        objc_msgSend_setIsALegacyPublicShareThatNeedsOwnerPPPCSUpgrade_(WeakRetained, v50, 1);
        v53 = objc_msgSend_share(WeakRetained, v51, v52);
        v56 = objc_msgSend_privatePCS(v53, v54, v55);

        if (v56)
        {
          v59 = *(a1 + 32);
          v60 = objc_msgSend_share(WeakRetained, v57, v58);
          v63 = objc_msgSend_privatePCS(v60, v61, v62);
          v65 = objc_msgSend__ensurePrivateParticipant_isInInvitedSharePCS_(WeakRetained, v64, v59, v63);

          v5 = v65;
        }

        else
        {
          if (*v20 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v66 = *v21;
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
          {
            v68 = v66;
            v71 = objc_msgSend_shareID(WeakRetained, v69, v70);
            *buf = 138412290;
            v74 = v71;
            _os_log_debug_impl(&dword_22506F000, v68, OS_LOG_TYPE_DEBUG, "Couldn't get a private PCS for the share %@, so we can't upgrade our owner's PPPCS", buf, 0xCu);
          }
        }
      }
    }
  }

  (*(*(a1 + 40) + 16))();

  v67 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22521889C(uint64_t a1)
{
  v2 = PCSPublicIdentityGetPublicID();
  if (v2)
  {
    objc_msgSend_addObject_(*(a1 + 32), v2, v2);
  }

  return MEMORY[0x2821F96F8]();
}

void *sub_22521BF8C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_userIdentity(a2, a2, a3);
  v6 = objc_msgSend_lookupInfo(v3, v4, v5);

  if (objc_msgSend_lookupField(v6, v7, v8))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

void sub_22521D520(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordWebSharedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_recordWebSharedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }
}

void sub_22521D5A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordWebUnsharedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_recordWebUnsharedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_22521D8B4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setRetryPCSFailures_(v3, v4, 0);
  objc_msgSend_setCanSetPreviousProtectionEtag_(v3, v5, 1);
  objc_msgSend_setTrustProtectionData_(v3, v6, 1);
  v7 = objc_opt_new();
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22521DAB8;
  v19[3] = &unk_278549BF0;
  objc_copyWeak(&v21, &location);
  v8 = v7;
  v20 = v8;
  objc_msgSend_setSaveCompletionBlock_(v3, v9, v19);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22521DB3C;
  v15[3] = &unk_278548AD0;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &from);
  v10 = v8;
  v16 = v10;
  objc_msgSend_setCompletionBlock_(v3, v11, v15);
  v14 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v12, v13);
  dispatch_group_enter(v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_22521DA78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_22521DAB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleRecordSaved_error_(WeakRetained, v9, v11, v7);

  objc_msgSend_addObject_(*(a1 + 32), v10, v11);
}

void sub_22521DB3C(void **a1)
{
  v53 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = MEMORY[0x277CBC830];
  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v32 = v5;
    v37 = objc_msgSend_error(v3, v33, v34);
    if (v37)
    {
      v38 = @" Error was ";
    }

    else
    {
      v38 = &stru_28385ED00;
    }

    v39 = objc_msgSend_error(v3, v35, v36);
    v40 = v39;
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = &stru_28385ED00;
    }

    *buf = 138543618;
    v50 = v38;
    v51 = 2112;
    v52 = v41;
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Done saving all records for (un)share operation.%{public}@%@", buf, 0x16u);
  }

  v43 = objc_msgSend_error(v3, v6, v7);
  if (!v43)
  {
    v43 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1000, @"Unknown error when saving record for web sharing");
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = objc_msgSend_recordsToSaveByID(WeakRetained, v8, v9);
  v13 = objc_msgSend_allKeys(v10, v11, v12);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v44, v48, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v45;
    *&v17 = 138412546;
    v42 = v17;
    do
    {
      v20 = 0;
      do
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v44 + 1) + 8 * v20);
        if ((objc_msgSend_containsObject_(a1[4], v16, v21, v42) & 1) == 0)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v22 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
          {
            *buf = v42;
            v50 = v21;
            v51 = 2112;
            v52 = v43;
            _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Record %@ never received a callback when modifying records. Sending that callback now with error %@", buf, 0x16u);
          }

          v25 = objc_msgSend_error(v3, v23, v24);
          objc_msgSend__handleRecordSaved_error_(WeakRetained, v26, v21, v25);

          objc_msgSend_addObject_(a1[4], v27, v21);
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v44, v48, 16);
    }

    while (v18);
  }

  v30 = objc_msgSend_stateTransitionGroup(WeakRetained, v28, v29);
  dispatch_group_leave(v30);

  v31 = *MEMORY[0x277D85DE8];
}

void sub_22521ED70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_recordWebSharedBlock(*(a1 + 32), v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_callbackQueue(*(a1 + 32), v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22521EE60;
    block[3] = &unk_278546990;
    block[4] = *(a1 + 32);
    v14 = v5;
    v15 = v6;
    dispatch_async(v12, block);
  }
}

void sub_22521EE60(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordWebSharedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_recordWebSharedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, 0, *(a1 + 48));
  }
}

void sub_22521EEEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_recordWebUnsharedBlock(*(a1 + 32), v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_callbackQueue(*(a1 + 32), v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22521EFDC;
    block[3] = &unk_278546990;
    block[4] = *(a1 + 32);
    v14 = v5;
    v15 = v6;
    dispatch_async(v12, block);
  }
}

void sub_22521EFDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordWebUnsharedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_recordWebUnsharedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_22521F060(uint64_t a1, void *a2)
{
  v7 = a2;
  v5 = objc_msgSend_recordKeysRemoved(v7, v3, v4);
  objc_msgSend_setRecordKeysRemoved_(v7, v6, *(a1 + 32) + v5);
}

void sub_22521F24C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setUseCachedEtags_(v3, v4, 0);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22521F3F0;
  v19[3] = &unk_278548CC0;
  objc_copyWeak(&v20, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v5, v19);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_22521F498;
  v15 = &unk_278546EE0;
  objc_copyWeak(&v18, &from);
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  objc_msgSend_setCompletionBlock_(v3, v8, &v12);
  v11 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v9, v10, v12, v13, v14, v15);
  dispatch_group_enter(v11);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_22521F3B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_22521F3F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordFetched_recordID_error_(WeakRetained, v10, v9, v8, v7);

  v13 = objc_msgSend_fetchedRecordIDs(WeakRetained, v11, v12);
  objc_msgSend_addObject_(v13, v14, v8);
}

void sub_22521F498(id *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = MEMORY[0x277CBC830];
  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Done fetching all records for web sharing", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = objc_msgSend_error(WeakRetained, v5, v6);

  if (!v7)
  {
    v7 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1000, @"Couldn't fetch record for web share/unshare.");
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = a1[4];
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v33, v41, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v34;
    *&v14 = 138412546;
    v32 = v14;
    do
    {
      v17 = 0;
      do
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v33 + 1) + 8 * v17);
        v19 = objc_msgSend_fetchedRecordIDs(a1[5], v12, v13, v32, v33);
        v21 = objc_msgSend_containsObject_(v19, v20, v18);

        if ((v21 & 1) == 0)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v22 = *v2;
          if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
          {
            *buf = v32;
            v38 = v18;
            v39 = 2112;
            v40 = v7;
            _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Record %@ was never fetched from the server. Returning error %@", buf, 0x16u);
          }

          objc_msgSend__handleRecordFetched_recordID_error_(a1[5], v23, 0, v18, v7);
          v26 = objc_msgSend_fetchedRecordIDs(a1[5], v24, v25);
          objc_msgSend_addObject_(v26, v27, v18);
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v33, v41, 16);
    }

    while (v15);
  }

  v30 = objc_msgSend_stateTransitionGroup(a1[5], v28, v29);
  dispatch_group_leave(v30);

  v31 = *MEMORY[0x277D85DE8];
}

id sub_22521FF64(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBC7A0];
  v3 = a2;
  v4 = [v2 alloc];
  v7 = objc_msgSend_destinationRecord(v3, v5, v6);
  v10 = objc_msgSend_recordID(v7, v8, v9);
  v12 = objc_msgSend_initWithObject1_object2_(v4, v11, v10, v3);

  return v12;
}

void sub_225220748(uint64_t a1, void *a2)
{
  v33 = a2;
  if ((objc_msgSend_shouldOnlySaveAssetContent(*(a1 + 32), v3, v4) & 1) == 0)
  {
    v7 = objc_msgSend_recordsUploaded(v33, v5, v6);
    objc_msgSend_setRecordsUploaded_(v33, v8, v7 + 1);
  }

  v9 = objc_msgSend_moveChange(*(a1 + 40), v5, v6);
  v12 = objc_msgSend_destinationRecord(v9, v10, v11);
  v15 = objc_msgSend_assetCount(v12, v13, v14);
  v18 = objc_msgSend_assetsUploaded(v33, v16, v17);
  objc_msgSend_setAssetsUploaded_(v33, v19, v18 + v15);

  v22 = objc_msgSend_moveChange(*(a1 + 40), v20, v21);
  v25 = objc_msgSend_destinationRecord(v22, v23, v24);
  v28 = objc_msgSend_assetDiskSize(v25, v26, v27);
  v31 = objc_msgSend_assetsUploadedFileSize(v33, v29, v30);
  objc_msgSend_setAssetsUploadedFileSize_(v33, v32, v31 + v28);
}

void sub_225220AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_225220AF8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_moveChangesByDestinationRecordID(v2, v4, v5);
  v9 = objc_msgSend_recordID(v3, v7, v8);

  v11 = objc_msgSend_objectForKeyedSubscript_(v6, v10, v9);

  return v11;
}

void sub_225220B7C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v18 = objc_msgSend_handlersByRecordID(WeakRetained, v16, v17);
  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v14);

  objc_msgSend__handleRecordMoved_handler_responseCode_recordForOplockFailure_destinationServerRecord_moveMarkerServerRecord_(WeakRetained, v21, v14, v20, v15, v12, v13, v11);
}

void sub_225221234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 240), 8);
  _Block_object_dispose((v45 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_225221288(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v21 = v9;
      v24 = objc_msgSend_recordID(v20, v22, v23);
      *buf = 138412290;
      v26 = v24;
      _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Failed to decrypt destination record %@", buf, 0xCu);
    }

    v12 = MEMORY[0x277CBC560];
    v13 = *MEMORY[0x277CBC120];
    v14 = objc_msgSend_recordID(*(a1 + 32), v10, v11);
    v16 = objc_msgSend_errorWithDomain_code_format_(v12, v15, v13, 5004, @"Couldn't decrypt destination record returned from the server in response to our move of record %@", v14);
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));

  v19 = *MEMORY[0x277D85DE8];
}

void sub_225221438(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v21 = v9;
      v24 = objc_msgSend_recordID(v20, v22, v23);
      *buf = 138412290;
      v26 = v24;
      _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Failed to decrypt move marker record %@", buf, 0xCu);
    }

    v12 = MEMORY[0x277CBC560];
    v13 = *MEMORY[0x277CBC120];
    v14 = objc_msgSend_recordID(*(a1 + 32), v10, v11);
    v16 = objc_msgSend_errorWithDomain_code_format_(v12, v15, v13, 5004, @"Couldn't decrypt move marker record returned from the server in response to our move of record %@", v14);
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2252215E8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(*(*(a1 + 72) + 8) + 40) || *(*(*(a1 + 80) + 8) + 40))
  {
    objc_msgSend_setState_(*(a1 + 32), a2, 12);
    v5 = *(*(*(a1 + 72) + 8) + 40);
    if (!v5)
    {
      v5 = *(*(*(a1 + 80) + 8) + 40);
    }

    objc_msgSend_setError_(*(a1 + 32), v4, v5);
  }

  v6 = objc_msgSend_error(*(a1 + 32), a2, a3);

  if (!v6)
  {
    objc_msgSend__reallyHandleRecordMoved_handler_responseCode_recordForOplockFailure_destinationServerRecord_moveMarkerServerRecord_(*(a1 + 40), v7, *(a1 + 48), *(a1 + 32), *(a1 + 56), *(a1 + 64), *(*(*(a1 + 88) + 8) + 40), *(*(*(a1 + 96) + 8) + 40));
  }

  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v7, v8);
  dispatch_group_leave(v9);
}

uint64_t sub_2252229C0(uint64_t a1, const char *a2)
{
  objc_msgSend_setError_(*(a1 + 32), a2, a2);
  v5 = objc_msgSend_error(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_code(v5, v6, v7);

  v10 = *(a1 + 32);
  if (v8 == 2024)
  {
    v11 = 11;
  }

  else
  {
    v11 = 12;
  }

  return objc_msgSend_setState_(v10, v9, v11);
}

void sub_225222A30(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *MEMORY[0x277CBC878];
  v9 = *MEMORY[0x277CBC880];
  if (!v5 || v6)
  {
    if (v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v25 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v36 = *(a1 + 32);
      v37 = v25;
      v40 = objc_msgSend_recordID(v36, v38, v39);
      *buf = 138412290;
      v46 = v40;
      _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Failed to decrypt the server record %@. Returning as is.", buf, 0xCu);

      if (!v7)
      {
        goto LABEL_13;
      }
    }

    else if (!v7)
    {
LABEL_13:
      v28 = MEMORY[0x277CBC560];
      v29 = *MEMORY[0x277CBC120];
      v30 = *(a1 + 40);
      v19 = objc_msgSend_recordID(*(a1 + 32), v26, v27);
      v24 = objc_msgSend_errorWithDomain_code_userInfo_format_(v28, v31, v29, 5004, v30, @"Failed to decrypt the server record %@ returned from oplock failure.", v19);
      goto LABEL_14;
    }

    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v26, v7, *MEMORY[0x277CCA7E8]);
    goto LABEL_13;
  }

  if (v9 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v8);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v41 = v10;
    v44 = objc_msgSend_recordID(v5, v42, v43);
    *buf = 138412290;
    v46 = v44;
    _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Successfully decrypted record %@", buf, 0xCu);
  }

  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v11, v5, *MEMORY[0x277CBBFE8]);
  v12 = MEMORY[0x277CBC560];
  v13 = *MEMORY[0x277CBC120];
  v14 = sub_2253962A4(*(a1 + 48));
  v15 = *(a1 + 56);
  v16 = *(a1 + 40);
  v19 = objc_msgSend_error(*(a1 + 48), v17, v18);
  v22 = objc_msgSend_errorDescription(v19, v20, v21);
  v24 = objc_msgSend_errorWithDomain_code_userInfo_format_(v12, v23, v13, v14, v16, @"Error moving record %@ on server: %@", v15, v22);

LABEL_14:
  (*(*(a1 + 72) + 16))();
  v34 = objc_msgSend_stateTransitionGroup(*(a1 + 64), v32, v33);
  dispatch_group_leave(v34);

  v35 = *MEMORY[0x277D85DE8];
}

void sub_2252238F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }
}

void sub_2252240A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252240CC(uint64_t a1, uint64_t a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v8 = MEMORY[0x277CBC880];
  v9 = MEMORY[0x277CBC830];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      v15 = objc_msgSend_recordID(v11, v13, v14);
      v16 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412546;
      v63 = v15;
      v64 = 2112;
      v65 = v16;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Warn: Couldn't prep PCS data %@: %@", buf, 0x16u);
    }
  }

  if (objc_msgSend_publicPCS(*(a1 + 32), v6, v7))
  {
    v19 = objc_msgSend_container(*(a1 + 40), v17, v18);
    v22 = objc_msgSend_pcsManager(v19, v20, v21);
    v25 = objc_msgSend_publicPCS(*(a1 + 32), v23, v24);
    v61 = 0;
    v27 = objc_msgSend_sharingIdentityDataFromPCS_error_(v22, v26, v25, &v61);
    v28 = v61;
    v29 = v61;

    v30 = objc_alloc(MEMORY[0x277CBC2E8]);
    v32 = objc_msgSend_initWithData_(v30, v31, v27);
    objc_msgSend_setMutableEncryptedPSK_(*(a1 + 32), v33, v32);

    v34 = *MEMORY[0x277CBC878];
    v35 = *v8;
    if (v29)
    {
      if (*v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v34);
      }

      v36 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
      {
        v37 = *(a1 + 32);
        v38 = v36;
        v41 = objc_msgSend_recordID(v37, v39, v40);
        *buf = 138412546;
        v63 = v41;
        v64 = 2112;
        v65 = v29;
        _os_log_impl(&dword_22506F000, v38, OS_LOG_TYPE_INFO, "Warn: Couldn't get a public sharing identity for share %@: %@", buf, 0x16u);
      }

      v42 = *(*(a1 + 56) + 8);
      v44 = *(v42 + 40);
      v43 = (v42 + 40);
      if (!v44)
      {
        objc_storeStrong(v43, v28);
      }
    }

    else
    {
      if (*v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v34);
      }

      v45 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v46 = *(a1 + 32);
        v47 = v45;
        v50 = objc_msgSend_recordID(v46, v48, v49);
        v53 = objc_msgSend_mutableEncryptedPSK(*(a1 + 32), v51, v52);
        v56 = objc_msgSend_data(v53, v54, v55);
        *buf = 138412546;
        v63 = v50;
        v64 = 2112;
        v65 = v56;
        _os_log_impl(&dword_22506F000, v47, OS_LOG_TYPE_INFO, "Public sharing identity for share %@ is %@", buf, 0x16u);
      }
    }
  }

  objc_msgSend__performCallbackForURL_withShare_error_(*(a1 + 40), v17, *(a1 + 48), *(a1 + 32), *(*(*(a1 + 56) + 8) + 40));
  v59 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v57, v58);
  dispatch_group_leave(v59);

  v60 = *MEMORY[0x277D85DE8];
}

void sub_2252252A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  objc_destroyWeak((v44 + 40));
  objc_destroyWeak((v44 + 32));
  objc_destroyWeak((v43 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a43);
  _Unwind_Resume(a1);
}

void sub_225225300(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleShareURLAccepted_forShare_responseCode_(WeakRetained, v10, v9, v8, v7);
}

void sub_22522538C(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = v9;
      v15 = objc_msgSend_error(v3, v13, v14);
      v20 = 138412290;
      v21 = v15;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Error accepting shares: %@", &v20, 0xCu);
    }

    v16 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v17, v16);
  }

  v18 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
  dispatch_group_leave(v18);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_225225830(id *a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (!v5 || v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 138412290;
    v51 = v9;
    v30 = "Couldn't pull pcsData off fetched share, re-fetching: %@";
    v31 = v27;
    v32 = 12;
    goto LABEL_13;
  }

  v10 = objc_msgSend_publicPCS(v5, v7, v8);
  if (!v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v30 = "Fetched share's PCS data lacked publicPCS, re-fetching";
    v31 = v33;
    v32 = 2;
LABEL_13:
    _os_log_impl(&dword_22506F000, v31, OS_LOG_TYPE_INFO, v30, buf, v32);
LABEL_14:
    v34 = objc_msgSend_container(a1[5], v28, v29);
    v37 = objc_msgSend_pcsCache(v34, v35, v36);
    v40 = objc_msgSend_share(a1[6], v38, v39);
    v43 = objc_msgSend_recordID(v40, v41, v42);
    v44 = a1[5];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_225225AFC;
    v47[3] = &unk_27854A708;
    v47[4] = v44;
    v48 = a1[6];
    v49 = a1[4];
    objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v37, v45, v43, v44, 0, v47);

    goto LABEL_15;
  }

  v13 = v10;
  v14 = a1[4];
  v15 = objc_msgSend_container(a1[5], v11, v12);
  v18 = objc_msgSend_pcsManager(v15, v16, v17);
  objc_msgSend__decryptDataWithPCSBlob_pcsManager_(v14, v19, v13, v18);

  v22 = objc_msgSend_acceptedInProcess(a1[4], v20, v21);
  objc_msgSend_setAcceptedInProcess_(a1[6], v23, v22);
  v26 = objc_msgSend_stateTransitionGroup(a1[5], v24, v25);
  dispatch_group_leave(v26);

LABEL_15:
  v46 = *MEMORY[0x277D85DE8];
}

void sub_225225AFC(void **a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (!v5 || (v9 = objc_msgSend_publicPCS(v5, v6, v7), v8) || !v9)
  {
    v17 = objc_msgSend_container(a1[4], v6, v7);
    v20 = objc_msgSend_pcsManager(v17, v18, v19);
    v23 = objc_msgSend_share(a1[5], v21, v22);
    v26 = objc_msgSend_publicProtectionData(v23, v24, v25);
    v29 = objc_msgSend_privateToken(a1[5], v27, v28);
    v43 = 0;
    v10 = objc_msgSend_createSharePCSFromData_sharePrivateKey_error_(v20, v30, v26, v29, &v43);
    v13 = v43;

    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    v31 = a1[6];
    v32 = objc_msgSend_container(a1[4], v11, v12);
    v35 = objc_msgSend_pcsManager(v32, v33, v34);
    objc_msgSend__decryptDataWithPCSBlob_pcsManager_(v31, v36, v10, v35);

    v39 = objc_msgSend_acceptedInProcess(a1[6], v37, v38);
    objc_msgSend_setAcceptedInProcess_(a1[5], v40, v39);
    CFRelease(v10);
    goto LABEL_11;
  }

  v10 = objc_msgSend_publicPCS(v5, v6, v7);
  CFRetain(v10);
  v13 = 0;
  if (v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v45 = v13;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Warn: Couldn't create share PCS data while accepting metadata: %@", buf, 0xCu);
  }

LABEL_11:
  v41 = objc_msgSend_stateTransitionGroup(a1[4], v15, v16);
  dispatch_group_leave(v41);

  v42 = *MEMORY[0x277D85DE8];
}

void sub_225226098(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  objc_initWeak(&from, *(a1 + 32));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22522622C;
  v12[3] = &unk_27854A730;
  v13 = *(a1 + 40);
  objc_copyWeak(&v14, &from);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v4, v12);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_225226384;
  v8[3] = &unk_278546EE0;
  objc_copyWeak(&v11, &location);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  objc_msgSend_setCompletionBlock_(v3, v7, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2252261F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_22522622C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = a4;
  v10 = a2;
  v12 = objc_msgSend_objectForKeyedSubscript_(v8, v11, v7);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v17 = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Accepted share %@ fetched for URL %@", &v17, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__performCallbackForURL_withShare_error_(WeakRetained, v15, v12, v10, v9);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_225226384(void **a1)
{
  v46 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  v6 = *MEMORY[0x277CBC878];
  v7 = *MEMORY[0x277CBC880];
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v11 = v8;
      v14 = objc_msgSend_error(WeakRetained, v12, v13);
      *buf = 138412290;
      v45 = v14;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Warn: Error while fetching accepted shares: %@", buf, 0xCu);
    }

    v15 = objc_msgSend_error(WeakRetained, v9, v10);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "All accepted shares were fetched successfully", buf, 2u);
    }

    v15 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 2003, @"Couldn't fetch accepted share from the server");
  }

  v20 = v15;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = objc_msgSend_allKeys(a1[4], v16, v17, 0);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v39, v43, 16);
  if (v23)
  {
    v25 = v23;
    v26 = *v40;
    do
    {
      v27 = 0;
      do
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = objc_msgSend_objectForKeyedSubscript_(a1[4], v24, *(*(&v39 + 1) + 8 * v27));
        v31 = objc_msgSend_acceptedShareURLsToFetch(a1[5], v29, v30);
        v33 = objc_msgSend_containsObject_(v31, v32, v28);

        if (v33)
        {
          objc_msgSend__performCallbackForURL_withShare_error_(a1[5], v34, v28, 0, v20);
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v39, v43, 16);
    }

    while (v25);
  }

  v37 = objc_msgSend_stateTransitionGroup(a1[5], v35, v36);
  dispatch_group_leave(v37);

  v38 = *MEMORY[0x277D85DE8];
}

void sub_225227328(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CBC878];
  v7 = *MEMORY[0x277CBC880];
  if (v5 || !a2)
  {
    if (v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v10 = v17;
      v13 = objc_msgSend_share(v19, v20, v21);
      v16 = objc_msgSend_recordID(v13, v22, v23);
      v24 = 138412546;
      v25 = v16;
      v26 = 2112;
      v27 = v5;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Error decrypting the invited PCS on share %@: %@", &v24, 0x16u);
      goto LABEL_7;
    }
  }

  else
  {
    if (v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v13 = objc_msgSend_share(v9, v11, v12);
      v16 = objc_msgSend_recordID(v13, v14, v15);
      v24 = 138412290;
      v25 = v16;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Successfully decrypted the invited PCS on share %@", &v24, 0xCu);
LABEL_7:
    }
  }

  (*(*(a1 + 40) + 16))();

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2252287F8(uint64_t a1, int a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v6 || !a2)
  {
    if (v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 32);
      v33 = v20;
      v36 = objc_msgSend_share(v32, v34, v35);
      v39 = objc_msgSend_recordID(v36, v37, v38);
      *buf = 138412290;
      v41 = v39;
      _os_log_error_impl(&dword_22506F000, v33, OS_LOG_TYPE_ERROR, "Couldn't decrypt invited PCS blob for share %@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v22 = *(*(*(a1 + 56) + 8) + 40);
    if (!v22)
    {
      v23 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v21, *MEMORY[0x277CBC120], 5004, @"Can not accept share at URL %@ because we couldn't decrypt the share as an invited user", *(a1 + 40));
      v24 = *(*(a1 + 56) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v22 = *(*(*(a1 + 56) + 8) + 40);
    }

    objc_msgSend__performCallbackForURL_withShare_error_(*(a1 + 48), v21, *(a1 + 40), 0, v22);
    v28 = objc_msgSend_shareMetadatasToAcceptByURL(*(a1 + 48), v26, v27);
    objc_msgSend_removeObjectForKey_(v28, v29, *(a1 + 40));
  }

  else
  {
    if (v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 32);
      v13 = v9;
      v16 = objc_msgSend_share(v12, v14, v15);
      v19 = objc_msgSend_recordID(v16, v17, v18);
      *buf = 138412290;
      v41 = v19;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "We were able to decrypt the private PCS for share %@", buf, 0xCu);
    }
  }

  v30 = objc_msgSend_stateTransitionGroup(*(a1 + 48), v10, v11);
  dispatch_group_leave(v30);

  v31 = *MEMORY[0x277D85DE8];
}

void sub_225228DAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_225228DD8(uint64_t a1, char a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v7, v8);
  v9 = *MEMORY[0x277CBC878];
  v10 = *MEMORY[0x277CBC880];
  if (v5 || (a2 & 1) == 0)
  {
    if (v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 32);
      *buf = 138543618;
      v45 = v18;
      v46 = 2112;
      v47 = v5;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "User key sync failed for operation %{public}@ with error %@.", buf, 0x16u);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = objc_msgSend_URLsWaitingKRSByServiceType(*(a1 + 40), v16, v17, 0);
    v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, *(a1 + 48));

    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v39, v43, 16);
    if (v23)
    {
      v25 = v23;
      v26 = *v40;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v21);
          }

          v28 = *(*(&v39 + 1) + 8 * i);
          objc_msgSend__performCallbackForURL_withShare_error_(*(a1 + 40), v24, v28, 0, v5);
          v31 = objc_msgSend_shareMetadatasToAcceptByURL(*(a1 + 40), v29, v30);
          objc_msgSend_removeObjectForKey_(v31, v32, v28);
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v39, v43, 16);
      }

      while (v25);
    }
  }

  else
  {
    if (v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      *buf = 138543362;
      v45 = v14;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "User key sync succeeded for operation %{public}@", buf, 0xCu);
    }
  }

  v33 = objc_msgSend_URLsWaitingKRSByServiceType(*(a1 + 40), v12, v13);
  objc_msgSend_removeObjectForKey_(v33, v34, *(a1 + 48));

  v37 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v35, v36);
  dispatch_group_leave(v37);

  v38 = *MEMORY[0x277D85DE8];
}

void sub_225229A70(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, *(a1 + 48));
  }
}

void sub_225229AF8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, *(a1 + 48));
  }
}

void sub_225229B80(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, *(a1 + 48));
  }
}

void sub_225229C08(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_225229D64;
  v15[3] = &unk_27854A7D0;
  v15[4] = *(a1 + 32);
  objc_msgSend_setShareMetadataFetchedBlock_(v3, v4, v15);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_225229EAC;
  v12 = &unk_2785476F0;
  objc_copyWeak(&v14, &location);
  v13 = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v5, &v9);
  v8 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v6, v7, v9, v10, v11, v12);
  dispatch_group_enter(v8);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_225229D3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_225229D64(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = v9;
  if (v7)
  {
    if (!v8 || v9)
    {
      if (!v9)
      {
        v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 2003, @"Couldn't get metadata for the share with url %@", v7);
      }

      objc_msgSend__performCallbackForURL_withShare_error_(*(a1 + 32), v10, v7, 0, v12);
    }

    else
    {
      v12 = objc_msgSend_shareMetadatasToAcceptByURL(*(a1 + 32), v10, v11);
      objc_msgSend_setObject_forKeyedSubscript_(v12, v13, v8, v7);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "Missing shareURL in shareMetadataFetchedBlock", buf, 2u);
    }
  }
}

void sub_225229EAC(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v9 = @" with error ";
    v10 = &stru_28385ED00;
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v9 = &stru_28385ED00;
    }

    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Done fetching all share metadata%{public}@%@", &v14, 0x16u);
  }

  if (v5)
  {
    v11 = objc_msgSend_error(*(a1 + 32), v7, v8);

    if (!v11)
    {
      objc_msgSend_setError_(*(a1 + 32), v7, v5);
    }
  }

  v12 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v7, v8);
  dispatch_group_leave(v12);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22522A134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22522A158(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
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
      v10 = 138412290;
      v11 = v3;
      _os_log_error_impl(&dword_22506F000, v4, OS_LOG_TYPE_ERROR, "Failing to accept anonymous share. %@", &v10, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22522ABD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_22522AC0C(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a2)
  {
    v5 = PCSFPCopyCurrentPrivateKey();
    v8 = objc_msgSend_container(*(a1 + 32), v6, v7);
    v11 = objc_msgSend_pcsManager(v8, v9, v10);
    v12 = *(*(a1 + 40) + 8);
    obj = *(v12 + 40);
    v14 = objc_msgSend_dataFromSharingIdentity_error_(v11, v13, v5, &obj);
    objc_storeStrong((v12 + 40), obj);

    if (v5)
    {
      CFRelease(v5);
    }

    if (v14 && !*(*(*(a1 + 40) + 8) + 40))
    {
      v23 = objc_msgSend_CKBase64URLSafeString(v14, v15, v16);
      v26 = objc_msgSend_baseToken(WeakRetained, v24, v25);
      if (!objc_msgSend_length(v26, v27, v28))
      {

        v26 = 0;
      }

      v30 = objc_msgSend_fullTokenFromBaseToken_privateToken_(MEMORY[0x277CBC5A0], v29, v26, v23);
      v32 = objc_msgSend_shortSharingTokenFromFullToken_(WeakRetained, v31, v30);
      objc_msgSend_setShortToken_(WeakRetained, v33, v32);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v34 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v40 = v34;
        v43 = objc_msgSend_shortToken(WeakRetained, v41, v42);
        *buf = 138543362;
        v46 = v43;
        _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "OON short token reconstructed: %{public}@", buf, 0xCu);
      }

      v37 = objc_msgSend_stateTransitionGroup(WeakRetained, v35, v36);
      dispatch_group_leave(v37);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v17 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v38 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v46 = v38;
        _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "OON share reconstruct: pcs to data conversion failed: %@", buf, 0xCu);
      }

      objc_msgSend_setError_(WeakRetained, v18, *(*(*(a1 + 40) + 8) + 40));
    }
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
      v39 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412290;
      v46 = v39;
      _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "OON share reconstruct: selfAdded failed to decrypt: %@", buf, 0xCu);
    }

    v14 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 8003, *(*(*(a1 + 40) + 8) + 40), @"encryptedKey failed to decrypt");
    objc_msgSend_setError_(WeakRetained, v21, v14);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22522B268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22522B288(uint64_t a1, int a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    if (v5)
    {
      v26 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, *(a1 + 48), *(a1 + 32), @"CKDCompleteParticipantVettingOperation.m", 190, @"Vetting token got validated fine, but we got an error: %@", v8);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = v9;
      v16 = objc_msgSend_vettingToken(v12, v14, v15);
      *buf = 138543362;
      v29 = v16;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Vetting token: %{public}@ validated.", buf, 0xCu);
    }
  }

  else
  {
    v17 = MEMORY[0x277CBC560];
    v18 = *MEMORY[0x277CBC120];
    v19 = objc_msgSend_vettingToken(*(*(*(a1 + 40) + 8) + 40), v6, v7);
    v21 = v19;
    if (v8)
    {
      v22 = objc_msgSend_errorWithDomain_code_error_format_(v17, v20, v18, 8011, v8, @"Vetting token %@ validation failed due to auth error", v19);

      v8 = v22;
    }

    else
    {
      v8 = objc_msgSend_errorWithDomain_code_format_(v17, v20, v18, 8002, @"Vetting token %@ invalid. Likely expired.", v19);
    }

    objc_msgSend_setError_(*(*(*(a1 + 40) + 8) + 40), v23, v8);
  }

  v24 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v10, v11);
  dispatch_group_leave(v24);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22522B650(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_2250740A0;
  v19[4] = sub_2250735DC;
  v20 = 0;
  objc_msgSend_setForceDSRefetch_(v3, v4, 1);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22522B870;
  v17[3] = &unk_27854A880;
  objc_copyWeak(&v18, &location);
  v17[4] = *(a1 + 32);
  v17[5] = v19;
  objc_msgSend_setShareMetadataFetchedBlock_(v3, v5, v17);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_22522B9D8;
  v13 = &unk_278549810;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  v14 = v19;
  objc_msgSend_setCompletionBlock_(v3, v6, &v10);
  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v7, v8, v10, v11, v12, v13);
  dispatch_group_enter(v9);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v18);
  _Block_object_dispose(v19, 8);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_22522B81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v15 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v17 - 64));
  objc_destroyWeak((v17 - 56));
  _Unwind_Resume(a1);
}

void sub_22522B870(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    objc_msgSend_setShareMetadata_(WeakRetained, v9, v6);
    v13 = objc_msgSend_callbackQueue(v10, v11, v12);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22522B978;
    v14[3] = &unk_278545898;
    v14[4] = *(a1 + 32);
    v15 = v6;
    dispatch_async(v13, v14);
  }
}

void sub_22522B978(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_verifyProgressShareMetadataFetchedBlock(*(a1 + 32), a2, a3);
  if (v4)
  {
    v5 = v4;
    v4[2](v4, *(a1 + 40));
    v4 = v5;
  }
}

void sub_22522B9D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v5 = objc_msgSend_error(v2, v3, v4);

  v8 = *(*(a1 + 32) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11 || (objc_storeStrong(v9, v5), (v10 = *(*(*(a1 + 32) + 8) + 40)) != 0))
  {
    v12 = MEMORY[0x277CBC560];
    v13 = *MEMORY[0x277CBC120];
    v14 = objc_msgSend_shortToken(WeakRetained, v6, v7);
    v16 = objc_msgSend_errorWithDomain_code_error_format_(v12, v15, v13, 8012, v10, @"Couldn't force fetch share metadata for share: %@", v14);
    v17 = *(*(a1 + 32) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    objc_msgSend_setError_(WeakRetained, v19, v5);
  }

  v20 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v20);
}

void sub_22522C1C0(uint64_t a1, char a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = v5;
  if ((a2 & 1) == 0)
  {
    if (!v5)
    {
      v39 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v39, v40, *(a1 + 56), *(a1 + 32), @"CKDCompleteParticipantVettingOperation.m", 300, @"OON key-swap validation failed, but without error");
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 40);
      v29 = v23;
      v32 = objc_msgSend_participantID(v28, v30, v31);
      v35 = objc_msgSend_share(*(a1 + 48), v33, v34);
      v38 = objc_msgSend_recordID(v35, v36, v37);
      v41 = 138412802;
      v42 = v32;
      v43 = 2112;
      v44 = v38;
      v45 = 2112;
      v46 = v8;
      _os_log_error_impl(&dword_22506F000, v29, OS_LOG_TYPE_ERROR, "Failed to create protection info in OON key-swap for participantID: %@, recordID: %@, error: %@", &v41, 0x20u);
    }

    v13 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 8009, v8, @"Dryrun OON keyswap failed");
    objc_msgSend_setError_(*(a1 + 32), v25, v13);
    goto LABEL_13;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    v13 = v9;
    v16 = objc_msgSend_participantID(v12, v14, v15);
    v19 = objc_msgSend_share(*(a1 + 48), v17, v18);
    v22 = objc_msgSend_recordID(v19, v20, v21);
    v41 = 138412546;
    v42 = v16;
    v43 = 2112;
    v44 = v22;
    _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Created protection info in OON key-swap for participantID: %@, recordID: %@", &v41, 0x16u);

LABEL_13:
  }

  v26 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v10, v11);
  dispatch_group_leave(v26);

  v27 = *MEMORY[0x277D85DE8];
}

void sub_22522CB0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_declineCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_declineCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_22522D39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void sub_22522D3F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleShareURLDeclined_responseCode_(WeakRetained, v7, v6, v5);
}

void sub_22522D46C(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = v9;
      v15 = objc_msgSend_error(v3, v13, v14);
      v20 = 138412290;
      v21 = v15;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Error declining shares: %@", &v20, 0xCu);
    }

    v16 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v17, v16);
  }

  v18 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
  dispatch_group_leave(v18);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22522DEE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_shareMetadataFetchedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_shareMetadataFetchedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }
}

void sub_22522EB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, id a28)
{
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a28);
  _Unwind_Resume(a1);
}

void sub_22522EB8C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend__handleTokenResolveWithLookupInfo_shareMetadata_responseCode_urlByShortTokenLookupInfos_tokensToFetchByURL_(WeakRetained, v10, v9, v8, v7, *(a1 + 32), *(a1 + 40));
}

void sub_22522EC1C(void **a1)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  v6 = objc_msgSend_error(v3, v4, v5);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v10 = @" with error ";
    v11 = &stru_28385ED00;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v10 = &stru_28385ED00;
    }

    *buf = 138543618;
    v40 = v10;
    v41 = 2112;
    v42 = v11;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Short token metadata request finished%{public}@%@", buf, 0x16u);
  }

  v12 = objc_msgSend_container(a1[4], v8, v9);
  objc_msgSend_clientSDKVersion(v12, v13, v14);
  v15 = CKLinkCheck32f5805a68adfc1b65f94a0de69aa32177c7cd24();

  if (*MEMORY[0x277CBC810] == 1)
  {
    v18 = objc_msgSend_unitTestOverrides(a1[4], v16, v17);
    v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"LegacyErrorHandling");
    v23 = objc_msgSend_BOOLValue(v20, v21, v22);

    if (v23)
    {
      if (!v6)
      {
        goto LABEL_24;
      }

LABEL_16:
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v25 = objc_msgSend_allKeys(a1[5], v16, v17, 0);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v34, v38, 16);
      if (v27)
      {
        v29 = v27;
        v30 = *v35;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v35 != v30)
            {
              objc_enumerationMutation(v25);
            }

            objc_msgSend__performCallbackForURL_withMetadata_error_(WeakRetained, v28, *(*(&v34 + 1) + 8 * i), 0, v6);
          }

          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v34, v38, 16);
        }

        while (v29);
      }

      goto LABEL_24;
    }
  }

  if (!v6)
  {
    goto LABEL_24;
  }

  if (!v15)
  {
    goto LABEL_16;
  }

  v24 = objc_msgSend_error(WeakRetained, v16, v17);

  if (!v24)
  {
    objc_msgSend_setError_(WeakRetained, v16, v6);
  }

LABEL_24:
  v32 = objc_msgSend_stateTransitionGroup(WeakRetained, v16, v17);
  dispatch_group_leave(v32);

  v33 = *MEMORY[0x277D85DE8];
}

void sub_22522F71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v34 + 56));
  objc_destroyWeak(&a34);
  objc_destroyWeak((v35 - 144));
  _Unwind_Resume(a1);
}

void sub_22522F754(uint64_t a1)
{
  v85 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_participantStatus(*(a1 + 32), v2, v3) == 2)
  {
    v5 = objc_msgSend_parentOperation(WeakRetained, v2, v3);
    v7 = objc_msgSend_checkAndClearUnitTestOverrides_(v5, v6, @"ForceShareAcceptTwice");

    if (v7)
    {
      objc_msgSend_setParticipantStatus_(*(a1 + 32), v2, 1);
    }
  }

  v8 = objc_msgSend_privateTokenData(*(a1 + 40), v2, v3);
  objc_msgSend_setPrivateToken_(*(a1 + 32), v9, v8);

  v12 = objc_msgSend_publicTokenData(*(a1 + 40), v10, v11);
  objc_msgSend_setPublicToken_(*(a1 + 32), v13, v12);

  v16 = objc_msgSend_container(WeakRetained, v14, v15);
  v19 = objc_msgSend_entitlements(v16, v17, v18);
  hasDisplaysSystemAcceptPromptEntitlement = objc_msgSend_hasDisplaysSystemAcceptPromptEntitlement(v19, v20, v21);
  objc_msgSend_setAcceptedInProcess_(*(a1 + 32), v23, hasDisplaysSystemAcceptPromptEntitlement ^ 1u);

  if (objc_msgSend_overwriteContainerPCSServiceIfManatee(WeakRetained, v24, v25))
  {
    v28 = objc_msgSend_callingParticipant(*(a1 + 32), v26, v27);
    v31 = objc_msgSend_userIdentity(v28, v29, v30);
    v34 = objc_msgSend_publicKeyVersion(v31, v32, v33);

    v35 = PCSServiceItemGetNameByIndex();
    if (objc_msgSend_length(v35, v36, v37) && PCSServiceItemTypeIsManatee())
    {
      v38 = objc_msgSend_container(WeakRetained, v26, v27);
      v41 = objc_msgSend_pcsManager(v38, v39, v40);
      objc_msgSend_setPCSServiceNameOverwrite_(v41, v42, v35);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v43 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v82 = v35;
        v83 = 2048;
        v84 = v34;
        _os_log_impl(&dword_22506F000, v43, OS_LOG_TYPE_INFO, "Using the service name %@ from public key version %lu of share metadata because it is manatee and this operation is initiated by another process", buf, 0x16u);
      }
    }
  }

  else
  {
    v35 = 0;
  }

  v44 = objc_msgSend_container(WeakRetained, v26, v27);
  v47 = objc_msgSend_pcsManager(v44, v45, v46);
  if ((objc_msgSend_currentServiceIsManatee(v47, v48, v49) & 1) == 0)
  {

    goto LABEL_23;
  }

  v52 = objc_msgSend_callingParticipant(*(a1 + 32), v50, v51);
  v55 = objc_msgSend_acceptanceStatus(v52, v53, v54);

  if (v55 != 1)
  {
LABEL_23:
    objc_msgSend__continueSharePCSPrepForShareMetadata_shareURL_(WeakRetained, v56, *(a1 + 32), *(a1 + 56));
    goto LABEL_29;
  }

  if (*(a1 + 48) && (objc_msgSend_overwriteContainerPCSServiceIfManatee(WeakRetained, v56, v57) & 1) == 0)
  {
    v58 = objc_msgSend_shareURL(*(a1 + 48), v56, v57);
    isEqual = objc_msgSend_isEqual_(v58, v59, *(a1 + 56));

    v61 = *MEMORY[0x277CBC878];
    v62 = *MEMORY[0x277CBC880];
    if (isEqual)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v61);
      }

      v63 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v64 = *(a1 + 56);
        *buf = 138412290;
        v82 = v64;
        _os_log_debug_impl(&dword_22506F000, v63, OS_LOG_TYPE_DEBUG, "Share invitation token and client-provided share URL are a match: %@", buf, 0xCu);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v61);
      }

      v65 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v71 = *(a1 + 48);
        v72 = v65;
        v75 = objc_msgSend_shareURL(v71, v73, v74);
        v76 = *(a1 + 56);
        *buf = 138412546;
        v82 = v75;
        v83 = 2112;
        v84 = v76;
        _os_log_error_impl(&dword_22506F000, v72, OS_LOG_TYPE_ERROR, "Share invitation token URL %@ doesn't match client-provided share URL %@. This will go badly.", buf, 0x16u);
      }
    }
  }

  v66 = objc_msgSend_stateTransitionGroup(WeakRetained, v56, v57);
  dispatch_group_enter(v66);

  v67 = *(a1 + 32);
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = sub_22522FC24;
  v77[3] = &unk_27854A948;
  v68 = *(a1 + 48);
  v78 = *(a1 + 56);
  v79 = WeakRetained;
  v80 = *(a1 + 32);
  objc_msgSend__prepPPPCSDataForDugongShareMetadata_withInvitationToken_completionHandler_(WeakRetained, v69, v67, v68, v77);

LABEL_29:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_22522FC24(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *MEMORY[0x277CBC878];
  v9 = *MEMORY[0x277CBC880];
  if (!v5 || v6)
  {
    if (v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      *buf = 138412546;
      v25 = v23;
      v26 = 2112;
      v27 = v7;
      _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Warn: Couldn't ingest manatee sharing invitation data for share %@: %@", buf, 0x16u);
      if (v7)
      {
        goto LABEL_13;
      }
    }

    else if (v7)
    {
LABEL_13:
      objc_msgSend__performCallbackForURL_withMetadata_error_(*(a1 + 40), v20, *(a1 + 32), 0, v7);
      goto LABEL_14;
    }

    v7 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 1000, @"No participant protection data for share %@", *(a1 + 32));
    goto LABEL_13;
  }

  if (v9 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v8);
  }

  v10 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    *buf = 138412290;
    v25 = v13;
    _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Successfully ingested manatee sharing invitation data for share %@", buf, 0xCu);
  }

  v14 = objc_msgSend_callingParticipant(*(a1 + 48), v11, v12);
  objc_msgSend_setProtectionInfo_(v14, v15, v5);

  objc_msgSend__continueSharePCSPrepForShareMetadata_shareURL_(*(a1 + 40), v16, *(a1 + 48), *(a1 + 32));
  v7 = 0;
LABEL_14:
  v21 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v17, v18);
  dispatch_group_leave(v21);

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22522FE38(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a2)
  {
    v7 = objc_msgSend_callingParticipant(*(a1 + 40), v4, v5);
    v10 = objc_msgSend_permission(v7, v8, v9);
    objc_msgSend_setParticipantPermission_(*(a1 + 40), v11, v10);

    v14 = objc_msgSend_callingParticipant(*(a1 + 40), v12, v13);
    v17 = objc_msgSend_acceptanceStatus(v14, v15, v16);
    objc_msgSend_setParticipantStatus_(*(a1 + 40), v18, v17);

    v21 = objc_msgSend_callingParticipant(*(a1 + 40), v19, v20);
    v24 = objc_msgSend_role(v21, v22, v23);
    objc_msgSend_setParticipantRole_(*(a1 + 40), v25, v24);

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Couldn't find current user on share with anonymous to server participants. Swizzling into share not found.", buf, 2u);
    }

    v30 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v29, *MEMORY[0x277CBC120], 2003, @"Couldn't find this participant on the share for %@", *(a1 + 32));
    objc_msgSend__performCallbackForURL_withMetadata_error_(WeakRetained, v31, *(a1 + 32), 0, v30);
  }

  v32 = objc_msgSend_stateTransitionGroup(WeakRetained, v26, v27);
  dispatch_group_leave(v32);
}

void sub_2252302CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225230300(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (*MEMORY[0x277CBC810] == 1)
  {
    v9 = objc_msgSend_unitTestOverrides(WeakRetained, v6, v7);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"ForceSharePCSPrepFailure");
    v14 = objc_msgSend_BOOLValue(v11, v12, v13);

    if (v14)
    {
      v16 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 5004, @"Failing share PCS prep for unit tests");

      v4 = v16;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v19 = *(a1 + 32);
    v20 = v17;
    v23 = objc_msgSend_share(v19, v21, v22);
    v26 = objc_msgSend_recordID(v23, v24, v25);
    v29 = objc_msgSend_container(v8, v27, v28);
    v30 = v29;
    v31 = @" and error: ";
    *v37 = 138413058;
    v32 = &stru_28385ED00;
    *&v37[4] = v26;
    *&v37[12] = 2112;
    if (!v4)
    {
      v31 = &stru_28385ED00;
    }

    *&v37[14] = v29;
    if (v4)
    {
      v32 = v4;
    }

    *&v37[22] = 2114;
    v38 = v31;
    v39 = 2112;
    v40 = v32;
    _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Prepped PCS data for share %@ with container %@%{public}@%@", v37, 0x2Au);
  }

  objc_msgSend__continueHandlingFetchedShareMetadata_shareURL_(v8, v18, *(a1 + 32), *(a1 + 40), *v37, *&v37[16]);
  v35 = objc_msgSend_stateTransitionGroup(v8, v33, v34);
  dispatch_group_leave(v35);

  v36 = *MEMORY[0x277D85DE8];
}

void sub_225230C24(uint64_t a1, void *a2)
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

void sub_2252311E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 136));
  _Unwind_Resume(a1);
}

void sub_225231218(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (*MEMORY[0x277CBC810] == 1)
  {
    v9 = objc_msgSend_unitTestOverrides(WeakRetained, v6, v7);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"ForceSharePCSPrepFailure");
    v14 = objc_msgSend_BOOLValue(v11, v12, v13);

    if (v14)
    {
      v16 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 5004, @"Failing share PCS prep for unit tests");

      v4 = v16;
    }
  }

  v17 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = MEMORY[0x277CBC858];
  v19 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    v21 = v19;
    v24 = objc_msgSend_share(v20, v22, v23);
    v27 = objc_msgSend_recordID(v24, v25, v26);
    v28 = *(a1 + 40);
    v29 = @" and error: ";
    v30 = &stru_28385ED00;
    *buf = 138413058;
    v49 = v27;
    if (!v4)
    {
      v29 = &stru_28385ED00;
    }

    v50 = 2112;
    if (v4)
    {
      v30 = v4;
    }

    v51 = v28;
    v52 = 2112;
    v53 = v29;
    v54 = 2112;
    v55 = v30;
    _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Prepped PCS data for share %@ with container %@%@%@", buf, 0x2Au);
  }

  if (!v4)
  {
    goto LABEL_20;
  }

  if (CKIsPCSError() && (objc_msgSend__currentUserIsOONForShareMetadata_(v8, v31, *(a1 + 32)) & 1) != 0)
  {
    if (*v17 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = v4;
      _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, "Suppressing error for OON user share metadata fetch. Error was: %@", buf, 0xCu);
    }

LABEL_20:
    v34 = objc_opt_class();
    v36 = *(a1 + 40);
    v35 = *(a1 + 48);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_225231588;
    v42[3] = &unk_27854AA38;
    v43 = *(a1 + 56);
    v44 = v8;
    v45 = *(a1 + 32);
    v37 = *(a1 + 72);
    v46 = *(a1 + 64);
    v47 = v37;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_spawnQueue_container_operationConfigurationBlock_(v8, v38, v34, v35, 0, v36, v42);

    v4 = v43;
    goto LABEL_24;
  }

  v39 = *(a1 + 72);
  if (v39)
  {
    (*(v39 + 16))(v39, v4);
  }

  v40 = objc_msgSend_stateTransitionGroup(v8, v31, v32);
  dispatch_group_leave(v40);

LABEL_24:
  v41 = *MEMORY[0x277D85DE8];
}

void sub_225231588(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_msgSend_setFullRecordsToFetch_(v3, v4, *(a1 + 32));
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_2250740B0;
  v28[4] = sub_2250735E4;
  v29 = 0;
  objc_initWeak(&location, v3);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2252318A4;
  v26[3] = &unk_27854A9E8;
  v26[4] = v28;
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v5, v26);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22523192C;
  v21[3] = &unk_27854AA10;
  objc_copyWeak(&v25, &location);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v24 = v28;
  v21[4] = v6;
  v22 = v7;
  v23 = *(a1 + 64);
  objc_msgSend_setCompletionBlock_(v3, v8, v21);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = objc_msgSend_operationID(v3, v10, v11);
    v14 = *(a1 + 56);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = *(a1 + 56);
    v20 = objc_msgSend_ckShortDescription(v17, v18, v19);
    *buf = 138544130;
    v31 = v13;
    v32 = 2114;
    v33 = v16;
    v34 = 2048;
    v35 = v17;
    v36 = 2114;
    v37 = v20;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Starting fetch records operation %{public}@ for <%{public}@: %p; %{public}@>", buf, 0x2Au);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  _Block_object_dispose(v28, 8);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22523185C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_2252318A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (!v11)
    {
      objc_storeStrong(v10, a4);
    }
  }
}

void sub_22523192C(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  v6 = MEMORY[0x277CBC880];
  v7 = MEMORY[0x277CBC830];
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v11 = v8;
      v14 = objc_msgSend_error(WeakRetained, v12, v13);
      v44 = 138412290;
      v45 = v14;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Error fetching records: %@", &v44, 0xCu);
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v15 = objc_msgSend_error(WeakRetained, v9, v10);
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }
  }

  if (*v6 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    v27 = v18;
    v30 = objc_msgSend_operationID(WeakRetained, v28, v29);
    v31 = *(*(*(a1 + 56) + 8) + 40);
    v32 = *(a1 + 32);
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v35 = *(a1 + 32);
    v38 = objc_msgSend_ckShortDescription(v35, v36, v37);
    v44 = 138544386;
    v45 = v30;
    v46 = 2112;
    v47 = v31;
    v48 = 2114;
    v49 = v34;
    v50 = 2048;
    v51 = v35;
    v52 = 2114;
    v53 = v38;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Fetch records operation %{public}@ completed with error: %@ for <%{public}@: %p; %{public}@>", &v44, 0x34u);
  }

  if (*(*(*(a1 + 56) + 8) + 40) && CKIsPCSError() && objc_msgSend__currentUserIsOONForShareMetadata_(*(a1 + 32), v19, *(a1 + 40)))
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
    {
      v39 = v21;
      v42 = objc_msgSend_operationID(WeakRetained, v40, v41);
      v43 = *(*(*(a1 + 56) + 8) + 40);
      v44 = 138543618;
      v45 = v42;
      v46 = 2112;
      v47 = v43;
      _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Suppressing error for OON user fetch with operationID %{public}@. Error was: %@", &v44, 0x16u);
    }

    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = 0;
  }

  v24 = *(a1 + 48);
  if (v24)
  {
    (*(v24 + 16))(v24, *(*(*(a1 + 56) + 8) + 40));
  }

  v25 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v19, v20);
  dispatch_group_leave(v25);

  v26 = *MEMORY[0x277D85DE8];
}

void sub_225233284(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_shareParticipantKeyFetchedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_shareParticipantKeyFetchedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }
}

void sub_225233970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v31 + 88));
  objc_destroyWeak((v32 - 112));
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v32 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2252339D4(uint64_t a1, uint64_t a2, void *a3)
{
  v97 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v9 = WeakRetained;
  if (a2 && !v5)
  {
    v10 = objc_msgSend_pcsManager(WeakRetained, v7, v8);
    v11 = *(*(a1 + 64) + 8);
    obj = *(v11 + 40);
    v5 = objc_msgSend_sharingIdentityDataFromPCS_error_(v10, v12, a2, &obj);
    objc_storeStrong((v11 + 40), obj);

    v15 = *(*(*(a1 + 64) + 8) + 40);
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = v5 == 0;
    }

    if (v16)
    {
      if (!v15)
      {
        v17 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 5005, @"Couldn't get sharing identity data for per-participant PCS");
        v18 = *(*(a1 + 64) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v21 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138543362;
        v96 = v21;
        _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Couldn't get sharing identity data for per-participant PCS. Error: %{public}@", buf, 0xCu);
      }

      goto LABEL_52;
    }

    v23 = MEMORY[0x277CCACA8];
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = objc_msgSend_CKBase64URLSafeString(v5, v13, v14);
    v29 = objc_msgSend_containerScopedUserID(v9, v27, v28);
    v32 = v29;
    if (v24)
    {
      v33 = objc_msgSend_recordName(*(a1 + 32), v30, v31);
      v36 = objc_msgSend_CKBase64EncodedURLSafeString(v33, v34, v35);
      v38 = objc_msgSend_stringWithFormat_(v23, v37, @"v4:%@:%@:%@:%@", v25, v26, v32, v36);
      v39 = *(*(a1 + 72) + 8);
      v40 = *(v39 + 40);
      *(v39 + 40) = v38;
    }

    else
    {
      v41 = objc_msgSend_stringWithFormat_(v23, v30, @"v2:%@:%@:%@", v25, v26, v29);
      v42 = *(*(a1 + 72) + 8);
      v33 = *(v42 + 40);
      *(v42 + 40) = v41;
    }

    v45 = objc_msgSend_deviceContext(v9, v43, v44);
    v48 = objc_msgSend_testDeviceReference(v45, v46, v47);

    if (!v48)
    {
LABEL_34:
      v71 = objc_msgSend_dataUsingEncoding_(*(*(*(a1 + 72) + 8) + 40), v49, 4);
      v74 = objc_msgSend_CKBase64URLSafeString(v71, v72, v73);
      v75 = *(*(a1 + 80) + 8);
      v76 = *(v75 + 40);
      *(v75 + 40) = v74;

      v77 = *(*(*(a1 + 80) + 8) + 40);
      v78 = *(*(*(a1 + 64) + 8) + 40);
      v22 = *(*(a1 + 56) + 16);
      goto LABEL_53;
    }

    v50 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v51 = MEMORY[0x277CBC830];
    v52 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v52, OS_LOG_TYPE_DEBUG, "Verifying decryption of the invited PCS using the exported per-participant PCS key", buf, 2u);
    }

    v55 = objc_msgSend_pcsManager(v9, v53, v54);
    v56 = *(*(a1 + 64) + 8);
    v93 = *(v56 + 40);
    v58 = objc_msgSend_createSharingIdentityFromData_error_(v55, v57, v5, &v93);
    objc_storeStrong((v56 + 40), v93);

    if (*(*(*(a1 + 64) + 8) + 40) || !v58)
    {
      if (*v50 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v79 = *v51;
      if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22506F000, v79, OS_LOG_TYPE_ERROR, "Couldn't create a participant identity from the exported per participant key", buf, 2u);
      }

      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        v81 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v80, *MEMORY[0x277CBC120], 5005, @"Couldn't create a participant identity from the exported per participant key");
        v82 = *(*(a1 + 64) + 8);
        v83 = *(v82 + 40);
        *(v82 + 40) = v81;
      }

      if (!v58)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v61 = objc_msgSend_pcsManager(v9, v59, v60);
      v64 = objc_msgSend_invitedProtectionData(*(a1 + 48), v62, v63);
      v65 = *(*(a1 + 64) + 8);
      v92 = *(v65 + 40);
      v67 = objc_msgSend_createSharePCSFromData_sharingIdentity_error_(v61, v66, v64, v58, &v92);
      objc_storeStrong((v65 + 40), v92);

      v68 = *MEMORY[0x277CBC878];
      v69 = *v50;
      if (!*(*(*(a1 + 64) + 8) + 40) && v67)
      {
        if (v69 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v68);
        }

        v70 = *v51;
        if (os_log_type_enabled(*v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v96 = v67;
          _os_log_debug_impl(&dword_22506F000, v70, OS_LOG_TYPE_DEBUG, "Successfully decrypted the share invited PCS: %@", buf, 0xCu);
        }

        CFRelease(v58);
        CFRelease(v67);
        goto LABEL_34;
      }

      if (v69 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v68);
      }

      v84 = *v51;
      if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
      {
        v91 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138543362;
        v96 = v91;
        _os_log_error_impl(&dword_22506F000, v84, OS_LOG_TYPE_ERROR, "Couldn't create a participant identity from the exported per participant key: %{public}@", buf, 0xCu);
      }

      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        v86 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v85, *MEMORY[0x277CBC120], 5005, @"Couldn't decrypt the share invitedPCS using per-participant PCS");
        v87 = *(*(a1 + 64) + 8);
        v88 = *(v87 + 40);
        *(v87 + 40) = v86;
      }

      if (v67)
      {
        CFRelease(v67);
      }
    }

    CFRelease(v58);
LABEL_52:
    v89 = *(*(*(a1 + 64) + 8) + 40);
    v22 = *(*(a1 + 56) + 16);
    goto LABEL_53;
  }

  if (!v5)
  {
    v5 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 5004, @"Couldn't decrypt our per-participant PCS");
  }

  v22 = *(*(a1 + 56) + 16);
LABEL_53:
  v22();

  v90 = *MEMORY[0x277D85DE8];
}

void sub_225234478(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__performCallbackForShareID_withParticipantKey_error_(*(a1 + 32), a2, *(a1 + 40), a2, a3);
  v6 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v4, v5);
  dispatch_group_leave(v6);
}

void sub_225234768(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2252348EC;
  v9[3] = &unk_278548CC0;
  objc_copyWeak(&v10, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v4, v9);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225234978;
  v6[3] = &unk_278548748;
  objc_copyWeak(&v7, &location);
  objc_copyWeak(&v8, &from);
  objc_msgSend_setCompletionBlock_(v3, v5, v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2252348B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2252348EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleFetchedShare_withID_error_(WeakRetained, v10, v9, v8, v7);
}

void sub_225234978(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = v4;
    v16 = objc_msgSend_operationID(WeakRetained, v14, v15);
    v21 = objc_msgSend_error(v3, v17, v18);
    if (v21)
    {
      v22 = @" with error ";
    }

    else
    {
      v22 = &stru_28385ED00;
    }

    v23 = objc_msgSend_error(v3, v19, v20);
    v24 = v23;
    *v26 = 138543874;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = &stru_28385ED00;
    }

    *&v26[4] = v16;
    v27 = 2114;
    v28 = v22;
    v29 = 2112;
    v30 = v25;
    _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Fetch share participant key operation %{public}@ finished%{public}@%@", v26, 0x20u);
  }

  v7 = objc_msgSend_error(v3, v5, v6, *v26);
  objc_msgSend_setError_(WeakRetained, v8, v7);

  v11 = objc_msgSend_stateTransitionGroup(WeakRetained, v9, v10);
  dispatch_group_leave(v11);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_225234CD8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225234E5C;
  v9[3] = &unk_278548FA8;
  objc_copyWeak(&v10, &location);
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v9);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225234FB4;
  v6[3] = &unk_278548748;
  objc_copyWeak(&v7, &location);
  objc_copyWeak(&v8, &from);
  objc_msgSend_setCompletionBlock_(v3, v5, v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_225234E20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_225234E5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v21 = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Error updating share %@ on the server: %@", &v21, 0x16u);
    }
  }

  else
  {
    v14 = objc_msgSend_shareIDs(WeakRetained, v10, v11);
    objc_msgSend_addObject_(v14, v15, v7);

    v18 = objc_msgSend_sharesNeedingUpdateByID(v12, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v18, v19, 0, v7);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_225234FB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "All shares have been updated on the server", v15, 2u);
  }

  v6 = objc_msgSend_error(WeakRetained, v4, v5);

  if (!v6)
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v12 = objc_msgSend_error(v9, v10, v11);
    objc_msgSend_setError_(WeakRetained, v13, v12);
  }

  v14 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
  dispatch_group_leave(v14);
}

void sub_2252354A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_participantVettingProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_participantVettingProgressBlock(*(a1 + 32), v5, v6);
    v7[2](v7, *(a1 + 40));
  }
}

void sub_225236518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, id a26, char a27)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a26);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_225236574(uint64_t a1, uint64_t a2, void *a3)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (objc_msgSend_code(v5, v7, v8) != 1)
  {
    v15 = MEMORY[0x277CBC560];
    v16 = *MEMORY[0x277CBC120];
    v17 = objc_msgSend_participantID(WeakRetained, v9, v10);
    a2 = objc_msgSend_errorWithDomain_code_format_(v15, v18, v16, 8010, @"Unknown error while trying to initiate vetting process for participant %@: %@", v17, v5);

    goto LABEL_23;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    if (a2 == 1)
    {
      v19 = MEMORY[0x277CBC560];
      v20 = *MEMORY[0x277CBC120];
      v58 = *MEMORY[0x277CBBF38];
      v21 = objc_msgSend_container(*(a1 + 32), v9, v10);
      v24 = objc_msgSend_account(v21, v22, v23);
      v27 = objc_msgSend_primaryEmail(v24, v25, v26);
      v59[0] = v27;
      v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v59, &v58, 1);
      v32 = objc_msgSend_participantID(WeakRetained, v30, v31);
      a2 = objc_msgSend_errorWithDomain_code_userInfo_format_(v19, v33, v20, 8007, v29, @"The address of participant %@ is already vetted to caller", v32);

      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (a2 == 2)
  {
    if (_os_feature_enabled_impl())
    {
      v35 = @"This address is vetted to a different Apple Account";
    }

    else
    {
      v35 = @"This address is vetted to a different Apple ID";
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v34, *MEMORY[0x277CBC120], 8008, v35);
    goto LABEL_22;
  }

  if (a2 == 3)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 8006, @"This account has too many vetted email addresses and another cannot be added");
    a2 = LABEL_22:;
    goto LABEL_23;
  }

  if (a2 != 5)
  {
LABEL_19:
    v36 = MEMORY[0x277CBC560];
    v37 = *MEMORY[0x277CBC120];
    v38 = objc_msgSend_participantID(WeakRetained, v9, v10);
    a2 = objc_msgSend_errorWithDomain_code_format_(v36, v39, v37, 8001, @"Error code %ld while trying to initiate vetting process for participant %@", a2, v38);

    goto LABEL_23;
  }

  v11 = *MEMORY[0x277CBC878];
  v12 = *MEMORY[0x277CBC880];
  if (*(a1 + 56))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Received LoginRequired from the server, but this was a second attempt, not trying to re-authenticate the user again", buf, 2u);
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 2012, @"Unable to vet due to failed authentification even after successful authentication attempt, giving up");
    goto LABEL_22;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v11);
  }

  v41 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Received LoginRequired from the server, trying to re-authenticate the user", buf, 2u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v55 = objc_msgSend_address(WeakRetained, v42, v43);
  v44 = CKLocalizedString();

  v47 = objc_msgSend_container(*(a1 + 32), v45, v46, v55);
  v50 = objc_msgSend_account(v47, v48, v49);
  v53 = objc_msgSend_container(*(a1 + 32), v51, v52);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_225236A28;
  v56[3] = &unk_27854AAD8;
  v56[4] = WeakRetained;
  objc_msgSend_renewCloudKitAuthTokenWithReason_shouldForce_container_failedToken_completionHandler_(v50, v54, v44, 1, v53, 0, v56);

  a2 = 0;
LABEL_23:
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    objc_msgSend__handleVettingInitiationProgress_(WeakRetained, v9, a2);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_225236A28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a3 || !a2)
  {
    v8 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 2012, a3, @"User session has expired and we were unable to re-authenticate user during vetting");
    objc_msgSend__handleVettingInitiationProgress_(*(a1 + 32), v6, v8);
    objc_msgSend_finishWithError_(*(a1 + 32), v7, v8);
  }

  else
  {
    v5 = *(a1 + 32);

    objc_msgSend__sendRequest_(v5, a2, 1, a4, 0);
  }
}

void sub_225236ADC(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = objc_loadWeakRetained((a1 + 48));
    v6 = objc_msgSend_error(v3, v4, v5);
    objc_msgSend_finishWithError_(WeakRetained, v7, v6);
  }
}

void sub_2252370B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_bundleIDsFetchedBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

void sub_22523739C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2252374F8;
  v15[3] = &unk_27854A7D0;
  v15[4] = *(a1 + 32);
  objc_msgSend_setShareMetadataFetchedBlock_(v3, v4, v15);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_225237674;
  v12 = &unk_2785476F0;
  objc_copyWeak(&v14, &location);
  v13 = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v5, &v9);
  v8 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v6, v7, v9, v10, v11, v12);
  dispatch_group_enter(v8);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_2252374D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2252374F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = v9;
  if (!v8 || v9)
  {
    if (!v9)
    {
      v11 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 2003, @"Couldn't get metadata for the share with url %@", v7);
    }

    objc_msgSend__performCallbackForURL_withAppBundleIDs_daemonBundleIDs_error_(*(a1 + 32), v10, v7, 0, 0, v11);
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
      v18 = v7;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Fetched share metadata for URL: %@", buf, 0xCu);
    }

    v11 = objc_msgSend_shareMetadatasByURL(*(a1 + 32), v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v15, v8, v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_225237674(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v9 = @" with error ";
    v10 = &stru_28385ED00;
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v9 = &stru_28385ED00;
    }

    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Done fetching all share metadata%{public}@%@", &v14, 0x16u);
  }

  if (v5)
  {
    v11 = objc_msgSend_error(*(a1 + 32), v7, v8);

    if (!v11)
    {
      objc_msgSend_setError_(*(a1 + 32), v7, v5);
    }
  }

  v12 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v7, v8);
  dispatch_group_leave(v12);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_225237B54(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_225237C34;
  v5[3] = &unk_278546EE0;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v4, v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_225237C18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_225237C34(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = objc_msgSend_bundleIDs(WeakRetained, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v41, v51, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v42;
    v13 = *MEMORY[0x277CBC978];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        if (objc_msgSend_hasPrefix_(v15, v10, v13))
        {
          v18 = objc_msgSend_length(v13, v16, v17);
          v20 = objc_msgSend_substringFromIndex_(v15, v19, v18);
          if (objc_msgSend_length(v20, v21, v22))
          {
            objc_msgSend_addObject_(v4, v23, v20);
          }
        }

        else
        {
          objc_msgSend_addObject_(v3, v16, v15);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v41, v51, 16);
    }

    while (v11);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v24 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v26 = v24;
    v31 = objc_msgSend_error(WeakRetained, v27, v28);
    if (v31)
    {
      v32 = @" with error ";
    }

    else
    {
      v32 = &stru_28385ED00;
    }

    v33 = objc_msgSend_error(WeakRetained, v29, v30);
    v34 = v33;
    v35 = *(a1 + 32);
    if (v33)
    {
      v36 = v33;
    }

    else
    {
      v36 = &stru_28385ED00;
    }

    *buf = 138543874;
    v46 = v32;
    v47 = 2112;
    v48 = v36;
    v49 = 2112;
    v50 = v35;
    _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Fetched registered bundleIDs%{public}@%@ for URL %@", buf, 0x20u);
  }

  objc_msgSend__performCallbackForURL_withAppBundleIDs_daemonBundleIDs_error_(*(a1 + 40), v25, *(a1 + 32), v3, v4, 0);
  v39 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v37, v38);
  dispatch_group_leave(v39);

  v40 = *MEMORY[0x277D85DE8];
}

void sub_225238580(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_shareRequestAccessCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_shareRequestAccessCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2252391E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location)
{
  objc_destroyWeak((v50 + 40));
  objc_destroyWeak((v50 + 32));
  objc_destroyWeak((v49 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a43);
  _Unwind_Resume(a1);
}

void sub_225239238(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleShareAccessRequestedForURL_responseCode_(WeakRetained, v7, v6, v5);
}

void sub_2252392B0(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = v9;
      v15 = objc_msgSend_error(v3, v13, v14);
      v20 = 138412290;
      v21 = v15;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Error requesting access to share: %@", &v20, 0xCu);
    }

    v16 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v17, v16);
  }

  v18 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
  dispatch_group_leave(v18);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2252399B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_subscriptionFetchedProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_subscriptionFetchedProgressBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }
}

void sub_225239CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak((v18 - 72));
  _Unwind_Resume(a1);
}

void sub_225239CFC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleSubscriptionFetched_withID_responseCode_(WeakRetained, v10, v9, v8, v7);
}

void sub_225239D88(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x277CBC560];
  v6 = *MEMORY[0x277CBC120];
  v7 = sub_2253962A4(v3);
  v10 = objc_msgSend_request(WeakRetained, v8, v9);
  v11 = sub_225395734(v10, v3);
  v14 = objc_msgSend_error(v3, v12, v13);

  v17 = objc_msgSend_errorDescription(v14, v15, v16);
  v19 = objc_msgSend_errorWithDomain_code_userInfo_format_(v5, v18, v6, v7, v11, @"Error fetching all subscriptions from server: %@", v17);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v20 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v26 = v20;
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v31 = objc_msgSend_ckShortDescription(WeakRetained, v29, v30);
    *buf = 138544130;
    v33 = v28;
    v34 = 2048;
    v35 = WeakRetained;
    v36 = 2114;
    v37 = v31;
    v38 = 2112;
    v39 = v19;
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Fetch subscriptions operation <%{public}@: %p; %{public}@> hit top-level error %@", buf, 0x2Au);
  }

  v23 = objc_msgSend_error(WeakRetained, v21, v22);

  if (!v23)
  {
    objc_msgSend_setError_(WeakRetained, v24, v19);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_225239FB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (!v4)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v10 = objc_msgSend_error(v7, v8, v9);
    objc_msgSend_setError_(WeakRetained, v11, v10);
  }

  v12 = objc_msgSend_error(WeakRetained, v5, v6);
  objc_msgSend_finishWithError_(WeakRetained, v13, v12);
}

void sub_22523A69C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_saveCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_saveCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_22523A9DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_deleteCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_deleteCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_22523B124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak((v42 + 40));
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a41);
  _Unwind_Resume(a1);
}

void sub_22523BC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22523BC4C(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(*(a1 + 32), v7, v8), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v10, v11, @"FailZonePCSDecryptionOnZoneAggregation"), v12 = objc_claimAutoreleasedReturnValue(), v12, v10, v12))
  {

    v14 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 5004, 0, @"Unit test Zone PCS decryption failure");

    v6 = v14;
  }

  else if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 40);
      *buf = 138412290;
      v50 = v18;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Fetched pcs info for zone %@", buf, 0xCu);
    }

    v19 = objc_msgSend_zonePCSDataByZoneID(WeakRetained, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v19, v20, v5, *(a1 + 40));
    goto LABEL_24;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v21 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v24 = *(a1 + 40);
    *buf = 138412546;
    v50 = v24;
    v51 = 2112;
    v52 = v6;
    _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS data for zone %@: %@", buf, 0x16u);
  }

  if (v6)
  {
    v25 = objc_msgSend_error(WeakRetained, v22, v23);

    if (!v25)
    {
      if (objc_msgSend_CKIsNotFoundError(v6, v22, v23))
      {
        v30 = objc_msgSend_userInfo(v6, v26, v27);
        if (v30)
        {
          v31 = objc_msgSend_userInfo(v6, v28, v29);
          v19 = objc_msgSend_mutableCopy(v31, v32, v33);
        }

        else
        {
          v19 = objc_opt_new();
        }

        objc_msgSend_setObject_forKeyedSubscript_(v19, v35, *(a1 + 40), *MEMORY[0x277CBBF58]);
        v36 = MEMORY[0x277CBC560];
        v37 = *MEMORY[0x277CBC120];
        v40 = objc_msgSend_code(v6, v38, v39);
        v43 = objc_msgSend_localizedDescription(v6, v41, v42);
        v45 = objc_msgSend_errorWithDomain_code_userInfo_format_(v36, v44, v37, v40, v19, @"%@", v43);

        objc_msgSend_setError_(WeakRetained, v46, v45);
      }

      else
      {
        v19 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v26, *MEMORY[0x277CBC120], 5001, 0, @"Error fetching PCS data for zone %@", *(a1 + 40));
        objc_msgSend_setError_(WeakRetained, v34, v19);
      }

      v5 = 0;
LABEL_24:

      goto LABEL_25;
    }
  }

  v5 = 0;
LABEL_25:
  v47 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v22, v23);
  dispatch_group_leave(v47);

  v48 = *MEMORY[0x277D85DE8];
}

void sub_22523C87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_22523C8C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleZoneSavedWithID_responseCode_(WeakRetained, v7, v6, v5);
}

void sub_22523C93C(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v6 = objc_msgSend_error(v3, v4, v5);

    if (!v6)
    {
LABEL_19:
      v29 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
      dispatch_group_leave(v29);

      goto LABEL_20;
    }

    v9 = objc_msgSend_error(v3, v7, v8);
    if ((objc_msgSend_needsSynchronizeSigningIdentities(WeakRetained, v10, v11) & 1) == 0)
    {
      v16 = objc_msgSend_domain(v9, v12, v13);
      if (v16 == *MEMORY[0x277CBC120] && objc_msgSend_code(v9, v14, v15) == 5000)
      {
        v19 = objc_msgSend_description(v9, v17, v18);
        v22 = objc_msgSend_lowercaseString(v19, v20, v21);
        v24 = objc_msgSend_containsString_(v22, v23, @"failed to create cryptographic signature");

        if (v24)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v25 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            v31 = 138412290;
            v32 = v9;
            _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "Signing identity missing when modifying record zone: %@", &v31, 0xCu);
          }

          objc_msgSend_setNeedsSynchronizeSigningIdentities_(WeakRetained, v26, 1);
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v31 = 138412290;
      v32 = v9;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Error modifying record zone: %@", &v31, 0xCu);
    }

    objc_msgSend_setError_(WeakRetained, v28, v9);
    goto LABEL_18;
  }

LABEL_20:

  v30 = *MEMORY[0x277D85DE8];
}

void sub_22523CD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22523CDC4(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = *MEMORY[0x277CBC878];
    v8 = *MEMORY[0x277CBC880];
    if (v5 || (a2 & 1) == 0)
    {
      if (v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      v12 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        v19 = 138543618;
        v20 = v18;
        v21 = 2112;
        v22 = v5;
        _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "User key sync to update signing identities failed for operation %{public}@: %@", &v19, 0x16u);
      }

      objc_msgSend_setError_(WeakRetained, v13, v5);
    }

    else
    {
      if (v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      v9 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v19 = 138543362;
        v20 = v11;
        _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "User key sync to update signing identities succeeded for operation %{public}@", &v19, 0xCu);
      }
    }

    objc_msgSend_setDidSynchronizeSigningIdentities_(WeakRetained, v10, 1);
    v16 = objc_msgSend_stateTransitionGroup(WeakRetained, v14, v15);
    dispatch_group_leave(v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_22523D270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22523D29C(uint64_t a1, char a2, void *a3, void *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v10 = MEMORY[0x277CBC878];
    v11 = *MEMORY[0x277CBC878];
    v12 = MEMORY[0x277CBC880];
    v13 = *MEMORY[0x277CBC880];
    if (v7 || (a2 & 1) == 0)
    {
      if (v13 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v11);
      }

      v39 = MEMORY[0x277CBC830];
      v40 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v42 = *(a1 + 32);
        v69 = 138543618;
        v70 = v42;
        v71 = 2112;
        v72 = v7;
        _os_log_impl(&dword_22506F000, v40, OS_LOG_TYPE_INFO, "User key sync failed for operation %{public}@ with error %@", &v69, 0x16u);
      }

      objc_msgSend_setCurrentError_(WeakRetained, v41, v7);
      if (!objc_msgSend_isCloudCoreSessionNoLongerValidError(v7, v43, v44))
      {
        objc_msgSend_setError_(v8, v45, v7);
        objc_msgSend_setOverallResult_(v8, v47, @"failure");
        if (*(a1 + 64) != 1 || !objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(*(a1 + 40), v46, v48))
        {
          goto LABEL_37;
        }

        if (*v12 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *v10);
        }

        v49 = *v39;
        if (os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
        {
          v65 = v49;
          v68 = objc_msgSend_operationID(WeakRetained, v66, v67);
          v69 = 138412290;
          v70 = v68;
          _os_log_error_impl(&dword_22506F000, v65, OS_LOG_TYPE_ERROR, "Failing operation %@ due to the failed user key sync.", &v69, 0xCu);
        }

        objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v50, &unk_28385D760);
      }

      objc_msgSend_setError_(WeakRetained, v45, v7);
LABEL_37:
      objc_msgSend_setKeySyncAnalytics_(WeakRetained, v46, v8);
      v63 = objc_msgSend_stateTransitionGroup(WeakRetained, v61, v62);
      dispatch_group_leave(v63);

      goto LABEL_38;
    }

    if (v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v69 = 138543362;
      v70 = v17;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "User key sync succeeded for operation %{public}@", &v69, 0xCu);
    }

    v18 = objc_msgSend_container(WeakRetained, v15, v16);
    v21 = objc_msgSend_pcsManager(v18, v19, v20);
    v23 = objc_msgSend_currentIdentityPublicKeyIDForServiceType_error_(v21, v22, 0, 0);

    if (v23 && (objc_msgSend_isEqualToString_(v23, v24, *(a1 + 48)) & 1) == 0)
    {
      v51 = objc_msgSend_container(WeakRetained, v24, v25);
      v54 = objc_msgSend_pcsManager(v51, v52, v53);
      v57 = objc_msgSend_identityManager(v54, v55, v56);
      v35 = objc_msgSend_PCSServiceStringFromCKServiceType_(v57, v58, 0);

      if (*v12 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v59 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v69 = 138412546;
        v70 = v35;
        v71 = 2112;
        v72 = v23;
        _os_log_debug_impl(&dword_22506F000, v59, OS_LOG_TYPE_DEBUG, "The service %@ has a new current identity with public key ID: %@", &v69, 0x16u);
      }

      objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v60, &unk_28385D780);
    }

    else
    {
      if (*(a1 + 64) != 1 || !objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(*(a1 + 40), v24, v25))
      {
        goto LABEL_36;
      }

      v27 = objc_msgSend_container(WeakRetained, v24, v26);
      v30 = objc_msgSend_pcsManager(v27, v28, v29);
      v33 = objc_msgSend_identityManager(v30, v31, v32);
      v35 = objc_msgSend_PCSServiceStringFromCKServiceType_(v33, v34, 0);

      if (*v12 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v36 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v69 = 138412290;
        v70 = v35;
        _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "User key sync did not populate the current identity for the service %@", &v69, 0xCu);
      }

      objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v37, &unk_28385D7A0);
      objc_msgSend_setError_(WeakRetained, v38, 0);
    }

LABEL_36:
    objc_msgSend_setZoneWaitingOnKeyRegistrySync_(WeakRetained, v24, 0);

    goto LABEL_37;
  }

LABEL_38:

  v64 = *MEMORY[0x277D85DE8];
}

void sub_22523D79C(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_failedIdentityRollAttempts(v6, v2, v3);
  objc_msgSend_setFailedIdentityRollAttempts_(v6, v5, v4 + 1);
}

void sub_22523D7E4(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_identitiesRolledOnZoneSave(v6, v2, v3);
  objc_msgSend_setIdentitiesRolledOnZoneSave_(v6, v5, v4 + 1);
}

void sub_22523D82C(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_failedIdentityRollAttempts(v6, v2, v3);
  objc_msgSend_setFailedIdentityRollAttempts_(v6, v5, v4 + 1);
}

void sub_22523E15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22523E188(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (!a2 || v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 32);
      v30 = 138412546;
      v31 = v27;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Warn: Couldn't decrypt pcs data for zone %@: %@", &v30, 0x16u);
    }
  }

  else
  {
    v10 = objc_msgSend_targetZone(WeakRetained, v7, v8);
    v13 = objc_msgSend_protectionData(v10, v11, v12);
    v15 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v14, v13);

    v18 = objc_msgSend_targetZone(v9, v16, v17);
    v20 = objc_msgSend_dataWithZone_(CKDZonePCSData, v19, v18);

    objc_msgSend_setPcs_(v20, v21, a2);
    objc_msgSend_setEtag_(v20, v22, v15);
    objc_msgSend_setPCSData_forFetchedZoneID_(v9, v23, v20, *(a1 + 32));
  }

  v28 = objc_msgSend_stateTransitionGroup(v9, v24, v25);
  dispatch_group_leave(v28);

  v29 = *MEMORY[0x277D85DE8];
}

void sub_22523F0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22523F104(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_23;
  }

  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_checkAndClearUnitTestOverrides_(WeakRetained, v8, @"FakePCSDecryptionFailure"))
  {
    v11 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 5004, 0, @"TEST PCS decrypt failure");

    v6 = v11;
  }

  objc_msgSend_noteOperationDidFinishWaitingOnPCS(v10, v8, v9);
  objc_msgSend_setError_(v10, v12, v6);
  if (!v6)
  {
    v15 = objc_msgSend_pcs(v5, v13, v14);
    v18 = objc_msgSend_zone(v10, v16, v17);
    objc_msgSend_setZonePCS_(v18, v19, v15);

    v22 = objc_msgSend_zone(v10, v20, v21);
    v25 = objc_msgSend_zoneishProtectionData(v22, v23, v24);
    if (!v25)
    {
LABEL_15:

      goto LABEL_16;
    }

    v28 = v25;
    v29 = objc_msgSend_pcs(v5, v26, v27);

    if (v29)
    {
      v30 = objc_msgSend_container(v10, v13, v14);
      v33 = objc_msgSend_pcsManager(v30, v31, v32);
      v36 = objc_msgSend_zone(v10, v34, v35);
      v39 = objc_msgSend_zoneishProtectionData(v36, v37, v38);
      v42 = objc_msgSend_pcs(v5, v40, v41);
      v59 = 0;
      v44 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v33, v43, v39, 1, v42, &v59);
      v22 = v59;

      v47 = objc_msgSend_zone(v10, v45, v46);
      objc_msgSend_setZoneishPCS_(v47, v48, v44);

      if (v44)
      {
        CFRelease(v44);
      }

      if (v22)
      {
        objc_msgSend_setError_(v10, v49, v22);
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v50 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v61 = v22;
          _os_log_error_impl(&dword_22506F000, v50, OS_LOG_TYPE_ERROR, "Failed to decode zoneishPCS data: %@", buf, 0xCu);
        }
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v51 = objc_msgSend_error(v10, v13, v14);

  if (!v51)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v54 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v54, OS_LOG_TYPE_DEBUG, "PCS successfully decrypted, updating cache.", buf, 2u);
    }

    objc_msgSend_updatePCSCache(v10, v55, v56);
  }

  v57 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v52, v53);
  dispatch_group_leave(v57);

LABEL_23:
  v58 = *MEMORY[0x277D85DE8];
}

void sub_22523F77C(uint64_t a1, void *a2)
{
  v11 = a2;
  v5 = objc_msgSend_zoneKeysRemoved(v11, v3, v4);
  objc_msgSend_setZoneKeysRemoved_(v11, v6, *(a1 + 32) + v5);
  v9 = objc_msgSend_zoneishKeysRemoved(v11, v7, v8);
  objc_msgSend_setZoneishKeysRemoved_(v11, v10, *(a1 + 40) + v9);
}

void sub_22523F9EC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22523FABC;
  v5[3] = &unk_27854ACB8;
  objc_copyWeak(&v6, &location);
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_22523FAA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22523FABC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_checkAndClearUnitTestOverrides_(WeakRetained, v11, @"FakeZoneSaveFailure"))
    {
      v14 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 2000, 0, @"TEST Save Zone failure");

      v9 = v14;
    }

    v15 = *MEMORY[0x277CBC878];
    v16 = *MEMORY[0x277CBC880];
    if (v8 && !v9)
    {
      if (v16 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v15);
      }

      v17 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v25 = v17;
        v28 = objc_msgSend_zoneID(v8, v26, v27);
        v29 = 138412290;
        v30 = v28;
        _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Saved PCS changes to the server for zone %@", &v29, 0xCu);
      }

      objc_msgSend_setZone_(v12, v18, v8);
      v9 = 0;
      goto LABEL_18;
    }

    if (v16 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v15);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v29 = 138412546;
      v30 = v7;
      v31 = 2112;
      v32 = v9;
      _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Failed to save PCS changes to the server for zone %@: %@", &v29, 0x16u);
      if (v9)
      {
        goto LABEL_17;
      }
    }

    else if (v9)
    {
LABEL_17:
      objc_msgSend_setError_(v12, v22, v9);
LABEL_18:
      v23 = objc_msgSend_stateTransitionGroup(v12, v19, v20);
      dispatch_group_leave(v23);

      goto LABEL_19;
    }

    v9 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v22, *MEMORY[0x277CBC120], 5002, 0, @"Failed to save updated PCS to the server");
    goto LABEL_17;
  }

LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2252407EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225240810(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(WeakRetained, v8, v9), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v11, v12, @"ForceServerConfigFetchFailure"), v13 = objc_claimAutoreleasedReturnValue(), v13, v11, v13))
    {

      v5 = 0;
    }

    else if (v5 && !v6)
    {
LABEL_10:
      dispatch_group_leave(*(a1 + 32));
      goto LABEL_15;
    }

    if (!v6)
    {
      v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1000, @"Failed to fetch global server configuration to determine device capability checking enablement.");
    }

    objc_msgSend_setState_(v10, v8, 0xFFFFFFFFLL);
    objc_msgSend_finishWithError_(v10, v14, v6);
    goto LABEL_10;
  }

  dispatch_group_leave(*(a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v16 = 0;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Self has been deallocated after fetching server configuration", v16, 2u);
  }

LABEL_15:
}

void sub_225240F7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 168));
  objc_destroyWeak((v6 - 160));
  _Unwind_Resume(a1);
}

void sub_225240FF4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleSupportedDeviceCapabilitiesCheckedForZoneID_capabilitySet_result_responseCode_(WeakRetained, v13, v12, v11, v10, v9);
}

void sub_22524109C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleContinuation_(WeakRetained, v4, v3);
}

void sub_2252410F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = MEMORY[0x277CBC560];
  v12 = *MEMORY[0x277CBC120];
  v13 = sub_2253962A4(v8);
  v16 = objc_msgSend_request(WeakRetained, v14, v15);
  v17 = sub_225395734(v16, v8);
  v20 = objc_msgSend_error(v8, v18, v19);

  v23 = objc_msgSend_errorDescription(v20, v21, v22);
  v25 = objc_msgSend_errorWithDomain_code_userInfo_format_(v11, v24, v12, v13, v17, @"Error checking supported device capabilities with server: %@", v23);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v28 = v26;
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v33 = objc_msgSend_ckShortDescription(WeakRetained, v31, v32);
    *buf = 138544386;
    v36 = v30;
    v37 = 2048;
    v38 = WeakRetained;
    v39 = 2114;
    v40 = v33;
    v41 = 2112;
    v42 = v25;
    v43 = 2112;
    v44 = v7;
    _os_log_impl(&dword_22506F000, v28, OS_LOG_TYPE_INFO, "Check supported device capabilities operation <%{public}@: %p; %{public}@> received an error: %@ for zone: %@", buf, 0x34u);
  }

  objc_msgSend__handleError_forZoneID_capabilitySet_(WeakRetained, v27, v25, v7, v9);

  v34 = *MEMORY[0x277D85DE8];
}

void sub_22524133C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v13 = v11;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v18 = objc_msgSend_ckShortDescription(WeakRetained, v16, v17);
    v20 = 138544386;
    v21 = v15;
    v22 = 2048;
    v23 = WeakRetained;
    v24 = 2114;
    v25 = v18;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Warn: Check supported device capabilities operation <%{public}@: %p; %{public}@> validation of the server response failed. Error: %@ for zone: %@", &v20, 0x34u);
  }

  objc_msgSend__handleError_forZoneID_capabilitySet_(WeakRetained, v12, v7, v8, v9);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2252414DC(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = v4;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v19 = objc_msgSend_ckShortDescription(WeakRetained, v17, v18);
    v22 = objc_msgSend_error(v3, v20, v21);
    v23 = 138544130;
    v24 = v16;
    v25 = 2048;
    v26 = WeakRetained;
    v27 = 2114;
    v28 = v19;
    v29 = 2112;
    v30 = v22;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Check supported device capabilities operation <%{public}@: %p; %{public}@> finished with error %@", &v23, 0x2Au);
  }

  v7 = objc_msgSend_error(WeakRetained, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_error(v3, v8, v9);
    objc_msgSend_setError_(WeakRetained, v11, v10);
  }

  v12 = objc_msgSend_stateTransitionGroup(WeakRetained, v8, v9);
  dispatch_group_leave(v12);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_225241BD4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_225241D34;
  v14[3] = &unk_27854ADC8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = v4;
  v16 = v5;
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v6, v14);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2252422D8;
  v10[3] = &unk_278546EE0;
  objc_copyWeak(&v13, &location);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  objc_msgSend_setCompletionBlock_(v3, v9, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void sub_225241D10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_225241D34(uint64_t a1, void *a2, void *a3, void *a4)
{
  v101 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v83 = a4;
  v79 = v7;
  v9 = objc_opt_new();
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v82 = a1;
  v10 = *(a1 + 32);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v91, v100, 16);
  if (v12)
  {
    v16 = v12;
    if (v79)
    {
      v17 = v83 == 0;
    }

    else
    {
      v17 = 0;
    }

    v18 = !v17;
    v19 = *v92;
    v85 = *MEMORY[0x277CBBF50];
    *&v15 = 138543618;
    v74 = v15;
    v77 = v9;
    v78 = v8;
    v76 = v10;
    v75 = v18;
    v81 = *v92;
    do
    {
      v20 = 0;
      v80 = v16;
      do
      {
        if (*v92 != v19)
        {
          objc_enumerationMutation(v10);
        }

        v86 = v20;
        v21 = *(*(&v91 + 1) + 8 * v20);
        v22 = objc_msgSend_result(v21, v13, v14, v74);
        v25 = objc_msgSend_shareID(v22, v23, v24);
        isEqual = objc_msgSend_isEqual_(v25, v26, v8);

        if (isEqual)
        {
          objc_msgSend_addObject_(v9, v13, v21);
          if (v18)
          {
            found = objc_msgSend_CKIsNotFoundError(v83, v28, v29);
            v31 = *MEMORY[0x277CBC878];
            v32 = *MEMORY[0x277CBC880];
            if (found)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v31);
              }

              v33 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
              {
                *buf = v74;
                v97 = v8;
                v98 = 2112;
                v99 = v83;
                _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, "Warn: Failed to validate share usage from the server, shareID %{public}@ not found: %@", buf, 0x16u);
              }

              v35 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v34, v85, 161, @"Deleted or invalid share in device capability check response");
              objc_msgSend_setError_(v21, v36, v35);
              objc_msgSend_reportClientValidationError_(*(v82 + 40), v37, @"shareNotFound");
            }

            else
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v31);
              }

              v69 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
              {
                *buf = v74;
                v97 = v8;
                v98 = 2112;
                v99 = v83;
                _os_log_impl(&dword_22506F000, v69, OS_LOG_TYPE_INFO, "Warn: Failed to validate share usage from the server, failed to fetch share with shareID %{public}@: %@", buf, 0x16u);
              }

              v35 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v70, v85, 161, @"Failed to fetch share when validating device capability check response");
              objc_msgSend_setError_(v21, v71, v35);
            }

            goto LABEL_44;
          }

          v84 = v21;
          v38 = objc_msgSend_result(v21, v28, v29);
          v35 = objc_msgSend_userID(v38, v39, v40);

          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v43 = objc_msgSend_participants(v79, v41, v42);
          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v87, v95, 16);
          if (v45)
          {
            v48 = v45;
            v49 = *v88;
LABEL_22:
            v50 = 0;
            while (1)
            {
              if (*v88 != v49)
              {
                objc_enumerationMutation(v43);
              }

              v51 = *(*(&v87 + 1) + 8 * v50);
              v52 = objc_msgSend_userIdentity(v51, v46, v47);
              v55 = objc_msgSend_userRecordID(v52, v53, v54);
              v58 = objc_msgSend_recordName(v55, v56, v57);
              isEqualToString = objc_msgSend_isEqualToString_(v58, v59, v35);

              if (isEqualToString)
              {
                break;
              }

              if (v48 == ++v50)
              {
                v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v46, &v87, v95, 16);
                if (v48)
                {
                  goto LABEL_22;
                }

                goto LABEL_28;
              }
            }

            v61 = v51;

            if (!v61)
            {
              goto LABEL_32;
            }

            v9 = v77;
            v8 = v78;
            v10 = v76;
            v18 = v75;
            v16 = v80;
            v19 = v81;
            if (objc_msgSend_acceptanceStatus(v61, v62, v63) == 2)
            {
              goto LABEL_38;
            }
          }

          else
          {
LABEL_28:

            v61 = 0;
LABEL_32:
            v9 = v77;
            v8 = v78;
            v10 = v76;
            v18 = v75;
            v16 = v80;
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v64 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            *buf = v74;
            v97 = v35;
            v98 = 2114;
            v99 = v8;
            _os_log_impl(&dword_22506F000, v64, OS_LOG_TYPE_INFO, "Warn: Failed to validate share usage from the server, userID %{public}@ is not an accepted participant of the share with shareID: %{public}@", buf, 0x16u);
          }

          v66 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v65, v85, 161, @"Obsolete share participant in device capability check response");
          objc_msgSend_setError_(v84, v67, v66);
          objc_msgSend_reportClientValidationError_(*(v82 + 40), v68, @"invalidParticipant");

          v19 = v81;
LABEL_38:

LABEL_44:
        }

        v20 = v86 + 1;
      }

      while (v86 + 1 != v16);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v91, v100, 16);
    }

    while (v16);
  }

  objc_msgSend_removeObjectsInArray_(*(v82 + 32), v72, v9);
  v73 = *MEMORY[0x277D85DE8];
}

void sub_2252422D8(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  v6 = MEMORY[0x277CBC880];
  v7 = MEMORY[0x277CBC830];
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = v5;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Warn: Failed to fetch shares for participant validation: %@", buf, 0xCu);
    }
  }

  v42 = a1;
  v43 = v5;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(a1 + 32);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v46, v54, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v47;
    v15 = *MEMORY[0x277CBBF50];
    v16 = 0x277CBC000uLL;
    do
    {
      v17 = 0;
      do
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v46 + 1) + 8 * v17);
        v19 = objc_msgSend_result(v18, v11, v12, v42, v43);
        v45 = objc_msgSend_userID(v19, v20, v21);

        if (*v6 != -1)
        {
          dispatch_once(v6, *MEMORY[0x277CBC878]);
        }

        v22 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
        {
          v24 = v22;
          v27 = objc_msgSend_result(v18, v25, v26);
          objc_msgSend_shareID(v27, v28, v29);
          v30 = v16;
          v31 = v13;
          v32 = v15;
          v33 = v14;
          v35 = v34 = v7;
          *buf = 138543618;
          v51 = v45;
          v52 = 2114;
          v53 = v35;
          _os_log_impl(&dword_22506F000, v24, OS_LOG_TYPE_INFO, "Warn: Failed to validate share usage of participant %{public}@ for shareID %{public}@", buf, 0x16u);

          v7 = v34;
          v14 = v33;
          v15 = v32;
          v13 = v31;
          v16 = v30;

          v6 = MEMORY[0x277CBC880];
        }

        v36 = objc_msgSend_errorWithDomain_code_format_(*(v16 + 1376), v23, v15, 161, @"Failed to validate share participant in device capability check response");
        objc_msgSend_setError_(v18, v37, v36);

        ++v17;
      }

      while (v13 != v17);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v46, v54, 16);
    }

    while (v13);
  }

  v40 = objc_msgSend_stateTransitionGroup(*(v42 + 40), v38, v39);
  dispatch_group_leave(v40);

  v41 = *MEMORY[0x277D85DE8];
}

void sub_225242B5C(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = objc_msgSend_unsignedIntegerValue(*(*(&v15 + 1) + 8 * v11), v7, v8, v15);
        objc_msgSend_addAdopterCapabilityCheckResult_(v3, v13, v12);
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v15, v19, 16);
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_225243158(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_serverChangeTokenUpdatedBlock(*(a1 + 32), a2, a3);
  if (v4 && (v7 = v4, v8 = objc_msgSend_shouldReturnServerChangeTokensToAdopter(*(a1 + 32), v5, v6), v7, v8))
  {
    v9 = objc_msgSend_serverChangeTokenUpdatedBlock(*(a1 + 32), v5, v6);
    v10 = *(a1 + 56);
    v11 = *(a1 + 40);
    v14 = objc_msgSend_error(*(a1 + 32), v12, v13);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = sub_225243298;
    v22 = &unk_278548128;
    v23 = *(a1 + 32);
    v24 = *(a1 + 48);
    (v9)[2](v9, v11, v10, v14, &v19);
  }

  else
  {
    v17 = objc_msgSend_perRequestGroup(*(a1 + 48), v5, v6);
    dispatch_group_leave(v17);
  }

  v18 = objc_msgSend_fetchZonesGroup(*(a1 + 32), v15, v16, v19, v20, v21, v22, v23);
  dispatch_group_leave(v18);
}

void sub_225243298(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v12 = objc_msgSend_operationID(v8, v10, v11);
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Finishing daemon operation %{public}@ due to client-returned error %@", &v15, 0x16u);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v7, v5);
  }

  v13 = objc_msgSend_perRequestGroup(*(a1 + 40), v3, v4);
  dispatch_group_leave(v13);

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2252439AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 160));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 144));
  objc_destroyWeak((v3 - 136));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_225243AA4(uint64_t a1)
{
  v86 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v6 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC810] == 1)
    {
      v7 = objc_msgSend_unitTestOverrides(WeakRetained, v4, v5);
      v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"PipelineMetasyncRequestsForever");
      v10 = v9 != 0;
    }

    else
    {
      v10 = 0;
    }

    v16 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = MEMORY[0x277CBC830];
    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      log = v18;
      v51 = objc_opt_class();
      v65 = NSStringFromClass(v51);
      v64 = objc_msgSend_ckShortDescription(v3, v52, v53);
      v56 = objc_msgSend_operationID(WeakRetained, v54, v55);
      objc_msgSend_error(v3, v57, v58);
      *buf = 138544386;
      v77 = v65;
      v78 = 2048;
      v79 = v3;
      v80 = 2114;
      v81 = v64;
      v82 = 2114;
      v83 = v56;
      v85 = v84 = 2112;
      v59 = v85;
      _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Fetch database changes request <%{public}@: %p; %{public}@> for operation %{public}@ finished with error %@", buf, 0x34u);
    }

    v21 = objc_msgSend_numRequestsSent(WeakRetained, v19, v20);
    objc_msgSend_setNumRequestsSent_(WeakRetained, v22, v21 + 1);
    v27 = objc_msgSend_error(v3, v23, v24);
    if (!v27 && objc_msgSend_isExecuting(WeakRetained, v25, v26) && (objc_msgSend_isCancelled(WeakRetained, v28, v29) & 1) == 0 && objc_msgSend_fetchAllChanges(WeakRetained, v30, v31) && (objc_msgSend_status(v3, v32, v33) != 2 || v10))
    {
      if (objc_msgSend_numRequestsSent(WeakRetained, v34, v35))
      {
        if (*v16 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v38 = *v17;
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
        {
          v60 = v38;
          v63 = objc_msgSend_serverChangeTokenData(v3, v61, v62);
          *buf = 138543362;
          v77 = v63;
          _os_log_debug_impl(&dword_22506F000, v60, OS_LOG_TYPE_DEBUG, "We're not done here. Sending another fetch request with change token %{public}@", buf, 0xCu);
        }

        v41 = objc_msgSend_serverChangeTokenData(v3, v39, v40);
        objc_msgSend__sendFetchDatabaseChangesRequestWithChangeToken_previousRequestSchedulerInfo_(WeakRetained, v42, v41, v6);

        v43 = *(a1 + 32);
        v46 = objc_msgSend_callbackQueue(WeakRetained, v44, v45);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_225243FB4;
        block[3] = &unk_278545AB0;
        block[4] = WeakRetained;
        v74 = v6;
        v75 = *(a1 + 64);
        dispatch_group_notify(v43, v46, block);

        v47 = v74;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v48 = *(a1 + 32);
    v49 = objc_msgSend_callbackQueue(WeakRetained, v36, v37);
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = sub_22524404C;
    v67[3] = &unk_27854AE18;
    v68 = v6;
    v69 = v3;
    v70 = WeakRetained;
    v71 = v10;
    v72 = *(a1 + 64);
    dispatch_group_notify(v48, v49, v67);

    v47 = v68;
LABEL_26:

    goto LABEL_27;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    v15 = objc_msgSend_requestUUID(v3, v13, v14);
    *buf = 138543362;
    v77 = v15;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Owning operation for request %{public}@ no longer around. Bailing.", buf, 0xCu);
  }

LABEL_27:

  v50 = *MEMORY[0x277D85DE8];
}

void sub_225243FB4(uint64_t a1, const char *a2)
{
  objc_msgSend__handleFetchDatabaseChangesRequestFinishedWithSchedulerInfo_(*(a1 + 32), a2, *(a1 + 40));
  if (*(a1 + 48) == 1)
  {
    v5 = objc_msgSend_error(*(a1 + 32), v3, v4);

    if (v5)
    {
      objc_msgSend_cancelAndDisablePerRequestCallbackBlocks(*(a1 + 40), v6, v7);
    }

    objc_msgSend_resumeCallbackQueue(*(a1 + 40), v6, v7);
  }

  objc_msgSend_disablePerRequestCallbackBlocks(*(a1 + 40), v3, v4);
  v10 = objc_msgSend_fetchZonesGroup(*(a1 + 32), v8, v9);
  dispatch_group_leave(v10);
}

void sub_22524404C(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252441D4;
  block[3] = &unk_2785494E8;
  v19 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v20 = v2;
  v21 = v3;
  v22 = *(a1 + 56);
  v4 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_msgSend_addPerRequestCallbackBlock_(*(a1 + 32), v5, v4);
  v8 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v6, v7);
  dispatch_async(v8, v4);

  v11 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v9, v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2252443CC;
  v17[3] = &unk_278545A00;
  v17[4] = *(a1 + 48);
  dispatch_async(v11, v17);

  if (*(a1 + 57) == 1)
  {
    v14 = objc_msgSend_error(*(a1 + 48), v12, v13);

    if (v14)
    {
      objc_msgSend_cancelAndDisablePerRequestCallbackBlocks(*(a1 + 32), v15, v16);
    }

    objc_msgSend_resumeCallbackQueue(*(a1 + 32), v15, v16);
  }

  objc_msgSend_disablePerRequestCallbackBlocks(*(a1 + 32), v12, v13);
}

void sub_2252441D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isCancelled(*(a1 + 32), a2, a3))
  {
LABEL_2:
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = objc_msgSend_error(*(a1 + 40), v4, v5);

  if (!v7)
  {
    objc_msgSend__handleFetchDatabaseChangesRequestFinishedWithSchedulerInfo_(*(a1 + 48), v8, *(a1 + 32));
    if (objc_msgSend_fetchAllChanges(*(a1 + 48), v15, v16) && (objc_msgSend_status(*(a1 + 40), v17, v18) != 2 || *(a1 + 56) == 1))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v25 = *(a1 + 40);
        v26 = v19;
        v29 = objc_msgSend_serverChangeTokenData(v25, v27, v28);
        *buf = 138412290;
        v32 = v29;
        _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "We're not done here. Sending another fetch request with change token %@", buf, 0xCu);
      }

      v22 = *(a1 + 48);
      v23 = objc_msgSend_serverChangeTokenData(*(a1 + 40), v20, v21);
      objc_msgSend__sendFetchDatabaseChangesRequestWithChangeToken_previousRequestSchedulerInfo_(v22, v24, v23, *(a1 + 32));
    }

    goto LABEL_2;
  }

  v10 = objc_msgSend_error(*(a1 + 40), v8, v9);
  objc_msgSend_setError_(*(a1 + 48), v11, v10);

  v30 = objc_msgSend_perRequestGroup(*(a1 + 32), v12, v13);
  dispatch_group_leave(v30);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_2252443CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_fetchZonesGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v3);
}

void sub_225244410(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_loadWeakRetained((a1 + 40));
  if (v8)
  {
    objc_initWeak(&location, v8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225244594;
    block[3] = &unk_2785496D0;
    objc_copyWeak(&v20, &location);
    block[4] = WeakRetained;
    v18 = v5;
    v19 = v6;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    objc_msgSend_addPerRequestCallbackBlock_(v8, v10, v9);
    v13 = objc_msgSend_perRequestCallbackGroup(v8, v11, v12);
    v16 = objc_msgSend_perRequestCallbackQueue(v8, v14, v15);
    dispatch_group_async(v13, v16, v9);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void sub_225244578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225244594(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v8 = objc_msgSend_recordZoneWithIDChangedBlock(*(a1 + 32), v6, v7);

    if (v8)
    {
      v11 = objc_msgSend_recordZoneWithIDChangedBlock(*(a1 + 32), v9, v10);
      (*(v11 + 2))(v11, *(a1 + 40), *(a1 + 48));
    }
  }
}

void sub_225244640(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    objc_initWeak(&location, v5);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = sub_2252447A4;
    v17 = &unk_278546EE0;
    objc_copyWeak(&v20, &location);
    v18 = WeakRetained;
    v19 = v3;
    v6 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v14);
    objc_msgSend_addPerRequestCallbackBlock_(v5, v7, v6, v14, v15, v16, v17, v18);
    v10 = objc_msgSend_perRequestCallbackGroup(v5, v8, v9);
    v13 = objc_msgSend_perRequestCallbackQueue(v5, v11, v12);
    dispatch_group_async(v10, v13, v6);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void sub_225244788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252447A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v18 = objc_msgSend_container(*(a1 + 32), v6, v7);
    v10 = objc_msgSend_recordCache(v18, v8, v9);
    objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v10, v11, v18, *(a1 + 40));

    v14 = objc_msgSend_recordZoneWithIDWasDeletedBlock(*(a1 + 32), v12, v13);

    if (v14)
    {
      v17 = objc_msgSend_recordZoneWithIDWasDeletedBlock(*(a1 + 32), v15, v16);
      v17[2](v17, *(a1 + 40));
    }
  }
}

void sub_225244880(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    objc_initWeak(&location, v5);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = sub_2252449E4;
    v17 = &unk_278546EE0;
    objc_copyWeak(&v20, &location);
    v18 = WeakRetained;
    v19 = v3;
    v6 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v14);
    objc_msgSend_addPerRequestCallbackBlock_(v5, v7, v6, v14, v15, v16, v17, v18);
    v10 = objc_msgSend_perRequestCallbackGroup(v5, v8, v9);
    v13 = objc_msgSend_perRequestCallbackQueue(v5, v11, v12);
    dispatch_group_async(v10, v13, v6);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void sub_2252449C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252449E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v18 = objc_msgSend_container(*(a1 + 32), v6, v7);
    v10 = objc_msgSend_recordCache(v18, v8, v9);
    objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v10, v11, v18, *(a1 + 40));

    v14 = objc_msgSend_recordZoneWithIDWasPurgedBlock(*(a1 + 32), v12, v13);

    if (v14)
    {
      v17 = objc_msgSend_recordZoneWithIDWasPurgedBlock(*(a1 + 32), v15, v16);
      v17[2](v17, *(a1 + 40));
    }
  }
}

void sub_225244AC0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    objc_initWeak(&location, v5);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = sub_225244C24;
    v17 = &unk_278546EE0;
    objc_copyWeak(&v20, &location);
    v18 = WeakRetained;
    v19 = v3;
    v6 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v14);
    objc_msgSend_addPerRequestCallbackBlock_(v5, v7, v6, v14, v15, v16, v17, v18);
    v10 = objc_msgSend_perRequestCallbackGroup(v5, v8, v9);
    v13 = objc_msgSend_perRequestCallbackQueue(v5, v11, v12);
    dispatch_group_async(v10, v13, v6);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void sub_225244C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225244C24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v18 = objc_msgSend_container(*(a1 + 32), v6, v7);
    v10 = objc_msgSend_recordCache(v18, v8, v9);
    objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v10, v11, v18, *(a1 + 40));

    v14 = objc_msgSend_recordZoneWithIDWasDeletedDueToEncryptedDataResetBlock(*(a1 + 32), v12, v13);

    if (v14)
    {
      v17 = objc_msgSend_recordZoneWithIDWasDeletedDueToEncryptedDataResetBlock(*(a1 + 32), v15, v16);
      v17[2](v17, *(a1 + 40));
    }
  }
}

void sub_225244D00(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    objc_initWeak(&location, v5);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225244E78;
    block[3] = &unk_2785496D0;
    objc_copyWeak(&v18, &location);
    block[4] = WeakRetained;
    v16 = v3;
    v6 = v5;
    v17 = v6;
    v7 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    objc_msgSend_addPerRequestCallbackBlock_(v6, v8, v7);
    v11 = objc_msgSend_perRequestCallbackGroup(v6, v9, v10);
    v14 = objc_msgSend_perRequestCallbackQueue(v6, v12, v13);
    dispatch_group_async(v11, v14, v7);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void sub_225244E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225244E78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);

    MEMORY[0x2821F9670](v6, sel__handleAnonymousZoneDataObjects_schedulerInfo_, v7);
  }
}

void sub_2252451A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2252451CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252453D0;
  block[3] = &unk_27854AEB8;
  objc_copyWeak(&v26, &location);
  block[4] = *(a1 + 40);
  objc_copyWeak(&v27, (a1 + 56));
  v7 = v5;
  v8 = *(a1 + 48);
  v24 = v7;
  v25 = v8;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_msgSend_addPerRequestCallbackBlock_(*(a1 + 32), v10, v9);
  v13 = objc_msgSend_perRequestCallbackGroup(*(a1 + 32), v11, v12);
  v16 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v14, v15);
  dispatch_group_async(v13, v16, v9);

  v19 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v17, v18);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2252458A4;
  v20[3] = &unk_2785476F0;
  objc_copyWeak(&v22, (a1 + 56));
  v21 = *(a1 + 32);
  dispatch_async(v19, v20);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void sub_2252453AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2252453D0(void **a1)
{
  v76 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    if (*MEMORY[0x277CBC810] == 1)
    {
      v8 = objc_msgSend_unitTestOverrides(a1[4], v6, v7);
      v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"FailAnonymousShareDecryption");

      if (v10)
      {
        v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBBF50], 1000, @"Unable to decrypt encrypted anonymous share.");
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v13 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v67 = a1[4];
          v68 = v13;
          v71 = objc_msgSend_operationID(v67, v69, v70);
          v72 = 138543618;
          v73 = v71;
          v74 = 2112;
          v75 = v12;
          _os_log_error_impl(&dword_22506F000, v68, OS_LOG_TYPE_ERROR, "Override FailAnonymousShareDecryption: Finishing daemon operation %{public}@ due to client-returned error %@", &v72, 0x16u);
        }

        objc_msgSend_finishWithError_(a1[4], v14, v12);
      }
    }

    v16 = objc_loadWeakRetained(a1 + 8);
    if (!a1[5])
    {
      v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBBF50], 1000, @"Unable to decrypt encrypted anonymous share.");
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v62 = a1[4];
        v63 = v32;
        v66 = objc_msgSend_operationID(v62, v64, v65);
        v72 = 138543618;
        v73 = v66;
        v74 = 2112;
        v75 = v25;
        _os_log_error_impl(&dword_22506F000, v63, OS_LOG_TYPE_ERROR, "Finishing daemon operation %{public}@ due to client-returned error %@", &v72, 0x16u);
      }

      objc_msgSend_finishWithError_(a1[4], v33, v25);
      goto LABEL_32;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v54 = a1[5];
      v55 = v17;
      v58 = objc_msgSend_zoneID(v54, v56, v57);
      v61 = objc_msgSend_parentZoneID(a1[5], v59, v60);
      v72 = 138412546;
      v73 = v58;
      v74 = 2112;
      v75 = v61;
      _os_log_debug_impl(&dword_22506F000, v55, OS_LOG_TYPE_DEBUG, "Handling encrypted anonymous share processing for zone with ID %@, parent zone ID %@", &v72, 0x16u);
    }

    if (objc_msgSend_changeType(a1[6], v18, v19) == 1)
    {
      v22 = objc_msgSend_recordZoneWithIDChangedBlock(v16, v20, v21);

      if (v22)
      {
        v25 = objc_msgSend_recordZoneWithIDChangedBlock(v16, v23, v24);
        v28 = objc_msgSend_zoneID(a1[5], v26, v27);
        v31 = objc_msgSend_parentZoneID(a1[5], v29, v30);
        (v25)[2](v25, v28, v31);

LABEL_32:
      }
    }

    else if (objc_msgSend_changeType(a1[6], v20, v21) == 2)
    {
      if (objc_msgSend_deleteType(a1[6], v34, v35) == 2)
      {
        v38 = objc_msgSend_recordZoneWithIDWasPurgedBlock(v16, v36, v37);

        if (!v38)
        {
          goto LABEL_33;
        }

        v41 = objc_msgSend_recordZoneWithIDWasPurgedBlock(v16, v39, v40);
      }

      else if (objc_msgSend_deleteType(a1[6], v36, v37) == 3)
      {
        v46 = objc_msgSend_recordZoneWithIDWasDeletedDueToEncryptedDataResetBlock(v16, v44, v45);

        if (!v46)
        {
          goto LABEL_33;
        }

        v41 = objc_msgSend_recordZoneWithIDWasDeletedDueToEncryptedDataResetBlock(v16, v47, v48);
      }

      else
      {
        v49 = objc_msgSend_recordZoneWithIDWasDeletedBlock(v16, v44, v45);

        if (!v49)
        {
          goto LABEL_33;
        }

        v41 = objc_msgSend_recordZoneWithIDWasDeletedBlock(v16, v50, v51);
      }

      v25 = v41;
      v52 = objc_msgSend_zoneID(a1[5], v42, v43);
      (v25[2])(v25, v52);

      goto LABEL_32;
    }

LABEL_33:
  }

  v53 = *MEMORY[0x277D85DE8];
}

void sub_2252458A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_perRequestCallbackGroup(*(a1 + 32), v2, v3);
  dispatch_group_leave(v4);

  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = objc_msgSend_fetchZonesGroup(WeakRetained, v5, v6);
    dispatch_group_leave(v8);

    v7 = WeakRetained;
  }
}

void sub_225245FA4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22524610C;
  v11[3] = &unk_27854AF08;
  objc_copyWeak(&v12, &location);
  objc_msgSend_setRecordChangedBlock_(v3, v4, v11);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2252461B0;
  v9[3] = &unk_278547098;
  objc_copyWeak(&v10, &location);
  objc_msgSend_setCompletionBlock_(v3, v5, v9);
  v8 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v6, v7);
  dispatch_group_enter(v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_2252460DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_22524610C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (v8 && CKIsPCSError())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v12 = objc_msgSend_mutableCorruptRecords(WeakRetained, v10, v11);
    objc_msgSend_addObject_(v12, v13, v7);
  }
}

void sub_2252461B0(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Done checking PCS for records in all zones", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_msgSend_stateTransitionGroup(WeakRetained, v4, v5);
  dispatch_group_leave(v6);
}

void sub_225246370(uint64_t a1, void *a2)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_225246468;
  v10[3] = &unk_27854AF30;
  v10[4] = *(a1 + 32);
  v3 = a2;
  objc_msgSend_setRecordZoneFetchedProgressBlock_(v3, v4, v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225246620;
  v9[3] = &unk_278545A00;
  v9[4] = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v5, v9);

  v8 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v6, v7);
  dispatch_group_enter(v8);
}

void sub_225246468(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = *MEMORY[0x277CBC878];
  v12 = *MEMORY[0x277CBC880];
  if (!v7 || v9)
  {
    if (v12 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v20 = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Error fetching zone %@: %@", &v20, 0x16u);
    }
  }

  else
  {
    if (v12 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v20 = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Zone with ID %@ was fetched: %@", &v20, 0x16u);
    }

    v16 = objc_msgSend_fetchedZones(*(a1 + 32), v14, v15);
    objc_msgSend_addObject_(v16, v17, v7);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_225246620(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Done fetching zones", v6, 2u);
  }

  v5 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v3, v4);
  dispatch_group_leave(v5);
}

void sub_2252495DC(uint64_t a1, void *a2)
{
  v11 = a2;
  v5 = objc_msgSend_zoneKeysRemoved(v11, v3, v4);
  objc_msgSend_setZoneKeysRemoved_(v11, v6, *(a1 + 32) + v5);
  v9 = objc_msgSend_zoneishKeysRemoved(v11, v7, v8);
  objc_msgSend_setZoneishKeysRemoved_(v11, v10, *(a1 + 40) + v9);
}

void sub_22524964C(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_keyRollsSkippedBySizeCheck(v6, v2, v3);
  objc_msgSend_setKeyRollsSkippedBySizeCheck_(v6, v5, v4 + 1);
}

void sub_225249694(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_zoneKeysRolled(v6, v2, v3);
  objc_msgSend_setZoneKeysRolled_(v6, v5, v4 + 1);
}

void sub_225249B80(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  objc_initWeak(&from, *(a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225249D04;
  v9[3] = &unk_27854ACB8;
  objc_copyWeak(&v10, &from);
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v9);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225249D7C;
  v6[3] = &unk_278548748;
  objc_copyWeak(&v7, &from);
  objc_copyWeak(&v8, &location);
  objc_msgSend_setCompletionBlock_(v3, v5, v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_225249CC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_225249D04(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordZoneSaved_error_(WeakRetained, v8, v7, v6);
}

void sub_225249D7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (!v4)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v10 = objc_msgSend_error(v7, v8, v9);
    objc_msgSend_setError_(WeakRetained, v11, v10);
  }

  v12 = objc_msgSend_stateTransitionGroup(WeakRetained, v5, v6);
  dispatch_group_leave(v12);
}

void sub_22524A15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a36, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22524A1B8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = objc_msgSend_zoneID(a2, a2, a3);
  objc_msgSend_addObject_(v4, v6, v5);

  if (!--*(*(*(a1 + 48) + 8) + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    objc_msgSend_fetchZonesFromServer_(*(a1 + 32), v7, *(*(*(a1 + 40) + 8) + 40));
    v10 = objc_msgSend_stateTransitionGroup(WeakRetained, v8, v9);
    dispatch_group_leave(v10);
  }
}

void sub_22524A7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22524A7F0(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Failed to remove anonymous share. error: %@", &v10, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22524ADE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location, char a38)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 184), 8);
  _Block_object_dispose((v38 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_22524AE40(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v8, v9);

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v12 = objc_msgSend_zoneishProtectionData(*(a1 + 32), v10, v11);
    if (v12 && (v15 = v12, v16 = objc_msgSend_pcs(v5, v13, v14), v15, v16))
    {
      v18 = objc_msgSend_container(*(a1 + 40), v13, v17);
      v21 = objc_msgSend_pcsManager(v18, v19, v20);
      v24 = objc_msgSend_zoneishProtectionData(*(a1 + 32), v22, v23);
      v27 = objc_msgSend_pcs(v5, v25, v26);
      v28 = *(*(a1 + 56) + 8);
      obj = *(v28 + 40);
      v30 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v21, v29, v24, 1, v27, &obj);
      objc_storeStrong((v28 + 40), obj);

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v32 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          v37 = *(*(*(a1 + 56) + 8) + 40);
          *buf = 138412290;
          v40 = v37;
          _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Couldn't decode zoneishPCS data: %@", buf, 0xCu);
        }
      }

      objc_msgSend_setZoneishPCS_(v5, v31, v30);
      if (v30)
      {
        CFRelease(v30);
      }
    }

    else
    {
      objc_msgSend_setZoneishPCS_(v5, v13, 0);
    }
  }

  v33 = *(*(a1 + 64) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v5;
  v35 = v5;

  dispatch_group_leave(*(a1 + 48));
  v36 = *MEMORY[0x277D85DE8];
}