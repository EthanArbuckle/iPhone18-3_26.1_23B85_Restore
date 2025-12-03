@interface OrgApacheLuceneSearchFieldComparator_LongComparator
- (OrgApacheLuceneSearchFieldComparator_LongComparator)initWithInt:(int)int withNSString:(id)string withJavaLangLong:(id)long;
- (void)dealloc;
- (void)setTopValueWithId:(id)id;
@end

@implementation OrgApacheLuceneSearchFieldComparator_LongComparator

- (OrgApacheLuceneSearchFieldComparator_LongComparator)initWithInt:(int)int withNSString:(id)string withJavaLangLong:(id)long
{
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(self, string, long);
  JreStrongAssignAndConsume(&self->values_, [IOSLongArray newArrayWithLength:int]);
  return self;
}

- (void)setTopValueWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  self->topValue_ = [id longLongValue];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_LongComparator;
  [(OrgApacheLuceneSearchFieldComparator_NumericComparator *)&v3 dealloc];
}

@end