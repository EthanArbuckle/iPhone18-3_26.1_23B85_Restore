@interface CAMColorSpaceCommand
- (CAMColorSpaceCommand)initWithCoder:(id)coder;
- (CAMColorSpaceCommand)initWithColorSpace:(int64_t)space;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMColorSpaceCommand

- (CAMColorSpaceCommand)initWithColorSpace:(int64_t)space
{
  v8.receiver = self;
  v8.super_class = CAMColorSpaceCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__colorSpace = space;
    v6 = v4;
  }

  return v5;
}

- (CAMColorSpaceCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMColorSpaceCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  if (v5)
  {
    v5->__colorSpace = [coderCopy decodeIntegerForKey:@"CAMColorSpaceCommandColorSpace"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMColorSpaceCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[CAMColorSpaceCommand _colorSpace](self forKey:{"_colorSpace", v5.receiver, v5.super_class), @"CAMColorSpaceCommandColorSpace"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMColorSpaceCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[3] = [(CAMColorSpaceCommand *)self _colorSpace];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _colorSpace = [(CAMColorSpaceCommand *)self _colorSpace];
  currentCaptureSession = [contextCopy currentCaptureSession];
  currentVideoDevice = [contextCopy currentVideoDevice];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];

  v8 = [CAMCaptureConversions AVCaptureColorSpaceForColorSpace:_colorSpace hasValidConversion:0];
  v9 = v8;
  if (_colorSpace <= 1)
  {
    if (_colorSpace)
    {
      if (_colorSpace != 1)
      {
        goto LABEL_11;
      }

      v10 = 1;
      goto LABEL_10;
    }

    v10 = 0;
LABEL_9:
    _colorSpace = v8;
LABEL_10:
    [currentCaptureSession setAutomaticallyConfiguresCaptureDeviceForWideColor:v10];
    v9 = _colorSpace;
    goto LABEL_11;
  }

  if (_colorSpace == 2 || _colorSpace == 3)
  {
    v10 = 1;
    goto LABEL_9;
  }

LABEL_11:
  if ([currentVideoDevice activeColorSpace] != v9)
  {
    supportedColorSpaces = [currentVideoDeviceFormat supportedColorSpaces];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    v13 = [supportedColorSpaces containsObject:v12];

    if (v13)
    {
      [currentCaptureSession setAutomaticallyConfiguresCaptureDeviceForWideColor:0];
      [currentVideoDevice setActiveColorSpace:v9];
    }
  }
}

@end