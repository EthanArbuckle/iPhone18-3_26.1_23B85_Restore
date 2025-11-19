@interface OrgApacheLuceneStoreDataOutput
- (void)copyBytesWithOrgApacheLuceneStoreDataInput:(id)a3 withLong:(int64_t)a4;
- (void)dealloc;
- (void)writeIntWithInt:(int)a3;
- (void)writeLongWithLong:(int64_t)a3;
- (void)writeMapOfStringsWithJavaUtilMap:(id)a3;
- (void)writeSetOfStringsWithJavaUtilSet:(id)a3;
- (void)writeShortWithShort:(signed __int16)a3;
- (void)writeSignedVLongWithLong:(int64_t)a3;
- (void)writeStringSetWithJavaUtilSet:(id)a3;
- (void)writeStringStringMapWithJavaUtilMap:(id)a3;
- (void)writeStringWithNSString:(id)a3;
- (void)writeVIntWithInt:(int)a3;
- (void)writeVLongWithLong:(int64_t)a3;
- (void)writeZIntWithInt:(int)a3;
- (void)writeZLongWithLong:(int64_t)a3;
@end

@implementation OrgApacheLuceneStoreDataOutput

- (void)writeIntWithInt:(int)a3
{
  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:(a3 >> 24)];
  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:(a3 << 8 >> 24)];
  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:(a3 >> 8)];

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:a3];
}

- (void)writeShortWithShort:(signed __int16)a3
{
  v3 = a3;
  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:(a3 >> 8)];

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v3];
}

- (void)writeVIntWithInt:(int)a3
{
  v3 = a3;
  if (a3 >= 0x80)
  {
    do
    {
      [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v3 | 0xFFFFFF80];
      v5 = v3 >> 7;
      v6 = v3 >> 14;
      v3 >>= 7;
    }

    while (v6);
  }

  else
  {
    LOBYTE(v5) = a3;
  }

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v5];
}

- (void)writeZIntWithInt:(int)a3
{
  v4 = OrgApacheLuceneUtilBitUtil_zigZagEncodeWithInt_(a3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    do
    {
      [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v5 | 0xFFFFFF80];
      v6 = v5 >> 7;
      v7 = v5 >> 14;
      v5 >>= 7;
    }

    while (v7);
  }

  else
  {
    LOBYTE(v6) = v4;
  }

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v6];
}

- (void)writeLongWithLong:(int64_t)a3
{
  [(OrgApacheLuceneStoreDataOutput *)self writeIntWithInt:HIDWORD(a3)];

  [(OrgApacheLuceneStoreDataOutput *)self writeIntWithInt:a3];
}

- (void)writeVLongWithLong:(int64_t)a3
{
  v8 = a3;
  if (a3 < 0)
  {
    v12 = JreStrcat("$JC", a2, a3, v3, v4, v5, v6, v7, @"cannot write negative vLong (got: ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  if (a3 >= 0x80)
  {
    do
    {
      [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v8 | 0xFFFFFF80];
      v10 = v8 >> 7;
      v11 = v8 >> 14;
      v8 >>= 7;
    }

    while (v11);
  }

  else
  {
    LOBYTE(v10) = a3;
  }

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v10];
}

- (void)writeSignedVLongWithLong:(int64_t)a3
{
  v3 = a3;
  if (a3 >= 0x80)
  {
    do
    {
      [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v3 | 0xFFFFFF80];
      v5 = v3 >> 7;
      v6 = v3 >> 14;
      v3 >>= 7;
    }

    while (v6);
  }

  else
  {
    LOBYTE(v5) = a3;
  }

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v5];
}

- (void)writeZLongWithLong:(int64_t)a3
{
  v4 = OrgApacheLuceneUtilBitUtil_zigZagEncodeWithLong_(a3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    do
    {
      [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v5 | 0xFFFFFF80];
      v6 = v5 >> 7;
      v7 = v5 >> 14;
      v5 >>= 7;
    }

    while (v7);
  }

  else
  {
    LOBYTE(v6) = v4;
  }

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v6];
}

