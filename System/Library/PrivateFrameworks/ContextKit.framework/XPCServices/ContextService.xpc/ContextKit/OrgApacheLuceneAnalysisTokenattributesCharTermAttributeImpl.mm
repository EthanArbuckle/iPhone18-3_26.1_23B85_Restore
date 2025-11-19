@interface OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl
- (BOOL)isEqual:(id)a3;
- (id)appendWithJavaLangCharSequence:(id)a3;
- (id)appendWithJavaLangStringBuilder:(id)a3;
- (id)appendWithNSString:(id)a3;
- (id)appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:(id)a3;
- (id)clone;
- (id)getBytesRef;
- (uint64_t)appendNull;
- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(id)a3;
- (void)dealloc;
- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)a3;
@end

@implementation OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl

- (id)getBytesRef
{
  builder = self->builder_;
  if (!builder)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilBytesRefBuilder *)builder copyCharsWithCharArray:self->termBuffer_ withInt:0 withInt:self->termLength_];
  v4 = self->builder_;

  return [(OrgApacheLuceneUtilBytesRefBuilder *)v4 get];
}

- (id)appendWithJavaLangCharSequence:(id)a3
{
  if (a3)
  {
    sub_1000BBD28(self, a3, 0, [a3 length]);
  }

  else
  {
    [OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl appendNull]_0(self, a2, 0, v3, v4, v5, v6, v7);
  }

  return self;
}

- (uint64_t)appendNull
{
  sub_1000BB87C(a1, *(a1 + 24) + 4, a3, a4, a5, a6, a7, a8);
  v9 = *(a1 + 16);
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  v10 = *(a1 + 24);
  *(a1 + 24) = v10 + 1;
  v11 = *(v9 + 8);
  if (v10 < 0 || v10 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v10);
  }

  *(v9 + 12 + 2 * v10) = 110;
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 24) = v13 + 1;
  v14 = *(v12 + 8);
  if (v13 < 0 || v13 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v13);
  }

  *(v12 + 12 + 2 * v13) = 117;
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  *(a1 + 24) = v16 + 1;
  v17 = *(v15 + 8);
  if (v16 < 0 || v16 >= v17)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17, v16);
  }

  *(v15 + 12 + 2 * v16) = 108;
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  *(a1 + 24) = v19 + 1;
  v20 = *(v18 + 8);
  if (v19 < 0 || v19 >= v20)
  {
    IOSArray_throwOutOfBoundsWithMsg(v20, v19);
  }

  *(v18 + 12 + 2 * v19) = 108;
  return a1;
}

- (id)appendWithNSString:(id)a3
{
  if (a3)
  {
    v10 = [a3 length];
    [a3 getChars:0 sourceEnd:v10 destination:sub_1000BB87C(self destinationBegin:{self->termLength_ + v10, v11, v12, v13, v14, v15, v16), self->termLength_}];
    self->termLength_ += v10;
  }

  else
  {
    [OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl appendNull]_0(self, a2, 0, v3, v4, v5, v6, v7);
  }

  return self;
}

- (id)appendWithJavaLangStringBuilder:(id)a3
{
  if (a3)
  {
    v10 = [a3 length];
    [a3 getCharsWithInt:0 withInt:v10 withCharArray:sub_1000BB87C(self withInt:{self->termLength_ + v10, v11, v12, v13, v14, v15, v16), self->termLength_}];
    self->termLength_ += v10;
  }

  else
  {
    [OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl appendNull]_0(self, a2, 0, v3, v4, v5, v6, v7);
  }

  return self;
}

- (id)appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:(id)a3
{
  if (a3)
  {
    v10 = [a3 length];
    v11 = [a3 buffer];
    v18 = sub_1000BB87C(self, self->termLength_ + v10, v12, v13, v14, v15, v16, v17);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v11, 0, v18, self->termLength_, v10);
    self->termLength_ += v10;
  }

  else
  {
    [OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl appendNull]_0(self, a2, 0, v3, v4, v5, v6, v7);
  }

  return self;
}

- (id)clone
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl;
  v3 = [(OrgApacheLuceneUtilAttributeImpl *)&v6 clone];
  objc_opt_class();
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssignAndConsume(v3 + 2, [IOSCharArray newArrayWithLength:self->termLength_]);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->termBuffer_, 0, v3[2], 0, self->termLength_);
  v4 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  JreStrongAssignAndConsume(v3 + 1, v4);
  [v3[1] copyBytesWithOrgApacheLuceneUtilBytesRef:{-[OrgApacheLuceneUtilBytesRefBuilder get](self->builder_, "get")}];
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    objc_opt_class();
    if (!a3)
    {
      goto LABEL_19;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    termLength = self->termLength_;
    if (termLength != *(a3 + 6))
    {
      return 0;
    }

    if (termLength >= 1)
    {
      v6 = 0;
      while (1)
      {
        termBuffer = self->termBuffer_;
        if (!termBuffer)
        {
          break;
        }

        size = termBuffer->super.size_;
        if (v6 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v6);
        }

        v9 = *(&termBuffer->super.size_ + v6 + 2);
        v10 = *(a3 + 2);
        v11 = *(v10 + 8);
        if (v6 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v6);
        }

        v12 = *(v10 + 12 + 2 * v6);
        result = v9 == v12;
        if (v9 == v12 && ++v6 < self->termLength_)
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

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_() withNSString:@"term" withId:{-[OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl description](self, "description")}];
  v5 = OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_();
  v6 = [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)self getBytesRef];

  [a3 reflectWithIOSClass:v5 withNSString:@"bytes" withId:v6];
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(id)a3
{
  v5 = OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:a3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  termBuffer = self->termBuffer_;
  termLength = self->termLength_;

  [a3 copyBufferWithCharArray:termBuffer withInt:0 withInt:termLength];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl;
  [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v3 dealloc];
}

@end