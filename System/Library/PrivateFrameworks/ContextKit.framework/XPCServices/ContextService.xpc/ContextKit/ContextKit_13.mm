JavaNioShortArrayBuffer *JavaNioShortBuffer_wrapWithShortArray_withInt_withInt_(unsigned int *a1, int a2, int a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(a1[2], a2, a3);
  result = new_JavaNioShortArrayBuffer_initWithShortArray_(a1);
  result->super.super.position_ = a2;
  result->super.super.limit_ = a3 + a2;
  return result;
}

NSString *JavaLangIntegralToString_intToStringWithInt_withInt_(unsigned int a1, int a2)
{
  if (qword_100555318 != -1)
  {
    sub_100238094();
  }

  v4 = qword_100555310;

  return Java_java_lang_IntegralToString_intToString__II(J2ObjC_JNIEnv, v4, a1, a2);
}

const __CFString *JavaLangIntegralToString_longToStringWithLong_withInt_(uint64_t a1, int a2)
{
  if (qword_100555318 != -1)
  {
    sub_100238094();
  }

  v4 = qword_100555310;

  return Java_java_lang_IntegralToString_longToString__JI(J2ObjC_JNIEnv, v4, a1, a2);
}

NSString *JavaLangIntegralToString_intToBinaryStringWithInt_(unsigned int a1)
{
  if (qword_100555318 != -1)
  {
    sub_100238094();
  }

  v2 = qword_100555310;

  return Java_java_lang_IntegralToString_intToBinaryString(J2ObjC_JNIEnv, v2, a1);
}

NSString *JavaLangIntegralToString_longToBinaryStringWithLong_(unint64_t a1)
{
  if (qword_100555318 != -1)
  {
    sub_100238094();
  }

  v2 = qword_100555310;

  return Java_java_lang_IntegralToString_longToBinaryString(J2ObjC_JNIEnv, v2, a1);
}

void *JavaLangIntegralToString_appendByteAsHexWithJavaLangStringBuilder_withByte_withBoolean_(void *a1, unsigned __int8 a2, int a3)
{
  if (qword_100555318 != -1)
  {
    sub_100238094();
  }

  v6 = qword_100555310;

  return Java_java_lang_IntegralToString_appendByteAsHex(J2ObjC_JNIEnv, v6, a1, a2, a3);
}

NSString *JavaLangIntegralToString_byteToHexStringWithByte_withBoolean_(unsigned __int8 a1, int a2)
{
  if (qword_100555318 != -1)
  {
    sub_100238094();
  }

  v4 = qword_100555310;

  return Java_java_lang_IntegralToString_byteToHexString(J2ObjC_JNIEnv, v4, a1, a2);
}

NSString *JavaLangIntegralToString_bytesToHexStringWithByteArray_withBoolean_(uint64_t a1)
{
  if (qword_100555318 != -1)
  {
    sub_100238094();
  }

  v2 = qword_100555310;

  return Java_java_lang_IntegralToString_bytesToHexString(J2ObjC_JNIEnv, v2, a1);
}

NSString *JavaLangIntegralToString_intToHexStringWithInt_withBoolean_withInt_(unsigned int a1, int a2, int a3)
{
  if (qword_100555318 != -1)
  {
    sub_100238094();
  }

  v6 = qword_100555310;

  return Java_java_lang_IntegralToString_intToHexString(J2ObjC_JNIEnv, v6, a1, a2, a3);
}

NSString *JavaLangIntegralToString_longToHexStringWithLong_(unint64_t a1)
{
  if (qword_100555318 != -1)
  {
    sub_100238094();
  }

  v2 = qword_100555310;

  return Java_java_lang_IntegralToString_longToHexString(J2ObjC_JNIEnv, v2, a1);
}

NSString *JavaLangIntegralToString_intToOctalStringWithInt_(unsigned int a1)
{
  if (qword_100555318 != -1)
  {
    sub_100238094();
  }

  v2 = qword_100555310;

  return Java_java_lang_IntegralToString_intToOctalString(J2ObjC_JNIEnv, v2, a1);
}

NSString *JavaLangIntegralToString_longToOctalStringWithLong_(unint64_t a1)
{
  if (qword_100555318 != -1)
  {
    sub_100238094();
  }

  v2 = qword_100555310;

  return Java_java_lang_IntegralToString_longToOctalString(J2ObjC_JNIEnv, v2, a1);
}

JavaLangClassCastException *new_JavaLangClassCastException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangClassCastException alloc];
  JavaLangRuntimeException_initWithNSString_(v2, a1);
  return v2;
}

id JavaUtilCalendar_initWithJavaUtilTimeZone_(uint64_t a1, uint64_t a2)
{
  JreStrongAssignAndConsume((a1 + 16), [IOSIntArray newArrayWithLength:17]);
  JreStrongAssignAndConsume((a1 + 24), [IOSBooleanArray newArrayWithLength:17]);
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  [a1 setLenientWithBoolean:1];

  return [a1 setTimeZoneWithJavaUtilTimeZone:a2];
}

id JavaUtilCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(void *a1, uint64_t a2, void *a3)
{
  JavaUtilCalendar_initWithJavaUtilTimeZone_(a1, a2);
  v5 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(a3);
  if (!v5 || (v6 = v5, (firstDayOfWeek = v5->firstDayOfWeek_) == 0) || ([a1 setFirstDayOfWeekWithInt:{-[JavaLangInteger intValue](firstDayOfWeek, "intValue")}], (minimalDaysInFirstWeek = v6->minimalDaysInFirstWeek_) == 0))
  {
    JreThrowNullPointerException();
  }

  v9 = [(JavaLangInteger *)minimalDaysInFirstWeek intValue];

  return [a1 setMinimalDaysInFirstWeekWithInt:v9];
}

JavaUtilGregorianCalendar *JavaUtilCalendar_getInstanceWithJavaUtilLocale_(void *a1)
{
  if ((atomic_load_explicit(&JavaUtilCalendar__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10023A02C();
  }

  v2 = JavaUtilCalendar_class_();
  objc_sync_enter(v2);
  v3 = new_JavaUtilGregorianCalendar_initWithJavaUtilLocale_(a1);
  objc_sync_exit(v2);
  return v3;
}

JavaUtilGregorianCalendar *JavaUtilCalendar_getInstanceWithJavaUtilTimeZone_(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaUtilCalendar__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10023A02C();
  }

  v2 = JavaUtilCalendar_class_();
  objc_sync_enter(v2);
  v3 = new_JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_(a1);
  objc_sync_exit(v2);
  return v3;
}

JavaUtilGregorianCalendar *JavaUtilCalendar_getInstanceWithJavaUtilTimeZone_withJavaUtilLocale_(uint64_t a1, void *a2)
{
  if ((atomic_load_explicit(&JavaUtilCalendar__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10023A02C();
  }

  v4 = JavaUtilCalendar_class_();
  objc_sync_enter(v4);
  v5 = new_JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(a1, a2);
  objc_sync_exit(v4);
  return v5;
}

id sub_100239504(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 0x11)
  {
    v13 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"bad field ");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  v10 = a2;
  sub_1002396BC(a2, a2, a3, a4, a5, a6, a7, a8);
  InstanceWithJavaUtilLocale = JavaTextDateFormatSymbols_getInstanceWithJavaUtilLocale_(a3);
  if (a1 > 6)
  {
    if (a1 == 7)
    {
      if (v10 == 2)
      {
        if (!InstanceWithJavaUtilLocale)
        {
          goto LABEL_34;
        }

        return [(JavaTextDateFormatSymbols *)InstanceWithJavaUtilLocale getWeekdays];
      }

      else
      {
        if (!InstanceWithJavaUtilLocale)
        {
          goto LABEL_34;
        }

        return [(JavaTextDateFormatSymbols *)InstanceWithJavaUtilLocale getShortWeekdays];
      }
    }

    if (a1 == 9)
    {
      if (!InstanceWithJavaUtilLocale)
      {
        goto LABEL_34;
      }

      return [(JavaTextDateFormatSymbols *)InstanceWithJavaUtilLocale getAmPmStrings];
    }

    return 0;
  }

  if (!a1)
  {
    if (!InstanceWithJavaUtilLocale)
    {
      goto LABEL_34;
    }

    return [(JavaTextDateFormatSymbols *)InstanceWithJavaUtilLocale getEras];
  }

  if (a1 != 2)
  {
    return 0;
  }

  if (v10 == 2)
  {
    if (InstanceWithJavaUtilLocale)
    {

      return [(JavaTextDateFormatSymbols *)InstanceWithJavaUtilLocale getMonths];
    }

LABEL_34:
    JreThrowNullPointerException();
  }

  if (!InstanceWithJavaUtilLocale)
  {
    goto LABEL_34;
  }

  return [(JavaTextDateFormatSymbols *)InstanceWithJavaUtilLocale getShortMonths];
}

uint64_t sub_1002396BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if ((atomic_load_explicit(&JavaUtilCalendar__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_10023A02C();
  }

  if (v8 >= 3)
  {
    v9 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"bad style ");
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(v9);
    objc_exception_throw(v10);
  }

  return result;
}

uint64_t sub_1002397D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (atomic_load_explicit(&JavaUtilCalendar__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = sub_10023A02C();
    if (!a2)
    {
      return result;
    }
  }

  result = *(a2 + 8);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      if (*(a2 + 24 + 8 * i))
      {
        if (i >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, i);
        }

        if (([*(a2 + 24 + 8 * i) isEmpty] & 1) == 0)
        {
          if (!v3)
          {
            JreThrowNullPointerException();
          }

          v5 = *(a2 + 8);
          if (i >= v5)
          {
            IOSArray_throwOutOfBoundsWithMsg(v5, i);
          }

          [v3 putWithId:*(a2 + 24 + 8 * i) withId:JavaLangInteger_valueOfWithInt_(i)];
        }
      }

      result = *(a2 + 8);
    }
  }

  return result;
}

id JavaUtilCalendar_getAvailableLocales()
{
  if ((atomic_load_explicit(&JavaUtilCalendar__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10023A02C();
  }

  v0 = JavaUtilCalendar_class_();
  objc_sync_enter(v0);
  AvailableCalendarLocales = LibcoreIcuICU_getAvailableCalendarLocales();
  objc_sync_exit(v0);
  return AvailableCalendarLocales;
}

JavaUtilGregorianCalendar *JavaUtilCalendar_getInstance()
{
  if ((atomic_load_explicit(&JavaUtilCalendar__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10023A02C();
  }

  v0 = JavaUtilCalendar_class_();
  objc_sync_enter(v0);
  v1 = new_JavaUtilGregorianCalendar_init();
  objc_sync_exit(v0);
  return v1;
}

uint64_t JavaUtilCalendar_class_()
{
  if ((atomic_load_explicit(&JavaUtilCalendar__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10023A02C();
  }

  if (qword_100555338 != -1)
  {
    sub_10023A038();
  }

  return qword_100555330;
}

JavaNetSocketException *new_JavaNetSocketException_init()
{
  v0 = [JavaNetSocketException alloc];
  JavaIoIOException_init(v0, v1);
  return v0;
}

JavaNetSocketException *new_JavaNetSocketException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaNetSocketException alloc];
  JavaIoIOException_initWithNSString_(v2, a1);
  return v2;
}

JavaNetSocketException *new_JavaNetSocketException_initWithJavaLangThrowable_(void *a1)
{
  v2 = [JavaNetSocketException alloc];
  JavaIoIOException_initWithJavaLangThrowable_(v2, a1);
  return v2;
}

JavaNetSocketException *new_JavaNetSocketException_initWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaNetSocketException alloc];
  JavaIoIOException_initWithNSString_withJavaLangThrowable_(v4, a1, a2);
  return v4;
}

id JavaUtilDuplicateFormatFlagsException_initWithNSString_(uint64_t a1, void *a2)
{
  JavaUtilIllegalFormatException_init(a1, a2);
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"f == null");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 88), a2);
}

JavaUtilDuplicateFormatFlagsException *new_JavaUtilDuplicateFormatFlagsException_initWithNSString_(void *a1)
{
  v2 = [JavaUtilDuplicateFormatFlagsException alloc];
  JavaUtilDuplicateFormatFlagsException_initWithNSString_(v2, a1);
  return v2;
}

void *sub_10023A384(uint64_t a1, _DWORD *a2, void *a3)
{
  *(a1 + 24) = 7;
  *(a1 + 40) = 0;
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 16), a3);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v6 = a2[2];
  if (v6 >= 512)
  {
    v7 = 256;
  }

  else
  {
    v7 = v6 >> 1;
  }

  v8 = [IOSObjectArray arrayWithLength:v7 type:NSObject_class_()];
  objc_opt_class();
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign((a1 + 32), v8);
  if (v6 >= 120)
  {
    if (v6 >= 0x606)
    {
      if (v6 >= 0x1D16F)
      {
        v9 = 40;
      }

      else
      {
        v9 = 19;
      }
    }

    else
    {
      v9 = 10;
    }
  }

  else
  {
    v9 = 5;
  }

  JreStrongAssignAndConsume((a1 + 48), [IOSIntArray newArrayWithLength:v9]);
  v10 = [IOSIntArray newArrayWithLength:v9];

  return JreStrongAssignAndConsume((a1 + 56), v10);
}

unsigned int *JavaUtilTimSort_sortWithNSObjectArray_withJavaUtilComparator_(unsigned int *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v9 = a1[2];

  return JavaUtilTimSort_sortWithNSObjectArray_withInt_withInt_withJavaUtilComparator_(a1, 0, v9, a2, a5, a6, a7, a8);
}

unsigned int *JavaUtilTimSort_sortWithNSObjectArray_withInt_withInt_withJavaUtilComparator_(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  if (a4)
  {
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    result = JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(a1[2], a2, a3, a4, a5, a6, a7, a8);
    v13 = v8 - v9;
    if (v8 - v9 >= 2)
    {
      if (v13 > 0x1F)
      {
        v15 = [JavaUtilTimSort alloc];
        sub_10023A384(v15, a1, a4);
        v16 = v15;
        v17 = 0;
        v18 = v8 - v9;
        do
        {
          v17 |= v18 & 1;
          v19 = v18 >> 1;
          v20 = v18 > 0x3F;
          v18 >>= 1;
        }

        while (v20);
        v21 = v17 + v19;
        do
        {
          v22 = sub_10023A99C(a1, v9, v8, a4);
          v23 = v22;
          if (v22 >= v21)
          {
            v25 = (v22 + v9);
          }

          else
          {
            if (v13 >= v21)
            {
              v24 = v21;
            }

            else
            {
              v24 = v13;
            }

            v25 = v9 + v24;
            sub_10023A774(a1, v9, v9 + v24, v22 + v9, a4);
            v23 = v24;
          }

          sub_10023AC28(v16, v9, v23);
          sub_10023AD04(v16);
          v9 = v25;
          v13 -= v23;
        }

        while (v13);

        return sub_10023AF1C(v16);
      }

      else
      {
        v14 = sub_10023A99C(a1, v9, v8, a4) + v9;

        return sub_10023A774(a1, v9, v8, v14, a4);
      }
    }
  }

  else
  {

    return JavaUtilArrays_sortWithNSObjectArray_withInt_withInt_();
  }

  return result;
}

unsigned int *sub_10023A774(unsigned int *result, uint64_t a2, int a3, int a4, void *a5)
{
  if (a4 == a2)
  {
    v5 = a4 + 1;
  }

  else
  {
    v5 = a4;
  }

  if (v5 < a3)
  {
    v6 = result;
    if (!result)
    {
LABEL_36:
      JreThrowNullPointerException();
    }

    v8 = v5;
    v9 = a2;
    v10 = a3;
    v23 = a3;
    while (1)
    {
      v11 = v6[2];
      if (v8 < 0 || v8 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v8);
      }

      v12 = *&v6[2 * v8 + 6];
      if (v8 <= v9)
      {
        v14 = a2;
      }

      else
      {
        if (!a5)
        {
          goto LABEL_36;
        }

        v13 = v9;
        LODWORD(v14) = a2;
        v15 = v8;
        do
        {
          v16 = (v14 + v15) >> 1;
          v17 = v6[2];
          if (v16 >= v17)
          {
            IOSArray_throwOutOfBoundsWithMsg(v17, (v14 + v15) >> 1);
          }

          if ([a5 compareWithId:v12 withId:*&v6[2 * v16 + 6]] >= 0)
          {
            v14 = (v16 + 1);
          }

          else
          {
            v15 = (v14 + v15) >> 1;
            v14 = v14;
          }
        }

        while (v14 < v15);
        v9 = v13;
        v10 = v23;
      }

      v18 = (v8 - v14);
      if (v18 == 2)
      {
        break;
      }

      if (v18 == 1)
      {
        v19 = v14 + 1;
LABEL_26:
        v22 = v6[2];
        if ((v14 & 0x80000000) != 0 || v14 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, v14);
        }

        v14 = v14;
        IOSObjectArray_Set(v6, v19, *&v6[2 * v14 + 6]);
        goto LABEL_30;
      }

      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v6, v14, v6, (v14 + 1), v18);
      v14 = v14;
LABEL_30:
      result = IOSObjectArray_Set(v6, v14, v12);
      if (++v8 >= v10)
      {
        return result;
      }
    }

    v20 = v6[2];
    v21 = v14 + 1;
    v19 = v14 + 1;
    if (v14 + 1 < 0 || v21 >= v20)
    {
      IOSArray_throwOutOfBoundsWithMsg(v20, v21);
    }

    IOSObjectArray_Set(v6, v14 + 2, *&v6[2 * v19 + 6]);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_10023A99C(unsigned int *a1, uint64_t a2, int a3, void *a4)
{
  v4 = a2 + 1;
  if (a2 + 1 == a3)
  {
    return 1;
  }

  if (!a4 || !a1)
  {
    JreThrowNullPointerException();
  }

  v9 = a2;
  v10 = a1[2];
  if (v4 < 0 || v4 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, (a2 + 1));
  }

  LODWORD(v11) = a2 + 2;
  v12 = *&a1[2 * v4 + 6];
  if ((a2 & 0x80000000) != 0 || v10 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, a2);
  }

  if (([a4 compareWithId:v12 withId:*&a1[2 * a2 + 6]] & 0x80000000) != 0)
  {
    LODWORD(v16) = v9 + 2;
    if (v11 < a3)
    {
      v16 = v11;
      v17 = &a1[2 * v11];
      while (1)
      {
        v18 = a1[2];
        if (v16 < 0 || v16 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v16);
        }

        v19 = v16 - 1;
        if (v16 - 1 < 0 || v19 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v19);
        }

        if (([a4 compareWithId:*(v17 + 3) withId:*&a1[2 * v19 + 6]] & 0x80000000) == 0)
        {
          break;
        }

        ++v16;
        v17 += 2;
        if (a3 == v16)
        {
          LODWORD(v16) = a3;
          break;
        }
      }
    }

    sub_1001EB830(a1, v9, v16);
    LODWORD(v11) = v16;
  }

  else if (v11 < a3)
  {
    v13 = &a1[2 * v11];
    v11 = v11;
    while (1)
    {
      v14 = a1[2];
      if (v11 < 0 || v11 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v11);
      }

      v15 = v11 - 1;
      if (v11 - 1 < 0 || v15 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v15);
      }

      if (([a4 compareWithId:*(v13 + 3) withId:*&a1[2 * v15 + 6]] & 0x80000000) != 0)
      {
        break;
      }

      ++v11;
      v13 += 2;
      if (a3 == v11)
      {
        LODWORD(v11) = a3;
        return (v11 - v9);
      }
    }
  }

  return (v11 - v9);
}

uint64_t sub_10023AC28(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 40);
  v6 = *(v3 + 8);
  if (v5 < 0 || v5 >= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, v5);
  }

  *(v3 + 12 + 4 * v5) = a2;
  v7 = *(a1 + 56);
  if (!v7)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v8 = *(a1 + 40);
  result = *(v7 + 8);
  if (v8 < 0 || v8 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v8);
  }

  *(v7 + 12 + 4 * v8) = a3;
  ++*(a1 + 40);
  return result;
}

uint64_t sub_10023AD04(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >= 2)
  {
    v2 = result;
    do
    {
      v3 = *(v2 + 56);
      v4 = (v1 - 2);
      if (v1 == 2)
      {
        goto LABEL_9;
      }

      if (!v3)
      {
        goto LABEL_29;
      }

      v5 = (v1 - 3);
      v6 = *(v3 + 8);
      if (v5 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, (v1 - 3));
      }

      v7 = *(v2 + 56);
      if (v4 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, (v1 - 2));
      }

      v8 = *(v2 + 56);
      v9 = (v1 - 1);
      if (v1 > v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, (v1 - 1));
      }

      if (*(v3 + 12 + 4 * v5) > *(v3 + 12 + 4 * v9) + *(v3 + 12 + 4 * v4))
      {
LABEL_9:
        if (!v3)
        {
LABEL_29:
          JreThrowNullPointerException();
        }

        result = *(v3 + 8);
        if (v4 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, (v1 - 2));
        }

        if (v1 > result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, (v1 - 1));
        }

        if (*(v3 + 12 + 4 * v4) > *(v3 + 12 + 4 * (v1 - 1)))
        {
          return result;
        }
      }

      else
      {
        v10 = *(v3 + 8);
        if (v5 >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, (v1 - 3));
        }

        if (v1 > v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, (v1 - 1));
        }

        if (*(v3 + 12 + 4 * v5) >= *(v3 + 12 + 4 * v9))
        {
          v4 = v4;
        }

        else
        {
          v4 = v5;
        }
      }

      result = sub_10023B01C(v2, v4);
      v1 = *(v2 + 40);
    }

    while (v1 > 1);
  }

  return result;
}

_DWORD *sub_10023AF1C(_DWORD *result)
{
  v1 = result[10];
  if (v1 >= 2)
  {
    v2 = result;
    do
    {
      if (v1 == 2)
      {
        v3 = 0;
      }

      else
      {
        v4 = *(v2 + 56);
        if (!v4)
        {
          JreThrowNullPointerException();
        }

        v5 = (v1 - 3);
        v6 = *(v4 + 8);
        if (v5 >= v6)
        {
          IOSArray_throwOutOfBoundsWithMsg(v6, (v1 - 3));
        }

        if (v1 > v6)
        {
          IOSArray_throwOutOfBoundsWithMsg(v6, (v1 - 1));
        }

        if (*(v4 + 12 + 4 * v5) >= *(*(v2 + 56) + 12 + 4 * (v1 - 1)))
        {
          v3 = (v1 - 2);
        }

        else
        {
          v3 = v5;
        }
      }

      result = sub_10023B01C(v2, v3);
      v1 = *(v2 + 40);
    }

    while (v1 > 1);
  }

  return result;
}

id sub_10023B01C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_38;
  }

  v4 = *(v2 + 8);
  if ((a2 & 0x80000000) != 0 || v4 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, a2);
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    goto LABEL_38;
  }

  v6 = *(v2 + 12 + 4 * a2);
  v7 = *(v5 + 8);
  if ((a2 & 0x80000000) != 0 || v7 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a2);
  }

  v8 = *(v5 + 12 + 4 * a2);
  v9 = *(a1 + 48);
  v10 = *(v9 + 8);
  v11 = a2 + 1;
  v12 = a2 + 1;
  if (a2 + 1 < 0 || v11 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v11);
  }

  v13 = *(v9 + 12 + 4 * v12);
  v14 = *(a1 + 56);
  v15 = *(v14 + 8);
  if ((v12 & 0x80000000) != 0 || v12 >= v15)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, v12);
  }

  v16 = *(v14 + 12 + 4 * v12);
  if ((a2 & 0x80000000) != 0 || v15 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, a2);
  }

  *(*(a1 + 56) + 12 + 4 * a2) = v16 + v8;
  v17 = *(a1 + 40);
  if (v17 - 3 == a2)
  {
    v18 = *(a1 + 48);
    v19 = *(v18 + 8);
    v20 = a2 + 2;
    v21 = a2 + 2;
    if (a2 + 2 < 0 || v20 >= v19)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v20);
    }

    v22 = *(v18 + 12 + 4 * v21);
    if ((v12 & 0x80000000) != 0 || v12 >= v19)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v12);
    }

    *(*(a1 + 48) + 12 + 4 * v12) = v22;
    v23 = *(a1 + 56);
    v24 = *(v23 + 8);
    if ((v21 & 0x80000000) != 0 || v21 >= v24)
    {
      IOSArray_throwOutOfBoundsWithMsg(v24, v21);
    }

    v25 = *(a1 + 56);
    v26 = *(v23 + 12 + 4 * v21);
    if ((v12 & 0x80000000) != 0 || v12 >= v24)
    {
      IOSArray_throwOutOfBoundsWithMsg(v24, v12);
    }

    *(v23 + 12 + 4 * v12) = v26;
    v17 = *(a1 + 40);
  }

  *(a1 + 40) = v17 - 1;
  v27 = *(a1 + 8);
  if (!v27)
  {
LABEL_38:
    JreThrowNullPointerException();
  }

  v28 = *(v27 + 8);
  if ((v13 & 0x80000000) != 0 || v13 >= v28)
  {
    IOSArray_throwOutOfBoundsWithMsg(v28, v13);
  }

  result = sub_10023B6A8(*(v27 + 24 + 8 * v13), *(a1 + 8), v6, v8, 0, *(a1 + 16));
  v30 = (v8 - result);
  if (v8 != result)
  {
    v31 = result;
    v32 = *(a1 + 8);
    v33 = *(v32 + 8);
    v34 = v6 + v8 - 1;
    if (v34 < 0 || v34 >= v33)
    {
      IOSArray_throwOutOfBoundsWithMsg(v33, v34);
    }

    result = sub_10023B3F4(*(v32 + 24 + 8 * v34), *(a1 + 8), v13, v16, v16 - 1, *(a1 + 16));
    if (result)
    {
      v35 = (v31 + v6);
      if (v30 <= result)
      {

        return sub_10023B940(a1, v35, v30, v13, result);
      }

      else
      {

        return sub_10023BFD4(a1, v35, v30, v13, result);
      }
    }
  }

  return result;
}

