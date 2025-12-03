@interface JavaLangThreadGroup
- (BOOL)parentOfWithJavaLangThreadGroup:(id)group;
- (JavaLangThreadGroup)init;
- (JavaLangThreadGroup)initWithNSString:(id)string;
- (NSString)description;
- (int)activeCount;
- (int)activeGroupCount;
- (void)addWithJavaLangThread:(id)thread;
- (void)dealloc;
- (void)removeWithJavaLangThread:(id)thread;
- (void)uncaughtExceptionWithJavaLangThread:(id)thread withJavaLangThrowable:(id)throwable;
@end

@implementation JavaLangThreadGroup

- (JavaLangThreadGroup)init
{
  self->maxPriority_ = 10;
  v3 = [IOSObjectArray newArrayWithLength:5 type:JavaLangThread_class_()];
  JreStrongAssignAndConsume(&self->childrenThreads_, v3);
  if (qword_1005553E0 != -1)
  {
    sub_10024CA04();
  }

  JreStrongAssignAndConsume(&self->childrenGroups_, [IOSObjectArray newArrayWithLength:3 type:qword_1005553D8]);
  JreStrongAssignAndConsume(&self->childrenGroupsLock_, [JavaLangThreadGroup_ChildrenGroupsLock alloc]);
  JreStrongAssignAndConsume(&self->childrenThreadsLock_, [JavaLangThreadGroup_ChildrenThreadsLock alloc]);
  JreStrongAssign(&self->name_, @"system");
  return self;
}

- (JavaLangThreadGroup)initWithNSString:(id)string
{
  v5 = JavaLangThread_currentThread();
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  JavaLangThreadGroup_initWithJavaLangThreadGroup_withNSString_(self, [(JavaLangThread *)v5 getThreadGroup], string);
  return self;
}

- (int)activeCount
{
  numThreads = self->numThreads_;
  childrenGroupsLock = self->childrenGroupsLock_;
  objc_sync_enter(childrenGroupsLock);
  if (self->numGroups_ >= 1)
  {
    v5 = 0;
    do
    {
      childrenGroups = self->childrenGroups_;
      if (!childrenGroups)
      {
        goto LABEL_10;
      }

      size = childrenGroups->super.size_;
      if (v5 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      v8 = (&childrenGroups->elementType_)[v5];
      if (!v8)
      {
LABEL_10:
        JreThrowNullPointerException();
      }

      numThreads += [(IOSClass *)v8 activeCount];
      ++v5;
    }

    while (v5 < self->numGroups_);
  }

  objc_sync_exit(childrenGroupsLock);
  return numThreads;
}

- (int)activeGroupCount
{
  childrenGroupsLock = self->childrenGroupsLock_;
  objc_sync_enter(childrenGroupsLock);
  if (self->numGroups_ < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      childrenGroups = self->childrenGroups_;
      if (!childrenGroups)
      {
        goto LABEL_11;
      }

      size = childrenGroups->super.size_;
      if (v4 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v4);
      }

      v8 = (&childrenGroups->elementType_)[v4];
      if (!v8)
      {
LABEL_11:
        JreThrowNullPointerException();
      }

      v5 += [(IOSClass *)v8 activeGroupCount]+ 1;
      ++v4;
    }

    while (v4 < self->numGroups_);
  }

  objc_sync_exit(childrenGroupsLock);
  return v5;
}

- (void)addWithJavaLangThread:(id)thread
{
  childrenThreadsLock = self->childrenThreadsLock_;
  objc_sync_enter(childrenThreadsLock);
  if (self->isDestroyed_)
  {
    v11 = new_JavaLangIllegalThreadStateException_init();
    objc_exception_throw(v11);
  }

  childrenThreads = self->childrenThreads_;
  if (!childrenThreads)
  {
    JreThrowNullPointerException();
  }

  size = childrenThreads->super.size_;
  numThreads = self->numThreads_;
  if (size == numThreads)
  {
    v9 = [IOSObjectArray arrayWithLength:2 * size type:JavaLangThread_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->childrenThreads_, 0, v9, 0, self->numThreads_);
    v10 = self->numThreads_;
    self->numThreads_ = v10 + 1;
    IOSObjectArray_Set(v9, v10, thread);
    JreStrongAssign(&self->childrenThreads_, v9);
  }

  else
  {
    self->numThreads_ = numThreads + 1;
    IOSObjectArray_Set(childrenThreads, numThreads, thread);
  }

  objc_sync_exit(childrenThreadsLock);
}

- (BOOL)parentOfWithJavaLangThreadGroup:(id)group
{
  v3 = group != 0;
  if (group != self && group)
  {
    do
    {
      group = *(group + 1);
      v3 = group != 0;
    }

    while (group != self && group != 0);
  }

  return v3;
}

- (void)removeWithJavaLangThread:(id)thread
{
  childrenThreadsLock = self->childrenThreadsLock_;
  objc_sync_enter(childrenThreadsLock);
  if (self->numThreads_ >= 1)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      childrenThreads = self->childrenThreads_;
      if (!childrenThreads)
      {
        goto LABEL_14;
      }

      size = childrenThreads->super.size_;
      if (v7 - 1 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, (v7 - 1));
      }

      v10 = (&childrenThreads->elementType_)[v6];
      if (!v10)
      {
LABEL_14:
        JreThrowNullPointerException();
      }

      if ([(IOSClass *)v10 isEqual:thread])
      {
        break;
      }

      ++v6;
      v11 = v7 < self->numThreads_;
      v7 = (v7 + 1);
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    numThreads = self->numThreads_;
    self->numThreads_ = numThreads - 1;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->childrenThreads_, v7, self->childrenThreads_, (v7 - 1), (numThreads - v7));
    IOSObjectArray_Set(self->childrenThreads_, self->numThreads_, 0);
  }

LABEL_11:

  objc_sync_exit(childrenThreadsLock);
}

- (NSString)description
{
  v3 = [-[JavaLangThreadGroup getClass](self "getClass")];
  maxPriority = self->maxPriority_;
  name = self->name_;
  return JreStrcat("$$$$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)uncaughtExceptionWithJavaLangThread:(id)thread withJavaLangThrowable:(id)throwable
{
  parent = self->parent_;
  if (parent)
  {
LABEL_4:

    [parent uncaughtExceptionWithJavaLangThread:thread withJavaLangThrowable:throwable];
    return;
  }

  if (JavaLangThread_getDefaultUncaughtExceptionHandler())
  {
    parent = JavaLangThread_getDefaultUncaughtExceptionHandler();
    if (parent)
    {
      goto LABEL_4;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return;
  }

  if (!throwable)
  {
    goto LABEL_12;
  }

  [throwable printStackTrace];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangThreadGroup;
  [(JavaLangThreadGroup *)&v3 dealloc];
}

@end