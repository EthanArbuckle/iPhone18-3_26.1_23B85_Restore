void sub_2251CAC30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251CAC54(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *MEMORY[0x277CBC878];
    v6 = *MEMORY[0x277CBC880];
    if (v3)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v5);
      }

      v7 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
      {
        v15 = v7;
        v18 = objc_msgSend_operationID(WeakRetained, v16, v17);
        v23 = 138412546;
        v24 = v18;
        v25 = 2112;
        v26 = v3;
        _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Error fetching delta metadata in operation %@: %@", &v23, 0x16u);
      }

      objc_msgSend_setError_(WeakRetained, v8, v3);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v5);
      }

      v12 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v19 = v12;
        v22 = objc_msgSend_operationID(WeakRetained, v20, v21);
        v23 = 138412290;
        v24 = v22;
        _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Fetched delta metadata for operation %@", &v23, 0xCu);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Deallocated while fetching delta metadata", &v23, 2u);
    }
  }

  v13 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v9, v10);
  dispatch_group_leave(v13);

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2251CB188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void sub_2251CB1D0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v11)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v15 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v19 = 138412290;
        v20 = v9;
        _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Got a continuation token for value %@", &v19, 0xCu);
      }

      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v16, v11, v9);
    }

    objc_msgSend_handleFetchedMetadatasForMergeableValueID_metadatas_result_(WeakRetained, v13, v9, v10, v12);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Fetch metadata operation deallocated before request per value ID block", &v19, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2251CB3B0(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = objc_msgSend_count(*(a1 + 32), v2, v3);
    v6 = *MEMORY[0x277CBC878];
    v7 = *MEMORY[0x277CBC880];
    if (v5)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v6);
      }

      v8 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 32);
        v28 = 138412290;
        v29 = v21;
        _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Continuing fetch delta metadata with new continuation tokens: %@", &v28, 0xCu);
      }

      v11 = objc_msgSend_allKeys(*(a1 + 32), v9, v10);
      objc_msgSend_fetchMetadataRecursivelyForMergeableValueIDs_continuationTokens_completionHandler_(WeakRetained, v12, v11, *(a1 + 32), *(a1 + 40));
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v6);
      }

      v14 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v22 = v14;
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v27 = objc_msgSend_ckShortDescription(WeakRetained, v25, v26);
        v28 = 138543874;
        v29 = v24;
        v30 = 2048;
        v31 = WeakRetained;
        v32 = 2114;
        v33 = v27;
        _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Fetch delta metadatas URL request completed for operation <%{public}@: %p; %{public}@>", &v28, 0x20u);
      }

      v15 = *(a1 + 40);
      v16 = objc_loadWeakRetained((a1 + 56));
      v19 = objc_msgSend_error(v16, v17, v18);
      (*(v15 + 16))(v15, v19);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Fetch metadata operation deallocated before request completion block", &v28, 2u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2251CBE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose((v46 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2251CBE7C(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v26 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v46 = v6;
        _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "Error fetching PCS to decrypt fetched delta metadata: %@", buf, 0xCu);
      }

      v28 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v27, *MEMORY[0x277CBC120], 5001, v6, @"Failed to fetch PCS to decrypt mergeable delta timestamps");
      v29 = *(*(a1 + 56) + 8);
      v17 = *(v29 + 40);
      *(v29 + 40) = v28;
    }

    else
    {
      v8 = objc_alloc_init(CKDKeyEnvelopeContext);
      v11 = objc_msgSend_pcs(v5, v9, v10);
      objc_msgSend_setShareProtection_(v8, v12, v11);
      objc_msgSend_setMergeableValueID_(v8, v13, *(a1 + 32));
      v14 = *(a1 + 40);
      v44 = 0;
      v16 = objc_msgSend_decryptWithContext_error_(v14, v15, v8, &v44);
      v17 = v44;
      v18 = *MEMORY[0x277CBC878];
      v19 = *MEMORY[0x277CBC880];
      if (v16)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v18);
        }

        v20 = *MEMORY[0x277CBC840];
        if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
        {
          v21 = *(a1 + 40);
          v22 = v20;
          v25 = objc_msgSend_identifier(v21, v23, v24);
          *buf = 138412290;
          v46 = v25;
          _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Successfully decrypted delta metadata %@", buf, 0xCu);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v18);
        }

        v30 = *MEMORY[0x277CBC840];
        if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
        {
          v39 = *(a1 + 40);
          v40 = v30;
          v43 = objc_msgSend_identifier(v39, v41, v42);
          *buf = 138412546;
          v46 = v43;
          v47 = 2112;
          v48 = v17;
          _os_log_error_impl(&dword_22506F000, v40, OS_LOG_TYPE_ERROR, "Failed to decrypt delta metadata %@: %@", buf, 0x16u);
        }

        v32 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v31, *MEMORY[0x277CBC120], 5004, v17, @"Failed to decrypt mergeable delta timestamps");
        v33 = *(*(a1 + 56) + 8);
        v34 = *(v33 + 40);
        *(v33 + 40) = v32;
      }
    }

    v37 = objc_msgSend_stateTransitionGroup(WeakRetained, v35, v36);
    dispatch_group_leave(v37);

    dispatch_group_leave(*(a1 + 48));
  }

  v38 = *MEMORY[0x277D85DE8];
}

void sub_2251CC1E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_metadataFetchedBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 56) + 8) + 40));
}

void sub_2251CC5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251CC604(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *MEMORY[0x277CBC878];
    v6 = *MEMORY[0x277CBC880];
    if (v3)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v5);
      }

      v7 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
      {
        v15 = v7;
        v18 = objc_msgSend_operationID(WeakRetained, v16, v17);
        v23 = 138412546;
        v24 = v18;
        v25 = 2112;
        v26 = v3;
        _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Error fetching mergeable deltas in operation %@: %@", &v23, 0x16u);
      }

      objc_msgSend_setError_(WeakRetained, v8, v3);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v5);
      }

      v12 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v19 = v12;
        v22 = objc_msgSend_operationID(WeakRetained, v20, v21);
        v23 = 138412290;
        v24 = v22;
        _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Finished fetching mergeable deltas for operation %@", &v23, 0xCu);
      }
    }

    v13 = objc_msgSend_stateTransitionGroup(WeakRetained, v9, v10);
    dispatch_group_leave(v13);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Fetch mergeable deltas operation deallocated while fetching mergeable deltas from the server", &v23, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2251CCB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void sub_2251CCB78(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      v18 = 138412290;
      v19 = v9;
      _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Got a continuation token fetching deltas for value %@", &v18, 0xCu);
    }

    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v16, v11, v9);
  }

  objc_msgSend_handleMergeableDeltasFetchedForValueID_fetchedDeltas_result_(WeakRetained, v13, v9, v10, v12);

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2251CCCDC(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v6 = v3;
  if (WeakRetained && v3)
  {
    v7 = objc_msgSend_error(v3, v4, v5);

    if (v7)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v10 = *MEMORY[0x277CBC840];
      if (!os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v24 = v10;
      v26 = objc_msgSend_operationID(WeakRetained, v30, v31);
      v29 = objc_msgSend_error(v6, v32, v33);
      v38 = 138543618;
      v39 = v26;
      v40 = 2112;
      v41 = v29;
      _os_log_error_impl(&dword_22506F000, v24, OS_LOG_TYPE_ERROR, "Stopping after error fetching deltas for operation %{public}@: %@", &v38, 0x16u);
    }

    else
    {
      v15 = objc_msgSend_count(*(a1 + 32), v8, v9);
      v16 = *MEMORY[0x277CBC878];
      v17 = *MEMORY[0x277CBC880];
      if (v15)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v16);
        }

        v18 = *MEMORY[0x277CBC840];
        if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
        {
          v34 = v18;
          v37 = objc_msgSend_operationID(WeakRetained, v35, v36);
          v38 = 138543362;
          v39 = v37;
          _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Need to continue fetching deltas for operation %{public}@", &v38, 0xCu);
        }

        v14 = objc_msgSend_allKeys(*(a1 + 32), v19, v20);
        objc_msgSend_fetchMergeableDeltasRecursivelyForValueIDs_continuationTokens_completionHandler_(WeakRetained, v21, v14, *(a1 + 32), *(a1 + 40));
        goto LABEL_14;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v16);
      }

      v23 = *MEMORY[0x277CBC840];
      if (!os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
LABEL_7:
        v13 = *(a1 + 40);
        v14 = objc_msgSend_error(v6, v11, v12);
        (*(v13 + 16))(v13, v14);
LABEL_14:

        goto LABEL_15;
      }

      v24 = v23;
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v29 = objc_msgSend_ckShortDescription(WeakRetained, v27, v28);
      v38 = 138543874;
      v39 = v26;
      v40 = 2048;
      v41 = WeakRetained;
      v42 = 2114;
      v43 = v29;
      _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "Fetch deltas URL request completed for operation <%{public}@: %p; %{public}@>", &v38, 0x20u);
    }

    goto LABEL_7;
  }

LABEL_15:

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2251CD564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 64));
  objc_destroyWeak((v30 - 128));
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_2251CD5C0(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v5)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v8 = *(a1 + 40);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v46, v50, 16);
      if (v10)
      {
        v11 = v10;
        v42 = v6;
        v44 = a1;
        v12 = *v47;
        v43 = *MEMORY[0x277CBC120];
        do
        {
          v13 = v8;
          v14 = 0;
          do
          {
            if (*v47 != v12)
            {
              objc_enumerationMutation(v13);
            }

            v15 = *(*(&v46 + 1) + 8 * v14);
            v16 = objc_alloc_init(CKDKeyEnvelopeContext);
            v19 = objc_msgSend_pcs(v5, v17, v18);
            objc_msgSend_setShareProtection_(v16, v20, v19);
            v23 = objc_msgSend_container(WeakRetained, v21, v22);
            v26 = objc_msgSend_pcsManager(v23, v24, v25);
            objc_msgSend_setPcsManager_(v16, v27, v26);

            v45 = 0;
            LOBYTE(v26) = objc_msgSend_decryptWithContext_error_(v15, v28, v16, &v45);
            v29 = v45;
            if ((v26 & 1) == 0)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v30 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v52 = v29;
                _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "Failed to decrypt mergeable delta with error: %@", buf, 0xCu);
              }

              v32 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v31, v43, 5004, v29, @"Failed to decrypt mergeable delta");
              v33 = *(*(v44 + 56) + 8);
              v34 = *(v33 + 40);
              *(v33 + 40) = v32;
            }

            ++v14;
          }

          while (v11 != v14);
          v8 = v13;
          v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v35, &v46, v50, 16);
        }

        while (v11);
        a1 = v44;
        v6 = v42;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v36 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v41 = *(a1 + 32);
        *buf = 138412290;
        v52 = v41;
        _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "Failed to fetch PCS for value: %@", buf, 0xCu);
      }

      v38 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v37, *MEMORY[0x277CBC120], 5001, v6, @"Failed to fetch PCS to decrypt mergeable delta");
      v39 = *(*(a1 + 56) + 8);
      v8 = *(v39 + 40);
      *(v39 + 40) = v38;
    }

    dispatch_group_leave(*(a1 + 48));
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_2251CD940(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_stateTransitionGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v4);

  v7 = objc_msgSend_deltasFetchedBlock(*(a1 + 32), v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_deltasFetchedBlock(*(a1 + 32), v8, v9);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 48);
    }

    v12 = v10;
    (*(v10 + 16))(v10, *(a1 + 40), v11);
  }
}

void sub_2251CDDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251CDE0C(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v7)
    {
      objc_msgSend_setError_(WeakRetained, v3, v7);
    }

    v6 = objc_msgSend_stateTransitionGroup(WeakRetained, v3, v4);
    dispatch_group_leave(v6);
  }
}

void sub_2251CE110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v22 - 80));
  _Unwind_Resume(a1);
}

void sub_2251CE158(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_handleReplaceDeltasRequest_result_(WeakRetained, v8, v5, v6);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Replace deltas operation deallocated before per request block", v11, 2u);
    }
  }
}

void sub_2251CE240(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *MEMORY[0x277CBC878];
  v4 = *MEMORY[0x277CBC880];
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v3);
    }

    v5 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      v19 = v5;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v24 = objc_msgSend_ckShortDescription(WeakRetained, v22, v23);
      v25 = 138543874;
      v26 = v21;
      v27 = 2048;
      v28 = WeakRetained;
      v29 = 2114;
      v30 = v24;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Replace deltas URL request completed for operation <%{public}@: %p; %{public}@>", &v25, 0x20u);
    }

    v8 = objc_msgSend_error(WeakRetained, v6, v7);

    if (!v8)
    {
      v11 = objc_loadWeakRetained((a1 + 40));
      v14 = objc_msgSend_error(v11, v12, v13);
      objc_msgSend_setError_(WeakRetained, v15, v14);
    }

    v16 = objc_msgSend_stateTransitionGroup(WeakRetained, v9, v10);
    dispatch_group_leave(v16);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v3);
    }

    v17 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Replace deltas operation deallocated before request completion block", &v25, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2251CED1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251CED48(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v7)
    {
      objc_msgSend_setError_(WeakRetained, v3, v7);
    }

    v6 = objc_msgSend_stateTransitionGroup(WeakRetained, v3, v4);
    dispatch_group_leave(v6);
  }
}

void sub_2251CEE80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2251CEE9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v15 = WeakRetained;
    v4 = objc_msgSend_pendingDeltaUploads(WeakRetained, v2, v3);
    objc_msgSend_removeAllObjects(v4, v5, v6);

    v9 = objc_msgSend_pendingReplacementRequests(v15, v7, v8);
    objc_msgSend_removeAllObjects(v9, v10, v11);

    v14 = objc_msgSend_stateTransitionGroup(v15, v12, v13);
    dispatch_group_leave(v14);

    WeakRetained = v15;
  }
}

void sub_2251CF7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 + 48));
  objc_destroyWeak((v65 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v66 + 32));
  objc_destroyWeak((v67 + 32));
  objc_destroyWeak(&a65);
  _Unwind_Resume(a1);
}

void sub_2251CF808(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_handleDeltaUploaded_result_(WeakRetained, v7, v6, v5);
}

void sub_2251CF880(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_handleReplaceDeltasRequest_result_(WeakRetained, v7, v6, v5);
}

void sub_2251CF8F8(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
  {
    v7 = v4;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = objc_msgSend_ckShortDescription(WeakRetained, v10, v11);
    *buf = 138544130;
    v20 = v9;
    v21 = 2048;
    v22 = WeakRetained;
    v23 = 2114;
    v24 = v12;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Delta upload request completed for operation <%{public}@: %p; %{public}@> request: %@", buf, 0x2Au);
  }

  if (WeakRetained)
  {
    v13 = objc_msgSend_callbackQueue(WeakRetained, v5, v6);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251CFAE4;
    block[3] = &unk_278546C30;
    v16 = v3;
    v17 = WeakRetained;
    v18 = a1[4];
    dispatch_async(v13, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2251CFAE4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_error(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_error(*(a1 + 32), v5, v6);
    objc_msgSend_setError_(*(a1 + 40), v8, v7);

    v9 = *(*(a1 + 48) + 16);

    return v9();
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);

    return objc_msgSend__uploadAndReplaceDeltas_(v11, v5, v12);
  }
}

void sub_2251D0614(uint64_t a1, const char *a2, uint64_t a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_error(*(a1 + 32), a2, a3);

  if (!v4)
  {
    objc_msgSend_setResultsCursor_(*(a1 + 32), v5, *(a1 + 40));
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 32);
    v27 = v6;
    if (objc_msgSend_fetchAllResults(v26, v28, v29))
    {
      v32 = @"true";
    }

    else
    {
      v32 = @"false";
    }

    v33 = objc_msgSend_error(*(a1 + 32), v30, v31);
    v36 = objc_msgSend_resultsCursor(*(a1 + 32), v34, v35);
    *buf = 138543874;
    v44 = v32;
    v45 = 2112;
    v46 = v33;
    v47 = 2112;
    v48 = v36;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "fetchAllResults:%{public}@ error:%@ resultsCursor:%@", buf, 0x20u);
  }

  if (objc_msgSend_fetchAllResults(*(a1 + 32), v7, v8))
  {
    v11 = objc_msgSend_error(*(a1 + 32), v9, v10);
    if (v11)
    {
    }

    else
    {
      v19 = objc_msgSend_resultsCursor(*(a1 + 32), v12, v13);
      if (v19)
      {
        v20 = v19;
        v21 = objc_msgSend_queryCursorUpdatedBlock(*(a1 + 32), v9, v10);

        if (v21)
        {
          v22 = objc_msgSend_queryCursorUpdatedBlock(*(a1 + 32), v9, v10);
          v25 = objc_msgSend_resultsCursor(*(a1 + 32), v23, v24);
          v37 = MEMORY[0x277D85DD0];
          v38 = 3221225472;
          v39 = sub_2251D08AC;
          v40 = &unk_278548128;
          v41 = *(a1 + 32);
          v42 = *(a1 + 48);
          (v22)[2](v22, v25, &v37);

          goto LABEL_10;
        }
      }
    }
  }

  v14 = objc_msgSend_perRequestGroup(*(a1 + 48), v9, v10);
  dispatch_group_leave(v14);

LABEL_10:
  v17 = objc_msgSend_fetchRecordsGroup(*(a1 + 32), v15, v16, v37, v38, v39, v40, v41);
  dispatch_group_leave(v17);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2251D08AC(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = v5;
      v11 = objc_msgSend_operationID(v7, v9, v10);
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Finishing daemon operation %{public}@ due to client-returned error %@", &v16, 0x16u);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v6, v4);
  }

  objc_msgSend_setHasCalledQueryCursorUpdatedBlock_(*(a1 + 32), v3, 1);
  v14 = objc_msgSend_perRequestGroup(*(a1 + 40), v12, v13);
  dispatch_group_leave(v14);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2251D0DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251D0DF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251D100C;
  block[3] = &unk_278549470;
  objc_copyWeak(&v35, &location);
  v11 = v9;
  v30 = v11;
  v31 = WeakRetained;
  v12 = v7;
  v13 = *(a1 + 40);
  v32 = v12;
  v33 = v13;
  v14 = v8;
  v34 = v14;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_msgSend_addPerRequestCallbackBlock_(*(a1 + 32), v16, v15);
  v19 = objc_msgSend_perRequestCallbackGroup(*(a1 + 32), v17, v18);
  v22 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v20, v21);
  dispatch_group_async(v19, v22, v15);

  v25 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v23, v24);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2251D14B4;
  v26[3] = &unk_278545898;
  v27 = *(a1 + 32);
  v28 = WeakRetained;
  dispatch_async(v25, v26);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

void sub_2251D0FF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_2251D100C(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if (isCancelled)
  {
    goto LABEL_32;
  }

  v8 = *(a1 + 32);
  v9 = MEMORY[0x277CBC810];
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_hasCalledQueryCursorUpdatedBlock(*(a1 + 40), v6, v7) && objc_msgSend_checkAndClearUnitTestOverrides_(*(a1 + 40), v6, @"FakePCSDecryptionFailure"))
  {
    v10 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v6, *MEMORY[0x277CBC120], 5004, 0, @"TEST PCS decrypt failure");

    v8 = v10;
  }

  if (objc_msgSend_CKIsNotFoundError(v8, v6, v7))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v16 = *(a1 + 40);
    v17 = v13;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = *(a1 + 40);
    v23 = objc_msgSend_ckShortDescription(v20, v21, v22);
    v24 = *(a1 + 48);
    *buf = 138544386;
    v53 = v19;
    v54 = 2048;
    v55 = v20;
    v56 = 2114;
    v57 = v23;
    v58 = 2112;
    v59 = v24;
    v60 = 2112;
    v61 = v8;
    _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Warn: Query <%{public}@: %p; %{public}@> could not find record %@: %@", buf, 0x34u);

    goto LABEL_27;
  }

  if (!v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a1 + 48);
      *buf = 138412290;
      v53 = v38;
      _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "The full record for %@ was fetched", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v25 = objc_msgSend_container(*(a1 + 56), v11, v12);
  objc_msgSend_clientSDKVersion(v25, v26, v27);
  v28 = CKLinkCheck32f5805a68adfc1b65f94a0de69aa32177c7cd24();

  if (*v9)
  {
    v31 = objc_msgSend_unitTestOverrides(*(a1 + 56), v29, v30);
    v33 = objc_msgSend_objectForKeyedSubscript_(v31, v32, @"LegacyErrorHandling");
    v36 = objc_msgSend_BOOLValue(v33, v34, v35);

    if ((v36 & 1) != 0 || v28 != 1)
    {
LABEL_21:
      v39 = objc_msgSend_error(*(a1 + 40), v29, v30);

      if (!v39)
      {
        v40 = objc_msgSend__wrapError_format_(*(a1 + 40), v29, v8, @"Encountered an error fetching records");
        objc_msgSend_setError_(*(a1 + 40), v41, v40);
      }
    }
  }

  else if ((v28 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_23:
  v42 = objc_msgSend_recordFetchCompletionBlock(*(a1 + 40), v29, v30);

  if (!v42)
  {
    goto LABEL_28;
  }

  v43 = *(a1 + 64);
  v17 = v43;
  if (v8)
  {

    v17 = 0;
  }

  v19 = objc_msgSend_recordFetchCompletionBlock(*(a1 + 40), v44, v45);
  (v19)[2](v19, *(a1 + 48), v17, v8);
LABEL_27:

LABEL_28:
  if (!v8)
  {
    v46 = objc_msgSend_error(*(a1 + 40), v14, v15);

    if (!v46)
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_2251D1420;
      v50[3] = &unk_2785487F8;
      v47 = *(a1 + 56);
      v51 = *(a1 + 64);
      objc_msgSend_updateCloudKitMetrics_(v47, v48, v50);
    }
  }

LABEL_32:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_2251D1420(uint64_t a1, void *a2)
{
  v21 = a2;
  v5 = objc_msgSend_recordsDownloaded(v21, v3, v4);
  objc_msgSend_setRecordsDownloaded_(v21, v6, v5 + 1);
  v9 = objc_msgSend_assetCount(*(a1 + 32), v7, v8);
  v12 = objc_msgSend_assetsDownloaded(v21, v10, v11);
  objc_msgSend_setAssetsDownloaded_(v21, v13, v12 + v9);
  v16 = objc_msgSend_assetDiskSize(*(a1 + 32), v14, v15);
  v19 = objc_msgSend_assetsDownloadedFileSize(v21, v17, v18);
  objc_msgSend_setAssetsDownloadedFileSize_(v21, v20, v19 + v16);
}

void sub_2251D14B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_perRequestCallbackGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v4);

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = objc_msgSend_fetchRecordsGroup(v7, v5, v6);
    dispatch_group_leave(v8);
  }
}

