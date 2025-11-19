id sub_1001453CC(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (!a2 || (v8 = [a2 length], (v9 = *(a1 + 56)) == 0))
  {
    JreThrowNullPointerException();
  }

  v10 = v8;
  v11 = *(v9 + 224);
  if (v11 == 48)
  {
    [a2 appendWithLong:a3];
  }

  else
  {
    v12 = JavaLangLong_toStringWithLong_(a3);
    [a2 appendWithJavaLangCharSequence:{sub_100143B24(a1, v12)}];
  }

  result = [a2 length];
  v14 = (v10 - result + a4);
  if (v14 >= 1)
  {
    if (v11 == 48)
    {
      v15 = qword_100554908;

      return [a2 insertWithInt:v10 withCharArray:v15 withInt:0 withInt:v14];
    }

    else
    {
      do
      {
        result = [a2 insertWithInt:v10 withChar:v11];
        LODWORD(v14) = v14 - 1;
      }

      while (v14);
    }
  }

  return result;
}

JavaLangStringBuilder *sub_1001454E4(uint64_t a1, double a2)
{
  if (JavaLangDouble_isNaNWithDouble_())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = @"NaN";
      goto LABEL_15;
    }

LABEL_19:
    JreThrowNullPointerException();
  }

  if (a2 == INFINITY)
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_19;
    }

    if (v4[15])
    {
      v5 = @"+Infinity";
      goto LABEL_15;
    }

    v6 = v4[17];
    v7 = @"Infinity";
    v8 = @" Infinity";
  }

  else
  {
    if (a2 != -INFINITY)
    {
      return 0;
    }

    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_19;
    }

    v6 = v4[14];
    v7 = @"-Infinity";
    v8 = @"(Infinity)";
  }

  if (v6)
  {
    v5 = v8;
  }

  else
  {
    v5 = v7;
  }

LABEL_15:
  [v4 setPrecisionWithInt:0xFFFFFFFFLL];
  *(*(a1 + 40) + 18) = 0;

  return sub_100144084(a1, v5, 0);
}

JavaLangStringBuilder *sub_1001455EC(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 24))
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      *(v6 + 18) = 0;
      v7 = @"null";
      v8 = 0;
      goto LABEL_52;
    }

LABEL_55:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v2 = *(v1 + 24), objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = *(v1 + 24);
    objc_opt_class();
    if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    [v3 doubleValue];
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {

      return sub_1001454E4(v1, v4);
    }
  }

  else
  {
    v9 = *(v1 + 24);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_100143AD4(v1);
    }
  }

  v10 = *(v1 + 40);
  if (!v10)
  {
    goto LABEL_55;
  }

  v11 = [v10 getConversionType];
  if ((v11 & 0xFFFFFFDF) != 0x41 && ([*(v1 + 40) isPrecisionSet] & 1) == 0)
  {
    [*(v1 + 40) setPrecisionWithInt:6];
  }

  v12 = new_JavaLangStringBuilder_init();
  if (v11 <= 96)
  {
    if (v11 == 65)
    {
LABEL_30:
      sub_100146030(v1, v12);
      goto LABEL_32;
    }

    if (v11 == 69)
    {
LABEL_29:
      sub_10014591C(v1, v12);
      goto LABEL_32;
    }

    if (v11 != 71)
    {
      goto LABEL_25;
    }

LABEL_28:
    sub_100145B60(v1, v12);
    goto LABEL_32;
  }

  if (v11 <= 101)
  {
    if (v11 != 97)
    {
      if (v11 != 101)
      {
LABEL_25:
        objc_exception_throw([*(v1 + 40) unknownFormatConversionException]);
      }

      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (v11 != 102)
  {
    if (v11 != 103)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  sub_100145E08(v1, v12);
LABEL_32:
  [*(v1 + 40) setPrecisionWithInt:0xFFFFFFFFLL];
  v13 = [(JavaLangAbstractStringBuilder *)v12 charAtWithInt:0];
  v14 = *(v1 + 56);
  if (!v14)
  {
    goto LABEL_55;
  }

  v15 = *(v14 + 238);
  v16 = *(v1 + 40);
  if (v13 == v15)
  {
    if (v16[14] == 1)
    {

      return sub_1001442C4(v1, v12);
    }

    v17 = 0;
  }

  else
  {
    if (v16[17] == 1)
    {
      [(JavaLangStringBuilder *)v12 insertWithInt:0 withChar:32];
      v16 = *(v1 + 40);
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    if (v16[15] == 1)
    {
      [(JavaLangStringBuilder *)v12 insertWithInt:0 withChar:43];
      ++v17;
    }
  }

  v18 = [(JavaLangAbstractStringBuilder *)v12 charAtWithInt:0];
  if (*(*(v1 + 40) + 18) == 1 && (v18 == 43 || v18 == *(*(v1 + 56) + 238)))
  {
    v17 = 1;
  }

  if ((v11 & 0xFFFFFFDF) == 0x41)
  {
    v8 = v17 + 2;
  }

  else
  {
    v8 = v17;
  }

  a1 = v1;
  v7 = v12;
LABEL_52:

  return sub_100144084(a1, v7, v8);
}

id sub_10014591C(void *a1, void *a2)
{
  v3 = a1[5];
  if (!v3)
  {
    goto LABEL_30;
  }

  v5 = [v3 getPrecision];
  if (v5 < 1)
  {
    v8 = @"0E+00";
  }

  else
  {
    v6 = new_JavaLangStringBuilder_initWithNSString_(@"0.");
    v7 = [IOSCharArray arrayWithLength:v5];
    JavaUtilArrays_fillWithCharArray_withChar_(v7, 48);
    [(JavaLangStringBuilder *)v6 appendWithCharArray:v7];
    [(JavaLangStringBuilder *)v6 appendWithNSString:@"E+00"];
    v8 = [(JavaLangStringBuilder *)v6 description];
  }

  if (!qword_100554910)
  {
    goto LABEL_30;
  }

  v9 = [qword_100554910 get];
  if (!v9)
  {
    goto LABEL_30;
  }

  v10 = [v9 updateWithLibcoreIcuLocaleData:a1[7] withNSString:v8];
  v11 = a1[3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v10)
    {
      goto LABEL_30;
    }

    v12 = a1[3];
    objc_opt_class();
    if (!v12 || (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = [v10 formatBigDecimalWithJavaMathBigDecimal:v12 withJavaTextFieldPosition:0];
      goto LABEL_16;
    }

LABEL_31:
    JreThrowClassCastException();
  }

  if (!v10)
  {
    goto LABEL_30;
  }

  v14 = a1[3];
  objc_opt_class();
  if (!v14)
  {
    goto LABEL_30;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_31;
  }

  [v14 doubleValue];
  v13 = [v10 formatDoubleWithDouble:0 withJavaTextFieldPosition:?];
LABEL_16:
  if (!v13)
  {
    goto LABEL_30;
  }

  if (v13[2] >= 1)
  {
    v15 = 0;
    do
    {
      if (*(v13 + v15 + 6) == 69)
      {
        *(v13 + v15 + 6) = 101;
      }

      ++v15;
    }

    while (v15 < v13[2]);
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  result = [a2 appendWithCharArray:v13];
  if (v5 || (*(a1[5] + 16) & 1) == 0)
  {
    return result;
  }

  v17 = [a2 indexOfWithNSString:@"e"];
  v18 = a1[7];
  if (!v18)
  {
LABEL_30:
    JreThrowNullPointerException();
  }

  v19 = *(v18 + 226);

  return [a2 insertWithInt:v17 withChar:v19];
}

id sub_100145B60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_37;
  }

  v5 = [v3 getPrecision];
  v6 = v5 <= 1 ? 1 : v5;
  [*(a1 + 40) setPrecisionWithInt:v6];
  v7 = *(a1 + 24);
  objc_opt_class();
  if (!v7)
  {
    goto LABEL_37;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [v7 doubleValue];
  if (v8 == 0.0)
  {
    v9 = (v6 - 1);
    v10 = *(a1 + 40);
LABEL_9:
    [v10 setPrecisionWithInt:v9];
LABEL_10:

    return sub_100145E08(a1, a2);
  }

  v12 = JavaLangMath_absWithDouble_(v8);
  if (!JavaLangDouble_isInfiniteWithDouble_(v12))
  {
    v13 = new_JavaMathMathContext_initWithInt_(v6);
    v14 = new_JavaMathBigDecimal_initWithDouble_withJavaMathMathContext_(v13, v12);
    [(JavaMathBigDecimal *)v14 doubleValue];
    v16 = v15;
    v17 = [(JavaMathBigDecimal *)v14 longLongValue];
    if (v16 < 1.0 || (v18 = v17, v16 >= JavaLangMath_powWithDouble_withDouble_(10.0, v6)))
    {
      v26 = [(JavaMathBigDecimal *)v14 movePointRightWithInt:4];
      if (v26)
      {
        v27 = [v26 longLongValue];
        v28 = JavaLangMath_powWithDouble_withDouble_(10.0, -4.0);
        if (v16 >= 1.0 || v16 < v28)
        {
          goto LABEL_14;
        }

        v29 = NSString_valueOfLong_(v27);
        if (v29)
        {
          v30 = v6 - [(__CFString *)v29 length];
          LODWORD(v6) = v30 + 5;
          v31 = [(JavaMathBigDecimal *)v14 movePointRightWithInt:(v30 + 5)];
          if (v31)
          {
            v32 = NSString_valueOfLong_([v31 longLongValue]);
            if (v32)
            {
              v33 = v30 + 4;
              v34 = [(__CFString *)v32 length];
              v6 = [*(a1 + 40) getPrecision] >= v34 ? v6 : v33;
              v35 = [(JavaMathBigDecimal *)v14 movePointRightWithInt:v6];
              if (v35)
              {
                v36 = [v35 longLongValue];
                if (JavaLangMath_powWithDouble_withDouble_(10.0, (v6 - 4)) > v36)
                {
                  goto LABEL_10;
                }

                goto LABEL_36;
              }
            }
          }
        }
      }
    }

    else
    {
      if (JavaLangMath_powWithDouble_withDouble_(10.0, v6) <= v18)
      {
        goto LABEL_14;
      }

      v19 = NSString_valueOfLong_(v18);
      if (v19)
      {
        v20 = [(__CFString *)v19 length];
        v21 = (v6 - v20) & ~((v6 - v20) >> 31);
        v22 = JavaLangMath_powWithDouble_withDouble_(10.0, (v21 + 1));
        v23 = JavaLangMath_roundWithDouble_(v16 * v22);
        v24 = NSString_valueOfLong_(v23);
        if (v24)
        {
          v25 = [(__CFString *)v24 length];
          if ([*(a1 + 40) getPrecision] >= v25)
          {
            v6 = v21 + 1;
          }

          else
          {
            v6 = v21;
          }

LABEL_36:
          v10 = *(a1 + 40);
          v9 = v6;
          goto LABEL_9;
        }
      }
    }

LABEL_37:
    JreThrowNullPointerException();
  }

LABEL_14:
  [*(a1 + 40) setPrecisionWithInt:{objc_msgSend(*(a1 + 40), "getPrecision") - 1}];

  return sub_10014591C(a1, a2);
}

id sub_100145E08(void *a1, void *a2)
{
  v3 = a1[5];
  if (!v3)
  {
    goto LABEL_31;
  }

  v5 = [v3 getPrecision];
  v6 = v5;
  if ((*(a1[5] + 12) & 1) != 0 || v5 != 6)
  {
    v8 = new_JavaLangStringBuilder_init();
    v9 = v8;
    if (*(a1[5] + 12) == 1)
    {
      [(JavaLangStringBuilder *)v8 appendWithChar:44];
      v10 = [IOSCharArray arrayWithLength:2];
      JavaUtilArrays_fillWithCharArray_withChar_(v10, 35);
      [(JavaLangStringBuilder *)v9 appendWithCharArray:v10];
    }

    [(JavaLangStringBuilder *)v9 appendWithChar:48];
    if (v6 >= 1)
    {
      [(JavaLangStringBuilder *)v9 appendWithChar:46];
      v11 = v6;
      do
      {
        [(JavaLangStringBuilder *)v9 appendWithChar:48];
        --v11;
      }

      while (v11);
    }

    v7 = [(JavaLangStringBuilder *)v9 description];
  }

  else
  {
    v7 = @"0.000000";
  }

  if (!qword_100554910)
  {
    goto LABEL_31;
  }

  v12 = [qword_100554910 get];
  if (!v12)
  {
    goto LABEL_31;
  }

  v13 = [v12 updateWithLibcoreIcuLocaleData:a1[7] withNSString:v7];
  v14 = a1[3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a2)
    {
      goto LABEL_31;
    }

    if (!v13)
    {
      goto LABEL_31;
    }

    v17 = a1[3];
    objc_opt_class();
    if (!v17)
    {
      goto LABEL_31;
    }

    if (objc_opt_isKindOfClass())
    {
      [v17 doubleValue];
      v16 = [v13 formatDoubleWithDouble:0 withJavaTextFieldPosition:?];
      goto LABEL_24;
    }

LABEL_32:
    JreThrowClassCastException();
  }

  if (!a2 || !v13)
  {
    goto LABEL_31;
  }

  v15 = a1[3];
  objc_opt_class();
  if (v15 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_32;
  }

  v16 = [v13 formatBigDecimalWithJavaMathBigDecimal:v15 withJavaTextFieldPosition:0];
LABEL_24:
  result = [a2 appendWithCharArray:v16];
  if (*(a1[5] + 16) != 1 || v6)
  {
    return result;
  }

  v19 = a1[7];
  if (!v19)
  {
LABEL_31:
    JreThrowNullPointerException();
  }

  v20 = *(v19 + 226);

  return [a2 appendWithChar:v20];
}

id sub_100146030(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2)
    {
      v5 = *(a1 + 24);
      objc_opt_class();
      if (v5)
      {
        if (objc_opt_isKindOfClass())
        {
          [v5 floatValue];
          v7 = JavaLangFloat_toHexStringWithFloat_(v6);
          goto LABEL_11;
        }

LABEL_26:
        JreThrowClassCastException();
      }
    }

LABEL_25:
    JreThrowNullPointerException();
  }

  v8 = *(a1 + 24);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_100143AD4(a1);
  }

  if (!a2)
  {
    goto LABEL_25;
  }

  v9 = *(a1 + 24);
  objc_opt_class();
  if (!v9)
  {
    goto LABEL_25;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  [v9 doubleValue];
  v7 = JavaLangDouble_toHexStringWithDouble_(v10);
LABEL_11:
  [a2 appendWithNSString:v7];
  v11 = *(a1 + 40);
  if (!v11)
  {
    goto LABEL_25;
  }

  result = [v11 isPrecisionSet];
  if (result)
  {
    v13 = [*(a1 + 40) getPrecision];
    v14 = v13 <= 1 ? 1 : v13;
    v15 = [a2 indexOfWithNSString:@"."] + 1;
    result = [a2 indexOfWithNSString:@"p"];
    if (v14 != result - v15)
    {
      v16 = result;
      if (v14 <= (result - v15))
      {

        return [a2 delete__WithInt:v15 + v14 withInt:result];
      }

      else
      {
        v17 = [IOSCharArray arrayWithLength:(v14 - (result - v15))];
        JavaUtilArrays_fillWithCharArray_withChar_(v17, 48);

        return [a2 insertWithInt:v16 withCharArray:v17];
      }
    }
  }

  return result;
}

JavaUtilFormatter *new_JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(void *a1, void *a2)
{
  v4 = [JavaUtilFormatter alloc];
  JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(v4, a1, a2);
  return v4;
}

IOSObjectArray *JavaUtilFormatter_BigDecimalLayoutFormEnum_values()
{
  if ((atomic_load_explicit(JavaUtilFormatter_BigDecimalLayoutFormEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147560();
  }

  v0 = JavaUtilFormatter_BigDecimalLayoutFormEnum_class_();

  return [IOSObjectArray arrayWithObjects:&JavaUtilFormatter_BigDecimalLayoutFormEnum_values_ count:2 type:v0];
}

void *JavaUtilFormatter_BigDecimalLayoutFormEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaUtilFormatter_BigDecimalLayoutFormEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147560();
  }

  v2 = 0;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    v5 = JavaUtilFormatter_BigDecimalLayoutFormEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v5, "name")}])
    {
      break;
    }

    v2 = 1;
    if ((v4 & 1) == 0)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v5;
}

uint64_t JavaUtilFormatter_BigDecimalLayoutFormEnum_class_()
{
  if ((atomic_load_explicit(JavaUtilFormatter_BigDecimalLayoutFormEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147560();
  }

  if (qword_100554920 != -1)
  {
    sub_10014756C();
  }

  return qword_100554918;
}

void *sub_100146F20(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  if (v4 >= *(a1 + 16))
  {
    if (!JavaLangCharacter_isDigitWithChar_(0xFFFF))
    {
LABEL_17:
      if (a2)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }

    v6 = -1;
LABEL_9:
    v7 = sub_100147388(a1);
    if (*(a1 + 24) < *(a1 + 16))
    {
      v8 = *(a1 + 8);
      if (!v8)
      {
        goto LABEL_37;
      }

      if ([v8 charAtWithInt:?] == 36)
      {
        sub_100147170(a1);
        if (v7 == -1)
        {
          v11 = new_JavaUtilMissingFormatArgumentException_initWithNSString_([a1 getFormatSpecifierText]);
          objc_exception_throw(v11);
        }

        if (a2)
        {
          [a2 setArgIndexWithInt:{JavaLangMath_maxWithInt_withInt_(0, v7 - 1)}];
          goto LABEL_21;
        }

        goto LABEL_37;
      }
    }

    if (v6 != 48)
    {
      v9 = a1;
      v10 = a2;
LABEL_34:
      sub_100147200(v9, v10);
      return a2;
    }

    *(a1 + 24) = v4;
    goto LABEL_17;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_37;
  }

  v6 = [v5 charAtWithInt:v4];
  if (JavaLangCharacter_isDigitWithChar_(v6))
  {
    goto LABEL_9;
  }

  if (v6 != 60)
  {
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_37;
  }

  [a2 setArgIndexWithInt:4294967294];
  do
  {
    sub_100147170(a1);
LABEL_21:
    if (*(a1 + 24) >= *(a1 + 16))
    {
      v13 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = *(a1 + 8);
      if (!v12)
      {
        goto LABEL_37;
      }

      v13 = [v12 charAtWithInt:?];
    }
  }

  while ([a2 setFlagWithInt:v13]);
  if (*(a1 + 24) >= *(a1 + 16))
  {
    if (!JavaLangCharacter_isDigitWithChar_(0xFFFF))
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v14 = *(a1 + 8);
  if (!v14)
  {
LABEL_37:
    JreThrowNullPointerException();
  }

  v15 = [v14 charAtWithInt:?];
  if (JavaLangCharacter_isDigitWithChar_(v15))
  {
LABEL_33:
    sub_100147388(a1);
    v9 = a1;
    v10 = a2;
    goto LABEL_34;
  }

  if (v15 != 46)
  {
LABEL_35:
    sub_100147318(a1, a2);
    return a2;
  }

  sub_100147280(a1, a2);
  return a2;
}

id sub_100147170(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= *(a1 + 16))
  {
    sub_1001471D0(a1);
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 24) = v1 + 1;

  return [v2 charAtWithInt:?];
}

void *sub_100147200(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  [a2 setWidthWithInt:?];
  if (*(a1 + 24) >= *(a1 + 16))
  {
LABEL_6:
    sub_100147318(a1, a2);
    return a2;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  if ([v4 charAtWithInt:?] != 46)
  {
    goto LABEL_6;
  }

  sub_100147280(a1, a2);
  return a2;
}

void *sub_100147280(uint64_t a1, void *a2)
{
  sub_100147170(a1);
  if (*(a1 + 24) >= *(a1 + 16))
  {
    v5 = 0xFFFF;
  }

  else
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = [v4 charAtWithInt:?];
  }

  if (!JavaLangCharacter_isDigitWithChar_(v5))
  {
    sub_1001471D0(a1);
  }

  if (!a2)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  [a2 setPrecisionWithInt:sub_100147388(a1)];

  return sub_100147318(a1, a2);
}

void *sub_100147318(uint64_t a1, void *a2)
{
  v4 = sub_100147170(a1);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  [a2 setConversionTypeWithChar:v4];
  if ((v5 & 0xFFFFFFDF) == 0x54)
  {
    [a2 setDateSuffixWithChar:sub_100147170(a1)];
  }

  return a2;
}

uint64_t sub_100147388(uint64_t a1)
{
  v2 = 0;
  while (*(a1 + 24) < *(a1 + 16))
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      goto LABEL_9;
    }

    if (!JavaLangCharacter_isDigitWithChar_([v3 charAtWithInt:?]))
    {
      break;
    }

    v4 = *(a1 + 8);
    if (!v4)
    {
LABEL_9:
      JreThrowNullPointerException();
    }

    ++*(a1 + 24);
    v2 = 10 * v2 + [v4 charAtWithInt:?] - 48;
    if (v2 >= 0x80000000)
    {
      sub_10014743C(a1);
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

BOOL sub_10014743C(uint64_t a1)
{
  while (1)
  {
    if (*(a1 + 24) >= *(a1 + 16))
    {
      v3 = 0xFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (!v2)
      {
        JreThrowNullPointerException();
      }

      v3 = [v2 charAtWithInt:?];
    }

    result = JavaLangCharacter_isDigitWithChar_(v3);
    if (!result)
    {
      break;
    }

    sub_100147170(a1);
  }

  return result;
}

id JavaUtilRegexMatchResultImpl_initWithNSString_withIntArray_(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 8), a2);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 clone];

  return JreStrongAssign((a1 + 16), v5);
}

JavaUtilRegexMatchResultImpl *new_JavaUtilRegexMatchResultImpl_initWithNSString_withIntArray_(void *a1, void *a2)
{
  v4 = [JavaUtilRegexMatchResultImpl alloc];
  JavaUtilRegexMatchResultImpl_initWithNSString_withIntArray_(v4, a1, a2);
  return v4;
}

JavaNioByteBufferAsIntBuffer *JavaNioByteBufferAsIntBuffer_asIntBufferWithJavaNioByteBuffer_(void *a1)
{
  if (!a1 || (v2 = [a1 slice]) == 0)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  [v2 orderWithJavaNioByteOrder:{objc_msgSend(a1, "order")}];
  v4 = [JavaNioByteBufferAsIntBuffer alloc];
  sub_1001479D0(v4, v3);

  return v4;
}

id sub_1001479D0(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 capacity];
  JavaNioIntBuffer_initWithInt_withLong_(a1, (v4 / 4), a2[4], v5, v6, v7, v8, v9);
  JreStrongAssign((a1 + 40), a2);
  v10 = *(a1 + 40);

  return [v10 clear];
}

void *LibcoreUtilBasicLruCache_initWithInt_(uint64_t a1, int a2)
{
  if (a2 <= 0)
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"maxSize <= 0");
    objc_exception_throw(v5);
  }

  *(a1 + 16) = a2;
  v3 = new_JavaUtilLinkedHashMap_initWithInt_withFloat_withBoolean_(0, 1, 0.75);

  return JreStrongAssignAndConsume((a1 + 8), v3);
}

