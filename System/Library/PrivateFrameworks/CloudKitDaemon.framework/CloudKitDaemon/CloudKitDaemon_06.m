uint64_t sub_225122C00(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_error_impl(&dword_22506F000, v6, OS_LOG_TYPE_ERROR, "%@ %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t sub_225122D08(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
  {
    v9 = 138543618;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_error_impl(&dword_22506F000, v6, OS_LOG_TYPE_ERROR, "%{public}@ %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t sub_225122E10(uint64_t a1, const char *a2)
{
  v133 = *MEMORY[0x277D85DE8];
  objc_msgSend_entriesWithValues_label_setupBlock_(*(*(a1 + 32) + 40), a2, 0, off_27D719A30, &unk_28385C580);
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = v121 = 0u;
  v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v118, v132, 16);
  if (!v113)
  {
    goto LABEL_56;
  }

  v112 = *v119;
  v109 = *MEMORY[0x277CCA050];
  while (2)
  {
    v4 = 0;
    do
    {
      if (*v119 != v112)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v118 + 1) + 8 * v4);
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 40);
      v10 = objc_msgSend_lastUsedTime(v5, v8, v9);
      objc_msgSend_timeIntervalSinceDate_(v7, v11, v10);
      v13 = v12;

      if ((objc_msgSend_forced(*(a1 + 48), v14, v15) & 1) != 0 || v13 > *(a1 + 96) || *(a1 + 128) == 1 && (*(*(*(a1 + 64) + 8) + 24) > 0x3E8uLL || *(*(*(a1 + 72) + 8) + 24) >= 0x6400001uLL) && v13 > *(a1 + 104))
      {
        context = v6;
        v18 = MEMORY[0x277CCACA8];
        v19 = objc_msgSend_UUID(v5, v16, v17);
        v22 = objc_msgSend_UUIDString(v19, v20, v21);
        v25 = objc_msgSend_fileSignature(v5, v23, v24);
        v26 = CKStringWithData();
        v28 = objc_msgSend_stringWithFormat_(v18, v27, @"%@.%@", v22, v26);

        v31 = objc_msgSend_fileDownloadPath(*(a1 + 32), v29, v30);
        v33 = objc_msgSend_stringByAppendingPathComponent_(v31, v32, v28);

        v34 = *(a1 + 56);
        v117 = 0;
        v36 = objc_msgSend_attributesOfItemAtPath_error_(v34, v35, v33, &v117);
        v39 = v117;
        if (v36)
        {
          v40 = objc_msgSend_fileSize(v36, v37, v38);
          if (!v5)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v40 = 0;
          if (!v5)
          {
            goto LABEL_28;
          }
        }

        if (!objc_msgSend_mayBeEvicted(v5, v37, v38))
        {
          v62 = v39;
          goto LABEL_47;
        }

        v43 = objc_msgSend_itemID(v5, v41, v42);

        if (v43)
        {
          v46 = objc_msgSend_itemID(v5, v44, v45);
          v110 = objc_msgSend_unsignedLongLongValue(v46, v47, v48);

          objc_msgSend_setStatus_(v5, v49, &unk_2838C8118);
          v51 = objc_msgSend_saveStatus_(*(*(a1 + 32) + 40), v50, v5);
          shouldBeUnregisteredBeforeDeleted = objc_msgSend_shouldBeUnregisteredBeforeDeleted(v5, v52, v53);
          v57 = *(a1 + 48);
          if (shouldBeUnregisteredBeforeDeleted)
          {
            v58 = objc_msgSend_itemIDsToUnregister(v57, v54, v55);
            v61 = objc_msgSend_itemID(v5, v59, v60);
            sub_22511BBF0(v58, v61);
          }

          else
          {
            v58 = objc_msgSend_assetHandleItemIDsToDelete(v57, v54, v55);
            v61 = objc_msgSend_itemID(v5, v63, v64);
            objc_msgSend_addObject_(v58, v65, v61);
          }

          if (v110)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v66 = *MEMORY[0x277CBC828];
            if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
            {
              v68 = v66;
              v71 = objc_msgSend_UUID(v5, v69, v70);
              v74 = objc_msgSend_UUIDString(v71, v72, v73);
              *buf = 138413058;
              v123 = v28;
              v124 = 2048;
              v125 = v110;
              v126 = 2114;
              v127 = v74;
              v128 = 2048;
              v129 = v40;
              _os_log_impl(&dword_22506F000, v68, OS_LOG_TYPE_INFO, "Removing file %@ for asset with itemID %llu and UUID %{public}@ (size:%llu)", buf, 0x2Au);
            }

            goto LABEL_32;
          }
        }

LABEL_28:
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v75 = *MEMORY[0x277CBC828];
        if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v123 = v28;
          v124 = 2048;
          v125 = v40;
          _os_log_impl(&dword_22506F000, v75, OS_LOG_TYPE_INFO, "Removing file %@ (size:%llu) with no associated asset handle", buf, 0x16u);
        }

LABEL_32:
        v76 = *(a1 + 56);
        v116 = v39;
        v77 = objc_msgSend_removeItemAtPath_error_(v76, v67, v33, &v116);
        v62 = v116;

        if (v77)
        {
          goto LABEL_33;
        }

        v84 = objc_msgSend_domain(v62, v78, v79);
        if (objc_msgSend_isEqualToString_(v109, v85, v84))
        {
          v88 = objc_msgSend_code(v62, v86, v87);

          if (v88 == 4)
          {
LABEL_33:
            ++*(*(*(a1 + 80) + 8) + 24);
            *(*(*(a1 + 88) + 8) + 24) += v40;
            *(*(*(a1 + 64) + 8) + 24) -= *(*(*(a1 + 64) + 8) + 24) != 0;
            v80 = *(*(a1 + 72) + 8);
            v81 = *(v80 + 24);
            v82 = v81 >= v40;
            v83 = v81 - v40;
            if (!v82)
            {
              v83 = 0;
            }

            *(v80 + 24) = v83;
            if ((objc_msgSend_forced(*(a1 + 48), v78, v79) & 1) == 0 && *(*(*(a1 + 64) + 8) + 24) <= 0x63uLL && *(*(*(a1 + 72) + 8) + 24) >> 21 <= 4uLL)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v95 = *MEMORY[0x277CBC828];
              if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
              {
                v98 = *(*(*(a1 + 80) + 8) + 24);
                v99 = *(*(*(a1 + 88) + 8) + 24);
                v100 = *(a1 + 112);
                v114 = *(a1 + 120);
                v101 = *(a1 + 32);
                v102 = v95;
                v105 = objc_msgSend_fileDownloadPath(v101, v103, v104);
                v108 = objc_msgSend_CKSanitizedPath(v105, v106, v107);
                *buf = 134219010;
                v123 = v98;
                v124 = 2048;
                v125 = v100;
                v126 = 2048;
                v127 = v99;
                v128 = 2048;
                v129 = v114;
                v130 = 2114;
                v131 = v108;
                _os_log_debug_impl(&dword_22506F000, v102, OS_LOG_TYPE_DEBUG, "Evicted %llu/%llu files (%llu/%llu bytes) at %{public}@", buf, 0x34u);
              }

              objc_autoreleasePoolPop(context);
              goto LABEL_56;
            }

            goto LABEL_47;
          }
        }

        else
        {
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v89 = *MEMORY[0x277CBC828];
        if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
        {
          v91 = v89;
          v94 = objc_msgSend_CKSanitizedPath(v33, v92, v93);
          *buf = 138543618;
          v123 = v94;
          v124 = 2112;
          v125 = v62;
          _os_log_error_impl(&dword_22506F000, v91, OS_LOG_TYPE_ERROR, "Failed removing cached asset file at %{public}@: %@", buf, 0x16u);
        }

LABEL_47:

        v6 = context;
      }

      objc_autoreleasePoolPop(v6);
      ++v4;
    }

    while (v113 != v4);
    v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v90, &v118, v132, 16);
    if (v113)
    {
      continue;
    }

    break;
  }

LABEL_56:

  v96 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_225123628(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_msgSend_setFetchedProperties_(v4, v2, &unk_2838C8D60);
  objc_msgSend_orderAscendingByProperty_(v4, v3, @"lastUsedTime");
}

uint64_t sub_22512367C(uint64_t a1, const char *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  objc_msgSend_selectProperties_inAssetHandlesWithStatus_(*(*(a1 + 32) + 40), a2, &unk_2838C8D78, 3);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v27, v33, 16);
  if (v4)
  {
    v6 = v4;
    v7 = *v28;
    v8 = MEMORY[0x277CBC880];
    v9 = MEMORY[0x277CBC828];
    *&v5 = 138412290;
    v25 = v5;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        if (*v8 != -1)
        {
          dispatch_once(v8, *MEMORY[0x277CBC878]);
        }

        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = v25;
          v32 = v11;
          _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Removing registered asset handle for %@", buf, 0xCu);
        }

        v15 = objc_msgSend_itemIDsToUnregister(*(a1 + 40), v13, v14, v25);
        v18 = objc_msgSend_itemID(v11, v16, v17);
        sub_22511BBF0(v15, v18);

        objc_msgSend_setStatus_(v11, v19, &unk_2838C8118);
        v21 = objc_msgSend_saveStatus_(*(*(a1 + 32) + 40), v20, v11);
        ++v10;
      }

      while (v6 != v10);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v27, v33, 16);
    }

    while (v6);
  }

  v23 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_225123A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225123A34(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend__evictAllFilesForced_(*(a1 + 32), a2, *(a1 + 48));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void sub_225123D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225123D88(uint64_t a1, const char *a2)
{
  v37[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v36[0] = @"EXPIRYDATE";
  v36[1] = @"REGISTERED";
  v37[0] = v3;
  v37[1] = &unk_2838C8160;
  v36[2] = @"INTERRUPTED";
  v37[2] = &unk_2838C80E8;
  v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v37, v36, 3);
  v5 = objc_msgSend_entriesWithValues_label_setupBlock_(*(*(a1 + 40) + 40), v4, v28, off_27D719A60, &unk_28385C5C0);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v29, v35, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v30;
    v12 = MEMORY[0x277CBC880];
    v13 = MEMORY[0x277CBC828];
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        if (objc_msgSend_mayBeEvicted(v15, v8, v9))
        {
          ++*(*(*(a1 + 56) + 8) + 24);
          v18 = objc_msgSend_itemIDsToUnregister(*(a1 + 48), v16, v17);
          v21 = objc_msgSend_itemID(v15, v19, v20);
          sub_22511BBF0(v18, v21);

          objc_msgSend_setStatus_(v15, v22, &unk_2838C8118);
          v24 = objc_msgSend_saveStatus_(*(*(a1 + 40) + 40), v23, v15);
        }

        else
        {
          if (*v12 != -1)
          {
            dispatch_once(v12, *MEMORY[0x277CBC878]);
          }

          v25 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v15;
            _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Attempting to evict asset handle in wrong state %@", buf, 0xCu);
          }
        }

        ++v14;
      }

      while (v10 != v14);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v29, v35, 16);
    }

    while (v10);
  }

  objc_msgSend_unregisterItemIDsAndDeleteAssetHandlesWithEvictionInfo_(*(a1 + 40), v8, *(a1 + 48));

  v26 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_22512401C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_setFetchedProperties_(v2, v3, &unk_2838C8D90);
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v4, @"(status=$REGISTERED OR status=$INTERRUPTED) AND lastUsedTime < $EXPIRYDATE");
  objc_msgSend_setSearchPredicate_(v2, v5, v6);
}

void sub_225125320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_225125370(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    v5 = a2;
    objc_msgSend_appendString_(v4, v6, @", ");
  }

  else
  {
    v8 = MEMORY[0x277CCAB68];
    v9 = a2;
    v12 = objc_msgSend_string(v8, v10, v11);
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  objc_msgSend_appendString_(*(*(*(a1 + 32) + 8) + 40), v7, a2);

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

uint64_t sub_22512609C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = qword_280D580A8;
  if (!qword_280D580A8)
  {
    objc_msgSend__rebuildVolumes(*(a1 + 48), a2, a3);
    v4 = qword_280D580A8;
  }

  v5 = objc_msgSend_objectForKey_(v4, a2, *(a1 + 32));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_225126214(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = qword_280D580B0;
  if (!qword_280D580B0)
  {
    objc_msgSend__rebuildVolumes(*(a1 + 48), a2, a3);
    v4 = qword_280D580B0;
  }

  v5 = objc_msgSend_objectForKey_(v4, a2, *(a1 + 32));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

__CFString *CKDMMCSRegisterOptionDescription(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
    v6 = v4;
    if ((v3 & 2) != 0)
    {
      objc_msgSend_addObject_(v4, v5, @"chunk");
      if ((v3 & 4) == 0)
      {
LABEL_4:
        if ((v3 & 8) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    else if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

    objc_msgSend_addObject_(v6, v5, @"fetch");
    if ((v3 & 8) == 0)
    {
LABEL_5:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

LABEL_16:
    objc_msgSend_addObject_(v6, v5, @"fetch-chunks");
    if ((v3 & 0x10) == 0)
    {
LABEL_6:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

LABEL_17:
    objc_msgSend_addObject_(v6, v5, @"preauth");
    if ((v3 & 0x20) == 0)
    {
LABEL_7:
      if ((v3 & 0x40) == 0)
      {
LABEL_9:
        v7 = objc_msgSend_componentsJoinedByString_(v6, v5, @", ");

        goto LABEL_11;
      }

LABEL_8:
      objc_msgSend_addObject_(v6, v5, @"chunk-padding");
      goto LABEL_9;
    }

LABEL_18:
    objc_msgSend_addObject_(v6, v5, @"inline-put-complete");
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = @"none";
LABEL_11:

  return v7;
}

void sub_225126574()
{
  MMCSSignatureGeneratorCreate();
  MEMORY[0x22AA64030]();
  v0 = MMCSSignatureGeneratorFinish();
  v1 = v0;
  if (v0)
  {
    v2 = MEMORY[0x277CBEA90];
    v3 = MEMORY[0x22AA64000](v0);
    v5 = objc_msgSend_dataWithBytes_length_(v2, v4, v1, v3);
  }

  else
  {
    v5 = 0;
  }

  free(v1);
  v6 = qword_280D580B8;
  qword_280D580B8 = v5;
}

uint64_t sub_225126F00(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D580C8 = objc_msgSend_weakToWeakObjectsMapTable(MEMORY[0x277CCAB00], a2, a3);

  return MEMORY[0x2821F96F8]();
}

void sub_225127524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_225127554(uint64_t a1)
{
  v106 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_sharedWrappersByPath(CKDMMCS, v3, v4);
  v8 = objc_msgSend_mmcsWorkingDirectory(*(a1 + 32), v6, v7);
  v10 = objc_msgSend_objectForKey_(v5, v9, v8);
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v80 = *(*(*(a1 + 56) + 8) + 40);
      v81 = objc_msgSend_mmcsWorkingDirectory(*(a1 + 32), v16, v17);
      v84 = objc_msgSend_CKSanitizedPath(v81, v82, v83);
      v87 = objc_msgSend_checkoutCount(*(*(*(a1 + 56) + 8) + 40), v85, v86);
      *buf = 138412802;
      v101 = v80;
      v102 = 2114;
      v103 = v84;
      v104 = 2048;
      v105 = v87;
      _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Found a cached MMCS wrapper %@ at path %{public}@ count %lld", buf, 0x20u);
    }

    v18 = *(*(*(a1 + 56) + 8) + 40);
    v21 = objc_msgSend_checkoutCount(v18, v19, v20);
    objc_msgSend_setCheckoutCount_(v18, v22, v21 + 1);
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v23 = objc_msgSend_containerCloudKitDirectory(*(a1 + 32), v13, v14);
    v26 = objc_msgSend_path(v23, v24, v25);
    hasCachedCKDMMCSEngineContextForPath = objc_msgSend_hasCachedCKDMMCSEngineContextForPath_(CKDMMCSEngineContext, v27, v26);

    if (hasCachedCKDMMCSEngineContextForPath)
    {
      v31 = 0;
    }

    else
    {
      buf[0] = 0;
      v33 = *(a1 + 32);
      v32 = *(a1 + 40);
      v34 = *(a1 + 48);
      v35 = *(*(a1 + 72) + 8);
      obj = *(v35 + 40);
      v31 = objc_msgSend_assetCacheWithApplicationBundleID_directoryContext_database_didInit_error_(CKDAssetCache, v29, v32, v33, v34, buf, &obj);
      objc_storeStrong((v35 + 40), obj);
      if (!v31)
      {
        goto LABEL_28;
      }

      if (buf[0] == 1 && objc_msgSend_isNewEmptyCache(v31, v29, v30))
      {
        v36 = *(a1 + 80);
        v37 = objc_msgSend_mmcsWorkingDirectory(*(a1 + 32), v29, v30);
        v40 = objc_msgSend_path(v37, v38, v39);
        objc_msgSend_purgeMMCSDirectoryWithPath_(v36, v41, v40);
      }
    }

    v98 = 0;
    v42 = *(a1 + 40);
    v43 = objc_msgSend_mmcsWorkingDirectory(*(a1 + 32), v29, v30);
    v46 = objc_msgSend_path(v43, v44, v45);
    v47 = *(*(a1 + 72) + 8);
    v97 = *(v47 + 40);
    v49 = objc_msgSend_setupMMCSEngineWithApplicationBundleID_path_wasCached_error_(CKDMMCSEngineContext, v48, v42, v46, &v98, &v97);
    objc_storeStrong((v47 + 40), v97);

    if (v49)
    {
      if ((v98 & 1) == 0 && !v31)
      {
        __assert_rtn("+[CKDMMCS MMCSWrapperForApplicationBundleID:directoryContext:database:error:]_block_invoke", "CKDMMCS.m", 467, "(wasCached || assetCache) && MMCS engine context was cached or we created an asset cache");
      }

      if (v31)
      {
        v50 = [CKDMMCS alloc];
        v52 = objc_msgSend_initWithMMCSEngineContext_directoryContext_(v50, v51, v49, *(a1 + 32));
        v53 = *(*(a1 + 56) + 8);
        v54 = *(v53 + 40);
        *(v53 + 40) = v52;

        v55 = *(*(*(a1 + 56) + 8) + 40);
        v58 = objc_msgSend_checkoutCount(v55, v56, v57);
        objc_msgSend_setCheckoutCount_(v55, v59, v58 + 1);
        objc_msgSend_setMMCS_(v49, v60, *(*(*(a1 + 56) + 8) + 40));
        objc_msgSend_setAssetCache_(*(*(*(a1 + 56) + 8) + 40), v61, v31);
        objc_msgSend_setMMCS_(v31, v62, *(*(*(a1 + 56) + 8) + 40));
        objc_msgSend_setupPersistentStateAtStartup(v31, v63, v64);
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v65 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v88 = objc_msgSend_path(*(*(*(a1 + 56) + 8) + 40), v66, v67);
          v91 = objc_msgSend_CKSanitizedPath(v88, v89, v90);
          v92 = *(*(*(a1 + 56) + 8) + 40);
          v95 = objc_msgSend_checkoutCount(v92, v93, v94);
          *buf = 138543874;
          v101 = v91;
          v102 = 2112;
          v103 = v92;
          v104 = 2048;
          v105 = v95;
          _os_log_debug_impl(&dword_22506F000, v65, OS_LOG_TYPE_DEBUG, "setting sharedWrappers map key %{public}@ value %@ count %lld", buf, 0x20u);
        }

        v70 = objc_msgSend_sharedWrappersByPath(CKDMMCS, v68, v69);
        v71 = *(*(*(a1 + 56) + 8) + 40);
        v74 = objc_msgSend_path(v71, v72, v73);
        objc_msgSend_setObject_forKey_(v70, v75, v71, v74);

        *(*(*(a1 + 64) + 8) + 24) = 1;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v76 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v96 = *(*(*(a1 + 72) + 8) + 40);
        *buf = 138412290;
        v101 = v96;
        _os_log_error_impl(&dword_22506F000, v76, OS_LOG_TYPE_ERROR, "Couldn't create a context, %@", buf, 0xCu);
      }

      objc_msgSend_drop(v31, v77, v78);
    }
  }

LABEL_28:
  objc_autoreleasePoolPop(v2);
  v79 = *MEMORY[0x277D85DE8];
}

void sub_225127B38(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(a1);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "Exception %{public}@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x225127918);
  }

  _Unwind_Resume(a1);
}

id sub_225128670(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *MEMORY[0x277D25598];
  v7 = a2;
  if (objc_msgSend_isEqualToString_(v7, v8, v6))
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22512878C;
    v17[3] = &unk_2785462E0;
    v17[4] = *(a1 + 32);
    v10 = objc_msgSend_CKMap_(v5, v9, v17);
    v11 = objc_alloc(MEMORY[0x277CBC7A0]);
    v13 = objc_msgSend_initWithObject1_object2_(v11, v12, v7, v10);
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CBC7A0]);
    v13 = objc_msgSend_initWithObject1_object2_(v14, v15, v7, v5);
  }

  return v13;
}

id sub_22512878C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);
  v7 = *MEMORY[0x277D25660];
  v9 = objc_msgSend_objectForKeyedSubscript_(v3, v8, *MEMORY[0x277D25660]);
  v12 = objc_msgSend_mutableCopy(v9, v10, v11);

  v13 = *MEMORY[0x277D254F0];
  v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, *MEMORY[0x277D254F0]);

  if (v15)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = *(a1 + 32);
    v19 = objc_msgSend_objectForKeyedSubscript_(v12, v16, v13);
    v21 = objc_msgSend__referenceIdentifierFromAssetKey_(v18, v20, v19);
    v23 = objc_msgSend_stringWithFormat_(v17, v22, @"<key hash: %@>", v21);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v24, v23, v13);
  }

  if (v12)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v6, v16, v12, v7);
  }

  v25 = *MEMORY[0x277D25678];
  v26 = objc_msgSend_objectForKeyedSubscript_(v3, v16, *MEMORY[0x277D25678]);
  v29 = objc_msgSend_mutableCopy(v26, v27, v28);

  v31 = objc_msgSend_objectForKeyedSubscript_(v29, v30, v13);

  if (v31)
  {
    v33 = MEMORY[0x277CCACA8];
    v34 = *(a1 + 32);
    v35 = objc_msgSend_objectForKeyedSubscript_(v29, v32, v13);
    v37 = objc_msgSend__referenceIdentifierFromAssetKey_(v34, v36, v35);
    v39 = objc_msgSend_stringWithFormat_(v33, v38, @"<key hash: %@>", v37);
    objc_msgSend_setObject_forKeyedSubscript_(v29, v40, v39, v13);
  }

  if (v29)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v6, v32, v29, v25);
  }

  v41 = *MEMORY[0x277D25418];
  v42 = objc_msgSend_objectForKeyedSubscript_(v3, v32, *MEMORY[0x277D25418]);

  if (v42)
  {
    v44 = MEMORY[0x277CCACA8];
    v45 = objc_msgSend_objectForKeyedSubscript_(v3, v43, v41);
    v48 = objc_msgSend_length(v45, v46, v47);
    v50 = objc_msgSend_stringWithFormat_(v44, v49, @"<%lu bytes>", v48);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v51, v50, v41);
  }

  return v6;
}

void sub_225128A9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_assetCache(*(a1 + 32), a2, a3);
  objc_msgSend_expireAssetHandlesIfNecessary(v5, v3, v4);
}

void sub_225128DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225128E00(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = sub_225128F04(v3, v4, v5);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_225128FB8;
  v12[3] = &unk_278546358;
  v19 = *(a1 + 72);
  v13 = *(a1 + 32);
  v20 = *(a1 + 80);
  v7 = *(a1 + 40);
  v18 = *(a1 + 64);
  v14 = v7;
  v15 = v3;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v16 = v8;
  v17 = v9;
  v10 = v3;
  objc_msgSend_MMCSRunSerialized_(v6, v11, v12);
}

id sub_225128F04(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_MMCS(a1, a2, a3);
  v6 = objc_msgSend_MMCSEngineContext(v3, v4, v5);

  if (!v6)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "CKDMMCSEngineContext *mmcsEngineContext(CKDMMCSItemGroupContext *__strong)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v13, v12, @"CKDMMCS.m", 804, @"Expected non nil CKDMMCSEngineContext");
  }

  return v6;
}

void sub_225128FB8(uint64_t a1, const char *a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 80);
  v5 = objc_msgSend_items(*(a1 + 32), a2, a3);
  v8 = objc_msgSend_count(v5, v6, v7);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = (v4 >> 4) & 1;
  v10 = (v4 >> 6) & 1;
  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v29 = "Registering";
    v30 = *(a1 + 40);
    if (*(a1 + 88))
    {
      v29 = "Fetching";
    }

    *buf = 136315906;
    v35 = v29;
    v36 = 2048;
    v37 = v8;
    v38 = 2114;
    v39 = v30;
    v40 = 2112;
    v41 = v5;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "%s %lu MMCS items, operationID:%{public}@: %@", buf, 0x2Au);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2251292C0;
  v31[3] = &unk_278546330;
  v32 = v9;
  v33 = v10;
  v13 = *(a1 + 80);
  v31[4] = *(a1 + 72);
  v31[5] = v13;
  v14 = objc_msgSend_CKCompactMap_(v5, v12, v31);
  if (objc_msgSend_count(v14, v15, v16))
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setObject_forKeyedSubscript_(v18, v19, v14, *MEMORY[0x277D25598]);
    if (*(a1 + 88) == 1)
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    else
    {
      v21 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v20, (*(a1 + 80) >> 4) & 1);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v22, v21, *MEMORY[0x277D255F0]);
    }

    v23 = *(a1 + 56);
    if (v23)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v18, v20, v23, *MEMORY[0x277D25560]);
    }

    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v18, v20, MEMORY[0x277CBEC38], *MEMORY[0x277D255E0]);
    }

    v26 = objc_msgSend_cloneContext(*(a1 + 32), v20, v23);
    if (v26)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v18, v24, v26, *MEMORY[0x277D255E8]);
    }

    objc_msgSend_getMMCSEngine(*(a1 + 64), v24, v25);
    v27 = *(a1 + 48);
    MMCSRegisterItems();
  }

  else
  {
    objc_msgSend_didCompleteRequestWithError_(*(a1 + 48), v17, 0);
  }

  v28 = *MEMORY[0x277D85DE8];
}

