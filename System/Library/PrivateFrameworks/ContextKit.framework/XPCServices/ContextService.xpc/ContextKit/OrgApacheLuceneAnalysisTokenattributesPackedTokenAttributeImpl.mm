@interface OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl
- (BOOL)isEqual:(id)equal;
- (OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl)init;
- (id)clone;
- (unint64_t)hash;
- (void)clear;
- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(id)impl;
- (void)dealloc;
- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)reflector;
@end

@implementation OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl

- (OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl)init
{
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init(self);
  JreStrongAssign(&self->endOffset_, OrgApacheLuceneAnalysisTokenattributesTypeAttribute_DEFAULT_TYPE_);
  HIDWORD(self->type_) = 1;
  self->positionIncrement_ = 1;
  return self;
}

- (void)clear
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl;
  [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v3 clear];
  self->positionIncrement_ = 1;
  HIDWORD(self->type_) = 1;
  self->startOffset_ = 0;
  *(&self->super.termLength_ + 1) = 0;
  JreStrongAssign(&self->endOffset_, OrgApacheLuceneAnalysisTokenattributesTypeAttribute_DEFAULT_TYPE_);
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl;
  clone = [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v4 clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return clone;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!equal)
      {
        JreThrowNullPointerException();
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      if (*(&self->super.termLength_ + 1) == *(equal + 7) && self->startOffset_ == *(equal + 8) && HIDWORD(self->type_) == *(equal + 11) && self->positionIncrement_ == *(equal + 12))
      {
        v5 = *&self->endOffset_;
        v6 = *(equal + 36);
        if (v5)
        {
          v7 = [v5 isEqual:v6];
          if (!v7)
          {
            return v7;
          }

          goto LABEL_16;
        }

        if (!v6)
        {
LABEL_16:
          v9.receiver = self;
          v9.super_class = OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl;
          LOBYTE(v7) = [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v9 isEqual:equal];
          return v7;
        }
      }
    }

    LOBYTE(v7) = 0;
    return v7;
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl;
  v3 = [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v10 hash];
  v4 = *(&self->super.termLength_ + 1) - v3 + 32 * v3;
  v5 = self->startOffset_ - v4 + 32 * v4;
  v6 = HIDWORD(self->type_) - v5 + 32 * v5;
  v7 = self->positionIncrement_ - v6 + 32 * v6;
  v8 = *&self->endOffset_;
  if (v8)
  {
    return ([v8 hash] - v7 + 32 * v7);
  }

  return v7;
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(id)impl
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl;
    [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v7 copyToWithOrgApacheLuceneUtilAttributeImpl:impl];
    v6 = OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_();
    if (impl)
    {
      if ([v6 isInstance:impl])
      {
        [impl setOffsetWithInt:*(&self->super.termLength_ + 1) withInt:self->startOffset_];
        if ([OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_() isInstance:impl])
        {
          [impl setPositionIncrementWithInt:HIDWORD(self->type_)];
          if ([OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_class_() isInstance:impl])
          {
            [impl setPositionLengthWithInt:self->positionIncrement_];
            if ([OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_() isInstance:impl])
            {
              [impl setTypeWithNSString:*&self->endOffset_];
              return;
            }
          }
        }
      }

LABEL_13:
      JreThrowClassCastException();
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (!impl)
  {
    goto LABEL_14;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  [impl copyBufferWithCharArray:-[OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl buffer](self withInt:"buffer") withInt:{0, -[OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl length](self, "length")}];
  *(impl + 11) = HIDWORD(self->type_);
  *(impl + 12) = self->positionIncrement_;
  *(impl + 7) = *(&self->super.termLength_ + 1);
  *(impl + 8) = self->startOffset_;
  v5 = *&self->endOffset_;

  JreStrongAssign((impl + 36), v5);
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)reflector
{
  v9.receiver = self;
  v9.super_class = OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl;
  [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v9 reflectWithWithOrgApacheLuceneUtilAttributeReflector:?];
  if (!reflector)
  {
    JreThrowNullPointerException();
  }

  v5 = OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_();
  [reflector reflectWithIOSClass:v5 withNSString:@"startOffset" withId:JavaLangInteger_valueOfWithInt_(*(&self->super.termLength_ + 1))];
  v6 = OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_();
  [reflector reflectWithIOSClass:v6 withNSString:@"endOffset" withId:JavaLangInteger_valueOfWithInt_(self->startOffset_)];
  v7 = OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_();
  [reflector reflectWithIOSClass:v7 withNSString:@"positionIncrement" withId:JavaLangInteger_valueOfWithInt_(HIDWORD(self->type_))];
  v8 = OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_class_();
  [reflector reflectWithIOSClass:v8 withNSString:@"positionLength" withId:JavaLangInteger_valueOfWithInt_(self->positionIncrement_)];
  [reflector reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_() withNSString:@"type" withId:*&self->endOffset_];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl;
  [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v3 dealloc];
}

@end