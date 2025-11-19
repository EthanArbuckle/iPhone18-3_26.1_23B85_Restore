void sub_1837EFDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *__p, void *a25, void *a26, void *a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_1837F11F0(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = objc_msgSend_textTokenRows(v2, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_count(v8, v9, v10, v11, v12, v13);

  if (v14 == 1)
  {
    v20 = @"row";
  }

  else
  {
    v20 = @"rows";
  }

  v21 = MEMORY[0x1E696AEC0];
  v22 = objc_msgSend_textTokenRows(v2, v15, v16, v17, v18, v19);
  v28 = objc_msgSend_count(v22, v23, v24, v25, v26, v27);
  v33 = objc_msgSend_stringWithFormat_(v21, v29, @"%ld %@", v30, v31, v32, v28, v20);

  return v33;
}

id sub_1837F12F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_description(a2, a2, a3, a4, a5, a6);

  return v6;
}

id sub_1837F1320(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_description(a2, a2, a3, a4, a5, a6);
  v13 = objc_msgSend_stringWithFormat_(v7, v9, @"Column %ld %@", v10, v11, v12, a3, v8);

  return v13;
}

void sub_1837F163C()
{
  v0 = qword_1EA84DB20;
  qword_1EA84DB20 = &unk_1EF1EC568;
}

void sub_1837F1908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1837F1D28(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1837F1DB8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  if (a1)
  {
    v17 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v7, v8, v9, v10, v11);
    if (a2 < a2 + a3)
    {
      do
      {
        v18 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v13, a2, v14, v15, v16);
        v24 = objc_msgSend_strokeIndexes(v18, v19, v20, v21, v22, v23);
        objc_msgSend_addIndexes_(v17, v25, v24, v26, v27, v28);

        ++a2;
        --a3;
      }

      while (a3);
    }

    v29 = *(a1 + 112);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1837FC374;
    v35[3] = &unk_1E6DDEA28;
    v30 = v17;
    v36 = v30;
    v37 = v12;
    objc_msgSend_enumerateObjectsUsingBlock_(v29, v31, v35, v32, v33, v34);
  }
}

void sub_1837F2280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837F2298(void *a1, void *a2, uint64_t a3, unint64_t *a4)
{
  v6 = a2;
  v12 = a1[5];
  if (*a4 >= v12 && *a4 - v12 < a1[6])
  {
    v15 = v6;
    objc_msgSend_heuristicTextScore(v6, v7, v8, v9, v10, v11);
    *(*(a1[4] + 8) + 24) = v14 + *(*(a1[4] + 8) + 24);
    v6 = v15;
  }
}

void sub_1837F26C8(void *a1, void *a2, uint64_t a3, unint64_t *a4)
{
  v6 = a2;
  v12 = a1[5];
  if (*a4 >= v12 && *a4 - v12 < a1[6])
  {
    v14 = v6;
    *(*(a1[4] + 8) + 24) |= (objc_msgSend_inputSources(v6, v7, v8, v9, v10, v11) & 0x10) != 0;
    v6 = v14;
  }
}

void sub_1837F3264(uint64_t a1, void *a2)
{
  v18 = a2;
  v7 = objc_msgSend_precedingSeparatorForToken_(*(a1 + 32), v3, v18, v4, v5, v6);
  v13 = objc_msgSend_string(v18, v8, v9, v10, v11, v12);
  objc_msgSend_appendFormat_(*(a1 + 40), v14, @"%@%@", v15, v16, v17, v7, v13);
}

void sub_1837F3670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Block_object_dispose((v30 - 120), 8);

  _Unwind_Resume(a1);
}

__n128 sub_1837F36EC(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1837F36FC(uint64_t a1, void *a2, uint64_t a3, __int128 *a4)
{
  v7 = a2;
  v18 = objc_msgSend_string(v7, v8, v9, v10, v11, v12);
  ++*(*(*(a1 + 56) + 8) + 24);
  v62 = 0;
  if ((*(a1 + 88) & 1) != 0 || *(a1 + 89) == 1)
  {
    shouldPerformStrictFiltering = objc_msgSend_shouldFilterOutStringForToken_isGibberish_shouldPerformStrictFiltering_(*(a1 + 32), v13, v7, &v62, 0, v17);
    if (a3 > 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    shouldPerformStrictFiltering = 0;
    if (a3 > 0)
    {
      goto LABEL_7;
    }
  }

  if (*(a1 + 90) != 1)
  {
    v21 = &stru_1EF1C0318;
    goto LABEL_12;
  }

LABEL_7:
  v20 = objc_msgSend_precedingSeparatorForToken_(*(a1 + 32), v13, v7, v15, v16, v17);
  v21 = v20;
  if (shouldPerformStrictFiltering && *(*(*(a1 + 64) + 8) + 24) == 1 && objc_msgSend_length(v20, v13, v14, v15, v16, v17))
  {

    v21 = @"_";
  }

LABEL_12:
  v22 = objc_msgSend_length(*(a1 + 40), v13, v14, v15, v16, v17);
  v33 = objc_msgSend_length(v21, v23, v24, v25, v26, v27);
  if (shouldPerformStrictFiltering)
  {
    v34 = objc_msgSend_countCharacters(v18, v28, v29, v30, v31, v32);
    v37 = objc_msgSend_stringByPaddingToLength_withString_startingAtIndex_(&stru_1EF1C0318, v35, v34, @"_", 0, v36);

    ++*(*(*(a1 + 72) + 8) + 24);
    v18 = v37;
  }

  v43 = objc_msgSend_length(*(a1 + 40), v28, v29, v30, v31, v32);
  if ((*(a1 + 90) & 1) == 0)
  {
    v43 += objc_msgSend_length(v21, v38, v39, v40, v41, v42);
  }

  objc_msgSend_appendFormat_(*(a1 + 40), v38, @"%@%@", v40, v41, v42, v21, v18);
  v54 = objc_msgSend_length(*(a1 + 40), v44, v45, v46, v47, v48);
  v55 = *(a1 + 48);
  if (v55)
  {
    v56 = v54 - (v33 + v22);
    if (*(a1 + 89))
    {
      v57 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v57 = v33 + v22;
    }

    if (*(a1 + 89))
    {
      v58 = 0;
    }

    else
    {
      v58 = v56;
    }

    v61 = *(a4 + 2);
    v60 = *a4;
    (*(v55 + 16))(v55, v7, a3, &v60, v57, v58);
  }

  if (v62 != 1 || (*(a1 + 89) & 1) == 0)
  {
    v59 = *(*(a1 + 80) + 8);
    if (*(v59 + 48) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v59 + 48) = v43;
    }

    *(*(*(a1 + 80) + 8) + 56) = objc_msgSend_length(*(a1 + 40), v49, v50, v51, v52, v53) - *(*(*(a1 + 80) + 8) + 48);
  }

  *(*(*(a1 + 64) + 8) + 24) = shouldPerformStrictFiltering;
}

void sub_1837F3D84(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v7 = qword_1EA84DB28;
  qword_1EA84DB28 = v6;

  v20 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v8, v9, v10, v11, v12);
  v18 = objc_msgSend_invertedSet(v20, v13, v14, v15, v16, v17);
  v19 = qword_1EA84DB38;
  qword_1EA84DB38 = v18;
}

BOOL sub_1837F3E18(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v11 = v5;
  if (!a1)
  {
    v42 = 0;
    goto LABEL_30;
  }

  v12 = objc_msgSend_properties(v5, v6, v7, v8, v9, v10);
  v23 = objc_msgSend_string(v11, v13, v14, v15, v16, v17);
  if ((v12 & 4) != 0)
  {
    goto LABEL_28;
  }

  if (qword_1EA84DB78 != -1)
  {
    dispatch_once(&qword_1EA84DB78, &unk_1EF1BE768);
  }

  v24 = objc_msgSend_properties(v11, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_stringByTrimmingCharactersInSet_(v23, v25, qword_1EA84DB50, v26, v27, v28);
  v35 = objc_msgSend_length(v29, v30, v31, v32, v33, v34);

  if ((v24 & 8) == 0)
  {
    v41 = objc_msgSend_length(v23, v36, v37, v38, v39, v40);
    v42 = v41 > 0x14;
    if (v41 > 0x14 || !v35)
    {
      goto LABEL_17;
    }

    if (objc_msgSend_length(v23, v36, v37, v38, v39, v40) >= 5)
    {
      v43 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v23, v36, qword_1EA84DB58, 3, v39, v40);
      v47 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v23, v44, qword_1EA84DB68, 3, v45, v46);
      if (objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v23, v48, qword_1EA84DB60, 1, v49, v50) == 1)
      {
        v42 = v47 > 0 || v43 > 1;
        goto LABEL_17;
      }
    }
  }

  v42 = 0;
LABEL_17:
  if (!a3 || v42)
  {
    goto LABEL_29;
  }

  if (objc_msgSend_length(v23, v36, v37, v38, v39, v40) <= 4)
  {
    v55 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v23, v52, qword_1EA84DB58, 0, v53, v54);
    v59 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v23, v56, qword_1EA84DB68, 0, v57, v58);
    v63 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v23, v60, qword_1EA84DB50, 0, v61, v62);
    v67 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v23, v64, qword_1EA84DB70, 0, v65, v66);
    v42 = 1;
    if (v59 <= 0 && v55 <= 1)
    {
      v42 = v63 > 0 && v67 > 0;
    }

    goto LABEL_29;
  }

LABEL_28:
  v42 = 0;
LABEL_29:

LABEL_30:
  return v42;
}

void sub_1837F41D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1837F41EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_properties(a2, a2, a3, a4, a5, a6);
  if ((result & 4) != 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

void sub_1837F47E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v34 - 192), 8);
  _Block_object_dispose((v34 - 144), 8);

  _Unwind_Resume(a1);
}

void sub_1837F48BC(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 40) + 8) + 24);
  v65 = 0;
  if (objc_msgSend_shouldFilterOutStringForToken_isGibberish_shouldPerformStrictFiltering_(*(a1 + 32), v4, v3, &v65, *(a1 + 80), v5))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v11 = objc_msgSend_string(v3, v6, v7, v8, v9, v10);
  v12 = sub_1837A5BBC(v11);

  v18 = objc_msgSend_string(v3, v13, v14, v15, v16, v17);
  v24 = sub_1837A5B20(v18, v19, v20, v21, v22, v23);

  if ((v65 | (v12 || v24)))
  {
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  v35 = objc_msgSend_recognizerSourceLocale(v3, v25, v26, v27, v28, v29);
  if (v35)
  {
    v36 = objc_msgSend_recognizerSourceLocale(v3, v30, v31, v32, v33, v34);
    v42 = objc_msgSend_languageCode(v36, v37, v38, v39, v40, v41);
  }

  else
  {
    v42 = &stru_1EF1C0318;
  }

  v47 = objc_msgSend_containsObject_(&unk_1EF1EC580, v43, v42, v44, v45, v46);
  if (!((objc_msgSend_properties(v3, v48, v49, v50, v51, v52) >> 2) & 1 | v47 & 1))
  {
    ++*(*(*(a1 + 64) + 8) + 24);
    v58 = objc_msgSend_string(v3, v53, v54, v55, v56, v57);
    v64 = objc_msgSend_length(v58, v59, v60, v61, v62, v63);

    if (v64 <= 2)
    {
      ++*(*(*(a1 + 72) + 8) + 24);
    }
  }
}

void sub_1837F4BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1837F4C10(uint64_t a1, void *a2)
{
  v8 = a2;
  *(*(*(a1 + 32) + 8) + 24) &= objc_msgSend_isTopOriginal(v8, v3, v4, v5, v6, v7);
}

void sub_1837F4D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1837F4D74(uint64_t a1, void *a2)
{
  v8 = a2;
  *(*(*(a1 + 32) + 8) + 24) &= objc_msgSend_hasValidPrincipalLines(v8, v3, v4, v5, v6, v7);
}

__CFString *sub_1837F53E4(__CFString *a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (a1)
  {
    if (!objc_msgSend_compare_(v3, v4, qword_1ED6A08E0, v5, v6, v7))
    {
      v26 = objc_msgSend_firstObject(a1[3].data, v9, v10, v11, v12, v13);
      a1 = objc_msgSend_precedingSeparatorForToken_(a1, v48, v26, v49, v50, v51);
      goto LABEL_6;
    }

    if (v8)
    {
      v14 = objc_msgSend_indexAtPosition_(v8, v9, 0, v11, v12, v13);
      v20 = objc_msgSend_tokenColumns(a1, v15, v16, v17, v18, v19);
      v26 = objc_msgSend_firstObject(v20, v21, v22, v23, v24, v25);

      v32 = objc_msgSend_textTokenRows(v26, v27, v28, v29, v30, v31);
      v37 = objc_msgSend_objectAtIndexedSubscript_(v32, v33, v14, v34, v35, v36);

      v43 = objc_msgSend_firstObject(v37, v38, v39, v40, v41, v42);
      a1 = objc_msgSend_precedingSeparatorForToken_(a1, v44, v43, v45, v46, v47);

LABEL_6:
      goto LABEL_8;
    }

    a1 = &stru_1EF1C0318;
  }

LABEL_8:

  return a1;
}

id sub_1837F5954(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4, v5, v6, v7);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = v2;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v59, v63, 16, v11);
  if (v17)
  {
    v18 = *v60;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v60 != v18)
        {
          objc_enumerationMutation(v9);
        }

        v20 = *(*(&v59 + 1) + 8 * i);
        if (objc_msgSend_count(v8, v12, v13, v14, v15, v16, v59) && (objc_msgSend_lastObject(v8, v21, v22, v23, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend_strokeIndexes(v20, v27, v28, v29, v30, v31), v32 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend_ch_intersectsIndexSet_(v26, v33, v32, v34, v35, v36), v32, v26, v37))
        {
          v38 = objc_msgSend_lastObject(v8, v21, v22, v23, v24, v25);
          v44 = objc_msgSend_strokeIndexes(v20, v39, v40, v41, v42, v43);
          objc_msgSend_addIndexes_(v38, v45, v44, v46, v47, v48);
        }

        else
        {
          v38 = objc_msgSend_strokeIndexes(v20, v21, v22, v23, v24, v25);
          v44 = objc_msgSend_mutableCopy(v38, v49, v50, v51, v52, v53);
          objc_msgSend_addObject_(v8, v54, v44, v55, v56, v57);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v59, v63, 16, v16);
    }

    while (v17);
  }

  return v8;
}

void sub_1837F62A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837F62D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1837F62EC(uint64_t a1, void *a2)
{
  v31 = a2;
  if ((objc_msgSend_properties(v31, v3, v4, v5, v6, v7) & 0x20) != 0)
  {
    v13 = objc_msgSend_string(v31, v8, v9, v10, v11, v12);
    v19 = objc_msgSend_length(v13, v20, v21, v22, v23, v24) + 1;
  }

  else
  {
    v13 = objc_msgSend_string(v31, v8, v9, v10, v11, v12);
    v19 = objc_msgSend_length(v13, v14, v15, v16, v17, v18);
  }

  v25 = *(*(a1 + 40) + 8);
  v33.location = *(v25 + 24);
  *(v25 + 24) = v33.location + v19;
  v33.length = v19;
  v29 = NSIntersectionRange(v33, *(a1 + 48));
  v30 = v31;
  if (v29.length)
  {
    objc_msgSend_addObject_(*(a1 + 32), v29.length, v31, v26, v27, v28);
    v30 = v31;
  }
}

BOOL sub_1837F642C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v11 = objc_msgSend_mutableCopy(v4, v6, v7, v8, v9, v10);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1837F6550;
  v24[3] = &unk_1E6DDE830;
  v12 = v11;
  v25 = v12;
  objc_msgSend_enumerateObjectsUsingBlock_(v5, v13, v24, v14, v15, v16);
  v22 = objc_msgSend_count(v12, v17, v18, v19, v20, v21) == 0;

  return v22;
}

void sub_1837F6550(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v45 = v6;
  v13 = objc_msgSend_strokeIndexes(v6, v8, v9, v10, v11, v12);
  LOBYTE(v7) = objc_msgSend_ch_intersectsIndexSet_(v7, v14, v13, v15, v16, v17);

  if (v7)
  {
    v23 = *(a1 + 32);
    v24 = objc_msgSend_strokeIndexes(v45, v18, v19, v20, v21, v22);
    LODWORD(v23) = objc_msgSend_containsIndexes_(v23, v25, v24, v26, v27, v28);

    if (!v23 || (v34 = *(a1 + 32), objc_msgSend_strokeIndexes(v45, v29, v30, v31, v32, v33), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend_removeIndexes_(v34, v36, v35, v37, v38, v39), v35, !objc_msgSend_count(*(a1 + 32), v40, v41, v42, v43, v44)))
    {
      *a4 = 1;
    }
  }
}

void sub_1837F6B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, id a36)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

void sub_1837F6C7C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = a2;
  if (objc_msgSend_containsObject_(*(a1 + 32), v7, v26, v8, v9, v10))
  {
    objc_msgSend_addIndex_(*(a1 + 40), v11, a3, v12, v13, v14);
    v20 = objc_msgSend_count(*(a1 + 40), v15, v16, v17, v18, v19);
    if (v20 == objc_msgSend_count(*(a1 + 32), v21, v22, v23, v24, v25))
    {
      *a4 = 1;
    }
  }
}

void sub_1837F6D24(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v115 = a2;
  v6 = *(*(*(a1 + 48) + 8) + 24);
  v12 = objc_msgSend_originalTokens(*(a1 + 32), v7, v8, v9, v10, v11);
  v18 = objc_msgSend_count(v12, v13, v14, v15, v16, v17);

  if (v6 >= v18)
  {
    *a4 = 1;
  }

  else
  {
    v24 = objc_msgSend_strokeIndexes(v115, v19, v20, v21, v22, v23);
    v30 = objc_msgSend_originalTokens(*(a1 + 32), v25, v26, v27, v28, v29);
    v35 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, *(*(*(a1 + 48) + 8) + 24), v32, v33, v34);
    v41 = objc_msgSend_strokeIndexes(v35, v36, v37, v38, v39, v40);
    isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v24, v42, v41, v43, v44, v45);

    if (isEqualToIndexSet)
    {
      v52 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v47, *(*(*(a1 + 48) + 8) + 24), v49, v50, v51);
      objc_msgSend_addObject_(*(a1 + 40), v53, v52, v54, v55, v56);
      ++*(*(*(a1 + 48) + 8) + 24);
    }

    else
    {
      v52 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v47, v48, v49, v50, v51);
      v67 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v57, v58, v59, v60, v61);
      while (1)
      {
        v68 = *(*(*(a1 + 48) + 8) + 24);
        v69 = objc_msgSend_originalTokens(*(a1 + 32), v62, v63, v64, v65, v66);
        if (v68 >= objc_msgSend_count(v69, v70, v71, v72, v73, v74))
        {
          break;
        }

        v80 = objc_msgSend_strokeIndexes(v115, v75, v76, v77, v78, v79);
        isEqual = objc_msgSend_isEqual_(v80, v81, v67, v82, v83, v84);

        if (isEqual)
        {
          goto LABEL_10;
        }

        v91 = objc_msgSend_originalTokens(*(a1 + 32), v86, v87, v88, v89, v90);
        v96 = objc_msgSend_objectAtIndexedSubscript_(v91, v92, *(*(*(a1 + 48) + 8) + 24), v93, v94, v95);

        objc_msgSend_addIndex_(v52, v97, *(*(*(a1 + 48) + 8) + 24), v98, v99, v100);
        v106 = objc_msgSend_strokeIndexes(v96, v101, v102, v103, v104, v105);
        objc_msgSend_addIndexes_(v67, v107, v106, v108, v109, v110);

        ++*(*(*(a1 + 48) + 8) + 24);
      }

LABEL_10:
      if (objc_msgSend_count(v52, v86, v87, v88, v89, v90))
      {
        objc_msgSend_addObject_(*(a1 + 40), v111, v52, v112, v113, v114);
      }
    }
  }
}

void sub_1837F70D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = objc_msgSend_strokeIndexes(v5, v6, v7, v8, v9, v10);
  v16 = objc_msgSend_ch_intersectsIndexSet_(v11, v12, *(a1 + 32), v13, v14, v15);

  if ((v16 & 1) != 0 && (v22 = *(a1 + 32), objc_msgSend_strokeIndexes(v5, v17, v18, v19, v20, v21), v23 = objc_claimAutoreleasedReturnValue(), LODWORD(v22) = objc_msgSend_containsIndexes_(v22, v24, v23, v25, v26, v27), v23, !v22))
  {
    v28 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v17, a3, v19, v20, v21);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1837F7270;
    v34[3] = &unk_1E6DDE8A8;
    v29 = *(a1 + 64);
    v34[4] = *(a1 + 56);
    v35 = v29;
    v36 = v5;
    v37 = *(a1 + 40);
    objc_msgSend_enumerateIndexesUsingBlock_(v28, v30, v34, v31, v32, v33);
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 40), v17, v5, v19, v20, v21);
  }
}

void sub_1837F7270(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = objc_msgSend_originalTokens(*(a1 + 32), a2, a3, a4, a5, a6);
  v13 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, a2, v10, v11, v12);
  v19 = objc_msgSend_copy(v13, v14, v15, v16, v17, v18);

  v25 = objc_msgSend_inputStrokeIdentifiers(*(a1 + 32), v20, v21, v22, v23, v24);
  v31 = objc_msgSend_strokeIndexes(v19, v26, v27, v28, v29, v30);
  v36 = objc_msgSend_objectsAtIndexes_(v25, v32, v31, v33, v34, v35);

  v191 = v36;
  v190 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v37, v36, *(a1 + 40), v38, v39);
  sub_1838C3014(v190, v211);
  objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v40, v190, v41, v42, v43);
  v192 = v50;
  v193 = v49;
  v188 = v51;
  v186 = v52;
  v53 = 0uLL;
  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  v54 = 0uLL;
  v55 = 0uLL;
  v56 = 0uLL;
  v57 = 0uLL;
  v58 = 0uLL;
  v59 = 0uLL;
  v203 = 0u;
  v204 = 0u;
  v60 = 0uLL;
  v61 = *(a1 + 48);
  if (v61)
  {
    objc_msgSend_principalLines(v61, v44, v45, v46, v47, v48);
    v54 = v195;
    v55 = v196;
    v56 = v197;
    v57 = v198;
    v58 = v199;
    v59 = v200;
    v60 = v201;
    v53 = v202;
  }

  v62.f64[0] = v188;
  v62.f64[1] = v186;
  __asm { FMOV            V17.2D, #1.0 }

  v68 = vbslq_s8(vceqzq_f64(v62), _Q17, v62);
  v69.f64[0] = v193;
  v69.f64[1] = v192;
  v203 = vmlaq_f64(v69, v68, v54);
  v204 = vmlaq_f64(v69, v68, v55);
  v205 = vmlaq_f64(v69, v68, v56);
  v206 = vmlaq_f64(v69, v68, v57);
  v207 = vmlaq_f64(v69, v68, v58);
  v208 = vmlaq_f64(v69, v68, v59);
  v189 = v68;
  v209 = vmlaq_f64(v69, v68, v60);
  v210 = vmlaq_f64(v69, v68, v53);
  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  sub_1838CD8C4(v203.f64, v211, v195.f64);
  v179 = v195;
  v180 = v197;
  v181 = v196;
  v182 = v199;
  v183 = v198;
  v185 = v200;
  v187 = v202;
  v184 = v201;
  v75 = objc_msgSend_string(v19, v70, v71, v72, v73, v74);
  v81 = objc_msgSend_strokeIndexes(v19, v76, v77, v78, v79, v80);
  v178 = objc_msgSend_wordID(v19, v82, v83, v84, v85, v86);
  objc_msgSend_modelScore(v19, v87, v88, v89, v90, v91);
  v177 = v92;
  objc_msgSend_recognitionScore(v19, v93, v94, v95, v96, v97);
  v176 = v98;
  objc_msgSend_combinedScore(v19, v99, v100, v101, v102, v103);
  v175 = v104;
  objc_msgSend_alignmentScore(v19, v105, v106, v107, v108, v109);
  v174 = v110;
  v116 = objc_msgSend_properties(v19, v111, v112, v113, v114, v115);
  v122 = objc_msgSend_recognizerSourceLocale(v19, v117, v118, v119, v120, v121);
  v128 = objc_msgSend_inputSources(v19, v123, v124, v125, v126, v127);
  v134 = objc_msgSend_substrokeCount(v19, v129, v130, v131, v132, v133);
  objc_msgSend_bounds(v19, v135, v136, v137, v138, v139);
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;
  objc_msgSend_originalBounds(v19, v148, v149, v150, v151, v152);
  v154 = v153;
  v156 = v155;
  v158 = v157;
  v160 = v159;
  v161.f64[0] = v193;
  v161.f64[1] = v192;
  v194[0] = vdivq_f64(vsubq_f64(v179, v161), v189);
  v194[1] = vdivq_f64(vsubq_f64(v181, v161), v189);
  v194[2] = vdivq_f64(vsubq_f64(v180, v161), v189);
  v194[3] = vdivq_f64(vsubq_f64(v183, v161), v189);
  v194[4] = vdivq_f64(vsubq_f64(v182, v161), v189);
  v194[5] = vdivq_f64(vsubq_f64(v185, v161), v189);
  v194[6] = vdivq_f64(vsubq_f64(v184, v161), v189);
  v194[7] = vdivq_f64(vsubq_f64(v187, v161), v189);
  v167 = objc_msgSend_principalPoints(*(a1 + 48), v162, v163, v164, v165, v166);
  v169 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v168, v75, v81, v178, v116, v122, v128, v177, v176, v175, v174, v141, v143, v145, v147, v134, v154, v156, v158, v160, v194, v167);

  objc_msgSend_addObject_(*(a1 + 56), v170, v169, v171, v172, v173);
  if (v211[0])
  {
    v211[1] = v211[0];
    operator delete(v211[0]);
  }
}

