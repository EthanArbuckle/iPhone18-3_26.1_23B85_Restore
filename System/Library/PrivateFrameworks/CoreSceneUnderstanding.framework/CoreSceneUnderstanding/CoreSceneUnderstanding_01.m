uint64_t sub_1AC08433C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1AC060A04();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_1AC084518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AC08514C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC085164(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1AC085400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AC0854A4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1[7] + 8);
  obj = *(v8 + 40);
  v9 = objc_msgSend_executeFetchRequest_error_(v6, a2, v7, &obj, a5);
  objc_storeStrong((v8 + 40), obj);
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_1AC085684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1AC0856C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setMergePolicy_(*(a1 + 32), a2, *MEMORY[0x1E695D370], a4, a5);
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v11 = objc_msgSend_save_(v6, v8, &obj, v9, v10);
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v11;
}

void sub_1AC085BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, void *a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a54, 8);

  _Block_object_dispose(&a60, 8);
  _Unwind_Resume(a1);
}

void sub_1AC085C90(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1[7] + 8);
  obj = *(v8 + 40);
  v9 = objc_msgSend_executeFetchRequest_error_(v6, a2, v7, &obj, a5);
  objc_storeStrong((v8 + 40), obj);
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_1AC085D08(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[4];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  obj = v7;
  objc_msgSend_convertToEntity_error_(v5, a2, &obj, &v9, a5);
  objc_storeStrong((v6 + 40), obj);
  objc_storeStrong((v8 + 40), v9);
}

void sub_1AC08612C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1AC086190(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[4];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  obj = v7;
  objc_msgSend_convertToEntity_error_(v5, a2, &obj, &v9, a5);
  objc_storeStrong((v6 + 40), obj);
  objc_storeStrong((v8 + 40), v9);
}

void sub_1AC08664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1AC0866A4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1[7] + 8);
  obj = *(v8 + 40);
  Request_error = objc_msgSend_countForFetchRequest_error_(v6, a2, v7, &obj, a5);
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[6] + 8) + 24) = Request_error;
}

void sub_1AC087BDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1AC10B290(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AC087BF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC087C10(uint64_t a1, void *a2, void *a3)
{
  v106 = a2;
  v8 = a3;
  if (!v106 || v8)
  {
    objc_msgSend_setInferenceOutputs_(*(a1 + 32), v5, 0, v6, v7);
    v104 = *(*(a1 + 40) + 8);
    v105 = v8;
    v95 = *(v104 + 40);
    *(v104 + 40) = v105;
  }

  else
  {
    v9 = objc_opt_new();
    objc_msgSend_setInferenceOutputs_(*(a1 + 32), v10, v9, v11, v12);

    v17 = objc_msgSend_textEmbedding(v106, v13, v14, v15, v16);
    v22 = objc_msgSend_inferenceOutputs(*(a1 + 32), v18, v19, v20, v21);
    objc_msgSend_setCSUTextEmbedding_(v22, v23, v17, v24, v25);

    v30 = objc_msgSend_additionalLayers(v106, v26, v27, v28, v29);
    v35 = objc_msgSend_inferenceOutputs(*(a1 + 32), v31, v32, v33, v34);
    objc_msgSend_setAdditionalLayers_(v35, v36, v30, v37, v38);

    v43 = objc_msgSend_tokenSegments(v106, v39, v40, v41, v42);
    v48 = objc_msgSend_inferenceOutputs(*(a1 + 32), v44, v45, v46, v47);
    objc_msgSend_setTokenSegments_(v48, v49, v43, v50, v51);

    v56 = objc_msgSend_truncatedInput(v106, v52, v53, v54, v55);
    v61 = objc_msgSend_inferenceOutputs(*(a1 + 32), v57, v58, v59, v60);
    objc_msgSend_setTruncatedInput_(v61, v62, v56, v63, v64);

    v69 = objc_msgSend_processedInput(v106, v65, v66, v67, v68);
    v74 = objc_msgSend_inferenceOutputs(*(a1 + 32), v70, v71, v72, v73);
    objc_msgSend_setProcessedInput_(v74, v75, v69, v76, v77);

    v82 = objc_msgSend_textChunksTokenIDs(v106, v78, v79, v80, v81);
    v87 = objc_msgSend_inferenceOutputs(*(a1 + 32), v83, v84, v85, v86);
    objc_msgSend_setTokens_(v87, v88, v82, v89, v90);

    v95 = objc_msgSend_tokenEmbedding(v106, v91, v92, v93, v94);
    v100 = objc_msgSend_inferenceOutputs(*(a1 + 32), v96, v97, v98, v99);
    objc_msgSend_setCSUTokenEmbedding_(v100, v101, v95, v102, v103);
  }
}

void sub_1AC088024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1AC088058(uint64_t a1, void *a2, void *a3)
{
  v80 = a2;
  v8 = a3;
  if (v80)
  {
    v9 = objc_opt_new();
    objc_msgSend_setInferenceOutputs_(*(a1 + 32), v10, v9, v11, v12);

    v17 = objc_msgSend_textEmbedding(v80, v13, v14, v15, v16);
    v22 = objc_msgSend_inferenceOutputs(*(a1 + 32), v18, v19, v20, v21);
    objc_msgSend_setCSUTextEmbedding_(v22, v23, v17, v24, v25);

    v30 = objc_msgSend_additionalLayers(v80, v26, v27, v28, v29);
    v35 = objc_msgSend_inferenceOutputs(*(a1 + 32), v31, v32, v33, v34);
    objc_msgSend_setAdditionalLayers_(v35, v36, v30, v37, v38);

    v43 = objc_msgSend_tokenSegments(v80, v39, v40, v41, v42);
    v48 = objc_msgSend_inferenceOutputs(*(a1 + 32), v44, v45, v46, v47);
    objc_msgSend_setTokenSegments_(v48, v49, v43, v50, v51);

    v56 = objc_msgSend_truncatedInput(v80, v52, v53, v54, v55);
    v61 = objc_msgSend_inferenceOutputs(*(a1 + 32), v57, v58, v59, v60);
    objc_msgSend_setTruncatedInput_(v61, v62, v56, v63, v64);

    v69 = objc_msgSend_processedInput(v80, v65, v66, v67, v68);
    v74 = objc_msgSend_inferenceOutputs(*(a1 + 32), v70, v71, v72, v73);
    objc_msgSend_setProcessedInput_(v74, v75, v69, v76, v77);
  }

  else
  {
    objc_msgSend_setInferenceOutputs_(*(a1 + 32), v5, 0, v6, v7);
    v78 = *(*(a1 + 40) + 8);
    v79 = v8;
    v69 = *(v78 + 40);
    *(v78 + 40) = v79;
  }
}

uint64_t sub_1AC088610(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F20D0B48;
  a2[1] = v2;
  return result;
}

void sub_1AC08863C(uint64_t a1)
{
  v2 = sub_1AC090E50();
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSUTextEncoderE5MLRunOnInput", "", v5, 2u);
  }
}

uint64_t sub_1AC0886C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z35[CSUTextEncoder runOnInput:error:]E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z35[CSUTextEncoder runOnInput:error:]E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z35[CSUTextEncoder runOnInput:error:]E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z35[CSUTextEncoder runOnInput:error:]E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AC08A0E0(_Unwind_Exception *a1, int a2)
{
  sub_1AC067008(&v9);

  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v6 = __cxa_begin_catch(a1);
  v7 = sub_1AC070210(v6, v3);
  __cxa_end_catch();
  return v7;
}

uint64_t sub_1AC08A2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __cxa_free_exception(v20);
  MEMORY[0x1AC5AC440](v21, 0x20C4093837F09);
  MEMORY[0x1AC5AC440](v19, 0x20C4093837F09);
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v24 = __cxa_begin_catch(a1);
  v25 = sub_1AC070210(v24, v18);
  __cxa_end_catch();
  return v25;
}

void sub_1AC08A9D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  sub_1AC066D78(&a38);

  _Unwind_Resume(a1);
}

_BYTE *sub_1AC08AAF0(_BYTE *a1, const char **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, v5, v6);
  }

  a1[v7] = 0;
  sub_1AC08AF38((a1 + 24), a3);
  return a1;
}

void sub_1AC08ABB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AC08AD54(uint64_t result, char *a2)
{
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AC063200(&v10, a2);
    sub_1AC063E68("PixelBufferTransfer operation [", &v10, &v11);
    sub_1AC063FAC("] failed. Status = ", &v11, &v12);
    std::to_string(&v9, v2);
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v9;
    }

    else
    {
      v5 = v9.__r_.__value_.__r.__words[0];
    }

    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v9.__r_.__value_.__l.__size_;
    }

    v7 = std::string::append(&v12, v5, size);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v13);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1AC08AE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v32);
    goto LABEL_14;
  }

LABEL_12:
  if (!v33)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_1AC08AF38(uint64_t result, uint64_t a2)
{
  *result = &unk_1F20D01C0;
  v2 = *(a2 + 8);
  *(result + 16) = 0;
  *(result + 8) = v2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v5 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1AC08B004(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AC08B318(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_1AC060AAC();
  }

  return result;
}

void sub_1AC08C418(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1AC10B290(a1);
  }

  _Unwind_Resume(a1);
}

id sub_1AC08C664(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_hasPrefix_(v3, v4, @"/", v5, v6))
  {
    v10 = v3;
  }

  else
  {
    v10 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 32), v7, v3, v8, v9);
  }

  v11 = v10;

  return v11;
}

uint64_t sub_1AC08C6E0(const char ****a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (**a1)
  {
    v7 = v3;
    v3 = objc_msgSend_errorWithCode_message_(CSUError, v3, 6, v3, v4);
    ***a1 = v3;
    v5 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v5);
}

uint64_t sub_1AC08C770(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 24), v6, a2, v7, v8);
  started = objc_msgSend_startIndex(v9, v10, v11, v12, v13);

  v18 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 24), v15, v5, v16, v17);
  v23 = objc_msgSend_startIndex(v18, v19, v20, v21, v22);

  if (started >= v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  if (started > v23)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  return v25;
}

uint64_t sub_1AC08C848(uint64_t a1, void **a2)
{
  if (*(a1 + 16) == 1)
  {

    *(a1 + 16) = 0;
  }

  result = sub_1AC08CEE4(a1, *a2);
  *(a1 + 16) = 1;
  return result;
}

