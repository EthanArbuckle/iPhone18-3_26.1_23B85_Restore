@interface IMIndexThrottleMonitor
+ (NSDate)dateOfThrottlingCompletion;
+ (id)defaults;
+ (int64_t)lastThrottleState;
+ (void)setLastThrottleState:(int64_t)state;
+ (void)setThrottles:(id)throttles;
- (IMIndexThrottleMonitor)initWithChangeHandler:(id)handler;
- (void)__unlocked_cancel;
- (void)__unlocked_reload;
- (void)cancel;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reload;
@end

@implementation IMIndexThrottleMonitor

+ (id)defaults
{
  if (qword_1EDBE5E98 != -1)
  {
    sub_1B7CFB874();
  }

  v3 = qword_1EDBE5E90;

  return v3;
}

+ (int64_t)lastThrottleState
{
  v3 = objc_msgSend_defaults(self, a2, v2);
  v5 = objc_msgSend_integerForKey_(v3, v4, @"IMDIndexingLastThrottleState");

  return v5;
}

+ (void)setLastThrottleState:(int64_t)state
{
  v5 = objc_msgSend_defaults(self, a2, state);
  objc_msgSend_setInteger_forKey_(v5, v4, state, @"IMDIndexingLastThrottleState");
}

+ (void)setThrottles:(id)throttles
{
  throttlesCopy = throttles;
  if (objc_msgSend_count(throttlesCopy, v3, v4))
  {
    v7 = objc_msgSend_copy(throttlesCopy, v5, v6);
    IMSetDomainValueForKey();
  }

  else
  {
    IMSetDomainValueForKey();
  }
}

+ (NSDate)dateOfThrottlingCompletion
{
  if (objc_msgSend_isThrottled(self, a2, v2))
  {
    v6 = objc_msgSend_throttles(self, v4, v5);
    v9 = objc_msgSend_allValues(v6, v7, v8);
    v11 = objc_msgSend_sortedArrayUsingSelector_(v9, v10, sel_compare_);
    v14 = objc_msgSend_lastObject(v11, v12, v13);

    v17 = objc_msgSend_date(MEMORY[0x1E695DF00], v15, v16);
    objc_msgSend_timeIntervalSinceDate_(v14, v18, v17);
    v20 = v19;

    if (v20 <= 0.0)
    {
      v21 = 0;
    }

    else
    {
      v21 = v14;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (IMIndexThrottleMonitor)initWithChangeHandler:(id)handler
{
  handlerCopy = handler;
  v34.receiver = self;
  v34.super_class = IMIndexThrottleMonitor;
  v5 = [(IMIndexThrottleMonitor *)&v34 init];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    changeHandler = v5->_changeHandler;
    v5->_changeHandler = v6;

    if (handlerCopy)
    {
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("com.apple.IMIndexThrottleMonitor", v8);
      queue = v5->_queue;
      v5->_queue = v9;

      v11 = MEMORY[0x1E696AD98];
      isThrottled = objc_msgSend_isThrottled(IMIndexThrottleMonitor, v12, v13);
      v16 = objc_msgSend_numberWithBool_(v11, v15, isThrottled);
      lastState = v5->_lastState;
      v5->_lastState = v16;

      v20 = objc_msgSend_defaults(IMIndexThrottleMonitor, v18, v19);
      objc_msgSend_addObserver_forKeyPath_options_context_(v20, v21, v5, @"IMDIndexingLastThrottleState", 1, 0);

      v24 = objc_msgSend_defaults(IMIndexThrottleMonitor, v22, v23);
      objc_msgSend_addObserver_forKeyPath_options_context_(v24, v25, v5, @"IMDIndexingThrottles", 1, 0);

      v28 = objc_msgSend_defaults(IMIndexThrottleMonitor, v26, v27);
      v31 = objc_msgSend__ignoreThrottlingKey(MEMORY[0x1E69A7FF8], v29, v30);
      objc_msgSend_addObserver_forKeyPath_options_context_(v28, v32, v5, v31, 1, 0);
    }
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if ((objc_msgSend_isEqualToString_(pathCopy, v7, @"IMDIndexingLastThrottleState") & 1) != 0 || (objc_msgSend_isEqualToString_(pathCopy, v8, @"IMDIndexingThrottles") & 1) != 0 || (objc_msgSend__ignoreThrottlingKey(MEMORY[0x1E69A7FF8], v8, v9), v10 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(pathCopy, v11, v10), v10, isEqualToString))
  {
    objc_msgSend_reload(self, v8, v9);
  }
}

- (void)reload
{
  v4 = objc_msgSend_queue(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_queue(self, v5, v6);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7BCD0D0;
    block[3] = &unk_1E7CB6AE0;
    block[4] = self;
    dispatch_async(v7, block);
  }
}

- (void)cancel
{
  v4 = objc_msgSend_queue(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_queue(self, v5, v6);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7BCD18C;
    block[3] = &unk_1E7CB6AE0;
    block[4] = self;
    dispatch_sync(v7, block);
  }
}

- (void)__unlocked_reload
{
  isThrottled = objc_msgSend_isThrottled(IMIndexThrottleMonitor, a2, v2);
  v7 = (objc_msgSend_ignoreThrottling(MEMORY[0x1E69A7FF8], v5, v6) ^ 1) & isThrottled;
  v10 = objc_msgSend_lastState(self, v8, v9);
  if (!v10 || (v13 = v10, objc_msgSend_lastState(self, v11, v12), v14 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_BOOLValue(v14, v15, v16), v14, v13, v7 != v17))
  {
    v19 = objc_msgSend_changeHandler(self, v11, v12);
    if (v19)
    {
      v20 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v18, v7);
      objc_msgSend_setLastState_(self, v21, v20);

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1B7BCD348;
      v22[3] = &unk_1E7CB7FB0;
      v23 = v19;
      v24 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], v22);
    }
  }
}

- (void)__unlocked_cancel
{
  changeHandler = self->_changeHandler;
  self->_changeHandler = 0;

  lastState = self->_lastState;
  self->_lastState = 0;

  v7 = objc_msgSend_defaults(IMIndexThrottleMonitor, v5, v6);
  objc_msgSend_removeObserver_forKeyPath_context_(v7, v8, self, @"IMDIndexingLastThrottleState", 0);

  v11 = objc_msgSend_defaults(IMIndexThrottleMonitor, v9, v10);
  objc_msgSend_removeObserver_forKeyPath_context_(v11, v12, self, @"IMDIndexingThrottles", 0);

  v19 = objc_msgSend_defaults(IMIndexThrottleMonitor, v13, v14);
  v17 = objc_msgSend__ignoreThrottlingKey(MEMORY[0x1E69A7FF8], v15, v16);
  objc_msgSend_removeObserver_forKeyPath_context_(v19, v18, self, v17, 0);
}

@end