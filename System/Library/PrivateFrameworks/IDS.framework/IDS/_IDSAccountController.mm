@interface _IDSAccountController
- (NSSet)accounts;
- (NSSet)enabledAccounts;
- (NSSet)internalAccounts;
- (NSString)serviceName;
- (_IDSAccountController)initWithService:(id)service delegateContext:(id)context;
- (id)accountWithLoginID:(id)d service:(id)service;
- (id)accountWithUniqueID:(id)d;
- (void)_callDelegatesRespondingToSelector:(SEL)selector withPreCallbacksBlock:(id)block callbackBlock:(id)callbackBlock postCallbacksBlock:(id)callbacksBlock group:(id)group;
- (void)_connect;
- (void)_loadCachedAccounts;
- (void)_loadCachedAccountsWithDictionaries:(id)dictionaries;
- (void)_removeAccount:(id)account;
- (void)_removeAndDeregisterAccount:(id)account;
- (void)_setupAccountWithLoginID:(id)d accountConfig:(id)config authToken:(id)token password:(id)password completionHandler:(id)handler;
- (void)_updateDelegatesWithOldAccounts:(id)accounts newAccounts:(id)newAccounts;
- (void)_updateLocalAccountVisibility;
- (void)accountAdded:(id)added;
- (void)accountDisabled:(id)disabled onService:(id)service;
- (void)accountEnabled:(id)enabled onService:(id)service;
- (void)accountRemoved:(id)removed;
- (void)accountUpdated:(id)updated;
- (void)accountsChanged:(id)changed forTopic:(id)topic;
- (void)addAccount:(id)account;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)daemonDisconnected;
- (void)dealloc;
- (void)disableAccount:(id)account;
- (void)enableAccount:(id)account;
- (void)removeDelegate:(id)delegate;
- (void)setupAccountWithLoginID:(id)d aliases:(id)aliases password:(id)password completionHandler:(id)handler;
- (void)setupAccountWithSetupParameters:(id)parameters aliases:(id)aliases completionHandler:(id)handler;
- (void)setupCompleteForAccount:(id)account transactionID:(id)d setupError:(id)error;
@end

@implementation _IDSAccountController

- (NSSet)accounts
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B313A4();
    }
  }

  [(_IDSAccountController *)self _loadCachedAccounts];
  [(_IDSAccountController *)self _updateLocalAccountVisibility];
  v6 = [(NSMutableSet *)self->_cachedAccounts mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_cachedAccounts;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        _internal = [v12 _internal];
        if ([_internal accountType] == 2)
        {
          isLocalAccountVisible = self->_isLocalAccountVisible;

          if (!isLocalAccountVisible)
          {
            [v6 removeObject:v12];
          }
        }

        else
        {
        }
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_loadCachedAccounts
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B31B80();
    }
  }

  if (!self->_accountsLoaded)
  {
    v6 = +[IDSDaemonController sharedInstance];
    [v6 blockUntilConnected];

    v30 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_cachedAccounts];
    v7 = +[IDSDaemonController sharedInstance];
    listener = [v7 listener];
    v9 = [listener accountDictionariesForService:self->_service];

    v29 = v9;
    [(_IDSAccountController *)self _loadCachedAccountsWithDictionaries:v9];
    p_enabledAccounts = &self->_enabledAccounts;
    v11 = [(NSMutableSet *)self->_enabledAccounts copy];
    [(NSMutableSet *)self->_enabledAccounts removeAllObjects];
    v12 = +[IDSDaemonController sharedInstance];
    listener2 = [v12 listener];
    v14 = [listener2 enabledAccountsForService:self->_service];

    if ([v14 count])
    {
      [(NSMutableSet *)*p_enabledAccounts addObjectsFromArray:v14];
    }

    if (([v11 isEqualToSet:*p_enabledAccounts] & 1) == 0)
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
      {
        sub_195B31C18(&self->_enabledAccounts);
      }
    }

    v27 = v14;
    v28 = v11;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = self->_cachedAccounts;
    v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          v22 = *p_enabledAccounts;
          _internal = [v21 _internal];
          uniqueID = [_internal uniqueID];
          [v21 _setIsEnabled:{-[NSMutableSet containsObject:](v22, "containsObject:", uniqueID)}];
        }

        v18 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v18);
    }

    v25 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_cachedAccounts];
    [(_IDSAccountController *)self _updateDelegatesWithOldAccounts:v30 newAccounts:v25];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_updateLocalAccountVisibility
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B320A8();
    }
  }

  v6 = [(NSMutableSet *)self->_cachedAccounts copy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    selfCopy = self;
    v10 = 0;
    v11 = 0;
    v12 = *v40;
    do
    {
      v13 = 0;
      v31 = v9;
      do
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v39 + 1) + 8 * v13);
        _internal = [v14 _internal];
        accountType = [_internal accountType];

        if (accountType == 2)
        {
          _internal2 = v10;
          v10 = v14;
        }

        else
        {
          _internal2 = [v14 _internal];
          if ([_internal2 _isEnabled])
          {
            _internal3 = [v14 _internal];
            if ([_internal3 registrationStatus] == 5)
            {
              _internal4 = [v14 _internal];
              [_internal4 aliases];
              v20 = v7;
              v22 = v21 = v11;
              v23 = v12;
              v24 = [v22 count] != 0;

              LODWORD(v22) = v21;
              v7 = v20;

              v11 = v24 | v22;
              v12 = v23;
              v9 = v31;
            }
          }
        }

        ++v13;
      }

      while (v9 != v13);
      v9 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v9);

    if (v10)
    {
      if (v11)
      {
        if (selfCopy->_isLocalAccountVisible)
        {
          selfCopy->_isLocalAccountVisible = 0;
          registration = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "We have a real account registered, hiding local account", buf, 2u);
          }

          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = sub_195A8A30C;
          v36[3] = &unk_1E74412A8;
          v36[4] = selfCopy;
          v10 = v10;
          v37 = v10;
          [(_IDSAccountController *)selfCopy _callDelegatesWithBlock:v36];
          v26 = v37;
LABEL_29:
        }
      }

      else if (!selfCopy->_isLocalAccountVisible)
      {
        selfCopy->_isLocalAccountVisible = 1;
        registration2 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "We don't have a real account registered, adding and enabling local account", buf, 2u);
        }

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = sub_195A8A388;
        v34[3] = &unk_1E74412A8;
        v34[4] = selfCopy;
        v28 = v10;
        v35 = v28;
        [(_IDSAccountController *)selfCopy _callDelegatesWithBlock:v34];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = sub_195A8A404;
        v32[3] = &unk_1E74412A8;
        v32[4] = selfCopy;
        v10 = v28;
        v33 = v10;
        [(_IDSAccountController *)selfCopy _callDelegatesWithBlock:v32];

        v26 = v35;
        goto LABEL_29;
      }
    }
  }

  else
  {

    v10 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_connect
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B31734();
    }
  }

  v6 = +[IDSDaemonController sharedInstance];
  v7 = [v6 hasListenerForID:self->_serviceToken];

  if ((v7 & 1) == 0)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195B317CC(&self->_serviceToken);
    }

    v9 = +[IDSDaemonController sharedInstance];
    serviceToken = self->_serviceToken;
    v11 = [MEMORY[0x1E695DFD8] setWithObject:self->_service];
    LOBYTE(serviceToken) = [v9 addListenerID:serviceToken services:v11];

    if ((serviceToken & 1) == 0)
    {
      v12 = +[IDSLogging IDSAccountController];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_195B31840(self, &self->_serviceToken);
      }
    }
  }
}