id sub_1001483A0(id *a1, int a2)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = [v3 entrySet];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v5 iterator];
  result = [a1[1] size];
  if (result > a2)
  {
    if (v6)
    {
      while (1)
      {
        v8 = [v6 next];
        if (!v8)
        {
          break;
        }

        v9 = v8;
        v10 = [v8 getKey];
        v11 = [v9 getValue];
        [a1[1] removeWithId:v10];
        [a1 entryEvictedWithId:v10 withId:v11];
        result = [a1[1] size];
        if (result <= a2)
        {
          return result;
        }
      }
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  return result;
}

LibcoreUtilBasicLruCache *new_LibcoreUtilBasicLruCache_initWithInt_(int a1)
{
  v2 = [LibcoreUtilBasicLruCache alloc];
  LibcoreUtilBasicLruCache_initWithInt_(v2, a1);
  return v2;
}

id JavaNetPlainSocketImpl_initWithJavaIoFileDescriptor_(uint64_t a1, void *a2)
{
  JavaNetSocketImpl_init();
  *(a1 + 36) = 1;
  v4 = DalvikSystemCloseGuard_get();
  JreStrongAssign((a1 + 48), v4);
  JreStrongAssign((a1 + 24), a2);
  if (!a2)
  {
    goto LABEL_8;
  }

  result = [a2 valid];
  if (!result)
  {
    return result;
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  return [v6 openWithNSString:@"close"];
}

id JavaNetPlainSocketImpl_initWithJavaNetProxy_(uint64_t a1, void *a2)
{
  v4 = new_JavaIoFileDescriptor_init();
  JavaNetPlainSocketImpl_initWithJavaIoFileDescriptor_(a1, v4);

  return JreStrongAssign((a1 + 40), a2);
}

id JavaNetPlainSocketImpl_init(uint64_t a1)
{
  v2 = new_JavaIoFileDescriptor_init();

  return JavaNetPlainSocketImpl_initWithJavaIoFileDescriptor_(a1, v2);
}

id JavaNetPlainSocketImpl_initWithJavaIoFileDescriptor_withInt_withJavaNetInetAddress_withInt_(uint64_t a1, void *a2, int a3, void *a4, int a5)
{
  JavaNetSocketImpl_init();
  *(a1 + 36) = 1;
  v10 = DalvikSystemCloseGuard_get();
  JreStrongAssign((a1 + 48), v10);
  JreStrongAssign((a1 + 24), a2);
  *(a1 + 32) = a3;
  JreStrongAssign((a1 + 8), a4);
  *(a1 + 16) = a5;
  if (!a2)
  {
    goto LABEL_8;
  }

  result = [a2 valid];
  if (!result)
  {
    return result;
  }

  v12 = *(a1 + 48);
  if (!v12)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  return [v12 openWithNSString:@"close"];
}

void sub_100148B0C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    if (v2)
    {
      if (v2[21] == 35)
      {
        v3 = new_JavaNetSocketTimeoutException_initWithJavaLangThrowable_(v2);
      }

      else
      {
        v3 = [v2 rethrowAsSocketException];
      }

      objc_exception_throw(v3);
    }

    JreThrowNullPointerException();
  }

  _Unwind_Resume(exception_object);
}

id sub_100148DFC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  result = [v1 valid];
  if ((result & 1) == 0)
  {
    v3 = new_JavaNetSocketException_initWithNSString_(@"Socket is closed");
    objc_exception_throw(v3);
  }

  return result;
}

id sub_100149018(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  LocalHost = a2;
  if ([a2 isAnyLocalAddress])
  {
    LocalHost = JavaNetInetAddress_getLocalHost();
  }

  if (*(a1 + 36) == 1 && [JavaNetPlainSocketImpl usingSocks]_0(a1))
  {
    sub_100149514(a1, a2, a3, 0);
  }

  else
  {
    LibcoreIoIoBridge_connectWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_withInt_(*(a1 + 24), LocalHost, a3, a4);
  }

  result = JreStrongAssign((a1 + 8), LocalHost);
  *(a1 + 16) = a3;
  return result;
}

id sub_100149408(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1 || (v2 = [v1 address], objc_opt_class(), !v2))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v2 getPort];
}

IOSClass *sub_10014947C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = [v1 address];
  objc_opt_class();
  if (!v2)
  {
    goto LABEL_10;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v3 = [v2 getHostName];
  if (!v3)
  {
    v4 = [v2 getAddress];
    if (v4)
    {
      v3 = [v4 getHostAddress];
      goto LABEL_7;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_7:

  return JavaNetInetAddress_getByNameWithNSString_(v3);
}

id sub_100149514(void *a1, void *a2, uint64_t a3, int a4)
{
  v8 = a1[3];
  v9 = sub_10014947C(a1);
  v10 = sub_100149408(a1);
  LibcoreIoIoBridge_connectWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_withInt_(v8, v9, v10, a4);
  sub_1001495F8(a1, a2, a3);
  result = JreStrongAssign(&qword_100554928, a2);
  dword_100554930 = a3;
  return result;
}

id sub_1001495F8(void *a1, void *a2, uint64_t a3)
{
  sub_1001498E4(a1, 1, a2, a3);
  v4 = [JavaNetPlainSocketImpl socksReadReply]_0(a1);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  result = [(JavaNetSocks4Message *)v4 getCommandOrResult];
  if (result != 90)
  {
    v7 = new_JavaIoIOException_initWithNSString_([(JavaNetSocks4Message *)v5 getErrorStringWithInt:[(JavaNetSocks4Message *)v5 getCommandOrResult]]);
    objc_exception_throw(v7);
  }

  return result;
}

id sub_1001498E4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = new_JavaNetSocks4Message_init();
  [(JavaNetSocks4Message *)v8 setCommandOrResultWithInt:a2];
  [(JavaNetSocks4Message *)v8 setPortWithInt:a4];
  if (!a3 || (-[JavaNetSocks4Message setIPWithByteArray:](v8, "setIPWithByteArray:", [a3 getAddress]), -[JavaNetSocks4Message setUserIdWithNSString:](v8, "setUserIdWithNSString:", @"default"), (v9 = objc_msgSend(a1, "getOutputStream")) == 0))
  {
    JreThrowNullPointerException();
  }

  v10 = v9;
  v11 = [(JavaNetSocks4Message *)v8 getBytes];
  v12 = [(JavaNetSocks4Message *)v8 getLength];

  return [v10 writeWithByteArray:v11 withInt:0 withInt:v12];
}

uint64_t sub_100149B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a2 + 8), a3, a4);
  if (*(a1 + 37))
  {
    return 0xFFFFFFFFLL;
  }

  result = LibcoreIoIoBridge_recvfromWithBoolean_withJavaIoFileDescriptor_withByteArray_withInt_withInt_withInt_withJavaNetDatagramPacket_withBoolean_(1, *(a1 + 24), a2, a3, a4, 0, 0, 0);
  if (result == -1)
  {
    *(a1 + 37) = 1;
  }

  else if (!result)
  {
    v9 = new_JavaNetSocketTimeoutException_init();
    objc_exception_throw(v9);
  }

  return result;
}

id sub_100149C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = a4;
  v5 = a3;
  result = JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a2 + 8), a3, a4);
  if (*(a1 + 36) == 1)
  {
    if (v4 >= 1)
    {
      do
      {
        result = LibcoreIoIoBridge_sendtoWithJavaIoFileDescriptor_withByteArray_withInt_withInt_withInt_withJavaNetInetAddress_withInt_(*(a1 + 24), a2, v5, v4, 0, 0, 0);
        v4 = (v4 - result);
        v5 = (result + v5);
      }

      while (v4 > 0);
    }
  }

  else
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);

    return LibcoreIoIoBridge_sendtoWithJavaIoFileDescriptor_withByteArray_withInt_withInt_withInt_withJavaNetInetAddress_withInt_(v9, a2, v5, v4, 0, v10, v11);
  }

  return result;
}

JavaNetPlainSocketImpl *new_JavaNetPlainSocketImpl_initWithJavaNetProxy_(void *a1)
{
  v2 = [JavaNetPlainSocketImpl alloc];
  JavaNetPlainSocketImpl_initWithJavaNetProxy_(v2, a1);
  return v2;
}

JavaNetPlainSocketImpl *new_JavaNetPlainSocketImpl_init()
{
  v0 = [JavaNetPlainSocketImpl alloc];
  v1 = new_JavaIoFileDescriptor_init();
  JavaNetPlainSocketImpl_initWithJavaIoFileDescriptor_(v0, v1);
  return v0;
}

JavaNetPlainSocketImpl *new_JavaNetPlainSocketImpl_initWithJavaIoFileDescriptor_withInt_withJavaNetInetAddress_withInt_(void *a1, int a2, void *a3, int a4)
{
  v8 = [JavaNetPlainSocketImpl alloc];
  JavaNetPlainSocketImpl_initWithJavaIoFileDescriptor_withInt_withJavaNetInetAddress_withInt_(v8, a1, a2, a3, a4);
  return v8;
}

id JavaUtilMissingResourceException_initWithNSString_withNSString_withNSString_(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  JavaLangRuntimeException_initWithNSString_(a1, a2);
  JreStrongAssign((a1 + 88), a3);

  return JreStrongAssign((a1 + 96), a4);
}

JavaUtilMissingResourceException *new_JavaUtilMissingResourceException_initWithNSString_withNSString_withNSString_(uint64_t a1, void *a2, void *a3)
{
  v6 = [JavaUtilMissingResourceException alloc];
  JavaUtilMissingResourceException_initWithNSString_withNSString_withNSString_(v6, a1, a2, a3);
  return v6;
}

JavaNioChannelsIllegalBlockingModeException *new_JavaNioChannelsIllegalBlockingModeException_init()
{
  v0 = [JavaNioChannelsIllegalBlockingModeException alloc];
  JavaLangIllegalStateException_init(v0, v1);
  return v0;
}

id JavaLangRefReference_initWithId_withJavaLangRefReferenceQueue_(uint64_t a1, unint64_t a2, unint64_t a3)
{
  atomic_store(a2, (a1 + 8));
  atomic_store(a3, (a1 + 16));
  return [IOSReference initReferent:a1];
}

JavaIoInvalidObjectException *new_JavaIoInvalidObjectException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaIoInvalidObjectException alloc];
  JavaIoObjectStreamException_initWithNSString_(v2, a1);
  return v2;
}

NSString *JavaNioCharsetModifiedUtf8_decodeWithByteArray_withCharArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 >= 1)
  {
    if (!a1)
    {
LABEL_43:
      JreThrowNullPointerException();
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(a1 + 8);
      v12 = v9 + a3;
      if (v9 + a3 < 0 || v12 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v12);
      }

      if (!a2)
      {
        goto LABEL_43;
      }

      v13 = *(a1 + 12 + v12);
      v14 = *(a2 + 8);
      if ((v10 & 0x80000000) != 0 || v10 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v10);
      }

      v15 = v9 + 1;
      *(a2 + 12 + 2 * v10) = v13;
      if (v13 < 0)
      {
        v16 = *(a2 + 8);
        if ((v10 & 0x80000000) != 0 || v10 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v10);
        }

        v17 = *(a2 + 12 + 2 * v10);
        if ((v17 & 0xE0) == 0xC0)
        {
          if (v15 >= a4)
          {
            goto LABEL_44;
          }

          v18 = *(a1 + 8);
          v19 = v15 + a3;
          if (v15 + a3 < 0 || v19 >= v18)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, v19);
          }

          v20 = *(a1 + 12 + v19);
          if ((v20 & 0xC0) != 0x80)
          {
LABEL_44:
            v30 = @"bad second byte at ";
            goto LABEL_48;
          }

          v15 = v9 + 2;
          v21 = v20 & 0x3F | ((*(a2 + 12 + 2 * v10) & 0x1F) << 6);
        }

        else
        {
          if ((v17 & 0xF0) != 0xE0)
          {
            v30 = @"bad byte at ";
            goto LABEL_48;
          }

          v22 = v9 + 2;
          if (v9 + 2 >= a4)
          {
            v30 = @"bad third byte at ";
            goto LABEL_48;
          }

          v23 = *(a1 + 8);
          v24 = v15 + a3;
          if (v15 + a3 < 0 || v24 >= v23)
          {
            IOSArray_throwOutOfBoundsWithMsg(v23, v24);
          }

          v25 = *(a1 + 12 + v15 + a3);
          v26 = v22 + a3;
          if (v22 + a3 < 0 || v26 >= v23)
          {
            IOSArray_throwOutOfBoundsWithMsg(v23, v26);
          }

          if ((v25 & 0xC0) != 0x80 || (v27 = *(a1 + 12 + v22 + a3), (v27 & 0xC0) != 0x80))
          {
            v30 = @"bad second or third byte at ";
LABEL_48:
            v31 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, v30);
            v32 = new_JavaIoUTFDataFormatException_initWithNSString_(v31);
            objc_exception_throw(v32);
          }

          v15 = v9 + 3;
          v21 = (v17 << 12) | ((v25 & 0x3F) << 6) | v27 & 0x3F;
        }

        v28 = *(a2 + 8);
        if ((v10 & 0x80000000) != 0 || v10 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, v10);
        }

        *(a2 + 12 + 2 * v10) = v21;
      }

      v10 = (v10 + 1);
      v9 = v15;
      if (v15 >= a4)
      {
        goto LABEL_40;
      }
    }
  }

  v10 = 0;
LABEL_40:

  return [NSString stringWithCharacters:a2 offset:0 length:v10];
}

uint64_t JavaNioCharsetModifiedUtf8_countBytesWithNSString_withBoolean_(void *a1, int a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = [a1 length];
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = [a1 charAtWithInt:v6];
    if (v7 < 0x800)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    if (v7 - 1 < 0x7F)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v5 += v9;
    if (a2 && v5 >= 0x10000)
    {
      v11 = new_JavaIoUTFDataFormatException_initWithNSString_(@"String more than 65535 UTF bytes long");
      objc_exception_throw(v11);
    }

    v6 = (v6 + 1);
  }

  while (v4 != v6);
  return v5;
}

uint64_t JavaNioCharsetModifiedUtf8_encodeWithByteArray_withInt_withNSString_(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
LABEL_32:
    JreThrowNullPointerException();
  }

  v3 = a3;
  result = [a3 length];
  v7 = result;
  if (result >= 1)
  {
    v8 = 0;
    v17 = v3;
    do
    {
      v9 = [v3 charAtWithInt:v8];
      v10 = v9;
      if (v9 - 1 > 0x7E)
      {
        if (v9 > 0x7FF)
        {
          if (!a1)
          {
            goto LABEL_32;
          }

          v14 = *(a1 + 8);
          if ((a2 & 0x80000000) != 0 || a2 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, a2);
          }

          v15 = a2 + 1;
          *(a1 + 12 + a2) = (v10 >> 12) | 0xE0;
          v16 = *(a1 + 8);
          if (a2 + 1 < 0 || v15 >= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, (a2 + 1));
          }

          *(a1 + 12 + v15) = (v10 >> 6) & 0x3F | 0x80;
          v11 = v10 & 0x3F | 0x80;
          v12 = (a2 + 3);
          result = *(a1 + 8);
          if (a2 + 2 < 0 || a2 + 2 >= result)
          {
            IOSArray_throwOutOfBoundsWithMsg(result, (a2 + 2));
          }

          LODWORD(a2) = a2 + 2;
          v3 = v17;
        }

        else
        {
          if (!a1)
          {
            goto LABEL_32;
          }

          v13 = *(a1 + 8);
          if ((a2 & 0x80000000) != 0 || a2 >= v13)
          {
            IOSArray_throwOutOfBoundsWithMsg(v13, a2);
          }

          *(a1 + 12 + a2) = (v10 >> 6) | 0xC0;
          v11 = v10 & 0x3F | 0x80;
          v12 = (a2 + 2);
          result = *(a1 + 8);
          if (a2 + 1 < 0 || a2 + 1 >= result)
          {
            IOSArray_throwOutOfBoundsWithMsg(result, (a2 + 1));
          }

          LODWORD(a2) = a2 + 1;
        }
      }

      else
      {
        if (!a1)
        {
          goto LABEL_32;
        }

        v11 = v9;
        v12 = (a2 + 1);
        result = *(a1 + 8);
        if ((a2 & 0x80000000) != 0 || a2 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a2);
        }
      }

      *(a1 + 12 + a2) = v11;
      v8 = (v8 + 1);
      a2 = v12;
    }

    while (v7 != v8);
  }

  return result;
}

IOSByteArray *JavaNioCharsetModifiedUtf8_encodeWithNSString_(void *a1)
{
  v2 = JavaNioCharsetModifiedUtf8_countBytesWithNSString_withBoolean_(a1, 1);
  v3 = [IOSByteArray arrayWithLength:v2 + 2];
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  LibcoreIoMemory_pokeShortWithByteArray_withInt_withShort_withJavaNioByteOrder_(v3, 0, v2, JavaNioByteOrder_BIG_ENDIAN__);
  JavaNioCharsetModifiedUtf8_encodeWithByteArray_withInt_withNSString_(v3, 2, a1);
  return v3;
}

JavaNioCharsetCoderMalfunctionError *new_JavaNioCharsetCoderMalfunctionError_initWithJavaLangException_(uint64_t a1)
{
  v2 = [JavaNioCharsetCoderMalfunctionError alloc];
  JavaLangError_initWithJavaLangThrowable_(v2, a1);
  return v2;
}

JavaNioChannelsConnectionPendingException *new_JavaNioChannelsConnectionPendingException_init()
{
  v0 = [JavaNioChannelsConnectionPendingException alloc];
  JavaLangIllegalStateException_init(v0, v1);
  return v0;
}

id JavaUtilHashSet_init(uint64_t a1)
{
  v2 = new_JavaUtilHashMap_init();
  JavaUtilAbstractSet_init(a1, v3);

  return JreStrongAssign((a1 + 8), v2);
}

id JavaUtilHashSet_initWithInt_(uint64_t a1, uint64_t a2)
{
  v3 = new_JavaUtilHashMap_initWithInt_(a2);
  JavaUtilAbstractSet_init(a1, v4);

  return JreStrongAssign((a1 + 8), v3);
}

id JavaUtilHashSet_initWithInt_withFloat_(uint64_t a1, uint64_t a2, float a3)
{
  v4 = new_JavaUtilHashMap_initWithInt_withFloat_(a2, a3);
  JavaUtilAbstractSet_init(a1, v5);

  return JreStrongAssign((a1 + 8), v4);
}

id JavaUtilHashSet_initWithJavaUtilCollection_(id *a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if ([a2 size] >= 6)
  {
    v4 = 2 * [a2 size];
  }

  else
  {
    v4 = 11;
  }

  v5 = new_JavaUtilHashMap_initWithInt_(v4);
  JavaUtilAbstractSet_init(a1, v6);
  JreStrongAssign(a1 + 1, v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(a2);
        }

        [a1 addWithId:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

id JavaUtilHashSet_initWithJavaUtilHashMap_(uint64_t a1, void *a2)
{
  JavaUtilAbstractSet_init(a1, a2);

  return JreStrongAssign((a1 + 8), a2);
}

JavaUtilHashSet *new_JavaUtilHashSet_init()
{
  v0 = [JavaUtilHashSet alloc];
  JavaUtilHashSet_init(v0);
  return v0;
}

JavaUtilHashSet *new_JavaUtilHashSet_initWithInt_(uint64_t a1)
{
  v2 = [JavaUtilHashSet alloc];
  JavaUtilHashSet_initWithInt_(v2, a1);
  return v2;
}

JavaUtilHashSet *new_JavaUtilHashSet_initWithJavaUtilCollection_(void *a1)
{
  v2 = [JavaUtilHashSet alloc];
  JavaUtilHashSet_initWithJavaUtilCollection_(&v2->super.super.super.isa, a1);
  return v2;
}

JavaNioChannelsNotYetBoundException *new_JavaNioChannelsNotYetBoundException_init()
{
  v0 = [JavaNioChannelsNotYetBoundException alloc];
  JavaLangIllegalStateException_init(v0, v1);
  return v0;
}

id JavaNioMappedByteBuffer_initWithJavaNioMemoryBlock_withInt_withJavaNioChannelsFileChannel_MapMode_withLong_(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  JavaNioByteBuffer_initWithInt_withLong_(a1, a3, a5, a4, a5, a6, a7, a8);
  JreStrongAssign((a1 + 48), a4);

  return JreStrongAssign((a1 + 56), a2);
}

void sub_10014C344(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x10014C304);
}

id sub_10014C5A8(void *a1, void *a2, void *a3)
{
  if (!a3)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  result = [a3 length];
  if (result >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [a3 charAtWithInt:v8];
      if (v10 != 92 || (v9 & 1) != 0)
      {
        if ((v10 != 36) | v9 & 1)
        {
          if ((((v10 - 48) < 0xA) & v7) == 1)
          {
            if (!a2)
            {
              goto LABEL_17;
            }

            [a2 appendWithNSString:{objc_msgSend(a1, "groupWithInt:")}];
            v7 = 0;
          }

          else
          {
            if (!a2)
            {
              goto LABEL_17;
            }

            [a2 appendWithChar:v10];
            v7 = 0;
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
          v7 = 1;
        }
      }

      else
      {
        v9 = 1;
      }

      v8 = (v8 + 1);
      result = [a3 length];
    }

    while (v8 < result);
    if (v9)
    {
      [a3 length];
      v11 = new_JavaLangArrayIndexOutOfBoundsException_initWithInt_();
      objc_exception_throw(v11);
    }
  }

  return result;
}

uint64_t sub_10014C720(uint64_t a1, void *a2, int a3, int a4)
{
  if (!a2)
  {
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(@"input == null");
LABEL_11:
    objc_exception_throw(v11);
  }

  if ((a4 | a3) < 0 || [a2 length] < a3 || (v8 = objc_msgSend(a2, "length"), a3 > a4) || v8 < a4)
  {
    v11 = new_JavaLangIndexOutOfBoundsException_init();
    goto LABEL_11;
  }

  JreStrongAssign((a1 + 24), [a2 description]);
  v9 = *(a1 + 24);
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 32), [v9 toCharArray]);
  *(a1 + 40) = a3;
  *(a1 + 44) = a4;
  [JavaUtilRegexMatcher resetForInput]_0(a1);
  *(a1 + 52) = 0;
  *(a1 + 48) = 0;
  return a1;
}

void JavaUtilRegexMatcher_closeImplWithLong_(URegularExpression *regexp)
{
  if (qword_100554958 != -1)
  {
    sub_10014D714();
  }

  v2 = qword_100554950;

  Java_java_util_regex_Matcher_closeImpl(J2ObjC_JNIEnv, v2, regexp);
}

URegularExpression *JavaUtilRegexMatcher_openImplWithLong_(URegularExpression *regexp)
{
  if (qword_100554958 != -1)
  {
    sub_10014D714();
  }

  v2 = qword_100554950;

  return Java_java_util_regex_Matcher_openImpl(J2ObjC_JNIEnv, v2, regexp);
}

BOOL JavaUtilRegexMatcher_findImplWithLong_withInt_withIntArray_(URegularExpression *regexp, int32_t startIndex, uint64_t a3)
{
  if (qword_100554958 != -1)
  {
    sub_10014D714();
  }

  v6 = qword_100554950;

  return Java_java_util_regex_Matcher_findImpl(J2ObjC_JNIEnv, v6, regexp, startIndex, a3);
}

BOOL JavaUtilRegexMatcher_findNextImplWithLong_withIntArray_(URegularExpression *regexp, uint64_t a2)
{
  if (qword_100554958 != -1)
  {
    sub_10014D714();
  }

  v4 = qword_100554950;

  return Java_java_util_regex_Matcher_findNextImpl(J2ObjC_JNIEnv, v4, regexp, a2);
}

BOOL JavaUtilRegexMatcher_lookingAtImplWithLong_withIntArray_(URegularExpression *regexp, uint64_t a2)
{
  if (qword_100554958 != -1)
  {
    sub_10014D714();
  }

  v4 = qword_100554950;

  return Java_java_util_regex_Matcher_lookingAtImpl(J2ObjC_JNIEnv, v4, regexp, a2);
}

BOOL JavaUtilRegexMatcher_matchesImplWithLong_withIntArray_(URegularExpression *regexp, uint64_t a2)
{
  if (qword_100554958 != -1)
  {
    sub_10014D714();
  }

  v4 = qword_100554950;

  return Java_java_util_regex_Matcher_matchesImpl(J2ObjC_JNIEnv, v4, regexp, a2);
}

NSString *JavaUtilRegexMatcher_quoteReplacementWithNSString_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = new_JavaLangStringBuilder_initWithInt_([a1 length]);
  if ([a1 length] >= 1)
  {
    v3 = 0;
    do
    {
      v4 = [a1 charAtWithInt:v3];
      v5 = v4;
      if (v4 == 92 || v4 == 36)
      {
        [(JavaLangStringBuilder *)v2 appendWithChar:92];
      }

      [(JavaLangStringBuilder *)v2 appendWithChar:v5];
      v3 = (v3 + 1);
    }

    while (v3 < [a1 length]);
  }

  return [(JavaLangStringBuilder *)v2 description];
}

uint64_t JavaUtilRegexMatcher_useAnchoringBoundsImplWithLong_withBoolean_(URegularExpression *regexp, UBool b)
{
  if (qword_100554958 != -1)
  {
    sub_10014D714();
  }

  v4 = qword_100554950;

  return Java_java_util_regex_Matcher_useAnchoringBoundsImpl(J2ObjC_JNIEnv, v4, regexp, b);
}

