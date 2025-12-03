@interface CSSConcreteScreenshotter
- (CGSize)sizeByScalingSize:(CGSize)size byFactor:(double)factor;
- (CSSConcreteScreenshotter)init;
- (id)fullSizeScreenshotWithError:(id *)error;
- (id)resizeScreenshot:(id)screenshot toFitInPixelBox:(CGSize)box;
- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)pixels completion:(id)completion;
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

- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)pixels completion:(id)completion
{
  height = pixels.height;
  width = pixels.width;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  deviceProperties = [(CSSConcreteScreenshotter *)self deviceProperties];
  isScreenOn = [deviceProperties isScreenOn];

  if ((isScreenOn & 1) != 0 && (-[CSSConcreteScreenshotter deviceProperties](self, "deviceProperties"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isLocked], v11, !v12))
  {
    if (fabs(width) <= 2.22044605e-16 || fabs(height) <= 2.22044605e-16)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }

    else
    {
      v17 = 0;
      v14 = [(CSSConcreteScreenshotter *)self fullSizeScreenshotWithError:&v17];
      v15 = v17;
      if (v14)
      {
        height = [(CSSConcreteScreenshotter *)self resizeScreenshot:v14 toFitInPixelBox:width, height];
        (*(completionCopy + 2))(completionCopy, height, 0);
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 0, v15);
      }
    }
  }

  else
  {
    v13 = CRKErrorWithCodeAndUserInfo();
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }

  objc_autoreleasePoolPop(v8);
}

- (id)fullSizeScreenshotWithError:(id *)error
{
  v4 = objc_opt_new();
  v5 = [v4 screenshotWithMaximumSizeInPixels:error error:{1.79769313e308, 1.79769313e308}];

  return v5;
}

- (id)resizeScreenshot:(id)screenshot toFitInPixelBox:(CGSize)box
{
  height = box.height;
  width = box.width;
  screenshotCopy = screenshot;
  [(UIImage *)screenshotCopy size];
  v9 = v8;
  v11 = v10;
  [(UIImage *)screenshotCopy scale];
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
    v27 = UIImageJPEGRepresentation(screenshotCopy, 0.0);
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
    v30 = screenshotCopy;
    v31 = v23;
    v32 = v24;
    v27 = [v26 JPEGDataWithCompressionQuality:v29 actions:0.0];
  }

  return v27;
}

- (CGSize)sizeByScalingSize:(CGSize)size byFactor:(double)factor
{
  v4 = size.width * factor;
  v5 = size.height * factor;
  result.height = v5;
  result.width = v4;
  return result;
}

@end