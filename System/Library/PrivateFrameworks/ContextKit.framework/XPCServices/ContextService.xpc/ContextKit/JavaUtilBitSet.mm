@interface JavaUtilBitSet
+ (int)sizeOfLong;
+ (void)initialize;
- (BOOL)intersectsWithJavaUtilBitSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)toByteArray;
- (int)cardinality;
- (int)length;
- (int)size;
- (unint64_t)hash;
- (void)andNotWithJavaUtilBitSet:(id)set;
- (void)and__WithJavaUtilBitSet:(id)set;
- (void)dealloc;
- (void)or__WithJavaUtilBitSet:(id)set;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)xor__WithJavaUtilBitSet:(id)set;
@end

@implementation JavaUtilBitSet

+ (int)sizeOfLong
{
  if ((atomic_load_explicit(JavaUtilBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100182988();
  }

  return 8;
}

- (id)clone
{
  v6.receiver = self;
  v6.super_class = JavaUtilBitSet;
  clone = [(JavaUtilBitSet *)&v6 clone];
  objc_opt_class();
  if (!clone)
  {
    goto LABEL_5;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  bits = self->bits_;
  if (!bits)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  JreStrongAssign(clone + 1, [(IOSArray *)bits clone]);
  sub_100180000(clone);
  return clone;
}

- (BOOL)isEqual:(id)equal
{
  if (self != equal)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    objc_opt_class();
    if (!equal)
    {
      goto LABEL_19;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    longCount = self->longCount_;
    if (longCount != *(equal + 4))
    {
      return 0;
    }

    if (longCount >= 1)
    {
      v6 = 0;
      while (1)
      {
        bits = self->bits_;
        if (!bits)
        {
          break;
        }

        size = bits->super.size_;
        if (v6 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v6);
        }

        v9 = bits->buffer_[v6];
        v10 = *(equal + 1);
        v11 = *(v10 + 8);
        if (v6 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v6);
        }

        v12 = *(v10 + 16 + 8 * v6);
        result = v9 == v12;
        if (v9 == v12 && ++v6 < self->longCount_)
        {
          continue;
        }

        return result;
      }

LABEL_19:
      JreThrowNullPointerException();
    }
  }

  return 1;
}

- (unint64_t)hash
{
  longCount = self->longCount_;
  if (longCount < 1)
  {
    v5 = 1234;
  }

  else
  {
    v4 = 0;
    v5 = 1234;
    do
    {
      bits = self->bits_;
      if (!bits)
      {
        JreThrowNullPointerException();
      }

      size = bits->super.size_;
      if (v4 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v4);
      }

      v8 = bits->buffer_[v4++];
      v5 ^= v8 * v4;
    }

    while (v4 < longCount);
  }

  return (v5 ^ (v5 << 32)) >> 32;
}

- (BOOL)intersectsWithJavaUtilBitSet:(id)set
{
  if (!set)
  {
    goto LABEL_15;
  }

  v4 = *(set + 1);
  v5 = JavaLangMath_minWithInt_withInt_(self->longCount_, *(set + 4));
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    v8 = 1;
    v9 = v4;
    v10 = v5;
    while (1)
    {
      bits = self->bits_;
      if (!bits)
      {
        break;
      }

      size = bits->super.size_;
      if (v7 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v7);
      }

      if (!v4)
      {
        break;
      }

      v13 = bits->buffer_[v7];
      v14 = *(v4 + 8);
      if (v7 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v7);
      }

      if ((*(v9 + 16) & v13) == 0)
      {
        v8 = ++v7 < v6;
        v9 += 8;
        if (v10 != v7)
        {
          continue;
        }
      }

      return v8;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  return 0;
}

- (void)and__WithJavaUtilBitSet:(id)set
{
  if (!set)
  {
    goto LABEL_14;
  }

  v9 = JavaLangMath_minWithInt_withInt_(self->longCount_, *(set + 4));
  if (v9 >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(set + 1);
      v12 = *(v11 + 8);
      if (v10 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v10);
      }

      bits = self->bits_;
      if (!bits)
      {
        break;
      }

      v14 = *(v11 + 16 + 8 * v10);
      size = bits->super.size_;
      if (v10 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v10);
      }

      bits->buffer_[v10++] &= v14;
      if (v9 == v10)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }

LABEL_11:
  JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(self->bits_, v9, self->longCount_, 0, v5, v6, v7, v8);

  sub_100180000(self);
}

- (void)andNotWithJavaUtilBitSet:(id)set
{
  if (!set)
  {
    goto LABEL_14;
  }

  v5 = JavaLangMath_minWithInt_withInt_(self->longCount_, *(set + 4));
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5;
    while (1)
    {
      v8 = *(set + 1);
      v9 = *(v8 + 8);
      if (v6 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v6);
      }

      bits = self->bits_;
      if (!bits)
      {
        break;
      }

      v11 = *(v8 + 16 + 8 * v6);
      size = bits->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      bits->buffer_[v6++] &= ~v11;
      if (v7 == v6)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }

LABEL_11:

  sub_100180000(self);
}