id sub_2251292C0(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!objc_msgSend_isAlreadyRegistered(v3, v4, v5) || (*(a1 + 48) & 1) != 0 || (*(a1 + 49) & 1) != 0)
  {
    v8 = objc_opt_new();
    v9 = MEMORY[0x277CCABB0];
    v12 = objc_msgSend_itemID(v3, v10, v11);
    v14 = objc_msgSend_numberWithUnsignedLongLong_(v9, v13, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v15, v14, *MEMORY[0x277D254B0]);

    if ((*(a1 + 40) & 0x42) != 0)
    {
      objc_msgSend_setObject_forKey_(v8, v16, MEMORY[0x277CBEC38], *MEMORY[0x277D25500]);
    }

    v18 = objc_msgSend_boundaryKey(v3, v16, v17);

    if (v18)
    {
      v21 = objc_msgSend_boundaryKey(v3, v19, v20);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v22, v21, *MEMORY[0x277D25418]);
    }

    if ((*(a1 + 40) & 0x10) != 0)
    {
      v23 = objc_msgSend_referenceSignature(v3, v19, v20);
      if (v23)
      {
        v24 = v23;
        v25 = objc_msgSend_assetKey(v3, v19, v20);

        if (v25)
        {
          v26 = objc_opt_new();
          v29 = objc_msgSend_referenceSignature(v3, v27, v28);
          objc_msgSend_setObject_forKeyedSubscript_(v26, v30, v29, *MEMORY[0x277D254F8]);

          v33 = objc_msgSend_assetKey(v3, v31, v32);
          objc_msgSend_setObject_forKeyedSubscript_(v26, v34, v33, *MEMORY[0x277D254F0]);

          objc_msgSend_setObject_forKeyedSubscript_(v8, v35, v26, *MEMORY[0x277D25678]);
        }
      }
    }

    v36 = objc_msgSend_asset(v3, v19, v20);
    isReference = objc_msgSend_isReference(v36, v37, v38);

    if (isReference)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  else
  {
    v40 = objc_msgSend_signature(v3, v6, v7);

    if (!v40)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v41 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v47 = v41;
        v50 = 134217984;
        v51 = objc_msgSend_itemID(v3, v48, v49);
        _os_log_error_impl(&dword_22506F000, v47, OS_LOG_TYPE_ERROR, "itemID:%llu is missing file signature", &v50, 0xCu);
      }

      v44 = objc_msgSend_signature(v3, v42, v43);
      if (!v44)
      {
        __assert_rtn("[CKDMMCS _contextToRegisterItemGroup:operation:options:completionHandler:]_block_invoke", "CKDMMCS.m", 987, "MMCSItem.signature");
      }
    }

    v8 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_2251295F0(void *a1, const char *a2, uint64_t a3)
{
  v5 = sub_225128F04(a1, a2, a3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22512F3A8;
  v7[3] = &unk_2785464E0;
  v7[4] = a1;
  v7[5] = a2;
  objc_msgSend_MMCSRunSerialized_(v5, v6, v7);
}

void sub_225129684(void *a1, const char *a2, uint64_t a3)
{
  v5 = sub_225128F04(a1, a2, a3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225130DB8;
  v7[3] = &unk_2785464E0;
  v7[4] = a1;
  v7[5] = a2;
  objc_msgSend_MMCSRunSerialized_(v5, v6, v7);
}

void sub_225129CAC(void *a1, void *a2)
{
  v211 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v177 = a1[4];
    v178 = a1[5];
    v179 = a1[6];
    *buf = 138412802;
    v206 = v177;
    v207 = 2114;
    v208 = v178;
    v209 = 2112;
    v210 = v179;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Getting MMCS item group %@ for operationID:%{public}@ with options %@", buf, 0x20u);
  }

  v202 = objc_msgSend_items(a1[4], v5, v6);
  v9 = objc_msgSend_count(v202, v7, v8);
  v200 = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
  v199 = malloc_type_calloc(v9, 8uLL, 0x10040436913F5uLL);
  v198 = malloc_type_calloc(v9, 8uLL, 0x10040436913F5uLL);
  v203 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v10, v9);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(a1[6], v11, v12);
  objc_msgSend_setShouldCloneFileInAssetCache_(v3, v14, shouldCloneFileInAssetCache);
  v17 = objc_msgSend_operation(v3, v15, v16);
  v20 = objc_msgSend_operationInfo(v17, v18, v19);

  v189 = v20;
  v25 = objc_msgSend_fetchingAssetsForRereference(v20, v21, v22);
  v188 = a1;
  v201 = v9;
  if (v9)
  {
    v187 = v3;
    v26 = 0;
    v27 = *MEMORY[0x277D254D8];
    v193 = *MEMORY[0x277D254F0];
    v194 = *MEMORY[0x277D254F8];
    v191 = *MEMORY[0x277D25428];
    v192 = *MEMORY[0x277D25660];
    v196 = *MEMORY[0x277D25438];
    v28 = -1;
    v195 = *MEMORY[0x277D25430];
    v190 = *MEMORY[0x277D25488];
    do
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(v202, v23, v26);
      v32 = objc_msgSend_signature(v29, v30, v31);
      if (!objc_msgSend_itemID(v29, v33, v34))
      {
        v103 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v35, v36);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v103, v104, v188[9], v188[7], @"CKDMMCS.m", 1102, @"Zero item ID");
      }

      v37 = objc_msgSend_signature(v29, v35, v36);

      if (!v37)
      {
        v105 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v38, v39);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v105, v106, v188[9], v188[7], @"CKDMMCS.m", 1103, @"Null item signature");
      }

      v200[v26] = objc_msgSend_itemID(v29, v38, v39);
      v199[v26] = objc_msgSend_bytes(v32, v40, v41);
      v44 = objc_msgSend_authToken(v29, v42, v43);

      if (!v44)
      {
        v107 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v45, v46);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v107, v108, v188[9], v188[7], @"CKDMMCS.m", 1108, @"No auth-token for item: %@", v29);
      }

      v47 = objc_msgSend_authToken(v29, v45, v46);
      v198[v26] = objc_msgSend_UTF8String(v47, v48, v49);
      if (objc_msgSend_downloadTokenExpiration(v29, v50, v51) < v28)
      {
        v28 = objc_msgSend_downloadTokenExpiration(v29, v52, v53);
      }

      v54 = objc_opt_new();
      v55 = MEMORY[0x277CCABB0];
      v58 = objc_msgSend_asset(v29, v56, v57);
      v61 = objc_msgSend_paddedFileSize(v58, v59, v60);
      v63 = objc_msgSend_numberWithUnsignedLongLong_(v55, v62, v61);
      objc_msgSend_setObject_forKeyedSubscript_(v54, v64, v63, v27);

      v67 = objc_msgSend_referenceSignature(v29, v65, v66);
      if (v67)
      {
        v70 = v67;
        v71 = objc_msgSend_assetKey(v29, v68, v69);

        if (v71)
        {
          v72 = objc_opt_new();
          v75 = objc_msgSend_referenceSignature(v29, v73, v74);
          objc_msgSend_setObject_forKeyedSubscript_(v72, v76, v75, v194);

          v79 = objc_msgSend_assetKey(v29, v77, v78);
          objc_msgSend_setObject_forKeyedSubscript_(v72, v80, v79, v193);

          objc_msgSend_setObject_forKeyedSubscript_(v54, v81, v72, v192);
        }
      }

      v82 = objc_msgSend_asset(v29, v68, v69);
      v85 = objc_msgSend_assetTransferOptions(v82, v83, v84);

      if (v85)
      {
        v89 = objc_msgSend_sparseAware(v85, v86, v87);
        if (v89)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v54, v88, v89, v191);
        }
      }

      v90 = objc_msgSend_constructedAssetDownloadURL(v29, v86, v87);

      if (v90)
      {
        v93 = MEMORY[0x277CCABB0];
        v94 = objc_msgSend_constructedAssetEstimatedSize(v29, v91, v92);
        v96 = objc_msgSend_numberWithUnsignedLongLong_(v93, v95, v94);
        objc_msgSend_setObject_forKeyedSubscript_(v54, v97, v96, v196);

        v100 = objc_msgSend_constructedAssetDownloadURL(v29, v98, v99);
        objc_msgSend_setObject_forKeyedSubscript_(v54, v101, v100, v195);
      }

      if (v25)
      {
        v102 = objc_msgSend_package(v29, v91, v92);

        if (!v102)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v54, v91, MEMORY[0x277CBEC38], v190);
        }
      }

      objc_msgSend_addObject_(v203, v91, v54);

      ++v26;
    }

    while (v201 != v26);
    v109 = v28 + -978307200.0;
    v3 = v187;
    a1 = v188;
  }

  else
  {
    v109 = 1.84467441e19;
  }

  v110 = objc_msgSend_MMCSOptions(a1[6], v23, v24);
  v113 = objc_msgSend_downloadPreauthorization(a1[4], v111, v112);
  v116 = objc_msgSend_contentResponseHeaders(v113, v114, v115);
  v118 = objc_msgSend_CKObjectForKeyCaseInsensitive_(v116, v117, @"x-apple-mmcs-proto-version");

  v121 = objc_msgSend_downloadPreauthorization(a1[4], v119, v120);
  v124 = objc_msgSend_contentResponseBody(v121, v122, v123);

  if (v118)
  {
    if (v124)
    {
      v127 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v125, v126);
      v130 = objc_msgSend_usePreauth(v127, v128, v129);

      if (v130)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v110, v125, v118, *MEMORY[0x277D255F8]);
        objc_msgSend_setObject_forKeyedSubscript_(v110, v131, v124, *MEMORY[0x277D255B8]);
      }
    }
  }

  objc_msgSend_setObject_forKeyedSubscript_(v110, v125, v203, *MEMORY[0x277D25598]);
  objc_msgSend_setObject_forKeyedSubscript_(v110, v132, a1[8], *MEMORY[0x277D25560]);
  v135 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v133, v134, v109);
  objc_msgSend_setObject_forKeyedSubscript_(v110, v136, v135, *MEMORY[0x277D25538]);

  v139 = objc_msgSend_operationInfo(v3, v137, v138);
  if (objc_msgSend_destination(v139, v140, v141))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v110, v142, MEMORY[0x277CBEC38], *MEMORY[0x277D255D0]);
  }

  v197 = v139;
  if (objc_msgSend_destination(v139, v142, v143) == 1)
  {
    v146 = MEMORY[0x277CBEC28];
    objc_msgSend_setObject_forKeyedSubscript_(v110, v144, MEMORY[0x277CBEC28], *MEMORY[0x277D25620]);
    objc_msgSend_setObject_forKeyedSubscript_(v110, v147, v146, *MEMORY[0x277D25628]);
  }

  v148 = v3;
  if (v25)
  {
    v149 = objc_msgSend_cloneContextReturnBlock(v189, v144, v145);

    if (v149)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v110, v150, MEMORY[0x277CBEC38], *MEMORY[0x277D255E8]);
    }
  }

  if (os_log_type_enabled(*MEMORY[0x277CBC848], OS_LOG_TYPE_INFO))
  {
    objc_msgSend__logMMCSOptions_(a1[7], v151, v110);
  }

  cf = 0;
  v153 = objc_msgSend_contentBaseURL(a1[4], v151, v152);
  objc_msgSend_owner(a1[4], v154, v155);
  v157 = v156 = a1;
  v159 = objc_msgSend_URLByAppendingPathComponent_(v153, v158, v157);

  objc_msgSend_getMMCSEngine(v156[7], v160, v161);
  v164 = objc_msgSend_requestor(v156[4], v162, v163);
  v186 = v198;
  v165 = v148;
  LODWORD(v153) = MMCSGetItems();

  free(v200);
  free(v199);
  free(v198);
  v166 = v124;
  v167 = v165;
  if (!v153)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v168 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v180 = v188[5];
      v181 = MEMORY[0x277CBC560];
      v182 = cf;
      v183 = v168;
      v185 = objc_msgSend_undeprecatedDescriptionForError_(v181, v184, v182, v198, &cf);
      *buf = 134218498;
      v206 = v201;
      v207 = 2114;
      v208 = v180;
      v209 = 2112;
      v210 = v185;
      _os_log_error_impl(&dword_22506F000, v183, OS_LOG_TYPE_ERROR, "Failed getting %lu MMCS items for operationID:%{public}@: %@", buf, 0x20u);
    }

    v171 = cf;
    v172 = objc_msgSend_mmcsOperationType(v167, v169, v170, v186);
    v174 = objc_msgSend__errorWithMMCSError_description_operationType_(CKDMMCS, v173, v171, @"Fetching asset batch failed", v172);
    objc_msgSend_didCompleteRequestWithError_(v167, v175, v174);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  v176 = *MEMORY[0x277D85DE8];
}

void sub_22512ADD8(void *a1, void *a2)
{
  v168 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v133 = a1[4];
    v134 = a1[5];
    v135 = a1[6];
    *buf = 138412802;
    v163 = v133;
    v164 = 2114;
    v165 = v134;
    v166 = 2112;
    v167 = v135;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Putting MMCS item group %@ for operationID:%{public}@ with options %@", buf, 0x20u);
  }

  v159 = objc_msgSend_items(a1[4], v5, v6);
  v9 = objc_msgSend_count(v159, v7, v8);
  v158 = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
  v157 = malloc_type_calloc(v9, 8uLL, 0x10040436913F5uLL);
  v156 = malloc_type_calloc(v9, 8uLL, 0x10040436913F5uLL);
  v155 = malloc_type_calloc(v9, 4uLL, 0x100004052888210uLL);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(a1[6], v10, v11);
  objc_msgSend_setShouldCloneFileInAssetCache_(v3, v13, shouldCloneFileInAssetCache);
  v160 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v14, v9);
  v145 = v3;
  v146 = a1;
  if (v9)
  {
    v17 = 0;
    v149 = *MEMORY[0x277D254F8];
    v148 = *MEMORY[0x277D254F0];
    v147 = *MEMORY[0x277D25678];
    v153 = *MEMORY[0x277D25488];
    v154 = *MEMORY[0x277D25418];
    v152 = *MEMORY[0x277D254D8];
    v18 = -1;
    v151 = *MEMORY[0x277D25668];
    v150 = *MEMORY[0x277D25618];
    do
    {
      v19 = objc_msgSend_objectAtIndexedSubscript_(v159, v15, v17);
      if (!objc_msgSend_itemID(v19, v20, v21))
      {
        v92 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v22, v23);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v92, v93, v146[9], v146[7], @"CKDMMCS.m", 1257, @"Zero item ID");
      }

      v24 = objc_msgSend_signature(v19, v22, v23);

      if (!v24)
      {
        v94 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v25, v26);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v94, v95, v146[9], v146[7], @"CKDMMCS.m", 1258, @"Null signature");
      }

      v27 = objc_msgSend_authToken(v19, v25, v26);

      if (!v27)
      {
        v96 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v28, v29);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v96, v97, v146[9], v146[7], @"CKDMMCS.m", 1259, @"Null auth-token");
      }

      v158[v17] = objc_msgSend_itemID(v19, v28, v29);
      v32 = objc_msgSend_signature(v19, v30, v31);
      v157[v17] = objc_msgSend_bytes(v32, v33, v34);
      v37 = objc_msgSend_authToken(v19, v35, v36);
      v156[v17] = objc_msgSend_UTF8String(v37, v38, v39);
      v155[v17] = 1;
      if (objc_msgSend_uploadTokenExpiration(v19, v40, v41) < v18)
      {
        v18 = objc_msgSend_uploadTokenExpiration(v19, v42, v43);
      }

      v44 = objc_opt_new();
      v47 = objc_msgSend_referenceSignature(v19, v45, v46);
      if (v47)
      {
        v50 = v47;
        v51 = objc_msgSend_assetKey(v19, v48, v49);

        if (v51)
        {
          v52 = objc_opt_new();
          v55 = objc_msgSend_referenceSignature(v19, v53, v54);
          objc_msgSend_setObject_forKeyedSubscript_(v52, v56, v55, v149);

          v59 = objc_msgSend_assetKey(v19, v57, v58);
          objc_msgSend_setObject_forKeyedSubscript_(v52, v60, v59, v148);

          objc_msgSend_setObject_forKeyedSubscript_(v44, v61, v52, v147);
        }
      }

      v62 = objc_msgSend_asset(v19, v48, v49);
      isReference = objc_msgSend_isReference(v62, v63, v64);

      if (isReference)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v44, v66, MEMORY[0x277CBEC38], v153);
      }

      v68 = objc_msgSend_boundaryKey(v19, v66, v67);

      if (v68)
      {
        v71 = objc_msgSend_boundaryKey(v19, v69, v70);
        objc_msgSend_setObject_forKeyedSubscript_(v44, v72, v71, v154);
      }

      v73 = objc_msgSend_assetZoneKey(v19, v69, v70);
      v76 = objc_msgSend_useMMCSEncryptionV2(v73, v74, v75);
      v79 = objc_msgSend_BOOLValue(v76, v77, v78);

      if (v79)
      {
        v82 = MEMORY[0x277CCABB0];
        v83 = objc_msgSend_paddedFileSize(v19, v80, v81);
        v85 = objc_msgSend_numberWithUnsignedLongLong_(v82, v84, v83);
        objc_msgSend_setObject_forKeyedSubscript_(v44, v86, v85, v152);

        v89 = objc_msgSend_verificationKey(v19, v87, v88);
        objc_msgSend_setObject_forKeyedSubscript_(v44, v90, v89, v151);

        objc_msgSend_setObject_forKeyedSubscript_(v44, v91, MEMORY[0x277CBEC38], v150);
      }

      objc_msgSend_addObject_(v160, v80, v44);

      ++v17;
    }

    while (v9 != v17);
    v98 = v18 + -978307200.0;
    a1 = v146;
  }

  else
  {
    v98 = 1.84467441e19;
  }

  v99 = objc_msgSend_MMCSOptions(a1[6], v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v99, v100, v160, *MEMORY[0x277D25598]);
  objc_msgSend_setObject_forKeyedSubscript_(v99, v101, a1[8], *MEMORY[0x277D25560]);
  v104 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v102, v103, v98);
  objc_msgSend_setObject_forKeyedSubscript_(v99, v105, v104, *MEMORY[0x277D25538]);

  v109 = objc_msgSend_cloneContext(a1[4], v106, v107);
  if (v109)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v99, v108, v109, *MEMORY[0x277D255E8]);
  }

  if (os_log_type_enabled(*MEMORY[0x277CBC848], OS_LOG_TYPE_INFO))
  {
    objc_msgSend__logMMCSOptions_(a1[7], v110, v99);
  }

  v112 = objc_msgSend_contentBaseURL(a1[4], v110, v111);
  v115 = objc_msgSend_owner(a1[4], v113, v114);
  v117 = objc_msgSend_URLByAppendingPathComponent_(v112, v116, v115);

  cf = 0;
  objc_msgSend_getMMCSEngine(a1[7], v118, v119);
  v122 = objc_msgSend_requestor(a1[4], v120, v121);
  v143 = v155;
  p_cf = &cf;
  v142 = v156;
  LODWORD(v112) = MMCSPutItems();

  free(v158);
  free(v157);
  free(v156);
  free(v155);
  if (!v112)
  {
    v123 = v99;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v124 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v136 = v146[5];
      v137 = MEMORY[0x277CBC560];
      v138 = cf;
      v139 = v124;
      v141 = objc_msgSend_undeprecatedDescriptionForError_(v137, v140, v138, v156, v155, &cf);
      *buf = 134218498;
      v163 = v9;
      v164 = 2114;
      v165 = v136;
      v166 = 2112;
      v167 = v141;
      _os_log_error_impl(&dword_22506F000, v139, OS_LOG_TYPE_ERROR, "Failed putting %lu MMCS items for operationID:%{public}@: %@", buf, 0x20u);
    }

    v127 = cf;
    v128 = objc_msgSend_mmcsOperationType(v145, v125, v126, v142, v143, p_cf);
    v130 = objc_msgSend__errorWithMMCSError_description_operationType_(CKDMMCS, v129, v127, @"Saving asset batch failed", v128);
    objc_msgSend_didCompleteRequestWithError_(v145, v131, v130);
    if (cf)
    {
      CFRelease(cf);
    }

    v99 = v123;
  }

  v132 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22512BD10(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_getMMCSEngine(*(a1 + 32), a2, a3);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  return MMCSGetChunks();
}

uint64_t sub_22512BD74(void *a1, uint64_t a2, uint64_t *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  v10 = objc_msgSend_signatureToMutableData(v7, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, a2);

  if (!v12)
  {
    v13 = objc_alloc(MEMORY[0x277CBEB28]);
    v12 = objc_msgSend_initWithLength_(v13, v14, 0);
    v17 = objc_msgSend_signatureToMutableData(v7, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v18, v12, a2);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v19 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v22 = v19;
    v25 = objc_msgSend_signatureToMutableData(v7, v23, v24);
    v26 = 138413058;
    v27 = v7;
    v28 = 2112;
    v29 = a2;
    v30 = 2112;
    v31 = v25;
    v32 = 2112;
    v33 = v12;
    _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "_C3MMCSGetChunksChunkCallback(%@, %@, ...), signatureToMutableData=%@, mutableData=%@", &v26, 0x2Au);

    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    *a3 = MMCSItemReaderWriterCreateWithMutableData();
  }

LABEL_8:

  objc_autoreleasePoolPop(v6);
  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_22512BF44()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_22512C09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22512C0B4(void *a1, const char *a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = *(v4 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22512C14C;
  v9[3] = &unk_2785463F8;
  v9[4] = v4;
  v6 = objc_msgSend_registeredMMCSItemForRereferencedAsset_copyBlock_(v5, a2, v3, v9);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id sub_22512C14C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_getMMCSEngine(*(a1 + 32), a2, a3);
  if (MMCSDuplicateRegisteredfile())
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v3, *MEMORY[0x277CBC120], 1017, @"failed to duplicate MMCS item for re-reference");
  }

  return v4;
}

void sub_22512C3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22512C41C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_getMMCSEngine(*(a1 + 32), a2, a3);
  v4 = MMCSEngineCopyStatusReport();
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

void sub_22512C824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22512C850(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_getMMCSEngine(*(a1 + 32), a2, a3);
  v4 = *(a1 + 56);
  v5 = *(*(a1 + 48) + 8);
  result = MMCSRegisteredItemCount();
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

void sub_22512D0C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22512D130(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[8];
  v5 = a1[9];
  v6 = *(a1[6] + 8);
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  RegisteredItemsGreaterThan_itemIds_itemCount_error = objc_msgSend__getRegisteredItemsGreaterThan_itemIds_itemCount_error_(v3, a2, v4, v5, v6 + 24, &obj);
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[5] + 8) + 24) = RegisteredItemsGreaterThan_itemIds_itemCount_error;
}

void sub_22512DAC4(uint64_t a1, void *a2)
{
  v130[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_sectionItems(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);
  v120 = objc_msgSend_signature(*(a1 + 32), v10, v11);
  objc_msgSend_bytes(v120, v12, v13);
  v119 = objc_msgSend_authToken(*(a1 + 32), v14, v15);
  v118 = objc_msgSend_UTF8String(v119, v16, v17);
  v20 = objc_msgSend_putPackageSectionIdentifier(*(a1 + 32), v18, v19);

  if (!v20)
  {
    v112 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v21, v22);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v112, v113, *(a1 + 72), *(a1 + 40), @"CKDMMCS.m", 1544, @"nil section ID");
  }

  objc_msgSend_setMMCSPackageSectionItem_(v3, v21, *(a1 + 32));
  v24 = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
  if (v9)
  {
    v25 = 0;
    v26 = -1;
    do
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(v6, v23, v25);
      if (!objc_msgSend_itemID(v27, v28, v29))
      {
        v121 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v30, v31);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v121, v36, *(a1 + 72), *(a1 + 40), @"CKDMMCS.m", 1550, @"Zero item ID");
      }

      v24[v25] = objc_msgSend_itemID(v27, v30, v31);
      if (objc_msgSend_uploadTokenExpiration(v27, v32, v33) < v26)
      {
        v26 = objc_msgSend_uploadTokenExpiration(v27, v34, v35);
      }

      ++v25;
    }

    while (v9 != v25);
    v37 = v26 + -978307200.0;
  }

  else
  {
    v37 = 1.84467441e19;
  }

  v38 = objc_opt_new();
  v41 = objc_msgSend_referenceSignature(*(a1 + 32), v39, v40);
  if (v41)
  {
    v44 = v41;
    v45 = objc_msgSend_assetKey(*(a1 + 32), v42, v43);

    if (v45)
    {
      v46 = objc_opt_new();
      v49 = objc_msgSend_referenceSignature(*(a1 + 32), v47, v48);
      objc_msgSend_setObject_forKeyedSubscript_(v46, v50, v49, *MEMORY[0x277D254F8]);

      v53 = objc_msgSend_assetKey(*(a1 + 32), v51, v52);
      objc_msgSend_setObject_forKeyedSubscript_(v46, v54, v53, *MEMORY[0x277D254F0]);

      v57 = objc_msgSend_boundaryKey(*(a1 + 32), v55, v56);
      objc_msgSend_setObject_forKeyedSubscript_(v38, v58, v57, *MEMORY[0x277D25418]);

      v59 = MEMORY[0x277CCABB0];
      v62 = objc_msgSend_paddedFileSize(*(a1 + 32), v60, v61);
      v64 = objc_msgSend_numberWithUnsignedLongLong_(v59, v63, v62);
      objc_msgSend_setObject_forKeyedSubscript_(v38, v65, v64, *MEMORY[0x277D254D8]);

      objc_msgSend_setObject_forKeyedSubscript_(v38, v66, v46, *MEMORY[0x277D25678]);
      v69 = objc_msgSend_verificationKey(*(a1 + 32), v67, v68);
      objc_msgSend_setObject_forKeyedSubscript_(v38, v70, v69, *MEMORY[0x277D25668]);
    }
  }

  v122 = v3;
  v71 = objc_msgSend_MMCSOptions(*(a1 + 48), v42, v43);
  v117 = v38;
  v130[0] = v38;
  v73 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v72, v130, 1);
  objc_msgSend_setObject_forKeyedSubscript_(v71, v74, v73, *MEMORY[0x277D25598]);

  objc_msgSend_setObject_forKeyedSubscript_(v71, v75, *(a1 + 56), *MEMORY[0x277D25560]);
  v78 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v76, v77, v37);
  objc_msgSend_setObject_forKeyedSubscript_(v71, v79, v78, *MEMORY[0x277D25538]);

  if (os_log_type_enabled(*MEMORY[0x277CBC848], OS_LOG_TYPE_INFO))
  {
    objc_msgSend__logMMCSOptions_(*(a1 + 40), v80, v71);
  }

  v82 = objc_msgSend_contentBaseURL(*(a1 + 32), v80, v81);
  v85 = objc_msgSend_owner(*(a1 + 32), v83, v84);
  v87 = objc_msgSend_URLByAppendingPathComponent_(v82, v86, v85);

  cf = 0;
  objc_msgSend_getMMCSEngine(*(a1 + 40), v88, v89);
  v92 = objc_msgSend_requestor(*(a1 + 32), v90, v91);
  v95 = objc_msgSend_putPackageSectionIdentifier(*(a1 + 32), v93, v94);
  LODWORD(v116) = 1;
  v114 = v24;
  v115 = v118;
  v96 = v122;
  LODWORD(v82) = MMCSPutSection();

  free(v24);
  if (!v82)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v97 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v106 = *(a1 + 64);
      v107 = MEMORY[0x277CBC560];
      v108 = cf;
      v109 = v97;
      v111 = objc_msgSend_undeprecatedDescriptionForError_(v107, v110, v108, v114, v118, 1, &cf);
      *buf = 134218498;
      v125 = v9;
      v126 = 2114;
      v127 = v106;
      v128 = 2112;
      v129 = v111;
      _os_log_error_impl(&dword_22506F000, v109, OS_LOG_TYPE_ERROR, "Failed putting section with %lu MMCS items for operationID:%{public}@: %@", buf, 0x20u);

      v96 = v122;
    }

    v100 = cf;
    v101 = objc_msgSend_mmcsOperationType(v96, v98, v99, v114, v115, v116);
    v103 = objc_msgSend__errorWithMMCSError_description_operationType_(CKDMMCS, v102, v100, @"Saving asset batch failed", v101);
    objc_msgSend_didCompleteRequestWithError_(v96, v104, v103);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  v105 = *MEMORY[0x277D85DE8];
}

