@interface ATXWidgetLocationAuthorizationTracker
- (ATXWidgetLocationAuthorizationTracker)initWithExtensionBundleIdentifier:(id)a3 containerBundleIdentifier:(id)a4;
- (BOOL)isContainerAuthorizedForWidgetUpdates;
- (BOOL)widgetWantsLocation;
- (void)isContainerAuthorizedForWidgetUpdates;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)widgetWantsLocation;
@end

@implementation ATXWidgetLocationAuthorizationTracker

- (ATXWidgetLocationAuthorizationTracker)initWithExtensionBundleIdentifier:(id)a3 containerBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = ATXWidgetLocationAuthorizationTracker;
  v8 = [(ATXWidgetLocationAuthorizationTracker *)&v20 init];
  if (v8)
  {
    v9 = [v6 copy];
    extensionBundleIdentifier = v8->_extensionBundleIdentifier;
    v8->_extensionBundleIdentifier = v9;

    v11 = [v7 copy];
    containerBundleIdentifier = v8->_containerBundleIdentifier;
    v8->_containerBundleIdentifier = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v15, v16);
    queue = v8->_queue;
    v8->_queue = v17;
  }

  return v8;
}

- (BOOL)isContainerAuthorizedForWidgetUpdates
{
  p_containerBundleIdentifier = &self->_containerBundleIdentifier;
  if (self->_containerBundleIdentifier)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__ATXWidgetLocationAuthorizationTracker_isContainerAuthorizedForWidgetUpdates__block_invoke;
    block[3] = &unk_278E08D40;
    block[4] = self;
    block[5] = &v13;
    dispatch_sync(queue, block);
    v5 = v14[5];
    if (v5)
    {
      v6 = [v5 BOOLValue];
    }

    else
    {
      if ([MEMORY[0x277D425A0] waitForSemaphore:self->_sem timeoutSeconds:1.0] == 1)
      {
        v8 = __atxlog_handle_default();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(ATXWidgetLocationAuthorizationTracker *)p_containerBundleIdentifier isContainerAuthorizedForWidgetUpdates];
        }

        v7 = 0;
        goto LABEL_11;
      }

      v9 = self->_queue;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __78__ATXWidgetLocationAuthorizationTracker_isContainerAuthorizedForWidgetUpdates__block_invoke_21;
      v11[3] = &unk_278E08D68;
      v11[4] = self;
      v11[5] = &v13;
      dispatch_sync(v9, v11);
      v6 = [v14[5] BOOLValue];
    }

    v7 = v6;
LABEL_11:
    _Block_object_dispose(&v13, 8);

    return v7;
  }

  return 1;
}

uint64_t __78__ATXWidgetLocationAuthorizationTracker_isContainerAuthorizedForWidgetUpdates__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = *(*(result + 40) + 8);
    v5 = v3;
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
  }

  else
  {
    if (*(v2 + 48))
    {
      return result;
    }

    v7 = dispatch_semaphore_create(0);
    v8 = *(v1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [objc_alloc(MEMORY[0x277CBFC10]) initWithEffectiveBundleIdentifier:*(*(v1 + 32) + 16) delegate:*(v1 + 32) onQueue:*(*(v1 + 32) + 24)];
    v11 = *(v1 + 32);
    v12 = *(v11 + 48);
    *(v11 + 48) = v10;
  }

  return MEMORY[0x2821F96F8]();
}

- (BOOL)widgetWantsLocation
{
  p_extensionBundleIdentifier = &self->_extensionBundleIdentifier;
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  if (ATXBundleIdIsSpecialWidgetExtensionBundleId())
  {
    return 0;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CC1E50]);
  v7 = *p_extensionBundleIdentifier;
  v13 = 0;
  v8 = [v6 initWithBundleIdentifier:v7 error:&v13];
  v9 = v13;
  objc_autoreleasePoolPop(v5);
  if (v9)
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXWidgetLocationAuthorizationTracker *)p_extensionBundleIdentifier widgetWantsLocation];
    }

    v4 = 0;
  }

  else
  {
    v10 = [v8 infoDictionary];
    v11 = [v10 objectForKey:@"NSWidgetWantsLocation" ofClass:objc_opt_class()];
    v4 = [v11 BOOLValue];
  }

  return v4;
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = MEMORY[0x277CCABB0];
  v7 = [v5 isAuthorizedForWidgetUpdates];

  v8 = [v6 numberWithBool:v7];
  queue_authorizedForWidgetUpdates = self->_queue_authorizedForWidgetUpdates;
  self->_queue_authorizedForWidgetUpdates = v8;

  sem = self->_sem;

  dispatch_semaphore_signal(sem);
}

- (void)isContainerAuthorizedForWidgetUpdates
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 136315394;
  v5 = "[ATXWidgetLocationAuthorizationTracker isContainerAuthorizedForWidgetUpdates]";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_244192000, a2, OS_LOG_TYPE_ERROR, "%s: Timed out waiting for location auth delegate callback for bundle id: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)widgetWantsLocation
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_244192000, a2, OS_LOG_TYPE_ERROR, "ATXWidgetLocationAuthorizationTracker: could not access LSApplicationExtensionRecord for extension bundle id %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end