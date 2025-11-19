@interface CMContinuityCaptureEventQueue
- (CMContinuityCaptureEventQueue)initWithActionDelegate:(id)a3 queue:(id)a4;
- (void)_dropStreamStartEventsForEntityIfApplicable;
- (void)_notifyCompletion;
- (void)enqueueEventAction:(unint64_t)a3 args:(id)a4;
- (void)notifyCompletion;
- (void)notifyCompletionForIdentifier:(id)a3;
- (void)setEventCompletionExpectationForIdentifiers:(id)a3;
@end

@implementation CMContinuityCaptureEventQueue

- (void)enqueueEventAction:(unint64_t)a3 args:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CMContinuityCaptureEventQueue_enqueueEventAction_args___block_invoke;
  block[3] = &unk_278D5CFF8;
  objc_copyWeak(v12, &location);
  v12[1] = a3;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(queue, block);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __57__CMContinuityCaptureEventQueue_enqueueEventAction_args___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 48));
      v5 = *(a1 + 56);
      v6 = *(a1 + 32);
      v7 = [WeakRetained[3] count];
      *buf = 138413058;
      v15 = v4;
      v16 = 1024;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ enqueueEventAction %d %@ pendingActionCount %ld", buf, 0x26u);
    }

    v8 = objc_loadWeakRetained(WeakRetained + 1);
    v9 = WeakRetained[3];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{*(a1 + 56), @"ContinuityCaptureSelector"}];
    v12[1] = @"ContinuityCaptureArgs";
    v13[0] = v10;
    v13[1] = *(a1 + 32);
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    [v9 addObject:v11];

    if ([WeakRetained[3] count] == 1 && (objc_msgSend(v8, "postEventAction:args:", *(a1 + 56), *(a1 + 32)) & 1) == 0)
    {
      [*(a1 + 40) notifyCompletion];
    }
  }

  else
  {
    v8 = 0;
  }
}

- (void)setEventCompletionExpectationForIdentifiers:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CMContinuityCaptureEventQueue_setEventCompletionExpectationForIdentifiers___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __77__CMContinuityCaptureEventQueue_setEventCompletionExpectationForIdentifiers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:*(a1 + 32)];
    v4 = v5[4];
    v5[4] = v3;

    WeakRetained = v5;
  }
}

- (void)notifyCompletionForIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CMContinuityCaptureEventQueue_notifyCompletionForIdentifier___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__CMContinuityCaptureEventQueue_notifyCompletionForIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (CMContinityCaptureDebugLogEnabled())
    {
      v3 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v6 = objc_loadWeakRetained((a1 + 40));
        v7 = *(a1 + 32);
        v8 = *(WeakRetained + 4);
        v9 = *(WeakRetained + 5);
        v10 = 138413058;
        v11 = v6;
        v12 = 2114;
        v13 = v7;
        v14 = 2114;
        v15 = v8;
        v16 = 2114;
        v17 = v9;
        _os_log_debug_impl(&dword_242545000, v3, OS_LOG_TYPE_DEBUG, "%@ notify completion for identifier %{public}@ expected %{public}@ completed %{public}@", &v10, 0x2Au);
      }
    }

    [*(WeakRetained + 5) addObject:*(a1 + 32)];
    v4 = *(WeakRetained + 4);
    if (v4 && [v4 isEqualToSet:*(WeakRetained + 5)])
    {
      [*(WeakRetained + 5) removeAllObjects];
      v5 = *(WeakRetained + 4);
      *(WeakRetained + 4) = 0;

      [WeakRetained _notifyCompletion];
    }
  }
}

- (void)notifyCompletion
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__CMContinuityCaptureEventQueue_notifyCompletion__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __49__CMContinuityCaptureEventQueue_notifyCompletion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyCompletion];
}

