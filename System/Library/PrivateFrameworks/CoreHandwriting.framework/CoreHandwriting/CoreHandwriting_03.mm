void sub_1836CF9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_1836CFA48(va);
  if (v3)
  {
    operator delete(v3);
  }

  sub_1836CFA48(va1);
  _Unwind_Resume(a1);
}

void sub_1836CFA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1836CFA48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1836CFA48(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1836CFA94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v4 = *a2;
    if (a2[1] != *a2)
    {
      v5 = a1;
      v6 = 0;
      v54 = a1;
      while (1)
      {
        v7 = *(v4 + 8 * v6);
        v12 = *(*(v5 + 248) + 48);
        if (!v12 || (objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v8, v7, v9, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v12, v14, v13, v15, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v13, v19))
        {
          v28 = objc_msgSend_expectedMaxDotCount_(CHCharacterSetRules, v8, v7, v9, v10, v11, v54);
        }

        else
        {
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v20 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v8, v7, v9, v10, v11);
          v25 = objc_msgSend_objectForKeyedSubscript_(v12, v21, v20, v22, v23, v24);

          v28 = 0;
          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v56, v60, 16, v27);
          if (v34)
          {
            v35 = *v57;
            do
            {
              v36 = 0;
              do
              {
                if (*v57 != v35)
                {
                  objc_enumerationMutation(v25);
                }

                v37 = objc_msgSend_unsignedIntValue(*(*(&v56 + 1) + 8 * v36), v29, v30, v31, v32, v33, v54);
                v28 += objc_msgSend_expectedMaxDotCount_(CHCharacterSetRules, v38, v37, v39, v40, v41);
                ++v36;
              }

              while (v34 != v36);
              v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v29, &v56, v60, 16, v33);
            }

            while (v34);
          }

          v5 = v54;
        }

        if (!objc_msgSend_shouldTreatAllSmallStrokesAsPunctuation(*(v5 + 456), v42, v43, v44, v45, v46, v54))
        {
          break;
        }

        if (!v28)
        {
          v47 = *a2 + 8 * v6;
          v49 = *(v47 + 4);
          v48 = (v47 + 4);
          v50 = v49 * 0.1;
LABEL_19:
          v53 = v50;
          *v48 = v53;
        }

        ++v6;
        v4 = *a2;
        if (v6 >= (a2[1] - *a2) >> 3)
        {
          return;
        }
      }

      v51 = *a2 + 8 * v6;
      v52 = *(v51 + 4);
      v48 = (v51 + 4);
      v50 = pow(0.1, ((a3 - v28) & ~((a3 - v28) >> 63))) * v52;
      goto LABEL_19;
    }
  }
}

void sub_1836CFD38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  objc_msgSend_boundsForStrokeIndex_(*(a1 + 32), a2, a2, a4, a5, a6);
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  MidX = CGRectGetMidX(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MidY = CGRectGetMidY(v50);
  v13 = *(a1 + 56);
  if ((*(a1 + 64) - v13) >= 0x11)
  {
    v14 = 0;
    v15 = 1;
    v16 = 3.40282347e38;
    while (1)
    {
      v38 = *(v13 + 16 * v15);
      v18 = (v13 + v14);
      v19 = *v18;
      v20 = v18[1];
      v21 = objc_opt_class();
      objc_msgSend_threePointsOrientationWithOrigin_pointA_pointB_(v21, v22, v23, v24, v25, v26, MidX, MidY, *&v38, v19, v20);
      if (v27 > 0.0)
      {
        break;
      }

      v28.f32[0] = v19;
      v29 = v20;
      v28.f32[1] = v29;
      v30 = vsub_f32(vcvt_f32_f64(v38), v28);
      v31 = sqrtf(vaddv_f32(vmul_f32(v30, v30)));
      if (v31 > 0.0)
      {
        v27 = v27 / v31;
      }

      v17 = -v27;
      if (v16 >= v17)
      {
        v16 = v17;
      }

      ++v15;
      v13 = *(a1 + 56);
      v14 += 16;
      if (v15 >= (*(a1 + 64) - v13) >> 4)
      {
        goto LABEL_10;
      }
    }

    *(v46 + 24) = 1;
LABEL_13:
    ++*(*(*(a1 + 48) + 8) + 24);
    goto LABEL_14;
  }

  v16 = 3.40282347e38;
LABEL_10:
  *(v46 + 24) = 1;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1836CFFC4;
  v39[3] = &unk_1E6DDC6E0;
  v32 = *(a1 + 40);
  v33 = *(a1 + 32);
  v42 = MidX;
  v43 = MidY;
  v44 = v16;
  v40 = v33;
  v41 = &v45;
  objc_msgSend_enumerateIndexesUsingBlock_(v32, v34, v39, v35, v36, v37);

  if (v46[3])
  {
    goto LABEL_13;
  }

LABEL_14:
  _Block_object_dispose(&v45, 8);
}

void sub_1836CFF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1836CFF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1836CFF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1836CFFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1836CFFC4(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_boundsForStrokeIndex_(*(a1 + 32), a2, a2, a4, a5, a6);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = objc_opt_class();
  result = objc_msgSend_distanceFromPoint_toRectangle_(v17, v18, v19, v20, v21, v22, *(a1 + 48), *(a1 + 56), v10, v12, v14, v16);
  if (v28 < *(a1 + 64))
  {
    result = objc_msgSend_pointCountForStrokeIndex_(*(a1 + 32), v24, a2, v25, v26, v27);
    if (result >= 2)
    {
      v32 = 1;
      while (1)
      {
        objc_msgSend_pointForStrokeIndex_pointIndex_(*(a1 + 32), v29, a2, v32 - 1, v30, v31);
        v34 = v33;
        v36 = v35;
        objc_msgSend_pointForStrokeIndex_pointIndex_(*(a1 + 32), v37, a2, v32, v38, v39);
        v41 = v40;
        v43 = v42;
        v44 = objc_opt_class();
        result = objc_msgSend_distanceFromPoint_toSegmentFromPoint_toPoint_(v44, v45, v46, v47, v48, v49, *(a1 + 48), *(a1 + 56), v34, v36, v41, v43);
        if (v54 < *(a1 + 64))
        {
          break;
        }

        ++v32;
        result = objc_msgSend_pointCountForStrokeIndex_(*(a1 + 32), v50, a2, v51, v52, v53);
        if (v32 >= result)
        {
          return result;
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a3 = 1;
    }
  }

  return result;
}

void *sub_1836D00FC(void *result, uint64_t a2)
{
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  v3 = *(a2 + 56);
  v2 = *(a2 + 64);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  return result;
}

void sub_1836D017C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1836D0198(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void sub_1836D04D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1836D0F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_1836E1928(a19);
  sub_18369F0F0(&a21);
  sub_18369F0F0(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_1836D1090(uint64_t a1, void *a2)
{
  v8 = a2;
  if (a1)
  {
    v9 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v3, v4, v5, v6, v7);
    v15 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v10, v11, v12, v13, v14);
    v21 = objc_msgSend_lowercaseLetterCharacterSet(MEMORY[0x1E696AB08], v16, v17, v18, v19, v20);
    v27 = objc_msgSend_uppercaseLetterCharacterSet(MEMORY[0x1E696AB08], v22, v23, v24, v25, v26);
    if (objc_msgSend_rangeOfCharacterFromSet_(v8, v28, v9, v29, v30, v31) == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (objc_msgSend_rangeOfCharacterFromSet_(v8, v32, v15, v33, v34, v35) == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (objc_msgSend_rangeOfCharacterFromSet_(v8, v36, v21, v37, v38, v39) == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (objc_msgSend_rangeOfCharacterFromSet_(v8, v40, v27, v41, v42, v43) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v44 = 0;
          }

          else
          {
            v44 = 502;
          }
        }

        else
        {
          v44 = 502;
        }
      }

      else
      {
        v44 = 2;
      }
    }

    else
    {
      v44 = 501;
    }
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

void sub_1836D14C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend__effectiveMaxRecognitionResultCount(*(a1 + 32), a2, a3, a4, a5, a6);
  v13 = (*(*(a1 + 48) + 8) - **(a1 + 48)) >> 3;
  if (v7 < v13)
  {
    v13 = objc_msgSend__effectiveMaxRecognitionResultCount(*(a1 + 32), v8, v9, v10, v11, v12);
  }

  if (objc_msgSend_shouldApplyLMRescoring(*(*(a1 + 32) + 456), v8, v9, v10, v11, v12) && *(*(a1 + 32) + 480))
  {
    v57 = 0;
    v58 = &v57;
    v59 = 0x4812000000;
    v60 = sub_1836AECEC;
    v61 = sub_1836AED10;
    v62 = &unk_183A5AC72;
    v64 = 0;
    v65 = 0;
    __p = 0;
    v24 = objc_msgSend_length(*(a1 + 40), v14, v15, v16, v17, v18) + 1;
    if (v24 > (v65 - __p) >> 2)
    {
      if (!(v24 >> 62))
      {
        operator new();
      }

      sub_1836D58DC();
    }

    if (v13)
    {
      if (!(v13 >> 61))
      {
        operator new();
      }

      sub_1836D58DC();
    }

    v26 = v58;
    v28 = v58[7];
    v27 = v58[8];
    if (v28 < v27)
    {
      *v28 = 1;
      v25 = v28 + 4;
    }

    else
    {
      v29 = v58[6];
      v30 = v28 - v29;
      v31 = (v28 - v29) >> 2;
      v32 = v31 + 1;
      if ((v31 + 1) >> 62)
      {
        sub_1836D58DC();
      }

      v33 = v27 - v29;
      if (v33 >> 1 > v32)
      {
        v32 = v33 >> 1;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v34 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        if (!(v34 >> 62))
        {
          operator new();
        }

        sub_183688F00();
      }

      v35 = (v28 - v29) >> 2;
      v36 = (4 * v31);
      v37 = (4 * v31 - 4 * v35);
      *v36 = 1;
      v25 = v36 + 1;
      memcpy(v37, v29, v30);
      v26[6] = v37;
      v26[7] = v25;
      v26[8] = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    v26[7] = v25;
    shouldReplaceInvalidTokenIDs = objc_msgSend_shouldReplaceInvalidTokenIDs(*(*(a1 + 32) + 456), v19, v20, v21, v22, v23);
    v39 = *(a1 + 40);
    v40 = *(*(a1 + 32) + 584);
    v46 = objc_msgSend_length(v39, v41, v42, v43, v44, v45);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = sub_1836D1CA4;
    v54[3] = &unk_1E6DDC708;
    v55 = v40 != 0;
    v54[4] = *(a1 + 32);
    v54[5] = &v57;
    v56 = shouldReplaceInvalidTokenIDs & 1;
    objc_msgSend_enumerateCodepointsInRange_usingBlock_(v39, v47, 0, v46, v54, v48);
    LMLanguageModelConditionalProbabilityVector();
    v49 = *(a1 + 48);
    v50 = *v49;
    v51 = v49[1];
    v52 = 126 - 2 * __clz((v51->i64 - *v49) >> 3);
    v66 = sub_1836D13F8;
    if (v51 == v50)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    sub_1836E2510(v50, v51, &v66, v53, 1);
    _Block_object_dispose(&v57, 8);
    if (__p)
    {
      v64 = __p;
      operator delete(__p);
    }
  }
}

void sub_1836D1BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  operator delete(v24);
  _Block_object_dispose(&a17, 8);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1836D1CA4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 48) != 1)
  {
    v11 = sub_1837A4260(a2, a2, a3, a4, a5, a6);
    FirstTokenIDForString = LMLexiconGetFirstTokenIDForString();
    v13 = *(*(a1 + 40) + 8);
    if (FirstTokenIDForString & 1 | ((*(a1 + 49) & 1) == 0))
    {
      v15 = v13[7];
      v14 = v13[8];
      if (v15 < v14)
      {
        *v15 = 0;
        v16 = v15 + 4;
LABEL_53:
        v13[7] = v16;

        return;
      }

      v30 = v13[6];
      v31 = v15 - v30;
      v32 = (v15 - v30) >> 2;
      v33 = v32 + 1;
      if ((v32 + 1) >> 62)
      {
        sub_1836D58DC();
      }

      v34 = v14 - v30;
      if (v34 >> 1 > v33)
      {
        v33 = v34 >> 1;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v35 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        if (!(v35 >> 62))
        {
          operator new();
        }

        sub_183688F00();
      }

      v47 = (v15 - v30) >> 2;
      v48 = (4 * v32);
      v49 = (4 * v32 - 4 * v47);
      *v48 = 0;
      v16 = v48 + 1;
      memcpy(v49, v30, v31);
      v13[6] = v49;
      v13[7] = v16;
      v13[8] = 0;
      if (!v30)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v21 = sub_1836D1090(*(a1 + 32), v11);
      v23 = v13[7];
      v22 = v13[8];
      if (v23 < v22)
      {
        *v23 = v21;
        v16 = v23 + 4;
        goto LABEL_53;
      }

      v30 = v13[6];
      v36 = v23 - v30;
      v37 = (v23 - v30) >> 2;
      v38 = v37 + 1;
      if ((v37 + 1) >> 62)
      {
        sub_1836D58DC();
      }

      v39 = v22 - v30;
      if (v39 >> 1 > v38)
      {
        v38 = v39 >> 1;
      }

      if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v40 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v38;
      }

      if (v40)
      {
        if (!(v40 >> 62))
        {
          operator new();
        }

        sub_183688F00();
      }

      v50 = (v23 - v30) >> 2;
      v51 = (4 * v37);
      v52 = (4 * v37 - 4 * v50);
      *v51 = v21;
      v16 = v51 + 1;
      memcpy(v52, v30, v36);
      v13[6] = v52;
      v13[7] = v16;
      v13[8] = 0;
      if (!v30)
      {
        goto LABEL_53;
      }
    }

    operator delete(v30);
    goto LABEL_53;
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 576);
  if (!v8)
  {
LABEL_11:
    v17 = *(*(a1 + 40) + 8);
    v19 = v17[7];
    v18 = v17[8];
    if (v19 >= v18)
    {
      v24 = v17[6];
      v25 = v19 - v24;
      v26 = (v19 - v24) >> 2;
      v27 = v26 + 1;
      if ((v26 + 1) >> 62)
      {
        goto LABEL_71;
      }

      v28 = v18 - v24;
      if (v28 >> 1 > v27)
      {
        v27 = v28 >> 1;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v29 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        if (!(v29 >> 62))
        {
          operator new();
        }

        goto LABEL_72;
      }

      v44 = (v19 - v24) >> 2;
      v45 = (4 * v26);
      v46 = (4 * v26 - 4 * v44);
      *v45 = 0;
      v20 = v45 + 1;
      memcpy(v46, v24, v25);
      v17[6] = v46;
      v17[7] = v20;
      v17[8] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v19 = 0;
      v20 = v19 + 4;
    }

    v17[7] = v20;
    return;
  }

  v9 = *(v7 + 576);
  while (1)
  {
    v10 = *(v9 + 7);
    if (v10 <= a2)
    {
      break;
    }

LABEL_4:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if (v10 < a2)
  {
    ++v9;
    goto LABEL_4;
  }

  v41 = *(*(a1 + 40) + 8);
  while (1)
  {
    while (1)
    {
      v42 = v8;
      v43 = *(v8 + 7);
      if (v43 <= a2)
      {
        break;
      }

      v8 = *v42;
      if (!*v42)
      {
        goto LABEL_56;
      }
    }

    if (v43 >= a2)
    {
      break;
    }

    v8 = v42[1];
    if (!v8)
    {
LABEL_56:
      operator new();
    }
  }

  v54 = *(v42 + 8);
  v56 = v41[7];
  v55 = v41[8];
  if (v56 < v55)
  {
    *v56 = v54;
    v53 = v56 + 4;
    goto LABEL_70;
  }

  v57 = v41[6];
  v58 = v56 - v57;
  v59 = (v56 - v57) >> 2;
  v60 = v59 + 1;
  if ((v59 + 1) >> 62)
  {
LABEL_71:
    sub_1836D58DC();
  }

  v61 = v55 - v57;
  if (v61 >> 1 > v60)
  {
    v60 = v61 >> 1;
  }

  if (v61 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v62 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v62 = v60;
  }

  if (v62)
  {
    if (!(v62 >> 62))
    {
      operator new();
    }

LABEL_72:
    sub_183688F00();
  }

  v63 = (v56 - v57) >> 2;
  v64 = (4 * v59);
  v65 = (4 * v59 - 4 * v63);
  *v64 = v54;
  v53 = v64 + 1;
  memcpy(v65, v57, v58);
  v41[6] = v65;
  v41[7] = v53;
  v41[8] = 0;
  if (v57)
  {
    operator delete(v57);
  }

LABEL_70:
  v41[7] = v53;
}

void sub_1836D2300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1836D2318(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

__n128 sub_1836D2328(uint64_t a1)
{
  result = *(*(a1 + 32) + 496);
  *(*(*(a1 + 40) + 8) + 48) = result;
  return result;
}

__n128 sub_1836D23B0(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 496) = result;
  return result;
}

void sub_1836D2434(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v100 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (*(v6 + 216) != v7)
  {
    v9 = objc_msgSend_mode(*(v6 + 456), a2, a3, a4, a5, a6);
    v13 = objc_msgSend_defaultLocaleForRecognitionType_withMode_(CHRecognizerConfiguration, v10, v7, v9, v11, v12);
    v19 = objc_msgSend_mode(*(*(a1 + 32) + 456), v14, v15, v16, v17, v18);
    if (objc_msgSend_isLocaleSupported_withMode_(CHRecognizerConfiguration, v20, v13, v19, v21, v22))
    {
      v23 = [CHRecognizerConfiguration alloc];
      v29 = objc_msgSend_mode(*(*(a1 + 32) + 456), v24, v25, v26, v27, v28);
      v35 = objc_msgSend_contentType(*(*(a1 + 32) + 456), v30, v31, v32, v33, v34);
      v41 = objc_msgSend_autoCapitalizationMode(*(*(a1 + 32) + 456), v36, v37, v38, v39, v40);
      v47 = objc_msgSend_autoCorrectionMode(*(*(a1 + 32) + 456), v42, v43, v44, v45, v46);
      v53 = objc_msgSend_baseWritingDirection(*(*(a1 + 32) + 456), v48, v49, v50, v51, v52);
      v59 = objc_msgSend_enableCachingIfAvailable(*(*(a1 + 32) + 456), v54, v55, v56, v57, v58);
      v65 = objc_msgSend_enableGen2ModelIfAvailable(*(*(a1 + 32) + 456), v60, v61, v62, v63, v64);
      BYTE2(v95) = objc_msgSend_enableGen2CharacterLMIfAvailable(*(*(a1 + 32) + 456), v66, v67, v68, v69, v70);
      BYTE1(v95) = v65;
      LOBYTE(v95) = v59;
      v72 = objc_msgSend_initWithMode_locale_contentType_autoCapitalizationMode_autoCorrectionMode_baseWritingDirection_enableCachingIfAvailable_enableGen2ModelIfAvailable_enableGen2CharacterLMIfAvailable_(v23, v71, v29, v13, v35, v41, v47, v53, v95);
      objc_msgSend__setConfiguration_(*(a1 + 32), v73, v72, v74, v75, v76);
      *(*(a1 + 32) + 216) = *(a1 + 40);
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v77 = qword_1EA84DC58;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        v83 = objc_msgSend_mode(*(*(a1 + 32) + 456), v78, v79, v80, v81, v82);
        v88 = objc_msgSend_stringForRecognitionMode_(CHRecognizerConfiguration, v84, v83, v85, v86, v87);
        v94 = objc_msgSend_localeIdentifier(v13, v89, v90, v91, v92, v93);
        *buf = 138412546;
        v97 = v88;
        v98 = 2112;
        v99 = v94;
        _os_log_impl(&dword_18366B000, v77, OS_LOG_TYPE_ERROR, "Configuration for recognizer with mode=%@ and locale=%@ is not supported.", buf, 0x16u);
      }
    }
  }
}

