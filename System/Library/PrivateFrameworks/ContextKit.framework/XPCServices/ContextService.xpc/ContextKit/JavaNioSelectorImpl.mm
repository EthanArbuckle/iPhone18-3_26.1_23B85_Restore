@interface JavaNioSelectorImpl
- (id)checkClosed;
- (id)ensurePollFdsCapacity;
- (id)keys;
- (id)register__WithJavaNioChannelsSpiAbstractSelectableChannel:(id)a3 withInt:(int)a4 withId:(id)a5;
- (id)selectedKeys;
- (id)wakeup;
- (int)selectWithLong:(int64_t)a3;
- (uint64_t)doCancel;
- (void)dealloc;
- (void)implCloseSelector;
@end

@implementation JavaNioSelectorImpl

- (void)implCloseSelector
{
  [(JavaNioSelectorImpl *)self wakeup];
  objc_sync_enter(self);
  unmodifiableKeys = self->unmodifiableKeys_;
  objc_sync_enter(unmodifiableKeys);
  selectedKeys = self->selectedKeys_;
  objc_sync_enter(selectedKeys);
  LibcoreIoIoUtils_closeWithJavaIoFileDescriptor_(self->wakeupIn_);
  LibcoreIoIoUtils_closeWithJavaIoFileDescriptor_(self->wakeupOut_);
  [JavaNioSelectorImpl doCancel]_0(self);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  mutableKeys = self->mutableKeys_;
  if (!mutableKeys)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilSet *)self->mutableKeys_ countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(mutableKeys);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        [(JavaNioChannelsSpiAbstractSelector *)self deregisterWithJavaNioChannelsSpiAbstractSelectionKey:v9, v10];
      }

      v6 = [(JavaUtilSet *)mutableKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selectedKeys);
  objc_sync_exit(unmodifiableKeys);
  objc_sync_exit(self);
}

- (uint64_t)doCancel
{
  v2 = [a1 cancelledKeys];
  objc_sync_enter(v2);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  if ([v2 size] < 1)
  {
    v3 = 0;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = 0;
    v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = a1[6];
          if (!v7)
          {
            goto LABEL_17;
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          [v7 removeWithId:v8];
          objc_opt_class();
          if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
          {
            JreThrowClassCastException();
          }

          [a1 deregisterWithJavaNioChannelsSpiAbstractSelectionKey:v8];
          v9 = a1[8];
          if (!v9)
          {
LABEL_17:
            JreThrowNullPointerException();
          }

          v3 = v3 + [v9 removeWithId:v8];
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    [v2 clear];
  }

  objc_sync_exit(v2);
  return v3;
}

- (id)register__WithJavaNioChannelsSpiAbstractSelectableChannel:(id)a3 withInt:(int)a4 withId:(id)a5
{
  v9 = [(JavaNioChannelsSpiAbstractSelector *)self provider];
  if (!v9 || !a3)
  {
    JreThrowNullPointerException();
  }

  if (([v9 isEqual:{objc_msgSend(a3, "provider")}] & 1) == 0)
  {
    v14 = new_JavaNioChannelsIllegalSelectorException_init();
    objc_exception_throw(v14);
  }

  objc_sync_enter(self);
  unmodifiableKeys = self->unmodifiableKeys_;
  objc_sync_enter(unmodifiableKeys);
  v11 = new_JavaNioSelectionKeyImpl_initWithJavaNioChannelsSpiAbstractSelectableChannel_withInt_withId_withJavaNioSelectorImpl_(a3, a4, a5, self);
  mutableKeys = self->mutableKeys_;
  if (!mutableKeys)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)mutableKeys addWithId:v11];
  [JavaNioSelectorImpl ensurePollFdsCapacity]_0(self);
  objc_sync_exit(unmodifiableKeys);
  objc_sync_exit(self);
  return v11;
}

- (id)ensurePollFdsCapacity
{
  v2 = *(a1 + 96);
  if (!v2)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  while (1)
  {
    v3 = [v2 size];
    v4 = *(a1 + 48);
    if (!v4)
    {
      goto LABEL_5;
    }

    result = [v4 size];
    if (v3 >= result + 1)
    {
      return result;
    }

    [*(a1 + 96) addWithId:new_LibcoreIoStructPollfd_init()];
    v2 = *(a1 + 96);
    if (!v2)
    {
      goto LABEL_5;
    }
  }
}

- (id)keys
{
  objc_sync_enter(self);
  [JavaNioSelectorImpl checkClosed]_0(self);
  unmodifiableKeys = self->unmodifiableKeys_;
  objc_sync_exit(self);
  return unmodifiableKeys;
}

- (id)checkClosed
{
  result = [a1 isOpen];
  if ((result & 1) == 0)
  {
    v2 = new_JavaNioChannelsClosedSelectorException_init();
    objc_exception_throw(v2);
  }

  return result;
}

- (int)selectWithLong:(int64_t)a3
{
  if (a3 < 0)
  {
    v11 = JreStrcat("$J", a2, a3, v3, v4, v5, v6, v7, @"timeout < 0: ");
    v12 = new_JavaLangIllegalArgumentException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = -1;
  }

  return sub_1001A84E8(self, v9);
}

- (id)selectedKeys
{
  objc_sync_enter(self);
  [JavaNioSelectorImpl checkClosed]_0(self);
  selectedKeys = self->selectedKeys_;
  objc_sync_exit(self);
  return selectedKeys;
}

- (id)wakeup
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  wakeupOut = self->wakeupOut_;
  v5 = 1;
  [LibcoreIoLibcore_os_ writeWithJavaIoFileDescriptor:wakeupOut withByteArray:+[IOSByteArray arrayWithBytes:count:](IOSByteArray withInt:"arrayWithBytes:count:" withInt:{&v5, 1), 0, 1}];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioSelectorImpl;
  [(JavaNioChannelsSpiAbstractSelector *)&v3 dealloc];
}

@end