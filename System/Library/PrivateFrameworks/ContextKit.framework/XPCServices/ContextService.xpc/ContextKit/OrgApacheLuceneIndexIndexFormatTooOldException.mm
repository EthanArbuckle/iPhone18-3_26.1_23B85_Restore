@interface OrgApacheLuceneIndexIndexFormatTooOldException
- (OrgApacheLuceneIndexIndexFormatTooOldException)initWithOrgApacheLuceneStoreDataInput:(id)input withNSString:(id)string;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexIndexFormatTooOldException

- (OrgApacheLuceneIndexIndexFormatTooOldException)initWithOrgApacheLuceneStoreDataInput:(id)input withNSString:(id)string
{
  v6 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(input);
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(&self->super.super.super.super.super.isa, v6, string, v7, v8, v9, v10, v11);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexIndexFormatTooOldException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end