- (void)daemonDisconnected
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B318C8();
    }
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    sub_195B31960(self);
  }

  *&self->_accountsLoaded = 256;
}

- (void)dealloc
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 removeListenerID:self->_serviceToken];

  v4.receiver = self;
  v4.super_class = _IDSAccountController;
  [(_IDSAccountController *)&v4 dealloc];
}

- (NSString)serviceName
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3156C();
    }
  }

  v6 = [(NSString *)self->_service copy];

  return v6;
}

- (NSSet)internalAccounts
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3143C();
    }
  }

  [(_IDSAccountController *)self _loadCachedAccounts];
  [(_IDSAccountController *)self _updateLocalAccountVisibility];
  v6 = [(NSMutableSet *)self->_cachedAccounts copy];

  return v6;
}

- (_IDSAccountController)initWithService:(id)service delegateContext:(id)context
{
  serviceCopy = service;
  contextCopy = context;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B31298();
    }
  }

  v28.receiver = self;
  v28.super_class = _IDSAccountController;
  v11 = [(_IDSAccountController *)&v28 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E6995700] weakRefWithObject:contextCopy];
    v13 = *(v11 + 1);
    *(v11 + 1) = v12;

    v14 = [serviceCopy copy];
    v15 = *(v11 + 4);
    *(v11 + 4) = v14;

    v16 = [MEMORY[0x1E696AEC0] copyStringGUIDForObject:v11];
    v17 = *(v11 + 3);
    *(v11 + 3) = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v19 = *(v11 + 5);
    *(v11 + 5) = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v21 = *(v11 + 6);
    *(v11 + 6) = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v23 = *(v11 + 7);
    *(v11 + 7) = v22;

    *(v11 + 73) = 1;
    v24 = +[IDSDaemonController sharedInstance];
    listener = [v24 listener];
    [listener addHandler:v11];

    [v11 _connect];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195B31330(v11 + 4);
    }
  }

  return v11;
}