void sub_22512E730(uint64_t a1, void *a2)
{
  v124 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v114 = objc_msgSend_sectionItems(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_count(v114, v6, v7);
  v116 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v9, v8);
  v12 = objc_msgSend_signature(*(a1 + 32), v10, v11);
  objc_msgSend_bytes(v12, v13, v14);
  v17 = objc_msgSend_authToken(*(a1 + 32), v15, v16);
  objc_msgSend_UTF8String(v17, v18, v19);
  v20 = objc_opt_new();
  v113 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
  v112 = malloc_type_calloc(v8, 8uLL, 0x10040436913F5uLL);
  v111 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
  v115 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
  v23 = objc_msgSend_operation(v3, v21, v22);
  v26 = objc_msgSend_operationInfo(v23, v24, v25);

  v102 = v26;
  v29 = objc_msgSend_fetchingAssetsForRereference(v26, v27, v28);
  v103 = v17;
  v104 = v3;
  if (v8)
  {
    v32 = v29;
    v33 = 0;
    v107 = *MEMORY[0x277D254F8];
    v106 = *MEMORY[0x277D254F0];
    v105 = *MEMORY[0x277D25660];
    v109 = *MEMORY[0x277D25488];
    v34 = -1;
    do
    {
      v35 = v8;
      v36 = v12;
      v37 = objc_msgSend_objectAtIndexedSubscript_(v114, v30, v33);
      v12 = objc_msgSend_signature(v37, v38, v39);

      if (!objc_msgSend_itemID(v37, v40, v41))
      {
        v69 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v42, v43);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v69, v70, *(a1 + 72), *(a1 + 40), @"CKDMMCS.m", 1664, @"Zero item ID");
      }

      v113[v33] = objc_msgSend_itemID(v37, v42, v43);
      v112[v33] = objc_msgSend_bytes(v12, v44, v45);
      v111[v33] = objc_msgSend_offset(v37, v46, v47);
      v115[v33] = objc_msgSend_fileSize(v37, v48, v49);
      if (objc_msgSend_downloadTokenExpiration(v37, v50, v51) < v34)
      {
        v34 = objc_msgSend_downloadTokenExpiration(v37, v52, v53);
      }

      v54 = objc_msgSend_referenceSignature(*(a1 + 32), v52, v53);
      if (v54)
      {
        v57 = v54;
        v58 = objc_msgSend_assetKey(*(a1 + 32), v55, v56);

        if (v58)
        {
          v59 = objc_opt_new();
          v62 = objc_msgSend_referenceSignature(*(a1 + 32), v60, v61);
          objc_msgSend_setObject_forKeyedSubscript_(v59, v63, v62, v107);

          v66 = objc_msgSend_assetKey(*(a1 + 32), v64, v65);
          objc_msgSend_setObject_forKeyedSubscript_(v59, v67, v66, v106);

          objc_msgSend_setObject_forKeyedSubscript_(v20, v68, v59, v105);
        }
      }

      if (v32)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v20, v55, MEMORY[0x277CBEC38], v109);
      }

      objc_msgSend_addObject_(v116, v55, v20);

      ++v33;
      v8 = v35;
    }

    while (v35 != v33);
    v71 = v34 + -978307200.0;
  }

  else
  {
    v71 = 1.84467441e19;
  }

  v72 = objc_msgSend_MMCSOptions(*(a1 + 48), v30, v31);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v73, v116, *MEMORY[0x277D25598]);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v74, *(a1 + 56), *MEMORY[0x277D25560]);
  v77 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v75, v76, v71);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v78, v77, *MEMORY[0x277D25538]);

  if (os_log_type_enabled(*MEMORY[0x277CBC848], OS_LOG_TYPE_INFO))
  {
    objc_msgSend__logMMCSOptions_(*(a1 + 40), v79, v72);
  }

  v81 = objc_msgSend_contentBaseURL(*(a1 + 32), v79, v80);
  v84 = objc_msgSend_owner(*(a1 + 32), v82, v83);
  v110 = objc_msgSend_URLByAppendingPathComponent_(v81, v85, v84);

  v117 = 0;
  objc_msgSend_getMMCSEngine(*(a1 + 40), v86, v87);
  v90 = objc_msgSend_requestor(*(a1 + 32), v88, v89);
  v91 = v72;
  v108 = MMCSGetItemsWithSection();

  free(v113);
  free(v112);
  free(v111);
  free(v115);
  if (!v108)
  {
    v94 = v117;
    v95 = objc_msgSend_mmcsOperationType(v104, v92, v93, v113, v112, v111, v115, &v117);
    v97 = objc_msgSend__errorWithMMCSError_description_operationType_(CKDMMCS, v96, v94, @"Fetching section failed", v95);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v98 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v101 = *(a1 + 64);
      *buf = 134218498;
      v119 = v8;
      v120 = 2114;
      v121 = v101;
      v122 = 2112;
      v123 = v97;
      _os_log_error_impl(&dword_22506F000, v98, OS_LOG_TYPE_ERROR, "Failed getting a section with %lu MMCS items for operationID:%{public}@: %@", buf, 0x20u);
    }

    objc_msgSend_didCompleteRequestWithError_(v104, v99, v97);
    if (v117)
    {
      CFRelease(v117);
    }
  }

  v100 = *MEMORY[0x277D85DE8];
}

void sub_22512F3B8(void *a1, void *a2, uint64_t a3)
{
  v410 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v8 = v5;
  v9 = "register";
  if (a3)
  {
    v9 = "fetch";
  }

  v371 = v9;
  v10 = "Registered";
  if (a3)
  {
    v10 = "Fetched";
  }

  v346 = v10;
  v353 = objc_msgSend_operation(v5, v6, v7);
  v11 = a2;
  v368 = *MEMORY[0x277D25640];
  v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, *MEMORY[0x277D25640]);
  v15 = objc_msgSend_objectForKeyedSubscript_(v11, v14, *MEMORY[0x277D25598]);
  v19 = objc_msgSend_objectForKeyedSubscript_(v11, v16, *MEMORY[0x277D255F0]);
  if (!v13)
  {
    v20 = objc_msgSend_itemGroup(v8, v17, v18);
    objc_msgSend_setAuthPutRequest_(v20, v21, v19);
  }

  v348 = v19;
  v22 = objc_msgSend_count(v15, v17, v18);
  v25 = objc_msgSend_itemGroup(v8, v23, v24);
  v28 = objc_msgSend_items(v25, v26, v27);

  v31 = objc_msgSend_operationInfo(v8, v29, v30);
  v34 = objc_msgSend_options(v31, v32, v33);

  v35 = (v34 >> 4) & 1;
  v38 = objc_msgSend_operationInfo(v8, v36, v37);
  LOBYTE(v34) = objc_msgSend_options(v38, v39, v40);

  v389[0] = MEMORY[0x277D85DD0];
  v389[1] = 3221225472;
  v389[2] = sub_225130D6C;
  v389[3] = &unk_278546500;
  v390 = v35;
  v391 = a3;
  v392 = (v34 & 0x40) != 0;
  v351 = v28;
  v347 = objc_msgSend_CKFilter_(v28, v41, v389);
  v44 = objc_msgSend_count(v347, v42, v43);
  v46 = MEMORY[0x277CBC880];
  v350 = v22;
  v349 = v15;
  if (!v13)
  {
    v60 = v44;
    if (v44 != v22)
    {
      v296 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v45, *MEMORY[0x277CBC120], 3001, @"Failed to register all assets");
      if (*v46 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v297 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v341 = v297;
        v344 = objc_msgSend_operationID(v353, v342, v343);
        *buf = 136447234;
        v394 = v371;
        v395 = 2048;
        v396 = v22;
        v397 = 2048;
        v398 = v60;
        v399 = 2114;
        v400 = v344;
        v401 = 2112;
        v402 = v296;
        _os_log_error_impl(&dword_22506F000, v341, OS_LOG_TYPE_ERROR, "Failed to %{public}s MMCS items (%lu/%lu) not already registered for operationID:%{public}@: %@", buf, 0x34u);
      }

      v49 = v296;
      v381 = 0u;
      v382 = 0u;
      v383 = 0u;
      v384 = 0u;
      v50 = v28;
      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v298, &v381, v408, 16);
      if (!v54)
      {
        v295 = v49;
        goto LABEL_151;
      }

      v55 = v11;
      v301 = *v382;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v382 != v301)
          {
            objc_enumerationMutation(v50);
          }

          v303 = *(*(&v381 + 1) + 8 * i);
          v304 = objc_msgSend_error(v303, v299, v300);

          if (!v304)
          {
            objc_msgSend_setError_(v303, v299, v49);
          }
        }

        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v299, &v381, v408, 16);
      }

      while (v54);
      goto LABEL_150;
    }

    v379 = 0u;
    v380 = 0u;
    v377 = 0u;
    v378 = 0u;
    v50 = v15;
    v369 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v61, &v377, v407, 16);
    if (!v369)
    {
      v49 = 0;
      v54 = 0;
      v295 = 0;
      goto LABEL_151;
    }

    v345 = v11;
    v49 = 0;
    v363 = 0;
    v366 = *MEMORY[0x277D254B0];
    v367 = *v378;
    v352 = *MEMORY[0x277CBBF50];
    v360 = *MEMORY[0x277D25658];
    v359 = *MEMORY[0x277D25480];
    v358 = *MEMORY[0x277D254D8];
    v357 = *MEMORY[0x277D25420];
    v355 = a3;
    v354 = v8;
LABEL_25:
    v63 = 0;
    while (1)
    {
      if (*v378 != v367)
      {
        objc_enumerationMutation(v50);
      }

      v64 = *(*(&v377 + 1) + 8 * v63);
      v67 = objc_msgSend_objectForKeyedSubscript_(v64, v62, v366);
      if (!v67)
      {
        v283 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v65, v66);
        v285 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v284, "void CKDMMCSFetchOrRegisterCompleteCallback(void *, CFDictionaryRef, BOOL)");
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v283, v286, v285, @"CKDMMCS.m", 670, @"Invalid response from MMCS");
      }

      v68 = objc_msgSend_unsignedLongLongValue(v67, v65, v66);
      v72 = objc_msgSend_findTrackedMMCSItemByItemID_(v8, v69, v68);
      if (!v72)
      {
        v287 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v70, v71);
        v289 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v288, "void CKDMMCSFetchOrRegisterCompleteCallback(void *, CFDictionaryRef, BOOL)");
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v287, v290, v289, @"CKDMMCS.m", 672, @"Item not found");
      }

      v73 = objc_msgSend_itemID(v72, v70, v71);
      if (v73 != objc_msgSend_unsignedLongLongValue(v67, v74, v75))
      {
        v291 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v76, v77);
        v293 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v292, "void CKDMMCSFetchOrRegisterCompleteCallback(void *, CFDictionaryRef, BOOL)");
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v291, v294, v293, @"CKDMMCS.m", 673, @"itemID mismatch");
      }

      v370 = objc_msgSend_itemID(v72, v76, v77);
      v80 = objc_msgSend_fileURL(v72, v78, v79);
      v372 = objc_msgSend_path(v80, v81, v82);

      v84 = objc_msgSend_objectForKeyedSubscript_(v64, v83, v368);

      if (v84)
      {
        v87 = MEMORY[0x277CBC880];
LABEL_36:
        v88 = *MEMORY[0x277CBC878];
        v89 = *v87;
        if (a3)
        {
          if (*v87 != -1)
          {
            dispatch_once(v87, v88);
          }

          v90 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v268 = v90;
            v271 = objc_msgSend_operationID(v353, v269, v270);
            *buf = 134218498;
            v394 = v370;
            v395 = 2114;
            v396 = v271;
            v397 = 2112;
            v398 = v84;
            _os_log_error_impl(&dword_22506F000, v268, OS_LOG_TYPE_ERROR, "Failed to fetch registered MMCS item %llu for operationID:%{public}@ %@", buf, 0x20u);
          }

          v93 = objc_msgSend_mmcsOperationType(v8, v91, v92);
          v49 = objc_msgSend__errorWithMMCSError_path_description_operationType_(CKDMMCS, v94, v84, 0, @"Failed to check registered asset", v93);
        }

        else
        {
          if (*v87 != -1)
          {
            dispatch_once(v87, v88);
          }

          v125 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v272 = v125;
            v275 = objc_msgSend_operationID(v353, v273, v274);
            v278 = objc_msgSend_CKSanitizedPath(v372, v276, v277);
            *buf = 134218754;
            v394 = v370;
            v395 = 2114;
            v396 = v275;
            v397 = 2114;
            v398 = v278;
            v399 = 2112;
            v400 = v84;
            _os_log_error_impl(&dword_22506F000, v272, OS_LOG_TYPE_ERROR, "Failed to register MMCS item %llu for operationID:%{public}@ at %{public}@: %@", buf, 0x2Au);
          }

          v128 = objc_msgSend_CKSanitizedPath(v372, v126, v127);
          v131 = objc_msgSend_mmcsOperationType(v8, v129, v130);
          v49 = objc_msgSend__errorWithMMCSError_path_description_operationType_(CKDMMCS, v132, v84, v128, @"Failed to register asset", v131);
        }

        objc_msgSend_setError_(v72, v95, v49);
        goto LABEL_133;
      }

      if ((objc_msgSend_isAlreadyRegistered(v72, v85, v86) & 1) == 0 && (objc_msgSend_isReaderReadFrom(v72, v96, v97) & 1) == 0)
      {
        if (objc_msgSend_canBeRegistered(v72, v96, v98))
        {
          v100 = MEMORY[0x277CBC560];
          v101 = objc_msgSend_fileURL(v72, v96, v99);
          v104 = objc_msgSend_CKSanitizedPath(v101, v102, v103);
          v84 = objc_msgSend_errorWithDomain_code_path_format_(v100, v105, v352, 17, v104, @"Stale chunk state found during registration when none expected");

          a3 = v355;
          v87 = MEMORY[0x277CBC880];
          if (v84)
          {
            goto LABEL_36;
          }
        }
      }

      v106 = v67;
      v107 = v50;
      v108 = a3;
      v109 = objc_msgSend_objectForKeyedSubscript_(v64, v96, v360);
      v111 = objc_msgSend_objectForKeyedSubscript_(v64, v110, v359);
      v113 = objc_msgSend_objectForKeyedSubscript_(v64, v112, v358);
      v115 = objc_msgSend_objectForKeyedSubscript_(v64, v114, v357);
      v364 = v109;
      objc_msgSend_setSignature_(v72, v116, v109);
      v362 = v111;
      v119 = objc_msgSend_unsignedLongLongValue(v111, v117, v118);
      objc_msgSend_setFileSize_(v72, v120, v119);
      v361 = v113;
      v123 = v113 ? objc_msgSend_unsignedLongLongValue(v113, v121, v122) : objc_msgSend_fileSize(v72, v121, v122);
      objc_msgSend_setPaddedFileSize_(v72, v124, v123);
      v365 = v115;
      v135 = objc_msgSend_unsignedIntValue(v115, v133, v134);
      objc_msgSend_setChunkCount_(v72, v136, v135);
      v139 = objc_msgSend_signature(v72, v137, v138);
      v142 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v140, v141);
      isEqualToData = objc_msgSend_isEqualToData_(v139, v143, v142);

      v149 = objc_msgSend_mmcsOperationType(v8, v145, v146);
      a3 = v108;
      v150 = v149 == 6 && objc_msgSend_chunkCount(v72, v147, v148) == 0;
      v50 = v107;
      v67 = v106;
      if (((isEqualToData | v150) & 1) == 0 && ((a3 & 1) != 0 || objc_msgSend_fileSize(v72, v147, v148)))
      {
        v159 = v365;
        v156 = MEMORY[0x277CBC880];
        if (v149 == 6 && !objc_msgSend_chunkCount(v72, v147, v148))
        {
          __assert_rtn("CKDMMCSFetchOrRegisterCompleteCallback", "CKDMMCS.m", 720, "MMCSItem.chunkCount != 0 && Expected MMCSItem.chunkCount != 0");
        }
      }

      else
      {
        v151 = MEMORY[0x277CBC6A8];
        v152 = objc_msgSend_signature(v72, v147, v148);
        LODWORD(v151) = objc_msgSend_isValidV2Signature_(v151, v153, v152);

        v156 = MEMORY[0x277CBC880];
        if (((v151 | isEqualToData) & 1) == 0)
        {
          __assert_rtn("CKDMMCSFetchOrRegisterCompleteCallback", "CKDMMCS.m", 712, "isZeroFileSignature && Expected zeroSizeFileSignature");
        }

        if (objc_msgSend_mmcsOperationType(v8, v154, v155) == 6 && objc_msgSend_chunkCount(v72, v157, v158))
        {
          __assert_rtn("CKDMMCSFetchOrRegisterCompleteCallback", "CKDMMCS.m", 715, "MMCSItem.chunkCount == 0 && Expected MMCSItem.chunkCount == 0");
        }

        if (objc_msgSend_fileSize(v72, v157, v158))
        {
          __assert_rtn("CKDMMCSFetchOrRegisterCompleteCallback", "CKDMMCS.m", 717, "MMCSItem.fileSize == 0 && MMCSItem.size == 0");
        }

        if (*v156 != -1)
        {
          dispatch_once(v156, *MEMORY[0x277CBC878]);
        }

        v159 = v365;
        v160 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v394 = v370;
          _os_log_debug_impl(&dword_22506F000, v160, OS_LOG_TYPE_DEBUG, "Zero-length asset with itemID %llu", buf, 0xCu);
        }
      }

      if ((objc_msgSend_isAlreadyRegistered(v72, v147, v148) & 1) == 0 && (a3 & 1) == 0)
      {
        v163 = objc_msgSend_asset(v72, v161, v162);
        v166 = objc_msgSend_signature(v72, v164, v165);
        objc_msgSend_setSignature_(v163, v167, v166);

        v170 = objc_msgSend_fileSize(v72, v168, v169);
        objc_msgSend_setSize_(v163, v171, v170);
        v174 = objc_msgSend_paddedFileSize(v72, v172, v173);
        objc_msgSend_setPaddedFileSize_(v163, v175, v174);
        if (*v156 != -1)
        {
          dispatch_once(v156, *MEMORY[0x277CBC878]);
        }

        v176 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v279 = v176;
          v282 = objc_msgSend_asset(v72, v280, v281);
          *buf = 138412546;
          v394 = v282;
          v395 = 2112;
          v396 = v72;
          _os_log_debug_impl(&dword_22506F000, v279, OS_LOG_TYPE_DEBUG, "Register complete: Pushed sig and size to asset:%@ for item %@", buf, 0x16u);
        }

        v356 = objc_autoreleasePoolPush();
        v376 = 0;
        v178 = objc_msgSend_getCKDMMCSItemReaderByPathForMMCSItem_error_(v8, v177, v72, &v376);
        v179 = v376;
        v181 = v179;
        if (v178)
        {
          v375 = v179;
          v182 = objc_msgSend_openWithError_(v178, v180, &v375);
          v183 = v375;

          if (v182)
          {
            v374 = v183;
            v185 = objc_msgSend_getFileMetadataWithError_(v178, v184, &v374);
            v186 = v374;

            if (v185)
            {
              v189 = objc_msgSend_deviceID(v185, v187, v188);
              objc_msgSend_setDeviceID_(v72, v190, v189);

              v193 = objc_msgSend_fileID(v185, v191, v192);
              objc_msgSend_setFileID_(v72, v194, v193);

              v197 = objc_msgSend_generationID(v185, v195, v196);
              objc_msgSend_setGenerationID_(v72, v198, v197);

              v201 = objc_msgSend_modTimeInSeconds(v185, v199, v200);
              objc_msgSend_setModTimeInSeconds_(v72, v202, v201);
            }

            else
            {
              if (*v156 != -1)
              {
                dispatch_once(v156, *MEMORY[0x277CBC878]);
              }

              v206 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v394 = v72;
                v395 = 2112;
                v396 = v186;
                _os_log_error_impl(&dword_22506F000, v206, OS_LOG_TYPE_ERROR, "Unable to get info for %@: %@", buf, 0x16u);
              }

              v201 = v186;
              v186 = 0;
            }

            v373 = v186;
            v208 = objc_msgSend_closeWithError_(v178, v207, &v373);
            v183 = v373;

            if (v208)
            {
              v156 = MEMORY[0x277CBC880];
            }

            else
            {
              v156 = MEMORY[0x277CBC880];
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v209 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v394 = v72;
                v395 = 2112;
                v396 = v183;
                _os_log_error_impl(&dword_22506F000, v209, OS_LOG_TYPE_ERROR, "Unable to close for %@: %@", buf, 0x16u);
              }

              v183 = 0;
            }

            v204 = v356;

            v8 = v354;
          }

          else
          {
            if (*v156 != -1)
            {
              dispatch_once(v156, *MEMORY[0x277CBC878]);
            }

            v8 = v354;
            v205 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v394 = v72;
              v395 = 2112;
              v396 = v183;
              _os_log_error_impl(&dword_22506F000, v205, OS_LOG_TYPE_ERROR, "Unable to open for %@: %@", buf, 0x16u);
            }

            v204 = v356;
          }
        }

        else
        {
          if (*v156 != -1)
          {
            dispatch_once(v156, *MEMORY[0x277CBC878]);
          }

          v203 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v394 = v72;
            v395 = 2112;
            v396 = v181;
            _os_log_error_impl(&dword_22506F000, v203, OS_LOG_TYPE_ERROR, "Unable to open reader for %@: %@", buf, 0x16u);
          }

          v178 = v181;
          v204 = v356;
        }

        objc_autoreleasePoolPop(v204);
        a3 = v355;
        v159 = v365;
      }

      if ((a3 & 1) == 0)
      {
        break;
      }

      if (!v159)
      {
        v239 = objc_msgSend_fileSize(v72, v161, v162);
        v240 = *MEMORY[0x277CBC878];
        v241 = *v156;
        if (!v239)
        {
          if (*v156 != -1)
          {
            dispatch_once(v156, v240);
          }

          v264 = *MEMORY[0x277CBC830];
          if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_132;
          }

          v211 = v264;
          v267 = objc_msgSend_signature(v72, v265, v266);
          *buf = 136446722;
          v394 = "Fetched";
          v395 = 2048;
          v396 = v370;
          v397 = 2112;
          v398 = v267;
          _os_log_debug_impl(&dword_22506F000, v211, OS_LOG_TYPE_DEBUG, "%{public}s MMCS item %llu signature:%@", buf, 0x20u);

          goto LABEL_131;
        }

        if (*v156 != -1)
        {
          dispatch_once(v156, v240);
        }

        v242 = *MEMORY[0x277CBC830];
        if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_132;
        }

        v211 = v242;
        v245 = objc_msgSend_fileSize(v72, v243, v244);
        v248 = objc_msgSend_paddedFileSize(v72, v246, v247);
        v235 = objc_msgSend_signature(v72, v249, v250);
        *buf = 136447234;
        v394 = "Fetched";
        v395 = 2048;
        v396 = v370;
        v397 = 2048;
        v398 = v245;
        v399 = 2048;
        v400 = v248;
        v401 = 2112;
        v402 = v235;
        v236 = v211;
        v237 = "%{public}s MMCS item %llu with size:%llu, paddedSize:%llu, signature:%@";
        v238 = 52;
LABEL_122:
        _os_log_debug_impl(&dword_22506F000, v236, OS_LOG_TYPE_DEBUG, v237, buf, v238);

        v159 = v365;
        goto LABEL_131;
      }

      if (*v156 != -1)
      {
        dispatch_once(v156, *MEMORY[0x277CBC878]);
      }

      v210 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_132;
      }

      v211 = v210;
      v214 = objc_msgSend_fileSize(v72, v212, v213);
      v217 = objc_msgSend_paddedFileSize(v72, v215, v216);
      v220 = objc_msgSend_chunkCount(v72, v218, v219);
      *buf = 136447490;
      v394 = "Fetched";
      v395 = 2048;
      v396 = v370;
      v397 = 2048;
      v398 = v214;
      v399 = 2048;
      v400 = v217;
      v401 = 2048;
      v402 = v220;
      v403 = 2112;
      v404 = v364;
      _os_log_debug_impl(&dword_22506F000, v211, OS_LOG_TYPE_DEBUG, "%{public}s MMCS item %llu with size:%llu, paddedSize:%llu, chunkCount:%lu, signature:%@", buf, 0x3Eu);
LABEL_131:

LABEL_132:
      ++v363;

      v49 = 0;
