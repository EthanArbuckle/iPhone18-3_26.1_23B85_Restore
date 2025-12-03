@interface HMIVideoEncoderDelegateAdapter
- (void)encoder:(id)encoder didEncodeSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)encoder:(id)encoder didFailWithError:(id)error;
@end

@implementation HMIVideoEncoderDelegateAdapter

- (void)encoder:(id)encoder didEncodeSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  encoderCopy = encoder;
  encoderDidEncodeSampleBuffer = [(HMIVideoEncoderDelegateAdapter *)self encoderDidEncodeSampleBuffer];

  if (encoderDidEncodeSampleBuffer)
  {
    encoderDidEncodeSampleBuffer2 = [(HMIVideoEncoderDelegateAdapter *)self encoderDidEncodeSampleBuffer];
    (encoderDidEncodeSampleBuffer2)[2](encoderDidEncodeSampleBuffer2, encoderCopy, buffer);
  }
}

- (void)encoder:(id)encoder didFailWithError:(id)error
{
  encoderCopy = encoder;
  errorCopy = error;
  encoderDidFailWithError = [(HMIVideoEncoderDelegateAdapter *)self encoderDidFailWithError];

  if (encoderDidFailWithError)
  {
    encoderDidFailWithError2 = [(HMIVideoEncoderDelegateAdapter *)self encoderDidFailWithError];
    (encoderDidFailWithError2)[2](encoderDidFailWithError2, encoderCopy, errorCopy);
  }
}

@end