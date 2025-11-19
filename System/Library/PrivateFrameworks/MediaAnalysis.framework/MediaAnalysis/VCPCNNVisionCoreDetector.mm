@interface VCPCNNVisionCoreDetector
- (VCPCNNVisionCoreDetector)initWithOptions:(id)a3;
- (id).cxx_construct;
- (id)allocatePostProcessingBuffers:(id)a3 error:(id *)a4;
- (id)planExecutionandOutput:()vector<espresso_buffer_t descriptor:(std:(id)a4 :allocator<espresso_buffer_t>> *)a3;
- (id)resultForPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 Error:(id *)a5;
- (int)UpdateInputBuffersAndBindPixelBuffer:(__CVBuffer *)a3;
- (int)downscaleBuffer:(__CVBuffer *)a3 scaledImage:(__CVBuffer *)a4;
- (int)getBodyRegions:(id)a3 fromVisionCorePostProcessingOutput:(id)a4 imageWidth:(int)a5 imageHeight:(int)a6 extendRatio:(float)a7 portrait_mode:(BOOL)a8;
- (int)getHandsRegions:(id)a3 fromVisionCorePostProcessingOutput:(id)a4 imageWidth:(int)a5 imageHeight:(int)a6 extendRatio:(float)a7 portrait_mode:(BOOL)a8;
- (int)loadModel:(id)a3 withOptions:(id)a4;
- (void)dealloc;
@end

@implementation VCPCNNVisionCoreDetector

- (VCPCNNVisionCoreDetector)initWithOptions:(id)a3
{
  v116 = *MEMORY[0x1E69E9840];
  v81 = a3;
  v101.receiver = self;
  v101.super_class = VCPCNNVisionCoreDetector;
  v4 = [(VCPCNNVisionCoreDetector *)&v101 init];
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_78;
  }

  v4->_frameCount = 0;
  v79 = [objc_alloc(MEMORY[0x1E69DF970]) initWithMajor:1];
  v6 = [MEMORY[0x1E69DF918] descriptorForIdentifier:*MEMORY[0x1E69DF9C8] version:? objectTrackingEnabled:? segmentationEnabled:? lowFrameRate:? error:?];
  descriptor = v5->_descriptor;
  v5->_descriptor = v6;

  v5->_espressoNetwork.plan = 0;
  v5->_espressoNetwork.network_index = 0;
  if ([(VCPCNNVisionCoreDetector *)v5 loadModel:v5->_descriptor withOptions:v81])
  {
    v8 = 0;
    goto LABEL_77;
  }

  v9 = [MEMORY[0x1E695DF90] dictionary];
  outputBufferMapping = v5->_outputBufferMapping;
  v5->_outputBufferMapping = v9;

  v77 = [(VisionCoreISPInferenceNetworkDescriptor *)v5->_descriptor allOutputNames];
  v11 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:{objc_msgSend(v77, "count")}];
  inferenceOutputNamedObjects = v5->_inferenceOutputNamedObjects;
  v5->_inferenceOutputNamedObjects = v11;

  if ((![v77 count] || !v77) && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - outputNames nil or empty", buf, 2u);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v77;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v97 objects:v115 count:16];
  if (v13)
  {
    v78 = *v98;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v98 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v97 + 1) + 8 * i);
        v16 = [(VisionCoreISPInferenceNetworkDescriptor *)v5->_descriptor outputNamed:v15 error:0];
        v17 = v16;
        if (!v16)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "could not obtain model output", buf, 2u);
          }

          goto LABEL_59;
        }

        v96 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        *buf = 0u;
        v87 = 0u;
        v18 = [v16 shape];
        [v18 rank];
        v19 = v18;
        [v18 sizes];
        v20 = espresso_buffer_pack_tensor_shape();
        if (v20)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v104 = 67109120;
            *&v104[4] = v20;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed with espresso status %i", v104, 8u);
          }

          goto LABEL_58;
        }

        [v17 dataType];
        LODWORD(v96) = VisionCoreEspressoStorageTypeForTensorDataType();
        v21 = v15;
        [v15 UTF8String];
        if (espresso_network_bind_buffer())
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v73 = _espressoPlanErrorMessage(v5->_espressoNetwork.plan);
            *v104 = 138412290;
            *&v104[4] = v73;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v104, 0xCu);
          }

LABEL_58:

LABEL_59:
          v8 = 0;
          v58 = obj;
          goto LABEL_76;
        }

        v22 = objc_opt_new();
        v112 = v94;
        v113 = v95;
        v114 = v96;
        v108 = v90;
        v109 = v91;
        v110 = v92;
        v111 = v93;
        *v104 = *buf;
        v105 = v87;
        v106 = v88;
        v107 = v89;
        [v22 setBuffer:v104];
        [(NSMutableDictionary *)v5->_outputBufferMapping setObject:v22 forKeyedSubscript:obj];
        end = v5->_outputEspressoBuffers.__end_;
        cap = v5->_outputEspressoBuffers.__cap_;
        if (end >= cap)
        {
          begin = v5->_outputEspressoBuffers.__begin_;
          v35 = 0xCF3CF3CF3CF3CF3DLL * ((end - begin) >> 3);
          v36 = v35 + 1;
          if (v35 + 1 > 0x186186186186186)
          {
            std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
          }

          v37 = 0xCF3CF3CF3CF3CF3DLL * ((cap - begin) >> 3);
          if (2 * v37 > v36)
          {
            v36 = 2 * v37;
          }

          if (v37 >= 0xC30C30C30C30C3)
          {
            v38 = 0x186186186186186;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<espresso_buffer_t>>(&v5->_outputEspressoBuffers, v38);
          }

          v39 = 168 * v35;
          v40 = *buf;
          v41 = v88;
          *(v39 + 16) = v87;
          *(v39 + 32) = v41;
          *v39 = v40;
          v42 = v89;
          v43 = v90;
          v44 = v92;
          *(v39 + 80) = v91;
          *(v39 + 96) = v44;
          *(v39 + 48) = v42;
          *(v39 + 64) = v43;
          v45 = v93;
          v46 = v94;
          v47 = v95;
          *(v39 + 160) = v96;
          *(v39 + 128) = v46;
          *(v39 + 144) = v47;
          *(v39 + 112) = v45;
          v33 = 168 * v35 + 168;
          v48 = v5->_outputEspressoBuffers.__begin_;
          v49 = v5->_outputEspressoBuffers.__end_ - v48;
          v50 = 168 * v35 - v49;
          memcpy((v39 - v49), v48, v49);
          v51 = v5->_outputEspressoBuffers.__begin_;
          v5->_outputEspressoBuffers.__begin_ = v50;
          v5->_outputEspressoBuffers.__end_ = v33;
          v5->_outputEspressoBuffers.__cap_ = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          v25 = *buf;
          v26 = v88;
          *(end + 1) = v87;
          *(end + 2) = v26;
          *end = v25;
          v27 = v89;
          v28 = v90;
          v29 = v92;
          *(end + 5) = v91;
          *(end + 6) = v29;
          *(end + 3) = v27;
          *(end + 4) = v28;
          v30 = v93;
          v31 = v94;
          v32 = v95;
          *(end + 20) = v96;
          *(end + 8) = v31;
          *(end + 9) = v32;
          *(end + 7) = v30;
          v33 = end + 168;
        }

        v5->_outputEspressoBuffers.__end_ = v33;
        v52 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:*(v33 - 168) length:objc_msgSend(v17 freeWhenDone:{"storageByteCount"), 0}];
        if (!v52)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v104 = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - no output data", v104, 2u);
          }

LABEL_64:
          v74 = 0;
          goto LABEL_79;
        }

        v53 = [(VisionCoreMutableNamedObjects *)v5->_inferenceOutputNamedObjects assignData:v52 toName:v15 error:0];

        if (!v53)
        {
          goto LABEL_64;
        }
      }

      v13 = [(NSArray *)obj countByEnumeratingWithState:&v97 objects:v115 count:16];
    }

    while (v13);
  }

  v55 = v5->_outputEspressoBuffers.__begin_;
  v54 = v5->_outputEspressoBuffers.__end_;
  if (0xCF3CF3CF3CF3CF3DLL * ((v54 - v55) >> 3) != [(NSArray *)obj count]&& MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - outputBuffers not matching number of descriptors", buf, 2u);
  }

  v103[0] = @"last_mask";
  v103[1] = @"last_salient_mask";
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:2];
  inputMasksNames = v5->_inputMasksNames;
  v5->_inputMasksNames = v56;

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v58 = v5->_inputMasksNames;
  v59 = [(NSArray *)v58 countByEnumeratingWithState:&v82 objects:v102 count:16];
  if (!v59)
  {
    goto LABEL_48;
  }

  v60 = *v83;
  while (2)
  {
    for (j = 0; j != v59; ++j)
    {
      if (*v83 != v60)
      {
        objc_enumerationMutation(v58);
      }

      v62 = *(*(&v82 + 1) + 8 * j);
      v63 = [(VisionCoreISPInferenceNetworkDescriptor *)v5->_descriptor inputNamed:v62 error:0];
      v64 = v63;
      if (!v63)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "could not obtain inputDescriptor", buf, 2u);
        }

        goto LABEL_75;
      }

      v96 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      *buf = 0u;
      v87 = 0u;
      v65 = [v63 shape];
      [v65 rank];
      v66 = v65;
      [v65 sizes];
      if (espresso_buffer_pack_tensor_shape())
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v75 = _espressoPlanErrorMessage(v5->_espressoNetwork.plan);
          *v104 = 138412290;
          *&v104[4] = v75;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v104, 0xCu);
        }

        goto LABEL_74;
      }

      [v64 dataType];
      LODWORD(v96) = VisionCoreEspressoStorageTypeForTensorDataType();
      v67 = v62;
      [v62 UTF8String];
      v68 = espresso_network_bind_buffer();
      if (v68)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v104 = 67109120;
          *&v104[4] = v68;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed with espresso status %i", v104, 8u);
        }