uint64_t JavaUtilRegexMatcher_useTransparentBoundsImplWithLong_withBoolean_(URegularExpression *regexp, UBool b)
{
  if (qword_100554958 != -1)
  {
    sub_10014D714();
  }

  v4 = qword_100554950;

  return Java_java_util_regex_Matcher_useTransparentBoundsImpl(J2ObjC_JNIEnv, v4, regexp, b);
}

BOOL JavaUtilRegexMatcher_requireEndImplWithLong_(URegularExpression *regexp)
{
  if (qword_100554958 != -1)
  {
    sub_10014D714();
  }

  v2 = qword_100554950;

  return Java_java_util_regex_Matcher_requireEndImpl(J2ObjC_JNIEnv, v2, regexp);
}

BOOL JavaUtilRegexMatcher_hitEndImplWithLong_(URegularExpression *regexp)
{
  if (qword_100554958 != -1)
  {
    sub_10014D714();
  }

  v2 = qword_100554950;

  return Java_java_util_regex_Matcher_hitEndImpl(J2ObjC_JNIEnv, v2, regexp);
}

uint64_t JavaUtilRegexMatcher_groupCountImplWithLong_(URegularExpression *regexp)
{
  if (qword_100554958 != -1)
  {
    sub_10014D714();
  }

  v2 = qword_100554950;

  return Java_java_util_regex_Matcher_groupCountImpl(J2ObjC_JNIEnv, v2, regexp);
}

uint64_t JavaUtilRegexMatcher_setInputImplWithLong_withCharArray_withInt_withInt_(URegularExpression *regexp, uint64_t a2, int32_t a3, int32_t a4)
{
  if (qword_100554958 != -1)
  {
    sub_10014D714();
  }

  v8 = qword_100554950;

  return Java_java_util_regex_Matcher_setInputImpl(J2ObjC_JNIEnv, v8, regexp, a2, a3, a4);
}

JavaUtilRegexMatcher *new_JavaUtilRegexMatcher_initWithJavaUtilRegexPattern_withJavaLangCharSequence_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaUtilRegexMatcher alloc];
  v4->anchoringBounds_ = 1;
  [(JavaUtilRegexMatcher *)v4 usePatternWithJavaUtilRegexPattern:a1];
  [(JavaUtilRegexMatcher *)v4 resetWithJavaLangCharSequence:a2];
  return v4;
}

JavaNioChannelsIllegalSelectorException *new_JavaNioChannelsIllegalSelectorException_init()
{
  v0 = [JavaNioChannelsIllegalSelectorException alloc];
  JavaLangIllegalArgumentException_init(v0, v1);
  return v0;
}

uint64_t JavaTextParseException_initWithNSString_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  JreStrcat("$IC", a2, a3, a4, a5, a6, a7, a8, @" (at offset ");
  v18 = JreStrcat("$$", v11, v12, v13, v14, v15, v16, v17, a2);
  result = JavaLangException_initWithNSString_(a1, v18);
  *(a1 + 84) = v8;
  return result;
}

JavaTextParseException *new_JavaTextParseException_initWithNSString_withInt_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaTextParseException alloc];
  JavaTextParseException_initWithNSString_withInt_(v4, a1, a2, v5, v6, v7, v8, v9);
  return v4;
}

IOSIntArray *JavaMathDivision_divideWithIntArray_withInt_withIntArray_withInt_withIntArray_withInt_(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, unsigned int *a5, unsigned int a6)
{
  v8 = a4;
  v11 = [IOSIntArray arrayWithLength:a4 + 1];
  v12 = [IOSIntArray arrayWithLength:(a6 + 1)];
  if (!a5)
  {
    JreThrowNullPointerException();
  }

  v13 = v12;
  v14 = a5[2];
  v56 = a6;
  v15 = a6 - 1;
  v16 = (a6 - 1);
  if (v16 < 0 || v15 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v15);
  }

  v17 = JavaLangInteger_numberOfLeadingZerosWithInt_(a5[v16 + 3]);
  v53 = v17;
  if (v17)
  {
    v18 = a5;
    v19 = v17;
    JavaMathBitLevel_shiftLeftWithIntArray_withIntArray_withInt_withInt_(v13, v18, 0, v17);
    JavaMathBitLevel_shiftLeftWithIntArray_withIntArray_withInt_withInt_(v11, a3, 0, v19);
    v20 = v56;
  }

  else
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a3, 0, v11, v17, v8);
    v21 = a5;
    v20 = v56;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v21, 0, v13, 0, v56);
  }

  size = v13->super.size_;
  if (v16 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v16);
  }

  v24 = (a2 - 1);
  v23 = a2 - 1 < 0;
  v25 = a1;
  if (!v23)
  {
    v62 = *(&v13->super.size_ + v16 + 1);
    v61 = v20 - 2;
    v60 = v13 + v20 - 2;
    v54 = v20;
    v26 = (v8 - v20);
    while (1)
    {
      v59 = v24;
      v27 = v8;
      v28 = v11->super.size_;
      if ((v8 & 0x80000000) != 0 || v8 >= v28)
      {
        IOSArray_throwOutOfBoundsWithMsg(v28, v8);
      }

      v29 = *(&v11->super.size_ + v8 + 1);
      if (v29 == v62)
      {
        break;
      }

      v31 = v11->super.size_;
      if ((v8 & 0x80000000) != 0 || v8 >= v31)
      {
        IOSArray_throwOutOfBoundsWithMsg(v31, v8);
      }

      v32 = v8 - 1;
      if (v8 - 1 < 0 || v32 >= v31)
      {
        IOSArray_throwOutOfBoundsWithMsg(v31, v32);
      }

      v33 = JavaMathDivision_divideLongByIntWithLong_withInt_((v29 << 32) | *(&v11->super.size_ + v8), v62);
      if (v33)
      {
        v34 = 0;
        v35 = HIDWORD(v33);
        v57 = v8;
        v36 = (v8 - 2);
        do
        {
          v30 = v33;
          if (v34)
          {
            break;
          }

          v37 = v13->super.size_;
          if (v61 < 0 || v61 >= v37)
          {
            IOSArray_throwOutOfBoundsWithMsg(v37, v61);
          }

          v38 = v11->super.size_;
          if ((v36 & 0x80000000) != 0 || v36 >= v38)
          {
            IOSArray_throwOutOfBoundsWithMsg(v38, v36);
          }

          v39 = v60[3] * v30;
          v40 = (v35 << 32) | *(&v11->super.size_ + v36 + 1);
          v41 = v62 + v35;
          v42 = JavaLangInteger_numberOfLeadingZerosWithInt_(SHIDWORD(v41));
          v34 = v42 < 32;
          v35 = v42 >= 32 ? v41 : v35;
          LODWORD(v33) = v30 - 1;
        }

        while (v39 > v40);
        v20 = v56;
        v25 = a1;
        v27 = v57;
        if (!v30)
        {
          goto LABEL_48;
        }

        goto LABEL_34;
      }

      v30 = 0;
      v20 = v56;
LABEL_48:
      if (v25)
      {
        v51 = *(v25 + 8);
        if (v59 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, v59);
        }

        *(v25 + 12 + 4 * v59) = v30;
      }

      LODWORD(v8) = v27 - 1;
      v24 = v59 - 1;
      --v26;
      if (v59 <= 0)
      {
        goto LABEL_57;
      }
    }

    v30 = -1;
LABEL_34:
    if (JavaMathDivision_multiplyAndSubtractWithIntArray_withInt_withIntArray_withInt_withInt_(v11, (v27 - v20), v13, v20, v30))
    {
      --v30;
      if (v20 >= 1)
      {
        v58 = v27;
        v43 = 0;
        v44 = 0;
        v45 = v13;
        do
        {
          v46 = v26 + v43;
          v47 = v11->super.size_;
          if (v26 + v43 < 0 || v46 >= v47)
          {
            IOSArray_throwOutOfBoundsWithMsg(v47, v26 + v43);
          }

          v48 = v13->super.size_;
          if (v43 >= v48)
          {
            IOSArray_throwOutOfBoundsWithMsg(v48, v43);
          }

          v49 = v11->super.size_;
          if (v46 < 0 || v46 >= v49)
          {
            IOSArray_throwOutOfBoundsWithMsg(v49, v26 + v43);
          }

          v50 = v44 + *(&v11->super.size_ + v46 + 1) + *(&v45->super.size_ + 1);
          *(&v11->super.size_ + v46 + 1) = v50;
          v44 = HIDWORD(v50);
          ++v43;
          v45 = (v45 + 4);
        }

        while (v54 != v43);
        v20 = v56;
        v25 = a1;
        v27 = v58;
      }
    }

    goto LABEL_48;
  }

LABEL_57:
  if (v53)
  {
    JavaMathBitLevel_shiftRightWithIntArray_withInt_withIntArray_withInt_withInt_(v13, v20, v11, 0, v53);
  }

  else
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v11, 0, v13, 0, v20);
    return v11;
  }

  return v13;
}

unint64_t JavaMathDivision_divideArrayByIntWithIntArray_withIntArray_withInt_withInt_(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v4 = (a3 - 1);
  if (a3 - 1 >= 0)
  {
    if (a2)
    {
      v6 = 0;
      v7 = a4 >> 1;
      while (1)
      {
        v8 = *(a2 + 8);
        if (v4 >= v8)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, v4);
        }

        v9 = *(a2 + 12 + 4 * v4);
        v10 = (v6 << 32) | v9;
        if (((v6 << 32) & 0x8000000000000000) != 0)
        {
          v12 = v10 >> 1;
          v13 = v12 / v7;
          v14 = v9 & 1 | (2 * (v12 % v7));
          v15 = v12 / v7 - v14;
          v16 = 2 * a4 - v13 + v14;
          v17 = v15 <= a4;
          if (v15 <= a4)
          {
            v18 = v13 - 1;
          }

          else
          {
            v18 = v13 - 2;
          }

          if (v17)
          {
            v16 = a4 - v13 + v14;
          }

          if (v13 <= v14)
          {
            v18 = v13;
            v16 = v14 - v13;
          }

          if (a4)
          {
            LODWORD(v11) = v18;
          }

          else
          {
            LODWORD(v11) = v13;
          }

          if (a4)
          {
            v6 = v16;
          }

          else
          {
            v6 = v14;
          }

          if (!a1)
          {
            break;
          }
        }

        else
        {
          v11 = v10 / a4;
          v6 = v10 % a4;
          if (!a1)
          {
            break;
          }
        }

        v19 = *(a1 + 8);
        if (v4 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, v4);
        }

        *(a1 + 12 + 4 * v4) = v11;
        v17 = v4-- <= 0;
        if (v17)
        {
          return v6;
        }
      }
    }

    JreThrowNullPointerException();
  }

  return 0;
}

unint64_t JavaMathDivision_remainderArrayByIntWithIntArray_withInt_withInt_(uint64_t a1, int a2, unsigned int a3)
{
  v3 = (a2 - 1);
  if (a2 - 1 < 0)
  {
    return 0;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v6 = 0;
  do
  {
    v7 = *(a1 + 8);
    if (v3 >= v7)
    {
      IOSArray_throwOutOfBoundsWithMsg(v7, v3);
    }

    v8 = JavaMathDivision_divideLongByIntWithLong_withInt_((v6 << 32) | *(a1 + 12 + 4 * v3), a3);
    v6 = v8 >> 32;
  }

  while (v3-- > 0);
  return HIDWORD(v8);
}

unint64_t JavaMathDivision_remainderWithJavaMathBigInteger_withInt_(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 8);

  return JavaMathDivision_remainderArrayByIntWithIntArray_withInt_withInt_(v5, v4, a2);
}

unint64_t JavaMathDivision_divideLongByIntWithLong_withInt_(unint64_t a1, unsigned int a2)
{
  v2 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v4 = a2 >> 1;
    v5 = (a1 >> 1) / v4;
    v3 = a1 & 1 | (2 * ((a1 >> 1) % v4));
    if ((v5 - v3) <= a2)
    {
      v6 = a2 - v5 + v3;
    }

    else
    {
      v6 = v3 - v5 + 2 * a2;
    }

    if ((v5 - v3) <= a2)
    {
      LODWORD(v7) = v5 - 1;
    }

    else
    {
      LODWORD(v7) = v5 - 2;
    }

    if (v5 <= v3)
    {
      v6 = v3 - v5;
      v7 = (a1 >> 1) / v4;
    }

    if (a2)
    {
      LODWORD(v3) = v6;
      LODWORD(a1) = v7;
    }

    else
    {
      LODWORD(a1) = (a1 >> 1) / v4;
    }
  }

  else
  {
    a1 /= a2;
    v3 = v2 % a2;
  }

  return a1 | (v3 << 32);
}

IOSObjectArray *JavaMathDivision_divideAndRemainderByIntegerWithJavaMathBigInteger_withInt_withInt_(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  if (v5 != 1)
  {
    if (v6 == a3)
    {
      v15 = 1;
    }

    else
    {
      v15 = -1;
    }

    v16 = [IOSIntArray arrayWithLength:v5];
    v21 = JavaMathDivision_divideArrayByIntWithIntArray_withIntArray_withInt_withInt_(v16, v4, v5, a2);
    v17 = [IOSIntArray arrayWithInts:&v21 count:1];
    v18 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v15, v5, v16);
    v19 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v6, 1, v17);
    [(JavaMathBigInteger *)v18 cutOffLeadingZeroes];
    [(JavaMathBigInteger *)v19 cutOffLeadingZeroes];
    v22[0] = v18;
    v22[1] = v19;
    v13 = JavaMathBigInteger_class_();
    v14 = v22;
    return [IOSObjectArray arrayWithObjects:v14 count:2 type:v13];
  }

  if (!v4)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v7 = *(v4 + 8);
  if (v7 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 0);
  }

  v8 = *(v4 + 12);
  v9 = v8 / a2;
  v10 = v8 % a2;
  if (v6 == a3)
  {
    v11 = v9;
  }

  else
  {
    v11 = -v9;
  }

  if (v6 >= 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = -v10;
  }

  v23[0] = JavaMathBigInteger_valueOfWithLong_(v11);
  v23[1] = JavaMathBigInteger_valueOfWithLong_(v12);
  v13 = JavaMathBigInteger_class_();
  v14 = v23;
  return [IOSObjectArray arrayWithObjects:v14 count:2 type:v13];
}

unint64_t JavaMathDivision_multiplyAndSubtractWithIntArray_withInt_withIntArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v23 = a2;
  if (a4 >= 1)
  {
    if (a3)
    {
      v8 = 0;
      v9 = 0;
      LODWORD(v10) = 0;
      v11 = a2;
      v12 = a4;
      while (1)
      {
        v13 = *(a3 + 8);
        if (v8 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v8);
        }

        v14 = JavaMathMultiplication_unsignedMultAddAddWithInt_withInt_withInt_withInt_(*(a3 + 12 + 4 * v8), a5, v10, 0);
        if (!a1)
        {
          break;
        }

        v15 = v14;
        v16 = *(a1 + 8);
        if ((v11 & 0x80000000) != 0 || v11 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v11);
        }

        if ((v11 & 0x80000000) != 0 || v11 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v11);
        }

        v17 = v9 - v15 + *(a1 + 12 + 4 * v11);
        *(a1 + 12 + 4 * v11) = v17;
        v9 = v17 >> 32;
        v10 = HIDWORD(v15);
        ++v8;
        v11 = (v11 + 1);
        if (v12 == v8)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_22:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_22;
  }

  v9 = 0;
  v10 = 0;
LABEL_17:
  v18 = *(a1 + 8);
  v19 = a4 + v23;
  v20 = a4 + v23;
  if (a4 + v23 < 0 || v19 >= v18)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v19);
  }

  if ((v20 & 0x80000000) != 0 || v20 >= v18)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v20);
  }

  v21 = *(a1 + 12 + 4 * v20) - v10 + v9;
  *(a1 + 12 + 4 * v20) = v21;
  return HIDWORD(v21);
}

id JavaMathDivision_gcdBinaryWithJavaMathBigInteger_withJavaMathBigInteger_(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_29;
  }

  v4 = [a1 getLowestSetBit];
  if (!a2)
  {
    goto LABEL_29;
  }

  v5 = v4;
  v6 = [a2 getLowestSetBit];
  v7 = JavaLangMath_minWithInt_withInt_(v5, v6);
  JavaMathBitLevel_inplaceShiftRightWithJavaMathBigInteger_withInt_(a1, v5);
  JavaMathBitLevel_inplaceShiftRightWithJavaMathBigInteger_withInt_(a2, v6);
  v8 = [a1 compareToWithId:a2];
  v9 = (v8 == 1 ? a1 : a2);
  v10 = (v8 == 1 ? a2 : a1);
  while (1)
  {
    v11 = v10;
    v12 = *(v9 + 16);
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        break;
      }

      goto LABEL_16;
    }

    v13 = *(v9 + 8);
    if (!v13)
    {
      goto LABEL_29;
    }

    v14 = *(v13 + 8);
    if (v14 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, 1);
    }

    if (*(v13 + 16) >= 1)
    {
      break;
    }

    v12 = *(v9 + 16);
LABEL_16:
    if (v10[4] * 1.2 >= v12)
    {
      do
      {
        JavaMathElementary_inplaceSubtractWithJavaMathBigInteger_withJavaMathBigInteger_(v9, v11);
        JavaMathBitLevel_inplaceShiftRightWithJavaMathBigInteger_withInt_(v9, [v9 getLowestSetBit]);
      }

      while (([v9 compareToWithId:v11] & 0x80000000) == 0);
    }

    else
    {
      v15 = [v9 remainderWithJavaMathBigInteger:v10];
      if (!v15)
      {
        goto LABEL_29;
      }

      v9 = v15;
      if ([v15 signum])
      {
        JavaMathBitLevel_inplaceShiftRightWithJavaMathBigInteger_withInt_(v9, [v9 getLowestSetBit]);
      }
    }

    v10 = v9;
    v16 = *(v9 + 20);
    v9 = v11;
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  v17 = JavaMathDivision_gcdBinaryWithLong_withLong_([v10 longLongValue], objc_msgSend(v9, "longLongValue"));
  v11 = JavaMathBigInteger_valueOfWithLong_(v17);
LABEL_25:
  if (!v11)
  {
LABEL_29:
    JreThrowNullPointerException();
  }

  return [(JavaMathBigInteger *)v11 shiftLeftWithInt:v7];
}

int64_t JavaMathDivision_gcdBinaryWithLong_withLong_(unint64_t a1, unint64_t a2)
{
  v4 = JavaLangLong_numberOfTrailingZerosWithLong_(a1);
  v5 = JavaLangLong_numberOfTrailingZerosWithLong_(a2);
  v6 = v5;
  v7 = JavaLangMath_minWithInt_withInt_(v4, v5);
  v8 = a1 >> v4;
  v9 = a2 >> v6;
  do
  {
    while (v8 < v9)
    {
      v9 = (v9 - v8) >> JavaLangLong_numberOfTrailingZerosWithLong_(v9 - v8);
      if (!v8)
      {
        return v9 << v7;
      }
    }

    v8 = (v8 - v9) >> JavaLangLong_numberOfTrailingZerosWithLong_(v8 - v9);
  }

  while (v8);
  return v9 << v7;
}

JavaMathBigInteger *JavaMathDivision_modInverseMontgomeryWithJavaMathBigInteger_withJavaMathBigInteger_(_DWORD *a1, _DWORD *a2)
{
  if (!a1)
  {
    goto LABEL_32;
  }

  if (!a1[5])
  {
    goto LABEL_34;
  }

  if (!a2)
  {
LABEL_32:
    JreThrowNullPointerException();
  }

  if ([a2 testBitWithInt:0])
  {
    v4 = a2[4];
    v5 = [a2 copy];
    v6 = [a1 copy];
    if (v6)
    {
      if (v5)
      {
        v7 = v6;
        v8 = (JavaLangMath_maxWithInt_withInt_(v6[4], v5[4]) + 1);
        v9 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, 1, [IOSIntArray arrayWithLength:v8]);
        v10 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, 1, [IOSIntArray arrayWithLength:v8]);
        digits = v10->digits_;
        if (digits)
        {
          v12 = v10;
          size = digits->super.size_;
          if (size <= 0)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, 0);
          }

          *(&digits->super.size_ + 1) = 1;
          v14 = [v5 getLowestSetBit];
          v15 = [v7 getLowestSetBit];
          JavaMathBitLevel_inplaceShiftRightWithJavaMathBigInteger_withInt_(v5, v14);
          JavaMathBitLevel_inplaceShiftRightWithJavaMathBigInteger_withInt_(v7, v15);
          v16 = v14 - v15;
          if (v14 <= v15)
          {
            JavaMathBitLevel_inplaceShiftLeftWithJavaMathBigInteger_withInt_(v12, v14);
            v16 = v15 - v14;
          }

          else
          {
            JavaMathBitLevel_inplaceShiftLeftWithJavaMathBigInteger_withInt_(v9, v15);
          }

          v9->sign_ = 1;
          if ([v7 signum] >= 1)
          {
            do
            {
              if ([v5 compareToWithId:v7] >= 1)
              {
                do
                {
                  JavaMathElementary_inplaceSubtractWithJavaMathBigInteger_withJavaMathBigInteger_(v5, v7);
                  v18 = [v5 getLowestSetBit];
                  JavaMathBitLevel_inplaceShiftRightWithJavaMathBigInteger_withInt_(v5, v18);
                  JavaMathElementary_inplaceAddWithJavaMathBigInteger_withJavaMathBigInteger_(v9, v12);
                  JavaMathBitLevel_inplaceShiftLeftWithJavaMathBigInteger_withInt_(v12, v18);
                  v16 += v18;
                }

                while ([v5 compareToWithId:v7] > 0);
              }

              if ([v5 compareToWithId:v7] <= 0)
              {
                do
                {
                  JavaMathElementary_inplaceSubtractWithJavaMathBigInteger_withJavaMathBigInteger_(v7, v5);
                  if (![v7 signum])
                  {
                    break;
                  }

                  v19 = [v7 getLowestSetBit];
                  JavaMathBitLevel_inplaceShiftRightWithJavaMathBigInteger_withInt_(v7, v19);
                  JavaMathElementary_inplaceAddWithJavaMathBigInteger_withJavaMathBigInteger_(v12, v9);
                  JavaMathBitLevel_inplaceShiftLeftWithJavaMathBigInteger_withInt_(v9, v19);
                  v16 += v19;
                }

                while ([v5 compareToWithId:v7] < 1);
              }
            }

            while ([v7 signum] > 0);
          }

          if ([v5 isOne])
          {
            v20 = 32 * v4;
            if (([(JavaMathBigInteger *)v9 compareToWithId:a2]& 0x80000000) == 0)
            {
              JavaMathElementary_inplaceSubtractWithJavaMathBigInteger_withJavaMathBigInteger_(v9, a2);
            }

            v21 = [a2 subtractWithJavaMathBigInteger:v9];
            v22 = sub_10014EC64(a2);
            if (v16 > v20)
            {
              if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
              {
                sub_100147554();
              }

              v21 = JavaMathDivision_monProWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(v21, JavaMathBigInteger_ONE_, a2, v22);
              v16 -= v20;
            }

            PowerOfTwoWithInt = JavaMathBigInteger_getPowerOfTwoWithInt_((v20 - v16));

            return JavaMathDivision_monProWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(v21, PowerOfTwoWithInt, a2, v22);
          }

LABEL_34:
          v24 = new_JavaLangArithmeticException_initWithNSString_(@"BigInteger not invertible");
          objc_exception_throw(v24);
        }
      }
    }

    goto LABEL_32;
  }

  return JavaMathDivision_modInverseHarsWithJavaMathBigInteger_withJavaMathBigInteger_(a1, a2);
}

uint64_t sub_10014EC64(uint64_t a1)
{
  if (!a1 || (v1 = *(a1 + 8)) == 0)
  {
    JreThrowNullPointerException();
  }

  v2 = *(v1 + 8);
  if (v2 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v2, 0);
  }

  v3 = 1;
  v4 = 2;
  do
  {
    if (((v3 * *(v1 + 12)) & v4) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v3 |= v5;
    v4 *= 2;
  }

  while (v4 < &_mh_execute_header);
  return -v3;
}

JavaMathBigInteger *JavaMathDivision_squareAndMultiplyWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(JavaMathBigInteger *a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v10 = [a3 bitLength];
  if ((v10 - 1) >= 0)
  {
    v11 = v10;
    do
    {
      --v11;
      a1 = JavaMathDivision_monProWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(a1, a1, a4, a5);
      if (JavaMathBitLevel_testBitWithJavaMathBigInteger_withInt_(a3, v11))
      {
        a1 = JavaMathDivision_monProWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(a1, a2, a4, a5);
      }
    }

    while (v11 > 0);
  }

  return a1;
}

