void sub_18378AF1C(uint64_t a1)
{
  v2 = LXEntryCopyString();
  theString = v2;
  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1865E5C80](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v4 = theString;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v11 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v6, v7, v8, v9, v10);
  v16 = objc_msgSend_rangeOfCharacterFromSet_(v5, v12, v11, v13, v14, v15);

  if ((*(a1 + 40) & 1) == 0 && v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_183789CF0(*(a1 + 32), theString);
    goto LABEL_22;
  }

  v22 = objc_msgSend_length(v5, v17, v18, v19, v20, v21);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_18378B304;
  v31[3] = &unk_1E6DDBF00;
  v31[4] = *(a1 + 32);
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v5, v23, 0, v22, 3, v31);
  v24 = *(a1 + 32);
  if (!v24)
  {
LABEL_22:

    v28 = theString;
    if (!theString)
    {
      return;
    }

    goto LABEL_23;
  }

  v25 = theString;
  if (!*(v24 + 88))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v26 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v26, OS_LOG_TYPE_ERROR, "Transient phrase lexicon must be non-nil", buf, 2u);
    }

    if (!*(v24 + 88))
    {
      if (qword_1EA84DC48 == -1)
      {
        v27 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v27 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_18;
        }
      }

      *buf = 0;
      _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_FAULT, "Transient phrase lexicon must be non-nil", buf, 2u);
      goto LABEL_18;
    }
  }

LABEL_19:
  if (CFStringGetLength(v25) < 1)
  {
    goto LABEL_22;
  }

  if (LXLexiconAdd())
  {
    LXLexiconIncrementUsageCount();
    goto LABEL_22;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v29 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_ERROR, "A token ID should be assigned when adding to the phrase lexicon. Skipping phrase lexicon entry.", buf, 2u);
  }

  v28 = theString;
  if (theString)
  {
LABEL_23:
    CFRelease(v28);
  }
}

void sub_18378B250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14)
{
  __cxa_free_exception(v14);
  sub_183695860(&a14);
  _Unwind_Resume(a1);
}

void sub_18378B26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_18378B28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_183695860(va);
  _Unwind_Resume(a1);
}

void sub_18378B2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_18378B2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_18378B2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_18378B2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_18378B30C(uint64_t a1)
{
  if (!*(a1 + 80))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v2 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v2, OS_LOG_TYPE_ERROR, "Transient lexicon must be non-nil", buf, 2u);
    }

    if (!*(a1 + 80))
    {
      if (qword_1EA84DC48 == -1)
      {
        v3 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_12;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v3 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
        {
LABEL_12:

          if (LXLexiconAdd())
          {
            goto LABEL_8;
          }

          goto LABEL_13;
        }
      }

      *v6 = 0;
      _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_FAULT, "Transient lexicon must be non-nil", v6, 2u);
      goto LABEL_12;
    }
  }

  if (LXLexiconAdd())
  {
LABEL_8:
    LXLexiconIncrementUsageCount();
    LXLexiconSetUserBitfield();
    return;
  }

LABEL_13:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "A token ID should be assigned when adding to the lexicon. Skipping lexicon entry.", v5, 2u);
  }
}

void sub_18378B518()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v6 = objc_msgSend_ch_katakanaCharacterSet(MEMORY[0x1E696AB08], v1, v2, v3, v4, v5);
  objc_msgSend_formUnionWithCharacterSet_(v0, v7, v6, v8, v9, v10);

  v16 = objc_msgSend_ch_hiraganaCharacterSet(MEMORY[0x1E696AB08], v11, v12, v13, v14, v15);
  objc_msgSend_formUnionWithCharacterSet_(v0, v17, v16, v18, v19, v20);

  v26 = objc_msgSend_ch_kanjiCharacterSet(MEMORY[0x1E696AB08], v21, v22, v23, v24, v25);
  objc_msgSend_formUnionWithCharacterSet_(v0, v27, v26, v28, v29, v30);

  v31 = qword_1EA84DAF8;
  qword_1EA84DAF8 = v0;
}

void sub_18378B5CC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_18378B5FC(uint64_t a1, uint64_t a2, void *a3)
{
  v84 = a3;
  v9 = objc_msgSend_firstName(v84, v4, v5, v6, v7, v8);
  v20 = objc_msgSend_lastName(v84, v10, v11, v12, v13, v14);
  if (!(v9 | v20))
  {
    goto LABEL_19;
  }

  v21 = objc_msgSend_phoneticFirstName(v84, v15, v16, v17, v18, v19);
  v27 = objc_msgSend_lowercaseString(v21, v22, v23, v24, v25, v26);

  v33 = objc_msgSend_phoneticLastName(v84, v28, v29, v30, v31, v32);
  v39 = objc_msgSend_lowercaseString(v33, v34, v35, v36, v37, v38);

  if (v9 && v20)
  {
    v45 = objc_msgSend_rangeOfCharacterFromSet_(v9, v40, qword_1EA84DAF8, v42, v43, v44);
    v50 = objc_msgSend_rangeOfCharacterFromSet_(v20, v46, qword_1EA84DAF8, v47, v48, v49);
    if (v45 != 0x7FFFFFFFFFFFFFFFLL && v50 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v51 = objc_msgSend_stringByAppendingString_(v20, v40, v9, v42, v43, v44);
      if (objc_msgSend_length(v27, v52, v53, v54, v55, v56) && objc_msgSend_length(v39, v57, v58, v59, v60, v61))
      {
        v62 = objc_msgSend_stringByAppendingString_(v39, v57, v27, v59, v60, v61);
      }

      else
      {
        v62 = objc_msgSend_null(MEMORY[0x1E695DFB0], v57, v58, v59, v60, v61);
      }

      v67 = v62;
      objc_msgSend_addObject_(*(*(a1 + 32) + 72), v63, v51, v64, v65, v66);
      objc_msgSend_addObject_(*(*(a1 + 32) + 72), v68, v67, v69, v70, v71);
    }

    goto LABEL_13;
  }

  if (v20)
  {
LABEL_13:
    if (objc_msgSend_length(v39, v40, v41, v42, v43, v44))
    {
      objc_msgSend_addObject_(*(*(a1 + 32) + 72), v40, v20, v42, v43, v44);
      objc_msgSend_addObject_(*(*(a1 + 32) + 72), v72, v39, v73, v74, v75);
    }
  }

  if (v9 && objc_msgSend_length(v27, v40, v41, v42, v43, v44))
  {
    objc_msgSend_addObject_(*(*(a1 + 32) + 72), v76, v9, v77, v78, v79);
    objc_msgSend_addObject_(*(*(a1 + 32) + 72), v80, v27, v81, v82, v83);
  }

LABEL_19:
}

void sub_18378B8BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_msgSend_score(v4, v5, v6, v7, v8, v9);
  v11 = v10;
  v12 = *(a1 + 32);
  v18 = objc_msgSend_firstName(v4, v13, v14, v15, v16, v17);
  sub_18378BBB8(v12, v18, v11);

  v19 = *(a1 + 32);
  v25 = objc_msgSend_middleName(v4, v20, v21, v22, v23, v24);
  sub_18378BBB8(v19, v25, v11);

  v26 = *(a1 + 32);
  v32 = objc_msgSend_lastName(v4, v27, v28, v29, v30, v31);
  sub_18378BBB8(v26, v32, v11);

  v33 = *(a1 + 32);
  v39 = objc_msgSend_nickname(v4, v34, v35, v36, v37, v38);
  sub_18378BBB8(v33, v39, v11);

  v40 = *(a1 + 32);
  v46 = objc_msgSend_organizationName(v4, v41, v42, v43, v44, v45);
  v47 = v46;
  if (v40 && v46 && CFStringGetLength(v46) >= 1)
  {
    sub_183789CF0(v40, v47);
    log10(v11);
    LMVocabularyAddLemma();
  }

  v48 = *(a1 + 32);
  v54 = objc_msgSend_jobTitle(v4, v49, v50, v51, v52, v53);
  v55 = v54;
  if (v48 && v54 && CFStringGetLength(v54) >= 1)
  {
    sub_183789CF0(v48, v55);
    log10(v11);
    LMVocabularyAddLemma();
  }

  v61 = objc_msgSend_relations(v4, v56, v57, v58, v59, v60);
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = sub_18378BCA0;
  v77[3] = &unk_1E6DDDEF0;
  v77[4] = *(a1 + 32);
  *&v77[5] = v11;
  objc_msgSend_enumerateObjectsUsingBlock_(v61, v62, v77, v63, v64, v65);

  v71 = objc_msgSend_cities(v4, v66, v67, v68, v69, v70);
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = sub_18378BD4C;
  v76[3] = &unk_1E6DDDEF0;
  v76[4] = *(a1 + 32);
  *&v76[5] = v11;
  objc_msgSend_enumerateObjectsUsingBlock_(v71, v72, v76, v73, v74, v75);
}

CFIndex sub_18378BBB8(CFIndex result, CFStringRef theString, long double a3)
{
  if (result)
  {
    if (theString)
    {
      v5 = result;
      result = CFStringGetLength(theString);
      if (result >= 1)
      {
        sub_183789CF0(v5, theString);
        log10(a3);
        result = LMVocabularyAddLemma();
        if (result)
        {
          return LMVocabularyEnumerateInflectionsOfLemma();
        }
      }
    }
  }

  return result;
}

void sub_18378BCA0(uint64_t a1, void *a2)
{
  theString = a2;
  if (theString)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 40);
      if (CFStringGetLength(theString) >= 1)
      {
        sub_183789CF0(v3, theString);
        log10(v4);
        LMVocabularyAddLemma();
      }
    }
  }
}

void sub_18378BD4C(uint64_t a1, void *a2)
{
  theString = a2;
  if (theString)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 40);
      if (CFStringGetLength(theString) >= 1)
      {
        sub_183789CF0(v3, theString);
        log10(v4);
        LMVocabularyAddLemma();
      }
    }
  }
}

Class sub_18378BEDC(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EA84CF08)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_18378C030;
    v4[4] = &unk_1E6DDC0E0;
    v4[5] = v4;
    v5 = xmmword_1E6DDDF38;
    v6 = 0;
    qword_1EA84CF08 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1EA84CF08)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_KSTextReplacementClientStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1EA84CF00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_18378C030()
{
  result = _sl_dlopen();
  qword_1EA84CF08 = result;
  return result;
}

void *sub_18378C0A4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84CF08)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18378C030;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDDF38;
    v8 = 0;
    qword_1EA84CF08 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84CF08;
    if (qword_1EA84CF08)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84CF08;
LABEL_5:
  result = dlsym(v2, "KSTextReplacementDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA84CF10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_18378C1EC(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EA84CF20)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_18378C340;
    v4[4] = &unk_1E6DDC0E0;
    v4[5] = v4;
    v5 = xmmword_1E6DDDF50;
    v6 = 0;
    qword_1EA84CF20 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1EA84CF20)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_ICInputContextManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1EA84CF18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_18378C340()
{
  result = _sl_dlopen();
  qword_1EA84CF20 = result;
  return result;
}

const void **sub_18378C3B4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_18378C3E8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_18378D1D0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2;
  v8 = objc_alloc_init(CHDrawing);
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x2020000000;
  v103 = 0;
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x4812000000;
  v99[3] = sub_18378D6BC;
  v99[4] = sub_18378D6F8;
  v99[5] = &unk_183A5AC72;
  v101[0] = 0;
  v101[1] = 0;
  v100 = v101;
  v9 = MEMORY[0x1E695DF70];
  v15 = objc_msgSend_countCodepoints(v7, v10, v11, v12, v13, v14);
  v20 = objc_msgSend_arrayWithCapacity_(v9, v16, v15, v17, v18, v19);
  v21 = MEMORY[0x1E695DF70];
  v27 = objc_msgSend_countCodepoints(v7, v22, v23, v24, v25, v26);
  v32 = objc_msgSend_arrayWithCapacity_(v21, v28, v27, v29, v30, v31);
  v97[0] = 0;
  v97[1] = v97;
  v97[2] = 0x2020000000;
  v98 = 0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x4812000000;
  v83 = sub_18378D704;
  v84 = sub_18378D728;
  v85 = &unk_183A5AC72;
  v88 = 0;
  __p = 0;
  v87 = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x9F812000000;
  v78[3] = sub_18378D740;
  v78[4] = nullsub_18;
  v78[5] = &unk_183A5AC72;
  sub_18378D754(v79, *(a1 + 8));
  v38 = objc_msgSend_length(v7, v33, v34, v35, v36, v37);
  v62 = MEMORY[0x1E69E9820];
  v63 = 3221225472;
  v64 = sub_18378D8D8;
  v65 = &unk_1E6DDDF70;
  v76 = a1;
  v39 = v8;
  v66 = v39;
  v69 = &v93;
  v77 = a3;
  v70 = v97;
  v40 = v20;
  v67 = v40;
  v71 = v99;
  v72 = v78;
  v73 = v102;
  v74 = &v89;
  v41 = v32;
  v68 = v41;
  v75 = &v80;
  objc_msgSend_enumerateCodepointsInRange_usingBlock_(v7, v42, 0, v38, &v62, v43);
  objc_msgSend_bounds(v39, v44, v45, v46, v47, v48, v62, v63, v64, v65);
  MinX = CGRectGetMinX(v104);
  objc_msgSend_bounds(v39, v50, v51, v52, v53, v54);
  MaxX = CGRectGetMaxX(v105);
  *(a4 + 8) = MinX;
  *(a4 + 16) = 0x4039000000000000;
  *(a4 + 24) = MaxX;
  *(a4 + 32) = 0x4039000000000000;
  *(a4 + 40) = MinX;
  *(a4 + 48) = 0x4034000000000000;
  *(a4 + 56) = MaxX;
  *(a4 + 64) = 0x4034000000000000;
  *(a4 + 72) = MinX;
  *(a4 + 80) = 0x4024000000000000;
  *(a4 + 88) = MaxX;
  *(a4 + 96) = 0x4024000000000000;
  *(a4 + 104) = MinX;
  *(a4 + 112) = 0x4014000000000000;
  *(a4 + 120) = MaxX;
  *(a4 + 128) = 0x4014000000000000;
  v56 = v39;
  *a4 = v56;
  v57 = v40;
  *(a4 + 136) = v57;
  v58 = v41;
  v59 = v94[3];
  *(a4 + 144) = v58;
  *(a4 + 152) = v59;
  *(a4 + 160) = v90[3];
  v60 = v81;
  v61 = v81[8];
  *(a4 + 168) = *(v81 + 3);
  *(a4 + 184) = v61;
  v60[7] = 0;
  v60[8] = 0;
  v60[6] = 0;

  _Block_object_dispose(v78, 8);
  _Block_object_dispose(&v80, 8);
  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(v97, 8);

  _Block_object_dispose(v99, 8);
  sub_18368D56C(&v100, v101[0]);
  _Block_object_dispose(v102, 8);
}

void sub_18378D5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(&STACK[0xA78], 8);
  v24 = STACK[0xAA8];
  if (STACK[0xAA8])
  {
    STACK[0xAB0] = v24;
    operator delete(v24);
  }

  _Block_object_dispose(&STACK[0xAC0], 8);
  _Block_object_dispose(&STACK[0xAE0], 8);
  _Block_object_dispose((v22 - 240), 8);

  _Block_object_dispose((v22 - 208), 8);
  sub_18368D56C(v21 + 48, *(v22 - 152));
  _Block_object_dispose((v22 - 136), 8);

  _Unwind_Resume(a1);
}

void *sub_18378D6BC(void *result, void *a2)
{
  v2 = a2 + 7;
  v3 = a2[7];
  v4 = a2[6];
  result[7] = v3;
  v5 = result + 7;
  result[6] = v4;
  v6 = a2[8];
  result[8] = v6;
  if (v6)
  {
    *(v3 + 16) = v5;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v5;
  }

  return result;
}

__n128 sub_18378D704(__n128 *a1, __n128 *a2)
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

void sub_18378D728(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_18378D754(unint64_t *a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  v10 = 5489;
  *a1 = 5489;
  for (i = 1; i != 312; ++i)
  {
    v10 = i + 0x5851F42D4C957F2DLL * (v10 ^ (v10 >> 62));
    a1[i] = v10;
  }

  a1[312] = 0;
  if (v3)
  {
    v12 = objc_msgSend_intValue(v3, v4, v5, v6, v7, v8);
    *a1 = v12;
    for (j = 1; j != 312; ++j)
    {
      v12 = j + 0x5851F42D4C957F2DLL * (v12 ^ (v12 >> 62));
      a1[j] = v12;
    }

    a1[312] = 0;
  }

  else
  {
    *(&__token.__r_.__value_.__s + 23) = 12;
    strcpy(&__token, "/dev/urandom");
    std::random_device::random_device(&v16, &__token);
    if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__token.__r_.__value_.__l.__data_);
    }

    v14 = MEMORY[0x1865E5D80](&v16);
    *a1 = v14;
    for (k = 1; k != 312; ++k)
    {
      v14 = k + 0x5851F42D4C957F2DLL * (v14 ^ (v14 >> 62));
      a1[k] = v14;
    }

    a1[312] = 0;
    std::random_device::~random_device(&v16);
  }
}

void sub_18378D890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, std::random_device a10, std::random_device a11)
{
  std::random_device::~random_device(&a10);

  _Unwind_Resume(a1);
}

