@interface ZhangHeFilter
+ (id)zhangHeFilter:(id)a3;
@end

@implementation ZhangHeFilter

+ (id)zhangHeFilter:(id)a3
{
  v3 = [a3 dc_CGImage];
  Width = CGImageGetWidth(v3);
  Height = CGImageGetHeight(v3);
  BytesPerRow = CGImageGetBytesPerRow(v3);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v8 = CGBitmapContextCreate(0, Width, Height, 8uLL, BytesPerRow, DeviceGray, 0);
  v9 = CGBitmapContextGetBytesPerRow(v8);
  Data = CGBitmapContextGetData(v8);
  if (Height)
  {
    v11 = 0;
    LODWORD(v12) = 0;
    do
    {
      if (Width)
      {
        v13 = 0;
        v14 = 0;
        v15 = 1;
        do
        {
          if (v12 % 0x96)
          {
            v16 = v13 + 150 * (v14 / 0x96) == 0;
          }

          else
          {
            v16 = 1;
          }

          v17 = !v16;
          Data[v11 + v15 - 1] = v17 << 31 >> 31;
          ++v14;
          --v13;
        }

        while (Width > v15++);
      }

      v12 = (v12 + 1);
      v11 += v9;
    }

    while (Height > v12);
  }

  Image = CGBitmapContextCreateImage(v8);
  v20 = [MEMORY[0x277D755B8] dc_imageWithCGImage:Image];
  CGContextRelease(v8);
  CGImageRelease(Image);
  CGColorSpaceRelease(DeviceGray);

  return v20;
}

@end