@interface OrgApacheLuceneDocumentFieldType
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)checkIfFrozen;
- (void)dealloc;
- (void)setDocValuesTypeWithOrgApacheLuceneIndexDocValuesTypeEnum:(id)a3;
- (void)setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:(id)a3;
- (void)setNumericPrecisionStepWithInt:(int)a3;
- (void)setNumericTypeWithOrgApacheLuceneDocumentFieldType_NumericTypeEnum:(id)a3;
@end

@implementation OrgApacheLuceneDocumentFieldType

- (void)checkIfFrozen
{
  if (self->frozen_)
  {
    v2 = new_JavaLangIllegalStateException_initWithNSString_(@"this FieldType is already frozen and cannot be changed");
    objc_exception_throw(v2);
  }
}

- (void)setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:(id)a3
{
  [(OrgApacheLuceneDocumentFieldType *)self checkIfFrozen];
  if (!a3)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"IndexOptions cannot be null");
    objc_exception_throw(v5);
  }

  JreStrongAssign(&self->indexOptions_, a3);
}

- (void)setNumericTypeWithOrgApacheLuceneDocumentFieldType_NumericTypeEnum:(id)a3
{
  [(OrgApacheLuceneDocumentFieldType *)self checkIfFrozen];

  JreStrongAssign(&self->numericType_, a3);
}

- (void)setNumericPrecisionStepWithInt:(int)a3
{
  [(OrgApacheLuceneDocumentFieldType *)self checkIfFrozen];
  if (a3 <= 0)
  {
    v12 = JreStrcat("$IC", v5, v6, v7, v8, v9, v10, v11, @"precisionStep must be >= 1 (got ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  self->numericPrecisionStep_ = a3;
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_init();
  if ([(OrgApacheLuceneDocumentFieldType *)self stored])
  {
    [(JavaLangStringBuilder *)v3 appendWithNSString:@"stored"];
  }

  indexOptions = self->indexOptions_;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (indexOptions != OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
  {
    if ([(JavaLangStringBuilder *)v3 length]>= 1)
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
    }

    [(JavaLangStringBuilder *)v3 appendWithNSString:@"indexed"];
    if ([(OrgApacheLuceneDocumentFieldType *)self tokenized])
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", tokenized"];
    }

    if ([(OrgApacheLuceneDocumentFieldType *)self storeTermVectors])
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", termVector"];
    }

    if ([(OrgApacheLuceneDocumentFieldType *)self storeTermVectorOffsets])
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", termVectorOffsets"];
    }

    if ([(OrgApacheLuceneDocumentFieldType *)self storeTermVectorPositions])
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", termVectorPosition"];
    }

    if ([(OrgApacheLuceneDocumentFieldType *)self storeTermVectorPayloads])
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", termVectorPayloads"];
    }

    if ([(OrgApacheLuceneDocumentFieldType *)self omitNorms])
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", omitNorms"];
    }

    v5 = self->indexOptions_;
    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (v5 != qword_100557388)
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", indexOptions="];
      [(JavaLangStringBuilder *)v3 appendWithId:self->indexOptions_];
    }

    if (self->numericType_)
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", numericType="];
      [(JavaLangStringBuilder *)v3 appendWithId:self->numericType_];
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", numericPrecisionStep="];
      [(JavaLangStringBuilder *)v3 appendWithInt:self->numericPrecisionStep_];
    }
  }

  docValuesType = self->docValuesType_;
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  if (docValuesType != OrgApacheLuceneIndexDocValuesTypeEnum_values_[0])
  {
    if ([(JavaLangStringBuilder *)v3 length]>= 1)
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
    }

    [(JavaLangStringBuilder *)v3 appendWithNSString:@"docValuesType="];
    [(JavaLangStringBuilder *)v3 appendWithId:self->docValuesType_];
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (void)setDocValuesTypeWithOrgApacheLuceneIndexDocValuesTypeEnum:(id)a3
{
  [(OrgApacheLuceneDocumentFieldType *)self checkIfFrozen];
  if (!a3)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"DocValuesType cannot be null");
    objc_exception_throw(v5);
  }

  JreStrongAssign(&self->docValuesType_, a3);
}

- (unint64_t)hash
{
  docValuesType = self->docValuesType_;
  if (docValuesType)
  {
    v4 = 31 * [(JavaLangEnum *)docValuesType hash]+ 961;
  }

  else
  {
    v4 = 961;
  }

  indexOptions = self->indexOptions_;
  if (!indexOptions)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaLangEnum *)indexOptions hash];
  numericPrecisionStep = self->numericPrecisionStep_;
  numericType = self->numericType_;
  if (numericType)
  {
    LODWORD(numericType) = [(JavaLangEnum *)numericType hash];
  }

  v9 = numericPrecisionStep - (v4 + v6) + 32 * (v4 + v6);
  v10 = numericType - v9 + 32 * v9;
  if (self->omitNorms_)
  {
    v11 = 1231;
  }

  else
  {
    v11 = 1237;
  }

  v12 = v11 - v10 + 32 * v10;
  if (self->storeTermVectorOffsets_)
  {
    v13 = 1231;
  }

  else
  {
    v13 = 1237;
  }

  v14 = v13 - v12 + 32 * v12;
  if (self->storeTermVectorPayloads_)
  {
    v15 = 1231;
  }

  else
  {
    v15 = 1237;
  }

  v16 = v15 - v14 + 32 * v14;
  if (self->storeTermVectorPositions_)
  {
    v17 = 1231;
  }

  else
  {
    v17 = 1237;
  }

  v18 = v17 - v16 + 32 * v16;
  if (self->storeTermVectors_)
  {
    v19 = 1231;
  }

  else
  {
    v19 = 1237;
  }

  v20 = v19 - v18 + 32 * v18;
  if (self->stored_)
  {
    v21 = 1231;
  }

  else
  {
    v21 = 1237;
  }

  v22 = v21 - v20 + 32 * v20;
  if (self->tokenized_)
  {
    v23 = 1231;
  }

  else
  {
    v23 = 1237;
  }

  return v23 - v22 + 32 * v22;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if (a3)
  {
    v5 = [(OrgApacheLuceneDocumentFieldType *)self getClass];
    if (v5 == [a3 getClass])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      if (self->docValuesType_ == *(a3 + 5) && self->indexOptions_ == *(a3 + 2) && self->numericPrecisionStep_ == *(a3 + 9) && self->numericType_ == *(a3 + 3) && self->omitNorms_ == *(a3 + 14) && self->storeTermVectorOffsets_ == *(a3 + 11) && self->storeTermVectorPayloads_ == *(a3 + 13) && self->storeTermVectorPositions_ == *(a3 + 12) && self->storeTermVectors_ == *(a3 + 10) && self->stored_ == *(a3 + 8))
      {
        return self->tokenized_ == *(a3 + 9);
      }
    }
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneDocumentFieldType;
  [(OrgApacheLuceneDocumentFieldType *)&v3 dealloc];
}

@end