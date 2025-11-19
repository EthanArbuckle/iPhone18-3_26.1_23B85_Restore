@interface OrgApacheLuceneSearchFieldComparator_FloatComparator
- (OrgApacheLuceneSearchFieldComparator_FloatComparator)initWithInt:(int)a3 withNSString:(id)a4 withJavaLangFloat:(id)a5;
- (void)dealloc;
- (void)setTopValueWithId:(id)a3;
@end

@implementation OrgApacheLuceneSearchFieldComparator_FloatComparator

- (OrgApacheLuceneSearchFieldComparator_FloatComparator)initWithInt:(int)a3 withNSString:(id)a4 withJavaLangFloat:(id)a5
{
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(self, a4, a5);
  JreStrongAssignAndConsume(&self->values_, [IOSFloatArray newArrayWithLength:a3]);
  return self;
}

- (void)setTopValueWithId:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 floatValue];
  self->topValue_ = v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_FloatComparator;
  [(OrgApacheLuceneSearchFieldComparator_NumericComparator *)&v3 dealloc];
}

@end