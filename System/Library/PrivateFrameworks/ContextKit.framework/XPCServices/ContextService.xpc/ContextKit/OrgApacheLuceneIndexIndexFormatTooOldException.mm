@interface OrgApacheLuceneIndexIndexFormatTooOldException
- (OrgApacheLuceneIndexIndexFormatTooOldException)initWithOrgApacheLuceneStoreDataInput:(id)a3 withNSString:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexIndexFormatTooOldException

- (OrgApacheLuceneIndexIndexFormatTooOldException)initWithOrgApacheLuceneStoreDataInput:(id)a3 withNSString:(id)a4
{
  v6 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(a3);
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(&self->super.super.super.super.super.isa, v6, a4, v7, v8, v9, v10, v11);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexIndexFormatTooOldException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end