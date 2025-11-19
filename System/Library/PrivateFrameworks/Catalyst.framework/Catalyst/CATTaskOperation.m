@interface CATTaskOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)new;
- (BOOL)canSendNotificationWithName:(id)a3 userInfo:(id)a4;
- (CATTaskOperation)init;
- (CATTaskOperation)initWithRequest:(id)a3;
- (CATTaskOperationNotificationDelegate)notificationDelegate;
- (id)cat_assertions;
- (void)cat_addAssertion:(id)a3;
- (void)postNotificationWithName:(id)a3 userInfo:(id)a4;
- (void)processMessage:(id)a3;
@end

@implementation CATTaskOperation

+ (id)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"CATTaskOperation.m" lineNumber:31 description:{@"%@ cannot call %@", a1, v5}];

  return 0;
}

- (CATTaskOperation)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CATTaskOperation.m" lineNumber:38 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

- (CATTaskOperation)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CATTaskOperation;
  v6 = [(CATOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (a4 && (isKindOfClass & 1) == 0)
  {
    *a4 = CATErrorWithCodeAndUserInfo(2, &unk_28560C2A0);
  }

  return isKindOfClass & 1;
}

- (BOOL)canSendNotificationWithName:(id)a3 userInfo:(id)a4
{
  v4 = [(CATTaskOperation *)self request:a3];
  v5 = [v4 handlesNotifications];

  return v5;
}

- (void)postNotificationWithName:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CATTaskOperation *)self canSendNotificationWithName:v6 userInfo:v7])
  {
    v8 = [(CATTaskOperation *)self notificationDelegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_5:

      goto LABEL_10;
    }

    v9 = [(CATTaskOperation *)self canSendNotificationWithName:v6 userInfo:v7];

    if (v9)
    {
      v8 = [(CATTaskOperation *)self notificationDelegate];
      [v8 taskOperation:self didPostNotificationWithName:v6 userInfo:v7];
      goto LABEL_5;
    }
  }

  else
  {
    if (_CATLogGeneral_onceToken_13 != -1)
    {
      [CATTaskOperation postNotificationWithName:userInfo:];
    }

    v10 = _CATLogGeneral_logObj_13;
    if (os_log_type_enabled(_CATLogGeneral_logObj_13, OS_LOG_TYPE_ERROR))
    {
      [(CATRemoteTaskOperation *)self processNotificationWithName:v6 userInfo:v10];
    }
  }

LABEL_10:
}

- (void)processMessage:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [(CATTaskOperation *)self request];
    v8 = [v7 handlesNotifications];

    if (v8)
    {
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __35__CATTaskOperation_processMessage___block_invoke;
      block[3] = &unk_278DA7530;
      objc_copyWeak(&v12, &location);
      v11 = v6;
      v9 = v6;
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
    }
  }
}

void __35__CATTaskOperation_processMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = [*(a1 + 32) name];
    v5 = [*(a1 + 32) userInfo];
    [v3 postNotificationName:v4 object:v6 userInfo:v5];

    WeakRetained = v6;
  }
}

- (CATTaskOperationNotificationDelegate)notificationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationDelegate);

  return WeakRetained;
}

- (void)cat_addAssertion:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_getAssociatedObject(self, "cat_assertions");
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_opt_new();
    }

    value = v7;

    [value addObject:v4];
    objc_setAssociatedObject(self, "cat_assertions", value, 0x301);
  }
}

- (id)cat_assertions
{
  v2 = objc_getAssociatedObject(self, "cat_assertions");
  v3 = [v2 copy];

  return v3;
}

@end