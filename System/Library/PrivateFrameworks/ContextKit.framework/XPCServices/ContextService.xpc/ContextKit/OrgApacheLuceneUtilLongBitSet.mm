@interface OrgApacheLuceneUtilLongBitSet
- (BOOL)getAndClearWithLong:(int64_t)long;
- (BOOL)getAndSetWithLong:(int64_t)long;
- (BOOL)getWithLong:(int64_t)long;
- (BOOL)intersectsWithOrgApacheLuceneUtilLongBitSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (BOOL)scanIsEmpty;
- (BOOL)verifyGhostBitsClear;
- (OrgApacheLuceneUtilLongBitSet)initWithLong:(int64_t)long;
- (OrgApacheLuceneUtilLongBitSet)setWithLong:(int64_t)long;
- (OrgApacheLuceneUtilLongBitSet)setWithLong:(int64_t)long withLong:(int64_t)withLong;
- (id)clone;
- (int64_t)nextSetBitWithLong:(int64_t)long;
- (int64_t)prevSetBitWithLong:(int64_t)long;
- (unint64_t)hash;
- (void)andNotWithOrgApacheLuceneUtilLongBitSet:(id)set;
- (void)and__WithOrgApacheLuceneUtilLongBitSet:(id)set;
- (void)clearWithLong:(int64_t)long;
- (void)clearWithLong:(int64_t)long withLong:(int64_t)withLong;
- (void)dealloc;
- (void)flipWithLong:(int64_t)long;
- (void)flipWithLong:(int64_t)long withLong:(int64_t)withLong;
- (void)or__WithOrgApacheLuceneUtilLongBitSet:(id)set;
- (void)xor__WithOrgApacheLuceneUtilLongBitSet:(id)set;
@end

@implementation OrgApacheLuceneUtilLongBitSet

- (OrgApacheLuceneUtilLongBitSet)initWithLong:(int64_t)long
{
  self->numBits_ = long;
  JreStrongAssignAndConsume(&self->bits_, [IOSLongArray newArrayWithLength:((long << 26) + 4227858432) >> 32]);
  self->numWords_ = self->bits_->super.size_;
  return self;
}

- (BOOL)verifyGhostBitsClear
{
  bits = self->bits_;
  if (!bits)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  numWords = self->numWords_;
  while (1)
  {
    size = bits->super.size_;
    if (numWords >= size)
    {
      break;
    }

    if (numWords < 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, numWords);
    }

    if (bits->buffer_[numWords])
    {
      return 0;
    }

    ++numWords;
    bits = self->bits_;
    if (!bits)
    {
      goto LABEL_15;
    }
  }

  v6 = self->numBits_ & 0x3F;
  if (!v6)
  {
    return 1;
  }

  v7 = self->numWords_ - 1;
  if (v7 < 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  return bits->buffer_[v7] >> v6 == 0;
}

- (BOOL)getWithLong:(int64_t)long
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = long >> 6;
  size = bits->super.size_;
  if (((long >> 6) & 0x80000000) != 0 || size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  return (bits->buffer_[(long >> 6)] >> long) & 1;
}

- (OrgApacheLuceneUtilLongBitSet)setWithLong:(int64_t)long
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = long >> 6;
  result = bits->super.size_;
  if (((long >> 6) & 0x80000000) != 0 || result <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v4);
  }

  bits->buffer_[(long >> 6)] |= 1 << long;
  return result;
}

- (BOOL)getAndSetWithLong:(int64_t)long
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = (long >> 6);
  v5 = long >> 6;
  size = bits->super.size_;
  if (((long >> 6) & 0x80000000) != 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, long >> 6);
  }

  v7 = bits;
  v8 = bits->buffer_[v4];
  if (v4 < 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, long >> 6);
  }

  result = (v8 & (1 << long)) != 0;
  v7->buffer_[v4] |= 1 << long;
  return result;
}

- (void)clearWithLong:(int64_t)long
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = long >> 6;
  size = bits->super.size_;
  if (((long >> 6) & 0x80000000) != 0 || size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  bits->buffer_[(long >> 6)] &= ~(1 << long);
}

