unint64_t sub_1839499D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *(a1 + 32);
  if (result)
  {
    result = sub_183949B8C(result, *(a1 + 48), a3, a4, a5, a6);
    v8 = 2;
    if ((result & 0x8000) == 0)
    {
      v8 = (result >> 14) & 1;
    }

    *(*(*(a1 + 40) + 8) + 24) = v8;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

uint64_t sub_183949B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_183949B8C(*(a1 + 32), *(a1 + 48), a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_183949B8C(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = a2;
    v7 = result;
    v8 = *(result + 312);
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = result + 312;
    v10 = *(result + 312);
    do
    {
      v11 = *(v10 + 32);
      v12 = v11 >= a2;
      v13 = v11 < a2;
      if (v12)
      {
        v9 = v10;
      }

      v10 = *(v10 + 8 * v13);
    }

    while (v10);
    if (v9 == result + 312 || *(v9 + 32) > a2)
    {
LABEL_10:
      IsMember = objc_msgSend_characterIsMember_(*(result + 8), a2, a2, a4, a5, a6);
      if (objc_msgSend_characterIsMember_(*(v7 + 16), v15, v6, v16, v17, v18))
      {
        IsMember |= 2uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 24), v19, v6, v20, v21, v22))
      {
        IsMember |= 4uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 32), v23, v6, v24, v25, v26))
      {
        IsMember |= 8uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 40), v27, v6, v28, v29, v30))
      {
        IsMember |= 0x10uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 48), v31, v6, v32, v33, v34))
      {
        IsMember |= 0x20uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 56), v35, v6, v36, v37, v38))
      {
        IsMember |= 0x40uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 64), v39, v6, v40, v41, v42))
      {
        IsMember |= 0x80uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 72), v43, v6, v44, v45, v46))
      {
        IsMember |= 0x100uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 80), v47, v6, v48, v49, v50))
      {
        IsMember |= 0x200uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 88), v51, v6, v52, v53, v54))
      {
        IsMember |= 0x400uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 96), v55, v6, v56, v57, v58))
      {
        IsMember |= 0x800uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 104), v59, v6, v60, v61, v62))
      {
        IsMember |= 0x1000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 112), v63, v6, v64, v65, v66))
      {
        IsMember |= 0x2000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 120), v67, v6, v68, v69, v70))
      {
        IsMember |= 0x4000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 128), v71, v6, v72, v73, v74))
      {
        IsMember |= 0x8000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 136), v75, v6, v76, v77, v78))
      {
        IsMember |= 0x10000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 144), v79, v6, v80, v81, v82))
      {
        IsMember |= 0x20000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 152), v83, v6, v84, v85, v86))
      {
        IsMember |= 0x40000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 160), v87, v6, v88, v89, v90))
      {
        IsMember |= 0x80000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 168), v91, v6, v92, v93, v94))
      {
        IsMember |= 0x100000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 176), v95, v6, v96, v97, v98))
      {
        IsMember |= 0x200000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 184), v99, v6, v100, v101, v102))
      {
        IsMember |= 0x400000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 192), v103, v6, v104, v105, v106))
      {
        IsMember |= 0x800000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 200), v107, v6, v108, v109, v110))
      {
        IsMember |= 0x1000000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 208), v111, v6, v112, v113, v114))
      {
        IsMember |= 0x2000000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 224), v115, v6, v116, v117, v118))
      {
        IsMember |= 0x4000000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 216), v119, v6, v120, v121, v122))
      {
        IsMember |= 0x8000000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 232), v123, v6, v124, v125, v126))
      {
        IsMember |= 0x10000000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 240), v127, v6, v128, v129, v130))
      {
        IsMember |= 0x100000000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 248), v131, v6, v132, v133, v134))
      {
        IsMember |= 0x20000000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 256), v135, v6, v136, v137, v138))
      {
        IsMember |= 0x40000000uLL;
      }

      if (objc_msgSend_characterIsMember_(*(v7 + 264), v139, v6, v140, v141, v142))
      {
        v143 = IsMember | 0x80000000;
      }

      else
      {
        v143 = IsMember;
      }

      v8 = *(v7 + 312);
      if (v8)
      {
        v144 = *(v7 + 312);
        do
        {
          while (1)
          {
            v145 = v144;
            v146 = *(v144 + 32);
            if (v146 <= v6)
            {
              break;
            }

            v144 = *v145;
            if (!*v145)
            {
              goto LABEL_81;
            }
          }

          if (v146 >= v6)
          {
            v145[5] = v143;
            goto LABEL_84;
          }

          v144 = v145[1];
        }

        while (v144);
      }

LABEL_81:
      operator new();
    }

    while (1)
    {
LABEL_84:
      while (1)
      {
        v147 = v8;
        v148 = *(v8 + 32);
        if (v148 <= v6)
        {
          break;
        }

        v8 = *v147;
        if (!*v147)
        {
          goto LABEL_87;
        }
      }

      if (v148 >= v6)
      {
        return v147[5];
      }

      v8 = v147[1];
      if (!v8)
      {
LABEL_87:
        operator new();
      }
    }
  }

  return result;
}

void CHResetInventory()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(CHRemoteTextSynthesizer);
  v14 = 0;
  v5 = objc_msgSend_resetStyleInventory_(v0, v1, &v14, v2, v3, v4);
  v6 = v14;
  if ((v5 & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v7 = qword_1EA84DC98;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_msgSend_localizedDescription(v6, v8, v9, v10, v11, v12);
      *buf = 138412290;
      v16 = v13;
      _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "Failed to reset style personalization. Error: %@", buf, 0xCu);
    }
  }
}

uint64_t CHHasPersonalizedSynthesisSupport()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EA84D218 == -1)
  {
    if (qword_1EA84DC48 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84D218, &unk_1EF1BF558);
    if (qword_1EA84DC48 == -1)
    {
      goto LABEL_3;
    }
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
LABEL_3:
  v0 = qword_1EA84DC98;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    if (byte_1EA84D210)
    {
      v1 = @"Yes";
    }

    else
    {
      v1 = @"No";
    }

    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_18366B000, v0, OS_LOG_TYPE_DEBUG, "Has personalized synthesis support: %@", &v3, 0xCu);
  }

  return byte_1EA84D210;
}

void sub_18394AC04()
{
  v14 = sub_1837AA2F0();
  if (objc_msgSend_hasPrefix_(v14, v0, @"H", v1, v2, v3))
  {
    v8 = objc_msgSend_substringFromIndex_(v14, v4, 1, v5, v6, v7);
    if (objc_msgSend_integerValue(v8, v9, v10, v11, v12, v13) >= 13)
    {
      byte_1EA84D210 = 1;
    }
  }
}

uint64_t CHHasHandwritingGenerationAllowed(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EA84D228 != -1)
  {
    dispatch_once(&qword_1EA84D228, &unk_1EF1BF578);
  }

  isPersonalizedHandwritingResultsAllowed = objc_msgSend_isPersonalizedHandwritingResultsAllowed(qword_1EA84D220, a2, a3, a4, a5, a6);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC98;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"No";
    if (isPersonalizedHandwritingResultsAllowed)
    {
      v8 = @"Yes";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEBUG, "Has handwriting generation allowed: %@", &v10, 0xCu);
  }

  return isPersonalizedHandwritingResultsAllowed;
}

void sub_18394ADE8()
{
  v0 = objc_alloc_init(CHManagedConfigurations);
  v1 = qword_1EA84D220;
  qword_1EA84D220 = v0;
}

uint64_t sub_18394AE24(void *a1)
{
  v1 = a1;
  if (_os_feature_enabled_impl())
  {
    v7 = objc_msgSend_arrayByAddingObjectsFromArray_(&unk_1EF1EC820, v2, &unk_1EF1EC838, v4, v5, v6);
  }

  else
  {
    v7 = &unk_1EF1EC820;
  }

  v8 = objc_msgSend_languageCode(v1, v2, v3, v4, v5, v6);
  if (objc_msgSend_containsObject_(v7, v9, v8, v10, v11, v12))
  {
    v18 = 1;
  }

  else
  {
    v19 = objc_msgSend_languageCode(v1, v13, v14, v15, v16, v17);
    if (objc_msgSend_containsObject_(&unk_1EF1EC850, v20, v19, v21, v22, v23))
    {
      v18 = 1;
    }

    else
    {
      v29 = objc_msgSend_languageCode(v1, v24, v25, v26, v27, v28);
      v18 = objc_msgSend_containsObject_(&unk_1EF1EC868, v30, v29, v31, v32, v33);
    }
  }

  return v18;
}

uint64_t CHHasPersonalizedSynthesisSupportForLocale(void *a1)
{
  v1 = a1;
  if (CHHasPersonalizedSynthesisSupport())
  {
    v2 = sub_18394AE24(v1);

    return v2;
  }

  else
  {

    return 0;
  }
}

id sub_18394AFEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if (qword_1EA84D248 != -1)
  {
    dispatch_once(&qword_1EA84D248, &unk_1EF1BF598);
  }

  objc_msgSend_timeIntervalSinceNow(qword_1EA84D240, a2, a3, a4, a5, a6);
  if (v11 < -3.0)
  {
    v12 = objc_msgSend_cachedStyleInventoryStatus(qword_1EA84D238, v6, v7, v8, v9, v10);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v13 = qword_1EA84DC98;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412546;
      v24 = qword_1EA84D230;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEBUG, "latestStyleInventoryStatus: updating from %@ to %@", &v23, 0x16u);
    }

    objc_storeStrong(&qword_1EA84D230, v12);
    v19 = objc_msgSend_date(MEMORY[0x1E695DF00], v14, v15, v16, v17, v18);
    v20 = qword_1EA84D240;
    qword_1EA84D240 = v19;
  }

  v21 = qword_1EA84D230;

  return v21;
}

void sub_18394B184(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x1E695DF00], a2, a3, a4, a5, a6, 0.0);
  v7 = qword_1EA84D240;
  qword_1EA84D240 = v6;

  v8 = objc_alloc_init(CHRemoteTextSynthesizer);
  v9 = qword_1EA84D238;
  qword_1EA84D238 = v8;

  v15 = objc_msgSend_styleInventoryStatusWithTimeout_(qword_1EA84D238, v10, v11, v12, v13, v14, 0.05);
  v16 = qword_1EA84D230;
  qword_1EA84D230 = v15;
}

BOOL CHHasPersonalizedSynthesisModelReady(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = sub_18394AFEC(a1, a2, a3, a4, a5, a6);
  v12 = objc_msgSend_personalizedSynthesisModelState(v6, v7, v8, v9, v10, v11);
  StateForVariant = objc_msgSend_getStateForVariant_(v12, v13, 1, v14, v15, v16);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v18 = qword_1EA84DC98;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = @"No";
    if (StateForVariant == 2)
    {
      v19 = @"Yes";
    }

    v21 = 134218242;
    v22 = 1;
    v23 = 2112;
    v24 = v19;
    _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_DEBUG, "Is personalized synthesis model ready (variant %ld): %@", &v21, 0x16u);
  }

  return StateForVariant == 2;
}

BOOL CHHasPersonalizedSynthesisModelReadyForTesting(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_modelStatus(CHPersonalizedSynthesisModelStatus, a2, a3, a4, a5, a6);
  StateForVariant = objc_msgSend_getStateForVariant_(v6, v7, 1, v8, v9, v10);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v12 = qword_1EA84DC98;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = @"No";
    if (StateForVariant == 2)
    {
      v13 = @"Yes";
    }

    v15 = 134218242;
    v16 = 1;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_DEBUG, "Is personalized synthesis model ready (variant %ld): %@", &v15, 0x16u);
  }

  return StateForVariant == 2;
}

uint64_t sub_18394B4A8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_languageCode(a1, a2, a3, a4, a5, a6);
  if (_os_feature_enabled_impl())
  {
    v11 = objc_msgSend_arrayByAddingObjectsFromArray_(&unk_1EF1EC820, v7, &unk_1EF1EC838, v8, v9, v10);
    v16 = objc_msgSend_containsObject_(v11, v12, v6, v13, v14, v15);
  }

  else
  {
    v11 = &unk_1EF1EC820;
    v16 = objc_msgSend_containsObject_(&unk_1EF1EC820, v7, v6, v8, v9, v10);
  }

  v17 = v16;

  if (v17)
  {
    v22 = 1;
  }

  else if (objc_msgSend_containsObject_(&unk_1EF1EC850, v18, v6, v19, v20, v21))
  {
    v22 = 2;
  }

  else if (objc_msgSend_containsObject_(&unk_1EF1EC868, v23, v6, v24, v25, v26))
  {
    v22 = 3;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

BOOL sub_18394B5CC(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (qword_1EA84D258 != -1)
  {
    dispatch_once(&qword_1EA84D258, &unk_1EF1BF5B8);
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84D250, v1, v5, v2, v3, v4);

  if (!v6)
  {
    v12 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x1E695DF00], v7, v8, v9, v10, v11, 0.0);
    objc_msgSend_setObject_forKeyedSubscript_(qword_1EA84D250, v13, v12, v5, v14, v15);
  }

  v16 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84D250, v7, v5, v9, v10, v11);
  objc_msgSend_timeIntervalSinceNow(v16, v17, v18, v19, v20, v21);
  v23 = v22;

  if (v23 < -1.0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v24 = qword_1EA84DC98;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v35 = 138412290;
      v36 = v5;
      _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_DEBUG, "shouldAllowLoggingForKey (%@): allowing logging", &v35, 0xCu);
    }

    v30 = objc_msgSend_date(MEMORY[0x1E695DF00], v25, v26, v27, v28, v29);
    objc_msgSend_setObject_forKeyedSubscript_(qword_1EA84D250, v31, v30, v5, v32, v33);
  }

  return v23 < -1.0;
}

void sub_18394B788(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_18394B7C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4, a5, a6);
  v7 = qword_1EA84D250;
  qword_1EA84D250 = v6;
}

BOOL sub_18394B808(void *a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E696AEC0];
  v11 = objc_msgSend_languageCode(v3, v6, v7, v8, v9, v10);
  v16 = objc_msgSend_stringWithFormat_(v5, v12, @"shouldLogPersonalizedSynthesisModelReadyForLocale: %@", v13, v14, v15, v11);

  v17 = sub_18394B5CC(v16);
  if (sub_18394AE24(v3))
  {
    v23 = sub_18394B4A8(v3, v18, v19, v20, v21, v22);
    if ((v24 & 1) == 0)
    {
      sub_18368EC64();
    }

    v25 = v23;
    v26 = v4[2](v4, v23);
    StateForVariant = objc_msgSend_getStateForVariant_(v26, v27, v25, v28, v29, v30);
    v32 = StateForVariant == 2;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v33 = qword_1EA84DC98;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = @"No";
      if (StateForVariant == 2)
      {
        v34 = @"Yes";
      }

      *buf = 134218242;
      v52 = v25;
      v53 = 2112;
      v54 = v34;
      _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_DEBUG, "Is personalized synthesis model ready (variant %ld): %@", buf, 0x16u);
    }

    if (!v17)
    {
      goto LABEL_22;
    }

    if (qword_1EA84DC48 == -1)
    {
      v35 = qword_1EA84DC98;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        v41 = objc_msgSend_languageCode(v3, v36, v37, v38, v39, v40);
        v42 = v41;
        v43 = @"NO";
        if (StateForVariant == 2)
        {
          v43 = @"YES";
        }

        *buf = 138412546;
        v52 = v41;
        v53 = 2112;
        v54 = v43;
        _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_DEFAULT, "CHHasPersonalizedSynthesisModelReadyForLocale (%@): %@", buf, 0x16u);
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v35 = qword_1EA84DC98;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }

    goto LABEL_22;
  }

  if (!v17)
  {
    v32 = 0;
    goto LABEL_24;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v26 = qword_1EA84DC98;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v49 = objc_msgSend_languageCode(v3, v44, v45, v46, v47, v48);
    *buf = 138412290;
    v52 = v49;
    _os_log_impl(&dword_18366B000, v26, OS_LOG_TYPE_DEFAULT, "CHHasPersonalizedSynthesisModelReadyForLocale (%@): NO [locale not supported]", buf, 0xCu);
  }

  v32 = 0;
LABEL_22:

LABEL_24:
  return v32;
}

id sub_18394BBB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_18394AFEC(a1, a2, a3, a4, a5, a6);
  v12 = objc_msgSend_personalizedSynthesisModelState(v6, v7, v8, v9, v10, v11);

  return v12;
}

uint64_t sub_18394BC24(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v80 = *MEMORY[0x1E69E9840];
  if (a1 < 2)
  {
    if (_os_feature_enabled_impl())
    {
      v8 = objc_msgSend_arrayByAddingObjectsFromArray_(&unk_1EF1EC820, v9, &unk_1EF1EC838, v11, v12, v13);
      objc_msgSend_firstObject(v8, v14, v15, v16, v17, v18);
    }

    else
    {
      v8 = &unk_1EF1EC820;
      objc_msgSend_firstObject(&unk_1EF1EC820, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v7 = &unk_1EF1EC868;
    if (a1 != 3)
    {
      v7 = 0;
    }

    if (a1 == 2)
    {
      v8 = &unk_1EF1EC850;
      objc_msgSend_firstObject(&unk_1EF1EC850, a2, a3, a4, a5, a6);
    }

    else
    {
      v8 = v7;
      objc_msgSend_firstObject(v7, a2, a3, a4, a5, a6);
    }
  }
  v19 = ;

  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"shouldLogSynthesisSupportStateForVariant: %ld", v21, v22, v23, a1);
  v25 = sub_18394B5CC(v24);

  v26 = CHHasPersonalizedSynthesisSupport();
  v27 = v26;
  v33 = CHHasHandwritingGenerationAllowed(v26, v28, v29, v30, v31, v32);
  if (v27 & v33)
  {
    v39 = sub_18394AFEC(v33, v34, v35, v36, v37, v38);
    v45 = objc_msgSend_personalizedSynthesisModelState(v39, v40, v41, v42, v43, v44);
    StateForVariant = objc_msgSend_getStateForVariant_(v45, v46, a1, v47, v48, v49);

    if (StateForVariant == 1)
    {
      if (v25)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v57 = qword_1EA84DC98;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v73 = a1;
          v74 = 2112;
          v75 = v19;
          _os_log_impl(&dword_18366B000, v57, OS_LOG_TYPE_DEFAULT, "CHPersonalizedSynthesisState (variant %ld - %@): SupportedInitializing", buf, 0x16u);
        }

        v58 = 2;
        goto LABEL_58;
      }

      v58 = 2;
      goto LABEL_59;
    }

    if (!StateForVariant)
    {
      if (v25)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v57 = qword_1EA84DC98;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v73 = a1;
          v74 = 2112;
          v75 = v19;
          _os_log_impl(&dword_18366B000, v57, OS_LOG_TYPE_DEFAULT, "CHPersonalizedSynthesisState (variant %ld - %@): SupportedNotReady", buf, 0x16u);
        }

        v58 = 1;
        goto LABEL_58;
      }

      v58 = 1;
LABEL_59:

      goto LABEL_60;
    }

    v62 = sub_18394AFEC(v51, v52, v53, v54, v55, v56);
    isGenerationAllowed = objc_msgSend_isGenerationAllowed(v62, v63, v64, v65, v66, v67);

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v69 = qword_1EA84DC98;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      v70 = @"No";
      if (isGenerationAllowed)
      {
        v70 = @"Yes";
      }

      *buf = 138412290;
      v73 = v70;
      _os_log_impl(&dword_18366B000, v69, OS_LOG_TYPE_DEBUG, "Is style generation allowed: %@", buf, 0xCu);
    }

    if (isGenerationAllowed)
    {
      if (!v25)
      {
        v58 = 4;
        goto LABEL_59;
      }

      if (qword_1EA84DC48 == -1)
      {
        v57 = qword_1EA84DC98;
        if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
LABEL_48:
          v58 = 4;
LABEL_58:

          goto LABEL_59;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v57 = qword_1EA84DC98;
        if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_48;
        }
      }

      *buf = 134218242;
      v73 = a1;
      v74 = 2112;
      v75 = v19;
      _os_log_impl(&dword_18366B000, v57, OS_LOG_TYPE_DEFAULT, "CHPersonalizedSynthesisState (variant %ld - %@): SupportedReady", buf, 0x16u);
      goto LABEL_48;
    }

    if (!v25)
    {
      v58 = 3;
      goto LABEL_59;
    }

    if (qword_1EA84DC48 == -1)
    {
      v57 = qword_1EA84DC98;
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
LABEL_55:
        v58 = 3;
        goto LABEL_58;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v57 = qword_1EA84DC98;
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }
    }

    *buf = 134218242;
    v73 = a1;
    v74 = 2112;
    v75 = v19;
    _os_log_impl(&dword_18366B000, v57, OS_LOG_TYPE_DEFAULT, "CHPersonalizedSynthesisState (variant %ld - %@): SupportedInventoryNotReady", buf, 0x16u);
    goto LABEL_55;
  }

  if (v25)
  {
    v59 = v33;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v39 = qword_1EA84DC98;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v60 = @"NO";
      *buf = 134218754;
      v73 = a1;
      if (v27)
      {
        v61 = @"YES";
      }

      else
      {
        v61 = @"NO";
      }

      v74 = 2112;
      v75 = v19;
      if (v59)
      {
        v60 = @"YES";
      }

      v76 = 2112;
      v77 = v61;
      v78 = 2112;
      v79 = v60;
      _os_log_impl(&dword_18366B000, v39, OS_LOG_TYPE_DEFAULT, "CHPersonalizedSynthesisState (variant %ld - %@): Unsupported (hasPersonalizedSynthesisSupport: %@, hasHandwritingGenerationAllowed: %@)", buf, 0x2Au);
    }

    v58 = 0;
    goto LABEL_59;
  }

  v58 = 0;
LABEL_60:

  return v58;
}

uint64_t CHGetPersonalizedSynthesisSupportStateForLocale(void *a1)
{
  v1 = a1;
  if (sub_18394AE24(v1))
  {
    v7 = sub_18394B4A8(v1, v2, v3, v4, v5, v6);
    if ((v8 & 1) == 0)
    {
      sub_18368EC64();
    }

    v13 = sub_18394BC24(v7, v8, v9, v10, v11, v12);

    return v13;
  }

  else
  {

    return 0;
  }
}

uint64_t CHGetPersonalizedSynthesisSupportState(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_18394BC24(1uLL, a2, a3, a4, a5, a6);
  sub_18394BC24(2uLL, v7, v8, v9, v10, v11);
  sub_18394BC24(3uLL, v12, v13, v14, v15, v16);
  return v6;
}

id CHGetSynthesisModelVersionForLocale(void *a1)
{
  v1 = a1;
  if (!CHHasPersonalizedSynthesisSupport())
  {
    v26 = 0;
    v15 = v1;
LABEL_6:

    goto LABEL_8;
  }

  v2 = sub_18394AE24(v1);

  if (v2)
  {
    v8 = sub_18394B4A8(v1, v3, v4, v5, v6, v7);
    if ((v9 & 1) == 0)
    {
      sub_18368EC64();
    }

    v14 = v8;
    v15 = sub_18394AFEC(v8, v9, v10, v11, v12, v13);
    v21 = objc_msgSend_personalizedSynthesisModelState(v15, v16, v17, v18, v19, v20);
    v26 = objc_msgSend_getVersionForVariant_(v21, v22, v14, v23, v24, v25);

    goto LABEL_6;
  }

  v26 = 0;
LABEL_8:

  return v26;
}

void sub_18394C9C8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_18394CC88(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18394E8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, void *a25, void *a26, void *a27, uint64_t a28, void *a29, void *a30, void *a31, void *a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  sub_1836E1928(STACK[0x978]);

  _Unwind_Resume(a1);
}

uint64_t sub_18394ED78(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v12 = objc_msgSend_strokeIdentifier(a2, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_strokeIdentifier(v5, v13, v14, v15, v16, v17);
  v22 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v6, v19, v12, v18, v20, v21);

  return v22;
}

void sub_18394EE24(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9, void *a10, void *a11, void *a12)
{
  v558 = *MEMORY[0x1E69E9840];
  v461 = a2;
  v475 = a3;
  v458 = a4;
  v463 = a5;
  v462 = a6;
  v472 = a7;
  v459 = a8;
  v477 = a10;
  v470 = a12;
  if (a1)
  {
    v24 = 3.6;
    if (a9)
    {
      v24 = 6.0;
    }

    *(a1 + 72) = v24;
    v534 = 0;
    v535 = &v534;
    v536 = 0x2020000000;
    v537 = 0x40C3880000000000;
    v528 = 0;
    v529 = &v528;
    v530 = 0x3032000000;
    v531 = sub_183951FA4;
    v532 = sub_183951FB4;
    v533 = 0;
    v522 = 0;
    v523 = &v522;
    v524 = 0x3032000000;
    v525 = sub_183951FA4;
    v526 = sub_183951FB4;
    v527 = 0;
    v518 = 0;
    v519 = &v518;
    v520 = 0x2020000000;
    v521 = 0;
    v25 = objc_msgSend_encodedStrokeIdentifier(v463, v19, v20, v21, v22, v23);
    v476 = a1;
    v30 = objc_msgSend_objectForKey_(v472, v26, v25, v27, v28, v29);

    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v514 = 0u;
    v515 = 0u;
    v516 = 0u;
    v517 = 0u;
    v35 = v30;
    v479 = v35;
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v514, v552, 16, v37);
    if (v43)
    {
      v44 = *v515;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v515 != v44)
          {
            objc_enumerationMutation(v35);
          }

          v46 = objc_msgSend_substroke(*(*(&v514 + 1) + 8 * i), v38, v39, v40, v41, v42);
          objc_msgSend_bounds(v46, v47, v48, v49, v50, v51);
          v563.origin.x = v52;
          v563.origin.y = v53;
          v563.size.width = v54;
          v563.size.height = v55;
          v559.origin.x = x;
          v559.origin.y = y;
          v559.size.width = width;
          v559.size.height = height;
          v560 = CGRectUnion(v559, v563);
          x = v560.origin.x;
          y = v560.origin.y;
          width = v560.size.width;
          height = v560.size.height;

          v35 = v479;
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v479, v38, &v514, v552, 16, v42);
      }

      while (v43);
    }

    v503[0] = MEMORY[0x1E69E9820];
    v503[1] = 3221225472;
    v503[2] = sub_183951FBC;
    v503[3] = &unk_1E6DE04E8;
    v510 = x;
    v511 = y;
    v512 = width;
    v513 = height;
    v503[4] = a1;
    v506 = &v534;
    v467 = v463;
    v504 = v467;
    v480 = v479;
    v505 = v480;
    v507 = &v528;
    v508 = &v522;
    v509 = &v518;
    v56 = MEMORY[0x1865E6810](v503);
    v57 = v56;
    if (v477)
    {
      (*(v56 + 16))(v56);
    }

    v501 = 0u;
    v502 = 0u;
    v499 = 0u;
    v500 = 0u;
    obj = v461;
    v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, &v499, v551, 16, v59);
    if (v64)
    {
      v65 = *v500;
      if (v477)
      {
        do
        {
          for (j = 0; j != v64; ++j)
          {
            if (*v500 != v65)
            {
              objc_enumerationMutation(obj);
            }

            v67 = *(*(&v499 + 1) + 8 * j);
            if ((objc_msgSend_isEqual_(v67, v60, v477, v61, v62, v63) & 1) == 0)
            {
              (v57)[2](v57, v67);
            }
          }

          v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, &v499, v551, 16, v63);
        }

        while (v64);
      }

      else
      {
        do
        {
          for (k = 0; k != v64; ++k)
          {
            if (*v500 != v65)
            {
              objc_enumerationMutation(obj);
            }

            v57[2](v57, *(*(&v499 + 1) + 8 * k));
          }

          v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v69, &v499, v551, 16, v70);
        }

        while (v64);
      }
    }

    if (v462 && v523[5])
    {
      v497 = 0u;
      v498 = 0u;
      v495 = 0u;
      v496 = 0u;
      v76 = v462;
      v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v77, &v495, v550, 16, v78);
      if (v84)
      {
        v85 = *v496;
        while (2)
        {
          for (m = 0; m != v84; ++m)
          {
            if (*v496 != v85)
            {
              objc_enumerationMutation(v76);
            }

            v87 = *(*(&v495 + 1) + 8 * m);
            v88 = objc_msgSend_encodedStrokeIdentifier(v87, v79, v80, v81, v82, v83);
            v93 = objc_msgSend_objectForKey_(v472, v89, v88, v90, v91, v92);

            *buf = 10000.0;
            v494 = 0;
            objc_msgSend_getMergingEndOfLineCost_mergingEndOfLineStroke_forStroke_consistingOfSubstrokes_toLineGroup_(v476, v94, buf, &v494, v87, v93, v523[5]);
            v95 = v494;
            if (*buf < v535[3] && v95 == v529[5])
            {

              v535[3] = 10000.0;
              v96 = v529[5];
              v529[5] = 0;

              v76 = v523[5];
              v523[5] = 0;
              goto LABEL_41;
            }
          }

          v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v79, &v495, v550, 16, v83);
          if (v84)
          {
            continue;
          }

          break;
        }
      }

