@interface OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock
- (id)description;
- (void)close;
- (void)dealloc;
- (void)ensureValid;
@end

@implementation OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock

- (void)ensureValid
{
  v9 = atomic_load(&self->closed_);
  if (v9)
  {
    v19 = JreStrcat("$@", a2, v2, v3, v4, v5, v6, v7, @"Lock instance already released: ");
    v20 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(v19);
    objc_exception_throw(v20);
  }

  locks = self->this$0_->locks_;
  objc_sync_enter(locks);
  v11 = self->this$0_->locks_;
  if (!v11)
  {
    JreThrowNullPointerException();
  }

  if (![(JavaUtilHashSet *)v11 containsWithId:self->lockName_])
  {
    v21 = JreStrcat("$@", v12, v13, v14, v15, v16, v17, v18, @"Lock instance was invalidated from map: ");
    v22 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(v21);
    objc_exception_throw(v22);
  }

  objc_sync_exit(locks);
}

- (void)close
{
  objc_sync_enter(self);
  v3 = atomic_load(&self->closed_);
  if ((v3 & 1) == 0)
  {
    locks = self->this$0_->locks_;
    objc_sync_enter(locks);
    v5 = self->this$0_->locks_;
    if (!v5)
    {
      JreThrowNullPointerException();
    }

    if (![(JavaUtilHashSet *)v5 removeWithId:self->lockName_])
    {
      v13 = JreStrcat("$@", v6, v7, v8, v9, v10, v11, v12, @"Lock was already released: ");
      v14 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(v13);
      objc_exception_throw(v14);
    }

    objc_sync_exit(locks);
    atomic_store(1u, &self->closed_);
  }

  objc_sync_exit(self);
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock;
  v3 = [(OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock *)&v13 description];
  lockName = self->lockName_;
  return JreStrcat("$$$", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock;
  [(OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock *)&v3 dealloc];
}

@end