void sub_1AC08CC28(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC08CC6C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

void *sub_1AC08CDC0(uint64_t *a1, id *a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    sub_1AC060AAC();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    if (!(v8 >> 60))
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v9 = (16 * v3);
  v10 = *a2;
  v11 = *a3;
  *v9 = v10;
  v9[1] = v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = 16 * v3 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = (v9 + *a1 - v13);
    do
    {
      v17 = *v15;
      v18 = v15[1];
      *v15 = 0;
      v15 += 2;
      *v16 = v17;
      v16[1] = v18;
      v16 += 2;
    }

    while (v15 != v13);
    do
    {
      v19 = *v12;
      v12 += 2;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = (v9 + 2);
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9 + 2;
}

uint64_t sub_1AC08CEE4(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = objc_msgSend_copy(v3, v4, v5, v6, v7);
  *(a1 + 8) = objc_msgSend_length(v3, v8, v9, v10, v11) >> 1;
  if (objc_msgSend_length(*a1, v12, v13, v14, v15))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Malformed taxonomy relation data stream, buffer size is not divisible by node identifier size");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_1AC08CF7C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);

  _Unwind_Resume(a1);
}

uint64_t sub_1AC08CFC4(uint64_t a1, uint64_t a2)
{
  *(a1 + 31) = 3;
  *(a1 + 8) = 4092732;
  *(a1 + 55) = 4;
  strcpy((a1 + 32), "</s>");
  *(a1 + 79) = 5;
  strcpy((a1 + 56), "<unk>");
  *a1 = &unk_1F20D0BC8;
  sub_1AC0E436C(a1 + 96);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_1AC0E48AC(a1 + 96, v5, v6);
  if (v12.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AC10AE94(&v12, v10);
    if (v11 >= 0)
    {
      v9 = v10;
    }

    else
    {
      v9 = v10[0];
    }

    std::runtime_error::runtime_error(exception, v9);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AC10AB70(&v12);
  return a1;
}

void sub_1AC08D0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_1AC10AB70(&a15);
      sub_1AC0E450C(v15 + 96);
      sub_1AC08D164(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t sub_1AC08D164(uint64_t a1)
{
  *a1 = &unk_1F20D0C78;
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_1AC08D1F4(uint64_t a1)
{
  *a1 = &unk_1F20D0BC8;
  sub_1AC0E450C(a1 + 96);
  *a1 = &unk_1F20D0C78;
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_1AC08D2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AC08CFC4(a1, a2);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  sub_1AC0E5F2C((v5 + 96), v7, v8, &v10);
  sub_1AC10AB70(&v10);
  return a1;
}

const void *sub_1AC08D31C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (((*a1)[10])(a1) <= a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::to_string(&v12, a2);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v12;
    }

    else
    {
      v10 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    sub_1AC08E2B0(exception, v10, size);
    __cxa_throw(exception, &unk_1F20D0C28, sub_1AC08D4C0);
  }

  result = sub_1AC0EF05C(a1 + 12, a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  a3[23] = v7;
  if (v7)
  {
    result = memmove(a3, result, v7);
    a3[v8] = 0;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_1AC08D484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_1AC08D4C0(uint64_t a1)
{
  *a1 = &unk_1F20D0CE8;
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  std::exception::~exception(a1);
}

uint64_t sub_1AC08D534(uint64_t a1, char *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v26 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
    *(&__dst + __len) = 0;
    if (*__src == 60 && __src[__len - 1] == 62)
    {
      if ((v26 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if ((v26 & 0x80u) == 0)
      {
        v7 = v26;
      }

      else
      {
        v7 = v25;
      }

      v8 = sub_1AC0EEE94((a1 + 96), p_dst, v7);
      goto LABEL_34;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
  }

  *&v22.__r_.__value_.__r.__words[1] = 0uLL;
  v23 = 0;
  if ((v26 & 0x80u) == 0)
  {
    v9 = &__dst;
  }

  else
  {
    v9 = __dst;
  }

  if ((v26 & 0x80u) == 0)
  {
    v10 = v26;
  }

  else
  {
    v10 = v25;
  }

  sub_1AC0E8044(a1 + 96, v9, v10, &v22.__r_.__value_.__l.__size_, &v22);
  if (v22.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AC10AE94(&v22, v20);
    if (v21 >= 0)
    {
      v19 = v20;
    }

    else
    {
      v19 = v20[0];
    }

    std::runtime_error::runtime_error(exception, v19);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AC10AB70(&v22);
  v12 = v22.__r_.__value_.__r.__words[2];
  size = v22.__r_.__value_.__l.__size_;
  if (v22.__r_.__value_.__r.__words[2] - v22.__r_.__value_.__l.__size_ == 8)
  {
    v13 = *(a1 + 31);
    if (v13 < 0)
    {
      v14 = *(a1 + 8);
      v13 = *(a1 + 16);
    }

    else
    {
      v14 = a1 + 8;
    }

    v15 = *v22.__r_.__value_.__l.__size_;
    if (v15 == (*(*a1 + 32))(a1, v14, v13))
    {
      v16 = v22.__r_.__value_.__l.__size_;
      size = (v22.__r_.__value_.__l.__size_ + 4);
      goto LABEL_31;
    }

    v12 = v22.__r_.__value_.__r.__words[2];
    size = v22.__r_.__value_.__l.__size_;
  }

  v16 = size;
  if (v12 - size != 4)
  {
    v8 = sub_1AC0EEE94((a1 + 96), "<unk>", 5);
    v16 = v22.__r_.__value_.__l.__size_;
    if (!v22.__r_.__value_.__l.__size_)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_31:
  v8 = *size;
LABEL_33:
  v22.__r_.__value_.__r.__words[2] = v16;
  operator delete(v16);
LABEL_34:
  if (v26 < 0)
  {
    operator delete(__dst);
  }

  return v8;
}

void sub_1AC08D794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((a24 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1AC08D820(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = (*(*a1 + 80))(a1);
  if (v4)
  {
    v5 = 0;
    do
    {
      (*(*a1 + 40))(__p, a1, v5);
      v8 = __p;
      *(sub_1AC08E97C(a2, __p) + 14) = v5;
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      v5 = (v5 + 1);
    }

    while (v4 != v5);
  }
}

void sub_1AC08D948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1AC08E8F8(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

__n128 sub_1AC08D970@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  v3 = (a2 + 1);
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = (*(*a1 + 80))(a1);
  if (v4)
  {
    for (i = 0; i != v4; i = (i + 1))
    {
      (*(*a1 + 40))(&v10, a1, i);
      v7 = *v3;
      if (!*v3)
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v8 = v7;
          v9 = *(v7 + 8);
          if (i >= v9)
          {
            break;
          }

          v7 = *v8;
          if (!*v8)
          {
            goto LABEL_10;
          }
        }

        if (v9 >= i)
        {
          break;
        }

        v7 = v8[1];
        if (!v7)
        {
          goto LABEL_10;
        }
      }

      if (*(v8 + 63) < 0)
      {
        operator delete(v8[5]);
      }

      result = v10;
      *(v8 + 5) = v10;
      v8[7] = v11;
    }
  }

  return result;
}

void sub_1AC08DB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1AC08EAF4(v15, *(v15 + 8));
    _Unwind_Resume(a1);
  }

  sub_1AC08EAF4(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

void sub_1AC08DB6C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *&v15.__r_.__value_.__r.__words[1] = 0uLL;
  v16 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1AC0674A0(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  if (v14 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v14 >= 0)
  {
    v8 = HIBYTE(v14);
  }

  else
  {
    v8 = __p[1];
  }

  sub_1AC0E8044(a1 + 96, v7, v8, &v15.__r_.__value_.__l.__size_, &v15);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (v15.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AC10AE94(&v15, __p);
    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    std::runtime_error::runtime_error(exception, v11);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AC10AB70(&v15);
  if (a3)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "prepending BOS not implemented!");
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v9 = *&v15.__r_.__value_.__r.__words[1];
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (*(&v9 + 1) != v9)
  {
    if (((*(&v9 + 1) - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  if (v9)
  {
    v15.__r_.__value_.__r.__words[2] = v9;
    operator delete(v9);
  }
}

void sub_1AC08DDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, void *__p, uint64_t a18)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_1AC08DE74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  v4 = a2[1];
  v10 = 0;
  v11 = 0;
  __p = 0;
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  sub_1AC0E877C(a1 + 96, &__p, a3, &v12);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v12.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AC10AE94(&v12, &__p);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    std::runtime_error::runtime_error(exception, p_p);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_1AC10AB70(&v12);
}

void sub_1AC08E03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_1AC10AB70(&a15);
      if ((*(v15 + 23) & 0x80000000) == 0)
      {
        _Unwind_Resume(a1);
      }

      operator delete(*v15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_1AC08E0CC(uint64_t a1)
{
  *a1 = &unk_1F20D0BC8;
  sub_1AC0E450C(a1 + 96);
  *a1 = &unk_1F20D0C78;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      operator delete(*(a1 + 8));
LABEL_4:

      JUMPOUT(0x1AC5AC440);
    }
  }

  else if ((*(a1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 32));
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  goto LABEL_9;
}

void sub_1AC08E190(uint64_t a1@<X0>, unsigned int **a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v3 = *a2;
  v4 = a2[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_1AC08E490(a3, v5, v3, v5, v4);
}

void sub_1AC08E1CC(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v3 = *a2;
  v4 = a2[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_1AC08E6A8(a3, v5, v3, v5, v4);
}

BOOL sub_1AC08E228(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  v5 = sub_1AC0EEE94((a1 + 96), a2, v4);
  v6 = *(a1 + 79);
  if (v6 < 0)
  {
    v7 = *(a1 + 56);
    v6 = *(a1 + 64);
  }

  else
  {
    v7 = a1 + 56;
  }

  return v5 != (*(*a1 + 32))(a1, v7, v6);
}

uint64_t sub_1AC08E2B0(uint64_t a1, const void *a2, size_t __len)
{
  *a1 = &unk_1F20D0CE8;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, a2, __len);
  }

  __dst.__r_.__value_.__s.__data_[__len] = 0;
  v5 = std::string::insert(&__dst, 0, "OutOfVocabularyError: ", 0x16uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  *(a1 + 24) = *(&v5->__r_.__value_.__l + 2);
  *(a1 + 8) = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1AC08E3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::exception::~exception(v15);
    _Unwind_Resume(a1);
  }

  std::exception::~exception(v15);
  _Unwind_Resume(a1);
}

void sub_1AC08E400(std::exception *this)
{
  this->__vftable = &unk_1F20D0CE8;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1AC5AC440);
}

uint64_t sub_1AC08E474(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_1AC08E490(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, unsigned int *a5)
{
  v24 = a1;
  v25 = 0;
  if (a3 != a5)
  {
    for (i = a3; i != a5; ++i)
    {
      v11 = *i;
      (*(**a2 + 40))(__p);
      v13 = *(a1 + 8);
      v12 = *(a1 + 16);
      if (v13 < v12)
      {
        v9 = *__p;
        *(v13 + 16) = v23;
        *v13 = v9;
        v10 = v13 + 24;
      }

      else
      {
        v14 = *a1;
        v15 = v13 - *a1;
        v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3) + 1;
        if (v16 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1AC060AAC();
        }

        v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 3);
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0x555555555555555)
        {
          v18 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          if (v18 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1AC066FD4();
        }

        v19 = 8 * (v15 >> 3);
        *v19 = *__p;
        *(v19 + 16) = v23;
        __p[1] = 0;
        v23 = 0;
        __p[0] = 0;
        v10 = v19 + 24;
        v20 = v19 - v15;
        memcpy((v19 - v15), v14, v15);
        *a1 = v20;
        *(a1 + 8) = v10;
        *(a1 + 16) = 0;
        if (v14)
        {
          operator delete(v14);
          v21 = SHIBYTE(v23);
          *(a1 + 8) = v10;
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          continue;
        }
      }

      *(a1 + 8) = v10;
    }
  }
}

void sub_1AC08E66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void ***a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1AC06AFE0(&a16);
    _Unwind_Resume(a1);
  }

  sub_1AC06AFE0(&a16);
  _Unwind_Resume(a1);
}

void sub_1AC08E6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  for (i = a3; i != a5; i += 24)
  {
    v8 = sub_1AC08E81C(&v17);
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v10 < v9)
    {
      *v10 = v8;
      v7 = (v10 + 1);
    }

    else
    {
      v11 = *a1;
      v12 = v10 - *a1;
      v13 = v12 >> 2;
      v14 = (v12 >> 2) + 1;
      if (v14 >> 62)
      {
        sub_1AC060AAC();
      }

      v15 = v9 - v11;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (!(v16 >> 62))
        {
          operator new();
        }

        sub_1AC066FD4();
      }

      *(4 * v13) = v8;
      v7 = 4 * v13 + 4;
      memcpy(0, v11, v12);
      *a1 = 0;
      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    *(a1 + 8) = v7;
  }
}

void sub_1AC08E7FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AC08E81C(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    sub_1AC0674A0(__p, *v1, *(v1 + 1));
  }

  else
  {
    v3 = *v1;
    v9 = *(v1 + 2);
    *__p = v3;
  }

  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  result = (*(**v2 + 32))(*v2, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    v7 = result;
    operator delete(__p[0]);
    return v7;
  }

  return result;
}

void sub_1AC08E8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC08E8F8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1AC08E8F8(a1, *a2);
    sub_1AC08E8F8(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void *sub_1AC08E97C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_1AC08EAF4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1AC08EAF4(a1, *a2);
    sub_1AC08EAF4(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void sub_1AC0900D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(exception_object);
    sub_1AC070210(v11, v10);
    __cxa_end_catch();
    JUMPOUT(0x1AC0900B8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC090338(uint64_t a1, void *a2, float a3)
{
  v13 = a2;
  *&v5 = a3;
  v10 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v6, v7, v8, v9, v5);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v11, v10, v13, v12);
}

uint64_t sub_1AC09056C(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer instance is nil.");
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer is not an instance of CSUEspressoBuffer.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = objc_msgSend_espressoBuffer(v1, v2, v3, v4, v5);

  return v6;
}

void sub_1AC090624(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);

  _Unwind_Resume(a1);
}

void sub_1AC090B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_1AC066D78(&a28);

  _Unwind_Resume(a1);
}

uint64_t sub_1AC090CD8(uint64_t a1, const char **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, v5, v6);
  }

  *(a1 + v7) = 0;
  v8 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_1F20D01C0;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v11 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1AC090E2C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_1AC11F5D8(v1);
  _Unwind_Resume(a1);
}

id sub_1AC090E50()
{
  if (qword_1EB54A428 == -1)
  {
    v1 = qword_1EB54A120;
  }

  else
  {
    sub_1AC11F9B4();
    v1 = qword_1EB54A120;
  }

  return v1;
}

uint64_t sub_1AC090EA8()
{
  v0 = os_log_create("com.apple.CoreSceneUnderstanding", "default");
  v1 = qword_1EB54A120;
  qword_1EB54A120 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

__int16 sub_1AC091E1C@<H0>(uint64_t a1@<X0>, float16x8_t *a2@<X1>)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = **(a1 + 32);
    if (v2 < 4)
    {
      v4 = 0;
      goto LABEL_13;
    }

    if (v2 >= 0x10)
    {
      v4 = v2 & 0xFFFFFFFFFFFFFFF0;
      v5 = v3 + 2;
      v6 = a2 + 1;
      v7 = v2 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v9 = v5[-2];
        v8 = v5[-1];
        v11 = *v5;
        v10 = v5[1];
        v5 += 4;
        v12 = vcvt_hight_f16_f32(vcvt_f16_f32(v9), v8);
        _Q0 = vcvt_hight_f16_f32(vcvt_f16_f32(v11), v10);
        v6[-1] = v12;
        *v6 = _Q0;
        v6 += 2;
        v7 -= 16;
      }

      while (v7);
      if (v2 == v4)
      {
        return _Q0.i16[0];
      }

      if ((v2 & 0xC) == 0)
      {
LABEL_13:
        v19 = v2 - v4;
        v20 = &a2->i16[v4];
        v21 = &v3->i32[v4];
        do
        {
          v22 = *v21++;
          _Q0.i32[0] = v22;
          __asm { FCVT            H0, S0 }

          *v20++ = _Q0.i16[0];
          --v19;
        }

        while (v19);
        return _Q0.i16[0];
      }
    }

    else
    {
      v4 = 0;
    }

    v14 = v4;
    v4 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = (v3 + 4 * v14);
    v16 = (a2->i64 + 2 * v14);
    v17 = v14 - (v2 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v18 = *v15++;
      *_Q0.i8 = vcvt_f16_f32(v18);
      *v16++ = _Q0.i64[0];
      v17 += 4;
    }

    while (v17);
    if (v2 != v4)
    {
      goto LABEL_13;
    }
  }

  return _Q0.i16[0];
}

void sub_1AC091F60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  NSLog(&cfstr_PrintingMlmuti.isa);
  if (a3 >= 4)
  {
    v5 = 0;
    do
    {
      NSLog(&cfstr_IndexZuValueF.isa, v5, *(a2 + 4 * v5));
      ++v5;
    }

    while (a3 >> 2 != v5);
  }
}

uint64_t sub_1AC092F20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC092F38(void *a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x1E695FED0]);
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v9 = objc_msgSend_initWithDataPointer_shape_dataType_strides_deallocator_error_(v4, v8, a2, v5, 65568, v6, 0, &obj);
  objc_storeStrong((v7 + 40), obj);
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_1AC0933D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1AC06A514(v19);
  operator delete(v18);

  _Unwind_Resume(a1);
}

void sub_1AC093748(_Unwind_Exception *a1, int a2)
{
  v6 = v5;

  if (a2 == 1)
  {
    v9 = __cxa_begin_catch(a1);
    sub_1AC070210(v9, v2);
    __cxa_end_catch();
    JUMPOUT(0x1AC093708);
  }

  _Unwind_Resume(a1);
}

void sub_1AC093B50(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(a1);
    sub_1AC070210(v21, a11);
    __cxa_end_catch();
    if (*MEMORY[0x1E69E9840] != a18)
    {
      JUMPOUT(0x1AC093B4CLL);
    }

    JUMPOUT(0x1AC0938C0);
  }

  _Unwind_Resume(a1);
}

void sub_1AC094684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v34)
  {
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1AC094794(uint64_t a1, float32x4_t *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v8 != v7)
  {
    v9 = v7 - v8 - 4;
    if (v9 < 0x1C)
    {
      v10 = a2;
      v11 = *(a1 + 32);
      do
      {
LABEL_7:
        v18 = *v11++;
        *v10++ = v18;
      }

      while (v11 != v7);
      goto LABEL_8;
    }

    v12 = (v9 >> 2) + 1;
    v13 = v12 & 0x7FFFFFFFFFFFFFF8;
    v10 = &a2->f32[v13];
    v11 = &v8->u32[v13];
    v14 = v8 + 1;
    v15 = a2 + 1;
    v16 = v12 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v17 = vcvtq_f32_u32(*v14);
      v15[-1] = vcvtq_f32_u32(v14[-1]);
      *v15 = v17;
      v14 += 2;
      v15 += 2;
      v16 -= 8;
    }

    while (v16);
    if (v12 != (v12 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

void *sub_1AC094854(void *result, uint64_t a2)
{
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  v3 = *(a2 + 32);
  v2 = *(a2 + 40);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  return result;
}

void sub_1AC0948D4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0948F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

__n128 sub_1AC094908(__n128 *a1, __n128 *a2)
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

void sub_1AC09492C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

float sub_1AC094944(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_strides(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 1, v9, v10);
  v16 = objc_msgSend_intValue(v11, v12, v13, v14, v15);

  v18 = *(a1 + 48);
  if (v18)
  {
    v19 = 0;
    v20 = &a2[2 * *(a1 + 56) * v16];
    do
    {
      _H0 = *&v20[2 * v19];
      __asm { FCVT            S0, H0 }

      *(*(*(*(a1 + 40) + 8) + 48) + 4 * v19++) = result;
    }

    while (v18 != v19);
  }

  return result;
}

void sub_1AC0957CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, void *a20)
{
  sub_1AC0959BC(&a20);
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_1AC09581C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_1AC069094(v18 - 160);
  v20 = *(v18 - 144);
  if (v20)
  {
    *(v18 - 136) = v20;
    operator delete(v20);
    sub_1AC069094(&a18);
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1AC095968);
}

void sub_1AC095850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v20 = *(v18 - 144);
  if (v20)
  {
    operator delete(v20);
    sub_1AC069094(&a18);
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1AC095968);
}

void sub_1AC095878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_1AC069094(&a18);
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_1AC095898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  v41 = *(v39 - 216);
  if (v41)
  {
    *(v39 - 208) = v41;
    operator delete(v41);
  }

  sub_1AC09790C((v39 - 192));
  sub_1AC069094(&a18);
  operator delete(a11);
  _Unwind_Resume(a1);
}

void sub_1AC095904(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (*(v16 - 169) < 0)
  {
    operator delete(*(v16 - 192));
  }

  sub_1AC069094(v16 - 216);
  JUMPOUT(0x1AC095990);
}

void sub_1AC09594C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_1AC09790C((v18 - 192));
  sub_1AC069094(&a18);
  operator delete(__p);
  _Unwind_Resume(a1);
}

void **sub_1AC0959BC(void **a1)
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
        v7 = *(v5 - 4);
        v5 -= 32;
        v6 = v7;
        if (v7)
        {
          *(v3 - 3) = v6;
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

void sub_1AC09630C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
    if (!a14)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!a14)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  _Unwind_Resume(a1);
}

void sub_1AC0964C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_strides(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 1, v9, v10);
  v16 = objc_msgSend_intValue(v11, v12, v13, v14, v15);

  v17 = *(a1 + 56) * v16;
  v18 = &a2[2 * v17];
  v19 = v16 + v17;
  v20 = v18 + 1;
  if (v17 == v19 || v20 == &a2[2 * v19])
  {
    v24 = &a2[2 * v17];
  }

  else
  {
    v22 = *v18;
    v23 = 2 * v16 - 2;
    v24 = v18;
    v25 = v18 + 1;
    do
    {
      v26 = *v25++;
      v27 = v26;
      if (v22 < v26)
      {
        v22 = v27;
        v24 = v20;
      }

      v20 = v25;
      v23 -= 2;
    }

    while (v23);
  }

  *(*(*(a1 + 40) + 8) + 24) = v24;
  *(*(*(a1 + 48) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) - v18) >> 1;
}

float sub_1AC0965D0(uint64_t a1, uint64_t a2)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  *(a2 + 4 * *(a1 + 40) + 4) = result;
  return result;
}