LABEL_41:
    }

    v97 = v535[3];
    v98 = v480;
    if (v97 >= *(v476 + 80))
    {
      v492 = 0u;
      v493 = 0u;
      v490 = 0u;
      v491 = 0u;
      v105 = obj;
      v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v106, &v490, v549, 16, v107);
      if (v108)
      {
        v469 = 0;
        v471 = 0;
        v473 = *v491;
        v100 = 10000.0;
        while (2)
        {
          for (n = 0; n != v108; ++n)
          {
            if (*v491 != v473)
            {
              objc_enumerationMutation(v105);
            }

            v113 = *(*(&v490 + 1) + 8 * n);
            if (v470[2]())
            {
              v99 = 1;
              goto LABEL_73;
            }

            *buf = 10000.0;
            sub_1839521EC(v476, buf, v113, x, y, width, height);
            v112 = *buf;
            if (*buf <= *(v476 + 72))
            {
              *&v553 = 0x40C3880000000000;
              v489 = 0;
              objc_msgSend_getMergingMiddleOfLineCost_mergingMiddleOfLineStroke_forStroke_consistingOfSubstrokes_toLineGroup_(v476, v110, &v553, &v489, v467, v480, v113, *buf);
              v114 = v489;
              v117 = objc_msgSend_compareDistanceInWritingSequenceOfStroke_andStroke_toReferenceStroke_(v476, v115, v114, v471, v467, v116);
              v118 = *&v553;
              v119 = *&v553 - v100;
              v120 = *(v476 + 88);
              if (*&v553 - v100 < -v120 || !v117 && v119 < 0.0 || (fabs(v119) < v120 ? (v121 = v117 == -1) : (v121 = 0), v121))
              {
                v122 = v114;

                v123 = v113;
                *(v519 + 24) = 0;
                v469 = v123;
                v471 = v122;
              }

              else
              {
                v118 = v100;
              }

              v100 = v118;
            }
          }

          v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v110, &v490, v549, 16, v111, v112);
          if (v108)
          {
            continue;
          }

          break;
        }

        v99 = 0;
      }

      else
      {
        v99 = 0;
        v469 = 0;
        v471 = 0;
        v100 = 10000.0;
      }

LABEL_73:

      v97 = v535[3];
      v98 = v480;
      v101 = v476;
      v102 = *(v476 + 72);
      if (v97 >= v102 || v100 >= v102)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v99 = 0;
      v469 = 0;
      v471 = 0;
      v100 = 10000.0;
      v101 = v476;
      v102 = *(v476 + 72);
      if (v97 >= v102 || v102 <= 10000.0)
      {
LABEL_47:
        if (v97 < v102)
        {
LABEL_48:
          v104 = v523[5];
          v100 = v97;
          goto LABEL_82;
        }

        v104 = v469;
        if (v100 >= v102)
        {
          v465 = 0;
          goto LABEL_104;
        }

LABEL_82:
        v465 = v104;
        if (v465)
        {
          v128 = v99;
        }

        else
        {
          v128 = 1;
        }

        if ((v128 & 1) == 0 && v100 < *(v476 + 72))
        {
          v129 = *(v519 + 24);
          v130 = v529[5];
          v131 = v467;
          v132 = v98;
          v465 = v465;
          v474 = v130;
          v133 = v472;
          v134 = MEMORY[0x1E695DFD8];
          v468 = v131;
          v480 = v132;
          v140 = objc_msgSend_encodedStrokeIdentifier(v131, v135, v136, v137, v138, v139);
          v466 = objc_msgSend_setWithObject_(v134, v141, v140, v142, v143, v144);

          objc_msgSend_bounds(v465, v145, v146, v147, v148, v149);
          v151 = v150;
          v153 = v152;
          v155 = v154;
          v157 = v156;
          objc_msgSend_bounds(v131, v158, v159, v160, v161, v162);
          v564.origin.x = v163;
          v564.origin.y = v164;
          v564.size.width = v165;
          v564.size.height = v166;
          v561.origin.x = v151;
          v561.origin.y = v153;
          v561.size.width = v155;
          v561.size.height = v157;
          v562 = CGRectUnion(v561, v564);
          v456 = v562.origin.y;
          v457 = v562.origin.x;
          v454 = v562.size.height;
          v455 = v562.size.width;
          *&v545 = 0;
          v544 = 0;
          objc_msgSend_firstStrokeIdentifier_lastStrokeIdentifier_inGroup_addingStrokeIdentifiers_removingStrokeIdentifiers_(v476, v167, &v545, &v544, v465, v466, 0);
          v460 = v545;
          v464 = v544;
          v173 = objc_msgSend_writingDirectionSortedSubstrokes(v465, v168, v169, v170, v171, v172);
          v179 = objc_msgSend_mutableCopy(v173, v174, v175, v176, v177, v178);

          if ((v129 & 1) == 0)
          {
            v185 = objc_msgSend_strokeIdentifiers(v465, v180, v181, v182, v183, v184);
            v191 = objc_msgSend_allObjects(v185, v186, v187, v188, v189, v190);
            v541[0] = MEMORY[0x1E69E9820];
            v541[1] = 3221225472;
            v541[2] = sub_18395240C;
            v541[3] = &unk_1E6DDCA70;
            v541[4] = v476;
            v196 = objc_msgSend_sortedArrayUsingComparator_(v191, v192, v541, v193, v194, v195);

            objc_msgSend_removeAllObjects(v179, v197, v198, v199, v200, v201);
            v556 = 0u;
            v555 = 0u;
            v554 = 0u;
            v553 = 0u;
            v202 = v196;
            v209 = objc_msgSend_countByEnumeratingWithState_objects_count_(v202, v203, &v553, buf, 16, v204);
            if (v209)
            {
              v210 = *v554;
              do
              {
                for (ii = 0; ii != v209; ++ii)
                {
                  if (*v554 != v210)
                  {
                    objc_enumerationMutation(v202);
                  }

                  v212 = objc_msgSend_objectForKeyedSubscript_(v133, v205, *(*(&v553 + 1) + 8 * ii), v206, v207, v208);
                  objc_msgSend_addObjectsFromArray_(v179, v213, v212, v214, v215, v216);
                }

                v209 = objc_msgSend_countByEnumeratingWithState_objects_count_(v202, v205, &v553, buf, 16, v208);
              }

              while (v209);
            }
          }

          objc_msgSend_addObjectsFromArray_(v179, v180, v480, v182, v183, v184);
          *__p = *(v476 + 16);
          v546 = *(v476 + 32);
          v538 = v179;
          objc_msgSend_estimateWritingDirectionAndSortSubstrokesAccordingly_averageWritingOrientation_averageStrokeDeviation_(v476, v217, &v538, __p, &v546, v218);
          v219 = v538;

          v539[1] = 0;
          v539[0] = 0;
          *&v540 = 0;
          v225 = objc_msgSend_strokeIdentifiers(v465, v220, v221, v222, v223, v224);
          v231 = objc_msgSend_count(v225, v226, v227, v228, v229, v230);
          if (v231 != -1)
          {
            if (!((v231 + 1) >> 60))
            {
              operator new();
            }

            sub_18368964C();
          }

          v232 = sub_183952538(v476, v219, v539);
          v453 = sub_183952A70(v476, v219, *&v546, *(&v546 + 1));
          v238 = sub_1839533DC(v476, v219, v232, *__p, *&__p[1]);
          if (v129)
          {
            v239 = objc_msgSend_count(v219, v233, v234, v235, v236, v237);
            while (--v239 >= 0)
            {
              v240 = objc_msgSend_objectAtIndexedSubscript_(v219, v233, v239, v235, v236, v237);
              v246 = objc_msgSend_substroke(v240, v241, v242, v243, v244, v245);
              v252 = objc_msgSend_strokeIdentifier(v246, v247, v248, v249, v250, v251);
              v258 = objc_msgSend_encodedStrokeIdentifier(v474, v253, v254, v255, v256, v257);
              isEqual = objc_msgSend_isEqual_(v252, v259, v258, v260, v261, v262);

              if (isEqual)
              {
                goto LABEL_130;
              }
            }
          }

          v239 = -1;
LABEL_130:
          objc_msgSend_bounds(v468, v233, v234, v235, v236, v237);
          v359 = v358;
          objc_msgSend_bounds(v468, v360, v361, v362, v363, v364);
          v366 = v365;
          objc_msgSend_bounds(v468, v367, v368, v369, v370, v371);
          v373 = v372;
          objc_msgSend_bounds(v468, v374, v375, v376, v377, v378);
          v380 = v379;
          objc_msgSend_firstStrokeOrigin(v465, v381, v382, v383, v384, v385);
          v387 = v386;
          objc_msgSend_firstStrokeOrigin(v465, v388, v389, v390, v391, v392);
          v394 = v393;
          objc_msgSend_firstStrokeOrigin(v465, v395, v396, v397, v398, v399);
          v401 = v400;
          objc_msgSend_firstStrokeOrigin(v465, v402, v403, v404, v405, v406);
          if (v401 * v412 + v387 * v394 >= v373 * v380 + v359 * v366)
          {
            objc_msgSend_bounds(v468, v407, v408, v409, v410, v411);
          }

          else
          {
            objc_msgSend_firstStrokeOrigin(v465, v407, v408, v409, v410, v411);
          }

          v265 = objc_msgSend_groupByAddingStrokeIdentifiers_removingStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_lastSubstrokeIndexBeforeMerge_firstStrokeOrigin_(v465, v413, v466, 0, v460, v464, v219, v232, v457, v456, v455, v454, *__p, *&__p[1], v546, v539, v453, *&v238, v239, v414, v415);

          if (v539[0])
          {
            v539[1] = v539[0];
            operator delete(v539[0]);
          }

          if ((objc_msgSend_containsObject_(v475, v417, v465, v418, v419, v420) & 1) == 0)
          {
            objc_msgSend_addObject_(v458, v421, v465, v422, v423, v424);
          }

          objc_msgSend_removeObject_(v475, v421, v465, v422, v423, v424);
          objc_msgSend_removeObject_(obj, v425, v465, v426, v427, v428);
          if (a9)
          {
            objc_msgSend_tryRegroupingStrokesInGroup_substrokePlacementsByStrokeIdentifier_cancellationBlock_(v476, v429, v265, v133, v470, v432);
            v487 = 0u;
            v488 = 0u;
            v485 = 0u;
            v433 = v486 = 0u;
            v440 = objc_msgSend_countByEnumeratingWithState_objects_count_(v433, v434, &v485, v548, 16, v435);
            if (v440)
            {
              v441 = *v486;
              do
              {
                for (jj = 0; jj != v440; ++jj)
                {
                  if (*v486 != v441)
                  {
                    objc_enumerationMutation(v433);
                  }

                  v443 = *(*(&v485 + 1) + 8 * jj);
                  objc_msgSend_addObject_(v475, v436, v443, v437, v438, v439);
                  objc_msgSend_addObject_(obj, v444, v443, v445, v446, v447);
                }

                v440 = objc_msgSend_countByEnumeratingWithState_objects_count_(v433, v436, &v485, v548, 16, v439);
              }

              while (v440);
            }
          }

          else
          {
            objc_msgSend_addObject_(v475, v429, v265, v430, v431, v432);
            objc_msgSend_addObject_(obj, v448, v265, v449, v450, v451);
          }

          if (a11 && v265)
          {
            v452 = v265;
            *a11 = v265;
          }

          goto LABEL_156;
        }

LABEL_104:
        v264 = v467;
        if (v99)
        {
          v265 = 0;
LABEL_156:

          _Block_object_dispose(&v518, 8);
          _Block_object_dispose(&v522, 8);

          _Block_object_dispose(&v528, 8);
          _Block_object_dispose(&v534, 8);
          goto LABEL_157;
        }

        if (v480 && objc_msgSend_count(v480, v71, v72, v73, v74, v75))
        {
LABEL_112:
          if (objc_msgSend_count(v480, v266, v267, v268, v269, v270))
          {
LABEL_118:
            if (objc_msgSend_count(v480, v289, v290, v291, v292, v293))
            {
              v313 = v480;
              goto LABEL_128;
            }

LABEL_120:
            v313 = objc_msgSend_array(MEMORY[0x1E695DF70], v289, v290, v291, v292, v293);
            v483 = 0u;
            v484 = 0u;
            v481 = 0u;
            v482 = 0u;
            v314 = objc_opt_class();
            v319 = objc_msgSend_substrokesForStroke_(v314, v315, v264, v316, v317, v318);
            v322 = objc_msgSend_countByEnumeratingWithState_objects_count_(v319, v320, &v481, v547, 16, v321);
            if (v322)
            {
              v323 = *v482;
              do
              {
                for (kk = 0; kk != v322; ++kk)
                {
                  if (*v482 != v323)
                  {
                    objc_enumerationMutation(v319);
                  }

                  v325 = *(*(&v481 + 1) + 8 * kk);
                  v326 = [CHSubstrokePlacement alloc];
                  v331 = objc_msgSend_initWithSubstroke_(v326, v327, v325, v328, v329, v330);
                  objc_msgSend_setWritingOrientation_(v331, v332, v333, v334, v335, v336, *(v476 + 16), *(v476 + 24));
                  objc_msgSend_addObject_(v313, v337, v331, v338, v339, v340);
                }

                v322 = objc_msgSend_countByEnumeratingWithState_objects_count_(v319, v341, &v481, v547, 16, v342);
              }

              while (v322);
            }

            v264 = v467;
LABEL_128:
            v343 = v264;
            v344 = v313;
            v459;
            objc_msgSend_encodedStrokeIdentifier(v343, v345, v346, v347, v348, v349);
            objc_claimAutoreleasedReturnValue();
            v546 = *(v476 + 16);
            v545 = *(v476 + 32);
            v355 = objc_msgSend_mutableCopy(v344, v350, v351, v352, v353, v354);
            v544 = v355;
            objc_msgSend_estimateWritingDirectionAndSortSubstrokesAccordingly_averageWritingOrientation_averageStrokeDeviation_(v476, v356, &v544, &v546, &v545, v357);
            v544;

            __p[1] = 0;
            __p[0] = 0;
            v543 = 0;
            operator new();
          }

LABEL_113:
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v294 = v480;
          v295 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v295, OS_LOG_TYPE_FAULT))
          {
            v301 = objc_msgSend_strokeProvider(v476, v296, v297, v298, v299, v300);
            v307 = objc_msgSend_strokeIdentifier(v467, v302, v303, v304, v305, v306);
            isValidStrokeIdentifier = objc_msgSend_isValidStrokeIdentifier_(v301, v308, v307, v309, v310, v311);
            *buf = 67109120;
            *&buf[4] = isValidStrokeIdentifier;
            _os_log_impl(&dword_18366B000, v295, OS_LOG_TYPE_FAULT, "Unexpected nil / empty substrokes in CHBottomUpStrokeGroupingStrategy. Stroke indentifier valid ? %i", buf, 8u);

            v294 = v480;
          }

          v264 = v467;
          if (!v294)
          {
            goto LABEL_120;
          }

          goto LABEL_118;
        }

        if (qword_1EA84DC48 == -1)
        {
          v271 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v271, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_111;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v271 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v271, OS_LOG_TYPE_ERROR))
          {
LABEL_111:

            v264 = v467;
            if (!v480)
            {
              goto LABEL_113;
            }

            goto LABEL_112;
          }
        }

        v277 = objc_msgSend_strokeProvider(v476, v272, v273, v274, v275, v276);
        v283 = objc_msgSend_strokeIdentifier(v467, v278, v279, v280, v281, v282);
        v288 = objc_msgSend_isValidStrokeIdentifier_(v277, v284, v283, v285, v286, v287);
        *buf = 67109120;
        *&buf[4] = v288;
        _os_log_impl(&dword_18366B000, v271, OS_LOG_TYPE_ERROR, "Unexpected nil / empty substrokes in CHBottomUpStrokeGroupingStrategy. Stroke indentifier valid ? %i", buf, 8u);

        goto LABEL_111;
      }
    }

    v125 = objc_msgSend_compareDistanceInWritingSequenceOfStroke_andStroke_toReferenceStroke_(v101, v71, v471, v529[5], v467, v75);
    v97 = v535[3];
    v126 = v100 - v97;
    v127 = v101[11];
    if (v100 - v97 >= -v127 && (v125 || v126 >= 0.0))
    {
      v416 = fabs(v126) < v127 && v125 == -1;
      v104 = v469;
      if (!v416)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v104 = v469;
    }

    goto LABEL_82;
  }

LABEL_157:
}

void sub_1839506CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, void *a25, void *a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, void *a35, void *a36, uint64_t a37, void *a38, _Unwind_Exception *exception_objecta, void *a40, uint64_t a41, void *a42)
{
  _Block_object_dispose(&STACK[0x338], 8);
  _Block_object_dispose(&STACK[0x358], 8);

  _Block_object_dispose(&STACK[0x388], 8);
  _Block_object_dispose(&STACK[0x3B8], 8);

  _Unwind_Resume(a1);
}