LABEL_74:

LABEL_75:
        v8 = 0;
        goto LABEL_76;
      }

      v69 = objc_opt_new();
      v112 = v94;
      v113 = v95;
      v114 = v96;
      v108 = v90;
      v109 = v91;
      v110 = v92;
      v111 = v93;
      *v104 = *buf;
      v105 = v87;
      v106 = v88;
      v107 = v89;
      [v69 setBuffer:v104];
      [(NSMutableDictionary *)v5->_inputBufferMapping setObject:v69 forKeyedSubscript:v62];
    }

    v59 = [(NSArray *)v58 countByEnumeratingWithState:&v82 objects:v102 count:16];
    if (v59)
    {
      continue;
    }

    break;
  }

LABEL_48:

  v58 = [(VisionCoreISPInferenceNetworkDescriptor *)v5->_descriptor postProcessingOutputDescriptors];
  v70 = [(VCPCNNVisionCoreDetector *)v5 allocatePostProcessingBuffers:v58 error:0];
  postProcessingObjects = v5->_postProcessingObjects;
  v5->_postProcessingObjects = v70;

  v5->_personBuffer = [(VisionCoreMutableNamedObjects *)v5->_postProcessingObjects pixelBufferForName:@"$postprocessed$Person" error:0];
  v5->_salientBuffer = [(VisionCoreMutableNamedObjects *)v5->_postProcessingObjects pixelBufferForName:@"$postprocessed$SalientPerson" error:0];
  v5->_skinBuffer = [(VisionCoreMutableNamedObjects *)v5->_postProcessingObjects pixelBufferForName:@"$postprocessed$Skin" error:0];
  v5->_hairBuffer = [(VisionCoreMutableNamedObjects *)v5->_postProcessingObjects pixelBufferForName:@"$postprocessed$Hair" error:0];
  v5->_skyBuffer = [(VisionCoreMutableNamedObjects *)v5->_postProcessingObjects pixelBufferForName:@"$postprocessed$Sky" error:0];
  v72 = [(VisionCoreISPInferenceNetworkDescriptor *)v5->_descriptor allOutputNames];
  [v72 count];

  v8 = v5;
LABEL_76:

LABEL_77:
LABEL_78:
  v74 = v8;
LABEL_79:

  return v74;
}

- (int)downscaleBuffer:(__CVBuffer *)a3 scaledImage:(__CVBuffer *)a4
{
  v4 = -50;
  if (a3)
  {
    if (a4)
    {
      *a4 = 0;
      Scaler::Scale(&self->_scaler, a3, a4, 512, 384, 1111970369);
      v4 = v6;
      if (v6)
      {
        if (*a4)
        {
          CFRelease(*a4);
          *a4 = 0;
        }
      }
    }
  }

  return v4;
}

