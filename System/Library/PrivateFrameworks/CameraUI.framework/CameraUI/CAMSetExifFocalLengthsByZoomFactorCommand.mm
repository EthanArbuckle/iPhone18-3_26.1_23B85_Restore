@interface CAMSetExifFocalLengthsByZoomFactorCommand
- (CAMSetExifFocalLengthsByZoomFactorCommand)initWithExifFocalLengthsByZoomFactor:(id)factor;
- (id)copyWithZone:(_NSZone *)zone;
- (void)executeWithContext:(id)context;
@end

@implementation CAMSetExifFocalLengthsByZoomFactorCommand

- (CAMSetExifFocalLengthsByZoomFactorCommand)initWithExifFocalLengthsByZoomFactor:(id)factor
{
  factorCopy = factor;
  v10.receiver = self;
  v10.super_class = CAMSetExifFocalLengthsByZoomFactorCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__exifFocalLengthsByZoomFactor, factor);
    v8 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMSetExifFocalLengthsByZoomFactorCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  _exifFocalLengthsByZoomFactor = [(CAMSetExifFocalLengthsByZoomFactorCommand *)self _exifFocalLengthsByZoomFactor];
  v6 = v4[3];
  v4[3] = _exifFocalLengthsByZoomFactor;

  return v4;
}

- (void)executeWithContext:(id)context
{
  currentStillImageOutput = [context currentStillImageOutput];
  [currentStillImageOutput setExifFocalLengthsByZoomFactor:self->__exifFocalLengthsByZoomFactor];
}

@end