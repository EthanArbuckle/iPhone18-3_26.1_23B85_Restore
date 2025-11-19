@interface CSFVoiceTriggerEventInfoSelfLoggerDarwin
- (CSFVoiceTriggerEventInfoSelfLoggerDarwin)init;
- (void)fetchAndClearCachedVoiceTriggerEventsWithCompletion:(id)a3;
- (void)logCancelledEventWithMHUUID:(id)a3;
- (void)logRejectEventWithVTEI:(id)a3 withMHUUID:(id)a4 withSecondPassResult:(unint64_t)a5;
- (void)logStartEventWithFirstPassStartedInfo:(id)a3 withMHUUID:(id)a4;
@end

@implementation CSFVoiceTriggerEventInfoSelfLoggerDarwin

- (void)logCancelledEventWithMHUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__CSFVoiceTriggerEventInfoSelfLoggerDarwin_logCancelledEventWithMHUUID___block_invoke;
    v7[3] = &unk_1E865C970;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __72__CSFVoiceTriggerEventInfoSelfLoggerDarwin_logCancelledEventWithMHUUID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) cancelledEvents];
  v2 = [*(a1 + 40) UUIDString];
  [v3 addEventToCacheBuffer:v2];
}

- (void)logRejectEventWithVTEI:(id)a3 withMHUUID:(id)a4 withSecondPassResult:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __99__CSFVoiceTriggerEventInfoSelfLoggerDarwin_logRejectEventWithVTEI_withMHUUID_withSecondPassResult___block_invoke;
    v12[3] = &unk_1E865C7A8;
    v13 = v8;
    v15 = self;
    v16 = a5;
    v14 = v10;
    dispatch_async(queue, v12);
  }
}

void __99__CSFVoiceTriggerEventInfoSelfLoggerDarwin_logRejectEventWithVTEI_withMHUUID_withSecondPassResult___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) mutableCopy];
  v2 = [*(a1 + 40) UUIDString];
  [v5 setValue:v2 forKey:@"kCSFSelfLoggingMHUUID"];

  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  [v5 setValue:v3 forKey:@"kCSFSelfLoggingSecondPassResult"];

  v4 = [*(a1 + 48) rejectEvents];
  [v4 addEventToCacheBuffer:v5];
}

- (void)logStartEventWithFirstPassStartedInfo:(id)a3 withMHUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__CSFVoiceTriggerEventInfoSelfLoggerDarwin_logStartEventWithFirstPassStartedInfo_withMHUUID___block_invoke;
    block[3] = &unk_1E865C778;
    v11 = v6;
    v12 = v8;
    v13 = self;
    dispatch_async(queue, block);
  }
}

void __93__CSFVoiceTriggerEventInfoSelfLoggerDarwin_logStartEventWithFirstPassStartedInfo_withMHUUID___block_invoke(id *a1)
{
  v4 = [a1[4] mutableCopy];
  v2 = [a1[5] UUIDString];
  [v4 setValue:v2 forKey:@"kCSFSelfLoggingMHUUID"];

  v3 = [a1[6] firstPassEvents];
  [v3 addEventToCacheBuffer:v4];
}

- (void)fetchAndClearCachedVoiceTriggerEventsWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__CSFVoiceTriggerEventInfoSelfLoggerDarwin_fetchAndClearCachedVoiceTriggerEventsWithCompletion___block_invoke;
  v7[3] = &unk_1E865CB90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __96__CSFVoiceTriggerEventInfoSelfLoggerDarwin_fetchAndClearCachedVoiceTriggerEventsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) firstPassEvents];
    v4 = [v3 eventsArray];
    v5 = [*(a1 + 32) rejectEvents];
    v6 = [v5 eventsArray];
    v7 = [*(a1 + 32) cancelledEvents];
    v8 = [v7 eventsArray];
    (*(v2 + 16))(v2, v4, v6, v8);
  }

  v9 = [*(a1 + 32) firstPassEvents];
  [v9 clearBuffer];

  v10 = [*(a1 + 32) rejectEvents];
  [v10 clearBuffer];

  v11 = [*(a1 + 32) cancelledEvents];
  [v11 clearBuffer];
}

- (CSFVoiceTriggerEventInfoSelfLoggerDarwin)init
{
  if (+[CSUtils isDarwinOS])
  {
    v15.receiver = self;
    v15.super_class = CSFVoiceTriggerEventInfoSelfLoggerDarwin;
    v3 = [(CSFVoiceTriggerEventInfoSelfLoggerDarwin *)&v15 init];
    if (v3)
    {
      v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -2);
      v5 = dispatch_queue_create("CSFVoiceTriggerEventInfoSelfLoggerDarwin Queue", v4);
      queue = v3->_queue;
      v3->_queue = v5;

      v7 = objc_alloc_init(CSFCircularEventsCacheBuffer);
      firstPassEvents = v3->_firstPassEvents;
      v3->_firstPassEvents = v7;

      v9 = objc_alloc_init(CSFCircularEventsCacheBuffer);
      rejectEvents = v3->_rejectEvents;
      v3->_rejectEvents = v9;

      v11 = objc_alloc_init(CSFCircularEventsCacheBuffer);
      cancelledEvents = v3->_cancelledEvents;
      v3->_cancelledEvents = v11;
    }

    self = v3;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end