@interface OrgApacheLuceneSearchPhraseQuery
- (BOOL)isEqual:(id)a3;
- (id)getPositions;
- (id)getTerms;
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3;
- (id)toStringWithNSString:(id)a3;
- (unint64_t)hash;
- (void)addWithOrgApacheLuceneIndexTerm:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchPhraseQuery

- (id)getTerms
{
  v2 = *(&self->field_ + 4);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneIndexTerm_class_()];

  return [v2 toArrayWithNSObjectArray:v3];
}

- (id)getPositions
{
  v3 = *(&self->terms_ + 4);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = +[IOSIntArray arrayWithLength:](IOSIntArray, "arrayWithLength:", [v3 size]);
  if ([*(&self->terms_ + 4) size] >= 1)
  {
    v5 = 0;
    for (i = v4; ; i = (i + 4))
    {
      v7 = [*(&self->terms_ + 4) getWithInt:v5];
      if (!v7)
      {
        break;
      }

      v8 = [v7 intValue];
      size = v4->super.size_;
      if (v5 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      *(&i->super.size_ + 1) = v8;
      if (++v5 >= [*(&self->terms_ + 4) size])
      {
        return v4;
      }
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  return v4;
}

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3
{
  v4 = *(&self->field_ + 4);
  if (!v4)
  {
    goto LABEL_22;
  }

  if (![v4 isEmpty])
  {
    if ([*(&self->field_ + 4) size] == 1)
    {
      initWithOrgApacheLuceneIndexTerm = new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_([*(&self->field_ + 4) getWithInt:0]);
      goto LABEL_19;
    }

    v7 = *(&self->terms_ + 4);
    if (v7)
    {
      v8 = [v7 getWithInt:0];
      if (v8)
      {
        if (![v8 intValue])
        {
          v20.receiver = self;
          v20.super_class = OrgApacheLuceneSearchPhraseQuery;
          return [(OrgApacheLuceneSearchQuery *)&v20 rewriteWithOrgApacheLuceneIndexIndexReader:a3];
        }

        v9 = [(OrgApacheLuceneSearchPhraseQuery *)self getPositions];
        if (v9)
        {
          v10 = v9;
          v11 = [IOSIntArray arrayWithLength:v9[2]];
          v12 = v10[2];
          if (v12 >= 1)
          {
            for (i = 0; i < v12; ++i)
            {
              if (v12 <= 0)
              {
                IOSArray_throwOutOfBoundsWithMsg(v12, 0);
              }

              size = v11->super.size_;
              if (i >= size)
              {
                IOSArray_throwOutOfBoundsWithMsg(size, i);
              }

              *(&v11->super.size_ + i + 1) = v10[i + 3] - v10[3];
              v12 = v10[2];
            }
          }

          v15 = *&self->mutable__;
          v16 = [(OrgApacheLuceneSearchPhraseQuery *)self getTerms];
          v17 = [OrgApacheLuceneSearchPhraseQuery alloc];
          sub_1000AC334(v17, v15, v16, v11);
          initWithOrgApacheLuceneIndexTerm = v17;
          goto LABEL_19;
        }
      }
    }

LABEL_22:
    JreThrowNullPointerException();
  }

  initWithOrgApacheLuceneIndexTerm = new_OrgApacheLuceneSearchMatchNoDocsQuery_init();
LABEL_19:
  v18 = initWithOrgApacheLuceneIndexTerm;
  [(OrgApacheLuceneSearchQuery *)self getBoost];
  [v18 setBoostWithFloat:?];
  return v18;
}

- (id)toStringWithNSString:(id)a3
{
  v4 = self;
  v5 = [(OrgApacheLuceneSearchPhraseQuery *)self getTerms];
  v6 = [(OrgApacheLuceneSearchPhraseQuery *)v4 getPositions];
  v7 = new_JavaLangStringBuilder_init();
  v8 = *&v4->slop_;
  if (v8 && ([v8 isEqual:a3] & 1) == 0)
  {
    [(JavaLangStringBuilder *)v7 appendWithNSString:*&v4->slop_];
    [(JavaLangStringBuilder *)v7 appendWithNSString:@":"];
  }

  [(JavaLangStringBuilder *)v7 appendWithNSString:@""];
  if (!v6)
  {
    goto LABEL_44;
  }

  v9 = v6[2];
  if (v9)
  {
    v10 = v9 - 1;
    if (v9 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, v10);
    }

    v11 = v6[v10 + 3] + 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [IOSObjectArray arrayWithLength:v11 type:NSString_class_()];
  if (!v5)
  {
LABEL_44:
    JreThrowNullPointerException();
  }

  v13 = v12;
  if (v5[2] >= 1)
  {
    v35 = v4;
    v14 = 0;
    do
    {
      v15 = v6[2];
      if (v14 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v14);
      }

      v16 = v6[v14 + 3];
      v17 = v16;
      v18 = *(v13 + 8);
      if (v16 < 0 || v16 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v16);
      }

      v19 = *(v13 + 24 + 8 * v16);
      v20 = v5[2];
      if (v19)
      {
        if (v14 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, v14);
        }

        v21 = *&v5[2 * v14 + 6];
        if (!v21)
        {
          goto LABEL_44;
        }

        [v21 text];
        v29 = JreStrcat("$C$", v22, v23, v24, v25, v26, v27, v28, v19);
      }

      else
      {
        if (v14 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, v14);
        }

        v30 = *&v5[2 * v14 + 6];
        if (!v30)
        {
          goto LABEL_44;
        }

        v29 = [v30 text];
      }

      IOSObjectArray_Set(v13, v17, v29);
      ++v14;
    }

    while (v14 < v5[2]);
    v4 = v35;
  }

  if (*(v13 + 8) >= 1)
  {
    v31 = 0;
    do
    {
      if (v31)
      {
        [(JavaLangStringBuilder *)v7 appendWithChar:32];
      }

      v32 = *(v13 + 8);
      if (v31 >= v32)
      {
        IOSArray_throwOutOfBoundsWithMsg(v32, v31);
      }

      if (*(v13 + 24 + 8 * v31))
      {
        [(JavaLangStringBuilder *)v7 appendWithNSString:?];
      }

      else
      {
        [(JavaLangStringBuilder *)v7 appendWithChar:63];
      }

      ++v31;
    }

    while (v31 < *(v13 + 8));
  }

  [(JavaLangStringBuilder *)v7 appendWithNSString:@""];
  if (*&v4->mutable__)
  {
    [(JavaLangStringBuilder *)v7 appendWithNSString:@"~"];
    [(JavaLangStringBuilder *)v7 appendWithInt:*&v4->mutable__];
  }

  [(OrgApacheLuceneSearchQuery *)v4 getBoost];
  [(JavaLangStringBuilder *)v7 appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_(v33)];

  return [(JavaLangStringBuilder *)v7 description];
}