void sub_183950C28(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, uint64_t a7, void *a8)
{
  v593 = *MEMORY[0x1E69E9840];
  v554 = a2;
  v555 = a3;
  v551 = a4;
  v552 = a5;
  v550 = a8;
  v572 = a1;
  if (a1)
  {
    v18 = objc_msgSend_allObjects(v554, v13, v14, v15, v16, v17);
    v23 = objc_msgSend_sortedArrayUsingComparator_(v18, v19, &unk_1EF1BF618, v20, v21, v22);
    v584 = objc_msgSend_mutableCopy(v23, v24, v25, v26, v27, v28);

    if (v550)
    {
      v578 = v550;
    }

    else
    {
      v578 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v29, v30, v31, v32, v33);
    }

    v39 = 0;
    v573 = a6 ^ 1;
    v579 = (a7 + 8);
    v40 = 20;
    if (a6)
    {
      v40 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v553 = v40;
    while (1)
    {
      if (v39 >= objc_msgSend_count(v584, v34, v35, v36, v37, v38))
      {

        break;
      }

      v45 = objc_msgSend_objectAtIndexedSubscript_(v584, v41, v39, v42, v43, v44);
      v46 = objc_opt_class();
      isMemberOfClass = objc_msgSend_isMemberOfClass_(v45, v47, v46, v48, v49, v50);

      if ((isMemberOfClass & 1) == 0)
      {
        goto LABEL_8;
      }

      v52 = objc_msgSend_objectAtIndexedSubscript_(v584, v34, v39, v36, v37, v38);
      v53 = MEMORY[0x1E696AD98];
      v581 = v52;
      v59 = objc_msgSend_uniqueIdentifier(v52, v54, v55, v56, v57, v58);
      v64 = objc_msgSend_numberWithInteger_(v53, v60, v59, v61, v62, v63);
      v69 = objc_msgSend_objectForKey_(v578, v65, v64, v66, v67, v68);

      if (!v69)
      {
        v74 = sub_18395AF48(v572, v581, v573 & *(v572 + 176));
        v75 = MEMORY[0x1E696AD98];
        v81 = objc_msgSend_uniqueIdentifier(v581, v76, v77, v78, v79, v80);
        v86 = objc_msgSend_numberWithInteger_(v75, v82, v81, v83, v84, v85);
        objc_msgSend_setObject_forKey_(v578, v87, v74, v86, v88, v89);

        v69 = v74;
      }

      v574 = v69;
      v90 = objc_msgSend_objectAtIndexedSubscript_(v69, v70, 0, v71, v72, v73);
      objc_msgSend_floatValue(v90, v91, v92, v93, v94, v95);
      v97 = v96;

      v102 = objc_msgSend_objectAtIndexedSubscript_(v69, v98, 1, v99, v100, v101);
      objc_msgSend_floatValue(v102, v103, v104, v105, v106, v107);
      v571 = v108;

      objc_msgSend_bounds(v581, v109, v110, v111, v112, v113);
      MinX = CGRectGetMinX(v594);
      objc_msgSend_bounds(v581, v114, v115, v116, v117, v118);
      MaxY = CGRectGetMaxY(v595);
      v124 = v571;
      v561 = fabs(v97);
      if (v571 > 1.4)
      {
        v125 = a6 ^ 1;
      }

      else
      {
        v125 = 0;
      }

      v577 = v125;
      v576 = v97;
      v563 = v97;
      v569 = v39;
      while (++v39 < objc_msgSend_count(v584, v119, v120, v121, v122, v123, v124))
      {
        v130 = objc_msgSend_objectAtIndexedSubscript_(v584, v126, v39, v127, v128, v129);
        v131 = objc_opt_class();
        v136 = objc_msgSend_isMemberOfClass_(v130, v132, v131, v133, v134, v135);

        if (v136)
        {
          v137 = objc_msgSend_objectAtIndexedSubscript_(v584, v119, v39, v121, v122, v123);
          objc_msgSend_bounds(v581, v138, v139, v140, v141, v142);
          MinY = CGRectGetMinY(v596);
          objc_msgSend_bounds(v137, v144, v145, v146, v147, v148);
          if (MinY >= CGRectGetMinY(v597))
          {
            objc_msgSend_bounds(v137, v149, v150, v151, v152, v153);
            v155 = v171;
            v157 = v172;
            v159 = v173;
            v161 = v174;
            objc_msgSend_bounds(v581, v175, v176, v177, v178, v179);
          }

          else
          {
            objc_msgSend_bounds(v581, v149, v150, v151, v152, v153);
            v155 = v154;
            v157 = v156;
            v159 = v158;
            v161 = v160;
            objc_msgSend_bounds(v137, v162, v163, v164, v165, v166);
          }

          v180 = CGRectGetMinY(*&v167);
          v598.origin.x = v155;
          v598.origin.y = v157;
          v598.size.width = v159;
          v598.size.height = v161;
          v582 = v137;
          if (v180 > CGRectGetMaxY(v598) + 200.0)
          {
            goto LABEL_18;
          }

          v186 = objc_msgSend_uniqueIdentifier(v581, v181, v182, v183, v184, v185);
          v192 = objc_msgSend_uniqueIdentifier(v137, v187, v188, v189, v190, v191);
          v198 = v192;
          v199 = *v579;
          if (*v579)
          {
            v200 = (a7 + 8);
            do
            {
              v201 = v199[4];
              if (v201 < v186)
              {
                ++v199;
              }

              else if (v186 >= v201)
              {
                if (v199[5] >= v192)
                {
                  v200 = v199;
                }

                v199 += v199[5] < v192;
              }

              else
              {
                v200 = v199;
              }

              v199 = *v199;
            }

            while (v199);
            if (v200 != v579)
            {
              v202 = v200[4];
              if (v186 >= v202 && (v202 < v186 || v192 >= v200[5]))
              {
                goto LABEL_18;
              }
            }
          }

          v203 = MEMORY[0x1E696AD98];
          v204 = objc_msgSend_uniqueIdentifier(v582, v193, v194, v195, v196, v197);
          v209 = objc_msgSend_numberWithInteger_(v203, v205, v204, v206, v207, v208);
          v214 = objc_msgSend_objectForKey_(v578, v210, v209, v211, v212, v213);

          if (!v214)
          {
            v219 = sub_18395AF48(v572, v582, v573 & *(v572 + 176));
            v220 = MEMORY[0x1E696AD98];
            v226 = objc_msgSend_uniqueIdentifier(v582, v221, v222, v223, v224, v225);
            v231 = objc_msgSend_numberWithInteger_(v220, v227, v226, v228, v229, v230);
            objc_msgSend_setObject_forKey_(v578, v232, v219, v231, v233, v234);

            v214 = v219;
          }

          v580 = v214;
          v235 = objc_msgSend_objectAtIndexedSubscript_(v214, v215, 0, v216, v217, v218);
          objc_msgSend_floatValue(v235, v236, v237, v238, v239, v240);
          v242 = v241;

          v247 = objc_msgSend_objectAtIndexedSubscript_(v214, v243, 1, v244, v245, v246);
          objc_msgSend_floatValue(v247, v248, v249, v250, v251, v252);
          v254 = v253;

          v255 = v242;
          v256 = v577;
          if (v254 <= 1.4)
          {
            v256 = 0;
          }

          if (v256 == 1 && vabdd_f64(v576, v255) > 0.523598776)
          {
            v257 = (a7 + 8);
LABEL_44:
            v258 = *v257;
            if (!*v257)
            {
LABEL_50:
              operator new();
            }

            while (1)
            {
              v257 = v258;
              v259 = v258[4];
              if (v186 < v259)
              {
                goto LABEL_44;
              }

              if (v259 >= v186)
              {
                v260 = v257[5];
                if (v198 < v260)
                {
                  goto LABEL_44;
                }

                if (v260 >= v198)
                {
                  break;
                }
              }

              v258 = v257[1];
              if (!v258)
              {
                goto LABEL_50;
              }
            }

LABEL_18:
          }

          else
          {
            v261 = v581;
            v262 = v582;
            v268 = v262;
            *&v269 = v571;
            v270 = MinX;
            if (v571 <= v254)
            {
              v271 = v262;

              v583 = v261;
              objc_msgSend_bounds(v271, v272, v273, v274, v275, v276);
              v270 = CGRectGetMinX(v599);
              objc_msgSend_bounds(v271, v277, v278, v279, v280, v281);
              v269 = CGRectGetMaxY(v600);
              MaxY = v269;
              v563 = v255;
              v261 = v271;
            }

            else
            {
              v583 = v262;
            }

            objc_msgSend_averageStrokeDeviation(v261, v263, v264, v265, v266, v267, v269);
            v283 = v282;
            objc_msgSend_averageStrokeDeviation(v261, v284, v285, v286, v287, v288);
            v290 = v289;
            objc_msgSend_averageStrokeDeviation(v261, v291, v292, v293, v294, v295);
            v297 = v296;
            v556 = v268;
            MinX = v270;
            objc_msgSend_averageStrokeDeviation(v261, v298, v299, v300, v301, v302);
            v304 = v303;
            v305 = v261;
            sub_18395B224(v591, v270, MaxY, -v563, CHBottomUpStrokeGroupingStrategy, v261);
            sub_18395B224(&__p, v270, MaxY, -v563, CHBottomUpStrokeGroupingStrategy, v583);
            v558 = v290;
            v559 = v283;
            v308 = __p;
            if (v561 > 2.35619449 == fabs(v255) <= 2.35619449 && __p != v590)
            {
              v309 = v590 - 32;
              if (v590 - 32 > __p)
              {
                v310 = __p + 32;
                do
                {
                  v312 = *(v310 - 2);
                  v311 = *(v310 - 1);
                  v313 = *(v309 + 1);
                  *(v310 - 2) = *v309;
                  *(v310 - 1) = v313;
                  *v309 = v312;
                  *(v309 + 1) = v311;
                  v309 -= 32;
                  v314 = v310 >= v309;
                  v310 += 32;
                }

                while (!v314);
              }
            }

            v315 = *v591[0];
            v316 = *v308;
            if (*v591[0] <= *v308)
            {
              objc_msgSend_unionStrokeBounds_usingStrokeCountLimit_reverseOrder_(CHStrokeUtilities, v306, v591, v553, 1, v307);
              rect = v329;
              r1 = v330;
              v320 = v331;
              v322 = v332;
              objc_msgSend_unionStrokeBounds_usingStrokeCountLimit_reverseOrder_(CHStrokeUtilities, v333, &__p, 20, 0, v334);
            }

            else
            {
              objc_msgSend_unionStrokeBounds_usingStrokeCountLimit_reverseOrder_(CHStrokeUtilities, v306, v591, v553, 0, v307);
              rect = v317;
              r1 = v318;
              v320 = v319;
              v322 = v321;
              objc_msgSend_unionStrokeBounds_usingStrokeCountLimit_reverseOrder_(CHStrokeUtilities, v323, &__p, 20, 1, v324);
            }

            v567 = v328;
            v568 = v327;
            v335 = v325;
            v336 = v326;
            v601.origin.x = v320;
            v601.origin.y = rect;
            v601.size.width = v322;
            v601.size.height = r1;
            v618.origin.x = v335;
            v618.origin.y = v336;
            v618.size.height = v567;
            v618.size.width = v568;
            v602 = CGRectIntersection(v601, v618);
            width = v602.size.width;
            height = v602.size.height;
            v340 = sqrt(v297 * v304 + v559 * v558);
            if (!a6 || ((objc_msgSend_horizontalOverlapOfIndividualStrokeBounds_otherStrokeBounds_(CHStrokeUtilities, v337, v591, &__p, v338, v339), v341 < v340) ? (v342 = width <= v340) : (v342 = 1), v342))
            {
              if (v315 <= v316)
              {
                v606.origin.x = v335;
                v606.origin.y = v336;
                v606.size.height = v567;
                v606.size.width = v568;
                MidX = CGRectGetMidX(v606);
                v607.origin.x = v320;
                v607.origin.y = rect;
                v607.size.width = v322;
                v607.size.height = r1;
                if (MidX < CGRectGetMaxX(v607))
                {
                  v608.origin.x = v335;
                  v608.origin.y = v336;
                  v608.size.height = v567;
                  v608.size.width = v568;
                  v361 = CGRectGetMidX(v608);
                  objc_msgSend_unionStrokeBounds_aroundXPosition_usingOneSideStrokeCountLimit_(CHStrokeUtilities, v362, v591, 10, v363, v364, v361);
                  rect = v365;
                  r1 = v366;
                  v351 = v367;
                  v353 = v368;
                  objc_msgSend_unionStrokeBounds_usingStrokeCountLimit_reverseOrder_(CHStrokeUtilities, v369, &__p, 0x7FFFFFFFFFFFFFFFLL, 0, v370);
                  goto LABEL_77;
                }

                v378 = 0;
                v377 = v340 * 5.5;
LABEL_84:
                v613.origin.x = v335;
                v613.origin.y = v336;
                v613.size.height = v567;
                v613.size.width = v568;
                v384 = CGRectGetMinX(v613);
                v614.origin.x = v320;
                v614.origin.y = rect;
                v614.size.width = v322;
                v614.size.height = r1;
                MaxX = CGRectGetMaxX(v614);
                v381 = 0.0;
                if (v384 >= MaxX)
                {
                  v615.origin.x = v335;
                  v615.origin.y = v336;
                  v615.size.height = v567;
                  v615.size.width = v568;
                  v382 = CGRectGetMinX(v615);
                  v616.origin.x = v320;
                  v616.origin.y = rect;
                  v616.size.width = v322;
                  v616.size.height = r1;
                  v383 = CGRectGetMaxX(v616);
                  goto LABEL_86;
                }

                goto LABEL_87;
              }

              v603.origin.x = v320;
              v603.origin.y = rect;
              v603.size.width = v322;
              v603.size.height = r1;
              v343 = CGRectGetMidX(v603);
              v604.origin.x = v335;
              v604.origin.y = v336;
              v604.size.height = v567;
              v604.size.width = v568;
              if (v343 < CGRectGetMaxX(v604))
              {
                v605.origin.x = v320;
                v605.origin.y = rect;
                v605.size.width = v322;
                v605.size.height = r1;
                v344 = CGRectGetMidX(v605);
                objc_msgSend_unionStrokeBounds_aroundXPosition_usingOneSideStrokeCountLimit_(CHStrokeUtilities, v345, &__p, 10, v346, v347, v344);
                rect = v348;
                r1 = v349;
                v351 = v350;
                v353 = v352;
                objc_msgSend_unionStrokeBounds_usingStrokeCountLimit_reverseOrder_(CHStrokeUtilities, v354, v591, 0x7FFFFFFFFFFFFFFFLL, 0, v355);
LABEL_77:
                v335 = v356;
                v336 = v357;
                v371 = v358;
                v372 = v359;
                v373 = 1;
                v374 = 1;
                v375 = 1;
                v376 = v351;
                goto LABEL_97;
              }

              v378 = 0;
              v377 = v340 * 5.5;
            }

            else
            {
              v377 = v340 * 5.5;
              v378 = 1;
              if (v315 <= v316)
              {
                goto LABEL_84;
              }
            }

            v609.origin.x = v320;
            v609.origin.y = rect;
            v609.size.width = v322;
            v609.size.height = r1;
            v379 = CGRectGetMinX(v609);
            v610.origin.x = v335;
            v610.origin.y = v336;
            v610.size.height = v567;
            v610.size.width = v568;
            v380 = CGRectGetMaxX(v610);
            v381 = 0.0;
            if (v379 >= v380)
            {
              v611.origin.x = v320;
              v611.origin.y = rect;
              v611.size.width = v322;
              v611.size.height = r1;
              v382 = CGRectGetMinX(v611);
              v612.origin.x = v335;
              v612.origin.y = v336;
              v612.size.height = v567;
              v612.size.width = v568;
              v383 = CGRectGetMaxX(v612);
LABEL_86:
              v381 = v382 - v383;
            }

LABEL_87:
            v373 = 0;
            v375 = v381 < v377;
            if (v315 > v316)
            {
              v386 = 1;
            }

            else
            {
              v386 = a6;
            }

            v372 = v567;
            v371 = v568;
            v387 = v568 + v381;
            v388 = v322 + v568 + v381;
            v389 = v387 + v388;
            if (v386)
            {
              v376 = v320 - v387;
            }

            else
            {
              v376 = v320;
            }

            if (a6)
            {
              v353 = v389;
            }

            else
            {
              v353 = v388;
            }

            v374 = v378 ^ 1;
LABEL_97:
            v390 = rect;
            v391 = v353;
            v392 = r1;
            v393 = v335;
            v394 = v336;
            v395 = v371;
            v617 = CGRectIntersection(*&v376, *(&v372 - 3));
            v401 = v617.size.width;
            v402 = v617.size.height;
            v403 = width * height;
            v404 = v568 * v567;
            if ((v373 | a6))
            {
              if (v373)
              {
                goto LABEL_109;
              }
            }

            else
            {
              v405 = objc_msgSend_writingDirectionSortedSubstrokes(v583, v396, v397, v398, v399, v400);
              if (objc_msgSend_count(v405, v406, v407, v408, v409, v410) >= *(v572 + 96))
              {

                if (v403 > v404 * 0.4)
                {
                  goto LABEL_109;
                }
              }

              else
              {
              }
            }

            v411 = 0.4;
            if ((v374 & a6) == 1 && v403 > v404 * 0.4 && (width > v353 * 0.95 || width > v371 * 0.95))
            {
LABEL_109:
              v411 = 0.7;
              goto LABEL_112;
            }

            if (v402 == r1)
            {
              v411 = 0.2;
            }

LABEL_112:
            if (v401 * v402 <= v404 * v411 || !v375)
            {
              v449 = (a7 + 8);
              while (1)
              {
LABEL_136:
                v450 = *v449;
                if (!*v449)
                {
LABEL_142:
                  operator new();
                }

                while (1)
                {
                  v449 = v450;
                  v451 = v450[4];
                  if (v186 < v451)
                  {
                    break;
                  }

                  if (v451 >= v186)
                  {
                    v452 = v449[5];
                    if (v198 < v452)
                    {
                      goto LABEL_136;
                    }

                    if (v452 >= v198)
                    {
                      goto LABEL_143;
                    }
                  }

                  v450 = v449[1];
                  if (!v450)
                  {
                    goto LABEL_142;
                  }
                }
              }
            }

            if (v552)
            {
              v587 = 0u;
              v588 = 0u;
              v585 = 0u;
              v586 = 0u;
              v414 = v552;
              v417 = 0;
              v418 = objc_msgSend_countByEnumeratingWithState_objects_count_(v414, v415, &v585, v592, 16, v416);
              if (v418)
              {
                v419 = *v586;
                v420 = 3.40282347e38;
                do
                {
                  v421 = 0;
                  do
                  {
                    if (*v586 != v419)
                    {
                      objc_enumerationMutation(v414);
                    }

                    v422 = *(*(&v585 + 1) + 8 * v421);
                    v423 = sub_183953E28(v422, v305, v583, v315 > v316, v373 ^ 1);
                    if (v422)
                    {
                      v424 = atan2(*(v422 + 24), *(v422 + 16));
                      objc_msgSend_averageWritingOrientation(v423, v425, v426, v427, v428, v429);
                      v431 = v430;
                      objc_msgSend_averageWritingOrientation(v423, v432, v433, v434, v435, v436);
                      v438 = vabdd_f64(atan2(v431, v437), v424);
                      if (v438 <= 3.14159265)
                      {
                        v439 = v438;
                      }

                      else
                      {
                        v439 = 6.28318531 - v438;
                      }
                    }

                    else
                    {
                      v439 = 0.0;
                    }

                    if (!v417 || v439 < v420)
                    {
                      v440 = v423;

                      v417 = v440;
                      v420 = v439;
                    }

                    ++v421;
                  }

                  while (v418 != v421);
                  v443 = objc_msgSend_countByEnumeratingWithState_objects_count_(v414, v441, &v585, v592, 16, v442);
                  v418 = v443;
                }

                while (v443);
              }

              if (v417)
              {
LABEL_150:
                v455 = MEMORY[0x1E696AD98];
                v456 = objc_msgSend_uniqueIdentifier(v417, v444, v445, v446, v447, v448);
                v461 = objc_msgSend_numberWithInteger_(v455, v457, v456, v458, v459, v460);
                objc_msgSend_removeObjectForKey_(v578, v462, v461, v463, v464, v465);

                if ((objc_msgSend_containsObject_(v555, v466, v305, v467, v468, v469) & 1) == 0)
                {
                  objc_msgSend_addObject_(v551, v470, v305, v471, v472, v473);
                }

                if ((objc_msgSend_containsObject_(v555, v470, v583, v471, v472, v473) & 1) == 0)
                {
                  objc_msgSend_addObject_(v551, v474, v583, v475, v476, v477);
                }

                objc_msgSend_addObject_(v555, v474, v417, v475, v476, v477);
                objc_msgSend_addObject_(v554, v478, v417, v479, v480, v481);
                objc_msgSend_removeObject_(v555, v482, v305, v483, v484, v485);
                objc_msgSend_removeObject_(v555, v486, v583, v487, v488, v489);
                objc_msgSend_removeObject_(v554, v490, v305, v491, v492, v493);
                objc_msgSend_removeObject_(v554, v494, v583, v495, v496, v497);
                objc_msgSend_removeObjectAtIndex_(v584, v498, v39, v499, v500, v501);
                objc_msgSend_removeObjectAtIndex_(v584, v502, v569, v503, v504, v505);
                objc_msgSend_bounds(v417, v506, v507, v508, v509, v510);
                v512 = v511;
                objc_msgSend_bounds(v417, v513, v514, v515, v516, v517);
                v523 = 0;
                v525 = v512 * v524;
                while (1)
                {
                  if (v523 >= objc_msgSend_count(v584, v518, v519, v520, v521, v522))
                  {
                    objc_msgSend_addObject_(v584, v526, v417, v527, v528, v529);
                    goto LABEL_160;
                  }

                  v530 = objc_msgSend_objectAtIndexedSubscript_(v584, v526, v523, v527, v528, v529);
                  objc_msgSend_bounds(v530, v531, v532, v533, v534, v535);
                  v537 = v536;
                  v542 = objc_msgSend_objectAtIndexedSubscript_(v584, v538, v523, v539, v540, v541);
                  objc_msgSend_bounds(v542, v543, v544, v545, v546, v547);
                  v549 = v548;

                  if (v525 <= v537 * v549)
                  {
                    break;
                  }

                  ++v523;
                }

                objc_msgSend_insertObject_atIndex_(v584, v518, v417, v523, v521, v522);
LABEL_160:

                v453 = 0;
                v569 = -1;
                v454 = __p;
                if (!__p)
                {
                  goto LABEL_145;
                }

LABEL_144:
                v590 = v454;
                operator delete(v454);
                goto LABEL_145;
              }
            }

            else
            {
              v417 = sub_183953E28(v572, v305, v583, v315 > v316, v373 ^ 1);
              if (v417)
              {
                goto LABEL_150;
              }
            }

LABEL_143:
            v453 = 1;
            v454 = __p;
            if (__p)
            {
              goto LABEL_144;
            }

LABEL_145:
            if (v591[0])
            {
              v591[1] = v591[0];
              operator delete(v591[0]);
            }

            if ((v453 & 1) == 0)
            {
              break;
            }
          }
        }
      }

      v39 = v569;
LABEL_8:
      ++v39;
    }
  }
}

uint64_t sub_183951FA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_183951FBC(uint64_t a1, void *a2)
{
  v4 = a2;
  v41 = 10000.0;
  sub_1839521EC(*(a1 + 32), &v41, v4, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
  v6 = *(a1 + 32);
  if (v41 <= v6[9] && v41 <= *(*(*(a1 + 56) + 8) + 24))
  {
    v39 = 0;
    v40 = 10000.0;
    objc_msgSend_getMergingEndOfLineCost_mergingEndOfLineStroke_forStroke_consistingOfSubstrokes_toLineGroup_(v6, v5, &v40, &v39, *(a1 + 40), *(a1 + 48), v4, v41);
    v7 = v39;
    v10 = v39;
    v11 = *(a1 + 32);
    if (v40 < v11[9])
    {
      if ((v12 = objc_msgSend_compareDistanceInWritingSequenceOfStroke_andStroke_toReferenceStroke_(v11, v8, v10, *(*(*(a1 + 64) + 8) + 40), *(a1 + 40), v9, v40), v13 = *(*(a1 + 56) + 8), v14 = v40 - *(v13 + 24), v15 = *(*(a1 + 32) + 88), v14 < -v15) || !v12 && v14 < 0.0 || (fabs(v14) < v15 ? (v16 = v12 == -1) : (v16 = 0), v16))
      {
        *(v13 + 24) = v40;
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v7);
        objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
        v22 = objc_msgSend_encodedStrokeIdentifier(v10, v17, v18, v19, v20, v21);
        v28 = objc_msgSend_writingDirectionSortedStrokeIdentifiers(v4, v23, v24, v25, v26, v27);
        v34 = objc_msgSend_lastObject(v28, v29, v30, v31, v32, v33);
        *(*(*(a1 + 80) + 8) + 24) = objc_msgSend_isEqual_(v22, v35, v34, v36, v37, v38) ^ 1;
      }
    }
  }
}

void sub_1839521EC(double *a1, double *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v41 = a3;
  if (a1)
  {
    objc_msgSend_bounds(v41, v11, v12, v13, v14, v15);
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;
    MinY = CGRectGetMinY(v45);
    v46.origin.x = a4;
    v46.origin.y = a5;
    v46.size.width = a6;
    v46.size.height = a7;
    v21 = 0.0;
    if (MinY > CGRectGetMaxY(v46))
    {
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v22 = CGRectGetMinY(v47);
      v48.origin.x = a4;
      v48.origin.y = a5;
      v48.size.width = a6;
      v48.size.height = a7;
      v21 = v22 - CGRectGetMaxY(v48);
    }

    v49.origin.x = a4;
    v49.origin.y = a5;
    v49.size.width = a6;
    v49.size.height = a7;
    v23 = CGRectGetMinY(v49);
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    if (v23 > CGRectGetMaxY(v50))
    {
      v51.origin.x = a4;
      v51.origin.y = a5;
      v51.size.width = a6;
      v51.size.height = a7;
      v29 = CGRectGetMinY(v51);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v21 = v29 - CGRectGetMaxY(v52);
    }

    if (v21 == 0.0)
    {
      v30 = 0.0;
      if (!a2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      objc_msgSend_averageStrokeDeviation(v41, v24, v25, v26, v27, v28);
      v32 = v31;
      objc_msgSend_averageStrokeDeviation(v41, v33, v34, v35, v36, v37);
      if (!a2)
      {
        goto LABEL_16;
      }

      v39 = v32 * 3.0;
      if (v32 * 3.0 <= a1[4])
      {
        v39 = a1[4];
      }

      v40 = v38 * 3.0;
      if (v38 * 3.0 <= a1[5])
      {
        v40 = a1[5];
      }

      v30 = (a1[13] * fabs(v21 / sqrt(v40 * v40 + v39 * v39)) + 0.0) * 0.8;
    }

    *a2 = v30;
  }

LABEL_16:
}

uint64_t sub_18395240C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = objc_msgSend_strokeProvider(*(a1 + 32), v7, v8, v9, v10, v11);
  v17 = objc_msgSend_strokeIdentifierFromData_(v12, v13, v5, v14, v15, v16);

  v23 = objc_msgSend_strokeProvider(*(a1 + 32), v18, v19, v20, v21, v22);
  v28 = objc_msgSend_strokeIdentifierFromData_(v23, v24, v6, v25, v26, v27);

  v34 = objc_msgSend_strokeProvider(*(a1 + 32), v29, v30, v31, v32, v33);
  v38 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v34, v35, v17, v28, v36, v37);

  return v38;
}

id sub_183952538(uint64_t a1, void *a2, void **a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v86 = a2;
  if (a1)
  {
    v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = v86;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v91, v95, 16, v12);
    if (v18)
    {
      v90 = 0;
      v88 = *v92;
      do
      {
        v19 = 0;
        v89 = v18;
        do
        {
          if (*v92 != v88)
          {
            objc_enumerationMutation(obj);
          }

          v20 = 0;
          v21 = 0;
          v22 = *(*(&v91 + 1) + 8 * v19);
          while (v21 < objc_msgSend_count(v10, v13, v14, v15, v16, v17))
          {
            v23 = objc_msgSend_objectAtIndexedSubscript_(v10, v13, v21, v15, v16, v17);
            v29 = objc_msgSend_substroke(v22, v24, v25, v26, v27, v28);
            v35 = objc_msgSend_strokeIdentifier(v29, v30, v31, v32, v33, v34);
            isEqual = objc_msgSend_isEqual_(v23, v36, v35, v37, v38, v39);

            if (isEqual)
            {
              if (v21 != 0x7FFFFFFFFFFFFFFFLL)
              {
                objc_msgSend_writingOrientation(v22, v13, v14, v15, v16, v17);
                *(*a3 + v20) = v68 + *(*a3 + v20);
                objc_msgSend_writingOrientation(v22, v69, v70, v71, v72, v73);
                *(*a3 + v20 + 8) = v74 + *(*a3 + v20 + 8);
                ++*(8 * v21);
                goto LABEL_5;
              }

              break;
            }

            ++v21;
            v20 += 16;
          }

          v41 = objc_msgSend_substroke(v22, v13, v14, v15, v16, v17);
          v47 = objc_msgSend_strokeIdentifier(v41, v42, v43, v44, v45, v46);
          objc_msgSend_addObject_(v10, v48, v47, v49, v50, v51);

          objc_msgSend_writingOrientation(v22, v52, v53, v54, v55, v56);
          v60 = a3[1];
          v59 = a3[2];
          if (v60 >= v59)
          {
            v62 = *a3;
            v63 = v60 - *a3;
            v64 = v63 >> 4;
            v65 = (v63 >> 4) + 1;
            if (v65 >> 60)
            {
              sub_18368964C();
            }

            v66 = v59 - v62;
            if (v66 >> 3 > v65)
            {
              v65 = v66 >> 3;
            }

            if (v66 >= 0x7FFFFFFFFFFFFFF0)
            {
              v67 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v67 = v65;
            }

            if (v67)
            {
              if (!(v67 >> 60))
              {
                operator new();
              }

              sub_183688F00();
            }

            v75 = (16 * v64);
            *v75 = v57;
            v75[1] = v58;
            v61 = 16 * v64 + 16;
            memcpy(0, v62, v63);
            *a3 = 0;
            a3[1] = v61;
            a3[2] = 0;
            if (v62)
            {
              operator delete(v62);
            }
          }

          else
          {
            *v60 = v57;
            *(v60 + 1) = v58;
            v61 = (v60 + 16);
          }

          a3[1] = v61;
          v76 = v90;
          v77 = v90 >> 3;
          if (((v90 >> 3) + 1) >> 61)
          {
            sub_18368964C();
          }

          if (v90 >> 3 != -1)
          {
            if (!(((v90 >> 3) + 1) >> 61))
            {
              operator new();
            }

            sub_183688F00();
          }

          *(8 * v77) = 1;
          v90 = 8 * v77 + 8;
          memcpy(0, 0, v76);
LABEL_5:
          ++v19;
        }

        while (v19 != v89);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v91, v95, 16, v17);
      }

      while (v18);
    }

    for (i = 0; i < objc_msgSend_count(v10, v78, v79, v80, v81, v82); ++i)
    {
      v84 = *(8 * i);
      if (v84 >= 2)
      {
        *(*a3 + i) = vdivq_f64(*(*a3 + i), vdupq_lane_s64(COERCE__INT64(v84), 0));
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

_BYTE *sub_183952A70(_BYTE *a1, void *a2, double a3, double a4)
{
  v5 = a2;
  v11 = v5;
  v257 = a1;
  if (!a1)
  {
    goto LABEL_69;
  }

  if (!objc_msgSend_count(v5, v6, v7, v8, v9, v10))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v52 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v52, OS_LOG_TYPE_ERROR, "There must be at least one substroke in the input for the coalescing algorithm.", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v53 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
LABEL_14:

        a1 = MEMORY[0x1E695E0F0];
        goto LABEL_69;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v53 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }
    }

    *v267 = 0;
    _os_log_impl(&dword_18366B000, v53, OS_LOG_TYPE_FAULT, "There must be at least one substroke in the input for the coalescing algorithm.", v267, 2u);
    goto LABEL_14;
  }

  if (a1[178] == 1)
  {
    v256 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
    v22 = objc_msgSend_lastObject(v11, v17, v18, v19, v20, v21);
    objc_msgSend_addObject_(v256, v23, v22, v24, v25, v26);

    v31 = objc_msgSend_objectAtIndexedSubscript_(v11, v27, 0, v28, v29, v30);
    objc_msgSend_strokeDeviation(v31, v32, v33, v34, v35, v36);
    v38 = v37;
    v40 = v39;

    v46 = objc_msgSend_count(v11, v41, v42, v43, v44, v45);
    if (v46)
    {
      if (!(v46 >> 59))
      {
        operator new();
      }

      sub_18368964C();
    }

    v60 = 0;
    v61 = 0;
    v258 = v40 * -2.0;
    v259 = v38 * -2.0;
    while (v61 < objc_msgSend_count(v11, v47, v48, v49, v50, v51))
    {
      v66 = objc_msgSend_objectAtIndexedSubscript_(v11, v62, v61, v63, v64, v65);
      v71 = objc_msgSend_objectAtIndexedSubscript_(v11, v67, v61, v68, v69, v70);
      objc_msgSend_writingOrientation(v71, v72, v73, v74, v75, v76);
      v78 = v77;
      v83 = objc_msgSend_objectAtIndexedSubscript_(v11, v79, v61, v80, v81, v82);
      objc_msgSend_writingOrientation(v83, v84, v85, v86, v87, v88);
      v90 = atan2(v78, v89);

      v96 = objc_msgSend_substroke(v66, v91, v92, v93, v94, v95);
      objc_msgSend_bounds(v96, v97, v98, v99, v100, v101);
      MidX = CGRectGetMidX(v270);
      v108 = objc_msgSend_substroke(v66, v103, v104, v105, v106, v107);
      objc_msgSend_bounds(v108, v109, v110, v111, v112, v113);
      MidY = CGRectGetMidY(v271);

      v115 = v90;
      v121 = __sincosf_stret(v115);
      cosval = v121.__cosval;
      sinval = v121.__sinval;
      if (v61)
      {
        v124 = objc_msgSend_objectAtIndexedSubscript_(v11, v116, v61 - 1, *&v118, *&v119, *&v120);
        objc_msgSend_writingOrientation(v124, v125, v126, v127, v128, v129);
        v131 = v130;
        v136 = objc_msgSend_objectAtIndexedSubscript_(v11, v132, v61, v133, v134, v135);
        objc_msgSend_writingOrientation(v136, v137, v138, v139, v140, v141);
        v143 = v142;
        v148 = objc_msgSend_objectAtIndexedSubscript_(v11, v144, v61 - 1, v145, v146, v147);
        objc_msgSend_writingOrientation(v148, v149, v150, v151, v152, v153);
        v155 = v154;
        v160 = objc_msgSend_objectAtIndexedSubscript_(v11, v156, v61, v157, v158, v159);
        objc_msgSend_writingOrientation(v160, v161, v162, v163, v164, v165);
        v167 = atan2(v131 + v143, v155 + v166);

        v168 = v167;
        v169 = __sincosf_stret(v168);
        v170 = v169.__cosval;
        v171 = v169.__sinval;
        v172 = v265;
        v173 = v260;
        v174 = v261;
      }

      else
      {
        v174 = MidX + v259 * cosval;
        v173 = MidY + v258 * sinval;
        v172 = 0.0;
        v171 = v121.__sinval;
        v170 = v121.__cosval;
        v40 = 0.0;
      }

      v175 = 0;
      v176 = 0;
      v177 = 1.79769313e308;
      v178 = 2.22507386e-308;
      v179 = MidX - v174;
      v180 = MidY - v173;
      v263 = MidY;
      v264 = MidX;
      v260 = MidY;
      v261 = MidX;
      v265 = v172 + v171 * v180 + v179 * v170;
      v40 = v40 + v170 * v180 - v179 * v171;
      v262 = -sinval;
      v181 = 2.22507386e-308;
      v182 = 1.79769313e308;
      while (1)
      {
        v183 = objc_msgSend_substroke(v66, v116, *&v117, *&v118, *&v119, *&v120);
        v189 = objc_msgSend_convexHull(v183, v184, v185, v186, v187, v188);
        v190 = v189[1] - *v189;

        if (v176 >= v190 >> 4)
        {
          break;
        }

        v196 = objc_msgSend_substroke(v66, v191, v192, v193, v194, v195);
        v202 = (*objc_msgSend_convexHull(v196, v197, v198, v199, v200, v201) + v175);
        v266 = v178;
        v203 = v182;
        v204 = v177;
        v205 = sinval;
        v206 = cosval;
        v207 = v40;
        v209 = *v202;
        v208 = v202[1];

        v210 = v209 - v264;
        cosval = v206;
        sinval = v205;
        v177 = v204;
        v182 = v203;
        v178 = v266;
        v211 = v208 - v263;
        v40 = v207;
        v212 = v265 + cosval * v210 + sinval * v211;
        v213 = v207 + v262 * v210 + cosval * v211;
        if (v212 < v182)
        {
          v182 = v212;
        }

        if (v212 > v181)
        {
          v181 = v212;
        }

        if (v213 < v177)
        {
          v177 = v213;
        }

        if (v213 > v266)
        {
          v178 = v213;
        }

        ++v176;
        v175 += 16;
      }

      v214 = v181 - v182;
      v215 = v60;
      v216 = v60 >> 5;
      if (((v60 >> 5) + 1) >> 59)
      {
        sub_18368964C();
      }

      if (v60 >> 5 != -1)
      {
        if (!(((v60 >> 5) + 1) >> 59))
        {
          operator new();
        }

        sub_183688F00();
      }

      v217 = (32 * v216);
      *v217 = v182;
      v217[1] = v177;
      v217[2] = v214;
      v217[3] = v178 - v177;
      v60 = 32 * v216 + 32;
      memcpy(0, 0, v215);

      ++v61;
    }

    v218 = *(v60 - 32);
    v219 = 126 - 2 * __clz((v60 - 32) >> 5);
    v220 = *(v60 - 24);
    v221 = *(v60 - 16);
    v222 = *(v60 - 8);
    if (v60 == 32)
    {
      v223 = 0;
    }

    else
    {
      v223 = v219;
    }

    sub_18395CFF8(0, (v60 - 32), v223, 1);
    if (10.0 - v221 >= 0.0)
    {
      v224 = 10.0 - v221;
    }

    else
    {
      v224 = 0.0;
    }

    v272.origin.x = v218;
    v272.origin.y = v220;
    v272.size.width = v221;
    v272.size.height = v222;
    MinX = CGRectGetMinX(v272);
    v273.origin.x = v218;
    v273.origin.y = v220;
    v273.size.width = v221;
    v273.size.height = v222;
    MaxX = CGRectGetMaxX(v273);
    v227 = v60 >> 5;
    if (v60 >> 5 >= 2)
    {
      v228 = sqrt(a4 * a4 + a3 * a3) * 0.25;
      v229 = v228 + MaxX + v224 * 0.5;
      v230 = MinX - v224 * 0.5 - v228;
      v231 = v227 - 1;
      v232 = (32 * v227 - 64);
      do
      {
        v233 = CGRectGetMinX(*v232);
        v238 = CGRectGetMaxX(*v232);
        v239 = v238;
        if ((v233 < v230 || v233 > v229) && (v238 < v230 || v238 > v229) && (v233 >= v230 || v238 <= v229))
        {
          break;
        }

        v243 = objc_msgSend_objectAtIndexedSubscript_(v11, v234, --v231, v235, v236, v237);
        objc_msgSend_addObject_(v256, v244, v243, v245, v246, v247);

        if (objc_msgSend_count(v256, v248, v249, v250, v251, v252) >= *(v257 + 12))
        {
          break;
        }

        if (v233 - v228 < v230)
        {
          v230 = v233 - v228;
        }

        if (v228 + v239 < v229)
        {
          v229 = v228 + v239;
        }

        --v232;
      }

      while (v231 > 0);
      operator delete(0);
    }

    a1 = v256;
  }

  else
  {
    v54 = MEMORY[0x1E695DEC8];
    v55 = objc_msgSend_lastObject(v11, v12, v13, v14, v15, v16);
    a1 = objc_msgSend_arrayWithObject_(v54, v56, v55, v57, v58, v59);
  }