uint64_t sub_10023B3F4(uint64_t a1, uint64_t a2, int a3, int a4, int a5, void *a6)
{
  if (!a6 || !a2)
  {
    JreThrowNullPointerException();
  }

  v12 = *(a2 + 8);
  v13 = a5 + a3;
  v14 = a5 + a3;
  if (a5 + a3 < 0 || v13 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v13);
  }

  if ([a6 compareWithId:a1 withId:*(a2 + 24 + 8 * v14)] < 1)
  {
    v21 = a5 + 1;
    if (a5 + 1 <= 1)
    {
      v24 = 0;
      v23 = 1;
    }

    else
    {
      v22 = 0;
      v23 = 1;
      while (1)
      {
        v24 = v23;
        v25 = *(a2 + 8);
        v26 = v14 - v23;
        if (v26 < 0 || v26 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, v26);
        }

        if ([a6 compareWithId:a1 withId:*(a2 + 24 + 8 * v26)] > 0)
        {
          break;
        }

        if ((v24 & 0x40000000) != 0)
        {
          v23 = v21;
        }

        else
        {
          v23 = 2 * v24 + 1;
        }

        v22 = v24;
        if (v23 >= v21)
        {
          goto LABEL_36;
        }
      }

      v23 = v24;
      v24 = v22;
    }

LABEL_36:
    if (v23 >= v21)
    {
      v23 = v21;
    }

    v28 = a5 - v23;
    v29 = (a5 - v24);
  }

  else
  {
    v15 = a4 - a5;
    if (a4 - a5 < 2)
    {
      v18 = 0;
      v17 = 1;
    }

    else
    {
      v16 = 0;
      v17 = 1;
      while (1)
      {
        v18 = v17;
        v19 = *(a2 + 8);
        v20 = v17 + v14;
        if (v20 < 0 || v20 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, v20);
        }

        if ([a6 compareWithId:a1 withId:*(a2 + 24 + 8 * v20)] < 1)
        {
          break;
        }

        if ((v18 & 0x40000000) != 0)
        {
          v17 = v15;
        }

        else
        {
          v17 = 2 * v18 + 1;
        }

        v16 = v18;
        if (v17 >= v15)
        {
          goto LABEL_31;
        }
      }

      v17 = v18;
      v18 = v16;
    }

LABEL_31:
    if (v17 >= v15)
    {
      v27 = v15;
    }

    else
    {
      v27 = v17;
    }

    v28 = v18 + a5;
    v29 = (v27 + a5);
  }

  v30 = v28 + 1;
  while (v30 < v29)
  {
    v31 = v30 + ((v29 - v30) >> 1);
    v32 = *(a2 + 8);
    v33 = v31 + a3;
    if ((v31 + a3) < 0 || v33 >= v32)
    {
      IOSArray_throwOutOfBoundsWithMsg(v32, v33);
    }

    v34 = [a6 compareWithId:a1 withId:*(a2 + 24 + 8 * (v31 + a3))];
    if (v34 <= 0)
    {
      v29 = v31;
    }

    else
    {
      v29 = v29;
    }

    if (v34 > 0)
    {
      v30 = v31 + 1;
    }
  }

  return v29;
}

uint64_t sub_10023B6A8(uint64_t a1, uint64_t a2, int a3, int a4, int a5, void *a6)
{
  if (!a6 || !a2)
  {
    JreThrowNullPointerException();
  }

  v12 = *(a2 + 8);
  v13 = a5 + a3;
  v14 = a5 + a3;
  if (a5 + a3 < 0 || v13 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v13);
  }

  if (([a6 compareWithId:a1 withId:*(a2 + 24 + 8 * v14)] & 0x80000000) != 0)
  {
    v21 = a5 + 1;
    if (a5 + 1 < 2)
    {
      v22 = 0;
      v23 = 1;
    }

    else
    {
      v22 = 0;
      v23 = 1;
      while (1)
      {
        v24 = v23;
        v25 = *(a2 + 8);
        v26 = v14 - v23;
        if (v26 < 0 || v26 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, v26);
        }

        if (([a6 compareWithId:a1 withId:*(a2 + 24 + 8 * v26)] & 0x80000000) == 0)
        {
          break;
        }

        if ((v24 & 0x40000000) != 0)
        {
          v23 = v21;
        }

        else
        {
          v23 = 2 * v24 + 1;
        }

        v22 = v24;
        if (v23 >= v21)
        {
          goto LABEL_36;
        }
      }

      v23 = v24;
    }

LABEL_36:
    if (v23 >= v21)
    {
      v23 = v21;
    }

    v28 = a5 - v23;
    v29 = (a5 - v22);
  }

  else
  {
    v15 = a4 - a5;
    if (a4 - a5 < 2)
    {
      v16 = 0;
      v17 = 1;
    }

    else
    {
      v16 = 0;
      v17 = 1;
      while (1)
      {
        v18 = v17;
        v19 = *(a2 + 8);
        v20 = v17 + v14;
        if (v20 < 0 || v20 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, v20);
        }

        if (([a6 compareWithId:a1 withId:*(a2 + 24 + 8 * v20)] & 0x80000000) != 0)
        {
          break;
        }

        if ((v18 & 0x40000000) != 0)
        {
          v17 = v15;
        }

        else
        {
          v17 = 2 * v18 + 1;
        }

        v16 = v18;
        if (v17 >= v15)
        {
          goto LABEL_31;
        }
      }

      v17 = v18;
    }

LABEL_31:
    if (v17 >= v15)
    {
      v27 = v15;
    }

    else
    {
      v27 = v17;
    }

    v28 = v16 + a5;
    v29 = (v27 + a5);
  }

  v30 = v28 + 1;
  while (v30 < v29)
  {
    v31 = v30 + ((v29 - v30) >> 1);
    v32 = *(a2 + 8);
    v33 = v31 + a3;
    if ((v31 + a3) < 0 || v33 >= v32)
    {
      IOSArray_throwOutOfBoundsWithMsg(v32, v33);
    }

    if ([a6 compareWithId:a1 withId:*(a2 + 24 + 8 * (v31 + a3))] < 0)
    {
      v29 = v31;
    }

    else
    {
      v30 = v31 + 1;
      v29 = v29;
    }
  }

  return v29;
}

id sub_10023B940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = a3;
  v10 = *(a1 + 8);
  v11 = sub_10023C674(a1, a3);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, a2, v11, 0, v7);
  if (!v10)
  {
    goto LABEL_80;
  }

  LODWORD(v12) = a2 + 1;
  v13 = v10[2];
  if ((a4 & 0x80000000) != 0 || v13 <= a4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, a4);
  }

  IOSObjectArray_Set(v10, a2, *&v10[2 * a4 + 6]);
  v49 = a5 - 1;
  if (a5 == 1)
  {
    v18 = v11;
    v19 = 0;
    v20 = v10;
    v21 = (a2 + 1);
    goto LABEL_10;
  }

  v14 = (a4 + 1);
  if (v7 == 1)
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, (a4 + 1), v10, (a2 + 1), v49);
    if (v11)
    {
      v15 = a5 + a2;
      v16 = v11[2];
      if (v16 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, 0);
      }

      v17 = *(v11 + 3);
      goto LABEL_77;
    }

LABEL_80:
    JreThrowNullPointerException();
  }

  v50 = *(a1 + 16);
  if (!v50)
  {
    goto LABEL_80;
  }

  v23 = 0;
  v48 = a1;
  v51 = *(a1 + 24);
  v52 = v11;
LABEL_15:
  LODWORD(v24) = 0;
  v25 = 0;
  v26 = v12;
  do
  {
    v27 = v10[2];
    if ((v14 & 0x80000000) != 0 || v14 >= v27)
    {
      IOSArray_throwOutOfBoundsWithMsg(v27, v14);
    }

    if (!v11)
    {
      goto LABEL_80;
    }

    v28 = v11[2];
    if ((v23 & 0x80000000) != 0 || v23 >= v28)
    {
      IOSArray_throwOutOfBoundsWithMsg(v28, v23);
    }

    v12 = (v26 + 1);
    v29 = v26;
    if (([v50 compareWithId:*&v10[2 * v14 + 6] withId:*&v11[2 * v23 + 6]] & 0x80000000) != 0)
    {
      v32 = v10[2];
      if ((v14 & 0x80000000) != 0 || v14 >= v32)
      {
        IOSArray_throwOutOfBoundsWithMsg(v32, v14);
      }

      v33 = (v14 + 1);
      IOSObjectArray_Set(v10, v29, *&v10[2 * v14 + 6]);
      v24 = 0;
      if (!--v49)
      {
        v31 = v23;
LABEL_68:
        v38 = v12;
LABEL_69:
        v45 = v51;
        if (v51 <= 1)
        {
          v45 = 1;
        }

        *(v48 + 24) = v45;
        if (v7 == 1)
        {
          goto LABEL_74;
        }

        if (!v7)
        {
          v47 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Comparison method violates its general contract!");
          objc_exception_throw(v47);
        }

        v18 = v52;
        v19 = v31;
        v20 = v10;
        v21 = v38;
LABEL_10:

        return JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v18, v19, v20, v21, v7);
      }

      ++v25;
      v14 = (v14 + 1);
    }

    else
    {
      v30 = v11[2];
      if ((v23 & 0x80000000) != 0 || v23 >= v30)
      {
        IOSArray_throwOutOfBoundsWithMsg(v30, v23);
      }

      LODWORD(v31) = v23 + 1;
      IOSObjectArray_Set(v10, v26, *&v52[2 * v23 + 6]);
      v7 = (v7 - 1);
      if (v7 == 1)
      {
        v43 = v48;
        v34 = v49;
        goto LABEL_65;
      }

      v25 = 0;
      LODWORD(v24) = v24 + 1;
      v23 = (v23 + 1);
      v11 = v52;
    }

    v26 = v12;
  }

  while ((v25 | v24) < v51);
  v34 = v49;
  while (1)
  {
    v35 = v10[2];
    if ((v14 & 0x80000000) != 0 || v14 >= v35)
    {
      IOSArray_throwOutOfBoundsWithMsg(v35, v14);
    }

    v36 = sub_10023B6A8(*&v10[2 * v14 + 6], v11, v23, v7, 0, v50);
    if (v36)
    {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v11, v23, v10, v12, v36);
      v12 = (v36 + v12);
      v31 = (v36 + v23);
      v7 = (v7 - v36);
      if (v7 < 2)
      {
        v24 = v34;
        v33 = v14;
        goto LABEL_68;
      }
    }

    else
    {
      v31 = v23;
    }

    v37 = v10[2];
    if ((v14 & 0x80000000) != 0 || v14 >= v37)
    {
      IOSArray_throwOutOfBoundsWithMsg(v37, v14);
    }

    v38 = (v12 + 1);
    v33 = (v14 + 1);
    IOSObjectArray_Set(v10, v12, *&v10[2 * v14 + 6]);
    v34 = (v34 - 1);
    if (!v34)
    {
      v24 = 0;
      goto LABEL_69;
    }

    v39 = v52[2];
    if ((v31 & 0x80000000) != 0 || v31 >= v39)
    {
      IOSArray_throwOutOfBoundsWithMsg(v39, v31);
    }

    v40 = sub_10023B3F4(*&v52[2 * v31 + 6], v10, v14 + 1, v34, 0, v50);
    if (v40)
    {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, (v14 + 1), v10, (v12 + 1), v40);
      v38 = (v40 + v38);
      v14 = (v40 + v33);
      v34 = (v34 - v40);
      if (!v34)
      {
        v24 = 0;
        v33 = v14;
        goto LABEL_69;
      }
    }

    else
    {
      v14 = (v14 + 1);
    }

    v41 = v52[2];
    if ((v31 & 0x80000000) != 0 || v31 >= v41)
    {
      IOSArray_throwOutOfBoundsWithMsg(v41, v31);
    }

    v12 = (v38 + 1);
    v42 = v38;
    v23 = (v31 + 1);
    IOSObjectArray_Set(v10, v42, *&v52[2 * v31 + 6]);
    v7 = (v7 - 1);
    if (v7 == 1)
    {
      break;
    }

    --v51;
    v11 = v52;
    if (v36 <= 6 && v40 <= 6)
    {
      v49 = v34;
      v51 = (v51 & ~(v51 >> 31)) + 2;
      goto LABEL_15;
    }
  }

  LODWORD(v31) = v31 + 1;
  v43 = v48;
LABEL_65:
  v44 = v51;
  if (v51 <= 1)
  {
    v44 = 1;
  }

  *(v43 + 24) = v44;
  v38 = v12;
  v33 = v14;
  v24 = v34;
LABEL_74:
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, v33, v10, v38, v24);
  v15 = v24 + v38;
  v46 = v52[2];
  if ((v31 & 0x80000000) != 0 || v31 >= v46)
  {
    IOSArray_throwOutOfBoundsWithMsg(v46, v31);
  }

  v17 = *&v52[2 * v31 + 6];
LABEL_77:

  return IOSObjectArray_Set(v10, v15, v17);
}

id sub_10023BFD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = *(a1 + 8);
  v11 = sub_10023C674(a1, a5);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, a4, v11, 0, v5);
  if (!v10)
  {
    goto LABEL_78;
  }

  v56 = a1;
  v12 = a3 + a2;
  v13 = a3 + a2 - 1;
  v14 = v5 + a4;
  v15 = v5 + a4 - 1;
  v16 = v10[2];
  if (v13 < 0 || v13 >= v16)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16, (v12 - 1));
  }

  v17 = (v5 - 1);
  v18 = v14 - 2;
  IOSObjectArray_Set(v10, v15, *&v10[2 * v13 + 6]);
  v19 = (a3 - 1);
  if (a3 != 1)
  {
    if (v5 == 1)
    {
      v20 = v18 - v19;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, a2, v10, (v20 + 1), v19);
      if (v11)
      {
        v21 = v11[2];
        if (v17 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, v17);
        }

        v22 = *&v11[2 * v17 + 6];
        v23 = v10;
        v24 = v20;
LABEL_73:

        return IOSObjectArray_Set(v23, v24, v22);
      }
    }

    else
    {
      v59 = *(v56 + 16);
      if (v59 && v11)
      {
        v57 = a2;
        v58 = a3 - 1;
        v28 = (v12 - 2);
        v60 = *(v56 + 24);
        v61 = v11;
LABEL_16:
        v29 = 0;
        LODWORD(v30) = 0;
        v31 = v18;
        do
        {
          v32 = v11[2];
          if ((v17 & 0x80000000) != 0 || v17 >= v32)
          {
            IOSArray_throwOutOfBoundsWithMsg(v32, v17);
          }

          v33 = v10[2];
          if ((v28 & 0x80000000) != 0 || v28 >= v33)
          {
            IOSArray_throwOutOfBoundsWithMsg(v33, v28);
          }

          v18 = v31 - 1;
          v34 = v31;
          if (([v59 compareWithId:*&v11[2 * v17 + 6] withId:*&v10[2 * v28 + 6]] & 0x80000000) != 0)
          {
            v37 = v10[2];
            if ((v28 & 0x80000000) != 0 || v28 >= v37)
            {
              IOSArray_throwOutOfBoundsWithMsg(v37, v28);
            }

            LODWORD(v38) = v28 - 1;
            IOSObjectArray_Set(v10, v31, *&v10[2 * v28 + 6]);
            v30 = 0;
            if (!--v58)
            {
LABEL_64:
              LODWORD(v36) = v17;
              goto LABEL_65;
            }

            ++v29;
            v28 = (v28 - 1);
            v11 = v61;
          }

          else
          {
            v35 = v11[2];
            if ((v17 & 0x80000000) != 0 || v17 >= v35)
            {
              IOSArray_throwOutOfBoundsWithMsg(v35, v17);
            }

            LODWORD(v36) = v17 - 1;
            IOSObjectArray_Set(v10, v34, *&v11[2 * v17 + 6]);
            v5 = (v5 - 1);
            if (v5 == 1)
            {
LABEL_60:
              v51 = v60;
              if (v60 <= 1)
              {
                v51 = 1;
              }

              *(v56 + 24) = v51;
              v30 = v58;
              LODWORD(v38) = v28;
              goto LABEL_70;
            }

            v29 = 0;
            LODWORD(v30) = v30 + 1;
            v17 = (v17 - 1);
          }

          v31 = v18;
        }

        while ((v30 | v29) < v60);
        v36 = v17;
        v39 = v58;
        while (1)
        {
          v40 = v11[2];
          if ((v36 & 0x80000000) != 0 || v36 >= v40)
          {
            IOSArray_throwOutOfBoundsWithMsg(v40, v36);
          }

          v41 = sub_10023B6A8(*&v11[2 * v36 + 6], v10, v57, v39, v39 - 1, v59);
          v42 = (v39 - v41);
          if (v39 == v41)
          {
            v38 = v28;
          }

          else
          {
            v43 = v41;
            v18 -= v42;
            v38 = (v28 - v42);
            JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, (v38 + 1), v10, (v18 + 1), v42);
            if (!v43)
            {
              v30 = 0;
              goto LABEL_65;
            }

            v39 = v43;
          }

          v58 = v39;
          v44 = v61[2];
          if ((v36 & 0x80000000) != 0 || v36 >= v44)
          {
            IOSArray_throwOutOfBoundsWithMsg(v44, v36);
          }

          v45 = v18 - 1;
          v17 = (v36 - 1);
          IOSObjectArray_Set(v10, v18, *&v61[2 * v36 + 6]);
          v46 = v5 - 1;
          if (v5 == 2)
          {
            LODWORD(v28) = v38;
            LODWORD(v36) = v36 - 1;
            --v18;
            goto LABEL_60;
          }

          v47 = v10[2];
          if ((v38 & 0x80000000) != 0 || v38 >= v47)
          {
            IOSArray_throwOutOfBoundsWithMsg(v47, v38);
          }

          v48 = sub_10023B3F4(*&v10[2 * v38 + 6], v61, 0, v5 - 1, v5 - 2, v59);
          v5 = (v5 - 1);
          v49 = (v46 - v48);
          if (v49)
          {
            v36 = v48;
            v45 -= v49;
            v17 = (v17 - v49);
            JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v61, (v17 + 1), v10, (v45 + 1), v49);
            v5 = v36;
            if (v36 < 2)
            {
              break;
            }
          }

          v50 = v10[2];
          if ((v38 & 0x80000000) != 0 || v38 >= v50)
          {
            IOSArray_throwOutOfBoundsWithMsg(v50, v38);
          }

          v18 = v45 - 1;
          v28 = (v38 - 1);
          IOSObjectArray_Set(v10, v45, *&v10[2 * v38 + 6]);
          v39 = v58 - 1;
          if (v58 == 1)
          {
            v30 = 0;
            LODWORD(v38) = v38 - 1;
            goto LABEL_64;
          }

          --v60;
          v36 = v17;
          v11 = v61;
          if (v42 <= 6)
          {
            v36 = v17;
            if (v49 <= 6)
            {
              --v58;
              v60 = (v60 & ~(v60 >> 31)) + 2;
              goto LABEL_16;
            }
          }
        }

        v5 = v36;
        LODWORD(v36) = v17;
        v18 = v45;
        v30 = v58;
LABEL_65:
        v52 = v60;
        if (v60 <= 1)
        {
          v52 = 1;
        }

        *(v56 + 24) = v52;
        if (v5 != 1)
        {
          if (!v5)
          {
            v55 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Comparison method violates its general contract!");
            objc_exception_throw(v55);
          }

          v25 = (v18 - v5 + 1);
          v26 = v61;
          goto LABEL_10;
        }

LABEL_70:
        v53 = v18 - v30;
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, (v38 - v30 + 1), v10, (v53 + 1), v30);
        v54 = v61[2];
        if ((v36 & 0x80000000) != 0 || v36 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, v36);
        }

        v22 = *&v61[2 * v36 + 6];
        v23 = v10;
        v24 = v53;
        goto LABEL_73;
      }
    }

LABEL_78:
    JreThrowNullPointerException();
  }

  v25 = (v18 - v17);
  v26 = v11;
LABEL_10:

  return JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v26, 0, v10, v25, v5);
}

id sub_10023C674(uint64_t a1, int a2)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_10;
  }

  if (*(v2 + 8) >= a2)
  {
    return v2;
  }

  v4 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
  v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
  v6 = (v5 | (v5 >> 16)) + 1;
  if (v6 >= 0)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      a2 = JavaLangMath_minWithInt_withInt_(v6, *(v7 + 8) >> 1);
      goto LABEL_6;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_6:
  v8 = [IOSObjectArray arrayWithLength:a2 type:NSObject_class_()];
  objc_opt_class();
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(v3, v8);
  return *v3;
}

JavaLangClassNotFoundException *new_JavaLangClassNotFoundException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangClassNotFoundException alloc];
  JavaLangReflectiveOperationException_initWithNSString_withJavaLangThrowable_(v2, a1, 0);
  return v2;
}

_DWORD *sub_10023C998(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    objc_exception_throw(objc_alloc_init(JavaLangNegativeArraySizeException));
  }

  v2 = objc_opt_class();
  result = NSAllocateObject(v2, a1, 0);
  result[2] = a1;
  return result;
}

_DWORD *sub_10023CE14(int a1)
{
  if (a1 < 0)
  {
    objc_exception_throw(objc_alloc_init(JavaLangNegativeArraySizeException));
  }

  v2 = objc_opt_class();
  result = NSAllocateObject(v2, (2 * a1), 0);
  result[2] = a1;
  return result;
}

_DWORD *sub_10023D2E8(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    objc_exception_throw(objc_alloc_init(JavaLangNegativeArraySizeException));
  }

  v2 = objc_opt_class();
  result = NSAllocateObject(v2, a1, 0);
  result[2] = a1;
  return result;
}

_DWORD *sub_10023D8F4(int a1)
{
  if (a1 < 0)
  {
    objc_exception_throw(objc_alloc_init(JavaLangNegativeArraySizeException));
  }

  v2 = objc_opt_class();
  result = NSAllocateObject(v2, (2 * a1), 0);
  result[2] = a1;
  return result;
}

_DWORD *sub_10023DD58(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    objc_exception_throw(objc_alloc_init(JavaLangNegativeArraySizeException));
  }

  v2 = objc_opt_class();
  result = NSAllocateObject(v2, 4 * a1, 0);
  result[2] = a1;
  return result;
}

_DWORD *sub_10023E1BC(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    objc_exception_throw(objc_alloc_init(JavaLangNegativeArraySizeException));
  }

  v2 = objc_opt_class();
  result = NSAllocateObject(v2, 8 * a1, 0);
  result[2] = a1;
  return result;
}

_DWORD *sub_10023E620(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    objc_exception_throw(objc_alloc_init(JavaLangNegativeArraySizeException));
  }

  v2 = objc_opt_class();
  result = NSAllocateObject(v2, 4 * a1, 0);
  result[2] = a1;
  return result;
}

_DWORD *sub_10023EA88(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    objc_exception_throw(objc_alloc_init(JavaLangNegativeArraySizeException));
  }

  v2 = objc_opt_class();
  result = NSAllocateObject(v2, 8 * a1, 0);
  result[2] = a1;
  return result;
}

id JavaLangStringBuilder_initWithNSString_(void *a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaLangAbstractStringBuilder_initWithInt_(a1, [a2 length] + 16);

  return [a1 appendWithNSString:a2];
}

JavaLangStringBuilder *new_JavaLangStringBuilder_init()
{
  v0 = [JavaLangStringBuilder alloc];
  JavaLangAbstractStringBuilder_init(v0);
  return v0;
}

JavaLangStringBuilder *new_JavaLangStringBuilder_initWithInt_(unsigned int a1)
{
  v2 = [JavaLangStringBuilder alloc];
  JavaLangAbstractStringBuilder_initWithInt_(v2, a1);
  return v2;
}

JavaLangStringBuilder *new_JavaLangStringBuilder_initWithJavaLangCharSequence_(void *a1)
{
  v2 = [JavaLangStringBuilder alloc];
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  JavaLangStringBuilder_initWithNSString_(v2, [a1 description]);
  return v3;
}

JavaLangStringBuilder *new_JavaLangStringBuilder_initWithNSString_(void *a1)
{
  v2 = [JavaLangStringBuilder alloc];
  JavaLangStringBuilder_initWithNSString_(v2, a1);
  return v2;
}

void *JavaUtilConcurrentLocksReentrantLock_init(uint64_t a1)
{
  v2 = [JavaUtilConcurrentLocksReentrantLock_NonfairSync alloc];
  JavaUtilConcurrentLocksAbstractQueuedSynchronizer_init(v2, v3);

  return JreStrongAssignAndConsume((a1 + 8), v2);
}

id JavaUtilConcurrentLocksReentrantLock_initWithBoolean_(uint64_t a1, int a2)
{
  v3 = off_1003E8CF0;
  if (!a2)
  {
    v3 = off_1003E8CF8;
  }

  v4 = objc_alloc(*v3);
  JavaUtilConcurrentLocksAbstractQueuedSynchronizer_init(v4, v5);
  v6 = v4;

  return JreStrongAssign((a1 + 8), v6);
}

