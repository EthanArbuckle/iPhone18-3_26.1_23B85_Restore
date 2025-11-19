@interface HDAuthorizationRequestGroup
@end

@implementation HDAuthorizationRequestGroup

void __72___HDAuthorizationRequestGroup_promptIfNecessaryWithTimeout_completion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Authorization session timed out"];
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

@end