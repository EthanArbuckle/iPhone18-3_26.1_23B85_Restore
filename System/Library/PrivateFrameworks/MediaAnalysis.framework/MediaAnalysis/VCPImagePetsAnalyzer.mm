@interface VCPImagePetsAnalyzer
- (VCPImagePetsAnalyzer)initWithMaxNumRegions:(int)regions;
- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel;
- (int)convertResultsToDict:(id)dict results:(id)results;
@end

@implementation VCPImagePetsAnalyzer

- (VCPImagePetsAnalyzer)initWithMaxNumRegions:(int)regions
{
  v11.receiver = self;
  v11.super_class = VCPImagePetsAnalyzer;
  v4 = [(VCPImagePetsAnalyzer *)&v11 init];
  v5 = v4;
  if (v4)
  {
    if (regions >= 5)
    {
      regionsCopy = 5;
    }

    else
    {
      regionsCopy = regions;
    }

    if (regions <= 1)
    {
      regionsCopy = 1;
    }

    v4->_maxNumRegions = regionsCopy;
    v7 = [VCPCNNPetsDetectorV2 detector:5 forceCPU:0 sharedModel:0 revision:1];
    petsDetector = v5->_petsDetector;
    v5->_petsDetector = v7;

    v9 = v5;
  }

  return v5;
}

- (int)convertResultsToDict:(id)dict results:(id)results
{
  v39 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  resultsCopy = results;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = dictCopy;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v6)
  {
    v24 = 0;
    v26 = *v31;
LABEL_3:
    v7 = 0;
    v8 = v24;
    v24 += v6;
    while (1)
    {
      if (*v31 != v26)
      {
        objc_enumerationMutation(obj);
      }

      if (v8 >= self->_maxNumRegions)
      {
        break;
      }

      v9 = *(*(&v30 + 1) + 8 * v7);
      v10 = [v9 objectForKeyedSubscript:@"petsBounds"];
      v40 = NSRectFromString(v10);
      v29.a = 1.0;
      v29.b = 0.0;
      v29.c = 0.0;
      *&v29.d = xmmword_1C9F60600;
      v29.ty = 1.0;
      v41 = CGRectApplyAffineTransform(v40, &v29);
      v36 = @"attributes";
      v34[0] = @"petsBounds";
      if (v41.origin.x < 1.0)
      {
        x = v41.origin.x;
      }

      else
      {
        x = 1.0;
      }

      if (v41.origin.x <= 0.0)
      {
        x = 0.0;
      }

      if (v41.origin.y < 1.0)
      {
        y = v41.origin.y;
      }

      else
      {
        y = 1.0;
      }

      if (v41.origin.y <= 0.0)
      {
        y = 0.0;
      }

      width = 1.0 - v41.origin.x;
      if (v41.size.width < width)
      {
        width = v41.size.width;
      }

      if (v41.size.width <= 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = width;
      }

      height = 1.0 - v41.origin.y;
      if (v41.size.height < 1.0 - v41.origin.y)
      {
        height = v41.size.height;
      }

      if (v41.size.height <= 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = height;
      }

      v17 = x;
      v18 = y;
      v19 = NSStringFromRect(*(&v14 - 2));
      v34[1] = @"petsConfidence";
      v35[0] = v19;
      v20 = [v9 objectForKeyedSubscript:@"petsConfidence"];
      v35[1] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
      v37 = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      [resultsCopy addObject:v22];

      ++v8;
      if (v6 == ++v7)
      {
        v6 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return 0;
}

- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel
{
  cancelCopy = cancel;
  *results = 0;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  if (Width <= Height)
  {
    v12 = Height;
  }

  else
  {
    v12 = Width;
  }

  if (Height >= Width)
  {
    v13 = Width;
  }

  else
  {
    v13 = Height;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if ((v12 / v13) > 2.0)
  {
LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  v16 = [(VCPCNNPetsDetectorV2 *)self->_petsDetector petsDetection:buffer petsRegions:array petsFaceRegions:array2 cancel:cancelCopy];
  if (!v16)
  {
    array3 = [MEMORY[0x1E695DF70] array];
    array4 = [MEMORY[0x1E695DF70] array];
    [(VCPImagePetsAnalyzer *)self convertResultsToDict:array results:array3];
    [(VCPImagePetsAnalyzer *)self convertResultsToDict:array2 results:array4];
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([array3 count])
    {
      [v19 setValue:array3 forKey:@"PetsResults"];
    }

    if ([array4 count])
    {
      [v19 setValue:array4 forKey:@"PetsFaceResults"];
    }

    v20 = v19;
    *results = v19;

    goto LABEL_14;
  }

LABEL_15:

  return v16;
}

@end