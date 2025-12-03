@interface NUHDRApplyGainMapFilter
+ (id)flexRangeGainMapApplyKernel;
+ (id)flexRangeGainMapApplyRGBKernel;
+ (id)meteorPlusGainMapApplyKernel;
- (id)outputImage;
@end

@implementation NUHDRApplyGainMapFilter

+ (id)flexRangeGainMapApplyRGBKernel
{
  if (flexRangeGainMapApplyRGBKernel_once != -1)
  {
    dispatch_once(&flexRangeGainMapApplyRGBKernel_once, &__block_literal_global_61);
  }

  v3 = flexRangeGainMapApplyRGBKernel_s_flexRangeGainMapApplyRGBKernel;

  return v3;
}

uint64_t __57__NUHDRApplyGainMapFilter_flexRangeGainMapApplyRGBKernel__block_invoke()
{
  flexRangeGainMapApplyRGBKernel_s_flexRangeGainMapApplyRGBKernel = [MEMORY[0x1E695F618] kernelWithString:{@"vec3 s_pow(vec3 x, vec3 g) {  vec3 a = max(abs(x), 1e-6) \n  return sign(x) * pow(a, g); \n}kernel vec4 flx_gain_apply_rgb(__sample im, __sample gm, vec3 a, vec3 b, vec3 g, vec3 s, vec3 kx, vec3 ky) \n{ \n  vec3 gainLog2 = a * s_pow(gm.rgb, g) + b; \n  vec3 gainLin = exp2(s * gainLog2); \n  vec3 rgb = gainLin * (im.rgb + kx) - ky; \n  return vec4(rgb, 1.0); \n}\n"}];;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)flexRangeGainMapApplyKernel
{
  if (flexRangeGainMapApplyKernel_once != -1)
  {
    dispatch_once(&flexRangeGainMapApplyKernel_once, &__block_literal_global_56);
  }

  v3 = flexRangeGainMapApplyKernel_s_flexRangeGainMapApplyKernel;

  return v3;
}

uint64_t __54__NUHDRApplyGainMapFilter_flexRangeGainMapApplyKernel__block_invoke()
{
  flexRangeGainMapApplyKernel_s_flexRangeGainMapApplyKernel = [MEMORY[0x1E695F618] kernelWithString:{@"vec3 s_pow(vec3 x, float g) {  vec3 a = max(abs(x), 1e-6) \n  return sign(x) * pow(a, vec3(g)); \n}kernel vec4 flx_gain_apply(__sample im, __sample gm, vec4 p, vec2 k) \n{ \n  vec3 gainLog2 = p.x * s_pow(gm.rgb, p.y) + p.z; \n  vec3 gainLin = exp2(p.w * gainLog2); \n  vec3 rgb = gainLin * (im.rgb + k.x) - k.y; \n  return vec4(rgb, 1.0); \n}\n"}];;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)meteorPlusGainMapApplyKernel
{
  if (meteorPlusGainMapApplyKernel_once != -1)
  {
    dispatch_once(&meteorPlusGainMapApplyKernel_once, &__block_literal_global_11566);
  }

  v3 = meteorPlusGainMapApplyKernel_s_meteorPlusGainMapApplyKernel;

  return v3;
}

uint64_t __55__NUHDRApplyGainMapFilter_meteorPlusGainMapApplyKernel__block_invoke()
{
  meteorPlusGainMapApplyKernel_s_meteorPlusGainMapApplyKernel = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 mpp_gain_apply(__sample im, __sample gm, float h) \n{ \n  float gain = 1.0 + (h - 1.0) * gm.r \n  float3 rgb = gain * im.rgb; \n  return vec4(rgb, 1.0); \n}\n"}];;

  return MEMORY[0x1EEE66BB8]();
}

