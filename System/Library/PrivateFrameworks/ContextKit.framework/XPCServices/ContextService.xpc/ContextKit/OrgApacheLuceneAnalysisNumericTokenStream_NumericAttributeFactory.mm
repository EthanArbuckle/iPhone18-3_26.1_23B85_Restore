@interface OrgApacheLuceneAnalysisNumericTokenStream_NumericAttributeFactory
- (OrgApacheLuceneAnalysisNumericTokenStream_NumericAttributeFactory)initWithOrgApacheLuceneUtilAttributeFactory:(id)factory;
- (id)createAttributeInstanceWithIOSClass:(id)class;
- (void)dealloc;
@end

@implementation OrgApacheLuceneAnalysisNumericTokenStream_NumericAttributeFactory

- (OrgApacheLuceneAnalysisNumericTokenStream_NumericAttributeFactory)initWithOrgApacheLuceneUtilAttributeFactory:(id)factory
{
  OrgApacheLuceneUtilAttributeFactory_init(self, a2);
  JreStrongAssign(&self->delegate_, factory);
  return self;
}

- (id)createAttributeInstanceWithIOSClass:(id)class
{
  if ([OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_() isAssignableFrom:class])
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"NumericTokenStream does not support CharTermAttribute.");
    objc_exception_throw(v7);
  }

  delegate = self->delegate_;
  if (!delegate)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilAttributeFactory *)delegate createAttributeInstanceWithIOSClass:class];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisNumericTokenStream_NumericAttributeFactory;
  [(OrgApacheLuceneAnalysisNumericTokenStream_NumericAttributeFactory *)&v3 dealloc];
}

@end