- (NSSet)enabledAccounts
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B314D4();
    }
  }

  [(_IDSAccountController *)self _loadCachedAccounts];
  [(_IDSAccountController *)self _updateLocalAccountVisibility];
  v6 = [(NSMutableSet *)self->_enabledAccounts mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_enabledAccounts;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [(_IDSAccountController *)self accountWithUniqueID:v12, v18];
        _internal = [v13 _internal];
        if ([_internal accountType] == 2)
        {
          isLocalAccountVisible = self->_isLocalAccountVisible;

          if (!isLocalAccountVisible)
          {
            [v6 removeObject:v12];
          }
        }

        else
        {
        }
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B31604();
    }
  }

  if (delegateCopy)
  {
    if (queueCopy)
    {
      v11 = [(NSMapTable *)self->_delegateToInfo objectForKey:delegateCopy];

      if (!v11)
      {
        if (!self->_delegateToInfo)
        {
          weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
          delegateToInfo = self->_delegateToInfo;
          self->_delegateToInfo = weakToStrongObjectsMapTable;
        }

        v14 = objc_alloc_init(MEMORY[0x1E69A5228]);
        [v14 setQueue:queueCopy];
        [(NSMapTable *)self->_delegateToInfo setObject:v14 forKey:delegateCopy];
      }
    }
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    [(NSMapTable *)self->_delegateToInfo removeObjectForKey:delegateCopy];
    if (![(NSMapTable *)self->_delegateToInfo count])
    {
      delegateToInfo = self->_delegateToInfo;
      self->_delegateToInfo = 0;
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_callDelegatesRespondingToSelector:(SEL)selector withPreCallbacksBlock:(id)block callbackBlock:(id)callbackBlock postCallbacksBlock:(id)callbacksBlock group:(id)group
{
  v67 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  callbackBlockCopy = callbackBlock;
  callbacksBlockCopy = callbacksBlock;
  groupCopy = group;
  groupCopy6 = groupCopy;
  v51 = callbackBlockCopy;
  if (callbackBlockCopy)
  {
    group = groupCopy;
    v15 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v15 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B3169C();
      }
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    context = objc_autoreleasePoolPush();
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v20 = self->_delegateToInfo;
    v21 = [(NSMapTable *)v20 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v63;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v63 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v62 + 1) + 8 * i);
          v26 = [(NSMapTable *)self->_delegateToInfo objectForKey:v25];
          v27 = v26;
          if (v25)
          {
            v28 = v26 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (!v28 && (!selector || (objc_opt_respondsToSelector() & 1) != 0))
          {
            [v18 addObject:v25];
            [v19 addObject:v27];
          }
        }

        v22 = [(NSMapTable *)v20 countByEnumeratingWithState:&v62 objects:v66 count:16];
      }

      while (v22);
    }

    objc_autoreleasePoolPop(context);
    groupCopy6 = group;
    if ([v18 count])
    {
      v29 = 1;
      do
      {
        v30 = objc_autoreleasePoolPush();
        v31 = [v18 objectAtIndex:0];
        v32 = [v19 objectAtIndex:0];
        [v18 removeObjectAtIndex:0];
        [v19 removeObjectAtIndex:0];
        objc_autoreleasePoolPop(v30);
        v33 = [v18 count];
        queue = [v32 queue];
        if (groupCopy6)
        {
          dispatch_group_enter(groupCopy6);
        }

        v35 = +[IDSInternalQueueController sharedInstance];
        queue2 = [v35 queue];

        if (queue == queue2)
        {
          if (selector)
          {
            groupCopy6 = group;
            if (blockCopy != 0 && (v29 & 1) != 0)
            {
              blockCopy[2](blockCopy, 1);
            }

            (v51)[2](v51, v31);
            if (callbacksBlockCopy && !v33)
            {
              callbacksBlockCopy[2](callbacksBlockCopy, 1);
            }
          }

          else
          {
            (v51)[2](v51, v31);
            groupCopy6 = group;
          }

          v43 = objc_opt_self();
          v44 = objc_opt_self();
          if (!groupCopy6)
          {
            goto LABEL_42;
          }
        }

        else if (queue)
        {
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = sub_195A888AC;
          v53[3] = &unk_1E7440E10;
          selectorCopy = selector;
          v60 = v29 & 1;
          v56 = blockCopy;
          v57 = v51;
          v54 = v31;
          v61 = v33 == 0;
          v58 = callbacksBlockCopy;
          v55 = v32;
          v37 = MEMORY[0x19A8BBEF0](v53);
          v38 = v37;
          if (queue == MEMORY[0x1E69E96A0])
          {
            v39 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v37);
          }

          else
          {
            v39 = [v37 copy];
          }

          v42 = v39;

          groupCopy6 = group;
          if (group)
          {
            dispatch_group_async(group, queue, v42);
          }

          else
          {
            dispatch_async(queue, v42);
          }

          if (!group)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v40 = objc_opt_self();
          v41 = objc_opt_self();
          groupCopy6 = group;
          if (!group)
          {
            goto LABEL_42;
          }
        }

        dispatch_group_leave(groupCopy6);
LABEL_42:

        v29 = 0;
      }

      while ([v18 count]);
    }

    v45 = objc_opt_self();
    v46 = objc_opt_self();
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (void)_updateDelegatesWithOldAccounts:(id)accounts newAccounts:(id)newAccounts
{
  v52 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  newAccountsCopy = newAccounts;
  v8 = +[IDSLogging IDSAccountController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Updating delegates of account changes", buf, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:accountsCopy];
  [v9 minusSet:newAccountsCopy];
  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:newAccountsCopy];
  [v10 minusSet:accountsCopy];
  v31 = newAccountsCopy;
  v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:newAccountsCopy];
  v32 = accountsCopy;
  [v11 intersectSet:accountsCopy];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      v16 = 0;
      do
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v44 + 1) + 8 * v16);
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = sub_195A88D38;
        v43[3] = &unk_1E74412A8;
        v43[4] = self;
        v43[5] = v17;
        [(_IDSAccountController *)self _callDelegatesWithBlock:v43];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v14);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = v10;
  v19 = [v18 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v40;
    do
    {
      v22 = 0;
      do
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v39 + 1) + 8 * v22);
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = sub_195A88DB4;
        v38[3] = &unk_1E74412A8;
        v38[4] = self;
        v38[5] = v23;
        [(_IDSAccountController *)self _callDelegatesWithBlock:v38];
        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v20);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = v11;
  v25 = [v24 countByEnumeratingWithState:&v34 objects:v49 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      v28 = 0;
      do
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v34 + 1) + 8 * v28);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = sub_195A88E30;
        v33[3] = &unk_1E74412A8;
        v33[4] = self;
        v33[5] = v29;
        [(_IDSAccountController *)self _callDelegatesWithBlock:v33];
        ++v28;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v34 objects:v49 count:16];
    }

    while (v26);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_loadCachedAccountsWithDictionaries:(id)dictionaries
{
  v43 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B319CC();
    }
  }

  self->_accountsLoaded = 1;
  v8 = +[IDSLogging Accounts];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    service = self->_service;
    *buf = 138412546;
    v40 = service;
    v41 = 2112;
    v42 = dictionariesCopy;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_INFO, "Re-loading cached accounts for service: %@ with dictionaries %@", buf, 0x16u);
  }

  v32 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [dictionariesCopy _copyForEnumerating];
  v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v31 = dictionariesCopy;
    v12 = 0;
    v13 = *v35;
    v14 = *MEMORY[0x1E69A5650];
    v15 = *MEMORY[0x1E69A5560];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        v17 = v12;
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        v12 = [v18 objectForKey:v14];

        v19 = [v18 objectForKey:v15];
        intValue = [v19 intValue];

        if (IDSIsValidAccountType())
        {
          v21 = [(_IDSAccountController *)self accountWithUniqueID:v12];
          if (v21)
          {
            v22 = v21;
            _internal = [v21 _internal];
            [_internal setAccountInfo:v18];
          }

          else
          {
            v22 = [[IDSAccount alloc] _initWithDictionary:v18 uniqueID:v12 serviceName:self->_service];
          }

          [v22 _setIsEnabled:[(NSMutableSet *)self->_enabledAccounts containsObject:v12]];
          [v32 addObject:v22];
        }

        else
        {
          v22 = +[IDSLogging IDSAccountController];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v40) = intValue;
            _os_log_error_impl(&dword_1959FF000, v22, OS_LOG_TYPE_ERROR, "Account loaded was of unknown account type %d, ignoring...", buf, 8u);
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);

    dictionariesCopy = v31;
  }

  cachedAccounts = self->_cachedAccounts;
  p_cachedAccounts = &self->_cachedAccounts;
  if (([(NSMutableSet *)cachedAccounts isEqualToSet:v32]& 1) == 0)
  {
    if ([(NSMutableSet *)*p_cachedAccounts count])
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
      {
        sub_195B31A64(p_cachedAccounts);
      }
    }

    v27 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v32];
    v28 = *p_cachedAccounts;
    *p_cachedAccounts = v27;

    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
    {
      sub_195B31AF4(v32);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)accountWithUniqueID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B31C80();
    }
  }

  internalAccounts = [(_IDSAccountController *)self internalAccounts];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allObjects = [internalAccounts allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        _internal = [v13 _internal];
        uniqueID = [_internal uniqueID];
        v16 = [uniqueID isEqualToIgnoringCase:dCopy];

        if (v16)
        {
          v10 = v13;
          goto LABEL_15;
        }
      }

      v10 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)accountWithLoginID:(id)d service:(id)service
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  serviceCopy = service;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B31D18();
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(_IDSAccountController *)self internalAccounts];
  v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        _internal = [v13 _internal];
        loginID = [_internal loginID];
        if (IMAreEmailsLogicallyTheSame())
        {
          _internal2 = [v13 _internal];
          serviceName = [_internal2 serviceName];
          v18 = [serviceName isEqualToIgnoringCase:serviceCopy];

          if (v18)
          {
            v10 = v13;
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

LABEL_16:

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_setupAccountWithLoginID:(id)d accountConfig:(id)config authToken:(id)token password:(id)password completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  configCopy = config;
  handlerCopy = handler;
  passwordCopy = password;
  tokenCopy = token;
  v17 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v17 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B31DB0();
    }
  }

  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  if (!self->_transactionIDToHandlersMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    transactionIDToHandlersMap = self->_transactionIDToHandlersMap;
    self->_transactionIDToHandlersMap = Mutable;
  }

  v23 = [handlerCopy copy];
  v24 = MEMORY[0x19A8BBEF0]();
  if (v24)
  {
    CFDictionarySetValue(self->_transactionIDToHandlersMap, stringGUID, v24);
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    *buf = 138413058;
    v30 = dCopy;
    v31 = 2112;
    v32 = service;
    v33 = 2112;
    v34 = stringGUID;
    v35 = 2112;
    v36 = configCopy;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Requesting setup of account: %@   service: %@  transaction: %@  accountConfig: %@", buf, 0x2Au);
  }

  v27 = +[IDSDaemonController sharedInstance];
  [v27 setupAccountWithLoginID:dCopy serviceName:self->_service accountType:1 accountConfig:configCopy authToken:tokenCopy password:passwordCopy transactionID:stringGUID];

  v28 = *MEMORY[0x1E69E9840];
}