_DWORD *JavaMathDivision_modInverseHarsWithJavaMathBigInteger_withJavaMathBigInteger_(_DWORD *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_48;
  }

  v3 = a1;
  v4 = [a1 compareToWithId:a2];
  explicit = atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire);
  if (v4 == -1)
  {
    if ((explicit & 1) == 0)
    {
      sub_100147554();
    }

    v7 = JavaMathBigInteger_ZERO_;
    if (atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire))
    {
      if (!a2)
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_100147554();
      if (!a2)
      {
        goto LABEL_48;
      }
    }

    v6 = JavaMathBigInteger_ONE_;
    v9 = [a2 bitLength];
    v10 = a2;
  }

  else
  {
    if ((explicit & 1) == 0)
    {
      sub_100147554();
    }

    v6 = JavaMathBigInteger_ZERO_;
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100147554();
    }

    v7 = JavaMathBigInteger_ONE_;
    v8 = [v3 bitLength];
    if (!a2)
    {
      goto LABEL_48;
    }

    v9 = v8;
    v10 = v3;
    v3 = a2;
  }

  v11 = [v3 bitLength];
  if (v11 >= 2)
  {
    v12 = v9 - v11;
    do
    {
      v13 = v10[5];
      v14 = v3[5];
      v15 = [v3 shiftLeftWithInt:v12];
      if (v13 == v14)
      {
        v16 = [v10 subtractWithJavaMathBigInteger:v15];
        if (!v7 || !v6)
        {
          goto LABEL_48;
        }

        v17 = v16;
        v18 = [v7 subtractWithJavaMathBigInteger:{objc_msgSend(v6, "shiftLeftWithInt:", v12)}];
      }

      else
      {
        v19 = [v10 addWithJavaMathBigInteger:v15];
        if (!v7 || !v6)
        {
          goto LABEL_48;
        }

        v17 = v19;
        v18 = [v7 addWithJavaMathBigInteger:{objc_msgSend(v6, "shiftLeftWithInt:", v12)}];
      }

      v20 = v18;
      if (!v17)
      {
        goto LABEL_48;
      }

      v21 = [v17 abs];
      if (!v21)
      {
        goto LABEL_48;
      }

      v22 = [v21 bitLength];
      v23 = [v3 abs];
      if (!v23)
      {
        goto LABEL_48;
      }

      v24 = [v23 bitLength];
      v12 = v22 - v24;
      if ((v22 - v24) < 0)
      {
        v12 = v24 - v22;
        v10 = v3;
        v3 = v17;
        v7 = v6;
        v6 = v20;
        v24 = v22;
      }

      else
      {
        v10 = v17;
        v7 = v20;
      }
    }

    while (v24 > 1);
  }

  v25 = v3[5];
  if (!v25)
  {
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100147554();
    }

    return JavaMathBigInteger_ZERO_;
  }

  if (v25 < 0)
  {
    if (!v6)
    {
      goto LABEL_48;
    }

    v6 = [v6 negate];
  }

  if (!v6)
  {
LABEL_48:
    JreThrowNullPointerException();
  }

  if ([v6 compareToWithId:a2] == 1)
  {

    return [v6 subtractWithJavaMathBigInteger:a2];
  }

  if ((v6[5] & 0x80000000) == 0)
  {
    return v6;
  }

  return [v6 addWithJavaMathBigInteger:a2];
}

JavaMathBigInteger *JavaMathDivision_slidingWindowWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(JavaMathBigInteger *a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v10 = [IOSObjectArray arrayWithLength:8 type:JavaMathBigInteger_class_()];
  IOSObjectArray_Set(v10, 0, a2);
  v11 = JavaMathDivision_monProWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(a2, a2, a4, a5);
  v12 = 0;
  do
  {
    v13 = v12 + 1;
    size = v10->super.size_;
    if (v12 + 1 > size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v12);
    }

    v15 = JavaMathDivision_monProWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_((&v10->elementType_)[v12], v11, a4, a5);
    IOSObjectArray_Set(v10, ++v12, v15);
  }

  while (v13 != 7);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v16 = [a3 bitLength];
  v17 = v16 - 1;
  if ((v16 - 1) >= 0)
  {
    v18 = v16;
    v34 = v10;
    v33 = a5;
    do
    {
      if (JavaMathBitLevel_testBitWithJavaMathBigInteger_withInt_(a3, v17))
      {
        v19 = JavaLangMath_maxWithInt_withInt_(v18 - 4, 0);
        v20 = 0;
        v21 = v17;
        if (v19 > (v18 - 2))
        {
          goto LABEL_19;
        }

        v22 = v19;
        v23 = v18 - 1;
        v24 = v17 - v19;
        v25 = 1;
        v21 = v17;
        do
        {
          v26 = JavaMathBitLevel_testBitWithJavaMathBigInteger_withInt_(a3, v22);
          v27 = (1 << (v22 - v21)) ^ v25;
          if (v22 >= v21)
          {
            v28 = v21;
          }

          else
          {
            v27 = (v25 << v24) ^ 1;
            v28 = v22;
          }

          if (v26)
          {
            v25 = v27;
            v21 = v28;
          }

          ++v22;
          --v24;
        }

        while (v23 != v22);
        v20 = (v25 - 1) >> 1;
        a5 = v33;
        if (v21 <= v17)
        {
LABEL_19:
          v29 = v21;
          do
          {
            a1 = JavaMathDivision_monProWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(a1, a1, a4, a5);
            ++v29;
          }

          while (v29 <= v17);
        }

        v17 = v21;
        v30 = v34->super.size_;
        if (v20 < 0 || v20 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, v20);
        }

        v31 = (&v34->elementType_)[v20];
      }

      else
      {
        v31 = a1;
      }

      a1 = JavaMathDivision_monProWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(v31, a1, a4, a5);
      v18 = v17--;
    }

    while (v17 >= 0);
  }

  return a1;
}

JavaMathBigInteger *JavaMathDivision_oddModPowWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_(void *a1, void *a2, uint64_t a3)
{
  if (!a3 || !a1 || (v5 = (32 * *(a3 + 16)), (v6 = [a1 shiftLeftWithInt:v5]) == 0) || (v7 = objc_msgSend(v6, "modWithJavaMathBigInteger:", a3), (PowerOfTwoWithInt = JavaMathBigInteger_getPowerOfTwoWithInt_(v5)) == 0))
  {
    JreThrowNullPointerException();
  }

  v9 = [(JavaMathBigInteger *)PowerOfTwoWithInt modWithJavaMathBigInteger:a3];
  v10 = sub_10014EC64(a3);
  if (*(a3 + 16) == 1)
  {
    v11 = JavaMathDivision_squareAndMultiplyWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(v9, v7, a2, a3, v10);
  }

  else
  {
    v11 = JavaMathDivision_slidingWindowWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(v9, v7, a2, a3, v10);
  }

  v12 = v11;
  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  v13 = JavaMathBigInteger_ONE_;

  return JavaMathDivision_monProWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(v12, v13, a3, v10);
}

id JavaMathDivision_evenModPowWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_(void *a1, void *a2, void *a3)
{
  if (!a3)
  {
    goto LABEL_12;
  }

  v6 = [a3 getLowestSetBit];
  v7 = [a3 shiftRightWithInt:v6];
  v8 = JavaMathDivision_oddModPowWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_(a1, a2, v7);
  v9 = JavaMathDivision_pow2ModPowWithJavaMathBigInteger_withJavaMathBigInteger_withInt_(a1, a2, v6);
  v10 = JavaMathDivision_modPow2InverseWithJavaMathBigInteger_withInt_(v7, v6);
  if (!v9)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [v9 subtractWithJavaMathBigInteger:v8];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = [v12 multiplyWithJavaMathBigInteger:v11];
  JavaMathDivision_inplaceModPow2WithJavaMathBigInteger_withInt_(v13, v6);
  if (!v13)
  {
    goto LABEL_12;
  }

  if ((v13[5] & 0x80000000) != 0)
  {
    v13 = [v13 addWithJavaMathBigInteger:JavaMathBigInteger_getPowerOfTwoWithInt_(v6)];
  }

  if (!v8 || !v7)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v14 = [v7 multiplyWithJavaMathBigInteger:v13];

  return [(JavaMathBigInteger *)v8 addWithJavaMathBigInteger:v14];
}

_DWORD *JavaMathDivision_pow2ModPowWithJavaMathBigInteger_withJavaMathBigInteger_withInt_(void *a1, void *a2, int a3)
{
  if (atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_100147554();
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  v6 = JavaMathBigInteger_ONE_;
  v7 = [a2 copy];
  if (!a1)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [a1 copy];
  if ([a1 testBitWithInt:0])
  {
    JavaMathDivision_inplaceModPow2WithJavaMathBigInteger_withInt_(v8, a3 - 1);
  }

  JavaMathDivision_inplaceModPow2WithJavaMathBigInteger_withInt_(v9, a3);
  if (!v8)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v10 = [v8 bitLength];
  if ((v10 - 1) >= 0)
  {
    v11 = v10;
    while (v6)
    {
      --v11;
      v12 = [v6 copy];
      JavaMathDivision_inplaceModPow2WithJavaMathBigInteger_withInt_(v12, a3);
      v6 = [v6 multiplyWithJavaMathBigInteger:v12];
      if (JavaMathBitLevel_testBitWithJavaMathBigInteger_withInt_(v8, v11))
      {
        if (!v6)
        {
          goto LABEL_16;
        }

        v6 = [v6 multiplyWithJavaMathBigInteger:v9];
        JavaMathDivision_inplaceModPow2WithJavaMathBigInteger_withInt_(v6, a3);
      }

      if (v11 <= 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

LABEL_14:
  JavaMathDivision_inplaceModPow2WithJavaMathBigInteger_withInt_(v6, a3);
  return v6;
}

uint64_t sub_10014F6AC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    goto LABEL_41;
  }

  v3 = a1;
  v4 = &OBJC_IVAR___IOSIntArray_buffer_;
  v37 = *(a2 + 16);
  if (v37 >= 1)
  {
    if (a1)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = *(a2 + 8);
      while (1)
      {
        v9 = *(v3 + 8);
        if (v6 >= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, v6);
        }

        v35 = JavaMathMultiplication_unsignedMultAddAddWithInt_withInt_withInt_withInt_(*(v3 + *v4 + 4 * v6), a3, 0, 0);
        if (!v8)
        {
          break;
        }

        v34 = v7;
        v10 = 0;
        LODWORD(v11) = 0;
        v12 = v5;
        v3 = a1;
        do
        {
          v13 = *(v8 + 8);
          if (v10 >= v13)
          {
            IOSArray_throwOutOfBoundsWithMsg(v13, v10);
          }

          v14 = v4;
          v15 = *v4;
          v16 = v6 + v10;
          v17 = *(v3 + 8);
          if (v6 + v10 < 0 || v17 <= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v17, v6 + v10);
          }

          v18 = JavaMathMultiplication_unsignedMultAddAddWithInt_withInt_withInt_withInt_(v35, *(v8 + v15 + 4 * v10), *(v3 + v15 + 4 * (v12 >> 32)), v11);
          v3 = a1;
          v19 = v18;
          v20 = *(a1 + 8);
          if (v16 < 0 || v20 <= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v20, v6 + v10);
          }

          v4 = v14;
          *(a1 + *v14 + 4 * (v12 >> 32)) = v19;
          v11 = HIDWORD(v19);
          ++v10;
          v12 += &_mh_execute_header;
        }

        while (v37 != v10);
        v21 = *(a1 + 8);
        v22 = v37 + v6;
        v23 = v37 + v6;
        if (v37 + v6 < 0 || v22 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, v22);
        }

        v24 = *v4;
        if ((v23 & 0x80000000) != 0 || v23 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, v23);
        }

        v25 = v11 + v34 + *(a1 + v24 + 4 * v23);
        *(a1 + v24 + 4 * v23) = v25;
        v7 = HIDWORD(v25);
        ++v6;
        v5 += &_mh_execute_header;
        if (v6 == v37)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_41:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_41;
  }

  LODWORD(v7) = 0;
LABEL_29:
  v26 = 2 * v37;
  result = *(v3 + 8);
  if (2 * v37 < 0 || v26 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v26);
  }

  *(v3 + *v4 + 4 * v26) = v7;
  if (v37 <= 0x7FFFFFFE)
  {
    v28 = 0;
    v29 = v3;
    do
    {
      v30 = v37 + v28;
      result = *(v3 + 8);
      if (v37 + v28 < 0 || v30 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v37 + v28);
      }

      v31 = *v4;
      v32 = *(v3 + v31 + 4 * v30);
      if (v28 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v28);
      }

      *(v29 + v31) = v32;
      ++v28;
      v29 += 4;
    }

    while (v37 + 1 != v28);
  }

  return result;
}

JavaMathBigInteger *JavaMathDivision_monProWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a3 || (v8 = *(a3 + 16), v9 = [IOSIntArray arrayWithLength:((2 * v8) | 1)], !a1) || (v10 = v9, v11 = *(a1 + 8), v12 = JavaLangMath_minWithInt_withInt_(v8, *(a1 + 16)), !a2))
  {
    JreThrowNullPointerException();
  }

  v13 = v12;
  v14 = *(a2 + 8);
  v15 = JavaLangMath_minWithInt_withInt_(v8, *(a2 + 16));
  JavaMathMultiplication_multArraysPAPWithIntArray_withInt_withIntArray_withInt_withIntArray_(v11, v13, v14, v15, v10);
  sub_10014F6AC(v10, a3, a4);

  return JavaMathDivision_finalSubtractionWithIntArray_withJavaMathBigInteger_(v10, a3);
}

JavaMathBigInteger *JavaMathDivision_finalSubtractionWithIntArray_withJavaMathBigInteger_(unsigned int *a1, uint64_t a2)
{
  if (!a2 || !a1)
  {
LABEL_25:
    JreThrowNullPointerException();
  }

  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 < 0 || v4 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, *(a2 + 16));
  }

  if (!a1[v4 + 3])
  {
    v10 = *(a2 + 8);
    v11 = v4 - 1;
    LODWORD(v12) = *(a2 + 16);
    while (1)
    {
      v12 = (v12 - 1);
      if (v12 < 0)
      {
        break;
      }

      v13 = a1[2];
      if (v13 <= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v12);
      }

      if (!v10)
      {
        goto LABEL_25;
      }

      v14 = v11 & 0x7FFFFFFF;
      v15 = *(v10 + 8);
      if (v15 <= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v12);
      }

      --v11;
      if (a1[v14 + 3] != *(v10 + 12 + 4 * v14))
      {
        v16 = a1[2];
        if (v16 <= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v12);
        }

        v17 = a1[v14 + 3];
        if (v17)
        {
          v18 = a1[2];
          if (v18 <= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, v12);
          }

          v19 = *(v10 + 8);
          if (v19 <= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v19, v12);
          }

          v6 = v17 > *(v10 + 12 + 4 * v14);
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_7;
      }
    }
  }

  v6 = 1;
LABEL_7:
  v7 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, v4 + 1, a1);
  v8 = v7;
  if (v6)
  {
    JavaMathElementary_inplaceSubtractWithJavaMathBigInteger_withJavaMathBigInteger_(v7, a2);
  }

  [(JavaMathBigInteger *)v8 cutOffLeadingZeroes];
  return v8;
}

JavaMathBigInteger *JavaMathDivision_modPow2InverseWithJavaMathBigInteger_withInt_(void *a1, int a2)
{
  v4 = new_JavaMathBigInteger_initWithInt_withIntArray_(1, [IOSIntArray arrayWithLength:1 << a2]);
  v4->numberLength_ = 1;
  digits = v4->digits_;
  if (!digits)
  {
    goto LABEL_13;
  }

  v6 = v4;
  size = digits->super.size_;
  if (size < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  *(&digits->super.size_ + 1) = 1;
  v6->sign_ = 1;
  if (a2 > 1)
  {
    if (a1)
    {
      v8 = 1;
      do
      {
        if (JavaMathBitLevel_testBitWithJavaMathBigInteger_withInt_([a1 multiplyWithJavaMathBigInteger:v6], v8))
        {
          v9 = v6->digits_;
          v10 = v8 >> 5;
          v11 = v9->super.size_;
          if (v10 >= v11)
          {
            IOSArray_throwOutOfBoundsWithMsg(v11, v8 >> 5);
          }

          *(&v9->super.size_ + v10 + 1) |= 1 << v8;
        }

        ++v8;
      }

      while (a2 != v8);
      return v6;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return v6;
}

_DWORD *JavaMathDivision_inplaceModPow2WithJavaMathBigInteger_withInt_(_DWORD *result, int a2)
{
  if (!result)
  {
    goto LABEL_14;
  }

  v3 = result;
  v4 = (a2 >> 5);
  if (result[4] < v4)
  {
    return result;
  }

  result = [result bitLength];
  if (result <= a2)
  {
    return result;
  }

  v3[4] = v4 + 1;
  v5 = (a2 & 0x1F) != 0 ? 0xFFFFFFFF >> -(a2 & 0x1F) : 0;
  v6 = *(v3 + 1);
  if (!v6)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v7 = *(v6 + 8);
  if ((v4 & 0x80000000) != 0 || v4 >= v7)
  {
    v8 = *(v3 + 1);
    IOSArray_throwOutOfBoundsWithMsg(v7, v4);
  }

  *(v6 + 12 + 4 * v4) &= v5;

  return [v3 cutOffLeadingZeroes];
}

id JavaNetSocket_init(uint64_t a1)
{
  atomic_store(0, (a1 + 16));
  *(a1 + 36) = 0;
  *(a1 + 32) = 0;
  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001520E0();
  }

  JreStrongAssign((a1 + 40), JavaNetInet4Address_ANY_);
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  if (qword_100554960)
  {
    v2 = [qword_100554960 createSocketImpl];
  }

  else
  {
    v2 = new_JavaNetPlainSocketImpl_init();
  }

  JreStrongAssign((a1 + 8), v2);

  return JreStrongAssign((a1 + 24), 0);
}

id JavaNetSocket_initWithJavaNetProxy_(uint64_t a1, void *a2)
{
  atomic_store(0, (a1 + 16));
  *(a1 + 36) = 0;
  *(a1 + 32) = 0;
  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001520E0();
  }

  JreStrongAssign((a1 + 40), JavaNetInet4Address_ANY_);
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  if (!a2)
  {
    goto LABEL_13;
  }

  v11 = [a2 type];
  if ((atomic_load_explicit(JavaNetProxy_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A084();
  }

  if (v11 == qword_100557EE8)
  {
LABEL_13:
    v14 = JreStrcat("$@", v4, v5, v6, v7, v8, v9, v10, @"Invalid proxy: ");
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  JreStrongAssign((a1 + 24), a2);
  if (qword_100554960)
  {
    v12 = [qword_100554960 createSocketImpl];
  }

  else
  {
    v12 = new_JavaNetPlainSocketImpl_initWithJavaNetProxy_(a2);
  }

  return JreStrongAssign((a1 + 8), v12);
}

uint64_t sub_1001501F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AllByNameWithNSString = JavaNetInetAddress_getAllByNameWithNSString_(a2);
  if (!AllByNameWithNSString)
  {
    JreThrowNullPointerException();
  }

  v18 = AllByNameWithNSString;
  v19 = AllByNameWithNSString[2];
  v20 = (v19 - 1);
  if (v20 < 1)
  {
    if (v19 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v20);
    }

    v25 = *&v18[2 * v20 + 6];
    sub_100150728(a3, v20, v12, v13, v14, v15, v16, v17);

    return sub_100151304(a1, v25, a3, a4, a5, a6, v26, v27);
  }

  else
  {
    if (v19 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, 0);
    }

    v21 = *(v18 + 3);
    sub_100150728(a3, v20, v12, v13, v14, v15, v16, v17);
    return sub_100151304(a1, v21, a3, a4, a5, a6, v22, v23);
  }
}

uint64_t JavaNetSocket_initWithJavaNetInetAddress_withInt_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  JavaNetSocket_init(a1);
  sub_100150728(a3, v6, v7, v8, v9, v10, v11, v12);

  return sub_100151304(a1, a2, a3, 0, 0, 1, v13, v14);
}

uint64_t JavaNetSocket_initWithJavaNetInetAddress_withInt_withJavaNetInetAddress_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  JavaNetSocket_init(a1);
  sub_100150728(a3, v10, v11, v12, v13, v14, v15, v16);

  return sub_100151304(a1, a2, a3, a4, a5, 1, v17, v18);
}

uint64_t JavaNetSocket_initWithJavaNetInetAddress_withInt_withBoolean_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  JavaNetSocket_init(a1);
  sub_100150728(a3, v8, v9, v10, v11, v12, v13, v14);

  return sub_100151304(a1, a2, a3, 0, 0, a4, v15, v16);
}

id JavaNetSocket_initWithJavaNetSocketImpl_(uint64_t a1, void *a2)
{
  atomic_store(0, (a1 + 16));
  *(a1 + 36) = 0;
  *(a1 + 32) = 0;
  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001520E0();
  }

  JreStrongAssign((a1 + 40), JavaNetInet4Address_ANY_);
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  JreStrongAssign((a1 + 8), a2);

  return JreStrongAssign((a1 + 24), 0);
}

uint64_t sub_100150728(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result >= 0x10000)
  {
    v8 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Port out of range: ");
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  return result;
}

id sub_10015092C(uint64_t a1, char a2)
{
  result = [a1 isClosed];
  if (result)
  {
    v8 = @"Socket is closed";
    goto LABEL_15;
  }

  if ((a2 & 1) == 0)
  {
    result = [a1 isConnected];
    if (result)
    {
      return result;
    }

    v8 = @"Socket is not connected";
LABEL_15:
    v9 = new_JavaNetSocketException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  v5 = atomic_load((a1 + 16));
  if ((v5 & 1) == 0)
  {
    objc_sync_enter(a1);
    v6 = atomic_load((a1 + 16));
    if ((v6 & 1) == 0)
    {
      v7 = *(a1 + 8);
      if (!v7)
      {
        JreThrowNullPointerException();
      }

      [v7 createWithBoolean:1];
      atomic_store(1u, (a1 + 16));
    }

    return objc_sync_exit(a1);
  }

  return result;
}

void sub_100150A34(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t JavaNetSocket_setSocketImplFactoryWithJavaNetSocketImplFactory_(void *a1)
{
  if (qword_100554970 != -1)
  {
    sub_1001520EC();
  }

  v2 = qword_100554968;
  objc_sync_enter(qword_100554968);
  if (qword_100554960)
  {
    v4 = new_JavaNetSocketException_initWithNSString_(@"Factory already set");
    objc_exception_throw(v4);
  }

  JreStrongAssign(&qword_100554960, a1);

  return objc_sync_exit(v2);
}

uint64_t sub_100151304(uint64_t obj, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 >= 0x10000)
  {
    v16 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Local port out of range: ");
    v17 = new_JavaLangIllegalArgumentException_initWithNSString_(v16);
    objc_exception_throw(v17);
  }

  v10 = a4;
  if (!a4)
  {
    if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001520E0();
    }

    v10 = JavaNetInet4Address_ANY_;
  }

  objc_sync_enter(obj);
  v14 = *(obj + 8);
  if (!v14)
  {
    JreThrowNullPointerException();
  }

  [v14 createWithBoolean:a6];
  atomic_store(1u, (obj + 16));
  if (!a6 || (sub_100151484(obj) & 1) == 0)
  {
    [*(obj + 8) bindWithJavaNetInetAddress:v10 withInt:a5];
  }

  *(obj + 32) = 1;
  [JavaNetSocket cacheLocalAddress]_0(obj);
  [*(obj + 8) connectWithJavaNetInetAddress:a2 withInt:a3];
  *(obj + 33) = 1;
  [JavaNetSocket cacheLocalAddress]_0(obj);

  return objc_sync_exit(obj);
}

