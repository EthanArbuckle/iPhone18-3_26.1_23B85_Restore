@interface ISFallbackIconFactory
- (ISFallbackIconFactory)initWithCGImage:(CGImage *)image idiom:(unint64_t)idiom;
- (id)_createDarkFallbackIcon_iOS;
- (id)_createDarkFallbackIcon_macOS;
- (id)_createLightFallbackIcon_iOS;
- (id)_createLightFallbackIcon_macOS;
- (id)_createTintedFallbackIcon_iOS;
- (id)_createTintedFallbackIcon_macOS;
- (id)createDarkFallbackIcon;
- (id)createLightFallbackIcon;
- (id)createTintedFallbackIcon;
- (void)dealloc;
@end

@implementation ISFallbackIconFactory

- (void)dealloc
{
  CGImageRelease(self->_cgImage);
  v3.receiver = self;
  v3.super_class = ISFallbackIconFactory;
  [(ISFallbackIconFactory *)&v3 dealloc];
}

- (id)createLightFallbackIcon
{
  idiom = self->_idiom;
  if (idiom != 4)
  {
    if (idiom == 2)
    {
      _createLightFallbackIcon_macOS = [(ISFallbackIconFactory *)self _createLightFallbackIcon_macOS];
      goto LABEL_6;
    }

    if (idiom != 1)
    {
      goto LABEL_7;
    }
  }

  _createLightFallbackIcon_macOS = [(ISFallbackIconFactory *)self _createLightFallbackIcon_iOS];
LABEL_6:
  a2 = _createLightFallbackIcon_macOS;
LABEL_7:

  return a2;
}

- (id)_createLightFallbackIcon_iOS
{
  v3 = CGImageRetain(self->_cgImage);
  idiom = self->_idiom;

  return _attemptLightSegmentationWithCroppedCGImage(v3, idiom);
}

- (ISFallbackIconFactory)initWithCGImage:(CGImage *)image idiom:(unint64_t)idiom
{
  v8.receiver = self;
  v8.super_class = ISFallbackIconFactory;
  v6 = [(ISFallbackIconFactory *)&v8 init];
  if (v6)
  {
    v6->_cgImage = CGImageRetain(image);
    v6->_idiom = idiom;
  }

  return v6;
}

- (id)_createLightFallbackIcon_macOS
{
  Width = CGImageGetWidth(self->_cgImage);
  Height = CGImageGetHeight(self->_cgImage);
  v23 = 0uLL;
  v22 = 0;
  v5 = objc_opt_new();
  if (![v5 detectShapeInCGImage:self->_cgImage bounds:&v23 cornerRadius:&v22])
  {
    v8 = _removeShadowInCGImage(self->_cgImage);
    if (!v8)
    {
      v8 = CGImageRetain(self->_cgImage);
    }

    v9 = [[ISFallbackIconScaleDown alloc] initWithImage:v8 cornerRadius:0];
    goto LABEL_8;
  }

  v6.i64[0] = 0;
  v6.i64[1] = __PAIR64__(Height, Width);
  if ((vminvq_u32(vceqq_s32(v23, v6)) & 0x80000000) == 0 || v22)
  {
    v10 = [ISShapeDetection categorizeShapeWithWidth:v23.u32[2] height:v23.u32[3] cornerRadius:v22];
    if (v10 == 2)
    {
      if (v23.i32[2] >= v23.i32[3])
      {
        v14 = v23.i32[3];
      }

      else
      {
        v14 = v23.i32[2];
      }

      v26.origin.x = (v23.i32[0] + (v23.i32[2] - v14) / 2);
      v26.origin.y = (v23.i32[1] + (v23.i32[3] - v14) / 2);
      v15 = v14;
      v26.size.width = v14;
      v26.size.height = v14;
      v8 = CGImageCreateWithImageInRect(self->_cgImage, v26);
      [ISShapeDetection standardCornerRadiusForSize:v15];
      *&v16 = v16;
      v17 = _outpaintCGImage(v8, v22, vcvtps_s32_f32(*&v16));
      if (v17)
      {
        v18 = v17;
        CGImageRelease(v8);
        idiom = self->_idiom;
        v12 = v18;
LABEL_21:
        v7 = _attemptLightSegmentationWithCroppedCGImage(v12, idiom);
        goto LABEL_22;
      }
    }

    else
    {
      if (v10 == 4 || v10 == 3)
      {
        if (v23.i32[2] >= v23.i32[3])
        {
          v11 = v23.i32[3];
        }

        else
        {
          v11 = v23.i32[2];
        }

        v25.origin.x = (v23.i32[0] + (v23.i32[2] - v11) / 2);
        v25.origin.y = (v23.i32[1] + (v23.i32[3] - v11) / 2);
        v25.size.width = v11;
        v25.size.height = v11;
        v12 = CGImageCreateWithImageInRect(self->_cgImage, v25);
        idiom = self->_idiom;
        goto LABEL_21;
      }

      v27.origin.x = v23.i32[0];
      v27.origin.y = v23.i32[1];
      v27.size.width = v23.i32[2];
      v27.size.height = v23.i32[3];
      v8 = CGImageCreateWithImageInRect(self->_cgImage, v27);
    }

    v20 = [ISFallbackIconScaleDown alloc];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:v22];
    v9 = [(ISFallbackIconScaleDown *)v20 initWithImage:v8 cornerRadius:v21];

LABEL_8:
    CGImageRelease(v8);
    goto LABEL_23;
  }

  v7 = [[ISFallbackIconFill alloc] initWithImage:self->_cgImage foregroundAndLightingEffectsImage:0 feedback:0];
