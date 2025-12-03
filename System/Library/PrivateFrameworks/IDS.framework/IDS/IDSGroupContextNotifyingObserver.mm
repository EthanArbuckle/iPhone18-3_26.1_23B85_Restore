@interface IDSGroupContextNotifyingObserver
- (IDSGroupContextNotifyingObserver)init;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)didCacheGroup:(id)group completion:(id)completion;
- (void)didCreateGroup:(id)group completion:(id)completion;
- (void)didReceiveDecryptionFailureForGroup:(id)group completion:(id)completion;
- (void)didReceiveRegistrationIdentityUpdateWithCompletion:(id)completion;
- (void)didUpdateGroup:(id)group withNewGroup:(id)newGroup completion:(id)completion;
- (void)removeDelegate:(id)delegate;
@end

@implementation IDSGroupContextNotifyingObserver

- (IDSGroupContextNotifyingObserver)init
{
  if (_IDSRunningInDaemon())
  {
    groupContext = [MEMORY[0x1E699BB90] groupContext];
    if (os_log_type_enabled(groupContext, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, groupContext);
    }

    selfCopy = 0;
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
    selfCopy = self;
  }

  return selfCopy;
}

- (void)addDelegate:(id)delegate
{
  if (delegate)
  {
    [(NSMutableSet *)self->_delegates addObject:?];
  }
}

- (void)removeDelegate:(id)delegate
{
  if (delegate)
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

- (void)didCreateGroup:(id)group completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  completionCopy = completion;
  if (groupCopy)
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
            [v13 didCreateGroup:groupCopy completion:{completionCopy, v15}];
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

- (void)didCacheGroup:(id)group completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  completionCopy = completion;
  if (groupCopy)
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
            [v13 didCacheGroup:groupCopy completion:{completionCopy, v15}];
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

- (void)didUpdateGroup:(id)group withNewGroup:(id)newGroup completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  newGroupCopy = newGroup;
  completionCopy = completion;
  if (groupCopy && newGroupCopy)
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
            [v16 didUpdateGroup:groupCopy withNewGroup:newGroupCopy completion:{completionCopy, v18}];
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

- (void)didReceiveDecryptionFailureForGroup:(id)group completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  completionCopy = completion;
  if (groupCopy)
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
            [v13 didReceiveDecryptionFailureForGroup:groupCopy completion:{completionCopy, v15}];
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

- (void)didReceiveRegistrationIdentityUpdateWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  groupContext = [MEMORY[0x1E699BB90] groupContext];
  if (os_log_type_enabled(groupContext, OS_LOG_TYPE_INFO))
  {
    delegates = self->_delegates;
    *buf = 138543362;
    v20 = delegates;
    _os_log_impl(&dword_1959FF000, groupContext, OS_LOG_TYPE_INFO, "Did receive registration identity update {delegates: %{public}@}", buf, 0xCu);
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
          [v12 didReceiveRegistrationIdentityUpdateWithCompletion:{completionCopy, v14}];
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