LABEL_69:

  return a1;
}

void sub_18395321C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

double sub_1839533DC(void *a1, void *a2, void *a3, long double a4, long double a5)
{
  v9 = a2;
  v15 = a3;
  if (a1)
  {
    v16 = 0;
    v17 = 0.0;
    v18 = 0.0;
    while (v16 < objc_msgSend_count(v9, v10, v11, v12, v13, v14))
    {
      v24 = objc_msgSend_objectAtIndexedSubscript_(v9, v19, v16, v21, v22, v23);
      objc_msgSend_writingOrientation(v24, v25, v26, v27, v28, v29);
      v31 = v30;
      v33 = v32;

      v18 = v18 + (v31 - a4) * (v31 - a4);
      v17 = v17 + (v33 - a5) * (v33 - a5);
      ++v16;
    }

    v34 = objc_msgSend_count(v9, v19, v20, v21, v22, v23);
    v40 = objc_msgSend_count(v9, v35, v36, v37, v38, v39);
    v42 = *(a1 + 2);
    v41 = *(a1 + 3);
    v48 = objc_msgSend_count(v9, v43, v44, v45, v46, v47);
    v49 = atan2(a5, a4);
    v50 = vabdd_f64(v49, atan2(v41, v42));
    if (v50 <= 3.14159265)
    {
      v51 = v50;
    }

    else
    {
      v51 = 6.28318531 - v50;
    }

    v52 = v48 / a1[12];
    v53 = pow(v52 / sqrt(v52 * v52 + 1.0), sqrt(sqrt(v18 / v34) + sqrt(v17 / v40)) + 1.0) / (v51 + 1.0);
  }

  else
  {
    v53 = 0.0;
  }

  return v53;
}

id sub_183953E28(_OWORD *a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    v293 = 0;
    v294[0] = 0;
    v286 = v10;
    v16 = objc_msgSend_strokeIdentifiers(v10, v11, v12, v13, v14, v15);
    objc_msgSend_firstStrokeIdentifier_lastStrokeIdentifier_inGroup_addingStrokeIdentifiers_removingStrokeIdentifiers_(a1, v17, v294, &v293, v9, v16, 0);
    v284 = v294[0];
    v283 = v293;

    objc_msgSend_bounds(v9, v18, v19, v20, v21, v22);
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    objc_msgSend_bounds(v286, v31, v32, v33, v34, v35);
    v298.origin.x = v36;
    v298.origin.y = v37;
    v298.size.width = v38;
    v298.size.height = v39;
    v296.origin.x = v24;
    v296.origin.y = v26;
    v296.size.width = v28;
    v296.size.height = v30;
    v297 = CGRectUnion(v296, v298);
    x = v297.origin.x;
    y = v297.origin.y;
    width = v297.size.width;
    height = v297.size.height;
    if (a4)
    {
      v49 = objc_msgSend_writingDirectionSortedSubstrokes(v286, v40, v41, v42, v43, v44);
      v55 = objc_msgSend_mutableCopy(v49, v50, v51, v52, v53, v54);

      objc_msgSend_writingDirectionSortedSubstrokes(v9, v56, v57, v58, v59, v60);
    }

    else
    {
      v66 = objc_msgSend_writingDirectionSortedSubstrokes(v9, v40, v41, v42, v43, v44);
      v55 = objc_msgSend_mutableCopy(v66, v67, v68, v69, v70, v71);

      objc_msgSend_writingDirectionSortedSubstrokes(v286, v72, v73, v74, v75, v76);
    }
    v61 = ;
    objc_msgSend_addObjectsFromArray_(v55, v62, v61, v63, v64, v65);

    v77 = a1[1];
    v291 = a1[2];
    *v292 = v77;
    v290 = v55;
    objc_msgSend_estimateWritingDirectionAndSortSubstrokesAccordingly_averageWritingOrientation_averageStrokeDeviation_(a1, v78, &v290, v292, &v291, v79);
    v80 = v290;

    __p = 0;
    v288 = 0;
    v289 = 0;
    v86 = objc_msgSend_strokeIdentifiers(v9, v81, v82, v83, v84, v85);
    v92 = objc_msgSend_count(v86, v87, v88, v89, v90, v91);
    v98 = objc_msgSend_strokeIdentifiers(v286, v93, v94, v95, v96, v97);
    v104 = objc_msgSend_count(v98, v99, v100, v101, v102, v103) + v92;
    if (v104)
    {
      if (!(v104 >> 60))
      {
        operator new();
      }

      sub_18368964C();
    }

    v285 = sub_183952538(a1, v80, &__p);
    v278 = height;
    v279 = width;
    v280 = y;
    v281 = x;
    v282 = sub_183952A70(a1, v80, *&v291, *(&v291 + 1));
    v105 = sub_1839533DC(a1, v80, v285, v292[0], v292[1]);
    objc_msgSend_firstStrokeOrigin(v9, v106, v107, v108, v109, v110);
    v112 = v111;
    objc_msgSend_firstStrokeOrigin(v9, v113, v114, v115, v116, v117);
    v119 = v118;
    objc_msgSend_firstStrokeOrigin(v9, v120, v121, v122, v123, v124);
    v126 = v125;
    objc_msgSend_firstStrokeOrigin(v9, v127, v128, v129, v130, v131);
    v133 = v132;
    objc_msgSend_firstStrokeOrigin(v286, v134, v135, v136, v137, v138);
    v140 = v139;
    objc_msgSend_firstStrokeOrigin(v286, v141, v142, v143, v144, v145);
    v147 = v146;
    objc_msgSend_firstStrokeOrigin(v286, v148, v149, v150, v151, v152);
    v154 = v153;
    objc_msgSend_firstStrokeOrigin(v286, v155, v156, v157, v158, v159);
    if (v126 * v133 + v112 * v119 >= v154 * v165 + v140 * v147)
    {
      objc_msgSend_firstStrokeOrigin(v286, v160, v161, v162, v163, v164);
    }

    else
    {
      objc_msgSend_firstStrokeOrigin(v9, v160, v161, v162, v163, v164);
    }

    v173 = v171;
    v174 = v172;
    if (a5)
    {
      v175 = v9;
      v181 = objc_msgSend_strokeIdentifiers(v175, v176, v177, v178, v179, v180);
      v187 = objc_msgSend_lastObject(v80, v182, v183, v184, v185, v186);
      v193 = objc_msgSend_substroke(v187, v188, v189, v190, v191, v192);
      v199 = objc_msgSend_strokeIdentifier(v193, v194, v195, v196, v197, v198);
      v204 = objc_msgSend_containsObject_(v181, v200, v199, v201, v202, v203);

      if (v204)
      {
        v210 = v286;

        v175 = v210;
      }

      v216 = objc_msgSend_count(v80, v205, v206, v207, v208, v209) - 2;
      if (v216 < 0)
      {
LABEL_18:
        v216 = -1;
      }

      else
      {
        while (1)
        {
          v217 = objc_msgSend_strokeIdentifiers(v175, v211, v212, v213, v214, v215);
          v222 = objc_msgSend_objectAtIndexedSubscript_(v80, v218, v216, v219, v220, v221);
          v228 = objc_msgSend_substroke(v222, v223, v224, v225, v226, v227);
          v234 = objc_msgSend_strokeIdentifier(v228, v229, v230, v231, v232, v233);
          v239 = objc_msgSend_containsObject_(v217, v235, v234, v236, v237, v238);

          if (v239)
          {
            break;
          }

          if (v216-- <= 0)
          {
            goto LABEL_18;
          }
        }
      }
    }

    else
    {
      v216 = -1;
    }

    v241 = objc_msgSend_strokeIdentifiers(v286, v166, v167, v168, v169, v170);
    v243 = objc_msgSend_groupByAddingStrokeIdentifiers_removingStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_lastSubstrokeIndexBeforeMerge_firstStrokeOrigin_(v9, v242, v241, 0, v284, v283, v80, v285, v281, v280, v279, v278, *v292, v291, &__p, v282, *&v105, v216, v173, v174);

    v249 = objc_msgSend_strategyIdentifier(v9, v244, v245, v246, v247, v248);
    v255 = objc_msgSend_strategyIdentifier(a1, v250, v251, v252, v253, v254);
    if (objc_msgSend_isEqualToString_(v249, v256, v255, v257, v258, v259))
    {
      v265 = objc_msgSend_classification(v9, v260, v261, v262, v263, v264);
    }

    else
    {
      v265 = objc_msgSend_classification(v286, v260, v261, v262, v263, v264);
    }

    v266 = v265;

    v272 = objc_msgSend_strategyIdentifier(a1, v267, v268, v269, v270, v271);
    v276 = objc_msgSend_strokeGroupWithUpdatedStrategyIdentifier_classification_(v243, v273, v272, v266, v274, v275);

    if (__p)
    {
      v288 = __p;
      operator delete(__p);
    }

    v10 = v286;
  }

  else
  {
    v276 = 0;
  }

  return v276;
}

void sub_183954398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_183955134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  sub_18369F0F0(&a35);

  _Unwind_Resume(a1);
}

__n128 sub_1839552F8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_18395531C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_183955334(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v11 = *(a1 + 32);
  if (v11)
  {
    objc_msgSend_addPoint_(v11, a2, a3, a4, a5, a6, a7, a8);
  }

  v12 = *(a1 + 96);
  v13 = a7 - *(a1 + 104);
  v14 = *(a1 + 120);
  v15 = a8 - *(a1 + 112);
  v17 = *(a1 + 88) - v14 * v13 + v12 * v15;
  v18 = *(*(a1 + 40) + 8);
  *&v23 = *(a1 + 80) + v12 * v13 + v14 * v15;
  v16 = *&v23;
  *(&v23 + 1) = v17;
  sub_1836973A4(v18 + 48, &v23);
  v19 = *(*(a1 + 48) + 8);
  if (v16 < *(v19 + 24))
  {
    *(v19 + 24) = v16;
    v20 = *(*(a1 + 56) + 8);
    if (v16 <= *(v20 + 24))
    {
LABEL_5:
      v21 = *(*(a1 + 64) + 8);
      if (v17 >= *(v21 + 24))
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v20 = *(*(a1 + 56) + 8);
    if (v16 <= *(v20 + 24))
    {
      goto LABEL_5;
    }
  }

  *(v20 + 24) = v16;
  v21 = *(*(a1 + 64) + 8);
  if (v17 >= *(v21 + 24))
  {
LABEL_6:
    v22 = *(*(a1 + 72) + 8);
    if (v17 <= *(v22 + 24))
    {
      return;
    }

LABEL_11:
    *(v22 + 24) = v17;
    return;
  }

LABEL_10:
  *(v21 + 24) = v17;
  v22 = *(*(a1 + 72) + 8);
  if (v17 > *(v22 + 24))
  {
    goto LABEL_11;
  }
}

void sub_1839555FC(uint64_t a1, double *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v290 = a4;
  v12 = a5;
  v13 = a6;
  v19 = v13;
  if (!a1)
  {
    goto LABEL_35;
  }

  v20 = objc_msgSend_writingDirectionSortedSubstrokes(v13, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, a7, v22, v23, v24);

  v289 = v12;
  v31 = objc_msgSend_firstObject(v12, v26, v27, v28, v29, v30);
  v32 = objc_opt_class();
  v38 = objc_msgSend_substroke(v25, v33, v34, v35, v36, v37);
  v44 = objc_msgSend_strokeIdentifier(v38, v39, v40, v41, v42, v43);
  v50 = objc_msgSend_strokeProvider(a1, v45, v46, v47, v48, v49);
  v54 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v32, v51, v44, v50, v52, v53);

  objc_msgSend_writingOrientation(v25, v55, v56, v57, v58, v59);
  v61 = v60;
  v63 = v62;
  objc_msgSend_strokeDeviation(v25, v64, v65, v66, v67, v68);
  v70 = v69;
  v72 = v71;
  v78 = objc_msgSend_coalescedLastSubstrokes(v19, v73, v74, v75, v76, v77);
  if (objc_msgSend_count(v78, v79, v80, v81, v82, v83) >= 2)
  {
    v89 = objc_msgSend_writingDirectionSortedSubstrokes(v19, v84, v85, v86, v87, v88);
    v95 = objc_msgSend_count(v89, v90, v91, v92, v93, v94) - 1;

    if (v95 != a7)
    {
      goto LABEL_9;
    }

    for (i = 1; ; ++i)
    {
      v102 = objc_msgSend_coalescedLastSubstrokes(v19, v96, v97, v98, v99, v100);
      v108 = objc_msgSend_count(v102, v103, v104, v105, v106, v107);

      if (i >= v108)
      {
        break;
      }

      v114 = objc_msgSend_coalescedLastSubstrokes(v19, v109, v110, v111, v112, v113);
      v119 = objc_msgSend_objectAtIndexedSubscript_(v114, v115, i, v116, v117, v118);
      objc_msgSend_writingOrientation(v119, v120, v121, v122, v123, v124);
      v126 = v125;

      v132 = objc_msgSend_coalescedLastSubstrokes(v19, v127, v128, v129, v130, v131);
      v137 = objc_msgSend_objectAtIndexedSubscript_(v132, v133, i, v134, v135, v136);
      objc_msgSend_writingOrientation(v137, v138, v139, v140, v141, v142);
      v144 = v143;

      v150 = objc_msgSend_coalescedLastSubstrokes(v19, v145, v146, v147, v148, v149);
      v155 = objc_msgSend_objectAtIndexedSubscript_(v150, v151, i, v152, v153, v154);
      objc_msgSend_strokeDeviation(v155, v156, v157, v158, v159, v160);
      v162 = v161;

      v168 = objc_msgSend_coalescedLastSubstrokes(v19, v163, v164, v165, v166, v167);
      v173 = objc_msgSend_objectAtIndexedSubscript_(v168, v169, i, v170, v171, v172);
      objc_msgSend_strokeDeviation(v173, v174, v175, v176, v177, v178);
      v61 = v61 + v126;
      v63 = v63 + v144;
      v70 = v70 + v162;
      v72 = v72 + v179;
    }

    v180 = objc_msgSend_coalescedLastSubstrokes(v19, v109, v110, v111, v112, v113);
    v186 = objc_msgSend_count(v180, v181, v182, v183, v184, v185);

    v192 = objc_msgSend_coalescedLastSubstrokes(v19, v187, v188, v189, v190, v191);
    v198 = objc_msgSend_count(v192, v193, v194, v195, v196, v197);

    v204 = objc_msgSend_coalescedLastSubstrokes(v19, v199, v200, v201, v202, v203);
    v210 = objc_msgSend_count(v204, v205, v206, v207, v208, v209);

    v78 = objc_msgSend_coalescedLastSubstrokes(v19, v211, v212, v213, v214, v215);
    v61 = v61 / v186;
    v63 = v63 / v198;
    v70 = v70 / v210;
    v72 = v72 / objc_msgSend_count(v78, v216, v217, v218, v219, v220);
  }

LABEL_9:
  objc_msgSend_averageWritingOrientation(v19, v96, v97, v98, v99, v100);
  v222 = v221;
  objc_msgSend_averageWritingOrientation(v19, v223, v224, v225, v226, v227);
  v233 = (v61 + v222) * 0.5;
  v235 = (v63 + v234) * 0.5;
  v236 = sqrt(v235 * v235 + v233 * v233);
  if (v236 != 0.0)
  {
    v233 = v233 / v236;
    v235 = v235 / v236;
  }

  if (*(a1 + 176) == 1)
  {
    objc_msgSend_clippedWritingOrientation_(a1, v228, v229, v230, v231, v232, v233, v235);
    v233 = v237;
    v235 = v238;
  }

  objc_msgSend_averageStrokeDeviation(v19, v228, v229, v230, v231, v232);
  v240 = v239;
  objc_msgSend_averageStrokeDeviation(v19, v241, v242, v243, v244, v245);
  v251 = (v70 + v240) * 0.5;
  v253 = (v72 + v252) * 0.5;
  if (v251 <= *(a1 + 32))
  {
    v251 = *(a1 + 32);
  }

  if (v253 <= *(a1 + 40))
  {
    v253 = *(a1 + 40);
  }

  v254 = sqrt(v253 * v253 + v251 * v251);
  if (*(a1 + 178) == 1)
  {
    objc_msgSend_setWritingOrientation_(v31, v246, v247, v248, v249, v250, v233, v235);
    objc_msgSend_rotatedBounds(v31, v255, v256, v257, v258, v259);
    v262 = sqrt(v260 * v260 + v261 * v261);
    if (v262 > v254)
    {
      v263 = objc_msgSend_strokeIdentifiers(v19, v246, v247, v248, v249, v250);
      v269 = objc_msgSend_count(v263, v264, v265, v266, v267, v268);
      v270 = *(a1 + 96);

      if (v269 <= v270 / 2)
      {
        v271 = (v254 + v262) * 0.5;
        v272 = v254 * 4.0;
      }

      else
      {
        v271 = v262 * 0.1 + v254 * 0.9;
        v272 = v254 + v254;
      }

      if (v271 >= v272)
      {
        v254 = v272;
      }

      else
      {
        v254 = v271;
      }
    }
  }

  v273 = objc_msgSend_coalescedLastSubstrokes(v19, v246, v247, v248, v249, v250);
  v279 = objc_msgSend_substroke(v31, v274, v275, v276, v277, v278);
  v280 = sub_183955D64(a1, v273, v279, v54, v290, v233, v235);
  v282 = v281;

  v283 = v282 / v254;
  if (v280 / v254 >= 0.0)
  {
    v284 = *(a1 + 104);
    v285 = a3;
    if (v283 >= 0.0)
    {
LABEL_27:
      v286 = *(a1 + 120) * *(a1 + 112);
      if (!a2)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v284 = *(a1 + 128) * *(a1 + 104);
    v285 = a3;
    if (v283 >= 0.0)
    {
      goto LABEL_27;
    }
  }

  v286 = *(a1 + 112);
  if (a2)
  {
LABEL_31:
    *a2 = fabs(v280 / v254) * v284 + fabs(v283) * v286;
  }

LABEL_32:
  if (v285)
  {
    v287 = v54;
    *v285 = v54;
  }

  v12 = v289;
LABEL_35:
}

double sub_183955D64(void *a1, void *a2, void *a3, void *a4, void *a5, double a6, double a7)
{
  v209 = *MEMORY[0x1E69E9840];
  v168 = a2;
  v170 = a3;
  v13 = a4;
  v14 = a5;
  v172 = a1;
  v169 = v14;
  if (a1)
  {
    if (!v14)
    {
      v20 = objc_opt_class();
      v26 = objc_msgSend_strokeIdentifier(v170, v21, v22, v23, v24, v25);
      v32 = objc_msgSend_strokeProvider(a1, v27, v28, v29, v30, v31);
      v169 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v20, v33, v26, v32, v34, v35);
    }

    objc_msgSend_bounds(v170, v15, v16, v17, v18, v19);
    MidX = CGRectGetMidX(v210);
    objc_msgSend_bounds(v170, v37, v38, v39, v40, v41);
    MidY = CGRectGetMidY(v211);
    v43 = MEMORY[0x1E695EFF8];
    v45 = *MEMORY[0x1E695EFF8];
    v44 = *(MEMORY[0x1E695EFF8] + 8);
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v46 = v168;
    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v203, v208, 16, v48);
    if (v54)
    {
      v55 = *v204;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v204 != v55)
          {
            objc_enumerationMutation(v46);
          }

          v57 = *(*(&v203 + 1) + 8 * i);
          v58 = objc_msgSend_substroke(v57, v49, v50, v51, v52, v53);
          objc_msgSend_bounds(v58, v59, v60, v61, v62, v63);
          v64 = CGRectGetMidX(v212);
          v70 = objc_msgSend_substroke(v57, v65, v66, v67, v68, v69);
          objc_msgSend_bounds(v70, v71, v72, v73, v74, v75);
          v76 = CGRectGetMidY(v213);

          v45 = v45 + v64;
          v44 = v44 + v76;
        }

        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v49, &v203, v208, 16, v53);
      }

      while (v54);
    }

    if (objc_msgSend_count(v46, v77, v78, v79, v80, v81) >= 2)
    {
      v45 = v45 / objc_msgSend_count(v46, v82, v83, v84, v85, v86);
      v44 = v44 / objc_msgSend_count(v46, v87, v88, v89, v90, v91);
    }

    v199 = 0;
    v200 = &v199;
    v201 = 0x2020000000;
    v202 = 0x7FEFFFFFFFFFFFFFLL;
    v192 = 0;
    v193 = &v192;
    v194 = 0x4012000000;
    v195 = sub_183956FDC;
    v196 = nullsub_68;
    v197 = &unk_183A5AC72;
    v198 = *v43;
    v92 = objc_msgSend_strokeAttributes(v169, v82, v83, v84, v85, v86);
    v93 = objc_opt_class();
    v186[0] = MEMORY[0x1E69E9820];
    v186[1] = 3221225472;
    v186[2] = sub_183956FEC;
    v186[3] = &unk_1E6DE0538;
    v190 = v45;
    v191 = v44;
    v187 = v170;
    v188 = &v199;
    v189 = &v192;
    objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v93, v94, v169, (v92 >> 2) & 1, 1, v186);
    v200[3] = 0x7FEFFFFFFFFFFFFFLL;
    v179 = 0;
    v180 = &v179;
    v181 = 0x4012000000;
    v182 = sub_183956FDC;
    v183 = nullsub_68;
    v184 = &unk_183A5AC72;
    v185 = *v43;
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    obj = v46;
    v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v95, &v175, v207, 16, v96);
    if (v102)
    {
      v103 = *v176;
      do
      {
        for (j = 0; j != v102; ++j)
        {
          if (*v176 != v103)
          {
            objc_enumerationMutation(obj);
          }

          v105 = *(*(&v175 + 1) + 8 * j);
          if (!v13 || (objc_msgSend_encodedStrokeIdentifier(v13, v97, v98, v99, v100, v101), v106 = objc_claimAutoreleasedReturnValue(), objc_msgSend_substroke(v105, v107, v108, v109, v110, v111), v112 = objc_claimAutoreleasedReturnValue(), objc_msgSend_strokeIdentifier(v112, v113, v114, v115, v116, v117), v118 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v106, v119, v118, v120, v121, v122), v118, v112, v106, (isEqual & 1) == 0))
          {
            v124 = objc_msgSend_strokeProvider(v172, v97, v98, v99, v100, v101);
            v130 = objc_msgSend_substroke(v105, v125, v126, v127, v128, v129);
            v136 = objc_msgSend_strokeIdentifier(v130, v131, v132, v133, v134, v135);
            v141 = objc_msgSend_strokeIdentifierFromData_(v124, v137, v136, v138, v139, v140);

            v147 = objc_msgSend_strokeProvider(v172, v142, v143, v144, v145, v146);
            v152 = objc_msgSend_strokeForIdentifier_(v147, v148, v141, v149, v150, v151);

            v13 = v152;
          }

          v153 = objc_msgSend_strokeAttributes(v13, v97, v98, v99, v100, v101);
          v154 = objc_opt_class();
          v174[0] = MEMORY[0x1E69E9820];
          v174[1] = 3221225472;
          v174[2] = sub_183957084;
          v174[3] = &unk_1E6DE0538;
          *&v174[7] = MidX;
          *&v174[8] = MidY;
          v174[4] = v105;
          v174[5] = &v199;
          v174[6] = &v179;
          objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v154, v155, v13, (v153 >> 2) & 1, 1, v174);
        }

        v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v97, &v175, v207, 16, v101);
      }

      while (v102);
    }

    v167 = a7;
    v173 = a6;
    v156 = v193[6];
    v157 = v193[7];
    v158 = v180[6];
    v159 = v180[7];
    if (objc_msgSend_count(obj, v160, v161, v162, v163, v164) <= 1)
    {
      v165 = v167 * ((MidY - v44 + (v159 - v44 + MidY - v157 + (v157 - v159) * 2.0) * 0.25) * 0.5) + (MidX - v45 + (v158 - v45 + MidX - v156 + (v156 - v158) * 2.0) * 0.25) * 0.5 * v173;
    }

    else
    {
      v165 = (v167 * ((MidY - v44 + (v159 - v44 + MidY - v157 + (v157 - v159) * 2.0) * 0.25) * 0.5) + (MidX - v45 + (v158 - v45 + MidX - v156 + (v156 - v158) * 2.0) * 0.25) * 0.5 * v173) * 0.8;
    }

    _Block_object_dispose(&v179, 8);

    _Block_object_dispose(&v192, 8);
    _Block_object_dispose(&v199, 8);
  }

  else
  {
    v165 = 0.0;
  }

  return v165;
}