LABEL_22:
  v9 = v7;
LABEL_23:

  return v9;
}

- (id)_createDarkFallbackIcon_iOS
{
  v3 = CGImageRetain(self->_cgImage);
  idiom = self->_idiom;

  return _attemptDarkSegmentationWithCroppedCGImage(v3, idiom);
}

- (id)_createDarkFallbackIcon_macOS
{
  Width = CGImageGetWidth(self->_cgImage);
  Height = CGImageGetHeight(self->_cgImage);
  v23 = 0uLL;
  v22 = 0;
  v5 = objc_opt_new();
  if (![v5 detectShapeInCGImage:self->_cgImage bounds:&v23 cornerRadius:&v22])
  {
    v8 = _removeShadowInCGImage(self->_cgImage);
    if (!v8)
    {
      v8 = CGImageRetain(self->_cgImage);
    }

    v9 = [[ISFallbackIconScaleDown alloc] initWithImage:v8 cornerRadius:0];
    goto LABEL_8;
  }

  v6.i64[0] = 0;
  v6.i64[1] = __PAIR64__(Height, Width);
  if ((vminvq_u32(vceqq_s32(v23, v6)) & 0x80000000) == 0 || v22)
  {
    v10 = [ISShapeDetection categorizeShapeWithWidth:v23.u32[2] height:v23.u32[3] cornerRadius:v22];
    if (v10 == 2)
    {
      if (v23.i32[2] >= v23.i32[3])
      {
        v14 = v23.i32[3];
      }

      else
      {
        v14 = v23.i32[2];
      }

      v26.origin.x = (v23.i32[0] + (v23.i32[2] - v14) / 2);
      v26.origin.y = (v23.i32[1] + (v23.i32[3] - v14) / 2);
      v15 = v14;
      v26.size.width = v14;
      v26.size.height = v14;
      v8 = CGImageCreateWithImageInRect(self->_cgImage, v26);
      [ISShapeDetection standardCornerRadiusForSize:v15];
      *&v16 = v16;
      v17 = _outpaintCGImage(v8, v22, vcvtps_s32_f32(*&v16));
      if (v17)
      {
        v18 = v17;
        CGImageRelease(v8);
        idiom = self->_idiom;
        v12 = v18;
LABEL_21:
        v7 = _attemptDarkSegmentationWithCroppedCGImage(v12, idiom);
        goto LABEL_22;
      }
    }

    else
    {
      if (v10 == 4 || v10 == 3)
      {
        if (v23.i32[2] >= v23.i32[3])
        {
          v11 = v23.i32[3];
        }

        else
        {
          v11 = v23.i32[2];
        }

        v25.origin.x = (v23.i32[0] + (v23.i32[2] - v11) / 2);
        v25.origin.y = (v23.i32[1] + (v23.i32[3] - v11) / 2);
        v25.size.width = v11;
        v25.size.height = v11;
        v12 = CGImageCreateWithImageInRect(self->_cgImage, v25);
        idiom = self->_idiom;
        goto LABEL_21;
      }

      v27.origin.x = v23.i32[0];
      v27.origin.y = v23.i32[1];
      v27.size.width = v23.i32[2];
      v27.size.height = v23.i32[3];
      v8 = CGImageCreateWithImageInRect(self->_cgImage, v27);
    }

    v20 = [ISFallbackIconScaleDown alloc];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:v22];
    v9 = [(ISFallbackIconScaleDown *)v20 initWithImage:v8 cornerRadius:v21];

LABEL_8:
    CGImageRelease(v8);
    goto LABEL_23;
  }

  v7 = [[ISFallbackIconFill alloc] initWithImage:self->_cgImage foregroundAndLightingEffectsImage:0 feedback:0];
LABEL_22:
  v9 = v7;
LABEL_23:

  return v9;
}

