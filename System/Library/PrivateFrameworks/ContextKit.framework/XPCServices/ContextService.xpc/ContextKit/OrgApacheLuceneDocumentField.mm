@interface OrgApacheLuceneDocumentField
- (NSString)description;
- (OrgApacheLuceneDocumentField)initWithNSString:(id)string withByteArray:(id)array withInt:(int)int withInt:(int)withInt withOrgApacheLuceneDocumentFieldType:(id)type;
- (OrgApacheLuceneDocumentField)initWithNSString:(id)string withNSString:(id)sString withOrgApacheLuceneDocumentField_StoreEnum:(id)enum withOrgApacheLuceneDocumentField_IndexEnum:(id)indexEnum withOrgApacheLuceneDocumentField_TermVectorEnum:(id)vectorEnum;
- (id)binaryValue;
- (id)numericValue;
- (id)readerValue;
- (id)stringValue;
- (id)tokenStreamWithOrgApacheLuceneAnalysisAnalyzer:(id)analyzer withOrgApacheLuceneAnalysisTokenStream:(id)tokenStream;
- (void)dealloc;
- (void)setBoostWithFloat:(float)float;
- (void)setByteValueWithByte:(char)byte;
- (void)setBytesValueWithByteArray:(id)array;
- (void)setBytesValueWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)setDoubleValueWithDouble:(double)double;
- (void)setFloatValueWithFloat:(float)float;
- (void)setIntValueWithInt:(int)int;
- (void)setLongValueWithLong:(int64_t)long;
- (void)setReaderValueWithJavaIoReader:(id)reader;
- (void)setShortValueWithShort:(signed __int16)short;
- (void)setStringValueWithNSString:(id)string;
- (void)setTokenStreamWithOrgApacheLuceneAnalysisTokenStream:(id)stream;
@end

@implementation OrgApacheLuceneDocumentField

- (OrgApacheLuceneDocumentField)initWithNSString:(id)string withByteArray:(id)array withInt:(int)int withInt:(int)withInt withOrgApacheLuceneDocumentFieldType:(id)type
{
  v10 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(array, int, withInt);
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentFieldType_(self, string, v10, type);
  return self;
}

- (id)stringValue
{
  fieldsData = self->fieldsData_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = self->fieldsData_;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  v5 = self->fieldsData_;
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  return [v5 description];
}

- (id)readerValue
{
  fieldsData = self->fieldsData_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = self->fieldsData_;
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v4;
}

- (void)setStringValueWithNSString:(id)string
{
  p_fieldsData = &self->fieldsData_;
  fieldsData = self->fieldsData_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!*p_fieldsData)
    {
      JreThrowNullPointerException();
    }

    [objc_msgSend(*p_fieldsData "getClass")];
    v13 = JreStrcat("$$$", v6, v7, v8, v9, v10, v11, v12, @"cannot change value type from ");
LABEL_9:
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  if (!string)
  {
    v13 = @"value cannot be null";
    goto LABEL_9;
  }

  JreStrongAssign(p_fieldsData, string);
}

- (void)setReaderValueWithJavaIoReader:(id)reader
{
  p_fieldsData = &self->fieldsData_;
  fieldsData = self->fieldsData_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*p_fieldsData)
    {
      [objc_msgSend(*p_fieldsData "getClass")];
      v13 = JreStrcat("$$$", v6, v7, v8, v9, v10, v11, v12, @"cannot change value type from ");
      v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
      objc_exception_throw(v14);
    }

    JreThrowNullPointerException();
  }

  JreStrongAssign(p_fieldsData, reader);
}

- (void)setBytesValueWithByteArray:(id)array
{
  v4 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_(array);

  [(OrgApacheLuceneDocumentField *)self setBytesValueWithOrgApacheLuceneUtilBytesRef:v4];
}

