@interface JavaTextChoiceFormat
+ (double)nextDoubleWithDouble:(double)double withBoolean:(BOOL)boolean;
- (BOOL)isEqual:(id)equal;
- (JavaTextChoiceFormat)formatWithDouble:(double)double withJavaLangStringBuffer:(id)buffer withJavaTextFieldPosition:(id)position;
- (JavaTextChoiceFormat)initWithDoubleArray:(id)array withNSStringArray:(id)stringArray;
- (JavaTextChoiceFormat)initWithNSString:(id)string;
- (id)clone;
- (id)parseWithNSString:(id)string withJavaTextParsePosition:(id)position;
- (id)toPattern;
- (unint64_t)hash;
- (void)applyPatternWithNSString:(id)string;
- (void)dealloc;
- (void)setChoicesWithDoubleArray:(id)array withNSStringArray:(id)stringArray;
@end

@implementation JavaTextChoiceFormat

- (JavaTextChoiceFormat)initWithDoubleArray:(id)array withNSStringArray:(id)stringArray
{
  JavaTextNumberFormat_init(self, a2);
  [(JavaTextChoiceFormat *)self setChoicesWithDoubleArray:array withNSStringArray:stringArray];
  return self;
}

- (JavaTextChoiceFormat)initWithNSString:(id)string
{
  JavaTextNumberFormat_init(self, a2);
  [(JavaTextChoiceFormat *)self applyPatternWithNSString:string];
  return self;
}

- (void)applyPatternWithNSString:(id)string
{
  v5 = [IOSDoubleArray arrayWithLength:5];
  v6 = new_JavaUtilArrayList_init();
  if (!string)
  {
LABEL_42:
    JreThrowNullPointerException();
  }

  v7 = v6;
  v8 = [string length];
  v9 = new_JavaLangStringBuffer_init();
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  selfCopy = self;
  InstanceWithJavaUtilLocale = JavaTextNumberFormat_getInstanceWithJavaUtilLocale_(JavaUtilLocale_US_);
  v11 = new_JavaTextParsePosition_initWithInt_(0);
  v12 = sub_1001D147C(string, 0);
  if (v12 < v8)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v53 = InstanceWithJavaUtilLocale;
    stringCopy = string;
    while (1)
    {
      [(JavaTextParsePosition *)v11 setIndexWithInt:v13];
      if (!InstanceWithJavaUtilLocale)
      {
        goto LABEL_42;
      }

      v16 = [InstanceWithJavaUtilLocale parseWithNSString:string withJavaTextParsePosition:v11];
      v17 = sub_1001D147C(string, [(JavaTextParsePosition *)v11 getIndex]);
      if ([(JavaTextParsePosition *)v11 getErrorIndex]!= -1 || v17 >= v8)
      {
        if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1001BBB54();
        }

        JreStrongAssign((&selfCopy->super.minimumFractionDigits_ + 1), LibcoreUtilEmptyArray_DOUBLE_);
        if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1001BBB54();
        }

        v49 = LibcoreUtilEmptyArray_STRING_;

        JreStrongAssign((&selfCopy->choiceLimits_ + 4), v49);
        return;
      }

      stringCopy2 = string;
      v19 = v9;
      v27 = [stringCopy2 charAtWithInt:v17];
      if (v15 == v5->super.size_)
      {
        v28 = [IOSDoubleArray arrayWithLength:v14];
        v29 = v5;
        v30 = v7;
        v31 = v8;
        v32 = v28;
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v29, 0, v28, 0, v15);
        v33 = v32;
        v8 = v31;
        v7 = v30;
        v5 = v33;
      }

      if (v27 == 8804)
      {
        goto LABEL_14;
      }

      if (v27 != 60)
      {
        break;
      }

      if (!v16)
      {
        goto LABEL_42;
      }

      [v16 doubleValue];
      DoubleWithDouble = JavaTextChoiceFormat_nextDoubleWithDouble_(v42);
