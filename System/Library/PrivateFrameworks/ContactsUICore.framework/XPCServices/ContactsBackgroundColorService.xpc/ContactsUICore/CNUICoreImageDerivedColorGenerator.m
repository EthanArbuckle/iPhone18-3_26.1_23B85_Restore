@interface CNUICoreImageDerivedColorGenerator
+ (id)colorsForImageRef:(CGImage *)a3;
+ (id)colorsForUIImage:(id)a3;
+ (id)defaultDarkGrayColors;
+ (id)defaultGrayColors;
+ (id)resizeImageForPerformance:(id)a3;
+ (id)scheduler;
+ (id)tintedUIColorsFromUIColors:(id)a3 isLight:(BOOL)a4;
+ (void)fetchColorsForImage:(id)a3 ciContext:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation CNUICoreImageDerivedColorGenerator

+ (id)colorsForUIImage:(id)a3
{
  v4 = a3;
  if ([v4 ioSurface])
  {
    v5 = UICreateCGImageFromIOSurface();
    v6 = [a1 colorsForImageRef:v5];
    CGImageRelease(v5);
  }

  else
  {
    v6 = [a1 colorsForImageRef:{objc_msgSend(v4, "CGImage")}];
  }

  return v6;
}

+ (id)colorsForImageRef:(CGImage *)a3
{
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  if (Width && Height)
  {
    if (Height <= 160.0)
    {
      v7 = Height;
    }

    else
    {
      v7 = 160.0;
    }

    v8 = v7;
    v9 = malloc_type_malloc(vcvtd_n_u64_f64(v7, 2uLL), 0xBDDB8817uLL);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v11 = CGBitmapContextCreate(v9, 1uLL, v7, 8uLL, 4uLL, DeviceRGB, 0x4001u);
    v32.origin.x = 0.0;
    v32.origin.y = 0.0;
    v32.size.width = 1.0;
    v32.size.height = v7;
    CGContextDrawImage(v11, v32, a3);
    CGContextRelease(v11);
    CGColorSpaceRelease(DeviceRGB);
    v12 = 0;
    if (v7)
    {
      v13 = v9 + 3;
      while (!*(v13 - 3) && !*(v13 - 2) && !*(v13 - 1) || !*v13)
      {
        ++v12;
        v13 += 4;
        if (v8 == v12)
        {
          v12 = v7;
          break;
        }
      }

      v14 = v8 - 1;
      if (v8 - 1 >= 1)
      {
        v15 = &v9[4 * v8 - 2];
        while (!*(v15 - 2) && !*(v15 - 1) && !*v15 || !v15[1])
        {
          --v8;
          v15 -= 4;
          if (v8 <= 1)
          {
            v14 = 0;
            goto LABEL_27;
          }
        }

        v14 = v8 - 1;
      }
    }

    else
    {
      v14 = -1;
    }

LABEL_27:
    v18 = objc_opt_new();
    if (v14 > v12)
    {
      v19 = vcvtd_n_f64_u64(v14 - v12, 2uLL);
      v24 = vcvtpd_u64_f64(v19);
      v25 = &v9[4 * v12 + 3];
      do
      {
        LOBYTE(v19) = *(v25 - 3);
        LOBYTE(v20) = *(v25 - 2);
        LOBYTE(v21) = *(v25 - 1);
        LOBYTE(v22) = *v25;
        v26 = [UIColor colorWithRed:*&v19 / 255.0 green:v20 / 255.0 blue:v21 / 255.0 alpha:v22 / 255.0];
        [v18 addObject:v26];

        v12 += v24;
        v25 += 4 * v24;
      }

      while (v12 < v14);
    }

    v27 = &v9[4 * v14];
    LOBYTE(v19) = *v27;
    LOBYTE(v20) = v27[1];
    LOBYTE(v21) = v27[2];
    LOBYTE(v23) = v27[3];
    v28 = [UIColor colorWithRed:*&v19 / 255.0 green:v20 / 255.0 blue:v21 / 255.0 alpha:v23 / 255.0];
    [v18 addObject:v28];

    free(v9);
    if ([v18 count] >= 5)
    {
      v29 = v18;
    }

    else
    {
      v29 = [a1 defaultGrayColors];
    }

    v17 = v29;
  }

  else
  {
    v16 = sub_100001528();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100003690(v16);
    }

    v17 = [a1 defaultGrayColors];
  }

  return v17;
}

+ (id)scheduler
{
  if (qword_10000CDE8 != -1)
  {
    sub_1000036E8();
  }

  v3 = qword_10000CDF0;

  return v3;
}

+ (void)fetchColorsForImage:(id)a3 ciContext:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [a1 scheduler];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000016F8;
    v12[3] = &unk_100008450;
    v13 = v8;
    v16 = a1;
    v14 = v9;
    v15 = v10;
    [v11 performBlock:v12];
  }
}

+ (id)resizeImageForPerformance:(id)a3
{
  v3 = a3;
  [v3 extent];
  if (v4 > 100.0 || v5 > 100.0)
  {
    v7 = 100.0 / v5;
    memset(&v12.c, 0, 32);
    if (100.0 / v4 < 100.0 / v5)
    {
      v7 = 100.0 / v4;
    }

    *&v12.a = 0uLL;
    CGAffineTransformMakeScale(&v12, v7, v7);
    v11 = v12;
    v8 = [v3 imageByApplyingTransform:&v11];
  }

  else
  {
    v8 = v3;
  }

  v9 = v8;

  return v9;
}

+ (id)defaultGrayColors
{
  v2 = [UIColor colorWithRed:0.631372549 green:0.643137255 blue:0.690196078 alpha:1.0];
  v3 = [UIColor colorWithRed:0.654901961 green:0.666666667 blue:0.709803922 alpha:1.0, v2];
  v9[1] = v3;
  v4 = [UIColor colorWithRed:0.682352941 green:0.694117647 blue:0.725490196 alpha:1.0];
  v9[2] = v4;
  v5 = [UIColor colorWithRed:0.729411765 green:0.733333333 blue:0.752941176 alpha:1.0];
  v9[3] = v5;
  v6 = [UIColor colorWithRed:0.752941176 green:0.756862745 blue:0.77254902 alpha:1.0];
  v9[4] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:5];

  return v7;
}

+ (id)defaultDarkGrayColors
{
  v2 = [UIColor colorWithRed:0.156862745 green:0.164705882 blue:0.2 alpha:1.0];
  v3 = [UIColor colorWithRed:0.184313725 green:0.196078431 blue:0.231372549 alpha:1.0, v2];
  v9[1] = v3;
  v4 = [UIColor colorWithRed:0.219607843 green:0.231372549 blue:0.258823529 alpha:1.0];
  v9[2] = v4;
  v5 = [UIColor colorWithRed:0.258823529 green:0.270588235 blue:0.298039216 alpha:1.0];
  v9[3] = v5;
  v6 = [UIColor colorWithRed:0.301960784 green:0.309803922 blue:0.329411765 alpha:1.0];
  v9[4] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:5];

  return v7;
}

+ (id)tintedUIColorsFromUIColors:(id)a3 isLight:(BOOL)a4
{
  v5 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000022B4;
  v8[3] = &unk_100008478;
  v10 = a4;
  v6 = objc_opt_new();
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

  return v6;
}

@end