- (BOOL)getAndClearWithLong:(int64_t)long
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = (long >> 6);
  v5 = long >> 6;
  size = bits->super.size_;
  if (((long >> 6) & 0x80000000) != 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, long >> 6);
  }

  v7 = bits;
  v8 = bits->buffer_[v4];
  if (v4 < 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, long >> 6);
  }

  result = (v8 & (1 << long)) != 0;
  v7->buffer_[v4] &= ~(1 << long);
  return result;
}

- (int64_t)nextSetBitWithLong:(int64_t)long
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v5 = long >> 6;
  size = bits->super.size_;
  if (((long >> 6) & 0x80000000) != 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, long >> 6);
  }

  v7 = bits->buffer_[v5] >> long;
  if (v7)
  {
    return long + JavaLangLong_numberOfTrailingZerosWithLong_(v7);
  }

  v9 = v5 << 6;
  v10 = (v5 + 1);
  while (v10 < self->numWords_)
  {
    v11 = self->bits_;
    v12 = v11->super.size_;
    if ((v10 & 0x80000000) != 0 || v10 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v10);
    }

    v13 = v11->buffer_[v10];
    v9 += 64;
    v10 = (v10 + 1);
    if (v13)
    {
      return (JavaLangLong_numberOfTrailingZerosWithLong_(v13) + v9);
    }
  }

  return -1;
}

- (int64_t)prevSetBitWithLong:(int64_t)long
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v5 = long >> 6;
  v6 = long & 0x3F;
  size = bits->super.size_;
  if (((long >> 6) & 0x80000000) != 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, long >> 6);
  }

  v8 = bits->buffer_[v5] << (v6 ^ 0x3Fu);
  if (v8)
  {
    return ((v6 | (v5 << 6)) - JavaLangLong_numberOfLeadingZerosWithLong_(v8));
  }

  for (i = v5 - 1; ; --i)
  {
    v5 = (v5 - 1);
    if (v5 < 0)
    {
      break;
    }

    v10 = self->bits_;
    v11 = v10->super.size_;
    if (v11 <= v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v5);
    }

    v8 = v10->buffer_[i & 0x7FFFFFFF];
    if (v8)
    {
      v6 = 63;
      return ((v6 | (v5 << 6)) - JavaLangLong_numberOfLeadingZerosWithLong_(v8));
    }
  }

  return -1;
}

- (void)or__WithOrgApacheLuceneUtilLongBitSet:(id)set
{
  v5 = JavaLangMath_minWithInt_withInt_(self->numWords_, *(set + 6));
  v6 = (v5 - 1);
  if (v5 - 1 >= 0)
  {
    do
    {
      v7 = *(set + 1);
      v8 = *(v7 + 8);
      if (v6 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v6);
      }

      bits = self->bits_;
      if (!bits)
      {
        JreThrowNullPointerException();
      }

      v10 = *(v7 + 16 + 8 * v6);
      size = bits->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      bits->buffer_[v6] |= v10;
    }

    while (v6-- > 0);
  }
}

- (void)xor__WithOrgApacheLuceneUtilLongBitSet:(id)set
{
  v5 = JavaLangMath_minWithInt_withInt_(self->numWords_, *(set + 6));
  v6 = (v5 - 1);
  if (v5 - 1 >= 0)
  {
    do
    {
      v7 = *(set + 1);
      v8 = *(v7 + 8);
      if (v6 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v6);
      }

      bits = self->bits_;
      if (!bits)
      {
        JreThrowNullPointerException();
      }

      v10 = *(v7 + 16 + 8 * v6);
      size = bits->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      bits->buffer_[v6] ^= v10;
    }

    while (v6-- > 0);
  }
}

- (BOOL)intersectsWithOrgApacheLuceneUtilLongBitSet:(id)set
{
  if (!set)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v5 = JavaLangMath_minWithInt_withInt_(self->numWords_, *(set + 6));
  do
  {
    if ((--v5 & 0x80000000) != 0)
    {
      break;
    }

    bits = self->bits_;
    if (!bits)
    {
      goto LABEL_12;
    }

    size = bits->super.size_;
    if (size <= v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v5);
    }

    v8 = bits->buffer_[v5 & 0x7FFFFFFF];
    v9 = *(set + 1);
    v10 = *(v9 + 8);
    if (v10 <= v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, v5);
    }
  }

  while ((*(v9 + 16 + 8 * (v5 & 0x7FFFFFFF)) & v8) == 0);
  return v5 >= 0;
}