uint64_t sub_10023FCC0(void *a1, uint64_t a2)
{
  v4 = JavaLangThread_currentThread();
  v5 = [a1 getState];
  if (v5)
  {
    v6 = v5;
    if (v4 != [a1 getExclusiveOwnerThread])
    {
      return 0;
    }

    if ((v6 + a2) < 0)
    {
      v8 = new_JavaLangError_initWithNSString_(@"Maximum lock count exceeded");
      objc_exception_throw(v8);
    }

    [a1 setStateWithInt:v6 + a2];
  }

  else
  {
    result = [a1 compareAndSetStateWithInt:0 withInt:a2];
    if (!result)
    {
      return result;
    }

    [a1 setExclusiveOwnerThreadWithJavaLangThread:v4];
  }

  return 1;
}

JavaIoFilePermission *new_JavaIoFilePermission_initWithNSString_withNSString_()
{
  v0 = [JavaIoFilePermission alloc];
  JavaSecurityPermission_initWithNSString_(v0, &stru_100484358);
  return v0;
}

id JavaNioChannelsSpiAbstractSelector_initWithJavaNioChannelsSpiSelectorProvider_(id *a1, void *a2)
{
  JavaNioChannelsSelector_init();
  v4 = new_JavaUtilConcurrentAtomicAtomicBoolean_initWithBoolean_(1u);
  JreStrongAssignAndConsume(a1 + 1, v4);
  JreStrongAssign(a1 + 2, 0);
  v5 = new_JavaUtilHashSet_init();
  JreStrongAssignAndConsume(a1 + 3, v5);
  v6 = [JavaNioChannelsSpiAbstractSelector_WakeUpTask alloc];
  objc_storeWeak(&v6->this$0_, a1);
  JreStrongAssignAndConsume(a1 + 4, v6);

  return JreStrongAssign(a1 + 2, a2);
}

id JavaLangPackage_initWithNSString_withNSString_withNSString_withNSString_withNSString_withNSString_withNSString_withJavaNetURL_(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 2, a3);
  JreStrongAssign(a1 + 3, a4);
  JreStrongAssign(a1 + 4, a5);
  JreStrongAssign(a1 + 5, a6);
  JreStrongAssign(a1 + 6, a7);
  JreStrongAssign(a1 + 7, a8);

  return JreStrongAssign(a1 + 8, a9);
}

id JavaLangPackage_getPackageWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangPackage__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1002413C4();
  }

  SystemClassLoader = JavaLangClassLoader_getSystemClassLoader();
  if (!SystemClassLoader)
  {
    JreThrowNullPointerException();
  }

  return [SystemClassLoader getPackageWithNSString:a1];
}

id JavaLangPackage_getPackages()
{
  if ((atomic_load_explicit(JavaLangPackage__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1002413C4();
  }

  SystemClassLoader = JavaLangClassLoader_getSystemClassLoader();
  if (!SystemClassLoader)
  {
    JreThrowNullPointerException();
  }

  return [SystemClassLoader getPackages];
}

uint64_t JavaLangPackage_class_()
{
  if ((atomic_load_explicit(JavaLangPackage__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1002413C4();
  }

  if (qword_100555350 != -1)
  {
    sub_1002413D0();
  }

  return qword_100555348;
}

JavaIoNotSerializableException *new_JavaIoNotSerializableException_init()
{
  v0 = [JavaIoNotSerializableException alloc];
  JavaIoObjectStreamException_init(v0, v1);
  return v0;
}

uint64_t JavaLangDouble_compareWithDouble_withDouble_(double a1, double a2)
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  if (a1 > a2)
  {
    return 1;
  }

  if (a2 > a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1 != 0.0 && a1 == a2)
  {
    return 0;
  }

  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  v5 = *&a1;
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
    v5 = *&a1;
  }

  return (*&a2 >> 63) + (v5 >> 63);
}

uint64_t JavaLangDouble_doubleToLongBitsWithDouble_(double a1)
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  return *&a1;
}

uint64_t JavaLangDouble_doubleToRawLongBitsWithDouble_(double a1)
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  return *&a1;
}

BOOL JavaLangDouble_isInfiniteWithDouble_(double a1)
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  return fabs(a1) == INFINITY;
}

uint64_t JavaLangDouble_isNaNWithDouble_()
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  return 0;
}

double JavaLangDouble_longBitsToDoubleWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  return *&a1;
}

double JavaLangDouble_parseDoubleWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  return JavaLangStringToReal_parseDoubleWithNSString_(a1);
}

const __CFString *JavaLangDouble_toStringWithDouble_(double a1)
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  return JavaLangRealToString_doubleToStringWithDouble_(a1);
}

JavaLangDouble *JavaLangDouble_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  v2 = JavaLangDouble_parseDoubleWithNSString_(a1);

  return JavaLangDouble_valueOfWithDouble_(v2);
}

JavaLangDouble *JavaLangDouble_valueOfWithDouble_(double a1)
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  v2 = [JavaLangDouble alloc];
  v2->value_ = a1;

  return v2;
}

const __CFString *JavaLangDouble_toHexStringWithDouble_(double a1)
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  if (a1 == INFINITY)
  {
    return @"Infinity";
  }

  if (a1 == -INFINITY)
  {
    return @"-Infinity";
  }

  v3 = JavaLangDouble_doubleToLongBitsWithDouble_(a1);
  v4 = v3;
  v5 = (v3 >> 52) & 0x7FF;
  v6 = v3 & 0xFFFFFFFFFFFFFLL;
  if (!(v5 | v3 & 0xFFFFFFFFFFFFFLL))
  {
    if (v3 < 0)
    {
      return @"-0x0.0p0";
    }

    else
    {
      return @"0x0.0p0";
    }
  }

  v7 = new_JavaLangStringBuilder_initWithInt_(0xAu);
  v8 = v7;
  if (v4 < 0)
  {
    v9 = @"-0x";
  }

  else
  {
    v9 = @"0x";
  }

  [(JavaLangStringBuilder *)v7 appendWithNSString:v9];
  v11 = (v4 & 0xF) == 0 && v6 != 0;
  if (!v5)
  {
    [(JavaLangStringBuilder *)v8 appendWithNSString:@"0."];
    v21 = 13;
    if (v11)
    {
      v22 = v6;
      do
      {
        v6 = v22 >> 4;
        --v21;
        if (!v22)
        {
          break;
        }

        v23 = v22 & 0xF0;
        v22 >>= 4;
      }

      while (!v23);
    }

    v24 = JavaLangLong_toHexStringWithLong_(v6);
    v25 = v24;
    if (v6)
    {
      if (!v24)
      {
        goto LABEL_48;
      }

      if (v21 > [(NSString *)v24 length])
      {
        v26 = [(NSString *)v25 length];
        if (v21 != v26)
        {
          v27 = v26 - v21;
          do
          {
            [(JavaLangStringBuilder *)v8 appendWithChar:48];
            v19 = __CFADD__(v27++, 1);
          }

          while (!v19);
        }
      }
    }

    [(JavaLangStringBuilder *)v8 appendWithNSString:v25];
    v20 = @"p-1022";
    goto LABEL_45;
  }

  [(JavaLangStringBuilder *)v8 appendWithNSString:@"1."];
  v12 = 13;
  if (v11)
  {
    v13 = v6;
    do
    {
      v6 = v13 >> 4;
      --v12;
      if (!v13)
      {
        break;
      }

      v14 = v13 & 0xF0;
      v13 >>= 4;
    }

    while (!v14);
  }

  v15 = JavaLangLong_toHexStringWithLong_(v6);
  v16 = v15;
  if (!v6)
  {
    goto LABEL_29;
  }

  if (!v15)
  {
LABEL_48:
    JreThrowNullPointerException();
  }

  if (v12 > [(NSString *)v15 length])
  {
    v17 = [(NSString *)v16 length];
    if (v12 != v17)
    {
      v18 = v17 - v12;
      do
      {
        [(JavaLangStringBuilder *)v8 appendWithChar:48];
        v19 = __CFADD__(v18++, 1);
      }

      while (!v19);
    }
  }

LABEL_29:
  [(JavaLangStringBuilder *)v8 appendWithNSString:v16];
  [(JavaLangStringBuilder *)v8 appendWithChar:112];
  v20 = JavaLangLong_toStringWithLong_(v5 - 1023);
LABEL_45:
  [(JavaLangStringBuilder *)v8 appendWithNSString:v20];

  return [(JavaLangStringBuilder *)v8 description];
}

JavaLangDouble *new_JavaLangDouble_initWithDouble_(double a1)
{
  result = [JavaLangDouble alloc];
  result->value_ = a1;
  return result;
}

uint64_t JavaLangDouble_class_()
{
  if ((atomic_load_explicit(JavaLangDouble__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242234();
  }

  if (qword_100555360 != -1)
  {
    sub_100242240();
  }

  return qword_100555358;
}

id JavaNetHttpURLConnection_initWithJavaNetURL_(uint64_t a1, void *a2)
{
  JavaNetURLConnection_initWithJavaNetURL_(a1, a2);
  result = JreStrongAssign((a1 + 64), @"GET");
  *(a1 + 72) = -1;
  *(a1 + 88) = byte_100552238;
  *(a1 + 92) = -1;
  *(a1 + 96) = -1;
  *(a1 + 104) = -1;
  return result;
}

uint64_t JavaUtilSimpleTimeZone_initWithInt_withNSString_withInt_withInt_withInt_withInt_withInt_withInt_withInt_withInt_withInt_(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12)
{
  v17 = a2;
  JavaUtilTimeZone_init(a1, a2);
  a1[19] = 3600000;
  [a1 setIDWithNSString:a3];
  a1[6] = v17;
  if (a12 <= 0)
  {
    v34 = JreStrcat("$I", v19, v20, v21, v22, v23, v24, v25, @"Invalid daylightSavings: ");
    v35 = new_JavaLangIllegalArgumentException_initWithNSString_(v34);
    objc_exception_throw(v35);
  }

  a1[19] = a12;
  a1[8] = a4;
  a1[9] = a5;
  a1[10] = a6;
  a1[11] = a7;
  sub_1002442F8(a1, v19, v20, v21, v22, v23, v24, v25);
  a1[12] = a8;
  a1[13] = a9;
  a1[14] = a10;
  a1[15] = a11;

  return sub_1002440B4(a1, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t sub_100243978(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result >= 0xC)
  {
    v8 = @"Invalid month: ";
    goto LABEL_8;
  }

  if ((a2 - 8) <= 0xFFFFFFF8)
  {
    v8 = @"Invalid day of week: ";
    goto LABEL_8;
  }

  if (a3 >= 0x5265C00)
  {
    v8 = @"Invalid time: ";
LABEL_8:
    v9 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, v8);
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(v9);
    objc_exception_throw(v10);
  }

  return result;
}

uint64_t sub_100243A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 < 1)
  {
    goto LABEL_11;
  }

  if ((atomic_load_explicit(JavaUtilGregorianCalendar__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1002447B4();
  }

  if (!JavaUtilGregorianCalendar_DaysInMonth_)
  {
    JreThrowNullPointerException();
  }

  result = *(JavaUtilGregorianCalendar_DaysInMonth_ + 8);
  if ((a1 & 0x80000000) != 0 || result <= a1)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, a1);
  }

  if (*(JavaUtilGregorianCalendar_DaysInMonth_ + 12 + a1) < v8)
  {
LABEL_11:
    v11 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Invalid day of month: ");
    v12 = new_JavaLangIllegalArgumentException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  return result;
}

uint64_t sub_1002440B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(result + 56);
  if (v9)
  {
    if (v9 < 0)
    {
      *(result + 56) = -v9;
      v11 = *(result + 52);
      if (v11 < 0)
      {
        *(result + 52) = -v11;
        v10 = 4;
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 1;
  }

  *(result + 68) = v10;
  v12 = *(result + 36);
  if (v12)
  {
    LOBYTE(v12) = *(result + 52) != 0;
  }

  *(result + 72) = v12;
  if (*(result + 52))
  {
    v13 = *(result + 48);
    if (v8[17] == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v8[14];
    }

    result = sub_100243978(v13, v14, v8[15], a4, a5, a6, a7, a8);
    if (v8[17] == 2)
    {
      if (v8[13] - 6 <= 0xFFFFFFF4)
      {
        v22 = JreStrcat("$I", v15, v16, v17, v18, v19, v20, v21, @"Day of week in month: ");
        v23 = new_JavaLangIllegalArgumentException_initWithNSString_(v22);
        objc_exception_throw(v23);
      }
    }

    else
    {
      result = sub_100243A00(v8[12], v8[13], v16, v17, v18, v19, v20, v21);
    }
  }

  if (v8[17] != 1)
  {
    --v8[14];
  }

  return result;
}

uint64_t sub_1002442F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(result + 40);
  if (v9)
  {
    if (v9 < 0)
    {
      *(result + 40) = -v9;
      v11 = *(result + 36);
      if (v11 < 0)
      {
        *(result + 36) = -v11;
        v10 = 4;
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 1;
  }

  *(result + 64) = v10;
  v12 = *(result + 36);
  if (v12)
  {
    LOBYTE(v12) = *(result + 52) != 0;
  }

  *(result + 72) = v12;
  if (*(result + 36))
  {
    v13 = *(result + 32);
    if (v8[16] == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v8[10];
    }

    result = sub_100243978(v13, v14, v8[11], a4, a5, a6, a7, a8);
    if (v8[16] == 2)
    {
      if (v8[9] - 6 <= 0xFFFFFFF4)
      {
        v22 = JreStrcat("$I", v15, v16, v17, v18, v19, v20, v21, @"Day of week in month: ");
        v23 = new_JavaLangIllegalArgumentException_initWithNSString_(v22);
        objc_exception_throw(v23);
      }
    }

    else
    {
      result = sub_100243A00(v8[8], v8[9], v16, v17, v18, v19, v20, v21);
    }
  }

  if (v8[16] != 1)
  {
    --v8[10];
  }

  return result;
}

JavaUtilSimpleTimeZone *new_JavaUtilSimpleTimeZone_initWithInt_withNSString_(int a1, uint64_t a2)
{
  v4 = [JavaUtilSimpleTimeZone alloc];
  JavaUtilTimeZone_init();
  v4->dstSavings_ = 3600000;
  [(JavaUtilTimeZone *)v4 setIDWithNSString:a2];
  v4->rawOffset_ = a1;
  return v4;
}

__CFString *sub_1002449F0(uint64_t a1, void *a2)
{
  v4 = [a1 charset];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v4)
    {
      v13 = new_JavaNioCharsetUnsupportedCharsetException_initWithNSString_([v4 name]);
      objc_exception_throw(v13);
    }

    goto LABEL_18;
  }

  v5 = *(a1 + 36);
  if (v5)
  {
    if (!a2)
    {
      goto LABEL_18;
    }

    v6 = *(v5 + 8);
    v7 = +[IOSByteArray arrayWithLength:](IOSByteArray, "arrayWithLength:", ([a2 remaining] + v6));
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 36), 0, v7, 0, *(*(a1 + 36) + 8));
    JreStrongAssign((a1 + 36), 0);
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_18;
    }

    v7 = +[IOSByteArray arrayWithLength:](IOSByteArray, "arrayWithLength:", [a2 remaining]);
    v6 = 0;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  [a2 getWithByteArray:v7 withInt:v6 withInt:(v7->super.size_ - v6)];
  objc_opt_class();
  if (!v4)
  {
    goto LABEL_18;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v8 = sub_100244BD8(v7, [v4 nsEncoding]);
  if (!v8)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v9 = v8;
  if ([(__CFString *)v8 isEmpty])
  {
    v10 = (a1 + 36);
    v11 = v7;
  }

  else
  {
    v10 = (a1 + 36);
    v11 = 0;
  }

  JreStrongAssign(v10, v11);
  return v9;
}

const __CFString *sub_100244BD8(uint64_t a1, uint64_t a2)
{
  result = [[NSString alloc] initWithBytes:a1 + 12 length:*(a1 + 8) encoding:a2];
  if (!result)
  {
    return &stru_100484358;
  }

  return result;
}

JavaNioCharsetIOSCharsetDecoder *new_JavaNioCharsetIOSCharsetDecoder_initWithJavaNioCharsetCharset_(void *a1)
{
  v2 = [JavaNioCharsetIOSCharsetDecoder alloc];
  JavaNioCharsetCharsetDecoder_initWithJavaNioCharsetCharset_withFloat_withFloat_(v2, a1, 1.0, 4.0);
  return v2;
}

JavaNioBufferUnderflowException *new_JavaNioBufferUnderflowException_init()
{
  v0 = [JavaNioBufferUnderflowException alloc];
  JavaLangRuntimeException_init(v0, v1);
  return v0;
}

JavaUtilPropertyResourceBundle *JavaUtilResourceBundle_getBundleWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247058();
  }

  SystemClassLoader = JavaLangClassLoader_getSystemClassLoader();
  if (!SystemClassLoader)
  {
    SystemClassLoader = +[JavaUtilResourceBundle getLoader]_0();
  }

  Default = JavaUtilLocale_getDefault();

  return JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_withJavaLangClassLoader_(a1, Default, SystemClassLoader);
}

JavaUtilPropertyResourceBundle *JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_(uint64_t a1, JavaUtilLocale *a2)
{
  if ((atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247058();
  }

  SystemClassLoader = JavaLangClassLoader_getSystemClassLoader();
  if (!SystemClassLoader)
  {
    SystemClassLoader = +[JavaUtilResourceBundle getLoader]_0();
  }

  return JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_withJavaLangClassLoader_(a1, a2, SystemClassLoader);
}

JavaUtilPropertyResourceBundle *JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_withJavaLangClassLoader_(uint64_t a1, JavaUtilLocale *a2, __CFString *a3)
{
  if (atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire))
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_15:
    v15 = @"loader == null";
    goto LABEL_17;
  }

  sub_100247058();
  if (!a3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (!a1)
  {
    v15 = @"bundleName == null";
LABEL_17:
    v16 = new_JavaLangNullPointerException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  Default = JavaUtilLocale_getDefault();
  if (!qword_100555388)
  {
    goto LABEL_13;
  }

  if (([qword_100555388 isEqual:Default] & 1) == 0)
  {
    if (!qword_100555380)
    {
      goto LABEL_13;
    }

    [qword_100555380 clear];
    JreStrongAssign(&qword_100555388, Default);
  }

  if (!a2)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  if ([(JavaUtilLocale *)a2 isEqual:Default]|| (result = sub_10024585C(0, a1, a2, a3)) == 0)
  {
    result = sub_10024585C(1, a1, Default, a3);
    if (!result)
    {
      v17 = JreStrcat("$C@", v8, v9, v10, v11, v12, v13, v14, a1);
      sub_100244FE0(v17, &stru_100484358, v18, v19, v20, v21, v22, v23);
    }
  }

  return result;
}

void sub_100244FE0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v10 = JreStrcat("$$$$C", a2, a3, a4, a5, a6, a7, a8, @"Can't find resource for bundle '");
  v11 = new_JavaUtilMissingResourceException_initWithNSString_withNSString_withNSString_(v10, a1, a2);
  objc_exception_throw(v11);
}

void *JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilResourceBundle_Control_(uint64_t a1, void *a2)
{
  if ((atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247058();
  }

  Default = JavaUtilLocale_getDefault();
  v5 = +[JavaUtilResourceBundle getLoader]_0();

  return JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_withJavaLangClassLoader_withJavaUtilResourceBundle_Control_(a1, Default, v5, a2);
}

void *JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_withJavaUtilResourceBundle_Control_(uint64_t a1, uint64_t a2, void *a3)
{
  if ((atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247058();
  }

  v6 = +[JavaUtilResourceBundle getLoader]_0();

  return JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_withJavaLangClassLoader_withJavaUtilResourceBundle_Control_(a1, a2, v6, a3);
}

void *JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_withJavaLangClassLoader_withJavaUtilResourceBundle_Control_(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire))
  {
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_100247058();
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  v8 = [a4 toBundleNameWithNSString:a1 withJavaUtilLocale:a2];
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = @"null";
  }

  v10 = sub_100245C0C(v9);
  if (!v10)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v11 = v10;
  v12 = [(JavaUtilHashtable *)v10 getWithId:v8];
  if (v12 && ((v13 = [a4 getTimeToLiveWithNSString:a1 withJavaUtilLocale:a2], v13 == -2) || !v13 || (v21 = v13 + v12[3], v21 < JavaLangSystem_currentTimeMillis())))
  {
    if (qword_100555370 == v12)
    {
LABEL_19:
      v24 = JreStrcat("$C@", v14, v15, v16, v17, v18, v19, v20, v8);
      v25 = new_JavaUtilMissingResourceException_initWithNSString_withNSString_withNSString_(0, v24, off_100552248);
      objc_exception_throw(v25);
    }
  }

  else
  {
    v22 = sub_100245304(a1, a2, a3, a4, v12 != 0, v12);
    if (!v22)
    {
      [(JavaUtilHashtable *)v11 putWithId:v8 withId:qword_100555370];
      goto LABEL_19;
    }

    v12 = v22;
    [(JavaUtilHashtable *)v11 putWithId:v8 withId:v22];
    v12[3] = JavaLangSystem_currentTimeMillis();
  }

  return v12;
}

