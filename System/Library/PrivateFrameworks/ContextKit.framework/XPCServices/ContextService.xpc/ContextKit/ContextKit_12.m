id sub_100214000(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_23;
  }

  sub_100214678([a2 replace:47 withChar:46]);
  if (!JavaNetURLConnection_contentHandlers_)
  {
    goto LABEL_23;
  }

  v4 = [JavaNetURLConnection_contentHandlers_ getWithId:a2];
  if (!v4)
  {
    if (qword_1005550D0)
    {
      v5 = [qword_1005550D0 createContentHandlerWithNSString:a2];
      [JavaNetURLConnection_contentHandlers_ putWithId:a2 withId:v5];
      objc_opt_class();
      if (!v5)
      {
        return v5;
      }

      goto LABEL_6;
    }

    PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(@"java.content.handler.pkgs");
    if (!PropertyWithNSString)
    {
      goto LABEL_19;
    }

    v15 = [PropertyWithNSString split:@"\\|"];
    if (v15)
    {
      v16 = (v15 + 24);
      v17 = &v15[8 * *(v15 + 2) + 24];
      if ((v15 + 24) < v17)
      {
        do
        {
          v18 = *v16++;
          v19 = JreStrcat("$C$", v8, v9, v10, v11, v12, v13, v14, v18);
          SystemClassLoader = JavaLangClassLoader_getSystemClassLoader();
          v21 = IOSClass_forName_initialize_classLoader_(v19, 1, SystemClassLoader);
          if (!v21)
          {
            JreThrowNullPointerException();
          }

          v22 = [v21 newInstance];
          v5 = v22;
        }

        while (v16 < v17);
        if (v22)
        {
LABEL_21:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v25 = new_JavaNetUnknownServiceException_init();
            objc_exception_throw(v25);
          }

          [JavaNetURLConnection_contentHandlers_ putWithId:a2 withId:v5];
          goto LABEL_5;
        }
      }

LABEL_19:
      v23 = JreStrcat("$$", v8, v9, v10, v11, v12, v13, v14, @"org.apache.harmony.awt.www.content.");
      v24 = IOSClass_forName_(v23);
      if (!v24)
      {
        JreThrowNullPointerException();
      }

      v5 = [v24 newInstance];
      if (!v5)
      {
        return *(a1 + 16);
      }

      goto LABEL_21;
    }

LABEL_23:
    JreThrowNullPointerException();
  }

  v5 = v4;
LABEL_5:
  objc_opt_class();
LABEL_6:
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v5;
}

void sub_100214530(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x100214520);
}

void sub_10021456C(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x10021455CLL);
}

NSString *sub_100214678(void *a1)
{
  v1 = new_JavaLangStringBuilder_initWithNSString_(a1);
  if ([(JavaLangStringBuilder *)v1 length]>= 1)
  {
    v2 = 0;
    do
    {
      v3 = [(JavaLangAbstractStringBuilder *)v1 charAtWithInt:v2];
      if (!JavaLangCharacter_isLetterWithChar_(v3))
      {
        isDigitWithChar = JavaLangCharacter_isDigitWithChar_(v3);
        if (v3 != 46 && !isDigitWithChar)
        {
          [(JavaLangAbstractStringBuilder *)v1 setCharAtWithInt:v2 withChar:95];
        }
      }

      v2 = (v2 + 1);
    }

    while (v2 < [(JavaLangStringBuilder *)v1 length]);
  }

  return [(JavaLangStringBuilder *)v1 description];
}

uint64_t JavaNetURLConnection_setContentHandlerFactoryWithJavaNetContentHandlerFactory_(void *a1)
{
  if ((atomic_load_explicit(JavaNetURLConnection__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100214DC8();
  }

  v2 = JavaNetURLConnection_class_();
  objc_sync_enter(v2);
  if (qword_1005550D0)
  {
    v4 = new_JavaLangError_initWithNSString_(@"Factory already set");
    objc_exception_throw(v4);
  }

  JreStrongAssign(&qword_1005550D0, a1);

  return objc_sync_exit(v2);
}

uint64_t JavaNetURLConnection_setFileNameMapWithJavaNetFileNameMap_(void *a1)
{
  if ((atomic_load_explicit(JavaNetURLConnection__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100214DC8();
  }

  v2 = JavaNetURLConnection_class_();
  objc_sync_enter(v2);
  JreStrongAssign(&qword_1005550D8, a1);

  return objc_sync_exit(v2);
}

uint64_t JavaNetURLConnection_getFileNameMap()
{
  if ((atomic_load_explicit(JavaNetURLConnection__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100214DC8();
  }

  v0 = JavaNetURLConnection_class_();
  objc_sync_enter(v0);
  v1 = qword_1005550D8;
  if (!qword_1005550D8)
  {
    v2 = new_JavaNetDefaultFileNameMap_init();
    JreStrongAssignAndConsume(&qword_1005550D8, v2);
    v1 = qword_1005550D8;
  }

  objc_sync_exit(v0);
  return v1;
}

uint64_t JavaNetURLConnection_class_()
{
  if ((atomic_load_explicit(JavaNetURLConnection__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100214DC8();
  }

  if (qword_1005550E8 != -1)
  {
    sub_100214DD4();
  }

  return qword_1005550E0;
}

JavaLangIllegalStateException *new_JavaLangIllegalStateException_init()
{
  v0 = [JavaLangIllegalStateException alloc];
  JavaLangRuntimeException_init(v0, v1);
  return v0;
}

JavaLangIllegalStateException *new_JavaLangIllegalStateException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangIllegalStateException alloc];
  JavaLangRuntimeException_initWithNSString_(v2, a1);
  return v2;
}

JavaLangIllegalStateException *new_JavaLangIllegalStateException_initWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaLangIllegalStateException alloc];
  JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(v4, a1, a2);
  return v4;
}

JavaLangIllegalStateException *new_JavaLangIllegalStateException_initWithJavaLangThrowable_(void *a1)
{
  v2 = [JavaLangIllegalStateException alloc];
  if (a1)
  {
    v3 = [a1 description];
  }

  else
  {
    v3 = 0;
  }

  JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(v2, v3, a1);
  return v2;
}

LibcoreIoStructLinger *new_LibcoreIoStructLinger_initWithInt_withInt_(int a1, int a2)
{
  result = [LibcoreIoStructLinger alloc];
  result->l_onoff_ = a1;
  result->l_linger_ = a2;
  return result;
}

uint64_t JavaUtilLoggingFilter_class_()
{
  if (qword_1005550F8 != -1)
  {
    sub_1002150F4();
  }

  return qword_1005550F0;
}

double JavaLangStrictMath_absWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_absWithDouble_(a1);
}

float JavaLangStrictMath_absWithFloat_(float a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_absWithFloat_(a1);
}

uint64_t JavaLangStrictMath_absWithInt_(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_absWithInt_(a1);
}

uint64_t JavaLangStrictMath_absWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_absWithLong_(a1);
}

void JavaLangStrictMath_acosWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  if (((HIDWORD(v2) >> 20) & 0x7FF) < 0x3FF && (HIDWORD(v2) & 0x7FFFFFFFu) >> 21 > 0x1FE)
  {
    if (v2 < 0)
    {
      if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100218228();
      }
    }

    else
    {
      if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100218228();
      }

      v3 = JavaLangDouble_doubleToRawLongBitsWithDouble_(sqrt((1.0 - a1) * 0.5));
      JavaLangDouble_longBitsToDoubleWithLong_(v3 & 0xFFFFFFFF00000000);
    }
  }
}

void JavaLangStrictMath_asinWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  v3 = HIDWORD(v2) & 0x7FFFFFFF;
  if (((HIDWORD(v2) >> 20) & 0x7FF) < 0x3FF && (v3 >> 21 > 0x1FE || v3 >> 22 <= 0xF8 && a1 + 1.0e300 <= 1.0))
  {
    v4 = (1.0 - JavaLangMath_absWithDouble_(a1)) * 0.5;
    if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100218228();
    }

    v5 = sqrt(v4);
    if (v3 < 0x3FEF3333)
    {
      v6 = JavaLangDouble_doubleToRawLongBitsWithDouble_(v5);
      JavaLangDouble_longBitsToDoubleWithLong_(v6 & 0xFFFFFFFF00000000);
    }
  }
}

void JavaLangStrictMath_atanWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  v3 = HIDWORD(v2) & 0x7FFFFFFF;
  if (((HIDWORD(v2) >> 20) & 0x7FF) < 0x441)
  {
    if (v3 >> 18 <= 0xFF6)
    {
      v4 = 0xFFFFFFFFLL;
      if (a1 + 1.0e300 > 1.0 && v3 >> 21 < 0x1F1)
      {
        return;
      }

      goto LABEL_26;
    }

    v5 = JavaLangMath_absWithDouble_(a1);
    if (v3 > 0x3FF2FFFF)
    {
      if (v3 <= 0x40037FFF)
      {
        a1 = (v5 + -1.5) / (v5 * 1.5 + 1.0);
        v4 = 2;
LABEL_26:
        v10 = a1 * a1;
        v11 = v10 * v10;
        v12 = v10 * (v10 * v10 * (v10 * v10 * (v10 * v10 * (v10 * v10 * (v10 * v10 * 0.0162858201 + 0.0497687799) + 0.0666107314) + 0.0909088713) + 0.142857143) + 0.333333333);
        v13 = v11 * (v11 * (v11 * (v11 * (v11 * -0.0365315727 + -0.0583357013) + -0.0769187621) + -0.111111104) + -0.2);
        if (v3 >> 18 <= 0xFF6)
        {
          return;
        }

        if (!qword_100555100)
        {
          goto LABEL_40;
        }

        v14 = *(qword_100555100 + 8);
        if ((v4 & 0x80000000) != 0 || v14 <= v4)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v4);
        }

        if (!qword_100555108)
        {
          goto LABEL_40;
        }

        v15 = v13 + v12;
        v16 = *(qword_100555108 + 8);
        if ((v4 & 0x80000000) != 0 || v16 <= v4)
        {
          v21 = *(qword_100555100 + 16 + 8 * v4);
          IOSArray_throwOutOfBoundsWithMsg(v16, v4);
        }

        v17 = *(qword_100555100 + 16 + 8 * v4) - (-(*(qword_100555108 + 16 + 8 * v4) - a1 * v15) - a1);
        return;
      }

      v6 = -1.0;
      v4 = 3;
    }

    else if (v3 > 0x3FE5FFFF)
    {
      v6 = v5 + -1.0;
      v5 = v5 + 1.0;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      v6 = v5 * 2.0 + -1.0;
      v5 = v5 + 2.0;
    }

    a1 = v6 / v5;
    goto LABEL_26;
  }

  if (v3 > 0x7FF00000 || v2 && v3 == 2146435072)
  {
    return;
  }

  if (SHIDWORD(v2) >= 1)
  {
    if (qword_100555100)
    {
      v7 = *(qword_100555100 + 8);
      if (v7 <= 3)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, 3);
      }

      if (qword_100555108)
      {
        v8 = *(qword_100555108 + 8);
        if (v8 <= 3)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, 3);
        }

        v9 = *(qword_100555100 + 40) + *(qword_100555108 + 40);
        return;
      }
    }

LABEL_40:
    JreThrowNullPointerException();
  }

  if (!qword_100555100)
  {
    goto LABEL_40;
  }

  v18 = *(qword_100555100 + 8);
  if (v18 <= 3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, 3);
  }

  if (!qword_100555108)
  {
    goto LABEL_40;
  }

  v19 = *(qword_100555108 + 8);
  if (v19 <= 3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v19, 3);
  }

  v20 = -*(qword_100555100 + 40) - *(qword_100555108 + 40);
}

double JavaLangStrictMath_atan2WithDouble_withDouble_(double a1, double a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v4 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  v5 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a2);
  v6 = HIDWORD(v5) & 0x7FFFFFFF;
  if (!v5 && v6 > 0x7FF00000)
  {
    return a1 + a2;
  }

  v7 = HIDWORD(v4) & 0x7FFFFFFF;
  if (!v4 && v7 >= 0x7FF00001)
  {
    return a1 + a2;
  }

  if ((HIDWORD(v5) - 1072693248) | v5)
  {
    v9 = (HIDWORD(v5) >> 30) & 2 | (HIDWORD(v4) >> 31);
    if (!(v7 | v4))
    {
      if (v9 >= 2)
      {
        if (v9 == 3)
        {
          return -3.14159265;
        }

        else
        {
          return 3.14159265;
        }
      }

      return a1;
    }

    if (!(v6 | v5))
    {
      return *(&unk_1003153F0 + ((v4 >> 60) & 8));
    }

    if (v6 == 2146435072)
    {
      if (v7 == 2146435072)
      {
        v10 = &unk_100315460;
      }

      else
      {
        v10 = &unk_100315480;
      }

      return v10[v9];
    }

    if (v7 == 2146435072)
    {
      return *(&unk_1003153F0 + ((v4 >> 60) & 8));
    }

    v11 = (v7 - v6) >> 20;
    if (v11 <= 60)
    {
      if ((v5 & 0x8000000000000000) == 0 || (v12 = 0.0, v11 >= -60))
      {
        v13 = JavaLangMath_absWithDouble_(a1 / a2);
        JavaLangStrictMath_atanWithDouble_(v13);
      }
    }

    else
    {
      v12 = 1.57079633;
    }

    if (v9 > 1)
    {
      v14 = v12 + -1.2246468e-16;
      if (v9 == 2)
      {
        return 3.14159265 - v14;
      }

      else
      {
        return v14 + -3.14159265;
      }
    }

    if (!v9)
    {
      return v12;
    }

    v15 = JavaLangDouble_doubleToRawLongBitsWithDouble_(v12) ^ 0x8000000000000000;

    return JavaLangDouble_longBitsToDoubleWithLong_(v15);
  }

  else
  {

    JavaLangStrictMath_atanWithDouble_(a1);
  }

  return result;
}

double JavaLangStrictMath_cbrtWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (a1 < 0.0)
  {
    return -JavaLangStrictMath_cbrtWithDouble_(-a1);
  }

  v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  if (((HIDWORD(v2) >> 20) & 0x7FF) == 0x7FF)
  {
    return a1 + a1;
  }

  v3 = v2;
  v4 = HIDWORD(v2) & 0x7FFFFFFF;
  if (!(v4 | v2))
  {
    return a1;
  }

  v5 = JavaLangDouble_doubleToRawLongBitsWithDouble_(0.0);
  if (v4 >> 20)
  {
    v8 = v5 | ((((1431655766 * v4) >> 32) + 715094163) << 32);
  }

  else
  {
    v6 = JavaLangDouble_longBitsToDoubleWithLong_(v5 | 0x4350000000000000);
    v7 = JavaLangDouble_doubleToRawLongBitsWithDouble_(v6 * a1);
    v8 = v7 | ((SHIDWORD(v7) / 3 + 696219795) << 32);
  }

  v10 = JavaLangDouble_longBitsToDoubleWithLong_(v8);
  v11 = JavaLangDouble_doubleToRawLongBitsWithDouble_(v10 * (1.60714286 / (v10 * v10 / a1 * v10 + 0.542857143 + 1.41428571 + -0.705306122 / (v10 * v10 / a1 * v10 + 0.542857143)) + 0.357142857));
  v12 = JavaLangDouble_longBitsToDoubleWithLong_(&_mh_execute_header + (v11 & 0xFFFFFFFF00000000));
  v13 = JavaLangDouble_doubleToRawLongBitsWithDouble_(v12 + v12 * ((a1 / (v12 * v12) - v12) / (v12 + v12 + a1 / (v12 * v12)))) | v3 & 0x8000000000000000;

  return JavaLangDouble_longBitsToDoubleWithLong_(v13);
}

void JavaLangStrictMath_coshWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  if (((HIDWORD(v2) >> 20) & 0x7FF) != 0x7FF)
  {
    v3 = HIDWORD(v2) & 0x7FFFFFFF;
    if (v3 > 0x3FD62E42)
    {
      if (v3 > 0x40862E41)
      {
        if (v3 < 0x408633CE || v3 == 1082536910 && (((qword_100555110 >> 29) + v2) & 0xFFFFFFFE) <= 0x8FB9F87DuLL)
        {
          v6 = JavaLangMath_absWithDouble_(a1);
          JavaLangStrictMath_expWithDouble_(v6 * 0.5);
        }
      }

      else
      {
        v5 = JavaLangMath_absWithDouble_(a1);
        JavaLangStrictMath_expWithDouble_(v5);
      }
    }

    else
    {
      v4 = JavaLangMath_absWithDouble_(a1);
      JavaLangStrictMath_expm1WithDouble_(v4);
    }
  }
}

void JavaLangStrictMath_expWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  v3 = HIDWORD(v2) & 0x7FFFFFFF;
  if (v3 >= 0x40862E42)
  {
    if (v3 >> 20 >= 0x7FF || a1 > 709.782713 || a1 < -745.133219)
    {
      return;
    }

    goto LABEL_15;
  }

  if (v3 >= 0x3FD62E43)
  {
    if (v3 <= 0x3FF0A2B1)
    {
      v4 = ~(v2 >> 60) & 8;
      v5 = a1 - *(&unk_100315400 + v4);
      v6 = *(&unk_100315410 + v4);
      v7 = (v2 >= 0) - (v2 >> 63);
LABEL_24:
      a1 = v5 - v6;
      goto LABEL_25;
    }

LABEL_15:
    v8 = -0.5;
    if (v2 >= 0)
    {
      v8 = 0.5;
    }

    v9 = v8 + a1 * 1.44269504;
    if (v9 < 0.0)
    {
      v10 = 0x80000000;
    }

    else
    {
      v10 = 0x7FFFFFFF;
    }

    if (v9 == 0x80000000)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }

    v5 = a1 + v7 * -0.69314718;
    v6 = v7 * 1.90821493e-10;
    goto LABEL_24;
  }

  v7 = 0;
  v5 = 0.0;
  if (a1 + 1.0e300 > 1.0 && v3 >> 20 <= 0x3E2)
  {
    return;
  }

  v6 = 0.0;
LABEL_25:
  if (v7)
  {
    v11 = a1 - a1 * a1 * (a1 * a1 * (a1 * a1 * (a1 * a1 * (a1 * a1 * 0.000000041381368 + -0.00000165339022) + 0.0000661375632) + -0.00277777778) + 0.166666667);
    v12 = JavaLangDouble_doubleToRawLongBitsWithDouble_(v5 - (v6 - a1 * v11 / (2.0 - v11)) + 1.0);
    v13 = (v7 << 20);
    if (v7 < -1021)
    {
      JavaLangDouble_longBitsToDoubleWithLong_(v12 + ((v13 + 1048576000) << 32));
    }

    else
    {
      v14 = v12 + (v13 << 32);

      JavaLangDouble_longBitsToDoubleWithLong_(v14);
    }
  }
}

double JavaLangStrictMath_expm1WithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  v3 = HIDWORD(v2) & 0x7FFFFFFF;
  if (v3 < 0x4043687A)
  {
    if (v3 < 0x3FD62E43)
    {
      if (v3 >> 20 < 0x3C9)
      {
        return a1;
      }

      v6 = 0;
      v12 = 0.0;
LABEL_32:
      v13 = a1 * (a1 * 0.5);
      v14 = v13 * (v13 * (v13 * (v13 * (v13 * -0.000000201099218 + 0.00000400821783) + -0.0000793650758) + 0.00158730159) + -0.0333333333) + 1.0;
      v15 = v13 * ((v14 - (3.0 - v14 * (a1 * 0.5))) / (6.0 - a1 * (3.0 - v14 * (a1 * 0.5))));
      if (!v6)
      {
        return a1 - -(v13 - a1 * v15);
      }

      v16 = -(v12 - a1 * (v15 - v12)) - v13;
      if (v6 == 1)
      {
        if (a1 < -0.25)
        {
          return (v16 - (a1 + 0.5)) * -2.0;
        }

        v17 = a1 - v16;
        v18 = 1.0;
        v19 = 2.0;
      }

      else
      {
        if (v6 != -1)
        {
          if (v6 - 57 > 0xFFFFFFC5)
          {
            v21 = JavaLangDouble_doubleToRawLongBitsWithDouble_(1.0);
            if (v6 > 0x13)
            {
              v22 = a1 - (v16 + JavaLangDouble_longBitsToDoubleWithLong_(v21 - (v6 << 52) + 0x3FF0000000000000)) + 1.0;
            }

            else
            {
              v22 = JavaLangDouble_longBitsToDoubleWithLong_(v21 | ((1072693248 - (0x200000u >> v6)) << 32)) - (v16 - a1);
            }

            v23 = JavaLangDouble_doubleToRawLongBitsWithDouble_(v22) + (v6 << 52);

            return JavaLangDouble_longBitsToDoubleWithLong_(v23);
          }

          else
          {
            v20 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1 - v16 + 1.0);
            return JavaLangDouble_longBitsToDoubleWithLong_(v20 + (v6 << 52)) + -1.0;
          }
        }

        v17 = a1 - v16;
        v18 = -0.5;
        v19 = 0.5;
      }

      return v18 + v17 * v19;
    }

    if (v3 <= 0x3FF0A2B1)
    {
      if (v2 < 0)
      {
        v5 = a1 + 0.69314718;
        v6 = -1;
        v7 = -1.90821493e-10;
      }

      else
      {
        v5 = a1 + -0.69314718;
        v6 = 1;
        v7 = 1.90821493e-10;
      }

LABEL_30:
      a1 = v5 - v7;
      v12 = v5 - (v5 - v7) - v7;
      goto LABEL_32;
    }

LABEL_21:
    v9 = -0.5;
    if (v2 >= 0)
    {
      v9 = 0.5;
    }

    v10 = v9 + a1 * 1.44269504;
    if (v10 < 0.0)
    {
      v11 = 0x80000000;
    }

    else
    {
      v11 = 0x7FFFFFFF;
    }

    if (v10 == 0x80000000)
    {
      v6 = v11;
    }

    else
    {
      v6 = v10;
    }

    v5 = a1 + v6 * -0.69314718;
    v7 = v6 * 1.90821493e-10;
    goto LABEL_30;
  }

  if (v3 >= 0x40862E42)
  {
    if (v3 >> 20 >= 0x7FF)
    {
      if (HIDWORD(v2) & 0xFFFFF | v2)
      {
        return a1 + a1;
      }

      result = -1.0;
      if (v2 >= 0)
      {
        return a1;
      }

      return result;
    }

    if (a1 > 709.782713)
    {
      return INFINITY;
    }
  }

  result = -1.0;
  if (a1 + 1.0e-300 >= 0.0 || v2 >= 0)
  {
    goto LABEL_21;
  }

  return result;
}

double JavaLangStrictMath_hypotWithDouble_withDouble_(long double a1, long double a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return hypot(a1, a2);
}

double JavaLangStrictMath_IEEEremainderWithDouble_withDouble_(long double a1, long double a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return remainder(a1, a2);
}

void JavaLangStrictMath_logWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  v3 = HIDWORD(v2);
  if (SHIDWORD(v2) >= 0x100000)
  {
    goto LABEL_7;
  }

  if (HIDWORD(v2) & 0x7FFFFFFF | v2 && (v2 & 0x8000000000000000) == 0)
  {
    v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1 * 1.80143985e16);
    v3 = HIDWORD(v2);
LABEL_7:
    if (v3 < 2146435072)
    {
      JavaLangDouble_longBitsToDoubleWithLong_(v2 | (((((v3 & 0xFFFFF) + 614244) & 0x100000 | v3 & 0xFFFFF) ^ 0x3FF00000) << 32));
    }
  }
}

void JavaLangStrictMath_log10WithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  v3 = HIDWORD(v2);
  if (SHIDWORD(v2) >= 0x100000)
  {
    v4 = -1023;
LABEL_8:
    if (v3 < 2146435072)
    {
      v5 = JavaLangDouble_longBitsToDoubleWithLong_(v2 | (((v3 & 0xFFFFF | ((v4 + (v3 >> 20)) >> 31 << 20)) ^ 0x3FF00000) << 32));
      JavaLangStrictMath_logWithDouble_(v5);
    }

    return;
  }

  if (HIDWORD(v2) & 0x7FFFFFFF | v2 && (v2 & 0x8000000000000000) == 0)
  {
    v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1 * 1.80143985e16);
    v3 = HIDWORD(v2);
    v4 = -1077;
    goto LABEL_8;
  }
}

void JavaLangStrictMath_log1pWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  if (SHIDWORD(v2) > 1071284857)
  {
    if (v2 >> 52 >= 0x7FF)
    {
      return;
    }

    if (v2 >> 54 > 0x10C)
    {
      v4 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
      v5 = HIDWORD(v4);
      goto LABEL_14;
    }

LABEL_13:
    v4 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1 + 1.0);
    v5 = HIDWORD(v4);
LABEL_14:
    v6 = v5 & 0xFFFFF;
    if ((v5 & 0xFFFFF) > 0x6A09D)
    {
      JavaLangDouble_longBitsToDoubleWithLong_(v4 | ((v6 | 0x3FE00000u) << 32));
    }

    else
    {
      JavaLangDouble_longBitsToDoubleWithLong_(v4 | ((v6 | 0x3FF00000u) << 32));
    }

    return;
  }

  v3 = HIDWORD(v2) & 0x7FFFFFFF;
  if (v3 >> 20 < 0x3FF && v3 >> 21 > 0x1F0 && (HIDWORD(v2) - 1) >= 0xBFD2BEC3)
  {
    goto LABEL_13;
  }
}

