@interface CSSConcreteScreenshotter
- (CGSize)sizeByScalingSize:(CGSize)a3 byFactor:(double)a4;
- (CSSConcreteScreenshotter)init;
- (id)fullSizeScreenshotWithError:(id *)a3;
- (id)resizeScreenshot:(id)a3 toFitInPixelBox:(CGSize)a4;
- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)a3 completion:(id)a4;
@end

@implementation CSSConcreteScreenshotter

- (CSSConcreteScreenshotter)init
{
  v6.receiver = self;
  v6.super_class = CSSConcreteScreenshotter;
  v2 = [(CSSConcreteScreenshotter *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    deviceProperties = v2->_deviceProperties;
    v2->_deviceProperties = v3;
  }

  return v2;
}

- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(CSSConcreteScreenshotter *)self deviceProperties];
  v10 = [v9 isScreenOn];

  if ((v10 & 1) != 0 && (-[CSSConcreteScreenshotter deviceProperties](self, "deviceProperties"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isLocked], v11, !v12))
  {
    if (fabs(width) <= 2.22044605e-16 || fabs(height) <= 2.22044605e-16)
    {
      (*(v7 + 2))(v7, 0, 0);
    }

    else
    {
      v17 = 0;
      v14 = [(CSSConcreteScreenshotter *)self fullSizeScreenshotWithError:&v17];
      v15 = v17;
      if (v14)
      {
        v16 = [(CSSConcreteScreenshotter *)self resizeScreenshot:v14 toFitInPixelBox:width, height];
        (*(v7 + 2))(v7, v16, 0);
      }

      else
      {
        (*(v7 + 2))(v7, 0, v15);
      }
    }
  }

  else
  {
    v13 = CRKErrorWithCodeAndUserInfo();
    (*(v7 + 2))(v7, 0, v13);
  }

  objc_autoreleasePoolPop(v8);
}

- (id)fullSizeScreenshotWithError:(id *)a3
{
  v4 = objc_opt_new();
  v5 = [v4 screenshotWithMaximumSizeInPixels:a3 error:{1.79769313e308, 1.79769313e308}];

  return v5;
}

- (id)resizeScreenshot:(id)a3 toFitInPixelBox:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  [(UIImage *)v7 size];
  v9 = v8;
  v11 = v10;
  [(UIImage *)v7 scale];
  [(CSSConcreteScreenshotter *)self sizeByScalingSize:v9 byFactor:v11, v12];
  v14 = v13;
  v16 = v15;
  v17 = fmin(width / v13, 1.0);
  v18 = height / v15;
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  [(CSSConcreteScreenshotter *)self sizeByScalingSize:v14 byFactor:v16, v19];
  if (v14 == v20 && v16 == v21)
  {
    v27 = UIImageJPEGRepresentation(v7, 0.0);
  }

  else
  {
    v23 = v20;
    v24 = v21;
    v25 = objc_opt_new();
    [v25 setScale:1.0];
    v26 = [[UIGraphicsImageRenderer alloc] initWithSize:v25 format:{v23, v24}];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000049A0;
    v29[3] = &unk_10000C760;
    v30 = v7;
    v31 = v23;
    v32 = v24;
    v27 = [v26 JPEGDataWithCompressionQuality:v29 actions:0.0];
  }

  return v27;
}

- (CGSize)sizeByScalingSize:(CGSize)a3 byFactor:(double)a4
{
  v4 = a3.width * a4;
  v5 = a3.height * a4;
  result.height = v5;
  result.width = v4;
  return result;
}

@end