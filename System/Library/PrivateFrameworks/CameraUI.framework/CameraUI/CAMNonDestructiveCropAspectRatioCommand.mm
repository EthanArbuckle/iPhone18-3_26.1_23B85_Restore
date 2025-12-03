@interface CAMNonDestructiveCropAspectRatioCommand
- (CAMNonDestructiveCropAspectRatioCommand)initWithAspectRatioCrop:(int64_t)crop;
- (CAMNonDestructiveCropAspectRatioCommand)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMNonDestructiveCropAspectRatioCommand

- (CAMNonDestructiveCropAspectRatioCommand)initWithAspectRatioCrop:(int64_t)crop
{
  v8.receiver = self;
  v8.super_class = CAMNonDestructiveCropAspectRatioCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__aspectRatioCrop = crop;
    v6 = v4;
  }

  return v5;
}

- (CAMNonDestructiveCropAspectRatioCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"CAMNonDestructiveCropAspectRatioKey"];

  return [(CAMNonDestructiveCropAspectRatioCommand *)self initWithAspectRatioCrop:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMNonDestructiveCropAspectRatioCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[CAMNonDestructiveCropAspectRatioCommand _aspectRatioCrop](self forKey:{"_aspectRatioCrop", v5.receiver, v5.super_class), @"CAMNonDestructiveCropAspectRatioKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMNonDestructiveCropAspectRatioCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[3] = [(CAMNonDestructiveCropAspectRatioCommand *)self _aspectRatioCrop];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentVideoDevice = [context currentVideoDevice];
  isNonDestructiveCropEnabled = [currentVideoDevice isNonDestructiveCropEnabled];
  _aspectRatioCrop = [(CAMNonDestructiveCropAspectRatioCommand *)self _aspectRatioCrop];
  if (isNonDestructiveCropEnabled)
  {
    if ((_aspectRatioCrop - 1) > 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_1A3A6A710[_aspectRatioCrop - 1];
    }

    [currentVideoDevice setAspectRatioForNonDestructiveCrop:v7];
  }

  else if (_aspectRatioCrop)
  {
    v8 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CAMNonDestructiveCropAspectRatioCommand *)self executeWithContext:currentVideoDevice, v8];
    }
  }
}

- (void)executeWithContext:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 _aspectRatioCrop];
  if (v5 > 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E76FD038[v5];
  }

  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_1A3640000, a3, OS_LOG_TYPE_ERROR, "Trying to set aspect ratio crop of %{public}@ on non-enabled device: %{public}@", &v7, 0x16u);
}

@end