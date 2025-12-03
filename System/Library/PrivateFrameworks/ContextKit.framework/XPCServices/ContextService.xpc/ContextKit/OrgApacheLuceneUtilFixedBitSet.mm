@interface OrgApacheLuceneUtilFixedBitSet
+ (int)bits2wordsWithInt:(int)int;
+ (void)initialize;
- (BOOL)getAndClearWithInt:(int)int;
- (BOOL)getAndSetWithInt:(int)int;
- (BOOL)getWithInt:(int)int;
- (BOOL)intersectsWithOrgApacheLuceneUtilFixedBitSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (BOOL)scanIsEmpty;
- (BOOL)verifyGhostBitsClear;
- (OrgApacheLuceneUtilFixedBitSet)setWithInt:(int)int;
- (OrgApacheLuceneUtilFixedBitSet)setWithInt:(int)int withInt:(int)withInt;
- (id)clone;
- (int)nextSetBitWithInt:(int)int;
- (int)prevSetBitWithInt:(int)int;
- (unint64_t)hash;
- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)andNotWithOrgApacheLuceneUtilFixedBitSet:(id)set;
- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)and__WithOrgApacheLuceneUtilFixedBitSet:(id)set;
- (void)clearWithInt:(int)int;
- (void)clearWithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)flipWithInt:(int)int;
- (void)flipWithInt:(int)int withInt:(int)withInt;
- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)or__WithOrgApacheLuceneUtilFixedBitSet:(id)set;
- (void)xor__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)xor__WithOrgApacheLuceneUtilFixedBitSet:(id)set;
@end

@implementation OrgApacheLuceneUtilFixedBitSet

+ (int)bits2wordsWithInt:(int)int
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilFixedBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000F2080();
  }

  return ((int - 1) >> 6) + 1;
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

- (BOOL)getWithInt:(int)int
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = int >> 6;
  size = bits->super.size_;
  if (int >> 6 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int >> 6));
  }

  return (bits->buffer_[v4] >> int) & 1;
}

- (OrgApacheLuceneUtilFixedBitSet)setWithInt:(int)int
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = int >> 6;
  result = bits->super.size_;
  if (int >> 6 < 0 || v4 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, (int >> 6));
  }

  bits->buffer_[v4] |= 1 << int;
  return result;
}

- (BOOL)getAndSetWithInt:(int)int
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = int >> 6;
  size = bits->super.size_;
  if (int >> 6 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int >> 6));
  }

  v6 = bits;
  v7 = bits->buffer_[v4];
  if (v4 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int >> 6));
  }

  result = (v7 & (1 << int)) != 0;
  v6->buffer_[v4] |= 1 << int;
  return result;
}

- (void)clearWithInt:(int)int
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = int >> 6;
  size = bits->super.size_;
  if (int >> 6 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int >> 6));
  }

  bits->buffer_[v4] &= ~(1 << int);
}

- (BOOL)getAndClearWithInt:(int)int
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = int >> 6;
  size = bits->super.size_;
  if (int >> 6 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int >> 6));
  }

  v6 = bits;
  v7 = bits->buffer_[v4];
  if (v4 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int >> 6));
  }

  result = (v7 & (1 << int)) != 0;
  v6->buffer_[v4] &= ~(1 << int);
  return result;
}

- (int)nextSetBitWithInt:(int)int
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  intCopy = int;
  v6 = int >> 6;
  size = bits->super.size_;
  if (int >> 6 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int >> 6));
  }

  v8 = bits->buffer_[v6] >> int;
  if (v8)
  {
    return JavaLangLong_numberOfTrailingZerosWithLong_(v8) + intCopy;
  }

  v10 = v6 + 1;
  intCopy = v6 << 6;
  while (v10 < self->numWords_)
  {
    v11 = self->bits_;
    v12 = v11->super.size_;
    if (v10 - 1 < -1 || v10 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v10);
    }

    v8 = v11->buffer_[v10++];
    intCopy += 64;
    if (v8)
    {
      return JavaLangLong_numberOfTrailingZerosWithLong_(v8) + intCopy;
    }
  }

  return 0x7FFFFFFF;
}

- (int)prevSetBitWithInt:(int)int
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  intCopy = int;
  v6 = (int >> 6);
  size = bits->super.size_;
  if ((v6 & 0x80000000) != 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int >> 6));
  }

  v8 = bits->buffer_[v6] << (int & 0x3F ^ 0x3Fu);
  if (v8)
  {
    return intCopy - JavaLangLong_numberOfLeadingZerosWithLong_(v8);
  }

  intCopy = (v6 << 6) | 0x3F;
  while ((--v6 & 0x80000000) == 0)
  {
    v10 = self->bits_;
    v11 = v10->super.size_;
    if (v11 <= v6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v6);
    }

    v8 = v10->buffer_[v6 & 0x7FFFFFFF];
    intCopy -= 64;
    if (v8)
    {
      return intCopy - JavaLangLong_numberOfLeadingZerosWithLong_(v8);
    }
  }

  return -1;
}

- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  if (OrgApacheLuceneUtilBitSetIterator_getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(iterator))
  {
    [(OrgApacheLuceneUtilBitSet *)self assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator:iterator];
    FixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator = OrgApacheLuceneUtilBitSetIterator_getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(iterator);

    [(OrgApacheLuceneUtilFixedBitSet *)self or__WithOrgApacheLuceneUtilFixedBitSet:FixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = OrgApacheLuceneUtilFixedBitSet;
    [(OrgApacheLuceneUtilBitSet *)&v6 or__WithOrgApacheLuceneSearchDocIdSetIterator:iterator];
  }
}

- (void)or__WithOrgApacheLuceneUtilFixedBitSet:(id)set
{
  if (!set)
  {
    JreThrowNullPointerException();
  }

  v4 = *(set + 1);
  v5 = *(set + 5);

  sub_1000F0E4C(self, v4, v5);
}

- (void)xor__WithOrgApacheLuceneUtilFixedBitSet:(id)set
{
  if (!set)
  {
    JreThrowNullPointerException();
  }

  v4 = *(set + 1);
  v5 = *(set + 5);

  sub_1000F0F78(self, v4, v5);
}

- (void)xor__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  [(OrgApacheLuceneUtilBitSet *)self assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator:?];
  if (OrgApacheLuceneUtilBitSetIterator_getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(iterator))
  {
    FixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator = OrgApacheLuceneUtilBitSetIterator_getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(iterator);

    [(OrgApacheLuceneUtilFixedBitSet *)self xor__WithOrgApacheLuceneUtilFixedBitSet:FixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator];
  }

  else
  {
    if (!iterator)
    {
      JreThrowNullPointerException();
    }

    nextDoc = [iterator nextDoc];
    if (nextDoc < self->numBits_)
    {
      nextDoc2 = nextDoc;
      do
      {
        [(OrgApacheLuceneUtilFixedBitSet *)self flipWithInt:nextDoc2];
        nextDoc2 = [iterator nextDoc];
      }

      while (nextDoc2 < self->numBits_);
    }
  }
}

- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  if (OrgApacheLuceneUtilBitSetIterator_getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(iterator))
  {
    [(OrgApacheLuceneUtilBitSet *)self assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator:iterator];
    FixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator = OrgApacheLuceneUtilBitSetIterator_getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(iterator);

    [(OrgApacheLuceneUtilFixedBitSet *)self and__WithOrgApacheLuceneUtilFixedBitSet:FixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = OrgApacheLuceneUtilFixedBitSet;
    [(OrgApacheLuceneUtilBitSet *)&v6 and__WithOrgApacheLuceneSearchDocIdSetIterator:iterator];
  }
}

- (BOOL)intersectsWithOrgApacheLuceneUtilFixedBitSet:(id)set
{
  if (!set)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v5 = JavaLangMath_minWithInt_withInt_(self->numWords_, *(set + 5));
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

- (void)and__WithOrgApacheLuceneUtilFixedBitSet:(id)set
{
  if (!set)
  {
    JreThrowNullPointerException();
  }

  v4 = *(set + 1);
  v5 = *(set + 5);

  sub_1000F12E8(self, v4, v5);
}

- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  if (OrgApacheLuceneUtilBitSetIterator_getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(iterator))
  {
    [(OrgApacheLuceneUtilBitSet *)self assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator:iterator];
    FixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator = OrgApacheLuceneUtilBitSetIterator_getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(iterator);

    [(OrgApacheLuceneUtilFixedBitSet *)self andNotWithOrgApacheLuceneUtilFixedBitSet:FixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = OrgApacheLuceneUtilFixedBitSet;
    [(OrgApacheLuceneUtilBitSet *)&v6 andNotWithOrgApacheLuceneSearchDocIdSetIterator:iterator];
  }
}

- (void)andNotWithOrgApacheLuceneUtilFixedBitSet:(id)set
{
  if (!set)
  {
    JreThrowNullPointerException();
  }

  v4 = *(set + 1);
  v5 = *(set + 5);

  sub_1000F1508(self, v4, v5);
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

- (void)flipWithInt:(int)int withInt:(int)withInt
{
  if (withInt > int)
  {
    v5 = int >> 6;
    v6 = -1 << int;
    v7 = 0xFFFFFFFFFFFFFFFFLL >> -withInt;
    if (int >> 6 == (withInt - 1) >> 6)
    {
      bits = self->bits_;
      if (bits)
      {
        v7 &= v6;
        v9 = v5;
        size = bits->super.size_;
        if (v5 < 0 || v5 >= size)
        {
          v11 = (int >> 6);
          goto LABEL_27;
        }

LABEL_23:
        bits->buffer_[v9] ^= v7;
        return;
      }
    }

    else
    {
      v12 = self->bits_;
      if (v12)
      {
        v11 = ((withInt - 1) >> 6);
        v13 = v12->super.size_;
        if (v5 < 0 || v5 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, (int >> 6));
        }

        v12->buffer_[v5] ^= v6;
        if (v5 + 1 >= v11)
        {
          v9 = v11;
        }

        else
        {
          v14 = 0;
          v15 = v5 + 1;
          v9 = v11;
          v16 = 8 * v5 + 8;
          do
          {
            v17 = v15 + v14;
            v18 = self->bits_;
            v19 = v18->super.size_;
            if (v5 + v14 < -1 || v17 >= v19)
            {
              IOSArray_throwOutOfBoundsWithMsg(v19, (v15 + v14));
            }

            v20 = *(&v18->buffer_[v14] + v16);
            if (v5 + v14 < -1 || v17 >= v19)
            {
              IOSArray_throwOutOfBoundsWithMsg(v19, v15 + v14);
            }

            *(&self->bits_->buffer_[v14++] + v16) = ~v20;
          }

          while (v15 - v11 + v14);
        }

        bits = self->bits_;
        size = bits->super.size_;
        if ((v11 & 0x80000000) != 0 || v11 >= size)
        {
LABEL_27:
          IOSArray_throwOutOfBoundsWithMsg(size, v11);
        }

        goto LABEL_23;
      }
    }

    JreThrowNullPointerException();
  }
}

- (void)flipWithInt:(int)int
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = int >> 6;
  size = bits->super.size_;
  if (int >> 6 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int >> 6));
  }

  bits->buffer_[v4] ^= 1 << int;
}

