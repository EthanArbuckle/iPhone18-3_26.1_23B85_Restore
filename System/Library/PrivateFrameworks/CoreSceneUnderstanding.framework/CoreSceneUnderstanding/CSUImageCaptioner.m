@interface CSUImageCaptioner
- (BOOL)loadResources:(id *)a3;
- (CSUImageCaptioner)initWithConfiguration:(id)a3;
- (id)computeCaptionForCSUBufferEmbedding:(id)a3 withDecodingMethod:(int64_t)a4 error:(id *)a5;
- (id)computeCaptionForEmbedding:(id)a3 withDecodingMethod:(int64_t)a4 error:(id *)a5;
- (id)computeCaptionForImage:(__CVBuffer *)a3 withDecodingMethod:(int64_t)a4 error:(id *)a5;
@end

@implementation CSUImageCaptioner

- (CSUImageCaptioner)initWithConfiguration:(id)a3
{
  v5 = a3;
  v38.receiver = self;
  v38.super_class = CSUImageCaptioner;
  v6 = [(CSUImageCaptioner *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    encoder = v7->_encoder;
    v7->_encoder = 0;

    v13 = objc_msgSend_captioningEncoderConfiguration(v7->_configuration, v9, v10, v11, v12);

    if (v13)
    {
      v14 = [CSUImageCaptioningEncoder alloc];
      v19 = objc_msgSend_captioningEncoderConfiguration(v5, v15, v16, v17, v18);
      v23 = objc_msgSend_initWithConfiguration_(v14, v20, v19, v21, v22);
      v24 = v7->_encoder;
      v7->_encoder = v23;
    }

    v25 = [CSUImageCaptioningDecoder alloc];
    v30 = objc_msgSend_captioningDecoderConfiguration(v5, v26, v27, v28, v29);
    v34 = objc_msgSend_initWithConfiguration_(v25, v31, v30, v32, v33);
    decoder = v7->_decoder;
    v7->_decoder = v34;

    v36 = v7;
  }

  return v7;
}

- (BOOL)loadResources:(id *)a3
{
  v7 = objc_msgSend_captioningEncoderConfiguration(self->_configuration, a2, a3, v3, v4);

  if (!v7 || (Resources = objc_msgSend_loadResources_(self->_encoder, v8, a3, v9, v10)) != 0)
  {
    decoder = self->_decoder;

    LOBYTE(Resources) = objc_msgSend_loadResources_(decoder, v8, a3, v9, v10);
  }

  return Resources;
}

- (id)computeCaptionForImage:(__CVBuffer *)a3 withDecodingMethod:(int64_t)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = sub_1AC090E50();
  v10 = os_signpost_id_generate(v9);

  v11 = sub_1AC090E50();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v25[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CSUComputeCaptionForImage", "", v25, 2u);
  }

  v25[0] = &unk_1F20D0E08;
  v25[1] = v10;
  v26 = v25;
  v16 = objc_autoreleasePoolPush();
  encoder = self->_encoder;
  if (encoder)
  {
    v19 = objc_msgSend_computeEncodedCaptioningFeaturesForImage_error_(encoder, v13, a3, a5, v15);
    if (*a5)
    {
      v20 = 0;
    }

    else
    {
      v21 = objc_msgSend_computeDecodedCaptionsForFeaturesWithCSUBuffer_withDecodingMethod_error_(self->_decoder, v18, v19, a4, a5);
      if (*a5)
      {
        v20 = 0;
      }

      else
      {
        v22 = v21;
        v20 = v21;
        v21 = v22;
      }
    }
  }

  else
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v13, @"Encoder not configured!", v14, v15);
    *a5 = v20 = 0;
  }

  objc_autoreleasePoolPop(v16);
  if (!v26)
  {
    sub_1AC066F88();
  }

  (*(*v26 + 48))(v26);
  if (v26 == v25)
  {
    (*(*v26 + 32))(v26);
  }

  else if (v26)
  {
    (*(*v26 + 40))();
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)computeCaptionForEmbedding:(id)a3 withDecodingMethod:(int64_t)a4 error:(id *)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = sub_1AC090E50();
  v10 = os_signpost_id_generate(v9);

  v11 = sub_1AC090E50();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CSUComputeCaptionForEmbeddingNSData", "", buf, 2u);
  }

  *buf = &unk_1F20D0E88;
  v50 = v10;
  v51 = buf;
  v14 = objc_autoreleasePoolPush();
  if (v8)
  {
    decoder = self->_decoder;
    v47 = 0;
    v16 = objc_msgSend_computeDecodedCaptionsForFeatures_withDecodingMethod_error_(decoder, v13, v8, a4, &v47);
    v17 = v47;
    if (!v16)
    {
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v23 = objc_msgSend_domain(v17, v19, v20, v21, v22);
      v27 = objc_msgSend_initWithString_(v18, v24, v23, v25, v26);

      v32 = objc_msgSend_code(v17, v28, v29, v30, v31);
      v33 = objc_alloc(MEMORY[0x1E695DF20]);
      v38 = objc_msgSend_userInfo(v17, v34, v35, v36, v37);
      v42 = objc_msgSend_initWithDictionary_(v33, v39, v38, v40, v41);

      goto LABEL_11;
    }
  }

  else
  {
    v17 = sub_1AC090E50();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v48 = 0;
      _os_log_impl(&dword_1AC05D000, v17, OS_LOG_TYPE_INFO, "Input to computeCaptionForEmbedding is null", v48, 2u);
    }

    v16 = 0;
  }

  v32 = 0;
  v42 = 0;
  v27 = 0;
LABEL_11:

  objc_autoreleasePoolPop(v14);
  if (v8)
  {
    if (a5 && v27)
    {
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(CSUError, v43, v27, v32, v42);
    }

    v44 = v16;
  }

  else
  {
    v44 = 0;
  }

  if (!v51)
  {
    sub_1AC066F88();
  }

  (*(*v51 + 48))(v51);
  if (v51 == buf)
  {
    (*(*v51 + 32))(v51);
  }

  else if (v51)
  {
    (*(*v51 + 40))();
  }

  v45 = *MEMORY[0x1E69E9840];

  return v44;
}

- (id)computeCaptionForCSUBufferEmbedding:(id)a3 withDecodingMethod:(int64_t)a4 error:(id *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = sub_1AC090E50();
  v10 = os_signpost_id_generate(v9);

  v11 = sub_1AC090E50();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v18[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CSUComputeCaptionForEmbeddingCSUBuffer", "", v18, 2u);
  }

  v18[0] = &unk_1F20D0F08;
  v18[1] = v10;
  v19 = v18;
  v13 = objc_autoreleasePoolPush();
  v15 = objc_msgSend_computeDecodedCaptionsForFeaturesWithCSUBuffer_withDecodingMethod_error_(self->_decoder, v14, v8, a4, a5);
  objc_autoreleasePoolPop(v13);
  if (!v19)
  {
    sub_1AC066F88();
  }

  (*(*v19 + 48))(v19);
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))();
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end