double JavaLangStrictMath_maxWithDouble_withDouble_(double a1, double a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (a1 > a2)
  {
    return a1;
  }

  if (a1 >= a2)
  {
    if (a1 != a2)
    {
      return NAN;
    }

    if (a1 != 0.0)
    {
      return a1;
    }

    v5 = JavaLangDouble_doubleToLongBitsWithDouble_(a1);
    v6 = JavaLangDouble_doubleToLongBitsWithDouble_(a2);
    a2 = 0.0;
    if ((v6 & v5) < 0 != v7)
    {
      return a1;
    }
  }

  return a2;
}

float JavaLangStrictMath_maxWithFloat_withFloat_(float a1, float a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (a1 > a2)
  {
    return a1;
  }

  if (a1 >= a2)
  {
    if (a1 != a2)
    {
      return NAN;
    }

    if (a1 != 0.0)
    {
      return a1;
    }

    v5 = JavaLangFloat_floatToIntBitsWithFloat_(a1);
    v6 = JavaLangFloat_floatToIntBitsWithFloat_(a2);
    a2 = 0.0;
    if ((v6 & v5) < 0 != v7)
    {
      return a1;
    }
  }

  return a2;
}

uint64_t JavaLangStrictMath_maxWithInt_withInt_(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_maxWithInt_withInt_(a1, a2);
}

double JavaLangStrictMath_minWithDouble_withDouble_(double a1, double a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (a1 > a2)
  {
    return a2;
  }

  if (a1 < a2)
  {
    return a1;
  }

  if (a1 != a2)
  {
    return NAN;
  }

  if (a1 == 0.0)
  {
    v6 = JavaLangDouble_doubleToLongBitsWithDouble_(a1);
    if ((JavaLangDouble_doubleToLongBitsWithDouble_(a2) | v6) < 0)
    {
      return -0.0;
    }
  }

  return a1;
}

float JavaLangStrictMath_minWithFloat_withFloat_(float a1, float a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (a1 > a2)
  {
    return a2;
  }

  if (a1 >= a2)
  {
    if (a1 == a2)
    {
      if (a1 == 0.0)
      {
        v5 = JavaLangFloat_floatToIntBitsWithFloat_(a1);
        if (((JavaLangFloat_floatToIntBitsWithFloat_(a2) | v5) & 0x80000000) != 0)
        {
          return -0.0;
        }
      }
    }

    else
    {
      return NAN;
    }
  }

  return a1;
}

uint64_t JavaLangStrictMath_minWithInt_withInt_(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_minWithInt_withInt_(a1, a2);
}

unint64_t JavaLangStrictMath_roundWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_roundWithDouble_(a1);
}

uint64_t JavaLangStrictMath_roundWithFloat_(float a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_roundWithFloat_(a1);
}

uint64_t JavaLangStrictMath_signumWithDouble_()
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_signumWithDouble_();
}

uint64_t JavaLangStrictMath_signumWithFloat_()
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_signumWithFloat_();
}

double JavaLangStrictMath_sinhWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  if (((HIDWORD(v2) >> 20) & 0x7FF) == 0x7FF)
  {
    return a1 + a1;
  }

  v3 = HIDWORD(v2) & 0x7FFFFFFF;
  if (v2 >= 0)
  {
    v4 = 0.5;
  }

  else
  {
    v4 = -0.5;
  }

  if (v3 > 0x4035FFFF)
  {
    if (v3 < 0x40862E42)
    {
      v10 = JavaLangMath_absWithDouble_(a1);
      JavaLangStrictMath_expWithDouble_(v10);
      return v4 * v9;
    }

    if (v3 < 0x408633CE || v3 == 1082536910 && (((qword_100555110 >> 29) + v2) & 0xFFFFFFFE) <= 0x8FB9F87DuLL)
    {
      v11 = JavaLangMath_absWithDouble_(a1);
      JavaLangStrictMath_expWithDouble_(v11 * 0.5);
      return v12 * (v4 * v12);
    }

    else
    {
      return a1 * 1.0e307;
    }
  }

  else
  {
    v5 = v3 >> 20;
    if (a1 + 1.0e307 <= 1.0 || v5 >= 0x3E3)
    {
      v6 = JavaLangMath_absWithDouble_(a1);
      v7 = JavaLangStrictMath_expm1WithDouble_(v6);
      v8 = v7 + 1.0;
      if (v5 > 0x3FE)
      {
        v9 = v7 + v7 / v8;
      }

      else
      {
        v9 = -(v7 * v7) / v8 + v7 * 2.0;
      }

      return v4 * v9;
    }
  }

  return a1;
}

double JavaLangStrictMath_sqrtWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return sqrt(a1);
}

void JavaLangStrictMath_tanhWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v2 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  if (((HIDWORD(v2) >> 20) & 0x7FF) != 0x7FF)
  {
    v3 = HIDWORD(v2) & 0x7FFFFFFF;
    if (v3 <= 0x4035FFFF && v3 >> 23 > 0x78)
    {
      v4 = JavaLangMath_absWithDouble_(a1);
      if (v3 >> 20 < 0x3FF)
      {
        JavaLangMath_expm1WithDouble_(v4 * -2.0);
      }

      else
      {
        JavaLangMath_expm1WithDouble_(v4 + v4);
      }
    }
  }
}

double JavaLangStrictMath_toDegreesWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_toDegreesWithDouble_(a1);
}

double JavaLangStrictMath_toRadiansWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_toRadiansWithDouble_(a1);
}

void JavaLangStrictMath_ulpWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (!JavaLangDouble_isInfiniteWithDouble_(a1))
  {
    if (a1 == 1.79769313e308 || a1 == -1.79769313e308)
    {
      if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100218228();
      }
    }

    else
    {
      v3 = JavaLangMath_absWithDouble_(a1);
      sub_100217968(v3, 1.79769313e308);
    }
  }
}

float JavaLangStrictMath_ulpWithFloat_(float a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_ulpWithFloat_(a1);
}

double sub_100217968(long double a1, long double a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return nextafter(a1, a2);
}

double JavaLangStrictMath_copySignWithDouble_withDouble_(double a1, double a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v4 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1);
  v5 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a2) & 0x8000000000000000 | v4 & 0x7FFFFFFFFFFFFFFFLL;

  return JavaLangDouble_longBitsToDoubleWithLong_(v5);
}

float JavaLangStrictMath_copySignWithFloat_withFloat_(float a1, float a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  v4 = JavaLangFloat_floatToRawIntBitsWithFloat_(a1);
  v5 = JavaLangFloat_floatToRawIntBitsWithFloat_(a2) & 0x80000000 | v4 & 0x7FFFFFFF;

  return JavaLangFloat_intBitsToFloatWithInt_(v5);
}

uint64_t JavaLangStrictMath_getExponentWithFloat_(float a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_getExponentWithFloat_(a1);
}

uint64_t JavaLangStrictMath_getExponentWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_getExponentWithDouble_(a1);
}

double JavaLangStrictMath_nextAfterWithDouble_withDouble_(long double a1, long double a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (a1 == 0.0 && a2 == 0.0)
  {
    return a2;
  }

  return sub_100217968(a1, a2);
}

float JavaLangStrictMath_nextAfterWithFloat_withDouble_(float a1, double a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_nextAfterWithFloat_withDouble_(a1, a2);
}

double JavaLangStrictMath_nextUpWithDouble_(double a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_nextUpWithDouble_(a1);
}

float JavaLangStrictMath_nextUpWithFloat_(float a1)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  return JavaLangMath_nextUpWithFloat_(a1);
}

double JavaLangStrictMath_scalbWithDouble_withInt_(int a1, double a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (JavaLangDouble_isNaNWithDouble_())
  {
    return a2;
  }

  isInfiniteWithDouble = JavaLangDouble_isInfiniteWithDouble_(a2);
  if (a2 == 0.0 || isInfiniteWithDouble)
  {
    return a2;
  }

  v6 = JavaLangDouble_doubleToLongBitsWithDouble_(a2);
  v7 = (a1 + ((v6 >> 52) & 0x7FF) - 1023);
  v8 = JavaLangLong_numberOfLeadingZerosWithLong_(v6 & 0x7FFFFFFFFFFFFFFFLL);
  v9 = (v8 - 12) & ~((v8 - 12) >> 31);
  if (JavaLangMath_absWithDouble_(a2) >= 2.22507386e-308)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = v7 - v10;
  if (v7 - v10 >= 1024)
  {
    if (a2 <= 0.0)
    {
      return -INFINITY;
    }

    else
    {
      return INFINITY;
    }
  }

  if (v11 > -1024)
  {
    v16 = JavaLangMath_absWithDouble_(a2);
    v17 = (v11 << 52) + 0x3FF0000000000000;
    v18 = v17 | (v6 << (v9 + 1)) & 0xFFFFFFFFFFFFFLL;
    v19 = v17 | v6 & 0xFFFFFFFFFFFFFLL;
    if (v16 >= 2.22507386e-308)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }
  }

  else
  {
    v12 = v9 + v11 + 1023;
    v13 = JavaLangMath_absWithDouble_(a2);
    v14 = v6 & 0xFFFFFFFFFFFFFLL;
    if (v13 >= 2.22507386e-308)
    {
      v15 = v12 - 1;
      v14 |= 0x10000000000000uLL;
    }

    else
    {
      v15 = v12;
    }

    v20 = sub_100218088(v14, v15);
  }

  v21 = v20 | v6 & 0x8000000000000000;

  return JavaLangDouble_longBitsToDoubleWithLong_(v21);
}

float JavaLangStrictMath_scalbWithFloat_withInt_(int a1, float a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (JavaLangFloat_isNaNWithFloat_())
  {
    return a2;
  }

  isInfiniteWithFloat = JavaLangFloat_isInfiniteWithFloat_(a2);
  if (a2 == 0.0 || isInfiniteWithFloat)
  {
    return a2;
  }

  v6 = JavaLangFloat_floatToIntBitsWithFloat_(a2);
  v7 = JavaLangInteger_numberOfLeadingZerosWithInt_(v6 & 0x7FFFFFFF);
  v8 = (v7 - 9) & ~((v7 - 9) >> 31);
  if (JavaLangMath_absWithFloat_(a2) >= 1.1755e-38)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = a1 + (v6 >> 23) - v9 - 127;
  if (v10 >= 128)
  {
    if (a2 <= 0.0)
    {
      return -INFINITY;
    }

    else
    {
      return INFINITY;
    }
  }

  if (v10 > -128)
  {
    v15 = JavaLangMath_absWithFloat_(a2);
    v16 = (v10 << 23) + 1065353216;
    v17 = v16 | (v6 << (v8 + 1)) & 0x7FFFFF;
    v18 = v16 | v6 & 0x7FFFFF;
    if (v15 >= 1.1755e-38)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }
  }

  else
  {
    v11 = v8 + v10 + 127;
    v12 = JavaLangMath_absWithFloat_(a2);
    v13 = v6 & 0x7FFFFF;
    if (v12 >= 1.1755e-38)
    {
      v14 = v11 - 1;
      v13 |= 0x800000u;
    }

    else
    {
      v14 = v11;
    }

    v19 = sub_100217FDC(v13, v14);
  }

  v20 = v19 | v6 & 0x80000000;

  return JavaLangFloat_intBitsToFloatWithInt_(v20);
}

uint64_t sub_100217FDC(signed int a1, int a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (a2 >= 1)
  {
    return (a1 << a2);
  }

  v5 = JavaLangInteger_numberOfLeadingZerosWithInt_(a1 & 0x7FFFFFFF);
  result = 0;
  if (v5 <= a2 + 32)
  {
    v6 = -a2;
    v7 = ~a2;
    if (((a1 >> v7) & 1) != 0 && JavaLangInteger_numberOfTrailingZerosWithInt_(a1) != v7)
    {
      return ((a1 >> v6) + 1);
    }

    else
    {
      return (a1 >> v6);
    }
  }

  return result;
}

uint64_t sub_100218088(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&JavaLangStrictMath__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100218228();
  }

  if (a2 >= 1)
  {
    return a1 << a2;
  }

  v5 = JavaLangLong_numberOfLeadingZerosWithLong_(a1 & 0x7FFFFFFFFFFFFFFFLL);
  result = 0;
  if (a2 + 64 >= v5)
  {
    v6 = -a2;
    v7 = ~a2;
    if (((a1 >> v7) & 1) != 0 && JavaLangLong_numberOfTrailingZerosWithLong_(a1) != v7)
    {
      return (a1 >> v6) + 1;
    }

    else
    {
      return a1 >> v6;
    }
  }

  return result;
}

id sub_1002186D4(void *a1, uint64_t a2)
{
  [a1 collectMethods:a2 publicOnly:1];
  if (([a1 getModifiers] & 0x400) != 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [a1 getInterfacesInternal];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          sub_1002186D4(*(*(&v11 + 1) + 8 * v8), a2);
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  result = [a1 getSuperclass];
  if (result)
  {
    v10 = result;
    do
    {
      sub_1002186D4(v10, a2);
      result = [v10 getSuperclass];
      v10 = result;
    }

    while (result);
  }

  return result;
}

NSMutableString *IOSClass_GetTranslatedMethodName(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = a2;
  v5 = a1;
  if (a1)
  {
    while (1)
    {
      v6 = [v5 getMetadata];
      if (v6)
      {
        v7 = a3 ? *(a3 + 8) : 0;
        v8 = [v6 findMethodMetadataWithJavaName:v4 argCount:v7];
        if (v8)
        {
          break;
        }
      }

      v5 = [v5 getSuperclass];
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    return [v8 objcName];
  }

  else
  {
LABEL_9:
    if (a3)
    {
      v9 = *(a3 + 8);
      if (v9)
      {
        v10 = *(a3 + 24);
        v11 = [NSMutableString stringWithCapacity:128];
        if (qword_100555170 == v10)
        {
          v12 = @"Id";
        }

        else
        {
          v12 = sub_10021B1C4([v10 objcName]);
        }

        [(NSMutableString *)v11 appendFormat:@"%@With%@:", v4, v12];
        if (v9 >= 2)
        {
          v14 = a3 + 8;
          v15 = v9 - 1;
          do
          {
            v16 = *(v14 + 24);
            if (qword_100555170 == v16)
            {
              v17 = @"Id";
            }

            else
            {
              v17 = sub_10021B1C4([v16 objcName]);
            }

            [(NSMutableString *)v11 appendFormat:@"with%@:", v17];
            v14 += 8;
            --v15;
          }

          while (v15);
        }

        return v11;
      }
    }

    return v4;
  }
}

Class sub_100218D3C(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ([a1 isEqualToString:@"NSObject"])
  {
    return qword_100555170;
  }

  v3 = NSProtocolFromString(a1);
  if (v3)
  {

    return FastPointerLookup(&stru_1005514D8, v3);
  }

  else
  {
    result = NSClassFromString(a1);
    if (result)
    {

      return IOSClass_fromClass(result);
    }
  }

  return result;
}

uint64_t sub_100218DE0(int a1)
{
  result = 0;
  if (a1 <= 72)
  {
    if (a1 > 67)
    {
      if (a1 == 68)
      {
        return qword_100555128;
      }

      else if (a1 == 70)
      {
        return qword_100555130;
      }
    }

    else if (a1 == 66)
    {
      return qword_100555118;
    }

    else if (a1 == 67)
    {
      return qword_100555120;
    }
  }

  else if (a1 <= 82)
  {
    if (a1 == 73)
    {
      return qword_100555138;
    }

    else if (a1 == 74)
    {
      return qword_100555140;
    }
  }

  else
  {
    switch(a1)
    {
      case 'S':
        return qword_100555148;
      case 'V':
        return qword_100555158;
      case 'Z':
        return qword_100555150;
    }
  }

  return result;
}

uint64_t IOSClass_forName_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ([a1 length])
  {
    v2 = [a1 characterAtIndex:0] == 91 ? sub_100219214(a1, 1) : sub_1002192F8(a1);
    v3 = v2;
    if (v2)
    {
      return v3;
    }
  }

  v3 = sub_1002192F8([a1 stringByAppendingString:@"Enum"]);
  if (v3)
  {
    return v3;
  }

  if ([a1 rangeOfString:@"$"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v4 = sub_100219574(a1);
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"^%@$", [v4 stringByReplacingOccurrencesOfString:@"[_$]" withString:@"[_$]+" options:1024 range:{0, objc_msgSend(v4, "length")}]);
  status = U_ZERO_ERROR;
  memset(&pe, 0, sizeof(pe));
  pe.offset = -1;
  v6 = [(NSString *)v5 length];
  v7 = malloc_type_malloc(2 * v6, 0x1000040BDFB0063uLL);
  [(NSString *)v5 getCharacters:v7 range:0, v6];
  v8 = uregex_open(v7, v6, 0x200u, &pe, &status);
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v18 = objc_alloc_init(JavaLangAssertionError);
LABEL_28:
    objc_exception_throw(v18);
  }

  v9 = v8;
  ClassList = objc_getClassList(0, 0);
  v11 = malloc_type_malloc(8 * ClassList, 0x80040B8603338uLL);
  objc_getClassList(v11, ClassList);
  v12 = malloc_type_malloc(0x200uLL, 0x1000040BDFB0063uLL);
  if (ClassList < 1)
  {
    v3 = 0;
  }

  else
  {
    v19 = v11;
    v20 = v7;
    v13 = ClassList;
    v14 = 256;
    while (1)
    {
      v15 = *v11;
      v16 = [[NSString alloc] initWithUTF8String:class_getName(*v11)];
      if ([v16 length] > v14)
      {
        v12 = malloc_type_realloc(v12, [v16 length], 0x1000040BDFB0063uLL);
        v14 = [v16 length];
      }

      [v16 getCharacters:v12 range:{0, objc_msgSend(v16, "length")}];
      v21 = U_ZERO_ERROR;
      uregex_setText(v9, v12, [v16 length], &v21);
      if (v21 <= U_ZERO_ERROR)
      {
        uregex_setRegion(v9, 0, [v16 length], &v21);
        if (v21 <= U_ZERO_ERROR && uregex_matches(v9, -1, &v21) && v21 <= U_ZERO_ERROR)
        {
          break;
        }
      }

      ++v11;
      if (!--v13)
      {
        v3 = 0;
        goto LABEL_20;
      }
    }

    v3 = IOSClass_fromClass(v15);
LABEL_20:
    v11 = v19;
    v7 = v20;
  }

  free(v11);
  free(v12);
  free(v7);
  uregex_close(v9);
  if (!v3)
  {
LABEL_26:
    v18 = [[JavaLangClassNotFoundException alloc] initWithNSString:a1];
    goto LABEL_28;
  }

  return v3;
}

uint64_t sub_100219214(void *a1, uint64_t a2)
{
  v4 = [a1 characterAtIndex:a2];
  if (v4 == 91)
  {
    v7 = sub_100219214(a1, a2 + 1);
  }

  else
  {
    v5 = v4;
    if (v4 == 76)
    {
      v6 = [a1 length];
      if ([a1 characterAtIndex:v6 - 1] == 59)
      {
        v7 = sub_1002192F8([a1 substringWithRange:{a2 + 1, &v6[-a2 - 2]}]);
        goto LABEL_8;
      }

      return 0;
    }

    if ([a1 length] != (a2 + 1))
    {
      return 0;
    }

    v7 = sub_100218DE0(v5);
  }

LABEL_8:
  if (!v7)
  {
    return 0;
  }

  return FastPointerLookup(&stru_100551530, v7);
}

Class sub_1002192F8(void *a1)
{
  v1 = a1;
  v2 = sub_100219574(a1);
  result = sub_100218D3C(v2);
  if (!result)
  {
    if (([v1 indexOf:36] & 0x80000000) != 0 || (v1 = objc_msgSend(v1, "stringByReplacingOccurrencesOfString:withString:", @"$", @"_"), v4 = sub_100219574(v1), (result = sub_100218D3C(v4)) == 0))
    {
      v5 = [v1 rangeOfString:@"." options:4];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      v6 = v5;
      v7 = [v1 substringToIndex:v5];
      v8 = sub_100219574([v7 stringByAppendingString:@".package_info"]);
      v9 = NSClassFromString(v8);
      if (!JreFindClassMethod(v9, "__prefix") || (method_invoke(), (v11 = v10) == 0))
      {
        if (qword_100555188 != -1)
        {
          sub_10021B45C();
        }

        v11 = [qword_100555190 getPropertyWithNSString:v7];
        if (!v11 && qword_100555190)
        {
          v12 = [qword_100555190 propertyNames];
          while ([v12 hasMoreElements])
          {
            v13 = [v12 nextElement];
            if ([v13 hasSuffix:@".*"])
            {
              v17 = [objc_msgSend(v13 substring:0 endIndex:{objc_msgSend(v13, "length") - 2), "replace:withSequence:", @".", @"\\."}];
              v14 = [NSString stringWithFormat:@"^(%@|%@\\..*)$", v17, v17];
            }

            else
            {
              v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"^%@$", [objc_msgSend(v13 replace:@"." withSequence:{@"\\.", "replace:withSequence:", @"\\*", @".*"}], v16);
            }

            if ([v7 matches:v14])
            {
              v11 = [qword_100555190 getPropertyWithNSString:v13];
              goto LABEL_20;
            }
          }

          return 0;
        }

LABEL_20:
        if (!v11)
        {
          return 0;
        }
      }

      v15 = [objc_msgSend(v11 stringByAppendingString:{objc_msgSend(v1, "substringFromIndex:", v6 + 1)), "stringByReplacingOccurrencesOfString:withString:", @"$", @"_"}];

      return sub_100218D3C(v15);
    }
  }

  return result;
}

id sub_100219574(void *a1)
{
  v2 = [qword_100555168 objectForKey:a1];
  if (!v2)
  {
    v3 = [a1 componentsSeparatedByString:@"."];
    v2 = +[NSMutableString string];
    if ([v3 count] == 1)
    {
      [v2 appendString:{objc_msgSend(v3, "objectAtIndex:", 0)}];
    }

    else
    {
      v4 = [v3 lastObject];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          v8 = 0;
          do
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v3);
            }

            v9 = *(*(&v11 + 1) + 8 * v8);
            if (v9 != v4)
            {
              v9 = sub_10021B1C4(*(*(&v11 + 1) + 8 * v8));
            }

            [v2 appendString:v9];
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }
  }

  return v2;
}

