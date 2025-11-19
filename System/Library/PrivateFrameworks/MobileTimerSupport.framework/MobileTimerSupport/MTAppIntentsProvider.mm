@interface MTAppIntentsProvider
+ (id)sharedInstance;
- (MTAppIntentsProvider)init;
- (MTAppIntentsProviderDelegate)delegate;
- (void)didAddNewWorldClockWithNameWithManager:(id)a3 name:(id)a4;
- (void)didRemoveWorldClockWithNameWithManager:(id)a3 name:(id)a4;
- (void)didSelectTabWithManager:(id)a3 tab:(int64_t)a4;
@end

@implementation MTAppIntentsProvider

uint64_t __38__MTAppIntentsProvider_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__MTAppIntentsProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken[0] != -1)
  {
    dispatch_once(sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

- (MTAppIntentsProvider)init
{
  v6.receiver = self;
  v6.super_class = MTAppIntentsProvider;
  v2 = [(MTAppIntentsProvider *)&v6 init];
  if (v2)
  {
    v3 = +[_TtC18MobileTimerSupport19MTAppIntentsManager sharedManager];
    [(MTAppIntentsProvider *)v2 setManager:v3];

    v4 = [(MTAppIntentsProvider *)v2 manager];
    [v4 setDelegate:v2];
  }

  return v2;
}

- (void)didSelectTabWithManager:(id)a3 tab:(int64_t)a4
{
  if ((a4 - 1) >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a4;
  }

  v6 = [(MTAppIntentsProvider *)self delegate];
  [v6 appIntentsProvider:self didSelectTab:v5];
}

- (void)didAddNewWorldClockWithNameWithManager:(id)a3 name:(id)a4
{
  v5 = a4;
  v6 = [(MTAppIntentsProvider *)self delegate];
  [v6 didAddNewWorldClockWithName:v5 provider:self];
}

- (void)didRemoveWorldClockWithNameWithManager:(id)a3 name:(id)a4
{
  v5 = a4;
  v6 = [(MTAppIntentsProvider *)self delegate];
  [v6 didRemoveWorldClockWithName:v5 provider:self];
}

- (MTAppIntentsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end