void sub_1837F766C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40)
{
  v43 = *(v41 - 176);
  if (v43)
  {
    *(v41 - 168) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

void sub_1837F7EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

BOOL sub_1837F7FEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_textTokenRows(a2, a2, a3, a4, a5, a6);
  v11 = objc_msgSend_indexOfObjectPassingTest_(v6, v7, &unk_1EF1BE728, v8, v9, v10);

  return v11 == 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t sub_1837F8048(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = a2;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v15, v19, 16, v4);
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v2);
        }

        if ((objc_msgSend_isTopOriginal(*(*(&v15 + 1) + 8 * v12), v5, v6, v7, v8, v9, v15) & 1) == 0)
        {
          v13 = 0;
          goto LABEL_11;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v15, v19, 16, v9);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

void sub_1837F8170(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v197 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_tokenColumns(*(a1 + 32), a2, a3, a4, a5, a6);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, a2, v8, v9, v10);

  v17 = objc_msgSend_transcriptionPaths(*(a1 + 32), v12, v13, v14, v15, v16);
  v23 = objc_msgSend_firstObject(v17, v18, v19, v20, v21, v22);
  v28 = objc_msgSend_indexAtPosition_(v23, v24, a2, v25, v26, v27);

  v29 = [CHMutableTokenizedResultColumn alloc];
  v35 = objc_msgSend_textTokenRows(v11, v30, v31, v32, v33, v34);
  v179 = objc_msgSend_initWithTokenRows_(v29, v36, v35, v37, v38, v39);

  v45 = objc_msgSend_array(MEMORY[0x1E695DF70], v40, v41, v42, v43, v44);
  v51 = objc_msgSend_textTokenRows(v11, v46, v47, v48, v49, v50);
  v57 = objc_msgSend_count(v51, v52, v53, v54, v55, v56);

  if (v28 >= v57)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v63 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v69 = objc_msgSend_tokenColumnCount(*(a1 + 32), v64, v65, v66, v67, v68);
      v75 = objc_msgSend_textTokenRows(v11, v70, v71, v72, v73, v74);
      v81 = objc_msgSend_transcriptionPaths(*(a1 + 32), v76, v77, v78, v79, v80);
      v87 = objc_msgSend_firstObject(v81, v82, v83, v84, v85, v86);
      *buf = 134219010;
      v188 = v69;
      v189 = 2048;
      v190 = a2;
      v191 = 2112;
      v192 = v75;
      v193 = 2048;
      v194 = v28;
      v195 = 2112;
      v196 = v87;
      _os_log_impl(&dword_18366B000, v63, OS_LOG_TYPE_ERROR, "Column does not have a row at the top path row index. Column Count: %ld Column Index: %ld Column Rows: %@ Top Row Index: %ld Top Path: %@", buf, 0x34u);
    }
  }

  v88 = objc_msgSend_textTokenRows(v11, v58, v59, v60, v61, v62);
  v94 = v28 < objc_msgSend_count(v88, v89, v90, v91, v92, v93);

  if (!v94)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v100 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v100, OS_LOG_TYPE_FAULT))
    {
      v106 = objc_msgSend_tokenColumnCount(*(a1 + 32), v101, v102, v103, v104, v105);
      v112 = objc_msgSend_textTokenRows(v11, v107, v108, v109, v110, v111);
      v118 = objc_msgSend_transcriptionPaths(*(a1 + 32), v113, v114, v115, v116, v117);
      v124 = objc_msgSend_firstObject(v118, v119, v120, v121, v122, v123);
      *buf = 134219010;
      v188 = v106;
      v189 = 2048;
      v190 = a2;
      v191 = 2112;
      v192 = v112;
      v193 = 2048;
      v194 = v28;
      v195 = 2112;
      v196 = v124;
      _os_log_impl(&dword_18366B000, v100, OS_LOG_TYPE_FAULT, "Column does not have a row at the top path row index. Column Count: %ld Column Index: %ld Column Rows: %@ Top Row Index: %ld Top Path: %@", buf, 0x34u);
    }
  }

  v125 = objc_msgSend_textTokenRows(v11, v95, v96, v97, v98, v99);
  v131 = v28 < objc_msgSend_count(v125, v126, v127, v128, v129, v130);

  if (v131)
  {
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v137 = objc_msgSend_textTokenRows(v11, v132, v133, v134, v135, v136);
    v142 = objc_msgSend_objectAtIndexedSubscript_(v137, v138, v28, v139, v140, v141);

    v150 = objc_msgSend_countByEnumeratingWithState_objects_count_(v142, v143, &v182, v186, 16, v144);
    if (v150)
    {
      v151 = *v183;
      do
      {
        for (i = 0; i != v150; ++i)
        {
          if (*v183 != v151)
          {
            objc_enumerationMutation(v142);
          }

          v153 = objc_msgSend_mutableCopy(*(*(&v182 + 1) + 8 * i), v145, v146, v147, v148, v149);
          v159 = objc_msgSend_inputSources(v153, v154, v155, v156, v157, v158);
          OriginalToken = objc_msgSend_makeOriginalToken_(CHTokenizedTextResultToken, v160, v159, v161, v162, v163);
          objc_msgSend_setInputSources_(v153, v165, OriginalToken, v166, v167, v168);
          objc_msgSend_addObject_(v45, v169, v153, v170, v171, v172);
        }

        v150 = objc_msgSend_countByEnumeratingWithState_objects_count_(v142, v145, &v182, v186, 16, v149);
      }

      while (v150);
    }

    objc_msgSend_setTokenRowWithTokens_atIndex_(v179, v173, v45, v28, v174, v175);
    objc_msgSend_replaceObjectAtIndex_withObject_(*(a1 + 40), v176, a2, v179, v177, v178);
  }
}

void sub_1837F8714(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_msgSend_combinedScore(v9, v3, v4, v5, v6, v7);
  *(*(*(a1 + 32) + 8) + 24) = v8 * *(*(*(a1 + 32) + 8) + 24);
}

void sub_1837F87B0()
{
  v182 = *MEMORY[0x1E69E9840];
  v31 = xmmword_1839CD610;
  v32 = 0;
  v33 = xmmword_1839D06A0;
  v34 = xmmword_1839D06B0;
  v35 = 0;
  v36 = xmmword_1839D06C0;
  v37 = xmmword_1839D06D0;
  v38 = 0;
  v39 = xmmword_1839D06E0;
  v40 = xmmword_1839D06F0;
  v41 = 0;
  v42 = xmmword_1839D0700;
  v43 = xmmword_1839D0710;
  v45 = xmmword_1839D0720;
  v46 = xmmword_1839D0730;
  v44 = 0;
  v47 = 0;
  v48 = xmmword_1839D0740;
  v49 = xmmword_1839D0750;
  v50 = 0;
  v51 = 0x4014000000000000;
  v52 = 0x3FFCCCCCCCCCCCCDLL;
  v53 = 0;
  v54 = xmmword_1839D0760;
  v55 = xmmword_1839D0770;
  v56 = xmmword_1839CD610;
  v57 = 1;
  v58 = 0x400999999999999ALL;
  v59 = 0x4000000000000000;
  v60 = 0;
  v61 = xmmword_1839D0780;
  v62 = xmmword_1839D0790;
  v63 = xmmword_1839D06D0;
  v64 = 1;
  v65 = 0x4010000000000000;
  v66 = 0x400199999999999ALL;
  v67 = 0;
  v68 = xmmword_1839D07A0;
  v69 = xmmword_1839D07B0;
  v70 = xmmword_1839D0710;
  v71 = 1;
  v72 = 0x4014CCCCCCCCCCCDLL;
  v73 = 0x4002666666666666;
  v74 = 0;
  v75 = xmmword_1839D07C0;
  v76 = xmmword_1839D07D0;
  v77 = xmmword_1839D0750;
  v78 = 1;
  v79 = 0x401999999999999ALL;
  v80 = 0x4003333333333333;
  v81 = 0;
  v82 = xmmword_1839D07E0;
  v83 = xmmword_1839D07F0;
  v84 = xmmword_1839CD610;
  v85 = 2;
  v86 = 0x400199999999999ALL;
  v87 = 0x3FF6666666666666;
  v88 = 0;
  v89 = vdupq_n_s64(2uLL);
  v90 = xmmword_1839D0800;
  v91 = xmmword_1839D06D0;
  v92 = 2;
  v93 = 0x4014000000000000;
  v94 = 0x3FFCCCCCCCCCCCCDLL;
  v95 = 0;
  v96 = xmmword_1839D0810;
  v97 = xmmword_1839D0820;
  v98 = xmmword_1839D0710;
  v99 = 2;
  v100 = 0x401599999999999ALL;
  v101 = 0x4000CCCCCCCCCCCDLL;
  v102 = 0;
  v103 = xmmword_1839D0830;
  v104 = xmmword_1839D0840;
  v105 = xmmword_1839D0750;
  v106 = 2;
  v107 = 0x4018000000000000;
  v108 = 0x4002666666666666;
  v109 = 0;
  v110 = xmmword_1839D0850;
  v111 = xmmword_1839D0860;
  v112 = vdupq_n_s64(1uLL);
  v113 = 0;
  v114 = 0x3FD851EB851EB852;
  v115 = 0x3FDEB851EB851EB8;
  v116 = 1;
  v117 = xmmword_1839D0870;
  v118 = xmmword_1839D0880;
  v119 = xmmword_1839D0890;
  v120 = 0;
  v121 = 0x3FDD70A3D70A3D71;
  v122 = 0x3FE0A3D70A3D70A4;
  v123 = 1;
  v124 = xmmword_1839D08A0;
  v125 = xmmword_1839D08B0;
  v126 = xmmword_1839D08C0;
  v127 = 0;
  v128 = 0x3FE147AE147AE148;
  v129 = 0x3FE1EB851EB851ECLL;
  v130 = 1;
  v131 = xmmword_1839D08D0;
  v132 = xmmword_1839D08E0;
  v133 = xmmword_1839D08F0;
  v134 = 0;
  v135 = 0x3FE28F5C28F5C28FLL;
  v136 = 0x3FE3D70A3D70A3D7;
  v137 = 1;
  v138 = xmmword_1839D0760;
  v139 = xmmword_1839D0900;
  v140 = xmmword_1839D0910;
  v141 = 0;
  v142 = 0x3FE47AE147AE147BLL;
  v143 = 0x3FE47AE147AE147BLL;
  v144 = 1;
  v145 = xmmword_1839D0920;
  v146 = xmmword_1839D0930;
  v147 = v112;
  v148 = 2;
  v149 = 0x3FC999999999999ALL;
  v150 = 0x3FE147AE147AE148;
  v151 = 1;
  v152 = v89;
  v153 = xmmword_1839D0940;
  v154 = xmmword_1839D0890;
  v155 = 2;
  v156 = 0x3FCC28F5C28F5C29;
  v157 = 0x3FE47AE147AE147BLL;
  v158 = 1;
  v159 = xmmword_1839D0810;
  v160 = xmmword_1839D0950;
  v161 = xmmword_1839D08C0;
  v162 = 2;
  v163 = 0x3FD0A3D70A3D70A4;
  v164 = 0x3FE999999999999ALL;
  v165 = 1;
  v166 = xmmword_1839D0830;
  v167 = xmmword_1839D0960;
  v168 = xmmword_1839D08F0;
  v169 = 2;
  v170 = 0x3FD1EB851EB851ECLL;
  v171 = 0x3FEAE147AE147AE1;
  v172 = 1;
  v173 = xmmword_1839D0850;
  v174 = xmmword_1839D0970;
  v175 = xmmword_1839D0910;
  v176 = 2;
  v177 = 0x3FD3333333333333;
  v178 = 0x3FECCCCCCCCCCCCDLL;
  v179 = 1;
  v180 = xmmword_1839D0980;
  v181 = xmmword_1839D0990;
  v0 = qword_1EA84DBC0;
  if (!qword_1EA84DBC8)
  {
    v19 = 0;
    goto LABEL_45;
  }

  v1 = qword_1EA84DBB8;
  qword_1EA84DBB8 = &qword_1EA84DBC0;
  *(qword_1EA84DBC0 + 16) = 0;
  qword_1EA84DBC0 = 0;
  qword_1EA84DBC8 = 0;
  if (*(v1 + 8))
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = v1;
  }

  if (!v2)
  {
    v0 = 0;
    v19 = 0;
    goto LABEL_45;
  }

  v3 = v2[2];
  if (v3)
  {
    v4 = *v3;
    if (*v3 == v2)
    {
      *v3 = 0;
      while (1)
      {
        v30 = v3[1];
        if (!v30)
        {
          break;
        }

        do
        {
          v3 = v30;
          v30 = *v30;
        }

        while (v30);
      }
    }

    else
    {
      for (v3[1] = 0; v4; v4 = v3[1])
      {
        do
        {
          v3 = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }
  }

  v5 = 0;
  while (2)
  {
    while (1)
    {
      i = v3;
      v7 = &v31 + v5;
      v8 = qword_1EA84DBC0;
      v9 = *(&v31 + v5);
      if (!qword_1EA84DBC0)
      {
        break;
      }

      v10 = *(v7 + 1);
      v11 = *(v7 + 2);
      while (1)
      {
        while (1)
        {
          v13 = v8;
          v14 = v8[4];
          if (v9 < v14)
          {
            goto LABEL_15;
          }

          if (v14 >= v9)
          {
            break;
          }

LABEL_18:
          v8 = v8[1];
          if (!v8)
          {
            v12 = v13 + 1;
            goto LABEL_27;
          }
        }

        v15 = v8[5];
        if (v10 >= v15)
        {
          if (v15 < v10)
          {
            goto LABEL_18;
          }

          v16 = v8[6];
          if (v11 >= v16)
          {
            break;
          }
        }

LABEL_15:
        v8 = *v8;
        v12 = v13;
        if (!*v13)
        {
          goto LABEL_27;
        }
      }

      if (v16 < v11)
      {
        goto LABEL_18;
      }

      v5 += 40;
      if (v5 == 1760)
      {
        goto LABEL_60;
      }
    }

    v12 = &qword_1EA84DBC0;
    v13 = &qword_1EA84DBC0;
LABEL_27:
    v2[4] = v9;
    v2[5] = *(v7 + 1);
    v2[6] = *(v7 + 2);
    *(v2 + 7) = *(v7 + 24);
    *v2 = 0;
    v2[1] = 0;
    v2[2] = v13;
    *v12 = v2;
    if (*qword_1EA84DBB8)
    {
      qword_1EA84DBB8 = *qword_1EA84DBB8;
    }

    sub_1836894A0(qword_1EA84DBC0, v2);
    ++qword_1EA84DBC8;
    if (!v3)
    {
      v19 = v5 + 40;
      if (v19 == 1760)
      {
        return;
      }

      v0 = qword_1EA84DBC0;
LABEL_45:
      v20 = (&v31 + v19);
      if (!v0)
      {
LABEL_58:
        operator new();
      }

      v21 = *v20;
      v22 = v20[1];
      v23 = v0;
      v24 = v20[2];
      while (1)
      {
        v25 = v23;
        v26 = v23[4];
        if (v21 < v26)
        {
          goto LABEL_47;
        }

        if (v26 < v21)
        {
          goto LABEL_50;
        }

        v27 = v25[5];
        if (v22 < v27)
        {
          goto LABEL_47;
        }

        if (v27 < v22)
        {
          goto LABEL_50;
        }

        v28 = v25[6];
        if (v24 < v28)
        {
LABEL_47:
          v23 = *v25;
          if (!*v25)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v28 >= v24)
          {
            v19 += 40;
            if (v19 == 1760)
            {
              return;
            }

            goto LABEL_45;
          }

LABEL_50:
          v23 = v25[1];
          if (!v23)
          {
            goto LABEL_58;
          }
        }
      }
    }

    v3 = v3[2];
    if (v3)
    {
      v17 = *v3;
      if (*v3 == i)
      {
        *v3 = 0;
        while (1)
        {
          v18 = v3[1];
          if (!v18)
          {
            break;
          }

          do
          {
            v3 = v18;
            v18 = *v18;
          }

          while (v18);
        }
      }

      else
      {
        for (v3[1] = 0; v17; v17 = v3[1])
        {
          do
          {
            v3 = v17;
            v17 = *v17;
          }

          while (v17);
        }
      }

      v2 = i;
      v5 += 40;
      if (v5 != 1760)
      {
        continue;
      }

LABEL_60:
      sub_1836E1928(v2);
      if (v3)
      {
        v29 = v3[2];
        for (i = v3; v29; v29 = v29[2])
        {
          i = v29;
        }

        goto LABEL_63;
      }
    }

    else
    {
      v5 += 40;
      v2 = i;
      if (v5 != 1760)
      {
        continue;
      }

LABEL_63:

      sub_1836E1928(i);
    }

    break;
  }
}

void sub_1837F90C4(void *a1, void *a2)
{
  v3 = a2;
  ++*(*(a1[5] + 8) + 24);
  v8 = a1[4];
  if (v8 && (v16 = v3, objc_msgSend_stringByTrimmingCharactersInSet_(v3, v4, v8, v5, v6, v7), v9 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend_length(v9, v10, v11, v12, v13, v14), v9, v3 = v16, !v15))
  {
    ++*(*(a1[6] + 8) + 24);
  }
}

void sub_1837F964C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  _Block_object_dispose((v14 - 168), 8);
  _Block_object_dispose((v14 - 136), 8);

  _Unwind_Resume(a1);
}

double sub_1837F97A8(void *a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (a1)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v10 = objc_msgSend_length(v3, v4, v5, v6, v7, v8);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1837F98F4;
    v15[3] = &unk_1E6DDE960;
    v15[4] = &v20;
    v15[5] = &v16;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(a1, v11, v9, 0, v10, v15);
    v12 = v21[3] / v17[3];
    v21[3] = v12;
    if (v12 <= 1.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1.0;
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

void sub_1837F98CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1837F98F4(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_msgSend_recognitionScore(v9, v3, v4, v5, v6, v7);
  *(*(*(a1 + 32) + 8) + 24) = v8 + *(*(*(a1 + 32) + 8) + 24);
  ++*(*(*(a1 + 40) + 8) + 24);
}

void sub_1837F9978(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v138 = v6;
  objc_opt_self();
  if ((atomic_load_explicit(&qword_1EA84DB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA84DB40))
  {
    qword_1EA84DBC8 = 0;
    qword_1EA84DBC0 = 0;
    qword_1EA84DBB8 = &qword_1EA84DBC0;
    __cxa_atexit(sub_1837F8784, &qword_1EA84DBB8, &dword_18366B000);
    __cxa_guard_release(&qword_1EA84DB40);
  }

  if (qword_1EA84DB48 != -1)
  {
    dispatch_once(&qword_1EA84DB48, &unk_1EF1BE748);
  }

  v12 = objc_msgSend_languageCode(v6, v7, v8, v9, v10, v11);
  if (objc_msgSend_hasPrefix_(v12, v13, @"zh", v14, v15, v16))
  {

LABEL_7:
    v38 = ~(objc_msgSend_properties(v5, v22, v23, v24, v25, v26) >> 1) & 2;
    v39 = 10;
    v40 = 1;
    goto LABEL_14;
  }

  v27 = objc_msgSend_languageCode(v6, v17, v18, v19, v20, v21);
  hasPrefix = objc_msgSend_hasPrefix_(v27, v28, @"yue", v29, v30, v31);

  if (hasPrefix)
  {
    goto LABEL_7;
  }

  if ((objc_msgSend_properties(v5, v22, v23, v24, v25, v26) & 4) != 0)
  {
    v38 = 0;
    v40 = 0;
  }

  else
  {
    v40 = 0;
    if ((objc_msgSend_properties(v5, v33, v34, v35, v36, v37) & 8) != 0)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }
  }

  v39 = 8;
LABEL_14:
  v41 = objc_msgSend_strokeIndexes(v5, v33, v34, v35, v36, v37);
  v47 = objc_msgSend_count(v41, v42, v43, v44, v45, v46);
  v58 = objc_msgSend_substrokeCount(v5, v48, v49, v50, v51, v52);
  if (v47 <= v58)
  {
    if (objc_msgSend_substrokeCount(v5, v53, v54, v55, v56, v57) < v39)
    {
LABEL_16:
      v69 = objc_msgSend_strokeIndexes(v5, v64, v65, v66, v67, v68);
      v75 = objc_msgSend_count(v69, v70, v71, v72, v73, v74);
      if (v75 <= objc_msgSend_substrokeCount(v5, v76, v77, v78, v79, v80))
      {
        v39 = objc_msgSend_substrokeCount(v5, v81, v82, v83, v84, v85);

        if (v47 > v58)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v86 = objc_msgSend_strokeIndexes(v5, v81, v82, v83, v84, v85);
        v39 = objc_msgSend_count(v86, v87, v88, v89, v90, v91);

        if (v47 > v58)
        {
LABEL_21:

          v92 = qword_1EA84DBC0;
          if (qword_1EA84DBC0)
          {
            goto LABEL_27;
          }

LABEL_36:
          operator new();
        }
      }

      goto LABEL_24;
    }
  }

  else
  {
    v137 = objc_msgSend_strokeIndexes(v5, v53, v54, v55, v56, v57);
    if (objc_msgSend_count(v137, v59, v60, v61, v62, v63) < v39)
    {
      goto LABEL_16;
    }
  }

  if (v47 > v58)
  {
    goto LABEL_21;
  }

LABEL_24:

  v92 = qword_1EA84DBC0;
  if (!qword_1EA84DBC0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    while (1)
    {
LABEL_27:
      v93 = v92;
      v94 = *(v92 + 32);
      if (v40 < v94)
      {
        goto LABEL_26;
      }

      if (v94 >= v40)
      {
        break;
      }

LABEL_29:
      v92 = *(v93 + 8);
      if (!v92)
      {
        goto LABEL_36;
      }
    }

    v95 = *(v93 + 40);
    if (v39 >= v95)
    {
      if (v95 < v39)
      {
        goto LABEL_29;
      }

      v96 = *(v93 + 48);
      if (v38 >= v96)
      {
        break;
      }
    }

LABEL_26:
    v92 = *v93;
    if (!*v93)
    {
      goto LABEL_36;
    }
  }

  if (v96 < v38)
  {
    goto LABEL_29;
  }

  v97 = *(v93 + 56);
  v98 = *(v93 + 64);

  objc_msgSend_combinedScore(v5, v99, v100, v101, v102, v103);
  v105 = v104;
  v106 = *(a1 + 40);
  v107 = v5;
  v108 = v106;
  objc_opt_self();
  v147 = 0;
  v148 = &v147;
  v149 = 0x2020000000;
  v150 = 0;
  v143 = 0;
  v144 = &v143;
  v145 = 0x2020000000;
  v146 = 0;
  v114 = objc_msgSend_string(v107, v109, v110, v111, v112, v113);
  v120 = objc_msgSend_string(v107, v115, v116, v117, v118, v119);
  v126 = objc_msgSend_length(v120, v121, v122, v123, v124, v125);
  v139[0] = MEMORY[0x1E69E9820];
  v139[1] = 3221225472;
  v139[2] = sub_1837F90C4;
  v139[3] = &unk_1E6DDE938;
  v141 = &v147;
  v127 = v108;
  v140 = v127;
  v142 = &v143;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v114, v128, 0, v126, 2, v139);

  v129 = v144[3];
  v130 = v148[3];

  _Block_object_dispose(&v143, 8);
  _Block_object_dispose(&v147, 8);

  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) - ((v105 - v97) / v98 + v130 * -0.2);
  if (*(a1 + 96) == 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = v129 * 0.2 + *(*(*(a1 + 56) + 8) + 24);
    v136 = *(*(a1 + 64) + 8);
    if (v129 < 1)
    {
      *(v136 + 24) = 0;
    }

    else
    {
      if ((*(v136 + 24) & 1) == 0)
      {
        ++*(*(*(a1 + 72) + 8) + 24);
        v136 = *(*(a1 + 64) + 8);
      }

      *(v136 + 24) = 1;
    }
  }

  if ((objc_msgSend_properties(v107, v131, v132, v133, v134, v135) & 4) == 0)
  {
    ++*(*(*(a1 + 80) + 8) + 24);
  }

  ++*(*(*(a1 + 88) + 8) + 24);
}

