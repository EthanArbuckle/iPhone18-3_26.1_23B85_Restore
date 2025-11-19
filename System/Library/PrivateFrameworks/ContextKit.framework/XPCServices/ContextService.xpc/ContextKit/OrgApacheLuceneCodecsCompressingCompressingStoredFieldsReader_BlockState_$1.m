@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState_$1
- (char)readByte;
- (void)dealloc;
- (void)fillBuffer;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState_$1

- (void)fillBuffer
{
  decompressed = self->decompressed_;
  v3 = self->val$length_;
  v4 = (v3 - decompressed);
  if (v3 == decompressed)
  {
    v9 = new_JavaIoEOFException_init();
    objc_exception_throw(v9);
  }

  Weak = objc_loadWeak(&self->this$0_->this$0_);
  v7 = JavaLangMath_minWithInt_withInt_(v4, Weak[12]);
  v8 = *(objc_loadWeak(&self->this$0_->this$0_) + 8);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  [v8 decompressWithOrgApacheLuceneStoreDataInput:*(objc_loadWeak(&self->this$0_->this$0_) + 5) withInt:v7 withInt:0 withInt:v7 withOrgApacheLuceneUtilBytesRef:self->this$0_->bytes_];
  self->decompressed_ += v7;
}

- (char)readByte
{
  bytes = self->this$0_->bytes_;
  if (!bytes)
  {
    goto LABEL_8;
  }

  length = bytes->length_;
  if (!length)
  {
    [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState_$1 *)self fillBuffer];
    bytes = self->this$0_->bytes_;
    length = bytes->length_;
  }

  bytes->length_ = length - 1;
  v5 = self->this$0_->bytes_;
  v6 = v5->bytes_;
  if (!v6)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  offset = v5->offset_;
  v5->offset_ = offset + 1;
  size = v6->super.size_;
  if (offset < 0 || offset >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, offset);
  }

  return *(&v6->super.size_ + offset + 4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState__1;
  [(OrgApacheLuceneStoreDataInput *)&v3 dealloc];
}

@end