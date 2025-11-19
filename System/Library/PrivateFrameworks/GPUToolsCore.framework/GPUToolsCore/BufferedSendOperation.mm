@interface BufferedSendOperation
- (void)dealloc;
@end

@implementation BufferedSendOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BufferedSendOperation;
  [(BufferedSendOperation *)&v3 dealloc];
}

@end