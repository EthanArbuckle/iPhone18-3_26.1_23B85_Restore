@interface CATTaskOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)new;
- (BOOL)canSendNotificationWithName:(id)name userInfo:(id)info;
- (CATTaskOperation)init;
- (CATTaskOperation)initWithRequest:(id)request;
- (CATTaskOperationNotificationDelegate)notificationDelegate;
- (id)cat_assertions;
- (void)cat_addAssertion:(id)assertion;
- (void)postNotificationWithName:(id)name userInfo:(id)info;
- (void)processMessage:(id)message;
@end

@implementation CATTaskOperation

+ (id)new
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATTaskOperation.m" lineNumber:31 description:{@"%@ cannot call %@", self, v5}];

  return 0;
}

- (CATTaskOperation)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATTaskOperation.m" lineNumber:38 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

- (CATTaskOperation)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CATTaskOperation;
  v6 = [(CATOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
  }

  return v7;
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (error && (isKindOfClass & 1) == 0)
  {
    *error = CATErrorWithCodeAndUserInfo(2, &unk_28560C2A0);
  }

  return isKindOfClass & 1;
}

- (BOOL)canSendNotificationWithName:(id)name userInfo:(id)info
{
  v4 = [(CATTaskOperation *)self request:name];
  handlesNotifications = [v4 handlesNotifications];

  return handlesNotifications;
}

- (void)postNotificationWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  if ([(CATTaskOperation *)self canSendNotificationWithName:nameCopy userInfo:infoCopy])
  {
    notificationDelegate = [(CATTaskOperation *)self notificationDelegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_5:

      goto LABEL_10;
    }

    v9 = [(CATTaskOperation *)self canSendNotificationWithName:nameCopy userInfo:infoCopy];

    if (v9)
    {
      notificationDelegate = [(CATTaskOperation *)self notificationDelegate];
      [notificationDelegate taskOperation:self didPostNotificationWithName:nameCopy userInfo:infoCopy];
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
      [(CATRemoteTaskOperation *)self processNotificationWithName:nameCopy userInfo:v10];
    }
  }

LABEL_10:
}

- (void)processMessage:(id)message
{
  messageCopy = message;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = messageCopy;
    request = [(CATTaskOperation *)self request];
    handlesNotifications = [request handlesNotifications];

    if (handlesNotifications)
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

- (void)cat_addAssertion:(id)assertion
{
  if (assertion)
  {
    assertionCopy = assertion;
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

    [value addObject:assertionCopy];
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