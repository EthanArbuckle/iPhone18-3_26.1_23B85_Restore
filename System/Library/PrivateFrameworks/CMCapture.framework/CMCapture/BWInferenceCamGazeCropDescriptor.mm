@interface BWInferenceCamGazeCropDescriptor
- (BWInferenceCamGazeCropDescriptor)initWithFaceIndex:(unint64_t)a3;
- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)a3;
@end

@implementation BWInferenceCamGazeCropDescriptor

- (BWInferenceCamGazeCropDescriptor)initWithFaceIndex:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = BWInferenceCamGazeCropDescriptor;
  result = [(BWInferenceCamGazeCropDescriptor *)&v5 init];
  if (result)
  {
    result->_faceIndex = a3;
  }

  return result;
}

- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 16);
  [CMGetAttachment(a3 *off_1E798A5A0];
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