- (int)loadModel:(id)a3 withOptions:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPCNNVisionCoreDetector creating ANE context", &v26, 2u);
  }

  context = espresso_create_context();
  self->_espressoContext = context;
  if (context)
  {
    v9 = espresso_context_set_low_precision_accumulation();
    if (v9)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector failed to set low precision numerical accumulation", &v26, 2u);
      }

      goto LABEL_33;
    }

    plan = espresso_create_plan();
    v11 = [v7 objectForKeyedSubscript:@"planPriority"];
    v12 = v11 == 0;

    if (!v12)
    {
      v13 = [v7 objectForKeyedSubscript:@"planPriority"];
      if ([v13 intValue] == 1)
      {

LABEL_17:
        v16 = [v7 objectForKeyedSubscript:@"planPriority"];
        v17 = [v16 intValue];

        espresso_plan_set_priority();
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v17];
          v26 = 138412290;
          v27 = v18;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPCNNVisionCoreDetector - espresso plan priority is set to %@", &v26, 0xCu);
        }

        goto LABEL_23;
      }

      v14 = [v7 objectForKeyedSubscript:@"planPriority"];
      v15 = [v14 intValue] == 0x2000;

      if (v15)
      {
        goto LABEL_17;
      }

      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v7 objectForKeyedSubscript:@"planPriority"];
        v20 = [v19 intValue];
        v26 = 67109120;
        LODWORD(v27) = v20;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPCNNVisionCoreDetector - invalid input espresso plan priority %d", &v26, 8u);
      }
    }

LABEL_23:
    v21 = [v6 URL];
    v22 = [v21 absoluteString];

    if (!v22)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = 138412546;
        v27 = v6;
        v28 = 2112;
        v29 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - could not obtain model file path for %@ - %@", &v26, 0x16u);
      }

      v9 = -18;
      goto LABEL_32;
    }

    v23 = v22;
    [v22 UTF8String];
    v9 = espresso_plan_add_network();
    if (v9)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v9 = espresso_plan_build();
      if (!v9 || MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

    v24 = _espressoPlanErrorMessage(plan);
    v26 = 138412290;
    v27 = v24;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - %@", &v26, 0xCu);

LABEL_32:
    goto LABEL_33;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector failed to create ANE context", &v26, 2u);
  }

  v9 = -18;
LABEL_33:

  return v9;
}

- (int)UpdateInputBuffersAndBindPixelBuffer:(__CVBuffer *)a3
{
  v5 = [(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor allInputNames];
  v6 = [v5 count];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - inputNames nil or empty", buf, 2u);
    }

    v8 = -50;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v10 = [(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor inputNamed:@"input_image" error:0];
    objc_opt_class();
    objc_opt_isKindOfClass();
    v11 = [v10 name];
    v12 = [v9 assignPixelBuffer:a3 toName:v11 error:0];

    if (v12)
    {
      v13 = [v10 name];
      [v13 UTF8String];
      v8 = espresso_network_bind_cvpixelbuffer();

      if (v8)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - Failed to bind pixel buffer", buf, 2u);
        }
      }

      else
      {
        frameCount = self->_frameCount;
        if (frameCount >= 1)
        {
          v15 = [(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor inputNamed:@"prior_mask" error:0];
          v16 = [(NSMutableDictionary *)self->_inputBufferMapping objectForKeyedSubscript:@"last_mask"];
          v17 = v16;
          if (v16)
          {
            [v16 buffer];
            v18 = *buf;
          }

          else
          {
            v18 = 0;
            v62 = 0;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            *buf = 0u;
            v53 = 0u;
          }

          v19 = [(NSMutableDictionary *)self->_outputBufferMapping objectForKeyedSubscript:@"prior_mask"];
          v20 = v19;
          if (v19)
          {
            [v19 buffer];
            v21 = v30;
          }

          else
          {
            v21 = 0;
            v50 = 0;
            v46 = 0u;
            v48 = 0u;
            v42 = 0u;
            v44 = 0u;
            v38 = 0u;
            v40 = 0u;
            v34 = 0u;
            v36 = 0u;
            v30 = 0u;
            v32 = 0u;
          }

          memcpy(v18, v21, [v15 storageByteCount]);

          v22 = [(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor inputNamed:@"salient_person_prior_mask" error:0];
          v23 = [(NSMutableDictionary *)self->_inputBufferMapping objectForKeyedSubscript:@"last_salient_mask"];
          v24 = v23;
          if (v23)
          {
            [v23 buffer];
            v25 = *buf;
          }

          else
          {
            v25 = 0;
            v62 = 0;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            *buf = 0u;
            v53 = 0u;
          }

          v26 = [(NSMutableDictionary *)self->_outputBufferMapping objectForKeyedSubscript:@"salient_person_prior_mask"];
          v27 = v26;
          if (v26)
          {
            [v26 buffer];
            v28 = v31;
          }

          else
          {
            v28 = 0;
            v51 = 0;
            v47 = 0u;
            v49 = 0u;
            v43 = 0u;
            v45 = 0u;
            v39 = 0u;
            v41 = 0u;
            v35 = 0u;
            v37 = 0u;
            v31 = 0u;
            v33 = 0u;
          }

          memcpy(v25, v28, [v22 storageByteCount]);

          frameCount = self->_frameCount;
        }

        v8 = 0;
        self->_frameCount = frameCount + 1;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - Failed to assign buffer", buf, 2u);
      }

      v8 = -18;
    }
  }

  return v8;
}

