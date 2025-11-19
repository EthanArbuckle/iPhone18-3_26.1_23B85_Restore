@interface ComAppleProactiveOrgApacheLuceneUtilOpenBitSet
+ (int)bits2wordsWithLong:(int64_t)a3;
+ (void)initialize;
- (BOOL)fastGetWithInt:(int)a3;
- (BOOL)fastGetWithLong:(int64_t)a3;
- (BOOL)flipAndGetWithInt:(int)a3;
- (BOOL)flipAndGetWithLong:(int64_t)a3;
- (BOOL)getAndSetWithInt:(int)a3;
- (BOOL)getAndSetWithLong:(int64_t)a3;
- (BOOL)getWithInt:(int)a3;
- (BOOL)getWithLong:(int64_t)a3;
- (BOOL)intersectsWithComAppleProactiveOrgApacheLuceneUtilOpenBitSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ComAppleProactiveOrgApacheLuceneUtilOpenBitSet)setWithLong:(int64_t)a3;
- (ComAppleProactiveOrgApacheLuceneUtilOpenBitSet)setWithLong:(int64_t)a3 withLong:(int64_t)a4;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)iterator;
- (int)expandingWordNumWithLong:(int64_t)a3;
- (int)getBitWithInt:(int)a3;
- (int)length;
- (int)nextSetBitWithInt:(int)a3;
- (int)prevSetBitWithInt:(int)a3;
- (int64_t)capacity;
- (int64_t)nextSetBitWithLong:(int64_t)a3;
- (int64_t)prevSetBitWithLong:(int64_t)a3;
- (unint64_t)hash;
- (void)clearWithInt:(int)a3 withInt:(int)a4;
- (void)clearWithLong:(int64_t)a3;
- (void)clearWithLong:(int64_t)a3 withLong:(int64_t)a4;
- (void)dealloc;
- (void)ensureCapacityWithLong:(int64_t)a3;
- (void)fastClearWithInt:(int)a3;
- (void)fastClearWithLong:(int64_t)a3;
- (void)fastFlipWithInt:(int)a3;
- (void)fastFlipWithLong:(int64_t)a3;
- (void)fastSetWithInt:(int)a3;
- (void)fastSetWithLong:(int64_t)a3;
- (void)flipWithLong:(int64_t)a3;
- (void)flipWithLong:(int64_t)a3 withLong:(int64_t)a4;
- (void)intersectWithComAppleProactiveOrgApacheLuceneUtilOpenBitSet:(id)a3;
- (void)removeWithComAppleProactiveOrgApacheLuceneUtilOpenBitSet:(id)a3;
- (void)trimTrailingZeros;
- (void)union__WithComAppleProactiveOrgApacheLuceneUtilOpenBitSet:(id)a3;
- (void)xor__WithComAppleProactiveOrgApacheLuceneUtilOpenBitSet:(id)a3;
@end

@implementation ComAppleProactiveOrgApacheLuceneUtilOpenBitSet

- (id)iterator
{
  v2 = new_ComAppleProactiveOrgApacheLuceneUtilOpenBitSetIterator_initWithLongArray_withInt_(self->bits_, self->wlen_);

  return v2;
}

- (int64_t)capacity
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
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  return bits->super.size_ << 6;
}

- (BOOL)getWithInt:(int)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = a3 >> 6;
  size = bits->super.size_;
  if (a3 >> 6 >= size)
  {
    return 0;
  }

  if (v4 < 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 >> 6));
  }

  return (bits->buffer_[v4] & (1 << a3)) != 0;
}

- (BOOL)fastGetWithInt:(int)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = a3 >> 6;
  size = bits->super.size_;
  if (a3 >> 6 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 >> 6));
  }

  return (bits->buffer_[v4] >> a3) & 1;
}

- (BOOL)getWithLong:(int64_t)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = a3 >> 6;
  size = bits->super.size_;
  if (size <= (a3 >> 6))
  {
    return 0;
  }

  if ((v4 & 0x80000000) != 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  return (bits->buffer_[(a3 >> 6)] & (1 << a3)) != 0;
}

- (BOOL)fastGetWithLong:(int64_t)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = a3 >> 6;
  size = bits->super.size_;
  if (((a3 >> 6) & 0x80000000) != 0 || size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  return (bits->buffer_[(a3 >> 6)] >> a3) & 1;
}

