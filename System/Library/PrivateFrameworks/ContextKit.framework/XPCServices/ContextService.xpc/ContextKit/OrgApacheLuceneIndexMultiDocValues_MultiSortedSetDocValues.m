@interface OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues
- (id)lookupOrdWithLong:(int64_t)a3;
- (int64_t)getValueCount;
- (int64_t)nextOrd;
- (void)dealloc;
- (void)setDocumentWithInt:(int)a3;
@end

@implementation OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues

- (int64_t)nextOrd
{
  values = self->values_;
  if (!values)
  {
    goto LABEL_11;
  }

  currentSubIndex = self->currentSubIndex_;
  size = values->super.size_;
  if (currentSubIndex < 0 || currentSubIndex >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, currentSubIndex);
  }

  v6 = (&values->elementType_)[currentSubIndex];
  if (!v6)
  {
    goto LABEL_11;
  }

  result = [(IOSClass *)v6 nextOrd];
  if (result == -1)
  {
    return result;
  }

  v8 = result;
  currentGlobalOrds = self->currentGlobalOrds_;
  if (!currentGlobalOrds)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilLongValues *)currentGlobalOrds getWithLong:v8];
}

- (void)setDocumentWithInt:(int)a3
{
  v5 = OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(a3, self->docStarts_);
  self->currentSubIndex_ = v5;
  mapping = self->mapping_;
  if (!mapping)
  {
    goto LABEL_12;
  }

  JreStrongAssign(&self->currentGlobalOrds_, [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)mapping getGlobalOrdsWithInt:v5]);
  values = self->values_;
  if (!values)
  {
    goto LABEL_12;
  }

  currentSubIndex = self->currentSubIndex_;
  size = values->super.size_;
  if (currentSubIndex < 0 || currentSubIndex >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, currentSubIndex);
  }

  v10 = (&values->elementType_)[currentSubIndex];
  if (!v10 || (docStarts = self->docStarts_) == 0)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v12 = self->currentSubIndex_;
  v13 = docStarts->super.size_;
  if (v12 < 0 || v12 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v12);
  }

  v14 = (a3 - *(&docStarts->super.size_ + v12 + 1));

  [(IOSClass *)v10 setDocumentWithInt:v14];
}

- (id)lookupOrdWithLong:(int64_t)a3
{
  mapping = self->mapping_;
  if (!mapping)
  {
    goto LABEL_9;
  }

  v6 = [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)mapping getFirstSegmentNumberWithLong:?];
  v7 = [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)self->mapping_ getFirstSegmentOrdWithLong:a3];
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

  return [(IOSClass *)v11 lookupOrdWithLong:v9];
}

- (int64_t)getValueCount
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
  v3.super_class = OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues;
  [(OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues *)&v3 dealloc];
}

@end