LABEL_18:
      v43 = DoubleWithDouble;
      v9 = v19;
      string = stringCopy;
      if (v15 >= 1)
      {
        size = v5->super.size_;
        if (v15 > size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, (v15 - 1));
        }

        if (DoubleWithDouble <= v5->buffer_[(v15 - 1)])
        {
          v50 = JreStrcat("$$", v34, v35, v36, v37, v38, v39, v40, @"Bad template: ");
          goto LABEL_45;
        }
      }

      [(JavaLangStringBuffer *)v9 setLengthWithInt:0];
      [(JavaTextParsePosition *)v11 setIndexWithInt:(v17 + 1)];
      JavaTextFormat_upToWithNSString_withJavaTextParsePosition_withJavaLangStringBuffer_withChar_(stringCopy, v11, v9, 124);
      getIndex = [(JavaTextParsePosition *)v11 getIndex];
      v46 = v5->super.size_;
      if ((v15 & 0x80000000) != 0 || v15 >= v46)
      {
        IOSArray_throwOutOfBoundsWithMsg(v46, v15);
      }

      v5->buffer_[v15] = v43;
      [(JavaUtilArrayList *)v7 addWithId:[(JavaLangStringBuffer *)v9 description]];
      v13 = sub_1001D147C(stringCopy, getIndex);
      v14 += 2;
      v15 = (v15 + 1);
      InstanceWithJavaUtilLocale = v53;
      if (v13 >= v8)
      {
        goto LABEL_28;
      }
    }

    if (v27 != 35)
    {
      v50 = JreStrcat("$C$$", v20, v21, v22, v23, v24, v25, v26, @"Bad character '");
LABEL_45:
      v51 = new_JavaLangIllegalArgumentException_initWithNSString_(v50);
      objc_exception_throw(v51);
    }

LABEL_14:
    if (!v16)
    {
      goto LABEL_42;
    }

    [v16 doubleValue];
    goto LABEL_18;
  }

  v15 = 0;
LABEL_28:
  if (v15 == v5->super.size_)
  {
    JreStrongAssign((&selfCopy->super.minimumFractionDigits_ + 1), v5);
  }

  else
  {
    JreStrongAssignAndConsume((&selfCopy->super.minimumFractionDigits_ + 1), [IOSDoubleArray newArrayWithLength:v15]);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v5, 0, *(&selfCopy->super.minimumFractionDigits_ + 1), 0, v15);
  }

  v47 = [IOSObjectArray newArrayWithLength:[(JavaUtilArrayList *)v7 size] type:NSString_class_()];
  JreStrongAssignAndConsume((&selfCopy->choiceLimits_ + 4), v47);
  if ([(JavaUtilArrayList *)v7 size]>= 1)
  {
    v48 = 0;
    do
    {
      IOSObjectArray_Set(*(&selfCopy->choiceLimits_ + 4), v48, [(JavaUtilArrayList *)v7 getWithInt:v48]);
      ++v48;
    }

    while (v48 < [(JavaUtilArrayList *)v7 size]);
  }
}

