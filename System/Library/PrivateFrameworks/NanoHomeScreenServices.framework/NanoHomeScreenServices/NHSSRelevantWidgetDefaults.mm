@interface NHSSRelevantWidgetDefaults
+ (NHSSRelevantWidgetDefaults)sharedInstance;
- (NHSSRelevantWidgetDefaults)init;
- (NSArray)relevantWidgets;
- (void)_mainQueue_notifyObserversDefaultsDidChange;
- (void)_observeChangesToRelevantWidgetDefaults;
- (void)addObserver:(id)observer;
- (void)relevantWidgetDefaultsDidChange;
- (void)relevantWidgets;
- (void)removeObserver:(id)observer;
- (void)setRelevantWidgets:(id)widgets;
@end

@implementation NHSSRelevantWidgetDefaults

+ (NHSSRelevantWidgetDefaults)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[NHSSRelevantWidgetDefaults sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

uint64_t __44__NHSSRelevantWidgetDefaults_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_0 = objc_alloc_init(NHSSRelevantWidgetDefaults);

  return MEMORY[0x2821F96F8]();
}

- (NHSSRelevantWidgetDefaults)init
{
  v10.receiver = self;
  v10.super_class = NHSSRelevantWidgetDefaults;
  v2 = [(NHSSRelevantWidgetDefaults *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_observers = v3->_lock_observers;
    v3->_lock_observers = weakObjectsHashTable;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.NanoHomeScreen.RelevantWidgetDefaults.syncQueue", v6);
    queue = v3->_queue;
    v3->_queue = v7;

    [(NHSSRelevantWidgetDefaults *)v3 _observeChangesToRelevantWidgetDefaults];
  }

  return v3;
}

- (NSArray)relevantWidgets
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoHomeScreen.RelevantWidgetDefaults"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"relevantWidgets"];
    v16 = 0;
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:&v16];
    v6 = v16;
    [v5 setDecodingFailurePolicy:1];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v5 decodeObjectOfClasses:v9 forKey:*MEMORY[0x277CCA308]];
    v11 = v10;
    if (v6)
    {
      v12 = NHSSLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(NHSSRelevantWidgetDefaults *)v6 relevantWidgets];
      }
    }

    else
    {
      if (v10)
      {
        v13 = v10;
        goto LABEL_11;
      }

      v12 = NHSSLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B171000, v12, OS_LOG_TYPE_DEFAULT, "NHSSRelevantWidgetDefaults: Decoded nil object when expecting array. Returning empty array as fallback.", buf, 2u);
      }
    }

    v13 = MEMORY[0x277CBEBF8];
LABEL_11:

    goto LABEL_12;
  }

  v4 = NHSSLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(NHSSRelevantWidgetDefaults *)v4 relevantWidgets];
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_12:

  return v13;
}

- (void)setRelevantWidgets:(id)widgets
{
  widgetsCopy = widgets;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke;
  v7[3] = &unk_279932E90;
  v8 = widgetsCopy;
  selfCopy = self;
  v6 = widgetsCopy;
  dispatch_async(queue, v7);
}

void __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoHomeScreen.RelevantWidgetDefaults"];
  if (v2)
  {
    v4 = (a1 + 32);
    v3 = *(a1 + 32);
    v15 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v15];
    v6 = v15;
    if (!v6)
    {
      if ([v5 length] <= 0x3D090)
      {
        [v2 setObject:v5 forKey:@"relevantWidgets"];
        v9 = [v2 synchronize];
        v8 = objc_alloc_init(MEMORY[0x277D2BA60]);
        v10 = [MEMORY[0x277CBEB98] setWithObject:@"relevantWidgets"];
        [v8 synchronizeNanoDomain:@"com.apple.NanoHomeScreen.RelevantWidgetDefaults" keys:v10];
        [*(a1 + 40) relevantWidgetDefaultsDidChange];
      }

      else
      {
        v7 = NHSSLogDefault();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_cold_1(v5, v4, v7);
        }

        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_16;
        v11[3] = &unk_279932E68;
        v12 = v5;
        v14 = 250000;
        v13 = *v4;
        if (_NHSSRelevantWidgetDefaultsChangedNotificationName_block_invoke_onceToken != -1)
        {
          dispatch_once(&_NHSSRelevantWidgetDefaultsChangedNotificationName_block_invoke_onceToken, v11);
        }

        v8 = v12;
      }
    }
  }

  else
  {
    v6 = NHSSLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_cold_2(v6);
    }
  }
}

void __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_16(uint64_t a1)
{
  v2 = NHSSLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_16_cold_1(a1, v2);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_observeChangesToRelevantWidgetDefaults
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _NHSSRelevantWidgetDefaultsChangeHandler, @"com.apple.NanoHomeScreen.RelevantWidgetDefaultsChanged", self, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)relevantWidgetDefaultsDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NHSSRelevantWidgetDefaults_relevantWidgetDefaultsDidChange__block_invoke;
  block[3] = &unk_279932E40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_mainQueue_notifyObserversDefaultsDidChange
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = allObjects;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) relevantWidgetDefaultsDidChange];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)relevantWidgets
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_25B171000, a2, OS_LOG_TYPE_ERROR, "NHSSRelevantWidgetDefaults: Decoding error, returning empty array as fallback. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_cold_1(void *a1, uint64_t *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [a1 length];
  v6 = *a2;
  v8 = 134218498;
  v9 = v5;
  v10 = 2048;
  v11 = 250000;
  v12 = 2112;
  v13 = v6;
  _os_log_error_impl(&dword_25B171000, a3, OS_LOG_TYPE_ERROR, "NHSSRelevantWidgetDefaults: Data is %ld bytes, which is over threshold of %ld bytes. This shouldn't happen. relevantWidgets: %@", &v8, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_16_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) length];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = 134218498;
  v9 = v4;
  v10 = 2048;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  _os_log_fault_impl(&dword_25B171000, a2, OS_LOG_TYPE_FAULT, "NHSSRelevantWidgetDefaults: Data is %ld bytes, which is over threshold of %ld bytes. This shouldn't happen. relevantWidgets: %@", &v8, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

@end