- (int)getBitWithInt:(int)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = a3 >> 6;
  size = bits->super.size_;
  if (a3 >> 6 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 >> 6));
  }

  return (bits->buffer_[v4] >> a3) & 1;
}

- (ComAppleProactiveOrgApacheLuceneUtilOpenBitSet)setWithLong:(int64_t)a3
{
  v3 = a3;
  v5 = [(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet *)self expandingWordNumWithLong:?];
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v7 = v5;
  result = bits->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v7);
  }

  bits->buffer_[v7] |= 1 << v3;
  return result;
}

- (void)fastSetWithInt:(int)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = a3 >> 6;
  size = bits->super.size_;
  if (a3 >> 6 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 >> 6));
  }

  bits->buffer_[v4] |= 1 << a3;
}

- (void)fastSetWithLong:(int64_t)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = a3 >> 6;
  size = bits->super.size_;
  if (((a3 >> 6) & 0x80000000) != 0 || size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  bits->buffer_[(a3 >> 6)] |= 1 << a3;
}

- (ComAppleProactiveOrgApacheLuceneUtilOpenBitSet)setWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  if (a4 > a3)
  {
    v4 = a4;
    v5 = a3;
    v6 = self;
    v7 = a3 >> 6;
    v8 = [(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet *)self expandingWordNumWithLong:a4 - 1];
    v13 = -1 << v5;
    v14 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
    if (v8 == v7)
    {
      bits = v6->bits_;
      if (bits)
      {
        v14 &= v13;
        v16 = v7;
        self = bits->super.size_;
        if ((v7 & 0x80000000) != 0 || self <= v7)
        {
          v17 = v7;
          goto LABEL_17;
        }

LABEL_12:
        bits->buffer_[v16] |= v14;
        return self;
      }
    }

    else
    {
      v18 = v6->bits_;
      if (v18)
      {
        v19 = v8;
        size = v18->super.size_;
        if ((v7 & 0x80000000) != 0 || size <= v7)
        {
          v21 = v6->bits_;
          IOSArray_throwOutOfBoundsWithMsg(size, v7);
        }

        v18->buffer_[v7] |= v13;
        JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(v6->bits_, (v7 + 1), v19, -1, v9, v10, v11, v12);
        bits = v6->bits_;
        v16 = v19;
        self = bits->super.size_;
        if ((v19 & 0x80000000) != 0 || v19 >= self)
        {
          v17 = v19;
LABEL_17:
          IOSArray_throwOutOfBoundsWithMsg(self, v17);
        }

        goto LABEL_12;
      }
    }

    JreThrowNullPointerException();
  }

  return self;
}

- (int)expandingWordNumWithLong:(int64_t)a3
{
  v3 = a3 >> 6;
  if (self->wlen_ <= (a3 >> 6))
  {
    [(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet *)self ensureCapacityWithLong:a3 + 1];
  }

  return v3;
}

- (void)fastClearWithInt:(int)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = a3 >> 6;
  size = bits->super.size_;
  if (a3 >> 6 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 >> 6));
  }

  bits->buffer_[v4] &= ~(1 << a3);
}

- (void)fastClearWithLong:(int64_t)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = a3 >> 6;
  size = bits->super.size_;
  if (((a3 >> 6) & 0x80000000) != 0 || size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  bits->buffer_[(a3 >> 6)] &= ~(1 << a3);
}

- (void)clearWithLong:(int64_t)a3
{
  v3 = a3 >> 6;
  if (self->wlen_ > (a3 >> 6))
  {
    bits = self->bits_;
    if (!bits)
    {
      JreThrowNullPointerException();
    }

    size = bits->super.size_;
    if ((v3 & 0x80000000) != 0 || size <= v3)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 6);
    }

    bits->buffer_[v3] &= ~(1 << a3);
  }
}

