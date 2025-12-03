@interface MPCAssetLoadPropertiesLocalFileEvaluation
- (BOOL)fileShouldBeUpdated;
- (MPCAssetLoadPropertiesLocalFileEvaluation)initWithFileAsset:(id)asset;
- (id)description;
- (id)humanDescription;
@end

@implementation MPCAssetLoadPropertiesLocalFileEvaluation

- (BOOL)fileShouldBeUpdated
{
  if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)self status]== 3 && [(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileIsDownloaded])
  {
    return 0;
  }

  if (![(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileIsValid])
  {
    return 1;
  }

  if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileIsHLS]&& ![(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileMatchesRequiredFileFormat]&& [(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileMatchesRequiredQuality])
  {
    return 0;
  }

  if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileMatchesRequiredFileFormat])
  {
    return ![(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileMatchesRequiredQuality];
  }

  else
  {
    return 1;
  }
}

- (id)humanDescription
{
  v3 = objc_opt_new();
  v4 = [(MPCAssetLoadPropertiesLocalFileEvaluation *)self status]- 2;
  if (v4 <= 5)
  {
    [v3 addObject:off_1E82332F8[v4]];
  }

  if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileIsDownloaded])
  {
    [v3 addObject:@"downloaded"];
  }

  if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileIsCached])
  {
    [v3 addObject:@"cached"];
  }

  if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileIsHLS])
  {
    v5 = @"HLS format";
  }

  else
  {
    v5 = @"CRABS format";
  }

  [v3 addObject:v5];
  v6 = MEMORY[0x1E696AEC0];
  fileQualityType = [(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileQualityType];
  if (fileQualityType == 1)
  {
    v8 = @"Low";
  }

  else
  {
    v8 = @"Unknown";
  }

  if (fileQualityType == 2)
  {
    v8 = @"High";
  }

  v9 = [v6 stringWithFormat:@"%@ quality", v8];
  [v3 addObject:v9];

  v10 = MEMORY[0x1E696AEC0];
  fileAssetType = [(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileAssetType];
  if ((fileAssetType - 1) > 4)
  {
    v12 = @"Unspecified";
  }

  else
  {
    v12 = off_1E8233348[fileAssetType - 1];
  }

  v13 = [v10 stringWithFormat:@"%@ audio", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  filePath = [(MPCAssetLoadPropertiesLocalFileEvaluation *)self filePath];
  v16 = [v14 stringWithFormat:@"[url: %@]", filePath];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  hLSContentPolicy = [(MPCAssetLoadPropertiesLocalFileEvaluation *)self HLSContentPolicy];
  if (hLSContentPolicy > 3)
  {
    v19 = @"Unspecified";
  }

  else
  {
    v19 = off_1E8233328[hLSContentPolicy];
  }

  v20 = [v17 stringWithFormat:@"[HLSContentPolicy: %@]", v19];
  [v3 addObject:v20];

  v21 = MEMORY[0x1E696AEC0];
  v22 = [v3 componentsJoinedByString:{@", "}];
  v23 = [v21 stringWithFormat:@"File: %@", v22];

  [v3 removeAllObjects];
  v24 = MEMORY[0x1E696AEC0];
  expectedQualityType = [(MPCAssetLoadPropertiesLocalFileEvaluation *)self expectedQualityType];
  if (expectedQualityType == 1)
  {
    v26 = @"Low";
  }

  else
  {
    v26 = @"Unknown";
  }

  if (expectedQualityType == 2)
  {
    v26 = @"High";
  }

  v27 = [v24 stringWithFormat:@"%@ quality", v26];
  [v3 addObject:v27];

  v28 = MEMORY[0x1E696AEC0];
  expectedAssetType = [(MPCAssetLoadPropertiesLocalFileEvaluation *)self expectedAssetType];
  if ((expectedAssetType - 1) > 4)
  {
    v30 = @"Unspecified";
  }

  else
  {
    v30 = off_1E8233348[expectedAssetType - 1];
  }

  v31 = [v28 stringWithFormat:@"%@ audio", v30];
  [v3 addObject:v31];

  v32 = MEMORY[0x1E696AEC0];
  v33 = [v3 componentsJoinedByString:{@", "}];
  v34 = [v32 stringWithFormat:@"Expectation: %@", v33];

  [v3 removeAllObjects];
  if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileMatchesRequiredFileFormat])
  {
    v35 = @"file format ✅";
  }

  else
  {
    v35 = @"file format ❌";
  }

  [v3 addObject:v35];
  if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)self fileMatchesRequiredQuality])
  {
    v36 = @"quality/audio ✅";
  }

  else
  {
    v36 = @"quality/audio ❌";
  }

  [v3 addObject:v36];
  v37 = [(MPCAssetLoadPropertiesLocalFileEvaluation *)self recommendation]- 1;
  if (v37 <= 2)
  {
    [v3 addObject:off_1E8233370[v37]];
  }

  v38 = [v3 componentsJoinedByString:{@", "}];
  v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@ -> %@", v23, v34, v38];

  return v39;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  humanDescription = [(MPCAssetLoadPropertiesLocalFileEvaluation *)self humanDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, humanDescription];

  return v6;
}

- (MPCAssetLoadPropertiesLocalFileEvaluation)initWithFileAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = MPCAssetLoadPropertiesLocalFileEvaluation;
  v5 = [(MPCAssetLoadPropertiesLocalFileEvaluation *)&v9 init];
  if (v5)
  {
    v6 = [assetCopy copy];
    fileAsset = v5->_fileAsset;
    v5->_fileAsset = v6;
  }

  return v5;
}

@end