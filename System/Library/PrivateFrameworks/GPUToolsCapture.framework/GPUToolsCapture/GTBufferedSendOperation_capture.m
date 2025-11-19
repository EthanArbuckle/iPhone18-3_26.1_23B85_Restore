@interface GTBufferedSendOperation_capture
- (void)dealloc;
@end

@implementation GTBufferedSendOperation_capture

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GTBufferedSendOperation_capture;
  [(GTBufferedSendOperation_capture *)&v3 dealloc];
}

@end