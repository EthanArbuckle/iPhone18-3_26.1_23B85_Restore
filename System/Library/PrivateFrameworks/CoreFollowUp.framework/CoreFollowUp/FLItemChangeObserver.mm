@interface FLItemChangeObserver
+ (id)observerWithChangeHandler:(id)a3;
- (void)dealloc;
- (void)setItemChangeHandler:(id)a3;
- (void)timerUpdated;
@end

@implementation FLItemChangeObserver

+ (id)observerWithChangeHandler:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FLItemChangeObserver);
  [(FLItemChangeObserver *)v4 setItemChangeHandler:v3];

  return v4;
}

- (void)setItemChangeHandler:(id)a3
{
  v4 = a3;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E696000, v5, OS_LOG_TYPE_DEFAULT, "setItemChangeHandler", buf, 2u);
  }

  notifyToken = self->_notifyToken;
  if (notifyToken)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = 0;
  }

  v7 = _Block_copy(v4);
  itemChangeObserver = self->_itemChangeObserver;
  self->_itemChangeObserver = v7;

  v9 = self->_itemChangeObserver;
  v10 = _FLLogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_22E696000, v10, OS_LOG_TYPE_DEFAULT, "Register ItemChangeHandler", buf, 2u);
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__FLItemChangeObserver_setItemChangeHandler___block_invoke;
    handler[3] = &unk_278852CD8;
    handler[4] = self;
    notify_register_dispatch("com.apple.corefollowup.items_changed", &self->_notifyToken, MEMORY[0x277D85CD0], handler);
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_22E696000, v10, OS_LOG_TYPE_DEFAULT, "Unregister ItemChangeHandler", buf, 2u);
    }
  }
}

uint64_t __45__FLItemChangeObserver_setItemChangeHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = _FLLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [objc_opt_class() description];
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_22E696000, v2, OS_LOG_TYPE_DEFAULT, "Observer <%@ : %p> detected store changed, calling observer...", &v8, 0x16u);
  }

  result = *(*(a1 + 32) + 16);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)timerUpdated
{
  itemChangeObserver = self->_itemChangeObserver;
  if (itemChangeObserver)
  {
    itemChangeObserver[2]();
  }
}

- (void)dealloc
{
  [(FLItemChangeObserver *)self setItemChangeHandler:0];
  v3.receiver = self;
  v3.super_class = FLItemChangeObserver;
  [(FLItemChangeObserver *)&v3 dealloc];
}

@end