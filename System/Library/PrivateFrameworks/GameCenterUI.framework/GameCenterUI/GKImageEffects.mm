@interface GKImageEffects
+ (id)imageByApplyingBlurToImage:(id)image withRadius:(double)radius tintColor:(id)color saturationDeltaFactor:(double)factor maskImage:(id)maskImage;
+ (id)imageByApplyingDarkEffectToImage:(id)image;
+ (id)imageByApplyingExtraLightEffectToImage:(id)image;
+ (id)imageByApplyingLightEffectToImage:(id)image;
+ (id)imageByApplyingTintEffectWithColor:(id)color toImage:(id)image;
@end

@implementation GKImageEffects

+ (id)imageByApplyingLightEffectToImage:(id)image
{
  v4 = MEMORY[0x277D75348];
  imageCopy = image;
  v6 = [v4 colorWithWhite:1.0 alpha:0.3];
  v7 = [self imageByApplyingBlurToImage:imageCopy withRadius:v6 tintColor:0 saturationDeltaFactor:60.0 maskImage:1.8];

  return v7;
}

+ (id)imageByApplyingExtraLightEffectToImage:(id)image
{
  v4 = MEMORY[0x277D75348];
  imageCopy = image;
  v6 = [v4 colorWithWhite:0.97 alpha:0.82];
  v7 = [self imageByApplyingBlurToImage:imageCopy withRadius:v6 tintColor:0 saturationDeltaFactor:40.0 maskImage:1.8];

  return v7;
}

+ (id)imageByApplyingDarkEffectToImage:(id)image
{
  v4 = MEMORY[0x277D75348];
  imageCopy = image;
  v6 = [v4 colorWithWhite:0.11 alpha:0.73];
  v7 = [self imageByApplyingBlurToImage:imageCopy withRadius:v6 tintColor:0 saturationDeltaFactor:40.0 maskImage:1.8];

  return v7;
}

+ (id)imageByApplyingTintEffectWithColor:(id)color toImage:(id)image
{
  colorCopy = color;
  imageCopy = image;
  v8 = colorCopy;
  if (CGColorGetNumberOfComponents([v8 CGColor]) == 2)
  {
    v15 = 0.0;
    v9 = v8;
    if (![v8 getWhite:&v15 alpha:0])
    {
      goto LABEL_7;
    }

    v10 = [MEMORY[0x277D75348] colorWithWhite:v15 alpha:0.6];
  }

  else
  {
    v14 = 0.0;
    v15 = 0.0;
    v13 = 0.0;
    v9 = v8;
    if (![v8 getRed:&v15 green:&v14 blue:&v13 alpha:0])
    {
      goto LABEL_7;
    }

    v10 = [MEMORY[0x277D75348] colorWithRed:v15 green:v14 blue:v13 alpha:0.6];
  }

  v9 = v10;

LABEL_7:
  v11 = [self imageByApplyingBlurToImage:imageCopy withRadius:v9 tintColor:0 saturationDeltaFactor:20.0 maskImage:-1.0];

  return v11;
}