void sub_1AC09676C(uint64_t a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1AC096C38(a1, &__p);
  v3 = __p;
  v4 = v21;
  if (__p != v21)
  {
    v5 = 0;
    do
    {
      v7 = v3[1];
      v6 = v3[2];
      if (v6 != v7)
      {
        if (((v6 - v7) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AC060AAC();
      }

      v8 = *(v3 + 1);
      v9 = a2[2];
      if (v5 < v9)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *(v5 + 24) = v8;
        v5 += 32;
      }

      else
      {
        v10 = *a2;
        v11 = v5 - *a2;
        v12 = (v11 >> 5) + 1;
        if (v12 >> 59)
        {
          sub_1AC060AAC();
        }

        v13 = v9 - v10;
        if (v13 >> 4 > v12)
        {
          v12 = v13 >> 4;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFE0)
        {
          v14 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          if (!(v14 >> 59))
          {
            operator new();
          }

          sub_1AC066FD4();
        }

        v15 = 32 * (v11 >> 5);
        *v15 = 0;
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        *(v15 + 24) = v8;
        v5 = v15 + 32;
        memcpy(0, v10, v11);
        *a2 = 0;
        a2[2] = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      a2[1] = v5;
      v3 += 6;
    }

    while (v3 != v4);
    v3 = __p;
  }

  if (!v3)
  {
    return;
  }

  v16 = v21;
  v17 = v3;
  if (v21 == v3)
  {
    goto LABEL_32;
  }

  do
  {
    v18 = *(v16 - 1);
    if (!v18 || atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = *(v16 - 5);
      if (!v19)
      {
        goto LABEL_24;
      }

LABEL_28:
      *(v16 - 4) = v19;
      operator delete(v19);
      goto LABEL_24;
    }

    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = *(v16 - 5);
    if (v19)
    {
      goto LABEL_28;
    }

LABEL_24:
    v16 -= 6;
  }

  while (v16 != v3);
  v17 = __p;
LABEL_32:
  v21 = v3;
  operator delete(v17);
}

void sub_1AC0969D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v11)
  {
    operator delete(v11);
  }

  sub_1AC09790C(&a10);
  sub_1AC0959BC(v10);
  _Unwind_Resume(a1);
}

void sub_1AC096A24(uint64_t a1, void *a2, uint64_t *a3, float a4)
{
  v19 = a4;
  v7 = (*(**(a1 + 8) + 16))(*(a1 + 8), (a2[1] - *a2) >> 2);
  v18 = v7;
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 4);
  if (*a1 <= v10)
  {
    if (v7 <= *(v8 + 4))
    {
      return;
    }

    sub_1AC09887C(v8, *(a1 + 32), &v21, v10);
    v12 = *(a1 + 32);
    v13 = *(v12 - 8);
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v14 = *(v12 - 40);
    if (v14)
    {
      *(v12 - 32) = v14;
      operator delete(v14);
    }

    *(a1 + 32) = v12 - 48;
    if ((v12 - 48) >= *(a1 + 40))
    {
      v12 = sub_1AC0979DC(a1 + 24, &v19, &v18, a2, a3);
    }

    else
    {
      sub_1AC097B40(v12 - 48, &v19, &v18, a2, a3);
      *(a1 + 32) = v12;
    }

    *(a1 + 32) = v12;
    v15 = *(a1 + 24);
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v15) >> 4);
    v17 = &v22;
    v11 = v12;
  }

  else
  {
    if (v9 >= *(a1 + 40))
    {
      v11 = sub_1AC0979DC(a1 + 24, &v19, &v18, a2, a3);
    }

    else
    {
      sub_1AC097B40(*(a1 + 32), &v19, &v18, a2, a3);
      v11 = v9 + 48;
      *(a1 + 32) = v9 + 48;
    }

    *(a1 + 32) = v11;
    v15 = *(a1 + 24);
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v15) >> 4);
    v17 = &v20;
  }

  sub_1AC098178(v15, v11, v17, v16);
}

void sub_1AC096C38(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  v6 = (a1 + 24);
  v5 = *(a1 + 24);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_1AC098EB4(&v21, v5, v3, 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 4));
  v7 = *v4;
  v8 = *v6;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v19 = a2;
  v20 = 0;
  if (v7 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v10 = v21;
  v9 = v22;
  if (v21 != v22)
  {
    while (1)
    {
      v11 = *a2 + v9 - v10;
      *(v11 - 48) = *v10;
      if ((v11 - 48) != v10)
      {
        sub_1AC098720((v11 - 40), v10[1], v10[2], (v10[2] - v10[1]) >> 2);
      }

      v13 = v10[4];
      v12 = v10[5];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v14 = *(v11 - 8);
      *(v11 - 16) = v13;
      *(v11 - 8) = v12;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      sub_1AC09887C(v21, v22, &v19, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 4));
      v15 = v22;
      v16 = *(v22 - 1);
      if (v16)
      {
        if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v17 = *(v15 - 5);
      if (v17)
      {
        goto LABEL_17;
      }

LABEL_6:
      v9 = v15 - 6;
      v22 = v15 - 6;
      v10 = v21;
      if (v21 == v15 - 6)
      {
        goto LABEL_20;
      }
    }

    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(v15 - 5);
    if (!v17)
    {
      goto LABEL_6;
    }

LABEL_17:
    *(v15 - 4) = v17;
    operator delete(v17);
    goto LABEL_6;
  }

LABEL_20:
  if (v10)
  {
    v22 = v10;
    operator delete(v10);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1AC096EC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  v5 = va_arg(va1, void);
  sub_1AC099030(va);
  sub_1AC09790C(va1);
  _Unwind_Resume(a1);
}

void sub_1AC096EE4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1AC10B290(exception_object);
}

void sub_1AC096EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AC09790C(v4);
  sub_1AC09790C(va);
  _Unwind_Resume(a1);
}

void sub_1AC096F18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v8 = **a4;
  if (v8)
  {
    objc_msgSend_nextTokensForInputs_AndforMaskPosition_(v8, a2, a3, a5, a5);
    v9 = v11;
    if (v12 != v11)
    {
      if (((v12 - v11) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AC060AAC();
    }
  }

  else
  {
    v9 = 0;
  }

  **(a4 + 8) = v5;
  memset(v10, 0, 25);
  if (v9)
  {
    operator delete(v9);
  }

  *a1 = 0u;
  *(a1 + 16) = *&v10[0];
  *(a1 + 24) = *(v10 + 8);
  *(a1 + 40) = 0;
}

void sub_1AC09733C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1AC069094(va);
  operator delete(v14);
  v17 = *(v15 - 88);
  if (v17)
  {
    *(v15 - 80) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1AC0973D8(uint64_t a1, void *a2, void *a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v5 = a2[4];
  v11 = a2[3];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1AC099110(&v13, *(a1 + 84), &v9);
  if (v9 != v10)
  {
    v6 = a3[1];
    if (v6 != *a3)
    {
      if (((v6 - *a3) & 0x8000000000000000) == 0)
      {
        v7 = v6 - *a3;
        operator new();
      }

      sub_1AC060AAC();
    }

    operator new();
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v8 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

void sub_1AC0977BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23)
{
  sub_1AC069094(&a20);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AC097890(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void **sub_1AC09790C(void **a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
    goto LABEL_12;
  }

  do
  {
    v5 = *(v3 - 1);
    if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = *(v3 - 5);
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      *(v3 - 4) = v6;
      operator delete(v6);
      goto LABEL_4;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = *(v3 - 5);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_4:
    v3 -= 48;
  }

  while (v3 != v2);
  v4 = *a1;
LABEL_12:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

uint64_t sub_1AC0979DC(uint64_t a1, int *a2, int *a3, void *a4, uint64_t *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1AC060AAC();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v14 = 16 * ((*(a1 + 8) - *a1) >> 4);
  sub_1AC097B40(v14, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *(a1 + 8);
  v11 = (v14 + *a1 - v10);
  sub_1AC097CC8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_1AC097B2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC098088(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC097B40(uint64_t a1, int *a2, int *a3, void *a4, uint64_t *a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = a4[1];
  if (v8 != *a4)
  {
    if (((v8 - *a4) & 0x8000000000000000) == 0)
    {
      v9 = v8 - *a4;
      operator new();
    }

    sub_1AC060AAC();
  }

  v12 = *a5;
  v11 = a5[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v6;
  *(a1 + 4) = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v12;
  *(a1 + 40) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  return a1;
}

void sub_1AC097CAC(void *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  sub_1AC10B290(a1);
}

void sub_1AC097CC8(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v10 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_1AC097E7C(a1, a4, v7);
      v7 += 6;
      a4 = v10 + 6;
      v10 += 6;
    }

    while (v7 != a3);
    if (v5 != a3)
    {
      while (1)
      {
        v8 = v5[5];
        if (v8)
        {
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        v9 = v5[1];
        if (v9)
        {
          goto LABEL_10;
        }

LABEL_6:
        v5 += 6;
        if (v5 == a3)
        {
          return;
        }
      }

      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      v9 = v5[1];
      if (!v9)
      {
        goto LABEL_6;
      }

LABEL_10:
      v5[2] = v9;
      operator delete(v9);
      goto LABEL_6;
    }
  }
}

void sub_1AC097E7C(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  a2[1] = 0;
  *a2 = v3;
  a2[2] = 0;
  a2[3] = 0;
  v5 = a3[1];
  v4 = a3[2];
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v6 = a3[5];
  a2[4] = a3[4];
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1AC097F28(void *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  sub_1AC10B290(a1);
}

uint64_t sub_1AC097F44(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      while (1)
      {
        v6 = *(v4 - 8);
        if (v6)
        {
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        v7 = *(v4 - 40);
        if (v7)
        {
          goto LABEL_8;
        }

LABEL_4:
        v4 -= 48;
        if (v4 == v5)
        {
          return a1;
        }
      }

      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      v7 = *(v4 - 40);
      if (!v7)
      {
        goto LABEL_4;
      }

LABEL_8:
      *(v4 - 32) = v7;
      operator delete(v7);
      goto LABEL_4;
    }
  }

  return a1;
}

void *sub_1AC09800C(void *a1)
{
  v2 = a1[5];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void **sub_1AC098088(void **a1)
{
  sub_1AC0980BC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AC0980BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v1)
  {
    while (1)
    {
      *(a1 + 16) = v2 - 48;
      v4 = *(v2 - 8);
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v5 = *(v2 - 40);
      if (v5)
      {
        goto LABEL_7;
      }

LABEL_3:
      v2 = *(a1 + 16);
      if (v2 == v1)
      {
        return;
      }
    }

    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = *(v2 - 40);
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v2 - 32) = v5;
    operator delete(v5);
    goto LABEL_3;
  }
}

void sub_1AC098178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = a1 + 48 * (v4 >> 1);
    v8 = *(v7 + 4);
    v10 = *(v7 + 8);
    v9 = *(v7 + 16);
    if (v9 != v10)
    {
      if (((v9 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AC060AAC();
    }

    v14 = *(v7 + 40);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a2 - 44);
    v13 = *(a2 - 40);
    v12 = *(a2 - 32);
    if (v12 != v13)
    {
      if (((v12 - v13) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AC060AAC();
    }

    v15 = *(a2 - 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }
    }

    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    if (v8 > v11)
    {
      v16 = *(a2 - 48);
      v17 = *(a2 - 44);
      v19 = *(a2 - 40);
      v18 = *(a2 - 32);
      if (v18 != v19)
      {
        if (((v18 - v19) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AC060AAC();
      }

      v20 = a2 - 48;
      v30 = *(a2 - 16);
      v31 = *(a2 - 8);
      v32 = v30;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      do
      {
        v21 = v7;
        *v20 = *v7;
        if (v20 != v7)
        {
          sub_1AC098720((v20 + 8), *(v7 + 8), *(v7 + 16), (*(v7 + 16) - *(v7 + 8)) >> 2);
        }

        v23 = *(v7 + 32);
        v22 = *(v7 + 40);
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v24 = *(v20 + 40);
        *(v20 + 32) = v23;
        *(v20 + 40) = v22;
        if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v24->__on_zero_shared)(v24);
          std::__shared_weak_count::__release_weak(v24);
        }

        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = a1 + 48 * v6;
        v25 = *(v7 + 4);
        v27 = *(v7 + 8);
        v26 = *(v7 + 16);
        if (v26 != v27)
        {
          if (((v26 - v27) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1AC060AAC();
        }

        v28 = *(v7 + 40);
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v31->__on_zero_shared)(v31);
            std::__shared_weak_count::__release_weak(v31);
          }
        }

        if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        v20 = v21;
      }

      while (v25 > v17);
      *v21 = v16;
      *(v21 + 4) = v17;
      sub_1AC098720((v21 + 8), 0, 0, 0);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = *(v21 + 40);
      *(v21 + 32) = v32;
      *(v21 + 40) = v31;
      if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }

      if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }
    }
  }
}

char *sub_1AC098720(char **a1, char *a2, uint64_t a3, unint64_t a4)
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

    sub_1AC060AAC();
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

void sub_1AC09887C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return;
  }

  v26 = *a1;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v8 = a1[1];
  v7 = a1[2];
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v9 = a1[5];
  v30 = a1[4];
  v31 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = sub_1AC098BD0(a1, a3, a4);
  v11 = v10;
  v12 = (a2 - 48);
  if (a2 - 48 == v10)
  {
    *v10 = v26;
    if (&v26 != v10)
    {
      sub_1AC098720((v10 + 8), __p, v28, (v28 - __p) >> 2);
    }

    v24 = v30;
    v23 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = *(v11 + 40);
    *(v11 + 32) = v24;
    *(v11 + 40) = v23;
    if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }

    goto LABEL_20;
  }

  v13 = *(a2 - 40);
  *v10 = *(a2 - 48);
  sub_1AC098720((v10 + 8), v13, *(a2 - 32), (*(a2 - 32) - v13) >> 2);
  v15 = *(a2 - 16);
  v14 = *(a2 - 8);
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(v11 + 40);
  *(v11 + 32) = v15;
  *(v11 + 40) = v14;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    *v12 = v26;
    if (v12 == &v26)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *v12 = v26;
  if (v12 != &v26)
  {
LABEL_13:
    sub_1AC098720((a2 - 40), __p, v28, (v28 - __p) >> 2);
  }

LABEL_14:
  v17 = v11 + 48;
  v19 = v30;
  v18 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = *(a2 - 8);
  *(a2 - 16) = v19;
  *(a2 - 8) = v18;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v21 = v17;
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    v17 = v21;
  }

  sub_1AC098178(a1, v17, a3, 0xAAAAAAAAAAAAAAABLL * ((v17 - a1) >> 4));
LABEL_20:
  v22 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

void sub_1AC098BA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1AC10B290(a1);
}

uint64_t sub_1AC098BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    a1 += 48 * v5 + 48;
    v8 = 2 * v5;
    v5 = (2 * v5) | 1;
    v9 = v8 + 2;
    if (v8 + 2 < v3)
    {
      v10 = *(a1 + 4);
      v12 = *(a1 + 8);
      v11 = *(a1 + 16);
      if (v11 != v12)
      {
        if (((v11 - v12) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AC060AAC();
      }

      v16 = v6;
      v17 = *(a1 + 40);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *(a1 + 52);
      v15 = *(a1 + 56);
      v14 = *(a1 + 64);
      if (v14 != v15)
      {
        if (((v14 - v15) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AC060AAC();
      }

      v18 = *(a1 + 88);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      v6 = v16;
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
        v3 = a3;
      }

      else
      {
        v3 = a3;
      }

      if (v10 > v13)
      {
        a1 += 48;
        v5 = v9;
      }
    }

    *v7 = *a1;
    if (v7 != a1)
    {
      sub_1AC098720((v7 + 8), *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 2);
    }

    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = *(v7 + 40);
    *(v7 + 32) = v20;
    *(v7 + 40) = v19;
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }
  }

  while (v5 <= v6);
  return a1;
}

void sub_1AC098EB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      operator new();
    }

    sub_1AC060AAC();
  }
}

void sub_1AC099010(void *a1)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  sub_1AC10B290(a1);
}

void ***sub_1AC099030(void ***a1)
{
  if (a1[1])
  {
    return a1;
  }

  v2 = *a1;
  v3 = **a1;
  if (!v3)
  {
    return a1;
  }

  v4 = v2[1];
  v5 = **a1;
  if (v4 == v3)
  {
    goto LABEL_13;
  }

  do
  {
    v6 = *(v4 - 1);
    if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = *(v4 - 5);
      if (!v7)
      {
        goto LABEL_5;
      }

LABEL_9:
      *(v4 - 4) = v7;
      operator delete(v7);
      goto LABEL_5;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = *(v4 - 5);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_5:
    v4 -= 48;
  }

  while (v4 != v3);
  v5 = **a1;
LABEL_13:
  v2[1] = v3;
  operator delete(v5);
  return a1;
}