- (id)outputImage
{
  v125[8] = *MEMORY[0x1E69E9840];
  inputImage = [(NUHDRApplyGainMapFilter *)self inputImage];
  inputGainMap = [(NUHDRApplyGainMapFilter *)self inputGainMap];
  v5 = inputGainMap;
  v6 = 0;
  if (inputImage && inputGainMap)
  {
    inputHeadroom = [(NUHDRApplyGainMapFilter *)self inputHeadroom];
    [inputHeadroom floatValue];
    v9 = fmaxf(v8, 1.0);

    inputColorSpace = [(NUHDRApplyGainMapFilter *)self inputColorSpace];
    linearized = [inputColorSpace linearized];
    v12 = linearized;
    if (linearized)
    {
      v13 = linearized;
    }

    else
    {
      v13 = +[NUColorSpace displayP3LinearColorSpace];
    }

    v14 = v13;
    v15 = fminf(v9, 16.0);

    v16 = [inputImage imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(v14, "CGColorSpace")}];

    _imageByClampingAlpha = [v16 _imageByClampingAlpha];

    [_imageByClampingAlpha extent];
    v19 = v18;
    v21 = v20;
    [v5 extent];
    CGAffineTransformMakeScale(&v122, v19 / v22, v21 / v23);
    v121 = [v5 imageByApplyingTransform:&v122];
    flexRangeProperties = [(NUHDRApplyGainMapFilter *)self flexRangeProperties];
    if (flexRangeProperties)
    {
      v120 = v5;
      v25 = log2f(v15);
      [flexRangeProperties baseHeadroom];
      v27 = v26;
      [flexRangeProperties alternateHeadroom];
      v29 = fminf(fmaxf((v25 - v27) / (v28 - v27), 0.0), 1.0);
      if (v25 <= v27)
      {
        v30 = -v29;
      }

      else
      {
        v30 = v29;
      }

      flexRangeProperties2 = [(NUHDRApplyGainMapFilter *)self flexRangeProperties];
      channelInfo = [flexRangeProperties2 channelInfo];

      v33 = channelInfo;
      if ([channelInfo count] == 3)
      {
        v114 = channelInfo;
        firstObject = [channelInfo objectAtIndexedSubscript:0];
        v35 = [channelInfo objectAtIndexedSubscript:1];
        v36 = [channelInfo objectAtIndexedSubscript:2];
        [firstObject gamma];
        v118 = v37;
        [v35 gamma];
        v116 = v38;
        [v36 gamma];
        v112 = v39;
        [firstObject min];
        v41 = v40;
        [v35 min];
        v43 = v42;
        [v36 min];
        v45 = v44;
        [firstObject max];
        v47 = v46;
        [v35 max];
        v110 = v30;
        v49 = v48;
        [v36 max];
        v51 = v50;
        [firstObject baseOffset];
        v109 = v52;
        [v35 baseOffset];
        v107 = v53;
        [v36 baseOffset];
        v105 = v54;
        [firstObject alternateOffset];
        v108 = v55;
        [v35 alternateOffset];
        v106 = v56;
        [v36 alternateOffset];
        v58 = v57;
        v115 = flexRangeProperties;
        v59 = [MEMORY[0x1E695F688] vectorWithX:(v47 - v41) Y:(v49 - v43) Z:(v51 - v45)];
        v104 = [MEMORY[0x1E695F688] vectorWithX:v41 Y:v43 Z:v45];
        v113 = [MEMORY[0x1E695F688] vectorWithX:(1.0 / v118) Y:(1.0 / v116) Z:(1.0 / v112)];
        v111 = [MEMORY[0x1E695F688] vectorWithX:v110 Y:v110 Z:v110];
        v60 = [MEMORY[0x1E695F688] vectorWithX:v109 Y:v107 Z:v105];
        v61 = [MEMORY[0x1E695F688] vectorWithX:v108 Y:v106 Z:v58];
        [objc_opt_class() flexRangeGainMapApplyRGBKernel];
        v62 = v117 = v14;
        [_imageByClampingAlpha extent];
        v64 = v63;
        v66 = v65;
        v68 = v67;
        v70 = v69;
        v125[0] = _imageByClampingAlpha;
        v125[1] = v121;
        v119 = v59;
        v125[2] = v59;
        v71 = v104;
        v125[3] = v104;
        v125[4] = v113;
        v125[5] = v111;
        v125[6] = v60;
        v125[7] = v61;
        v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:8];
        v73 = [v62 applyWithExtent:v72 arguments:{v64, v66, v68, v70}];

        v33 = v114;
        v14 = v117;

        flexRangeProperties = v115;
        _imageByClampingAlpha = v113;
      }

      else
      {
        firstObject = [channelInfo firstObject];
        [firstObject gamma];
        v84 = v83;
        [firstObject min];
        v86 = v85;
        [firstObject max];
        v88 = v87;
        [firstObject baseOffset];
        v90 = v89;
        [firstObject alternateOffset];
        v92 = v91;
        v35 = [MEMORY[0x1E695F688] vectorWithX:(v88 - v86) Y:(1.0 / v84) Z:v86 W:v30];
        v36 = [MEMORY[0x1E695F688] vectorWithX:v90 Y:v92];
        flexRangeGainMapApplyKernel = [objc_opt_class() flexRangeGainMapApplyKernel];
        [_imageByClampingAlpha extent];
        v95 = v94;
        v97 = v96;
        v99 = v98;
        v101 = v100;
        v124[0] = _imageByClampingAlpha;
        v124[1] = v121;
        v124[2] = v35;
        v124[3] = v36;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:4];
        v71 = v119 = flexRangeGainMapApplyKernel;
        v73 = [flexRangeGainMapApplyKernel applyWithExtent:v95 arguments:{v97, v99, v101}];
      }

      _imageByClampingAlpha = v36;
      v5 = v120;
    }

    else
    {
      meteorPlusGainMapApplyKernel = [objc_opt_class() meteorPlusGainMapApplyKernel];
      [_imageByClampingAlpha extent];
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v123[0] = _imageByClampingAlpha;
      v123[1] = v121;
      *&v75 = v15;
      firstObject = [MEMORY[0x1E696AD98] numberWithFloat:v75];
      v123[2] = firstObject;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:3];
      v33 = meteorPlusGainMapApplyKernel;
      v73 = [meteorPlusGainMapApplyKernel applyWithExtent:v35 arguments:{v76, v78, v80, v82}];
    }

    v102 = [v73 imageByColorMatchingColorSpaceToWorkingSpace:{objc_msgSend(v14, "CGColorSpace")}];

    inputImage = v102;
    v6 = inputImage;
  }

  return v6;
}

@end