- (BOOL)isEqual:(id)a3
{
  v9.receiver = self;
  v9.super_class = OrgApacheLuceneSearchPhraseQuery;
  v5 = [(OrgApacheLuceneSearchQuery *)&v9 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if (!a3)
    {
      goto LABEL_12;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    if (*&self->mutable__ != *(a3 + 4))
    {
      LOBYTE(v5) = 0;
      return v5;
    }

    v6 = *(&self->field_ + 4);
    if (!v6)
    {
      goto LABEL_12;
    }

    v5 = [v6 isEqual:*(a3 + 28)];
    if (!v5)
    {
      return v5;
    }

    v7 = *(&self->terms_ + 4);
    if (!v7)
    {
LABEL_12:
      JreThrowNullPointerException();
    }

    LOBYTE(v5) = [v7 isEqual:*(a3 + 36)];
  }

  return v5;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = OrgApacheLuceneSearchPhraseQuery;
  v3 = [(OrgApacheLuceneSearchQuery *)&v10 hash];
  v4 = *(&self->field_ + 4);
  if (!v4 || (v5 = *&self->mutable__, v6 = [v4 hash], (v7 = *(&self->terms_ + 4)) == 0))
  {
    JreThrowNullPointerException();
  }

  v8 = v6 - (v5 - v3 + 32 * v3) + 32 * (v5 - v3 + 32 * v3);
  return ([v7 hash] - v8 + 32 * v8);
}

- (void)addWithOrgApacheLuceneIndexTerm:(id)a3
{
  v4 = *(&self->terms_ + 4);
  if (!v4)
  {
    goto LABEL_9;
  }

  if ([v4 size] >= 1)
  {
    v6 = [*(&self->terms_ + 4) getWithInt:{objc_msgSend(*(&self->terms_ + 4), "size") - 1}];
    if (v6)
    {
      v7 = [v6 intValue] + 1;
      goto LABEL_6;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  v7 = 0;
LABEL_6:

  [(OrgApacheLuceneSearchPhraseQuery *)self addWithOrgApacheLuceneIndexTerm:a3 withInt:v7];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchPhraseQuery;
  [(OrgApacheLuceneSearchPhraseQuery *)&v3 dealloc];
}

@end