__n128 sub_183956FDC(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_183956FEC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  result = objc_msgSend_startTimestamp(*(a1 + 32), a2, a3, a4, a5, a6);
  if (v20 <= a9)
  {
    v21 = vabdd_f64(*(a1 + 56), a7) + vabdd_f64(*(a1 + 64), a8);
    v22 = *(*(a1 + 40) + 8);
    if (v21 < *(v22 + 24))
    {
      *(v22 + 24) = v21;
      v23 = *(*(a1 + 48) + 8);
      *(v23 + 48) = a7;
      *(v23 + 56) = a8;
    }

    result = objc_msgSend_endTimestamp(*(a1 + 32), v15, v16, v17, v18, v19);
    *a2 = v24 <= a9;
  }

  return result;
}

void sub_183957084(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v35 = objc_msgSend_substroke(*(a1 + 32), a2, a3, a4, a5, a6);
  objc_msgSend_startTimestamp(v35, v14, v15, v16, v17, v18);
  v20 = v19;

  if (v20 <= a9)
  {
    v26 = vabdd_f64(*(a1 + 56), a7) + vabdd_f64(*(a1 + 64), a8);
    v27 = *(*(a1 + 40) + 8);
    if (v26 < *(v27 + 24))
    {
      *(v27 + 24) = v26;
      v28 = *(*(a1 + 48) + 8);
      *(v28 + 48) = a7;
      *(v28 + 56) = a8;
    }

    v36 = objc_msgSend_substroke(*(a1 + 32), v21, v22, v23, v24, v25);
    objc_msgSend_endTimestamp(v36, v29, v30, v31, v32, v33);
    *a2 = v34 <= a9;
  }
}

uint64_t sub_183957890(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = objc_msgSend_substroke(v5, v7, v8, v9, v10, v11);
  objc_msgSend_bounds(v12, v13, v14, v15, v16, v17);
  MidX = CGRectGetMidX(v57);
  v24 = objc_msgSend_substroke(v5, v19, v20, v21, v22, v23);
  objc_msgSend_bounds(v24, v25, v26, v27, v28, v29);
  MidY = CGRectGetMidY(v58);

  v36 = objc_msgSend_substroke(v6, v31, v32, v33, v34, v35);
  objc_msgSend_bounds(v36, v37, v38, v39, v40, v41);
  v42 = CGRectGetMidX(v59);
  v48 = objc_msgSend_substroke(v6, v43, v44, v45, v46, v47);
  objc_msgSend_bounds(v48, v49, v50, v51, v52, v53);
  v54 = CGRectGetMidY(v60);

  if ((v54 - MidY) * *(a1 + 40) + (v42 - MidX) * *(a1 + 32) <= 0.0)
  {
    v55 = 1;
  }

  else
  {
    v55 = -1;
  }

  return v55;
}

void sub_183957FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_183958D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
    if (!v41)
    {
LABEL_3:
      v43 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v41)
  {
    goto LABEL_3;
  }

  operator delete(v41);
  v43 = a25;
  if (!a25)
  {
LABEL_4:
    v44 = a28;
    if (!a28)
    {
LABEL_10:
      if (a40)
      {
        operator delete(a40);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(v44);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(v43);
  v44 = a28;
  if (!a28)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_18395920C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p)
{
  if (!v14)
  {

    _Unwind_Resume(a1);
  }

  operator delete(v14);

  _Unwind_Resume(a1);
}

void sub_18395A1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (v21)
  {
    operator delete(v21);
  }

  if (__p)
  {
    operator delete(__p);
    if (!a11)
    {
LABEL_5:
      v25 = a19;
      if (!a19)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (!a11)
  {
    goto LABEL_5;
  }

  operator delete(a11);
  v25 = a19;
  if (!a19)
  {
LABEL_6:

    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v25);

  _Unwind_Resume(a1);
}

void sub_18395AB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16)
{
  if (v16)
  {
    operator delete(v16);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_18395AE64(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_msgSend_bounds(v4, v6, v7, v8, v9, v10);
  v12 = v11;
  objc_msgSend_bounds(v4, v13, v14, v15, v16, v17);
  v19 = v18;
  objc_msgSend_bounds(v5, v20, v21, v22, v23, v24);
  v26 = v25;
  objc_msgSend_bounds(v5, v27, v28, v29, v30, v31);
  if (v12 * v19 > v26 * v32)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

  return v33;
}

void *sub_18395AF48(void *a1, void *a2, int a3)
{
  v107[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v11 = v5;
  if (a1)
  {
    objc_msgSend_averageWritingOrientation(v5, v6, v7, v8, v9, v10);
    v18 = v17;
    v20 = v19;
    v21 = 0;
    v22 = 0.0;
    v23 = 0.0;
    while (1)
    {
      v24 = objc_msgSend_writingDirectionSortedSubstrokes(v11, v12, v13, v14, v15, v16);
      v30 = objc_msgSend_count(v24, v25, v26, v27, v28, v29);

      if (v21 >= v30)
      {
        break;
      }

      v36 = objc_msgSend_writingDirectionSortedSubstrokes(v11, v31, v32, v33, v34, v35);
      v41 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, v21, v38, v39, v40);
      objc_msgSend_writingOrientation(v41, v42, v43, v44, v45, v46);
      v48 = v47;
      v50 = v49;

      v22 = v22 + (v48 - v18) * (v48 - v18);
      v23 = v23 + (v50 - v20) * (v50 - v20);
      ++v21;
    }

    v51 = objc_msgSend_writingDirectionSortedSubstrokes(v11, v31, v32, v33, v34, v35);
    v57 = objc_msgSend_count(v51, v52, v53, v54, v55, v56);

    v63 = objc_msgSend_writingDirectionSortedSubstrokes(v11, v58, v59, v60, v61, v62);
    v69 = objc_msgSend_count(v63, v64, v65, v66, v67, v68);

    if (a3)
    {
      objc_msgSend_clippedWritingOrientation_(a1, v70, v71, v72, v73, v74, v18, v20);
      v18 = v75;
      v20 = v76;
    }

    v77 = atan2(v20, v18);
    v83 = objc_msgSend_writingDirectionSortedSubstrokes(v11, v78, v79, v80, v81, v82);
    v89 = objc_msgSend_count(v83, v84, v85, v86, v87, v88);
    v90 = a1[12];

    v96 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v91, v92, v93, v94, v95, v77);
    v107[0] = v96;
    v102 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v97, v98, v99, v100, v101, v89 / v90 / (sqrt(sqrt(v22 / v57) + sqrt(v23 / v69)) + 1.0));
    v107[1] = v102;
    a1 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v103, v107, 2, v104, v105);
  }

  return a1;
}

void sub_18395B224(void *a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = a6;
  objc_opt_self();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v16 = objc_msgSend_writingDirectionSortedSubstrokes(v10, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_count(v16, v17, v18, v19, v20, v21);
  if (v22)
  {
    if (!(v22 >> 59))
    {
      operator new();
    }

    sub_18368964C();
  }

  for (i = 0; ; ++i)
  {
    v29 = objc_msgSend_writingDirectionSortedSubstrokes(v10, v23, v24, v25, v26, v27);
    v35 = objc_msgSend_count(v29, v30, v31, v32, v33, v34);

    if (i >= v35)
    {
      break;
    }

    v68 = 0u;
    v69 = 0u;
    v36 = objc_opt_class();
    v42 = objc_msgSend_writingDirectionSortedSubstrokes(v10, v37, v38, v39, v40, v41);
    v47 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, i, v44, v45, v46);
    v53 = objc_msgSend_substroke(v47, v48, v49, v50, v51, v52);
    v59 = objc_msgSend_convexHull(v53, v54, v55, v56, v57, v58);
    objc_msgSend_boundingBoxOfPoints_rotatedAroundPoint_byAngle_(v36, v60, v59, v61, v62, v63, a2, a3, a4);
    *&v68 = v64;
    *(&v68 + 1) = v65;
    *&v69 = v66;
    *(&v69 + 1) = v67;

    sub_1836F13C4(a1, &v68);
  }
}

void sub_18395B3A4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_18395BF4C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = objc_msgSend_strokeIdentifierFromData_(*(a1 + 32), v6, a2, v7, v8, v9);
  v15 = objc_msgSend_strokeIdentifierFromData_(*(a1 + 32), v11, v5, v12, v13, v14);
  v19 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(*(a1 + 32), v16, v10, v15, v17, v18);

  return v19;
}

void sub_18395C7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1836E1928(a41);

  _Unwind_Resume(a1);
}

uint64_t sub_18395C99C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = objc_msgSend_strokeIdentifierFromData_(*(a1 + 32), v6, a2, v7, v8, v9);
  v15 = objc_msgSend_strokeIdentifierFromData_(*(a1 + 32), v11, v5, v12, v13, v14);
  v19 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(*(a1 + 32), v16, v10, v15, v17, v18);

  return v19;
}

void sub_18395CDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void sub_18395CFF8(CGRect *a1, CGRect *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = a2 - v8;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                sub_18395DA44(v8, &v8[1].origin, &a2[-1].origin);
                return;
              case 4:
                sub_18395DA44(v8, &v8[1].origin, &v8[2].origin);
                v169.origin.x = a2[-1].origin.x;
                v169.origin.y = a2[-1].origin.y;
                p_origin = &a2[-1].origin;
                v169.size.width = p_origin[1].x;
                v169.size.height = p_origin[1].y;
                MaxX = CGRectGetMaxX(v169);
                if (MaxX < CGRectGetMaxX(v8[2]))
                {
                  origin = v8[2].origin;
                  size = v8[2].size;
                  v56 = p_origin[1];
                  v8[2].origin = *p_origin;
                  v8[2].size = v56;
                  *p_origin = origin;
                  p_origin[1] = size;
                  origin.x = v8[2].origin.x;
                  y = v8[2].origin.y;
                  v56.width = v8[2].size.width;
                  height = v8[2].size.height;
                  v59 = CGRectGetMaxX(*&origin.x);
                  if (v59 < CGRectGetMaxX(v8[1]))
                  {
                    v61 = v8[1].origin;
                    v60 = v8[1].size;
                    v62 = v8[2].size;
                    v8[1].origin = v8[2].origin;
                    v8[1].size = v62;
                    v8[2].origin = v61;
                    v8[2].size = v60;
                    v60.width = v8[1].origin.x;
                    v61.x = v8[1].origin.y;
                    width = v8[1].size.width;
                    v62.width = v8[1].size.height;
                    v64 = CGRectGetMaxX(*(&v61 - 8));
                    if (v64 < CGRectGetMaxX(*v8))
                    {
                      v140 = v8->origin;
                      v147 = v8->size;
                      v65 = v8[1].size;
                      v8->origin = v8[1].origin;
                      v8->size = v65;
                      v8[1].origin = v140;
                      v8[1].size = v147;
                    }
                  }
                }

                return;
              case 5:

                sub_18395DB7C(v8, &v8[1].origin, &v8[2].origin, &v8[3].origin, &a2[-1].origin);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              x = a2[-1].origin.x;
              v48 = a2[-1].origin.y;
              p_x = &a2[-1].origin.x;
              v49 = p_x[2];
              v50 = p_x[3];
              v51 = CGRectGetMaxX(*&x);
              if (v51 < CGRectGetMaxX(*v8))
              {
                v139 = v8->origin;
                v145 = v8->size;
                v52 = *(p_x + 1);
                v8->origin = *p_x;
                v8->size = v52;
                *p_x = v139;
                *(p_x + 1) = v145;
              }

              return;
            }
          }

          if (v9 <= 23)
          {
            v66 = &v8[1].origin.x;
            v68 = v8 == a2 || v66 == a2;
            if (a4)
            {
              if (!v68)
              {
                v69 = 0;
                v70 = v8;
                do
                {
                  v72 = v66;
                  v73 = CGRectGetMaxX(v70[1]);
                  if (v73 < CGRectGetMaxX(*v70))
                  {
                    v74 = *v72;
                    v75 = v70[1].origin.y;
                    v76 = v70[1].size.width;
                    v77 = v69;
                    v78 = v70[1].size.height;
                    do
                    {
                      v79 = v8 + v77;
                      v80 = *(&v8->size + v77);
                      *(v79 + 32) = *(&v8->origin + v77);
                      *(v79 + 48) = v80;
                      if (!v77)
                      {
                        v71 = &v8->origin.x;
                        goto LABEL_78;
                      }

                      v170.origin.x = v74;
                      v170.origin.y = v75;
                      v170.size.width = v76;
                      v170.size.height = v78;
                      v81 = CGRectGetMaxX(v170);
                      v77 -= 32;
                    }

                    while (v81 < CGRectGetMaxX(*(v79 - 32)));
                    v71 = (&v8[1].origin.x + v77);
LABEL_78:
                    *v71 = v74;
                    v71[1] = v75;
                    v71[2] = v76;
                    v71[3] = v78;
                  }

                  v66 = v72 + 4;
                  v69 += 32;
                  v70 = v72;
                }

                while (v72 + 4 != a2);
              }
            }

            else if (!v68)
            {
              do
              {
                v123 = v66;
                v124 = CGRectGetMaxX(a1[1]);
                if (v124 < CGRectGetMaxX(*a1))
                {
                  v125 = *v123;
                  v126 = a1[1].origin.y;
                  v127 = a1[1].size.width;
                  v128 = v123;
                  v129 = a1[1].size.height;
                  do
                  {
                    v131 = *(v128 - 1);
                    *v128 = *(v128 - 2);
                    *(v128 + 1) = v131;
                    v132 = v125;
                    *&v131 = v126;
                    v133 = v127;
                    v134 = v129;
                    v135 = CGRectGetMaxX(*(&v131 - 8));
                    v174 = *(v128 - 2);
                    v130 = v128 - 4;
                    v128 -= 4;
                  }

                  while (v135 < CGRectGetMaxX(v174));
                  *v130 = v125;
                  v130[1] = v126;
                  v130[2] = v127;
                  v130[3] = v129;
                }

                v66 = v123 + 4;
                a1 = v123;
              }

              while (v123 + 4 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v82 = v10 >> 1;
              v83 = v10 >> 1;
              do
              {
                v84 = v83;
                if (v82 >= v83)
                {
                  v85 = (2 * v83) | 1;
                  v86 = &a1[v85];
                  if (2 * v83 + 2 < v9)
                  {
                    v87 = CGRectGetMaxX(*v86);
                    if (v87 < CGRectGetMaxX(v86[1]))
                    {
                      ++v86;
                      v85 = 2 * v84 + 2;
                    }
                  }

                  v88 = &a1[v84];
                  v89 = CGRectGetMaxX(*v86);
                  if (v89 >= CGRectGetMaxX(*v88))
                  {
                    v90 = v88->origin.x;
                    v91 = v88->origin.y;
                    v92 = v88->size.width;
                    v93 = v88->size.height;
                    do
                    {
                      v95 = &v88->origin;
                      v88 = v86;
                      v96 = v86->size;
                      *v95 = v86->origin;
                      v95[1] = v96;
                      if (v82 < v85)
                      {
                        break;
                      }

                      v97 = 2 * v85;
                      v85 = (2 * v85) | 1;
                      v86 = &a1[v85];
                      v98 = v97 + 2;
                      if (v97 + 2 < v9)
                      {
                        v99 = CGRectGetMaxX(*v86);
                        if (v99 < CGRectGetMaxX(v86[1]))
                        {
                          ++v86;
                          v85 = v98;
                        }
                      }

                      v94 = CGRectGetMaxX(*v86);
                      v171.origin.x = v90;
                      v171.origin.y = v91;
                      v171.size.width = v92;
                      v171.size.height = v93;
                    }

                    while (v94 >= CGRectGetMaxX(v171));
                    v88->origin.x = v90;
                    v88->origin.y = v91;
                    v88->size.width = v92;
                    v88->size.height = v93;
                  }
                }

                v83 = v84 - 1;
              }

              while (v84);
              do
              {
                v101 = 0;
                v141 = a1->origin;
                v148 = a1->size;
                v102 = a1;
                do
                {
                  v104 = &v102->origin;
                  v105 = &v102[v101];
                  v102 = v105 + 1;
                  v106 = 2 * v101;
                  v101 = (2 * v101) | 1;
                  v107 = v106 + 2;
                  if (v106 + 2 < v9)
                  {
                    v108 = CGRectGetMaxX(v105[1]);
                    v172.origin.x = v105[2].origin.x;
                    v172.origin.y = v105[2].origin.y;
                    v109 = v105 + 2;
                    v172.size.width = v109->size.width;
                    v172.size.height = v109->size.height;
                    if (v108 < CGRectGetMaxX(v172))
                    {
                      v102 = v109;
                      v101 = v107;
                    }
                  }

                  v103 = v102->size;
                  *v104 = v102->origin;
                  v104[1] = v103;
                }

                while (v101 <= ((v9 - 2) >> 1));
                if (v102 == --a2)
                {
                  v102->origin = v141;
                  v102->size = v148;
                }

                else
                {
                  v110 = a2->size;
                  v102->origin = a2->origin;
                  v102->size = v110;
                  a2->origin = v141;
                  a2->size = v148;
                  v111 = (v102 - a1 + 32) >> 5;
                  v100 = v111 < 2;
                  v112 = v111 - 2;
                  if (!v100)
                  {
                    v113 = v112 >> 1;
                    v114 = &a1[v112 >> 1];
                    v115 = CGRectGetMaxX(*v114);
                    if (v115 < CGRectGetMaxX(*v102))
                    {
                      v116 = v102->origin.x;
                      v117 = v102->origin.y;
                      v118 = v102->size.width;
                      v119 = v102->size.height;
                      do
                      {
                        v120 = &v102->origin;
                        v102 = v114;
                        v121 = v114->size;
                        *v120 = v114->origin;
                        v120[1] = v121;
                        if (!v113)
                        {
                          break;
                        }

                        v113 = (v113 - 1) >> 1;
                        v114 = &a1[v113];
                        v122 = CGRectGetMaxX(*v114);
                        v173.origin.x = v116;
                        v173.origin.y = v117;
                        v173.size.width = v118;
                        v173.size.height = v119;
                      }

                      while (v122 < CGRectGetMaxX(v173));
                      v102->origin.x = v116;
                      v102->origin.y = v117;
                      v102->size.width = v118;
                      v102->size.height = v119;
                    }
                  }
                }

                v100 = v9-- <= 2;
              }

              while (!v100);
            }

            return;
          }

          v11 = &v8[v9 >> 1].origin;
          if (v9 < 0x81)
          {
            break;
          }

          sub_18395DA44(a1, &a1[v9 >> 1].origin, &a2[-1].origin);
          v12 = v9 >> 1;
          sub_18395DA44(a1 + 1, &a1[v12 - 1].origin, &a2[-2].origin);
          sub_18395DA44(a1 + 2, &a1[v12 + 1].origin, &a2[-3].origin);
          sub_18395DA44(&a1[v12 - 1], v11, &a1[v12 + 1].origin);
          v136 = a1->origin;
          v142 = a1->size;
          v13 = v11[1];
          a1->origin = *v11;
          a1->size = v13;
          *v11 = v136;
          v11[1] = v142;
          --a3;
          if (a4)
          {
            goto LABEL_16;
          }

LABEL_15:
          v14 = CGRectGetMaxX(a1[-1]);
          if (v14 < CGRectGetMaxX(*a1))
          {
            goto LABEL_16;
          }

          v31 = a1->origin.x;
          v32 = a1->origin.y;
          v33 = a1->size.width;
          v34 = a1->size.height;
          v159.origin.x = a1->origin.x;
          v159.origin.y = v32;
          v159.size.width = v33;
          v159.size.height = v34;
          v35 = CGRectGetMaxX(v159);
          if (v35 >= CGRectGetMaxX(a2[-1]))
          {
            v37 = a1 + 1;
            do
            {
              v8 = v37;
              if (v37 >= a2)
              {
                break;
              }

              v162.origin.x = v31;
              v162.origin.y = v32;
              v162.size.width = v33;
              v162.size.height = v34;
              v38 = CGRectGetMaxX(v162);
              v39 = CGRectGetMaxX(*v8);
              v37 = v8 + 1;
            }

            while (v38 >= v39);
          }

          else
          {
            v8 = a1;
            do
            {
              v160.origin.x = v31;
              v160.origin.y = v32;
              v160.size.width = v33;
              v160.size.height = v34;
              v36 = CGRectGetMaxX(v160);
              v161.origin.x = v8[1].origin.x;
              v161.origin.y = v8[1].origin.y;
              ++v8;
              v161.size.width = v8->size.width;
              v161.size.height = v8->size.height;
            }

            while (v36 >= CGRectGetMaxX(v161));
          }

          v40 = a2;
          if (v8 < a2)
          {
            v40 = a2;
            do
            {
              v163.origin.x = v31;
              v163.origin.y = v32;
              v163.size.width = v33;
              v163.size.height = v34;
              v41 = CGRectGetMaxX(v163);
              v164.origin.x = v40[-1].origin.x;
              v164.origin.y = v40[-1].origin.y;
              --v40;
              v164.size.width = v40->size.width;
              v164.size.height = v40->size.height;
            }

            while (v41 < CGRectGetMaxX(v164));
          }

          while (v8 < v40)
          {
            v138 = v8->origin;
            v144 = v8->size;
            v42 = v40->size;
            v8->origin = v40->origin;
            v8->size = v42;
            v40->origin = v138;
            v40->size = v144;
            do
            {
              v165.origin.x = v31;
              v165.origin.y = v32;
              v165.size.width = v33;
              v165.size.height = v34;
              v43 = CGRectGetMaxX(v165);
              v166.origin.x = v8[1].origin.x;
              v166.origin.y = v8[1].origin.y;
              ++v8;
              v166.size.width = v8->size.width;
              v166.size.height = v8->size.height;
            }

            while (v43 >= CGRectGetMaxX(v166));
            do
            {
              v167.origin.x = v31;
              v167.origin.y = v32;
              v167.size.width = v33;
              v167.size.height = v34;
              v44 = CGRectGetMaxX(v167);
              v168.origin.x = v40[-1].origin.x;
              v168.origin.y = v40[-1].origin.y;
              --v40;
              v168.size.width = v40->size.width;
              v168.size.height = v40->size.height;
            }

            while (v44 < CGRectGetMaxX(v168));
          }

          if (&v8[-1] != a1)
          {
            v45 = v8[-1].size;
            a1->origin = v8[-1].origin;
            a1->size = v45;
          }

          a4 = 0;
          v8[-1].origin.x = v31;
          v8[-1].origin.y = v32;
          v8[-1].size.width = v33;
          v8[-1].size.height = v34;
        }

        sub_18395DA44(&a1[v9 >> 1], &a1->origin, &a2[-1].origin);
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_16:
        v15 = 0;
        v16 = a1->origin.x;
        v17 = a1->origin.y;
        v18 = a1->size.width;
        v19 = a1->size.height;
        do
        {
          v20 = CGRectGetMaxX(a1[v15 + 1]);
          v150.origin.x = v16;
          v150.origin.y = v17;
          v150.size.width = v18;
          v150.size.height = v19;
          ++v15;
        }

        while (v20 < CGRectGetMaxX(v150));
        v21 = &a1[v15].origin.x;
        v22 = &a2->origin.x;
        if (v15 == 1)
        {
          v22 = &a2->origin.x;
          do
          {
            if (v21 >= v22)
            {
              break;
            }

            v153.origin.x = *(v22 - 4);
            v153.origin.y = *(v22 - 3);
            v22 -= 4;
            v153.size.width = v22[2];
            v153.size.height = v22[3];
            v24 = CGRectGetMaxX(v153);
            v154.origin.x = v16;
            v154.origin.y = v17;
            v154.size.width = v18;
            v154.size.height = v19;
          }

          while (v24 >= CGRectGetMaxX(v154));
        }

        else
        {
          do
          {
            v151.origin.x = *(v22 - 4);
            v151.origin.y = *(v22 - 3);
            v22 -= 4;
            v151.size.width = v22[2];
            v151.size.height = v22[3];
            v23 = CGRectGetMaxX(v151);
            v152.origin.x = v16;
            v152.origin.y = v17;
            v152.size.width = v18;
            v152.size.height = v19;
          }

          while (v23 >= CGRectGetMaxX(v152));
        }

        v8 = &a1[v15];
        if (v21 < v22)
        {
          v25 = v22;
          do
          {
            v137 = v8->origin;
            v143 = v8->size;
            v26 = *(v25 + 16);
            v8->origin = *v25;
            v8->size = v26;
            *v25 = v137;
            *(v25 + 16) = v143;
            do
            {
              v155.origin.x = v8[1].origin.x;
              v155.origin.y = v8[1].origin.y;
              ++v8;
              v155.size.width = v8->size.width;
              v155.size.height = v8->size.height;
              v27 = CGRectGetMaxX(v155);
              v156.origin.x = v16;
              v156.origin.y = v17;
              v156.size.width = v18;
              v156.size.height = v19;
            }

            while (v27 < CGRectGetMaxX(v156));
            do
            {
              v157.origin.x = *(v25 - 32);
              v157.origin.y = *(v25 - 24);
              v25 -= 32;
              v157.size.width = *(v25 + 16);
              v157.size.height = *(v25 + 24);
              v28 = CGRectGetMaxX(v157);
              v158.origin.x = v16;
              v158.origin.y = v17;
              v158.size.width = v18;
              v158.size.height = v19;
            }

            while (v28 >= CGRectGetMaxX(v158));
          }

          while (v8 < v25);
        }

        if (&v8[-1] != a1)
        {
          v29 = v8[-1].size;
          a1->origin = v8[-1].origin;
          a1->size = v29;
        }

        v8[-1].origin.x = v16;
        v8[-1].origin.y = v17;
        v8[-1].size.width = v18;
        v8[-1].size.height = v19;
        if (v21 >= v22)
        {
          break;
        }

LABEL_35:
        sub_18395CFF8(a1, &v8[-1], a3, a4 & 1);
        a4 = 0;
      }

      v30 = sub_18395DD3C(a1, v8 - 1);
      if (sub_18395DD3C(v8, a2))
      {
        break;
      }

      if (!v30)
      {
        goto LABEL_35;
      }
    }

    a2 = v8 - 1;
    if (!v30)
    {
      continue;
    }

    break;
  }
}

