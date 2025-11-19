@interface HMIVideoDecoderDelegateAdapter
- (void)decoder:(id)a3 didDecodeSampleBuffer:(opaqueCMSampleBuffer *)a4;
- (void)decoder:(id)a3 didFailWithError:(id)a4;
@end

@implementation HMIVideoDecoderDelegateAdapter

- (void)decoder:(id)a3 didDecodeSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  v8 = a3;
  v6 = [(HMIVideoDecoderDelegateAdapter *)self decoderDidDecodeSampleBuffer];

  if (v6)
  {
    v7 = [(HMIVideoDecoderDelegateAdapter *)self decoderDidDecodeSampleBuffer];
    (v7)[2](v7, v8, a4);
  }
}

- (void)decoder:(id)a3 didFailWithError:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMIVideoDecoderDelegateAdapter *)self decoderDidFailWithError];

  if (v7)
  {
    v8 = [(HMIVideoDecoderDelegateAdapter *)self decoderDidFailWithError];
    (v8)[2](v8, v9, v6);
  }
}

@end