void sub_1AC099110(void *a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  if (((a1[1] - *a1) >> 2) >= 1)
  {
    operator new();
  }

  sub_1AC099448(0, 0, 0, 0);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_1AC09930C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (v13)
  {
    operator delete(v13);
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AC09934C(uint64_t a1)
{
  (*(**(a1 + 128) + 24))(__p);
  v5 = *(a1 + 144);
  if (v13 >= 0)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v2, @"%s", v3, v4, __p);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v2, @"%s", v3, v4, __p[0]);
  }
  v6 = ;
  v10 = objc_msgSend_checkIfCaptionInDenylist_(v5, v7, v6, v8, v9);

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_1AC099420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1AC099448(void *a1, void *a2, char *a3, char *a4)
{
  if (a3 != a4)
  {
    v4 = a3;
    if (a1 != a2)
    {
      do
      {
        *v4 = *a1;
        *(v4 + 1) = *(a1++ + 1);
        v4 += 8;
      }

      while (a1 != a2 && v4 != a4);
    }

    v6 = (v4 - a3) >> 3;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7;
      do
      {
        if (v7 >= v8)
        {
          v10 = (8 * v8) >> 2;
          v11 = v10 | 1;
          v12 = &a3[8 * (v10 | 1)];
          v13 = v10 + 2;
          if (v13 < v6 && *v12 > v12[2])
          {
            v12 += 2;
            v11 = v13;
          }

          v14 = &a3[8 * v8];
          v15 = *v14;
          v16 = *v12;
          v17 = *v14;
          if (*v12 <= *v14)
          {
            v18 = *(v14 + 1);
            do
            {
              v19 = v14;
              v14 = v12;
              *v19 = v16;
              v19[1] = v12[1];
              if (v7 < v11)
              {
                break;
              }

              v20 = 2 * v11;
              v11 = (2 * v11) | 1;
              v12 = &a3[8 * v11];
              v21 = v20 + 2;
              if (v21 < v6 && *v12 > v12[2])
              {
                v12 += 2;
                v11 = v21;
              }

              v16 = *v12;
            }

            while (*v12 <= v17);
            *v14 = v15;
            *(v14 + 1) = v18;
          }
        }

        v9 = v8-- <= 0;
      }

      while (!v9);
    }

    if (a1 != a2)
    {
      if (v6 >= 2)
      {
        v22 = (a3 + 8);
        v23 = (a3 + 16);
        while (1)
        {
          if (COERCE_FLOAT(*a1) > *a3)
          {
            *a3 = *a1;
            if (v4 - a3 == 16 || *(a3 + 2) <= *(a3 + 4))
            {
              v24 = (a3 + 8);
              v25 = 1;
              v26 = *a3;
              v27 = *v22;
              v28 = *a3;
              if (*v22 <= *a3)
              {
LABEL_37:
                v29 = *(a3 + 1);
                v30 = a3;
                do
                {
                  v31 = v30;
                  v30 = v24;
                  *v31 = v27;
                  v31[1] = v24[1];
                  if (((v6 - 2) >> 1) < v25)
                  {
                    break;
                  }

                  v32 = 2 * v25;
                  v25 = (2 * v25) | 1;
                  v24 = &a3[8 * v25];
                  v33 = v32 + 2;
                  if (v33 < v6 && *v24 > v24[2])
                  {
                    v24 += 2;
                    v25 = v33;
                  }

                  v27 = *v24;
                }

                while (*v24 <= v28);
                *v30 = v26;
                *(v30 + 1) = v29;
              }
            }

            else
            {
              v24 = (a3 + 16);
              v25 = 2;
              v26 = *a3;
              v27 = *v23;
              v28 = *a3;
              if (*v23 <= *a3)
              {
                goto LABEL_37;
              }
            }
          }

          if (++a1 == a2)
          {
            goto LABEL_43;
          }
        }
      }

      do
      {
        if (COERCE_FLOAT(*a1) > *a3)
        {
          *a3 = *a1;
        }

        ++a1;
      }

      while (a1 != a2);
    }

LABEL_43:
    if (v6 >= 2)
    {
      v34 = v4;
      do
      {
        if (v6 >= 2)
        {
          v35 = 0;
          v36 = *a3;
          v37 = *(a3 + 1);
          v38 = a3;
          do
          {
            v39 = v38;
            v38 += 2 * v35 + 2;
            v40 = 2 * v35;
            v35 = (2 * v35) | 1;
            v41 = v40 + 2;
            if (v41 < v6 && *v38 > v38[2])
            {
              v38 += 2;
              v35 = v41;
            }

            *v39 = *v38;
            v39[1] = v38[1];
          }

          while (v35 <= ((v6 - 2) >> 1));
          if (v38 == v34 - 2)
          {
            *v38 = v36;
            *(v38 + 1) = v37;
          }

          else
          {
            *v38 = *(v34 - 2);
            v38[1] = *(v34 - 1);
            *(v34 - 2) = v36;
            *(v34 - 1) = v37;
            v42 = (v38 - a3 + 8) >> 3;
            v9 = v42 < 2;
            v43 = v42 - 2;
            if (!v9)
            {
              v44 = v43 >> 1;
              v45 = &a3[8 * (v43 >> 1)];
              v46 = *v38;
              v47 = *v45;
              v48 = *v38;
              if (*v45 > *v38)
              {
                v49 = *(v38 + 1);
                do
                {
                  v50 = v38;
                  v38 = v45;
                  *v50 = v47;
                  v50[1] = v45[1];
                  if (!v44)
                  {
                    break;
                  }

                  v44 = (v44 - 1) >> 1;
                  v45 = &a3[8 * v44];
                  v47 = *v45;
                }

                while (*v45 > v48);
                *v38 = v46;
                *(v38 + 1) = v49;
              }
            }
          }
        }

        v34 -= 2;
        v9 = v6-- > 2;
      }

      while (v9);
    }
  }

  return a2;
}

void sub_1AC0997F4(uint64_t a1, const std::locale *a2)
{
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  locale = a2->__locale_;
  std::locale::locale(&v17, a2 + 1);
  if (v5)
  {
    v6 = (v4 + v5);
    v7 = MEMORY[0x1E69E5318];
    v8 = v4;
    while (1)
    {
      v9 = *v8;
      v10 = std::locale::use_facet(&v17, v7);
      if ((v9 & 0x80) != 0 || (*(&v10[1].~facet + v9) & locale) == 0)
      {
        break;
      }

      ++v8;
      if (!--v5)
      {
        v8 = v6;
        break;
      }
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(a1 + 23);
  v12 = v11;
  v13 = *a1;
  if ((v11 & 0x80u) == 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a1 + 8);
  }

  v15 = v4 - v14;
  if (v11 < v4 - v14)
  {
    sub_1AC099944();
  }

  if (&v8[-v4] == -1)
  {
    if (v12 < 0)
    {
      *(a1 + 8) = v15;
      *(v13 + v15) = 0;
    }

    else
    {
      *(a1 + 23) = v15 & 0x7F;
      *(a1 + v15) = 0;
    }
  }

  else
  {
    sub_1AC09995C(a1, v15, &v8[-v4]);
  }

  std::locale::~locale(&v17);
}

uint64_t *sub_1AC09995C(uint64_t *result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 23);
    v4 = v3;
    v5 = result;
    if (v3 < 0)
    {
      v5 = *result;
      v4 = result[1];
      v6 = v4 - a2;
      if (v4 - a2 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = v4 - a2;
      }

      if (v4 - a2 <= a3)
      {
LABEL_7:
        v8 = v4 - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(result + 23) = v8 & 0x7F;
LABEL_15:
          *(v5 + v8) = 0;
          return result;
        }

LABEL_14:
        result[1] = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - a2;
      if (v3 - a2 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = v3 - a2;
      }

      if (v3 - a2 <= a3)
      {
        goto LABEL_7;
      }
    }

    v9 = result;
    memmove(v5 + a2, v5 + a2 + v7, v6 - v7);
    result = v9;
    v8 = v4 - v7;
    if ((*(v9 + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  return result;
}

void sub_1AC099A00(uint64_t a1, const std::locale *a2)
{
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = v4 + v5;
  locale = a2->__locale_;
  std::locale::locale(&v19, a2 + 1);
  v20 = locale;
  std::locale::locale(&v21, &v19);
  v7 = MEMORY[0x1E69E5318];
  while (v5)
  {
    v8 = v5;
    v9 = *(v4 + v5 - 1);
    v10 = std::locale::use_facet(&v21, v7);
    if ((v9 & 0x80) != 0)
    {
      v4 = v6;
      break;
    }

    --v6;
    v11 = *(&v10[1].~facet + v9);
    v5 = v8 - 1;
    if ((v11 & v20) == 0)
    {
      v4 += v8;
      break;
    }
  }

  std::locale::~locale(&v21);
  v12 = *(a1 + 23);
  v13 = v12;
  v14 = *a1;
  if ((v12 & 0x80u) == 0)
  {
    v15 = a1;
  }

  else
  {
    v15 = *a1;
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a1 + 8);
  }

  v16 = v4 - v15;
  if (v12 < v4 - v15)
  {
    sub_1AC099944();
  }

  v17 = v15 + v12 - v4;
  if (v17 == -1)
  {
    if (v13 < 0)
    {
      *(a1 + 8) = v16;
      *(v14 + v16) = 0;
    }

    else
    {
      *(a1 + 23) = v16 & 0x7F;
      *(a1 + v16) = 0;
    }
  }

  else
  {
    sub_1AC09995C(a1, v16, v17);
  }

  std::locale::~locale(&v19);
}

void sub_1AC099B60(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 1);
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1AC09AAB0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v15);
  MEMORY[0x1AC5AC440](v10, 0xA1C409BE6959DLL);
  sub_1AC067008(&a9);
  if (*(v12 - 65) < 0)
  {
    operator delete(*(v12 - 88));
  }

  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    sub_1AC070210(v16, v9);
    __cxa_end_catch();
    JUMPOUT(0x1AC09AA8CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AC09ACE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __cxa_free_exception(v20);
  MEMORY[0x1AC5AC440](v21, 0x20C4093837F09);
  MEMORY[0x1AC5AC440](v19, 0x20C4093837F09);
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v24 = __cxa_begin_catch(a1);
  v25 = sub_1AC070210(v24, v18);
  __cxa_end_catch();
  return v25;
}

void sub_1AC09B214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1AC066D78(va);
  _Unwind_Resume(a1);
}

void sub_1AC09B228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_1AC06C728(&a20);
  sub_1AC06C058(&a30);
  sub_1AC06A514(&__p);

  _Unwind_Resume(a1);
}

uint64_t sub_1AC09B394(uint64_t result, char *a2)
{
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AC063200(&v10, a2);
    sub_1AC063E68("PixelBufferTransfer operation [", &v10, &v11);
    sub_1AC063FAC("] failed. Status = ", &v11, &v12);
    std::to_string(&v9, v2);
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v9;
    }

    else
    {
      v5 = v9.__r_.__value_.__r.__words[0];
    }

    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v9.__r_.__value_.__l.__size_;
    }

    v7 = std::string::append(&v12, v5, size);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v13);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1AC09B48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v32);
    goto LABEL_14;
  }

LABEL_12:
  if (!v33)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_1AC09B578(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v12 = a4;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Nil taxonomy object.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v13 = objc_msgSend__vocabularyNamed_(v7, v9, v8, v10, v11);
  if (!v13)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    sub_1AC063200(&v43, "Invalid vocabulary name ");
    v21 = v8;
    v26 = objc_msgSend_UTF8String(v21, v22, v23, v24, v25);
    sub_1AC063FAC(v26, &v43, &v44);
    sub_1AC063200(v41, " in taxonomy ");
    if ((v42 & 0x80u) == 0)
    {
      v27 = v41;
    }

    else
    {
      v27 = v41[0];
    }

    if ((v42 & 0x80u) == 0)
    {
      v28 = v42;
    }

    else
    {
      v28 = v41[1];
    }

    v29 = std::string::append(&v44, v27, v28);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v35 = objc_msgSend_name(v7, v31, v32, v33, v34);
    v40 = objc_msgSend_UTF8String(v35, v36, v37, v38, v39);
    sub_1AC063FAC(v40, &v45, &v46);
    std::runtime_error::runtime_error(v20, &v46);
    __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v46.__r_.__value_.__r.__words[0] = sub_1AC09B8BC(a3);
  v46.__r_.__value_.__l.__size_ = v14;
  v18 = objc_msgSend_internalCount(v13, v14, v15, v16, v17);
  sub_1AC09BA34(&v46, v18);
  sub_1AC09BC20(v13, v46.__r_.__value_.__l.__data_, v12);
}

void sub_1AC09B754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v40 - 65) < 0)
  {
    operator delete(*(v40 - 88));
  }

  if (a33 < 0)
  {
    operator delete(a28);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a10);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if (a21 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a22);
  if (a21 < 0)
  {
LABEL_7:
    operator delete(__p);
    if ((v39 & 1) == 0)
    {
LABEL_14:

      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v37);

    _Unwind_Resume(a1);
  }

LABEL_12:
  if (!v39)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_1AC09B8BC(void *a1)
{
  if (a1[10] != 1 || a1[11] != 1 || a1[13] != 1 || a1[14] != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Expected a one-dimensional likelihood buffer with a size only along the channel dimension, but got something else.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (a1[17] != 1)
  {
    v5 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v6, a1[17]);
    sub_1AC063E68("Expected a contiguous likelihood buffer, but stride along the channel dimension is ", &v6, &v7);
    std::runtime_error::runtime_error(v5, &v7);
    __cxa_throw(v5, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v1 = a1[12];
  return *a1;
}

void sub_1AC09B9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

uint64_t sub_1AC09BA34(uint64_t result, uint64_t a2)
{
  if (*(result + 8) != a2)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v10, *(v3 + 8));
    sub_1AC063E68("Length of buffer ", &v10, &v11);
    sub_1AC063FAC(" does not match the expected length ", &v11, &v12);
    std::to_string(&v9, a2);
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v9;
    }

    else
    {
      v5 = v9.__r_.__value_.__r.__words[0];
    }

    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v9.__r_.__value_.__l.__size_;
    }

    v7 = std::string::append(&v12, v5, size);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v13);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1AC09BB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v32);
    goto LABEL_14;
  }

LABEL_12:
  if (!v33)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_1AC09BC20(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = a2;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AC09BF2C;
  v10[3] = &unk_1E7967D48;
  v12 = v15;
  v13 = v14;
  v11 = v5;
  v6 = v5;
  objc_msgSend__enumerateVisibleLabelsAndIndicesInVocabularyUsingBlock_(a1, v7, v10, v8, v9);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
}

