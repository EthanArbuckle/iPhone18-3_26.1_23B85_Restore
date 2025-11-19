@interface NURAWToneCurveProperties
@end

@implementation NURAWToneCurveProperties

void __53___NURAWToneCurveProperties__generateGainMapExposure__block_invoke()
{
  v8[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _synthGainInput(float y) \n{ \n  return vec4(y, y, y, 1.0)\n}\n"}];;
  v1 = _generateGainMapExposure_s_synthGainInputKernel;
  _generateGainMapExposure_s_synthGainInputKernel = v0;

  v2 = MEMORY[0x1E695F620];
  v3 = *MEMORY[0x1E695F830];
  v7[0] = *MEMORY[0x1E695F7F0];
  v7[1] = v3;
  v8[0] = MEMORY[0x1E695E110];
  v8[1] = @"SyntheticGainMapSearch";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [v2 contextWithOptions:v4];
  v6 = _generateGainMapExposure_ctx;
  _generateGainMapExposure_ctx = v5;
}

@end