LABEL_133:

      if (v369 == ++v63)
      {
        v369 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v62, &v377, v407, 16);
        if (!v369)
        {
          v295 = 0;
          v11 = v345;
          v47 = v350;
          v54 = v363;
          goto LABEL_152;
        }

        goto LABEL_25;
      }
    }

    v221 = *MEMORY[0x277CBC878];
    v222 = *v156;
    if (!v159)
    {
      if (*v156 != -1)
      {
        dispatch_once(v156, v221);
      }

      v251 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_132;
      }

      v211 = v251;
      v254 = objc_msgSend_fileSize(v72, v252, v253);
      v257 = objc_msgSend_paddedFileSize(v72, v255, v256);
      v260 = objc_msgSend_signature(v72, v258, v259);
      v263 = objc_msgSend_CKSanitizedPath(v372, v261, v262);
      *buf = 136316418;
      v394 = "Registered";
      v395 = 2048;
      v396 = v370;
      v397 = 2048;
      v398 = v254;
      v399 = 2048;
      v400 = v257;
      v401 = 2112;
      v402 = v260;
      v403 = 2112;
      v404 = v263;
      _os_log_debug_impl(&dword_22506F000, v211, OS_LOG_TYPE_DEBUG, "{public}%s MMCS item %llu with size:%llu, paddedSize:%llu, signature:%@, path:%@", buf, 0x3Eu);

      v159 = v365;
      a3 = v355;
      goto LABEL_131;
    }

    if (*v156 != -1)
    {
      dispatch_once(v156, v221);
    }

    v223 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_132;
    }

    v211 = v223;
    v226 = objc_msgSend_fileSize(v72, v224, v225);
    v229 = objc_msgSend_paddedFileSize(v72, v227, v228);
    v232 = objc_msgSend_chunkCount(v72, v230, v231);
    v235 = objc_msgSend_CKSanitizedPath(v372, v233, v234);
    *buf = 136447746;
    v394 = "Registered";
    v395 = 2048;
    v396 = v370;
    v397 = 2048;
    v398 = v226;
    v399 = 2048;
    v400 = v229;
    v401 = 2048;
    v402 = v232;
    a3 = v355;
    v403 = 2112;
    v404 = v364;
    v405 = 2112;
    v406 = v235;
    v236 = v211;
    v237 = "%{public}s MMCS item %llu with size:%llu, paddedSize:%llu, chunkCount:%lu, signature:%@, path:%@";
    v238 = 72;
    goto LABEL_122;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v47 = v22;
  v48 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v330 = v48;
    v333 = objc_msgSend_count(v28, v331, v332);
    v336 = objc_msgSend_operationID(v353, v334, v335);
    *buf = 136446978;
    v394 = v371;
    v395 = 2048;
    v396 = v333;
    v47 = v22;
    v397 = 2114;
    v398 = v336;
    v399 = 2112;
    v400 = v13;
    _os_log_error_impl(&dword_22506F000, v330, OS_LOG_TYPE_ERROR, "Failed to %{public}s %lu MMCS items for operationID:%{public}@: %@", buf, 0x2Au);
  }

  v49 = v13;
  v385 = 0u;
  v386 = 0u;
  v387 = 0u;
  v388 = 0u;
  v50 = v28;
  v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v385, v409, 16);
  if (!v54)
  {
    v295 = v49;
    goto LABEL_152;
  }

  v55 = v11;
  v56 = *v386;
  do
  {
    for (j = 0; j != v54; ++j)
    {
      if (*v386 != v56)
      {
        objc_enumerationMutation(v50);
      }

      v58 = *(*(&v385 + 1) + 8 * j);
      v59 = objc_msgSend_error(v58, v52, v53);

      if (!v59)
      {
        objc_msgSend_setError_(v58, v52, v49);
      }
    }

    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v52, &v385, v409, 16);
  }

  while (v54);
LABEL_150:
  v295 = v49;
  v11 = v55;
LABEL_151:
  v47 = v350;
LABEL_152:

  v305 = *MEMORY[0x277CBC878];
  v306 = *MEMORY[0x277CBC880];
  if (v54 == v47)
  {
    v307 = v349;
    v308 = v347;
    if (v306 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v305);
    }

    v309 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v312 = v309;
      v315 = objc_msgSend_operationID(v353, v313, v314);
      v316 = v47;
      v317 = v315;
      *buf = 136446722;
      v394 = v346;
      v395 = 2048;
      v396 = v316;
      v397 = 2114;
      v398 = v315;
      v318 = "%{public}s %lu MMCS items for operationID:%{public}@";
      v319 = v312;
      v320 = 32;
      goto LABEL_166;
    }
  }

  else
  {
    v321 = v54;
    v307 = v349;
    v308 = v347;
    if (v306 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v305);
    }

    v322 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v312 = v322;
      v339 = objc_msgSend_operationID(v353, v337, v338);
      v340 = v47;
      v317 = v339;
      *buf = 136446978;
      v394 = v346;
      v395 = 2048;
      v396 = v321;
      v397 = 2048;
      v398 = v340;
      v399 = 2114;
      v400 = v339;
      v318 = "%{public}s %lu/%lu MMCS items for operationID:%{public}@";
      v319 = v312;
      v320 = 42;
LABEL_166:
      _os_log_debug_impl(&dword_22506F000, v319, OS_LOG_TYPE_DEBUG, v318, buf, v320);

      if (a3)
      {
        goto LABEL_162;
      }

      goto LABEL_161;
    }
  }

  if ((a3 & 1) == 0)
  {
LABEL_161:
    v323 = objc_msgSend_MMCS(v8, v310, v311);
    v326 = objc_msgSend_assetCache(v323, v324, v325);
    v328 = objc_msgSend_updateAssetHandlesForRegisteredMMCSItems_error_(v326, v327, v308, 0);
  }

LABEL_162:
  objc_msgSend_didCompleteRequestWithError_(v8, v310, v295);

  v329 = *MEMORY[0x277D85DE8];
}

uint64_t sub_225130D6C(_BYTE *a1, void *a2, uint64_t a3)
{
  if (!objc_msgSend_isAlreadyRegistered(a2, a2, a3) || (a1[32] & 1) != 0 || (a1[33] & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = a1[34];
  }

  return v4 & 1;
}

void sub_225132410(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v9 = NSStringFromClass(v2);
  v5 = objc_msgSend_UTF8String(v9, v3, v4);
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(v5, v6);
  v8 = qword_280D580D8;
  qword_280D580D8 = v7;
}

uint64_t sub_225132498(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D580E8 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], a2, a3);

  return MEMORY[0x2821F96F8]();
}

void sub_225132D20(void *a1, uint64_t a2, double a3, uint64_t a4, int a5, uint64_t a6)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225134438;
  v6[3] = &unk_278546598;
  v6[4] = a1;
  v7 = a5;
  *&v6[5] = a3;
  v6[6] = a2;
  v6[7] = a6;
  sub_22513435C(a1, v6);
}

void sub_225132D98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22513445C;
  v6[3] = &unk_2785465B8;
  v6[4] = a1;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a2;
  v6[8] = a5;
  v6[9] = a6;
  sub_22513435C(a1, v6);
}

void sub_225132E0C(void *a1, uint64_t a2, double a3, uint64_t a4, int a5, uint64_t a6)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225134544;
  v6[3] = &unk_278546598;
  v6[4] = a1;
  v7 = a5;
  *&v6[5] = a3;
  v6[6] = a2;
  v6[7] = a6;
  sub_22513435C(a1, v6);
}

void sub_225132E84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225134568;
  v4[3] = &unk_2785465D8;
  v4[4] = a1;
  v4[5] = a3;
  v4[6] = a2;
  v4[7] = a4;
  sub_22513435C(a1, v4);
}

void sub_225132EF4(void *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2251345F4;
  v2[3] = &unk_2785464E0;
  v2[4] = a1;
  v2[5] = a2;
  sub_22513435C(a1, v2);
}

uint64_t sub_225132F60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2251346B8;
  v7[3] = &unk_278546600;
  v7[6] = a2;
  v7[7] = a3;
  v7[4] = &v8;
  v7[5] = a1;
  v7[8] = a4;
  v7[9] = a5;
  sub_22513435C(a2, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_22513302C(void *a1, double a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225134954;
  v7[3] = &unk_278546620;
  v7[4] = a1;
  v8 = a5;
  *&v7[5] = a2;
  v7[6] = a7;
  sub_22513435C(a1, v7);
}

void sub_2251330A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225134A34;
  v4[3] = &unk_278546640;
  v4[4] = a1;
  v4[5] = a3;
  v4[6] = a4;
  sub_22513435C(a1, v4);
}

BOOL sub_225133114(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v9 = objc_autoreleasePoolPush();
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_225073EB0;
  v44 = sub_2250734E4;
  v45 = 0;
  v10 = a2;
  v13 = objc_msgSend_currentProcess(CKDDaemonProcess, v11, v12);
  v16 = objc_msgSend_multipeer(v13, v14, v15);

  if (_os_feature_enabled_impl())
  {
    if (v16)
    {
      v35 = v9;
      v18 = dispatch_semaphore_create(0);
      v21 = objc_msgSend_operation(v10, v19, v20);
      v24 = objc_msgSend_container(v21, v22, v23);
      v27 = objc_msgSend_containerID(v24, v25, v26);
      v30 = objc_msgSend_containerIdentifier(v27, v28, v29);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_225134AC0;
      v36[3] = &unk_278546668;
      v38 = &v40;
      v39 = a4;
      v31 = v18;
      v37 = v31;
      objc_msgSend_discoverChunkSignature_forContainerIdentifier_chunkDataCallback_(v16, v32, a3, v30, v36);

      dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
      v9 = v35;
      goto LABEL_11;
    }

    v33 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 1000, @"expected non-nil object, expected if feature flag is toggled without restarting cloudd");
  }

  else
  {
    v33 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 1000, @"feature flag disabled");
  }

  v31 = v41[5];
  v41[5] = v33;
LABEL_11:

  if (a5)
  {
    *a5 = v41[5];
  }

  _Block_object_dispose(&v40, 8);
  objc_autoreleasePoolPop(v9);
  return a4 && *a4 != 0;
}

void sub_225133394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225133CF4(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v3 = a1[6];
  MMCSEngineCancelRequests();
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[4];
    v7 = a1[6];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Did cancel for MMCS engine wrapper %@ to cancel the requests for %@", &v8, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22513414C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22513416C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
  }

  *a4 = 1;
  return result;
}

void sub_22513435C(void *a1, void *a2)
{
  v15 = a2;
  v5 = objc_msgSend_MMCS(a1, v3, v4);
  v10 = objc_msgSend_MMCSEngineContext(v5, v6, v7);
  if (!v10)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "void runSerialized(void *, void (^__strong)(void))");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v11, v14, v13, @"CKDMMCSEngineContext.m", 134, @"Expected a non nil CKDMMCSEngineContext");
  }

  objc_msgSend_MMCSRunSerialized_(v10, v8, v15);
}

uint64_t sub_225134438(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 64) == 3)
  {
    v3 = *(a1 + 40);
  }

  v4 = *(a1 + 56);
  return MEMORY[0x2821F9670](v2, sel_updateProgressForItemID_state_progress_error_, *(a1 + 48));
}

void sub_22513445C(uint64_t a1)
{
  v13 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA90];
  v3 = *(a1 + 40);
  v4 = MEMORY[0x22AA64000](v3);
  v8 = objc_msgSend_dataWithBytes_length_(v2, v5, v3, v4);
  if (*(a1 + 48))
  {
    v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7);
    v10 = strlen(*(a1 + 48));
    v12 = objc_msgSend_stringWithFileSystemRepresentation_length_(v9, v11, *(a1 + 48), v10);
  }

  else
  {
    v12 = 0;
  }

  objc_msgSend_didGetItemID_signature_path_error_results_(v13, v6, *(a1 + 56), v8, v12, *(a1 + 64), *(a1 + 72));
}

uint64_t sub_225134544(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 64) == 4)
  {
    v3 = *(a1 + 40);
  }

  v4 = *(a1 + 56);
  return MEMORY[0x2821F9670](v2, sel_updateProgressForItemID_state_progress_results_, *(a1 + 48));
}

void sub_225134568(uint64_t a1)
{
  v2 = MEMORY[0x277CBEA90];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = MEMORY[0x22AA64000](v3);
  v8 = objc_msgSend_dataWithBytes_length_(v2, v6, v3, v5);
  objc_msgSend_didPutItemID_signature_results_(v4, v7, *(a1 + 48), v8, *(a1 + 56));
}

void sub_2251345F4(uint64_t a1)
{
  v11 = *(a1 + 32);
  v4 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v2, @"metricObject");
  if (v4)
  {
    objc_msgSend_didGetMetricsForRequest_(v11, v3, v4);
  }

  v5 = objc_msgSend_objectForKey_(*(a1 + 40), v3, *MEMORY[0x277D255E8]);
  v8 = objc_msgSend_itemGroup(v11, v6, v7);
  objc_msgSend_setCloneContext_(v8, v9, v5);

  objc_msgSend_didCompleteRequestWithError_(v11, v10, 0);
}

void sub_2251346B8(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  v4 = *(a1 + 48);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
  }

  v7 = *(a1 + 56);
  v8 = objc_msgSend_MMCS(v2, v5, v6);
  v19 = 0;
  MMCSItemReaderForItemID_MMCS_itemGroupContext_downloadChunkContext_error = objc_msgSend_getMMCSItemReaderForItemID_MMCS_itemGroupContext_downloadChunkContext_error_(CKDMMCSItemGroupContext, v9, v7, v8, v3, v4, &v19);
  v11 = v19;

  *(*(*(a1 + 32) + 8) + 24) = MMCSItemReaderForItemID_MMCS_itemGroupContext_downloadChunkContext_error != 0;
  v12 = *MEMORY[0x277CBC878];
  v13 = *MEMORY[0x277CBC880];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    if (v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 56);
      *buf = 134218242;
      v21 = v17;
      v22 = 2112;
      v23 = v11;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Created a readerWriter for itemID:%llu error: %@", buf, 0x16u);
    }

    **(a1 + 64) = MMCSItemReaderForItemID_MMCS_itemGroupContext_downloadChunkContext_error;
  }

  else
  {
    if (v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 56);
      *buf = 134218242;
      v21 = v18;
      v22 = 2112;
      v23 = v11;
      _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Failed to get the item readerWriter for itemID:%llu error: %@", buf, 0x16u);
    }
  }

  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0 && *(a1 + 72))
  {
    **(a1 + 72) = v11;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_225134954(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = -1.0;
  if (v4 == 4)
  {
    v5 = *(a1 + 40);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v10 = *MEMORY[0x277D25640];
    v11[0] = v6;
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v2, v11, &v10, 1);
    objc_msgSend_updateProgressForPackageSectionState_progress_results_(v3, v8, *(a1 + 56), v7, v5);
  }

  else
  {
    v7 = 0;
    objc_msgSend_updateProgressForPackageSectionState_progress_results_(v3, v2, v4, 0, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_225134A34(uint64_t a1)
{
  v2 = MEMORY[0x277CBEA90];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = MEMORY[0x22AA64000](v3);
  v8 = objc_msgSend_dataWithBytes_length_(v2, v6, v3, v5);
  objc_msgSend_didPutSectionWithSignature_results_(v4, v7, v8, *(a1 + 48));
}

void sub_225134AC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 48))
  {
    **(a1 + 48) = MMCSItemReaderWriterCreateWithData();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
  v7 = v4;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_225136FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225137004(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

void sub_225137C28(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = objc_msgSend__setupMMCSItemsWithError_(v3, a2, &v10);
  v7 = v10;
  v8 = *(a1 + 32);
  if (v4)
  {
    v9 = objc_msgSend_startBlock(v8, v5, v6);
    v9[2](v9, *(a1 + 32));
  }

  else
  {
    objc_msgSend_didCompleteRequestWithError_(v8, v5, v7);
  }
}

void sub_22513B060(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v5 = objc_msgSend_completionBlock(*(a1 + 32), v3, v4);
  objc_msgSend_setCompletionBlock_(*(a1 + 32), v6, 0);
  objc_sync_exit(v2);

  if (v5)
  {
    v9 = objc_msgSend_itemGroup(*(a1 + 32), v7, v8);
    (v5)[2](v5, v9);
  }

  v10 = *(a1 + 40) == 0;
  v11 = objc_msgSend_signpost(*(a1 + 32), v7, v8);

  if (v10)
  {
    if (v11)
    {
      v29 = objc_msgSend_signpost(*(a1 + 32), v12, v13);
      v17 = objc_msgSend_log(v29, v30, v31);

      v34 = objc_msgSend_signpost(*(a1 + 32), v32, v33);
      v37 = objc_msgSend_identifier(v34, v35, v36);

      if ((v37 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
      {
        goto LABEL_13;
      }

      LOWORD(v39) = 0;
      v25 = "";
      v26 = v17;
      v27 = v37;
      v28 = 2;
      goto LABEL_12;
    }
  }

  else if (v11)
  {
    v14 = objc_msgSend_signpost(*(a1 + 32), v12, v13);
    v17 = objc_msgSend_log(v14, v15, v16);

    v20 = objc_msgSend_signpost(*(a1 + 32), v18, v19);
    v23 = objc_msgSend_identifier(v20, v21, v22);

    if ((v23 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
    {
      goto LABEL_13;
    }

    v24 = *(a1 + 40);
    v39 = 138412290;
    v40 = v24;
    v25 = "Error: %@";
    v26 = v17;
    v27 = v23;
    v28 = 12;
LABEL_12:
    _os_signpost_emit_with_name_impl(&dword_22506F000, v26, OS_SIGNPOST_INTERVAL_END, v27, "CKDMMCSItemGroupContext", v25, &v39, v28);
LABEL_13:
  }

  v38 = *MEMORY[0x277D85DE8];
}

BOOL sub_22513DC9C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  v38 = 0;
  v9 = objc_msgSend_getFileMetadataWithError_(a2, v8, &v38);
  v10 = v38;
  v11 = v10;
  if (a3 && v9)
  {
    v12 = objc_alloc(MEMORY[0x277CBEB38]);
    v14 = objc_msgSend_initWithCapacity_(v12, v13, 4);
    v17 = objc_msgSend_fileSize(v9, v15, v16);

    if (v17)
    {
      v20 = objc_msgSend_fileSize(v9, v18, v19);
      objc_msgSend_setObject_forKeyedSubscript_(v14, v21, v20, *MEMORY[0x277D254C8]);
    }

    v22 = objc_msgSend_fileID(v9, v18, v19);

    if (v22)
    {
      v25 = objc_msgSend_fileID(v9, v23, v24);
      objc_msgSend_setObject_forKeyedSubscript_(v14, v26, v25, *MEMORY[0x277D254D0]);
    }

    v27 = objc_msgSend_generationID(v9, v23, v24);

    if (v27)
    {
      v30 = objc_msgSend_generationID(v9, v28, v29);
      objc_msgSend_setObject_forKeyedSubscript_(v14, v31, v30, *MEMORY[0x277D254B8]);
    }

    v32 = objc_msgSend_modTimeInSeconds(v9, v28, v29);

    if (v32)
    {
      v35 = objc_msgSend_modTimeInSeconds(v9, v33, v34);
      objc_msgSend_setObject_forKeyedSubscript_(v14, v36, v35, *MEMORY[0x277D254C0]);
    }

    *a3 = v14;
  }

  else if (a4 && !v9)
  {
    *a4 = v10;
  }

  objc_autoreleasePoolPop(v7);
  return v9 != 0;
}

uint64_t sub_22513DE6C(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v7 = objc_msgSend_MMCSItem(v4, v5, v6);
  v10 = objc_msgSend_MMCSRequest(v4, v8, v9);
  v13 = objc_msgSend_MMCS(v10, v11, v12);
  v18 = objc_msgSend_operation(v10, v14, v15);
  if (v13)
  {
    v37 = 0;
  }

  else
  {
    v37 = objc_msgSend_downloadChunkContext(v4, v16, v17);
    v13 = objc_msgSend_MMCS(v37, v19, v20);
  }

  v21 = objc_msgSend_assetCache(v13, v16, v17);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = v37;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v52 = v21;
    _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "CKDMMCSItemReaderOpen %@ %@ %@", buf, 0x20u);
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_13:
    __assert_rtn("CKDMMCSItemReaderOpen", "CKDMMCSItemGroupContext.m", 904, "assetCache && Expected non-nil asset cache");
  }

  if (!v21)
  {
    goto LABEL_13;
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v52 = sub_225073EC0;
  v53 = sub_2250734EC;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v25 = objc_msgSend_MMCSEngineContext(v13, v23, v24);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_22513ED0C;
  v38[3] = &unk_278546690;
  v26 = v7;
  v39 = v26;
  v45 = &v47;
  v27 = v4;
  v40 = v27;
  v46 = buf;
  v28 = v18;
  v41 = v28;
  v29 = v10;
  v42 = v29;
  v30 = v13;
  v43 = v30;
  v31 = v21;
  v44 = v31;
  objc_msgSend_MMCSRunSerialized_(v25, v32, v38);

  v33 = v48;
  v34 = *(v48 + 24);
  if (a3 && (v34 & 1) == 0)
  {
    *a3 = *(*&buf[8] + 40);
    v34 = *(v33 + 24);
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(buf, 8);

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

void sub_22513E1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22513E1F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = objc_autoreleasePoolPush();
  v19 = 0;
  v15 = objc_msgSend_readBytesAtOffset_bytes_length_bytesRead_error_(a2, v14, a3, a4, a5, a6, &v19);
  v16 = v19;
  v17 = v16;
  if (a7 && (v15 & 1) == 0)
  {
    *a7 = v16;
  }

  objc_autoreleasePoolPop(v13);

  return v15;
}

uint64_t sub_22513E29C(uint64_t a1, void *a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = objc_msgSend_closeWithError_(a2, v6, &v11);
  v8 = v11;
  v9 = v8;
  if (a3 && (v7 & 1) == 0)
  {
    *a3 = v8;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

void sub_22513E318(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "invalidate, reader:%p", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22513E3F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = objc_autoreleasePoolPush();
  v19 = 0;
  v15 = objc_msgSend_writeBytesAtOffset_bytes_length_bytesWritten_error_(a2, v14, a3, a4, a5, a6, &v19);
  v16 = v19;
  v17 = v16;
  if (a7 && (v15 & 1) == 0)
  {
    *a7 = v16;
  }

  objc_autoreleasePoolPop(v13);

  return v15;
}

uint64_t sub_22513E4A0(uint64_t a1, void *a2, const void *a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a2;
    v10 = objc_msgSend_MMCSRequest(v7, v8, v9);
    v13 = objc_msgSend_operation(v10, v11, v12);
    v16 = objc_msgSend_container(v13, v14, v15);

    v19 = objc_msgSend_serverConfig(v16, v17, v18);
    v22 = objc_msgSend_containerID(v16, v20, v21);
    if (CFEqual(a3, *MEMORY[0x277D254A8]))
    {
      v24 = objc_msgSend_chunkProfileConfigurationVersion_(v19, v23, v22);
    }

    else if (CFEqual(a3, *MEMORY[0x277D254A0]))
    {
      v24 = objc_msgSend_chunkProfileConfigurationFileExtensionToProfileMap_(v19, v25, v22);
    }

    else
    {
      if (!CFEqual(a3, *MEMORY[0x277D25498]))
      {
        v29 = objc_msgSend_MMCSItem(v7, v26, v27);
        v32 = objc_msgSend_assetChunkerOptions(v29, v30, v31);

        if (v32 && CFEqual(a3, *MEMORY[0x277D25490]))
        {
          v3 = objc_msgSend_objectForKeyedSubscript_(v32, v33, *MEMORY[0x277CBC8A8]);
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_11;
      }

      v24 = objc_msgSend_chunkProfileConfigurationDefaultProfilePolicy_(v19, v26, v22);
    }

    v3 = v24;
LABEL_11:

    objc_autoreleasePoolPop(v6);
  }

  return v3;
}

void sub_22513ED0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_itemID(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_trackingUUID(*(a1 + 32), v5, v6);
  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = objc_msgSend_initWithUUIDString_(v8, v9, v7);
  v11 = *(a1 + 40);
  v12 = *(*(a1 + 88) + 8);
  obj = *(v12 + 40);
  v14 = objc_msgSend_openWithError_(v11, v13, &obj);
  objc_storeStrong((v12 + 40), obj);
  *(*(*(a1 + 80) + 8) + 24) = v14;
  if (*(*(*(a1 + 80) + 8) + 24))
  {
    if ((objc_msgSend_shouldFetchAssetContentInMemory(*(a1 + 56), v15, v16) & 1) == 0)
    {
      objc_msgSend_updateLastAccessTimeForUUID_(*(a1 + 72), v17, v10);
    }
  }

  else
  {
    v18 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = MEMORY[0x277CBC830];
    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a1 + 40);
      v33 = v20;
      v36 = objc_msgSend_MMCSItem(v32, v34, v35);
      v39 = objc_msgSend_operationID(*(a1 + 48), v37, v38);
      v40 = *(*(*(a1 + 88) + 8) + 40);
      *buf = 138412802;
      v43 = v36;
      v44 = 2114;
      v45 = v39;
      v46 = 2112;
      v47 = v40;
      _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Failed to open %@ for operationID:%{public}@: %@", buf, 0x20u);
    }

    if ((objc_msgSend_shouldFetchAssetContentInMemory(*(a1 + 56), v21, v22) & 1) == 0 && (objc_msgSend_isTrackingItemID_(*(a1 + 64), v23, v4) & 1) == 0)
    {
      if (*v18 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v24 = *v19;
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v43 = v4;
        v44 = 2114;
        v45 = v10;
        _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "Deleting the asset handle with itemID:%llu, UUID:%{public}@", buf, 0x16u);
      }

      v26 = MEMORY[0x277CBEB70];
      v27 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v25, v4);
      v29 = objc_msgSend_orderedSetWithObject_(v26, v28, v27);

      objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(a1 + 72), v30, v29, 0);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_22513F868(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = objc_msgSend_itemGroupSetCompletionGroup(WeakRetained, v2, v3);
    dispatch_group_leave(v4);

    WeakRetained = v5;
  }
}

void sub_22513FBB8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_itemGroupSetCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_itemGroupSetCompletionBlock(*(a1 + 32), v5, v6);
    v10 = objc_msgSend_itemGroupSet(*(a1 + 32), v8, v9);
    (v7)[2](v7, v10);

    v11 = *(a1 + 32);

    MEMORY[0x2821F9670](v11, sel_setItemGroupSetCompletionBlock_, 0);
  }
}

void sub_225144378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225144390(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = objc_msgSend_firstMMCSItemError(a2, a2, a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_225144494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251444AC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_allMMCSSectionItems(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_count(v6, v7, v8) != 0;

  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

void sub_2251445FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225144614(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_isEmpty(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) &= result;
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

void sub_225144714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22514472C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_isEmpty(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) &= result;
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

BOOL sub_2251449BC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, int a7, int a8, char a9, void *a10)
{
  v117 = *MEMORY[0x277D85DE8];
  v107 = a3;
  v17 = a4;
  v18 = a6;
  v21 = objc_msgSend_downloadBaseURL(a1, v19, v20);
  v24 = objc_msgSend_downloadURLExpiration(a1, v22, v23);
  v27 = objc_msgSend_constructedAssetDownloadURLTemplate(a1, v25, v26);
  v30 = v27;
  if (v24)
  {
    v31 = v21 == 0;
  }

  else
  {
    v31 = 1;
  }

  if (v31 && !v27)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v32 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v116 = a1;
      _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Missing required info on %@", buf, 0xCu);
    }

    v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 1000, @"Missing required info on %@", a1);
    goto LABEL_69;
  }

  if ((a7 & 1) == 0 && !a8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v35 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v116 = a1;
      _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Not using encryption keys for the asset %@", buf, 0xCu);
      if (v17)
      {
        goto LABEL_18;
      }
    }

    else if (v17)
    {
LABEL_18:
      v109[0] = @"f";
      v109[1] = @"uk";
      v110[0] = v17;
      v110[1] = @"1234";
      v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, v110, v109, 2);
LABEL_57:
      if (v21)
      {
        v90 = objc_msgSend__expandTemplateURL_fieldValues_(MEMORY[0x277CBC190], v36, v21, v37);
        objc_msgSend_setDownloadURLTemplate_(a1, v91, v90);
      }

      if (v30)
      {
        v92 = objc_msgSend__expandTemplateURL_fieldValues_(MEMORY[0x277CBC190], v36, v30, v37);
        v94 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v93, v92);
        objc_msgSend_setConstructedAssetDownloadURL_(a1, v95, v94);

        v98 = objc_msgSend_constructedAssetDownloadURL(a1, v96, v97);

        if (v98)
        {
          v34 = 0;
        }

        else
        {
          v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v99, *MEMORY[0x277CBC120], 1, @"Couldn't create url from template");
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v100 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v116 = v30;
            _os_log_error_impl(&dword_22506F000, v100, OS_LOG_TYPE_ERROR, "Couldn't create url from template %{public}@", buf, 0xCu);
          }
        }
      }

      else
      {
        v34 = 0;
      }

LABEL_68:

      goto LABEL_69;
    }

    v37 = &unk_2838C9188;
    goto LABEL_57;
  }

  if (!a7)
  {
    if (!a8)
    {
      v72 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v28, v29);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v72, v73, a2, a1, @"CKDAssetExtensions.m", 70, @"Unhandled code path.");

      v34 = 0;
      goto LABEL_72;
    }

    v48 = objc_msgSend_clearAssetKey(a1, v28, v29);
    if (!v48)
    {
      v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v49, *MEMORY[0x277CBC120], 1, @"Couldn't find clear asset key for publishing");
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v88 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v116 = v34;
        _os_log_error_impl(&dword_22506F000, v88, OS_LOG_TYPE_ERROR, "Error find clear asset key: %@", buf, 0xCu);
      }

      goto LABEL_69;
    }

    v37 = v48;
    v34 = 0;
    objc_msgSend_CKBase64URLSafeString(v48, v49, v50);
    goto LABEL_28;
  }

  v105 = v18;
  if (a9)
  {
    goto LABEL_26;
  }

  v38 = objc_msgSend_deviceContext(v18, v28, v29);
  v41 = objc_msgSend_accountDataSecurityObserver(v38, v39, v40);
  v44 = objc_msgSend_account(v18, v42, v43);
  v46 = objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v41, v45, v44, 1);

  if (!v46)
  {
LABEL_26:
    v51 = [CKDWrappingContext alloc];
    v54 = objc_msgSend_recordID(a1, v52, v53);
    v57 = objc_msgSend_signature(a1, v55, v56);
    v60 = objc_msgSend_referenceSignature(a1, v58, v59);
    v62 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v51, v61, v54, v107, 0, v57, v60);

    v65 = objc_msgSend_wrappedAssetKey(a1, v63, v64);
    v108 = 0;
    v37 = objc_msgSend_unwrapAssetKey_withRecordPCS_inContext_withError_(v105, v66, v65, a5, v62, &v108);
    v34 = v108;

    if (!v37)
    {
      if (!v34)
      {
        v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v67, *MEMORY[0x277CBC120], 5004, @"Couldn't unwrap asset key for publishing");
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v87 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v116 = v34;
        _os_log_error_impl(&dword_22506F000, v87, OS_LOG_TYPE_ERROR, "Error unwrapping asset key: %@", buf, 0xCu);
      }

      goto LABEL_44;
    }

    v18 = v105;
    objc_msgSend_CKBase64URLSafeString(v37, v68, v69);
    v70 = LABEL_28:;
    v106 = v70;
    if (v17)
    {
      v113[0] = @"f";
      v113[1] = @"uk";
      v114[0] = v17;
      v114[1] = v70;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v71, v114, v113, 2);
    }

    else
    {
      v111 = @"uk";
      v112 = v70;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v71, &v112, &v111, 1);
    }
    v75 = ;
    if (v21)
    {
      v76 = objc_msgSend__expandTemplateURL_fieldValues_(MEMORY[0x277CBC190], v74, v21, v75);
      objc_msgSend_setDownloadURLTemplate_(a1, v77, v76);
    }

    if (v30)
    {
      v104 = objc_msgSend__expandTemplateURL_fieldValues_(MEMORY[0x277CBC190], v74, v30, v75);
      v79 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v78, v104);
      objc_msgSend_setConstructedAssetDownloadURL_(a1, v80, v79);

      v83 = objc_msgSend_constructedAssetDownloadURL(a1, v81, v82);

      if (v83)
      {
        v85 = v34;
        v86 = v104;
      }

      else
      {
        v85 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v84, *MEMORY[0x277CBC120], 1, @"Couldn't create url from template");

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v86 = v104;
        v89 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v116 = v30;
          _os_log_error_impl(&dword_22506F000, v89, OS_LOG_TYPE_ERROR, "Couldn't create url from template %@", buf, 0xCu);
        }
      }

      v34 = v85;
    }

    goto LABEL_68;
  }

  v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v47, *MEMORY[0x277CBC120], 5013, @"Cannot fill in derivative template due to walrus enabled");
