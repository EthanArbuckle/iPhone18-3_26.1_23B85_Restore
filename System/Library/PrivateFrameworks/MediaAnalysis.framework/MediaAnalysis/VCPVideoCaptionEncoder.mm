@interface VCPVideoCaptionEncoder
+ (id)sharedModel:(id)model properties:(id)properties;
- (VCPVideoCaptionEncoder)initWithModelPath:(id)path;
- (int)inference:(float *)inference;
@end

@implementation VCPVideoCaptionEncoder

- (VCPVideoCaptionEncoder)initWithModelPath:(id)path
{
  v57[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v36.receiver = self;
  v36.super_class = VCPVideoCaptionEncoder;
  v5 = [(VCPVideoCaptionEncoder *)&v36 init];
  if (v5)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = pathCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VideoCaption] VCPVideoCaptionEncoder: start loading model at: %@", buf, 0xCu);
    }

    if (pathCopy)
    {
      v5->_forceNNGraph = !DeviceGeqD5x();
      v6 = [MEMORY[0x1E695DFF8] URLWithString:@"model_info.json" relativeToURL:pathCopy];
      v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6];
      v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
      v9 = v8;
      if (v5->_forceNNGraph)
      {
        v10 = [v8 objectForKeyedSubscript:@"net_file"];
        [v10 objectForKeyedSubscript:@"d4x"];
      }

      else
      {
        v10 = [v8 objectForKeyedSubscript:@"net_file"];
        [v10 objectForKeyedSubscript:@"d5x"];
      }
      v12 = ;

      v13 = [MEMORY[0x1E695DFF8] URLWithString:v12 relativeToURL:pathCopy];
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VideoCaption] VCPVideoCaptionEncoder: model to load %@", buf, 0xCu);
      }

      v56[0] = @"forceNNGraph";
      v14 = [MEMORY[0x1E696AD98] numberWithBool:v5->_forceNNGraph];
      v56[1] = @"sharedContext";
      v57[0] = v14;
      v15 = [MEMORY[0x1E696AD98] numberWithBool:!v5->_forceNNGraph];
      v57[1] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];

      v17 = [objc_opt_class() sharedModel:v13 properties:v16];
      modelEspresso = v5->_modelEspresso;
      v5->_modelEspresso = v17;

      v19 = v5->_modelEspresso;
      if (!v19 || [(VCPCNNModelEspresso *)v19 prepareModelWithConfig:&stru_1F496CB30])
      {
        v11 = 0;
LABEL_16:

        goto LABEL_17;
      }

      if (MediaAnalysisLogLevel() < 5)
      {
LABEL_31:
        v11 = v5;
        if (MediaAnalysisLogLevel() >= 5)
        {
          v11 = v5;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VideoCaption] VCPVideoCaptionEncoder: successfully loaded model", buf, 2u);
            v11 = v5;
          }
        }

        goto LABEL_16;
      }

      v22 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:

        goto LABEL_31;
      }

      v24 = v5->_modelEspresso;
      if (v24)
      {
        [(VCPCNNModelEspresso *)v24 inputBlob];
        v25 = v44;
        v26 = v5->_modelEspresso;
        if (v26)
        {
          [(VCPCNNModelEspresso *)v26 inputBlob];
          v31 = v35;
          v32 = v25;
          v27 = v5->_modelEspresso;
          if (v27)
          {
            [(VCPCNNModelEspresso *)v27 inputBlob];
            v28 = v34;
            v29 = v5->_modelEspresso;
            if (v29)
            {
              [(VCPCNNModelEspresso *)v29 inputBlob];
              v30 = v33;
LABEL_29:
              *v48 = 67109888;
              v49 = v32;
              v50 = 1024;
              v51 = v31;
              v52 = 1024;
              v53 = v28;
              v54 = 1024;
              v55 = v30;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VideoCaption] VCPVideoCaptionEncoder: inputBlob.nframes = %d, inputBlob.height = %d, inputBlob.width = %d, inputBlob.channels = %d", v48, 0x1Au);
              goto LABEL_30;
            }

LABEL_28:
            v30 = 0;
            goto LABEL_29;
          }

LABEL_27:
          v28 = 0;
          goto LABEL_28;
        }
      }

      else
      {
        v25 = 0;
        v47 = 0;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        *buf = 0u;
        v38 = 0u;
      }

      v31 = 0;
      v32 = v25;
      goto LABEL_27;
    }
  }

  v11 = 0;
LABEL_17:
  v20 = v11;

  return v20;
}

+ (id)sharedModel:(id)model properties:(id)properties
{
  modelCopy = model;
  propertiesCopy = properties;
  v7 = +[VCPSharedInstanceManager sharedManager];
  v8 = MEMORY[0x1E696AEC0];
  absoluteString = [modelCopy absoluteString];
  v10 = [v8 stringWithFormat:@"%@_%@", @"VCPVideoCaptionEncoder", absoluteString];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__VCPVideoCaptionEncoder_sharedModel_properties___block_invoke;
  v15[3] = &unk_1E834CD98;
  v11 = modelCopy;
  v16 = v11;
  v12 = propertiesCopy;
  v17 = v12;
  v13 = [v7 sharedInstanceWithIdentifier:v10 andCreationBlock:v15];

  return v13;
}

VCPCNNModelEspresso *__49__VCPVideoCaptionEncoder_sharedModel_properties___block_invoke(uint64_t a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:*(a1 + 32) inputNames:0 outputNames:0 properties:*(a1 + 40)];

  return v1;
}

- (int)inference:(float *)inference
{
  v4 = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:inference];
  if (!v4)
  {
    modelEspresso = self->_modelEspresso;
    if (modelEspresso)
    {
      [(VCPCNNModelEspresso *)modelEspresso outputBlob];
      v6 = self->_modelEspresso;
      self->_embeddingHeight = v14;
      if (v6)
      {
        [(VCPCNNModelEspresso *)v6 outputBlob];
        v7 = self->_modelEspresso;
        self->_embeddingWidth = v13;
        if (v7)
        {
          [(VCPCNNModelEspresso *)v7 outputBlob];
          v8 = self->_modelEspresso;
          self->_embeddingChannels = v15;
          if (v8)
          {
            [(VCPCNNModelEspresso *)v8 outputBlob];
            v9 = self->_modelEspresso;
            self->_embeddingSequenceLength = v16;
            if (v9)
            {
              [(VCPCNNModelEspresso *)v9 outputBlob];
              v10 = v12;
            }

            else
            {
              v10 = 0;
            }

            goto LABEL_12;
          }

LABEL_11:
          v10 = 0;
          self->_embeddingSequenceLength = 0;
LABEL_12:
          self->_videoEmbedding = v10;
          return v4;
        }

LABEL_10:
        self->_embeddingChannels = 0;
        goto LABEL_11;
      }
    }

    else
    {
      self->_embeddingHeight = 0;
    }

    self->_embeddingWidth = 0;
    goto LABEL_10;
  }

  return v4;
}

@end