- (void)dealloc
{
  if (self->_espressoNetwork.plan)
  {
    espresso_plan_destroy();
  }

  if (self->_espressoContext)
  {
    espresso_context_destroy();
  }

  v3 = [(NSMutableDictionary *)self->_inputBufferMapping objectForKeyedSubscript:@"last_mask"];

  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->_inputBufferMapping objectForKeyedSubscript:@"last_mask"];
    v5 = v4;
    if (v4)
    {
      [v4 buffer];
      v6 = v25;
    }

    else
    {
      v6 = 0;
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    free(v6);
  }

  v7 = [(NSMutableDictionary *)self->_inputBufferMapping objectForKeyedSubscript:@"last_salient_mask"];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_inputBufferMapping objectForKeyedSubscript:@"last_salient_mask"];
    v9 = v8;
    if (v8)
    {
      [v8 buffer];
      v10 = v25;
    }

    else
    {
      v10 = 0;
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    free(v10);
  }

  v11 = [(NSMutableDictionary *)self->_outputBufferMapping objectForKeyedSubscript:@"prior_mask"];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_outputBufferMapping objectForKeyedSubscript:@"prior_mask"];
    v13 = v12;
    if (v12)
    {
      [v12 buffer];
      v14 = v25;
    }

    else
    {
      v14 = 0;
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    free(v14);
  }

  v15 = [(NSMutableDictionary *)self->_outputBufferMapping objectForKeyedSubscript:@"salient_person_prior_mask"];

  if (v15)
  {
    v16 = [(NSMutableDictionary *)self->_outputBufferMapping objectForKeyedSubscript:@"salient_person_prior_mask"];
    v17 = v16;
    if (v16)
    {
      [v16 buffer];
      v18 = v25;
    }

    else
    {
      v18 = 0;
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    free(v18);
  }

  personBuffer = self->_personBuffer;
  if (personBuffer)
  {
    CFRelease(personBuffer);
  }

  salientBuffer = self->_salientBuffer;
  if (salientBuffer)
  {
    CFRelease(salientBuffer);
  }

  skinBuffer = self->_skinBuffer;
  if (skinBuffer)
  {
    CFRelease(skinBuffer);
  }

  hairBuffer = self->_hairBuffer;
  if (hairBuffer)
  {
    CFRelease(hairBuffer);
  }

  skyBuffer = self->_skyBuffer;
  if (skyBuffer)
  {
    CFRelease(skyBuffer);
  }

  v24.receiver = self;
  v24.super_class = VCPCNNVisionCoreDetector;
  [(VCPCNNVisionCoreDetector *)&v24 dealloc];
}

- (id)allocatePostProcessingBuffers:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:{objc_msgSend(v24, "count")}];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v24;
  v6 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v6)
  {
    v7 = *v39;
    v25 = *MEMORY[0x1E69660D8];
    v8 = *MEMORY[0x1E6966020];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v39 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v38 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        v44[0] = v25;
        v44[1] = v8;
        v45[0] = MEMORY[0x1E695E0F8];
        v45[1] = &unk_1F49BBBA8;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
        pixelBufferOut[0] = 0;
        CVPixelBufferCreate(0, [v11 pixelWidth], objc_msgSend(v11, "pixelHeight"), objc_msgSend(v11, "pixelFormatType"), v12, pixelBufferOut);
        v13 = pixelBufferOut[0];
        v14 = [v11 name];
        LOBYTE(v13) = [v5 assignPixelBuffer:v13 toName:v14 error:a4];

        if ((v13 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        *pixelBufferOut = 0u;
        v28 = 0u;
        v15 = [v10 shape];
        [v15 rank];
        v16 = v15;
        [v15 sizes];
        v17 = espresso_buffer_pack_tensor_shape();
        [v10 dataType];
        LODWORD(v37) = VisionCoreEspressoStorageTypeForTensorDataType();
        pixelBufferOut[0] = malloc_type_malloc([v10 storageByteCount], 0xF197E84EuLL);
        if (v17)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v43 = v17;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - Failed with espresso status %i", buf, 8u);
          }

          goto LABEL_22;
        }

        v18 = objc_alloc(MEMORY[0x1E695DEF0]);
        v19 = [v18 initWithBytes:pixelBufferOut[0] length:{objc_msgSend(v10, "storageByteCount")}];
        if (!v19)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - no input data", buf, 2u);
          }