void sub_1AC09BCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1AC09BD2C(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1;
  v12 = a2;
  if (v7)
  {
    objc_msgSend_relations(v7, v8, v9, v10, v11);
    v13 = v33;
  }

  else
  {
    v13 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  v30 = v13;
  v31 = v34;
  LODWORD(v32) = 1082130432;
  v14 = sub_1AC09B8BC(a3);
  v16 = v15;
  v19 = objc_msgSend__vocabularyNamed_(v7, v15, v12, v17, v18);
  v24 = objc_msgSend_internalCount(v7, v20, v21, v22, v23);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v24)
  {
    if (!(v24 >> 62))
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  started = objc_msgSend_startIndex(v19, v25, v26, v27, v28, v30, v31, v32);
  if (v16)
  {
    memmove((4 * started), v14, 4 * v16);
  }

  sub_1AC0A733C(&v30, a4);

  if (v35 == 1)
  {
  }
}

void sub_1AC09BEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14)
{
  v19 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v19;
    operator delete(v19);
  }

  if (a14 == 1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1AC09BF2C(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *(*(a1[5] + 8) + 24) += 4 * (a3 - *(*(a1[6] + 8) + 24));
  *(*(a1[6] + 8) + 24) = a3;
  (*(a1[4] + 16))(**(*(a1[5] + 8) + 24));
}

void sub_1AC09C0DC(char a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v12 = a3;
  v83 = a4;
  v100 = 0;
  v101 = &v100;
  v102 = 0x9012000000;
  v103 = sub_1AC09CA00;
  v104 = sub_1AC09CAA8;
  v105 = "'0";
  v107 = 0u;
  v108 = 0u;
  v109 = 1065353216;
  v110 = 0u;
  v111 = 0u;
  v106 = a1;
  v16 = objc_msgSend__vocabularyNamed_(v11, v13, v12, v14, v15);
  v17 = *(v101 + 14);
  *(v101 + 14) = v16;

  if (!*(v101 + 14))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not load the detection vocabulary");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v82 = objc_msgSend_internalCount(v11, v18, v19, v20, v21);
  v26 = objc_msgSend_count(v83, v22, v23, v24, v25);
  sub_1AC09E1E8(v101 + 15, 0, 0, 0);
  v27 = v101;
  *(v101 + 7) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(v27 + 8) = -_D0;
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x2020000000;
  v99[3] = 0;
  v33 = *(v27 + 14);
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = sub_1AC09CB20;
  v90[3] = &unk_1E79681A0;
  v93 = &v100;
  v34 = v11;
  v91 = v34;
  v81 = v12;
  v92 = v81;
  v94 = v99;
  v95 = a5;
  v96 = BYTE4(a5);
  v98 = HIBYTE(a5);
  v97 = HIDWORD(a5) >> 8;
  objc_msgSend__enumerateAllLabelsInVocabularyUsingBlock_(v33, v35, v90, v36, v37);
  v41 = *&a5;
  v42 = v101;
  if ((a5 & 0x100000000) == 0)
  {
    v41 = 0.1;
  }

  v101[16] = v41;
  if (!v26)
  {
    v62 = v82;
    if (*(v42 + 15) == *(v42 + 16))
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  __p = 0;
  v88 = 0;
  v89 = 0;
  __dst.__r_.__value_.__r.__words[0] = &__p;
  __dst.__r_.__value_.__s.__data_[8] = 0;
  v80 = v34;
  if (v82)
  {
    if (v82 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  for (i = 0; i != v26; ++i)
  {
    v44 = __p;
    v45 = v88;
    v46 = objc_msgSend_objectAtIndexedSubscript_(v83, v38, i, v39, v40);
    v47 = v46;
    v52 = objc_msgSend_UTF8String(v47, v48, v49, v50, v51);
    v53 = strlen(v52);
    if (v53 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v54 = v53;
    if (v53 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v53;
    if (v53)
    {
      memmove(&__dst, v52, v53);
      __dst.__r_.__value_.__s.__data_[v54] = 0;
      v55 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if (v44 == v45)
      {
LABEL_31:
        if ((v55 & 0x80) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v55 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if (v44 == v45)
      {
        goto LABEL_31;
      }
    }

    if ((v55 & 0x80u) == 0)
    {
      size = v55;
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if ((v55 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    do
    {
      v58 = *(v44 + 23);
      v59 = v58;
      if (v58 < 0)
      {
        v58 = v44[1];
      }

      if (v58 == size)
      {
        v60 = v59 >= 0 ? v44 : *v44;
        if (!memcmp(v60, p_dst, size))
        {
          goto LABEL_31;
        }
      }

      v44 += 3;
    }

    while (v44 != v45);
    v44 = v45;
    if ((v55 & 0x80) == 0)
    {
LABEL_32:

      if (v44 == v88)
      {
        goto LABEL_60;
      }

      goto LABEL_36;
    }

LABEL_35:
    operator delete(__dst.__r_.__value_.__l.__data_);

    if (v44 == v88)
    {
LABEL_60:
      v69 = __cxa_allocate_exception(0x10uLL);
      v73 = objc_msgSend_objectAtIndexedSubscript_(v83, v70, i, v71, v72);
      v78 = objc_msgSend_UTF8String(v73, v74, v75, v76, v77);
      sub_1AC063200(&v84, v78);
      sub_1AC063E68("label ", &v84, &v85);
      sub_1AC063FAC(" not in detection taxonomy vocabulary", &v85, &__dst);
      std::runtime_error::runtime_error(v69, &__dst);
      __cxa_throw(v69, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_36:
    if (0xAAAAAAAAAAAAAAABLL * ((v44 - __p) >> 3) != *(v101 + 7))
    {
      __dst.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAABLL * ((v44 - __p) >> 3);
      sub_1AC06BDC8((v101 + 30), &__dst);
    }
  }

  __dst.__r_.__value_.__r.__words[0] = *(v101 + 7);
  sub_1AC06BDC8((v101 + 30), &__dst);
  v61 = __p;
  v34 = v80;
  v62 = 0;
  if (__p)
  {
    v63 = v88;
    v64 = __p;
    if (v88 != __p)
    {
      do
      {
        v65 = *(v63 - 1);
        v63 -= 3;
        if (v65 < 0)
        {
          operator delete(*v63);
        }
      }

      while (v63 != v61);
      v64 = __p;
    }

    v88 = v61;
    operator delete(v64);
  }

  v42 = v101;
  if (*(v101 + 15) == *(v101 + 16))
  {
LABEL_49:
    __p = 0;
    if (v62)
    {
      do
      {
        sub_1AC06BDC8((v101 + 30), &__p);
        __p = __p + 1;
      }

      while (__p < v62);
      v42 = v101;
    }
  }

LABEL_52:
  sub_1AC09E408(a6, v42 + 3);

  _Block_object_dispose(v99, 8);
  _Block_object_dispose(&v100, 8);
  if (*(&v110 + 1))
  {
    *&v111 = *(&v110 + 1);
    operator delete(*(&v110 + 1));
  }

  v66 = v108;
  if (v108)
  {
    do
    {
      v67 = *v66;
      operator delete(v66);
      v66 = v67;
    }

    while (v67);
  }

  v68 = v107;
  *&v107 = 0;
  if (v68)
  {
    operator delete(v68);
  }
}

void sub_1AC09C878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  __cxa_free_exception(v47);
  _Block_object_dispose((v48 - 232), 8);
  sub_1AC065554(v48 - 184);

  _Unwind_Resume(a1);
}

__n128 sub_1AC09CA00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v2;
  v3 = *(a2 + 88);
  *(a1 + 88) = v3;
  v4 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 72) = 0;
  *(a1 + 72) = v4;
  *(a2 + 80) = 0;
  v5 = *(a2 + 96);
  *(a1 + 96) = v5;
  *(a1 + 104) = *(a2 + 104);
  if (v5)
  {
    v6 = *(v3 + 8);
    v7 = *(a1 + 80);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v6 %= v7;
      }
    }

    else
    {
      v6 &= v7 - 1;
    }

    *(v4 + 8 * v6) = a1 + 88;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
  }

  v8 = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 112) = v8;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  result = *(a2 + 120);
  *(a1 + 120) = result;
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  return result;
}

void sub_1AC09CAA8(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v5)
  {

    operator delete(v5);
  }
}

void sub_1AC09CB20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = (a1 + 64);
    if (!*(a1 + 68))
    {
      v4 = &unk_1AC129838;
    }

    v5 = *v4;
    v6 = *(*(a1 + 48) + 8);
    v34.__r_.__value_.__r.__words[0] = *(*(*(a1 + 56) + 8) + 24);
    v35.__r_.__value_.__r.__words[0] = &v34;
    *(sub_1AC0A0710((v6 + 72), &v34) + 6) = v5;
  }

  else
  {
    v7 = *(*(a1 + 48) + 8);
    if ((*(v7 + 56) & 0x8000000000000000) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v13 = objc_msgSend_name(*(a1 + 32), v9, v10, v11, v12);
      v18 = objc_msgSend_UTF8String(v13, v14, v15, v16, v17);
      sub_1AC063200(&v31, v18);
      sub_1AC063E68("Multiple background labels found in taxonomy ", &v31, &v32);
      sub_1AC063FAC(" vocabulary ", &v32, &v33);
      v19 = *(a1 + 40);
      v24 = objc_msgSend_UTF8String(v19, v20, v21, v22, v23);
      sub_1AC063200(v29, v24);
      if ((v30 & 0x80u) == 0)
      {
        v25 = v29;
      }

      else
      {
        v25 = v29[0];
      }

      if ((v30 & 0x80u) == 0)
      {
        v26 = v30;
      }

      else
      {
        v26 = v29[1];
      }

      v27 = std::string::append(&v33, v25, v26);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      sub_1AC063FAC(".", &v34, &v35);
      std::runtime_error::runtime_error(exception, &v35);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    *(v7 + 56) = *(*(*(a1 + 56) + 8) + 24);
    *(*(*(a1 + 48) + 8) + 68) = 1063675494;
  }

  ++*(*(*(a1 + 56) + 8) + 24);
}

void sub_1AC09CD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v42 - 65) < 0)
  {
    operator delete(*(v42 - 88));
    if ((a38 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a38 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a9);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if (a20 < 0)
    {
LABEL_15:
      operator delete(a15);

      if (v41)
      {
LABEL_16:
        __cxa_free_exception(v39);

        _Unwind_Resume(a1);
      }

LABEL_17:

      _Unwind_Resume(a1);
    }

LABEL_13:

    if (v41)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_12:
  operator delete(a21);
  if (a20 < 0)
  {
    goto LABEL_15;
  }

  goto LABEL_13;
}

void sub_1AC09D7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  __cxa_free_exception(v33);
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  sub_1AC068024(&a33);
  sub_1AC068024((v34 - 176));
  _Unwind_Resume(a1);
}

void *sub_1AC09D99C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_1AC060AAC();
  }

  return result;
}

void *sub_1AC09DAE4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = result[1];
  if (*result != v3)
  {
    v4 = *result + 24;
    do
    {
      while (1)
      {
        v6 = sub_1AC0A0BC0(a2, v4);
        v7 = v6;
        v8 = (v4 - 24);
        v9 = v6[8];
        if (v9 < v6[9])
        {
          break;
        }

        result = sub_1AC09EB24(v6 + 7, v8);
        v7[8] = result;
        v5 = v4 + 24;
        v4 += 48;
        if (v5 == v3)
        {
          return result;
        }
      }

      v10 = *v8;
      *(v9 + 16) = *(v4 - 8);
      *v9 = v10;
      if (*(v4 + 23) < 0)
      {
        sub_1AC0674A0((v9 + 24), *v4, *(v4 + 8));
      }

      else
      {
        v11 = *v4;
        *(v9 + 40) = *(v4 + 16);
        *(v9 + 24) = v11;
      }

      result = (v9 + 48);
      v7[8] = v9 + 48;
      v7[8] = v9 + 48;
      v12 = v4 + 24;
      v4 += 48;
    }

    while (v12 != v3);
  }

  return result;
}

void sub_1AC09DBE4(_Unwind_Exception *a1)
{
  *(v2 + 64) = v3;
  sub_1AC0A0A4C(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1AC09DC18(void *a1@<X0>, void *a2@<X8>)
{
  sub_1AC09DAE4(a1, &v11);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = v11;
  if (v11 != v12)
  {
    do
    {
      v4 = *(v3 + 7);
      v5 = v3[8];
      v6 = v3[7];
      if (v6 != v5)
      {
        sub_1AC09ED0C(v6, v5, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 4)), 1);
        v7 = v3[8] - v3[7];
        if (v7)
        {
          if ((v7 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1AC060AAC();
        }
      }

      v8 = v3[1];
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
          v9 = v3[2];
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v12);
  }

  sub_1AC0A0A4C(&v11, v12[0]);
}

void sub_1AC09DFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  sub_1AC0655B8(v11);
  sub_1AC0A0A4C(&a10, a11);
  _Unwind_Resume(a1);
}

id sub_1AC09E00C(void *a1)
{
  v2 = objc_opt_new();
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = *a1 + 24;
    do
    {
      v5 = v4 - 24;
      v6 = *(v4 - 24);
      v7 = *(v4 - 20);
      v8 = *(v4 - 16);
      v9 = *(v4 - 12);
      v27.origin.x = v6;
      v27.origin.y = v7;
      v27.size.width = v8;
      v27.size.height = v9;
      if (!CGRectIsEmpty(v27))
      {
        v13 = [CSUObjectDetectionResult alloc];
        v14 = v4;
        if (*(v4 + 23) < 0)
        {
          v14 = *v4;
        }

        v15 = *(v4 - 8);
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, v14, v11, v12);
        LODWORD(v17) = v15;
        v21 = objc_msgSend_initWithCGRect_score_label_(v13, v18, v16, v19, v20, v6, v7, v8, v9, v17);

        objc_msgSend_addObject_(v2, v22, v21, v23, v24);
      }

      v4 += 48;
    }

    while (v5 + 48 != v3);
  }

  return v2;
}

void sub_1AC09E164(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_1AC09E19C(uint64_t a1)
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

void *sub_1AC09E1E8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v11 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    sub_1AC060AAC();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 3)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 8;
    if (v21 >= 0x38)
    {
      v18 = v17;
      if ((&v8[v17] - &__src[v14]) >= 0x20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 8;
      *v18 = v28;
      v18 += 8;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = &v8[v19];
LABEL_27:
  v6[1] = v20;
  return result;
}

uint64_t sub_1AC09E408(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *(a1 + 24) = 0u;
  v5 = (a1 + 24);
  *a1 = v4;
  *(a1 + 40) = 0u;
  *(a1 + 56) = *(a2 + 14);
  prime = *(a2 + 4);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_1AC06A164(v5, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 4));
    v7 = *(a1 + 32);
    v8 = prime >= *&v7;
    if (prime > *&v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v8)
  {
    v9 = vcvtps_u32_f32(*(a1 + 48) / *(a1 + 56));
    if (*&v7 < 3uLL || (v10 = vcnt_s8(v7), v10.i16[0] = vaddlv_u8(v10), v10.u32[0] > 1uLL))
    {
      v9 = std::__next_prime(v9);
    }

    else
    {
      v11 = 1 << -__clz(v9 - 1);
      if (v9 >= 2)
      {
        v9 = v11;
      }
    }

    if (prime <= v9)
    {
      prime = v9;
    }

    if (prime < *&v7)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 5); i; i = *i)
  {
    sub_1AC09E5FC(v5, i + 2);
  }

  v13 = *(a2 + 8);
  *(a1 + 72) = 0;
  *(a1 + 64) = v13;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v15 = *(a2 + 9);
  v14 = *(a2 + 10);
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  return a1;
}

void sub_1AC09E5BC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  sub_1AC09E19C(v2);
  _Unwind_Resume(a1);
}

void *sub_1AC09E5FC(void *a1, unint64_t *a2)
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

uint64_t sub_1AC09E930(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1AC09E998(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1AC060AAC();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  v7 = 48 * v2 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 4);
      *v12 = v13;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 5);
      *(v12 + 24) = v14;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      *(v11 + 3) = 0;
      v11 += 3;
      v12 += 48;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
      }

      v8 += 48;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_1AC09EB24(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1AC060AAC();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  v16 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  if (*(a2 + 47) < 0)
  {
    sub_1AC0674A0((v6 + 24), *(a2 + 24), *(a2 + 32));
    v7 = 48 * v2 + 48;
    v8 = *a1;
    v9 = a1[1];
    v10 = v16 + *a1 - v9;
    if (v9 == *a1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(48 * v2 + 0x18) = *(a2 + 24);
    *(48 * v2 + 0x28) = *(a2 + 40);
    v7 = v6 + 48;
    v8 = *a1;
    v9 = a1[1];
    v10 = v6 + *a1 - v9;
    if (v9 == *a1)
    {
      goto LABEL_21;
    }
  }

  v11 = v8;
  v12 = v10;
  do
  {
    v13 = *v11;
    *(v12 + 16) = *(v11 + 4);
    *v12 = v13;
    v14 = *(v11 + 24);
    *(v12 + 40) = *(v11 + 5);
    *(v12 + 24) = v14;
    *(v11 + 4) = 0;
    *(v11 + 5) = 0;
    *(v11 + 3) = 0;
    v11 += 3;
    v12 += 48;
  }

  while (v11 != v9);
  do
  {
    if (*(v8 + 47) < 0)
    {
      operator delete(*(v8 + 24));
    }

    v8 += 48;
  }

  while (v8 != v9);
  v8 = *a1;
LABEL_21:
  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_1AC09ECF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC09E930(va);
  _Unwind_Resume(a1);
}

void sub_1AC09ED0C(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  v178 = *MEMORY[0x1E69E9840];
LABEL_2:
  v140 = a2 - 3;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v7) >> 4);
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      goto LABEL_134;
    }

    if (v9 == 2)
    {
      if (*(a2 - 8) > *(v7 + 16))
      {
        v173 = *(v7 + 16);
        v162 = *v7;
        v63 = *(v7 + 24);
        *&v148 = *(v7 + 32);
        *(&v148 + 7) = *(v7 + 39);
        v64 = *(v7 + 47);
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 24) = 0;
        v65 = *(a2 - 3);
        *(v7 + 16) = *(a2 - 8);
        *v7 = v65;
        v66 = *(a2 - 24);
        *(v7 + 40) = *(a2 - 1);
        *(v7 + 24) = v66;
        *(a2 - 8) = v173;
        *(a2 - 3) = v162;
        *(a2 - 3) = v63;
        *(a2 - 9) = *(&v148 + 7);
        *(a2 - 2) = v148;
        *(a2 - 1) = v64;
      }

LABEL_134:
      v130 = *MEMORY[0x1E69E9840];
      return;
    }

