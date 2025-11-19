@interface VCPTextEncoder
+ (id)convertToCSEmbedding:(id)a3 isFP16:(BOOL)a4;
+ (id)sharedModel:(id)a3 identifier:(id)a4 outputNames:(id)a5 inputNames:(id)a6 functionName:(id)a7;
- (VCPTextEncoder)init;
- (id)textEmbeddingForQuery:(id)a3 useFP16:(BOOL)a4;
- (void)dealloc;
@end

@implementation VCPTextEncoder

+ (id)sharedModel:(id)a3 identifier:(id)a4 outputNames:(id)a5 inputNames:(id)a6 functionName:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[VCPSharedInstanceManager sharedManager];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__VCPTextEncoder_sharedModel_identifier_outputNames_inputNames_functionName___block_invoke;
  v23[3] = &unk_1E834CE00;
  v17 = v11;
  v24 = v17;
  v18 = v13;
  v25 = v18;
  v19 = v14;
  v26 = v19;
  v20 = v15;
  v27 = v20;
  v21 = [v16 sharedInstanceWithIdentifier:v12 andCreationBlock:v23];

  return v21;
}

VCPCNNModelEspressoV2 *__77__VCPTextEncoder_sharedModel_identifier_outputNames_inputNames_functionName___block_invoke(void *a1)
{
  v1 = [[VCPCNNModelEspressoV2 alloc] initWithParameters:a1[4] outputNames:a1[5] inputNames:a1[6] functionName:a1[7]];

  return v1;
}

- (VCPTextEncoder)init
{
  v41 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = VCPTextEncoder;
  v2 = [(VCPTextEncoder *)&v38 init];
  if (!v2)
  {
    goto LABEL_36;
  }

  if ([objc_opt_class() useCSULanguageEncoder])
  {
    if (+[VCPVideoTransformerBackbone revision]== 5)
    {
      v3 = 9;
    }

    else if (+[VCPVideoTransformerBackbone revision]== 6)
    {
      v3 = 10;
    }

    else if (+[VCPVideoTransformerBackbone revision]== 7)
    {
      v3 = 11;
    }

    else
    {
      v3 = 8;
    }

    v37 = 0;
    v27 = [MEMORY[0x1E6999168] createForRevision:v3 error:&v37];
    v28 = v37;
    if (v27)
    {
      v29 = [objc_alloc(MEMORY[0x1E6999160]) initWithConfiguration:v27];
      csuTextEncoder = v2->_csuTextEncoder;
      v2->_csuTextEncoder = v29;

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Use CSUSystemSearchTextEncoderV1 as text encoder", buf, 2u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v31 = [v28 description];
      *buf = 138412290;
      v40 = v31;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Failed to create encoder config (%@)", buf, 0xCu);
    }

    v26 = 0;
    goto LABEL_33;
  }

  v4 = +[VCPVideoTransformerBackbone revision];
  if (v4 == 5)
  {
    v5 = @"md5_token_embed.bundle";
  }

  else
  {
    v5 = @"md4_token_embed.bundle";
  }

  v6 = MEMORY[0x1E696AEC0];
  if (v4 == 5)
  {
    v7 = @"md5_text_model.bundle";
  }

  else
  {
    v7 = @"md4_text_model.bundle";
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{+[VCPVideoTransformerBackbone revision](VCPVideoTransformerBackbone, "revision")}];
  v9 = [v8 stringValue];
  v10 = [v6 stringWithFormat:@"%@_%@", @"token_model", v9];

  v11 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v12 = [v11 resourceURL];

  v13 = [MEMORY[0x1E695DFF8] URLWithString:v5 relativeToURL:v12];
  v14 = [objc_opt_class() sharedModel:v13 identifier:v10 outputNames:&unk_1F49BE8A8 inputNames:&unk_1F49BE8C0 functionName:@"main"];
  tokenModel = v2->_tokenModel;
  v2->_tokenModel = v14;

  if (v2->_tokenModel)
  {
    v16 = [MEMORY[0x1E695DFF8] URLWithString:v7 relativeToURL:v12];

    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{+[VCPVideoTransformerBackbone revision](VCPVideoTransformerBackbone, "revision")}];
    v19 = [v18 stringValue];
    v20 = [v17 stringWithFormat:@"%@_%@", @"text_model", v19];

    v21 = [objc_opt_class() sharedModel:v16 identifier:v20 outputNames:&unk_1F49BE8D8 inputNames:&unk_1F49BE8F0 functionName:@"main"];
    textModel = v2->_textModel;
    v2->_textModel = v21;

    if (v2->_textModel)
    {
      v23 = objc_alloc_init(VCPTextTokenizerT5);
      textTokenizer = v2->_textTokenizer;
      v2->_textTokenizer = &v23->super;

      v25 = v2->_textTokenizer != 0;
      if (v2->_textTokenizer)
      {
        v26 = 0;
      }

      else
      {
        v26 = -108;
      }
    }

    else
    {
      v25 = 0;
      v26 = -18;
    }

    v10 = v20;
    v13 = v16;
  }

  else
  {
    v25 = 0;
    v26 = -108;
  }

  if (v25)
  {
LABEL_33:
    v2->_embeddingDim = 512;
    v32 = dispatch_queue_create("com.apple.mediaanalysisd.textencoder", 0);
    embeddingGenerationQueue = v2->_embeddingGenerationQueue;
    v2->_embeddingGenerationQueue = v32;
  }

  if (!v26)
  {
LABEL_36:
    v34 = v2;
    goto LABEL_37;
  }

  v34 = 0;
