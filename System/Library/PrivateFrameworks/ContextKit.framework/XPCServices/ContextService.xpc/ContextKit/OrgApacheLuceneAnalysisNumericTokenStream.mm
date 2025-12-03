@interface OrgApacheLuceneAnalysisNumericTokenStream
- (BOOL)incrementToken;
- (id)description;
- (id)setDoubleValueWithDouble:(double)double;
- (id)setFloatValueWithFloat:(float)float;
- (id)setIntValueWithInt:(int)int;
- (id)setLongValueWithLong:(int64_t)long;
- (void)dealloc;
- (void)reset;
@end

@implementation OrgApacheLuceneAnalysisNumericTokenStream

- (id)setLongValueWithLong:(int64_t)long
{
  numericAtt = self->numericAtt_;
  if (!numericAtt)
  {
    JreThrowNullPointerException();
  }

  self->valSize_ = 64;
  [(OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttribute *)numericAtt init__WithLong:long withInt:64 withInt:self->precisionStep_ withInt:-self->precisionStep_];
  return self;
}

- (id)setIntValueWithInt:(int)int
{
  numericAtt = self->numericAtt_;
  if (!numericAtt)
  {
    JreThrowNullPointerException();
  }

  self->valSize_ = 32;
  [(OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttribute *)numericAtt init__WithLong:int withInt:32 withInt:self->precisionStep_ withInt:-self->precisionStep_];
  return self;
}

- (id)setDoubleValueWithDouble:(double)double
{
  numericAtt = self->numericAtt_;
  if (!numericAtt)
  {
    JreThrowNullPointerException();
  }

  v5 = OrgApacheLuceneUtilNumericUtils_doubleToSortableLongWithDouble_(double);
  self->valSize_ = 64;
  [(OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttribute *)numericAtt init__WithLong:v5 withInt:64 withInt:self->precisionStep_ withInt:-self->precisionStep_];
  return self;
}

- (id)setFloatValueWithFloat:(float)float
{
  numericAtt = self->numericAtt_;
  if (!numericAtt)
  {
    JreThrowNullPointerException();
  }

  v5 = OrgApacheLuceneUtilNumericUtils_floatToSortableIntWithFloat_(float);
  self->valSize_ = 32;
  [(OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttribute *)numericAtt init__WithLong:v5 withInt:32 withInt:self->precisionStep_ withInt:-self->precisionStep_];
  return self;
}

- (void)reset
{
  if (!self->valSize_)
  {
    v4 = new_JavaLangIllegalStateException_initWithNSString_(@"call set???Value() before usage");
    objc_exception_throw(v4);
  }

  if (!self->numericAtt_)
  {
    JreThrowNullPointerException();
  }

  v2 = -self->precisionStep_;
  numericAtt = self->numericAtt_;

  [(OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttribute *)numericAtt setShiftWithInt:v2];
}

- (BOOL)incrementToken
{
  if (!self->valSize_)
  {
    v9 = new_JavaLangIllegalStateException_initWithNSString_(@"call set???Value() before usage");
    objc_exception_throw(v9);
  }

  [(OrgApacheLuceneUtilAttributeSource *)self clearAttributes];
  numericAtt = self->numericAtt_;
  if (!numericAtt)
  {
    goto LABEL_8;
  }

  incShift = [(OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttribute *)numericAtt incShift];
  typeAtt = self->typeAtt_;
  if (!typeAtt)
  {
    goto LABEL_8;
  }

  v6 = &OrgApacheLuceneAnalysisNumericTokenStream_TOKEN_TYPE_FULL_PREC_;
  if (incShift)
  {
    v6 = &OrgApacheLuceneAnalysisNumericTokenStream_TOKEN_TYPE_LOWER_PREC_;
  }

  [(OrgApacheLuceneAnalysisTokenattributesTypeAttribute *)typeAtt setTypeWithNSString:*v6];
  posIncrAtt = self->posIncrAtt_;
  if (!posIncrAtt)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute *)posIncrAtt setPositionIncrementWithInt:incShift == 0];
  return incShift < self->valSize_;
}

- (id)description
{
  v3 = [-[OrgApacheLuceneAnalysisNumericTokenStream getClass](self "getClass")];
  numericAtt = self->numericAtt_;
  if (!numericAtt)
  {
    JreThrowNullPointerException();
  }

  precisionStep = self->precisionStep_;
  [(OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttribute *)numericAtt getValueSize];
  [(OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttribute *)self->numericAtt_ getShift];
  return JreStrcat("$$I$I$IC", v6, v7, v8, v9, v10, v11, v12, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisNumericTokenStream;
  [(OrgApacheLuceneUtilAttributeSource *)&v3 dealloc];
}

@end