@interface OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl
- (BOOL)isEqual:(id)a3;
- (OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl)init;
- (id)clone;
- (unint64_t)hash;
- (void)clear;
- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(id)a3;
- (void)dealloc;
- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)a3;
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
  v2 = [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v4 clone];
  objc_opt_class();
  if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!a3)
      {
        JreThrowNullPointerException();
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      if (*(&self->super.termLength_ + 1) == *(a3 + 7) && self->startOffset_ == *(a3 + 8) && HIDWORD(self->type_) == *(a3 + 11) && self->positionIncrement_ == *(a3 + 12))
      {
        v5 = *&self->endOffset_;
        v6 = *(a3 + 36);
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
          LOBYTE(v7) = [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v9 isEqual:a3];
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

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl;
    [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v7 copyToWithOrgApacheLuceneUtilAttributeImpl:a3];
    v6 = OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_();
    if (a3)
    {
      if ([v6 isInstance:a3])
      {
        [a3 setOffsetWithInt:*(&self->super.termLength_ + 1) withInt:self->startOffset_];
        if ([OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_() isInstance:a3])
        {
          [a3 setPositionIncrementWithInt:HIDWORD(self->type_)];
          if ([OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_class_() isInstance:a3])
          {
            [a3 setPositionLengthWithInt:self->positionIncrement_];
            if ([OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_() isInstance:a3])
            {
              [a3 setTypeWithNSString:*&self->endOffset_];
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
  if (!a3)
  {
    goto LABEL_14;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  [a3 copyBufferWithCharArray:-[OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl buffer](self withInt:"buffer") withInt:{0, -[OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl length](self, "length")}];
  *(a3 + 11) = HIDWORD(self->type_);
  *(a3 + 12) = self->positionIncrement_;
  *(a3 + 7) = *(&self->super.termLength_ + 1);
  *(a3 + 8) = self->startOffset_;
  v5 = *&self->endOffset_;

  JreStrongAssign((a3 + 36), v5);
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)a3
{
  v9.receiver = self;
  v9.super_class = OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl;
  [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v9 reflectWithWithOrgApacheLuceneUtilAttributeReflector:?];
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_();
  [a3 reflectWithIOSClass:v5 withNSString:@"startOffset" withId:JavaLangInteger_valueOfWithInt_(*(&self->super.termLength_ + 1))];
  v6 = OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_();
  [a3 reflectWithIOSClass:v6 withNSString:@"endOffset" withId:JavaLangInteger_valueOfWithInt_(self->startOffset_)];
  v7 = OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_();
  [a3 reflectWithIOSClass:v7 withNSString:@"positionIncrement" withId:JavaLangInteger_valueOfWithInt_(HIDWORD(self->type_))];
  v8 = OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_class_();
  [a3 reflectWithIOSClass:v8 withNSString:@"positionLength" withId:JavaLangInteger_valueOfWithInt_(self->positionIncrement_)];
  [a3 reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_() withNSString:@"type" withId:*&self->endOffset_];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl;
  [(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)&v3 dealloc];
}

@end