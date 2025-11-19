@interface OrgApacheLuceneSearchFieldComparator_LongComparator
- (OrgApacheLuceneSearchFieldComparator_LongComparator)initWithInt:(int)a3 withNSString:(id)a4 withJavaLangLong:(id)a5;
- (void)dealloc;
- (void)setTopValueWithId:(id)a3;
@end

@implementation OrgApacheLuceneSearchFieldComparator_LongComparator

- (OrgApacheLuceneSearchFieldComparator_LongComparator)initWithInt:(int)a3 withNSString:(id)a4 withJavaLangLong:(id)a5
{
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(self, a4, a5);
  JreStrongAssignAndConsume(&self->values_, [IOSLongArray newArrayWithLength:a3]);
  return self;
}

- (void)setTopValueWithId:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  self->topValue_ = [a3 longLongValue];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_LongComparator;
  [(OrgApacheLuceneSearchFieldComparator_NumericComparator *)&v3 dealloc];
}

@end