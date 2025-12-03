@interface OrgApacheLuceneStoreDataInput
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)readMapOfStrings;
- (id)readSetOfStrings;
- (id)readString;
- (id)readStringSet;
- (id)readStringStringMap;
- (int)readInt;
- (int)readVInt;
- (int)readZInt;
- (int64_t)readZLong;
- (void)dealloc;
- (void)skipBytesWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneStoreDataInput

- (int)readInt
{
  v3 = [(OrgApacheLuceneStoreDataInput *)self readByte]<< 24;
  v4 = v3 & 0xFF00FFFF | ([(OrgApacheLuceneStoreDataInput *)self readByte]<< 16);
  v5 = v4 & 0xFFFF00FF | ([(OrgApacheLuceneStoreDataInput *)self readByte]<< 8);
  return v5 & 0xFFFFFF00 | [(OrgApacheLuceneStoreDataInput *)self readByte];
}

- (int)readVInt
{
  readByte = [(OrgApacheLuceneStoreDataInput *)self readByte];
  v4 = readByte;
  if ((readByte & 0x80000000) != 0)
  {
    v5 = readByte & 0x7F;
    readByte2 = [(OrgApacheLuceneStoreDataInput *)self readByte];
    v4 = v5 & 0xFFFFC07F | ((readByte2 & 0x7F) << 7);
    if ((readByte2 & 0x80000000) != 0)
    {
      readByte3 = [(OrgApacheLuceneStoreDataInput *)self readByte];
      v4 = v4 & 0xFFE03FFF | ((readByte3 & 0x7F) << 14);
      if ((readByte3 & 0x80000000) != 0)
      {
        readByte4 = [(OrgApacheLuceneStoreDataInput *)self readByte];
        v4 = v4 & 0xF01FFFFF | ((readByte4 & 0x7F) << 21);
        if ((readByte4 & 0x80000000) != 0)
        {
          readByte5 = [(OrgApacheLuceneStoreDataInput *)self readByte];
          if (readByte5 > 0xF)
          {
            v11 = new_JavaIoIOException_initWithNSString_(@"Invalid vInt detected (too many bits)");
            objc_exception_throw(v11);
          }

          v4 |= readByte5 << 28;
        }
      }
    }
  }

  return v4;
}

- (int)readZInt
{
  readVInt = [(OrgApacheLuceneStoreDataInput *)self readVInt];

  return OrgApacheLuceneUtilBitUtil_zigZagDecodeWithInt_(readVInt);
}

- (int64_t)readZLong
{
  v2 = sub_100039C6C(self, 1);

  return OrgApacheLuceneUtilBitUtil_zigZagDecodeWithLong_(v2);
}

- (id)readString
{
  readVInt = [(OrgApacheLuceneStoreDataInput *)self readVInt];
  v4 = [IOSByteArray arrayWithLength:readVInt];
  [(OrgApacheLuceneStoreDataInput *)self readBytesWithByteArray:v4 withInt:0 withInt:readVInt];
  if ((atomic_load_explicit(OrgLukhnosPortmobileCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10003A2FC();
  }

  v5 = OrgLukhnosPortmobileCharsetStandardCharsets_UTF_8_;

  return [NSString stringWithBytes:v4 offset:0 length:readVInt charset:v5];
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneStoreDataInput;
  clone = [(OrgApacheLuceneStoreDataInput *)&v4 clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return clone;
}

- (id)readStringStringMap
{
  v3 = new_JavaUtilHashMap_init();
  readInt = [(OrgApacheLuceneStoreDataInput *)self readInt];
  if (readInt >= 1)
  {
    v5 = readInt;
    do
    {
      [(JavaUtilHashMap *)v3 putWithId:[(OrgApacheLuceneStoreDataInput *)self readString] withId:[(OrgApacheLuceneStoreDataInput *)self readString]];
      --v5;
    }

    while (v5);
  }

  return v3;
}

- (id)readMapOfStrings
{
  readVInt = [(OrgApacheLuceneStoreDataInput *)self readVInt];
  if (readVInt != 1)
  {
    v4 = readVInt;
    if (!readVInt)
    {

      return JavaUtilCollections_emptyMap();
    }

    if (readVInt < 11)
    {
      v8 = new_JavaUtilTreeMap_init();
      if (v4 < 1)
      {
LABEL_13:

        return JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(v8);
      }
    }

    else
    {
      v8 = new_JavaUtilHashMap_init();
    }

    do
    {
      [(JavaUtilTreeMap *)v8 putWithId:[(OrgApacheLuceneStoreDataInput *)self readString] withId:[(OrgApacheLuceneStoreDataInput *)self readString]];
      --v4;
    }

    while (v4);
    goto LABEL_13;
  }

  readString = [(OrgApacheLuceneStoreDataInput *)self readString];
  readString2 = [(OrgApacheLuceneStoreDataInput *)self readString];

  return JavaUtilCollections_singletonMapWithId_withId_(readString, readString2);
}

- (id)readStringSet
{
  v3 = new_JavaUtilHashSet_init();
  readInt = [(OrgApacheLuceneStoreDataInput *)self readInt];
  if (readInt >= 1)
  {
    v5 = readInt;
    do
    {
      [(JavaUtilHashSet *)v3 addWithId:[(OrgApacheLuceneStoreDataInput *)self readString]];
      --v5;
    }

    while (v5);
  }

  return v3;
}

- (id)readSetOfStrings
{
  readVInt = [(OrgApacheLuceneStoreDataInput *)self readVInt];
  if (readVInt != 1)
  {
    v4 = readVInt;
    if (!readVInt)
    {

      return JavaUtilCollections_emptySet();
    }

    if (readVInt < 11)
    {
      v7 = new_JavaUtilTreeSet_init();
      if (v4 < 1)
      {
LABEL_13:

        return JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(v7);
      }
    }

    else
    {
      v7 = new_JavaUtilHashSet_init();
    }

    do
    {
      [(JavaUtilTreeSet *)v7 addWithId:[(OrgApacheLuceneStoreDataInput *)self readString]];
      --v4;
    }

    while (v4);
    goto LABEL_13;
  }

  readString = [(OrgApacheLuceneStoreDataInput *)self readString];

  return JavaUtilCollections_singletonWithId_(readString);
}

- (void)skipBytesWithLong:(int64_t)long
{
  if (long < 0)
  {
    v12 = JreStrcat("$J", a2, long, v3, v4, v5, v6, v7, @"numBytes must be >= 0, got ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  if (!self->skipBuffer_)
  {
    JreStrongAssignAndConsume(&self->skipBuffer_, [IOSByteArray newArrayWithLength:1024]);
  }

  if (long)
  {
    v10 = 0;
    do
    {
      v11 = JavaLangMath_minWithLong_withLong_(1024, long - v10);
      [(OrgApacheLuceneStoreDataInput *)self readBytesWithByteArray:self->skipBuffer_ withInt:0 withInt:v11 withBoolean:0];
      v10 += v11;
    }

    while (v10 < long);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreDataInput;
  [(OrgApacheLuceneStoreDataInput *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(OrgApacheLuceneStoreDataInput *)self clone];

  return clone;
}

@end