LABEL_22:

LABEL_23:
          v22 = 0;
          goto LABEL_24;
        }

        v20 = [v10 name];
        v21 = [v5 assignData:v19 toName:v20 error:a4];

        if ((v21 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if (v6 == ++v9)
      {
        v6 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v22 = v5;
LABEL_24:

  return v22;
}

- (id)planExecutionandOutput:()vector<espresso_buffer_t descriptor:(std:(id)a4 :allocator<espresso_buffer_t>> *)a3
{
  if (espresso_plan_execute_sync())
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "execution not successful", v7, 2u);
    }

    v5 = 0;
  }

  else
  {
    v5 = self->_inferenceOutputNamedObjects;
  }

  return v5;
}

- (id)resultForPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 Error:(id *)a5
{
  v6 = *&a4;
  v60[1] = *MEMORY[0x1E69E9840];
  v9 = mach_absolute_time();
  v10 = VCPSignPostLog();
  v11 = os_signpost_id_generate(v10);

  v12 = VCPSignPostLog();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VCPCNNVisionCoreDetectorDownscale", "", buf, 2u);
  }

  *buf = 0;
  if ([(VCPCNNVisionCoreDetector *)self downscaleBuffer:a3 scaledImage:buf])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v51 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - downscaling pixelBuffer failed", v51, 2u);
    }

    if (a5)
    {
      v14 = MEMORY[0x1E696ABC0];
      v59 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPCNNVisionCoreDetector - downscaling buffer failed"];
      v60[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
      v17 = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v16];
LABEL_21:
      v21 = 0;
      *a5 = v17;
      goto LABEL_22;
    }
  }

  else
  {
    v18 = VCPSignPostLog();
    v19 = v18;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *v51 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_END, v11, "VCPCNNVisionCoreDetectorDownscale", "", v51, 2u);
    }

    if (v9)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    if (![(VCPCNNVisionCoreDetector *)self UpdateInputBuffersAndBindPixelBuffer:*buf])
    {
      v23 = mach_absolute_time();
      v24 = VCPSignPostLog();
      v25 = os_signpost_id_generate(v24);

      v26 = VCPSignPostLog();
      v27 = v26;
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *v51 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VCPCNNVisionCoreDetectorExecution", "", v51, 2u);
      }

      __p = 0;
      v49 = 0;
      v50 = 0;
      std::vector<espresso_buffer_t>::__init_with_size[abi:ne200100]<espresso_buffer_t*,espresso_buffer_t*>(&__p, self->_outputEspressoBuffers.__begin_, self->_outputEspressoBuffers.__end_, 0xCF3CF3CF3CF3CF3DLL * ((self->_outputEspressoBuffers.__end_ - self->_outputEspressoBuffers.__begin_) >> 3));
      v15 = [(VCPCNNVisionCoreDetector *)self planExecutionandOutput:&__p descriptor:self->_descriptor];
      if (__p)
      {
        v49 = __p;
        operator delete(__p);
      }

      v28 = VCPSignPostLog();
      v29 = v28;
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *v51 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_END, v25, "VCPCNNVisionCoreDetectorExecution", "", v51, 2u);
      }

      if (v23)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      v30 = mach_absolute_time();
      v31 = VCPSignPostLog();
      v32 = os_signpost_id_generate(v31);

      v33 = VCPSignPostLog();
      v34 = v33;
      if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *v51 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v32, "VCPCNNVisionCoreDetectorPostProcessing", "", v51, 2u);
      }

      v16 = [(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor postProcessingOutputDescriptors];
      v35 = [(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor requiresPostProcessing];
      if (v16)
      {
        v36 = 0;
      }

      else
      {
        v36 = v35;
      }

      if (v36 == 1)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v51 = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - Descriptor requires post processing - but no postProcessingDescriptors returned", v51, 2u);
        }

        if (!a5)
        {
          v21 = 0;
          goto LABEL_22;
        }

        v37 = MEMORY[0x1E696ABC0];
        v55 = *MEMORY[0x1E696A578];
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPCNNVisionCoreDetector - Descriptor requires post processing - but no postProcessingDescriptors returned"];
        v56 = v38;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        [v37 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v39];
        *a5 = v21 = 0;
      }

      else
      {
        v40 = objc_alloc(MEMORY[0x1E69DF920]);
        v38 = [v40 initWithInputImageBuffer:*buf inputImageOrientation:v6 inferenceOutputNamedObjects:v15];
        LODWORD(v47) = v6;
        LODWORD(v46) = v6;
        v39 = [objc_alloc(MEMORY[0x1E69DF928]) initWithPostProcessedPersonImageBuffer:self->_personBuffer personImageOrientation:v6 salientPersonImageBuffer:self->_salientBuffer salientPersonImageBufferOrientation:v6 skinImageBuffer:self->_skinBuffer skinImageBufferOrientation:v6 hairImageBuffer:self->_hairBuffer hairImageBufferOrientation:v46 skyImageBuffer:self->_skyBuffer skyImageBufferOrientation:v47];
        if (([(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor performPostProcessingForInput:v38 postProcessingOutput:v39 error:a5]& 1) != 0)
        {
          v41 = VCPSignPostLog();
          v42 = v41;
          if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
          {
            *v51 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v42, OS_SIGNPOST_INTERVAL_END, v32, "VCPCNNVisionCoreDetectorPostProcessing", "", v51, 2u);
          }

          if (v30)
          {
            mach_absolute_time();
            VCPPerformance_LogMeasurement();
          }

          v39 = v39;
          v21 = v39;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v51 = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - ISP post processing failure", v51, 2u);
          }

          if (a5)
          {
            v43 = MEMORY[0x1E696ABC0];
            v53 = *MEMORY[0x1E696A578];
            v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPCNNVisionCoreDetector - ISP post processing failure"];
            v54 = v44;
            v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
            *a5 = [v43 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v45];
          }

          v21 = 0;
        }
      }