- (id)createDarkFallbackIcon
{
  idiom = self->_idiom;
  if (idiom != 4)
  {
    if (idiom == 2)
    {
      _createDarkFallbackIcon_macOS = [(ISFallbackIconFactory *)self _createDarkFallbackIcon_macOS];
      goto LABEL_6;
    }

    if (idiom != 1)
    {
      goto LABEL_7;
    }
  }

  _createDarkFallbackIcon_macOS = [(ISFallbackIconFactory *)self _createDarkFallbackIcon_iOS];
LABEL_6:
  a2 = _createDarkFallbackIcon_macOS;
LABEL_7:

  return a2;
}

- (id)_createTintedFallbackIcon_iOS
{
  v3 = CGImageRetain(self->_cgImage);
  idiom = self->_idiom;

  return _attemptTintedSegmentationWithCroppedCGImage(v3, idiom);
}

- (id)_createTintedFallbackIcon_macOS
{
  Width = CGImageGetWidth(self->_cgImage);
  Height = CGImageGetHeight(self->_cgImage);
  v23 = 0uLL;
  v22 = 0;
  v5 = objc_opt_new();
  if (![v5 detectShapeInCGImage:self->_cgImage bounds:&v23 cornerRadius:&v22])
  {
    v8 = _removeShadowInCGImage(self->_cgImage);
    if (!v8)
    {
      v8 = CGImageRetain(self->_cgImage);
    }

    v9 = [[ISFallbackIconScaleDown alloc] initWithImage:v8 cornerRadius:0];
    goto LABEL_8;
  }

  v6.i64[0] = 0;
  v6.i64[1] = __PAIR64__(Height, Width);
  if ((vminvq_u32(vceqq_s32(v23, v6)) & 0x80000000) == 0 || v22)
  {
    v10 = [ISShapeDetection categorizeShapeWithWidth:v23.u32[2] height:v23.u32[3] cornerRadius:v22];
    if (v10 == 2)
    {
      if (v23.i32[2] >= v23.i32[3])
      {
        v14 = v23.i32[3];
      }

      else
      {
        v14 = v23.i32[2];
      }

      v26.origin.x = (v23.i32[0] + (v23.i32[2] - v14) / 2);
      v26.origin.y = (v23.i32[1] + (v23.i32[3] - v14) / 2);
      v15 = v14;
      v26.size.width = v14;
      v26.size.height = v14;
      v8 = CGImageCreateWithImageInRect(self->_cgImage, v26);
      [ISShapeDetection standardCornerRadiusForSize:v15];
      *&v16 = v16;
      v17 = _outpaintCGImage(v8, v22, vcvtps_s32_f32(*&v16));
      if (v17)
      {
        v18 = v17;
        CGImageRelease(v8);
        idiom = self->_idiom;
        v12 = v18;
LABEL_21:
        v7 = _attemptTintedSegmentationWithCroppedCGImage(v12, idiom);
        goto LABEL_22;
      }
    }

    else
    {
      if (v10 == 4 || v10 == 3)
      {
        if (v23.i32[2] >= v23.i32[3])
        {
          v11 = v23.i32[3];
        }

        else
        {
          v11 = v23.i32[2];
        }

        v25.origin.x = (v23.i32[0] + (v23.i32[2] - v11) / 2);
        v25.origin.y = (v23.i32[1] + (v23.i32[3] - v11) / 2);
        v25.size.width = v11;
        v25.size.height = v11;
        v12 = CGImageCreateWithImageInRect(self->_cgImage, v25);
        idiom = self->_idiom;
        goto LABEL_21;
      }

      v27.origin.x = v23.i32[0];
      v27.origin.y = v23.i32[1];
      v27.size.width = v23.i32[2];
      v27.size.height = v23.i32[3];
      v8 = CGImageCreateWithImageInRect(self->_cgImage, v27);
    }

    v20 = [ISFallbackIconScaleDown alloc];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:v22];
    v9 = [(ISFallbackIconScaleDown *)v20 initWithImage:v8 cornerRadius:v21];

LABEL_8:
    CGImageRelease(v8);
    goto LABEL_23;
  }

  v7 = [[ISFallbackIconFill alloc] initWithImage:self->_cgImage foregroundAndLightingEffectsImage:0 feedback:0];
LABEL_22:
  v9 = v7;
LABEL_23:

  return v9;
}

- (id)createTintedFallbackIcon
{
  idiom = self->_idiom;
  if (idiom != 4)
  {
    if (idiom == 2)
    {
      _createTintedFallbackIcon_macOS = [(ISFallbackIconFactory *)self _createTintedFallbackIcon_macOS];
      goto LABEL_6;
    }

    if (idiom != 1)
    {
      goto LABEL_7;
    }
  }

  _createTintedFallbackIcon_macOS = [(ISFallbackIconFactory *)self _createTintedFallbackIcon_iOS];
LABEL_6:
  a2 = _createTintedFallbackIcon_macOS;
LABEL_7:

  return a2;
}

@end