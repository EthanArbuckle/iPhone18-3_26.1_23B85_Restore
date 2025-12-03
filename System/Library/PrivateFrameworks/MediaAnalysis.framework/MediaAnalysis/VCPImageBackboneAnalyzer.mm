@interface VCPImageBackboneAnalyzer
+ (BOOL)isBridgeVersion:(unint64_t)version compatibleWithEmbeddingVersion:(unint64_t)embeddingVersion;
+ (id)sharedModel:(id)model identifier:(id)identifier outputNames:(id)names inputNames:(id)inputNames functionName:(id)name precompiled:(BOOL)precompiled;
- (VCPImageBackboneAnalyzer)initWithRequestedAnalyses:(unint64_t)analyses andRevision:(id)revision useSharedModel:(BOOL)model;
- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel;
- (int)computeBridgeEmbedding:(id)embedding forType:(int64_t)type;
- (int)configForAspectRatio:(float)ratio;
- (int)prepareInput:(__CVBuffer *)input withChannels:(int)channels settling:(BOOL)settling;
@end

@implementation VCPImageBackboneAnalyzer

+ (id)sharedModel:(id)model identifier:(id)identifier outputNames:(id)names inputNames:(id)inputNames functionName:(id)name precompiled:(BOOL)precompiled
{
  modelCopy = model;
  identifierCopy = identifier;
  namesCopy = names;
  inputNamesCopy = inputNames;
  nameCopy = name;
  v18 = +[VCPSharedInstanceManager sharedManager];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __99__VCPImageBackboneAnalyzer_sharedModel_identifier_outputNames_inputNames_functionName_precompiled___block_invoke;
  v26[3] = &unk_1E834D0C0;
  v25 = modelCopy;
  v19 = modelCopy;
  v27 = v19;
  v20 = namesCopy;
  v28 = v20;
  v21 = inputNamesCopy;
  v29 = v21;
  v22 = nameCopy;
  v30 = v22;
  precompiledCopy = precompiled;
  v23 = [v18 sharedInstanceWithIdentifier:identifierCopy andCreationBlock:{v26, v25}];

  return v23;
}

VCPCNNModelEspressoV2 *__99__VCPImageBackboneAnalyzer_sharedModel_identifier_outputNames_inputNames_functionName_precompiled___block_invoke(uint64_t a1)
{
  v1 = [[VCPCNNModelEspressoV2 alloc] initWithParameters:*(a1 + 32) outputNames:*(a1 + 40) inputNames:*(a1 + 48) functionName:*(a1 + 56) precompiled:*(a1 + 64)];

  return v1;
}

- (VCPImageBackboneAnalyzer)initWithRequestedAnalyses:(unint64_t)analyses andRevision:(id)revision useSharedModel:(BOOL)model
{
  modelCopy = model;
  v36 = *MEMORY[0x1E69E9840];
  revisionCopy = revision;
  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPPhotoAnalyzer_Image_VCPImageBackboneInit", "", buf, 2u);
  }

  self->_isFP16 = 0;
  self->_useSharedModel = modelCopy;
  self->_revision = +[VCPVideoTransformerBackbone revision];
  if (!revisionCopy)
  {
    goto LABEL_9;
  }

  if ([revisionCopy intValue] == 5 || objc_msgSend(revisionCopy, "intValue") == 6 || objc_msgSend(revisionCopy, "intValue") == 7)
  {
    self->_revision = [revisionCopy intValue];
LABEL_9:
    v33.receiver = self;
    v33.super_class = VCPImageBackboneAnalyzer;
    v12 = [(VCPImageBackboneAnalyzer *)&v33 init];
    if (v12)
    {
      v12->_inputWidth = [VCPVideoTransformerBackbone idealInputWidthWithRevision:v12->_revision];
      v12->_inputHeight = [VCPVideoTransformerBackbone idealInputHeightWithRevision:v12->_revision];
      inputData = v12->_inputData;
      v12->_inputData = 0;

      v14 = [[VCPTransforms alloc] initImageTransform:128 transformedImageWidth:v12->_inputWidth transformedImageHeight:v12->_inputHeight];
      transformImage = v12->_transformImage;
      v12->_transformImage = v14;

      vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
      resourceURL = [vcp_mediaAnalysisBundle resourceURL];

      v18 = [MEMORY[0x1E695DFF8] URLWithString:@"mubb_md7" relativeToURL:resourceURL];
      v19 = MEMORY[0x1E696AEC0];
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:v12->_revision];
      stringValue = [v20 stringValue];
      v22 = [v19 stringWithFormat:@"%@_%@", @"image_backbone", stringValue];

      if (modelCopy)
      {
        v23 = [objc_opt_class() sharedModel:v18 identifier:v22 outputNames:&unk_1F49BE938 inputNames:&unk_1F49BE950 functionName:@"main_image" precompiled:1];
      }

      else
      {
        v23 = [[VCPCNNModelEspressoV2 alloc] initWithParameters:v18 outputNames:&unk_1F49BE938 inputNames:&unk_1F49BE968 functionName:@"main_image" precompiled:1];
      }

      modelEspressoV2 = v12->_modelEspressoV2;
      v12->_modelEspressoV2 = v23;

      if (v12->_modelEspressoV2)
      {
        LODWORD(v26) = 1.0;
        v27 = [(VCPImageBackboneAnalyzer *)v12 configForAspectRatio:v26];
      }

      else
      {
        v27 = -108;
      }

      if (v27)
      {
        v24 = 0;
      }

      else
      {
        v24 = v12;
      }

      self = v12;
    }

    else
    {
      v24 = 0;
      self = 0;
    }

    goto LABEL_21;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    intValue = [revisionCopy intValue];
    *buf = 67109120;
    v35 = intValue;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPImageBackboneAnalyzer] revision %d is not supported", buf, 8u);
  }

  v24 = 0;