void sub_2251D1A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, id a27)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a27);
  objc_destroyWeak((v27 - 128));
  _Unwind_Resume(a1);
}

void sub_2251D1AC0(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v8 = objc_msgSend_shouldFetchAssetContent(v5, v6, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_shouldFetchAssetContent(v5, v9, v10);
    v15 = objc_msgSend_BOOLValue(v12, v13, v14);

    if (v15)
    {
      objc_msgSend_addObject_(*(a1 + 32), v16, v17);
    }
  }
}

void sub_2251D1B64(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = MEMORY[0x277CBC878];
  v6 = *MEMORY[0x277CBC878];
  v7 = MEMORY[0x277CBC880];
  v8 = *MEMORY[0x277CBC880];
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v9 = MEMORY[0x277CBC830];
    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      log = v10;
      v45 = objc_opt_class();
      v63 = NSStringFromClass(v45);
      v62 = objc_msgSend_ckShortDescription(v3, v46, v47);
      v50 = objc_msgSend_operationID(WeakRetained, v48, v49);
      objc_msgSend_error(v3, v51, v52);
      *buf = 138544386;
      v74 = v63;
      v75 = 2048;
      v76 = v3;
      v77 = 2114;
      v78 = v62;
      v79 = 2114;
      v80 = v50;
      v82 = v81 = 2112;
      v53 = v82;
      _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Query request <%{public}@: %p; %{public}@> for operation %{public}@ finished with error %@", buf, 0x34u);
    }

    v13 = objc_msgSend_numRequestsSent(WeakRetained, v11, v12);
    objc_msgSend_setNumRequestsSent_(WeakRetained, v14, v13 + 1);
    v19 = objc_msgSend_error(v3, v15, v16);
    if (v19 || !objc_msgSend_isExecuting(WeakRetained, v17, v18) || (objc_msgSend_isCancelled(WeakRetained, v20, v21) & 1) != 0 || !objc_msgSend_fetchAllResults(WeakRetained, v22, v23))
    {
    }

    else
    {
      v26 = objc_msgSend_resultsCursor(v3, v24, v25);
      if (v26)
      {
        v29 = v26;
        v30 = objc_msgSend_numRequestsSent(WeakRetained, v27, v28);

        if (v30)
        {
          if (*v7 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *v5);
          }

          v31 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
          {
            v58 = v31;
            v61 = objc_msgSend_resultsCursor(v3, v59, v60);
            *buf = 138412290;
            v74 = v61;
            _os_log_debug_impl(&dword_22506F000, v58, OS_LOG_TYPE_DEBUG, "We're not done here. Sending another query with cursor %@", buf, 0xCu);
          }

          v34 = objc_msgSend_resultsCursor(v3, v32, v33);
          objc_msgSend__sendQueryRequestWithCursor_previousRequestSchedulerInfo_(WeakRetained, v35, v34, v4);

          v36 = *(a1 + 32);
          v39 = objc_msgSend_callbackQueue(WeakRetained, v37, v38);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_2251D2008;
          block[3] = &unk_278545AB0;
          block[4] = WeakRetained;
          v71 = v4;
          v72 = *(a1 + 64);
          dispatch_group_notify(v36, v39, block);

          v40 = v71;
          goto LABEL_19;
        }
      }
    }

    v41 = *(a1 + 32);
    v42 = objc_msgSend_callbackQueue(WeakRetained, v27, v28);
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = sub_2251D20B4;
    v65[3] = &unk_2785494E8;
    v66 = v4;
    v67 = v3;
    v68 = WeakRetained;
    v69 = *(a1 + 64);
    dispatch_group_notify(v41, v42, v65);

    v40 = v66;
LABEL_19:

    goto LABEL_24;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v6);
  }

  v43 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v54 = v43;
    v57 = objc_msgSend_requestUUID(v3, v55, v56);
    *buf = 138543362;
    v74 = v57;
    _os_log_debug_impl(&dword_22506F000, v54, OS_LOG_TYPE_DEBUG, "Owning operation for request %{public}@ no longer around. Bailing.", buf, 0xCu);
  }

LABEL_24:

  v44 = *MEMORY[0x277D85DE8];
}

void sub_2251D2008(uint64_t a1, const char *a2)
{
  objc_msgSend__handleQueryRequestFinishedWithSchedulerInfo_(*(a1 + 32), a2, *(a1 + 40));
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
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = objc_msgSend_fetchRecordsGroup(v10, v8, v9);
    dispatch_group_leave(v11);
  }
}

void sub_2251D20B4(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251D2234;
  block[3] = &unk_278546990;
  v19 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v20 = v2;
  v21 = v3;
  v4 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_msgSend_addPerRequestCallbackBlock_(*(a1 + 32), v5, v4);
  v8 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v6, v7);
  dispatch_async(v8, v4);

  v11 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v9, v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2251D2428;
  v17[3] = &unk_278545A00;
  v17[4] = *(a1 + 48);
  dispatch_async(v11, v17);

  if (*(a1 + 56) == 1)
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

void sub_2251D2234(void **a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isCancelled(a1[4], a2, a3))
  {
LABEL_2:
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = objc_msgSend_error(a1[5], v4, v5);

  if (!v7)
  {
    objc_msgSend__handleQueryRequestFinishedWithSchedulerInfo_(a1[6], v8, a1[4]);
    if (objc_msgSend_fetchAllResults(a1[6], v15, v16))
    {
      v19 = objc_msgSend_resultsCursor(a1[5], v17, v18);

      if (v19)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v20 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v26 = a1[5];
          v27 = v20;
          v30 = objc_msgSend_resultsCursor(v26, v28, v29);
          *buf = 138412290;
          v33 = v30;
          _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "We're not done here. Sending another query with cursor %@", buf, 0xCu);
        }

        v23 = a1[6];
        v24 = objc_msgSend_resultsCursor(a1[5], v21, v22);
        objc_msgSend__sendQueryRequestWithCursor_previousRequestSchedulerInfo_(v23, v25, v24, a1[4]);
      }
    }

    goto LABEL_2;
  }

  v10 = objc_msgSend_error(a1[5], v8, v9);
  objc_msgSend_setError_(a1[6], v11, v10);

  v31 = objc_msgSend_perRequestGroup(a1[4], v12, v13);
  dispatch_group_leave(v31);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_2251D2428(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_fetchRecordsGroup(v3, a2, a3);
    dispatch_group_leave(v4);
  }
}

void sub_2251D2474(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleRecordResponses_perRequestSchedulerInfo_(WeakRetained, v5, v3, v4);
}

void sub_2251D24E8(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v13 = 0;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Waiting for all record fetches to finish...", v13, 2u);
  }

  v5 = objc_msgSend_requestInfos(*(a1 + 32), v3, v4);
  objc_msgSend_removeAllObjects(v5, v6, v7);

  v10 = objc_msgSend_recordFetcher(*(a1 + 32), v8, v9);
  objc_msgSend_finishIfAppropriate(v10, v11, v12);
}

void sub_2251D2CCC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v30 = 138412290;
      v31 = v9;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Error while trying to determine userID: %@", &v30, 0xCu);
    }

    objc_msgSend_setError_(*(a1 + 32), v11, v9);
  }

  else
  {
    v14 = [CKDProtocolTranslator alloc];
    v17 = objc_msgSend_initWithContainer_databaseScope_(v14, v15, *(a1 + 40), *(a1 + 48));
    if (v17)
    {
      objc_msgSend_setTranslator_(*(a1 + 32), v16, v17);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v18 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v30) = 0;
        _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "CKDSerializeRecordModificationsOperation is unable to instantiate a CKDProtocolTranslator", &v30, 2u);
      }

      v20 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBBF50], 1000, @"CKDSerializeRecordModificationsOperation is unable to instantiate a CKDProtocolTranslator");
      objc_msgSend_setError_(*(a1 + 32), v21, v20);
    }
  }

  v24 = objc_msgSend_error(*(a1 + 32), v12, v13);
  if (!v24)
  {
    v25 = objc_msgSend_translator(*(a1 + 32), v22, v23);
    if (!v25)
    {
      __assert_rtn("[CKDDeserializeRecordModificationsOperation _setupTranslator]_block_invoke", "CKDDeserializeRecordModificationsOperation.m", 157, "self.error != nil || self.translator != nil");
    }
  }

  v28 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v26, v27);
  dispatch_group_leave(v28);

  v29 = *MEMORY[0x277D85DE8];
}

void sub_2251D3E24(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_recordsToSave(*(a1 + 32), v4, v5);
  objc_msgSend_setFullRecordsToFetch_(v3, v7, v6);

  objc_msgSend_setUseRecordCache_(v3, v8, 0);
  objc_msgSend_setShouldUpdateTimestampsForFetchedMergeableValues_(v3, v9, 0);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2251D3FE0;
  v15[3] = &unk_278548CC0;
  objc_copyWeak(&v16, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v10, v15);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2251D40B4;
  v12[3] = &unk_278548748;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  objc_msgSend_setCompletionBlock_(v3, v11, v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251D3FA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251D3FE0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (v6)
  {
    objc_msgSend_setError_(WeakRetained, v8, v6);
  }

  v11 = objc_msgSend_container(v10, v8, v9);
  v14 = objc_msgSend_options(v11, v12, v13);
  if (objc_msgSend_returnPCSMetadata(v14, v15, v16))
  {
    v17 = CKIsPCSError();

    if ((v17 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v20, v18, v19);
    }
  }

  else
  {
  }
}

void sub_2251D40B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_error(v2, v6, v7);
    objc_msgSend_setError_(WeakRetained, v9, v8);
  }

  v10 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v10);
}

void sub_2251D4A18(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2251D4B9C;
  v9[3] = &unk_278548FA8;
  objc_copyWeak(&v10, &location);
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v9);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2251D4C04;
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

void sub_2251D4B60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251D4B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v8)
  {
    objc_msgSend_setError_(WeakRetained, v6, v8);
  }
}

void sub_2251D4C04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_error(v2, v6, v7);
    objc_msgSend_setError_(WeakRetained, v9, v8);
  }

  v10 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v10);
}

void sub_2251D4D74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v30 = 138412290;
      v31 = v9;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Error while trying to determine userID: %@", &v30, 0xCu);
    }

    objc_msgSend_setError_(*(a1 + 32), v11, v9);
  }

  else
  {
    v14 = [CKDProtocolTranslator alloc];
    v17 = objc_msgSend_initWithContainer_databaseScope_(v14, v15, *(a1 + 40), *(a1 + 48));
    if (v17)
    {
      objc_msgSend_setTranslator_(*(a1 + 32), v16, v17);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v18 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v30) = 0;
        _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "CKDSerializeRecordModificationsOperation is unable to instantiate a CKDProtocolTranslator", &v30, 2u);
      }

      v20 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBBF50], 1000, @"CKDSerializeRecordModificationsOperation is unable to instantiate a CKDProtocolTranslator");
      objc_msgSend_setError_(*(a1 + 32), v21, v20);
    }
  }

  v24 = objc_msgSend_error(*(a1 + 32), v12, v13);
  if (!v24)
  {
    v25 = objc_msgSend_translator(*(a1 + 32), v22, v23);
    if (!v25)
    {
      __assert_rtn("[CKDSerializeRecordModificationsOperation _setupTranslator]_block_invoke", "CKDSerializeRecordModificationsOperation.m", 214, "self.error != nil || self.translator != nil");
    }
  }

  v28 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v26, v27);
  dispatch_group_leave(v28);

  v29 = *MEMORY[0x277D85DE8];
}

void sub_2251D5774(void **a1, void *a2, void *a3, _BYTE *a4)
{
  v57 = a4;
  v68 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(CKDPRealTimeMessageAssociatedMergeableDeltas);
  v11 = objc_msgSend_translator(a1[4], v9, v10);
  v14 = objc_msgSend_recordID(a1[5], v12, v13);
  v16 = objc_msgSend_pRecordIdentifierFromRecordID_(v11, v15, v14);
  objc_msgSend_setRecordIdentifier_(v8, v17, v16);

  v18 = objc_opt_new();
  objc_msgSend_setFieldIdentifier_(v8, v19, v18);

  v22 = objc_msgSend_fieldIdentifier(v8, v20, v21);
  v59 = v6;
  objc_msgSend_setName_(v22, v23, v6);

  v26 = objc_msgSend_translator(a1[4], v24, v25);
  v29 = objc_msgSend_valueID(v7, v27, v28);
  v31 = objc_msgSend_pMergeableValueIdentifierFromMergeableValueID_(v26, v30, v29);
  objc_msgSend_setIdentifier_(v8, v32, v31);

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v58 = v7;
  v36 = objc_msgSend_deltasToSave(v7, v34, v35);
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v61, v67, 16);
  if (v38)
  {
    v41 = v38;
    v42 = *v62;
    while (2)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v62 != v42)
        {
          objc_enumerationMutation(v36);
        }

        v44 = *(*(&v61 + 1) + 8 * i);
        v45 = objc_msgSend_translator(a1[4], v39, v40, v57);
        v60 = 0;
        v47 = objc_msgSend_pMergeableDeltaFromDelta_error_(v45, v46, v44, &v60);
        v48 = v60;

        if (v48)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v53 = v58;
          v52 = v59;
          v54 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v66 = v48;
            _os_log_error_impl(&dword_22506F000, v54, OS_LOG_TYPE_ERROR, "Error translating CKMergerableDeltas during serialization: %@", buf, 0xCu);
          }

          objc_msgSend_setError_(a1[4], v55, v48);
          *v57 = 1;

          goto LABEL_15;
        }

        objc_msgSend_addObject_(v33, v49, v47);
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v61, v67, 16);
      if (v41)
      {
        continue;
      }

      break;
    }
  }

  objc_msgSend_setMergeableDeltas_(v8, v50, v33);
  objc_msgSend_addObject_(a1[6], v51, v8);
  v53 = v58;
  v52 = v59;
LABEL_15:

  v56 = *MEMORY[0x277D85DE8];
}

void sub_2251D5FF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordArchivedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_recordArchivedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251D63D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 120));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_2251D6420(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordArchived_responseCode_(WeakRetained, v7, v6, v5);
}

void sub_2251D6498(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (v4)
  {
    v7 = objc_msgSend_error(WeakRetained, v5, v6);
    v8 = objc_loadWeakRetained((a1 + 48));
    objc_msgSend_setError_(v8, v9, v7);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_2251D6530(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = v2;
    v13 = objc_msgSend_operationID(v9, v11, v12);
    v14 = 138543362;
    v15 = v13;
    _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Archive records request %{public}@ is complete", &v14, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = objc_msgSend_error(v5, v3, v4);
  objc_msgSend_finishWithError_(v5, v7, v6);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2251D70AC(void **a1, const char *a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_error(a1[4], a2, a3);
  if (v4)
  {

    goto LABEL_3;
  }

  v15 = objc_msgSend_serverChangeTokenUpdatedBlock(a1[4], v5, v6);

  if (!v15)
  {
LABEL_3:
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v7 = a1[5];
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v45, v56, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v46;
      while (1)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend_perRequestGroup(a1[8], v10, v11);
        dispatch_group_leave(v14);

        if (!--v12)
        {
          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v45, v56, 16);
          if (!v12)
          {
            break;
          }
        }
      }
    }

    goto LABEL_20;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = a1[5];
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v16, &v52, v57, 16);
  if (v17)
  {
    v19 = v17;
    v43 = v50;
    v44 = *v53;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v53 != v44)
        {
          objc_enumerationMutation(v7);
        }

        v21 = *(*(&v52 + 1) + 8 * i);
        v22 = objc_msgSend_objectForKeyedSubscript_(a1[6], v18, v21, v43);
        v24 = objc_msgSend_objectForKeyedSubscript_(a1[7], v23, v21);
        v27 = objc_msgSend_resultServerChangeTokenData(v22, v25, v26);

        if (v27)
        {
          v30 = objc_alloc(MEMORY[0x277CBC670]);
          v33 = objc_msgSend_resultServerChangeTokenData(v22, v31, v32);
          v27 = objc_msgSend_initWithData_(v30, v34, v33);
        }

        v35 = objc_msgSend_serverChangeTokenUpdatedBlock(a1[4], v28, v29);
        v38 = objc_msgSend_status(v22, v36, v37);
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v50[0] = sub_2251D73B8;
        v50[1] = &unk_278548128;
        v50[2] = a1[4];
        v51 = a1[8];
        (v35)[2](v35, v21, v27, v38, v24, v49);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v18, &v52, v57, 16);
    }

    while (v19);
  }

LABEL_20:

  v41 = objc_msgSend_fetchRecordsGroup(a1[4], v39, v40);
  dispatch_group_leave(v41);

  v42 = *MEMORY[0x277D85DE8];
}

void sub_2251D73B8(uint64_t a1, void *a2)
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

void sub_2251D77F8(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  if (objc_msgSend_status(v5, v6, v7))
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v8, v20);

    if (!v9)
    {
      v10 = objc_alloc(MEMORY[0x277CBC670]);
      v13 = objc_msgSend_resultServerChangeTokenData(v5, v11, v12);
      v15 = objc_msgSend_initWithData_(v10, v14, v13);

      v16 = objc_alloc(MEMORY[0x277CBC378]);
      v18 = objc_msgSend_initWithPreviousServerChangeToken_(v16, v17, v15);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v19, v18, v20);
    }
  }
}

void sub_2251D7B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_2251D7BB8(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [CKDRecordResponse alloc];
  v7 = objc_msgSend_recordID(v3, v5, v6);
  v10 = objc_msgSend_etag(v3, v8, v9);
  v12 = objc_msgSend_initWithRecordID_record_etag_(v4, v11, v7, v3, v10);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v19[0] = v12;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v19, 1);
  v16 = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleChangedRecords_perRequestSchedulerInfo_(WeakRetained, v17, v15, v16);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2251D8330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251D835C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *MEMORY[0x277CBC878];
  v11 = *MEMORY[0x277CBC880];
  v12 = MEMORY[0x277CBC830];
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v10);
    }

    v13 = *v12;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = v13;
      v17 = objc_msgSend_ckShortDescription(v7, v15, v16);
      *buf = 138543362;
      v51 = v17;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Fetched record %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v10);
    }

    v18 = *v12;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v35 = v18;
      v38 = objc_msgSend_ckShortDescription(v7, v36, v37);
      *buf = 138543618;
      v51 = v38;
      v52 = 2112;
      v53 = v9;
      _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Failed to fetch record %{public}@ with error: %@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, *(a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251D871C;
  block[3] = &unk_278549680;
  objc_copyWeak(&v48, buf);
  objc_copyWeak(&v49, (a1 + 56));
  v19 = v9;
  v43 = v19;
  v20 = v7;
  v44 = v20;
  v45 = *(a1 + 40);
  v21 = v8;
  v22 = *(a1 + 48);
  v46 = v21;
  v47 = v22;
  v23 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_msgSend_addPerRequestCallbackBlock_(*(a1 + 32), v24, v23);
  v27 = objc_msgSend_perRequestCallbackGroup(*(a1 + 32), v25, v26);
  v30 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v28, v29);
  dispatch_group_async(v27, v30, v23);

  v33 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v31, v32);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_2251D8AE8;
  v39[3] = &unk_2785476F0;
  objc_copyWeak(&v41, (a1 + 56));
  v40 = *(a1 + 32);
  dispatch_async(v33, v39);

  objc_destroyWeak(&v41);
  objc_destroyWeak(&v49);
  objc_destroyWeak(&v48);
  objc_destroyWeak(buf);

  v34 = *MEMORY[0x277D85DE8];
}

void sub_2251D86F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2251D871C(id *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v6 = objc_loadWeakRetained(a1 + 10);
    v9 = a1[4];
    if (*MEMORY[0x277CBC810] == 1)
    {
      v10 = objc_msgSend_unitTestOverrides(v6, v7, v8);
      v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"RecordNameForDecryptionFailureOnSync");
      v15 = objc_msgSend_recordName(a1[5], v13, v14);
      isEqualToString = objc_msgSend_isEqualToString_(v12, v16, v15);

      if (isEqualToString)
      {
        v18 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 5004, 0, @"TEST PCS decrypt failure");

        v9 = v18;
      }
    }

    if (v9)
    {
      v19 = objc_msgSend_objectForKeyedSubscript_(a1[6], v7, a1[5]);
      if (objc_msgSend_isMergeableValueDeltaRecord(v19, v20, v21) && objc_msgSend_CKIsNotFoundError(v9, v22, v23))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v24 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v25 = v24;
          v28 = objc_msgSend_recordID(v19, v26, v27);
          *buf = 138412290;
          v45 = v28;
          _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "Dropping mergeable value delta record on the floor because we got a not-found error fetching changes: %@", buf, 0xCu);
        }

        v9 = 0;
LABEL_15:
        v31 = objc_msgSend_errorReportingStyle(v6, v29, v30);
        if (v31 == 1)
        {
          v34 = CKIsPCSError();
          if (!v9)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v31 != 2)
          {
            goto LABEL_23;
          }

          v34 = 0;
          if (!v9)
          {
            goto LABEL_23;
          }
        }

        if (!v34)
        {
          v35 = objc_msgSend_error(v6, v32, v33);

          if (v35)
          {
LABEL_27:

            goto LABEL_28;
          }

          v37 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(a1[8], v36, v9, a1[5], 1000, @"Encountered an error fetching records");
          objc_msgSend_setError_(v6, v38, v37);
LABEL_26:

          goto LABEL_27;
        }