void sub_18378D8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_18378D8D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v8 = *(a1 + 112);
  v14 = objc_msgSend_strokeCount(*(a1 + 32), a2, a3, a4, a5, a6);
  v15 = *(a1 + 120);
  v259 = 0;
  v260 = 0;
  __p = 0;
  v18 = *(v15 + 8);
  v16 = (v15 + 8);
  v17 = v18;
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v16;
  v20 = v17;
  while (1)
  {
    v21 = *(v20 + 8);
    if (v21 <= v6)
    {
      break;
    }

LABEL_3:
    v20 = *v20;
    if (!v20)
    {
      v22 = 9633;
      goto LABEL_9;
    }
  }

  if (v21 < v6)
  {
    ++v20;
    goto LABEL_3;
  }

  v22 = v6;
  do
  {
LABEL_9:
    v23 = *(v17 + 8);
    _CF = v23 >= v22;
    v25 = v23 < v22;
    if (_CF)
    {
      v19 = v17;
    }

    v17 = v17[v25];
  }

  while (v17);
  if (v19 == v16 || v22 < *(v19 + 8) || (v26 = v19[5], v27 = v19[6], v26 == v27))
  {
LABEL_17:
    v28 = 0;
    goto LABEL_18;
  }

  v257 = v8;
  do
  {
    v66 = __p;
    v65 = v259;
    if (v259 == __p)
    {
      if (v259 >= v260)
      {
        goto LABEL_26;
      }

LABEL_42:
      *v65 = *v26;
      *(v65 + 8) = *(v26 + 8);
      v64 = (v65 + 24);
LABEL_27:
      v259 = v64;
      goto LABEL_28;
    }

    v67 = *(v26 + 8);
    v68 = *(__p + 2);
    if (v67 <= v68)
    {
      if (v67 == v68)
      {
        if (v259 < v260)
        {
          goto LABEL_42;
        }

LABEL_26:
        v64 = sub_18378E750(&__p, v26);
        goto LABEL_27;
      }
    }

    else
    {
      v69 = *v26;
      v70 = *v26;
      v71 = *(v26 + 8);
      v73 = *(v26 + 16);
      v72 = *(v26 + 20);
      if (v260 == v66)
      {
        do
        {
          v77 = *(v65 - 3);
          v65 -= 24;
        }

        while (v65 != v66);
        v259 = v66;
        operator delete(__p);
        __p = 0;
        v259 = 0;
        v260 = 0;
        operator new();
      }

      v74 = v66 + 24;
      objc_storeStrong(v66, v69);
      *(v66 + 1) = v71;
      *(v66 + 4) = v73;
      *(v66 + 5) = v72;
      for (i = v259; i != v74; i -= 24)
      {
        v76 = *(i - 3);
      }

      v259 = v74;
    }

LABEL_28:
    v26 += 24;
  }

  while (v26 != v27);
  v28 = __p;
  v84 = v259;
  if (__p == v259)
  {
LABEL_18:
    v29 = 0;
    ++*(*(*(a1 + 96) + 8) + 24);
    if (!v28)
    {
      goto LABEL_23;
    }

LABEL_19:
    v30 = v259;
    v31 = v28;
    if (v259 != v28)
    {
      do
      {
        v32 = *(v30 - 3);
        v30 -= 24;
      }

      while (v30 != v28);
      v31 = __p;
    }

    v259 = v28;
    operator delete(v31);
    goto LABEL_23;
  }

  if (*(__p + 3) == 9633)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    v85 = *(*(a1 + 64) + 8);
    if (*(v85 + 24) == 1)
    {
      v86 = objc_msgSend_lastObject(*(a1 + 40), v9, v10, v11, v12, v13, v257);

      if (v86)
      {
        v92 = objc_msgSend_lastObject(*(a1 + 40), v87, v88, v89, v90, v91);
        v98 = sub_1837A4260(v6, v93, v94, v95, v96, v97);
        v103 = objc_msgSend_stringByAppendingString_(v92, v99, v98, v100, v101, v102);

        objc_msgSend_removeLastObject(*(a1 + 40), v104, v105, v106, v107, v108);
        objc_msgSend_addObject_(*(a1 + 40), v109, v103, v110, v111, v112);
      }

      v113 = __p;
      if (__p)
      {
        v114 = v259;
        v115 = __p;
        if (v259 != __p)
        {
          do
          {
            v116 = *(v114 - 3);
            v114 -= 24;
          }

          while (v114 != v113);
          v115 = __p;
        }

        v259 = v113;
        operator delete(v115);
      }

      return;
    }

    *(v85 + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v120 = *(*(a1 + 72) + 8);
  v123 = *(v120 + 56);
  v122 = v120 + 56;
  v121 = v123;
  if (!v123)
  {
    goto LABEL_77;
  }

  v124 = v122;
  v125 = v121;
  do
  {
    v126 = *(v125 + 32);
    _CF = v126 >= v6;
    v127 = v126 < v6;
    if (_CF)
    {
      v124 = v125;
    }

    v125 = *(v125 + 8 * v127);
  }

  while (v125);
  if (v124 == v122 || *(v124 + 32) > v6)
  {
LABEL_77:
    v128 = v84 - v28;
    if (v128 == 24)
    {
      v129 = 0;
      if (v121)
      {
        goto LABEL_95;
      }

LABEL_98:
      operator new();
    }

    v130 = 0xAAAAAAAAAAAAAAABLL * (v128 >> 3);
    v131 = *(*(a1 + 80) + 8);
    v132 = v131 + 48;
    v133 = __clz(v130);
    v134 = 63;
    if (((v130 << v133) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v134 = 64;
    }

    v135 = v134 - v133;
    v136 = v135 >> 6;
    if ((v135 & 0x3F) != 0)
    {
      ++v136;
    }

    if (v136 <= v135)
    {
      v137 = 0xFFFFFFFFFFFFFFFFLL >> -(v135 / v136);
    }

    else
    {
      v137 = 0;
    }

    v138 = *(v131 + 2544);
    v9 = 0x71D67FFFEDA60000;
    v10 = 0xFFF7EEE000000000;
    v11 = 0x555555555;
    do
    {
      v139 = v138;
      v138 = (v138 + 1) % 0x138;
      if (*(v132 + 8 * v138))
      {
        v140 = 0xB5026F5AA96619E9;
      }

      else
      {
        v140 = 0;
      }

      v141 = v140 ^ *(v132 + 8 * ((v139 + 156) % 0x138)) ^ ((*(v132 + 8 * v138) & 0x7FFFFFFELL | *(v132 + 8 * v139) & 0xFFFFFFFF80000000) >> 1);
      *(v132 + 8 * v139) = v141;
      v142 = (((v141 >> 29) & 0x555555555 ^ v141) << 17) & 0x71D67FFFEDA60000 ^ (v141 >> 29) & 0x555555555 ^ v141;
      v129 = ((v142 << 37) & 0xFFF7EEE000000000 ^ v142 ^ (((v142 << 37) & 0xFFF7EEE000000000 ^ v142) >> 43)) & v137;
    }

    while (v129 >= v130);
    *(v131 + 2544) = v138;
    v121 = *(*(*(a1 + 72) + 8) + 56);
    if (!v121)
    {
      goto LABEL_98;
    }

    while (1)
    {
LABEL_95:
      while (1)
      {
        v143 = v121;
        v144 = *(v121 + 32);
        if (v144 <= v6)
        {
          break;
        }

        v121 = *v143;
        if (!*v143)
        {
          goto LABEL_98;
        }
      }

      if (v144 >= v6)
      {
        break;
      }

      v121 = v143[1];
      if (!v121)
      {
        goto LABEL_98;
      }
    }

    v143[5] = v129;
    v121 = *(*(*(a1 + 72) + 8) + 56);
  }

  if (!v121)
  {
LABEL_106:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v145 = v121;
      v146 = *(v121 + 32);
      if (v146 <= v6)
      {
        break;
      }

      v121 = *v145;
      if (!*v145)
      {
        goto LABEL_106;
      }
    }

    if (v146 >= v6)
    {
      break;
    }

    v121 = v145[1];
    if (!v121)
    {
      goto LABEL_106;
    }
  }

  v29 = v145[5];
  v147 = *(*(*(a1 + 88) + 8) + 24);
  v148 = (__p + 24 * v29);
  v150 = v148[4];
  v149 = v148[5];
  v151 = objc_msgSend_copy(*v148, v9, v10, v11, v12, v13, v257);
  v157 = objc_msgSend_strokeCount(v151, v152, v153, v154, v155, v156);
  v158 = v147 + (v150 * 10.0);

  if (v157)
  {
    v159 = v158;
    v160 = sub_18378FE0C(v148, v9, v10, v11, v12, v13, 10.0, 20.0, v159);
    v161 = *(v257 + 8);
    v162 = v160;
    v163 = v161;
    objc_msgSend_bounds(v162, v164, v165, v166, v167, v168);
    MidX = CGRectGetMidX(v265);
    objc_msgSend_bounds(v162, v170, v171, v172, v173, v174);
    MidY = CGRectGetMidY(v266);
    v181 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v162, v176, v177, v178, v179, v180, -MidX, -MidY, 0.100000001);
    sub_18378D754(v263, v163);
    v182 = (v264 + 1) % 0x138;
    if (v263[v182])
    {
      v183 = 0xB5026F5AA96619E9;
    }

    else
    {
      v183 = 0;
    }

    v184 = v183 ^ v263[(v264 + 156) % 0x138] ^ ((v263[v182] & 0x7FFFFFFE | v263[v264] & 0xFFFFFFFF80000000) >> 1);
    v263[v264] = v184;
    v185 = (((v184 >> 29) & 0x555555555 ^ v184) << 17) & 0x71D67FFFEDA60000 ^ (v184 >> 29) & 0x555555555 ^ v184;
    v186 = vcvtd_n_f64_u64((v185 << 37) & 0xFFF7EEE000000000 ^ v185 ^ (((v185 << 37) & 0xFFF7EEE000000000 ^ v185) >> 43), 0x40uLL) * 2.0 + -1.0;
    v187 = v182 - 311;
    if (v182 < 0x137)
    {
      v187 = v182 + 1;
    }

    v188 = v263[v187];
    v189 = 156;
    if (v182 < 0x9C)
    {
      v190 = 156;
    }

    else
    {
      v190 = -156;
    }

    v191 = v263[v190 + v182];
    if (v188)
    {
      v192 = 0xB5026F5AA96619E9;
    }

    else
    {
      v192 = 0;
    }

    v193 = v192 ^ v191 ^ ((v263[v187] & 0x7FFFFFFE | v263[v182] & 0xFFFFFFFF80000000) >> 1);
    v263[v182] = v193;
    v194 = (((v193 >> 29) & 0x555555555 ^ v193) << 17) & 0x71D67FFFEDA60000 ^ (v193 >> 29) & 0x555555555 ^ v193;
    v195 = vcvtd_n_f64_u64((v194 << 37) & 0xFFF7EEE000000000 ^ v194 ^ (((v194 << 37) & 0xFFF7EEE000000000 ^ v194) >> 43), 0x40uLL) * 2.0 + -1.0;
    v196 = v186 * 0.100000001 + 1.0;
    v197 = (v187 + 1) % 0x138;
    v198 = v263[v197] & 0x7FFFFFFE | v188 & 0xFFFFFFFF80000000;
    if (v263[v197])
    {
      v199 = 0xB5026F5AA96619E9;
    }

    else
    {
      v199 = 0;
    }

    v200 = v199 ^ v263[(v187 + 156) % 0x138];
    v201 = v197 - 311;
    if (v197 < 0x137)
    {
      v201 = v197 + 1;
    }

    if (v197 >= 0x9C)
    {
      v189 = -156;
    }

    v202 = v200 ^ (v198 >> 1);
    v263[v187] = v202;
    v203 = v263[v189 + v197];
    if (v263[v201])
    {
      v204 = 0xB5026F5AA96619E9;
    }

    else
    {
      v204 = 0;
    }

    v205 = v204 ^ v203 ^ ((v263[v201] & 0x7FFFFFFE | v263[v197] & 0xFFFFFFFF80000000) >> 1);
    v263[v197] = v205;
    v206.i64[0] = v202;
    v206.i64[1] = v205;
    v207 = v195 * 0.100000001 + 1.0;
    v208 = vandq_s8(vshrq_n_u64(v206, 0x1DuLL), vdupq_n_s64(0x555555555uLL));
    if (v201 + 1 < 0x138)
    {
      v209 = v201 + 1;
    }

    else
    {
      v209 = v201 - 311;
    }

    v210 = v201 + 156;
    if (v201 + 156 >= 0x138)
    {
      v210 = v201 - 156;
    }

    v211 = v263[v210];
    if (v263[v209])
    {
      v212 = 0xB5026F5AA96619E9;
    }

    else
    {
      v212 = 0;
    }

    v213 = v212 ^ v211 ^ ((v263[v209] & 0x7FFFFFFE | v263[v201] & 0xFFFFFFFF80000000) >> 1);
    v263[v201] = v213;
    v264 = v209;
    v214 = (((v213 >> 29) & 0x555555555 ^ v213) << 17) & 0x71D67FFFEDA60000 ^ (v213 >> 29) & 0x555555555 ^ v213;
    memset(&v262, 0, sizeof(v262));
    components.scale.width = v196;
    components.scale.height = v207;
    v215 = veorq_s8(v208, v206);
    v216 = veorq_s8(vandq_s8(vshlq_n_s64(v215, 0x11uLL), vdupq_n_s64(0x71D67FFFEDA60000uLL)), v215);
    v217 = veorq_s8(vandq_s8(vshlq_n_s64(v216, 0x25uLL), vdupq_n_s64(0xFFF7EEE000000000)), v216);
    __asm
    {
      FMOV            V3.2D, #2.0
      FMOV            V4.2D, #-1.0
    }

    *&components.horizontalShear = vmulq_f64(vmlaq_f64(_Q4, _Q3, vmulq_f64(vcvtq_f64_u64(veorq_s8(vshrq_n_u64(v217, 0x2BuLL), v217)), vdupq_n_s64(0x3BF0000000000000uLL))), vdupq_n_s64(0x3FA99999A0000000uLL));
    components.translation.dx = 0.0;
    components.translation.dy = (vcvtd_n_f64_u64((v214 << 37) & 0xFFF7EEE000000000 ^ v214 ^ (((v214 << 37) & 0xFFF7EEE000000000 ^ v214) >> 43), 0x40uLL) * 2.0 + -1.0) * 0.0599999987;
    CGAffineTransformMakeWithComponents(&v262, &components);
    if (v262.a < 0.0 || v262.d < 0.0)
    {
      v246 = sub_183761FE4(9);
      if (os_log_type_enabled(v246, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(components.scale.width) = 0;
        _os_log_impl(&dword_18366B000, v246, OS_LOG_TYPE_DEBUG, "applyRandomAffineTransform transformation is invalid.", &components, 2u);
      }

      v245 = v162;
    }

    else
    {
      components = v262;
      v227 = objc_msgSend_newDrawingWithAffineTransform_(v181, v223, &components, v224, v225, v226);

      objc_msgSend_bounds(v162, v228, v229, v230, v231, v232);
      v233 = CGRectGetMidX(v267);
      objc_msgSend_bounds(v162, v234, v235, v236, v237, v238);
      v239 = CGRectGetMidY(v268);
      v245 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v227, v240, v241, v242, v243, v244, v233 / 10.0, v239 / 10.0, 10.0);
      v181 = v227;
    }

    objc_msgSend_appendDrawing_(*(a1 + 32), v247, v245, v248, v249, v250);
    objc_msgSend_bounds(v245, v251, v252, v253, v254, v255);
    v158 = v158 + CGRectGetWidth(v269);
  }

  v256 = v158 + (v149 * 10.0);
  *(*(*(a1 + 88) + 8) + 24) = v256;
  v28 = __p;
  if (__p)
  {
    goto LABEL_19;
  }

LABEL_23:
  if (objc_msgSend_strokeCount(*(a1 + 32), v9, v10, v11, v12, v13, v257) > v14)
  {
    v38 = *(a1 + 40);
    v39 = sub_1837A4260(v6, v33, v34, v35, v36, v37);
    objc_msgSend_addObject_(v38, v40, v39, v41, v42, v43);

    v44 = *(a1 + 48);
    v45 = MEMORY[0x1E696AC90];
    v51 = objc_msgSend_strokeCount(*(a1 + 32), v46, v47, v48, v49, v50);
    v55 = objc_msgSend_indexSetWithIndexesInRange_(v45, v52, v14, v51 - v14, v53, v54);
    objc_msgSend_addObject_(v44, v56, v55, v57, v58, v59);

    v60 = *(*(a1 + 104) + 8);
    v62 = v60[7];
    v61 = v60[8];
    if (v62 >= v61)
    {
      v78 = v60[6];
      v79 = v62 - v78;
      v80 = (v62 - v78) >> 4;
      v81 = v80 + 1;
      if ((v80 + 1) >> 60)
      {
        sub_18368964C();
      }

      v82 = v61 - v78;
      if (v82 >> 3 > v81)
      {
        v81 = v82 >> 3;
      }

      if (v82 >= 0x7FFFFFFFFFFFFFF0)
      {
        v83 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v83 = v81;
      }

      if (v83)
      {
        if (!(v83 >> 60))
        {
          operator new();
        }

        sub_183688F00();
      }

      v117 = v80;
      v118 = 16 * v80;
      *v118 = v6;
      *(v118 + 8) = v29;
      v63 = 16 * v80 + 16;
      v119 = (v118 - 16 * v117);
      memcpy(v119, v78, v79);
      v60[6] = v119;
      v60[7] = v63;
      v60[8] = 0;
      if (v78)
      {
        operator delete(v78);
      }
    }

    else
    {
      *v62 = v6;
      *(v62 + 8) = v29;
      v63 = v62 + 16;
    }

    v60[7] = v63;
  }
}

void sub_18378E578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_18368EE60(va);
  _Unwind_Resume(a1);
}

void sub_18378E594(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_18368EE60(va);
  _Unwind_Resume(a1);
}

void sub_18378E5AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18368EE60(va);
  _Unwind_Resume(a1);
}

void sub_18378E5C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_18368EE60(va);
  _Unwind_Resume(a1);
}

void sub_18378E5D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_18368EE60(va);
  _Unwind_Resume(a1);
}

void sub_18378E68C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_18368EE60(va);
  _Unwind_Resume(a1);
}

void sub_18378E6C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18368EE60(va);
  _Unwind_Resume(a1);
}

void sub_18378E704(uint64_t a1)
{

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_18378E750(void ***a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_183788D88();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_183688F00();
  }

  v7 = 8 * (a1[1] - *a1);
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  v8 = 24 * v2 + 24;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = *v12;
      *v12 = 0;
      *v13 = v14;
      *(v13 + 8) = *(v12 + 1);
      v12 += 3;
      v13 += 24;
    }

    while (v12 != v10);
    do
    {
      v15 = *v9;
      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_18378E8A0(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4812000000;
  v17 = sub_18378EA84;
  v18 = sub_18378EAA8;
  v19 = &unk_183A5AC72;
  v21 = 0;
  v22 = 0;
  __p = 0;
  v4 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18378EB20;
  v12[3] = &unk_1E6DDDF98;
  v13 = a2;
  v12[4] = &v14;
  v12[5] = a1;
  dispatch_sync(v4, v12);
  v5 = v15;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v6 = v5[6];
  v7 = v5[7];
  v23 = a3;
  v24 = 0;
  if (v7 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_183788D88();
  }

  _Block_object_dispose(&v14, 8);
  v8 = __p;
  if (__p)
  {
    v9 = v21;
    v10 = __p;
    if (v21 != __p)
    {
      do
      {
        v11 = *(v9 - 3);
        v9 -= 24;
      }

      while (v9 != v8);
      v10 = __p;
    }

    v21 = v8;
    operator delete(v10);
  }
}

void sub_18378EA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_18378F268((v9 - 64));
  _Block_object_dispose(va, 8);
  sub_18368EE60((v8 + 48));
  _Unwind_Resume(a1);
}

__n128 sub_18378EA84(__n128 *a1, __n128 *a2)
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

void sub_18378EAA8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 24);
        v3 -= 24;
      }

      while (v3 != v1);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v1;

    operator delete(v4);
  }
}

void sub_18378EB20(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*v2 + 32))(v2);
  v5 = v2[2];
  v4 = v2 + 2;
  v3 = v5;
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = v4;
    do
    {
      v8 = *(v3 + 32);
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * v10);
    }

    while (v3);
    if (v7 != v4 && v6 >= *(v7 + 8))
    {
      v11 = (*(*(a1 + 32) + 8) + 48);
      if (v11 != v7 + 5)
      {
        v12 = v7[5];
        v13 = v7[6];

        sub_18378F020(v11, v12, v13, 0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3));
      }
    }
  }
}

void sub_18378EBF4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4812000000;
  v14 = sub_18378EE14;
  v15 = sub_18378EE50;
  v16 = &unk_183A5AC72;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v3 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18378EE5C;
  block[3] = &unk_1E6DDBFC0;
  block[4] = &v11;
  block[5] = a1;
  dispatch_sync(v3, block);
  a2[1] = 0;
  v4 = v12;
  a2[2] = 0;
  *a2 = a2 + 1;
  v5 = v4[6];
  v6 = (v4 + 7);
  if (v5 != (v4 + 7))
  {
    do
    {
      if (!*sub_18368ECB0(a2, a2 + 1, &v20, &v19, v5 + 8))
      {
        operator new();
      }

      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }

  _Block_object_dispose(&v11, 8);
  sub_18368D56C(&v17, v18[0]);
}

void sub_18378EDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  sub_18368D56C(v23, *(v23 + 8));
  _Block_object_dispose(&a16, 8);
  sub_18368D56C(v24 + 48, a23);
  _Unwind_Resume(a1);
}

void *sub_18378EE14(void *result, void *a2)
{
  v2 = a2 + 7;
  v3 = a2[7];
  v4 = a2[6];
  result[7] = v3;
  v5 = result + 7;
  result[6] = v4;
  v6 = a2[8];
  result[8] = v6;
  if (v6)
  {
    *(v3 + 16) = v5;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v5;
  }

  return result;
}

uint64_t sub_18378EE5C(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = (*(*v2 + 32))(v2);
  v4 = v2[1];
  if (v4 != v2 + 2)
  {
    do
    {
      v5 = *(*(*(a1 + 32) + 8) + 56);
      if (!v5)
      {
LABEL_10:
        operator new();
      }

      v6 = *(v4 + 8);
      while (1)
      {
        while (1)
        {
          v7 = v5;
          v8 = *(v5 + 32);
          if (v6 >= v8)
          {
            break;
          }

          v5 = *v7;
          if (!*v7)
          {
            goto LABEL_10;
          }
        }

        if (v8 >= v6)
        {
          break;
        }

        v5 = v7[1];
        if (!v5)
        {
          goto LABEL_10;
        }
      }

      v7[5] = 0xAAAAAAAAAAAAAAABLL * ((v4[6] - v4[5]) >> 3);
      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v2 + 2);
  }

  return result;
}

void sub_18378F020(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 3);
          v10 -= 24;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= a4)
      {
        v14 = a4;
      }

      if (v13 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v14;
      }

      if (v15 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_183788D88();
  }

  v16 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v16 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        objc_storeStrong(v8, *v5);
        *(v8 + 1) = *(v5 + 8);
        *(v8 + 2) = *(v5 + 16);
        v5 += 24;
        v8 += 24;
      }

      while (v5 != a3);
      v16 = a1[1];
    }

    while (v16 != v8)
    {
      v20 = *(v16 - 3);
      v16 -= 24;
    }

    a1[1] = v8;
  }

  else
  {
    v17 = a2 + v16 - v8;
    if (v16 != v8)
    {
      do
      {
        objc_storeStrong(v8, *v5);
        *(v8 + 1) = *(v5 + 8);
        *(v8 + 2) = *(v5 + 16);
        v5 += 24;
        v8 += 24;
      }

      while (v5 != v17);
      v16 = a1[1];
    }

    v18 = v16;
    if (v17 != a3)
    {
      v18 = v16;
      v19 = v16;
      do
      {
        *v19 = *v17;
        *(v19 + 8) = *(v17 + 8);
        v17 += 24;
        v19 += 24;
        v18 += 24;
      }

      while (v17 != a3);
    }

    a1[1] = v18;
  }
}

void ***sub_18378F268(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v6 = *(v4 - 3);
          v4 -= 24;
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

BOOL sub_18378F2DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  if (!v6)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v63 = 0;
    v61 = qword_1EA84DC98;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v61, OS_LOG_TYPE_DEBUG, "CHFastPathCharacterHolderStyleInventory inventory is null", buf, 2u);
    }