- (void)setupAccountWithLoginID:(id)d aliases:(id)aliases password:(id)password completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  dCopy = d;
  aliasesCopy = aliases;
  passwordCopy = password;
  handlerCopy = handler;
  v10 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v10 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B31E48();
    }
  }

  theDict = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = aliasesCopy;
  v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    v17 = *MEMORY[0x1E69A5570];
    v18 = *MEMORY[0x1E69A5578];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v33 + 1) + 8 * i);
        v21 = MEMORY[0x1E695DF20];
        v22 = [MEMORY[0x1E696AD98] numberWithInt:3];
        v23 = [v21 dictionaryWithObjectsAndKeys:{v20, v17, v22, v18, 0}];
        [v13 addObject:v23];
      }

      v15 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v15);
  }

  if ([v13 count] && v13)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A5580], v13);
  }

  if ([v13 count])
  {
    allObjects = [obj allObjects];
    v25 = [allObjects arrayByApplyingSelector:sel_lowercaseString];

    if (v25)
    {
      CFDictionarySetValue(theDict, *MEMORY[0x1E69A5668], v25);
    }
  }

  [(_IDSAccountController *)self _setupAccountWithLoginID:dCopy accountConfig:theDict authToken:0 password:passwordCopy completionHandler:handlerCopy];

  v26 = *MEMORY[0x1E69E9840];
}