LABEL_44:
  v18 = v105;
LABEL_69:
  if (a10 && v34)
  {
    v101 = v34;
    *a10 = v34;
  }

LABEL_72:

  v102 = *MEMORY[0x277D85DE8];
  return v34 == 0;
}

uint64_t sub_2251452C8(void *a1, const char *a2)
{
  objc_msgSend_setAssetKey_(a1, a2, 0);
  objc_msgSend_setReferenceSignature_(a1, v3, 0);
  objc_msgSend_setDownloadToken_(a1, v4, 0);

  return objc_msgSend_setDownloadTokenExpiration_(a1, v5, 0);
}

uint64_t sub_225145320(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_contentBaseURL(v4, v5, v6);
  v10 = objc_msgSend_owner(v4, v8, v9);
  v13 = objc_msgSend_requestor(v4, v11, v12);
  v16 = objc_msgSend_signature(v4, v14, v15);
  v19 = objc_msgSend_referenceSignature(v4, v17, v18);
  v22 = objc_msgSend_authToken(v4, v20, v21);
  v25 = objc_msgSend_assetKey(v4, v23, v24);
  v28 = objc_msgSend_clearAssetKey(v4, v26, v27);
  v62 = v25;
  v63 = v28;
  if (!v4)
  {
    v37 = v22;
    v38 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v29, *MEMORY[0x277CBC120], 3011, @"Re-referenced asset not found");
    objc_msgSend_setError_(a1, v39, v38);

    goto LABEL_31;
  }

  v31 = v28;
  if (v7)
  {
    v32 = v10 == 0;
  }

  else
  {
    v32 = 1;
  }

  v36 = !v32 && v13 != 0 && v16 != 0 && v22 != 0;
  if (!v19)
  {
    if (v36)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (!v36 || !(v25 | v28))
  {
LABEL_23:
    v61 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v29, v30);
    if (!objc_msgSend_size(v4, v40, v41) && objc_msgSend_isEqualToData_(v16, v42, v61))
    {

      goto LABEL_26;
    }

    v37 = v22;
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v42, *MEMORY[0x277CBC120], 3011, @"Re-referenced asset missing expected values");
    v53 = v19;
    v54 = v16;
    v55 = v13;
    v56 = v10;
    v58 = v57 = v7;
    objc_msgSend_setError_(a1, v59, v58);

    v7 = v57;
    v10 = v56;
    v13 = v55;
    v16 = v54;
    v19 = v53;

LABEL_31:
    v52 = 0;
    goto LABEL_32;
  }

LABEL_26:
  objc_msgSend_setContentBaseURL_(a1, v29, v7);
  objc_msgSend_setOwner_(a1, v43, v10);
  objc_msgSend_setRequestor_(a1, v44, v13);
  if (v25)
  {
    objc_msgSend_setAssetKey_(a1, v45, v25);
  }

  else
  {
    objc_msgSend_setAssetKey_(a1, v45, v31);
  }

  objc_msgSend_setReferenceSignature_(a1, v46, v19);
  v37 = v22;
  objc_msgSend_setDownloadToken_(a1, v47, v22);
  v50 = objc_msgSend_downloadTokenExpiration(v4, v48, v49);
  objc_msgSend_setDownloadTokenExpiration_(a1, v51, v50);
  v52 = 1;
LABEL_32:

  return v52;
}

void sub_225146154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22514616C(uint64_t a1, const char *a2, void *a3)
{
  result = objc_msgSend_count(a3, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) += 69930 * result;
  return result;
}

uint64_t sub_2251461B0(uint64_t a1, const char *a2, void *a3)
{
  result = objc_msgSend_count(a3, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) += 69930 * result;
  return result;
}

void sub_2251462C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2251462E0(uint64_t a1, const char *a2, void *a3)
{
  result = objc_msgSend_count(a3, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) += 69930 * result;
  return result;
}

id sub_22514676C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, v4);
  v8 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 32), v7, v4);

  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;
  }

  else
  {
    v12 = objc_msgSend_arrayByAddingObjectsFromArray_(v6, v9, v8);
  }

  v13 = v12;

  return v13;
}

id sub_22514699C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, v4);
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  v12 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 32), v11, v4);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;

  v17 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 40), v16, v4);

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v8;
  }

  v19 = v18;

  v21 = objc_msgSend_arrayByAddingObjectsFromArray_(v10, v20, v15);
  v23 = objc_msgSend_arrayByAddingObjectsFromArray_(v21, v22, v19);

  return v23;
}

void sub_225146B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225146BB4(uint64_t a1, const char *a2, void *a3, BOOL *a4)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225146C54;
  v7[3] = &unk_278546728;
  v7[4] = *(a1 + 32);
  result = objc_msgSend_enumerateObjectsUsingBlock_(a3, a2, v7);
  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
  return result;
}

void sub_225146C54(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = objc_msgSend_error(a2, a2, a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_225146D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225146DB4(uint64_t a1, const char *a2, void *a3, BOOL *a4)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225146E54;
  v7[3] = &unk_278546728;
  v7[4] = *(a1 + 32);
  result = objc_msgSend_enumerateObjectsUsingBlock_(a3, a2, v7);
  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
  return result;
}

void sub_225146E54(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = objc_msgSend_error(a2, a2, a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_225148304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22514831C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_firstMMCSItemError(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) |= v6 == 0;

  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

BOOL sub_22514838C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_firstMMCSItemError(a2, a2, a3);
  v4 = v3 == 0;

  return v4;
}

id sub_2251495DC(uint64_t *a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  objc_msgSend_setRowID_(v2, v3, &unk_2838C8220);
  v5 = objc_msgSend_sqliteRepresentations_(MEMORY[0x277CBC2B0], v4, a1[4]);
  objc_msgSend_setDeviceCapabilityStringSet_(v2, v6, v5);

  objc_msgSend_setCapabilitySetSavedDate_(v2, v7, a1[5]);
  v8 = a1[6];
  v15[0] = @"deviceCapabilityStringSet";
  v15[1] = @"capabilitySetSavedDate";
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v15, 2);
  v12 = objc_msgSend_insertObject_orUpdateProperties_label_(v8, v11, v2, v10, off_27D719CB8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id sub_2251498F4(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  objc_msgSend_setRowID_(v2, v3, &unk_2838C8220);
  objc_msgSend_setUsageSavedDate_(v2, v4, *(a1 + 32));
  v5 = *(a1 + 40);
  v12[0] = @"usageSavedDate";
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, v12, 1);
  v9 = objc_msgSend_insertObject_orUpdateProperties_label_(v5, v8, v2, v7, off_27D719CD0);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_225149BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_225149C04(uint64_t a1, const char *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v27 = 0;
  v4 = objc_msgSend_fetchAllEntries_(v3, a2, &v27);
  v7 = v27;
  if (v7 || objc_msgSend_count(v4, v5, v6) != 1)
  {
    if (objc_msgSend_count(v4, v5, v6) < 2)
    {
      goto LABEL_11;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v22 = v16;
      v25 = objc_msgSend_containerID(v21, v23, v24);
      *buf = 138412546;
      v29 = v25;
      v30 = 2112;
      v31 = v4;
      _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "Found more than one last sent capabilities and usage date for containerID %@. Deleting all of them: %@", buf, 0x16u);
    }

    v18 = *(a1 + 32);
    v26 = v7;
    objc_msgSend_deleteAllEntries_(v18, v17, &v26);
    v15 = v26;
  }

  else
  {
    v8 = [CKLastSentCapabilitiesAndUsage alloc];
    v7 = objc_msgSend_firstObject(v4, v9, v10);
    SentCapabilitiesAndUsageEntry = objc_msgSend_initWithLastSentCapabilitiesAndUsageEntry_(v8, v11, v7);
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = SentCapabilitiesAndUsageEntry;

    v15 = 0;
  }

  v7 = v15;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_22514B678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_22514B698(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v14 = 0;
  v5 = objc_msgSend_entryWithValues_label_error_setupBlock_(v3, a2, v4, off_27D719CE8, &v14, &unk_28385C7E0);
  v6 = v14;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    v8 = [CKUsageInfo alloc];
    v10 = objc_msgSend_initWithUsageInfoEntry_(v8, v9, v5);
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  return v6;
}

void sub_22514B74C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAC30];
  v3 = a2;
  v6 = objc_msgSend_predicateWithFormat_(v2, v4, @"IDString = $IDString AND itemType = $itemType");
  objc_msgSend_setSearchPredicate_(v3, v5, v6);
}

void sub_22514C918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_22514C93C(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22514CA78;
  v21[3] = &unk_278546848;
  v21[4] = a1[7];
  v5 = objc_msgSend_entriesWithValues_label_setupBlock_(v3, a2, v4, off_27D719D00, v21);
  v8 = objc_msgSend_nextObject(v5, v6, v7);
  if (v8)
  {
    v11 = v8;
    do
    {
      v12 = *(*(a1[6] + 8) + 40);
      if (!v12)
      {
        v13 = objc_opt_new();
        v14 = *(a1[6] + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        v12 = *(*(a1[6] + 8) + 40);
      }

      objc_msgSend_addObject_(v12, v9, v11);
      v18 = objc_msgSend_nextObject(v5, v16, v17);

      v11 = v18;
    }

    while (v18);
  }

  v19 = objc_msgSend_error(v5, v9, v10);

  return v19;
}

void sub_22514CA78(uint64_t a1, void *a2)
{
  v10 = a2;
  v4 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v3, @"itemType = $itemType");
  objc_msgSend_setSearchPredicate_(v10, v5, v4);
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v6, v7);
    objc_msgSend_setLimit_(v10, v9, v8);
  }
}

id sub_22514CF4C(uint64_t a1, const char *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v50 = 0;
  v5 = objc_msgSend_entryWithValues_label_error_setupBlock_(v3, a2, v4, off_280D53260, &v50, &unk_28385C800);
  v8 = v50;
  if (v8 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x277CCA9B8], v6, v8) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v30 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v37 = *(a1 + 48);
      v38 = *(a1 + 64) - 1;
      if (v38 > 2)
      {
        v39 = 0;
      }

      else
      {
        v39 = off_278546890[v38];
      }

      v45 = *(a1 + 32);
      v46 = v30;
      v49 = objc_msgSend_containerID(v45, v47, v48);
      *buf = 138413058;
      v52 = v37;
      v53 = 2112;
      v54 = v39;
      v55 = 2112;
      v56 = v49;
      v57 = 2112;
      v58 = v8;
      _os_log_error_impl(&dword_22506F000, v46, OS_LOG_TYPE_ERROR, "Encountered unexpected error when fetching IDString %@ for type %@ in DeviceCapabilityUsageSQLTable for container %@. Error %@", buf, 0x2Au);
    }
  }

  else
  {
    if (!v5)
    {
      v5 = objc_opt_new();
    }

    v9 = objc_msgSend_lastSent(*(a1 + 56), v6, v7);
    objc_msgSend_setLastSent_(v5, v10, v9);

    v13 = objc_msgSend_lastUsed(*(a1 + 56), v11, v12);
    objc_msgSend_setLastUsed_(v5, v14, v13);

    v17 = objc_msgSend_sending(*(a1 + 56), v15, v16);
    objc_msgSend_setSending_(v5, v18, v17);

    v21 = objc_msgSend_failureCount(*(a1 + 56), v19, v20);
    objc_msgSend_setFailureCount_(v5, v22, v21);
    v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v23, *(a1 + 64));
    objc_msgSend_setItemType_(v5, v25, v24);

    objc_msgSend_setIDString_(v5, v26, *(a1 + 48));
    v28 = objc_msgSend_insertObject_orUpdateProperties_label_(*(a1 + 32), v27, v5, 0, off_280D53278);

    if (v28)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v34 = *(a1 + 48);
        v35 = *(a1 + 64) - 1;
        if (v35 > 2)
        {
          v36 = 0;
        }

        else
        {
          v36 = off_278546890[v35];
        }

        v40 = *(a1 + 32);
        v41 = v29;
        v44 = objc_msgSend_containerID(v40, v42, v43);
        *buf = 138413058;
        v52 = v34;
        v53 = 2112;
        v54 = v36;
        v55 = 2112;
        v56 = v44;
        v57 = 2112;
        v58 = v28;
        _os_log_error_impl(&dword_22506F000, v41, OS_LOG_TYPE_ERROR, "Failed to set usage for IDString %@ for type %@ in DeviceCapabilityUsageSQLTable for container %@. Error %@", buf, 0x2Au);
      }
    }

    v8 = v28;
  }

  v31 = v8;

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

void sub_22514D2E8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAC30];
  v3 = a2;
  v6 = objc_msgSend_predicateWithFormat_(v2, v4, @"IDString = $IDString AND itemType = $itemType");
  objc_msgSend_setSearchPredicate_(v3, v5, v6);
}

uint64_t sub_22514D7D4()
{
  qword_280D580F8 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

id sub_22514E7E8(void *a1)
{
  v1 = a1;
  if (objc_msgSend_count(v1, v2, v3))
  {
    v4 = objc_opt_new();
    if (objc_msgSend_count(v1, v5, v6))
    {
      v8 = 0;
      do
      {
        v9 = objc_msgSend_objectAtIndexedSubscript_(v1, v7, v8);
        if (v8 == objc_msgSend_count(v1, v10, v11) - 1)
        {
          objc_msgSend_appendFormat_(v4, v12, @"%@ = $%@", v9, v9);
        }

        else
        {
          objc_msgSend_appendFormat_(v4, v12, @"%@ = $%@ AND ", v9, v9);
        }

        ++v8;
      }

      while (v8 < objc_msgSend_count(v1, v13, v14));
    }

    v15 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v7, v4);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_22514EB94(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = @"zoneIDString";
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v5 = objc_msgSend_arrayWithObjects_count_(v2, v4, &v9, 1);
  v6 = sub_22514E7E8(v5);
  objc_msgSend_setSearchPredicate_(v3, v7, v6, v9, v10);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22514F240(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"recordName";
  v9[1] = @"zoneRowID";
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v5 = objc_msgSend_arrayWithObjects_count_(v2, v4, v9, 2);
  v6 = sub_22514E7E8(v5);

  objc_msgSend_setSearchPredicate_(v3, v7, v6);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22514F630(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = @"zoneRowID";
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v5 = objc_msgSend_arrayWithObjects_count_(v2, v4, &v9, 1);
  v6 = sub_22514E7E8(v5);
  objc_msgSend_setSearchPredicate_(v3, v7, v6, v9, v10);

  v8 = *MEMORY[0x277D85DE8];
}

id sub_22514F840(uint64_t a1, const char *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"zoneRowID";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v6, 1);
  v3 = sub_22514E7E8(v2);

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id sub_22514F9E8(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@ = $%@ AND NOT %@ = $%@", @"zoneRowID", @"zoneRowID", @"rowID", @"rowID");
  v4 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v3, v2);

  return v4;
}

void sub_22515072C(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"zoneRowID";
  v9[1] = @"recordName";
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v5 = objc_msgSend_arrayWithObjects_count_(v2, v4, v9, 2);
  v6 = sub_22514E7E8(v5);

  objc_msgSend_setSearchPredicate_(v3, v7, v6);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_225150E8C(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = @"parentRowID";
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v5 = objc_msgSend_arrayWithObjects_count_(v2, v4, &v9, 1);
  v6 = sub_22514E7E8(v5);
  objc_msgSend_setSearchPredicate_(v3, v7, v6, v9, v10);

  v8 = *MEMORY[0x277D85DE8];
}

id sub_2251510C0(uint64_t a1, const char *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"shareRowID";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v6, 1);
  v3 = sub_22514E7E8(v2);

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id sub_2251513CC(uint64_t a1, const char *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"zoneRowID";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v6, 1);
  v3 = sub_22514E7E8(v2);

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_225151EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_225151F04(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneShareTable(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_zoneID(*(a1 + 40), v5, v6);
  v18 = 0;
  v9 = objc_msgSend_shareIDForZoneID_error_(v4, v8, v7, &v18);
  v10 = v18;

  if (!v10)
  {
    if (v9)
    {
      goto LABEL_5;
    }

    v13 = objc_msgSend_recordTable(*(a1 + 32), v11, v12);
    v14 = *(a1 + 40);
    v17 = 0;
    v9 = objc_msgSend_shareIDForRecordID_error_(v13, v15, v14, &v17);
    v10 = v17;

    if (!v10)
    {
      if (v9)
      {
LABEL_5:
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9);
        v10 = 0;
      }
    }
  }

  return v10;
}

void sub_2251521E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_225152204(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneShareTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v12 = 0;
  v7 = objc_msgSend_shareIDForZoneID_error_(v4, v6, v5, &v12);
  v8 = v12;
  v9 = v12;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 == 0;
  }

  if (!v10)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
  }

  return v8;
}

void sub_225152488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2251524A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneShareTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v18 = 0;
  v7 = objc_msgSend_shareIDForZoneID_error_(v4, v6, v5, &v18);
  v8 = v18;

  if (!v8)
  {
    if (v7)
    {
      objc_msgSend_addObject_(*(*(*(a1 + 48) + 8) + 40), v9, v7);
    }

    v11 = objc_msgSend_recordTable(*(a1 + 32), v9, v10);
    v12 = *(a1 + 40);
    v17 = 0;
    v14 = objc_msgSend_shareIDsForZoneID_error_(v11, v13, v12, &v17);
    v8 = v17;

    if (!v8 && v14)
    {
      objc_msgSend_unionSet_(*(*(*(a1 + 48) + 8) + 40), v15, v14);
    }
  }

  return v8;
}

id sub_225152740(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneShareTable(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_zoneID(*(a1 + 40), v5, v6);
  v19 = 0;
  hasZoneID_error = objc_msgSend_hasZoneID_error_(v4, v8, v7, &v19);
  v10 = v19;

  if (!v10 && (hasZoneID_error & 1) == 0)
  {
    v13 = objc_msgSend_recordTable(*(a1 + 32), v11, v12);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v18 = 0;
    objc_msgSend_addOrUpdateRecordID_withParentID_error_(v13, v16, v14, v15, &v18);
    v10 = v18;
  }

  return v10;
}

id sub_22515297C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_shareIDTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v18 = 0;
  v7 = objc_msgSend_entryForShareID_addIfNotFound_error_(v4, v6, v5, 0, &v18);
  v8 = v18;

  if (!v8)
  {
    v11 = *(a1 + 32);
    if (v7)
    {
      v17 = 0;
      objc_msgSend_removeShareWithShareEntry_error_(v11, v9, v7, &v17);
      v8 = v17;
    }

    else
    {
      v12 = objc_msgSend_recordTable(v11, v9, v10);
      v13 = *(a1 + 40);
      v16 = 0;
      objc_msgSend_removeRecordID_error_(v12, v14, v13, &v16);
      v8 = v16;
    }
  }

  return v8;
}

id sub_225152BC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneShareTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v39 = 0;
  v7 = objc_msgSend_addZoneShareID_error_(v4, v6, v5, &v39);
  v8 = v39;

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7 == 0;
  }

  if (!v11)
  {
    v12 = objc_msgSend_recordTable(*(a1 + 32), v9, v10);
    v15 = objc_msgSend_zoneID(*(a1 + 40), v13, v14);
    v38 = 0;
    objc_msgSend_removeZoneID_error_(v12, v16, v15, &v38);
    v8 = v38;

    if (!v8)
    {
      v19 = objc_msgSend_zoneShareTable(*(a1 + 32), v17, v18);
      v22 = objc_msgSend_zoneID(*(a1 + 40), v20, v21);
      v37 = 0;
      v24 = objc_msgSend_entryForZoneID_error_(v19, v23, v22, &v37);
      v8 = v37;

      if (!v8 && v24)
      {
        v27 = objc_msgSend_shareIDTable(*(a1 + 32), v25, v26);
        v30 = objc_msgSend_zoneRowID(v24, v28, v29);
        v33 = objc_msgSend_shareRowID(v24, v31, v32);
        v36 = 0;
        objc_msgSend_removeSharesWithZoneRowID_exceptRowID_error_(v27, v34, v30, v33, &v36);
        v8 = v36;
      }
    }
  }

  return v8;
}

id sub_225152EF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_zoneID(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_zoneShareTable(*(a1 + 40), v5, v6);
  v39 = 0;
  v9 = objc_msgSend_entryForZoneID_error_(v7, v8, v4, &v39);
  v10 = v39;

  if (!v10)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      *buf = 138412546;
      v41 = v16;
      v42 = 2112;
      v43 = v4;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Warn: A hierarchical share %@ is added to a zone with a zone share in the shareID cache, zoneID: %@", buf, 0x16u);
    }

    v17 = objc_msgSend_zoneShareTable(*(a1 + 40), v14, v15);
    v20 = objc_msgSend_zoneRowID(v9, v18, v19);
    v38 = 0;
    objc_msgSend_removeRowID_error_(v17, v21, v20, &v38);
    v10 = v38;

    if (!v10)
    {
      v24 = objc_msgSend_shareIDTable(*(a1 + 40), v22, v23);
      v27 = objc_msgSend_shareRowID(v9, v25, v26);
      v37 = 0;
      objc_msgSend_removeRowID_error_(v24, v28, v27, &v37);
      v10 = v37;

      if (!v10)
      {
LABEL_9:
        v29 = objc_msgSend_recordTable(*(a1 + 40), v11, v12);
        v30 = *(a1 + 32);
        v31 = *(a1 + 48);
        v36 = 0;
        objc_msgSend_addShareID_forRootRecordID_error_(v29, v32, v30, v31, &v36);
        v10 = v36;
      }
    }
  }

  v33 = v10;

  v34 = *MEMORY[0x277D85DE8];
  return v10;
}

id sub_225153284(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_shareIDTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v14 = 0;
  v7 = objc_msgSend_entryForShareID_addIfNotFound_error_(v4, v6, v5, 0, &v14);
  v8 = v14;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 == 0;
  }

  if (!v10)
  {
    v11 = *(a1 + 32);
    v13 = 0;
    objc_msgSend_removeShareWithShareEntry_error_(v11, v9, v7, &v13);
    v8 = v13;
  }

  return v8;
}