- (void)clearWithInt:(int)a3 withInt:(int)a4
{
  if (a4 > a3)
  {
    v5 = a3 >> 6;
    wlen = self->wlen_;
    if (a3 >> 6 < wlen)
    {
      v7 = ~(-1 << a3);
      v8 = ~(0xFFFFFFFFFFFFFFFFLL >> -a4);
      if (v5 == (a4 - 1) >> 6)
      {
        bits = self->bits_;
        if (bits)
        {
          v8 |= v7;
          size = bits->super.size_;
          if (v5 < 0 || v5 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, (a3 >> 6));
          }

LABEL_15:
          bits->buffer_[v5] &= v8;
          return;
        }

LABEL_17:
        JreThrowNullPointerException();
      }

      v11 = self->bits_;
      if (!v11)
      {
        goto LABEL_17;
      }

      v12 = ((a4 - 1) >> 6);
      if (v5 < 0 || v5 >= v11->super.size_)
      {
        v19 = self->bits_;
        IOSArray_throwOutOfBoundsWithMsg(v11->super.size_, (a3 >> 6));
      }

      v11->buffer_[v5] &= v7;
      v13 = JavaLangMath_minWithInt_withInt_(wlen, v12);
      JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(self->bits_, (v5 + 1), v13, 0, v14, v15, v16, v17);
      if (v12 < self->wlen_)
      {
        bits = self->bits_;
        v18 = bits->super.size_;
        if ((v12 & 0x80000000) != 0 || v12 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v12);
        }

        v5 = v12;
        goto LABEL_15;
      }
    }
  }
}

- (void)clearWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  if (a4 > a3)
  {
    v5 = a3 >> 6;
    wlen = self->wlen_;
    if (wlen > (a3 >> 6))
    {
      v7 = (a4 - 1) >> 6;
      v8 = ~(-1 << a3);
      v9 = ~(0xFFFFFFFFFFFFFFFFLL >> -a4);
      if (v5 == v7)
      {
        bits = self->bits_;
        if (bits)
        {
          v9 |= v8;
          size = bits->super.size_;
          if ((v5 & 0x80000000) != 0 || size <= v5)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 6);
          }

LABEL_15:
          bits->buffer_[v5] &= v9;
          return;
        }

LABEL_17:
        JreThrowNullPointerException();
      }

      v12 = self->bits_;
      if (!v12)
      {
        goto LABEL_17;
      }

      if ((v5 & 0x80000000) != 0 || v12->super.size_ <= v5)
      {
        v19 = self->bits_;
        IOSArray_throwOutOfBoundsWithMsg(v12->super.size_, a3 >> 6);
      }

      v12->buffer_[v5] &= v8;
      v13 = JavaLangMath_minWithInt_withInt_(wlen, (a4 - 1) >> 6);
      JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(self->bits_, (v5 + 1), v13, 0, v14, v15, v16, v17);
      if (self->wlen_ > v7)
      {
        bits = self->bits_;
        v18 = bits->super.size_;
        if ((v7 & 0x80000000) != 0 || v18 <= v7)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v7);
        }

        LODWORD(v5) = v7;
        goto LABEL_15;
      }
    }
  }
}

- (BOOL)getAndSetWithInt:(int)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = a3 >> 6;
  size = bits->super.size_;
  if (a3 >> 6 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 >> 6));
  }

  v6 = bits;
  v7 = bits->buffer_[v4];
  if (v4 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 >> 6));
  }

  result = (v7 & (1 << a3)) != 0;
  v6->buffer_[v4] |= 1 << a3;
  return result;
}

- (BOOL)getAndSetWithLong:(int64_t)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = (a3 >> 6);
  v5 = a3 >> 6;
  size = bits->super.size_;
  if (((a3 >> 6) & 0x80000000) != 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 6);
  }

  v7 = bits;
  v8 = bits->buffer_[v4];
  if (v4 < 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 6);
  }

  result = (v8 & (1 << a3)) != 0;
  v7->buffer_[v4] |= 1 << a3;
  return result;
}

- (void)fastFlipWithInt:(int)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = a3 >> 6;
  size = bits->super.size_;
  if (a3 >> 6 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 >> 6));
  }

  bits->buffer_[v4] ^= 1 << a3;
}

- (void)fastFlipWithLong:(int64_t)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = a3 >> 6;
  size = bits->super.size_;
  if (((a3 >> 6) & 0x80000000) != 0 || size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  bits->buffer_[(a3 >> 6)] ^= 1 << a3;
}

- (void)flipWithLong:(int64_t)a3
{
  v3 = a3;
  v5 = [(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet *)self expandingWordNumWithLong:?];
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v7 = v5;
  size = bits->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  bits->buffer_[v7] ^= 1 << v3;
}

