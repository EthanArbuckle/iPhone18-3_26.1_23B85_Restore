@interface DAESubscriptionCalendarDownloadContext
- (void)callOutToDelegate:(id)delegate;
@end

@implementation DAESubscriptionCalendarDownloadContext

- (void)callOutToDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__DAESubscriptionCalendarDownloadContext_callOutToDelegate___block_invoke;
  v7[3] = &unk_2785201C0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

@end