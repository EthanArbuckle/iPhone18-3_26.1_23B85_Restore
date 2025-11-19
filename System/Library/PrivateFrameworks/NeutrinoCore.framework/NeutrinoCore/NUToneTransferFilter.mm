@interface NUToneTransferFilter
+ (id)toneTransferKernel;
- (id)outputImage;
@end

@implementation NUToneTransferFilter

+ (id)toneTransferKernel
{
  if (toneTransferKernel_once != -1)
  {
    dispatch_once(&toneTransferKernel_once, &__block_literal_global_632);
  }

  v3 = toneTransferKernel_s_toneTransferKernel;

  return v3;
}

uint64_t __42__NUToneTransferFilter_toneTransferKernel__block_invoke()
{
  toneTransferKernel_s_toneTransferKernel = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 toneTransfer(__sample im, __sample src, __sample dst, float f) \n{ \n  float epsilon = 1e-5 \n  vec3 y0 = src.rgb; \n  vec3 y1 = dst.rgb; \n  vec3 g = (y1 + epsilon) / (y0 + epsilon); \n  vec3 x = im.rgb; \n  vec3 y = mix(x, g * x, f); \n  return vec4(y, im.a); \n}\n"}];;

  return MEMORY[0x1EEE66BB8]();
}

- (id)outputImage
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = [(NUToneTransferFilter *)self inputImage];
  if (v3)
  {
    v4 = [(NUToneTransferFilter *)self inputSourceImage];
    v5 = [(NUToneTransferFilter *)self inputTargetImage];
    v6 = v5;
    if (v4 && v5)
    {
      v7 = [(NUToneTransferFilter *)self inputStrength];
      v8 = v7;
      v9 = &unk_1F3F82C20;
      if (v7)
      {
        v9 = v7;
      }

      v10 = v9;

      v11 = [objc_opt_class() toneTransferKernel];
      [v3 extent];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v23[0] = v3;
      v23[1] = v4;
      v23[2] = v6;
      v23[3] = v10;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];

      v21 = [v11 applyWithExtent:v20 arguments:{v13, v15, v17, v19}];
    }

    else
    {
      v21 = v3;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end