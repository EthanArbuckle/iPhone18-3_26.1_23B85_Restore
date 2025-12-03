@interface OrgApacheLuceneSearchDisjunctionMaxQuery
- (BOOL)isEqual:(id)equal;
- (OrgApacheLuceneSearchDisjunctionMaxQuery)initWithFloat:(float)float;
- (id)clone;
- (id)iterator;
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader;
- (id)toStringWithNSString:(id)string;
- (unint64_t)hash;
- (void)addWithJavaUtilCollection:(id)collection;
- (void)addWithOrgApacheLuceneSearchQuery:(id)query;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchDisjunctionMaxQuery

- (OrgApacheLuceneSearchDisjunctionMaxQuery)initWithFloat:(float)float
{
  OrgApacheLuceneSearchQuery_init(self);
  v5 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((&self->super.boost_ + 1), v5);
  HIDWORD(self->disjuncts_) = 0;
  *(&self->disjuncts_ + 1) = float;
  return self;
}

- (void)addWithOrgApacheLuceneSearchQuery:(id)query
{
  v3 = *(&self->super.boost_ + 1);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(query, @"Query must not be null");

  [v3 addWithId:v4];
}

- (void)addWithJavaUtilCollection:(id)collection
{
  v3 = *(&self->super.boost_ + 1);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(collection, @"Query connection must not be null");

  [v3 addAllWithJavaUtilCollection:v4];
}

- (id)iterator
{
  v3 = *(&self->super.boost_ + 1);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 iterator];
}

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader
{
  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
    goto LABEL_23;
  }

  v6 = [v4 size];
  if (v6 == 1)
  {
    v7 = [*(&self->super.boost_ + 1) getWithInt:0];
    if (!v7)
    {
      goto LABEL_23;
    }

    v8 = v7;
    clone = [v7 rewriteWithOrgApacheLuceneIndexIndexReader:reader];
    [(OrgApacheLuceneSearchQuery *)self getBoost];
    if (v10 != 1.0)
    {
      if (clone == v8)
      {
        clone = [clone clone];
      }

      [(OrgApacheLuceneSearchQuery *)self getBoost];
      if (clone)
      {
        v12 = v11;
        [clone getBoost];
        *&v14 = v12 * v13;
        [clone setBoostWithFloat:v14];
        return clone;
      }

LABEL_23:
      JreThrowNullPointerException();
    }
  }

  else
  {
    if (v6 >= 1)
    {
      v15 = v6;
      v16 = 0;
      clone2 = 0;
      while (1)
      {
        v18 = [*(&self->super.boost_ + 1) getWithInt:v16];
        if (!v18)
        {
          goto LABEL_23;
        }

        v19 = v18;
        v20 = [v18 rewriteWithOrgApacheLuceneIndexIndexReader:reader];
        if (v20 != v19)
        {
          v21 = v20;
          if (!clone2)
          {
            clone2 = [(OrgApacheLuceneSearchDisjunctionMaxQuery *)self clone];
            if (!clone2)
            {
              goto LABEL_23;
            }
          }

          [*(clone2 + 12) setWithInt:v16 withId:v21];
        }

        v16 = (v16 + 1);
        if (v15 == v16)
        {
          goto LABEL_19;
        }
      }
    }

    clone2 = 0;
LABEL_19:
    if (clone2)
    {
      return clone2;
    }

    else
    {
      return self;
    }
  }

  return clone;
}

- (id)clone
{
  v7.receiver = self;
  v7.super_class = OrgApacheLuceneSearchDisjunctionMaxQuery;
  clone = [(OrgApacheLuceneSearchQuery *)&v7 clone];
  objc_opt_class();
  if (!clone)
  {
    goto LABEL_8;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  clone2 = [v4 clone];
  objc_opt_class();
  if (clone2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    JreThrowClassCastException();
  }

  JreStrongAssign((clone + 12), clone2);
  return clone;
}

- (id)toStringWithNSString:(id)string
{
  v5 = new_JavaLangStringBuilder_init();
  -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", @"(");
  v6 = *(&self->super.boost_ + 1);
  if (!v6)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  v7 = [v6 size];
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v10 = [*(&self->super.boost_ + 1) getWithInt:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", @"(");
        if (!v10)
        {
          goto LABEL_19;
        }

        -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", [v10 toStringWithNSString:string]);
        v11 = v5;
        v12 = @"");
      }

      else
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v12 = [v10 toStringWithNSString:string];
        v11 = v5;
      }

      [(JavaLangStringBuilder *)v11 appendWithNSString:v12];
      if (v8 != 1)
      {
        [(JavaLangStringBuilder *)v5 appendWithNSString:@" | "];
      }

      v9 = (v9 + 1);
      --v8;
    }

    while (v8);
  }

  [(JavaLangStringBuilder *)v5 appendWithNSString:@""]);
  if (*(&self->disjuncts_ + 1) != 0.0)
  {
    [(JavaLangStringBuilder *)v5 appendWithNSString:@"~"];
    LODWORD(v13) = HIDWORD(self->disjuncts_);
    [(JavaLangStringBuilder *)v5 appendWithFloat:v13];
  }

  [(OrgApacheLuceneSearchQuery *)self getBoost];
  if (v14 != 1.0)
  {
    [(JavaLangStringBuilder *)v5 appendWithNSString:@"^"];
    [(OrgApacheLuceneSearchQuery *)self getBoost];
    [(JavaLangStringBuilder *)v5 appendWithFloat:?];
  }

  return [(JavaLangStringBuilder *)v5 description];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (equal && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v8.receiver = self;
  v8.super_class = OrgApacheLuceneSearchDisjunctionMaxQuery;
  v5 = [(OrgApacheLuceneSearchQuery *)&v8 isEqual:equal];
  if (v5)
  {
    if (!equal)
    {
      goto LABEL_11;
    }

    if (*(&self->disjuncts_ + 1) == *(equal + 5))
    {
      v6 = *(&self->super.boost_ + 1);
      if (v6)
      {
        LOBYTE(v5) = [v6 isEqual:*(equal + 12)];
        return v5;
      }

LABEL_11:
      JreThrowNullPointerException();
    }

LABEL_9:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  [(OrgApacheLuceneSearchQuery *)self getBoost];
  v4 = JavaLangFloat_floatToIntBitsWithFloat_(v3);
  v5 = JavaLangFloat_floatToIntBitsWithFloat_(*(&self->disjuncts_ + 1));
  if (!*(&self->super.boost_ + 1))
  {
    JreThrowNullPointerException();
  }

  return (v5 + v4 + [*(&self->super.boost_ + 1) hash]);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchDisjunctionMaxQuery;
  [(OrgApacheLuceneSearchDisjunctionMaxQuery *)&v3 dealloc];
}

@end