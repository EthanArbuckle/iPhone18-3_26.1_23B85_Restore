@interface OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl
- (BOOL)isEqual:(id)equal;
- (id)clone;
- (id)getBytesRef;
- (int)incShift;
- (unint64_t)hash;
- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(id)impl;
- (void)dealloc;
- (void)init__WithLong:(int64_t)long withInt:(int)int withInt:(int)withInt withInt:(int)a6;
- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)reflector;
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

- (void)init__WithLong:(int64_t)long withInt:(int)int withInt:(int)withInt withInt:(int)a6
{
  self->value_ = long;
  self->valueSize_ = int;
  self->precisionStep_ = withInt;
  self->shift_ = a6;
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)reflector
{
  if (!reflector)
  {
    JreThrowNullPointerException();
  }

  [reflector reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_() withNSString:@"bytes" withId:{-[OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl getBytesRef](self, "getBytesRef")}];
  if (qword_100553FE8 != -1)
  {
    sub_100049140();
  }

  [reflector reflectWithIOSClass:qword_100553FE0 withNSString:@"shift" withId:JavaLangInteger_valueOfWithInt_(self->shift_)];
  if (qword_100553FE8 != -1)
  {
    sub_100049140();
  }

  [reflector reflectWithIOSClass:qword_100553FE0 withNSString:@"rawValue" withId:{JavaLangLong_valueOfWithLong_(-[OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl getRawValue](self, "getRawValue"))}];
  if (qword_100553FE8 != -1)
  {
    sub_100049140();
  }

  v5 = qword_100553FE0;
  v6 = JavaLangInteger_valueOfWithInt_(self->valueSize_);

  [reflector reflectWithIOSClass:v5 withNSString:@"valueSize" withId:v6];
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(id)impl
{
  if (qword_100553FE8 == -1)
  {
    if (impl)
    {
      goto LABEL_3;
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  sub_100049140();
  if (!impl)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (([qword_100553FE0 isInstance:impl] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  value = self->value_;
  valueSize = self->valueSize_;
  precisionStep = self->precisionStep_;
  shift = self->shift_;

  [impl init__WithLong:value withInt:valueSize withInt:precisionStep withInt:shift];
}

- (id)clone
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl;
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

  v4 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  JreStrongAssignAndConsume(clone + 4, v4);
  [clone[4] copyBytesWithOrgApacheLuceneUtilBytesRef:{-[OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl getBytesRef](self, "getBytesRef")}];
  return clone;
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (equal)
  {
    getClass = [(OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl *)self getClass];
    if (getClass == [equal getClass])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      if (self->precisionStep_ == *(equal + 6) && self->shift_ == *(equal + 5) && self->value_ == *(equal + 1))
      {
        return self->valueSize_ == *(equal + 4);
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