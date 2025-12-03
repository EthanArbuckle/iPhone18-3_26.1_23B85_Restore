@interface OrgApacheLuceneUtilCharsRef
+ (id)getUTF16SortedAsUTF8Comparator;
+ (void)initialize;
- (BOOL)charsEqualsWithOrgApacheLuceneUtilCharsRef:(id)ref;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (OrgApacheLuceneUtilCharsRef)init;
- (OrgApacheLuceneUtilCharsRef)initWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)subSequenceFrom:(int)from to:(int)to;
- (int)compareToWithId:(id)id;
- (unint64_t)hash;
- (unsigned)charAtWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilCharsRef

- (OrgApacheLuceneUtilCharsRef)init
{
  JreStrongAssign(&self->chars_, OrgApacheLuceneUtilCharsRef_EMPTY_CHARS_);
  *&self->offset_ = 0;
  return self;
}

- (OrgApacheLuceneUtilCharsRef)initWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->chars_, array);
  self->offset_ = int;
  self->length_ = withInt;
  return self;
}

- (id)clone
{
  chars = self->chars_;
  v3 = *&self->offset_;
  v4 = [OrgApacheLuceneUtilCharsRef alloc];
  JreStrongAssign(&v4->chars_, chars);
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
    chars = self->chars_;
    if (!chars)
    {
      JreThrowNullPointerException();
    }

    size = chars->super.size_;
    if (offset < 0 || offset >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, offset);
    }

    v5 = 31 * v5 + *(&chars->super.size_ + offset++ + 2);
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

  return [(OrgApacheLuceneUtilCharsRef *)self charsEqualsWithOrgApacheLuceneUtilCharsRef:equal];
}

- (BOOL)charsEqualsWithOrgApacheLuceneUtilCharsRef:(id)ref
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
      chars = self->chars_;
      if (!chars)
      {
        break;
      }

      size = chars->super.size_;
      if (offset < 0 || offset >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, offset);
      }

      if (!v7)
      {
        break;
      }

      v12 = *(&chars->super.size_ + offset + 2);
      v13 = *(v7 + 8);
      if ((v8 & 0x80000000) != 0 || v8 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v8);
      }

      v14 = *(v7 + 12 + 2 * v8);
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

  chars = self->chars_;
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
    if (!chars)
    {
      goto LABEL_28;
    }

    size = chars->super.size_;
    if (offset < 0 || offset >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, offset);
    }

    if (!v7)
    {
      goto LABEL_28;
    }

    v14 = *(&chars->super.size_ + offset + 2);
    v15 = *(v7 + 8);
    if ((v9 & 0x80000000) != 0 || v9 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v9);
    }

    v16 = *(v7 + 12 + 2 * v9);
    ++offset;
    v9 = (v9 + 1);
    v17 = v14 == v16;
    v18 = v14 > v16;
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
      v3 = 1;
    }

    else
    {
      v3 = v19;
    }

    if (!v17)
    {
      return v3;
    }
  }

  return selfCopy->length_ - *(id + 5);
}

- (unsigned)charAtWithInt:(int)int
{
  if (int < 0 || self->length_ <= int)
  {
    v8 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v8);
  }

  chars = self->chars_;
  if (!chars)
  {
    JreThrowNullPointerException();
  }

  offset = self->offset_;
  size = chars->super.size_;
  v6 = offset + int;
  if (offset + int < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (offset + int));
  }

  return *(&chars->super.size_ + v6 + 2);
}

- (id)subSequenceFrom:(int)from to:(int)to
{
  if (from < 0 || (v4 = to - from, to < from) || self->length_ < to)
  {
    v9 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v9);
  }

  chars = self->chars_;
  v6 = self->offset_ + from;
  v7 = [OrgApacheLuceneUtilCharsRef alloc];
  JreStrongAssign(&v7->chars_, chars);
  v7->offset_ = v6;
  v7->length_ = v4;

  return v7;
}

+ (id)getUTF16SortedAsUTF8Comparator
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilCharsRef__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000FBE58();
  }

  return qword_100554630;
}

- (BOOL)isValid
{
  chars = self->chars_;
  if (!chars)
  {
    v13 = @"chars is null";
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

  size = chars->super.size_;
  if (length > size)
  {
    v14 = @"length is out of bounds: ";
    v23 = chars->super.size_;
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
  v3.super_class = OrgApacheLuceneUtilCharsRef;
  [(OrgApacheLuceneUtilCharsRef *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(OrgApacheLuceneUtilCharsRef *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilCharsRef_EMPTY_CHARS_, [IOSCharArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&qword_100554630, [OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator alloc]);
    atomic_store(1u, OrgApacheLuceneUtilCharsRef__initialized);
  }
}

@end