void sub_1836D27B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1836D27C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_mode(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1836D2874(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v96 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  if (v7 != objc_msgSend_mode(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6))
  {
    v13 = objc_msgSend_locale(*(*(a1 + 32) + 456), v8, v9, v10, v11, v12);
    isLocaleSupported_withMode = objc_msgSend_isLocaleSupported_withMode_(CHRecognizerConfiguration, v14, v13, *(a1 + 40), v15, v16);

    if (isLocaleSupported_withMode)
    {
      v18 = [CHRecognizerConfiguration alloc];
      v19 = *(a1 + 40);
      v25 = objc_msgSend_locale(*(*(a1 + 32) + 456), v20, v21, v22, v23, v24);
      v31 = objc_msgSend_contentType(*(*(a1 + 32) + 456), v26, v27, v28, v29, v30);
      v37 = objc_msgSend_autoCapitalizationMode(*(*(a1 + 32) + 456), v32, v33, v34, v35, v36);
      v43 = objc_msgSend_autoCorrectionMode(*(*(a1 + 32) + 456), v38, v39, v40, v41, v42);
      v49 = objc_msgSend_baseWritingDirection(*(*(a1 + 32) + 456), v44, v45, v46, v47, v48);
      v55 = objc_msgSend_enableCachingIfAvailable(*(*(a1 + 32) + 456), v50, v51, v52, v53, v54);
      v61 = objc_msgSend_enableGen2ModelIfAvailable(*(*(a1 + 32) + 456), v56, v57, v58, v59, v60);
      BYTE2(v90) = objc_msgSend_enableGen2CharacterLMIfAvailable(*(*(a1 + 32) + 456), v62, v63, v64, v65, v66);
      BYTE1(v90) = v61;
      LOBYTE(v90) = v55;
      v91 = objc_msgSend_initWithMode_locale_contentType_autoCapitalizationMode_autoCorrectionMode_baseWritingDirection_enableCachingIfAvailable_enableGen2ModelIfAvailable_enableGen2CharacterLMIfAvailable_(v18, v67, v19, v25, v31, v37, v43, v49, v90);

      objc_msgSend__setConfiguration_(*(a1 + 32), v68, v91, v69, v70, v71);
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v72 = qword_1EA84DC58;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v77 = objc_msgSend_stringForRecognitionMode_(CHRecognizerConfiguration, v73, *(a1 + 40), v74, v75, v76);
        v83 = objc_msgSend_locale(*(*(a1 + 32) + 456), v78, v79, v80, v81, v82);
        v89 = objc_msgSend_localeIdentifier(v83, v84, v85, v86, v87, v88);
        *buf = 138412546;
        v93 = v77;
        v94 = 2112;
        v95 = v89;
        _os_log_impl(&dword_18366B000, v72, OS_LOG_TYPE_ERROR, "Configuration for recognizer with mode=%@ and locale=%@ is not supported.", buf, 0x16u);
      }
    }
  }
}

void sub_1836D2DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1836D2DEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_locale(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1836D2EE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v101 = *MEMORY[0x1E69E9840];
  v94 = objc_msgSend_locale(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6);
  isEqual = objc_msgSend_isEqual_(v94, v7, *(a1 + 40), v8, v9, v10);

  if ((isEqual & 1) == 0)
  {
    v17 = *(a1 + 40);
    v18 = objc_msgSend_mode(*(*(a1 + 32) + 456), v12, v13, v14, v15, v16);
    if (objc_msgSend_isLocaleSupported_withMode_(CHRecognizerConfiguration, v19, v17, v18, v20, v21))
    {
      v22 = [CHRecognizerConfiguration alloc];
      v28 = objc_msgSend_mode(*(*(a1 + 32) + 456), v23, v24, v25, v26, v27);
      v29 = *(a1 + 40);
      v35 = objc_msgSend_contentType(*(*(a1 + 32) + 456), v30, v31, v32, v33, v34);
      v41 = objc_msgSend_autoCapitalizationMode(*(*(a1 + 32) + 456), v36, v37, v38, v39, v40);
      v47 = objc_msgSend_autoCorrectionMode(*(*(a1 + 32) + 456), v42, v43, v44, v45, v46);
      v53 = objc_msgSend_baseWritingDirection(*(*(a1 + 32) + 456), v48, v49, v50, v51, v52);
      v59 = objc_msgSend_enableCachingIfAvailable(*(*(a1 + 32) + 456), v54, v55, v56, v57, v58);
      v65 = objc_msgSend_enableGen2ModelIfAvailable(*(*(a1 + 32) + 456), v60, v61, v62, v63, v64);
      BYTE2(v93) = objc_msgSend_enableGen2CharacterLMIfAvailable(*(*(a1 + 32) + 456), v66, v67, v68, v69, v70);
      BYTE1(v93) = v65;
      LOBYTE(v93) = v59;
      v95 = objc_msgSend_initWithMode_locale_contentType_autoCapitalizationMode_autoCorrectionMode_baseWritingDirection_enableCachingIfAvailable_enableGen2ModelIfAvailable_enableGen2CharacterLMIfAvailable_(v22, v71, v28, v29, v35, v41, v47, v53, v93);
      objc_msgSend__setConfiguration_(*(a1 + 32), v72, v95, v73, v74, v75);
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v96 = qword_1EA84DC58;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        v81 = objc_msgSend_mode(*(*(a1 + 32) + 456), v76, v77, v78, v79, v80);
        v86 = objc_msgSend_stringForRecognitionMode_(CHRecognizerConfiguration, v82, v81, v83, v84, v85);
        v92 = objc_msgSend_localeIdentifier(*(a1 + 40), v87, v88, v89, v90, v91);
        *buf = 138412546;
        v98 = v86;
        v99 = 2112;
        v100 = v92;
        _os_log_impl(&dword_18366B000, v96, OS_LOG_TYPE_ERROR, "Configuration for recognizer with mode=%@ and locale=%@ is not supported.", buf, 0x16u);
      }
    }
  }
}

void sub_1836D328C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 232);
  v4 = (v2 + 232);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

void sub_1836D3350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1836D3368(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_contentType(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1836D3414(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (objc_msgSend_contentType(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6) != *(a1 + 40))
  {
    v7 = [CHRecognizerConfiguration alloc];
    v13 = objc_msgSend_mode(*(*(a1 + 32) + 456), v8, v9, v10, v11, v12);
    v19 = objc_msgSend_locale(*(*(a1 + 32) + 456), v14, v15, v16, v17, v18);
    v20 = *(a1 + 40);
    v26 = objc_msgSend_autoCapitalizationMode(*(*(a1 + 32) + 456), v21, v22, v23, v24, v25);
    v32 = objc_msgSend_autoCorrectionMode(*(*(a1 + 32) + 456), v27, v28, v29, v30, v31);
    v38 = objc_msgSend_baseWritingDirection(*(*(a1 + 32) + 456), v33, v34, v35, v36, v37);
    v44 = objc_msgSend_enableCachingIfAvailable(*(*(a1 + 32) + 456), v39, v40, v41, v42, v43);
    v50 = objc_msgSend_enableGen2ModelIfAvailable(*(*(a1 + 32) + 456), v45, v46, v47, v48, v49);
    BYTE2(v61) = objc_msgSend_enableGen2CharacterLMIfAvailable(*(*(a1 + 32) + 456), v51, v52, v53, v54, v55);
    BYTE1(v61) = v50;
    LOBYTE(v61) = v44;
    v62 = objc_msgSend_initWithMode_locale_contentType_autoCapitalizationMode_autoCorrectionMode_baseWritingDirection_enableCachingIfAvailable_enableGen2ModelIfAvailable_enableGen2CharacterLMIfAvailable_(v7, v56, v13, v19, v20, v26, v32, v38, v61);

    objc_msgSend__setConfiguration_(*(a1 + 32), v57, v62, v58, v59, v60);
  }
}

void sub_1836D3644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1836D365C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_autoCapitalizationMode(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1836D3708(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (objc_msgSend_autoCapitalizationMode(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6) != *(a1 + 40))
  {
    v7 = [CHRecognizerConfiguration alloc];
    v13 = objc_msgSend_mode(*(*(a1 + 32) + 456), v8, v9, v10, v11, v12);
    v19 = objc_msgSend_locale(*(*(a1 + 32) + 456), v14, v15, v16, v17, v18);
    v25 = objc_msgSend_contentType(*(*(a1 + 32) + 456), v20, v21, v22, v23, v24);
    v26 = *(a1 + 40);
    v32 = objc_msgSend_autoCorrectionMode(*(*(a1 + 32) + 456), v27, v28, v29, v30, v31);
    v38 = objc_msgSend_baseWritingDirection(*(*(a1 + 32) + 456), v33, v34, v35, v36, v37);
    v44 = objc_msgSend_enableCachingIfAvailable(*(*(a1 + 32) + 456), v39, v40, v41, v42, v43);
    v50 = objc_msgSend_enableGen2ModelIfAvailable(*(*(a1 + 32) + 456), v45, v46, v47, v48, v49);
    BYTE2(v61) = objc_msgSend_enableGen2CharacterLMIfAvailable(*(*(a1 + 32) + 456), v51, v52, v53, v54, v55);
    BYTE1(v61) = v50;
    LOBYTE(v61) = v44;
    v62 = objc_msgSend_initWithMode_locale_contentType_autoCapitalizationMode_autoCorrectionMode_baseWritingDirection_enableCachingIfAvailable_enableGen2ModelIfAvailable_enableGen2CharacterLMIfAvailable_(v7, v56, v13, v19, v25, v26, v32, v38, v61);

    objc_msgSend__setConfiguration_(*(a1 + 32), v57, v62, v58, v59, v60);
  }
}

void sub_1836D3938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1836D3950(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_autoCorrectionMode(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1836D39FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (objc_msgSend_autoCorrectionMode(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6) != *(a1 + 40))
  {
    v7 = [CHRecognizerConfiguration alloc];
    v13 = objc_msgSend_mode(*(*(a1 + 32) + 456), v8, v9, v10, v11, v12);
    v19 = objc_msgSend_locale(*(*(a1 + 32) + 456), v14, v15, v16, v17, v18);
    v25 = objc_msgSend_contentType(*(*(a1 + 32) + 456), v20, v21, v22, v23, v24);
    v31 = objc_msgSend_autoCapitalizationMode(*(*(a1 + 32) + 456), v26, v27, v28, v29, v30);
    v32 = *(a1 + 40);
    v38 = objc_msgSend_baseWritingDirection(*(*(a1 + 32) + 456), v33, v34, v35, v36, v37);
    v44 = objc_msgSend_enableCachingIfAvailable(*(*(a1 + 32) + 456), v39, v40, v41, v42, v43);
    v50 = objc_msgSend_enableGen2ModelIfAvailable(*(*(a1 + 32) + 456), v45, v46, v47, v48, v49);
    BYTE2(v61) = objc_msgSend_enableGen2CharacterLMIfAvailable(*(*(a1 + 32) + 456), v51, v52, v53, v54, v55);
    BYTE1(v61) = v50;
    LOBYTE(v61) = v44;
    v62 = objc_msgSend_initWithMode_locale_contentType_autoCapitalizationMode_autoCorrectionMode_baseWritingDirection_enableCachingIfAvailable_enableGen2ModelIfAvailable_enableGen2CharacterLMIfAvailable_(v7, v56, v13, v19, v25, v31, v32, v38, v61);

    objc_msgSend__setConfiguration_(*(a1 + 32), v57, v62, v58, v59, v60);
  }
}

void sub_1836D3C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1836D3C44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_baseWritingDirection(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1836D3CEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (objc_msgSend_baseWritingDirection(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6) != *(a1 + 40))
  {
    v7 = [CHRecognizerConfiguration alloc];
    v13 = objc_msgSend_mode(*(*(a1 + 32) + 456), v8, v9, v10, v11, v12);
    v19 = objc_msgSend_locale(*(*(a1 + 32) + 456), v14, v15, v16, v17, v18);
    v25 = objc_msgSend_contentType(*(*(a1 + 32) + 456), v20, v21, v22, v23, v24);
    v31 = objc_msgSend_autoCapitalizationMode(*(*(a1 + 32) + 456), v26, v27, v28, v29, v30);
    v37 = objc_msgSend_autoCorrectionMode(*(*(a1 + 32) + 456), v32, v33, v34, v35, v36);
    v38 = *(a1 + 40);
    v44 = objc_msgSend_enableCachingIfAvailable(*(*(a1 + 32) + 456), v39, v40, v41, v42, v43);
    v50 = objc_msgSend_enableGen2ModelIfAvailable(*(*(a1 + 32) + 456), v45, v46, v47, v48, v49);
    BYTE2(v61) = objc_msgSend_enableGen2CharacterLMIfAvailable(*(*(a1 + 32) + 456), v51, v52, v53, v54, v55);
    BYTE1(v61) = v50;
    LOBYTE(v61) = v44;
    v62 = objc_msgSend_initWithMode_locale_contentType_autoCapitalizationMode_autoCorrectionMode_baseWritingDirection_enableCachingIfAvailable_enableGen2ModelIfAvailable_enableGen2CharacterLMIfAvailable_(v7, v56, v13, v19, v25, v31, v37, v38, v61);

    objc_msgSend__setConfiguration_(*(a1 + 32), v57, v62, v58, v59, v60);
  }
}

void sub_1836D3F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1836D3F30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_enableCachingIfAvailable(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1836D3FDC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 40) != objc_msgSend_enableCachingIfAvailable(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6))
  {
    v7 = [CHRecognizerConfiguration alloc];
    v13 = objc_msgSend_mode(*(*(a1 + 32) + 456), v8, v9, v10, v11, v12);
    v19 = objc_msgSend_locale(*(*(a1 + 32) + 456), v14, v15, v16, v17, v18);
    v25 = objc_msgSend_contentType(*(*(a1 + 32) + 456), v20, v21, v22, v23, v24);
    v31 = objc_msgSend_autoCapitalizationMode(*(*(a1 + 32) + 456), v26, v27, v28, v29, v30);
    v37 = objc_msgSend_autoCorrectionMode(*(*(a1 + 32) + 456), v32, v33, v34, v35, v36);
    v43 = objc_msgSend_baseWritingDirection(*(*(a1 + 32) + 456), v38, v39, v40, v41, v42);
    v44 = *(a1 + 40);
    v50 = objc_msgSend_enableGen2ModelIfAvailable(*(*(a1 + 32) + 456), v45, v46, v47, v48, v49);
    BYTE2(v61) = objc_msgSend_enableGen2CharacterLMIfAvailable(*(*(a1 + 32) + 456), v51, v52, v53, v54, v55);
    BYTE1(v61) = v50;
    LOBYTE(v61) = v44;
    v62 = objc_msgSend_initWithMode_locale_contentType_autoCapitalizationMode_autoCorrectionMode_baseWritingDirection_enableCachingIfAvailable_enableGen2ModelIfAvailable_enableGen2CharacterLMIfAvailable_(v7, v56, v13, v19, v25, v31, v37, v43, v61);

    objc_msgSend__setConfiguration_(*(a1 + 32), v57, v62, v58, v59, v60);
  }
}

void sub_1836D420C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1836D4224(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_enableGen2ModelIfAvailable(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1836D42D0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 40) != objc_msgSend_enableGen2ModelIfAvailable(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6))
  {
    v7 = [CHRecognizerConfiguration alloc];
    v13 = objc_msgSend_mode(*(*(a1 + 32) + 456), v8, v9, v10, v11, v12);
    v19 = objc_msgSend_locale(*(*(a1 + 32) + 456), v14, v15, v16, v17, v18);
    v25 = objc_msgSend_contentType(*(*(a1 + 32) + 456), v20, v21, v22, v23, v24);
    v31 = objc_msgSend_autoCapitalizationMode(*(*(a1 + 32) + 456), v26, v27, v28, v29, v30);
    v37 = objc_msgSend_autoCorrectionMode(*(*(a1 + 32) + 456), v32, v33, v34, v35, v36);
    v43 = objc_msgSend_baseWritingDirection(*(*(a1 + 32) + 456), v38, v39, v40, v41, v42);
    v49 = objc_msgSend_enableCachingIfAvailable(*(*(a1 + 32) + 456), v44, v45, v46, v47, v48);
    v50 = *(a1 + 40);
    BYTE2(v61) = objc_msgSend_enableGen2CharacterLMIfAvailable(*(*(a1 + 32) + 456), v51, v52, v53, v54, v55);
    BYTE1(v61) = v50;
    LOBYTE(v61) = v49;
    v62 = objc_msgSend_initWithMode_locale_contentType_autoCapitalizationMode_autoCorrectionMode_baseWritingDirection_enableCachingIfAvailable_enableGen2ModelIfAvailable_enableGen2CharacterLMIfAvailable_(v7, v56, v13, v19, v25, v31, v37, v43, v61);

    objc_msgSend__setConfiguration_(*(a1 + 32), v57, v62, v58, v59, v60);
  }
}

void sub_1836D4500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1836D4518(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_enableGen2CharacterLMIfAvailable(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1836D45C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 40) != objc_msgSend_enableGen2CharacterLMIfAvailable(*(*(a1 + 32) + 456), a2, a3, a4, a5, a6))
  {
    v7 = [CHRecognizerConfiguration alloc];
    v13 = objc_msgSend_mode(*(*(a1 + 32) + 456), v8, v9, v10, v11, v12);
    v19 = objc_msgSend_locale(*(*(a1 + 32) + 456), v14, v15, v16, v17, v18);
    v25 = objc_msgSend_contentType(*(*(a1 + 32) + 456), v20, v21, v22, v23, v24);
    v31 = objc_msgSend_autoCapitalizationMode(*(*(a1 + 32) + 456), v26, v27, v28, v29, v30);
    v37 = objc_msgSend_autoCorrectionMode(*(*(a1 + 32) + 456), v32, v33, v34, v35, v36);
    v43 = objc_msgSend_baseWritingDirection(*(*(a1 + 32) + 456), v38, v39, v40, v41, v42);
    v49 = objc_msgSend_enableCachingIfAvailable(*(*(a1 + 32) + 456), v44, v45, v46, v47, v48);
    v55 = objc_msgSend_enableGen2ModelIfAvailable(*(*(a1 + 32) + 456), v50, v51, v52, v53, v54);
    BYTE2(v61) = *(a1 + 40);
    BYTE1(v61) = v55;
    LOBYTE(v61) = v49;
    v62 = objc_msgSend_initWithMode_locale_contentType_autoCapitalizationMode_autoCorrectionMode_baseWritingDirection_enableCachingIfAvailable_enableGen2ModelIfAvailable_enableGen2CharacterLMIfAvailable_(v7, v56, v13, v19, v25, v31, v37, v43, v61);

    objc_msgSend__setConfiguration_(*(a1 + 32), v57, v62, v58, v59, v60);
  }
}

