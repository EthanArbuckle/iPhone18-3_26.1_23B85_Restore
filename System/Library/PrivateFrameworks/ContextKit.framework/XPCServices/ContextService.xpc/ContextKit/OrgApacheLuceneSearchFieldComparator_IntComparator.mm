@interface OrgApacheLuceneSearchFieldComparator_IntComparator
- (OrgApacheLuceneSearchFieldComparator_IntComparator)initWithInt:(int)int withNSString:(id)string withJavaLangInteger:(id)integer;
- (void)dealloc;
- (void)setTopValueWithId:(id)id;
@end

@implementation OrgApacheLuceneSearchFieldComparator_IntComparator

- (OrgApacheLuceneSearchFieldComparator_IntComparator)initWithInt:(int)int withNSString:(id)string withJavaLangInteger:(id)integer
{
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(self, string, integer);
  JreStrongAssignAndConsume(&self->values_, [IOSIntArray newArrayWithLength:int]);
  return self;
}

- (void)setTopValueWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  self->topValue_ = [id intValue];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_IntComparator;
  [(OrgApacheLuceneSearchFieldComparator_NumericComparator *)&v3 dealloc];
}

@end