@interface FigCaptureSessionParsedStillImageSinkConfiguration
- (FigVideoCaptureConnectionConfiguration)primaryStillImageConnectionConfiguration;
- (void)dealloc;
- (void)initWithStillImageConnectionConfigurations:(void *)configurations movieFileVideoConnectionConfiguration:(void *)configuration pointCloudDataConnectionConfiguration:;
@end

@implementation FigCaptureSessionParsedStillImageSinkConfiguration

- (FigVideoCaptureConnectionConfiguration)primaryStillImageConnectionConfiguration
{
  firstObject = [(NSArray *)self->_stillImageConnectionConfigurations firstObject];

  return firstObject;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedStillImageSinkConfiguration;
  [(FigCaptureSessionParsedStillImageSinkConfiguration *)&v3 dealloc];
}

- (void)initWithStillImageConnectionConfigurations:(void *)configurations movieFileVideoConnectionConfiguration:(void *)configuration pointCloudDataConnectionConfiguration:
{
  if (!self)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = FigCaptureSessionParsedStillImageSinkConfiguration;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  if (v7)
  {
    v7[1] = a2;
    v7[2] = configurations;
    v7[3] = configuration;
  }

  return v7;
}

@end