LABEL_23:
        if (v9)
        {
          goto LABEL_27;
        }

        v39 = objc_msgSend_error(v6, v32, v33);

        if (v39)
        {
          goto LABEL_27;
        }

        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = sub_2251D8A54;
        v42[3] = &unk_2785487F8;
        v43 = a1[7];
        objc_msgSend_updateCloudKitMetrics_(v6, v40, v42);
        v37 = v43;
        goto LABEL_26;
      }
    }

    objc_msgSend__noteChangedRecordWithID_record_error_(v6, v7, a1[5], a1[7], v9);
    goto LABEL_15;
  }

LABEL_28:
  v41 = *MEMORY[0x277D85DE8];
}

void sub_2251D8A54(uint64_t a1, void *a2)
{
  v21 = a2;
  v5 = objc_msgSend_recordsDownloaded(v21, v3, v4);
  objc_msgSend_setRecordsDownloaded_(v21, v6, v5 + 1);
  v9 = objc_msgSend_assetCount(*(a1 + 32), v7, v8);
  v12 = objc_msgSend_assetsDownloaded(v21, v10, v11);
  objc_msgSend_setAssetsDownloaded_(v21, v13, v12 + v9);
  v16 = objc_msgSend_assetDiskSize(*(a1 + 32), v14, v15);
  v19 = objc_msgSend_assetsDownloadedFileSize(v21, v17, v18);
  objc_msgSend_setAssetsDownloadedFileSize_(v21, v20, v19 + v16);
}

void sub_2251D8AE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_perRequestCallbackGroup(*(a1 + 32), v2, v3);
  dispatch_group_leave(v4);

  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = objc_msgSend_fetchRecordsGroup(WeakRetained, v5, v6);
    dispatch_group_leave(v8);

    v7 = WeakRetained;
  }
}

void sub_2251D8D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251D8D60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);

    MEMORY[0x2821F9670](v6, sel__noteDeletedRecordWithID_recordType_, v7);
  }
}

void sub_2251D8F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251D8F24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    MEMORY[0x2821F9670](v6, sel__noteAttributesChangedForZone_, v7);
  }
}

void sub_2251D9088(uint64_t a1, void *a2)
{
  location[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v4;
    v12 = objc_msgSend_zoneID(v8, v10, v11);
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v12;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Spawning operation to apply PCS changes for zone %@", location, 0xCu);
  }

  objc_initWeak(location, v3);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251D9260;
  v14[3] = &unk_2785496F8;
  objc_copyWeak(v16, location);
  v16[1] = *(a1 + 48);
  v13 = *(a1 + 32);
  v5 = v13.i64[0];
  v15 = vextq_s8(v13, v13, 8uLL);
  objc_msgSend_setCompletionBlock_(v3, v6, v14);

  objc_destroyWeak(v16);
  objc_destroyWeak(location);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2251D923C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_2251D9260(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*MEMORY[0x277CBC810] == 1)
  {
    v5 = objc_msgSend_unitTestOverrides(*(a1 + 32), v2, v3);
    v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"EnsureApplyZoneAttributesChangeOperationSuccess");

    if (v7)
    {
      v10 = objc_msgSend_error(WeakRetained, v8, v9);

      if (v10)
      {
        v29 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, *(a1 + 56), *(a1 + 32), @"CKDFetchBatchedRecordsOperation.m", 288, @"Operation returned an unexpected error");
      }
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 40);
    v16 = v13;
    v19 = objc_msgSend_zoneID(v15, v17, v18);
    v24 = objc_msgSend_error(WeakRetained, v20, v21);
    if (v24)
    {
      v25 = @". Error:";
    }

    else
    {
      v25 = &stru_28385ED00;
    }

    v26 = objc_msgSend_error(WeakRetained, v22, v23);
    v27 = v26;
    v31 = 138412802;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = &stru_28385ED00;
    }

    v32 = v19;
    v33 = 2112;
    v34 = v25;
    v35 = 2112;
    v36 = v28;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Operation to apply PCS changes completed for zone %@%@%@", &v31, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2251D97DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&location);
  objc_destroyWeak((v28 - 128));
  _Unwind_Resume(a1);
}

void sub_2251D9840(uint64_t a1)
{
  v85 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = MEMORY[0x277CBC878];
  v5 = *MEMORY[0x277CBC878];
  v6 = MEMORY[0x277CBC880];
  v7 = *MEMORY[0x277CBC880];
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v8 = MEMORY[0x277CBC830];
    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      log = v9;
      v45 = objc_opt_class();
      v63 = NSStringFromClass(v45);
      v62 = objc_msgSend_ckShortDescription(v3, v46, v47);
      v50 = objc_msgSend_operationID(WeakRetained, v48, v49);
      objc_msgSend_error(v3, v51, v52);
      *buf = 138544386;
      v76 = v63;
      v77 = 2048;
      v78 = v3;
      v79 = 2114;
      v80 = v62;
      v81 = 2114;
      v82 = v50;
      v84 = v83 = 2112;
      v53 = v84;
      _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Batch Record Fetch request <%{public}@: %p; %{public}@> for operation %{public}@ finished with error %@", buf, 0x34u);
    }

    v11 = objc_msgSend__optionsForZonesWithPendingChangesAfterRequest_(WeakRetained, v10, v3);
    v14 = objc_msgSend_allKeys(v11, v12, v13);
    v17 = objc_msgSend_numRequestsSent(WeakRetained, v15, v16);
    objc_msgSend_setNumRequestsSent_(WeakRetained, v18, v17 + 1);
    v23 = objc_msgSend_error(v3, v19, v20);
    if (!v23 && objc_msgSend_isExecuting(WeakRetained, v21, v22) && (objc_msgSend_isCancelled(WeakRetained, v24, v25) & 1) == 0 && objc_msgSend_fetchAllChanges(WeakRetained, v26, v27) && objc_msgSend_count(v14, v28, v29))
    {
      if (objc_msgSend_numRequestsSent(WeakRetained, v30, v31))
      {
        if (*v6 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *v4);
        }

        v34 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          v58 = v34;
          v61 = objc_msgSend_count(v14, v59, v60);
          *buf = 134218242;
          v76 = v61;
          v77 = 2112;
          v78 = v11;
          _os_log_debug_impl(&dword_22506F000, v58, OS_LOG_TYPE_DEBUG, "We're not done here. Sending another fetch changes request for %lu zones with options:\n%@", buf, 0x16u);
        }

        objc_msgSend__sendFetchChangesRequestForZoneIDs_withOptions_previousRequestSchedulerInfo_(WeakRetained, v35, v14, v11, *(a1 + 32));
        v36 = *(a1 + 40);
        v39 = objc_msgSend_callbackQueue(WeakRetained, v37, v38);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2251D9D00;
        block[3] = &unk_278545AB0;
        block[4] = WeakRetained;
        v73 = *(a1 + 32);
        v74 = *(a1 + 64);
        dispatch_group_notify(v36, v39, block);

        v40 = v73;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v41 = *(a1 + 40);
    v42 = objc_msgSend_callbackQueue(WeakRetained, v32, v33);
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = sub_2251D9D98;
    v65[3] = &unk_278549748;
    v66 = *(a1 + 32);
    v67 = v3;
    v68 = WeakRetained;
    v69 = v14;
    v70 = v11;
    v71 = *(a1 + 64);
    dispatch_group_notify(v41, v42, v65);

    v40 = v66;
LABEL_19:

    goto LABEL_24;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v5);
  }

  v43 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v54 = v43;
    v57 = objc_msgSend_requestUUID(v3, v55, v56);
    *buf = 138543362;
    v76 = v57;
    _os_log_debug_impl(&dword_22506F000, v54, OS_LOG_TYPE_DEBUG, "Owning operation for request %{public}@ no longer around. Bailing.", buf, 0xCu);
  }

LABEL_24:

  v44 = *MEMORY[0x277D85DE8];
}

void sub_2251D9D00(uint64_t a1, const char *a2)
{
  objc_msgSend__handleFetchChangesRequestFinishedWithSchedulerInfo_(*(a1 + 32), a2, *(a1 + 40));
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
  v10 = objc_msgSend_fetchRecordsGroup(*(a1 + 32), v8, v9);
  dispatch_group_leave(v10);
}

void sub_2251D9D98(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251D9F54;
  block[3] = &unk_278548978;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v19 = *(a1 + 48);
  v4 = *(&v19 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v23 = v19;
  v22 = v5;
  v24 = *(a1 + 64);
  v6 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_msgSend_addPerRequestCallbackBlock_(*(a1 + 32), v7, v6);
  v10 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v8, v9);
  dispatch_async(v10, v6);

  v13 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v11, v12);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2251DA12C;
  v20[3] = &unk_278545A00;
  v20[4] = *(a1 + 48);
  dispatch_async(v13, v20);

  if (*(a1 + 72) == 1)
  {
    v16 = objc_msgSend_error(*(a1 + 48), v14, v15);

    if (v16)
    {
      objc_msgSend_cancelAndDisablePerRequestCallbackBlocks(*(a1 + 32), v17, v18);
    }

    objc_msgSend_resumeCallbackQueue(*(a1 + 32), v17, v18, v19);
  }

  objc_msgSend_disablePerRequestCallbackBlocks(*(a1 + 32), v14, v15, v19);
}

void sub_2251D9F54(uint64_t a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isCancelled(*(a1 + 32), a2, a3))
  {
LABEL_2:
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = objc_msgSend_error(*(a1 + 40), v4, v5);

  if (!v7)
  {
    objc_msgSend__handleFetchChangesRequestFinishedWithSchedulerInfo_(*(a1 + 48), v8, *(a1 + 32));
    if (objc_msgSend_fetchAllChanges(*(a1 + 48), v15, v16) && objc_msgSend_count(*(a1 + 56), v17, v18))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 56);
        v22 = v19;
        v25 = objc_msgSend_count(v21, v23, v24);
        v26 = *(a1 + 64);
        *buf = 134218242;
        v29 = v25;
        v30 = 2112;
        v31 = v26;
        _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "We're not done here. Sending another fetch changes request for %lu zones with options:\n%@", buf, 0x16u);
      }

      objc_msgSend__sendFetchChangesRequestForZoneIDs_withOptions_previousRequestSchedulerInfo_(*(a1 + 48), v20, *(a1 + 56), *(a1 + 64), *(a1 + 32));
    }

    goto LABEL_2;
  }

  v10 = objc_msgSend_error(*(a1 + 40), v8, v9);
  objc_msgSend_setError_(*(a1 + 48), v11, v10);

  v27 = objc_msgSend_perRequestGroup(*(a1 + 32), v12, v13);
  dispatch_group_leave(v27);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_2251DA12C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_fetchRecordsGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v3);
}

void sub_2251DA730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251DA788(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2251DA814;
  v4[3] = &unk_2785494C0;
  v5 = *(a1 + 32);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a2, v3, v4);
}

void sub_2251DA814(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v8 = objc_msgSend_shouldFetchAssetContent(v5, v6, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_shouldFetchAssetContent(v5, v9, v10);
    v15 = objc_msgSend_BOOLValue(v12, v13, v14);

    if (v15)
    {
      objc_msgSend_addObject_(*(a1 + 32), v16, v17);
    }
  }
}

void sub_2251DA8B8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setRecordFetcher_(*(a1 + 32), v4, v3);
  v7 = objc_msgSend_recordFetcher(*(a1 + 32), v5, v6);
  objc_msgSend_setUseRecordCache_(v7, v8, 0);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251DA9A4;
  v13[3] = &unk_278549318;
  objc_copyWeak(&v14, (a1 + 40));
  v11 = objc_msgSend_recordFetcher(*(a1 + 32), v9, v10);
  objc_msgSend_setFetchAggregatorCompletionBlock_(v11, v12, v13);

  objc_destroyWeak(&v14);
}

void sub_2251DA9A4(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v14 = @" with error: ";
  v15 = &stru_28385ED00;
  if (v3)
  {
    v15 = v3;
  }

  else
  {
    v14 = &stru_28385ED00;
  }

  v16 = 138543618;
  v17 = v14;
  v18 = 2112;
  v19 = v15;
  _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Batched Record fetches finished%{public}@%@", &v16, 0x16u);
  if (v3)
  {
LABEL_5:
    v8 = objc_msgSend_error(WeakRetained, v6, v7);

    if (!v8)
    {
      objc_msgSend_setError_(WeakRetained, v6, v3);
    }
  }

LABEL_7:
  objc_msgSend__noteOperationFinishedBlockEnd(WeakRetained, v6, v7);
  v11 = objc_msgSend_error(WeakRetained, v9, v10);
  objc_msgSend_finishWithError_(WeakRetained, v12, v11);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2251DAB1C(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Waiting for all record fetches to finish...", v8, 2u);
  }

  v5 = objc_msgSend_recordFetcher(*(a1 + 32), v3, v4);
  objc_msgSend_finishIfAppropriate(v5, v6, v7);
}

void sub_2251DC66C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = v3;
  objc_msgSend_setDidAttemptDugongKeyRoll_(v5, v6, 1);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2251DC76C;
  v10[3] = &unk_2785497C0;
  v10[4] = WeakRetained;
  objc_msgSend_setSaveCompletionBlock_(v5, v7, v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2251DC900;
  v9[3] = &unk_278545A00;
  v9[4] = WeakRetained;
  objc_msgSend_setCompletionBlock_(v5, v8, v9);
}

void sub_2251DC76C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v15 = v12;
  if (v9 && v12)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v25 = 138412546;
      v26 = v9;
      v27 = 2112;
      v28 = v15;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Ignoring key-rolling error for record %@: %@", &v25, 0x16u);
    }

    v19 = objc_msgSend_shareRecordsToUpdateByRecordID(*(a1 + 32), v17, v18);
    v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v9);

    v11 = v21;
  }

  v22 = objc_msgSend_fetchRecordsGroup(*(a1 + 32), v13, v14);
  dispatch_group_enter(v22);

  objc_msgSend__continueHandleFetchedRecord_recordID_(*(a1 + 32), v23, v11, v9);
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2251DC900(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_stateTransitionGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v3);
}

void sub_2251DD50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id location, id a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  objc_destroyWeak((v54 + 48));
  objc_destroyWeak((v54 + 40));
  objc_destroyWeak((v53 + 48));
  objc_destroyWeak((v53 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a47);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_2251DD574(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2251DD600;
  v4[3] = &unk_2785494C0;
  v5 = *(a1 + 32);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a2, v3, v4);
}

void sub_2251DD600(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v8 = objc_msgSend_shouldFetchAssetContent(v5, v6, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_shouldFetchAssetContent(v5, v9, v10);
    v15 = objc_msgSend_BOOLValue(v12, v13, v14);

    if (v15)
    {
      objc_msgSend_addObject_(*(a1 + 32), v16, v17);
    }
  }
}

void sub_2251DD6A4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v23 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_loadWeakRetained((a1 + 48));
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    v16 = *(a1 + 56);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Operations/Database/Records/CKDFetchRecordsOperation.m");
    v21 = objc_msgSend_requestUUID(v14, v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v22, v16, WeakRetained, v18, 522, @"Request with UUID %@ invoked progress callout after completion callout.  Progress recordID %@", v21, v9);
  }

  objc_msgSend__handleRecordFetch_recordID_etagMatched_responseCode_(WeakRetained, v12, v23, v9, a4, v10);
}

void sub_2251DD7EC(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = 1;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v7 = v4;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = objc_msgSend_ckShortDescription(v3, v10, v11);
    *buf = 138543874;
    v35 = v9;
    v36 = 2048;
    v37 = v3;
    v38 = 2114;
    v39 = v12;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Fetch records url request completed. Waiting for all record callbacks to finish before completing request <%{public}@: %p; %{public}@>", buf, 0x20u);
  }

  v13 = objc_msgSend_requestUUID(v3, v5, v6);
  v16 = objc_msgSend_error(v3, v14, v15);
  objc_msgSend_setRequest_(WeakRetained, v17, 0);
  v20 = objc_msgSend_fetchRecordsGroup(WeakRetained, v18, v19);
  v23 = objc_msgSend_callbackQueue(WeakRetained, v21, v22);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251DDA40;
  block[3] = &unk_278546990;
  v31 = v13;
  v32 = v16;
  v33 = WeakRetained;
  v24 = v16;
  v25 = v13;
  dispatch_group_notify(v20, v23, block);

  v28 = objc_msgSend_fetchRecordsGroup(WeakRetained, v26, v27);
  dispatch_group_leave(v28);

  v29 = *MEMORY[0x277D85DE8];
}

void sub_2251DDA40(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = MEMORY[0x277CBC830];
  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v33 = 138543362;
    v34 = v5;
    _os_log_impl(&dword_22506F000, v4, OS_LOG_TYPE_INFO, "All record callbacks are complete. Finishing request %{public}@", &v33, 0xCu);
    v6 = *v2;
    v7 = *MEMORY[0x277CBC878];
    if (*(a1 + 40))
    {
      if (*v2 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      goto LABEL_8;
    }

    if (*v2 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }
  }

  else if (*(a1 + 40))
  {
LABEL_8:
    v8 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      v11 = v8;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = *(a1 + 48);
      v17 = objc_msgSend_ckShortDescription(v14, v15, v16);
      v18 = *(a1 + 40);
      v33 = 138544130;
      v34 = v13;
      v35 = 2048;
      v36 = v14;
      v37 = 2114;
      v38 = v17;
      v39 = 2112;
      v40 = v18;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Failed to fetch records for <%{public}@: %p; %{public}@>: %@", &v33, 0x2Au);
    }

    objc_msgSend_setError_(*(a1 + 48), v9, *(a1 + 40));
    goto LABEL_15;
  }

  v21 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 48);
    v26 = v21;
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = *(a1 + 48);
    v32 = objc_msgSend_ckShortDescription(v29, v30, v31);
    v33 = 138543874;
    v34 = v28;
    v35 = 2048;
    v36 = v29;
    v37 = 2114;
    v38 = v32;
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Fetched records for <%{public}@: %p; %{public}@>", &v33, 0x20u);
  }

LABEL_15:
  v22 = *(a1 + 48);
  if (v22)
  {
    v23 = objc_msgSend_stateTransitionGroup(v22, v19, v20);
    dispatch_group_leave(v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2251DDCF0(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "All record callbacks are complete. Finishing fetch operation", v6, 2u);
  }

  v5 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v3, v4);
  dispatch_group_leave(v5);
}

uint64_t sub_2251DDDA4(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "All record callbacks are complete. Finishing decrypt operation if any.", v6, 2u);
  }

  return objc_msgSend_finishDecryption(*(a1 + 32), v3, v4);
}

void sub_2251DEA10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void sub_2251DEA34(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (!a2 && WeakRetained)
  {
    v9 = objc_msgSend_errorForRecordID_(WeakRetained, v5, *(a1 + 32));
    if (!v9)
    {
      v10 = objc_msgSend_recordFetchProgressBlock(v6, v7, v8);

      if (v10)
      {
        v11 = objc_msgSend_recordFetchProgressBlock(v6, v7, v8);
        v11[2](v11, *(a1 + 32), 1.0);
      }
    }

    v12 = objc_msgSend_recordFetchCompletionBlock(v6, v7, v8);

    if (v12)
    {
      v15 = objc_msgSend_recordFetchCompletionBlock(v6, v13, v14);
      v16 = v15;
      if (*(a1 + 56))
      {
        v17 = 0;
      }

      else
      {
        v17 = *(a1 + 40);
      }

      (*(v15 + 16))(v15, v17, *(a1 + 32), v9);
    }

    v18 = objc_msgSend_error(v6, v13, v14);

    if (!v18)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_2251DEBB0;
      v20[3] = &unk_2785487F8;
      v21 = *(a1 + 40);
      objc_msgSend_updateCloudKitMetrics_(v6, v19, v20);
    }
  }
}

void sub_2251DEBB0(uint64_t a1, void *a2)
{
  v21 = a2;
  v5 = objc_msgSend_recordsDownloaded(v21, v3, v4);
  objc_msgSend_setRecordsDownloaded_(v21, v6, v5 + 1);
  v9 = objc_msgSend_assetCount(*(a1 + 32), v7, v8);
  v12 = objc_msgSend_assetsDownloaded(v21, v10, v11);
  objc_msgSend_setAssetsDownloaded_(v21, v13, v12 + v9);
  v16 = objc_msgSend_assetDiskSize(*(a1 + 32), v14, v15);
  v19 = objc_msgSend_assetsDownloadedFileSize(v21, v17, v18);
  objc_msgSend_setAssetsDownloadedFileSize_(v21, v20, v19 + v16);
}

void sub_2251DEC44(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordFetchCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v11 = objc_msgSend_recordFetchCompletionBlock(*(a1 + 32), v5, v6);
    if (*(a1 + 56))
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 40);
    }

    v9 = *(a1 + 48);
    v10 = objc_msgSend_errorForRecordID_(*(a1 + 32), v7, v9);
    v11[2](v11, v8, v9, v10);
  }
}

void sub_2251DEEA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251DEEC8(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    v10 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = MEMORY[0x277CBC830];
    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = v12;
      v19 = objc_msgSend_recordID(v15, v17, v18);
      *buf = 138412546;
      v45 = v19;
      v46 = 2112;
      v47 = v6;
      _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Couldn't decrypt record %@: %@", buf, 0x16u);
    }

    if (objc_msgSend_wasCached(v5, v13, v14) && CKIsPCSError() && (objc_msgSend_useCachedEtags(WeakRetained, v7, v8) & 1) != 0)
    {
      if (*v10 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 32);
        v24 = v20;
        v27 = objc_msgSend_recordID(v23, v25, v26);
        *buf = 138412290;
        v45 = v27;
        _os_log_impl(&dword_22506F000, v24, OS_LOG_TYPE_INFO, "Failed to decrypt a record from our cache. Refetching record %@ from the server and trying again", buf, 0xCu);
      }

      v28 = objc_msgSend_recordIDsToRefetch(WeakRetained, v21, v22);
      v31 = objc_msgSend_recordID(v5, v29, v30);
      objc_msgSend_addObject_(v28, v32, v31);

      v35 = objc_msgSend_fetchRecordsGroup(WeakRetained, v33, v34);
      dispatch_group_leave(v35);

      goto LABEL_19;
    }

    if (*(a1 + 40))
    {
      objc_msgSend_setError_forRecordID_(WeakRetained, v7, v6);
    }
  }

  if (objc_msgSend_shouldUpdateTimestampsForFetchedMergeableValues(WeakRetained, v7, v8))
  {
    v38 = objc_msgSend_encryptedValueStore(*(a1 + 32), v36, v37);
    v43 = objc_opt_class();
    v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, &v43, 1);
    objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(v38, v41, v40, &unk_28385D5C0);
  }

  objc_msgSend__continueHandleFetchedRecord_recordID_(WeakRetained, v36, v5, *(a1 + 40));
