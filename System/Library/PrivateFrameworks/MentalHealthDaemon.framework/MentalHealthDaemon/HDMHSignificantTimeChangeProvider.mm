@interface HDMHSignificantTimeChangeProvider
- (HDMHSignificantTimeChangeProvider)init;
- (void)dealloc;
- (void)invalidate;
- (void)registerForSignificantTimeChangesWithQueue:(id)queue completion:(id)completion;
@end

@implementation HDMHSignificantTimeChangeProvider

- (HDMHSignificantTimeChangeProvider)init
{
  v3.receiver = self;
  v3.super_class = HDMHSignificantTimeChangeProvider;
  return [(HDMHSignificantTimeChangeProvider *)&v3 init];
}

- (void)registerForSignificantTimeChangesWithQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  [(HDMHSignificantTimeChangeProvider *)self invalidate];
  uTF8String = [@"SignificantTimeChangeNotification" UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __91__HDMHSignificantTimeChangeProvider_registerForSignificantTimeChangesWithQueue_completion___block_invoke;
  handler[3] = &unk_2798AAC88;
  v11 = completionCopy;
  v9 = completionCopy;
  notify_register_dispatch(uTF8String, &self->_notifyToken, queueCopy, handler);
}

uint64_t __91__HDMHSignificantTimeChangeProvider_registerForSignificantTimeChangesWithQueue_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)invalidate
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2048;
    selfCopy = self;
    v5 = v9;
    _os_log_impl(&dword_258977000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating significant time change provider %p", &v8, 0x16u);
  }

  notifyToken = self->_notifyToken;
  if (notifyToken >= 1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(HDMHSignificantTimeChangeProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = HDMHSignificantTimeChangeProvider;
  [(HDMHSignificantTimeChangeProvider *)&v3 dealloc];
}

@end