@interface BWInferenceVisionFaceObservationsCropDescriptor
- (BWInferenceVisionFaceObservationsCropDescriptor)initWithFaceIndex:(unint64_t)a3;
- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)a3;
@end

@implementation BWInferenceVisionFaceObservationsCropDescriptor

- (BWInferenceVisionFaceObservationsCropDescriptor)initWithFaceIndex:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = BWInferenceVisionFaceObservationsCropDescriptor;
  result = [(BWInferenceVisionFaceObservationsCropDescriptor *)&v5 init];
  if (result)
  {
    result->_faceIndex = a3;
  }

  return result;
}

- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  [objc_msgSend(BWInferenceGetAttachedInference(a3 802];
  v7 = 1.0 - (v6 + v5);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v3;
  return result;
}

@end