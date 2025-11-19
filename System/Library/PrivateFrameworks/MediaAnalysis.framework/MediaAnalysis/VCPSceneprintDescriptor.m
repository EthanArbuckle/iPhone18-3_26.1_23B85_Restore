@interface VCPSceneprintDescriptor
+ (id)descriptorWithData:(id)a3;
+ (id)descriptorWithImage:(__CVBuffer *)a3;
- (VCPSceneprintDescriptor)initWithData:(id)a3;
- (VCPSceneprintDescriptor)initWithImage:(__CVBuffer *)a3;
- (int)computeDistance:(float *)a3 toDescriptor:(id)a4;
@end

@implementation VCPSceneprintDescriptor

+ (id)descriptorWithImage:(__CVBuffer *)a3
{
  v3 = [[VCPSceneprintDescriptor alloc] initWithImage:a3];

  return v3;
}

+ (id)descriptorWithData:(id)a3
{
  v3 = a3;
  v4 = [[VCPSceneprintDescriptor alloc] initWithData:v3];

  return v4;
}

- (VCPSceneprintDescriptor)initWithImage:(__CVBuffer *)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = VCPSceneprintDescriptor;
  v4 = [(VCPSceneprintDescriptor *)&v33 init];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_30;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E69845B8]);
  v7 = [v6 initWithCVPixelBuffer:a3 options:MEMORY[0x1E695E0F8]];
  if (!v7)
  {
    v26 = 0;
    v27 = 4;
    goto LABEL_25;
  }

  v8 = objc_alloc_init(MEMORY[0x1E6984490]);
  v9 = v8;
  if (v8)
  {
    [v8 setPreferBackgroundProcessing:1];
    if (DeviceHasANE())
    {
      v10 = [MEMORY[0x1E6984608] defaultANEDevice];
      [v9 setProcessingDevice:v10];
    }

    v32 = 0;
    v11 = [v9 setRevision:3737841671 error:&v32];
    v12 = v32;
    if ((v11 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error [VNCreateSceneprintRequest setRevision:error:]", buf, 2u);
      }

      v26 = 0;
      v27 = 4;
      goto LABEL_23;
    }

    v34[0] = v9;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    v30 = v12;
    v14 = [(VCPSceneprintDescriptor *)v7 performRequests:v13 error:&v30];
    v15 = v30;

    if (v14)
    {
      v16 = [v9 results];
      v17 = [v16 count] == 1;

      if (v17)
      {
        v18 = [v9 results];
        v19 = [v18 objectAtIndexedSubscript:0];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v21 = [v9 results];
          v22 = [v21 objectAtIndexedSubscript:0];
          v23 = [v22 sceneprints];
          v24 = [v23 firstObject];
          sceneprint = v4->_sceneprint;
          v4->_sceneprint = v24;

          v26 = v4->_sceneprint != 0;
          v27 = 4 * (v4->_sceneprint == 0);
LABEL_22:
          v12 = v15;
LABEL_23:

          goto LABEL_24;
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error [VNImageRequestHandler requestHandler:error:]", buf, 2u);
    }

    v26 = 0;
    v27 = 4;
    goto LABEL_22;
  }

  v26 = 0;
  v27 = 4;
LABEL_24:

LABEL_25:
  objc_autoreleasePoolPop(v5);
  if ((v27 | 4) == 4)
  {
    if (v26)
    {
      v28 = v4;
    }

    else
    {
      v28 = 0;
    }

    v7 = v28;
  }

LABEL_30:

  return v7;
}

- (VCPSceneprintDescriptor)initWithData:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VCPSceneprintDescriptor;
  v5 = [(VCPSceneprintDescriptor *)&v14 init];
  if (v5)
  {
    v13 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v13];
    v7 = v13;
    sceneprint = v5->_sceneprint;
    v5->_sceneprint = v6;

    v9 = v5;
    if (!v5->_sceneprint)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = [v7 description];
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "NSKeyedUnarchiver error: %@", buf, 0xCu);
      }

      v9 = 0;
    }

    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int)computeDistance:(float *)a3 toDescriptor:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && (v8 = v6[1]) != 0)
  {
    sceneprint = self->_sceneprint;
    v17 = 0;
    v10 = [(VNSceneprint *)sceneprint computeDistance:v8 withDistanceFunction:1 error:&v17];
    v11 = v17;
    v12 = v11;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      [v10 floatValue];
      v14 = 0;
      *a3 = v15;
    }

    else
    {
      v14 = -18;
    }
  }

  else
  {
    v14 = -18;
  }

  return v14;
}

@end