- (OrgApacheLuceneUtilFixedBitSet)setWithInt:(int)int withInt:(int)withInt
{
  if (withInt > int)
  {
    selfCopy = self;
    v9 = int >> 6;
    v10 = -1 << int;
    v11 = 0xFFFFFFFFFFFFFFFFLL >> -withInt;
    if (int >> 6 == (withInt - 1) >> 6)
    {
      bits = self->bits_;
      if (bits)
      {
        v11 &= v10;
        self = bits->super.size_;
        if (v9 < 0 || v9 >= self)
        {
          IOSArray_throwOutOfBoundsWithMsg(self, (int >> 6));
        }

LABEL_13:
        bits->buffer_[v9] |= v11;
        return self;
      }
    }

    else
    {
      v13 = self->bits_;
      if (v13)
      {
        v14 = ((withInt - 1) >> 6);
        size = v13->super.size_;
        if (v9 < 0 || v9 >= size)
        {
          v16 = selfCopy->bits_;
          IOSArray_throwOutOfBoundsWithMsg(size, (int >> 6));
        }

        v13->buffer_[v9] |= v10;
        JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(selfCopy->bits_, (v9 + 1), v14, -1, v4, v5, v6, v7);
        bits = selfCopy->bits_;
        self = bits->super.size_;
        if ((v14 & 0x80000000) != 0 || v14 >= self)
        {
          IOSArray_throwOutOfBoundsWithMsg(self, v14);
        }

        v9 = v14;
        goto LABEL_13;
      }
    }

    JreThrowNullPointerException();
  }

  return self;
}

- (void)clearWithInt:(int)int withInt:(int)withInt
{
  if (withInt > int)
  {
    v9 = int >> 6;
    v10 = ~(-1 << int);
    v11 = ~(0xFFFFFFFFFFFFFFFFLL >> -withInt);
    if (int >> 6 == (withInt - 1) >> 6)
    {
      bits = self->bits_;
      if (bits)
      {
        v11 |= v10;
        size = bits->super.size_;
        if (v9 < 0 || v9 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, (int >> 6));
        }

LABEL_13:
        bits->buffer_[v9] &= v11;
        return;
      }
    }

    else
    {
      v14 = self->bits_;
      if (v14)
      {
        v15 = ((withInt - 1) >> 6);
        v16 = v14->super.size_;
        if (v9 < 0 || v9 >= v16)
        {
          v18 = self->bits_;
          IOSArray_throwOutOfBoundsWithMsg(v16, (int >> 6));
        }

        v14->buffer_[v9] &= v10;
        JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(self->bits_, (v9 + 1), v15, 0, v4, v5, v6, v7);
        bits = self->bits_;
        v17 = bits->super.size_;
        if ((v15 & 0x80000000) != 0 || v15 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v15);
        }

        v9 = v15;
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

  selfCopy = self;
  v4 = [IOSLongArray arrayWithLength:bits->super.size_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(selfCopy->bits_, 0, v4, 0, selfCopy->numWords_);
  LODWORD(selfCopy) = selfCopy->numBits_;
  v5 = [OrgApacheLuceneUtilFixedBitSet alloc];
  OrgApacheLuceneUtilFixedBitSet_initWithLongArray_withInt_(v5, v4, selfCopy);

  return v5;
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

  if (self->numBits_ != *(equal + 4))
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
  v3.super_class = OrgApacheLuceneUtilFixedBitSet;
  [(OrgApacheLuceneUtilFixedBitSet *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilFixedBitSet_class_();
    qword_1005545E0 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilFixedBitSet__initialized);
  }
}

@end