LABEL_50:

    v6 = v63;
    return v6 != 0;
  }

  objc_msgSend_lastCharacterStyleTimestamp(*(a1 + 48), a2, a3, a4, a5, a6);
  v9 = v8;
  if (v8 > *(a1 + 56))
  {
    v70 = a1;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v63 = v6;
    v10 = qword_1EA84DC98;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_DEFAULT, "CHFastPathCharacterHolderStyleInventory: need to reload inventory.", buf, 2u);
    }

    *(a1 + 56) = v9;
    v16 = objc_msgSend_fastPathCharacterStylesWithVariations(*(a1 + 48), v11, v12, v13, v14, v15);
    sub_18368EBD4(a1 + 8, *(a1 + 16));
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = a1 + 16;
    v73 = (a1 + 16);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v17 = v16;
    v66 = v17;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v80, v85, 16, v19);
    if (v24)
    {
      v65 = *v81;
      do
      {
        v25 = 0;
        v67 = v24;
        do
        {
          if (*v81 != v65)
          {
            objc_enumerationMutation(v17);
          }

          v26 = *(*(&v80 + 1) + 8 * v25);
          v64 = objc_msgSend_objectForKeyedSubscript_(v17, v20, v26, v21, v22, v23, v63);
          CodepointInString = objc_msgSend_firstCodepointInString(v26, v27, v28, v29, v30, v31);
          v68 = v25;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          obj = v64;
          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v76, v84, 16, v34);
          if (v35)
          {
            v71 = *v77;
            do
            {
              v72 = v35;
              for (i = 0; i != v72; ++i)
              {
                if (*v77 != v71)
                {
                  objc_enumerationMutation(obj);
                }

                v42 = v73;
LABEL_18:
                v43 = *v42;
                if (!*v42)
                {
LABEL_22:
                  operator new();
                }

                while (1)
                {
                  v42 = v43;
                  v44 = *(v43 + 32);
                  if (CodepointInString < v44)
                  {
                    goto LABEL_18;
                  }

                  if (v44 >= CodepointInString)
                  {
                    break;
                  }

                  v43 = v42[1];
                  if (!v43)
                  {
                    goto LABEL_22;
                  }
                }

                v45 = v42;
                v46 = objc_msgSend_drawing(*(*(&v76 + 1) + 8 * i), v36, v37, v38, v39, v40);
                sub_18378FD40(buf, v46, *(v70 + 36), CodepointInString);
                v48 = v42[6];
                v47 = v45[7];
                if (v48 >= v47)
                {
                  v51 = v45[5];
                  v52 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v51) >> 3) + 1;
                  if (v52 > 0xAAAAAAAAAAAAAAALL)
                  {
                    sub_183788D88();
                  }

                  v53 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v51) >> 3);
                  if (2 * v53 > v52)
                  {
                    v52 = 2 * v53;
                  }

                  if (v53 >= 0x555555555555555)
                  {
                    v54 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v54 = v52;
                  }

                  if (v54)
                  {
                    if (v54 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    sub_183688F00();
                  }

                  v55 = 8 * ((v48 - v51) >> 3);
                  v56 = *buf;
                  *buf = 0;
                  *v55 = v56;
                  *(v55 + 8) = v75;
                  v57 = v55 - (v48 - v51);
                  if (v51 != v48)
                  {
                    v58 = v51;
                    v59 = v55 - (v48 - v51);
                    do
                    {
                      v60 = *v58;
                      *v58 = 0;
                      *v59 = v60;
                      *(v59 + 8) = *(v58 + 1);
                      v58 += 3;
                      v59 += 24;
                    }

                    while (v58 != v48);
                    do
                    {

                      v51 += 3;
                    }

                    while (v51 != v48);
                    v51 = v45[5];
                  }

                  v50 = v55 + 24;
                  v45[5] = v57;
                  v45[6] = v55 + 24;
                  v45[7] = 0;
                  if (v51)
                  {
                    operator delete(v51);
                  }
                }

                else
                {
                  v49 = *buf;
                  *buf = 0;
                  *v48 = v49;
                  *(v48 + 8) = v75;
                  v50 = v48 + 24;
                }

                v45[6] = v50;
              }

              v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v76, v84, 16, v40);
            }

            while (v35);
          }

          v25 = v68 + 1;
          v17 = v66;
        }

        while (v68 + 1 != v67);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v20, &v80, v85, 16, v23);
      }

      while (v24);
    }

    v61 = v66;
    goto LABEL_50;
  }

  return v6 != 0;
}

void sub_18378FA6C(uint64_t a1, uint64_t a2, int a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  if (qword_1EA84DC48 == -1)
  {
    v7 = qword_1EA84DC98;
    v8 = v7;
    if (v6)
    {
LABEL_3:
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_1837A4260(*(a2 + 12), v9, v10, v11, v12, v13);
        v20 = objc_msgSend_copy(*a2, v15, v16, v17, v18, v19);
        v34 = 138412802;
        v35 = v14;
        v36 = 1024;
        v37 = a3;
        v38 = 2112;
        v39 = v20;
        _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_DEFAULT, "CHFastPathCharacterHolderStyleInventory: add character %@, version %d, drawing %@ into inventory", &v34, 0x1Cu);
      }

      v21 = *(a1 + 48);
      v8 = objc_msgSend_copy(*a2, v22, v23, v24, v25, v26);
      v32 = sub_1837A4260(*(a2 + 12), v27, v28, v29, v30, v31);
      objc_msgSend_addSampleOfSynthesizedCharacter_transcription_key_version_(v21, v33, v8, v32, *(a2 + 12), a3);

      goto LABEL_9;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v7 = qword_1EA84DC98;
    v8 = v7;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v34) = 0;
    _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_DEBUG, "CHFastPathCharacterHolderStyleInventory inventory is null", &v34, 2u);
  }

LABEL_9:
}

uint64_t sub_18378FC68(uint64_t a1)
{
  *a1 = &unk_1EF1BCD08;

  sub_18368EBD4(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_18378FCC4(uint64_t a1)
{
  *a1 = &unk_1EF1BCD08;

  sub_18368EBD4(a1 + 8, *(a1 + 16));

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_18378FD40(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  *a1 = objc_msgSend_copy(v7, v8, v9, v10, v11, v12);
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = 0;
  if (objc_msgSend_characterAtIndex_(@".", v13, 0, v14, v15, v16) == a4 || (v21 = objc_msgSend_characterAtIndex_(@",", v17, 0, v18, v19, v20), v22 = 0.25, v21 == a4))
  {
    v22 = 0.325;
  }

  *(a1 + 16) = v22;
  *(a1 + 20) = v22;

  return a1;
}

id sub_18378FE0C(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, float a8, float a9)
{
  v12 = objc_msgSend_copy(*a1, a2, a3, a4, a5, a6);
  objc_msgSend_bounds(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v12, v19, v20, v21, v22, v23, (a9 / (a8 - a7)) - v18, ((a8 / (a8 - a7)) + -1.0), (a8 - a7));

  return v24;
}

uint64_t sub_18378FED4(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v4 = *(v2 + 7);
    if (v4 <= a2)
    {
      break;
    }

LABEL_3:
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  if (v4 < a2)
  {
    ++v2;
    goto LABEL_3;
  }

  return 1;
}

uint64_t sub_18378FF0C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 16);
  result = a1 + 16;
  v4 = v5;
  if (v5)
  {
    v6 = result;
    do
    {
      v7 = *(v4 + 28);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != result && *(v6 + 28) <= a2)
    {
      operator new();
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void sub_18378FFA0(uint64_t a1@<X0>, unsigned int **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v7 = (a1 + 40);
    v6 = *(a1 + 40);
    if (v6)
    {
LABEL_3:
      v8 = *v3;
      v9 = v7;
      do
      {
        v10 = *(v6 + 28);
        v11 = v10 >= v8;
        v12 = v10 < v8;
        if (v11)
        {
          v9 = v6;
        }

        v6 = *(v6 + 8 * v12);
      }

      while (v6);
      if (v9 != v7 && v8 >= *(v9 + 7))
      {
        sub_1836DEB50(a3, v9 + 8);
      }

      while (++v3 != v4)
      {
        v6 = *v7;
        if (*v7)
        {
          goto LABEL_3;
        }
      }
    }
  }
}

void sub_183790044(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_183790060(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, float32x2_t *a6@<X8>)
{
  v7 = a2;
  v9 = objc_msgSend_copy(*a3, a1, a2, a3, a4, a5);
  objc_msgSend_bounds(v9, v10, v11, v12, v13, v14);
  v27 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v9, v16, v17, v18, v19, v20, 0.0 - v15, -1.0, 0.5);

  v21 = *(a3 + 16);
  LODWORD(v9) = *(a3 + 8);
  *a6 = objc_msgSend_copy(v27, v22, v23, v24, v25, v26);
  a6[1].i32[0] = v9;
  a6[1].i32[1] = v7;
  a6[2] = vmul_f32(v21, 0x3F0000003F000000);
}

void sub_183790154(_OWORD *a1)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  operator new();
}

void sub_1837904D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  sub_183790F7C(a11 + 3);
  sub_183790F7C(a11);
  _Unwind_Resume(a1);
}

void sub_183790530(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void ***a4@<X8>)
{
  v4 = a2;
  sub_1837908F4(a4, *a1, a1[1], a2, a3);
  if (a4[1] != *a4)
  {
    return;
  }

  v7 = a1[3];
  v6 = a1[4];
  if (v7 == v6)
  {
    return;
  }

  v35 = v4;
  v30 = a1[4];
  while (2)
  {
    if (((*(**v7 + 16))(*v7, v4) & 1) == 0)
    {
      goto LABEL_6;
    }

    (*(**v7 + 24))(&__p);
    v8 = __p;
    v33 = v42;
    v36 = v7;
    if (__p == v42)
    {
      if (__p)
      {
        goto LABEL_41;
      }

      goto LABEL_5;
    }

    do
    {
      v34 = v8;
      sub_1837908F4(&v39, *a1, a1[1], *v8, a3);
      v10 = v39;
      v9 = v40;
      if (v39 == v40)
      {
        if (!v39)
        {
          goto LABEL_12;
        }

LABEL_37:
        v27 = v40;
        v28 = v10;
        if (v40 != v10)
        {
          do
          {
            v29 = *(v27 - 3);
            v27 -= 24;
          }

          while (v27 != v10);
          v28 = v39;
        }

        v40 = v10;
        operator delete(v28);
        goto LABEL_12;
      }

      do
      {
        (*(**v7 + 40))(&v37);
        v14 = a4[1];
        v13 = a4[2];
        if (v14 < v13)
        {
          v11 = v37;
          v37 = 0;
          *v14 = v11;
          *(v14 + 1) = v38;
          v12 = (v14 + 3);
        }

        else
        {
          v15 = *a4;
          v16 = v14 - *a4;
          v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3) + 1;
          if (v17 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_183788D88();
          }

          v18 = 0xAAAAAAAAAAAAAAABLL * (v13 - v15);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0x555555555555555)
          {
            v19 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (v19 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_183688F00();
          }

          v20 = 8 * (v16 >> 3);
          v21 = v37;
          v37 = 0;
          *v20 = v21;
          *(v20 + 8) = v38;
          v22 = v20 - v16;
          if (v15 != v14)
          {
            v23 = v15;
            v24 = v22;
            do
            {
              v25 = *v23;
              *v23 = 0;
              *v24 = v25;
              *(v24 + 8) = *(v23 + 1);
              v23 += 3;
              v24 += 24;
            }

            while (v23 != v14);
            do
            {
              v26 = *v15;
              v15 += 3;
            }

            while (v15 != v14);
            v15 = *a4;
          }

          v12 = v20 + 24;
          *a4 = v22;
          a4[1] = v12;
          a4[2] = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v4 = v35;
          v7 = v36;
        }

        a4[1] = v12;

        v10 += 24;
      }

      while (v10 != v9);
      v10 = v39;
      if (v39)
      {
        goto LABEL_37;
      }

LABEL_12:
      v8 = v34 + 1;
    }

    while (v34 + 1 != v33);
    v8 = __p;
    if (__p)
    {
LABEL_41:
      v42 = v8;
      operator delete(v8);
    }

LABEL_5:
    v6 = v30;
LABEL_6:
    v7 += 2;
    if (v7 != v6)
    {
      continue;
    }

    break;
  }
}

void sub_1837908AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_18368EE60(v23);
  _Unwind_Resume(a1);
}

void sub_1837908F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2 != a3)
  {
    v7 = a2;
    if (a5)
    {
      do
      {
        if (*(*v7 + 32) == a5)
        {
          (*(**v7 + 16))(&__p);
          sub_1837910CC(a1, *(a1 + 8), __p, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - __p) >> 3));
          v9 = __p;
          if (__p)
          {
            v10 = v18;
            v11 = __p;
            if (v18 != __p)
            {
              do
              {
                v12 = *(v10 - 3);
                v10 -= 24;
              }

              while (v10 != v9);
              v11 = __p;
            }

            v18 = v9;
            operator delete(v11);
          }
        }

        v7 += 16;
      }

      while (v7 != a3);
    }

    else
    {
      do
      {
        (*(**v7 + 16))(&__p);
        sub_1837910CC(a1, *(a1 + 8), __p, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - __p) >> 3));
        v13 = __p;
        if (__p)
        {
          v14 = v18;
          v15 = __p;
          if (v18 != __p)
          {
            do
            {
              v16 = *(v14 - 3);
              v14 -= 24;
            }

            while (v14 != v13);
            v15 = __p;
          }

          v18 = v13;
          operator delete(v15);
        }

        v7 += 16;
      }

      while (v7 != a3);
    }
  }
}

void sub_183790AB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18368EE60(va);
  sub_18368EE60(v2);
  _Unwind_Resume(a1);
}

void sub_183790AE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 != v6)
  {
    do
    {
      v8 = *(a2 + 24);
      if (!v8)
      {
        sub_1837916E4();
      }

      if ((*(*v8 + 48))(v8, *v5))
      {
        (*(**v5 + 24))(v31);
        v9 = v31[0];
        if (v31[0] != &v31[1])
        {
          do
          {
            if (v9[5])
            {
              sub_1836E2048(a3, v9 + 8);
            }

            v10 = v9[1];
            if (v10)
            {
              do
              {
                v11 = v10;
                v10 = *v10;
              }

              while (v10);
            }

            else
            {
              do
              {
                v11 = v9[2];
                v12 = *v11 == v9;
                v9 = v11;
              }

              while (!v12);
            }

            v9 = v11;
          }

          while (v11 != &v31[1]);
        }

        sub_18368D56C(v31, v31[1]);
      }

      v5 += 2;
    }

    while (v5 != v6);
  }

  *v31 = 0u;
  *v32 = 0u;
  v33 = 1065353216;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  if (v13 != v14)
  {
    do
    {
      v15 = *v13;
      v16 = *(a3 + 16);
      v27 = 0;
      v28 = 0;
      __p = 0;
      if (v16)
      {
        v17 = 0;
        v18 = -1;
        v19 = v16;
        do
        {
          v19 = *v19;
          ++v18;
          v17 += 4;
        }

        while (v19);
        if (v18 < 0x3FFFFFFFFFFFFFFFLL)
        {
          operator new();
        }

        sub_1836D58DC();
      }

      (*(*v15 + 32))(&v29, v15, &__p);
      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }

      v20 = v29;
      v21 = v30;
      if (v29 != v30)
      {
        do
        {
          LODWORD(__p) = *v20;
          sub_1836E2048(v31, &__p);
          ++v20;
        }

        while (v20 != v21);
        v20 = v29;
      }

      if (v20)
      {
        v30 = v20;
        operator delete(v20);
      }

      v13 += 2;
    }

    while (v13 != v14);
    v22 = v32[0];
    if (v32[0])
    {
      do
      {
        sub_1836E2048(a3, v22 + 4);
        v22 = *v22;
      }

      while (v22);
      v23 = v32[0];
      if (v32[0])
      {
        do
        {
          v24 = *v23;
          operator delete(v23);
          v23 = v24;
        }

        while (v24);
      }
    }
  }

  v25 = v31[0];
  v31[0] = 0;
  if (v25)
  {
    operator delete(v25);
  }
}

void sub_183790DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1836CFA48(va);
  sub_1836CFA48(v7);
  _Unwind_Resume(a1);
}

void sub_183790DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    sub_1836CFA48(&a15);
    sub_1836CFA48(v16);
    _Unwind_Resume(a1);
  }

  sub_1836CFA48(&a15);
  sub_1836CFA48(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_183790EAC(uint64_t a1)
{
  *a1 = &unk_1EF1BCDB0;
  sub_18368D56C(a1 + 32, *(a1 + 40));
  sub_18368D56C(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_183790F04(uint64_t a1)
{
  *a1 = &unk_1EF1BCDB0;
  sub_18368D56C(a1 + 32, *(a1 + 40));
  sub_18368D56C(a1 + 8, *(a1 + 16));

  JUMPOUT(0x1865E5EC0);
}

void **sub_183790F7C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_183791050(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BCE18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

double sub_1837910CC(void ***a1, id *location, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return *&v28;
  }

  v6 = a3;
  v7 = location;
  v10 = a1[1];
  v9 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * (v9 - v10)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * (v10 - *a1);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_183788D88();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * (v9 - v11);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_183688F00();
    }

    v25 = 8 * (location - v11);
    v26 = v25 + 24 * a5;
    v27 = v25;
    do
    {
      *v27 = *v6;
      v28 = *(v6 + 8);
      *(v27 + 8) = v28;
      v27 += 24;
      v6 += 24;
    }

    while (v27 != v26);
    v29 = a1[1];
    v30 = v7;
    if (v29 != v7)
    {
      v31 = v7;
      v32 = v26;
      do
      {
        v33 = *v31;
        *v31 = 0;
        *v32 = v33;
        *(v32 + 8) = *(v31 + 1);
        v31 += 3;
        v32 += 24;
      }

      while (v31 != v29);
      v34 = v7;
      do
      {
        v35 = *v34;
        v34 += 3;
      }

      while (v34 != v29);
      v30 = a1[1];
    }

    v36 = (v26 + v30 - v7);
    a1[1] = v7;
    v37 = *a1;
    v38 = v25 + *a1 - v7;
    if (*a1 != v7)
    {
      v39 = *a1;
      v40 = v38;
      do
      {
        v41 = *v39;
        *v39 = 0;
        *v40 = v41;
        *(v40 + 8) = *(v39 + 1);
        v39 += 3;
        v40 += 24;
      }

      while (v39 != v7);
      do
      {
        v42 = *v37;
        v37 += 3;
      }

      while (v37 != v7);
      v37 = *a1;
    }

    *a1 = v38;
    a1[1] = v36;
    a1[2] = 0;
    if (v37)
    {

      operator delete(v37);
    }

    return *&v28;
  }

  v15 = v10 - location;
  if ((0xAAAAAAAAAAAAAAABLL * (v10 - location)) >= a5)
  {
    v20 = &location[3 * a5];
    v21 = &v10[-3 * a5];
    if (v21 >= v10)
    {
      a1[1] = v10;
      if (v10 == v20)
      {
LABEL_50:
        v58 = v6 + 24 * a5;
        do
        {
          objc_storeStrong(v7, *v6);
          v7[1] = *(v6 + 8);
          *&v28 = *(v6 + 16);
          v7[2] = v28;
          v6 += 24;
          v7 += 3;
        }

        while (v6 != v58);
        return *&v28;
      }
    }

    else
    {
      v22 = &v10[-3 * a5];
      v23 = a1[1];
      do
      {
        v24 = *v22;
        *v22 = 0;
        *v23 = v24;
        *(v23 + 1) = *(v22 + 1);
        v22 += 3;
        v23 += 3;
      }

      while (v22 < v10);
      a1[1] = v23;
      if (v10 == v20)
      {
        goto LABEL_50;
      }
    }

    v53 = 0;
    v54 = (&location[3 * a5] - v10);
    do
    {
      v55 = &v53[v10];
      v56 = *&v53[v21 - 24];
      *&v53[v21 - 24] = 0;
      v57 = *&v53[v10 - 24];
      *&v53[v10 - 24] = v56;

      *(v55 - 2) = *&v53[v21 - 16];
      *(v55 - 2) = *&v53[v21 - 8];
      *(v55 - 1) = *&v53[v21 - 4];
      v53 -= 24;
    }

    while (v54 != v53);
    goto LABEL_50;
  }

  v60 = v10 - location;
  v17 = v15 + a3;
  v18 = a1[1];
  if (v15 + a3 == a4)
  {
    v19 = a1[1];
  }

  else
  {
    v43 = v15 + a3;
    v19 = a1[1];
    do
    {
      *v19 = *v43;
      v28 = *(v43 + 8);
      *(v19 + 1) = v28;
      v43 += 24;
      v19 += 3;
      v18 += 3;
    }

    while (v43 != a4);
  }

  a1[1] = v18;
  if (v60 >= 1)
  {
    v44 = &v7[3 * a5];
    v45 = &v18[-3 * a5];
    for (i = v18; v45 < v10; i += 3)
    {
      v47 = *v45;
      *v45 = 0;
      *i = v47;
      *(i + 1) = *(v45 + 8);
      v45 += 24;
    }

    a1[1] = i;
    if (v19 != v44)
    {
      v48 = 0;
      v49 = -3 * a5;
      do
      {
        v50 = &v18[v48];
        v51 = v18[v49 - 3];
        v18[v49 - 3] = 0;
        v52 = v18[v48 - 3];
        v18[v48 - 3] = v51;

        *(v50 - 2) = v18[v49 - 2];
        *(v50 - 2) = v18[v49 - 1];
        *(v50 - 1) = HIDWORD(v18[v49 - 1]);
        v49 -= 3;
        v48 -= 3;
        v44 += 3;
      }

      while (v18 != v44);
    }

    do
    {
      objc_storeStrong(v7, *v6);
      v7[1] = *(v6 + 8);
      *&v28 = *(v6 + 16);
      v7[2] = v28;
      v6 += 24;
      v7 += 3;
    }

    while (v6 != v17);
  }

  return *&v28;
}

uint64_t sub_1837915A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF1BCE68;
  a2[1] = v2;
  return result;
}