void sub_18395DA44(CGRect *a1, CGPoint *a2, CGPoint *a3)
{
  MaxX = CGRectGetMaxX(*&a2->x);
  v7 = CGRectGetMaxX(*a1);
  v8 = CGRectGetMaxX(*&a3->x);
  v9 = CGRectGetMaxX(*&a2->x);
  if (MaxX >= v7)
  {
    if (v8 < v9)
    {
      v14 = *a2;
      v13 = a2[1];
      v15 = a3[1];
      *a2 = *a3;
      a2[1] = v15;
      *a3 = v14;
      a3[1] = v13;
      v13.x = a2->x;
      v14.x = a2->y;
      v15.x = a2[1].x;
      y = a2[1].y;
      v17 = CGRectGetMaxX(*(&v14 - 8));
      if (v17 < CGRectGetMaxX(*a1))
      {
        origin = a1->origin;
        size = a1->size;
        v20 = a2[1];
        a1->origin = *a2;
        a1->size = v20;
        *a2 = origin;
        a2[1] = size;
      }
    }
  }

  else
  {
    if (v8 >= v9)
    {
      v22 = a1->origin;
      v21 = a1->size;
      v23 = a2[1];
      a1->origin = *a2;
      a1->size = v23;
      *a2 = v22;
      a2[1] = v21;
      v21.width = a3->x;
      v22.x = a3->y;
      v23.width = a3[1].x;
      v24 = a3[1].y;
      v25 = CGRectGetMaxX(*(&v22 - 8));
      if (v25 >= CGRectGetMaxX(*&a2->x))
      {
        return;
      }

      v11 = *a2;
      v10 = a2[1];
      v26 = a3[1];
      *a2 = *a3;
      a2[1] = v26;
    }

    else
    {
      v11 = a1->origin;
      v10 = a1->size;
      v12 = a3[1];
      a1->origin = *a3;
      a1->size = v12;
    }

    *a3 = v11;
    a3[1] = v10;
  }
}

void sub_18395DB7C(CGRect *a1, CGPoint *a2, CGPoint *a3, CGPoint *a4, CGPoint *a5)
{
  sub_18395DA44(a1, a2, a3);
  MaxX = CGRectGetMaxX(*&a4->x);
  if (MaxX < CGRectGetMaxX(*&a3->x))
  {
    v12 = *a3;
    v11 = a3[1];
    v13 = a4[1];
    *a3 = *a4;
    a3[1] = v13;
    *a4 = v12;
    a4[1] = v11;
    v11.x = a3->x;
    v12.x = a3->y;
    v13.x = a3[1].x;
    y = a3[1].y;
    v15 = CGRectGetMaxX(*(&v12 - 8));
    if (v15 < CGRectGetMaxX(*&a2->x))
    {
      v17 = *a2;
      v16 = a2[1];
      v18 = a3[1];
      *a2 = *a3;
      a2[1] = v18;
      *a3 = v17;
      a3[1] = v16;
      v16.x = a2->x;
      v17.x = a2->y;
      v18.x = a2[1].x;
      v19 = a2[1].y;
      v20 = CGRectGetMaxX(*(&v17 - 8));
      if (v20 < CGRectGetMaxX(*a1))
      {
        origin = a1->origin;
        size = a1->size;
        v23 = a2[1];
        a1->origin = *a2;
        a1->size = v23;
        *a2 = origin;
        a2[1] = size;
      }
    }
  }

  v24 = CGRectGetMaxX(*&a5->x);
  if (v24 < CGRectGetMaxX(*&a4->x))
  {
    v26 = *a4;
    v25 = a4[1];
    v27 = a5[1];
    *a4 = *a5;
    a4[1] = v27;
    *a5 = v26;
    a5[1] = v25;
    v25.x = a4->x;
    v26.x = a4->y;
    v27.x = a4[1].x;
    v28 = a4[1].y;
    v29 = CGRectGetMaxX(*(&v26 - 8));
    if (v29 < CGRectGetMaxX(*&a3->x))
    {
      v31 = *a3;
      v30 = a3[1];
      v32 = a4[1];
      *a3 = *a4;
      a3[1] = v32;
      *a4 = v31;
      a4[1] = v30;
      v30.x = a3->x;
      v31.x = a3->y;
      v32.x = a3[1].x;
      v33 = a3[1].y;
      v34 = CGRectGetMaxX(*(&v31 - 8));
      if (v34 < CGRectGetMaxX(*&a2->x))
      {
        v36 = *a2;
        v35 = a2[1];
        v37 = a3[1];
        *a2 = *a3;
        a2[1] = v37;
        *a3 = v36;
        a3[1] = v35;
        v35.x = a2->x;
        v36.x = a2->y;
        v37.x = a2[1].x;
        v38 = a2[1].y;
        v39 = CGRectGetMaxX(*(&v36 - 8));
        if (v39 < CGRectGetMaxX(*a1))
        {
          v41 = a1->origin;
          v40 = a1->size;
          v42 = a2[1];
          a1->origin = *a2;
          a1->size = v42;
          *a2 = v41;
          a2[1] = v40;
        }
      }
    }
  }
}

BOOL sub_18395DD3C(__int128 *a1, CGRect *a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_18395DA44(a1, a1 + 2, &a2[-1].origin);
        break;
      case 4:
        sub_18395DA44(a1, a1 + 2, a1 + 4);
        v42.origin.x = a2[-1].origin.x;
        v42.origin.y = a2[-1].origin.y;
        v25 = a2 - 1;
        v42.size.width = v25->size.width;
        v42.size.height = v25->size.height;
        MaxX = CGRectGetMaxX(v42);
        if (MaxX < CGRectGetMaxX(*(a1 + 2)))
        {
          v28 = a1[4];
          v27 = a1[5];
          size = v25->size;
          a1[4] = v25->origin;
          a1[5] = size;
          v25->origin = v28;
          v25->size = v27;
          v27.width = *(a1 + 8);
          v28.x = *(a1 + 9);
          size.width = *(a1 + 10);
          v30 = *(a1 + 11);
          v31 = CGRectGetMaxX(*(&v28 - 8));
          if (v31 < CGRectGetMaxX(*(a1 + 1)))
          {
            v33 = a1[2];
            v32 = a1[3];
            v34 = a1[5];
            a1[2] = a1[4];
            a1[3] = v34;
            a1[4] = v33;
            a1[5] = v32;
            *&v32 = *(a1 + 4);
            *&v33 = *(a1 + 5);
            v35 = *(a1 + 6);
            *&v34 = *(a1 + 7);
            v36 = CGRectGetMaxX(*(&v33 - 8));
            if (v36 < CGRectGetMaxX(*a1))
            {
              v38 = *a1;
              v37 = a1[1];
              v39 = a1[3];
              *a1 = a1[2];
              a1[1] = v39;
              a1[2] = v38;
              a1[3] = v37;
            }
          }
        }

        return 1;
      case 5:
        sub_18395DB7C(a1, a1 + 2, a1 + 4, a1 + 6, &a2[-1].origin);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = &a2[-1];
    v6 = CGRectGetMaxX(a2[-1]);
    if (v6 < CGRectGetMaxX(*a1))
    {
      v8 = *a1;
      v7 = a1[1];
      v9 = v5[1];
      *a1 = *v5;
      a1[1] = v9;
      *v5 = v8;
      v5[1] = v7;
    }

    return 1;
  }

LABEL_11:
  v10 = (a1 + 4);
  sub_18395DA44(a1, a1 + 2, a1 + 4);
  v11 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = CGRectGetMaxX(*v11);
    if (v14 < CGRectGetMaxX(*v10))
    {
      break;
    }

LABEL_20:
    v10 = v11;
    v12 += 32;
    if (++v11 == a2)
    {
      return 1;
    }
  }

  x = v11->origin.x;
  y = v11->origin.y;
  v17 = v12;
  width = v11->size.width;
  height = v11->size.height;
  do
  {
    v20 = a1 + v17;
    v21 = *(a1 + v17 + 80);
    *(v20 + 96) = *(a1 + v17 + 64);
    *(v20 + 112) = v21;
    if (v17 == -64)
    {
      *a1 = x;
      *(a1 + 1) = y;
      *(a1 + 2) = width;
      *(a1 + 3) = height;
      if (++v13 != 8)
      {
        goto LABEL_20;
      }

      return &v11[1] == a2;
    }

    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v22 = CGRectGetMaxX(v41);
    v17 -= 32;
  }

  while (v22 < CGRectGetMaxX(*(v20 + 32)));
  v23 = a1 + v17;
  *(v23 + 96) = x;
  *(v23 + 104) = y;
  v24 = a1 + v17 + 96;
  *(v24 + 16) = width;
  *(v24 + 24) = height;
  if (++v13 != 8)
  {
    goto LABEL_20;
  }

  return &v11[1] == a2;
}

uint64_t sub_18395DFE0(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v83 = *(a2 - 1);
      v84 = *v10;
      if (*(**a3 + 32 * v83) < *(**a3 + 32 * *v10))
      {
        *v10 = v83;
        *(a2 - 1) = v84;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v103 = *a3;
      if (a5)
      {
        if (v10 != a2)
        {
          v104 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v105 = *v103;
            v106 = 8;
            v107 = v10;
            do
            {
              v110 = *v107;
              v109 = v107[1];
              v107 = v104;
              v111 = *(v105 + 32 * v109);
              if (v111 < *(v105 + 32 * v110))
              {
                v112 = v106;
                do
                {
                  *(v10 + v112) = v110;
                  v113 = v112 - 8;
                  if (v112 == 8)
                  {
                    v108 = v10;
                    goto LABEL_121;
                  }

                  v110 = *(v10 + v112 - 16);
                  v112 -= 8;
                }

                while (v111 < *(v105 + 32 * v110));
                v108 = (v10 + v113);
LABEL_121:
                *v108 = v109;
              }

              v104 = v107 + 1;
              v106 += 8;
            }

            while (v107 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v148 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v149 = *v103;
          do
          {
            v151 = *v9;
            v150 = v9[1];
            v9 = v148;
            v152 = *(v149 + 32 * v150);
            if (v152 < *(v149 + 32 * v151))
            {
              do
              {
                *v148 = v151;
                v151 = *(v148 - 2);
                --v148;
              }

              while (v152 < *(v149 + 32 * v151));
              *v148 = v150;
            }

            v148 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v114 = (v11 - 2) >> 1;
        v115 = v114;
        do
        {
          if (v114 >= v115)
          {
            v117 = (2 * (v115 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
            v118 = &v10[v117];
            v119 = **a3;
            if (2 * (v115 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v11 && *(v119 + 32 * *v118) < *(v119 + 32 * v118[1]))
            {
              ++v118;
              v117 = 2 * (v115 & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }

            v120 = &v10[v115];
            v121 = *v118;
            v122 = *v120;
            v123 = *(v119 + 32 * *v120);
            if (*(v119 + 32 * *v118) >= v123)
            {
              do
              {
                v124 = v118;
                *v120 = v121;
                if (v114 < v117)
                {
                  break;
                }

                v125 = 2 * v117;
                v117 = (2 * (v117 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                v118 = &v10[v117];
                v126 = v125 + 2;
                if (v126 < v11)
                {
                  result = 32 * v118[1];
                  if (*(v119 + 32 * *v118) < *(v119 + result))
                  {
                    ++v118;
                    v117 = v126;
                  }
                }

                v121 = *v118;
                v120 = v124;
              }

              while (*(v119 + 32 * *v118) >= v123);
              *v124 = v122;
            }
          }

          v116 = v115-- <= 0;
        }

        while (!v116);
        do
        {
          v127 = 0;
          v128 = *v10;
          v129 = *a3;
          v130 = v10;
          do
          {
            v131 = v130;
            v132 = &v130[v127];
            v130 = v132 + 1;
            v133 = 2 * v127;
            v127 = (2 * v127) | 1;
            v134 = v133 + 2;
            if (v134 < v11)
            {
              v136 = v132[2];
              v135 = v132 + 2;
              result = 32 * *(v135 - 1);
              if (*(*v129 + result) < *(*v129 + 32 * v136))
              {
                v130 = v135;
                v127 = v134;
              }
            }

            *v131 = *v130;
          }

          while (v127 <= ((v11 - 2) >> 1));
          if (v130 == --a2)
          {
            *v130 = v128;
          }

          else
          {
            *v130 = *a2;
            *a2 = v128;
            v137 = (v130 - v10 + 8) >> 3;
            v116 = v137 < 2;
            v138 = v137 - 2;
            if (!v116)
            {
              v139 = v138 >> 1;
              v140 = &v10[v139];
              v141 = *v140;
              v142 = *v130;
              v143 = **a3;
              v144 = *(v143 + 32 * *v130);
              if (*(v143 + 32 * *v140) < v144)
              {
                do
                {
                  v145 = v140;
                  *v130 = v141;
                  if (!v139)
                  {
                    break;
                  }

                  v139 = (v139 - 1) >> 1;
                  v140 = &v10[v139];
                  v141 = *v140;
                  v130 = v145;
                }

                while (*(v143 + 32 * *v140) < v144);
                *v145 = v142;
              }
            }
          }

          v116 = v11-- <= 2;
        }

        while (!v116);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = **a3;
    v15 = *(a2 - 1);
    v16 = *(v14 + 32 * v15);
    if (v11 < 0x81)
    {
      v21 = *v10;
      v22 = *v13;
      v23 = *(v14 + 32 * *v10);
      v24 = *(v14 + 32 * *v13);
      if (v23 < v24)
      {
        if (v16 < v23)
        {
          *v13 = v15;
          goto LABEL_37;
        }

        *v13 = v21;
        *v10 = v22;
        v38 = *(a2 - 1);
        if (*(v14 + 32 * v38) < v24)
        {
          *v10 = v38;
LABEL_37:
          *(a2 - 1) = v22;
        }

LABEL_38:
        --a4;
        v27 = *v10;
        v28 = 32 * *v10;
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      if (v16 >= v23)
      {
        goto LABEL_38;
      }

      *v10 = v15;
      *(a2 - 1) = v21;
      v26 = *v13;
      if (*(v14 + 32 * *v10) >= *(v14 + 32 * *v13))
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v26;
      --a4;
      v27 = v26;
      v28 = 32 * v26;
      if (a5)
      {
        goto LABEL_61;
      }

LABEL_60:
      v57 = *(v14 + v28);
      if (*(v14 + 32 * *(v10 - 1)) < v57)
      {
        goto LABEL_61;
      }

      if (v57 >= *(v14 + 32 * *(a2 - 1)))
      {
        v74 = v10 + 1;
        do
        {
          v10 = v74;
          if (v74 >= a2)
          {
            break;
          }

          ++v74;
        }

        while (v57 >= *(v14 + 32 * *v10));
      }

      else
      {
        do
        {
          v73 = v10[1];
          ++v10;
        }

        while (v57 >= *(v14 + 32 * v73));
      }

      v75 = a2;
      if (v10 < a2)
      {
        v75 = a2;
        do
        {
          v76 = *--v75;
        }

        while (v57 < *(v14 + 32 * v76));
      }

      if (v10 < v75)
      {
        v77 = *v10;
        v78 = *v75;
        do
        {
          *v10 = v78;
          *v75 = v77;
          do
          {
            v79 = v10[1];
            ++v10;
            v77 = v79;
          }

          while (v57 >= *(v14 + 32 * v79));
          do
          {
            v80 = *--v75;
            v78 = v80;
          }

          while (v57 < *(v14 + 32 * v80));
        }

        while (v10 < v75);
      }

      v81 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v81;
      }

      a5 = 0;
      *v81 = v27;
    }

    else
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 32 * *v12);
      v20 = *(v14 + 32 * *v10);
      if (v19 >= v20)
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v10;
          if (*(v14 + 32 * *v12) < *(v14 + 32 * *v10))
          {
            *v10 = *v12;
            *v12 = v25;
          }
        }
      }

      else
      {
        if (v16 >= v19)
        {
          *v10 = v17;
          *v12 = v18;
          v29 = *(a2 - 1);
          if (*(v14 + 32 * v29) >= v20)
          {
            goto LABEL_29;
          }

          *v12 = v29;
        }

        else
        {
          *v10 = v15;
        }

        *(a2 - 1) = v18;
      }

LABEL_29:
      v30 = v12 - 1;
      v31 = *(v12 - 1);
      v32 = v10[1];
      v33 = *(v14 + 32 * v31);
      v34 = *(v14 + 32 * v32);
      v35 = *(a2 - 2);
      v36 = *(v14 + 32 * v35);
      if (v33 >= v34)
      {
        if (v36 < v33)
        {
          *v30 = v35;
          *(a2 - 2) = v31;
          v37 = v10[1];
          if (*(v14 + 32 * *v30) < *(v14 + 32 * v37))
          {
            v10[1] = *v30;
            *v30 = v37;
          }
        }
      }

      else
      {
        if (v36 >= v33)
        {
          v10[1] = v31;
          *v30 = v32;
          v39 = *(a2 - 2);
          if (*(v14 + 32 * v39) >= v34)
          {
            goto LABEL_43;
          }

          *v30 = v39;
        }

        else
        {
          v10[1] = v35;
        }

        *(a2 - 2) = v32;
      }

LABEL_43:
      v42 = v12[1];
      v40 = v12 + 1;
      v41 = v42;
      v43 = v10[2];
      v44 = *(v14 + 32 * v42);
      v45 = *(v14 + 32 * v43);
      v46 = *(a2 - 3);
      v47 = *(v14 + 32 * v46);
      if (v44 >= v45)
      {
        if (v47 < v44)
        {
          *v40 = v46;
          *(a2 - 3) = v41;
          v48 = v10[2];
          if (*(v14 + 32 * *v40) < *(v14 + 32 * v48))
          {
            v10[2] = *v40;
            *v40 = v48;
          }
        }
      }

      else
      {
        if (v47 >= v44)
        {
          v10[2] = v41;
          *v40 = v43;
          v49 = *(a2 - 3);
          if (*(v14 + 32 * v49) >= v45)
          {
            goto LABEL_52;
          }

          *v40 = v49;
        }

        else
        {
          v10[2] = v46;
        }

        *(a2 - 3) = v43;
      }

LABEL_52:
      v50 = *v13;
      v51 = *v30;
      v52 = *(v14 + 32 * *v13);
      v53 = *(v14 + 32 * *v30);
      v54 = *v40;
      v55 = *(v14 + 32 * *v40);
      if (v52 < v53)
      {
        if (v55 >= v52)
        {
          *v30 = v50;
          *v13 = v51;
          v30 = v13;
          v50 = v54;
          if (v55 >= v53)
          {
            v50 = v51;
            goto LABEL_59;
          }
        }

LABEL_58:
        *v30 = v54;
        *v40 = v51;
        goto LABEL_59;
      }

      if (v55 >= v52)
      {
        goto LABEL_59;
      }

      *v13 = v54;
      *v40 = v50;
      v40 = v13;
      v50 = v51;
      if (v55 < v53)
      {
        goto LABEL_58;
      }

      v50 = v54;
LABEL_59:
      v56 = *v10;
      *v10 = v50;
      *v13 = v56;
      --a4;
      v27 = *v10;
      v28 = 32 * *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_61:
      v58 = 0;
      v59 = **a3;
      v60 = *(v59 + v28);
      do
      {
        v61 = v10[++v58];
      }

      while (*(v59 + 32 * v61) < v60);
      v62 = &v10[v58];
      v63 = a2;
      if (v58 == 1)
      {
        v63 = a2;
        do
        {
          if (v62 >= v63)
          {
            break;
          }

          v65 = *--v63;
        }

        while (*(v59 + 32 * v65) >= v60);
      }

      else
      {
        do
        {
          v64 = *--v63;
        }

        while (*(v59 + 32 * v64) >= v60);
      }

      if (v62 >= v63)
      {
        v71 = v62 - 1;
        if (v62 - 1 == v10)
        {
          goto LABEL_79;
        }

LABEL_78:
        *v10 = *v71;
        goto LABEL_79;
      }

      v66 = *v63;
      v67 = &v10[v58];
      v68 = v63;
      do
      {
        *v67 = v66;
        *v68 = v61;
        do
        {
          v69 = v67[1];
          ++v67;
          v61 = v69;
        }

        while (*(v59 + 32 * v69) < v60);
        do
        {
          v70 = *--v68;
          v66 = v70;
        }

        while (*(v59 + 32 * v70) >= v60);
      }

      while (v67 < v68);
      v71 = v67 - 1;
      if (v67 - 1 != v10)
      {
        goto LABEL_78;
      }

LABEL_79:
      *v71 = v27;
      if (v62 < v63)
      {
        goto LABEL_82;
      }

      v72 = sub_18395ED70(v10, v71, *a3);
      v10 = v71 + 1;
      result = sub_18395ED70(v71 + 1, a2, *a3);
      if (result)
      {
        a2 = v71;
        if (!v72)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v72)
      {
LABEL_82:
        result = sub_18395DFE0(v9, v71, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v71 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v92 = v10 + 1;
      v93 = v10[1];
      v94 = v10 + 2;
      v95 = v10[2];
      v96 = **a3;
      v97 = *v10;
      v98 = *(v96 + 32 * v93);
      v99 = *(v96 + 32 * *v10);
      v100 = *(v96 + 32 * v95);
      if (v98 >= v99)
      {
        if (v100 >= v98)
        {
          goto LABEL_169;
        }

        *v92 = v95;
        *v94 = v93;
        v101 = v10;
        v102 = v10 + 1;
        result = v93;
        if (v100 < v99)
        {
          goto LABEL_161;
        }
      }

      else
      {
        v101 = v10;
        v102 = v10 + 2;
        result = *v10;
        if (v100 >= v98)
        {
          *v10 = v93;
          v10[1] = v97;
          v101 = v10 + 1;
          v102 = v10 + 2;
          result = v97;
          if (v100 >= v99)
          {
LABEL_169:
            v93 = v95;
            goto LABEL_170;
          }
        }

LABEL_161:
        *v101 = v95;
        *v102 = v97;
        v93 = result;
      }

LABEL_170:
      v153 = *(a2 - 1);
      if (*(v96 + 32 * v153) < *(v96 + 32 * v93))
      {
        *v94 = v153;
        *(a2 - 1) = v93;
        v154 = *v94;
        v155 = *v92;
        v156 = *(v96 + 32 * v154);
        if (v156 < *(v96 + 32 * v155))
        {
          v10[1] = v154;
          v10[2] = v155;
          v157 = *v10;
          if (v156 < *(v96 + 32 * *v10))
          {
            *v10 = v154;
            v10[1] = v157;
          }
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v82 = **a3;

      return sub_18395EBAC(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, v82);
    }

    goto LABEL_10;
  }

  v85 = **a3;
  v86 = *v10;
  v87 = v10[1];
  v88 = *(v85 + 32 * v87);
  v89 = *(v85 + 32 * *v10);
  v90 = *(a2 - 1);
  v91 = *(v85 + 32 * v90);
  if (v88 >= v89)
  {
    if (v91 < v88)
    {
      v10[1] = v90;
      *(a2 - 1) = v87;
      v147 = *v10;
      v146 = v10[1];
      if (*(v85 + 32 * v146) < *(v85 + 32 * *v10))
      {
        *v10 = v146;
        v10[1] = v147;
      }
    }
  }

  else
  {
    if (v91 >= v88)
    {
      *v10 = v87;
      v10[1] = v86;
      v158 = *(a2 - 1);
      if (*(v85 + 32 * v158) >= v89)
      {
        return result;
      }

      v10[1] = v158;
    }

    else
    {
      *v10 = v90;
    }

    *(a2 - 1) = v86;
  }

  return result;
}

uint64_t *sub_18395EBAC(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 32 * *a2);
  v9 = *(a6 + 32 * *result);
  v10 = *a3;
  v11 = *(a6 + 32 * *a3);
  if (v8 >= v9)
  {
    if (v11 >= v8)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v10;
      *a3 = v6;
      v12 = *result;
      if (*(a6 + 32 * *a2) < *(a6 + 32 * *result))
      {
        *result = *a2;
        *a2 = v12;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v11 < v8)
    {
      *result = v10;
LABEL_9:
      *a3 = v7;
      v6 = v7;
      goto LABEL_11;
    }

    *result = v6;
    *a2 = v7;
    v6 = *a3;
    if (*(a6 + 32 * *a3) < v9)
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(a6 + 32 * *a4) < *(a6 + 32 * v6))
  {
    *a3 = *a4;
    *a4 = v6;
    v13 = *a2;
    if (*(a6 + 32 * *a3) < *(a6 + 32 * *a2))
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *result;
      if (*(a6 + 32 * *a2) < *(a6 + 32 * *result))
      {
        *result = *a2;
        *a2 = v14;
      }
    }
  }

  v15 = *a4;
  if (*(a6 + 32 * *a5) < *(a6 + 32 * *a4))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(a6 + 32 * *a4) < *(a6 + 32 * *a3))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(a6 + 32 * *a3) < *(a6 + 32 * *a2))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(a6 + 32 * *a2) < *(a6 + 32 * *result))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL sub_18395ED70(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = *a3;
      v8 = *a1;
      v9 = a1[1];
      v10 = *(*a3 + 32 * v9);
      v11 = *(*a3 + 32 * *a1);
      v12 = *(a2 - 1);
      v13 = *(*a3 + 32 * v12);
      if (v10 >= v11)
      {
        if (v13 >= v10)
        {
          return 1;
        }

        a1[1] = v12;
        *(a2 - 1) = v9;
        v37 = *a1;
        v36 = a1[1];
        if (*(v7 + 32 * v36) >= *(v7 + 32 * *a1))
        {
          return 1;
        }

        *a1 = v36;
        a1[1] = v37;
        return 1;
      }

      else if (v13 >= v10)
      {
        *a1 = v9;
        a1[1] = v8;
        v51 = *(a2 - 1);
        if (*(v7 + 32 * v51) >= v11)
        {
          return 1;
        }

        a1[1] = v51;
        *(a2 - 1) = v8;
        return 1;
      }

      else
      {
        *a1 = v12;
        *(a2 - 1) = v8;
        return 1;
      }
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_18395EBAC(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
        return 1;
      }

LABEL_14:
      v15 = a1 + 2;
      v14 = a1[2];
      v16 = a1[1];
      v17 = *a3;
      v18 = *a1;
      v19 = *(*a3 + 32 * v16);
      v20 = *(*a3 + 32 * *a1);
      v21 = *(*a3 + 32 * v14);
      if (v19 >= v20)
      {
        if (v21 >= v19)
        {
          goto LABEL_28;
        }

        a1[1] = v14;
        *v15 = v16;
        v22 = a1;
        v23 = a1 + 1;
        if (v21 >= v20)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v22 = a1;
        v23 = a1 + 2;
        if (v21 >= v19)
        {
          *a1 = v16;
          a1[1] = v18;
          v22 = a1 + 1;
          v23 = a1 + 2;
          if (v21 >= v20)
          {
            goto LABEL_28;
          }
        }
      }

      *v22 = v14;
      *v23 = v18;
LABEL_28:
      v38 = a1 + 3;
      if (a1 + 3 == a2)
      {
        return 1;
      }

      v39 = 0;
      for (i = 24; ; i += 8)
      {
        v41 = *v38;
        v42 = *v15;
        v43 = *(v17 + 32 * *v38);
        if (v43 < *(v17 + 32 * v42))
        {
          break;
        }

LABEL_31:
        v15 = v38++;
        if (v38 == a2)
        {
          return 1;
        }
      }

      v44 = i;
      do
      {
        *(a1 + v44) = v42;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          *a1 = v41;
          if (++v39 != 8)
          {
            goto LABEL_31;
          }

          return v38 + 1 == a2;
        }

        v42 = *(a1 + v44 - 16);
        v44 -= 8;
      }

      while (v43 < *(v17 + 32 * v42));
      *(a1 + v45) = v41;
      if (++v39 != 8)
      {
        goto LABEL_31;
      }

      return v38 + 1 == a2;
    }

    v24 = a1 + 1;
    v25 = a1[1];
    v26 = a1 + 2;
    v27 = a1[2];
    v28 = *a3;
    v29 = *a1;
    v30 = *(*a3 + 32 * v25);
    v31 = *(*a3 + 32 * *a1);
    v32 = *(*a3 + 32 * v27);
    if (v30 >= v31)
    {
      if (v32 >= v30)
      {
LABEL_41:
        v25 = v27;
LABEL_42:
        v46 = *(a2 - 1);
        if (*(v28 + 32 * v46) >= *(v28 + 32 * v25))
        {
          return 1;
        }

        *v26 = v46;
        *(a2 - 1) = v25;
        v47 = *v26;
        v48 = *v24;
        v49 = *(v28 + 32 * v47);
        if (v49 >= *(v28 + 32 * v48))
        {
          return 1;
        }

        a1[1] = v47;
        a1[2] = v48;
        v50 = *a1;
        if (v49 >= *(v28 + 32 * *a1))
        {
          return 1;
        }

        *a1 = v47;
        a1[1] = v50;
        return 1;
      }

      *v24 = v27;
      *v26 = v25;
      v33 = a1;
      v34 = a1 + 1;
      v35 = v25;
      if (v32 >= v31)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v33 = a1;
      v34 = a1 + 2;
      v35 = *a1;
      if (v32 >= v30)
      {
        *a1 = v25;
        a1[1] = v29;
        v33 = a1 + 1;
        v34 = a1 + 2;
        v35 = v29;
        if (v32 >= v31)
        {
          goto LABEL_41;
        }
      }
    }

    *v33 = v27;
    *v34 = v29;
    v25 = v35;
    goto LABEL_42;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  v5 = *(a2 - 1);
  v6 = *a1;
  if (*(*a3 + 32 * v5) >= *(*a3 + 32 * *a1))
  {
    return 1;
  }

  *a1 = v5;
  *(a2 - 1) = v6;
  return 1;
}

void sub_1839602D8(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  if (a1)
  {
    v9 = *(a1 + 64);
    v10 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v5, a3, v6, v7, v8);
    objc_msgSend_setObject_forKey_(v9, v11, v10, v14, v12, v13);
  }
}

void sub_183960388(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v35 = v5;
    v11 = objc_msgSend_encodedStrokeIdentifier(v5, v6, v7, v8, v9, v10);
    v16 = objc_msgSend_objectForKey_(*(a1 + 88), v12, v11, v13, v14, v15);

    if (!v16)
    {
      v21 = objc_opt_class();
      v26 = objc_msgSend_substrokesForStroke_(v21, v22, v35, v23, v24, v25);
      objc_msgSend_setObject_forKey_(*(a1 + 88), v27, v26, v11, v28, v29);
    }

    v30 = *(a1 + 64);
    v31 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v17, a3, v18, v19, v20);
    objc_msgSend_setObject_forKey_(v30, v32, v31, v11, v33, v34);

    v5 = v35;
  }
}

void sub_183962CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_183962D3C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_183962D60(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_183962D78(uint64_t a1, double a2, double a3)
{
  *&v3 = a2;
  *(&v3 + 1) = a3;
  sub_1836973A4(*(*(a1 + 32) + 8) + 48, &v3);
}

void sub_183963550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18396366C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_183963684(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  if (objc_msgSend_compare_(v6, v7, *(*(*(a1 + 32) + 8) + 40), v8, v9, v10) == 1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

void sub_183963810(uint64_t a1@<X0>, void ***a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_183963910(a2, (*(a1 + 40) - *(a1 + 32)) >> 5);
  v5 = *(a1 + 32);
  for (i = *(a1 + 40); v5 != i; v5 += 32)
  {
    v7 = *v5;
    v9 = v7;
    v10 = *(v5 + 8);
    v11 = *(v5 + 24);
    v8 = a2[1];
    if (v8 < a2[2])
    {
      *v8 = v7;
      *(v8 + 1) = v10;
      v6 = (v8 + 3);
    }

    else
    {
      v6 = sub_18378E750(a2, &v9);
    }

    a2[1] = v6;
  }
}

void *sub_183963910(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_183788D88();
  }

  return result;
}

void sub_183963A30(void *a1, unint64_t a2)
{
  v2 = a2;
  v19 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  if (a2 >= (a1[5] - v4) >> 5)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v9 = qword_1EA84DC98;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = (a1[5] - a1[4]) >> 5;
      LODWORD(v12) = 67109376;
      HIDWORD(v12) = v2;
      LOWORD(v13) = 1024;
      *(&v13 + 2) = v10;
      _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_ERROR, "CHFastPathCharacterPersonalizer: attempt to add candidate with index %d, when total number of candidates is %d", &v12, 0xEu);
    }
  }

  else
  {
    v5 = a1[2];
    if (v5)
    {
      v6 = v4 + 32 * a2;
      v7 = *(v6 + 24);
      v8 = *(v5 + 40);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = sub_18378EFE8;
      v15 = &unk_1E6DDDFB8;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      dispatch_sync(v8, &v12);
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v11 = qword_1EA84DC98;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v12) = 67109120;
        HIDWORD(v12) = v2;
        _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_ERROR, "CHFastPathCharacterPersonalizer: attempt to add candidate with index %d into the nil holder", &v12, 8u);
      }
    }
  }
}

