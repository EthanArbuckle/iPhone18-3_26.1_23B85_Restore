@interface CAMTimelapseStabilizationCommand
- (CAMTimelapseStabilizationCommand)initWithCoder:(id)a3;
- (CAMTimelapseStabilizationCommand)initWithTimelapseStabilizationEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMTimelapseStabilizationCommand

- (CAMTimelapseStabilizationCommand)initWithTimelapseStabilizationEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMTimelapseStabilizationCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMTimelapseStabilizationCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMTimelapseStabilizationCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [v4 decodeBoolForKey:@"CAMTimelapseStabilizationCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMTimelapseStabilizationCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMTimelapseStabilizationCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMTimelapseStabilizationCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMTimelapseStabilizationCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMTimelapseStabilizationCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentStillImageOutput];
  if ([v4 isImageOptimizationForOfflineVideoStabilizationSupported])
  {
    [v4 setOptimizesImagesForOfflineVideoStabilization:self->__enabled];
  }
}

@end