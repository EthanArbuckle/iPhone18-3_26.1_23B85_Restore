@interface NURAWGainMapFilter
+ (id)gainMapKernel;
- (id)outputImage;
@end

@implementation NURAWGainMapFilter

+ (id)gainMapKernel
{
  if (gainMapKernel_once != -1)
  {
    dispatch_once(&gainMapKernel_once, &__block_literal_global_589);
  }

  v3 = gainMapKernel_s_gainMapKernel;

  return v3;
}

uint64_t __35__NURAWGainMapFilter_gainMapKernel__block_invoke()
{
  gainMapKernel_s_gainMapKernel = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _gainMap(__sample im, float gainCompensation) \n{ \n  vec3 stopDown = 0.25 * gainCompensation * im.rgb \n  float y = dot(stopDown, vec3(0.299, 0.587, 0.114)); \n  y = smoothstep(0.0, 1.0, sqrt(clamp(y, 0.0, 4.0))); \n  return vec4(y, y, y, 1.0); \n}\n"}];;

  return MEMORY[0x1EEE66BB8]();
}

- (id)outputImage
{
  v21[2] = *MEMORY[0x1E69E9840];
  inputImage = [(NURAWGainMapFilter *)self inputImage];
  inputGain = [(NURAWGainMapFilter *)self inputGain];
  v5 = inputGain;
  v6 = &unk_1F3F82C20;
  if (inputGain)
  {
    v6 = inputGain;
  }

  v7 = v6;

  gainMapKernel = [objc_opt_class() gainMapKernel];
  [inputImage extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v21[0] = inputImage;
  v21[1] = v7;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];

  v18 = [gainMapKernel applyWithExtent:v17 arguments:{v10, v12, v14, v16}];

  v19 = [v18 _imageByApplyingGamma:2.2];

  return v19;
}

@end