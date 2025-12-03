@interface FigCaptureSessionParsedCinematographyConfiguration
- (FigCaptureSessionParsedCinematographyConfiguration)initWithVideoPreviewSinkConnectionConfiguration:(id)configuration videoCaptureConnectionConfigurations:(id)configurations previewConnectionConfigurations:(id)connectionConfigurations sourceConfiguration:(id)sourceConfiguration;
- (void)dealloc;
@end

@implementation FigCaptureSessionParsedCinematographyConfiguration

- (FigCaptureSessionParsedCinematographyConfiguration)initWithVideoPreviewSinkConnectionConfiguration:(id)configuration videoCaptureConnectionConfigurations:(id)configurations previewConnectionConfigurations:(id)connectionConfigurations sourceConfiguration:(id)sourceConfiguration
{
  v12.receiver = self;
  v12.super_class = FigCaptureSessionParsedCinematographyConfiguration;
  v10 = [(FigCaptureSessionParsedCinematographyConfiguration *)&v12 init];
  if (v10)
  {
    v10->_videoPreviewSinkConnectionConfiguration = configuration;
    v10->_videoCaptureConnectionConfigurations = configurations;
    v10->_previewConnectionConfigurations = connectionConfigurations;
    v10->_sourceConfiguration = sourceConfiguration;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedCinematographyConfiguration;
  [(FigCaptureSessionParsedCinematographyConfiguration *)&v3 dealloc];
}

@end