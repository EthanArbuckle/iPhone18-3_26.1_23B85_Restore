@interface OrgApacheLuceneSearchFieldComparator_IntComparator
- (OrgApacheLuceneSearchFieldComparator_IntComparator)initWithInt:(int)a3 withNSString:(id)a4 withJavaLangInteger:(id)a5;
- (void)dealloc;
- (void)setTopValueWithId:(id)a3;
@end

@implementation OrgApacheLuceneSearchFieldComparator_IntComparator

- (OrgApacheLuceneSearchFieldComparator_IntComparator)initWithInt:(int)a3 withNSString:(id)a4 withJavaLangInteger:(id)a5
{
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(self, a4, a5);
  JreStrongAssignAndConsume(&self->values_, [IOSIntArray newArrayWithLength:a3]);
  return self;
}

- (void)setTopValueWithId:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  self->topValue_ = [a3 intValue];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_IntComparator;
  [(OrgApacheLuceneSearchFieldComparator_NumericComparator *)&v3 dealloc];
}

@end