- (void)and__WithOrgApacheLuceneUtilLongBitSet:(id)set
{
  if (!set)
  {
    goto LABEL_16;
  }

  v5 = JavaLangMath_minWithInt_withInt_(self->numWords_, *(set + 6));
  v10 = (v5 - 1);
  if (v5 - 1 >= 0)
  {
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

      bits->buffer_[v10] &= v14;
      if (v10-- <= 0)
      {
        goto LABEL_11;
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

LABEL_11:
  numWords = self->numWords_;
  v18 = *(set + 6);
  if (numWords > v18)
  {
    v19 = self->bits_;

    JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(v19, v18, numWords, 0, v6, v7, v8, v9);
  }
}

- (void)andNotWithOrgApacheLuceneUtilLongBitSet:(id)set
{
  if (!set)
  {
    goto LABEL_12;
  }

  v5 = JavaLangMath_minWithInt_withInt_(self->numWords_, *(set + 6));
  v6 = (v5 - 1);
  if (v5 - 1 >= 0)
  {
    while (1)
    {
      v7 = *(set + 1);
      v8 = *(v7 + 8);
      if (v6 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v6);
      }

      bits = self->bits_;
      if (!bits)
      {
        break;
      }

      v10 = *(v7 + 16 + 8 * v6);
      size = bits->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      bits->buffer_[v6] &= ~v10;
      if (v6-- <= 0)
      {
        return;
      }
    }

LABEL_12:
    JreThrowNullPointerException();
  }
}

- (BOOL)scanIsEmpty
{
  numWords = self->numWords_;
  if (numWords < 1)
  {
    return 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
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

      if (bits->buffer_[v4])
      {
        break;
      }

      v5 = ++v4 >= numWords;
    }

    while (numWords != v4);
  }

  return v5;
}

- (void)flipWithLong:(int64_t)long withLong:(int64_t)withLong
{
  if (withLong > long)
  {
    v5 = long >> 6;
    v6 = (withLong - 1) >> 6;
    v7 = -1 << long;
    v8 = 0xFFFFFFFFFFFFFFFFLL >> -withLong;
    if ((long >> 6) == v6)
    {
      bits = self->bits_;
      if (bits)
      {
        v8 &= v7;
        size = bits->super.size_;
        if ((v5 & 0x80000000) != 0 || size <= v5)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, long >> 6);
        }

LABEL_23:
        bits->buffer_[v5] ^= v8;
        return;
      }
    }

    else
    {
      v11 = self->bits_;
      if (v11)
      {
        v12 = v11->super.size_;
        if ((v5 & 0x80000000) != 0 || v12 <= v5)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, long >> 6);
        }

        v11->buffer_[v5] ^= v7;
        if (v5 + 1 < v6)
        {
          v13 = v5 + 1;
          do
          {
            v14 = self->bits_;
            v15 = v14->super.size_;
            if (v13 < 0 || v13 >= v15)
            {
              IOSArray_throwOutOfBoundsWithMsg(v15, v13);
            }

            v16 = v14->buffer_[v13];
            if (v13 < 0 || v13 >= v15)
            {
              IOSArray_throwOutOfBoundsWithMsg(v15, v13);
            }

            self->bits_->buffer_[v13++] = ~v16;
          }

          while (v6 != v13);
        }

        bits = self->bits_;
        v17 = bits->super.size_;
        if ((v6 & 0x80000000) != 0 || v17 <= v6)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (withLong - 1) >> 6);
        }

        v5 = (withLong - 1) >> 6;
        goto LABEL_23;
      }
    }

    JreThrowNullPointerException();
  }
}

- (void)flipWithLong:(int64_t)long
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = long >> 6;
  size = bits->super.size_;
  if (((long >> 6) & 0x80000000) != 0 || size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  bits->buffer_[(long >> 6)] ^= 1 << long;
}

