@interface OrgApacheLuceneStoreDataInput
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
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
- (void)skipBytesWithLong:(int64_t)a3;
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
  v3 = [(OrgApacheLuceneStoreDataInput *)self readByte];
  v4 = v3;
  if ((v3 & 0x80000000) != 0)
  {
    v5 = v3 & 0x7F;
    v6 = [(OrgApacheLuceneStoreDataInput *)self readByte];
    v4 = v5 & 0xFFFFC07F | ((v6 & 0x7F) << 7);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = [(OrgApacheLuceneStoreDataInput *)self readByte];
      v4 = v4 & 0xFFE03FFF | ((v7 & 0x7F) << 14);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = [(OrgApacheLuceneStoreDataInput *)self readByte];
        v4 = v4 & 0xF01FFFFF | ((v8 & 0x7F) << 21);
        if ((v8 & 0x80000000) != 0)
        {
          v9 = [(OrgApacheLuceneStoreDataInput *)self readByte];
          if (v9 > 0xF)
          {
            v11 = new_JavaIoIOException_initWithNSString_(@"Invalid vInt detected (too many bits)");
            objc_exception_throw(v11);
          }

          v4 |= v9 << 28;
        }
      }
    }
  }

  return v4;
}

- (int)readZInt
{
  v2 = [(OrgApacheLuceneStoreDataInput *)self readVInt];

  return OrgApacheLuceneUtilBitUtil_zigZagDecodeWithInt_(v2);
}

- (int64_t)readZLong
{
  v2 = sub_100039C6C(self, 1);

  return OrgApacheLuceneUtilBitUtil_zigZagDecodeWithLong_(v2);
}

- (id)readString
{
  v3 = [(OrgApacheLuceneStoreDataInput *)self readVInt];
  v4 = [IOSByteArray arrayWithLength:v3];
  [(OrgApacheLuceneStoreDataInput *)self readBytesWithByteArray:v4 withInt:0 withInt:v3];
  if ((atomic_load_explicit(OrgLukhnosPortmobileCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10003A2FC();
  }

  v5 = OrgLukhnosPortmobileCharsetStandardCharsets_UTF_8_;

  return [NSString stringWithBytes:v4 offset:0 length:v3 charset:v5];
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneStoreDataInput;
  v2 = [(OrgApacheLuceneStoreDataInput *)&v4 clone];
  objc_opt_class();
  if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v2;
}

- (id)readStringStringMap
{
  v3 = new_JavaUtilHashMap_init();
  v4 = [(OrgApacheLuceneStoreDataInput *)self readInt];
  if (v4 >= 1)
  {
    v5 = v4;
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
  v3 = [(OrgApacheLuceneStoreDataInput *)self readVInt];
  if (v3 != 1)
  {
    v4 = v3;
    if (!v3)
    {

      return JavaUtilCollections_emptyMap();
    }

    if (v3 < 11)
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

  v6 = [(OrgApacheLuceneStoreDataInput *)self readString];
  v7 = [(OrgApacheLuceneStoreDataInput *)self readString];

  return JavaUtilCollections_singletonMapWithId_withId_(v6, v7);
}

- (id)readStringSet
{
  v3 = new_JavaUtilHashSet_init();
  v4 = [(OrgApacheLuceneStoreDataInput *)self readInt];
  if (v4 >= 1)
  {
    v5 = v4;
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
  v3 = [(OrgApacheLuceneStoreDataInput *)self readVInt];
  if (v3 != 1)
  {
    v4 = v3;
    if (!v3)
    {

      return JavaUtilCollections_emptySet();
    }

    if (v3 < 11)
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

  v6 = [(OrgApacheLuceneStoreDataInput *)self readString];

  return JavaUtilCollections_singletonWithId_(v6);
}

- (void)skipBytesWithLong:(int64_t)a3
{
  if (a3 < 0)
  {
    v12 = JreStrcat("$J", a2, a3, v3, v4, v5, v6, v7, @"numBytes must be >= 0, got ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  if (!self->skipBuffer_)
  {
    JreStrongAssignAndConsume(&self->skipBuffer_, [IOSByteArray newArrayWithLength:1024]);
  }

  if (a3)
  {
    v10 = 0;
    do
    {
      v11 = JavaLangMath_minWithLong_withLong_(1024, a3 - v10);
      [(OrgApacheLuceneStoreDataInput *)self readBytesWithByteArray:self->skipBuffer_ withInt:0 withInt:v11 withBoolean:0];
      v10 += v11;
    }

    while (v10 < a3);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreDataInput;
  [(OrgApacheLuceneStoreDataInput *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(OrgApacheLuceneStoreDataInput *)self clone];

  return v3;
}

@end