void sub_1837F9F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  if (v12 > v13)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1837FA044(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v7 = qword_1EA84DB50;
  qword_1EA84DB50 = v6;

  v13 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v8, v9, v10, v11, v12);
  v14 = qword_1EA84DB58;
  qword_1EA84DB58 = v13;

  v20 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x1E696AB08], v15, v16, v17, v18, v19);
  v21 = qword_1EA84DB60;
  qword_1EA84DB60 = v20;

  v27 = objc_msgSend_symbolCharacterSet(MEMORY[0x1E696AB08], v22, v23, v24, v25, v26);
  v28 = qword_1EA84DB68;
  qword_1EA84DB68 = v27;

  v34 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v29, v30, v31, v32, v33);
  v35 = qword_1EA84DB70;
  qword_1EA84DB70 = v34;
}

void sub_1837FA334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1837FA378(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1837FA390(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v50 = a2;
  v12 = objc_msgSend_tokenColumns(*(a1 + 32), v7, v8, v9, v10, v11);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, *a4, v14, v15, v16);
  v23 = objc_msgSend_textTokenRows(v17, v18, v19, v20, v21, v22);
  v28 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, a4[1], v25, v26, v27);

  if (objc_msgSend_count(v28, v29, v30, v31, v32, v33) - 1 == a3)
  {
    objc_msgSend_removeAllIndexes(*(*(*(a1 + 40) + 8) + 40), v34, v35, v36, v37, v38);
    v39 = *(*(*(a1 + 40) + 8) + 40);
    v45 = objc_msgSend_strokeIndexes(v50, v40, v41, v42, v43, v44);
    objc_msgSend_addIndexes_(v39, v46, v45, v47, v48, v49);
  }
}

void sub_1837FACFC(uint64_t a1)
{
  v27 = objc_alloc_init(MEMORY[0x1E696AD48]);
  objc_msgSend_formUnionWithCharacterSet_(v27, v2, *(a1 + 32), v3, v4, v5);
  objc_msgSend_formUnionWithCharacterSet_(v27, v6, *(a1 + 40), v7, v8, v9);
  v15 = objc_msgSend_ch_mathCharSet(MEMORY[0x1E696AB08], v10, v11, v12, v13, v14);
  objc_msgSend_formUnionWithCharacterSet_(v27, v16, v15, v17, v18, v19);

  v25 = objc_msgSend_copy(v27, v20, v21, v22, v23, v24);
  v26 = qword_1EA84DB80;
  qword_1EA84DB80 = v25;
}

void sub_1837FB644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, void *a30, void *a31, void *a32, uint64_t a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56)
{
  _Block_object_dispose(&a45, 8);

  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v61 - 224), 8);

  _Unwind_Resume(a1);
}

void sub_1837FB940(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  if (a4[2])
  {
    v12 = 0;
  }

  else
  {
    v12 = *a4 == 0;
  }

  v13 = *(*(*(a1 + 40) + 8) + 40);
  v14 = MEMORY[0x1E696AD98];
  v35 = v6;
  objc_msgSend_combinedScore(v6, v7, v8, v9, v10, v11);
  *&v15 = v15;
  v21 = objc_msgSend_numberWithFloat_(v14, v16, v17, v18, v19, v20, v15);
  objc_msgSend_addObject_(v13, v22, v21, v23, v24, v25);

  v34 = objc_msgSend_precedingSeparatorForToken_(*(a1 + 32), v26, v35, v27, v28, v29);
  if (v12)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v34);
  }

  objc_msgSend_addObject_(*(*(*(a1 + 56) + 8) + 40), v30, v34, v31, v32, v33);
}

void sub_1837FBA8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = *(a1 + 32);
  v12 = MEMORY[0x1E696AD98];
  v132 = v10;
  v18 = objc_msgSend_wordID(v10, v13, v14, v15, v16, v17);
  v23 = objc_msgSend_numberWithUnsignedInt_(v12, v19, v18, v20, v21, v22);
  objc_msgSend_addObject_(v11, v24, v23, v25, v26, v27);

  v28 = *(a1 + 40);
  v32 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v29, a5, a6, v30, v31);
  objc_msgSend_addObject_(v28, v33, v32, v34, v35, v36);

  v37 = *(a1 + 48);
  v38 = MEMORY[0x1E696AD98];
  objc_msgSend_recognitionScore(v132, v39, v40, v41, v42, v43);
  *&v44 = v44;
  v50 = objc_msgSend_numberWithFloat_(v38, v45, v46, v47, v48, v49, v44);
  objc_msgSend_addObject_(v37, v51, v50, v52, v53, v54);

  v55 = *(a1 + 56);
  v56 = MEMORY[0x1E696AD98];
  objc_msgSend_combinedScore(v132, v57, v58, v59, v60, v61);
  *&v62 = v62;
  v68 = objc_msgSend_numberWithFloat_(v56, v63, v64, v65, v66, v67, v62);
  objc_msgSend_addObject_(v55, v69, v68, v70, v71, v72);

  v73 = *(a1 + 64);
  v79 = objc_msgSend_strokeIndexes(v132, v74, v75, v76, v77, v78);
  objc_msgSend_addObject_(v73, v80, v79, v81, v82, v83);

  v84 = *(a1 + 72);
  v85 = MEMORY[0x1E696AD98];
  v91 = objc_msgSend_properties(v132, v86, v87, v88, v89, v90);
  v96 = objc_msgSend_numberWithBool_(v85, v92, (v91 >> 2) & 1, v93, v94, v95);
  objc_msgSend_addObject_(v84, v97, v96, v98, v99, v100);

  v101 = *(a1 + 80);
  v102 = MEMORY[0x1E696AD98];
  v108 = objc_msgSend_properties(v132, v103, v104, v105, v106, v107);
  v113 = objc_msgSend_numberWithBool_(v102, v109, (v108 >> 3) & 1, v110, v111, v112);
  objc_msgSend_addObject_(v101, v114, v113, v115, v116, v117);

  if ((objc_msgSend_properties(v132, v118, v119, v120, v121, v122) & 2) != 0)
  {
    objc_msgSend_addIndex_(*(a1 + 88), v123, a3, v125, v126, v127);
  }

  if ((objc_msgSend_properties(v132, v123, v124, v125, v126, v127) & 0x10) != 0)
  {
    objc_msgSend_addIndex_(*(a1 + 96), v128, a3, v129, v130, v131);
  }
}

void sub_1837FC374(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v12 = objc_msgSend_strokeIndexes(v5, v7, v8, v9, v10, v11);
  LODWORD(v6) = objc_msgSend_containsIndexes_(v6, v13, v12, v14, v15, v16);

  if (v6)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), v5, a3);
  }
}

id sub_1837FD338(uint64_t a1, void *a2)
{
  v146 = *MEMORY[0x1E69E9840];
  v131 = a2;
  objc_opt_self();
  v138 = objc_msgSend_array(MEMORY[0x1E695DF70], v2, v3, v4, v5, v6);
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  obj = v131;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v141, v145, 16, v8);
  if (v9)
  {
    v137 = *v142;
    do
    {
      v139 = v9;
      for (i = 0; i != v139; ++i)
      {
        if (*v142 != v137)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v141 + 1) + 8 * i);
        if (objc_msgSend_isTopOriginal(v16, v10, v11, v12, v13, v14))
        {
          objc_msgSend_addObject_(v138, v17, v16, v19, v20, v21);
        }

        else
        {
          v22 = objc_msgSend_inputSources(v16, v17, v18, v19, v20, v21);
          OriginalToken = objc_msgSend_makeOriginalToken_(CHTokenizedTextResultToken, v23, v22, v24, v25, v26);
          v33 = objc_msgSend_string(v16, v28, v29, v30, v31, v32);
          v39 = objc_msgSend_strokeIndexes(v16, v34, v35, v36, v37, v38);
          v45 = objc_msgSend_wordID(v16, v40, v41, v42, v43, v44);
          objc_msgSend_modelScore(v16, v46, v47, v48, v49, v50);
          v52 = v51;
          objc_msgSend_recognitionScore(v16, v53, v54, v55, v56, v57);
          v59 = v58;
          objc_msgSend_combinedScore(v16, v60, v61, v62, v63, v64);
          v66 = v65;
          objc_msgSend_alignmentScore(v16, v67, v68, v69, v70, v71);
          v73 = v72;
          v79 = objc_msgSend_properties(v16, v74, v75, v76, v77, v78);
          v85 = objc_msgSend_recognizerSourceLocale(v16, v80, v81, v82, v83, v84);
          v133 = v73;
          v134 = v66;
          v135 = v59;
          v136 = v52;
          v91 = objc_msgSend_substrokeCount(v16, v86, v87, v88, v89, v90);
          objc_msgSend_bounds(v16, v92, v93, v94, v95, v96);
          v98 = v97;
          v100 = v99;
          v102 = v101;
          v104 = v103;
          objc_msgSend_originalBounds(v16, v105, v106, v107, v108, v109);
          v116 = v115;
          v118 = v117;
          v120 = v119;
          v122 = v121;
          if (v16)
          {
            objc_msgSend_principalLines(v16, v110, v111, v112, v113, v114);
          }

          else
          {
            memset(v140, 0, sizeof(v140));
          }

          v123 = objc_msgSend_principalPoints(v16, v110, v111, v112, v113, v114);
          v125 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v124, v33, v39, v45, v79, v85, OriginalToken, v136, v135, v134, v133, v98, v100, v102, v104, v91, v116, v118, v120, v122, v140, v123);

          objc_msgSend_addObject_(v138, v126, v125, v127, v128, v129);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v141, v145, 16, v14);
    }

    while (v9);
  }

  return v138;
}

void sub_1837FEC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_objecta, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, void *a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);

  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);

  _Block_object_dispose(&a69, 8);
  v72 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v72;
    operator delete(v72);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1837FEF5C(__n128 *a1, __n128 *a2)
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

void sub_1837FEF80(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1837FEF98(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  if ((objc_msgSend_properties(v6, v7, v8, v9, v10, v11) & 0x20) != 0)
  {
    v30 = objc_msgSend_string(v6, v12, v13, v14, v15, v16);
    v23 = objc_msgSend_length(v30, v31, v32, v33, v34, v35) + 1;

    v29 = *(*(*(a1 + 64) + 8) + 24) + 1;
  }

  else
  {
    v17 = objc_msgSend_string(v6, v12, v13, v14, v15, v16);
    v23 = objc_msgSend_length(v17, v18, v19, v20, v21, v22);

    v29 = *(*(*(a1 + 64) + 8) + 24);
  }

  if (objc_msgSend_length(*(a1 + 32), v24, v25, v26, v27, v28) + v29 == *(a1 + 112))
  {
    *(*(*(a1 + 72) + 8) + 24) = *a4;
  }

  if (*(a1 + 120) == 1 && v29 == *(*(*(a1 + 80) + 8) + 24))
  {
    v41 = objc_msgSend_length(*(*(*(a1 + 88) + 8) + 40), v36, v37, v38, v39, v40);
    v47 = objc_msgSend_string(v6, v42, v43, v44, v45, v46);
    if (v41 >= objc_msgSend_length(v47, v48, v49, v50, v51, v52))
    {
      v59 = objc_msgSend_string(v6, v53, v54, v55, v56, v57);
      v58 = objc_msgSend_length(v59, v60, v61, v62, v63, v64);
    }

    else
    {
      v58 = objc_msgSend_length(*(*(*(a1 + 88) + 8) + 40), v53, v54, v55, v56, v57);
    }

    v69 = objc_msgSend_substringToIndex_(*(*(*(a1 + 88) + 8) + 40), v65, v58, v66, v67, v68);
    v75 = objc_msgSend_string(v6, v70, v71, v72, v73, v74);
    v80 = objc_msgSend_substringFromIndex_(v75, v76, v58, v77, v78, v79);

    v326 = v80;
    v85 = objc_msgSend_stringByAppendingString_(v69, v81, v80, v82, v83, v84);

    v91 = objc_msgSend_string(v6, v86, v87, v88, v89, v90);
    LOBYTE(v69) = objc_msgSend_isEqualToString_(v85, v92, v91, v93, v94, v95);

    if ((v69 & 1) == 0)
    {
      v325 = v85;
      v101 = [CHTokenizedTextResultToken alloc];
      v107 = objc_msgSend_strokeIndexes(v6, v102, v103, v104, v105, v106);
      v324 = v101;
      v323 = objc_msgSend_wordID(v6, v108, v109, v110, v111, v112);
      objc_msgSend_modelScore(v6, v113, v114, v115, v116, v117);
      v322 = v118;
      objc_msgSend_recognitionScore(v6, v119, v120, v121, v122, v123);
      v321 = v124;
      objc_msgSend_combinedScore(v6, v125, v126, v127, v128, v129);
      v320 = v130;
      objc_msgSend_alignmentScore(v6, v131, v132, v133, v134, v135);
      v319 = v136;
      v142 = objc_msgSend_properties(v6, v137, v138, v139, v140, v141);
      v148 = objc_msgSend_recognizerSourceLocale(v6, v143, v144, v145, v146, v147);
      v154 = objc_msgSend_inputSources(v6, v149, v150, v151, v152, v153);
      v160 = objc_msgSend_substrokeCount(v6, v155, v156, v157, v158, v159);
      objc_msgSend_bounds(v6, v161, v162, v163, v164, v165);
      v167 = v166;
      v169 = v168;
      v171 = v170;
      v173 = v172;
      objc_msgSend_originalBounds(v6, v174, v175, v176, v177, v178);
      v185 = v184;
      v187 = v186;
      v189 = v188;
      v191 = v190;
      if (v6)
      {
        objc_msgSend_principalLines(v6, v179, v180, v181, v182, v183);
      }

      else
      {
        memset(v327, 0, 128);
      }

      v192 = objc_msgSend_principalPoints(v6, v179, v180, v181, v182, v183);
      v194 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v324, v193, v325, v107, v323, v142, v148, v154 | 0x100, v322, v321, v320, v319, v167, v169, v171, v173, v160, v185, v187, v189, v191, v327, v192);

      v199 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v195, *a4, v196, v197, v198);
      v205 = objc_msgSend_textTokenRows(v199, v200, v201, v202, v203, v204);
      v210 = objc_msgSend_objectAtIndexedSubscript_(v205, v206, a4[1], v207, v208, v209);

      v221 = objc_msgSend_array(MEMORY[0x1E695DF70], v211, v212, v213, v214, v215);
      for (i = 0; i < objc_msgSend_count(v210, v216, v217, v218, v219, v220); ++i)
      {
        if (i == a4[2])
        {
          objc_msgSend_addObject_(v221, v223, v194, v224, v225, v226);
        }

        else
        {
          v227 = objc_msgSend_objectAtIndex_(v210, v223, i, v224, v225, v226);
          objc_msgSend_addObject_(v221, v228, v227, v229, v230, v231);
        }
      }

      v232 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v223, *a4, v224, v225, v226);
      objc_msgSend_setTokenRowWithTokens_atIndex_(v232, v233, v221, a4[1], v234, v235);

      v240 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v236, *a4, v237, v238, v239);
      v245 = objc_msgSend_addTokenRowWithTokens_(v240, v241, v210, v242, v243, v244);

      v246 = *(*(*(a1 + 96) + 8) + 48);
      if (*(v246 + 8 * *a4) == a4[1])
      {
        *(v246 + 8 * *a4) = v245;
      }

      v85 = v325;
    }

    v247 = objc_msgSend_string(v6, v96, v97, v98, v99, v100);
    v253 = objc_msgSend_length(v247, v248, v249, v250, v251, v252);

    if (objc_msgSend_length(*(*(*(a1 + 88) + 8) + 40), v254, v255, v256, v257, v258) <= v253)
    {
      v290 = *(*(*(a1 + 104) + 8) + 24);
      if (v290 != objc_msgSend_count(*(a1 + 48), v259, v260, v261, v262, v263) - 1)
      {
        v297 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v291, ++*(*(*(a1 + 104) + 8) + 24), v292, v293, v294);
        *(*(*(a1 + 80) + 8) + 24) = objc_msgSend_integerValue(v297, v298, v299, v300, v301, v302);

        v303 = *(a1 + 56);
        v308 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v304, *(*(*(a1 + 80) + 8) + 24), v305, v306, v307);
        v313 = objc_msgSend_objectForKey_(v303, v309, v308, v310, v311, v312);
        v314 = *(*(a1 + 88) + 8);
        v315 = *(v314 + 40);
        *(v314 + 40) = v313;

LABEL_36:
        goto LABEL_37;
      }

      v295 = *(*(a1 + 80) + 8);
      v296 = -1;
LABEL_35:
      *(v295 + 24) = v296;
      goto LABEL_36;
    }

    v264 = *(*(*(a1 + 88) + 8) + 40);
    v265 = objc_msgSend_string(v6, v259, v260, v261, v262, v263);
    v271 = objc_msgSend_length(v265, v266, v267, v268, v269, v270);
    v275 = objc_msgSend_substringWithRange_(v264, v272, v271, 1, v273, v274);
    if (objc_msgSend_isEqualToString_(v275, v276, @" ", v277, v278, v279))
    {
      v285 = objc_msgSend_length(*(*(*(a1 + 88) + 8) + 40), v280, v281, v282, v283, v284);

      if (v285 > v253 + 1)
      {
        objc_msgSend_substringFromIndex_(*(*(*(a1 + 88) + 8) + 40), v286, ++v253, v287, v288, v289);
        v316 = LABEL_34:;
        v317 = *(*(a1 + 88) + 8);
        v318 = *(v317 + 40);
        *(v317 + 40) = v316;

        v295 = *(*(a1 + 80) + 8);
        v296 = *(v295 + 24) + v253;
        goto LABEL_35;
      }
    }

    else
    {
    }

    objc_msgSend_substringFromIndex_(*(*(*(a1 + 88) + 8) + 40), v286, v253, v287, v288, v289);
    goto LABEL_34;
  }

LABEL_37:
  *(*(*(a1 + 64) + 8) + 24) += v23;
}

void sub_1837FFB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1837FFC34(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v35 = a2;
  if ((objc_msgSend_properties(v35, v6, v7, v8, v9, v10) & 0x20) != 0)
  {
    v29 = objc_msgSend_string(v35, v11, v12, v13, v14, v15);
    v22 = objc_msgSend_length(v29, v30, v31, v32, v33, v34) + 1;

    v28 = *(*(*(a1 + 40) + 8) + 24) + 1;
  }

  else
  {
    v16 = objc_msgSend_string(v35, v11, v12, v13, v14, v15);
    v22 = objc_msgSend_length(v16, v17, v18, v19, v20, v21);

    v28 = *(*(*(a1 + 40) + 8) + 24);
  }

  if (objc_msgSend_length(*(a1 + 32), v23, v24, v25, v26, v27) + v28 == *(a1 + 56))
  {
    *(*(*(a1 + 48) + 8) + 24) = *a4;
  }

  *(*(*(a1 + 40) + 8) + 24) += v22;
}

uint64_t sub_1838008B4(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = objc_msgSend_strokeIndexes(v3, v4, v5, v6, v7, v8);
  isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v9, v10, *(a1 + 32), v11, v12, v13);

  if ((isEqualToIndexSet & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v15 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_msgSend_description(v3, v16, v17, v18, v19, v20);
      v22 = *(a1 + 32);
      v28 = objc_msgSend_strokeIndexes(v3, v23, v24, v25, v26, v27);
      v30 = 138412802;
      v31 = v21;
      v32 = 2112;
      v33 = v22;
      v34 = 2112;
      v35 = v28;
      _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_ERROR, "Unexpected mismatched stroke indexes in result %@. Top result stroke index set contains %@. This alternative result stroke index set contains %@.", &v30, 0x20u);
    }
  }

  return isEqualToIndexSet;
}

void sub_183802060(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  obj = objc_msgSend_mutableCopy(v6, v7, v8, v9, v10, v11);

  v17 = objc_msgSend_ch_englishCharacterSet(MEMORY[0x1E696AB08], v12, v13, v14, v15, v16);
  objc_msgSend_formUnionWithCharacterSet_(obj, v18, v17, v19, v20, v21);

  objc_storeStrong(&qword_1EA84DB90, obj);
  v27 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v22, v23, v24, v25, v26);
  v33 = objc_msgSend_mutableCopy(v27, v28, v29, v30, v31, v32);

  v39 = objc_msgSend_ch_latinCharacterSet(MEMORY[0x1E696AB08], v34, v35, v36, v37, v38);
  objc_msgSend_formUnionWithCharacterSet_(v33, v40, v39, v41, v42, v43);

  v44 = qword_1EA84DB98;
  qword_1EA84DB98 = v33;
}

void sub_18380213C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_183802174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1838021E8(uint64_t a1, void *a2)
{
  v8 = a2;
  *(*(*(a1 + 32) + 8) + 24) &= objc_msgSend_properties(v8, v3, v4, v5, v6, v7) >> 2;
}

void sub_183802258(uint64_t a1, void *a2)
{
  v8 = a2;
  *(*(*(a1 + 32) + 8) + 24) &= objc_msgSend_properties(v8, v3, v4, v5, v6, v7) >> 8;
}

id sub_183802E50(uint64_t a1, void *a2)
{
  v2 = sub_1837A3BB4(a2, *(a1 + 32), *(a1 + 40));

  return v2;
}

void sub_183803704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_183804C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  _Block_object_dispose(&STACK[0x290], 8);

  _Unwind_Resume(a1);
}

void sub_1838052C8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v66 = v6;
  if (*a4 == *(a1 + 56) && !a4[2])
  {
    v28 = objc_msgSend_properties(v6, v7, v8, v9, v10, v11);
    v39 = objc_msgSend_inputSources(v66, v29, v30, v31, v32, v33) & 0xFFFFFFFFFFFFFFFBLL;
    if (*(a1 + 72) == 1 && (objc_msgSend_properties(v66, v34, v35, v36, v37, v38) & 0x20) == 0)
    {
      v39 |= 0x200uLL;
      v28 |= 0x20uLL;
    }

    v40 = *(*(*(a1 + 48) + 8) + 40);
    v41 = objc_msgSend_string(v66, v34, v35, v36, v37, v38);
    v47 = objc_msgSend_firstComposedCharacter(v41, v42, v43, v44, v45, v46);
    v50 = objc_msgSend_shouldRemoveSpaceBetweenPreviousChar_andNextChar_inLocale_(CHRecognizerConfiguration, v48, v40, v47, *(a1 + 32), v49);

    if (v50)
    {
      v56 = v39 | 0x200;
    }

    else
    {
      v56 = v39;
    }

    v57 = objc_msgSend_mutableCopy(v66, v51, v52, v53, v54, v55);
    v17 = v57;
    if (v50)
    {
      objc_msgSend_setProperties_(v57, v58, v28 & 0xFFFFFFFFFFFFFFDFLL, v59, v60, v61);
    }

    else
    {
      objc_msgSend_setProperties_(v57, v58, v28, v59, v60, v61);
    }

    objc_msgSend_setInputSources_(v17, v62, v56, v63, v64, v65);
  }

  else
  {
    v17 = v6;
    if (!objc_msgSend_isTopOriginal(v6, v7, v8, v9, v10, v11))
    {
      goto LABEL_16;
    }

    v18 = objc_msgSend_inputSources(v66, v12, v13, v14, v15, v16);
    v17 = objc_msgSend_mutableCopy(v66, v19, v20, v21, v22, v23);
    objc_msgSend_setInputSources_(v17, v24, v18 & 0xFFFFFFFFFFFFFFFBLL, v25, v26, v27);
  }

