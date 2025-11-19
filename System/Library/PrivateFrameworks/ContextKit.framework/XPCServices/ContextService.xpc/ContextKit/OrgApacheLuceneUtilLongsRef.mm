@interface OrgApacheLuceneUtilLongsRef
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (BOOL)longsEqualsWithOrgApacheLuceneUtilLongsRef:(id)a3;
- (NSString)description;
- (OrgApacheLuceneUtilLongsRef)initWithLongArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (int)compareToWithId:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilLongsRef

- (OrgApacheLuceneUtilLongsRef)initWithLongArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  JreStrongAssign(&self->longs_, a3);
  self->offset_ = a4;
  self->length_ = a5;
  return self;
}

- (id)clone
{
  longs = self->longs_;
  v3 = *&self->offset_;
  v4 = [OrgApacheLuceneUtilLongsRef alloc];
  JreStrongAssign(&v4->longs_, longs);
  *&v4->offset_ = v3;

  return v4;
}

- (unint64_t)hash
{
  offset = self->offset_;
  v3 = self->length_ + offset;
  if (offset >= v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    longs = self->longs_;
    if (!longs)
    {
      JreThrowNullPointerException();
    }

    size = longs->super.size_;
    if (offset < 0 || offset >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, offset);
    }

    v8 = longs->buffer_[offset];
    if (offset < 0 || offset >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, offset);
    }

    v5 = 31 * v5 + (HIDWORD(self->longs_->buffer_[offset++]) ^ v8);
  }

  while (v3 != offset);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [(OrgApacheLuceneUtilLongsRef *)self longsEqualsWithOrgApacheLuceneUtilLongsRef:a3];
}

- (BOOL)longsEqualsWithOrgApacheLuceneUtilLongsRef:(id)a3
{
  if (!a3)
  {
    goto LABEL_21;
  }

  length = self->length_;
  if (length != *(a3 + 5))
  {
    return 0;
  }

  offset = self->offset_;
  v6 = offset + length;
  if (offset < v6)
  {
    v7 = *(a3 + 1);
    v8 = *(a3 + 4);
    v9 = v6;
    while (1)
    {
      longs = self->longs_;
      if (!longs)
      {
        break;
      }

      size = longs->super.size_;
      if (offset < 0 || offset >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, offset);
      }

      if (!v7)
      {
        break;
      }

      v12 = longs->buffer_[offset];
      v13 = *(v7 + 8);
      if ((v8 & 0x80000000) != 0 || v8 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v8);
      }

      v14 = *(v7 + 16 + 8 * v8);
      result = v12 == v14;
      ++offset;
      v8 = (v8 + 1);
      if (v12 != v14 || v9 == offset)
      {
        return result;
      }
    }

LABEL_21:
    JreThrowNullPointerException();
  }

  return 1;
}

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    if (self)
    {
LABEL_28:
      JreThrowNullPointerException();
    }

    return 0;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (self == a3)
  {
    return 0;
  }

  longs = self->longs_;
  v7 = *(a3 + 1);
  offset = self->offset_;
  v21 = self;
  v9 = *(a3 + 4);
  v10 = JavaLangMath_minWithInt_withInt_(self->length_, *(a3 + 5));
  v11 = v10 + offset;
  if (offset > v10 + offset)
  {
    v11 = offset;
  }

  v12 = v11;
  while (v12 != offset)
  {
    if (!longs)
    {
      goto LABEL_28;
    }

    size = longs->super.size_;
    if (offset < 0 || offset >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, offset);
    }

    if (!v7)
    {
      goto LABEL_28;
    }

    v14 = longs->buffer_[offset];
    v15 = *(v7 + 8);
    if ((v9 & 0x80000000) != 0 || v9 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v9);
    }

    v16 = *(v7 + 16 + 8 * v9);
    ++offset;
    v9 = (v9 + 1);
    v17 = v14 == v16;
    v18 = v14 <= v16;
    if (v14 < v16)
    {
      v19 = -1;
    }

    else
    {
      v19 = v3;
    }

    if (v18)
    {
      v3 = v19;
    }

    else
    {
      v3 = 1;
    }

    if (!v17)
    {
      return v3;
    }
  }

  return v21->length_ - *(a3 + 5);
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v3 appendWithChar:91];
  offset = self->offset_;
  v5 = self->length_ + offset;
  if (offset < v5)
  {
    v6 = v5;
    do
    {
      if (offset > self->offset_)
      {
        [(JavaLangStringBuilder *)v3 appendWithChar:32];
      }

      longs = self->longs_;
      if (!longs)
      {
        JreThrowNullPointerException();
      }

      size = longs->super.size_;
      if (offset < 0 || offset >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, offset);
      }

      [(JavaLangStringBuilder *)v3 appendWithNSString:JavaLangLong_toHexStringWithLong_(longs->buffer_[offset++])];
    }

    while (v6 != offset);
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:93];

  return [(JavaLangStringBuilder *)v3 description];
}

- (BOOL)isValid
{
  longs = self->longs_;
  if (!longs)
  {
    v13 = @"longs is null";
    goto LABEL_20;
  }

  length = self->length_;
  if (length < 0)
  {
    v17 = @"length is negative: ";
    v18 = self->length_;
LABEL_13:
    v15 = "$I";
LABEL_19:
    v13 = JreStrcat(v15, a2, v2, v3, v4, v5, v6, v7, v17);
LABEL_20:
    v16 = new_JavaLangIllegalStateException_initWithNSString_(v13);
    objc_exception_throw(v16);
  }

  size = longs->super.size_;
  if (length > size)
  {
    v14 = @"length is out of bounds: ";
    v23 = longs->super.size_;
    v19 = self->length_;
LABEL_17:
    v13 = JreStrcat("$I$I", a2, v2, v3, v4, v5, v6, v7, v14);
    goto LABEL_20;
  }

  offset = self->offset_;
  if ((offset & 0x80000000) != 0)
  {
    v17 = @"offset is negative: ";
    v20 = self->offset_;
    goto LABEL_13;
  }

  if (offset > size)
  {
    v14 = @"offset out of bounds: ";
LABEL_16:
    v21 = self->offset_;
    goto LABEL_17;
  }

  if ((offset + length) < 0)
  {
    v14 = @"offset+length is negative: offset=";
    v24 = self->length_;
    goto LABEL_16;
  }

  if (offset + length > size)
  {
    v25 = self->length_;
    v17 = @"offset+length out of bounds: offset=";
    v22 = self->offset_;
    v15 = "$I$I$I";
    goto LABEL_19;
  }

  return 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilLongsRef;
  [(OrgApacheLuceneUtilLongsRef *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(OrgApacheLuceneUtilLongsRef *)self clone];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilLongsRef_EMPTY_LONGS_, [IOSLongArray newArrayWithLength:0]);
    atomic_store(1u, OrgApacheLuceneUtilLongsRef__initialized);
  }
}

@end