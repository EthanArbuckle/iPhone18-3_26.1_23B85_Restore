@interface OrgApacheLuceneSearchFieldValueHitQueue_Entry
- (OrgApacheLuceneSearchFieldValueHitQueue_Entry)initWithInt:(int)a3 withInt:(int)a4 withFloat:(float)a5;
- (id)description;
@end

@implementation OrgApacheLuceneSearchFieldValueHitQueue_Entry

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry)initWithInt:(int)a3 withInt:(int)a4 withFloat:(float)a5
{
  OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(self, a4, a5);
  *(&self->super.shardIndex_ + 1) = a3;
  return self;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = OrgApacheLuceneSearchFieldValueHitQueue_Entry;
  v2 = *(&self->super.shardIndex_ + 1);
  [(OrgApacheLuceneSearchScoreDoc *)&v11 description];
  return JreStrcat("$IC$", v3, v4, v5, v6, v7, v8, v9, @"slot:");
}

@end