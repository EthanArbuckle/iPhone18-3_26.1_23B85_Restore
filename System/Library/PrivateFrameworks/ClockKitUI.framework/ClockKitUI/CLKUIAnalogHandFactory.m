@interface CLKUIAnalogHandFactory
+ (CGPath)newPathForHourMinuteWithConfiguration:(id)a3 inset:(double)a4 includePeg:(BOOL)a5;
+ (CGPath)newPathForInlayWithConfiguration:(id)a3 inset:(double)a4;
+ (CGPath)newPathForPeg:(id)a3 inset:(double)a4;
+ (CGPath)newPathForSecondWithConfiguration:(id)a3 inset:(double)a4;
+ (CGPath)newPathWithConfiguration:(id)a3;
+ (id)_createHandImageWithSize:(CGSize)a3 paths:(id)a4 colors:(id)a5;
+ (id)_createHandOutlineImageWithSize:(CGSize)a3 paths:(id)a4 colors:(id)a5 configuration:(id)a6;
+ (id)_createMaskedShadowImageFromShadow:(id)a3 size:(CGSize)a4 maskPath:(CGPath *)a5 radius:(double)a6 opacity:(double)a7;
+ (id)_createShadowImageSize:(CGSize)a3 path:(CGPath *)a4 radius:(double)a5 opacity:(double)a6;
+ (id)_getDropShadowImageWithConfiguration:(id)a3;
+ (id)_getHandImageWithConfiguration:(id)a3;
+ (id)_getInlayImageWithConfiguration:(id)a3;
+ (id)_getMaskedDropShadowImageWithConfiguration:(id)a3 shadowImage:(id)a4;
+ (id)_getRadialShadowImageWithConfiguration:(id)a3;
+ (id)_getShadowImageWithConfiguration:(id)a3 radius:(double)a4 opacity:(double)a5 key:(id)a6;
+ (id)getAssets:(unint64_t)a3 forConfiguration:(id)a4;
@end

@implementation CLKUIAnalogHandFactory

