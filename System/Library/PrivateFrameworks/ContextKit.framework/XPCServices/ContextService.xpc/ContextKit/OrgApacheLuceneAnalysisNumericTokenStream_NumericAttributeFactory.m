@interface OrgApacheLuceneAnalysisNumericTokenStream_NumericAttributeFactory
- (OrgApacheLuceneAnalysisNumericTokenStream_NumericAttributeFactory)initWithOrgApacheLuceneUtilAttributeFactory:(id)a3;
- (id)createAttributeInstanceWithIOSClass:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneAnalysisNumericTokenStream_NumericAttributeFactory

- (OrgApacheLuceneAnalysisNumericTokenStream_NumericAttributeFactory)initWithOrgApacheLuceneUtilAttributeFactory:(id)a3
{
  OrgApacheLuceneUtilAttributeFactory_init(self, a2);
  JreStrongAssign(&self->delegate_, a3);
  return self;
}

- (id)createAttributeInstanceWithIOSClass:(id)a3
{
  if ([OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_() isAssignableFrom:a3])
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"NumericTokenStream does not support CharTermAttribute.");
    objc_exception_throw(v7);
  }

  delegate = self->delegate_;
  if (!delegate)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilAttributeFactory *)delegate createAttributeInstanceWithIOSClass:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisNumericTokenStream_NumericAttributeFactory;
  [(OrgApacheLuceneAnalysisNumericTokenStream_NumericAttributeFactory *)&v3 dealloc];
}

@end