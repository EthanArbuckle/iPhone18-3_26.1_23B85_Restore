@interface OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer
- (float)score;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer

- (float)score
{
  v3 = *(&self->reqCount_ + 1);
  if (!v3 || ([v3 score], (v5 = *(&self->req_ + 4)) == 0) || (v6 = v4, objc_msgSend(v5, "score"), (v8 = *(&self->super.coord_ + 1)) == 0))
  {
    JreThrowNullPointerException();
  }

  v9 = v7;
  coords_high = HIDWORD(self->coords_);
  freq = [*(&self->req_ + 4) freq];
  v12 = *(v8 + 8);
  v13 = freq + coords_high;
  if ((freq + coords_high) < 0 || v13 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, freq + coords_high);
  }

  return (v6 + v9) * *(v8 + 12 + 4 * v13);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer;
  [(OrgApacheLuceneSearchConjunctionScorer *)&v3 dealloc];
}

@end