void sub_183963C4C(uint64_t a1, void *a2, int a3, int a4, float a5, float a6)
{
  v70 = a2;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0;
  v18 = a5;
  v19 = a6;
  MinY = 3.4028e38;
  v21 = -3.4028e38;
  while (v17 < objc_msgSend_strokeCount(v70, v11, v12, v13, v14, v15))
  {
    objc_msgSend_boundsForStrokeIndex_(v70, v22, v17, v23, v24, v25);
    if (v26 >= v18)
    {
      if (v26 < v19)
      {
        MinY = fmin(MinY, v27);
        v21 = fmax(v21, v27 + v28);
      }

      ++v17;
    }

    else
    {
      v29 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v11, v17, v13, v14, v15);
      objc_msgSend_addObject_(v16, v30, v29, v31, v32, v33);

      ++v17;
    }
  }

  v34 = objc_msgSend_drawingWithStrokesFromIndexArray_(v70, v22, v16, v23, v24, v25);
  v40 = v34;
  if (v21 < MinY)
  {
    objc_msgSend_bounds(v34, v35, v36, v37, v38, v39);
    MaxY = CGRectGetMaxY(v84);
    objc_msgSend_bounds(v40, v42, v43, v44, v45, v46);
    v21 = MaxY;
    MinY = CGRectGetMinY(v85);
  }

  v72 = 0;
  v73 = v21;
  v74 = 0x3FF0000000000000;
  v75 = v21;
  v76 = 0;
  v77 = MinY;
  v78 = 0x3FF0000000000000;
  v79 = MinY;
  sub_183963F64(&v80, v71, a3, v40);
  v47 = v81;
  v48 = v82;
  v49 = v40;
  objc_msgSend_bounds(v49, v50, v51, v52, v53, v54);
  v55 = v47;
  v56 = v48;
  v63 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v49, v58, v59, v60, v61, v62, (0.0 / (1.0 / (v55 - v56))) - v57, ((1.0 / (1.0 / (v55 - v56))) - v55), (1.0 / (v55 - v56)));

  v69 = objc_msgSend_copy(v63, v64, v65, v66, v67, v68);
  sub_18378FD40(a1, v69, a4, a3);
}

void sub_183963F64(_OWORD *a1, uint64_t a2, int a3, void *a4)
{
  v7 = a4;
  v8 = *(a2 + 40);
  v9 = *(a2 + 72);
  v94 = v7;
  objc_msgSend_bounds(v7, v10, v11, v12, v13, v14);
  v16 = v15;
  objc_msgSend_bounds(v94, v17, v18, v19, v20, v21);
  v23 = v22;
  objc_msgSend_bounds(v94, v24, v25, v26, v27, v28);
  v30 = v29;
  v36 = sub_1837A4260(a3, v31, v32, v33, v34, v35);
  v42 = objc_msgSend_ch_minYIsMidMaxYIsBaseCharSet(MEMORY[0x1E696AB08], v37, v38, v39, v40, v41);
  v46 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v36, v43, v42, 1, v44, v45);
  v47 = v16;
  v48 = v23 + v30;

  v54 = v48;
  if (v46 >= 1)
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = v54;
    *(a2 + 48) = 0x3FF0000000000000;
    *(a2 + 56) = v54;
    v55 = v47;
LABEL_8:
    v70 = v55;
    *(a2 + 64) = 0;
    *(a2 + 72) = v70;
    *(a2 + 80) = 0x3FF0000000000000;
    *(a2 + 88) = v70;
    goto LABEL_9;
  }

  v56 = objc_msgSend_ch_maxYIsBaseCharSet(MEMORY[0x1E696AB08], v49, v50, v51, v52, v53);
  v60 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v36, v57, v56, 1, v58, v59);
  v61 = v8;
  v62 = v9;

  if (v60 >= 1)
  {
    v63 = v48 - v61;
LABEL_7:
    v69 = (v63 + v61);
    *(a2 + 32) = 0;
    *(a2 + 40) = v69;
    *(a2 + 48) = 0x3FF0000000000000;
    *(a2 + 56) = v69;
    v55 = v63 + v62;
    goto LABEL_8;
  }

  v64 = objc_msgSend_ch_minYIsMidCharSet(MEMORY[0x1E696AB08], v49, v50, v51, v52, v53);
  v68 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v36, v65, v64, 1, v66, v67);

  if (v68 >= 1)
  {
    v63 = v47 - v62;
    goto LABEL_7;
  }

LABEL_9:
  v71 = objc_msgSend_ch_minYIsTopCharSet(MEMORY[0x1E696AB08], v49, v50, v51, v52, v53);
  v75 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v36, v72, v71, 1, v73, v74);

  if (v75)
  {
    v81 = *(a2 + 72);
    v82 = *(a2 + 40);
    if ((v81 - v47) != (v82 - v81))
    {
      v83 = ((v47 * 0.7) + (v82 * 0.3));
      *(a2 + 64) = 0;
      *(a2 + 72) = v83;
      *(a2 + 80) = 0x3FF0000000000000;
      *(a2 + 88) = v83;
    }
  }

  v84 = objc_msgSend_ch_mathDigitsCharSet(MEMORY[0x1E696AB08], v76, v77, v78, v79, v80);
  v88 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v36, v85, v84, 1, v86, v87);

  if (v88)
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = v54;
    *(a2 + 48) = 0x3FF0000000000000;
    *(a2 + 56) = v54;
    v89 = ((v47 * 0.7) + (v48 * 0.3));
    *(a2 + 64) = 0;
    *(a2 + 72) = v89;
    *(a2 + 80) = 0x3FF0000000000000;
    *(a2 + 88) = v89;
  }

  v90 = *(a2 + 80);
  a1[4] = *(a2 + 64);
  a1[5] = v90;
  v91 = *(a2 + 112);
  a1[6] = *(a2 + 96);
  a1[7] = v91;
  v92 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v92;
  v93 = *(a2 + 48);
  a1[2] = *(a2 + 32);
  a1[3] = v93;
}

void sub_1839642C8(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(CHSynthesisRequestOptions);
  v10 = objc_msgSend_ch_basicAlphanumericCharacterSet(MEMORY[0x1E696AB08], v5, v6, v7, v8, v9);
  v14 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v3, v11, v10, 1, v12, v13);

  if (v14)
  {
    objc_msgSend_setFastPathAsXZero_(v4, v15, 0, v16, v17, v18);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v19 = qword_1EA84DC98;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v36 = v3;
      v20 = "Character %@ does NOT require seeding with the fast path";
LABEL_10:
      _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_DEBUG, v20, buf, 0xCu);
    }
  }

  else
  {
    objc_msgSend_setFastPathAsXZero_(v4, v15, 1, v16, v17, v18);
    objc_msgSend_setFastPathUseDefaultStyle_(v4, v21, 1, v22, v23, v24);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v19 = qword_1EA84DC98;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v36 = v3;
      v20 = "Character %@ requires seeding with the fast path";
      goto LABEL_10;
    }
  }

  *a1 = objc_msgSend_stringByAppendingFormat_(v3, v25, @" %@", v26, v27, v28, @"www name wave");
  v29 = v4;
  *(a1 + 8) = v29;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = objc_msgSend_firstCodepointInString(v3, v30, v31, v32, v33, v34);
  *(a1 + 36) = 0;
  *(a1 + 40) = 1;
}

void sub_183964528(uint64_t a1@<X0>, char a2@<W1>, id **a3@<X8>)
{
  v111 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3)
  {
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v102 = 0;
    v103 = 0;
    v101 = &v102;
    if ((a2 & 1) == 0)
    {
      v4 = a1;
      (*(*v3 + 24))(buf, v3);
      sub_18368D56C(&v101, v102);
      v5 = *&buf[8];
      v101 = *buf;
      v102 = *&buf[8];
      v103 = v94;
      if (v94)
      {
        *(*&buf[8] + 16) = &v102;
        *buf = &buf[8];
        *&buf[8] = 0;
        v94 = 0;
        v5 = 0;
      }

      else
      {
        v101 = &v102;
      }

      sub_18368D56C(buf, v5);
      a1 = v4;
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = *(a1 + 8);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v97, v110, 16, v8);
    if (v14)
    {
      v90 = 0;
      v15 = 0;
      v92 = *v98;
      do
      {
        for (i = 0; i != v14; i = (i + 1))
        {
          if (*v98 != v92)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v97 + 1) + 8 * i);
          v18 = objc_msgSend_ch_basicAlphanumericCharacterSet(MEMORY[0x1E696AB08], v9, v10, v11, v12, v13);
          v22 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v17, v19, v18, 1, v20, v21) == 0;

          if (!v22)
          {
            CodepointInString = objc_msgSend_firstCodepointInString(v17, v9, v10, v11, v12, v13);
            v29 = objc_msgSend_ch_mathDigitsCharSet(MEMORY[0x1E696AB08], v24, v25, v26, v27, v28);
            v33 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v17, v30, v29, 1, v31, v32) == 0;

            if (v33)
            {
              v41 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v34, @"ij", v35, v36, v37);
              IsMember = objc_msgSend_characterIsMember_(v41, v42, CodepointInString, v43, v44, v45);

              if ((IsMember & 1) == 0)
              {
                for (j = v102; j; j = *j)
                {
                  v51 = *(j + 8);
                  if (CodepointInString >= v51)
                  {
                    if (v51 >= CodepointInString)
                    {
                      goto LABEL_15;
                    }

                    ++j;
                  }
                }

                sub_1839642C8(buf, v17);
                if (v90 >= v106)
                {
                  v50 = sub_183965B54(&v104, buf);
                }

                else
                {
                  v48 = *buf;
                  memset(buf, 0, sizeof(buf));
                  *v90 = v48;
                  *(v90 + 16) = v94;
                  v49 = v95;
                  v95 = 0;
                  *(v90 + 24) = v49;
                  *(v90 + 32) = v96;
                  v50 = v90 + 48;
                }

                v90 = v50;
                v105 = v50;
              }
            }

            else
            {
              v38 = v102;
LABEL_22:
              if (!v38)
              {
LABEL_26:
                operator new();
              }

              while (1)
              {
                v39 = v38;
                v40 = *(v38 + 8);
                if (CodepointInString < v40)
                {
                  v38 = *v39;
                  goto LABEL_22;
                }

                if (v40 >= CodepointInString)
                {
                  break;
                }

                v38 = v39[1];
                if (!v38)
                {
                  goto LABEL_26;
                }
              }

              v52 = v39[5];
              v53 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v34, @"47", v35, v36, v37);
              v58 = objc_msgSend_characterIsMember_(v53, v54, CodepointInString, v55, v56, v57);

              if (v58)
              {
                v59 = 1;
              }

              else
              {
                v59 = 3;
              }

              if (v52 < v59)
              {
                sub_1839642C8(buf, v17);
                if (v15 >= v109)
                {
                  v15 = sub_183965B54(&v107, buf);
                }

                else
                {
                  v60 = *buf;
                  memset(buf, 0, sizeof(buf));
                  *v15 = v60;
                  *(v15 + 16) = v94;
                  v61 = v95;
                  v95 = 0;
                  *(v15 + 24) = v61;
                  *(v15 + 32) = v96;
                  v15 += 48;
                }

                v108 = v15;

                *(v15 - 32) = 2;
                *(v15 - 8) = v59;
              }
            }
          }

LABEL_15:
          ;
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v97, v110, 16, v13);
      }

      while (v14);
      v62 = v107;
      v63 = v109;
      v14 = v104;
    }

    else
    {
      v90 = 0;
      v63 = 0;
      v15 = 0;
      v62 = 0;
    }

    v64 = v90;
    *a3 = v62;
    a3[1] = v15;
    v107 = 0;
    v108 = 0;
    a3[2] = v63;
    v65 = v90 - v14;
    v109 = 0;
    if ((v90 - v14) < 1)
    {
      goto LABEL_81;
    }

    if ((v63 - v15) >= v65)
    {
      if (v14 == v90)
      {
        v69 = v15;
      }

      else
      {
        v69 = v15;
        v70 = v14;
        do
        {
          *v15 = *v70;
          *(v15 + 8) = v70[1];
          *(v15 + 16) = *(v70 + 4);
          *(v15 + 24) = v70[3];
          *(v15 + 32) = *(v70 + 2);
          v70 += 6;
          v15 += 48;
          v69 += 48;
        }

        while (v70 != v90);
      }

      a3[1] = v69;
LABEL_81:
      sub_18368D56C(&v101, v102);
      if (v14)
      {
        while (v64 != v14)
        {

          v64 -= 6;
        }

        operator delete(v14);
      }

      return;
    }

    v66 = (v15 - v62) >> 4;
    v67 = 0xAAAAAAAAAAAAAAABLL * (v65 >> 4) - 0x5555555555555555 * v66;
    if (v67 > 0x555555555555555)
    {
      sub_18368964C();
    }

    if (0x5555555555555556 * ((v63 - v62) >> 4) > v67)
    {
      v67 = 0x5555555555555556 * ((v63 - v62) >> 4);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v63 - v62) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v68 = 0x555555555555555;
    }

    else
    {
      v68 = v67;
    }

    if (v68)
    {
      if (v68 <= 0x555555555555555)
      {
        operator new();
      }

      sub_183688F00();
    }

    v71 = 2 * v66;
    v72 = 16 * v66 + v65;
    v73 = 16 * v66;
    v74 = v14;
    do
    {
      *v73 = *v74;
      *(v73 + 8) = v74[1];
      *(v73 + 16) = *(v74 + 4);
      *(v73 + 24) = v74[3];
      *(v73 + 32) = *(v74 + 2);
      v73 += 48;
      v74 += 6;
    }

    while (v73 != v72);
    v75 = a3[1];
    if (v75 == v15)
    {
      v82 = v15;
      v81 = *a3;
      v83 = &(*a3)[v71] - v15;
      if (v15 != *a3)
      {
LABEL_73:
        v84 = v81;
        v85 = v83;
        do
        {
          v86 = *v84;
          *v84 = 0;
          v84[1] = 0;
          *v85 = v86;
          *(v85 + 16) = *(v84 + 4);
          v87 = v84[3];
          v84[3] = 0;
          *(v85 + 24) = v87;
          *(v85 + 32) = *(v84 + 2);
          v84 += 6;
          v85 += 48;
        }

        while (v84 != v15);
        do
        {

          v81 += 6;
        }

        while (v81 != v15);
        v88 = a3;
        v81 = *a3;
LABEL_79:
        *v88 = v83;
        v88[1] = v72 + v82 - v15;
        v88[2] = 0;
        v64 = v90;
        if (v81)
        {
          operator delete(v81);
        }

        goto LABEL_81;
      }
    }

    else
    {
      v76 = v15;
      v77 = v72;
      do
      {
        v78 = *v76;
        *v76 = 0;
        *(v76 + 8) = 0;
        *v77 = v78;
        *(v77 + 16) = *(v76 + 16);
        v79 = *(v76 + 24);
        *(v76 + 24) = 0;
        *(v77 + 24) = v79;
        *(v77 + 32) = *(v76 + 32);
        v76 += 48;
        v77 += 48;
      }

      while (v76 != v75);
      v80 = v15;
      do
      {

        v80 += 6;
      }

      while (v80 != v75);
      v81 = *a3;
      v82 = a3[1];
      v83 = &(*a3)[v71] - v15;
      if (v15 != *a3)
      {
        goto LABEL_73;
      }
    }

    v88 = a3;
    goto LABEL_79;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC98;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_ERROR, "CHFastPathCharacterPersonalizerWithSuffixForInitAndForDigitsVariations: holder is empty", buf, 2u);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_183964EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35)
{
  sub_18368D56C(&a29, a30);
  sub_1838BEBD4(&a32);
  sub_1838BEBD4(&a35);
  _Unwind_Resume(a1);
}

void sub_183964FA4(void *a1, _DWORD *a2, void *a3)
{
  v252 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v16 = objc_msgSend_drawing(v5, v6, v7, v8, v9, v10);
  if (!v16 || (objc_msgSend_drawing(v5, v11, v12, v13, v14, v15), v17 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend_pointCount(v17, v18, v19, v20, v21, v22), v17, v16, !v23))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v86 = qword_1EA84DC98;
    if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v167 = "CHFastPathCharacterPersonalizerWithSuffixForInitAndForDigitsVariations: result drawing is nill";
LABEL_20:
    _os_log_impl(&dword_18366B000, v86, OS_LOG_TYPE_ERROR, v167, buf, 2u);
LABEL_21:

    goto LABEL_22;
  }

  v29 = objc_msgSend_segmentContents(v5, v24, v25, v26, v27, v28);

  if (!v29)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v86 = qword_1EA84DC98;
    if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v167 = "CHFastPathCharacterPersonalizerWithSuffixForInitAndForDigitsVariations: segmentContents is nill";
    goto LABEL_20;
  }

  v35 = a2[4];
  if (v35 == 2)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v168 = qword_1EA84DC98;
    if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v168, OS_LOG_TYPE_DEFAULT, "CHFastPathCharacterPersonalizerWithSuffixForInitAndForDigitsVariations: start process result from refined style sample.", buf, 2u);
    }

    for (i = 0; ; ++i)
    {
      v175 = objc_msgSend_segmentContents(v5, v169, v170, v171, v172, v173);
      v181 = i < objc_msgSend_count(v175, v176, v177, v178, v179, v180);

      if (!v181)
      {
        goto LABEL_41;
      }

      v187 = objc_msgSend_segmentContents(v5, v182, v183, v184, v185, v186);
      v192 = objc_msgSend_objectAtIndexedSubscript_(v187, v188, i, v189, v190, v191);
      v198 = sub_1837A4260(a2[8], v193, v194, v195, v196, v197);
      isEqualToString = objc_msgSend_isEqualToString_(v192, v199, v198, v200, v201, v202);

      if (isEqualToString)
      {
        break;
      }
    }

    v204 = objc_msgSend_drawing(v5, v169, v170, v171, v172, v173);
    v210 = objc_msgSend_segmentStrokeIndexes(v5, v205, v206, v207, v208, v209);
    v215 = objc_msgSend_objectAtIndexedSubscript_(v210, v211, i, v212, v213, v214);
    v86 = objc_msgSend_drawingWithStrokesFromIndexSet_(v204, v216, v215, v217, v218, v219);

    if (!v86)
    {
LABEL_41:
      if (qword_1EA84DC48 == -1)
      {
        v86 = qword_1EA84DC98;
        if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v86 = qword_1EA84DC98;
        if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }
      }

      v241 = sub_1837A4260(a2[8], v236, v237, v238, v239, v240);
      *buf = 138412290;
      *&buf[4] = v241;
      _os_log_impl(&dword_18366B000, v86, OS_LOG_TYPE_ERROR, "CHFastPathCharacterPersonalizerWithSuffixForInitAndForDigitsVariations: error add initial character %@ to holder", buf, 0xCu);

      goto LABEL_21;
    }

    objc_msgSend_bounds(v86, v220, v221, v222, v223, v224);
    v225 = CGRectGetMaxX(v255) + 1.0;
    sub_183963C4C(&v248, v86, a2[8], *(a1[2] + 36), v225, -1.0);
    if (qword_1EA84DC48 == -1)
    {
      v226 = qword_1EA84DC98;
      if (!os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
      {
LABEL_39:

        v233 = v248;
        *buf = v233;
        *&buf[8] = v249;
        v234 = a2[9];
        v251 = v234;
        v235 = a1[5];
        if (v235 >= a1[6])
        {
          goto LABEL_49;
        }

        v165 = 0;
        *v235 = v233;
        *(v235 + 8) = *&buf[8];
        *(v235 + 24) = v234;
        v166 = v235 + 32;
        goto LABEL_50;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v226 = qword_1EA84DC98;
      if (!os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }
    }

    v232 = sub_1837A4260(a2[8], v227, v228, v229, v230, v231);
    *buf = 138412290;
    *&buf[4] = v232;
    _os_log_impl(&dword_18366B000, v226, OS_LOG_TYPE_DEFAULT, "CHFastPathCharacterPersonalizerWithSuffixForInitAndForDigitsVariations: add initial character %@ to holder", buf, 0xCu);

    goto LABEL_39;
  }

  if (!v35)
  {
    v36 = objc_msgSend_segmentContents(v5, v30, v31, v32, v33, v34);
    if (objc_msgSend_count(v36, v37, v38, v39, v40, v41))
    {
      v47 = objc_msgSend_segmentContents(v5, v42, v43, v44, v45, v46);
      v52 = objc_msgSend_objectAtIndexedSubscript_(v47, v48, 0, v49, v50, v51);
      v58 = sub_1837A4260(a2[8], v53, v54, v55, v56, v57);
      v63 = objc_msgSend_isEqualToString_(v52, v59, v58, v60, v61, v62);

      if (v63)
      {
        v69 = objc_msgSend_drawing(v5, v64, v65, v66, v67, v68);
        v75 = objc_msgSend_segmentStrokeIndexes(v5, v70, v71, v72, v73, v74);
        v81 = objc_msgSend_firstObject(v75, v76, v77, v78, v79, v80);
        v86 = objc_msgSend_drawingWithStrokesFromIndexSet_(v69, v82, v81, v83, v84, v85);

        v92 = objc_msgSend_drawing(v5, v87, v88, v89, v90, v91);
        objc_msgSend_bounds(v92, v93, v94, v95, v96, v97);
        MaxX = CGRectGetMaxX(v253);

        v104 = objc_msgSend_segmentStrokeIndexes(v5, v99, v100, v101, v102, v103);
        v110 = objc_msgSend_count(v104, v105, v106, v107, v108, v109);

        if (v110 >= 2)
        {
          v116 = objc_msgSend_drawing(v5, v111, v112, v113, v114, v115);
          v122 = objc_msgSend_segmentStrokeIndexes(v5, v117, v118, v119, v120, v121);
          v127 = objc_msgSend_objectAtIndexedSubscript_(v122, v123, 1, v124, v125, v126);
          v132 = objc_msgSend_drawingWithStrokesFromIndexSet_(v116, v128, v127, v129, v130, v131);

          objc_msgSend_bounds(v132, v133, v134, v135, v136, v137);
          MaxX = CGRectGetMaxX(v254);
        }

        objc_msgSend_bounds(v86, v111, v112, v113, v114, v115);
        v139 = v138;
        objc_msgSend_bounds(v86, v140, v141, v142, v143, v144);
        v146 = v145;
        v152 = objc_msgSend_drawing(v5, v147, v148, v149, v150, v151);
        v153 = v139 + v146 + 0.001;
        v154 = MaxX;
        sub_183963C4C(&v248, v152, a2[8], *(a1[2] + 36), v153, v154);

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v155 = qword_1EA84DC98;
        if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
        {
          v161 = sub_1837A4260(a2[8], v156, v157, v158, v159, v160);
          *buf = 138412290;
          *&buf[4] = v161;
          _os_log_impl(&dword_18366B000, v155, OS_LOG_TYPE_DEFAULT, "CHFastPathCharacterPersonalizerWithSuffixForInitAndForDigitsVariations: add initial character %@ to holder", buf, 0xCu);
        }

        v162 = v248;
        *buf = v162;
        *&buf[8] = v249;
        v163 = a2[9];
        v251 = v163;
        v164 = a1[5];
        if (v164 >= a1[6])
        {
LABEL_49:
          v166 = sub_183965CE0((a1 + 4), buf);
          v165 = *buf;
        }

        else
        {
          v165 = 0;
          *v164 = v162;
          *(v164 + 8) = *&buf[8];
          *(v164 + 24) = v163;
          v166 = v164 + 32;
        }

LABEL_50:
        a1[5] = v166;

        goto LABEL_21;
      }
    }

    else
    {
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v86 = qword_1EA84DC98;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v247 = sub_1837A4260(a2[8], v242, v243, v244, v245, v246);
      *buf = 138412290;
      *&buf[4] = v247;
      _os_log_impl(&dword_18366B000, v86, OS_LOG_TYPE_ERROR, "CHFastPathCharacterPersonalizerWithSuffixForInitAndForDigitsVariations: error add initial character %@ to holder. Segment content not matched.", buf, 0xCu);
    }

    goto LABEL_21;
  }

LABEL_22:
}