uint64_t sub_1837915E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "PFbRKN15CoreHandwriting9synthesis9fast_path33CHAbstractFastPathCharacterHolderEE")
  {
    return a1 + 8;
  }

  if (((v2 & "PFbRKN15CoreHandwriting9synthesis9fast_path33CHAbstractFastPathCharacterHolderEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "PFbRKN15CoreHandwriting9synthesis9fast_path33CHAbstractFastPathCharacterHolderEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("PFbRKN15CoreHandwriting9synthesis9fast_path33CHAbstractFastPathCharacterHolderEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_183791658(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_1837916E4()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

id sub_183791730(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (!objc_msgSend_length(v9, v12, v13, v14, v15, v16) || ((*(*a1 + 32))(a1, v9) & 1) == 0)
  {
    v23 = 0;
    goto LABEL_28;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v17 = qword_1EA84DC88;
  v18 = os_signpost_id_generate(v17);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v19 = qword_1EA84DC88;
  v20 = v19;
  spid = v18;
  v21 = v18 - 1;
  if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v20, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CHDiffusionE2EPipeline::Run", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v22 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v22, OS_LOG_TYPE_DEFAULT, "BEGIN CHDiffusionE2EPipeline::Run", buf, 2u);
  }

  v23 = (*(*a1 + 16))(a1, v9, v10, v11, a5);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v24 = qword_1EA84DC98;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v30 = objc_msgSend_drawing(v23, v25, v26, v27, v28, v29);
    v36 = objc_msgSend_strokeCount(v30, v31, v32, v33, v34, v35);
    v42 = objc_msgSend_segmentContents(v23, v37, v38, v39, v40, v41);
    v48 = objc_msgSend_count(v42, v43, v44, v45, v46, v47);
    *buf = 134218240;
    v54 = v36;
    v55 = 2048;
    v56 = v48;
    _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_DEFAULT, "Synthesizer: Diffusion pipeline result with %lu strokes and %lu segments", buf, 0x16u);
  }

  if (qword_1EA84DC48 == -1)
  {
    v49 = qword_1EA84DC88;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v49 = qword_1EA84DC88;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_20:
      if (os_signpost_enabled(v49))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v49, OS_SIGNPOST_INTERVAL_END, spid, "CHDiffusionE2EPipeline::Run", "", buf, 2u);
      }
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v50 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v50, OS_LOG_TYPE_DEFAULT, "END CHDiffusionE2EPipeline::Run", buf, 2u);
  }

LABEL_28:

  return v23;
}

id sub_183791BAC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14 = objc_msgSend_componentsJoinedByString_(v7, v10, &stru_1EF1C0318, v11, v12, v13);
  if (!objc_msgSend_count(v7, v15, v16, v17, v18, v19) || ((*(*a1 + 32))(a1, v14) & 1) == 0)
  {
    v25 = 0;
    goto LABEL_23;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v20 = qword_1EA84DC88;
  v21 = os_signpost_id_generate(v20);

  if (qword_1EA84DC48 == -1)
  {
    v22 = qword_1EA84DC88;
    v23 = v21 - 1;
    if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_9;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v22 = qword_1EA84DC88;
    v23 = v21 - 1;
    if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_9;
    }
  }

  if (os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v21, "CHDiffusionE2EPipeline::ComputeStyleEmbedding", "", buf, 2u);
  }

LABEL_9:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v24 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 0;
    _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_DEFAULT, "BEGIN CHDiffusionE2EPipeline::ComputeStyleEmbedding", v31, 2u);
  }

  v25 = (*(*a1 + 24))(a1, v7, v8, v9);
  if (qword_1EA84DC48 == -1)
  {
    v26 = qword_1EA84DC88;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v26 = qword_1EA84DC88;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_15:
      if (os_signpost_enabled(v26))
      {
        *v30 = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v26, OS_SIGNPOST_INTERVAL_END, v21, "CHDiffusionE2EPipeline::ComputeStyleEmbedding", "", v30, 2u);
      }
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v27 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_DEFAULT, "END CHDiffusionE2EPipeline::ComputeStyleEmbedding", v29, 2u);
  }

LABEL_23:

  return v25;
}

void sub_183791F4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  a2;
  a3;
  v7 = a4;
  v8 = *(a1 + 16);
  v9[0] = *(a1 + 8);
  v9[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_183796FC0(&v10, v9);
}

void sub_183792EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_18369D8F8(&a43);
  sub_18369D8F8(v44 - 224);
  sub_183797280(&a17);

  sub_183797280(&a29);
  _Unwind_Resume(a1);
}

id sub_183793044(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 40);
  for (i = *(a1 + 48); v7 != i; v7 += 2)
  {
    (*(**v7 + 16))(*v7, a2, v5);
  }

  v8 = a2[4];
  v9 = a2[5];
  v17 = v8;
  v18 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a2[7];
  v15 = a2[6];
  v16 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = sub_18384A908(v8, &v15);
  v12 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  return v11;
}

void sub_1837931B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_18369D8F8(&a9);
  sub_18369D8F8(&a11);

  _Unwind_Resume(a1);
}

void sub_1837931E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 16);
  v11[0] = *(a1 + 8);
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_183796FC0(&v12, v11);
}

void sub_18379355C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_183797280(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1837935C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v4 = *(a1 + 8);
  v10 = objc_msgSend_length(v3, v5, v6, v7, v8, v9);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1837936B4;
  v15[3] = &unk_1E6DDDFE0;
  v15[4] = &v16;
  v15[5] = v4;
  objc_msgSend_enumerateCodepointsInRange_usingBlock_(v3, v11, 0, v10, v15, v12);
  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v13;
}

void sub_183793698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1837936B4(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = *(result + 40);
  v8 = *(v5 + 8);
  v6 = v5 + 8;
  v7 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v6;
  do
  {
    v10 = *(v7 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v7;
    }

    v7 = *(v7 + 8 * v12);
  }

  while (v7);
  if (v9 == v6 || *(v9 + 32) > a2)
  {
LABEL_9:
    *(*(*(result + 32) + 8) + 24) = 0;
    *a5 = 1;
  }

  return result;
}

void sub_183793708(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1EF1BCF40;
  sub_183794A3C(&v1, 2, @"diffusion_zhja.codemap");
}

void sub_1837947AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  sub_18369D8F8(v34);
  sub_18369D8F8(v35);
  sub_18369D8F8(v33);
  sub_18369D8F8(v32);
  sub_18369D8F8(&a31);
  sub_18369D8F8(&a21);
  sub_18369D8F8(&a23);
  sub_18369D8F8(&a25);
  sub_18369D8F8(&a27);
  sub_18369D8F8(&a29);
  sub_183794B98(v31);
  _Unwind_Resume(a1);
}

void sub_183794B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);

  _Unwind_Resume(a1);
}

void *sub_183794B98(void *a1)
{
  *a1 = &unk_1EF1BD018;
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  v6 = a1[5];
  if (v6)
  {
    v7 = a1[6];
    v8 = a1[5];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 8);
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        v7 -= 16;
      }

      while (v7 != v6);
      v8 = a1[5];
    }

    a1[6] = v6;
    operator delete(v8);
  }

  v10 = a1[4];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = a1[2];
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  return a1;
}

BOOL sub_183794D90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a1 + 8) || !*(a1 + 24))
  {
    return 0;
  }

  v11 = objc_msgSend_defaultURLOfModelInThisBundle(CHDiffusionModelZHJAE5ML, a2, a3, a4, a5, a6);
  if (v11)
  {
    v12 = objc_msgSend_defaultURLOfModelInThisBundle(CHStyleEncoderModelZHJAE5ML, v6, v7, v8, v9, v10);
    v13 = v12 != 0;

    return v13;
  }

  else
  {

    return 0;
  }
}

void sub_183794E34(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1EF1BCF88;
  sub_183794A3C(&v1, 3, @"diffusion_ko_style_encoder.codemap");
}

void sub_183795AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va3, a11);
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  va_copy(va2, va1);
  v18 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  va_copy(va3, va2);
  v21 = va_arg(va3, void);
  v23 = va_arg(va3, void);
  sub_18369D8F8(v12);
  sub_18369D8F8(v13);
  sub_18369D8F8(va3);
  sub_18369D8F8(va);
  sub_18369D8F8(va1);
  sub_18369D8F8(va2);
  sub_183794B98(v11);
  _Unwind_Resume(a1);
}

BOOL sub_183795D00(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a1 + 8) || !*(a1 + 24))
  {
    return 0;
  }

  v11 = objc_msgSend_defaultURLOfModelInThisBundle(CHDiffusionModelKOE5ML, a2, a3, a4, a5, a6);
  if (v11)
  {
    v12 = objc_msgSend_defaultURLOfModelInThisBundle(CHStyleEncoderModelKOE5ML, v6, v7, v8, v9, v10);
    v13 = v12 != 0;

    return v13;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_183795DA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_decomposedStringWithCanonicalMapping(a2, a2, a3, a4, a5, a6);
  v8 = sub_1837935C4(a1, v7);

  return v8;
}

void sub_183795DFC(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1EF1BCFD0;
  sub_1836EDEC0();
}

void sub_183796AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va3, a11);
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  va_copy(va2, va1);
  v18 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  va_copy(va3, va2);
  v21 = va_arg(va3, void);
  v23 = va_arg(va3, void);
  sub_18369D8F8(v12);
  sub_18369D8F8(v13);
  sub_18369D8F8(va3);
  sub_18369D8F8(va);
  sub_18369D8F8(va1);
  sub_18369D8F8(va2);
  sub_183794B98(v11);
  _Unwind_Resume(a1);
}

BOOL sub_183796CA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a1 + 8) || !*(a1 + 24))
  {
    return 0;
  }

  v11 = objc_msgSend_defaultURLOfModelInThisBundle(CHDiffusionModelE5ML, a2, a3, a4, a5, a6);
  if (v11)
  {
    v12 = objc_msgSend_defaultURLOfModelInThisBundle(CHStyleEncoderModelE5ML, v6, v7, v8, v9, v10);
    v13 = v12 != 0;

    return v13;
  }

  else
  {

    return 0;
  }
}

void sub_183796D4C(uint64_t a1, void *a2, void *a3)
{
  a2;
  v4 = a3;
  operator new();
}

void sub_183796E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v13);

  _Unwind_Resume(a1);
}