+ (id)getAssets:(unint64_t)a3 forConfiguration:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = +[CLKUIAnalogHandFactoryCache sharedInstance];
  if (!a3)
  {
    v21 = MEMORY[0x1E695E0F8];
    goto LABEL_47;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v6 handCacheIdentifier];
  v10 = [v8 stringWithFormat:@"hand-%@", v9];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v6 dropShadowCacheIdentifier];
  v43 = [v11 stringWithFormat:@"hand-%@", v12];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [v6 radialShadowCacheIdentifier];
  v15 = [v13 stringWithFormat:@"hand-%@", v14];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [v6 dropShadowCacheIdentifier];
  v41 = [v16 stringWithFormat:@"maskedShadow-%@", v17];

  v18 = MEMORY[0x1E696AEC0];
  v19 = [v6 handCacheIdentifier];
  v42 = [v18 stringWithFormat:@"inlay-%@", v19];

  if (a3)
  {
    v20 = [a1 newPathWithConfiguration:v6];
  }

  else
  {
    v20 = 0;
  }

  arg = v20;
  if ((a3 & 2) != 0)
  {
    v23 = +[CLKUIAnalogHandFactoryCache sharedInstance];
    v22 = [v23 imageForKey:v10];

    if (!v22)
    {
      v22 = [a1 _getHandImageWithConfiguration:v6];
    }
  }

  else
  {
    v22 = 0;
  }

  v40 = v15;
  if ((a3 & 4) != 0)
  {
    v25 = +[CLKUIAnalogHandFactoryCache sharedInstance];
    v24 = [v25 imageForKey:v15];

    if (!v24)
    {
      v24 = [a1 _getRadialShadowImageWithConfiguration:v6];
    }
  }

  else
  {
    v24 = 0;
  }

  if ((a3 & 0x18) != 0)
  {
    v26 = +[CLKUIAnalogHandFactoryCache sharedInstance];
    v27 = [v26 imageForKey:v43];

    if ((a3 & 0x10) != 0)
    {
      v29 = +[CLKUIAnalogHandFactoryCache sharedInstance];
      v28 = [v29 imageForKey:v41];

      if (v27)
      {
LABEL_17:
        if ((a3 & 0x10) == 0)
        {
          goto LABEL_24;
        }

LABEL_22:
        if (!v28)
        {
          v28 = [a1 _getMaskedDropShadowImageWithConfiguration:v6 shadowImage:v27];
        }

        goto LABEL_24;
      }
    }

    else
    {
      v28 = 0;
      if (v27)
      {
        goto LABEL_17;
      }
    }

    v27 = [a1 _getDropShadowImageWithConfiguration:v6];
    if ((a3 & 0x10) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

LABEL_24:
  if ((a3 & 0x20) != 0)
  {
    +[CLKUIAnalogHandFactoryCache sharedInstance];
    v32 = v31 = v10;
    v30 = [v32 imageForKey:v42];

    v10 = v31;
    if (!v30)
    {
      v30 = [a1 _getInlayImageWithConfiguration:v6];
    }
  }

  else
  {
    v30 = 0;
  }

  v21 = objc_opt_new();
  if ((a3 & 1) != 0 && arg)
  {
    [v21 setObject:CFAutorelease(arg) forKey:&unk_1F5E96E40];
  }

  if ((a3 & 2) != 0 && v22)
  {
    [v21 setObject:v22 forKey:&unk_1F5E96E58];
    v33 = +[CLKUIAnalogHandFactoryCache sharedInstance];
    [v33 setImage:v22 forKey:v10];
  }

  if ((a3 & 4) != 0 && v24)
  {
    [v21 setObject:v24 forKey:&unk_1F5E96E70];
    v34 = +[CLKUIAnalogHandFactoryCache sharedInstance];
    [v34 setImage:v24 forKey:v40];
  }

  if ((a3 & 0x18) != 0 && v27)
  {
    [v21 setObject:v27 forKey:&unk_1F5E96E88];
    v35 = +[CLKUIAnalogHandFactoryCache sharedInstance];
    [v35 setImage:v27 forKey:v43];
  }

  if ((a3 & 0x10) != 0 && v28)
  {
    [v21 setObject:v28 forKey:&unk_1F5E96EA0];
    v36 = +[CLKUIAnalogHandFactoryCache sharedInstance];
    [v36 setImage:v28 forKey:v41];
  }

  if ((a3 & 0x20) != 0 && v30)
  {
    [v21 setObject:v30 forKey:&unk_1F5E96EB8];
    v37 = +[CLKUIAnalogHandFactoryCache sharedInstance];
    [v37 setImage:v30 forKey:v42];
  }

LABEL_47:

  return v21;
}

+ (CGPath)newPathWithConfiguration:(id)a3
{
  v4 = a3;
  [v4 hash];
  kdebug_trace();
  if ([v4 type] == 1)
  {
    v5 = [a1 newPathForSecondWithConfiguration:v4 inset:0.0];
LABEL_6:
    v6 = v5;
    [v4 hash];
    kdebug_trace();
    goto LABEL_7;
  }

  if (![v4 type])
  {
    v5 = [a1 newPathForHourMinuteWithConfiguration:v4 inset:objc_msgSend(v4 includePeg:{"excludePeg") ^ 1, 0.0}];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)_getHandImageWithConfiguration:(id)a3
{
  v22[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 hash];
  kdebug_trace();
  if ([v4 type] == 1)
  {
    v5 = [a1 newPathForSecondWithConfiguration:v4 inset:0.0];
    v6 = [a1 newPathForSecondWithConfiguration:v4 inset:1.0];
    v7 = [a1 newPathForSecondWithConfiguration:v4 inset:2.0];
LABEL_6:
    v9 = v7;
    v22[0] = v5;
    v22[1] = v6;
    v22[2] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
    v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.321568627];
    v21[0] = v11;
    v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.752941176];
    v21[1] = v12;
    v13 = [MEMORY[0x1E69DC888] blackColor];
    v21[2] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];

    [v4 bounds];
    v16 = v15;
    v18 = v17;
    if ([v4 outlineOnly])
    {
      [a1 _createHandOutlineImageWithSize:v10 paths:v14 colors:v4 configuration:{v16, v18}];
    }

    else
    {
      [a1 _createHandImageWithSize:v10 paths:v14 colors:{v16, v18}];
    }
    v19 = ;
    CGPathRelease(v6);
    CGPathRelease(v9);
    CGPathRelease(v5);
    [v4 hash];
    kdebug_trace();
    v8 = v19;

    goto LABEL_10;
  }

  if (![v4 type])
  {
    v5 = [a1 newPathForHourMinuteWithConfiguration:v4 inset:objc_msgSend(v4 includePeg:{"excludePeg") ^ 1, 0.0}];
    v6 = [a1 newPathForHourMinuteWithConfiguration:v4 inset:objc_msgSend(v4 includePeg:{"excludePeg") ^ 1, 1.0}];
    v7 = [a1 newPathForHourMinuteWithConfiguration:v4 inset:objc_msgSend(v4 includePeg:{"excludePeg") ^ 1, 2.0}];
    goto LABEL_6;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

+ (id)_getInlayImageWithConfiguration:(id)a3
{
  v19[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 hash];
  kdebug_trace();
  if ([v4 type] == 1 || objc_msgSend(v4, "type"))
  {
    v5 = 0;
  }

  else
  {
    v7 = [a1 newPathForInlayWithConfiguration:v4 inset:0.0];
    v8 = [a1 newPathForInlayWithConfiguration:v4 inset:1.0];
    v9 = [a1 newPathForInlayWithConfiguration:v4 inset:2.0];
    v19[0] = v7;
    v19[1] = v8;
    v19[2] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
    v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.321568627];
    v18[0] = v11;
    v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.752941176];
    v18[1] = v12;
    v13 = [MEMORY[0x1E69DC888] blackColor];
    v18[2] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];

    [v4 bounds];
    v17 = [a1 _createHandImageWithSize:v10 paths:v14 colors:{v15, v16}];
    CGPathRelease(v8);
    CGPathRelease(v9);
    CGPathRelease(v7);
    [v4 hash];
    kdebug_trace();
    v5 = v17;
  }

  return v5;
}

