@interface OrgApacheLuceneStoreFSLockFactory
+ (id)getDefault;
- (id)obtainLockWithOrgApacheLuceneStoreDirectory:(id)directory withNSString:(id)string;
@end

@implementation OrgApacheLuceneStoreFSLockFactory

+ (id)getDefault
{
  if ((atomic_load_explicit(OrgApacheLuceneStoreNativeFSLockFactory__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100117E88();
  }

  return OrgApacheLuceneStoreNativeFSLockFactory_INSTANCE_;
}

- (id)obtainLockWithOrgApacheLuceneStoreDirectory:(id)directory withNSString:(id)string
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [-[OrgApacheLuceneStoreFSLockFactory getClass](self "getClass")];
    v15 = JreStrcat("$$@", v8, v9, v10, v11, v12, v13, v14, v7);
    v16 = new_JavaLangUnsupportedOperationException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  objc_opt_class();
  if (directory && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [(OrgApacheLuceneStoreFSLockFactory *)self obtainFSLockWithOrgApacheLuceneStoreFSDirectory:directory withNSString:string];
}

@end