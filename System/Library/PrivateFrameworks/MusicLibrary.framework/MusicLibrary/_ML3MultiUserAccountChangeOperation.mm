@interface _ML3MultiUserAccountChangeOperation
- (MLMediaLibraryAccountChangeObserver)accountChangeObserver;
- (_ML3MultiUserAccountChangeOperation)initWithDatabasePath:(id)path accountChangeObserver:(id)observer;
- (void)execute;
@end

@implementation _ML3MultiUserAccountChangeOperation

- (MLMediaLibraryAccountChangeObserver)accountChangeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_accountChangeObserver);

  return WeakRetained;
}

- (void)execute
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "_ML3MultiUserAccountChangeOperation %p - Starting operation", buf, 0xCu);
  }

  accountChangeObserver = [(_ML3MultiUserAccountChangeOperation *)self accountChangeObserver];
  databasePath = [(_ML3MultiUserAccountChangeOperation *)self databasePath];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46___ML3MultiUserAccountChangeOperation_execute__block_invoke;
  v6[3] = &unk_2787660C8;
  v6[4] = self;
  [accountChangeObserver performDatabasePathChange:databasePath completion:v6];
}

- (_ML3MultiUserAccountChangeOperation)initWithDatabasePath:(id)path accountChangeObserver:(id)observer
{
  pathCopy = path;
  observerCopy = observer;
  v12.receiver = self;
  v12.super_class = _ML3MultiUserAccountChangeOperation;
  v8 = [(MSVAsyncOperation *)&v12 init];
  if (v8)
  {
    v9 = [pathCopy copy];
    databasePath = v8->_databasePath;
    v8->_databasePath = v9;

    objc_storeWeak(&v8->_accountChangeObserver, observerCopy);
  }

  return v8;
}

@end