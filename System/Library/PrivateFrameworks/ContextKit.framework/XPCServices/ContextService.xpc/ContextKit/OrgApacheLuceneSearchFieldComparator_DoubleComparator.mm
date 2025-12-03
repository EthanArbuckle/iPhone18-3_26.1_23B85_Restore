@interface OrgApacheLuceneSearchFieldComparator_DoubleComparator
- (OrgApacheLuceneSearchFieldComparator_DoubleComparator)initWithInt:(int)int withNSString:(id)string withJavaLangDouble:(id)double;
- (void)dealloc;
- (void)setTopValueWithId:(id)id;
@end

@implementation OrgApacheLuceneSearchFieldComparator_DoubleComparator

- (OrgApacheLuceneSearchFieldComparator_DoubleComparator)initWithInt:(int)int withNSString:(id)string withJavaLangDouble:(id)double
{
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(self, string, double);
  JreStrongAssignAndConsume(&self->values_, [IOSDoubleArray newArrayWithLength:int]);
  return self;
}

- (void)setTopValueWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  [id doubleValue];
  self->topValue_ = v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_DoubleComparator;
  [(OrgApacheLuceneSearchFieldComparator_NumericComparator *)&v3 dealloc];
}

@end