- (void)setupAccountWithSetupParameters:(id)parameters aliases:(id)aliases completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  aliasesCopy = aliases;
  handlerCopy = handler;
  v29 = [parametersCopy objectForKey:*MEMORY[0x1E69A4900]];
  value = [parametersCopy objectForKey:*MEMORY[0x1E69A4928]];
  v26 = [parametersCopy objectForKey:*MEMORY[0x1E69A4908]];
  v31 = parametersCopy;
  v9 = [parametersCopy objectForKey:*MEMORY[0x1E69A4930]];
  v25 = [v9 objectForKey:@"uri"];

  theDict = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = aliasesCopy;
  v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    v14 = *MEMORY[0x1E69A5570];
    v15 = *MEMORY[0x1E69A5578];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = MEMORY[0x1E695DF20];
        lowercaseString = [*(*(&v33 + 1) + 8 * i) lowercaseString];
        v19 = [MEMORY[0x1E696AD98] numberWithInt:3];
        v20 = [v17 dictionaryWithObjectsAndKeys:{lowercaseString, v14, v19, v15, 0}];
        [v10 addObject:v20];
      }

      v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }

  v21 = [v31 objectForKey:*MEMORY[0x1E69A4918]];
  v22 = [v21 __imArrayByApplyingBlock:&unk_1F09E62E0];

  if (value)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A5590], value);
  }

  if (v29)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A5588], v29);
  }

  if ([v25 length] && v25)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A5628], v25);
  }

  if ([v22 count] && v22)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A5668], v22);
  }

  if ([v10 count] && v10)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A5580], v10);
  }

  [(_IDSAccountController *)self _setupAccountWithLoginID:v29 accountConfig:theDict authToken:v26 password:0 completionHandler:handlerCopy];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)addAccount:(id)account
{
  accountCopy = account;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B31EE0();
    }
  }

  if (accountCopy)
  {
    v8 = +[IDSDaemonController sharedInstance];
    _internal = [accountCopy _internal];
    loginID = [_internal loginID];
    service = self->_service;
    _internal2 = [accountCopy _internal];
    uniqueID = [_internal2 uniqueID];
    _internal3 = [accountCopy _internal];
    accountType = [_internal3 accountType];
    [accountCopy _internal];
    v15 = v14 = self;
    accountInfo = [v15 accountInfo];
    [v8 addAccountWithLoginID:loginID serviceName:service uniqueID:uniqueID accountType:accountType accountInfo:accountInfo];

    [(_IDSAccountController *)v14 _loadCachedAccounts];
    [(NSMutableSet *)v14->_cachedAccounts addObject:accountCopy];
  }
}

- (void)_removeAndDeregisterAccount:(id)account
{
  accountCopy = account;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B31F78();
    }
  }

  if (accountCopy)
  {
    _internal = [accountCopy _internal];
    uniqueID = [_internal uniqueID];

    v10 = +[IDSDaemonController sharedInstance];
    [v10 _removeAndDeregisterAccount:uniqueID];

    [(NSMutableDictionary *)self->_pendingAccountsToRemove setObject:accountCopy forKey:uniqueID];
    [(_IDSAccountController *)self _loadCachedAccounts];
    [(NSMutableSet *)self->_cachedAccounts removeObject:accountCopy];
  }
}

- (void)_removeAccount:(id)account
{
  accountCopy = account;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B32010();
    }
  }

  if (accountCopy)
  {
    v8 = [(_IDSAccountController *)self accountWithUniqueID:accountCopy];
    if (v8)
    {
      v9 = +[IDSDaemonController sharedInstance];
      [v9 _removeAccount:accountCopy];

      [(_IDSAccountController *)self _loadCachedAccounts];
      [(NSMutableSet *)self->_cachedAccounts removeObject:v8];
    }
  }
}

- (void)enableAccount:(id)account
{
  v22 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B32140();
    }
  }

  _internal = [accountCopy _internal];
  uniqueID = [_internal uniqueID];

  if (accountCopy)
  {
    if (uniqueID)
    {
      p_enabledAccounts = &self->_enabledAccounts;
      if (([(NSMutableSet *)self->_enabledAccounts containsObject:uniqueID]& 1) == 0)
      {
        registration = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
        {
          _internal2 = [accountCopy _internal];
          uniqueID2 = [_internal2 uniqueID];
          v20 = 138412290;
          v21 = uniqueID2;
          _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Client request to enable account ID: %@", &v20, 0xCu);
        }

        v14 = +[IDSDaemonController sharedInstance];
        [v14 enableAccount:uniqueID];

        [(_IDSAccountController *)self _loadCachedAccounts];
        enabledAccounts = self->_enabledAccounts;
        _internal3 = [accountCopy _internal];
        uniqueID3 = [_internal3 uniqueID];
        [(NSMutableSet *)enabledAccounts addObject:uniqueID3];

        [accountCopy _setIsEnabled:1];
        registration2 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
        {
          sub_195B31C18(p_enabledAccounts);
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)disableAccount:(id)account
{
  v33 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B321D8();
    }
  }

  _internal = [accountCopy _internal];
  uniqueID = [_internal uniqueID];

  registrationError = [accountCopy registrationError];
  if (accountCopy)
  {
    if (uniqueID)
    {
      p_enabledAccounts = &self->_enabledAccounts;
      if (([(NSMutableSet *)self->_enabledAccounts containsObject:uniqueID]& 1) != 0)
      {
        registration = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
        {
          _internal2 = [accountCopy _internal];
          uniqueID2 = [_internal2 uniqueID];
          v31 = 138412290;
          v32 = uniqueID2;
          _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Client request to disable account ID: %@", &v31, 0xCu);
        }

        v15 = +[IDSDaemonController sharedInstance];
        _internal3 = [accountCopy _internal];
        uniqueID3 = [_internal3 uniqueID];
        [v15 disableAccount:uniqueID3];

        [(_IDSAccountController *)self _loadCachedAccounts];
        enabledAccounts = self->_enabledAccounts;
        _internal4 = [accountCopy _internal];
        uniqueID4 = [_internal4 uniqueID];
        [(NSMutableSet *)enabledAccounts removeObject:uniqueID4];

        [accountCopy _setIsEnabled:0];
        registration2 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
        {
          sub_195B31C18(p_enabledAccounts);
        }

LABEL_17:

        goto LABEL_18;
      }
    }
  }

  if ((registrationError - 27) <= 2)
  {
    keyTransparency = [MEMORY[0x1E69A5270] KeyTransparency];
    if (os_log_type_enabled(keyTransparency, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      v32 = uniqueID;
      _os_log_impl(&dword_1959FF000, keyTransparency, OS_LOG_TYPE_DEFAULT, "Account has KT error, we're going to force disable it. { accountID: %@ }", &v31, 0xCu);
    }

    v23 = +[IDSDaemonController sharedInstance];
    _internal5 = [accountCopy _internal];
    uniqueID5 = [_internal5 uniqueID];
    [v23 forceDisableAccount:uniqueID5];

    [(_IDSAccountController *)self _loadCachedAccounts];
    v27 = self->_enabledAccounts;
    v26 = &self->_enabledAccounts;
    _internal6 = [accountCopy _internal];
    uniqueID6 = [_internal6 uniqueID];
    [(NSMutableSet *)v27 removeObject:uniqueID6];

    [accountCopy _setIsEnabled:0];
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
    {
      sub_195B31C18(v26);
    }

    goto LABEL_17;
  }

LABEL_18:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)accountAdded:(id)added
{
  addedCopy = added;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B32270();
    }
  }

  v8 = *MEMORY[0x1E69A5640];
  v9 = [addedCopy objectForKey:*MEMORY[0x1E69A5640]];
  v10 = v9;
  if (addedCopy && self->_service && (([v9 isEqualToString:?] & 1) != 0 || -[NSString isEqualToString:](self->_service, "isEqualToString:", *MEMORY[0x1E69A51B8])))
  {
    v11 = [addedCopy objectForKey:*MEMORY[0x1E69A5650]];
    v12 = [addedCopy objectForKey:v8];
    v13 = [addedCopy objectForKey:*MEMORY[0x1E69A5560]];
    [v13 intValue];

    if (IDSIsValidAccountType())
    {
      if ([v11 length])
      {
        v14 = [(_IDSAccountController *)self accountWithUniqueID:v11];
        if (v14)
        {
          v15 = v14;
          _internal = [v14 _internal];
          [_internal setAccountInfo:addedCopy];

          v17 = v20;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v18 = sub_195A8AD84;
        }

        else
        {
          v15 = [[IDSAccount alloc] _initWithDictionary:addedCopy uniqueID:v11 serviceName:v12];
          [v15 _setIsEnabled:{-[NSMutableSet containsObject:](self->_enabledAccounts, "containsObject:", v11)}];
          [(NSMutableSet *)self->_cachedAccounts addObject:v15];
          v17 = v21;
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v18 = sub_195A8AD08;
        }

        v17[2] = v18;
        v17[3] = &unk_1E74412A8;
        v17[4] = self;
        v19 = v15;
        v17[5] = v19;
        [(_IDSAccountController *)self _callDelegatesWithBlock:v17];

        [(_IDSAccountController *)self _updateLocalAccountVisibility];
      }

      else
      {
        v19 = +[IDSLogging IDSAccountController];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_195B3237C();
        }
      }
    }

    else
    {
      v19 = +[IDSLogging IDSAccountController];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_195B32308();
      }
    }
  }
}

