@interface CSUImageCaptioningDecoderE1
- (BOOL)compareTensorShapesForShape1:(const void *)a3 Shape2:(unint64_t)a4[5] rank:(unint64_t)a5;
- (BOOL)loadBridge:(id *)a3;
- (BOOL)loadDecoder:(id *)a3;
- (BOOL)loadResources:(id *)a3;
- (BOOL)populateInputBufferWithBridgeFeatures:(id)a3 WithError:(id *)a4;
- (BOOL)reshapeEncodedFeaturesBufferForBridgeNet:(id)a3 WithError:(id *)a4;
- (CSUImageCaptioningDecoderE1)initWithConfiguration:(id)a3;
- (id).cxx_construct;
- (id)computeDecodedCaptionsForFeatures:(id)a3 withDecodingMethod:(int64_t)a4 runDecoderOnly:(BOOL)a5 error:(id *)a6;
- (id)getBridgeLayerOutput:(id)a3 error:(id *)a4;
- (id)getCaptionsAfterGreedyDecodingOnEncodedFeatures;
- (id)postProcessResults:(id)a3 error:(id *)a4;
- (vector<float,)nextTokensForInputs:(CSUImageCaptioningDecoderE1 *)self AndforMaskPosition:(SEL)a3;
@end

@implementation CSUImageCaptioningDecoderE1

- (CSUImageCaptioningDecoderE1)initWithConfiguration:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v32.receiver = self;
  v32.super_class = CSUImageCaptioningDecoderE1;
  v10 = [(CSUImageCaptioningDecoderE1 *)&v32 init];
  if (v10)
  {
    if (objc_msgSend_revision(v5, v6, v7, v8, v9) != 1)
    {
LABEL_17:
      objc_storeStrong(&v10->_configuration, a3);
      v25 = v10;
      goto LABEL_18;
    }

    objc_msgSend_supportedComputeDevices(v5, v11, v12, v13, v14);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v15 = v29 = 0u;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v28, v33, 16);
    if (v18)
    {
      v19 = *v29;
      do
      {
        v20 = 0;
        do
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v28 + 1) + 8 * v20);
          if (v21)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setComputeDevice_(v5, v17, v21, v22, v23, v28);

              goto LABEL_17;
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v28, v33, 16);
      }

      while (v18);
    }

    v24 = sub_1AC090E50();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1AC120118(v24);
    }
  }

  v25 = 0;
LABEL_18:

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)loadBridge:(id *)a3
{
  v6 = objc_msgSend_bridgeNetworkPath(self->_configuration, a2, a3, v3, v4);

  if (v6 && !self->_bridgeNet.__ptr_)
  {
    v12 = objc_msgSend_bridgeNetworkPath(self->_configuration, v7, v8, v9, v10);
    objc_msgSend_UTF8String(v12, v13, v14, v15, v16);
    objc_msgSend_espressoExecutionEngine(self->_configuration, v17, v18, v19, v20);
    sub_1AC063040();
  }

  return 1;
}