- (OrgApacheLuceneUtilLongBitSet)setWithLong:(int64_t)long withLong:(int64_t)withLong
{
  if (withLong > long)
  {
    selfCopy = self;
    v9 = long >> 6;
    v10 = (withLong - 1) >> 6;
    v11 = -1 << long;
    v12 = 0xFFFFFFFFFFFFFFFFLL >> -withLong;
    if ((long >> 6) == v10)
    {
      bits = self->bits_;
      if (bits)
      {
        v12 &= v11;
        self = bits->super.size_;
        if ((v9 & 0x80000000) != 0 || self <= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(self, long >> 6);
        }

LABEL_13:
        bits->buffer_[v9] |= v12;
        return self;
      }
    }

    else
    {
      v14 = self->bits_;
      if (v14)
      {
        size = v14->super.size_;
        if ((v9 & 0x80000000) != 0 || size <= v9)
        {
          v16 = selfCopy->bits_;
          IOSArray_throwOutOfBoundsWithMsg(size, long >> 6);
        }

        v14->buffer_[v9] |= v11;
        JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(selfCopy->bits_, (v9 + 1), (withLong - 1) >> 6, -1, v4, v5, v6, v7);
        bits = selfCopy->bits_;
        self = bits->super.size_;
        if ((v10 & 0x80000000) != 0 || self <= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(self, v10);
        }

        LODWORD(v9) = v10;
        goto LABEL_13;
      }
    }

    JreThrowNullPointerException();
  }

  return self;
}

- (void)clearWithLong:(int64_t)long withLong:(int64_t)withLong
{
  if (withLong > long)
  {
    v9 = long >> 6;
    v10 = (withLong - 1) >> 6;
    v11 = ~(-1 << long);
    v12 = ~(0xFFFFFFFFFFFFFFFFLL >> -withLong);
    if ((long >> 6) == v10)
    {
      bits = self->bits_;
      if (bits)
      {
        v12 |= v11;
        size = bits->super.size_;
        if ((v9 & 0x80000000) != 0 || size <= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, long >> 6);
        }

LABEL_13:
        bits->buffer_[v9] &= v12;
        return;
      }
    }

    else
    {
      v15 = self->bits_;
      if (v15)
      {
        v16 = v15->super.size_;
        if ((v9 & 0x80000000) != 0 || v16 <= v9)
        {
          v18 = self->bits_;
          IOSArray_throwOutOfBoundsWithMsg(v16, long >> 6);
        }

        v15->buffer_[v9] &= v11;
        JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(self->bits_, (v9 + 1), (withLong - 1) >> 6, 0, v4, v5, v6, v7);
        bits = self->bits_;
        v17 = bits->super.size_;
        if ((v10 & 0x80000000) != 0 || v17 <= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v10);
        }

        LODWORD(v9) = v10;
        goto LABEL_13;
      }
    }

    JreThrowNullPointerException();
  }
}

- (id)clone
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = [IOSLongArray arrayWithLength:bits->super.size_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->bits_, 0, v4, 0, self->numWords_);
  numBits = self->numBits_;
  v6 = [OrgApacheLuceneUtilLongBitSet alloc];
  OrgApacheLuceneUtilLongBitSet_initWithLongArray_withLong_(v6, v4, numBits, v7, v8, v9, v10, v11);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (self->numBits_ != *(equal + 2))
  {
    return 0;
  }

  bits = self->bits_;
  v6 = *(equal + 1);

  return JavaUtilArrays_equalsWithLongArray_withLongArray_(bits, v6);
}

- (unint64_t)hash
{
  numWords = self->numWords_;
  v3 = (numWords - 1);
  if (numWords - 1 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
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

      v5 = __ROR8__(bits->buffer_[v3] ^ v5, 63);
    }

    while (v3-- > 0);
  }

  return ((v5 ^ (v5 << 32)) - 0x6789EDCC00000000) >> 32;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilLongBitSet;
  [(OrgApacheLuceneUtilLongBitSet *)&v3 dealloc];
}

@end