uint64_t IOSClass_fromClass(uint64_t a1)
{
  if ((atomic_load_explicit(&IOSClass__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10021B470();
  }

  return FastPointerLookup(&stru_100551480, a1);
}

id IOSClass_NewInterfacesFromProtocolList(__objc2_prot **a1)
{
  __chkstk_darwin();
  v4 = &v11 - v3;
  if (v2)
  {
    v5 = 0;
    v6 = v2;
    do
    {
      v7 = *a1;
      if (*a1 != &OBJC_PROTOCOL___NSObject && v7 != &OBJC_PROTOCOL___JavaObject)
      {
        *&v4[8 * v5++] = FastPointerLookup(&stru_1005514D8, v7);
      }

      ++a1;
      --v6;
    }

    while (v6);
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return [IOSObjectArray newArrayWithObjects:v4 count:v9 type:IOSClass_class_()];
}

Ivar FindIvar(void *a1, id a2)
{
  v4 = [a1 objcClass];
  v5 = sub_10021A0F0(a2, a1);
  result = class_getInstanceVariable(v4, v5);
  if (!result)
  {
    v7 = 3;
    while (1)
    {
      a2 = [a2 stringByAppendingString:@"_"];
      v8 = [a1 objcClass];
      v9 = sub_10021A0F0(a2, a1);
      result = class_getInstanceVariable(v8, v9);
      if (result)
      {
        break;
      }

      if (!--v7)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_10021A0F0(void *a1, void *a2)
{
  v3 = [objc_msgSend(a2 "getMetadata")];
  if (v3)
  {
    v4 = [v3 name];

    return [v4 UTF8String];
  }

  else
  {
    v6 = [JavaLangReflectField variableName:a1];

    return [v6 cStringUsingEncoding:4];
  }
}

JavaLangReflectField *findDeclaredField(void *a1, void *a2, int a3)
{
  v6 = [a1 objcClass];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [a1 getMetadata];
  if (!v8)
  {
    Ivar = FindIvar(a1, a2);
    if (Ivar)
    {
      InstanceVariable = Ivar;
      v12 = a1;
      v13 = 0;
      goto LABEL_9;
    }

    return 0;
  }

  v9 = [v8 findFieldMetadata:{objc_msgSend(a2, "UTF8String")}];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (a3)
  {
    if (([v9 modifiers] & 1) == 0)
    {
      return 0;
    }
  }

  InstanceVariable = class_getInstanceVariable(v7, [objc_msgSend(v10 "iosName")]);
  v12 = a1;
  v13 = v10;
LABEL_9:

  return [JavaLangReflectField fieldWithIvar:InstanceVariable withClass:v12 withMetadata:v13];
}

JavaLangReflectField *findField(JavaLangReflectField *result, void *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    do
    {
      result = findDeclaredField(v5, a2, a3);
      if (result)
      {
        break;
      }

      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [(JavaLangReflectField *)v5 getInterfacesInternal];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
LABEL_6:
        v10 = 0;
        while (1)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          result = findField(*(*(&v11 + 1) + 8 * v10), a2, a3);
          if (result)
          {
            return result;
          }

          if (v8 == ++v10)
          {
            v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
            if (v8)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

      v5 = [(JavaLangReflectField *)v5 getSuperclass];
      result = 0;
    }

    while (v5);
  }

  return result;
}

IOSObjectArray *copyFieldsToObjectArray(void *a1)
{
  v2 = [a1 count];
  v3 = [IOSObjectArray arrayWithLength:v2 type:JavaLangReflectField_class_()];
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = v2 & 0x7FFFFFFF;
    do
    {
      -[IOSObjectArray replaceObjectAtIndex:withObject:](v3, "replaceObjectAtIndex:withObject:", v4, [a1 objectAtIndex:v4]);
      ++v4;
    }

    while (v5 != v4);
  }

  return v3;
}

void sub_10021A540(void *a1, void *a2, int a3)
{
  v6 = [a1 getMetadata];
  if (v6)
  {
    v7 = [v6 allFields];
    if (v7[2] >= 1)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        v10 = [v8 objectAtIndex:v9];
        v11 = v10;
        if (!a3 || ([v10 modifiers] & 1) != 0)
        {
          v12 = +[JavaLangReflectField fieldWithIvar:withClass:withMetadata:](JavaLangReflectField, "fieldWithIvar:withClass:withMetadata:", class_getInstanceVariable([a1 objcClass], objc_msgSend(objc_msgSend(v11, "iosName"), "UTF8String")), a1, v11);
          v13 = [(JavaLangReflectField *)v12 getName];
          if (![a2 valueForKey:v13])
          {
            [a2 setObject:v12 forKey:v13];
          }
        }

        ++v9;
      }

      while (v9 < v8[2]);
    }
  }

  else
  {
    outCount = 0;
    v14 = class_copyIvarList([a1 objcClass], &outCount);
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v16 = [JavaLangReflectField fieldWithIvar:v14[i] withClass:a1 withMetadata:0];
        v17 = [(JavaLangReflectField *)v16 getName];
        if (![a2 valueForKey:v17])
        {
          [a2 setObject:v16 forKey:v17];
        }
      }
    }

    free(v14);
  }
}

id sub_10021A730(void *a1, void *a2)
{
  sub_10021A540(a1, a2, 1);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a1 getInterfacesInternal];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        sub_10021A730(*(*(&v11 + 1) + 8 * v8), a2);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  result = [a1 getSuperclass];
  if (result)
  {
    v10 = result;
    do
    {
      sub_10021A730(v10, a2);
      result = [v10 getSuperclass];
      v10 = result;
    }

    while (result);
  }

  return result;
}

int *sub_10021AA64(void *a1, void *a2, int a3, int a4)
{
  result = [a1 getMetadata];
  if (result)
  {
    result = [result getInnerClasses];
    if (result)
    {
      v8 = result;
      if (result[2] >= 1)
      {
        v9 = 0;
        v10 = result;
        do
        {
          v11 = *(v10 + 3);
          result = [v11 isAnonymousClass];
          if ((result & 1) == 0)
          {
            result = [v11 isSynthetic];
            if ((result & 1) == 0)
            {
              if (!a3 || (result = [v11 getModifiers], (result & 1) != 0))
              {
                result = [v11 isInterface];
                if (result)
                {
                  v12 = a4 == 0;
                }

                else
                {
                  v12 = 0;
                }

                if (!v12)
                {
                  result = [a2 addObject:v11];
                }
              }
            }
          }

          ++v9;
          v10 += 2;
        }

        while (v9 < v8[2]);
      }
    }
  }

  return result;
}

NSString *resolveResourceName(void *a1, void *a2)
{
  if (a2 && [a2 length] && objc_msgSend(a2, "characterAtIndex:", 0) != 47)
  {
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/%@/%@", [objc_msgSend(objc_msgSend(a1 "getPackage")], a2);
  }

  else
  {
    return a2;
  }
}

uint64_t IOSClass_arrayType(uint64_t a1, unsigned int a2)
{
  v3 = FastPointerLookup(&stru_100551530, a1);
  if ((a2 - 1) >= 1)
  {
    do
    {
      v3 = FastPointerLookup(&stru_100551530, v3);
      --a2;
    }

    while (a2 > 1);
  }

  return v3;
}

uint64_t IOSClass_class_()
{
  if ((atomic_load_explicit(&IOSClass__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10021B470();
  }

  if (qword_100555180 != -1)
  {
    sub_10021B47C();
  }

  return qword_100555178;
}

id sub_10021B1C4(void *a1)
{
  if (![a1 length])
  {
    return a1;
  }

  v2 = [objc_msgSend(a1 substringToIndex:{1), "capitalizedString"}];

  return [a1 stringByReplacingCharactersInRange:0 withString:{1, v2}];
}

void sub_10021B22C(id a1)
{
  v1 = [qword_100555170 getResourceAsStream:@"/prefixes.properties"];
  if (v1)
  {
    v2 = v1;
    v3 = objc_alloc_init(JavaUtilProperties);
    qword_100555190 = v3;

    [(JavaUtilProperties *)v3 load__WithJavaIoInputStream:v2];
  }
}

IOSMappedClass *sub_10021B298(objc_class *a1)
{
  if (objc_opt_class() == a1)
  {
    v7 = [IOSMappedClass alloc];
    v8 = objc_opt_class();

    return [(IOSMappedClass *)v7 initWithClass:v8 package:@"java.lang" name:@"Object"];
  }

  else
  {
    v2 = objc_opt_class();
    v3 = a1 != 0;
    if (a1)
    {
      v4 = v2;
      if (v2 != a1)
      {
        Superclass = a1;
        do
        {
          Superclass = class_getSuperclass(Superclass);
          v3 = Superclass != 0;
        }

        while (Superclass && Superclass != v4);
      }
    }

    if (v3)
    {
      result = qword_100555198;
      if (!qword_100555198)
      {
        result = [[IOSMappedClass alloc] initWithClass:objc_opt_class() package:@"java.lang" name:@"String"];
        qword_100555198 = result;
      }
    }

    else
    {
      v9 = [IOSConcreteClass alloc];

      return [(IOSConcreteClass *)v9 initWithClass:a1];
    }
  }

  return result;
}

id sub_10021B3DC(uint64_t a1)
{
  v2 = [IOSProtocolClass alloc];

  return [(IOSProtocolClass *)v2 initWithProtocol:a1];
}

id sub_10021B41C(uint64_t a1)
{
  v2 = [IOSArrayClass alloc];

  return [(IOSArrayClass *)v2 initWithComponentType:a1];
}

JavaNioIntArrayBuffer *JavaNioIntBuffer_allocateWithInt_(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0x80000000) != 0)
  {
    v10 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"capacity < 0: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  v8 = new_JavaNioIntArrayBuffer_initWithIntArray_([IOSIntArray arrayWithLength:a1]);

  return v8;
}

JavaNioIntArrayBuffer *JavaNioIntBuffer_wrapWithIntArray_withInt_withInt_(unsigned int *a1, int a2, int a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(a1[2], a2, a3);
  result = new_JavaNioIntArrayBuffer_initWithIntArray_(a1);
  result->super.super.position_ = a2;
  result->super.super.limit_ = a3 + a2;
  return result;
}

LibcoreNetUrlFileHandler *new_LibcoreNetUrlFileHandler_init()
{
  v0 = [LibcoreNetUrlFileHandler alloc];
  JavaNetURLStreamHandler_init(v0, v1);
  return v0;
}

uint64_t JavaNioChannelsSpiSelectorProvider_provider()
{
  if ((atomic_load_explicit(JavaNioChannelsSpiSelectorProvider__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10021C290();
  }

  v0 = JavaNioChannelsSpiSelectorProvider_class_();
  objc_sync_enter(v0);
  v1 = qword_1005551A0;
  if (!qword_1005551A0)
  {
    v2 = JavaNioChannelsSpiSelectorProvider_class_();
    v3 = JavaUtilServiceLoader_loadFromSystemPropertyWithIOSClass_(v2);
    JreStrongAssign(&qword_1005551A0, v3);
    v1 = qword_1005551A0;
    if (!qword_1005551A0)
    {
      v4 = +[JavaNioChannelsSpiSelectorProvider loadProviderByJar]_0();
      JreStrongAssign(&qword_1005551A0, v4);
      v1 = qword_1005551A0;
      if (!qword_1005551A0)
      {
        v5 = new_JavaNioSelectorProviderImpl_init();
        JreStrongAssignAndConsume(&qword_1005551A0, v5);
        v1 = qword_1005551A0;
      }
    }
  }

  objc_sync_exit(v0);
  return v1;
}

uint64_t JavaNioChannelsSpiSelectorProvider_class_()
{
  if ((atomic_load_explicit(JavaNioChannelsSpiSelectorProvider__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10021C290();
  }

  if (qword_1005551B0 != -1)
  {
    sub_10021C29C();
  }

  return qword_1005551A8;
}

NSString *sub_10021C678(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v5) = a2;
  if (a3 + a2 > a2)
  {
    v5 = a2;
    while (1)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        JreThrowNullPointerException();
      }

      v7 = *(v6 + 8);
      if (v5 < 0 || v5 >= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, v5);
      }

      if (!*(v6 + 12 + v5))
      {
        break;
      }

      if (a3 + a2 == ++v5)
      {
        LODWORD(v5) = a3 + a2;
        break;
      }
    }
  }

  v8 = *(a1 + 8);
  if ((atomic_load_explicit(JavaNioCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140190();
  }

  v9 = JavaNioCharsetStandardCharsets_ISO_8859_1_;

  return [NSString stringWithBytes:v8 offset:a2 length:(v5 - a2) charset:v9];
}

uint64_t sub_10021C790(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  if (!a4)
  {
    goto LABEL_9;
  }

  if ((atomic_load_explicit(JavaNioCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140190();
  }

  v8 = [a4 getBytesWithCharset:JavaNioCharsetStandardCharsets_ISO_8859_1_];
  if (!v8 || (v9 = v8, v10 = JavaLangMath_minWithInt_withInt_(v8[2], a3), v11 = v10, JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, *(a1 + 8), a2, v10), (v12 = *(a1 + 8)) == 0))
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  result = *(v12 + 8);
  v14 = (v11 + a2);
  if (v14 < 0 || v14 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v14);
  }

  *(v12 + 12 + v14) = 0;
  return result;
}

uint64_t sub_10021CAD0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  result = *(v2 + 8);
  if (result <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, 0);
  }

  *(v2 + 12) = a2;
  return result;
}

JavaNetSocks4Message *new_JavaNetSocks4Message_init()
{
  v0 = [JavaNetSocks4Message alloc];
  JreStrongAssignAndConsume(&v0->buffer_, [IOSByteArray newArrayWithLength:256]);
  sub_10021CAD0(v0, 4);
  return v0;
}

JavaNioInvalidMarkException *new_JavaNioInvalidMarkException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaNioInvalidMarkException alloc];
  JavaLangIllegalStateException_initWithNSString_(v2, a1);
  return v2;
}

JavaNioCharsetCharacterCodingException *new_JavaNioCharsetCharacterCodingException_init()
{
  v0 = [JavaNioCharsetCharacterCodingException alloc];
  JavaIoIOException_init(v0, v1);
  return v0;
}

uint64_t NSCopying_class_()
{
  if (qword_1005551C0 != -1)
  {
    sub_10021CD54();
  }

  return qword_1005551B8;
}

id sub_10021CDE0(void *a1, void *a2, char a3)
{
  if (a3)
  {
    if (!a2)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
LABEL_3:
    JreThrowNullPointerException();
  }

  if ([a2 length] >= 1 && objc_msgSend(a2, "charAtWithInt:", 0) == 32)
  {
    if (a1)
    {
      [a1 appendWithNSString:@"\\ "];
      v6 = 1;
      goto LABEL_10;
    }

    goto LABEL_3;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  for (result = [a2 length]; v6 < result; result = objc_msgSend(a2, "length"))
  {
    v8 = [a2 charAtWithInt:v6];
    v9 = v8;
    if (v8 > 11)
    {
      if (v8 == 12)
      {
        if (!a1)
        {
          goto LABEL_3;
        }

        v10 = a1;
        v11 = @"\\f";
        goto LABEL_43;
      }

      if (v8 == 13)
      {
        if (!a1)
        {
          goto LABEL_3;
        }

        v10 = a1;
        v11 = @"\\r";
        goto LABEL_43;
      }
    }

    else
    {
      if (v8 == 9)
      {
        if (!a1)
        {
          goto LABEL_3;
        }

        v10 = a1;
        v11 = @"\\t";
        goto LABEL_43;
      }

      if (v8 == 10)
      {
        if (!a1)
        {
          goto LABEL_3;
        }

        v10 = a1;
        v11 = @"\\n";
        goto LABEL_43;
      }
    }

    v12 = [@"\\#!=:" indexOf:v8];
    v13 = v9 - 32;
    if (v9 == 32)
    {
      v14 = a3;
    }

    else
    {
      v14 = 0;
    }

    if ((v14 & 1) != 0 || (v12 & 0x80000000) == 0)
    {
      if (!a1)
      {
        goto LABEL_3;
      }

      [a1 appendWithChar:92];
      if (v13 >= 0x5F)
      {
        v15 = JavaLangInteger_toHexStringWithInt_(v9);
        goto LABEL_38;
      }
    }

    else
    {
      if (v13 >= 0x5F)
      {
        v15 = JavaLangInteger_toHexStringWithInt_(v9);
        if (!a1)
        {
          goto LABEL_3;
        }

LABEL_38:
        v16 = v15;
        [a1 appendWithNSString:@"\\u"];
        if (!v16)
        {
          goto LABEL_3;
        }

        if (([(__CFString *)v16 length]- 5) <= -2)
        {
          v17 = 0;
          do
          {
            [a1 appendWithNSString:@"0"];
            ++v17;
          }

          while (v17 < (4 - [(__CFString *)v16 length]));
        }

        v10 = a1;
        v11 = v16;
LABEL_43:
        [v10 appendWithNSString:v11];
        goto LABEL_44;
      }

      if (!a1)
      {
        goto LABEL_3;
      }
    }

    [a1 appendWithChar:v9];
LABEL_44:
    v6 = (v6 + 1);
  }

  return result;
}

void sub_10021D3A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = new_JavaLangAssertionError_initWithId_(v2);
    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_10021DA9C(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1[7];
  if (v6)
  {
    sub_10021DA9C(v6, a2, a3);
  }

  v7 = [a1 keys];
  if (!v7)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v8 = v7;
  result = [v7 hasMoreElements];
  if (result)
  {
    do
    {
      v10 = [v8 nextElement];
      if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = [a1 getWithId:v10];
        if (!a2)
        {
          goto LABEL_11;
        }

        [a2 putWithId:v10 withId:v11];
      }

      result = [v8 hasMoreElements];
    }

    while ((result & 1) != 0);
  }

  return result;
}

void sub_10021DBDC(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

id sub_10021E48C(void *a1)
{
  if (!a1 || (v1 = [a1 replaceAll:@"&" withReplacement:@"&amp;"]) == 0 || (v2 = objc_msgSend(v1, "replaceAll:withReplacement:", @"<", @"&lt;")) == 0 || (v3 = objc_msgSend(v2, "replaceAll:withReplacement:", @">", @"&gt;")) == 0 || (v4 = objc_msgSend(v3, "replaceAll:withReplacement:", @"'", @"&apos;")) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v4 replaceAll:@"" withReplacement:@"&quot;"];
}

JavaUtilProperties *new_JavaUtilProperties_init()
{
  v0 = [JavaUtilProperties alloc];
  JavaUtilHashtable_init(v0);
  return v0;
}

IOSObjectArray *JavaLangAnnotationElementTypeEnum_values()
{
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C018();
  }

  v0 = JavaLangAnnotationElementTypeEnum_class_();

  return [IOSObjectArray arrayWithObjects:&JavaLangAnnotationElementTypeEnum_values_ count:8 type:v0];
}

void *JavaLangAnnotationElementTypeEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C018();
  }

  v2 = 0;
  while (1)
  {
    v3 = JavaLangAnnotationElementTypeEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 8)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t JavaLangAnnotationElementTypeEnum_class_()
{
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C018();
  }

  if (qword_1005551D0 != -1)
  {
    sub_10021EB1C();
  }

  return qword_1005551C8;
}

uint64_t JavaUtilList_class_()
{
  if (qword_1005551E0 != -1)
  {
    sub_10021EB9C();
  }

  return qword_1005551D8;
}

id JNIParseMethodSignature(_BYTE *a1)
{
  if (*a1 != 40)
  {
    return 0;
  }

  v2 = a1 + 1;
  v8 = a1 + 1;
  v3 = +[NSMutableArray array];
  for (i = a1[1]; i != 41; i = *v8)
  {
    [v3 addObject:{sub_10021ECC0(v2, &v8)}];
    v2 = v8;
  }

  v6 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", [v3 count], IOSClass_class_());
  if ([v3 count])
  {
    v7 = 0;
    do
    {
      -[IOSObjectArray replaceObjectAtIndex:withObject:](v6, "replaceObjectAtIndex:withObject:", v7, [v3 objectAtIndexedSubscript:v7]);
      ++v7;
    }

    while (v7 < [v3 count]);
  }

  v8 = v2 + 1;
  return sub_10021ECC0(v2 + 1, &v8);
}

id sub_10021ECC0(char *a1, void *a2)
{
  v3 = a1;
  *a2 = a1 + 1;
  v4 = *a1;
  if (v4 == 91)
  {
    v5 = 0;
    do
    {
      v6 = *++v3;
      v4 = v6;
      --v5;
    }

    while (v6 == 91);
    if (v5)
    {
      v7 = -v5;
      v8 = sub_10021ECC0(v3, a2);
      v9 = IOSClass_arrayType(v8, v7);
LABEL_10:
      v14 = v9;
      goto LABEL_11;
    }
  }

  if (v4 != 76)
  {
    v9 = [IOSClass primitiveClassForChar:v4];
    goto LABEL_10;
  }

  v10 = strchr(v3 + 1, 59);
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  v12 = v10 - (v3 + 1);
  v13 = malloc_type_malloc(v10 - v3, 0x2518E388uLL);
  strncpy(v13, v3 + 1, v12)[v12] = 0;
  v14 = [IOSClass forName:[[NSString stringWithUTF8String:?]withString:"stringByReplacingOccurrencesOfString:withString:", @"/", @"."]];
  free(v13);
  *a2 = v11 + 1;
LABEL_11:
  if (!v14)
  {
LABEL_13:
    objc_exception_throw([[JavaLangClassNotFoundException alloc] initWithNSString:[NSString stringWithUTF8String:v3]]);
  }

  return v14;
}

uint64_t CallObjectMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(a2, a3, a4, &v5);
  return v5;
}

void sub_10021EE60(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  v8 = [a2 getBinaryParameterTypes];
  v9 = strlen(v8);
  v10 = v9;
  if (v9 < 0x11)
  {
    v11 = &v12;
  }

  else
  {
    v11 = malloc_type_malloc(8 * v9, 0x10820408ED45BDAuLL);
  }

  sub_10021FDB8(v8, v11, a3);
  [a2 jniInvokeWithId:a1 args:v11 result:a4];
  if (v10 >= 0x11)
  {
    free(v11);
  }
}

uint64_t CallObjectMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:a2 args:a4 result:&v5];
  return v5;
}

uint64_t CallObjectMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(a2, a3, &a9, &v10);
  return v10;
}

uint64_t CallBooleanMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(a2, a3, a4, &v5);
  return v5;
}

uint64_t CallBooleanMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:a2 args:a4 result:&v5];
  return v5;
}

uint64_t CallBooleanMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(a2, a3, &a9, &v10);
  return v10;
}

uint64_t CallByteMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(a2, a3, a4, &v5);
  return v5;
}

uint64_t CallByteMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:a2 args:a4 result:&v5];
  return v5;
}

uint64_t CallByteMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(a2, a3, &a9, &v10);
  return v10;
}

uint64_t CallCharMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(a2, a3, a4, &v5);
  return v5;
}

uint64_t CallCharMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:a2 args:a4 result:&v5];
  return v5;
}

uint64_t CallCharMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(a2, a3, &a9, &v10);
  return v10;
}

uint64_t CallShortMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(a2, a3, a4, &v5);
  return v5;
}

uint64_t CallShortMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:a2 args:a4 result:&v5];
  return v5;
}

uint64_t CallShortMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(a2, a3, &a9, &v10);
  return v10;
}

uint64_t CallIntMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(a2, a3, a4, &v5);
  return v5;
}

uint64_t CallIntMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:a2 args:a4 result:&v5];
  return v5;
}

uint64_t CallIntMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(a2, a3, &a9, &v10);
  return v10;
}

uint64_t CallLongMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(a2, a3, a4, &v5);
  return v5;
}

uint64_t CallLongMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:a2 args:a4 result:&v5];
  return v5;
}

uint64_t CallLongMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(a2, a3, &a9, &v10);
  return v10;
}

float CallFloatMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(a2, a3, a4, &v5);
  return *&v5;
}

float CallFloatMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:a2 args:a4 result:&v5];
  return *&v5;
}

float CallFloatMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(a2, a3, &a9, &v10);
  return *&v10;
}

double CallDoubleMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0.0;
  sub_10021EE60(a2, a3, a4, &v5);
  return v5;
}

double CallDoubleMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0.0;
  [a3 jniInvokeWithId:a2 args:a4 result:&v5];
  return v5;
}

double CallDoubleMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0.0;
  sub_10021EE60(a2, a3, &a9, &v10);
  return v10;
}

uint64_t CallStaticObjectMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(0, a3, a4, &v5);
  return v5;
}

uint64_t CallStaticObjectMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:0 args:a4 result:&v5];
  return v5;
}

uint64_t CallStaticObjectMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(0, a3, &a9, &v10);
  return v10;
}

uint64_t CallStaticBooleanMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(0, a3, a4, &v5);
  return v5;
}

uint64_t CallStaticBooleanMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:0 args:a4 result:&v5];
  return v5;
}

uint64_t CallStaticBooleanMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(0, a3, &a9, &v10);
  return v10;
}

uint64_t CallStaticByteMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(0, a3, a4, &v5);
  return v5;
}

uint64_t CallStaticByteMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:0 args:a4 result:&v5];
  return v5;
}

uint64_t CallStaticByteMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(0, a3, &a9, &v10);
  return v10;
}

uint64_t CallStaticCharMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(0, a3, a4, &v5);
  return v5;
}

uint64_t CallStaticCharMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:0 args:a4 result:&v5];
  return v5;
}

uint64_t CallStaticCharMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(0, a3, &a9, &v10);
  return v10;
}

uint64_t CallStaticShortMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(0, a3, a4, &v5);
  return v5;
}

uint64_t CallStaticShortMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:0 args:a4 result:&v5];
  return v5;
}

uint64_t CallStaticShortMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(0, a3, &a9, &v10);
  return v10;
}

uint64_t CallStaticIntMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(0, a3, a4, &v5);
  return v5;
}

uint64_t CallStaticIntMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:0 args:a4 result:&v5];
  return v5;
}

uint64_t CallStaticIntMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(0, a3, &a9, &v10);
  return v10;
}

uint64_t CallStaticLongMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(0, a3, a4, &v5);
  return v5;
}

uint64_t CallStaticLongMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:0 args:a4 result:&v5];
  return v5;
}

uint64_t CallStaticLongMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(0, a3, &a9, &v10);
  return v10;
}

float CallStaticFloatMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0;
  sub_10021EE60(0, a3, a4, &v5);
  return *&v5;
}

float CallStaticFloatMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  [a3 jniInvokeWithId:0 args:a4 result:&v5];
  return *&v5;
}

float CallStaticFloatMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0;
  sub_10021EE60(0, a3, &a9, &v10);
  return *&v10;
}

double CallStaticDoubleMethodV(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 0.0;
  sub_10021EE60(0, a3, a4, &v5);
  return v5;
}

double CallStaticDoubleMethodA(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0.0;
  [a3 jniInvokeWithId:0 args:a4 result:&v5];
  return v5;
}

double CallStaticDoubleMethod(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = 0.0;
  sub_10021EE60(0, a3, &a9, &v10);
  return v10;
}

