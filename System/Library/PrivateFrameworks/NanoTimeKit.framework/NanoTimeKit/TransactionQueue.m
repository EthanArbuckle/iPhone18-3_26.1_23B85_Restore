@interface TransactionQueue
@end

@implementation TransactionQueue

void ___TransactionQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.nanotimekit.daemon-transaction-queue", 0);
  v1 = _TransactionQueue___queue;
  _TransactionQueue___queue = v0;
}

@end