uint64_t sub_18396599C(uint64_t a1)
{
  *a1 = &unk_1EF1BF158;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 24);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_183965A68(uint64_t a1)
{
  *a1 = &unk_1EF1BF158;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 24);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_183965B54(uint64_t a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4) + 1;
  if (v5 > 0x555555555555555)
  {
    sub_18368964C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v2) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((*(a1 + 16) - v2) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_183688F00();
  }

  v8 = *a2;
  v9 = 16 * (v4 >> 4);
  *a2 = 0;
  *(a2 + 1) = 0;
  *v9 = v8;
  *(v9 + 16) = *(a2 + 4);
  v10 = *(a2 + 3);
  *(a2 + 3) = 0;
  *(v9 + 24) = v10;
  *(v9 + 32) = a2[2];
  v11 = v9 + 48;
  v12 = v9 - v4;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v12;
    do
    {
      v15 = *v13;
      *v13 = 0;
      v13[1] = 0;
      *v14 = v15;
      *(v14 + 16) = *(v13 + 4);
      v16 = v13[3];
      v13[3] = 0;
      *(v14 + 24) = v16;
      *(v14 + 32) = *(v13 + 2);
      v13 += 6;
      v14 += 48;
    }

    while (v13 != v3);
    do
    {

      v17 = *v2;
      v2 += 6;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v11;
}

uint64_t sub_183965CE0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    sub_18368964C();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 4 > v5)
  {
    v5 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    sub_183688F00();
  }

  v9 = (v3 - *a1) >> 5;
  v10 = 32 * v4;
  v11 = *a2;
  *a2 = 0;
  *v10 = v11;
  *(v10 + 8) = *(a2 + 1);
  *(v10 + 24) = *(a2 + 6);
  v12 = 32 * v4 - 32 * v9;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v12;
    do
    {
      v15 = *v13;
      *v13 = 0;
      *v14 = v15;
      *(v14 + 8) = *(v13 + 1);
      *(v14 + 24) = *(v13 + 6);
      v13 += 4;
      v14 += 32;
    }

    while (v13 != v3);
    do
    {
      v16 = *v2;
      v2 += 4;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  *(a1 + 8) = 32 * v4 + 32;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 32 * v4 + 32;
}

void sub_1839662EC(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != a3)
  {
    if (qword_1EA84DC48 == -1)
    {
      v6 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v6 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        if (*(a1 + 32) == a3)
        {
          goto LABEL_10;
        }

        if (qword_1EA84DC48 == -1)
        {
          v8 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
LABEL_9:

            goto LABEL_10;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v8 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_9;
          }
        }

        v9 = *(a1 + 32);
        *buf = 134218240;
        v16 = a3;
        v17 = 2048;
        v18 = v9;
        _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_FAULT, "Multi array size (%ld) does not match IOSurface bytes per row (%zu)", buf, 0x16u);
        goto LABEL_9;
      }
    }

    v7 = *(a1 + 32);
    *buf = 134218240;
    v16 = a3;
    v17 = 2048;
    v18 = v7;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_ERROR, "Multi array size (%ld) does not match IOSurface bytes per row (%zu)", buf, 0x16u);
    goto LABEL_5;
  }

LABEL_10:
  BaseAddress = IOSurfaceGetBaseAddress(*(a1 + 40));
  v11 = *(a1 + 48);
  v14 = 0;
  sub_18377EC80(a2, BaseAddress, v11, &v14);
  v12 = v14;
  if (v12)
  {
    if (qword_1EA84DC48 == -1)
    {
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    *buf = 138412290;
    v16 = v12;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "Could not convert float32 buffer to float16 buffer: %@", buf, 0xCu);
    goto LABEL_14;
  }

LABEL_15:
}

void *sub_183966574(uint64_t a1, const void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != a3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v6 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v12 = 134218240;
      v13 = a3;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_ERROR, "Multi array size (%ld) does not match IOSurface bytes per row (%zu)", &v12, 0x16u);
    }

    if (*(a1 + 32) != a3)
    {
      if (qword_1EA84DC48 == -1)
      {
        v8 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v8 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      v9 = *(a1 + 32);
      v12 = 134218240;
      v13 = a3;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_FAULT, "Multi array size (%ld) does not match IOSurface bytes per row (%zu)", &v12, 0x16u);
      goto LABEL_10;
    }
  }

LABEL_11:
  BaseAddress = IOSurfaceGetBaseAddress(*(a1 + 40));
  return memcpy(BaseAddress, a2, *(a1 + 32));
}

void sub_1839671F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_183967290(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1839672A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v15 = objc_msgSend_bytes(v4, v5, v6, v7, v8, v9);
  if (*(a1 + 56) == 65552)
  {
    v16 = objc_msgSend_length(v3, v10, v11, v12, v13, v14);
    v17 = malloc_type_calloc(2 * v16, 1uLL, 0xE377026DuLL);
    v23 = objc_msgSend_length(v3, v18, v19, v20, v21, v22);
    sub_18377EBFC(v15, v17, v23 >> 1, 0);
  }

  else
  {
    v29 = objc_msgSend_length(v3, v10, v11, v12, v13, v14);
    v17 = malloc_type_calloc(v29, 1uLL, 0x648FF00CuLL);
    v35 = objc_msgSend_length(v3, v30, v31, v32, v33, v34);
    memcpy(v15, v17, v35);
  }

  v36 = MEMORY[0x1E695DF70];
  v37 = objc_msgSend_rank(*(a1 + 32), v24, v25, v26, v27, v28);
  v47 = objc_msgSend_arrayWithCapacity_(v36, v38, v37, v39, v40, v41);
  for (i = 0; i < objc_msgSend_rank(*(a1 + 32), v42, v43, v44, v45, v46); ++i)
  {
    v54 = MEMORY[0x1E696AD98];
    v55 = *(a1 + 32);
    v61 = objc_msgSend_sizes(v55, v56, v57, v58, v59, v60);
    v66 = objc_msgSend_numberWithUnsignedLong_(v54, v62, *(v61 + 8 * i), v63, v64, v65);
    objc_msgSend_addObject_(v47, v67, v66, v68, v69, v70);
  }

  v122 = v3;
  v71 = v17;
  v72 = MEMORY[0x1E695DF70];
  v73 = objc_msgSend_rank(*(a1 + 40), v49, v50, v51, v52, v53);
  v83 = objc_msgSend_arrayWithCapacity_(v72, v74, v73, v75, v76, v77);
  for (j = 0; j < objc_msgSend_rank(*(a1 + 40), v78, v79, v80, v81, v82); ++j)
  {
    v85 = *(a1 + 56);
    v86 = MEMORY[0x1E696AD98];
    v87 = *(a1 + 40);
    v97 = *(objc_msgSend_byteOffsets(v87, v88, v89, v90, v91, v92) + 8 * j);
    if (v85 == 65552)
    {
      v98 = 1;
    }

    else
    {
      v98 = 2;
    }

    v99 = objc_msgSend_numberWithUnsignedLong_(v86, v93, v97 >> v98, v94, v95, v96);
    objc_msgSend_addObject_(v83, v100, v99, v101, v102, v103);
  }

  v104 = objc_alloc(MEMORY[0x1E695FED0]);
  v110 = objc_msgSend_copy(v47, v105, v106, v107, v108, v109);
  v116 = objc_msgSend_copy(v83, v111, v112, v113, v114, v115);
  v118 = objc_msgSend_initWithDataPointer_shape_dataType_strides_deallocator_error_(v104, v117, v71, v110, 65568, v116, &unk_1EF1BF680, 0);
  v119 = *(*(a1 + 48) + 8);
  v120 = *(v119 + 40);
  *(v119 + 40) = v118;

  return 1;
}

void sub_183967A68(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v5 == v4 || !*v5)
  {
    if (a1 != a2)
    {
      sub_1836E0FD4(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
      sub_1836E0FD4((a1 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
      v8 = *(a2 + 48);
      v9 = *(a2 + 56);

      sub_18372F694((a1 + 48), v8, v9, (v9 - v8) >> 2);
    }
  }

  else if (!memcmp(v5, *a2, v4 - v5 - 8))
  {
    *(v4 - 1) += *(*(a2 + 8) - 8);
    sub_183967B6C(a1, a1);
    v7 = *(a2 + 48);
    for (i = *(a2 + 56); v7 != i; ++v7)
    {
      sub_183723C08(a1 + 48, v7);
    }
  }
}

void sub_183967B6C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1836E0FD4(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  if (v5 == v4)
  {
    if (v5)
    {
      *(a1 + 32) = v4;
      operator delete(v4);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
    }

    operator new();
  }

  v6 = *(a1 + 32);
  if (v6 == v4)
  {
    *v6 = 1;
    *(a1 + 32) = &v6[v6 - v4 + 8];
    v7 = *(a2 + 8) - *a2;
    if (v5 - v4 >= v7)
    {
      goto LABEL_13;
    }

LABEL_11:
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  *v4 = 1;
  *(a1 + 32) = v4 + 8;
  v7 = *(a2 + 8) - *a2;
  if (*(a1 + 40) - *(a1 + 24) < v7)
  {
    goto LABEL_11;
  }

LABEL_13:
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = v8 - 8;
  if (v8 - 8 != *a1)
  {
    v12 = *v9;
    v11 = v9 + 8;
    v28 = v12;
    sub_1836DB51C(a1 + 24, &v28);
    while (v11 != v10)
    {
      v13 = *v11;
      v11 += 8;
      v28 *= v13;
      sub_1836DB51C(a1 + 24, &v28);
    }

    v9 = *a1;
    v8 = *(a1 + 8);
  }

  if (v9 == v8)
  {
    if (*(a1 + 64) == *(a1 + 48))
    {
      goto LABEL_29;
    }

    return;
  }

  v14 = v8 - v9 - 8;
  if (v14 < 0x38)
  {
    v15 = 1;
    v16 = v9;
    do
    {
LABEL_25:
      v27 = *v16;
      v16 += 8;
      v15 *= v27;
    }

    while (v16 != v8);
    goto LABEL_26;
  }

  v17 = (v14 >> 3) + 1;
  v16 = &v9[8 * (v17 & 0x3FFFFFFFFFFFFFF8)];
  v18 = (v9 + 32);
  v19.i64[0] = 0x100000001;
  v19.i64[1] = 0x100000001;
  v20 = v17 & 0x3FFFFFFFFFFFFFF8;
  v21.i64[0] = 0x100000001;
  v21.i64[1] = 0x100000001;
  do
  {
    v23 = v18[-2];
    v22 = v18[-1];
    v25 = *v18;
    v24 = v18[1];
    v18 += 4;
    v19 = vmulq_s32(v19, vuzp1q_s32(v23, v22));
    v21 = vmulq_s32(v21, vuzp1q_s32(v25, v24));
    v20 -= 8;
  }

  while (v20);
  v26 = vmulq_s32(v21, v19);
  *v26.i8 = vmul_s32(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
  v15 = v26.i32[0] * v26.i32[1];
  if (v17 != (v17 & 0x3FFFFFFFFFFFFFF8))
  {
    goto LABEL_25;
  }

LABEL_26:
  if (v15 > ((*(a1 + 64) - *(a1 + 48)) >> 2))
  {
    if (v15 < 0)
    {
      sub_18369761C();
    }

LABEL_29:
    operator new();
  }
}

void sub_183967E78(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v5 = v3 - v4 - 24;
    if (v5 > 0x5F)
    {
      v8 = v5 / 0x18 + 1;
      v9 = v8 & 3;
      if ((v8 & 3) == 0)
      {
        v9 = 4;
      }

      v10 = v8 - v9;
      v7 = &v4[3 * v10];
      v11 = 0uLL;
      v12 = *a1;
      v13 = 0uLL;
      do
      {
        v14 = v12;
        v12 += 12;
        v20 = vld3q_f64(v14);
        v14 += 6;
        v11 = vsraq_n_s64(v11, vsubq_s64(v20.val[1], v20.val[0]), 5uLL);
        v21 = vld3q_f64(v14);
        v13 = vsraq_n_s64(v13, vsubq_s64(v21.val[1], v21.val[0]), 5uLL);
        v10 -= 4;
      }

      while (v10);
      v6 = vaddvq_s64(vaddq_s64(v13, v11));
    }

    else
    {
      v6 = 0;
      v7 = *a1;
    }

    do
    {
      v15 = *v7;
      v16 = *(v7 + 1);
      v7 += 3;
      v6 += (v16 - v15) >> 5;
    }

    while (v7 != v3);
    if (v6)
    {
      if (!(v6 >> 62))
      {
        operator new();
      }

      sub_18369761C();
    }
  }

  if (v4 != v3)
  {
    do
    {
      if (*v4 != *(v4 + 1))
      {
        if (*(*v4 + 24) == 1)
        {
          operator new();
        }

        operator new();
      }

      v4 += 3;
    }

    while (v4 != *(a1 + 8));
    v17 = 0;
    v18 = 0;
  }

  sub_18396AE98(a2, &v17);
}

void sub_1839681FC(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

void sub_183968228(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (*a2 != v2)
  {
    v4 = v2 - v3 - 24;
    if (v4 >= 0x60)
    {
      v6 = v4 / 0x18 + 1;
      v7 = v6 & 3;
      if ((v6 & 3) == 0)
      {
        v7 = 4;
      }

      v8 = v6 - v7;
      v9 = &v3[3 * v8];
      v10 = 0uLL;
      v11 = 0uLL;
      do
      {
        v12 = v3;
        v3 += 12;
        v15 = vld3q_f64(v12);
        v12 += 6;
        v10 = vsraq_n_s64(v10, vsubq_s64(v15.val[1], v15.val[0]), 5uLL);
        v16 = vld3q_f64(v12);
        v11 = vsraq_n_s64(v11, vsubq_s64(v16.val[1], v16.val[0]), 5uLL);
        v8 -= 4;
      }

      while (v8);
      v5 = vaddvq_s64(vaddq_s64(v11, v10));
      v3 = v9;
    }

    else
    {
      v5 = 0;
    }

    do
    {
      v13 = *v3;
      v14 = *(v3 + 1);
      v3 += 3;
      v5 += (v14 - *&v13) >> 5;
    }

    while (v3 != v2);
  }

  (*(*a1 + 24))(a1);
  operator new();
}

void sub_183968948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18396898C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v5 = v3 - v4 - 24;
    if (v5 > 0x5F)
    {
      v8 = v5 / 0x18 + 1;
      v9 = v8 & 3;
      if ((v8 & 3) == 0)
      {
        v9 = 4;
      }

      v10 = v8 - v9;
      v7 = &v4[3 * v10];
      v11 = 0uLL;
      v12 = *a1;
      v13 = 0uLL;
      do
      {
        v14 = v12;
        v12 += 12;
        v20 = vld3q_f64(v14);
        v14 += 6;
        v11 = vsraq_n_s64(v11, vsubq_s64(v20.val[1], v20.val[0]), 5uLL);
        v21 = vld3q_f64(v14);
        v13 = vsraq_n_s64(v13, vsubq_s64(v21.val[1], v21.val[0]), 5uLL);
        v10 -= 4;
      }

      while (v10);
      v6 = vaddvq_s64(vaddq_s64(v13, v11));
    }

    else
    {
      v6 = 0;
      v7 = *a1;
    }

    do
    {
      v15 = *v7;
      v16 = *(v7 + 1);
      v7 += 3;
      v6 += (v16 - v15) >> 5;
    }

    while (v7 != v3);
    if (v6)
    {
      if (!(v6 >> 62))
      {
        operator new();
      }

      sub_18369761C();
    }

    if (v4 != v3)
    {
      do
      {
        if (*(v4 + 1) != *v4)
        {
          operator new();
        }

        v4 += 3;
      }

      while (v4 != *(a1 + 8));
      v17 = 0;
      v18 = 0;
    }
  }

  sub_18396AE98(a2, &v17);
}

void sub_183968C84(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

void sub_183968CA8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v5 = v3 - v4 - 24;
    if (v5 > 0x5F)
    {
      v8 = v5 / 0x18 + 1;
      v9 = v8 & 3;
      if ((v8 & 3) == 0)
      {
        v9 = 4;
      }

      v10 = v8 - v9;
      v7 = &v4[3 * v10];
      v11 = 0uLL;
      v12 = *a1;
      v13 = 0uLL;
      do
      {
        v14 = v12;
        v12 += 12;
        v20 = vld3q_f64(v14);
        v14 += 6;
        v11 = vsraq_n_s64(v11, vsubq_s64(v20.val[1], v20.val[0]), 5uLL);
        v21 = vld3q_f64(v14);
        v13 = vsraq_n_s64(v13, vsubq_s64(v21.val[1], v21.val[0]), 5uLL);
        v10 -= 4;
      }

      while (v10);
      v6 = vaddvq_s64(vaddq_s64(v13, v11));
    }

    else
    {
      v6 = 0;
      v7 = *a1;
    }

    do
    {
      v15 = *v7;
      v16 = *(v7 + 1);
      v7 += 3;
      v6 += (v16 - v15) >> 5;
    }

    while (v7 != v3);
    if (v6)
    {
      if (!(v6 >> 62))
      {
        operator new();
      }

      sub_18369761C();
    }
  }

  if (v4 != v3)
  {
    do
    {
      if (*(v4 + 1) != *v4)
      {
        operator new();
      }

      v4 += 3;
    }

    while (v4 != v3);
    v17 = 0;
    v18 = 0;
  }

  sub_18396AE98(a2, &v17);
}

void sub_183968FCC(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

void sub_183968FF0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v5 = v3 - v4 - 24;
    if (v5 > 0x5F)
    {
      v8 = v5 / 0x18 + 1;
      v9 = v8 & 3;
      if ((v8 & 3) == 0)
      {
        v9 = 4;
      }

      v10 = v8 - v9;
      v7 = &v4[3 * v10];
      v11 = 0uLL;
      v12 = *a1;
      v13 = 0uLL;
      do
      {
        v14 = v12;
        v12 += 12;
        v21 = vld3q_f64(v14);
        v14 += 6;
        v11 = vsraq_n_s64(v11, vsubq_s64(v21.val[1], v21.val[0]), 5uLL);
        v22 = vld3q_f64(v14);
        v13 = vsraq_n_s64(v13, vsubq_s64(v22.val[1], v22.val[0]), 5uLL);
        v10 -= 4;
      }

      while (v10);
      v6 = vaddvq_s64(vaddq_s64(v13, v11));
    }

    else
    {
      v6 = 0;
      v7 = *a1;
    }

    do
    {
      v15 = *v7;
      v16 = *(v7 + 1);
      v7 += 3;
      v6 += (v16 - v15) >> 5;
    }

    while (v7 != v3);
    if (v6)
    {
      if (!(v6 >> 62))
      {
        operator new();
      }

      sub_18369761C();
    }
  }

  if (v4 != v3)
  {
    v17 = 0;
    do
    {
      if (*(v4 + 1) != *v4)
      {
        operator new();
      }

      ++v17;
      v4 += 3;
    }

    while (v4 != *(a1 + 8));
    v18 = 0;
    v19 = 0;
  }

  sub_18396AE98(a2, &v18);
}

void sub_1839692F8(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

void sub_18396931C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (*a2 != v2)
  {
    v4 = v2 - v3 - 24;
    if (v4 >= 0x60)
    {
      v6 = v4 / 0x18 + 1;
      v7 = v6 & 3;
      if ((v6 & 3) == 0)
      {
        v7 = 4;
      }

      v8 = v6 - v7;
      v9 = &v3[3 * v8];
      v10 = 0uLL;
      v11 = 0uLL;
      do
      {
        v12 = v3;
        v3 += 12;
        v15 = vld3q_f64(v12);
        v12 += 6;
        v10 = vsraq_n_s64(v10, vsubq_s64(v15.val[1], v15.val[0]), 5uLL);
        v16 = vld3q_f64(v12);
        v11 = vsraq_n_s64(v11, vsubq_s64(v16.val[1], v16.val[0]), 5uLL);
        v8 -= 4;
      }

      while (v8);
      v5 = vaddvq_s64(vaddq_s64(v11, v10));
      v3 = v9;
    }

    else
    {
      v5 = 0;
    }

    do
    {
      v13 = *v3;
      v14 = *(v3 + 1);
      v3 += 3;
      v5 += (v14 - *&v13) >> 5;
    }

    while (v3 != v2);
  }

  (*(*a1 + 24))(a1);
  operator new();
}

void sub_183969860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_183969890(uint64_t a1, float64x2_t ***a2)
{
  (*(*a1 + 40))(a1);
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v6 = -1.79769313e308;
    v7 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v8 = -1.79769313e308;
    v9 = v5;
    do
    {
      v10 = *v3;
      v11 = v3[1];
      if (*v3 != v11)
      {
        v12 = v5;
        v13 = v7;
        do
        {
          v14 = *v10;
          v10 += 2;
          v12 = vbslq_s8(vcgtq_f64(v12, v14), v14, v12);
          v13 = vbslq_s8(vcgtq_f64(v14, v13), v14, v13);
        }

        while (v10 != v11);
        v15 = vcgtq_f64(v9, v12);
        if (v8 < v13.f64[0])
        {
          v8 = v13.f64[0];
        }

        v9 = vbslq_s8(v15, v12, v9);
        if (v6 < v13.f64[1])
        {
          v6 = v13.f64[1];
        }
      }

      v3 += 3;
    }

    while (v3 != v4);
  }

  operator new();
}

void sub_18396A240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_18396A2C0(uint64_t a1, float64x2_t ***a2)
{
  v2 = a2[1];
  if (*a2 != v2)
  {
    v3 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v4 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v5 = -1.79769313e308;
    v6 = -1.79769313e308;
    v7 = *a2;
    v8 = v3;
    while (1)
    {
      v9 = *v7;
      v10 = v7[1];
      if (*v7 != v10)
      {
        v11 = v3;
        v12 = v4;
        do
        {
          v13 = *v9;
          v9 += 2;
          v11 = vbslq_s8(vcgtq_f64(v11, v13), v13, v11);
          v12 = vbslq_s8(vcgtq_f64(v13, v12), v13, v12);
        }

        while (v9 != v10);
        v14 = vcgtq_f64(v8, v11);
        if (v6 < v12.f64[0])
        {
          v6 = v12.f64[0];
        }

        v8 = vbslq_s8(v14, v11, v8);
        if (v5 < v12.f64[1])
        {
          v5 = v12.f64[1];
        }
      }

      v7 += 3;
      if (v7 == v2)
      {
        if (!((0xAAAAAAAAAAAAAAABLL * (v2 - *a2)) >> 62))
        {
          operator new();
        }

        sub_18369761C();
      }
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v15 = qword_1EA84DC58;
  if (os_log_type_enabled(qword_1EA84DC58, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_ERROR, "Encounted unexpected empty inks", buf, 2u);
  }

  return 1;
}

void sub_18396A938(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_18396B1A4();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  *(8 * v8) = a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_18396AB20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1836997F4(va);
  sub_1836997F4(v2);
  _Unwind_Resume(a1);
}

void sub_18396AE98(uint64_t a1, void *a2)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  operator new();
}

void sub_18396AF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  operator delete(v12);
  v14 = *(v11 + 48);
  if (v14)
  {
    *(v11 + 56) = v14;
    operator delete(v14);
    v15 = *(v11 + 24);
    if (!v15)
    {
LABEL_3:
      v16 = *v11;
      if (!*v11)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v15 = *(v11 + 24);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(v11 + 32) = v15;
  operator delete(v15);
  v16 = *v11;
  if (!*v11)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v11 + 8) = v16;
  operator delete(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_18396AFFC(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0u;
  v3 = a1 + 48;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_183967B6C(a1, a2);
  v6 = *a1;
  v5 = *(a1 + 8);
  if (*a1 != v5)
  {
    v7 = v5 - v6 - 8;
    if (v7 >= 0x38)
    {
      v16 = (v7 >> 3) + 1;
      v9 = (v6 + 8 * (v16 & 0x3FFFFFFFFFFFFFF8));
      v17 = v6 + 2;
      v18.i64[0] = 0x100000001;
      v18.i64[1] = 0x100000001;
      v19 = v16 & 0x3FFFFFFFFFFFFFF8;
      v20.i64[0] = 0x100000001;
      v20.i64[1] = 0x100000001;
      do
      {
        v22 = v17[-2];
        v21 = v17[-1];
        v24 = *v17;
        v23 = v17[1];
        v17 += 4;
        v18 = vmulq_s32(v18, vuzp1q_s32(v22, v21));
        v20 = vmulq_s32(v20, vuzp1q_s32(v24, v23));
        v19 -= 8;
      }

      while (v19);
      v25 = vmulq_s32(v20, v18);
      v4 = vmul_s32(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
      v8 = v4.i32[0] * v4.i32[1];
      if (v16 == (v16 & 0x3FFFFFFFFFFFFFF8))
      {
LABEL_11:
        v10 = v8;
        v28 = 0;
        v11 = *(a1 + 48);
        v27 = (*(a1 + 56) - v11) >> 2;
        v13 = v8 >= v27;
        v14 = v8 - v27;
        if (v8 > v27)
        {
          goto LABEL_12;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v8 = 1;
      v9 = *a1;
    }

    do
    {
      v26 = v9->i32[0];
      v9 = (v9 + 8);
      v8 *= v26;
    }

    while (v9 != v5);
    goto LABEL_11;
  }

  v10 = 1;
  v28 = 0;
  v11 = *(a1 + 48);
  v12 = (*(a1 + 56) - v11) >> 2;
  v13 = v12 <= 1;
  v14 = 1 - v12;
  if (!v12)
  {
LABEL_12:
    sub_1836ECCD0(v3, v14, &v28, v4);
    return a1;
  }

LABEL_5:
  if (!v13)
  {
    *(a1 + 56) = v11 + 4 * v10;
    return a1;
  }

  return a1;
}