id sub_183796EC4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 144);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_183796F10(void *a1)
{
  sub_183794B98(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_183796F4C(void *a1)
{
  sub_183794B98(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_183796F88(void *a1)
{
  sub_183794B98(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_183796FC0(_OWORD *a1, uint64_t a2)
{
  a1[1] = 0u;
  *a1 = 0u;
  a1[2] = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  a1[3] = 0u;
  a1[4] = 0u;
  operator new();
}

void sub_18379722C(_Unwind_Exception *a1)
{
  v6 = v5;
  std::__shared_weak_count::~__shared_weak_count(v6);
  operator delete(v8);

  sub_18369D8F8(v4);
  sub_18369D8F8(v3);
  sub_18369D8F8(v2);
  sub_18369D8F8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_183797280(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 24);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 8);
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_1837973FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD0A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

id sub_183797490(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v11 = *a2;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(v2 + 24);
  v9 = objc_msgSend_componentsJoinedByString_(v4, v5, &stru_1EF1C0318, v6, v7, v8, v11, v3);

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  return v9;
}

uint64_t sub_183797568(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 40);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_1837975E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  if (v5 != *a3)
  {
    if (((v5 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v6 = v4[3];
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_183797744(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

id sub_1837977D8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(v2 + 16);
    if (atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
    }

    else
    {
      v6 = v4;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      v4 = v6;
    }
  }

  else
  {
    v4 = *(v2 + 16);
  }

  return v4;
}

uint64_t sub_1837978A4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 40);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_183797924(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  if (v5 != *a3)
  {
    if (((v5 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v6 = *v4;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_183797A80(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD1F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_183797B1C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_183797BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  v14 = v2;
  v15 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v4 = *(v2 + 72);
  v5 = (v2 + 80);
  if (v4 != (v2 + 80))
  {
    do
    {
      sub_1837DE228(&v16, v17, v4 + 4);
      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  v13 = 18;
  strcpy(__p, "style_input_length");
  v17[3] = __p;
  v6 = sub_18369F498(&v16, __p)[7];
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  sub_18368922C(&v16, v17[0]);
  v7 = v15;
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return v6;
}

void sub_183797D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, char *a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_18368922C(&a17, a18);
  sub_18369D8F8(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_183797D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  if (!v3)
  {
    return *(v2 + 120);
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  result = *(v2 + 120);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    return v5;
  }

  return result;
}

void sub_183797E14(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_183797F54(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD2F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_183797FE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  v14 = v2;
  v15 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v4 = *(v2 + 72);
  v5 = (v2 + 80);
  if (v4 != (v2 + 80))
  {
    do
    {
      sub_1837DE228(&v16, v17, v4 + 4);
      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  v13 = 12;
  strcpy(__p, "input_length");
  v17[3] = __p;
  v6 = sub_18369F498(&v16, __p)[7];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  sub_18368922C(&v16, v17[0]);
  v7 = v15;
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return v6;
}

void sub_18379816C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, char *a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_18368922C(&a17, a18);
  sub_18369D8F8(&a15);
  _Unwind_Resume(a1);
}

void sub_1837981BC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = *v3;
  v5 = v3[1];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1837982FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD3A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_183798398(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD3F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_183798434(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_1837984D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD498;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_183798564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  v14 = v2;
  v15 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v4 = *(v2 + 72);
  v5 = (v2 + 80);
  if (v4 != (v2 + 80))
  {
    do
    {
      sub_1837DE228(&v16, v17, v4 + 4);
      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  v13 = 16;
  strcpy(__p, "ids_input_length");
  v17[3] = __p;
  v6 = sub_18369F498(&v16, __p)[7];
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  sub_18368922C(&v16, v17[0]);
  v7 = v15;
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return v6;
}

void sub_1837986DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, char *a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_18368922C(&a17, a18);
  sub_18369D8F8(&a15);
  _Unwind_Resume(a1);
}

void sub_183798734(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_183798874(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD548;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_1837988F0(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 16;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    v21 = v7 >> 3;
    if (v7 >> 3 <= a4)
    {
      v21 = a4;
    }

    v22 = v7 >= 0x7FFFFFFFFFFFFFF0;
    v23 = 0xFFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      v23 = v21;
    }

    if (!(v23 >> 60))
    {
      operator new();
    }

    sub_18368964C();
  }

  v13 = *(a1 + 8);
  if (a4 <= (v13 - v8) >> 4)
  {
    if (a2 != a3)
    {
      do
      {
        v19 = *v5;
        v18 = v5[1];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = *(v8 + 1);
        *v8 = v19;
        *(v8 + 1) = v18;
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v5 += 2;
        v8 += 16;
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    for (; v13 != v8; v13 -= 16)
    {
      v27 = *(v13 - 1);
      if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v14 = (a2 + v13 - v8);
    if (v13 != v8)
    {
      do
      {
        v16 = *v5;
        v15 = v5[1];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v17 = *(v8 + 1);
        *v8 = v16;
        *(v8 + 1) = v15;
        if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        v5 += 2;
        v8 += 16;
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
    }

    v24 = v13;
    if (v14 != a3)
    {
      v24 = v13;
      v25 = v13;
      do
      {
        v26 = v14[1];
        *v25 = *v14;
        *(v25 + 1) = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v14 += 2;
        v25 += 16;
        v24 += 16;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v24;
  }
}

void sub_183798C88(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD598;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_183798D24(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD5E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_183798DC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_183798E5C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD688;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_183798EF8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD6D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_183798F94(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

id sub_183799028(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v17 = *a2;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(v2 + 24);
  v9 = objc_msgSend_componentsJoinedByString_(v4, v5, &stru_1EF1C0318, v6, v7, v8, v17, v3);

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v15 = objc_msgSend_decomposedStringWithCanonicalMapping(v9, v10, v11, v12, v13, v14);

  return v15;
}

uint64_t sub_183799124(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 40);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_1837991A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  if (v5 != *a3)
  {
    if (((v5 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v6 = v4[3];
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_183799300(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD7D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_18379939C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_183799438(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD870;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_1837994D4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD8C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_183799570(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD910;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_18379960C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BD960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

id sub_18379BE0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_string(a2, a2, a3, a4, a5, a6);

  return v6;
}

void sub_18379BE3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1E696AD98];
  v7 = *(a1 + 32);
  *&v8 = a2 / objc_msgSend_length(*(a1 + 40), a2, a3, a4, a5, a6);
  v18 = objc_msgSend_numberWithFloat_(v6, v9, v10, v11, v12, v13, v8);
  objc_msgSend_addObject_(v7, v14, v18, v15, v16, v17);
}

uint64_t sub_18379BEC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = objc_msgSend_substroke(*(a1 + 32), v4, v5, v6, v7, v8);
  v15 = objc_msgSend_strokeIdentifier(v9, v10, v11, v12, v13, v14);
  v20 = objc_msgSend_containsObject_(v3, v16, v15, v17, v18, v19);

  return v20;
}

void sub_18379BF34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18379BF68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v17 = objc_msgSend_substroke(a2, a2, a3, a4, a5, a6);
  v12 = objc_msgSend_strokeIdentifier(v17, v7, v8, v9, v10, v11);
  objc_msgSend_addObject_(v6, v13, v12, v14, v15, v16);
}

void sub_18379C91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_18379CB50(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v10 = *(a5 + 8);
    v9 = *(a5 + 16);
    if (v10 >= v9)
    {
      v12 = *a5;
      v13 = v10 - *a5;
      v14 = v13 >> 4;
      v15 = (v13 >> 4) + 1;
      if (v15 >> 60)
      {
        sub_1837A0C50();
      }

      v16 = v9 - v12;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 60))
        {
          operator new();
        }

        sub_183688F00();
      }

      v18 = (16 * v14);
      *v18 = a6;
      v18[1] = 0;
      v11 = 16 * v14 + 16;
      v19 = &v18[-2 * (v13 >> 4)];
      memcpy(v19, v12, v13);
      *a5 = v19;
      *(a5 + 8) = v11;
      *(a5 + 16) = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v10 = a6;
      v10[1] = 0;
      v11 = (v10 + 2);
    }

    *(a5 + 8) = v11;
  }

  v21 = *a2;
  v20 = a2[1];
  if ((v20 - *a2) > 0x20)
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (v20 != v21)
  {
    operator new();
  }
}

void sub_18379D470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(a11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

float64x2_t sub_18379D4D4(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  while (v2 != v3)
  {
    v4 = *v2;
    v5 = v2[1];
    if (*v2 != v5)
    {
      v6 = *(a1 + 8);
      do
      {
        *v4 = vmulq_f64(v6, *v4);
        v4 += 2;
      }

      while (v4 != v5);
    }

    v2 += 3;
  }

  result = vmulq_f64(*(a1 + 8), *(a2 + 48));
  *(a2 + 48) = result;
  return result;
}

void sub_18379D524(uint64_t a1, void **a2, void **a3)
{
  v6 = *a2;
  v5 = a2[1];
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v7 = v5 - v6;
  if (v7)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v7 >> 3)) >> 61))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  (*(*a1 + 40))(a1, &v69, a2);
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v8 = a2[1];
  if (v8 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_18369F168();
  }

  v58 = a3;
  v59 = a2;
  v9 = v69;
  v10 = v70;
  if (v69 != v70)
  {
    v11 = v67;
    do
    {
      v12 = *v59 + 24 * *v9;
      if (v11 < v68)
      {
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
        *v11 = *v12;
        v11[2] = *(v12 + 16);
        *v12 = 0;
        *(v12 + 8) = 0;
        *(v12 + 16) = 0;
        v11 += 3;
      }

      else
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v66) >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_18369F168();
        }

        if (0x5555555555555556 * ((v68 - v66) >> 3) > v14)
        {
          v14 = 0x5555555555555556 * ((v68 - v66) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v68 - v66) >> 3) >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          if (v15 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_183688F00();
        }

        v16 = 24 * v13;
        *v16 = *v12;
        *(v16 + 16) = *(v12 + 16);
        *v12 = 0;
        *(v12 + 8) = 0;
        *(v12 + 16) = 0;
        v11 = (24 * v13 + 24);
        v17 = v66;
        v18 = (v16 - (v67 - v66));
        memcpy(v18, v66, v67 - v66);
        v66 = v18;
        v67 = v11;
        v68 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      v67 = v11;
      ++v9;
    }

    while (v9 != v10);
  }

  if (&v66 != v59)
  {
    sub_1836EDFE0(v59, v66, v67, 0xAAAAAAAAAAAAAAABLL * ((v67 - v66) >> 3));
  }

  if (v58)
  {
    __p = 0;
    v64 = 0;
    v65 = 0;
    v19 = *v59;
    if (v59[1] != *v59)
    {
      v20 = 0;
      do
      {
        v21 = &v19[3 * v20];
        v23 = *v21;
        v22 = v21[1];
        v60 = v20 + 1;
        v24 = __p;
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v64 - __p) >> 3);
        if (v25 <= v20)
        {
          sub_18387E2B4(&__p, v60 - v25);
          v24 = __p;
        }

        v26 = (v22 - v23) >> 5;
        v27 = &v24[24 * v20];
        if (v26 > (v27[2] - *v27) >> 4)
        {
          if (!(v26 >> 60))
          {
            operator new();
          }

          sub_1837A0C50();
        }

        if (v22 != v23)
        {
          v28 = 0;
          if (v26 <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v26;
          }

          v30 = v27[1];
          do
          {
            v31 = v27[2];
            if (v30 < v31)
            {
              *v30 = *(v69 + v20);
              *(v30 + 1) = v28;
              v30 += 16;
            }

            else
            {
              v32 = *v27;
              v33 = v30 - *v27;
              v34 = v33 >> 4;
              v35 = (v33 >> 4) + 1;
              if (v35 >> 60)
              {
                sub_1837A0C50();
              }

              v36 = v31 - v32;
              if (v36 >> 3 > v35)
              {
                v35 = v36 >> 3;
              }

              if (v36 >= 0x7FFFFFFFFFFFFFF0)
              {
                v37 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v37 = v35;
              }

              if (v37)
              {
                if (!(v37 >> 60))
                {
                  operator new();
                }

                sub_183688F00();
              }

              v38 = (16 * v34);
              *v38 = *(v69 + v20);
              v38[1] = v28;
              v30 = (16 * v34 + 16);
              v39 = &v38[-2 * (v33 >> 4)];
              memcpy(v39, v32, v33);
              *v27 = v39;
              v27[1] = v30;
              v27[2] = 0;
              if (v32)
              {
                operator delete(v32);
              }
            }

            v27[1] = v30;
            ++v28;
          }

          while (v29 != v28);
        }

        v19 = *v59;
        ++v20;
      }

      while (v60 < 0xAAAAAAAAAAAAAAABLL * ((v59[1] - *v59) >> 3));
    }

    sub_18387DD3C(v58, &__p, &v61);
    v40 = *v58;
    if (*v58)
    {
      v41 = v58[1];
      v42 = *v58;
      if (v41 != v40)
      {
        v43 = v58[1];
        do
        {
          v45 = *(v43 - 3);
          v43 -= 24;
          v44 = v45;
          if (v45)
          {
            *(v41 - 2) = v44;
            operator delete(v44);
          }

          v41 = v43;
        }

        while (v43 != v40);
        v42 = *v58;
      }

      v58[1] = v40;
      operator delete(v42);
      *v58 = 0;
      v58[1] = 0;
      v58[2] = 0;
    }

    *v58 = v61;
    v46 = __p;
    v58[2] = v62;
    if (v46)
    {
      v47 = v64;
      v48 = v46;
      if (v64 != v46)
      {
        v49 = v64;
        do
        {
          v51 = *(v49 - 3);
          v49 -= 24;
          v50 = v51;
          if (v51)
          {
            *(v47 - 2) = v50;
            operator delete(v50);
          }

          v47 = v49;
        }

        while (v49 != v46);
        v48 = __p;
      }

      v64 = v46;
      operator delete(v48);
    }
  }

  v52 = v66;
  if (v66)
  {
    v53 = v67;
    v54 = v66;
    if (v67 != v66)
    {
      v55 = v67;
      do
      {
        v57 = *(v55 - 3);
        v55 -= 3;
        v56 = v57;
        if (v57)
        {
          *(v53 - 2) = v56;
          operator delete(v56);
        }

        v53 = v55;
      }

      while (v55 != v52);
      v54 = v66;
    }

    v67 = v52;
    operator delete(v54);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }
}

void sub_18379DBD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  sub_18369F0F0(&a16);
  sub_18369F0F0(&a19);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_18379DC34(uint64_t *a1, char **a2, void *a3, __n128 a4)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  v4 = a3[1];
  if (v4 != *a3)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v4 - *a3) >> 3)) >> 59))
    {
      operator new();
    }

    sub_1837A0C50();
  }

  v6 = *a2;
  v5 = a2[1];
  v16[0] = &__p;
  v16[1] = a1;
  if ((v5 - v6) >> 3 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = (v5 - v6) >> 3;
    while (1)
    {
      v9 = operator new(8 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_11;
      }
    }

    v12 = v9;
  }

LABEL_11:
  sub_1837A0C68(v6, v5, v16, (v5 - v6) >> 3, v12, v8, a4);
  if (v12)
  {
    operator delete(v12);
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

void sub_18379DF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (v13)
  {
    operator delete(v13);
    v15 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v15 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

void sub_18379DF9C(uint64_t a1, const double **a2, void *a3)
{
  v87 = 0;
  v86 = 0uLL;
  __p = 0;
  v83 = 0;
  v84 = 0;
  v5 = *a2;
  if (*a2 != a2[1] - 3)
  {
    v6 = a3;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      if (v6)
      {
        v10 = *v5;
        v9 = *(v5 + 1);
        v4 = 0;
        if (v9 == *v5)
        {
          v3 = 0;
        }

        else
        {
          v11 = 0;
          do
          {
            v12 = v4;
            v13 = v4 >> 4;
            if (((v4 >> 4) + 1) >> 60)
            {
              sub_1837A0C50();
            }

            if (v4 >> 4 != -1)
            {
              if (!(((v4 >> 4) + 1) >> 60))
              {
                operator new();
              }

              sub_183688F00();
            }

            v14 = (16 * v13);
            v3 = 0;
            *v14 = v8;
            v14[1] = v11;
            v4 = 16 * v13 + 16;
            memcpy(0, 0, v12);
            ++v11;
            v10 = *v5;
            v9 = *(v5 + 1);
          }

          while (v11 < (v9 - *v5) >> 5);
        }

        v7 = 1;
      }

      else
      {
        v10 = *v5;
        v9 = *(v5 + 1);
      }

      v15 = v9 - v10;
      v16 = (v9 - v10) >> 5;
      v17 = v5 == *a2;
      v18 = v5 == *a2 ? v16 + 1 : (v9 - v10) >> 5;
      if (v18 % *(a1 + 8))
      {
        break;
      }

LABEL_51:
      v30 = v8 + 1;
      v6 = a3;
      if (v7)
      {
        v31 = __p;
        v32 = 0xAAAAAAAAAAAAAAABLL * ((v83 - __p) >> 3);
        if (v30 > v32)
        {
          sub_18387E2B4(&__p, v30 - v32);
          v31 = __p;
        }

        sub_1837A1EB0(v31 + 24 * v8, 0, v4, v4 >> 4);
      }

      v5 += 3;
      ++v8;
      if (v5 == a2[1] - 3)
      {
        goto LABEL_54;
      }
    }

    v76 = v16 - 1;
    v77 = v7;
    while (1)
    {
      v19 = *(v5 + 2);
      if (v9 >= v19)
      {
        break;
      }

      v20 = v86;
      *(v9 + 16) = v87;
      *v9 = v20;
      *(v9 + 24) = 1;
      *(v9 + 25) = *v85;
      *(v9 + 28) = *&v85[3];
      v9 += 32;
      *(v5 + 1) = v9;
      if (v7)
      {
        goto LABEL_40;
      }

LABEL_24:
      v10 = *v5;
      v15 = v9 - *v5;
      v16 = v15 >> 5;
      if (!(((v15 >> 5) + v17) % *(a1 + 8)))
      {
        goto LABEL_51;
      }
    }

    v21 = v16 + 1;
    if ((v16 + 1) >> 59)
    {
      sub_18369F168();
    }

    v22 = v19 - v10;
    if (v22 >> 4 > v21)
    {
      v21 = v22 >> 4;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFE0)
    {
      v23 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (!(v23 >> 59))
      {
        operator new();
      }

      sub_183688F00();
    }

    v24 = 32 * v16;
    *v24 = v86;
    *(v24 + 16) = v87;
    *(v24 + 24) = 1;
    *(v24 + 25) = *v85;
    *(v24 + 28) = *&v85[3];
    v9 = 32 * v16 + 32;
    memcpy(0, v10, v15);
    *v5 = 0.0;
    *(v5 + 1) = v9;
    v5[2] = 0.0;
    if (v10)
    {
      operator delete(v10);
    }

    v7 = v77;
    *(v5 + 1) = v9;
    if ((v77 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_40:
    if (v4 < v3)
    {
      *v4 = v8;
      *(v4 + 8) = v76;
      v4 += 16;
    }

    else
    {
      v25 = v4;
      v26 = v4 >> 4;
      v27 = (v4 >> 4) + 1;
      if (v27 >> 60)
      {
        sub_1837A0C50();
      }

      if (v3 >> 3 > v27)
      {
        v27 = v3 >> 3;
      }

      if (v3 >= 0x7FFFFFFFFFFFFFF0)
      {
        v28 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28)
      {
        if (!(v28 >> 60))
        {
          operator new();
        }

        sub_183688F00();
      }

      v29 = (16 * v26);
      v3 = 0;
      *v29 = v8;
      v29[1] = v76;
      v4 = 16 * v26 + 16;
      memcpy(0, 0, v25);
    }

    v9 = *(v5 + 1);
    goto LABEL_24;
  }

LABEL_54:
  if (*(a1 + 16) == 1)
  {
    while (1)
    {
      v33 = *a2;
      v34 = a2[1];
      if (*a2 == v34)
      {
        v36 = 0;
      }

      else
      {
        v35 = v34 - v33 - 24;
        if (v35 >= 0x60)
        {
          v37 = v35 / 0x18 + 1;
          v38 = v37 & 3;
          if ((v37 & 3) == 0)
          {
            v38 = 4;
          }

          v39 = v37 - v38;
          v40 = &v33[3 * v39];
          v41 = 0uLL;
          v42 = 0uLL;
          do
          {
            v43 = v33;
            v33 += 12;
            v88 = vld3q_f64(v43);
            v43 += 6;
            v41 = vsraq_n_s64(v41, vsubq_s64(v88.val[1], v88.val[0]), 5uLL);
            v89 = vld3q_f64(v43);
            v42 = vsraq_n_s64(v42, vsubq_s64(v89.val[1], v89.val[0]), 5uLL);
            v39 -= 4;
          }

          while (v39);
          v36 = vaddvq_s64(vaddq_s64(v42, v41));
          v33 = v40;
        }

        else
        {
          v36 = 0;
        }

        do
        {
          v44 = *v33;
          v45 = *(v33 + 1);
          v33 += 3;
          v36 += (v45 - *&v44) >> 5;
        }

        while (v33 != v34);
      }

      if (!(v36 % *(a1 + 8)))
      {
        break;
      }

      v46 = *(v34 - 2);
      v47 = *(v34 - 1);
      if (v46 < v47)
      {
        *v46 = v86;
        *(v46 + 16) = v87;
        *(v46 + 24) = 1;
        *(v46 + 25) = *v85;
        *(v46 + 28) = *&v85[3];
        *(v34 - 2) = v46 + 32;
        if ((*(a1 + 16) & 1) == 0)
        {
          break;
        }
      }

      else
      {
        v48 = *(v34 - 3);
        v49 = v46 - v48;
        v50 = (v46 - v48) >> 5;
        v51 = v50 + 1;
        if ((v50 + 1) >> 59)
        {
          sub_18369F168();
        }

        v52 = v47 - v48;
        if (v52 >> 4 > v51)
        {
          v51 = v52 >> 4;
        }

        if (v52 >= 0x7FFFFFFFFFFFFFE0)
        {
          v53 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v51;
        }

        if (v53)
        {
          if (!(v53 >> 59))
          {
            operator new();
          }

          sub_183688F00();
        }

        v54 = v50;
        v55 = 32 * v50;
        *v55 = v86;
        *(v55 + 16) = v87;
        *(v55 + 24) = 1;
        *(v55 + 25) = *v85;
        *(v55 + 28) = *&v85[3];
        v56 = 32 * v50 + 32;
        v57 = (v55 - 32 * v54);
        memcpy(v57, v48, v49);
        *(v34 - 3) = v57;
        *(v34 - 2) = v56;
        *(v34 - 1) = 0;
        if (v48)
        {
          operator delete(v48);
        }

        *(v34 - 2) = v56;
        if ((*(a1 + 16) & 1) == 0)
        {
          break;
        }
      }
    }
  }

  if (a3)
  {
    v58 = a2[1];
    v59 = 0xAAAAAAAAAAAAAAABLL * (v58 - *a2) - 1;
    v79 = 0xAAAAAAAAAAAAAAABLL * (v58 - *a2);
    if (*(v58 - 2) != *(v58 - 3))
    {
      operator new();
    }

    v60 = __p;
    v61 = 0xAAAAAAAAAAAAAAABLL * ((v83 - __p) >> 3);
    if (v79 > v61)
    {
      sub_18387E2B4(&__p, v79 - v61);
      v60 = __p;
    }

    sub_1837A1EB0(v60 + 24 * v59, 0, 0, 0);
    sub_18387DD3C(a3, &__p, &v80);
    v62 = *a3;
    if (*a3)
    {
      v63 = a3[1];
      v64 = *a3;
      if (v63 != v62)
      {
        v65 = a3[1];
        do
        {
          v67 = *(v65 - 3);
          v65 -= 24;
          v66 = v67;
          if (v67)
          {
            *(v63 - 2) = v66;
            operator delete(v66);
          }

          v63 = v65;
        }

        while (v65 != v62);
        v64 = *a3;
      }

      a3[1] = v62;
      operator delete(v64);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    *a3 = v80;
    a3[2] = v81;
  }

  v68 = __p;
  if (__p)
  {
    v69 = v83;
    v70 = __p;
    if (v83 != __p)
    {
      v71 = v83;
      do
      {
        v73 = *(v71 - 3);
        v71 -= 24;
        v72 = v73;
        if (v73)
        {
          *(v69 - 2) = v72;
          operator delete(v72);
        }

        v69 = v71;
      }

      while (v71 != v68);
      v70 = __p;
    }

    v83 = v68;
    operator delete(v70);
  }
}

void sub_18379E878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (v20)
  {
    operator delete(v20);
  }

  if (a14)
  {
    if (v19)
    {
      operator delete(v19);
    }
  }

  sub_18369F0F0(&a19);
  _Unwind_Resume(a1);
}

void sub_18379E8FC(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v4 = v3 - v2 - 24;
    if (v4 >= 0x60)
    {
      v6 = v4 / 0x18 + 1;
      v7 = v6 & 3;
      if ((v6 & 3) == 0)
      {
        v7 = 4;
      }

      v8 = v6 - v7;
      v9 = &v2[3 * v8];
      v10 = 0uLL;
      v11 = 0uLL;
      do
      {
        v12 = v2;
        v2 += 12;
        v27 = vld3q_f64(v12);
        v12 += 6;
        v10 = vsraq_n_s64(v10, vsubq_s64(v27.val[1], v27.val[0]), 5uLL);
        v28 = vld3q_f64(v12);
        v11 = vsraq_n_s64(v11, vsubq_s64(v28.val[1], v28.val[0]), 5uLL);
        v8 -= 4;
      }

      while (v8);
      v5 = vaddvq_s64(vaddq_s64(v11, v10));
      v2 = v9;
    }

    else
    {
      v5 = 0;
    }

    do
    {
      v13 = *v2;
      v14 = *(v2 + 1);
      v2 += 3;
      v5 += (v14 - *&v13) >> 5;
    }

    while (v2 != v3);
  }

  v15 = *(a1 + 8);
  if (v5 % v15)
  {
    v16 = 0;
    v17 = v15 - v5 % v15;
    v18 = *(v3 - 2);
    do
    {
      v19 = *(v3 - 1);
      if (v18 < v19)
      {
        *(v18 + 16) = 0;
        *v18 = 0uLL;
        *(v18 + 24) = 1;
        v18 += 32;
      }

      else
      {
        v20 = *(v3 - 3);
        v21 = v18 - v20;
        v22 = (v18 - v20) >> 5;
        v23 = v22 + 1;
        if ((v22 + 1) >> 59)
        {
          sub_18369F168();
        }

        v24 = v19 - v20;
        if (v24 >> 4 > v23)
        {
          v23 = v24 >> 4;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFE0)
        {
          v25 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          if (!(v25 >> 59))
          {
            operator new();
          }

          sub_183688F00();
        }

        v26 = 32 * v22;
        *v26 = 0uLL;
        *(v26 + 16) = 0;
        *(v26 + 24) = 1;
        v18 = 32 * v22 + 32;
        memcpy(0, v20, v21);
        *(v3 - 3) = 0;
        *(v3 - 2) = v18;
        *(v3 - 1) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      *(v3 - 2) = v18;
      ++v16;
    }

    while (v17 > v16);
  }
}

uint64_t sub_18379EB10(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = -v2;
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v2 >= v4)
  {
    v2 = *(a2 + 48);
  }

  if (v4 < v3)
  {
    v2 = v3;
  }

  *(a2 + 48) = v2;
  v6 = *(result + 8);
  if (v6 >= v5)
  {
    v6 = v5;
  }

  if (v5 < v3)
  {
    v6 = v3;
  }

  *(a2 + 56) = v6;
  return result;
}

void sub_18379EB4C(uint64_t a1, uint64_t *a2, void **a3)
{
  __p = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v4 = *a2;
  if (*a2 == a2[1])
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = v4 + v7;
      if (*(v4 + v7) != *(v4 + v7 + 8))
      {
        if (a3)
        {
          operator new();
        }

        sub_18379CB50(&v29, (v4 + v7), *(a1 + 20), *(a1 + 16), v9, v10 - 1);
        v12 = *v11;
        if (*v11)
        {
          *(v11 + 8) = v12;
          operator delete(v12);
          *v11 = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
        }

        v13 = v4 + v7;
        *v13 = v29;
        *(v13 + 16) = v30;
        v8 = v31;
        if (v31)
        {
          v14 = __p;
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v33 - __p) >> 3);
          if (v15 < v10)
          {
            sub_18387E2B4(&__p, v10 - v15);
            v14 = __p;
          }

          if (&v14[v7] != v8)
          {
            sub_1837A1EB0(&v14[v7], *v8, v8[1], (v8[1] - *v8) >> 4);
          }

          v9 = v8;
        }

        else
        {
          v9 = 0;
        }
      }

      v7 += 24;
      ++v10;
    }

    while (v4 + v7 != a2[1]);
  }

  if (a3)
  {
    sub_18387DD3C(&__p, a3, &v29);
    v16 = *a3;
    if (*a3)
    {
      v17 = a3[1];
      v18 = *a3;
      if (v17 != v16)
      {
        v19 = a3[1];
        do
        {
          v21 = *(v19 - 3);
          v19 -= 24;
          v20 = v21;
          if (v21)
          {
            *(v17 - 2) = v20;
            operator delete(v20);
          }

          v17 = v19;
        }

        while (v19 != v16);
        v18 = *a3;
      }

      a3[1] = v16;
      operator delete(v18);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    *a3 = v29;
    a3[2] = v30;
  }

  v31 = 0;
  if (v8)
  {
    v22 = *v8;
    if (*v8)
    {
      v8[1] = v22;
      operator delete(v22);
    }

    MEMORY[0x1865E5EC0](v8, 0x20C40960023A9);
  }

  v23 = __p;
  if (__p)
  {
    v24 = v33;
    v25 = __p;
    if (v33 != __p)
    {
      v26 = v33;
      do
      {
        v28 = *(v26 - 3);
        v26 -= 24;
        v27 = v28;
        if (v28)
        {
          *(v24 - 2) = v27;
          operator delete(v27);
        }

        v24 = v26;
      }

      while (v26 != v23);
      v25 = __p;
    }

    v33 = v23;
    operator delete(v25);
  }
}

void sub_18379EDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  sub_18379EE20(va);
  sub_18369F0F0(va1);
  _Unwind_Resume(a1);
}

void *sub_18379EE20(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1865E5EC0](v1, 0x20C40960023A9);
    return v2;
  }

  return result;
}

float64x2_t sub_18379EE78(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 3)) >> 59))
    {
      operator new();
    }

    sub_1837A0C50();
  }

  v4 = *(a1 + 16);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  v5 = *(a1 + 8) / v4;
  if (v2 != v3)
  {
    v6 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v7 = -1.79769313e308;
    v8 = *a2;
    v9 = v6;
    do
    {
      v11 = *v8;
      v12 = v8[1];
      if (*v8 == v12)
      {
        goto LABEL_8;
      }

      v10 = -1.79769313e308;
      v13 = v6;
      do
      {
        v14 = *v11;
        v11 += 2;
        v13 = vbslq_s8(vcgtq_f64(v13, v14), v14, v13);
        v15 = v14.f64[1];
        if (v10 < v14.f64[1])
        {
          v10 = v15;
        }
      }

      while (v11 != v12);
      v9 = vbslq_s8(vcgtq_f64(v9, v13), v13, v9);
      if (v7 >= v10)
      {
LABEL_8:
        v10 = v7;
      }

      v8 += 3;
      v7 = v10;
    }

    while (v8 != v3);
    v16 = *a2;
    do
    {
      v17 = *v16;
      v18 = v16[1];
      while (v17 != v18)
      {
        if ((LOBYTE(v17[1].f64[1]) & 1) == 0)
        {
          *v17 = vsubq_f64(*v17, v9);
        }

        v17 += 2;
      }

      v16 += 3;
    }

    while (v16 != v3);
    do
    {
      v19 = *v2;
      v20 = v2[1];
      while (v19 != v20)
      {
        if ((LOBYTE(v19[1].f64[1]) & 1) == 0)
        {
          *v19 = vmulq_n_f64(*v19, v5);
        }

        v19 += 2;
      }

      v2 += 3;
    }

    while (v2 != v3);
  }

  result = vmulq_n_f64(*(a2 + 48), v5);
  *(a2 + 48) = result;
  return result;
}

void sub_18379F2D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_18379F2F0(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 != v3)
  {
    do
    {
      while (1)
      {
        v6 = *v2;
        v5 = v2[1];
        v8 = *(v5 - 4);
        v7 = v5 - 4;
        if (v8 > **v2)
        {
          break;
        }

        v17 = *(a2 + 32);
        v18 = *(a2 + 40);
        if (v17 == v18 << 6)
        {
          if ((v17 + 1) < 0)
          {
LABEL_28:
            sub_18369F168();
          }

          v19 = v18 << 7;
          if (v19 <= (v17 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v19 = (v17 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          if (v17 <= 0x3FFFFFFFFFFFFFFELL)
          {
            v20 = v19;
          }

          else
          {
            v20 = 0x7FFFFFFFFFFFFFFFLL;
          }

          result = sub_1836F8430(a2 + 24, v20);
          v17 = *(a2 + 32);
        }

        *(a2 + 32) = v17 + 1;
        *(*(a2 + 24) + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v17);
        v2 += 3;
        if (v2 == v3)
        {
          return result;
        }
      }

      if (v7 > v6)
      {
        v9 = v6 + 4;
        do
        {
          *v21 = *(v9 - 2);
          *&v21[16] = *(v9 - 1);
          v10 = *(v7 + 9);
          *(v9 - 2) = *v7;
          *(v9 - 23) = v10;
          *v7 = *v21;
          *(v7 + 9) = *&v21[9];
          v7 -= 4;
          v11 = v9 >= v7;
          v9 += 4;
        }

        while (!v11);
      }

      v12 = *(a2 + 32);
      v13 = *(a2 + 40);
      if (v12 == v13 << 6)
      {
        if ((v12 + 1) < 0)
        {
          goto LABEL_28;
        }

        v14 = v13 << 7;
        if (v14 <= (v12 & 0x3FFFFFFFFFFFFFC0) + 64)
        {
          v14 = (v12 & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        if (v12 <= 0x3FFFFFFFFFFFFFFELL)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        result = sub_1836F8430(a2 + 24, v15);
        v12 = *(a2 + 32);
      }

      *(a2 + 32) = v12 + 1;
      *(*(a2 + 24) + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v2 += 3;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_18379F484(uint64_t a1, uint64_t **a2, void **a3)
{
  __p = 0;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v3 - *a2)) >> 61))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v4 = a3;
  if (*(a1 + 8) >= 1)
  {
    v5 = a2[1];
    if (*a2 != v5)
    {
      v6 = 0.0;
      v7 = *a2;
      while (1)
      {
        v9 = *v7;
        v8 = v7[1];
        v10 = 0.0;
        if (*v7 != v8)
        {
          v12 = *v9;
          v11 = &v9[2];
          v13 = v12;
          if (v11 != v8)
          {
            v14 = v8 - v11 - 32;
            if (v14 >= 0x80)
            {
              v16 = (v14 >> 5) + 1;
              v17 = v16 & 3;
              if ((v16 & 3) == 0)
              {
                v17 = 4;
              }

              v18 = v16 - v17;
              v15 = &v11[2 * v18];
              v19 = vdupq_lane_s64(*&v13.f64[0], 0);
              v20 = v11 + 4;
              do
              {
                i64 = v20[-4].i64;
                v87 = vld4q_f64(i64);
                v22 = v20[2];
                v23 = *v20;
                v20 += 8;
                v24 = vzip1q_s64(v23, v22);
                v25 = vzip2q_s64(v23, v22);
                v26 = vsubq_f64(vextq_s8(v19, v87.val[0], 8uLL), v87.val[0]);
                v27 = vsubq_f64(vextq_s8(v87.val[0], v24, 8uLL), v24);
                v28 = vsubq_f64(vextq_s8(v13, v87.val[1], 8uLL), v87.val[1]);
                v87.val[0] = vsubq_f64(vextq_s8(v87.val[1], v25, 8uLL), v25);
                v29 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v28, v28), v26, v26));
                v87.val[0] = vsqrtq_f64(vmlaq_f64(vmulq_f64(v87.val[0], v87.val[0]), v27, v27));
                v10 = v10 + v29.f64[0] + v29.f64[1] + v87.val[0].f64[0] + v87.val[0].f64[1];
                v13 = v25;
                v19 = v24;
                v18 -= 4;
              }

              while (v18);
              v13 = v22;
            }

            else
            {
              v15 = v11;
            }

            do
            {
              v30 = *v15;
              v15 += 2;
              v31 = vsubq_f64(v13, v30);
              v10 = v10 + sqrt(COERCE_DOUBLE(*&vmulq_f64(v31, v31).f64[1]) + v31.f64[0] * v31.f64[0]);
              v13 = v30;
            }

            while (v15 != v8);
          }
        }

        v6 = v6 + v10;
        v7 += 3;
        if (v7 == v5)
        {
          if (!((0xAAAAAAAAAAAAAAABLL * (v5 - *a2)) >> 62))
          {
            operator new();
          }

          sub_18369761C();
        }
      }
    }

    if (*(a1 + 8))
    {
      v32 = v5 - *a2;
      if (v32)
      {
        if (!((0xAAAAAAAAAAAAAAABLL * (v32 >> 3)) >> 61))
        {
          operator new();
        }

        sub_1836D58DC();
      }
    }
  }

  v33 = *a2;
  if (*a2 == a2[1])
  {
    v34 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    do
    {
      if (*v33 != v33[1])
      {
        if (v4)
        {
          operator new();
        }

        v37 = *(8 * v36);
        v39 = *v33;
        v38 = v33[1];
        if (v37 >= 2 && v38 - v39 == 32)
        {
          if (!(v37 >> 59))
          {
            operator new();
          }

          sub_18369F168();
        }

        v40 = 0.0;
        if (v39 != v38)
        {
          v42 = *v39;
          v41 = &v39[2];
          v43 = v42;
          if (v41 != v38)
          {
            v44 = v38 - v41 - 32;
            if (v44 >= 0x80)
            {
              v46 = (v44 >> 5) + 1;
              v47 = v46 & 3;
              if ((v46 & 3) == 0)
              {
                v47 = 4;
              }

              v48 = v46 - v47;
              v45 = &v41[2 * v48];
              v49 = vdupq_lane_s64(*&v43.f64[0], 0);
              v50 = v41 + 4;
              do
              {
                v51 = v50[-4].i64;
                v88 = vld4q_f64(v51);
                v52 = v50[2];
                v53 = *v50;
                v50 += 8;
                v54 = vzip1q_s64(v53, v52);
                v55 = vzip2q_s64(v53, v52);
                v56 = vsubq_f64(vextq_s8(v49, v88.val[0], 8uLL), v88.val[0]);
                v57 = vsubq_f64(vextq_s8(v88.val[0], v54, 8uLL), v54);
                v58 = vsubq_f64(vextq_s8(v43, v88.val[1], 8uLL), v88.val[1]);
                v88.val[0] = vsubq_f64(vextq_s8(v88.val[1], v55, 8uLL), v55);
                v59 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v58, v58), v56, v56));
                v88.val[0] = vsqrtq_f64(vmlaq_f64(vmulq_f64(v88.val[0], v88.val[0]), v57, v57));
                v40 = v40 + v59.f64[0] + v59.f64[1] + v88.val[0].f64[0] + v88.val[0].f64[1];
                v43 = v55;
                v49 = v54;
                v48 -= 4;
              }

              while (v48);
              v43 = v52;
            }

            else
            {
              v45 = v41;
            }

            do
            {
              v60 = *v45;
              v45 += 2;
              v61 = vsubq_f64(v43, v60);
              v40 = v40 + sqrt(COERCE_DOUBLE(*&vmulq_f64(v61, v61).f64[1]) + v61.f64[0] * v61.f64[0]);
              v43 = v60;
            }

            while (v45 != v38);
          }
        }

        sub_18379CB50(&v81, v33, v37, 1, v35, v36);
        v62 = *v33;
        if (*v33)
        {
          v33[1] = v62;
          operator delete(v62);
          *v33 = 0;
          v33[1] = 0;
          v33[2] = 0;
        }

        *v33 = v81;
        v33[2] = v82;
        v34 = v83;
        if (v83)
        {
          v63 = __p;
          v64 = 0xAAAAAAAAAAAAAAABLL * ((v85 - __p) >> 3);
          if (v36 + 1 > v64)
          {
            sub_18387E2B4(&__p, v36 + 1 - v64);
            v63 = __p;
          }

          v65 = v63 + 24 * v36;
          if (v65 != v34)
          {
            sub_1837A1EB0(v65, *v34, v34[1], (v34[1] - *v34) >> 4);
          }

          v35 = v34;
        }

        else
        {
          v35 = 0;
        }
      }

      v33 += 3;
      ++v36;
    }

    while (v33 != a2[1]);
  }

  if (v4)
  {
    sub_18387DD3C(&__p, v4, &v81);
    v66 = *v4;
    if (*v4)
    {
      v67 = v4[1];
      v68 = *v4;
      if (v67 != v66)
      {
        v69 = v4[1];
        do
        {
          v71 = *(v69 - 3);
          v69 -= 24;
          v70 = v71;
          if (v71)
          {
            *(v67 - 2) = v70;
            operator delete(v70);
          }

          v67 = v69;
        }

        while (v69 != v66);
        v4 = a3;
        v68 = *a3;
      }

      v4[1] = v66;
      operator delete(v68);
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }

    *v4 = v81;
    v4[2] = v82;
  }

  v83 = 0;
  if (v34)
  {
    v72 = *v34;
    if (*v34)
    {
      v34[1] = v72;
      operator delete(v72);
    }

    MEMORY[0x1865E5EC0](v34, 0x20C40960023A9);
  }

  v73 = __p;
  if (__p)
  {
    v74 = v85;
    v75 = __p;
    if (v85 != __p)
    {
      v76 = v85;
      do
      {
        v78 = *(v76 - 3);
        v76 -= 24;
        v77 = v78;
        if (v78)
        {
          *(v74 - 2) = v77;
          operator delete(v77);
        }

        v74 = v76;
      }

      while (v76 != v73);
      v75 = __p;
    }

    v85 = v73;
    operator delete(v75);
  }
}

void sub_1837A0374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (v19)
  {
    operator delete(v19);
  }

  if (v18)
  {
    operator delete(v18);
  }

  sub_18379EE20(&a17);
  sub_18369F0F0(&a18);
  _Unwind_Resume(a1);
}

void sub_1837A0410(uint64_t a1, uint64_t a2)
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
    sub_1837A0C50();
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

void *sub_1837A0520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = *(a2 + 8);
  if (v8 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18369F168();
  }

  result = sub_18369F384((a4 + 24), a2 + 24);
  v10 = *(a2 + 64);
  *(a4 + 48) = *(a2 + 48);
  *(a4 + 64) = v10;
  v12 = *a1;
  for (i = *(a1 + 8); v12 != i; ++v12)
  {
    result = (*(**v12 + 24))(*v12, a4, a3);
  }

  return result;
}