uint64_t sub_100245304(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if ((atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247058();
  }

  if (!a4)
  {
    JreThrowNullPointerException();
  }

  obj = [a4 getCandidateLocalesWithNSString:a1 withJavaUtilLocale:a2];
  if (!obj)
  {
    goto LABEL_38;
  }

  v10 = [a4 getFormatsWithNSString:a1];
  v27 = v10;
  if ((atomic_load_explicit(JavaUtilResourceBundle_Control__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247064();
    v10 = v27;
  }

  if (JavaUtilResourceBundle_Control_FORMAT_CLASS_ == v10)
  {
    goto LABEL_38;
  }

  if ((atomic_load_explicit(JavaUtilResourceBundle_Control__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247064();
    v10 = v27;
  }

  if (JavaUtilResourceBundle_Control_FORMAT_PROPERTIES_ == v10)
  {
    goto LABEL_38;
  }

  if ((atomic_load_explicit(JavaUtilResourceBundle_Control__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247064();
    v10 = v27;
  }

  if (JavaUtilResourceBundle_Control_FORMAT_DEFAULT_ == v10)
  {
LABEL_38:
    v19 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v19);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v24)
  {
    v23 = *v33;
    do
    {
      v25 = 0;
      v11 = v27;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(obj);
          v11 = v27;
        }

        v12 = *(*(&v32 + 1) + 8 * v25);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        if (!v11)
        {
          JreThrowNullPointerException();
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v13)
        {
          v14 = *v29;
LABEL_22:
          v15 = 0;
          while (1)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v27);
            }

            if (a5 ? [a4 newBundleWithNSString:a1 withJavaUtilLocale:v12 withNSString:*(*(&v28 + 1) + 8 * v15) withJavaLangClassLoader:a3 withBoolean:{objc_msgSend(a4, "needsReloadWithNSString:withJavaUtilLocale:withNSString:withJavaLangClassLoader:withJavaUtilResourceBundle:withLong:", a1, v12, *(*(&v28 + 1) + 8 * v15), a3, a6, JavaLangSystem_currentTimeMillis())}] : objc_msgSend(a4, "newBundleWithNSString:withJavaUtilLocale:withNSString:withJavaLangClassLoader:withBoolean:", a1, v12, *(*(&v28 + 1) + 8 * v15), a3, 0))
            {
              break;
            }

            if (v13 == ++v15)
            {
              v13 = [v27 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v13)
              {
                goto LABEL_22;
              }

              break;
            }
          }
        }

        v25 = v25 + 1;
        v11 = v27;
      }

      while (v25 != v24);
      v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v24);
  }

  v21 = 0;
  v17 = [a4 getFallbackLocaleWithNSString:a1 withJavaUtilLocale:a2];
  if (v17)
  {
    return sub_100245304(a1, v17, a3, a4, a5, a6);
  }

  return v21;
}

id sub_10024575C(void *a1, void *a2)
{
  while (1)
  {
    v3 = a1;
    result = [a1 handleGetObjectWithNSString:a2];
    if (result)
    {
      break;
    }

    a1 = v3[1];
    if (!a1)
    {
      v5 = [objc_msgSend(v3 "getClass")];
      sub_100244FE0(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  return result;
}

JavaUtilPropertyResourceBundle *sub_10024585C(char a1, uint64_t a2, JavaUtilLocale *a3, __CFString *a4)
{
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = @"null";
  }

  while (1)
  {
    if (atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire))
    {
      if (!a3)
      {
        goto LABEL_50;
      }
    }

    else
    {
      sub_100247058();
      if (!a3)
      {
        goto LABEL_50;
      }
    }

    v8 = [(JavaUtilLocale *)a3 description];
    if (!v8)
    {
      goto LABEL_50;
    }

    v16 = a2;
    if (![(NSString *)v8 isEmpty])
    {
      v16 = JreStrcat("$C$", v9, v10, v11, v12, v13, v14, v15, a2);
    }

    v17 = sub_100245C0C(v7);
    if (!v17)
    {
      goto LABEL_50;
    }

    v18 = v17;
    v19 = [(JavaUtilHashtable *)v17 getWithId:v16];
    if (!v19)
    {
      break;
    }

    if (v19 == qword_100555378)
    {
      return 0;
    }

    if (v19 != qword_100555370 || (a1 & 1) == 0)
    {
      if (v19 == qword_100555370)
      {
        return 0;
      }

      else
      {
        return v19;
      }
    }

    a3 = sub_100245CEC(a3);
    a1 = 1;
    if (!a3)
    {
      return 0;
    }
  }

  v20 = IOSClass_forName_initialize_classLoader_(v16, 1, a4);
  if ([JavaUtilResourceBundle_class_() isAssignableFrom:v20])
  {
    if (!v20)
    {
      JreThrowNullPointerException();
    }

    v21 = [v20 newInstance];
    objc_opt_class();
    if (v21)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      JreStrongAssign(&v21->super.locale_, a3);
      v22 = sub_100245CEC(a3);
LABEL_34:
      if (v22)
      {
        v35 = sub_10024585C(a1 & 1, a2, v22, a4);
        if (v35)
        {
          [(JavaUtilResourceBundle *)v21 setParentWithJavaUtilResourceBundle:v35];
        }
      }

      goto LABEL_44;
    }
  }

  v23 = [(__CFString *)v16 replace:46 withChar:47];
  v31 = JreStrcat("$$", v24, v25, v26, v27, v28, v29, v30, v23);
  if (a4)
  {
    SystemResourceAsStreamWithNSString = [(__CFString *)a4 getResourceAsStreamWithNSString:v31];
  }

  else
  {
    SystemResourceAsStreamWithNSString = JavaLangClassLoader_getSystemResourceAsStreamWithNSString_(v31);
  }

  v33 = SystemResourceAsStreamWithNSString;
  if (SystemResourceAsStreamWithNSString)
  {
    if ((atomic_load_explicit(JavaNioCharsetCharsets__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    v34 = new_JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharset_(v33, JavaNioCharsetCharsets_UTF_8_);
    v21 = new_JavaUtilPropertyResourceBundle_initWithJavaIoReader_(v34);
    JreStrongAssign(&v21->super.locale_, a3);
    LibcoreIoIoUtils_closeQuietlyWithJavaLangAutoCloseable_(v33);
    v22 = sub_100245CEC(a3);
    if (v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v22 = sub_100245CEC(a3);
  }

  if (v22)
  {
    if (a1)
    {
      goto LABEL_42;
    }

    v36 = [(JavaUtilLocale *)v22 description];
    if (!v36)
    {
LABEL_50:
      JreThrowNullPointerException();
    }

    if (![(NSString *)v36 isEmpty])
    {
LABEL_42:
      v37 = sub_10024585C(a1 & 1, a2, v22, a4);
      if (v37)
      {
        v21 = v37;
LABEL_44:
        [(JavaUtilHashtable *)v18 putWithId:v16 withId:v21];
        return v21;
      }
    }
  }

  v38 = &qword_100555378;
  if ((a1 & 1) == 0)
  {
    v38 = &qword_100555370;
  }

  [(JavaUtilHashtable *)v18 putWithId:v16 withId:*v38];
  return 0;
}

void sub_100245BD8(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 4)
  {
    objc_end_catch();
  }

  JUMPOUT(0x100245AA8);
}

JavaUtilHashtable *sub_100245C0C(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247058();
  }

  v2 = qword_100555380;
  objc_sync_enter(qword_100555380);
  if (!qword_100555380)
  {
    JreThrowNullPointerException();
  }

  v3 = [qword_100555380 getWithId:a1];
  if (!v3)
  {
    v3 = new_JavaUtilHashtable_init();
    [qword_100555380 putWithId:a1 withId:v3];
  }

  objc_sync_exit(v2);
  return v3;
}

JavaUtilLocale *sub_100245CEC(void *a1)
{
  if (atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_100247058();
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  v2 = [a1 getLanguage];
  v3 = [a1 getCountry];
  v4 = [a1 getVariant];
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4;
  if (![(__CFString *)v4 isEmpty])
  {
    v5 = &stru_100484358;
    goto LABEL_13;
  }

  if (!v3)
  {
    goto LABEL_17;
  }

  if (![(__CFString *)v3 isEmpty])
  {
    v3 = &stru_100484358;
    goto LABEL_13;
  }

  if (!v2)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  if (([(__CFString *)v2 isEmpty]& 1) != 0)
  {
    return 0;
  }

  v2 = &stru_100484358;
LABEL_13:
  v7 = new_JavaUtilLocale_initWithNSString_withNSString_withNSString_(v2, v3, v5);

  return v7;
}

id JavaUtilResourceBundle_clearCacheWithJavaLangClassLoader_(uint64_t a1)
{
  if (atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"loader == null");
    objc_exception_throw(v4);
  }

  sub_100247058();
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = qword_100555380;
  if (!qword_100555380)
  {
    JreThrowNullPointerException();
  }

  return [v2 removeWithId:a1];
}

id JavaUtilResourceBundle_clearCache()
{
  if ((atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247058();
  }

  v0 = qword_100555380;
  if (!qword_100555380)
  {
    JreThrowNullPointerException();
  }

  SystemClassLoader = JavaLangClassLoader_getSystemClassLoader();

  return [v0 removeWithId:SystemClassLoader];
}

uint64_t JavaUtilResourceBundle_class_()
{
  if ((atomic_load_explicit(&JavaUtilResourceBundle__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247058();
  }

  if (qword_100555398 != -1)
  {
    sub_100247070();
  }

  return qword_100555390;
}

id JavaUtilResourceBundle_Control_init(uint64_t a1)
{
  v2 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&JavaUtilResourceBundle_Control_listClass_, v2);
  [JavaUtilResourceBundle_Control_listClass_ addWithId:JavaUtilResourceBundle_Control_JAVACLASS_];
  [JavaUtilResourceBundle_Control_listClass_ addWithId:JavaUtilResourceBundle_Control_JAVAPROPERTIES_];
  v3 = JavaUtilCollections_unmodifiableListWithJavaUtilList_(JavaUtilResourceBundle_Control_listClass_);

  return JreStrongAssign((a1 + 8), v3);
}

uint64_t JavaUtilResourceBundle_Control_getControlWithJavaUtilList_(void *a1)
{
  if (atomic_load_explicit(JavaUtilResourceBundle_Control__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  sub_100247064();
  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = [a1 size];
  if (v2 == 2)
  {
    if ([a1 isEqual:JavaUtilResourceBundle_Control_FORMAT_DEFAULT_])
    {
      v3 = &qword_1005553B0;
      return *v3;
    }

LABEL_14:
    v5 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v5);
  }

  if (v2 != 1)
  {
    goto LABEL_14;
  }

  if (([a1 containsWithId:JavaUtilResourceBundle_Control_JAVACLASS_] & 1) == 0)
  {
    if ([a1 containsWithId:JavaUtilResourceBundle_Control_JAVAPROPERTIES_])
    {
      v3 = &qword_1005553A0;
      return *v3;
    }

    goto LABEL_14;
  }

  v3 = &qword_1005553A8;
  return *v3;
}

uint64_t JavaUtilResourceBundle_Control_getNoFallbackControlWithJavaUtilList_(void *a1)
{
  if (atomic_load_explicit(JavaUtilResourceBundle_Control__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  sub_100247064();
  if (!a1)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = [a1 size];
  if (v2 == 2)
  {
    if ([a1 isEqual:JavaUtilResourceBundle_Control_FORMAT_DEFAULT_])
    {
      v3 = &qword_1005553C8;
      if (atomic_load_explicit(&JavaUtilResourceBundle_NoFallbackControl__initialized, memory_order_acquire))
      {
        return *v3;
      }

      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (v2 != 1)
  {
    goto LABEL_16;
  }

  if (![a1 containsWithId:JavaUtilResourceBundle_Control_JAVACLASS_])
  {
    if ([a1 containsWithId:JavaUtilResourceBundle_Control_JAVAPROPERTIES_])
    {
      v3 = &qword_1005553C0;
      if (atomic_load_explicit(&JavaUtilResourceBundle_NoFallbackControl__initialized, memory_order_acquire))
      {
        return *v3;
      }

      goto LABEL_7;
    }

LABEL_16:
    v5 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v5);
  }

  v3 = &qword_1005553B8;
  if ((atomic_load_explicit(&JavaUtilResourceBundle_NoFallbackControl__initialized, memory_order_acquire) & 1) == 0)
  {
LABEL_7:
    objc_opt_class();
  }

  return *v3;
}

NSString *sub_10024684C(void *a1, uint64_t a2)
{
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"suffix == null");
    objc_exception_throw(v5);
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = new_JavaLangStringBuilder_initWithNSString_([a1 replace:46 withChar:47]);
  [(JavaLangStringBuilder *)v3 appendWithChar:46];
  [(JavaLangStringBuilder *)v3 appendWithNSString:a2];

  return [(JavaLangStringBuilder *)v3 description];
}

id sub_100246D90(uint64_t a1, uint64_t a2)
{
  JavaUtilResourceBundle_Control_init(a1);
  if ((atomic_load_explicit(JavaUtilResourceBundle_Control__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247064();
  }

  v4 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&JavaUtilResourceBundle_Control_listClass_, v4);
  if ((atomic_load_explicit(JavaUtilResourceBundle_Control__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247064();
  }

  [JavaUtilResourceBundle_Control_listClass_ addWithId:a2];
  if ((atomic_load_explicit(JavaUtilResourceBundle_Control__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100247064();
  }

  v5 = JavaUtilCollections_unmodifiableListWithJavaUtilList_(JavaUtilResourceBundle_Control_listClass_);

  return JreStrongAssign((a1 + 8), v5);
}

void *JreStringBuilder_initWithCapacity(uint64_t a1, int a2)
{
  result = malloc_type_malloc(2 * a2, 0x1000040BDFB0063uLL);
  *a1 = result;
  if (!result)
  {
    sub_100248B50();
  }

  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  return result;
}

void *JavaLangAbstractStringBuilder_init(uint64_t a1)
{
  result = malloc_type_malloc(0x20uLL, 0x1000040BDFB0063uLL);
  *(a1 + 8) = result;
  if (!result)
  {
    sub_100248B50();
  }

  *(a1 + 16) = 16;
  return result;
}

void *JavaLangAbstractStringBuilder_initWithInt_(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v5 = [[JavaLangNegativeArraySizeException alloc] initWithNSString:JavaLangInteger_toStringWithInt_(a2)];
    objc_exception_throw(v5);
  }

  result = malloc_type_malloc(2 * a2, 0x1000040BDFB0063uLL);
  *(a1 + 8) = result;
  if (!result)
  {
    sub_100248B50();
  }

  *(a1 + 16) = a2;
  return result;
}

id JavaLangAbstractStringBuilder_initWithNSString_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 length];
  *(a1 + 20) = v4;
  v5 = v4 + 16;
  v6 = malloc_type_malloc(2 * (v4 + 16), 0x1000040BDFB0063uLL);
  *(a1 + 8) = v6;
  if (!v6)
  {
    sub_100248B50();
  }

  *(a1 + 16) = v5;
  v7 = *(a1 + 20);

  return [a2 getCharacters:v6 range:{0, v7}];
}

double JreStringBuilder_appendNull(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3 = v2 + 4;
  if (v2 + 4 > *(a1 + 8))
  {
    sub_1002476A4(a1, v3);
    v2 = *(a1 + 12);
    v3 = v2 + 4;
  }

  result = 1.2461147e-306;
  *(*a1 + 2 * v2) = 0x6C006C0075006ELL;
  *(a1 + 12) = v3;
  return result;
}

void *sub_1002476A4(uint64_t a1, int a2)
{
  if (*(a1 + 8) + (*(a1 + 8) >> 1) + 2 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 8) + (*(a1 + 8) >> 1) + 2;
  }

  result = malloc_type_realloc(*a1, 2 * v3, 0x1000040BDFB0063uLL);
  *a1 = result;
  if (!result)
  {
    sub_100248B50();
  }

  *(a1 + 8) = v3;
  return result;
}

void *JreStringBuilder_appendBuffer(uint64_t a1, void *__src, int a3)
{
  v6 = *(a1 + 12);
  v7 = v6 + a3;
  if (v6 + a3 > *(a1 + 8))
  {
    sub_1002476A4(a1, v6 + a3);
    v6 = *(a1 + 12);
  }

  result = memcpy((*a1 + 2 * v6), __src, 2 * a3);
  *(a1 + 12) = v7;
  return result;
}

void *JreStringBuilder_appendCharArray(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v3 = *(a2 + 8);
  v4 = (a2 + 12);

  return JreStringBuilder_appendBuffer(a1, v4, v3);
}

void *JreStringBuilder_appendCharArraySubset(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a2 + 8), a3, a4);

  return JreStringBuilder_appendBuffer(a1, (a2 + 12 + 2 * a3), a4);
}

_DWORD *JreStringBuilder_appendChar(_DWORD *result, __int16 a2)
{
  v3 = result;
  v4 = result[3];
  if (v4 == result[2])
  {
    result = sub_1002476A4(result, v4 + 1);
    v4 = v3[3];
  }

  v5 = *v3;
  v3[3] = v4 + 1;
  *(v5 + 2 * v4) = a2;
  return result;
}

double JreStringBuilder_appendString(uint64_t a1, CFStringRef theString)
{
  if (theString)
  {
    Length = CFStringGetLength(theString);
    v5 = *(a1 + 12);
    v6 = v5 + Length;
    if (v5 + Length > *(a1 + 8))
    {
      sub_1002476A4(a1, v6);
      v5 = *(a1 + 12);
    }

    v9.length = Length;
    v9.location = 0;
    CFStringGetCharacters(theString, v9, (*a1 + 2 * v5));
    *(a1 + 12) = v6;
  }

  else
  {

    return JreStringBuilder_appendNull(a1);
  }

  return result;
}

uint64_t JreStringBuilder_appendCharSequence(uint64_t a1, __CFString *a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = @"null";
  }

  v5 = a4 - a3;
  if (a4 < a3 || (v7 = a3, ((a4 | a3) & 0x80000000) != 0) || [(__CFString *)v4 length]< a4)
  {
    objc_exception_throw(objc_alloc_init(JavaLangIndexOutOfBoundsException));
  }

  v9 = *(a1 + 12);
  v10 = v9 + v5;
  if (v9 + v5 > *(a1 + 8))
  {
    sub_1002476A4(a1, v9 + v5);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    result = [(__CFString *)v4 getCharacters:*a1 + 2 * *(a1 + 12) range:v7, v5];
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      result = memcpy((*a1 + 2 * *(a1 + 12)), (v4->info + 2 * v7), 2 * v5);
    }

    else if (a4 > v7)
    {
      v12 = *(a1 + 12);
      do
      {
        result = [(__CFString *)v4 charAtWithInt:v7];
        *(*a1 + 2 * v12++) = result;
        v7 = (v7 + 1);
      }

      while (a4 != v7);
    }
  }

  *(a1 + 12) = v10;
  return result;
}

_DWORD *JreStringBuilder_delete(_DWORD *result, uint64_t a2, int a3)
{
  v3 = result;
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  v4 = result[3];
  if (v4 < a3)
  {
    a3 = result[3];
  }

  v5 = a2 - a3;
  if (a2 != a3)
  {
    if (a2 < a3)
    {
      if (v4 - a3 >= 0)
      {
        result = memmove((*result + 2 * a2), (*result + 2 * a3), (2 * (v4 - a3)));
        v4 = v3[3];
      }

      v3[3] = v5 + v4;
      return result;
    }

LABEL_10:
    sub_100247B44(result, a2, a3);
  }

  return result;
}

_DWORD *JreStringBuilder_deleteCharAt(_DWORD *result, uint64_t a2)
{
  v2 = result;
  if ((a2 & 0x80000000) != 0 || (v3 = result[3], v3 <= a2))
  {
    sub_100247AA0(result, a2);
  }

  v4 = v3 + ~a2;
  if (v4 >= 1)
  {
    result = memmove((*result + 2 * a2), (*result + 2 * a2 + 2), (2 * v4));
    v3 = v2[3];
  }

  v2[3] = v3 - 1;
  return result;
}

_DWORD *JreStringBuilder_insertCharArray(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  if ((a2 & 0x80000000) != 0 || result[3] < a2)
  {
    sub_100247AA0(result, a2);
  }

  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = *(a3 + 8);
  if (v6)
  {
    sub_100247DAC(result, v6, v3);
    result = memcpy((*v4 + 2 * v3), (a3 + 12), 2 * *(a3 + 8));
    v4[3] += *(a3 + 8);
  }

  return result;
}

void sub_100247DAC(char **a1, int a2, unsigned int a3)
{
  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v7 - v6 >= a2)
  {
    v13 = &(*a1)[2 * a3];
    v14 = 2 * (v6 - a3);

    memmove(&v13[2 * a2], v13, v14);
  }

  else
  {
    v8 = v6 + a2;
    v9 = 2 * v7 + 2;
    if (v8 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    v11 = *a1;
    v12 = malloc_type_malloc(2 * v10, 0x1000040BDFB0063uLL);
    *a1 = v12;
    if (!v12)
    {
      sub_100248B50();
    }

    *(a1 + 2) = v10;
    memcpy(v12, v11, 2 * a3);
    memcpy(&(*a1)[2 * a3 + 2 * a2], &v11[2 * a3], 2 * (*(a1 + 3) - a3));

    free(v11);
  }
}

_DWORD *JreStringBuilder_insertCharArraySubset(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = a5;
  v6 = a4;
  v8 = a2;
  v9 = result;
  if ((a2 & 0x80000000) != 0 || ((a5 | a4) & 0x80000000) != 0 || result[3] < a2 || *(a3 + 8) - a4 < a5)
  {
    objc_exception_throw([[JavaLangStringIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"this.length=%d; index=%d; chars.length=%d; start=%d; length=%d", result[3], a2, *(a3 + 8), a4, a5]]);
  }

  if (a5)
  {
    sub_100247DAC(result, a5, a2);
    result = memcpy((*v9 + 2 * v8), (a3 + 12 + 2 * v6), 2 * v5);
    v9[3] += v5;
  }

  return result;
}

void JreStringBuilder_insertChar(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = a2;
  if ((a2 & 0x80000000) != 0 || *(a1 + 12) < a2)
  {
    objc_exception_throw([[JavaLangArrayIndexOutOfBoundsException alloc] initWithInt:*(a1 + 12) withInt:a2]);
  }

  sub_100247DAC(a1, 1, a2);
  *(*a1 + 2 * v3) = a3;
  ++*(a1 + 12);
}

id JreStringBuilder_insertString(uint64_t a1, uint64_t a2, __CFString *a3)
{
  v3 = a2;
  if ((a2 & 0x80000000) != 0 || *(a1 + 12) < a2)
  {
    sub_100247AA0(a1, a2);
  }

  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = @"null";
  }

  result = [(__CFString *)v5 length];
  v7 = result;
  if (result)
  {
    sub_100247DAC(a1, result, v3);
    result = [(__CFString *)v5 getCharacters:*a1 + 2 * v3 range:0, v7];
    *(a1 + 12) += v7;
  }

  return result;
}

id JreStringBuilder_insertCharSequence(uint64_t a1, uint64_t a2, __CFString *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = @"null";
  }

  if (((a4 | a2 | a5) & 0x80000000) != 0 || a4 > a5 || *(a1 + 12) < a2 || [(__CFString *)v5 length]< a5)
  {
    objc_exception_throw(objc_alloc_init(JavaLangIndexOutOfBoundsException));
  }

  v10 = [-[__CFString subSequenceFrom:to:](v5 subSequenceFrom:a4 to:{a5), "description"}];

  return JreStringBuilder_insertString(a1, a2, v10);
}

id JreStringBuilder_replace(uint64_t a1, uint64_t a2, int a3, __CFString *a4)
{
  v4 = a3;
  v5 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (*(a1 + 12) >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a1 + 12);
  }

  if (v4 > a2)
  {
    if (!a4)
    {
      JreThrowNullPointerException();
    }

    v8 = [(__CFString *)a4 length];
    v9 = v8;
    v10 = v4 - (v8 + v5);
    if (v10 < 1)
    {
      if (v10 < 0)
      {
        sub_100247DAC(a1, v8 + v5 - v4, v4);
      }
    }

    else
    {
      memmove((*a1 + 2 * v5 + 2 * v8), (*a1 + 2 * v4), 2 * (*(a1 + 12) - v4));
    }

    result = [(__CFString *)a4 getCharacters:*a1 + 2 * v5 range:0, v9];
    *(a1 + 12) -= v10;
    return result;
  }

  if (v4 != a2)
  {
LABEL_18:
    sub_100247B44(a1, a2, v4);
  }

  if (!a4)
  {
    objc_exception_throw([[JavaLangNullPointerException alloc] initWithNSString:@"string == null"]);
  }

  return JreStringBuilder_insertString(a1, a2, a4);
}

uint64_t JreStringBuilder_reverse(uint64_t result)
{
  v1 = *(result + 12);
  if (v1 >= 2)
  {
    LODWORD(v2) = 0;
    v3 = *result;
    v4 = v1 - 1;
    v5 = **result;
    v6 = *(*result + 2 * (v1 - 1));
    LOBYTE(v7) = 1;
    LOBYTE(v8) = 1;
    while (1)
    {
      result = v2;
      v2 = v2 + 1;
      v9 = v3[v4 - 1];
      v10 = v7 & (v3[v2] >> 10 == 55);
      if (v5 >> 10 != 54)
      {
        v10 = 0;
      }

      if (v1 == 2 && (v10 & 1) != 0)
      {
        return result;
      }

      v11 = v3[v2];
      v12 = v8 & (v9 >> 10 == 54);
      if (v6 >> 10 != 55)
      {
        v12 = 0;
      }

      if (v10 == v12)
      {
        if (!v10)
        {
          v3[v4] = v5;
          v3[result] = v6;
          v8 = 1;
          --v4;
          v7 = 1;
          v6 = v9;
          goto LABEL_17;
        }

        v3[v4] = v11;
        v3[v4 - 1] = v5;
        v13 = &v3[result];
        *v13 = v9;
        v3[v2] = v6;
        v5 = v13[2];
        v4 -= 2;
        v6 = v3[v4];
        LODWORD(v2) = result + 2;
        v8 = 1;
        v7 = 1;
      }

      else
      {
        if (!v10)
        {
          v8 = 0;
          v3[v4] = v5;
          v3[result] = v9;
          v7 = 1;
          --v4;
LABEL_17:
          v5 = v11;
          goto LABEL_18;
        }

        v7 = 0;
        v3[v4] = v11;
        v3[result] = v6;
        v8 = 1;
        --v4;
        v6 = v9;
      }

LABEL_18:
      if (v2 >= (v1 >> 1))
      {
        if ((v1 & 1) != 0 && (v8 & v7 & 1) == 0)
        {
          if (v7)
          {
            v14 = v6;
          }

          else
          {
            v14 = v5;
          }

          v3[v4] = v14;
        }

        return result;
      }
    }
  }

  return result;
}

const __CFString *JreStringBuilder_toString(uint64_t a1)
{
  if (*(a1 + 12))
  {
    return [NSString stringWithCharacters:*a1 length:?];
  }

  else
  {
    return &stru_100484358;
  }
}

const __CFString *JreStringBuilder_toStringAndDealloc(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    v3 = *(a1 + 8) - v2;
    if (v3 <= 255 && (v3 >= 16 ? (v4 = v3 < v2 >> 1) : (v4 = 1), v4))
    {
      v5 = CFStringCreateWithCharactersNoCopy(0, *a1, v2, kCFAllocatorMalloc);
    }

    else
    {
      v5 = CFStringCreateWithCharacters(0, *a1, v2);
      free(*a1);
    }

    return v5;
  }

  else
  {
    free(*a1);
    return &stru_100484358;
  }
}

uint64_t JavaMathElementary_compareArraysWithIntArray_withIntArray_withInt_(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = a3 - 1;
  do
  {
    v3 = (v3 - 1);
    if (v3 < 0)
    {
      return 0;
    }

    if (!a1)
    {
      goto LABEL_17;
    }

    v6 = *(a1 + 8);
    if (v6 <= v3)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, v3);
    }

    if (!a2)
    {
LABEL_17:
      JreThrowNullPointerException();
    }

    v7 = v5 & 0x7FFFFFFF;
    v8 = *(a2 + 8);
    if (v8 <= v3)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, v3);
    }

    --v5;
  }

  while (*(a1 + 12 + 4 * v7) == *(a2 + 12 + 4 * v7));
  v10 = *(a1 + 8);
  if (v10 <= v3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v3);
  }

  v11 = *(a1 + 12 + 4 * v7);
  v12 = *(a2 + 8);
  if (v12 <= v3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v3);
  }

  if (v11 < *(a2 + 12 + 4 * v7))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