LABEL_10:
    if (v8 <= 1151)
    {
      v78 = (v7 + 48);
      v80 = v7 == a2 || v78 == a2;
      if (a4)
      {
        if (!v80)
        {
          v81 = 0;
          v82 = v7;
          do
          {
            v83 = v78;
            v84 = *(v82 + 64);
            if (v84 > *(v82 + 16))
            {
              v166 = *v78;
              *&v152[7] = *(v82 + 87);
              v85 = *(v82 + 72);
              *v152 = *(v82 + 80);
              v86 = *(v82 + 95);
              *(v82 + 80) = 0;
              *(v82 + 88) = 0;
              *(v82 + 72) = 0;
              v87 = *(v78 + 47);
              *(v83 + 4) = *(v82 + 16);
              *v83 = *v82;
              if (v87 < 0)
              {
                operator delete(*(v83 + 3));
              }

              v88 = (v82 + 24);
              *(v83 + 24) = *(v82 + 24);
              *(v83 + 5) = *(v82 + 40);
              *(v82 + 47) = 0;
              *(v82 + 24) = 0;
              if (v82 == v7)
              {
                v82 = v7;
              }

              else if (v84 > *(v82 - 32))
              {
                v89 = v81;
                while (1)
                {
                  v90 = v7 + v89;
                  *v90 = *(v7 + v89 - 48);
                  *(v90 + 16) = *(v7 + v89 - 32);
                  *(v90 + 24) = *(v7 + v89 - 24);
                  *(v90 + 40) = *(v7 + v89 - 8);
                  *(v90 - 1) = 0;
                  *(v90 - 24) = 0;
                  v89 -= 48;
                  if (!v89)
                  {
                    break;
                  }

                  if (v84 <= *(v90 - 80))
                  {
                    v82 = v7 + v89;
                    goto LABEL_100;
                  }
                }

                v82 = v7;
LABEL_100:
                v88 = (v90 - 24);
              }

              *v82 = v166;
              *(v82 + 16) = v84;
              *v88 = v85;
              *(v82 + 32) = *v152;
              *(v82 + 39) = *&v152[7];
              *(v82 + 47) = v86;
            }

            v78 = v83 + 3;
            v81 += 48;
            v82 = v83;
          }

          while (v83 + 3 != a2);
        }
      }

      else if (!v80)
      {
        v131 = v7 - 80;
        do
        {
          v133 = v78;
          v134 = *(a1 + 64);
          if (v134 > *(a1 + 16))
          {
            v169 = *v78;
            *&v155[7] = *(a1 + 87);
            v135 = *(a1 + 72);
            *v155 = *(a1 + 80);
            v136 = *(a1 + 95);
            *(a1 + 80) = 0;
            *(a1 + 88) = 0;
            *(a1 + 72) = 0;
            v137 = *(v78 + 47);
            *(v133 + 16) = *(a1 + 16);
            *v133 = *a1;
            if (v137 < 0)
            {
              operator delete(*(v133 + 24));
            }

            *(v133 + 24) = *(a1 + 24);
            *(v133 + 40) = *(a1 + 40);
            *(a1 + 47) = 0;
            *(a1 + 24) = 0;
            if (v134 <= *(a1 - 32))
            {
              v132 = (a1 + 24);
            }

            else
            {
              v138 = v131;
              do
              {
                *(v138 + 80) = *(v138 + 32);
                *(v138 + 96) = *(v138 + 48);
                *(v138 + 104) = *(v138 + 56);
                *(v138 + 120) = *(v138 + 72);
                *(v138 + 79) = 0;
                *(v138 + 56) = 0;
                v139 = *v138;
                v138 -= 48;
              }

              while (v134 > v139);
              v132 = (v138 + 104);
              a1 = v138 + 80;
            }

            *a1 = v169;
            *(a1 + 16) = v134;
            *v132 = v135;
            *(a1 + 32) = *v155;
            *(a1 + 39) = *&v155[7];
            *(a1 + 47) = v136;
          }

          v78 = (v133 + 48);
          v131 += 48;
          a1 = v133;
        }

        while ((v133 + 48) != a2);
      }

      goto LABEL_134;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v91 = (v9 - 2) >> 1;
        v92 = v91;
        do
        {
          if (v91 >= v92)
          {
            v94 = (2 * (v92 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v95 = v7 + 48 * v94;
            if (2 * v92 + 2 < v9 && *(v95 + 16) > *(v95 + 64))
            {
              v95 += 48;
              v94 = 2 * v92 + 2;
            }

            v96 = v7 + 48 * v92;
            v97 = *(v96 + 16);
            if (*(v95 + 16) <= v97)
            {
              v167 = *v96;
              v98 = *(v96 + 24);
              *&v153[7] = *(v96 + 39);
              *v153 = *(v96 + 32);
              v99 = *(v96 + 47);
              *(v96 + 24) = 0;
              *(v96 + 32) = 0;
              *(v96 + 40) = 0;
              do
              {
                v100 = v96;
                v96 = v95;
                v101 = *v95;
                *(v100 + 16) = *(v95 + 16);
                *v100 = v101;
                v102 = *(v95 + 24);
                *(v100 + 40) = *(v95 + 40);
                *(v100 + 24) = v102;
                *(v95 + 47) = 0;
                *(v95 + 24) = 0;
                if (v91 < v94)
                {
                  break;
                }

                v103 = 2 * v94;
                v94 = (2 * v94) | 1;
                v95 = v7 + 48 * v94;
                v104 = v103 + 2;
                if (v104 < v9 && *(v95 + 16) > *(v95 + 64))
                {
                  v95 += 48;
                  v94 = v104;
                }
              }

              while (*(v95 + 16) <= v97);
              *v96 = v167;
              *(v96 + 16) = v97;
              *(v96 + 24) = v98;
              *(v96 + 32) = *v153;
              *(v96 + 39) = *&v153[7];
              *(v96 + 47) = v99;
            }
          }

          v93 = v92-- <= 0;
        }

        while (!v93);
        v105 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
        do
        {
          v106 = 0;
          v107 = a2;
          v177 = *(v7 + 16);
          v168 = *v7;
          v108 = *(v7 + 24);
          *v144 = *(v7 + 32);
          *&v144[7] = *(v7 + 39);
          v109 = *(v7 + 47);
          *(v7 + 32) = 0;
          *(v7 + 40) = 0;
          v110 = v7;
          *(v7 + 24) = 0;
          do
          {
            v117 = v110 + 48 * v106;
            v114 = v117 + 48;
            v118 = (2 * v106) | 1;
            v106 = 2 * v106 + 2;
            if (v106 < v105)
            {
              v111 = *(v117 + 64);
              v112 = *(v117 + 112);
              v113 = v117 + 96;
              if (v111 <= v112)
              {
                v106 = v118;
              }

              else
              {
                v114 = v113;
              }
            }

            else
            {
              v106 = v118;
            }

            v115 = *v114;
            *(v110 + 16) = *(v114 + 16);
            *v110 = v115;
            v116 = *(v114 + 24);
            *(v110 + 40) = *(v114 + 40);
            *(v110 + 24) = v116;
            *(v114 + 47) = 0;
            *(v114 + 24) = 0;
            v110 = v114;
          }

          while (v106 <= ((v105 - 2) >> 1));
          a2 -= 3;
          if (v114 == v107 - 3)
          {
            *v114 = v168;
            *(v114 + 16) = v177;
            *(v114 + 24) = v108;
            *(v114 + 32) = *v144;
            *(v114 + 39) = *&v144[7];
            *(v114 + 47) = v109;
          }

          else
          {
            v119 = *a2;
            *(v114 + 16) = *(v107 - 8);
            *v114 = v119;
            v120 = *(v107 - 24);
            *(v114 + 40) = *(v107 - 1);
            *(v114 + 24) = v120;
            *a2 = v168;
            *(v107 - 8) = v177;
            *(v107 - 3) = v108;
            *(v107 - 9) = *&v144[7];
            *(v107 - 2) = *v144;
            *(v107 - 1) = v109;
            v121 = v114 - v7 + 48;
            if (v121 >= 49)
            {
              v122 = (0xAAAAAAAAAAAAAAABLL * (v121 >> 4) - 2) >> 1;
              v123 = v7 + 48 * v122;
              v124 = *(v114 + 16);
              if (*(v123 + 16) > v124)
              {
                v154 = *v114;
                v125 = *(v114 + 24);
                *v158 = *(v114 + 32);
                *&v158[7] = *(v114 + 39);
                v126 = *(v114 + 47);
                *(v114 + 32) = 0;
                *(v114 + 40) = 0;
                *(v114 + 24) = 0;
                do
                {
                  v127 = v114;
                  v114 = v123;
                  v128 = *v123;
                  *(v127 + 16) = *(v123 + 16);
                  *v127 = v128;
                  v129 = *(v123 + 24);
                  *(v127 + 40) = *(v123 + 40);
                  *(v127 + 24) = v129;
                  *(v123 + 47) = 0;
                  *(v123 + 24) = 0;
                  if (!v122)
                  {
                    break;
                  }

                  v122 = (v122 - 1) >> 1;
                  v123 = v7 + 48 * v122;
                }

                while (*(v123 + 16) > v124);
                *v114 = v154;
                *(v114 + 16) = v124;
                *(v114 + 24) = v125;
                *(v114 + 32) = *v158;
                *(v114 + 39) = *&v158[7];
                *(v114 + 47) = v126;
              }
            }
          }

          v93 = v105-- <= 2;
        }

        while (!v93);
      }

      goto LABEL_134;
    }

    v10 = v9 >> 1;
    v11 = v7 + 48 * (v9 >> 1);
    if (v8 < 0x1801)
    {
      sub_1AC09FBA4(v11, a1, v140);
      --a3;
      if (a4)
      {
LABEL_20:
        v17 = *(a1 + 16);
        goto LABEL_21;
      }
    }

    else
    {
      sub_1AC09FBA4(a1, v11, v140);
      v12 = 48 * v10;
      sub_1AC09FBA4((a1 + 48), (v12 + a1 - 48), a2 - 6);
      sub_1AC09FBA4((a1 + 96), (a1 + 48 + v12), a2 - 9);
      sub_1AC09FBA4((v12 + a1 - 48), v11, (a1 + 48 + v12));
      v170 = *(a1 + 16);
      v159 = *a1;
      *(&v145 + 7) = *(a1 + 39);
      v13 = *(a1 + 24);
      *&v145 = *(a1 + 32);
      v14 = *(a1 + 47);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      v15 = *v11;
      *(a1 + 16) = *(v11 + 16);
      *a1 = v15;
      v16 = *(v11 + 40);
      *(a1 + 24) = *(v11 + 24);
      *(a1 + 40) = v16;
      *(v11 + 16) = v170;
      *v11 = v159;
      *(v11 + 24) = v13;
      *(v11 + 39) = *(&v145 + 7);
      *(v11 + 32) = v145;
      *(v11 + 47) = v14;
      --a3;
      if (a4)
      {
        goto LABEL_20;
      }
    }

    v17 = *(a1 + 16);
    if (*(a1 - 32) > v17)
    {
LABEL_21:
      v24 = 0;
      v147 = *a1;
      v25 = (a1 + 24);
      v26 = *(a1 + 24);
      *v143 = *(a1 + 32);
      *&v143[7] = *(a1 + 39);
      v27 = *(a1 + 47);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      do
      {
        v28 = *(a1 + v24 + 64);
        v24 += 48;
      }

      while (v28 > v17);
      v29 = a1 + v24;
      v30 = a2;
      if (v24 == 48)
      {
        v33 = a2;
        while (v29 < v33)
        {
          v31 = v33 - 12;
          v34 = *(v33 - 8);
          v33 -= 12;
          if (v34 > v17)
          {
            goto LABEL_29;
          }
        }

        v31 = v33;
        v7 = v29;
      }

      else
      {
        do
        {
          v31 = v30 - 12;
          v32 = *(v30 - 8);
          v30 -= 12;
        }

        while (v32 <= v17);
LABEL_29:
        v7 = v29;
        if (v29 < v31)
        {
          v35 = v31;
          do
          {
            v171 = *(v7 + 16);
            v160 = *v7;
            v36 = *(v7 + 24);
            *&v156 = *(v7 + 32);
            *(&v156 + 7) = *(v7 + 39);
            v37 = *(v7 + 47);
            *(v7 + 32) = 0;
            *(v7 + 40) = 0;
            *(v7 + 24) = 0;
            v38 = *v35;
            *(v7 + 16) = *(v35 + 16);
            *v7 = v38;
            v39 = *(v35 + 24);
            *(v7 + 40) = *(v35 + 40);
            *(v7 + 24) = v39;
            *(v35 + 16) = v171;
            *v35 = v160;
            *(v35 + 24) = v36;
            *(v35 + 32) = v156;
            *(v35 + 39) = *(&v156 + 7);
            *(v35 + 47) = v37;
            do
            {
              v40 = *(v7 + 64);
              v7 += 48;
            }

            while (v40 > v17);
            do
            {
              v41 = *(v35 - 32);
              v35 -= 48;
            }

            while (v41 <= v17);
          }

          while (v7 < v35);
        }
      }

      v42 = (v7 - 48);
      if (v7 - 48 == a1)
      {
        v45 = *(v7 - 1);
        *v42 = v147;
        *(v7 - 32) = v17;
        if (v45 < 0)
        {
          operator delete(*(v7 - 24));
        }
      }

      else
      {
        v43 = *v42;
        *(a1 + 16) = *(v7 - 32);
        *a1 = v43;
        if (*(a1 + 47) < 0)
        {
          operator delete(*v25);
        }

        v44 = *(v7 - 24);
        *(a1 + 40) = *(v7 - 8);
        *v25 = v44;
        *(v7 - 1) = 0;
        *(v7 - 24) = 0;
        *v42 = v147;
        *(v7 - 32) = v17;
      }

      *(v7 - 24) = v26;
      *(v7 - 9) = *&v143[7];
      *(v7 - 16) = *v143;
      *(v7 - 1) = v27;
      if (v29 < v31)
      {
        goto LABEL_44;
      }

      v46 = sub_1AC0A02B8(a1, v7 - 48);
      if (sub_1AC0A02B8(v7, a2))
      {
        a2 = (v7 - 48);
        if (!v46)
        {
          goto LABEL_2;
        }

        goto LABEL_134;
      }

      if (!v46)
      {
LABEL_44:
        sub_1AC09ED0C(a1, v7 - 48, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v146 = *a1;
      v18 = *(a1 + 16);
      v19 = (a1 + 24);
      v20 = *(a1 + 24);
      *v142 = *(a1 + 32);
      *&v142[7] = *(a1 + 39);
      v21 = *(a1 + 47);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      if (v18 <= *(a2 - 8))
      {
        v47 = a1 + 48;
        do
        {
          v7 = v47;
          if (v47 >= a2)
          {
            break;
          }

          v48 = *(v47 + 16);
          v47 += 48;
        }

        while (v18 <= v48);
      }

      else
      {
        v22 = a1;
        do
        {
          v7 = v22 + 48;
          v23 = *(v22 + 64);
          v22 += 48;
        }

        while (v18 <= v23);
      }

      v49 = a2;
      if (v7 < a2)
      {
        v50 = a2;
        do
        {
          v49 = (v50 - 12);
          v51 = *(v50 - 8);
          v50 -= 12;
        }

        while (v18 > v51);
      }

      while (v7 < v49)
      {
        v172 = *(v7 + 16);
        v161 = *v7;
        v52 = *(v7 + 24);
        *&v157 = *(v7 + 32);
        *(&v157 + 7) = *(v7 + 39);
        v53 = *(v7 + 47);
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 24) = 0;
        v54 = *v49;
        *(v7 + 16) = *(v49 + 4);
        *v7 = v54;
        v55 = *(v49 + 24);
        *(v7 + 40) = *(v49 + 5);
        *(v7 + 24) = v55;
        *(v49 + 4) = v172;
        *v49 = v161;
        *(v49 + 3) = v52;
        *(v49 + 4) = v157;
        *(v49 + 39) = *(&v157 + 7);
        *(v49 + 47) = v53;
        do
        {
          v56 = *(v7 + 64);
          v7 += 48;
        }

        while (v18 <= v56);
        do
        {
          v57 = *(v49 - 8);
          v49 -= 3;
        }

        while (v18 > v57);
      }

      v58 = (v7 - 48);
      if (v7 - 48 == a1)
      {
        v61 = *(v7 - 1);
        *v58 = v146;
        *(v7 - 32) = v18;
        if (v61 < 0)
        {
          operator delete(*(v7 - 24));
        }
      }

      else
      {
        v59 = *v58;
        *(a1 + 16) = *(v7 - 32);
        *a1 = v59;
        if (*(a1 + 47) < 0)
        {
          operator delete(*v19);
        }

        v60 = *(v7 - 24);
        *(a1 + 40) = *(v7 - 8);
        *v19 = v60;
        *(v7 - 1) = 0;
        *(v7 - 24) = 0;
        *v58 = v146;
        *(v7 - 32) = v18;
      }

      a4 = 0;
      *(v7 - 24) = v20;
      *(v7 - 9) = *&v142[7];
      *(v7 - 16) = *v142;
      *(v7 - 1) = v21;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      sub_1AC09FBA4(v7, (v7 + 48), (v7 + 96));
      if (*(a2 - 8) > *(v7 + 112))
      {
        v163 = *(v7 + 96);
        v174 = *(v7 + 112);
        v68 = *(v7 + 120);
        *(&v149 + 7) = *(v7 + 135);
        *&v149 = *(v7 + 128);
        v69 = *(v7 + 143);
        *(v7 + 120) = 0;
        *(v7 + 128) = 0;
        *(v7 + 136) = 0;
        v70 = *(a2 - 8);
        *(v7 + 96) = *(a2 - 3);
        *(v7 + 112) = v70;
        v71 = *(a2 - 24);
        *(v7 + 136) = *(a2 - 1);
        *(v7 + 120) = v71;
        *(a2 - 8) = v174;
        *(a2 - 3) = v163;
        *(a2 - 3) = v68;
        *(a2 - 9) = *(&v149 + 7);
        *(a2 - 2) = v149;
        *(a2 - 1) = v69;
        if (*(v7 + 112) > *(v7 + 64))
        {
          v164 = *(v7 + 48);
          v175 = *(v7 + 64);
          v72 = *(v7 + 72);
          *&v150 = *(v7 + 80);
          *(&v150 + 7) = *(v7 + 87);
          v73 = *(v7 + 95);
          *(v7 + 48) = *(v7 + 96);
          *(v7 + 64) = *(v7 + 112);
          *(v7 + 72) = *(v7 + 120);
          *(v7 + 88) = *(v7 + 136);
          *(v7 + 112) = v175;
          *(v7 + 96) = v164;
          *(v7 + 120) = v72;
          *(v7 + 128) = v150;
          *(v7 + 135) = *(&v150 + 7);
          v74 = *(v7 + 64);
          v75 = *(v7 + 16);
          *(v7 + 143) = v73;
          if (v74 > v75)
          {
            v176 = *(v7 + 16);
            v165 = *v7;
            *(&v151 + 7) = *(v7 + 39);
            v76 = *(v7 + 24);
            *&v151 = *(v7 + 32);
            v77 = *(v7 + 47);
            *(v7 + 16) = *(v7 + 64);
            *v7 = *(v7 + 48);
            *(v7 + 24) = *(v7 + 72);
            *(v7 + 40) = *(v7 + 88);
            *(v7 + 64) = v176;
            *(v7 + 48) = v165;
            *(v7 + 72) = v76;
            *(v7 + 80) = v151;
            *(v7 + 87) = *(&v151 + 7);
            *(v7 + 95) = v77;
          }
        }
      }

      goto LABEL_134;
    }

    if (v9 == 5)
    {
      v62 = *MEMORY[0x1E69E9840];

      sub_1AC09FE5C(v7, v7 + 48, v7 + 96, (v7 + 144), v140);
      return;
    }

    goto LABEL_10;
  }

  v67 = *MEMORY[0x1E69E9840];

  sub_1AC09FBA4(v7, (v7 + 48), v140);
}