LABEL_16:
  objc_msgSend_addObject_(*(a1 + 40), v12, v17, v14, v15, v16);
}

void sub_1838054C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AD48], a2, a3, a4, a5, a6);
  v7 = qword_1EA84DBA8;
  qword_1EA84DBA8 = v6;

  v8 = qword_1EA84DBA8;
  v18 = objc_msgSend_ch_basicAlphabeticCharacterSet(MEMORY[0x1E696AB08], v9, v10, v11, v12, v13);
  objc_msgSend_formUnionWithCharacterSet_(v8, v14, v18, v15, v16, v17);
}

void sub_183805F28(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v87 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v6, v7, v8, v9, v10);
  v16 = objc_msgSend_strokeIndexes(v5, v11, v12, v13, v14, v15);
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = sub_1838061F8;
  v88[3] = &unk_1E6DDE520;
  v90 = *(a1 + 56);
  v17 = v87;
  v89 = v17;
  objc_msgSend_enumerateIndexesUsingBlock_(v16, v18, v88, v19, v20, v21);

  v27 = objc_msgSend_mutableCopy(v5, v22, v23, v24, v25, v26);
  objc_msgSend_setStrokeIndexes_(v27, v28, v17, v29, v30, v31);
  if (!a3)
  {
    if ((*(a1 + 64) & 1) != 0 || (objc_msgSend_lastComposedCharacter(*(a1 + 32), v32, v33, v34, v35, v36), v86 = objc_claimAutoreleasedReturnValue(), objc_msgSend_string(v5, v37, v38, v39, v40, v41), v85 = objc_claimAutoreleasedReturnValue(), objc_msgSend_firstComposedCharacter(v85, v42, v43, v44, v45, v46), v84 = objc_claimAutoreleasedReturnValue(), objc_msgSend_recognizerSourceLocale(v5, v47, v48, v49, v50, v51), v52 = objc_claimAutoreleasedReturnValue(), v53 = *(a1 + 40), v59 = objc_msgSend_length(*(a1 + 32), v54, v55, v56, v57, v58), objc_msgSend_string(v5, v60, v61, v62, v63, v64), v65 = objc_claimAutoreleasedReturnValue(), v71 = objc_msgSend_length(v65, v66, v67, v68, v69, v70), LODWORD(v53) = objc_msgSend_shouldInsertSpaceBetweenPreviousChar_andNextChar_inLocale_inString_atRange_withQuoteCount_(CHRecognizerConfiguration, v72, v86, v84, v52, v53, v59, v71, 0), v65, v52, v84, v85, v86, v53))
    {
      v73 = objc_msgSend_properties(v27, v32, v33, v34, v35, v36);
      objc_msgSend_setProperties_(v27, v74, v73 | 0x20, v75, v76, v77);
    }
  }

  v78 = *(a1 + 48);
  v79 = objc_msgSend_copy(v27, v32, v33, v34, v35, v36);
  objc_msgSend_addObject_(v78, v80, v79, v81, v82, v83);
}

void sub_183807448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (v36)
  {
    operator delete(v36);
  }

  if (v35)
  {
    operator delete(v35);
  }

  v39 = *(v37 - 136);
  if (v39)
  {
    v40 = *(v37 - 128);
    v41 = *(v37 - 136);
    if (v40 != v39)
    {
      v42 = *(v37 - 128);
      do
      {
        v44 = *(v42 - 24);
        v42 -= 24;
        v43 = v44;
        if (v44)
        {
          *(v40 - 16) = v43;
          operator delete(v43);
        }

        v40 = v42;
      }

      while (v42 != v39);
      v41 = *(v37 - 136);
    }

    *(v37 - 128) = v39;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

void sub_183809260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  sub_18369F0F0(&a33);
  sub_18369F0F0((v36 - 168));

  _Unwind_Resume(a1);
}

void sub_18380A05C(id *a1, void *a2)
{
  v168 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (a1)
  {
    v9 = a1;
    v10 = MEMORY[0x1E695DF70];
    v153 = v9;
    v11 = objc_msgSend_count(v9[4], v3, v4, v5, v6, v7);
    v156 = objc_msgSend_arrayWithCapacity_(v10, v12, v11, v13, v14, v15);
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    obj = v153[4];
    v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v163, v167, 16, v17);
    if (v157)
    {
      v155 = *v164;
      do
      {
        for (i = 0; i != v157; ++i)
        {
          if (*v164 != v155)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v163 + 1) + 8 * i);
          v24 = MEMORY[0x1E695DF70];
          v25 = objc_msgSend_textTokenRows(v23, v18, v19, v20, v21, v22);
          v31 = objc_msgSend_count(v25, v26, v27, v28, v29, v30);
          v159 = objc_msgSend_arrayWithCapacity_(v24, v32, v31, v33, v34, v35);

          for (j = 0; ; ++j)
          {
            v42 = objc_msgSend_textTokenRows(v23, v36, v37, v38, v39, v40);
            v48 = j < objc_msgSend_count(v42, v43, v44, v45, v46, v47);

            if (!v48)
            {
              break;
            }

            v54 = MEMORY[0x1E695DF70];
            v55 = objc_msgSend_textTokenRows(v23, v49, v50, v51, v52, v53);
            v60 = objc_msgSend_objectAtIndexedSubscript_(v55, v56, j, v57, v58, v59);
            v66 = objc_msgSend_count(v60, v61, v62, v63, v64, v65);
            v71 = objc_msgSend_arrayWithCapacity_(v54, v67, v66, v68, v69, v70);

            for (k = 0; ; ++k)
            {
              v78 = objc_msgSend_textTokenRows(v23, v72, v73, v74, v75, v76);
              v83 = objc_msgSend_objectAtIndexedSubscript_(v78, v79, j, v80, v81, v82);
              v89 = k < objc_msgSend_count(v83, v84, v85, v86, v87, v88);

              if (!v89)
              {
                break;
              }

              v95 = objc_msgSend_textTokenRows(v23, v90, v91, v92, v93, v94);
              v100 = objc_msgSend_objectAtIndexedSubscript_(v95, v96, j, v97, v98, v99);
              v105 = objc_msgSend_objectAtIndexedSubscript_(v100, v101, k, v102, v103, v104);
              v111 = objc_msgSend_mutableCopy(v105, v106, v107, v108, v109, v110);

              v8[2](v8, v111);
              objc_msgSend_addObject_(v71, v112, v111, v113, v114, v115);
            }

            objc_msgSend_addObject_(v159, v90, v71, v92, v93, v94);
          }

          v116 = [CHTokenizedResultColumn alloc];
          v121 = objc_msgSend_initWithTokenRows_(v116, v117, v159, v118, v119, v120);
          objc_msgSend_addObject_(v156, v122, v121, v123, v124, v125);
        }

        v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v163, v167, 16, v22);
      }

      while (v157);
    }

    objc_storeStrong(v153 + 4, v156);
    v126 = MEMORY[0x1E695DF70];
    v132 = objc_msgSend_originalTokens(v153, v127, v128, v129, v130, v131);
    v138 = objc_msgSend_count(v132, v133, v134, v135, v136, v137);
    v143 = objc_msgSend_arrayWithCapacity_(v126, v139, v138, v140, v141, v142);

    v160[0] = MEMORY[0x1E69E9820];
    v160[1] = 3221225472;
    v160[2] = sub_18380A568;
    v160[3] = &unk_1E6DDEB88;
    v162 = v8;
    v144 = v143;
    v161 = v144;
    objc_msgSend_enumerateOriginalTokensWithBlock_(v153, v145, v160, v146, v147, v148);
    objc_msgSend_setOriginalTokens_(v153, v149, v144, v150, v151, v152);
  }
}

void sub_18380A568(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_msgSend_mutableCopy(a2, a2, a3, a4, a5, a6);
  (*(*(a1 + 40) + 16))();
  objc_msgSend_addObject_(*(a1 + 32), v7, v11, v8, v9, v10);
}

void sub_18380A650(uint64_t a1, void *a2)
{
  v22 = a2;
  v8 = objc_msgSend_strokeIndexes(v22, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_mutableCopy(v8, v9, v10, v11, v12, v13);

  objc_msgSend_shiftIndexesStartingAtIndex_by_(v14, v15, 0, *(a1 + 32), v16, v17);
  objc_msgSend_setStrokeIndexes_(v22, v18, v14, v19, v20, v21);
}

void sub_18380A878(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = MEMORY[0x1E696AD98];
  v9 = objc_msgSend_count(*(a1 + 32), a2, a3, a4, a5, a6);
  v23 = objc_msgSend_numberWithUnsignedInteger_(v8, v10, v9, v11, v12, v13);
  v14 = *(a1 + 32);
  v19 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v15, a2, v16, v17, v18);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v20, v23, v19, v21, v22);
}

void sub_18380A93C(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v4, v5, v6, v7, v8);
  v15 = objc_msgSend_strokeIndexes(v3, v10, v11, v12, v13, v14);
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = sub_18380AA88;
  v28 = &unk_1E6DDE028;
  v16 = v9;
  v29 = v16;
  v30 = *(a1 + 32);
  objc_msgSend_enumerateIndexesUsingBlock_(v15, v17, &v25, v18, v19, v20);

  objc_msgSend_setStrokeIndexes_(v3, v21, v16, v22, v23, v24, v25, v26, v27, v28);
}

void sub_18380AA88(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v23 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, a2, a4, a5, a6);
  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v23, v9, v10, v11);
  v18 = objc_msgSend_intValue(v12, v13, v14, v15, v16, v17);
  objc_msgSend_addIndex_(v6, v19, v18, v20, v21, v22);
}

void sub_18380ABDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v4, v5, v6, v7, v8);
  v15 = objc_msgSend_strokeIndexes(v3, v10, v11, v12, v13, v14);
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = sub_18380AD20;
  v28 = &unk_1E6DDE028;
  v29 = *(a1 + 32);
  v16 = v9;
  v30 = v16;
  objc_msgSend_enumerateIndexesUsingBlock_(v15, v17, &v25, v18, v19, v20);

  objc_msgSend_setStrokeIndexes_(v3, v21, v16, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_18380AD20(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, a2, a4, a5, a6);
  v13 = objc_msgSend_intValue(v7, v8, v9, v10, v11, v12);

  v18 = *(a1 + 40);

  return objc_msgSend_addIndex_(v18, v14, v13, v15, v16, v17);
}

void sub_18380B1C0(uint64_t a1, char **a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = a3;
  v7 = a2;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * (&v10[-*a1] >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_18368964C();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
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

    v32 = 8 * ((a2 - v11) >> 3);
    v33 = 24 * a5;
    __dst = (v32 + 24 * a5);
    v34 = v32;
    do
    {
      *v34 = 0;
      v34[1] = 0;
      v34[2] = 0;
      v35 = *(v6 + 8);
      if (v35 != *v6)
      {
        if (((v35 - *v6) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18368964C();
      }

      v34 += 3;
      v6 += 24;
      v33 -= 24;
    }

    while (v33);
    v36 = *(a1 + 8) - a2;
    memcpy(__dst, a2, v36);
    v37 = &__dst[v36];
    *(a1 + 8) = v7;
    v38 = *a1;
    v39 = v7 - *a1;
    v40 = v32 - v39;
    memcpy((v32 - v39), *a1, v39);
    *a1 = v40;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v38)
    {
      operator delete(v38);
    }

    return;
  }

  v15 = v10 - a2;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) < a5)
  {
    v16 = v15 + a3;
    v17 = sub_18380B630(a1, (v15 + a3), a4, *(a1 + 8));
    v18 = v17;
    *(a1 + 8) = v17;
    if (v15 >= 1)
    {
      v19 = &v7[3 * a5];
      v20 = &v17[-3 * a5];
      for (i = v17; v20 < v10; i += 3)
      {
        *i = 0;
        i[1] = 0;
        i[2] = 0;
        *i = *v20;
        i[2] = *(v20 + 2);
        *v20 = 0;
        *(v20 + 1) = 0;
        *(v20 + 2) = 0;
        v20 += 24;
      }

      *(a1 + 8) = i;
      if (v17 != v19)
      {
        v22 = 0;
        v23 = -3 * a5;
        do
        {
          v25 = &v18[v22];
          v27 = &v18[v22 - 3];
          v26 = *v27;
          if (*v27)
          {
            *(v25 - 2) = v26;
            operator delete(v26);
            *v27 = 0;
            v18[v22 - 2] = 0;
            v18[v22 - 1] = 0;
          }

          v24 = &v18[v23 - 3];
          *v27 = *v24;
          *(v25 - 1) = v18[v23 - 1];
          *v24 = 0;
          *(v24 + 8) = 0;
          *(v24 + 16) = 0;
          v22 -= 3;
          v19 += 3;
          v23 -= 3;
        }

        while (v18 != v19);
      }

      do
      {
        if (v6 != v7)
        {
          sub_18368A3D8(v7, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
        }

        v6 += 24;
        v7 += 3;
      }

      while (v6 != v16);
    }

    return;
  }

  v28 = &a2[3 * a5];
  v29 = &v10[-24 * a5];
  if (v29 >= v10)
  {
    *(a1 + 8) = v10;
    if (v10 == v28)
    {
      goto LABEL_42;
    }

LABEL_38:
    v41 = 0;
    v42 = (&a2[3 * a5] - v10);
    do
    {
      v44 = &v41[v10];
      v46 = &v41[v10 - 24];
      v45 = *v46;
      if (*v46)
      {
        *(v44 - 2) = v45;
        operator delete(v45);
        *v46 = 0;
        *&v41[v10 - 16] = 0;
        *&v41[v10 - 8] = 0;
      }

      v43 = &v41[v29 - 24];
      *v46 = *v43;
      *(v44 - 1) = *&v41[v29 - 8];
      *v43 = 0;
      *(v43 + 8) = 0;
      *(v43 + 16) = 0;
      v41 -= 24;
    }

    while (v42 != v41);
    goto LABEL_42;
  }

  v30 = &v10[-24 * a5];
  v31 = *(a1 + 8);
  do
  {
    *v31 = 0;
    v31[1] = 0;
    v31[2] = 0;
    *v31 = *v30;
    v31[2] = *(v30 + 2);
    *v30 = 0;
    *(v30 + 1) = 0;
    *(v30 + 2) = 0;
    v30 += 24;
    v31 += 3;
  }

  while (v30 < v10);
  *(a1 + 8) = v31;
  if (v10 != v28)
  {
    goto LABEL_38;
  }

LABEL_42:
  v47 = v6 + 24 * a5;
  do
  {
    if (v6 != v7)
    {
      sub_18368A3D8(v7, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
    }

    v6 += 24;
    v7 += 3;
  }

  while (v6 != v47);
}

void sub_18380B604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  a14 = v14;
  sub_1836AEC7C(&a12);
  _Unwind_Resume(a1);
}

void *sub_18380B630(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18368964C();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_18380B714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_18369F28C(&a9);
  _Unwind_Resume(a1);
}

void *sub_18380B73C(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_18368964C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_183688F00();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18368964C();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_18380B8A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_1836AEC7C(va);
  _Unwind_Resume(a1);
}

void sub_18380B8CC(char ***a1, char **a2, char **a3, unint64_t a4)
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
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
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
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_18368964C();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_18368A3D8(v8, *v5, v5[1], (v5[1] - *v5) >> 3);
        }

        v5 += 3;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v22 = v15;
    do
    {
      v24 = *(v22 - 3);
      v22 -= 24;
      v23 = v24;
      if (v24)
      {
        *(v15 - 2) = v23;
        operator delete(v23);
      }

      v15 = v22;
    }

    while (v22 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_18368A3D8(v8, *v18, v18[1], (v18[1] - *v18) >> 3);
      }

      v18 += 3;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_18380B630(a1, (v5 + v16), a3, v15);
}

void sub_18380BB38()
{
  v0 = objc_autoreleasePoolPush();
  qword_1ED6A08E0 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v1, 0x7FFFFFFFFFFFFFFFLL, v2, v3, v4);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_18380BB8C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%C", a4, a5, a6, a2);
  v11 = objc_msgSend_objectForKeyedSubscript_(&unk_1EF1EBB80, v7, v6, v8, v9, v10);
  v17 = objc_msgSend_unsignedIntegerValue(v11, v12, v13, v14, v15, v16);

  return v17;
}

uint64_t sub_18380BDC0()
{
  v0 = objc_alloc_init(MEMORY[0x1E69C6570]);
  v1 = qword_1EA84D008;
  qword_1EA84D008 = v0;

  v2 = qword_1EA84D008;

  return MEMORY[0x1EEE66B58](v2, sel_spellServer_findMisspelledWordInString_language_wordCount_countOnly_correction_, 0, @"abcxyz", @"en_US", 0);
}

void sub_18380DA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, void *a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  _Block_object_dispose(&a32, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_18380DC48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18380DC60(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v153 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_pointCount(*(a1 + 32), a2, a3, a4, a5, a6))
  {
    return;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (!v7)
  {
    goto LABEL_7;
  }

  if (qword_1EA84D020 == -1)
  {
    v13 = qword_1EA84D018;
    if (!v8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84D020, &unk_1EF1BE7E8);
    v13 = qword_1EA84D018;
    if (!v8)
    {
      goto LABEL_26;
    }
  }

  v14 = objc_msgSend_objectForKey_(v8, v9, CHMathRecognitionOptionActiveAlphabetMode, v10, v11, v12);
  isEqualToString = objc_msgSend_isEqualToString_(v14, v15, @"scientific", v16, v17, v18);

  if (isEqualToString)
  {

LABEL_7:
    v24 = 0;
    goto LABEL_27;
  }

  v25 = objc_msgSend_objectForKey_(v8, v20, CHMathRecognitionOptionActiveAlphabetMode, v21, v22, v23);
  v30 = objc_msgSend_isEqualToString_(v25, v26, @"custom", v27, v28, v29);

  if (v30)
  {
    v35 = objc_msgSend_objectForKey_(v8, v31, CHMathRecognitionOptionActiveAlphabet, v32, v33, v34);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v35;
      if (!v40)
      {
        goto LABEL_16;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v41, v42, v43, v44, v45), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend_componentsSeparatedByCharactersInSet_(v35, v47, v46, v48, v49, v50), v40 = objc_claimAutoreleasedReturnValue(), v46, !v40))
      {
LABEL_16:
        if (qword_1EA84DC48 == -1)
        {
          v56 = qword_1EA84DC58;
          if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
LABEL_23:
            v24 = v13;
            goto LABEL_24;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v56 = qword_1EA84DC58;
          if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }
        }

        *buf = 0;
        _os_log_impl(&dword_18366B000, v56, OS_LOG_TYPE_ERROR, "Active math alphabet (CHMathRecognitionOptionActiveAlphabet) must be defined in custom alphabet mode.", buf, 2u);
        goto LABEL_23;
      }
    }

    v51 = objc_msgSend_indexesOfObjectsPassingTest_(v40, v36, &unk_1EF1BE808, v37, v38, v39);
    v56 = objc_msgSend_objectsAtIndexes_(v40, v52, v51, v53, v54, v55);

    if (objc_msgSend_count(v56, v57, v58, v59, v60, v61))
    {
      v24 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFA8], v62, @"<BOS>", v63, v64, v65, @"<EOS>", @"<PAD>", 0);
      objc_msgSend_addObjectsFromArray_(v24, v66, v56, v67, v68, v69);

LABEL_24:
      goto LABEL_27;
    }

    if (qword_1EA84DC48 == -1)
    {
      v70 = qword_1EA84DC58;
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v70 = qword_1EA84DC58;
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v70, OS_LOG_TYPE_ERROR, "Custom math alphabet can't be empty.", buf, 2u);
    goto LABEL_22;
  }

LABEL_26:
  v24 = v13;
LABEL_27:

  v75 = *(a1 + 40);
  if (v75)
  {
    objc_msgSend_setActiveAlphabet_(*(v75 + 56), v71, v24, v72, v73, v74);
  }

  else
  {
    objc_msgSend_setActiveAlphabet_(0, v71, v24, v72, v73, v74);
  }

  v85 = objc_msgSend_declaredVariables(*(a1 + 40), v76, v77, v78, v79, v80);
  v86 = *(a1 + 40);
  if (v86)
  {
    objc_msgSend_setDeclaredVariables_(*(v86 + 56), v81, v85, v82, v83, v84);
  }

  else
  {
    objc_msgSend_setDeclaredVariables_(0, v81, v85, v82, v83, v84);
  }

  v92 = objc_msgSend_locales(*(a1 + 40), v87, v88, v89, v90, v91);

  v98 = *(a1 + 40);
  if (v92)
  {
    v103 = objc_msgSend_locales(v98, v93, v94, v95, v96, v97);
    v104 = *(a1 + 40);
    if (v104)
    {
      objc_msgSend_setRecognitionLocales_(*(v104 + 56), v99, v103, v100, v101, v102);
    }

    else
    {
      objc_msgSend_setRecognitionLocales_(0, v99, v103, v100, v101, v102);
    }
  }

  else
  {
    if (v98)
    {
      v98 = v98[7];
    }

    objc_msgSend_setRecognitionLocales_(v98, v93, MEMORY[0x1E695E0F0], v95, v96, v97);
  }

  if (qword_1EA84DC48 == -1)
  {
    v105 = qword_1EA84DC58;
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
LABEL_40:
      v111 = objc_msgSend_strokeCount(*(a1 + 32), v106, v107, v108, v109, v110);
      v112 = *(a1 + 40);
      if (v112)
      {
        v112 = v112[7];
      }

      v113 = v112;
      v119 = objc_msgSend_activeAlphabet(v113, v114, v115, v116, v117, v118);
      v125 = objc_msgSend_count(v119, v120, v121, v122, v123, v124);
      v126 = *(a1 + 40);
      if (v126)
      {
        v126 = v126[7];
      }

      v127 = v126;
      v133 = objc_msgSend_declaredVariables(v127, v128, v129, v130, v131, v132);
      v139 = objc_msgSend_count(v133, v134, v135, v136, v137, v138);
      *buf = 134218496;
      v148 = v111;
      v149 = 2048;
      v150 = v125;
      v151 = 2048;
      v152 = v139;
      _os_log_impl(&dword_18366B000, v105, OS_LOG_TYPE_DEFAULT, "Running math recognizer on a drawing with %lu strokes. Active alphabet size: %lu, Declared variables count: %lu", buf, 0x20u);
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v105 = qword_1EA84DC58;
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }
  }

  v140 = *(a1 + 40);
  if (v140)
  {
    v140 = v140[7];
  }

  v141 = v140;
  v144 = objc_msgSend_recognizeDrawing_beamSize_shouldCancel_(v141, v142, *(a1 + 32), 2, *(a1 + 56), v143);
  v145 = *(*(a1 + 64) + 8);
  v146 = *(v145 + 40);
  *(v145 + 40) = v144;
}