void sub_1836D4D20(uint64_t a1)
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

void sub_1836D4E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1836D4E58(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_1836D4EB0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN15CoreHandwritingL23make_shared_from_createEPvEUlS0_E_")
  {
    if (((v2 & "ZN15CoreHandwritingL23make_shared_from_createEPvEUlS0_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN15CoreHandwritingL23make_shared_from_createEPvEUlS0_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN15CoreHandwritingL23make_shared_from_createEPvEUlS0_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_1836D4F10(void *a1)
{
  *a1 = &unk_1EF1BBAF8;
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x1865E5EC0);
}

double sub_1836D5040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 24);
  if (v5 != *(a1 + 32))
  {
    v6 = (*(**v5 + 16))();
    v10 = v6;
    v7 = *(a4 + 24);
    if (v7 < *(a4 + 32))
    {
      *v7 = v6;
      operator new();
    }

    sub_1836D5698((a4 + 16), &v10);
  }

  v8 = *(a1 + 16);
  if (v8 <= 0.0)
  {
    v8 = 0.0;
  }

  result = *(a1 + 8) * v8;
  *(a4 + 8) = result;
  return result;
}

void sub_1836D51BC(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(v1 + 24) = v2;
  _Unwind_Resume(exception_object);
}

double sub_1836D5200(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v5 == v6)
  {
    v8 = 0.0;
  }

  else
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      v9 = *v5++;
      v8 = v8 + (*(*v9 + 48))(v9, *(*(a2 + 16) + v7));
      v7 += 16;
    }

    while (v5 != v6);
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (v11 <= v8 + v4 / v10)
  {
    v11 = v8 + v4 / v10;
  }

  *(a2 + 8) = v10 * v11;
  return v8;
}

void *sub_1836D52D0(void *a1)
{
  *a1 = &unk_1EF1BBB78;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
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
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1836D53A0(void *a1)
{
  *a1 = &unk_1EF1BBB78;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
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
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x1865E5EC0);
}

void sub_1836D5490(uint64_t a1)
{
  v2 = *(a1 + 16);
  for (i = *(a1 + 24); i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  *(a1 + 24) = v2;
}

uint64_t sub_1836D552C(uint64_t result, uint64_t a2, void *a3)
{
  if (result != a2)
  {
    v4 = (*(**result + 16))();
    v6 = v4;
    v5 = a3[3];
    if (v5 < a3[4])
    {
      *v5 = v4;
      operator new();
    }

    sub_1836D5698(a3 + 2, &v6);
  }

  return result;
}

void sub_1836D565C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(v1 + 24) = v3;
  _Unwind_Resume(exception_object);
}

void sub_1836D5698(void *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 60))
  {
    v4 = a1[2] - *a1;
    if (v4 >> 3 > v3)
    {
      v3 = v4 >> 3;
    }

    if (v4 >= 0x7FFFFFFFFFFFFFF0)
    {
      v5 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v3;
    }

    if (v5)
    {
      if (!(v5 >> 60))
      {
        operator new();
      }

      sub_183688F00();
    }

    *(16 * v2) = *a2;
    operator new();
  }

  sub_1836D58DC();
}

void sub_1836D57D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1836D58F4(va);
  _Unwind_Resume(a1);
}

void sub_1836D5814(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_1836D584C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1836D587C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN15CoreRecognition7decoder9BaseStateEE27__shared_ptr_default_deleteIS3_S3_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN15CoreRecognition7decoder9BaseStateEE27__shared_ptr_default_deleteIS3_S3_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN15CoreRecognition7decoder9BaseStateEE27__shared_ptr_default_deleteIS3_S3_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN15CoreRecognition7decoder9BaseStateEE27__shared_ptr_default_deleteIS3_S3_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1836D58F4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    v4 = *(i - 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_1836D59F0(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*a1 + 72))(a1, a5);
  *(a4 + 20) = v9;
  if (a3 == -1)
  {
    *(a4 + 16) = 0;
    *(a4 + 8) = 0;
    return 0.0;
  }

  else if ((*(*a1 + 64))(a1, v9))
  {
    *(a4 + 20) = *(a2 + 20);
    *(a4 + 16) = *(a2 + 16);
    *(a4 + 8) = 0;
    return 0.0;
  }

  else if (*(a2 + 16) & 1) != 0 || ((*(*a1 + 56))(a1, *(a2 + 20), *(a4 + 20)))
  {
    *(a4 + 16) = 1;
    v11 = a1[6];
    if (a1[2] > v11)
    {
      v11 = a1[2];
    }

    result = a1[1] * v11;
    *(a4 + 8) = result;
  }

  else
  {
    return *(a4 + 8);
  }

  return result;
}

uint64_t sub_1836D5B3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 24);
  v7 = (*(a1 + 32) - v6) >> 2;
  if (v7 > a2)
  {
    return *(v6 + 4 * a2);
  }

  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Label=%lu is out-of-bounds for labelToScriptMap of size=%lu", a4, a5, a6, a2, v7);
  CVNLPLogGeneralFault();

  return 0;
}

void sub_1836D5BDC(void *a1)
{
  *a1 = &unk_1EF1BBCC0;
  a1[8] = &unk_1EF1BBD10;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  a1[2] = &unk_1EF1BBAF8;
  v3 = a1[5];
  if (v3)
  {
    v4 = a1[6];
    v5 = a1[5];
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = a1[5];
    }

    a1[6] = v3;
    operator delete(v5);
  }

  JUMPOUT(0x1865E5EC0);
}

void sub_1836D9D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  sub_1836DAAB8(v36 - 256);
  sub_1836DAD44(v35);
  sub_1836DAE54((v34 + 24));
  sub_1836DB088(a34);
  _Unwind_Resume(a1);
}

void sub_1836D9DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void ***a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1836CC2F0(a10);
  sub_1836DBB00(&a33);
  _Unwind_Resume(a1);
}

void sub_1836D9DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void ***a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1836CC2F0(a10);
  sub_1836DBB00(&a33);
  _Unwind_Resume(a1);
}

void sub_1836D9DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void ***a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1836DA88C((v34 - 256));
  if (v33)
  {
    operator delete(v33);
  }

  sub_1836CC2F0(a10);
  sub_1836DBB00(&a33);
  _Unwind_Resume(a1);
}

void sub_1836D9E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  sub_1836DAF90(&a44);
  if (v44)
  {
    operator delete(v44);
  }

  sub_1836DBB00(&a33);
  _Unwind_Resume(a1);
}

void sub_1836DA0D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v5 = *(a2 + 32);
  *(a4 + 24) = v5 + *(a2 + 48);
  *(a4 + 32) = v5;
  memset(&v87[8], 0, 32);
  *__p = 0u;
  v86 = 0;
  *v87 = v5;
  v6 = (a2 + 56);
  if (!*(a2 + 56))
  {
    goto LABEL_108;
  }

  v8 = a2;
  v10 = 1;
  do
  {
    ++*&v87[32];
    v16 = (*(*a1 + 48))(a1, *v8);
    v17 = v16;
    if (v16 == 2)
    {
      if (__p[0] != __p[1])
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v16)
      {
        if (v16 == 1)
        {
          v18 = __p[1];
          if (__p[1] >= v86)
          {
            v25 = __p[0];
            v26 = __p[1] - __p[0];
            v27 = (__p[1] - __p[0]) >> 3;
            v28 = v27 + 1;
            if ((v27 + 1) >> 61)
            {
              goto LABEL_115;
            }

            v29 = v86 - __p[0];
            if ((v86 - __p[0]) >> 2 > v28)
            {
              v28 = v29 >> 2;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFF8)
            {
              v30 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              if (!(v30 >> 61))
              {
                operator new();
              }

              goto LABEL_113;
            }

            v37 = (8 * v27);
            *v37 = *v8;
            v19 = v37 + 1;
            memcpy(0, v25, v26);
            __p[0] = 0;
            v86 = 0;
            if (v25)
            {
              operator delete(v25);
            }

            v4 = a4;
          }

          else
          {
            *__p[1] = *v8;
            v19 = v18 + 8;
          }

          __p[1] = v19;
          v20 = v8[1];
          *&v87[16] = v20;
          *&v87[24] = a3;
          v21 = *(v4 + 8);
          if (v21 >= *(v4 + 16))
          {
LABEL_45:
            v38 = sub_1836DB894(v4, __p);
            v22 = __p[0];
            *(a4 + 8) = v38;
            __p[1] = v22;
            *&v87[32] = 0;
            if (v17 == 2)
            {
              goto LABEL_46;
            }

LABEL_19:
            v11 = *v6;
            if (!*v6)
            {
              v12 = 0.0;
              goto LABEL_5;
            }

LABEL_4:
            v12 = (*(*a1 + 56))(a1, v11, v10 & 1);
LABEL_5:
            v13 = v8[5];
            *v87 = v12;
            *&v87[8] = v13;
            a3 = v20;
            v4 = a4;
            goto LABEL_6;
          }
        }

        else
        {
LABEL_14:
          v20 = v8[1] + 1;
          *&v87[16] = v20;
          *&v87[24] = a3;
          v21 = *(v4 + 8);
          if (v21 >= *(v4 + 16))
          {
            goto LABEL_45;
          }
        }

        *v21 = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        v22 = __p[0];
        if (__p[1] != __p[0])
        {
          if (((__p[1] - __p[0]) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1836D58DC();
        }

        *(v21 + 24) = *v87;
        *(v21 + 40) = *&v87[16];
        *(v21 + 56) = *&v87[32];
        *(a4 + 8) = v21 + 64;
        __p[1] = v22;
        *&v87[32] = 0;
        if (v17 != 2)
        {
          goto LABEL_19;
        }

LABEL_46:
        if (v22 >= v86)
        {
          v39 = (v86 - v22) >> 2;
          if (v39 <= 1)
          {
            v39 = 1;
          }

          if ((v86 - v22) >= 0x7FFFFFFFFFFFFFF8)
          {
            v40 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v39;
          }

          if (!(v40 >> 61))
          {
            operator new();
          }

          goto LABEL_113;
        }

        *v22 = *v8;
        __p[1] = v22 + 1;
        v11 = v8;
        goto LABEL_4;
      }

      v23 = __p[1];
      if (__p[1] >= v86)
      {
        v31 = __p[0];
        v32 = __p[1] - __p[0];
        v33 = (__p[1] - __p[0]) >> 3;
        v34 = v33 + 1;
        if ((v33 + 1) >> 61)
        {
LABEL_115:
          sub_1836D58DC();
        }

        v35 = v86 - __p[0];
        if ((v86 - __p[0]) >> 2 > v34)
        {
          v34 = v35 >> 2;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v34;
        }

        if (v36)
        {
          if (!(v36 >> 61))
          {
            operator new();
          }

LABEL_113:
          sub_183688F00();
        }

        v41 = (8 * v33);
        *v41 = *v8;
        v24 = v41 + 1;
        memcpy(0, v31, v32);
        __p[0] = 0;
        v86 = 0;
        if (v31)
        {
          operator delete(v31);
        }

        v4 = a4;
      }

      else
      {
        *__p[1] = *v8;
        v24 = v23 + 8;
      }

      __p[1] = v24;
    }

LABEL_6:
    v10 = 0;
    v8 = *v6;
    v14 = *v6;
    v15 = v14[7];
    v6 = v14 + 7;
  }

  while (v15);
  v43 = __p[0];
  v42 = __p[1];
  if (__p[0] == __p[1])
  {
    v46 = *v4;
    v45 = *(v4 + 8);
    if (*v4 != v45)
    {
      *(v45 - 3) = 0;
    }
  }

  else
  {
    *&v87[16] = 0;
    *&v87[24] = a3;
    v44 = *(v4 + 8);
    if (v44 < *(v4 + 16))
    {
      *v44 = 0;
      v44[1] = 0;
      v44[2] = 0;
      if (v42 - v43 >= 0)
      {
        operator new();
      }

      sub_1836D58DC();
    }

    v45 = sub_1836DB894(v4, __p);
    *(v4 + 8) = v45;
    v46 = *v4;
  }

  if (v46 != v45)
  {
    v47 = v46 + 8;
    v48 = v46;
    do
    {
      if (v47 == v45)
      {
        break;
      }

      *(v48 + 3) = *(v48 + 3) - *(v47 + 3);
      v48 += 8;
      v47 += 8;
    }

    while (v48 != v45);
  }

  if (v46 != v45)
  {
    v49 = v45 - 8;
    if (v45 - 8 > v46)
    {
      do
      {
        v50 = *v46;
        v51 = *(v46 + 1);
        v46[1] = 0;
        v46[2] = 0;
        *v46 = 0;
        v88 = *(v46 + 3);
        v52 = *(v46 + 5);
        v53 = v46[7];
        v54 = v49[2];
        *v46 = *v49;
        v46[2] = v54;
        v49[1] = 0;
        v49[2] = 0;
        *v49 = 0;
        *(v46 + 3) = *(v49 + 3);
        v46[5] = v49[5];
        *(v46 + 3) = *(v49 + 3);
        v55 = *v49;
        if (*v49)
        {
          v49[1] = v55;
          v82 = v52;
          v84 = v51;
          operator delete(v55);
          v52 = v82;
          v51 = v84;
        }

        *v49 = v50;
        *(v49 + 1) = v51;
        *(v49 + 3) = v88;
        *(v49 + 5) = v52;
        v49[7] = v53;
        v46 += 8;
        v49 -= 8;
      }

      while (v46 < v49);
      v46 = *v4;
      v45 = *(v4 + 8);
    }
  }

  for (; v46 != v45; v46 += 8)
  {
    v56 = *v46;
    v57 = v46[1];
    v58 = (v57 - 8);
    if (*v46 != v57 && v58 > v56)
    {
      v60 = v57 - 1;
      v61 = &v56->u64[1];
      v62 = &v57[-1] <= &v56->u64[1] ? &v56->u64[1] : &v57[-1];
      v63 = v62 - 8 - v56;
      v64 = v63 ? 2 : 1;
      v65 = v64 + ((v63 - (v63 != 0)) >> 4);
      if (v65 < 0xA)
      {
        goto LABEL_104;
      }

      if (v60 <= v61)
      {
        i8 = &v56->i8[8];
      }

      else
      {
        i8 = v57[-1].i8;
      }

      v67 = (i8 - 8);
      if (v67 == v56)
      {
        v68 = *v46;
      }

      else
      {
        v68 = &v56->i8[1];
      }

      v69 = v67 == v56;
      v70 = (v67 - v68) >> 4;
      if (!v69)
      {
        ++v70;
      }

      if (v56 < v57 && v57 - 8 * v70 - 8 < v61 + 8 * v70)
      {
        goto LABEL_104;
      }

      v71 = 8 * (v65 & 0x1FFFFFFFFFFFFFFCLL);
      v58 = (v58 - v71);
      v72 = (v56 + v71);
      v73 = v56 + 1;
      v74 = v65 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v75 = v73[-1];
        v76 = *v73;
        v77 = vextq_s8(v60[-1], v60[-1], 8uLL);
        v73[-1] = vextq_s8(*v60, *v60, 8uLL);
        *v73 = v77;
        v60[-1] = vextq_s8(v76, v76, 8uLL);
        *v60 = vextq_s8(v75, v75, 8uLL);
        v73 += 2;
        v60 -= 2;
        v74 -= 4;
      }

      while (v74);
      v56 = v72;
      if (v65 != (v65 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_104:
        v78 = &v56->u64[1];
        do
        {
          v79 = *(v78 - 8);
          *(v78 - 8) = v58->i64[0];
          v58->i64[0] = v79;
          v58 = (v58 - 8);
          v80 = v78 >= v58;
          v78 += 8;
        }

        while (!v80);
      }
    }
  }

LABEL_108:
  v81 = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];

    operator delete(v81);
  }
}