_BYTE *sub_10021FDB8(_BYTE *result, _DWORD *a2, _DWORD *a3)
{
  while (1)
  {
    v3 = *result;
    if (v3 <= 0x48)
    {
      break;
    }

    if (*result > 0x52u)
    {
      if (v3 == 83)
      {
        goto LABEL_16;
      }

      if (v3 != 90)
      {
        goto LABEL_9;
      }

      v7 = a3;
      a3 += 2;
      LOBYTE(v7) = *v7 != 0;
      goto LABEL_20;
    }

    if (v3 != 73)
    {
      goto LABEL_9;
    }

    v10 = a3;
    a3 += 2;
    *a2 = *v10;
LABEL_21:
    ++result;
    a2 += 2;
  }

  if (*result > 0x43u)
  {
    if (v3 == 68)
    {
      v9 = a3;
      a3 += 2;
      *a2 = *v9;
    }

    else
    {
      if (v3 != 70)
      {
        goto LABEL_9;
      }

      v5 = a3;
      a3 += 2;
      v6 = *v5;
      *a2 = v6;
    }

    goto LABEL_21;
  }

  if (v3 == 66)
  {
    v7 = a3;
    a3 += 2;
    LODWORD(v7) = *v7;
LABEL_20:
    *a2 = v7;
    goto LABEL_21;
  }

  if (v3 == 67)
  {
LABEL_16:
    v8 = a3;
    a3 += 2;
    *a2 = *v8;
    goto LABEL_21;
  }

  if (*result)
  {
LABEL_9:
    v4 = a3;
    a3 += 2;
    *a2 = *v4;
    goto LABEL_21;
  }

  return result;
}

id sub_10021FEEC(uint64_t a1, uint64_t a2)
{
  v2 = [[NSString stringWithUTF8String:?]withString:"stringByReplacingOccurrencesOfString:withString:", @"/", @"."];

  return [IOSClass forName:v2];
}

void sub_10021FF54(int a1, id exception)
{
  if (exception)
  {
    objc_exception_throw(exception);
  }

  JreThrowNullPointerException();
}

void sub_10021FF70(uint64_t a1, void *a2)
{
  if (a2)
  {
    objc_exception_throw([objc_alloc(objc_msgSend(a2 "objcClass"))]);
  }

  JreThrowNullPointerException();
}

id sub_10021FFE0(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  return [a2 getClass];
}

NSString *sub_100220014(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  return [NSString stringWithCharacters:a2 length:a3];
}

id sub_100220048(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  return [a2 length];
}

char *sub_10022006C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (a3)
  {
    *a3 = 1;
  }

  return [IOSCharArray arrayWithNSString:a2]+ 12;
}

NSString *sub_1002200B8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  return [NSString stringWithUTF8String:a2];
}

size_t sub_1002200E8(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  return strlen([a2 UTF8String]);
}

id sub_100220110(uint64_t a1, void *a2, _BYTE *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (a3)
  {
    *a3 = 0;
  }

  return [a2 UTF8String];
}

uint64_t sub_100220144(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  return *(a2 + 8);
}

IOSObjectArray *sub_10022016C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = [IOSObjectArray arrayWithLength:a2 type:a3];
  if (a4 && a2 >= 1)
  {
    v7 = 0;
    do
    {
      IOSObjectArray_Set(v6, v7++, a4);
    }

    while (a2 != v7);
  }

  return v6;
}

uint64_t sub_1002201EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if ((a3 & 0x80000000) != 0 || v3 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, a3);
  }

  return *(a2 + 24 + 8 * a3);
}

uint64_t sub_1002202DC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (a3)
  {
    *a3 = 0;
  }

  return a2 + 12;
}

uint64_t sub_10022030C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (a3)
  {
    *a3 = 0;
  }

  return a2 + 12;
}

uint64_t sub_10022033C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (a3)
  {
    *a3 = 0;
  }

  return a2 + 12;
}

uint64_t sub_10022036C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (a3)
  {
    *a3 = 0;
  }

  return a2 + 12;
}

uint64_t sub_10022039C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (a3)
  {
    *a3 = 0;
  }

  return a2 + 12;
}

uint64_t sub_1002203CC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (a3)
  {
    *a3 = 0;
  }

  return a2 + 12;
}

uint64_t sub_1002203FC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (a3)
  {
    *a3 = 0;
  }

  return a2 + 12;
}

uint64_t sub_10022042C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (a3)
  {
    *a3 = 0;
  }

  return a2 + 12;
}

void *sub_10022047C(int a1, uint64_t a2, int a3, int a4, void *__dst)
{
  if (!a2 || !__dst)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  v5 = (a2 + 12 + a3);

  return memcpy(__dst, v5, a4);
}

void *sub_100220514(int a1, uint64_t a2, int a3, int a4, void *__dst)
{
  if (!a2 || !__dst)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  v5 = (a2 + 12 + a3);

  return memcpy(__dst, v5, a4);
}

void *sub_1002205AC(int a1, uint64_t a2, int a3, int a4, void *__dst)
{
  if (!a2 || !__dst)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  v5 = (a2 + 12 + 4 * a3);

  return memcpy(__dst, v5, 2 * a4);
}

void *sub_100220644(int a1, uint64_t a2, int a3, int a4, void *__dst)
{
  if (!a2 || !__dst)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  v5 = (a2 + 12 + 4 * a3);

  return memcpy(__dst, v5, 2 * a4);
}

void *sub_1002206DC(int a1, uint64_t a2, int a3, int a4, void *__dst)
{
  if (!a2 || !__dst)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  v5 = (a2 + 12 + 16 * a3);

  return memcpy(__dst, v5, 4 * a4);
}

void *sub_100220774(int a1, uint64_t a2, int a3, int a4, void *__dst)
{
  if (!a2 || !__dst)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  v5 = (a2 + 16 + (a3 << 6));

  return memcpy(__dst, v5, 8 * a4);
}

void *sub_100220810(int a1, uint64_t a2, int a3, int a4, void *__dst)
{
  if (!a2 || !__dst)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  v5 = (a2 + 12 + 16 * a3);

  return memcpy(__dst, v5, 4 * a4);
}

void *sub_1002208A8(int a1, uint64_t a2, int a3, int a4, void *__dst)
{
  if (!a2 || !__dst)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  v5 = (a2 + 16 + (a3 << 6));

  return memcpy(__dst, v5, 8 * a4);
}

void *sub_100220944(int a1, uint64_t a2, int a3, int a4, void *__src)
{
  if (!a2 || !__src)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  return memcpy((a2 + 12 + a3), __src, a4);
}

void *sub_1002209DC(int a1, uint64_t a2, int a3, int a4, void *__src)
{
  if (!a2 || !__src)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  return memcpy((a2 + 12 + a3), __src, a4);
}

void *sub_100220A74(int a1, uint64_t a2, int a3, int a4, void *__src)
{
  if (!a2 || !__src)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  return memcpy((a2 + 12 + 4 * a3), __src, 2 * a4);
}

void *sub_100220B0C(int a1, uint64_t a2, int a3, int a4, void *__src)
{
  if (!a2 || !__src)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  return memcpy((a2 + 12 + 4 * a3), __src, 2 * a4);
}

void *sub_100220BA4(int a1, uint64_t a2, int a3, int a4, void *__src)
{
  if (!a2 || !__src)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  return memcpy((a2 + 12 + 16 * a3), __src, 4 * a4);
}

void *sub_100220C3C(int a1, uint64_t a2, int a3, int a4, void *__src)
{
  if (!a2 || !__src)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  return memcpy((a2 + 16 + (a3 << 6)), __src, 8 * a4);
}

void *sub_100220CD8(int a1, uint64_t a2, int a3, int a4, void *__src)
{
  if (!a2 || !__src)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  return memcpy((a2 + 12 + 16 * a3), __src, 4 * a4);
}

void *sub_100220D70(int a1, uint64_t a2, int a3, int a4, void *__src)
{
  if (!a2 || !__src)
  {
    JreThrowNullPointerException();
  }

  if ((a4 | a3) < 0 || a4 + a3 > *(a2 + 8))
  {
    IOSArray_throwOutOfBounds();
  }

  return memcpy((a2 + 16 + (a3 << 6)), __src, 8 * a4);
}

id sub_100220E0C(uint64_t a1, void *a2, int a3, int a4, uint64_t a5)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  return [a2 getCharacters:a5 range:{a3, a4}];
}

void *sub_100220E48(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  if (!a2 || !a5)
  {
    JreThrowNullPointerException();
  }

  v7 = [a2 UTF8String] + a3;

  return memcpy(a5, v7, a4);
}

uint64_t sub_100220EA8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (a3)
  {
    *a3 = 0;
  }

  return a2 + 12;
}

char *sub_100220EDC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (a3)
  {
    *a3 = 1;
  }

  return [IOSCharArray arrayWithNSString:a2]+ 12;
}

JavaNioDirectByteBuffer *sub_100220F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [[JavaNioDirectByteBuffer alloc] initWithLong:a2 withInt:a3];

  return v3;
}

uint64_t sub_100220F74(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  return *(a2 + 32);
}

uint64_t sub_100220F9C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  return *(a2 + 8);
}

id sub_100220FC4(uint64_t a1, void *a2)
{
  v3 = [NSString stringWithUTF8String:?];

  return [a2 getDeclaredField:v3];
}

id sub_100221008(uint64_t a1, void *a2)
{
  v3 = [NSString stringWithUTF8String:?];

  return [a2 getDeclaredField:v3];
}

id sub_10022104C(uint64_t a1, void *a2, const char *a3, _BYTE *a4)
{
  JNIParseMethodSignature(a4);
  v7 = v6;
  if (!strcmp(a3, "<init>"))
  {

    return [a2 getConstructor:v7];
  }

  else
  {
    v8 = [NSString stringWithUTF8String:a3];

    return [a2 getDeclaredMethod:v8 parameterTypes:v7];
  }
}

id sub_10022111C(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v6 = [a3 getBinaryParameterTypes];
  v7 = strlen(v6);
  v8 = v7;
  if (v7 < 0x11)
  {
    v9 = &v12;
  }

  else
  {
    v9 = malloc_type_malloc(8 * v7, 0x10820408ED45BDAuLL);
  }

  sub_10021FDB8(v6, v9, a4);
  v10 = [a3 jniNewInstance:v9];
  if (v8 >= 0x11)
  {
    free(v9);
  }

  return v10;
}

uint64_t sub_100221204(uint64_t a1, void *a2)
{
  v3 = qword_1005551E8;
  if (!qword_1005551E8)
  {
    v3 = malloc_type_malloc(8uLL, 0x6004044C4A2DFuLL);
    qword_1005551E8 = v3;
    *v3 = J2ObjC_JavaVM;
  }

  *a2 = v3;
  return 0;
}

uint64_t sub_100221268(uint64_t a1, uint64_t (***a2)())
{
  v3 = qword_1005551F0;
  if (!qword_1005551F0)
  {
    v3 = malloc_type_malloc(8uLL, 0x6004044C4A2DFuLL);
    qword_1005551F0 = v3;
    *v3 = J2ObjC_JNIEnv[0];
  }

  *a2 = v3;
  return 0;
}

uint64_t sub_1002212CC(uint64_t a1, uint64_t (***a2)())
{
  v3 = qword_1005551F0;
  if (!qword_1005551F0)
  {
    v3 = malloc_type_malloc(8uLL, 0x6004044C4A2DFuLL);
    qword_1005551F0 = v3;
    *v3 = J2ObjC_JNIEnv[0];
  }

  *a2 = v3;
  return 0;
}

uint64_t sub_100221328(uint64_t a1, uint64_t (***a2)())
{
  v3 = qword_1005551F0;
  if (!qword_1005551F0)
  {
    v3 = malloc_type_malloc(8uLL, 0x6004044C4A2DFuLL);
    qword_1005551F0 = v3;
    *v3 = J2ObjC_JNIEnv[0];
  }

  *a2 = v3;
  return 0;
}

id JavaUtilStringTokenizer_initWithNSString_withNSString_withBoolean_(uint64_t a1, void *a2, void *a3, char a4)
{
  if (!a2)
  {
    v8 = new_JavaLangNullPointerException_initWithNSString_(@"string == null");
    objc_exception_throw(v8);
  }

  JreStrongAssign((a1 + 8), a2);
  result = JreStrongAssign((a1 + 16), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = 0;
  return result;
}

JavaUtilStringTokenizer *new_JavaUtilStringTokenizer_initWithNSString_withNSString_(void *a1, void *a2)
{
  v4 = [JavaUtilStringTokenizer alloc];
  JavaUtilStringTokenizer_initWithNSString_withNSString_withBoolean_(v4, a1, a2, 0);
  return v4;
}

JavaIoFileNotFoundException *new_JavaIoFileNotFoundException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaIoFileNotFoundException alloc];
  JavaIoIOException_initWithNSString_(v2, a1);
  return v2;
}

JavaNioSelectorProviderImpl *new_JavaNioSelectorProviderImpl_init()
{
  v0 = [JavaNioSelectorProviderImpl alloc];
  JavaNioChannelsSpiSelectorProvider_init(v0, v1);
  return v0;
}

id JavaIoPrintStream_initWithJavaIoOutputStream_(uint64_t a1, void *a2)
{
  result = JavaIoFilterOutputStream_initWithJavaIoOutputStream_(a1, a2);
  if (!a2)
  {
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"out == null");
    objc_exception_throw(v4);
  }

  return result;
}

id JavaIoPrintStream_initWithJavaIoOutputStream_withBoolean_(uint64_t a1, void *a2, char a3)
{
  result = JavaIoFilterOutputStream_initWithJavaIoOutputStream_(a1, a2);
  if (!a2)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"out == null");
    objc_exception_throw(v7);
  }

  *(a1 + 17) = a3;
  return result;
}

id JavaIoPrintStream_initWithJavaIoOutputStream_withBoolean_withNSString_(uint64_t a1, void *a2, char a3, __CFString *a4)
{
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(a1, a2);
  if (!a2)
  {
    v9 = @"out == null";
    goto LABEL_9;
  }

  if (!a4)
  {
    v9 = @"charsetName == null";
LABEL_9:
    v10 = new_JavaLangNullPointerException_initWithNSString_(v9);
    objc_exception_throw(v10);
  }

  *(a1 + 17) = a3;
  if ((JavaNioCharsetCharset_isSupportedWithNSString_(a4) & 1) == 0)
  {
    v11 = new_JavaIoUnsupportedEncodingException_initWithNSString_(a4);
    objc_exception_throw(v11);
  }

  return JreStrongAssign((a1 + 24), a4);
}

id JavaIoPrintStream_initWithJavaIoFile_withNSString_(uint64_t a1, void *a2, __CFString *a3)
{
  v5 = new_JavaIoFileOutputStream_initWithJavaIoFile_(a2);
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(a1, v5);
  if (!a3)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"charsetName == null");
    goto LABEL_8;
  }

  if ((JavaNioCharsetCharset_isSupportedWithNSString_(a3) & 1) == 0)
  {
    v7 = new_JavaIoUnsupportedEncodingException_initWithNSString_(a3);
LABEL_8:
    objc_exception_throw(v7);
  }

  return JreStrongAssign((a1 + 24), a3);
}

id JavaIoPrintStream_initWithNSString_(uint64_t a1, void *a2)
{
  v3 = new_JavaIoFile_initWithNSString_(a2);
  v4 = new_JavaIoFileOutputStream_initWithJavaIoFile_(v3);

  return JavaIoFilterOutputStream_initWithJavaIoOutputStream_(a1, v4);
}

void sub_100222BC4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    [v2 setError];
    objc_end_catch();
    JUMPOUT(0x100222BA4);
  }

  objc_sync_exit(v2);
  _Unwind_Resume(exc_buf);
}

JavaIoPrintStream *new_JavaIoPrintStream_initWithJavaIoOutputStream_(void *a1)
{
  v2 = [JavaIoPrintStream alloc];
  JavaIoPrintStream_initWithJavaIoOutputStream_(v2, a1);
  return v2;
}

JavaIoPrintStream *new_JavaIoPrintStream_initWithJavaIoOutputStream_withBoolean_withNSString_(void *a1, char a2, __CFString *a3)
{
  v6 = [JavaIoPrintStream alloc];
  JavaIoPrintStream_initWithJavaIoOutputStream_withBoolean_withNSString_(v6, a1, a2, a3);
  return v6;
}

uint64_t JavaUtilComparator_class_()
{
  if (qword_100555200 != -1)
  {
    sub_100222E30();
  }

  return qword_1005551F8;
}

JavaNetStandardSocketOptions_BooleanSocketOption *sub_100223238(void *a1, int a2)
{
  v4 = [JavaNetStandardSocketOptions_BooleanSocketOption alloc];
  v5 = JavaLangBoolean_class_();
  JreStrongAssign(&v4->super.name_, a1);
  JreStrongAssign(&v4->super.type_, v5);
  v4->super.socketOption_ = a2;
  return v4;
}

JavaNetStandardSocketOptions_ByteRangeSocketOption *sub_10022329C(void *a1, int a2)
{
  v4 = [JavaNetStandardSocketOptions_ByteRangeSocketOption alloc];
  v5 = JavaLangInteger_class_();
  JreStrongAssign(&v4->super.name_, a1);
  JreStrongAssign(&v4->super.type_, v5);
  v4->super.socketOption_ = a2;
  return v4;
}

JavaNetStandardSocketOptions_PositiveIntegerSocketOption *sub_100223300(void *a1, int a2)
{
  v4 = [JavaNetStandardSocketOptions_PositiveIntegerSocketOption alloc];
  v5 = JavaLangInteger_class_();
  JreStrongAssign(&v4->super.name_, a1);
  JreStrongAssign(&v4->super.type_, v5);
  v4->super.socketOption_ = a2;
  return v4;
}

JavaLangError *new_JavaLangError_initWithNSString_(void *a1)
{
  v2 = [JavaLangError alloc];
  JavaLangThrowable_initWithNSString_(v2, a1);
  return v2;
}

JavaLangError *new_JavaLangError_initWithNSString_withJavaLangThrowable_(void *a1, void *a2)
{
  v4 = [JavaLangError alloc];
  JavaLangThrowable_initWithNSString_withJavaLangThrowable_(v4, a1, a2);
  return v4;
}

JavaLangError *new_JavaLangError_initWithJavaLangThrowable_(void *a1)
{
  v2 = [JavaLangError alloc];
  JavaLangThrowable_initWithJavaLangThrowable_(v2, a1);
  return v2;
}

JavaLangIllegalArgumentException *new_JavaLangIllegalArgumentException_init()
{
  v0 = [JavaLangIllegalArgumentException alloc];
  JavaLangRuntimeException_init(v0, v1);
  return v0;
}

JavaLangIllegalArgumentException *new_JavaLangIllegalArgumentException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangIllegalArgumentException alloc];
  JavaLangRuntimeException_initWithNSString_(v2, a1);
  return v2;
}

JavaLangIllegalArgumentException *new_JavaLangIllegalArgumentException_initWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaLangIllegalArgumentException alloc];
  JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(v4, a1, a2);
  return v4;
}

id LibcoreReflectListOfTypes_initWithJavaLangReflectTypeArray_(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = new_JavaUtilArrayList_initWithInt_(*(a2 + 8));
  result = JreStrongAssignAndConsume((a1 + 8), v4);
  v6 = (a2 + 24);
  v7 = a2 + 24 + 8 * *(a2 + 8);
  while (v6 < v7)
  {
    v8 = *v6++;
    result = [*(a1 + 8) addWithId:v8];
  }

  return result;
}

uint64_t sub_100224300(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 size];
  if (v2)
  {
    v3 = v2;
    v4 = [IOSObjectArray arrayWithLength:v2 type:JavaLangReflectType_class_()];
    if (v3 >= 1)
    {
      v5 = 0;
      v6 = v3;
      do
      {
        v7 = [a1 getWithInt:v5];
        objc_opt_class();
        if (!v7)
        {
          JreThrowNullPointerException();
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        IOSObjectArray_Set(v4, v5++, [v7 getResolvedType]);
      }

      while (v6 != v5);
    }
  }

  else
  {
    if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001BBB54();
    }

    return LibcoreUtilEmptyArray_TYPE_;
  }

  return v4;
}

LibcoreReflectListOfTypes *new_LibcoreReflectListOfTypes_initWithInt_(uint64_t a1)
{
  v2 = [LibcoreReflectListOfTypes alloc];
  v3 = new_JavaUtilArrayList_initWithInt_(a1);
  JreStrongAssignAndConsume(&v2->types_, v3);
  return v2;
}

LibcoreReflectListOfTypes *new_LibcoreReflectListOfTypes_initWithJavaLangReflectTypeArray_(uint64_t a1)
{
  v2 = [LibcoreReflectListOfTypes alloc];
  LibcoreReflectListOfTypes_initWithJavaLangReflectTypeArray_(v2, a1);
  return v2;
}

OrgXmlSaxSAXNotSupportedException *new_OrgXmlSaxSAXNotSupportedException_initWithNSString_(uint64_t a1)
{
  v2 = [OrgXmlSaxSAXNotSupportedException alloc];
  OrgXmlSaxSAXException_initWithNSString_(v2, a1);
  return v2;
}

id JavaTextAttributedString_initWithJavaTextAttributedCharacterIterator_(id *a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_16;
  }

  v4 = [a2 getBeginIndex];
  if (v4 > [a2 getEndIndex])
  {
    v18 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Invalid substring range");
    objc_exception_throw(v18);
  }

  v5 = new_JavaLangStringBuilder_init();
  for (i = [a2 getBeginIndex]; i < objc_msgSend(a2, "getEndIndex"); ++i)
  {
    -[JavaLangStringBuilder appendWithChar:](v5, "appendWithChar:", [a2 current]);
    [a2 next];
  }

  JreStrongAssign(a1 + 1, [(JavaLangStringBuilder *)v5 description]);
  result = [a2 getAllAttributeKeys];
  if (result)
  {
    v8 = result;
    v9 = new_JavaUtilHashMap_initWithInt_(((4 * [result size]) / 3 + 1));
    JreStrongAssignAndConsume(a1 + 2, v9);
    v10 = [v8 iterator];
    if (v10)
    {
      v11 = v10;
      result = [v10 hasNext];
      if (result)
      {
        do
        {
          v12 = [v11 next];
          v13 = a2;
          for (j = 0; ; j = v16)
          {
            [v13 setIndexWithInt:j];
            if ([a2 current] == 0xFFFF)
            {
              break;
            }

            v15 = [a2 getRunStartWithJavaTextAttributedCharacterIterator_Attribute:v12];
            v16 = [a2 getRunLimitWithJavaTextAttributedCharacterIterator_Attribute:v12];
            v17 = [a2 getAttributeWithJavaTextAttributedCharacterIterator_Attribute:v12];
            if (v17)
            {
              [a1 addAttributeWithJavaTextAttributedCharacterIterator_Attribute:v12 withId:v17 withInt:v15 withInt:v16];
            }

            v13 = a2;
          }

          result = [v11 hasNext];
        }

        while ((result & 1) != 0);
      }

      return result;
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  return result;
}

id sub_1002248EC(id *a1, void *a2, void *a3, int a4, void *a5)
{
  if (!a2)
  {
    goto LABEL_28;
  }

  if ([a2 getBeginIndex] > a3 || (result = objc_msgSend(a2, "getEndIndex"), a3 > a4) || result < a4)
  {
    v24 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v24);
  }

  if (a5)
  {
    v11 = new_JavaLangStringBuilder_init();
    [a2 setIndexWithInt:a3];
    while ([a2 getIndex] < a4)
    {
      -[JavaLangStringBuilder appendWithChar:](v11, "appendWithChar:", [a2 current]);
      [a2 next];
    }

    JreStrongAssign(a1 + 1, [(JavaLangStringBuilder *)v11 description]);
    v12 = new_JavaUtilHashMap_initWithInt_(((4 * [a5 size]) / 3 + 1));
    JreStrongAssignAndConsume(a1 + 2, v12);
    v13 = [a5 iterator];
    if (v13)
    {
      v14 = v13;
      result = [v13 hasNext];
      if (result)
      {
        do
        {
          v15 = [v14 next];
          v16 = a2;
          for (i = a3; ; i = v20)
          {
            [v16 setIndexWithInt:i];
            if ([a2 getIndex] >= a4)
            {
              break;
            }

            v18 = [a2 getAttributeWithJavaTextAttributedCharacterIterator_Attribute:v15];
            v19 = [a2 getRunStartWithJavaTextAttributedCharacterIterator_Attribute:v15];
            v20 = [a2 getRunLimitWithJavaTextAttributedCharacterIterator_Attribute:v15];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && v19 >= a3 && v20 <= a4 || v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              if (v19 <= a3)
              {
                v21 = a3;
              }

              else
              {
                v21 = v19;
              }

              v22 = (v21 - a3);
              if (v20 >= a4)
              {
                v23 = a4;
              }

              else
              {
                v23 = v20;
              }

              [a1 addAttributeWithJavaTextAttributedCharacterIterator_Attribute:v15 withId:v18 withInt:v22 withInt:(v23 - a3)];
            }

            v16 = a2;
          }

          result = [v14 hasNext];
        }

        while ((result & 1) != 0);
      }

      return result;
    }

LABEL_28:
    JreThrowNullPointerException();
  }

  return result;
}

id JavaTextAttributedString_initWithJavaTextAttributedCharacterIterator_withInt_withInt_withJavaTextAttributedCharacterIterator_AttributeArray_(id *a1, void *a2, void *a3, int a4, void *a5)
{
  if (a5)
  {
    v9 = JavaUtilArrays_asListWithNSObjectArray_(a5);
    v10 = new_JavaUtilHashSet_initWithJavaUtilCollection_(v9);
  }

  else
  {
    v10 = new_JavaUtilHashSet_init();
  }

  v11 = v10;

  return sub_1002248EC(a1, a2, a3, a4, v11);
}

