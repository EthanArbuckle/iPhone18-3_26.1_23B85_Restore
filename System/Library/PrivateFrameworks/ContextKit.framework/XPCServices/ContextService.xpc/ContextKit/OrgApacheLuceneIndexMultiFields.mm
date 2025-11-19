@interface OrgApacheLuceneIndexMultiFields
+ (id)getTermsWithOrgApacheLuceneIndexIndexReader:(id)a3 withNSString:(id)a4;
- (id)iterator;
- (id)termsWithNSString:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiFields

+ (id)getTermsWithOrgApacheLuceneIndexIndexReader:(id)a3 withNSString:(id)a4
{
  FieldsWithOrgApacheLuceneIndexIndexReader = OrgApacheLuceneIndexMultiFields_getFieldsWithOrgApacheLuceneIndexIndexReader_(a3);
  if (!FieldsWithOrgApacheLuceneIndexIndexReader)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexMultiFields *)FieldsWithOrgApacheLuceneIndexIndexReader termsWithNSString:a4];
}

- (id)iterator
{
  subs = self->subs_;
  if (!subs)
  {
    goto LABEL_9;
  }

  v4 = [IOSObjectArray arrayWithLength:subs->super.size_ type:JavaUtilIterator_class_()];
  v5 = self->subs_;
  if (v5->super.size_ >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = (&v5->elementType_)[v6];
      if (!v7)
      {
        break;
      }

      IOSObjectArray_Set(v4, v6++, [(IOSClass *)v7 iterator]);
      v5 = self->subs_;
      if (v6 >= v5->super.size_)
      {
        goto LABEL_6;
      }
    }

LABEL_9:
    JreThrowNullPointerException();
  }

LABEL_6:
  v8 = new_OrgApacheLuceneUtilMergedIterator_initWithJavaUtilIteratorArray_(v4);

  return v8;
}

- (id)termsWithNSString:(id)a3
{
  terms = self->terms_;
  if (!terms)
  {
    goto LABEL_22;
  }

  v6 = [(JavaUtilMap *)terms getWithId:?];
  if (v6)
  {
    return v6;
  }

  v7 = new_JavaUtilArrayList_init();
  v8 = new_JavaUtilArrayList_init();
  subs = self->subs_;
  if (!subs)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  v10 = v8;
  v11 = 0;
  while (v11 < subs->super.size_)
  {
    v12 = (&subs->elementType_)[v11];
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = [(IOSClass *)v12 termsWithNSString:a3];
    if (v13)
    {
      [(JavaUtilArrayList *)v7 addWithId:v13];
      subSlices = self->subSlices_;
      if (!subSlices)
      {
        goto LABEL_22;
      }

      size = subSlices->super.size_;
      if (v11 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v11);
      }

      [(JavaUtilArrayList *)v10 addWithId:(&subSlices->elementType_)[v11]];
    }

    ++v11;
    subs = self->subs_;
    if (!subs)
    {
      goto LABEL_22;
    }
  }

  if (![(JavaUtilArrayList *)v7 size])
  {
    return 0;
  }

  if ((atomic_load_explicit(OrgApacheLuceneIndexTerms__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10013113C();
  }

  v16 = [(JavaUtilArrayList *)v7 toArrayWithNSObjectArray:OrgApacheLuceneIndexTerms_EMPTY_ARRAY_];
  if ((atomic_load_explicit(OrgApacheLuceneIndexReaderSlice__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100131148();
  }

  v6 = new_OrgApacheLuceneIndexMultiTerms_initWithOrgApacheLuceneIndexTermsArray_withOrgApacheLuceneIndexReaderSliceArray_(v16, [(JavaUtilArrayList *)v10 toArrayWithNSObjectArray:OrgApacheLuceneIndexReaderSlice_EMPTY_ARRAY_]);
  [(JavaUtilMap *)self->terms_ putWithId:a3 withId:v6];
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiFields;
  [(OrgApacheLuceneIndexMultiFields *)&v3 dealloc];
}

@end