void sub_1836DA81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1836DA88C(a11);
  _Unwind_Resume(a1);
}

void **sub_1836DA88C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 8);
        v5 -= 64;
        v6 = v7;
        if (v7)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1836DAA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  a10[1] = v11;
  a10[2] = v12;
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1836DAAB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    while (1)
    {
      while (1)
      {
        v4 = i - 104;
        *(a1 + 16) = i - 104;
        *(i - 40) = &unk_1EF1BBB78;
        v5 = *(i - 24);
        if (v5)
        {
          break;
        }

        i -= 104;
        if (v4 == v2)
        {
          goto LABEL_13;
        }
      }

      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        break;
      }

      *(i - 16) = v5;
      operator delete(v7);
      i = *(a1 + 16);
      if (i == v2)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v8 = *(v6 - 8);
      if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }

      v6 -= 16;
    }

    while (v6 != v5);
    v9 = *(i - 24);
    *(i - 16) = v5;
    operator delete(v9);
  }

LABEL_13:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1836DABE4(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a3 + 64;
    v6 = a1;
    do
    {
      v7 = *v6;
      v8 = *(v6 + 1);
      v9 = *(v6 + 3);
      *(a3 + 32) = *(v6 + 2);
      *(a3 + 48) = v9;
      *a3 = v7;
      *(a3 + 16) = v8;
      *(a3 + 72) = v6[9];
      *(a3 + 64) = &unk_1EF1BBB78;
      *(a3 + 88) = 0;
      *(a3 + 96) = 0;
      *(a3 + 80) = 0;
      *(a3 + 80) = *(v6 + 5);
      *(a3 + 96) = v6[12];
      v6[10] = 0;
      v6[11] = 0;
      v6[12] = 0;
      v6 += 13;
      a3 += 104;
      v5 += 104;
    }

    while (v6 != a2);
    do
    {
      v4[8] = &unk_1EF1BBB78;
      v11 = v4[10];
      if (v11)
      {
        v12 = v4[11];
        v10 = v4[10];
        if (v12 != v11)
        {
          do
          {
            v13 = *(v12 - 8);
            if (v13)
            {
              if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v13->__on_zero_shared)(v13);
                std::__shared_weak_count::__release_weak(v13);
              }
            }

            v12 -= 16;
          }

          while (v12 != v11);
          v10 = v4[10];
        }

        v4[11] = v11;
        operator delete(v10);
      }

      v4 += 13;
    }

    while (v4 != a2);
  }
}

void **sub_1836DAD44(void **a1)
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
        *(v3 - 5) = &unk_1EF1BBB78;
        v6 = *(v3 - 3);
        if (v6)
        {
          v7 = *(v3 - 2);
          v5 = *(v3 - 3);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 8);
              if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v8->__on_zero_shared)(v8);
                std::__shared_weak_count::__release_weak(v8);
              }

              v7 -= 16;
            }

            while (v7 != v6);
            v5 = *(v3 - 3);
          }

          *(v3 - 2) = v6;
          operator delete(v5);
        }

        v3 -= 104;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_1836DAE54(void *a1)
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
        v7 = *--v3;
        v6 = v7;
        *v3 = 0;
        if (v7)
        {
          v6[8] = &unk_1EF1BBB78;
          v8 = v6[10];
          if (v8)
          {
            v9 = v6[11];
            v5 = v6[10];
            if (v9 != v8)
            {
              do
              {
                v10 = *(v9 - 8);
                if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v10->__on_zero_shared)(v10);
                  std::__shared_weak_count::__release_weak(v10);
                }

                v9 -= 16;
              }

              while (v9 != v8);
              v5 = v6[10];
            }

            v6[11] = v8;
            operator delete(v5);
          }

          MEMORY[0x1865E5EC0](v6, 0x10A0C407BC771E5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_1836DAF90(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v1[8] = &unk_1EF1BBB78;
    v3 = v1[10];
    if (v3)
    {
      v4 = v1[11];
      v5 = v1[10];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v1[10];
      }

      v1[11] = v3;
      operator delete(v5);
    }

    MEMORY[0x1865E5EC0](v1, 0x10A0C407BC771E5);
    return v2;
  }

  return result;
}

void sub_1836DB088(void *a1)
{
  if (a1)
  {
    sub_1836DB088(*a1);
    sub_1836DB088(a1[1]);
    v2 = a1[4];
    if (v2)
    {
      a1[5] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t sub_1836DB0E4(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(result + 16);
  v5 = *(result + 24);
  if (v4 != v5)
  {
    while (*v4 != *a2)
    {
      if (++v4 == v5)
      {
        return result;
      }
    }
  }

  if (v4 != v5 && *(result + 8) == 1 && *(a2 + 40) < a4)
  {
    *(a2 + 8) = a3;
    *(a2 + 40) = a4;
  }

  return result;
}

uint64_t sub_1836DB13C(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(result + 16);
  v5 = *(result + 24);
  if (v4 != v5)
  {
    while (*v4 != *a2)
    {
      if (++v4 == v5)
      {
        return result;
      }
    }
  }

  if (v4 != v5)
  {
    *(a2 + 8) = a3;
    *(a2 + 40) = a4;
  }

  return result;
}

void sub_1836DB17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    v17 = *a1;
    v18 = *(a1 + 16);
    v21 = *(a1 + 72);
    *__p = *(a1 + 80);
    v23 = *(a1 + 96);
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 0;
    v4 = a1;
    do
    {
      v9 = v4;
      v4 += 104 * v3 + 104;
      v10 = 2 * v3;
      v3 = (2 * v3) | 1;
      v11 = v10 + 2;
      if (v11 < a3 && *(v4 + 32) + *(v4 + 48) > *(v4 + 136) + *(v4 + 152))
      {
        v4 += 104;
        v3 = v11;
      }

      v5 = *v4;
      v6 = *(v4 + 16);
      v7 = *(v4 + 48);
      *(v9 + 32) = *(v4 + 32);
      *(v9 + 48) = v7;
      *v9 = v5;
      *(v9 + 16) = v6;
      *(v9 + 72) = *(v4 + 72);
      v8 = *(v4 + 96);
      *(v9 + 80) = *(v4 + 80);
      *(v9 + 96) = v8;
      *(v4 + 80) = 0;
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
    }

    while (v3 <= ((a3 - 2) >> 1));
    v12 = (a2 - 104);
    if (v4 == a2 - 104)
    {
      *(v4 + 32) = v19;
      *(v4 + 48) = v20;
      *v4 = v17;
      *(v4 + 16) = v18;
      *(v4 + 72) = v21;
      *(v4 + 80) = *__p;
      *(v4 + 96) = v23;
    }

    else
    {
      v13 = *v12;
      v14 = *(a2 - 88);
      v15 = *(a2 - 56);
      *(v4 + 32) = *(a2 - 72);
      *(v4 + 48) = v15;
      *v4 = v13;
      *(v4 + 16) = v14;
      *(v4 + 72) = *(a2 - 32);
      v16 = *(a2 - 8);
      *(v4 + 80) = *(a2 - 24);
      *(v4 + 96) = v16;
      *(a2 - 72) = v19;
      *(a2 - 56) = v20;
      *v12 = v17;
      *(a2 - 88) = v18;
      *(a2 - 32) = v21;
      *(a2 - 24) = *__p;
      *(a2 - 8) = v23;
      sub_1836DB3E8(a1, v4 + 104, 0x4EC4EC4EC4EC4EC5 * ((v4 + 104 - a1) >> 3));
    }
  }
}

double sub_1836DB3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (a1 + 104 * v3);
    result = v4[4] + v4[6];
    if (result > *(a2 - 72) + *(a2 - 56))
    {
      v6 = (a2 - 104);
      v14 = *(a2 - 72);
      v15 = *(a2 - 56);
      v12 = *(a2 - 104);
      v13 = *(a2 - 88);
      v16 = *(a2 - 32);
      v17 = *(a2 - 24);
      v18 = *(a2 - 8);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v7 = v4;
        v8 = *v4;
        v9 = *(v4 + 1);
        v10 = *(v4 + 3);
        *(v6 + 2) = *(v4 + 2);
        *(v6 + 3) = v10;
        *v6 = v8;
        *(v6 + 1) = v9;
        v6[9] = v4[9];
        v11 = *(v4 + 12);
        *(v6 + 5) = *(v7 + 5);
        *(v6 + 12) = v11;
        v7[10] = 0.0;
        v7[11] = 0.0;
        v7[12] = 0.0;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (a1 + 104 * v3);
        v6 = v7;
      }

      while (v4[4] + v4[6] > *&v14 + *&v15);
      *(v7 + 2) = v14;
      *(v7 + 3) = v15;
      *v7 = v12;
      *(v7 + 1) = v13;
      *(v7 + 9) = v16;
      result = *&v17;
      *(v7 + 5) = v17;
      *(v7 + 12) = v18;
    }
  }

  return result;
}

void sub_1836DB51C(uint64_t a1, void *a2)
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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_1836D58DC();
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

  *(8 * v8) = *a2;
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

void ***sub_1836DB6C8(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_1836DB78C(uint64_t result, uint64_t a2, void *a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 3)
    {
      v5 = v3 >> 2;
      v6 = (v3 >> 2) | 1;
      v7 = (result + 8 * v6);
      v8 = v5 + 2;
      if (v8 < a2 && *(*v7 + 32) + *(*v7 + 48) > *(v7[1] + 32) + *(v7[1] + 48))
      {
        ++v7;
        v6 = v8;
      }

      v9 = *v7;
      v10 = *a3;
      v11 = *(*a3 + 32) + *(*a3 + 48);
      if (*(*v7 + 32) + *(*v7 + 48) <= v11)
      {
        do
        {
          *a3 = v9;
          a3 = v7;
          if (v4 < v6)
          {
            break;
          }

          v12 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 8 * v6);
          v13 = v12 + 2;
          if (v13 < a2 && *(*v7 + 32) + *(*v7 + 48) > *(v7[1] + 32) + *(v7[1] + 48))
          {
            ++v7;
            v6 = v13;
          }

          v9 = *v7;
        }

        while (*(*v7 + 32) + *(*v7 + 48) <= v11);
        *a3 = v10;
      }
    }
  }

  return result;
}

void *sub_1836DB894(void ***a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1836D58DC();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_183688F00();
  }

  v7 = (v2 << 6);
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v8 = *(a2 + 8);
  if (v8 != *a2)
  {
    if (((v8 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  *((v2 << 6) + 0x18) = *(a2 + 24);
  *((v2 << 6) + 0x28) = *(a2 + 40);
  *((v2 << 6) + 0x38) = *(a2 + 56);
  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v7 + *a1 - v10;
    do
    {
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = *v12;
      *(v13 + 2) = v12[2];
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v14 = *(v12 + 3);
      v15 = *(v12 + 5);
      *(v13 + 7) = v12[7];
      *(v13 + 40) = v15;
      *(v13 + 24) = v14;
      v12 += 8;
      v13 += 64;
    }

    while (v12 != v10);
    do
    {
      v16 = *v9;
      if (*v9)
      {
        v9[1] = v16;
        operator delete(v16);
      }

      v9 += 8;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = (v7 + 8);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v7 + 8;
}

void sub_1836DBA6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_1836DBA90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1836DBA90(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 64;
        v4 = *(v2 - 64);
        *(a1 + 16) = v2 - 64;
        if (!v4)
        {
          break;
        }

        *(v2 - 56) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 64;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1836DBB00(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    if (v3 != v2)
    {
      do
      {
        *(v3 - 40) = &unk_1EF1BBB78;
        v6 = *(v3 - 24);
        if (v6)
        {
          v7 = *(v3 - 16);
          v5 = *(v3 - 24);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 8);
              if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v8->__on_zero_shared)(v8);
                std::__shared_weak_count::__release_weak(v8);
              }

              v7 -= 16;
            }

            while (v7 != v6);
            v5 = *(v3 - 24);
          }

          *(v3 - 16) = v6;
          operator delete(v5);
        }

        v3 -= 104;
      }

      while (v3 != v2);
      v4 = *(a1 + 56);
    }

    *(a1 + 64) = v2;
    operator delete(v4);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 24);
    if (v10 != v9)
    {
      do
      {
        v14 = *--v10;
        v13 = v14;
        *v10 = 0;
        if (v14)
        {
          v13[8] = &unk_1EF1BBB78;
          v15 = v13[10];
          if (v15)
          {
            v16 = v13[11];
            v12 = v13[10];
            if (v16 != v15)
            {
              do
              {
                v17 = *(v16 - 8);
                if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v17->__on_zero_shared)(v17);
                  std::__shared_weak_count::__release_weak(v17);
                }

                v16 -= 16;
              }

              while (v16 != v15);
              v12 = v13[10];
            }

            v13[11] = v15;
            operator delete(v12);
          }

          MEMORY[0x1865E5EC0](v13, 0x10A0C407BC771E5);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 24);
    }

    *(a1 + 32) = v9;
    operator delete(v11);
  }

  sub_1836DB088(*(a1 + 8));
  return a1;
}

void sub_1836DBD18(void *a1)
{
  *a1 = &unk_1EF1BBD10;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_1836DBD8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      if (++v2 == v3)
      {
        v2 = *(a1 + 24);
        return 2 * (v2 != v3);
      }
    }
  }

  return 2 * (v2 != v3);
}

double sub_1836DBDC4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0.0;
  }

  if (*(a1 + 40) == 1)
  {
    v3 = *(a2 + 56);
    if (v3 && a3 == 0)
    {
      return (*(a2 + 32) + *(v3 + 32)) * 0.5;
    }
  }

  return *(a2 + 32);
}

uint64_t sub_1836DBE38(uint64_t a1)
{
  *a1 = &unk_1EF1BC1B0;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1836DBEC8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1836DBF14(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_1836DBF94(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

char *sub_1836DBFD8(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1836D58DC();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 3) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 7);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 7);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 7);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_1836DC16C(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v24 = v10[1];
        if (!v24)
        {
          break;
        }

        do
        {
          v10 = v24;
          v24 = *v24;
        }

        while (v24);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v15 = v14[4];
      v9[4] = v15;
      v16 = *v8;
      v17 = (a1 + 8);
      v18 = (a1 + 8);
      if (*v8)
      {
        break;
      }

LABEL_22:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **a1;
      if (v19)
      {
        goto LABEL_23;
      }

LABEL_24:
      sub_1836894A0(*(a1 + 8), v9);
      ++*(a1 + 16);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v22 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v23 = v10[1];
              if (!v23)
              {
                break;
              }

              do
              {
                v10 = v23;
                v23 = *v23;
              }

              while (v23);
            }
          }

          else
          {
            for (v10[1] = 0; v22; v22 = v10[1])
            {
              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v14[2];
          v21 = *a2 == v14;
          v14 = a2;
        }

        while (!v21);
      }

      if (v12)
      {
        v14 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v17 = v16;
        if (v15 >= v16[4])
        {
          break;
        }

        v16 = *v16;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_22;
        }
      }

      v16 = v16[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **a1;
    if (!v19)
    {
      goto LABEL_24;
    }

LABEL_23:
    *a1 = v19;
    goto LABEL_24;
  }

  v12 = v9;
LABEL_13:
  sub_18368D56C(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    sub_18368D56C(a1, v10);
  }

LABEL_17:
  if (a2 != a3)
  {
    operator new();
  }
}