void sub_18380E378(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, void *a6)
{
  v71 = a5;
  v80 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v72 = a2;
  v11 = a6;
  *a3 = 0;
  v73 = a4;
  *a4 = 0;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v10;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v75, v79, 16, v13);
  if (v19)
  {
    v20 = *v76;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v76 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v75 + 1) + 8 * i);
        v24 = objc_msgSend_strokeIndexes(v23, v14, v15, v16, v17, v18, v71);
        objc_msgSend_addIndexes_(v11, v25, v24, v26, v27, v28);

        v34 = objc_msgSend_string(v23, v29, v30, v31, v32, v33);
        isEqualToString = objc_msgSend_isEqualToString_(v34, v35, @"\\hline", v36, v37, v38);

        v22 = a3;
        if (isEqualToString)
        {
          goto LABEL_5;
        }

        v40 = objc_msgSend_string(v23, v14, v15, v16, v17, v18);
        if (objc_msgSend_isEqualToString_(v40, v41, @"\\begin{array}{lr}", v42, v43, v44))
        {

          v22 = v73;
LABEL_5:
          *v22 = 1;
          continue;
        }

        v50 = objc_msgSend_string(v23, v45, v46, v47, v48, v49);
        v55 = objc_msgSend_isEqualToString_(v50, v51, @"\\\", v52, v53, v54);

        v22 = v73;
        if (v55)
        {
          goto LABEL_5;
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v75, v79, 16, v18);
    }

    while (v19);
  }

  v56 = MEMORY[0x1E696AC90];
  v62 = objc_msgSend_strokeCount(v72, v57, v58, v59, v60, v61);
  v66 = objc_msgSend_indexSetWithIndexesInRange_(v56, v63, 0, v62, v64, v65);
  *v71 = objc_msgSend_isEqualToIndexSet_(v11, v67, v66, v68, v69, v70);
}

void sub_18380E630(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = objc_msgSend_componentsSeparatedByString_(@"! &() + , - . / 0 1 2 3 4 5 6 7 8 9 : = [ \\\\ \\ \\$ \\% \\ast \\cdot \\circ \\div \\frac \\hline \\lceil \\lfloor \\pi \\prime \\rceil \\rfloor \\sqrt \\times ] ^ _ a A b B c C d D e E f F g G H h i I j J k K L l m M n N o O p P q Q r R s S t T u U v V w W x X y Y z Z { | } \\begin{array}{lr} \\end{array} ¢ £ ¥ ₩ € ₴ ₺ ₽", a2, @" ", a4, a5, a6);
  v10 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFA8], v6, @"<BOS>", v7, v8, v9, @"<EOS>", @"<PAD>", 0);
  objc_msgSend_addObjectsFromArray_(v10, v11, v16, v12, v13, v14);
  v15 = qword_1EA84D018;
  qword_1EA84D018 = v10;
}

BOOL sub_18380E6FC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_length(v2, v3, v4, v5, v6, v7) != 0;

    return v8;
  }

  else
  {

    return 0;
  }
}

void sub_18380E77C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    label = dispatch_queue_get_label(0);
    if (strcmp(label, "com.apple.CoreHandwriting.mathRecognizerQueue"))
    {
      v5 = *(a1 + 64);
      if (v5)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_18380E868;
        block[3] = &unk_1E6DDC908;
        v7 = v3;
        dispatch_sync(v5, block);

        return;
      }
    }

    v3[2](v3);
  }
}

void sub_18380E960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18380EA40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 24);
  v4 = (v2 + 24);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

void sub_18380EB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18380EC28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 32);
  v4 = (v2 + 32);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

void sub_18380EDB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 8);
  v3 = (v2 + 8);
  if (v1 != v4)
  {
    objc_storeStrong(v3, v1);
  }
}

void sub_18380EEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18380EFE4(_Unwind_Exception *a1)
{
  sub_1838111C8(v2 + 136);
  sub_18381124C(v4);
  sub_1836CFA48(v5);
  sub_1836CFA48(v3);
  MEMORY[0x1865E5EC0](v2, 0x10A0C402E9B2A30);

  _Unwind_Resume(a1);
}

id sub_18380F040(id a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = CHStrokeClutterFilter;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    if (a1)
    {
      operator new();
    }
  }

  return a1;
}

void sub_18380F124(_Unwind_Exception *a1)
{
  MEMORY[0x1865E5EC0](v4, 0x10A0C402E9B2A30);

  _Unwind_Resume(a1);
}

void *sub_18380F1D4(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    do
    {
      v13 = *v2;
      v14 = v2[5];
      if (v14)
      {
        do
        {
          v15 = *v14;
          operator delete(v14);
          v14 = v15;
        }

        while (v15);
      }

      v16 = v2[3];
      v2[3] = 0;
      if (v16)
      {
        operator delete(v16);
      }

      operator delete(v2);
      v2 = v13;
    }

    while (v13);
  }

  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    do
    {
      v17 = *v4;
      v18 = v4[6];
      if (v18)
      {
        do
        {
          v19 = *v18;
          operator delete(v18);
          v18 = v19;
        }

        while (v19);
      }

      v20 = v4[4];
      v4[4] = 0;
      if (v20)
      {
        operator delete(v20);
      }

      operator delete(v4);
      v4 = v17;
    }

    while (v17);
  }

  v5 = a1[11];
  a1[11] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    do
    {
      v7 = *v6;
      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v8 = a1[6];
  a1[6] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = a1[3];
  if (v9)
  {
    do
    {
      v10 = *v9;
      operator delete(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = a1[1];
  a1[1] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return a1;
}

void sub_183810360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_1838117CC(&a43);
  sub_1836CFA48(&a57);

  _Unwind_Resume(a1);
}

__n128 sub_183810554(__n128 *a1, __n128 *a2)
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

void sub_183810578(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_183810590(uint64_t a1, double a2, double a3)
{
  *&v3 = a2;
  *(&v3 + 1) = a3;
  sub_1836973A4(*(*(a1 + 32) + 8) + 48, &v3);
}

void sub_183811198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1838111C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        operator delete(v8);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_18381124C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[6];
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v2[4];
      v2[4] = 0;
      if (v8)
      {
        operator delete(v8);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

Class sub_1838112D0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EA84D030)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_183811424;
    v4[4] = &unk_1E6DDC0E0;
    v4[5] = v4;
    v5 = xmmword_1E6DDEC30;
    v6 = 0;
    qword_1EA84D030 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1EA84D030)
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
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1EA84D028 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_183811424()
{
  result = _sl_dlopen();
  qword_1EA84D030 = result;
  return result;
}

void *sub_183811498(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t sub_1838117CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        v2[4] = v6;
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void **sub_183811838(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_183812148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30)
{
  sub_18369F0F0(&a27);
  sub_18369F0F0(&a30);
  _Unwind_Resume(a1);
}

void sub_183812D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  _Block_object_dispose(&STACK[0x290], 8);
  v36 = STACK[0x2C0];
  if (STACK[0x2C0])
  {
    STACK[0x2C8] = v36;
    operator delete(v36);
  }

  _Block_object_dispose(&STACK[0x2D8], 8);
  v37 = STACK[0x308];
  if (STACK[0x308])
  {
    v38 = STACK[0x310];
    v39 = STACK[0x308];
    if (STACK[0x310] != v37)
    {
      v40 = STACK[0x310];
      do
      {
        v42 = *(v40 - 24);
        v40 -= 24;
        v41 = v42;
        if (v42)
        {
          *(v38 - 16) = v41;
          operator delete(v41);
        }

        v38 = v40;
      }

      while (v40 != v37);
      v39 = STACK[0x308];
    }

    STACK[0x310] = v37;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

__n128 sub_183812F1C(__n128 *a1, __n128 *a2)
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

void sub_183812F40(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v1)
    {
      v5 = v3;
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v1);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v1;

    operator delete(v4);
  }
}

__n128 sub_183812FD0(__n128 *a1, __n128 *a2)
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

void sub_183812FF4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_18381300C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = objc_msgSend_objectAtIndex_(*(*(a1 + 32) + 224), a2, a2, a4, a5, a6);
  objc_msgSend_addObject_(*(a1 + 40), v9, v8, v10, v11, v12);
  if (objc_msgSend_count(*(*(a1 + 32) + 136), v13, v14, v15, v16, v17) > a2)
  {
    v23 = *(a1 + 48);
    v24 = objc_msgSend_objectAtIndex_(*(*(a1 + 32) + 136), v18, a2, v20, v21, v22);
    objc_msgSend_addObject_(v23, v25, v24, v26, v27, v28);
  }

  objc_msgSend_strokePoints(*(a1 + 32), v18, v19, v20, v21, v22);
  v29 = &__p[24 * a2];
  v46 = 0;
  v45 = 0uLL;
  v31 = *v29;
  v30 = *(v29 + 1);
  if (v30 != v31)
  {
    if (((v30 - v31) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  v32 = v44;
  v33 = __p;
  if (v44 != __p)
  {
    v34 = v44;
    do
    {
      v36 = *(v34 - 3);
      v34 -= 24;
      v35 = v36;
      if (v36)
      {
        *(v32 - 2) = v35;
        operator delete(v35);
      }

      v32 = v34;
    }

    while (v34 != __p);
    v33 = __p;
  }

  operator delete(v33);
  v37 = *(*(a1 + 56) + 8);
  v38 = *(v37 + 56);
  if (v38 >= *(v37 + 64))
  {
    v42 = sub_183822084(v37 + 48, &v45);
    v39 = *(&v45 + 1);
    v40 = v45;
    v41 = *(&v45 + 1) - v45;
  }

  else
  {
    *v38 = 0;
    v38[1] = 0;
    v38[2] = 0;
    v39 = *(&v45 + 1);
    v40 = v45;
    v41 = *(&v45 + 1) - v45;
    if (*(&v45 + 1) != v45)
    {
      if ((v41 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18369761C();
    }

    v42 = v38 + 3;
    *(v37 + 56) = v38 + 3;
  }

  *(v37 + 56) = v42;
  sub_183822214(*(*(a1 + 64) + 8) + 48, *(*(*(a1 + 64) + 8) + 56), v40, v39, v41 >> 4);
  if (v40)
  {
    operator delete(v40);
  }
}

void sub_183813230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1838132C4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = objc_msgSend_objectAtIndexedSubscript_(*(a1[4] + 240), a2, a2, a4, a5, a6);
  v12 = objc_msgSend_objectAtIndexedSubscript_(*(a1[4] + 248), v8, a2, v9, v10, v11);
  v13 = a1[5];
  v18 = objc_msgSend_objectAtIndexedSubscript_(v12, v14, 0, v15, v16, v17);
  v24 = objc_msgSend_intValue(v18, v19, v20, v21, v22, v23);
  v25 = a1[6];
  v30 = objc_msgSend_objectAtIndexedSubscript_(v12, v26, 1, v27, v28, v29);
  v36 = objc_msgSend_intValue(v30, v31, v32, v33, v34, v35);
  objc_msgSend_addSupportStroke_tokenRange_(v13, v37, v39, v24 - v25, v36, v38);
}

void sub_183813A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  sub_18369F0F0(&a27);
  sub_18369F0F0(&a30);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

void sub_18381448C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v15 = a12;
    if (!a12)
    {
LABEL_3:
      objc_sync_exit(v13);

      _Unwind_Resume(a1);
    }
  }

  else
  {
    v15 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v15);
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_1838144F0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1838148F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_sync_exit(v25);

  _Unwind_Resume(a1);
}

void sub_183814BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_183814C10(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_bounds(v3, v4, v5, v6, v7, v8);
  if (v14 * *(*(a1 + 32) + 272) <= *(a1 + 40))
  {
    objc_msgSend_bounds(v3, v9, v10, v11, v12, v13);
    v17 = v16 * *(*(a1 + 32) + 296) > *(a1 + 48);

    return v17;
  }

  else
  {

    return 1;
  }
}

void sub_183814CB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 56);
  objc_msgSend_strokePoints(*(a1 + 32), a2, a3, a4, a5, a6);
  v10 = *(a1 + 32);
  v11 = *(v31 + 3 * a2);
  objc_msgSend_strokePoints(v10, v12, v13, v14, v15, v16);
  sub_183822214(v8 + 48, v9, v11, *(__p + 3 * a2 + 1), (*(__p + 3 * a2 + 1) - v11) >> 4);
  v17 = __p;
  if (__p)
  {
    v18 = v30;
    v19 = __p;
    if (v30 != __p)
    {
      v20 = v30;
      do
      {
        v22 = *(v20 - 3);
        v20 -= 24;
        v21 = v22;
        if (v22)
        {
          *(v18 - 2) = v21;
          operator delete(v21);
        }

        v18 = v20;
      }

      while (v20 != v17);
      v19 = __p;
    }

    v30 = v17;
    operator delete(v19);
  }

  v23 = v31;
  if (v31)
  {
    v24 = v32;
    v25 = v31;
    if (v32 != v31)
    {
      v26 = v32;
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
      v25 = v31;
    }

    v32 = v23;
    operator delete(v25);
  }
}

void sub_183814DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  sub_18369F0F0(&a9);
  sub_18369F0F0(&a12);
  _Unwind_Resume(a1);
}

void sub_183814DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_18369F0F0(va);
  _Unwind_Resume(a1);
}

void sub_183815230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v23 = *v20;
  if (*v20)
  {
    *(v20 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void sub_183815400(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_183816328(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (!v3)
  {
    v19 = *MEMORY[0x1E695EFF8];
    if (*MEMORY[0x1E695EFF8] != 0.0)
    {
      goto LABEL_16;
    }

    v20 = *(MEMORY[0x1E695EFF8] + 8);
    v17 = 0.0;
    v18 = 0.0;
    if (v20 != 0.0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  objc_msgSend_principalLines(v3, v4, v5, v6, v7, v8);
  v15 = MEMORY[0x1E695EFF8];
  if (v35 == *MEMORY[0x1E695EFF8] && v36 == *(MEMORY[0x1E695EFF8] + 8))
  {
    objc_msgSend_principalLines(v9, v10, v11, v12, v13, v14);
    v18 = v33;
    v17 = v34;
    v19 = *v15;
    v20 = v15[1];
LABEL_10:
    if (v18 == v19 && v17 == v20)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

LABEL_16:
  v22 = objc_opt_class();
  v28 = objc_msgSend_recognizerSourceLocale(v9, v23, v24, v25, v26, v27);
  *(*(*(a1 + 40) + 8) + 24) |= objc_msgSend_useRightToLeftReflow_(v22, v29, v28, v30, v31, v32);
}

id sub_183816AA0(void *a1, double a2, double a3, double a4, double a5)
{
  v112 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = MEMORY[0x1E695DF70];
  v89 = v9;
  v16 = objc_msgSend_count(v9, v11, v12, v13, v14, v15);
  v90 = objc_msgSend_arrayWithCapacity_(v10, v17, v16, v18, v19, v20);
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v89;
  v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v96, v109, 16, v22);
  if (v87)
  {
    v88 = *v97;
    if (a4 == 0.0)
    {
      a4 = 1.0;
    }

    if (a5 == 0.0)
    {
      a5 = 1.0;
    }

    v23 = MEMORY[0x1E695EFF8];
    do
    {
      for (i = 0; i != v87; ++i)
      {
        if (*v97 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v96 + 1) + 8 * i);
        v25 = MEMORY[0x1E695DF70];
        v92 = v24;
        v31 = objc_msgSend_count(v24, v26, v27, v28, v29, v30);
        v36 = objc_msgSend_arrayWithCapacity_(v25, v32, v31, v33, v34, v35);
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v94 = v92;
        v95 = v36;
        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v37, &v104, v111, 16, v38);
        if (v44)
        {
          v45 = *v105;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v105 != v45)
              {
                objc_enumerationMutation(v94);
              }

              v47 = *(*(&v104 + 1) + 8 * j);
              v48 = MEMORY[0x1E695DF70];
              v49 = objc_msgSend_count(v47, v39, v40, v41, v42, v43);
              v54 = objc_msgSend_arrayWithCapacity_(v48, v50, v49, v51, v52, v53);
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v55 = v47;
              v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v100, v110, 16, v57);
              if (v58)
              {
                v59 = *v101;
                do
                {
                  for (k = 0; k != v58; ++k)
                  {
                    if (*v101 != v59)
                    {
                      objc_enumerationMutation(v55);
                    }

                    sub_1837A97C4(*(*(&v100 + 1) + 8 * k), v108);
                    v66 = v108[0];
                    if ((v108[1] - v108[0]) == 8)
                    {
                      v67 = *v108[0];
                      v68 = *(v108[0] + 1);
                    }

                    else
                    {
                      v67 = *v23;
                      v68 = v23[1];
                      if (!v108[0])
                      {
                        goto LABEL_24;
                      }
                    }

                    operator delete(v108[0]);
LABEL_24:
                    v69 = sub_1837A9A94(a2 + v67 * a4, a3 + v68 * a5, v66, v61, v62, v63, v64, v65);
                    objc_msgSend_addObject_(v54, v70, v69, v71, v72, v73);
                  }

                  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v74, &v100, v110, 16, v75);
                }

                while (v58);
              }

              objc_msgSend_addObject_(v95, v76, v54, v77, v78, v79);
            }

            v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v39, &v104, v111, 16, v43);
          }

          while (v44);
        }

        objc_msgSend_addObject_(v90, v80, v95, v81, v82, v83);
      }

      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v84, &v96, v109, 16, v85);
    }

    while (v87);
  }

  return v90;
}

void sub_183819C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a56)
  {
    operator delete(a56);
  }

  sub_18369F0F0(&a59);
  if (a62)
  {
    a63 = a62;
    operator delete(a62);
  }

  _Unwind_Resume(a1);
}

void sub_18381A520(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18381A6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

id sub_18381A760(void *a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v85 = a1;
  v5 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v1, 5, v2, v3, v4);
  v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  objc_msgSend_addObject_(v5, v12, v11, v13, v14, v15);

  v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v16, v17, v18, v19, v20);
  objc_msgSend_addObject_(v5, v22, v21, v23, v24, v25);

  v31 = objc_msgSend_array(MEMORY[0x1E695DF70], v26, v27, v28, v29, v30);
  objc_msgSend_addObject_(v5, v32, v31, v33, v34, v35);

  v41 = objc_msgSend_array(MEMORY[0x1E695DF70], v36, v37, v38, v39, v40);
  objc_msgSend_addObject_(v5, v42, v41, v43, v44, v45);

  v51 = objc_msgSend_array(MEMORY[0x1E695DF70], v46, v47, v48, v49, v50);
  objc_msgSend_addObject_(v5, v52, v51, v53, v54, v55);

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v85;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v56, &v93, v98, 16, v57);
  if (v58)
  {
    v88 = *v94;
    do
    {
      v87 = v58;
      for (i = 0; i != v87; ++i)
      {
        if (*v94 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v65 = 0;
        v66 = *(*(&v93 + 1) + 8 * i);
        while (v65 < objc_msgSend_count(v66, v59, v60, v61, v62, v63))
        {
          v67 = objc_msgSend_objectAtIndexedSubscript_(v66, v59, v65, v61, v62, v63);
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v68 = v67;
          v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v89, v97, 16, v70);
          if (v75)
          {
            v76 = *v90;
            do
            {
              for (j = 0; j != v75; ++j)
              {
                if (*v90 != v76)
                {
                  objc_enumerationMutation(v68);
                }

                v78 = *(*(&v89 + 1) + 8 * j);
                v79 = objc_msgSend_objectAtIndexedSubscript_(v5, v71, v65, v72, v73, v74);
                objc_msgSend_addObject_(v79, v80, v78, v81, v82, v83);
              }

              v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v71, &v89, v97, 16, v74);
            }

            while (v75);
          }

          ++v65;
        }
      }

      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, &v93, v98, 16, v63);
    }

    while (v58);
  }

  return v5;
}

void sub_18381D1C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *__p, void *a20)
{
  if (a17)
  {
    operator delete(a17);
    v22 = a18;
    if (!a18)
    {
LABEL_3:
      v23 = a20;
      if (!a20)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v22 = a18;
    if (!a18)
    {
      goto LABEL_3;
    }
  }

  operator delete(v22);
  v23 = a20;
  if (!a20)
  {
LABEL_4:
    v24 = __p;
    if (!__p)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  operator delete(v23);
  v24 = __p;
  if (!__p)
  {
LABEL_6:

    _Unwind_Resume(a1);
  }

LABEL_5:
  operator delete(v24);
  goto LABEL_6;
}

void sub_18381DD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v14;
    operator delete(v14);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_18381E658(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_183820B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_objecta, void *a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);

  _Unwind_Resume(a1);
}

void sub_183820C90(uint64_t a1, void *a2)
{
  v18 = a2;
  objc_msgSend_addObject_(*(a1 + 32), v3, v18, v4, v5, v6);
  v7 = objc_opt_class();
  v13 = objc_msgSend_recognizerSourceLocale(v18, v8, v9, v10, v11, v12);
  *(*(*(a1 + 40) + 8) + 24) |= objc_msgSend_useRightToLeftReflow_(v7, v14, v13, v15, v16, v17);
}

void sub_183821AE4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_addObject_(*(a1 + 32), v4, v3, v5, v6, v7);
  if (!v3)
  {
    v22 = *MEMORY[0x1E695EFF8];
    if (*MEMORY[0x1E695EFF8] != 0.0)
    {
      goto LABEL_16;
    }

    v23 = *(MEMORY[0x1E695EFF8] + 8);
    v20 = 0.0;
    v21 = 0.0;
    if (v23 != 0.0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  objc_msgSend_principalLines(v3, v8, v9, v10, v11, v12);
  v18 = MEMORY[0x1E695EFF8];
  if (v38 == *MEMORY[0x1E695EFF8] && v39 == *(MEMORY[0x1E695EFF8] + 8))
  {
    objc_msgSend_principalLines(v3, v13, v14, v15, v16, v17);
    v21 = v36;
    v20 = v37;
    v22 = *v18;
    v23 = v18[1];
LABEL_10:
    if (v21 == v22 && v20 == v23)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

LABEL_16:
  v25 = objc_opt_class();
  v31 = objc_msgSend_recognizerSourceLocale(v3, v26, v27, v28, v29, v30);
  *(*(*(a1 + 48) + 8) + 24) |= objc_msgSend_useRightToLeftReflow_(v25, v32, v31, v33, v34, v35);
}

void sub_183821C40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_encodedStrokeIdentifier(a2, a2, a3, a4, a5, a6);
  objc_msgSend_removeObject_(v6, v7, v11, v8, v9, v10);
}

void sub_183821D0C(char ***a1, char **a2, char **a3, unint64_t a4)
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
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
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
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_18368964C();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_18374AA38(v8, *v5, v5[1], (v5[1] - *v5) >> 4);
        }

        v5 += 3;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v22 = v15;
    do
    {
      v24 = *(v22 - 3);
      v22 -= 24;
      v23 = v24;
      if (v24)
      {
        *(v15 - 2) = v23;
        operator delete(v23);
      }

      v15 = v22;
    }

    while (v22 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_18374AA38(v8, *v18, v18[1], (v18[1] - *v18) >> 4);
      }

      v18 += 3;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_183821F78(a1, (v5 + v16), a3, v15);
}

void *sub_183821F78(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18369761C();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_18382205C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_18369F28C(&a9);
  _Unwind_Resume(a1);
}

void *sub_183822084(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_18368964C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_183688F00();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_1838221F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_1836AEC7C(va);
  _Unwind_Resume(a1);
}

