@interface OrgApacheLuceneSearchScoreDoc
- (OrgApacheLuceneSearchScoreDoc)initWithInt:(int)a3 withFloat:(float)a4;
- (OrgApacheLuceneSearchScoreDoc)initWithInt:(int)a3 withFloat:(float)a4 withInt:(int)a5;
- (id)description;
@end

@implementation OrgApacheLuceneSearchScoreDoc

- (OrgApacheLuceneSearchScoreDoc)initWithInt:(int)a3 withFloat:(float)a4
{
  self->score_ = a4;
  self->doc_ = a3;
  self->shardIndex_ = -1;
  return self;
}

- (OrgApacheLuceneSearchScoreDoc)initWithInt:(int)a3 withFloat:(float)a4 withInt:(int)a5
{
  self->score_ = a4;
  self->doc_ = a3;
  self->shardIndex_ = a5;
  return self;
}

- (id)description
{
  shardIndex = self->shardIndex_;
  score = self->score_;
  doc = self->doc_;
  return JreStrcat("$I$F$I", a2, v2, v3, v4, v5, v6, v7, @"doc=");
}

@end