void *JavaTextAttributedString_initWithNSString_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"value == null");
    objc_exception_throw(v5);
  }

  JreStrongAssign((a1 + 8), a2);
  v3 = new_JavaUtilHashMap_initWithInt_(11);

  return JreStrongAssignAndConsume((a1 + 16), v3);
}

id JavaTextAttributedString_initWithNSString_withJavaUtilMap_(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    v21 = new_JavaLangNullPointerException_initWithNSString_(@"value == null");
    goto LABEL_22;
  }

  if (![a2 length])
  {
    if (!a3)
    {
      goto LABEL_18;
    }

    if ([a3 isEmpty])
    {
      v6 = (a1 + 8);
      JreStrongAssign((a1 + 8), a2);
      goto LABEL_8;
    }

    v21 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Cannot add attributes to empty string");
LABEL_22:
    objc_exception_throw(v21);
  }

  v6 = (a1 + 8);
  JreStrongAssign((a1 + 8), a2);
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_8:
  v7 = new_JavaUtilHashMap_initWithInt_(((4 * [a3 size]) / 3 + 1));
  JreStrongAssignAndConsume((a1 + 16), v7);
  v8 = [a3 entrySet];
  if (!v8 || (v9 = [v8 iterator]) == 0)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v10 = v9;
  result = [v9 hasNext];
  if (result)
  {
    do
    {
      v12 = [v10 next];
      v13 = JavaUtilMap_Entry_class_();
      if (v12 && ([v13 isInstance:v12] & 1) == 0)
      {
        goto LABEL_19;
      }

      v14 = new_JavaUtilArrayList_initWithInt_(1);
      v15 = [*v6 length];
      if (!v12)
      {
        goto LABEL_18;
      }

      v16 = v15;
      v17 = [v12 getValue];
      v18 = [JavaTextAttributedString_Range alloc];
      v18->start_ = 0;
      v18->end_ = v16;
      JreStrongAssign(&v18->value_, v17);
      [(JavaUtilArrayList *)v14 addWithId:v18];
      v19 = *(a1 + 16);
      v20 = [v12 getKey];
      objc_opt_class();
      if (v20)
      {
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_19:
          JreThrowClassCastException();
        }
      }

      [v19 putWithId:v20 withId:v14];
      result = [v10 hasNext];
    }

    while ((result & 1) != 0);
  }

  return result;
}

JavaTextAttributedString *new_JavaTextAttributedString_initWithNSString_(void *a1)
{
  v2 = [JavaTextAttributedString alloc];
  JavaTextAttributedString_initWithNSString_(v2, a1);
  return v2;
}

id JavaTextAttributedString_AttributedIterator_initWithJavaTextAttributedString_(uint64_t a1, void *a2)
{
  JreStrongAssign((a1 + 24), a2);
  *(a1 + 8) = 0;
  if (!a2 || (v4 = a2[1]) == 0)
  {
    JreThrowNullPointerException();
  }

  result = [v4 length];
  *(a1 + 12) = result;
  return result;
}

id JavaTextAttributedString_AttributedIterator_initWithJavaTextAttributedString_withJavaTextAttributedCharacterIterator_AttributeArray_withInt_withInt_(uint64_t a1, void *a2, uint64_t a3, signed int a4, signed int a5)
{
  if (a4 < 0)
  {
    goto LABEL_18;
  }

  if (!a2 || (v7 = a2[1]) == 0)
  {
    JreThrowNullPointerException();
  }

  v11 = [v7 length];
  if (a4 > a5 || v11 < a5)
  {
LABEL_18:
    v19 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v19);
  }

  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 16) = a4;
  result = JreStrongAssign((a1 + 24), a2);
  if (a3)
  {
    v13 = 5726623064 * *(a3 + 8);
    v14 = new_JavaUtilHashSet_initWithInt_(HIDWORD(v13) + (v13 >> 63) + 1);
    v15 = *(a3 + 8);
    v16 = (v15 - 1);
    if (v15 - 1 >= 0)
    {
      do
      {
        v17 = *(a3 + 8);
        if (v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v16);
        }

        [(JavaUtilHashSet *)v14 addWithId:*(a3 + 24 + 8 * v16)];
      }

      while (v16-- > 0);
    }

    return JreStrongAssign((a1 + 32), v14);
  }

  return result;
}

BOOL sub_100225ACC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a2 + 16);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  v5 = *(a2 + 8);
  v6 = *(a1 + 8);
  if (v5 < v6)
  {
    return 0;
  }

  v7 = *(a1 + 12);
  if (v5 >= v7)
  {
    return 0;
  }

  v8 = *(a2 + 12);
  return v8 > v6 && v8 <= v7;
}

uint64_t sub_100225B64(uint64_t a1, void *a2)
{
  if (!a2 || (v3 = [a2 iterator]) == 0)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  v4 = v3;
  result = [v3 hasNext];
  if (result)
  {
    while (1)
    {
      v6 = [v4 next];
      if (!v6)
      {
        goto LABEL_19;
      }

      v7 = v6;
      v8 = v6[2];
      v9 = *(a1 + 8);
      if (v8 >= v9 && v8 < *(a1 + 12))
      {
        break;
      }

      v10 = v6[3];
      if (v10 > v9 && v10 <= *(a1 + 12))
      {
        v13 = *(v6 + 2);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v7[2];
          if (v14 >= *(a1 + 8))
          {
            return v14 < *(a1 + 12);
          }

          return 0;
        }

        return 1;
      }

      if (([v4 hasNext] & 1) == 0)
      {
        return 0;
      }
    }

    v11 = *(v6 + 2);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v7[3];
      if (v12 > *(a1 + 8))
      {
        return v12 <= *(a1 + 12);
      }

      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_100225DFC(uint64_t a1, void *a2)
{
  if (!a2 || (v3 = [a2 iterator]) == 0)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v4 = v3;
  if (![v3 hasNext])
  {
    return 0;
  }

  while (1)
  {
    v5 = [v4 next];
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = v5;
    v7 = *(a1 + 16);
    if (v7 >= v5[2] && v7 < v5[3])
    {
      break;
    }

    if (([v4 hasNext] & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_100225ACC(a1, v5))
  {
    return *(v6 + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100226098(_DWORD *a1, void *a2)
{
  if (!a2 || (v3 = a1[3], (v4 = [a2 listIteratorWithInt:{objc_msgSend(a2, "size")}]) == 0))
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v5 = v4;
  do
  {
    v6 = v3;
    if (([v5 hasPrevious] & 1) == 0)
    {
      break;
    }

    v7 = [v5 previous];
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = v7;
    v9 = v7[3];
    if (v9 <= a1[2])
    {
      break;
    }

    v10 = a1[4];
    v3 = v7[2];
    if (v10 < v9 && v10 >= v3)
    {
      if (sub_100225ACC(a1, v7))
      {
        return v8[3];
      }

      return v6;
    }
  }

  while (v10 < v9);
  return v6;
}

uint64_t sub_1002262BC(unsigned int *a1, void *a2)
{
  if (!a2 || (v3 = a1[2], (v4 = [a2 iterator]) == 0))
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v5 = v4;
  while (1)
  {
    v6 = v3;
    if (![v5 hasNext])
    {
      return v6;
    }

    v7 = [v5 next];
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = v7;
    v9 = v7[2];
    if (v9 >= a1[3])
    {
      return v6;
    }

    v10 = a1[4];
    if (v10 < v9)
    {
      return v6;
    }

    v3 = v7[3];
    if (v10 < v3)
    {
      if (sub_100225ACC(a1, v7))
      {
        return v8[2];
      }

      return v6;
    }
  }
}

JavaUtilConcurrentAtomicAtomicBoolean *new_JavaUtilConcurrentAtomicAtomicBoolean_initWithBoolean_(unsigned int a1)
{
  result = [JavaUtilConcurrentAtomicAtomicBoolean alloc];
  atomic_store(a1, &result->value_);
  return result;
}

uint64_t JavaLangReflectParameterizedType_class_()
{
  if (qword_100555210 != -1)
  {
    sub_1002268E0();
  }

  return qword_100555208;
}

uint64_t FastPointerLookup(pthread_mutex_t *a1, uint64_t a2)
{
  v4 = 9 * ((((a2 << 15) ^ 0xFFFFCD7D) + a2) ^ ((((a2 << 15) ^ 0xFFFFCD7D) + a2) >> 10));
  v5 = (16389 * (v4 ^ (v4 >> 6))) ^ ((16389 * (v4 ^ (v4 >> 6))) >> 16);
  atomic_fetch_add_explicit(a1[1].__opaque, 1uLL, memory_order_relaxed);
  __dmb(0xBu);
  explicit = atomic_load_explicit(&a1[1].__opaque[8], memory_order_acquire);
  if (!explicit || (v7 = atomic_load_explicit(&explicit[2 * ((*explicit - 1) & v5) + 6], memory_order_acquire)) == 0)
  {
LABEL_5:
    atomic_fetch_add_explicit(a1[1].__opaque, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
LABEL_6:
    pthread_mutex_lock(a1);
    v8 = *&a1[1].__opaque[8];
    if (!v8)
    {
      v9 = malloc_type_calloc(0x698uLL, 1uLL, 0x102004023CB03E4uLL);
      v8 = v9;
      v10 = v9 + 536;
      if ((v9 & 7) != 0)
      {
        v10 = ((v9 + 536) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      *v9 = 64;
      *(v9 + 8) = v10;
      *(v9 + 16) = v9 + 1664;
      atomic_store(v9, &a1[1].__opaque[8]);
    }

    v11 = *v8;
    v12 = (*v8 - 1) & v5;
    v13 = v8[v12 + 3];
    if (v13)
    {
      while (*v13 != a2)
      {
        v13 = v13[2];
        if (!v13)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v13 = v8[1];
      if (v13 > v8[2])
      {
        v14 = 16 * v11 + 24;
        v15 = malloc_type_calloc(v14 + 24 * (v11 + (v11 >> 1)), 1uLL, 0x102004023CB03E4uLL);
        v16 = v15;
        v17 = 2 * v11;
        v18 = v14 + v15 - (v15 & 7) + 8;
        if ((v15 & 7) == 0)
        {
          v18 = v14 + v15;
        }

        *v15 = v17;
        *(v15 + 8) = v18;
        *(v15 + 16) = v15 + 16 * v11 + 24 * (v11 + (v11 >> 1));
        if (v11)
        {
          v19 = 0;
          v20 = v17 - 1;
          do
          {
            v21 = v8[v19 + 3];
            if (v21)
            {
              v22 = v18;
              do
              {
                v23 = v18 + 24;
                *(v15 + 8) = v18 + 24;
                v24 = *v21;
                *v18 = *v21;
                v25 = 9 * ((((v24 << 15) ^ 0xFFFFCD7D) + v24) ^ ((((v24 << 15) ^ 0xFFFFCD7D) + v24) >> 10));
                v26 = (v15 + 24 + 8 * (v20 & ((16389 * (v25 ^ (v25 >> 6))) ^ ((16389 * (v25 ^ (v25 >> 6))) >> 16))));
                *(v18 + 16) = *v26;
                atomic_store(v22, v26);
                v21 = *(v21 + 2);
                v22 += 24;
                v18 += 24;
              }

              while (v21);
            }

            else
            {
              v23 = v18;
            }

            ++v19;
            v18 = v23;
          }

          while (v19 != v11);
        }

        atomic_store(v15, &a1[1].__opaque[8]);
        __dmb(0xBu);
          ;
        }

        free(v8);
        v13 = v16[1];
        v12 = (*v16 - 1) & v5;
        v8 = v16;
      }

      v8[1] = (v13 + 3);
      *v13 = a2;
      v13[1] = (a1[1].__sig)(a2);
      v27 = &v8[v12];
      v13[2] = v27[3];
      atomic_store(v13, v27 + 3);
    }

    pthread_mutex_unlock(a1);
    return v13[1];
  }

  while (*v7 != a2)
  {
    v7 = v7[2];
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  result = v7[1];
  atomic_fetch_add_explicit(a1[1].__opaque, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  if (!result)
  {
    goto LABEL_6;
  }

  return result;
}

JavaNioChannelsNotYetConnectedException *new_JavaNioChannelsNotYetConnectedException_init()
{
  v0 = [JavaNioChannelsNotYetConnectedException alloc];
  JavaLangIllegalStateException_init(v0, v1);
  return v0;
}

JavaNioBufferOverflowException *new_JavaNioBufferOverflowException_init()
{
  v0 = [JavaNioBufferOverflowException alloc];
  JavaLangRuntimeException_init(v0, v1);
  return v0;
}

JavaNetPortUnreachableException *new_JavaNetPortUnreachableException_initWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaNetPortUnreachableException alloc];
  JavaNetSocketException_initWithNSString_withJavaLangThrowable_(v4, a1, a2);
  return v4;
}

id JavaIoFileOutputStream_initWithJavaIoFile_withBoolean_(uint64_t a1, void *a2, int a3)
{
  JavaIoOutputStream_init();
  v6 = DalvikSystemCloseGuard_get();
  JreStrongAssign((a1 + 40), v6);
  if (!a2)
  {
    v10 = new_JavaLangNullPointerException_initWithNSString_(@"file == null");
    objc_exception_throw(v10);
  }

  if (a3)
  {
    v7 = 521;
  }

  else
  {
    v7 = 1537;
  }

  *(a1 + 32) = v7;
  v8 = LibcoreIoIoBridge_openWithNSString_withInt_([a2 getAbsolutePath], *(a1 + 32));
  JreStrongAssign((a1 + 8), v8);
  *(a1 + 16) = 1;
  v9 = *(a1 + 40);
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  return [v9 openWithNSString:@"close"];
}

id JavaIoFileOutputStream_initWithJavaIoFileDescriptor_(uint64_t a1, void *a2)
{
  JavaIoOutputStream_init(a1, a2);
  v4 = DalvikSystemCloseGuard_get();
  JreStrongAssign((a1 + 40), v4);
  if (!a2)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"fd == null");
    objc_exception_throw(v7);
  }

  JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = 0;
  *(a1 + 32) = 1;
  v5 = JavaNioNioUtils_newFileChannelWithId_withJavaIoFileDescriptor_withInt_(a1, a2, *(a1 + 32));

  return JreStrongAssign((a1 + 24), v5);
}

id JavaIoFileOutputStream_initWithNSString_(uint64_t a1, void *a2)
{
  v3 = new_JavaIoFile_initWithNSString_(a2);

  return JavaIoFileOutputStream_initWithJavaIoFile_withBoolean_(a1, v3, 0);
}

JavaIoFileOutputStream *new_JavaIoFileOutputStream_initWithJavaIoFile_(void *a1)
{
  v2 = [JavaIoFileOutputStream alloc];
  JavaIoFileOutputStream_initWithJavaIoFile_withBoolean_(v2, a1, 0);
  return v2;
}

JavaIoFileOutputStream *new_JavaIoFileOutputStream_initWithJavaIoFileDescriptor_(void *a1)
{
  v2 = [JavaIoFileOutputStream alloc];
  JavaIoFileOutputStream_initWithJavaIoFileDescriptor_(v2, a1);
  return v2;
}

JavaIoFileOutputStream *new_JavaIoFileOutputStream_initWithNSString_(void *a1)
{
  v2 = [JavaIoFileOutputStream alloc];
  JavaIoFileOutputStream_initWithNSString_(v2, a1);
  return v2;
}

id JavaMathMathContext_initWithInt_(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164E08();
  }

  v4 = qword_100557E30;

  return JavaMathMathContext_initWithInt_withJavaMathRoundingModeEnum_(a1, a2, v4);
}

id JavaMathMathContext_initWithInt_withJavaMathRoundingModeEnum_(uint64_t a1, int a2, void *a3)
{
  if (a2 < 0)
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Digits < 0");
    goto LABEL_8;
  }

  if (!a3)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"null RoundingMode");
LABEL_8:
    objc_exception_throw(v5);
  }

  *(a1 + 8) = a2;
  v3 = (a1 + 16);

  return JreStrongAssign(v3, a3);
}

id JavaMathMathContext_initWithNSString_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_44;
  }

  v3 = [a2 toCharArray];
  if (!v3)
  {
    goto LABEL_44;
  }

  v4 = v3;
  if ((v3[2] - 46) < 0xFFFFFFED)
  {
    goto LABEL_47;
  }

  if (!qword_100555218)
  {
    goto LABEL_44;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(qword_100555218 + 8);
    if (v5 >= v6)
    {
      break;
    }

    v7 = *(v4 + 8);
    if (v5 >= v7)
    {
      IOSArray_throwOutOfBoundsWithMsg(v7, v5);
    }

    if (v5 >= v6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, v5);
    }

    if (*(v4 + 12 + 2 * v5) != *(qword_100555218 + 12 + 2 * v5))
    {
      LODWORD(v6) = *(qword_100555218 + 8);
      break;
    }

    ++v5;
    if (!qword_100555218)
    {
      goto LABEL_44;
    }
  }

  if (v6 > v5)
  {
    goto LABEL_47;
  }

  v8 = *(v4 + 8);
  if (v8 <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v5);
  }

  v9 = JavaLangCharacter_digitWithChar_withInt_(*(v4 + 12 + 2 * v5), 10);
  if (v9 == -1)
  {
    goto LABEL_47;
  }

  v10 = v5 + 2;
  *(a1 + 8) = v9 + 10 * *(a1 + 8);
  while (1)
  {
    v11 = *(v4 + 8);
    v12 = v10 - 1;
    if (v10 - 1 < 0 || v12 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v12);
    }

    v13 = JavaLangCharacter_digitWithChar_withInt_(*(v4 + 12 + 2 * v12), 10);
    if (v13 == -1)
    {
      break;
    }

    v14 = v13 + 10 * *(a1 + 8);
    *(a1 + 8) = v14;
    v10 = (v10 + 1);
    if (v14 < 0)
    {
      goto LABEL_47;
    }
  }

  v15 = *(v4 + 8);
  if (v10 - 1 < 0 || v12 >= v15)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, (v10 - 1));
  }

  if (*(v4 + 12 + 2 * v12) != 32)
  {
LABEL_47:
    v21 = new_JavaLangIllegalArgumentException_initWithNSString_(@"bad string format");
    objc_exception_throw(v21);
  }

  if (!qword_100555220)
  {
LABEL_44:
    JreThrowNullPointerException();
  }

  v16 = 0;
  while (1)
  {
    v17 = *(qword_100555220 + 8);
    if (v16 >= v17)
    {
      break;
    }

    if ((v10 & 0x80000000) != 0 || v10 >= *(v4 + 8))
    {
      IOSArray_throwOutOfBoundsWithMsg(*(v4 + 8), v10);
    }

    if (v16 >= v17)
    {
      IOSArray_throwOutOfBoundsWithMsg(v17, v16);
    }

    if (*(v4 + 12 + 2 * v10) != *(qword_100555220 + 12 + 2 * v16))
    {
      LODWORD(v17) = *(qword_100555220 + 8);
      break;
    }

    v10 = (v10 + 1);
    ++v16;
    if (!qword_100555220)
    {
      goto LABEL_44;
    }
  }

  if (v16 < v17)
  {
    goto LABEL_47;
  }

  v18 = NSString_valueOfChars_offset_count_(v4, v10, (*(v4 + 8) - v10));
  v19 = JavaMathRoundingModeEnum_valueOfWithNSString_(v18);

  return JreStrongAssign((a1 + 16), v19);
}

JavaMathMathContext *new_JavaMathMathContext_initWithInt_withJavaMathRoundingModeEnum_(int a1, void *a2)
{
  v4 = [JavaMathMathContext alloc];
  JavaMathMathContext_initWithInt_withJavaMathRoundingModeEnum_(v4, a1, a2);
  return v4;
}

JavaMathMathContext *new_JavaMathMathContext_initWithInt_(int a1)
{
  v2 = [JavaMathMathContext alloc];
  JavaMathMathContext_initWithInt_(v2, a1);
  return v2;
}

id JavaNioFileChannelImpl_initWithId_withJavaIoFileDescriptor_withInt_(uint64_t a1, void *a2, void *a3, int a4)
{
  JavaNioChannelsFileChannel_init();
  v8 = new_JavaUtilTreeSet_initWithJavaUtilComparator_(qword_100555228);
  JreStrongAssignAndConsume((a1 + 48), v8);
  JreStrongAssign((a1 + 32), a3);
  result = objc_storeWeak((a1 + 24), a2);
  *(a1 + 40) = a4;
  return result;
}

uint64_t sub_100227F80(uint64_t result)
{
  if ((*(result + 40) & 3) == 1)
  {
    v1 = new_JavaNioChannelsNonReadableChannelException_init();
    objc_exception_throw(v1);
  }

  return result;
}

uint64_t sub_100227FB8(uint64_t result)
{
  if ((*(result + 40) & 3) == 0)
  {
    v1 = new_JavaNioChannelsNonWritableChannelException_init();
    objc_exception_throw(v1);
  }

  return result;
}

JavaNioFileChannelImpl_FileLockImpl *sub_100228098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  if ((*(a1 + 40) & 3) == 1)
  {
    if (a4)
    {
      v13 = new_JavaNioChannelsNonReadableChannelException_init();
LABEL_27:
      objc_exception_throw(v13);
    }
  }

  else if ((*(a1 + 40) & 3) == 0 && (a4 & 1) == 0)
  {
    v13 = new_JavaNioChannelsNonWritableChannelException_init();
    goto LABEL_27;
  }

  if ((a3 | a2) < 0)
  {
    v25 = JreStrcat("$J$J", a2, a3, a4, a5, a6, a7, a8, @"position=");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v25);
    goto LABEL_27;
  }

  v14 = [JavaNioFileChannelImpl_FileLockImpl alloc];
  JavaNioChannelsFileLock_initWithJavaNioChannelsFileChannel_withLong_withLong_withBoolean_(v14, a1, a2, a3, a4, v15, v16, v17);
  *(&v14->super.shared_ + 1) = 0;
  v18 = v14;
  sub_100229ABC(a1, v18);
  v19 = new_LibcoreIoStructFlock_init();
  v20 = v19;
  if (a4)
  {
    v21 = 1;
  }

  else
  {
    v21 = 3;
  }

  v19->l_type_ = v21;
  v19->l_whence_ = 0;
  v19->l_start_ = a2;
  if ((atomic_load_explicit(&JavaNioFileChannelImpl__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100229FA0();
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 0;
  }

  else
  {
    v22 = a3;
  }

  v20->l_len_ = v22;
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  if (v8)
  {
    v23 = 9;
  }

  else
  {
    v23 = 8;
  }

  if ([LibcoreIoLibcore_os_ fcntlFlockWithJavaIoFileDescriptor:*(a1 + 32) withInt:v23 withLibcoreIoStructFlock:v20] == -1)
  {
    sub_1002285C4(a1, v18);
    return 0;
  }

  return v18;
}

void sub_1002282F8(void *a1)
{
  objc_end_catch();
  objc_begin_catch(a1);
  JUMPOUT(0x100228208);
}

uint64_t sub_1002285C4(void *a1, uint64_t a2)
{
  objc_sync_enter(a1);
  v4 = a1[6];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 removeWithId:a2];

  return objc_sync_exit(a1);
}

