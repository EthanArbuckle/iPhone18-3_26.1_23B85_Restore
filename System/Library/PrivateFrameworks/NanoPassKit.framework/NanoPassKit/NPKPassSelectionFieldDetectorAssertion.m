@interface NPKPassSelectionFieldDetectorAssertion
- (NPKPassSelectionFieldDetectorAssertion)initWithQueue:(id)a3;
- (NPKPassSelectionFieldDetectorAssertionDelegate)delegate;
- (void)_resyncState;
- (void)didEnterFieldForPassesWithUniqueIDs:(id)a3;
@end

@implementation NPKPassSelectionFieldDetectorAssertion

- (NPKPassSelectionFieldDetectorAssertion)initWithQueue:(id)a3
{
  v6.receiver = self;
  v6.super_class = NPKPassSelectionFieldDetectorAssertion;
  v3 = [(NPKTransientAssertion *)&v6 initWithQueue:a3];
  v4 = v3;
  if (v3)
  {
    [(NPKPassSelectionFieldDetectorAssertion *)v3 _resyncState];
  }

  return v4;
}

- (void)didEnterFieldForPassesWithUniqueIDs:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass Selection Field Detector assertion: received enter field with Passes UniqueIDs:%@", &v10, 0xCu);
    }
  }

  v8 = [(NPKPassSelectionFieldDetectorAssertion *)self delegate];
  [v8 passSelectionFieldDetectorAssertion:self didEnterFieldForPassesWithUniqueIDs:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_resyncState
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Pass Selection Field Detector assertion: resyncing state", v7, 2u);
    }
  }

  v6 = [(NPKTransientAssertion *)self _remoteObjectProxy];
  [v6 requestPassSelectionFieldDetectorDelegationAssertion];
}

- (NPKPassSelectionFieldDetectorAssertionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end