@interface NUHDRMultiplyGainMapFilter
+ (id)gainMapLogMultiplyKernel;
+ (id)gainMapLogMultiplyRGBKernel;
+ (id)gainMapMultiplyKernel;
+ (id)gainMapMultiplyRGBKernel;
- (id)outputImage;
@end

@implementation NUHDRMultiplyGainMapFilter

+ (id)gainMapMultiplyRGBKernel
{
  if (gainMapMultiplyRGBKernel_once != -1)
  {
    dispatch_once(&gainMapMultiplyRGBKernel_once, &__block_literal_global_206);
  }

  v3 = gainMapMultiplyRGBKernel_s_gainMapMultiplyRGBKernel;

  return v3;
}

uint64_t __54__NUHDRMultiplyGainMapFilter_gainMapMultiplyRGBKernel__block_invoke()
{
  gainMapMultiplyRGBKernel_s_gainMapMultiplyRGBKernel = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 gainMapMultiplyRGB(__sample im, __sample gm) \n{ \n  const float e = 0.01 \n  float3 color = (1 - e) * im.rgb + e; \n  float3 gain = (1 - e) * gm.rgb + e; \n  float3 light = gain * color; \n  return vec4(light, 1.0); \n}\n"}];;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)gainMapMultiplyKernel
{
  if (gainMapMultiplyKernel_once != -1)
  {
    dispatch_once(&gainMapMultiplyKernel_once, &__block_literal_global_201);
  }

  v3 = gainMapMultiplyKernel_s_gainMapMultiplyKernel;

  return v3;
}

uint64_t __51__NUHDRMultiplyGainMapFilter_gainMapMultiplyKernel__block_invoke()
{
  gainMapMultiplyKernel_s_gainMapMultiplyKernel = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 gainMapMultiply(__sample im, __sample gm) \n{ \n  const float3 weq = float3(1.0/3.0, 1.0/3.0, 1.0/3.0) \n  float luma = dot(im.rgb, weq); \n  float maxRGB = max(max(im.r, im.g), im.b); \n  luma = 0.5 * (luma + maxRGB); \n  float gain = gm.r; \n  const float e = 0.01; \n  luma = (1 - e) * luma + e; \n  gain = (1 - e) * gain + e; \n  float light = gain * luma; \n  return vec4(light, light, light, 1.0); \n}\n"}];;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)gainMapLogMultiplyRGBKernel
{
  if (gainMapLogMultiplyRGBKernel_once != -1)
  {
    dispatch_once(&gainMapLogMultiplyRGBKernel_once, &__block_literal_global_196);
  }

  v3 = gainMapLogMultiplyRGBKernel_s_gainMapLogMultiplyRGBKernel;

  return v3;
}

uint64_t __57__NUHDRMultiplyGainMapFilter_gainMapLogMultiplyRGBKernel__block_invoke()
{
  gainMapLogMultiplyRGBKernel_s_gainMapLogMultiplyRGBKernel = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 gainMapMultiplyRGB(__sample im, __sample gm, float f) \n{ \n  float3 color = log2(1.0 + im.rgb) \n  float3 gain = log2(1.0 + gm.rgb); \n  float3 light = mix(gain, color, f); \n  light = exp2(light) - 1.0; \n  return vec4(light, 1.0); \n}\n"}];;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)gainMapLogMultiplyKernel
{
  if (gainMapLogMultiplyKernel_once != -1)
  {
    dispatch_once(&gainMapLogMultiplyKernel_once, &__block_literal_global_191);
  }

  v3 = gainMapLogMultiplyKernel_s_gainMapLogMultiplyKernel;

  return v3;
}

uint64_t __54__NUHDRMultiplyGainMapFilter_gainMapLogMultiplyKernel__block_invoke()
{
  gainMapLogMultiplyKernel_s_gainMapLogMultiplyKernel = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 gainMapMultiply(__sample im, __sample gm, float f) \n{ \n  const float3 weq = float3(1.0/3.0, 1.0/3.0, 1.0/3.0) \n  float luma = dot(im.rgb, weq); \n  float maxRGB = max(max(im.r, im.g), im.b); \n  luma = 0.5 * (luma + maxRGB); \n  luma = log2(1.0 + luma); \n  float gain = log2(1.0 + gm.r); \n  float light = mix(gain, luma, f); \n  light = exp2(light) - 1.0; \n  return vec4(light, light, light, 1.0); \n}\n"}];;

  return MEMORY[0x1EEE66BB8]();
}

- (id)outputImage
{
  v29[3] = *MEMORY[0x1E69E9840];
  v3 = [(NUHDRMultiplyGainMapFilter *)self inputImage];
  v4 = [(NUHDRMultiplyGainMapFilter *)self inputGainMap];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [(NUHDRMultiplyGainMapFilter *)self inputPreserveColor];
    v8 = [v7 BOOLValue];

    v9 = [(NUHDRMultiplyGainMapFilter *)self inputMixFactor];
    [v9 floatValue];
    v11 = v10;

    v12 = objc_opt_class();
    if (v11 == 0.0)
    {
      if (v8)
      {
        [v12 gainMapMultiplyRGBKernel];
      }

      else
      {
        [v12 gainMapMultiplyKernel];
      }
    }

    else if (v8)
    {
      [v12 gainMapLogMultiplyRGBKernel];
    }

    else
    {
      [v12 gainMapLogMultiplyKernel];
    }
    v13 = ;
    v14 = v13;
    [v5 extent];
    v16 = v15;
    v18 = v17;
    [v3 extent];
    CGAffineTransformMakeScale(&v27, v16 / v19, v18 / v20);
    v21 = [v3 imageByApplyingTransform:&v27];
    v23 = v21;
    if (v11 == 0.0)
    {
      v28[0] = v21;
      v28[1] = v5;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    }

    else
    {
      *&v22 = fmaxf(fminf(1.0 - v11, 1.0), 0.0);
      v29[0] = v21;
      v29[1] = v5;
      v24 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
      v29[2] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
    }

    [v5 extent];
    v6 = [v14 applyWithExtent:v25 arguments:?];
  }

  return v6;
}

@end