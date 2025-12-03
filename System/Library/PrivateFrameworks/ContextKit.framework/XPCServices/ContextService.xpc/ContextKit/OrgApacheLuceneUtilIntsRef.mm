@interface OrgApacheLuceneUtilIntsRef
+ (void)initialize;
- (BOOL)intsEqualsWithOrgApacheLuceneUtilIntsRef:(id)ref;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (NSString)description;
- (OrgApacheLuceneUtilIntsRef)initWithIntArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (int)compareToWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilIntsRef

- (OrgApacheLuceneUtilIntsRef)initWithIntArray:(id)array withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->ints_, array);
  self->offset_ = int;
  self->length_ = withInt;
  return self;
}

- (id)clone
{
  ints = self->ints_;
  v3 = *&self->offset_;
  v4 = [OrgApacheLuceneUtilIntsRef alloc];
  JreStrongAssign(&v4->ints_, ints);
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
    ints = self->ints_;
    if (!ints)
    {
      JreThrowNullPointerException();
    }

    size = ints->super.size_;
    if (offset < 0 || offset >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, offset);
    }

    v5 = *(&ints->super.size_ + ++offset) + 31 * v5;
  }

  while (v3 != offset);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
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

  return [(OrgApacheLuceneUtilIntsRef *)self intsEqualsWithOrgApacheLuceneUtilIntsRef:equal];
}

- (BOOL)intsEqualsWithOrgApacheLuceneUtilIntsRef:(id)ref
{
  if (!ref)
  {
    goto LABEL_21;
  }

  length = self->length_;
  if (length != *(ref + 5))
  {
    return 0;
  }

  offset = self->offset_;
  v6 = offset + length;
  if (offset < v6)
  {
    v7 = *(ref + 1);
    v8 = *(ref + 4);
    v9 = v6;
    while (1)
    {
      ints = self->ints_;
      if (!ints)
      {
        break;
      }

      size = ints->super.size_;
      if (offset < 0 || offset >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, offset);
      }

      if (!v7)
      {
        break;
      }

      v12 = *(&ints->super.size_ + offset + 1);
      v13 = *(v7 + 8);
      if ((v8 & 0x80000000) != 0 || v8 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v8);
      }

      v14 = *(v7 + 12 + 4 * v8);
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

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
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

  if (self == id)
  {
    return 0;
  }

  ints = self->ints_;
  v7 = *(id + 1);
  offset = self->offset_;
  selfCopy = self;
  v9 = *(id + 4);
  v10 = JavaLangMath_minWithInt_withInt_(self->length_, *(id + 5));
  v11 = v10 + offset;
  if (offset > v10 + offset)
  {
    v11 = offset;
  }

  v12 = v11;
  while (v12 != offset)
  {
    if (!ints)
    {
      goto LABEL_28;
    }

    size = ints->super.size_;
    if (offset < 0 || offset >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, offset);
    }

    if (!v7)
    {
      goto LABEL_28;
    }

    v14 = *(&ints->super.size_ + offset + 1);
    v15 = *(v7 + 8);
    if ((v9 & 0x80000000) != 0 || v9 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v9);
    }

    v16 = *(v7 + 12 + 4 * v9);
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

  return selfCopy->length_ - *(id + 5);
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

      ints = self->ints_;
      if (!ints)
      {
        JreThrowNullPointerException();
      }

      size = ints->super.size_;
      if (offset < 0 || offset >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, offset);
      }

      [(JavaLangStringBuilder *)v3 appendWithNSString:JavaLangInteger_toHexStringWithInt_(*(&ints->super.size_ + ++offset))];
    }

    while (v6 != offset);
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:93];

  return [(JavaLangStringBuilder *)v3 description];
}

- (BOOL)isValid
{
  ints = self->ints_;
  if (!ints)
  {
    v13 = @"ints is null";
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

  size = ints->super.size_;
  if (length > size)
  {
    v14 = @"length is out of bounds: ";
    v23 = ints->super.size_;
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
  v3.super_class = OrgApacheLuceneUtilIntsRef;
  [(OrgApacheLuceneUtilIntsRef *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(OrgApacheLuceneUtilIntsRef *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilIntsRef_EMPTY_INTS_, [IOSIntArray newArrayWithLength:0]);
    atomic_store(1u, OrgApacheLuceneUtilIntsRef__initialized);
  }
}

@end