__int128 *sub_1AC09FBA4(__int128 *result, __int128 *a2, __int128 *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 4);
  v4 = *(a3 + 4);
  if (v3 <= *(result + 4))
  {
    if (v4 > v3)
    {
      v27 = *a2;
      v31 = *(a2 + 4);
      v9 = *(a2 + 3);
      *&v23 = *(a2 + 4);
      *(&v23 + 7) = *(a2 + 39);
      v10 = *(a2 + 47);
      *(a2 + 3) = 0;
      *(a2 + 5) = 0;
      *(a2 + 4) = 0;
      v11 = *a3;
      *(a2 + 4) = *(a3 + 4);
      *a2 = v11;
      v12 = *(a3 + 5);
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 5) = v12;
      *a3 = v27;
      *(a3 + 4) = v31;
      *(a3 + 3) = v9;
      *(a3 + 4) = v23;
      *(a3 + 39) = *(&v23 + 7);
      *(a3 + 47) = v10;
      if (*(a2 + 4) > *(result + 4))
      {
        v28 = *result;
        v32 = *(result + 4);
        v13 = *(result + 3);
        *&v24 = *(result + 4);
        *(&v24 + 7) = *(result + 39);
        v14 = *(result + 47);
        *(result + 4) = 0;
        *(result + 5) = 0;
        *(result + 3) = 0;
        v15 = *a2;
        *(result + 4) = *(a2 + 4);
        *result = v15;
        v16 = *(a2 + 5);
        *(result + 24) = *(a2 + 24);
        *(result + 5) = v16;
        *a2 = v28;
        *(a2 + 4) = v32;
        *(a2 + 3) = v13;
        *(a2 + 4) = v24;
        *(a2 + 39) = *(&v24 + 7);
        *(a2 + 47) = v14;
      }
    }
  }

  else
  {
    if (v4 > v3)
    {
      v26 = *result;
      v30 = *(result + 4);
      v5 = *(result + 3);
      *v22 = *(result + 4);
      *&v22[7] = *(result + 39);
      v6 = *(result + 47);
      *(result + 4) = 0;
      *(result + 5) = 0;
      *(result + 3) = 0;
      v7 = *a3;
      *(result + 4) = *(a3 + 4);
      *result = v7;
      v8 = *(a3 + 5);
      *(result + 24) = *(a3 + 24);
      *(result + 5) = v8;
LABEL_9:
      *a3 = v26;
      *(a3 + 4) = v30;
      *(a3 + 3) = v5;
      *(a3 + 4) = *v22;
      *(a3 + 39) = *&v22[7];
      *(a3 + 47) = v6;
      goto LABEL_10;
    }

    v29 = *result;
    v33 = *(result + 4);
    v5 = *(result + 3);
    *&v25 = *(result + 4);
    *(&v25 + 7) = *(result + 39);
    v6 = *(result + 47);
    *(result + 4) = 0;
    *(result + 5) = 0;
    *(result + 3) = 0;
    v17 = *a2;
    *(result + 4) = *(a2 + 4);
    *result = v17;
    v18 = *(a2 + 5);
    *(result + 24) = *(a2 + 24);
    *(result + 5) = v18;
    *a2 = v29;
    *(a2 + 4) = v33;
    *(a2 + 3) = v5;
    *(a2 + 4) = v25;
    *(a2 + 39) = *(&v25 + 7);
    *(a2 + 47) = v6;
    if (*(a3 + 4) > *(a2 + 4))
    {
      v26 = *a2;
      v30 = *(a2 + 4);
      *v22 = *(a2 + 4);
      *&v22[7] = *(a2 + 39);
      *(a2 + 4) = 0;
      *(a2 + 5) = 0;
      *(a2 + 3) = 0;
      v19 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v19;
      v20 = *(a3 + 5);
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 5) = v20;
      goto LABEL_9;
    }
  }

LABEL_10:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

__int128 *sub_1AC09FE5C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v61 = *MEMORY[0x1E69E9840];
  result = sub_1AC09FBA4(a1, a2, a3);
  if (*(a4 + 4) > *(a3 + 16))
  {
    v47 = *a3;
    v54 = *(a3 + 16);
    v11 = *(a3 + 24);
    *&v40 = *(a3 + 32);
    *(&v40 + 7) = *(a3 + 39);
    v12 = *(a3 + 47);
    *(a3 + 24) = 0;
    *(a3 + 40) = 0;
    *(a3 + 32) = 0;
    v13 = *a4;
    *(a3 + 16) = *(a4 + 4);
    *a3 = v13;
    v14 = *(a4 + 5);
    *(a3 + 24) = *(a4 + 24);
    *(a3 + 40) = v14;
    *a4 = v47;
    *(a4 + 4) = v54;
    *(a4 + 3) = v11;
    *(a4 + 4) = v40;
    *(a4 + 39) = *(&v40 + 7);
    *(a4 + 47) = v12;
    if (*(a3 + 16) > *(a2 + 16))
    {
      v48 = *a2;
      v55 = *(a2 + 16);
      v15 = *(a2 + 24);
      *&v41 = *(a2 + 32);
      *(&v41 + 7) = *(a2 + 39);
      v16 = *(a2 + 47);
      *(a2 + 24) = 0;
      *(a2 + 40) = 0;
      *(a2 + 32) = 0;
      v17 = *a3;
      *(a2 + 16) = *(a3 + 16);
      *a2 = v17;
      v18 = *(a3 + 40);
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 40) = v18;
      *a3 = v48;
      *(a3 + 16) = v55;
      *(a3 + 24) = v15;
      *(a3 + 32) = v41;
      *(a3 + 39) = *(&v41 + 7);
      *(a3 + 47) = v16;
      if (*(a2 + 16) > *(a1 + 16))
      {
        v49 = *a1;
        v56 = *(a1 + 16);
        v19 = *(a1 + 24);
        *&v42 = *(a1 + 32);
        *(&v42 + 7) = *(a1 + 39);
        v20 = *(a1 + 47);
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 24) = 0;
        v21 = *a2;
        *(a1 + 16) = *(a2 + 16);
        *a1 = v21;
        v22 = *(a2 + 40);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = v22;
        *a2 = v49;
        *(a2 + 16) = v56;
        *(a2 + 24) = v19;
        *(a2 + 32) = v42;
        *(a2 + 39) = *(&v42 + 7);
        *(a2 + 47) = v20;
      }
    }
  }

  if (*(a5 + 4) > *(a4 + 4))
  {
    v50 = *a4;
    v57 = *(a4 + 4);
    v23 = *(a4 + 3);
    *&v43 = *(a4 + 4);
    *(&v43 + 7) = *(a4 + 39);
    v24 = *(a4 + 47);
    *(a4 + 3) = 0;
    *(a4 + 5) = 0;
    *(a4 + 4) = 0;
    v25 = *a5;
    *(a4 + 4) = *(a5 + 4);
    *a4 = v25;
    v26 = *(a5 + 5);
    *(a4 + 24) = *(a5 + 24);
    *(a4 + 5) = v26;
    *a5 = v50;
    *(a5 + 4) = v57;
    *(a5 + 3) = v23;
    *(a5 + 4) = v43;
    *(a5 + 39) = *(&v43 + 7);
    *(a5 + 47) = v24;
    if (*(a4 + 4) > *(a3 + 16))
    {
      v51 = *a3;
      v58 = *(a3 + 16);
      v27 = *(a3 + 24);
      *&v44 = *(a3 + 32);
      *(&v44 + 7) = *(a3 + 39);
      v28 = *(a3 + 47);
      *(a3 + 24) = 0;
      *(a3 + 40) = 0;
      *(a3 + 32) = 0;
      v29 = *a4;
      *(a3 + 16) = *(a4 + 4);
      *a3 = v29;
      v30 = *(a4 + 5);
      *(a3 + 24) = *(a4 + 24);
      *(a3 + 40) = v30;
      *a4 = v51;
      *(a4 + 4) = v58;
      *(a4 + 3) = v27;
      *(a4 + 4) = v44;
      *(a4 + 39) = *(&v44 + 7);
      *(a4 + 47) = v28;
      if (*(a3 + 16) > *(a2 + 16))
      {
        v52 = *a2;
        v59 = *(a2 + 16);
        v31 = *(a2 + 24);
        *&v45 = *(a2 + 32);
        *(&v45 + 7) = *(a2 + 39);
        v32 = *(a2 + 47);
        *(a2 + 24) = 0;
        *(a2 + 40) = 0;
        *(a2 + 32) = 0;
        v33 = *a3;
        *(a2 + 16) = *(a3 + 16);
        *a2 = v33;
        v34 = *(a3 + 40);
        *(a2 + 24) = *(a3 + 24);
        *(a2 + 40) = v34;
        *a3 = v52;
        *(a3 + 16) = v59;
        *(a3 + 24) = v31;
        *(a3 + 32) = v45;
        *(a3 + 39) = *(&v45 + 7);
        *(a3 + 47) = v32;
        if (*(a2 + 16) > *(a1 + 16))
        {
          v53 = *a1;
          v60 = *(a1 + 16);
          v35 = *(a1 + 24);
          *&v46 = *(a1 + 32);
          *(&v46 + 7) = *(a1 + 39);
          v36 = *(a1 + 47);
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *(a1 + 24) = 0;
          v37 = *a2;
          *(a1 + 16) = *(a2 + 16);
          *a1 = v37;
          v38 = *(a2 + 40);
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 40) = v38;
          *a2 = v53;
          *(a2 + 16) = v60;
          *(a2 + 24) = v35;
          *(a2 + 32) = v46;
          *(a2 + 39) = *(&v46 + 7);
          *(a2 + 47) = v36;
        }
      }
    }
  }

  v39 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1AC0A02B8(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_1AC09FBA4(a1, (a1 + 48), (a2 - 48));
        break;
      case 4:
        sub_1AC09FBA4(a1, (a1 + 48), (a1 + 96));
        if (*(a2 - 32) > *(a1 + 112))
        {
          v43 = *(a1 + 96);
          v47 = *(a1 + 112);
          v23 = *(a1 + 120);
          *&v38 = *(a1 + 128);
          *(&v38 + 7) = *(a1 + 135);
          v24 = *(a1 + 143);
          *(a1 + 120) = 0;
          *(a1 + 136) = 0;
          *(a1 + 128) = 0;
          v25 = *(a2 - 48);
          *(a1 + 112) = *(a2 - 32);
          *(a1 + 96) = v25;
          v26 = *(a2 - 8);
          *(a1 + 120) = *(a2 - 24);
          *(a1 + 136) = v26;
          *(a2 - 48) = v43;
          *(a2 - 32) = v47;
          *(a2 - 24) = v23;
          *(a2 - 16) = v38;
          *(a2 - 9) = *(&v38 + 7);
          *(a2 - 1) = v24;
          if (*(a1 + 112) > *(a1 + 64))
          {
            v44 = *(a1 + 48);
            v48 = *(a1 + 64);
            v27 = *(a1 + 72);
            *&v39 = *(a1 + 80);
            *(&v39 + 7) = *(a1 + 87);
            v28 = *(a1 + 95);
            *(a1 + 48) = *(a1 + 96);
            *(a1 + 64) = *(a1 + 112);
            *(a1 + 72) = *(a1 + 120);
            *(a1 + 88) = *(a1 + 136);
            *(a1 + 112) = v48;
            *(a1 + 96) = v44;
            *(a1 + 120) = v27;
            *(a1 + 128) = v39;
            *(a1 + 135) = *(&v39 + 7);
            v29 = *(a1 + 64);
            v30 = *(a1 + 16);
            *(a1 + 143) = v28;
            if (v29 > v30)
            {
              v45 = *a1;
              v49 = *(a1 + 16);
              v31 = *(a1 + 24);
              *&v40 = *(a1 + 32);
              *(&v40 + 7) = *(a1 + 39);
              v32 = *(a1 + 47);
              *a1 = *(a1 + 48);
              *(a1 + 16) = *(a1 + 64);
              *(a1 + 24) = *(a1 + 72);
              *(a1 + 40) = *(a1 + 88);
              *(a1 + 64) = v49;
              *(a1 + 48) = v45;
              *(a1 + 72) = v31;
              *(a1 + 80) = v40;
              *(a1 + 87) = *(&v40 + 7);
              result = 1;
              *(a1 + 95) = v32;
              v33 = *MEMORY[0x1E69E9840];
              return result;
            }
          }
        }

        break;
      case 5:
        sub_1AC09FE5C(a1, a1 + 48, a1 + 96, (a1 + 144), (a2 - 48));
        break;
      default:
        goto LABEL_11;
    }

LABEL_25:
    result = 1;
    v34 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v2 < 2)
  {
    goto LABEL_25;
  }

  if (v2 == 2)
  {
    if (*(a2 - 32) > *(a1 + 16))
    {
      v41 = *a1;
      v46 = *(a1 + 16);
      v3 = *(a1 + 24);
      *&v36 = *(a1 + 32);
      *(&v36 + 7) = *(a1 + 39);
      v4 = *(a1 + 47);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      v5 = *(a2 - 48);
      *(a1 + 16) = *(a2 - 32);
      *a1 = v5;
      v6 = *(a2 - 8);
      *(a1 + 24) = *(a2 - 24);
      *(a1 + 40) = v6;
      *(a2 - 48) = v41;
      *(a2 - 32) = v46;
      *(a2 - 24) = v3;
      *(a2 - 16) = v36;
      *(a2 - 9) = *(&v36 + 7);
      result = 1;
      *(a2 - 1) = v4;
      v8 = *MEMORY[0x1E69E9840];
      return result;
    }

    goto LABEL_25;
  }

LABEL_11:
  v9 = a1 + 96;
  sub_1AC09FBA4(a1, (a1 + 48), (a1 + 96));
  v12 = a1 + 144;
  if (a1 + 144 == a2)
  {
    goto LABEL_25;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v16 = *(v12 + 16);
    if (v16 > *(v9 + 16))
    {
      v42 = *v12;
      v17 = *(v12 + 24);
      *v37 = *(v12 + 32);
      *&v37[7] = *(v12 + 39);
      v18 = *(v12 + 47);
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      v19 = v13;
      *(v12 + 24) = 0;
      do
      {
        v20 = a1 + v19;
        *(v20 + 144) = *(a1 + v19 + 96);
        *(v20 + 160) = *(a1 + v19 + 112);
        *(v20 + 168) = *(a1 + v19 + 120);
        *(v20 + 184) = *(a1 + v19 + 136);
        *(v20 + 143) = 0;
        *(v20 + 120) = 0;
        if (v19 == -96)
        {
          v15 = a1;
          goto LABEL_14;
        }

        v19 -= 48;
      }

      while (v16 > *(v20 + 64));
      v15 = a1 + v19 + 144;
LABEL_14:
      *v15 = v42;
      *(v15 + 16) = v16;
      *(v20 + 120) = v17;
      *(v15 + 32) = *v37;
      *(v15 + 39) = *&v37[7];
      *(v15 + 47) = v18;
      if (++v14 == 8)
      {
        break;
      }
    }

    v9 = v12;
    v13 += 48;
    v12 += 48;
    if (v12 == a2)
    {
      goto LABEL_25;
    }
  }

  result = v12 + 48 == a2;
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1AC0A0710(void *a1, unint64_t *a2)
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

