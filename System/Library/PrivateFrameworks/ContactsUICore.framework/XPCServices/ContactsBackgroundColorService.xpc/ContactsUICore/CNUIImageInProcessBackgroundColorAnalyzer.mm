@interface CNUIImageInProcessBackgroundColorAnalyzer
- (void)getBackgroundColorOnImageData:(id)data bitmapFormat:(id)format withReply:(id)reply;
@end

@implementation CNUIImageInProcessBackgroundColorAnalyzer

- (void)getBackgroundColorOnImageData:(id)data bitmapFormat:(id)format withReply:(id)reply
{
  dataCopy = data;
  formatCopy = format;
  replyCopy = reply;
  if (formatCopy)
  {
    v10 = CGDataProviderCreateWithCFData(dataCopy);
    width = [formatCopy width];
    height = [formatCopy height];
    bitsPerComponent = [formatCopy bitsPerComponent];
    bitsPerPixel = [formatCopy bitsPerPixel];
    bytesPerRow = [formatCopy bytesPerRow];
    DeviceRGB = [formatCopy colorSpace];
    if (!DeviceRGB)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v17 = DeviceRGB;
    }

    v18 = CGImageCreate(width, height, bitsPerComponent, bitsPerPixel, bytesPerRow, DeviceRGB, [formatCopy bitmapInfo], v10, 0, 1, kCGRenderingIntentDefault);
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
    replyCopy[2](replyCopy, 0);
    goto LABEL_12;
  }

  v19 = [[UIImage alloc] initWithData:dataCopy];
  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000031B8;
  v20[3] = &unk_1000083C0;
  v21 = replyCopy;
  [CNUICoreImageDerivedColorGenerator fetchColorsForImage:v19 ciContext:0 withCompletionHandler:v20];

LABEL_12:
}

@end