@interface NUGainMapClearFilter
- (id)outputImage;
@end

@implementation NUGainMapClearFilter

- (id)outputImage
{
  inputGainMap = [(NUGainMapClearFilter *)self inputGainMap];
  if (inputGainMap)
  {
    inputMatte = [(NUGainMapClearFilter *)self inputMatte];
    if (inputMatte)
    {
      v5 = inputMatte;
      inputInvertMatte = [(NUGainMapClearFilter *)self inputInvertMatte];
      bOOLValue = [inputInvertMatte BOOLValue];

      if (bOOLValue)
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
      [inputGainMap extent];
      NUCGAffineTransformByMappingFromRectToRect(&v32, v15, v17, v19, v21, v22, v23, v24, v25);
      v31[0] = v32;
      v31[1] = v33;
      v31[2] = v34;
      blackImage = [v5 imageByApplyingTransform:v31];

      componentMultiply = [MEMORY[0x1E695F608] componentMultiply];
      v28 = [componentMultiply applyWithForeground:blackImage background:inputGainMap];

      _imageByRenderingToIntermediate = [v28 _imageByRenderingToIntermediate];
    }

    else
    {
      blackImage = [MEMORY[0x1E695F658] blackImage];
      [inputGainMap extent];
      _imageByRenderingToIntermediate = [blackImage imageByCroppingToRect:?];
    }
  }

  else
  {
    _imageByRenderingToIntermediate = 0;
  }

  return _imageByRenderingToIntermediate;
}

@end