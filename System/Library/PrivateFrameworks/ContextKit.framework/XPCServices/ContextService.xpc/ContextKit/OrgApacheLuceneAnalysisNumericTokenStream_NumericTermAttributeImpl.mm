@interface OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl
- (BOOL)isEqual:(id)a3;
- (id)clone;
- (id)getBytesRef;
- (int)incShift;
- (unint64_t)hash;
- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(id)a3;
- (void)dealloc;
- (void)init__WithLong:(int64_t)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6;
- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)a3;
@end

@implementation OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl

- (id)getBytesRef
{
  valueSize = self->valueSize_;
  value = self->value_;
  if (valueSize == 64)
  {
    OrgApacheLuceneUtilNumericUtils_longToPrefixCodedWithLong_withInt_withOrgApacheLuceneUtilBytesRefBuilder_(value, self->shift_, self->bytes_);
  }

  else
  {
    OrgApacheLuceneUtilNumericUtils_intToPrefixCodedWithInt_withInt_withOrgApacheLuceneUtilBytesRefBuilder_(value, self->shift_, self->bytes_);
  }

  bytes = self->bytes_;
  if (!bytes)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilBytesRefBuilder *)bytes get];
}

- (int)incShift
{
  v2 = self->shift_ + self->precisionStep_;
  self->shift_ = v2;
  return v2;
}

- (void)init__WithLong:(int64_t)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6
{
  self->value_ = a3;
  self->valueSize_ = a4;
  self->precisionStep_ = a5;
  self->shift_ = a6;
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_() withNSString:@"bytes" withId:{-[OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl getBytesRef](self, "getBytesRef")}];
  if (qword_100553FE8 != -1)
  {
    sub_100049140();
  }

  [a3 reflectWithIOSClass:qword_100553FE0 withNSString:@"shift" withId:JavaLangInteger_valueOfWithInt_(self->shift_)];
  if (qword_100553FE8 != -1)
  {
    sub_100049140();
  }

  [a3 reflectWithIOSClass:qword_100553FE0 withNSString:@"rawValue" withId:{JavaLangLong_valueOfWithLong_(-[OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl getRawValue](self, "getRawValue"))}];
  if (qword_100553FE8 != -1)
  {
    sub_100049140();
  }

  v5 = qword_100553FE0;
  v6 = JavaLangInteger_valueOfWithInt_(self->valueSize_);

  [a3 reflectWithIOSClass:v5 withNSString:@"valueSize" withId:v6];
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(id)a3
{
  if (qword_100553FE8 == -1)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  sub_100049140();
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (([qword_100553FE0 isInstance:a3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  value = self->value_;
  valueSize = self->valueSize_;
  precisionStep = self->precisionStep_;
  shift = self->shift_;

  [a3 init__WithLong:value withInt:valueSize withInt:precisionStep withInt:shift];
}

- (id)clone
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl;
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

  v4 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  JreStrongAssignAndConsume(v3 + 4, v4);
  [v3[4] copyBytesWithOrgApacheLuceneUtilBytesRef:{-[OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl getBytesRef](self, "getBytesRef")}];
  return v3;
}

- (unint64_t)hash
{
  v5[0] = JavaLangInteger_valueOfWithInt_(self->precisionStep_);
  v5[1] = JavaLangInteger_valueOfWithInt_(self->shift_);
  v5[2] = JavaLangLong_valueOfWithLong_(self->value_);
  v5[3] = JavaLangInteger_valueOfWithInt_(self->valueSize_);
  v3 = [IOSObjectArray arrayWithObjects:v5 count:4 type:NSObject_class_()];
  return OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_(v3);
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if (a3)
  {
    v5 = [(OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl *)self getClass];
    if (v5 == [a3 getClass])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      if (self->precisionStep_ == *(a3 + 6) && self->shift_ == *(a3 + 5) && self->value_ == *(a3 + 1))
      {
        return self->valueSize_ == *(a3 + 4);
      }
    }
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl;
  [(OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl *)&v3 dealloc];
}

@end