LABEL_19:

  v42 = *MEMORY[0x277D85DE8];
}

void sub_2251DF1A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v10 = objc_msgSend_unmergedDeltas(v3, v4, v5);
  v8 = objc_msgSend_allObjects(v10, v6, v7);
  objc_msgSend_mergeLastKnownServerTimestampVectorFromDeltas_(v3, v9, v8);
}

void sub_2251DF334(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2251DF358(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v11 = objc_msgSend_container(WeakRetained, v8, v9);
      v14 = objc_msgSend_pcsManager(v11, v12, v13);
      v17 = objc_msgSend_pcsKeysToRemove(v5, v15, v16);
      v20 = objc_msgSend_pcs(v5, v18, v19);
      v23 = objc_msgSend_protectionEtag(*(a1 + 40), v21, v22);
      v25 = objc_msgSend_removePCSKeys_fromPCS_withProtectionEtag_forOperation_(v14, v24, v17, v20, v23, *(a1 + 48));

      if (v25)
      {
        v28 = *(a1 + 48);
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = sub_2251DF6C4;
        v58[3] = &unk_2785498A0;
        v58[4] = v25;
        objc_msgSend_updateCloudKitMetrics_(v28, v26, v58);
      }

      v29 = objc_msgSend_pcs(v5, v26, v27);
      objc_msgSend_setRecordPCS_(*(a1 + 40), v30, v29);
      v33 = objc_msgSend_container(v10, v31, v32);
      v36 = objc_msgSend_pcsManager(v33, v34, v35);
      v39 = objc_msgSend_pcs(v5, v37, v38);
      v57 = 0;
      v41 = objc_msgSend_dataFromRecordPCS_error_(v36, v40, v39, &v57);
      v42 = v57;

      if (v41)
      {
        objc_msgSend_setProtectionData_(*(a1 + 40), v43, v41);
        v45 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v44, v41);
        objc_msgSend_setProtectionEtag_(*(a1 + 40), v46, v45);

        v47 = 0;
      }

      else
      {
        v47 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v43, *MEMORY[0x277CBC120], 5001, v42, @"Failed to create PCS data from fetched PCS while decrypting mergeable values");
      }

      if (v47)
      {
LABEL_15:
        v54 = *(a1 + 32);
        if (v54)
        {
          objc_msgSend_setError_forRecordID_(v10, v53, v47);
          v54 = *(a1 + 32);
        }

        objc_msgSend__continueHandleFetchedRecord_recordID_(v10, v53, *(a1 + 40), v54);
        goto LABEL_21;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v48 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v56 = *(a1 + 32);
        *buf = 138412546;
        v60 = v56;
        v61 = 2112;
        v62 = v6;
        _os_log_error_impl(&dword_22506F000, v48, OS_LOG_TYPE_ERROR, "Failed to fetch PCS to decrypt mergeable value delta record %@: %@", buf, 0x16u);
      }

      if (objc_msgSend_CKIsNotFoundError(v6, v49, v50))
      {
        v52 = v6;
      }

      else
      {
        v52 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v51, *MEMORY[0x277CBC120], 5001, v6, @"Failed to fetch PCS to decrypt mergeable values");
      }

      v47 = v52;
      if (v52)
      {
        goto LABEL_15;
      }
    }

    objc_msgSend__reallyDecryptPropertiesOnRecord_recordID_(v10, v53, *(a1 + 40), *(a1 + 32));
LABEL_21:
  }

  v55 = *MEMORY[0x277D85DE8];
}

void sub_2251DF6C4(uint64_t a1, void *a2)
{
  v7 = a2;
  v5 = objc_msgSend_recordKeysRemoved(v7, v3, v4);
  objc_msgSend_setRecordKeysRemoved_(v7, v6, *(a1 + 32) + v5);
}

void sub_2251E01AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_2251E01D8(uint64_t a1, void *a2)
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
  v8 = objc_msgSend_fetchRecordsGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2251E02EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordFetchCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_recordFetchCompletionBlock(*(a1 + 32), v5, v6);
    if (*(a1 + 64))
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 40);
    }

    v9 = v7;
    (*(v7 + 16))(v7, v8, *(a1 + 48), *(a1 + 56));
  }
}

void sub_2251E0650(uint64_t a1, uint64_t a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = MEMORY[0x277CBC858];
  v7 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v46 = *(a1 + 32);
    v47 = v7;
    v50 = objc_msgSend_recordID(v46, v48, v49);
    v51 = *(a1 + 40);
    v52 = @" and error: ";
    *buf = 138413058;
    v53 = &stru_28385ED00;
    v60 = v50;
    if (!v4)
    {
      v52 = &stru_28385ED00;
    }

    v61 = 2112;
    if (v4)
    {
      v53 = v4;
    }

    v62 = v51;
    v63 = 2114;
    v64 = v52;
    v65 = 2112;
    v66 = v53;
    _os_log_debug_impl(&dword_22506F000, v47, OS_LOG_TYPE_DEBUG, "Prepped PCS data for share %@ with container %@%{public}@%@", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (v4)
  {
    objc_msgSend_setError_forRecordID_(WeakRetained, v9, v4, *(a1 + 48));
  }

  v12 = objc_msgSend_mutableEncryptedPSK(*(a1 + 32), v9, v10);

  if (!v12)
  {
    v15 = objc_msgSend_pcsManager(*(a1 + 40), v13, v14);
    v18 = objc_msgSend_publicPCS(*(a1 + 32), v16, v17);
    v58 = 0;
    v20 = objc_msgSend_sharingIdentityDataFromPCS_error_(v15, v19, v18, &v58);
    v21 = v58;

    v22 = MEMORY[0x277CBC830];
    if (v20)
    {
      v23 = objc_alloc(MEMORY[0x277CBC2E8]);
      v25 = objc_msgSend_initWithData_(v23, v24, v20);
      objc_msgSend_setMutableEncryptedPSK_(*(a1 + 32), v26, v25);
    }

    else
    {
      if (*v5 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        if (v21)
        {
LABEL_16:
          v30 = *v22;
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_INFO))
          {
            v32 = *(a1 + 48);
            *buf = 138412546;
            v60 = v32;
            v61 = 2112;
            v62 = v21;
            _os_log_impl(&dword_22506F000, v30, OS_LOG_TYPE_INFO, "Warn: Couldn't get a public sharing identity for share %@: %@", buf, 0x16u);
          }

          if (!v4)
          {
            objc_msgSend_setError_forRecordID_(v11, v31, v21, *(a1 + 48));
          }

LABEL_24:

          goto LABEL_25;
        }

LABEL_22:
        v33 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
        {
          v34 = *(a1 + 32);
          v35 = v33;
          v38 = objc_msgSend_recordID(v34, v36, v37);
          v41 = objc_msgSend_mutableEncryptedPSK(*(a1 + 32), v39, v40);
          v44 = objc_msgSend_data(v41, v42, v43);
          *buf = 138412546;
          v60 = v38;
          v61 = 2112;
          v62 = v44;
          _os_log_impl(&dword_22506F000, v35, OS_LOG_TYPE_INFO, "Public sharing identity for share %@ is %@", buf, 0x16u);
        }

        goto LABEL_24;
      }

      v54 = *(a1 + 32);
      v25 = v29;
      v57 = objc_msgSend_recordID(v54, v55, v56);
      *buf = 138412290;
      v60 = v57;
      _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Didn't get a sharing identity from the public PCS for share %@", buf, 0xCu);
    }

    v27 = *v5;
    v28 = *MEMORY[0x277CBC878];
    if (v21)
    {
      if (*v5 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v28);
      }

      goto LABEL_16;
    }

    if (*v5 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v28);
    }

    goto LABEL_22;
  }

LABEL_25:
  objc_msgSend__decryptPropertiesIfNeededForRecord_record_(v11, v13, *(a1 + 32), *(a1 + 48));

  v45 = *MEMORY[0x277D85DE8];
}

void sub_2251E119C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251E11B8(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_225074030;
  v8[4] = sub_2250735A4;
  v9 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2251E12CC;
  v5[3] = &unk_278549940;
  v7 = v8;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_msgSend__addAssetDownloadTaskForRecord_completionBlock_(WeakRetained, v4, v3, v5);

  _Block_object_dispose(v8, 8);
}

void sub_2251E12B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251E12CC(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, *(*(*(a1 + 40) + 8) + 40));
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_2251E2328(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_2251E2344(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v43 = v5;
    if (a2 == 2)
    {
      v35 = objc_opt_new();
      v38 = objc_msgSend_recordPCS(*(a1 + 56), v36, v37);
      objc_msgSend_setRecordPCS_(v35, v39, v38);
      objc_msgSend_setAsset_(v35, v40, v43);
      objc_msgSend_addObject_(*(a1 + 64), v41, v35);
    }

    else
    {
      if (a2 == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v43;
          v12 = objc_msgSend_constructedAssetDownloadURLTemplate(v9, v10, v11);
          if (v12)
          {
            v15 = v12;
            v16 = MEMORY[0x277CBC190];
            v17 = objc_msgSend_constructedAssetDownloadURLTemplate(v9, v13, v14);
            LODWORD(v16) = objc_msgSend__templateURLRequiresAssetKey_(v16, v18, v17);

            if (v16)
            {
              v21 = MEMORY[0x277CBC190];
              v22 = objc_msgSend_constructedAssetDownloadURLTemplate(v9, v19, v20);
              v24 = objc_msgSend__canonicalizeTemplateURL_(v21, v23, v22);

              v29 = objc_msgSend_host(v24, v25, v26);
              if (v29)
              {
                v30 = objc_msgSend_null(MEMORY[0x277CBEB68], v27, v28);
                v33 = objc_msgSend_keyOrErrorForHostname(*(a1 + 32), v31, v32);
                objc_msgSend_setObject_forKeyedSubscript_(v33, v34, v30, v29);
              }
            }
          }
        }

        if (*(a1 + 80) == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          objc_msgSend_addObject_(*(a1 + 40), v8, v43);
        }

        else
        {
          objc_msgSend_addObject_(*(a1 + 48), v8, v43);
        }

        goto LABEL_18;
      }

      v35 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v42, *(a1 + 72), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1126, @"Invalid parameters to takeActionOnValue");
    }

LABEL_18:
    v5 = v43;
  }
}

uint64_t sub_2251E2558(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_2251E2574(uint64_t a1)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = objc_msgSend_error(*(a1 + 32), v2, v3);
    (*(v5 + 16))(v5, v6);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_2251E2B30(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_2251E2DE8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2251E2EDC;
  v5[3] = &unk_278548AD0;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, (a1 + 40));
  v5[4] = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v4, v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_2251E2EB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251E2EDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);
  if (v5)
  {
  }

  else
  {
    v16 = objc_msgSend_transcodeServerPublicKey(WeakRetained, v6, v7);

    if (v16)
    {
      v12 = objc_msgSend_transcodeServerPublicKey(WeakRetained, v8, v9);
      v13 = objc_msgSend_keyOrErrorForHostname(v2, v17, v18);
      objc_msgSend_setObject_forKeyedSubscript_(v13, v19, v12, *(a1 + 32));
LABEL_9:

      goto LABEL_10;
    }
  }

  v12 = objc_msgSend_error(WeakRetained, v8, v9);
  v13 = v12;
  if (!v12)
  {
    v13 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 1000, @"No public cert key and no error");
  }

  v14 = objc_msgSend_keyOrErrorForHostname(v2, v10, v11);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v15, v13, *(a1 + 32));

  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_10:

  v22 = objc_msgSend_stateTransitionGroup(v2, v20, v21);
  dispatch_group_leave(v22);
}

void sub_2251E3028(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v6 = objc_msgSend_keyOrErrorForHostname(*(a1 + 32), v4, v5);
  objc_msgSend_setKeyOrErrorForHostname_(v3, v7, v6);

  v11 = objc_msgSend_recordFetchProgressBlock(*(a1 + 32), v8, v9);
  if (v11)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2251E334C;
    v36[3] = &unk_278549990;
    v37 = *(a1 + 32);
    objc_msgSend_setDownloadPreparationBlock_(v3, v10, v36);
  }

  else
  {
    objc_msgSend_setDownloadPreparationBlock_(v3, v10, 0);
  }

  v15 = objc_msgSend_recordFetchProgressBlock(*(a1 + 32), v12, v13);
  if (v15)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2251E34D0;
    v34[3] = &unk_2785499B8;
    v35 = *(a1 + 32);
    objc_msgSend_setDownloadProgressBlock_(v3, v14, v34);
  }

  else
  {
    objc_msgSend_setDownloadProgressBlock_(v3, v14, 0);
  }

  v19 = objc_msgSend_recordFetchCommandBlock(*(a1 + 32), v16, v17);
  if (v19)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2251E370C;
    v32[3] = &unk_2785499E0;
    v33 = *(a1 + 32);
    objc_msgSend_setDownloadCommandBlock_(v3, v18, v32);
  }

  else
  {
    objc_msgSend_setDownloadCommandBlock_(v3, v18, 0);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2251E3944;
  v30[3] = &unk_278549A08;
  v31 = *(a1 + 32);
  objc_msgSend_setDownloadCompletionBlock_(v3, v20, v30);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2251E3C64;
  v28[3] = &unk_278549A30;
  v29 = *(a1 + 32);
  objc_msgSend_setUrlFilledOutBlock_(v3, v21, v28);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2251E3F94;
  v26[3] = &unk_2785476F0;
  objc_copyWeak(&v27, &location);
  v26[4] = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v22, v26);
  v25 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v23, v24);
  dispatch_group_enter(v25);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void sub_2251E3324(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_2251E334C(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = objc_msgSend_record(v3, v4, v5);
  if (!v8)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1338, @"Expected non-nil record for asset %@", v3);
  }

  v9 = objc_msgSend_downloadTasksByRecordID(*(a1 + 32), v6, v7);
  v12 = objc_msgSend_recordID(v8, v10, v11);
  v14 = objc_msgSend_objectForKey_(v9, v13, v12);

  if (!v14)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1340, @"Expected non-nil download task for record %@", v8);
  }

  v17 = objc_msgSend_progressTracker(v14, v15, v16);
  v26[0] = v3;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v26, 1);
  objc_msgSend_startTrackingItems_(v17, v20, v19);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2251E34D0(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v10 = objc_msgSend_record(v5, v6, v7);
  if (!v10)
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1346, @"Expected non-nil record for asset %@", v5);
  }

  v11 = objc_msgSend_downloadTasksByRecordID(*(a1 + 32), v8, v9);
  v14 = objc_msgSend_recordID(v10, v12, v13);
  v16 = objc_msgSend_objectForKey_(v11, v15, v14);

  if (!v16)
  {
    v29 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1348, @"Expected non-nil download task for record %@", v10);
  }

  v19 = objc_msgSend_progressTracker(v16, v17, v18);
  objc_msgSend_updateProgressWithItem_progress_(v19, v20, v5, a3);
  v22 = v21;

  v25 = objc_msgSend_callbackQueue(*(a1 + 32), v23, v24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251E3694;
  block[3] = &unk_278545E20;
  block[4] = *(a1 + 32);
  v32 = v10;
  v33 = v22;
  v26 = v10;
  dispatch_async(v25, block);
}

void sub_2251E3694(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_recordFetchProgressBlock(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_recordID(*(a1 + 40), v4, v5);
  v7[2](v7, v6, *(a1 + 48));
}

void sub_2251E370C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = objc_msgSend_record(v5, v7, v8);
  if (!v11)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1358, @"Expected non-nil record for asset %@", v5);
  }

  v12 = objc_msgSend_downloadTasksByRecordID(*(a1 + 32), v9, v10);
  v15 = objc_msgSend_recordID(v11, v13, v14);
  v17 = objc_msgSend_objectForKey_(v12, v16, v15);

  if (!v17)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1360, @"Expected non-nil download task for record %@", v11);
  }

  v20 = objc_msgSend_callbackQueue(*(a1 + 32), v18, v19);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251E38CC;
  block[3] = &unk_278546990;
  block[4] = *(a1 + 32);
  v28 = v11;
  v29 = v6;
  v21 = v6;
  v22 = v11;
  dispatch_async(v20, block);
}

void sub_2251E38CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_recordFetchCommandBlock(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_recordID(*(a1 + 40), v4, v5);
  v7[2](v7, v6, *(a1 + 48));
}

void sub_2251E3944(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v11 = objc_msgSend_record(v5, v7, v8);
  if (!v11)
  {
    v44 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v44, v45, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1368, @"Expected non-nil record for asset %@", v5);
  }

  v12 = objc_msgSend_downloadTasksByRecordID(*(a1 + 32), v9, v10);
  v15 = objc_msgSend_recordID(v11, v13, v14);
  v17 = objc_msgSend_objectForKey_(v12, v16, v15);

  if (!v17)
  {
    v46 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v46, v47, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1370, @"Expected non-nil download task for record %@", v11);
  }

  v20 = *MEMORY[0x277CBC878];
  v21 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v20);
    }

    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v37 = v22;
      v40 = objc_msgSend_recordID(v11, v38, v39);
      v43 = objc_msgSend_operationID(*(a1 + 32), v41, v42);
      *buf = 138413058;
      v49 = v5;
      v50 = 2112;
      v51 = v40;
      v52 = 2114;
      v53 = v43;
      v54 = 2112;
      v55 = v6;
      _os_log_error_impl(&dword_22506F000, v37, OS_LOG_TYPE_ERROR, "Failed to download asset %@ for record %@ and operation %{public}@: %@", buf, 0x2Au);
    }

    v25 = *(a1 + 32);
    v26 = objc_msgSend_recordID(v11, v23, v24);
    objc_msgSend_setError_forRecordID_(v25, v27, v6, v26);
    goto LABEL_15;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v20);
  }

  v28 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v26 = v28;
    v32 = objc_msgSend_recordID(v11, v30, v31);
    v35 = objc_msgSend_operationID(*(a1 + 32), v33, v34);
    *buf = 138412802;
    v49 = v5;
    v50 = 2112;
    v51 = v32;
    v52 = 2114;
    v53 = v35;
    _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Downloaded asset %@ for record %@ and operation %{public}@", buf, 0x20u);

LABEL_15:
  }

  objc_msgSend_didDownloadAsset_error_(v17, v29, v5, v6);

  v36 = *MEMORY[0x277D85DE8];
}

void sub_2251E3C64(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_asset(v5, v7, v8);
  v12 = objc_msgSend_record(v9, v10, v11);

  if (!v12)
  {
    v47 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v47, v48, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1382, @"Expected non-nil record for urlInfo %@", v5);
  }

  v15 = objc_msgSend_downloadTasksByRecordID(*(a1 + 32), v13, v14);
  v18 = objc_msgSend_recordID(v12, v16, v17);
  v20 = objc_msgSend_objectForKey_(v15, v19, v18);

  if (!v20)
  {
    v49 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v21, v22);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v49, v50, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1384, @"Expected non-nil download task for record %@", v12);
  }

  v23 = *MEMORY[0x277CBC878];
  v24 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v23);
    }

    v25 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v40 = v25;
      v43 = objc_msgSend_recordID(v12, v41, v42);
      v46 = objc_msgSend_operationID(*(a1 + 32), v44, v45);
      *buf = 138413058;
      v52 = v5;
      v53 = 2112;
      v54 = v43;
      v55 = 2114;
      v56 = v46;
      v57 = 2112;
      v58 = v6;
      _os_log_error_impl(&dword_22506F000, v40, OS_LOG_TYPE_ERROR, "Failed to fill out download URL info %@ for record %@ and operation %{public}@: %@", buf, 0x2Au);
    }

    v28 = *(a1 + 32);
    v29 = objc_msgSend_recordID(v12, v26, v27);
    objc_msgSend_setError_forRecordID_(v28, v30, v6, v29);
    goto LABEL_15;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v23);
  }

  v31 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v29 = v31;
    v35 = objc_msgSend_recordID(v12, v33, v34);
    v38 = objc_msgSend_operationID(*(a1 + 32), v36, v37);
    *buf = 138412802;
    v52 = v5;
    v53 = 2112;
    v54 = v35;
    v55 = 2114;
    v56 = v38;
    _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "Filled out URL info %@ for record %@ and operation %{public}@", buf, 0x20u);

LABEL_15:
  }

  objc_msgSend_didFillOutURLInfo_error_(v20, v32, v5, v6);

  v39 = *MEMORY[0x277D85DE8];
}

void sub_2251E3F94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_msgSend_error(WeakRetained, v3, v4);

  objc_msgSend_setError_(*(a1 + 32), v5, v10);
  objc_msgSend__didDownloadAssetsWithError_(*(a1 + 32), v6, v10);
  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v7, v8);
  dispatch_group_leave(v9);
}

void sub_2251E401C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2251E414C;
  v8[3] = &unk_278547D98;
  objc_copyWeak(&v9, (a1 + 32));
  objc_msgSend_setDeltasFetchedBlock_(v3, v4, v8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2251E4440;
  v6[3] = &unk_278547098;
  objc_copyWeak(&v7, (a1 + 32));
  objc_msgSend_setCompletionBlock_(v3, v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

void sub_2251E4128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_2251E414C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = objc_msgSend_mergeableValueDownloadTasks(WeakRetained, v11, v12);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v7);

    if (!v8 || v9)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v30 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v36 = 138412546;
        v37 = v7;
        v38 = 2112;
        v39 = v9;
        _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "Error fetching mergeable delta %@: %@", &v36, 0x16u);
      }

      v25 = objc_msgSend_recordID(v7, v31, v32);
      objc_msgSend_setError_forRecordID_(v13, v33, v9, v25);
    }

    else
    {
      v17 = *MEMORY[0x277CBC878];
      v18 = *MEMORY[0x277CBC880];
      if (!v16)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v17);
        }

        v35 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
        {
          v36 = 138412546;
          v37 = v7;
          v38 = 2112;
          v39 = v8;
          _os_log_fault_impl(&dword_22506F000, v35, OS_LOG_TYPE_FAULT, "No mergeable value task for fetched deltas for %@: %@", &v36, 0x16u);
        }

        goto LABEL_16;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v36 = 138412546;
        v37 = v7;
        v38 = 2112;
        v39 = v8;
        _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Fetched deltas for mergeable %@: %@", &v36, 0x16u);
      }

      v22 = objc_msgSend_recordValue(v16, v20, v21);
      objc_msgSend_addUnmergedDeltas_(v22, v23, v8);

      v25 = objc_msgSend_CKMap_(v8, v24, &unk_28385D5E0);
      v28 = objc_msgSend_recordValue(v16, v26, v27);
      objc_msgSend_addServerDeltaMetadatas_(v28, v29, v25);
    }

