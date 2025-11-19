@interface IDSGroupContextNotifyingObserver
- (IDSGroupContextNotifyingObserver)init;
- (void)addDelegate:(id)a3;
- (void)dealloc;
- (void)didCacheGroup:(id)a3 completion:(id)a4;
- (void)didCreateGroup:(id)a3 completion:(id)a4;
- (void)didReceiveDecryptionFailureForGroup:(id)a3 completion:(id)a4;
- (void)didReceiveRegistrationIdentityUpdateWithCompletion:(id)a3;
- (void)didUpdateGroup:(id)a3 withNewGroup:(id)a4 completion:(id)a5;
- (void)removeDelegate:(id)a3;
@end

@implementation IDSGroupContextNotifyingObserver

- (IDSGroupContextNotifyingObserver)init
{
  if (_IDSRunningInDaemon())
  {
    v3 = [MEMORY[0x1E699BB90] groupContext];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v3);
    }

    v4 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IDSGroupContextNotifyingObserver;
    v5 = [(IDSGroupContextNotifyingObserver *)&v9 init];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      delegates = v5->_delegates;
      v5->_delegates = v6;
    }

    self = v5;
    v4 = self;
  }

  return v4;
}

- (void)addDelegate:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_delegates addObject:?];
  }
}

- (void)removeDelegate:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_delegates removeObject:?];
  }
}

- (void)dealloc
{
  delegates = self->_delegates;
  self->_delegates = 0;

  v4.receiver = self;
  v4.super_class = IDSGroupContextNotifyingObserver;
  [(IDSGroupContextNotifyingObserver *)&v4 dealloc];
}

- (void)didCreateGroup:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_delegates;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 didCreateGroup:v6 completion:{v7, v15}];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)didCacheGroup:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_delegates;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 didCacheGroup:v6 completion:{v7, v15}];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateGroup:(id)a3 withNewGroup:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = self->_delegates;
    v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 didUpdateGroup:v8 withNewGroup:v9 completion:{v10, v18}];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveDecryptionFailureForGroup:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_delegates;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 didReceiveDecryptionFailureForGroup:v6 completion:{v7, v15}];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveRegistrationIdentityUpdateWithCompletion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E699BB90] groupContext];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    delegates = self->_delegates;
    *buf = 138543362;
    v20 = delegates;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_INFO, "Did receive registration identity update {delegates: %{public}@}", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_delegates;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 didReceiveRegistrationIdentityUpdateWithCompletion:{v4, v14}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end