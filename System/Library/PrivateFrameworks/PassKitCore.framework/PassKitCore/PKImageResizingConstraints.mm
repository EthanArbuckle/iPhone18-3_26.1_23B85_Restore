@interface PKImageResizingConstraints
+ (id)constraintsWithAspectFillToSize:(CGSize)size;
+ (id)constraintsWithAspectFitToSize:(CGSize)size;
+ (id)constraintsWithFixedHeight:(double)height minAspectRatio:(double)ratio maxAspectRatio:(double)aspectRatio;
+ (id)constraintsWithFixedLargeDimenstion:(double)dimenstion minAspectRatio:(double)ratio maxAspectRatio:(double)aspectRatio;
+ (id)constraintsWithFixedSmallDimenstion:(double)dimenstion minAspectRatio:(double)ratio maxAspectRatio:(double)aspectRatio;
+ (id)constraintsWithFixedWidth:(double)width minAspectRatio:(double)ratio maxAspectRatio:(double)aspectRatio;
+ (id)constraintsWithMaxSize:(CGSize)size;
+ (id)constraintsWithMaxSize:(CGSize)size minAspectRatio:(double)ratio maxAspectRatio:(double)aspectRatio;
+ (id)constraintsWithMinSize:(CGSize)size;
+ (id)constraintsWithMinSize:(CGSize)size minAspectRatio:(double)ratio maxAspectRatio:(double)aspectRatio;
- (BOOL)_getPixelCropRect:(CGRect *)rect pixelOutputSize:(CGSize *)size forImageSize:(CGSize)imageSize scale:(double)scale;
- (BOOL)_reasonable;
- (BOOL)getPixelCropRect:(CGRect *)rect pixelOutputSize:(CGSize *)size forImage:(id)image;
- (CGRect)_getDrawRectForImage:(CGImage *)image withOutputSize:(CGSize)size;
- (PKImageResizingConstraints)init;
- (id)_flippedConstraints;
- (id)resizedImage:(id)image;
- (void)setOutputScale:(double)scale;
@end

@implementation PKImageResizingConstraints

- (PKImageResizingConstraints)init
{
  v4.receiver = self;
  v4.super_class = PKImageResizingConstraints;
  v2 = [(PKImageResizingConstraints *)&v4 init];
  if (v2)
  {
    v2->_outputScale = PKScreenScale();
  }

  return v2;
}

- (void)setOutputScale:(double)scale
{
  if (scale == 0.0)
  {
    scale = PKScreenScale();
  }

  self->_outputScale = scale;
}

+ (id)constraintsWithFixedWidth:(double)width minAspectRatio:(double)ratio maxAspectRatio:(double)aspectRatio
{
  v8 = objc_alloc_init(PKImageResizingConstraints);
  v8->_constraintType = 0;
  v8->_fixedDimension = width;
  v8->_minAspectRatio = ratio;
  v8->_maxAspectRatio = aspectRatio;
  v8->_respectAspectRatioRange = 1;

  return v8;
}

+ (id)constraintsWithFixedHeight:(double)height minAspectRatio:(double)ratio maxAspectRatio:(double)aspectRatio
{
  v8 = objc_alloc_init(PKImageResizingConstraints);
  v8->_constraintType = 1;
  v8->_fixedDimension = height;
  v8->_minAspectRatio = ratio;
  v8->_maxAspectRatio = aspectRatio;
  v8->_respectAspectRatioRange = 1;

  return v8;
}

+ (id)constraintsWithFixedLargeDimenstion:(double)dimenstion minAspectRatio:(double)ratio maxAspectRatio:(double)aspectRatio
{
  v8 = objc_alloc_init(PKImageResizingConstraints);
  v8->_constraintType = 2;
  v8->_fixedDimension = dimenstion;
  v8->_minAspectRatio = ratio;
  v8->_maxAspectRatio = aspectRatio;
  v8->_respectAspectRatioRange = 1;

  return v8;
}

+ (id)constraintsWithFixedSmallDimenstion:(double)dimenstion minAspectRatio:(double)ratio maxAspectRatio:(double)aspectRatio
{
  v8 = objc_alloc_init(PKImageResizingConstraints);
  v8->_constraintType = 3;
  v8->_fixedDimension = dimenstion;
  v8->_minAspectRatio = ratio;
  v8->_maxAspectRatio = aspectRatio;
  v8->_respectAspectRatioRange = 1;

  return v8;
}

