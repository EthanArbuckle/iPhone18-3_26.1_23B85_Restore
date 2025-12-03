@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData
- (void)addTermWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData

- (void)addTermWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  freqs = self->freqs_;
  if (!freqs)
  {
    goto LABEL_11;
  }

  ord = self->ord_;
  size = freqs->super.size_;
  if (ord < 0 || ord >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, ord);
  }

  *(&freqs->super.size_ + ord + 1) = int;
  prefixLengths = self->prefixLengths_;
  if (!prefixLengths)
  {
    goto LABEL_11;
  }

  v10 = self->ord_;
  v11 = prefixLengths->super.size_;
  if (v10 < 0 || v10 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v10);
  }

  *(&prefixLengths->super.size_ + v10 + 1) = withInt;
  suffixLengths = self->suffixLengths_;
  if (!suffixLengths)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v13 = self->ord_;
  v14 = suffixLengths->super.size_;
  if (v13 < 0 || v13 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v13);
  }

  *(&suffixLengths->super.size_ + v13 + 1) = a5;
  ++self->ord_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData;
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData *)&v3 dealloc];
}

@end