JavaMathBigInteger *JavaMathElementary_addWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_39;
  }

  v2 = a2;
  if (!a2)
  {
    goto LABEL_39;
  }

  v4 = *(a1 + 20);
  if (!v4)
  {
    return v2;
  }

  v5 = *(a2 + 20);
  if (!v5)
  {
    return a1;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7 + v6 != 2)
  {
    if (v4 == v5)
    {
      if (v6 >= v7)
      {
        v30 = *(a1 + 8);
        v31 = *(a2 + 8);
        v20 = [IOSIntArray arrayWithLength:v6 + 1];
        v21 = v20;
        v22 = v30;
        v23 = v6;
        v24 = v31;
        v25 = v7;
      }

      else
      {
        v18 = *(a2 + 8);
        v19 = *(a1 + 8);
        v20 = [IOSIntArray arrayWithLength:v7 + 1];
        v21 = v20;
        v22 = v18;
        v23 = v7;
        v24 = v19;
        v25 = v6;
      }

      sub_10024907C(v20, v22, v23, v24, v25);
LABEL_36:
      if (v21)
      {
        v2 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v4, v21->super.size_, v21);
        [(JavaMathBigInteger *)v2 cutOffLeadingZeroes];
        return v2;
      }

LABEL_39:
      JreThrowNullPointerException();
    }

    if (v6 == v7)
    {
      v26 = JavaMathElementary_compareArraysWithIntArray_withIntArray_withInt_(*(a1 + 8), *(a2 + 8), *(a1 + 16));
      if (v26 != 1)
      {
        if (!v26)
        {
          if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_100147554();
          }

          return JavaMathBigInteger_ZERO_;
        }

        goto LABEL_35;
      }
    }

    else if (v6 <= v7)
    {
LABEL_35:
      digits = v2->digits_;
      v35 = *(a1 + 8);
      v21 = [IOSIntArray arrayWithLength:v7];
      sub_100249814(v21, digits, v7, v35, v6);
      v4 = v5;
      goto LABEL_36;
    }

    v32 = *(a1 + 8);
    v33 = v2->digits_;
    v21 = [IOSIntArray arrayWithLength:v6];
    sub_100249814(v21, v32, v6, v33, v7);
    goto LABEL_36;
  }

  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_39;
  }

  v9 = *(v8 + 8);
  if (v9 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, 0);
  }

  v10 = *(v8 + 12);
  v11 = *(a2 + 8);
  v12 = *(v11 + 8);
  if (v12 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, 0);
  }

  v13 = *(v11 + 12);
  if (v4 == v5)
  {
    v14 = v13 + v10;
    v15 = (v13 + v10) >> 32;
    if (!v15)
    {
      v16 = new_JavaMathBigInteger_initWithInt_withInt_(v4, v14);

      return v16;
    }

    v36[0] = v14;
    v36[1] = v15;
    return new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v4, 2, [IOSIntArray arrayWithInts:v36 count:2]);
  }

  v27 = v13 - v10;
  v28 = v10 - v13;
  if (v4 >= 0)
  {
    v29 = v28;
  }

  else
  {
    v29 = v27;
  }

  return JavaMathBigInteger_valueOfWithLong_(v29);
}

uint64_t sub_10024907C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_56;
  }

  v6 = *(a2 + 8);
  if (v6 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 0);
  }

  if (!a4)
  {
    goto LABEL_56;
  }

  v7 = *(a2 + 12);
  v8 = *(a4 + 8);
  if (v8 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, 0);
  }

  if (!a1)
  {
LABEL_56:
    JreThrowNullPointerException();
  }

  v9 = *(a4 + 12) + v7;
  result = *(a1 + 8);
  if (result <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, 0);
  }

  v11 = v9 < v7;
  *(a1 + 12) = v9;
  if (a3 < a5)
  {
    if (a3 < 2)
    {
      a3 = 1;
    }

    else
    {
      v12 = 1;
      do
      {
        v13 = *(a2 + 8);
        if (v12 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v12);
        }

        v14 = *(a4 + 8);
        if (v12 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v12);
        }

        result = *(a1 + 8);
        if (v12 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v12);
        }

        v15 = v11 + *(a2 + 12 + 4 * v12) + *(a4 + 12 + 4 * v12);
        *(a1 + 12 + 4 * v12) = v15;
        v11 = HIDWORD(v15);
        ++v12;
      }

      while (a3 != v12);
    }

    if (a3 < a5)
    {
      v20 = a3;
      do
      {
        v21 = *(a4 + 8);
        if (v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, v20);
        }

        v22 = *(a4 + 12 + 4 * v20);
        result = *(a1 + 8);
        if (v20 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v20);
        }

        *(a1 + 12 + 4 * v20) = v11 + v22;
        v11 = (v11 + v22) >> 32;
        ++v20;
      }

      while (a5 != v20);
      a5 = a5;
      goto LABEL_48;
    }

    a5 = a3;
    if (!v11)
    {
      return result;
    }

    goto LABEL_49;
  }

  if (a5 < 2)
  {
    a5 = 1;
  }

  else
  {
    v16 = 1;
    do
    {
      v17 = *(a2 + 8);
      if (v16 >= v17)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, v16);
      }

      v18 = *(a4 + 8);
      if (v16 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v16);
      }

      result = *(a1 + 8);
      if (v16 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v16);
      }

      v19 = v11 + *(a2 + 12 + 4 * v16) + *(a4 + 12 + 4 * v16);
      *(a1 + 12 + 4 * v16) = v19;
      v11 = HIDWORD(v19);
      ++v16;
    }

    while (a5 != v16);
  }

  if (a5 >= a3)
  {
LABEL_48:
    if (!v11)
    {
      return result;
    }

    goto LABEL_49;
  }

  v23 = a5;
  do
  {
    v24 = *(a2 + 8);
    if (v23 >= v24)
    {
      IOSArray_throwOutOfBoundsWithMsg(v24, v23);
    }

    v25 = *(a2 + 12 + 4 * v23);
    result = *(a1 + 8);
    if (v23 >= result)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, v23);
    }

    *(a1 + 12 + 4 * v23) = v11 + v25;
    v11 = (v11 + v25) >> 32;
    ++v23;
  }

  while (a3 != v23);
  a5 = a3;
  if (v11)
  {
LABEL_49:
    result = *(a1 + 8);
    if (a5 >= result)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a5);
    }

    *(a1 + 12 + 4 * a5) = v11;
  }

  return result;
}

JavaMathBigInteger *JavaMathElementary_subtractWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    goto LABEL_38;
  }

  v3 = a1;
  v4 = *(a2 + 20);
  if (!v4)
  {
    return v3;
  }

  v5 = *(a1 + 20);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    if (v7 + v6 == 2)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        v9 = *(v8 + 8);
        if (v9 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, 0);
        }

        v10 = *(v8 + 12);
        v11 = *(a2 + 8);
        v12 = *(v11 + 8);
        if (v12 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, 0);
        }

        v13 = *(v11 + 12);
        if (v5 >= 0)
        {
          v14 = v10;
        }

        else
        {
          v14 = -v10;
        }

        if (v4 >= 0)
        {
          v13 = -v13;
        }

        return JavaMathBigInteger_valueOfWithLong_(v13 + v14);
      }

LABEL_38:
      JreThrowNullPointerException();
    }

    if (v6 == v7)
    {
      v16 = JavaMathElementary_compareArraysWithIntArray_withIntArray_withInt_(*(a1 + 8), *(a2 + 8), *(a1 + 16));
      if (v16 != -1)
      {
        if (v5 == v4)
        {
          if (!v16)
          {
            if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
            {
              sub_100147554();
            }

            return JavaMathBigInteger_ZERO_;
          }

          goto LABEL_29;
        }

        goto LABEL_32;
      }
    }

    else if (v6 > v7)
    {
      if (v5 == v4)
      {
LABEL_29:
        digits = v3->digits_;
        v18 = *(a2 + 8);
        v19 = [IOSIntArray arrayWithLength:v6];
        sub_100249814(v19, digits, v6, v18, v7);
LABEL_35:
        if (!v19)
        {
          goto LABEL_38;
        }

        v3 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v5, v19->super.size_, v19);
        [(JavaMathBigInteger *)v3 cutOffLeadingZeroes];
        return v3;
      }

LABEL_32:
      v22 = v3->digits_;
      v23 = *(a2 + 8);
      v19 = [IOSIntArray arrayWithLength:v6 + 1];
      sub_10024907C(v19, v22, v6, v23, v7);
      goto LABEL_35;
    }

    v20 = *(a2 + 8);
    v21 = v3->digits_;
    if (v5 == v4)
    {
      v19 = [IOSIntArray arrayWithLength:v7];
      sub_100249814(v19, v20, v7, v21, v6);
    }

    else
    {
      v19 = [IOSIntArray arrayWithLength:v7 + 1];
      sub_10024907C(v19, v20, v7, v21, v6);
    }

    v5 = -v4;
    goto LABEL_35;
  }

  return [a2 negate];
}

uint64_t sub_100249814(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = result;
  if (a5 >= 1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = result;
      v9 = a2;
      v10 = a4;
      while (1)
      {
        v11 = *(a2 + 8);
        if (v6 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v6);
        }

        if (!a4)
        {
          break;
        }

        v12 = *(a4 + 8);
        if (v6 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v6);
        }

        if (!v5)
        {
          break;
        }

        result = *(v5 + 8);
        if (v6 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v6);
        }

        v13 = *(v9 + 12) - *(v10 + 12) + v7;
        *(v8 + 12) = v13;
        v7 = v13 >> 32;
        ++v6;
        v10 += 4;
        v9 += 4;
        v8 += 4;
        if (a5 == v6)
        {
          goto LABEL_15;
        }
      }
    }

LABEL_26:
    JreThrowNullPointerException();
  }

  v7 = 0;
  a5 = 0;
LABEL_15:
  if (a5 < a3)
  {
    if (a2)
    {
      v14 = a5;
      v15 = a2 + 4 * a5;
      for (i = v5 + 4 * a5; ; i += 4)
      {
        v17 = *(a2 + 8);
        if (v14 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v14);
        }

        if (!v5)
        {
          break;
        }

        v18 = *(v15 + 12);
        result = *(v5 + 8);
        if (v14 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v14);
        }

        *(i + 12) = v7 + v18;
        v7 = (v7 + v18) >> 32;
        ++v14;
        v15 += 4;
        if (a3 == v14)
        {
          return result;
        }
      }
    }

    goto LABEL_26;
  }

  return result;
}

id JavaMathElementary_inplaceAddWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2 || (sub_10024907C(*(a1 + 8), *(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)), v4 = JavaLangMath_maxWithInt_withInt_(*(a1 + 16), *(a2 + 16)), (v5 = *(a1 + 8)) == 0))
  {
    JreThrowNullPointerException();
  }

  *(a1 + 16) = JavaLangMath_minWithInt_withInt_((v4 + 1), *(v5 + 8));
  [a1 cutOffLeadingZeroes];

  return [a1 unCache];
}

unint64_t JavaMathElementary_inplaceAddWithIntArray_withInt_withInt_(uint64_t a1, int a2, unint64_t a3)
{
  v3 = a3;
  if (a3 && a2 >= 1)
  {
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    v5 = 1;
    v6 = a1;
    v3 = a3;
    do
    {
      v7 = *(a1 + 8);
      if (v5 - 1 >= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, (v5 - 1));
      }

      v8 = *(v6 + 12);
      *(v6 + 12) = v3 + v8;
      v3 = (v3 + v8) >> 32;
      v6 += 4;
      if (v3)
      {
        v9 = v5 < a2;
      }

      else
      {
        v9 = 0;
      }

      ++v5;
    }

    while (v9);
  }

  return v3;
}

id JavaMathElementary_inplaceAddWithJavaMathBigInteger_withInt_(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  if (JavaMathElementary_inplaceAddWithIntArray_withInt_withInt_(*(a1 + 8), *(a1 + 16), a2) != 1)
  {
    goto LABEL_7;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v4 = *(a1 + 16);
  v5 = *(v3 + 8);
  if (v4 < 0 || v4 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, v4);
  }

  *(v3 + 12 + 4 * v4) = 1;
  ++*(a1 + 16);
LABEL_7:

  return [a1 unCache];
}

id JavaMathElementary_inplaceSubtractWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    JreThrowNullPointerException();
  }

  sub_100249814(*(a1 + 8), *(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16));
  [a1 cutOffLeadingZeroes];

  return [a1 unCache];
}

uint64_t sub_100249E04(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = result;
  if (a3 >= a5)
  {
    if (a5 < 1)
    {
      v15 = 0;
      a5 = 0;
LABEL_40:
      if (a5 >= a3)
      {
        return result;
      }

      if (a2)
      {
        v27 = a5;
        v28 = a2 + 4 * a5;
        for (i = v5 + 4 * a5; ; i += 4)
        {
          v30 = *(a2 + 8);
          if (v27 >= v30)
          {
            IOSArray_throwOutOfBoundsWithMsg(v30, v27);
          }

          if (!v5)
          {
            break;
          }

          v31 = *(v28 + 12);
          result = *(v5 + 8);
          if (v27 >= result)
          {
            IOSArray_throwOutOfBoundsWithMsg(result, v27);
          }

          *(i + 12) = v15 - v31;
          v15 = (v15 - v31) >> 32;
          ++v27;
          v28 += 4;
          if (a3 == v27)
          {
            return result;
          }
        }
      }
    }

    else if (a4)
    {
      v14 = 0;
      v15 = 0;
      v16 = result;
      v17 = a4;
      v18 = a2;
      while (1)
      {
        v19 = *(a4 + 8);
        if (v14 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, v14);
        }

        if (!a2)
        {
          break;
        }

        v20 = *(a2 + 8);
        if (v14 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, v14);
        }

        if (!v5)
        {
          break;
        }

        result = *(v5 + 8);
        if (v14 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v14);
        }

        v21 = *(v17 + 12) - *(v18 + 12) + v15;
        *(v16 + 12) = v21;
        v15 = v21 >> 32;
        ++v14;
        v18 += 4;
        v17 += 4;
        v16 += 4;
        if (a5 == v14)
        {
          goto LABEL_40;
        }
      }
    }

LABEL_51:
    JreThrowNullPointerException();
  }

  if (a3 >= 1)
  {
    if (a4)
    {
      v6 = 0;
      v7 = 0;
      v8 = result;
      v9 = a4;
      v10 = a2;
      while (1)
      {
        v11 = *(a4 + 8);
        if (v6 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v6);
        }

        if (!a2)
        {
          break;
        }

        v12 = *(a2 + 8);
        if (v6 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v6);
        }

        if (!v5)
        {
          break;
        }

        result = *(v5 + 8);
        if (v6 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v6);
        }

        v13 = *(v9 + 12) - *(v10 + 12) + v7;
        *(v8 + 12) = v13;
        v7 = v13 >> 32;
        ++v6;
        v10 += 4;
        v9 += 4;
        v8 += 4;
        if (a3 == v6)
        {
          goto LABEL_29;
        }
      }
    }

    goto LABEL_51;
  }

  v7 = 0;
  a3 = 0;
LABEL_29:
  if (a3 < a5)
  {
    if (a4)
    {
      v22 = a3;
      v23 = a4 + 4 * a3;
      for (j = v5 + 4 * a3; ; j += 4)
      {
        v25 = *(a4 + 8);
        if (v22 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, v22);
        }

        if (!v5)
        {
          break;
        }

        v26 = *(v23 + 12);
        result = *(v5 + 8);
        if (v22 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v22);
        }

        *(j + 12) = v7 + v26;
        v7 = (v7 + v26) >> 32;
        ++v22;
        v23 += 4;
        if (a5 == v22)
        {
          return result;
        }
      }
    }

    goto LABEL_51;
  }

  return result;
}

id JavaMathElementary_completeInPlaceSubtractWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v4 = [a1 compareToWithId:a2];
  v5 = *(a1 + 20);
  if (!v5)
  {
    if (a2)
    {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a2 + 8), 0, *(a1 + 8), 0, *(a2 + 16));
      v13 = *(a2 + 20);
      goto LABEL_11;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  v6 = v4;
  v7 = *(a1 + 8);
  if (v5 != *(a2 + 20))
  {
    sub_10024907C(v7, *(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16));
    *(a1 + 20) = v6;
    goto LABEL_12;
  }

  v8 = sub_10024A5DC(v7, *(a2 + 8), *(a1 + 16), *(a2 + 16));
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  if (v8 >= 1)
  {
    sub_100249814(v9, v9, v10, v11, v12);
    goto LABEL_12;
  }

  sub_100249E04(v9, v9, v10, v11, v12);
  v13 = *(a1 + 20);
LABEL_11:
  *(a1 + 20) = -v13;
LABEL_12:
  *(a1 + 16) = JavaLangMath_maxWithInt_withInt_(*(a1 + 16), *(a2 + 16)) + 1;
  [a1 cutOffLeadingZeroes];

  return [a1 unCache];
}

void **JavaMathElementary_completeInPlaceAddWithJavaMathBigInteger_withJavaMathBigInteger_(void **result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v3 = result;
  v4 = *(result + 5);
  if (!v4)
  {
    if (a2)
    {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a2 + 8), 0, result[1], 0, *(a2 + 16));
      goto LABEL_13;
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v5 = *(a2 + 20);
  if (!v5)
  {
    return result;
  }

  v6 = result[1];
  if (v4 == v5)
  {
    sub_10024907C(v6, v3[1], *(v3 + 4), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v7 = sub_10024A5DC(v6, *(a2 + 8), *(v3 + 4), *(a2 + 16));
    v8 = v3[1];
    v9 = *(v3 + 4);
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    if (v7 < 1)
    {
      sub_100249E04(v8, v8, v9, v10, v11);
      *(v3 + 5) = -*(v3 + 5);
    }

    else
    {
      sub_100249814(v8, v8, v9, v10, v11);
    }
  }

LABEL_13:
  *(v3 + 4) = JavaLangMath_maxWithInt_withInt_(*(v3 + 4), *(a2 + 16)) + 1;
  [v3 cutOffLeadingZeroes];

  return [v3 unCache];
}

uint64_t sub_10024A5DC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3 > a4)
  {
    return 1;
  }

  if (a3 < a4)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v5) = a3;
  v7 = a3 - 1;
  do
  {
    v5 = (v5 - 1);
    if (v5 < 0)
    {
      return 0;
    }

    if (!a1)
    {
      goto LABEL_21;
    }

    v8 = *(a1 + 8);
    if (v8 <= v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, v5);
    }

    if (!a2)
    {
LABEL_21:
      JreThrowNullPointerException();
    }

    v9 = v7 & 0x7FFFFFFF;
    v10 = *(a2 + 8);
    if (v10 <= v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, v5);
    }

    --v7;
  }

  while (*(a1 + 12 + 4 * v9) == *(a2 + 12 + 4 * v9));
  v11 = *(a1 + 8);
  if (v11 <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v5);
  }

  v12 = *(a1 + 12 + 4 * v9);
  v13 = *(a2 + 8);
  if (v13 <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v5);
  }

  if (v12 < *(a2 + 12 + 4 * v9))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

void *JavaNioChannelsSpiAbstractInterruptibleChannel_init(uint64_t a1)
{
  atomic_store(0, (a1 + 9));
  atomic_store(0, (a1 + 8));
  v2 = [JavaNioChannelsSpiAbstractInterruptibleChannel_ChannelCloser alloc];
  objc_storeWeak(&v2->this$0_, a1);

  return JreStrongAssignAndConsume((a1 + 16), v2);
}

unsigned __int8 *sub_10024AB74(unsigned __int8 *result)
{
  v1 = result + 9;
  v2 = atomic_load(result + 9);
  if ((v2 & 1) == 0)
  {
    v3 = result;
    objc_sync_enter(result);
    v4 = atomic_load(v1);
    if ((v4 & 1) == 0)
    {
      atomic_store(1u, v3 + 9);
      [v3 implCloseChannel];
    }

    return objc_sync_exit(v3);
  }

  return result;
}

void sub_10024AD40(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

uint64_t sub_10024B070(uint64_t a1)
{
  v2 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 8), v2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10024B5B0;
  v4[3] = &unk_1003FFC90;
  v4[4] = a1;
  return atexit_b(v4);
}

uint64_t JavaLangRuntime_getRuntime()
{
  if ((atomic_load_explicit(JavaLangRuntime__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10024B5B8();
  }

  return qword_1005553D0;
}

id JavaLangThreadGroup_initWithJavaLangThreadGroup_withNSString_(uint64_t a1, _DWORD *a2, void *a3)
{
  *(a1 + 32) = 10;
  v6 = [IOSObjectArray newArrayWithLength:5 type:JavaLangThread_class_()];
  JreStrongAssignAndConsume((a1 + 40), v6);
  if (qword_1005553E0 != -1)
  {
    sub_10024CA04();
  }

  JreStrongAssignAndConsume((a1 + 48), [IOSObjectArray newArrayWithLength:3 type:qword_1005553D8]);
  JreStrongAssignAndConsume((a1 + 56), [JavaLangThreadGroup_ChildrenGroupsLock alloc]);
  JreStrongAssignAndConsume((a1 + 64), [JavaLangThreadGroup_ChildrenThreadsLock alloc]);
  JreStrongAssign((a1 + 24), a3);
  result = sub_10024C7E4(a1, a2);
  if (a2)
  {
    v8 = a2[8];

    return sub_10024C6AC(a1, v8);
  }

  return result;
}

id JavaLangThreadGroup_initWithJavaLangThreadGroup_(uint64_t a1, void *a2)
{
  *(a1 + 32) = 10;
  v4 = [IOSObjectArray newArrayWithLength:5 type:JavaLangThread_class_()];
  JreStrongAssignAndConsume((a1 + 40), v4);
  if (qword_1005553E0 != -1)
  {
    sub_10024CA04();
  }

  JreStrongAssignAndConsume((a1 + 48), [IOSObjectArray newArrayWithLength:3 type:qword_1005553D8]);
  JreStrongAssignAndConsume((a1 + 56), [JavaLangThreadGroup_ChildrenGroupsLock alloc]);
  JreStrongAssignAndConsume((a1 + 64), [JavaLangThreadGroup_ChildrenThreadsLock alloc]);
  JreStrongAssign((a1 + 24), @"main");

  return sub_10024C7E4(a1, a2);
}

uint64_t sub_10024BC4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 56);
  objc_sync_enter(v4);
  if (*(a1 + 72))
  {
    v11 = new_JavaLangIllegalThreadStateException_init();
    objc_exception_throw(v11);
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = *(v5 + 8);
  v7 = *(a1 + 20);
  if (v6 == v7)
  {
    if (qword_1005553E0 != -1)
    {
      sub_10024CA04();
    }

    v8 = [IOSObjectArray arrayWithLength:2 * v6 type:qword_1005553D8];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 48), 0, v8, 0, *(a1 + 20));
    v9 = *(a1 + 20);
    *(a1 + 20) = v9 + 1;
    IOSObjectArray_Set(v8, v9, a2);
    JreStrongAssign((a1 + 48), v8);
  }

  else
  {
    *(a1 + 20) = v7 + 1;
    IOSObjectArray_Set(v5, v7, a2);
  }

  return objc_sync_exit(v4);
}

uint64_t sub_10024BD94(uint64_t a1)
{
  v2 = *(a1 + 64);
  objc_sync_enter(v2);
  v3 = *(a1 + 56);
  objc_sync_enter(v3);
  v4 = *(a1 + 20);
  if (v4 >= 1)
  {
    do
    {
      v5 = *(a1 + 48);
      if (!v5)
      {
        goto LABEL_13;
      }

      v6 = *(v5 + 8);
      if (v6 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, 0);
      }

      if (!*(v5 + 24))
      {
LABEL_13:
        JreThrowNullPointerException();
      }

      sub_10024BD94();
      --v4;
    }

    while (v4);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    sub_10024C568(v7, a1);
  }

  *(a1 + 72) = 1;
  objc_sync_exit(v3);

  return objc_sync_exit(v2);
}

void sub_10024BE7C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10024BEBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = 48;
  if (a5)
  {
    v9 = 40;
  }

  v10 = *(a1 + v9);
  v11 = 56;
  if (a5)
  {
    v11 = 64;
  }

  v12 = *(a1 + v11);
  if (a5)
  {
    v13 = 16;
  }

  else
  {
    v13 = 20;
  }

  obj = v12;
  objc_sync_enter(v12);
  v26 = a1;
  v14 = (*(a1 + v13) - 1);
  if (v14 >= 0)
  {
    v15 = v14 + 1;
    v16 = v10 + 8 * v14;
    do
    {
      v17 = v15 - 1;
      if (!a5)
      {
        goto LABEL_15;
      }

      v18 = *(v10 + 8);
      if (v17 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, (v15 - 1));
      }

      v19 = *(v16 + 24);
      objc_opt_class();
      if (!v19)
      {
LABEL_36:
        JreThrowNullPointerException();
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      if ([v19 isAlive])
      {
LABEL_15:
        if (!a2)
        {
          goto LABEL_36;
        }

        if (a4 >= *(a2 + 8))
        {
          goto LABEL_34;
        }

        v20 = *(v10 + 8);
        if (v17 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v15 - 1));
        }

        IOSObjectArray_Set(a2, a4, *(v16 + 24));
        a4 = (a4 + 1);
      }

      v16 -= 8;
      --v15;
    }

    while (v17 > 0);
  }

  objc_sync_exit(obj);
  if (a3)
  {
    obj = *(v26 + 56);
    objc_sync_enter(obj);
    if (*(v26 + 20) >= 1)
    {
      if (!a2)
      {
LABEL_37:
        JreThrowNullPointerException();
      }

      v21 = 0;
      while (a4 < *(a2 + 8))
      {
        v22 = *(v26 + 48);
        if (!v22)
        {
          goto LABEL_37;
        }

        v23 = *(v22 + 8);
        if (v21 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, v21);
        }

        v24 = *(v22 + 24 + 8 * v21);
        if (!v24)
        {
          goto LABEL_37;
        }

        a4 = sub_10024BEBC(v24, a2, 1, a4, a5);
        if (++v21 >= *(v26 + 20))
        {
          break;
        }
      }
    }

LABEL_34:
    objc_sync_exit(obj);
  }

  return a4;
}

uint64_t sub_10024C170(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v4 = a2;
    while (1)
    {
      if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10014019C();
      }

      if (!JavaLangSystem_out_)
      {
        break;
      }

      [JavaLangSystem_out_ printWithNSString:@"    "];
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

LABEL_36:
    JreThrowNullPointerException();
  }

