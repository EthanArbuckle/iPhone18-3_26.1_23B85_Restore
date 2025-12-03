@interface VCPImageEmbeddingRequest
- (BOOL)cleanupWithOptions:(id)options error:(id *)error;
- (BOOL)updateWithOptions:(id)options error:(id *)error;
- (CGSize)preferredInputSizeWithOptions:(id)options error:(id *)error;
- (VCPImageEmbeddingRequest)initWithOptions:(id)options;
- (id)processImage:(__CVBuffer *)image withOptions:(id)options error:(id *)error;
@end

@implementation VCPImageEmbeddingRequest

- (VCPImageEmbeddingRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v20.receiver = self;
  v20.super_class = VCPImageEmbeddingRequest;
  v5 = [(VCPRequest *)&v20 initWithOptions:optionsCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

  revision = v5->super._revision;
  if (!revision)
  {
    if (_os_feature_enabled_impl())
    {
      revision = 9;
    }

    else
    {
      revision = 7;
    }

    v6->super._revision = revision;
  }

  if (revision - 8 >= 2)
  {
    if (revision == 7)
    {
      v8 = 6;
LABEL_16:
      v12 = [VCPImageBackboneAnalyzer alloc];
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      v14 = [(VCPImageBackboneAnalyzer *)v12 initWithRequestedAnalyses:0x1000000000000 andRevision:v13 useSharedModel:0];
      analyzer = v6->_analyzer;
      v6->_analyzer = v14;

      goto LABEL_17;
    }

    v8 = 5;
  }

  else
  {
    v8 = 7;
  }

  v9 = revision > 9;
  v10 = (1 << revision) & 0x320;
  if (!v9 && v10 != 0)
  {
    goto LABEL_16;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19[0] = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPImageEmbeddingRequest only supports revision 5 (MD5), revision 7 (MD6) and revision 8 (MD7)", v19, 2u);
  }

LABEL_17:
  if (v6->_analyzer)
  {
    v16 = v6;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v17;
}

- (id)processImage:(__CVBuffer *)image withOptions:(id)options error:(id *)error
{
  imageCopy = image;
  v33[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  analyzer = self->_analyzer;
  v28 = 0;
  LODWORD(imageCopy) = [(VCPImageBackboneAnalyzer *)analyzer analyzePixelBuffer:imageCopy flags:0 results:&v28 cancel:&__block_literal_global_7];
  v10 = v28;
  v11 = v10;
  if (imageCopy)
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v12 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPImageEmbeddingRequest image embedding analysis failed"];
    v33[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    *error = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v14];
  }

  else
  {
    v13 = [v10 objectForKeyedSubscript:@"ImageEmbeddingResults"];
    if (![v13 count])
    {
      goto LABEL_22;
    }

    v15 = [v13 objectAtIndexedSubscript:0];
    v16 = [v15 objectForKeyedSubscript:@"attributes"];
    v14 = [v16 objectForKeyedSubscript:@"embeddings"];

    v17 = [v13 objectAtIndexedSubscript:0];
    v18 = [v17 objectForKeyedSubscript:@"attributes"];
    v19 = [v18 objectForKeyedSubscript:@"embeddingVersion"];

    if (!v19 || [v19 intValue] != self->super._revision)
    {
      if ([v19 intValue] == 9 && self->super._revision == 8)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPImageEmbeddingRequest please use MADUnifiedEmbeddingVersion_LuckCheerMD7v2", buf, 2u);
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPImageEmbeddingRequest unexpected image embedding version", buf, 2u);
        }

        if (error)
        {
          v20 = MEMORY[0x1E696ABC0];
          v30 = *MEMORY[0x1E696A578];
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPImageEmbeddingRequest unexpected image embedding version. Expect %d, got %d", self->super._revision, objc_msgSend(v19, "intValue")];
          v31 = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          *error = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v22];
        }
      }
    }

    if (!v14)
    {
      goto LABEL_22;
    }

    v23 = objc_alloc_init(VCPImageEmbeddingObservation);
    [(VCPImageEmbeddingObservation *)v23 setVersion:self->super._revision];
    [(VCPImageEmbeddingObservation *)v23 setData:v14];
    [(VCPImageEmbeddingObservation *)v23 setType:1];
    -[VCPImageEmbeddingObservation setCount:](v23, "setCount:", [v14 length] >> 1);
    v29[0] = &unk_1F49BB9B0;
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VCPImageEmbeddingObservation count](v23, "count")}];
    v29[1] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    [(VCPImageEmbeddingObservation *)v23 setShape:v25];

    if (v23)
    {
      [array addObject:v23];
    }
  }

LABEL_22:
LABEL_23:

  return array;
}

- (BOOL)updateWithOptions:(id)options error:(id *)error
{
  width = self->super._width;
  height = self->super._height;
  v11.receiver = self;
  v11.super_class = VCPImageEmbeddingRequest;
  [(VCPRequest *)&v11 updateWithOptions:options error:error];
  v7 = self->super._width;
  if (width != v7)
  {
    if (v7 < 1)
    {
      return 1;
    }

    v8 = self->super._height;
    goto LABEL_10;
  }

  v8 = self->super._height;
  if (width >= 1 && height != v8)
  {
LABEL_10:
    if (v8 >= 1)
    {
      self->_preferredWidth = v7;
      self->_preferredHeight = self->super._height;
      self->_preferredFormat = 1111970369;
    }
  }

  return 1;
}

- (CGSize)preferredInputSizeWithOptions:(id)options error:(id *)error
{
  preferredWidth = self->_preferredWidth;
  preferredHeight = self->_preferredHeight;
  result.height = preferredHeight;
  result.width = preferredWidth;
  return result;
}

- (BOOL)cleanupWithOptions:(id)options error:(id *)error
{
  analyzer = self->_analyzer;
  self->_analyzer = 0;

  return 1;
}

@end