char *sub_1836DC498(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a1[2];
  result = *a1;
  if (0x8E38E38E38E38E39 * ((v5 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v7 = a4;
      operator delete(result);
      a4 = v7;
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v8 = 0x8E38E38E38E38E39 * (v5 >> 3);
      v9 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x1C71C71C71C71C7)
      {
        v10 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }
    }

    sub_1836D58DC();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (0x8E38E38E38E38E39 * ((v11 - result) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v16 = 0;
      do
      {
        if (a2 != result)
        {
          v17 = &result[v16];
          *v17 = *&a2[v16];
          v18 = *&a2[v16 + 32];
          *(v17 + 1) = *&a2[v16 + 16];
          *(v17 + 2) = v18;
          *(v17 + 3) = *&a2[v16 + 48];
          *(v17 + 8) = *&a2[v16 + 64];
        }

        v16 += 72;
      }

      while (&a2[v16] != a3);
      result += v16;
    }

    a1[1] = result;
  }

  else
  {
    if (v11 != result)
    {
      v13 = 0;
      do
      {
        if (a2 != result)
        {
          v14 = &result[v13];
          *v14 = *&a2[v13];
          v15 = *&a2[v13 + 32];
          *(v14 + 1) = *&a2[v13 + 16];
          *(v14 + 2) = v15;
          *(v14 + 3) = *&a2[v13 + 48];
          *(v14 + 8) = *&a2[v13 + 64];
        }

        v13 += 72;
      }

      while (v12 != v13);
    }

    if (&a2[v12] == a3)
    {
      a1[1] = v11;
    }

    else
    {
      v19 = a2 - result;
      v20 = v11;
      do
      {
        v21 = v20 + v19;
        *v11 = *(v20 + v19);
        v22 = *(v20 + v19 + 32);
        *(v11 + 1) = *(v20 + v19 + 16);
        *(v11 + 2) = v22;
        *(v11 + 3) = *(v20 + v19 + 48);
        *(v11 + 8) = *(v20 + v19 + 64);
        v11 += 72;
        v20 = (v20 + 72);
      }

      while ((v21 + 72) != a3);
      a1[1] = v20;
    }
  }

  return result;
}

char *sub_1836DC70C(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_1836D58DC();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_1836DC868(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_50;
  }

  v5 = *a1;
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v6 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = v5[1] ? v5[1] : v5;
  v26 = v8;
  if (!v8)
  {
    goto LABEL_50;
  }

  v9 = v8[2];
  if (v9)
  {
    v10 = *v9;
    if (*v9 == v8)
    {
      *v9 = 0;
      while (1)
      {
        v22 = v9[1];
        if (!v22)
        {
          break;
        }

        do
        {
          v9 = v22;
          v22 = *v22;
        }

        while (v22);
      }
    }

    else
    {
      for (v9[1] = 0; v10; v10 = v9[1])
      {
        do
        {
          v9 = v10;
          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  v25 = v9;
  if (a2 == a3)
  {
    v11 = a1;
    sub_1836DD2D8(a1, v8);
    if (v9)
    {
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  v12 = a2;
  do
  {
    v8[4] = v12[4];
    if (v8 != v12)
    {
      sub_1836DCF48((v8 + 5), v12[5], v12 + 6);
      v8 = v26;
    }

    v13 = *v7;
    v14 = (a1 + 8);
    v15 = (a1 + 8);
    if (!*v7)
    {
LABEL_22:
      *v8 = 0;
      v8[1] = 0;
      v8[2] = v14;
      *v15 = v8;
      v16 = **a1;
      if (!v16)
      {
        goto LABEL_24;
      }

LABEL_23:
      *a1 = v16;
      goto LABEL_24;
    }

    do
    {
      while (1)
      {
        v14 = v13;
        if (v8[4] >= v13[4])
        {
          break;
        }

        v13 = *v13;
        v15 = v14;
        if (!*v14)
        {
          goto LABEL_22;
        }
      }

      v13 = v13[1];
    }

    while (v13);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = v14;
    v14[1] = v8;
    v16 = **a1;
    if (v16)
    {
      goto LABEL_23;
    }

LABEL_24:
    sub_1836894A0(*(a1 + 8), v8);
    ++*(a1 + 16);
    v8 = v25;
    v26 = v25;
    if (v25)
    {
      v9 = v25[2];
      if (v9)
      {
        v17 = *v9;
        if (*v9 == v25)
        {
          *v9 = 0;
          while (1)
          {
            v20 = v9[1];
            if (!v20)
            {
              break;
            }

            do
            {
              v9 = v20;
              v20 = *v20;
            }

            while (v20);
          }
        }

        else
        {
          for (v9[1] = 0; v17; v17 = v9[1])
          {
            do
            {
              v9 = v17;
              v17 = *v17;
            }

            while (v17);
          }
        }
      }

      v25 = v9;
      v18 = v12[1];
      if (!v18)
      {
        do
        {
LABEL_35:
          a2 = v12[2];
          v19 = *a2 == v12;
          v12 = a2;
        }

        while (!v19);
        goto LABEL_37;
      }
    }

    else
    {
      v9 = 0;
      v18 = v12[1];
      if (!v18)
      {
        goto LABEL_35;
      }
    }

    do
    {
      a2 = v18;
      v18 = *v18;
    }

    while (v18);
LABEL_37:
    if (!v8)
    {
      break;
    }

    v12 = a2;
  }

  while (a2 != a3);
  v11 = a1;
  sub_1836DD2D8(a1, v8);
  if (v9)
  {
LABEL_47:
    for (i = v9[2]; i; i = i[2])
    {
      v9 = i;
    }

    sub_1836DD2D8(v11, v9);
  }

LABEL_50:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_1836DCF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1836DD280(va);
  _Unwind_Resume(a1);
}

void sub_1836DCF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_18368D56C(v4, *v5);
  sub_1836DD33C(va);
  _Unwind_Resume(a1);
}

void sub_1836DCF48(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v24 = v10[1];
        if (!v24)
        {
          break;
        }

        do
        {
          v10 = v24;
          v24 = *v24;
        }

        while (v24);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v15 = v14[4];
      v9[4] = v15;
      v9[5] = v14[5];
      v16 = *v8;
      v17 = (a1 + 8);
      v18 = (a1 + 8);
      if (*v8)
      {
        break;
      }

LABEL_22:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **a1;
      if (v19)
      {
        goto LABEL_23;
      }

LABEL_24:
      sub_1836894A0(*(a1 + 8), v9);
      ++*(a1 + 16);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v22 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v23 = v10[1];
              if (!v23)
              {
                break;
              }

              do
              {
                v10 = v23;
                v23 = *v23;
              }

              while (v23);
            }
          }

          else
          {
            for (v10[1] = 0; v22; v22 = v10[1])
            {
              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v14[2];
          v21 = *a2 == v14;
          v14 = a2;
        }

        while (!v21);
      }

      if (v12)
      {
        v14 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v17 = v16;
        if (v15 >= v16[4])
        {
          break;
        }

        v16 = *v16;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_22;
        }
      }

      v16 = v16[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **a1;
    if (!v19)
    {
      goto LABEL_24;
    }

LABEL_23:
    *a1 = v19;
    goto LABEL_24;
  }

  v12 = v9;
LABEL_13:
  sub_18368D56C(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    sub_18368D56C(a1, v10);
  }

LABEL_17:
  if (a2 != a3)
  {
    operator new();
  }
}

uint64_t sub_1836DD280(uint64_t a1)
{
  sub_1836DD2D8(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1836DD2D8(*a1, v2);
  }

  return a1;
}

void sub_1836DD2D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1836DD2D8(a1, *a2);
    sub_1836DD2D8(a1, a2[1]);
    sub_18368D56C((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t sub_1836DD33C(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_18368D56C((v1 + 5), v1[6]);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *sub_1836DD38C(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void sub_1836DD53C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    v6 = *a1;
    v8 = (a1 + 8);
    v7 = *(a1 + 8);
    *a1 = a1 + 8;
    *(v7 + 16) = 0;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    v9 = v6[1] ? v6[1] : v6;
    if (v9)
    {
      v10 = v9[2];
      if (v10)
      {
        v11 = *v10;
        if (*v10 == v9)
        {
          *v10 = 0;
          while (1)
          {
            v38 = v10[1];
            if (!v38)
            {
              break;
            }

            do
            {
              v10 = v38;
              v38 = *v38;
            }

            while (v38);
          }
        }

        else
        {
          for (v10[1] = 0; v11; v11 = v10[1])
          {
            do
            {
              v10 = v11;
              v11 = *v11;
            }

            while (v11);
          }
        }
      }

      if (a2 == a3)
      {
        v12 = v9;
      }

      else
      {
        v14 = a2;
        do
        {
          v12 = v10;
          if (v14 != v9)
          {
            *(v9 + 7) = *(v14 + 7);
            *(v9 + 8) = *(v14 + 8);
            *(v9 + 9) = *(v14 + 9);
            *(v9 + 10) = *(v14 + 10);
            *(v9 + 11) = *(v14 + 11);
          }

          v15 = *v8;
          v16 = a1 + 8;
          v17 = (a1 + 8);
          if (*v8)
          {
            v18 = *(v9 + 7);
            v19 = *(v9 + 9);
            v20 = *(v9 + 10);
            do
            {
              while (1)
              {
                v16 = v15;
                v21 = *(v15 + 28);
                v22 = v18 >= v21;
                v23 = v18 > v21;
                if (v22)
                {
                  v24 = v23;
                }

                else
                {
                  v24 = -1;
                }

                v25 = *(v16 + 36);
                v26 = *(v16 + 40);
                v22 = v19 >= v25;
                v27 = v19 > v25;
                if (v22)
                {
                  v28 = v27;
                }

                else
                {
                  v28 = -1;
                }

                v29 = v20 > v26;
                if (v20 < v26)
                {
                  v29 = -1;
                }

                if (v24 != -1)
                {
                  if (v24)
                  {
                    break;
                  }

                  v30 = *(v9 + 8);
                  v31 = *(v16 + 32);
                  v22 = v30 >= v31;
                  v32 = v30 > v31;
                  if (!v22)
                  {
                    v32 = -1;
                  }

                  if (v32 != -1 && (v32 || v28 != -1 && (v28 || v29 != -1 && (v29 || *(v9 + 11) >= *(v16 + 44)))))
                  {
                    break;
                  }
                }

                v15 = *v16;
                v17 = v16;
                if (!*v16)
                {
                  goto LABEL_47;
                }
              }

              v15 = *(v16 + 8);
            }

            while (v15);
            v17 = (v16 + 8);
          }

LABEL_47:
          *v9 = 0;
          v9[1] = 0;
          v9[2] = v16;
          *v17 = v9;
          v33 = **a1;
          if (v33)
          {
            *a1 = v33;
          }

          sub_1836894A0(*(a1 + 8), v9);
          ++*(a1 + 16);
          if (v10)
          {
            v10 = v10[2];
            if (v10)
            {
              v36 = *v10;
              if (*v10 == v12)
              {
                *v10 = 0;
                while (1)
                {
                  v37 = v10[1];
                  if (!v37)
                  {
                    break;
                  }

                  do
                  {
                    v10 = v37;
                    v37 = *v37;
                  }

                  while (v37);
                }
              }

              else
              {
                for (v10[1] = 0; v36; v36 = v10[1])
                {
                  do
                  {
                    v10 = v36;
                    v36 = *v36;
                  }

                  while (v36);
                }
              }
            }
          }

          else
          {
            v10 = 0;
          }

          v34 = v14[1];
          if (v34)
          {
            do
            {
              a2 = v34;
              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            do
            {
              a2 = v14[2];
              v35 = *a2 == v14;
              v14 = a2;
            }

            while (!v35);
          }

          if (!v12)
          {
            break;
          }

          v9 = v12;
          v14 = a2;
        }

        while (a2 != a3);
      }

      sub_18368D56C(a1, v12);
      if (v10)
      {
        for (i = v10[2]; i; i = i[2])
        {
          v10 = i;
        }

        sub_18368D56C(a1, v10);
      }
    }
  }

  if (a2 != a3)
  {
    operator new();
  }
}

uint64_t sub_1836DD958(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_1836DD9A4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_1836DD9D8(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_1836DDA1C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = *(v1 + 56);
      if (v3)
      {
        *(v1 + 64) = v3;
        operator delete(v3);
      }

      sub_18368D56C(v1 + 32, *(v1 + 40));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1836DDA7C(void *a1)
{
  if (a1)
  {
    sub_1836DDA7C(*a1);
    sub_1836DDA7C(a1[1]);
    v2 = a1[7];
    if (v2)
    {
      a1[8] = v2;
      operator delete(v2);
    }

    sub_18368D56C((a1 + 4), a1[5]);

    operator delete(a1);
  }
}

void sub_1836DDAE4(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v24 = v10[1];
        if (!v24)
        {
          break;
        }

        do
        {
          v10 = v24;
          v24 = *v24;
        }

        while (v24);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v15 = v14[4];
      v9[4] = v15;
      v16 = *v8;
      v17 = (a1 + 8);
      v18 = (a1 + 8);
      if (*v8)
      {
        break;
      }

LABEL_22:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **a1;
      if (v19)
      {
        goto LABEL_23;
      }

LABEL_24:
      sub_1836894A0(*(a1 + 8), v9);
      ++*(a1 + 16);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v22 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v23 = v10[1];
              if (!v23)
              {
                break;
              }

              do
              {
                v10 = v23;
                v23 = *v23;
              }

              while (v23);
            }
          }

          else
          {
            for (v10[1] = 0; v22; v22 = v10[1])
            {
              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v14[2];
          v21 = *a2 == v14;
          v14 = a2;
        }

        while (!v21);
      }

      if (v12)
      {
        v14 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v17 = v16;
        if (v15 >= v16[4])
        {
          break;
        }

        v16 = *v16;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_22;
        }
      }

      v16 = v16[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **a1;
    if (!v19)
    {
      goto LABEL_24;
    }

LABEL_23:
    *a1 = v19;
    goto LABEL_24;
  }

  v12 = v9;
LABEL_13:
  sub_18368D56C(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    sub_18368D56C(a1, v10);
  }

LABEL_17:
  if (a2 != a3)
  {
    operator new();
  }
}

void *sub_1836DDE10(void *a1)
{
  *a1 = &unk_1EF1BBDA0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_1836DDE70(void *a1)
{
  *a1 = &unk_1EF1BBDA0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x1865E5EC0);
}

void sub_1836DDF3C(uint64_t a1, uint64_t a2, CFStringRef *a3)
{
  v5 = CVNLPLanguageModelWithStateCreate();
  if (*a3 && CFStringGetLength(*a3))
  {
    CVNLPLanguageModelWithStateUpdateWithContext();
  }

  v6 = *(a2 + 16);
  *(a2 + 16) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1836DDFD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1836DE198(va);
  _Unwind_Resume(a1);
}

double sub_1836DDFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a4 + 8) = 0;
  Copy = CVNLPLanguageModelWithStateCreateCopy();
  v9 = *(a4 + 16);
  *(a4 + 16) = Copy;
  if (v9)
  {
    CFRelease(v9);
  }

  if (*(a1 + 56) == a5)
  {
    return *(a4 + 8);
  }

  sub_1836DE1CC(&cf, a5, *(a1 + 32));
  CVNLPLanguageModelWithStateConditionalProbability();
  v12 = v11;
  CVNLPLanguageModelWithStateUpdateWithContext();
  v13 = logf(v12);
  v14 = *(a1 + 8);
  if (*(a1 + 16) > v13)
  {
    v13 = *(a1 + 16);
  }

  v10 = v14 * v13;
  *(a4 + 8) = v14 * v13;
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void sub_1836DE0C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183691190(va);
  _Unwind_Resume(a1);
}

void *sub_1836DE0D8(void *a1)
{
  *a1 = &unk_1EF1BBE00;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1836DE128(void *a1)
{
  *a1 = &unk_1EF1BBE00;
  v1 = a1[2];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865E5EC0);
}

const void **sub_1836DE198(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *sub_1836DE1CC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 4 * a2);
  if ((v4 - 0x10000) >> 20)
  {
    v6 = 1;
    LOWORD(v5) = v4;
  }

  else
  {
    v5 = ((v4 - 0x10000) >> 10) | 0xFFFFD800;
    chars[1] = v4 & 0x3FF | 0xDC00;
    v6 = 2;
  }

  chars[0] = v5;
  result = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], chars, v6);
  *a1 = result;
  if (result)
  {
    v8 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v8 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1865E5C80](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1836DE2A0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_183695860(v1);
  _Unwind_Resume(a1);
}

void *sub_1836DE2D4(void *a1)
{
  *a1 = &unk_1EF1BBE40;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_1836DE334(void *a1)
{
  *a1 = &unk_1EF1BBE40;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_1836DE408(uint64_t a1, void *a2, CFStringRef *a3)
{
  v5 = *(a1 + 56);
  v7 = a2[2];
  v6 = a2[3];
  v8 = &v6[-v7] >> 2;
  v9 = v5 - v8;
  if (v5 <= v8)
  {
    if (v5 < v8)
    {
      a2[3] = v7 + 4 * v5;
    }

    result = *a3;
    if (!*a3)
    {
      return result;
    }
  }

  else
  {
    v10 = a2[4];
    if (v9 > (v10 - v6) >> 2)
    {
      if ((v5 & 0x80000000) == 0)
      {
        v11 = v10 - v7;
        if (v11 >> 1 > v5)
        {
          v5 = v11 >> 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v5 = 0x3FFFFFFFFFFFFFFFLL;
        }

        if (!(v5 >> 62))
        {
          operator new();
        }

        sub_183688F00();
      }

      sub_1836D58DC();
    }

    v13 = &v6[4 * v9];
    memset_pattern16(v6, &unk_1839CDB10, 4 * v9);
    a2[3] = v13;
    result = *a3;
    if (!*a3)
    {
      return result;
    }
  }

  result = CFStringGetLength(result);
  if (result)
  {
    result = CFStringGetLength(*a3);
    if (result >= 1)
    {
      v14 = result;
      v15 = 0;
      v16 = a2[3];
      while (v16 != a2[2])
      {
        v17 = v14--;
        result = CFStringGetCharacterAtIndex(*a3, v14);
        v18 = result;
        if (v17 != 1 && (result & 0xFC00) == 0xDC00)
        {
          v19 = v17 - 2;
          result = CFStringGetCharacterAtIndex(*a3, v19);
          if ((result & 0xFC00) == 0xD800)
          {
            v14 = v19;
            v18 = v18 + (result << 10) - 56613888;
          }
        }

        if (v15 & 1) != 0 || (result = CVNLPIsWhitespaceCharLMCodepoint(), (result))
        {
          v15 = 1;
          *(v16 - 4) = v18;
          v16 -= 4;
          if (v14 <= 0)
          {
            return result;
          }
        }

        else
        {
          result = CVNLPIsDigitCharLMCodepoint();
          v15 = 0;
          v20 = 6;
          if (result)
          {
            v20 = 5;
          }

          ++a2[v20];
          *(v16 - 4) = v18;
          v16 -= 4;
          if (v14 <= 0)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

double sub_1836DE64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a4 + 8) = 0;
  if (*(a1 + 64) != a5)
  {
    v9 = *(a1 + 56);
    if (v9 + 1 > ((*(a4 + 32) - *(a4 + 16)) >> 2))
    {
      if (v9 > -2)
      {
        operator new();
      }

LABEL_41:
      sub_1836D58DC();
    }

    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    if (*(a1 + 56) >= ((v11 - v10) >> 2))
    {
      v12 = *(a2 + 16);
    }

    else
    {
      v12 = (v10 + 4);
    }

    for (; v12 != v11; ++v12)
    {
      sub_1836DEB50(a4 + 16, v12);
    }

    v13 = *(*(a1 + 32) + 4 * a5);
    if (CVNLPIsWhitespaceCharLMCodepoint())
    {
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      v14 = *(a2 + 40);
      v15 = *(a2 + 48) + v14;
      if (v15)
      {
        goto LABEL_15;
      }

LABEL_21:
      if (*(a1 + 72) < 0.0)
      {
        goto LABEL_26;
      }

LABEL_22:
      if ((*(a4 + 24) - *(a4 + 16)) >> 2 >= *(a1 + 56))
      {
        LMLanguageModelConditionalProbability();
        v22 = v21 * 2.30258509;
        if (*(a1 + 16) > v22)
        {
          v22 = *(a1 + 16);
        }

        *(a4 + 8) = *(a1 + 8) * v22;
      }

LABEL_26:
      v24 = *(a4 + 24);
      v23 = *(a4 + 32);
      if (v24 >= v23)
      {
        v26 = *(a4 + 16);
        v27 = v24 - v26;
        v28 = (v24 - v26) >> 2;
        v29 = v28 + 1;
        if ((v28 + 1) >> 62)
        {
          goto LABEL_41;
        }

        v30 = v23 - v26;
        if (v30 >> 1 > v29)
        {
          v29 = v30 >> 1;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v31 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          if (!(v31 >> 62))
          {
            operator new();
          }

          sub_183688F00();
        }

        v32 = (v24 - v26) >> 2;
        v33 = (4 * v28);
        v34 = (4 * v28 - 4 * v32);
        *v33 = v13;
        v25 = v33 + 1;
        memcpy(v34, v26, v27);
        *(a4 + 16) = v34;
        *(a4 + 24) = v25;
        *(a4 + 32) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v24 = v13;
        v25 = v24 + 4;
      }

      *(a4 + 24) = v25;
      return *(a4 + 8);
    }

    v17 = CVNLPIsDigitCharLMCodepoint();
    v18 = *(a2 + 40);
    if (v17)
    {
      v19 = *(a2 + 48);
      *(a4 + 40) = v18 + 1;
      *(a4 + 48) = v19;
      v14 = *(a2 + 40);
      v15 = *(a2 + 48) + v14;
      if (!v15)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = *(a2 + 48) + 1;
      *(a4 + 40) = v18;
      *(a4 + 48) = v20;
      v14 = *(a2 + 40);
      v15 = *(a2 + 48) + v14;
      if (!v15)
      {
        goto LABEL_21;
      }
    }

LABEL_15:
    v16 = (v14 / v15);
    if (v16 > *(a1 + 72))
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (a4 != a2)
  {
    sub_1836DE9F4((a4 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  }

  *(a4 + 40) = *(a2 + 40);
  return *(a4 + 8);
}

void *sub_1836DE928(void *result)
{
  *result = &unk_1EF1BBEA0;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1836DE980(void *a1)
{
  *a1 = &unk_1EF1BBEA0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1865E5EC0);
}

char *sub_1836DE9F4(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    sub_1836D58DC();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_1836DEB50(uint64_t a1, _DWORD *a2)
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
    sub_1836D58DC();
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

void sub_1836DEC68(void *a1)
{
  *a1 = &unk_1EF1BBC08;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1865E5EC0);
}

void sub_1836DECF0(void *a1)
{
  *a1 = &unk_1EF1BBC08;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1865E5EC0);
}

BOOL sub_1836DED64(uint64_t a1, int a2, int a3)
{
  if (!a2 && a3 == 1)
  {
    return 1;
  }

  if (a3)
  {
    v4 = a3 == 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  if (a2 == 1 && (v5 & 1) != 0)
  {
    return 1;
  }

  return a2 == 3 && a3 == 1;
}

double sub_1836DEE18(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  v5 = a1[3] * v4;
  if (a1[2] > v5)
  {
    v5 = a1[2];
  }

  result = a1[1] * v5;
  *(a4 + 8) = result;
  *(a4 + 16) = v4 + 1;
  return result;
}

uint64_t sub_1836DEE60(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = &v3[-*a1];
  v5 = v4 >> 3;
  v6 = (v4 >> 3) + 1;
  if (v6 >> 61)
  {
    sub_1836D58DC();
  }

  v8 = *(a1 + 16) - v2;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  v10 = v4 >> 3;
  *(8 * v5) = *a2;
  *a2 = 0;
  if (v2 != v3)
  {
    v11 = v3 - v2 - 8;
    v12 = v2;
    v13 = 0;
    if (v11 < 0x98)
    {
      goto LABEL_30;
    }

    if ((v2 + (v11 & 0xFFFFFFFFFFFFFFF8)) != -8)
    {
      v12 = v2;
      v13 = 0;
      if (v2 < v4 + (v11 & 0xFFFFFFFFFFFFFFF8) - 8 * v10 + 8)
      {
        goto LABEL_30;
      }
    }

    v14 = (v11 >> 3) + 1;
    v13 = (8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
    v12 = (v13 + v2);
    v15 = (-8 * v10 + 8 * v5 + 16);
    v16 = (v2 + 2);
    v17 = v14 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v18 = *v16;
      *(v15 - 1) = *(v16 - 1);
      *v15 = v18;
      *(v16 - 1) = 0uLL;
      *v16 = 0uLL;
      v15 += 2;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_30:
      do
      {
        *v13++ = *v12;
        *v12++ = 0;
      }

      while (v12 != v3);
    }

    do
    {
      if (*v2)
      {
        CFRelease(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = 8 * v5 + 8;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 8 * v5 + 8;
}

void *sub_1836DF03C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  return result;
}

void ***sub_1836DF10C(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v7 = *(v4 - 1);
          v4 -= 8;
          v6 = v7;
          if (v7)
          {
            CFRelease(v6);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *sub_1836DF18C(void *a1)
{
  *a1 = &unk_1EF1BC070;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    v4 = a1[4];
    v5 = a1[3];
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 8);
        v4 -= 8;
        v6 = v7;
        if (v7)
        {
          CFRelease(v6);
        }
      }

      while (v4 != v3);
      v5 = a1[3];
    }

    a1[4] = v3;
    operator delete(v5);
  }

  return a1;
}

void sub_1836DF228(void *a1)
{
  *a1 = &unk_1EF1BC070;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    v4 = a1[4];
    v5 = a1[3];
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 8);
        v4 -= 8;
        v6 = v7;
        if (v7)
        {
          CFRelease(v6);
        }
      }

      while (v4 != v3);
      v5 = a1[3];
    }

    a1[4] = v3;
    operator delete(v5);
  }

  JUMPOUT(0x1865E5EC0);
}

void sub_1836DF340(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*a3 || !CFStringGetLength(*a3) || (v6.length = *(a3 + 16)) == 0)
  {
    v43 = 0;
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    if (v10 == v9)
    {
      goto LABEL_52;
    }

    goto LABEL_9;
  }

  v6.location = *(a3 + 8);
  v7 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *a3, v6);
  v43 = v7;
  if (v7)
  {
    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1865E5C80](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (v10 != v9)
  {
LABEL_9:
    v41 = v9;
    do
    {
      v11 = *v10;
      if (*v10)
      {
        CFRetain(*v10);
      }

      RootCursor = LXLexiconCreateRootCursor();
      v13 = RootCursor;
      cf = RootCursor;
      if (v43)
      {
        v14 = LXCursorCreateByAdvancing();
        cf = v14;
        if (v13)
        {
          CFRelease(v13);
        }

        v16 = a2[3];
        v15 = a2[4];
        if (v16 < v15)
        {
LABEL_17:
          if (v14)
          {
            CFRetain(v14);
          }

          *v16 = v14;
          a2[3] = v16 + 1;
          v17 = cf;
          if (!cf)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }
      }

      else
      {
        v14 = RootCursor;
        v16 = a2[3];
        v15 = a2[4];
        if (v16 < v15)
        {
          goto LABEL_17;
        }
      }

      v18 = a2[2];
      v19 = v16 - v18;
      v20 = (v16 - v18) >> 3;
      if ((v20 + 1) >> 61)
      {
        sub_1836D58DC();
      }

      v21 = v15 - v18;
      v22 = v21 >> 2;
      if (v21 >> 2 <= (v20 + 1))
      {
        v22 = v20 + 1;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      if (v23)
      {
        if (!(v23 >> 61))
        {
          operator new();
        }

        sub_183688F00();
      }

      if (v14)
      {
        CFRetain(v14);
      }

      v24 = a2[2];
      v25 = a2[3];
      v26 = 8 * v20 - (v25 - v24);
      *(8 * v20) = v14;
      v27 = 8 * v20 + 8;
      v28 = v25 - v24;
      if (v25 != v24)
      {
        v29 = v28 - 8;
        v30 = v24;
        v31 = (8 * v20 - (v25 - v24));
        if ((v28 - 8) < 0x38)
        {
          goto LABEL_60;
        }

        if (v26 < v24 + (v29 & 0xFFFFFFFFFFFFFFF8) + 8)
        {
          v30 = v24;
          v31 = (8 * v20 - (v25 - v24));
          if (v24 < &v19[(v29 & 0xFFFFFFFFFFFFFFF8) - v28 + 8])
          {
            goto LABEL_60;
          }
        }

        v32 = v28 >> 3;
        v33 = (v29 >> 3) + 1;
        v34 = v33 & 0x3FFFFFFFFFFFFFFCLL;
        v30 = &v24[v34];
        v31 = (v26 + v34 * 8);
        v35 = (-8 * v32 + 8 * v20 + 16);
        v36 = (v24 + 2);
        v37 = v33 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v38 = *v36;
          *(v35 - 1) = *(v36 - 1);
          *v35 = v38;
          *(v36 - 1) = 0uLL;
          *v36 = 0uLL;
          v35 += 2;
          v36 += 2;
          v37 -= 4;
        }

        while (v37);
        if (v33 != (v33 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_60:
          do
          {
            *v31++ = *v30;
            *v30++ = 0;
          }

          while (v30 != v25);
        }

        v39 = 8 * v20 - (v25 - v24);
        do
        {
          if (*v24)
          {
            CFRelease(*v24);
          }

          ++v24;
        }

        while (v24 != v25);
        v24 = a2[2];
        v26 = v39;
      }

      a2[2] = v26;
      a2[3] = v27;
      a2[4] = 0;
      if (v24)
      {
        operator delete(v24);
      }

      v9 = v41;
      a2[3] = v27;
      v17 = cf;
      if (!cf)
      {
        goto LABEL_50;
      }

LABEL_49:
      CFRelease(v17);
LABEL_50:
      if (v11)
      {
        CFRelease(v11);
      }

      ++v10;
    }

    while (v10 != v9);
  }

LABEL_52:
  if (v43)
  {
    CFRelease(v43);
  }
}

void sub_1836DF6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14)
{
  __cxa_free_exception(v14);
  sub_183695860(&a14);
  _Unwind_Resume(a1);
}

void sub_1836DF6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_183695860(va);
  _Unwind_Resume(a1);
}

void sub_1836DF6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  sub_1836C040C(va);
  sub_1836B0EC8(va1);
  sub_183691190(va2);
  _Unwind_Resume(a1);
}

void sub_1836DF720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_1836B0EC8(va);
  sub_183691190(va1);
  _Unwind_Resume(a1);
}

double sub_1836DF740(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  a4[1] = 0;
  a4[5] = a2[5];
  if (a1[10] == a5)
  {
    if (a4 == a2)
    {
      return 0.0;
    }

    v7 = (a4 + 2);
    v6 = a4[2];
    v9 = a2[2];
    v8 = a2[3];
    v10 = v8 - v9;
    v11 = a4[4];
    if (v11 - v6 < (v8 - v9))
    {
      if (v6)
      {
        v12 = a4[3];
        v13 = a4[2];
        if (v12 != v6)
        {
          do
          {
            v15 = *--v12;
            v14 = v15;
            if (v15)
            {
              CFRelease(v14);
            }
          }

          while (v12 != v6);
          v13 = *v7;
        }

        a4[3] = v6;
        operator delete(v13);
        v11 = 0;
        *v7 = 0;
        a4[3] = 0;
        a4[4] = 0;
      }

      v95 = v10 >> 3;
      if (!((v10 >> 3) >> 61))
      {
        if (v11 >> 2 > v95)
        {
          v95 = v11 >> 2;
        }

        v96 = v11 >= 0x7FFFFFFFFFFFFFF8;
        v97 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v96)
        {
          v97 = v95;
        }

        if (!(v97 >> 61))
        {
          operator new();
        }
      }

      sub_1836D58DC();
    }

    v47 = a4[3];
    v48 = v47 - v6;
    if (v47 - v6 >= v10)
    {
      if (v9 != v8)
      {
        do
        {
          v84 = *v6;
          v85 = *v9;
          *v6 = *v9;
          if (v85)
          {
            CFRetain(v85);
          }

          if (v84)
          {
            CFRelease(v84);
          }

          ++v9;
          ++v6;
        }

        while (v9 != v8);
        v47 = a4[3];
      }

      while (v47 != v6)
      {
        v103 = *--v47;
        v102 = v103;
        if (v103)
        {
          CFRelease(v102);
        }
      }

      a4[3] = v6;
    }

    else
    {
      if (v47 != v6)
      {
        v49 = v47 - v6;
        v50 = a2[2];
        do
        {
          v51 = *v6;
          v52 = *v50;
          *v6 = *v50;
          if (v52)
          {
            CFRetain(v52);
          }

          if (v51)
          {
            CFRelease(v51);
          }

          ++v50;
          ++v6;
          v49 -= 8;
        }

        while (v49);
        v47 = a4[3];
      }

      v98 = (v9 + v48);
      v99 = v47;
      if (v98 != v8)
      {
        v99 = v47;
        v100 = v47;
        do
        {
          v101 = *v98;
          if (*v98)
          {
            CFRetain(*v98);
          }

          *v100++ = v101;
          ++v98;
          ++v99;
        }

        while (v98 != v8);
      }

      a4[3] = v99;
    }

    return *(a4 + 1);
  }

  sub_1836DE1CC(&v113, a5, a1[6]);
  v19 = a1[12];
  if (v19)
  {
    v20 = v113;
    v21 = v19();
    sub_1836B4BA8(&cf, v21);
    v23 = cf;
    v22 = v113;
    cf = v113;
    v113 = v23;
    if (cf)
    {
      CFRelease(v22);
    }
  }

  if (a1[9] == a5 || MEMORY[0x1865E54E0](v113))
  {
    v25 = a1[3];
    v24 = a1[4];
    if (v25 != v24)
    {
      v110 = a1[4];
      do
      {
        RootCursor = LXLexiconCreateRootCursor();
        cf = RootCursor;
        v28 = a4[3];
        v27 = a4[4];
        if (v28 < v27)
        {
          *v28 = RootCursor;
          a4[3] = v28 + 8;
        }

        else
        {
          v29 = a4[2];
          v30 = (v28 - v29) >> 3;
          v31 = v30 + 1;
          if ((v30 + 1) >> 61)
          {
            sub_1836D58DC();
          }

          v32 = v27 - v29;
          if (v32 >> 2 > v31)
          {
            v31 = v32 >> 2;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF8)
          {
            v33 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            if (!(v33 >> 61))
            {
              operator new();
            }

            sub_183688F00();
          }

          v34 = (v28 - v29) >> 3;
          *(8 * v30) = RootCursor;
          v35 = 8 * v30 + 8;
          cf = 0;
          if (v29 != v28)
          {
            v36 = v28 - v29 - 8;
            v37 = v29;
            v38 = 0;
            if (v36 < 0x38)
            {
              goto LABEL_164;
            }

            if ((v29 + (v36 & 0xFFFFFFFFFFFFFFF8)) != -8)
            {
              v37 = v29;
              v38 = 0;
              if (v29 < v28 - v29 + (v36 & 0xFFFFFFFFFFFFFFF8) - 8 * v34 + 8)
              {
                goto LABEL_164;
              }
            }

            v39 = (v36 >> 3) + 1;
            v38 = (8 * (v39 & 0x3FFFFFFFFFFFFFFCLL));
            v37 = (v38 + v29);
            v40 = (-8 * v34 + 8 * v30 + 16);
            v41 = (v29 + 2);
            v42 = v39 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v43 = *v41;
              *(v40 - 1) = *(v41 - 1);
              *v40 = v43;
              *(v41 - 1) = 0uLL;
              *v41 = 0uLL;
              v40 += 2;
              v41 += 2;
              v42 -= 4;
            }

            while (v42);
            if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_164:
              do
              {
                *v38++ = *v37;
                *v37++ = 0;
              }

              while (v37 != v28);
            }

            do
            {
              if (*v29)
              {
                CFRelease(*v29);
              }

              ++v29;
            }

            while (v29 != v28);
            v29 = a4[2];
          }

          a4[2] = 0;
          a4[3] = v35;
          a4[4] = 0;
          if (v29)
          {
            operator delete(v29);
          }

          v44 = cf;
          a4[3] = v35;
          v24 = v110;
          if (v44)
          {
            CFRelease(v44);
          }
        }

        v25 += 8;
      }

      while (v25 != v24);
    }

    a4[5] = 0;
    v45 = *(a4 + 1);
    v46 = v113;
    if (!v113)
    {
      return v45;
    }

LABEL_151:
    CFRelease(v46);
    return v45;
  }

  v108 = a1;
  v54 = a2[2];
  v53 = a2[3];
  if (v54 != v53)
  {
    v109 = a2[3];
    do
    {
      v55 = *v54;
      if (*v54)
      {
        CFRetain(*v54);
      }

      cf = v55;
      v56 = LXCursorCreateByAdvancing();
      v57 = v56;
      v111 = v56;
      if (!v56)
      {
        goto LABEL_93;
      }

      v59 = a4[3];
      v58 = a4[4];
      if (v59 >= v58)
      {
        v61 = a4[2];
        v62 = v59 - v61;
        v63 = (v59 - v61) >> 3;
        if ((v63 + 1) >> 61)
        {
          sub_1836D58DC();
        }

        v64 = v58 - v61;
        v65 = v64 >> 2;
        if (v64 >> 2 <= (v63 + 1))
        {
          v65 = v63 + 1;
        }

        if (v64 >= 0x7FFFFFFFFFFFFFF8)
        {
          v66 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v66 = v65;
        }

        if (v66)
        {
          if (!(v66 >> 61))
          {
            operator new();
          }

          sub_183688F00();
        }

        CFRetain(v56);
        v67 = a4[2];
        v68 = a4[3];
        v69 = 8 * v63 - (v68 - v67);
        *(8 * v63) = v57;
        v70 = 8 * v63 + 8;
        v71 = v68 - v67;
        if (v68 != v67)
        {
          v72 = v71 - 8;
          v73 = v67;
          v74 = (8 * v63 - (v68 - v67));
          if ((v71 - 8) < 0x38)
          {
            goto LABEL_165;
          }

          if (v69 < v67 + (v72 & 0xFFFFFFFFFFFFFFF8) + 8)
          {
            v73 = v67;
            v74 = (8 * v63 - (v68 - v67));
            if (v67 < &v62[(v72 & 0xFFFFFFFFFFFFFFF8) - v71 + 8])
            {
              goto LABEL_165;
            }
          }

          v75 = v71 >> 3;
          v76 = (v72 >> 3) + 1;
          v77 = v76 & 0x3FFFFFFFFFFFFFFCLL;
          v73 = &v67[v77];
          v74 = (v69 + v77 * 8);
          v78 = (-8 * v75 + 8 * v63 + 16);
          v79 = (v67 + 2);
          v80 = v76 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v81 = *v79;
            *(v78 - 1) = *(v79 - 1);
            *v78 = v81;
            *(v79 - 1) = 0uLL;
            *v79 = 0uLL;
            v78 += 2;
            v79 += 2;
            v80 -= 4;
          }

          while (v80);
          if (v76 != (v76 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_165:
            do
            {
              *v74++ = *v73;
              *v73++ = 0;
            }

            while (v73 != v68);
          }

          v82 = 8 * v63 - (v68 - v67);
          do
          {
            if (*v67)
            {
              CFRelease(*v67);
            }

            ++v67;
          }

          while (v67 != v68);
          v67 = a4[2];
          v69 = v82;
        }

        a4[2] = v69;
        a4[3] = v70;
        a4[4] = 0;
        if (v67)
        {
          operator delete(v67);
        }

        v53 = v109;
        a4[3] = v70;
        v60 = v111;
        if (!v111)
        {
          goto LABEL_93;
        }
      }

      else
      {
        CFRetain(v56);
        *v59 = v57;
        a4[3] = v59 + 1;
        v60 = v111;
        if (!v111)
        {
          goto LABEL_93;
        }
      }

      CFRelease(v60);
LABEL_93:
      if (v55)
      {
        CFRelease(v55);
      }

      ++v54;
    }

    while (v54 != v53);
  }

  if (CVNLPShouldUseLexiconContextLogProb())
  {
    if ((atomic_load_explicit(&qword_1EA84CD60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA84CD60))
    {
      qword_1EA84CD58 = 0xC007F7427B73E391;
      __cxa_guard_release(&qword_1EA84CD60);
    }

    v83 = *&qword_1EA84CD58;
  }

  else
  {
    v86 = a4[2];
    v87 = a4[3];
    if (v86 == v87)
    {
      if ((atomic_load_explicit(&qword_1EA84CD70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA84CD70))
      {
        qword_1EA84CD68 = 0xC04205966F2B4F12;
        __cxa_guard_release(&qword_1EA84CD70);
      }

      v83 = *&qword_1EA84CD68;
    }

    else
    {
      v88 = log(((v108[4] - v108[3]) >> 3));
      if (*(v108 + 88))
      {
        v83 = 0.0;
      }

      else
      {
        v83 = -INFINITY;
      }

      v89 = -v88;
      do
      {
        v90 = *v86;
        if (*v86)
        {
          CFRetain(*v86);
        }

        cf = v90;
        LXCursorConditionalProbability();
        v92 = v89 + v91 * 2.30258509;
        if (v83 <= v92)
        {
          v93 = v83;
        }

        else
        {
          v93 = v89 + v91 * 2.30258509;
        }

        if (v83 <= v92)
        {
          v83 = v92;
        }

        if (v93 != -INFINITY)
        {
          v94 = exp(v93 - v83);
          v83 = v83 + log1p(v94);
        }

        if (v90)
        {
          CFRelease(v90);
        }

        ++v86;
      }

      while (v86 != v87);
    }
  }

  v104 = *(v108 + 2);
  v105 = *(a4 + 5);
  v106 = v104 - v105;
  if (v83 >= v104 - v105)
  {
    v106 = v83;
  }

  *(a4 + 5) = v105 + v106;
  if (v104 <= v106)
  {
    v104 = v106;
  }

  v45 = *(v108 + 1) * v104;
  *(a4 + 1) = v45;
  v46 = v113;
  if (v113)
  {
    goto LABEL_151;
  }

  return v45;
}

void sub_1836E0030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_1836E0048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_1836E0060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_1836E007C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_1836E0094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  sub_1836C040C(va);
  sub_1836C040C(va1);
  sub_183691190(va2);
  _Unwind_Resume(a1);
}

