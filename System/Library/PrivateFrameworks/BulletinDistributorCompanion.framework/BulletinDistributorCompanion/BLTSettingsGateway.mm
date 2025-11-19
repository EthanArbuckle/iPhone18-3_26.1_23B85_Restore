@interface BLTSettingsGateway
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (id)surrogateWithQueue:(id)a3;
- (BLTSettingsGateway)initWithQueue:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
@end

@implementation BLTSettingsGateway

- (BLTSettingsGateway)initWithQueue:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = BLTSettingsGateway;
  v5 = [(BLTSettingsGateway *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    actualSettingsGatewayLock = v5->_actualSettingsGatewayLock;
    v5->_actualSettingsGatewayLock = v6;

    v8 = [objc_alloc(MEMORY[0x277CF3580]) initWithQueue:v4];
    actualSettingsGateway = v5->_actualSettingsGateway;
    v5->_actualSettingsGateway = v8;

    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = BBServerListeningForConnections();
    objc_initWeak(&location, v5);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__BLTSettingsGateway_initWithQueue___block_invoke;
    v11[3] = &unk_278D31D70;
    v13 = v16;
    objc_copyWeak(&v14, &location);
    v12 = v4;
    notify_register_dispatch("com.apple.bulletinboard.listeningForConnections", &v5->_token, v12, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    _Block_object_dispose(v16, 8);
  }

  return v5;
}

void __36__BLTSettingsGateway_initWithQueue___block_invoke(uint64_t a1, int token)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24))
  {
    state64 = 0;
    notify_get_state(token, &state64);
    if (state64 == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      if (WeakRetained)
      {
        v5 = blt_general_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_INFO, "Re-creating settings gateway", v9, 2u);
        }

        [WeakRetained[2] lock];
        [WeakRetained[1] invalidate];
        v6 = [objc_alloc(MEMORY[0x277CF3580]) initWithQueue:*(a1 + 32)];
        v7 = WeakRetained[1];
        WeakRetained[1] = v6;

        [WeakRetained[2] unlock];
        v8 = [MEMORY[0x277CCAB98] defaultCenter];
        [v8 postNotificationName:@"BLTSettingsGatewayReconnected" object:WeakRetained];
      }
    }
  }

  else
  {
    *(v2 + 24) = 1;
  }
}

+ (id)surrogateWithQueue:(id)a3
{
  v3 = a3;
  v4 = [[BLTSettingsGateway alloc] initWithQueue:v3];

  return v4;
}

- (void)dealloc
{
  notify_cancel(self->_token);
  [(BBSettingsGateway *)self->_actualSettingsGateway invalidate];
  actualSettingsGateway = self->_actualSettingsGateway;
  self->_actualSettingsGateway = 0;

  v4.receiver = self;
  v4.super_class = BLTSettingsGateway;
  [(BLTSettingsGateway *)&v4 dealloc];
}

- (void)forwardInvocation:(id)a3
{
  actualSettingsGatewayLock = self->_actualSettingsGatewayLock;
  v5 = a3;
  [(NSLock *)actualSettingsGatewayLock lock];
  v6 = self->_actualSettingsGatewayLock;
  v7 = self->_actualSettingsGateway;
  [(NSLock *)v6 unlock];
  [v5 selector];
  if (objc_opt_respondsToSelector())
  {
    [v5 invokeWithTarget:v7];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BLTSettingsGateway;
    [(BLTSettingsGateway *)&v8 forwardInvocation:v5];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v9.receiver = self;
  v9.super_class = BLTSettingsGateway;
  if ([(BLTSettingsGateway *)&v9 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    [(NSLock *)self->_actualSettingsGatewayLock lock];
    actualSettingsGateway = self->_actualSettingsGateway;
    actualSettingsGatewayLock = self->_actualSettingsGatewayLock;
    v7 = actualSettingsGateway;
    [(NSLock *)actualSettingsGatewayLock unlock];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (BOOL)isKindOfClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    isKindOfClass = 1;
  }

  else
  {
    [(NSLock *)self->_actualSettingsGatewayLock lock];
    actualSettingsGateway = self->_actualSettingsGateway;
    actualSettingsGatewayLock = self->_actualSettingsGatewayLock;
    v6 = actualSettingsGateway;
    [(NSLock *)actualSettingsGatewayLock unlock];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (BOOL)instancesRespondToSelector:(SEL)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___BLTSettingsGateway;
  if (objc_msgSendSuper2(&v5, sel_instancesRespondToSelector_))
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x277CF3580] instancesRespondToSelector:a3];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v10.receiver = self;
  v10.super_class = BLTSettingsGateway;
  v5 = [(BLTSettingsGateway *)&v10 methodSignatureForSelector:?];
  if (!v5)
  {
    [(NSLock *)self->_actualSettingsGatewayLock lock];
    actualSettingsGateway = self->_actualSettingsGateway;
    actualSettingsGatewayLock = self->_actualSettingsGatewayLock;
    v8 = actualSettingsGateway;
    [(NSLock *)actualSettingsGatewayLock unlock];
    v5 = [(BBSettingsGateway *)v8 methodSignatureForSelector:a3];
  }

  return v5;
}

@end