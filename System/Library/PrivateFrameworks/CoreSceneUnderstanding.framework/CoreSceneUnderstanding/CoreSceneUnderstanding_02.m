void sub_1AC0A6F04(uint64_t a1)
{
  v2 = sub_1AC090E50();
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSUComputeCaptionForImage", "", v5, 2u);
  }
}

uint64_t sub_1AC0A6F8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z69[CSUImageCaptioner computeCaptionForImage:withDecodingMethod:error:]E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z69[CSUImageCaptioner computeCaptionForImage:withDecodingMethod:error:]E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z69[CSUImageCaptioner computeCaptionForImage:withDecodingMethod:error:]E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z69[CSUImageCaptioner computeCaptionForImage:withDecodingMethod:error:]E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AC0A7074(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F20D0E88;
  a2[1] = v2;
  return result;
}

void sub_1AC0A70A0(uint64_t a1)
{
  v2 = sub_1AC090E50();
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSUComputeCaptionForEmbeddingNSData", "", v5, 2u);
  }
}

uint64_t sub_1AC0A7128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z73[CSUImageCaptioner computeCaptionForEmbedding:withDecodingMethod:error:]E3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "Z73[CSUImageCaptioner computeCaptionForEmbedding:withDecodingMethod:error:]E3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z73[CSUImageCaptioner computeCaptionForEmbedding:withDecodingMethod:error:]E3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z73[CSUImageCaptioner computeCaptionForEmbedding:withDecodingMethod:error:]E3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AC0A7210(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F20D0F08;
  a2[1] = v2;
  return result;
}

void sub_1AC0A723C(uint64_t a1)
{
  v2 = sub_1AC090E50();
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSUComputeCaptionForEmbeddingCSUBuffer", "", v5, 2u);
  }
}

uint64_t sub_1AC0A72C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z82[CSUImageCaptioner computeCaptionForCSUBufferEmbedding:withDecodingMethod:error:]E3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "Z82[CSUImageCaptioner computeCaptionForCSUBufferEmbedding:withDecodingMethod:error:]E3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z82[CSUImageCaptioner computeCaptionForCSUBufferEmbedding:withDecodingMethod:error:]E3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z82[CSUImageCaptioner computeCaptionForCSUBufferEmbedding:withDecodingMethod:error:]E3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AC0A733C(uint64_t a1, uint64_t *a2)
{
  v39 = (a2[1] - *a2) >> 2;
  sub_1AC0A7A04(&v35, *a1, 0);
  sub_1AC0A7A04(v34, *a1, *(a1 + 8));
  v4 = v34[0];
  if (v35 == v34[0])
  {
    goto LABEL_3;
  }

LABEL_2:
  v5 = v37;
  do
  {
    if (v38 >= v5 || v38 + 1 >= v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Read beyond the end of taxonomy relations buffer!");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v7 = (v36 + 2 * v38);
    v8 = *v7;
    v9 = v7[1];
    sub_1AC0A7818(&v39, v8);
    v10 = *a2;
    if (v9)
    {
      v11 = 2 * v9;
      v12 = v7 + 2;
      v13 = 0.0;
      do
      {
        sub_1AC0A7818(&v39, *v12);
        v14 = *v12;
        v15 = *a2;
        v16 = *(*a2 + 4 * v14);
        if (v16 > 1.0 || v16 < 0.0)
        {
          v21 = __cxa_allocate_exception(0x10uLL);
          std::to_string(&v29, *(v15 + 4 * v14));
          sub_1AC063E68("Mathematical error during graphical model propagation: probability ", &v29, &v30);
          sub_1AC063FAC(" for node ", &v30, &v31);
          std::to_string(&v28, *v12);
          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v28;
          }

          else
          {
            v22 = v28.__r_.__value_.__r.__words[0];
          }

          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v28.__r_.__value_.__l.__size_;
          }

          v24 = std::string::append(&v31, v22, size);
          v25 = *&v24->__r_.__value_.__l.__data_;
          v32.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&v32.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          sub_1AC063FAC(" is out of bounds!", &v32, &v33);
          std::runtime_error::runtime_error(v21, &v33);
          __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v17 = *(a1 + 16);
        v18 = powf(v16, v17);
        v13 = v13 - log(1.0 - v18);
        ++v12;
        v11 -= 2;
      }

      while (v11);
    }

    else
    {
      v17 = *(a1 + 16);
      v13 = 0.0;
    }

    v19 = exp(-v13);
    v20 = fmin(pow(1.0 - v19, 1.0 / v17), 1.0);
    *(v10 + 4 * v8) = v20;
    if (v38 + 1 >= v37)
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v27, "Read beyond the end of taxonomy relations buffer!");
      __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v38 += *(v36 + 2 * v38 + 2) + 2;
    v4 = v34[0];
    if (v35 != v34[0])
    {
      goto LABEL_2;
    }

LABEL_3:
    v5 = v37;
    v6 = v36 == v34[1] && v37 == v34[2];
  }

  while (!v6 || v38 != v34[3]);
}

void sub_1AC0A76BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46)
{
  if (a45 < 0)
  {
    operator delete(a40);
    if ((a38 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a38 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a33);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a9);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if (a20 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_7:
    operator delete(__p);
    if ((v47 & 1) == 0)
    {
LABEL_16:

      _Unwind_Resume(a1);
    }

LABEL_15:
    __cxa_free_exception(v46);

    _Unwind_Resume(a1);
  }

LABEL_14:
  if (!v47)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

unint64_t *sub_1AC0A7818(unint64_t *result, unint64_t a2)
{
  if (*result <= a2)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v10, *v3);
    sub_1AC063E68("Score vector provided to graphical model has capacity ", &v10, &v11);
    sub_1AC063FAC(" but there exists a node with index ", &v11, &v12);
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

void sub_1AC0A7918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void *sub_1AC0A7A04(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  v6 = v5;
  a1[1] = objc_msgSend_bytes(v6, v7, v8, v9, v10);
  a1[2] = objc_msgSend_length(v5, v11, v12, v13, v14) >> 1;
  a1[3] = a3;

  return a1;
}

uint64_t sub_1AC0A8218(_Unwind_Exception *a1, int a2)
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

uint64_t sub_1AC0A840C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
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

void sub_1AC0A8B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_1AC066D78(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0A8CB8(uint64_t result, char *a2)
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

void sub_1AC0A8DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

id sub_1AC0A9A00(void ***a1, void *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v82 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(**a1, v3, v82, v4, v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(**a1, v7, v82, v8, v9);

    if (v10)
    {
      v83 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14);
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      obj = v10;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v85, v89, 16);
      if (v16)
      {
        v17 = *v86;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v86 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v85 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v19;
            }

            else
            {
              v20 = 0;
            }

            v21 = v20;
            v25 = v21;
            if (v21)
            {
              v26 = objc_msgSend_objectForKeyedSubscript_(v21, v22, @"replaceKey", v23, v24);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v30 = objc_msgSend_objectForKeyedSubscript_(v25, v27, @"replaceKey", v28, v29);
              }

              else
              {
                v30 = 0;
              }

              v34 = objc_msgSend_objectForKeyedSubscript_(v25, v31, @"replaceWith", v32, v33);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v38 = objc_msgSend_objectForKeyedSubscript_(v25, v35, @"replaceWith", v36, v37);
              }

              else
              {
                v38 = 0;
              }

              v42 = objc_msgSend_objectForKeyedSubscript_(v25, v39, @"replaceProb", v40, v41);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v46 = objc_msgSend_objectForKeyedSubscript_(v25, v43, @"replaceProb", v44, v45);
              }

              else
              {
                v46 = 0;
              }

              v50 = objc_msgSend_objectForKeyedSubscript_(v25, v47, @"genderOption", v48, v49);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v54 = objc_msgSend_objectForKeyedSubscript_(v25, v51, @"genderOption", v52, v53);
              }

              else
              {
                v54 = 0;
              }

              if (v30 && v38)
              {
                v55 = [CSUCaptionRuntimeReplacements alloc];
                objc_msgSend_doubleValue(v46, v56, v57, v58, v59);
                v61 = objc_msgSend_initWithKey_value_prob_genderOption_(v55, v60, v30, v38, v54);
                objc_msgSend_addObject_(v83, v62, v61, v63, v64);
              }
            }
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, &v85, v89, 16);
        }

        while (v16);
      }

      v66 = v83;
      v67 = obj;
      v68 = obj;
      goto LABEL_36;
    }
  }

  else
  {
  }

  v67 = sub_1AC090E50();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
  {
    sub_1AC1200AC(v82, v67, v69, v70, v71, v72, v73, v74);
  }

  v68 = 0;
  v66 = 0;
LABEL_36:

  v79 = objc_msgSend_copy(v66, v75, v76, v77, v78);
  v80 = *MEMORY[0x1E69E9840];

  return v79;
}

void sub_1AC0A9FBC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_1AC0AA38C(_Unwind_Exception *a1, int a2)
{
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v6 = __cxa_begin_catch(a1);
  v7 = sub_1AC070210(v6, v2);
  __cxa_end_catch();
  return v7;
}

void sub_1AC0AAB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1AC068024(&a13);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  sub_1AC068024(&a26);

  _Unwind_Resume(a1);
}

void sub_1AC0AB994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, void *a35, uint64_t a36)
{
  sub_1AC09790C((v36 - 192));
  sub_1AC069094(&a16);
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_1AC0ABAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (*(v32 - 169) < 0)
  {
    operator delete(*(v32 - 192));
  }

  sub_1AC069094(&a32);
  if (SHIBYTE(a25) < 0)
  {
    operator delete(a23);
  }

  sub_1AC0959BC(&a18);
  operator delete(a9);
  _Unwind_Resume(a1);
}