LABEL_7:
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  if (!JavaLangSystem_out_)
  {
    goto LABEL_36;
  }

  [JavaLangSystem_out_ printlnWithNSString:{objc_msgSend(a1, "description")}];
  obj = *(a1 + 64);
  objc_sync_enter(obj);
  if (*(a1 + 16) >= 1)
  {
    v5 = 0;
    do
    {
      if ((a2 & 0x80000000) == 0)
      {
        v6 = 0;
        do
        {
          if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
          {
            objc_opt_class();
          }

          [JavaLangSystem_out_ printWithNSString:@"    "];
          ++v6;
        }

        while (v6 <= a2);
      }

      if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
      {
        objc_opt_class();
      }

      v7 = *(a1 + 40);
      if (!v7)
      {
        JreThrowNullPointerException();
      }

      v8 = *(v7 + 8);
      if (v5 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v5);
      }

      [JavaLangSystem_out_ printlnWithId:*(v7 + 24 + 8 * v5++)];
    }

    while (v5 < *(a1 + 16));
  }

  objc_sync_exit(obj);
  v9 = *(a1 + 56);
  objc_sync_enter(v9);
  if (*(a1 + 20) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(a1 + 48);
      if (!v11)
      {
        goto LABEL_35;
      }

      v12 = *(v11 + 8);
      if (v10 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v10);
      }

      v13 = *(v11 + 24 + 8 * v10);
      if (!v13)
      {
LABEL_35:
        JreThrowNullPointerException();
      }

      sub_10024C170(v13, (a2 + 1));
      ++v10;
    }

    while (v10 < *(a1 + 20));
  }

  return objc_sync_exit(v9);
}

uint64_t sub_10024C568(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  objc_sync_enter(v4);
  if (*(a1 + 20) >= 1)
  {
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = *(a1 + 48);
      if (!v7)
      {
        goto LABEL_14;
      }

      v8 = *(v7 + 8);
      if (v6 - 1 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, (v6 - 1));
      }

      v9 = *(v7 + 24 + v5);
      if (!v9)
      {
LABEL_14:
        JreThrowNullPointerException();
      }

      if ([v9 isEqual:a2])
      {
        break;
      }

      v5 += 8;
      v10 = v6 < *(a1 + 20);
      v6 = (v6 + 1);
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    v11 = *(a1 + 20);
    *(a1 + 20) = v11 - 1;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 48), v6, *(a1 + 48), (v6 - 1), (v11 - v6));
    IOSObjectArray_Set(*(a1 + 48), *(a1 + 20), 0);
  }

LABEL_11:

  return objc_sync_exit(v4);
}

uint64_t sub_10024C6AC(uint64_t result, int a2)
{
  if (*(result + 32) >= a2)
  {
    v2 = result;
    if (a2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = a2;
    }

    v4 = *(result + 8);
    v5 = v3;
    if (v4)
    {
      v5 = *(v4 + 32);
    }

    if (v5 >= v3)
    {
      v5 = v3;
    }

    *(result + 32) = v5;
    v6 = *(result + 56);
    objc_sync_enter(v6);
    if (*(v2 + 20) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(v2 + 48);
        if (!v8)
        {
          goto LABEL_20;
        }

        v9 = *(v8 + 8);
        if (v7 >= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, v7);
        }

        v10 = *(v8 + 24 + 8 * v7);
        if (!v10)
        {
LABEL_20:
          JreThrowNullPointerException();
        }

        sub_10024C6AC(v10, v3);
        ++v7;
      }

      while (v7 < *(v2 + 20));
    }

    return objc_sync_exit(v6);
  }

  return result;
}

id sub_10024C7E4(id *a1, void *a2)
{
  if (a2)
  {
    sub_10024BC4C(a2, a1);
  }

  return JreStrongAssign(a1 + 1, a2);
}

id JavaIoByteArrayInputStream_initWithByteArray_(uint64_t a1, _DWORD *a2)
{
  JavaIoInputStream_init(a1, a2);
  *(a1 + 20) = 0;
  result = JreStrongAssign((a1 + 8), a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 24) = a2[2];
  return result;
}

id JavaIoByteArrayInputStream_initWithByteArray_withInt_withInt_(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  JavaIoInputStream_init(a1, a2);
  result = JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a3;
  *(a1 + 20) = a3;
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v9 = a4 + a3;
  if (a4 + a3 >= a2[2])
  {
    v9 = a2[2];
  }

  *(a1 + 24) = v9;
  return result;
}

JavaIoByteArrayInputStream *new_JavaIoByteArrayInputStream_initWithByteArray_(_DWORD *a1)
{
  v2 = [JavaIoByteArrayInputStream alloc];
  JavaIoByteArrayInputStream_initWithByteArray_(v2, a1);
  return v2;
}

id JavaNetInetSocketAddress_init(uint64_t a1)
{
  JavaNetSocketAddress_init();
  JreStrongAssign((a1 + 8), 0);
  result = JreStrongAssign((a1 + 16), 0);
  *(a1 + 24) = -1;
  return result;
}

id JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(uint64_t a1, void *a2, unsigned int a3)
{
  JavaNetSocketAddress_init();
  if (a3 >= 0x10000)
  {
    v14 = JreStrcat("$I", v6, v7, v8, v9, v10, v11, v12, @"port=");
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  if (!a2)
  {
    if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001520E0();
    }

    a2 = JavaNetInet4Address_ANY_;
  }

  JreStrongAssign((a1 + 8), a2);
  result = JreStrongAssign((a1 + 16), 0);
  *(a1 + 24) = a3;
  return result;
}

id JavaNetInetSocketAddress_initWithNSString_withInt_withBoolean_(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  JavaNetSocketAddress_init();
  if (!a2 || a3 >= 0x10000)
  {
    v16 = JreStrcat("$$$I", v8, v9, v10, v11, v12, v13, v14, @"host=");
    v17 = new_JavaLangIllegalArgumentException_initWithNSString_(v16);
    objc_exception_throw(v17);
  }

  if (a4)
  {
    v15 = JavaNetInetAddress_getByNameWithNSString_(a2);
    a2 = 0;
  }

  else
  {
    v15 = 0;
  }

  JreStrongAssign((a1 + 8), v15);
  result = JreStrongAssign((a1 + 16), a2);
  *(a1 + 24) = a3;
  return result;
}

JavaNetInetSocketAddress *JavaNetInetSocketAddress_createUnresolvedWithNSString_withInt_(void *a1, unsigned int a2)
{
  v4 = [JavaNetInetSocketAddress alloc];
  JavaNetInetSocketAddress_initWithNSString_withInt_withBoolean_(v4, a1, a2, 0);

  return v4;
}

JavaNetInetSocketAddress *new_JavaNetInetSocketAddress_init()
{
  v0 = [JavaNetInetSocketAddress alloc];
  JavaNetInetSocketAddress_init(v0);
  return v0;
}

JavaNetInetSocketAddress *new_JavaNetInetSocketAddress_initWithInt_(unsigned int a1)
{
  v2 = [JavaNetInetSocketAddress alloc];
  JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(v2, 0, a1);
  return v2;
}

JavaNetInetSocketAddress *new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(void *a1, unsigned int a2)
{
  v4 = [JavaNetInetSocketAddress alloc];
  JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(v4, a1, a2);
  return v4;
}

uint64_t JavaNetInetSocketAddress_class_()
{
  if (qword_1005553F0 != -1)
  {
    sub_10024D6AC();
  }

  return qword_1005553E8;
}

id JavaNetURI_initWithNSString_withNSString_withNSString_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 56) = -1;
  *(a1 + 90) = 0;
  *(a1 + 92) = -1;
  v8 = new_JavaLangStringBuilder_init();
  v9 = v8;
  if (a2)
  {
    [(JavaLangStringBuilder *)v8 appendWithNSString:a2];
    [(JavaLangStringBuilder *)v9 appendWithChar:58];
  }

  if (a3)
  {
    if (!JavaNetURI_ALL_LEGAL_ENCODER_)
    {
      goto LABEL_12;
    }

    [JavaNetURI_ALL_LEGAL_ENCODER_ appendEncodedWithJavaLangStringBuilder:v9 withNSString:a3];
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  [(JavaLangStringBuilder *)v9 appendWithChar:35];
  if (!JavaNetURI_ALL_LEGAL_ENCODER_)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  [JavaNetURI_ALL_LEGAL_ENCODER_ appendEncodedWithJavaLangStringBuilder:v9 withNSString:a4];
LABEL_9:
  v10 = [(JavaLangStringBuilder *)v9 description];

  return sub_10024DD08(a1, v10, 0);
}

id JavaNetURI_initWithNSString_withNSString_withNSString_withInt_withNSString_withNSString_withNSString_(uint64_t a1, uint64_t a2, uint64_t a3, __CFString *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  *(a1 + 56) = -1;
  *(a1 + 90) = 0;
  *(a1 + 92) = -1;
  if (!a2 && !a3 && !a4 && !a6 && !a7 && !a8)
  {
    v16 = (a1 + 64);

    return JreStrongAssign(v16, &stru_100484358);
  }

  if (a2 && a6 && ([a6 isEmpty] & 1) == 0 && objc_msgSend(a6, "charAtWithInt:", 0) != 47)
  {
    v28 = new_JavaNetURISyntaxException_initWithNSString_withNSString_(a6, @"Relative path");
    objc_exception_throw(v28);
  }

  v18 = new_JavaLangStringBuilder_init();
  v19 = v18;
  if (a2)
  {
    [(JavaLangStringBuilder *)v18 appendWithNSString:a2];
    [(JavaLangStringBuilder *)v19 appendWithChar:58];
  }

  if (a3 || v12 || a5 != -1)
  {
    [(JavaLangStringBuilder *)v19 appendWithNSString:@"//"];
    if (a3)
    {
      if (!JavaNetURI_USER_INFO_ENCODER_)
      {
        goto LABEL_42;
      }

      [JavaNetURI_USER_INFO_ENCODER_ appendEncodedWithJavaLangStringBuilder:v19 withNSString:a3];
      [(JavaLangStringBuilder *)v19 appendWithChar:64];
    }

    if (v12)
    {
      if ([(__CFString *)v12 indexOf:58]!= -1 && [(__CFString *)v12 indexOf:93]== -1 && [(__CFString *)v12 indexOf:91]== -1)
      {
        v12 = JreStrcat("C$C", v20, v21, v22, v23, v24, v25, v26, 91);
      }

      [(JavaLangStringBuilder *)v19 appendWithNSString:v12];
    }

    if (a5 != -1)
    {
      [(JavaLangStringBuilder *)v19 appendWithChar:58];
      [(JavaLangStringBuilder *)v19 appendWithInt:a5];
    }
  }

  if (a6)
  {
    if (!JavaNetURI_PATH_ENCODER_)
    {
      goto LABEL_42;
    }

    [JavaNetURI_PATH_ENCODER_ appendEncodedWithJavaLangStringBuilder:v19 withNSString:a6];
  }

  if (a7)
  {
    [(JavaLangStringBuilder *)v19 appendWithChar:63];
    if (!JavaNetURI_ALL_LEGAL_ENCODER_)
    {
      goto LABEL_42;
    }

    [JavaNetURI_ALL_LEGAL_ENCODER_ appendEncodedWithJavaLangStringBuilder:v19 withNSString:a7];
  }

  if (a8)
  {
    [(JavaLangStringBuilder *)v19 appendWithChar:35];
    if (JavaNetURI_ALL_LEGAL_ENCODER_)
    {
      [JavaNetURI_ALL_LEGAL_ENCODER_ appendEncodedWithJavaLangStringBuilder:v19 withNSString:a8];
      goto LABEL_39;
    }

LABEL_42:
    JreThrowNullPointerException();
  }

LABEL_39:
  v27 = [(JavaLangStringBuilder *)v19 description];

  return sub_10024DD08(a1, v27, 1);
}

id JavaNetURI_initWithNSString_withNSString_withNSString_withNSString_withNSString_(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 56) = -1;
  *(a1 + 90) = 0;
  *(a1 + 92) = -1;
  if (a2 && a4 && ([a4 isEmpty] & 1) == 0 && objc_msgSend(a4, "charAtWithInt:", 0) != 47)
  {
    v16 = new_JavaNetURISyntaxException_initWithNSString_withNSString_(a4, @"Relative path");
    objc_exception_throw(v16);
  }

  v12 = new_JavaLangStringBuilder_init();
  v13 = v12;
  if (a2)
  {
    [(JavaLangStringBuilder *)v12 appendWithNSString:a2];
    [(JavaLangStringBuilder *)v13 appendWithChar:58];
  }

  if (a3)
  {
    [(JavaLangStringBuilder *)v13 appendWithNSString:@"//"];
    if (!JavaNetURI_AUTHORITY_ENCODER_)
    {
      goto LABEL_22;
    }

    [JavaNetURI_AUTHORITY_ENCODER_ appendEncodedWithJavaLangStringBuilder:v13 withNSString:a3];
  }

  if (a4)
  {
    if (!JavaNetURI_PATH_ENCODER_)
    {
      goto LABEL_22;
    }

    [JavaNetURI_PATH_ENCODER_ appendEncodedWithJavaLangStringBuilder:v13 withNSString:a4];
  }

  if (a5)
  {
    [(JavaLangStringBuilder *)v13 appendWithChar:63];
    if (!JavaNetURI_ALL_LEGAL_ENCODER_)
    {
      goto LABEL_22;
    }

    [JavaNetURI_ALL_LEGAL_ENCODER_ appendEncodedWithJavaLangStringBuilder:v13 withNSString:a5];
  }

  if (!a6)
  {
    goto LABEL_19;
  }

  [(JavaLangStringBuilder *)v13 appendWithChar:35];
  if (!JavaNetURI_ALL_LEGAL_ENCODER_)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  [JavaNetURI_ALL_LEGAL_ENCODER_ appendEncodedWithJavaLangStringBuilder:v13 withNSString:a6];
LABEL_19:
  v14 = [(JavaLangStringBuilder *)v13 description];

  return sub_10024DD08(a1, v14, 0);
}

id sub_10024DD08(uint64_t a1, void *a2, int a3)
{
  JreStrongAssign((a1 + 8), a2);
  if (!a2)
  {
    goto LABEL_25;
  }

  FirstOfWithNSString_withNSString_withInt_withInt = LibcoreNetUrlUrlUtils_findFirstOfWithNSString_withNSString_withInt_withInt_(a2, @"#", 0, [a2 length]);
  if (FirstOfWithNSString_withNSString_withInt_withInt < [a2 length])
  {
    if (!JavaNetURI_ALL_LEGAL_ENCODER_)
    {
      goto LABEL_25;
    }

    JreStrongAssign((a1 + 80), [JavaNetURI_ALL_LEGAL_ENCODER_ validateWithNSString:a2 withInt:(FirstOfWithNSString_withNSString_withInt_withInt + 1) withInt:objc_msgSend(a2 withNSString:{"length"), @"fragment"}]);
  }

  v7 = LibcoreNetUrlUrlUtils_findFirstOfWithNSString_withNSString_withInt_withInt_(a2, @":", 0, FirstOfWithNSString_withNSString_withInt_withInt);
  if (v7 >= LibcoreNetUrlUrlUtils_findFirstOfWithNSString_withNSString_withInt_withInt_(a2, @"/?#", 0, FirstOfWithNSString_withNSString_withInt_withInt))
  {
    v9 = 0;
    *(a1 + 89) = 0;
  }

  else
  {
    *(a1 + 89) = 1;
    v8 = sub_10024E030(a2, v7);
    JreStrongAssign((a1 + 16), v8);
    v9 = (v7 + 1);
    if (v9 == FirstOfWithNSString_withNSString_withInt_withInt)
    {
      v14 = @"Scheme-specific part expected";
      v15 = a2;
      v16 = FirstOfWithNSString_withNSString_withInt_withInt;
      goto LABEL_28;
    }

    if (([a2 regionMatches:v9 aString:@"/" otherOffset:0 count:1] & 1) == 0)
    {
      *(a1 + 88) = 1;
      if (JavaNetURI_ALL_LEGAL_ENCODER_)
      {
        v10 = [JavaNetURI_ALL_LEGAL_ENCODER_ validateWithNSString:a2 withInt:v9 withInt:FirstOfWithNSString_withNSString_withInt_withInt withNSString:@"scheme specific part"];

        return JreStrongAssign((a1 + 24), v10);
      }

LABEL_25:
      JreThrowNullPointerException();
    }
  }

  *(a1 + 88) = 0;
  JreStrongAssign((a1 + 24), [a2 substring:v9 endIndex:FirstOfWithNSString_withNSString_withInt_withInt]);
  if (![a2 regionMatches:v9 aString:@"//" otherOffset:0 count:2])
  {
    goto LABEL_18;
  }

  v12 = (v9 + 2);
  v9 = LibcoreNetUrlUrlUtils_findFirstOfWithNSString_withNSString_withInt_withInt_(a2, @"/?", v12, FirstOfWithNSString_withNSString_withInt_withInt);
  if (v12 == [a2 length])
  {
    v16 = [a2 length];
    v14 = @"Authority expected";
    v15 = a2;
LABEL_28:
    v17 = new_JavaNetURISyntaxException_initWithNSString_withNSString_withInt_(v15, v14, v16);
    objc_exception_throw(v17);
  }

  if (v12 < v9)
  {
    if (!JavaNetURI_AUTHORITY_ENCODER_)
    {
      goto LABEL_25;
    }

    JreStrongAssign((a1 + 32), [JavaNetURI_AUTHORITY_ENCODER_ validateWithNSString:a2 withInt:v12 withInt:v9 withNSString:@"authority"]);
  }

LABEL_18:
  v13 = LibcoreNetUrlUrlUtils_findFirstOfWithNSString_withNSString_withInt_withInt_(a2, @"?", v9, FirstOfWithNSString_withNSString_withInt_withInt);
  if (!JavaNetURI_PATH_ENCODER_)
  {
    goto LABEL_25;
  }

  JreStrongAssign((a1 + 64), [JavaNetURI_PATH_ENCODER_ validateWithNSString:a2 withInt:v9 withInt:v13 withNSString:@"path"]);
  if (v13 < FirstOfWithNSString_withNSString_withInt_withInt)
  {
    if (!JavaNetURI_ALL_LEGAL_ENCODER_)
    {
      goto LABEL_25;
    }

    JreStrongAssign((a1 + 72), [JavaNetURI_ALL_LEGAL_ENCODER_ validateWithNSString:a2 withInt:(v13 + 1) withInt:FirstOfWithNSString_withNSString_withInt_withInt withNSString:@"query"]);
  }

  return sub_10024E0EC(a1, a3);
}

id sub_10024E030(void *a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = @"Scheme expected";
    goto LABEL_13;
  }

  if (a2 >= 1)
  {
    if (a1)
    {
      v4 = 0;
      while ((LibcoreNetUrlUrlUtils_isValidSchemeCharWithInt_withChar_(v4, [a1 charAtWithInt:v4]) & 1) != 0)
      {
        v4 = (v4 + 1);
        if (a2 == v4)
        {
          goto LABEL_7;
        }
      }

      v6 = @"Illegal character in scheme";
LABEL_13:
      v7 = new_JavaNetURISyntaxException_initWithNSString_withNSString_withInt_(a1, v6, 0);
      objc_exception_throw(v7);
    }

LABEL_11:
    JreThrowNullPointerException();
  }

LABEL_7:
  if (!a1)
  {
    goto LABEL_11;
  }

  return [a1 substring:0 endIndex:a2];
}

uint64_t sub_10024E0EC(uint64_t result, int a2)
{
  v2 = *(result + 32);
  if (!v2)
  {
    return result;
  }

  v4 = result;
  v5 = [*(result + 32) indexOf:64];
  if (v5 == -1)
  {
    v7 = 0;
    LODWORD(v8) = 0;
  }

  else
  {
    v6 = v5;
    v7 = [v2 substring:0 endIndex:v5];
    sub_10024E318(*(v4 + 32), v7, 0);
    v8 = (v6 + 1);
    v9 = [v2 substring:v8];
    if (!v9)
    {
      goto LABEL_23;
    }

    v2 = v9;
  }

  v10 = [v2 lastIndexOf:58];
  v11 = [v2 indexOf:93];
  if (v10 == -1 || v11 >= v10)
  {
    v13 = -1;
    goto LABEL_17;
  }

  v14 = [v2 substring:0 endIndex:v10];
  if (v10 >= ([v2 length] - 1))
  {
    v13 = -1;
LABEL_16:
    v2 = v14;
    if (v14)
    {
LABEL_17:
      result = [v2 isEmpty];
      if (result)
      {
        if (a2)
        {
          v25 = new_JavaNetURISyntaxException_initWithNSString_withNSString_withInt_(*(v4 + 32), @"Expected host", v8);
          objc_exception_throw(v25);
        }
      }

      else
      {
        result = sub_10024E3C0(a2, v2);
        if (result)
        {
          JreStrongAssign((v4 + 40), v7);
          result = JreStrongAssign((v4 + 48), v2);
          *(v4 + 56) = v13;
          *(v4 + 90) = 1;
        }
      }

      return result;
    }

LABEL_23:
    JreThrowNullPointerException();
  }

  v15 = (v10 + 1);
  v16 = [v2 substring:v15];
  result = JavaLangInteger_parseIntWithNSString_(v16, v17, v18, v19, v20, v21, v22, v23);
  v13 = result;
  if ((result & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  if (a2)
  {
    v24 = new_JavaNetURISyntaxException_initWithNSString_withNSString_withInt_(*(v4 + 32), @"Invalid port number", v15 + v8);
    objc_exception_throw(v24);
  }

  return result;
}

id sub_10024E318(void *a1, void *a2, int a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  result = [a2 length];
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      v8 = [a2 charAtWithInt:v7];
      if (v8 == 93 || v8 == 91)
      {
        v9 = new_JavaNetURISyntaxException_initWithNSString_withNSString_withInt_(a1, @"Illegal character in userInfo", a3);
        objc_exception_throw(v9);
      }

      v7 = (v7 + 1);
      result = [a2 length];
      ++a3;
    }

    while (v7 < result);
  }

  return result;
}

uint64_t sub_10024E3C0(int a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if ([a2 hasPrefix:@"["])
  {
    if ([a2 hasSuffix:@"]"])
    {
      if (JavaNetInetAddress_isNumericWithNSString_(a2))
      {
        isKindOfClass = 1;
        return isKindOfClass & 1;
      }

      v9 = new_JavaNetURISyntaxException_initWithNSString_withNSString_(a2, @"Malformed IPv6 address");
LABEL_20:
      objc_exception_throw(v9);
    }

    v7 = @"Expected a closing square bracket for IPv6 address";
LABEL_19:
    v9 = new_JavaNetURISyntaxException_initWithNSString_withNSString_withInt_(a2, v7, 0);
    goto LABEL_20;
  }

  if ([a2 indexOf:91] != -1 || objc_msgSend(a2, "indexOf:", 93) != -1)
  {
    goto LABEL_17;
  }

  v5 = [a2 lastIndexOf:46];
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    if (v5 != [a2 length] - 1 && JavaLangCharacter_isDigitWithChar_(objc_msgSend(a2, "charAtWithInt:", v6 + 1)))
    {
      JavaNetInetAddress_parseNumericAddressWithNSString_(a2);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass & 1 | ((a1 & 1) == 0))
      {
        return isKindOfClass & 1;
      }

      v7 = @"Malformed IPv4 address";
      goto LABEL_19;
    }
  }

  isKindOfClass = sub_10024E544(a2);
  if ((isKindOfClass & 1) == 0)
  {
    if (a1)
    {
LABEL_17:
      v7 = @"Illegal character in host name";
      goto LABEL_19;
    }
  }

  return isKindOfClass & 1;
}

BOOL sub_10024E544(void *a1)
{
  LibcoreNetUriCodec_validateSimpleWithNSString_withNSString_(a1, @"-.");
  if (!a1 || (v2 = [a1 split:@"\\."]) == 0)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v3 = (v2 + 24);
  v4 = &v2[8 * *(v2 + 2) + 24];
  if ((v2 + 24) >= v4)
  {
    return 0;
  }

  do
  {
    v6 = *v3++;
    v5 = v6;
    if (!v6)
    {
      goto LABEL_11;
    }

    if ([v5 hasPrefix:@"-"] & 1) != 0 || (objc_msgSend(v5, "hasSuffix:", @"-"))
    {
      return 0;
    }
  }

  while (v3 < v4);
  return ([v5 isEqual:a1] & 1) != 0 || objc_msgSend(v5, "charAtWithInt:", 0) - 58 <= 0xFFFFFFF5;
}

JavaNetURI *JavaNetURI_createWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaNetURI__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10024FD08();
  }

  v2 = [JavaNetURI alloc];
  v2->port_ = -1;
  v2->serverAuthority_ = 0;
  v2->hash__ = -1;
  sub_10024DD08(v2, a1, 0);
  return v2;
}

JavaNetURI *sub_10024E870(uint64_t a1)
{
  v2 = [JavaNetURI alloc];
  v2->port_ = -1;
  v2->serverAuthority_ = 0;
  v2->hash__ = -1;
  v3 = v2;
  v3->absolute_ = *(a1 + 89);
  JreStrongAssign(&v3->authority_, *(a1 + 32));
  JreStrongAssign(&v3->fragment_, *(a1 + 80));
  JreStrongAssign(&v3->host_, *(a1 + 48));
  v3->opaque_ = *(a1 + 88);
  JreStrongAssign(&v3->path_, *(a1 + 64));
  v3->port_ = *(a1 + 56);
  JreStrongAssign(&v3->query_, *(a1 + 72));
  JreStrongAssign(&v3->scheme_, *(a1 + 16));
  JreStrongAssign(&v3->schemeSpecificPart_, *(a1 + 24));
  JreStrongAssign(&v3->userInfo_, *(a1 + 40));
  v3->serverAuthority_ = *(a1 + 90);
  return v3;
}

