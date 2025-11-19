@interface OrgApacheLuceneSearchConstantScoreQuery
- (BOOL)isEqual:(id)a3;
- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)a3 withBoolean:(BOOL)a4;
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3;
- (id)toStringWithNSString:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConstantScoreQuery

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3
{
  v3 = self;
  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = [v4 rewriteWithOrgApacheLuceneIndexIndexReader:a3];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [(OrgApacheLuceneSearchConstantScoreQuery *)v5 getClass];
  if (v7 == [(OrgApacheLuceneSearchConstantScoreQuery *)v3 getClass])
  {
    [(OrgApacheLuceneSearchQuery *)v3 getBoost];
    v11 = v10;
    [(OrgApacheLuceneSearchQuery *)v6 getBoost];
    if (v11 == v12)
    {
      return v6;
    }

    v9 = [(OrgApacheLuceneSearchQuery *)v6 clone];
    if (v9)
    {
LABEL_8:
      v6 = v9;
      [(OrgApacheLuceneSearchQuery *)v3 getBoost];
      [(OrgApacheLuceneSearchQuery *)v6 setBoostWithFloat:?];
      return v6;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  if (v6 != *(&v3->super.boost_ + 1))
  {
    v8 = [OrgApacheLuceneSearchConstantScoreQuery alloc];
    OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(v8, v6);
    v9 = v8;
    goto LABEL_8;
  }

  return v3;
}

- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)a3 withBoolean:(BOOL)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = a4;
  result = [a3 createWeightWithOrgApacheLuceneSearchQuery:*(&self->super.boost_ + 1) withBoolean:0];
  v7 = result;
  if (v4)
  {
    v8 = [OrgApacheLuceneSearchConstantScoreQuery__1 alloc];
    sub_10009F2A0(v8, self, v7, self);

    return v8;
  }

  return result;
}

- (id)toStringWithNSString:(id)a3
{
  v5 = objc_autorelease(new_JavaLangStringBuilder_initWithNSString_(@"ConstantScore("));
  v6 = *(&self->super.boost_ + 1);
  if (!v6 || (v7 = -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", [v6 toStringWithNSString:a3])) == 0 || (v8 = objc_msgSend(v7, "appendWithChar:", 41)) == 0 || (v9 = v8, -[OrgApacheLuceneSearchQuery getBoost](self, "getBoost"), (v11 = objc_msgSend(v9, "appendWithNSString:", OrgApacheLuceneUtilToStringUtils_boostWithFloat_(v10))) == 0))
  {
    JreThrowNullPointerException();
  }

  return [v11 description];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  v9.receiver = self;
  v9.super_class = OrgApacheLuceneSearchConstantScoreQuery;
  v5 = [(OrgApacheLuceneSearchQuery *)&v9 isEqual:?];
  if (!v5)
  {
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  objc_opt_class();
  if (!a3)
  {
    v7 = *(&self->super.boost_ + 1);
    goto LABEL_13;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v6 = *(&self->super.boost_ + 1);
  if (!v6)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  LOBYTE(v5) = [v6 isEqual:*(a3 + 12)];
  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneSearchConstantScoreQuery;
  v3 = [(OrgApacheLuceneSearchQuery *)&v6 hash];
  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return ([v4 hash] - v3 + 32 * v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConstantScoreQuery;
  [(OrgApacheLuceneSearchConstantScoreQuery *)&v3 dealloc];
}

@end