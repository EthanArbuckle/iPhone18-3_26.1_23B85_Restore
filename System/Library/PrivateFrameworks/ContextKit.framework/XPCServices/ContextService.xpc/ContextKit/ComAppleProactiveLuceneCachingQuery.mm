@interface ComAppleProactiveLuceneCachingQuery
- (BOOL)isEqual:(id)a3;
- (float)getBoost;
- (id)clone;
- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)a3 withBoolean:(BOOL)a4;
- (id)toStringWithNSString:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setBoostWithFloat:(float)a3;
@end

@implementation ComAppleProactiveLuceneCachingQuery

- (void)setBoostWithFloat:(float)a3
{
  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 setBoostWithFloat:?];
}

- (float)getBoost
{
  v3 = *(&self->super.boost_ + 1);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  [v3 getBoost];
  return result;
}

- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)a3 withBoolean:(BOOL)a4
{
  if (a4)
  {
    v4 = (&self->is_ + 4);
    if (!*(&self->is_ + 4))
    {
      v5 = *(&self->super.boost_ + 1);
      if (v5)
      {
        v6 = 1;
LABEL_8:
        v7 = new_ComAppleProactiveLuceneCachingWeight_initWithOrgApacheLuceneSearchWeight_([v5 createWeightWithOrgApacheLuceneSearchIndexSearcher:a3 withBoolean:v6]);
        JreStrongAssignAndConsume(v4, v7);
        return *v4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = (&self->weightWithScores_ + 4);
    if (!*(&self->weightWithScores_ + 4))
    {
      v5 = *(&self->super.boost_ + 1);
      if (v5)
      {
        v6 = 0;
        goto LABEL_8;
      }

LABEL_10:
      JreThrowNullPointerException();
    }
  }

  return *v4;
}

- (id)clone
{
  v3 = *(&self->q_ + 4);
  v4 = [ComAppleProactiveLuceneCachingQuery alloc];
  ComAppleProactiveLuceneCachingQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchIndexSearcher_(v4, self, v3);
  v5 = v4;
  JreStrongAssign((&v5->weightWithScores_ + 4), *(&self->weightWithScores_ + 4));
  JreStrongAssign((&v5->is_ + 4), *(&self->is_ + 4));
  return v5;
}

- (unint64_t)hash
{
  v2 = *(&self->super.boost_ + 1);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 isEqual:?];
}

- (id)toStringWithNSString:(id)a3
{
  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 toStringWithNSString:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneCachingQuery;
  [(ComAppleProactiveLuceneCachingQuery *)&v3 dealloc];
}

@end