id sub_2251534A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneShareTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v27 = 0;
  v7 = objc_msgSend_entryForZoneID_error_(v4, v6, v5, &v27);
  v8 = v27;

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7 == 0;
  }

  if (!v11)
  {
    v12 = objc_msgSend_zoneShareTable(*(a1 + 32), v9, v10);
    v15 = objc_msgSend_zoneRowID(v7, v13, v14);
    v26 = 0;
    objc_msgSend_removeRowID_error_(v12, v16, v15, &v26);
    v8 = v26;

    if (!v8)
    {
      v19 = objc_msgSend_shareIDTable(*(a1 + 32), v17, v18);
      v22 = objc_msgSend_shareRowID(v7, v20, v21);
      v25 = 0;
      objc_msgSend_removeRowID_error_(v19, v23, v22, &v25);
      v8 = v25;
    }
  }

  return v8;
}

id sub_225153734(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneIDTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v31 = 0;
  v7 = objc_msgSend_rowIDForZoneID_addIfNotFound_error_(v4, v6, v5, 0, &v31);
  v8 = v31;

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7 == 0;
  }

  if (!v11)
  {
    v12 = objc_msgSend_zoneShareTable(*(a1 + 32), v9, v10);
    v30 = 0;
    objc_msgSend_removeRowID_error_(v12, v13, v7, &v30);
    v8 = v30;

    if (!v8)
    {
      v16 = objc_msgSend_recordTable(*(a1 + 32), v14, v15);
      v29 = 0;
      objc_msgSend_removeRecordsWithZoneRowID_error_(v16, v17, v7, &v29);
      v8 = v29;

      if (!v8)
      {
        v20 = objc_msgSend_shareIDTable(*(a1 + 32), v18, v19);
        v28 = 0;
        objc_msgSend_removeSharesWithZoneRowID_error_(v20, v21, v7, &v28);
        v8 = v28;

        if (!v8)
        {
          v24 = objc_msgSend_zoneIDTable(*(a1 + 32), v22, v23);
          v27 = 0;
          objc_msgSend_removeRowID_error_(v24, v25, v7, &v27);
          v8 = v27;
        }
      }
    }
  }

  return v8;
}

void sub_2251540B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_containerServerInfos(*(a1 + 32), v7, v8);
  if (v6[2](v6))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v12 = "Failed to get existing container server info from database";
LABEL_16:
      _os_log_fault_impl(&dword_22506F000, v11, OS_LOG_TYPE_FAULT, v12, buf, 2u);
    }
  }

  else
  {
    objc_msgSend_executeSQL_(v5, v10, @"DROP TABLE %@", @"ContainerServerInfo");
    if (v6[2](v6))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v11 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v12 = "Failed to drop table";
        goto LABEL_16;
      }
    }

    else
    {
      objc_msgSend_executeSQL_(v5, v13, @"%@", @"create table if not exists ContainerServerInfo (\n    containerID                 text,\n    publicCloudDBURL            text,\n    publicShareServiceURL       text,\n    publicDeviceServiceURL      text,\n    publicCodeServiceURL        text,\n    publicMetricsServiceURL     text,\n    scopedUserID                text,\n    orgAdminUserID              text,\n    environment                 text,\n    accountID                   text,\n    unique (containerID, accountID) on conflict replace\n);\n");
      if (!v6[2](v6))
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_22515432C;
        v15[3] = &unk_2785468D0;
        v16 = *(a1 + 32);
        objc_msgSend_enumerateObjectsUsingBlock_(v9, v14, v15);

        goto LABEL_18;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v11 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v12 = "Failed to create table";
        goto LABEL_16;
      }
    }
  }

LABEL_18:
}

void sub_22515432C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v13 = objc_msgSend_v3(v3, v4, v5);
  v8 = objc_msgSend_v1(v3, v6, v7);
  v11 = objc_msgSend_v2(v3, v9, v10);

  objc_msgSend_setContainerServerInfo_forContainerID_accountID_(v2, v12, v13, v8, v11);
}

id sub_2251545A0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225154618;
  v4[3] = &unk_2785468F8;
  v4[4] = v2;
  return objc_msgSend_performDatabaseOperation_(v2, a2, v4);
}

void sub_225154618(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Removing all container metadata cached info", buf, 2u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v23[0] = @"PushTokens";
  v23[1] = @"AppContainerAccount";
  v23[2] = @"ContainerServerInfo";
  v23[3] = @"ServerConfiguration";
  v23[4] = @"VerifiedPublicKey";
  v23[5] = @"DSIDMap";
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v23, 6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v24, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_deleteFrom_where_bindings_(v5, v12, *(*(&v18 + 1) + 8 * i), @"1", 0);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v18, v24, 16);
    }

    while (v13);
  }

  objc_msgSend_inlock_setDateOfLastTokenUpdate_(*(a1 + 32), v16, 0);
  v17 = *MEMORY[0x277D85DE8];
}

void sub_2251548C8(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v5 = objc_msgSend_stringWithFormat_(v2, v4, @"%@ < ?", @"expirationDate");
  v8 = objc_msgSend_date(MEMORY[0x277CBEAA8], v6, v7);
  v13[0] = v8;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v13, 1);
  objc_msgSend_deleteFrom_where_bindings_(v3, v11, @"PushTokens", v5, v10);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_225154A54(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ = ?", @"accountID");
  v23[0] = *(a1 + 32);
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v23, 1);
  objc_msgSend_deleteFrom_where_bindings_(v4, v9, @"ContainerServerInfo", v6, v8);

  v22 = *(a1 + 32);
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, &v22, 1);
  objc_msgSend_deleteFrom_where_bindings_(v4, v12, @"PushTokens", v6, v11);

  v21 = *(a1 + 32);
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, &v21, 1);
  objc_msgSend_deleteFrom_where_bindings_(v4, v15, @"AppContainerAccount", v6, v14);

  v20 = *(a1 + 32);
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, &v20, 1);
  objc_msgSend_deleteFrom_where_bindings_(v4, v18, @"DSIDMap", v6, v17);

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_225154CA4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Removing container metadata cached info for accountID %@", &v7, 0xCu);
  }

  result = objc_msgSend_inlock_expungeDataForAccountID_(*(a1 + 40), v3, *(a1 + 32));
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_225154E0C(uint64_t a1, const char *a2)
{
  v61[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v61[0] = @"accountID";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v61, 1);
  v6 = objc_msgSend_select_from_(v3, v5, v4, @"ContainerServerInfo");

  v8 = objc_msgSend_valueForKey_(v6, v7, @"accountID");
  if (objc_msgSend_count(v8, v9, v10))
  {
    v12 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v11, v8);
    v15 = objc_msgSend_sharedAccountStore(CKDAccountStore, v13, v14);
    v18 = objc_msgSend_accountStore(v15, v16, v17);

    v49 = v18;
    v48 = objc_msgSend_aa_appleAccounts(v18, v19, v20);
    v22 = objc_msgSend_valueForKeyPath_(v48, v21, @"identifier");
    if (objc_msgSend_count(v22, v23, v24))
    {
      v26 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v25, v22);
    }

    else
    {
      v26 = 0;
    }

    v50 = v8;
    v51 = v6;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v47 = v22;
    v27 = MEMORY[0x277CBC830];
    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v29 = v28;
      v32 = objc_msgSend_allObjects(v26, v30, v31);
      v35 = objc_msgSend_allObjects(v12, v33, v34);
      *buf = 138412546;
      v58 = v32;
      v59 = 2112;
      v60 = v35;
      _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "Got the following Apple account identifiers from Accounts:\n%@\nCached account identifiers:\n%@", buf, 0x16u);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v36 = v12;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v52, v56, 16);
    if (v38)
    {
      v40 = v38;
      v41 = *v53;
      do
      {
        v42 = 0;
        do
        {
          if (*v53 != v41)
          {
            objc_enumerationMutation(v36);
          }

          v43 = *(*(&v52 + 1) + 8 * v42);
          if ((objc_msgSend_containsObject_(v26, v39, v43) & 1) == 0)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v44 = *v27;
            if (os_log_type_enabled(*v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v58 = v43;
              _os_log_impl(&dword_22506F000, v44, OS_LOG_TYPE_INFO, "Removing container metadata cached info for stale accountID %@", buf, 0xCu);
            }

            objc_msgSend_inlock_expungeDataForAccountID_(*(a1 + 32), v45, v43);
          }

          ++v42;
        }

        while (v40 != v42);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v52, v56, 16);
      }

      while (v40);
    }

    v8 = v50;
    v6 = v51;
  }

  v46 = *MEMORY[0x277D85DE8];
}

void sub_2251552CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251552E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v66[4] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_appContainerTuple(*(a1 + 32), a2, a3);
  v65[0] = @"applicationID";
  v7 = objc_msgSend_applicationID(v4, v5, v6);
  v66[0] = v7;
  v65[1] = @"containerID";
  v10 = objc_msgSend_containerID(v4, v8, v9);
  v66[1] = v10;
  v65[2] = @"personaID";
  v13 = objc_msgSend_personaID(v4, v11, v12);
  v16 = v13;
  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = &stru_28385ED00;
  }

  v66[2] = v17;
  v65[3] = @"accountID";
  v18 = objc_msgSend_accountID(*(a1 + 32), v14, v15);
  v20 = v18;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = &stru_28385ED00;
  }

  v66[3] = v21;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v66, v65, 4);

  v24 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v23, v22);
  v27 = objc_msgSend_v1(v24, v25, v26);
  v31 = objc_msgSend_v2(v24, v28, v29);
  if (*(a1 + 56) == 1)
  {
    v32 = objc_msgSend_stringByAppendingFormat_(v27, v30, @"AND %@ > ?", @"expirationDate");

    v35 = objc_msgSend_date(MEMORY[0x277CBEAA8], v33, v34);
    v37 = objc_msgSend_arrayByAddingObject_(v31, v36, v35);

    v31 = v37;
    v27 = v32;
  }

  v38 = *(a1 + 40);
  v64[0] = @"apsToken";
  v64[1] = @"apsEnvironment";
  v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v64, 2);
  v41 = objc_msgSend_select_from_where_bindings_(v38, v40, v39, @"PushTokens", v27, v31);

  if (objc_msgSend_count(v41, v42, v43))
  {
    v63 = v22;
    v45 = objc_msgSend_objectAtIndexedSubscript_(v41, v44, 0);
    v47 = objc_msgSend_objectForKeyedSubscript_(v45, v46, @"apsEnvironment");
    v50 = objc_msgSend_lowercaseString(v47, v48, v49);
    v51 = v50;
    v52 = *MEMORY[0x277CEE9F0];
    if (v50)
    {
      v52 = v50;
    }

    v53 = v52;

    v55 = objc_msgSend_objectForKeyedSubscript_(v45, v54, @"apsToken");
    v56 = v55;
    if (v53 && v55)
    {
      v57 = [CKDPushToken alloc];
      v59 = objc_msgSend_initWithAPSEnvironmentString_apsToken_(v57, v58, v53, v56);
      v60 = *(*(a1 + 48) + 8);
      v61 = *(v60 + 40);
      *(v60 + 40) = v59;
    }

    v22 = v63;
  }

  v62 = *MEMORY[0x277D85DE8];
}

void sub_2251556DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_appContainerTuple(*(a1 + 32), a2, a3);
  v31[0] = @"applicationID";
  v7 = objc_msgSend_applicationID(v4, v5, v6);
  v32[0] = v7;
  v31[1] = @"containerID";
  v10 = objc_msgSend_containerID(v4, v8, v9);
  v32[1] = v10;
  v31[2] = @"personaID";
  v13 = objc_msgSend_personaID(v4, v11, v12);
  v16 = v13;
  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = &stru_28385ED00;
  }

  v32[2] = v17;
  v31[3] = @"accountID";
  v18 = objc_msgSend_accountID(*(a1 + 32), v14, v15);
  v20 = v18;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = &stru_28385ED00;
  }

  v32[3] = v21;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v32, v31, 4);

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2251558A0;
  v28[3] = &unk_278546968;
  v23 = *(a1 + 40);
  v29 = *(a1 + 48);
  v30 = v22;
  v24 = v22;
  v26 = objc_msgSend_performDatabaseOperation_(v23, v25, v28);

  v27 = *MEMORY[0x277D85DE8];
}

void sub_2251558A0(uint64_t a1, void *a2)
{
  v36[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = MEMORY[0x277CBEAA8];
    v4 = a2;
    v7 = objc_msgSend_dateWithTimeIntervalSinceNow_(v3, v5, v6, 604800.0);
    v10 = objc_msgSend_mutableCopy(*(a1 + 40), v8, v9);
    v35[0] = @"apsToken";
    v13 = objc_msgSend_apsToken(*(a1 + 32), v11, v12);
    v36[0] = v13;
    v35[1] = @"apsEnvironment";
    v16 = objc_msgSend_apsEnvironmentString(*(a1 + 32), v14, v15);
    v35[2] = @"expirationDate";
    v36[1] = v16;
    v36[2] = v7;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v36, v35, 3);
    objc_msgSend_addEntriesFromDictionary_(v10, v19, v18);

    objc_msgSend_insertOrReplaceInto_values_(v4, v20, @"PushTokens", v10);
    v21 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v22 = MEMORY[0x277CBC648];
    v23 = *(a1 + 40);
    v24 = a2;
    v34 = objc_msgSend_equalityClauseAndBindingsForDict_(v22, v25, v23);
    v28 = objc_msgSend_v1(v34, v26, v27);
    v31 = objc_msgSend_v2(v34, v29, v30);
    objc_msgSend_deleteFrom_where_bindings_(v24, v32, @"PushTokens", v28, v31);

    v33 = *MEMORY[0x277D85DE8];
  }
}

void sub_225155B4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_appContainerTuple(v3, v4, v5);
  v9 = objc_msgSend_persona(v6, v7, v8);
  v11 = *(a1 + 32);
  v10 = v3;
  CKPersonaPerformBlock();
}

void *sub_225155C2C(void *result, uint64_t a2)
{
  if (!a2)
  {
    return (*(result[5] + 16))(result[5], result[4], result[6]);
  }

  return result;
}

void sub_225155D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225155D90(uint64_t a1, const char *a2)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v20[0] = @"applicationID";
  v20[1] = @"containerID";
  v20[2] = @"personaID";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v20, 3);
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%@ = ?", @"accountID");
  v8 = *(a1 + 40);
  if (!v8)
  {
    v8 = &stru_28385ED00;
  }

  v19 = v8;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, &v19, 1);
  v11 = objc_msgSend_select_from_where_bindings_(v3, v10, v4, @"AppContainerAccount", v7, v9);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_225155F3C;
  v17[3] = &unk_2785462E0;
  v18 = *(a1 + 40);
  v13 = objc_msgSend_CKCompactMap_(v11, v12, v17);
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *MEMORY[0x277D85DE8];
}

id sub_225155F3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKDApplicationID alloc];
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, @"applicationID");
  v8 = objc_msgSend_initWithSqliteRepresentation_(v4, v7, v6);

  v9 = objc_alloc(MEMORY[0x277CBC220]);
  v11 = objc_msgSend_objectForKeyedSubscript_(v3, v10, @"containerID");
  v13 = objc_msgSend_initWithSqliteRepresentation_(v9, v12, v11);

  v15 = objc_msgSend_objectForKeyedSubscript_(v3, v14, @"personaID");

  v18 = objc_msgSend_CKNilIfLengthZero(v15, v16, v17);

  v19 = 0;
  if (v8 && v13)
  {
    if (*(a1 + 32))
    {
      v20 = [CKDAppContainerTuple alloc];
      v22 = objc_msgSend_initWithApplicationID_containerID_personaID_(v20, v21, v8, v13, v18);
      v23 = [CKDAppContainerAccountTuple alloc];
      v19 = objc_msgSend_initWithAppContainerTuple_accountID_(v23, v24, v22, *(a1 + 32));
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

void sub_225156148(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_appContainerTuple(v3, v4, v5);
  v9 = objc_msgSend_persona(v6, v7, v8);
  v11 = *(a1 + 32);
  v10 = v3;
  CKPersonaPerformBlock();
}

void *sub_225156228(void *result, uint64_t a2)
{
  if (!a2)
  {
    return (*(result[5] + 16))(result[5], result[4], result[6]);
  }

  return result;
}

void sub_22515634C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225156364(uint64_t a1, const char *a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v12[0] = @"applicationID";
  v12[1] = @"containerID";
  v12[2] = @"personaID";
  v12[3] = @"accountID";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v12, 4);
  v6 = objc_msgSend_select_from_(v3, v5, v4, @"AppContainerAccount");

  v8 = objc_msgSend_CKCompactMap_(v6, v7, &unk_28385C9E0);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

id sub_225156454(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [CKDApplicationID alloc];
  v6 = objc_msgSend_objectForKeyedSubscript_(v2, v5, @"applicationID");
  v8 = objc_msgSend_initWithSqliteRepresentation_(v4, v7, v6);

  v9 = objc_alloc(MEMORY[0x277CBC220]);
  v11 = objc_msgSend_objectForKeyedSubscript_(v2, v10, @"containerID");
  v13 = objc_msgSend_initWithSqliteRepresentation_(v9, v12, v11);

  v15 = objc_msgSend_objectForKeyedSubscript_(v2, v14, @"personaID");
  v18 = objc_msgSend_CKNilIfLengthZero(v15, v16, v17);

  v20 = objc_msgSend_objectForKeyedSubscript_(v2, v19, @"accountID");
  v23 = objc_msgSend_CKNilIfLengthZero(v20, v21, v22);

  v24 = 0;
  if (v8 && v13 && v23)
  {
    v25 = [CKDAppContainerTuple alloc];
    v27 = objc_msgSend_initWithApplicationID_containerID_personaID_(v25, v26, v8, v13, v18);
    v28 = [CKDAppContainerAccountTuple alloc];
    v24 = objc_msgSend_initWithAppContainerTuple_accountID_(v28, v29, v27, v23);
  }

  objc_autoreleasePoolPop(v3);

  return v24;
}

void sub_22515670C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225156724(uint64_t a1, const char *a2, uint64_t a3)
{
  v60[4] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_appContainerTuple(*(a1 + 32), a2, a3);
  v59[0] = @"applicationID";
  v7 = objc_msgSend_applicationID(v4, v5, v6);
  v60[0] = v7;
  v59[1] = @"containerID";
  v10 = objc_msgSend_containerID(v4, v8, v9);
  v60[1] = v10;
  v59[2] = @"personaID";
  v13 = objc_msgSend_personaID(v4, v11, v12);
  v16 = v13;
  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = &stru_28385ED00;
  }

  v60[2] = v17;
  v59[3] = @"accountID";
  v18 = objc_msgSend_accountID(*(a1 + 32), v14, v15);
  v20 = v18;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = &stru_28385ED00;
  }

  v60[3] = v21;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v60, v59, 4);

  v24 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v23, v22);
  v25 = *(a1 + 40);
  v58[0] = @"containerOptions";
  v58[1] = @"tokenRegistered";
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, v58, 2);
  v30 = objc_msgSend_v1(v24, v28, v29);
  v33 = objc_msgSend_v2(v24, v31, v32);
  v35 = objc_msgSend_select_from_where_bindings_(v25, v34, v27, @"AppContainerAccount", v30, v33);

  if (objc_msgSend_count(v35, v36, v37))
  {
    v39 = objc_msgSend_objectAtIndexedSubscript_(v35, v38, 0);
    v40 = objc_alloc(MEMORY[0x277CBC230]);
    v42 = objc_msgSend_objectForKeyedSubscript_(v39, v41, @"containerOptions");
    v44 = objc_msgSend_initWithSqliteRepresentation_(v40, v43, v42);

    v46 = objc_msgSend_objectForKeyedSubscript_(v39, v45, @"tokenRegistered");
    v49 = objc_msgSend_integerValue(v46, v47, v48);

    v50 = [CKDAppContainerAccountMetadata alloc];
    v52 = objc_msgSend_initWithContainerOptions_tokenRegistered_(v50, v51, v44, v49);
    v53 = *(*(a1 + 48) + 8);
    v54 = *(v53 + 40);
    *(v53 + 40) = v52;
  }

  else
  {
    v55 = objc_opt_new();
    v56 = *(*(a1 + 48) + 8);
    v39 = *(v56 + 40);
    *(v56 + 40) = v55;
  }

  v57 = *MEMORY[0x277D85DE8];
}

void sub_225156AC4(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_225156B6C;
  v5[3] = &unk_278546968;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v4 = objc_msgSend_performDatabaseOperation_(v2, v3, v5);
}

void sub_225156B6C(uint64_t a1, void *a2)
{
  v66[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_appContainerTuple(*(a1 + 32), v4, v5);
  v65[0] = @"applicationID";
  v9 = objc_msgSend_applicationID(v6, v7, v8);
  v66[0] = v9;
  v65[1] = @"containerID";
  v12 = objc_msgSend_containerID(v6, v10, v11);
  v66[1] = v12;
  v65[2] = @"personaID";
  v15 = objc_msgSend_personaID(v6, v13, v14);
  v18 = v15;
  if (v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = &stru_28385ED00;
  }

  v66[2] = v19;
  v65[3] = @"accountID";
  v20 = objc_msgSend_accountID(*(a1 + 32), v16, v17);
  v22 = v20;
  if (v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = &stru_28385ED00;
  }

  v66[3] = v23;
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v66, v65, 4);

  v26 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v25, v24);
  v64 = @"tokenRegistered";
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, &v64, 1);
  v31 = objc_msgSend_v1(v26, v29, v30);
  v34 = objc_msgSend_v2(v26, v32, v33);
  v36 = objc_msgSend_select_from_where_bindings_(v3, v35, v28, @"AppContainerAccount", v31, v34);

  if (objc_msgSend_count(v36, v37, v38))
  {
    v41 = objc_msgSend_objectAtIndexedSubscript_(v36, v39, 0);
    if (objc_msgSend_tokenRegistered(*(a1 + 40), v42, v43) == -1)
    {
      v45 = objc_msgSend_objectForKeyedSubscript_(v41, v44, @"tokenRegistered");
      v48 = objc_msgSend_integerValue(v45, v46, v47);
      objc_msgSend_setTokenRegistered_(*(a1 + 40), v49, v48);
    }
  }

  v50 = objc_msgSend_mutableCopy(v24, v39, v40);
  v53 = objc_msgSend_containerOptions(*(a1 + 40), v51, v52);
  objc_msgSend_setObject_forKeyedSubscript_(v50, v54, v53, @"containerOptions");

  v55 = MEMORY[0x277CCABB0];
  v58 = objc_msgSend_tokenRegistered(*(a1 + 40), v56, v57);
  v60 = objc_msgSend_numberWithInteger_(v55, v59, v58);
  objc_msgSend_setObject_forKeyedSubscript_(v50, v61, v60, @"tokenRegistered");

  objc_msgSend_insertOrReplaceInto_values_(v3, v62, @"AppContainerAccount", v50);
  v63 = *MEMORY[0x277D85DE8];
}

void sub_225156F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225156F64(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_datePropertyForKey_(*(a1 + 32), a2, @"lastTokenUpdate");
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void sub_2251574B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2251574C8(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_inlock_applicationMetadataForApplicationID_(*(a1 + 32), a2, *(a1 + 40));
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void sub_2251575F0(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_inlock_applicationMetadataForApplicationID_(*(a1 + 32), a2, *(a1 + 40));
  v4 = objc_opt_new();
  objc_msgSend_setObject_forKeyedSubscript_(v4, v5, *(a1 + 40), @"applicationID");
  v8 = objc_msgSend_adopterProcessType(*(a1 + 48), v6, v7);
  v13 = objc_msgSend_adopterProcessType(v3, v9, v10);
  v14 = MEMORY[0x277CCABB0];
  v15 = v3;
  v16 = v8 != v13;
  if (v8 != v13)
  {
    v15 = *(a1 + 48);
  }

  v17 = objc_msgSend_adopterProcessType(v15, v11, v12);
  v19 = objc_msgSend_numberWithInteger_(v14, v18, v17);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v20, v19, @"adopterProcessType");

  v23 = objc_msgSend_applicationContainerPath(*(a1 + 48), v21, v22);
  v26 = objc_msgSend_applicationContainerPath(v3, v24, v25);
  v29 = v26;
  if (v23 == v26)
  {

    v38 = v3;
  }

  else
  {
    v30 = objc_msgSend_applicationContainerPath(*(a1 + 48), v27, v28);
    v33 = objc_msgSend_applicationContainerPath(v3, v31, v32);
    isEqualToString = objc_msgSend_isEqualToString_(v30, v34, v33);

    v38 = v3;
    if ((isEqualToString & 1) == 0)
    {
      v16 = 1;
      objc_msgSend_applicationContainerPath(*(a1 + 48), v36, v37);
      goto LABEL_8;
    }
  }

  objc_msgSend_applicationContainerPath(v38, v36, v37);
  v39 = LABEL_8:;
  v41 = v39;
  if (v39)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v40, v39, @"applicationContainerPath");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v40, &stru_28385ED00, @"applicationContainerPath");
  }

  v44 = objc_msgSend_clientSDKVersion(*(a1 + 48), v42, v43);
  v49 = objc_msgSend_clientSDKVersion(v3, v45, v46);
  v50 = MEMORY[0x277CCABB0];
  v51 = v3;
  if (v44 != v49)
  {
    v51 = *(a1 + 48);
    v16 = 1;
  }

  v52 = objc_msgSend_clientSDKVersion(v51, v47, v48);
  v54 = objc_msgSend_numberWithUnsignedInt_(v50, v53, v52);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v55, v54, @"clientSDKVersion");

  v58 = objc_msgSend_containingBundleID(*(a1 + 48), v56, v57);
  v61 = objc_msgSend_containingBundleID(v3, v59, v60);
  v64 = v61;
  if (v58 == v61)
  {

    v73 = v3;
  }

  else
  {
    v65 = objc_msgSend_containingBundleID(*(a1 + 48), v62, v63);
    v68 = objc_msgSend_containingBundleID(v3, v66, v67);
    v70 = objc_msgSend_isEqualToString_(v65, v69, v68);

    v73 = v3;
    if ((v70 & 1) == 0)
    {
      v16 = 1;
      objc_msgSend_containingBundleID(*(a1 + 48), v71, v72);
      goto LABEL_18;
    }
  }

  objc_msgSend_containingBundleID(v73, v71, v72);
  v74 = LABEL_18:;
  v76 = v74;
  if (v74)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v75, v74, @"containingBundleID");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v75, &stru_28385ED00, @"containingBundleID");
  }

  v79 = objc_msgSend_entitlements(*(a1 + 48), v77, v78);
  v82 = objc_msgSend_entitlements(v3, v80, v81);
  v85 = v82;
  if (v79 == v82)
  {

    v94 = v3;
  }

  else
  {
    v86 = objc_msgSend_entitlements(*(a1 + 48), v83, v84);
    v89 = objc_msgSend_entitlements(v3, v87, v88);
    isEqual = objc_msgSend_isEqual_(v86, v90, v89);

    v94 = v3;
    if ((isEqual & 1) == 0)
    {
      v16 = 1;
      objc_msgSend_entitlements(*(a1 + 48), v92, v93);
      goto LABEL_26;
    }
  }

  objc_msgSend_entitlements(v94, v92, v93);
  v95 = LABEL_26:;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v96, v95, @"entitlements");

  isClientMainBundleAppleExecutable = objc_msgSend_isClientMainBundleAppleExecutable(*(a1 + 48), v97, v98);
  v102 = objc_msgSend_isClientMainBundleAppleExecutable(v3, v100, v101);
  v105 = MEMORY[0x277CCABB0];
  if (isClientMainBundleAppleExecutable != v102)
  {
    v106 = objc_msgSend_isClientMainBundleAppleExecutable(*(a1 + 48), v103, v104);
    v108 = objc_msgSend_numberWithBool_(v105, v107, v106);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v109, v108, @"isMainBundleAppleExecutable");

