@interface OrgApacheLuceneAnalysisTokenStream
+ (void)initialize;
- (void)end;
@end

@implementation OrgApacheLuceneAnalysisTokenStream

- (void)end
{
  [(OrgApacheLuceneUtilAttributeSource *)self clearAttributes];
  v3 = [(OrgApacheLuceneUtilAttributeSource *)self getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()];
  if (v3)
  {

    [v3 setPositionIncrementWithInt:0];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if ((atomic_load_explicit(OrgApacheLuceneUtilAttributeFactory__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100049134();
    }

    v2 = OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY_;
    v3 = OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl_class_();
    StaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass = OrgApacheLuceneUtilAttributeFactory_getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(v2, v3);
    JreStrongAssign(&OrgApacheLuceneAnalysisTokenStream_DEFAULT_TOKEN_ATTRIBUTE_FACTORY_, StaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass);
    atomic_store(1u, OrgApacheLuceneAnalysisTokenStream__initialized);
  }
}

@end