LABEL_16:
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_2251E4440(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v3 = MEMORY[0x277CBC830];
    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v48 = v4;
      v51 = objc_msgSend_operationID(WeakRetained, v49, v50);
      *buf = 138543362;
      v60 = v51;
      _os_log_debug_impl(&dword_22506F000, v48, OS_LOG_TYPE_DEBUG, "Finished mergeable delta fetch operation for %{public}@", buf, 0xCu);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = WeakRetained;
    v7 = objc_msgSend_mergeableValueDownloadTasks(WeakRetained, v5, v6);
    v10 = objc_msgSend_allValues(v7, v8, v9);

    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v55, v63, 16);
    if (v12)
    {
      v16 = v12;
      v17 = *v56;
      *&v15 = 138412546;
      v52 = v15;
      do
      {
        v18 = 0;
        do
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v55 + 1) + 8 * v18);
          v20 = objc_msgSend_recordValue(v19, v13, v14, v52);
          v23 = v20;
          if (v20)
          {
            v24 = objc_msgSend_unmergedDeltas(v20, v21, v22);
            v27 = objc_msgSend_allObjects(v24, v25, v26);
            objc_msgSend_mergeLastKnownServerTimestampVectorFromDeltas_(v23, v28, v27);
          }

          else
          {
            if (*v2 != -1)
            {
              dispatch_once(v2, *MEMORY[0x277CBC878]);
            }

            v31 = *v3;
            if (os_log_type_enabled(*v3, OS_LOG_TYPE_FAULT))
            {
              v36 = v31;
              objc_msgSend_mergeableValueID(v19, v37, v38);
              v40 = v39 = v2;
              v43 = objc_msgSend_operationID(v53, v41, v42);
              *buf = v52;
              v60 = v40;
              v61 = 2114;
              v62 = v43;
              _os_log_fault_impl(&dword_22506F000, v36, OS_LOG_TYPE_FAULT, "No mergeable value delta on download task for %@ in operation %{public}@", buf, 0x16u);

              v2 = v39;
              v3 = MEMORY[0x277CBC830];
            }
          }

          v32 = objc_msgSend_completionBlock(v19, v29, v30);

          if (v32)
          {
            v35 = objc_msgSend_completionBlock(v19, v33, v34);
            v35[2]();
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v55, v63, 16);
      }

      while (v16);
    }

    WeakRetained = v53;
    v46 = objc_msgSend_callbackQueue(v53, v44, v45);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251E47C4;
    block[3] = &unk_278545A00;
    block[4] = v53;
    dispatch_async(v46, block);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void sub_2251E47C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_stateTransitionGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v3);
}

void sub_2251E5094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 88));
  _Unwind_Resume(a1);
}

void sub_2251E50D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordFetch_recordID_etagMatched_responseCode_(WeakRetained, v10, v9, v8, 0, v7);

  objc_msgSend_setUserRecord_(WeakRetained, v11, v9);
}

void sub_2251E5170(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v7 = v4;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = objc_msgSend_ckShortDescription(v3, v10, v11);
    *buf = 138543874;
    v34 = v9;
    v35 = 2048;
    v36 = v3;
    v37 = 2114;
    v38 = v12;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Fetch user record url request completed. Waiting for all record callbacks to finish before completing request <%{public}@: %p; %{public}@>", buf, 0x20u);
  }

  v13 = objc_msgSend_requestUUID(v3, v5, v6);
  v16 = objc_msgSend_error(v3, v14, v15);
  objc_msgSend_setRequest_(WeakRetained, v17, 0);
  objc_msgSend_finishDecryption(WeakRetained, v18, v19);
  v22 = objc_msgSend_fetchRecordsGroup(WeakRetained, v20, v21);
  v25 = objc_msgSend_callbackQueue(WeakRetained, v23, v24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251E53A4;
  block[3] = &unk_278546990;
  v30 = v13;
  v31 = v16;
  v32 = WeakRetained;
  v26 = v16;
  v27 = v13;
  dispatch_group_notify(v22, v25, block);

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2251E53A4(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = MEMORY[0x277CBC830];
  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v32 = 138543362;
    v33 = v5;
    _os_log_impl(&dword_22506F000, v4, OS_LOG_TYPE_INFO, "All record callbacks are complete. Finishing request %{public}@", &v32, 0xCu);
    v6 = *v2;
    v7 = *MEMORY[0x277CBC878];
    if (*(a1 + 40))
    {
      if (*v2 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      goto LABEL_8;
    }

    if (*v2 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }
  }

  else if (*(a1 + 40))
  {
LABEL_8:
    v8 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      v11 = v8;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = *(a1 + 48);
      v17 = objc_msgSend_ckShortDescription(v14, v15, v16);
      v18 = *(a1 + 40);
      v32 = 138544130;
      v33 = v13;
      v34 = 2048;
      v35 = v14;
      v36 = 2114;
      v37 = v17;
      v38 = 2112;
      v39 = v18;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Failed to fetch records for <%{public}@: %p; %{public}@>: %@", &v32, 0x2Au);
    }

    objc_msgSend_setError_(*(a1 + 48), v9, *(a1 + 40));
    goto LABEL_15;
  }

  v21 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a1 + 48);
    v25 = v21;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = *(a1 + 48);
    v31 = objc_msgSend_ckShortDescription(v28, v29, v30);
    v32 = 138543874;
    v33 = v27;
    v34 = 2048;
    v35 = v28;
    v36 = 2114;
    v37 = v31;
    _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Fetched records for <%{public}@: %p; %{public}@>", &v32, 0x20u);
  }

LABEL_15:
  v22 = objc_msgSend_stateTransitionGroup(*(a1 + 48), v19, v20);
  dispatch_group_leave(v22);

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2251E5C64(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 480), a2);
  objc_initWeak(&location, *(a1 + 32));
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_2251E5D70;
  v12 = &unk_278547098;
  objc_copyWeak(&v13, &location);
  objc_msgSend_setCompletionBlock_(*(*(a1 + 32) + 480), v5, &v9);
  v8 = objc_msgSend_fetchVersionsGroup(*(a1 + 32), v6, v7, v9, v10, v11, v12);
  dispatch_group_enter(v8);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void sub_2251E5D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251E5D70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_fetchVersionsGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_2251E647C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  objc_destroyWeak((v53 - 160));
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_2251E64CC(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (!v5 || v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v48 = 138412546;
      v49 = v5;
      v50 = 2112;
      v51 = v6;
      _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "Couldn't decrypt data for record version %@: %@", &v48, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    v11 = objc_msgSend_container(WeakRetained, v8, v9);
    v14 = objc_msgSend_entitlements(v11, v12, v13);
    hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v14, v15, v16);
    objc_msgSend_setSerializeProtectionData_(v5, v18, hasProtectionDataEntitlement);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = objc_msgSend_container(v10, v19, v20);
      v24 = objc_msgSend_entitlements(v21, v22, v23);
      if (objc_msgSend_hasOutOfProcessUIEntitlement(v24, v25, v26))
      {
        objc_msgSend_setSerializePersonalInfo_(v5, v27, 1);
      }

      else
      {
        v30 = objc_msgSend_container(v10, v27, v28);
        v33 = objc_msgSend_entitlements(v30, v31, v32);
        hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v33, v34, v35);
        objc_msgSend_setSerializePersonalInfo_(v5, v37, hasParticipantPIIEntitlement);
      }

      v40 = objc_msgSend_container(v10, v38, v39);
      shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(v40, v41, v42);
      objc_msgSend_setSerializeOwnerInfo_(v5, v44, shouldSerializeOwnerInfo);
    }

    v45 = *(a1 + 32);
    objc_sync_enter(v45);
    objc_msgSend_addObject_(*(a1 + 32), v46, v5);
    objc_sync_exit(v45);
  }

  dispatch_group_leave(*(a1 + 40));

  v47 = *MEMORY[0x277D85DE8];
}

void sub_2251E6740(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = objc_msgSend_recordVersionFetchedBlock(WeakRetained, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_callbackQueue(WeakRetained, v6, v7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251E6848;
    block[3] = &unk_278549B00;
    block[4] = WeakRetained;
    v13 = *(a1 + 32);
    v16 = *(a1 + 72);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v14 = v9;
    v15 = v10;
    dispatch_async(v8, block);
  }

  v11 = objc_msgSend_fetchVersionsGroup(*(a1 + 48), v6, v7);
  dispatch_group_leave(v11);
}

void sub_2251E6848(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordVersionFetchedBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 64), *(a1 + 48), *(*(*(a1 + 56) + 8) + 40));
}

void sub_2251E68B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordVersionFetchedBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 64), *(a1 + 48), *(*(*(a1 + 56) + 8) + 40));
}

void sub_2251E6B5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2251E6B9C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordVersionsFetchedForID_isDeleted_versions_responseCode_(WeakRetained, v12, v11, a3, v10, v9);
}

void sub_2251E6C38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);
  objc_msgSend_finishDecryption(WeakRetained, v7, v8);
  v11 = objc_msgSend_fetchVersionsGroup(WeakRetained, v9, v10);
  v14 = objc_msgSend_callbackQueue(WeakRetained, v12, v13);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2251E6D38;
  v16[3] = &unk_278545898;
  v16[4] = WeakRetained;
  v17 = v6;
  v15 = v6;
  dispatch_group_notify(v11, v14, v16);
}

void sub_2251E7B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v43 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251E7BB8(uint64_t a1, void *a2)
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
  v8 = objc_msgSend_fetchRecordsGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2251E7CCC(void **a1, const char *a2, uint64_t a3)
{
  v71 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_fetchAllChanges(a1[4], a2, a3))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = objc_msgSend_clientIsUsingLegacyCKFetchRecordChangesOperationAPI(a1[4], v4, v5) ^ 1;
  }

  v7 = objc_msgSend_serverChangeTokenUpdatedBlock(a1[4], v4, v5);
  if (v7 && (v10 = v7, objc_msgSend_error(a1[4], v8, v9), v11 = objc_claimAutoreleasedReturnValue(), v12 = (v11 == 0) & v6, v11, v10, v12 == 1))
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = a1[5];
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v65, v70, 16);
    if (v55)
    {
      v54 = *v66;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v66 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v65 + 1) + 8 * i);
          v17 = objc_msgSend_objectForKeyedSubscript_(a1[6], v14, v16);
          v19 = objc_msgSend_objectForKeyedSubscript_(a1[7], v18, v16);
          v22 = objc_msgSend_resultServerChangeTokenData(v17, v20, v21);

          v58 = v19;
          if (v22)
          {
            v25 = objc_alloc(MEMORY[0x277CBC670]);
            v28 = objc_msgSend_resultServerChangeTokenData(v17, v26, v27);
            v57 = objc_msgSend_initWithData_(v25, v29, v28);
          }

          else
          {
            v57 = 0;
          }

          v30 = objc_msgSend_serverChangeTokenUpdatedBlock(a1[4], v23, v24);
          v33 = objc_msgSend_resultClientChangeTokenData(v17, v31, v32);
          v36 = objc_msgSend_status(v17, v34, v35);
          hasPendingArchivedRecords = objc_msgSend_hasPendingArchivedRecords(v17, v37, v38);
          v42 = objc_msgSend_syncObligationZoneIDs(v17, v40, v41);
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = sub_2251E8064;
          v63[3] = &unk_278548128;
          v63[4] = a1[4];
          v64 = a1[8];
          (v30)[2](v30, v16, v57, v33, v36, hasPendingArchivedRecords, v42, v58, v63);
        }

        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v65, v70, 16);
      }

      while (v55);
    }
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = a1[5];
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v59, v69, 16);
    if (v44)
    {
      v47 = v44;
      v48 = *v60;
      while (1)
      {
        if (*v60 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v49 = objc_msgSend_perRequestGroup(a1[8], v45, v46);
        dispatch_group_leave(v49);

        if (!--v47)
        {
          v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v59, v69, 16);
          if (!v47)
          {
            break;
          }
        }
      }
    }
  }

  v52 = objc_msgSend_fetchRecordsGroup(a1[4], v50, v51);
  dispatch_group_leave(v52);

  v53 = *MEMORY[0x277D85DE8];
}

void sub_2251E8064(uint64_t a1, void *a2)
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

void sub_2251E84E4(void **a1, void *a2, void *a3)
{
  v29 = a2;
  v5 = a3;
  if (objc_msgSend_status(v5, v6, v7) != 3)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(a1[4], v8, v29);

    if (!v9)
    {
      v12 = objc_msgSend_configurationsByRecordZoneID(a1[5], v10, v11);
      v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v29);
      v17 = objc_msgSend_copy(v14, v15, v16);
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = objc_opt_new();
      }

      v20 = v19;

      v21 = objc_alloc(MEMORY[0x277CBC670]);
      v24 = objc_msgSend_resultServerChangeTokenData(v5, v22, v23);
      v26 = objc_msgSend_initWithData_(v21, v25, v24);
      objc_msgSend_setPreviousServerChangeToken_(v20, v27, v26);

      objc_msgSend_setObject_forKeyedSubscript_(a1[6], v28, v20, v29);
    }
  }
}

void sub_2251E8AC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 152));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_2251E8B4C(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (objc_msgSend_isFinished(WeakRetained, v4, v5))
  {

    v8 = MEMORY[0x277CBEBF8];
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleChangedRecords_perRequestSchedulerInfo_(WeakRetained, v7, v8, v6);
}

void sub_2251E8BDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleRecordDelete_recordType_perRequestSchedulerInfo_(WeakRetained, v8, v6, v5, v7);
}

void sub_2251E8C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleAttributesChangedForZone_perRequestSchedulerInfo_(WeakRetained, v5, v3, v4);
}

void sub_2251E9AB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accessWasGrantedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_accessWasGrantedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }
}

void sub_2251E9B3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accessWasRevokedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_accessWasRevokedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251E9E48(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setRetryPCSFailures_(v3, v4, 0);
  objc_msgSend_setCanSetPreviousProtectionEtag_(v3, v5, 1);
  objc_msgSend_setTrustProtectionData_(v3, v6, 1);
  v7 = objc_opt_new();
  objc_initWeak(&location, v3);
  objc_initWeak(&from, *(a1 + 32));
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2251EA04C;
  v19[3] = &unk_278549BF0;
  objc_copyWeak(&v21, &from);
  v8 = v7;
  v20 = v8;
  objc_msgSend_setSaveCompletionBlock_(v3, v9, v19);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2251EA0D0;
  v15[3] = &unk_278548AD0;
  objc_copyWeak(&v17, &from);
  objc_copyWeak(&v18, &location);
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

void sub_2251EA00C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2251EA04C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleRecordSaved_error_(WeakRetained, v9, v11, v7);

  objc_msgSend_addObject_(*(a1 + 32), v10, v11);
}

void sub_2251EA0D0(void **a1)
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
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Done saving all records for record access operation.%{public}@%@", buf, 0x16u);
  }

  v43 = objc_msgSend_error(v3, v6, v7);
  if (!v43)
  {
    v43 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1000, @"Unknown error when saving record for record access");
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

void sub_2251EB4A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_accessWasGrantedBlock(*(a1 + 32), v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_callbackQueue(*(a1 + 32), v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251EB598;
    block[3] = &unk_278546990;
    block[4] = *(a1 + 32);
    v14 = v5;
    v15 = v6;
    dispatch_async(v12, block);
  }
}

void sub_2251EB598(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accessWasGrantedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_accessWasGrantedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, 0, *(a1 + 48));
  }
}

void sub_2251EB624(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_accessWasRevokedBlock(*(a1 + 32), v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_callbackQueue(*(a1 + 32), v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251EB714;
    block[3] = &unk_278546990;
    block[4] = *(a1 + 32);
    v14 = v5;
    v15 = v6;
    dispatch_async(v12, block);
  }
}

void sub_2251EB714(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accessWasRevokedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_accessWasRevokedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251EB798(uint64_t a1, void *a2)
{
  v7 = a2;
  v5 = objc_msgSend_recordKeysRemoved(v7, v3, v4);
  objc_msgSend_setRecordKeysRemoved_(v7, v6, *(a1 + 32) + v5);
}

void sub_2251EB984(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setForcePCSDecrypt_(v3, v4, 1);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2251EBB28;
  v19[3] = &unk_278548CC0;
  objc_copyWeak(&v20, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v5, v19);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_2251EBBD0;
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

void sub_2251EBAF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251EBB28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordFetched_recordID_error_(WeakRetained, v10, v9, v8, v7);

  v13 = objc_msgSend_fetchedRecordIDs(WeakRetained, v11, v12);
  objc_msgSend_addObject_(v13, v14, v8);
}

void sub_2251EBBD0(id *a1)
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
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Done fetching all records for web access", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = objc_msgSend_error(WeakRetained, v5, v6);

  if (!v7)
  {
    v7 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1000, @"Couldn't fetch record for web access grant/revoke.");
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

void sub_2251ED51C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 120));
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2251ED558(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v7 = objc_msgSend_sharePCSData(v3, v4, v5);

    if (v7)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v8 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v22 = *(a1 + 40);
        v23 = v8;
        v26 = objc_msgSend_zoneID(v22, v24, v25);
        *buf = 138412290;
        v32 = v26;
        _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Fetched zone PCS for zone %@ and it has a share PCS on it. Setting signing PCS for our record to be the per-participant PCS", buf, 0xCu);
      }

      v11 = objc_msgSend_sharePCSData(v3, v9, v10);
      objc_msgSend_myParticipantPCS(v11, v12, v13);
      *(*(*(a1 + 56) + 8) + 24) = PCSFPCopyObject();
    }

    else
    {
      dispatch_group_enter(*(a1 + 32));
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v14 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Record should be of a hierarchical share. Fetching its signing PCS by fetching its record PCS", buf, 2u);
      }

      v17 = objc_msgSend_pcsCache(WeakRetained, v15, v16);
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_2251ED7F0;
      v27[3] = &unk_278549C40;
      v30 = *(a1 + 56);
      v28 = v18;
      v29 = *(a1 + 32);
      objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v17, v20, v28, v19, 16, v27);

      v11 = v28;
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2251ED7F0(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v5)
  {
    objc_msgSend_signingPCS(v5, v6, v7);
    *(*(*(a1 + 48) + 8) + 24) = PCSFPCopyObject();
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = 138412290;
      v13 = v11;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Could not fetch record PCS for record %@. Record may not exist on server. Done with our attempt with fetch signing PCS", &v12, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2251ED918(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBC878];
  v3 = *MEMORY[0x277CBC880];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v2);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 32);
      v24 = 138412290;
      v25 = v22;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Successfully fetched signing PCS (PPPCS) for record %@", &v24, 0xCu);
    }

    v5 = objc_opt_new();
    objc_msgSend_setRecordPCSData_(*(a1 + 40), v6, v5);

    v7 = *(*(*(a1 + 56) + 8) + 24);
    v10 = objc_msgSend_recordPCSData(*(a1 + 40), v8, v9);
    objc_msgSend_setSigningPCS_(v10, v11, v7);

    v13 = *(*(*(a1 + 56) + 8) + 24);
    if (v13)
    {
      CFRelease(v13);
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v2);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 32);
      v24 = 138412290;
      v25 = v23;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Could not fetch the signing PCS for record %@", &v24, 0xCu);
    }
  }

  objc_msgSend_setState_(*(a1 + 40), v12, 5);
  v17 = objc_msgSend_pcsGroup(*(a1 + 40), v15, v16);
  dispatch_group_leave(v17);

  v20 = objc_msgSend_stateTransitionGroup(*(a1 + 48), v18, v19);
  dispatch_group_leave(v20);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2251EED6C(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (v5)
  {
    objc_msgSend__addShareToPCSData_withError_(WeakRetained, v8, v5, v6);
    goto LABEL_21;
  }

  v11 = objc_msgSend_domain(v6, v8, v9);
  v12 = *MEMORY[0x277CBC120];
  if (objc_msgSend_isEqualToString_(v11, v13, *MEMORY[0x277CBC120]) && objc_msgSend_code(v6, v14, v15) == 5010)
  {
    v16 = *(a1 + 48);

    if ((v16 & 2) != 0)
    {
      v19 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFDLL;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v22 = *(a1 + 32);
        v23 = v20;
        v26 = objc_msgSend_recordID(v22, v24, v25);
        v55 = 138412546;
        v56 = v26;
        v57 = 2048;
        v58 = v19;
        _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Got an error fetching PCS data locally for record %@. Attempting another network-based fetch with options %lx", &v55, 0x16u);
      }

      objc_msgSend__reallyFetchPCSDataWithOptions_(v10, v21, v19);
      goto LABEL_21;
    }
  }

  else
  {
  }

  if (!v6 || (objc_msgSend_CKIsObjectNotFoundError(v6, v17, v18) & 1) != 0)
  {
    goto LABEL_14;
  }

  v43 = objc_msgSend_domain(v6, v27, v28);
  if (objc_msgSend_isEqualToString_(v43, v44, v12) && objc_msgSend_code(v6, v45, v46) == 5007)
  {
    v47 = *(a1 + 48);

    if ((v47 & 2) != 0)
    {
LABEL_14:
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v31 = *(a1 + 32);
        v32 = v29;
        v35 = objc_msgSend_recordID(v31, v33, v34);
        found = objc_msgSend_CKIsNotFoundError(v6, v36, v37);
        v39 = @"no PCS data and no error";
        if (found)
        {
          v39 = @"record does not exist";
        }

        v55 = 138412546;
        v56 = v35;
        v57 = 2114;
        v58 = v39;
        _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Didn't get PCS data for record %@: %{public}@. Fetching the zone PCS and creating new PCS data", &v55, 0x16u);
      }

      objc_msgSend_setRequiresRecordSaveForMergeableDeltas_(*(a1 + 32), v30, 1);
      objc_msgSend__createAndSavePCS(v10, v40, v41);
      goto LABEL_21;
    }
  }

  else
  {
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v48 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v50 = *(a1 + 32);
    v51 = v48;
    v54 = objc_msgSend_recordID(v50, v52, v53);
    v55 = 138412546;
    v56 = v54;
    v57 = 2112;
    v58 = v6;
    _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "Got an error fetching PCS data for record %@: %@", &v55, 0x16u);
  }

  objc_msgSend__addShareToPCSData_withError_(v10, v49, 0, v6);