LABEL_29:
    v114 = *(a1 + 32);
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = sub_225157A64;
    v117[3] = &unk_278546968;
    v118 = v4;
    v119 = *(a1 + 40);
    v116 = objc_msgSend_performDatabaseOperation_(v114, v115, v117);

    goto LABEL_30;
  }

  v110 = objc_msgSend_isClientMainBundleAppleExecutable(v3, v103, v104);
  v112 = objc_msgSend_numberWithBool_(v105, v111, v110);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v113, v112, @"isMainBundleAppleExecutable");

  if (v16)
  {
    goto LABEL_29;
  }

LABEL_30:
}

void sub_225157A64(uint64_t a1, void *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_insertOrReplaceInto_values_(v4, v5, @"AppBundle", v3);
  v6 = *(a1 + 40);
  v28 = @"applicationID";
  v29[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v29, &v28, 1);
  v10 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v9, v8);
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%@ = %@", @"tokenRegistered", &unk_2838C8340);
  v15 = objc_msgSend_v1(v10, v13, v14);
  v18 = objc_msgSend_v2(v10, v16, v17);
  objc_msgSend_update_set_where_bindings_limit_(v4, v19, @"AppContainerAccount", v12, v15, v18, 0);

  v22 = objc_msgSend_v1(v10, v20, v21);
  v25 = objc_msgSend_v2(v10, v23, v24);
  objc_msgSend_deleteFrom_where_bindings_(v4, v26, @"PushTokens", v22, v25);

  v27 = *MEMORY[0x277D85DE8];
}

void sub_225157CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225157D10(uint64_t a1, const char *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v12[0] = @"applicationID";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v12, 1);
  v6 = objc_msgSend_select_from_(v3, v5, v4, @"AppBundle");

  v8 = objc_msgSend_CKCompactMap_(v6, v7, &unk_28385CA00);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

id sub_225157DE4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKDApplicationID alloc];
  v5 = objc_msgSend_objectForKeyedSubscript_(v2, v4, @"applicationID");

  v7 = objc_msgSend_initWithSqliteRepresentation_(v3, v6, v5);

  return v7;
}

void sub_225157F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225157F84(uint64_t a1, const char *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@ IS NOT NULL AND %@ != ", @"applicationContainerPath", @"applicationContainerPath");
  v4 = *(a1 + 32);
  v14[0] = @"applicationID";
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v14, 1);
  v8 = objc_msgSend_select_from_where_bindings_(v4, v7, v6, @"AppBundle", v3, 0);

  v10 = objc_msgSend_CKCompactMap_(v8, v9, &unk_28385CA20);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *MEMORY[0x277D85DE8];
}

id sub_22515808C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKDApplicationID alloc];
  v5 = objc_msgSend_objectForKeyedSubscript_(v2, v4, @"applicationID");

  v7 = objc_msgSend_initWithSqliteRepresentation_(v3, v6, v5);

  return v7;
}

void sub_2251581C4(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225158254;
  v4[3] = &unk_2785468F8;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = objc_msgSend_performDatabaseOperation_(v1, v2, v4);
}

void sub_225158254(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v17 = @"applicationID";
  v18[0] = v2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v3, v5, v18, &v17, 1);
  v8 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v7, v6);
  v11 = objc_msgSend_v1(v8, v9, v10);
  v14 = objc_msgSend_v2(v8, v12, v13);
  objc_msgSend_deleteFrom_where_bindings_(v4, v15, @"AppBundle", v11, v14);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_225158454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22515846C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v10 = objc_msgSend_selectAllObjectsOfClass_(v2, v4, v3);
  v7 = objc_msgSend_lastObject(v10, v5, v6);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_2251585C4(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225158654;
  v4[3] = &unk_2785468F8;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = objc_msgSend_performDatabaseOperation_(v1, v2, v4);
}

void sub_225158654(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_msgSend_deleteFrom_where_bindings_(v7, v3, @"ServerConfiguration", @"1", 0);
  objc_msgSend_deleteFrom_where_bindings_(v7, v4, @"VerifiedPublicKey", @"1", 0);
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_insertOrReplaceObject_(v7, v5, v6);
  }
}

void sub_22515887C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225158894(void *a1, const char *a2)
{
  v57[2] = *MEMORY[0x277D85DE8];
  v56[0] = @"keyType";
  v56[1] = @"keyID";
  v3 = a1[5];
  v57[0] = a1[4];
  v57[1] = v3;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v57, v56, 2);
  v6 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v5, v4);
  v7 = a1[6];
  v10 = objc_msgSend_v1(v6, v8, v9);
  v13 = objc_msgSend_v2(v6, v11, v12);
  v15 = objc_msgSend_selectAllFrom_where_bindings_(v7, v14, @"VerifiedPublicKey", v10, v13);

  if (objc_msgSend_count(v15, v16, v17) >= 2)
  {
    v51 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v51, v52, a1[8], a1[6], @"CKDMetadataCache.m", 798, @"Unique constraint violation in public key table");
  }

  v20 = objc_msgSend_firstObject(v15, v18, v19);
  v22 = v20;
  if (v20)
  {
    v23 = objc_msgSend_objectForKeyedSubscript_(v20, v21, @"keyExpiration");
    v26 = objc_msgSend_integerValue(v23, v24, v25);

    v28 = objc_msgSend_objectForKeyedSubscript_(v22, v27, @"protectionSource");
    if (objc_msgSend_length(v28, v29, v30))
    {
      v31 = v28;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    v54 = objc_alloc(MEMORY[0x277CBC568]);
    v53 = objc_msgSend_objectForKeyedSubscript_(v22, v33, @"publicKey");
    v35 = objc_msgSend_objectForKeyedSubscript_(v22, v34, @"keyVersion");
    v38 = objc_msgSend_integerValue(v35, v36, v37);
    objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v39, v40, v26);
    v41 = v55 = v4;
    objc_msgSend_objectForKeyedSubscript_(v22, v42, @"keyCert");
    v43 = v15;
    v45 = v44 = v6;
    v47 = objc_msgSend_initWithPublicKey_version_expiration_certificateData_protectionSource_(v54, v46, v53, v38, v41, v45, v32);

    v48 = *(a1[7] + 8);
    v49 = *(v48 + 40);
    *(v48 + 40) = v47;

    v6 = v44;
    v15 = v43;

    v4 = v55;
  }

  v50 = *MEMORY[0x277D85DE8];
}

void sub_225158C98(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_225158D54;
  v5[3] = &unk_278546A78;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4 = objc_msgSend_performDatabaseOperation_(v2, v3, v5);
}

void sub_225158D54(uint64_t a1, void *a2)
{
  v52[7] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v51[0] = @"keyType";
    v51[1] = @"keyID";
    v4 = *(a1 + 48);
    v52[0] = *(a1 + 40);
    v52[1] = v4;
    v51[2] = @"publicKey";
    v5 = a2;
    v8 = objc_msgSend_publicKey(v3, v6, v7);
    v52[2] = v8;
    v51[3] = @"keyVersion";
    v9 = MEMORY[0x277CCABB0];
    v12 = objc_msgSend_version(*(a1 + 32), v10, v11);
    v14 = objc_msgSend_numberWithInteger_(v9, v13, v12);
    v52[3] = v14;
    v51[4] = @"keyExpiration";
    v15 = MEMORY[0x277CCABB0];
    v18 = objc_msgSend_expiration(*(a1 + 32), v16, v17);
    objc_msgSend_timeIntervalSince1970(v18, v19, v20);
    v23 = objc_msgSend_numberWithDouble_(v15, v21, v22);
    v52[4] = v23;
    v51[5] = @"keyCert";
    v26 = objc_msgSend_certData(*(a1 + 32), v24, v25);
    v52[5] = v26;
    v51[6] = @"protectionSource";
    v29 = objc_msgSend_protectionSource(*(a1 + 32), v27, v28);
    v31 = v29;
    v32 = &stru_28385ED00;
    if (v29)
    {
      v32 = v29;
    }

    v52[6] = v32;
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v52, v51, 7);
    objc_msgSend_insertOrReplaceInto_values_(v5, v34, @"VerifiedPublicKey", v33);
  }

  else
  {
    v35 = *(a1 + 48);
    v26 = a2;
    if (objc_msgSend_isEqualToString_(v35, v36, @"*") && CKIsRunningInTestHost())
    {
      v38 = *(a1 + 40);
      v49 = @"keyType";
      v50 = v38;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, &v50, &v49, 1);
    }

    else
    {
      v47[0] = @"keyType";
      v47[1] = @"keyID";
      v39 = *(a1 + 48);
      v48[0] = *(a1 + 40);
      v48[1] = v39;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v48, v47, 2);
    }
    v8 = ;
    v14 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v40, v8);
    v18 = objc_msgSend_v1(v14, v41, v42);
    v23 = objc_msgSend_v2(v14, v43, v44);
    objc_msgSend_deleteFrom_where_bindings_(v26, v45, @"VerifiedPublicKey", v18, v23);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void sub_2251590E0(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_225159170;
  v3[3] = &unk_2785468D0;
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  objc_msgSend__enumerateContainerServerInfo_bindings_usingBlock_(v1, v2, 0, 0, v3);
}

void sub_225159364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225159388(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_v3(a2, a2, a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_225159588(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  v8 = objc_msgSend_objectForKeyedSubscript_(v58, v7, @"containerID");
  v10 = objc_msgSend_objectForKeyedSubscript_(v58, v9, @"accountID");
  v11 = objc_alloc_init(CKDContainerServerInfo);
  v13 = objc_msgSend_objectForKeyedSubscript_(v58, v12, @"publicCloudDBURL");
  if (objc_msgSend_length(v13, v14, v15))
  {
    v17 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v16, v13);
    objc_msgSend_setPublicCloudDBURL_(v11, v18, v17);
  }

  v19 = objc_msgSend_objectForKeyedSubscript_(v58, v16, @"publicShareServiceURL");

  if (objc_msgSend_length(v19, v20, v21))
  {
    v23 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v22, v19);
    objc_msgSend_setPublicShareServiceURL_(v11, v24, v23);
  }

  v25 = objc_msgSend_objectForKeyedSubscript_(v58, v22, @"publicDeviceServiceURL");

  if (objc_msgSend_length(v25, v26, v27))
  {
    v29 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v28, v25);
    objc_msgSend_setPublicDeviceServiceURL_(v11, v30, v29);
  }

  v31 = objc_msgSend_objectForKeyedSubscript_(v58, v28, @"publicCodeServiceURL");

  if (objc_msgSend_length(v31, v32, v33))
  {
    v35 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v34, v31);
    objc_msgSend_setPublicCodeServiceURL_(v11, v36, v35);
  }

  v37 = objc_msgSend_objectForKeyedSubscript_(v58, v34, @"publicMetricsServiceURL");

  if (objc_msgSend_length(v37, v38, v39))
  {
    v41 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v40, v37);
    objc_msgSend_setPublicMetricsServiceURL_(v11, v42, v41);
  }

  v43 = objc_msgSend_objectForKeyedSubscript_(v58, v40, @"scopedUserID");
  objc_msgSend_setContainerScopedUserID_(v11, v44, v43);

  v46 = objc_msgSend_objectForKeyedSubscript_(v58, v45, @"orgAdminUserID");
  objc_msgSend_setOrgAdminUserID_(v11, v47, v46);

  v49 = objc_msgSend_objectForKeyedSubscript_(v58, v48, @"environment");

  if (v49)
  {
    v51 = objc_msgSend_objectForKeyedSubscript_(v58, v50, @"environment");
    v52 = CKServerEnvironmentFromString();
    objc_msgSend_setEnvironment_(v11, v53, v52);
  }

  v54 = *(a1 + 32);
  v55 = objc_alloc(MEMORY[0x277CBC7A8]);
  v57 = objc_msgSend_initWithObject1_object2_object3_(v55, v56, v8, v10, v11);
  (*(v54 + 16))(v54, v57, a3, a4);
}

void sub_225159A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225159A4C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_inlock_containerServerInfoForContainerID_accountID_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48));
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void sub_225159BE0(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225159D98;
  v16[3] = &unk_278546B18;
  v3 = *(a1 + 32);
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v15 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v17 = v15;
  v18 = v7;
  v9 = objc_msgSend_performDatabaseOperation_(v3, v8, v16);
  if (v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      *buf = 138413058;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v9;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Failed to set container server info %@ for container %@:%@ with error: %@", buf, 0x2Au);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_225159D98(uint64_t a1, void *a2)
{
  v113[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (*(a1 + 32))
  {
    v5 = objc_msgSend_inlock_containerServerInfoForContainerID_accountID_(*(a1 + 40), v3, *(a1 + 48), *(a1 + 56));
    v6 = objc_opt_new();
    objc_msgSend_setObject_forKeyedSubscript_(v6, v7, *(a1 + 48), @"containerID");
    objc_msgSend_setObject_forKeyedSubscript_(v6, v8, *(a1 + 56), @"accountID");
    v11 = objc_msgSend_publicCloudDBURL(*(a1 + 32), v9, v10);

    if (v11)
    {
      objc_msgSend_publicCloudDBURL(*(a1 + 32), v12, v13);
    }

    else
    {
      v23 = objc_msgSend_publicCloudDBURL(v5, v12, v13);
      v26 = objc_msgSend_absoluteString(v23, v24, v25);

      if (!v26)
      {
        goto LABEL_8;
      }

      objc_msgSend_publicCloudDBURL(v5, v27, v28);
    }
    v29 = ;
    v32 = objc_msgSend_absoluteString(v29, v30, v31);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v33, v32, @"publicCloudDBURL");

LABEL_8:
    v34 = objc_msgSend_publicShareServiceURL(*(a1 + 32), v27, v28);

    if (v34)
    {
      objc_msgSend_publicShareServiceURL(*(a1 + 32), v35, v36);
    }

    else
    {
      v37 = objc_msgSend_publicShareServiceURL(v5, v35, v36);
      v40 = objc_msgSend_absoluteString(v37, v38, v39);

      if (!v40)
      {
        goto LABEL_13;
      }

      objc_msgSend_publicShareServiceURL(v5, v41, v42);
    }
    v43 = ;
    v46 = objc_msgSend_absoluteString(v43, v44, v45);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v47, v46, @"publicShareServiceURL");

LABEL_13:
    v48 = objc_msgSend_publicDeviceServiceURL(*(a1 + 32), v41, v42);

    if (v48)
    {
      objc_msgSend_publicDeviceServiceURL(*(a1 + 32), v49, v50);
    }

    else
    {
      v51 = objc_msgSend_publicDeviceServiceURL(v5, v49, v50);
      v54 = objc_msgSend_absoluteString(v51, v52, v53);

      if (!v54)
      {
        goto LABEL_18;
      }

      objc_msgSend_publicDeviceServiceURL(v5, v55, v56);
    }
    v57 = ;
    v60 = objc_msgSend_absoluteString(v57, v58, v59);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v61, v60, @"publicDeviceServiceURL");

LABEL_18:
    v62 = objc_msgSend_publicCodeServiceURL(*(a1 + 32), v55, v56);

    if (v62)
    {
      objc_msgSend_publicCodeServiceURL(*(a1 + 32), v63, v64);
    }

    else
    {
      v65 = objc_msgSend_publicCodeServiceURL(v5, v63, v64);
      v68 = objc_msgSend_absoluteString(v65, v66, v67);

      if (!v68)
      {
        goto LABEL_23;
      }

      objc_msgSend_publicCodeServiceURL(v5, v69, v70);
    }
    v71 = ;
    v74 = objc_msgSend_absoluteString(v71, v72, v73);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v75, v74, @"publicCodeServiceURL");

LABEL_23:
    v76 = objc_msgSend_publicMetricsServiceURL(*(a1 + 32), v69, v70);

    if (v76)
    {
      objc_msgSend_publicMetricsServiceURL(*(a1 + 32), v77, v78);
    }

    else
    {
      v79 = objc_msgSend_publicMetricsServiceURL(v5, v77, v78);
      v82 = objc_msgSend_absoluteString(v79, v80, v81);

      if (!v82)
      {
        goto LABEL_28;
      }

      objc_msgSend_publicMetricsServiceURL(v5, v83, v84);
    }
    v85 = ;
    v88 = objc_msgSend_absoluteString(v85, v86, v87);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v89, v88, @"publicMetricsServiceURL");

LABEL_28:
    v90 = objc_msgSend_containerScopedUserID(*(a1 + 32), v83, v84);

    if (v90)
    {
      objc_msgSend_containerScopedUserID(*(a1 + 32), v91, v92);
    }

    else
    {
      v93 = objc_msgSend_containerScopedUserID(v5, v91, v92);

      if (!v93)
      {
        goto LABEL_33;
      }

      objc_msgSend_containerScopedUserID(v5, v94, v95);
    }
    v96 = ;
    objc_msgSend_setObject_forKeyedSubscript_(v6, v97, v96, @"scopedUserID");

LABEL_33:
    v98 = objc_msgSend_orgAdminUserID(*(a1 + 32), v94, v95);

    if (v98)
    {
      objc_msgSend_orgAdminUserID(*(a1 + 32), v99, v100);
    }

    else
    {
      v101 = objc_msgSend_orgAdminUserID(v5, v99, v100);

      if (!v101)
      {
        goto LABEL_38;
      }

      objc_msgSend_orgAdminUserID(v5, v102, v103);
    }
    v104 = ;
    objc_msgSend_setObject_forKeyedSubscript_(v6, v105, v104, @"orgAdminUserID");

LABEL_38:
    if (objc_msgSend_environment(*(a1 + 32), v102, v103) == -1)
    {
      if (!v5 || objc_msgSend_environment(v5, v106, v107) == -1)
      {
        goto LABEL_41;
      }

      objc_msgSend_environment(v5, v106, v111);
    }

    else
    {
      objc_msgSend_environment(*(a1 + 32), v106, v107);
    }

    v108 = CKStringFromServerEnvironment();
    objc_msgSend_setObject_forKeyedSubscript_(v6, v109, v108, @"environment");

LABEL_41:
    objc_msgSend_insertOrReplaceInto_values_(v4, v106, @"ContainerServerInfo", v6);
    goto LABEL_42;
  }

  v14 = *(a1 + 48);
  v112 = @"containerID";
  v113[0] = v14;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v113, &v112, 1);
  v6 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v15, v5);
  v18 = objc_msgSend_v1(v6, v16, v17);
  v21 = objc_msgSend_v2(v6, v19, v20);
  objc_msgSend_deleteFrom_where_bindings_(v4, v22, @"ContainerServerInfo", v18, v21);

LABEL_42:
  v110 = *MEMORY[0x277D85DE8];
}

void sub_22515A348(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22515A3D8;
  v4[3] = &unk_2785468F8;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = objc_msgSend_performDatabaseOperation_(v1, v2, v4);
}

void sub_22515A3D8(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v31 = @"containerID";
  v32[0] = v2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v3, v5, v32, &v31, 1);
  v8 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v7, v6);
  v11 = objc_msgSend_v1(v8, v9, v10);
  v14 = objc_msgSend_v2(v8, v12, v13);
  objc_msgSend_deleteFrom_where_bindings_(v4, v15, @"ContainerServerInfo", v11, v14);

  v18 = objc_msgSend_v1(v8, v16, v17);
  v21 = objc_msgSend_v2(v8, v19, v20);
  objc_msgSend_deleteFrom_where_bindings_(v4, v22, @"AppContainerAccount", v18, v21);

  v25 = objc_msgSend_v1(v8, v23, v24);
  v28 = objc_msgSend_v2(v8, v26, v27);
  objc_msgSend_deleteFrom_where_bindings_(v4, v29, @"PushTokens", v25, v28);

  v30 = *MEMORY[0x277D85DE8];
}

void sub_22515A62C(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22515A6D4;
  v5[3] = &unk_278546968;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v4 = objc_msgSend_performDatabaseOperation_(v2, v3, v5);
}

void sub_22515A6D4(uint64_t a1, void *a2, void *a3)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = a3;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v9)
  {
    if (v8)
    {
      v24[0] = @"accountID";
      v24[1] = @"DSID";
      v25[0] = v8;
      v25[1] = v9;
      v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v25, v24, 2);
      objc_msgSend_insertOrReplaceInto_values_(v5, v11, @"DSIDMap", v10);
LABEL_6:
    }
  }

  else if (v8)
  {
    v22 = @"accountID";
    v23 = v8;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, &v23, &v22, 1);
    v13 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v12, v10);
    v16 = objc_msgSend_v1(v13, v14, v15);
    v19 = objc_msgSend_v2(v13, v17, v18);
    objc_msgSend_deleteFrom_where_bindings_(v5, v20, @"DSIDMap", v16, v19);

    goto LABEL_6;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_22515A974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22515A98C(void *a1, const char *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v28 = @"accountID";
  v29[0] = v3;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v29, &v28, 1);
  v6 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v5, v4);
  v7 = a1[5];
  v27 = @"DSID";
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, &v27, 1);
  v12 = objc_msgSend_v1(v6, v10, v11);
  v15 = objc_msgSend_v2(v6, v13, v14);
  v17 = objc_msgSend_select_from_where_bindings_(v7, v16, v9, @"DSIDMap", v12, v15);

  if (objc_msgSend_count(v17, v18, v19))
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(v17, v20, 0);
    v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, @"DSID");
    v24 = *(a1[6] + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_22515AE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = *(a1 + 40);
    v5 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
    (*(v4 + 16))(v4, v5);
  }
}

void sub_22515B170(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cacheDelegateQueue(*(a1 + 32), a2, a3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22515B240;
  block[3] = &unk_278546BB8;
  v7 = *(a1 + 32);
  v5 = *(&v7 + 1);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *(a1 + 56);
  v9 = v7;
  v10 = v6;
  dispatch_sync(v4, block);
}

void sub_22515B240(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22515B3F0;
  v26[3] = &unk_278546B68;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *&v9 = *(a1 + 32);
  *(&v9 + 1) = *(a1 + 56);
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v27 = v10;
  v28 = v9;
  objc_msgSend_performWithDelegate_(v6, v11, v26);
  v12 = [CKDOperationInfoDelegateWrapper alloc];
  v14 = objc_msgSend_initWithDelegate_(v12, v13, *(a1 + 48));
  v17 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 32), v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v17, v18, v14, *(a1 + 40));

  v21 = objc_msgSend_cacheQueue(*(a1 + 32), v19, v20);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22515B570;
  block[3] = &unk_278546990;
  v22 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v24 = v22;
  v25 = *(a1 + 48);
  dispatch_async(v21, block);
}

void sub_22515B3F0(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if (objc_msgSend_isInvalidated(v3, v4, v5))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v9 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        *buf = 138543874;
        v21 = v18;
        v22 = 2112;
        v23 = v6;
        v24 = 2112;
        v25 = v19;
        _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "An existing invalidated proxy operation was found for operation %{public}@: %@. Unregistering that operation and setting %@ as the new delegate", buf, 0x20u);
      }

      v12 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 48), v10, v11);
      objc_msgSend_setObject_forKeyedSubscript_(v12, v13, 0, *(a1 + 32));

      objc_msgSend_wasUnexpectedlyUnregisteredForOperationID_(v6, v14, *(a1 + 32));
    }

    else
    {
      v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, *(a1 + 56), *(a1 + 48), @"CKDOperationInfoCache.m", 159, @"A valid delegate is already registered (%@) for operation ID %@", v6, *(a1 + 32));
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_22515B570(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22515B620;
  v5[3] = &unk_278546B90;
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  objc_msgSend__locked_enumerateCallbacksForOperationWithID_usingBlock_(v2, v4, v3, v5);
}

void sub_22515B708(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 32), a2, a3);
  v14 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  v8 = objc_msgSend_delegate(v14, v6, v7);
  v9 = *(a1 + 48);

  if (v8 == v9)
  {
    v12 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 32), v10, v11);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v13, 0, *(a1 + 40));
  }
}

