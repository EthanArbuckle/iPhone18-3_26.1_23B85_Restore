@interface ULCoreDuetPublisher
+ (void)clearMicroLocationVisitStream;
+ (void)saveEventForDebugInitialBringUp;
+ (void)saveEventsToDuetStream:(id)stream;
@end

@implementation ULCoreDuetPublisher

+ (void)saveEventsToDuetStream:(id)stream
{
  streamCopy = stream;
  if ([streamCopy count])
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.milod.ULCoreDuetPublisher.saveEventsToDuetStream", v4);

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__ULCoreDuetPublisher_saveEventsToDuetStream___block_invoke;
    block[3] = &unk_2798D41D8;
    v7 = streamCopy;
    dispatch_async(v5, block);
  }
}

void __46__ULCoreDuetPublisher_saveEventsToDuetStream___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFE208] knowledgeStore];
  v3 = *(a1 + 32);
  v17 = 0;
  v4 = [v2 saveObjects:v3 error:&v17];
  v5 = v17;

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __46__ULCoreDuetPublisher_saveEventsToDuetStream___block_invoke_cold_1();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x277CCABB0];
      v13 = *(a1 + 32);
      v14 = v11;
      v15 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "Saved %@ events", buf, 0xCu);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __46__ULCoreDuetPublisher_saveEventsToDuetStream___block_invoke_cold_1();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = v7;
      v10 = [v8 numberWithBool:v4];
      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "Couldnt save events, res: %@, error: %@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)clearMicroLocationVisitStream
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("com.apple.milod.ULCoreDuetPublisher.clearMicroLocationVisitStream", v2);

  dispatch_async(queue, &__block_literal_global_157);
}

void __52__ULCoreDuetPublisher_clearMicroLocationVisitStream__block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CFE208] knowledgeStore];
  v1 = [MEMORY[0x277CFE298] microLocationVisitStream];
  v10 = 0;
  v2 = [v0 deleteAllEventsInEventStream:v1 error:&v10];
  v3 = v10;

  if (v3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __46__ULCoreDuetPublisher_saveEventsToDuetStream___block_invoke_cold_1();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_ERROR, "Couldnt delete all events from microLocationVisitStream, error: %@", buf, 0xCu);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __46__ULCoreDuetPublisher_saveEventsToDuetStream___block_invoke_cold_1();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v5;
      v8 = [v6 numberWithUnsignedInteger:v2];
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "Deleted: %@ events", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)saveEventForDebugInitialBringUp
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CFE1D8];
  microLocationVisitStream = [MEMORY[0x277CFE298] microLocationVisitStream];
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [v6 dateByAddingTimeInterval:1000.0];
  v8 = MEMORY[0x277CFE2B8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v10 = [v8 withUUID:uUID];
  v11 = [v3 eventWithStream:microLocationVisitStream startDate:v5 endDate:v7 value:v10];

  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [self saveEventsToDuetStream:v12];

  v13 = *MEMORY[0x277D85DE8];
}

@end