void sub_100151460(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void *sub_100151484(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    v2 = [result type];
    if ((atomic_load_explicit(JavaNetProxy_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10014A084();
    }

    return (v2 == qword_100557EF0);
  }

  return result;
}

void sub_100151898(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_100151B84(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

JavaNetSocket *new_JavaNetSocket_init()
{
  v0 = [JavaNetSocket alloc];
  JavaNetSocket_init(v0);
  return v0;
}

JavaNioChannelsAsynchronousCloseException *new_JavaNioChannelsAsynchronousCloseException_init()
{
  v0 = [JavaNioChannelsAsynchronousCloseException alloc];
  JavaNioChannelsClosedChannelException_init(v0, v1);
  return v0;
}

id JavaUtilZipDeflater_initWithInt_withBoolean_(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xFFFFFFFFLL;
  *(a1 + 24) = xmmword_1003148A0;
  v6 = DalvikSystemCloseGuard_get();
  JreStrongAssign((a1 + 56), v6);
  if ((a2 - 10) <= 0xFFFFFFF4)
  {
    v15 = JreStrcat("$I", v7, v8, v9, v10, v11, v12, v13, @"Bad level: ");
    v16 = new_JavaLangIllegalArgumentException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  *(a1 + 16) = a2;
  *(a1 + 24) = sub_100153084(a2, *(a1 + 20), a3);
  v14 = *(a1 + 56);
  if (!v14)
  {
    JreThrowNullPointerException();
  }

  return [v14 openWithNSString:@"end"];
}

uint64_t sub_100152374(uint64_t a1, uint64_t a2, int a3, uInt a4, int a5)
{
  objc_sync_enter(a1);
  [JavaUtilZipDeflater checkOpen]_0(a1);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a2 + 8), a3, a4);
  if (!*(a1 + 40))
  {
    if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    [a1 setInputWithByteArray:LibcoreUtilEmptyArray_BYTE_];
  }

  v10 = sub_100152550(a1, a2, a3, a4, *(a1 + 24), a5);
  objc_sync_exit(a1);
  return v10;
}

uint64_t sub_100152550(uint64_t a1, int *a2, int a3, uInt a4, z_stream *a5, int a6)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2[2] <= 0)
  {
    next_out = a5->next_out;
  }

  else
  {
    v10 = [a2 byteRefAtIndex:a3];
    LODWORD(next_out) = v10;
    a5->next_out = v10;
  }

  a5->avail_out = a4;
  next_in = a5->next_in;
  v14 = deflate(a5, a6);
  if (v14 != -5 && v14)
  {
    if (v14 != 1)
    {
      objc_exception_throw(objc_alloc_init(JavaUtilZipDataFormatException));
    }

    *(a1 + 12) = 1;
  }

  result = (LODWORD(a5->next_out) - next_out);
  *(a1 + 48) += LODWORD(a5->next_in) - next_in;
  return result;
}

uint64_t sub_100152AA8(z_stream *a1)
{
  result = deflateReset(a1);
  if (result)
  {
    objc_exception_throw(objc_alloc_init(JavaLangIllegalArgumentException));
  }

  return result;
}

uint64_t sub_100152BBC(void *a1, int a2, uInt a3, z_stream *a4)
{
  result = deflateSetDictionary(a4, [a1 byteRefAtIndex:a2], a3);
  if (result)
  {
    objc_exception_throw(objc_alloc_init(JavaLangIllegalArgumentException));
  }

  return result;
}

uint64_t sub_100152D34(int level, int strategy, z_streamp strm)
{
  strm->next_out = 0;
  strm->avail_out = 0;
  result = deflateParams(strm, level, strategy);
  if (result)
  {
    objc_exception_throw(objc_alloc_init(JavaLangIllegalStateException));
  }

  return result;
}

void sub_100152D7C(uint64_t a1, void *a2, int a3, int a4, uint64_t a5)
{
  v10 = a4;
  v11 = malloc_type_malloc(a4, 0x100004077774924uLL);
  if (!v11)
  {
    objc_exception_throw(objc_alloc_init(JavaLangOutOfMemoryError));
  }

  v12 = v11;
  v13 = *(a1 + 32);
  if (v13)
  {
    free(v13);
  }

  *(a1 + 32) = v12;
  *a5 = v12;
  *(a5 + 8) = a4;
  if (a4 >= 1)
  {
    v14 = [a2 byteRefAtIndex:a3];

    memcpy(v12, v14, v10);
  }
}

z_stream *sub_100153084(int a1, int a2, int a3)
{
  v6 = malloc_type_malloc(0x70uLL, 0x10B0040E8CA615DuLL);
  v7 = v6;
  v6->zfree = 0;
  v6->opaque = 0;
  v6->zalloc = 0;
  v6->adler = 1;
  if (a3)
  {
    v8 = -15;
  }

  else
  {
    v8 = 15;
  }

  if (deflateInit2_(v6, a1, 8, v8, 8, a2, "1.2.12", 112))
  {
    free(v7);
    objc_exception_throw(objc_alloc_init(JavaLangIllegalArgumentException));
  }

  return v7;
}

JavaUtilZipDeflater *new_JavaUtilZipDeflater_initWithInt_withBoolean_(int a1, int a2)
{
  v4 = [JavaUtilZipDeflater alloc];
  JavaUtilZipDeflater_initWithInt_withBoolean_(v4, a1, a2);
  return v4;
}

JavaBeansPropertyChangeListenerProxy *new_JavaBeansPropertyChangeListenerProxy_initWithNSString_withJavaBeansPropertyChangeListener_(void *a1, void *a2)
{
  v4 = [JavaBeansPropertyChangeListenerProxy alloc];
  JavaUtilEventListenerProxy_initWithJavaUtilEventListener_(v4, a2);
  JreStrongAssign(&v4->propertyName_, a1);
  return v4;
}

char *sub_100153F78(char *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v4 = (result + 16);
    v3 = *(result + 2);
    v5 = 5 * a2;
    if (v3 && (v6 = *(v3 + 8)) != 0)
    {
      if (v6 >= v5)
      {
        return result;
      }
    }

    else
    {
      v6 = 25;
    }

    do
    {
      v7 = v6;
      v6 *= 2;
    }

    while (v7 < v5);
    v8 = [IOSObjectArray arrayWithLength:v7 type:NSString_class_()];
    v9 = *(v2 + 2);
    if (v9 >= 1)
    {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*v4, 0, v8, 0, (5 * v9));
    }

    return JreStrongAssign(v4, v8);
  }

  return result;
}

void sub_100154128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Attempt to modify attribute at illegal index: ");
  v9 = new_JavaLangArrayIndexOutOfBoundsException_initWithNSString_(v8);
  objc_exception_throw(v9);
}

OrgXmlSaxHelpersAttributesImpl *new_OrgXmlSaxHelpersAttributesImpl_init()
{
  v0 = [OrgXmlSaxHelpersAttributesImpl alloc];
  v0->length_ = 0;
  JreStrongAssign(&v0->data_, 0);
  return v0;
}

id JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    v10 = new_JavaLangNullPointerException_initWithNSString_(@"level == null");
    objc_exception_throw(v10);
  }

  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 40), a3);
  *(a1 + 56) = JavaLangSystem_currentTimeMillis();
  v5 = JavaUtilLoggingLogRecord_class_();
  objc_sync_enter(v5);
  v6 = qword_100554980++;
  *(a1 + 16) = v6;
  if (!qword_100554978)
  {
    JreThrowNullPointerException();
  }

  v7 = [qword_100554978 get];
  if (v7)
  {
    *(a1 + 48) = [v7 intValue];
  }

  else
  {
    v8 = dword_100554988;
    *(a1 + 48) = dword_100554988;
    dword_100554988 = v8 + 1;
    [qword_100554978 setWithId:JavaLangInteger_valueOfWithInt_(v8)];
  }

  objc_sync_exit(v5);
  JreStrongAssign((a1 + 24), 0);
  JreStrongAssign((a1 + 32), 0);
  JreStrongAssign((a1 + 72), 0);
  JreStrongAssign((a1 + 96), 0);
  JreStrongAssign((a1 + 88), 0);
  JreStrongAssign((a1 + 80), 0);

  return JreStrongAssign((a1 + 64), 0);
}

JavaUtilLoggingLogRecord *new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(void *a1, void *a2)
{
  v4 = [JavaUtilLoggingLogRecord alloc];
  JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(v4, a1, a2);
  return v4;
}

uint64_t JavaUtilLoggingLogRecord_class_()
{
  if ((atomic_load_explicit(JavaUtilLoggingLogRecord__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100154CC0();
  }

  if (qword_100554998 != -1)
  {
    sub_100154CCC();
  }

  return qword_100554990;
}

uint64_t JavaBeansPropertyChangeListener_class_()
{
  if (qword_1005549A8 != -1)
  {
    sub_100154D4C();
  }

  return qword_1005549A0;
}

IOSObjectArray *JavaLangAnnotationRetentionPolicyEnum_values()
{
  if ((atomic_load_explicit(JavaLangAnnotationRetentionPolicyEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C00C();
  }

  v0 = JavaLangAnnotationRetentionPolicyEnum_class_();

  return [IOSObjectArray arrayWithObjects:&JavaLangAnnotationRetentionPolicyEnum_values_ count:3 type:v0];
}

void *JavaLangAnnotationRetentionPolicyEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaLangAnnotationRetentionPolicyEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C00C();
  }

  v2 = 0;
  while (1)
  {
    v3 = JavaLangAnnotationRetentionPolicyEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 3)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t JavaLangAnnotationRetentionPolicyEnum_class_()
{
  if ((atomic_load_explicit(JavaLangAnnotationRetentionPolicyEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C00C();
  }

  if (qword_1005549B8 != -1)
  {
    sub_100154FD0();
  }

  return qword_1005549B0;
}

void *JavaIoByteArrayOutputStream_initWithInt_(uint64_t a1, unsigned int a2)
{
  JavaIoOutputStream_init();
  if ((a2 & 0x80000000) != 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"size < 0");
    objc_exception_throw(v6);
  }

  v4 = [IOSByteArray newArrayWithLength:a2];

  return JreStrongAssignAndConsume((a1 + 8), v4);
}

id *sub_100155114(id *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = result;
  v4 = *(result + 4) + a2;
  if (v4 > v2[2])
  {
    v5 = [IOSByteArray arrayWithLength:2 * v4];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v3[1], 0, v5, 0, *(v3 + 4));

    return JreStrongAssign(v3 + 1, v5);
  }

  return result;
}

JavaIoByteArrayOutputStream *new_JavaIoByteArrayOutputStream_init()
{
  v0 = [JavaIoByteArrayOutputStream alloc];
  JavaIoOutputStream_init(v0, v1);
  JreStrongAssignAndConsume(&v0->buf_, [IOSByteArray newArrayWithLength:32]);
  return v0;
}

JavaIoByteArrayOutputStream *new_JavaIoByteArrayOutputStream_initWithInt_(unsigned int a1)
{
  v2 = [JavaIoByteArrayOutputStream alloc];
  JavaIoByteArrayOutputStream_initWithInt_(v2, a1);
  return v2;
}

void *JavaUtilConcurrentCountDownLatch_initWithInt_(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"count < 0");
    objc_exception_throw(v7);
  }

  v4 = [JavaUtilConcurrentCountDownLatch_Sync alloc];
  JavaUtilConcurrentLocksAbstractQueuedSynchronizer_init(v4, v5);
  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)v4 setStateWithInt:a2];

  return JreStrongAssignAndConsume((a1 + 8), v4);
}

JavaUtilConcurrentCountDownLatch *new_JavaUtilConcurrentCountDownLatch_initWithInt_(uint64_t a1)
{
  v2 = [JavaUtilConcurrentCountDownLatch alloc];
  JavaUtilConcurrentCountDownLatch_initWithInt_(v2, a1);
  return v2;
}

uint64_t JavaLangComparable_class_()
{
  if (qword_1005549C8 != -1)
  {
    sub_100155BA8();
  }

  return qword_1005549C0;
}

JavaIoUnsupportedEncodingException *new_JavaIoUnsupportedEncodingException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaIoUnsupportedEncodingException alloc];
  JavaIoIOException_initWithNSString_(v2, a1);
  return v2;
}

void *JavaNioPipeImpl_initWithJavaNioChannelsSpiSelectorProvider_(uint64_t a1, uint64_t a2)
{
  JavaNioChannelsPipe_init();
  v4 = new_JavaIoFileDescriptor_init();
  v5 = new_JavaIoFileDescriptor_init();
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ socketpairWithInt:1 withInt:1 withInt:0 withJavaIoFileDescriptor:v4 withJavaIoFileDescriptor:v5];
  v6 = [JavaNioPipeImpl_PipeSinkChannel alloc];
  sub_1001560DC(v6, a2, v4);
  JreStrongAssignAndConsume((a1 + 8), v6);
  v7 = [JavaNioPipeImpl_PipeSourceChannel alloc];
  sub_100155EC0(v7, a2, v5);
  return JreStrongAssignAndConsume((a1 + 16), v7);
}

JavaNioPipeImpl *new_JavaNioPipeImpl_initWithJavaNioChannelsSpiSelectorProvider_(uint64_t a1)
{
  v2 = [JavaNioPipeImpl alloc];
  JavaNioPipeImpl_initWithJavaNioChannelsSpiSelectorProvider_(v2, a1);
  return v2;
}

void *sub_100155EC0(uint64_t a1, uint64_t a2, void *a3)
{
  JavaNioChannelsPipe_SourceChannel_initWithJavaNioChannelsSpiSelectorProvider_();
  JreStrongAssign((a1 + 55), a3);
  v6 = new_JavaNioSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_withJavaIoFileDescriptor_(a2, a3);

  return JreStrongAssignAndConsume((a1 + 63), v6);
}

void *sub_1001560DC(uint64_t a1, uint64_t a2, void *a3)
{
  JavaNioChannelsPipe_SinkChannel_initWithJavaNioChannelsSpiSelectorProvider_();
  JreStrongAssign((a1 + 55), a3);
  v6 = new_JavaNioSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_withJavaIoFileDescriptor_(a2, a3);

  return JreStrongAssignAndConsume((a1 + 63), v6);
}

id JavaNioFloatArrayBuffer_initWithFloatArray_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaNioFloatBuffer_initWithInt_withLong_(a1, a2[2], 0, a4, a5, a6, a7, a8);
  result = JreStrongAssign((a1 + 40), a2);
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  return result;
}

JavaNioFloatArrayBuffer *sub_1001563E4(uint64_t a1, int a2, BOOL a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_10015660C([a1 capacity], *(a1 + 40), *(a1 + 48), a3);
  v5->super.super.limit_ = *(a1 + 12);
  v5->super.super.position_ = [a1 position];
  v5->super.super.mark_ = a2;
  return v5;
}

JavaNioFloatArrayBuffer *sub_10015660C(uint64_t a1, void *a2, int a3, BOOL a4)
{
  v8 = [JavaNioFloatArrayBuffer alloc];
  JavaNioFloatBuffer_initWithInt_withLong_(v8, a1, 0, v9, v10, v11, v12, v13);
  JreStrongAssign(&v8->backingArray_, a2);
  v8->arrayOffset_ = a3;
  v8->isReadOnly_ = a4;
  return v8;
}

JavaNioFloatArrayBuffer *new_JavaNioFloatArrayBuffer_initWithFloatArray_(unsigned int *a1)
{
  v2 = [JavaNioFloatArrayBuffer alloc];
  JavaNioFloatArrayBuffer_initWithFloatArray_(v2, a1, v3, v4, v5, v6, v7, v8);
  return v2;
}

id JavaUtilRegexPatternSyntaxException_initWithNSString_withNSString_withInt_(uint64_t a1, void *a2, void *a3, int a4)
{
  JavaLangIllegalArgumentException_init(a1, a2);
  *(a1 + 104) = -1;
  JreStrongAssign((a1 + 88), a2);
  result = JreStrongAssign((a1 + 96), a3);
  *(a1 + 104) = a4;
  return result;
}

JavaLangReflectGenericSignatureFormatError *new_JavaLangReflectGenericSignatureFormatError_init()
{
  v0 = [JavaLangReflectGenericSignatureFormatError alloc];
  JavaLangClassFormatError_init(v0, v1);
  return v0;
}

id LibcoreIoStructUtsname_initWithNSString_withNSString_withNSString_withNSString_withNSString_(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 2, a3);
  JreStrongAssign(a1 + 3, a4);
  JreStrongAssign(a1 + 4, a5);

  return JreStrongAssign(a1 + 5, a6);
}

uint64_t JavaLangAnnotationAnnotation_class_()
{
  if (qword_1005549D8 != -1)
  {
    sub_1001570A8();
  }

  return qword_1005549D0;
}

void sub_1001570D4(void *a1)
{
  if (a1)
  {
    [a1 getClass];
    v8 = JreStrcat("$@", v1, v2, v3, v4, v5, v6, v7, @"Not an array: ");
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  JreThrowNullPointerException();
}

void sub_100157128(void *a1)
{
  if (a1)
  {
    [a1 getClass];
    v8 = JreStrcat("$@", v1, v2, v3, v4, v5, v6, v7, @"Array has incompatible type: ");
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  JreThrowNullPointerException();
}

void sub_10015717C(void *a1)
{
  if (!a1)
  {
    v1 = new_JavaLangNullPointerException_initWithNSString_(@"array == null");
    objc_exception_throw(v1);
  }

  if ([objc_msgSend(a1 "getClass")])
  {
    sub_100157128(a1);
  }

  sub_1001570D4(a1);
}

JavaLangLong *JavaLangReflectArray_getWithId_withInt_(unsigned int *a1, uint64_t a2)
{
  v4 = NSObject_class_();
  if ([IOSClass_arrayType(v4 1u)])
  {
    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = a1[2];
        if ((a2 & 0x80000000) != 0 || v5 <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v5, a2);
        }

        return *&a1[2 * a2 + 6];
      }

LABEL_72:
      JreThrowClassCastException();
    }

LABEL_82:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_82;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_72;
    }

    v7 = a1[2];
    if ((a2 & 0x80000000) != 0 || v7 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v7, a2);
    }

    v8 = *(a1 + a2 + 12);
    if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100129828();
    }

    v9 = &JavaLangBoolean_TRUE__;
    if (!v8)
    {
      v9 = &JavaLangBoolean_FALSE__;
    }

    return *v9;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!a1)
      {
        goto LABEL_82;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_72;
      }

      v10 = a1[2];
      if ((a2 & 0x80000000) != 0 || v10 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, a2);
      }

      v11 = *(a1 + a2 + 12);

      return JavaLangByte_valueOfWithByte_(v11);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (!a1)
        {
          goto LABEL_82;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_72;
        }

        v12 = a1[2];
        if ((a2 & 0x80000000) != 0 || v12 <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, a2);
        }

        v13 = *(a1 + a2 + 6);

        return JavaLangCharacter_valueOfWithChar_(v13);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (!a1)
          {
            goto LABEL_82;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_72;
          }

          v14 = a1[2];
          if ((a2 & 0x80000000) != 0 || v14 <= a2)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, a2);
          }

          v15 = *(a1 + a2 + 6);

          return JavaLangShort_valueOfWithShort_(v15);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (!a1)
            {
              goto LABEL_82;
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_72;
            }

            v16 = a1[2];
            if ((a2 & 0x80000000) != 0 || v16 <= a2)
            {
              IOSArray_throwOutOfBoundsWithMsg(v16, a2);
            }

            v17 = a1[a2 + 3];

            return JavaLangInteger_valueOfWithInt_(v17);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (!a1)
              {
                goto LABEL_82;
              }

              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_72;
              }

              v18 = a1[2];
              if ((a2 & 0x80000000) != 0 || v18 <= a2)
              {
                IOSArray_throwOutOfBoundsWithMsg(v18, a2);
              }

              v19 = *&a1[2 * a2 + 4];

              return JavaLangLong_valueOfWithLong_(v19);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if (!a1)
                {
                  goto LABEL_82;
                }

                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_72;
                }

                v20 = a1[2];
                if ((a2 & 0x80000000) != 0 || v20 <= a2)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v20, a2);
                }

                v21 = new_JavaLangFloat_initWithFloat_(*&a1[a2 + 3]);
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!a1)
                  {
                    v23 = new_JavaLangNullPointerException_initWithNSString_(@"array == null");
                    objc_exception_throw(v23);
                  }

                  sub_1001570D4(a1);
                }

                objc_opt_class();
                if (!a1)
                {
                  goto LABEL_82;
                }

                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_72;
                }

                v22 = a1[2];
                if ((a2 & 0x80000000) != 0 || v22 <= a2)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v22, a2);
                }

                v21 = new_JavaLangDouble_initWithDouble_(*&a1[2 * a2 + 4]);
              }

              return v21;
            }
          }
        }
      }
    }
  }
}

uint64_t JavaLangReflectArray_getBooleanWithId_withInt_(unsigned int *a1, uint64_t a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10015717C(a1);
  }

  objc_opt_class();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v4 = a1[2];
  if ((a2 & 0x80000000) != 0 || v4 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, a2);
  }

  return *(a1 + a2 + 12);
}

uint64_t JavaLangReflectArray_getByteWithId_withInt_(unsigned int *a1, uint64_t a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10015717C(a1);
  }

  objc_opt_class();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v4 = a1[2];
  if ((a2 & 0x80000000) != 0 || v4 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, a2);
  }

  return *(a1 + a2 + 12);
}

uint64_t JavaLangReflectArray_getCharWithId_withInt_(unsigned int *a1, uint64_t a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10015717C(a1);
  }

  objc_opt_class();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v4 = a1[2];
  if ((a2 & 0x80000000) != 0 || v4 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, a2);
  }

  return *(a1 + a2 + 6);
}

double JavaLangReflectArray_getDoubleWithId_withInt_(unsigned int *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = a1[2];
        if ((a2 & 0x80000000) != 0 || v4 <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v4, a2);
        }

        return *&a1[2 * a2 + 4];
      }

LABEL_44:
      JreThrowClassCastException();
    }

LABEL_52:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_52;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    v6 = a1[2];
    if ((a2 & 0x80000000) != 0 || v6 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, a2);
    }

    return *(a1 + a2 + 12);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_52;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    v9 = a1[2];
    if ((a2 & 0x80000000) != 0 || v9 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, a2);
    }

    LOWORD(v8) = *(a1 + a2 + 6);
    return v8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_52;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    v10 = a1[2];
    if ((a2 & 0x80000000) != 0 || v10 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, a2);
    }

    return *&a1[a2 + 3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_52;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    v11 = a1[2];
    if ((a2 & 0x80000000) != 0 || v11 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, a2);
    }

    return a1[a2 + 3];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_10015717C(a1);
    }

    objc_opt_class();
    if (!a1)
    {
      goto LABEL_52;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    v13 = a1[2];
    if ((a2 & 0x80000000) != 0 || v13 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, a2);
    }

    return *(a1 + a2 + 6);
  }

  objc_opt_class();
  if (!a1)
  {
    goto LABEL_52;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_44;
  }

  v12 = a1[2];
  if ((a2 & 0x80000000) != 0 || v12 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, a2);
  }

  return *&a1[2 * a2 + 4];
}

float JavaLangReflectArray_getFloatWithId_withInt_(unsigned int *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = a1[2];
        if ((a2 & 0x80000000) != 0 || v4 <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v4, a2);
        }

        return *&a1[a2 + 3];
      }

LABEL_38:
      JreThrowClassCastException();
    }

LABEL_45:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_45;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_38;
    }

    v6 = a1[2];
    if ((a2 & 0x80000000) != 0 || v6 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, a2);
    }

    return *(a1 + a2 + 12);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_45;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_38;
    }

    v9 = a1[2];
    if ((a2 & 0x80000000) != 0 || v9 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, a2);
    }

    LOWORD(v8) = *(a1 + a2 + 6);
    return v8;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!a1)
      {
        goto LABEL_45;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_38;
      }

      v10 = a1[2];
      if ((a2 & 0x80000000) != 0 || v10 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, a2);
      }

      return a1[a2 + 3];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10015717C(a1);
        }

        objc_opt_class();
        if (!a1)
        {
          goto LABEL_45;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_38;
        }

        v12 = a1[2];
        if ((a2 & 0x80000000) != 0 || v12 <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, a2);
        }

        return *(a1 + a2 + 6);
      }

      objc_opt_class();
      if (!a1)
      {
        goto LABEL_45;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_38;
      }

      v11 = a1[2];
      if ((a2 & 0x80000000) != 0 || v11 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, a2);
      }

      return *&a1[2 * a2 + 4];
    }
  }
}

uint64_t JavaLangReflectArray_getIntWithId_withInt_(unsigned int *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = a1[2];
        if ((a2 & 0x80000000) != 0 || v4 <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v4, a2);
        }

        return a1[a2 + 3];
      }

LABEL_25:
      JreThrowClassCastException();
    }

