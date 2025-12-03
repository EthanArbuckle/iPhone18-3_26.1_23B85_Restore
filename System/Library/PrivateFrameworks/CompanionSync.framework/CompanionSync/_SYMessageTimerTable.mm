@interface _SYMessageTimerTable
- (_SYMessageTimerTable)init;
- (_SYMessageTimerTable)initWithQueue:(id)queue timerCallback:(id)callback;
- (unint64_t)timerCount;
- (void)_cleanupTimerForSeqno:(unint64_t)seqno;
- (void)_fireCallbackForSeqno:(unint64_t)seqno;
- (void)addTimerWithFireDate:(id)date forSequenceNumber:(unint64_t)number;
- (void)cancelAllTimers;
- (void)cancelTimerForIdentifier:(id)identifier;
- (void)cancelTimerForSequenceNumber:(unint64_t)number;
- (void)dealloc;
- (void)setIdentifier:(id)identifier forSequenceNumber:(unint64_t)number;
@end

@implementation _SYMessageTimerTable

- (_SYMessageTimerTable)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Do not call -[%@ %@]", v7, v8}];

  return 0;
}

- (_SYMessageTimerTable)initWithQueue:(id)queue timerCallback:(id)callback
{
  queueCopy = queue;
  callbackCopy = callback;
  v22.receiver = self;
  v22.super_class = _SYMessageTimerTable;
  v9 = [(_SYMessageTimerTable *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = [callbackCopy copy];
    callback = v10->_callback;
    v10->_callback = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("_SYTimerMessageTable", v13);
    rwlock = v10->_rwlock;
    v10->_rwlock = v14;

    v16 = objc_opt_new();
    bySeqno = v10->_bySeqno;
    v10->_bySeqno = v16;

    v18 = objc_opt_new();
    byIdent = v10->_byIdent;
    v10->_byIdent = v18;

    v20 = v10;
  }

  return v10;
}

- (void)dealloc
{
  rwlock = self->_rwlock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31___SYMessageTimerTable_dealloc__block_invoke;
  block[3] = &unk_1E86C9FB0;
  block[4] = self;
  dispatch_barrier_sync(rwlock, block);
  v4.receiver = self;
  v4.super_class = _SYMessageTimerTable;
  [(_SYMessageTimerTable *)&v4 dealloc];
}

- (void)addTimerWithFireDate:(id)date forSequenceNumber:(unint64_t)number
{
  [date timeIntervalSinceNow];
  v7 = dispatch_walltime(0, (v6 * 1000000000.0));
  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __63___SYMessageTimerTable_addTimerWithFireDate_forSequenceNumber___block_invoke;
  handler[3] = &unk_1E86CB868;
  objc_copyWeak(v17, &location);
  v17[1] = number;
  dispatch_source_set_event_handler(v8, handler);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63___SYMessageTimerTable_addTimerWithFireDate_forSequenceNumber___block_invoke_2;
  v14[3] = &unk_1E86CB868;
  objc_copyWeak(v15, &location);
  v15[1] = number;
  dispatch_source_set_cancel_handler(v8, v14);
  dispatch_source_set_timer(v8, v7, 0xFFFFFFFFFFFFFFFFLL, 0x37E11D600uLL);
  rwlock = self->_rwlock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___SYMessageTimerTable_addTimerWithFireDate_forSequenceNumber___block_invoke_3;
  v11[3] = &unk_1E86CB890;
  v12 = v8;
  numberCopy = number;
  v11[4] = self;
  v10 = v8;
  dispatch_barrier_sync(rwlock, v11);
  dispatch_resume(v10);

  objc_destroyWeak(v15);
  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

- (void)_fireCallbackForSeqno:(unint64_t)seqno
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__14;
  v20 = __Block_byref_object_dispose__14;
  v21 = 0;
  rwlock = self->_rwlock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___SYMessageTimerTable__fireCallbackForSeqno___block_invoke;
  block[3] = &unk_1E86CB8B8;
  block[4] = self;
  block[5] = &v16;
  block[6] = seqno;
  dispatch_sync(rwlock, block);
  v6 = v17[5];
  if (v6 && !dispatch_source_testcancel(v17[5]))
  {
    v7 = objc_getAssociatedObject(v6, kTimerContextKey);
    callback = self->_callback;
    identifier = [v7 identifier];
    callback[2](callback, seqno, identifier);

    v10 = self->_rwlock;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46___SYMessageTimerTable__fireCallbackForSeqno___block_invoke_2;
    v12[3] = &unk_1E86CB890;
    v13 = v7;
    seqnoCopy = seqno;
    v12[4] = self;
    v11 = v7;
    dispatch_barrier_sync(v10, v12);
  }

  _Block_object_dispose(&v16, 8);
}

- (void)_cleanupTimerForSeqno:(unint64_t)seqno
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14;
  v14 = __Block_byref_object_dispose__14;
  v15 = 0;
  rwlock = self->_rwlock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___SYMessageTimerTable__cleanupTimerForSeqno___block_invoke;
  block[3] = &unk_1E86CB8B8;
  block[4] = self;
  block[5] = &v10;
  block[6] = seqno;
  dispatch_sync(rwlock, block);
  v6 = v11[5];
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = self->_rwlock;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46___SYMessageTimerTable__cleanupTimerForSeqno___block_invoke_2;
    v8[3] = &unk_1E86CB8E0;
    v8[5] = &v10;
    v8[6] = seqno;
    v8[4] = self;
    dispatch_barrier_sync(v7, v8);
  }

  _Block_object_dispose(&v10, 8);
}

