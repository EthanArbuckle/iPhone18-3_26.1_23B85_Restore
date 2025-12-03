@interface NUPipelineOutputNode
- (BOOL)enforceEvenDimensions;
- (BOOL)renderTransparencyOpaque;
- (NUPipelineOutputNode)initWithInput:(id)input settings:(id)settings;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometryWithZeroedOrigin:(BOOL)origin error:(id *)error;
- (id)_evaluateVideoProperties:(id *)properties;
- (id)extentPolicy;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (int64_t)imageGeometryRoundingPolicy;
@end

@implementation NUPipelineOutputNode

- (id)_evaluateImage:(id *)image
{
  v5 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v6 = [v5 outputImage:image];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_20;
  }

  imageByClampingToExtent = v6;
  if ([(NUPipelineOutputNode *)self renderTransparencyOpaque])
  {
    v8 = [v5 imageProperties:image];
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = v8;
    if ([v8 alphaInfo] == 1)
    {
      if (+[NUGlobalSettings renderTransparencyOverBlack])
      {
        [MEMORY[0x1E695F610] blackColor];
      }

      else
      {
        [MEMORY[0x1E695F610] whiteColor];
      }
      v12 = ;
      v13 = +[NUColorSpace extendedSRGBColorSpace];
      cGColorSpace = [v13 CGColorSpace];

      v15 = [imageByClampingToExtent imageByColorMatchingWorkingSpaceToColorSpace:cGColorSpace];

      v16 = [MEMORY[0x1E695F658] imageWithColor:v12];
      v17 = [v15 imageByCompositingOverImage:v16];

      [v17 extent];
      v18 = [v17 imageBySettingAlphaOneInExtent:?];

      v11 = [v18 imageByColorMatchingColorSpaceToWorkingSpace:cGColorSpace];

      imageByClampingToExtent = v12;
    }

    else
    {
      [imageByClampingToExtent extent];
      v11 = [imageByClampingToExtent imageBySettingAlphaOneInExtent:?];
    }

    imageByClampingToExtent = v11;
  }

  v19 = [(NUPipelineOutputNode *)self _evaluateImageGeometryWithZeroedOrigin:0 error:image];
  if (v19)
  {
    v20 = v19;
    [v19 scaledExtent];
    if (v21 != 0.0 || v22 != 0.0)
    {
      memset(&v29, 0, sizeof(v29));
      v23 = *(MEMORY[0x1E695EFD0] + 16);
      *&v28.a = *MEMORY[0x1E695EFD0];
      *&v28.c = v23;
      *&v28.tx = *(MEMORY[0x1E695EFD0] + 32);
      CGAffineTransformTranslate(&v29, &v28, -v21, -v22);
      v28 = v29;
      v24 = [imageByClampingToExtent imageByApplyingTransform:&v28];

      imageByClampingToExtent = v24;
    }

    v25 = imageByClampingToExtent;
    imageByClampingToExtent = [imageByClampingToExtent imageByClampingToExtent];

    v10 = [(NUPipelineOutputNode *)self _evaluateImageGeometryWithZeroedOrigin:1 error:image];

    if (v10)
    {
      memset(&v29, 0, 32);
      [v10 physicalScaledExtent];
      v26 = [imageByClampingToExtent imageByCroppingToRect:{*&v29.a, *&v29.b, *&v29.c, *&v29.d}];

      imageByClampingToExtent = v26;
      v10 = imageByClampingToExtent;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = 0;
LABEL_19:

LABEL_20:

  return v10;
}

- (id)_evaluateVideoProperties:(id *)properties
{
  v5 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v6 = [v5 videoProperties:properties];
  if ([(NUPipelineOutputNode *)self enforceEvenDimensions])
  {
    v7 = [[_NUVideoProperties alloc] initWithProperties:v6];
    v8 = [(_NUVideoProperties *)v7 size];
    v10 = NUEvenPixelSize(v8, v9);
    [(_NUVideoProperties *)v7 setSize:v10, v11];
    originalSize = [(_NUVideoProperties *)v7 originalSize];
    v14 = NUEvenPixelSize(originalSize, v13);
    [(_NUVideoProperties *)v7 setOriginalSize:v14, v15];
    if (v7)
    {
      [(_NUVideoProperties *)v7 cleanAperture];
      v17 = *(&v26 + 1);
      v16 = v26;
    }

    else
    {
      v17 = 0;
      v16 = 0;
      v25 = 0u;
      v26 = 0u;
    }

    *&v26 = NUEvenPixelSize(v16, v17);
    *(&v26 + 1) = v18;
    v23 = v25;
    v24 = v26;
    [(_NUVideoProperties *)v7 setCleanAperture:&v23];
    if (v7)
    {
      [(_NUVideoProperties *)v7 originalCleanAperture];
      v20 = *(&v26 + 1);
      v19 = v26;
    }

    else
    {
      v20 = 0;
      v19 = 0;
      v25 = 0u;
      v26 = 0u;
    }

    *&v26 = NUEvenPixelSize(v19, v20);
    *(&v26 + 1) = v21;
    v23 = v25;
    v24 = v26;
    [(_NUVideoProperties *)v7 setOriginalCleanAperture:&v23];
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)extentPolicy
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"extentPolicy"];

  return v3;
}

