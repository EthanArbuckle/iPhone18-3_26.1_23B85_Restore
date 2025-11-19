@interface IAEventDispatcher
+ (id)sharedInstance;
+ (void)dispatchEvent:(id)a3 payload:(id)a4;
- (IAEventDispatcher)init;
- (void)dispatchEvent:(id)a3 payload:(id)a4;
@end

@implementation IAEventDispatcher

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1D4618DFC;
  block[3] = &unk_1E848A4C8;
  block[4] = a1;
  if (qword_1EC7D6658 != -1)
  {
    dispatch_once(&qword_1EC7D6658, block);
  }

  v2 = qword_1EC7D6650;

  return v2;
}

+ (void)dispatchEvent:(id)a3 payload:(id)a4
{
  v5 = a4;
  v6 = a3;
  v10 = objc_msgSend_sharedInstance(IAEventDispatcher, v7, v8);
  objc_msgSend_dispatchEvent_payload_(v10, v9, v6, v5);
}

- (IAEventDispatcher)init
{
  v6.receiver = self;
  v6.super_class = IAEventDispatcher;
  v2 = [(IAEventDispatcher *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_msgSend_setPayloadsObservedForTesting_(v2, v4, v3);
  }

  return v2;
}

- (void)dispatchEvent:(id)a3 payload:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_isUnitTest(self, v8, v9))
  {
    v10 = sub_1D4621090();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_msgSend_description(v7, v11, v12);
      *buf = 138478083;
      v25 = v6;
      v26 = 2117;
      v27 = v13;
      _os_log_impl(&dword_1D460F000, v10, OS_LOG_TYPE_DEFAULT, "Dispatching for test '%{private}@': %{sensitive}@", buf, 0x16u);
    }

    v16 = objc_msgSend_mutableCopy(v7, v14, v15);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v17, v6, @"IAEventDispatcherEventNameKey");
    v20 = objc_msgSend_payloadsObservedForTesting(self, v18, v19);
    objc_msgSend_addObject_(v20, v21, v16);
  }

  else
  {
    v23 = v7;
    AnalyticsSendEventLazy();
    v16 = v23;
  }

  v22 = *MEMORY[0x1E69E9840];
}

@end