LABEL_22:
      goto LABEL_24;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v51 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - update input buffers and binding buffer failed", v51, 2u);
    }

    if (a5)
    {
      v20 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPCNNVisionCoreDetector - update input buffers and binding buffer failed"];
      v58 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v17 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v16];
      goto LABEL_21;
    }
  }

  v21 = 0;
LABEL_24:
  CF<__CVBuffer *>::~CF(buf);

  return v21;
}

- (int)getHandsRegions:(id)a3 fromVisionCorePostProcessingOutput:(id)a4 imageWidth:(int)a5 imageHeight:(int)a6 extendRatio:(float)a7 portrait_mode:(BOOL)a8
{
  v8 = a8;
  v85 = *MEMORY[0x1E69E9840];
  v13 = a3;
  [a4 hands];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  obj = v69 = 0u;
  v14 = [obj countByEnumeratingWithState:&v68 objects:v84 count:16];
  if (v14)
  {
    v15 = a5;
    v16 = a6;
    v17 = *v69;
    v18 = vcvts_n_f32_s32(a5, 9uLL);
    v19 = (a6 / 384.0);
    v67 = a7 + 1.0;
    v65 = 134219264;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v69 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v68 + 1) + 8 * i);
        v22 = [v21 groupID];
        [v21 boundingBox];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v31 = [v21 chirality];
        if (v31 == 1)
        {
          v32 = 0xFFFFFFFFLL;
        }

        else
        {
          v32 = v31 == 2;
        }

        v33 = [v21 confidence];
        v34 = v28 * v18 * 0.5;
        v35 = v30 * v19 * 0.5;
        v36 = v34 + v24 * v18;
        v37 = v35 + v26 * v19;
        if (v34 < v35)
        {
          v34 = v30 * v19 * 0.5;
        }

        v38 = v67 * v34;
        v39 = v36 - v38;
        if ((v36 - v38) < 0.0)
        {
          v39 = 0.0;
        }

        v40 = v37 - v38;
        if ((v37 - v38) < 0.0)
        {
          v40 = 0.0;
        }

        v41 = v38 + v36;
        if (v41 > v15)
        {
          v41 = v15;
        }

        v42 = v38 + v37;
        v43 = v39 / v15;
        if (v42 > v16)
        {
          v42 = a6;
        }

        v44 = v41 - v39;
        v45 = v40 / v16;
        v46 = v44 / v15;
        v47 = (v42 - v40) / v16;
        if (v8)
        {
          v48 = (1.0 - v43) - v46;
          v43 = v40 / v16;
          if (v48 >= 0.0)
          {
            v45 = v48;
          }

          else
          {
            v45 = 0.0;
          }

          v49 = v47;
        }

        else
        {
          v49 = v44 / v15;
          v46 = v47;
        }

        v50 = [VCPBoundingBox alloc];
        *&v51 = v33;
        *&v52 = v43;
        *&v53 = v45;
        *&v54 = v49;
        *&v55 = v46;
        v56 = [(VCPBoundingBox *)v50 initWithXYAndSize:v52 y:v53 width:v54 height:v55 confidence:v51];
        [(VCPBoundingBox *)v56 setClassIndex:v32];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          [(VCPBoundingBox *)v56 minX];
          v58 = v57;
          [(VCPBoundingBox *)v56 minY];
          v60 = v59;
          [(VCPBoundingBox *)v56 maxX];
          v62 = v61;
          [(VCPBoundingBox *)v56 maxY];
          *buf = v65;
          v73 = v58;
          v74 = 2048;
          v75 = v60;
          v76 = 2048;
          v77 = v62;
          v78 = 2048;
          v79 = v63;
          v80 = 1024;
          v81 = v32;
          v82 = 2048;
          v83 = v22;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPCNNVisionCoreDetector: using VisionCore box (xyxy, chirality) = [%f, %f, %f, %f, %d], groupID = %lu", buf, 0x3Au);
        }

        [(VCPBoundingBox *)v56 setGroupID:v22];
        [v13 addObject:v56];
      }

      v14 = [obj countByEnumeratingWithState:&v68 objects:v84 count:16];
    }

    while (v14);
  }

  return 0;
}

