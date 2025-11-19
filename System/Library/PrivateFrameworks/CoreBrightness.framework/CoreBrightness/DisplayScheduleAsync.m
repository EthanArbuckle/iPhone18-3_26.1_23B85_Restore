@interface DisplayScheduleAsync
@end

@implementation DisplayScheduleAsync

void ___DisplayScheduleAsync_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 176))
  {
    IONotificationPortSetDispatchQueue(*(*(a1 + 32) + 176), *(*(a1 + 32) + 144));
  }
}

@end