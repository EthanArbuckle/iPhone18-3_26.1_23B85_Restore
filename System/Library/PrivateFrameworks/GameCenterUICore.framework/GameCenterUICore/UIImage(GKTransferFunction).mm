@interface UIImage(GKTransferFunction)
+ (id)_gkImageWithRawData:()GKTransferFunction size:scale:rowBytes:bitmapInfo:;
- (void)_gkReadAtSize:()GKTransferFunction ARGBHostEndianBytes:;
@end

@implementation UIImage(GKTransferFunction)

+ (id)_gkImageWithRawData:()GKTransferFunction size:scale:rowBytes:bitmapInfo:
{
  v13 = a6;
  v14 = CGDataProviderCreateWithData(v13, [v13 bytes], objc_msgSend(v13, "length"), GKImageContextCGDataProviderReleaseDataCallback);
  if (v14)
  {
    v15 = v14;
    CFRetain(v13);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v17 = CGImageCreate((self * a3), (a2 * a3), 8uLL, 0x20uLL, a7, DeviceRGB, a8, v15, 0, 1, kCGRenderingIntentDefault);
    v18 = [MEMORY[0x277D755B8] imageWithCGImage:v17 scale:0 orientation:a3];
    CFRelease(DeviceRGB);
    CFRelease(v17);
    CFRelease(v15);
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v19 = GKOSLoggers();
    }

    v20 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [UIImage(GKTransferFunction) _gkImageWithRawData:v20 size:? scale:? rowBytes:? bitmapInfo:?];
    }

    v18 = 0;
  }

  return v18;
}

- (void)_gkReadAtSize:()GKTransferFunction ARGBHostEndianBytes:
{
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__UIImage_GKTransferFunction___gkReadAtSize_ARGBHostEndianBytes___block_invoke;
  v11[3] = &unk_27967F278;
  v13 = a2;
  v14 = a3;
  v11[4] = self;
  v12 = v8;
  v9 = v8;
  v10 = [GKImageContext imageDrawnWithSize:0 scale:v11 options:a2 usingBlock:a3, 1.0];
}

@end