+ (id)constraintsWithMaxSize:(CGSize)size minAspectRatio:(double)ratio maxAspectRatio:(double)aspectRatio
{
  height = size.height;
  width = size.width;
  v9 = objc_alloc_init(PKImageResizingConstraints);
  v9->_constraintType = 6;
  v9->_size.width = width;
  v9->_size.height = height;
  v9->_minAspectRatio = ratio;
  v9->_maxAspectRatio = aspectRatio;
  v9->_respectAspectRatioRange = 1;

  return v9;
}

+ (id)constraintsWithMinSize:(CGSize)size minAspectRatio:(double)ratio maxAspectRatio:(double)aspectRatio
{
  height = size.height;
  width = size.width;
  v9 = objc_alloc_init(PKImageResizingConstraints);
  v9->_constraintType = 7;
  v9->_size.width = width;
  v9->_size.height = height;
  v9->_minAspectRatio = ratio;
  v9->_maxAspectRatio = aspectRatio;
  v9->_respectAspectRatioRange = 1;

  return v9;
}

+ (id)constraintsWithMaxSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_alloc_init(PKImageResizingConstraints);
  v5->_constraintType = 6;
  v5->_size.width = width;
  v5->_size.height = height;

  return v5;
}

+ (id)constraintsWithMinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_alloc_init(PKImageResizingConstraints);
  v5->_constraintType = 7;
  v5->_size.width = width;
  v5->_size.height = height;

  return v5;
}

+ (id)constraintsWithAspectFillToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_alloc_init(PKImageResizingConstraints);
  v5->_constraintType = 4;
  v5->_size.width = width;
  v5->_size.height = height;

  return v5;
}

+ (id)constraintsWithAspectFitToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_alloc_init(PKImageResizingConstraints);
  v5->_constraintType = 5;
  v5->_size.width = width;
  v5->_size.height = height;

  return v5;
}