- (void)or__WithJavaUtilBitSet:(id)set
{
  if (!set)
  {
    goto LABEL_14;
  }

  v5 = JavaLangMath_minWithInt_withInt_(self->longCount_, *(set + 4));
  v6 = JavaLangMath_maxWithInt_withInt_(self->longCount_, *(set + 4));
  v7 = v6;
  sub_100180478(self, v6);
  if (v5 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(set + 1);
      v10 = *(v9 + 8);
      if (v8 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v8);
      }

      bits = self->bits_;
      if (!bits)
      {
        break;
      }

      v12 = *(v9 + 16 + 8 * v8);
      size = bits->super.size_;
      if (v8 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v8);
      }

      bits->buffer_[v8++] |= v12;
      if (v5 == v8)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }

LABEL_11:
  if (*(set + 4) > v5)
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(set + 1), v5, self->bits_, v5, (v7 - v5));
  }

  self->longCount_ = v7;
}

- (void)xor__WithJavaUtilBitSet:(id)set
{
  if (!set)
  {
    goto LABEL_16;
  }

  v5 = JavaLangMath_minWithInt_withInt_(self->longCount_, *(set + 4));
  v6 = JavaLangMath_maxWithInt_withInt_(self->longCount_, *(set + 4));
  v7 = v6;
  sub_100180478(self, v6);
  if (v5 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(set + 1);
      v10 = *(v9 + 8);
      if (v8 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v8);
      }

      bits = self->bits_;
      if (!bits)
      {
        break;
      }

      v12 = *(v9 + 16 + 8 * v8);
      size = bits->super.size_;
      if (v8 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v8);
      }

      bits->buffer_[v8++] ^= v12;
      if (v5 == v8)
      {
        goto LABEL_11;
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

LABEL_11:
  if (*(set + 4) > v5)
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(set + 1), v5, self->bits_, v5, (v7 - v5));
  }

  self->longCount_ = v7;

  sub_100180000(self);
}

- (int)size
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  return bits->super.size_ << 6;
}

- (int)length
{
  longCount = self->longCount_;
  if (!longCount)
  {
    return 0;
  }

  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = longCount << 6;
  size = bits->super.size_;
  v6 = longCount - 1;
  if (v6 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  return v4 - JavaLangLong_numberOfLeadingZerosWithLong_(bits->buffer_[v6]);
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_initWithInt_(self->longCount_ / 2);
  [(JavaLangStringBuilder *)v3 appendWithChar:123];
  if (self->longCount_ >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      bits = self->bits_;
      if (!bits)
      {
        JreThrowNullPointerException();
      }

      size = bits->super.size_;
      if (v5 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      if (bits->buffer_[v5])
      {
        for (i = 0; i != 64; ++i)
        {
          v10 = self->bits_;
          v11 = v10->super.size_;
          if (v5 >= v11)
          {
            IOSArray_throwOutOfBoundsWithMsg(v11, v5);
          }

          if ((v10->buffer_[v5] >> i))
          {
            if (v6)
            {
              [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
            }

            [(JavaLangStringBuilder *)v3 appendWithInt:(v4 + i)];
            v6 = 1;
          }
        }
      }

      ++v5;
      v4 += 64;
    }

    while (v5 < self->longCount_);
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:125];

  return [(JavaLangStringBuilder *)v3 description];
}

- (int)cardinality
{
  if (self->longCount_ < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    bits = self->bits_;
    if (!bits)
    {
      JreThrowNullPointerException();
    }

    size = bits->super.size_;
    if (v3 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v3);
    }

    v4 += JavaLangLong_bitCountWithLong_(bits->buffer_[v3++]);
  }

  while (v3 < self->longCount_);
  return v4;
}

- (id)toByteArray
{
  v3 = [(JavaUtilBitSet *)self length];
  v4 = v3 + 7;
  if ((v3 + 7) < 0)
  {
    v4 = v3 + 14;
  }

  v5 = [IOSByteArray arrayWithLength:v4 >> 3];
  v6 = v5;
  if (v5->super.size_ >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = v5;
    do
    {
      v10 = v7 + 63;
      if (v7 >= 0)
      {
        v10 = v7;
      }

      bits = self->bits_;
      if (!bits)
      {
        JreThrowNullPointerException();
      }

      v12 = v10 >> 6;
      size = bits->super.size_;
      if (v7 < -63 || v12 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, (v10 >> 6));
      }

      v14 = bits->buffer_[v12];
      v15 = v6[2];
      if (v8 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v8);
      }

      *(&v9->super.size_ + 4) = v14 >> (v7 & 0x38);
      ++v8;
      v9 = (v9 + 1);
      v7 += 8;
    }

    while (v8 < v6[2]);
  }

  return v6;
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream || ([stream defaultReadObject], (bits = self->bits_) == 0))
  {
    JreThrowNullPointerException();
  }

  self->longCount_ = bits->super.size_;

  sub_100180000(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilBitSet;
  [(JavaUtilBitSet *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilBitSet *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if ((atomic_load_explicit(JavaUtilBitSet__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100182988();
    }

    dword_100554B58 = 8;
    atomic_store(1u, JavaUtilBitSet__initialized);
  }
}

@end