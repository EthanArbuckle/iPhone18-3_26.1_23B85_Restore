@interface OrgApacheLuceneSearchMinShouldMatchSumScorer
- (_DWORD)setDocAndFreq;
- (float)score;
- (int)nextDoc;
- (uint64_t)doNext;
- (void)advanceTail;
- (void)dealloc;
- (void)pushBackLeads;
@end

@implementation OrgApacheLuceneSearchMinShouldMatchSumScorer

- (int)nextDoc
{
  for (i = self->lead_; i; i = i->next_)
  {
    v4 = sub_100042B08(self, i);
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + 6);
      doc = self->doc_;
      v8 = v4[1];
      if (v6 == doc)
      {
        if (!v8)
        {
          goto LABEL_14;
        }

        v9 = [v8 nextDoc];
      }

      else
      {
        if (!v8)
        {
          goto LABEL_14;
        }

        v9 = [v8 advanceWithInt:(doc + 1)];
      }

      *(v5 + 6) = v9;
      head = self->head_;
      if (!head)
      {
LABEL_14:
        JreThrowNullPointerException();
      }

      [(OrgApacheLuceneSearchDisiPriorityQueue *)head addWithOrgApacheLuceneSearchDisiWrapper:v5];
    }
  }

  [OrgApacheLuceneSearchMinShouldMatchSumScorer setDocAndFreq]_0(self);

  return [OrgApacheLuceneSearchMinShouldMatchSumScorer doNext]_0(self);
}

- (_DWORD)setDocAndFreq
{
  JreStrongAssign((a1 + 32), [*(a1 + 48) pop]);
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_7;
  }

  JreStrongAssign((v2 + 32), 0);
  *(a1 + 44) = 1;
  *(a1 + 40) = *(*(a1 + 32) + 24);
  result = [*(a1 + 48) size];
  if (result >= 1)
  {
    while (1)
    {
      result = [*(a1 + 48) top];
      if (!result)
      {
        break;
      }

      if (result[6] == *(a1 + 40))
      {
        sub_100042F2C(a1, [*(a1 + 48) pop]);
        result = [*(a1 + 48) size];
        if (result > 0)
        {
          continue;
        }
      }

      return result;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return result;
}

- (uint64_t)doNext
{
  v2 = *(a1 + 44);
  for (i = *(a1 + 16); v2 < i; i = *(a1 + 16))
  {
    if (*(a1 + 64) + v2 >= i)
    {
      v5 = sub_10004349C(a1);
      sub_100043004(a1, v5);
    }

    else
    {
      for (j = *(a1 + 32); j; j = j[4])
      {
        sub_10004330C(a1, j);
      }

      [OrgApacheLuceneSearchMinShouldMatchSumScorer setDocAndFreq]_0(a1);
    }

    v2 = *(a1 + 44);
  }

  return *(a1 + 40);
}

- (void)pushBackLeads
{
  for (i = self->lead_; i; i = i->next_)
  {
    sub_10004330C(self, i);
  }
}

- (void)advanceTail
{
  v3 = sub_10004349C(self);

  sub_100043004(self, v3);
}

- (float)score
{
  sub_100043114(self);
  lead = self->lead_;
  if (lead)
  {
    v4 = 0.0;
    do
    {
      iterator = lead->iterator_;
      if (!iterator)
      {
        goto LABEL_11;
      }

      [(OrgApacheLuceneSearchDocIdSetIterator *)iterator score];
      v4 = v4 + v6;
      lead = lead->next_;
    }

    while (lead);
    v7 = v4;
  }

  else
  {
    v7 = 0.0;
  }

  coord = self->coord_;
  if (!coord)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  freq = self->freq_;
  size = coord->super.size_;
  if (freq < 0 || freq >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, freq);
  }

  return *(&coord->super.size_ + freq + 1) * v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchMinShouldMatchSumScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end