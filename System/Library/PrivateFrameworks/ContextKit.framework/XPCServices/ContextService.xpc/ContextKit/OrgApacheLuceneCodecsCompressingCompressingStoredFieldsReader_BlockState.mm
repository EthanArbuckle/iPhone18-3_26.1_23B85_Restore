@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState
- (id)documentWithInt:(int)int;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState

- (id)documentWithInt:(int)int
{
  if (![(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState *)self containsWithInt:?])
  {
    v35 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v35);
  }

  offsets = self->offsets_;
  if (!offsets)
  {
    goto LABEL_29;
  }

  v6 = (int - self->docBase_);
  size = offsets->super.size_;
  if ((v6 & 0x80000000) != 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int - self->docBase_));
  }

  v8 = self->offsets_;
  v9 = *(&offsets->super.size_ + v6 + 1);
  v10 = v6 + 1;
  if (v6 + 1 < 0 || v10 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v10);
  }

  v11 = *(&v8->super.size_ + v10 + 1);
  chunkDocs = self->chunkDocs_;
  if (chunkDocs < 0 || chunkDocs >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, chunkDocs);
  }

  numStoredFields = self->numStoredFields_;
  if (!numStoredFields)
  {
    goto LABEL_29;
  }

  v14 = *(&v8->super.size_ + chunkDocs + 1);
  v15 = numStoredFields->super.size_;
  if ((v6 & 0x80000000) != 0 || v6 >= v15)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, v6);
  }

  v16 = (v11 - v9);
  v17 = *(&numStoredFields->super.size_ + v6 + 1);
  if (v11 != v9)
  {
    if (*(objc_loadWeak(&self->this$0_) + 76) == 1)
    {
      bytes = self->bytes_;
      if (bytes)
      {
        v20 = bytes->bytes_;
        offset = (bytes->offset_ + v9);
        length = (v11 - v9);
LABEL_24:
        v18 = new_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(v20, offset, length);
        goto LABEL_25;
      }
    }

    else
    {
      sliced = self->sliced_;
      v24 = *(objc_loadWeak(&self->this$0_) + 5);
      if (sliced)
      {
        if (v24)
        {
          [v24 seekWithLong:self->startPointer_];
          v25 = *(objc_loadWeak(&self->this$0_) + 8);
          if (v25)
          {
            v26 = *(objc_loadWeak(&self->this$0_) + 5);
            v27 = *(objc_loadWeak(&self->this$0_) + 12);
            Weak = objc_loadWeak(&self->this$0_);
            [v25 decompressWithOrgApacheLuceneStoreDataInput:v26 withInt:v27 withInt:v9 withInt:JavaLangMath_minWithInt_withInt_(v16 withOrgApacheLuceneUtilBytesRef:{Weak[12] - v9), self->bytes_}];
            v29 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState__1 alloc];
            sub_1000A5858(v29, self, v16);
            goto LABEL_26;
          }
        }
      }

      else if (v24)
      {
        [v24 seekWithLong:self->startPointer_];
        v30 = *(objc_loadWeak(&self->this$0_) + 8);
        if (v30)
        {
          [v30 decompressWithOrgApacheLuceneStoreDataInput:*(objc_loadWeak(&self->this$0_) + 5) withInt:v14 withInt:v9 withInt:(v11 - v9) withOrgApacheLuceneUtilBytesRef:self->bytes_];
          v31 = self->bytes_;
          v20 = v31->bytes_;
          offset = v31->offset_;
          length = v31->length_;
          goto LABEL_24;
        }
      }
    }

LABEL_29:
    JreThrowNullPointerException();
  }

  v18 = new_OrgApacheLuceneStoreByteArrayDataInput_init();
LABEL_25:
  v29 = v18;
LABEL_26:
  v32 = v29;
  v33 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument alloc];
  JreStrongAssign(&v33->in_, v32);
  v33->length_ = v16;
  v33->numStoredFields_ = v17;

  return v33;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState;
  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState;
  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState *)&v3 __javaClone];
}

@end