void sub_1836E0110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_183691190(va);
  _Unwind_Resume(a1);
}

void *sub_1836E012C(void *a1)
{
  *a1 = &unk_1EF1BC0D0;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 8);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1836E01B8(void *a1)
{
  *a1 = &unk_1EF1BC0D0;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 8);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x1865E5EC0);
}

void *sub_1836E0264(void *a1)
{
  *a1 = &unk_1EF1BC110;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
  }

  return a1;
}

void sub_1836E02D4(void *a1)
{
  *a1 = &unk_1EF1BC110;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
  }

  JUMPOUT(0x1865E5EC0);
}

void sub_1836E03B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 && CFStringGetLength(*a3))
  {
    if (*a3 && CFStringGetLength(*a3) && (v4.length = *(a3 + 8)) != 0)
    {
      v4.location = 0;
      v5 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *a3, v4);
      v8 = v5;
      if (v5)
      {
        v6 = CFGetTypeID(v5);
        if (v6 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x1865E5C80](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    CVNLPWordTokenIDsForString();
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void sub_1836E04F8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  sub_183695860((v2 - 40));
  _Unwind_Resume(a1);
}

double sub_1836E0544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a4 + 8) = 0;
  if (a4 == a2)
  {
    v9 = (a4 + 40);
    if (*(a1 + 72) == a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1836DE9F4((a4 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
    v9 = (a4 + 40);
    sub_1836E0FD4((a4 + 40), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
    if (*(a1 + 72) == a5)
    {
LABEL_3:
      result = *(a2 + 8);
      *(a4 + 8) = result;
      return result;
    }
  }

  if (*(a1 + 64) == a5)
  {
    sub_1836E09C0(a1, a4, a5);
    return *(a4 + 8);
  }

  else
  {
    v12 = *(a4 + 48);
    v11 = *(a4 + 56);
    if (v12 >= v11)
    {
      v14 = *v9;
      v15 = v12 - *v9;
      v16 = v15 >> 3;
      v17 = (v15 >> 3) + 1;
      if (v17 >> 61)
      {
        sub_1836D58DC();
      }

      v18 = v11 - v14;
      if (v18 >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (!(v19 >> 61))
        {
          operator new();
        }

        sub_183688F00();
      }

      *(8 * v16) = a5;
      v13 = 8 * v16 + 8;
      memcpy(0, v14, v15);
      *(a4 + 40) = 0;
      *(a4 + 48) = v13;
      *(a4 + 56) = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v12 = a5;
      v13 = (v12 + 1);
    }

    *(a4 + 48) = v13;
    return *(a4 + 8);
  }
}

double sub_1836E06EC(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  if ((*(a1 + 80) & 1) == 0 && *(a2 + 40) != *(a2 + 48))
  {
    sub_1836E09C0(a1, a2, *(a1 + 64));
    return *(a2 + 8);
  }

  return result;
}

void *sub_1836E0734(void *a1)
{
  *a1 = &unk_1EF1BC170;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1836E0794(void *a1)
{
  *a1 = &unk_1EF1BC170;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1865E5EC0);
}

void sub_1836E0814(uint64_t a1, void *a2, int TokenIDForString)
{
  v5 = a2;
  if (TokenIDForString)
  {
    v11 = *(a1 + 40);
    v13 = v11[3];
    v12 = v11[4];
    if (v13 < v12)
    {
LABEL_3:
      *v13 = TokenIDForString;
      v14 = v13 + 4;
      goto LABEL_17;
    }
  }

  else
  {
    v25 = v5;
    v15 = objc_msgSend_lowercaseString(v5, v6, v7, v8, v9, v10);
    TokenIDForString = LMLanguageModelGetTokenIDForString();

    v5 = v25;
    v11 = *(a1 + 40);
    v13 = v11[3];
    v12 = v11[4];
    if (v13 < v12)
    {
      goto LABEL_3;
    }
  }

  v26 = v5;
  v16 = v11[2];
  v17 = v13 - v16;
  v18 = (v13 - v16) >> 2;
  v19 = v18 + 1;
  if ((v18 + 1) >> 62)
  {
    sub_1836D58DC();
  }

  v20 = v12 - v16;
  if (v20 >> 1 > v19)
  {
    v19 = v20 >> 1;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v21 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (!(v21 >> 62))
    {
      operator new();
    }

    sub_183688F00();
  }

  v22 = (v13 - v16) >> 2;
  v23 = (4 * v18);
  v24 = (4 * v18 - 4 * v22);
  *v23 = TokenIDForString;
  v14 = v23 + 1;
  memcpy(v24, v16, v17);
  v11[2] = v24;
  v11[3] = v14;
  v11[4] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  v5 = v26;
LABEL_17:
  v11[3] = v14;
}

void sub_1836E09C0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[5];
  v4 = a2[6];
  if (v3 != v4)
  {
    if (*(a1 + 64) != a3)
    {
      v6 = a2[7];
      if (v4 >= v6)
      {
        v7 = v4 - v3;
        v8 = (v4 - v3) >> 3;
        v9 = v8 + 1;
        if ((v8 + 1) >> 61)
        {
          sub_1836D58DC();
        }

        v10 = v6 - v3;
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

        v12 = a2;
        if (v11)
        {
          if (!(v11 >> 61))
          {
            operator new();
          }

          sub_183688F00();
        }

        *(8 * v8) = a3;
        v4 = (8 * v8 + 8);
        memcpy(0, v3, v7);
        v12[5] = 0;
        v12[6] = v4;
        v12[7] = 0;
        if (v3)
        {
          operator delete(v3);
        }

        a2 = v12;
      }

      else
      {
        *v4 = a3;
        v4 += 8;
      }

      a2[6] = v4;
      v3 = a2[5];
    }

    v31 = a2;
    if (v4 != v3)
    {
      if ((((v4 - v3) >> 3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18368964C();
    }

    v13 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], 0, 0);
    v36 = v13;
    if (v13)
    {
      v14 = CFGetTypeID(v13);
      if (v14 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1865E5C80](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    if (*(a1 + 16) / 2.30258509 >= -15.654)
    {
      v15 = *(a1 + 16) / 2.30258509;
    }

    else
    {
      v15 = -15.654;
    }

    TokenIDForString = LMLanguageModelGetTokenIDForString();
    if (TokenIDForString)
    {
      LMLanguageModelConditionalProbability();
      if (v17 < v15)
      {
        v17 = v15;
      }

      v33[3] = v17;
      v19 = *(v31 + 3);
      v18 = *(v31 + 4);
      if (v19 >= v18)
      {
        v21 = *(v31 + 2);
        v22 = v19 - v21;
        v23 = (v19 - v21) >> 2;
        v24 = v23 + 1;
        if ((v23 + 1) >> 62)
        {
          sub_1836D58DC();
        }

        v25 = v18 - v21;
        if (v25 >> 1 > v24)
        {
          v24 = v25 >> 1;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v26 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          if (!(v26 >> 62))
          {
            operator new();
          }

          sub_183688F00();
        }

        v27 = v23;
        v28 = (4 * v23);
        v29 = &v28[-v27];
        *v28 = TokenIDForString;
        v20 = v28 + 1;
        memcpy(v29, v21, v22);
        *(v31 + 2) = v29;
        *(v31 + 3) = v20;
        v31[4] = 0.0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v19 = TokenIDForString;
        v20 = v19 + 4;
      }

      *(v31 + 3) = v20;
    }

    else
    {
      CVNLPWordTokenIDsForString();
    }

    v31[6] = v31[5];
    v31[1] = *(a1 + 8) * v33[3] * 2.30258509;
    _Block_object_dispose(&v32, 8);
    if (v36)
    {
      CFRelease(v36);
    }
  }
}

void sub_1836E0F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  __cxa_free_exception(v20);
  sub_183695860((v22 - 104));
  if (v21)
  {
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

char *sub_1836E0FD4(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_1836D58DC();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_1836E1130(uint64_t a1, void *a2, int TokenIDForString)
{
  v25 = a2;
  if (TokenIDForString || (objc_msgSend_lowercaseString(v25, v5, v6, v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), TokenIDForString = LMLanguageModelGetTokenIDForString(), v10, TokenIDForString))
  {
    LMLanguageModelConditionalProbability();
    if (v11 < *(a1 + 56))
    {
      v11 = *(a1 + 56);
    }
  }

  else
  {
    v11 = *(a1 + 56);
  }

  *(*(*(a1 + 32) + 8) + 24) = v11 + *(*(*(a1 + 32) + 8) + 24);
  v12 = *(a1 + 48);
  v14 = v12[3];
  v13 = v12[4];
  if (v14 >= v13)
  {
    v16 = v12[2];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 2;
    v19 = v18 + 1;
    if ((v18 + 1) >> 62)
    {
      sub_1836D58DC();
    }

    v20 = v13 - v16;
    if (v20 >> 1 > v19)
    {
      v19 = v20 >> 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v21 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (!(v21 >> 62))
      {
        operator new();
      }

      sub_183688F00();
    }

    v22 = (v14 - v16) >> 2;
    v23 = (4 * v18);
    v24 = (4 * v18 - 4 * v22);
    *v23 = TokenIDForString;
    v15 = v23 + 1;
    memcpy(v24, v16, v17);
    v12[2] = v24;
    v12[3] = v15;
    v12[4] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = TokenIDForString;
    v15 = v14 + 4;
  }

  v12[3] = v15;
}

void **sub_1836E1324(void **a1)
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

        v5 = *(v3 - 2);
        v3 -= 2;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_1836E138C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_183915960(v3 - 416);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t **sub_1836E13E8(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = v14[1];
      v17 = *v16;
      v14[1] = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = v14[2];
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      v14[2] = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (v20 && (v20[3] & 1) == 0)
      {
LABEL_65:
        v19 = v7;
      }

      else
      {
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v19[2] = v29;
        v7[2] = v19;
        v20 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      v21[2] = v14;
    }

    v22 = v14[2];
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v15[2] = v22;
    v14[2] = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_69;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_69:
    v25 = v7;
    goto LABEL_70;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v26 = *v25;
  v7[1] = *v25;
  if (v26)
  {
    *(v26 + 16) = v7;
  }

  v27 = v7[2];
  v25[2] = v27;
  v27[*v27 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_70:
  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = v34[2];
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v35 + 16) = v37;
  v34[2] = v35;
  return result;
}

uint64_t *sub_1836E1798(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *(a2 + 7), v6 > a5))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
LABEL_18:
      if (v7)
      {
        *a3 = v9;
        return v9 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v13 = a2;
      do
      {
        v9 = v13[2];
        v14 = *v9 == v13;
        v13 = v9;
      }

      while (v14);
    }

    if (*(v9 + 7) < a5)
    {
      goto LABEL_18;
    }

    v15 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v16 = v15;
          v17 = *(v15 + 28);
          if (v17 <= a5)
          {
            break;
          }

          v15 = *v16;
          v5 = v16;
          if (!*v16)
          {
            goto LABEL_22;
          }
        }

        if (v17 >= a5)
        {
          break;
        }

        v5 = v16 + 1;
        v15 = v16[1];
      }

      while (v15);
    }

    else
    {
      v16 = a1 + 1;
    }

LABEL_22:
    *a3 = v16;
    return v5;
  }

  if (v6 >= a5)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v10 = a2[1];
  if (v10)
  {
    v11 = a2[1];
    do
    {
      v12 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    v19 = a2;
    do
    {
      v12 = v19[2];
      v14 = *v12 == v19;
      v19 = v12;
    }

    while (!v14);
  }

  if (v12 != v5 && *(v12 + 7) <= a5)
  {
    v20 = *v5;
    if (!*v5)
    {
      *a3 = v5;
      return a1 + 1;
    }

    do
    {
      while (1)
      {
        v16 = v20;
        v21 = *(v20 + 28);
        if (v21 <= a5)
        {
          break;
        }

        v20 = *v16;
        v5 = v16;
        if (!*v16)
        {
          goto LABEL_22;
        }
      }

      if (v21 >= a5)
      {
        break;
      }

      v5 = v16 + 1;
      v20 = v16[1];
    }

    while (v20);
    goto LABEL_22;
  }

  if (v10)
  {
    *a3 = v12;
    return v12;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }
}

void sub_1836E1928(void *a1)
{
  if (a1)
  {
    sub_1836E1928(*a1);
    sub_1836E1928(a1[1]);

    operator delete(a1);
  }
}

uint64_t sub_1836E1978(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_18368D56C((v1 + 4), v1[5]);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1836E19C8(void *a1)
{
  if (a1)
  {
    sub_1836E19C8(*a1);
    sub_1836E19C8(a1[1]);
    sub_18368D56C((a1 + 4), a1[5]);

    operator delete(a1);
  }
}

uint64_t sub_1836E1A24(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = 0x8E38E38E38E38E39 * ((v4 - v3) >> 3);
  v7 = v6 + 1;
  if (v6 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1836D58DC();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - v3) >> 3) > v7)
  {
    v7 = 0x1C71C71C71C71C72 * ((a1[2] - v3) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - v3) >> 3) >= 0x1C71C71C71C71C7)
  {
    v8 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    if (v8 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_183688F00();
  }

  v9 = 8 * ((v4 - v3) >> 3);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  v11 = *(a2 + 48);
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = v11;
  *(v9 + 64) = *(a2 + 64);
  if (v3 != v4)
  {
    v12 = v3;
    v13 = 8 * ((v4 - v3) >> 3) + v3 - v4;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 2);
      *(v13 + 16) = *(v12 + 1);
      *(v13 + 32) = v14;
      *(v13 + 48) = *(v12 + 3);
      *(v13 + 64) = *(v12 + 8);
      v12 += 72;
      v13 += 72;
    }

    while (v12 != v4);
  }

  *a1 = (8 * ((v4 - v3) >> 3) + v3 - v4);
  a1[1] = (8 * ((v4 - v3) >> 3) + 72);
  a1[2] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 72 * v6 + 72;
}