LABEL_30:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_30;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_25;
    }

    v6 = a1[2];
    if ((a2 & 0x80000000) != 0 || v6 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, a2);
    }

    return *(a1 + a2 + 12);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!a1)
      {
        goto LABEL_30;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_25;
      }

      v7 = a1[2];
      if ((a2 & 0x80000000) != 0 || v7 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, a2);
      }

      return *(a1 + a2 + 6);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10015717C(a1);
      }

      objc_opt_class();
      if (!a1)
      {
        goto LABEL_30;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_25;
      }

      v8 = a1[2];
      if ((a2 & 0x80000000) != 0 || v8 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, a2);
      }

      return *(a1 + a2 + 6);
    }
  }
}

uint64_t JavaLangReflectArray_getLengthWithId_(unsigned int *a1)
{
  v2 = NSObject_class_();
  if (![IOSClass_arrayType(v2 1u)])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    sub_10015717C(a1);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  objc_opt_class();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return a1[2];
}

uint64_t JavaLangReflectArray_getLongWithId_withInt_(unsigned int *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = a1[2];
        if ((a2 & 0x80000000) != 0 || v4 <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v4, a2);
        }

        return *&a1[2 * a2 + 4];
      }

LABEL_31:
      JreThrowClassCastException();
    }

LABEL_37:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_37;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_31;
    }

    v6 = a1[2];
    if ((a2 & 0x80000000) != 0 || v6 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, a2);
    }

    return *(a1 + a2 + 12);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!a1)
      {
        goto LABEL_37;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }

      v7 = a1[2];
      if ((a2 & 0x80000000) != 0 || v7 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, a2);
      }

      return *(a1 + a2 + 6);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (!a1)
        {
          goto LABEL_37;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = a1[2];
        if ((a2 & 0x80000000) != 0 || v8 <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, a2);
        }

        return a1[a2 + 3];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10015717C(a1);
        }

        objc_opt_class();
        if (!a1)
        {
          goto LABEL_37;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_31;
        }

        v9 = a1[2];
        if ((a2 & 0x80000000) != 0 || v9 <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, a2);
        }

        return *(a1 + a2 + 6);
      }
    }
  }
}

uint64_t JavaLangReflectArray_getShortWithId_withInt_(unsigned int *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = a1[2];
        if ((a2 & 0x80000000) != 0 || v4 <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v4, a2);
        }

        return *(a1 + a2 + 6);
      }

LABEL_14:
      JreThrowClassCastException();
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10015717C(a1);
  }

  objc_opt_class();
  if (!a1)
  {
    goto LABEL_17;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = a1[2];
  if ((a2 & 0x80000000) != 0 || v6 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, a2);
  }

  return *(a1 + a2 + 12);
}

IOSObjectArray *JavaLangReflectArray_newInstanceWithIOSClass_withIntArray_(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if ((*(a2 + 8) - 256) <= 0xFFFFFF00)
  {
    v12 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Bad number of dimensions: ");
LABEL_11:
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    goto LABEL_13;
  }

  if (+[IOSClass voidClass]== a1)
  {
    v12 = @"Can't allocate an array of void";
    goto LABEL_11;
  }

  if (!a1)
  {
    v13 = new_JavaLangNullPointerException_initWithNSString_(@"componentType == null");
LABEL_13:
    objc_exception_throw(v13);
  }

  v10 = *(a2 + 8);

  return [IOSObjectArray arrayWithDimensions:v10 lengths:a2 + 12 type:a1];
}

IOSObjectArray *JavaLangReflectArray_newInstanceWithIOSClass_withInt_(id a1, int a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ([a1 isPrimitive])
  {
    if (+[IOSClass BOOLeanClass]== a1)
    {
      v4 = IOSBooleanArray;
    }

    else if (+[IOSClass byteClass]== a1)
    {
      v4 = IOSByteArray;
    }

    else if (+[IOSClass charClass]== a1)
    {
      v4 = IOSCharArray;
    }

    else if (+[IOSClass shortClass]== a1)
    {
      v4 = IOSShortArray;
    }

    else if (+[IOSClass intClass]== a1)
    {
      v4 = IOSIntArray;
    }

    else if (+[IOSClass longClass]== a1)
    {
      v4 = IOSLongArray;
    }

    else if (+[IOSClass floatClass]== a1)
    {
      v4 = IOSFloatArray;
    }

    else
    {
      if (+[IOSClass doubleClass]!= a1)
      {
        if (+[IOSClass voidClass]== a1)
        {
          v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Can't allocate an array of void");
        }

        else
        {
          v6 = new_JavaLangAssertionError_init();
        }

        objc_exception_throw(v6);
      }

      v4 = IOSDoubleArray;
    }

    return [(__objc2_class *)v4 arrayWithLength:a2];
  }

  else
  {

    return [IOSObjectArray arrayWithLength:a2 type:a1];
  }
}

uint64_t JavaLangReflectArray_setWithId_withInt_withId_(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    goto LABEL_53;
  }

  if (([objc_msgSend(a1 "getClass")] & 1) == 0)
  {
    sub_1001570D4(a1);
  }

  v6 = NSObject_class_();
  if ([IOSClass_arrayType(v6 1u)])
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    v7 = [objc_msgSend(a1 "getClass")];
    if (v7)
    {
      if (([v7 isInstance:a3] & 1) == 0)
      {
        sub_100157128(a1);
      }

LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        return IOSObjectArray_Set(a1, a2, a3);
      }

LABEL_54:
      JreThrowClassCastException();
    }

LABEL_53:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    v17 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Primitive array can't take null values.");
    objc_exception_throw(v17);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }

    v9 = [a3 BOOLeanValue];

    return JavaLangReflectArray_setBooleanWithId_withInt_withBoolean_(a1, a2, v9);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_54;
      }

      v10 = [a3 charValue];

      return JavaLangReflectArray_setByteWithId_withInt_withByte_(a1, a2, v10);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_54;
        }

        v11 = [a3 charValue];

        return JavaLangReflectArray_setCharWithId_withInt_withChar_(a1, a2, v11);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_54;
          }

          v12 = [a3 shortValue];

          return JavaLangReflectArray_setShortWithId_withInt_withShort_(a1, a2, v12);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_54;
            }

            v13 = [a3 intValue];

            return JavaLangReflectArray_setIntWithId_withInt_withInt_(a1, a2, v13);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_54;
              }

              v14 = [a3 longLongValue];

              return JavaLangReflectArray_setLongWithId_withInt_withLong_(a1, a2, v14);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_54;
                }

                [a3 floatValue];

                return JavaLangReflectArray_setFloatWithId_withInt_withFloat_(a1, a2, v15);
              }

              else
              {
                objc_opt_class();
                result = objc_opt_isKindOfClass();
                if ((result & 1) == 0)
                {
                  return result;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_54;
                }

                [a3 doubleValue];

                return JavaLangReflectArray_setDoubleWithId_withInt_withDouble_(a1, a2, v16);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t JavaLangReflectArray_setBooleanWithId_withInt_withBoolean_(unsigned int *a1, uint64_t a2, char a3)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10015717C(a1);
  }

  objc_opt_class();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  result = a1[2];
  if ((a2 & 0x80000000) != 0 || result <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, a2);
  }

  *(a1 + a2 + 12) = a3;
  return result;
}

uint64_t JavaLangReflectArray_setByteWithId_withInt_withByte_(unsigned int *a1, uint64_t a2, int a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {
        result = a1[2];
        if ((a2 & 0x80000000) != 0 || result <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a2);
        }

        *(a1 + a2 + 12) = a3;
        return result;
      }

LABEL_37:
      JreThrowClassCastException();
    }

LABEL_44:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_44;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_37;
    }

    result = a1[2];
    if ((a2 & 0x80000000) != 0 || result <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a2);
    }

    *&a1[2 * a2 + 4] = a3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!a1)
      {
        goto LABEL_44;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_37;
      }

      result = a1[2];
      if ((a2 & 0x80000000) != 0 || result <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, a2);
      }

      *&a1[a2 + 3] = a3;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (!a1)
        {
          goto LABEL_44;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_37;
        }

        result = a1[2];
        if ((a2 & 0x80000000) != 0 || result <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a2);
        }

        a1[a2 + 3] = a3;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (!a1)
          {
            goto LABEL_44;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_37;
          }

          result = a1[2];
          if ((a2 & 0x80000000) != 0 || result <= a2)
          {
            IOSArray_throwOutOfBoundsWithMsg(result, a2);
          }

          *&a1[2 * a2 + 4] = a3;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            sub_10015717C(a1);
          }

          objc_opt_class();
          if (!a1)
          {
            goto LABEL_44;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_37;
          }

          result = a1[2];
          if ((a2 & 0x80000000) != 0 || result <= a2)
          {
            IOSArray_throwOutOfBoundsWithMsg(result, a2);
          }

          *(a1 + a2 + 6) = a3;
        }
      }
    }
  }

  return result;
}

uint64_t JavaLangReflectArray_setCharWithId_withInt_withChar_(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {
        result = a1[2];
        if ((a2 & 0x80000000) != 0 || result <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a2);
        }

        *(a1 + a2 + 6) = a3;
        return result;
      }

LABEL_31:
      JreThrowClassCastException();
    }

LABEL_37:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_37;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_31;
    }

    result = a1[2];
    if ((a2 & 0x80000000) != 0 || result <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a2);
    }

    *&a1[2 * a2 + 4] = a3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!a1)
      {
        goto LABEL_37;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }

      result = a1[2];
      if ((a2 & 0x80000000) != 0 || result <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, a2);
      }

      *&a1[a2 + 3] = a3;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (!a1)
        {
          goto LABEL_37;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = a1[2];
        if ((a2 & 0x80000000) != 0 || result <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a2);
        }

        a1[a2 + 3] = a3;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10015717C(a1);
        }

        objc_opt_class();
        if (!a1)
        {
          goto LABEL_37;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = a1[2];
        if ((a2 & 0x80000000) != 0 || result <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a2);
        }

        *&a1[2 * a2 + 4] = a3;
      }
    }
  }

  return result;
}

uint64_t JavaLangReflectArray_setDoubleWithId_withInt_withDouble_(unsigned int *a1, uint64_t a2, double a3)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10015717C(a1);
  }

  objc_opt_class();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  result = a1[2];
  if ((a2 & 0x80000000) != 0 || result <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, a2);
  }

  *&a1[2 * a2 + 4] = a3;
  return result;
}

uint64_t JavaLangReflectArray_setFloatWithId_withInt_withFloat_(unsigned int *a1, uint64_t a2, float a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {
        result = a1[2];
        if ((a2 & 0x80000000) != 0 || result <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a2);
        }

        *&a1[a2 + 3] = a3;
        return result;
      }

LABEL_13:
      JreThrowClassCastException();
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10015717C(a1);
  }

  objc_opt_class();
  if (!a1)
  {
    goto LABEL_16;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = a3;
  result = a1[2];
  if ((a2 & 0x80000000) != 0 || result <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, a2);
  }

  *&a1[2 * a2 + 4] = v7;
  return result;
}

uint64_t JavaLangReflectArray_setIntWithId_withInt_withInt_(unsigned int *a1, uint64_t a2, int a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {
        result = a1[2];
        if ((a2 & 0x80000000) != 0 || result <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a2);
        }

        a1[a2 + 3] = a3;
        return result;
      }

LABEL_25:
      JreThrowClassCastException();
    }

LABEL_30:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_30;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_25;
    }

    result = a1[2];
    if ((a2 & 0x80000000) != 0 || result <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a2);
    }

    *&a1[2 * a2 + 4] = a3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!a1)
      {
        goto LABEL_30;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_25;
      }

      result = a1[2];
      if ((a2 & 0x80000000) != 0 || result <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, a2);
      }

      *&a1[a2 + 3] = a3;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10015717C(a1);
      }

      objc_opt_class();
      if (!a1)
      {
        goto LABEL_30;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_25;
      }

      result = a1[2];
      if ((a2 & 0x80000000) != 0 || result <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, a2);
      }

      *&a1[2 * a2 + 4] = a3;
    }
  }

  return result;
}

uint64_t JavaLangReflectArray_setLongWithId_withInt_withLong_(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {
        result = a1[2];
        if ((a2 & 0x80000000) != 0 || result <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a2);
        }

        *&a1[2 * a2 + 4] = a3;
        return result;
      }

LABEL_19:
      JreThrowClassCastException();
    }

LABEL_23:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_23;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    result = a1[2];
    if ((a2 & 0x80000000) != 0 || result <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a2);
    }

    *&a1[2 * a2 + 4] = a3;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_10015717C(a1);
    }

    objc_opt_class();
    if (!a1)
    {
      goto LABEL_23;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    result = a1[2];
    if ((a2 & 0x80000000) != 0 || result <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a2);
    }

    *&a1[a2 + 3] = a3;
  }

  return result;
}

uint64_t JavaLangReflectArray_setShortWithId_withInt_withShort_(unsigned int *a1, uint64_t a2, int a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {
        result = a1[2];
        if ((a2 & 0x80000000) != 0 || result <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a2);
        }

        *(a1 + a2 + 6) = a3;
        return result;
      }

LABEL_31:
      JreThrowClassCastException();
    }

LABEL_37:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      goto LABEL_37;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_31;
    }

    result = a1[2];
    if ((a2 & 0x80000000) != 0 || result <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a2);
    }

    *&a1[2 * a2 + 4] = a3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!a1)
      {
        goto LABEL_37;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }

      result = a1[2];
      if ((a2 & 0x80000000) != 0 || result <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, a2);
      }

      *&a1[a2 + 3] = a3;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (!a1)
        {
          goto LABEL_37;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = a1[2];
        if ((a2 & 0x80000000) != 0 || result <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a2);
        }

        a1[a2 + 3] = a3;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10015717C(a1);
        }

        objc_opt_class();
        if (!a1)
        {
          goto LABEL_37;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = a1[2];
        if ((a2 & 0x80000000) != 0 || result <= a2)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a2);
        }

        *&a1[2 * a2 + 4] = a3;
      }
    }
  }

  return result;
}

IOSObjectArray *sub_10015A254(int a1)
{
  if (qword_1005549F8 != -1)
  {
    sub_10015C414();
  }

  v2 = qword_1005549F0;

  return [IOSObjectArray arrayWithLength:a1 type:v2];
}

void *JavaUtilWeakHashMap_initWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  JavaUtilAbstractMap_init(a1, a2);
  if ((v2 & 0x80000000) != 0)
  {
    v16 = JreStrcat("$I", v4, v5, v6, v7, v8, v9, v10, @"capacity < 0: ");
    v17 = new_JavaLangIllegalArgumentException_initWithNSString_(v16);
    objc_exception_throw(v17);
  }

  *(a1 + 24) = 0;
  if (v2 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v2;
  }

  v12 = sub_10015A254(v11);
  JreStrongAssign((a1 + 32), v12);
  *(a1 + 56) = 7500;
  v13 = *(a1 + 32);
  if (!v13)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 60) = *(a1 + 56) * *(v13 + 8) / 10000;
  v14 = new_JavaLangRefReferenceQueue_init();

  return JreStrongAssignAndConsume((a1 + 48), v14);
}

void *JavaUtilWeakHashMap_initWithInt_withFloat_(uint64_t a1, uint64_t a2, float a3)
{
  v4 = a2;
  JavaUtilAbstractMap_init(a1, a2);
  if ((v4 & 0x80000000) != 0)
  {
    v20 = JreStrcat("$I", v6, v7, v8, v9, v10, v11, v12, @"capacity < 0: ");
    goto LABEL_19;
  }

  if (a3 <= 0.0)
  {
    v20 = JreStrcat("$F", v6, v7, v8, v9, v10, v11, v12, @"loadFactor <= 0: ");
LABEL_19:
    v21 = new_JavaLangIllegalArgumentException_initWithNSString_(v20);
    objc_exception_throw(v21);
  }

  *(a1 + 24) = 0;
  if (v4 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v4;
  }

  v14 = sub_10015A254(v13);
  JreStrongAssign((a1 + 32), v14);
  if ((a3 * 10000.0) < 0.0)
  {
    v15 = 0x80000000;
  }

  else
  {
    v15 = 0x7FFFFFFF;
  }

  if ((a3 * 10000.0) == 0x80000000)
  {
    v16 = v15;
  }

  else
  {
    v16 = (a3 * 10000.0);
  }

  *(a1 + 56) = v16;
  v17 = *(a1 + 32);
  if (!v17)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 60) = *(a1 + 56) * *(v17 + 8) / 10000;
  v18 = new_JavaLangRefReferenceQueue_init();

  return JreStrongAssignAndConsume((a1 + 48), v18);
}

id JavaUtilWeakHashMap_initWithJavaUtilMap_(void *a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if ([a2 size] >= 6)
  {
    v4 = 2 * [a2 size];
  }

  else
  {
    v4 = 11;
  }

  JavaUtilWeakHashMap_initWithInt_(a1, v4);

  return [a1 putAllImplWithJavaUtilMap:a2];
}

JavaUtilWeakHashMap *new_JavaUtilWeakHashMap_init()
{
  v0 = [JavaUtilWeakHashMap alloc];
  JavaUtilWeakHashMap_initWithInt_(v0, 16);
  return v0;
}

id JavaUtilWeakHashMap_Entry_initWithId_withId_withJavaLangRefReferenceQueue_(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  JavaLangRefWeakReference_initWithId_withJavaLangRefReferenceQueue_(a1, a2, a4);
  *(a1 + 44) = a2 == 0;
  if (*(a1 + 44))
  {
    v7 = 0;
  }

  else
  {
    v7 = JavaUtilCollections_secondaryHashWithId_(a2);
  }

  *(a1 + 40) = v7;

  return JreStrongAssign((a1 + 48), a3);
}

JavaUtilWeakHashMap_HashIterator *new_JavaUtilWeakHashMap_HashIterator_initWithJavaUtilWeakHashMap_withJavaUtilWeakHashMap_Entry_Type_(unsigned int *a1, void *a2)
{
  v4 = [JavaUtilWeakHashMap_HashIterator alloc];
  JreStrongAssign(&v4->this$0_, a1);
  v4->position_ = 0;
  JreStrongAssign(&v4->type_, a2);
  v5 = atomic_load(a1 + 10);
  v4->expectedModCount_ = v5;
  return v4;
}

uint64_t JavaLangByte_decodeWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaLangByte__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015CB98();
  }

  v3 = JavaLangInteger_decodeWithNSString_(a1);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v4 = [v2 intValue];
  if (v4 != v4)
  {
    v13 = JreStrcat("$$C", v5, v6, v7, v8, v9, v10, v11, @"Value out of range for byte: ");
    v14 = new_JavaLangNumberFormatException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  return JavaLangByte_valueOfWithByte_(v4);
}

uint64_t JavaLangByte_parseByteWithNSString_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangByte__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015CB98();
  }

  return JavaLangByte_parseByteWithNSString_withInt_(a1, 10, a3, a4, a5, a6, a7, a8);
}

uint64_t JavaLangByte_parseByteWithNSString_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangByte__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015CB98();
  }

  v10 = JavaLangInteger_parseIntWithNSString_withInt_(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v10 != v10)
  {
    v19 = JreStrcat("$$C", v11, v12, v13, v14, v15, v16, v17, @"Value out of range for byte: ");
    v20 = new_JavaLangNumberFormatException_initWithNSString_(v19);
    objc_exception_throw(v20);
  }

  return v10;
}

NSString *JavaLangByte_toHexStringWithByte_withBoolean_(unsigned __int8 a1, int a2)
{
  if ((atomic_load_explicit(JavaLangByte__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015CB98();
  }

  return JavaLangIntegralToString_byteToHexStringWithByte_withBoolean_(a1, a2);
}

NSString *JavaLangByte_toStringWithByte_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaLangByte__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015CB98();
  }

  return JavaLangInteger_toStringWithInt_(a1);
}

uint64_t JavaLangByte_valueOfWithNSString_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangByte__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015CB98();
  }

  v9 = JavaLangByte_parseByteWithNSString_(a1, a2, a3, a4, a5, a6, a7, a8);

  return JavaLangByte_valueOfWithByte_(v9);
}

uint64_t JavaLangByte_valueOfWithNSString_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangByte__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015CB98();
  }

  v10 = JavaLangByte_parseByteWithNSString_withInt_(a1, a2, a3, a4, a5, a6, a7, a8);

  return JavaLangByte_valueOfWithByte_(v10);
}

uint64_t JavaLangByte_valueOfWithByte_(int a1)
{
  if ((atomic_load_explicit(JavaLangByte__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015CB98();
  }

  if (!qword_100554A00)
  {
    JreThrowNullPointerException();
  }

  v2 = a1 + 128;
  v3 = *(qword_100554A00 + 8);
  if (v3 <= v2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, v2);
  }

  return *(qword_100554A00 + 24 + 8 * v2);
}

uint64_t JavaLangByte_class_()
{
  if ((atomic_load_explicit(JavaLangByte__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015CB98();
  }

  if (qword_100554A10 != -1)
  {
    sub_10015CBA4();
  }

  return qword_100554A08;
}

JavaUtilConcurrentModificationException *new_JavaUtilConcurrentModificationException_init()
{
  v0 = [JavaUtilConcurrentModificationException alloc];
  JavaLangRuntimeException_init(v0, v1);
  return v0;
}

uint64_t OrgXmlSaxXMLReader_class_()
{
  if (qword_100554A20 != -1)
  {
    sub_10015CD14();
  }

  return qword_100554A18;
}

void sub_10015CFBC(id a1)
{
  v1[0] = NSCopying_class_();
  v1[1] = JavaIoSerializable_class_();
  qword_100554A30 = [IOSObjectArray newArrayWithObjects:v1 count:2 type:IOSClass_class_()];
}

id JavaNioCharsetIOSCharset_charsetForNameWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaNioCharsetIOSCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015D9B8();
  }

  v2 = +[JavaNioCharsetIOSCharset getEncodings]_0();
  if (!v2 || !a1)
  {
    goto LABEL_29;
  }

  v3 = [v2 getWithId:{objc_msgSend(a1, "uppercaseString")}];
  if (v3)
  {
    return v3;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = +[JavaNioCharsetIOSCharset getEncodings]_0();
  if (!v5 || (v6 = [v5 values]) == 0)
  {
LABEL_29:
    JreThrowNullPointerException();
  }

  v7 = v6;
  v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *v24;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v3 = *(*(&v23 + 1) + 8 * i);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      if (!v3)
      {
        goto LABEL_29;
      }

      v12 = [v3 aliases];
      if (!v12)
      {
        goto LABEL_29;
      }

      v13 = v12;
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v19 + 1) + 8 * j);
            if (!v18)
            {
              goto LABEL_29;
            }

            if ([v18 equalsIgnoreCase:a1])
            {
              return v3;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v15);
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    v3 = 0;
  }

  while (v9);
  return v3;
}

