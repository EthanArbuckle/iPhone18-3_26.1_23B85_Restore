@interface _ML3MultiUserDaemonAccountChangeOperation
- (_ML3MultiUserDaemonAccountChangeOperation)initWithInitialDSID:(id)d finalDSID:(id)iD accountChangeObserver:(id)observer;
- (_ML3MultiUserDaemonAccountChangeOperationDelegate)delegate;
- (void)execute;
@end

@implementation _ML3MultiUserDaemonAccountChangeOperation

- (_ML3MultiUserDaemonAccountChangeOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)execute
{
  v26 = *MEMORY[0x277D85DE8];
  delegate = [(_ML3MultiUserDaemonAccountChangeOperation *)self delegate];
  if (!delegate)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy4 = self;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ - Missing delegate - unable to perform operation", buf, 0xCu);
    }

    [(MSVAsyncOperation *)self finish];
  }

  v19 = 0;
  v5 = [delegate shouldExecuteAccountChangeOperation:self reason:&v19];
  v6 = v19;
  v7 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      initialDSID = [(_ML3MultiUserDaemonAccountChangeOperation *)self initialDSID];
      finalDSID = [(_ML3MultiUserDaemonAccountChangeOperation *)self finalDSID];
      *buf = 138543874;
      selfCopy4 = self;
      v22 = 2114;
      v23 = initialDSID;
      v24 = 2114;
      v25 = finalDSID;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Starting account change operation from %{public}@ to %{public}@", buf, 0x20u);
    }

    v11 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      accountChangeObserver = [(_ML3MultiUserDaemonAccountChangeOperation *)self accountChangeObserver];
      *buf = 138543618;
      selfCopy4 = self;
      v22 = 2114;
      v23 = accountChangeObserver;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ - Active account changed - Performing dabase path change with observer %{public}@", buf, 0x16u);
    }

    finalDSID2 = [(_ML3MultiUserDaemonAccountChangeOperation *)self finalDSID];
    v14 = [delegate databasePathForDSID:finalDSID2];

    [delegate accountChangeOperationWillStartPerformingDatabasePathChange:self newDatabasePath:v14];
    accountChangeObserver2 = [(_ML3MultiUserDaemonAccountChangeOperation *)self accountChangeObserver];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52___ML3MultiUserDaemonAccountChangeOperation_execute__block_invoke;
    v17[3] = &unk_278765DB8;
    v17[4] = self;
    v18 = v14;
    v16 = v14;
    [accountChangeObserver2 performDatabasePathChange:v16 completion:v17];
  }

  else
  {
    if (v8)
    {
      *buf = 138543618;
      selfCopy4 = self;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - No account change operation to perform - reason=%{public}@", buf, 0x16u);
    }

    [(MSVAsyncOperation *)self finish];
  }
}

- (_ML3MultiUserDaemonAccountChangeOperation)initWithInitialDSID:(id)d finalDSID:(id)iD accountChangeObserver:(id)observer
{
  dCopy = d;
  iDCopy = iD;
  observerCopy = observer;
  v17.receiver = self;
  v17.super_class = _ML3MultiUserDaemonAccountChangeOperation;
  v11 = [(MSVAsyncOperation *)&v17 init];
  if (v11)
  {
    v12 = [dCopy copy];
    initialDSID = v11->_initialDSID;
    v11->_initialDSID = v12;

    v14 = [iDCopy copy];
    finalDSID = v11->_finalDSID;
    v11->_finalDSID = v14;

    objc_storeStrong(&v11->_accountChangeObserver, observer);
  }

  return v11;
}

@end