+ (id)_getDropShadowImageWithConfiguration:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v5 dropShadowCacheIdentifier];
  v7 = [v4 stringWithFormat:@"shadow-%@", v6];

  [v5 dropShadowRadius];
  v9 = v8;
  [v5 dropShadowOpacity];
  v11 = [a1 _getShadowImageWithConfiguration:v5 radius:v7 opacity:v9 key:v10];

  return v11;
}

+ (id)_getRadialShadowImageWithConfiguration:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v5 radialShadowCacheIdentifier];
  v7 = [v4 stringWithFormat:@"shadow-%@", v6];

  [v5 radialShadowRadius];
  v9 = v8;
  [v5 radialShadowOpacity];
  v11 = [a1 _getShadowImageWithConfiguration:v5 radius:v7 opacity:v9 key:v10];

  return v11;
}

+ (id)_getShadowImageWithConfiguration:(id)a3 radius:(double)a4 opacity:(double)a5 key:(id)a6
{
  v9 = a3;
  [v9 hash];
  kdebug_trace();
  if ([v9 type] == 1)
  {
    v10 = [a1 newPathForSecondWithConfiguration:v9 inset:0.0];
  }

  else
  {
    if ([v9 type])
    {
      v11 = 0;
      goto LABEL_7;
    }

    v10 = [a1 newPathForHourMinuteWithConfiguration:v9 inset:1 includePeg:0.0];
  }

  v12 = v10;
  [v9 bounds];
  v11 = [a1 _createShadowImageSize:v12 path:v13 radius:v14 opacity:{a4 * 0.5, a5}];
  CGPathRelease(v12);
  [v9 hash];
  kdebug_trace();
LABEL_7:

  return v11;
}