- (void)setBytesValueWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  p_fieldsData = &self->fieldsData_;
  fieldsData = self->fieldsData_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*p_fieldsData)
    {
      [objc_msgSend(*p_fieldsData "getClass")];
      v16 = JreStrcat("$$$", v9, v10, v11, v12, v13, v14, v15, @"cannot change value type from ");
      goto LABEL_15;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  type = self->type_;
  if (!type)
  {
    goto LABEL_12;
  }

  indexOptions = [(OrgApacheLuceneDocumentFieldType *)type indexOptions];
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (indexOptions != OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
  {
    v16 = @"cannot set a BytesRef value on an indexed field";
    goto LABEL_15;
  }

  if (!ref)
  {
    v16 = @"value cannot be null";
LABEL_15:
    v17 = new_JavaLangIllegalArgumentException_initWithNSString_(v16);
    objc_exception_throw(v17);
  }

  JreStrongAssign(p_fieldsData, ref);
}

- (void)setByteValueWithByte:(char)byte
{
  byteCopy = byte;
  p_fieldsData = &self->fieldsData_;
  fieldsData = self->fieldsData_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*p_fieldsData)
    {
      [objc_msgSend(*p_fieldsData "getClass")];
      v14 = JreStrcat("$$$", v7, v8, v9, v10, v11, v12, v13, @"cannot change value type from ");
      v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

    JreThrowNullPointerException();
  }

  v6 = JavaLangByte_valueOfWithByte_(byteCopy);

  JreStrongAssign(p_fieldsData, v6);
}

- (void)setShortValueWithShort:(signed __int16)short
{
  shortCopy = short;
  p_fieldsData = &self->fieldsData_;
  fieldsData = self->fieldsData_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*p_fieldsData)
    {
      [objc_msgSend(*p_fieldsData "getClass")];
      v14 = JreStrcat("$$$", v7, v8, v9, v10, v11, v12, v13, @"cannot change value type from ");
      v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

    JreThrowNullPointerException();
  }

  v6 = JavaLangShort_valueOfWithShort_(shortCopy);

  JreStrongAssign(p_fieldsData, v6);
}

- (void)setIntValueWithInt:(int)int
{
  p_fieldsData = &self->fieldsData_;
  fieldsData = self->fieldsData_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*p_fieldsData)
    {
      [objc_msgSend(*p_fieldsData "getClass")];
      v14 = JreStrcat("$$$", v7, v8, v9, v10, v11, v12, v13, @"cannot change value type from ");
      v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

    JreThrowNullPointerException();
  }

  v6 = JavaLangInteger_valueOfWithInt_(int);

  JreStrongAssign(p_fieldsData, v6);
}

- (void)setLongValueWithLong:(int64_t)long
{
  p_fieldsData = &self->fieldsData_;
  fieldsData = self->fieldsData_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*p_fieldsData)
    {
      [objc_msgSend(*p_fieldsData "getClass")];
      v14 = JreStrcat("$$$", v7, v8, v9, v10, v11, v12, v13, @"cannot change value type from ");
      v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

    JreThrowNullPointerException();
  }

  v6 = JavaLangLong_valueOfWithLong_(long);

  JreStrongAssign(p_fieldsData, v6);
}

- (void)setFloatValueWithFloat:(float)float
{
  p_fieldsData = &self->fieldsData_;
  fieldsData = self->fieldsData_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*p_fieldsData)
    {
      [objc_msgSend(*p_fieldsData "getClass")];
      v14 = JreStrcat("$$$", v7, v8, v9, v10, v11, v12, v13, @"cannot change value type from ");
      v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

    JreThrowNullPointerException();
  }

  v6 = JavaLangFloat_valueOfWithFloat_(float);

  JreStrongAssign(p_fieldsData, v6);
}

- (void)setDoubleValueWithDouble:(double)double
{
  p_fieldsData = &self->fieldsData_;
  fieldsData = self->fieldsData_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*p_fieldsData)
    {
      [objc_msgSend(*p_fieldsData "getClass")];
      v14 = JreStrcat("$$$", v7, v8, v9, v10, v11, v12, v13, @"cannot change value type from ");
      v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

    JreThrowNullPointerException();
  }

  v6 = JavaLangDouble_valueOfWithDouble_(double);

  JreStrongAssign(p_fieldsData, v6);
}