JavaNioDirectByteBuffer *sub_100228740(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  [JavaNioDatagramChannelImpl checkOpen]_0(a1);
  if (!a2)
  {
    v15 = new_JavaLangNullPointerException_initWithNSString_(@"mapMode == null");
    goto LABEL_28;
  }

  if (a4 > 0x7FFFFFFF || (a4 | a3) < 0)
  {
    v26 = JreStrcat("$J$J", v8, v9, v10, v11, v12, v13, v14, @"position=");
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v26);
    goto LABEL_28;
  }

  if ((*(a1 + 40) & 3) == 0)
  {
    if ((atomic_load_explicit(JavaNioChannelsFileChannel_MapMode__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001BCFFC();
    }

    if (JavaNioChannelsFileChannel_MapMode_READ_ONLY_ == a2)
    {
      goto LABEL_10;
    }

    v15 = new_JavaNioChannelsNonWritableChannelException_init();
LABEL_28:
    objc_exception_throw(v15);
  }

  if ((*(a1 + 40) & 3) == 1)
  {
    v15 = new_JavaNioChannelsNonReadableChannelException_init();
    goto LABEL_28;
  }

LABEL_10:
  if (a4 + a3 > [a1 size])
  {
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_)
    {
      JreThrowNullPointerException();
    }

    [LibcoreIoLibcore_os_ ftruncateWithJavaIoFileDescriptor:*(a1 + 32) withLong:a4 + a3];
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100184238();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  v16 = [LibcoreIoLibcore_os_ sysconfWithInt:29];
  v17 = a3 / v16 * v16;
  v18 = a3 % v16;
  v23 = JavaNioMemoryBlock_mmapWithJavaIoFileDescriptor_withLong_withLong_withJavaNioChannelsFileChannel_MapMode_(*(a1 + 32), v17, a4 + v18, a2, v19, v20, v21, v22);
  if ((atomic_load_explicit(JavaNioChannelsFileChannel_MapMode__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BCFFC();
  }

  v24 = new_JavaNioDirectByteBuffer_initWithJavaNioMemoryBlock_withInt_withInt_withBoolean_withJavaNioChannelsFileChannel_MapMode_(v23, a4, v18, JavaNioChannelsFileChannel_MapMode_READ_ONLY_ == a2, a2);

  return v24;
}

void sub_100228930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v18 = objc_begin_catch(exception_object);
  if ((atomic_load_explicit(v15, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (*v17)
  {
    v19 = [*v17 fstatWithJavaIoFileDescriptor:*(v14 + *(v16 + 2328))];
    if (v19)
    {
      if (LibcoreIoOsConstants_S_ISREGWithInt_(v19[6]))
      {
        if (v18)
        {
          goto LABEL_11;
        }
      }

      else if (v18)
      {
        if (v18[21] == 22)
        {
          objc_end_catch();
          JUMPOUT(0x100228820);
        }

LABEL_11:
        objc_exception_throw([v18 rethrowAsIOException]);
      }
    }
  }

  JreThrowNullPointerException();
}

void sub_1002289D4(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 == a14)
  {
    v14 = objc_begin_catch(exc_buf);
    if (v14)
    {
      objc_exception_throw([v14 rethrowAsIOException]);
    }

    JreThrowNullPointerException();
  }

  objc_end_catch();
  JUMPOUT(0x100228A10);
}

uint64_t sub_100228C00(void *a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  [a2 checkWritable];
  [JavaNioDatagramChannelImpl checkOpen]_0(a1);
  sub_100227F80(a1);
  if (![a2 hasRemaining])
  {
    return 0;
  }

  [a1 begin];
  explicit = atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire);
  if (a3 == -1)
  {
    if ((explicit & 1) == 0)
    {
      objc_opt_class();
    }

    if (LibcoreIoLibcore_os_)
    {
      v7 = [LibcoreIoLibcore_os_ readWithJavaIoFileDescriptor:a1[4] withJavaNioByteBuffer:a2];
      goto LABEL_13;
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  if ((explicit & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    goto LABEL_20;
  }

  v7 = [LibcoreIoLibcore_os_ preadWithJavaIoFileDescriptor:a1[4] withJavaNioByteBuffer:a2 withLong:a3];
LABEL_13:
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  [a1 endWithBoolean:v8 >= 0];
  if (v8 >= 1)
  {
    [a2 positionWithInt:{objc_msgSend(a2, "position") + v8}];
  }

  return v8;
}

id sub_100228E08(void *a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (![a2 init])
  {
    return 0;
  }

  [a1 begin];
  v4 = [a2 doTransferWithJavaIoFileDescriptor:a1[4]];
  [a1 endWithBoolean:1];
  [a2 didTransferWithInt:v4];
  return v4;
}

void sub_1002294E8(void *exc_buf, int a2)
{
  if (a2 == 2)
  {
    v2 = objc_begin_catch(exc_buf);
    if (!v2)
    {
      JreThrowNullPointerException();
    }

    v3 = v2[21];
    if (v3 != 22 && v3 != 78)
    {
      objc_exception_throw([v2 rethrowAsIOException]);
    }

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exc_buf);
  }

  JUMPOUT(0x100229398);
}

id sub_1002296E4(void *a1, void *a2, uint64_t a3)
{
  [JavaNioDatagramChannelImpl checkOpen]_0(a1);
  sub_100227FB8(a1);
  if (!a2)
  {
    v10 = new_JavaLangNullPointerException_initWithNSString_(@"buffer == null");
    objc_exception_throw(v10);
  }

  if (![a2 hasRemaining])
  {
    return 0;
  }

  [a1 begin];
  explicit = atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire);
  if (a3 != -1)
  {
    if ((explicit & 1) == 0)
    {
      objc_opt_class();
    }

    if (LibcoreIoLibcore_os_)
    {
      v7 = [LibcoreIoLibcore_os_ pwriteWithJavaIoFileDescriptor:a1[4] withJavaNioByteBuffer:a2 withLong:a3];
      goto LABEL_13;
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  if ((explicit & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    goto LABEL_16;
  }

  v7 = [LibcoreIoLibcore_os_ writeWithJavaIoFileDescriptor:a1[4] withJavaNioByteBuffer:a2];
LABEL_13:
  v8 = v7;
  [a1 endWithBoolean:1];
  if (v8 >= 1)
  {
    [a2 positionWithInt:{objc_msgSend(a2, "position") + v8}];
  }

  return v8;
}

uint64_t JavaNioFileChannelImpl_calculateTotalRemainingWithJavaNioByteBufferArray_withInt_withInt_withBoolean_(uint64_t a1, int a2, int a3, int a4)
{
  if ((atomic_load_explicit(&JavaNioFileChannelImpl__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100229FA0();
  }

  v8 = a3 + a2;
  if (a3 + a2 > a2)
  {
    if (a1)
    {
      LODWORD(v9) = 0;
      v10 = a2;
      v11 = v8;
      for (i = a1 + 8 * a2; ; i += 8)
      {
        v13 = *(a1 + 8);
        if (v10 < 0 || v10 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v10);
        }

        v14 = *(i + 24);
        if (!v14)
        {
          break;
        }

        v15 = [v14 remaining];
        if (a4)
        {
          v16 = *(a1 + 8);
          if (v10 < 0 || v10 >= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, v10);
          }

          v17 = *(i + 24);
          if (!v17)
          {
            break;
          }

          [v17 checkWritable];
        }

        v9 = v15 + v9;
        if (v11 == ++v10)
        {
          return v9;
        }
      }
    }

    JreThrowNullPointerException();
  }

  return 0;
}

uint64_t sub_100229ABC(id *a1, void *a2)
{
  objc_sync_enter(a1);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 position];
  v5 = [a2 size];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a1[6];
  if (!v6)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v7 = v5;
  v8 = [a1[6] countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v4 + v7;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (!v12)
        {
          goto LABEL_14;
        }

        if ([*(*(&v15 + 1) + 8 * i) position] > v9)
        {
          goto LABEL_13;
        }

        if ([v12 overlapsWithLong:objc_msgSend(a2 withLong:{"position"), objc_msgSend(a2, "size")}])
        {
          v14 = new_JavaNioChannelsOverlappingFileLockException_init();
          objc_exception_throw(v14);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

LABEL_13:
  [a1[6] addWithId:{a2, v15}];
  return objc_sync_exit(a1);
}

JavaNioFileChannelImpl *new_JavaNioFileChannelImpl_initWithId_withJavaIoFileDescriptor_withInt_(void *a1, void *a2, int a3)
{
  v6 = [JavaNioFileChannelImpl alloc];
  JavaNioFileChannelImpl_initWithId_withJavaIoFileDescriptor_withInt_(v6, a1, a2, a3);
  return v6;
}

JavaIoInterruptedIOException *new_JavaIoInterruptedIOException_init()
{
  v0 = [JavaIoInterruptedIOException alloc];
  JavaIoIOException_init(v0, v1);
  return v0;
}

id JavaLangHexStringParser_initWithInt_withInt_(uint64_t a1, int a2, int a3)
{
  result = JreStrongAssign((a1 + 72), &stru_100484358);
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = ~(-1 << (a2 - 1));
  *(a1 + 24) = ~(-1 << a2);
  *(a1 + 32) = ~a3;
  *(a1 + 40) = ~(-1 << a3);
  return result;
}

double JavaLangHexStringParser_parseDoubleWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangHexStringParser__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10022ABC0();
  }

  v2 = [JavaLangHexStringParser alloc];
  JreStrongAssign(&v2->abandonedNumber_, &stru_100484358);
  *&v2->EXPONENT_WIDTH_ = 0x340000000BLL;
  *&v2->EXPONENT_BASE_ = xmmword_1003154E0;
  *&v2->MIN_EXPONENT_ = xmmword_1003154F0;
  v3 = sub_10022A274(v2, a1);

  return JavaLangDouble_longBitsToDoubleWithLong_(v3);
}

float JavaLangHexStringParser_parseFloatWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangHexStringParser__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10022ABC0();
  }

  v2 = [JavaLangHexStringParser alloc];
  JreStrongAssign(&v2->abandonedNumber_, &stru_100484358);
  *&v2->EXPONENT_WIDTH_ = 0x1700000008;
  *&v2->EXPONENT_BASE_ = xmmword_100315500;
  *&v2->MIN_EXPONENT_ = xmmword_100315510;
  v3 = sub_10022A274(v2, a1);

  return JavaLangFloat_intBitsToFloatWithInt_(v3);
}

uint64_t sub_10022A274(uint64_t a1, uint64_t a2)
{
  if (!qword_100555230)
  {
    goto LABEL_6;
  }

  v3 = [qword_100555230 matcherWithJavaLangCharSequence:a2];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  if (([v3 matches] & 1) == 0)
  {
    v20 = JreStrcat("$$C$", v5, v6, v7, v8, v9, v10, v11, @"Invalid hex ");
    v21 = new_JavaLangNumberFormatException_initWithNSString_(v20);
    objc_exception_throw(v21);
  }

  v12 = [v4 groupWithInt:1];
  v13 = [v4 groupWithInt:2];
  v14 = [v4 groupWithInt:3];
  if (!v12)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  v15 = v14;
  *(a1 + 48) = [v12 isEqual:@"-"];
  sub_10022A3EC(a1, v15);
  sub_10022A4B4(a1, v13);
  v16 = *(a1 + 12);
  v17 = *(a1 + 48) << (*(a1 + 8) + v16);
  v18 = *(a1 + 56) << v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v18;
  return v18 | *(a1 + 64) | v17;
}

uint64_t sub_10022A3EC(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v2 = a2;
  v4 = [a2 charAtWithInt:0];
  if (!JavaLangCharacter_isDigitWithChar_(v4))
  {
    v2 = [v2 substring:1];
  }

  if (v4 == 45)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  *(a1 + 56) = JavaLangLong_parseLongWithNSString_(v2, v5, v6, v7, v8, v9, v10, v11) * v12;
  return sub_10022A688(a1, *(a1 + 16));
}

id sub_10022A4B4(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_21;
  }

  v3 = [a2 split:@"\\."];
  if (!v3)
  {
    goto LABEL_21;
  }

  v10 = v3;
  v11 = v3[2];
  if (v11 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, 0);
  }

  v12 = *(v10 + 3);
  v13 = v11 <= 1 ? &stru_100484358 : *(v10 + 4);
  v14 = sub_10022A95C(*(v10 + 3), v13, v4, v5, v6, v7, v8, v9);
  if (!v14)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v15 = v14;
  result = [(__CFString *)v14 isEqual:@"0"];
  if (result)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  else
  {
    v17 = sub_10022A9D0(v12, v13);
    result = sub_10022A688(a1, v17);
    v18 = *(a1 + 56);
    v19 = *(a1 + 24);
    if (v18 >= v19)
    {
      *(a1 + 56) = v19;
      *(a1 + 64) = 0;
    }

    else if (v18 <= *(a1 + 32))
    {
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
    }

    else
    {
      if ([(__CFString *)v15 length]>= 16)
      {
        JreStrongAssign((a1 + 72), [(__CFString *)v15 substring:15]);
        v15 = [(__CFString *)v15 substring:0 endIndex:15];
      }

      *(a1 + 64) = JavaLangLong_parseLongWithNSString_withInt_(v15, 16, v20, v21, v22, v23, v24, v25);
      if (*(a1 + 56) < 1)
      {

        return sub_10022A740(a1);
      }

      else
      {
        sub_10022A798(a1, *(a1 + 12) + 2);
        result = sub_10022A884(a1);
        *(a1 + 64) &= *(a1 + 40);
      }
    }
  }

  return result;
}

uint64_t sub_10022A688(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = v4 + a2;
  v6 = JavaLangLong_signumWithLong_(v4);
  result = JavaLangLong_signumWithLong_(a2);
  if (result * v6 >= 1)
  {
    result = JavaLangLong_signumWithLong_(v5);
    if (result * v6 < 0)
    {
      v5 = (v6 << 63) - v6;
    }
  }

  *(a1 + 56) = v5;
  return result;
}

unint64_t sub_10022A740(uint64_t a1)
{
  v2 = *(a1 + 12) + *(a1 + 56);
  *(a1 + 56) = 0;
  sub_10022A798(a1, v2 + 1);
  result = sub_10022A884(a1);
  *(a1 + 64) &= *(a1 + 40);
  return result;
}

uint64_t sub_10022A798(uint64_t a1, int a2)
{
  result = JavaLangLong_numberOfLeadingZerosWithLong_(*(a1 + 64));
  v11 = 64 - result - a2;
  if (64 - result <= a2)
  {
    v12 = *(a1 + 64) << (a2 - (64 - result));
  }

  else
  {
    result = JreStrAppendStrong((a1 + 72), "J", v5, v6, v7, v8, v9, v10, *(a1 + 64) & ~(-1 << v11));
    v12 = *(a1 + 64) >> v11;
  }

  *(a1 + 64) = v12;
  return result;
}

unint64_t sub_10022A884(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2 || (v3 = [v2 replaceAll:@"0+" withReplacement:&stru_100484358]) == 0)
  {
    JreThrowNullPointerException();
  }

  v4 = [v3 length];
  v5 = *(a1 + 64);
  result = v5 >> 1;
  *(a1 + 64) = v5 >> 1;
  if (v5)
  {
    v7 = v5 & 2;
    if (v4 > 0 || v7 != 0)
    {
      v9 = 64 - JavaLangLong_numberOfLeadingZerosWithLong_(result);
      v10 = *(a1 + 64) + 1;
      *(a1 + 64) = v10;
      result = JavaLangLong_numberOfLeadingZerosWithLong_(v10);
      if (v9 >= *(a1 + 12) && 64 - result > v9)
      {

        return sub_10022A688(a1, 1);
      }
    }
  }

  return result;
}

const __CFString *sub_10022A95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = [(__CFString *)JreStrcat("$$" replaceFirst:a2 withReplacement:a3, a4, a5, a6, a7, a8, a1), "replaceFirst:withReplacement:", @"^0+", &stru_100484358];
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v9 = v8;
  if ([v8 length])
  {
    return v9;
  }

  else
  {
    return @"0";
  }
}

uint64_t sub_10022A9D0(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v3 = [a1 replaceFirst:@"^0+" withReplacement:&stru_100484358];
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = v3;
  if ([v3 length])
  {
    v5 = [v4 substring:0 endIndex:1];
    v6 = 4 * [v4 length];
    v13 = JavaLangLong_parseLongWithNSString_withInt_(v5, 16, v7, v8, v9, v10, v11, v12);
    return v6 - JavaLangLong_numberOfLeadingZerosWithLong_(v13) + 59;
  }

  if (!a2)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  if ([a2 length] < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      if ([a2 charAtWithInt:v15] != 48)
      {
        break;
      }

      v15 = (v15 + 1);
    }

    while (v15 < [a2 length]);
  }

  if (v15 == [a2 length])
  {
    return 0;
  }

  v16 = [a2 substring:v15 endIndex:(v15 + 1)];
  v23 = JavaLangLong_parseLongWithNSString_withInt_(v16, 16, v17, v18, v19, v20, v21, v22);
  return 4 * ~v15 - JavaLangLong_numberOfLeadingZerosWithLong_(v23) + 63;
}

uint64_t LibcoreIoDeleteOnExit_getInstance()
{
  if (qword_100555248 != -1)
  {
    sub_10022AFF8();
  }

  v0 = qword_100555240;
  objc_sync_enter(qword_100555240);
  v1 = qword_100555238;
  if (!qword_100555238)
  {
    v2 = [LibcoreIoDeleteOnExit alloc];
    JavaLangThread_init(v2);
    v3 = new_JavaUtilArrayList_init();
    JreStrongAssignAndConsume(&v2->files_, v3);
    JreStrongAssignAndConsume(&qword_100555238, v2);
    Runtime = JavaLangRuntime_getRuntime();
    if (!Runtime)
    {
      JreThrowNullPointerException();
    }

    [Runtime addShutdownHookWithJavaLangThread:qword_100555238];
    v1 = qword_100555238;
  }

  objc_sync_exit(v0);
  return v1;
}

atomic_ullong *sub_10022B0A8(uint64_t a1, atomic_ullong *a2)
{
  do
  {
    while (1)
    {
      v4 = atomic_load((a1 + 24));
      if (v4)
      {
        break;
      }

      v5 = [JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node alloc];
      if (!qword_100555250)
      {
        goto LABEL_9;
      }

      if ([qword_100555250 compareAndSwapObjectWithId:a1 withLong:qword_100555260 withId:0 withId:v5])
      {
        v6 = atomic_load((a1 + 16));
        JreVolatileStrongAssign((a1 + 24), v6);
      }
    }

    if (a2)
    {
      JreVolatileStrongAssign(a2 + 2, v4);
      if (qword_100555250)
      {
        continue;
      }
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  while (![qword_100555250 compareAndSwapObjectWithId:a1 withLong:qword_100555268 withId:v4 withId:a2]);
  JreVolatileStrongAssign(v4 + 3, a2);
  return v4;
}

JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node *sub_10022B1AC(uint64_t a1, void *a2)
{
  v4 = JavaLangThread_currentThread();
  v5 = new_JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_initWithJavaLangThread_withJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_(v4, a2);
  v6 = v5;
  v7 = atomic_load((a1 + 24));
  if (!v7)
  {
    goto LABEL_5;
  }

  JreVolatileStrongAssign(&v5->prev_, v7);
  if (!qword_100555250)
  {
    JreThrowNullPointerException();
  }

  if ([qword_100555250 compareAndSwapObjectWithId:a1 withLong:qword_100555268 withId:v7 withId:v6])
  {
    JreVolatileStrongAssign(v7 + 3, v6);
  }

  else
  {
LABEL_5:
    sub_10022B0A8(a1, v6);
  }

  return v6;
}

id sub_10022B260(uint64_t a1, atomic_ullong *a2)
{
  JreVolatileStrongAssign((a1 + 16), a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JreVolatileStrongAssign(a2 + 4, 0);

  return JreVolatileStrongAssign(a2 + 2, 0);
}

unint64_t *sub_10022B2C4(unint64_t *result, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v3 = result;
  v4 = atomic_load((a2 + 8));
  if ((v4 & 0x80000000) != 0)
  {
    result = sub_10022CD94(a2, v4, 0);
  }

  v5 = atomic_load((a2 + 24));
  if (v5)
  {
    v6 = atomic_load((v5 + 8));
    if (v6 < 1)
    {
      goto LABEL_19;
    }
  }

  v7 = atomic_load(v3 + 3);
  if (v7 && v7 != a2)
  {
    v5 = 0;
    do
    {
      v9 = atomic_load((v7 + 8));
      if (v9 < 1)
      {
        v5 = v7;
      }

      v7 = atomic_load((v7 + 16));
      if (v7)
      {
        v10 = v7 == a2;
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
    if (v5)
    {
LABEL_19:
      v11 = atomic_load((v5 + 32));

      return JavaUtilConcurrentLocksLockSupport_unparkWithJavaLangThread_(v11);
    }
  }

  return result;
}

unint64_t *sub_10022B394(unint64_t *result)
{
  v1 = result;
  do
  {
    while (1)
    {
      v2 = atomic_load(v1 + 2);
      if (!v2)
      {
        break;
      }

      v3 = atomic_load(v1 + 3);
      if (v2 == v3)
      {
        break;
      }

      v4 = atomic_load((v2 + 8));
      if (v4)
      {
        if (v4 != -1)
        {
          break;
        }

        result = sub_10022CD94(v2, 0xFFFFFFFFLL, 0);
        if (result)
        {
          result = sub_10022B2C4(v1, v2);
          break;
        }
      }

      else
      {
        result = sub_10022CD94(v2, 0, 4294967293);
        if (result)
        {
          break;
        }
      }
    }

    v5 = atomic_load(v1 + 2);
  }

  while (v2 != v5);
  return result;
}

unint64_t *sub_10022B454(unint64_t *a1, uint64_t a2, int a3)
{
  v6 = atomic_load(a1 + 2);
  result = sub_10022B260(a1, a2);
  if (a3 > 0 || !v6 || (v8 = atomic_load((v6 + 8)), (v8 & 0x80000000) != 0))
  {
    if (!a2)
    {
      JreThrowNullPointerException();
    }

    v9 = atomic_load((a2 + 24));
    if (!v9 || *(v9 + 40) == JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_SHARED_)
    {

      return sub_10022B394(a1);
    }
  }

  return result;
}

unint64_t *sub_10022B504(unint64_t *result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  JreVolatileStrongAssign((a2 + 32), 0);
  v4 = atomic_load((a2 + 16));
  if (!v4)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v5 = atomic_load((v4 + 8));
    if (v5 < 1)
    {
      break;
    }

    v4 = atomic_load((v4 + 16));
    JreVolatileStrongAssign((a2 + 16), v4);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v6 = atomic_load((v4 + 24));
  atomic_store(1u, (a2 + 8));
  v7 = atomic_load(v3 + 3);
  if (v7 != a2)
  {
    goto LABEL_12;
  }

  if (!qword_100555250)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  if ([qword_100555250 compareAndSwapObjectWithId:v3 withLong:qword_100555268 withId:a2 withId:v4])
  {

    return sub_10022CE20(v4, v6, 0);
  }

LABEL_12:
  v8 = atomic_load(v3 + 2);
  if (v4 != v8 && ((v9 = atomic_load((v4 + 8)), v9 == -1) || v9 <= 0 && sub_10022CD94(v4, v9, 0xFFFFFFFFLL)) && (v10 = atomic_load((v4 + 32))) != 0)
  {
    v11 = atomic_load((a2 + 24));
    if (v11)
    {
      v12 = atomic_load((v11 + 8));
      if (v12 <= 0)
      {
        sub_10022CE20(v4, v6, v11);
      }
    }
  }

  else
  {
    sub_10022B2C4(v3, a2);
  }

  return JreVolatileStrongAssign((a2 + 24), a2);
}

BOOL sub_10022B6B0(uint64_t a1, atomic_ullong *a2)
{
  v3 = a1;
  if (atomic_load_explicit(JavaUtilConcurrentLocksAbstractQueuedSynchronizer__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_10022DE78();
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  v4 = atomic_load((v3 + 8));
  if (v4 == -1)
  {
    return v4 == -1;
  }

  if (v4 < 1)
  {
    sub_10022CD94(v3, v4, 0xFFFFFFFFLL);
    return v4 == -1;
  }

  if (!a2)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  do
  {
    v3 = atomic_load((v3 + 16));
    JreVolatileStrongAssign(a2 + 2, v3);
    if (!v3)
    {
      goto LABEL_12;
    }

    v5 = atomic_load((v3 + 8));
  }

  while (v5 > 0);
  JreVolatileStrongAssign((v3 + 24), a2);
  return v4 == -1;
}

uint64_t sub_10022B7A0(unint64_t *a1, atomic_ullong *a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_9;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_10022D1B4(a2);
    v8 = atomic_load(a1 + 2);
    if (v7 == v8)
    {
      if ([a1 tryAcquireWithInt:a3])
      {
        break;
      }
    }

    if (sub_10022B6B0(v7, a2))
    {
      JavaUtilConcurrentLocksLockSupport_parkWithId_(a1);
      v6 |= JavaLangThread_interrupted();
    }
  }

  sub_10022B260(a1, a2);
  if (!v7)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  JreVolatileStrongAssign((v7 + 24), 0);
  return v6 & 1;
}

id sub_10022B89C(unint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10022DE84();
  }

  v4 = sub_10022B1AC(a1, JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_EXCLUSIVE_);
  if (!v4)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v5 = sub_10022D1B4(v4);
    v6 = atomic_load(a1 + 2);
    if (v5 == v6)
    {
      if ([a1 tryAcquireWithInt:a2])
      {
        break;
      }
    }

    if (sub_10022B6B0(v5, v4))
    {
      JavaUtilConcurrentLocksLockSupport_parkWithId_(a1);
      if (JavaLangThread_interrupted())
      {
        v7 = new_JavaLangInterruptedException_init();
        objc_exception_throw(v7);
      }
    }
  }

  sub_10022B260(a1, v4);
  if (!v5)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  return JreVolatileStrongAssign((v5 + 24), 0);
}

void sub_10022B988(void *a1)
{
  objc_begin_catch(a1);
  sub_10022B504(v1, v2);
  objc_exception_rethrow();
}

uint64_t sub_10022B9C4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = JavaLangSystem_nanoTime();
  if ((atomic_load_explicit(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10022DE84();
  }

  v7 = sub_10022B1AC(a1, JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_EXCLUSIVE_);
  if (!v7)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v8 = sub_10022D1B4(v7);
    v9 = atomic_load(a1 + 2);
    if (v8 == v9)
    {
      if ([a1 tryAcquireWithInt:a2])
      {
        break;
      }
    }

    if (a3 < 1)
    {
      sub_10022B504(a1, v7);
      return 0;
    }

    v10 = sub_10022B6B0(v8, v7);
    if (a3 > 0x3E8 && v10)
    {
      JavaUtilConcurrentLocksLockSupport_parkNanosWithId_withLong_(a1, a3);
    }

    v12 = JavaLangSystem_nanoTime();
    a3 = a3 + v6 - v12;
    v6 = v12;
    if (JavaLangThread_interrupted())
    {
      v13 = new_JavaLangInterruptedException_init();
      objc_exception_throw(v13);
    }
  }

  sub_10022B260(a1, v7);
  if (!v8)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  JreVolatileStrongAssign((v8 + 24), 0);
  return 1;
}

id sub_10022BB58(unint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10022DE84();
  }

  v4 = sub_10022B1AC(a1, JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_SHARED_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = 0;
  while (1)
  {
    v6 = sub_10022D1B4(v4);
    v7 = atomic_load(a1 + 2);
    if (v6 == v7)
    {
      v8 = [a1 tryAcquireSharedWithInt:a2];
      if ((v8 & 0x80000000) == 0)
      {
        break;
      }
    }

    if (sub_10022B6B0(v6, v4))
    {
      JavaUtilConcurrentLocksLockSupport_parkWithId_(a1);
      v5 |= JavaLangThread_interrupted();
    }
  }

  sub_10022B454(a1, v4, v8);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  result = JreVolatileStrongAssign((v6 + 24), 0);
  if (v5)
  {
    return JavaUtilConcurrentLocksAbstractQueuedSynchronizer_selfInterrupt();
  }

  return result;
}

void sub_10022BC50(void *a1)
{
  objc_begin_catch(a1);
  sub_10022B504(v1, v2);
  objc_exception_rethrow();
}

id sub_10022BC94(unint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10022DE84();
  }

  v4 = sub_10022B1AC(a1, JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_SHARED_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  while (1)
  {
    v5 = sub_10022D1B4(v4);
    v6 = atomic_load(a1 + 2);
    if (v5 == v6)
    {
      v7 = [a1 tryAcquireSharedWithInt:a2];
      if ((v7 & 0x80000000) == 0)
      {
        break;
      }
    }

    if (sub_10022B6B0(v5, v4))
    {
      JavaUtilConcurrentLocksLockSupport_parkWithId_(a1);
      if (JavaLangThread_interrupted())
      {
        v8 = new_JavaLangInterruptedException_init();
        objc_exception_throw(v8);
      }
    }
  }

  sub_10022B454(a1, v4, v7);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  return JreVolatileStrongAssign((v5 + 24), 0);
}

void sub_10022BD8C(void *a1)
{
  objc_begin_catch(a1);
  sub_10022B504(v1, v2);
  objc_exception_rethrow();
}

uint64_t sub_10022BDD0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = JavaLangSystem_nanoTime();
  if ((atomic_load_explicit(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10022DE84();
  }

  v7 = sub_10022B1AC(a1, JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_SHARED_);
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  while (1)
  {
    v8 = sub_10022D1B4(v7);
    v9 = atomic_load(a1 + 2);
    if (v8 == v9)
    {
      v10 = [a1 tryAcquireSharedWithInt:a2];
      if ((v10 & 0x80000000) == 0)
      {
        break;
      }
    }

    if (a3 < 1)
    {
      sub_10022B504(a1, v7);
      return 0;
    }

    v11 = sub_10022B6B0(v8, v7);
    if (a3 > 0x3E8 && v11)
    {
      JavaUtilConcurrentLocksLockSupport_parkNanosWithId_withLong_(a1, a3);
    }

    v13 = JavaLangSystem_nanoTime();
    a3 = a3 + v6 - v13;
    v6 = v13;
    if (JavaLangThread_interrupted())
    {
      v14 = new_JavaLangInterruptedException_init();
      objc_exception_throw(v14);
    }
  }

  sub_10022B454(a1, v7, v10);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  JreVolatileStrongAssign((v8 + 24), 0);
  return 1;
}

id sub_10022C164(unint64_t *a1, uint64_t a2)
{
  v3 = [a1 tryReleaseWithInt:a2];
  if (v3)
  {
    v4 = atomic_load(a1 + 2);
    if (v4)
    {
      if (atomic_load((v4 + 8)))
      {
        sub_10022B2C4(a1, v4);
      }
    }
  }

  return v3;
}

BOOL sub_10022C828(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v2 = atomic_load((a2 + 8));
  if (v2 == -2)
  {
    return 0;
  }

  if (!atomic_load((a2 + 16)))
  {
    return 0;
  }

  if (atomic_load((a2 + 24)))
  {
    return 1;
  }

  for (i = (a1 + 24); ; i = (v7 + 16))
  {
    v7 = atomic_load(i);
    result = v7 == a2;
    if (!v7 || v7 == a2)
    {
      break;
    }
  }

  return result;
}

id sub_10022C8DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022CD94(a2, 4294967294, 0);
  if (v4)
  {
    v5 = sub_10022B0A8(a1, a2);
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = atomic_load(v5 + 2);
    if (v6 > 0 || (sub_10022CD94(v5, v6, 0xFFFFFFFFLL) & 1) == 0)
    {
      if (a2)
      {
        v7 = atomic_load((a2 + 32));
        JavaUtilConcurrentLocksLockSupport_unparkWithJavaLangThread_(v7);
        return v4;
      }

LABEL_8:
      JreThrowNullPointerException();
    }
  }

  return v4;
}

id sub_10022C96C(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_10022CD94(a2, 4294967294, 0);
  if (v4)
  {
    sub_10022B0A8(a1, a2);
  }

  else
  {
    while (!sub_10022C828(a1, a2))
    {
      JavaLangThread_yield();
    }
  }

  return v4;
}

uint64_t sub_10022C9F0(uint64_t a1)
{
  v1 = atomic_load((a1 + 32));
  if ((sub_10022C164(a1, v1) & 1) == 0)
  {
    v3 = new_JavaLangIllegalMonitorStateException_init();
    objc_exception_throw(v3);
  }

  return v1;
}

BOOL sub_10022CA80(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v3);
  }

  return *(a2 + 8) == a1;
}

id sub_10022CD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksAbstractQueuedSynchronizer__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10022DE78();
  }

  v6 = qword_100555250;
  if (!qword_100555250)
  {
    JreThrowNullPointerException();
  }

  v7 = qword_100555270;

  return [v6 compareAndSwapIntWithId:a1 withLong:v7 withInt:a2 withInt:a3];
}

