@interface IDSQuickSwitchAcknowledgementTracker
- (BOOL)isAwaitingAcknowledgement;
- (IDSQuickSwitchAcknowledgementTracker)init;
- (id)awaitAcknowledgementFromServiceDelegate:(id)a3;
- (id)identifierForServiceDelegate:(id)a3;
- (void)_accessDelegateIdentifiersInCriticalSectionWithBlock:(id)a3;
- (void)dealloc;
- (void)stopAwaitingAcknowledgementFromAllServiceDelegates;
- (void)stopAwaitingAcknowledgementFromServiceDelegateWithIdentifier:(id)a3;
@end

@implementation IDSQuickSwitchAcknowledgementTracker

- (IDSQuickSwitchAcknowledgementTracker)init
{
  if (_IDSRunningInDaemon())
  {
    v3 = [MEMORY[0x1E69A6138] watchPairing];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v3);
    }

    v4 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IDSQuickSwitchAcknowledgementTracker;
    v5 = [(IDSQuickSwitchAcknowledgementTracker *)&v9 init];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      delegateIdentifiers = v5->_delegateIdentifiers;
      v5->_delegateIdentifiers = v6;

      pthread_mutex_init(&v5->_delegateIdentifiersMutex, 0);
    }

    self = v5;
    v4 = self;
  }

  return v4;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_delegateIdentifiersMutex);
  v3.receiver = self;
  v3.super_class = IDSQuickSwitchAcknowledgementTracker;
  [(IDSQuickSwitchAcknowledgementTracker *)&v3 dealloc];
}

- (BOOL)isAwaitingAcknowledgement
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -86;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A0938C;
  v4[3] = &unk_1E74410B0;
  v4[4] = &v5;
  [(IDSQuickSwitchAcknowledgementTracker *)self _accessDelegateIdentifiersInCriticalSectionWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)awaitAcknowledgementFromServiceDelegate:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] watchPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v14 = objc_opt_class();
    v15 = 2080;
    v16 = "[IDSQuickSwitchAcknowledgementTracker awaitAcknowledgementFromServiceDelegate:]";
    v17 = 2112;
    v18 = v4;
    v6 = v14;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s  (serviceDelegate: %@)", buf, 0x20u);
  }

  if (v4)
  {
    v7 = [(IDSQuickSwitchAcknowledgementTracker *)self identifierForServiceDelegate:v4];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A7F514;
    v11[3] = &unk_1E74410D8;
    v8 = v7;
    v12 = v8;
    [(IDSQuickSwitchAcknowledgementTracker *)self _accessDelegateIdentifiersInCriticalSectionWithBlock:v11];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)identifierForServiceDelegate:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69A6138] watchPairing];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v12 = objc_opt_class();
    v13 = 2080;
    v14 = "[IDSQuickSwitchAcknowledgementTracker identifierForServiceDelegate:]";
    v15 = 2112;
    v16 = v3;
    v5 = v12;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ %s  (serviceDelegate: %@)", buf, 0x20u);
  }

  if (v3)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%p)", v7, v3];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)stopAwaitingAcknowledgementFromServiceDelegateWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] watchPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v11 = objc_opt_class();
    v12 = 2080;
    v13 = "[IDSQuickSwitchAcknowledgementTracker stopAwaitingAcknowledgementFromServiceDelegateWithIdentifier:]";
    v14 = 2112;
    v15 = v4;
    v6 = v11;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s  (delegateIdentifier: %@)", buf, 0x20u);
  }

  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_195A7F8E0;
    v8[3] = &unk_1E74410D8;
    v9 = v4;
    [(IDSQuickSwitchAcknowledgementTracker *)self _accessDelegateIdentifiersInCriticalSectionWithBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stopAwaitingAcknowledgementFromAllServiceDelegates
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A6138] watchPairing];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2080;
    v9 = "[IDSQuickSwitchAcknowledgementTracker stopAwaitingAcknowledgementFromAllServiceDelegates]";
    v4 = v7;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", &v6, 0x16u);
  }

  [(IDSQuickSwitchAcknowledgementTracker *)self _accessDelegateIdentifiersInCriticalSectionWithBlock:&unk_1F09E61C0];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_accessDelegateIdentifiersInCriticalSectionWithBlock:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_delegateIdentifiersMutex);
  v4[2](v4, self->_delegateIdentifiers);

  pthread_mutex_unlock(&self->_delegateIdentifiersMutex);
}

@end