- (void)setIdentifier:(id)identifier forSequenceNumber:(unint64_t)number
{
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__14;
  v24 = __Block_byref_object_dispose__14;
  v25 = 0;
  rwlock = self->_rwlock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56___SYMessageTimerTable_setIdentifier_forSequenceNumber___block_invoke;
  block[3] = &unk_1E86CB8B8;
  block[4] = self;
  block[5] = &v20;
  block[6] = number;
  dispatch_sync(rwlock, block);
  if (v21[5])
  {
    v8 = self->_rwlock;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __56___SYMessageTimerTable_setIdentifier_forSequenceNumber___block_invoke_2;
    v15 = &unk_1E86CB0E0;
    selfCopy = self;
    v9 = identifierCopy;
    v17 = v9;
    v18 = &v20;
    dispatch_barrier_sync(v8, &v12);
    v10 = objc_getAssociatedObject(v21[5], kTimerContextKey);
    v11 = v10;
    if (v10)
    {
      [v10 setIdentifier:{v9, v12, v13, v14, v15, selfCopy}];
    }

    else
    {
      v11 = objc_opt_new();
      [v11 setSeqno:{number, v12, v13, v14, v15, selfCopy}];
      [v11 setIdentifier:v9];
      objc_setAssociatedObject(v21[5], kTimerContextKey, v11, 1);
    }
  }

  _Block_object_dispose(&v20, 8);
}

- (void)cancelTimerForSequenceNumber:(unint64_t)number
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  rwlock = self->_rwlock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___SYMessageTimerTable_cancelTimerForSequenceNumber___block_invoke;
  block[3] = &unk_1E86CB8B8;
  block[4] = self;
  block[5] = &v6;
  block[6] = number;
  dispatch_sync(rwlock, block);
  v4 = v7[5];
  if (v4)
  {
    dispatch_source_cancel(v4);
  }

  _Block_object_dispose(&v6, 8);
}

- (void)cancelTimerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = 0;
  rwlock = self->_rwlock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___SYMessageTimerTable_cancelTimerForIdentifier___block_invoke;
  block[3] = &unk_1E86CB908;
  v10 = &v11;
  block[4] = self;
  v6 = identifierCopy;
  v9 = v6;
  dispatch_sync(rwlock, block);
  v7 = v12[5];
  if (v7)
  {
    dispatch_source_cancel(v7);
  }

  _Block_object_dispose(&v11, 8);
}

- (void)cancelAllTimers
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_bySeqno allValues];
  v3 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        dispatch_source_cancel(*(*(&v8 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (unint64_t)timerCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rwlock = self->_rwlock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34___SYMessageTimerTable_timerCount__block_invoke;
  v5[3] = &unk_1E86C9FD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rwlock, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end