id sub_10022CE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksAbstractQueuedSynchronizer__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10022DE78();
  }

  v6 = qword_100555250;
  if (!qword_100555250)
  {
    JreThrowNullPointerException();
  }

  v7 = qword_100555278;

  return [v6 compareAndSwapObjectWithId:a1 withLong:v7 withId:a2 withId:a3];
}

id JavaUtilConcurrentLocksAbstractQueuedSynchronizer_selfInterrupt()
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksAbstractQueuedSynchronizer__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10022DE78();
  }

  v0 = JavaLangThread_currentThread();
  if (!v0)
  {
    JreThrowNullPointerException();
  }

  return [(JavaLangThread *)v0 interrupt];
}

uint64_t JavaUtilConcurrentLocksAbstractQueuedSynchronizer_class_()
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksAbstractQueuedSynchronizer__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10022DE78();
  }

  if (qword_100555288 != -1)
  {
    sub_10022DE90();
  }

  return qword_100555280;
}

unint64_t sub_10022D1B4(uint64_t a1)
{
  result = atomic_load((a1 + 16));
  if (!result)
  {
    v2 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v2);
  }

  return result;
}

JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node *new_JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_initWithJavaLangThread_withJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_(void *a1, void *a2)
{
  v4 = [JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node alloc];
  JreStrongAssign(&v4->nextWaiter_, a2);
  JreVolatileStrongAssign(&v4->thread_, a1);
  return v4;
}

uint64_t JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_class_()
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10022DE84();
  }

  if (qword_100555298 != -1)
  {
    sub_10022DEA4();
  }

  return qword_100555290;
}

JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node *sub_10022D494(id *a1)
{
  v2 = a1 + 3;
  v3 = a1[3];
  if (v3)
  {
    v4 = atomic_load(v3 + 2);
    if (v4 != -2)
    {
      sub_10022D64C(a1);
      v3 = a1[3];
    }
  }

  v5 = JavaLangThread_currentThread();
  v6 = [JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node alloc];
  atomic_store(0xFFFFFFFE, &v6->waitStatus_);
  JreVolatileStrongAssign(&v6->thread_, v5);
  v7 = v6;
  if (v3)
  {
    v8 = (v3 + 40);
  }

  else
  {
    v8 = a1 + 2;
  }

  JreStrongAssign(v8, v7);
  JreStrongAssign(v2, v7);
  return v7;
}

id sub_10022D558(uint64_t a1, uint64_t a2)
{
  do
  {
    if (!a2)
    {
      JreThrowNullPointerException();
    }

    if (!JreStrongAssign((a1 + 16), *(a2 + 40)))
    {
      JreStrongAssign((a1 + 24), 0);
    }

    JreStrongAssign((a2 + 40), 0);
    result = sub_10022C8DC(*(a1 + 8), a2);
    if (result)
    {
      break;
    }

    a2 = *(a1 + 16);
  }

  while (a2);
  return result;
}

id sub_10022D5D8(uint64_t a1, uint64_t a2)
{
  v4 = JreStrongAssign((a1 + 16), 0);
  JreStrongAssign((a1 + 24), v4);
  do
  {
    if (!a2)
    {
      JreThrowNullPointerException();
    }

    v5 = *(a2 + 40);
    JreStrongAssign((a2 + 40), 0);
    result = sub_10022C8DC(*(a1 + 8), a2);
    a2 = v5;
  }

  while (v5);
  return result;
}

id *sub_10022D64C(id *result)
{
  v2 = result + 2;
  v1 = result[2];
  if (!v1)
  {
    return result;
  }

  v3 = result;
  v4 = 0;
  while (1)
  {
    v5 = v1;
    result = v1 + 5;
    v1 = v1[5];
    v6 = atomic_load(result - 8);
    if (v6 != -2)
    {
      break;
    }

LABEL_9:
    v4 = v5;
    if (!v1)
    {
      return result;
    }
  }

  JreStrongAssign(result, 0);
  if (v4)
  {
    v7 = v4 + 5;
  }

  else
  {
    v7 = v2;
  }

  result = JreStrongAssign(v7, v1);
  if (v1)
  {
    v5 = v4;
    goto LABEL_9;
  }

  return JreStrongAssign(v3 + 3, v4);
}

id sub_10022D8AC(id result)
{
  if (result == 1)
  {

    return JavaUtilConcurrentLocksAbstractQueuedSynchronizer_selfInterrupt();
  }

  else if (result == -1)
  {
    v2 = new_JavaLangInterruptedException_init();
    objc_exception_throw(v2);
  }

  return result;
}

JavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject *new_JavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject_initWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_(void *a1)
{
  v2 = [JavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject alloc];
  JreStrongAssign(&v2->this$0_, a1);
  return v2;
}

JavaUtilIllegalFormatWidthException *new_JavaUtilIllegalFormatWidthException_initWithInt_(unsigned int a1)
{
  v2 = [JavaUtilIllegalFormatWidthException alloc];
  JavaUtilIllegalFormatException_init(v2, v3);
  *(&v2->super.super.super.super.super.rawFrameCount + 1) = a1;
  return v2;
}

OrgXmlSaxInputSource *new_OrgXmlSaxInputSource_initWithNSString_(uint64_t a1)
{
  v2 = [OrgXmlSaxInputSource alloc];
  [(OrgXmlSaxInputSource *)v2 setSystemIdWithNSString:a1];
  return v2;
}

OrgXmlSaxInputSource *new_OrgXmlSaxInputSource_initWithJavaIoInputStream_(uint64_t a1)
{
  v2 = [OrgXmlSaxInputSource alloc];
  [(OrgXmlSaxInputSource *)v2 setByteStreamWithJavaIoInputStream:a1];
  return v2;
}

JavaNetBindException *new_JavaNetBindException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaNetBindException alloc];
  JavaNetSocketException_initWithNSString_(v2, a1);
  return v2;
}

JavaNetBindException *new_JavaNetBindException_initWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaNetBindException alloc];
  JavaNetSocketException_initWithNSString_withJavaLangThrowable_(v4, a1, a2);
  return v4;
}

id JavaNioIntArrayBuffer_initWithIntArray_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaNioIntBuffer_initWithInt_withLong_(a1, a2[2], 0, a4, a5, a6, a7, a8);
  result = JreStrongAssign((a1 + 40), a2);
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  return result;
}

JavaNioIntArrayBuffer *sub_10022F1A0(uint64_t a1, int a2, BOOL a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_10022F3C8([a1 capacity], *(a1 + 40), *(a1 + 48), a3);
  v5->super.super.limit_ = *(a1 + 12);
  v5->super.super.position_ = [a1 position];
  v5->super.super.mark_ = a2;
  return v5;
}

JavaNioIntArrayBuffer *sub_10022F3C8(uint64_t a1, void *a2, int a3, BOOL a4)
{
  v8 = [JavaNioIntArrayBuffer alloc];
  JavaNioIntBuffer_initWithInt_withLong_(v8, a1, 0, v9, v10, v11, v12, v13);
  JreStrongAssign(&v8->backingArray_, a2);
  v8->arrayOffset_ = a3;
  v8->isReadOnly_ = a4;
  return v8;
}

JavaNioIntArrayBuffer *new_JavaNioIntArrayBuffer_initWithIntArray_(unsigned int *a1)
{
  v2 = [JavaNioIntArrayBuffer alloc];
  JavaNioIntArrayBuffer_initWithIntArray_(v2, a1, v3, v4, v5, v6, v7, v8);
  return v2;
}

ComGoogleJ2objcNetIosHttpHandler *new_ComGoogleJ2objcNetIosHttpHandler_init()
{
  v0 = [ComGoogleJ2objcNetIosHttpHandler alloc];
  JavaNetURLStreamHandler_init(v0, v1);
  return v0;
}

uint64_t JavaUtilEnumeration_class_()
{
  if (qword_1005552A8 != -1)
  {
    sub_10022FAE8();
  }

  return qword_1005552A0;
}

id sub_10022FD08(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = TypeToClass([*(a2 + 32) type]);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = a4;
  }

  if (([*(a2 + 32) modifiers] & 8) == 0)
  {
    if (!a3)
    {
      JreThrowNullPointerException();
    }

    if (([*(a2 + 24) isInstance:a3] & 1) == 0)
    {
LABEL_15:
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:@"field type mismatch"]);
    }

    v10 = (a3 + ivar_getOffset(*(a2 + 16)));
    goto LABEL_10;
  }

  v11 = [*(a2 + 32) staticRef];
  if (v11)
  {
    v10 = v11;
LABEL_10:
    [v9 __readRawValue:a1 fromAddress:v10];
    goto LABEL_11;
  }

  *a1 = *[*(a2 + 32) getConstantValue];
LABEL_11:
  result = [v9 __convertRawValue:a1 toType:a4];
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

id sub_10023016C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = TypeToClass([*(a2 + 32) type]);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = a4;
  }

  if (([a4 __convertRawValue:a1 toType:v9] & 1) == 0)
  {
    v11 = [JavaLangIllegalArgumentException alloc];
    v12 = @"field type mismatch";
    goto LABEL_18;
  }

  if (([*(a2 + 32) modifiers] & 8) == 0)
  {
    if (!a3)
    {
      JreThrowNullPointerException();
    }

    if ([*(a2 + 32) modifiers] & 0x10) == 0 || (*(a2 + 8))
    {
      v10 = (a3 + ivar_getOffset(*(a2 + 16)));
      goto LABEL_13;
    }

    v11 = [JavaLangIllegalAccessException alloc];
    v12 = @"Cannot set final field";
LABEL_18:
    objc_exception_throw([(JavaLangIllegalArgumentException *)v11 initWithNSString:v12]);
  }

  if (([*(a2 + 32) modifiers] & 0x10) != 0 && (*(a2 + 8) & 1) == 0)
  {
    v11 = [JavaLangIllegalAccessException alloc];
    v12 = @"Cannot set static final field";
    goto LABEL_18;
  }

  v10 = [*(a2 + 32) staticRef];
LABEL_13:

  return [v9 __writeRawValue:a1 toAddress:v10];
}

uint64_t JavaLangReflectField_class_()
{
  if (qword_1005552B8 != -1)
  {
    sub_100230C68();
  }

  return qword_1005552B0;
}

uint64_t JavaUtilLoggingLogger_initWithNSString_withNSString_(uint64_t a1, void *a2, void *a3)
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  if (!JavaUtilLoggingLevel_INFO_)
  {
    JreThrowNullPointerException();
  }

  atomic_store([JavaUtilLoggingLevel_INFO_ intValue], (a1 + 24));
  v6 = new_JavaUtilConcurrentCopyOnWriteArrayList_init();
  JreStrongAssignAndConsume((a1 + 72), v6);
  *(a1 + 80) = 257;
  v7 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 32), v7);
  JreVolatileStrongAssign((a1 + 40), a2);

  return sub_100230EF8(a1, a3);
}

JavaUtilPropertyResourceBundle *JavaUtilLoggingLogger_loadResourceBundleWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaUtilLoggingLogger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001A47D8();
  }

  v2 = JavaLangThread_currentThread();
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  SystemClassLoader = [(JavaLangThread *)v2 getContextClassLoader];
  if (!SystemClassLoader)
  {
    SystemClassLoader = JavaLangClassLoader_getSystemClassLoader();
    if (!SystemClassLoader)
    {
      v14 = JreStrcat("$$C", v4, v5, v6, v7, v8, v9, v10, @"Failed to load the specified resource bundle ");
      v15 = new_JavaUtilMissingResourceException_initWithNSString_withNSString_withNSString_(v14, a1, 0);
      objc_exception_throw(v15);
    }
  }

  v11 = SystemClassLoader;
  Default = JavaUtilLocale_getDefault();
  return JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_withJavaLangClassLoader_(a1, Default, v11);
}

JavaUtilLoggingLogger *JavaUtilLoggingLogger_getAnonymousLoggerWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaUtilLoggingLogger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001A47D8();
  }

  v2 = [JavaUtilLoggingLogger alloc];
  JavaUtilLoggingLogger_initWithNSString_withNSString_(v2, 0, a1);
  v3 = v2;
  v3->isNamed_ = 0;
  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  [LogManager setParentWithJavaUtilLoggingLogger:v3 withJavaUtilLoggingLogger:{objc_msgSend(LogManager, "getLoggerWithNSString:", &stru_100484358)}];
  return v3;
}

uint64_t sub_100230EF8(uint64_t a1, void *a2)
{
  objc_sync_enter(a1);
  v4 = atomic_load((a1 + 56));
  if (v4)
  {
    if (([v4 isEqual:a2] & 1) == 0)
    {
      v12 = JreStrcat("$$$$C", v5, v6, v7, v8, v9, v10, v11, @"Resource bundle name '");
      v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
      objc_exception_throw(v13);
    }
  }

  else if (a2)
  {
    ResourceBundleWithNSString = JavaUtilLoggingLogger_loadResourceBundleWithNSString_(a2);
    JreVolatileStrongAssign((a1 + 64), ResourceBundleWithNSString);
    JreVolatileStrongAssign((a1 + 56), a2);
  }

  return objc_sync_exit(a1);
}

id JavaUtilLoggingLogger_getLoggerWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaUtilLoggingLogger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001A47D8();
  }

  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  return [LogManager getOrCreateWithNSString:a1 withNSString:0];
}

