@interface OrgApacheLuceneCodecsLucene50ForUtil
+ (void)initialize;
- (void)dealloc;
- (void)readBlockWithOrgApacheLuceneStoreIndexInput:(id)input withByteArray:(id)array withIntArray:(id)intArray;
- (void)skipBlockWithOrgApacheLuceneStoreIndexInput:(id)input;
- (void)writeBlockWithIntArray:(id)array withByteArray:(id)byteArray withOrgApacheLuceneStoreIndexOutput:(id)output;
@end

@implementation OrgApacheLuceneCodecsLucene50ForUtil

- (void)writeBlockWithIntArray:(id)array withByteArray:(id)byteArray withOrgApacheLuceneStoreIndexOutput:(id)output
{
  if (atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire))
  {
    if (!array)
    {
      goto LABEL_43;
    }
  }

  else
  {
    sub_100040A10();
    if (!array)
    {
      goto LABEL_43;
    }
  }

  v12 = *(array + 2);
  if (v12 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, 0);
  }

  v13 = 0;
  for (i = 1; i != 128; ++i)
  {
    v15 = *(array + 2);
    if (i >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, i);
    }

    if (*(array + i + 3) != *(array + 3))
    {
      break;
    }

    v13 = i > 0x7E;
  }

  if (v13)
  {
    if (output)
    {
      [output writeByteWithByte:0];
      v16 = *(array + 2);
      if (v16 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, 0);
      }

      v17 = *(array + 3);

      [output writeVIntWithInt:v17];
      return;
    }

LABEL_43:
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100040A10();
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v20 = *(array + 2);
    if (v18 >= v20)
    {
      IOSArray_throwOutOfBoundsWithMsg(v20, v18);
    }

    v19 |= *(array + v18++ + 3);
  }

  while (v18 != 128);
  v21 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(v19, a2, array, byteArray, output, v5, v6, v7);
  encoders = self->encoders_;
  if (!encoders)
  {
    goto LABEL_43;
  }

  v23 = v21;
  size = encoders->super.size_;
  if ((v23 & 0x80000000) != 0 || v23 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v23);
  }

  iterations = self->iterations_;
  if (!iterations)
  {
    goto LABEL_43;
  }

  v26 = (&encoders->elementType_)[v23];
  v27 = iterations->super.size_;
  if ((v23 & 0x80000000) != 0 || v23 >= v27)
  {
    IOSArray_throwOutOfBoundsWithMsg(v27, v23);
  }

  encodedSizes = self->encodedSizes_;
  if (!encodedSizes)
  {
    goto LABEL_43;
  }

  v29 = *(&iterations->super.size_ + v23 + 1);
  v30 = encodedSizes->super.size_;
  if ((v23 & 0x80000000) != 0 || v23 >= v30)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, v23);
  }

  if (!output)
  {
    goto LABEL_43;
  }

  v31 = *(&encodedSizes->super.size_ + v23 + 1);
  [output writeByteWithByte:v23];
  [(IOSClass *)v26 encodeWithIntArray:array withInt:0 withByteArray:byteArray withInt:0 withInt:v29];

  [output writeBytesWithByteArray:byteArray withInt:v31];
}

- (void)readBlockWithOrgApacheLuceneStoreIndexInput:(id)input withByteArray:(id)array withIntArray:(id)intArray
{
  if (!input)
  {
    goto LABEL_18;
  }

  readByte = [input readByte];
  if (readByte)
  {
    encodedSizes = self->encodedSizes_;
    if (encodedSizes)
    {
      v11 = readByte;
      size = encodedSizes->super.size_;
      if ((v11 & 0x80000000) != 0 || size <= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v11);
      }

      [input readBytesWithByteArray:array withInt:0 withInt:*(&encodedSizes->super.size_ + v11 + 1)];
      decoders = self->decoders_;
      if (decoders)
      {
        v14 = decoders->super.size_;
        if ((v11 & 0x80000000) != 0 || v14 <= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v11);
        }

        iterations = self->iterations_;
        if (iterations)
        {
          v16 = iterations->super.size_;
          if ((v11 & 0x80000000) != 0 || v16 <= v11)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, v11);
          }

          v17 = *(&iterations->super.size_ + v11 + 1);
          v18 = (&decoders->elementType_)[v11];

          [(IOSClass *)v18 decodeWithByteArray:array withInt:0 withIntArray:intArray withInt:0 withInt:v17];
          return;
        }
      }
    }

LABEL_18:
    JreThrowNullPointerException();
  }

  readVInt = [input readVInt];

  JavaUtilArrays_fillWithIntArray_withInt_withInt_withInt_(intArray, 0, 128, readVInt, v20, v21, v22, v23);
}

- (void)skipBlockWithOrgApacheLuceneStoreIndexInput:(id)input
{
  if (!input)
  {
    goto LABEL_12;
  }

  readByte = [input readByte];
  if (readByte)
  {
    encodedSizes = self->encodedSizes_;
    if (encodedSizes)
    {
      v7 = readByte;
      size = encodedSizes->super.size_;
      if ((v7 & 0x80000000) != 0 || size <= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v7);
      }

      v9 = *(&encodedSizes->super.size_ + v7 + 1);
      v10 = [input getFilePointer] + v9;

      [input seekWithLong:v10];
      return;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  [input readVInt];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50ForUtil;
  [(OrgApacheLuceneCodecsLucene50ForUtil *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values();
      if (!v4)
      {
LABEL_15:
        JreThrowNullPointerException();
      }

      p_elementType = &v4->elementType_;
      v6 = &(&v4->elementType_)[v4->super.size_];
      while (p_elementType < v6)
      {
        v8 = *p_elementType++;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_15;
        }

        v9 = 1;
        do
        {
          if ([v7 isSupportedWithInt:v9])
          {
            DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getDecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_(v7, v3, v9, v10, v11, v12, v13, v14);
            v16 = sub_1000408F8(DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt);
            if (!DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt)
            {
              goto LABEL_15;
            }

            v2 = JavaLangMath_maxWithInt_withInt_(v2, [DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt byteValueCount] * v16);
          }

          v9 = (v9 + 1);
        }

        while (v9 != 33);
      }

      v3 = (v3 + 1);
    }

    while (v3 != 3);
    OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_ = v2;
    atomic_store(1u, OrgApacheLuceneCodecsLucene50ForUtil__initialized);
  }
}

@end