@interface OrgApacheLuceneSearchFakeScorer
- (OrgApacheLuceneSearchFakeScorer)init;
@end

@implementation OrgApacheLuceneSearchFakeScorer

- (OrgApacheLuceneSearchFakeScorer)init
{
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, 0);
  self->doc_ = -1;
  self->freq_ = 1;
  return self;
}

@end