LABEL_37:
  v35 = v34;

  return v35;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VCPTextEncoder;
  [(VCPTextEncoder *)&v2 dealloc];
}

+ (id)convertToCSEmbedding:(id)a3 isFP16:(BOOL)a4
{
  v4 = a4;
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v4)
  {
    goto LABEL_18;
  }

  if ([v5 length] == 1024)
  {
    v7 = _os_feature_enabled_impl();
    v8 = objc_alloc(MEMORY[0x1E6964EE8]);
    v18[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    if (v7)
    {
      v10 = 9;
    }

    else
    {
      v10 = 7;
    }

    v11 = [v8 initWithFormat:1 dimension:1 version:v10 vectors:v9];

    goto LABEL_13;
  }

  if ([v6 length] == 1536)
  {
    v12 = objc_alloc(MEMORY[0x1E6964EE8]);
    v17 = v6;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v11 = [v12 initWithFormat:1 dimension:2 version:2 vectors:v13];
  }

  else
  {
LABEL_18:
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = [v6 length];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unexpected embedding size %lu", &v15, 0xCu);
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (id)textEmbeddingForQuery:(id)a3 useFP16:(BOOL)a4
{
  v67 = a4;
  v89 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = __Block_byref_object_copy__6;
  v85 = __Block_byref_object_dispose__6;
  v86 = 0;
  if (self->_csuTextEncoder)
  {
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = __Block_byref_object_copy__6;
    v79 = __Block_byref_object_dispose__6;
    v80 = 0;
    embeddingGenerationQueue = self->_embeddingGenerationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__VCPTextEncoder_textEmbeddingForQuery_useFP16___block_invoke;
    block[3] = &unk_1E834CE28;
    block[4] = self;
    v73 = v5;
    v74 = &v75;
    dispatch_sync(embeddingGenerationQueue, block);
    if (v76[5])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = [v76[5] description];
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Text encoding failed (%@)", buf, 0xCu);
      }

      v9 = -18;
      v10 = 6;
      goto LABEL_24;
    }

    v22 = [(CSUTextEncoder *)self->_csuTextEncoder inferenceOutputs];
    v23 = [v22 CSUTextEmbedding];
    if ([v23 dataType] == 65552)
    {
      v24 = [(CSUTextEncoder *)self->_csuTextEncoder inferenceOutputs];
      v25 = [v24 CSUTextEmbedding];
      v26 = [v25 count] == self->_embeddingDim;

      if (v26)
      {
        v27 = [(CSUTextEncoder *)self->_csuTextEncoder inferenceOutputs];
        v28 = [v27 CSUTextEmbedding];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __48__VCPTextEncoder_textEmbeddingForQuery_useFP16___block_invoke_257;
        v71[3] = &unk_1E834CE50;
        v71[4] = &v81;
        [v28 getBytesWithHandler:v71];

        if (!v67)
        {
          v29 = MediaAnalysisConvertFloat16ToFloat32(v82[5]);
          v30 = v82[5];
          v82[5] = v29;
        }

        v10 = 0;
        v9 = 0;
        goto LABEL_24;
      }
    }

    else
    {
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = [(CSUTextEncoder *)self->_csuTextEncoder inferenceOutputs];
      v35 = [v34 CSUTextEmbedding];
      v36 = [v35 dataType];
      v37 = [(CSUTextEncoder *)self->_csuTextEncoder inferenceOutputs];
      v38 = [v37 CSUTextEmbedding];
      v39 = [v38 count];
      *buf = 67109376;
      *&buf[4] = v36;
      *&buf[8] = 1024;
      *&buf[10] = v39;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CSU unexpected output embedding with type %d, size %d", buf, 0xEu);
    }

    v10 = 0;
    v9 = -18;
LABEL_24:

    _Block_object_dispose(&v75, 8);
    if (v10)
    {
      goto LABEL_47;
    }

LABEL_46:
    v55 = MediaAnalysisApplyL2Norm(v82[5], v67);
    v56 = v82[5];
    v82[5] = v55;

    goto LABEL_47;
  }

  v64 = [(VCPTextTokenizer *)self->_textTokenizer encode:v5];
  v65 = [MEMORY[0x1E695DF70] arrayWithArray:v64];
  v11 = [v64 count];
  if (v11 >= 0x100)
  {
    v12 = 256;
  }

  else
  {
    v12 = v11;
  }

  v66 = [v65 subarrayWithRange:{0, v12}];
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v13 = [(VCPCNNModelEspressoV2 *)self->_tokenModel inputsSize];
  v14 = [v13 objectAtIndexedSubscript:0];
  v15 = [v14 unsignedIntValue];

  v16 = [(VCPCNNModelEspressoV2 *)self->_tokenModel inputsType];
  v17 = [v16 objectAtIndexedSubscript:0];
  v18 = [v17 unsignedIntValue];

  v19 = [[VCPEspressoV2Data alloc] initWithTensorType:v18 size:v15];
  v20 = v19;
  if (!v19)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v9 = -108;
LABEL_42:
    v54 = 6;
    goto LABEL_43;
  }

  [(VCPEspressoV2Data *)v19 setData:v66 padding:&unk_1F49BBA10];
  if ([v66 count])
  {
    v21 = ([v66 count] - 1);
  }

  else
  {
    v21 = 0.0;
  }

  v9 = [(VCPCNNModelEspressoV2 *)self->_tokenModel espressoForward:[(VCPEspressoV2Data *)v20 getData:v18]];
  if (v9)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_42;
  }

  std::vector<void *>::resize(&v75, 2uLL);
  v32 = [(VCPCNNModelEspressoV2 *)self->_textModel inputsType];
  v40 = [v32 objectAtIndexedSubscript:0];
  v41 = [v40 intValue];

  [(VCPCNNModelEspressoV2 *)self->_tokenModel outputs];
  v42 = [**buf getData:v41];
  *v75 = v42;
  v87 = buf;
  std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v87);
  v43 = [v32 objectAtIndexedSubscript:1];
  v44 = [v43 unsignedIntValue];

  v33 = [[VCPEspressoV2Data alloc] initWithTensorType:v44 size:1];
  *&v45 = v21;
  [(VCPEspressoV2Data *)v33 setValueFP:0 atIndex:v45];
  v46 = [(VCPEspressoV2Data *)v33 getData:v44];
  v47 = v75;
  *(v75 + 1) = v46;
  textModel = self->_textModel;
  __p = 0;
  v69 = 0;
  v70 = 0;
  std::vector<void *>::__init_with_size[abi:ne200100]<void **,void **>(&__p, v47, v76, (v76 - v47) >> 3);
  v9 = [(VCPCNNModelEspressoV2 *)textModel espressoForwardInputs:&__p];
  if (__p)
  {
    v69 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v31 = 0;
    goto LABEL_42;
  }

  [(VCPCNNModelEspressoV2 *)self->_textModel outputs];
  v31 = *(*buf + 16);
  v87 = buf;
  std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v87);
  if (!v31)
  {
LABEL_41:
    v9 = -18;
    goto LABEL_42;
  }

  if ([v31 tensorSize] != self->_embeddingDim)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      embeddingDim = self->_embeddingDim;
      *buf = 67109120;
      *&buf[4] = embeddingDim;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MA text encoder output size does not match expected %d", buf, 8u);
    }

    goto LABEL_41;
  }

  if ([v31 tensorType] == 2)
  {
    v49 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v31 length:{"getData:", 2), 4 * objc_msgSend(v31, "tensorSize")}];
    v50 = v82[5];
    v82[5] = v49;

    if (v67)
    {
      v51 = MediaAnalysisConvertFloat32ToFloat16(v82[5]);
      v52 = v82[5];
      v82[5] = v51;
    }
  }

  else if ([v31 tensorType] == 1)
  {
    v60 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v31 length:{"getData:", 1), 2 * objc_msgSend(v31, "tensorSize")}];
    v61 = v82[5];
    v82[5] = v60;

    if (!v67)
    {
      v62 = MediaAnalysisConvertFloat16ToFloat32(v82[5]);
      v63 = v82[5];
      v82[5] = v62;
    }
  }

  v54 = 0;
  v9 = 0;
LABEL_43:

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (!v54)
  {
    goto LABEL_46;
  }

LABEL_47:
  if (v9)
  {
    v57 = 0;
  }

  else
  {
    v57 = v82[5];
  }

  v58 = v57;
  _Block_object_dispose(&v81, 8);

  return v58;
}

void __48__VCPTextEncoder_textEmbeddingForQuery_useFP16___block_invoke(void *a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CSUTextEncoder_runOnInputText", "", buf, 2u);
  }

  v6 = a1[5];
  v7 = *(a1[4] + 24);
  v8 = *(a1[6] + 8);
  obj = *(v8 + 40);
  [v7 runOnInputText:v6 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v9 = VCPSignPostLog();
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_END, v3, "CSUTextEncoder_runOnInputText", "", v11, 2u);
  }
}

void __48__VCPTextEncoder_textEmbeddingForQuery_useFP16___block_invoke_257(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end