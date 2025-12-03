@interface ULBiomePublisher
+ (void)_saveEventsWithSource:(id)source events:(id)events;
+ (void)cleanup;
+ (void)saveEventForDebugInitialBringUp;
+ (void)saveMicroLocationLocalizationEvents:(id)events;
+ (void)saveMicroLocationVisitEvents:(id)events;
@end

@implementation ULBiomePublisher

+ (void)saveMicroLocationLocalizationEvents:(id)events
{
  eventsCopy = events;
  if (!gLocalizationSource)
  {
    v4 = BiomeLibrary();
    location = [v4 Location];
    microLocation = [location MicroLocation];
    localization = [microLocation Localization];
    source = [localization source];
    v9 = gLocalizationSource;
    gLocalizationSource = source;
  }

  [self _saveEventsWithSource:? events:?];
}

+ (void)saveMicroLocationVisitEvents:(id)events
{
  eventsCopy = events;
  if (!gVisitSource)
  {
    v4 = BiomeLibrary();
    location = [v4 Location];
    microLocationVisit = [location MicroLocationVisit];
    source = [microLocationVisit source];
    v8 = gVisitSource;
    gVisitSource = source;
  }

  [self _saveEventsWithSource:? events:?];
}

+ (void)saveEventForDebugInitialBringUp
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CF1350]);
  v4 = [MEMORY[0x277CBEAA8] now];
  array = [MEMORY[0x277CBEA60] array];
  array2 = [MEMORY[0x277CBEA60] array];
  v7 = [v3 initWithAbsoluteTimeStamp:v4 clientBundleID:@"com.apple.milod" maxProbabilityLabel:0 maxProbability:0 probabilityVector:array numDevicesVector:array2];

  v16[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [self saveMicroLocationLocalizationEvents:v8];

  v9 = objc_alloc(MEMORY[0x277CF12A8]);
  array3 = [MEMORY[0x277CBEA60] array];
  array4 = [MEMORY[0x277CBEA60] array];
  v12 = [v9 initWithDomain:0 maxProbabilityMicroLocationIdentifier:@"com.apple.milod" maxProbability:0 probabilityVector:array3 isStable:0 numDevicesVector:array4];

  v15 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [self saveMicroLocationVisitEvents:v13];

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_saveEventsWithSource:(id)source events:(id)events
{
  v21 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__ULBiomePublisher__saveEventsWithSource_events___block_invoke;
    v15[3] = &unk_2798D5610;
    v16 = sourceCopy;
    [eventsCopy enumerateObjectsUsingBlock:v15];
    if (onceToken_MicroLocation_Default != -1)
    {
      +[ULBiomePublisher _saveEventsWithSource:events:];
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = v7;
      v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(eventsCopy, "count")}];
      firstObject = [eventsCopy firstObject];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "Send %@ events of type %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)cleanup
{
  v2 = gLocalizationSource;
  gLocalizationSource = 0;

  v3 = gVisitSource;
  gVisitSource = 0;

  if (onceToken_MicroLocation_Default != -1)
  {
    +[ULBiomePublisher cleanup];
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "ULBiomePublisher resources cleaned up", v5, 2u);
  }
}

@end