LABEL_21:
  v28 = VCPSignPostLog();
  v29 = v28;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_END, v9, "VCPPhotoAnalyzer_Image_VCPImageBackboneInit", "", buf, 2u);
  }

  v30 = v24;
  return v30;
}

+ (BOOL)isBridgeVersion:(unint64_t)version compatibleWithEmbeddingVersion:(unint64_t)embeddingVersion
{
  v10 = *MEMORY[0x1E69E9840];
  if (version - 8 < 2)
  {
    v5 = (embeddingVersion & 0xFFFFFFFFFFFFFFFELL) == 8;
LABEL_6:
    LOBYTE(v6) = v5;
    return v6;
  }

  if (version == 7 || version == 5)
  {
    v5 = (embeddingVersion & 0xFFFFFFFFFFFFFFFDLL) == 5;
    goto LABEL_6;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      return v6;
    }

    v8 = 134217984;
    versionCopy = version;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPPhotosCollectionThemeAnalysisTask] Unknown bridge embedding version %ld", &v8, 0xCu);
  }

  LOBYTE(v6) = 0;
  return v6;
}

- (int)configForAspectRatio:(float)ratio
{
  inputsSize = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 inputsSize];
  v5 = [inputsSize objectAtIndexedSubscript:0];
  unsignedIntValue = [v5 unsignedIntValue];

  if (unsignedIntValue != 3 * self->_inputHeight * self->_inputWidth)
  {
    return -50;
  }

  inputsType = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 inputsType];
  v8 = [inputsType objectAtIndexedSubscript:0];
  unsignedIntValue2 = [v8 unsignedIntValue];

  v10 = [[VCPEspressoV2Data alloc] initWithTensorType:unsignedIntValue2 size:unsignedIntValue];
  inputData = self->_inputData;
  self->_inputData = v10;

  if (self->_inputData)
  {
    return 0;
  }

  else
  {
    return -108;
  }
}

