@interface HMFScheduler
@end

@implementation HMFScheduler

void __53__HMFScheduler_NAScheduler__afterDelay_performBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained performBlock:v3];
  }

  else
  {
    (*(v3 + 16))(v3);
  }
}

@end