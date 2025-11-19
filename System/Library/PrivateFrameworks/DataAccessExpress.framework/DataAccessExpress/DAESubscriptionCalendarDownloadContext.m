@interface DAESubscriptionCalendarDownloadContext
- (void)callOutToDelegate:(id)a3;
@end

@implementation DAESubscriptionCalendarDownloadContext

- (void)callOutToDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__DAESubscriptionCalendarDownloadContext_callOutToDelegate___block_invoke;
  v7[3] = &unk_2785201C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

@end