- (BOOL)loadDecoder:(id *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  if (self->_decoderNet.__ptr_)
  {
    result = 1;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (objc_msgSend_loadPostProcUtilsWithBeamWidth_error_(self, a2, 3, a3, v3))
    {
      v11 = objc_msgSend_decoderNetworkPath(self->_configuration, v7, v8, v9, v10);
      v38 = objc_msgSend_UTF8String(v11, v12, v13, v14, v15);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = objc_msgSend_espressoExecutionEngine(self->_configuration, v16, v17, v18, v19);
      v25 = 1;
      v26 = 0;
      v27 = 0;
      v28 = 0xFFFFFFFFLL;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *v33 = 0u;
      *v34 = 0u;
      v35 = 1065353216;
      v37 = 0;
      LOBYTE(__p) = 0;
      sub_1AC063040();
    }

    result = 0;
    v20 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (BOOL)loadResources:(id *)a3
{
  if (!self->_decoderNet.__ptr_)
  {
    Decoder = objc_msgSend_loadDecoder_(self, a2, a3, v3, v4);
    v18 = objc_msgSend_bridgeNetworkPath(self->_configuration, v14, v15, v16, v17);

    if (v18)
    {
      goto LABEL_3;
    }

    return Decoder;
  }

  Decoder = 1;
  v8 = objc_msgSend_bridgeNetworkPath(self->_configuration, a2, a3, v3, v4);

  if (!v8)
  {
    return Decoder;
  }

LABEL_3:
  ptr = self->_bridgeNet.__ptr_;
  result = (ptr != 0) & Decoder;
  if (!ptr && ((Decoder ^ 1) & 1) == 0)
  {

    return objc_msgSend_loadBridge_(self, v9, a3, v10, v11);
  }

  return result;
}

- (BOOL)compareTensorShapesForShape1:(const void *)a3 Shape2:(unint64_t)a4[5] rank:(unint64_t)a5
{
  if (!a5)
  {
    return 1;
  }

  v5 = *a3 - 8 * a5;
  if (*(v5 + 32) != *a4)
  {
    return 0;
  }

  v6 = (v5 + 40);
  v7 = 1;
  do
  {
    v8 = v7;
    if (a5 == v7)
    {
      break;
    }

    v9 = *v6++;
    v10 = a4[v7++];
  }

  while (v9 == v10);
  return v8 >= a5;
}

- (vector<float,)nextTokensForInputs:(CSUImageCaptioningDecoderE1 *)self AndforMaskPosition:(SEL)a3
{
  v99 = *MEMORY[0x1E69E9840];
  begin = self->_inputTokens.shape_.sizes_.__begin_;
  end = self->_inputTokens.shape_.sizes_.__end_;
  if (begin == end)
  {
    goto LABEL_11;
  }

  v11 = end - begin - 8;
  if (v11 < 0x38)
  {
    v12 = 1;
    v13 = self->_inputTokens.shape_.sizes_.__begin_;
    do
    {
LABEL_7:
      v24 = *v13++;
      v12 *= v24;
    }

    while (v13 != end);
    goto LABEL_8;
  }

  v14 = (v11 >> 3) + 1;
  v13 = &begin[v14 & 0x3FFFFFFFFFFFFFF8];
  v15 = (begin + 4);
  v16.i64[0] = 0x100000001;
  v16.i64[1] = 0x100000001;
  v17 = v14 & 0x3FFFFFFFFFFFFFF8;
  v18.i64[0] = 0x100000001;
  v18.i64[1] = 0x100000001;
  do
  {
    v20 = v15[-2];
    v19 = v15[-1];
    v22 = *v15;
    v21 = v15[1];
    v15 += 4;
    v16 = vmulq_s32(v16, vuzp1q_s32(v20, v19));
    v18 = vmulq_s32(v18, vuzp1q_s32(v22, v21));
    v17 -= 8;
  }

  while (v17);
  v23 = vmulq_s32(v18, v16);
  *v23.i8 = vmul_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
  v12 = v23.i32[0] * v23.i32[1];
  if (v14 != (v14 & 0x3FFFFFFFFFFFFFF8))
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v12)
  {
    if ((v12 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

LABEL_11:
  v25 = *a4;
  v26 = *(a4 + 1);
  v27 = v26 - *a4;
  if (v26 != *a4)
  {
    memmove(0, v25, v27);
  }

  if (self->_inputTokens.type_ != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  (*(*self->_inputTokens.storage_.__ptr_ + 24))(self->_inputTokens.storage_.__ptr_, v25, v27);
  v79 = a5;
  ptr = self->_decoderNet.__ptr_;
  v33 = objc_msgSend_inputEncodedFeaturesTensorName(self->_configuration, v29, v30, v31, v32);
  v34 = v33;
  v39 = objc_msgSend_UTF8String(v34, v35, v36, v37, v38);
  v40 = strlen(v39);
  if (v40 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AC060A04();
  }

  v41 = v40;
  if (v40 >= 0x17)
  {
    operator new();
  }

  v83 = v40;
  if (v40)
  {
    memmove(&__dst, v39, v40);
  }

  *(&__dst + v41) = 0;
  sub_1AC072D54(&v87, &__dst, &self->_encodedFeaturesBuffer);
  v46 = objc_msgSend_inputWordIdsTensorName(self->_configuration, v42, v43, v44, v45);
  v47 = v46;
  v52 = objc_msgSend_UTF8String(v46, v48, v49, v50, v51);
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

  v81 = v53;
  if (v53)
  {
    memmove(v80, v52, v53);
  }

  *(v80 + v54) = 0;
  sub_1AC072D54(v93, v80, &self->_inputTokens);
  memset(v84, 0, sizeof(v84));
  v85 = 1065353216;
  sub_1AC06C114(v84, &v87);
  sub_1AC06C114(v84, v93);
  sub_1AC0669EC(ptr, v84, v86);
  sub_1AC066D78(v84);
  v95 = &unk_1F20D01C0;
  v55 = v98;
  if (v98 && !atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v55->__on_zero_shared)(v55);
    std::__shared_weak_count::__release_weak(v55);
  }

  if (__p)
  {
    v97 = __p;
    operator delete(__p);
  }

  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  v89 = &unk_1F20D01C0;
  v56 = v92;
  if (v92 && !atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v88 < 0)
  {
    operator delete(v87);
    if ((v81 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((v81 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(v80[0]);
LABEL_40:

  if (v83 < 0)
  {
    operator delete(__dst);
  }

  v61 = objc_msgSend_outputWordProbsTensorName(self->_configuration, v57, v58, v59, v60);
  v62 = v61;
  v67 = objc_msgSend_UTF8String(v61, v63, v64, v65, v66);
  v68 = strlen(v67);
  if (v68 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AC060A04();
  }

  v69 = v68;
  if (v68 >= 0x17)
  {
    operator new();
  }

  v88 = v68;
  if (v68)
  {
    memmove(&v87, v67, v68);
  }

  *(&v87 + v69) = 0;
  v70 = sub_1AC0686D0(v86, &v87);
  if (!v70)
  {
    sub_1AC0672B0("unordered_map::at: key not found");
  }

  v71 = v70[10];
  if (v88 < 0)
  {
    operator delete(v87);
  }

  v72 = v71[1];
  v73 = v71[11];
  v74 = 4 * v79 * v73;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v75 = 4 * (v79 + 1) * v73;
  retstr->__begin_ = 0;
  if (v75 != v74)
  {
    if (((v75 - v74) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  result = sub_1AC066D78(v86);
  v77 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)populateInputBufferWithBridgeFeatures:(id)a3 WithError:(id *)a4
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1AC0C1F64(a3);
  LOWORD(v5) = 1;
  sub_1AC06910C();
}

- (BOOL)reshapeEncodedFeaturesBufferForBridgeNet:(id)a3 WithError:(id *)a4
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1AC0C1F64(a3);
  LOWORD(v5) = 1;
  sub_1AC06910C();
}

- (id)getBridgeLayerOutput:(id)a3 error:(id *)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((objc_msgSend_loadBridge_(self, v7, a4, v8, v9) & 1) != 0 && objc_msgSend_reshapeEncodedFeaturesBufferForBridgeNet_WithError_(self, v10, v6, a4, v11))
  {
    ptr = self->_bridgeNet.__ptr_;
    v17 = objc_msgSend_inputEncodedFeaturesTensorNameOfBridge(self->_configuration, v12, v13, v14, v15);
    v18 = v17;
    v53 = objc_msgSend_UTF8String(v18, v19, v20, v21, v22);
    sub_1AC0C01E8(v58, &v53, &self->_bridgeInputBuffer);
    __dst = 0u;
    v55 = 0u;
    v56 = 1065353216;
    sub_1AC06C114(&__dst, v58);
    sub_1AC0669EC(ptr, &__dst, v57);
    sub_1AC066D78(&__dst);
    *(&v59 + 1) = &unk_1F20D01C0;
    v23 = *(&v62 + 1);
    if (*(&v62 + 1) && !atomic_fetch_add((*(&v62 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    if (*(&v60 + 1))
    {
      *&v61 = *(&v60 + 1);
      operator delete(*(&v60 + 1));
    }

    if (SBYTE7(v59) < 0)
    {
      operator delete(v58[0]);
    }

    v28 = objc_msgSend_outputTensorNameOfBridge(self->_configuration, v24, v25, v26, v27);
    v29 = v28;
    v34 = objc_msgSend_UTF8String(v28, v30, v31, v32, v33);
    v35 = strlen(v34);
    if (v35 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AC060A04();
    }

    v36 = v35;
    if (v35 >= 0x17)
    {
      operator new();
    }

    BYTE7(v55) = v35;
    if (v35)
    {
      memmove(&__dst, v34, v35);
    }

    *(&__dst + v36) = 0;
    v38 = sub_1AC0686D0(v57, &__dst);
    if (!v38)
    {
      sub_1AC0672B0("unordered_map::at: key not found");
    }

    v42 = v38[10];
    v43 = *(v42 + 5);
    v44 = *(v42 + 3);
    *v58 = *(v42 + 1);
    v59 = v44;
    v60 = v43;
    v45 = *(v42 + 11);
    v46 = *(v42 + 13);
    v47 = *(v42 + 9);
    v61 = *(v42 + 7);
    v62 = v47;
    v48 = *(v42 + 15);
    v49 = *(v42 + 17);
    v50 = *(v42 + 19);
    v68 = v42[21];
    v66 = v49;
    v67 = v50;
    v64 = v46;
    v65 = v48;
    v63 = v45;
    v37 = objc_msgSend_fromEspressoBuffer_(CSUEspressoBuffer, v39, v58, v40, v41);
    if (SBYTE7(v55) < 0)
    {
      operator delete(__dst);
    }

    sub_1AC066D78(v57);
  }

  else
  {
    v37 = 0;
  }

  v51 = *MEMORY[0x1E69E9840];

  return v37;
}

- (id)computeDecodedCaptionsForFeatures:(id)a3 withDecodingMethod:(int64_t)a4 runDecoderOnly:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  if ((objc_msgSend_loadResources_(self, v11, a6, v12, v13) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (self->_bridgeNet.__ptr_ && !a5)
  {
    v18 = objc_msgSend_getBridgeLayerOutput_error_(self, v14, v10, a6, v15);
    if (!v18)
    {
      goto LABEL_6;
    }

    v19 = objc_msgSend_populateInputBufferWithBridgeFeatures_WithError_(self, v16, v18, a6, v17);

    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    if (a4)
    {
      objc_msgSend_getCaptionsAfterBeamSearchDecodingOnEncodedFeatures(self, v20, v21, v22, v23);
    }

    else
    {
      objc_msgSend_getCaptionsAfterGreedyDecodingOnEncodedFeatures(self, v20, v21, v22, v23);
    }
    v24 = ;
    goto LABEL_12;
  }

  if (objc_msgSend_populateInputBufferWithBridgeFeatures_WithError_(self, v14, v10, a6, v15))
  {
    goto LABEL_8;
  }

LABEL_6:
  v24 = 0;
LABEL_12:

  return v24;
}

- (id)getCaptionsAfterGreedyDecodingOnEncodedFeatures
{
  v205 = *MEMORY[0x1E69E9840];
  begin = self->_inputTokens.shape_.sizes_.__begin_;
  end = self->_inputTokens.shape_.sizes_.__end_;
  if (begin != end)
  {
    v5 = end - begin - 8;
    if (v5 >= 0x38)
    {
      v8 = (v5 >> 3) + 1;
      v7 = &begin[v8 & 0x3FFFFFFFFFFFFFF8];
      v9 = (begin + 4);
      v10.i64[0] = 0x100000001;
      v10.i64[1] = 0x100000001;
      v11 = v8 & 0x3FFFFFFFFFFFFFF8;
      v12.i64[0] = 0x100000001;
      v12.i64[1] = 0x100000001;
      do
      {
        v14 = v9[-2];
        v13 = v9[-1];
        v16 = *v9;
        v15 = v9[1];
        v9 += 4;
        v10 = vmulq_s32(v10, vuzp1q_s32(v14, v13));
        v12 = vmulq_s32(v12, vuzp1q_s32(v16, v15));
        v11 -= 8;
      }

      while (v11);
      v17 = vmulq_s32(v12, v10);
      *v17.i8 = vmul_s32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
      v6 = v17.i32[0] * v17.i32[1];
      if (v8 == (v8 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = 1;
      v7 = self->_inputTokens.shape_.sizes_.__begin_;
    }

    do
    {
      v18 = *v7++;
      v6 *= v18;
    }

    while (v7 != end);
LABEL_9:
    v180 = v6;
    goto LABEL_10;
  }

  v180 = 0;
LABEL_10:
  if (self->_inputTokens.type_ != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v178 = (*(*self->_inputTokens.storage_.__ptr_ + 24))(self->_inputTokens.storage_.__ptr_, a2);
  v23 = 0.0;
  if (!v180)
  {
    v181 = 0;
    v182 = 0;
    v119 = 0;
    goto LABEL_97;
  }

  v181 = 0;
  v182 = 0;
  v24 = 0;
  v179 = 0;
  do
  {
    ptr = self->_decoderNet.__ptr_;
    v26 = objc_msgSend_inputEncodedFeaturesTensorName(self->_configuration, v19, v20, v21, v22, v178);
    v27 = v26;
    v32 = objc_msgSend_UTF8String(v26, v28, v29, v30, v31);
    v33 = strlen(v32);
    if (v33 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v34 = v33;
    if (v33 >= 0x17)
    {
      operator new();
    }

    v188 = v33;
    if (v33)
    {
      memmove(&__dst, v32, v33);
    }

    *(&__dst + v34) = 0;
    sub_1AC072D54(v194, &__dst, &self->_encodedFeaturesBuffer);
    v39 = objc_msgSend_inputWordIdsTensorName(self->_configuration, v35, v36, v37, v38);
    v40 = v39;
    v45 = objc_msgSend_UTF8String(v39, v41, v42, v43, v44);
    v46 = strlen(v45);
    if (v46 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v47 = v46;
    if (v46 >= 0x17)
    {
      operator new();
    }

    v186 = v46;
    if (v46)
    {
      memmove(v185, v45, v46);
    }

    *(v185 + v47) = 0;
    sub_1AC072D54(&v199, v185, &self->_inputTokens);
    *v189 = 0u;
    v190 = 0u;
    v191 = 1065353216;
    sub_1AC06C114(v189, v194);
    sub_1AC06C114(v189, &v199);
    sub_1AC0669EC(ptr, v189, &v192);
    sub_1AC066D78(v189);
    *(&v200 + 1) = &unk_1F20D01C0;
    v48 = *(&v203 + 1);
    if (!*(&v203 + 1) || atomic_fetch_add((*(&v203 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v49 = *(&v201 + 1);
      if (!*(&v201 + 1))
      {
        goto LABEL_29;
      }

LABEL_28:
      *&v202 = v49;
      operator delete(v49);
      goto LABEL_29;
    }

    (v48->__on_zero_shared)(v48);
    std::__shared_weak_count::__release_weak(v48);
    v49 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
      goto LABEL_28;
    }

LABEL_29:
    if (SBYTE7(v200) < 0)
    {
      operator delete(v199);
      *(&v195 + 1) = &unk_1F20D01C0;
      v50 = *(&v198 + 1);
      if (!*(&v198 + 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      *(&v195 + 1) = &unk_1F20D01C0;
      v50 = *(&v198 + 1);
      if (!*(&v198 + 1))
      {
        goto LABEL_34;
      }
    }

    if (atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_34:
      v51 = *(&v196 + 1);
      if (!*(&v196 + 1))
      {
        goto LABEL_36;
      }

LABEL_35:
      *&v197 = v51;
      operator delete(v51);
      goto LABEL_36;
    }

    (v50->__on_zero_shared)(v50);
    std::__shared_weak_count::__release_weak(v50);
    v51 = *(&v196 + 1);
    if (*(&v196 + 1))
    {
      goto LABEL_35;
    }

LABEL_36:
    if (SBYTE7(v195) < 0)
    {
      operator delete(v194[0]);
      if ((v186 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((v186 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    operator delete(v185[0]);
LABEL_38:

    if (v188 < 0)
    {
      operator delete(__dst);
    }

    v56 = objc_msgSend_outputWordProbsTensorName(self->_configuration, v52, v53, v54, v55);
    v57 = v56;
    if (!v56)
    {
LABEL_60:
      v76 = 0;
      goto LABEL_66;
    }

    v58 = v56;
    v63 = objc_msgSend_UTF8String(v57, v59, v60, v61, v62);
    v64 = strlen(v63);
    if (v64 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v65 = v64;
    if (v64 >= 0x17)
    {
      operator new();
    }

    BYTE7(v195) = v64;
    if (v64)
    {
      memmove(v194, v63, v64);
    }

    *(v194 + v65) = 0;
    v66 = sub_1AC0686D0(&v192, v194);
    if (SBYTE7(v195) < 0)
    {
      v75 = v66;
      operator delete(v194[0]);
      if (!v75)
      {
        goto LABEL_60;
      }
    }

    else if (!v66)
    {
      goto LABEL_60;
    }

    v67 = v57;
    v72 = objc_msgSend_UTF8String(v57, v68, v69, v70, v71);
    v73 = strlen(v72);
    if (v73 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v74 = v73;
    if (v73 >= 0x17)
    {
      operator new();
    }

    BYTE7(v190) = v73;
    if (v73)
    {
      memmove(v189, v72, v73);
    }

    *(v189 + v74) = 0;
    v77 = sub_1AC0686D0(&v192, v189);
    if (!v77)
    {
      sub_1AC0672B0("unordered_map::at: key not found");
    }

    v81 = v77[10];
    v82 = *(v81 + 5);
    v83 = *(v81 + 3);
    *v194 = *(v81 + 1);
    v195 = v83;
    v196 = v82;
    v84 = *(v81 + 11);
    v85 = *(v81 + 13);
    v86 = *(v81 + 9);
    v197 = *(v81 + 7);
    v198 = v86;
    v87 = *(v81 + 15);
    v88 = *(v81 + 17);
    v89 = *(v81 + 19);
    v204 = v81[21];
    v202 = v88;
    v203 = v89;
    v200 = v85;
    v201 = v87;
    v199 = v84;
    v76 = objc_msgSend_fromEspressoBuffer_(CSUEspressoBuffer, v78, v194, v79, v80);
    if (SBYTE7(v190) < 0)
    {
      operator delete(v189[0]);
    }

LABEL_66:

    v94 = objc_msgSend_configuration(self, v90, v91, v92, v93);
    v99 = objc_msgSend_saveDecoderFeatures(v94, v95, v96, v97, v98);

    if (v99)
    {
      v182 = v76;
    }

    else
    {
      v182 = 0;
    }

    v100 = sub_1AC0C1F64(v76);
    v101 = v100[10];
    v102 = v101 * v24++;
    if (v102 == v101 * v24)
    {
      goto LABEL_94;
    }

    v103 = (*v100 + 4 * v102);
    v104 = v103 + 1;
    if (v103 + 1 == (*v100 + 4 * v101 * v24))
    {
      goto LABEL_94;
    }

    v105 = *v103;
    v106 = 4 * v101 - 4;
    v107 = v103;
    v108 = v103 + 1;
    do
    {
      v109 = *v108++;
      v110 = v109;
      if (v105 < v109)
      {
        v105 = v110;
        v107 = v104;
      }

      v104 = v108;
      v106 -= 4;
    }

    while (v106);
    v111 = v107 - v103;
    if (!v111)
    {
LABEL_94:

      sub_1AC066D78(&v192);
      v117 = v181;
      if (!v181)
      {
        goto LABEL_95;
      }

      goto LABEL_88;
    }

    if (v24 < v180)
    {
      *(v178 + 4 * v24) = (v111 >> 2);
    }

    v112 = v179;
    v113 = v179 >> 2;
    if (((v179 >> 2) + 1) >> 62)
    {
      sub_1AC060AAC();
    }

    if (v179 >> 2 != -1)
    {
      if (!(((v179 >> 2) + 1) >> 62))
      {
        operator new();
      }

      sub_1AC066FD4();
    }

    *(4 * v113) = v111 >> 2;
    v179 = 4 * v113 + 4;
    memcpy(0, 0, v112);
    v114 = *v107;
    v115 = v181;
    v116 = v181 >> 2;
    if (((v181 >> 2) + 1) >> 62)
    {
      sub_1AC060AAC();
    }

    if (v181 >> 2 != -1)
    {
      if (!(((v181 >> 2) + 1) >> 62))
      {
        operator new();
      }

      sub_1AC066FD4();
    }

    *(4 * v116) = v114;
    v181 = 4 * v116 + 4;
    memcpy(0, 0, v115);

    sub_1AC066D78(&v192);
  }

  while (v24 != v180);
  v117 = 4 * v116 + 4;
  if (4 * v116 == -4)
  {
LABEL_95:
    v119 = v179;
    goto LABEL_97;
  }

LABEL_88:
  v23 = 0.0;
  v118 = 0;
  v119 = v179;
  if ((v117 - 4) < 0x1C)
  {
    goto LABEL_137;
  }

  v120 = ((v117 - 4) >> 2) + 1;
  v118 = (4 * (v120 & 0x7FFFFFFFFFFFFFF8));
  v121 = 16;
  v122 = v120 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v123 = *(v121 - 16);
    v124 = vcvt_hight_f64_f32(v123);
    v125 = vcvtq_f64_f32(*v123.f32);
    v126 = vcvt_hight_f64_f32(*v121);
    v127 = vcvtq_f64_f32(*v121);
    v23 = v23 + v125.f64[0] + v125.f64[1] + v124.f64[0] + v124.f64[1] + v127.f64[0] + v127.f64[1] + v126.f64[0] + v126.f64[1];
    v121 += 32;
    v122 -= 8;
  }

  while (v122);
  if (v120 != (v120 & 0x7FFFFFFFFFFFFFF8))
  {
LABEL_137:
    do
    {
      v128 = *v118++;
      v23 = v23 + v128;
    }

    while (v118 != v117);
  }

LABEL_97:
  v133 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v178);
  if (v119)
  {
    v134 = v119;
    for (i = 0; i != v134; ++i)
    {
      if (!*i)
      {
        break;
      }

      procUtils = self->_procUtils;
      if (procUtils)
      {
        objc_msgSend_vocabulary(procUtils, v129, v130, v131, v132);
        procUtils = v194[0];
      }

      else
      {
        v194[0] = 0;
        v194[1] = 0;
      }

      (*(procUtils->super.isa + 5))(&v183);
      if (v184 < 0)
      {
        operator delete(v183);
        v141 = v194[1];
        if (!v194[1])
        {
          goto LABEL_109;
        }
      }

      else
      {
        v141 = v194[1];
        if (!v194[1])
        {
          goto LABEL_109;
        }
      }

      if (atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_109:
        v142 = MEMORY[0x1E696AEC0];
        v143 = self->_procUtils;
        if (v143)
        {
          goto LABEL_110;
        }

        goto LABEL_112;
      }

      (v141->__on_zero_shared)(v141);
      std::__shared_weak_count::__release_weak(v141);
      v142 = MEMORY[0x1E696AEC0];
      v143 = self->_procUtils;
      if (v143)
      {
LABEL_110:
        objc_msgSend_vocabulary(v143, v137, v138, v139, v140);
        v143 = v192;
        goto LABEL_113;
      }

LABEL_112:
      v192 = 0;
      v193 = 0;
LABEL_113:
      (*(v143->super.isa + 5))(v194);
      if ((SBYTE7(v195) & 0x80u) == 0)
      {
        objc_msgSend_stringWithUTF8String_(v142, v144, v194, v145, v146);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v142, v144, v194[0], v145, v146);
      }
      v147 = ;
      objc_msgSend_addObject_(v133, v148, v147, v149, v150);

      if (SBYTE7(v195) < 0)
      {
        operator delete(v194[0]);
        v151 = v193;
        if (v193)
        {
LABEL_120:
          if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v151->__on_zero_shared)(v151);
            std::__shared_weak_count::__release_weak(v151);
          }
        }
      }

      else
      {
        v151 = v193;
        if (v193)
        {
          goto LABEL_120;
        }
      }
    }
  }

  v152 = objc_msgSend_componentsJoinedByString_(v133, v129, @" ", v131, v132);
  v153 = [CSUCaptionResult alloc];
  v154 = v23 / (v181 >> 2);
  *&v154 = v154;
  v158 = objc_msgSend_initWithCaption_score_(v153, v155, v152, v156, v157, v154);
  v159 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_msgSend_addObject_(v159, v160, v158, v161, v162);
  v166 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v163, v159, v164, v165);
  v170 = objc_msgSend_createCaptionResultsWithResults_(CSUCaptionResults, v167, v166, v168, v169);

  objc_msgSend_setDecoderFeaturesCSUBuffer_(v170, v171, v182, v172, v173);
  v174 = v170;

  v175 = *MEMORY[0x1E69E9840];

  return v174;
}

- (id)postProcessResults:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = objc_msgSend_postProcessingHandler(self->_procUtils, v7, v8, v9, v10);

  if (v11)
  {
    v16 = objc_msgSend_postProcessingHandler(self->_procUtils, v12, v13, v14, v15);
    v21 = objc_msgSend_genderOptionForBeamSearch(self->_procUtils, v17, v18, v19, v20);
    v23 = objc_msgSend_postProcessResults_genderOption_error_(v16, v22, v6, v21, a4);
  }

  else
  {
    v24 = sub_1AC090E50();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_1AC1201A0(v24);
    }

    v23 = v6;
  }

  return v23;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 8) = 4;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 3) = &unk_1F20D0320;
  *(self + 22) = 4;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 9) = 0;
  *(self + 10) = &unk_1F20D0320;
  *(self + 36) = 4;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 23) = 0;
  *(self + 16) = 0;
  *(self + 17) = &unk_1F20D0320;
  return self;
}

@end