- (void)accountRemoved:(id)removed
{
  removedCopy = removed;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B323EC();
    }
  }

  v8 = [removedCopy objectForKey:*MEMORY[0x1E69A5640]];
  v9 = v8;
  if (removedCopy && self->_service && (([v8 isEqualToString:?] & 1) != 0 || -[NSString isEqualToString:](self->_service, "isEqualToString:", *MEMORY[0x1E69A51B8])))
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195B32484();
    }

    v11 = [removedCopy objectForKey:*MEMORY[0x1E69A5650]];
    if ([v11 length])
    {
      v12 = [(_IDSAccountController *)self accountWithUniqueID:v11];
      if (v12 || ([(NSMutableDictionary *)self->_pendingAccountsToRemove objectForKeyedSubscript:v11], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = v12;
        [(NSMutableSet *)self->_cachedAccounts removeObject:v12];
        [(NSMutableDictionary *)self->_pendingAccountsToRemove removeObjectForKey:v11];
        v15 = MEMORY[0x1E69E9820];
        v16 = 3221225472;
        v17 = sub_195A8B05C;
        v18 = &unk_1E74412A8;
        selfCopy = self;
        v20 = v13;
        registration2 = v13;
        [(_IDSAccountController *)self _callDelegatesWithBlock:&v15];
        [(_IDSAccountController *)self _updateLocalAccountVisibility:v15];
      }

      else
      {
        registration2 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
        {
          sub_195B324F4();
        }
      }
    }

    else
    {
      registration2 = +[IDSLogging IDSAccountController];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
      {
        sub_195B3255C();
      }
    }
  }
}

- (void)accountUpdated:(id)updated
{
  v36 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B325CC();
    }
  }

  v8 = [updatedCopy objectForKey:*MEMORY[0x1E69A5640]];
  v9 = v8;
  if (updatedCopy && self->_service && (([v8 isEqualToString:?] & 1) != 0 || -[NSString isEqualToString:](self->_service, "isEqualToString:", *MEMORY[0x1E69A51B8])))
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v33 = updatedCopy;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_INFO, "Received account updated %@ for topic %@", buf, 0x16u);
    }

    v11 = [updatedCopy objectForKey:*MEMORY[0x1E69A5650]];
    if (![v11 length])
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_195B327B0();
      }

      goto LABEL_30;
    }

    v12 = [(_IDSAccountController *)self accountWithUniqueID:v11];
    warning = v12;
    if (v12)
    {
      _internal = [v12 _internal];
      accountInfo = [_internal accountInfo];
      v16 = IMAreObjectsLogicallySame();

      if (v16)
      {
LABEL_30:

        goto LABEL_31;
      }

      _internal2 = [warning _internal];
      [_internal2 setAccountInfo:updatedCopy];

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_195A8B508;
      v30[3] = &unk_1E74412A8;
      v30[4] = self;
      v31 = warning;
      [(_IDSAccountController *)self _callDelegatesWithBlock:v30];
    }

    else
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
      {
        sub_195B32664();
      }

      v19 = [updatedCopy objectForKey:*MEMORY[0x1E69A5560]];
      [v19 intValue];

      if ((IDSIsValidAccountType() & 1) == 0)
      {
        v21 = +[IDSLogging IDSAccountController];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_195B326CC();
        }

        goto LABEL_30;
      }

      v20 = [[IDSAccount alloc] _initWithDictionary:updatedCopy uniqueID:v11 serviceName:v9];
      if (v20)
      {
        [v20 _setIsEnabled:{-[NSMutableSet containsObject:](self->_enabledAccounts, "containsObject:", v11)}];
        [(NSMutableSet *)self->_cachedAccounts addObject:v20];
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = sub_195A8B584;
        v27 = &unk_1E74412A8;
        selfCopy = self;
        v29 = v20;
        [(_IDSAccountController *)self _callDelegatesWithBlock:&v24];
      }

      else
      {
        warning2 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(warning2, OS_LOG_TYPE_ERROR))
        {
          sub_195B32740();
        }
      }
    }

    [(_IDSAccountController *)self _updateLocalAccountVisibility:v24];
    goto LABEL_30;
  }