LABEL_21:

  v42 = *MEMORY[0x277D85DE8];
}

void sub_2251EF4F8(uint64_t a1, const char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordPCSData(*(a1 + 32), a2, a3);

  v5 = *MEMORY[0x277CBC878];
  v6 = *MEMORY[0x277CBC880];
  if (v4)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 32);
      v23 = v7;
      v26 = objc_msgSend_recordPCSData(v22, v24, v25);
      *buf = 138412290;
      v34 = v26;
      _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Using parent PCS data from our current batch %@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 40);
      v27 = *(a1 + 48);
      v29 = v11;
      v32 = objc_msgSend_recordID(v27, v30, v31);
      *buf = 138412546;
      v34 = v28;
      v35 = 2112;
      v36 = v32;
      _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Parent record %@ in the same batch didn't have chain PCS data on it for record %@", buf, 0x16u);
    }

    v14 = MEMORY[0x277CBC560];
    v15 = *MEMORY[0x277CBC120];
    v16 = *(a1 + 40);
    v17 = objc_msgSend_recordID(*(a1 + 48), v12, v13);
    v10 = objc_msgSend_errorWithDomain_code_format_(v14, v18, v15, 5001, @"Parent record %@ in the same batch didn't have chain PCS data on it for record %@", v16, v17);
  }

  v19 = *(a1 + 56);
  v20 = objc_msgSend_recordPCSData(*(a1 + 32), v8, v9);
  (*(v19 + 16))(v19, v20, v10);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2251EF9F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharePCSData(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_pcs(v4, v5, v6);

  if (v7)
  {
    v17 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CBC560];
    v11 = *MEMORY[0x277CBC120];
    v12 = *(a1 + 40);
    v13 = objc_msgSend_recordID(*(a1 + 48), v8, v9);
    v17 = objc_msgSend_errorWithDomain_code_format_(v10, v14, v11, 5001, @"Couldn't get PCS data for share %@ to add to record %@", v12, v13);
  }

  v15 = *(a1 + 56);
  v16 = objc_msgSend_sharePCSData(*(a1 + 32), v8, v9);
  (*(v15 + 16))(v15, v16, v17);
}

void sub_2251EFAE0(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!objc_msgSend_pcs(v5, v7, v8))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Warn: Failed to fetch share with ID %@. Not adding it to the record PCS: %@", buf, 0x16u);
    }

    if (v6)
    {
      if (objc_msgSend_CKIsNotFoundError(v6, v11, v12))
      {
        v16 = MEMORY[0x277CBC560];
        v17 = *MEMORY[0x277CBC120];
        v18 = *(a1 + 32);
        v19 = objc_msgSend_recordID(*(a1 + 40), v14, v15);
        v21 = objc_msgSend_errorWithDomain_code_format_(v16, v20, v17, 2025, @"Share record %@ referenced by record %@ does not exist on the server", v18, v19);

        v6 = v21;
      }
    }

    else
    {
      v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 5001, @"Didn't get PCS data for share %@", *(a1 + 32));
    }
  }

  (*(*(a1 + 48) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2251F0798(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 184));
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2251F07F0(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!objc_msgSend_pcs(v5, v7, v8))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v29 = *(a1 + 40);
      *buf = 138412546;
      v45 = v29;
      v46 = 2112;
      v47 = v6;
      _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Warn: Failed to fetch share with ID %@. Not adding it to the record PCS: %@", buf, 0x16u);
    }

    if (v6)
    {
      if (!objc_msgSend_CKIsNotFoundError(v6, v27, v28))
      {
LABEL_18:
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
        v22 = v6;
        goto LABEL_19;
      }

      v32 = MEMORY[0x277CBC560];
      v33 = *MEMORY[0x277CBC120];
      v34 = *(a1 + 40);
      v35 = objc_msgSend_recordID(*(a1 + 48), v30, v31);
      v37 = objc_msgSend_errorWithDomain_code_format_(v32, v36, v33, 2025, @"Share record %@ referenced by record %@ does not exist on the server", v34, v35);

      v6 = v37;
    }

    else
    {
      v38 = MEMORY[0x277CBC560];
      v39 = *MEMORY[0x277CBC120];
      v40 = *(a1 + 40);
      v35 = objc_msgSend_recordID(*(a1 + 48), v27, v28);
      v6 = objc_msgSend_errorWithDomain_code_format_(v38, v41, v39, 5001, @"Didn't get PCS data for share %@ to add to record %@", v40, v35);
    }

    goto LABEL_18;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v12 = objc_msgSend_pcsManager(WeakRetained, v10, v11);
  v15 = objc_msgSend_pcs(v5, v13, v14);
  v18 = objc_msgSend_pcs(*(a1 + 32), v16, v17);
  v43 = v6;
  v20 = objc_msgSend_addSharePCS_toRecordPCS_error_(v12, v19, v15, v18, &v43);
  v21 = v43;
  v22 = v43;

  if ((v20 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      *buf = 138412802;
      v45 = v5;
      v46 = 2112;
      v47 = v25;
      v48 = 2112;
      v49 = v22;
      _os_log_impl(&dword_22506F000, v24, OS_LOG_TYPE_INFO, "Warn: Error adding share PCS %@ to record PCS %@: %@", buf, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v21);
  }

  objc_msgSend_setSharePCSData_(*(a1 + 32), v23, v5);
LABEL_19:
  dispatch_group_leave(*(a1 + 56));

  v42 = *MEMORY[0x277D85DE8];
}

void sub_2251F0B04(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (objc_msgSend_pcs(v5, v8, v9))
  {
    v12 = objc_msgSend_pcsManager(WeakRetained, v10, v11);
    v15 = objc_msgSend_pcs(v5, v13, v14);
    v18 = objc_msgSend_pcs(*(a1 + 32), v16, v17);
    v55 = v6;
    v20 = objc_msgSend_removeSharePCS_fromRecordPCS_error_(v12, v19, v15, v18, &v55);
    v21 = v55;
    v22 = v55;

    if (v20)
    {
      if ((objc_msgSend_didRollRecordPCSMasterKey(WeakRetained, v23, v24) & 1) == 0)
      {
        v27 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v25, v26);
        v30 = objc_msgSend_rollRecordMasterKeysOnUnshare(v27, v28, v29);

        if (v30)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v31 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v50 = *(a1 + 40);
            v51 = v31;
            v54 = objc_msgSend_recordID(v50, v52, v53);
            *buf = 138412290;
            v57 = v54;
            _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "Rolling record PCS master key since we removed a share for record %@", buf, 0xCu);
          }

          v34 = objc_msgSend_pcsManager(WeakRetained, v32, v33);
          v37 = objc_msgSend_pcs(*(a1 + 32), v35, v36);
          v40 = objc_msgSend_operation(WeakRetained, v38, v39);
          v42 = objc_msgSend_rollMasterKeyForRecordPCS_forOperation_(v34, v41, v37, v40);
          v43 = *(*(a1 + 64) + 8);
          v44 = *(v43 + 40);
          *(v43 + 40) = v42;

          if (!*(*(*(a1 + 64) + 8) + 40))
          {
            objc_msgSend_setDidRollRecordPCSMasterKey_(WeakRetained, v25, 1);
          }
        }
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v47 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v48 = *(a1 + 32);
        *buf = 138412802;
        v57 = v5;
        v58 = 2112;
        v59 = v48;
        v60 = 2112;
        v61 = v22;
        _os_log_impl(&dword_22506F000, v47, OS_LOG_TYPE_INFO, "Warn: Error remvoing share PCS %@ from record PCS %@: %@", buf, 0x20u);
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v21);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v45 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v46 = *(a1 + 48);
      *buf = 138412546;
      v57 = v46;
      v58 = 2112;
      v59 = v6;
      _os_log_impl(&dword_22506F000, v45, OS_LOG_TYPE_INFO, "Warn: Failed to fetch share with ID %@. Not removing it from the record PCS: %@", buf, 0x16u);
    }

    v22 = v6;
  }

  objc_msgSend_setSharePCSData_(*(a1 + 32), v25, v5);
  dispatch_group_leave(*(a1 + 56));

  v49 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2251F0EAC(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBC878];
  v3 = *MEMORY[0x277CBC880];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v2);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v6 = *(*(*(a1 + 48) + 8) + 40);
      v15 = 138412290;
      v16 = v6;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Error fetching share PCS and adding it to the record PCS: %@", &v15, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v2);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v14 = objc_msgSend_recordID(v10, v12, v13);
      v15 = 138412290;
      v16 = v14;
      _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "All shares have been fetched and the record PCS is updated for %@", &v15, 0xCu);
    }
  }

  result = objc_msgSend__fetchParentPCSForData_withError_(*(a1 + 32), v5, *(a1 + 40), *(*(*(a1 + 48) + 8) + 40));
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2251F19A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordPCSData(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v10 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v37 = v10;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Using PCS data for parent from our current batch: %@", buf, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a1 + 40);
      v32 = v11;
      v35 = objc_msgSend_recordID(v31, v33, v34);
      *buf = 138412290;
      v37 = v35;
      _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Parent exists in the same batch but it doesn't have any chain PCS data, so we can't save %@", buf, 0xCu);
    }

    v14 = MEMORY[0x277CBC560];
    v15 = *MEMORY[0x277CBC120];
    v16 = objc_msgSend_record(*(a1 + 40), v12, v13);
    v19 = objc_msgSend_parent(v16, v17, v18);
    v22 = objc_msgSend_recordID(v19, v20, v21);
    v25 = objc_msgSend_recordID(*(a1 + 40), v23, v24);
    v27 = objc_msgSend_errorWithDomain_code_format_(v14, v26, v15, 5001, @"Parent record %@ in the same batch didn't have chain PCS data on it for record %@", v22, v25);
    v28 = *(*(a1 + 64) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;
  }

  dispatch_group_leave(*(a1 + 48));
  v30 = *MEMORY[0x277D85DE8];
}

void sub_2251F1BF4(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 32);
      v18 = v9;
      v21 = objc_msgSend_record(v17, v19, v20);
      v24 = objc_msgSend_parent(v21, v22, v23);
      v27 = objc_msgSend_recordID(v24, v25, v26);
      v30 = objc_msgSend_recordID(*(a1 + 32), v28, v29);
      v45 = 138412802;
      v46 = v27;
      v47 = 2112;
      v48 = v30;
      v49 = 2112;
      v50 = v5;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Fetched parent PCS data with record ID %@ for record %@: %@", &v45, 0x20u);
    }

    v10 = 48;
    v11 = v5;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a1 + 32);
      v32 = v12;
      v35 = objc_msgSend_record(v31, v33, v34);
      v38 = objc_msgSend_parent(v35, v36, v37);
      v41 = objc_msgSend_recordID(v38, v39, v40);
      v44 = objc_msgSend_recordID(*(a1 + 32), v42, v43);
      v45 = 138412546;
      v46 = v41;
      v47 = 2112;
      v48 = v44;
      _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Couldn't get PCS data for parent %@ of record %@", &v45, 0x16u);
    }

    v10 = 56;
    v11 = v6;
  }

  v13 = *(*(a1 + v10) + 8);
  v14 = v11;
  v15 = *(v13 + 40);
  *(v13 + 40) = v14;

  dispatch_group_leave(*(a1 + 40));
  v16 = *MEMORY[0x277D85DE8];
}

void sub_2251F1E70(uint64_t a1, const char *a2)
{
  v3 = *(*(*(a1 + 56) + 8) + 40);
  if (v3)
  {
    v4 = objc_msgSend__addParentPCS_toRecordPCS_(*(a1 + 32), a2, v3, *(a1 + 40));
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    objc_msgSend_setParentPCSData_(*(a1 + 40), v7, *(*(*(a1 + 56) + 8) + 40));
    goto LABEL_8;
  }

  v8 = *(*(*(a1 + 64) + 8) + 40);
  if (v8)
  {
    if (!objc_msgSend_CKIsNotFoundError(v8, a2, 0))
    {
      goto LABEL_8;
    }

    v11 = MEMORY[0x277CBC560];
    v12 = *MEMORY[0x277CBC120];
    v13 = objc_msgSend_record(*(a1 + 32), v9, v10);
    v16 = objc_msgSend_parent(v13, v14, v15);
    v19 = objc_msgSend_recordID(v16, v17, v18);
    objc_msgSend_errorWithDomain_code_format_(v11, v20, v12, 2025, @"Parent record %@ does not exist on the server", v19);
  }

  else
  {
    v21 = MEMORY[0x277CBC560];
    v22 = *MEMORY[0x277CBC120];
    v13 = objc_msgSend_record(*(a1 + 32), a2, 0);
    v16 = objc_msgSend_parent(v13, v23, v24);
    v19 = objc_msgSend_recordID(v16, v25, v26);
    objc_msgSend_errorWithDomain_code_format_(v21, v27, v22, 5001, @"Couldn't fetch parent PCS data for parent record %@", v19);
  }
  v28 = ;
  v29 = *(*(a1 + 64) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

LABEL_8:
  v31 = *(a1 + 48);

  dispatch_group_leave(v31);
}

uint64_t sub_2251F1FF0(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBC878];
  v3 = *MEMORY[0x277CBC880];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v2);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v6 = *(*(*(a1 + 48) + 8) + 40);
      v15 = 138412290;
      v16 = v6;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Error fetching parent PCS and adding it to the record PCS: %@", &v15, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v2);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v14 = objc_msgSend_recordID(v10, v12, v13);
      v15 = 138412290;
      v16 = v14;
      _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "All parent records have been fetched and the record PCS is updated for %@", &v15, 0xCu);
    }
  }

  result = objc_msgSend__handlePCSData_withError_(*(a1 + 32), v5, *(a1 + 40), *(*(*(a1 + 48) + 8) + 40));
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2251F2D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 240), 8);
  _Block_object_dispose((v37 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_2251F2D74(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v9 = a3;
  if (v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = v10;
      v15 = objc_msgSend_recordID(v11, v13, v14);
      v18 = objc_msgSend_zoneID(v15, v16, v17);
      v29 = 138412546;
      v30 = v18;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS for zone %@: %@", &v29, 0x16u);
    }

    v19 = *(*(a1 + 64) + 8);
    v21 = *(v19 + 40);
    v20 = (v19 + 40);
    if (!v21)
    {
      v22 = a3;
LABEL_10:
      objc_storeStrong(v20, v22);
    }
  }

  else if (objc_msgSend_pcs(v6, v7, v8) || objc_msgSend_databaseScope(*(a1 + 32), v23, v24) == 3 && (objc_msgSend_pcsData(v6, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
  {
    v20 = (*(*(a1 + 56) + 8) + 40);
    v22 = a2;
    goto LABEL_10;
  }

  dispatch_group_leave(*(a1 + 48));

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2251F2F30(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6 && !v7)
  {
    v9 = (*(*(a1 + 48) + 8) + 40);
    v10 = a2;
LABEL_10:
    objc_storeStrong(v9, v10);
    goto LABEL_11;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    v16 = 138412546;
    v17 = v12;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS for share %@: %@", &v16, 0x16u);
  }

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  v9 = (v13 + 40);
  if (!v14)
  {
    v10 = a3;
    goto LABEL_10;
  }

LABEL_11:
  dispatch_group_leave(*(a1 + 40));

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2251F3080(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = MEMORY[0x277CBC830];
  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 32);
    v21 = v4;
    v24 = objc_msgSend_recordID(v20, v22, v23);
    v25 = 138412290;
    v26 = v24;
    _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "All PCS data fetched. Creating PCS for record %@", &v25, 0xCu);
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (*v2 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *v3;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_recordID(*(a1 + 32), v7, v8);
      v12 = objc_msgSend_zoneID(v9, v10, v11);
      v13 = v12;
      v14 = &stru_28385ED00;
      v15 = @" and share ";
      if (*(a1 + 72))
      {
        v14 = *(*(*(a1 + 64) + 8) + 40);
      }

      else
      {
        v15 = &stru_28385ED00;
      }

      v16 = *(*(*(a1 + 48) + 8) + 40);
      v25 = 138413058;
      v26 = v12;
      v27 = 2114;
      v28 = v15;
      v29 = 2114;
      v30 = v14;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Warn: Couldn't get PCS data for zone %@%{public}@%{public}@. Error was %@", &v25, 0x2Au);
    }

    result = objc_msgSend__addShareToPCSData_withError_(*(a1 + 40), v17, 0, *(*(*(a1 + 48) + 8) + 40));
  }

  else
  {
    result = objc_msgSend__continueCreateAndSavePCSWithZonePCS_sharePCS_(*(a1 + 40), v5, *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40));
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2251F3D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251F3D40(uint64_t a1, void *a2, void *a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (v5 && !v6)
  {
    if (*MEMORY[0x277CBC810] == 1)
    {
      v11 = objc_msgSend_operation(WeakRetained, v8, v9);
      v14 = objc_msgSend_deviceContext(v11, v12, v13);
      v17 = objc_msgSend_testDeviceReference(v14, v15, v16);
      if (v17)
      {
        v20 = v17;
        v21 = objc_msgSend_protectionData(*(a1 + 32), v18, v19);
        v23 = objc_msgSend_dataUsingEncoding_(@"_NEW_PROTECTION_DATA_PLOX", v22, 4);
        isEqualToData = objc_msgSend_isEqualToData_(v21, v24, v23);

        if (isEqualToData)
        {
          objc_msgSend__createAndSavePCS(v10, v8, v9);
          v26 = 0;
          v6 = 0;
LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
      }
    }

    v45 = objc_msgSend_pcsManager(v10, v8, v9);
    v48 = objc_msgSend_protectionData(*(a1 + 32), v46, v47);
    v51 = objc_msgSend_pcs(v5, v49, v50);
    v82 = 0;
    v53 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v45, v52, v48, 1, v51, &v82);
    v6 = v82;

    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v56 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v84 = v6;
        _os_log_impl(&dword_22506F000, v56, OS_LOG_TYPE_INFO, "Warn: Couldn't deserialize record PCS provided by the client: %@", buf, 0xCu);
      }
    }

    if (v53)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v57 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v59 = *(a1 + 32);
        v60 = v57;
        v63 = objc_msgSend_recordID(v59, v61, v62);
        *buf = 138412290;
        v84 = v63;
        _os_log_impl(&dword_22506F000, v60, OS_LOG_TYPE_INFO, "Successfully deserialized client PCS data for record %@", buf, 0xCu);
      }

      v26 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v58, *(a1 + 32));
      objc_msgSend_setPcs_(v26, v64, v53);
      objc_msgSend_setZonePCSData_(v26, v65, v5);
      if (objc_msgSend__canSetPreviousProtectionEtag(v10, v66, v67))
      {
        v70 = objc_msgSend_previousProtectionEtag(*(a1 + 32), v68, v69);
        objc_msgSend_setEtag_(v26, v71, v70);
      }

      else
      {
        objc_msgSend_setEtag_(v26, v68, 0);
      }

      v74 = objc_msgSend_previousProtectionEtagFromUnitTest(*(a1 + 32), v72, v73);

      if (v74)
      {
        v77 = objc_msgSend_previousProtectionEtagFromUnitTest(*(a1 + 32), v75, v76);
        objc_msgSend_setEtag_(v26, v78, v77);
      }

      objc_msgSend_etag(v26, v75, v76);
    }

    else
    {
      v26 = 0;
      objc_msgSend_etag(0, v54, v55);
    }
    v79 = ;

    if (v53 && v79)
    {
      objc_msgSend__addShareToPCSData_withError_(v10, v80, v26, 0);
    }

    else
    {
      objc_msgSend__fetchExistingPCSForProvidedPCSData_(v10, v80, v26);
      if (!v53)
      {
        goto LABEL_37;
      }
    }

    CFRelease(v53);
    goto LABEL_37;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v30 = *(a1 + 32);
    v31 = v27;
    v34 = objc_msgSend_recordID(v30, v32, v33);
    v37 = objc_msgSend_zoneID(v34, v35, v36);
    *buf = 138412546;
    v84 = v37;
    v85 = 2112;
    v86 = v6;
    _os_log_impl(&dword_22506F000, v31, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS for zone %@: %@", buf, 0x16u);
  }

  if (!v6)
  {
    v38 = MEMORY[0x277CBC560];
    v39 = *MEMORY[0x277CBC120];
    v40 = objc_msgSend_recordID(*(a1 + 32), v28, v29);
    v43 = objc_msgSend_zoneID(v40, v41, v42);
    v6 = objc_msgSend_errorWithDomain_code_format_(v38, v44, v39, 5001, @"Couldn't fetch PCS for zone %@", v43);
  }

  objc_msgSend__addShareToPCSData_withError_(v10, v28, 0, v6);
LABEL_38:

  v81 = *MEMORY[0x277D85DE8];
}

