@interface MADVSKEmbeddingResults
+ (id)resultsFromAnalysis:(id)a3 imageEmbeddingVersion:(signed __int16)a4 videoEmbeddingVersion:(signed __int16)a5 asset:(id)a6 imageOnly:(BOOL)a7;
+ (id)resultsWithImageEmbedding:(id)a3 imageEmbeddingVersion:(signed __int16)a4 videoEmbeddingAsset:(id)a5 videoEmbeddingVersion:(signed __int16)a6;
- (MADVSKEmbeddingResults)initWithImageEmbedding:(id)a3 imageEmbeddingVersion:(signed __int16)a4 videoEmbedding:(id)a5 videoEmbeddingVersion:(signed __int16)a6;
- (id)description;
- (void)setImageEmbedding:(id)a3 version:(signed __int16)a4;
- (void)setVideoEmbedding:(id)a3 version:(signed __int16)a4;
@end

@implementation MADVSKEmbeddingResults

- (MADVSKEmbeddingResults)initWithImageEmbedding:(id)a3 imageEmbeddingVersion:(signed __int16)a4 videoEmbedding:(id)a5 videoEmbeddingVersion:(signed __int16)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MADVSKEmbeddingResults;
  v12 = [(MADVSKEmbeddingResults *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(MADVSKEmbeddingResults *)v12 setImageEmbedding:v10 version:v8];
    [(MADVSKEmbeddingResults *)v13 setVideoEmbedding:v11 version:v6];
  }

  return v13;
}

+ (id)resultsWithImageEmbedding:(id)a3 imageEmbeddingVersion:(signed __int16)a4 videoEmbeddingAsset:(id)a5 videoEmbeddingVersion:(signed __int16)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = [[a1 alloc] initWithImageEmbedding:v10 imageEmbeddingVersion:v8 videoEmbedding:v11 videoEmbeddingVersion:v6];

  return v12;
}

+ (id)resultsFromAnalysis:(id)a3 imageEmbeddingVersion:(signed __int16)a4 videoEmbeddingVersion:(signed __int16)a5 asset:(id)a6 imageOnly:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v10 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = MEMORY[0x1E696AEC0];
  v14 = [v12 localIdentifier];
  v15 = [v12 vcp_typeDescription];
  v16 = v15;
  v17 = &stru_1F496CB30;
  if (v7)
  {
    v17 = @"|ImageOnly";
  }

  v18 = [v13 stringWithFormat:@"[MADVSKEmbeddingResults][%@][%@%@]", v14, v15, v17];

  if ([v12 isPhoto] & 1) != 0 || (objc_msgSend(v12, "isVideo"))
  {
    if (v7)
    {
      v19 = MEMORY[0x1E69DF5F8];
      v20 = [v12 localIdentifier];
      v34 = 0;
      v21 = [v19 mad_imageAssetWithLocalIdentifier:v20 mediaAnalysisResults:v11 error:&v34];
      v22 = v34;

      if (!v21 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = v18;
        v37 = 2112;
        v38 = v22;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to extract image embedding VSKAsset: %@", buf, 0x16u);
      }
    }

    else
    {
      if ([v12 isPhoto])
      {
        v25 = MEMORY[0x1E69DF5F8];
        v26 = [v12 localIdentifier];
        v33 = 0;
        v21 = [v25 mad_imageAssetWithLocalIdentifier:v26 mediaAnalysisResults:v11 error:&v33];
        v27 = v33;

        if (!v21 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v36 = v18;
          v37 = 2112;
          v38 = v27;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to extract image embedding VSKAsset: %@", buf, 0x16u);
        }
      }

      else
      {
        v21 = 0;
      }

      if (([v12 vcp_isLivePhoto] & 1) != 0 || objc_msgSend(v12, "isVideo"))
      {
        if (([v11 vcp_types] & 0x80000000000) != 0)
        {
          v29 = MEMORY[0x1E69DF5F8];
          v30 = [v12 localIdentifier];
          v32 = 0;
          v23 = [v29 mad_videoAssetWithLocalIdentifier:v30 mediaAnalysisResults:v11 error:&v32];
          v31 = v32;

          if (!v23 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v36 = v18;
            v37 = 2112;
            v38 = v31;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to extract video embedding VSKAsset: %@", buf, 0x16u);
          }

          goto LABEL_12;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = v18;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to extract video embedding VSKAsset: embedding not computed yet", buf, 0xCu);
        }
      }
    }

    v23 = 0;
LABEL_12:
    v24 = [MADVSKEmbeddingResults resultsWithImageEmbedding:v21 imageEmbeddingVersion:v10 videoEmbeddingAsset:v23 videoEmbeddingVersion:v9];

    goto LABEL_23;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v18;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Asset type is unsupported for embedding", buf, 0xCu);
  }

  v24 = 0;
LABEL_23:

  return v24;
}

- (void)setImageEmbedding:(id)a3 version:(signed __int16)a4
{
  objc_storeStrong(&self->_imageEmbeddingAsset, a3);
  if (a3)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0;
  }

  self->_imageEmbeddingVersion = v7;
}

- (void)setVideoEmbedding:(id)a3 version:(signed __int16)a4
{
  objc_storeStrong(&self->_videoEmbeddingAsset, a3);
  if (a3)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0;
  }

  self->_videoEmbeddingVersion = v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  if (self->_imageEmbeddingAsset)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"image embedding: %@ (v%d), ", v6, self->_imageEmbeddingVersion];
  if (self->_videoEmbeddingAsset)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"video embedding: %@ (v%d)>", v7, self->_videoEmbeddingVersion];

  return v3;
}

@end