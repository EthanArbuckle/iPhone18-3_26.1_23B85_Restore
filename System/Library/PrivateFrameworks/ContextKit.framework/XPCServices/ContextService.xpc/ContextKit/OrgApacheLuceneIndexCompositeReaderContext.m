@interface OrgApacheLuceneIndexCompositeReaderContext
- (id)leaves;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexCompositeReaderContext

- (id)leaves
{
  if (!self->super.isTopLevel_)
  {
    v3 = new_JavaLangUnsupportedOperationException_initWithNSString_(@"This is not a top-level context.");
    objc_exception_throw(v3);
  }

  return self->leaves_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexCompositeReaderContext;
  [(OrgApacheLuceneIndexIndexReaderContext *)&v3 dealloc];
}

@end