- (BOOL)enforceEvenDimensions
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"enforceEvenDimensions"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)renderTransparencyOpaque
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"renderTransparencyOpaque"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = +[NUGlobalSettings renderTransparencyOpaque];
  }

  v5 = bOOLValue;

  return v5;
}

- (int64_t)imageGeometryRoundingPolicy
{
  if ([(NUPipelineOutputNode *)self enforceEvenDimensions])
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (id)_evaluateImageGeometryWithZeroedOrigin:(BOOL)origin error:(id *)error
{
  originCopy = origin;
  v23.receiver = self;
  v23.super_class = NUPipelineOutputNode;
  v6 = [(NURenderNode *)&v23 _evaluateImageGeometry:error];
  v7 = v6;
  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    [v6 extent];
    extentPolicy = [(NUPipelineOutputNode *)self extentPolicy];
    v9 = extentPolicy;
    if (extentPolicy)
    {
      v18[0] = v21;
      v18[1] = v22;
      [extentPolicy extentForImageExtent:v18];
      v21 = v19;
      v22 = v20;
    }

    if (originCopy)
    {
      v21 = 0uLL;
    }

    imageGeometryRoundingPolicy = [(NUPipelineOutputNode *)self imageGeometryRoundingPolicy];
    v11 = [NUImageGeometry alloc];
    renderScale = [v7 renderScale];
    v14 = v13;
    orientation = [v7 orientation];
    v19 = v21;
    v20 = v22;
    v16 = [(NUImageGeometry *)v11 initWithExtent:&v19 renderScale:renderScale orientation:v14 spaceMap:orientation roundingPolicy:0, imageGeometryRoundingPolicy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  inputsCopy = inputs;
  settingsCopy = settings;
  stateCopy = state;
  if ([stateCopy enforceEvenDimensions])
  {
    v13 = [settingsCopy objectForKeyedSubscript:@"enforceEvenDimensions"];

    if (!v13)
    {
      v14 = [settingsCopy mutableCopy];
      [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enforceEvenDimensions"];
      v15 = [v14 copy];

      settingsCopy = v15;
    }
  }

  v18.receiver = self;
  v18.super_class = NUPipelineOutputNode;
  v16 = [(NURenderNode *)&v18 resolvedNodeWithCachedInputs:inputsCopy settings:settingsCopy pipelineState:stateCopy error:error];

  return v16;
}

- (NUPipelineOutputNode)initWithInput:(id)input settings:(id)settings
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E695FAB0];
  v14[0] = input;
  v6 = MEMORY[0x1E695DF20];
  settingsCopy = settings;
  inputCopy = input;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = NUPipelineOutputNode;
  v10 = [(NURenderNode *)&v12 initWithSettings:settingsCopy inputs:v9];

  return v10;
}

@end