void sub_183822214(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v5 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (a5 > (v8 - v9) >> 4)
  {
    v10 = *a1;
    v11 = a5 + (&v9[-*a1] >> 4);
    if (v11 >> 60)
    {
      sub_18369761C();
    }

    v12 = v8 - v10;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      sub_183688F00();
    }

    v28 = 16 * ((__dst - v10) >> 4);
    v29 = 16 * a5;
    v30 = v28 + 16 * a5;
    v31 = v28;
    do
    {
      v32 = *v5;
      v5 += 16;
      *v31++ = v32;
      v29 -= 16;
    }

    while (v29);
    v33 = *(a1 + 8) - __dst;
    memcpy((v28 + 16 * a5), __dst, v33);
    v34 = v30 + v33;
    *(a1 + 8) = __dst;
    v35 = *a1;
    v36 = &__dst[-*a1];
    v37 = v28 - v36;
    memcpy((v28 - v36), *a1, v36);
    *a1 = v37;
    *(a1 + 8) = v34;
    *(a1 + 16) = 0;
    if (v35)
    {

      operator delete(v35);
    }

    return;
  }

  v14 = v9 - __dst;
  v15 = (v9 - __dst) >> 4;
  if (v15 >= a5)
  {
    v14 = 16 * a5;
    v24 = &__dst[16 * a5];
    v25 = &v9[-16 * a5];
    for (i = *(a1 + 8); v25 < v9; ++i)
    {
      v27 = *v25;
      v25 += 16;
      *i = v27;
    }

    *(a1 + 8) = i;
    if (v9 != v24)
    {
      memmove(&__dst[16 * a5], __dst, v9 - v24);
    }

    goto LABEL_28;
  }

  v16 = a4 - &__src[v14];
  if (a4 != &__src[v14])
  {
    v17 = a5;
    v18 = a4;
    memmove(*(a1 + 8), &__src[v14], a4 - &__src[v14]);
    a4 = v18;
    a5 = v17;
  }

  v19 = &v9[v16];
  *(a1 + 8) = &v9[v16];
  if (v15 >= 1)
  {
    v20 = &__dst[16 * a5];
    v21 = &v9[v16];
    if (&v19[-16 * a5] < v9)
    {
      v22 = &__dst[a4];
      v23 = &__dst[a4 + -16 * a5];
      do
      {
        *(v22 - v5) = *(v23 - v5);
        v23 += 16;
        v22 += 16;
      }

      while (v23 - v5 < v9);
      v21 = (v22 - v5);
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&__dst[16 * a5], __dst, v19 - v20);
    }

    if (v9 != __dst)
    {
LABEL_28:

      memmove(__dst, v5, v14);
    }
  }
}

void sub_1838224B4(uint64_t a1, char **a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = a3;
  v7 = a2;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * (&v10[-*a1] >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_18368964C();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
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

    v32 = 8 * ((a2 - v11) >> 3);
    v33 = 24 * a5;
    __dst = (v32 + 24 * a5);
    v34 = v32;
    do
    {
      *v34 = 0;
      v34[1] = 0;
      v34[2] = 0;
      v35 = *(v6 + 8);
      if (v35 != *v6)
      {
        if (((v35 - *v6) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18369761C();
      }

      v34 += 3;
      v6 += 24;
      v33 -= 24;
    }

    while (v33);
    v36 = *(a1 + 8) - a2;
    memcpy(__dst, a2, v36);
    v37 = &__dst[v36];
    *(a1 + 8) = v7;
    v38 = *a1;
    v39 = v7 - *a1;
    v40 = v32 - v39;
    memcpy((v32 - v39), *a1, v39);
    *a1 = v40;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v38)
    {
      operator delete(v38);
    }

    return;
  }

  v15 = v10 - a2;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) < a5)
  {
    v16 = v15 + a3;
    v17 = sub_183821F78(a1, (v15 + a3), a4, *(a1 + 8));
    v18 = v17;
    *(a1 + 8) = v17;
    if (v15 >= 1)
    {
      v19 = &v7[3 * a5];
      v20 = &v17[-3 * a5];
      for (i = v17; v20 < v10; i += 3)
      {
        *i = 0;
        i[1] = 0;
        i[2] = 0;
        *i = *v20;
        i[2] = *(v20 + 2);
        *v20 = 0;
        *(v20 + 1) = 0;
        *(v20 + 2) = 0;
        v20 += 24;
      }

      *(a1 + 8) = i;
      if (v17 != v19)
      {
        v22 = 0;
        v23 = -3 * a5;
        do
        {
          v25 = &v18[v22];
          v27 = &v18[v22 - 3];
          v26 = *v27;
          if (*v27)
          {
            *(v25 - 2) = v26;
            operator delete(v26);
            *v27 = 0;
            v18[v22 - 2] = 0;
            v18[v22 - 1] = 0;
          }

          v24 = &v18[v23 - 3];
          *v27 = *v24;
          *(v25 - 1) = v18[v23 - 1];
          *v24 = 0;
          *(v24 + 8) = 0;
          *(v24 + 16) = 0;
          v22 -= 3;
          v19 += 3;
          v23 -= 3;
        }

        while (v18 != v19);
      }

      do
      {
        if (v6 != v7)
        {
          sub_18374AA38(v7, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 4);
        }

        v6 += 24;
        v7 += 3;
      }

      while (v6 != v16);
    }

    return;
  }

  v28 = &a2[3 * a5];
  v29 = &v10[-24 * a5];
  if (v29 >= v10)
  {
    *(a1 + 8) = v10;
    if (v10 == v28)
    {
      goto LABEL_42;
    }

LABEL_38:
    v41 = 0;
    v42 = (&a2[3 * a5] - v10);
    do
    {
      v44 = &v41[v10];
      v46 = &v41[v10 - 24];
      v45 = *v46;
      if (*v46)
      {
        *(v44 - 2) = v45;
        operator delete(v45);
        *v46 = 0;
        *&v41[v10 - 16] = 0;
        *&v41[v10 - 8] = 0;
      }

      v43 = &v41[v29 - 24];
      *v46 = *v43;
      *(v44 - 1) = *&v41[v29 - 8];
      *v43 = 0;
      *(v43 + 8) = 0;
      *(v43 + 16) = 0;
      v41 -= 24;
    }

    while (v42 != v41);
    goto LABEL_42;
  }

  v30 = &v10[-24 * a5];
  v31 = *(a1 + 8);
  do
  {
    *v31 = 0;
    v31[1] = 0;
    v31[2] = 0;
    *v31 = *v30;
    v31[2] = *(v30 + 2);
    *v30 = 0;
    *(v30 + 1) = 0;
    *(v30 + 2) = 0;
    v30 += 24;
    v31 += 3;
  }

  while (v30 < v10);
  *(a1 + 8) = v31;
  if (v10 != v28)
  {
    goto LABEL_38;
  }

LABEL_42:
  v47 = v6 + 24 * a5;
  do
  {
    if (v6 != v7)
    {
      sub_18374AA38(v7, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 4);
    }

    v6 += 24;
    v7 += 3;
  }

  while (v6 != v47);
}

void sub_1838228F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  a14 = v14;
  sub_1836AEC7C(&a12);
  _Unwind_Resume(a1);
}

void sub_183822924(uint64_t a1, void *a2)
{
  v3 = a2;
  v210 = 0;
  v211 = 0;
  v212 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  v4.n128_f32[0] = sub_1836A4100(v3, &v210, v209, 1, 30.0);
  *(a1 + 36) = v4.n128_u32[0];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v211 - v210) >> 3);
  if (v5 <= 6)
  {
    sub_183824B28(v3);
  }

  v207 = 0;
  v208 = 0;
  v206 = 0;
  if (v211 != v210)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_18369761C();
  }

  sub_183696ECC(&v206, __p, v4);
  v7 = __p[0];
  v8 = __p[1];
  v9 = v204;
  __p[1] = 0;
  *&v204 = 0;
  __p[0] = 0;
  if (v206)
  {
    v207 = v206;
    operator delete(v206);
  }

  v10 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 3);
  v11 = 126 - 2 * __clz(v10);
  v12 = v8 - v7;
  __p[0] = sub_183824E30;
  if (v8 == v7)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  sub_183697654(v7, v8, __p, v13, 1, v6);
  if (v10 < 5)
  {
    sub_183824B28(v3);
  }

  for (; v12 != 200; v12 = &v114[v115] - v7)
  {
    v87 = *(v8 - 40);
    v86 = *(v8 - 32);
    v88 = *(v7 + 5) - v87;
    v89 = *(v7 + 6) - v86;
    v90 = (v89 * v89) + (v88 * v88);
    if (v90 > 0.0)
    {
      v88 = v88 / v90;
      v89 = v89 / v90;
    }

    v91 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 3);
    v92 = sqrtf(v90);
    v93 = *(v7 + 1);
    v94 = ((*v7 - v87) * v89 - (v93 - v86) * v88) * v92;
    v95 = fabsf(v94);
    if (v91 - 1 < 2)
    {
      v96 = 0;
    }

    else
    {
      v96 = 0;
      v97 = v91 - 2;
      v98 = 1;
      v99 = (v7 + 48);
      do
      {
        v103 = *(v99 - 6);
        v102 = *(v99 - 5);
        v104 = v99[4] - v103;
        v105 = v99[5] - v102;
        v106 = (v105 * v105) + (v104 * v104);
        if (v106 > 0.0)
        {
          v104 = v104 / v106;
          v105 = v105 / v106;
        }

        v100 = ((*(v99 - 1) - v103) * v105 - (*v99 - v102) * v104) * sqrtf(v106);
        v101 = fabsf(v100);
        if (v101 < v95)
        {
          v95 = v101;
          v96 = v98;
        }

        ++v98;
        v99 += 5;
        --v97;
      }

      while (v97);
    }

    v108 = *&v7[v12 - 80];
    v107 = *&v7[v12 - 72];
    v109 = *v7 - v108;
    v110 = v93 - v107;
    v111 = (v110 * v110) + (v109 * v109);
    if (v111 > 0.0)
    {
      v109 = v109 / v111;
      v110 = v110 / v111;
    }

    v112 = ((v87 - v108) * v110 - (v86 - v107) * v109) * sqrtf(v111);
    v113 = v91 - 1;
    if (fabsf(v112) >= v95)
    {
      v113 = v96;
    }

    v114 = &v7[40 * v113];
    v14 = v114 + 40;
    v115 = v8 - (v114 + 40);
    if (v8 != v114 + 40)
    {
      memmove(&v7[40 * v113], v14, v115 - 3);
    }

    v8 -= 40;
  }

  v17 = *v7;
  v18 = *(v7 + 1);
  v19 = *(v7 + 5) - *v7;
  v20 = *(v7 + 6) - v18;
  v21 = (v20 * v20) + (v19 * v19);
  if (v21 > 0.0)
  {
    v19 = v19 / v21;
    v20 = v20 / v21;
  }

  v22 = *(v7 + 5);
  if (*(v7 + 15) <= v22)
  {
    goto LABEL_39;
  }

  v23 = v20;
  v24 = v19;
  v25 = sqrtf(v21);
  v26 = 0.0;
  do
  {
    objc_msgSend_pointForStrokeIndex_pointIndex_(v3, v14, 0, v22, v15, v16);
    *&v27 = ((v27 - v17) * v23 - (v28 - v18) * v24) * v25;
    v26 = v26 + (*&v27 * *&v27);
    ++v22;
    v29 = *(v7 + 15);
  }

  while (v22 < v29);
  v30 = *(v7 + 5);
  v31 = *(v7 + 6);
  v32 = *(v7 + 10) - v30;
  v33 = *(v7 + 11) - v31;
  v34 = (v33 * v33) + (v32 * v32);
  if (v34 > 0.0)
  {
    v32 = v32 / v34;
    v33 = v33 / v34;
  }

  if (*(v7 + 25) <= v29)
  {
    goto LABEL_39;
  }

  v35 = v26 / (v29 - *(v7 + 5));
  v36 = v33;
  v37 = v32;
  v38 = sqrtf(v34);
  v39 = 0.0;
  do
  {
    objc_msgSend_pointForStrokeIndex_pointIndex_(v3, v14, 0, v29, v15, v16);
    *&v40 = ((v40 - v30) * v36 - (v41 - v31) * v37) * v38;
    v39 = v39 + (*&v40 * *&v40);
    ++v29;
    v42 = *(v7 + 25);
  }

  while (v29 < v42);
  v43 = *(v7 + 10);
  v44 = *(v7 + 11);
  v45 = *(v7 + 15) - v43;
  v46 = *(v7 + 16) - v44;
  v47 = (v46 * v46) + (v45 * v45);
  if (v47 > 0.0)
  {
    v45 = v45 / v47;
    v46 = v46 / v47;
  }

  if (*(v7 + 35) <= v42)
  {
    goto LABEL_39;
  }

  v48 = v39 / (v42 - *(v7 + 15));
  v49 = v46;
  v50 = v45;
  v51 = sqrtf(v47);
  v52 = 0.0;
  do
  {
    objc_msgSend_pointForStrokeIndex_pointIndex_(v3, v14, 0, v42, v15, v16);
    *&v53 = ((v53 - v43) * v49 - (v54 - v44) * v50) * v51;
    v52 = v52 + (*&v53 * *&v53);
    ++v42;
    v55 = *(v7 + 35);
  }

  while (v42 < v55);
  v56 = *(v7 + 15);
  v57 = *(v7 + 16);
  v58 = *(v7 + 20) - v56;
  v59 = *(v7 + 21) - v57;
  v60 = (v59 * v59) + (v58 * v58);
  if (v60 > 0.0)
  {
    v58 = v58 / v60;
    v59 = v59 / v60;
  }

  if (*(v7 + 45) <= v55)
  {
LABEL_39:
    sub_183824B28(v3);
  }

  v201 = v35;
  v61 = v52 / (v55 - *(v7 + 25));
  v62 = v59;
  v63 = v58;
  v64 = sqrtf(v60);
  v65 = 0.0;
  do
  {
    objc_msgSend_pointForStrokeIndex_pointIndex_(v3, v14, 0, v55, v15, v16);
    *&v67 = ((v67 - v56) * v62 - (v68 - v57) * v63) * v64;
    v65 = v65 + (*&v67 * *&v67);
    ++v55;
    v69 = *(v7 + 45);
  }

  while (v55 < v69);
  v70 = *(v7 + 20);
  v71 = *(v7 + 21);
  v72 = *v7 - v70;
  v73 = *(v7 + 1) - v71;
  v74 = (v73 * v73) + (v72 * v72);
  v75 = sqrtf(v74);
  v199 = v61;
  v202 = v48;
  if (v74 > 0.0)
  {
    v72 = v72 / v74;
    v73 = v73 / v74;
  }

  v76 = v73;
  v77 = v72;
  v78 = v75;
  v79 = 0.0;
  v80 = 0.0;
  v200 = v65 / (v69 - *(v7 + 35));
  while (objc_msgSend_pointCountForStrokeIndex_(v3, v14, 0, v66, v15, v16) > v69)
  {
    objc_msgSend_pointForStrokeIndex_pointIndex_(v3, v81, 0, v69, v82, v83);
    *&v84 = ((v84 - v70) * v76 - (v85 - v71) * v77) * v78;
    v79 = v79 + (*&v84 * *&v84);
    v80 = v80 + 1.0;
    ++v69;
  }

  if (*(v7 + 5) >= 1)
  {
    v116 = 0;
    do
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(v3, v81, 0, v116, v82, v83);
      *&v117 = ((v117 - v70) * v76 - (v118 - v71) * v77) * v78;
      v79 = v79 + (*&v117 * *&v117);
      v80 = v80 + 1.0;
      ++v116;
    }

    while (v116 < *(v7 + 5));
  }

  if (v80 <= 0.0)
  {
    v119 = v79;
  }

  else
  {
    v119 = v79 / v80;
  }

  if ((v201 + v202) >= (v201 + v119))
  {
    v120 = v201 + v119;
  }

  else
  {
    v120 = v201 + v202;
  }

  if (v8 >= v9)
  {
    v125 = v8 - v7;
    v126 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 3);
    v127 = v126 + 1;
    v123 = v200;
    v124 = v199;
    if (v126 + 1 > 0x666666666666666)
    {
      goto LABEL_190;
    }

    if (0x999999999999999ALL * ((v9 - v7) >> 3) > v127)
    {
      v127 = 0x999999999999999ALL * ((v9 - v7) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((v9 - v7) >> 3) >= 0x333333333333333)
    {
      v128 = 0x666666666666666;
    }

    else
    {
      v128 = v127;
    }

    if (v128)
    {
      if (v128 <= 0x666666666666666)
      {
        operator new();
      }

      goto LABEL_191;
    }

    v8 = 40 * v126;
    v129 = *v7;
    v130 = *(v7 + 1);
    *(v8 + 32) = *(v7 + 4);
    *v8 = v129;
    *(v8 + 16) = v130;
    memcpy((v8 + 40 * (v125 / -40)), v7, v125);
    v9 = 0;
    operator delete(v7);
    v7 = (v8 + 40 * (v125 / -40));
  }

  else
  {
    v121 = *v7;
    v122 = *(v7 + 1);
    *(v8 + 32) = *(v7 + 4);
    *v8 = v121;
    *(v8 + 16) = v122;
    v123 = v200;
    v124 = v199;
  }

  v131 = (v201 + v202) < (v201 + v119);
  v132 = (v8 + 40);
  if ((v202 + v124) >= v120)
  {
    v133 = v120;
  }

  else
  {
    v133 = v202 + v124;
  }

  if (v132 >= v9)
  {
    v137 = v132 - v7;
    v138 = 0xCCCCCCCCCCCCCCCDLL * ((v132 - v7) >> 3);
    v139 = v138 + 1;
    if (v138 + 1 > 0x666666666666666)
    {
      goto LABEL_190;
    }

    if (0x999999999999999ALL * ((v9 - v7) >> 3) > v139)
    {
      v139 = 0x999999999999999ALL * ((v9 - v7) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((v9 - v7) >> 3) >= 0x333333333333333)
    {
      v140 = 0x666666666666666;
    }

    else
    {
      v140 = v139;
    }

    if (v140)
    {
      if (v140 <= 0x666666666666666)
      {
        operator new();
      }

      goto LABEL_191;
    }

    v141 = 40 * v138;
    v9 = 0;
    v142 = *(v7 + 40);
    v143 = *(v7 + 56);
    *(v141 + 32) = *(v7 + 9);
    *v141 = v142;
    *(v141 + 16) = v143;
    v136 = 40 * v138 + 40;
    memcpy((40 * v138 + 40 * (v137 / -40)), v7, v137);
    operator delete(v7);
    v7 = (40 * v138 + 40 * (v137 / -40));
  }

  else
  {
    v134 = *(v7 + 40);
    v135 = *(v7 + 56);
    *(v8 + 72) = *(v7 + 9);
    *v132 = v134;
    *(v8 + 56) = v135;
    v136 = v8 + 80;
  }

  if ((v124 + v123) >= v133)
  {
    v144 = v133;
  }

  else
  {
    v144 = v124 + v123;
  }

  if ((v202 + v124) < v120)
  {
    v131 = 2;
  }

  if (v136 >= v9)
  {
    v147 = v136 - v7;
    v148 = 0xCCCCCCCCCCCCCCCDLL * ((v136 - v7) >> 3) + 1;
    if (v148 > 0x666666666666666)
    {
      goto LABEL_190;
    }

    if (0x999999999999999ALL * ((v9 - v7) >> 3) > v148)
    {
      v148 = 0x999999999999999ALL * ((v9 - v7) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((v9 - v7) >> 3) >= 0x333333333333333)
    {
      v149 = 0x666666666666666;
    }

    else
    {
      v149 = v148;
    }

    if (v149)
    {
      if (v149 <= 0x666666666666666)
      {
        operator new();
      }

      goto LABEL_191;
    }

    v136 = 8 * ((v136 - v7) >> 3);
    v150 = *(v7 + 5);
    v151 = *(v7 + 6);
    *(v136 + 32) = *(v7 + 14);
    v9 = 0;
    *v136 = v150;
    *(v136 + 16) = v151;
    memcpy((v136 - v147), v7, v147);
    operator delete(v7);
    v7 = (v136 - v147);
  }

  else
  {
    v145 = *(v7 + 5);
    v146 = *(v7 + 6);
    *(v136 + 32) = *(v7 + 14);
    *v136 = v145;
    *(v136 + 16) = v146;
  }

  v152 = (v136 + 40);
  if ((v124 + v123) < v133)
  {
    v131 = 3;
  }

  if (v152 < v9)
  {
    v153 = *(v7 + 120);
    v154 = *(v7 + 136);
    *(v136 + 72) = *(v7 + 19);
    *v152 = v153;
    *(v136 + 56) = v154;
    goto LABEL_124;
  }

  v155 = v152 - v7;
  v156 = 0xCCCCCCCCCCCCCCCDLL * ((v152 - v7) >> 3);
  v157 = v156 + 1;
  if (v156 + 1 <= 0x666666666666666)
  {
    if (0x999999999999999ALL * ((v9 - v7) >> 3) > v157)
    {
      v157 = 0x999999999999999ALL * ((v9 - v7) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((v9 - v7) >> 3) >= 0x333333333333333)
    {
      v157 = 0x666666666666666;
    }

    if (!v157)
    {
      v158 = 40 * v156;
      v159 = *(v7 + 120);
      v160 = *(v7 + 136);
      *(v158 + 32) = *(v7 + 19);
      *v158 = v159;
      *(v158 + 16) = v160;
      memcpy((40 * v156 + 40 * (v155 / -40)), v7, v155);
      operator delete(v7);
      v7 = (40 * v156 + 40 * (v155 / -40));
LABEL_124:
      v161 = 4;
      if ((v123 + v119) >= v144)
      {
        v161 = v131;
      }

      v162 = &v7[40 * v161];
      __asm { FMOV            V2.2D, #0.5 }

      __p[0] = 0;
      __p[1] = 0;
      *&v204 = 0;
      sub_183824ECC(&v205, 7uLL);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v167 = v162[4];
      LODWORD(v168) = v162[14];
      if (v167 >= v168)
      {
        v171 = v210;
        v172 = 0xCCCCCCCCCCCCCCCDLL * ((v211 - v210) >> 3);
        if (v172 > v167 && v172 - 1 != v167)
        {
          v174 = 40 * v167;
          do
          {
            sub_1836973A4(v205, &v171[v174]);
            ++v167;
            v171 = v210;
            v174 += 40;
          }

          while (0xCCCCCCCCCCCCCCCDLL * ((v211 - v210) >> 3) > v167);
          LODWORD(v168) = v162[14];
        }

        if (v168 && (v168 & 0x80000000) == 0)
        {
          v175 = 0;
          v176 = -1;
          do
          {
            sub_1836973A4(v205, &v210[v175]);
            ++v176;
            v175 += 40;
          }

          while (v176 < v162[14]);
          LODWORD(v168) = v162[14];
        }
      }

      else
      {
        v169 = v167 - 1;
        v170 = 40 * v167;
        do
        {
          sub_1836973A4(v205, &v210[v170]);
          v168 = v162[14];
          ++v169;
          v170 += 40;
        }

        while (v169 < v168);
      }

      v177 = v162[24];
      if (v168 < v177)
      {
        operator new();
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v211 - v210) >> 3) - 1 == v168)
      {
        if (!v177)
        {
          v178 = v162[24];
          LODWORD(v179) = v162[34];
          if (v178 >= v179)
          {
            v182 = v210;
            v183 = 0xCCCCCCCCCCCCCCCDLL * ((v211 - v210) >> 3);
            if (v183 > v178 && v183 - 1 != v178)
            {
              v185 = 40 * v178;
              do
              {
                sub_1836973A4(v205 + 72, &v182[v185]);
                ++v178;
                v182 = v210;
                v185 += 40;
              }

              while (0xCCCCCCCCCCCCCCCDLL * ((v211 - v210) >> 3) > v178);
              LODWORD(v179) = v162[34];
            }

            if (v179 && (v179 & 0x80000000) == 0)
            {
              v186 = 0;
              v187 = -1;
              do
              {
                sub_1836973A4(v205 + 72, &v210[v186]);
                ++v187;
                v186 += 40;
              }

              while (v187 < v162[34]);
              LODWORD(v179) = v162[34];
            }
          }

          else
          {
            v180 = v178 - 1;
            v181 = 40 * v178;
            do
            {
              sub_1836973A4(v205 + 72, &v210[v181]);
              v179 = v162[34];
              ++v180;
              v181 += 40;
            }

            while (v180 < v179);
          }

          v188 = v162[44];
          if (v179 < v188)
          {
            operator new();
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v211 - v210) >> 3) - 1 == v179)
          {
            if (!v188)
            {
              v189 = v162[44];
              v190 = v162[4];
              if (v189 >= v190)
              {
                v193 = v210;
                v194 = 0xCCCCCCCCCCCCCCCDLL * ((v211 - v210) >> 3);
                if (v194 > v189 && v194 - 1 != v189)
                {
                  v196 = 40 * v189;
                  do
                  {
                    sub_1836973A4(v205 + 144, &v193[v196]);
                    ++v189;
                    v193 = v210;
                    v196 += 40;
                  }

                  while (0xCCCCCCCCCCCCCCCDLL * ((v211 - v210) >> 3) > v189);
                  v190 = v162[4];
                }

                if (v190 >= 1)
                {
                  v197 = 0;
                  v198 = -1;
                  do
                  {
                    sub_1836973A4(v205 + 144, &v210[v197]);
                    ++v198;
                    v197 += 40;
                  }

                  while (v198 < v162[4]);
                }
              }

              else
              {
                v191 = v189 - 1;
                v192 = 40 * v189;
                do
                {
                  sub_1836973A4(v205 + 144, &v210[v192]);
                  ++v191;
                  v192 += 40;
                }

                while (v191 < v162[4]);
              }

              operator new[]();
            }

            operator new();
          }

          operator new();
        }

        operator new();
      }

      operator new();
    }

    if (v157 <= 0x666666666666666)
    {
      operator new();
    }

LABEL_191:
    sub_183688F00();
  }

