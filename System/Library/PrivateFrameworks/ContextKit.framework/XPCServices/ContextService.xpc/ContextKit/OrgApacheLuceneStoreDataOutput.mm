@interface OrgApacheLuceneStoreDataOutput
- (void)copyBytesWithOrgApacheLuceneStoreDataInput:(id)input withLong:(int64_t)long;
- (void)dealloc;
- (void)writeIntWithInt:(int)int;
- (void)writeLongWithLong:(int64_t)long;
- (void)writeMapOfStringsWithJavaUtilMap:(id)map;
- (void)writeSetOfStringsWithJavaUtilSet:(id)set;
- (void)writeShortWithShort:(signed __int16)short;
- (void)writeSignedVLongWithLong:(int64_t)long;
- (void)writeStringSetWithJavaUtilSet:(id)set;
- (void)writeStringStringMapWithJavaUtilMap:(id)map;
- (void)writeStringWithNSString:(id)string;
- (void)writeVIntWithInt:(int)int;
- (void)writeVLongWithLong:(int64_t)long;
- (void)writeZIntWithInt:(int)int;
- (void)writeZLongWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneStoreDataOutput

- (void)writeIntWithInt:(int)int
{
  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:(int >> 24)];
  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:(int << 8 >> 24)];
  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:(int >> 8)];

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:int];
}

- (void)writeShortWithShort:(signed __int16)short
{
  shortCopy = short;
  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:(short >> 8)];

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:shortCopy];
}

- (void)writeVIntWithInt:(int)int
{
  intCopy = int;
  if (int >= 0x80)
  {
    do
    {
      [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:intCopy | 0xFFFFFF80];
      v5 = intCopy >> 7;
      v6 = intCopy >> 14;
      intCopy >>= 7;
    }

    while (v6);
  }

  else
  {
    LOBYTE(v5) = int;
  }

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v5];
}

- (void)writeZIntWithInt:(int)int
{
  v4 = OrgApacheLuceneUtilBitUtil_zigZagEncodeWithInt_(int);
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

- (void)writeLongWithLong:(int64_t)long
{
  [(OrgApacheLuceneStoreDataOutput *)self writeIntWithInt:HIDWORD(long)];

  [(OrgApacheLuceneStoreDataOutput *)self writeIntWithInt:long];
}

- (void)writeVLongWithLong:(int64_t)long
{
  longCopy = long;
  if (long < 0)
  {
    v12 = JreStrcat("$JC", a2, long, v3, v4, v5, v6, v7, @"cannot write negative vLong (got: ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  if (long >= 0x80)
  {
    do
    {
      [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:longCopy | 0xFFFFFF80];
      v10 = longCopy >> 7;
      v11 = longCopy >> 14;
      longCopy >>= 7;
    }

    while (v11);
  }

  else
  {
    LOBYTE(v10) = long;
  }

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v10];
}

- (void)writeSignedVLongWithLong:(int64_t)long
{
  longCopy = long;
  if (long >= 0x80)
  {
    do
    {
      [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:longCopy | 0xFFFFFF80];
      v5 = longCopy >> 7;
      v6 = longCopy >> 14;
      longCopy >>= 7;
    }

    while (v6);
  }

  else
  {
    LOBYTE(v5) = long;
  }

  [(OrgApacheLuceneStoreDataOutput *)self writeByteWithByte:v5];
}

- (void)writeZLongWithLong:(int64_t)long
{
  v4 = OrgApacheLuceneUtilBitUtil_zigZagEncodeWithLong_(long);
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

- (void)writeStringWithNSString:(id)string
{
  v4 = new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(string);
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

- (void)copyBytesWithOrgApacheLuceneStoreDataInput:(id)input withLong:(int64_t)long
{
  if (!self->copyBuffer_)
  {
    JreStrongAssignAndConsume(&self->copyBuffer_, [IOSByteArray newArrayWithLength:0x4000]);
  }

  if (long >= 1)
  {
    if (!input)
    {
      JreThrowNullPointerException();
    }

    do
    {
      if (long >= 0x4000)
      {
        longCopy = 0x4000;
      }

      else
      {
        longCopy = long;
      }

      [input readBytesWithByteArray:self->copyBuffer_ withInt:0 withInt:longCopy];
      [(OrgApacheLuceneStoreDataOutput *)self writeBytesWithByteArray:self->copyBuffer_ withInt:0 withInt:longCopy];
      v8 = long <= longCopy;
      long -= longCopy;
    }

    while (!v8);
  }
}

- (void)writeStringStringMapWithJavaUtilMap:(id)map
{
  if (map)
  {
    -[OrgApacheLuceneStoreDataOutput writeIntWithInt:](self, "writeIntWithInt:", [map size]);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    entrySet = [map entrySet];
    if (!entrySet)
    {
LABEL_15:
      JreThrowNullPointerException();
    }

    v6 = entrySet;
    v7 = [entrySet countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)writeMapOfStringsWithJavaUtilMap:(id)map
{
  if (!map)
  {
    goto LABEL_15;
  }

  v5 = [map size];
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
  entrySet = [map entrySet];
  if (!entrySet)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v10 = entrySet;
  v11 = [entrySet countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)writeStringSetWithJavaUtilSet:(id)set
{
  if (set)
  {
    -[OrgApacheLuceneStoreDataOutput writeIntWithInt:](self, "writeIntWithInt:", [set size]);
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [set countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(set);
          }

          [(OrgApacheLuceneStoreDataOutput *)self writeStringWithNSString:*(*(&v9 + 1) + 8 * i)];
        }

        v6 = [set countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else
  {

    [(OrgApacheLuceneStoreDataOutput *)self writeIntWithInt:0];
  }
}

- (void)writeSetOfStringsWithJavaUtilSet:(id)set
{
  if (!set)
  {
    JreThrowNullPointerException();
  }

  v5 = [set size];
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
  v9 = [set countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(set);
        }

        [(OrgApacheLuceneStoreDataOutput *)self writeStringWithNSString:*(*(&v13 + 1) + 8 * i)];
      }

      v10 = [set countByEnumeratingWithState:&v13 objects:v17 count:16];
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