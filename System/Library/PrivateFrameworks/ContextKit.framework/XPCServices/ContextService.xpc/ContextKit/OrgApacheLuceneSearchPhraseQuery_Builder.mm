@interface OrgApacheLuceneSearchPhraseQuery_Builder
- (OrgApacheLuceneSearchPhraseQuery_Builder)init;
- (id)addWithOrgApacheLuceneIndexTerm:(id)term;
- (id)addWithOrgApacheLuceneIndexTerm:(id)term withInt:(int)int;
- (id)build;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchPhraseQuery_Builder

- (OrgApacheLuceneSearchPhraseQuery_Builder)init
{
  self->slop_ = 0;
  v3 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->terms_, v3);
  v4 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->positions_, v4);
  return self;
}

- (id)addWithOrgApacheLuceneIndexTerm:(id)term
{
  positions = self->positions_;
  if (!positions)
  {
    goto LABEL_9;
  }

  if (([(JavaUtilList *)positions isEmpty]& 1) != 0)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v7 = [(JavaUtilList *)self->positions_ getWithInt:[(JavaUtilList *)self->positions_ size]- 1];
  if (!v7)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v6 = [v7 intValue] + 1;
LABEL_6:

  return [(OrgApacheLuceneSearchPhraseQuery_Builder *)self addWithOrgApacheLuceneIndexTerm:term withInt:v6];
}

- (id)addWithOrgApacheLuceneIndexTerm:(id)term withInt:(int)int
{
  if (!term)
  {
    goto LABEL_18;
  }

  field = [term field];
  v8 = OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_([term bytes]);
  v9 = new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(field, v8);
  if (int < 0)
  {
    v32 = JreStrcat("$I", v10, v11, v12, v13, v14, v15, v16, @"Positions must be >= 0, got ");
    goto LABEL_17;
  }

  v17 = v9;
  positions = self->positions_;
  if (!positions)
  {
    goto LABEL_18;
  }

  if (([(JavaUtilList *)positions isEmpty]& 1) == 0)
  {
    v19 = [(JavaUtilList *)self->positions_ getWithInt:[(JavaUtilList *)self->positions_ size]- 1];
    if (!v19)
    {
      goto LABEL_18;
    }

    if ([v19 intValue] > int)
    {
      v32 = JreStrcat("$I$I", v20, v21, v22, v23, v24, v25, v26, @"Positions must be added in order, got ");
      goto LABEL_17;
    }
  }

  terms = self->terms_;
  if (!terms)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  if (([(JavaUtilList *)terms isEmpty]& 1) == 0)
  {
    field2 = [(OrgApacheLuceneIndexTerm *)v17 field];
    if (field2)
    {
      v29 = field2;
      v30 = [(JavaUtilList *)self->terms_ getWithInt:0];
      if (v30)
      {
        if ([v29 isEqual:{objc_msgSend(v30, "field")}])
        {
          goto LABEL_12;
        }

        [(OrgApacheLuceneIndexTerm *)v17 field];
        v33 = [(JavaUtilList *)self->terms_ getWithInt:0];
        if (v33)
        {
          [v33 field];
          v32 = JreStrcat("$$$$", v34, v35, v36, v37, v38, v39, v40, @"All terms must be on the same field, got ");
LABEL_17:
          v41 = new_JavaLangIllegalArgumentException_initWithNSString_(v32);
          objc_exception_throw(v41);
        }
      }
    }

    goto LABEL_18;
  }

LABEL_12:
  [(JavaUtilList *)self->terms_ addWithId:v17];
  [(JavaUtilList *)self->positions_ addWithId:JavaLangInteger_valueOfWithInt_(int)];
  return self;
}

- (id)build
{
  terms = self->terms_;
  if (!terms)
  {
    goto LABEL_13;
  }

  v4 = [(JavaUtilList *)terms toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[(JavaUtilList *)self->terms_ size] type:OrgApacheLuceneIndexTerm_class_()]];
  positions = self->positions_;
  if (!positions)
  {
    goto LABEL_13;
  }

  v6 = [IOSIntArray arrayWithLength:[(JavaUtilList *)positions size]];
  v7 = v6;
  if (v6->super.size_ >= 1)
  {
    v8 = 0;
    v9 = v6;
    while (1)
    {
      v10 = [(JavaUtilList *)self->positions_ getWithInt:v8];
      if (!v10)
      {
        break;
      }

      intValue = [v10 intValue];
      v12 = *(v7 + 8);
      if (v8 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v8);
      }

      *(&v9->super.size_ + 1) = intValue;
      ++v8;
      v9 = (v9 + 4);
      if (v8 >= *(v7 + 8))
      {
        goto LABEL_10;
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

LABEL_10:
  slop = self->slop_;
  v14 = [OrgApacheLuceneSearchPhraseQuery alloc];
  sub_1000AC334(v14, slop, v4, v7);

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchPhraseQuery_Builder;
  [(OrgApacheLuceneSearchPhraseQuery_Builder *)&v3 dealloc];
}

@end