void sub_1836E1B84(char *a1)
{
  if (a1)
  {
    sub_1836E1B84(*a1);
    sub_1836E1B84(*(a1 + 1));

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void sub_1836E1C08(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 24) + 24 * a2;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (*a1)
  {
    v8 = -2147483650.0;
  }

  else
  {
    v8 = 2147483650.0;
  }

  v9 = v6;
  v10 = *(a1 + 24);
  *v10 = v8;
  v11 = *(v10 + 8);
  *(v10 + 8) = v9;
  v12 = v9;

  *(v10 + 16) = v7;
  while (1)
  {
    v13 = v2;
    v14 = *(a1 + 24);
    v2 >>= 1;
    v15 = v14 + 24 * v2;
    v16 = *v15;
    if (*a1 != 1)
    {
      break;
    }

    if (v5 > v16)
    {
      goto LABEL_11;
    }

LABEL_9:
    if (v13)
    {
      v17 = v14 + 24 * v13;
      *v17 = v16;
      objc_storeStrong((v17 + 8), *(v15 + 8));
      *(v17 + 16) = *(v15 + 16);
    }
  }

  if (v5 >= v16)
  {
    goto LABEL_9;
  }

LABEL_11:
  v18 = v14 + 24 * v13;
  *v18 = v5;
  v19 = *(v18 + 8);
  *(v18 + 8) = v12;
  v20 = v12;

  *(v18 + 16) = v7;
}

uint64_t *sub_1836E1D48(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {

      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1836E1DA4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (!v3)
  {
    a1[1] = 0;
    v13 = (a1 + 1);
    a1[2] = 0;
    *a1 = *v4;
    if (v4 != a1)
    {
      objc_storeStrong(v13, *(v4 + 8));
      a1[2] = *(v4 + 16);
    }

    return;
  }

  a1[1] = 0;
  v6 = (a1 + 1);
  a1[2] = 0;
  *a1 = *(v4 + 24);
  if ((v4 + 24) != a1)
  {
    objc_storeStrong(v6, *(v4 + 32));
    a1[2] = *(v4 + 40);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
  }

  *(a2 + 16) = v3 - 1;
  if (v3 != 1)
  {
    v7 = v4 + 24 * v3;
    *(v4 + 24) = *v7;
    objc_storeStrong((v4 + 32), *(v7 + 8));
    *(v4 + 40) = *(v7 + 16);
    v4 = *(a2 + 24);
  }

  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  v11 = *(a2 + 16);
  if (v11 < 2)
  {
    v12 = 1;
    goto LABEL_25;
  }

  v14 = 1;
  while (1)
  {
    v15 = 2 * v14;
    v16 = *(a2 + 24);
    if (2 * v14 < v11)
    {
      break;
    }

    v12 = 2 * v14;
    if ((*a2 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_17:
    v19 = *(v16 + 24 * v12);
    if (v19 >= v8)
    {
      goto LABEL_24;
    }

LABEL_22:
    if (v14 != v12)
    {
      v20 = v16 + 24 * v12;
      v21 = v16 + 24 * v14;
      *v21 = v19;
      objc_storeStrong((v21 + 8), *(v20 + 8));
      *(v21 + 16) = *(v20 + 16);
      v11 = *(a2 + 16);
    }

    v14 = v12;
    if (v12 > v11 >> 1)
    {
      goto LABEL_25;
    }
  }

  v12 = v15 | 1;
  v17 = *(v16 + 24 * (v15 | 1));
  v18 = *(v16 + 48 * v14);
  if (*a2)
  {
    if (v17 >= v18)
    {
      v12 = 2 * v14;
    }

    goto LABEL_17;
  }

  if (v17 <= v18)
  {
    v12 = 2 * v14;
  }

LABEL_21:
  v19 = *(v16 + 24 * v12);
  if (v19 > v8)
  {
    goto LABEL_22;
  }

LABEL_24:
  v12 = v14;
LABEL_25:
  v22 = *(a2 + 24) + 24 * v12;
  *v22 = v8;
  v23 = *(v22 + 8);
  *(v22 + 8) = v9;
  v24 = v9;

  *(v22 + 16) = v10;
  v25 = *(a2 + 16);
  if (*(a2 + 32) == v25 + 1)
  {
    *(a2 + 32) = v25;
    if (v25)
    {
      v26 = v25 >> 1;
      v27 = v25 - 1;
      if (v25 - 1 > v25 >> 1)
      {
        v28 = *(a2 + 24);
        if (*a2)
        {
          v29 = (v28 + 24 * v25 - 24);
          do
          {
            if (*v29 > *(v28 + 24 * v25))
            {
              *(a2 + 32) = v27;
              v25 = v27;
            }

            --v27;
            v29 -= 3;
          }

          while (v27 > v26);
        }

        else
        {
          v30 = (v28 + 24 * v25 - 24);
          do
          {
            if (*v30 < *(v28 + 24 * v25))
            {
              *(a2 + 32) = v27;
              v25 = v27;
            }

            --v27;
            v30 -= 3;
          }

          while (v27 > v26);
        }
      }
    }
  }
}

uint64_t *sub_1836E2048(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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
        if (*(v7 + 4) == v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void *sub_1836E2380(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1836D58DC();
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

    sub_1836D58DC();
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

void sub_1836E24EC(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t sub_1836E2510(uint64_t result, int8x16_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v123 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = (*a3)(a2[-1].i64[1], v10->i64[0]);
        if (result)
        {
          v77 = v10->i64[0];
          v10->i64[0] = a2[-1].i64[1];
LABEL_108:
          a2[-1].i64[1] = v77;
          return result;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return sub_1836E3030(v10, &v10->i64[1], v10[1].i64, &a2[-1].i64[1], a3);
    }

    if (v11 == 5)
    {
      sub_1836E3030(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = (*a3)(a2[-1].i64[1], v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v72;
      result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v73 = v10[1].i64[0];
      v10[1].i64[0] = v10[1].i64[1];
      v10[1].i64[1] = v73;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v75 = v10->i64[1];
      v74 = v10[1].i64[0];
      v76 = v10->i64[0];
      v10->i64[1] = v74;
      v10[1].i64[0] = v75;
      result = (*a3)(v74, v76);
      goto LABEL_167;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v80 = &v10->u64[1];
      v82 = v10 == a2 || v80 == a2;
      if (a5)
      {
        if (!v82)
        {
          v83 = 0;
          v84 = v10;
          do
          {
            v87 = *v84;
            v86 = v84[1];
            v84 = v80;
            result = (*a3)(v86, v87);
            if (result)
            {
              v88 = *v84;
              v89 = v83;
              do
              {
                *(&v10->i64[1] + v89) = *(v10->i64 + v89);
                if (!v89)
                {
                  v85 = v10;
                  goto LABEL_125;
                }

                result = (*a3)(v88, *(&v10->i64[-1] + v89));
                v89 -= 8;
              }

              while ((result & 1) != 0);
              v85 = (&v10->i64[1] + v89);
LABEL_125:
              *v85 = v88;
            }

            v80 = (v84 + 1);
            v83 += 8;
          }

          while (v84 + 1 != a2);
        }
      }

      else if (!v82)
      {
        do
        {
          v118 = v9->i64[0];
          v117 = v9->i64[1];
          v9 = v80;
          result = (*a3)(v117, v118);
          if (result)
          {
            v119 = v9->i64[0];
            v120 = v9;
            do
            {
              v121 = v120;
              v122 = *--v120;
              *v121 = v122;
              result = (*a3)(v119, *(v121 - 2));
            }

            while ((result & 1) != 0);
            *v120 = v119;
          }

          v80 = &v9->u64[1];
        }

        while (&v9->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v90 = v12 >> 1;
        v124 = v12 >> 1;
        do
        {
          if (v124 >= v90)
          {
            v92 = (2 * (v90 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
            v93 = &v9->i64[v92];
            if (2 * (v90 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v11 && (*a3)(*v93, v93[1]))
            {
              ++v93;
              v92 = 2 * (v90 & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }

            v94 = &v9->i64[v90];
            result = (*a3)(*v93, *v94);
            if ((result & 1) == 0)
            {
              v95 = *v94;
              do
              {
                v96 = v93;
                *v94 = *v93;
                if (v124 < v92)
                {
                  break;
                }

                v97 = (2 * (v92 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                v93 = &v9->i64[v97];
                v98 = 2 * v92 + 2;
                if (v98 < v11 && (*a3)(*v93, v93[1]))
                {
                  ++v93;
                  v97 = v98;
                }

                result = (*a3)(*v93, v95);
                v94 = v96;
                v92 = v97;
              }

              while (!result);
              *v96 = v95;
            }
          }

          v91 = v90-- <= 0;
        }

        while (!v91);
        v99 = v123;
        do
        {
          v100 = v99;
          v101 = 0;
          v125 = v9->i64[0];
          v102 = (v11 - 2) >> 1;
          v103 = v9;
          do
          {
            while (1)
            {
              v107 = &v103[v101];
              v106 = v107 + 1;
              v108 = (2 * v101) | 1;
              v109 = 2 * v101 + 2;
              if (v109 < v11)
              {
                break;
              }

              v101 = (2 * v101) | 1;
              *v103 = *v106;
              v103 = v107 + 1;
              if (v108 > v102)
              {
                goto LABEL_158;
              }
            }

            v105 = v107[2];
            v104 = v107 + 2;
            result = (*a3)(*(v104 - 1), v105);
            if (result)
            {
              v106 = v104;
              v101 = v109;
            }

            else
            {
              v101 = v108;
            }

            *v103 = *v106;
            v103 = v106;
          }

          while (v101 <= v102);
LABEL_158:
          v99 = v100 - 1;
          if (v106 == v100 - 1)
          {
            *v106 = v125;
          }

          else
          {
            *v106 = *v99;
            *v99 = v125;
            v110 = (v106 - v9 + 8) >> 3;
            v91 = v110 < 2;
            v111 = v110 - 2;
            if (!v91)
            {
              v112 = v111 >> 1;
              v113 = &v9->i64[v111 >> 1];
              result = (*a3)(*v113, *v106);
              if (result)
              {
                v114 = *v106;
                do
                {
                  v115 = v113;
                  *v106 = *v113;
                  if (!v112)
                  {
                    break;
                  }

                  v112 = (v112 - 1) >> 1;
                  v113 = &v9->i64[v112];
                  result = (*a3)(*v113, v114);
                  v106 = v115;
                }

                while ((result & 1) != 0);
                *v115 = v114;
              }
            }
          }

          v91 = v11-- <= 2;
        }

        while (!v91);
      }

      return result;
    }

    v13 = v11 >> 1;
    v14 = *a3;
    if (v11 < 0x81)
    {
      v18 = (v14)(v9->i64[0], v9->i64[v13]);
      v19 = (*a3)(a2[-1].i64[1], v9->i64[0]);
      if (v18)
      {
        v20 = v9->i64[v13];
        if (!v19)
        {
          v9->i64[v13] = v9->i64[0];
          v9->i64[0] = v20;
          if ((*a3)(a2[-1].i64[1]))
          {
            v33 = v9->i64[0];
            v9->i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v33;
          }

LABEL_37:
          --a4;
          v21 = v9->i64[0];
          if (a5)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        v9->i64[v13] = a2[-1].i64[1];
        a2[-1].i64[1] = v20;
        --a4;
        v21 = v9->i64[0];
        if (a5)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (!v19)
        {
          goto LABEL_37;
        }

        v24 = v9->i64[0];
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v24;
        if (!(*a3)(v9->i64[0], v9->i64[v13]))
        {
          goto LABEL_37;
        }

        v25 = v9->i64[v13];
        v9->i64[v13] = v9->i64[0];
        v9->i64[0] = v25;
        --a4;
        v21 = v25;
        if (a5)
        {
          goto LABEL_60;
        }
      }

LABEL_59:
      v50 = (*a3)(v9[-1].i64[1], v21);
      v21 = v9->i64[0];
      if (v50)
      {
        goto LABEL_60;
      }

      result = (*a3)(v9->i64[0], a2[-1].i64[1]);
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = (*a3)(v21, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = &v9->u64[1];
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 8);
          result = (*a3)(v21, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v21, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!(*a3)(v21, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v21, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v9)
      {
        v9->i64[0] = *v71;
      }

      a5 = 0;
      *v71 = v21;
    }

    else
    {
      v15 = (v14)(v9->i64[v13], v9->i64[0]);
      v16 = (*a3)(a2[-1].i64[1], v9->i64[v13]);
      if (v15)
      {
        v17 = v9->i64[0];
        if (v16)
        {
          v9->i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v17;
        }

        else
        {
          v9->i64[0] = v9->i64[v13];
          v9->i64[v13] = v17;
          if ((*a3)(a2[-1].i64[1]))
          {
            v26 = v9->i64[v13];
            v9->i64[v13] = a2[-1].i64[1];
            a2[-1].i64[1] = v26;
          }
        }
      }

      else if (v16)
      {
        v22 = v9->i64[v13];
        v9->i64[v13] = a2[-1].i64[1];
        a2[-1].i64[1] = v22;
        if ((*a3)(v9->i64[v13], v9->i64[0]))
        {
          v23 = v9->i64[0];
          v9->i64[0] = v9->i64[v13];
          v9->i64[v13] = v23;
        }
      }

      v27 = v13 - 1;
      v28 = (*a3)(v9->i64[v13 - 1], v9->i64[1]);
      v29 = (*a3)(a2[-1].i64[0], v9->i64[v13 - 1]);
      if (v28)
      {
        v30 = v9->i64[1];
        if (v29)
        {
          v9->i64[1] = a2[-1].i64[0];
          a2[-1].i64[0] = v30;
        }

        else
        {
          v9->i64[1] = v9->i64[v27];
          v9->i64[v27] = v30;
          if ((*a3)(a2[-1].i64[0]))
          {
            v34 = v9->i64[v27];
            v9->i64[v27] = a2[-1].i64[0];
            a2[-1].i64[0] = v34;
          }
        }
      }

      else if (v29)
      {
        v31 = v9->i64[v27];
        v9->i64[v27] = a2[-1].i64[0];
        a2[-1].i64[0] = v31;
        if ((*a3)(v9->i64[v27], v9->i64[1]))
        {
          v32 = v9->i64[1];
          v9->i64[1] = v9->i64[v27];
          v9->i64[v27] = v32;
        }
      }

      v35 = v13 + 1;
      v36 = (*a3)(v9->i64[v13 + 1], v9[1].i64[0]);
      v37 = (*a3)(a2[-2].i64[1], v9->i64[v13 + 1]);
      if (v36)
      {
        v38 = v9[1].i64[0];
        if (v37)
        {
          v9[1].i64[0] = a2[-2].i64[1];
          a2[-2].i64[1] = v38;
        }

        else
        {
          v9[1].i64[0] = v9->i64[v35];
          v9->i64[v35] = v38;
          if ((*a3)(a2[-2].i64[1]))
          {
            v41 = v9->i64[v35];
            v9->i64[v35] = a2[-2].i64[1];
            a2[-2].i64[1] = v41;
          }
        }
      }

      else if (v37)
      {
        v39 = v9->i64[v35];
        v9->i64[v35] = a2[-2].i64[1];
        a2[-2].i64[1] = v39;
        if ((*a3)(v9->i64[v35], v9[1].i64[0]))
        {
          v40 = v9[1].i64[0];
          v9[1].i64[0] = v9->i64[v35];
          v9->i64[v35] = v40;
        }
      }

      v42 = (*a3)(v9->i64[v13], v9->i64[v27]);
      v43 = (*a3)(v9->i64[v35], v9->i64[v13]);
      if (v42)
      {
        v44 = v9->i64[v27];
        if (v43)
        {
          v9->i64[v27] = v9->i64[v35];
          v9->i64[v35] = v44;
          v45 = v9->i64[v13];
          goto LABEL_58;
        }

        v9->i64[v27] = v9->i64[v13];
        v9->i64[v13] = v44;
        v48 = (*a3)(v9->i64[v35]);
        v45 = v9->i64[v13];
        if (v48)
        {
          v47 = v9->i64[v35];
          v9->i64[v13] = v47;
          v9->i64[v35] = v45;
          goto LABEL_57;
        }
      }

      else
      {
        v45 = v9->i64[v13];
        if (v43)
        {
          v9->i64[v13] = v9->i64[v35];
          v9->i64[v35] = v45;
          v46 = (*a3)();
          v45 = v9->i64[v13];
          if (v46)
          {
            v47 = v9->i64[v27];
            v9->i64[v27] = v45;
            v9->i64[v13] = v47;
LABEL_57:
            v45 = v47;
          }
        }
      }

LABEL_58:
      v49 = v9->i64[0];
      v9->i64[0] = v45;
      v9->i64[v13] = v49;
      --a4;
      v21 = v9->i64[0];
      if ((a5 & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_60:
      v51 = 0;
      do
      {
        v52 = (*a3)(v9->i64[++v51], v21);
      }

      while ((v52 & 1) != 0);
      v53 = (v9 + v51 * 8);
      v54 = a2;
      if (v51 == 1)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = v54[-1].i64[1];
          v54 = (v54 - 8);
        }

        while (((*a3)(v56, v21) & 1) == 0);
      }

      else
      {
        do
        {
          v55 = v54[-1].i64[1];
          v54 = (v54 - 8);
        }

        while (!(*a3)(v55, v21));
      }

      if (v53 >= v54)
      {
        v62 = (v53 - 8);
        if (&v53[-1].u64[1] == v9)
        {
          goto LABEL_78;
        }

LABEL_77:
        v9->i64[0] = v62->i64[0];
        goto LABEL_78;
      }

      v57 = &v9->i64[v51];
      v58 = v54;
      do
      {
        v59 = *v57;
        *v57 = *v58;
        *v58 = v59;
        do
        {
          v60 = v57[1];
          ++v57;
        }

        while (((*a3)(v60, v21) & 1) != 0);
        do
        {
          v61 = *--v58;
        }

        while (!(*a3)(v61, v21));
      }

      while (v57 < v58);
      v62 = (v57 - 1);
      a2 = v123;
      if (v62 != v9)
      {
        goto LABEL_77;
      }

LABEL_78:
      v62->i64[0] = v21;
      if (v53 < v54)
      {
        goto LABEL_81;
      }

      v63 = sub_1836E3184(v9, v62, a3);
      v10 = &v62->u64[1];
      result = sub_1836E3184(&v62->i64[1], a2, a3);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_81:
        result = sub_1836E2510(v9, v62, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v62->u64[1];
      }
    }
  }

  v78 = (*a3)(v10->i64[1], v10->i64[0]);
  result = (*a3)(a2[-1].i64[1], v10->i64[1]);
  if ((v78 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v116 = v10->i64[1];
    v10->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v116;
    result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_167:
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v79 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v79;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v79;
    result = (*a3)(a2[-1].i64[1]);
    if (result)
    {
      v77 = v10->i64[1];
      v10->i64[1] = a2[-1].i64[1];
      goto LABEL_108;
    }
  }

  return result;
}