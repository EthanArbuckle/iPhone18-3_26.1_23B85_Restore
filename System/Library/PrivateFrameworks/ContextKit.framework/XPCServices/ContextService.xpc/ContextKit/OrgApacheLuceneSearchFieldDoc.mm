@interface OrgApacheLuceneSearchFieldDoc
- (OrgApacheLuceneSearchFieldDoc)initWithInt:(int)int withFloat:(float)float withNSObjectArray:(id)array;
- (OrgApacheLuceneSearchFieldDoc)initWithInt:(int)int withFloat:(float)float withNSObjectArray:(id)array withInt:(int)withInt;
- (id)description;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFieldDoc

- (OrgApacheLuceneSearchFieldDoc)initWithInt:(int)int withFloat:(float)float withNSObjectArray:(id)array
{
  OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(self, int, float);
  JreStrongAssign(&self->fields_, array);
  return self;
}

- (OrgApacheLuceneSearchFieldDoc)initWithInt:(int)int withFloat:(float)float withNSObjectArray:(id)array withInt:(int)withInt
{
  OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_withInt_(self, int, withInt, float);
  JreStrongAssign(&self->fields_, array);
  return self;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneSearchFieldDoc;
  v3 = [(OrgApacheLuceneSearchScoreDoc *)&v6 description];
  v4 = new_JavaLangStringBuilder_initWithNSString_(v3);
  [(JavaLangStringBuilder *)v4 appendWithNSString:@" fields="];
  [(JavaLangStringBuilder *)v4 appendWithNSString:JavaUtilArrays_toStringWithNSObjectArray_(self->fields_)];
  return [(JavaLangStringBuilder *)v4 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldDoc;
  [(OrgApacheLuceneSearchFieldDoc *)&v3 dealloc];
}

@end