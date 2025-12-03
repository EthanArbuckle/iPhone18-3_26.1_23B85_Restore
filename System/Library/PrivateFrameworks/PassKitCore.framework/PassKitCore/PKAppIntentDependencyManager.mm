@interface PKAppIntentDependencyManager
+ (id)sharedInstance;
- (PKAppIntentCoordinator)coordinator;
@end

@implementation PKAppIntentDependencyManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PKAppIntentDependencyManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED6D20F8 != -1)
  {
    dispatch_once(&qword_1ED6D20F8, block);
  }

  v2 = _MergedGlobals_271;

  return v2;
}

void __46__PKAppIntentDependencyManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_271;
  _MergedGlobals_271 = v1;
}

- (PKAppIntentCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

@end