- (void)_dropStreamStartEventsForEntityIfApplicable
{
  if (![(NSMutableArray *)self->_eventQueue count])
  {
    return;
  }

  v3 = [(NSMutableArray *)self->_eventQueue firstObject];
  v4 = [v3 objectForKeyedSubscript:@"ContinuityCaptureArgs"];

  if (!v4 || [v4 count] < 3)
  {
    goto LABEL_33;
  }

  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v4 objectAtIndexedSubscript:1];
  v7 = [v4 objectAtIndexedSubscript:2];
  v8 = @"kCMContinuityCaptureEventStartStream";
  if (![v5 isEqualToString:@"kCMContinuityCaptureEventStartStream"] || -[NSMutableArray count](self->_eventQueue, "count") < 2)
  {
    goto LABEL_32;
  }

  v31 = v7;
  v32 = v5;
  v33 = 0;
  v9 = 1;
  do
  {
    v10 = [(NSMutableArray *)self->_eventQueue objectAtIndexedSubscript:v9];
    v11 = [v10 objectForKeyedSubscript:@"ContinuityCaptureSelector"];

    if (v11)
    {
      v12 = [(NSMutableArray *)self->_eventQueue objectAtIndexedSubscript:v9];
      v13 = [v12 objectForKeyedSubscript:@"ContinuityCaptureSelector"];
      v14 = [v13 unsignedIntValue];

      if (v14 == 3)
      {
        v15 = [(NSMutableArray *)self->_eventQueue objectAtIndexedSubscript:v9];
        v16 = [v15 objectForKeyedSubscript:@"ContinuityCaptureArgs"];

        if (!v16 || [v16 count] < 3)
        {
          goto LABEL_23;
        }

        v17 = [v16 objectAtIndexedSubscript:0];
        v18 = [v16 objectAtIndexedSubscript:1];
        if ([v17 isEqualToString:@"kCMContinuityCaptureEventStopStream"] && (v19 = objc_msgSend(v18, "unsignedIntValue"), v19 == objc_msgSend(v6, "unsignedIntValue")))
        {
          v20 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [(NSMutableArray *)self->_eventQueue objectAtIndexedSubscript:v9];
            v34 = v29 = v8;
            v21 = [(NSMutableArray *)self->_eventQueue firstObject];
            *buf = 138412802;
            v37 = self;
            v38 = 2112;
            v39 = v34;
            v40 = 2112;
            v41 = v21;
            v22 = v21;
            _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%@ Associated stop %@ for %@", buf, 0x20u);

            v8 = v29;
          }

          v33 = 1;
        }

        else
        {
          if (![v17 isEqualToString:v8])
          {
            goto LABEL_22;
          }

          v23 = [v18 unsignedIntValue];
          if (v23 != [v6 unsignedIntValue])
          {
            goto LABEL_22;
          }

          v20 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [(NSMutableArray *)self->_eventQueue objectAtIndexedSubscript:v9];
            v30 = [(NSMutableArray *)self->_eventQueue firstObject];
            *buf = 138412802;
            v37 = self;
            v38 = 2112;
            v39 = v35;
            v40 = 2112;
            v41 = v30;
            _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%@ Associated start %@ for %@", buf, 0x20u);
          }

          v33 = 0;
        }

LABEL_22:
LABEL_23:
      }
    }

    ++v9;
  }

  while ([(NSMutableArray *)self->_eventQueue count]> v9);
  v7 = v31;
  v5 = v32;
  if (v33)
  {
    v24 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(NSMutableArray *)self->_eventQueue firstObject];
      *buf = 138412546;
      v37 = self;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&dword_242545000, v24, OS_LOG_TYPE_DEFAULT, "%@ Dropping %@", buf, 0x16u);
    }

    if (v31)
    {
      v26 = [v31 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataCompletionBlock"];

      if (v26)
      {
        v27 = [v31 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataCompletionBlock"];
        v28 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
        (v27)[2](v27, v28);
      }
    }

    [(NSMutableArray *)self->_eventQueue removeObjectAtIndex:0];
  }

LABEL_32:

LABEL_33:
}

- (void)_notifyCompletion
{
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_242545000, log, OS_LOG_TYPE_DEBUG, "%@ pendingActions %@", &v4, 0x16u);
}

- (CMContinuityCaptureEventQueue)initWithActionDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CMContinuityCaptureEventQueue;
  v8 = [(CMContinuityCaptureEventQueue *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_queue, a4);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    eventQueue = v9->_eventQueue;
    v9->_eventQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    completedIdentifiers = v9->_completedIdentifiers;
    v9->_completedIdentifiers = v12;

    v14 = v9;
  }

  return v9;
}

@end