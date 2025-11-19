@interface _EMOneTimeCodeObserver
- (_EMOneTimeCodeObserver)initWithObserver:(id)a3;
- (void)_performWithRemoteConnection:(id)a3 forRecovery:(BOOL)a4;
- (void)dealloc;
@end

@implementation _EMOneTimeCodeObserver

- (_EMOneTimeCodeObserver)initWithObserver:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _EMOneTimeCodeObserver;
  v5 = [(_EMOneTimeCodeObserver *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, v4);
    v7 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    token = v6->_token;
    v6->_token = v7;
  }

  return v6;
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_token cancel];
  v3.receiver = self;
  v3.super_class = _EMOneTimeCodeObserver;
  [(_EMOneTimeCodeObserver *)&v3 dealloc];
}

- (void)_performWithRemoteConnection:(id)a3 forRecovery:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self->_token;
  if (([(EFManualCancelationToken *)v7 isCanceled]& 1) == 0)
  {
    if (v4)
    {
      v8 = +[EMMessageRepository log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained(&self->_observer);
        *buf = 138543618;
        v16 = self;
        v17 = 2114;
        v18 = WeakRetained;
        _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@> [OTC] Recovering one-time code observer: %{public}@", buf, 0x16u);
      }

      [(EFManualCancelationToken *)v7 removeAllCancelationBlocks];
    }

    objc_initWeak(buf, self);
    v10 = [v6 remoteObjectProxy];
    v11 = objc_loadWeakRetained(&self->_observer);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67___EMOneTimeCodeObserver__performWithRemoteConnection_forRecovery___block_invoke;
    v13[3] = &unk_1E826EEE0;
    objc_copyWeak(&v14, buf);
    [v10 startObservingOneTimeCode:v11 completionHandler:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end