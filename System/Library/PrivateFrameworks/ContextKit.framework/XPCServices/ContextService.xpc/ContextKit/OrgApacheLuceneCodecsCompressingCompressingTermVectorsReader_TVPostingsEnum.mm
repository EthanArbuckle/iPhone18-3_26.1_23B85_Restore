@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVPostingsEnum
- (OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVPostingsEnum)init;
- (id)getPayload;
- (int)endOffset;
- (int)nextDoc;
- (int)nextPosition;
- (int)startOffset;
- (void)dealloc;
- (void)resetWithInt:(int)a3 withInt:(int)a4 withIntArray:(id)a5 withIntArray:(id)a6 withIntArray:(id)a7 withOrgApacheLuceneUtilBytesRef:(id)a8 withIntArray:(id)a9;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVPostingsEnum

- (OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVPostingsEnum)init
{
  OrgApacheLuceneIndexPostingsEnum_init(self, a2);
  self->doc_ = -1;
  v3 = new_OrgApacheLuceneUtilBytesRef_init();
  JreStrongAssignAndConsume(&self->payload_, v3);
  return self;
}

- (void)resetWithInt:(int)a3 withInt:(int)a4 withIntArray:(id)a5 withIntArray:(id)a6 withIntArray:(id)a7 withOrgApacheLuceneUtilBytesRef:(id)a8 withIntArray:(id)a9
{
  self->termFreq_ = a3;
  self->positionIndex_ = a4;
  JreStrongAssign(&self->positions_, a5);
  JreStrongAssign(&self->startOffsets_, a6);
  JreStrongAssign(&self->lengths_, a7);
  if (!a8 || (self->basePayloadOffset_ = *(a8 + 4), (payload = self->payload_) == 0))
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(&payload->bytes_, *(a8 + 1));
  self->payload_->length_ = 0;
  self->payload_->offset_ = 0;
  JreStrongAssign(&self->payloadIndex_, a9);
  self->i_ = -1;
  self->doc_ = -1;
}

- (int)nextPosition
{
  if (self->doc_)
  {
    v23 = new_JavaLangIllegalStateException_init();
    goto LABEL_24;
  }

  i = self->i_;
  if (i >= self->termFreq_ - 1)
  {
    v23 = new_JavaLangIllegalStateException_initWithNSString_(@"Read past last position");
LABEL_24:
    objc_exception_throw(v23);
  }

  v4 = i + 1;
  self->i_ = v4;
  payloadIndex = self->payloadIndex_;
  if (payloadIndex)
  {
    basePayloadOffset = self->basePayloadOffset_;
    positionIndex = self->positionIndex_;
    size = payloadIndex->super.size_;
    v9 = positionIndex + v4;
    v10 = v9;
    if (v9 < 0 || v9 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v9);
    }

    payload = self->payload_;
    if (!payload)
    {
      JreThrowNullPointerException();
    }

    payload->offset_ = *(&payloadIndex->super.size_ + v10 + 1) + basePayloadOffset;
    v12 = self->payloadIndex_;
    v13 = self->positionIndex_;
    v14 = self->i_;
    v15 = v12->super.size_;
    v16 = v13 + v14 + 1;
    if (v16 < 0 || v16 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v16);
    }

    v17 = self->payloadIndex_;
    v18 = v14 + v13;
    if (v18 < 0 || v18 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v18);
    }

    self->payload_->length_ = *(&v12->super.size_ + v16 + 1) - *(&v12->super.size_ + v18 + 1);
  }

  positions = self->positions_;
  if (!positions)
  {
    return -1;
  }

  v20 = positions->super.size_;
  v21 = self->i_ + self->positionIndex_;
  if (v21 < 0 || v21 >= v20)
  {
    IOSArray_throwOutOfBoundsWithMsg(v20, v21);
  }

  return *(&positions->super.size_ + v21 + 1);
}

- (int)startOffset
{
  sub_100084E48(self);
  startOffsets = self->startOffsets_;
  if (!startOffsets)
  {
    return -1;
  }

  size = startOffsets->super.size_;
  v5 = self->i_ + self->positionIndex_;
  if (v5 < 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  return *(&startOffsets->super.size_ + v5 + 1);
}

- (int)endOffset
{
  sub_100084E48(self);
  startOffsets = self->startOffsets_;
  if (!startOffsets)
  {
    return -1;
  }

  size = startOffsets->super.size_;
  v5 = self->i_ + self->positionIndex_;
  if (v5 < 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  lengths = self->lengths_;
  if (!lengths)
  {
    JreThrowNullPointerException();
  }

  v7 = lengths->super.size_;
  v8 = self->i_ + self->positionIndex_;
  if (v8 < 0 || v8 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, v8);
  }

  return *(&lengths->super.size_ + v8 + 1) + *(&startOffsets->super.size_ + v5 + 1);
}

- (id)getPayload
{
  sub_100084E48(self);
  if (!self->payloadIndex_)
  {
    return 0;
  }

  payload = self->payload_;
  if (!payload)
  {
    JreThrowNullPointerException();
  }

  if (payload->length_)
  {
    return self->payload_;
  }

  else
  {
    return 0;
  }
}

- (int)nextDoc
{
  if (self->doc_ == -1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x7FFFFFFF;
  }

  self->doc_ = v2;
  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVPostingsEnum;
  [(OrgApacheLuceneIndexPostingsEnum *)&v3 dealloc];
}

@end