- (id)clone
{
  v7.receiver = self;
  v7.super_class = JavaTextChoiceFormat;
  clone = [(JavaTextNumberFormat *)&v7 clone];
  objc_opt_class();
  if (!clone)
  {
    goto LABEL_6;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v4 = *(&self->super.minimumFractionDigits_ + 1);
  if (!v4 || (JreStrongAssign((clone + 28), [v4 clone]), (v5 = *(&self->choiceLimits_ + 4)) == 0))
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  JreStrongAssign((clone + 36), [v5 clone]);
  return clone;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
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

      v5 = JavaUtilArrays_equalsWithDoubleArray_withDoubleArray_(*(&self->super.minimumFractionDigits_ + 1), *(equal + 28));
      if (v5)
      {
        v6 = *(&self->choiceLimits_ + 4);
        v7 = *(equal + 36);

        LOBYTE(v5) = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(v6, v7);
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (JavaTextChoiceFormat)formatWithDouble:(double)double withJavaLangStringBuffer:(id)buffer withJavaTextFieldPosition:(id)position
{
  v5 = *(&self->super.minimumFractionDigits_ + 1);
  if (!v5)
  {
    goto LABEL_21;
  }

  v8 = *(v5 + 8);
  v9 = v8 - 1;
  while (1)
  {
    v8 = (v8 - 1);
    if (v8 < 0)
    {
      break;
    }

    v10 = *(&self->super.minimumFractionDigits_ + 1);
    v11 = *(v10 + 8);
    if (v11 <= v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v8);
    }

    v12 = v9-- & 0x7FFFFFFF;
    if (*(v10 + 16 + 8 * v12) <= double)
    {
      if (buffer)
      {
        v16 = *(&self->choiceLimits_ + 4);
        if (v16)
        {
          v17 = *(v16 + 8);
          if (v17 <= v8)
          {
            IOSArray_throwOutOfBoundsWithMsg(v17, v8);
          }

          v15 = (v16 + 24 + 8 * v12);
          goto LABEL_17;
        }
      }

LABEL_21:
      JreThrowNullPointerException();
    }
  }

  v13 = *(&self->choiceLimits_ + 4);
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = *(v13 + 8);
  if (!v14)
  {
    return buffer;
  }

  if (!buffer)
  {
    goto LABEL_21;
  }

  if (v14 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, 0);
  }

  v15 = (v13 + 24);
LABEL_17:
  v18 = *v15;

  return [buffer appendWithNSString:{v18, position}];
}

- (unint64_t)hash
{
  v2 = *(&self->super.minimumFractionDigits_ + 1);
  if (!v2)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v4 = 0;
  v5 = 0;
  while (v4 < *(v2 + 8))
  {
    v6 = JavaLangDouble_doubleToLongBitsWithDouble_(*(v2 + 16 + 8 * v4));
    v7 = *(&self->choiceLimits_ + 4);
    if (v7)
    {
      v8 = v6;
      v9 = *(v7 + 8);
      if (v4 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v4);
      }

      v10 = *(v7 + 24 + 8 * v4);
      if (v10)
      {
        v5 += (HIDWORD(v8) ^ v8) + [v10 hash];
        ++v4;
        v2 = *(&self->super.minimumFractionDigits_ + 1);
        if (v2)
        {
          continue;
        }
      }
    }

    goto LABEL_11;
  }

  return v5;
}

+ (double)nextDoubleWithDouble:(double)double withBoolean:(BOOL)boolean
{
  if (boolean)
  {
    return JavaTextChoiceFormat_nextDoubleWithDouble_(double);
  }

  else
  {
    return JavaTextChoiceFormat_previousDoubleWithDouble_(double);
  }
}

- (id)parseWithNSString:(id)string withJavaTextParsePosition:(id)position
{
  if (!position)
  {
    goto LABEL_8;
  }

  getIndex = [position getIndex];
  v8 = *(&self->choiceLimits_ + 4);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = getIndex;
  v10 = 0;
  while (1)
  {
    if (v10 >= *(v8 + 8))
    {
      [position setErrorIndexWithInt:v9];
      v12 = NAN;
      goto LABEL_15;
    }

    if (!string)
    {
      goto LABEL_8;
    }

    v11 = [string hasPrefix:*(v8 + 24 + 8 * v10) offset:v9];
    v8 = *(&self->choiceLimits_ + 4);
    if (v11)
    {
      break;
    }

    ++v10;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  v13 = *(v8 + 8);
  if (v13 <= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v10);
  }

  v14 = *(v8 + 24 + 8 * v10);
  if (!v14 || ([position setIndexWithInt:{v9 + objc_msgSend(v14, "length")}], (v15 = *(&self->super.minimumFractionDigits_ + 1)) == 0))
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v16 = *(v15 + 8);
  if (v16 <= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16, v10);
  }

  v12 = *(v15 + 16 + 8 * v10);
