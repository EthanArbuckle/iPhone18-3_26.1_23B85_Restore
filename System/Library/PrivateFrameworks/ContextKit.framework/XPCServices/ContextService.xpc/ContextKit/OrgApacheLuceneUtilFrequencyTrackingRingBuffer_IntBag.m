@interface OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag
+ (void)initialize;
- (BOOL)removeWithInt:(int)a3;
- (id)asMap;
- (int)addWithInt:(int)a3;
- (int)frequencyWithInt:(int)a3;
- (int64_t)ramBytesUsed;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag

- (int64_t)ramBytesUsed
{
  v3 = qword_100553F88;
  v4 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(self->keys_) + v3;
  return v4 + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(self->freqs_);
}

- (int)frequencyWithInt:(int)a3
{
  keys = self->keys_;
  if (!keys)
  {
    goto LABEL_19;
  }

  v5 = self->mask_ & a3;
  while (1)
  {
    size = keys->super.size_;
    if (v5 < 0 || v5 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v5);
    }

    v7 = *(&keys->super.size_ + v5 + 1);
    freqs = self->freqs_;
    if (v7 == a3)
    {
      break;
    }

    if (!freqs)
    {
      goto LABEL_19;
    }

    v9 = freqs->super.size_;
    if (v5 < 0 || v5 >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, v5);
    }

    if (!*(&freqs->super.size_ + v5 + 1))
    {
      return 0;
    }

    v5 = self->mask_ & (v5 + 1);
    keys = self->keys_;
    if (!keys)
    {
      goto LABEL_19;
    }
  }

  if (!freqs)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  v10 = freqs->super.size_;
  if (v5 < 0 || v5 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v5);
  }

  return *(&freqs->super.size_ + v5 + 1);
}

- (int)addWithInt:(int)a3
{
  freqs = self->freqs_;
  if (!freqs)
  {
    goto LABEL_24;
  }

  v5 = self->mask_ & a3;
  while (1)
  {
    v6 = v5;
    size = freqs->super.size_;
    if (v5 < 0 || v5 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v5);
    }

    v8 = *(&freqs->super.size_ + v5 + 1);
    keys = self->keys_;
    if (!v8)
    {
      break;
    }

    if (!keys)
    {
      goto LABEL_24;
    }

    v10 = keys->super.size_;
    if (v5 < 0 || v5 >= v10)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, v5);
    }

    if (*(&keys->super.size_ + v5 + 1) == a3)
    {
      v16 = self->freqs_;
      v17 = v16->super.size_;
      if (v5 < 0 || v5 >= v17)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, v5);
      }

      v14 = &v16->super.size_ + 1;
      result = *(&v16->super.size_ + v6 + 1) + 1;
      goto LABEL_23;
    }

    v5 = self->mask_ & (v5 + 1);
    freqs = self->freqs_;
    if (!freqs)
    {
      goto LABEL_24;
    }
  }

  if (!keys)
  {
LABEL_24:
    JreThrowNullPointerException();
  }

  v11 = keys->super.size_;
  if (v5 < 0 || v5 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v5);
  }

  *(&keys->super.size_ + v5 + 1) = a3;
  v12 = self->freqs_;
  v13 = v12->super.size_;
  if (v5 < 0 || v5 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v5);
  }

  v14 = &v12->super.size_ + 1;
  result = 1;
LABEL_23:
  v14[v6] = result;
  return result;
}

- (BOOL)removeWithInt:(int)a3
{
  freqs = self->freqs_;
  if (!freqs)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  v5 = self->mask_ & a3;
  while (1)
  {
    v6 = v5;
    size = freqs->super.size_;
    if (v5 < 0 || v5 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v5);
    }

    v8 = *(&freqs->super.size_ + v5 + 1);
    if (!v8)
    {
      return v8 != 0;
    }

    keys = self->keys_;
    if (!keys)
    {
      goto LABEL_19;
    }

    v10 = keys->super.size_;
    if (v5 < 0 || v5 >= v10)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, v5);
    }

    if (*(&keys->super.size_ + v5 + 1) == a3)
    {
      v11 = self->freqs_;
      v12 = v11->super.size_;
      if (v5 < 0 || v5 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v5);
      }

      v13 = *(&v11->super.size_ + v5 + 1) - 1;
      *(&v11->super.size_ + v6 + 1) = v13;
      if (!v13)
      {
        sub_10003E7C4(self, v6);
      }

      return v8 != 0;
    }

    v5 = self->mask_ & (v5 + 1);
    freqs = self->freqs_;
    if (!freqs)
    {
      goto LABEL_19;
    }
  }
}

- (id)asMap
{
  v3 = new_JavaUtilHashMap_init();
  keys = self->keys_;
  if (!keys)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v5 = v3;
  v6 = 0;
  while (v6 < keys->super.size_)
  {
    freqs = self->freqs_;
    if (freqs)
    {
      size = freqs->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      if (*(&freqs->super.size_ + v6 + 1) >= 1)
      {
        v9 = keys->super.size_;
        if (v6 >= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, v6);
        }

        v10 = JavaLangInteger_valueOfWithInt_(*(&keys->super.size_ + v6 + 1));
        v11 = self->freqs_;
        v12 = v11->super.size_;
        if (v6 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v6);
        }

        [(JavaUtilHashMap *)v5 putWithId:v10 withId:JavaLangInteger_valueOfWithInt_(*(&v11->super.size_ + v6 + 1))];
        keys = self->keys_;
      }

      ++v6;
      if (keys)
      {
        continue;
      }
    }

    goto LABEL_16;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag;
  [(OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag_class_();
    qword_100553F88 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag__initialized);
  }
}

@end