@interface JavaTextChoiceFormat
+ (double)nextDoubleWithDouble:(double)a3 withBoolean:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (JavaTextChoiceFormat)formatWithDouble:(double)a3 withJavaLangStringBuffer:(id)a4 withJavaTextFieldPosition:(id)a5;
- (JavaTextChoiceFormat)initWithDoubleArray:(id)a3 withNSStringArray:(id)a4;
- (JavaTextChoiceFormat)initWithNSString:(id)a3;
- (id)clone;
- (id)parseWithNSString:(id)a3 withJavaTextParsePosition:(id)a4;
- (id)toPattern;
- (unint64_t)hash;
- (void)applyPatternWithNSString:(id)a3;
- (void)dealloc;
- (void)setChoicesWithDoubleArray:(id)a3 withNSStringArray:(id)a4;
@end

@implementation JavaTextChoiceFormat

- (JavaTextChoiceFormat)initWithDoubleArray:(id)a3 withNSStringArray:(id)a4
{
  JavaTextNumberFormat_init(self, a2);
  [(JavaTextChoiceFormat *)self setChoicesWithDoubleArray:a3 withNSStringArray:a4];
  return self;
}

- (JavaTextChoiceFormat)initWithNSString:(id)a3
{
  JavaTextNumberFormat_init(self, a2);
  [(JavaTextChoiceFormat *)self applyPatternWithNSString:a3];
  return self;
}

- (void)applyPatternWithNSString:(id)a3
{
  v5 = [IOSDoubleArray arrayWithLength:5];
  v6 = new_JavaUtilArrayList_init();
  if (!a3)
  {
LABEL_42:
    JreThrowNullPointerException();
  }

  v7 = v6;
  v8 = [a3 length];
  v9 = new_JavaLangStringBuffer_init();
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  v52 = self;
  InstanceWithJavaUtilLocale = JavaTextNumberFormat_getInstanceWithJavaUtilLocale_(JavaUtilLocale_US_);
  v11 = new_JavaTextParsePosition_initWithInt_(0);
  v12 = sub_1001D147C(a3, 0);
  if (v12 < v8)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v53 = InstanceWithJavaUtilLocale;
    v54 = a3;
    while (1)
    {
      [(JavaTextParsePosition *)v11 setIndexWithInt:v13];
      if (!InstanceWithJavaUtilLocale)
      {
        goto LABEL_42;
      }

      v16 = [InstanceWithJavaUtilLocale parseWithNSString:a3 withJavaTextParsePosition:v11];
      v17 = sub_1001D147C(a3, [(JavaTextParsePosition *)v11 getIndex]);
      if ([(JavaTextParsePosition *)v11 getErrorIndex]!= -1 || v17 >= v8)
      {
        if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1001BBB54();
        }

        JreStrongAssign((&v52->super.minimumFractionDigits_ + 1), LibcoreUtilEmptyArray_DOUBLE_);
        if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1001BBB54();
        }

        v49 = LibcoreUtilEmptyArray_STRING_;

        JreStrongAssign((&v52->choiceLimits_ + 4), v49);
        return;
      }

      v18 = a3;
      v19 = v9;
      v27 = [v18 charAtWithInt:v17];
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
      a3 = v54;
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
      JavaTextFormat_upToWithNSString_withJavaTextParsePosition_withJavaLangStringBuffer_withChar_(v54, v11, v9, 124);
      v45 = [(JavaTextParsePosition *)v11 getIndex];
      v46 = v5->super.size_;
      if ((v15 & 0x80000000) != 0 || v15 >= v46)
      {
        IOSArray_throwOutOfBoundsWithMsg(v46, v15);
      }

      v5->buffer_[v15] = v43;
      [(JavaUtilArrayList *)v7 addWithId:[(JavaLangStringBuffer *)v9 description]];
      v13 = sub_1001D147C(v54, v45);
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
    JreStrongAssign((&v52->super.minimumFractionDigits_ + 1), v5);
  }

  else
  {
    JreStrongAssignAndConsume((&v52->super.minimumFractionDigits_ + 1), [IOSDoubleArray newArrayWithLength:v15]);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v5, 0, *(&v52->super.minimumFractionDigits_ + 1), 0, v15);
  }

  v47 = [IOSObjectArray newArrayWithLength:[(JavaUtilArrayList *)v7 size] type:NSString_class_()];
  JreStrongAssignAndConsume((&v52->choiceLimits_ + 4), v47);
  if ([(JavaUtilArrayList *)v7 size]>= 1)
  {
    v48 = 0;
    do
    {
      IOSObjectArray_Set(*(&v52->choiceLimits_ + 4), v48, [(JavaUtilArrayList *)v7 getWithInt:v48]);
      ++v48;
    }

    while (v48 < [(JavaUtilArrayList *)v7 size]);
  }
}

