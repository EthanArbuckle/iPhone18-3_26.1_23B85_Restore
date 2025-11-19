@interface CAMColorSpaceCommand
- (CAMColorSpaceCommand)initWithCoder:(id)a3;
- (CAMColorSpaceCommand)initWithColorSpace:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMColorSpaceCommand

- (CAMColorSpaceCommand)initWithColorSpace:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMColorSpaceCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__colorSpace = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMColorSpaceCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMColorSpaceCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  if (v5)
  {
    v5->__colorSpace = [v4 decodeIntegerForKey:@"CAMColorSpaceCommandColorSpace"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMColorSpaceCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[CAMColorSpaceCommand _colorSpace](self forKey:{"_colorSpace", v5.receiver, v5.super_class), @"CAMColorSpaceCommandColorSpace"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMColorSpaceCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[3] = [(CAMColorSpaceCommand *)self _colorSpace];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v5 = [(CAMColorSpaceCommand *)self _colorSpace];
  v14 = [v4 currentCaptureSession];
  v6 = [v4 currentVideoDevice];
  v7 = [v4 currentVideoDeviceFormat];

  v8 = [CAMCaptureConversions AVCaptureColorSpaceForColorSpace:v5 hasValidConversion:0];
  v9 = v8;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_11;
      }

      v10 = 1;
      goto LABEL_10;
    }

    v10 = 0;
LABEL_9:
    v5 = v8;
LABEL_10:
    [v14 setAutomaticallyConfiguresCaptureDeviceForWideColor:v10];
    v9 = v5;
    goto LABEL_11;
  }

  if (v5 == 2 || v5 == 3)
  {
    v10 = 1;
    goto LABEL_9;
  }

LABEL_11:
  if ([v6 activeColorSpace] != v9)
  {
    v11 = [v7 supportedColorSpaces];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    v13 = [v11 containsObject:v12];

    if (v13)
    {
      [v14 setAutomaticallyConfiguresCaptureDeviceForWideColor:0];
      [v6 setActiveColorSpace:v9];
    }
  }
}

@end