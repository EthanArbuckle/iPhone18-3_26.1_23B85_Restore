@interface BiometricKitEventLogger
+ (id)logger;
- (BiometricKitEventLogger)init;
- (void)appendEvent:(id)a3;
- (void)appendEventValue:(unsigned int)a3 isMetadata:(BOOL)a4;
- (void)flushEvents;
- (void)logDeviceMetadata;
- (void)logEventOrCode:(unint64_t)a3;
- (void)logSmartKeyboardStatus;
@end

@implementation BiometricKitEventLogger

+ (id)logger
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__BiometricKitEventLogger_logger__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (logger_once != -1)
  {
    dispatch_once(&logger_once, block);
  }

  v2 = logger_sharedInstance;

  return v2;
}

- (void)logDeviceMetadata
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = *MEMORY[0x277CD2898];
  v4 = IOServiceMatching("ApplePearlSEPDriver");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  if (MatchingService)
  {
    v6 = MatchingService;
    v7 = *MEMORY[0x277CBECE8];
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"CombinedSequenceEnabled", *MEMORY[0x277CBECE8], 0);
    v8 = IORegistryEntryCreateCFProperty(v6, @"CombinedSequenceAutoSet", v7, 0);
    if (CFProperty)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = [v8 BOOLValue];
      v11 = [CFProperty BOOLValue];
      if (v11)
      {
        v12 = 524290;
      }

      else
      {
        v12 = 524291;
      }

      v13 = 0x80000;
      if (!v11)
      {
        v13 = 524289;
      }

      if (v10)
      {
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }

      v15 = [[BKEvent alloc] initWithEventOrCode:v14];
      [(BiometricKitEventLogger *)self appendEvent:v15];

      [(BiometricKitEventLogger *)self logSmartKeyboardStatus];
    }

    IOObjectRelease(v6);
  }
}

- (void)logSmartKeyboardStatus
{
  if (self->_lastSmartKeyboardEvent)
  {
    [(BiometricKitEventLogger *)self appendEvent:?];
  }
}

void __33__BiometricKitEventLogger_logger__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.BiometricKit", "BKEventLogging");
  v3 = OSLogHandle;
  OSLogHandle = v2;

  v4 = OSLogHandle;
  if (!OSLogHandle)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __33__BiometricKitEventLogger_logger__block_invoke_cold_1();
    }

    v4 = OSLogHandle;
  }

  objc_storeStrong(&OSLogTraceHandle, v4);
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___BiometricKitEventLogger;
  v5 = [objc_msgSendSuper2(&v7 allocWithZone_];
  v6 = logger_sharedInstance;
  logger_sharedInstance = v5;
}

- (BiometricKitEventLogger)init
{
  v11.receiver = self;
  v11.super_class = BiometricKitEventLogger;
  v2 = [(BiometricKitEventLogger *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.BiometricKitEventLogger.dispatch", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 1));
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = *(v2 + 2);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __31__BiometricKitEventLogger_init__block_invoke;
    handler[3] = &unk_2784FA338;
    v10 = v2;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(*(v2 + 2));
  }

  return v2;
}

- (void)appendEventValue:(unsigned int)a3 isMetadata:(BOOL)a4
{
  dispatch_assert_queue_V2(self->_queue);
  eventListLength = self->_eventListLength;
  if (eventListLength)
  {
    if (eventListLength != 200)
    {
      goto LABEL_6;
    }

    eventList = self->_eventList;
    v9 = self->_eventList[199];
    self->_eventList[199] = 1;
    [(BiometricKitEventLogger *)self flushEvents];
    v10 = self->_eventListLength;
    self->_eventListLength = v10 + 1;
    eventList[v10] = 1;
    v11 = self->_eventListLength;
    self->_eventListLength = v11 + 1;
    eventList[v11] = v9;
  }

  if (!a4)
  {
    [(BiometricKitEventLogger *)self logDeviceMetadata];
  }

LABEL_6:
  v12 = self->_eventListLength;
  self->_eventListLength = v12 + 1;
  self->_eventList[v12] = a3;
}

- (void)appendEvent:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v7 = 0;
  [v4 encodeEventValue:&v7 + 4 secondValue:&v7];
  -[BiometricKitEventLogger appendEventValue:isMetadata:](self, "appendEventValue:isMetadata:", HIDWORD(v7), [v4 isMetadata]);
  if (v7)
  {
    -[BiometricKitEventLogger appendEventValue:isMetadata:](self, "appendEventValue:isMetadata:", v7, [v4 isMetadata]);
  }

  if (OSLogHandle)
  {
    v5 = OSLogHandle;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "BKLogEvent: %@\n", buf, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventOrCode:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__BiometricKitEventLogger_logEventOrCode___block_invoke;
  v4[3] = &unk_2784FA468;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

void __42__BiometricKitEventLogger_logEventOrCode___block_invoke(uint64_t a1)
{
  obj = [[BKEvent alloc] initWithEventOrCode:*(a1 + 40)];
  if ([(BKEvent *)obj isStart])
  {
    *(*(a1 + 32) + 829) = 1;
  }

  if ([(BKEvent *)obj isSmartKeyboard])
  {
    objc_storeStrong((*(a1 + 32) + 832), obj);
  }

  [*(a1 + 32) appendEvent:obj];
  v2 = [(BKEvent *)obj isTerminal];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(v3 + 16);
    v5 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    *(*(a1 + 32) + 828) = 1;
  }

  else if ((*(v3 + 828) & 1) == 0)
  {
    v6 = *(v3 + 16);
    v7 = dispatch_time(0, 90000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)flushEvents
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_eventListLength)
  {
LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  startEventFound = self->_startEventFound;
  v4 = MEMORY[0x277D86220];
  if (OSLogHandle)
  {
    v5 = OSLogHandle;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (!startEventFound)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "BKLogEvent: not flushing events since no operation was created\n", buf, 2u);
    }

    goto LABEL_21;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "BKLogEvent: flushing events\n", buf, 2u);
  }

  v7 = objc_alloc_init(NSClassFromString(&cfstr_Awdbiometricki.isa));
  if (self->_eventListLength >= 1)
  {
    v9 = 0;
    eventList = self->_eventList;
    *&v8 = 67109378;
    v17 = v8;
    do
    {
      if (OSLogHandle)
      {
        v11 = OSLogHandle;
      }

      else
      {
        v11 = v4;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = v11;
        v13 = [[BKEvent alloc] initWithEncodedEventOrCode:eventList[v9]];
        *buf = v17;
        v19 = v9;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEBUG, "BKLogEvent flush %3d: %@\n\n", buf, 0x12u);
      }

      [v7 addEvent:{eventList[v9++], v17}];
    }

    while (v9 < self->_eventListLength);
  }

  if (MEMORY[0x282238418] && v7)
  {
    AWDPostMetric();
    v14 = MEMORY[0x277CF1C18];
    v15 = [v7 dictionaryRepresentation];
    [v14 analyticsOSLogNSDictionary:v15 forEvent:@"biometricKitLogEvent"];
  }

LABEL_22:
  self->_eventListLength = 0;
  *&self->_terminalFlushPending = 0;

  v16 = *MEMORY[0x277D85DE8];
}

@end