void sub_1AC0ABE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (a4 != a3 + 4)
  {
    if (((a4 - (a3 + 4)) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  if (a5)
  {
    objc_msgSend_nextTokensForInputs_KVCache_AndforMaskPosition_(a5, a2, &v15, a7, a6);
    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    *__p = 0u;
  }

  if (BYTE8(v14[1]))
  {
    if (__p[1] != __p[0])
    {
      if (((__p[1] - __p[0]) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AC060AAC();
    }

    v9 = *(a2 + 104);
    if (v9 != (a2 + 112))
    {
      do
      {
        *(4 * *(v9 + 7)) = 872415232;
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

      while (v11 != (a2 + 112));
    }

    if (*&v14[1])
    {
      atomic_fetch_add_explicit((*&v14[1] + 8), 1uLL, memory_order_relaxed);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = *(&v14[0] + 1);
    *(a1 + 32) = *&v14[1];
    if (*&v14[1])
    {
      atomic_fetch_add_explicit((*&v14[1] + 8), 1uLL, memory_order_relaxed);
      *(a1 + 40) = 1;
      if (!atomic_fetch_add((*&v14[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(**&v14[1] + 16))(*&v14[1]);
        std::__shared_weak_count::__release_weak(*&v14[1]);
      }
    }

    else
    {
      *(a1 + 40) = 1;
    }
  }

  else
  {
    *a1 = *__p;
    *(a1 + 16) = *&v14[0];
    __p[0] = 0;
    *(a1 + 24) = *(v14 + 8);
    *&v14[1] = 0;
    *(a1 + 40) = BYTE8(v14[1]);
  }

  if (*&v14[1] && !atomic_fetch_add((*&v14[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**&v14[1] + 16))(*&v14[1]);
    std::__shared_weak_count::__release_weak(*&v14[1]);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_1AC0AC254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_1AC069094(va);
  if (v6)
  {
    operator delete(v6);
    if (!v5)
    {
LABEL_3:
      sub_1AC097890(va1);
      _Unwind_Resume(a1);
    }
  }

  else if (!v5)
  {
    goto LABEL_3;
  }

  operator delete(v5);
  sub_1AC097890(va1);
  _Unwind_Resume(a1);
}

void sub_1AC0AC2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1AC097890(va);
  _Unwind_Resume(a1);
}

void sub_1AC0AC2BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0AE29C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AC0AE64C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);

  _Unwind_Resume(a1);
}

void sub_1AC0AEA34(_Unwind_Exception *a1)
{
  sub_1AC068024((v3 - 152));

  _Unwind_Resume(a1);
}

uint64_t sub_1AC0AF794(void *a1, uint64_t *a2)
{
  v25[19] = *MEMORY[0x1E69E9840];
  sub_1AC0AFD6C(v23, a2);
  if ((v24[*(v23[0] - 24) + 16] & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v21);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  std::istream::seekg();
  std::istream::tellg();
  std::istream::seekg();
  v18 = 0;
  v19 = 0;
  __p = 0;
  if (v22)
  {
    if ((v22 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  std::istream::read();
  sub_1AC0AFF48(&__p, 1, 1, v15);
  v3 = sub_1AC0B0038(v15, "feature_size");
  v20 = 0;
  sub_1AC0BCFFC(v3, &v20);
  a1[1] = v20;
  v4 = sub_1AC0B0038(v15, "num_hashes");
  v20 = 0;
  sub_1AC0BCFFC(v4, &v20);
  a1[3] = v20;
  v5 = sub_1AC0B0038(v15, "hash_size");
  v20 = 0;
  sub_1AC0BCFFC(v5, &v20);
  a1[2] = v20;
  v6 = sub_1AC0B0038(v15, "matrix");
  v7 = sub_1AC0B0270(v6);
  v8 = v7[1];
  if (v8 != *v7)
  {
    if (((v8 - *v7) & 0x8000000000000000) == 0)
    {
      v9 = v8 - *v7;
      operator new();
    }

    sub_1AC060AAC();
  }

  v12 = a1[2] * a1[1];
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v13 = a1[4];
  if (v13)
  {
    a1[5] = v13;
    operator delete(v13);
    a1[4] = 0;
    a1[5] = 0;
    a1[6] = 0;
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  sub_1AC0B05DC(&v16, v15[0]);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v23[0] = *MEMORY[0x1E69E54C8];
  *(v23 + *(v23[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1AC5AC100](v24);
  std::istream::~istream();
  result = MEMORY[0x1AC5AC380](v25);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC0AFB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      sub_1AC0B0514(&a35, MEMORY[0x1E69E54C8]);
      MEMORY[0x1AC5AC380](&STACK[0x260]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

void *sub_1AC0AFC28(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = 0;
  a1[3] = 0;
  *a1 = &unk_1F20D0360;
  a1[5] = 0;
  a1[6] = 0;
  sub_1AC0AF794(a1, a2);
  return a1;
}

void sub_1AC0AFC80(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AC0AFCA0(void *result)
{
  *result = &unk_1F20D0360;
  v1 = result[4];
  if (v1)
  {
    result[5] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1AC0AFCF8(void *a1)
{
  *a1 = &unk_1F20D0360;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1AC5AC440);
}

uint64_t *sub_1AC0AFD6C(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v5 = *(MEMORY[0x1E69E54C8] + 16);
  v6 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x1E69E5528] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x1AC5AC0F0](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1AC0AFF04(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1AC5AC380](v1);
  _Unwind_Resume(a1);
}

void sub_1AC0AFF48(void *a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v16[0] = 0;
  v17 = 0;
  v10 = 0;
  v11 = v16;
  *__p = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = a3;
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v8 = xmmword_1AC129B30;
  v9 = 1;
  if (!sub_1AC0B1014(v7, 4, &v11, a2, 0))
  {
    *a4 = 9;
    *(a4 + 8) = 0;
    v6 = __p[0];
    if (!__p[0])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1AC0BC14C(a4, v16);
  v6 = __p[0];
  if (__p[0])
  {
LABEL_3:
    __p[1] = v6;
    operator delete(v6);
  }

LABEL_4:
  sub_1AC0B05DC(&v17, v16[0]);
}

void sub_1AC0B000C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1AC0B05DC((v17 + 8), *(v18 - 32));
  _Unwind_Resume(a1);
}

void *sub_1AC0B0038(uint64_t a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v11 = sub_1AC0BCD9C(a1);
    sub_1AC063200(&v12, v11);
    sub_1AC063E68("cannot use operator[] with a string argument with ", &v12, &__dst);
    sub_1AC0BCC00(305, &__dst, exception);
    __cxa_throw(exception, &unk_1F20D0428, sub_1AC0BCDC4);
  }

  v4 = *(a1 + 8);
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memcpy(&__dst, __s, v5);
  }

  __dst.__r_.__value_.__s.__data_[v6] = 0;
  v12.__r_.__value_.__r.__words[0] = &__dst;
  v7 = sub_1AC0BCE18(v4, &__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v7;
    operator delete(__dst.__r_.__value_.__l.__data_);
    v7 = v8;
  }

  return v7 + 7;
}

void sub_1AC0B01F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AC0B0270(uint64_t a1)
{
  if (*a1 != 8)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_1AC0BCD9C(a1);
    sub_1AC063200(&v5, v4);
    sub_1AC063E68("type must be binary, but is ", &v5, &v6);
    sub_1AC0BCC00(302, &v6, exception);
    __cxa_throw(exception, &unk_1F20D0428, sub_1AC0BCDC4);
  }

  return *(a1 + 8);
}

void sub_1AC0B0320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1AC0B0380(uint64_t a1, const float *__B, float *__C)
{
  if (!__B || !__C)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unexpected null pointer");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  vDSP_mmul(*(a1 + 32), 1, __B, 1, __C, 1, *(a1 + 16), 1uLL, *(a1 + 8));
  __Ca = 1.0;
  __Ba = 0.0;
  v5 = *(a1 + 16);
  if (v5)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  vDSP_vthrsc(__C, 1, &__Ba, &__Ca, 0, 1, 0);
  v7 = 1.0;
  v8 = 0.0;
  vDSP_vclip(0, 1, &v8, &v7, __C, 1, *(a1 + 16));
}

void sub_1AC0B04D4(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AC0B0514(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1AC5AC100](a1 + 2);

  return std::istream::~istream();
}

void sub_1AC0B05DC(uint64_t *a1, int a2)
{
  v2 = a1;
  __p = 0;
  v68 = 0;
  v69 = 0;
  if (a2 == 1)
  {
    v6 = *(*a1 + 16);
    if (v6)
    {
      if (!(v6 >> 60))
      {
        operator new();
      }

LABEL_114:
      sub_1AC060AAC();
    }

    v3 = 0;
    v9 = *v2 + 8;
    v10 = **v2;
    if (v10 != v9)
    {
      do
      {
        if (v3 >= v69)
        {
          v3 = sub_1AC0B0E48(&__p, (v10 + 7));
        }

        else
        {
          *v3 = *(v10 + 56);
          *(v3 + 1) = v10[8];
          *(v10 + 56) = 0;
          v10[8] = 0;
          v3 += 16;
        }

        v68 = v3;
        v12 = v10[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v10[2];
            v14 = *v13 == v10;
            v10 = v13;
          }

          while (!v14);
        }

        v10 = v13;
      }

      while (v13 != v9);
    }
  }

  else
  {
    v3 = 0;
    if (a2 == 2)
    {
      v4 = **v2;
      v5 = *(*v2 + 8);
      if (v5 != v4)
      {
        if (((v5 - v4) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_114;
      }

      v3 = 0;
      v8 = **v2;
      v7 = *(*v2 + 8);
      while (v8 != v7)
      {
        if (v3 < v69)
        {
          *v3 = *v8;
          *(v3 + 1) = *(v8 + 8);
          *v8 = 0;
          *(v8 + 8) = 0;
          v3 += 16;
        }

        else
        {
          v3 = sub_1AC0B0E48(&__p, v8);
        }

        v68 = v3;
        v8 += 16;
      }
    }
  }

  v11 = __p;
  if (__p != v3)
  {
    v63 = v2;
    do
    {
      v65 = *(v3 - 16);
      v66 = *(v3 - 1);
      *(v3 - 16) = 0;
      *(v3 - 1) = 0;
      v16 = v68 - 16;
      sub_1AC0B05DC(v68 - 8, *(v68 - 16));
      v68 = v16;
      if (v65 == 1)
      {
        v15 = v66;
        v32 = v66 + 1;
        v33 = *v66;
        if (*v66 != v66 + 1)
        {
          do
          {
            if (v16 >= v69)
            {
              v34 = __p;
              v35 = (v16 - __p) >> 4;
              v36 = v35 + 1;
              if ((v35 + 1) >> 60)
              {
                goto LABEL_114;
              }

              v37 = v69 - __p;
              if ((v69 - __p) >> 3 > v36)
              {
                v36 = v37 >> 3;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFF0)
              {
                v38 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                if (!(v38 >> 60))
                {
                  operator new();
                }

LABEL_115:
                sub_1AC066FD4();
              }

              v39 = (v16 - __p) >> 4;
              v40 = 16 * v35;
              *v40 = *(v33 + 56);
              *(v40 + 8) = v33[8];
              *(v33 + 56) = 0;
              v33[8] = 0;
              v41 = (v40 - 16 * v39);
              if (v34 != v16)
              {
                v42 = v34;
                v43 = v41;
                do
                {
                  *v43 = *v42;
                  v43[1] = *(v42 + 1);
                  *v42 = 0;
                  *(v42 + 1) = 0;
                  v42 += 16;
                  v43 += 2;
                }

                while (v42 != v16);
                v44 = v34;
                do
                {
                  v45 = *v44;
                  v44 += 16;
                  sub_1AC0B05DC(v34 + 8, v45);
                  v34 = v44;
                }

                while (v44 != v16);
                v34 = __p;
              }

              v16 = (v40 + 16);
              __p = v41;
              v68 = (v40 + 16);
              v69 = 0;
              if (v34)
              {
                operator delete(v34);
              }
            }

            else
            {
              *v16 = *(v33 + 56);
              *(v16 + 1) = v33[8];
              *(v33 + 56) = 0;
              v33[8] = 0;
              v16 += 16;
            }

            v68 = v16;
            v46 = v33[1];
            if (v46)
            {
              do
              {
                v47 = v46;
                v46 = *v46;
              }

              while (v46);
            }

            else
            {
              do
              {
                v47 = v33[2];
                v14 = *v47 == v33;
                v33 = v47;
              }

              while (!v14);
            }

            v33 = v47;
          }

          while (v47 != v32);
          v15 = v66;
        }

        sub_1AC0B0F84(v15, *(v15 + 8));
        *v15 = v15 + 8;
        *(v15 + 16) = 0;
        *(v15 + 8) = 0;
      }

      else if (v65 == 2)
      {
        v17 = v66;
        v18 = *v66;
        v19 = v66[1];
        if (*v66 != v19)
        {
          do
          {
            if (v16 < v69)
            {
              *v16 = *v18;
              *(v16 + 1) = *(v18 + 8);
              *v18 = 0;
              *(v18 + 8) = 0;
              v16 += 16;
            }

            else
            {
              v20 = __p;
              v21 = (v16 - __p) >> 4;
              v22 = v21 + 1;
              if ((v21 + 1) >> 60)
              {
                goto LABEL_114;
              }

              v23 = v69 - __p;
              if ((v69 - __p) >> 3 > v22)
              {
                v22 = v23 >> 3;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFF0)
              {
                v24 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v22;
              }

              if (v24)
              {
                if (!(v24 >> 60))
                {
                  operator new();
                }

                goto LABEL_115;
              }

              v25 = 16 * v21;
              *v25 = *v18;
              *(v25 + 8) = *(v18 + 8);
              *v18 = 0;
              *(v18 + 8) = 0;
              v26 = v68;
              v27 = (16 * v21 + v20 - v68);
              if (v20 != v68)
              {
                v28 = v20;
                v29 = v25 + v20 - v68;
                do
                {
                  *v29 = *v28;
                  *(v29 + 8) = *(v28 + 1);
                  *v28 = 0;
                  *(v28 + 1) = 0;
                  v28 += 16;
                  v29 += 16;
                }

                while (v28 != v26);
                v30 = v20;
                do
                {
                  v31 = *v30;
                  v30 += 16;
                  sub_1AC0B05DC(v20 + 8, v31);
                  v20 = v30;
                }

                while (v30 != v26);
                v20 = __p;
              }

              v16 = (v25 + 16);
              __p = v27;
              v68 = v16;
              v69 = 0;
              if (v20)
              {
                operator delete(v20);
              }
            }

            v68 = v16;
            v18 += 16;
          }

          while (v18 != v19);
          v17 = v66;
          v18 = *v66;
          v48 = v66[1];
          if (v48 != *v66)
          {
            v49 = v48 - 8;
            do
            {
              v50 = v49 - 8;
              sub_1AC0B05DC(v49, *(v49 - 8));
              v49 -= 16;
            }

            while (v50 != v18);
          }
        }

        v17[1] = v18;
      }

      sub_1AC0B05DC(&v66, v65);
      v11 = __p;
      v3 = v68;
    }

    while (__p != v68);
    v2 = v63;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      sub_1AC0B0F84(*v2, *(*v2 + 8));
LABEL_105:
      v51 = *v2;
      goto LABEL_106;
    }

    if (a2 != 2)
    {
      goto LABEL_107;
    }

    v51 = *v2;
    v52 = **v2;
    if (!v52)
    {
      goto LABEL_106;
    }

    v53 = v51[1];
    v54 = **v2;
    if (v53 != v52)
    {
      v55 = *v2;
      v56 = v53 - 8;
      do
      {
        v57 = (v56 - 8);
        sub_1AC0B05DC(v56, *(v56 - 8));
        v56 -= 16;
      }

      while (v57 != v52);
      v51 = v55;
      v54 = *v55;
    }

    v51[1] = v52;
    v58 = v54;
LABEL_104:
    operator delete(v58);
    goto LABEL_105;
  }

  if (a2 == 3)
  {
    v51 = *v2;
    if (*(*v2 + 23) < 0)
    {
      v58 = *v51;
      goto LABEL_104;
    }
  }

  else
  {
    if (a2 != 8)
    {
      goto LABEL_107;
    }

    v51 = *v2;
    v59 = **v2;
    if (v59)
    {
      v51[1] = v59;
      v58 = v59;
      goto LABEL_104;
    }
  }

LABEL_106:
  operator delete(v51);
  v11 = __p;
LABEL_107:
  if (v11)
  {
    v60 = v11;
    if (v68 != v11)
    {
      v61 = (v68 - 8);
      do
      {
        v62 = v61 - 8;
        sub_1AC0B05DC(v61, *(v61 - 8));
        v61 -= 16;
      }

      while (v62 != v11);
      v60 = __p;
    }

    v68 = v11;
    operator delete(v60);
  }
}

uint64_t sub_1AC0B0D88(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v5 = *(i - 16);
    v4 = i - 16;
    *(a1 + 16) = v4;
    sub_1AC0B05DC((v4 + 8), v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1AC0B0DE0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 1;
      do
      {
        v5 = v4 - 1;
        sub_1AC0B05DC(v4, *(v4 - 8));
        v4 -= 2;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

uint64_t sub_1AC0B0E48(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1AC060AAC();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v7 = 16 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = 16 * v2 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = 16 * v2 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      *v11 = 0;
      *(v11 + 1) = 0;
      v11 += 16;
      v12 += 16;
    }

    while (v11 != v9);
    v13 = v8;
    do
    {
      v14 = *v13;
      v13 += 16;
      sub_1AC0B05DC(v8 + 8, v14);
      v8 = v13;
    }

    while (v13 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = 16 * v2 + 16;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return 16 * v2 + 16;
}

void sub_1AC0B0F84(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1AC0B0F84(a1, *a2);
    sub_1AC0B0F84(a1, *(a2 + 1));
    sub_1AC0B05DC(a2 + 64, a2[56]);
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

uint64_t sub_1AC0B1014(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  result = 0;
  *(a1 + 40) = a3;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v10 = *a1;
      v9 = *(a1 + 8);
      v11 = *(a1 + 24) + 1;
      while (1)
      {
        *(a1 + 24) = v11;
        if (v10 == v9)
        {
          break;
        }

        v13 = *v10++;
        v12 = v13;
        *a1 = v10;
        *(a1 + 16) = v13;
        ++v11;
        if (v13 != 78)
        {
          goto LABEL_9;
        }
      }

      v12 = -1;
      *(a1 + 16) = -1;
LABEL_9:
      result = sub_1AC0B834C(a1, v12);
    }

    else
    {
      if (a2 != 4)
      {
        return result;
      }

      v28[0] = 0;
      sub_1AC120228(a1, 4, v28);
      v22 = *(a1 + 40);
      LOBYTE(__p) = 1;
      v27[0] = sub_1AC0B36B0(v22, &__p);
      sub_1AC0B3598((v22 + 1), v27);
      result = sub_1AC0B3080(a1, 0);
      if (result)
      {
        *(*(a1 + 40) + 16) -= 8;
      }
    }
  }

  else if (a2 == 1)
  {
    result = sub_1AC0B13D4(a1, 1, a5);
  }

  else
  {
    if (a2 != 2)
    {
      return result;
    }

    result = sub_1AC0B1FD8(a1);
  }

  if (result && a4)
  {
    if (a2 == 3)
    {
      v14 = *(a1 + 24);
      v16 = *a1;
      v15 = *(a1 + 8);
      while (1)
      {
        *(a1 + 24) = ++v14;
        if (v16 == v15)
        {
          break;
        }

        v17 = *v16++;
        *a1 = v16;
        *(a1 + 16) = v17;
        if (v17 != 78)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      ++*(a1 + 24);
      v18 = *a1;
      if (*a1 != *(a1 + 8))
      {
        v19 = *v18;
        *a1 = v18 + 1;
        *(a1 + 16) = v19;
LABEL_20:
        v20 = *(a1 + 40);
        sub_1AC0B2700(a1, v28);
        v21 = *(a1 + 24);
        sub_1AC0B2700(a1, &v24);
        sub_1AC063E68("expected end of input; last byte: 0x", &v24, &v25);
        sub_1AC063200(&v23, "value");
        sub_1AC0B2BC8();
      }
    }

    *(a1 + 16) = -1;
    return 1;
  }

  return result;
}

void sub_1AC0B1300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, std::runtime_error a33)
{
  sub_1AC0B2ED4(&a33);
  if (a32 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v33 - 49) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a15);
  if ((*(v33 - 49) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(*(v33 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0B13D4(unsigned __int8 **a1, int a2, uint64_t a3)
{
  if (a2)
  {
    ++a1[3];
    v4 = *a1;
    if (*a1 == a1[1])
    {
      v5 = -1;
      a1[2] = -1;
      v6 = 0;
    }

    else
    {
      v5 = *v4;
      *a1 = v4 + 1;
      a1[2] = v5;
      v6 = v5 + 1;
      if ((v5 + 1) > 0xFC)
      {
LABEL_114:
        sub_1AC0B2700(a1, __dst);
        v48 = a1[5];
        v49 = a1[3];
        std::operator+<char>();
        sub_1AC063200(v50, "value");
        sub_1AC0B2BC8();
      }
    }
  }

  else
  {
    v5 = a1[2];
    v6 = v5 + 1;
  }

  switch(v6)
  {
    case 0:

      return sub_1AC0B3390(a1, 1, "value");
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
      v7 = a1[5];
      __str.__r_.__value_.__r.__words[0] = v5;
      sub_1AC0B70BC(v7, &__str);
      return 1;
    case 25:
      LOBYTE(__dst[0]) = 0;
      result = sub_1AC120710(a1, 1, __dst);
      if (!result)
      {
        return result;
      }

      v24 = a1[5];
      v25 = LOBYTE(__dst[0]);
      goto LABEL_83;
    case 26:
      LOWORD(__dst[0]) = 0;
      result = sub_1AC12077C(a1, 1, __dst);
      if (!result)
      {
        return result;
      }

      v24 = a1[5];
      v25 = LOWORD(__dst[0]);
      goto LABEL_83;
    case 27:
      LODWORD(__dst[0]) = 0;
      result = sub_1AC120858(a1, 1, __dst);
      if (!result)
      {
        return result;
      }

      v24 = a1[5];
      v25 = LODWORD(__dst[0]);
      goto LABEL_83;
    case 28:
      __dst[0] = 0;
      result = sub_1AC120A10(a1, 1, __dst);
      if (!result)
      {
        return result;
      }

      v24 = a1[5];
      v25 = __dst[0];
LABEL_83:
      __str.__r_.__value_.__r.__words[0] = v25;
      v37 = result;
      sub_1AC0B70BC(v24, &__str);
      return v37;
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
      v8 = a1[5];
      __str.__r_.__value_.__r.__words[0] = (31 - v5);
      sub_1AC0B5E20(v8, &__str);
      return 1;
    case 57:
      LOBYTE(__dst[0]) = 0;
      result = sub_1AC120710(a1, 1, __dst);
      if (!result)
      {
        return result;
      }

      v26 = a1[5];
      v27 = LOBYTE(__dst[0]);
      goto LABEL_101;
    case 58:
      LOWORD(__dst[0]) = 0;
      result = sub_1AC12077C(a1, 1, __dst);
      if (!result)
      {
        return result;
      }

      v26 = a1[5];
      v27 = LOWORD(__dst[0]);
      goto LABEL_101;
    case 59:
      LODWORD(__dst[0]) = 0;
      result = sub_1AC120858(a1, 1, __dst);
      if (!result)
      {
        return result;
      }

      v26 = a1[5];
      v27 = LODWORD(__dst[0]);
      goto LABEL_101;
    case 60:
      __dst[0] = 0;
      result = sub_1AC120A10(a1, 1, __dst);
      if (!result)
      {
        return result;
      }

      v26 = a1[5];
      v27 = __dst[0];
LABEL_101:
      __str.__r_.__value_.__r.__words[0] = ~v27;
      v43 = result;
      sub_1AC0B5E20(v26, &__str);
      return v43;
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 96:
      memset(&__str, 0, sizeof(__str));
      v56 = 0;
      v21 = sub_1AC0B607C(a1, &__str);
      if (v21)
      {
        sub_1AC0B5580(a1[5], &__str);
      }

      v22 = v21;
      sub_1AC1219A0(&__str);
      return v22;
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 128:
      memset(&__str, 0, sizeof(__str));
      v19 = sub_1AC0B66FC(a1, &__str);
      if (v19)
      {
        sub_1AC0B4E50(a1[5]);
      }

      v20 = v19;
      sub_1AC121974(&__str);
      return v20;
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
      sub_1AC121900(v5, a1, a3, &__str);
      return __str.__r_.__value_.__s.__data_[0];
    case 153:
      v31 = a3;
      __str.__r_.__value_.__s.__data_[0] = 0;
      v38 = sub_1AC120710(a1, 1, &__str);
      result = 0;
      if (!v38)
      {
        return result;
      }

      data_low = __str.__r_.__value_.__s.__data_[0];
      return sub_1AC120D40(a1, data_low, v31);
    case 154:
      v31 = a3;
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      v32 = sub_1AC12077C(a1, 1, &__str);
      result = 0;
      if (!v32)
      {
        return result;
      }

      data_low = LOWORD(__str.__r_.__value_.__l.__data_);
      return sub_1AC120D40(a1, data_low, v31);
    case 155:
      v31 = a3;
      LODWORD(__str.__r_.__value_.__l.__data_) = 0;
      v39 = sub_1AC120858(a1, 1, &__str);
      result = 0;
      if (!v39)
      {
        return result;
      }

      data_low = LODWORD(__str.__r_.__value_.__l.__data_);
      return sub_1AC120D40(a1, data_low, v31);
    case 156:
      v31 = a3;
      __str.__r_.__value_.__r.__words[0] = 0;
      result = sub_1AC120A10(a1, 1, &__str);
      if (!result)
      {
        return result;
      }

      data_low = __str.__r_.__value_.__r.__words[0];
      return sub_1AC120D40(a1, data_low, v31);
    case 160:

      return sub_1AC120D40(a1, 0xFFFFFFFFFFFFFFFFLL, a3);
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
      v9 = v5 & 0x1F;
      v10 = a1;
      goto LABEL_10;
    case 185:
      v28 = a3;
      __str.__r_.__value_.__s.__data_[0] = 0;
      v44 = sub_1AC120710(a1, 1, &__str);
      result = 0;
      if (!v44)
      {
        return result;
      }

      v29 = __str.__r_.__value_.__s.__data_[0];
      return sub_1AC0B6DF8(a1, v29, v28);
    case 186:
      v28 = a3;
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      v40 = sub_1AC12077C(a1, 1, &__str);
      result = 0;
      if (!v40)
      {
        return result;
      }

      v29 = LOWORD(__str.__r_.__value_.__l.__data_);
      return sub_1AC0B6DF8(a1, v29, v28);
    case 187:
      v28 = a3;
      LODWORD(__str.__r_.__value_.__l.__data_) = 0;
      v30 = sub_1AC120858(a1, 1, &__str);
      result = 0;
      if (!v30)
      {
        return result;
      }

      v29 = LODWORD(__str.__r_.__value_.__l.__data_);
      return sub_1AC0B6DF8(a1, v29, v28);
    case 188:
      v28 = a3;
      __str.__r_.__value_.__r.__words[0] = 0;
      result = sub_1AC120A10(a1, 1, &__str);
      if (!result)
      {
        return result;
      }

      v29 = __str.__r_.__value_.__r.__words[0];
      return sub_1AC0B6DF8(a1, v29, v28);
    case 192:
      v10 = a1;
      v9 = -1;
LABEL_10:

      return sub_1AC0B6DF8(v10, v9, a3);
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 217:
    case 218:
    case 219:
    case 220:
      if (a3 == 1)
      {
        if (v5 > 217)
        {
          if (v5 == 218)
          {
            LODWORD(__str.__r_.__value_.__l.__data_) = 0;
            sub_1AC120858(a1, 1, &__str);
          }

          else if (v5 == 219)
          {
            __str.__r_.__value_.__r.__words[0] = 0;
            sub_1AC120A10(a1, 1, &__str);
          }
        }

        else if (v5 == 216)
        {
          __str.__r_.__value_.__s.__data_[0] = 0;
          sub_1AC120710(a1, 1, &__str);
        }

        else if (v5 == 217)
        {
          LOWORD(__str.__r_.__value_.__l.__data_) = 0;
          sub_1AC12077C(a1, 1, &__str);
        }

        return sub_1AC0B13D4(a1, 1, 1);
      }

      if (!a3)
      {
        __str.__r_.__value_.__s.__data_[2] = 0;
        LOWORD(__str.__r_.__value_.__l.__data_) = 0;
        snprintf(&__str, 3uLL, "%.2hhX", v5);
        v12 = strlen(&__str);
        if (v12 <= 0x7FFFFFFFFFFFFFF7)
        {
          v13 = v12;
          if (v12 < 0x17)
          {
            v58 = v12;
            if (v12)
            {
              memcpy(__dst, &__str, v12);
            }

            *(__dst + v13) = 0;
            if ((v58 & 0x80u) == 0)
            {
              v15 = v58;
            }

            else
            {
              v15 = __dst[1];
            }

            if (v15 + 16 <= 0x7FFFFFFFFFFFFFF7)
            {
              v16 = a1[5];
              v17 = a1[3];
              if (v15 + 16 >= 0x17)
              {
                operator new();
              }

              v53 = 0;
              HIBYTE(v53) = v15 + 16;
              *v52 = *"invalid byte: 0x";
              if (v15)
              {
                if ((v58 & 0x80u) == 0)
                {
                  v18 = __dst;
                }

                else
                {
                  v18 = __dst[0];
                }

                memmove(&v53, v18, v15);
              }

              *(&__p[-1] + v15) = 0;
              v51 = 5;
              strcpy(v50, "value");
              sub_1AC0B2BC8();
            }

            sub_1AC060A04();
          }

          operator new();
        }

        sub_1AC060A04();
      }

LABEL_19:
      v14 = a1[5];
      __str.__r_.__value_.__s.__data_[0] = 0;
LABEL_20:
      sub_1AC0B5990(v14, &__str);
      return 1;
    case 245:
      goto LABEL_19;
    case 246:
      v14 = a1[5];
      __str.__r_.__value_.__s.__data_[0] = 1;
      goto LABEL_20;
    case 247:
      v23 = a1[5];
      __str.__r_.__value_.__r.__words[0] = 0;
      sub_1AC0B5BEC(v23);
      return 1;
    case 250:
      if (sub_1AC12185C(a1, __dst, &__str, __p))
      {
        return LOBYTE(__p[0]);
      }

      LOBYTE(__p[0]) = __str.__r_.__value_.__s.__data_[0];
      BYTE1(__p[0]) = __dst[0];
      __str.__r_.__value_.__r.__words[0] = __p;
      v45 = sub_1AC0B7068(&__str);
      v46 = a1[5];
      if ((__p[0] & 0x8000) != 0)
      {
        v47 = -v45;
      }

      else
      {
        v47 = v45;
      }

      sub_1AC063200(&__str, "");
      *__dst = v47;
      sub_1AC0B4BF4(v46, __dst);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      return 1;
    case 251:
      LODWORD(__p[0]) = 0;
      result = sub_1AC120858(a1, 1, __p);
      if (!result)
      {
        return result;
      }

      v34 = result;
      v41 = a1[5];
      v42 = *__p;
      sub_1AC063200(&__str, "");
      *__dst = v42;
      sub_1AC0B4BF4(v41, __dst);
      goto LABEL_92;
    case 252:
      __p[0] = 0;
      result = sub_1AC120A10(a1, 1, __p);
      if (!result)
      {
        return result;
      }

      v34 = result;
      v35 = a1[5];
      v36 = __p[0];
      sub_1AC063200(&__str, "");
      __dst[0] = v36;
      sub_1AC0B4BF4(v35, __dst);
LABEL_92:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      return v34;
    default:
      goto LABEL_114;
  }
}

void sub_1AC0B1E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AC0B1FD8(unsigned __int8 **a1)
{
  ++a1[3];
  v2 = *a1;
  if (*a1 == a1[1])
  {
    a1[2] = -1;

    return sub_1AC0B3390(a1, 2, "value");
  }

  else
  {
    v4 = *v2;
    v3 = v4;
    *a1 = v2 + 1;
    a1[2] = v4;
    if ((v4 & 0x80) != 0)
    {
      switch(v3)
      {
        case 144:
        case 145:
        case 146:
        case 147:
        case 148:
        case 149:
        case 150:
        case 151:
        case 152:
        case 153:
        case 154:
        case 155:
        case 156:
        case 157:
        case 158:
        case 159:
          sub_1AC1219CC(v3, a1, &v32);
          return v32.__r_.__value_.__s.__data_[0];
        case 160:
        case 161:
        case 162:
        case 163:
        case 164:
        case 165:
        case 166:
        case 167:
        case 168:
        case 169:
        case 170:
        case 171:
        case 172:
        case 173:
        case 174:
        case 175:
        case 176:
        case 177:
        case 178:
        case 179:
        case 180:
        case 181:
        case 182:
        case 183:
        case 184:
        case 185:
        case 186:
        case 187:
        case 188:
        case 189:
        case 190:
        case 191:
        case 217:
        case 218:
        case 219:
          memset(&v32, 0, sizeof(v32));
          v8 = sub_1AC0B7D58(a1, &v32);
          if (v8)
          {
            sub_1AC0B4E50(a1[5]);
          }

          v9 = v8;
          sub_1AC121974(&v32);
          return v9;
        case 192:
          v10 = a1[5];
          v32.__r_.__value_.__r.__words[0] = 0;
          sub_1AC0B5BEC(v10);
          return 1;
        case 193:
          sub_1AC0B2700(a1, v34);
          v11 = a1[5];
          v12 = a1[3];
          std::operator+<char>();
          sub_1AC063200(&v30, "value");
          sub_1AC0B2BC8();
        case 194:
          v13 = a1[5];
          v32.__r_.__value_.__s.__data_[0] = 0;
          goto LABEL_18;
        case 195:
          v13 = a1[5];
          v32.__r_.__value_.__s.__data_[0] = 1;
LABEL_18:
          sub_1AC0B5990(v13, &v32);
          return 1;
        case 196:
        case 197:
        case 198:
        case 199:
        case 200:
        case 201:
        case 212:
        case 213:
        case 214:
        case 215:
        case 216:
          memset(&v32, 0, sizeof(v32));
          v33 = 0;
          v14 = sub_1AC1210C0(a1, &v32);
          if (v14)
          {
            sub_1AC0B5580(a1[5], &v32);
          }

          v9 = v14;
          sub_1AC1219A0(&v32);
          return v9;
        case 202:
          LODWORD(__p[0]) = 0;
          result = sub_1AC120858(a1, 2, __p);
          if (!result)
          {
            return result;
          }

          v17 = result;
          v26 = a1[5];
          v27 = *__p;
          sub_1AC063200(&v32, "");
          *v34 = v27;
          sub_1AC0B4BF4(v26, v34);
          goto LABEL_42;
        case 203:
          __p[0] = 0;
          result = sub_1AC120A10(a1, 2, __p);
          if (!result)
          {
            return result;
          }

          v17 = result;
          v18 = a1[5];
          v19 = __p[0];
          sub_1AC063200(&v32, "");
          v34[0] = v19;
          sub_1AC0B4BF4(v18, v34);
LABEL_42:
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          return v17;
        case 204:
          LOBYTE(v34[0]) = 0;
          result = sub_1AC120710(a1, 2, v34);
          if (!result)
          {
            return result;
          }

          v22 = a1[5];
          v23 = LOBYTE(v34[0]);
          goto LABEL_57;
        case 205:
          LOWORD(v34[0]) = 0;
          result = sub_1AC12077C(a1, 2, v34);
          if (!result)
          {
            return result;
          }

          v22 = a1[5];
          v23 = LOWORD(v34[0]);
          goto LABEL_57;
        case 206:
          LODWORD(v34[0]) = 0;
          result = sub_1AC120858(a1, 2, v34);
          if (!result)
          {
            return result;
          }

          v22 = a1[5];
          v23 = LODWORD(v34[0]);
          goto LABEL_57;
        case 207:
          v34[0] = 0;
          result = sub_1AC120A10(a1, 2, v34);
          if (!result)
          {
            return result;
          }

          v22 = a1[5];
          v23 = v34[0];
LABEL_57:
          v32.__r_.__value_.__r.__words[0] = v23;
          v9 = result;
          sub_1AC0B70BC(v22, &v32);
          return v9;
        case 208:
          LOBYTE(v34[0]) = 0;
          result = sub_1AC120710(a1, 2, v34);
          if (!result)
          {
            return result;
          }

          v15 = a1[5];
          v16 = SLOBYTE(v34[0]);
          goto LABEL_49;
        case 209:
          LOWORD(v34[0]) = 0;
          result = sub_1AC12077C(a1, 2, v34);
          if (!result)
          {
            return result;
          }

          v15 = a1[5];
          v16 = SLOWORD(v34[0]);
          goto LABEL_49;
        case 210:
          LODWORD(v34[0]) = 0;
          result = sub_1AC120858(a1, 2, v34);
          if (!result)
          {
            return result;
          }

          v15 = a1[5];
          v16 = SLODWORD(v34[0]);
          goto LABEL_49;
        case 211:
          v34[0] = 0;
          result = sub_1AC120A10(a1, 2, v34);
          if (!result)
          {
            return result;
          }

          v15 = a1[5];
          v16 = v34[0];
LABEL_49:
          v32.__r_.__value_.__r.__words[0] = v16;
          v9 = result;
          sub_1AC0B5E20(v15, &v32);
          return v9;
        case 220:
          LOWORD(v32.__r_.__value_.__l.__data_) = 0;
          v28 = sub_1AC12077C(a1, 2, &v32);
          result = 0;
          if (!v28)
          {
            return result;
          }

          data_low = LOWORD(v32.__r_.__value_.__l.__data_);
          return sub_1AC12105C(a1, data_low);
        case 221:
          LODWORD(v32.__r_.__value_.__l.__data_) = 0;
          v20 = sub_1AC120858(a1, 2, &v32);
          result = 0;
          if (!v20)
          {
            return result;
          }

          data_low = LODWORD(v32.__r_.__value_.__l.__data_);
          return sub_1AC12105C(a1, data_low);
        case 222:
          LOWORD(v32.__r_.__value_.__l.__data_) = 0;
          v29 = sub_1AC12077C(a1, 2, &v32);
          result = 0;
          if (!v29)
          {
            return result;
          }

          v25 = LOWORD(v32.__r_.__value_.__l.__data_);
          goto LABEL_61;
        case 223:
          LODWORD(v32.__r_.__value_.__l.__data_) = 0;
          v24 = sub_1AC120858(a1, 2, &v32);
          result = 0;
          if (!v24)
          {
            return result;
          }

          v25 = LODWORD(v32.__r_.__value_.__l.__data_);
LABEL_61:
          result = sub_1AC0B7BD4(a1, v25);
          break;
        case 224:
        case 225:
        case 226:
        case 227:
        case 228:
        case 229:
        case 230:
        case 231:
        case 232:
        case 233:
        case 234:
        case 235:
        case 236:
        case 237:
        case 238:
        case 239:
        case 240:
        case 241:
        case 242:
        case 243:
        case 244:
        case 245:
        case 246:
        case 247:
        case 248:
        case 249:
        case 250:
        case 251:
        case 252:
        case 253:
        case 254:
        case 255:
          v7 = a1[5];
          v32.__r_.__value_.__r.__words[0] = v3;
          sub_1AC0B5E20(v7, &v32);
          return 1;
        default:

          return sub_1AC0B7BD4(a1, v3 & 0xF);
      }
    }

    else
    {
      v5 = a1[5];
      v32.__r_.__value_.__r.__words[0] = v3;
      sub_1AC0B70BC(v5, &v32);
      return 1;
    }
  }

  return result;
}

void sub_1AC0B25CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AC0B26A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v7 = sub_1AC0BC068(exception, a4);
    __cxa_throw(v7, &unk_1F20D0410, sub_1AC0B2ED4);
  }

  return 0;
}

size_t sub_1AC0B2700@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = 0;
  *__str = 0;
  snprintf(__str, 3uLL, "%.2hhX", *(a1 + 16));
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
    a2[v4] = 0;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_1AC0B27E4(int a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = 11;
  strcpy(v28, "parse_error");
  sub_1AC0B3B5C(v28, a1, &v30);
  v8 = std::string::append(&v30, "parse error", 0xBuLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (a2)
  {
    std::to_string(&v25, a2);
    v10 = std::string::insert(&v25, 0, " at byte ", 9uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v27 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = HIBYTE(v27);
  }

  else
  {
    v12 = 0;
    HIBYTE(v27) = 0;
    LOBYTE(__p[0]) = 0;
  }

  if ((v12 & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = __p[1];
  }

  v15 = std::string::append(&v31, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v32, ": ", 2uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = *(a3 + 23);
  if (v19 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if (v19 >= 0)
  {
    v21 = *(a3 + 23);
  }

  else
  {
    v21 = *(a3 + 8);
  }

  v22 = std::string::append(&v33, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v35 = v22->__r_.__value_.__r.__words[2];
  v34 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:
      if ((SHIBYTE(v27) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      operator delete(__p[0]);
      if (!a2)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (!a2)
  {
LABEL_25:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_24:
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_35:
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

LABEL_34:
  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_35;
  }

LABEL_27:
  if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

LABEL_36:
  operator delete(v28[0]);
LABEL_28:
  if (v35 >= 0)
  {
    v24 = &v34;
  }

  else
  {
    v24 = v34;
  }

  *a4 = &unk_1F20D0100;
  *(a4 + 8) = a1;
  std::runtime_error::runtime_error((a4 + 16), v24);
  *a4 = &unk_1F20D0150;
  *(a4 + 32) = a2;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }
}

void sub_1AC0B2AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
    if ((a34 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a28 & 0x80000000) == 0)
      {
LABEL_10:
        _Unwind_Resume(exception_object);
      }

LABEL_9:
      operator delete(a23);
      goto LABEL_10;
    }
  }

  else if ((a34 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a29);
  if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_1AC0B2E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if ((a34 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1AC0B2ED4(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F20D0100;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_1AC0B2F28(uint64_t a1, unint64_t a2)
{
  v8.__r_.__value_.__s.__data_[0] = 1;
  v9.__r_.__value_.__r.__words[0] = sub_1AC0B36B0(a1, &v8);
  sub_1AC0B3598(a1 + 8, &v9);
  if (a2 != -1)
  {
    v4 = **(*(a1 + 16) - 8);
    if (v4 > 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = qword_1AC129C28[v4];
    }

    if (v5 < a2)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::to_string(&v8, a2);
      sub_1AC063E68("excessive object size: ", &v8, &v9);
      sub_1AC0B3800(408, &v9, exception);
      __cxa_throw(exception, &unk_1F20D03F8, sub_1AC0B39A0);
    }
  }

  return 1;
}

void sub_1AC0B3020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_1AC0B3080(unsigned __int8 **a1, char a2)
{
  __p = 0;
  v21 = 0;
  v22 = 0;
  ++a1[3];
  v3 = *a1;
  if (*a1 == a1[1])
  {
LABEL_26:
    v4 = -1;
    a1[2] = -1;
  }

  else
  {
LABEL_4:
    v5 = *v3;
    v4 = v5;
    *a1 = v3 + 1;
    a1[2] = v5;
    if (!v5)
    {
      result = 1;
      goto LABEL_28;
    }
  }

  result = sub_1AC0B3390(a1, 4, "element list");
  if (result)
  {
    v7 = a1[3];
    v19 = v7;
    while (1)
    {
      a1[3] = (v7 + 1);
      v11 = *a1;
      if (*a1 == a1[1])
      {
        v12 = -1;
      }

      else
      {
        v12 = *v11;
        *a1 = v11 + 1;
      }

      a1[2] = v12;
      result = sub_1AC0B3390(a1, 4, "cstring");
      if (!result)
      {
        break;
      }

      v13 = a1[2];
      if (!v13)
      {
        if ((a2 & 1) == 0)
        {
          v15 = a1[5];
          v16 = *(*(*(v15 + 2) - 8) + 8);
          p_p = &__p;
          *(v15 + 4) = sub_1AC0B450C(v16, &__p) + 7;
        }

        result = sub_1AC0B3F34(a1, v4, v19);
        if (!result)
        {
          break;
        }

        if ((SHIBYTE(v22) & 0x80000000) == 0)
        {
          LOBYTE(__p) = 0;
          HIBYTE(v22) = 0;
          ++a1[3];
          v3 = *a1;
          if (*a1 == a1[1])
          {
            goto LABEL_26;
          }

          goto LABEL_4;
        }

        *__p = 0;
        v21 = 0;
        ++a1[3];
        v3 = *a1;
        if (*a1 != a1[1])
        {
          goto LABEL_4;
        }

        goto LABEL_26;
      }

      if (SHIBYTE(v22) < 0)
      {
        v14 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v21 == v14)
        {
          if ((v22 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_1AC060A04();
          }

LABEL_18:
          operator new();
        }

        v9 = __p;
        v8 = v21++;
      }

      else
      {
        if (HIBYTE(v22) == 22)
        {
          goto LABEL_18;
        }

        v8 = HIBYTE(v22);
        HIBYTE(v22) = (HIBYTE(v22) + 1) & 0x7F;
        v9 = &__p;
      }

      v10 = &v9[v8];
      *v10 = v13;
      v10[1] = 0;
      v7 = a1[3];
    }
  }

LABEL_28:
  if (SHIBYTE(v22) < 0)
  {
    v17 = result;
    operator delete(__p);
    return v17;
  }

  return result;
}

void sub_1AC0B3364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    v17 = a1;
    operator delete(__p);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AC0B3390(void *a1, uint64_t a2, char *a3)
{
  if (a1[2] == -1)
  {
    v6 = a1[5];
    v7 = a1[3];
    sub_1AC063200(&v11, "<end of file>");
    v8 = a1[3];
    sub_1AC063200(&v10, "unexpected end of input");
    sub_1AC063200(&v9, a3);
    sub_1AC0B2BC8();
  }

  return 1;
}

void sub_1AC0B34EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, std::runtime_error a28)
{
  sub_1AC0B2ED4(&a28);
  if (a27 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v28 - 49) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a16);
  if ((*(v28 - 49) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*(v28 - 72));
  _Unwind_Resume(a1);
}

void sub_1AC0B3598(uint64_t a1, void *a2)
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
    sub_1AC060AAC();
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

    sub_1AC066FD4();
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

uint64_t sub_1AC0B36B0(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v20 = v9;
    sub_1AC0BCA7C(&v21, v9);
    v10 = *a1;
    v11 = **a1;
    *v10 = v20;
    v20 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v21;
    v21 = v12;
    sub_1AC0B05DC(&v21, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = v5[1];
      if (v6 >= v5[2])
      {
        v8 = sub_1AC0B39F4(v5, a2);
      }

      else
      {
        v7 = *a2;
        *v6 = v7;
        sub_1AC0BCA7C((v6 + 8), v7);
        v8 = v6 + 16;
        v5[1] = v6 + 16;
      }

      v5[1] = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v18 = v14;
      sub_1AC0BCA7C(&v19, v14);
      v15 = a1[4];
      v16 = *v15;
      *v15 = v18;
      v17 = *(v15 + 1);
      *(v15 + 1) = v19;
      v19 = v17;
      sub_1AC0B05DC(&v19, v16);
      return a1[4];
    }
  }
}

void sub_1AC0B3800(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 12;
  strcpy(__p, "out_of_range");
  sub_1AC0B3B5C(__p, a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p[0]);
LABEL_9:
  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  *a3 = &unk_1F20D0100;
  *(a3 + 8) = a1;
  std::runtime_error::runtime_error((a3 + 16), v11);
  *a3 = &unk_1F20D0128;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1AC0B3950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AC0B39A0(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F20D0100;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_1AC0B39F4(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1AC060AAC();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v17 = 16 * v2;
  v7 = *a2;
  *(16 * v2) = v7;
  sub_1AC0BCA7C((16 * v2 + 8), v7);
  v8 = 16 * v2 + 16;
  v9 = *a1;
  v10 = a1[1];
  v11 = 16 * v2 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      *v13 = *v12;
      *(v13 + 8) = v12[1];
      *v12 = 0;
      v12[1] = 0;
      v12 += 2;
      v13 += 16;
    }

    while (v12 != v10);
    v14 = v9;
    do
    {
      v15 = *v14;
      v14 += 2;
      sub_1AC0B05DC(v9 + 1, v15);
      v9 = v14;
    }

    while (v14 != v10);
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

void sub_1AC0B3B48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC0B0D88(va);
  _Unwind_Resume(a1);
}

void sub_1AC0B3B5C(const void **a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v4 + 16 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  if (v4 + 16 >= 0x17)
  {
    operator new();
  }

  v15.__r_.__value_.__r.__words[2] = 0;
  *(&v15.__r_.__value_.__s + 23) = v4 + 16;
  *&v15.__r_.__value_.__l.__data_ = *"[json.exception.";
  if (v4)
  {
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    memmove(&v15.__r_.__value_.__r.__words[2], v6, v4);
  }

  *(&v15.__r_.__value_.__r.__words[2] + v4) = 0;
  v7 = std::string::append(&v15, ".", 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v14, a2);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v14;
  }

  else
  {
    v9 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v16, v9, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v17, "] ", 2uLL);
  *a3 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_21:
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_26:
    operator delete(v15.__r_.__value_.__l.__data_);
    return;
  }

LABEL_25:
  operator delete(v16.__r_.__value_.__l.__data_);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }
}

void sub_1AC0B3D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a23);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_1AC0B3E08(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F20D0100;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC0B3E78(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F20D0100;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_1AC0B3ECC(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F20D0100;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x1AC5AC440);
}

uint64_t sub_1AC0B3F34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      LODWORD(__dst[0]) = 0;
      if (a2 == 3)
      {
        sub_1AC120228(a1, 4, __dst);
        v22 = *(a1 + 40);
        LOBYTE(v26[0]) = 1;
        __p.__r_.__value_.__r.__words[0] = sub_1AC0B36B0(v22, v26);
        sub_1AC0B3598((v22 + 1), &__p);
        v9 = a1;
        v10 = 0;
      }

      else
      {
        sub_1AC120228(a1, 4, __dst);
        v8 = *(a1 + 40);
        LOBYTE(v26[0]) = 2;
        __p.__r_.__value_.__r.__words[0] = sub_1AC0B36B0(v8, v26);
        sub_1AC0B3598((v8 + 1), &__p);
        v9 = a1;
        v10 = 1;
      }

      result = sub_1AC0B3080(v9, v10);
      if (result)
      {
        *(*(a1 + 40) + 16) -= 8;
      }

      return result;
    }

    if (a2 != 2)
    {
      if (a2 != 1)
      {
        goto LABEL_32;
      }

      __dst[0] = 0;
      result = sub_1AC1203E0(a1, 4, __dst);
      if (!result)
      {
        return result;
      }

      v13 = *(a1 + 40);
      __p.__r_.__value_.__l.__data_ = __dst[0];
      v7 = result;
      sub_1AC0B4BF4(v13, &__p);
      return v7;
    }

    LODWORD(__dst[0]) = 0;
    memset(&__p, 0, sizeof(__p));
    result = sub_1AC120228(a1, 4, __dst);
    if (result)
    {
      result = sub_1AC0B471C(a1, __dst[0], &__p);
      if (result)
      {
        sub_1AC0B4E50(*(a1 + 40));
      }
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v6 = __p.__r_.__value_.__r.__words[0];
LABEL_20:
    v7 = result;
    operator delete(v6);
    return v7;
  }

  if (a2 <= 9)
  {
    if (a2 != 5)
    {
      if (a2 == 8)
      {
        sub_1AC121A34(a1);
        return 1;
      }

      goto LABEL_32;
    }

    LODWORD(__dst[0]) = 0;
    memset(&__p, 0, sizeof(__p));
    v29 = 0;
    result = sub_1AC120228(a1, 4, __dst);
    if (result)
    {
      result = sub_1AC0B49A0(a1, __dst[0], &__p);
      if (result)
      {
        sub_1AC0B5580(*(a1 + 40), &__p);
      }
    }

    v6 = __p.__r_.__value_.__r.__words[0];
    if (!__p.__r_.__value_.__r.__words[0])
    {
      return result;
    }

    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    goto LABEL_20;
  }

  if (a2 == 10)
  {
    v4 = *(a1 + 40);
    __p.__r_.__value_.__r.__words[0] = 0;
    sub_1AC0B5BEC(v4);
    return 1;
  }

  if (a2 != 16)
  {
    if (a2 == 18)
    {
      __dst[0] = 0;
      result = sub_1AC1203E0(a1, 4, __dst);
      if (result)
      {
        v11 = *(a1 + 40);
        v12 = __dst[0];
LABEL_57:
        __p.__r_.__value_.__r.__words[0] = v12;
        v7 = result;
        sub_1AC0B5E20(v11, &__p);
        return v7;
      }

      return result;
    }

LABEL_32:
    v33 = 0;
    *__str = 0;
    snprintf(__str, 3uLL, "%.2hhX", a2);
    v15 = *(a1 + 40);
    v16 = strlen(__str);
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v31 = v16;
    if (v16)
    {
      memcpy(__dst, __str, v16);
    }

    *(__dst + v17) = 0;
    v18 = strlen(__str);
    if (v18 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&v25.__r_.__value_.__s + 23) = v18;
    if (v18)
    {
      memcpy(&v25, __str, v18);
    }

    v25.__r_.__value_.__s.__data_[v19] = 0;
    v20 = std::string::insert(&v25, 0, "Unsupported BSON record type 0x", 0x1FuLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v27 = v20->__r_.__value_.__r.__words[2];
    *v26 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    sub_1AC0B27E4(114, a3, v26, &__p);
    *(v15 + 40) = 1;
    if (*(v15 + 41) == 1)
    {
      exception = __cxa_allocate_exception(0x28uLL);
      v24 = sub_1AC0BC068(exception, &__p);
      __cxa_throw(v24, &unk_1F20D0410, sub_1AC0B2ED4);
    }

    __p.__r_.__value_.__r.__words[0] = &unk_1F20D0100;
    std::runtime_error::~runtime_error(&__p.__r_.__value_.__r.__words[2]);
    std::exception::~exception(&__p);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_47:
        if ((v31 & 0x80000000) == 0)
        {
          return 0;
        }

LABEL_51:
        operator delete(__dst[0]);
        return 0;
      }
    }

    else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    operator delete(v25.__r_.__value_.__l.__data_);
    if ((v31 & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_51;
  }

  LODWORD(__dst[0]) = 0;
  result = sub_1AC120228(a1, 4, __dst);
  if (result)
  {
    v11 = *(a1 + 40);
    v12 = SLODWORD(__dst[0]);
    goto LABEL_57;
  }

  return result;
}

void sub_1AC0B4464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, int a23, __int16 a24, char a25, char a26)
{
  sub_1AC0B2ED4(&a22);
  if (a21 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((*(v26 - 57) & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(*(v26 - 80));
      goto LABEL_9;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((*(v26 - 57) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void *sub_1AC0B450C(uint64_t a1, const void **a2)
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

void sub_1AC0B46A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC0B46BC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AC0B46BC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_1AC0B05DC((v1 + 64), *(v1 + 56));
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

uint64_t sub_1AC0B471C(uint64_t a1, int a2, std::string *a3)
{
  if (a2 <= 0)
  {
    sub_1AC0B2700(a1, &v12);
    v6 = *(a1 + 40);
    v7 = *(a1 + 24);
    std::to_string(&v9, a2);
    sub_1AC063E68("string length must be at least 1, is ", &v9, &v10);
    sub_1AC063200(&v8, "string");
    sub_1AC0B2BC8();
  }

  if (a2 != 1 && !sub_1AC121A98(a1, a3, a2 - 1))
  {
    return 0;
  }

  sub_1AC121B54(a1);
  return v11;
}

void sub_1AC0B48CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, std::runtime_error a33)
{
  sub_1AC0B2ED4(&a33);
  if (a32 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v33 - 33) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a15);
  if ((*(v33 - 33) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(*(v33 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0B49A0(uint64_t *a1, int a2, uint64_t a3)
{
  if (a2 < 0)
  {
    sub_1AC0B2700(a1, &v12);
    v6 = a1[5];
    v7 = a1[3];
    std::to_string(&v9, a2);
    sub_1AC063E68("byte array length cannot be negative, is ", &v9, &v10);
    sub_1AC063200(&v8, "binary");
    sub_1AC0B2BC8();
  }

  sub_1AC121B90(a1, a3, a2, v11);
  return v11[0];
}

void sub_1AC0B4B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, std::runtime_error a33)
{
  sub_1AC0B2ED4(&a33);
  if (a32 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v33 - 33) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a15);
  if ((*(v33 - 33) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(*(v33 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0B4BF4(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 7;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_1AC0B05DC(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_1AC0B4D0C(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 7;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 7;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_1AC0B05DC(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_1AC0B4D0C(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_1AC060AAC();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 7;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_1AC0B05DC(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

void sub_1AC0B4E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) != v1)
  {
    v2 = *(v1 - 8);
    if (*v2 == 2)
    {
      v3 = *(v2 + 8);
      v4 = v3[1];
      if (v4 < v3[2])
      {
        *(v4 + 8) = 0;
        *v4 = 3;
        operator new();
      }

      sub_1AC0B509C(v3);
    }

    operator new();
  }

  operator new();
}

void sub_1AC0B5054(_Unwind_Exception *a1)
{
  operator delete(v2);
  *(v1 + 8) = v3;
  _Unwind_Resume(a1);
}

void sub_1AC0B509C(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    if (v4)
    {
      if (!(v4 >> 60))
      {
        operator new();
      }

      sub_1AC066FD4();
    }

    v5 = 16 * v1;
    *(v5 + 8) = 0;
    *v5 = 3;
    operator new();
  }

  sub_1AC060AAC();
}

void sub_1AC0B5230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operator delete(v10);
  sub_1AC0B0D88(&a10);
  _Unwind_Resume(a1);
}

void sub_1AC0B524C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC0B0D88(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0B5260(uint64_t a1, unint64_t a2)
{
  v8.__r_.__value_.__s.__data_[0] = 2;
  v9.__r_.__value_.__r.__words[0] = sub_1AC0B36B0(a1, &v8);
  sub_1AC0B3598(a1 + 8, &v9);
  if (a2 != -1)
  {
    v4 = **(*(a1 + 16) - 8);
    if (v4 > 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = qword_1AC129C28[v4];
    }

    if (v5 < a2)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::to_string(&v8, a2);
      sub_1AC063E68("excessive array size: ", &v8, &v9);
      sub_1AC0B3800(408, &v9, exception);
      __cxa_throw(exception, &unk_1F20D03F8, sub_1AC0B39A0);
    }
  }

  return 1;
}

void sub_1AC0B5358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

BOOL sub_1AC0B53B8(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 < 1)
  {
    return 1;
  }

  else
  {
    v5 = a3;
    v8 = 0;
    v9 = 1;
    v10 = a3;
    do
    {
      while (1)
      {
        ++a1[3];
        v11 = *a1;
        if (*a1 == a1[1])
        {
          a1[2] = -1;
          if (!sub_1AC0B3390(a1, a2, "binary"))
          {
            return v8;
          }
        }

        else
        {
          v12 = *v11;
          *a1 = v11 + 1;
          a1[2] = v12;
          if (!sub_1AC0B3390(a1, a2, "binary"))
          {
            return v8;
          }
        }

        v13 = *(a1 + 16);
        v15 = *(a4 + 8);
        v14 = *(a4 + 16);
        if (v15 >= v14)
        {
          break;
        }

        *v15 = v13;
        *(a4 + 8) = v15 + 1;
        v8 = v9++ >= v5;
        if (!--v10)
        {
          return v8;
        }
      }

      v16 = *a4;
      v17 = &v15[-*a4];
      v18 = (v17 + 1);
      if ((v17 + 1) < 0)
      {
        sub_1AC060AAC();
      }

      v19 = v14 - v16;
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        operator new();
      }

      v21 = &v15[-*a4];
      *v17 = v13;
      memcpy(0, v16, v21);
      *a4 = 0;
      *(a4 + 8) = v17 + 1;
      *(a4 + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }

      v5 = a3;
      *(a4 + 8) = v17 + 1;
      v8 = v9++ >= a3;
      --v10;
    }

    while (v10);
  }

  return v8;
}

void sub_1AC0B5580(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (*(a1 + 8) != v2)
  {
    v3 = *(v2 - 8);
    if (*v3 == 2)
    {
      v4 = *(v3 + 8);
      v5 = v4[1];
      if (v5 < v4[2])
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        sub_1AC0B56D0(v5, a2);
      }

      sub_1AC0B5824(v4, a2);
    }

    v6[0] = 0;
    v7 = 0;
    sub_1AC0B56D0(v6, a2);
  }

  v8[0] = 0;
  v9 = 0;
  sub_1AC0B56D0(v8, a2);
}

void sub_1AC0B56D0(_BYTE *a1, uint64_t a2)
{
  *a1 = 8;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v3 = *(a2 + 24);
  operator new();
}

void sub_1AC0B57FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0B5824(void *a1, uint64_t a2)
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

      sub_1AC066FD4();
    }

    v6 = 16 * v2;
    *v6 = 0;
    *(v6 + 8) = 0;
    sub_1AC0B56D0((16 * v2), a2);
  }

  sub_1AC060AAC();
}

void sub_1AC0B597C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC0B0D88(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0B5990(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 4;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_1AC0B05DC(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_1AC0B5AA8(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 4;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 4;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_1AC0B05DC(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_1AC0B5AA8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_1AC060AAC();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 4;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_1AC0B05DC(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

uint64_t sub_1AC0B5BEC(unsigned __int8 **a1)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v7 = *a1;
    v8 = **a1;
    *v7 = 0;
    v15 = v8;
    v9 = *(v7 + 8);
    *(v7 + 8) = 0;
    v16 = v9;
    sub_1AC0B05DC(&v16, v8);
    return *a1;
  }

  else
  {
    v3 = *(v2 - 1);
    if (*v3 == 2)
    {
      v4 = *(v3 + 8);
      v5 = *(v4 + 8);
      if (v5 >= *(v4 + 16))
      {
        v6 = sub_1AC0B5CE8(v4);
      }

      else
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        v6 = v5 + 16;
      }

      *(v4 + 8) = v6;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v11 = a1[4];
      v12 = *v11;
      *v11 = 0;
      v13 = *(v11 + 1);
      *(v11 + 1) = 0;
      v14 = v13;
      sub_1AC0B05DC(&v14, v12);
      return a1[4];
    }
  }
}

uint64_t sub_1AC0B5CE8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = (v3 - v2) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    sub_1AC060AAC();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 3 > v6)
  {
    v6 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (!(v8 >> 60))
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v9 = (v3 - v2) >> 4;
  v10 = 16 * v5;
  *v10 = 0;
  *(v10 + 8) = 0;
  v11 = 16 * v5 + 16;
  v12 = v10 - 16 * v9;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v10 - 16 * v9;
    do
    {
      *v14 = *v13;
      *(v14 + 8) = v13[1];
      *v13 = 0;
      v13[1] = 0;
      v13 += 2;
      v14 += 16;
    }

    while (v13 != v3);
    v15 = v2;
    do
    {
      v16 = *v15;
      v15 += 2;
      sub_1AC0B05DC(v2 + 1, v16);
      v2 = v15;
    }

    while (v15 != v3);
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

uint64_t sub_1AC0B5E20(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 5;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_1AC0B05DC(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_1AC0B5F38(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 5;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 5;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_1AC0B05DC(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_1AC0B5F38(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_1AC060AAC();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 5;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_1AC0B05DC(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

uint64_t sub_1AC0B607C(unsigned __int8 **a1, uint64_t a2)
{
  result = sub_1AC0B3390(a1, 1, "binary");
  if (!result)
  {
    return result;
  }

  v5 = a1[2];
  if ((v5 - 64) < 0x18)
  {

    return sub_1AC0B7318(a1, 1, v5 & 0x1F, a2);
  }

  if (v5 > 89)
  {
    switch(v5)
    {
      case '_':
        do
        {
          ++a1[3];
          v16 = *a1;
          if (*a1 == a1[1])
          {
            a1[2] = -1;
          }

          else
          {
            v17 = *v16;
            *a1 = v16 + 1;
            a1[2] = v17;
            if (v17 == 255)
            {
              return 1;
            }
          }

          memset(&v28[4], 0, 26);
          v18 = sub_1AC0B607C(a1, &v28[4]);
          if (v18)
          {
            sub_1AC0B7840(a2, *(a2 + 8), v28[4], v28[5], v28[5] - v28[4]);
          }

          if (v28[4])
          {
            v28[5] = v28[4];
            operator delete(v28[4]);
          }
        }

        while ((v18 & 1) != 0);
        return 0;
      case 'Z':
        LODWORD(v28[4]) = 0;
        v27 = sub_1AC120858(a1, 1, &v28[4]);
        result = 0;
        if (v27)
        {
          return sub_1AC0B7318(a1, 1, v28[4], a2);
        }

        return result;
      case '[':
        v28[4] = 0;
        result = sub_1AC120A10(a1, 1, &v28[4]);
        if (result)
        {
          return sub_1AC0B767C(a1, 1, v28[4], a2);
        }

        return result;
    }

    goto LABEL_41;
  }

  if (v5 != 88)
  {
    if (v5 == 89)
    {
      ++a1[3];
      v6 = *a1;
      if (*a1 == a1[1])
      {
        v7 = -1;
      }

      else
      {
        v7 = *v6;
        *a1 = v6 + 1;
      }

      a1[2] = v7;
      result = sub_1AC0B3390(a1, 1, "number");
      if (result)
      {
        v8 = *(a1 + 16);
        ++a1[3];
        v9 = *a1;
        if (*a1 == a1[1])
        {
          v10 = -1;
        }

        else
        {
          v10 = *v9;
          *a1 = v9 + 1;
        }

        a1[2] = v10;
        result = sub_1AC0B3390(a1, 1, "number");
        if (result)
        {
          v11 = *(a1 + 16);
          if (*(a1 + 32))
          {
            v12 = v8;
          }

          else
          {
            v12 = *(a1 + 16);
          }

          if (!*(a1 + 32))
          {
            v11 = v8;
          }

          v13 = (v11 | (v12 << 8));
          v14 = a1;
          v15 = a2;

          return sub_1AC0B74DC(v14, 1, v13, v15);
        }
      }

      return result;
    }

LABEL_41:
    BYTE2(v28[4]) = 0;
    LOWORD(v28[4]) = 0;
    snprintf(&v28[4], 3uLL, "%.2hhX", v5);
    v21 = strlen(&v28[4]);
    if (v21 <= 0x7FFFFFFFFFFFFFF7)
    {
      v22 = v21;
      if (v21 < 0x17)
      {
        v29 = v21;
        if (v21)
        {
          memcpy(&v28[9], &v28[4], v21);
        }

        *(&v28[9] + v22) = 0;
        if ((v29 & 0x80u) == 0)
        {
          v23 = v29;
        }

        else
        {
          v23 = v28[10];
        }

        if (v23 + 95 <= 0x7FFFFFFFFFFFFFF7)
        {
          v24 = a1[5];
          v25 = a1[3];
          if (v23 + 95 > 0x16)
          {
            operator new();
          }

          qmemcpy(v28, "specification (0x40-0x5B) or indefinite binary array type (0x5F); last byte: 0x", 79);
          if ((v29 & 0x80u) == 0)
          {
            v26 = &v28[9];
          }

          else
          {
            v26 = v28[9];
          }

          memmove(&v28[9] + 7, v26, v23);
          *(&v28[9] + v23 + 7) = 0;
          sub_1AC0B2BC8();
        }

        sub_1AC060A04();
      }

      operator new();
    }

    sub_1AC060A04();
  }

  ++a1[3];
  v19 = *a1;
  if (*a1 == a1[1])
  {
    v20 = -1;
  }

  else
  {
    v20 = *v19;
    *a1 = v19 + 1;
  }

  a1[2] = v20;
  result = sub_1AC0B3390(a1, 1, "number");
  if (result)
  {
    v13 = *(a1 + 16);
    v14 = a1;
    v15 = a2;

    return sub_1AC0B74DC(v14, 1, v13, v15);
  }

  return result;
}

void sub_1AC0B6658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, std::runtime_error a28)
{
  sub_1AC0B2ED4(&a28);
  if (a27 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v28 & 0x80000000) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(*(v29 - 88));
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a16);
  if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_1AC0B66FC(unsigned __int8 **a1, std::string *a2)
{
  if (sub_1AC0B3390(a1, 1, "string"))
  {
    v4 = a1[2];
    if ((v4 - 96) < 0x18)
    {
      v5 = v4 & 0x1F;
      if ((v4 & 0x1F) != 0)
      {
        v6 = 0;
        v7 = 1;
        v8 = v4 & 0x1F;
        while (1)
        {
          ++a1[3];
          v9 = *a1;
          if (*a1 == a1[1])
          {
            a1[2] = -1;
            if (!sub_1AC0B3390(a1, 1, "string"))
            {
              return v6;
            }
          }

          else
          {
            v10 = *v9;
            *a1 = v9 + 1;
            a1[2] = v10;
            if (!sub_1AC0B3390(a1, 1, "string"))
            {
              return v6;
            }
          }

          std::string::push_back(a2, *(a1 + 16));
          v6 = v7++ >= v5;
          if (!--v8)
          {
            return v6;
          }
        }
      }

      return 1;
    }

    if (v4 <= 121)
    {
      if (v4 == 120)
      {
        ++a1[3];
        v27 = *a1;
        if (*a1 == a1[1])
        {
          v28 = -1;
        }

        else
        {
          v28 = *v27;
          *a1 = v27 + 1;
        }

        a1[2] = v28;
        if (sub_1AC0B3390(a1, 1, "number"))
        {
          v18 = *(a1 + 16);
          v19 = a1;
          v20 = a2;

          return sub_1AC120ED8(v19, 1, v18, v20);
        }

        return 0;
      }

      if (v4 == 121)
      {
        ++a1[3];
        v11 = *a1;
        if (*a1 == a1[1])
        {
          v12 = -1;
        }

        else
        {
          v12 = *v11;
          *a1 = v11 + 1;
        }

        a1[2] = v12;
        if (sub_1AC0B3390(a1, 1, "number"))
        {
          v13 = *(a1 + 16);
          ++a1[3];
          v14 = *a1;
          if (*a1 == a1[1])
          {
            v15 = -1;
          }

          else
          {
            v15 = *v14;
            *a1 = v14 + 1;
          }

          a1[2] = v15;
          if (sub_1AC0B3390(a1, 1, "number"))
          {
            v16 = *(a1 + 16);
            if (*(a1 + 32))
            {
              v17 = v13;
            }

            else
            {
              v17 = *(a1 + 16);
            }

            if (!*(a1 + 32))
            {
              v16 = v13;
            }

            v18 = (v16 | (v17 << 8));
            v19 = a1;
            v20 = a2;

            return sub_1AC120ED8(v19, 1, v18, v20);
          }
        }

        return 0;
      }

LABEL_55:
      BYTE2(v35[4]) = 0;
      LOWORD(v35[4]) = 0;
      snprintf(&v35[4], 3uLL, "%.2hhX", v4);
      v29 = strlen(&v35[4]);
      if (v29 <= 0x7FFFFFFFFFFFFFF7)
      {
        v30 = v29;
        if (v29 < 0x17)
        {
          v36 = v29;
          if (v29)
          {
            memcpy(&v35[9], &v35[4], v29);
          }

          *(&v35[9] + v30) = 0;
          if ((v36 & 0x80u) == 0)
          {
            v31 = v36;
          }

          else
          {
            v31 = v35[10];
          }

          if (v31 + 89 <= 0x7FFFFFFFFFFFFFF7)
          {
            v32 = a1[5];
            v33 = a1[3];
            if (v31 + 89 > 0x16)
            {
              operator new();
            }

            qmemcpy(v35, "specification (0x60-0x7B) or indefinite string type (0x7F); last byte: 0x", 73);
            if ((v36 & 0x80u) == 0)
            {
              v34 = &v35[9];
            }

            else
            {
              v34 = v35[9];
            }

            memmove(&v35[9] + 1, v34, v31);
            *(&v35[9] + v31 + 1) = 0;
            sub_1AC0B2BC8();
          }

          sub_1AC060A04();
        }

        operator new();
      }

      sub_1AC060A04();
    }

    if (v4 == 127)
    {
      do
      {
        while (1)
        {
          ++a1[3];
          v22 = *a1;
          if (*a1 == a1[1])
          {
            a1[2] = -1;
          }

          else
          {
            v23 = *v22;
            *a1 = v22 + 1;
            a1[2] = v23;
            if (v23 == 255)
            {
              return 1;
            }
          }

          memset(&v35[4], 0, 24);
          v24 = sub_1AC0B66FC(a1, &v35[4]);
          if (v24)
          {
            if (SHIBYTE(v35[6]) >= 0)
            {
              v25 = &v35[4];
            }

            else
            {
              v25 = v35[4];
            }

            if (SHIBYTE(v35[6]) >= 0)
            {
              v26 = HIBYTE(v35[6]);
            }

            else
            {
              v26 = v35[5];
            }

            std::string::append(a2, v25, v26);
          }

          if (SHIBYTE(v35[6]) < 0)
          {
            break;
          }

          v6 = 0;
          if ((v24 & 1) == 0)
          {
            return v6;
          }
        }

        operator delete(v35[4]);
        v6 = 0;
      }

      while ((v24 & 1) != 0);
      return v6;
    }

    if (v4 == 122)
    {
      LODWORD(v35[4]) = 0;
      v6 = 0;
      if (sub_1AC120858(a1, 1, &v35[4]))
      {
        return sub_1AC120E10(a1, 1, v35[4], a2);
      }

      return v6;
    }

    if (v4 != 123)
    {
      goto LABEL_55;
    }

    v35[4] = 0;
    if (sub_1AC120A10(a1, 1, &v35[4]))
    {
      return sub_1AC120F94(a1, 1, v35[4], a2);
    }
  }

  return 0;
}

void sub_1AC0B6D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, std::runtime_error a28, int a29, __int16 a30, char a31, char a32)
{
  sub_1AC0B2ED4(&a28);
  if (a27 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v32 & 0x80000000) == 0)
    {
LABEL_11:
      _Unwind_Resume(a1);
    }

LABEL_10:
    operator delete(*(v33 - 88));
    goto LABEL_11;
  }

LABEL_9:
  operator delete(a16);
  if ((v32 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

uint64_t sub_1AC0B6DF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  result = sub_1AC0B2F28(*(a1 + 40), a2);
  if (result)
  {
    memset(&__p, 0, sizeof(__p));
    if (v4 == -1)
    {
      ++*(a1 + 24);
      v8 = *a1;
      if (*a1 != *(a1 + 8))
      {
        goto LABEL_11;
      }

LABEL_16:
      *(a1 + 16) = -1;
      while (1)
      {
        result = sub_1AC0B66FC(a1, &__p);
        if (!result)
        {
          break;
        }

        v10 = *(a1 + 40);
        v11 = *(*(*(v10 + 16) - 8) + 8);
        p_p = &__p;
        *(v10 + 32) = sub_1AC0B450C(v11, &__p.__r_.__value_.__l.__data_) + 7;
        result = sub_1AC0B13D4(a1, 1, a3);
        if (!result)
        {
          break;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          *__p.__r_.__value_.__l.__data_ = 0;
          __p.__r_.__value_.__l.__size_ = 0;
          ++*(a1 + 24);
          v8 = *a1;
          if (*a1 == *(a1 + 8))
          {
            goto LABEL_16;
          }
        }

        else
        {
          __p.__r_.__value_.__s.__data_[0] = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
          ++*(a1 + 24);
          v8 = *a1;
          if (*a1 == *(a1 + 8))
          {
            goto LABEL_16;
          }
        }

LABEL_11:
        v9 = *v8;
        *a1 = v8 + 1;
        *(a1 + 16) = v9;
        if (v9 == 255)
        {
          goto LABEL_4;
        }
      }
    }

    else if (v4)
    {
      while (1)
      {
        ++*(a1 + 24);
        v12 = *a1;
        if (*a1 == *(a1 + 8))
        {
          v13 = -1;
        }

        else
        {
          v13 = *v12;
          *a1 = v12 + 1;
        }

        *(a1 + 16) = v13;
        result = sub_1AC0B66FC(a1, &__p);
        if (!result)
        {
          break;
        }

        v14 = *(a1 + 40);
        v15 = *(*(*(v14 + 16) - 8) + 8);
        p_p = &__p;
        *(v14 + 32) = sub_1AC0B450C(v15, &__p.__r_.__value_.__l.__data_) + 7;
        result = sub_1AC0B13D4(a1, 1, a3);
        if (!result)
        {
          break;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          *__p.__r_.__value_.__l.__data_ = 0;
          __p.__r_.__value_.__l.__size_ = 0;
          if (!--v4)
          {
            goto LABEL_4;
          }
        }

        else
        {
          __p.__r_.__value_.__s.__data_[0] = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
          if (!--v4)
          {
            goto LABEL_4;
          }
        }
      }
    }

    else
    {
LABEL_4:
      *(*(a1 + 40) + 16) -= 8;
      result = 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = result;
      operator delete(__p.__r_.__value_.__l.__data_);
      return v7;
    }
  }

  return result;
}

void sub_1AC0B7048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1AC0B7068(_DWORD **a1)
{
  v1 = (**a1 >> 10) & 0x1F;
  v2 = **a1 & 0x3FF;
  if (v1 == 31)
  {
    result = NAN;
    if (!v2)
    {
      return INFINITY;
    }
  }

  else if (v1)
  {
    return ldexp((v2 | 0x400), v1 - 25);
  }

  else
  {
    return ldexp(v2, -24);
  }

  return result;
}

uint64_t sub_1AC0B70BC(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 6;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_1AC0B05DC(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_1AC0B71D4(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 6;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 6;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_1AC0B05DC(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_1AC0B71D4(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_1AC060AAC();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 6;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_1AC0B05DC(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

BOOL sub_1AC0B7318(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v8 = 0;
    v9 = 1;
    v10 = a3;
    do
    {
      while (1)
      {
        ++a1[3];
        v11 = *a1;
        if (*a1 == a1[1])
        {
          a1[2] = -1;
          if (!sub_1AC0B3390(a1, a2, "binary"))
          {
            return v8;
          }
        }

        else
        {
          v12 = *v11;
          *a1 = v11 + 1;
          a1[2] = v12;
          if (!sub_1AC0B3390(a1, a2, "binary"))
          {
            return v8;
          }
        }

        v13 = *(a1 + 16);
        v15 = *(a4 + 8);
        v14 = *(a4 + 16);
        if (v15 >= v14)
        {
          break;
        }

        *v15 = v13;
        *(a4 + 8) = v15 + 1;
        v8 = v9++ >= v5;
        if (!--v10)
        {
          return v8;
        }
      }

      v16 = *a4;
      v17 = &v15[-*a4];
      v18 = (v17 + 1);
      if ((v17 + 1) < 0)
      {
        sub_1AC060AAC();
      }

      v19 = v14 - v16;
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        operator new();
      }

      v21 = &v15[-*a4];
      *v17 = v13;
      memcpy(0, v16, v21);
      *a4 = 0;
      *(a4 + 8) = v17 + 1;
      *(a4 + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }

      v5 = a3;
      *(a4 + 8) = v17 + 1;
      v8 = v9++ >= a3;
      --v10;
    }

    while (v10);
  }

  else
  {
    return 1;
  }

  return v8;
}

uint64_t sub_1AC0B74DC(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a3)
  {
    return 1;
  }

  v5 = a3;
  v8 = 0;
  while (1)
  {
    ++a1[3];
    v9 = *a1;
    if (*a1 == a1[1])
    {
      v10 = -1;
    }

    else
    {
      v10 = *v9;
      *a1 = v9 + 1;
    }

    a1[2] = v10;
    v11 = sub_1AC0B3390(a1, a2, "binary");
    if (!v11)
    {
      break;
    }

    v12 = *(a1 + 16);
    v14 = *(a4 + 8);
    v13 = *(a4 + 16);
    if (v14 < v13)
    {
      *v14 = v12;
      *(a4 + 8) = v14 + 1;
      if (++v8 >= v5)
      {
        return v11;
      }
    }

    else
    {
      v15 = a2;
      v16 = *a4;
      v17 = &v14[-*a4];
      v18 = (v17 + 1);
      if ((v17 + 1) < 0)
      {
        sub_1AC060AAC();
      }

      v19 = v13 - v16;
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        operator new();
      }

      v21 = &v14[-*a4];
      *v17 = v12;
      v22 = v17 + 1;
      memcpy(0, v16, v21);
      *a4 = 0;
      *(a4 + 8) = v17 + 1;
      *(a4 + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }

      a2 = v15;
      v5 = a3;
      *(a4 + 8) = v22;
      if (++v8 >= a3)
      {
        return v11;
      }
    }
  }

  return v11;
}

BOOL sub_1AC0B767C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v8 = 0;
    v9 = 1;
    v10 = a3;
    do
    {
      while (1)
      {
        ++a1[3];
        v11 = *a1;
        if (*a1 == a1[1])
        {
          a1[2] = -1;
          if (!sub_1AC0B3390(a1, a2, "binary"))
          {
            return v8;
          }
        }

        else
        {
          v12 = *v11;
          *a1 = v11 + 1;
          a1[2] = v12;
          if (!sub_1AC0B3390(a1, a2, "binary"))
          {
            return v8;
          }
        }

        v13 = *(a1 + 16);
        v15 = *(a4 + 8);
        v14 = *(a4 + 16);
        if (v15 >= v14)
        {
          break;
        }

        *v15 = v13;
        *(a4 + 8) = v15 + 1;
        v8 = v9++ >= v5;
        if (!--v10)
        {
          return v8;
        }
      }

      v16 = *a4;
      v17 = &v15[-*a4];
      v18 = (v17 + 1);
      if ((v17 + 1) < 0)
      {
        sub_1AC060AAC();
      }

      v19 = v14 - v16;
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        operator new();
      }

      v21 = &v15[-*a4];
      *v17 = v13;
      memcpy(0, v16, v21);
      *a4 = 0;
      *(a4 + 8) = v17 + 1;
      *(a4 + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }

      v5 = a3;
      *(a4 + 8) = v17 + 1;
      v8 = v9++ >= a3;
      --v10;
    }

    while (v10);
  }

  else
  {
    return 1;
  }

  return v8;
}

char *sub_1AC0B7840(uint64_t a1, _BYTE *__dst, _BYTE *__src, void *a4, unint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((v8 - v9) < a5)
  {
    v10 = *a1;
    v11 = v9 - *a1 + a5;
    if (v11 < 0)
    {
      sub_1AC060AAC();
    }

    v12 = (__dst - v10);
    v13 = v8 - v10;
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      operator new();
    }

    v42 = (__dst - v10);
    v43 = &v12[a5];
    if (a5 < 8 || (__dst - &__src[v10]) < 0x20)
    {
      v44 = (__dst - v10);
      v45 = __src;
      goto LABEL_35;
    }

    if (a5 >= 0x20)
    {
      v51 = a5 & 0x7FFFFFFFFFFFFFE0;
      v53 = (__src + 16);
      v54 = v12 + 16;
      v55 = a5 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v56 = *v53;
        *(v54 - 1) = *(v53 - 1);
        *v54 = v56;
        v53 += 2;
        v54 += 2;
        v55 -= 32;
      }

      while (v55);
      if (v51 == a5)
      {
        goto LABEL_36;
      }

      if ((a5 & 0x18) == 0)
      {
        v45 = &__src[v51];
        v44 = &v42[v51];
        do
        {
LABEL_35:
          v46 = *v45++;
          *v44++ = v46;
        }

        while (v44 != v43);
LABEL_36:
        v47 = *(a1 + 8) - __dst;
        memcpy(v43, __dst, v47);
        v48 = &v43[v47];
        *(a1 + 8) = v5;
        v49 = *a1;
        v50 = &v42[*a1 - v5];
        memcpy(v50, *a1, &v5[-*a1]);
        *a1 = v50;
        *(a1 + 8) = v48;
        *(a1 + 16) = 0;
        if (v49)
        {
          operator delete(v49);
        }

        return v42;
      }
    }

    else
    {
      v51 = 0;
    }

    v44 = &v42[a5 & 0x7FFFFFFFFFFFFFF8];
    v45 = &__src[a5 & 0x7FFFFFFFFFFFFFF8];
    v57 = &__src[v51];
    v58 = (&__dst[v51] - v10);
    v59 = v51 - (a5 & 0x7FFFFFFFFFFFFFF8);
    do
    {
      v60 = *v57++;
      *v58++ = v60;
      v59 += 8;
    }

    while (v59);
    if ((a5 & 0x7FFFFFFFFFFFFFF8) == a5)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v15 = v9 - __dst;
  if ((v9 - __dst) >= a5)
  {
    v30 = &__dst[a5];
    v31 = (v9 - a5);
    v32 = *(a1 + 8);
    if (v9 >= a5)
    {
      if (a5 <= 0x1F)
      {
        goto LABEL_59;
      }

      v31 += a5 & 0x7FFFFFFFFFFFFFE0;
      v32 = (v9 + (a5 & 0x7FFFFFFFFFFFFFE0));
      v33 = (v9 + 16);
      v34 = (v9 + 16 - a5);
      v35 = a5 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v36 = *v34;
        *(v33 - 1) = *(v34 - 1);
        *v33 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 32;
      }

      while (v35);
      if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
      {
LABEL_59:
        do
        {
          v37 = *v31++;
          *v32++ = v37;
        }

        while (v31 != v9);
      }
    }

    *(a1 + 8) = v32;
    if (v9 != v30)
    {
      v38 = a5;
      memmove(&__dst[a5], __dst, v9 - v30);
      a5 = v38;
    }

    v39 = v5;
    v40 = __src;
    v41 = a5;
    goto LABEL_45;
  }

  v16 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    v17 = a5;
    v18 = a4;
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
    a4 = v18;
    a5 = v17;
  }

  v19 = (v9 + v16);
  *(a1 + 8) = v9 + v16;
  if (v15 >= 1)
  {
    v20 = &v5[a5];
    v21 = &v19[-a5];
    if (&v19[-a5] >= v9)
    {
      v23 = (v9 + v16);
    }

    else
    {
      v22 = &__src[a5 + v9] - &v5[a4];
      v23 = (v9 + v16);
      if (v22 < 0x20)
      {
        goto LABEL_60;
      }

      if (a5 <= 0x1F)
      {
        goto LABEL_60;
      }

      v21 += v22 & 0xFFFFFFFFFFFFFFE0;
      v23 = &v19[v22 & 0xFFFFFFFFFFFFFFE0];
      v24 = &v5[a4 + 16];
      v25 = (v24 - __src);
      v26 = (v24 - &__src[a5]);
      v27 = v22 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v28 = *v26;
        *(v25 - 1) = *(v26 - 1);
        *v25 = v28;
        v25 += 2;
        v26 += 2;
        v27 -= 32;
      }

      while (v27);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_60:
        do
        {
          v29 = *v21++;
          *v23++ = v29;
        }

        while (v21 < v9);
      }
    }

    *(a1 + 8) = v23;
    if (v19 != v20)
    {
      memmove(&v5[a5], v5, v19 - v20);
    }

    v39 = v5;
    v40 = __src;
    v41 = v9 - v5;
LABEL_45:
    memmove(v39, v40, v41);
  }

  return v5;
}

BOOL sub_1AC0B7BD4(uint64_t a1, unint64_t a2)
{
  if (sub_1AC0B2F28(*(a1 + 40), a2))
  {
    memset(&__p, 0, sizeof(__p));
    if (a2)
    {
      v4 = 0;
      v5 = 1;
      v6 = a2;
      while (1)
      {
        ++*(a1 + 24);
        v7 = *a1;
        if (*a1 == *(a1 + 8))
        {
          v8 = -1;
        }

        else
        {
          v8 = *v7;
          *a1 = v7 + 1;
        }

        *(a1 + 16) = v8;
        if (!sub_1AC0B7D58(a1, &__p))
        {
          break;
        }

        v9 = *(a1 + 40);
        v10 = *(*(*(v9 + 16) - 8) + 8);
        p_p = &__p;
        *(v9 + 32) = sub_1AC0B450C(v10, &__p.__r_.__value_.__l.__data_) + 7;
        if (!sub_1AC0B1FD8(a1))
        {
          break;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          *__p.__r_.__value_.__l.__data_ = 0;
          __p.__r_.__value_.__l.__size_ = 0;
          v4 = v5++ >= a2;
          if (!--v6)
          {
            goto LABEL_13;
          }
        }

        else
        {
          __p.__r_.__value_.__s.__data_[0] = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
          v4 = v5++ >= a2;
          if (!--v6)
          {
            goto LABEL_13;
          }
        }
      }
    }

    else
    {
LABEL_13:
      *(*(a1 + 40) + 16) -= 8;
      v4 = 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

void sub_1AC0B7D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AC0B7D58(unsigned __int8 **a1, std::string *a2)
{
  if (!sub_1AC0B3390(a1, 2, "string"))
  {
    return 0;
  }

  v4 = a1[2];
  if ((v4 - 160) < 0x20)
  {
    v5 = v4 & 0x1F;
    if ((v4 & 0x1F) != 0)
    {
      v6 = 0;
      v7 = 1;
      v8 = v4 & 0x1F;
      while (1)
      {
        ++a1[3];
        v9 = *a1;
        if (*a1 == a1[1])
        {
          a1[2] = -1;
          if (!sub_1AC0B3390(a1, 2, "string"))
          {
            return v6;
          }
        }

        else
        {
          v10 = *v9;
          *a1 = v9 + 1;
          a1[2] = v10;
          if (!sub_1AC0B3390(a1, 2, "string"))
          {
            return v6;
          }
        }

        std::string::push_back(a2, *(a1 + 16));
        v6 = v7++ >= v5;
        if (!--v8)
        {
          return v6;
        }
      }
    }

    return 1;
  }

  if (v4 == 217)
  {
    ++a1[3];
    v14 = *a1;
    if (*a1 == a1[1])
    {
      v15 = -1;
    }

    else
    {
      v15 = *v14;
      *a1 = v14 + 1;
    }

    a1[2] = v15;
    if (sub_1AC0B3390(a1, 2, "number"))
    {
      v16 = *(a1 + 16);
      v17 = a1;
      v18 = a2;

      return sub_1AC120ED8(v17, 2, v16, v18);
    }

    return 0;
  }

  if (v4 != 218)
  {
    if (v4 != 219)
    {
      __p[34] = 0;
      *&__p[32] = 0;
      snprintf(&__p[32], 3uLL, "%.2hhX", v4);
      v12 = strlen(&__p[32]);
      if (v12 <= 0x7FFFFFFFFFFFFFF7)
      {
        v13 = v12;
        if (v12 < 0x17)
        {
          v33 = v12;
          if (v12)
          {
            memcpy(__dst, &__p[32], v12);
          }

          *(__dst + v13) = 0;
          if ((v33 & 0x80u) == 0)
          {
            v26 = v33;
          }

          else
          {
            v26 = __dst[1];
          }

          if (v26 + 67 <= 0x7FFFFFFFFFFFFFF7)
          {
            v27 = a1[5];
            v28 = a1[3];
            if (v26 + 67 > 0x16)
            {
              operator new();
            }

            qmemcpy(__p, "specification (0xA0-0xBF, 0xD9-0xDB); last byte: 0x", sizeof(__p));
            if ((v33 & 0x80u) == 0)
            {
              v29 = __dst;
            }

            else
            {
              v29 = __dst[0];
            }

            memmove(v31, v29, v26);
            v31[v26] = 0;
            sub_1AC0B2BC8();
          }

          sub_1AC060A04();
        }

        operator new();
      }

      sub_1AC060A04();
    }

    *&__p[32] = 0;
    v6 = 0;
    if (sub_1AC120858(a1, 2, &__p[32]))
    {
      return sub_1AC120E10(a1, 2, *&__p[32], a2);
    }

    return v6;
  }

  ++a1[3];
  v19 = *a1;
  if (*a1 == a1[1])
  {
    v20 = -1;
  }

  else
  {
    v20 = *v19;
    *a1 = v19 + 1;
  }

  a1[2] = v20;
  if (!sub_1AC0B3390(a1, 2, "number"))
  {
    return 0;
  }

  v21 = *(a1 + 16);
  ++a1[3];
  v22 = *a1;
  if (*a1 == a1[1])
  {
    v23 = -1;
  }

  else
  {
    v23 = *v22;
    *a1 = v22 + 1;
  }

  a1[2] = v23;
  if (!sub_1AC0B3390(a1, 2, "number"))
  {
    return 0;
  }

  v24 = *(a1 + 16);
  if (*(a1 + 32))
  {
    v25 = v21;
  }

  else
  {
    v25 = *(a1 + 16);
  }

  if (!*(a1 + 32))
  {
    v24 = v21;
  }

  v16 = (v24 | (v25 << 8));
  v17 = a1;
  v18 = a2;

  return sub_1AC120ED8(v17, 2, v16, v18);
}

void sub_1AC0B82BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, std::runtime_error a28)
{
  sub_1AC0B2ED4(&a28);
  if (a27 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if (v28 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a16);
  if (v28 < 0)
  {
LABEL_7:
    operator delete(*(v29 - 88));
    _Unwind_Resume(a1);
  }

LABEL_10:
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0B834C(unsigned __int8 **a1, uint64_t a2)
{
  switch(a2)
  {
    case -1:

      return sub_1AC0B3390(a1, 3, "value");
    case 67:
      ++a1[3];
      v5 = *a1;
      if (*a1 == a1[1])
      {
        v6 = -1;
      }

      else
      {
        v6 = *v5;
        *a1 = v5 + 1;
      }

      a1[2] = v6;
      result = sub_1AC0B3390(a1, 3, "char");
      if (result)
      {
        v8 = a1[2];
        if (v8 < 0x80)
        {
          *(&__p.__r_.__value_.__s + 23) = 1;
          LOWORD(__p.__r_.__value_.__l.__data_) = v8;
          sub_1AC0B4E50(a1[5]);
        }

        sub_1AC0B2700(a1, __dst);
        v29 = a1[5];
        v30 = a1[3];
        std::operator+<char>();
        sub_1AC063200(v31, "char");
        sub_1AC0B2BC8();
      }

      return result;
    case 68:
      __dst[0] = 0;
      result = sub_1AC120A10(a1, 3, __dst);
      if (!result)
      {
        return result;
      }

      v20 = a1[5];
      v21 = __dst[0];
      goto LABEL_55;
    case 70:
      v3 = a1[5];
      __p.__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_8;
    case 72:

      return sub_1AC0B8B20(a1);
    case 73:
      sub_1AC121C28(a1, &__p);
      return __p.__r_.__value_.__s.__data_[0];
    case 76:
      __dst[0] = 0;
      result = sub_1AC120A10(a1, 3, __dst);
      if (!result)
      {
        return result;
      }

      v23 = a1[5];
      v24 = __dst[0];
      goto LABEL_58;
    case 83:
      memset(&__p, 0, sizeof(__p));
      v17 = sub_1AC0B9134(a1, &__p, 1);
      if (v17)
      {
        sub_1AC0B4E50(a1[5]);
      }

      v18 = v17;
      sub_1AC121974(&__p);
      return v18;
    case 84:
      v3 = a1[5];
      __p.__r_.__value_.__s.__data_[0] = 1;
LABEL_8:
      sub_1AC0B5990(v3, &__p);
      goto LABEL_14;
    case 85:
      sub_1AC121D5C(a1, &__p);
      return __p.__r_.__value_.__s.__data_[0];
    case 90:
      v4 = a1[5];
      __p.__r_.__value_.__r.__words[0] = 0;
      sub_1AC0B5BEC(v4);
LABEL_14:
      result = 1;
      break;
    case 91:

      result = sub_1AC1216CC(a1);
      break;
    case 100:
      LODWORD(__dst[0]) = 0;
      result = sub_1AC120858(a1, 3, __dst);
      if (result)
      {
        v20 = a1[5];
        *&v21 = *__dst;
LABEL_55:
        __p.__r_.__value_.__r.__words[0] = v21;
        v26 = result;
        sub_1AC0B4BF4(v20, &__p);
        result = v26;
      }

      break;
    case 105:
      sub_1AC121CE8(a1, &__p);
      result = __p.__r_.__value_.__s.__data_[0];
      break;
    case 108:
      LODWORD(__dst[0]) = 0;
      result = sub_1AC120858(a1, 3, __dst);
      if (result)
      {
        v23 = a1[5];
        v24 = SLODWORD(__dst[0]);
LABEL_58:
        __p.__r_.__value_.__r.__words[0] = v24;
        v28 = result;
        sub_1AC0B5E20(v23, &__p);
        result = v28;
      }

      break;
    case 123:

      result = sub_1AC0B992C(a1);
      break;
    default:
      __p.__r_.__value_.__s.__data_[2] = 0;
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      snprintf(&__p, 3uLL, "%.2hhX", *(a1 + 16));
      v10 = strlen(&__p);
      if (v10 <= 0x7FFFFFFFFFFFFFF7)
      {
        v11 = v10;
        if (v10 < 0x17)
        {
          v37 = v10;
          if (v10)
          {
            memcpy(__dst, &__p, v10);
          }

          *(__dst + v11) = 0;
          if ((v37 & 0x80u) == 0)
          {
            v12 = v37;
          }

          else
          {
            v12 = __dst[1];
          }

          if (v12 + 16 <= 0x7FFFFFFFFFFFFFF7)
          {
            v13 = a1[5];
            v14 = a1[3];
            if (v12 + 16 >= 0x17)
            {
              operator new();
            }

            v34 = 0;
            HIBYTE(v34) = v12 + 16;
            *v33 = *"invalid byte: 0x";
            if (v12)
            {
              if ((v37 & 0x80u) == 0)
              {
                v15 = __dst;
              }

              else
              {
                v15 = __dst[0];
              }

              memmove(&v34, v15, v12);
            }

            *(&v34 + v12) = 0;
            v32 = 5;
            strcpy(v31, "value");
            sub_1AC0B2BC8();
          }

          sub_1AC060A04();
        }

        operator new();
      }

      sub_1AC060A04();
  }

  return result;
}

void sub_1AC0B89E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, std::runtime_error a28, int a29, __int16 a30, char a31, char a32)
{
  sub_1AC0B2ED4(&a28);
  if (a27 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v32 - 65) & 0x80000000) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(*(v32 - 88));
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a16);
  if ((*(v32 - 65) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_1AC0B8B20(unsigned __int8 **a1)
{
  v34[0] = 0;
  if (!sub_1AC0B9CF0(a1, v34))
  {
    return 0;
  }

  if (v34[0])
  {
    ++a1[3];
    v2 = *a1;
    if (*a1 == a1[1])
    {
      v3 = -1;
    }

    else
    {
      v3 = *v2;
      *a1 = v2 + 1;
    }

    a1[2] = v3;
    if (sub_1AC0B3390(a1, 3, "number"))
    {
      operator new();
    }

    return 0;
  }

  else
  {
    v20 = 0uLL;
    v21 = 0;
    v22 = -1;
    v23 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    v29 = "";
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v5 = localeconv();
    if (v5->decimal_point)
    {
      v6 = *v5->decimal_point;
    }

    else
    {
      v6 = 46;
    }

    v33 = v6;
    v7 = sub_1AC0BA238(&v20);
    sub_1AC0BA2D4(&v20, &v19);
    v8 = sub_1AC0BA238(&v20);
    v9 = a1[5];
    if (v8 != 15)
    {
      v14 = a1[3];
      sub_1AC0BA2D4(&v20, &v16);
      sub_1AC063E68("invalid number text: ", &v16, &v17);
      sub_1AC063200(v15, "high-precision number");
      sub_1AC0B2BC8();
    }

    switch(v7)
    {
      case 5:
        v18.__vftable = v31;
        sub_1AC0B70BC(v9, &v18);
        break;
      case 7:
        v18.__vftable = v32;
        sub_1AC0B4BF4(v9, &v18);
        break;
      case 6:
        v18.__vftable = v30;
        sub_1AC0B5E20(v9, &v18);
        break;
      default:
        v10 = a1[3];
        sub_1AC0BA2D4(&v20, &v16);
        v11 = std::string::insert(&v16, 0, "invalid number text: ", 0x15uLL);
        v12 = *&v11->__r_.__value_.__l.__data_;
        v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
        *&v17.__r_.__value_.__l.__data_ = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        v15[23] = 21;
        strcpy(v15, "high-precision number");
        sub_1AC0B2BC8();
    }

    v4 = 1;
    sub_1AC121DD0(&v20, &v19);
  }

  return v4;
}

void sub_1AC0B8FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, std::runtime_error a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44)
{
  sub_1AC0B2ED4(&a34);
  if (a33 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
LABEL_3:
    if (a26 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  operator delete(a9);
  if (a26 < 0)
  {
LABEL_4:
    operator delete(a21);
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  if ((a20 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a43 & 0x80000000) == 0)
    {
LABEL_12:
      sub_1AC0BBD1C(&a44);
      v46 = a1;
      if (v44)
      {
        operator delete(v44);
        v46 = a1;
      }

      _Unwind_Resume(v46);
    }

LABEL_11:
    operator delete(a38);
    goto LABEL_12;
  }

LABEL_10:
  operator delete(a15);
  if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

BOOL sub_1AC0B9134(unsigned __int8 **a1, std::string *a2, int a3)
{
  if (a3)
  {
    sub_1AC121E20(a1);
    if (!sub_1AC0B3390(a1, 3, "value"))
    {
      return 0;
    }
  }

  else if (!sub_1AC0B3390(a1, 3, "value"))
  {
    return 0;
  }

  v5 = a1[2];
  if (v5 <= 84)
  {
    if (v5 != 73)
    {
      if (v5 == 76)
      {
        *&__p[32] = 0;
        if (sub_1AC120A10(a1, 3, &__p[32]))
        {
          v44 = *&__p[32];
          if (*&__p[32] >= 1)
          {
            v13 = 0;
            v45 = 1;
            v46 = *&__p[32];
            while (1)
            {
              ++a1[3];
              v47 = *a1;
              if (*a1 == a1[1])
              {
                a1[2] = -1;
                if (!sub_1AC0B3390(a1, 3, "string"))
                {
                  return v13;
                }
              }

              else
              {
                v48 = *v47;
                *a1 = v47 + 1;
                a1[2] = v48;
                if (!sub_1AC0B3390(a1, 3, "string"))
                {
                  return v13;
                }
              }

              std::string::push_back(a2, *(a1 + 16));
              v13 = v45++ >= v44;
              if (!--v46)
              {
                return v13;
              }
            }
          }

          return 1;
        }

        return 0;
      }

LABEL_59:
      __p[34] = 0;
      *&__p[32] = 0;
      snprintf(&__p[32], 3uLL, "%.2hhX", v5);
      v38 = strlen(&__p[32]);
      if (v38 <= 0x7FFFFFFFFFFFFFF7)
      {
        v39 = v38;
        if (v38 < 0x17)
        {
          v53 = v38;
          if (v38)
          {
            memcpy(__dst, &__p[32], v38);
          }

          *(__dst + v39) = 0;
          if ((v53 & 0x80u) == 0)
          {
            v40 = v53;
          }

          else
          {
            v40 = __dst[1];
          }

          if (v40 + 65 <= 0x7FFFFFFFFFFFFFF7)
          {
            v41 = a1[5];
            v42 = a1[3];
            if (v40 + 65 > 0x16)
            {
              operator new();
            }

            qmemcpy(__p, "type specification (U, i, I, l, L); last byte: 0x", sizeof(__p));
            if ((v53 & 0x80u) == 0)
            {
              v43 = __dst;
            }

            else
            {
              v43 = __dst[0];
            }

            memmove(v51, v43, v40);
            v51[v40] = 0;
            sub_1AC0B2BC8();
          }

          sub_1AC060A04();
        }

        operator new();
      }

      sub_1AC060A04();
    }

    ++a1[3];
    v14 = *a1;
    if (*a1 == a1[1])
    {
      v15 = -1;
    }

    else
    {
      v15 = *v14;
      *a1 = v14 + 1;
    }

    a1[2] = v15;
    if (!sub_1AC0B3390(a1, 3, "number"))
    {
      return 0;
    }

    v16 = *(a1 + 16);
    ++a1[3];
    v17 = *a1;
    if (*a1 == a1[1])
    {
      v18 = -1;
    }

    else
    {
      v18 = *v17;
      *a1 = v17 + 1;
    }

    a1[2] = v18;
    if (!sub_1AC0B3390(a1, 3, "number"))
    {
      return 0;
    }

    v19 = *(a1 + 16);
    if (*(a1 + 32))
    {
      v20 = v16;
    }

    else
    {
      v20 = *(a1 + 16);
    }

    if (!*(a1 + 32))
    {
      v19 = v16;
    }

    v21 = (v19 | (v20 << 8));
    if (v21 < 1)
    {
      return 1;
    }

    LOWORD(v22) = 0;
    do
    {
      ++a1[3];
      v23 = *a1;
      if (*a1 == a1[1])
      {
        v24 = -1;
      }

      else
      {
        v24 = *v23;
        *a1 = v23 + 1;
      }

      a1[2] = v24;
      v25 = sub_1AC0B3390(a1, 3, "string");
      v13 = v25;
      if (!v25)
      {
        break;
      }

      std::string::push_back(a2, *(a1 + 16));
      v22 = (v22 + 1);
    }

    while (v22 < v21);
  }

  else
  {
    if (v5 != 85)
    {
      if (v5 == 105)
      {
        ++a1[3];
        v6 = *a1;
        if (*a1 == a1[1])
        {
          v7 = -1;
        }

        else
        {
          v7 = *v6;
          *a1 = v6 + 1;
        }

        a1[2] = v7;
        if (sub_1AC0B3390(a1, 3, "number"))
        {
          v8 = *(a1 + 16);
          if (v8 >= 1)
          {
            LOBYTE(v9) = 0;
            do
            {
              ++a1[3];
              v10 = *a1;
              if (*a1 == a1[1])
              {
                v11 = -1;
              }

              else
              {
                v11 = *v10;
                *a1 = v10 + 1;
              }

              a1[2] = v11;
              v12 = sub_1AC0B3390(a1, 3, "string");
              v13 = v12;
              if (!v12)
              {
                break;
              }

              std::string::push_back(a2, *(a1 + 16));
              v9 = (v9 + 1);
            }

            while (v9 < v8);
            return v13;
          }

          return 1;
        }

        return 0;
      }

      if (v5 == 108)
      {
        *&__p[32] = 0;
        v13 = 0;
        if (!sub_1AC120858(a1, 3, &__p[32]))
        {
          return v13;
        }

        v33 = *&__p[32];
        if (*&__p[32] >= 1)
        {
          v13 = 0;
          v34 = 1;
          v35 = *&__p[32];
          while (1)
          {
            ++a1[3];
            v36 = *a1;
            if (*a1 == a1[1])
            {
              a1[2] = -1;
              if (!sub_1AC0B3390(a1, 3, "string"))
              {
                return v13;
              }
            }

            else
            {
              v37 = *v36;
              *a1 = v36 + 1;
              a1[2] = v37;
              if (!sub_1AC0B3390(a1, 3, "string"))
              {
                return v13;
              }
            }

            std::string::push_back(a2, *(a1 + 16));
            v13 = v34++ >= v33;
            if (!--v35)
            {
              return v13;
            }
          }
        }

        return 1;
      }

      goto LABEL_59;
    }

    ++a1[3];
    v26 = *a1;
    if (*a1 == a1[1])
    {
      v27 = -1;
    }

    else
    {
      v27 = *v26;
      *a1 = v26 + 1;
    }

    a1[2] = v27;
    if (!sub_1AC0B3390(a1, 3, "number"))
    {
      return 0;
    }

    v28 = *(a1 + 16);
    if (!*(a1 + 16))
    {
      return 1;
    }

    v29 = 0;
    do
    {
      ++a1[3];
      v30 = *a1;
      if (*a1 == a1[1])
      {
        v31 = -1;
      }

      else
      {
        v31 = *v30;
        *a1 = v30 + 1;
      }

      a1[2] = v31;
      v32 = sub_1AC0B3390(a1, 3, "string");
      v13 = v32;
      if (!v32)
      {
        break;
      }

      std::string::push_back(a2, *(a1 + 16));
      ++v29;
    }

    while (v29 < v28);
  }

  return v13;
}

void sub_1AC0B989C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, std::runtime_error a28)
{
  sub_1AC0B2ED4(&a28);
  if (a27 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if (v28 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a16);
  if (v28 < 0)
  {
LABEL_7:
    operator delete(*(v29 - 88));
    _Unwind_Resume(a1);
  }

LABEL_10:
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0B992C(uint64_t a1)
{
  v27 = 0;
  v28 = 0;
  result = sub_1AC0BBD60(a1, &v27);
  if (!result)
  {
    return result;
  }

  memset(&__p, 0, sizeof(__p));
  v3 = *(a1 + 40);
  if (v27 == -1)
  {
    v29 = 1;
    p_p = sub_1AC0B36B0(v3, &v29);
    sub_1AC0B3598((v3 + 1), &p_p);
    if (*(a1 + 16) == 125)
    {
      goto LABEL_42;
    }

LABEL_16:
    result = sub_1AC0B9134(a1, &__p, 0);
    if (!result)
    {
      goto LABEL_43;
    }

    v7 = *(a1 + 40);
    v8 = *(*(*(v7 + 16) - 8) + 8);
    p_p = &__p;
    *(v7 + 32) = sub_1AC0B450C(v8, &__p.__r_.__value_.__l.__data_) + 7;
    v10 = *a1;
    v9 = *(a1 + 8);
    v11 = *(a1 + 24) + 1;
    while (1)
    {
      *(a1 + 24) = v11;
      if (v10 == v9)
      {
        break;
      }

      v12 = *v10++;
      *a1 = v10;
      *(a1 + 16) = v12;
      ++v11;
      if (v12 != 78)
      {
        goto LABEL_20;
      }
    }

    *(a1 + 16) = -1;
LABEL_20:
    result = sub_1AC0B834C(a1);
    if (!result)
    {
      goto LABEL_43;
    }

    v14 = *a1;
    v13 = *(a1 + 8);
    v15 = *(a1 + 24) + 1;
    while (1)
    {
      *(a1 + 24) = v15;
      if (v14 == v13)
      {
        break;
      }

      v17 = *v14++;
      v16 = v17;
      *a1 = v14;
      *(a1 + 16) = v17;
      ++v15;
      if (v17 != 78)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_25:
          *__p.__r_.__value_.__l.__data_ = 0;
          __p.__r_.__value_.__l.__size_ = 0;
          if (*(a1 + 16) != 125)
          {
            goto LABEL_16;
          }

LABEL_42:
          *(*(a1 + 40) + 16) -= 8;
          result = 1;
LABEL_43:
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return result;
          }

LABEL_46:
          v25 = result;
          operator delete(__p.__r_.__value_.__l.__data_);
          return v25;
        }

LABEL_15:
        __p.__r_.__value_.__s.__data_[0] = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        if (v16 == 125)
        {
          goto LABEL_42;
        }

        goto LABEL_16;
      }
    }

    v16 = -1;
    *(a1 + 16) = -1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  if (sub_1AC0B2F28(*(a1 + 40), v27))
  {
    if (v28)
    {
      if (!v27)
      {
        goto LABEL_42;
      }

      v4 = 0;
      while (1)
      {
        result = sub_1AC0B9134(a1, &__p, 1);
        if (!result)
        {
          break;
        }

        v5 = *(a1 + 40);
        v6 = *(*(*(v5 + 16) - 8) + 8);
        p_p = &__p;
        *(v5 + 32) = sub_1AC0B450C(v6, &__p.__r_.__value_.__l.__data_) + 7;
        result = sub_1AC0B834C(a1);
        if (!result)
        {
          break;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          *__p.__r_.__value_.__l.__data_ = 0;
          __p.__r_.__value_.__l.__size_ = 0;
          if (++v4 >= v27)
          {
            goto LABEL_42;
          }
        }

        else
        {
          __p.__r_.__value_.__s.__data_[0] = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
          if (++v4 >= v27)
          {
            goto LABEL_42;
          }
        }
      }
    }

    else
    {
      if (!v27)
      {
        goto LABEL_42;
      }

      v18 = 0;
      while (1)
      {
        result = sub_1AC0B9134(a1, &__p, 1);
        if (!result)
        {
          break;
        }

        v19 = *(a1 + 40);
        v20 = *(*(*(v19 + 16) - 8) + 8);
        p_p = &__p;
        *(v19 + 32) = sub_1AC0B450C(v20, &__p.__r_.__value_.__l.__data_) + 7;
        v22 = *a1;
        v21 = *(a1 + 8);
        v23 = *(a1 + 24) + 1;
        while (1)
        {
          *(a1 + 24) = v23;
          if (v22 == v21)
          {
            break;
          }

          v24 = *v22++;
          *a1 = v22;
          *(a1 + 16) = v24;
          ++v23;
          if (v24 != 78)
          {
            goto LABEL_37;
          }
        }

        *(a1 + 16) = -1;
LABEL_37:
        result = sub_1AC0B834C(a1);
        if (!result)
        {
          break;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          *__p.__r_.__value_.__l.__data_ = 0;
          __p.__r_.__value_.__l.__size_ = 0;
          if (++v18 >= v27)
          {
            goto LABEL_42;
          }
        }

        else
        {
          __p.__r_.__value_.__s.__data_[0] = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
          if (++v18 >= v27)
          {
            goto LABEL_42;
          }
        }
      }
    }

    goto LABEL_43;
  }

  result = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_46;
  }

  return result;
}

void sub_1AC0B9CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AC0B9CF0(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 24) + 1;
  do
  {
    *(a1 + 24) = v6;
    if (v4 == v5)
    {
      *(a1 + 16) = -1;
      v7 = 255;
      goto LABEL_33;
    }

    v8 = *v4++;
    v7 = v8;
    *a1 = v4;
    *(a1 + 16) = v8;
    ++v6;
  }

  while (v8 == 78);
  if (v7 <= 84)
  {
    if (v7 != 73)
    {
      if (v7 == 76)
      {
        *&__p[32] = 0;
        result = sub_1AC120A10(a1, 3, &__p[32]);
        if (result)
        {
          *a2 = *&__p[32];
        }

        return result;
      }

LABEL_33:
      __p[34] = 0;
      *&__p[32] = 0;
      snprintf(&__p[32], 3uLL, "%.2hhX", v7);
      v19 = strlen(&__p[32]);
      if (v19 <= 0x7FFFFFFFFFFFFFF7)
      {
        v20 = v19;
        if (v19 < 0x17)
        {
          v28 = v19;
          if (v19)
          {
            memcpy(__dst, &__p[32], v19);
          }

          *(__dst + v20) = 0;
          if ((v28 & 0x80u) == 0)
          {
            v21 = v28;
          }

          else
          {
            v21 = __dst[1];
          }

          if (v21 + 75 <= 0x7FFFFFFFFFFFFFF7)
          {
            v22 = *(a1 + 40);
            v23 = *(a1 + 24);
            if (v21 + 75 > 0x16)
            {
              operator new();
            }

            qmemcpy(__p, "type specification (U, i, I, l, L) after '#'; last byte: 0x", sizeof(__p));
            if ((v28 & 0x80u) == 0)
            {
              v24 = __dst;
            }

            else
            {
              v24 = __dst[0];
            }

            memmove(v26, v24, v21);
            v26[v21] = 0;
            sub_1AC0B2BC8();
          }

          sub_1AC060A04();
        }

        operator new();
      }

      sub_1AC060A04();
    }

    *(a1 + 24) = v6;
    if (v4 == v5)
    {
      v12 = -1;
    }

    else
    {
      v12 = *v4;
      *a1 = v4 + 1;
    }

    *(a1 + 16) = v12;
    result = sub_1AC0B3390(a1, 3, "number");
    if (!result)
    {
      return result;
    }

    v13 = *(a1 + 16);
    ++*(a1 + 24);
    v14 = *a1;
    if (*a1 == *(a1 + 8))
    {
      v15 = -1;
    }

    else
    {
      v15 = *v14;
      *a1 = v14 + 1;
    }

    *(a1 + 16) = v15;
    result = sub_1AC0B3390(a1, 3, "number");
    if (!result)
    {
      return result;
    }

    v16 = *(a1 + 16);
    if (*(a1 + 32))
    {
      v17 = v13;
    }

    else
    {
      v17 = *(a1 + 16);
    }

    if (!*(a1 + 32))
    {
      v16 = v13;
    }

    v11 = (v16 | (v17 << 8));
LABEL_28:
    *a2 = v11;
    return 1;
  }

  if (v7 == 85)
  {
    *(a1 + 24) = v6;
    if (v4 == v5)
    {
      v18 = -1;
    }

    else
    {
      v18 = *v4;
      *a1 = v4 + 1;
    }

    *(a1 + 16) = v18;
    result = sub_1AC0B3390(a1, 3, "number");
    if (!result)
    {
      return result;
    }

    v11 = *(a1 + 16);
    goto LABEL_28;
  }

  if (v7 != 105)
  {
    if (v7 == 108)
    {
      *&__p[32] = 0;
      result = sub_1AC120858(a1, 3, &__p[32]);
      if (result)
      {
        *a2 = *&__p[32];
      }

      return result;
    }

    goto LABEL_33;
  }

  *(a1 + 24) = v6;
  if (v4 == v5)
  {
    v9 = -1;
  }

  else
  {
    v9 = *v4;
    *a1 = v4 + 1;
  }

  *(a1 + 16) = v9;
  result = sub_1AC0B3390(a1, 3, "number");
  if (result)
  {
    v11 = *(a1 + 16);
    goto LABEL_28;
  }

  return result;
}

void sub_1AC0BA1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, std::runtime_error a28)
{
  sub_1AC0B2ED4(&a28);
  if (a27 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a16);
  if ((v28 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*(v29 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0BA238(int64x2_t *a1)
{
  if (!a1[2].i64[0])
  {
    if (sub_1AC0BBA04(a1) == 239)
    {
      if (sub_1AC0BBA04(a1) != 187 || sub_1AC0BBA04(a1) != 191)
      {
        a1[6].i64[1] = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
        return 14;
      }
    }

    else
    {
      sub_1AC121E50(a1, a1[2].i64);
    }
  }

  sub_1AC121EA0(a1, &v3);
  return v3;
}

void sub_1AC0BA2D4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 56);
  for (i = *(a1 + 64); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v9 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      v6 = strlen(__str);
      std::string::append(a2, __str, v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1AC0BA3A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0BA3C8(uint64_t a1)
{
  v2 = vdupq_n_s64(1uLL);
  v15 = v2;
  while (1)
  {
    *(a1 + 32) = vaddq_s64(*(a1 + 32), v2);
    if (*(a1 + 24) != 1)
    {
      break;
    }

    *(a1 + 24) = 0;
    v3 = *(a1 + 20);
    if (v3 == -1)
    {
      return;
    }

LABEL_7:
    v7 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v7 >= v6)
    {
      v10 = *(a1 + 56);
      v11 = (v7 - v10);
      v12 = v7 - v10 + 1;
      if (v12 < 0)
      {
        sub_1AC060AAC();
      }

      v13 = v6 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        operator new();
      }

      *v11 = v3;
      memcpy(0, v10, v7 - v10);
      *(a1 + 56) = 0;
      *(a1 + 64) = v11 + 1;
      *(a1 + 72) = 0;
      if (v10)
      {
        operator delete(v10);
      }

      v2 = v15;
      *(a1 + 64) = v11 + 1;
      v8 = *(a1 + 20);
      if (v8 <= 12)
      {
        goto LABEL_9;
      }

LABEL_23:
      if (v8 != 13 && v8 != 32)
      {
        return;
      }
    }

    else
    {
      *v7 = v3;
      *(a1 + 64) = v7 + 1;
      v8 = *(a1 + 20);
      if (v8 > 12)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v8 != 9)
      {
        if (v8 != 10)
        {
          return;
        }

        v9 = *(a1 + 48) + 1;
        *(a1 + 40) = 0;
        *(a1 + 48) = v9;
      }
    }
  }

  v4 = *a1;
  if (*a1 != *(a1 + 8))
  {
    v5 = *v4;
    LOBYTE(v3) = *v4;
    *a1 = v4 + 1;
    *(a1 + 20) = v5;
    if (v5 == -1)
    {
      return;
    }

    goto LABEL_7;
  }

  *(a1 + 20) = -1;
}

uint64_t sub_1AC0BA580(int64x2_t *a1)
{
  v2 = sub_1AC0BBA04(a1);
  if (v2 == 42)
  {
    v5 = a1 + 3;
    do
    {
      while (1)
      {
        v6 = sub_1AC0BBA04(a1);
        if (v6 != 42)
        {
          break;
        }

        if (sub_1AC0BBA04(a1) == 47)
        {
          return 1;
        }

        a1[1].i8[8] = 1;
        v7 = a1[2].i64[1];
        --a1[2].i64[0];
        v8 = (a1 + 40);
        if (v7 || (v7 = v5->i64[0], v8 = a1 + 3, v5->i64[0]))
        {
          v8->i64[0] = v7 - 1;
        }

        if (a1[1].i32[1] != -1)
        {
          --a1[4].i64[0];
        }
      }
    }

    while ((v6 + 1) >= 2);
    result = 0;
    a1[6].i64[1] = "invalid comment; missing closing '*/'";
  }

  else if (v2 == 47)
  {
    do
    {
      do
      {
        v3 = sub_1AC0BBA04(a1) + 1;
      }

      while (v3 >= 0xF);
    }

    while (((0x4803u >> v3) & 1) == 0);
    return 1;
  }

  else
  {
    result = 0;
    a1[6].i64[1] = "invalid comment; expecting '/' or '*' after '/'";
  }

  return result;
}

uint64_t sub_1AC0BA6A4(unsigned __int8 **a1)
{
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 103) = 0;
    v2 = a1[7];
    a1[8] = v2;
    v3 = *(a1 + 5);
    v4 = a1[9];
    if (v2 < v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  *a1[10] = 0;
  a1[11] = 0;
  v2 = a1[7];
  a1[8] = v2;
  v3 = *(a1 + 5);
  v5 = a1[9];
  if (v2 >= v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v2 = v3;
  v6 = (a1 + 10);
  a1[8] = v2 + 1;
  v76 = vdupq_n_s64(1uLL);
  while (2)
  {
    *(a1 + 2) = vaddq_s64(*(a1 + 2), v76);
    if (*(a1 + 24) == 1)
    {
      *(a1 + 24) = 0;
      v10 = *(a1 + 5);
    }

    else
    {
      v11 = *a1;
      if (*a1 == a1[1])
      {
        v10 = -1;
      }

      else
      {
        v10 = *v11;
        *a1 = v11 + 1;
      }

      *(a1 + 5) = v10;
    }

    if (v10 == -1)
    {
      v22 = "invalid string: missing closing quote";
      goto LABEL_162;
    }

    v13 = a1[8];
    v12 = a1[9];
    if (v13 >= v12)
    {
      v15 = a1[7];
      v16 = (v13 - v15);
      v17 = v13 - v15 + 1;
      if (v17 < 0)
      {
        goto LABEL_197;
      }

      v18 = v12 - v15;
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        operator new();
      }

      v20 = v13 - v15;
      *v16 = v10;
      v14 = v16 + 1;
      memcpy(0, v15, v20);
      a1[7] = 0;
      a1[8] = v16 + 1;
      a1[9] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v13 = v10;
      v14 = v13 + 1;
    }

    a1[8] = v14;
    v21 = *(a1 + 5);
    if (v21 == 10)
    {
      v73 = (a1[6] + 1);
      a1[5] = 0;
      a1[6] = v73;
      v22 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
      goto LABEL_162;
    }

    v22 = "invalid string: missing closing quote";
    switch(v21)
    {
      case -1:
        goto LABEL_162;
      case 0:
        v22 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
        goto LABEL_162;
      case 1:
        v22 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
        goto LABEL_162;
      case 2:
        v22 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
        goto LABEL_162;
      case 3:
        v22 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
        goto LABEL_162;
      case 4:
        v22 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
        goto LABEL_162;
      case 5:
        v22 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
        goto LABEL_162;
      case 6:
        v22 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
        goto LABEL_162;
      case 7:
        v22 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
        goto LABEL_162;
      case 8:
        v22 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
        goto LABEL_162;
      case 9:
        v22 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
        goto LABEL_162;
      case 11:
        v22 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
        goto LABEL_162;
      case 12:
        v22 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
        goto LABEL_162;
      case 13:
        v22 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
        goto LABEL_162;
      case 14:
        v22 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
        goto LABEL_162;
      case 15:
        v22 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
        goto LABEL_162;
      case 16:
        v22 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
        goto LABEL_162;
      case 17:
        v22 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
        goto LABEL_162;
      case 18:
        v22 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
        goto LABEL_162;
      case 19:
        v22 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
        goto LABEL_162;
      case 20:
        v22 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
        goto LABEL_162;
      case 21:
        v22 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
        goto LABEL_162;
      case 22:
        v22 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
        goto LABEL_162;
      case 23:
        v22 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
        goto LABEL_162;
      case 24:
        v22 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
        goto LABEL_162;
      case 25:
        v22 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
        goto LABEL_162;
      case 26:
        v22 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
        goto LABEL_162;
      case 27:
        v22 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
        goto LABEL_162;
      case 28:
        v22 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
        goto LABEL_162;
      case 29:
        v22 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
        goto LABEL_162;
      case 30:
        v22 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
        goto LABEL_162;
      case 31:
        v22 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
        goto LABEL_162;
      case 32:
      case 33:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
        goto LABEL_98;
      case 34:
        return 4;
      case 92:
        v69 = sub_1AC0BBA04(a1);
        v22 = "invalid string: forbidden character after backslash";
        if (v69 <= 101)
        {
          if (v69 > 91)
          {
            if (v69 == 92)
            {
              std::string::push_back((a1 + 10), 92);
            }

            else
            {
              if (v69 != 98)
              {
                goto LABEL_162;
              }

              std::string::push_back((a1 + 10), 8);
            }
          }

          else if (v69 == 34)
          {
            std::string::push_back((a1 + 10), 34);
          }

          else
          {
            if (v69 != 47)
            {
              goto LABEL_162;
            }

            std::string::push_back((a1 + 10), 47);
          }
        }

        else if (v69 <= 113)
        {
          if (v69 == 102)
          {
            std::string::push_back((a1 + 10), 12);
          }

          else
          {
            if (v69 != 110)
            {
              goto LABEL_162;
            }

            std::string::push_back((a1 + 10), 10);
          }
        }

        else
        {
          switch(v69)
          {
            case 'r':
              std::string::push_back((a1 + 10), 13);
              break;
            case 't':
              std::string::push_back((a1 + 10), 9);
              break;
            case 'u':
              v70 = sub_1AC0BBB6C(a1);
              if (v70 == -1)
              {
LABEL_198:
                v22 = "invalid string: '\\u' must be followed by 4 hex digits";
                goto LABEL_162;
              }

              v71 = v70;
              if ((v70 & 0xFFFFFC00) == 0xD800)
              {
                if (sub_1AC0BBA04(a1) != 92 || sub_1AC0BBA04(a1) != 117)
                {
                  goto LABEL_199;
                }

                v72 = sub_1AC0BBB6C(a1);
                if (v72 == -1)
                {
                  goto LABEL_198;
                }

                if (v72 >> 10 != 55)
                {
LABEL_199:
                  v22 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
                  goto LABEL_162;
                }

                v71 = v72 + (v71 << 10) - 56613888;
              }

              else
              {
                if ((v70 & 0xFFFFFC00) == 0xDC00)
                {
                  v22 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
                  goto LABEL_162;
                }

                if (v70 <= 127)
                {
                  v68 = v70;
LABEL_114:
                  std::string::push_back((a1 + 10), v68);
                  continue;
                }

                if (v70 <= 0x7FF)
                {
                  std::string::push_back((a1 + 10), (v70 >> 6) | 0xC0);
                  v68 = v71 & 0x3F | 0x80;
                  goto LABEL_114;
                }

                if (!HIWORD(v70))
                {
                  std::string::push_back((a1 + 10), (v70 >> 12) | 0xE0);
                  goto LABEL_128;
                }
              }

              std::string::push_back((a1 + 10), (v71 >> 18) | 0xF0);
              std::string::push_back((a1 + 10), (v71 >> 12) & 0x3F | 0x80);
LABEL_128:
              std::string::push_back((a1 + 10), (v71 >> 6) & 0x3F | 0x80);
              std::string::push_back((a1 + 10), v71 & 0x3F | 0x80);
              continue;
            default:
              goto LABEL_162;
          }
        }

        continue;
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
        std::string::push_back((a1 + 10), v21);
        *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          v23 = *(a1 + 5);
        }

        else
        {
          v24 = *a1;
          if (*a1 == a1[1])
          {
            v23 = -1;
          }

          else
          {
            v23 = *v24;
            *a1 = v24 + 1;
          }

          *(a1 + 5) = v23;
        }

        if (v23 == -1)
        {
          goto LABEL_161;
        }

        v26 = a1[8];
        v25 = a1[9];
        if (v26 >= v25)
        {
          v28 = a1[7];
          v29 = (v26 - v28);
          v30 = v26 - v28 + 1;
          if (v30 < 0)
          {
            goto LABEL_197;
          }

          v31 = v25 - v28;
          if (2 * v31 > v30)
          {
            v30 = 2 * v31;
          }

          if (v31 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v32 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v30;
          }

          if (v32)
          {
            operator new();
          }

          v43 = v26 - v28;
          *v29 = v23;
          v27 = v29 + 1;
          memcpy(0, v28, v43);
          a1[7] = 0;
          a1[8] = v29 + 1;
          a1[9] = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v26 = v23;
          v27 = v26 + 1;
        }

        a1[8] = v27;
        v21 = *(a1 + 5);
        if (v21 == 10)
        {
          goto LABEL_160;
        }

        goto LABEL_97;
      case 224:
        std::string::push_back((a1 + 10), -32);
        sub_1AC0BBA04(a1);
        v67 = *(a1 + 5);
        if ((v67 - 192) < 0xFFFFFFE0)
        {
          goto LABEL_161;
        }

        goto LABEL_112;
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 238:
      case 239:
        std::string::push_back((a1 + 10), v21);
        *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          v33 = *(a1 + 5);
        }

        else
        {
          v34 = *a1;
          if (*a1 == a1[1])
          {
            v33 = -1;
          }

          else
          {
            v33 = *v34;
            *a1 = v34 + 1;
          }

          *(a1 + 5) = v33;
        }

        if (v33 == -1)
        {
          goto LABEL_161;
        }

        v36 = a1[8];
        v35 = a1[9];
        if (v36 >= v35)
        {
          v38 = a1[7];
          v39 = (v36 - v38);
          v40 = v36 - v38 + 1;
          if (v40 < 0)
          {
            goto LABEL_197;
          }

          v41 = v35 - v38;
          if (2 * v41 > v40)
          {
            v40 = 2 * v41;
          }

          if (v41 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v42 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            operator new();
          }

          v45 = v36 - v38;
          *v39 = v33;
          v37 = v39 + 1;
          memcpy(0, v38, v45);
          a1[7] = 0;
          a1[8] = v39 + 1;
          a1[9] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v36 = v33;
          v37 = v36 + 1;
        }

        a1[8] = v37;
        v46 = *(a1 + 5);
        if (v46 == 10)
        {
          goto LABEL_160;
        }

        if ((v46 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

        v47 = *(a1 + 103);
        if (v47 < 0)
        {
          v48 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
          if (a1[11] == (v48 - 1))
          {
            if (v48 != 0x7FFFFFFFFFFFFFF8)
            {
              v49 = *v6;
              if ((v48 - 1) >= 0x3FFFFFFFFFFFFFF3)
              {
                operator new();
              }

LABEL_76:
              operator new();
            }

            goto LABEL_201;
          }

          v51 = *v6;
          v50 = a1[11];
          a1[11] = v50 + 1;
        }

        else
        {
          if (*(a1 + 103) == 22)
          {
            goto LABEL_76;
          }

          v50 = *(a1 + 103);
          *(a1 + 103) = (v47 + 1) & 0x7F;
          v51 = a1 + 10;
        }

        v52 = &v50[v51];
        *v52 = v46;
        v52[1] = 0;
        *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
        if (a1[3])
        {
          *(a1 + 24) = 0;
          v53 = *(a1 + 5);
          if (v53 == -1)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v54 = *a1;
          if (*a1 == a1[1])
          {
            *(a1 + 5) = -1;
            goto LABEL_161;
          }

          v55 = *v54;
          LOBYTE(v53) = *v54;
          *a1 = v54 + 1;
          *(a1 + 5) = v55;
          if (v55 == -1)
          {
            goto LABEL_161;
          }
        }

        v56 = a1[8];
        v57 = a1[9];
        if (v56 >= v57)
        {
          v59 = a1[7];
          v60 = (v56 - v59);
          v61 = v56 - v59 + 1;
          if (v61 < 0)
          {
LABEL_197:
            sub_1AC060AAC();
          }

          v62 = v57 - v59;
          if (2 * v62 > v61)
          {
            v61 = 2 * v62;
          }

          if (v62 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v63 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = v61;
          }

          if (v63)
          {
            operator new();
          }

          *v60 = v53;
          v58 = v60 + 1;
          memcpy(0, v59, v56 - v59);
          a1[7] = 0;
          a1[8] = v58;
          a1[9] = 0;
          if (v59)
          {
            operator delete(v59);
          }
        }

        else
        {
          *v56 = v53;
          v58 = v56 + 1;
        }

        a1[8] = v58;
        v21 = *(a1 + 5);
        if (v21 != 10)
        {
LABEL_97:
          if ((v21 - 192) < 0xFFFFFFC0)
          {
            goto LABEL_161;
          }

LABEL_98:
          v64 = *(a1 + 103);
          if (v64 < 0)
          {
            v65 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
            if (a1[11] != (v65 - 1))
            {
              v8 = *v6;
              v7 = a1[11];
              a1[11] = v7 + 1;
              goto LABEL_7;
            }

            if (v65 != 0x7FFFFFFFFFFFFFF8)
            {
              v66 = *v6;
              if ((v65 - 1) >= 0x3FFFFFFFFFFFFFF3)
              {
                operator new();
              }

LABEL_104:
              operator new();
            }

LABEL_201:
            sub_1AC060A04();
          }

          if (*(a1 + 103) == 22)
          {
            goto LABEL_104;
          }

          v7 = *(a1 + 103);
          *(a1 + 103) = (v64 + 1) & 0x7F;
          v8 = a1 + 10;
LABEL_7:
          v9 = &v7[v8];
          *v9 = v21;
          v9[1] = 0;
          continue;
        }

LABEL_160:
        v74 = (a1[6] + 1);
        a1[5] = 0;
        a1[6] = v74;
LABEL_161:
        v22 = "invalid string: ill-formed UTF-8 byte";
LABEL_162:
        a1[13] = v22;
        return 14;
      case 237:
        std::string::push_back((a1 + 10), -19);
        sub_1AC0BBA04(a1);
        v67 = *(a1 + 5);
        if ((v67 - 160) < 0xFFFFFFE0)
        {
          goto LABEL_161;
        }

        goto LABEL_112;
      case 240:
        std::string::push_back((a1 + 10), -16);
        sub_1AC0BBA04(a1);
        v44 = *(a1 + 5);
        if ((v44 - 192) < 0xFFFFFFD0)
        {
          goto LABEL_161;
        }

        goto LABEL_111;
      case 241:
      case 242:
      case 243:
        std::string::push_back((a1 + 10), v21);
        sub_1AC0BBA04(a1);
        v44 = *(a1 + 5);
        if ((v44 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

        goto LABEL_111;
      case 244:
        std::string::push_back((a1 + 10), -12);
        sub_1AC0BBA04(a1);
        v44 = *(a1 + 5);
        if ((v44 - 144) < 0xFFFFFFF0)
        {
          goto LABEL_161;
        }

LABEL_111:
        std::string::push_back((a1 + 10), v44);
        sub_1AC0BBA04(a1);
        v67 = *(a1 + 5);
        if ((v67 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

LABEL_112:
        std::string::push_back((a1 + 10), v67);
        sub_1AC0BBA04(a1);
        if ((*(a1 + 5) - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

        v68 = *(a1 + 5);
        goto LABEL_114;
      default:
        goto LABEL_161;
    }
  }
}