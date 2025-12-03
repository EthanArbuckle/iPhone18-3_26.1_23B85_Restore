@interface OrgApacheLuceneStoreBaseDirectory
- (id)description;
- (id)obtainLockWithNSString:(id)string;
- (void)dealloc;
- (void)ensureOpen;
@end

@implementation OrgApacheLuceneStoreBaseDirectory

- (id)obtainLockWithNSString:(id)string
{
  lockFactory = self->lockFactory_;
  if (!lockFactory)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreLockFactory *)lockFactory obtainLockWithOrgApacheLuceneStoreDirectory:self withNSString:string];
}

- (void)ensureOpen
{
  v2 = atomic_load(&self->isOpen_);
  if ((v2 & 1) == 0)
  {
    v3 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this Directory is closed");
    objc_exception_throw(v3);
  }
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = OrgApacheLuceneStoreBaseDirectory;
  v3 = [(OrgApacheLuceneStoreDirectory *)&v13 description];
  lockFactory = self->lockFactory_;
  return JreStrcat("$$@", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreBaseDirectory;
  [(OrgApacheLuceneStoreBaseDirectory *)&v3 dealloc];
}

@end