void sub_1837A0650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_18369F2FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1837A06BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = *(a2 + 8);
  if (v8 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18369F168();
  }

  sub_18369F384((a4 + 24), a2 + 24);
  v9 = *(a2 + 64);
  *(a4 + 48) = *(a2 + 48);
  *(a4 + 64) = v9;
  return (*(*a1 + 24))(a1, a4, a3);
}

void sub_1837A07D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_18369F2FC(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1837A0C68(char *a1, char *a2, uint64_t **a3, unint64_t a4, __n128 *a5, uint64_t a6, __n128 result)
{
  if (a4 < 2)
  {
    return result;
  }

  v9 = a1;
  if (a4 == 2)
  {
    v10 = *(a2 - 1);
    v11 = *a1;
    v12 = a3[1];
    v13 = **a3;
    v14 = v13 + 32 * v10;
    result.n128_u64[0] = *v14;
    v15 = v13 + 32 * v9->n128_u64[0];
    if (*v14 >= *v15 || *(v14 + 8) <= *(v15 + 8))
    {
      if (*v15 < result.n128_f64[0])
      {
        result.n128_u64[0] = *(v15 + 8);
        if (result.n128_f64[0] > *(v14 + 8))
        {
          return result;
        }
      }

      if (!(*(*v12 + 48))(v12))
      {
        return result;
      }

      v11 = v9->n128_u64[0];
      v10 = *(a2 - 1);
    }

    v9->n128_u64[0] = v10;
    *(a2 - 1) = v11;
    return result;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return result;
    }

    v16 = a1 + 8;
    if (a1 + 8 == a2)
    {
      return result;
    }

    v17 = 0;
    v18 = a1;
LABEL_17:
    v19 = v18;
    v18 = v16;
    v20 = *v16;
    v21 = v19->n128_u64[0];
    v22 = **a3;
    v23 = v22 + 32 * v20;
    result.n128_u64[0] = *v23;
    v24 = v22 + 32 * v19->n128_u64[0];
    if (*v23 >= *v24 || *(v23 + 8) <= *(v24 + 8))
    {
      if (*v24 < result.n128_f64[0])
      {
        result.n128_u64[0] = *(v24 + 8);
        if (result.n128_f64[0] > *(v23 + 8))
        {
          goto LABEL_16;
        }
      }

      if (!(*(*a3[1] + 48))(a3[1]))
      {
        goto LABEL_16;
      }

      v20 = *v18;
      v21 = v19->n128_u64[0];
    }

    *v18 = v21;
    if (v19 == v9)
    {
LABEL_14:
      v19 = v9;
      goto LABEL_15;
    }

    v25 = v17;
    while (1)
    {
      v26 = *(&v9->n128_u64[-1] + v25);
      v27 = **a3;
      v28 = v27 + 32 * v20;
      result.n128_u64[0] = *v28;
      v29 = v27 + 32 * v26;
      if (*v28 >= *v29 || *(v28 + 8) <= *(v29 + 8))
      {
        if (*v29 < result.n128_f64[0])
        {
          result.n128_u64[0] = *(v29 + 8);
          if (result.n128_f64[0] > *(v28 + 8))
          {
            goto LABEL_15;
          }
        }

        if (!(*(*a3[1] + 48))(a3[1]))
        {
          v19 = (v9 + v25);
LABEL_15:
          v19->n128_u64[0] = v20;
LABEL_16:
          v16 = v18 + 8;
          v17 += 8;
          if (v18 + 8 == a2)
          {
            return result;
          }

          goto LABEL_17;
        }

        v26 = *(&v9->n128_u64[-1] + v25);
      }

      v19 = (v19 - 8);
      *(v9->n128_u64 + v25) = v26;
      v25 -= 8;
      if (!v25)
      {
        goto LABEL_14;
      }
    }
  }

  v30 = a5;
  v31 = a4 >> 1;
  v32 = &a1[8 * (a4 >> 1)];
  v33 = a4 - (a4 >> 1);
  if (a4 > a6)
  {
    sub_1837A0C68(a1, v32, a3, a4 >> 1, a5, a6);
    sub_1837A0C68(v32, a2, a3, v33, v30, a6);

    result.n128_u64[0] = sub_1837A160C(v9, v32, a2, a3, v31, v33, v30, a6, v35).n128_u64[0];
    return result;
  }

  v37 = sub_1837A1150(a1, v32, a3, a4 >> 1, a5, result);
  v38 = &v30[8 * v31];
  result = sub_1837A1150(v32, a2, a3, v33, v38, v37);
  v39 = &v30[8 * a4];
  v40 = v38;
  v41 = v9;
  do
  {
    while (1)
    {
      if (v40 == v39)
      {
        if (v30 == v38)
        {
          return result;
        }

        v50 = v38 - v30 - 8;
        if (v50 >= 0x38)
        {
          if ((v9 - v30) >= 0x20)
          {
            v52 = v41 + 1;
            v53 = (v50 >> 3) + 1;
            v54 = 8 * (v53 & 0x3FFFFFFFFFFFFFFCLL);
            v51 = &v30[v54];
            v41 = (v41 + v54);
            v55 = (v30 + 16);
            v56 = v53 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v55[-1];
              v57 = *v55;
              v52[-1] = result;
              *v52 = v57;
              v52 += 2;
              v55 += 2;
              v56 -= 4;
            }

            while (v56);
            if (v53 == (v53 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v51 = v30;
          }
        }

        else
        {
          v51 = v30;
        }

        do
        {
          v58 = v51->n128_u64[0];
          v51 = (v51 + 8);
          v41->n128_u64[0] = v58;
          v41 = (v41 + 8);
        }

        while (v51 != v38);
        return result;
      }

      v42 = v40->n128_u64[0];
      v43 = *v30;
      v44 = **a3;
      v45 = v44 + 32 * v40->n128_u64[0];
      result.n128_u64[0] = *v45;
      v46 = (v44 + 32 * *v30);
      if (*v45 < *v46 && *(v45 + 8) > v46[1])
      {
        goto LABEL_39;
      }

      if (*v46 < result.n128_f64[0])
      {
        result.n128_f64[0] = v46[1];
        if (result.n128_f64[0] > *(v45 + 8))
        {
          break;
        }
      }

      if (!(*(*a3[1] + 48))(a3[1]))
      {
        v43 = *v30;
        break;
      }

      v42 = v40->n128_u64[0];
LABEL_39:
      v41->n128_u64[0] = v42;
      v41 = (v41 + 8);
      v40 = (v40 + 8);
      v9 = (v9 + 8);
      if (v30 == v38)
      {
        goto LABEL_48;
      }
    }

    v41->n128_u64[0] = v43;
    v41 = (v41 + 8);
    v30 += 8;
    v9 = (v9 + 8);
  }

  while (v30 != v38);
LABEL_48:
  if (v40 == v39)
  {
    return result;
  }

  v47 = v39 - v40 - 8;
  if (v47 <= 0x47 || (v9 - v40) < 0x20)
  {
    v48 = v40;
    do
    {
LABEL_52:
      v49 = v48->n128_u64[0];
      v48 = (v48 + 8);
      v41->n128_u64[0] = v49;
      v41 = (v41 + 8);
    }

    while (v48 != v39);
    return result;
  }

  v59 = v41 + 1;
  v60 = (v47 >> 3) + 1;
  v61 = 8 * (v60 & 0x3FFFFFFFFFFFFFFCLL);
  v48 = (v40 + v61);
  v41 = (v41 + v61);
  v62 = v40 + 1;
  v63 = v60 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    result = v62[-1];
    v64 = *v62;
    v59[-1] = result;
    *v59 = v64;
    v59 += 2;
    v62 += 2;
    v63 -= 4;
  }

  while (v63);
  if (v60 != (v60 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_52;
  }

  return result;
}

__n128 sub_1837A1150(char *a1, char *a2, uint64_t **a3, uint64_t a4, __n128 *a5, __n128 result)
{
  if (!a4)
  {
    return result;
  }

  v6 = a5;
  v7 = a1;
  if (a4 == 1)
  {
LABEL_42:
    v6->n128_u64[0] = v7->n128_u64[0];
    return result;
  }

  if (a4 == 2)
  {
    v11 = (a2 - 8);
    v10 = *(a2 - 1);
    v12 = a3[1];
    v13 = **a3;
    v14 = v13 + 32 * v10;
    result.n128_u64[0] = *v14;
    v15 = v13 + 32 * v7->n128_u64[0];
    if (*v14 >= *v15 || *(v14 + 8) <= *(v15 + 8))
    {
      if (*v15 >= result.n128_f64[0] || (result.n128_u64[0] = *(v15 + 8), result.n128_f64[0] <= *(v14 + 8)))
      {
        v34 = (*(*v12 + 48))(v12);
        if (v34)
        {
          v35 = v11;
        }

        else
        {
          v35 = v7;
        }

        if (!v34)
        {
          v7 = v11;
        }

        v10 = v35->n128_u64[0];
      }

      else
      {
        v10 = v7->n128_u64[0];
        v7 = v11;
      }
    }

    v6->n128_u64[0] = v10;
    v6 = (v6 + 8);
    goto LABEL_42;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v16 = a1 + 8;
    a5->n128_u64[0] = *a1;
    if (a1 + 8 == a2)
    {
      return result;
    }

    v17 = 0;
    v18 = a5;
    v19 = a5;
LABEL_15:
    while (2)
    {
      v23 = v19->n128_u64[0];
      v19 = (v19 + 8);
      v22 = v23;
      v24 = *v16;
      v25 = **a3;
      v26 = v25 + 32 * *v16;
      result.n128_u64[0] = *v26;
      v27 = v25 + 32 * v23;
      if (*v26 >= *v27 || *(v26 + 8) <= *(v27 + 8))
      {
        if (*v27 < result.n128_f64[0])
        {
          result.n128_u64[0] = *(v27 + 8);
          if (result.n128_f64[0] > *(v26 + 8))
          {
            goto LABEL_32;
          }
        }

        if (!(*(*a3[1] + 48))(a3[1]))
        {
          v24 = *v16;
LABEL_32:
          v19->n128_u64[0] = v24;
          v16 += 8;
          v17 += 8;
          v18 = v19;
          if (v16 != a2)
          {
            continue;
          }

          return result;
        }

        v22 = v18->n128_u64[0];
      }

      break;
    }

    v18->n128_u64[1] = v22;
    v20 = v6;
    if (v18 == v6)
    {
      goto LABEL_14;
    }

    v28 = v17;
    while (1)
    {
      v30 = (v6->n128_u64 + v28);
      v29 = *(&v6->n128_i64[-1] + v28);
      v31 = **a3;
      v32 = v31 + 32 * *v16;
      result.n128_u64[0] = *v32;
      v33 = v31 + 32 * v29;
      if (*v32 >= *v33 || *(v32 + 8) <= *(v33 + 8))
      {
        if (*v33 < result.n128_f64[0])
        {
          result.n128_u64[0] = *(v33 + 8);
          if (result.n128_f64[0] > *(v32 + 8))
          {
            v20 = v18;
            goto LABEL_14;
          }
        }

        if (!(*(*a3[1] + 48))(a3[1]))
        {
          v20 = (v6 + v28);
LABEL_14:
          v21 = *v16;
          v16 += 8;
          v20->n128_u64[0] = v21;
          v17 += 8;
          v18 = v19;
          if (v16 == a2)
          {
            return result;
          }

          goto LABEL_15;
        }

        v29 = *(v30 - 1);
      }

      v18 = (v18 - 8);
      *v30 = v29;
      v28 -= 8;
      if (!v28)
      {
        v20 = v6;
        goto LABEL_14;
      }
    }
  }

  v36 = a4 >> 1;
  v37 = 8 * (a4 >> 1);
  v38 = &a1[v37];
  sub_1837A0C68(a1, &a1[v37], a3, v36, a5, v36);
  sub_1837A0C68(v7 + v37, a2, a3, a4 - v36, v6 + v37, a4 - v36);
  v40 = v6;
  v41 = v38;
  do
  {
    while (1)
    {
      if (v41 == a2)
      {
        if (v7 == v38)
        {
          return result;
        }

        v51 = v38 - v7 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v7) >= 0x20)
          {
            v53 = v6 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
            v6 = (v6 + v55);
            v52 = (v7 + v55);
            v56 = v7 + 1;
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
              *v53 = v58;
              v56 += 2;
              v53 += 2;
              v57 -= 4;
            }

            while (v57);
            if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v52 = v7;
          }
        }

        else
        {
          v52 = v7;
        }

        do
        {
          v59 = v52->n128_u64[0];
          v52 = (v52 + 8);
          v6->n128_u64[0] = v59;
          v6 = (v6 + 8);
        }

        while (v52 != v38);
        return result;
      }

      v42 = v41->n128_u64[0];
      v43 = v7->n128_u64[0];
      v44 = **a3;
      v45 = v44 + 32 * v41->n128_u64[0];
      result.n128_u64[0] = *v45;
      v46 = (v44 + 32 * v7->n128_u64[0]);
      if (*v45 < *v46 && *(v45 + 8) > v46[1])
      {
        goto LABEL_46;
      }

      if (*v46 < result.n128_f64[0])
      {
        result.n128_f64[0] = v46[1];
        if (result.n128_f64[0] > *(v45 + 8))
        {
          break;
        }
      }

      if (!(*(*a3[1] + 48))(a3[1]))
      {
        v43 = v7->n128_u64[0];
        break;
      }

      v42 = v41->n128_u64[0];