id JavaNioCharsetIOSCharset_getAvailableCharsetNames()
{
  if ((atomic_load_explicit(JavaNioCharsetIOSCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015D9B8();
  }

  v0 = +[JavaNioCharsetIOSCharset getEncodings]_0();
  if (!v0)
  {
    JreThrowNullPointerException();
  }

  return [v0 keySet];
}

JavaNioCharsetIOSCharset *sub_10015D888(uint64_t a1)
{
  v2 = [IOSObjectArray arrayWithObjects:*(a1 + 16) count:*(a1 + 24) type:NSString_class_()];
  v3 = [JavaNioCharsetIOSCharset alloc];
  *&v4 = *(a1 + 28);
  v5 = [(JavaNioCharsetIOSCharset *)v3 initWithLong:*a1 withNSString:*(a1 + 8) withNSStringArray:v2 withFloat:v4];
  [qword_100554A40 putWithId:*(a1 + 8) withId:v5];
  return v5;
}

void sub_10015D968(id a1)
{
  for (i = 0; i != 640; i += 32)
  {
    v2 = *(&unk_1003F75D8 + i + 16);
    v3[0] = *(&unk_1003F75D8 + i);
    v3[1] = v2;
    sub_10015D888(v3);
  }
}

JavaNioChannelsClosedChannelException *new_JavaNioChannelsClosedChannelException_init()
{
  v0 = [JavaNioChannelsClosedChannelException alloc];
  JavaIoIOException_init(v0, v1);
  return v0;
}

uint64_t sub_10015DA74(uint64_t a1, uint64_t a2, int a3)
{
  JreStrongAssign((a1 + 8), 0);
  *(a1 + 16) = 0;
  *(a1 + 52) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  result = sub_10016465C(a2);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10015DB2C(uint64_t a1, int a2, int a3)
{
  JreStrongAssign((a1 + 8), 0);
  *(a1 + 16) = 0;
  *(a1 + 52) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  result = sub_1001646AC(a2);
  *(a1 + 32) = result;
  return result;
}

id JavaMathBigDecimal_initWithCharArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4)
{
  JreStrongAssign((a1 + 8), 0);
  *(a1 + 16) = 0;
  v8 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
  *(a1 + 52) = 0;
  if (!a2)
  {
    v61 = new_JavaLangNullPointerException_init();
    goto LABEL_98;
  }

  v9 = a4 + a3;
  v10 = a4 + a3 - 1;
  if (v10 < 0 || a4 < 1 || (a3 & 0x80000000) != 0 || v10 >= *(a2 + 8))
  {
    v61 = new_JavaLangNumberFormatException_init();
    goto LABEL_98;
  }

  v11 = new_JavaLangStringBuilder_initWithInt_(a4);
  if (v10 >= a3)
  {
    v12 = *(a2 + 8);
    if (v12 <= a3)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, a3);
    }

    if (*(a2 + 12 + 2 * a3) == 43)
    {
      a3 = (a3 + 1);
    }

    else
    {
      a3 = a3;
    }
  }

  v62 = v9;
  if (a3 > v10)
  {
    v13 = 0;
    v14 = a3;
LABEL_13:
    LODWORD(v15) = v14 - a3;
    [(JavaLangStringBuilder *)v11 appendWithCharArray:a2 withInt:a3 withInt:(v14 - a3)];
    goto LABEL_43;
  }

  v63 = v11;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  while (1)
  {
    v17 = *(a2 + 8);
    v18 = a3 + v15;
    v19 = a3 + v15;
    if (a3 + v15 < 0 || v18 >= v17)
    {
      IOSArray_throwOutOfBoundsWithMsg(v17, v18);
    }

    v20 = *(a2 + 12 + 2 * v18);
    if (v20 == 46)
    {
      break;
    }

    v21 = *(a2 + 8);
    if ((v19 & 0x80000000) != 0 || v19 >= v21)
    {
      IOSArray_throwOutOfBoundsWithMsg(v21, v19);
    }

    if (v20 == 101)
    {
      break;
    }

    v22 = *(a2 + 8);
    if ((v19 & 0x80000000) != 0 || v19 >= v22)
    {
      IOSArray_throwOutOfBoundsWithMsg(v22, v19);
    }

    if (v20 == 69)
    {
      break;
    }

    if (v16)
    {
      v16 = 1;
    }

    else
    {
      v23 = *(a2 + 8);
      if ((v19 & 0x80000000) != 0 || v19 >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, v19);
      }

      v16 = v20 != 48;
      if (v20 == 48)
      {
        ++v13;
      }
    }

    v15 = (v15 + 1);
    v14 = (a3 + v15);
    if (v14 > v10)
    {
      v8 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
      v11 = v63;
      goto LABEL_13;
    }
  }

  [(JavaLangStringBuilder *)v63 appendWithCharArray:a2 withInt:a3 withInt:v15];
  v24 = *(a2 + 8);
  v14 = (a3 + v15);
  if ((v19 & 0x80000000) != 0 || v14 >= v24)
  {
    IOSArray_throwOutOfBoundsWithMsg(v24, (a3 + v15));
  }

  if (*(a2 + 12 + 2 * v19) != 46)
  {
    v8 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
    v11 = v63;
LABEL_43:
    *(a1 + 48) = 0;
    goto LABEL_44;
  }

  v25 = (a3 + v15 + 1);
  if (v25 <= v10)
  {
    v26 = (a3 + v15 + 1);
    do
    {
      v56 = *(a2 + 8);
      if ((v26 & 0x80000000) != 0 || v26 >= v56)
      {
        IOSArray_throwOutOfBoundsWithMsg(v56, v26);
      }

      v57 = *(a2 + 12 + 2 * v26);
      if (v57 == 101)
      {
        break;
      }

      v58 = *(a2 + 8);
      if ((v26 & 0x80000000) != 0 || v26 >= v58)
      {
        IOSArray_throwOutOfBoundsWithMsg(v58, v26);
      }

      if (v57 == 69)
      {
        break;
      }

      if (v16)
      {
        v16 = 1;
      }

      else
      {
        v59 = *(a2 + 8);
        if ((v26 & 0x80000000) != 0 || v26 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, v26);
        }

        v60 = *(a2 + 12 + 2 * v26);
        v16 = v60 != 48;
        if (v60 == 48)
        {
          ++v13;
        }
      }

      v26 = (v26 + 1);
    }

    while (v26 <= v10);
  }

  else
  {
    v26 = (a3 + v15 + 1);
  }

  *(a1 + 48) = ~a3 + v26 - v15;
  LODWORD(v15) = *(a1 + 48) + v15;
  v11 = v63;
  [(JavaLangStringBuilder *)v63 appendWithCharArray:a2 withInt:v25 withInt:?];
  v14 = v26;
  v8 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
LABEL_44:
  if (v14 <= v10)
  {
    v27 = *(a2 + 8);
    if ((v14 & 0x80000000) != 0 || v14 >= v27)
    {
      IOSArray_throwOutOfBoundsWithMsg(v27, v14);
    }

    v28 = *(a2 + 12 + 2 * v14);
    if (v28 == 101)
    {
      goto LABEL_101;
    }

    v29 = *(a2 + 8);
    if ((v14 & 0x80000000) != 0 || v14 >= v29)
    {
      IOSArray_throwOutOfBoundsWithMsg(v29, v14);
    }

    if (v28 == 69)
    {
LABEL_101:
      v30 = (v14 + 1);
      if (v30 <= v10)
      {
        v31 = *(a2 + 8);
        if ((v30 & 0x80000000) != 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v14 + 1));
        }

        v32 = (v14 + 2);
        if (*(a2 + 12 + 2 * v30) == 43 && v32 <= v10)
        {
          v34 = *(a2 + 8);
          if ((v32 & 0x80000000) != 0 || v32 >= v34)
          {
            IOSArray_throwOutOfBoundsWithMsg(v34, v32);
          }

          if (*(a2 + 12 + 2 * v32) == 45)
          {
            v30 = v30;
          }

          else
          {
            v30 = v32;
          }
        }
      }

      v35 = NSString_valueOfChars_offset_count_(a2, v30, (v62 - v30));
      v36 = *(a1 + 48);
      v44 = v36 - JavaLangInteger_parseIntWithNSString_(v35, v37, v38, v39, v40, v41, v42, v43);
      *(a1 + 48) = v44;
      if (v44 != *(a1 + 48))
      {
        v61 = new_JavaLangNumberFormatException_initWithNSString_(@"Scale out of range.");
LABEL_98:
        objc_exception_throw(v61);
      }
    }
  }

  v45 = [(JavaLangStringBuilder *)v11 description];
  if (v15 > 18)
  {
    v54 = new_JavaMathBigInteger_initWithNSString_(v45);
    sub_100161B18(a1, v54);
  }

  else
  {
    v53 = JavaLangLong_parseLongWithNSString_(v45, v46, v47, v48, v49, v50, v51, v52);
    *(a1 + 40) = v53;
    *(a1 + 32) = sub_10016465C(v53);
  }

  *(a1 + v8[858]) = [(JavaLangStringBuilder *)v11 length]- v13;
  result = [(JavaLangAbstractStringBuilder *)v11 charAtWithInt:0];
  if (result == 45)
  {
    --*(a1 + v8[858]);
  }

  return result;
}

id JavaMathBigDecimal_initWithCharArray_withJavaMathMathContext_(_DWORD *a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaMathBigDecimal_initWithCharArray_withInt_withInt_(a1, a2, 0, *(a2 + 8));

  return sub_10015FC44(a1, a3);
}

id JavaMathBigDecimal_initWithNSString_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 toCharArray];
  v5 = [a2 length];

  return JavaMathBigDecimal_initWithCharArray_withInt_withInt_(a1, v4, 0, v5);
}

id JavaMathBigDecimal_initWithNSString_withJavaMathMathContext_(_DWORD *a1, void *a2, void *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaMathBigDecimal_initWithCharArray_withInt_withInt_(a1, [a2 toCharArray], 0, objc_msgSend(a2, "length"));

  return sub_10015FC44(a1, a3);
}

id JavaMathBigDecimal_initWithDouble_(uint64_t a1, double a2)
{
  JreStrongAssign((a1 + 8), 0);
  *(a1 + 16) = 0;
  *(a1 + 52) = 0;
  if (JavaLangDouble_isInfiniteWithDouble_(a2) || JavaLangDouble_isNaNWithDouble_())
  {
    v21 = new_JavaLangNumberFormatException_initWithNSString_(@"Infinite or NaN");
    objc_exception_throw(v21);
  }

  v4 = JavaLangDouble_doubleToLongBitsWithDouble_(a2);
  *(a1 + 48) = 1075 - ((v4 >> 52) & 0x7FF);
  v5 = *(a1 + 48);
  if (v5 != 1075)
  {
    v6 = v4 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
    goto LABEL_8;
  }

  v6 = 2 * (v4 & 0xFFFFFFFFFFFFFLL);
  if (!v6)
  {
    *(a1 + 48) = 0;
    *(a1 + 52) = 1;
    v5 = *(a1 + 48);
LABEL_8:
    if (v5 < 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = 1075;
LABEL_9:
  v7 = JavaLangLong_numberOfTrailingZerosWithLong_(v6);
  v8 = JavaLangMath_minWithInt_withInt_(v5, v7);
  v6 >>= v8;
  *(a1 + 48) -= v8;
LABEL_10:
  if (v4 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = -v6;
  }

  result = sub_10016465C(v9);
  v11 = result;
  v12 = *(a1 + 48);
  if ((v12 & 0x80000000) != 0)
  {
    v17 = result - v12;
    if (!result)
    {
      v17 = 0;
    }

    *(a1 + 32) = v17;
    if (*(a1 + 32) > 63)
    {
      v20 = JavaMathBigInteger_valueOfWithLong_(v9);
      if (!v20)
      {
        goto LABEL_34;
      }

      result = JreStrongAssign((a1 + 24), [(JavaMathBigInteger *)v20 shiftLeftWithInt:-*(a1 + 48)]);
    }

    else
    {
      *(a1 + 40) = v9 << -*(a1 + 48);
    }

    *(a1 + 48) = 0;
    return result;
  }

  if (!v12)
  {
    *(a1 + 40) = v9;
    *(a1 + 32) = result;
    return result;
  }

  if (!qword_100554A78)
  {
    goto LABEL_34;
  }

  if (v12 >= *(qword_100554A78 + 8))
  {
    goto LABEL_27;
  }

  if (!qword_100554A80)
  {
LABEL_34:
    JreThrowNullPointerException();
  }

  v13 = *(qword_100554A80 + 8);
  if (v12 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v12);
  }

  if (*(qword_100554A80 + 12 + 4 * v12) + v11 <= 63)
  {
    v14 = *(a1 + 48);
    v15 = *(qword_100554A78 + 8);
    if (v14 < 0 || v14 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v14);
    }

    v16 = *(qword_100554A78 + 16 + 8 * v14) * v9;
    *(a1 + 40) = v16;
    result = sub_10016465C(v16);
    *(a1 + 32) = result;
    return result;
  }

LABEL_27:
  v18 = JavaMathBigInteger_valueOfWithLong_(v9);
  v19 = JavaMathMultiplication_multiplyByFivePowWithJavaMathBigInteger_withInt_(v18, *(a1 + 48));

  return sub_100161B18(a1, v19);
}

id JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(uint64_t a1, void *a2, int a3)
{
  JreStrongAssign((a1 + 8), 0);
  *(a1 + 16) = 0;
  *(a1 + 52) = 0;
  if (!a2)
  {
    v7 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v7);
  }

  *(a1 + 48) = a3;

  return sub_100161B18(a1, a2);
}

JavaMathBigDecimal *JavaMathBigDecimal_valueOfWithLong_withInt_(unint64_t a1, int a2)
{
  if (atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire))
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100164DDC();
    if (a2)
    {
LABEL_3:
      if (a1 || a2 < 0)
      {
        goto LABEL_8;
      }

      if (!qword_100554A90)
      {
        JreThrowNullPointerException();
      }

      if (*(qword_100554A90 + 8) > a2)
      {
        return *(qword_100554A90 + 24 + 8 * a2);
      }

LABEL_8:
      v5 = [JavaMathBigDecimal alloc];
      sub_10015DA74(v5, a1, a2);

      return v5;
    }
  }

  return JavaMathBigDecimal_valueOfWithLong_(a1);
}

JavaMathBigDecimal *JavaMathBigDecimal_valueOfWithLong_(unint64_t a1)
{
  if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164DDC();
  }

  if (a1 > 0xA)
  {
    v4 = [JavaMathBigDecimal alloc];
    sub_10015DA74(v4, a1, 0);

    return v4;
  }

  else
  {
    if (!qword_100554A88)
    {
      JreThrowNullPointerException();
    }

    v2 = *(qword_100554A88 + 8);
    if (v2 <= a1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v2, a1);
    }

    return *(qword_100554A88 + 24 + 8 * a1);
  }
}

JavaMathBigDecimal *JavaMathBigDecimal_valueOfWithDouble_(double a1)
{
  if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164DDC();
  }

  if (JavaLangDouble_isInfiniteWithDouble_(a1) || JavaLangDouble_isNaNWithDouble_())
  {
    v5 = new_JavaLangNumberFormatException_initWithNSString_(@"Infinite or NaN");
    objc_exception_throw(v5);
  }

  v2 = JavaLangDouble_toStringWithDouble_(a1);
  v3 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithNSString_(v3, v2);

  return v3;
}

JavaMathBigDecimal *sub_10015EEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164DDC();
  }

  if (!qword_100554A50)
  {
    goto LABEL_22;
  }

  if (*(qword_100554A50 + 8) > a3)
  {
    if (a1 && a2 && qword_100554A58)
    {
      v6 = *(qword_100554A58 + 8);
      if ((a3 & 0x80000000) != 0 || v6 <= a3)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, a3);
      }

      if ((JavaLangMath_maxWithInt_withInt_(*(a1 + 32), *(qword_100554A58 + 12 + 4 * a3) + *(a2 + 32)) + 1) <= 63)
      {
        v7 = *(a2 + 40);
        v8 = *(qword_100554A50 + 8);
        if ((a3 & 0x80000000) != 0 || v8 <= a3)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, a3);
        }

        v9 = *(a1 + 40) + *(qword_100554A50 + 16 + 8 * a3) * v7;
        v10 = *(a1 + 48);

        return JavaMathBigDecimal_valueOfWithLong_withInt_(v9, v10);
      }

      goto LABEL_17;
    }

LABEL_22:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_22;
  }

LABEL_17:
  v12 = [JavaMathBigDecimal unscaledValue]_0(a1);
  if (!v12 || !a2)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = [JavaMathBigDecimal unscaledValue]_0(a2);
  v15 = [v13 addWithJavaMathBigInteger:{JavaMathMultiplication_multiplyByTenPowWithJavaMathBigInteger_withLong_(v14, a3)}];
  v16 = *(a1 + 48);
  v17 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v17, v15, v16);

  return v17;
}

JavaMathBigDecimal *sub_10015FAF4(uint64_t a1)
{
  if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164DDC();
  }

  if (a1 == a1)
  {

    return JavaMathBigDecimal_valueOfWithLong_withInt_(0, a1);
  }

  else
  {
    v3 = [JavaMathBigDecimal alloc];
    v4 = v3;
    if (a1 < 0)
    {
      v5 = 0x80000000;
    }

    else
    {
      v5 = 0x7FFFFFFF;
    }

    sub_10015DB2C(v3, 0, v5);

    return v4;
  }
}

uint64_t sub_10015FB94(uint64_t a1)
{
  if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164DDC();
  }

  if (a1 <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v3 = @"Overflow";
    goto LABEL_8;
  }

  if (a1 >= 0x80000000)
  {
    v3 = @"Underflow";
LABEL_8:
    v4 = new_JavaLangArithmeticException_initWithNSString_(v3);
    objc_exception_throw(v4);
  }

  return a1;
}

id sub_10015FC44(_DWORD *a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_46;
  }

  result = [a2 getPrecision];
  v5 = result;
  v6 = a1[13];
  if (v6 > 0)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  v7 = (a1[8] - 1) * 0.301029996;
  v8 = v7;
  if (v7 < 0.0)
  {
    v9 = 0x80000000;
  }

  else
  {
    v9 = 0x7FFFFFFF;
  }

  if (v8 == 0x80000000)
  {
    v8 = v9;
  }

  v6 = v8 + 1;
  if (result)
  {
LABEL_11:
    if (v6 - result < 1)
    {
      return result;
    }

    result = [a1 precision];
    v10 = (result - v5);
    if (v10 < 1)
    {
      return result;
    }

    if (a1[8] <= 63)
    {

      return sub_1001641E4(a1, a2, v10);
    }

    v11 = JavaMathMultiplication_powerOf10WithLong_((result - v5));
    v12 = [JavaMathBigDecimal unscaledValue]_0(a1);
    if (v12)
    {
      v13 = [v12 divideAndRemainderWithJavaMathBigInteger:v11];
      if (v13)
      {
        v14 = v13;
        v15 = v13[2];
        if (v15 <= 1)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, 1);
        }

        v16 = *(v14 + 32);
        if (v16)
        {
          v17 = a1[12] - v10;
          if (![v16 signum])
          {
LABEL_42:
            a1[12] = sub_10015FB94(v17);
            a1[13] = v5;
            v38 = *(v14 + 8);
            if (v38 <= 0)
            {
              IOSArray_throwOutOfBoundsWithMsg(v38, 0);
            }

            v39 = *(v14 + 24);

            return sub_100161B18(a1, v39);
          }

          v18 = *(v14 + 8);
          if (v18 <= 1)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, 1);
          }

          v19 = *(v14 + 32);
          if (v19)
          {
            v20 = [v19 abs];
            if (v20)
            {
              v21 = [v20 shiftLeftOneBit];
              if (v21)
              {
                v22 = [v21 compareToWithId:v11];
                v23 = *(v14 + 8);
                if (v23 <= 0)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v23, 0);
                }

                v24 = *(v14 + 24);
                if (v24)
                {
                  v25 = [v24 testBitWithInt:0];
                  v26 = *(v14 + 8);
                  if (v26 <= 1)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v26, 1);
                  }

                  v27 = *(v14 + 32);
                  if (v27)
                  {
                    v28 = sub_1001643C4(v25, [v27 signum] * (v22 + 5), objc_msgSend(a2, "getRoundingMode"));
                    if (v28)
                    {
                      v29 = v28;
                      v30 = *(v14 + 8);
                      if (v30 <= 0)
                      {
                        IOSArray_throwOutOfBoundsWithMsg(v30, 0);
                      }

                      v31 = *(v14 + 24);
                      if (!v31)
                      {
                        goto LABEL_46;
                      }

                      v32 = [v31 addWithJavaMathBigInteger:JavaMathBigInteger_valueOfWithLong_(v29)];
                      IOSObjectArray_Set(v14, 0, v32);
                    }

                    v33 = *(v14 + 8);
                    if (v33 <= 0)
                    {
                      IOSArray_throwOutOfBoundsWithMsg(v33, 0);
                    }

                    v34 = *(v14 + 24);
                    v35 = [JavaMathBigDecimal alloc];
                    JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v35, v34, 0);
                    if ([(JavaMathBigDecimal *)v35 precision]<= v5)
                    {
                      goto LABEL_42;
                    }

                    v36 = *(v14 + 8);
                    if (v36 <= 0)
                    {
                      IOSArray_throwOutOfBoundsWithMsg(v36, 0);
                    }

                    v37 = *(v14 + 24);
                    if (v37)
                    {
                      if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
                      {
                        sub_100147554();
                      }

                      IOSObjectArray_Set(v14, 0, [v37 divideWithJavaMathBigInteger:JavaMathBigInteger_TEN_]);
                      --v17;
                      goto LABEL_42;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_46:
    JreThrowNullPointerException();
  }

  return result;
}

JavaMathBigDecimal *sub_1001603C4(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164DDC();
  }

  v8 = a1 / a2;
  v9 = a1 % a2;
  v10 = JavaLangLong_signumWithLong_(a1);
  v11 = JavaLangLong_signumWithLong_(a2);
  if (v9)
  {
    v12 = v11 * v10;
    v13 = 2 * JavaLangMath_absWithLong_(v9);
    v14 = JavaLangMath_absWithLong_(a2);
    if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100164DDC();
    }

    if (v13 < v14)
    {
      v15 = 4;
    }

    else
    {
      v15 = 5;
    }

    if (v13 > v14)
    {
      v15 = 6;
    }

    v8 += sub_1001643C4(v8 & 1, (v12 * v15), a4);
  }

  return JavaMathBigDecimal_valueOfWithLong_withInt_(v8, a3);
}

JavaMathBigDecimal *sub_1001604AC(void *a1, void *a2, int a3, void *a4)
{
  if (atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    sub_100164DDC();
    if (!a1)
    {
      goto LABEL_37;
    }
  }

  v8 = [a1 divideAndRemainderWithJavaMathBigInteger:a2];
  if (!v8)
  {
    goto LABEL_37;
  }

  v9 = v8;
  v10 = v8[2];
  if (v10 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, 0);
  }

  v11 = *(v9 + 3);
  if (v10 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, 1);
  }

  v12 = *(v9 + 4);
  if (!v12)
  {
    goto LABEL_37;
  }

  if (![*(v9 + 4) signum])
  {
LABEL_27:
    v31 = [JavaMathBigDecimal alloc];
    JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v31, v11, a3);
    v32 = v31;
    goto LABEL_29;
  }

  v13 = [a1 signum];
  if (!a2)
  {
LABEL_37:
    JreThrowNullPointerException();
  }

  v14 = v13;
  v15 = [a2 signum];
  if ([a2 bitLength] > 62)
  {
    v23 = [v12 abs];
    if (v23)
    {
      v24 = [v23 shiftLeftOneBit];
      if (v24)
      {
        v25 = [v24 compareToWithId:{objc_msgSend(a2, "abs")}];
        if (v11)
        {
          v26 = v25;
          v21 = [v11 testBitWithInt:0];
          v22 = v26 + 5;
          goto LABEL_22;
        }
      }
    }

    goto LABEL_37;
  }

  v16 = [v12 longLongValue];
  v17 = [a2 longLongValue];
  v18 = JavaLangMath_absWithLong_(v16);
  v19 = JavaLangMath_absWithLong_(v17);
  if (atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire))
  {
    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

  sub_100164DDC();
  if (!v11)
  {
    goto LABEL_37;
  }

LABEL_12:
  v20 = 2 * v18;
  v21 = [v11 testBitWithInt:0];
  if (v20 < v19)
  {
    v22 = 4;
  }

  else
  {
    v22 = 5;
  }

  if (v20 > v19)
  {
    v22 = 6;
  }

LABEL_22:
  v27 = sub_1001643C4(v21, v22 * v15 * v14, a4);
  if (!v27)
  {
    goto LABEL_27;
  }

  v28 = v27;
  if ([v11 bitLength] <= 62)
  {
    v29 = [v11 longLongValue] + v28;

    return JavaMathBigDecimal_valueOfWithLong_withInt_(v29, a3);
  }

  v33 = [v11 addWithJavaMathBigInteger:JavaMathBigInteger_valueOfWithLong_(v28)];
  v34 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v34, v33, a3);
  v32 = v34;
LABEL_29:

  return v32;
}

JavaMathBigDecimal *new_JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_withJavaMathMathContext_(void *a1, int a2, void *a3)
{
  v6 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v6, a1, a2);
  sub_10015FC44(v6, a3);
  return v6;
}

JavaMathBigDecimal *new_JavaMathBigDecimal_initWithJavaMathBigInteger_(void *a1)
{
  v2 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v2, a1, 0);
  return v2;
}

