@interface CSUImageCaptioningDecoderAXKVCacheE1
- (BOOL)compareTensorShapesForShape1:(const void *)a3 Shape2:(const void *)a4;
- (BOOL)loadDecoder:(id *)a3;
- (BOOL)loadDecoderObj:(id *)a3;
- (BOOL)loadResources:(id *)a3;
- (BOOL)populateInputBuffer:(id)a3 WithError:(id *)a4;
- (CSUImageCaptioningDecoderAXKVCacheE1)initWithConfiguration:(id)a3;
- (id).cxx_construct;
- (id)computeDecodedCaptionsForFeatures:(id)a3 withDecodingMethod:(int64_t)a4 runDecoderOnly:(BOOL)a5 error:(id *)a6;
- (id)getCaptionsAfterGreedyDecodingOnEncodedFeatures;
- (id)postProcessResults:(id)a3 error:(id *)a4;
@end

@implementation CSUImageCaptioningDecoderAXKVCacheE1

- (CSUImageCaptioningDecoderAXKVCacheE1)initWithConfiguration:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v28.receiver = self;
  v28.super_class = CSUImageCaptioningDecoderAXKVCacheE1;
  v10 = [(CSUImageCaptioningDecoderAXKVCacheE1 *)&v28 init];
  if (v10)
  {
    objc_msgSend_supportedComputeDevices(v5, v6, v7, v8, v9);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v11 = v25 = 0u;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v29, 16);
    if (v14)
    {
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          if (v17)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setComputeDevice_(v5, v13, v17, v18, v19, v24);

              objc_storeStrong(&v10->_configuration, a3);
              v21 = v10;
              goto LABEL_16;
            }
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v24, v29, 16);
      }

      while (v14);
    }

    v20 = sub_1AC090E50();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1AC120118(v20);
    }

    v21 = 0;
LABEL_16:
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)loadDecoderObj:(id *)a3
{
  v5 = objc_opt_new();
  decoderNetObj = self->_decoderNetObj;
  self->_decoderNetObj = v5;

  v8 = self->_decoderNetObj;
  configuration = self->_configuration;

  return MEMORY[0x1EEE66B58](v8, sel_loadDecoderNetworkfromConfiguration_error_, configuration, a3, v7);
}

- (BOOL)loadDecoder:(id *)a3
{
  if (self->_decoderNetObj)
  {
    return 1;
  }

  v18 = 0;
  PostProcUtilsWithBeamWidth_error = objc_msgSend_loadPostProcUtilsWithBeamWidth_error_(self, a2, 3, &v18, v3);
  v8 = v18;
  v12 = v8;
  if ((PostProcUtilsWithBeamWidth_error & 1) == 0)
  {
    if (!a3)
    {
      v15 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v16 = v12;
    v15 = 0;
    *a3 = v12;
    goto LABEL_11;
  }

  v17 = v8;
  DecoderObj = objc_msgSend_loadDecoderObj_(self, v9, &v17, v10, v11);
  v14 = v17;

  if ((DecoderObj & 1) == 0)
  {
    if (!a3)
    {
      v15 = 0;
      v12 = v14;
      goto LABEL_11;
    }

    v12 = v14;
    goto LABEL_10;
  }

  v15 = 1;
  v12 = v14;
LABEL_11:

  return v15;
}

- (BOOL)loadResources:(id *)a3
{
  if (self->_decoderNetObj)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_loadDecoder_(self, a2, a3, v3, v4);
  }
}

- (BOOL)compareTensorShapesForShape1:(const void *)a3 Shape2:(const void *)a4
{
  v4 = *a3;
  v5 = *(a3 + 1) - *a3;
  if (!v5)
  {
    return 1;
  }

  v6 = v5 >> 3;
  v7 = *a4;
  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (*v4 != *v7)
  {
    return 0;
  }

  v9 = 1;
  do
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    v11 = v4[v9];
    v12 = v7[v9++];
  }

  while (v11 == v12);
  return v10 >= v6;
}

- (BOOL)populateInputBuffer:(id)a3 WithError:(id *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_espressoBuffer(v4, v5, v6, v7, v8);

      LOWORD(v11) = 1;
      sub_1AC06910C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer is not an instance of CSUEspressoBuffer.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer instance is nil.");
  }

  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

- (id)computeDecodedCaptionsForFeatures:(id)a3 withDecodingMethod:(int64_t)a4 runDecoderOnly:(BOOL)a5 error:(id *)a6
{
  v9 = a3;
  if ((objc_msgSend_loadResources_(self, v10, a6, v11, v12) & 1) != 0 && objc_msgSend_populateInputBuffer_WithError_(self, v13, v9, a6, v14))
  {
    if (a4)
    {
      objc_msgSend_getCaptionsAfterBeamSearchDecodingOnEncodedFeatures(self, v15, v16, v17, v18);
    }

    else
    {
      objc_msgSend_getCaptionsAfterGreedyDecodingOnEncodedFeatures(self, v15, v16, v17, v18);
    }
    v19 = ;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)getCaptionsAfterGreedyDecodingOnEncodedFeatures
{
  v2 = sub_1AC090E50();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AC12015C(v2);
  }

  return 0;
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
  *(self + 4) = 4;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 7) = 0;
  *(self + 1) = &unk_1F20D0320;
  return self;
}

@end