void sub_1AC0A0A4C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1AC0A0A4C(a1, *a2);
    sub_1AC0A0A4C(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4)
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 7);
      if (v5 != v4)
      {
        do
        {
          if (*(v5 - 1) < 0)
          {
            operator delete(*(v5 - 24));
          }

          v5 -= 48;
        }

        while (v5 != v4);
        v6 = *(a2 + 7);
      }

      *(a2 + 8) = v4;
      operator delete(v6);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v7 = a2;
    }

    else
    {
      v7 = a2;
    }

    operator delete(v7);
  }
}

void sub_1AC0A0B24(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(a2 + 32);
    v5 = *(a2 + 24);
    if (v4 != v3)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 24));
        }

        v4 -= 48;
      }

      while (v4 != v3);
      v5 = *(a2 + 24);
    }

    *(a2 + 32) = v3;
    operator delete(v5);
  }

  if (*(a2 + 23) < 0)
  {
    v6 = *a2;

    operator delete(v6);
  }
}

void *sub_1AC0A0BC0(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_1AC0A0D5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC0A0D70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0A0D70(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1AC0A0B24(*(a1 + 8), v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1AC0A343C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_localeIdentifier(a2, v5, v6, v7, v8);
  v14 = objc_msgSend_localeIdentifier(v4, v10, v11, v12, v13);
  v18 = objc_msgSend_compare_(v9, v15, v14, v16, v17);

  return v18;
}

void sub_1AC0A34AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1AC0A385C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  *(a1 + 31) = 3;
  *(a1 + 8) = 4092732;
  *(a1 + 55) = 4;
  strcpy((a1 + 32), "</s>");
  *(a1 + 56) = 1802401084;
  v9 = (a1 + 56);
  *(a1 + 79) = 5;
  *(a1 + 60) = 62;
  *a1 = &unk_1F20D0D40;
  *(a1 + 96) = 0u;
  v10 = (a1 + 96);
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  if (a1 + 96 != a2)
  {
    *(a1 + 128) = *(a2 + 32);
    sub_1AC0A44FC(a1 + 96, *(a2 + 16), 0);
  }

  *(a1 + 80) = a3;
  v11 = sub_1AC0A4C90(v10, (a1 + 80));
  if (*(v11 + 47) < 0)
  {
    v11[4] = 0;
    v12 = v11[3];
  }

  else
  {
    v12 = v11 + 3;
    *(v11 + 47) = 0;
  }

  *v12 = 0;
  *(a1 + 84) = a4;
  v13 = sub_1AC0A4C90(v10, (a1 + 84));
  if ((*(v13 + 47) & 0x80000000) == 0)
  {
    *(v13 + 47) = 0;
    *(v13 + 24) = 0;
    *(a1 + 88) = a5;
    v14 = (a1 + 88);
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13[4] = 0;
  *v13[3] = 0;
  *(a1 + 88) = a5;
  v14 = (a1 + 88);
  if (*(a1 + 79) < 0)
  {
LABEL_8:
    v15 = v14;
    operator delete(*v9);
    v14 = v15;
  }

LABEL_9:
  strcpy((a1 + 56), "UNK");
  *(a1 + 79) = 3;
  v16 = sub_1AC0A4C90(v10, v14);
  if (*(v16 + 47) < 0)
  {
    v16[4] = 3;
    v17 = v16[3];
  }

  else
  {
    v17 = v16 + 3;
    *(v16 + 47) = 3;
  }

  *v17 = 4935253;
  return a1;
}

void sub_1AC0A3A68(_Unwind_Exception *a1)
{
  sub_1AC07A2F8(v2);
  sub_1AC08D164(v1);
  _Unwind_Resume(a1);
}

void *sub_1AC0A3A88@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  result = (*(*a1 + 80))(a1);
  if (result <= v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::to_string(&v21, a2);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v21;
    }

    else
    {
      v19 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    sub_1AC08E2B0(exception, v19, size);
    __cxa_throw(exception, &unk_1F20D0C28, sub_1AC08D4C0);
  }

  v8 = a1[13];
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v6;
      if (*&v8 <= v6)
      {
        v10 = a2 % v8.i32[0];
      }
    }

    else
    {
      v10 = (v8.i32[0] - 1) & v6;
    }

    v11 = *(a1[12] + 8 * v10);
    if (v11)
    {
      v11 = *v11;
      if (v11)
      {
        if (v9.u32[0] < 2uLL)
        {
          v12 = *&v8 - 1;
          while (1)
          {
            v14 = v11[1];
            if (v14 == v6)
            {
              if (*(v11 + 4) == a2)
              {
                goto LABEL_23;
              }
            }

            else if ((v14 & v12) != v10)
            {
              goto LABEL_22;
            }

            v11 = *v11;
            if (!v11)
            {
              goto LABEL_23;
            }
          }
        }

        do
        {
          v13 = v11[1];
          if (v13 == v6)
          {
            if (*(v11 + 4) == a2)
            {
              break;
            }
          }

          else
          {
            if (v13 >= *&v8)
            {
              v13 %= *&v8;
            }

            if (v13 != v10)
            {
              goto LABEL_22;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  else
  {
LABEL_22:
    v11 = 0;
  }

LABEL_23:
  if (*(v11 + 47) < 0)
  {
    v16 = v11[3];
    v17 = v11[4];

    return sub_1AC0674A0(a3, v16, v17);
  }

  else
  {
    v15 = *(v11 + 3);
    *(a3 + 16) = v11[5];
    *a3 = v15;
  }

  return result;
}

void sub_1AC0A3C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AC0A3CA8(uint64_t a1, void *__s1, size_t __n)
{
  v24[0] = __s1;
  v24[1] = __n;
  v6 = *(a1 + 55);
  if (v6 < 0)
  {
    v7 = *(a1 + 32);
    if (__n != *(a1 + 40))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = (a1 + 32);
    if (__n != v6)
    {
      goto LABEL_6;
    }
  }

  result = memcmp(__s1, v7, __n);
  if (!result)
  {
    return result;
  }

LABEL_6:
  v9 = *(a1 + 31);
  if (v9 < 0)
  {
    v10 = *(a1 + 8);
    if (__n != *(a1 + 16))
    {
      goto LABEL_11;
    }

LABEL_10:
    result = memcmp(__s1, v10, __n);
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  v10 = (a1 + 8);
  if (__n == v9)
  {
    goto LABEL_10;
  }

LABEL_11:
  v11 = *(a1 + 112);
  if (!v11)
  {
LABEL_27:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AC063200(&v23, "Did not find ID for token ");
    sub_1AC0A42C8(v21, v24);
    if ((v22 & 0x80u) == 0)
    {
      v17 = v21;
    }

    else
    {
      v17 = v21[0];
    }

    if ((v22 & 0x80u) == 0)
    {
      v18 = v22;
    }

    else
    {
      v18 = v21[1];
    }

    v19 = std::string::append(&v23, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &__p);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  while (1)
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = *(v11 + 4);
    if (*(v11 + 47) < 0)
    {
      sub_1AC0674A0(&__p.__r_.__value_.__s.__data_[8], v11[3], v11[4]);
    }

    else
    {
      *&__p.__r_.__value_.__r.__words[1] = *(v11 + 3);
      v26 = v11[5];
    }

    v12 = HIBYTE(v26);
    v13 = SHIBYTE(v26);
    if (v26 < 0)
    {
      v12 = __p.__r_.__value_.__r.__words[2];
    }

    if (v12 != __n)
    {
      v15 = 0;
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_24:
      operator delete(__p.__r_.__value_.__l.__size_);
      goto LABEL_25;
    }

    if (v26 >= 0)
    {
      p_size = &__p.__r_.__value_.__l.__size_;
    }

    else
    {
      p_size = __p.__r_.__value_.__l.__size_;
    }

    v15 = memcmp(__s1, p_size, __n) == 0;
    if (v13 < 0)
    {
      goto LABEL_24;
    }

LABEL_25:
    if (v15)
    {
      return *(v11 + 4);
    }

    v11 = *v11;
    if (!v11)
    {
      goto LABEL_27;
    }
  }
}

void sub_1AC0A3E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(a23);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if (a20 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if (a20 < 0)
  {
LABEL_4:
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }

LABEL_9:
    __cxa_free_exception(v28);
    goto LABEL_10;
  }

LABEL_8:
  if (!v29)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_1AC0A3F28()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1AC0A3F7C(exception);
  __cxa_throw(exception, &unk_1F20D0DA0, std::logic_error::~logic_error);
}

std::logic_error *sub_1AC0A3F7C(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "Function not yet implemented");
  result->__vftable = &unk_1F20D0DE0;
  return result;
}

void sub_1AC0A3FBC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1AC0A3F7C(exception);
  __cxa_throw(exception, &unk_1F20D0DA0, std::logic_error::~logic_error);
}

void sub_1AC0A4010()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1AC0A3F7C(exception);
  __cxa_throw(exception, &unk_1F20D0DA0, std::logic_error::~logic_error);
}

void sub_1AC0A4064(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 23) = 0;
  *a3 = 0;
  v5 = *a2;
  if (a2[1] - *a2 != 4)
  {
    v10 = 0;
    while (1)
    {
      (*(*a1 + 40))(&v15, a1, *(v5 + 4 * v10));
      v11 = std::string::append(&v15, " ", 1uLL);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v17 = v11->__r_.__value_.__r.__words[2];
      *__p = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (v17 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v17 >= 0)
      {
        v14 = HIBYTE(v17);
      }

      else
      {
        v14 = __p[1];
      }

      std::string::append(a3, v13, v14);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_23:
          operator delete(v15.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_23;
      }

      ++v10;
      v5 = *a2;
      v6 = ((a2[1] - *a2) >> 2) - 1;
      if (v10 >= v6)
      {
        goto LABEL_3;
      }
    }
  }

  v6 = 0;
LABEL_3:
  (*(*a1 + 40))(__p, a1, *(v5 + 4 * v6));
  if (v17 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v17 >= 0)
  {
    v8 = HIBYTE(v17);
  }

  else
  {
    v8 = __p[1];
  }

  std::string::append(a3, v7, v8);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AC0A4214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0A4280(uint64_t a1)
{
  sub_1AC0A43B0(a1);

  JUMPOUT(0x1AC5AC440);
}

_BYTE *sub_1AC0A42C8(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

void sub_1AC0A4378(std::logic_error *a1)
{
  std::logic_error::~logic_error(a1);

  JUMPOUT(0x1AC5AC440);
}

uint64_t sub_1AC0A43B0(uint64_t a1)
{
  *a1 = &unk_1F20D0D40;
  v2 = *(a1 + 112);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *a1 = &unk_1F20D0C78;
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_13;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_13:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_1AC0A44A8(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1AC0A44FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        *(v7 + 4) = *(a2 + 4);
        if (v7 != a2)
        {
          v8 = *(a2 + 47);
          if (*(v7 + 47) < 0)
          {
            if (v8 >= 0)
            {
              v10 = a2 + 3;
            }

            else
            {
              v10 = a2[3];
            }

            if (v8 >= 0)
            {
              v11 = *(a2 + 47);
            }

            else
            {
              v11 = a2[4];
            }

            sub_1AC077768(v7 + 3, v10, v11);
          }

          else if ((*(a2 + 47) & 0x80) != 0)
          {
            sub_1AC077698(v7 + 24, a2[3], a2[4]);
          }

          else
          {
            v9 = *(a2 + 3);
            v7[5] = a2[5];
            *(v7 + 3) = v9;
          }
        }

        v12 = *v7;
        sub_1AC0A4650(a1, v7);
        a2 = *a2;
        v7 = v12;
        if (!v12)
        {
          goto LABEL_22;
        }
      }

      do
      {
        v13 = *v7;
        if (*(v7 + 47) < 0)
        {
          operator delete(v7[3]);
        }

        operator delete(v7);
        v7 = v13;
      }

      while (v13);
    }
  }

LABEL_22:
  if (a2 != a3)
  {
    sub_1AC0A4BBC();
  }
}

void sub_1AC0A4620(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1AC0A44A8(v1, v2);
  __cxa_rethrow();
}

unsigned int *sub_1AC0A4650(uint64_t *a1, unsigned int *a2)
{
  v5 = a2 + 4;
  v4 = a2[4];
  *(v5 - 1) = v4;
  v6 = sub_1AC0A4780(a1, v4, v5);
  v7 = a1[1];
  v8 = *(v5 - 1);
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    if (v8 >= *&v7)
    {
      v8 %= *&v7;
    }
  }

  else
  {
    v8 &= *&v7 - 1;
  }

  if (v6)
  {
    *a2 = *v6;
    *v6 = a2;
    if (*a2)
    {
      v10 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v10 >= *&v7)
        {
          v10 %= *&v7;
        }
      }

      else
      {
        v10 &= *&v7 - 1;
      }

      if (v10 != v8)
      {
        v13 = (*a1 + 8 * v10);
LABEL_19:
        *v13 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v11 = *a1;
    *(*a1 + 8 * v8) = a1 + 2;
    if (*a2)
    {
      v12 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      v13 = (v11 + 8 * v12);
      goto LABEL_19;
    }
  }

  ++a1[3];
  return a2;
}

uint64_t *sub_1AC0A4780(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (v6 && (v8 * v6) >= v7)
  {
    v9 = v6 - 1;
    if ((v6 & (v6 - 1)) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v17 = 1;
  if (v6 >= 3)
  {
    v17 = (v6 & (v6 - 1)) != 0;
  }

  v18 = v17 | (2 * v6);
  v19 = vcvtps_u32_f32(v7 / v8);
  if (v18 <= v19)
  {
    prime = v19;
  }

  else
  {
    prime = v18;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 8);
  }

  if (prime > v6)
  {
    goto LABEL_22;
  }

  if (prime < v6)
  {
    v21 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v6 < 3 || (v22 = vcnt_s8(v6), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
    {
      v24 = prime;
      v25 = std::__next_prime(v21);
      if (v24 <= v25)
      {
        prime = v25;
      }

      else
      {
        prime = v24;
      }

      if (prime >= v6)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v23 = 1 << -__clz(v21 - 1);
      if (v21 >= 2)
      {
        v21 = v23;
      }

      if (prime <= v21)
      {
        prime = v21;
      }

      if (prime >= v6)
      {
        goto LABEL_38;
      }
    }

LABEL_22:
    sub_1AC0A4A00(a1, prime);
  }

LABEL_38:
  v6 = *(a1 + 8);
  v9 = v6 - 1;
  if ((v6 & (v6 - 1)) == 0)
  {
LABEL_4:
    v10 = *(*a1 + 8 * (v9 & a2));
    if (!v10)
    {
      return 0;
    }

    v11 = 0;
    do
    {
      result = v10;
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v16 = v10[1];
      if ((v16 & v9) != (v9 & a2))
      {
        break;
      }

      v12 = v16 == a2 && *(v10 + 4) == *a3;
      v13 = v12 != (v11 & 1);
      v14 = v11 & v13;
      v11 |= v13;
    }

    while ((v14 & 1) == 0);
    return result;
  }

LABEL_39:
  v26 = a2;
  if (v6 <= a2)
  {
    v26 = a2 % v6;
  }

  v27 = *(*a1 + 8 * v26);
  if (!v27)
  {
    return 0;
  }

  v28 = 0;
  do
  {
    result = v27;
    v27 = *v27;
    if (!v27)
    {
      break;
    }

    v32 = v27[1];
    v33 = v32;
    if (v32 >= v6)
    {
      v33 = v32 % v6;
    }

    if (v33 != v26)
    {
      break;
    }

    v29 = v32 == a2 && *(v27 + 4) == *a3;
    v30 = v29 != (v28 & 1);
    v31 = v28 & v30;
    v28 |= v30;
  }

  while (v31 != 1);
  return result;
}

void sub_1AC0A4A00(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1AC0A4C68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC07A6A8(va);
  _Unwind_Resume(a1);
}

void sub_1AC0A4C7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC07A6A8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AC0A4C90(void *a1, unsigned int *a2)
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

void sub_1AC0A4FC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC07A6A8(va);
  _Unwind_Resume(a1);
}

void sub_1AC0A50B8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1AC0A59B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AC0A5CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    sub_1AC066F88();
  }

  (*(*a12 + 48))(a12);
  sub_1AC063398(&a9);
  _Unwind_Resume(a1);
}

void sub_1AC0A5D10(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1AC10B290(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0A6074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a16)
  {
    sub_1AC066F88();
  }

  (*(*a16 + 48))(a16);
  sub_1AC063398(&a13);

  _Unwind_Resume(a1);
}

void sub_1AC0A6100(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1AC10B290(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AC0A632C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    sub_1AC066F88();
  }

  (*(*a12 + 48))(a12);
  JUMPOUT(0x1AC0A6364);
}

void sub_1AC0A6374(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1AC10B290(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AC0A6ED8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F20D0E08;
  a2[1] = v2;
  return result;
}