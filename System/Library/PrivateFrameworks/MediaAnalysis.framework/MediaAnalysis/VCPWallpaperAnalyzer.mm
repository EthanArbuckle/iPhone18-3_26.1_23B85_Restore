@interface VCPWallpaperAnalyzer
+ (id)sharedModelPool;
- (VCPWallpaperAnalyzer)init;
- (int)analyzeWithSceneprint:(id)sceneprint results:(id *)results cancel:(id)cancel;
- (int)createModel;
@end

@implementation VCPWallpaperAnalyzer

+ (id)sharedModelPool
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = [v2 sharedInstanceWithIdentifier:@"VCPWallpaperAnalyzer.sharedModelPool" andCreationBlock:&__block_literal_global_20];

  return v3;
}

VCPCNNModelEspresso *__39__VCPWallpaperAnalyzer_sharedModelPool__block_invoke_2()
{
  v0 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v1 = [v0 resourceURL];

  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"quantized_9hy8wvx5wz_iteration_47_model.espresso.net" relativeToURL:v1];
  v3 = [[VCPCNNModelEspresso alloc] initWithParameters:v2 inputNames:0 outputNames:0 properties:0];

  return v3;
}

- (VCPWallpaperAnalyzer)init
{
  v11.receiver = self;
  v11.super_class = VCPWallpaperAnalyzer;
  v2 = [(VCPWallpaperAnalyzer *)&v11 init];
  v3 = v2;
  if (v2)
  {
    resConfig = v2->_resConfig;
    v2->_resConfig = &stru_1F496CB30;

    sharedModelPool = [objc_opt_class() sharedModelPool];
    getObject = [sharedModelPool getObject];
    modelEspresso = v3->_modelEspresso;
    v3->_modelEspresso = getObject;

    if (v3->_modelEspresso)
    {
      v8 = v3;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v9;
}

- (int)createModel
{
  selfCopy = self;
  object = [(VCPLoaned *)self->_modelEspresso object];
  LODWORD(selfCopy) = [object prepareModelWithConfig:selfCopy->_resConfig];

  return selfCopy;
}

- (int)analyzeWithSceneprint:(id)sceneprint results:(id *)results cancel:(id)cancel
{
  v28 = *MEMORY[0x1E69E9840];
  sceneprintCopy = sceneprint;
  if ([sceneprintCopy requestRevision] == 3737841671)
  {
    v8 = objc_autoreleasePoolPush();
    createModel = [(VCPWallpaperAnalyzer *)self createModel];
    if (createModel)
    {
      v10 = 0;
    }

    else
    {
      object = [(VCPLoaned *)self->_modelEspresso object];
      descriptorData = [sceneprintCopy descriptorData];
      createModel = [object espressoForward:{objc_msgSend(descriptorData, "bytes")}];

      v10 = createModel == 0;
    }

    objc_autoreleasePoolPop(v8);
    if (v10)
    {
      object2 = [(VCPLoaned *)self->_modelEspresso object];
      [object2 outputBlob];
      v14 = *(*buf + 4);

      if (results)
      {
        v23 = @"WPResults";
        v20 = @"wallpaperScore";
        LODWORD(v15) = v14;
        v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
        v21 = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v22 = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
        v24 = v18;
        *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = [sceneprintCopy requestRevision];
      v26 = 2048;
      v27 = 3737841671;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid sceneprint revision: %lu (required %lu)", buf, 0x16u);
    }

    createModel = -50;
  }

  return createModel;
}

@end