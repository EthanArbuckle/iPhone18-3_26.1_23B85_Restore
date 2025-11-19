@interface OrgApacheLuceneStoreSingleInstanceLockFactory
- (OrgApacheLuceneStoreSingleInstanceLockFactory)init;
- (id)obtainLockWithOrgApacheLuceneStoreDirectory:(id)a3 withNSString:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreSingleInstanceLockFactory

- (id)obtainLockWithOrgApacheLuceneStoreDirectory:(id)a3 withNSString:(id)a4
{
  locks = self->locks_;
  objc_sync_enter(locks);
  v7 = self->locks_;
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  if (![(JavaUtilHashSet *)v7 addWithId:a4])
  {
    v18 = JreStrcat("$@$$C", v8, v9, v10, v11, v12, v13, v14, @"lock instance already obtained: (dir=");
    v19 = new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(v18);
    objc_exception_throw(v19);
  }

  v15 = [OrgApacheLuceneStoreSingleInstanceLockFactory_SingleInstanceLock alloc];
  sub_10002B594(v15, self, a4);
  v16 = v15;
  objc_sync_exit(locks);
  return v16;
}

- (OrgApacheLuceneStoreSingleInstanceLockFactory)init
{
  OrgApacheLuceneStoreLockFactory_init(self, a2);
  v3 = new_JavaUtilHashSet_init();
  JreStrongAssignAndConsume(&self->locks_, v3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreSingleInstanceLockFactory;
  [(OrgApacheLuceneStoreSingleInstanceLockFactory *)&v3 dealloc];
}

@end