@interface OrgApacheLuceneSearchTermQuery
- (BOOL)isEqual:(id)a3;
- (id)toStringWithNSString:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTermQuery

- (id)toStringWithNSString:(id)a3
{
  v5 = new_JavaLangStringBuilder_init();
  v6 = *(&self->super.boost_ + 1);
  if (!v6 || (v7 = [v6 field]) == 0)
  {
    JreThrowNullPointerException();
  }

  if (([v7 isEqual:a3] & 1) == 0)
  {
    -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", [*(&self->super.boost_ + 1) field]);
    [(JavaLangStringBuilder *)v5 appendWithNSString:@":"];
  }

  -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", [*(&self->super.boost_ + 1) text]);
  [(OrgApacheLuceneSearchQuery *)self getBoost];
  [(JavaLangStringBuilder *)v5 appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_(v8)];

  return [(JavaLangStringBuilder *)v5 description];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a3 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v8.receiver = self;
    v8.super_class = OrgApacheLuceneSearchTermQuery;
    v5 = [(OrgApacheLuceneSearchQuery *)&v8 isEqual:a3];
    if (v5)
    {
      v6 = *(&self->super.boost_ + 1);
      if (!v6 || !a3)
      {
        JreThrowNullPointerException();
      }

      LOBYTE(v5) = [v6 isEqual:*(a3 + 12)];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneSearchTermQuery;
  v3 = [(OrgApacheLuceneSearchQuery *)&v6 hash];
  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return ([v4 hash] ^ v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTermQuery;
  [(OrgApacheLuceneSearchTermQuery *)&v3 dealloc];
}

@end