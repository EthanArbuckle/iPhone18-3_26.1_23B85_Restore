@interface OrgApacheLuceneUtilBytesRef
+ (id)getUTF8SortedAsUTF16Comparator;
+ (id)getUTF8SortedAsUnicodeComparator;
+ (void)initialize;
- (BOOL)bytesEqualsWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (NSString)description;
- (OrgApacheLuceneUtilBytesRef)init;
- (OrgApacheLuceneUtilBytesRef)initWithByteArray:(id)array;
- (OrgApacheLuceneUtilBytesRef)initWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)utf8ToString;
- (int)compareToWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilBytesRef

- (OrgApacheLuceneUtilBytesRef)init
{
  if (!OrgApacheLuceneUtilBytesRef_EMPTY_BYTES_)
  {
    JreThrowNullPointerException();
  }

  v3 = *(OrgApacheLuceneUtilBytesRef_EMPTY_BYTES_ + 8);
  JreStrongAssign(&self->bytes_, OrgApacheLuceneUtilBytesRef_EMPTY_BYTES_);
  self->offset_ = 0;
  self->length_ = v3;
  return self;
}

- (OrgApacheLuceneUtilBytesRef)initWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->bytes_, array);
  self->offset_ = int;
  self->length_ = withInt;
  return self;
}

- (OrgApacheLuceneUtilBytesRef)initWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);
  JreStrongAssign(&self->bytes_, array);
  self->offset_ = 0;
  self->length_ = v4;
  return self;
}

- (BOOL)bytesEqualsWithOrgApacheLuceneUtilBytesRef:(id)ref
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
      bytes = self->bytes_;
      if (!bytes)
      {
        break;
      }

      size = bytes->super.size_;
      if (offset < 0 || offset >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, offset);
      }

      if (!v7)
      {
        break;
      }

      v12 = *(&bytes->super.size_ + offset + 4);
      v13 = *(v7 + 8);
      if ((v8 & 0x80000000) != 0 || v8 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v8);
      }

      v14 = *(v7 + 12 + v8);
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

- (id)clone
{
  bytes = self->bytes_;
  v3 = *&self->offset_;
  v4 = [OrgApacheLuceneUtilBytesRef alloc];
  JreStrongAssign(&v4->bytes_, bytes);
  *&v4->offset_ = v3;

  return v4;
}

- (unint64_t)hash
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100005258();
  }

  return OrgApacheLuceneUtilStringHelper_murmurhash3_x86_32WithOrgApacheLuceneUtilBytesRef_withInt_(self, OrgApacheLuceneUtilStringHelper_GOOD_FAST_HASH_SEED_);
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

  return [(OrgApacheLuceneUtilBytesRef *)self bytesEqualsWithOrgApacheLuceneUtilBytesRef:equal];
}

- (id)utf8ToString
{
  v3 = [IOSCharArray arrayWithLength:self->length_];
  v4 = OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithByteArray_withInt_withInt_withCharArray_(self->bytes_, self->offset_, self->length_, v3);

  return [NSString stringWithCharacters:v3 offset:0 length:v4];
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

      bytes = self->bytes_;
      if (!bytes)
      {
        JreThrowNullPointerException();
      }

      size = bytes->super.size_;
      if (offset < 0 || offset >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, offset);
      }

      [(JavaLangStringBuilder *)v3 appendWithNSString:JavaLangInteger_toHexStringWithInt_(*(&bytes->super.size_ + offset++ + 4))];
    }

    while (v6 != offset);
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:93];

  return [(JavaLangStringBuilder *)v3 description];
}

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (id && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = qword_1005542D8;
  if (!qword_1005542D8)
  {
    JreThrowNullPointerException();
  }

  return [v5 compareWithId:self withId:id];
}

+ (id)getUTF8SortedAsUnicodeComparator
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBytesRef__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000A23D0();
  }

  return qword_1005542D8;
}

+ (id)getUTF8SortedAsUTF16Comparator
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBytesRef__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000A23D0();
  }

  return qword_1005542E0;
}

- (BOOL)isValid
{
  bytes = self->bytes_;
  if (!bytes)
  {
    v13 = @"bytes is null";
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

  size = bytes->super.size_;
  if (length > size)
  {
    v14 = @"length is out of bounds: ";
    v23 = bytes->super.size_;
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
  v3.super_class = OrgApacheLuceneUtilBytesRef;
  [(OrgApacheLuceneUtilBytesRef *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(OrgApacheLuceneUtilBytesRef *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilBytesRef_EMPTY_BYTES_, [IOSByteArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&qword_1005542D8, [OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator alloc]);
    JreStrongAssignAndConsume(&qword_1005542E0, [OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator alloc]);
    atomic_store(1u, OrgApacheLuceneUtilBytesRef__initialized);
  }
}

@end