- (void)setTokenStreamWithOrgApacheLuceneAnalysisTokenStream:(id)stream
{
  type = self->type_;
  if (!type)
  {
    JreThrowNullPointerException();
  }

  indexOptions = [(OrgApacheLuceneDocumentFieldType *)type indexOptions];
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (indexOptions == OrgApacheLuceneIndexIndexOptionsEnum_values_[0] || ![(OrgApacheLuceneDocumentFieldType *)self->type_ tokenized])
  {
    v7 = @"TokenStream fields must be indexed and tokenized";
    goto LABEL_13;
  }

  if ([(OrgApacheLuceneDocumentFieldType *)self->type_ numericType])
  {
    v7 = @"cannot set private TokenStream on numeric fields";
LABEL_13:
    v8 = new_JavaLangIllegalArgumentException_initWithNSString_(v7);
    objc_exception_throw(v8);
  }

  JreStrongAssign(&self->tokenStream_, stream);
}

- (void)setBoostWithFloat:(float)float
{
  if (float != 1.0)
  {
    type = self->type_;
    if (!type)
    {
      JreThrowNullPointerException();
    }

    indexOptions = [(OrgApacheLuceneDocumentFieldType *)type indexOptions];
    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (indexOptions == OrgApacheLuceneIndexIndexOptionsEnum_values_[0] || [(OrgApacheLuceneDocumentFieldType *)self->type_ omitNorms])
    {
      v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"You cannot set an index-time boost on an unindexed field, or one that omits norms");
      objc_exception_throw(v7);
    }
  }

  self->boost_ = float;
}

- (id)numericValue
{
  fieldsData = self->fieldsData_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = self->fieldsData_;
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v4;
}

- (id)binaryValue
{
  fieldsData = self->fieldsData_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = self->fieldsData_;
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v4;
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_init();
  type = self->type_;
  if (!type)
  {
    JreThrowNullPointerException();
  }

  [(JavaLangStringBuilder *)v3 appendWithNSString:[(OrgApacheLuceneDocumentFieldType *)type description]];
  [(JavaLangStringBuilder *)v3 appendWithChar:60];
  [(JavaLangStringBuilder *)v3 appendWithNSString:self->name_];
  [(JavaLangStringBuilder *)v3 appendWithChar:58];
  if (self->fieldsData_)
  {
    [(JavaLangStringBuilder *)v3 appendWithId:?];
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:62];

  return [(JavaLangStringBuilder *)v3 description];
}

