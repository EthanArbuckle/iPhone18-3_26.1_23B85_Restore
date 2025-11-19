@interface GTBufferedSendOperation_replayer
- (void)dealloc;
@end

@implementation GTBufferedSendOperation_replayer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GTBufferedSendOperation_replayer;
  [(GTBufferedSendOperation_replayer *)&v3 dealloc];
}

@end