LABEL_31:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)accountsChanged:(id)changed forTopic:(id)topic
{
  v83 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  topicCopy = topic;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B32820();
    }
  }

  if ([topicCopy isEqualToIgnoringCase:self->_service])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    v49 = changedCopy;
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      service = self->_service;
      v47 = [(NSMutableSet *)self->_cachedAccounts __imSetByApplyingBlock:&unk_1F09E6300];
      *buf = 138413058;
      v76 = v49;
      v77 = 2112;
      v78 = topicCopy;
      v79 = 2112;
      v80 = service;
      changedCopy = v49;
      v81 = 2112;
      v82 = v47;
      _os_log_debug_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEBUG, "Received accounts changed %@ for topic %@  service: %@  (Cached: %@)", buf, 0x2Au);
    }

    v53 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    _copyForEnumerating = [changedCopy _copyForEnumerating];
    cachedAccounts = self->_cachedAccounts;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = sub_195A8BEA8;
    v71[3] = &unk_1E74412F0;
    v48 = v12;
    v72 = v48;
    [(NSMutableSet *)cachedAccounts enumerateObjectsUsingBlock:v71];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = _copyForEnumerating;
    v15 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
    v51 = topicCopy;
    if (v15)
    {
      v16 = v15;
      v17 = *v68;
      v18 = *MEMORY[0x1E69A51B8];
      v56 = *MEMORY[0x1E69A5650];
      v50 = *MEMORY[0x1E69A5560];
      v52 = *MEMORY[0x1E69A51B8];
      do
      {
        v19 = 0;
        v54 = v16;
        do
        {
          if (*v68 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v67 + 1) + 8 * v19);
          v21 = topicCopy;
          if (-[NSString isEqualToString:](self->_service, "isEqualToString:", v18) || [v21 isEqualToString:self->_service])
          {
            v22 = [v20 objectForKey:v56];
            if (v22)
            {
              [v53 addObject:v22];
              v23 = [(_IDSAccountController *)self accountWithUniqueID:v22];
              registration3 = v23;
              if (v23)
              {
                _internal = [v23 _internal];
                accountInfo = [_internal accountInfo];
                v27 = IMAreObjectsLogicallySame();

                if ((v27 & 1) == 0)
                {
                  _internal2 = [registration3 _internal];
                  [_internal2 setAccountInfo:v20];

                  v65[0] = MEMORY[0x1E69E9820];
                  v65[1] = 3221225472;
                  v65[2] = sub_195A8BF10;
                  v65[3] = &unk_1E74412A8;
                  v65[4] = self;
                  registration3 = registration3;
                  v66 = registration3;
                  [(_IDSAccountController *)self _callDelegatesWithBlock:v65];
                }

                topicCopy = v51;
              }

              else
              {
                registration2 = [MEMORY[0x1E69A6138] registration];
                if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v76 = v22;
                  _os_log_debug_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEBUG, "Did not find an existing account to update with unique ID %@", buf, 0xCu);
                }

                v30 = [v20 objectForKey:v50];
                intValue = [v30 intValue];

                if (IDSIsValidAccountType())
                {
                  v32 = [[IDSAccount alloc] _initWithDictionary:v20 uniqueID:v22 serviceName:v21];
                  if (v32)
                  {
                    [v32 _setIsEnabled:{-[NSMutableSet containsObject:](self->_enabledAccounts, "containsObject:", v22)}];
                    [(NSMutableSet *)self->_cachedAccounts addObject:v32];
                    v63[0] = MEMORY[0x1E69E9820];
                    v63[1] = 3221225472;
                    v63[2] = sub_195A8BF8C;
                    v63[3] = &unk_1E74412A8;
                    v63[4] = self;
                    v64 = v32;
                    [(_IDSAccountController *)self _callDelegatesWithBlock:v63];
                  }

                  else
                  {
                    warning = [MEMORY[0x1E69A6138] warning];
                    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v76 = v20;
                      _os_log_error_impl(&dword_1959FF000, warning, OS_LOG_TYPE_ERROR, "Could not create IDSAccount with info %@", buf, 0xCu);
                    }
                  }
                }

                else
                {
                  v33 = +[IDSLogging IDSAccountController];
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109120;
                    LODWORD(v76) = intValue;
                    _os_log_error_impl(&dword_1959FF000, v33, OS_LOG_TYPE_ERROR, "Account changed was of unknown account type %d, ignoring...", buf, 8u);
                  }
                }
              }

              v18 = v52;
              v16 = v54;
            }

            else
            {
              registration3 = [MEMORY[0x1E69A6138] registration];
              if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v76 = v20;
                _os_log_debug_impl(&dword_1959FF000, registration3, OS_LOG_TYPE_DEBUG, "No uniqueID for account %@, ignoring...", buf, 0xCu);
              }
            }
          }

          ++v19;
        }

        while (v16 != v19);
        v16 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v16);
    }

    if ([v48 count])
    {
      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEBUG))
      {
        sub_195B328B8();
      }
    }

    if ([v53 count])
    {
      registration5 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEBUG))
      {
        sub_195B32920();
      }
    }

    [v48 minusSet:v53];
    if ([v48 count])
    {
      registration6 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEBUG))
      {
        sub_195B32988();
      }
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v38 = v48;
    v39 = [v38 countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = 0;
      v42 = *v60;
      do
      {
        v43 = 0;
        v44 = v41;
        do
        {
          if (*v60 != v42)
          {
            objc_enumerationMutation(v38);
          }

          v41 = [(_IDSAccountController *)self accountWithUniqueID:*(*(&v59 + 1) + 8 * v43)];

          if (v41)
          {
            [(NSMutableSet *)self->_cachedAccounts removeObject:v41];
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = sub_195A8C008;
            v57[3] = &unk_1E74412A8;
            v57[4] = self;
            v58 = v41;
            [(_IDSAccountController *)self _callDelegatesWithBlock:v57];
          }

          ++v43;
          v44 = v41;
        }

        while (v40 != v43);
        v40 = [v38 countByEnumeratingWithState:&v59 objects:v73 count:16];
      }

      while (v40);

      topicCopy = v51;
    }

    [(_IDSAccountController *)self _updateLocalAccountVisibility];
    changedCopy = v49;
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)setupCompleteForAccount:(id)account transactionID:(id)d setupError:(id)error
{
  v32 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dCopy = d;
  errorCopy = error;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B329F0();
    }
  }

  if ([dCopy length])
  {
    registration4 = [(NSMutableDictionary *)self->_transactionIDToHandlersMap objectForKey:dCopy];
    if (registration4)
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v27 = accountCopy;
        v28 = 2112;
        v29 = dCopy;
        v30 = 2112;
        v31 = errorCopy;
        _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "SetupCompleteForAccount %@ transactionID %@ setupError %@", buf, 0x20u);
      }

      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        v17 = MEMORY[0x19A8BBEF0](registration4);
        *buf = 134218242;
        v27 = v17;
        v28 = 2112;
        v29 = dCopy;
        _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "Setup handler block %p for transactionID %@", buf, 0x16u);
      }

      v18 = [(_IDSAccountController *)self accountWithUniqueID:accountCopy];
      if (v18)
      {
        registration3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v20 = dispatch_queue_create("IDSAccountController-setupCompleteQueue", registration3);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_195A8C3E0;
        block[3] = &unk_1E743E9B8;
        v23 = v18;
        v24 = errorCopy;
        v25 = registration4;
        dispatch_async(v20, block);
        [(NSMutableDictionary *)self->_transactionIDToHandlersMap removeObjectForKey:dCopy];
      }

      else
      {
        registration3 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1959FF000, registration3, OS_LOG_TYPE_DEFAULT, "Account setup completed but we don't have an account, ignoring...", buf, 2u);
        }
      }
    }
  }

  else
  {
    registration4 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, registration4, OS_LOG_TYPE_DEFAULT, "Setup complete - no transaction ID, bailing...", buf, 2u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)accountEnabled:(id)enabled onService:(id)service
{
  v25 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  serviceCopy = service;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B32A88();
    }
  }

  if (![enabledCopy length])
  {
    warning = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_195B32C34();
    }

    goto LABEL_23;
  }

  if (![serviceCopy length])
  {
    warning = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_195B32BF8();
    }

    goto LABEL_23;
  }

  if (self->_service && (([serviceCopy isEqualToString:?] & 1) != 0 || -[NSString isEqualToString:](self->_service, "isEqualToString:", *MEMORY[0x1E69A51B8])))
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195B32B20();
    }

    v12 = [(_IDSAccountController *)self accountWithUniqueID:enabledCopy];
    warning = v12;
    if (v12)
    {
      [v12 _setIsEnabled:1];
      [(NSMutableSet *)self->_enabledAccounts addObject:enabledCopy];
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
      {
        sub_195B32B90();
      }

      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = sub_195A8C7D0;
      v20 = &unk_1E74412A8;
      selfCopy = self;
      warning = warning;
      v22 = warning;
      [(_IDSAccountController *)self _callDelegatesWithBlock:&v17];
      [(_IDSAccountController *)self _updateLocalAccountVisibility:v17];
    }

    else
    {
      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = enabledCopy;
        _os_log_impl(&dword_1959FF000, registration3, OS_LOG_TYPE_DEFAULT, "Did not find an existing account to enable with unique ID %@", buf, 0xCu);
      }
    }