- (id)tokenStreamWithOrgApacheLuceneAnalysisAnalyzer:(id)analyzer withOrgApacheLuceneAnalysisTokenStream:(id)tokenStream
{
  fieldType = [(OrgApacheLuceneDocumentField *)self fieldType];
  if (!fieldType)
  {
    goto LABEL_63;
  }

  indexOptions = [fieldType indexOptions];
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (indexOptions == OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
  {
    return 0;
  }

  fieldType2 = [(OrgApacheLuceneDocumentField *)self fieldType];
  if (!fieldType2)
  {
    goto LABEL_63;
  }

  numericType = [fieldType2 numericType];
  if (numericType)
  {
    v11 = numericType;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    objc_opt_class();
    if (!tokenStream)
    {
      goto LABEL_63;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_64;
    }

    getPrecisionStep = [tokenStream getPrecisionStep];
    type = self->type_;
    if (!type)
    {
      goto LABEL_63;
    }

    if (getPrecisionStep == [(OrgApacheLuceneDocumentFieldType *)type numericPrecisionStep])
    {
      objc_opt_class();
    }

    else
    {
LABEL_14:
      tokenStream = new_OrgApacheLuceneAnalysisNumericTokenStream_initWithInt_([(OrgApacheLuceneDocumentFieldType *)self->type_ numericPrecisionStep]);
      objc_opt_class();
      if (!tokenStream)
      {
        v14 = 1;
LABEL_32:
        fieldsData = self->fieldsData_;
        objc_opt_class();
        if (!fieldsData || (objc_opt_isKindOfClass() & 1) != 0)
        {
          ordinal = [v11 ordinal];
          if (ordinal > 1)
          {
            if (ordinal == 2)
            {
              if (!v14 && fieldsData)
              {
                [fieldsData floatValue];
                [tokenStream setFloatValueWithFloat:?];
                return tokenStream;
              }

              goto LABEL_63;
            }

            if (ordinal == 3)
            {
              if (!v14 && fieldsData)
              {
                [fieldsData doubleValue];
                [tokenStream setDoubleValueWithDouble:?];
                return tokenStream;
              }

              goto LABEL_63;
            }
          }

          else
          {
            if (!ordinal)
            {
              if (!v14 && fieldsData)
              {
                [tokenStream setIntValueWithInt:{objc_msgSend(fieldsData, "intValue")}];
                return tokenStream;
              }

              goto LABEL_63;
            }

            if (ordinal == 1)
            {
              if (!v14 && fieldsData)
              {
                [tokenStream setLongValueWithLong:{objc_msgSend(fieldsData, "longLongValue")}];
                return tokenStream;
              }

LABEL_63:
              JreThrowNullPointerException();
            }
          }

          v31 = new_JavaLangAssertionError_initWithId_(@"Should never get here");
LABEL_69:
          objc_exception_throw(v31);
        }

LABEL_64:
        JreThrowClassCastException();
      }
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_64;
    }

    v14 = 0;
    goto LABEL_32;
  }

  fieldType3 = [(OrgApacheLuceneDocumentField *)self fieldType];
  if (!fieldType3)
  {
    goto LABEL_63;
  }

  if (([fieldType3 tokenized] & 1) == 0)
  {
    if (![(OrgApacheLuceneDocumentField *)self stringValue])
    {
      if ([(OrgApacheLuceneDocumentField *)self binaryValue])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = [OrgApacheLuceneDocumentField_BinaryTokenStream alloc];
          sub_1000656E8(v21);
          tokenStream = v21;
        }

        objc_opt_class();
        if (!tokenStream)
        {
          goto LABEL_63;
        }

        if (objc_opt_isKindOfClass())
        {
          [tokenStream setValueWithOrgApacheLuceneUtilBytesRef:{-[OrgApacheLuceneDocumentField binaryValue](self, "binaryValue")}];
          return tokenStream;
        }

        goto LABEL_64;
      }

      v32 = @"Non-Tokenized Fields must have a String value";
LABEL_68:
      v31 = new_JavaLangIllegalArgumentException_initWithNSString_(v32);
      goto LABEL_69;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = [OrgApacheLuceneDocumentField_StringTokenStream alloc];
      sub_100065870(v18);
      tokenStream = v18;
    }

    objc_opt_class();
    if (!tokenStream)
    {
      goto LABEL_63;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_64;
    }

    [tokenStream setValueWithNSString:{-[OrgApacheLuceneDocumentField stringValue](self, "stringValue")}];
    return tokenStream;
  }

  tokenStream = self->tokenStream_;
  if (tokenStream)
  {
    return tokenStream;
  }

  if ([(OrgApacheLuceneDocumentField *)self readerValue])
  {
    if (!analyzer)
    {
      goto LABEL_63;
    }

    name = [(OrgApacheLuceneDocumentField *)self name];
    readerValue = [(OrgApacheLuceneDocumentField *)self readerValue];

    return [analyzer tokenStreamWithNSString:name withJavaIoReader:readerValue];
  }

  if (![(OrgApacheLuceneDocumentField *)self stringValue])
  {
    v32 = JreStrcat("$@", v22, v23, v24, v25, v26, v27, v28, @"Field must have either TokenStream, String, Reader or Number value; got ");
    goto LABEL_68;
  }

  if (!analyzer)
  {
    goto LABEL_63;
  }

  name2 = [(OrgApacheLuceneDocumentField *)self name];
  stringValue = [(OrgApacheLuceneDocumentField *)self stringValue];

  return [analyzer tokenStreamWithNSString:name2 withNSString:stringValue];
}

- (OrgApacheLuceneDocumentField)initWithNSString:(id)string withNSString:(id)sString withOrgApacheLuceneDocumentField_StoreEnum:(id)enum withOrgApacheLuceneDocumentField_IndexEnum:(id)indexEnum withOrgApacheLuceneDocumentField_TermVectorEnum:(id)vectorEnum
{
  v10 = OrgApacheLuceneDocumentField_translateFieldTypeWithOrgApacheLuceneDocumentField_StoreEnum_withOrgApacheLuceneDocumentField_IndexEnum_withOrgApacheLuceneDocumentField_TermVectorEnum_(enum, indexEnum, vectorEnum);
  OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentFieldType_(self, string, sString, v10);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneDocumentField;
  [(OrgApacheLuceneDocumentField *)&v3 dealloc];
}

@end