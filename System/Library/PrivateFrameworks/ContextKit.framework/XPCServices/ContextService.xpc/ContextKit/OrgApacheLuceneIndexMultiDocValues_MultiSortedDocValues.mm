@interface OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues
- (id)lookupOrdWithInt:(int)a3;
- (int)getOrdWithInt:(int)a3;
- (int)getValueCount;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues

- (int)getOrdWithInt:(int)a3
{
  v5 = OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(a3, self->docStarts_);
  values = self->values_;
  if (!values)
  {
    goto LABEL_13;
  }

  v7 = v5;
  size = values->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  v9 = (&values->elementType_)[v7];
  if (!v9)
  {
    goto LABEL_13;
  }

  docStarts = self->docStarts_;
  if (!docStarts)
  {
    goto LABEL_13;
  }

  v11 = docStarts->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v7);
  }

  v12 = [(IOSClass *)v9 getOrdWithInt:(a3 - *(&docStarts->super.size_ + v7 + 1))];
  if (v12 != -1)
  {
    v13 = v12;
    mapping = self->mapping_;
    if (mapping)
    {
      v15 = [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)mapping getGlobalOrdsWithInt:v7];
      if (v15)
      {
        return [v15 getWithInt:v13];
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return -1;
}

- (id)lookupOrdWithInt:(int)a3
{
  mapping = self->mapping_;
  if (!mapping)
  {
    goto LABEL_9;
  }

  v5 = a3;
  v6 = [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)mapping getFirstSegmentNumberWithLong:a3];
  v7 = [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)self->mapping_ getFirstSegmentOrdWithLong:v5];
  values = self->values_;
  if (!values)
  {
    goto LABEL_9;
  }

  v9 = v7;
  size = values->super.size_;
  if ((v6 & 0x80000000) != 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  v11 = (&values->elementType_)[v6];
  if (!v11)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  return [(IOSClass *)v11 lookupOrdWithInt:v9];
}

- (int)getValueCount
{
  mapping = self->mapping_;
  if (!mapping)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)mapping getValueCount];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues;
  [(OrgApacheLuceneIndexSortedDocValues *)&v3 dealloc];
}

@end