NSString *sub_10024E940(void *a1)
{
  v2 = new_JavaLangStringBuilder_initWithNSString_(&stru_100484358);
  if (!a1)
  {
    goto LABEL_13;
  }

  v3 = v2;
  if ([a1 indexOf:37] == -1)
  {
    return a1;
  }

  v4 = [a1 indexOf:37 fromIndex:0];
  if (v4 != -1)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", [a1 substring:v6 endIndex:v5 + 1]);
      v6 = v5 + 3;
      v7 = [a1 substring:v5 + 1 endIndex:v6];
      if (!v7)
      {
        break;
      }

      v8 = v7;
      if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1000458CC();
      }

      -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", [v8 lowercaseStringWithJRELocale:JavaUtilLocale_US_]);
      v5 = [a1 indexOf:37 fromIndex:v6];
      if (v5 == -1)
      {
        goto LABEL_9;
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

LABEL_9:

  return [(JavaLangStringBuilder *)v3 description];
}

id sub_10024EA88(void *a1, void *a2)
{
  if (!a1 || (v4 = [a1 length], !a2))
  {
    JreThrowNullPointerException();
  }

  if (v4 != [a2 length])
  {
    return 0;
  }

  v5 = [a1 indexOf:37 fromIndex:0];
  if (v5 != [a2 indexOf:37 fromIndex:0])
  {
    return 0;
  }

  v6 = 0;
  while (v5 != -1)
  {
    if ([a1 regionMatches:v6 aString:a2 otherOffset:v6 count:v5 - v6])
    {
      if ([a1 regionMatches:1 thisOffset:v5 + 1 aString:a2 otherOffset:v5 + 1 count:2])
      {
        v6 = v5 + 3;
        v5 = [a1 indexOf:37 fromIndex:v6];
        if (v5 == [a2 indexOf:37 fromIndex:v6])
        {
          continue;
        }
      }
    }

    return 0;
  }

  v8 = [a2 length] - v6;

  return [a1 regionMatches:v6 aString:a2 otherOffset:v6 count:v8];
}

uint64_t JavaNetURI_getEffectivePortWithNSString_withInt_(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaNetURI__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10024FD08();
  }

  if (a2 == -1)
  {
    if ([@"http" equalsIgnoreCase:a1])
    {
      return 80;
    }

    else if ([@"https" equalsIgnoreCase:a1])
    {
      return 443;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return a2;
}

const __CFString *sub_10024F0B8(__CFString *a1, int a2)
{
  v2 = LibcoreNetUrlUrlUtils_canonicalizePathWithNSString_withBoolean_(a1, a2);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  v4 = [(__CFString *)v2 indexOf:58];
  if (v4 != -1 && ((v5 = v4, v6 = [(__CFString *)v3 indexOf:47], v6 == -1) || v5 < v6))
  {
    return JreStrcat("$$", v7, v8, v9, v10, v11, v12, v13, @"./");
  }

  else
  {
    return v3;
  }
}

JavaNetURI_PartEncoder *sub_10024F9F8(void *a1)
{
  v2 = [JavaNetURI_PartEncoder alloc];
  LibcoreNetUriCodec_init(v2, v3);
  JreStrongAssign(&v2->extraLegalCharacters_, a1);
  return v2;
}

JavaNetURI *new_JavaNetURI_initWithNSString_(void *a1)
{
  v2 = [JavaNetURI alloc];
  v2->port_ = -1;
  v2->serverAuthority_ = 0;
  v2->hash__ = -1;
  sub_10024DD08(v2, a1, 0);
  return v2;
}

JavaNetURI *new_JavaNetURI_initWithNSString_withNSString_withNSString_withNSString_(uint64_t a1, __CFString *a2, void *a3, uint64_t a4)
{
  v8 = [JavaNetURI alloc];
  JavaNetURI_initWithNSString_withNSString_withNSString_withInt_withNSString_withNSString_withNSString_(v8, a1, 0, a2, 0xFFFFFFFFLL, a3, 0, a4);
  return v8;
}

JavaNetURI *new_JavaNetURI_initWithNSString_withNSString_withNSString_withNSString_withNSString_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = [JavaNetURI alloc];
  JavaNetURI_initWithNSString_withNSString_withNSString_withNSString_withNSString_(v10, a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_10024FDB8(uint64_t a1)
{
  if (!a1 || (v1 = *(a1 + 8)) == 0)
  {
    JreThrowNullPointerException();
  }

  v2 = (v1 + 12);
  v3 = *(v1 + 8);
  if (v2 >= &v2[v3])
  {
    return 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v6 = vdupq_n_s32(v5);
      v4 = vaddvq_s16(vsubq_s16(v4, vmvnq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v6, xmmword_1003155F0)), vceqzq_s32(vandq_s8(v6, xmmword_100315600))))));
      --v3;
    }

    while (v3);
  }

  return v4;
}

JavaNetInterfaceAddress *new_JavaNetInterfaceAddress_initWithJavaNetInet4Address_withJavaNetInet4Address_withJavaNetInet4Address_(void *a1, void *a2, uint64_t a3)
{
  v6 = [JavaNetInterfaceAddress alloc];
  JreStrongAssign(&v6->address_, a1);
  JreStrongAssign(&v6->broadcastAddress_, a2);
  v6->prefixLength_ = sub_10024FDB8(a3);
  return v6;
}

JavaNetInterfaceAddress *new_JavaNetInterfaceAddress_initWithJavaNetInet6Address_withShort_(void *a1, signed __int16 a2)
{
  v4 = [JavaNetInterfaceAddress alloc];
  JreStrongAssign(&v4->address_, a1);
  JreStrongAssign(&v4->broadcastAddress_, 0);
  v4->prefixLength_ = a2;
  return v4;
}

id sub_100250160(id *a1, void *a2, void *a3)
{
  if (!a2)
  {
    v6 = new_JavaLangNullPointerException_initWithNSString_(@"service == null");
    objc_exception_throw(v6);
  }

  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 2, a3);
  v5 = new_JavaUtilHashSet_init();
  JreStrongAssignAndConsume(a1 + 3, v5);

  return [a1 reload];
}

JavaUtilServiceLoader *JavaUtilServiceLoader_load__WithIOSClass_withJavaLangClassLoader_(void *a1, void *a2)
{
  SystemClassLoader = a2;
  if (!a2)
  {
    SystemClassLoader = JavaLangClassLoader_getSystemClassLoader();
  }

  v4 = [JavaUtilServiceLoader alloc];
  sub_100250160(&v4->super.isa, a1, SystemClassLoader);

  return v4;
}

JavaUtilServiceLoader *JavaUtilServiceLoader_load__WithIOSClass_(void *a1)
{
  v2 = JavaLangThread_currentThread();
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = [(JavaLangThread *)v2 getContextClassLoader];

  return JavaUtilServiceLoader_load__WithIOSClass_withJavaLangClassLoader_(a1, v3);
}

JavaUtilServiceLoader *JavaUtilServiceLoader_loadInstalledWithIOSClass_(void *a1)
{
  SystemClassLoader = JavaLangClassLoader_getSystemClassLoader();
  v3 = SystemClassLoader;
  if (SystemClassLoader)
  {
    while ([SystemClassLoader getParent])
    {
      SystemClassLoader = [v3 getParent];
      v3 = SystemClassLoader;
    }
  }

  return JavaUtilServiceLoader_load__WithIOSClass_withJavaLangClassLoader_(a1, v3);
}

id JavaUtilServiceLoader_loadFromSystemPropertyWithIOSClass_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_([a1 getName]);
  if (!PropertyWithNSString)
  {
    return 0;
  }

  SystemClassLoader = JavaLangClassLoader_getSystemClassLoader();
  if (!SystemClassLoader || (v3 = [SystemClassLoader loadClassWithNSString:PropertyWithNSString]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 newInstance];
}

void sub_1002504B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = new_JavaLangError_initWithJavaLangThrowable_(v2);
    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_1002505D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v4 = new_JavaUtilLinkedList_init();
  JreStrongAssignAndConsume((a1 + 40), v4);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 8), *(a2 + 16));
  JreStrongAssign((a1 + 16), *(a2 + 8));
  v5 = *(a2 + 24);

  return JreStrongAssign((a1 + 24), v5);
}

id sub_100250A28(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 length];
  if (result >= 1)
  {
    v3 = 0;
    do
    {
      v4 = [a1 charAtWithInt:v3];
      isJavaIdentifierPartWithChar = JavaLangCharacter_isJavaIdentifierPartWithChar_(v4);
      if (v4 != 46 && !isJavaIdentifierPartWithChar)
      {
        v13 = JreStrcat("$C$", v6, v7, v8, v9, v10, v11, v12, @"Bad character '");
        v14 = new_JavaUtilServiceConfigurationError_initWithNSString_(v13);
        objc_exception_throw(v14);
      }

      v3 = (v3 + 1);
      result = [a1 length];
    }

    while (v3 < result);
  }

  return result;
}

id JavaSecurityAccessController_doPrivilegedWithJavaSecurityPrivilegedAction_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  return [a1 run];
}

id JavaSecurityAccessController_doPrivilegedWithJavaSecurityPrivilegedExceptionAction_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  return [a1 run];
}

id JavaUtilIllegalFormatFlagsException_initWithNSString_(uint64_t a1, void *a2)
{
  JavaUtilIllegalFormatException_init(a1, a2);
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"flags == null");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 88), a2);
}

JavaUtilIllegalFormatFlagsException *new_JavaUtilIllegalFormatFlagsException_initWithNSString_(void *a1)
{
  v2 = [JavaUtilIllegalFormatFlagsException alloc];
  JavaUtilIllegalFormatFlagsException_initWithNSString_(v2, a1);
  return v2;
}

JavaNioCharsetMalformedInputException *new_JavaNioCharsetMalformedInputException_initWithInt_(unsigned int a1)
{
  v2 = [JavaNioCharsetMalformedInputException alloc];
  JavaNioCharsetCharacterCodingException_init(v2, v3);
  *(&v2->super.super.super.super.rawFrameCount + 1) = a1;
  return v2;
}

int32x2_t *unsafeBulkCopy(int32x2_t *result, int8x8_t *a2, int a3, int a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return memcpy(result, a2, a3);
  }

  switch(a4)
  {
    case 8:
      if (a3 >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = a3 + 7;
      }

      if ((a3 + 7) >= 0xF)
      {
        v11 = v10 >> 3;
        do
        {
          v12 = *a2++;
          *result++ = vrev64_s32(vrev32_s8(v12));
          --v11;
        }

        while (v11);
      }

      break;
    case 4:
      if (a3 >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 + 3;
      }

      if ((a3 + 3) >= 7)
      {
        v8 = v7 >> 2;
        do
        {
          v9 = a2->i32[0];
          a2 = (a2 + 4);
          result->i32[0] = bswap32(v9);
          result = (result + 4);
          --v8;
        }

        while (v8);
      }

      break;
    case 2:
      if ((a3 / 2) >= 2)
      {
        v5 = ((a3 + (a3 >> 31)) >> 1) >> 1;
        do
        {
          v6 = a2->i32[0];
          a2 = (a2 + 4);
          result->i32[0] = __rev16(v6);
          result = (result + 4);
          --v5;
        }

        while (v5);
      }

      if ((a3 / 2))
      {
        result->i16[0] = bswap32(a2->u16[0]) >> 16;
      }

      break;
  }

  return result;
}

uint64_t LibcoreIoMemory_peekIntWithByteArray_withInt_withJavaNioByteOrder_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  if (JavaNioByteOrder_BIG_ENDIAN__ != a3)
  {
    if (a1)
    {
      v6 = *(a1 + 8);
      if ((a2 & 0x80000000) != 0 || v6 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, a2);
      }

      v7 = a2 + 1;
      if (a2 + 1 < 0 || v7 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v7);
      }

      v8 = *(a1 + 12 + a2) | (*(a1 + 12 + v7) << 8);
      v9 = a2 + 2;
      if (a2 + 2 < 0 || v9 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v9);
      }

      v10 = v8 | (*(a1 + 12 + v9) << 16);
      v11 = a2 + 3;
      if (a2 + 3 < 0 || v11 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v11);
      }

      return v10 | (*(a1 + 12 + v11) << 24);
    }

LABEL_24:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_24;
  }

  v13 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v13 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, a2);
  }

  v14 = a2 + 1;
  if (a2 + 1 < 0 || v14 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v14);
  }

  v15 = (*(a1 + 12 + a2) << 24) | (*(a1 + 12 + v14) << 16);
  v16 = a2 + 2;
  if (a2 + 2 < 0 || v16 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v16);
  }

  v17 = v15 | (*(a1 + 12 + v16) << 8);
  v18 = a2 + 3;
  if (a2 + 3 < 0 || v18 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v18);
  }

  return v17 | *(a1 + 12 + v18);
}

unint64_t LibcoreIoMemory_peekLongWithByteArray_withInt_withJavaNioByteOrder_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  if (JavaNioByteOrder_BIG_ENDIAN__ != a3)
  {
    if (a1)
    {
      v6 = *(a1 + 8);
      if ((a2 & 0x80000000) != 0 || v6 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, a2);
      }

      v7 = a2 + 1;
      if (a2 + 1 < 0 || v7 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v7);
      }

      v8 = *(a1 + 12 + v7);
      v9 = a2 + 2;
      if (a2 + 2 < 0 || v9 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v9);
      }

      v10 = *(a1 + 12 + v9);
      v11 = a2 + 3;
      if (a2 + 3 < 0 || v11 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v11);
      }

      v12 = *(a1 + 12 + v11);
      v13 = a2 + 4;
      if (a2 + 4 < 0 || v13 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v13);
      }

      v14 = *(a1 + 12 + a2) | (v8 << 8);
      v15 = *(a1 + 12 + v13);
      v16 = a2 + 5;
      if (a2 + 5 < 0 || v16 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v16);
      }

      v17 = v14 | (v10 << 16);
      v18 = v15 | (*(a1 + 12 + v16) << 8);
      v19 = a2 + 6;
      if (a2 + 6 < 0 || v19 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v19);
      }

      v20 = v18 | (*(a1 + 12 + v19) << 16);
      v21 = a2 + 7;
      if (a2 + 7 < 0 || v21 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v21);
      }

      return v17 | (v12 << 24) | ((v20 | (*(a1 + 12 + v21) << 24)) << 32);
    }

LABEL_40:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_40;
  }

  v23 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v23 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, a2);
  }

  v24 = a2 + 1;
  if (a2 + 1 < 0 || v24 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v24);
  }

  v25 = *(a1 + 12 + v24);
  v26 = a2 + 2;
  if (a2 + 2 < 0 || v26 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v26);
  }

  v27 = *(a1 + 12 + v26);
  v28 = a2 + 3;
  if (a2 + 3 < 0 || v28 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v28);
  }

  v29 = *(a1 + 12 + v28);
  v30 = a2 + 4;
  if (a2 + 4 < 0 || v30 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v30);
  }

  v31 = (*(a1 + 12 + a2) << 24) | (v25 << 16);
  v32 = *(a1 + 12 + v30) << 24;
  v33 = a2 + 5;
  if (a2 + 5 < 0 || v33 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v33);
  }

  v34 = v31 | (v27 << 8);
  v35 = v32 | (*(a1 + 12 + v33) << 16);
  v36 = a2 + 6;
  if (a2 + 6 < 0 || v36 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v36);
  }

  v37 = v35 | (*(a1 + 12 + v36) << 8);
  v38 = a2 + 7;
  if (a2 + 7 < 0 || v38 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v38);
  }

  return v37 | *(a1 + 12 + v38) | ((v34 | v29) << 32);
}

uint64_t LibcoreIoMemory_peekShortWithByteArray_withInt_withJavaNioByteOrder_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  if (JavaNioByteOrder_BIG_ENDIAN__ != a3)
  {
    if (a1)
    {
      v6 = *(a1 + 8);
      v7 = a2 + 1;
      if (a2 + 1 < 0 || v7 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v7);
      }

      v8 = *(a1 + 12 + a2 + 1) << 8;
      v9 = a2;
      if ((a2 & 0x80000000) != 0 || v6 <= a2)
      {
        v10 = a2;
        goto LABEL_20;
      }

      return (v8 | *(a1 + 12 + v9));
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v6 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, a2);
  }

  v8 = *(a1 + 12 + a2) << 8;
  v11 = a2 + 1;
  v9 = a2 + 1;
  if (a2 + 1 < 0 || v11 >= v6)
  {
    v10 = v11;
LABEL_20:
    IOSArray_throwOutOfBoundsWithMsg(v6, v10);
  }

  return (v8 | *(a1 + 12 + v9));
}

uint64_t LibcoreIoMemory_pokeIntWithByteArray_withInt_withInt_withJavaNioByteOrder_(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  if (JavaNioByteOrder_BIG_ENDIAN__ != a4)
  {
    if (a1)
    {
      v8 = *(a1 + 8);
      if ((a2 & 0x80000000) != 0 || v8 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, a2);
      }

      *(a1 + 12 + a2) = a3;
      v9 = *(a1 + 8);
      v10 = a2 + 1;
      if (a2 + 1 < 0 || v10 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v10);
      }

      *(a1 + 12 + v10) = BYTE1(a3);
      v11 = *(a1 + 8);
      v12 = a2 + 2;
      if (a2 + 2 < 0 || v12 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v12);
      }

      *(a1 + 12 + a2 + 2) = BYTE2(a3);
      a3 >>= 24;
      goto LABEL_20;
    }

LABEL_23:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_23;
  }

  v13 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v13 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, a2);
  }

  *(a1 + 12 + a2) = HIBYTE(a3);
  v14 = *(a1 + 8);
  v15 = a2 + 1;
  if (a2 + 1 < 0 || v15 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v15);
  }

  *(a1 + 12 + v15) = BYTE2(a3);
  v16 = *(a1 + 8);
  v17 = a2 + 2;
  if (a2 + 2 < 0 || v17 >= v16)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16, v17);
  }

  *(a1 + 12 + a2 + 2) = BYTE1(a3);
LABEL_20:
  result = *(a1 + 8);
  v19 = (a2 + 3);
  if (v19 < 0 || v19 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v19);
  }

  *(a1 + 12 + v19) = a3;
  return result;
}

uint64_t LibcoreIoMemory_pokeLongWithByteArray_withInt_withLong_withJavaNioByteOrder_(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  if (JavaNioByteOrder_BIG_ENDIAN__ != a4)
  {
    if (a1)
    {
      v8 = *(a1 + 8);
      if ((a2 & 0x80000000) != 0 || v8 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, a2);
      }

      *(a1 + 12 + a2) = a3;
      v9 = *(a1 + 8);
      v10 = a2 + 1;
      if (a2 + 1 < 0 || v10 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v10);
      }

      *(a1 + 12 + v10) = BYTE1(a3);
      v11 = *(a1 + 8);
      v12 = a2 + 2;
      if (a2 + 2 < 0 || v12 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v12);
      }

      *(a1 + 12 + v12) = BYTE2(a3);
      v13 = *(a1 + 8);
      v14 = a2 + 3;
      if (a2 + 3 < 0 || v14 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v14);
      }

      *(a1 + 12 + v14) = BYTE3(a3);
      v15 = *(a1 + 8);
      v16 = a2 + 4;
      if (a2 + 4 < 0 || v16 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v16);
      }

      *(a1 + 12 + v16) = BYTE4(a3);
      v17 = *(a1 + 8);
      v18 = a2 + 5;
      if (a2 + 5 < 0 || v18 >= v17)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, v18);
      }

      *(a1 + 12 + v18) = BYTE5(a3);
      v19 = *(a1 + 8);
      v20 = a2 + 6;
      if (a2 + 6 < 0 || v20 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v20);
      }

      *(a1 + 12 + a2 + 6) = BYTE6(a3);
      a3 >>= 56;
      goto LABEL_36;
    }

LABEL_39:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_39;
  }

  v21 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v21 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v21, a2);
  }

  *(a1 + 12 + a2) = HIBYTE(a3);
  v22 = *(a1 + 8);
  v23 = a2 + 1;
  if (a2 + 1 < 0 || v23 >= v22)
  {
    IOSArray_throwOutOfBoundsWithMsg(v22, v23);
  }

  *(a1 + 12 + v23) = BYTE6(a3);
  v24 = *(a1 + 8);
  v25 = a2 + 2;
  if (a2 + 2 < 0 || v25 >= v24)
  {
    IOSArray_throwOutOfBoundsWithMsg(v24, v25);
  }

  *(a1 + 12 + v25) = BYTE5(a3);
  v26 = *(a1 + 8);
  v27 = a2 + 3;
  if (a2 + 3 < 0 || v27 >= v26)
  {
    IOSArray_throwOutOfBoundsWithMsg(v26, v27);
  }

  *(a1 + 12 + v27) = BYTE4(a3);
  v28 = *(a1 + 8);
  v29 = a2 + 4;
  if (a2 + 4 < 0 || v29 >= v28)
  {
    IOSArray_throwOutOfBoundsWithMsg(v28, v29);
  }

  *(a1 + 12 + v29) = BYTE3(a3);
  v30 = *(a1 + 8);
  v31 = a2 + 5;
  if (a2 + 5 < 0 || v31 >= v30)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, v31);
  }

  *(a1 + 12 + v31) = BYTE2(a3);
  v32 = *(a1 + 8);
  v33 = a2 + 6;
  if (a2 + 6 < 0 || v33 >= v32)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, v33);
  }

  *(a1 + 12 + a2 + 6) = BYTE1(a3);
LABEL_36:
  result = *(a1 + 8);
  v35 = (a2 + 7);
  if (v35 < 0 || v35 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v35);
  }

  *(a1 + 12 + v35) = a3;
  return result;
}

uint64_t LibcoreIoMemory_pokeShortWithByteArray_withInt_withShort_withJavaNioByteOrder_(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  if (JavaNioByteOrder_BIG_ENDIAN__ != a4)
  {
    if (a1)
    {
      v8 = (a2 + 1);
      v9 = *(a1 + 8);
      if ((a2 & 0x80000000) != 0 || v9 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, a2);
      }

      *(a1 + 12 + a2) = a3;
      LOBYTE(a3) = HIBYTE(a3);
      goto LABEL_12;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_15;
  }

  v8 = (a2 + 1);
  v10 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v10 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, a2);
  }

  *(a1 + 12 + a2) = HIBYTE(a3);
LABEL_12:
  result = *(a1 + 8);
  if ((v8 & 0x80000000) != 0 || v8 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v8);
  }

  *(a1 + 12 + v8) = a3;
  return result;
}

uint64_t LibcoreIoMemory_memmoveWithId_withInt_withId_withInt_withLong_(uint64_t a1, int a2, uint64_t a3, int a4, size_t a5)
{
  if (!a1)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if ((result & 1) == 0)
    {
      return result;
    }

    v11 = *(a1 + 32);
    if (!v11)
    {
      return result;
    }

LABEL_8:
    if (a3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        result = *(a3 + 8);
        if (result <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, 0);
        }

        v12 = a3 + 12;
        if (a3 == -12)
        {
          return result;
        }
      }

      else
      {
        objc_opt_class();
        result = objc_opt_isKindOfClass();
        if ((result & 1) == 0)
        {
          return result;
        }

        v12 = *(a3 + 32);
        if (!v12)
        {
          return result;
        }
      }

      return memmove((v11 + a2), (v12 + a4), a5);
    }

LABEL_19:
    JreThrowNullPointerException();
  }

  result = *(a1 + 8);
  if (result <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, 0);
  }

  v11 = a1 + 12;
  if (v11)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t LibcoreIoMemory_peekIntWithLong_withBoolean_(unsigned int *a1, int a2)
{
  result = *a1;
  if (a2)
  {
    return JavaLangInteger_reverseBytesWithInt_(result);
  }

  return result;
}

unint64_t LibcoreIoMemory_peekLongWithLong_withBoolean_(unint64_t *a1, int a2)
{
  result = *a1;
  if (a2)
  {
    return JavaLangLong_reverseBytesWithLong_(result);
  }

  return result;
}

uint64_t LibcoreIoMemory_peekShortWithLong_withBoolean_(__int16 *a1, int a2)
{
  result = *a1;
  if (a2)
  {
    return JavaLangShort_reverseBytesWithShort_(result);
  }

  return result;
}

uint64_t LibcoreIoMemory_peekCharArrayWithLong_withCharArray_withInt_withInt_withBoolean_(unsigned int *__src, uint64_t a2, uint64_t a3, signed int a4, int a5)
{
  result = *(a2 + 8);
  v8 = a3 < 0 || result <= a3;
  if (a5)
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    v9 = (a2 + 12 + 2 * a3);
    if (a4 >= 2)
    {
      v10 = a4 >> 1;
      do
      {
        v11 = *__src++;
        *v9++ = __rev16(v11);
        --v10;
      }

      while (v10);
    }

    if (a4)
    {
      *v9 = bswap32(*__src) >> 16;
    }
  }

  else
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    return memmove((a2 + 12 + 2 * a3), __src, 2 * a4);
  }

  return result;
}

