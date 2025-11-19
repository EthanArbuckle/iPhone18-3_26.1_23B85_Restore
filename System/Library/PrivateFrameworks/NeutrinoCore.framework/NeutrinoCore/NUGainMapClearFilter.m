@interface NUGainMapClearFilter
- (id)outputImage;
@end

@implementation NUGainMapClearFilter

- (id)outputImage
{
  v3 = [(NUGainMapClearFilter *)self inputGainMap];
  if (v3)
  {
    v4 = [(NUGainMapClearFilter *)self inputMatte];
    if (v4)
    {
      v5 = v4;
      v6 = [(NUGainMapClearFilter *)self inputInvertMatte];
      v7 = [v6 BOOLValue];

      if (v7)
      {
        __asm { FMOV            V3.4S, #1.0 }

        v13 = [v5 _imageByApplyingColorMatrixRed:COERCE_DOUBLE(3212836864) green:-0.0078125 blue:0.0 bias:*&_Q3];

        v5 = v13;
      }

      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      [v5 extent];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [v3 extent];
      NUCGAffineTransformByMappingFromRectToRect(&v32, v15, v17, v19, v21, v22, v23, v24, v25);
      v31[0] = v32;
      v31[1] = v33;
      v31[2] = v34;
      v26 = [v5 imageByApplyingTransform:v31];

      v27 = [MEMORY[0x1E695F608] componentMultiply];
      v28 = [v27 applyWithForeground:v26 background:v3];

      v29 = [v28 _imageByRenderingToIntermediate];
    }

    else
    {
      v26 = [MEMORY[0x1E695F658] blackImage];
      [v3 extent];
      v29 = [v26 imageByCroppingToRect:?];
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

@end