- (BOOL)flipAndGetWithInt:(int)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v5 = a3 >> 6;
  v6 = 1 << a3;
  size = bits->super.size_;
  if (a3 >> 6 < 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 >> 6));
  }

  bits->buffer_[v5] ^= v6;
  v8 = self->bits_;
  v9 = v8->super.size_;
  if (v5 < 0 || v5 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, (a3 >> 6));
  }

  return (v8->buffer_[v5] & v6) != 0;
}

- (BOOL)flipAndGetWithLong:(int64_t)a3
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v5 = 1 << a3;
  v6 = (a3 >> 6);
  v7 = a3 >> 6;
  size = bits->super.size_;
  if (((a3 >> 6) & 0x80000000) != 0 || size <= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 6);
  }

  bits->buffer_[v6] ^= v5;
  v9 = self->bits_;
  v10 = v9->super.size_;
  if (v6 < 0 || v10 <= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, a3 >> 6);
  }

  return (v9->buffer_[v6] & v5) != 0;
}

- (void)flipWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  if (a4 > a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = a3 >> 6;
    v8 = [(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet *)self expandingWordNumWithLong:a4 - 1];
    v9 = -1 << v5;
    v10 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
    if (v8 == v7)
    {
      bits = self->bits_;
      if (bits)
      {
        v10 &= v9;
        v12 = v7;
        size = bits->super.size_;
        if ((v7 & 0x80000000) != 0 || size <= v7)
        {
          v14 = v7;
          goto LABEL_27;
        }

LABEL_22:
        bits->buffer_[v12] ^= v10;
        return;
      }
    }

    else
    {
      v15 = self->bits_;
      if (v15)
      {
        v16 = v8;
        v17 = v15->super.size_;
        if ((v7 & 0x80000000) != 0 || v17 <= v7)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v7);
        }

        v15->buffer_[v7] ^= v9;
        if (v7 + 1 < v16)
        {
          v18 = v7 + 1;
          do
          {
            v19 = self->bits_;
            v20 = v19->super.size_;
            if (v18 < 0 || v18 >= v20)
            {
              IOSArray_throwOutOfBoundsWithMsg(v20, v18);
            }

            v21 = v19->buffer_[v18];
            if (v18 < 0 || v18 >= v20)
            {
              IOSArray_throwOutOfBoundsWithMsg(v20, v18);
            }

            self->bits_->buffer_[v18++] = ~v21;
          }

          while (v16 != v18);
        }

        bits = self->bits_;
        v12 = v16;
        size = bits->super.size_;
        if ((v16 & 0x80000000) != 0 || v16 >= size)
        {
          v14 = v16;
LABEL_27:
          IOSArray_throwOutOfBoundsWithMsg(size, v14);
        }

        goto LABEL_22;
      }
    }

    JreThrowNullPointerException();
  }
}

- (int)nextSetBitWithInt:(int)a3
{
  v3 = a3 >> 6;
  if (a3 >> 6 < self->wlen_)
  {
    bits = self->bits_;
    if (!bits)
    {
      JreThrowNullPointerException();
    }

    v6 = a3;
    size = bits->super.size_;
    if (v3 < 0 || v3 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, (a3 >> 6));
    }

    v8 = bits->buffer_[v3] >> (a3 & 0x3F);
    if (v8)
    {
      return JavaLangLong_numberOfTrailingZerosWithLong_(v8) + v6;
    }

    v10 = v3 + 1;
    v6 = v3 << 6;
    while (v10 < self->wlen_)
    {
      v11 = self->bits_;
      v12 = v11->super.size_;
      if (v10 - 1 < -1 || v10 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v10);
      }

      v8 = v11->buffer_[v10++];
      v6 += 64;
      if (v8)
      {
        return JavaLangLong_numberOfTrailingZerosWithLong_(v8) + v6;
      }
    }
  }

  return -1;
}

