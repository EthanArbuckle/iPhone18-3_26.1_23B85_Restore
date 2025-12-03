@interface OrgApacheLuceneIndexMultiBits
- (BOOL)getWithInt:(int)int;
- (NSString)description;
- (OrgApacheLuceneIndexMultiBits)initWithOrgApacheLuceneUtilBitsArray:(id)array withIntArray:(id)intArray withBoolean:(BOOL)boolean;
- (id)getMatchingSubWithOrgApacheLuceneIndexReaderSlice:(id)slice;
- (int)length;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiBits

- (OrgApacheLuceneIndexMultiBits)initWithOrgApacheLuceneUtilBitsArray:(id)array withIntArray:(id)intArray withBoolean:(BOOL)boolean
{
  JreStrongAssign(&self->subs_, array);
  JreStrongAssign(&self->starts_, intArray);
  self->defaultValue_ = boolean;
  return self;
}

- (BOOL)getWithInt:(int)int
{
  v5 = OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(int, self->starts_);
  subs = self->subs_;
  if (!subs)
  {
    goto LABEL_12;
  }

  v7 = v5;
  size = subs->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  v9 = (&subs->elementType_)[v7];
  if (!v9)
  {
    return self->defaultValue_;
  }

  starts = self->starts_;
  if (!starts)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v11 = starts->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v7);
  }

  v12 = (int - *(&starts->super.size_ + v7 + 1));

  return [(IOSClass *)v9 getWithInt:v12];
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_init();
  subs = self->subs_;
  if (!subs)
  {
    goto LABEL_30;
  }

  v12 = v3;
  [(JavaLangStringBuilder *)v3 appendWithNSString:JreStrcat("I$", v4, v5, v6, v7, v8, v9, v10, subs->super.size_)];
  v20 = self->subs_;
  size = v20->super.size_;
  if (size >= 1)
  {
    for (i = 0; i < size; ++i)
    {
      if (i)
      {
        [(JavaLangStringBuilder *)v12 appendWithNSString:@"; "];
        v20 = self->subs_;
      }

      v23 = v20->super.size_;
      if (i >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, i);
      }

      v24 = (&v20->elementType_)[i];
      starts = self->starts_;
      if (v24)
      {
        if (!starts)
        {
          goto LABEL_30;
        }

        v26 = starts->super.size_;
        if (i >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, i);
        }

        v27 = *(&starts->super.size_ + i + 1);
        v28 = self->subs_;
        v29 = v28->super.size_;
        if (i >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, i);
        }

        v30 = (&v28->elementType_)[i];
        if (!v30)
        {
          goto LABEL_30;
        }

        [(IOSClass *)v30 length];
        v38 = self->subs_;
        v39 = v38->super.size_;
        if (i >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, i);
        }

        v47 = (&v38->elementType_)[i];
        v40 = JreStrcat("$I$I$@", v31, v32, v33, v34, v35, v36, v37, @"s=");
      }

      else
      {
        if (!starts)
        {
          goto LABEL_30;
        }

        v41 = starts->super.size_;
        if (i >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, i);
        }

        v45 = *(&starts->super.size_ + i + 1);
        v40 = JreStrcat("$I$", v13, v14, v15, v16, v17, v18, v19, @"s=");
      }

      [(JavaLangStringBuilder *)v12 appendWithNSString:v40];
      v20 = self->subs_;
      size = v20->super.size_;
    }
  }

  v42 = self->starts_;
  if (!v42)
  {
LABEL_30:
    JreThrowNullPointerException();
  }

  v43 = v42->super.size_;
  if ((size & 0x80000000) != 0 || size >= v43)
  {
    IOSArray_throwOutOfBoundsWithMsg(v43, size);
  }

  v46 = *(&v42->super.size_ + size + 1);
  [(JavaLangStringBuilder *)v12 appendWithNSString:JreStrcat("$I", v13, v14, v15, v16, v17, v18, v19, @" end=")];

  return [(JavaLangStringBuilder *)v12 description];
}

- (id)getMatchingSubWithOrgApacheLuceneIndexReaderSlice:(id)slice
{
  if (!slice)
  {
    JreThrowNullPointerException();
  }

  v5 = OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(*(slice + 2), self->starts_);
  v6 = [OrgApacheLuceneIndexMultiBits_SubResult alloc];
  starts = self->starts_;
  size = starts->super.size_;
  if (v5 < 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  v9 = *(&starts->super.size_ + v5 + 1);
  if (v9 != *(slice + 2))
  {
    goto LABEL_11;
  }

  v10 = self->starts_;
  v11 = v10->super.size_;
  v12 = v5 + 1;
  if (v5 + 1 < 0 || v12 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v12);
  }

  if (*(&v10->super.size_ + v12 + 1) == *(slice + 3) + v9)
  {
    v6->matches_ = 1;
    subs = self->subs_;
    v14 = subs->super.size_;
    if (v5 < 0 || v5 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v5);
    }

    JreStrongAssign(&v6->result_, (&subs->elementType_)[v5]);
  }

  else
  {
LABEL_11:
    v6->matches_ = 0;
  }

  return v6;
}

- (int)length
{
  starts = self->starts_;
  if (!starts)
  {
    JreThrowNullPointerException();
  }

  size = starts->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (size - 1));
  }

  return *(&starts->super.size_ + size);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiBits;
  [(OrgApacheLuceneIndexMultiBits *)&v3 dealloc];
}

@end