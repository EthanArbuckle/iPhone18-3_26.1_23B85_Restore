@interface WDCancellationToken
- (void)cancel;
@end

@implementation WDCancellationToken

- (void)cancel
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(WDCancellationToken *)self setCancelled:1];
}

@end