- (int64_t)nextSetBitWithLong:(int64_t)a3
{
  v3 = a3 >> 6;
  if (self->wlen_ > (a3 >> 6))
  {
    bits = self->bits_;
    if (!bits)
    {
      JreThrowNullPointerException();
    }

    size = bits->super.size_;
    if ((v3 & 0x80000000) != 0 || size <= v3)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 6);
    }

    v7 = bits->buffer_[v3] >> a3;
    if (v7)
    {
      return (v3 << 6) + (JavaLangLong_numberOfTrailingZerosWithLong_(v7) + (a3 & 0x3F));
    }

    v9 = v3 + 1;
    v10 = v3 << 6;
    while (v9 < self->wlen_)
    {
      v11 = self->bits_;
      v12 = v11->super.size_;
      if (v9 - 1 < -1 || v9 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v9);
      }

      v13 = v11->buffer_[v9++];
      v10 += 64;
      if (v13)
      {
        return v10 + JavaLangLong_numberOfTrailingZerosWithLong_(v13);
      }
    }
  }

  return -1;
}

- (int)prevSetBitWithInt:(int)a3
{
  LODWORD(v4) = a3 >> 6;
  wlen = self->wlen_;
  if (a3 >> 6 < wlen)
  {
    if ((v4 & 0x80000000) == 0)
    {
      bits = self->bits_;
      if (bits)
      {
        v7 = a3 & 0x3F;
        size = bits->super.size_;
        if (v4 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, (a3 >> 6));
        }

        v9 = bits->buffer_[v4] << (v7 ^ 0x3Fu);
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_11;
      }

LABEL_20:
      JreThrowNullPointerException();
    }

    return -1;
  }

  v4 = (wlen - 1);
  if (wlen - 1 < 0)
  {
    return -1;
  }

  v11 = self->bits_;
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v11->super.size_;
  if (v4 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v4);
  }

  v9 = v11->buffer_[v4];
  v7 = 63;
  if (!v9)
  {
LABEL_11:
    v13 = v4 - 1;
    while (1)
    {
      v10 = v4 - 1;
      if (v4 < 1)
      {
        return -1;
      }

      v14 = self->bits_;
      if (!v14)
      {
        goto LABEL_20;
      }

      v15 = v14->super.size_;
      if (v15 < v4)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, (v4 - 1));
      }

      v9 = v14->buffer_[v13--];
      LODWORD(v4) = v4 - 1;
      if (v9)
      {
        v7 = 63;
        return (v7 | (v10 << 6)) - JavaLangLong_numberOfLeadingZerosWithLong_(v9);
      }
    }
  }

LABEL_6:
  v10 = v4;
  return (v7 | (v10 << 6)) - JavaLangLong_numberOfLeadingZerosWithLong_(v9);
}

- (int64_t)prevSetBitWithLong:(int64_t)a3
{
  v4 = a3 >> 6;
  wlen = self->wlen_;
  if (wlen <= (a3 >> 6))
  {
    v4 = (wlen - 1);
    if (wlen - 1 < 0)
    {
      return -1;
    }

    bits = self->bits_;
    if (bits)
    {
      size = bits->super.size_;
      if (v4 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v4);
      }

      v9 = bits->buffer_[v4];
      v7 = 63;
      goto LABEL_10;
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  if ((v4 & 0x80000000) != 0)
  {
    return -1;
  }

  v6 = self->bits_;
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = a3 & 0x3F;
  v8 = v6->super.size_;
  if (v8 <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, a3 >> 6);
  }

  v9 = v6->buffer_[(a3 >> 6) & 0x7FFFFFFF] << (v7 ^ 0x3Fu);
LABEL_10:
  v12 = v4;
  if (v9)
  {
    return (v7 | (v12 << 6)) - JavaLangLong_numberOfLeadingZerosWithLong_(v9);
  }

  v14 = v4 - 1;
  v7 = 63;
  while (v4 >= 1)
  {
    v15 = self->bits_;
    if (!v15)
    {
      goto LABEL_20;
    }

    v16 = v15->super.size_;
    if (v16 < v4)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, (v4 - 1));
    }

    v12 = v14;
    v9 = v15->buffer_[v14--];
    LODWORD(v4) = v4 - 1;
    if (v9)
    {
      return (v7 | (v12 << 6)) - JavaLangLong_numberOfLeadingZerosWithLong_(v9);
    }
  }

  return -1;
}

