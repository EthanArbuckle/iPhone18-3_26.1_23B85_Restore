@interface HMIVideoFrameSampler
- (HMIVideoFrameSamplerDelegate)delegate;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer;
@end

@implementation HMIVideoFrameSampler

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (HMIVideoFrameSamplerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end