LABEL_23:
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)accountDisabled:(id)disabled onService:(id)service
{
  v24 = *MEMORY[0x1E69E9840];
  disabledCopy = disabled;
  serviceCopy = service;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B32C70();
    }
  }

  if (![disabledCopy length])
  {
    warning = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_195B32E1C();
    }

    goto LABEL_23;
  }

  if (![serviceCopy length])
  {
    warning = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_195B32DE0();
    }

    goto LABEL_23;
  }

  if (self->_service && (([serviceCopy isEqualToString:?] & 1) != 0 || -[NSString isEqualToString:](self->_service, "isEqualToString:", *MEMORY[0x1E69A51B8])))
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195B32D08();
    }

    warning = [(_IDSAccountController *)self accountWithUniqueID:disabledCopy];
    [(NSMutableSet *)self->_enabledAccounts removeObject:disabledCopy];
    [warning _setIsEnabled:0];
    registration2 = [MEMORY[0x1E69A6138] registration];
    v14 = registration2;
    if (warning)
    {
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
      {
        sub_195B32D78();
      }

      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = sub_195A8CB10;
      v19 = &unk_1E74412A8;
      selfCopy = self;
      warning = warning;
      v21 = warning;
      [(_IDSAccountController *)self _callDelegatesWithBlock:&v16];
      [(_IDSAccountController *)self _updateLocalAccountVisibility:v16];
    }

    else
    {
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = disabledCopy;
        _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Did not find an existing account to disable with unique ID %@", buf, 0xCu);
      }
    }

LABEL_23:
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end