- (int)prepareInput:(__CVBuffer *)input withChannels:(int)channels settling:(BOOL)settling
{
  v50 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(input);
  Height = CVPixelBufferGetHeight(input);
  if (channels != 3)
  {
    return -50;
  }

  v10 = Width;
  v11 = Height;
  if ((Height * 1.2) >= Width)
  {
    if ((v10 * 1.2) >= v11)
    {
      v13 = *MEMORY[0x1E695F058];
      v16 = *(MEMORY[0x1E695F058] + 8);
      v14 = *(MEMORY[0x1E695F058] + 16);
      v15 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      v18 = v10 / v11;
      v16 = ((Height - Width) / (v11 + v11));
      v15 = v18;
      v14 = 1.0;
      v13 = 0.0;
    }
  }

  else
  {
    v12 = v11 / v10;
    v13 = ((Width - Height) / (v10 + v10));
    v14 = v12;
    v15 = 1.0;
    v16 = 0.0;
  }

  inputHeight = self->_inputHeight;
  inputWidth = self->_inputWidth;
  v21 = [(VCPTransforms *)self->_transformImage cropAndScale:input regionCrop:v13, v16, v14, v15];
  if (!v21)
  {
    return -18;
  }

  v22 = v21;
  pixelBuffer = v21;
  unlockFlags = 1;
  v23 = CVPixelBufferLockBaseAddress(v21, 1uLL);
  v43 = v23;
  if (!v23 || (v17 = v23, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, v47 = v22, v48 = 1024, v49 = v17, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v17 = v43) == 0))
  {
    BaseAddress = CVPixelBufferGetBaseAddress(v22);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v22);
    v27 = self->_inputHeight;
    if (v27 >= 1)
    {
      v28 = 0;
      v42 = inputWidth * inputHeight;
      v40 = BytesPerRow;
      LODWORD(v29) = self->_inputWidth;
      do
      {
        if (v29 >= 1)
        {
          v30 = 0;
          v31 = 11 * (v28 >> 5);
          v41 = v28;
          v32 = 32 * (v28 & 0x1F);
          v33 = 1;
          do
          {
            LOBYTE(v26) = BaseAddress[v33 + 1];
            v34 = v31 + (v30 >> 5) + 121 * (v30 & 0x1F | v32);
            *&v26 = ((LODWORD(v26) / 255.0) + -0.48145) / 0.26863;
            [(VCPEspressoV2Data *)self->_inputData setValueFP:v34 atIndex:v26];
            LOBYTE(v35) = BaseAddress[v33];
            *&v36 = ((v35 / 255.0) + -0.45783) / 0.2613;
            [(VCPEspressoV2Data *)self->_inputData setValueFP:v34 + v42 atIndex:v36];
            LOBYTE(v37) = BaseAddress[v33 - 1];
            *&v38 = ((v37 / 255.0) + -0.40821) / 0.27578;
            [(VCPEspressoV2Data *)self->_inputData setValueFP:v34 + 2 * v42 atIndex:v38];
            ++v30;
            v29 = self->_inputWidth;
            v33 += 4;
          }

          while (v30 < v29);
          v27 = self->_inputHeight;
          v28 = v41;
        }

        BaseAddress += v40;
        ++v28;
      }

      while (v28 < v27);
    }

    v17 = CVPixelBufferLock::Unlock(&v43);
  }

  CFRelease(v22);
  if (pixelBuffer && !v43 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
  }

  return v17;
}

- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel
{
  v51[2] = *MEMORY[0x1E69E9840];
  v9 = VCPSignPostLog();
  v10 = os_signpost_id_generate(v9);

  v11 = VCPSignPostLog();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v43.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "VCPPhotoAnalyzer_Image_VCPImageBackbonePreProcess", "", &v43, 2u);
  }

  v13 = [(VCPImageBackboneAnalyzer *)self prepareInput:buffer withChannels:3 settling:0];
  if (!v13)
  {
    v14 = VCPSignPostLog();
    v15 = v14;
    if (v10 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v14))
    {
      LOWORD(v43.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_END, v10, "VCPPhotoAnalyzer_Image_VCPImageBackbonePreProcess", "", &v43, 2u);
    }

    inputsType = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 inputsType];
    v17 = [inputsType objectAtIndexedSubscript:0];
    unsignedIntValue = [v17 unsignedIntValue];

    v13 = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 espressoForward:[(VCPEspressoV2Data *)self->_inputData getData:unsignedIntValue]];
    if (!v13)
    {
      outputsSize = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 outputsSize];
      if ([outputsSize count])
      {
        modelEspressoV2 = self->_modelEspressoV2;
        if (!modelEspressoV2)
        {
          goto LABEL_18;
        }

        [(VCPCNNModelEspressoV2 *)modelEspressoV2 outputs];
        v21 = *&v43.value;
        v44 = &v43;
        std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v44);
        if (*(&v21 + 1) == v21)
        {
          goto LABEL_19;
        }

        [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 outputs];
        v22 = [VCPVideoTransformerBackbone getNSDataFromOuput:*v43.value isFP16:0];
        embedding = self->_embedding;
        self->_embedding = v22;

        v44 = &v43;
        std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v44);
        if ([outputsSize count] < 3)
        {
          goto LABEL_19;
        }

        v24 = self->_modelEspressoV2;
        if (v24)
        {
          [(VCPCNNModelEspressoV2 *)v24 outputs];
          v25 = *&v43.timescale - v43.value;
          v44 = &v43;
          std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v44);
          if (v25 >= 0x11)
          {
            [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 outputs];
            v26 = [VCPVideoTransformerBackbone getNSDataFromOuput:*(v43.value + 8) isFP16:0];
            spatialEmbedding = self->_spatialEmbedding;
            self->_spatialEmbedding = v26;

            v44 = &v43;
            std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v44);
            [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 outputs];
            v28 = [VCPVideoTransformerBackbone getNSDataFromOuput:*(v43.value + 16) isFP16:0];
            hiddenEmbedding = self->_hiddenEmbedding;
            self->_hiddenEmbedding = v28;

            v44 = &v43;
            std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v44);
            v30 = MediaAnalysisConvertFloat32ToFloat16(self->_embedding);
            v51[0] = v30;
            v50[0] = @"embeddings";
            v50[1] = @"embeddingVersion";
            v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[VCPVideoTransformerBackbone embeddingVersionForRevision:](VCPVideoTransformerBackbone, "embeddingVersionForRevision:", self->_revision)}];
            v51[1] = v31;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
            v33 = [v32 mutableCopy];

            if ([(VCPImageBackboneAnalyzer *)self bridgeEmbeddingType]== 1)
            {
              v13 = [(VCPImageBackboneAnalyzer *)self computeBridgeEmbedding:self->_embedding forType:1];
              if (!v13)
              {
                [v33 setObject:self->_bridgeEmbedding forKey:@"bridgeEmbeddings"];
                goto LABEL_29;
              }
            }

            else
            {
              if ([(VCPImageBackboneAnalyzer *)self bridgeEmbeddingType]!= 2 && [(VCPImageBackboneAnalyzer *)self bridgeEmbeddingType]!= 3 && [(VCPImageBackboneAnalyzer *)self bridgeEmbeddingType]!= 4)
              {
                goto LABEL_29;
              }

              v35 = self->_spatialEmbedding;
              if (v35)
              {
                v36 = MediaAnalysisConvertFloat32ToFloat16(v35);
                if ([v36 length] != 187392)
                {
                  v13 = -18;
                  goto LABEL_33;
                }

                v37 = v36;
                bytes = [v36 bytes];
                v39 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes + 1536 length:185856];
                v13 = [(VCPImageBackboneAnalyzer *)self computeBridgeEmbedding:v39 forType:[(VCPImageBackboneAnalyzer *)self bridgeEmbeddingType]];
                if (v13)
                {
LABEL_30:

LABEL_33:
                  goto LABEL_34;
                }

                [v33 setObject:self->_bridgeEmbedding forKey:@"bridgeEmbeddings"];

LABEL_29:
                v48 = @"ImageEmbeddingResults";
                v45[0] = @"start";
                v40 = MEMORY[0x1E6960CC0];
                v43 = **&MEMORY[0x1E6960CC0];
                v36 = CMTimeToNSDictionary(&v43);
                v46[0] = v36;
                v45[1] = @"duration";
                v43 = *v40;
                v39 = CMTimeToNSDictionary(&v43);
                v45[2] = @"attributes";
                v46[1] = v39;
                v46[2] = v33;
                v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:3];
                v47 = v41;
                v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
                v49 = v42;
                *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];

                v13 = 0;
                goto LABEL_30;
              }

              v13 = -18;
            }

LABEL_34:

            goto LABEL_20;
          }
        }

        else
        {
LABEL_18:
          memset(&v43, 0, sizeof(v43));
          v44 = &v43;
          std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v44);
        }
      }

LABEL_19:
      v13 = 1;
LABEL_20:
    }
  }

  return v13;
}