+ (id)imageByApplyingBlurToImage:(id)image withRadius:(double)radius tintColor:(id)color saturationDeltaFactor:(double)factor maskImage:(id)maskImage
{
  *v47 = *&factor;
  v65 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  colorCopy = color;
  maskImageCopy = maskImage;
  [imageCopy size];
  if (v13 < 1.0 || ([imageCopy size], v14 < 1.0))
  {
    [imageCopy size];
    v16 = v15;
    [imageCopy size];
    NSLog(&cfstr_ErrorInvalidSi.isa, v16, v17, imageCopy);
LABEL_4:
    v18 = 0;
    goto LABEL_5;
  }

  if (![imageCopy CGImage])
  {
    NSLog(&cfstr_ErrorInputimag.isa, imageCopy);
    goto LABEL_4;
  }

  if (maskImageCopy && ![maskImageCopy CGImage])
  {
    NSLog(&cfstr_ErrorEffectmas.isa, maskImageCopy);
    goto LABEL_4;
  }

  v20 = fabs(v47[0] + -1.0);
  cGImage = [imageCopy CGImage];
  [imageCopy scale];
  v23 = v22;
  BitmapInfo = CGImageGetBitmapInfo(cGImage);
  [imageCopy size];
  width = v67.width;
  height = v67.height;
  v27 = *MEMORY[0x277CBF348];
  v28 = *(MEMORY[0x277CBF348] + 8);
  UIGraphicsBeginImageContextWithOptions(v67, (0x61u >> BitmapInfo) & 1, v23);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, -height);
  if (radius > 0.00000011920929 || v20 > 0.00000011920929)
  {
    memset(&src, 0, sizeof(src));
    memset(&dest, 0, sizeof(dest));
    v49 = 0u;
    v50 = 0u;
    v48 = 0x2000000008;
    DWORD2(v49) = 8194;
    v30 = MEMORY[0x253041070](&src, &v48, 0, [imageCopy CGImage], 256);
    if (v30)
    {
      NSLog(&cfstr_ErrorVimagebuf.isa, v30, imageCopy);
      UIGraphicsEndImageContext();
      goto LABEL_4;
    }

    p_dest = &dest;
    MEMORY[0x253041060](&dest, src.height, src.width, HIDWORD(v48), 0);
    if (radius <= 0.00000011920929)
    {
      p_src = &src;
    }

    else
    {
      v32 = (v23 * radius * 3.0 * 2.50662827 * 0.25 + 0.5) * 0.5;
      if (v23 * radius + -2.0 < 0.00000011920929)
      {
        v32 = 2.12997121;
      }

      v33 = vcvtmd_u64_f64(v32);
      p_dest = &src;
      p_src = &dest;
      v35 = vImageBoxConvolve_ARGB8888(&src, &dest, 0, 0, 0, v33 | 1, v33 | 1, 0, 0x88u);
      v36 = malloc_type_malloc(v35, 0x44737BBFuLL);
      vImageBoxConvolve_ARGB8888(&src, &dest, v36, 0, 0, v33 | 1, v33 | 1, 0, 8u);
      vImageBoxConvolve_ARGB8888(&dest, &src, v36, 0, 0, v33 | 1, v33 | 1, 0, 8u);
      vImageBoxConvolve_ARGB8888(&src, &dest, v36, 0, 0, v33 | 1, v33 | 1, 0, 8u);
      free(v36);
    }

    if (v20 <= 0.00000011920929)
    {
      p_data = &p_dest->data;
      p_dest = p_src;
    }

    else
    {
      v53 = v47[0] * 0.9278 + 0.0722;
      v54 = v47[0] * -0.0722 + 0.0722;
      v55 = v54;
      v57 = vmlaq_n_f64(vdupq_n_s64(0x3FE6E2EB1C432CA5uLL), xmmword_24E367A70, v47[0]);
      v58 = v57.f64[0];
      v56 = 0;
      v59 = 0;
      v37 = vmlaq_n_f64(vdupq_n_s64(0x3FCB367A0F9096BCuLL), xmmword_24E367A80, v47[0]);
      v60 = v37.f64[0];
      v61 = v37;
      v62 = 0u;
      v63 = 0u;
      v64 = 0x3FF0000000000000;
      v38 = 0;
      v39 = &v53;
      v40 = vdupq_n_s64(0x4070000000000000uLL);
      do
      {
        v41 = *v39;
        v42 = *(v39 + 2);
        v39 += 4;
        *(v47 + v38 + 16) = vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v41, v40)), vmulq_f64(v42, v40)))));
        v38 += 8;
      }

      while (v38 != 32);
      vImageMatrixMultiply_ARGB8888(p_src, p_dest, &v46, 256, 0, 0, 0);
      p_data = &p_src->data;
    }

    v44 = MEMORY[0x253041080](p_dest, &v48, cleanupBuffer, 0, 512, 0);
    if (!v44)
    {
      v44 = MEMORY[0x253041080](p_dest, &v48, 0, 0, 0, 0);
      free(p_dest->data);
    }

    if (maskImageCopy)
    {
      v70.origin.x = v27;
      v70.origin.y = v28;
      v70.size.width = width;
      v70.size.height = height;
      CGContextDrawImage(CurrentContext, v70, cGImage);
      CGContextSaveGState(CurrentContext);
      cGImage2 = [maskImageCopy CGImage];
      v71.origin.x = v27;
      v71.origin.y = v28;
      v71.size.width = width;
      v71.size.height = height;
      CGContextClipToMask(CurrentContext, v71, cGImage2);
    }

    else
    {
      CGContextSaveGState(CurrentContext);
    }

    v72.origin.x = v27;
    v72.origin.y = v28;
    v72.size.width = width;
    v72.size.height = height;
    CGContextDrawImage(CurrentContext, v72, v44);
    CGContextRestoreGState(CurrentContext);
    CGImageRelease(v44);
    free(*p_data);
    if (colorCopy)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v68.origin.x = v27;
    v68.origin.y = v28;
    v68.size.width = width;
    v68.size.height = height;
    CGContextDrawImage(CurrentContext, v68, cGImage);
    if (colorCopy)
    {
LABEL_14:
      CGContextSaveGState(CurrentContext);
      CGContextSetFillColorWithColor(CurrentContext, [colorCopy CGColor]);
      v69.origin.x = v27;
      v69.origin.y = v28;
      v69.size.width = width;
      v69.size.height = height;
      CGContextFillRect(CurrentContext, v69);
      CGContextRestoreGState(CurrentContext);
    }
  }

  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
LABEL_5:

  return v18;
}

@end