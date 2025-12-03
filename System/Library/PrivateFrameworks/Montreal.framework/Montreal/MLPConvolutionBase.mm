@interface MLPConvolutionBase
- (unint64_t)computeOutputLengthWithInputLength:(int64_t)length kernelWidth:(int64_t)width kernelStride:(int64_t)stride;
@end

@implementation MLPConvolutionBase

- (unint64_t)computeOutputLengthWithInputLength:(int64_t)length kernelWidth:(int64_t)width kernelStride:(int64_t)stride
{
  v8 = vcvtps_s32_f32((length - width + 1) / stride);
  if (v8 <= 0)
  {
    sub_19D2C78CC(@"Output from convolution layer is not valid: %ld", a2, length, width, stride, v5, v6, v7, v8);
  }

  return v8;
}

@end