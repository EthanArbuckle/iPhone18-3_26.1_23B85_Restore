@interface HMIVideoEncoderDelegateAdapter
- (void)encoder:(id)a3 didEncodeSampleBuffer:(opaqueCMSampleBuffer *)a4;
- (void)encoder:(id)a3 didFailWithError:(id)a4;
@end

@implementation HMIVideoEncoderDelegateAdapter

- (void)encoder:(id)a3 didEncodeSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  v8 = a3;
  v6 = [(HMIVideoEncoderDelegateAdapter *)self encoderDidEncodeSampleBuffer];

  if (v6)
  {
    v7 = [(HMIVideoEncoderDelegateAdapter *)self encoderDidEncodeSampleBuffer];
    (v7)[2](v7, v8, a4);
  }
}

- (void)encoder:(id)a3 didFailWithError:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMIVideoEncoderDelegateAdapter *)self encoderDidFailWithError];

  if (v7)
  {
    v8 = [(HMIVideoEncoderDelegateAdapter *)self encoderDidFailWithError];
    (v8)[2](v8, v9, v6);
  }
}

@end