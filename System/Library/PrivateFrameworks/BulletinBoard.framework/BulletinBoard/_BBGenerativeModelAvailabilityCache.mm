@interface _BBGenerativeModelAvailabilityCache
+ (id)sharedInstance;
- (_BBGenerativeModelAvailabilityCache)init;
- (int64_t)_currentStatusForUseCase:(id)a3;
- (int64_t)statusForUseCaseIdentifier:(id)a3;
- (void)dealloc;
- (void)generativeModelsAvailabilityDidChange;
@end

@implementation _BBGenerativeModelAvailabilityCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_BBGenerativeModelAvailabilityCache sharedInstance];
  }

  v3 = sharedInstance_cache;

  return v3;
}

- (_BBGenerativeModelAvailabilityCache)init
{
  v7.receiver = self;
  v7.super_class = _BBGenerativeModelAvailabilityCache;
  v2 = [(_BBGenerativeModelAvailabilityCache *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    cache = v2->_cache;
    v2->_cache = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _BBGenerativeModelsAvailabilityDidChange, @"com.apple.gms.availability.notification", 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.gms.availability.notification", 0);
  v4.receiver = self;
  v4.super_class = _BBGenerativeModelAvailabilityCache;
  [(_BBGenerativeModelAvailabilityCache *)&v4 dealloc];
}

- (int64_t)statusForUseCaseIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
  }

  else
  {
    v7 = [(_BBGenerativeModelAvailabilityCache *)self _currentStatusForUseCase:v4];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    [(NSMutableDictionary *)self->_cache setObject:v8 forKeyedSubscript:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (int64_t)_currentStatusForUseCase:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getGMAvailabilityWrapperClass_softClass;
  v14 = getGMAvailabilityWrapperClass_softClass;
  if (!getGMAvailabilityWrapperClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getGMAvailabilityWrapperClass_block_invoke;
    v10[3] = &unk_278D2B060;
    v10[4] = &v11;
    __getGMAvailabilityWrapperClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v15[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v7 = [v4 currentWithUseCaseIdentifiers:v6];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)generativeModelsAvailabilityDidChange
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

@end