LABEL_46:
      v6->n128_u64[0] = v42;
      v6 = (v6 + 8);
      v41 = (v41 + 8);
      v40 += 8;
      if (v7 == v38)
      {
        goto LABEL_55;
      }
    }

    v6->n128_u64[0] = v43;
    v6 = (v6 + 8);
    v7 = (v7 + 8);
    v40 += 8;
  }

  while (v7 != v38);
LABEL_55:
  if (v41 == a2)
  {
    return result;
  }

  v47 = a2 - v41 - 8;
  if (v47 < 0x48 || (v40 - v41) < 0x20)
  {
    v48 = v6;
    v49 = v41;
    do
    {
LABEL_59:
      v50 = v49->n128_u64[0];
      v49 = (v49 + 8);
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = 8 * (v61 & 0x3FFFFFFFFFFFFFFCLL);
  v48 = (v6 + v62);
  v49 = (v41 + v62);
  v63 = v41 + 1;
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v6[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_59;
  }

  return result;
}

__n128 sub_1837A160C(__n128 *a1, __n128 *a2, char *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, __n128 result)
{
  v129 = a6;
  if (!a6)
  {
    return result;
  }

  v9 = a8;
  v10 = a7;
  while (a5 > v9 && v129 > v9)
  {
    if (!a5)
    {
      return result;
    }

    v16 = 0;
    v17 = -a5;
    while (1)
    {
      v19 = **a4;
      v20 = v19 + 32 * a2->n128_u64[0];
      result.n128_u64[0] = *v20;
      v21 = (v19 + 32 * a1->n128_u64[v16 / 8]);
      if (*v20 < *v21 && *(v20 + 8) > v21[1])
      {
        break;
      }

      if (*v21 >= result.n128_f64[0] || (result.n128_f64[0] = v21[1], result.n128_f64[0] <= *(v20 + 8)))
      {
        if ((*(*a4[1] + 48))(a4[1]))
        {
          break;
        }
      }

      v16 += 8;
      if (__CFADD__(v17++, 1))
      {
        return result;
      }
    }

    v22 = -v17;
    v23 = v129;
    v127 = a1;
    v125 = (a1 + v16);
    if (-v17 >= v129)
    {
      if (v17 == -1)
      {
        v103 = a1->n128_u64[v16 / 8];
        a1->n128_u64[v16 / 8] = a2->n128_u64[0];
        a2->n128_u64[0] = v103;
        return result;
      }

      v36 = v22 / 2;
      v28 = (a1 + 8 * (v22 / 2) + v16);
      v37 = a2;
      if (a2 != a3)
      {
        v121 = v22 / 2;
        v122 = a2;
        v39 = *a4;
        v38 = a4[1];
        v124 = a3;
        v40 = (a3 - a2) >> 3;
        do
        {
          v41 = v40 >> 1;
          v42 = &a2->n128_u64[v40 >> 1];
          v43 = (*v39 + 32 * *v42);
          v44 = (*v39 + 32 * v28->n128_u64[0]);
          if (*v43 < *v44 && v43[1] > v44[1] || (*v44 >= *v43 || v44[1] <= v43[1]) && (*(*v38 + 48))(v38))
          {
            a2 = (v42 + 1);
            v41 = v40 + ~v41;
          }

          v40 = v41;
        }

        while (v41);
        v37 = v122;
        a3 = v124;
        v23 = v129;
        v36 = v121;
      }

      v24 = (a2 - v37) >> 3;
      v45 = a2;
      v46 = v37 - v28;
      if (v37 == v28)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v24 = v129 / 2;
      v25 = a2;
      a2 = (a2 + 8 * (v129 / 2));
      v26 = v25 - a1;
      v27 = v25;
      v28 = v25;
      v29 = v26 - v16;
      if (v29)
      {
        v123 = a3;
        v30 = v29 >> 3;
        v28 = v125;
        do
        {
          v31 = v30 >> 1;
          v32 = &v28->n128_u64[v30 >> 1];
          v33 = **a4;
          v34 = (v33 + 32 * a2->n128_u64[0]);
          v35 = (v33 + 32 * *v32);
          if ((*v34 >= *v35 || v34[1] <= v35[1]) && (*v35 < *v34 && v35[1] > v34[1] || ((*(*a4[1] + 48))(a4[1]) & 1) == 0))
          {
            v28 = (v32 + 1);
            v31 = v30 + ~v31;
          }

          v30 = v31;
        }

        while (v31);
        v24 = v129 / 2;
        a3 = v123;
        v23 = v129;
      }

      v36 = (v28 - v127 - v16) >> 3;
      v37 = v27;
      v45 = a2;
      v46 = v27 - v28;
      if (v27 == v28)
      {
        goto LABEL_64;
      }
    }

    v45 = v28;
    if (v37 != a2)
    {
      if (&v28->n128_i8[8] == v37)
      {
        v47 = a3;
        v48 = v28->n128_u64[0];
        v49 = a2 - v37;
        v50 = v36;
        v51 = v24;
        memmove(v28, v37, a2 - v37);
        v24 = v51;
        v36 = v50;
        v23 = v129;
        v45 = (v28 + v49);
        v45->n128_u64[0] = v48;
        a3 = v47;
      }

      else if (v37 + 8 == a2)
      {
        v52 = a3;
        v53 = a2[-1].n128_i64[1];
        v45 = &v28->n128_i8[8];
        if (&a2[-1].n128_i8[8] != v28)
        {
          v54 = v36;
          v55 = v24;
          memmove(&v28->n128_i8[8], v28, &a2[-1].n128_i8[8] - v28);
          v24 = v55;
          v36 = v54;
          v23 = v129;
        }

        v28->n128_u64[0] = v53;
        a3 = v52;
      }

      else
      {
        v56 = v46 >> 3;
        v57 = (a2 - v37) >> 3;
        if (v46 >> 3 == v57)
        {
          v58 = &v28->n128_i8[8];
          v45 = v37;
          v59 = (v37 + 8);
          do
          {
            v60 = *(v58 - 1);
            *(v58 - 1) = v59[-1].n128_u64[1];
            v59[-1].n128_u64[1] = v60;
            if (v58 == v37)
            {
              break;
            }

            v58 += 8;
            v61 = v59 == a2;
            v59 = (v59 + 8);
          }

          while (!v61);
        }

        else
        {
          v62 = v46 >> 3;
          do
          {
            v63 = v62;
            v62 = v57;
            v57 = v63 % v57;
          }

          while (v57);
          v64 = (v28 + 8 * v62);
          do
          {
            v66 = v64[-1].n128_u64[1];
            v64 = (v64 - 8);
            v65 = v66;
            v67 = (v64 + v46);
            v68 = v64;
            do
            {
              v69 = v67;
              v68->n128_u64[0] = v67->n128_u64[0];
              v70 = (a2 - v67) >> 3;
              v71 = __OFSUB__(v56, v70);
              v73 = v56 - v70;
              v72 = (v73 < 0) ^ v71;
              v67 = (v28 + 8 * v73);
              if (v72)
              {
                v67 = (v69 + 8 * v56);
              }

              v68 = v69;
            }

            while (v67 != v64);
            v69->n128_u64[0] = v65;
          }

          while (v64 != v28);
          v45 = (v28 + a2 - v37);
        }

        v23 = v129;
      }
    }

LABEL_64:
    a5 = -v17 - v36;
    v74 = v23 - v24;
    v75 = v23 - (v36 + v24) - v17;
    v76 = v36;
    v77 = v24;
    if (v36 + v24 >= v75)
    {
      sub_1837A160C(v45, a2, a3, a4, a5, v23 - v24, a7, a8);
      a2 = v28;
      v78 = v77;
      v10 = a7;
      a5 = v76;
      a3 = v45;
      a1 = v125;
      v129 = v78;
      v9 = a8;
      if (!v78)
      {
        return result;
      }
    }

    else
    {
      v10 = a7;
      sub_1837A160C(&v127[v16], v28, v45, a4, v36, v24, a7, a8);
      a1 = v45;
      v129 = v74;
      v9 = a8;
      if (!v74)
      {
        return result;
      }
    }
  }

  if (a5 <= v129)
  {
    if (a2 == a1)
    {
      return result;
    }

    v88 = a2 - a1 - 8;
    v89 = v10;
    v90 = a1;
    if (v88 < 0x18)
    {
      goto LABEL_131;
    }

    v89 = v10;
    v90 = a1;
    if ((v10 - a1) <= 0x1F)
    {
      goto LABEL_131;
    }

    v91 = (v88 >> 3) + 1;
    v92 = 8 * (v91 & 0x3FFFFFFFFFFFFFFCLL);
    v89 = &v10[v92];
    v90 = (a1 + v92);
    v93 = a1 + 1;
    v94 = (v10 + 16);
    v95 = v91 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v96 = *v93;
      v94[-1] = v93[-1];
      *v94 = v96;
      v93 += 2;
      v94 += 2;
      v95 -= 4;
    }

    while (v95);
    if (v91 != (v91 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_131:
      do
      {
        v97 = v90->n128_u64[0];
        v90 = (v90 + 8);
        *v89 = v97;
        v89 += 8;
      }

      while (v90 != a2);
    }

    while (1)
    {
      while (1)
      {
        if (a2 == a3)
        {

          memmove(a1, v10, v89 - v10);
          return result;
        }

        v98 = a2->n128_u64[0];
        v99 = *v10;
        v100 = **a4;
        v101 = v100 + 32 * a2->n128_u64[0];
        result.n128_u64[0] = *v101;
        v102 = (v100 + 32 * *v10);
        if (*v101 >= *v102 || *(v101 + 8) <= v102[1])
        {
          break;
        }

LABEL_86:
        a1->n128_u64[0] = v98;
        a1 = (a1 + 8);
        a2 = (a2 + 8);
        if (v10 == v89)
        {
          return result;
        }
      }

      if (*v102 < result.n128_f64[0])
      {
        result.n128_f64[0] = v102[1];
        if (result.n128_f64[0] > *(v101 + 8))
        {
          goto LABEL_94;
        }
      }

      if ((*(*a4[1] + 48))(a4[1]))
      {
        v98 = a2->n128_u64[0];
        goto LABEL_86;
      }

      v99 = *v10;
LABEL_94:
      a1->n128_u64[0] = v99;
      a1 = (a1 + 8);
      v10 += 8;
      if (v10 == v89)
      {
        return result;
      }
    }
  }

  if (a2 == a3)
  {
    return result;
  }

  v79 = a3 - a2 - 8;
  if (v79 < 0x18)
  {
    v80 = v10;
    v81 = a2;
  }

  else
  {
    v80 = v10;
    v81 = a2;
    if ((v10 - a2) > 0x1F)
    {
      v82 = (v79 >> 3) + 1;
      v83 = 8 * (v82 & 0x3FFFFFFFFFFFFFFCLL);
      v80 = &v10[v83];
      v81 = (a2 + v83);
      v84 = a2 + 1;
      v85 = (v10 + 16);
      v86 = v82 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v84[-1];
        v87 = *v84;
        v85[-1] = result;
        *v85 = v87;
        v84 += 2;
        v85 += 2;
        v86 -= 4;
      }

      while (v86);
      if (v82 == (v82 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_102;
      }
    }
  }

  do
  {
    v104 = v81->n128_u64[0];
    v81 = (v81 + 8);
    *v80 = v104;
    v80 += 8;
  }

  while (v81 != a3);
LABEL_102:
  v105 = a3;
  while (a2 != a1)
  {
    v108 = a2[-1].n128_i64[1];
    v109 = **a4;
    v110 = v109 + 32 * *(v80 - 1);
    result.n128_u64[0] = *v110;
    v111 = v109 + 32 * v108;
    if (*v110 >= *v111 || *(v110 + 8) <= *(v111 + 8))
    {
      if (*v111 >= result.n128_f64[0] || (result.n128_u64[0] = *(v111 + 8), result.n128_f64[0] <= *(v110 + 8)))
      {
        v106 = (*(*a4[1] + 48))(a4[1]);
        if (v106)
        {
          v107 = a2;
        }

        else
        {
          v107 = v80;
        }

        if (v106)
        {
          a2 = (a2 - 8);
        }

        else
        {
          v80 -= 8;
        }

        v108 = *(v107 - 1);
      }

      else
      {
        v108 = *(v80 - 1);
        v80 -= 8;
      }
    }

    else
    {
      a2 = (a2 - 8);
    }

    *(a3 - 1) = v108;
    a3 -= 8;
    v105 -= 8;
    if (v80 == v10)
    {
      return result;
    }
  }

  if (v80 != v10)
  {
    v112 = v80 - v10 - 8;
    if (v112 >= 0x48 && (v80 - v105) >= 0x20)
    {
      v116 = (a3 - 16);
      v117 = (v112 >> 3) + 1;
      v118 = 8 * (v117 & 0x3FFFFFFFFFFFFFFCLL);
      v113 = &v80[-v118];
      a3 -= v118;
      v119 = (v80 - 16);
      v120 = v117 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = *v119;
        v116[-1] = v119[-1];
        *v116 = result;
        v116 -= 2;
        v119 -= 2;
        v120 -= 4;
      }

      while (v120);
      if (v117 == (v117 & 0x3FFFFFFFFFFFFFFCLL))
      {
        return result;
      }
    }

    else
    {
      v113 = v80;
    }

    v114 = a3 - 8;
    do
    {
      v115 = *(v113 - 1);
      v113 -= 8;
      *v114 = v115;
      v114 -= 8;
    }

    while (v113 != v10);
  }

  return result;
}

char *sub_1837A1EB0(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v5 = *(a1 + 16);
  result = *a1;
  if (a4 > (v5 - result) >> 4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v7 = a4;
      operator delete(result);
      a4 = v7;
      v5 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 60))
    {
      v8 = v5 >> 3;
      if (v5 >> 3 <= a4)
      {
        v8 = a4;
      }

      v25 = v5 >= 0x7FFFFFFFFFFFFFF0;
      v9 = 0xFFFFFFFFFFFFFFFLL;
      if (!v25)
      {
        v9 = v8;
      }

      if (!(v9 >> 60))
      {
        operator new();
      }
    }

    sub_1837A0C50();
  }

  v10 = *(a1 + 8);
  if (a4 <= (v10 - result) >> 4)
  {
    if (a2 == a3)
    {
      *(a1 + 8) = result;
      return result;
    }

    v18 = a3 - a2 - 16;
    if (v18 < 0xF0 || ((v37 = v18 & 0xFFFFFFFFFFFFFFF0 | 8, v38 = &result[v37], v39 = &a2[v37], v40 = (v18 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v40]) ? (v41 = a2 + 8 >= &result[v40]) : (v41 = 1), v41 ? (v42 = 0) : (v42 = 1), v38 > a2 ? (v43 = result >= v39) : (v43 = 1), !v43 || (v42 & 1) != 0))
    {
      v10 = result;
      v19 = a2;
    }

    else
    {
      v44 = (v18 >> 4) + 1;
      v45 = 16 * (v44 & 0x1FFFFFFFFFFFFFFCLL);
      v10 = &result[v45];
      v19 = &a2[v45];
      v46 = (a2 + 32);
      v47 = result + 32;
      v48 = v44 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v50 = *(v46 - 2);
        v49 = *(v46 - 1);
        v52 = *v46;
        v51 = v46[1];
        v46 += 4;
        *(v47 - 2) = v50;
        *(v47 - 1) = v49;
        *v47 = v52;
        v47[1] = v51;
        v47 += 4;
        v48 -= 4;
      }

      while (v48);
      if (v44 == (v44 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_24;
      }
    }

    do
    {
      v20 = *v19;
      v19 += 16;
      *v10 = v20;
      v10 += 16;
    }

    while (v19 != a3);
LABEL_24:
    *(a1 + 8) = v10;
    return result;
  }

  v11 = &a2[v10 - result];
  if (v10 != result)
  {
    v12 = v10 - result - 16;
    if (v12 < 0xF0 || ((v21 = v12 & 0xFFFFFFFFFFFFFFF0 | 8, v22 = &result[v21], v23 = &a2[v21], v24 = (v12 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v24]) ? (v25 = a2 + 8 >= &result[v24]) : (v25 = 1), v25 ? (v26 = 0) : (v26 = 1), v22 > a2 ? (v27 = result >= v23) : (v27 = 1), !v27 || (v26 & 1) != 0))
    {
      v13 = result;
      v14 = a2;
    }

    else
    {
      v28 = (v12 >> 4) + 1;
      v29 = 16 * (v28 & 0x1FFFFFFFFFFFFFFCLL);
      v13 = &result[v29];
      v14 = &a2[v29];
      v30 = (a2 + 32);
      v31 = result + 32;
      v32 = v28 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v34 = *(v30 - 2);
        v33 = *(v30 - 1);
        v36 = *v30;
        v35 = v30[1];
        v30 += 4;
        *(v31 - 2) = v34;
        *(v31 - 1) = v33;
        *v31 = v36;
        v31[1] = v35;
        v31 += 4;
        v32 -= 4;
      }

      while (v32);
      if (v28 == (v28 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_16;
      }
    }

    do
    {
      v15 = *v14;
      v14 += 16;
      *v13 = v15;
      v13 += 16;
    }

    while (v14 != v11);
  }

