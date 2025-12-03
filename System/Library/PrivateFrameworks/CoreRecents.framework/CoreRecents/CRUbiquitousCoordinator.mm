@interface CRUbiquitousCoordinator
- (CRUbiquitousCoordinator)initWithDelegate:(id)delegate;
- (unint64_t)_cloudStoreStateForDomain:(id)domain;
- (void)_removeLocalRecordsForAllDomains;
- (void)_removeLocalRecordsForCloudStoresWithDataFromPreviousAccount;
- (void)_setCloudStoreState:(unint64_t)state forDomain:(id)domain;
- (void)_setCloudStoreStateForAllDomains:(unint64_t)domains;
- (void)accountAdaptor:(id)adaptor observediCloudAccountTransition:(int64_t)transition;
- (void)dealloc;
- (void)ubiquitousStoreForDomainChangedAccount:(id)account;
@end

@implementation CRUbiquitousCoordinator

- (CRUbiquitousCoordinator)initWithDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = CRUbiquitousCoordinator;
  v4 = [(CRUbiquitousCoordinator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_delegate = delegate;
    v4->_cloudStoreStates = objc_alloc_init(NSMutableDictionary);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CRUbiquitousCoordinator;
  [(CRUbiquitousCoordinator *)&v3 dealloc];
}

- (void)ubiquitousStoreForDomainChangedAccount:(id)account
{
  if ([(CRUbiquitousCoordinator *)self _cloudStoreStateForDomain:?]- 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [(CRUbiquitousCoordinatorDelegate *)self->_delegate removeLocalRecordsForDomain:account removeInUbiquitousStore:0];

    [(CRUbiquitousCoordinator *)self _setCloudStoreState:2 forDomain:account];
  }
}

- (void)accountAdaptor:(id)adaptor observediCloudAccountTransition:(int64_t)transition
{
  v6 = +[CRLogging log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = sub_100016094(transition);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Observed iCloud account transition %@", &v9, 0xCu);
  }

  if (transition <= 1)
  {
    if (!transition)
    {
      [(CRUbiquitousCoordinator *)self _removeLocalRecordsForAllDomains];
      selfCopy2 = self;
      v8 = 3;
      goto LABEL_12;
    }

    if (transition != 1)
    {
      return;
    }

    [(CRUbiquitousCoordinatorDelegate *)self->_delegate mergeCloudDataOneWayIntoLocalStoreWithReason:0x7FFFFFFFLL];
LABEL_10:
    selfCopy2 = self;
    v8 = 1;
LABEL_12:
    [(CRUbiquitousCoordinator *)selfCopy2 _setCloudStoreStateForAllDomains:v8];
    return;
  }

  if (transition == 2)
  {
    goto LABEL_10;
  }

  if (transition == 3)
  {
    [(CRUbiquitousCoordinator *)self _removeLocalRecordsForCloudStoresWithDataFromPreviousAccount];
    [(CRUbiquitousCoordinatorDelegate *)self->_delegate mergeCloudDataOneWayIntoLocalStoreWithReason:2147483646];
  }
}

- (unint64_t)_cloudStoreStateForDomain:(id)domain
{
  result = [(NSMutableDictionary *)self->_cloudStoreStates objectForKeyedSubscript:domain];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

- (void)_setCloudStoreState:(unint64_t)state forDomain:(id)domain
{
  v7 = +[CRLogging log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(&off_10002D428 + state);
    v9 = 138543618;
    domainCopy = domain;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting state for domain:%{public}@ -> %{public}@", &v9, 0x16u);
  }

  [(NSMutableDictionary *)self->_cloudStoreStates setObject:[NSNumber forKey:"numberWithUnsignedInteger:" numberWithUnsignedInteger:state], domain];
}

- (void)_setCloudStoreStateForAllDomains:(unint64_t)domains
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _allDomains = [(CRUbiquitousCoordinator *)self _allDomains];
  v6 = [_allDomains countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(_allDomains);
        }

        [(CRUbiquitousCoordinator *)self _setCloudStoreState:domains forDomain:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [_allDomains countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_removeLocalRecordsForCloudStoresWithDataFromPreviousAccount
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _allDomains = [(CRUbiquitousCoordinator *)self _allDomains];
  v4 = [_allDomains countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(_allDomains);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([(CRUbiquitousCoordinator *)self _cloudStoreStateForDomain:v8]!= 2)
        {
          [(CRUbiquitousCoordinatorDelegate *)self->_delegate removeLocalRecordsForDomain:v8 removeInUbiquitousStore:0];
          [(CRUbiquitousCoordinator *)self _setCloudStoreState:2 forDomain:v8];
        }
      }

      v5 = [_allDomains countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_removeLocalRecordsForAllDomains
{
  v3 = +[CRLogging log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing local records for all domains", buf, 2u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  _allDomains = [(CRUbiquitousCoordinator *)self _allDomains];
  v5 = [_allDomains countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(_allDomains);
        }

        [(CRUbiquitousCoordinatorDelegate *)self->_delegate removeLocalRecordsForDomain:*(*(&v9 + 1) + 8 * v8) removeInUbiquitousStore:0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [_allDomains countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

@end