@interface ISDimmingConversion
- (BOOL)_computeDimmedImage;
- (BOOL)_prepareSamplesIfNeeded;
- (BOOL)isDimmable;
- (CGImage)createDimmedImage;
- (ISDimmingConversion)initWithCGImage:(CGImage *)image;
- (void)_computeDimmingParameters;
- (void)dealloc;
@end

@implementation ISDimmingConversion

- (ISDimmingConversion)initWithCGImage:(CGImage *)image
{
  v6.receiver = self;
  v6.super_class = ISDimmingConversion;
  v4 = [(ISDimmingConversion *)&v6 init];
  if (v4)
  {
    v4->_cgImage = CGImageRetain(image);
    *&v4->_targetHighlightBrightnessLevel = 0x3EE666663F6CCCCDLL;
    v4->_minMeanBrightnessAdjustmentFactor = 0.65;
  }

  return v4;
}

- (void)dealloc
{
  CGImageRelease(self->_cgImage);
  data = self->_data;
  if (data)
  {
    CFRelease(data);
  }

  free(*&self->_ucharDimmed[3]);
  v4.receiver = self;
  v4.super_class = ISDimmingConversion;
  [(ISDimmingConversion *)&v4 dealloc];
}

- (BOOL)_prepareSamplesIfNeeded
{
  if (*self->_anon_38)
  {
    LOBYTE(cgImage) = 1;
    return cgImage;
  }

  cgImage = self->_cgImage;
  if (!cgImage)
  {
    return cgImage;
  }

  ColorSpace = CGImageGetColorSpace(cgImage);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
LABEL_17:
    LOBYTE(cgImage) = 0;
    return cgImage;
  }

  BitsPerPixel = CGImageGetBitsPerPixel(self->_cgImage);
  BitsPerComponent = CGImageGetBitsPerComponent(self->_cgImage);
  LOBYTE(cgImage) = 0;
  if (BitsPerComponent == 8 && BitsPerPixel == 32)
  {
    Width = CGImageGetWidth(self->_cgImage);
    Height = CGImageGetHeight(self->_cgImage);
    BytesPerRow = CGImageGetBytesPerRow(self->_cgImage);
    v10 = BytesPerRow >= 0 ? BytesPerRow : BytesPerRow + 3;
    AlphaInfo = CGImageGetAlphaInfo(self->_cgImage);
    LOBYTE(cgImage) = 0;
    if (AlphaInfo <= kCGImageAlphaNoneSkipLast && ((1 << AlphaInfo) & 0x2A) != 0)
    {
      cgImage = CGImageGetDataProvider(self->_cgImage);
      if (cgImage)
      {
        cgImage = CGDataProviderCopyData(cgImage);
        if (cgImage)
        {
          v12 = cgImage;
          cgImage = CFDataGetBytePtr(cgImage);
          if (cgImage)
          {
            self->_data = v12;
            self->_samples.width = Width;
            self->_samples.height = Height;
            self->_samples.padding = (v10 >> 2) - Width;
            self->_samples.alphaInfo = AlphaInfo;
            *self->_anon_38 = cgImage;
            self->_width = Width;
            self->_height = Height;
            self->_numberOfSamples = Height * Width;
            LOBYTE(cgImage) = 1;
            return cgImage;
          }

          CFRelease(v12);
          goto LABEL_17;
        }
      }
    }
  }

  return cgImage;
}