LABEL_15:
  v17 = new_JavaLangDouble_initWithDouble_(v12);

  return v17;
}

- (void)setChoicesWithDoubleArray:(id)array withNSStringArray:(id)stringArray
{
  if (!array || !stringArray)
  {
    JreThrowNullPointerException();
  }

  if (*(array + 2) != *(stringArray + 2))
  {
    v13 = *(stringArray + 2);
    v12 = *(array + 2);
    v10 = JreStrcat("$I$I", a2, array, stringArray, v4, v5, v6, v7, @"limits.length != formats.length: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  JreStrongAssign((&self->super.minimumFractionDigits_ + 1), array);

  JreStrongAssign((&self->choiceLimits_ + 4), stringArray);
}

- (id)toPattern
{
  v3 = new_JavaLangStringBuilder_init();
  v4 = *(&self->super.minimumFractionDigits_ + 1);
  if (!v4)
  {
LABEL_34:
    JreThrowNullPointerException();
  }

  v5 = v3;
  v6 = 0;
  while (1)
  {
    v7 = *(v4 + 8);
    if (v6 >= v7)
    {
      break;
    }

    if (v6)
    {
      [(JavaLangStringBuilder *)v5 appendWithChar:124];
      v4 = *(&self->super.minimumFractionDigits_ + 1);
      v7 = *(v4 + 8);
    }

    if (v6 >= v7)
    {
      IOSArray_throwOutOfBoundsWithMsg(v7, v6);
    }

    v8 = JavaTextChoiceFormat_previousDoubleWithDouble_(*(v4 + 16 + 8 * v6));
    v9 = NSString_valueOfDouble_(v8);
    v10 = *(&self->super.minimumFractionDigits_ + 1);
    v11 = *(v10 + 8);
    if (v6 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v6);
    }

    v12 = NSString_valueOfDouble_(*(v10 + 16 + 8 * v6));
    if (v9)
    {
      v13 = v12;
      v14 = [(__CFString *)v9 length];
      if (v13)
      {
        v15 = v14;
        v16 = [(__CFString *)v13 length];
        v17 = v15 >= v16 ? v13 : v9;
        v18 = v15 >= v16 ? 35 : 60;
        [(JavaLangStringBuilder *)v5 appendWithNSString:v17];
        [(JavaLangStringBuilder *)v5 appendWithChar:v18];
        v19 = *(&self->choiceLimits_ + 4);
        if (v19)
        {
          v20 = *(v19 + 8);
          if (v6 >= v20)
          {
            IOSArray_throwOutOfBoundsWithMsg(v20, v6);
          }

          v21 = *(v19 + 24 + 8 * v6);
          if (v21)
          {
            if ([v21 indexOf:124] == -1)
            {
              v24 = *(&self->choiceLimits_ + 4);
              v25 = *(v24 + 8);
              if (v6 >= v25)
              {
                IOSArray_throwOutOfBoundsWithMsg(v25, v6);
              }

              [(JavaLangStringBuilder *)v5 appendWithNSString:*(v24 + 24 + 8 * v6)];
            }

            else
            {
              [(JavaLangStringBuilder *)v5 appendWithChar:39];
              v22 = *(&self->choiceLimits_ + 4);
              v23 = *(v22 + 8);
              if (v6 >= v23)
              {
                IOSArray_throwOutOfBoundsWithMsg(v23, v6);
              }

              [(JavaLangStringBuilder *)v5 appendWithNSString:*(v22 + 24 + 8 * v6)];
              [(JavaLangStringBuilder *)v5 appendWithChar:39];
            }

            ++v6;
            v4 = *(&self->super.minimumFractionDigits_ + 1);
            if (v4)
            {
              continue;
            }
          }
        }
      }
    }

    goto LABEL_34;
  }

  return [(JavaLangStringBuilder *)v5 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextChoiceFormat;
  [(JavaTextChoiceFormat *)&v3 dealloc];
}

@end