id JavaUtilLoggingLogger_getLoggerWithNSString_withNSString_(uint64_t a1, void *a2)
{
  if ((atomic_load_explicit(JavaUtilLoggingLogger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001A47D8();
  }

  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager || (v5 = [LogManager getOrCreateWithNSString:a1 withNSString:a2]) == 0)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  sub_100230EF8(v5, a2);
  return v6;
}

BOOL sub_100231628(uint64_t a1, void *a2)
{
  v3 = atomic_load((a1 + 24));
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  if (!JavaUtilLoggingLevel_OFF_)
  {
    goto LABEL_8;
  }

  if (v3 == [JavaUtilLoggingLevel_OFF_ intValue])
  {
    return 0;
  }

  if (!a2)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  return [a2 intValue] >= v3;
}

id sub_1002316B4(id result, void *a2)
{
  if (result)
  {
    while (1)
    {
      v3 = atomic_load(result + 7);
      if (v3)
      {
        break;
      }

      result = objc_loadWeak(result + 1);
      if (!result)
      {
        return result;
      }
    }

    if (!a2)
    {
      JreThrowNullPointerException();
    }

    v4 = atomic_load(result + 8);
    [a2 setResourceBundleWithJavaUtilResourceBundle:v4];

    return [a2 setResourceBundleNameWithNSString:v3];
  }

  return result;
}

JavaUtilLoggingLogger *new_JavaUtilLoggingLogger_initWithNSString_withNSString_(void *a1, void *a2)
{
  v4 = [JavaUtilLoggingLogger alloc];
  JavaUtilLoggingLogger_initWithNSString_withNSString_(v4, a1, a2);
  return v4;
}

JavaUtilLoggingLogger *JavaUtilLoggingLogger_getAnonymousLogger()
{
  if ((atomic_load_explicit(JavaUtilLoggingLogger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001A47D8();
  }

  return JavaUtilLoggingLogger_getAnonymousLoggerWithNSString_(0);
}

uint64_t JavaUtilLoggingLogger_class_()
{
  if ((atomic_load_explicit(JavaUtilLoggingLogger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001A47D8();
  }

  if (qword_1005552D0 != -1)
  {
    sub_1002330E8();
  }

  return qword_1005552C8;
}

const __CFString *RealToString_convertDouble(uint64_t a1, double a2)
{
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v5)
  {
    if (!v6)
    {
      if (a2 < 0.0)
      {
        v8 = @"-0.0";
      }

      else
      {
        v8 = @"0.0";
      }

      goto LABEL_21;
    }

    if (a2 < 0.0)
    {
      v8 = @"-4.9E-324";
    }

    else
    {
      v8 = @"4.9E-324";
    }

    if (v6 == 1)
    {
LABEL_21:
      if (a1)
      {
        JreStringBuilder_appendString(a1, v8);
        return 0;
      }

      return v8;
    }

    v9 = __clz(v6) ^ 0x3F;
    v16 = 0;
    v10 = -1074;
    v11 = 1;
    goto LABEL_24;
  }

  if (v5 == 2047)
  {
    v7 = @"-Infinity";
    if (a2 >= 0.0)
    {
      v7 = @"Infinity";
    }

    if (v6)
    {
      v8 = @"NaN";
    }

    else
    {
      v8 = v7;
    }

    goto LABEL_21;
  }

  v10 = v5 - 1075;
  v16 = 0;
  if ((v5 - 1017) >= 0x40)
  {
    v11 = 0;
    v9 = 52;
    if (!v6 || v5 != 1016)
    {
      v6 |= 0x10000000000000uLL;
LABEL_24:
      sub_100233498(v6, v10, v11, v9, &v16 + 1, v17, &v16);
      goto LABEL_25;
    }
  }

  sub_10023330C(v6 | 0x10000000000000, v10, 0, v6 == 0, 52, &v16 + 1, v17, &v16);
LABEL_25:
  v15[0] = 0;
  v15[1] = 0;
  v12 = a1;
  if (!a1)
  {
    v12 = v15;
    JreStringBuilder_initWithCapacity(v15, 26);
  }

  v13 = fabs(a2);
  if (v13 >= 10000000.0 || v13 < 0.001)
  {
    sub_100233B88(v12, a2 >= 0.0, HIDWORD(v16), v17, v16);
    if (a1)
    {
      return 0;
    }
  }

  else
  {
    sub_100233C64(v12, a2 >= 0.0, SHIDWORD(v16), v17, v16);
    if (a1)
    {
      return 0;
    }
  }

  v8 = JreStringBuilder_toString(v12);
  free(*v12);
  return v8;
}

uint64_t sub_10023330C(uint64_t result, int a2, int a3, int a4, int a5, _DWORD *a6, uint64_t a7, int *a8)
{
  if (a2 < 0)
  {
    if (!a4 || a3)
    {
      v8 = 1;
      v10 = 1 << (1 - a2);
      v9 = 1;
    }

    else
    {
      v9 = 2;
      v8 = 1;
      v10 = 1 << (2 - a2);
    }
  }

  else
  {
    v8 = 1 << a2;
    v9 = a2 + 2;
    v10 = 4;
    if ((a4 & 1) == 0)
    {
      v10 = 2;
      v9 = a2 + 1;
    }
  }

  v11 = result << v9;
  v12 = vcvtpd_s64_f64((a2 + a5 - 1) * 0.301029996 + -1.0e-10);
  if (v12 < 1)
  {
    if (v12 < 0)
    {
      v13 = qword_100315548[-v12];
      v11 *= v13;
      v8 *= v13;
    }
  }

  else
  {
    v10 *= qword_100315548[v12];
  }

  v14 = v11 + v8 <= v10;
  v15 = 10 * v8;
  if (v11 + v8 <= v10)
  {
    v11 *= 10;
  }

  else
  {
    v15 = v8;
  }

  *a6 = v12 - v14;
  while (1)
  {
    v16 = 0;
    for (i = 3; i != -1; --i)
    {
      v18 = v11 - (v10 << i);
      v16 += (1 << i) & ~(v18 >> 63);
      if (v18 >= 0)
      {
        v11 -= v10 << i;
      }
    }

    v19 = v11 + v15;
    if (v11 < v15 || v19 > v10)
    {
      break;
    }

    v11 *= 10;
    v15 *= 10;
    v21 = *a8;
    *a8 = v21 + 1;
    *(a7 + v21) = v16;
  }

  if (v19 > v10 || v11 >= v15)
  {
    if (v11 < v15 || v19 <= v10)
    {
      if (v10 <= 2 * v11)
      {
        LOBYTE(v16) = v16 + 1;
      }
    }

    else
    {
      LOBYTE(v16) = v16 + 1;
    }
  }

  v23 = *a8;
  *a8 = v23 + 1;
  *(a7 + v23) = v16;
  return result;
}

uint64_t sub_100233498(uint64_t a1, int a2, char a3, int a4, int *a5, uint64_t a6, unsigned int *a7)
{
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0;
  memset(v71, 0, sizeof(v71));
  v72 = 0u;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  if (a2 < 0)
  {
    v11 = a4 - 1;
    if ((a3 & 1) != 0 || 2 << v11 != a1)
    {
      *&v73 = 2 * a1;
      *&v71[0] = 1;
      simpleShiftLeftHighPrecision(v71, 0x16u, 1 - a2);
      *&v66[0] = 1;
      *&v69[0] = 1;
    }

    else
    {
      *&v73 = 4 * a1;
      *&v71[0] = 1;
      simpleShiftLeftHighPrecision(v71, 0x16u, 2 - a2);
      *&v69[0] = 2;
      *&v66[0] = 1;
    }
  }

  else
  {
    *&v73 = a1;
    *&v66[0] = 1;
    *&v69[0] = 1;
    simpleShiftLeftHighPrecision(v66, 0x15u, a2);
    v11 = a4 - 1;
    if (2 << (a4 - 1) == a1)
    {
      simpleShiftLeftHighPrecision(&v73, 0x15u, a2 + 2);
      *&v71[0] = 4;
      v12 = a2 + 1;
    }

    else
    {
      simpleShiftLeftHighPrecision(&v73, 0x15u, a2 + 1);
      *&v71[0] = 2;
      v12 = a2;
    }

    simpleShiftLeftHighPrecision(v69, 0x15u, v12);
  }

  v13 = vcvtpd_s64_f64((v11 + a2) * 0.301029996 + -1.0e-10);
  if (v13 < 1)
  {
    timesTenToTheEHighPrecision(&v73, 21, -v13);
    timesTenToTheEHighPrecision(v69, 21, -v13);
    v14 = v66;
    v15 = 21;
    v16 = -v13;
  }

  else
  {
    v14 = v71;
    v15 = 22;
    v16 = v13;
  }

  timesTenToTheEHighPrecision(v14, v15, v16);
  v63[8] = v81;
  v63[9] = v82;
  v64 = v83;
  v65 = 0;
  v63[4] = v77;
  v63[5] = v78;
  v63[6] = v79;
  v63[7] = v80;
  v63[0] = v73;
  v63[1] = v74;
  v17 = 22;
  v18 = 20;
  v63[2] = v75;
  v63[3] = v76;
  while ((v18 + 1) >= 2)
  {
    v19 = *(&v73 + v18);
    --v17;
    --v18;
    if (v19)
    {
      goto LABEL_18;
    }
  }

  v17 = 1;
LABEL_18:
  v20 = 22;
  v21 = 20;
  while ((v21 + 1) >= 2)
  {
    v22 = *(v69 + v21);
    --v20;
    --v21;
    if (v22)
    {
      goto LABEL_23;
    }
  }

  v20 = 1;
LABEL_23:
  v23 = 22;
  v24 = 20;
  while ((v24 + 1) >= 2)
  {
    v25 = *(v66 + v24);
    --v23;
    --v24;
    if (v25)
    {
      goto LABEL_28;
    }
  }

  v23 = 1;
LABEL_28:
  v26 = 23;
  v27 = 21;
  while ((v27 + 1) >= 2)
  {
    v28 = *(v71 + v27);
    --v26;
    --v27;
    if (v28)
    {
      goto LABEL_33;
    }
  }

  v26 = 1;
LABEL_33:
  if (v17 <= v20)
  {
    v29 = v20;
  }

  else
  {
    v29 = v17;
  }

  addHighPrecision(v63, v29 + 1, v69, v20);
  if ((compareHighPrecision(v63, v29 + 1, v71, v26) & 0x80000000) != 0)
  {
    *a5 = v13 - 1;
    simpleAppendDecimalDigitHighPrecision(&v73, v17 + 1, 0);
    simpleAppendDecimalDigitHighPrecision(v69, v20 + 1, 0);
    simpleAppendDecimalDigitHighPrecision(v66, v23 + 1, 0);
    v30 = v17 + 1;
    v31 = &v73 + v17;
    while (v30 >= 2)
    {
      --v30;
      if (*v31--)
      {
        v17 = v30 + 1;
        goto LABEL_43;
      }
    }

    v17 = 1;
LABEL_43:
    v33 = v20 + 1;
    v34 = v69 + v20;
    while (v33 >= 2)
    {
      --v33;
      if (*v34--)
      {
        v20 = v33 + 1;
        goto LABEL_48;
      }
    }

    v20 = 1;
LABEL_48:
    v36 = v23 + 1;
    v37 = v66 + v23;
    while (v36 >= 2)
    {
      --v36;
      if (*v37--)
      {
        v23 = v36 + 1;
        goto LABEL_53;
      }
    }

    v23 = 1;
  }

  else
  {
    *a5 = v13;
  }

LABEL_53:
  while (1)
  {
    v39 = 0;
    for (i = 3; i != -1; --i)
    {
      *(v63 + v26) = 0;
      __memcpy_chk();
      simpleShiftLeftHighPrecision(v63, v26 + 1, i);
      if ((compareHighPrecision(&v73, v17, v63, v26 + 1) & 0x80000000) == 0)
      {
        subtractHighPrecision(&v73, v17, v63, v26 + 1);
        v39 += 1 << i;
      }
    }

    v41 = compareHighPrecision(&v73, v17, v66, v23);
    bzero(v63 + 8 * v17, 8 * (22 - v17));
    __memcpy_chk();
    v42 = v17 <= v20 ? v20 : v17;
    addHighPrecision(v63, v42 + 1, v69, v20);
    v43 = compareHighPrecision(v63, v42 + 1, v71, v26);
    v44 = v43;
    v45 = v17 + 1;
    if (v41 < 1 || (v43 & 0x80000000) == 0)
    {
      break;
    }

    simpleAppendDecimalDigitHighPrecision(&v73, v17 + 1, 0);
    v46 = v20 + 1;
    simpleAppendDecimalDigitHighPrecision(v69, v20 + 1, 0);
    v47 = v23 + 1;
    simpleAppendDecimalDigitHighPrecision(v66, v23 + 1, 0);
    if (v45 >= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = v17 + 1;
    }

    v49 = &v72 + v45 + 1;
    v17 += 2;
    while (--v17 >= 2)
    {
      if (*v49--)
      {
        goto LABEL_70;
      }
    }

    v17 = v48;
LABEL_70:
    if (v46 >= 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = v20 + 1;
    }

    v52 = &v68 + v46;
    v20 += 2;
    while (--v20 >= 2)
    {
      if (*v52--)
      {
        goto LABEL_78;
      }
    }

    v20 = v51;
LABEL_78:
    if (v47 >= 1)
    {
      v54 = 1;
    }

    else
    {
      v54 = v23 + 1;
    }

    v55 = &v65 + v47;
    v23 += 2;
    while (--v23 >= 2)
    {
      if (*v55--)
      {
        goto LABEL_86;
      }
    }

    v23 = v54;
LABEL_86:
    v57 = a7;
    v58 = *a7;
    *a7 = v58 + 1;
    *(a6 + v58) = v39;
    if (*a7 >= 64)
    {
      objc_exception_throw([(JavaLangError *)[JavaLangAssertionError alloc] initWithNSString:[NSString stringWithFormat:@"maximum digits length exceeded: %d", *v57]]);
    }
  }

  result = simpleShiftLeftHighPrecision(&v73, v17 + 1, 1);
  if (v41 > 0 || (v44 & 0x80000000) == 0)
  {
    if (v44 < 0 || v41 < 1)
    {
      result = compareHighPrecision(&v73, v17 + 1, v71, v26);
      LOBYTE(v39) = v39 + (result >= 0);
    }

    else
    {
      LOBYTE(v39) = v39 + 1;
    }
  }

  v60 = *a7;
  *a7 = v60 + 1;
  *(a6 + v60) = v39;
  return result;
}

NSString *sub_100233B88(_DWORD *a1, char a2, unsigned int a3, char *a4, int a5)
{
  if ((a2 & 1) == 0)
  {
    JreStringBuilder_appendChar(a1, 45);
  }

  JreStringBuilder_appendChar(a1, *a4 + 48);
  JreStringBuilder_appendChar(a1, 46);
  if (a5 < 2)
  {
    goto LABEL_7;
  }

  v9 = a4 + 1;
  v10 = a5 - 1;
  do
  {
    v11 = *v9++;
    JreStringBuilder_appendChar(a1, v11 + 48);
    --v10;
  }

  while (v10);
  if (a3 + 1 - a5 == a3)
  {
LABEL_7:
    JreStringBuilder_appendChar(a1, 48);
  }

  JreStringBuilder_appendChar(a1, 69);

  return IntegralToString_convertInt(a1, a3);
}

_DWORD *sub_100233C64(_DWORD *result, char a2, int a3, char *a4, int a5)
{
  v8 = result;
  if ((a2 & 1) == 0)
  {
    result = JreStringBuilder_appendChar(result, 45);
  }

  if (a3 < 0)
  {
    JreStringBuilder_appendChar(v8, 48);
    result = JreStringBuilder_appendChar(v8, 46);
    if (a3 != -1)
    {
      v9 = a3 + 1;
      do
      {
        result = JreStringBuilder_appendChar(v8, 48);
      }

      while (!__CFADD__(v9++, 1));
    }
  }

  v11 = *a4;
  v12 = 1;
  do
  {
    v13 = a3;
    if (v11 == -1)
    {
      if (a3 < -1)
      {
        goto LABEL_15;
      }

      v14 = 48;
    }

    else
    {
      v14 = v11 + 48;
    }

    result = JreStringBuilder_appendChar(v8, v14);
    if (!a3)
    {
      result = JreStringBuilder_appendChar(v8, 46);
    }

LABEL_15:
    if (v12 >= a5)
    {
      v11 = -1;
    }

    else
    {
      v11 = a4[v12++];
    }

    --a3;
  }

  while (v11 != -1 || v13 < 0x80000001);
  return result;
}

const __CFString *RealToString_convertFloat(uint64_t a1, float a2)
{
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = (LODWORD(a2) >> 23);
  if ((LODWORD(a2) >> 23))
  {
    if (v6 == 255)
    {
      v7 = @"-Infinity";
      if (a2 >= 0.0)
      {
        v7 = @"Infinity";
      }

      if (v5)
      {
        v8 = @"NaN";
      }

      else
      {
        v8 = v7;
      }

LABEL_21:
      if (a1)
      {
        JreStringBuilder_appendString(a1, v8);
        return 0;
      }

      return v8;
    }

    v12 = 0;
    v9 = v5 | 0x800000;
    v10 = v6 - 150;
    v13 = 23;
  }

  else
  {
    if (a2 < 0.0)
    {
      v8 = @"-0.0";
    }

    else
    {
      v8 = @"0.0";
    }

    if (!v5)
    {
      goto LABEL_21;
    }

    if (v5 >= 8)
    {
      v9 = LODWORD(a2) & 0x7FFFFF;
    }

    else
    {
      v9 = 4 * v5;
    }

    if (v5 >= 8)
    {
      v10 = -149;
    }

    else
    {
      v10 = -151;
    }

    v11 = __clz(v9 & 0x7FFFFF) ^ 0x1F;
    v12 = 1;
    if ((v9 & 0x800000) != 0)
    {
      v13 = 23;
    }

    else
    {
      v13 = v11;
    }
  }

  v20 = 0;
  if (v5)
  {
    v14 = v10 == -59;
  }

  else
  {
    v14 = 0;
  }

  v15 = !v14;
  if (v10 - 35) <= 0xFFFFFFA2 && (v15)
  {
    sub_100233498(v9, v10, v12, v13, &v20 + 1, v21, &v20);
  }

  else
  {
    sub_10023330C(v9, v10, v12, v5 == 0, v13, &v20 + 1, v21, &v20);
  }

  v19[0] = 0;
  v19[1] = 0;
  v16 = a1;
  if (!a1)
  {
    v16 = v19;
    JreStringBuilder_initWithCapacity(v19, 26);
  }

  v17 = fabsf(a2);
  if (v17 >= 10000000.0 || v17 < 0.001)
  {
    sub_100233B88(v16, a2 >= 0.0, HIDWORD(v20), v21, v20);
    if (a1)
    {
      return 0;
    }
  }

  else
  {
    sub_100233C64(v16, a2 >= 0.0, SHIDWORD(v20), v21, v20);
    if (a1)
    {
      return 0;
    }
  }

  v8 = JreStringBuilder_toString(v16);
  free(*v16);
  return v8;
}

JavaNetSocketTimeoutException *new_JavaNetSocketTimeoutException_init()
{
  v0 = [JavaNetSocketTimeoutException alloc];
  JavaIoInterruptedIOException_init(v0, v1);
  return v0;
}

JavaNetSocketTimeoutException *new_JavaNetSocketTimeoutException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaNetSocketTimeoutException alloc];
  JavaIoInterruptedIOException_initWithNSString_(v2, a1);
  return v2;
}

JavaNetSocketTimeoutException *new_JavaNetSocketTimeoutException_initWithJavaLangThrowable_(uint64_t a1)
{
  v2 = [JavaNetSocketTimeoutException alloc];
  JavaIoInterruptedIOException_initWithNSString_withJavaLangThrowable_(v2, 0, a1);
  return v2;
}

JavaNetSocketTimeoutException *new_JavaNetSocketTimeoutException_initWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaNetSocketTimeoutException alloc];
  JavaIoInterruptedIOException_initWithNSString_withJavaLangThrowable_(v4, a1, a2);
  return v4;
}

uint64_t JavaLangReflectMethod_class_()
{
  if (qword_1005552E0 != -1)
  {
    sub_100234CFC();
  }

  return qword_1005552D8;
}

LibcoreIoStructTimeval *LibcoreIoStructTimeval_fromMillisWithLong_(uint64_t a1)
{
  v1 = a1 / 1000;
  v2 = 1000 * (a1 % 1000);
  v3 = [LibcoreIoStructTimeval alloc];
  v3->tv_sec_ = v1;
  v3->tv_usec_ = v2;

  return v3;
}

JavaIoEOFException *new_JavaIoEOFException_init()
{
  v0 = [JavaIoEOFException alloc];
  JavaIoIOException_init(v0, v1);
  return v0;
}

JavaIoEOFException *new_JavaIoEOFException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaIoEOFException alloc];
  JavaIoIOException_initWithNSString_(v2, a1);
  return v2;
}

id JavaUtilUnknownFormatConversionException_initWithNSString_(uint64_t a1, void *a2)
{
  JavaUtilIllegalFormatException_init(a1, a2);
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"s == null");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 88), a2);
}

JavaUtilUnknownFormatConversionException *new_JavaUtilUnknownFormatConversionException_initWithNSString_(void *a1)
{
  v2 = [JavaUtilUnknownFormatConversionException alloc];
  JavaUtilUnknownFormatConversionException_initWithNSString_(v2, a1);
  return v2;
}

id JavaNetURISyntaxException_initWithNSString_withNSString_withInt_(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  JavaLangException_initWithNSString_(a1, a3);
  if (!a2)
  {
    v16 = @"input == null";
LABEL_7:
    v17 = new_JavaLangNullPointerException_initWithNSString_(v16);
    goto LABEL_9;
  }

  if (!a3)
  {
    v16 = @"reason == null";
    goto LABEL_7;
  }

  if (a4 <= -2)
  {
    v18 = JreStrcat("$I", v8, v9, v10, v11, v12, v13, v14, @"Bad index: ");
    v17 = new_JavaLangIllegalArgumentException_initWithNSString_(v18);
LABEL_9:
    objc_exception_throw(v17);
  }

  result = JreStrongAssign((a1 + 88), a2);
  *(a1 + 96) = a4;
  return result;
}

id JavaNetURISyntaxException_initWithNSString_withNSString_(uint64_t a1, void *a2, uint64_t a3)
{
  JavaLangException_initWithNSString_(a1, a3);
  if (!a2)
  {
    v7 = @"input == null";
    goto LABEL_6;
  }

  if (!a3)
  {
    v7 = @"reason == null";
LABEL_6:
    v8 = new_JavaLangNullPointerException_initWithNSString_(v7);
    objc_exception_throw(v8);
  }

  result = JreStrongAssign((a1 + 88), a2);
  *(a1 + 96) = -1;
  return result;
}

JavaNetURISyntaxException *new_JavaNetURISyntaxException_initWithNSString_withNSString_withInt_(void *a1, uint64_t a2, int a3)
{
  v6 = [JavaNetURISyntaxException alloc];
  JavaNetURISyntaxException_initWithNSString_withNSString_withInt_(v6, a1, a2, a3);
  return v6;
}

JavaNetURISyntaxException *new_JavaNetURISyntaxException_initWithNSString_withNSString_(void *a1, uint64_t a2)
{
  v4 = [JavaNetURISyntaxException alloc];
  JavaNetURISyntaxException_initWithNSString_withNSString_(v4, a1, a2);
  return v4;
}

JavaLangShort *JavaLangShort_decodeWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaLangShort__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100235C38();
  }

  v3 = JavaLangInteger_decodeWithNSString_(a1);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v4 = [v2 intValue];
  if (v4 != v4)
  {
    v13 = JreStrcat("$$C", v5, v6, v7, v8, v9, v10, v11, @"Value out of range for short: ");
    v14 = new_JavaLangNumberFormatException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  return JavaLangShort_valueOfWithShort_(v4);
}

uint64_t JavaLangShort_parseShortWithNSString_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangShort__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100235C38();
  }

  return JavaLangShort_parseShortWithNSString_withInt_(a1, 10, a3, a4, a5, a6, a7, a8);
}

uint64_t JavaLangShort_parseShortWithNSString_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangShort__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100235C38();
  }

  v10 = JavaLangInteger_parseIntWithNSString_withInt_(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v10 != v10)
  {
    v19 = JreStrcat("$$C", v11, v12, v13, v14, v15, v16, v17, @"Value out of range for short: ");
    v20 = new_JavaLangNumberFormatException_initWithNSString_(v19);
    objc_exception_throw(v20);
  }

  return v10;
}

NSString *JavaLangShort_toStringWithShort_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaLangShort__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100235C38();
  }

  return JavaLangInteger_toStringWithInt_(a1);
}

JavaLangShort *JavaLangShort_valueOfWithNSString_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangShort__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100235C38();
  }

  v9 = JavaLangShort_parseShortWithNSString_(a1, a2, a3, a4, a5, a6, a7, a8);

  return JavaLangShort_valueOfWithShort_(v9);
}

JavaLangShort *JavaLangShort_valueOfWithNSString_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangShort__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100235C38();
  }

  v10 = JavaLangShort_parseShortWithNSString_withInt_(a1, a2, a3, a4, a5, a6, a7, a8);

  return JavaLangShort_valueOfWithShort_(v10);
}

uint64_t JavaLangShort_reverseBytesWithShort_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaLangShort__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100235C38();
  }

  return (bswap32(a1) >> 16);
}

JavaLangShort *JavaLangShort_valueOfWithShort_(int a1)
{
  if ((atomic_load_explicit(JavaLangShort__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100235C38();
  }

  if (a1 == a1)
  {
    if (!qword_1005552E8)
    {
      JreThrowNullPointerException();
    }

    v4 = a1 + 128;
    v5 = *(qword_1005552E8 + 8);
    if (v5 <= v4)
    {
      IOSArray_throwOutOfBoundsWithMsg(v5, v4);
    }

    return *(qword_1005552E8 + 24 + 8 * v4);
  }

  else
  {
    v2 = [JavaLangShort alloc];
    v2->value_ = a1;

    return v2;
  }
}

uint64_t JavaLangShort_class_()
{
  if ((atomic_load_explicit(JavaLangShort__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100235C38();
  }

  if (qword_1005552F8 != -1)
  {
    sub_100235C44();
  }

  return qword_1005552F0;
}

JavaNioCharsetIllegalCharsetNameException *new_JavaNioCharsetIllegalCharsetNameException_initWithNSString_(__CFString *a1)
{
  v2 = [JavaNioCharsetIllegalCharsetNameException alloc];
  v3 = v2;
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = @"null";
  }

  JavaLangIllegalArgumentException_initWithNSString_(v2, v4);
  JreStrongAssign(&v3->charsetName_, a1);
  return v3;
}

id JavaIoStringWriter_init(uint64_t a1)
{
  JavaIoWriter_init(a1);
  v2 = new_JavaLangStringBuffer_initWithInt_(0x10u);
  JreStrongAssignAndConsume((a1 + 16), v2);
  v3 = *(a1 + 16);

  return JreStrongAssign((a1 + 8), v3);
}

id JavaIoStringWriter_initWithInt_(uint64_t a1, unsigned int a2)
{
  JavaIoWriter_init(a1);
  if ((a2 & 0x80000000) != 0)
  {
    v14 = JreStrcat("$I", v4, v5, v6, v7, v8, v9, v10, @"initialSize < 0: ");
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  v11 = new_JavaLangStringBuffer_initWithInt_(a2);
  JreStrongAssignAndConsume((a1 + 16), v11);
  v12 = *(a1 + 16);

  return JreStrongAssign((a1 + 8), v12);
}

JavaIoStringWriter *new_JavaIoStringWriter_init()
{
  v0 = [JavaIoStringWriter alloc];
  JavaIoStringWriter_init(v0);
  return v0;
}

id OrgXmlSaxHelpersNewInstance_newInstanceWithNSString_(void *a1)
{
  v1 = IOSClass_forName_(a1);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  return [v1 newInstance];
}

id OrgXmlSaxHelpersNewInstance_getClassLoader()
{
  v0 = JavaLangThread_class_();
  v1 = [v0 getMethod:@"getContextClassLoader" parameterTypes:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, IOSClass_class_())}];
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  v2 = JavaLangThread_currentThread();
  v3 = [v1 invokeWithId:v2 withNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, NSObject_class_())}];
  objc_opt_class();
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v3;
}

void sub_100236404(void *a1)
{
  objc_begin_catch(a1);
  if (qword_100555308 != -1)
  {

    dispatch_once(&qword_100555308, &stru_100455B10);
  }
}

id JavaBeansPropertyChangeEvent_initWithId_withNSString_withId_withId_(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  JavaUtilEventObject_initWithId_(a1, a2);
  JreStrongAssign(a1 + 2, a3);
  JreStrongAssign(a1 + 3, a4);

  return JreStrongAssign(a1 + 4, a5);
}

JavaBeansPropertyChangeEvent *new_JavaBeansPropertyChangeEvent_initWithId_withNSString_withId_withId_(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [JavaBeansPropertyChangeEvent alloc];
  JavaBeansPropertyChangeEvent_initWithId_withNSString_withId_withId_(&v8->super.super.isa, a1, a2, a3, a4);
  return v8;
}

JavaLangOutOfMemoryError *new_JavaLangOutOfMemoryError_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangOutOfMemoryError alloc];
  JavaLangVirtualMachineError_initWithNSString_(v2, a1);
  return v2;
}

JavaUtilIllegalFormatPrecisionException *new_JavaUtilIllegalFormatPrecisionException_initWithInt_(unsigned int a1)
{
  v2 = [JavaUtilIllegalFormatPrecisionException alloc];
  JavaUtilIllegalFormatException_init(v2, v3);
  *(&v2->super.super.super.super.super.rawFrameCount + 1) = a1;
  return v2;
}

id JavaNetInetUnixAddress_initWithNSString_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(JavaNioCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140190();
  }

  v4 = [a2 getBytesWithCharset:JavaNioCharsetStandardCharsets_UTF_8_];

  return JavaNetInetAddress_initWithInt_withByteArray_withNSString_(a1, 1, v4, 0);
}

JavaNioByteBufferAsFloatBuffer *JavaNioByteBufferAsFloatBuffer_asFloatBufferWithJavaNioByteBuffer_(void *a1)
{
  if (!a1 || (v2 = [a1 slice]) == 0)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  [v2 orderWithJavaNioByteOrder:{objc_msgSend(a1, "order")}];
  v4 = [JavaNioByteBufferAsFloatBuffer alloc];
  JavaNioByteBufferAsFloatBuffer_initWithJavaNioByteBuffer_(v4, v3);

  return v4;
}

id JavaNioByteBufferAsFloatBuffer_initWithJavaNioByteBuffer_(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 capacity];
  JavaNioFloatBuffer_initWithInt_withLong_(a1, (v4 / 4), a2[4], v5, v6, v7, v8, v9);
  JreStrongAssign((a1 + 40), a2);
  v10 = *(a1 + 40);

  return [v10 clear];
}

JavaNioShortArrayBuffer *JavaNioShortBuffer_allocateWithInt_(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0x80000000) != 0)
  {
    v10 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"capacity < 0: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  v8 = new_JavaNioShortArrayBuffer_initWithShortArray_([IOSShortArray arrayWithLength:a1]);

  return v8;
}