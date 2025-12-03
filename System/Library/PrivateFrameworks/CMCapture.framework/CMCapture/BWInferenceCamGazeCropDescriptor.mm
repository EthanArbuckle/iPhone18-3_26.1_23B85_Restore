@interface BWInferenceCamGazeCropDescriptor
- (BWInferenceCamGazeCropDescriptor)initWithFaceIndex:(unint64_t)index;
- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)buffer;
@end

@implementation BWInferenceCamGazeCropDescriptor

- (BWInferenceCamGazeCropDescriptor)initWithFaceIndex:(unint64_t)index
{
  v5.receiver = self;
  v5.super_class = BWInferenceCamGazeCropDescriptor;
  result = [(BWInferenceCamGazeCropDescriptor *)&v5 init];
  if (result)
  {
    result->_faceIndex = index;
  }

  return result;
}

- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 16);
  [CMGetAttachment(buffer *off_1E798A5A0];
  FigCFDictionaryGetCGRectIfPresent();
  v4 = *(&v7 + 1);
  v3 = *&v7;
  v6 = *(&v8 + 1);
  v5 = *&v8;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end