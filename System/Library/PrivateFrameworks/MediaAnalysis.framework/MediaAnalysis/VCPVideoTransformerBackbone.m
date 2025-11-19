@interface VCPVideoTransformerBackbone
+ (id)getNSDataFromOuput:(id)a3 isFP16:(BOOL)a4;
+ (id)sharedModel:(id)a3 identifier:(id)a4 outputNames:(id)a5 inputNames:(id)a6 functionName:(id)a7;
+ (unint64_t)embeddingVersion;
+ (unint64_t)embeddingVersionForRevision:(int64_t)a3;
- (VCPVideoTransformerBackbone)initWithConfig:(id)a3;
- (int)inference:(id)a3;
- (unint64_t)inputTensorSize;
- (unint64_t)inputTensorType;
@end

@implementation VCPVideoTransformerBackbone

+ (unint64_t)embeddingVersion
{
  v2 = objc_opt_class();
  v3 = [objc_opt_class() revision];

  return [v2 embeddingVersionForRevision:v3];
}

+ (unint64_t)embeddingVersionForRevision:(int64_t)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if ((a3 - 2) < 6)
  {
    return qword_1C9F63BF8[a3 - 2];
  }

  v4 = a3;
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Backbone revision %d is not supported", v5, 8u);
  }

  return 0;
}

+ (id)getNSDataFromOuput:(id)a3 isFP16:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 tensorType] == 2)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v5 length:{"getData:", 2), 4 * objc_msgSend(v5, "tensorSize")}];
    v7 = v6;
    if (!v4)
    {
      goto LABEL_9;
    }

    v8 = MediaAnalysisConvertFloat32ToFloat16(v6);
LABEL_7:
    v10 = v8;

    v7 = v10;
    goto LABEL_9;
  }

  if ([v5 tensorType] == 1)
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v5 length:{"getData:", 1), 2 * objc_msgSend(v5, "tensorSize")}];
    v7 = v9;
    if (v4)
    {
      goto LABEL_9;
    }

    v8 = MediaAnalysisConvertFloat16ToFloat32(v9);
    goto LABEL_7;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

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
  v23[2] = __90__VCPVideoTransformerBackbone_sharedModel_identifier_outputNames_inputNames_functionName___block_invoke;
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

VCPCNNModelEspressoV2 *__90__VCPVideoTransformerBackbone_sharedModel_identifier_outputNames_inputNames_functionName___block_invoke(void *a1)
{
  v1 = [[VCPCNNModelEspressoV2 alloc] initWithParameters:a1[4] outputNames:a1[5] inputNames:a1[6] functionName:a1[7]];

  return v1;
}

- (VCPVideoTransformerBackbone)initWithConfig:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  self->_isFP16 = 0;
  v4 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v5 = [v4 resourceURL];

  v19.receiver = self;
  v19.super_class = VCPVideoTransformerBackbone;
  v6 = [(VCPVideoTransformerBackbone *)&v19 init];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [MEMORY[0x1E695DFF8] URLWithString:@"mubb_md7" relativeToURL:v5];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{+[VCPVideoTransformerBackbone revision](VCPVideoTransformerBackbone, "revision")}];
  v10 = [v9 stringValue];
  v11 = [v8 stringWithFormat:@"%@_%@", @"video_backbone", v10];

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v12 = +[VCPVideoTransformerBackbone revision];
    *buf = 67109120;
    v21 = v12;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPVideoTransformerBackbone use revision %d", buf, 8u);
  }

  v13 = [objc_opt_class() sharedModel:v7 identifier:v11 outputNames:&unk_1F49BF1D8 inputNames:&unk_1F49BF1F0 functionName:@"main_video"];
  modelEspressoV2 = v6->_modelEspressoV2;
  v6->_modelEspressoV2 = v13;

  v15 = v6->_modelEspressoV2 == 0;
  if (v15)
  {
    v16 = 0;
  }

  else
  {
LABEL_6:
    v16 = v6;
  }

  v17 = v16;

  return v17;
}

- (unint64_t)inputTensorType
{
  v2 = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 inputsType];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (unint64_t)inputTensorSize
{
  v2 = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 inputsSize];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (int)inference:(id)a3
{
  v4 = a3;
  v5 = -[VCPCNNModelEspressoV2 espressoForward:](self->_modelEspressoV2, "espressoForward:", [v4 getData:{-[VCPVideoTransformerBackbone inputTensorType](self, "inputTensorType")}]);
  if (!v5)
  {
    v6 = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 outputsSize];
    if ([v6 count])
    {
      modelEspressoV2 = self->_modelEspressoV2;
      if (modelEspressoV2)
      {
        [(VCPCNNModelEspressoV2 *)modelEspressoV2 outputs];
        v9 = v22;
        v8 = v23;
        v25 = &v22;
        std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v25);
        if (v8 != v9)
        {
          [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 outputs];
          v10 = *v22;
          v25 = &v22;
          std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v25);
          v11 = [objc_opt_class() getNSDataFromOuput:v10 isFP16:0];
          embedding = self->_embedding;
          self->_embedding = v11;

          if ([v6 count] >= 3)
          {
            v13 = self->_modelEspressoV2;
            if (v13)
            {
              [(VCPCNNModelEspressoV2 *)v13 outputs];
              v14 = v23 - v22;
              v25 = &v22;
              std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v25);
              if (v14 >= 0x11)
              {
                v15 = objc_opt_class();
                [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 outputs];
                v16 = [v15 getNSDataFromOuput:*(v22 + 8) isFP16:0];
                spatialEmbedding = self->_spatialEmbedding;
                self->_spatialEmbedding = v16;

                v25 = &v22;
                std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v25);
                v18 = objc_opt_class();
                [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 outputs];
                v19 = [v18 getNSDataFromOuput:*(v22 + 16) isFP16:0];
                hiddenEmbedding = self->_hiddenEmbedding;
                self->_hiddenEmbedding = v19;

                v25 = &v22;
                std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v25);
                v5 = 0;
LABEL_13:

                goto LABEL_14;
              }
            }

            else
            {
              v22 = 0;
              v23 = 0;
              v24 = 0;
              v25 = &v22;
              std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v25);
            }
          }

          v5 = 1;
          goto LABEL_13;
        }
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = &v22;
        std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v25);
      }
    }

    v5 = 1;
LABEL_14:
  }

  return v5;
}

@end