- (int)computeBridgeEmbedding:(id)embedding forType:(int64_t)type
{
  v44 = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  if (self->_modelCatalogModel)
  {
    if (!type)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = objc_alloc_init(_MADObjCModelCatalogModel);
    modelCatalogModel = self->_modelCatalogModel;
    self->_modelCatalogModel = v7;

    if (!type)
    {
LABEL_14:
      v10 = 0;
      goto LABEL_37;
    }
  }

  if (type != 1)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 134217984;
    *&buf[4] = [(VCPImageBackboneAnalyzer *)self bridgeEmbeddingType];
    v18 = MEMORY[0x1E69E9C10];
    v19 = "Bridge type %lu currently not supported";
    v20 = 12;
LABEL_18:
    _os_log_impl(&dword_1C9B70000, v18, OS_LOG_TYPE_ERROR, v19, buf, v20);
    goto LABEL_36;
  }

  if ([embeddingCopy length] != 2048)
  {
    goto LABEL_36;
  }

  if (([objc_opt_class() isBridgeVersion:+[VCPVideoTransformerBackbone embeddingVersionForRevision:](VCPVideoTransformerBackbone compatibleWithEmbeddingVersion:{"embeddingVersionForRevision:", -[_MADObjCModelCatalogModel getBridgeEmbeddingVersion](self->_modelCatalogModel, "getBridgeEmbeddingVersion")), +[VCPVideoTransformerBackbone embeddingVersionForRevision:](VCPVideoTransformerBackbone, "embeddingVersionForRevision:", self->_revision)}] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    getBridgeEmbeddingVersion = [(_MADObjCModelCatalogModel *)self->_modelCatalogModel getBridgeEmbeddingVersion];
    revision = self->_revision;
    *buf = 134218240;
    *&buf[4] = getBridgeEmbeddingVersion;
    *&buf[12] = 2048;
    *&buf[14] = revision;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "Bridge embedding revision %lu not compatible with VCPMUBackboneRevision %lu";
    v20 = 22;
    goto LABEL_18;
  }

  if (!self->_mLLMbridge)
  {
    v37 = [(_MADObjCModelCatalogModel *)self->_modelCatalogModel getBridgeURL:0];
    v40 = [MEMORY[0x1E695DFF8] URLWithString:@"model" relativeToURL:?];
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"mllm_bridge"];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v40;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Loading bridge from ModelCatalog at:%@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E695DFF8];
    path = [v40 path];
    v25 = [path stringByAppendingPathExtension:@"mlmodelc"];
    v26 = [v23 fileURLWithPath:v25];

    v41 = 0;
    v27 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:v26 error:&v41];
    v38 = v41;
    if (v27)
    {
      modelDescription = [v27 modelDescription];
      inputDescriptionsByName = [modelDescription inputDescriptionsByName];
      allKeys = [inputDescriptionsByName allKeys];

      modelDescription2 = [v27 modelDescription];
      outputDescriptionsByName = [modelDescription2 outputDescriptionsByName];
      allKeys2 = [outputDescriptionsByName allKeys];

      if (self->_useSharedModel)
      {
        v34 = [objc_opt_class() sharedModel:v40 identifier:v39 outputNames:allKeys2 inputNames:allKeys functionName:@"main" precompiled:0];
      }

      else
      {
        v34 = [[VCPCNNModelEspressoV2 alloc] initWithParameters:v40 outputNames:allKeys2 inputNames:allKeys functionName:@"main" precompiled:0];
      }

      mLLMbridge = self->_mLLMbridge;
      self->_mLLMbridge = v34;
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v38;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load bridge model: %@", buf, 0xCu);
    }

    if (!v27)
    {
      goto LABEL_36;
    }

    if (!self->_mLLMbridge)
    {
      v10 = -108;
      goto LABEL_37;
    }
  }

  v9 = embeddingCopy;
  v10 = -[VCPCNNModelEspressoV2 espressoForward:](self->_mLLMbridge, "espressoForward:", [embeddingCopy bytes]);
  if (!v10)
  {
    outputsSize = [(VCPCNNModelEspressoV2 *)self->_mLLMbridge outputsSize];
    if ([outputsSize count])
    {
      v12 = self->_mLLMbridge;
      if (v12)
      {
        [(VCPCNNModelEspressoV2 *)v12 outputs];
        v14 = *buf;
        v13 = *&buf[8];
        v42 = buf;
        std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v42);
        if (v13 != v14)
        {
          [(VCPCNNModelEspressoV2 *)self->_mLLMbridge outputs];
          v15 = [VCPVideoTransformerBackbone getNSDataFromOuput:**buf isFP16:1];
          bridgeEmbedding = self->_bridgeEmbedding;
          self->_bridgeEmbedding = v15;

          v42 = buf;
          std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v42);
          v17 = self->_bridgeEmbedding == 0;

          if (!v17)
          {
            goto LABEL_14;
          }

LABEL_36:
          v10 = -18;
          goto LABEL_37;
        }
      }

      else
      {
        memset(buf, 0, sizeof(buf));
        v42 = buf;
        std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v42);
      }
    }

    v10 = 1;
  }

LABEL_37:

  return v10;
}

@end