+ (id)_getMaskedDropShadowImageWithConfiguration:(id)a3 shadowImage:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 hash];
  kdebug_trace();
  [v7 dropShadowRadius];
  v9 = v8 * 0.5;
  [v7 dropShadowOpacity];
  v11 = v10;
  v12 = [a1 newPathForPeg:v7 inset:0.0];
  [v7 bounds];
  v15 = [a1 _createMaskedShadowImageFromShadow:v6 size:v12 maskPath:v13 radius:v14 opacity:{v9, v11}];

  CGPathRelease(v12);
  [v7 hash];

  kdebug_trace();

  return v15;
}

+ (id)_createHandImageWithSize:(CGSize)a3 paths:(id)a4 colors:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = a4;
  v9 = a5;
  if (width == 0.0 || height == 0.0)
  {
    v21 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [CLKUIAnalogHandFactory _createHandImageWithSize:height paths:? colors:?];
    }

    v20 = 0;
  }

  else
  {
    v24.width = width;
    v24.height = height;
    UIGraphicsBeginImageContextWithOptions(v24, 0, 4.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
    v11 = [MEMORY[0x1E69794A0] layer];
    [v11 setFillRule:*MEMORY[0x1E6979800]];
    [v11 setBounds:{0.0, 0.0, width, height}];
    [v11 setContentsScale:4.0];
    v12 = [v8 count];
    v13 = [v9 count];
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = 0;
      do
      {
        [v11 setPath:{objc_msgSend(v8, "objectAtIndex:", v15)}];
        v16 = [v9 objectAtIndex:v15];
        [v11 setFillColor:{objc_msgSend(v16, "CGColor")}];

        [v11 renderInContext:UIGraphicsGetCurrentContext()];
        ++v15;
        v17 = [v8 count];
        v18 = [v9 count];
        if (v17 >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }
      }

      while (v15 < v19);
    }

    v20 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v20;
}

+ (id)_createHandOutlineImageWithSize:(CGSize)a3 paths:(id)a4 colors:(id)a5 configuration:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (width == 0.0 || height == 0.0)
  {
    v29 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      [CLKUIAnalogHandFactory _createHandImageWithSize:height paths:? colors:?];
    }

    v28 = 0;
  }

  else
  {
    v32.width = width;
    v32.height = height;
    UIGraphicsBeginImageContextWithOptions(v32, 0, 4.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
    v15 = [MEMORY[0x1E69794A0] layer];
    [v15 setFillRule:*MEMORY[0x1E6979800]];
    [v15 setBounds:{0.0, 0.0, width, height}];
    [v15 setContentsScale:4.0];
    v16 = [v11 count];
    v17 = [v12 count];
    if (v16 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      v19 = 0;
      v20 = *MEMORY[0x1E69797F8];
      do
      {
        [v15 setPath:{objc_msgSend(v11, "objectAtIndex:", v19)}];
        v21 = [v12 objectAtIndex:v19];
        [v15 setFillColor:{objc_msgSend(v21, "CGColor")}];

        v22 = [a1 newPathForInlayWithConfiguration:v13 inset:2.0];
        if (v22)
        {
          v23 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:v22];
          v24 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:{objc_msgSend(v15, "path")}];
          [v24 appendPath:v23];
          [v15 setPath:{objc_msgSend(v24, "CGPath")}];
          [v15 setFillRule:v20];
        }

        [v15 renderInContext:UIGraphicsGetCurrentContext()];
        ++v19;
        v25 = [v11 count];
        v26 = [v12 count];
        if (v25 >= v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = v25;
        }
      }

      while (v19 < v27);
    }

    v28 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v28;
}