- (id)clone
{
  v5.receiver = self;
  v5.super_class = ComAppleProactiveOrgApacheLuceneUtilOpenBitSet;
  v2 = [(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet *)&v5 clone];
  objc_opt_class();
  if (!v2)
  {
    goto LABEL_5;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v3 = v2[1];
  if (!v3)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  JreStrongAssign(v2 + 1, [v3 clone]);
  return v2;
}

- (void)intersectWithComAppleProactiveOrgApacheLuceneUtilOpenBitSet:(id)a3
{
  if (!a3)
  {
    goto LABEL_16;
  }

  v9 = JavaLangMath_minWithInt_withInt_(self->wlen_, *(a3 + 4));
  v10 = (v9 - 1);
  if (v9 - 1 >= 0)
  {
    v11 = *(a3 + 1);
    if (v11)
    {
      bits = self->bits_;
      while (1)
      {
        v13 = *(v11 + 8);
        if (v10 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v10);
        }

        if (!bits)
        {
          break;
        }

        size = bits->super.size_;
        if (v10 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v10);
        }

        bits->buffer_[v10] &= *(v11 + 16 + 8 * v10);
        if (v10-- <= 0)
        {
          goto LABEL_13;
        }
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

LABEL_13:
  wlen = self->wlen_;
  if (wlen > v9)
  {
    JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(self->bits_, v9, wlen, 0, v5, v6, v7, v8);
  }

  self->wlen_ = v9;
}

- (void)union__WithComAppleProactiveOrgApacheLuceneUtilOpenBitSet:(id)a3
{
  if (!a3)
  {
    goto LABEL_15;
  }

  v5 = JavaLangMath_maxWithInt_withInt_(self->wlen_, *(a3 + 4));
  [(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet *)self ensureCapacityWordsWithInt:v5];
  bits = self->bits_;
  v7 = *(a3 + 1);
  v8 = JavaLangMath_minWithInt_withInt_(self->wlen_, *(a3 + 4));
  v9 = (v8 - 1);
  if (v8 - 1 >= 0)
  {
    if (v7)
    {
      while (1)
      {
        v10 = v7[2];
        if (v9 >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, v9);
        }

        if (!bits)
        {
          break;
        }

        size = bits->super.size_;
        if (v9 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v9);
        }

        bits->buffer_[v9] |= *&v7[2 * v9 + 4];
        if (v9-- <= 0)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_15:
    JreThrowNullPointerException();
  }

LABEL_12:
  wlen = self->wlen_;
  if (v5 > wlen)
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v7, wlen, bits, self->wlen_, (v5 - wlen));
  }

  self->wlen_ = v5;
}

- (void)removeWithComAppleProactiveOrgApacheLuceneUtilOpenBitSet:(id)a3
{
  if (!a3)
  {
    goto LABEL_14;
  }

  v5 = JavaLangMath_minWithInt_withInt_(self->wlen_, *(a3 + 4));
  v6 = (v5 - 1);
  if (v5 - 1 >= 0)
  {
    v7 = *(a3 + 1);
    if (v7)
    {
      bits = self->bits_;
      while (1)
      {
        v9 = *(v7 + 8);
        if (v6 >= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, v6);
        }

        if (!bits)
        {
          break;
        }

        size = bits->super.size_;
        if (v6 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v6);
        }

        bits->buffer_[v6] &= ~*(v7 + 16 + 8 * v6);
        if (v6-- <= 0)
        {
          return;
        }
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }
}

- (void)xor__WithComAppleProactiveOrgApacheLuceneUtilOpenBitSet:(id)a3
{
  if (!a3)
  {
    goto LABEL_15;
  }

  v5 = JavaLangMath_maxWithInt_withInt_(self->wlen_, *(a3 + 4));
  [(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet *)self ensureCapacityWordsWithInt:v5];
  bits = self->bits_;
  v7 = *(a3 + 1);
  v8 = JavaLangMath_minWithInt_withInt_(self->wlen_, *(a3 + 4));
  v9 = (v8 - 1);
  if (v8 - 1 >= 0)
  {
    if (v7)
    {
      while (1)
      {
        v10 = v7[2];
        if (v9 >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, v9);
        }

        if (!bits)
        {
          break;
        }

        size = bits->super.size_;
        if (v9 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v9);
        }

        bits->buffer_[v9] ^= *&v7[2 * v9 + 4];
        if (v9-- <= 0)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_15:
    JreThrowNullPointerException();
  }

LABEL_12:
  wlen = self->wlen_;
  if (v5 > wlen)
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v7, wlen, bits, self->wlen_, (v5 - wlen));
  }

  self->wlen_ = v5;
}

