@interface HMIVideoDecoderDelegateAdapter
- (void)decoder:(id)decoder didDecodeSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)decoder:(id)decoder didFailWithError:(id)error;
@end

@implementation HMIVideoDecoderDelegateAdapter

- (void)decoder:(id)decoder didDecodeSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  decoderCopy = decoder;
  decoderDidDecodeSampleBuffer = [(HMIVideoDecoderDelegateAdapter *)self decoderDidDecodeSampleBuffer];

  if (decoderDidDecodeSampleBuffer)
  {
    decoderDidDecodeSampleBuffer2 = [(HMIVideoDecoderDelegateAdapter *)self decoderDidDecodeSampleBuffer];
    (decoderDidDecodeSampleBuffer2)[2](decoderDidDecodeSampleBuffer2, decoderCopy, buffer);
  }
}

- (void)decoder:(id)decoder didFailWithError:(id)error
{
  decoderCopy = decoder;
  errorCopy = error;
  decoderDidFailWithError = [(HMIVideoDecoderDelegateAdapter *)self decoderDidFailWithError];

  if (decoderDidFailWithError)
  {
    decoderDidFailWithError2 = [(HMIVideoDecoderDelegateAdapter *)self decoderDidFailWithError];
    (decoderDidFailWithError2)[2](decoderDidFailWithError2, decoderCopy, errorCopy);
  }
}

@end