- (void)_computeDimmingParameters
{
  v68 = *MEMORY[0x1E69E9840];
  if ([(ISDimmingConversion *)self _prepareSamplesIfNeeded])
  {
    targetHighlightBrightnessLevel = self->_targetHighlightBrightnessLevel;
    targetMeanBrightnessLevel = self->_targetMeanBrightnessLevel;
    samples = self->_samples;
    v40 = *self->_anon_38;
    numberOfSamples = self->_numberOfSamples;
    v6 = malloc_type_malloc(0x1F40uLL, 0x100004052888210uLL);
    v7 = 0;
    v38 = 10;
    do
    {
      v8 = ISSegmentationMathUtils_rand_open(&v38, 0, numberOfSamples);
      v43 = samples;
      *&v44 = v40;
      v42.i32[2] = 0;
      v42.i64[0] = 0;
      v41 = 0.0;
      ISSegmentationSamples_readSample_i(&v43, v8, &v42, &v41);
      v6[v7++] = (v41 * (ISSegmentationMathUtils_luma(v42) + -0.0784)) + 0.0784;
    }

    while (v7 != 2000);
    v9 = 0;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0;
    v10.i32[1] = 0;
    do
    {
      v11 = (v6[v9] * 100.0);
      if (v11 >= 99)
      {
        v11 = 99;
      }

      ++*(&v43.width + v11);
      ++v9;
    }

    while (v9 != 2000);
    v12 = 0;
    v13 = 99;
    while (1)
    {
      v12 += *(&v43.width + v13);
      if (v12 >= 300)
      {
        break;
      }

      if (--v13 == -1)
      {
        v14 = 1.0;
        goto LABEL_13;
      }
    }

    v14 = v13 / 99.0;
LABEL_13:
    v15 = 1.0;
    if (v14 > targetHighlightBrightnessLevel)
    {
      v15 = targetHighlightBrightnessLevel / v14;
      v16 = 1.0 - (targetHighlightBrightnessLevel / v14);
      v17 = (1.0 / v16) + -1.0;
      *v10.i32 = -v16;
      v18 = vdupq_lane_s32(v10, 0);
      v19 = 2000;
      __asm { FMOV            V0.4S, #1.0 }

      v32 = _Q0;
      v33 = v18;
      v25 = v6;
      do
      {
        v37 = *v25;
        v36 = powf(COERCE_FLOAT(*v25), v17);
        v35 = powf(v37.f32[1], v17);
        v34 = powf(v37.f32[2], v17);
        v26 = powf(v37.f32[3], v17);
        v27.i64[0] = __PAIR64__(LODWORD(v35), LODWORD(v36));
        v27.i64[1] = __PAIR64__(LODWORD(v26), LODWORD(v34));
        *v25++ = vmulq_f32(v37, vmlaq_f32(v32, v27, v33));
        v19 -= 4;
      }

      while (v19);
    }

    v28 = 0.0;
    v29 = 0x3FFFFFFFFFFFF830;
    do
    {
      v28 = (((v28 + COERCE_FLOAT(*&v6[v29 + 2000])) + COERCE_FLOAT(HIDWORD(*&v6[v29 + 2000]))) + COERCE_FLOAT(*&v6[v29 + 2002])) + COERCE_FLOAT(HIDWORD(*&v6[v29 + 2000]));
      v29 += 4;
    }

    while (v29 * 4);
    v30 = v28 / 2000.0;
    self->_hasDimmingParameters = 1;
    self->_isDimmable = v14 > targetHighlightBrightnessLevel || v30 > targetMeanBrightnessLevel;
    self->_highlightBrightnessAdjustmentFactor = v15;
    self->_shouldAdjustHighlightBrightness = v14 > targetHighlightBrightnessLevel;
    self->_meanBrightnessAfterHighlightAdjustment = v30;
    self->_shouldAdjustMeanBrightness = v30 > targetMeanBrightnessLevel;
    free(v6);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)isDimmable
{
  if (!self->_hasDimmingParameters)
  {
    [(ISDimmingConversion *)self _computeDimmingParameters];
  }

  return self->_isDimmable;
}

- (BOOL)_computeDimmedImage
{
  isDimmable = [(ISDimmingConversion *)self isDimmable];
  if (isDimmable)
  {
    v4 = *&self->_ucharDimmed[3];
    if (!v4)
    {
      v4 = malloc_type_malloc(4 * self->_numberOfSamples, 0x100004052888210uLL);
      *&self->_ucharDimmed[3] = v4;
    }

    samples = self->_samples;
    v28 = *self->_anon_38;
    numberOfSamples = self->_numberOfSamples;
    if (numberOfSamples >= 1)
    {
      v6 = 0;
      shouldAdjustHighlightBrightness = self->_shouldAdjustHighlightBrightness;
      meanBrightnessAfterHighlightAdjustment = self->_meanBrightnessAfterHighlightAdjustment;
      shouldAdjustMeanBrightness = self->_shouldAdjustMeanBrightness;
      v10 = fminf(fmaxf((self->_targetMeanBrightnessLevel + (-(meanBrightnessAfterHighlightAdjustment * meanBrightnessAfterHighlightAdjustment) * meanBrightnessAfterHighlightAdjustment)) / (meanBrightnessAfterHighlightAdjustment + (-(meanBrightnessAfterHighlightAdjustment * meanBrightnessAfterHighlightAdjustment) * meanBrightnessAfterHighlightAdjustment)), self->_minMeanBrightnessAdjustmentFactor), 1.0);
      v11 = 1.0 - self->_highlightBrightnessAdjustmentFactor;
      v12 = (1.0 / v11) + -1.0;
      v13 = -v11;
      v25 = vdupq_n_s32(0x437F0000u);
      do
      {
        v29 = samples;
        v30 = v28;
        v32.i32[2] = 0;
        v32.i64[0] = 0;
        v31 = 0.0;
        ISSegmentationSamples_readSample_i(&v29, v6, &v32, &v31);
        v14 = ISSegmentationMathUtils_luma(v32);
        if (v31 == 0.0)
        {
          v15 = 0;
        }

        else
        {
          v26 = v31;
          v16 = v32;
          if (shouldAdjustHighlightBrightness)
          {
            v16 = vmulq_n_f32(v32, (v13 * powf(v14, v12)) + 1.0);
          }

          if (shouldAdjustMeanBrightness)
          {
            v17 = ((v10 * v14) + (1.0 - v10) * (v14 * (v14 * v14))) / v14;
            v18.n128_f64[0] = ISSegmentationMathUtils_rgb2lab(v16);
            v18.n128_f32[0] = v17 * v18.n128_f32[0];
            v19.f32[0] = v18.n128_f32[0];
            v20.n128_u64[0] = ISSegmentationMathUtils_lab2rgb(v18, v19);
            v16 = v20;
          }

          v16.n128_u32[3] = 0;
          v21 = vmaxnmq_f32(v16, 0);
          v21.i32[3] = 0;
          v22 = vminnmq_f32(v21, xmmword_1A78250B0);
          *&v23 = vmuls_lane_f32(255.0, v22, 2);
          v22.i64[0] = vmulq_f32(v22, v25).u64[0];
          v22.i64[1] = v23 | 0x437F000000000000;
          v15 = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v22, v26)));
        }

        v4[v6++] = vuzp1_s8(v15, v15).u32[0];
      }

      while (numberOfSamples != v6);
    }
  }

  return isDimmable;
}

- (CGImage)createDimmedImage
{
  if (![(ISDimmingConversion *)self _computeDimmedImage])
  {
    return 0;
  }

  width = self->_width;
  height = self->_height;
  v5 = *&self->_ucharDimmed[3];

  return ISCreateCGImageUchar4AlphaPremultiplied(width, height, v5);
}

@end