void sub_22515B8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22515B8F4(void *a1, const char *a2)
{
  v41[3] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@ = ?", @"operationID");
  v4 = a1[4];
  v41[0] = @"operationInfo";
  v41[1] = @"retryNumber";
  v41[2] = @"lastAttemptDate";
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v41, 3);
  v40 = a1[5];
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, &v40, 1);
  v10 = objc_msgSend_select_from_where_bindings_(v4, v9, v6, @"OperationInfo", v3, v8);

  if (objc_msgSend_count(v10, v11, v12))
  {
    v15 = objc_msgSend_firstObject(v10, v13, v14);
    if (v15)
    {
      v17 = v15;
      v18 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"operationInfo");
      v20 = objc_msgSend_objectForKeyedSubscript_(v17, v19, @"retryNumber");
      v22 = objc_msgSend_objectForKeyedSubscript_(v17, v21, @"lastAttemptDate");
      objc_msgSend_doubleValue(v22, v23, v24);
      v26 = v25;

      v29 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v27, v28, v26);
      if (v18 && v20)
      {
        v30 = [CKDOperationInfoMetadata alloc];
        AttemptDate_retryNumber = objc_msgSend_initWithOperationInfo_lastAttemptDate_retryNumber_(v30, v31, v18, v29, v20);
        v33 = *(a1[6] + 8);
        v34 = *(v33 + 40);
        *(v33 + 40) = AttemptDate_retryNumber;
      }
    }
  }

  if (!*(*(a1[6] + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v35 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v36 = a1[5];
      *buf = 138543362;
      v39 = v36;
      _os_log_impl(&dword_22506F000, v35, OS_LOG_TYPE_INFO, "Couldn't find metadata for operation %{public}@", buf, 0xCu);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

void sub_22515BC90(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v12[0] = *(a1 + 40);
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v7 = objc_msgSend_arrayWithObjects_count_(v4, v6, v12, 1);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22515BDA0;
  v10[3] = &unk_278546BE0;
  v11 = *(a1 + 48);
  objc_msgSend_selectFrom_where_bindings_orderBy_limit_block_(v5, v8, @"Callback", v3, v7, 0, 0, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22515BDA0(uint64_t a1, void *a2, _BYTE *a3)
{
  if (a2)
  {
    v5 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"callback");
    v6 = MEMORY[0x277CCAAC8];
    v7 = objc_opt_class();
    v9 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v6, v8, v7, v5, 0);
    if (v9)
    {
      v11 = 0;
      v10 = *(a1 + 32);
      if (v10)
      {
        (*(v10 + 16))(v10, v9, &v11);
        if (v11)
        {
          *a3 = 1;
        }
      }
    }
  }
}

void sub_22515C01C(uint64_t a1, const char *a2)
{
  v101[7] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v101[0] = @"applicationID";
  v101[1] = @"personaID";
  v101[2] = @"containerID";
  v101[3] = @"accountID";
  v101[4] = @"operationInfo";
  v101[5] = @"lastAttemptDate";
  v101[6] = @"retryNumber";
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v101, 7);
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"%@ = 0", @"operationIsComplete");
  v7 = objc_msgSend_select_from_where_bindings_(v2, v6, v3, @"OperationInfo", v5, 0);

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v7;
  v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v89, v100, 16);
  if (v80)
  {
    v79 = *v90;
    do
    {
      v9 = 0;
      do
      {
        if (*v90 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v89 + 1) + 8 * v9);
        v11 = [CKDApplicationID alloc];
        v13 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"applicationID");
        v83 = objc_msgSend_initWithSqliteRepresentation_(v11, v14, v13);

        v16 = objc_msgSend_objectForKeyedSubscript_(v10, v15, @"personaID");
        v17 = objc_alloc(MEMORY[0x277CBC220]);
        v19 = objc_msgSend_objectForKeyedSubscript_(v10, v18, @"containerID");
        v82 = objc_msgSend_initWithSqliteRepresentation_(v17, v20, v19);

        v22 = objc_msgSend_objectForKeyedSubscript_(v10, v21, @"accountID");
        v81 = objc_msgSend_objectForKeyedSubscript_(v10, v23, @"retryNumber");
        v25 = objc_msgSend_objectForKeyedSubscript_(v10, v24, @"lastAttemptDate");
        objc_msgSend_doubleValue(v25, v26, v27);
        v29 = v28;

        v33 = objc_msgSend_objectForKeyedSubscript_(v10, v30, @"operationInfo");
        if (v33)
        {
          v34 = MEMORY[0x277CCAAC8];
          v35 = objc_opt_class();
          v37 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v34, v36, v35, v33, 0);
        }

        else
        {
          v37 = 0;
        }

        v38 = objc_msgSend_CKNilIfLengthZero(v16, v31, v32);

        v41 = objc_msgSend_CKNilIfLengthZero(v22, v39, v40);

        if (v83 && v82 && v37)
        {
          *&v95 = 0;
          *(&v95 + 1) = &v95;
          v96 = 0x3032000000;
          v97 = sub_225073F30;
          v98 = sub_225073524;
          v99 = 0;
          v44 = objc_msgSend_cacheDelegateQueue(*(a1 + 32), v42, v43);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_22515C764;
          block[3] = &unk_278546420;
          v45 = *(a1 + 32);
          v88 = &v95;
          block[4] = v45;
          v46 = v37;
          v87 = v46;
          dispatch_sync(v44, block);

          if (*(*(&v95 + 1) + 40))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v47 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              v50 = objc_msgSend_operationID(v46, v48, v49);
              *buf = 138543362;
              v94 = v50;
              _os_log_impl(&dword_22506F000, v47, OS_LOG_TYPE_INFO, "Not returning operation %{public}@ as resumable since it has a delegate", buf, 0xCu);
            }
          }

          else
          {
            v52 = [CKDAppContainerTuple alloc];
            v47 = objc_msgSend_initWithApplicationID_containerID_personaID_(v52, v53, v83, v82, v38);
            v54 = [CKDAppContainerAccountTuple alloc];
            v56 = objc_msgSend_initWithAppContainerTuple_accountID_(v54, v55, v47, v41);
            v57 = [CKDOperationInfoMetadata alloc];
            v60 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v58, v59, v29);
            AttemptDate_retryNumber = objc_msgSend_initWithOperationInfo_lastAttemptDate_retryNumber_(v57, v61, v46, v60, v81);

            objc_msgSend_setObject_forKey_(*(a1 + 40), v63, AttemptDate_retryNumber, v56);
          }

          _Block_object_dispose(&v95, 8);
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v51 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            LODWORD(v95) = 138412290;
            *(&v95 + 4) = v10;
            _os_log_error_impl(&dword_22506F000, v51, OS_LOG_TYPE_ERROR, "Operation info entry is corrupted: %@", &v95, 0xCu);
          }
        }

        ++v9;
      }

      while (v80 != v9);
      v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v64, &v89, v100, 16);
    }

    while (v80);
  }

  if (*(a1 + 48) == 1)
  {
    v67 = objc_msgSend_allValues(*(a1 + 40), v65, v66);
    v69 = objc_msgSend_valueForKey_(v67, v68, @"operationInfo");
    v71 = objc_msgSend_valueForKey_(v69, v70, @"operationID");
    v72 = *(a1 + 32);
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_22515C7E8;
    v84[3] = &unk_2785468F8;
    v85 = v71;
    v73 = v71;
    v75 = objc_msgSend_performDatabaseOperation_(v72, v74, v84);
  }

  v76 = *MEMORY[0x277D85DE8];
}

void sub_22515C764(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_operationID(*(a1 + 40), v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v11, v7, v6);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_22515C7E8(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v19, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v18 = *(*(&v14 + 1) + 8 * v10);
        v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, &v18, 1, v14);
        objc_msgSend_deleteFrom_where_bindings_(v3, v12, @"Callback", @"operationID = ?", v11);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v14, v19, 16);
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22515CA20(uint64_t a1, const char *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(*(a1 + 32), a2, a3))
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = *(a1 + 32);
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v42, v51, 16);
    if (v35)
    {
      v34 = *v43;
      do
      {
        v6 = 0;
        do
        {
          if (*v43 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v6;
          v7 = *(*(&v42 + 1) + 8 * v6);
          v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%@ = ?", @"operationID");
          v9 = *(a1 + 40);
          v50 = @"operationInfo";
          v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, &v50, 1);
          v49 = v7;
          v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v49, 1);
          v36 = v8;
          v15 = objc_msgSend_select_from_where_bindings_(v9, v14, v11, @"OperationInfo", v8, v13);

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v16 = v15;
          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v38, v48, 16);
          if (v18)
          {
            v20 = v18;
            v21 = *v39;
            do
            {
              v22 = 0;
              do
              {
                if (*v39 != v21)
                {
                  objc_enumerationMutation(v16);
                }

                v23 = *(*(&v38 + 1) + 8 * v22);
                v24 = objc_msgSend_objectForKeyedSubscript_(v23, v19, @"operationInfo");
                if (v24 && (v25 = MEMORY[0x277CCAAC8], v26 = objc_opt_class(), objc_msgSend_unarchivedObjectOfClass_fromData_error_(v25, v27, v26, v24, 0), (v28 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v30 = v28;
                  objc_msgSend_addObject_(*(a1 + 48), v29, v28);
                }

                else
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v31 = *MEMORY[0x277CBC830];
                  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v47 = v23;
                    _os_log_error_impl(&dword_22506F000, v31, OS_LOG_TYPE_ERROR, "Operation info entry is corrupted: %@", buf, 0xCu);
                  }
                }

                ++v22;
              }

              while (v20 != v22);
              v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v38, v48, 16);
            }

            while (v20);
          }

          v6 = v37 + 1;
        }

        while (v37 + 1 != v35);
        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v42, v51, 16);
      }

      while (v35);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_22515CE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22515CEA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v49[4] = *MEMORY[0x277D85DE8];
  v48[0] = @"applicationID";
  v4 = objc_msgSend_appContainerTuple(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_applicationID(v4, v5, v6);
  v49[0] = v7;
  v48[1] = @"personaID";
  v10 = objc_msgSend_appContainerTuple(*(a1 + 32), v8, v9);
  v13 = objc_msgSend_personaID(v10, v11, v12);
  v16 = v13;
  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = &stru_28385ED00;
  }

  v49[1] = v17;
  v48[2] = @"containerID";
  v18 = objc_msgSend_appContainerTuple(*(a1 + 32), v14, v15);
  v21 = objc_msgSend_containerID(v18, v19, v20);
  v49[2] = v21;
  v48[3] = @"accountID";
  v24 = objc_msgSend_accountID(*(a1 + 32), v22, v23);
  v26 = v24;
  if (v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = &stru_28385ED00;
  }

  v49[3] = v27;
  v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v49, v48, 4);

  v30 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v29, v28);
  v31 = *(a1 + 40);
  v47 = @"operationID";
  v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, &v47, 1);
  v36 = objc_msgSend_v1(v30, v34, v35);
  v39 = objc_msgSend_v2(v30, v37, v38);
  v41 = objc_msgSend_select_from_where_bindings_(v31, v40, v33, @"OperationInfo", v36, v39);

  v43 = objc_msgSend_CKCompactMap_(v41, v42, &unk_28385CA40);
  v44 = *(*(a1 + 48) + 8);
  v45 = *(v44 + 40);
  *(v44 + 40) = v43;

  v46 = *MEMORY[0x277D85DE8];
}

id sub_22515D0DC(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(v2, v3, @"operationID");
  if (!v4)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_error_impl(&dword_22506F000, v5, OS_LOG_TYPE_ERROR, "Unexpected operation info result: %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_22515D34C(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = a3;
  if (*(a1 + 32))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Removing all cached long-lived operation info for account ID %@", buf, 0xCu);
    }

    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%@ = ?", @"accountID");
    v22 = *(a1 + 32);
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v22, 1);
    objc_msgSend_deleteFrom_where_bindings_(v5, v14, @"OperationInfo", v11, v13);
  }

  else
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%@ < ?", @"expirationDate");
    v13 = objc_msgSend_date(MEMORY[0x277CBEAA8], v15, v16);
    v21 = v13;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, &v21, 1);
    objc_msgSend_deleteFrom_where_bindings_(v5, v19, @"OperationInfo", v11, v18);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_22515D65C(uint64_t a1, void *a2)
{
  v43[6] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = MEMORY[0x277CCAAB0];
    v5 = a2;
    v7 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v4, v6, v3, 1, 0);
    v8 = *(a1 + 48);
    v43[0] = *(a1 + 40);
    v42[0] = @"operationID";
    v42[1] = @"applicationID";
    v11 = objc_msgSend_appContainerTuple(v8, v9, v10);
    v14 = objc_msgSend_applicationID(v11, v12, v13);
    v43[1] = v14;
    v42[2] = @"personaID";
    v17 = objc_msgSend_appContainerTuple(*(a1 + 48), v15, v16);
    v20 = objc_msgSend_personaID(v17, v18, v19);
    v23 = v20;
    if (v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = &stru_28385ED00;
    }

    v43[2] = v24;
    v42[3] = @"containerID";
    v25 = objc_msgSend_appContainerTuple(*(a1 + 48), v21, v22);
    v28 = objc_msgSend_containerID(v25, v26, v27);
    v43[3] = v28;
    v42[4] = @"accountID";
    v31 = objc_msgSend_accountID(*(a1 + 48), v29, v30);
    v33 = v31;
    if (v31)
    {
      v34 = v31;
    }

    else
    {
      v34 = &stru_28385ED00;
    }

    v42[5] = @"operationInfo";
    v43[4] = v34;
    v43[5] = v7;
    v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, v43, v42, 6);
    objc_msgSend_insertOrReplaceInto_values_(v5, v36, @"OperationInfo", v35);
  }

  else
  {
    v41 = *(a1 + 40);
    v37 = MEMORY[0x277CBEA60];
    v11 = a2;
    v7 = objc_msgSend_arrayWithObjects_count_(v37, v38, &v41, 1);
    objc_msgSend_deleteFrom_where_bindings_(v11, v39, @"OperationInfo", @"operationID = ?", v7, v41);
  }

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22515D984(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  return MEMORY[0x2821F9670](a1[4], sel__lockedSetOperationInfo_forOperationID_appContainerAccountTuple_, a1[5]);
}

void sub_22515DC5C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22515DD2C;
  v8[3] = &unk_278546C58;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  objc_msgSend_performWithDelegate_(v6, v7, v8);
}

uint64_t sub_22515DD2C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
    return MEMORY[0x2821F9670](a2, sel_operationWithID_receivedCallback_, *(result + 32));
  }

  return result;
}

void sub_22515DD40(uint64_t a1, void *a2)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v36[0] = @"operationID";
  v36[1] = @"callback";
  v3 = *(a1 + 40);
  v37[0] = *(a1 + 32);
  v37[1] = v3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a2;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v37, v36, 2);
  objc_msgSend_insertOrReplaceInto_values_(v5, v8, @"Callback", v7);

  v35[0] = *(a1 + 32);
  v34[0] = @"operationID";
  v34[1] = @"applicationID";
  v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v9, @"applicationID");
  v35[1] = v10;
  v34[2] = @"personaID";
  v12 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v11, @"personaID");
  v14 = v12;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = &stru_28385ED00;
  }

  v35[2] = v15;
  v34[3] = @"containerID";
  v16 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v13, @"containerID");
  v35[3] = v16;
  v34[4] = @"accountID";
  v18 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v17, @"accountID");
  v20 = v18;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = &stru_28385ED00;
  }

  v35[4] = v21;
  v34[5] = @"operationInfo";
  v22 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v19, @"operationInfo");
  v35[5] = v22;
  v34[6] = @"operationIsComplete";
  v23 = MEMORY[0x277CCABB0];
  isCompletionCallback = objc_msgSend_isCompletionCallback(*(a1 + 56), v24, v25);
  v28 = objc_msgSend_numberWithBool_(v23, v27, isCompletionCallback);
  v34[7] = @"expirationDate";
  v29 = *(a1 + 64);
  v35[6] = v28;
  v35[7] = v29;
  v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v35, v34, 8);
  objc_msgSend_insertOrReplaceInto_values_(v5, v32, @"OperationInfo", v31);

  v33 = *MEMORY[0x277D85DE8];
}

void sub_22515E104(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__locked_operationInfoForID_(*(a1 + 32), a2, *(a1 + 40));
  if (v5)
  {
    v6 = objc_msgSend_cacheDelegateQueue(*(a1 + 32), v3, v4);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22515E294;
    block[3] = &unk_278546990;
    v7 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v12 = v7;
    v13 = v5;
    dispatch_sync(v6, block);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      *buf = 138543362;
      v15 = v10;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "Couldn't find an operation with ID %{public}@ to register a retry", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22515E294(uint64_t a1, const char *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 1;
  v4 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_22515E5C4;
  v34[3] = &unk_278546CA8;
  v34[4] = &v35;
  objc_msgSend_performWithDelegate_(v6, v7, v34);
  if (*(v36 + 24) == 1)
  {
    v10 = objc_msgSend_date(MEMORY[0x277CBEAA8], v8, v9);
    objc_msgSend_timeIntervalSince1970(v10, v11, v12);
    v14 = v13;

    v16 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v15, @"retryNumber");
    v19 = objc_msgSend_integerValue(v16, v17, v18);

    v20 = v19 + 1;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v22 = *(a1 + 40);
      *buf = 67109378;
      *v40 = v20;
      *&v40[4] = 2114;
      *&v40[6] = v22;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Registering retry number %d for operation %{public}@", buf, 0x12u);
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22515E5D8;
    v29[3] = &unk_278546CD0;
    v23 = *(a1 + 32);
    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v32 = v14;
    v33 = v20;
    v25 = objc_msgSend_performDatabaseOperation_(v23, v24, v29);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 40);
      *buf = 138543362;
      *v40 = v27;
      _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Not registering a retry for operation %{public}@ since we have an interested delegate", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v35, 8);
  v28 = *MEMORY[0x277D85DE8];
}

void sub_22515E59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22515E5C4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

void sub_22515E5D8(uint64_t a1, void *a2)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v29[0] = *(a1 + 32);
  v28[0] = @"operationID";
  v28[1] = @"applicationID";
  v4 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, @"applicationID");
  v29[1] = v6;
  v28[2] = @"personaID";
  v8 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v7, @"personaID");
  v10 = v8;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &stru_28385ED00;
  }

  v29[2] = v11;
  v28[3] = @"containerID";
  v12 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v9, @"containerID");
  v29[3] = v12;
  v28[4] = @"accountID";
  v14 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v13, @"accountID");
  v16 = v14;
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = &stru_28385ED00;
  }

  v29[4] = v17;
  v28[5] = @"operationInfo";
  v18 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v15, @"operationInfo");
  v29[5] = v18;
  v28[6] = @"lastAttemptDate";
  v21 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v19, v20, *(a1 + 48));
  v29[6] = v21;
  v28[7] = @"retryNumber";
  v23 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v22, *(a1 + 56));
  v29[7] = v23;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v29, v28, 8);
  objc_msgSend_insertOrReplaceInto_values_(v4, v26, @"OperationInfo", v25);

  v27 = *MEMORY[0x277D85DE8];
}

void sub_22515EB58(uint64_t a1, void *a2)
{
  v2 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_22506F000, v3, OS_LOG_TYPE_INFO, "Running operation info cache eviction", v13, 2u);
  }

  v6 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v4, v5);
  v9 = objc_msgSend_operationInfoCache(v6, v7, v8);
  objc_msgSend__expungeOperationInfoForDeletedAccountID_(v9, v10, 0);

  objc_msgSend_setTaskCompleted(v2, v11, v12);
}

void sub_22515F3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_22515F3EC(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = a2;
  v8 = a3;
  v9 = a1[4];
  if (!v9 || objc_msgSend_containsObject_(v9, v7, v15))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = *(*(a1[5] + 8) + 40);
      if (!v11)
      {
        v12 = objc_opt_new();
        v13 = *(a1[5] + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        v11 = *(*(a1[5] + 8) + 40);
      }

      objc_msgSend_addObject_(v11, v10, v8);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(a1[6] + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

void sub_22515F8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_22515F8D0(uint64_t a1, const char *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 32), a2, *(a1 + 40), off_27D719E98, &unk_28385CA80);
  v8 = objc_msgSend_nextObject(v3, v4, v5);
  if (!v8)
  {
    v14 = 0;
LABEL_11:
    v32 = 0;
    goto LABEL_12;
  }

  while (1)
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_knownUserKeys(v8, v6, v7);
    LOBYTE(v9) = objc_msgSend__cachedRecordKnownUserKeyData_satisfiesRequiredKeys_(v9, v11, v10, *(a1 + 48));

    if (v9)
    {
      break;
    }

    v14 = objc_msgSend_nextObject(v3, v12, v13);

    v8 = v14;
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  v15 = objc_msgSend_fetchCacheEntryRecordData_(*(a1 + 32), v12, v8);
  v16 = [CKDPRecord alloc];
  v19 = objc_msgSend_recordData(v8, v17, v18);
  v14 = objc_msgSend_initWithData_(v16, v20, v19);

  if (!v14)
  {
    goto LABEL_11;
  }

  v21 = [CKDProtocolTranslator alloc];
  v23 = objc_msgSend_initWithContainer_databaseScope_requireContainerScopedUserID_(v21, v22, *(a1 + 56), *(a1 + 80), 0);
  v26 = objc_msgSend_zoneID(*(a1 + 64), v24, v25);
  v29 = objc_msgSend_anonymousCKUserID(v26, v27, v28);
  v65 = 0;
  v31 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v23, v30, v14, v29, &v65);
  v32 = v65;
  v33 = *(*(a1 + 72) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v31;

  v36 = *(*(*(a1 + 72) + 8) + 40);
  if (v36)
  {
    objc_msgSend_setWasCached_(v36, v35, 1);
    v39 = objc_msgSend_entitlements(*(a1 + 56), v37, v38);
    hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v39, v40, v41);
    objc_msgSend_setSerializeProtectionData_(*(*(*(a1 + 72) + 8) + 40), v43, hasProtectionDataEntitlement);

    v44 = *(*(*(a1 + 72) + 8) + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = objc_msgSend_entitlements(*(a1 + 56), v45, v46);
      hasOutOfProcessUIEntitlement = objc_msgSend_hasOutOfProcessUIEntitlement(v47, v48, v49);
      if (hasOutOfProcessUIEntitlement)
      {
        objc_msgSend_setSerializePersonalInfo_(*(*(*(a1 + 72) + 8) + 40), v50, 1);
      }

      else
      {
        v31 = objc_msgSend_entitlements(*(a1 + 56), v50, v51);
        hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v31, v56, v57);
        objc_msgSend_setSerializePersonalInfo_(*(*(*(a1 + 72) + 8) + 40), v59, hasParticipantPIIEntitlement);
      }

      if ((hasOutOfProcessUIEntitlement & 1) == 0)
      {
      }

      shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(*(a1 + 56), v60, v61);
      objc_msgSend_setSerializeOwnerInfo_(*(*(*(a1 + 72) + 8) + 40), v63, shouldSerializeOwnerInfo);
    }

    v64 = objc_msgSend_extendExpiration_(*(a1 + 32), v45, v8);

    v23 = v32;
    v32 = 0;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v55 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v67 = v32;
      v68 = 2112;
      v69 = v14;
      _os_log_error_impl(&dword_22506F000, v55, OS_LOG_TYPE_ERROR, "Failed to convert pRecord %@ : %@", buf, 0x16u);
    }
  }

LABEL_12:
  v53 = *MEMORY[0x277D85DE8];

  return v32;
}

void sub_22515FC5C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_setFetchedProperties_(v2, v3, &unk_2838C8E38);
  objc_msgSend_orderDescendingByProperty_(v2, v4, @"modificationTime");
  v7 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v5, @"recordID = $RECORDID AND containerID = $CONTAINERID AND databaseScope = $SCOPE AND dsid = $DSID");
  objc_msgSend_setSearchPredicate_(v2, v6, v7);
}

uint64_t sub_225160410(uint64_t a1)
{
  v110 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = sub_225160940;
  v103[3] = &unk_278545C98;
  v104 = *(a1 + 48);
  v5 = objc_msgSend_entriesWithValues_label_setupBlock_(v2, v4, v3, 0, v103);
  v8 = objc_msgSend_nextObject(v5, v6, v7);
  if (v8)
  {
    v12 = v8;
    *&v11 = 138412546;
    v93 = v11;
    v95 = v5;
    while (1)
    {
      v13 = *(a1 + 32);
      v14 = objc_msgSend_knownUserKeys(v12, v9, v10, v93);
      LODWORD(v13) = objc_msgSend__cachedRecordKnownUserKeyData_satisfiesRequiredKeys_(v13, v15, v14, *(a1 + 56));

      if (v13)
      {
        v18 = objc_msgSend_fetchCacheEntryRecordData_(*(a1 + 32), v16, v12);
        v19 = [CKDPRecord alloc];
        v22 = objc_msgSend_recordData(v12, v20, v21);
        v24 = objc_msgSend_initWithData_(v19, v23, v22);

        if (v24)
        {
          break;
        }
      }

      v52 = 0;
      v53 = 0;
LABEL_18:
      v54 = objc_msgSend_nextObject(v5, v16, v17);

      v12 = v54;
      if (!v54)
      {
        goto LABEL_39;
      }
    }

    v25 = [CKDProtocolTranslator alloc];
    v27 = objc_msgSend_initWithContainer_databaseScope_requireContainerScopedUserID_(v25, v26, *(a1 + 64), *(a1 + 88), 0);
    v30 = objc_msgSend_recordIdentifier(v24, v28, v29);

    v96 = v24;
    if (v30)
    {
      v33 = objc_msgSend_recordIdentifier(v24, v31, v32);
      v102 = 0;
      v35 = objc_msgSend_recordIDFromPRecordIdentifier_error_(v27, v34, v33, &v102);
      v36 = v102;

      v39 = objc_msgSend_options(*(a1 + 64), v37, v38);
      v42 = objc_msgSend_useAnonymousToServerShareParticipants(v39, v40, v41);

      v45 = 0;
      if (v42 && v35)
      {
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v46 = *(a1 + 72);
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v98, v109, 16);
        if (v45)
        {
          v94 = v36;
          v49 = *v99;
          while (2)
          {
            for (i = 0; i != v45; i = i + 1)
            {
              if (*v99 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v98 + 1) + 8 * i);
              if (objc_msgSend_isEqualIgnoringAnonymousUserIDsToRecordID_(v51, v48, v35))
              {
                v45 = v51;
                goto LABEL_22;
              }
            }

            v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v48, &v98, v109, 16);
            if (v45)
            {
              continue;
            }

            break;
          }

LABEL_22:
          v36 = v94;
        }
      }

      v56 = objc_msgSend_zoneID(v45, v43, v44);
      v59 = objc_msgSend_anonymousCKUserID(v56, v57, v58);
      v97 = v36;
      objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v27, v60, v24, v59, &v97);
      v61 = v27;
      v52 = v62 = v36;
      v55 = v97;

      v27 = v61;
      v5 = v95;
      if (v52)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v55 = 0;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v64 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = v93;
      v106 = v55;
      v107 = 2112;
      v108 = v96;
      _os_log_error_impl(&dword_22506F000, v64, OS_LOG_TYPE_ERROR, "Failed to convert pRecord %@ : %@", buf, 0x16u);
    }

    v52 = 0;
LABEL_30:
    objc_msgSend_setWasCached_(v52, v63, 1);

    if (v52)
    {
      v53 = v96;
      if (objc_msgSend__cachedRecordHasValidAssets_forRequiredKeys_(*(a1 + 32), v16, v52, *(a1 + 56)))
      {
        v65 = objc_msgSend__trimRecord_toRequiredKeys_(*(a1 + 32), v16, v52, *(a1 + 56));
        v68 = objc_msgSend_entitlements(*(a1 + 64), v66, v67);
        hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v68, v69, v70);
        objc_msgSend_setSerializeProtectionData_(v52, v72, hasProtectionDataEntitlement);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v75 = objc_msgSend_entitlements(*(a1 + 64), v73, v74);
          if (objc_msgSend_hasOutOfProcessUIEntitlement(v75, v76, v77))
          {
            objc_msgSend_setSerializePersonalInfo_(v52, v78, 1);
          }

          else
          {
            v80 = objc_msgSend_entitlements(*(a1 + 64), v78, v79);
            hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v80, v81, v82);
            objc_msgSend_setSerializePersonalInfo_(v52, v84, hasParticipantPIIEntitlement);
          }

          shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(*(a1 + 64), v85, v86);
          objc_msgSend_setSerializeOwnerInfo_(v52, v88, shouldSerializeOwnerInfo);
        }

        objc_msgSend_addObject_(*(a1 + 80), v73, v52);
        v90 = objc_msgSend_extendExpiration_(*(a1 + 32), v89, v12);
      }
    }

    else
    {
      v53 = v96;
    }

    goto LABEL_18;
  }

LABEL_39:

  v91 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_225160940(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setFetchedProperties_(v3, v4, &unk_2838C8E50);
  objc_msgSend_orderDescendingByProperty_(v3, v5, @"modificationTime");
  v8 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v6, @"containerID = $CONTAINERID AND databaseScope = $SCOPE AND dsid = $DSID AND recordID IN %@", *(a1 + 32));
  objc_msgSend_setSearchPredicate_(v3, v7, v8);
}

void sub_225161354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2251613A4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = CKIsIndexedArrayKey();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}