- (BOOL)intersectsWithComAppleProactiveOrgApacheLuceneUtilOpenBitSet:(id)a3
{
  if (!a3)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v5 = JavaLangMath_minWithInt_withInt_(self->wlen_, *(a3 + 4));
  bits = self->bits_;
  v7 = *(a3 + 1);
  v8 = v5;
  do
  {
    if ((--v8 & 0x80000000) != 0)
    {
      break;
    }

    if (!bits)
    {
      goto LABEL_13;
    }

    size = bits->super.size_;
    if (size <= v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v8);
    }

    if (!v7)
    {
      goto LABEL_13;
    }

    v10 = *(v7 + 8);
    if (v10 <= v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, v8);
    }
  }

  while ((*(v7 + 16 + 8 * (v8 & 0x7FFFFFFF)) & bits->buffer_[v8 & 0x7FFFFFFF]) == 0);
  return v8 >= 0;
}

- (void)ensureCapacityWithLong:(int64_t)a3
{
  if ((atomic_load_explicit(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10008E30C();
  }

  [(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet *)self ensureCapacityWordsWithInt:((a3 - 1) >> 6) + 1];
}

- (void)trimTrailingZeros
{
  wlen = self->wlen_;
  v4 = wlen - 1;
  if (wlen - 1 >= -1)
  {
    v4 = -1;
  }

  v5 = wlen + 1;
  v6 = wlen - 1;
  while (1)
  {
    v7 = (v5 - 2);
    if (v5 - 2 < 0)
    {
      break;
    }

    bits = self->bits_;
    if (!bits)
    {
      JreThrowNullPointerException();
    }

    size = bits->super.size_;
    if (size <= v7)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v7);
    }

    v10 = bits->buffer_[v6 & 0x7FFFFFFF];
    --v5;
    --v6;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  v5 = v4 + 1;
LABEL_11:
  self->wlen_ = v5;
}

+ (int)bits2wordsWithLong:(int64_t)a3
{
  if ((atomic_load_explicit(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10008E30C();
  }

  return ((a3 - 1) >> 6) + 1;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!a3)
      {
        goto LABEL_32;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v5 = *(a3 + 4);
      wlen = self->wlen_;
      v7 = v5 <= wlen ? self : a3;
      v8 = v5 <= wlen ? a3 : self;
      if (!v7)
      {
LABEL_32:
        JreThrowNullPointerException();
      }

      v9 = (v7->wlen_ - 1);
      while (1)
      {
        v10 = *(v8 + 4);
        if (v9 < v10)
        {
          break;
        }

        bits = v7->bits_;
        if (!bits)
        {
          goto LABEL_32;
        }

        size = bits->super.size_;
        if ((v9 & 0x80000000) != 0 || v9 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v9);
        }

        v13 = bits->buffer_[v9];
        v9 = (v9 - 1);
        if (v13)
        {
          goto LABEL_29;
        }
      }

      do
      {
        v19 = (--v10 >> 31) & 1;
        if ((v10 & 0x80000000) != 0)
        {
          break;
        }

        v14 = v7->bits_;
        if (!v14)
        {
          goto LABEL_32;
        }

        v15 = v14->super.size_;
        if (v15 <= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v10);
        }

        v16 = v14->buffer_[v10 & 0x7FFFFFFF];
        v17 = v8[1];
        v18 = *(v17 + 8);
        if (v18 <= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v10);
        }
      }

      while (v16 == *(v17 + 16 + 8 * (v10 & 0x7FFFFFFF)));
    }

    else
    {
LABEL_29:
      LOBYTE(v19) = 0;
    }
  }

  return v19;
}

- (unint64_t)hash
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  size = bits->super.size_;
  v4 = (size - 1);
  if (size - 1 < 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = self->bits_;
      v8 = v7->super.size_;
      if (v4 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v4);
      }

      v6 = __ROR8__(v7->buffer_[v4] ^ v6, 63);
    }

    while (v4-- > 0);
  }

  return ((v6 ^ (v6 << 32)) - 0x6789EDCC00000000) >> 32;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveOrgApacheLuceneUtilOpenBitSet;
  [(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet *)self clone];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = ComAppleProactiveOrgApacheLuceneUtilOpenBitSet_class_();
    qword_1005541D8 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, ComAppleProactiveOrgApacheLuceneUtilOpenBitSet__initialized);
  }
}

@end