void sub_2251F4338(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251F4354(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (v5 && !v6)
  {
    if (*MEMORY[0x277CBC810] == 1)
    {
      v11 = objc_msgSend_operation(WeakRetained, v8, v9);
      v14 = objc_msgSend_deviceContext(v11, v12, v13);
      v17 = objc_msgSend_testDeviceReference(v14, v15, v16);
      if (v17)
      {
        v20 = v17;
        v21 = objc_msgSend_protectionData(*(a1 + 32), v18, v19);
        v23 = objc_msgSend_dataUsingEncoding_(@"_NEW_PROTECTION_DATA_PLOX", v22, 4);
        isEqualToData = objc_msgSend_isEqualToData_(v21, v24, v23);

        if (isEqualToData)
        {
          objc_msgSend__createAndSavePCS(v10, v8, v9);
          v26 = 0;
          v6 = 0;
LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
      }
    }

    v30 = objc_msgSend_pcsManager(v10, v8, v9);
    v33 = objc_msgSend_protectionData(*(a1 + 32), v31, v32);
    v36 = objc_msgSend_pcs(v5, v34, v35);
    v67 = 0;
    v38 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v30, v37, v33, 1, v36, &v67);
    v6 = v67;

    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v41 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v69 = v6;
        _os_log_impl(&dword_22506F000, v41, OS_LOG_TYPE_INFO, "Warn: Couldn't deserialize record PCS provided by the client: %@", buf, 0xCu);
      }
    }

    if (v38)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v42 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v44 = *(a1 + 32);
        v45 = v42;
        v48 = objc_msgSend_recordID(v44, v46, v47);
        *buf = 138412290;
        v69 = v48;
        _os_log_impl(&dword_22506F000, v45, OS_LOG_TYPE_INFO, "Successfully deserialized client PCS data for record %@", buf, 0xCu);
      }

      v26 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v43, *(a1 + 32));
      objc_msgSend_setPcs_(v26, v49, v38);
      objc_msgSend_setSharePCSData_(v26, v50, v5);
      if (objc_msgSend__canSetPreviousProtectionEtag(v10, v51, v52))
      {
        v55 = objc_msgSend_previousProtectionEtag(*(a1 + 32), v53, v54);
        objc_msgSend_setEtag_(v26, v56, v55);
      }

      else
      {
        objc_msgSend_setEtag_(v26, v53, 0);
      }

      v59 = objc_msgSend_previousProtectionEtagFromUnitTest(*(a1 + 32), v57, v58);

      if (v59)
      {
        v62 = objc_msgSend_previousProtectionEtagFromUnitTest(*(a1 + 32), v60, v61);
        objc_msgSend_setEtag_(v26, v63, v62);
      }

      objc_msgSend_etag(v26, v60, v61);
    }

    else
    {
      v26 = 0;
      objc_msgSend_etag(0, v39, v40);
    }
    v64 = ;

    if (v38 && v64)
    {
      objc_msgSend__addShareToPCSData_withError_(v10, v65, v26, 0);
    }

    else
    {
      objc_msgSend__fetchExistingPCSForProvidedPCSData_(v10, v65, v26);
      if (!v38)
      {
        goto LABEL_37;
      }
    }

    CFRelease(v38);
    goto LABEL_37;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v29 = *(a1 + 40);
    *buf = 138412546;
    v69 = v29;
    v70 = 2112;
    v71 = v6;
    _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS for share %@: %@", buf, 0x16u);
  }

  if (!v6)
  {
    v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v28, *MEMORY[0x277CBC120], 5001, @"Couldn't fetch PCS for share %@", *(a1 + 40));
  }

  objc_msgSend__addShareToPCSData_withError_(v10, v28, 0, v6);
LABEL_38:

  v66 = *MEMORY[0x277D85DE8];
}

void sub_2251F4908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251F492C(uint64_t a1, void *a2, void *a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v6)
  {
    v13 = objc_msgSend_chainPCSData(v5, v7, v8);

    if (v13)
    {
      if (*MEMORY[0x277CBC810] == 1)
      {
        v16 = objc_msgSend_operation(WeakRetained, v14, v15);
        v19 = objc_msgSend_deviceContext(v16, v17, v18);
        v22 = objc_msgSend_testDeviceReference(v19, v20, v21);
        if (v22)
        {
          v25 = v22;
          v26 = objc_msgSend_protectionData(*(a1 + 32), v23, v24);
          v28 = objc_msgSend_dataUsingEncoding_(@"_NEW_PROTECTION_DATA_PLOX", v27, 4);
          isEqualToData = objc_msgSend_isEqualToData_(v26, v29, v28);

          if (isEqualToData)
          {
            objc_msgSend__createAndSavePCS(WeakRetained, v14, v15);
            v31 = 0;
            v6 = 0;
LABEL_37:

            goto LABEL_38;
          }
        }

        else
        {
        }
      }

      v32 = objc_msgSend_pcsManager(WeakRetained, v14, v15);
      v35 = objc_msgSend_protectionData(*(a1 + 32), v33, v34);
      v38 = objc_msgSend_chainPCSData(v5, v36, v37);
      v41 = objc_msgSend_pcs(v38, v39, v40);
      v72 = 0;
      v43 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v32, v42, v35, 1, v41, &v72);
      v6 = v72;

      if (v6)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v46 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v74 = v6;
          _os_log_impl(&dword_22506F000, v46, OS_LOG_TYPE_INFO, "Warn: Couldn't deserialize record PCS provided by the client: %@", buf, 0xCu);
        }
      }

      if (v43)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v47 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v49 = *(a1 + 32);
          v50 = v47;
          v53 = objc_msgSend_recordID(v49, v51, v52);
          *buf = 138412290;
          v74 = v53;
          _os_log_impl(&dword_22506F000, v50, OS_LOG_TYPE_INFO, "Successfully deserialized client PCS data for record %@", buf, 0xCu);
        }

        v31 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v48, *(a1 + 32));
        objc_msgSend_setPcs_(v31, v54, v43);
        objc_msgSend_setParentPCSData_(v31, v55, v5);
        if (objc_msgSend__canSetPreviousProtectionEtag(WeakRetained, v56, v57))
        {
          v60 = objc_msgSend_previousProtectionEtag(*(a1 + 32), v58, v59);
          objc_msgSend_setEtag_(v31, v61, v60);
        }

        else
        {
          objc_msgSend_setEtag_(v31, v58, 0);
        }

        v64 = objc_msgSend_previousProtectionEtagFromUnitTest(*(a1 + 32), v62, v63);

        if (v64)
        {
          v67 = objc_msgSend_previousProtectionEtagFromUnitTest(*(a1 + 32), v65, v66);
          objc_msgSend_setEtag_(v31, v68, v67);
        }

        objc_msgSend_etag(v31, v65, v66);
      }

      else
      {
        v31 = 0;
        objc_msgSend_etag(0, v44, v45);
      }
      v69 = ;

      if (v43 && v69)
      {
        objc_msgSend__addShareToPCSData_withError_(WeakRetained, v70, v31, 0);
      }

      else
      {
        objc_msgSend__fetchExistingPCSForProvidedPCSData_(WeakRetained, v70, v31);
        if (!v43)
        {
          goto LABEL_37;
        }
      }

      CFRelease(v43);
      goto LABEL_37;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    *buf = 138412546;
    v74 = v12;
    v75 = 2112;
    v76 = v6;
    _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS for parent %@: %@", buf, 0x16u);
  }

  if (!v6)
  {
    v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 5001, @"Couldn't fetch PCS for parent %@", *(a1 + 40));
  }

  objc_msgSend__addShareToPCSData_withError_(WeakRetained, v11, 0, v6);
LABEL_38:

  v71 = *MEMORY[0x277D85DE8];
}

void sub_2251F4F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251F4F60(void **a1, void *a2, void *a3)
{
  v114 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v12 = objc_msgSend_operation(WeakRetained, v8, v9);
  if (v5)
  {
    v13 = objc_msgSend_pcs(v5, v10, v11);
    v15 = objc_msgSend_protectionIdentifierFromShareProtection_(CKDPCSManager, v14, v13);
    v18 = objc_msgSend_CKUppercaseHexStringWithoutSpaces(v15, v16, v17);

    v21 = objc_msgSend_pcs(a1[4], v19, v20);
    v23 = objc_msgSend_protectionIdentifierFromShareProtection_(CKDPCSManager, v22, v21);
    v26 = objc_msgSend_CKUppercaseHexStringWithoutSpaces(v23, v24, v25);

    if (*MEMORY[0x277CBC810] == 1)
    {
      v107 = v26;
      v29 = WeakRetained;
      v30 = v5;
      v31 = v18;
      v32 = v6;
      v33 = v12;
      v34 = objc_msgSend_container(v12, v27, v28);
      v37 = objc_msgSend_deviceContext(v34, v35, v36);
      v41 = objc_msgSend_testDeviceReference(v37, v38, v39);
      if (v41)
      {
        v42 = objc_msgSend_objectForKeyedSubscript_(a1[5], v40, @"UNIT_TESTING_FAIL_PCS_ETAG_CHECK");
        v43 = v42 != 0;
      }

      else
      {
        v43 = 0;
      }

      v12 = v33;
      v6 = v32;
      v18 = v31;
      v5 = v30;
      WeakRetained = v29;
      v26 = v107;
    }

    else
    {
      v43 = 0;
    }

    if (!objc_msgSend_isEqualToString_(v26, v27, v18) || v43)
    {
      if (!objc_msgSend_retryPCSFailures(v12, v50, v51))
      {
        v68 = MEMORY[0x277CBC560];
        v69 = v6;
        v70 = v12;
        v71 = *MEMORY[0x277CBC120];
        v72 = objc_msgSend_recordID(a1[5], v58, v59);
        v73 = v71;
        v12 = v70;
        v6 = v69;
        v48 = objc_msgSend_errorWithDomain_code_format_(v68, v74, v73, 5004, @"Attempted PCS data (%@) had a different identifier than the server PCS data (%@) for record %@", v26, v18, v72);

        v47 = 0;
        goto LABEL_32;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v60 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v63 = a1[5];
        v64 = v60;
        v67 = objc_msgSend_recordID(v63, v65, v66);
        *buf = 138543874;
        v109 = v26;
        v110 = 2114;
        v111 = v18;
        v112 = 2112;
        v113 = v67;
        _os_log_impl(&dword_22506F000, v64, OS_LOG_TYPE_INFO, "Attempted PCS data (%{public}@) had a different identifier than the server PCS data (%{public}@) for record %@. Using the server's PCS data", buf, 0x20u);
      }

      objc_msgSend__clearRecordProtectionDataForRecord(WeakRetained, v61, v62);
      v57 = v5;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v52 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v87 = v6;
        v88 = v12;
        v89 = a1[5];
        v90 = v52;
        v93 = objc_msgSend_recordID(v89, v91, v92);
        v96 = objc_msgSend_etag(v5, v94, v95);
        *buf = 138412802;
        v109 = v93;
        v110 = 2114;
        v111 = v26;
        v112 = 2114;
        v113 = v96;
        _os_log_debug_impl(&dword_22506F000, v90, OS_LOG_TYPE_DEBUG, "PCS identifiers for record %@ match (%{public}@), so we'll use %{public}@ as our previous protection etag", buf, 0x20u);

        v12 = v88;
        v6 = v87;
      }

      v55 = objc_msgSend_etag(v5, v53, v54);
      objc_msgSend_setEtag_(a1[4], v56, v55);

      v57 = a1[4];
    }

    v47 = v57;
    v48 = 0;
LABEL_32:

    objc_msgSend__addShareToPCSData_withError_(WeakRetained, v75, v47, v48);
LABEL_33:

    goto LABEL_34;
  }

  if (v6 && !objc_msgSend_CKIsObjectNotFoundError(v6, v10, v11))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v77 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v78 = a1[5];
      v79 = v77;
      v82 = objc_msgSend_recordID(v78, v80, v81);
      *buf = 138412546;
      v109 = v82;
      v110 = 2112;
      v111 = v6;
      _os_log_impl(&dword_22506F000, v79, OS_LOG_TYPE_INFO, "Couldn't fetch PCS data to verify client provided protection data for record %@: %@", buf, 0x16u);
    }

    v48 = v6;
    v47 = 0;
    objc_msgSend__addShareToPCSData_withError_(WeakRetained, v83, 0, v48);
    goto LABEL_33;
  }

  if (!objc_msgSend_CKIsObjectNotFoundError(v6, v10, v11) || objc_msgSend_pcs(a1[4], v44, v45))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v97 = a1[5];
      v98 = v46;
      v101 = objc_msgSend_recordID(v97, v99, v100);
      *buf = 138412290;
      v109 = v101;
      _os_log_debug_impl(&dword_22506F000, v98, OS_LOG_TYPE_DEBUG, "PCS data for record %@ wasn't fetched from the server. Using the client-provided PCS data", buf, 0xCu);
    }

    v47 = a1[4];
    v48 = 0;
    objc_msgSend__addShareToPCSData_withError_(WeakRetained, v49, v47, 0);
    goto LABEL_33;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v84 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v102 = a1[5];
    v103 = v84;
    v106 = objc_msgSend_recordID(v102, v104, v105);
    *buf = 138412290;
    v109 = v106;
    _os_log_debug_impl(&dword_22506F000, v103, OS_LOG_TYPE_DEBUG, "We couldn't deserialize the client-provided PCS and PCS data for record %@ wasn't fetched from the server because the record doesn't exist on the server. Creating new record PCS", buf, 0xCu);
  }

  objc_msgSend__createAndSavePCS(WeakRetained, v85, v86);
LABEL_34:

  v76 = *MEMORY[0x277D85DE8];
}

void sub_2251F70C8(uint64_t a1, void *a2)
{
  v7 = a2;
  v5 = objc_msgSend_recordKeysRemoved(v7, v3, v4);
  objc_msgSend_setRecordKeysRemoved_(v7, v6, *(a1 + 32) + v5);
}

void sub_2251F8520(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose(&STACK[0x3F0], 8);
  _Unwind_Resume(a1);
}

BOOL sub_2251F85E4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v56 = 0;
  v12 = objc_msgSend__prepareAsset_recordKey_mergeableDeltaID_record_error_(v9, v11, v7, v8, a4, v10, &v56);
  v13 = v56;
  v14 = *MEMORY[0x277CBC878];
  v15 = *MEMORY[0x277CBC880];
  if (v13)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v14);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v35 = *(a1 + 40);
      v36 = v16;
      v39 = objc_msgSend_recordID(v35, v37, v38);
      *buf = 138412802;
      v58 = v39;
      v59 = 2114;
      v60 = v8;
      v61 = 2112;
      v62 = v13;
      _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "Failing save of record %@ due to error preparing asset for upload for key %{public}@: %@", buf, 0x20u);
    }

    objc_msgSend_setState_(*(a1 + 32), v17, 12);
    v18 = MEMORY[0x277CBC560];
    v19 = *MEMORY[0x277CBC120];
    v22 = objc_msgSend_recordID(*(a1 + 40), v20, v21);
    v24 = objc_msgSend_errorWithDomain_code_error_format_(v18, v23, v19, 1021, v13, @"Error preparing asset for upload for key %@ on record %@: %@", v8, v22, v13);
    objc_msgSend_setError_(*(a1 + 32), v25, v24);

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else if (v12)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v14);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v40 = *(a1 + 40);
      v41 = v26;
      v44 = objc_msgSend_recordID(v40, v42, v43);
      v47 = objc_msgSend_operationID(*(a1 + 48), v45, v46);
      *buf = 138413058;
      v58 = v7;
      v59 = 2114;
      v60 = v8;
      v61 = 2112;
      v62 = v44;
      v63 = 2114;
      v64 = v47;
      _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Uploading asset %@ for key %{public}@ on record %@ and operation %{public}@", buf, 0x2Au);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    v29 = objc_msgSend_batchRank(*(a1 + 32), v27, v28);
    objc_msgSend_setUploadRank_(v7, v30, v29);
    objc_msgSend_addObject_(*(a1 + 56), v31, v7);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v14);
    }

    v32 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v48 = *(a1 + 40);
      v49 = v32;
      v52 = objc_msgSend_recordID(v48, v50, v51);
      v55 = objc_msgSend_operationID(*(a1 + 48), v53, v54);
      *buf = 138413058;
      v58 = v7;
      v59 = 2114;
      v60 = v8;
      v61 = 2112;
      v62 = v52;
      v63 = 2114;
      v64 = v55;
      _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Skipping asset %@ for key %{public}@ on record %@ and operation %{public}@", buf, 0x2Au);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return v13 == 0;
}

void sub_2251FCBE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_deltasToSave(v4, v5, v6);
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_count(v7, v8, v9);

  v14 = objc_msgSend_pendingReplacementRequests(v4, v10, v11);

  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_count(v14, v12, v13);
}

void sub_2251FDE78(uint64_t a1, void *a2)
{
  v27 = a2;
  if ((objc_msgSend_shouldOnlySaveAssetContent(*(a1 + 32), v3, v4) & 1) == 0)
  {
    v7 = objc_msgSend_recordsUploaded(v27, v5, v6);
    objc_msgSend_setRecordsUploaded_(v27, v8, v7 + 1);
  }

  v9 = objc_msgSend_record(*(a1 + 40), v5, v6);
  v12 = objc_msgSend_assetCount(v9, v10, v11);
  v15 = objc_msgSend_assetsUploaded(v27, v13, v14);
  objc_msgSend_setAssetsUploaded_(v27, v16, v15 + v12);

  v19 = objc_msgSend_record(*(a1 + 40), v17, v18);
  v22 = objc_msgSend_assetDiskSize(v19, v20, v21);
  v25 = objc_msgSend_assetsUploadedFileSize(v27, v23, v24);
  objc_msgSend_setAssetsUploadedFileSize_(v27, v26, v25 + v22);
}

void sub_2251FE068(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_recordsDeleted(v6, v2, v3);
  objc_msgSend_setRecordsDeleted_(v6, v5, v4 + 1);
}

void sub_2251FE3C0(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_retries(v6, v2, v3);
  objc_msgSend_setRetries_(v6, v5, v4 + 1);
}

void sub_2251FEB50(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_retries(v6, v2, v3);
  objc_msgSend_setRetries_(v6, v5, v4 + 1);
}

void sub_2251FEE8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251FEEB0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_msgSend_container(WeakRetained, v3, v4);
  objc_msgSend_setCachedEnvironment_(v5, v6, a2);

  v9 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
  dispatch_group_leave(v9);
}

void sub_2251FF2D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2251FF2FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setError_(WeakRetained, v4, v3);

  v7 = objc_msgSend_stateTransitionGroup(WeakRetained, v5, v6);
  dispatch_group_leave(v7);
}

void sub_2251FF3E0(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_sideEffectRecordIDs(v3, v4, v5);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v26, v30, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = objc_msgSend_handlersByRecordID(*(a1 + 32), v9, v10);
        v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v14);

        if (v17)
        {
          if (objc_msgSend_isDelete(v17, v18, v19))
          {
            objc_msgSend_noteSideEffectRecordPendingDelete_(v3, v20, v14);
          }

          else
          {
            v22 = objc_msgSend_record(v17, v20, v21);
            objc_msgSend_noteSideEffectRecordPendingModify_(v3, v23, v22);
          }
        }

        else
        {
          objc_msgSend_noteSideEffectRecordAbsent_(v3, v18, v14);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v26, v30, 16);
    }

    while (v11);
  }

  if (objc_msgSend_isShare(v3, v9, v10))
  {
    objc_msgSend_setState_(v3, v24, 1);
  }

  else
  {
    objc_msgSend_setState_(v3, v24, 2);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2251FFEE8(uint64_t a1, void *a2)
{
  v10 = a2;
  if (objc_msgSend_isDelete(v10, v3, v4))
  {
    objc_msgSend_setState_(v10, v5, 1);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = objc_msgSend_shareID(v10, v5, v6);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v9, v10, v8);
  }
}

void sub_2251FFF6C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2252000C8;
  v12[3] = &unk_278548AA8;
  v13 = *(a1 + 32);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v4, v12);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2252001FC;
  v8[3] = &unk_278546EE0;
  objc_copyWeak(&v11, &location);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  objc_msgSend_setCompletionBlock_(v3, v7, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_2252000A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2252000C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v10 = a4;
  if (v8)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v9, v8);
    objc_msgSend_updateParticipantsForFetchedShare_error_(v11, v12, v7, v10);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Warn: Got a fetched share callback without a recordID: %@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2252001FC(void **a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = objc_msgSend_allValues(a1[4], v6, v7, 0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          if (objc_msgSend_state(v16, v11, v12) == 10)
          {
            if (objc_msgSend_CKIsObjectNotFoundError(v5, v11, v12))
            {
              objc_msgSend_setState_(v16, v17, 1);
              objc_msgSend_setError_(v16, v18, 0);
            }

            else
            {
              objc_msgSend_setState_(v16, v17, 12);
              objc_msgSend_setError_(v16, v19, v5);
            }
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v22, v26, 16);
      }

      while (v13);
    }
  }

  v20 = objc_msgSend_stateTransitionGroup(a1[5], v6, v7);
  dispatch_group_leave(v20);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_22520057C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252005A8(uint64_t a1, char a2, void *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v7, v8);
    v10 = MEMORY[0x277CBC878];
    v11 = *MEMORY[0x277CBC878];
    v12 = MEMORY[0x277CBC880];
    v13 = *MEMORY[0x277CBC880];
    if (v5 || (a2 & 1) == 0)
    {
      if (v13 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v11);
      }

      v56 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v67 = *(a1 + 32);
        v68 = 138543618;
        v69 = v67;
        v70 = 2112;
        v71 = v5;
        _os_log_error_impl(&dword_22506F000, v56, OS_LOG_TYPE_ERROR, "User key sync failed for operation %{public}@: %@", &v68, 0x16u);
      }

      if (!objc_msgSend_isCloudCoreSessionNoLongerValidError(v5, v57, v58))
      {
        objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v59, &unk_28385D660);
      }

      objc_msgSend_setError_(v9, v59, v5);
    }

    else
    {
      if (v13 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v11);
      }

      v14 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        v68 = 138543362;
        v69 = v17;
        _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "User key sync completed successfully for operation %{public}@", &v68, 0xCu);
      }

      v18 = objc_msgSend_container(v9, v15, v16);
      v21 = v18;
      if (v18)
      {
        v22 = objc_msgSend_pcsManager(v18, v19, v20);
        v24 = objc_msgSend_currentIdentityPublicKeyIDForServiceType_error_(v22, v23, 0, 0);

        v27 = objc_msgSend_pcsManager(v21, v25, v26);
        v30 = objc_msgSend_identityManager(v27, v28, v29);
        v32 = objc_msgSend_PCSServiceStringFromCKServiceType_(v30, v31, 0);

        if (v24)
        {
          v35 = *v12 == -1;
          v36 = MEMORY[0x277CBC830];
          if (!v35)
          {
            dispatch_once(MEMORY[0x277CBC880], *v10);
          }

          v37 = *v36;
          if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
          {
            v68 = 138412546;
            v69 = v32;
            v70 = 2112;
            v71 = v24;
            _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "The service %@ has a new current identity with public key ID: %@", &v68, 0x16u);
          }

          objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v38, &unk_28385D680);
          v41 = objc_msgSend_pcsManager(v21, v39, v40);
          v44 = objc_msgSend_identityManager(v41, v42, v43);
          objc_msgSend_identitiesChanged(v44, v45, v46);

          v49 = objc_msgSend_pcsCache(v21, v47, v48);
          objc_msgSend_clearPCSMemoryCaches(v49, v50, v51);

          v54 = objc_msgSend_pcsManager(v21, v52, v53);
          objc_msgSend_setBoundaryKeyData_(v54, v55, 0);
        }

        else if (objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(*(a1 + 40), v33, v34))
        {
          if (*v12 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *v10);
          }

          v62 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v68 = 138412290;
            v69 = v32;
            _os_log_error_impl(&dword_22506F000, v62, OS_LOG_TYPE_ERROR, "User key sync did not populate the current identity for the service %@", &v68, 0xCu);
          }

          objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v63, &unk_28385D6A0);
          objc_msgSend_setError_(v9, v64, 0);
        }
      }
    }

    v65 = objc_msgSend_stateTransitionGroup(v9, v60, v61);
    dispatch_group_leave(v65);
  }

  v66 = *MEMORY[0x277D85DE8];
}