- (void)writeStringWithNSString:(id)a3
{
  v4 = new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(a3);
  v5 = v4;
  length = v4->length_;
  if (length >= 0x80)
  {
    do
    {
      [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:length | 0xFFFFFF80];
      v7 = length >> 7;
      v8 = length >> 14;
      length >>= 7;
    }

    while (v8);
  }

  else
  {
    v7 = v4->length_;
  }

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v7];
  bytes = v5->bytes_;
  offset = v5->offset_;
  v11 = v5->length_;

  [(OrgApacheLuceneStoreDataOutput *)self writeBytesWithByteArray:bytes withInt:offset withInt:v11];
}

- (void)copyBytesWithOrgApacheLuceneStoreDataInput:(id)a3 withLong:(int64_t)a4
{
  if (!self->copyBuffer_)
  {
    JreStrongAssignAndConsume(&self->copyBuffer_, [IOSByteArray newArrayWithLength:0x4000]);
  }

  if (a4 >= 1)
  {
    if (!a3)
    {
      JreThrowNullPointerException();
    }

    do
    {
      if (a4 >= 0x4000)
      {
        v7 = 0x4000;
      }

      else
      {
        v7 = a4;
      }

      [a3 readBytesWithByteArray:self->copyBuffer_ withInt:0 withInt:v7];
      [(OrgApacheLuceneStoreDataOutput *)self writeBytesWithByteArray:self->copyBuffer_ withInt:0 withInt:v7];
      v8 = a4 <= v7;
      a4 -= v7;
    }

    while (!v8);
  }
}

- (void)writeStringStringMapWithJavaUtilMap:(id)a3
{
  if (a3)
  {
    -[OrgApacheLuceneStoreDataOutput writeIntWithInt:](self, "writeIntWithInt:", [a3 size]);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [a3 entrySet];
    if (!v5)
    {
LABEL_15:
      JreThrowNullPointerException();
    }

    v6 = v5;
    v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (!v11)
          {
            goto LABEL_15;
          }

          -[OrgApacheLuceneStoreDataOutput writeStringWithNSString:](self, "writeStringWithNSString:", [*(*(&v12 + 1) + 8 * i) getKey]);
          -[OrgApacheLuceneStoreDataOutput writeStringWithNSString:](self, "writeStringWithNSString:", [v11 getValue]);
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {

    [(OrgApacheLuceneStoreDataOutput *)self writeIntWithInt:0];
  }
}

- (void)writeMapOfStringsWithJavaUtilMap:(id)a3
{
  if (!a3)
  {
    goto LABEL_15;
  }

  v5 = [a3 size];
  v6 = v5;
  if (v5 >= 0x80)
  {
    do
    {
      [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v6 | 0xFFFFFF80];
      v7 = v6 >> 7;
      v8 = v6 >> 14;
      v6 >>= 7;
    }

    while (v8);
  }

  else
  {
    LOBYTE(v7) = v5;
  }

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v7];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [a3 entrySet];
  if (!v9)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v10 = v9;
  v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if (!v15)
        {
          goto LABEL_15;
        }

        -[OrgApacheLuceneStoreDataOutput writeStringWithNSString:](self, "writeStringWithNSString:", [*(*(&v16 + 1) + 8 * i) getKey]);
        -[OrgApacheLuceneStoreDataOutput writeStringWithNSString:](self, "writeStringWithNSString:", [v15 getValue]);
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)writeStringSetWithJavaUtilSet:(id)a3
{
  if (a3)
  {
    -[OrgApacheLuceneStoreDataOutput writeIntWithInt:](self, "writeIntWithInt:", [a3 size]);
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(a3);
          }

          [(OrgApacheLuceneStoreDataOutput *)self writeStringWithNSString:*(*(&v9 + 1) + 8 * i)];
        }

        v6 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else
  {

    [(OrgApacheLuceneStoreDataOutput *)self writeIntWithInt:0];
  }
}

- (void)writeSetOfStringsWithJavaUtilSet:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 size];
  v6 = v5;
  if (v5 >= 0x80)
  {
    do
    {
      [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v6 | 0xFFFFFF80];
      v7 = v6 >> 7;
      v8 = v6 >> 14;
      v6 >>= 7;
    }

    while (v8);
  }

  else
  {
    LOBYTE(v7) = v5;
  }

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v7];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(a3);
        }

        [(OrgApacheLuceneStoreDataOutput *)self writeStringWithNSString:*(*(&v13 + 1) + 8 * i)];
      }

      v10 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreDataOutput;
  [(OrgApacheLuceneStoreDataOutput *)&v3 dealloc];
}

@end