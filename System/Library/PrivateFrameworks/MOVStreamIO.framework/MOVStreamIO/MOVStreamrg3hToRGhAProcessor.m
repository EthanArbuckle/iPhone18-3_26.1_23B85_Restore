@interface MOVStreamrg3hToRGhAProcessor
- (opaqueCMFormatDescription)createTrackFormatDescriptionFromStreamData:(StreamRecordingData *)a3;
@end

@implementation MOVStreamrg3hToRGhAProcessor

- (opaqueCMFormatDescription)createTrackFormatDescriptionFromStreamData:(StreamRecordingData *)a3
{
  mioProcesser = self->_mioProcesser;
  if (!mioProcesser)
  {
    v5 = [[MIOrg3hToRGhAFrameProcessor alloc] initWithInputFormatDescription:a3->var0];
    v6 = self->_mioProcesser;
    self->_mioProcesser = v5;

    mioProcesser = self->_mioProcesser;
  }

  v7 = [(MIOrg3hToRGhAFrameProcessor *)mioProcesser formatDescriptionForEncoding];
  CFRetain(v7);
  return v7;
}

@end