LABEL_16:
  if (v11 == a3)
  {
    goto LABEL_24;
  }

  v16 = v10;
  do
  {
    v17 = *v11;
    v11 += 16;
    *v10 = v17;
    v10 += 16;
    v16 += 16;
  }

  while (v11 != a3);
  *(a1 + 8) = v16;
  return result;
}

__n128 sub_1837A2188(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  n128_f64 = a2[-2].n128_f64;
  v10 = a2[-4].n128_f64;
  v11 = a2[-6].n128_f64;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v87 = a2[-2].n128_f64[0];
      v86 = a2 - 2;
      result.n128_f64[0] = v87;
      if (v87 >= *v12)
      {
        return result;
      }

LABEL_108:
      v176 = *v12;
      v209 = *(v12 + 16);
      v91 = v86[1];
      *v12 = *v86;
      *(v12 + 16) = v91;
      result = v176;
      v92 = v209;
LABEL_109:
      *v86 = result;
      v86[1] = v92;
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v97 = (v12 + 32);
      v99 = v12 == a2 || v97 == a2;
      if (a4)
      {
        if (!v99)
        {
          v100 = 0;
          v101 = v12;
          do
          {
            v103 = v97;
            result.n128_u64[0] = *(v101 + 32);
            if (result.n128_f64[0] < *v101)
            {
              v178 = *(v101 + 40);
              v211 = *(v101 + 56);
              v104 = v100;
              do
              {
                v105 = v12 + v104;
                v106 = *(v12 + v104 + 16);
                *(v105 + 32) = *(v12 + v104);
                *(v105 + 48) = v106;
                if (!v104)
                {
                  v102 = v12;
                  goto LABEL_123;
                }

                v104 -= 32;
              }

              while (result.n128_f64[0] < *(v105 - 32));
              v102 = v12 + v104 + 32;
LABEL_123:
              *v102 = result.n128_u64[0];
              result = v178;
              *(v102 + 24) = v211;
              *(v102 + 8) = v178;
            }

            v97 = v103 + 2;
            v100 += 32;
            v101 = v103;
          }

          while (&v103[2] != a2);
        }
      }

      else if (!v99)
      {
        do
        {
          v138 = v97;
          result.n128_u64[0] = *(a1 + 32);
          if (result.n128_f64[0] < *a1)
          {
            v182 = *(a1 + 40);
            v216 = *(a1 + 56);
            v139 = v97;
            do
            {
              v140 = v139[-1];
              *v139 = v139[-2];
              v139[1] = v140;
              v141 = v139[-4].n128_f64[0];
              v139 -= 2;
            }

            while (result.n128_f64[0] < v141);
            v139->n128_u64[0] = result.n128_u64[0];
            result = v182;
            v139[1].n128_u64[1] = v216;
            *(v139 + 8) = v182;
          }

          v97 += 2;
          a1 = v138;
        }

        while ((v138 + 32) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v107 = (v13 - 2) >> 1;
        v108 = v107;
        do
        {
          if (v107 >= v108)
          {
            v110 = (2 * (v108 & 0x7FFFFFFFFFFFFFFLL)) | 1;
            v111 = v12 + 32 * v110;
            if (2 * (v108 & 0x7FFFFFFFFFFFFFFLL) + 2 < v13 && *v111 < *(v111 + 32))
            {
              v111 += 32;
              v110 = 2 * (v108 & 0x7FFFFFFFFFFFFFFLL) + 2;
            }

            v112 = v12 + 32 * v108;
            v113 = *v112;
            if (*v111 >= *v112)
            {
              v212 = *(v112 + 24);
              v179 = *(v112 + 8);
              do
              {
                v114 = v112;
                v112 = v111;
                v115 = *(v111 + 16);
                *v114 = *v111;
                v114[1] = v115;
                if (v107 < v110)
                {
                  break;
                }

                v116 = 2 * v110;
                v110 = (2 * (v110 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                v111 = v12 + 32 * v110;
                v117 = v116 + 2;
                if (v117 < v13 && *v111 < *(v111 + 32))
                {
                  v111 += 32;
                  v110 = v117;
                }
              }

              while (*v111 >= v113);
              *v112 = v113;
              *(v112 + 24) = v212;
              *(v112 + 8) = v179;
            }
          }

          v109 = v108-- <= 0;
        }

        while (!v109);
        do
        {
          v118 = 0;
          v180 = *v12;
          v213 = *(v12 + 16);
          v119 = v12;
          do
          {
            v121 = v119;
            v122 = &v119[2 * v118];
            v119 = v122 + 2;
            v123 = 2 * v118;
            v118 = (2 * v118) | 1;
            v124 = v123 + 2;
            if (v124 < v13)
            {
              v126 = v122[4].n128_f64[0];
              v125 = v122 + 4;
              if (v125[-2].n128_f64[0] < v126)
              {
                v119 = v125;
                v118 = v124;
              }
            }

            v120 = v119[1];
            *v121 = *v119;
            v121[1] = v120;
          }

          while (v118 <= ((v13 - 2) >> 1));
          a2 -= 2;
          if (v119 == a2)
          {
            result = v180;
            *v119 = v180;
            v119[1] = v213;
          }

          else
          {
            v127 = a2[1];
            *v119 = *a2;
            v119[1] = v127;
            result = v180;
            *a2 = v180;
            a2[1] = v213;
            v128 = (&v119[2] - v12) >> 5;
            v109 = v128 < 2;
            v129 = v128 - 2;
            if (!v109)
            {
              v130 = v129 >> 1;
              v131 = (v12 + 32 * v130);
              result.n128_u64[0] = v119->n128_u64[0];
              if (v131->n128_f64[0] < v119->n128_f64[0])
              {
                v156 = v119[1].n128_i64[1];
                v153 = *(v119 + 8);
                do
                {
                  v132 = v119;
                  v119 = v131;
                  v133 = v131[1];
                  *v132 = *v131;
                  v132[1] = v133;
                  if (!v130)
                  {
                    break;
                  }

                  v130 = (v130 - 1) >> 1;
                  v131 = (v12 + 32 * v130);
                }

                while (v131->n128_f64[0] < result.n128_f64[0]);
                v119->n128_u64[0] = result.n128_u64[0];
                result = v153;
                v119[1].n128_u64[1] = v156;
                *(v119 + 8) = v153;
              }
            }
          }

          v109 = v13-- <= 2;
        }

        while (!v109);
      }

      return result;
    }

    v14 = v12 + 32 * (v13 >> 1);
    v15 = v14;
    v16 = *n128_f64;
    if (v13 < 0x81)
    {
      v19 = *v12;
      if (*v12 < *v14)
      {
        if (v16 < v19)
        {
          v158 = *v14;
          v187 = *(v14 + 16);
          v20 = a2[-1];
          *v14 = *n128_f64;
          *(v14 + 16) = v20;
          goto LABEL_36;
        }

        v165 = *v14;
        v195 = *(v14 + 16);
        v38 = *(v12 + 16);
        *v14 = *v12;
        *(v14 + 16) = v38;
        *v12 = v165;
        *(v12 + 16) = v195;
        if (*n128_f64 < *v12)
        {
          v158 = *v12;
          v187 = *(v12 + 16);
          v39 = a2[-1];
          *v12 = *n128_f64;
          *(v12 + 16) = v39;
LABEL_36:
          *n128_f64 = v158;
          a2[-1] = v187;
        }

LABEL_37:
        --a3;
        v25 = *v12;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 >= v19)
      {
        goto LABEL_37;
      }

      v161 = *v12;
      v190 = *(v12 + 16);
      v23 = a2[-1];
      *v12 = *n128_f64;
      *(v12 + 16) = v23;
      *n128_f64 = v161;
      a2[-1] = v190;
      if (*v12 >= *v14)
      {
        goto LABEL_37;
      }

      v162 = *v14;
      v191 = *(v14 + 16);
      v24 = *(v12 + 16);
      *v14 = *v12;
      *(v14 + 16) = v24;
      *v12 = v162;
      *(v12 + 16) = v191;
      --a3;
      v25 = *v12;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v12 - 32) < v25)
      {
        goto LABEL_62;
      }

      v155 = *(v12 + 24);
      v152 = *(v12 + 8);
      if (v25 >= *n128_f64)
      {
        v79 = v12 + 32;
        do
        {
          v12 = v79;
          if (v79 >= a2)
          {
            break;
          }

          v79 += 32;
        }

        while (v25 >= *v12);
      }

      else
      {
        do
        {
          v78 = *(v12 + 32);
          v12 += 32;
        }

        while (v25 >= v78);
      }

      v80 = a2;
      if (v12 < a2)
      {
        v80 = a2;
        do
        {
          v81 = *(v80 - 4);
          v80 -= 4;
        }

        while (v25 < v81);
      }

      while (v12 < v80)
      {
        v175 = *v12;
        v208 = *(v12 + 16);
        v82 = *(v80 + 1);
        *v12 = *v80;
        *(v12 + 16) = v82;
        *v80 = v175;
        *(v80 + 1) = v208;
        do
        {
          v83 = *(v12 + 32);
          v12 += 32;
        }

        while (v25 >= v83);
        do
        {
          v84 = *(v80 - 4);
          v80 -= 4;
        }

        while (v25 < v84);
      }

      if (v12 - 32 != a1)
      {
        v85 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v85;
      }

      a4 = 0;
      *(v12 - 32) = v25;
      result = v152;
      *(v12 - 8) = v155;
      *(v12 - 24) = v152;
    }

    else
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v159 = *v14;
          v188 = *(v14 + 16);
          v21 = a2[-1];
          *v14 = *n128_f64;
          *(v14 + 16) = v21;
          *n128_f64 = v159;
          a2[-1] = v188;
          if (*v14 < *v12)
          {
            v160 = *v12;
            v189 = *(v12 + 16);
            v22 = *(v14 + 16);
            *v12 = *v14;
            *(v12 + 16) = v22;
            *v14 = v160;
            *(v14 + 16) = v189;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v163 = *v12;
          v192 = *(v12 + 16);
          v26 = *(v14 + 16);
          *v12 = *v14;
          *(v12 + 16) = v26;
          *v14 = v163;
          *(v14 + 16) = v192;
          if (*n128_f64 >= *v14)
          {
            goto LABEL_28;
          }

          v157 = *v14;
          v186 = *(v14 + 16);
          v27 = a2[-1];
          *v14 = *n128_f64;
          *(v14 + 16) = v27;
        }

        else
        {
          v157 = *v12;
          v186 = *(v12 + 16);
          v18 = a2[-1];
          *v12 = *n128_f64;
          *(v12 + 16) = v18;
        }

        *n128_f64 = v157;
        a2[-1] = v186;
      }

LABEL_28:
      v28 = (v12 + 32);
      v29 = (v14 - 32);
      v30 = *(v14 - 32);
      v31 = *v10;
      if (v30 >= *(v12 + 32))
      {
        if (v31 < v30)
        {
          v164 = *v29;
          v193 = *(v14 - 16);
          v35 = a2[-3];
          *v29 = *v10;
          *(v14 - 16) = v35;
          *v10 = v164;
          a2[-3] = v193;
          if (v29->n128_f64[0] < *v28)
          {
            v36 = *v28;
            v194 = *(v12 + 48);
            v37 = *(v14 - 16);
            *v28 = *v29;
            *(v12 + 48) = v37;
            *v29 = v36;
            *(v14 - 16) = v194;
          }
        }
      }

      else
      {
        if (v31 >= v30)
        {
          v40 = *v28;
          v196 = *(v12 + 48);
          v41 = *(v14 - 16);
          *v28 = *v29;
          *(v12 + 48) = v41;
          *v29 = v40;
          *(v14 - 16) = v196;
          if (*v10 >= v29->n128_f64[0])
          {
            goto LABEL_42;
          }

          v166 = *v29;
          v197 = *(v14 - 16);
          v42 = a2[-3];
          *v29 = *v10;
          *(v14 - 16) = v42;
          v32 = v166;
          v33 = v197;
        }

        else
        {
          v32 = *v28;
          v33 = *(v12 + 48);
          v34 = a2[-3];
          *v28 = *v10;
          *(v12 + 48) = v34;
        }

        *v10 = v32;
        a2[-3] = v33;
      }

LABEL_42:
      v43 = (v12 + 64);
      v45 = *(v14 + 32);
      v44 = (v14 + 32);
      v46 = v45;
      v47 = *v11;
      if (v45 >= *(v12 + 64))
      {
        if (v47 < v46)
        {
          v167 = *v44;
          v198 = v44[1];
          v51 = a2[-5];
          *v44 = *v11;
          v44[1] = v51;
          *v11 = v167;
          a2[-5] = v198;
          if (v44->n128_f64[0] < *v43)
          {
            v52 = *v43;
            v199 = *(v12 + 80);
            v53 = v44[1];
            *v43 = *v44;
            *(v12 + 80) = v53;
            *v44 = v52;
            v44[1] = v199;
          }
        }
      }

      else
      {
        if (v47 >= v46)
        {
          v54 = *v43;
          v200 = *(v12 + 80);
          v55 = v44[1];
          *v43 = *v44;
          *(v12 + 80) = v55;
          *v44 = v54;
          v44[1] = v200;
          if (*v11 >= v44->n128_f64[0])
          {
            goto LABEL_51;
          }

          v168 = *v44;
          v201 = v44[1];
          v56 = a2[-5];
          *v44 = *v11;
          v44[1] = v56;
          v48 = v168;
          v49 = v201;
        }

        else
        {
          v48 = *v43;
          v49 = *(v12 + 80);
          v50 = a2[-5];
          *v43 = *v11;
          *(v12 + 80) = v50;
        }

        *v11 = v48;
        a2[-5] = v49;
      }

LABEL_51:
      v57 = *v15;
      v58 = v44->n128_f64[0];
      if (*v15 >= v29->n128_f64[0])
      {
        if (v58 < v57)
        {
          v170 = *v15;
          v203 = *(v15 + 16);
          v60 = v44[1];
          *v15 = *v44;
          *(v15 + 16) = v60;
          *v44 = v170;
          v44[1] = v203;
          if (*v15 < v29->n128_f64[0])
          {
            v171 = *v29;
            v204 = v29[1];
            v61 = *(v15 + 16);
            *v29 = *v15;
            v29[1] = v61;
            *v15 = v171;
            *(v15 + 16) = v204;
          }
        }
      }

      else
      {
        if (v58 >= v57)
        {
          v172 = *v29;
          v205 = v29[1];
          v62 = *(v15 + 16);
          *v29 = *v15;
          v29[1] = v62;
          *v15 = v172;
          *(v15 + 16) = v205;
          if (v44->n128_f64[0] >= *v15)
          {
            goto LABEL_60;
          }

          v169 = *v15;
          v202 = *(v15 + 16);
          v63 = v44[1];
          *v15 = *v44;
          *(v15 + 16) = v63;
        }

        else
        {
          v169 = *v29;
          v202 = v29[1];
          v59 = v44[1];
          *v29 = *v44;
          v29[1] = v59;
        }

        *v44 = v169;
        v44[1] = v202;
      }

LABEL_60:
      v173 = *v12;
      v206 = *(v12 + 16);
      v64 = *(v15 + 16);
      *v12 = *v15;
      *(v12 + 16) = v64;
      *v15 = v173;
      *(v15 + 16) = v206;
      --a3;
      v25 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v65 = 0;
      v154 = *(v12 + 24);
      v151 = *(v12 + 8);
      do
      {
        v66 = *(v12 + v65 + 32);
        v65 += 32;
      }

      while (v66 < v25);
      v67 = v12 + v65;
      v68 = a2;
      if (v65 == 32)
      {
        v68 = a2;
        do
        {
          if (v67 >= v68)
          {
            break;
          }

          v70 = v68[-2].n128_f64[0];
          v68 -= 2;
        }

        while (v70 >= v25);
      }

      else
      {
        do
        {
          v69 = v68[-2].n128_f64[0];
          v68 -= 2;
        }

        while (v69 >= v25);
      }

      v12 += v65;
      if (v67 < v68)
      {
        v71 = v68;
        do
        {
          v174 = *v12;
          v207 = *(v12 + 16);
          v72 = *(v71 + 1);
          *v12 = *v71;
          *(v12 + 16) = v72;
          *v71 = v174;
          *(v71 + 1) = v207;
          do
          {
            v73 = *(v12 + 32);
            v12 += 32;
          }

          while (v73 < v25);
          do
          {
            v74 = *(v71 - 4);
            v71 -= 4;
          }

          while (v74 >= v25);
        }

        while (v12 < v71);
      }

      if (v12 - 32 != a1)
      {
        v75 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v75;
      }

      *(v12 - 32) = v25;
      *(v12 - 8) = v154;
      *(v12 - 24) = v151;
      if (v67 < v68)
      {
        goto LABEL_81;
      }

      v76 = sub_1837A2F10(a1, v12 - 32, v151);
      if (sub_1837A2F10(v12, a2, v77))
      {
        a2 = (v12 - 32);
        if (!v76)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v76)
      {
LABEL_81:
        sub_1837A2188(a1, v12 - 32, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v88 = (v12 + 32);
      v93 = *(v12 + 32);
      v94 = (v12 + 64);
      v95 = *(v12 + 64);
      if (v93 >= *v12)
      {
        if (v95 < v93)
        {
          v135 = *v88;
          result = *(v12 + 48);
          v136 = *(v12 + 80);
          *v88 = *v94;
          *(v12 + 48) = v136;
          *v94 = v135;
          *(v12 + 80) = result;
          if (*(v12 + 32) < *v12)
          {
            v181 = *v12;
            v215 = *(v12 + 16);
            v137 = *(v12 + 48);
            *v12 = *v88;
            *(v12 + 16) = v137;
            result.n128_u64[1] = v181.n128_u64[1];
            *v88 = v181;
            *(v12 + 48) = v215;
          }
        }
      }

      else if (v95 >= v93)
      {
        v184 = *v12;
        v218 = *(v12 + 16);
        v144 = *(v12 + 48);
        *v12 = *v88;
        *(v12 + 16) = v144;
        *v88 = v184;
        *(v12 + 48) = v218;
        if (v95 < *(v12 + 32))
        {
          v145 = *v88;
          result = *(v12 + 48);
          v146 = *(v12 + 80);
          *v88 = *v94;
          *(v12 + 48) = v146;
          *v94 = v145;
          *(v12 + 80) = result;
        }
      }

      else
      {
        v177 = *v12;
        v210 = *(v12 + 16);
        v96 = *(v12 + 80);
        *v12 = *v94;
        *(v12 + 16) = v96;
        result.n128_u64[1] = v177.n128_u64[1];
        *v94 = v177;
        *(v12 + 80) = v210;
      }

      result.n128_f64[0] = *n128_f64;
      if (*n128_f64 >= v94->n128_f64[0])
      {
        return result;
      }

      result = *v94;
      v219 = *(v12 + 80);
      v147 = a2[-1];
      *v94 = *n128_f64;
      *(v12 + 80) = v147;
      *n128_f64 = result;
      a2[-1] = v219;
      result.n128_u64[0] = v94->n128_u64[0];
      if (v94->n128_f64[0] >= v88->n128_f64[0])
      {
        return result;
      }

      v148 = *v88;
      result = *(v12 + 48);
      v149 = *(v12 + 80);
      *v88 = *v94;
      *(v12 + 48) = v149;
      *v94 = v148;
      *(v12 + 80) = result;
LABEL_178:
      result.n128_u64[0] = *(v12 + 32);
      if (result.n128_f64[0] < *v12)
      {
        v185 = *v12;
        v220 = *(v12 + 16);
        v150 = v88[1];
        *v12 = *v88;
        *(v12 + 16) = v150;
        result = v185;
        *v88 = v185;
        v88[1] = v220;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = sub_1837A2D84(v12, (v12 + 32), (v12 + 64), (v12 + 96), a2 - 2, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v88 = (v12 + 32);
  result.n128_u64[0] = *(v12 + 32);
  v89 = a2[-2].n128_f64[0];
  v86 = a2 - 2;
  v90 = v89;
  if (result.n128_f64[0] >= *v12)
  {
    if (v90 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v88;
    v214 = *(v12 + 48);
    v134 = v86[1];
    *v88 = *v86;
    *(v12 + 48) = v134;
    *v86 = result;
    v86[1] = v214;
    goto LABEL_178;
  }

  if (v90 < result.n128_f64[0])
  {
    goto LABEL_108;
  }

  v183 = *v12;
  v217 = *(v12 + 16);
  v142 = *(v12 + 48);
  *v12 = *v88;
  *(v12 + 16) = v142;
  result.n128_u64[1] = v183.n128_u64[1];
  *v88 = v183;
  *(v12 + 48) = v217;
  result.n128_u64[0] = v86->n128_u64[0];
  if (v86->n128_f64[0] < *(v12 + 32))
  {
    result = *v88;
    v92 = *(v12 + 48);
    v143 = v86[1];
    *v88 = *v86;
    *(v12 + 48) = v143;
    goto LABEL_109;
  }

  return result;
}