uint64_t LibcoreIoMemory_peekDoubleArrayWithLong_withDoubleArray_withInt_withInt_withBoolean_(int8x8_t *__src, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = *(a2 + 8);
  v8 = a3 < 0 || result <= a3;
  if (a5)
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    if (a4)
    {
      v9 = a4;
      v10 = (a2 + 16 + 8 * a3);
      do
      {
        v11 = *__src++;
        *v10++ = vrev64_s32(vrev32_s8(v11));
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    return memmove((a2 + 16 + 8 * a3), __src, 8 * a4);
  }

  return result;
}

uint64_t LibcoreIoMemory_peekFloatArrayWithLong_withFloatArray_withInt_withInt_withBoolean_(unsigned int *__src, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = *(a2 + 8);
  v8 = a3 < 0 || result <= a3;
  if (a5)
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    if (a4)
    {
      v9 = a4;
      v10 = (a2 + 12 + 4 * a3);
      do
      {
        v11 = *__src++;
        *v10++ = bswap32(v11);
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    return memmove((a2 + 12 + 4 * a3), __src, 4 * a4);
  }

  return result;
}

uint64_t LibcoreIoMemory_peekIntArrayWithLong_withIntArray_withInt_withInt_withBoolean_(unsigned int *__src, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = *(a2 + 8);
  v8 = a3 < 0 || result <= a3;
  if (a5)
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    if (a4)
    {
      v9 = a4;
      v10 = (a2 + 12 + 4 * a3);
      do
      {
        v11 = *__src++;
        *v10++ = bswap32(v11);
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    return memmove((a2 + 12 + 4 * a3), __src, 4 * a4);
  }

  return result;
}

uint64_t LibcoreIoMemory_peekLongArrayWithLong_withLongArray_withInt_withInt_withBoolean_(int8x8_t *__src, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = *(a2 + 8);
  v8 = a3 < 0 || result <= a3;
  if (a5)
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    if (a4)
    {
      v9 = a4;
      v10 = (a2 + 16 + 8 * a3);
      do
      {
        v11 = *__src++;
        *v10++ = vrev64_s32(vrev32_s8(v11));
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    return memmove((a2 + 16 + 8 * a3), __src, 8 * a4);
  }

  return result;
}

uint64_t LibcoreIoMemory_peekShortArrayWithLong_withShortArray_withInt_withInt_withBoolean_(unsigned int *__src, uint64_t a2, uint64_t a3, signed int a4, int a5)
{
  result = *(a2 + 8);
  v8 = a3 < 0 || result <= a3;
  if (a5)
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    v9 = (a2 + 12 + 2 * a3);
    if (a4 >= 2)
    {
      v10 = a4 >> 1;
      do
      {
        v11 = *__src++;
        *v9++ = __rev16(v11);
        --v10;
      }

      while (v10);
    }

    if (a4)
    {
      *v9 = bswap32(*__src) >> 16;
    }
  }

  else
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    return memmove((a2 + 12 + 2 * a3), __src, 2 * a4);
  }

  return result;
}

uint64_t LibcoreIoMemory_pokeIntWithLong_withInt_withBoolean_(uint64_t result, unsigned int a2, int a3)
{
  v3 = result;
  if (a3)
  {
    result = JavaLangInteger_reverseBytesWithInt_(a2);
    a2 = result;
  }

  *v3 = a2;
  return result;
}

unint64_t LibcoreIoMemory_pokeLongWithLong_withLong_withBoolean_(unint64_t result, unint64_t a2, int a3)
{
  v3 = result;
  if (a3)
  {
    result = JavaLangLong_reverseBytesWithLong_(a2);
    a2 = result;
  }

  *v3 = a2;
  return result;
}

uint64_t LibcoreIoMemory_pokeShortWithLong_withShort_withBoolean_(uint64_t result, __int16 a2, int a3)
{
  v3 = result;
  if (a3)
  {
    result = JavaLangShort_reverseBytesWithShort_(a2);
    a2 = result;
  }

  *v3 = a2;
  return result;
}

uint64_t LibcoreIoMemory_pokeCharArrayWithLong_withCharArray_withInt_withInt_withBoolean_(_DWORD *__dst, uint64_t a2, uint64_t a3, signed int a4, int a5)
{
  result = *(a2 + 8);
  v8 = a3 < 0 || result <= a3;
  if (a5)
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    v9 = (a2 + 12 + 2 * a3);
    if (a4 >= 2)
    {
      v10 = a4 >> 1;
      do
      {
        v11 = *v9++;
        *__dst++ = __rev16(v11);
        --v10;
      }

      while (v10);
    }

    if (a4)
    {
      *__dst = bswap32(*v9) >> 16;
    }
  }

  else
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    v12 = (a2 + 12 + 2 * a3);

    return memmove(__dst, v12, 2 * a4);
  }

  return result;
}

uint64_t LibcoreIoMemory_pokeDoubleArrayWithLong_withDoubleArray_withInt_withInt_withBoolean_(int32x2_t *__dst, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = *(a2 + 8);
  v8 = a3 < 0 || result <= a3;
  if (a5)
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    if (a4)
    {
      v9 = a4;
      v10 = (a2 + 16 + 8 * a3);
      do
      {
        v11 = *v10++;
        *__dst++ = vrev64_s32(vrev32_s8(v11));
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    v12 = (a2 + 16 + 8 * a3);

    return memmove(__dst, v12, 8 * a4);
  }

  return result;
}

uint64_t LibcoreIoMemory_pokeFloatArrayWithLong_withFloatArray_withInt_withInt_withBoolean_(_DWORD *__dst, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = *(a2 + 8);
  v8 = a3 < 0 || result <= a3;
  if (a5)
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    if (a4)
    {
      v9 = a4;
      v10 = (a2 + 12 + 4 * a3);
      do
      {
        v11 = *v10++;
        *__dst++ = bswap32(v11);
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    v12 = (a2 + 12 + 4 * a3);

    return memmove(__dst, v12, 4 * a4);
  }

  return result;
}

uint64_t LibcoreIoMemory_pokeIntArrayWithLong_withIntArray_withInt_withInt_withBoolean_(_DWORD *__dst, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = *(a2 + 8);
  v8 = a3 < 0 || result <= a3;
  if (a5)
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    if (a4)
    {
      v9 = a4;
      v10 = (a2 + 12 + 4 * a3);
      do
      {
        v11 = *v10++;
        *__dst++ = bswap32(v11);
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    v12 = (a2 + 12 + 4 * a3);

    return memmove(__dst, v12, 4 * a4);
  }

  return result;
}

uint64_t LibcoreIoMemory_pokeLongArrayWithLong_withLongArray_withInt_withInt_withBoolean_(int32x2_t *__dst, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = *(a2 + 8);
  v8 = a3 < 0 || result <= a3;
  if (a5)
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    if (a4)
    {
      v9 = a4;
      v10 = (a2 + 16 + 8 * a3);
      do
      {
        v11 = *v10++;
        *__dst++ = vrev64_s32(vrev32_s8(v11));
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    v12 = (a2 + 16 + 8 * a3);

    return memmove(__dst, v12, 8 * a4);
  }

  return result;
}

uint64_t LibcoreIoMemory_pokeShortArrayWithLong_withShortArray_withInt_withInt_withBoolean_(_DWORD *__dst, uint64_t a2, uint64_t a3, signed int a4, int a5)
{
  result = *(a2 + 8);
  v8 = a3 < 0 || result <= a3;
  if (a5)
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    v9 = (a2 + 12 + 2 * a3);
    if (a4 >= 2)
    {
      v10 = a4 >> 1;
      do
      {
        v11 = *v9++;
        *__dst++ = __rev16(v11);
        --v10;
      }

      while (v10);
    }

    if (a4)
    {
      *__dst = bswap32(*v9) >> 16;
    }
  }

  else
  {
    if (v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a3);
    }

    v12 = (a2 + 12 + 2 * a3);

    return memmove(__dst, v12, 2 * a4);
  }

  return result;
}

JavaLangArrayIndexOutOfBoundsException *new_JavaLangArrayIndexOutOfBoundsException_init()
{
  v0 = [JavaLangArrayIndexOutOfBoundsException alloc];
  JavaLangIndexOutOfBoundsException_init(v0, v1);
  return v0;
}

JavaLangArrayIndexOutOfBoundsException *new_JavaLangArrayIndexOutOfBoundsException_initWithInt_()
{
  v0 = [JavaLangArrayIndexOutOfBoundsException alloc];
  v8 = JreStrcat("$I", v1, v2, v3, v4, v5, v6, v7, @"index=");
  JavaLangIndexOutOfBoundsException_initWithNSString_(v0, v8);
  return v0;
}

JavaLangArrayIndexOutOfBoundsException *new_JavaLangArrayIndexOutOfBoundsException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangArrayIndexOutOfBoundsException alloc];
  JavaLangIndexOutOfBoundsException_initWithNSString_(v2, a1);
  return v2;
}

JavaLangArrayIndexOutOfBoundsException *new_JavaLangArrayIndexOutOfBoundsException_initWithInt_withInt_withInt_()
{
  v0 = [JavaLangArrayIndexOutOfBoundsException alloc];
  v8 = JreStrcat("$I$I$I", v1, v2, v3, v4, v5, v6, v7, @"length=");
  JavaLangIndexOutOfBoundsException_initWithNSString_(v0, v8);
  return v0;
}

id sub_1002531D8(uint64_t a1, int a2)
{
  if (a2 < 8)
  {
    v6 = 8;
  }

  else
  {
    v3 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
    v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
    v5 = v4 | HIWORD(v4);
    if (v5 + 1 >= 0)
    {
      v6 = (v5 + 1);
    }

    else
    {
      v6 = 0x40000000;
    }
  }

  v7 = [IOSObjectArray arrayWithLength:v6 type:NSObject_class_()];
  objc_opt_class();
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return JreStrongAssign((a1 + 8), v7);
}

id sub_1002532A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  v2 = *(v1 + 8);
  if (2 * v2 < 0)
  {
    v7 = new_JavaLangIllegalStateException_initWithNSString_(@"Sorry, deque too big");
    objc_exception_throw(v7);
  }

  v4 = *(a1 + 16);
  v5 = [IOSObjectArray arrayWithLength:(2 * v2) type:NSObject_class_()];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 8), v4, v5, 0, (v2 - v4));
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 8), 0, v5, (v2 - v4), v4);
  objc_opt_class();
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  result = JreStrongAssign((a1 + 8), v5);
  *(a1 + 16) = 0;
  *(a1 + 20) = v2;
  return result;
}

void *sub_1002533D4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (v4 < v5)
  {
    v6 = *(a1 + 8);
    v7 = [a1 size];
    v8 = v6;
    v9 = v4;
    v10 = a2;
    v11 = 0;
LABEL_6:
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v8, v9, v10, v11, v7);
    return a2;
  }

  if (v4 > v5)
  {
    v12 = *(a1 + 8);
    if (!v12)
    {
      JreThrowNullPointerException();
    }

    v13 = (v12[2] - v4);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v12, v4, a2, 0, v13);
    v8 = *(a1 + 8);
    v7 = *(a1 + 20);
    v9 = 0;
    v10 = a2;
    v11 = v13;
    goto LABEL_6;
  }

  return a2;
}

id JavaUtilArrayDeque_init(uint64_t a1, uint64_t a2)
{
  JavaUtilAbstractCollection_init(a1, a2);
  v3 = [IOSObjectArray arrayWithLength:16 type:NSObject_class_()];
  objc_opt_class();
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return JreStrongAssign((a1 + 8), v3);
}

id JavaUtilArrayDeque_initWithJavaUtilCollection_(void *a1, void *a2)
{
  JavaUtilAbstractCollection_init(a1, a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  sub_1002531D8(a1, [a2 size]);

  return [a1 addAllWithJavaUtilCollection:a2];
}

BOOL sub_100253C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = (*(v2 + 8) - 1);
  v7 = (a2 - v4) & v6;
  if (v7 >= ((v5 - v4) & v6))
  {
    v20 = new_JavaUtilConcurrentModificationException_init();
    objc_exception_throw(v20);
  }

  v8 = (v5 - a2) & v6;
  if (v7 < v8)
  {
    if (a2 >= v4)
    {
      v11 = v4 + 1;
      v13 = *(a1 + 8);
      v14 = v4;
      v15 = v2;
      v16 = (v4 + 1);
      v12 = v7;
    }

    else
    {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 8), 0, v2, 1, a2);
      v10 = *(v2 + 8);
      if ((v6 & 0x80000000) != 0 || v6 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v6);
      }

      IOSObjectArray_Set(v2, 0, *(v2 + 24 + 8 * v6));
      v11 = v4 + 1;
      v12 = (v6 - v4);
      v13 = v2;
      v14 = v4;
      v15 = v2;
      v16 = (v4 + 1);
    }

    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v13, v14, v15, v16, v12);
    IOSObjectArray_Set(v2, v4, 0);
    v9 = v11 & v6;
    v18 = &OBJC_IVAR___JavaUtilArrayDeque_head_;
  }

  else
  {
    if (v5 <= a2)
    {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 8), (a2 + 1), v2, a2, (v6 - a2));
      v17 = *(v2 + 8);
      if (v17 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, 0);
      }

      IOSObjectArray_Set(v2, v6, *(v2 + 24));
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v2, 1, v2, 0, v5);
      v9 = (v5 - 1) & v6;
    }

    else
    {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 8), (a2 + 1), v2, a2, (v5 - a2) & v6);
      v9 = v5 - 1;
    }

    v18 = &OBJC_IVAR___JavaUtilArrayDeque_tail_;
  }

  result = v7 >= v8;
  *(a1 + *v18) = v9;
  return result;
}

JavaUtilArrayDeque *new_JavaUtilArrayDeque_init()
{
  v0 = [JavaUtilArrayDeque alloc];
  JavaUtilArrayDeque_init(v0, v1);
  return v0;
}

JavaUtilArrayDeque *new_JavaUtilArrayDeque_initWithInt_(int a1)
{
  v2 = [JavaUtilArrayDeque alloc];
  JavaUtilAbstractCollection_init(v2, v3);
  sub_1002531D8(v2, a1);
  return v2;
}

JavaNioChannelsNonWritableChannelException *new_JavaNioChannelsNonWritableChannelException_init()
{
  v0 = [JavaNioChannelsNonWritableChannelException alloc];
  JavaLangIllegalStateException_init(v0, v1);
  return v0;
}

void sub_100254CA8(void **a1)
{
  pthread_setspecific(qword_100555400, 0);
  if (*a1)
  {
    free(*a1);
  }

  free(a1);
}

BOOL j2objc_sync_holds_lock(unint64_t a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  return sub_100254E30(a1, 3) != 0;
}

int *sub_100254D24(int a1)
{
  pthread_once(&stru_100552928, init_j2objc_thread_data);
  v2 = pthread_getspecific(qword_100555400);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1 == 0;
  }

  if (v3)
  {
    return 0;
  }

  v4 = v2;
  if (!v2)
  {
    v4 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    pthread_setspecific(qword_100555400, v4);
  }

  result = *v4;
  if (*v4)
  {
    v6 = *result;
    goto LABEL_11;
  }

  if (!a1)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x48uLL, 0x100004000313F17uLL);
  *v4 = result;
  v6 = 4;
  *result = 4;
LABEL_11:
  if (v6 == result[1])
  {
    v7 = 2 * v6;
    *result = v7;
    result = malloc_type_realloc(result, (32 * (v7 >> 1)) | 8, 0x100004000313F17uLL);
    *v4 = result;
  }

  return result;
}

char *sub_100254E30(unint64_t a1, int a2)
{
  v4 = sub_100254D24(0);
  v5 = v4;
  if (!v4 || (v6 = v4[1], !v6))
  {
LABEL_6:
    if (a2 == 3)
    {
      return 0;
    }

    v9 = (&unk_100555440 + 64 * ((a1 >> 5) & 0x3F));
    os_unfair_lock_lock(v9);
    v10 = *&v9[2]._os_unfair_lock_opaque;
    if (v10)
    {
      v11 = 0;
      do
      {
        if (*(v10 + 1) == a1)
        {
          atomic_fetch_add(v10 + 4, 1u);
          goto LABEL_34;
        }

        if (!v11)
        {
          if (atomic_load(v10 + 4))
          {
            v11 = 0;
          }

          else
          {
            v11 = v10;
          }
        }

        v10 = *v10;
      }

      while (v10);
      if ((a2 - 1) < 2)
      {
        goto LABEL_25;
      }

      if (v11)
      {
        *(v11 + 1) = a1;
        atomic_store(1u, v11 + 4);
        v10 = v11;
        goto LABEL_34;
      }
    }

    else if ((a2 - 1) < 2)
    {
LABEL_25:
      v10 = 0;
      goto LABEL_34;
    }

    v10 = malloc_type_malloc(0x88uLL, 0x10A0040502F9262uLL);
    *(v10 + 1) = a1;
    atomic_store(1u, v10 + 4);
    if ((byte_100556440 & 1) == 0 && !pthread_mutexattr_init(&stru_100556448) && !pthread_mutexattr_settype(&stru_100556448, 2))
    {
      byte_100556440 = 1;
    }

    if (!pthread_mutex_init((v10 + 24), &stru_100556448) && !pthread_cond_init((v10 + 88), 0))
    {
      *v10 = *&v9[2]._os_unfair_lock_opaque;
      *&v9[2]._os_unfair_lock_opaque = v10;
    }

LABEL_34:
    os_unfair_lock_unlock(v9);
    result = 0;
    if (a2 || !v10)
    {
      return result;
    }

    if (*(v10 + 1) == a1)
    {
      if (!v5)
      {
        v5 = sub_100254D24(1);
      }

      v15 = v5[1];
      v16 = &v5[4 * v15];
      v5[1] = v15 + 1;
      *(v16 + 1) = v10;
      v16[4] = 1;
      return v10;
    }

    return 0;
  }

  v7 = v4 + 4;
  while (1)
  {
    result = *(v7 - 1);
    if (*(result + 1) == a1)
    {
      break;
    }

    v7 += 4;
    if (!--v6)
    {
      goto LABEL_6;
    }
  }

  v13 = atomic_load(result + 4);
  if (v13 < 1)
  {
    return 0;
  }

  v14 = *v7;
  if (!*v7)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v17 = v14 - 1;
    *v7 = v17;
    if (!v17)
    {
      v18 = v5[1] - 1;
      v5[1] = v18;
      *(v7 - 2) = *&v5[4 * v18 + 2];
      atomic_fetch_add(result + 4, 0xFFFFFFFF);
    }
  }

  else if (!a2)
  {
    *v7 = v14 + 1;
  }

  return result;
}

JavaLangCloneNotSupportedException *new_JavaLangCloneNotSupportedException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangCloneNotSupportedException alloc];
  JavaLangException_initWithNSString_(v2, a1);
  return v2;
}

JavaIoSyncFailedException *new_JavaIoSyncFailedException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaIoSyncFailedException alloc];
  JavaIoIOException_initWithNSString_(v2, a1);
  return v2;
}

uint64_t sub_1002551B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_10025E130();
  }

  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_10025E130();
  }

  if (v8 >= 0x110000)
  {
    v9 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Invalid code point: ");
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(v9);
    objc_exception_throw(v10);
  }

  return result;
}

JavaLangCharacter *JavaLangCharacter_valueOfWithChar_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  if (a1 > 0x7F)
  {
    v3 = [JavaLangCharacter alloc];
    v3->value_ = a1;

    return v3;
  }

  else
  {

    return sub_100255370(a1);
  }
}

uint64_t sub_100255370(int a1)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  if (qword_100556888 != -1)
  {
    sub_10025E13C();
  }

  return qword_100556488[a1];
}

BOOL JavaLangCharacter_isValidCodePointWithInt_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return a1 < 0x110000;
}

BOOL JavaLangCharacter_isHighSurrogateWithChar_(__int16 a1)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (a1 & 0xFC00) == 55296;
}

BOOL JavaLangCharacter_isSurrogatePairWithChar_withChar_(__int16 a1, __int16 a2)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  if ((a1 & 0xFC00) != 0xD800)
  {
    return 0;
  }

  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (a2 & 0xFC00) == 56320;
}

uint64_t JavaLangCharacter_charCountWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  if (a1 < 0x10000)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id JavaLangCharacter_codePointAtWithJavaLangCharSequence_withInt_(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_12:
    v10 = new_JavaLangNullPointerException_initWithNSString_(@"seq == null");
    goto LABEL_14;
  }

  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_3:
  v4 = [a1 length];
  if ((a2 & 0x80000000) != 0 || (v5 = v4, v4 <= a2))
  {
    v10 = new_JavaLangIndexOutOfBoundsException_init();
LABEL_14:
    objc_exception_throw(v10);
  }

  v6 = (a2 + 1);
  v7 = [a1 charAtWithInt:a2];
  if (v6 < v5)
  {
    v8 = [a1 charAtWithInt:v6];
    if (JavaLangCharacter_isSurrogatePairWithChar_withChar_(v7, v8))
    {
      if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10025E130();
      }

      return ((v8 & 0x3FF | ((v7 & 0x3FF) << 10)) + 0x10000);
    }
  }

  return v7;
}

uint64_t JavaLangCharacter_codePointAtRaw(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 2 * a2);
  if (a2 + 1 < a3)
  {
    v4 = *(a1 + 2 * (a2 + 1));
    if (JavaLangCharacter_isSurrogatePairWithChar_withChar_(*(a1 + 2 * a2), v4))
    {
      if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10025E130();
      }

      return (v4 & 0x3FF | ((v3 & 0x3FF) << 10)) + 0x10000;
    }
  }

  return v3;
}

uint64_t JavaLangCharacter_codePointAtWithCharArray_withInt_(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = [[JavaLangNullPointerException alloc] initWithNSString:@"seq == null"];
    goto LABEL_11;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (a2 < 0 || (v4 = *(a1 + 8), v4 <= a2))
  {
    v6 = objc_alloc_init(JavaLangIndexOutOfBoundsException);
LABEL_11:
    objc_exception_throw(v6);
  }

  return JavaLangCharacter_codePointAtRaw(a1 + 12, a2, v4);
}

uint64_t JavaLangCharacter_codePointAtWithCharArray_withInt_withInt_(uint64_t a1, int a2, int a3)
{
  if (atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire))
  {
    if (a2 < 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_10025E130();
    if (a2 < 0)
    {
      goto LABEL_10;
    }
  }

  if (a2 >= a3)
  {
    goto LABEL_10;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if (*(a1 + 8) < a3)
  {
LABEL_10:
    objc_exception_throw(objc_alloc_init(JavaLangIndexOutOfBoundsException));
  }

  return JavaLangCharacter_codePointAtRaw(a1 + 12, a2, a3);
}

id JavaLangCharacter_codePointBeforeWithJavaLangCharSequence_withInt_(void *a1, int a2)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = new_JavaLangNullPointerException_initWithNSString_(@"seq == null");
    goto LABEL_14;
  }

  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_3:
  v4 = [a1 length];
  if (a2 < 1 || v4 < a2)
  {
    v8 = new_JavaLangIndexOutOfBoundsException_init();
LABEL_14:
    objc_exception_throw(v8);
  }

  v5 = [a1 charAtWithInt:(a2 - 1)];
  if (a2 != 1)
  {
    v6 = [a1 charAtWithInt:(a2 - 2)];
    if (JavaLangCharacter_isSurrogatePairWithChar_withChar_(v6, v5))
    {
      if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10025E130();
      }

      return ((v5 & 0x3FF | ((v6 & 0x3FF) << 10)) + 0x10000);
    }
  }

  return v5;
}

uint64_t JavaLangCharacter_codePointBeforeRaw(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 2 * (a2 - 1));
  if (a2 - 2 >= a3)
  {
    v4 = *(a1 + 2 * (a2 - 2));
    if (JavaLangCharacter_isSurrogatePairWithChar_withChar_(v4, v3))
    {
      if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10025E130();
      }

      return (v3 & 0x3FF | ((v4 & 0x3FF) << 10)) + 0x10000;
    }
  }

  return v3;
}

uint64_t JavaLangCharacter_codePointBeforeWithCharArray_withInt_(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = [[JavaLangNullPointerException alloc] initWithNSString:@"seq == null"];
    goto LABEL_11;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (a2 < 1 || *(a1 + 8) < a2)
  {
    v5 = objc_alloc_init(JavaLangIndexOutOfBoundsException);
LABEL_11:
    objc_exception_throw(v5);
  }

  return JavaLangCharacter_codePointBeforeRaw(a1 + 12, a2, 0);
}

uint64_t JavaLangCharacter_codePointBeforeWithCharArray_withInt_withInt_(uint64_t a1, int a2, int a3)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_11:
    v8 = [[JavaLangNullPointerException alloc] initWithNSString:@"seq == null"];
    goto LABEL_13;
  }

  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (a2 <= a3 || (v6 = *(a1 + 8), v6 <= a3) || a3 < 0 || v6 < a2)
  {
    v8 = objc_alloc_init(JavaLangIndexOutOfBoundsException);
LABEL_13:
    objc_exception_throw(v8);
  }

  return JavaLangCharacter_codePointBeforeRaw(a1 + 12, a2, a3);
}

uint64_t JavaLangCharacter_toCharsWithInt_withCharArray_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  sub_1002551B4(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!a2)
  {
    v16 = new_JavaLangNullPointerException_initWithNSString_(@"dst == null");
LABEL_21:
    objc_exception_throw(v16);
  }

  if ((v8 & 0x80000000) != 0 || *(a2 + 8) <= v8)
  {
LABEL_19:
    v16 = new_JavaLangIndexOutOfBoundsException_init();
    goto LABEL_21;
  }

  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  if (!((a1 - 0x10000) >> 20))
  {
    v11 = *(a2 + 8);
    if (v11 - 1 != v8)
    {
      if (v11 <= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v8);
      }

      *(a2 + 12 + 2 * v8) = ((a1 - 0x10000) >> 10) | 0xD800;
      v12 = a1 & 0x3FF | 0xDC00;
      v8 = (v8 + 1);
      v13 = *(a2 + 8);
      if (v8 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v8);
      }

      result = 2;
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v15 = *(a2 + 8);
  if (v15 <= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, v8);
  }

  result = 1;
  v12 = a1;
LABEL_15:
  *(a2 + 12 + 2 * v8) = v12;
  return result;
}