@interface OrgApacheLuceneSearchFieldDoc
- (OrgApacheLuceneSearchFieldDoc)initWithInt:(int)a3 withFloat:(float)a4 withNSObjectArray:(id)a5;
- (OrgApacheLuceneSearchFieldDoc)initWithInt:(int)a3 withFloat:(float)a4 withNSObjectArray:(id)a5 withInt:(int)a6;
- (id)description;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFieldDoc

- (OrgApacheLuceneSearchFieldDoc)initWithInt:(int)a3 withFloat:(float)a4 withNSObjectArray:(id)a5
{
  OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(self, a3, a4);
  JreStrongAssign(&self->fields_, a5);
  return self;
}

- (OrgApacheLuceneSearchFieldDoc)initWithInt:(int)a3 withFloat:(float)a4 withNSObjectArray:(id)a5 withInt:(int)a6
{
  OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_withInt_(self, a3, a6, a4);
  JreStrongAssign(&self->fields_, a5);
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