id sub_100161B18(uint64_t a1, void *a2)
{
  JreStrongAssign((a1 + 24), a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  result = [a2 bitLength];
  *(a1 + 32) = result;
  if (*(a1 + 32) <= 63)
  {
    result = [a2 longLongValue];
    *(a1 + 40) = result;
  }

  return result;
}

JavaMathBigDecimal *sub_100162848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (v3 <= 63)
      {
        v4 = *(a1 + 40);
LABEL_12:
        v11 = sub_10015FB94(a2);

        return JavaMathBigDecimal_valueOfWithLong_withInt_(v4, v11);
      }

      v7 = [JavaMathBigDecimal unscaledValue]_0(a1);
      v8 = sub_10015FB94(a2);
      v9 = [JavaMathBigDecimal alloc];
      JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v9, v7, v8);
      v10 = v9;
      goto LABEL_30;
    }

LABEL_15:
    if (qword_100554A50)
    {
      v12 = -a2;
      if (-a2 >= *(qword_100554A50 + 8))
      {
        v13 = v12;
        goto LABEL_29;
      }

      if (qword_100554A58)
      {
        v13 = v12;
        v14 = *(qword_100554A58 + 8);
        if ((v12 & 0x80000000) != 0 || v14 <= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v12);
        }

        if (*(qword_100554A58 + 12 + 4 * v12) + v3 <= 63)
        {
          v15 = *(a1 + 40);
          v16 = *(qword_100554A50 + 8);
          if ((v12 & 0x80000000) != 0 || v16 <= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, v12);
          }

          v17 = *(qword_100554A50 + 16 + 8 * v12) * v15;
          if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_100164DDC();
          }

          return JavaMathBigDecimal_valueOfWithLong_(v17);
        }

LABEL_29:
        v18 = [JavaMathBigDecimal unscaledValue]_0(a1);
        v19 = JavaMathMultiplication_multiplyByTenPowWithJavaMathBigInteger_withLong_(v18, v13);
        v20 = [JavaMathBigDecimal alloc];
        JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v20, v19, 0);
        v10 = v20;
LABEL_30:

        return v10;
      }
    }

    JreThrowNullPointerException();
  }

  if (*(a1 + 40) == -1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v4 = -1;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v5 = JavaLangMath_maxWithLong_withLong_(a2, 0);

  return sub_10015FAF4(v5);
}

JavaMathBigDecimal *new_JavaMathBigDecimal_initWithNSString_(void *a1)
{
  v2 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithNSString_(v2, a1);
  return v2;
}

id sub_100163C14(void *a1, int a2)
{
  v3 = [a1 toBigIntegerExact];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  if ([v3 bitLength] >= a2)
  {
    v6 = new_JavaLangArithmeticException_initWithNSString_(@"Rounding necessary");
    objc_exception_throw(v6);
  }

  return [v4 longLongValue];
}

id sub_1001641E4(uint64_t a1, void *a2, uint64_t a3)
{
  if (!qword_100554A50)
  {
    goto LABEL_19;
  }

  v5 = *(qword_100554A50 + 8);
  if ((a3 & 0x80000000) != 0 || v5 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, a3);
  }

  v6 = *(qword_100554A50 + 16 + 8 * a3);
  v7 = *(a1 + 48) - a3;
  v8 = *(a1 + 40);
  v9 = v8 / v6;
  v10 = v8 % v6;
  if (v8 % v6)
  {
    v11 = JavaLangMath_absWithLong_(v8 % v6);
    if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100164DDC();
    }

    v12 = JavaLangLong_signumWithLong_(v10);
    if (a2)
    {
      if (2 * v11 < v6)
      {
        v13 = 4;
      }

      else
      {
        v13 = 5;
      }

      if (2 * v11 > v6)
      {
        v13 = 6;
      }

      v9 += sub_1001643C4(v9 & 1, (v12 * v13), [a2 getRoundingMode]);
      v14 = JavaLangMath_absWithLong_(v9);
      v15 = JavaLangMath_log10WithDouble_(v14);
      if (v15 >= [a2 getPrecision])
      {
        v9 /= 10;
        --v7;
      }

      goto LABEL_15;
    }

LABEL_19:
    JreThrowNullPointerException();
  }

LABEL_15:
  *(a1 + 48) = sub_10015FB94(v7);
  if (!a2)
  {
    goto LABEL_19;
  }

  *(a1 + 52) = [a2 getPrecision];
  *(a1 + 40) = v9;
  *(a1 + 32) = sub_10016465C(v9);

  return JreStrongAssign((a1 + 24), 0);
}

uint64_t sub_1001643C4(int a1, uint64_t a2, void *a3)
{
  if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164DDC();
  }

  v6 = [a3 ordinal];
  if (v6 > 3)
  {
    if (v6 > 5)
    {
      if (v6 != 6)
      {
        if (v6 == 7 && a2)
        {
          v9 = new_JavaLangArithmeticException_initWithNSString_(@"Rounding necessary");
          objc_exception_throw(v9);
        }

        return 0;
      }

      if ((JavaLangMath_absWithInt_(a2) + a1) >= 6)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v6 != 4)
      {
        if (JavaLangMath_absWithInt_(a2) < 6)
        {
          return 0;
        }

        goto LABEL_19;
      }

      if (JavaLangMath_absWithInt_(a2) >= 5)
      {
LABEL_19:

        return JavaLangInteger_signumWithInt_(a2);
      }
    }

    return 0;
  }

  switch(v6)
  {
    case 0:
      goto LABEL_19;
    case 2:
      v10 = JavaLangInteger_signumWithInt_(a2);

      return JavaLangMath_maxWithInt_withInt_(v10, 0);
    case 3:
      v7 = JavaLangInteger_signumWithInt_(a2);

      return JavaLangMath_minWithInt_withInt_(v7, 0);
    default:
      return 0;
  }
}

uint64_t sub_10016465C(uint64_t a1)
{
  if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164DDC();
  }

  return 64 - JavaLangLong_numberOfLeadingZerosWithLong_(a1 ^ (a1 >> 63));
}

uint64_t sub_1001646AC(int a1)
{
  if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164DDC();
  }

  return 32 - JavaLangInteger_numberOfLeadingZerosWithInt_(a1 ^ (a1 >> 31));
}

JavaMathBigDecimal *new_JavaMathBigDecimal_initWithDouble_withJavaMathMathContext_(void *a1, double a2)
{
  v4 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithDouble_(v4, a2);
  sub_10015FC44(v4, a1);
  return v4;
}

JavaMathBigDecimal *new_JavaMathBigDecimal_initWithLong_(uint64_t a1)
{
  v2 = [JavaMathBigDecimal alloc];
  sub_10015DA74(v2, a1, 0);
  return v2;
}

uint64_t JavaMathBigDecimal_class_()
{
  if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164DDC();
  }

  if (qword_100554AA0 != -1)
  {
    sub_100164E34();
  }

  return qword_100554A98;
}

void *JavaIoBufferedWriter_initWithJavaIoWriter_withInt_(uint64_t a1, void *a2, int a3)
{
  JavaIoWriter_initWithId_(a1, a2);
  if (a3 <= 0)
  {
    v8 = new_JavaLangIllegalArgumentException_initWithNSString_(@"size <= 0");
    objc_exception_throw(v8);
  }

  JreStrongAssign((a1 + 16), a2);
  v6 = [IOSCharArray newArrayWithLength:a3];

  return JreStrongAssignAndConsume((a1 + 24), v6);
}

JavaIoBufferedWriter *new_JavaIoBufferedWriter_initWithJavaIoWriter_(void *a1)
{
  v2 = [JavaIoBufferedWriter alloc];
  JavaIoBufferedWriter_initWithJavaIoWriter_withInt_(v2, a1, 0x2000);
  return v2;
}

void *JavaNioServerSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_(uint64_t a1)
{
  JavaNioChannelsServerSocketChannel_initWithJavaNioChannelsSpiSelectorProvider_();
  JreStrongAssignAndConsume((a1 + 63), [NSObject alloc]);
  v2 = [JavaNioServerSocketChannelImpl_ServerSocketAdapter alloc];
  JavaNetServerSocket_init(v2);
  objc_storeWeak(&v2->channelImpl_, a1);

  return JreStrongAssignAndConsume((a1 + 55), v2);
}

void sub_100165C38()
{
  if (v0)
  {
    JUMPOUT(0x100165C40);
  }

  JUMPOUT(0x100165C44);
}

BOOL sub_100165C50(void *a1, void *a2)
{
  if ([a1 isBlocking])
  {
    return 1;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  v3 = [a2 getCause];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  objc_opt_class();
  if (!v3)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v3[21] != 35;
}

JavaNioServerSocketChannelImpl *new_JavaNioServerSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_()
{
  v0 = [JavaNioServerSocketChannelImpl alloc];
  JavaNioServerSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_(v0);
  return v0;
}

JavaMathBigInteger *JavaMathLogical_not__WithJavaMathBigInteger_(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_67;
  }

  v2 = *(a1 + 20);
  explicit = atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire);
  if (!v2)
  {
    if ((explicit & 1) == 0)
    {
      sub_100147554();
    }

    v4 = &JavaMathBigInteger_MINUS_ONE_;
    return *v4;
  }

  if ((explicit & 1) == 0)
  {
    sub_100147554();
  }

  if ([a1 isEqual:JavaMathBigInteger_MINUS_ONE_])
  {
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100147554();
    }

    v4 = &JavaMathBigInteger_ZERO_;
    return *v4;
  }

  v6 = [IOSIntArray arrayWithLength:*(a1 + 16) + 1];
  v7 = *(a1 + 8);
  if (*(a1 + 20) <= 0)
  {
    if (!v7)
    {
      goto LABEL_67;
    }

    v10 = 0;
    while (1)
    {
      v14 = *(v7 + 8);
      if ((v10 & 0x80000000) != 0 || v10 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v10);
      }

      if (*(v7 + 12 + 4 * v10))
      {
        break;
      }

      size = v6->super.size_;
      if ((v10 & 0x80000000) != 0 || v10 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v10);
      }

      *(&v6->super.size_ + v10 + 1) = -1;
      v10 = (v10 + 1);
      v7 = *(a1 + 8);
      if (!v7)
      {
        goto LABEL_67;
      }
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_67;
    }

    v8 = *(v7 + 8);
    v9 = *(a1 + 16) - 1;
    if (v9 < 0 || v9 >= v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, v9);
    }

    if (*(v7 + 12 + 4 * v9) == -1)
    {
      v16 = *(a1 + 16);
      if (v16 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0;
        while (1)
        {
          v17 = *(a1 + 8);
          v18 = *(v17 + 8);
          if (v10 >= v18)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, v10);
          }

          if (*(v17 + 12 + 4 * v10) != -1)
          {
            break;
          }

          ++v10;
          v16 = *(a1 + 16);
          if (v10 >= v16)
          {
            goto LABEL_45;
          }
        }

        v16 = *(a1 + 16);
      }

LABEL_45:
      if (v10 == v16)
      {
        v19 = v6->super.size_;
        if (v16 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, v16);
        }

        *(&v6->super.size_ + v16 + 1) = 1;
        v20 = -*(a1 + 20);
        v21 = v16 + 1;
        goto LABEL_64;
      }
    }

    else
    {
      LODWORD(v10) = -1;
      do
      {
        v11 = *(a1 + 8);
        v12 = *(v11 + 8);
        v13 = v10 + 1;
        if (v10 + 1 < 0 || v13 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v13);
        }

        v10 = (v10 + 1);
      }

      while (*(v11 + 12 + 4 * v13) == -1);
    }
  }

  v22 = *(a1 + 8);
  if (!v22)
  {
LABEL_67:
    JreThrowNullPointerException();
  }

  v23 = *(v22 + 8);
  if ((v10 & 0x80000000) != 0 || v10 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v10);
  }

  v24 = *(a1 + 20) + *(v22 + 12 + 4 * v10);
  v25 = v6->super.size_;
  if ((v10 & 0x80000000) != 0 || v10 >= v25)
  {
    IOSArray_throwOutOfBoundsWithMsg(v25, v10);
  }

  *(&v6->super.size_ + v10 + 1) = v24;
  v21 = v10 + 1;
  if (v10 + 1 < *(a1 + 16))
  {
    v26 = v21;
    do
    {
      v27 = *(a1 + 8);
      v28 = *(v27 + 8);
      if (v26 < 0 || v26 >= v28)
      {
        IOSArray_throwOutOfBoundsWithMsg(v28, v26);
      }

      v29 = *(v27 + 12 + 4 * v26);
      v30 = v6->super.size_;
      if (v26 < 0 || v26 >= v30)
      {
        IOSArray_throwOutOfBoundsWithMsg(v30, v26);
      }

      *(&v6->super.size_ + ++v26) = v29;
    }

    while (v26 < *(a1 + 16));
    v21 = v26;
  }

  v20 = -*(a1 + 20);
LABEL_64:
  v31 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v20, v21, v6);

  return v31;
}

JavaMathBigInteger *JavaMathLogical_and__WithJavaMathBigInteger_withJavaMathBigInteger_(_DWORD *a1, _DWORD *a2)
{
  if (!a2)
  {
    goto LABEL_32;
  }

  if (!a2[5])
  {
LABEL_12:
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100147554();
    }

    return JavaMathBigInteger_ZERO_;
  }

  v3 = a1;
  if (!a1)
  {
LABEL_32:
    JreThrowNullPointerException();
  }

  if (!a1[5])
  {
    goto LABEL_12;
  }

  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  if ([a2 isEqual:JavaMathBigInteger_MINUS_ONE_])
  {
    return v3;
  }

  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  if ([v3 isEqual:JavaMathBigInteger_MINUS_ONE_])
  {
    return a2;
  }

  v5 = a2[5];
  if (v3[5] >= 1)
  {
    v6 = v3;
    v7 = a2;
    if (v5 >= 1)
    {

      return JavaMathLogical_andPositiveWithJavaMathBigInteger_withJavaMathBigInteger_(v3, a2);
    }

    goto LABEL_23;
  }

  if (v5 >= 1)
  {
    v6 = a2;
    v7 = v3;
LABEL_23:

    return JavaMathLogical_andDiffSignsWithJavaMathBigInteger_withJavaMathBigInteger_(v6, v7);
  }

  if (v3[4] <= a2[4])
  {
    v8 = a2;
    v9 = v3;
  }

  else
  {
    v8 = v3;
    v9 = a2;
  }

  return JavaMathLogical_andNegativeWithJavaMathBigInteger_withJavaMathBigInteger_(v8, v9);
}

uint64_t JavaMathLogical_andPositiveWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v4 = JavaLangMath_minWithInt_withInt_(*(a1 + 16), *(a2 + 16));
  v5 = JavaLangMath_maxWithInt_withInt_([a1 getFirstNonzeroDigit], objc_msgSend(a2, "getFirstNonzeroDigit"));
  if (v5 >= v4)
  {
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100147554();
    }

    return JavaMathBigInteger_ZERO_;
  }

  else
  {
    LODWORD(v8) = v5;
    v18 = v4;
    v6 = v4;
    v7 = [IOSIntArray arrayWithLength:v4];
    v8 = v8;
    do
    {
      v9 = *(a1 + 8);
      if (!v9)
      {
        goto LABEL_21;
      }

      v10 = *(v9 + 8);
      if (v8 < 0 || v8 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v8);
      }

      v11 = *(v9 + 12 + 4 * v8);
      v12 = *(a2 + 8);
      v13 = *(v12 + 8);
      if (v8 < 0 || v8 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v8);
      }

      v14 = *(v12 + 12 + 4 * v8);
      size = v7->super.size_;
      if (v8 < 0 || v8 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v8);
      }

      *(&v7->super.size_ + ++v8) = v14 & v11;
    }

    while (v6 != v8);
    v16 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, v18, v7);
    [(JavaMathBigInteger *)v16 cutOffLeadingZeroes];
  }

  return v16;
}

uint64_t JavaMathLogical_andDiffSignsWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_44;
  }

  v4 = [a1 getFirstNonzeroDigit];
  if (!a2)
  {
    goto LABEL_44;
  }

  v5 = v4;
  v6 = [a2 getFirstNonzeroDigit];
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100147554();
    }

    return JavaMathBigInteger_ZERO_;
  }

  else
  {
    v8 = v6;
    v9 = [IOSIntArray arrayWithLength:*(a1 + 16)];
    LODWORD(v5) = JavaLangMath_maxWithInt_withInt_(v5, v8);
    if (v5 == v8)
    {
      v10 = *(a2 + 8);
      if (!v10)
      {
        goto LABEL_44;
      }

      v11 = *(v10 + 8);
      if ((v8 & 0x80000000) != 0 || v8 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v8);
      }

      v12 = -*(v10 + 12 + 4 * v8);
      v13 = *(a1 + 8);
      v14 = *(v13 + 8);
      if ((v8 & 0x80000000) != 0 || v8 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v8);
      }

      size = v9->super.size_;
      if ((v8 & 0x80000000) != 0 || v8 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v8);
      }

      *(&v9->super.size_ + v8 + 1) = *(v13 + 12 + 4 * v8) & v12;
      LODWORD(v5) = v8 + 1;
    }

    v16 = JavaLangMath_minWithInt_withInt_(*(a2 + 16), *(a1 + 16));
    if (v5 < v16)
    {
      v17 = v16;
      v5 = v5;
      v18 = v16;
      do
      {
        v19 = *(a2 + 8);
        if (!v19)
        {
          goto LABEL_44;
        }

        v20 = *(v19 + 8);
        if (v5 < 0 || v5 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, v5);
        }

        v21 = *(v19 + 12 + 4 * v5);
        v22 = *(a1 + 8);
        v23 = *(v22 + 8);
        if (v5 < 0 || v5 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, v5);
        }

        v24 = *(v22 + 12 + 4 * v5);
        v25 = v9->super.size_;
        if (v5 < 0 || v5 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, v5);
        }

        *(&v9->super.size_ + ++v5) = v24 & ~v21;
      }

      while (v18 != v5);
      LODWORD(v5) = v17;
    }

    if (v5 >= *(a2 + 16) && v5 < *(a1 + 16))
    {
      v27 = v5;
      while (1)
      {
        v28 = *(a1 + 8);
        if (!v28)
        {
          break;
        }

        v29 = *(v28 + 8);
        if (v27 < 0 || v27 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, v27);
        }

        v30 = *(v28 + 12 + 4 * v27);
        v31 = v9->super.size_;
        if (v27 < 0 || v27 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, v27);
        }

        *(&v9->super.size_ + ++v27) = v30;
        if (v27 >= *(a1 + 16))
        {
          goto LABEL_42;
        }
      }

LABEL_44:
      JreThrowNullPointerException();
    }

LABEL_42:
    v26 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, v7, v9);
    [(JavaMathBigInteger *)v26 cutOffLeadingZeroes];
  }

  return v26;
}

JavaMathBigInteger *JavaMathLogical_andNegativeWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_81;
  }

  v4 = [a1 getFirstNonzeroDigit];
  if (!a2)
  {
    goto LABEL_81;
  }

  v5 = v4;
  v6 = [a2 getFirstNonzeroDigit];
  if (v5 >= *(a2 + 16))
  {
    return a1;
  }

  v7 = v6;
  v8 = JavaLangMath_maxWithInt_withInt_(v6, v5);
  v9 = v8;
  if (v7 <= v5)
  {
    v18 = *(a2 + 8);
    if (v7 >= v5)
    {
      if (!v18)
      {
        goto LABEL_81;
      }

      v19 = v8;
      v22 = *(v18 + 8);
      if ((v9 & 0x80000000) != 0 || v9 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v9);
      }

      v21 = -*(v18 + 12 + 4 * v9);
    }

    else
    {
      if (!v18)
      {
        goto LABEL_81;
      }

      v19 = v8;
      v20 = *(v18 + 8);
      if ((v9 & 0x80000000) != 0 || v9 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v9);
      }

      v21 = ~*(v18 + 12 + 4 * v9);
    }

    v23 = *(a1 + 8);
    v24 = *(v23 + 8);
    if ((v9 & 0x80000000) != 0 || v9 >= v24)
    {
      IOSArray_throwOutOfBoundsWithMsg(v24, v9);
    }

    v15 = -*(v23 + 12 + 4 * v19) & v21;
    if (v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_81;
    }

    v11 = *(v10 + 8);
    if ((v9 & 0x80000000) != 0 || v9 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v9);
    }

    v12 = -*(v10 + 12 + 4 * v9);
    v13 = *(a1 + 8);
    v14 = *(v13 + 8);
    if ((v9 & 0x80000000) != 0 || v9 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v9);
    }

    v15 = v12 & ~*(v13 + 12 + 4 * v9);
    if (v15)
    {
LABEL_11:
      LODWORD(v16) = v9;
LABEL_47:
      v35 = *(a1 + 16);
      v36 = [IOSIntArray arrayWithLength:v35];
      size = v36->super.size_;
      if ((v16 & 0x80000000) != 0 || v16 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v16);
      }

      *(&v36->super.size_ + v16 + 1) = -v15;
      LODWORD(v16) = v16 + 1;
      if (v16 < *(a2 + 16))
      {
        v55 = v35;
        v16 = v16;
        do
        {
          v38 = *(a1 + 8);
          if (!v38)
          {
            goto LABEL_81;
          }

          v39 = *(v38 + 8);
          if (v16 < 0 || v16 >= v39)
          {
            IOSArray_throwOutOfBoundsWithMsg(v39, v16);
          }

          v40 = *(v38 + 12 + 4 * v16);
          v41 = *(a2 + 8);
          v42 = *(v41 + 8);
          if (v16 < 0 || v16 >= v42)
          {
            IOSArray_throwOutOfBoundsWithMsg(v42, v16);
          }

          v43 = *(v41 + 12 + 4 * v16);
          v44 = v36->super.size_;
          if (v16 < 0 || v16 >= v44)
          {
            IOSArray_throwOutOfBoundsWithMsg(v44, v16);
          }

          *(&v36->super.size_ + ++v16) = v43 | v40;
        }

        while (v16 < *(a2 + 16));
        v35 = v55;
      }

      if (v16 >= *(a1 + 16))
      {
LABEL_74:
        v49 = v35;
        v50 = v36;
        goto LABEL_75;
      }

      v45 = v16;
      while (1)
      {
        v46 = *(a1 + 8);
        if (!v46)
        {
          break;
        }

        v47 = *(v46 + 8);
        if (v45 < 0 || v45 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, v45);
        }

        v48 = v36->super.size_;
        if (v45 < 0 || v45 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, v45);
        }

        *(&v36->super.size_ + v45 + 1) = *(v46 + 12 + 4 * v45);
        if (++v45 >= *(a1 + 16))
        {
          goto LABEL_74;
        }
      }

LABEL_81:
      JreThrowNullPointerException();
    }
  }

  LODWORD(v16) = v9;
  while (1)
  {
    v16 = (v16 + 1);
    if (v16 >= *(a2 + 16))
    {
      break;
    }

    v25 = *(a1 + 8);
    if (!v25)
    {
      goto LABEL_81;
    }

    v26 = *(v25 + 8);
    if ((v16 & 0x80000000) != 0 || v16 >= v26)
    {
      IOSArray_throwOutOfBoundsWithMsg(v26, v16);
    }

    v27 = *(v25 + 12 + 4 * v16);
    v28 = *(a2 + 8);
    v29 = *(v28 + 8);
    if ((v16 & 0x80000000) != 0 || v16 >= v29)
    {
      IOSArray_throwOutOfBoundsWithMsg(v29, v16);
    }

    v30 = *(v28 + 12 + 4 * v16) | v27;
    if (v30 != -1)
    {
      v15 = ~v30;
      goto LABEL_47;
    }
  }

  v31 = *(a1 + 16);
  if (v16 >= v31)
  {
    v52 = v31;
    goto LABEL_78;
  }

  v16 = v16;
  do
  {
    v32 = *(a1 + 8);
    if (!v32)
    {
      goto LABEL_81;
    }

    v33 = *(v32 + 8);
    if (v16 < 0 || v16 >= v33)
    {
      IOSArray_throwOutOfBoundsWithMsg(v33, v16);
    }

    v34 = *(v32 + 12 + 4 * v16);
    if (v34 != -1)
    {
      v15 = ~v34;
      goto LABEL_47;
    }

    ++v16;
    v31 = *(a1 + 16);
  }

  while (v16 < v31);
  v52 = v31;
LABEL_78:
  v53 = [IOSIntArray arrayWithLength:v31 + 1];
  v54 = v53->super.size_;
  if ((v31 & 0x80000000) != 0 || v31 >= v54)
  {
    IOSArray_throwOutOfBoundsWithMsg(v54, v31);
  }

  *(&v53->super.size_ + v52 + 1) = 1;
  v49 = v31 + 1;
  v50 = v53;
LABEL_75:
  v51 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(-1, v49, v50);

  return v51;
}