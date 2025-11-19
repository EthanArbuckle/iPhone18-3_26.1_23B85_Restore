@interface VCPImageLivePhotoBlurAnalyzer
- (VCPImageLivePhotoBlurAnalyzer)initWithMovingObjectsResults:(id)a3;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6;
@end

@implementation VCPImageLivePhotoBlurAnalyzer

- (VCPImageLivePhotoBlurAnalyzer)initWithMovingObjectsResults:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = VCPImageLivePhotoBlurAnalyzer;
  v6 = [(VCPImageLivePhotoBlurAnalyzer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_movingObjects, a3);
    }

    v8 = v7;
  }

  return v7;
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = v9;
  if (!v9 || ((*(v9 + 2))(v9) & 1) == 0)
  {
    v17 = 1065353216;
    if ([(NSArray *)self->_movingObjects count])
    {
      v11 = [(VCPBlurAnalyzer *)self computeSharpnessScore:&v17 forObjects:self->_movingObjects inImage:a3];
      if (v11)
      {
        goto LABEL_9;
      }

      LODWORD(v12) = v17;
    }

    else
    {
      LODWORD(v12) = 1.0;
    }

    v21 = @"IrisSharpnessResults";
    v18 = @"quality";
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    v19 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v20 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v22[0] = v15;
    *a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    v11 = 0;
    goto LABEL_9;
  }

  v11 = -128;
LABEL_9:

  return v11;
}

@end