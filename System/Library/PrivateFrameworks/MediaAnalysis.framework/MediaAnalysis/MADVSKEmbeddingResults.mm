@interface MADVSKEmbeddingResults
+ (id)resultsFromAnalysis:(id)analysis imageEmbeddingVersion:(signed __int16)version videoEmbeddingVersion:(signed __int16)embeddingVersion asset:(id)asset imageOnly:(BOOL)only;
+ (id)resultsWithImageEmbedding:(id)embedding imageEmbeddingVersion:(signed __int16)version videoEmbeddingAsset:(id)asset videoEmbeddingVersion:(signed __int16)embeddingVersion;
- (MADVSKEmbeddingResults)initWithImageEmbedding:(id)embedding imageEmbeddingVersion:(signed __int16)version videoEmbedding:(id)videoEmbedding videoEmbeddingVersion:(signed __int16)embeddingVersion;
- (id)description;
- (void)setImageEmbedding:(id)embedding version:(signed __int16)version;
- (void)setVideoEmbedding:(id)embedding version:(signed __int16)version;
@end

@implementation MADVSKEmbeddingResults

- (MADVSKEmbeddingResults)initWithImageEmbedding:(id)embedding imageEmbeddingVersion:(signed __int16)version videoEmbedding:(id)videoEmbedding videoEmbeddingVersion:(signed __int16)embeddingVersion
{
  embeddingVersionCopy = embeddingVersion;
  versionCopy = version;
  embeddingCopy = embedding;
  videoEmbeddingCopy = videoEmbedding;
  v15.receiver = self;
  v15.super_class = MADVSKEmbeddingResults;
  v12 = [(MADVSKEmbeddingResults *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(MADVSKEmbeddingResults *)v12 setImageEmbedding:embeddingCopy version:versionCopy];
    [(MADVSKEmbeddingResults *)v13 setVideoEmbedding:videoEmbeddingCopy version:embeddingVersionCopy];
  }

  return v13;
}

+ (id)resultsWithImageEmbedding:(id)embedding imageEmbeddingVersion:(signed __int16)version videoEmbeddingAsset:(id)asset videoEmbeddingVersion:(signed __int16)embeddingVersion
{
  embeddingVersionCopy = embeddingVersion;
  versionCopy = version;
  embeddingCopy = embedding;
  assetCopy = asset;
  v12 = [[self alloc] initWithImageEmbedding:embeddingCopy imageEmbeddingVersion:versionCopy videoEmbedding:assetCopy videoEmbeddingVersion:embeddingVersionCopy];

  return v12;
}

+ (id)resultsFromAnalysis:(id)analysis imageEmbeddingVersion:(signed __int16)version videoEmbeddingVersion:(signed __int16)embeddingVersion asset:(id)asset imageOnly:(BOOL)only
{
  onlyCopy = only;
  embeddingVersionCopy = embeddingVersion;
  versionCopy = version;
  v39 = *MEMORY[0x1E69E9840];
  analysisCopy = analysis;
  assetCopy = asset;
  v13 = MEMORY[0x1E696AEC0];
  localIdentifier = [assetCopy localIdentifier];
  vcp_typeDescription = [assetCopy vcp_typeDescription];
  v16 = vcp_typeDescription;
  v17 = &stru_1F496CB30;
  if (onlyCopy)
  {
    v17 = @"|ImageOnly";
  }

  v18 = [v13 stringWithFormat:@"[MADVSKEmbeddingResults][%@][%@%@]", localIdentifier, vcp_typeDescription, v17];

  if ([assetCopy isPhoto] & 1) != 0 || (objc_msgSend(assetCopy, "isVideo"))
  {
    if (onlyCopy)
    {
      v19 = MEMORY[0x1E69DF5F8];
      localIdentifier2 = [assetCopy localIdentifier];
      v34 = 0;
      v21 = [v19 mad_imageAssetWithLocalIdentifier:localIdentifier2 mediaAnalysisResults:analysisCopy error:&v34];
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
      if ([assetCopy isPhoto])
      {
        v25 = MEMORY[0x1E69DF5F8];
        localIdentifier3 = [assetCopy localIdentifier];
        v33 = 0;
        v21 = [v25 mad_imageAssetWithLocalIdentifier:localIdentifier3 mediaAnalysisResults:analysisCopy error:&v33];
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

      if (([assetCopy vcp_isLivePhoto] & 1) != 0 || objc_msgSend(assetCopy, "isVideo"))
      {
        if (([analysisCopy vcp_types] & 0x80000000000) != 0)
        {
          v29 = MEMORY[0x1E69DF5F8];
          localIdentifier4 = [assetCopy localIdentifier];
          v32 = 0;
          v23 = [v29 mad_videoAssetWithLocalIdentifier:localIdentifier4 mediaAnalysisResults:analysisCopy error:&v32];
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
    v24 = [MADVSKEmbeddingResults resultsWithImageEmbedding:v21 imageEmbeddingVersion:versionCopy videoEmbeddingAsset:v23 videoEmbeddingVersion:embeddingVersionCopy];

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

- (void)setImageEmbedding:(id)embedding version:(signed __int16)version
{
  objc_storeStrong(&self->_imageEmbeddingAsset, embedding);
  if (embedding)
  {
    versionCopy = version;
  }

  else
  {
    versionCopy = 0;
  }

  self->_imageEmbeddingVersion = versionCopy;
}

- (void)setVideoEmbedding:(id)embedding version:(signed __int16)version
{
  objc_storeStrong(&self->_videoEmbeddingAsset, embedding);
  if (embedding)
  {
    versionCopy = version;
  }

  else
  {
    versionCopy = 0;
  }

  self->_videoEmbeddingVersion = versionCopy;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  if (self->_imageEmbeddingAsset)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [string appendFormat:@"image embedding: %@ (v%d), ", v6, self->_imageEmbeddingVersion];
  if (self->_videoEmbeddingAsset)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [string appendFormat:@"video embedding: %@ (v%d)>", v7, self->_videoEmbeddingVersion];

  return string;
}

@end