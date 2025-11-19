@interface DisplayUnscheduleAsync
@end

@implementation DisplayUnscheduleAsync

void ___DisplayUnscheduleAsync_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 176))
  {
    IONotificationPortSetDispatchQueue(*(*(a1 + 32) + 176), 0);
  }
}

@end