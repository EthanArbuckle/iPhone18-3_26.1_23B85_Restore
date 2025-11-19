@interface ComAppleProactiveLuceneTopDocsFilter
- (id)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(id)a3 withOrgApacheLuceneUtilBits:(id)a4;
- (id)toStringWithNSString:(id)a3;
- (void)dealloc;
@end

@implementation ComAppleProactiveLuceneTopDocsFilter

- (id)toStringWithNSString:(id)a3
{
  v4.receiver = self;
  v4.super_class = ComAppleProactiveLuceneTopDocsFilter;
  return [(OrgApacheLuceneSearchQuery *)&v4 description];
}

- (id)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(id)a3 withOrgApacheLuceneUtilBits:(id)a4
{
  v7 = new_ComAppleProactiveOrgApacheLuceneUtilOpenBitSet_init();
  if (!a3)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *(a3 + 8);
  if (a4)
  {
    v10 = [a4 length];
  }

  else
  {
    v11 = [a3 reader];
    if (!v11)
    {
      goto LABEL_21;
    }

    v10 = [v11 maxDoc];
  }

  v12 = *(&self->super.super.boost_ + 1);
  if (!v12)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v13 = (v12 + 24);
  v14 = v12 + 24 + 8 * *(v12 + 8);
  if (v12 + 24 >= v14)
  {
    return 0;
  }

  v15 = 0;
  v16 = v10 + v9;
  do
  {
    v18 = *v13++;
    v17 = v18;
    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = *(v17 + 12);
    if (v19 >= v9 && v19 < v16)
    {
      [(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet *)v8 setWithLong:v19 - v9];
      v15 = 1;
    }
  }

  while (v13 < v14);
  if (v15)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneTopDocsFilter;
  [(ComAppleProactiveLuceneTopDocsFilter *)&v3 dealloc];
}

@end