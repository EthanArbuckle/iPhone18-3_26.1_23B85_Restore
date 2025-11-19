@interface FigCaptureSessionParsedStillImageSinkConfiguration
- (FigVideoCaptureConnectionConfiguration)primaryStillImageConnectionConfiguration;
- (void)dealloc;
- (void)initWithStillImageConnectionConfigurations:(void *)a3 movieFileVideoConnectionConfiguration:(void *)a4 pointCloudDataConnectionConfiguration:;
@end

@implementation FigCaptureSessionParsedStillImageSinkConfiguration

- (FigVideoCaptureConnectionConfiguration)primaryStillImageConnectionConfiguration
{
  v2 = [(NSArray *)self->_stillImageConnectionConfigurations firstObject];

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedStillImageSinkConfiguration;
  [(FigCaptureSessionParsedStillImageSinkConfiguration *)&v3 dealloc];
}

- (void)initWithStillImageConnectionConfigurations:(void *)a3 movieFileVideoConnectionConfiguration:(void *)a4 pointCloudDataConnectionConfiguration:
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = FigCaptureSessionParsedStillImageSinkConfiguration;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  if (v7)
  {
    v7[1] = a2;
    v7[2] = a3;
    v7[3] = a4;
  }

  return v7;
}

@end