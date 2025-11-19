@interface FigCaptureSessionParsedCinematographyConfiguration
- (FigCaptureSessionParsedCinematographyConfiguration)initWithVideoPreviewSinkConnectionConfiguration:(id)a3 videoCaptureConnectionConfigurations:(id)a4 previewConnectionConfigurations:(id)a5 sourceConfiguration:(id)a6;
- (void)dealloc;
@end

@implementation FigCaptureSessionParsedCinematographyConfiguration

- (FigCaptureSessionParsedCinematographyConfiguration)initWithVideoPreviewSinkConnectionConfiguration:(id)a3 videoCaptureConnectionConfigurations:(id)a4 previewConnectionConfigurations:(id)a5 sourceConfiguration:(id)a6
{
  v12.receiver = self;
  v12.super_class = FigCaptureSessionParsedCinematographyConfiguration;
  v10 = [(FigCaptureSessionParsedCinematographyConfiguration *)&v12 init];
  if (v10)
  {
    v10->_videoPreviewSinkConnectionConfiguration = a3;
    v10->_videoCaptureConnectionConfigurations = a4;
    v10->_previewConnectionConfigurations = a5;
    v10->_sourceConfiguration = a6;
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