+ (id)_createShadowImageSize:(CGSize)a3 path:(CGPath *)a4 radius:(double)a5 opacity:(double)a6
{
  height = a3.height;
  width = a3.width;
  v20.width = a3.width + a5 * 2.0;
  v20.height = a3.height + a5 * 2.0;
  UIGraphicsBeginImageContextWithOptions(v20, 0, 2.0);
  v11 = [MEMORY[0x1E69794A0] layer];
  [v11 setBounds:{0.0, 0.0, width, height}];
  [v11 setContentsScale:2.0];
  [v11 setPath:a4];
  [v11 setFillRule:*MEMORY[0x1E6979800]];
  v12 = [MEMORY[0x1E69DC888] blackColor];
  [v11 setFillColor:{objc_msgSend(v12, "CGColor")}];

  [v11 setShadowPath:a4];
  [v11 frame];
  [v11 setShadowOffset:{CGRectGetWidth(v21) + a5, 0.0}];
  *&v13 = a6;
  [v11 setShadowOpacity:v13];
  [v11 setShadowRadius:a5 * 0.5];
  v14 = [MEMORY[0x1E69DC888] blackColor];
  [v11 setShadowColor:{objc_msgSend(v14, "CGColor")}];

  CurrentContext = UIGraphicsGetCurrentContext();
  [v11 frame];
  v16 = CGRectGetWidth(v22);
  CGContextTranslateCTM(CurrentContext, -v16, a5);
  [v11 renderInContext:UIGraphicsGetCurrentContext()];
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

+ (id)_createMaskedShadowImageFromShadow:(id)a3 size:(CGSize)a4 maskPath:(CGPath *)a5 radius:(double)a6 opacity:(double)a7
{
  height = a4.height;
  width = a4.width;
  v12 = a3;
  CGPathRetain(a5);
  v13 = [MEMORY[0x1E69794A0] layer];
  [v13 setBounds:{0.0, 0.0, width, height}];
  [v13 setContentsScale:2.0];
  path = a5;
  [v13 setPath:a5];
  [v13 setFillRule:*MEMORY[0x1E6979800]];
  v14 = [MEMORY[0x1E69DC888] blackColor];
  [v13 setShadowColor:{objc_msgSend(v14, "CGColor")}];

  [v13 frame];
  v15 = CGRectGetWidth(v36);
  [v13 setShadowOffset:{v15 + a6 + v15 + a6, 0.0}];
  *&v16 = a7;
  [v13 setShadowOpacity:v16];
  [v13 setShadowRadius:a6];
  v33 = v12;
  v17 = [v12 CGImage];
  v18 = CGImageGetWidth(v17);
  v19 = CGImageGetHeight(v17);
  v20 = 4 * v18 * v19;
  v21 = malloc_type_calloc(v20, 1uLL, 0x100004077774924uLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v23 = CGBitmapContextCreate(v21, v18, v19, 8uLL, 4 * v18, DeviceRGB, 0x4001u);
  transform.b = 0.0;
  transform.c = 0.0;
  transform.a = 1.0;
  *&transform.d = xmmword_1E4A0A590;
  transform.ty = v19;
  CGContextConcatCTM(v23, &transform);
  CGContextScaleCTM(v23, 2.0, 2.0);
  [v13 frame];
  v24 = CGRectGetWidth(v37);
  CGContextTranslateCTM(v23, -v24, a6);
  [v13 renderInContext:v23];
  Image = CGBitmapContextCreateImage(v23);
  CGContextRelease(v23);
  v26 = malloc_type_calloc(v20, 1uLL, 0x100004077774924uLL);
  v27 = CGBitmapContextCreate(v26, v18, v19, 8uLL, 4 * v18, DeviceRGB, 0x4001u);
  CGContextScaleCTM(v27, 2.0, 2.0);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = width + a6 * 2.0;
  v38.size.height = height + a6 * 2.0;
  CGContextDrawImage(v27, v38, v17);
  if (v20)
  {
    for (i = 0; i < v20; i += 4)
    {
      v26[i + 3] = (255 * ((v26[i + 3] - v21[i + 3]) & ~((v26[i + 3] - v21[i + 3]) >> 31))) / (v21[i + 3] + 255);
    }
  }

  v29 = CGBitmapContextCreateImage(v27);
  v30 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v29 scale:0 orientation:2.0];
  CGImageRelease(Image);
  CGImageRelease(v29);
  CGContextRelease(v27);
  CGColorSpaceRelease(DeviceRGB);
  CGPathRelease(path);
  free(v21);
  free(v26);

  return v30;
}

+ (CGPath)newPathForHourMinuteWithConfiguration:(id)a3 inset:(double)a4 includePeg:(BOOL)a5
{
  v5 = a5;
  v6 = a4 * 0.25;
  v7 = [a3 configurationByApplyingInset:a4 * 0.25];
  Mutable = CGPathCreateMutable();
  [v7 pegRadius];
  v10 = v9;
  [v7 pegStrokeWidth];
  v12 = v10 + v11;
  [v7 armWidth];
  v14 = v13;
  [v7 handWidth];
  v16 = v15 * 0.5;
  if (v16 < v12)
  {
    v16 = v12;
  }

  v17 = v6 + v16;
  [v7 armLength];
  v19 = v18;
  [v7 handLength];
  v21 = v6 + v12 + v19 + v20;
  [v7 smoothingRadius];
  if (v22 == 0.0)
  {
    v23 = v14 / (v12 + v12);
    v24 = asinf(v23);
    v25 = v24 + -1.57079633;
    v26 = -1.57079633 - v24;
    v27 = Mutable;
    v28 = v17;
    v29 = v21;
    v30 = v12;
    if (v5)
    {
      v31 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    [v7 armWidth];
    v33 = v32;
    [v7 smoothingRadius];
    y = v21;
    v35 = v34 + v33 * 0.5;
    [v7 smoothingRadius];
    v37 = v12 + v36;
    v70 = v6;
    v38 = sqrt(v37 * v37 - v35 * v35);
    v39 = acos(v35 / v37);
    v40 = y - v38;
    v6 = v70;
    [v7 smoothingRadius];
    CGPathAddArc(Mutable, 0, v17 + v35, v40, v41, 3.14159265, 3.14159265 - v39, 1);
    CGPathAddArc(Mutable, 0, v17, y, v12, -v39, v39 + 3.14159265, !v5);
    v42 = v17 - v35;
    v21 = y;
    [v7 smoothingRadius];
    v30 = v43;
    v26 = 0.0;
    v27 = Mutable;
    v28 = v42;
    v29 = v40;
    v25 = v39;
  }

  v31 = 1;
LABEL_8:
  CGPathAddArc(v27, 0, v28, v29, v30, v25, v26, v31);
  [v7 handWidth];
  v45 = v44 * 0.5;
  [v7 handLength];
  v47 = v6 + v46 - v45;
  [v7 smoothingRadius];
  v49 = v48;
  [v7 armWidth];
  v51 = v50;
  v52 = v49 == 0.0;
  v53 = v6;
  if (v52)
  {
    v54 = v50 / (v45 + v45);
    v55 = asinf(v54);
    CGPathAddArc(Mutable, 0, v17, v47, v45, v55 + -4.71238898, -3.14159265, 0);
    CGPathAddArc(Mutable, 0, v17, v6 + v45, v45, 3.14159265, 0.0, 0);
    CGPathAddArc(Mutable, 0, v17, v47, v45, 6.28318531, -4.71238898 - v55, 0);
    CGPathCloseSubpath(Mutable);
  }

  else
  {
    [v7 smoothingRadius];
    v57 = v56 + v51 * 0.5;
    [v7 smoothingRadius];
    v59 = v45 + v58;
    v60 = sqrt(v59 * v59 - v57 * v57);
    v61 = acos(v57 / v59);
    [v7 smoothingRadius];
    CGPathAddArc(Mutable, 0, v17 - v57, v47 + v60, v62, 0.0, -v61, 1);
    CGPathAddArc(Mutable, 0, v17, v47, v45, 3.14159265 - v61, 3.14159265, 0);
    v69 = v53 + v45;
    CGPathAddArc(Mutable, 0, v17, v53 + v45, v45, -3.14159265, 0.0, 0);
    CGPathAddArc(Mutable, 0, v17, v47, v45, 0.0, v61, 0);
    [v7 smoothingRadius];
    CGPathAddArc(Mutable, 0, v17 + v57, v47 + v60, v63, v61 + 3.14159265, 3.14159265, 1);
    if ([v7 removeInlay])
    {
      v64 = CGPathCreateMutable();
      CGPathAddArc(v64, 0, v17, v69, v53 + v45 + -2.0, 0.0, 3.14159265, 1);
      CGPathAddArc(v64, 0, v17, v47, v53 + v45 + -2.0, 3.14159265, 0.0, 1);
      CGPathCloseSubpath(v64);
      CGPathAddPath(Mutable, 0, v64);
      CGPathRelease(v64);
    }
  }

  [v7 pegRadius];
  if (v65 > 0.0 && v5)
  {
    [v7 pegRadius];
    CGPathMoveToPoint(Mutable, 0, v17 + v66, v21);
    [v7 pegRadius];
    CGPathAddArc(Mutable, 0, v17, v21, v67, 0.0, -6.28318531, 1);
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

+ (CGPath)newPathForInlayWithConfiguration:(id)a3 inset:(double)a4
{
  v4 = a4 * 0.25;
  v5 = [a3 configurationByApplyingInset:a4 * 0.25];
  Mutable = CGPathCreateMutable();
  [v5 pegRadius];
  v8 = v7;
  [v5 pegStrokeWidth];
  v10 = v8 + v9;
  [v5 handWidth];
  v12 = v11 * 0.5;
  if (v12 < v10)
  {
    v12 = v10;
  }

  v13 = v4 + v12;
  [v5 handWidth];
  v15 = v14 * 0.5;
  [v5 handLength];
  v17 = v4 + v16 - v15;
  v18 = v4 + v15;
  v19 = CGPathCreateMutable();
  v20 = v4 + v15 + -2.0;
  CGPathAddArc(v19, 0, v13, v18, v20, 0.0, 3.14159265, 1);
  CGPathAddArc(v19, 0, v13, v17, v20, 3.14159265, 0.0, 1);
  CGPathCloseSubpath(v19);
  CGPathAddPath(Mutable, 0, v19);
  CGPathRelease(v19);

  return Mutable;
}

+ (CGPath)newPathForSecondWithConfiguration:(id)a3 inset:(double)a4
{
  v5 = a3;
  v6 = a4 * 0.25;
  v7 = [v5 configurationByApplyingInset:a4 * 0.25];
  Mutable = CGPathCreateMutable();
  [v7 pegRadius];
  v10 = v9;
  [v7 pegStrokeWidth];
  v12 = v10 + v11;
  v13 = v6 + v10 + v11;
  [v7 handWidth];
  v15 = v14 * 0.5;
  if (v13 < v15)
  {
    v13 = v15;
  }

  [v7 handLength];
  v17 = v6 + v16;
  [v7 handWidth];
  v19 = v18;
  [v7 smoothingRadius];
  v21 = v20 + v19 * 0.5;
  [v7 smoothingRadius];
  v23 = v12 + v22;
  v24 = sqrt(v23 * v23 - v21 * v21);
  v25 = acos(v21 / v23);
  v74 = v12;
  startAngle = v25 + 3.14159265;
  CGPathAddArc(Mutable, 0, v13, v17, v12, 3.14159265, v25 + 3.14159265, 0);
  v71 = v21;
  v73 = v17;
  v26 = v17 - v24;
  [v7 smoothingRadius];
  v28 = v27;
  v70 = v13 - v21;
  v29 = v13 - v21;
  v30 = v25;
  CGPathAddArc(Mutable, 0, v29, v17 - v24, v28, v25, 0.0, 1);
  v31 = [v5 roundedSecondHand];
  [v7 handWidth];
  v33 = v32 * 0.5;
  if (v31)
  {
    v34 = v6 + v33;
    [v7 handWidth];
    CGPathAddLineToPoint(Mutable, 0, v13 - v35 * 0.5, v34);
    [v7 handWidth];
    CGPathAddArc(Mutable, 0, v13, v34, v36 * 0.5, 3.14159265, 0.0, 0);
  }

  else
  {
    CGPathAddLineToPoint(Mutable, 0, v13 - v33, v6);
    [v7 handWidth];
    CGPathAddLineToPoint(Mutable, 0, v13 + v37 * 0.5, v6);
  }

  v38 = v13 + v71;
  [v7 smoothingRadius];
  v72 = 3.14159265 - v25;
  CGPathAddArc(Mutable, 0, v38, v26, v39, 3.14159265, 3.14159265 - v25, 1);
  v40 = 0.0;
  v42 = v73;
  v41 = v74;
  v69 = -v30;
  CGPathAddArc(Mutable, 0, v13, v73, v74, -v30, 0.0, 0);
  if (([v7 excludeSecondTail] & 1) == 0)
  {
    CGPathAddArc(Mutable, 0, v13, v73, v74, 0.0, v30, 0);
    [v7 smoothingRadius];
    CGPathAddArc(Mutable, 0, v38, v73 + v24, v43, startAngle, 3.14159265, 1);
    if ([v5 roundedSecondHand])
    {
      [v7 handLength];
      v45 = v44;
      [v7 tailLength];
      v47 = v67 + v45 + v46;
      [v7 handWidth];
      v49 = v47 - v48 * 0.5;
      [v7 handWidth];
      CGPathAddLineToPoint(Mutable, 0, v13 + v50 * 0.5, v49);
      [v7 handWidth];
      v42 = v73;
      CGPathAddArc(Mutable, 0, v13, v49, v51 * 0.5, 0.0, -3.14159265, 0);
    }

    else
    {
      [v7 handWidth];
      v53 = v13 + v52 * 0.5;
      [v7 handLength];
      v55 = v54;
      [v7 tailLength];
      CGPathAddLineToPoint(Mutable, 0, v53, v67 + v55 + v56);
      [v7 handWidth];
      v58 = v13 - v57 * 0.5;
      [v7 handLength];
      v60 = v59;
      [v7 tailLength];
      CGPathAddLineToPoint(Mutable, 0, v58, v67 + v60 + v61);
    }

    [v7 smoothingRadius];
    CGPathAddArc(Mutable, 0, v70, v73 + v24, v62, 0.0, v69, 1);
    v40 = v72;
    v41 = v74;
  }

  CGPathAddArc(Mutable, 0, v13, v42, v41, v40, 3.14159265, 0);
  CGPathCloseSubpath(Mutable);
  [v7 pegRadius];
  if (v63 > 0.0)
  {
    [v7 pegRadius];
    CGPathMoveToPoint(Mutable, 0, v13 + v64, v42);
    [v7 pegRadius];
    CGPathAddArc(Mutable, 0, v13, v42, v65, 0.0, -6.28318531, 1);
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

+ (CGPath)newPathForPeg:(id)a3 inset:(double)a4
{
  v4 = a4 * 0.25;
  v5 = [a3 configurationByApplyingInset:a4 * 0.25];
  Mutable = CGPathCreateMutable();
  [v5 pegRadius];
  v8 = v7;
  [v5 pegStrokeWidth];
  v10 = v8 + v9;
  if ([v5 type] == 1)
  {
    v11 = v4 + v10;
    [v5 handWidth];
    v13 = v12 * 0.5;
    if (v4 + v10 < v13)
    {
      v11 = v13;
    }

    [v5 handLength];
  }

  else
  {
    [v5 handWidth];
    v16 = v15 * 0.5;
    if (v16 < v10)
    {
      v16 = v10;
    }

    v11 = v4 + v16;
    [v5 armLength];
    v18 = v17;
    [v5 handLength];
    v14 = v10 + v18 + v19;
  }

  v20 = v4 + v14;
  CGPathAddArc(Mutable, 0, v11, v20, v10, 0.0, 6.28318531, 0);
  [v5 pegRadius];
  if (v21 > 0.0)
  {
    [v5 pegRadius];
    CGPathMoveToPoint(Mutable, 0, v11 + v22, v20);
    [v5 pegRadius];
    CGPathAddArc(Mutable, 0, v11, v20, v23, 0.0, -6.28318531, 1);
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

+ (void)_createHandImageWithSize:(double)a1 paths:(double)a2 colors:.cold.1(double a1, double a2)
{
  v2 = NSStringFromCGSize(*&a1);
  OUTLINED_FUNCTION_0_2(&dword_1E49C8000, v3, v4, "cannot create hand image with size: %@", v5, v6, v7, v8, 2u);
}

@end