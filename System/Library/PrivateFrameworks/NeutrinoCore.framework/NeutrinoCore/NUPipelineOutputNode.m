@interface NUPipelineOutputNode
- (BOOL)enforceEvenDimensions;
- (BOOL)renderTransparencyOpaque;
- (NUPipelineOutputNode)initWithInput:(id)a3 settings:(id)a4;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateImageGeometryWithZeroedOrigin:(BOOL)a3 error:(id *)a4;
- (id)_evaluateVideoProperties:(id *)a3;
- (id)extentPolicy;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (int64_t)imageGeometryRoundingPolicy;
@end

@implementation NUPipelineOutputNode

- (id)_evaluateImage:(id *)a3
{
  v5 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v6 = [v5 outputImage:a3];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v7 = v6;
  if ([(NUPipelineOutputNode *)self renderTransparencyOpaque])
  {
    v8 = [v5 imageProperties:a3];
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
      v14 = [v13 CGColorSpace];

      v15 = [v7 imageByColorMatchingWorkingSpaceToColorSpace:v14];

      v16 = [MEMORY[0x1E695F658] imageWithColor:v12];
      v17 = [v15 imageByCompositingOverImage:v16];

      [v17 extent];
      v18 = [v17 imageBySettingAlphaOneInExtent:?];

      v11 = [v18 imageByColorMatchingColorSpaceToWorkingSpace:v14];

      v7 = v12;
    }

    else
    {
      [v7 extent];
      v11 = [v7 imageBySettingAlphaOneInExtent:?];
    }

    v7 = v11;
  }

  v19 = [(NUPipelineOutputNode *)self _evaluateImageGeometryWithZeroedOrigin:0 error:a3];
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
      v24 = [v7 imageByApplyingTransform:&v28];

      v7 = v24;
    }

    v25 = v7;
    v7 = [v7 imageByClampingToExtent];

    v10 = [(NUPipelineOutputNode *)self _evaluateImageGeometryWithZeroedOrigin:1 error:a3];

    if (v10)
    {
      memset(&v29, 0, 32);
      [v10 physicalScaledExtent];
      v26 = [v7 imageByCroppingToRect:{*&v29.a, *&v29.b, *&v29.c, *&v29.d}];

      v7 = v26;
      v10 = v7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = 0;
LABEL_19:

LABEL_20:

  return v10;
}

- (id)_evaluateVideoProperties:(id *)a3
{
  v5 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v6 = [v5 videoProperties:a3];
  if ([(NUPipelineOutputNode *)self enforceEvenDimensions])
  {
    v7 = [[_NUVideoProperties alloc] initWithProperties:v6];
    v8 = [(_NUVideoProperties *)v7 size];
    v10 = NUEvenPixelSize(v8, v9);
    [(_NUVideoProperties *)v7 setSize:v10, v11];
    v12 = [(_NUVideoProperties *)v7 originalSize];
    v14 = NUEvenPixelSize(v12, v13);
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
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"extentPolicy"];

  return v3;
}

- (BOOL)enforceEvenDimensions
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"enforceEvenDimensions"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)renderTransparencyOpaque
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"renderTransparencyOpaque"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = +[NUGlobalSettings renderTransparencyOpaque];
  }

  v5 = v4;

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

- (id)_evaluateImageGeometryWithZeroedOrigin:(BOOL)a3 error:(id *)a4
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NUPipelineOutputNode;
  v6 = [(NURenderNode *)&v23 _evaluateImageGeometry:a4];
  v7 = v6;
  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    [v6 extent];
    v8 = [(NUPipelineOutputNode *)self extentPolicy];
    v9 = v8;
    if (v8)
    {
      v18[0] = v21;
      v18[1] = v22;
      [v8 extentForImageExtent:v18];
      v21 = v19;
      v22 = v20;
    }

    if (v4)
    {
      v21 = 0uLL;
    }

    v10 = [(NUPipelineOutputNode *)self imageGeometryRoundingPolicy];
    v11 = [NUImageGeometry alloc];
    v12 = [v7 renderScale];
    v14 = v13;
    v15 = [v7 orientation];
    v19 = v21;
    v20 = v22;
    v16 = [(NUImageGeometry *)v11 initWithExtent:&v19 renderScale:v12 orientation:v14 spaceMap:v15 roundingPolicy:0, v10];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v12 enforceEvenDimensions])
  {
    v13 = [v11 objectForKeyedSubscript:@"enforceEvenDimensions"];

    if (!v13)
    {
      v14 = [v11 mutableCopy];
      [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enforceEvenDimensions"];
      v15 = [v14 copy];

      v11 = v15;
    }
  }

  v18.receiver = self;
  v18.super_class = NUPipelineOutputNode;
  v16 = [(NURenderNode *)&v18 resolvedNodeWithCachedInputs:v10 settings:v11 pipelineState:v12 error:a6];

  return v16;
}

- (NUPipelineOutputNode)initWithInput:(id)a3 settings:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E695FAB0];
  v14[0] = a3;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = NUPipelineOutputNode;
  v10 = [(NURenderNode *)&v12 initWithSettings:v7 inputs:v9];

  return v10;
}

@end