void sub_2252009A0(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_failedIdentityRollAttempts(v6, v2, v3);
  objc_msgSend_setFailedIdentityRollAttempts_(v6, v5, v4 + 1);
}

void sub_2252009E8(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_identitiesRolledOnRecordSave(v6, v2, v3);
  objc_msgSend_setIdentitiesRolledOnRecordSave_(v6, v5, v4 + 1);
}

void sub_225200A30(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_failedIdentityRollAttempts(v6, v2, v3);
  objc_msgSend_setFailedIdentityRollAttempts_(v6, v5, v4 + 1);
}

void sub_225200E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225200E88(uint64_t a1, void *a2)
{
  v34 = a2;
  if (objc_msgSend_isDelete(v34, v3, v4))
  {
    goto LABEL_8;
  }

  v7 = objc_msgSend_record(v34, v5, v6);
  if (objc_msgSend_hasUpdatedParent(v7, v8, v9))
  {
    v12 = objc_msgSend_record(v34, v10, v11);
    v15 = objc_msgSend_parent(v12, v13, v14);

    if (!v15)
    {
      goto LABEL_6;
    }

    v18 = *(*(*(a1 + 32) + 8) + 40);
    v7 = objc_msgSend_record(v34, v16, v17);
    v21 = objc_msgSend_parent(v7, v19, v20);
    v24 = objc_msgSend_recordID(v21, v22, v23);
    objc_msgSend_addObject_(v18, v25, v24);
  }

LABEL_6:
  v26 = objc_msgSend_record(v34, v16, v17);
  v29 = objc_msgSend_share(v26, v27, v28);

  if (v29)
  {
    v32 = objc_msgSend_record(v34, v30, v31);
    objc_msgSend_setWantsChainPCS_(v32, v33, 1);
  }

LABEL_8:
}

void sub_225201118(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_msgSend_isDelete(v3, v4, v5))
  {
    objc_msgSend_setState_(v3, v6, 5);
  }

  else if (objc_msgSend_useEncryption(*(a1 + 32), v6, v7))
  {
    v10 = objc_msgSend_pcsGroup(v3, v8, v9);
    dispatch_group_enter(v10);

    objc_msgSend_addObject_(*(a1 + 40), v11, v3);
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
      v14 = v12;
      v17 = objc_msgSend_recordID(v3, v15, v16);
      v19 = 138412290;
      v20 = v17;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Skipping fetch of share PCS data for %@ because encryption is disabled", &v19, 0xCu);
    }

    objc_msgSend_setState_(v3, v13, 3);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_225201448(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_msgSend_isDelete(v3, v4, v5) && (objc_msgSend__needsSigningPCS(*(a1 + 32), v6, v7) & 1) == 0)
  {
    objc_msgSend_setState_(v3, v6, 5);
  }

  else if (objc_msgSend_useEncryption(*(a1 + 32), v6, v7))
  {
    v10 = objc_msgSend_pcsGroup(v3, v8, v9);
    dispatch_group_enter(v10);

    objc_msgSend_addObject_(*(a1 + 40), v11, v3);
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
      v14 = v12;
      v17 = objc_msgSend_recordID(v3, v15, v16);
      v19 = 138412290;
      v20 = v17;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Skipping fetch of record PCS data for %@ because encryption is disabled", &v19, 0xCu);
    }

    objc_msgSend_setState_(v3, v13, 3);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_22520286C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (objc_msgSend_count(v5, v6, v7))
  {
    v9 = objc_msgSend_CKMap_(v5, v8, &unk_28385D6C0);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v10, v9, v11);
  }
}

id sub_2252028FC(uint64_t a1, void *a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"assetReference";
  v3 = objc_msgSend_assetReference(a2, a2, a3);
  v9[0] = v3;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v9, &v8, 1);

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_2252030D0(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = a3;
  if (v7)
  {
    objc_msgSend_setObject_forKey_(*(*(*(a1 + 32) + 8) + 40), v6, v7, v5);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v12 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v5, v10, v11);
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "cache clone context for asset with signature %@", &v15, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "received a nil clone context", &v15, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_225203280(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  objc_msgSend_setDatabaseScope_(v3, v4, *(a1 + 48));
  if (objc_msgSend_useClearAssetEncryption(*(a1 + 32), v5, v6))
  {
    v29 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1573, @"useClearAssetEncryption should be false!");
  }

  if (objc_msgSend_databaseScope(v3, v7, v8) == 2)
  {
    objc_msgSend_setUseEncryption_(v3, v9, 1);
  }

  else
  {
    v13 = objc_msgSend_databaseScope(v3, v9, v10) == 3;
    objc_msgSend_setUseEncryption_(v3, v14, v13);
  }

  v15 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v11, v12);
  dispatch_group_enter(v15);

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_225203638;
  v35[3] = &unk_278547768;
  objc_copyWeak(&v37, &location);
  v36 = *(a1 + 40);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v16, v35);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2252036E4;
  v31[3] = &unk_278548AD0;
  objc_copyWeak(&v33, &location);
  objc_copyWeak(&v34, &from);
  v32 = *(a1 + 40);
  objc_msgSend_setCompletionBlock_(v3, v17, v31);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 32);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = *(a1 + 32);
    v28 = objc_msgSend_ckShortDescription(v25, v26, v27);
    *buf = 134218754;
    v41 = v3;
    v42 = 2114;
    v43 = v24;
    v44 = 2048;
    v45 = v25;
    v46 = 2114;
    v47 = v28;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Starting fetch records operation %p for <%{public}@: %p; %{public}@>", buf, 0x2Au);
  }

  objc_msgSend_hash(*(a1 + 32), v19, v20);
  kdebug_trace();

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v33);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2252035DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

void sub_225203638(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v10, v8);

  if (v11)
  {
    objc_msgSend_assetArray_didFetchRecord_error_(WeakRetained, v12, v11, v13, v7);
  }
}

void sub_2252036E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  objc_msgSend__didCompleteRecordFetchOperation_assetArrayByRecordID_(WeakRetained, v3, v2, *(a1 + 32));
  v6 = objc_msgSend_stateTransitionGroup(WeakRetained, v4, v5);
  dispatch_group_leave(v6);
}

void sub_225203E90(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = a3;
  if (v7)
  {
    objc_msgSend_setObject_forKey_(*(*(*(a1 + 32) + 8) + 40), v6, v7, v5);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v12 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v5, v10, v11);
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "cache clone context for pacakge item with signature %@", &v15, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "received a nil clone context", &v15, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_225204040(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_msgSend_setDatabaseScope_(v3, v4, *(a1 + 48));
  if (objc_msgSend_databaseScope(v3, v5, v6) != 2 && objc_msgSend_databaseScope(v3, v7, v8) != 3)
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1666, @"Expected valid source for CKAssetReference");
  }

  objc_msgSend_setUseEncryption_(v3, v7, 1);
  v12 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v10, v11);
  dispatch_group_enter(v12);

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_225204398;
  v33[3] = &unk_278547768;
  objc_copyWeak(&v35, &location);
  v34 = *(a1 + 40);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v13, v33);
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = sub_225204464;
  v31 = &unk_278547098;
  objc_copyWeak(&v32, &location);
  objc_msgSend_setCompletionBlock_(v3, v14, &v28);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = *(a1 + 32);
    v25 = objc_msgSend_ckShortDescription(v22, v23, v24, v28, v29, v30, v31);
    *buf = 134218754;
    v38 = v3;
    v39 = 2114;
    v40 = v21;
    v41 = 2048;
    v42 = v22;
    v43 = 2114;
    v44 = v25;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Starting fetch records operation %p for <%{public}@: %p; %{public}@>", buf, 0x2Au);
  }

  objc_msgSend_hash(*(a1 + 32), v16, v17);
  kdebug_trace();
  objc_destroyWeak(&v32);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_22520434C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225204398(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v10, v7);
  if (v12)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v11, v7);
    objc_msgSend_packageArray_didFetchRecord_error_(WeakRetained, v14, v13, v15, v8);
  }
}

void sub_225204464(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_225204584(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_assetsWhichNeedRecordFetch(v3, v4, v5);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v33, v37, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v34;
    v13 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        if (objc_msgSend_useClearAssetEncryption(*(a1 + 32), v9, v10))
        {
          v22 = objc_msgSend_currentHandler(*(v13 + 2192), v16, v17);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, *(a1 + 48), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1701, @"useClearAssetEncryption should be false!");
        }

        if (objc_msgSend_databaseScope(*(a1 + 32), v16, v17) != 1 && objc_msgSend_databaseScope(*(a1 + 32), v18, v19) != 2 && objc_msgSend_databaseScope(*(a1 + 32), v18, v20) != 3)
        {
          v24 = objc_msgSend_currentHandler(*(v13 + 2192), v18, v21);
          v25 = *(a1 + 48);
          v26 = *(a1 + 32);
          v29 = objc_msgSend_databaseScope(v26, v27, v28);
          v30 = v26;
          v13 = 0x277CCA000;
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v31, v25, v30, @"CKDModifyRecordsOperation.m", 1702, @"Expected valid destination for CKAssetReference, not %lu", v29);
        }

        objc_msgSend_setObject_forKey_(*(a1 + 40), v18, v3, v15);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v33, v37, 16);
    }

    while (v11);
  }

  objc_msgSend_setState_(v3, v9, 4);

  v32 = *MEMORY[0x277D85DE8];
}

void sub_225204AF8(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = 0;
  v5 = objc_msgSend_prepareAssetsForUploadWithError_(v3, v4, &v20);
  v6 = v20;
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = v3;
      v24 = 2112;
      v25 = v6;
      _os_log_error_impl(&dword_22506F000, v7, OS_LOG_TYPE_ERROR, "Error preparing assets for handler %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v5;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v21, 16);
    if (v10)
    {
      v12 = v10;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v8);
          }

          objc_msgSend_setObject_forKey_(*(a1 + 32), v11, v3, *(*(&v16 + 1) + 8 * i), v16);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v21, 16);
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_225204EB4(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v8, v9);
  if (*MEMORY[0x277CBC810] == 1)
  {
    v12 = objc_msgSend_unitTestOverrides(*(a1 + 32), v10, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"FailBoundaryKeyFetch");

    if (v14)
    {
      v16 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 5005, @"Couldn't fetch boundary key because the unit test asked for it");

      v5 = 0;
      v6 = v16;
    }
  }

  v17 = *MEMORY[0x277CBC878];
  v18 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v17);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v27 = v19;
      v30 = objc_msgSend_operationID(WeakRetained, v28, v29);
      *buf = 138543618;
      v42 = v30;
      v43 = 2112;
      v44 = v6;
      _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Error fetching user boundary key for operation %{public}@: %@", buf, 0x16u);
    }

    objc_msgSend_setError_(WeakRetained, v20, v6);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v17);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v31 = v23;
      v34 = objc_msgSend_operationID(WeakRetained, v32, v33);
      v35 = MEMORY[0x277CCACA8];
      v38 = objc_msgSend_length(v5, v36, v37);
      v40 = objc_msgSend_stringWithFormat_(v35, v39, @"<%lu bytes>", v38);
      *buf = 138543618;
      v42 = v34;
      v43 = 2112;
      v44 = v40;
      _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Fetched user boundary key for operation %{public}@: %@", buf, 0x16u);
    }

    objc_msgSend_setCachedGlobalPerUserBoundaryKeyData_(WeakRetained, v24, v5);
  }

  v25 = objc_msgSend_stateTransitionGroup(WeakRetained, v21, v22);
  dispatch_group_leave(v25);

  v26 = *MEMORY[0x277D85DE8];
}

void sub_225205588(void **a1, void *a2)
{
  v4 = a2;
  v7 = objc_msgSend_container(a1[4], v5, v6);
  objc_msgSend_clientSDKVersion(v7, v8, v9);
  v10 = CKLinkCheck48d9728e8c354416a38f82379cbb35e3();

  if ((v10 & 1) == 0)
  {
    v13 = objc_msgSend_atomic(a1[4], v11, v12);
    objc_msgSend_setAtomic_(v4, v14, v13);
  }

  objc_initWeak(&location, v4);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_2252058D0;
  v44[3] = &unk_27854A110;
  v15 = a1[4];
  v46[1] = a1[6];
  v44[4] = v15;
  objc_copyWeak(v46, &location);
  v45 = a1[5];
  objc_msgSend_setUploadPreparationBlock_(v4, v16, v44);
  v20 = objc_msgSend_saveProgressBlock(a1[4], v17, v18);
  if (v20)
  {
    v21 = v41;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_225205A40;
    v41[3] = &unk_27854A138;
    v22 = a1[4];
    v43[1] = a1[6];
    v41[4] = v22;
    v10 = v43;
    objc_copyWeak(v43, &location);
    v2 = &v42;
    v42 = a1[5];
  }

  else
  {
    v21 = 0;
  }

  objc_msgSend_setUploadProgressBlock_(v4, v19, v21);

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_225205CE0;
  v38[3] = &unk_27854A160;
  objc_copyWeak(v40, &location);
  v23 = a1[5];
  v24 = a1[4];
  v40[1] = a1[6];
  v38[4] = v24;
  v39 = v23;
  objc_msgSend_setUploadCompletionBlock_(v4, v25, v38);
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = sub_2252065A4;
  v34 = &unk_278546EE0;
  objc_copyWeak(&v37, &location);
  v26 = a1[5];
  v35 = a1[4];
  v36 = v26;
  objc_msgSend_setCompletionBlock_(v4, v27, &v31);
  v30 = objc_msgSend_stateTransitionGroup(a1[4], v28, v29, v31, v32, v33, v34, v35);
  dispatch_group_enter(v30);

  objc_destroyWeak(&v37);
  objc_destroyWeak(v40);
  if (v20)
  {

    objc_destroyWeak(v10);
  }

  objc_destroyWeak(v46);
  objc_destroyWeak(&location);
}

void sub_225205874(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 48));
  objc_destroyWeak((v3 + 48));
  if (v1)
  {
    objc_destroyWeak(v2);
  }

  objc_destroyWeak((v4 + 48));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_2252058D0(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!v5)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v3, v4);
    v15 = *(a1 + 56);
    v16 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v18, v15, v16, @"CKDModifyRecordsOperation.m", 1833, @"Expected non-nil asset for %@", WeakRetained);
  }

  v8 = objc_msgSend_objectForKey_(*(a1 + 40), v3, v5);
  if (!v8)
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1835, @"Expected non-nil handler for %@", v5);
  }

  v9 = objc_msgSend_progressTracker(v8, v6, v7);
  v21[0] = v5;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v21, 1);
  objc_msgSend_startTrackingItems_(v9, v12, v11);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_225205A40(uint64_t a1, void *a2, double a3)
{
  v7 = a2;
  if (!v7)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    v26 = *(a1 + 56);
    v27 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v29, v26, v27, @"CKDModifyRecordsOperation.m", 1840, @"Expected non-nil asset for %@", WeakRetained);
  }

  v8 = objc_msgSend_record(v7, v5, v6);
  v11 = objc_msgSend_recordID(v8, v9, v10);

  if (!v11)
  {
    v30 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1842, @"Expected non-nil recordID for %@", v7);
  }

  v16 = objc_msgSend_objectForKey_(*(a1 + 40), v12, v7);
  if (!v16)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1844, @"Expected non-nil handler for %@", v7);
  }

  v17 = objc_msgSend_progressTracker(v16, v14, v15);
  objc_msgSend_updateProgressWithItem_progress_(v17, v18, v7, a3);
  v20 = v19;

  v23 = objc_msgSend_callbackQueue(*(a1 + 32), v21, v22);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225205C58;
  block[3] = &unk_278545E20;
  block[4] = *(a1 + 32);
  v35 = v11;
  v36 = v20;
  v24 = v11;
  dispatch_async(v23, block);
}

void sub_225205C58(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_saveProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_saveProgressBlock(*(a1 + 32), v5, v6);
    v7[2](v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_225205CE0(uint64_t a1, void *a2, void *a3)
{
  v132[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v113 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v5)
  {
    v100 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v100, v101, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1853, @"Expected non-nil asset for %@", WeakRetained);
  }

  v10 = objc_msgSend_record(v5, v7, v8);
  v13 = objc_msgSend_recordID(v10, v11, v12);

  if (!v13)
  {
    v102 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v102, v103, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1855, @"Expected non-nil recordID for %@", v5);
  }

  v18 = objc_msgSend_objectForKey_(*(a1 + 40), v14, v5);
  if (!v18)
  {
    v104 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v104, v105, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1857, @"Expected non-nil handler for %@", v5);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_msgSend_assets(v5, v19, v20);
  }

  else
  {
    v132[0] = v5;
    v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v132, 1);
  }

  v22 = v21;
  if (v6)
  {
LABEL_29:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v91 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v93 = *(v113 + 32);
      v94 = v91;
      v97 = objc_msgSend_operationID(v93, v95, v96);
      *buf = 138413058;
      v124 = v5;
      v125 = 2112;
      v126 = v13;
      v127 = 2114;
      v128 = v97;
      v129 = 2112;
      v130 = v6;
      _os_log_impl(&dword_22506F000, v94, OS_LOG_TYPE_INFO, "Failed to upload asset %@ for record %@ and operation %{public}@: %@", buf, 0x2Au);
    }

    objc_msgSend_setState_(v18, v92, 12);
    objc_msgSend_setError_(v18, v98, v6);
    goto LABEL_34;
  }

  v112 = v18;
  v107 = v13;
  v108 = v5;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v106 = v21;
  v23 = v21;
  v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v119, v131, 16);
  if (!v114)
  {
    goto LABEL_25;
  }

  v27 = *v120;
  v110 = v23;
  v111 = WeakRetained;
  v109 = *v120;
  while (2)
  {
    for (i = 0; i != v114; ++i)
    {
      if (*v120 != v27)
      {
        objc_enumerationMutation(v23);
      }

      v29 = *(*(&v119 + 1) + 8 * i);
      v30 = objc_msgSend_useEncryption(WeakRetained, v25, v26);
      v33 = objc_msgSend_useClearAssetEncryption(WeakRetained, v31, v32);
      v36 = objc_msgSend_mergeableDeltaID(v29, v34, v35);

      if (v36)
      {
        v37 = objc_msgSend_mergeableDeltaID(v29, v25, v26);
        v40 = objc_msgSend_valueID(v37, v38, v39);
        isEncrypted = objc_msgSend_isEncrypted(v40, v41, v42);

        v33 = isEncrypted ^ 1;
        if ((isEncrypted & v30 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else if (!v30)
      {
        goto LABEL_21;
      }

      v44 = [CKDWrappingContext alloc];
      v47 = objc_msgSend_record(v29, v45, v46);
      v50 = objc_msgSend_recordID(v47, v48, v49);
      v53 = objc_msgSend_recordKey(v29, v51, v52);
      v56 = objc_msgSend_mergeableDeltaID(v29, v54, v55);
      v59 = objc_msgSend_signature(v29, v57, v58);
      v62 = objc_msgSend_referenceSignature(v29, v60, v61);
      v64 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v44, v63, v50, v53, v56, v59, v62);

      v67 = objc_msgSend_container(*(v113 + 32), v65, v66);
      v70 = objc_msgSend_pcsManager(v67, v68, v69);
      v73 = objc_msgSend_assetKey(v29, v71, v72);
      v76 = objc_msgSend_record(v112, v74, v75);
      v79 = objc_msgSend_recordPCS(v76, v77, v78);
      v118 = 0;
      v81 = objc_msgSend_wrapAssetKey_withRecordPCS_inContext_withError_(v70, v80, v73, v79, v64, &v118);
      v6 = v118;
      objc_msgSend_setWrappedAssetKey_(v29, v82, v81);

      WeakRetained = v111;
      v23 = v110;

      v27 = v109;
      if (v6)
      {

        v13 = v107;
        v5 = v108;
        v18 = v112;
        v22 = v106;
        goto LABEL_29;
      }

LABEL_21:
      if (v33)
      {
        v83 = objc_msgSend_assetKey(v29, v25, v26);
        objc_msgSend_setClearAssetKey_(v29, v84, v83);
      }
    }

    v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v119, v131, 16);
    if (v114)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v18 = v112;
  v87 = objc_msgSend_error(v112, v85, v86);

  if (!v87)
  {
    objc_msgSend_setState_(v112, v88, 5);
  }

  v90 = objc_msgSend_callbackQueue(*(v113 + 32), v88, v89);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22520632C;
  block[3] = &unk_278546990;
  block[4] = *(v113 + 32);
  v116 = v23;
  v13 = v107;
  v117 = v107;
  dispatch_async(v90, block);

  v6 = 0;
  v5 = v108;
  v22 = v106;
LABEL_34:

  v99 = *MEMORY[0x277D85DE8];
}