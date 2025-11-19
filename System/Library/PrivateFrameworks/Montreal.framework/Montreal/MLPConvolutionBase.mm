@interface MLPConvolutionBase
- (unint64_t)computeOutputLengthWithInputLength:(int64_t)a3 kernelWidth:(int64_t)a4 kernelStride:(int64_t)a5;
@end

@implementation MLPConvolutionBase

- (unint64_t)computeOutputLengthWithInputLength:(int64_t)a3 kernelWidth:(int64_t)a4 kernelStride:(int64_t)a5
{
  v8 = vcvtps_s32_f32((a3 - a4 + 1) / a5);
  if (v8 <= 0)
  {
    sub_19D2C78CC(@"Output from convolution layer is not valid: %ld", a2, a3, a4, a5, v5, v6, v7, v8);
  }

  return v8;
}

@end