- (int)getBodyRegions:(id)a3 fromVisionCorePostProcessingOutput:(id)a4 imageWidth:(int)a5 imageHeight:(int)a6 extendRatio:(float)a7 portrait_mode:(BOOL)a8
{
  v8 = a8;
  v81 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = [a4 fullBodyResults];
  if (v8)
  {
    v15 = a5;
  }

  else
  {
    v15 = a6;
  }

  v68 = 0u;
  v69 = 0u;
  if (v8)
  {
    v16 = a6;
  }

  else
  {
    v16 = a5;
  }

  v66 = 0uLL;
  v67 = 0uLL;
  obj = v14;
  v17 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
  if (v17)
  {
    v18 = vcvts_n_f32_s32(v16, 9uLL);
    v19 = *v67;
    v65 = v18;
    v20 = (v15 / 384.0);
    v21 = a6;
    v22 = a7 + 1.0;
    v23 = a5;
    v63 = 134219008;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v67 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v66 + 1) + 8 * i);
        v26 = [v25 groupID];
        [v25 boundingBox];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v35 = [v25 confidence];
        v36 = v32 * v65;
        v37 = v34 * v20;
        v38 = v28 * v65;
        v39 = v30 * v20;
        if (v8)
        {
          v40 = v21 - v38;
          v38 = v30 * v20;
          v39 = v40 - v36;
          v41 = v37;
        }

        else
        {
          v41 = v36;
          v36 = v37;
        }

        v42 = [VCPBoundingBox alloc];
        *&v45 = (v36 * 0.5) + v39;
        *&v46 = v22 * (v36 * 0.5);
        *&v47 = *&v46 + *&v45;
        if ((*&v46 + *&v45) > v21)
        {
          *&v47 = a6;
        }

        v48 = *&v45 - *&v46;
        v49 = 0.0;
        if (v48 >= 0.0)
        {
          *&v43 = v48;
        }

        else
        {
          *&v43 = 0.0;
        }

        v50 = (v41 * 0.5) + v38;
        v51 = v22 * (v41 * 0.5);
        v52 = v51 + v50;
        if ((v51 + v50) > v23)
        {
          v52 = a5;
        }

        v53 = v50 - v51;
        if (v53 >= 0.0)
        {
          v49 = v53;
        }

        *&v45 = *&v43 / v21;
        *&v46 = v49 / v23;
        *&v43 = (*&v47 - *&v43) / v21;
        *&v47 = (v52 - v49) / v23;
        *&v44 = v35;
        v54 = [(VCPBoundingBox *)v42 initWithXYAndSize:v46 y:v45 width:v47 height:v43 confidence:v44];
        [(VCPBoundingBox *)v54 setGroupID:v26];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          [(VCPBoundingBox *)v54 minX];
          v56 = v55;
          [(VCPBoundingBox *)v54 minY];
          v58 = v57;
          [(VCPBoundingBox *)v54 maxX];
          v60 = v59;
          [(VCPBoundingBox *)v54 maxY];
          *buf = v63;
          v71 = v56;
          v72 = 2048;
          v73 = v58;
          v74 = 2048;
          v75 = v60;
          v76 = 2048;
          v77 = v61;
          v78 = 2048;
          v79 = v26;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPCNNVisionCoreDetector: person fullbody box (xyxy) = [%f, %f, %f, %f], groupID = %lu", buf, 0x34u);
        }

        [v13 addObject:v54];
      }

      v17 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
    }

    while (v17);
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 14) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  return self;
}

@end