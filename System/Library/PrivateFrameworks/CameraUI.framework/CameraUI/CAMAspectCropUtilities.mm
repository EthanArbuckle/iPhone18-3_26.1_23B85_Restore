@interface CAMAspectCropUtilities
+ (CGRect)cropRectForAspectRatio:(int64_t)a3 inImageBounds:(CGRect)a4;
+ (CGSize)finalExpectedSizeWithCaptureDimensions:(id)a3 orientation:(int)a4 aspectRatio:(int64_t)a5;
+ (CGSize)finalExpectedSizeWithPhotoMetadata:(id)a3 aspectRatio:(int64_t)a4;
+ (id)cropFilterForAspectRatio:(int64_t)a3 imageSize:(CGSize)a4;
@end

@implementation CAMAspectCropUtilities

+ (CGRect)cropRectForAspectRatio:(int64_t)a3 inImageBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (!CGRectIsEmpty(a4))
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    if (!CGRectIsNull(v17))
    {
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      if (!CGRectIsInfinite(v18))
      {
        if (a3)
        {
          UIRoundToScale();
          UIRoundToScale();
          UIRectCenteredIntegralRect();
          x = v9;
          y = v10;
          width = v11;
          height = v12;
        }
      }
    }
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (id)cropFilterForAspectRatio:(int64_t)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  [a1 cropRectForAspectRatio:a3 inImageBounds:{*MEMORY[0x1E695EFF8], v7, a4.width, a4.height}];
  v10 = *v16.i64;
  v11 = *v12.i64;
  *v16.i64 = round(v8);
  *v12.i64 = round(v9);
  *v13.i64 = *v16.i64 - trunc(*v16.i64 * 0.5) * 2.0;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = vnegq_f64(v14);
  v13.i64[0] = vbslq_s8(v15, v13, v16).i64[0];
  *v16.i64 = *v16.i64 + -1.0;
  if (*v13.i64 == 0.0)
  {
    v17 = v8;
  }

  else
  {
    v17 = *v16.i64;
  }

  *v16.i64 = *v12.i64 - trunc(*v12.i64 * 0.5) * 2.0;
  v18 = *vbslq_s8(v15, v16, v12).i64;
  v19 = *v12.i64 + -1.0;
  if (v18 == 0.0)
  {
    v20 = v9;
  }

  else
  {
    v20 = v19;
  }

  v25.origin.x = v10;
  v25.origin.y = v11;
  v25.size.width = v17;
  v25.size.height = v20;
  v26.origin.x = v6;
  v26.origin.y = v7;
  v26.size.width = width;
  v26.size.height = height;
  if (CGRectEqualToRect(v25, v26))
  {
    v21 = 0;
  }

  else
  {
    v21 = [MEMORY[0x1E695F648] filterWithName:@"CICrop"];
    v22 = [MEMORY[0x1E695F688] vectorWithCGRect:{v10, v11, v17, v20}];
    [v21 setValue:v22 forKey:@"inputRectangle"];
  }

  return v21;
}

+ (CGSize)finalExpectedSizeWithPhotoMetadata:(id)a3 aspectRatio:(int64_t)a4
{
  v6 = CAMSizeForPhotoMetadata(a3);
  [a1 cropRectForAspectRatio:a4 inImageBounds:{0.0, 0.0, v6, v7}];
  v9 = v8;
  v11 = v10;
  result.height = v11;
  result.width = v9;
  return result;
}

+ (CGSize)finalExpectedSizeWithCaptureDimensions:(id)a3 orientation:(int)a4 aspectRatio:(int64_t)a5
{
  var0 = a3.var0;
  var1 = a3.var1;
  v9 = PLExifOrientationSwapsWidthAndHeight();
  if (v9)
  {
    v10 = var1;
  }

  else
  {
    v10 = var0;
  }

  if (v9)
  {
    v11 = var0;
  }

  else
  {
    v11 = var1;
  }

  [a1 cropRectForAspectRatio:a5 inImageBounds:{0.0, 0.0, v10, v11}];
  v13 = v12;
  v15 = v14;
  result.height = v15;
  result.width = v13;
  return result;
}

@end