@interface OrgApacheLuceneSearchScoreDoc
- (OrgApacheLuceneSearchScoreDoc)initWithInt:(int)int withFloat:(float)float;
- (OrgApacheLuceneSearchScoreDoc)initWithInt:(int)int withFloat:(float)float withInt:(int)withInt;
- (id)description;
@end

@implementation OrgApacheLuceneSearchScoreDoc

- (OrgApacheLuceneSearchScoreDoc)initWithInt:(int)int withFloat:(float)float
{
  self->score_ = float;
  self->doc_ = int;
  self->shardIndex_ = -1;
  return self;
}

- (OrgApacheLuceneSearchScoreDoc)initWithInt:(int)int withFloat:(float)float withInt:(int)withInt
{
  self->score_ = float;
  self->doc_ = int;
  self->shardIndex_ = withInt;
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