- (id)clone
{
  v7.receiver = self;
  v7.super_class = JavaTextChoiceFormat;
  v3 = [(JavaTextNumberFormat *)&v7 clone];
  objc_opt_class();
  if (!v3)
  {
    goto LABEL_6;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v4 = *(&self->super.minimumFractionDigits_ + 1);
  if (!v4 || (JreStrongAssign((v3 + 28), [v4 clone]), (v5 = *(&self->choiceLimits_ + 4)) == 0))
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  JreStrongAssign((v3 + 36), [v5 clone]);
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
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

      v5 = JavaUtilArrays_equalsWithDoubleArray_withDoubleArray_(*(&self->super.minimumFractionDigits_ + 1), *(a3 + 28));
      if (v5)
      {
        v6 = *(&self->choiceLimits_ + 4);
        v7 = *(a3 + 36);

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

- (JavaTextChoiceFormat)formatWithDouble:(double)a3 withJavaLangStringBuffer:(id)a4 withJavaTextFieldPosition:(id)a5
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
    if (*(v10 + 16 + 8 * v12) <= a3)
    {
      if (a4)
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
    return a4;
  }

  if (!a4)
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

  return [a4 appendWithNSString:{v18, a5}];
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

+ (double)nextDoubleWithDouble:(double)a3 withBoolean:(BOOL)a4
{
  if (a4)
  {
    return JavaTextChoiceFormat_nextDoubleWithDouble_(a3);
  }

  else
  {
    return JavaTextChoiceFormat_previousDoubleWithDouble_(a3);
  }
}

- (id)parseWithNSString:(id)a3 withJavaTextParsePosition:(id)a4
{
  if (!a4)
  {
    goto LABEL_8;
  }

  v7 = [a4 getIndex];
  v8 = *(&self->choiceLimits_ + 4);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v7;
  v10 = 0;
  while (1)
  {
    if (v10 >= *(v8 + 8))
    {
      [a4 setErrorIndexWithInt:v9];
      v12 = NAN;
      goto LABEL_15;
    }

    if (!a3)
    {
      goto LABEL_8;
    }

    v11 = [a3 hasPrefix:*(v8 + 24 + 8 * v10) offset:v9];
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
  if (!v14 || ([a4 setIndexWithInt:{v9 + objc_msgSend(v14, "length")}], (v15 = *(&self->super.minimumFractionDigits_ + 1)) == 0))
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

- (void)setChoicesWithDoubleArray:(id)a3 withNSStringArray:(id)a4
{
  if (!a3 || !a4)
  {
    JreThrowNullPointerException();
  }

  if (*(a3 + 2) != *(a4 + 2))
  {
    v13 = *(a4 + 2);
    v12 = *(a3 + 2);
    v10 = JreStrcat("$I$I", a2, a3, a4, v4, v5, v6, v7, @"limits.length != formats.length: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  JreStrongAssign((&self->super.minimumFractionDigits_ + 1), a3);

  JreStrongAssign((&self->choiceLimits_ + 4), a4);
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