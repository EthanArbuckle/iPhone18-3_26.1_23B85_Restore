@interface OrgApacheLuceneSearchFieldValueHitQueue
- (id)fillFieldsWithOrgApacheLuceneSearchFieldValueHitQueue_Entry:(id)entry;
- (id)getComparatorsWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFieldValueHitQueue

- (id)getComparatorsWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  comparators = self->comparators_;
  if (!comparators)
  {
    goto LABEL_10;
  }

  v6 = [IOSObjectArray arrayWithLength:comparators->super.size_ type:OrgApacheLuceneSearchLeafFieldComparator_class_()];
  if (v6->super.size_ >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = self->comparators_;
      size = v8->super.size_;
      if (v7 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v7);
      }

      v10 = (&v8->elementType_)[v7];
      if (!v10)
      {
        break;
      }

      IOSObjectArray_Set(v6, v7++, [(IOSClass *)v10 getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:context]);
      if (v7 >= v6->super.size_)
      {
        return v6;
      }
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  return v6;
}

- (id)fillFieldsWithOrgApacheLuceneSearchFieldValueHitQueue_Entry:(id)entry
{
  comparators = self->comparators_;
  if (!comparators)
  {
    goto LABEL_14;
  }

  size = comparators->super.size_;
  v7 = [IOSObjectArray arrayWithLength:size type:NSObject_class_()];
  if (size >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = self->comparators_;
      v10 = v9->super.size_;
      if (v8 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v8);
      }

      v11 = (&v9->elementType_)[v8];
      if (!v11 || !entry)
      {
        break;
      }

      IOSObjectArray_Set(v7, v8++, [(IOSClass *)v11 valueWithInt:*(entry + 5)]);
      if (size == v8)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  if (!entry)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = new_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_withNSObjectArray_(*(entry + 3), v7, *(entry + 2));

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldValueHitQueue;
  [(OrgApacheLuceneUtilPriorityQueue *)&v3 dealloc];
}

@end