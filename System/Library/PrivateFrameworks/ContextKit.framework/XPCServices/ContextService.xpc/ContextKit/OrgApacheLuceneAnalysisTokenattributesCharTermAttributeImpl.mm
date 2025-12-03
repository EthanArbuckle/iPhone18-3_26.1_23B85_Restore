@interface OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl
- (BOOL)isEqual:(id)equal;
- (id)appendWithJavaLangCharSequence:(id)sequence;
- (id)appendWithJavaLangStringBuilder:(id)builder;
- (id)appendWithNSString:(id)string;
- (id)appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:(id)attribute;
- (id)clone;
- (id)getBytesRef;
- (uint64_t)appendNull;
- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(id)impl;
- (void)dealloc;
- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)reflector;
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

- (id)appendWithJavaLangCharSequence:(id)sequence
{
  if (sequence)
  {
    sub_1000BBD28(self, sequence, 0, [sequence length]);
  }

  else
  {
    [OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl appendNull]_0(self, a2, 0, v3, v4, v5, v6, v7);
  }

  return self;
}

- (uint64_t)appendNull
{
  sub_1000BB87C(self, *(self + 24) + 4, a3, a4, a5, a6, a7, a8);
  v9 = *(self + 16);
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  v10 = *(self + 24);
  *(self + 24) = v10 + 1;
  v11 = *(v9 + 8);
  if (v10 < 0 || v10 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v10);
  }

  *(v9 + 12 + 2 * v10) = 110;
  v12 = *(self + 16);
  v13 = *(self + 24);
  *(self + 24) = v13 + 1;
  v14 = *(v12 + 8);
  if (v13 < 0 || v13 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v13);
  }

  *(v12 + 12 + 2 * v13) = 117;
  v15 = *(self + 16);
  v16 = *(self + 24);
  *(self + 24) = v16 + 1;
  v17 = *(v15 + 8);
  if (v16 < 0 || v16 >= v17)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17, v16);
  }

  *(v15 + 12 + 2 * v16) = 108;
  v18 = *(self + 16);
  v19 = *(self + 24);
  *(self + 24) = v19 + 1;
  v20 = *(v18 + 8);
  if (v19 < 0 || v19 >= v20)
  {
    IOSArray_throwOutOfBoundsWithMsg(v20, v19);
  }

  *(v18 + 12 + 2 * v19) = 108;
  return self;
}

- (id)appendWithNSString:(id)string
{
  if (string)
  {
    v10 = [string length];
    [string getChars:0 sourceEnd:v10 destination:sub_1000BB87C(self destinationBegin:{self->termLength_ + v10, v11, v12, v13, v14, v15, v16), self->termLength_}];
    self->termLength_ += v10;
  }

  else
  {
    [OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl appendNull]_0(self, a2, 0, v3, v4, v5, v6, v7);
  }

  return self;
}

- (id)appendWithJavaLangStringBuilder:(id)builder
{
  if (builder)
  {
    v10 = [builder length];
    [builder getCharsWithInt:0 withInt:v10 withCharArray:sub_1000BB87C(self withInt:{self->termLength_ + v10, v11, v12, v13, v14, v15, v16), self->termLength_}];
    self->termLength_ += v10;
  }

  else
  {
    [OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl appendNull]_0(self, a2, 0, v3, v4, v5, v6, v7);
  }

  return self;
}

- (id)appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:(id)attribute
{
  if (attribute)
  {
    v10 = [attribute length];
    buffer = [attribute buffer];
    v18 = sub_1000BB87C(self, self->termLength_ + v10, v12, v13, v14, v15, v16, v17);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer, 0, v18, self->termLength_, v10);
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
  clone = [(OrgApacheLuceneUtilAttributeImpl *)&v6 clone];
  objc_opt_class();
  if (!clone)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssignAndConsume(clone + 2, [IOSCharArray newArrayWithLength:self->termLength_]);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->termBuffer_, 0, clone[2], 0, self->termLength_);
  v4 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  JreStrongAssignAndConsume(clone + 1, v4);
  [clone[1] copyBytesWithOrgApacheLuceneUtilBytesRef:{-[OrgApacheLuceneUtilBytesRefBuilder get](self->builder_, "get")}];
  return clone;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    objc_opt_class();
    if (!equal)
    {
      goto LABEL_19;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    termLength = self->termLength_;
    if (termLength != *(equal + 6))
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
        v10 = *(equal + 2);
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

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)reflector
{
  if (!reflector)
  {
    JreThrowNullPointerException();
  }

  [reflector reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_() withNSString:@"term" withId:{-[OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl description](self, "description")}];
  v5 = OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_();
  getBytesRef = [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)self getBytesRef];

  [reflector reflectWithIOSClass:v5 withNSString:@"bytes" withId:getBytesRef];
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(id)impl
{
  v5 = OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_();
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:impl] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  termBuffer = self->termBuffer_;
  termLength = self->termLength_;

  [impl copyBufferWithCharArray:termBuffer withInt:0 withInt:termLength];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl;
  [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v3 dealloc];
}

@end