- (id)resizedImage:(id)image
{
  v32 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  memset(&v29, 0, sizeof(v29));
  v27 = 0.0;
  v28 = 0.0;
  v5 = 0;
  if ([(PKImageResizingConstraints *)self getPixelCropRect:&v29 pixelOutputSize:&v27 forImage:imageCopy])
  {
    BitmapContext = _CreateBitmapContext(0, 0, 0, v27, v28, 1.0);
    if (!BitmapContext)
    {
      goto LABEL_11;
    }

    v7 = BitmapContext;
    imageRef = [imageCopy imageRef];
    v9 = CGImageCreateWithImageInRect(imageRef, v29);
    [(PKImageResizingConstraints *)self _getDrawRectForImage:v9 withOutputSize:v27, v28];
    v14 = v13;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    outputCornerRadius = self->_outputCornerRadius;
    if (outputCornerRadius > 0.0)
    {
      v19 = [PKRoundedPath pathWithRoundedRect:v14 cornerRadius:v10, v11, v12, outputCornerRadius * self->_outputScale];
      cGPath = [v19 CGPath];

      CGContextBeginPath(v7);
      CGContextAddPath(v7, cGPath);
      CGContextClosePath(v7);
      CGContextClip(v7);
    }

    if (v9)
    {
      v34.origin.x = v14;
      v34.origin.y = v15;
      v34.size.width = v16;
      v34.size.height = v17;
      CGContextDrawImage(v7, v34, v9);
      CFRelease(v9);
    }

    Image = CGBitmapContextCreateImage(v7);
    CFRelease(v7);
    if (Image)
    {
      outputMirrored = self->_outputMirrored;
      orientation = [imageCopy orientation];
      v24 = orientation;
      if (outputMirrored)
      {
        v24 = _MirroredOrientation(orientation);
      }

      v5 = [[PKImage alloc] initWithCGImage:Image scale:v24 orientation:self->_outputScale];
      CFRelease(Image);
    }

    else
    {
LABEL_11:
      v25 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v31 = imageCopy;
        _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "PKImageResizingConstraints: failed to resize image %p - could not create destination context.", buf, 0xCu);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)getPixelCropRect:(CGRect *)rect pixelOutputSize:(CGSize *)size forImage:(id)image
{
  imageCopy = image;
  if (([imageCopy orientation] - 1) > 3)
  {
    _flippedConstraints = [(PKImageResizingConstraints *)self _flippedConstraints];
    [imageCopy size];
    v18 = v17;
    v20 = v19;
    [imageCopy scale];
    v22 = v21;

    v23 = [_flippedConstraints _getPixelCropRect:rect pixelOutputSize:size forImageSize:v18 scale:{v20, v22}];
    return v23;
  }

  else
  {
    [imageCopy size];
    v10 = v9;
    v12 = v11;
    [imageCopy scale];
    v14 = v13;

    return [(PKImageResizingConstraints *)self _getPixelCropRect:rect pixelOutputSize:size forImageSize:v10 scale:v12, v14];
  }
}

- (BOOL)_getPixelCropRect:(CGRect *)rect pixelOutputSize:(CGSize *)size forImageSize:(CGSize)imageSize scale:(double)scale
{
  v7 = self->_outputBorderTrim * scale;
  v8 = v7 * -2.0 + imageSize.width * scale;
  v9 = v7 * -2.0 + imageSize.height * scale;
  v10 = v9 > 0.0 && v8 > 0.0;
  if (!v10)
  {
    return v10;
  }

  constraintType = self->_constraintType;
  v12 = v8 / v9;
  if (constraintType == 4)
  {
    minAspectRatio = self->_size.width / self->_size.height;
  }

  else
  {
    minAspectRatio = v8 / v9;
    if (self->_respectAspectRatioRange)
    {
      minAspectRatio = self->_minAspectRatio;
      maxAspectRatio = self->_maxAspectRatio;
      if (maxAspectRatio >= v12)
      {
        maxAspectRatio = v8 / v9;
      }

      if (minAspectRatio <= maxAspectRatio)
      {
        minAspectRatio = maxAspectRatio;
      }
    }
  }

  if (v12 > minAspectRatio + 0.00000011920929)
  {
    v15 = (v8 - v9 * minAspectRatio) * 0.5;
    v16 = v7;
    v7 = v7 + floorf(v15);
    v8 = v9 * minAspectRatio;
    if (!rect)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v12 < minAspectRatio + -0.00000011920929)
  {
    v17 = (v9 - v8 / minAspectRatio) * 0.5;
    v16 = v7 + floorf(v17);
    v9 = v8 / minAspectRatio;
    if (!rect)
    {
      goto LABEL_15;
    }

LABEL_14:
    rect->origin.x = v7;
    rect->origin.y = v16;
    rect->size.width = v8;
    rect->size.height = v9;
    goto LABEL_15;
  }

  v16 = v7;
  if (rect)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (constraintType <= 3)
  {
    if (constraintType <= 1)
    {
      if (constraintType)
      {
        if (constraintType == 1)
        {
          v9 = self->_fixedDimension * self->_outputScale;
          v8 = minAspectRatio * v9;
          if (!size)
          {
            return v10;
          }

LABEL_57:
          size->width = v8;
          size->height = v9;
          return v10;
        }

        goto LABEL_59;
      }

      v8 = self->_fixedDimension * self->_outputScale;
LABEL_44:
      v9 = v8 / minAspectRatio;
      if (!size)
      {
        return v10;
      }

      goto LABEL_57;
    }

    if (constraintType == 2)
    {
      v8 = self->_fixedDimension * self->_outputScale;
      if (minAspectRatio > 1.0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v8 = self->_fixedDimension * self->_outputScale;
      if (minAspectRatio < 1.0)
      {
        goto LABEL_44;
      }
    }

    v9 = v8;
    v8 = minAspectRatio * v8;
    if (!size)
    {
      return v10;
    }

    goto LABEL_57;
  }

  if ((constraintType - 4) < 2)
  {
    outputScale = self->_outputScale;
    v8 = self->_size.width * outputScale;
    v9 = outputScale * self->_size.height;
    if (!size)
    {
      return v10;
    }

    goto LABEL_57;
  }

  if (constraintType == 6)
  {
    v28 = self->_outputScale;
    v29 = self->_size.width * v28;
    v30 = v28 * self->_size.height;
    if (v8 <= v29 && v9 <= v30)
    {
LABEL_56:
      if (!size)
      {
        return v10;
      }

      goto LABEL_57;
    }

    v32 = v29 / v8;
    v33 = v30 / v9;
    if (v32 >= v33)
    {
      v32 = v33;
    }

    v34 = v8 * v32;
    v8 = floorf(v34);
    v35 = v9 * v32;
    v26 = floorf(v35);
LABEL_55:
    v9 = v26;
    goto LABEL_56;
  }

  if (constraintType == 7)
  {
    v18 = self->_outputScale;
    v19 = self->_size.width * v18;
    v20 = v18 * self->_size.height;
    if (v8 >= v19 && v9 >= v20)
    {
      goto LABEL_56;
    }

    v22 = v19 / v8;
    v23 = v20 / v9;
    if (v22 <= v23)
    {
      v22 = v23;
    }

    v24 = v8 * v22;
    v8 = ceilf(v24);
    v25 = v9 * v22;
    v26 = ceilf(v25);
    goto LABEL_55;
  }

LABEL_59:
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  if (size)
  {
    goto LABEL_57;
  }

  return v10;
}

- (CGRect)_getDrawRectForImage:(CGImage *)image withOutputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_constraintType == 5)
  {
    v8 = CGImageGetWidth(image);
    v9 = v8;
    v10 = CGImageGetHeight(image);
    v11 = v10;
    v12 = width / v8;
    if (!v8)
    {
      v12 = 1.0;
    }

    v13 = height / v11;
    if (!v10)
    {
      v13 = 1.0;
    }

    if (fmin(v12, v13) != 1.0)
    {
      if (v12 >= v13)
      {
        v9 = height * (v9 / v11);
        v11 = height;
      }

      else
      {
        v11 = width * (v11 / v9);
        v9 = width;
      }
    }

    v14 = PKSizeAlignedInRectWithScale(0x100000001uLL, v9, v11, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height, self->_outputScale);
    width = v16;
    height = v17;
  }

  else
  {
    v14 = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)_reasonable
{
  v34 = *MEMORY[0x1E69E9840];
  fixedDimension = self->_fixedDimension;
  v4 = fixedDimension <= 2048.0;
  if (fixedDimension < 10.0)
  {
    v4 = 0;
  }

  if (self->_respectAspectRatioRange)
  {
    v5 = 0;
    minAspectRatio = self->_minAspectRatio;
    if (minAspectRatio <= 5.0 && minAspectRatio >= 0.200000003)
    {
      maxAspectRatio = self->_maxAspectRatio;
      v5 = maxAspectRatio <= 5.0;
      if (minAspectRatio > maxAspectRatio)
      {
        v5 = 0;
      }

      if (maxAspectRatio < 0.200000003)
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 1;
  }

  width = self->_size.width;
  if (width > 2048.0 || width < 10.0)
  {
    v11 = 0;
  }

  else
  {
    height = self->_size.height;
    v11 = height >= 10.0;
    if (height > 2048.0)
    {
      v11 = 0;
    }
  }

  outputScale = self->_outputScale;
  v13 = outputScale == 1.0;
  if (outputScale == 2.0)
  {
    v13 = 1;
  }

  if (outputScale == 3.0)
  {
    v13 = 1;
  }

  if (outputScale == 4.0)
  {
    v13 = 1;
  }

  constraintType = self->_constraintType;
  if (constraintType - 4 < 4)
  {
    v15 = v11 && v5;
  }

  else
  {
    if (constraintType > 3)
    {
      goto LABEL_32;
    }

    v15 = v4 && v5;
  }

  if (v15 & v13)
  {
    return 1;
  }

LABEL_32:
  v17 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v19 = self->_minAspectRatio;
    v18 = self->_maxAspectRatio;
    v20 = self->_size.height;
    v21[0] = 67110656;
    v21[1] = constraintType;
    v22 = 2048;
    v23 = fixedDimension;
    v24 = 2048;
    v25 = v19;
    v26 = 2048;
    v27 = v18;
    v28 = 2048;
    v29 = width;
    v30 = 2048;
    v31 = v20;
    v32 = 2048;
    v33 = outputScale;
    _os_log_error_impl(&dword_1AD337000, v17, OS_LOG_TYPE_ERROR, "Unreasonable constraints: <type: %d, dimen: %f, ratio: (%f, %f), size: (%f, %f), scale: %f>", v21, 0x44u);
  }

  return 0;
}

- (id)_flippedConstraints
{
  v3 = objc_alloc_init(PKImageResizingConstraints);
  v3->_fixedDimension = self->_fixedDimension;
  v4 = vextq_s8(*&self->_minAspectRatio, *&self->_minAspectRatio, 8uLL);
  __asm { FMOV            V2.2D, #1.0 }

  *&v3->_minAspectRatio = vbicq_s8(vdivq_f64(_Q2, v4), vceqzq_f64(v4));
  v3->_respectAspectRatioRange = self->_respectAspectRatioRange;
  v3->_size = vextq_s8(self->_size, self->_size, 8uLL);
  v3->_outputScale = self->_outputScale;
  v3->_outputBorderTrim = self->_outputBorderTrim;
  v3->_outputMirrored = self->_outputMirrored;
  constraintType = self->_constraintType;
  if (constraintType)
  {
    if (constraintType == 1)
    {
      constraintType = 0;
    }
  }

  else
  {
    constraintType = 1;
  }

  v3->_constraintType = constraintType;

  return v3;
}

@end