@interface OrgApacheLuceneSearchFieldComparator_FloatComparator
- (OrgApacheLuceneSearchFieldComparator_FloatComparator)initWithInt:(int)int withNSString:(id)string withJavaLangFloat:(id)float;
- (void)dealloc;
- (void)setTopValueWithId:(id)id;
@end

@implementation OrgApacheLuceneSearchFieldComparator_FloatComparator

- (OrgApacheLuceneSearchFieldComparator_FloatComparator)initWithInt:(int)int withNSString:(id)string withJavaLangFloat:(id)float
{
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(self, string, float);
  JreStrongAssignAndConsume(&self->values_, [IOSFloatArray newArrayWithLength:int]);
  return self;
}

- (void)setTopValueWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  [id floatValue];
  self->topValue_ = v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_FloatComparator;
  [(OrgApacheLuceneSearchFieldComparator_NumericComparator *)&v3 dealloc];
}

@end