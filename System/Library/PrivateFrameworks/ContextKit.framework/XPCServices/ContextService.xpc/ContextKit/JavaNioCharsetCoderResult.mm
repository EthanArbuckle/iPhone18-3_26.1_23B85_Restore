@interface JavaNioCharsetCoderResult
+ (void)initialize;
- (JavaNioCharsetCoderResult)initWithInt:(int)int withInt:(int)withInt;
- (id)description;
- (int)length;
- (void)throwException;
@end

@implementation JavaNioCharsetCoderResult

- (JavaNioCharsetCoderResult)initWithInt:(int)int withInt:(int)withInt
{
  self->type_ = int;
  self->length_ = withInt;
  return self;
}

- (int)length
{
  if ((self->type_ - 3) > 1)
  {
    [(JavaNioCharsetCoderResult *)self description];
    v10 = JreStrcat("$$", v3, v4, v5, v6, v7, v8, v9, @"length meaningless for ");
    v11 = new_JavaLangUnsupportedOperationException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  return self->length_;
}

- (void)throwException
{
  type = self->type_;
  if (type > 2)
  {
    if (type != 3)
    {
      if (type == 4)
      {
        v3 = new_JavaNioCharsetUnmappableCharacterException_initWithInt_(self->length_);
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v3 = new_JavaNioCharsetMalformedInputException_initWithInt_(self->length_);
  }

  else
  {
    if (type != 1)
    {
      if (type == 2)
      {
        v3 = new_JavaNioBufferOverflowException_init();
        goto LABEL_11;
      }

LABEL_8:
      v3 = new_JavaNioCharsetCharacterCodingException_init();
      goto LABEL_11;
    }

    v3 = new_JavaNioBufferUnderflowException_init();
  }

LABEL_11:
  objc_exception_throw(v3);
}

- (id)description
{
  type = self->type_;
  if (type > 2)
  {
    if (type == 3)
    {
      length = self->length_;
      v11 = @"Malformed-input error with erroneous input length ";
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_8;
      }

      v10 = self->length_;
      v11 = @"Unmappable-character error with erroneous input length ";
    }

    JreStrcat("$I", a2, v2, v3, v4, v5, v6, v7, v11);
  }

LABEL_8:
  v13 = [-[JavaNioCharsetCoderResult getClass](self "getClass")];
  return JreStrcat("$C$C", v14, v15, v16, v17, v18, v19, v20, v13);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaNioCharsetCoderResult alloc];
    *&v2->type_ = 1;
    JreStrongAssignAndConsume(&JavaNioCharsetCoderResult_UNDERFLOW__, v2);
    v3 = [JavaNioCharsetCoderResult alloc];
    *&v3->type_ = 2;
    JreStrongAssignAndConsume(&JavaNioCharsetCoderResult_OVERFLOW__, v3);
    v4 = new_JavaUtilWeakHashMap_init();
    JreStrongAssignAndConsume(&qword_100554D70, v4);
    v5 = new_JavaUtilWeakHashMap_init();
    JreStrongAssignAndConsume(&qword_100554D78, v5);
    atomic_store(1u, JavaNioCharsetCoderResult__initialized);
  }
}

@end