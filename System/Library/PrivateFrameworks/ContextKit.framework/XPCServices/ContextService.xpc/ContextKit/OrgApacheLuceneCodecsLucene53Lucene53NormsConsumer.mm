@interface OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer
- (void)addConstantWithLong:(int64_t)a3;
- (void)addNormsFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withJavaLangIterable:(id)a4;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer

- (void)addNormsFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withJavaLangIterable:(id)a4
{
  meta = self->meta_;
  if (!meta)
  {
    goto LABEL_29;
  }

  if (!a3)
  {
    goto LABEL_29;
  }

  [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:*(a3 + 4)];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  if (!a4)
  {
    goto LABEL_29;
  }

  v8 = [a4 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v8)
  {
    if (!self->maxDoc_)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      v20 = 0x8000000000000000;
      goto LABEL_18;
    }

    v30 = a3;
    goto LABEL_33;
  }

  v16 = v8;
  v30 = a3;
  v17 = 0;
  v18 = *v32;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 0x8000000000000000;
  do
  {
    v21 = 0;
    v22 = v17;
    v17 += v16;
    do
    {
      if (*v32 != v18)
      {
        objc_enumerationMutation(a4);
      }

      v23 = *(*(&v31 + 1) + 8 * v21);
      if (!v23)
      {
        v28 = v30[1];
        v26 = JreStrcat("$$$I", v9, v10, v11, v12, v13, v14, v15, @"illegal norms data for field ");
        goto LABEL_31;
      }

      v24 = [v23 longLongValue];
      v19 = JavaLangMath_minWithLong_withLong_(v19, v24);
      v20 = JavaLangMath_maxWithLong_withLong_(v20, v24);
      ++v22;
      v21 = v21 + 1;
    }

    while (v16 != v21);
    v16 = [a4 countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v16);
  if (v17 != self->maxDoc_)
  {
LABEL_33:
    v29 = v30[1];
    v26 = JreStrcat("$$$I$I", v9, v10, v11, v12, v13, v14, v15, @"illegal norms data for field ");
LABEL_31:
    v27 = new_JavaLangIllegalStateException_initWithNSString_(v26);
    objc_exception_throw(v27);
  }

  if (v19 == v20)
  {
    v25 = self->meta_;
    if (v25)
    {
      [(OrgApacheLuceneStoreIndexOutput *)v25 writeByteWithByte:0];
      [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeLongWithLong:v19];
      return;
    }

LABEL_29:
    JreThrowNullPointerException();
  }

LABEL_18:
  if (v19 < -128 || v20 > 127)
  {
    if (v19 < -32768 || v20 >= 0x8000)
    {
      if (v19 < 0xFFFFFFFF80000000 || v20 > 0x7FFFFFFF)
      {
        sub_100107A0C(self, a4);
      }

      else
      {
        sub_1001078BC(self, a4);
      }
    }

    else
    {
      sub_10010776C(self, a4);
    }
  }

  else
  {
    sub_10010761C(self, a4);
  }
}

- (void)addConstantWithLong:(int64_t)a3
{
  meta = self->meta_;
  if (!meta)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexOutput *)meta writeByteWithByte:0];
  v6 = self->meta_;

  [(OrgApacheLuceneStoreDataOutput *)v6 writeLongWithLong:a3];
}

- (void)close
{
  meta = self->meta_;
  if (meta)
  {
    [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:0xFFFFFFFFLL];
    OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(self->meta_);
  }

  data = self->data_;
  if (data)
  {
    OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(data);
    v5 = self->data_;
  }

  else
  {
    v5 = 0;
  }

  v6 = self->meta_;
  v9[0] = v5;
  v9[1] = v6;
  v7 = [IOSObjectArray arrayWithObjects:v9 count:2 type:JavaIoCloseable_class_()];
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v7);
  v8 = JreStrongAssign(&self->data_, 0);
  JreStrongAssign(&self->meta_, v8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer;
  [(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *)&v3 dealloc];
}

@end