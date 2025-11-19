@interface GKScreenConfigurationController
+ (double)_scaleForCurrentDisplayConfiguration;
+ (id)sharedController;
- (GKScreenConfigurationController)init;
- (void)_screensDidChange:(id)a3;
- (void)registerListener:(id)a3;
- (void)unregisterListener:(id)a3;
@end

@implementation GKScreenConfigurationController

+ (id)sharedController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__GKScreenConfigurationController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = sharedController_sharedController;

  return v2;
}

uint64_t __51__GKScreenConfigurationController_sharedController__block_invoke()
{
  sharedController_sharedController = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

+ (double)_scaleForCurrentDisplayConfiguration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [MEMORY[0x277D759A0] screens];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__GKScreenConfigurationController__scaleForCurrentDisplayConfiguration__block_invoke;
  v5[3] = &unk_27967F250;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __71__GKScreenConfigurationController__scaleForCurrentDisplayConfiguration__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 scale];
  v5 = *(*(a1 + 32) + 8);
  if (v4 > *(v5 + 24))
  {
    *(v5 + 24) = v4;
  }

  return result;
}

- (GKScreenConfigurationController)init
{
  v5.receiver = self;
  v5.super_class = GKScreenConfigurationController;
  v2 = [(GKScreenConfigurationController *)&v5 init];
  if (v2)
  {
    [objc_opt_class() _scaleForCurrentDisplayConfiguration];
    v2->_greatestScreenScale = v3;
  }

  return v2;
}

- (void)registerListener:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__GKScreenConfigurationController_registerListener___block_invoke;
  block[3] = &unk_27967EF38;
  block[4] = self;
  if (registerListener__onceToken != -1)
  {
    dispatch_once(&registerListener__onceToken, block);
  }

  v5 = [(GKScreenConfigurationController *)self emitter];
  [v5 registerListener:v4];
  if ([v5 listenerRegisteredForSelector:sel_greatestScreenScaleDidChange_])
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel__screensDidChange_ name:*MEMORY[0x277D76E98] object:0];
    [v6 addObserver:self selector:sel__screensDidChange_ name:*MEMORY[0x277D76EA0] object:0];
    [v6 addObserver:self selector:sel__screensDidChange_ name:*MEMORY[0x277D76EA8] object:0];
  }
}

void __52__GKScreenConfigurationController_registerListener___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D0C028];
  v5[0] = &unk_2861CA428;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = [v2 eventEmitterForProtocols:v3];
  [*(a1 + 32) setEmitter:v4];
}

- (void)unregisterListener:(id)a3
{
  v4 = a3;
  v6 = [(GKScreenConfigurationController *)self emitter];
  [v6 unregisterListener:v4];

  if (([v6 listenerRegisteredForSelector:sel_greatestScreenScaleDidChange_] & 1) == 0)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:self];
  }
}

- (void)_screensDidChange:(id)a3
{
  [objc_opt_class() _scaleForCurrentDisplayConfiguration];
  v5 = v4;
  if (self->_greatestScreenScale != v4)
  {
    self->_greatestScreenScale = v4;
    v6 = [(GKScreenConfigurationController *)self emitter];
    [v6 greatestScreenScaleDidChange:v5];
  }
}

@end