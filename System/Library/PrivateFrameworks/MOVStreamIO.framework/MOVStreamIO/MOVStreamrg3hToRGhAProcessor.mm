@interface MOVStreamrg3hToRGhAProcessor
- (opaqueCMFormatDescription)createTrackFormatDescriptionFromStreamData:(StreamRecordingData *)data;
@end

@implementation MOVStreamrg3hToRGhAProcessor

- (opaqueCMFormatDescription)createTrackFormatDescriptionFromStreamData:(StreamRecordingData *)data
{
  mioProcesser = self->_mioProcesser;
  if (!mioProcesser)
  {
    v5 = [[MIOrg3hToRGhAFrameProcessor alloc] initWithInputFormatDescription:data->var0];
    v6 = self->_mioProcesser;
    self->_mioProcesser = v5;

    mioProcesser = self->_mioProcesser;
  }

  formatDescriptionForEncoding = [(MIOrg3hToRGhAFrameProcessor *)mioProcesser formatDescriptionForEncoding];
  CFRetain(formatDescriptionForEncoding);
  return formatDescriptionForEncoding;
}

@end