LABEL_190:
  sub_18369761C();
}

void sub_183824900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  operator delete(__p);
  sub_18369F0F0(&a41);
  if (a21)
  {
    operator delete(a21);
    if (!a12)
    {
LABEL_3:
      if (!v42)
      {
LABEL_8:
        v45 = *(v43 - 176);
        if (v45)
        {
          *(v43 - 168) = v45;
          operator delete(v45);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v42);
      goto LABEL_8;
    }
  }

  else if (!a12)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  if (!v42)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_183824B28(void *a1)
{
  v1 = a1;
  v2 = 0;
  v26 = &v26;
  v27 = &v26;
  v28 = 0;
  v23 = &v23;
  v24 = &v23;
  v25 = 0;
  for (i = objc_msgSend_strokeCount(v1, v3, v4, v5, v6, v7); i > v2; i = objc_msgSend_strokeCount(v1, v13, v14, v15, v16, v17))
  {
    if (objc_msgSend_pointCountForStrokeIndex_(v1, v9, v2, v10, v11, v12))
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(v1, v13, v2, 0, v16, v17);
      operator new();
    }

    ++v2;
  }

  sub_183825068(v27, &v26, v28);
  sub_183825068(v24, &v23, v25);
  v18 = v24;
  v19 = v27;
  if (v28 >= 8)
  {
    v20 = v28 >> 3;
    v21 = &v26;
    v22 = &v23;
    do
    {
      v19 = *(v19 + 8);
      v18 = *(v18 + 8);
      v21 = *v21;
      v22 = *v22;
      --v20;
    }

    while (v20);
  }

  operator new();
}

void sub_183824DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_183824E44(va);
  sub_183824E44(va1);

  _Unwind_Resume(a1);
}

uint64_t *sub_183824E44(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void *sub_183824ECC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18368964C();
  }

  return result;
}

void sub_18382503C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(v9 + 8) = v10;
  sub_18369F2FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_183825068(uint64_t result, uint64_t **a2, unint64_t a3)
{
  if (a3 < 2)
  {
    return result;
  }

  if (a3 == 2)
  {
    v4 = *a2;
    if (*(*a2 + 4) < *(result + 16))
    {
      v6 = *v4;
      v5 = v4[1];
      *(v6 + 8) = v5;
      *v5 = v6;
      v7 = *result;
      *(v7 + 8) = v4;
      *v4 = v7;
      *result = v4;
      v4[1] = result;
      return v4;
    }
  }

  else
  {
    v9 = a3 >> 1;
    v10 = (a3 >> 1) + 1;
    v11 = result;
    do
    {
      v11 = *(v11 + 8);
      --v10;
    }

    while (v10 > 1);
    v12 = sub_183825068(result, v11, a3 >> 1);
    result = sub_183825068(v11, a2, a3 - v9);
    v13 = *(v12 + 16);
    if (*(result + 16) >= v13)
    {
      v18 = *(v12 + 8);
      i = result;
      result = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    else
    {
      for (i = *(result + 8); i != a2; i = *(i + 8))
      {
        if (*(i + 16) >= v13)
        {
          break;
        }
      }

      v15 = *i;
      v16 = *(*i + 8);
      v17 = *result;
      *(v17 + 8) = v16;
      *v16 = v17;
      v19 = *v12;
      v18 = *(v12 + 8);
      *(v19 + 8) = result;
      *result = v19;
      *v12 = v15;
      *(v15 + 8) = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    if (i != a2)
    {
      v20 = i;
      do
      {
        v21 = *(v18 + 4);
        if (*(i + 16) >= v21)
        {
          v18 = v18[1];
          if (v18 == v20)
          {
            return result;
          }
        }

        else
        {
          for (j = *(i + 8); j != a2; j = *(j + 8))
          {
            if (*(j + 16) >= v21)
            {
              break;
            }
          }

          v23 = *j;
          v24 = *(*j + 8);
          v25 = *i;
          *(v25 + 8) = v24;
          *v24 = v25;
          if (v20 == i)
          {
            v20 = j;
          }

          v27 = *v18;
          v26 = v18[1];
          *(v27 + 8) = i;
          *i = v27;
          *v18 = v23;
          *(v23 + 8) = v18;
          v18 = v26;
          i = j;
          if (v26 == v20)
          {
            return result;
          }
        }
      }

      while (i != a2);
    }
  }

  return result;
}

void sub_183825B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v33 - 168), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_183825D68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_183825D80(uint64_t a1, void *a2)
{
  v38 = a2;
  v8 = objc_msgSend_string(v38, v3, v4, v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"{", v10, v11, v12);

  if (isEqualToString)
  {
    v19 = 1;
  }

  else
  {
    v20 = objc_msgSend_string(v38, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_isEqualToString_(v20, v21, @"}", v22, v23, v24);

    if ((v25 & 1) == 0)
    {
      goto LABEL_6;
    }

    v19 = -1;
  }

  *(*(*(a1 + 40) + 8) + 24) += v19;
LABEL_6:
  objc_msgSend_addObject_(*(*(*(a1 + 48) + 8) + 40), v14, v38, v16, v17, v18);
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    objc_msgSend_addObject_(*(a1 + 32), v26, *(*(*(a1 + 48) + 8) + 40), v27, v28, v29);
    v35 = objc_msgSend_array(MEMORY[0x1E695DF70], v30, v31, v32, v33, v34);
    v36 = *(*(a1 + 48) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;
  }
}

void sub_183827698(uint64_t a1, CGColor *a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  Mutable = CGPathCreateMutable();
  v26.origin.x = a7;
  v26.origin.y = a8;
  v26.size.width = a9;
  v26.size.height = a10;
  v21 = CGRectGetMinX(v26) + a3 * a9;
  v27.origin.x = a7;
  v27.origin.y = a8;
  v27.size.width = a9;
  v27.size.height = a10;
  MinY = CGRectGetMinY(v27);
  CGPathMoveToPoint(Mutable, 0, v21, MinY + a4 * a10);
  v28.origin.x = a7;
  v28.origin.y = a8;
  v28.size.width = a9;
  v28.size.height = a10;
  v23 = CGRectGetMinX(v28) + a5 * a9;
  v29.origin.x = a7;
  v29.origin.y = a8;
  v29.size.width = a9;
  v29.size.height = a10;
  v24 = CGRectGetMinY(v29);
  CGPathAddLineToPoint(Mutable, 0, v23, v24 + a6 * a10);
  CGPathCloseSubpath(Mutable);
  CGContextSetStrokeColorWithColor(*(a1 + 32), a2);
  CGContextAddPath(*(a1 + 32), Mutable);
  CGContextStrokePath(*(a1 + 32));

  CGPathRelease(Mutable);
}

void sub_1838277C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = objc_msgSend_tokenOriginalBounds(*(a1 + 32), v6, v7, v8, v9, v10);
  v16 = objc_msgSend_objectAtIndexedSubscript_(v11, v12, a3, v13, v14, v15);
  objc_msgSend_getValue_size_(v16, v17, &v74, 32, v18, v19);

  if (v5)
  {
    objc_msgSend_principalLines(v5, v20, v21, v22, v23, v24);
    v25.n128_u64[0] = *(&v66 + 1);
    v26.n128_u64[0] = v66;
    if (*&v66 != *(a1 + 48))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v28.n128_u64[1] = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v25.n128_u64[0] = 0;
    v26.n128_u64[0] = 0;
    v66 = 0u;
    v67 = 0u;
    if (*(a1 + 48) != 0.0)
    {
      goto LABEL_21;
    }
  }

  v26.n128_u64[0] = *(a1 + 56);
  if (v25.n128_f64[0] == v26.n128_f64[0])
  {
    v25.n128_u64[0] = *(a1 + 64);
    v26.n128_u64[0] = v67;
    if (*&v67 == v25.n128_f64[0])
    {
      v25.n128_u64[0] = *(a1 + 72);
      v26.n128_u64[0] = *(&v67 + 1);
      if (*(&v67 + 1) == v25.n128_f64[0])
      {
        v25.n128_u64[0] = *(a1 + 80);
        v26.n128_u64[0] = v68;
        if (*&v68 == v25.n128_f64[0])
        {
          v25.n128_u64[0] = *(a1 + 88);
          v26.n128_u64[0] = *(&v68 + 1);
          if (*(&v68 + 1) == v25.n128_f64[0])
          {
            v25.n128_u64[0] = *(a1 + 96);
            v26.n128_u64[0] = v69;
            if (*&v69 == v25.n128_f64[0])
            {
              v25.n128_u64[0] = *(a1 + 104);
              v26.n128_u64[0] = *(&v69 + 1);
              if (*(&v69 + 1) == v25.n128_f64[0])
              {
                v25.n128_u64[0] = *(a1 + 112);
                v26.n128_u64[0] = v70;
                if (*&v70 == v25.n128_f64[0])
                {
                  v25.n128_u64[0] = *(a1 + 120);
                  v26.n128_u64[0] = *(&v70 + 1);
                  if (*(&v70 + 1) == v25.n128_f64[0])
                  {
                    v25.n128_u64[0] = *(a1 + 128);
                    v26.n128_u64[0] = v71;
                    if (*&v71 == v25.n128_f64[0])
                    {
                      v25.n128_u64[0] = *(a1 + 136);
                      v26.n128_u64[0] = *(&v71 + 1);
                      if (*(&v71 + 1) == v25.n128_f64[0])
                      {
                        v25.n128_u64[0] = *(a1 + 144);
                        v26.n128_u64[0] = v72;
                        if (*&v72 == v25.n128_f64[0])
                        {
                          v25.n128_u64[0] = *(a1 + 152);
                          v26.n128_u64[0] = *(&v72 + 1);
                          if (*(&v72 + 1) == v25.n128_f64[0])
                          {
                            v25.n128_u64[0] = *(a1 + 160);
                            v26.n128_u64[0] = v73;
                            if (*&v73 == v25.n128_f64[0])
                            {
                              v25.n128_u64[0] = *(a1 + 168);
                              v26.n128_u64[0] = *(&v73 + 1);
                              if (*(&v73 + 1) == v25.n128_f64[0])
                              {
                                v29 = CGColorCreate(*(a1 + 208), dbl_1839D8DE8);
                                v30 = *(a1 + 40);
                                MinX = CGRectGetMinX(v74);
                                MaxY = CGRectGetMaxY(v74);
                                MaxX = CGRectGetMaxX(v74);
                                v34 = CGRectGetMaxY(v74);
                                (*(v30 + 16))(v30, v29, MinX, MaxY, MaxX, v34, v74.origin.x, v74.origin.y, v74.size.width, v74.size.height);
                                CGColorRelease(v29);
                                goto LABEL_34;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_21:
  v35 = *(a1 + 40);
  if (v5)
  {
    objc_msgSend_principalLines(v5, v20, v21, v22, v23, v24, v25.n128_f64[0], v26.n128_f64[0]);
    v26.n128_u64[0] = *(&v68 + 1);
    v25.n128_u64[0] = v68;
    v27.n128_u64[0] = *(&v69 + 1);
    v28.n128_u64[0] = v69;
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v27.n128_u64[0] = 0;
    v28.n128_u64[0] = 0;
    v26.n128_u64[0] = 0;
    v25.n128_u64[0] = 0;
    v66 = 0u;
    v67 = 0u;
  }

  (*(v35 + 16))(v35, *(a1 + 176), v25, v26, v28, v27, v74.origin.x, v74.origin.y, v74.size.width, v74.size.height);
  v45 = *(a1 + 40);
  if (v5)
  {
    objc_msgSend_principalLines(v5, v36, v37, v38, v39, v40);
    v42.n128_u64[0] = *(&v72 + 1);
    v41.n128_u64[0] = v72;
    v44.n128_u64[0] = *(&v73 + 1);
    v43.n128_u64[0] = v73;
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
    v44.n128_u64[0] = 0;
    v43.n128_u64[0] = 0;
    v42.n128_u64[0] = 0;
    v41.n128_u64[0] = 0;
    v66 = 0u;
    v67 = 0u;
  }

  (*(v45 + 16))(v45, *(a1 + 184), v41, v42, v43, v44, v74.origin.x, v74.origin.y, v74.size.width, v74.size.height);
  v55 = *(a1 + 40);
  if (v5)
  {
    objc_msgSend_principalLines(v5, v46, v47, v48, v49, v50);
    v52.n128_u64[0] = *(&v70 + 1);
    v51.n128_u64[0] = v70;
    v54.n128_u64[0] = *(&v71 + 1);
    v53.n128_u64[0] = v71;
  }

  else
  {
    v54.n128_u64[0] = 0;
    v53.n128_u64[0] = 0;
    v52.n128_u64[0] = 0;
    v51.n128_u64[0] = 0;
    v66 = 0u;
    v67 = 0u;
  }

  (*(v55 + 16))(v55, *(a1 + 192), v51, v52, v53, v54, v74.origin.x, v74.origin.y, v74.size.width, v74.size.height);
  v65 = *(a1 + 40);
  if (v5)
  {
    objc_msgSend_principalLines(v5, v56, v57, v58, v59, v60);
    v62.n128_u64[0] = *(&v66 + 1);
    v61.n128_u64[0] = v66;
    v64.n128_u64[0] = *(&v67 + 1);
    v63.n128_u64[0] = v67;
  }

  else
  {
    v64.n128_u64[0] = 0;
    v63.n128_u64[0] = 0;
    v62.n128_u64[0] = 0;
    v61.n128_u64[0] = 0;
  }

  (*(v65 + 16))(v65, *(a1 + 200), v61, v62, v63, v64, v74.origin.x, v74.origin.y, v74.size.width, v74.size.height);
LABEL_34:
}

void sub_183827C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7)
{
  v11 = a5;
  v16 = v11;
  v36 = v11;
  if (v11)
  {
    v11 = objc_msgSend_count(v11, v11, v12, v13, v14, v15);
    v16 = v36;
  }

  if (a1)
  {
    if (a2 - v11 >= 1)
    {
      v17 = (a1 + 4 * a4);
      if (a2 >= 1)
      {
        if (v16)
        {
          v18 = 0;
          v19 = 4 * a3;
          for (i = objc_msgSend_containsIndex_(v16, v16, 0, v13, v14, v15, a6); ; i = objc_msgSend_containsIndex_(v36, v36, v18, v21, v22, v23, v24))
          {
            if ((i & 1) == 0)
            {
              v24 = (*v17 - a6) / a7;
              *&v24 = v24;
              *v17 = *&v24;
            }

            ++v18;
            v17 = (v17 + v19);
            v16 = v36;
            if (a2 == v18)
            {
              break;
            }
          }
        }

        else
        {
          v25 = 0;
          if (a2 < 8)
          {
            goto LABEL_17;
          }

          if (a3 != 1)
          {
            goto LABEL_17;
          }

          v25 = a2 & 0x7FFFFFFFFFFFFFF8;
          v26 = vdupq_lane_s64(*&a6, 0);
          v27 = vdupq_lane_s64(*&a7, 0);
          v28 = (v17 + 4);
          v29 = a2 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v30 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(vsubq_f64(vcvtq_f64_f32(*v28), v26), v27)), vdivq_f64(vsubq_f64(vcvt_hight_f64_f32(*v28->f32), v26), v27));
            *v28[-2].f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(vsubq_f64(vcvtq_f64_f32(v28[-2]), v26), v27)), vdivq_f64(vsubq_f64(vcvt_hight_f64_f32(*v28[-2].f32), v26), v27));
            *v28->f32 = v30;
            v28 += 4;
            v29 -= 8;
          }

          while (v29);
          if (v25 != a2)
          {
LABEL_17:
            v31 = a2 - v25;
            v32 = (a1 + 4 * v25 * a3 + 4 * a4);
            do
            {
              v33 = (*v32 - a6) / a7;
              *v32 = v33;
              v32 += a3;
              --v31;
            }

            while (v31);
          }
        }
      }
    }
  }
}

void sub_183828B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_183828E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = CHRecurrentNeuralNetworkCoreML;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_183828F68(void *a1)
{
  v1 = a1;
  if (objc_msgSend_dataType(v1, v2, v3, v4, v5, v6) == 65568)
  {
    v7 = v1;
  }

  else
  {
    v7 = sub_1837AA6D8(v1, 65568);
  }

  v8 = v7;

  return v8;
}

uint64_t sub_183828FE8(uint64_t a1, uint64_t a2, int **a3)
{
  v4 = a2 - a1;
  v5 = (a2 - a1) >> 2;
  v6 = *a3;
  v7 = a3[1];
  v8 = v7 - *a3;
  if (v5 < v8 >> 2)
  {
    return 0;
  }

  if (v5 != v8 >> 2)
  {
    if (v7 != v6)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18383B70C();
    }

    return 1;
  }

  if (v4 == v8)
  {
    if (a1 != a2)
    {
      v11 = a1 + 4;
      do
      {
        v12 = *v6++;
        v9 = *(v11 - 4) == v12;
        v13 = *(v11 - 4) != v12 || v11 == a2;
        v11 += 4;
      }

      while (!v13);
      return v9;
    }

    return 1;
  }

  return 0;
}

void *sub_1838291E4(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    sub_18383B70C();
  }

  return result;
}

void sub_18382927C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_183829298(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_18383B70C();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_183688F00();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
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

void sub_1838293B0(std::string *a1, uint64_t a2)
{
  sub_183829528(&v15, a2);
  v3 = v15;
  v4 = v16;
  memset(&__p, 0, sizeof(__p));
  if (v15 != v16)
  {
    do
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::append(&__p, " ");
      }

      v6 = *(v3 + 23);
      if (v6 >= 0)
      {
        v7 = v3;
      }

      else
      {
        v7 = *v3;
      }

      if (v6 >= 0)
      {
        v8 = *(v3 + 23);
      }

      else
      {
        v8 = v3[1];
      }

      v9 = std::string::append(&__p, v7, v8);
      if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
      {
        sub_183688F34(&v17, v9->__r_.__value_.__l.__data_, v9->__r_.__value_.__l.__size_);
      }

      else
      {
        v10 = *&v9->__r_.__value_.__l.__data_;
        v17.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&v17.__r_.__value_.__l.__data_ = v10;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v17;
      v3 += 3;
    }

    while (v3 != v4);
    v3 = v15;
  }

  *a1 = __p;
  memset(&__p, 0, sizeof(__p));
  if (v3)
  {
    v11 = v16;
    v12 = v3;
    if (v16 != v3)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v3);
      v12 = v15;
    }

    v16 = v3;
    operator delete(v12);
  }
}

void sub_183829504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_183689748(&a15);
  _Unwind_Resume(a1);
}

void *sub_183829528(void *result, uint64_t a2)
{
  v2 = *(a2 + 72);
  v3 = *(a2 + 80);
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  if (v3 != v2)
  {
    if (((v3 - v2) >> 2) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18368964C();
  }

  return result;
}

void sub_183829674(uint64_t a1, const void **a2, void *a3, int a4)
{
  v7 = a3;
  v8 = MEMORY[0x1E695DF70];
  v58 = v7;
  v14 = objc_msgSend_shape(v7, v9, v10, v11, v12, v13);
  v19 = objc_msgSend_arrayWithArray_(v8, v15, v14, v16, v17, v18);

  objc_msgSend_setObject_atIndexedSubscript_(v19, v20, &unk_1EF1ED8E8, 0, v21, v22);
  v23 = v58;
  v29 = objc_msgSend_dataPointer(v23, v24, v25, v26, v27, v28);
  v35 = objc_msgSend_strides(v58, v30, v31, v32, v33, v34);
  v40 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, 0, v37, v38, v39);
  v46 = objc_msgSend_integerValue(v40, v41, v42, v43, v44, v45);

  v47 = objc_alloc(MEMORY[0x1E695FED0]);
  v53 = objc_msgSend_strides(v58, v48, v49, v50, v51, v52);
  v55 = objc_msgSend_initWithDataPointer_shape_dataType_strides_deallocator_error_(v47, v54, v29 + 4 * v46 * a4, v19, 65568, v53, 0, 0);
  v56 = sub_18383C384(a1, a2);
  v57 = v56[7];
  v56[7] = v55;
}

float sub_183829870(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_18387A58C(a1 + 8, (a2 + 72), &v42);
  v41[0] = 0;
  v41[1] = 0;
  v40 = v41;
  v6 = v42;
  if (v42 == v43)
  {
    v7 = 0;
    goto LABEL_18;
  }

  do
  {
    sub_18383C6B4(&v40, v41, v6 + 8);
    v8 = *(v6 + 1);
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = *(v6 + 2);
        v10 = *v9 == v6;
        v6 = v9;
      }

      while (!v10);
    }

    v6 = v9;
  }

  while (v9 != v43);
  v7 = v41[0];
  if (!v41[0])
  {
    goto LABEL_18;
  }

  v11 = v41;
  v12 = v41[0];
  do
  {
    if (v12[8] >= 1)
    {
      v11 = v12;
    }

    v12 = *&v12[2 * (v12[8] < 1)];
  }

  while (v12);
  if (v11 == v41 || v11[8] > 1)
  {
LABEL_18:
    if (*(a2 + 196) != 1)
    {
      sub_18368A374(&v40, v7);
      goto LABEL_39;
    }

    v39[0] = 0;
    v39[1] = 0;
    v38 = v39;
    v13 = v42;
    if (v42 == v43)
    {
      v14 = 0;
    }

    else
    {
      do
      {
        sub_18383C6B4(&v38, v39, v13 + 8);
        v15 = *(v13 + 1);
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = *(v13 + 2);
            v10 = *v16 == v13;
            v13 = v16;
          }

          while (!v10);
        }

        v13 = v16;
      }

      while (v16 != v43);
      v14 = v39[0];
      if (v39[0])
      {
        v17 = v39;
        v18 = v39[0];
        do
        {
          if (*(v18 + 32) >= 3)
          {
            v17 = v18;
          }

          v18 = *(v18 + 8 * (*(v18 + 32) < 3));
        }

        while (v18);
        if (v17 != v39 && *(v17 + 8) < 4)
        {
LABEL_37:
          sub_18368A374(&v38, v14);
          sub_18368A374(&v40, v41[0]);
          if (v17 != v39)
          {
            goto LABEL_38;
          }

LABEL_39:
          if (*(*(a2 + 208) - 4) == 8)
          {
LABEL_40:
            *a3 = 0;
            v19 = *(a1 + 428);
            goto LABEL_77;
          }

          v37[0] = 0;
          v37[1] = 0;
          v36 = v37;
          v20 = v42;
          if (v42 == v43)
          {
            v21 = 0;
          }

          else
          {
            do
            {
              sub_18383C6B4(&v36, v37, v20 + 8);
              v22 = *(v20 + 1);
              if (v22)
              {
                do
                {
                  v23 = v22;
                  v22 = *v22;
                }

                while (v22);
              }

              else
              {
                do
                {
                  v23 = *(v20 + 2);
                  v10 = *v23 == v20;
                  v20 = v23;
                }

                while (!v10);
              }

              v20 = v23;
            }

            while (v23 != v43);
            v21 = v37[0];
            if (v37[0])
            {
              v24 = v37;
              v25 = v37[0];
              do
              {
                if (v25[8] >= 5)
                {
                  v24 = v25;
                }

                v25 = *&v25[2 * (v25[8] < 5)];
              }

              while (v25);
              if (v24 != v37 && v24[8] <= 5)
              {
                sub_18368A374(&v36, v37[0]);
                goto LABEL_40;
              }
            }
          }

          sub_18368A374(&v36, v21);
          v35[0] = 0;
          v35[1] = 0;
          v34 = v35;
          v26 = v42;
          if (v42 == v43)
          {
            v27 = 0;
          }

          else
          {
            do
            {
              sub_18383C6B4(&v34, v35, v26 + 8);
              v28 = *(v26 + 1);
              if (v28)
              {
                do
                {
                  v29 = v28;
                  v28 = *v28;
                }

                while (v28);
              }

              else
              {
                do
                {
                  v29 = *(v26 + 2);
                  v10 = *v29 == v26;
                  v26 = v29;
                }

                while (!v10);
              }

              v26 = v29;
            }

            while (v29 != v43);
            v27 = v35[0];
            if (v35[0])
            {
              v30 = v35;
              v31 = v35[0];
              do
              {
                if (v31[8] >= 4)
                {
                  v30 = v31;
                }

                v31 = *&v31[2 * (v31[8] < 4)];
              }

              while (v31);
              if (v30 != v35 && v30[8] <= 4)
              {
                v32 = *(a2 + 196);
                sub_18368A374(&v34, v35[0]);
                if (v32 == 1)
                {
                  goto LABEL_40;
                }

LABEL_76:
                *a3 = 1;
                v19 = 0.0;
                goto LABEL_77;
              }
            }
          }

          sub_18368A374(&v34, v27);
          goto LABEL_76;
        }
      }
    }

    v17 = v39;
    goto LABEL_37;
  }

  sub_18368A374(&v40, v41[0]);
LABEL_38:
  *a3 = 0;
  v19 = *(a1 + 424);
LABEL_77:
  sub_18368A374(&v42, v43[0]);
  return v19;
}

void sub_183829C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_18368A374(&a10, a11);
  sub_18368A374(v11 - 88, *(v11 - 80));
  _Unwind_Resume(a1);
}

