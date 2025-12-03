@interface CAMCaptureCallbackReceipt
- (CAMCaptureCallbackReceipt)initWithCallback:(int64_t)callback duration:(double)duration;
@end

@implementation CAMCaptureCallbackReceipt

- (CAMCaptureCallbackReceipt)initWithCallback:(int64_t)callback duration:(double)duration
{
  v10.receiver = self;
  v10.super_class = CAMCaptureCallbackReceipt;
  v6 = [(CAMCaptureCallbackReceipt *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_callback = callback;
    v6->_secondsSinceBegin = duration;
    v8 = v6;
  }

  return v7;
}

@end