@interface JavaNioChannelsSpiAbstractSelectableChannel
- (BOOL)isBlocking;
- (BOOL)isRegistered;
- (uint64_t)containsValidKeys;
- (void)dealloc;
- (void)deregisterWithJavaNioChannelsSelectionKey:(id)key;
- (void)implCloseChannel;
@end

@implementation JavaNioChannelsSpiAbstractSelectableChannel

- (BOOL)isRegistered
{
  objc_sync_enter(self);
  v3 = *(&self->provider_ + 7);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  isEmpty = [v3 isEmpty];
  objc_sync_exit(self);
  return isEmpty ^ 1;
}

- (void)implCloseChannel
{
  objc_sync_enter(self);
  [(JavaNioChannelsSpiAbstractSelectableChannel *)self implCloseSelectableChannel];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(&self->provider_ + 7);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = [*(&self->provider_ + 7) countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (v7)
        {
          [v7 cancel];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  objc_sync_exit(self);
}

- (BOOL)isBlocking
{
  selfCopy = self;
  v3 = *(&self->keyList_ + 7);
  objc_sync_enter(v3);
  LOBYTE(selfCopy) = selfCopy->isBlocking_;
  objc_sync_exit(v3);
  return selfCopy;
}

- (uint64_t)containsValidKeys
{
  objc_sync_enter(self);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(self + 39);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = [*(self + 39) countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (v6 && ([v6 isValid] & 1) != 0)
        {
          v7 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_13:
  objc_sync_exit(self);
  return v7;
}

- (void)deregisterWithJavaNioChannelsSelectionKey:(id)key
{
  objc_sync_enter(self);
  v5 = *(&self->provider_ + 7);
  if (v5)
  {
    [v5 removeWithId:key];
  }

  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioChannelsSpiAbstractSelectableChannel;
  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)&v3 dealloc];
}

@end