uint64_t sub_183829C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a5;
  *a1 = &unk_1EF1BE8A8;
  *(a1 + 8) = 0u;
  v16 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  v17 = (a1 + 48);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  v51 = (a1 + 88);
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0u;
  v52 = (a1 + 128);
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1065353216;
  v18 = v15;
  *(a1 + 168) = v18;
  sub_1836DF03C((a1 + 176), a7);
  sub_1836DF03C((a1 + 200), a8);
  v49 = v18;
  sub_18383C9AC((a1 + 224), a6);
  v53 = (a1 + 256);
  *(a1 + 248) = a1 + 256;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0xBD2E57BB3F067AD5;
  v50 = a1 + 248;
  *(a1 + 280) = -1072083513;
  v19 = *(a2 + 16);
  for (i = a1; v19; v19 = *v19)
  {
    if (*(v19 + 39) < 0)
    {
      sub_183688F34(__p, v19[2], v19[3]);
    }

    else
    {
      *__p = *(v19 + 1);
      v55 = v19[4];
    }

    if (v55 >= 0)
    {
      v21 = (__p + HIBYTE(v55));
    }

    else
    {
      v21 = (__p[0] + __p[1]);
    }

    if (v55 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    for (; v22 != v21; v22 = (v22 + 1))
    {
      *v22 = __tolower(*v22);
    }

    sub_18383CAF4(v16, __p);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p[0]);
    }
  }

  HIBYTE(v55) = 1;
  LOWORD(__p[0]) = 101;
  v23 = sub_18383CEE8(v16, __p);
  *(i + 284) = v23 != 0;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
    if ((*(i + 284) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (!v23)
  {
LABEL_21:
    operator new();
  }

  for (j = *(a3 + 16); j; j = *j)
  {
    if (*(j + 39) < 0)
    {
      sub_183688F34(__p, j[2], j[3]);
    }

    else
    {
      *__p = *(j + 1);
      v55 = j[4];
    }

    if (v55 >= 0)
    {
      v25 = (__p + HIBYTE(v55));
    }

    else
    {
      v25 = (__p[0] + __p[1]);
    }

    if (v55 >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    for (; v26 != v25; v26 = (v26 + 1))
    {
      *v26 = __tolower(*v26);
    }

    sub_18383CAF4(v17, __p);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p[0]);
    }
  }

  for (k = *(a4 + 16); k; k = *k)
  {
    if (*(k + 39) < 0)
    {
      sub_183688F34(__p, k[2], k[3]);
    }

    else
    {
      *__p = *(k + 1);
      v55 = k[4];
    }

    if (v55 >= 0)
    {
      v28 = (__p + HIBYTE(v55));
    }

    else
    {
      v28 = (__p[0] + __p[1]);
    }

    if (v55 >= 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = __p[0];
    }

    for (; v29 != v28; v29 = (v29 + 1))
    {
      *v29 = __tolower(*v29);
    }

    sub_18383CAF4(v51, __p);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v30 = *(i + 224);
  if (*(i + 232) != v30)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      __p[0] = (v30 + v31);
      *(sub_1836897BC(v50, (v30 + v31)) + 14) = v32++;
      v30 = *(i + 224);
      v31 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(i + 232) - v30) >> 3) > v32);
  }

  for (m = 0; m != 9; ++m)
  {
    v34 = off_1E6DDED80[m];
    v35 = strlen(v34);
    if (v35 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_183688FF0();
    }

    v36 = v35;
    if (v35 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v55) = v35;
    if (v35)
    {
      memmove(__p, v34, v35);
    }

    *(__p + v36) = 0;
    v37 = *v53;
    if (!*v53)
    {
LABEL_93:
      sub_1836868A4("map::at:  key not found");
    }

    if (v55 >= 0)
    {
      v38 = HIBYTE(v55);
    }

    else
    {
      v38 = __p[1];
    }

    if (v55 >= 0)
    {
      v39 = __p;
    }

    else
    {
      v39 = __p[0];
    }

    while (1)
    {
      while (1)
      {
        v40 = *(v37 + 55);
        if (v40 >= 0)
        {
          v41 = *(v37 + 55);
        }

        else
        {
          v41 = *(v37 + 5);
        }

        if (v40 >= 0)
        {
          v42 = v37 + 8;
        }

        else
        {
          v42 = *(v37 + 4);
        }

        if (v41 >= v38)
        {
          v43 = v38;
        }

        else
        {
          v43 = v41;
        }

        v44 = memcmp(v39, v42, v43);
        v45 = v38 < v41;
        if (v44)
        {
          v45 = v44 < 0;
        }

        if (!v45)
        {
          break;
        }

        v37 = *v37;
        if (!v37)
        {
          goto LABEL_93;
        }
      }

      v46 = memcmp(v42, v39, v43);
      v47 = v41 < v38;
      if (v46)
      {
        v47 = v46 < 0;
      }

      if (!v47)
      {
        break;
      }

      v37 = *(v37 + 1);
      if (!v37)
      {
        goto LABEL_93;
      }
    }

    sub_18383D490(v52, v37 + 14);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return i;
}

void sub_18382A288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char **a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_183688E98(&__p);
  sub_18368922C(a13, *a16);
  sub_183689748((v24 + 224));
  sub_1836B3630((v24 + 200));
  sub_1836B3630((v24 + 176));

  sub_1836CFA48(a15);
  sub_183686C60(a14);
  sub_183686C60(v22);
  sub_183686C60(v23);

  _Unwind_Resume(a1);
}

uint64_t sub_18382A3D8(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t **a5, int a6)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 200);
  if (*(a2 + 208) - v7 < 9uLL || *v7 != 1)
  {
    if (a6 >= 1)
    {
      goto LABEL_12;
    }

LABEL_8:
    v10 = *a5;
    v9 = a5[1];

    return sub_18382A848(a2 + 224, a3, a4, v10, v9);
  }

  if (v7[1] == 9 || a6 <= 0)
  {
    goto LABEL_8;
  }

LABEL_12:
  v12 = *(a2 + 72);
  v13 = (*(a2 + 80) - v12) >> 2;
  v14 = *(a2 + 247);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 232);
  }

  if (v14 + 2 >= v13)
  {
    return 0;
  }

  if (a3)
  {
    v15 = -1;
  }

  else
  {
    v15 = -2;
  }

  v16 = v15 + *(a2 + 196) + v13;
  v17 = *(v12 + 4 * (v16 - v14));
  v51 = 1;
  __s1[0] = 92;
  v18 = *(a1 + 256);
  if (!v18)
  {
LABEL_50:
    sub_1836868A4("map::at:  key not found");
  }

  v21 = *(a1 + 256);
  while (1)
  {
    while (1)
    {
      v22 = *(v21 + 55);
      if (v22 >= 0)
      {
        v23 = *(v21 + 55);
      }

      else
      {
        v23 = v21[5];
      }

      if (v22 >= 0)
      {
        v24 = v21 + 4;
      }

      else
      {
        v24 = v21[4];
      }

      v25 = memcmp(__s1, v24, v23 != 0);
      v26 = v23 > 1;
      if (v25)
      {
        v26 = v25 < 0;
      }

      if (!v26)
      {
        break;
      }

      v21 = *v21;
      if (!v21)
      {
        goto LABEL_50;
      }
    }

    v27 = memcmp(v24, __s1, v23 != 0);
    v28 = v23 == 0;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (!v28)
    {
      break;
    }

    v21 = v21[1];
    if (!v21)
    {
      goto LABEL_50;
    }
  }

  v55 = *(v21 + 14);
  v49 = 1;
  __s2[0] = 46;
  while (1)
  {
    while (1)
    {
      v29 = *(v18 + 55);
      if (v29 >= 0)
      {
        v30 = *(v18 + 55);
      }

      else
      {
        v30 = v18[5];
      }

      if (v29 >= 0)
      {
        v31 = v18 + 4;
      }

      else
      {
        v31 = v18[4];
      }

      v32 = memcmp(__s2, v31, v30 != 0);
      v33 = v30 > 1;
      if (v32)
      {
        v33 = v32 < 0;
      }

      if (!v33)
      {
        break;
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_50;
      }
    }

    v34 = memcmp(v31, __s2, v30 != 0);
    v35 = v30 == 0;
    if (v34)
    {
      v35 = v34 < 0;
    }

    if (!v35)
    {
      break;
    }

    v18 = v18[1];
    if (!v18)
    {
      goto LABEL_50;
    }
  }

  v56 = *(v18 + 14);
  *v52 = 0u;
  *__p = 0u;
  v54 = 1065353216;
  sub_18383D490(v52, &v55);
  sub_18383D490(v52, &v56);
  if (!v52[1])
  {
    goto LABEL_71;
  }

  v36 = vcnt_s8(v52[1]);
  v36.i16[0] = vaddlv_u8(v36);
  if (v36.u32[0] > 1uLL)
  {
    v37 = v17;
    if (v52[1] <= v17)
    {
      v37 = v17 % v52[1];
    }
  }

  else
  {
    v37 = (v52[1] - 1) & v17;
  }

  v38 = *(v52[0] + v37);
  if (!v38 || (v39 = *v38) == 0)
  {
LABEL_71:
    v42 = 0;
    v43 = __p[0];
    if (!__p[0])
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (v36.u32[0] < 2uLL)
  {
    while (1)
    {
      v41 = v39[1];
      if (v41 == v17)
      {
        if (*(v39 + 4) == v17)
        {
          goto LABEL_78;
        }
      }

      else if ((v41 & (v52[1] - 1)) != v37)
      {
        goto LABEL_71;
      }

      v39 = *v39;
      if (!v39)
      {
        goto LABEL_71;
      }
    }
  }

  while (1)
  {
    v40 = v39[1];
    if (v40 == v17)
    {
      break;
    }

    if (v40 >= v52[1])
    {
      v40 %= v52[1];
    }

    if (v40 != v37)
    {
      goto LABEL_71;
    }

LABEL_61:
    v39 = *v39;
    if (!v39)
    {
      goto LABEL_71;
    }
  }

  if (*(v39 + 4) != v17)
  {
    goto LABEL_61;
  }

LABEL_78:
  v46 = *(a2 + 247);
  if ((v46 & 0x80u) != 0)
  {
    v46 = *(a2 + 232);
  }

  v42 = *(*(a2 + 120) + 8 * v16 + 8 * ~v46) == 0x400000;
  v43 = __p[0];
  if (__p[0])
  {
    do
    {
LABEL_72:
      v44 = *v43;
      operator delete(v43);
      v43 = v44;
    }

    while (v44);
  }

LABEL_73:
  v45 = v52[0];
  v52[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  if (v42)
  {
    return sub_18382A848(a2 + 224, a3, a4, *a5, a5[1]);
  }

  return 0;
}

void sub_18382A834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1836CFA48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_18382A848(uint64_t a1, uint64_t a2, float *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a4;
  v6 = a3;
  if (a3)
  {
    *a3 = -INFINITY;
  }

  if (a4 == a5)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    alloc = *MEMORY[0x1E695E480];
    do
    {
      RootCursor = LXLexiconCreateRootCursor();
      v39 = RootCursor;
      if (*(a1 + 23) >= 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = *a1;
      }

      v12 = CFStringCreateWithCString(alloc, v11, 0x8000100u);
      cf = v12;
      if (v12)
      {
        v13 = CFGetTypeID(v12);
        if (v13 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x1865E5C80](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      v14 = LXCursorCreateByAdvancing();
      v15 = v6;
      v37 = v14;
      HasChildren = LXCursorHasChildren();
      v20 = HasChildren;
      v21 = a2;
      if (a2)
      {
        v8 |= HasChildren != 0;
      }

      v36 = 0;
      if (*(a1 + 23) >= 0)
      {
        objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v17, a1, 4, v18, v19);
      }

      else
      {
        objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v17, *a1, 4, v18, v19);
      }
      v22 = ;
      objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v23, v22, *v5, &v36, v24);

      v25 = v36;
      a2 = v21;
      if (v20)
      {
        v26 = v21;
      }

      else
      {
        v26 = 0;
      }

      v6 = v15;
      if (v15 && ((v26 | v36) & 1) != 0)
      {
        LXCursorConditionalProbability();
        v28 = v27 / 0.434294482;
        v29 = *(a1 + 23);
        if ((v29 & 0x80u) != 0)
        {
          v29 = *(a1 + 8);
        }

        v30 = fmax(v28 / v29, *v15);
        *v15 = v30;
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (RootCursor)
      {
        CFRelease(RootCursor);
      }

      v9 |= v25;
      ++v5;
    }

    while (v5 != a5);
  }

  return (a2 & v8 | v9) & 1;
}

void sub_18382AAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  sub_183695860(va);
  sub_1836C040C(va1);
  _Unwind_Resume(a1);
}

void sub_18382AB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1836C040C(va);
  _Unwind_Resume(a1);
}

void sub_18382AB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  sub_18383AB04(va);
  sub_1836C040C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_18382AB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + 247) < 0)
  {
    sub_183688F34(__p, *(a2 + 224), *(a2 + 232));
  }

  else
  {
    *__p = *(a2 + 224);
    v32 = *(a2 + 240);
  }

  if (v32 >= 0)
  {
    v7 = (__p + HIBYTE(v32));
  }

  else
  {
    v7 = (__p[0] + __p[1]);
  }

  if (v32 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  for (; v8 != v7; v8 = (v8 + 1))
  {
    *v8 = __tolower(*v8);
  }

  v12 = objc_msgSend_root(*(a1 + 168), a2, a3, a4, a5, a6, __p[0]);
  if (v32 >= 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v9, __p, 4, v10, v11);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v9, __p[0], 4, v10, v11);
  }
  v13 = ;
  v18 = objc_msgSend_objectForKeyedSubscript_(v12, v14, v13, v15, v16, v17);

  if (v18 && objc_msgSend_isMatch(v18, v19, v20, v21, v22, v23))
  {
    v29 = objc_msgSend_containsCurrency(v18, v24, v25, v26, v27, v28);

    if (SHIBYTE(v32) < 0)
    {
LABEL_18:
      operator delete(__p[0]);
      return v29;
    }
  }

  else
  {
    v29 = 0;

    if (SHIBYTE(v32) < 0)
    {
      goto LABEL_18;
    }
  }

  return v29;
}

void sub_18382ACBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = v15;

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_18382AD0C(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*(*(a2 + 208) - 4) == 1)
  {
    operator new();
  }

  return 0;
}

void sub_18382B850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v15);
  operator delete(v14);
  _Unwind_Resume(a1);
}

void sub_18382B918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_18382B930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_18382B964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

BOOL sub_18382B990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 208);
  if (*(v6 - 4) != 1)
  {
    return 0;
  }

  v7 = *(a2 + 200);
  v8 = v6 - v7;
  if (v8 != 4)
  {
    if (v8 >= 5)
    {
      v24 = a1;
      v9 = a2;
      v25 = *(v7 + v8 - 8);
      v39 = xmmword_1839D8EB0;
      *v36 = 0u;
      *__p = 0u;
      v38 = 1065353216;
      sub_18383BA44(v36, 3u);
      sub_18383BA44(v36, 9u);
      sub_18383BA44(v36, 0xBu);
      sub_18383BA44(v36, 6u);
      if (v36[1])
      {
        v26 = vcnt_s8(v36[1]);
        v26.i16[0] = vaddlv_u8(v26);
        if (v26.u32[0] > 1uLL)
        {
          v27 = v25;
          if (v36[1] <= v25)
          {
            v27 = v25 % LODWORD(v36[1]);
          }
        }

        else
        {
          v27 = (LODWORD(v36[1]) - 1) & v25;
        }

        v28 = *(v36[0] + v27);
        if (v28)
        {
          v29 = *v28;
          if (v29)
          {
            if (v26.u32[0] < 2uLL)
            {
              while (1)
              {
                v31 = v29[1];
                if (v31 == v25)
                {
                  if (*(v29 + 4) == v25)
                  {
                    goto LABEL_29;
                  }
                }

                else if ((v31 & (v36[1] - 1)) != v27)
                {
                  goto LABEL_30;
                }

                v29 = *v29;
                if (!v29)
                {
                  goto LABEL_30;
                }
              }
            }

            do
            {
              v30 = v29[1];
              if (v30 == v25)
              {
                if (*(v29 + 4) == v25)
                {
LABEL_29:
                  v32 = 1;
                  goto LABEL_31;
                }
              }

              else
              {
                if (v30 >= v36[1])
                {
                  v30 %= v36[1];
                }

                if (v30 != v27)
                {
                  break;
                }
              }

              v29 = *v29;
            }

            while (v29);
          }
        }
      }

LABEL_30:
      v32 = 0;
LABEL_31:
      v33 = __p[0];
      if (__p[0])
      {
        do
        {
          v34 = *v33;
          operator delete(v33);
          v33 = v34;
        }

        while (v34);
      }

      v35 = v36[0];
      v36[0] = 0;
      if (v35)
      {
        operator delete(v35);
      }

      a1 = v24;
      if (v32)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  v9 = a2;
LABEL_4:
  v13 = objc_msgSend_root(*(a1 + 168), a2, a3, a4, a5, a6, v36[0]);
  v16 = *(v9 + 224);
  v15 = v9 + 224;
  v14 = v16;
  if (*(v15 + 23) >= 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v10, v15, 4, v11, v12);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v10, v14, 4, v11, v12);
  }
  v17 = ;
  v22 = objc_msgSend_objectForKeyedSubscript_(v13, v18, v17, v19, v20, v21);

  return v22 != 0;
}

void sub_18382BBFC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_18382BC38(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_18382C168(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_18382C1B8(void *a1, uint64_t a2, void *a3)
{
  result = sub_183686288(a1 + 11, a2);
  if (!result)
  {
    return result;
  }

  v7 = a3[9];
  v8 = (a3[10] - v7) >> 2;
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (v8 > v9 + 3)
  {
    v10 = a3[15];
    if (*(v10 + 8 * v8 - 8) == 0x2000)
    {
      v11 = v8 - v9 - 2;
      if (*(v10 + 8 * v11) == 0x2000)
      {
LABEL_7:
        v12 = *(v10 + 8 * (v8 - v9) - 24);
        result = 1;
        if (v12 == 64 || v12 == 128)
        {
          return result;
        }
      }

      else
      {
        v13 = a1[17];
        if (v13)
        {
          v14 = *(v7 + 4 * v11);
          v15 = vcnt_s8(v13);
          v15.i16[0] = vaddlv_u8(v15);
          if (v15.u32[0] > 1uLL)
          {
            v16 = v14;
            if (*&v13 <= v14)
            {
              v16 = v14 % *&v13;
            }
          }

          else
          {
            v16 = (*&v13 - 1) & v14;
          }

          v17 = *(a1[16] + 8 * v16);
          if (v17)
          {
            v18 = *v17;
            if (v18)
            {
              if (v15.u32[0] < 2uLL)
              {
                v19 = *&v13 - 1;
                while (1)
                {
                  v21 = v18[1];
                  if (v21 == v14)
                  {
                    if (*(v18 + 4) == v14)
                    {
                      goto LABEL_7;
                    }
                  }

                  else if ((v21 & v19) != v16)
                  {
                    goto LABEL_30;
                  }

                  v18 = *v18;
                  if (!v18)
                  {
                    goto LABEL_30;
                  }
                }
              }

              do
              {
                v20 = v18[1];
                if (v20 == v14)
                {
                  if (*(v18 + 4) == v14)
                  {
                    goto LABEL_7;
                  }
                }

                else
                {
                  if (v20 >= *&v13)
                  {
                    v20 %= *&v13;
                  }

                  if (v20 != v16)
                  {
                    break;
                  }
                }

                v18 = *v18;
              }

              while (v18);
            }
          }
        }
      }
    }
  }

LABEL_30:
  if (v8 <= v9 + 2)
  {
    return 0;
  }

  v22 = a1[17];
  if (!*&v22)
  {
    return 0;
  }

  v23 = *(a3[10] - 4);
  v24 = vcnt_s8(v22);
  v24.i16[0] = vaddlv_u8(v24);
  if (v24.u32[0] > 1uLL)
  {
    v25 = *(a3[10] - 4);
    if (*&v22 <= v23)
    {
      v25 = v23 % *&v22;
    }
  }

  else
  {
    v25 = (*&v22 - 1) & v23;
  }

  v26 = a1[16];
  v27 = *(v26 + 8 * v25);
  if (!v27)
  {
    return 0;
  }

  v28 = *v27;
  if (!*v27)
  {
    return 0;
  }

  v29 = *&v22 - 1;
  if (v24.u32[0] < 2uLL)
  {
    while (1)
    {
      v30 = v28[1];
      if (v30 == v23)
      {
        if (*(v28 + 4) == v23)
        {
          goto LABEL_52;
        }
      }

      else if ((v30 & v29) != v25)
      {
        return 0;
      }

      result = 0;
      v28 = *v28;
      if (!v28)
      {
        return result;
      }
    }
  }

  while (1)
  {
    v31 = v28[1];
    if (v31 == v23)
    {
      break;
    }

    if (v31 >= *&v22)
    {
      v31 %= *&v22;
    }

    if (v31 != v25)
    {
      return 0;
    }

LABEL_46:
    result = 0;
    v28 = *v28;
    if (!v28)
    {
      return result;
    }
  }

  if (*(v28 + 4) != v23)
  {
    goto LABEL_46;
  }

LABEL_52:
  v32 = v8 - v9 - 2;
  if (*(a3[15] + 8 * v32) == 0x2000)
  {
    return 1;
  }

  v33 = *(v7 + 4 * v32);
  if (v24.u32[0] > 1uLL)
  {
    v34 = v33;
    if (*&v22 <= v33)
    {
      v34 = v33 % *&v22;
    }
  }

  else
  {
    v34 = v29 & v33;
  }

  v35 = *(v26 + 8 * v34);
  if (v35)
  {
    v36 = *v35;
    if (v36)
    {
      if (v24.u32[0] < 2uLL)
      {
        while (1)
        {
          v37 = v36[1];
          if (v37 == v33)
          {
            if (*(v36 + 4) == v33)
            {
              return 1;
            }
          }

          else if ((v37 & v29) != v34)
          {
            return 0;
          }

          result = 0;
          v36 = *v36;
          if (!v36)
          {
            return result;
          }
        }
      }

      while (1)
      {
        v38 = v36[1];
        if (v38 == v33)
        {
          if (*(v36 + 4) == v33)
          {
            return 1;
          }
        }

        else
        {
          if (v38 >= *&v22)
          {
            v38 %= *&v22;
          }

          if (v38 != v34)
          {
            return 0;
          }
        }

        result = 0;
        v36 = *v36;
        if (!v36)
        {
          return result;
        }
      }
    }
  }

  return 0;
}