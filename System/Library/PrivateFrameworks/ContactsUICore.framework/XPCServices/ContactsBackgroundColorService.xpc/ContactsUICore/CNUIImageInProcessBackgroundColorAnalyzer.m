@interface CNUIImageInProcessBackgroundColorAnalyzer
- (void)getBackgroundColorOnImageData:(id)a3 bitmapFormat:(id)a4 withReply:(id)a5;
@end

@implementation CNUIImageInProcessBackgroundColorAnalyzer

- (void)getBackgroundColorOnImageData:(id)a3 bitmapFormat:(id)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = CGDataProviderCreateWithCFData(v7);
    v11 = [v8 width];
    v12 = [v8 height];
    v13 = [v8 bitsPerComponent];
    v14 = [v8 bitsPerPixel];
    v15 = [v8 bytesPerRow];
    DeviceRGB = [v8 colorSpace];
    if (!DeviceRGB)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v17 = DeviceRGB;
    }

    v18 = CGImageCreate(v11, v12, v13, v14, v15, DeviceRGB, [v8 bitmapInfo], v10, 0, 1, kCGRenderingIntentDefault);
    v19 = [[UIImage alloc] initWithCGImage:v18];
    if (v10)
    {
      CFRelease(v10);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v19)
    {
      goto LABEL_9;
    }

LABEL_11:
    v9[2](v9, 0);
    goto LABEL_12;
  }

  v19 = [[UIImage alloc] initWithData:v7];
  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000031B8;
  v20[3] = &unk_1000083C0;
  v21 = v9;
  [CNUICoreImageDerivedColorGenerator fetchColorsForImage:v19 ciContext:0 withCompletionHandler:v20];

LABEL_12:
}

@end