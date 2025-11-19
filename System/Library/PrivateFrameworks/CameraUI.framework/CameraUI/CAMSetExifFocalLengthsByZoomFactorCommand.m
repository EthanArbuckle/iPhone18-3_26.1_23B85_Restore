@interface CAMSetExifFocalLengthsByZoomFactorCommand
- (CAMSetExifFocalLengthsByZoomFactorCommand)initWithExifFocalLengthsByZoomFactor:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMSetExifFocalLengthsByZoomFactorCommand

- (CAMSetExifFocalLengthsByZoomFactorCommand)initWithExifFocalLengthsByZoomFactor:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CAMSetExifFocalLengthsByZoomFactorCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__exifFocalLengthsByZoomFactor, a3);
    v8 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CAMSetExifFocalLengthsByZoomFactorCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:a3];
  v5 = [(CAMSetExifFocalLengthsByZoomFactorCommand *)self _exifFocalLengthsByZoomFactor];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentStillImageOutput];
  [v4 setExifFocalLengthsByZoomFactor:self->__exifFocalLengthsByZoomFactor];
}

@end