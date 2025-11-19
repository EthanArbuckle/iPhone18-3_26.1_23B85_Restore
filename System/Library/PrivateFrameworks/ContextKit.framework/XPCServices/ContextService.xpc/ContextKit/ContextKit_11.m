JavaMathBigInteger *JavaMathMultiplication_multiplyByPositiveIntWithJavaMathBigInteger_withInt_(uint64_t a1, unsigned int a2)
{
  if (atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_1001F4A04();
    if (!a1)
    {
      goto LABEL_22;
    }
  }

  v4 = *(a1 + 20);
  if (!v4)
  {
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100147554();
    }

    return JavaMathBigInteger_ZERO_;
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 != 1)
  {
    v13 = [IOSIntArray arrayWithLength:v5 + 1];
    v14 = sub_1001F35A0(v13, v6, v5, a2);
    size = v13->super.size_;
    if ((v5 & 0x80000000) != 0 || v5 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v5);
    }

    *(&v13->super.size_ + v5 + 1) = v14;
    v12 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v4, v5 + 1, v13);
    [(JavaMathBigInteger *)v12 cutOffLeadingZeroes];
    return v12;
  }

  if (!v6)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  v7 = *(v6 + 8);
  if (v7 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 0);
  }

  v8 = *(v6 + 12);
  if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F4A04();
  }

  v9 = v8 * a2;
  if (HIDWORD(v9))
  {
    v16 = v8 * a2;
    return new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v4, 2, [IOSIntArray arrayWithInts:&v16 count:2]);
  }

  v10 = new_JavaMathBigInteger_initWithInt_withInt_(v4, v9);

  return v10;
}

id JavaMathMultiplication_powWithJavaMathBigInteger_withInt_(JavaMathBigInteger *a1, int a2)
{
  if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F4A04();
  }

  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  v4 = JavaMathBigInteger_ONE_;
  if (a2 >= 2)
  {
    while (1)
    {
      if (a2)
      {
        if (!v4)
        {
          break;
        }

        v4 = [v4 multiplyWithJavaMathBigInteger:a1];
      }

      if (!a1)
      {
        break;
      }

      numberLength = a1->numberLength_;
      if (numberLength == 1)
      {
        v6 = [(JavaMathBigInteger *)a1 multiplyWithJavaMathBigInteger:a1];
      }

      else
      {
        digits = a1->digits_;
        v8 = [IOSIntArray arrayWithLength:2 * numberLength];
        JavaMathMultiplication_squareWithIntArray_withInt_withIntArray_(digits, numberLength, v8);
        v6 = new_JavaMathBigInteger_initWithInt_withIntArray_(1, v8);
      }

      a1 = v6;
      v9 = a2 > 3;
      a2 = a2 >> 1;
      if (!v9)
      {
        goto LABEL_14;
      }
    }

LABEL_18:
    JreThrowNullPointerException();
  }

LABEL_14:
  if (!v4)
  {
    goto LABEL_18;
  }

  return [v4 multiplyWithJavaMathBigInteger:a1];
}

uint64_t JavaMathMultiplication_squareWithIntArray_withInt_withIntArray_(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a1;
  if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
  {
    v45 = a2;
    sub_1001F4A04();
    a2 = v45;
    v4 = a1;
  }

  if (a2 <= 0)
  {
    JavaMathBitLevel_shiftLeftOneBitWithIntArray_withIntArray_withInt_(a3, a3, 2 * a2);
    return a3;
  }

  v5 = 0;
  v6 = v4 + 4;
  v7 = 1;
  v8 = 1;
  v9 = a2;
  v52 = a2;
  v51 = a2;
  do
  {
    v10 = v5 + 1;
    if (v5 + 1 < v9)
    {
      if (v4)
      {
        v11 = 0;
        v12 = v6;
        v13 = v7;
        v14 = v8;
        v15 = v4 + 4 * v5;
        while (1)
        {
          v16 = *(v4 + 8);
          if (v5 >= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, v5);
          }

          v17 = *(v15 + 12);
          if (v14 >= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, v14);
          }

          if (!a3)
          {
            break;
          }

          v18 = *(v12 + 12);
          v19 = *(a3 + 8);
          if ((v13 & 0x80000000) != 0 || v13 >= v19)
          {
            IOSArray_throwOutOfBoundsWithMsg(v19, v13);
          }

          v20 = *(a3 + 12 + 4 * v13);
          if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
          {
            v46 = v4;
            v47 = v8;
            v48 = v6;
            v49 = v10;
            v50 = v7;
            sub_1001F4A04();
            v10 = v49;
            v7 = v50;
            v8 = v47;
            v6 = v48;
            a2 = v51;
            v9 = v52;
            v4 = v46;
          }

          v21 = *(a3 + 8);
          if ((v13 & 0x80000000) != 0 || v13 >= v21)
          {
            IOSArray_throwOutOfBoundsWithMsg(v21, v13);
          }

          v22 = v11 + v18 * v17 + v20;
          *(a3 + 12 + 4 * v13) = v22;
          v11 = HIDWORD(v22);
          ++v14;
          v13 = (v13 + 1);
          v12 += 4;
          if (v9 == v14)
          {
            goto LABEL_25;
          }
        }
      }

LABEL_52:
      JreThrowNullPointerException();
    }

    if (!a3)
    {
      goto LABEL_52;
    }

    LODWORD(v11) = 0;
LABEL_25:
    v23 = *(a3 + 8);
    v24 = v5 + a2;
    v25 = v5 + a2;
    if (v25 < 0 || v24 >= v23)
    {
      IOSArray_throwOutOfBoundsWithMsg(v23, v24);
    }

    *(a3 + 12 + 4 * v25) = v11;
    ++v8;
    v7 = (v7 + 2);
    v6 += 4;
    v5 = v10;
  }

  while (v10 != v9);
  v26 = v4;
  JavaMathBitLevel_shiftLeftOneBitWithIntArray_withIntArray_withInt_(a3, a3, 2 * a2);
  if (!v26)
  {
    goto LABEL_52;
  }

  v27 = v26;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v26;
  v32 = v52;
  do
  {
    v33 = *(v27 + 8);
    if (v28 >= v33)
    {
      IOSArray_throwOutOfBoundsWithMsg(v33, v28);
    }

    v34 = *(v31 + 12);
    v35 = *(a3 + 8);
    if ((v29 & 0x80000000) != 0 || v29 >= v35)
    {
      IOSArray_throwOutOfBoundsWithMsg(v35, v29);
    }

    v36 = *(a3 + 12 + 4 * v29);
    if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001F4A04();
      v32 = v52;
      v27 = v26;
    }

    v37 = *(a3 + 8);
    if ((v29 & 0x80000000) != 0 || v29 >= v37)
    {
      IOSArray_throwOutOfBoundsWithMsg(v37, v29);
    }

    v38 = v30 + v34 * v34 + v36;
    *(a3 + 12 + 4 * v29) = v38;
    v39 = v29 + 1;
    v40 = v29 + 1;
    v41 = *(a3 + 8);
    if ((v29 & 0x80000000) != 0 || v39 >= v41)
    {
      IOSArray_throwOutOfBoundsWithMsg(v41, v39);
    }

    if ((v29 & 0x80000000) != 0 || v40 >= v41)
    {
      IOSArray_throwOutOfBoundsWithMsg(v41, v40);
    }

    v42 = HIDWORD(v38) + *(a3 + 12 + 4 * v40);
    *(a3 + 12 + 4 * v40) = v42;
    v30 = HIDWORD(v42);
    ++v28;
    v29 = (v29 + 2);
    v31 += 4;
  }

  while (v32 != v28);
  return a3;
}

JavaMathBigInteger *JavaMathMultiplication_multiplyByTenPowWithJavaMathBigInteger_withLong_(void *a1, int64_t a2)
{
  if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F4A04();
  }

  if (!JavaMathMultiplication_tenPows_)
  {
    goto LABEL_14;
  }

  v4 = *(JavaMathMultiplication_tenPows_ + 8);
  if (v4 > a2)
  {
    if ((a2 & 0x80000000) != 0 || v4 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v4, a2);
    }

    v5 = *(JavaMathMultiplication_tenPows_ + 12 + 4 * a2);

    return JavaMathMultiplication_multiplyByPositiveIntWithJavaMathBigInteger_withInt_(a1, v5);
  }

  if (!a1)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v7 = JavaMathMultiplication_powerOf10WithLong_(a2);

  return [a1 multiplyWithJavaMathBigInteger:v7];
}

id JavaMathMultiplication_powerOf10WithLong_(unint64_t a1)
{
  if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F4A04();
  }

  if (!JavaMathMultiplication_bigTenPows_)
  {
    goto LABEL_46;
  }

  v2 = *(JavaMathMultiplication_bigTenPows_ + 8);
  if (v2 > a1)
  {
    if ((a1 & 0x80000000) != 0 || v2 <= a1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v2, a1);
    }

    return *(JavaMathMultiplication_bigTenPows_ + 24 + 8 * a1);
  }

  if (a1 <= 50)
  {
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100147554();
    }

    v4 = JavaMathBigInteger_TEN_;
    if (JavaMathBigInteger_TEN_)
    {

      return [v4 powWithInt:a1];
    }

    goto LABEL_46;
  }

  if (a1 <= 0x3E8)
  {
    v5 = JavaMathMultiplication_bigFivePows_;
    if (!JavaMathMultiplication_bigFivePows_)
    {
      goto LABEL_46;
    }

    goto LABEL_20;
  }

  v5 = JavaMathMultiplication_bigFivePows_;
  if (!(a1 >> 31))
  {
    if (!JavaMathMultiplication_bigFivePows_)
    {
      goto LABEL_46;
    }

LABEL_20:
    v6 = *(v5 + 8);
    if (v6 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, 1);
    }

    v7 = *(v5 + 32);
    if (!v7)
    {
      goto LABEL_46;
    }

    v8 = [v7 powWithInt:a1];
    if (!v8)
    {
      goto LABEL_46;
    }

    v9 = a1;
    goto LABEL_43;
  }

  if (!JavaMathMultiplication_bigFivePows_)
  {
    goto LABEL_46;
  }

  v10 = *(JavaMathMultiplication_bigFivePows_ + 8);
  if (v10 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, 1);
  }

  v11 = *(JavaMathMultiplication_bigFivePows_ + 32);
  if (!v11)
  {
    goto LABEL_46;
  }

  v12 = [v11 powWithInt:0x7FFFFFFFLL];
  v13 = v12;
  if (a1 >= 0xFFFFFFFF)
  {
    v14 = a1;
    v15 = v12;
    while (v15)
    {
      v15 = [v15 multiplyWithJavaMathBigInteger:v13];
      v14 -= 0x7FFFFFFFLL;
      if (v14 <= 4294967294)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_46;
  }

  v15 = v12;
LABEL_33:
  if (!v15)
  {
    goto LABEL_46;
  }

  v16 = *(JavaMathMultiplication_bigFivePows_ + 8);
  if (v16 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16, 1);
  }

  v17 = *(JavaMathMultiplication_bigFivePows_ + 32);
  if (!v17 || (v18 = [v15 multiplyWithJavaMathBigInteger:{objc_msgSend(v17, "powWithInt:", a1 % 0x7FFFFFFF)}]) == 0)
  {
LABEL_46:
    JreThrowNullPointerException();
  }

  v8 = [v18 shiftLeftWithInt:0x7FFFFFFFLL];
  if (a1 >= 0xFFFFFFFF)
  {
    v19 = a1;
    while (v8)
    {
      v8 = [v8 shiftLeftWithInt:0x7FFFFFFFLL];
      v19 -= 0x7FFFFFFFLL;
      if (v19 <= 4294967294)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_46;
  }

LABEL_41:
  if (!v8)
  {
    goto LABEL_46;
  }

  v9 = a1 % 0x7FFFFFFF;
LABEL_43:

  return [v8 shiftLeftWithInt:v9];
}

JavaMathBigInteger *JavaMathMultiplication_multiplyByFivePowWithJavaMathBigInteger_withInt_(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F4A04();
  }

  if (!JavaMathMultiplication_fivePows_)
  {
    goto LABEL_21;
  }

  v4 = *(JavaMathMultiplication_fivePows_ + 8);
  if (v4 > a2)
  {
    if ((a2 & 0x80000000) != 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v4, a2);
    }

    v5 = *(JavaMathMultiplication_fivePows_ + 12 + 4 * a2);

    return JavaMathMultiplication_multiplyByPositiveIntWithJavaMathBigInteger_withInt_(a1, v5);
  }

  if (!JavaMathMultiplication_bigFivePows_)
  {
    goto LABEL_21;
  }

  v7 = *(JavaMathMultiplication_bigFivePows_ + 8);
  if (v7 > a2)
  {
    if (a1)
    {
      if ((a2 & 0x80000000) != 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, a2);
      }

      v8 = *(JavaMathMultiplication_bigFivePows_ + 24 + 8 * a2);
      goto LABEL_18;
    }

LABEL_21:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  if (v7 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 1);
  }

  v9 = *(JavaMathMultiplication_bigFivePows_ + 32);
  if (!v9)
  {
    goto LABEL_21;
  }

  v8 = [v9 powWithInt:a2];
LABEL_18:

  return [a1 multiplyWithJavaMathBigInteger:v8];
}

unint64_t JavaMathMultiplication_unsignedMultAddAddWithInt_withInt_withInt_withInt_(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F4A04();
  }

  return a3 + a2 * a1 + a4;
}

JavaUtilZipDataFormatException *new_JavaUtilZipDataFormatException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaUtilZipDataFormatException alloc];
  JavaLangException_initWithNSString_(v2, a1);
  return v2;
}

id JavaUtilUnsafeArrayList_initWithIOSClass_withInt_(uint64_t a1, void *a2, int a3)
{
  JavaUtilAbstractList_init(a1, a2);
  v6 = JavaLangReflectArray_newInstanceWithIOSClass_withInt_(a2, a3);
  objc_opt_class();
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign((a1 + 24), v6);

  return JreStrongAssign((a1 + 16), a2);
}

JavaUtilUnsafeArrayList *new_JavaUtilUnsafeArrayList_initWithIOSClass_withInt_(void *a1, int a2)
{
  v4 = [JavaUtilUnsafeArrayList alloc];
  JavaUtilUnsafeArrayList_initWithIOSClass_withInt_(v4, a1, a2);
  return v4;
}

JavaSecurityAllPermission *new_JavaSecurityAllPermission_init()
{
  v0 = [JavaSecurityAllPermission alloc];
  JavaSecurityPermission_initWithNSString_(v0, &stru_100484358);
  return v0;
}

JavaUtilLoggingLevel *JavaUtilLoggingLevel_parseWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  if (!a1)
  {
    v22 = new_JavaLangNullPointerException_initWithNSString_(@"name == null");
    objc_exception_throw(v22);
  }

  v2 = qword_100554F98;
  objc_sync_enter(qword_100554F98);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = qword_100554F98;
  if (!qword_100554F98)
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  v4 = [qword_100554F98 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v5 = *v28;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        if (!v7)
        {
          goto LABEL_26;
        }

        if ([a1 isEqual:{objc_msgSend(*(*(&v27 + 1) + 8 * i), "getName")}])
        {
          goto LABEL_24;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v15 = JavaLangInteger_parseIntWithNSString_(a1, v8, v9, v10, v11, v12, v13, v14);
  v2 = qword_100554F98;
  objc_sync_enter(qword_100554F98);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = qword_100554F98;
  v17 = [qword_100554F98 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = *v24;
LABEL_16:
    v19 = 0;
    while (1)
    {
      if (*v24 != v18)
      {
        objc_enumerationMutation(v16);
      }

      v7 = *(*(&v23 + 1) + 8 * v19);
      if (!v7)
      {
        JreThrowNullPointerException();
      }

      if (v15 == *(v7 + 16))
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v17)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

LABEL_24:
    objc_sync_exit(v2);
  }

  else
  {
LABEL_23:
    objc_sync_exit(v2);
    v20 = [JavaUtilLoggingLevel alloc];
    JavaUtilLoggingLevel_initWithNSString_withInt_withNSString_(v20, a1, v15, 0);
    return v20;
  }

  return v7;
}

uint64_t JavaUtilLoggingLevel_initWithNSString_withInt_withNSString_(uint64_t a1, void *a2, int a3, void *a4)
{
  if (!a2)
  {
    v12 = new_JavaLangNullPointerException_initWithNSString_(@"name == null");
    objc_exception_throw(v12);
  }

  JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a3;
  JreStrongAssign((a1 + 24), a4);
  if (a4)
  {
    Default = JavaUtilLocale_getDefault();
    SystemClassLoader = JavaLangClassLoader_getSystemClassLoader();
    BundleWithNSString_withJavaUtilLocale_withJavaLangClassLoader = JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_withJavaLangClassLoader_(a4, Default, SystemClassLoader);
    JreStrongAssign((a1 + 32), BundleWithNSString_withJavaUtilLocale_withJavaLangClassLoader);
  }

  v10 = qword_100554F98;
  objc_sync_enter(qword_100554F98);
  if (!qword_100554F98)
  {
    JreThrowNullPointerException();
  }

  [qword_100554F98 addWithId:a1];

  return objc_sync_exit(v10);
}

void sub_1001F5728(void *a1)
{
  objc_begin_catch(a1);
  v2 = *(v1 + 8);
  objc_end_catch();
  JUMPOUT(0x1001F5718);
}

void sub_1001F5A54(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  v8 = JreStrcat("$$C", v1, v2, v3, v4, v5, v6, v7, @"Cannot parse name '");
  v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
  objc_exception_throw(v9);
}

id sub_1001F5BAC(void *a1, uint64_t a2)
{
  v4 = new_JavaLangStringBuffer_init();
  v5 = [a1 formatWithId:a2 withJavaLangStringBuffer:v4 withJavaTextFieldPosition:new_JavaTextFieldPosition_initWithInt_(0)];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  return [v5 description];
}

BOOL JavaTextFormat_upToWithNSString_withJavaTextParsePosition_withJavaLangStringBuffer_withChar_(void *a1, void *a2, void *a3, int a4)
{
  if (!a2 || (v8 = [a2 getIndex], !a1))
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v9 = v8;
  v10 = [a1 length];
  if (v9 < v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = [a1 charAtWithInt:v9];
      v15 = v14 == 39;
      if (v14 == 39)
      {
        if (v12)
        {
          if (!a3)
          {
            goto LABEL_18;
          }

          [a3 appendWithChar:39];
        }

        v11 ^= 1u;
      }

      else
      {
        if (!((v14 != a4) | v11 & 1))
        {
          v9 = (v9 + 1);
          goto LABEL_17;
        }

        if (!a3)
        {
          goto LABEL_18;
        }

        [a3 appendWithChar:v14];
      }

      v9 = (v9 + 1);
      v13 = v9 < v10;
      v12 = v15;
      if (v10 == v9)
      {
        v9 = v10;
        goto LABEL_17;
      }
    }
  }

  v13 = 0;
LABEL_17:
  [a2 setIndexWithInt:v9];
  return v13;
}

uint64_t JavaTextFormat_upToWithQuotesWithNSString_withJavaTextParsePosition_withJavaLangStringBuffer_withChar_withChar_(void *a1, void *a2, void *a3, int a4, int a5)
{
  if (!a2 || (v10 = [a2 getIndex], !a1))
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v11 = v10;
  v12 = [a1 length];
  if (v11 >= v12)
  {
LABEL_12:
    v17 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Unmatched braces in the pattern");
    objc_exception_throw(v17);
  }

  v13 = 0;
  v14 = 1;
  while (1)
  {
    v15 = [a1 charAtWithInt:v11];
    v13 ^= v15 == 39;
    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    if (!a3)
    {
      goto LABEL_14;
    }

    v11 = (v11 + 1);
    [a3 appendWithChar:v15];
    if (v12 == v11)
    {
      goto LABEL_12;
    }
  }

  v16 = v14 - (v15 == a4);
  if (v16)
  {
    if (v15 == a5)
    {
      v14 = v16 + 1;
    }

    else
    {
      v14 -= v15 == a4;
    }

    goto LABEL_10;
  }

  [a2 setIndexWithInt:(v11 + 1)];
  return 1;
}

uint64_t JavaTextFormat_class_()
{
  if (qword_100554FA8 != -1)
  {
    sub_1001F6098();
  }

  return qword_100554FA0;
}

uint64_t JavaTextFormat_Field_class_()
{
  if (qword_100554FB8 != -1)
  {
    sub_1001F60AC();
  }

  return qword_100554FB0;
}

JavaLangInterruptedException *new_JavaLangInterruptedException_init()
{
  v0 = [JavaLangInterruptedException alloc];
  JavaLangException_init(v0, v1);
  return v0;
}

id JavaUtilHashtable_init(uint64_t a1)
{
  JavaUtilDictionary_init();
  v2 = qword_100554FC0;
  objc_opt_class();
  if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  result = JreStrongAssign((a1 + 8), v2);
  *(a1 + 24) = -1;
  return result;
}

IOSObjectArray *JavaUtilHashtable_initWithInt_(uint64_t a1, unsigned int a2)
{
  JavaUtilDictionary_init();
  if ((a2 & 0x80000000) != 0)
  {
    v14 = JreStrcat("$I", v4, v5, v6, v7, v8, v9, v10, @"Capacity: ");
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  if (a2)
  {
    if (a2 >= 4)
    {
      v11 = 0x40000000;
      if (a2 <= 0x40000000)
      {
        v11 = JavaUtilCollections_roundUpToPowerOfTwoWithInt_(a2);
      }
    }

    else
    {
      v11 = 4;
    }

    return sub_1001F674C(a1, v11);
  }

  else
  {
    v12 = qword_100554FC0;
    objc_opt_class();
    if (v12 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    result = JreStrongAssign((a1 + 8), v12);
    *(a1 + 24) = -1;
  }

  return result;
}

uint64_t JavaUtilHashtable_initWithInt_withFloat_(uint64_t a1, unsigned int a2, float a3)
{
  JavaUtilHashtable_initWithInt_(a1, a2);
  if (a3 <= 0.0 || (result = JavaLangFloat_isNaNWithFloat_(), result))
  {
    v12 = JreStrcat("$F", v4, v5, v6, v7, v8, v9, v10, @"Load factor: ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  return result;
}

id JavaUtilHashtable_initWithJavaUtilMap_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 size];
  if ((atomic_load_explicit(JavaUtilHashtable__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F9F60();
  }

  if ((v4 + (v4 >> 1)) >= 0x40000000)
  {
    v5 = 0x40000000;
  }

  else
  {
    v5 = v4 + (v4 >> 1);
  }

  JavaUtilHashtable_initWithInt_(a1, v5);

  return sub_1001F6470(a1, a2);
}

id sub_1001F6470(uint64_t a1, void *a2)
{
  if (*(a1 + 8) == qword_100554FC0)
  {
    [JavaUtilHashtable doubleCapacity]_0(a1);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (!a2 || (v4 = [a2 entrySet]) == 0)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v5 = v4;
  result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (!v10)
        {
          goto LABEL_14;
        }

        sub_1001F6FD8(a1, [*(*(&v11 + 1) + 8 * v9) getKey], objc_msgSend(v10, "getValue"));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_1001F672C(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

IOSObjectArray *sub_1001F674C(uint64_t a1, int a2)
{
  v4 = a2;
  if (qword_100554FD8 != -1)
  {
    sub_1001F9F6C();
  }

  v5 = [IOSObjectArray arrayWithLength:v4 type:qword_100554FD0];
  objc_opt_class();
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign((a1 + 8), v5);
  *(a1 + 24) = (a2 >> 1) + (a2 >> 2);
  return v5;
}

JavaUtilHashtable_HashtableEntry *sub_1001F6F54(void *a1, void *a2, int a3, void *a4)
{
  v8 = [JavaUtilHashtable_HashtableEntry alloc];
  JreStrongAssign(&v8->key_, a1);
  JreStrongAssign(&v8->value_, a2);
  v8->hash__ = a3;
  JreStrongAssign(&v8->next_, a4);
  return v8;
}

id sub_1001F6FD8(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    v18 = @"key == null";
    goto LABEL_21;
  }

  if (!a3)
  {
    v18 = @"value == null";
LABEL_21:
    v19 = new_JavaLangNullPointerException_initWithNSString_(v18);
    objc_exception_throw(v19);
  }

  v7 = JavaUtilCollections_secondaryHashWithId_(a2);
  v8 = *(a1 + 8);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v9 = v7;
  v10 = *(v8 + 8);
  v11 = (v10 - 1) & v9;
  v12 = v11;
  if (v11 < 0 != v6 || v11 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v11);
  }

  v14 = *(v8 + 24 + 8 * v11);
  if (v14)
  {
    v15 = *(v8 + 24 + 8 * v11);
    while (*(v15 + 24) != v9 || ![a2 isEqual:*(v15 + 8)])
    {
      v15 = *(v15 + 32);
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    return JreStrongAssign((v15 + 16), a3);
  }

  else
  {
LABEL_14:
    v16 = sub_1001F6F54(a2, a3, v9, v14);
    result = IOSObjectArray_SetAndConsume(v8, v12, v16);
    ++*(a1 + 16);
  }

  return result;
}

uint64_t sub_1001F72B0(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(JavaUtilHashtable__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F9F60();
  }

  if ((a2 + (a2 >> 1)) >= 0x40000000)
  {
    v4 = 0x40000000;
  }

  else
  {
    v4 = a2 + (a2 >> 1);
  }

  result = JavaUtilCollections_roundUpToPowerOfTwoWithInt_(v4);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_27:
    JreThrowNullPointerException();
  }

  v7 = result;
  v17 = *(v6 + 8);
  if (result > v17)
  {
    [a1 rehash];
    if (v7 == 2 * v17)
    {

      return [JavaUtilHashtable doubleCapacity]_0(a1);
    }

    else
    {
      result = sub_1001F674C(a1, v7);
      if (*(a1 + 16) && v17 >= 1)
      {
        v8 = result;
        v9 = 0;
        v10 = v7 - 1;
        v16 = v6;
        do
        {
          result = *(v6 + 8);
          if (v9 >= result)
          {
            IOSArray_throwOutOfBoundsWithMsg(result, v9);
          }

          v11 = *(v6 + 24 + 8 * v9);
          if (v11)
          {
            if (!v8)
            {
              goto LABEL_27;
            }

            do
            {
              v12 = *(v11 + 32);
              v13 = *(v11 + 24) & v10;
              v14 = *(v8 + 8);
              if ((v13 & 0x80000000) != 0 || v13 >= v14)
              {
                IOSArray_throwOutOfBoundsWithMsg(v14, *(v11 + 24) & v10);
              }

              v15 = *(v8 + 24 + 8 * v13);
              IOSObjectArray_Set(v8, *(v11 + 24) & v10, v11);
              result = JreStrongAssign((v11 + 32), v15);
              v11 = v12;
            }

            while (v12);
          }

          ++v9;
          v6 = v16;
        }

        while (v9 != v17);
      }
    }
  }

  return result;
}

id sub_1001F7944(void *a1, void *a2, uint64_t a3)
{
  objc_sync_enter(a1);
  v7 = JavaUtilCollections_secondaryHashWithId_(a2);
  v8 = a1[1];
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v9 = v7;
  v10 = *(v8 + 8);
  v11 = (v10 - 1) & v9;
  if (v11 < 0 != v6 || v11 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v11);
  }

  v13 = *(v8 + 24 + 8 * v11);
  if (v13)
  {
    while (1)
    {
      if (*(v13 + 24) == v9)
      {
        v14 = *(v13 + 8);
        if (!v14)
        {
          goto LABEL_16;
        }

        if ([v14 isEqual:a2])
        {
          break;
        }
      }

      v13 = *(v13 + 32);
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    v16 = *(v13 + 16);
    if (!v16)
    {
LABEL_16:
      JreThrowNullPointerException();
    }

    v15 = [v16 isEqual:a3];
  }

  else
  {
LABEL_12:
    v15 = 0;
  }

  objc_sync_exit(a1);
  return v15;
}

uint64_t sub_1001F7A70(uint64_t a1, void *a2, uint64_t a3)
{
  objc_sync_enter(a1);
  v7 = JavaUtilCollections_secondaryHashWithId_(a2);
  v8 = *(a1 + 8);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v9 = v7;
  v10 = *(v8 + 8);
  v11 = (v10 - 1) & v9;
  v12 = v11;
  if (v11 < 0 != v6 || v11 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v11);
  }

  v14 = *(v8 + 24 + 8 * v11);
  if (v14)
  {
    v15 = 0;
    while (1)
    {
      v16 = v14;
      if (*(v14 + 24) == v9)
      {
        v17 = *(v14 + 8);
        if (!v17)
        {
          goto LABEL_22;
        }

        if ([v17 isEqual:a2])
        {
          break;
        }
      }

      v14 = *(v16 + 32);
      v15 = v16;
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    v20 = *(v16 + 16);
    if (!v20)
    {
LABEL_22:
      JreThrowNullPointerException();
    }

    if ([v20 isEqual:a3])
    {
      if (v15)
      {
        JreStrongAssign((v15 + 32), *(v16 + 32));
      }

      else
      {
        IOSObjectArray_Set(v8, v12, *(v16 + 32));
      }

      ++*(a1 + 20);
      --*(a1 + 16);
      v18 = 1;
      LODWORD(v8) = 1;
    }

    else
    {
      LODWORD(v8) = 0;
      v18 = 1;
    }
  }

  else
  {
LABEL_13:
    v18 = 0;
  }

  objc_sync_exit(a1);
  return v18 & v8;
}

JavaUtilHashtable *new_JavaUtilHashtable_init()
{
  v0 = [JavaUtilHashtable alloc];
  JavaUtilHashtable_init(v0);
  return v0;
}

id sub_1001F87CC(uint64_t a1, uint64_t a2)
{
  JreStrongAssign((a1 + 8), a2);
  *(a1 + 40) = *(a2 + 20);
  v4 = *(a2 + 8);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a1 + 16);
  v6 = (v4 + 8);
  if (v5 >= *(v4 + 8))
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    while (1)
    {
      *(a1 + 16) = v5 + 1;
      v7 = *v6;
      if (v5 < 0 || v5 >= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, v5);
      }

      v8 = *(v4 + 24 + 8 * v5);
      if (v8)
      {
        break;
      }

      v5 = *(a1 + 16);
      v6 = (v4 + 8);
      if (v5 >= *(v4 + 8))
      {
        goto LABEL_9;
      }
    }
  }

  return JreStrongAssign((a1 + 24), v8);
}

uint64_t JavaLangLong_compareWithLong_withLong_(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  if (a1 < a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 != a2;
  }
}

void sub_1001FA0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v8 = JreStrcat("$$C", a2, a3, a4, a5, a6, a7, a8, @"Invalid long: ");
  v9 = new_JavaLangNumberFormatException_initWithNSString_(v8);
  objc_exception_throw(v9);
}

double JavaLangLong_decodeWithNSString_(void *a1)
{
  if (atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_26:
    JreThrowNullPointerException();
  }

  sub_1001FB1C0();
  if (!a1)
  {
    goto LABEL_26;
  }

LABEL_3:
  v9 = [a1 length];
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = [a1 charAtWithInt:0];
  v11 = v10;
  if (v10 == 45 || v10 == 43)
  {
    if (v9 != 1)
    {
      v12 = 1;
      v10 = [a1 charAtWithInt:1];
      goto LABEL_9;
    }

LABEL_27:
    sub_1001FA0FC(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v12 = 0;
LABEL_9:
  if (v10 == 35)
  {
    v12 = (v12 + 1);
    v14 = 16;
  }

  else if (v10 == 48)
  {
    if (v12 + 1 == v9)
    {
      v13 = 0;
      goto LABEL_22;
    }

    v15 = [a1 charAtWithInt:(v12 + 1)];
    if ((v15 & 0xFFFFFFDF) == 0x58)
    {
      v12 = v12 | 2;
    }

    else
    {
      v12 = (v12 + 1);
    }

    if ((v15 & 0xFFFFFFDF) == 0x58)
    {
      v14 = 16;
    }

    else
    {
      v14 = 8;
    }
  }

  else
  {
    v14 = 10;
  }

  v13 = sub_1001FA6B8(a1, v12, v14, v11 == 45);
LABEL_22:

  JavaLangLong_valueOfWithLong_(v13);
  return result;
}

void JavaLangLong_getLongWithNSString_(void *a1)
{
  if (atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    sub_1001FB1C0();
    if (!a1)
    {
      return;
    }
  }

  if ([a1 length])
  {
    PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(a1);
    if (PropertyWithNSString)
    {
      JavaLangLong_decodeWithNSString_(PropertyWithNSString);
    }
  }
}

void JavaLangLong_getLongWithNSString_withLong_(void *a1, int64_t a2)
{
  if (atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1001FB1C0();
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  if ([a1 length])
  {
    PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(a1);
    if (PropertyWithNSString)
    {
      JavaLangLong_decodeWithNSString_(PropertyWithNSString);
      return;
    }
  }

LABEL_7:

  JavaLangLong_valueOfWithLong_(a2);
}

uint64_t JavaLangLong_getLongWithNSString_withJavaLangLong_(void *a1, uint64_t a2)
{
  if (atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      return a2;
    }
  }

  else
  {
    sub_1001FB1C0();
    if (!a1)
    {
      return a2;
    }
  }

  if ([a1 length])
  {
    PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(a1);
    if (PropertyWithNSString)
    {
      JavaLangLong_decodeWithNSString_(PropertyWithNSString);
      return v5;
    }
  }

  return a2;
}

uint64_t JavaLangLong_parseLongWithNSString_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return JavaLangLong_parseLongWithNSString_withInt_(a1, 10, a3, a4, a5, a6, a7, a8);
}

uint64_t JavaLangLong_parseLongWithNSString_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  if ((v8 - 37) <= 0xFFFFFFDC)
  {
    v15 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Invalid radix: ");
    v16 = new_JavaLangNumberFormatException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  if (!a1 || [a1 isEmpty] || ((v10 = objc_msgSend(a1, "charAtWithInt:", 0), v11 = v10, v10 != 45) ? (v12 = v10 == 43) : (v12 = 1), !v12 ? (v13 = 0) : (v13 = 1), v13 == objc_msgSend(a1, "length")))
  {
    sub_1001FA0FC(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return sub_1001FA6B8(a1, v13, v8, v11 == 45);
}

uint64_t sub_1001FA6B8(void *a1, uint64_t a2, int a3, char a4)
{
  if (atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  sub_1001FB1C0();
  if (!a1)
  {
    goto LABEL_15;
  }

LABEL_3:
  v8 = [a1 length];
  v16 = 0;
  if (a2 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = a2;
  }

  while (v17 != a2)
  {
    v18 = JavaLangCharacter_digitWithChar_withInt_([a1 charAtWithInt:a2], a3);
    if (v18 != -1 && 0x8000000000000000 / a3 <= v16)
    {
      a2 = (a2 + 1);
      v19 = v16 * a3 - v18 <= v16;
      v16 = v16 * a3 - v18;
      if (v19)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  if ((a4 & 1) == 0)
  {
    v16 = -v16;
    if (v16 < 0)
    {
LABEL_10:
      sub_1001FA0FC(a1, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  return v16;
}

uint64_t JavaLangLong_parsePositiveLongWithNSString_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return JavaLangLong_parsePositiveLongWithNSString_withInt_(a1, 10, a3, a4, a5, a6, a7, a8);
}

uint64_t JavaLangLong_parsePositiveLongWithNSString_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  if ((v8 - 37) <= 0xFFFFFFDC)
  {
    v11 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Invalid radix: ");
    v12 = new_JavaLangNumberFormatException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  if (!a1 || ![a1 length])
  {
    sub_1001FA0FC(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return sub_1001FA6B8(a1, 0, v8, 0);
}

NSString *JavaLangLong_toBinaryStringWithLong_(unint64_t a1)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return JavaLangIntegralToString_longToBinaryStringWithLong_(a1);
}

NSString *JavaLangLong_toHexStringWithLong_(unint64_t a1)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return JavaLangIntegralToString_longToHexStringWithLong_(a1);
}

NSString *JavaLangLong_toOctalStringWithLong_(unint64_t a1)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return JavaLangIntegralToString_longToOctalStringWithLong_(a1);
}

const __CFString *JavaLangLong_toStringWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return JavaLangIntegralToString_longToStringWithLong_(a1);
}

const __CFString *JavaLangLong_toStringWithLong_withInt_(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return JavaLangIntegralToString_longToStringWithLong_withInt_(a1, a2);
}

JavaLangLong *JavaLangLong_valueOfWithNSString_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  v9 = JavaLangLong_parseLongWithNSString_(a1, a2, a3, a4, a5, a6, a7, a8);

  return JavaLangLong_valueOfWithLong_(v9);
}

JavaLangLong *JavaLangLong_valueOfWithNSString_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  v10 = JavaLangLong_parseLongWithNSString_withInt_(a1, a2, a3, a4, a5, a6, a7, a8);

  return JavaLangLong_valueOfWithLong_(v10);
}

unint64_t JavaLangLong_highestOneBitWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  v2 = a1 | (a1 >> 1) | ((a1 | (a1 >> 1)) >> 2);
  v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
  v4 = v3 | (v3 >> 16) | ((v3 | (v3 >> 16)) >> 32);
  return v4 - (v4 >> 1);
}

uint64_t JavaLangLong_numberOfLeadingZerosWithLong_(unint64_t a1)
{
  if (atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire))
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  sub_1001FB1C0();
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

LABEL_3:
  if (!a1)
  {
    return 64;
  }

  v2 = HIDWORD(a1);
  if (HIDWORD(a1))
  {
    v3 = 1;
  }

  else
  {
    v2 = a1;
    v3 = 33;
  }

  if (v2 < 0x10000)
  {
    LODWORD(v2) = v2 << 16;
    v3 |= 0x10u;
  }

  v4 = BYTE3(v2);
  if (!BYTE3(v2))
  {
    LODWORD(v2) = v2 << 8;
  }

  if (!v4)
  {
    v3 |= 8u;
  }

  v5 = v2 >> 28;
  if (!(v2 >> 28))
  {
    LODWORD(v2) = 16 * v2;
  }

  if (!v5)
  {
    v3 |= 4u;
  }

  v6 = v2 >> 30;
  if (!(v2 >> 30))
  {
    LODWORD(v2) = 4 * v2;
  }

  if (!v6)
  {
    v3 += 2;
  }

  return (v3 + (v2 >> 31));
}

uint64_t JavaLangLong_numberOfTrailingZerosWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
    if (a1)
    {
      goto LABEL_3;
    }

    return JavaLangInteger_numberOfTrailingZerosWithInt_(HIDWORD(a1)) + 32;
  }

  if (!a1)
  {
    return JavaLangInteger_numberOfTrailingZerosWithInt_(HIDWORD(a1)) + 32;
  }

LABEL_3:

  return JavaLangInteger_numberOfTrailingZerosWithInt_(a1);
}

uint64_t JavaLangLong_bitCountWithLong_(unint64_t a1)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  v2 = (((a1 - ((a1 >> 1) & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((a1 - ((a1 >> 1) & 0x5555555555555555)) & 0x3333333333333333);
  LODWORD(v2) = (((HIDWORD(v2) + v2) >> 4) & 0xF0F0F0F) + ((HIDWORD(v2) + v2) & 0xF0F0F0F) + (((((HIDWORD(v2) + v2) >> 4) & 0xF0F0F0F) + ((HIDWORD(v2) + v2) & 0xF0F0F0F)) >> 8);
  return (v2 + WORD1(v2)) & 0x7F;
}

unint64_t JavaLangLong_reverseBytesWithLong_(unint64_t a1)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return bswap64(a1);
}

uint64_t JavaLangLong_signumWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  if (a1 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 != 0;
  }
}

JavaLangLong *JavaLangLong_valueOfWithLong_(int64_t a1)
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  if (a1 == a1)
  {
    if (!qword_100554FE0)
    {
      JreThrowNullPointerException();
    }

    v4 = a1 + 128;
    v5 = *(qword_100554FE0 + 8);
    if (v5 <= v4)
    {
      IOSArray_throwOutOfBoundsWithMsg(v5, v4);
    }

    return *(qword_100554FE0 + 24 + 8 * v4);
  }

  else
  {
    v2 = [JavaLangLong alloc];
    v2->value_ = a1;

    return v2;
  }
}

uint64_t JavaLangLong_class_()
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  if (qword_100554FF0 != -1)
  {
    sub_1001FB1CC();
  }

  return qword_100554FE8;
}

JavaNetInetUnixAddress *sockaddrToInetAddress(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 1);
  if (v4 == 1)
  {
    v5 = a1 + 2;
    v10 = strlen((a1 + 2));
    v7 = 0;
    v8 = 0;
    v9 = v10;
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v4 == 2)
  {
    v7 = 0;
    v5 = a1 + 4;
    v8 = bswap32(*(a1 + 2)) >> 16;
    v9 = 4;
    if (!a2)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = v8;
    goto LABEL_12;
  }

  if (v4 != 30)
  {
    objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"sockaddrToInetAddress unsupported ss_family: %i", v4]]);
  }

  v5 = a1 + 8;
  if (!*(a1 + 8) && !*(a1 + 12) && *(a1 + 16) == -65536)
  {
    memset(&v13[1] + 12, 0, 100);
    v13[0] = *a1;
    *(v13 + 12) = *(a1 + 12);
    BYTE1(v13[0]) = 2;
    WORD1(v13[0]) = *(a1 + 2);
    DWORD1(v13[0]) = *(a1 + 20);
    return sockaddrToInetAddress(v13, a2);
  }

  v8 = bswap32(*(a1 + 2)) >> 16;
  v7 = *(a1 + 24);
  v9 = 16;
  if (a2)
  {
    goto LABEL_11;
  }

LABEL_12:
  v11 = [IOSByteArray arrayWithBytes:v5 count:v9];
  if (*(a1 + 1) == 1)
  {
    v12 = [[JavaNetInetUnixAddress alloc] initWithByteArray:v11];

    return v12;
  }

  else
  {

    return JavaNetInetAddress_getByAddressWithNSString_withByteArray_withInt_(0, v11, v7);
  }
}

id sub_1001FB420(id *a1, unsigned int a2, uint64_t a3, int *a4, int a5)
{
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a4 = 0;
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 getFamily];
  *(a3 + 1) = result;
  if (result <= 1u)
  {
    if (!result)
    {
      v12 = 1;
      goto LABEL_20;
    }

    if (result == 1)
    {
      if (*(a1[1] + 2) < 0x68u)
      {
        *(a3 + 2) = 0u;
        v11 = a3 + 2;
        *(v11 + 96) = 0;
        *(v11 + 64) = 0u;
        *(v11 + 80) = 0u;
        *(v11 + 32) = 0u;
        *(v11 + 48) = 0u;
        *(v11 + 16) = 0u;
        result = [a1[1] getBytes:v11 length:?];
        v12 = 104;
        goto LABEL_20;
      }

      v13 = [NSString stringWithFormat:@"inetAddressToSockaddr path too long for AF_UNIX: %d", *(a1[1] + 2)];
LABEL_24:
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:v13]);
    }

LABEL_22:
    v13 = [NSString stringWithFormat:@"inetAddressToSockaddr bad family: %i", result];
    goto LABEL_24;
  }

  if (result != 2 && result != 30)
  {
    goto LABEL_22;
  }

  *(a3 + 2) = bswap32(a2) >> 16;
  if (result == 30)
  {
    [a1[1] getBytes:a3 + 8 length:16];
    result = [a1 getScopeId];
    *(a3 + 24) = result;
  }

  else
  {
    if (!a5)
    {
      result = [a1[1] getBytes:a3 + 4 length:4];
      v12 = 16;
      goto LABEL_20;
    }

    *(a3 + 1) = 30;
    result = [a1[1] getBytes:a3 + 20 length:4];
    if (*(a3 + 8) || *(a3 + 12) || *(a3 + 16) || *(a3 + 20))
    {
      *(a3 + 18) = -1;
    }
  }

  v12 = 28;
LABEL_20:
  *a4 = v12;
  return result;
}

const char *absolutePath(void *a1)
{
  v1 = a1;
  if (![a1 length])
  {
    return "";
  }

  if ([v1 characterAtIndex:0] != 47)
  {
    v2 = [[JavaIoFile alloc] initWithNSString:v1];
    v1 = [(JavaIoFile *)v2 getAbsolutePath];
  }

  return [v1 fileSystemRepresentation];
}

BOOL sub_1001FB898(int a1, uint64_t a2, uint64_t a3)
{
  v3 = 1;
  if (a1 != -1)
  {
    if (a2)
    {
      v8 = 0;
      v5 = sockaddrToInetAddress(a3, &v8);
      v3 = v5 != 0;
      if (v5)
      {
        v6 = v5;
        sub_1001FFA4C(a2, v6, v8);
      }
    }
  }

  return v3;
}

LibcoreIoStructStat *sub_1001FC258(int *a1)
{
  v1 = [[LibcoreIoStructStat alloc] initWithLong:*a1 withLong:*(a1 + 1) withInt:*(a1 + 2) withLong:*(a1 + 3) withInt:a1[4] withInt:a1[5] withLong:a1[6] withLong:*(a1 + 12) withLong:*(a1 + 4) withLong:*(a1 + 6) withLong:*(a1 + 8) withLong:a1[28] withLong:*(a1 + 13)];

  return v1;
}

LibcoreIoStructStat *sub_1001FCFD8(LibcoreIoStructStat *result, char a2)
{
  if (result)
  {
    v3 = absolutePath(result);
    memset(&v7, 0, sizeof(v7));
    if (a2)
    {
      v4 = @"lstat";
      while (lstat(v3, &v7) == -1)
      {
        if (*__error() != 4)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v4 = @"stat";
      while (stat(v3, &v7) == -1)
      {
        if (*__error() != 4)
        {
LABEL_10:
          v5 = __error();
          v6 = new_LibcoreIoErrnoException_initWithNSString_withInt_(v4, *v5);
          objc_exception_throw(v6);
        }
      }
    }

    return sub_1001FC258(&v7.st_dev);
  }

  return result;
}

ssize_t sub_1001FD7D8(void *a1, uint64_t a2, int a3, int a4, off_t a5)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *(a2 + 8);
    if (v10 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, 0);
    }

    v11 = a2 + 12;
    if (a2 == -12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = *(a2 + 32);
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v12 = (v11 + a3);
  while (1)
  {
    result = pread([a1 getInt$], v12, a4, a5);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v14 = __error();
      sub_1001FB6D0(@"pread", *v14);
    }
  }

  return result;
}

ssize_t sub_1001FD9EC(void *a1, uint64_t a2, int a3, int a4, off_t a5)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *(a2 + 8);
    if (v10 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, 0);
    }

    v11 = a2 + 12;
    if (a2 == -12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = *(a2 + 32);
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (a5 + a4 < 0)
  {
    v15 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"pwrite", 0x22u);
    objc_exception_throw(v15);
  }

  v12 = (v11 + a3);
  while (1)
  {
    result = pwrite([a1 getInt$], v12, a4, a5);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v14 = __error();
      sub_1001FB6D0(@"pwrite", *v14);
    }
  }

  return result;
}

ssize_t sub_1001FDC18(void *a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = *(a2 + 8);
    if (v8 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, 0);
    }

    v9 = a2 + 12;
    if (a2 == -12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = *(a2 + 32);
    if (!v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v10 = (v9 + a3);
  while (1)
  {
    result = read([a1 getInt$], v10, a4);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v12 = __error();
      sub_1001FB6D0(@"read", *v12);
    }
  }

  return result;
}

uint64_t sub_1001FE100(void *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = *(a2 + 8);
    if (v12 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, 0);
    }

    v13 = a2 + 12;
    if (a2 == -12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v13 = *(a2 + 32);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v25 = 128;
  memset(v26, 0, 64);
  if (a6)
  {
    v14 = v26;
  }

  else
  {
    v14 = 0;
  }

  if (a6)
  {
    v15 = &v25;
  }

  else
  {
    v15 = 0;
  }

  memset(&v26[4], 0, 64);
  v16 = (v13 + a3);
  while (1)
  {
    v17 = [a1 getInt$];
    v18 = v17;
    LibcoreIoAsynchronousCloseMonitor_newAsynchronousSocketCloseMonitorWithInt_(v17);
    v19 = recvfrom(v18, v16, a4, a5, v14, v15);
    if (v19 != -1)
    {
      break;
    }

    if ([a1 getInt$] == -1)
    {
      v22 = [[JavaNetSocketException alloc] initWithNSString:@"Socket closed"];
LABEL_25:
      objc_exception_throw(v22);
    }

    if (*__error() != 4)
    {
      v20 = [NSString stringWithFormat:@"%s", "recvfrom"];
      v21 = __error();
      v22 = new_LibcoreIoErrnoException_initWithNSString_withInt_(v20, *v21);
      goto LABEL_25;
    }
  }

  v23 = v19;
  sub_1001FB898(v19, a6, v26);
  return v23;
}

ssize_t sub_1001FE608(void *a1, uint64_t a2, int a3, int a4, int a5, id *a6, unsigned int a7)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = *(a2 + 8);
    if (v14 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, 0);
    }

    v15 = a2 + 12;
    if (a2 == -12)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_8:
    memset(v25, 0, sizeof(v25));
    v24 = 0;
    if (a6)
    {
      v16 = v25;
      sub_1001FB420(a6, a7, v25, &v24, 1);
    }

    else
    {
      v16 = 0;
    }

    v18 = (v15 + a3);
    while (1)
    {
      v19 = [a1 getInt$];
      v20 = v19;
      LibcoreIoAsynchronousCloseMonitor_newAsynchronousSocketCloseMonitorWithInt_(v19);
      result = sendto(v20, v18, a4, a5, v16, v24);
      if (result != -1)
      {
        return result;
      }

      if ([a1 getInt$] == -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        v21 = [NSString stringWithFormat:@"%s", "sendto"];
        v22 = __error();
        v23 = new_LibcoreIoErrnoException_initWithNSString_withInt_(v21, *v22);
        goto LABEL_21;
      }
    }

    v23 = [[JavaNetSocketException alloc] initWithNSString:@"Socket closed"];
LABEL_21:
    objc_exception_throw(v23);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = *(a2 + 32);
    if (v15)
    {
      goto LABEL_8;
    }
  }

  return 0xFFFFFFFFLL;
}

ssize_t sub_1001FF640(void *a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = *(a2 + 8);
    if (v8 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, 0);
    }

    v9 = a2 + 12;
    if (a2 == -12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = *(a2 + 32);
    if (!v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v10 = (v9 + a3);
  while (1)
  {
    result = write([a1 getInt$], v10, a4);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v12 = __error();
      sub_1001FB6D0(@"write", *v12);
    }
  }

  return result;
}

id sub_1001FFA4C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = [JavaNetInetSocketAddress_class_() getDeclaredField:@"addr"];
  v7 = v6;
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  [v6 setAccessibleWithBoolean:1];
  [v7 setWithId:a1 withId:a2];
  v8 = [JavaNetInetSocketAddress_class_() getDeclaredField:@"port"];
  v9 = v8;
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  [v8 setAccessibleWithBoolean:1];
  return [v9 setWithId:a1 withId:JavaLangInteger_valueOfWithInt_(a3)];
}

void sub_1001FFAFC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = new_JavaLangAssertionError_initWithId_(v2);
    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

id DalvikSystemBlockGuard_setThreadPolicyWithDalvikSystemBlockGuard_Policy_(uint64_t a1)
{
  if (atomic_load_explicit(DalvikSystemBlockGuard__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"policy == null");
    objc_exception_throw(v4);
  }

  sub_1001FFF44();
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = qword_100554FF8;
  if (!qword_100554FF8)
  {
    JreThrowNullPointerException();
  }

  return [v2 setWithId:a1];
}

id DalvikSystemBlockGuard_getThreadPolicy()
{
  if ((atomic_load_explicit(DalvikSystemBlockGuard__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FFF44();
  }

  v0 = qword_100554FF8;
  if (!qword_100554FF8)
  {
    JreThrowNullPointerException();
  }

  return [v0 get];
}

id JavaNioNioUtils_freeDirectBufferWithJavaNioByteBuffer_(id result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    return [v1 free];
  }

  return result;
}

id JavaNioNioUtils_getFDWithJavaNioChannelsFileChannel_(void *a1)
{
  objc_opt_class();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [a1 getFD];
}

JavaNioFileChannelImpl *JavaNioNioUtils_newFileChannelWithId_withJavaIoFileDescriptor_withInt_(void *a1, void *a2, int a3)
{
  v3 = new_JavaNioFileChannelImpl_initWithId_withJavaIoFileDescriptor_withInt_(a1, a2, a3);

  return v3;
}

uint64_t JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(uint64_t a1)
{
  objc_opt_class();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return *(a1 + 48);
}

uint64_t JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(uint64_t a1)
{
  objc_opt_class();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return *(a1 + 56);
}

id JavaNioNioUtils_setSocketOptionWithJavaNioFileDescriptorChannel_withJavaUtilSet_withJavaNetSocketOption_withId_(void *a1, void *a2, void *a3, uint64_t a4)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = new_JavaLangIllegalArgumentException_initWithNSString_(@"SocketOption must come from StandardSocketOptions");
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

  if (([a2 containsWithId:a3] & 1) == 0)
  {
    v18 = JreStrcat("@$", v8, v9, v10, v11, v12, v13, v14, a3);
    v17 = new_JavaLangUnsupportedOperationException_initWithNSString_(v18);
    goto LABEL_17;
  }

  if (!a1 || (v15 = [a1 getFD]) == 0)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  if (([v15 valid] & 1) == 0)
  {
    v17 = new_JavaNioChannelsClosedChannelException_init();
LABEL_17:
    objc_exception_throw(v17);
  }

  objc_opt_class();
  if (!a3)
  {
    goto LABEL_12;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v16 = [a1 getFD];

  return [a3 setValueWithJavaIoFileDescriptor:v16 withId:a4];
}

id JavaNioNioUtils_getSocketOptionWithJavaNioFileDescriptorChannel_withJavaUtilSet_withJavaNetSocketOption_(void *a1, void *a2, void *a3)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(@"SocketOption must come from StandardSocketOptions");
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

  if (([a2 containsWithId:a3] & 1) == 0)
  {
    v16 = JreStrcat("@$", v6, v7, v8, v9, v10, v11, v12, a3);
    v15 = new_JavaLangUnsupportedOperationException_initWithNSString_(v16);
    goto LABEL_17;
  }

  if (!a1 || (v13 = [a1 getFD]) == 0)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  if (([v13 valid] & 1) == 0)
  {
    v15 = new_JavaNioChannelsClosedChannelException_init();
LABEL_17:
    objc_exception_throw(v15);
  }

  objc_opt_class();
  if (!a3)
  {
    goto LABEL_12;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v14 = [a1 getFD];

  return [a3 getValueWithJavaIoFileDescriptor:v14];
}

uint64_t JavaUtilFormattable_class_()
{
  if (qword_100555008 != -1)
  {
    sub_1002003EC();
  }

  return qword_100555000;
}

id JavaNetServerSocket_init(uint64_t a1)
{
  if (JavaNetServerSocket_factory_)
  {
    v2 = [JavaNetServerSocket_factory_ createSocketImpl];
  }

  else
  {
    v2 = new_JavaNetPlainServerSocketImpl_init();
  }

  JreStrongAssign((a1 + 8), v2);
  v3 = *(a1 + 8);

  return [v3 createWithBoolean:1];
}

uint64_t JavaNetServerSocket_initWithInt_(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001520E0();
  }

  v10 = JavaNetInet4Address_ANY_;

  return JavaNetServerSocket_initWithInt_withInt_withJavaNetInetAddress_(a1, a2, 50, v10, a5, a6, a7, a8);
}

uint64_t JavaNetServerSocket_initWithInt_withInt_(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001520E0();
  }

  v11 = JavaNetInet4Address_ANY_;

  return JavaNetServerSocket_initWithInt_withInt_withJavaNetInetAddress_(a1, a2, a3, v11, a5, a6, a7, a8);
}

uint64_t JavaNetServerSocket_initWithInt_withInt_withJavaNetInetAddress_(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  sub_100150728(a2, a2, a3, a4, a5, a6, a7, a8);
  if (JavaNetServerSocket_factory_)
  {
    v12 = [JavaNetServerSocket_factory_ createSocketImpl];
  }

  else
  {
    v12 = new_JavaNetPlainServerSocketImpl_init();
  }

  JreStrongAssign(a1 + 1, v12);
  if (!v8)
  {
    if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001520E0();
    }

    v8 = JavaNetInet4Address_ANY_;
  }

  objc_sync_enter(a1);
  [a1[1] createWithBoolean:1];
  [a1[1] bindWithJavaNetInetAddress:v8 withInt:a2];
  sub_100200724(a1);
  if (v9 <= 0)
  {
    v13 = 50;
  }

  else
  {
    v13 = v9;
  }

  [a1[1] listenWithInt:v13];

  return objc_sync_exit(a1);
}

id sub_100200724(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  SocketLocalAddressWithJavaIoFileDescriptor = LibcoreIoIoBridge_getSocketLocalAddressWithJavaIoFileDescriptor_(*(v1 + 24));
  result = JreStrongAssign((a1 + 24), SocketLocalAddressWithJavaIoFileDescriptor);
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_100200844(void *a1, void *a2)
{
  objc_sync_enter(a1);
  v4 = a1[1];
  if (v4)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    JreThrowNullPointerException();
  }

  [v4 acceptWithJavaNetSocketImpl:a2[1]];
  [a2 accepted];

  return objc_sync_exit(a1);
}

uint64_t JavaNetServerSocket_setSocketFactoryWithJavaNetSocketImplFactory_(void *a1)
{
  if (qword_100555018 != -1)
  {
    sub_100201120();
  }

  v2 = qword_100555010;
  objc_sync_enter(qword_100555010);
  if (JavaNetServerSocket_factory_)
  {
    v4 = new_JavaNetSocketException_initWithNSString_(@"Factory already set");
    objc_exception_throw(v4);
  }

  JreStrongAssign(&JavaNetServerSocket_factory_, a1);

  return objc_sync_exit(v2);
}

void sub_100200E48(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void *JavaTextSimpleDateFormat_init(uint64_t a1)
{
  Default = JavaUtilLocale_getDefault();
  sub_100201684(a1, Default);
  v3 = +[JavaTextSimpleDateFormat defaultPattern]_0();
  JreStrongAssign((a1 + 24), v3);
  v4 = JavaUtilLocale_getDefault();
  v5 = new_JavaTextDateFormatSymbols_initWithJavaUtilLocale_(v4);

  return JreStrongAssignAndConsume((a1 + 32), v5);
}

id sub_1002012F4(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 length];
  if (result >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = -result;
    v7 = -1;
    do
    {
      ++v3;
      while (1)
      {
        result = [a1 charAtWithInt:(v3 - 1)];
        if (result == 39)
        {
          break;
        }

        if ((v4 & 1) == 0)
        {
          v8 = result;
          if (v7 == result || (result & 0xFFFFFFDF) - 65 <= 0x19)
          {
            if (v7 == result)
            {
              v4 = 0;
              ++v5;
            }

            else
            {
              if (v5 >= 1)
              {
                result = sub_100201454(v7);
              }

              v4 = 0;
              v5 = 1;
              v7 = v8;
            }

            goto LABEL_19;
          }
        }

        if (v5 <= 0)
        {
          v7 = -1;
          goto LABEL_19;
        }

        result = sub_100201454(v7);
        v5 = 0;
        ++v3;
        v7 = -1;
        if (v6 + v3 == 1)
        {
          goto LABEL_28;
        }
      }

      if (v5 >= 1)
      {
        result = sub_100201454(v7);
        v5 = 0;
      }

      if (v7 == 39)
      {
        v7 = -1;
      }

      else
      {
        v7 = 39;
      }

      v4 ^= 1u;
LABEL_19:
      ;
    }

    while (v6 + v3);
    if (v5 > 0)
    {
      result = sub_100201454(v7);
    }

LABEL_28:
    if (v4)
    {
      v9 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Unterminated quote");
      objc_exception_throw(v9);
    }
  }

  return result;
}

id sub_100201454(uint64_t a1)
{
  if (!JavaTextSimpleDateFormat_PATTERN_CHARS_)
  {
    JreThrowNullPointerException();
  }

  result = [JavaTextSimpleDateFormat_PATTERN_CHARS_ indexOf:a1];
  if (result == -1)
  {
    v9 = JreStrcat("$CC", v2, v3, v4, v5, v6, v7, v8, @"Unknown pattern character '");
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(v9);
    objc_exception_throw(v10);
  }

  return result;
}

id JavaTextSimpleDateFormat_initWithNSString_withJavaTextDateFormatSymbols_(uint64_t a1, void *a2, void *a3)
{
  Default = JavaUtilLocale_getDefault();
  sub_100201684(a1, Default);
  sub_1002012F4(a2);
  JreStrongAssign((a1 + 24), a2);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v7 = [a3 clone];
  objc_opt_class();
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return JreStrongAssign((a1 + 32), v7);
}

void *JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_(uint64_t a1, void *a2, void *a3)
{
  sub_100201684(a1, a3);
  sub_1002012F4(a2);
  JreStrongAssign((a1 + 24), a2);
  v6 = new_JavaTextDateFormatSymbols_initWithJavaUtilLocale_(a3);

  return JreStrongAssignAndConsume((a1 + 32), v6);
}

id sub_100201684(uint64_t a1, void *a2)
{
  JavaTextDateFormat_init();
  InstanceWithJavaUtilLocale = JavaTextNumberFormat_getInstanceWithJavaUtilLocale_(a2);
  JreStrongAssign((a1 + 16), InstanceWithJavaUtilLocale);
  v5 = *(a1 + 16);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  [v5 setParseIntegerOnlyWithBoolean:1];
  [*(a1 + 16) setGroupingUsedWithBoolean:0];
  v6 = new_JavaUtilGregorianCalendar_initWithJavaUtilLocale_(a2);
  JreStrongAssignAndConsume((a1 + 8), v6);
  [*(a1 + 8) addWithInt:1 withInt:4294967216];
  *(a1 + 40) = [*(a1 + 8) getWithInt:1];
  v7 = [*(a1 + 8) getTime];

  return JreStrongAssign((a1 + 48), v7);
}

NSString *sub_1002017F4(void *a1, void *a2, void *a3, int a4)
{
  if (atomic_load_explicit(JavaTextSimpleDateFormat__initialized, memory_order_acquire))
  {
    if (a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_100204B6C();
    if (a4)
    {
      goto LABEL_7;
    }
  }

  if (!a2)
  {
    goto LABEL_24;
  }

  if ([a2 isEqual:a3])
  {
    return a1;
  }

LABEL_7:
  v9 = new_JavaLangStringBuilder_init();
  if (!a1)
  {
LABEL_24:
    JreThrowNullPointerException();
  }

  v10 = v9;
  v11 = [a1 length];
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      while (1)
      {
        v14 = [a1 charAtWithInt:v12];
        v13 ^= v14 == 39;
        if ((v13 & 1) == 0)
        {
          break;
        }

        [(JavaLangStringBuilder *)v10 appendWithChar:v14];
        v12 = (v12 + 1);
        if (v12 == v11)
        {
          v25 = @"Unterminated quote";
          goto LABEL_25;
        }
      }

      if (!a2)
      {
        goto LABEL_24;
      }

      v15 = [a2 indexOf:v14];
      if (v15 == -1)
      {
        if (a4 && ((v14 & 0xFFDF) - 65) <= 0x19u)
        {
          v25 = JreStrcat("$C$$C", v16, v17, v18, v19, v20, v21, v22, @"Invalid pattern character '");
LABEL_25:
          v26 = new_JavaLangIllegalArgumentException_initWithNSString_(v25);
          objc_exception_throw(v26);
        }

        v24 = v10;
        v23 = v14;
      }

      else
      {
        if (!a3)
        {
          goto LABEL_24;
        }

        v23 = [a3 charAtWithInt:v15];
        v24 = v10;
      }

      [(JavaLangStringBuilder *)v24 appendWithChar:v23];
      v12 = (v12 + 1);
    }

    while (v12 != v11);
  }

  return [(JavaLangStringBuilder *)v10 description];
}

id sub_100201CF4(uint64_t a1, uint64_t a2)
{
  v4 = new_JavaLangStringBuffer_init();
  v5 = new_JavaUtilArrayList_init();
  sub_100201E90(a1, a2, v4, 0, v5);
  v6 = new_JavaTextAttributedString_initWithNSString_([(JavaLangStringBuffer *)v4 description]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(JavaUtilArrayList *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (!v11)
        {
          JreThrowNullPointerException();
        }

        v12 = [*(*(&v14 + 1) + 8 * i) getFieldAttribute];
        -[JavaTextAttributedString addAttributeWithJavaTextAttributedCharacterIterator_Attribute:withId:withInt:withInt:](v6, "addAttributeWithJavaTextAttributedCharacterIterator_Attribute:withId:withInt:withInt:", v12, v12, [v11 getBeginIndex], objc_msgSend(v11, "getEndIndex"));
      }

      v8 = [(JavaUtilArrayList *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return [(JavaTextAttributedString *)v6 getIterator];
}

void *sub_100201E90(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_34;
  }

  [v6 setTimeWithJavaUtilDate:a2];
  if (a4)
  {
    [a4 setBeginIndexWithInt:0];
    [a4 setEndIndexWithInt:0];
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
LABEL_34:
    JreThrowNullPointerException();
  }

  v10 = [v9 length];
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = -1;
    do
    {
      v15 = [*(a1 + 24) charAtWithInt:v11];
      if (v15 == 39)
      {
        if (v13 >= 1)
        {
          sub_1002020B0(a1, a3, a4, a5, v14, v13);
          v13 = 0;
        }

        if (v14 == 39)
        {
          if (!a3)
          {
            goto LABEL_34;
          }

          [a3 appendWithChar:39];
          v14 = -1;
        }

        else
        {
          v14 = 39;
        }

        v12 ^= 1u;
      }

      else
      {
        v16 = v15;
        if ((v12 & 1) != 0 || (v14 != v15 ? (v17 = ((v15 & 0xFFDF) - 65) > 0x19u) : (v17 = 0), v17))
        {
          if (v13 >= 1)
          {
            sub_1002020B0(a1, a3, a4, a5, v14, v13);
            v13 = 0;
          }

          if (!a3)
          {
            goto LABEL_34;
          }

          [a3 appendWithChar:v16];
          v14 = -1;
        }

        else if (v14 == v15)
        {
          v12 = 0;
          v13 = (v13 + 1);
        }

        else
        {
          if (v13 >= 1)
          {
            sub_1002020B0(a1, a3, a4, a5, v14, v13);
          }

          v12 = 0;
          v13 = 1;
          v14 = v16;
        }
      }

      v11 = (v11 + 1);
    }

    while (v10 != v11);
    if (v13 > 0)
    {
      sub_1002020B0(a1, a3, a4, a5, v14, v13);
    }
  }

  return a3;
}

id sub_1002020B0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (!JavaTextSimpleDateFormat_PATTERN_CHARS_)
  {
    goto LABEL_95;
  }

  v11 = [JavaTextSimpleDateFormat_PATTERN_CHARS_ indexOf:a5];
  if (v11 == -1)
  {
    v55 = JreStrcat("$CC", v12, v13, v14, v15, v16, v17, v18, @"Unknown pattern character '");
    v56 = new_JavaLangIllegalArgumentException_initWithNSString_(v55);
    objc_exception_throw(v56);
  }

  if (!a2)
  {
LABEL_95:
    JreThrowNullPointerException();
  }

  v19 = v11;
  v20 = [a2 length];
  switch(v19)
  {
    case 0u:
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100204B78();
      }

      v21 = *(a1 + 32);
      if (!v21)
      {
        goto LABEL_95;
      }

      v22 = *(v21 + 16);
      if (!v22)
      {
        goto LABEL_95;
      }

      v23 = *(a1 + 8);
      if (!v23)
      {
        goto LABEL_95;
      }

      v24 = JavaTextDateFormat_Field_ERA_;
      v25 = 0;
      goto LABEL_35;
    case 1u:
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100204B78();
      }

      v52 = *(a1 + 8);
      if (!v52)
      {
        goto LABEL_95;
      }

      v24 = JavaTextDateFormat_Field_YEAR_;
      v53 = [v52 getWithInt:1];
      v29 = v53;
      if (a6 != 2)
      {
        goto LABEL_14;
      }

      v29 = v53 % 100;
      v30 = a1;
      v31 = a2;
      v32 = 2;
      goto LABEL_15;
    case 2u:
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100204B78();
      }

      v24 = JavaTextDateFormat_Field_MONTH_;
      v47 = a1;
      v48 = a2;
      v49 = a6;
      v50 = 0;
      goto LABEL_94;
    case 3u:
      v26 = &JavaTextDateFormat_Field_DAY_OF_MONTH_;
      v27 = 5;
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_12;
    case 4u:
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100204B78();
      }

      v39 = *(a1 + 8);
      if (!v39)
      {
        goto LABEL_95;
      }

      v24 = JavaTextDateFormat_Field_HOUR_OF_DAY1_;
      v40 = [v39 getWithInt:11];
      v41 = v40 == 0;
      v42 = 24;
      goto LABEL_56;
    case 5u:
      v26 = &JavaTextDateFormat_Field_HOUR_OF_DAY0_;
      v27 = 11;
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_12;
    case 6u:
      v26 = &JavaTextDateFormat_Field_MINUTE_;
      v27 = 12;
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_12;
    case 7u:
      v26 = &JavaTextDateFormat_Field_SECOND_;
      v27 = 13;
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_12;
    case 8u:
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100204B78();
      }

      v54 = *(a1 + 8);
      if (!v54)
      {
        goto LABEL_95;
      }

      v24 = JavaTextDateFormat_Field_MILLISECOND_;
      sub_100202CF0(a1, a2, a6, [v54 getWithInt:14]);
      goto LABEL_16;
    case 9u:
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100204B78();
      }

      v24 = JavaTextDateFormat_Field_DAY_OF_WEEK_;
      v43 = a1;
      v44 = a2;
      v45 = a6;
      v46 = 0;
      goto LABEL_74;
    case 0xAu:
      v26 = &JavaTextDateFormat_Field_DAY_OF_YEAR_;
      v27 = 6;
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_12;
    case 0xBu:
      v26 = &JavaTextDateFormat_Field_DAY_OF_WEEK_IN_MONTH_;
      v27 = 8;
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_12;
    case 0xCu:
      v26 = &JavaTextDateFormat_Field_WEEK_OF_YEAR_;
      v27 = 3;
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_12;
    case 0xDu:
      v26 = &JavaTextDateFormat_Field_WEEK_OF_MONTH_;
      v27 = 4;
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_12;
    case 0xEu:
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100204B78();
      }

      v36 = *(a1 + 32);
      if (!v36)
      {
        goto LABEL_95;
      }

      v22 = *(v36 + 8);
      if (!v22)
      {
        goto LABEL_95;
      }

      v23 = *(a1 + 8);
      if (!v23)
      {
        goto LABEL_95;
      }

      v24 = JavaTextDateFormat_Field_AM_PM_;
      v25 = 9;
LABEL_35:
      v37 = [v23 getWithInt:v25];
      v38 = *(v22 + 8);
      if (v37 < 0 || v37 >= v38)
      {
        IOSArray_throwOutOfBoundsWithMsg(v38, v37);
      }

      [a2 appendWithNSString:*(v22 + 24 + 8 * v37)];
      goto LABEL_16;
    case 0xFu:
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100204B78();
      }

      v51 = *(a1 + 8);
      if (!v51)
      {
        goto LABEL_95;
      }

      v24 = JavaTextDateFormat_Field_HOUR1_;
      v40 = [v51 getWithInt:10];
      v41 = v40 == 0;
      v42 = 12;
LABEL_56:
      if (v41)
      {
        v29 = v42;
      }

      else
      {
        v29 = v40;
      }

      goto LABEL_14;
    case 0x10u:
      v26 = &JavaTextDateFormat_Field_HOUR0_;
      v27 = 10;
      if (atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire))
      {
        goto LABEL_12;
      }

LABEL_39:
      objc_opt_class();
LABEL_12:
      v28 = *(a1 + 8);
      if (!v28)
      {
        goto LABEL_95;
      }

      v24 = *v26;
      v29 = [v28 getWithInt:v27];
LABEL_14:
      v30 = a1;
      v31 = a2;
      v32 = a6;
LABEL_15:
      sub_100202E50(v30, v31, v32, v29);
LABEL_16:
      if (a4)
      {
        v33 = new_JavaTextFieldPosition_initWithJavaTextFormat_Field_(v24);
        [(JavaTextFieldPosition *)v33 setBeginIndexWithInt:v20];
        -[JavaTextFieldPosition setEndIndexWithInt:](v33, "setEndIndexWithInt:", [a2 length]);

        return [a4 addWithId:v33];
      }

      if (!a3)
      {
        goto LABEL_95;
      }

      if ([a3 getFieldAttribute] == v24 || (result = objc_msgSend(a3, "getFieldAttribute")) == 0 && (result = objc_msgSend(a3, "getField"), result == v19))
      {
        result = [a3 getEndIndex];
        if (!result)
        {
          [a3 setBeginIndexWithInt:v20];
          v35 = [a2 length];

          return [a3 setEndIndexWithInt:v35];
        }
      }

      return result;
    case 0x11u:
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100204B78();
      }

      v24 = JavaTextDateFormat_Field_TIME_ZONE_;
      sub_100202B38(a1, a2, a6, 1);
      goto LABEL_16;
    case 0x12u:
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100204B78();
      }

      v24 = JavaTextDateFormat_Field_TIME_ZONE_;
      sub_100202C38(a1, a2, a6, 0);
      goto LABEL_16;
    case 0x13u:
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100204B78();
      }

      v24 = JavaTextDateFormat_Field_MONTH_;
      v47 = a1;
      v48 = a2;
      v49 = a6;
      v50 = 1;
LABEL_94:
      sub_100202990(v47, v48, v49, v50);
      goto LABEL_16;
    case 0x14u:
      if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100204B78();
      }

      v24 = JavaTextDateFormat_Field_DAY_OF_WEEK_;
      v43 = a1;
      v44 = a2;
      v45 = a6;
      v46 = 1;
LABEL_74:
      sub_100202838(v43, v44, v45, v46);
      goto LABEL_16;
    default:
      v24 = 0;
      goto LABEL_16;
  }
}

id sub_100202838(uint64_t a1, void *a2, int a3, int a4)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
LABEL_27:
    JreThrowNullPointerException();
  }

  v6 = *(v4 + 56);
  if (a3 == 5)
  {
    if (a4)
    {
      if (!v6)
      {
        goto LABEL_27;
      }

      v7 = &OBJC_IVAR___LibcoreIcuLocaleData_tinyStandAloneWeekdayNames_;
    }

    else
    {
      if (!v6)
      {
        goto LABEL_27;
      }

      v7 = &OBJC_IVAR___LibcoreIcuLocaleData_tinyWeekdayNames_;
    }
  }

  else if (a3 == 4)
  {
    if (!a4)
    {
      v7 = &OBJC_IVAR___JavaTextDateFormatSymbols_weekdays_;
      if (!a2)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    if (!v6)
    {
      goto LABEL_27;
    }

    v7 = &OBJC_IVAR___LibcoreIcuLocaleData_longStandAloneWeekdayNames_;
  }

  else
  {
    if (!a4)
    {
      v7 = &OBJC_IVAR___JavaTextDateFormatSymbols_shortWeekdays_;
      if (!a2)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    if (!v6)
    {
      goto LABEL_27;
    }

    v7 = &OBJC_IVAR___LibcoreIcuLocaleData_shortStandAloneWeekdayNames_;
  }

  v4 = *(v4 + 56);
  if (!a2)
  {
    goto LABEL_27;
  }

LABEL_20:
  v8 = *(v4 + *v7);
  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = [v9 getWithInt:7];
  v11 = *(v8 + 8);
  if ((v10 & 0x80000000) != 0 || v10 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v10);
  }

  v12 = *(v8 + 24 + 8 * v10);

  return [a2 appendWithNSString:v12];
}

id sub_100202990(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_31;
  }

  v9 = [v5 getWithInt:2];
  v10 = v9;
  if (a3 <= 2)
  {

    return sub_100202E50(a1, a2, a3, v9 + 1);
  }

  v12 = *(a1 + 32);
  if (!v12)
  {
LABEL_31:
    JreThrowNullPointerException();
  }

  v13 = *(v12 + 56);
  if (a3 == 5)
  {
    if (a4)
    {
      if (!v13)
      {
        goto LABEL_31;
      }

      v14 = &OBJC_IVAR___LibcoreIcuLocaleData_tinyStandAloneMonthNames_;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_31;
      }

      v14 = &OBJC_IVAR___LibcoreIcuLocaleData_tinyMonthNames_;
    }
  }

  else if (a3 == 4)
  {
    if (!a4)
    {
      v14 = &OBJC_IVAR___JavaTextDateFormatSymbols_months_;
      if (!a2)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }

    if (!v13)
    {
      goto LABEL_31;
    }

    v14 = &OBJC_IVAR___LibcoreIcuLocaleData_longStandAloneMonthNames_;
  }

  else
  {
    if (!a4)
    {
      v14 = &OBJC_IVAR___JavaTextDateFormatSymbols_shortMonths_;
      if (!a2)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }

    if (!v13)
    {
      goto LABEL_31;
    }

    v14 = &OBJC_IVAR___LibcoreIcuLocaleData_shortStandAloneMonthNames_;
  }

  v12 = *(v12 + 56);
  if (!a2)
  {
    goto LABEL_31;
  }

LABEL_25:
  v15 = *(v12 + *v14);
  if (!v15)
  {
    goto LABEL_31;
  }

  v16 = *(v15 + 8);
  if ((v10 & 0x80000000) != 0 || v10 >= v16)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16, v10);
  }

  v17 = *(v15 + 24 + 8 * v10);

  return [a2 appendWithNSString:v17];
}

id sub_100202B38(uint64_t a1, void *a2, int a3, int a4)
{
  if (a4)
  {
    v8 = *(a1 + 8);
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = [v8 getTimeZone];
    v10 = [*(a1 + 8) getWithInt:16];
    if (!*(a1 + 32))
    {
      goto LABEL_12;
    }

    v11 = [*(a1 + 32) getTimeZoneDisplayNameWithJavaUtilTimeZone:v9 withBoolean:v10 != 0 withInt:a3 > 3];
    if (v11)
    {
      if (a2)
      {

        return [a2 appendWithNSString:v11];
      }

LABEL_12:
      JreThrowNullPointerException();
    }
  }

  return sub_100202C38(a1, a2, a3, a4);
}

id sub_100202C38(uint64_t a1, void *a2, int a3, int a4)
{
  v5 = *(a1 + 8);
  if (!v5 || (v9 = [v5 getWithInt:15], v10 = objc_msgSend(*(a1 + 8), "getWithInt:", 16), !a2))
  {
    JreThrowNullPointerException();
  }

  if (a3 > 3)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  if (a3 == 4)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4;
  }

  GmtOffsetStringWithBoolean_withBoolean_withInt = JavaUtilTimeZone_createGmtOffsetStringWithBoolean_withBoolean_withInt_(v12, v11, v10 + v9);

  return [a2 appendWithNSString:GmtOffsetStringWithBoolean_withBoolean_withInt];
}

id sub_100202CF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v7 = a3;
  v9 = (a3 - 3);
  if (a3 >= 3)
  {
    a3 = 3;
  }

  else
  {
    a3 = a3;
  }

  [v5 setMinimumIntegerDigitsWithInt:a3];
  [*(a1 + 16) setMaximumIntegerDigitsWithInt:10];
  v10 = a4 / 100;
  if (v7 != 1)
  {
    v10 = a4;
  }

  if (v7 == 2)
  {
    v11 = a4 / 10;
  }

  else
  {
    v11 = v10;
  }

  v12 = new_JavaTextFieldPosition_initWithInt_(0);
  result = [*(a1 + 16) formatWithId:JavaLangInteger_valueOfWithInt_(v11) withJavaLangStringBuffer:a2 withJavaTextFieldPosition:v12];
  if (v7 >= 4)
  {
    [*(a1 + 16) setMinimumIntegerDigitsWithInt:v9];
    v14 = *(a1 + 16);
    v15 = JavaLangInteger_valueOfWithInt_(0);

    return [v14 formatWithId:v15 withJavaLangStringBuffer:a2 withJavaTextFieldPosition:v12];
  }

  return result;
}

id sub_100202E50(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v9 = [v5 getMinimumIntegerDigits];
  [*(a1 + 16) setMinimumIntegerDigitsWithInt:a3];
  v10 = *(a1 + 16);
  v11 = JavaLangInteger_valueOfWithInt_(a4);
  [v10 formatWithId:v11 withJavaLangStringBuffer:a2 withJavaTextFieldPosition:new_JavaTextFieldPosition_initWithInt_(0)];
  v12 = *(a1 + 16);

  return [v12 setMinimumIntegerDigitsWithInt:v9];
}

unint64_t sub_1002030E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!JavaTextSimpleDateFormat_PATTERN_CHARS_)
  {
    goto LABEL_71;
  }

  v9 = [JavaTextSimpleDateFormat_PATTERN_CHARS_ indexOf:a4];
  if (v9 == -1)
  {
    v54 = JreStrcat("$CC", v10, v11, v12, v13, v14, v15, v16, @"Unknown pattern character '");
    v55 = new_JavaLangIllegalArgumentException_initWithNSString_(v54);
    objc_exception_throw(v55);
  }

  if (a5 >= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = -a5;
  }

  v18 = -a5;
  v19 = -a5 & (a5 >> 31);
  v20 = 5;
  switch(v9)
  {
    case 0u:
      v46 = *(a1 + 32);
      if (!v46)
      {
        goto LABEL_71;
      }

      v23 = *(v46 + 16);
      v24 = a1;
      v25 = a2;
      v26 = a3;
      v27 = 0;
      goto LABEL_38;
    case 1u:
      if (v17 > 2)
      {
        v20 = 1;
LABEL_49:

        return sub_100203E28(a1, v18 & (a5 >> 31), a2, a3, v20, 0);
      }

      v48 = new_JavaTextParsePosition_initWithInt_(a3);
      v49 = sub_100203C70(a1, v19, a2, v48);
      if (v49)
      {
        v50 = [(JavaLangInteger *)v49 intValue];
        if ([(JavaTextParsePosition *)v48 getIndex]- a3 == 2 && (v50 & 0x80000000) == 0)
        {
          v51 = *(a1 + 40);
          v52 = v50 + 100 * (v51 / 100);
          if (v52 >= v51)
          {
            v50 = v52;
          }

          else
          {
            v50 = (v52 + 100);
          }
        }

        v53 = *(a1 + 8);
        if (v53)
        {
          [v53 setWithInt:1 withInt:v50];
          v40 = v48;
LABEL_31:

          return [(JavaTextParsePosition *)v40 getIndex];
        }

        goto LABEL_71;
      }

      v47 = v48;
      break;
    case 2u:
      v41 = a1;
      v42 = a2;
      v43 = a3;
      v44 = v18 & (a5 >> 31);
      v45 = 0;
      goto LABEL_56;
    case 3u:
      goto LABEL_49;
    case 4u:
      v28 = new_JavaTextParsePosition_initWithInt_(a3);
      v29 = sub_100203C70(a1, v19, a2, v28);
      if (!v29)
      {
        goto LABEL_59;
      }

      v30 = [(JavaLangInteger *)v29 intValue];
      if (!*(a1 + 8))
      {
        goto LABEL_71;
      }

      if (v30 == 24)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      v32 = *(a1 + 8);
      v33 = 11;
      goto LABEL_30;
    case 5u:
      v20 = 11;
      goto LABEL_49;
    case 6u:
      v20 = 12;
      goto LABEL_49;
    case 7u:
      v20 = 13;
      goto LABEL_49;
    case 8u:

      return sub_1002035CC(a1, a2, a3, v18 & (a5 >> 31));
    case 9u:
      v34 = a1;
      v35 = a2;
      v36 = a3;
      v37 = 0;
      goto LABEL_43;
    case 0xAu:
      v20 = 6;
      goto LABEL_49;
    case 0xBu:
      v20 = 8;
      goto LABEL_49;
    case 0xCu:
      v20 = 3;
      goto LABEL_49;
    case 0xDu:
      v20 = 4;
      goto LABEL_49;
    case 0xEu:
      v22 = *(a1 + 32);
      if (!v22)
      {
        goto LABEL_71;
      }

      v23 = *(v22 + 8);
      v24 = a1;
      v25 = a2;
      v26 = a3;
      v27 = 9;
LABEL_38:

      return sub_100203F04(v24, v25, v26, v23, v27);
    case 0xFu:
      v28 = new_JavaTextParsePosition_initWithInt_(a3);
      v38 = sub_100203C70(a1, v19, a2, v28);
      if (v38)
      {
        v39 = [(JavaLangInteger *)v38 intValue];
        if (*(a1 + 8))
        {
          if (v39 == 12)
          {
            v31 = 0;
          }

          else
          {
            v31 = v39;
          }

          v32 = *(a1 + 8);
          v33 = 10;
LABEL_30:
          [v32 setWithInt:v33 withInt:v31];
          v40 = v28;
          goto LABEL_31;
        }

LABEL_71:
        JreThrowNullPointerException();
      }

LABEL_59:
      v47 = v28;
      break;
    case 0x10u:
      v20 = 10;
      goto LABEL_49;
    case 0x11u:
    case 0x12u:

      return sub_1002040AC(a1, a2, a3);
    case 0x13u:
      v41 = a1;
      v42 = a2;
      v43 = a3;
      v44 = v18 & (a5 >> 31);
      v45 = 1;
LABEL_56:

      return sub_100203804(v41, v42, v43, v17, v44, v45);
    case 0x14u:
      v34 = a1;
      v35 = a2;
      v36 = a3;
      v37 = 1;
LABEL_43:

      return sub_1002036EC(v34, v35, v36, v37);
    default:
      return a3;
  }

  return ~[(JavaTextParsePosition *)v47 getErrorIndex];
}

unint64_t sub_1002035CC(uint64_t a1, void *a2, int a3, int a4)
{
  v8 = new_JavaTextParsePosition_initWithInt_(a3);
  v9 = sub_100203C70(a1, a4, a2, v8);
  if (!v9)
  {
    return ~[(JavaTextParsePosition *)v8 getErrorIndex];
  }

  [(JavaLangInteger *)v9 doubleValue];
  v11 = v10;
  v12 = JavaLangMath_powWithDouble_withDouble_(10.0, ([(JavaTextParsePosition *)v8 getIndex]- a3));
  v13 = *(a1 + 8);
  if (!v13)
  {
    JreThrowNullPointerException();
  }

  v14 = v11 / v12 * 1000.0;
  v15 = v14;
  if (v14 < 0.0)
  {
    v16 = 0x80000000;
  }

  else
  {
    v16 = 0x7FFFFFFF;
  }

  if (v15 == 0x80000000)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  [v13 setWithInt:14 withInt:v17];

  return [(JavaTextParsePosition *)v8 getIndex];
}

uint64_t sub_1002036EC(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    v8 = *(v4 + 56);
    if (v8)
    {
      result = sub_100203F04(a1, a2, a3, *(v8 + 112), 7u);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v10 = &OBJC_IVAR___LibcoreIcuLocaleData_shortStandAloneWeekdayNames_;
      goto LABEL_9;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  result = sub_100203F04(a1, a2, a3, *(v4 + 48), 7u);
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  v8 = *(a1 + 32);
  v10 = &OBJC_IVAR___JavaTextDateFormatSymbols_shortWeekdays_;
LABEL_9:
  v11 = *(v8 + *v10);

  return sub_100203F04(a1, a2, a3, v11, 7u);
}

unint64_t sub_100203804(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a4 <= 2)
  {

    return sub_100203E28(a1, a5, a2, a3, 2, -1);
  }

  v10 = *(a1 + 32);
  if (!v10)
  {
    goto LABEL_16;
  }

  if (!a6)
  {
    result = sub_100203F04(a1, a2, a3, *(v10 + 24), 2u);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v11 = *(a1 + 32);
    v12 = &OBJC_IVAR___JavaTextDateFormatSymbols_shortMonths_;
    goto LABEL_13;
  }

  v11 = *(v10 + 56);
  if (!v11)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  result = sub_100203F04(a1, a2, a3, *(v11 + 64), 2u);
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  v12 = &OBJC_IVAR___LibcoreIcuLocaleData_shortStandAloneMonthNames_;
LABEL_13:
  v13 = *(v11 + *v12);

  return sub_100203F04(a1, a2, a3, v13, 2u);
}

JavaLangInteger *sub_100203C70(uint64_t a1, int a2, void *a3, void *a4)
{
  if (!a3)
  {
    goto LABEL_30;
  }

  v8 = [a3 length];
  if (!a4)
  {
    goto LABEL_30;
  }

  LODWORD(v9) = v8;
  v10 = [a4 getIndex];
  v11 = v10;
  if (v9 - v10 <= a2 || a2 <= 0)
  {
    v9 = v9;
  }

  else
  {
    v9 = (v10 + a2);
  }

  if (v10 < v9)
  {
    while ([a3 charAtWithInt:v11] == 32 || objc_msgSend(a3, "charAtWithInt:", v11) == 9)
    {
      v11 = (v11 + 1);
      if (v9 == v11)
      {
        v11 = v9;
        break;
      }
    }
  }

  if (!a2)
  {
    [a4 setIndexWithInt:v11];
    v15 = *(a1 + 16);
    if (v15)
    {

      return [v15 parseWithNSString:a3 withJavaTextParsePosition:a4];
    }

LABEL_30:
    JreThrowNullPointerException();
  }

  if (v11 >= v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    while (1)
    {
      v14 = JavaLangCharacter_digitWithChar_withInt_([a3 charAtWithInt:v11], 10);
      if (v14 == -1)
      {
        break;
      }

      v13 = v14 + 10 * v13;
      v11 = (v11 + 1);
      if (v9 == v11)
      {
        v11 = v9;
        break;
      }
    }
  }

  if (v11 == [a4 getIndex])
  {
    [a4 setErrorIndexWithInt:v11];
    return 0;
  }

  else
  {
    [a4 setIndexWithInt:v11];

    return JavaLangInteger_valueOfWithInt_(v13);
  }
}

unint64_t sub_100203E28(uint64_t a1, int a2, void *a3, int a4, uint64_t a5, int a6)
{
  v11 = new_JavaTextParsePosition_initWithInt_(a4);
  v12 = sub_100203C70(a1, a2, a3, v11);
  if (!v12)
  {
    return ~[(JavaTextParsePosition *)v11 getErrorIndex];
  }

  v13 = *(a1 + 8);
  if (!v13)
  {
    JreThrowNullPointerException();
  }

  [v13 setWithInt:a5 withInt:{-[JavaLangInteger intValue](v12, "intValue") + a6}];

  return [(JavaTextParsePosition *)v11 getIndex];
}

uint64_t sub_100203F04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (!a4)
  {
    goto LABEL_40;
  }

  if (*(a4 + 8) >= 1)
  {
    v8 = 0;
    v9 = -1;
    v10 = 0xFFFFFFFFLL;
    while (1)
    {
      v11 = *(a4 + 24 + 8 * v8);
      if (!v11)
      {
        break;
      }

      v12 = [*(a4 + 24 + 8 * v8) length];
      if (v12)
      {
        if (!a2)
        {
          break;
        }

        if ([a2 regionMatches:1 thisOffset:a3 aString:v11 otherOffset:0 count:v12])
        {
          if (v10 == -1 || v9 < v12)
          {
            v9 = v12;
            v10 = v8;
          }

          else
          {
            v10 = v10;
          }
        }

        else
        {
          v15 = (v12 - 1);
          if ([v11 charAtWithInt:v15] == 46)
          {
            v16 = [a2 regionMatches:1 thisOffset:a3 aString:v11 otherOffset:0 count:v15];
            v18 = v10 == -1 || v15 > v9;
            v19 = !v18;
            if (v18)
            {
              v20 = v15;
            }

            else
            {
              v20 = v9;
            }

            if (v19)
            {
              v21 = v10;
            }

            else
            {
              v21 = v8;
            }

            if (v16)
            {
              v9 = v20;
              v10 = v21;
            }

            else
            {
              v10 = v10;
            }
          }
        }
      }

      if (++v8 >= *(a4 + 8))
      {
        goto LABEL_36;
      }
    }

LABEL_40:
    JreThrowNullPointerException();
  }

  v10 = 0xFFFFFFFFLL;
  v9 = -1;
LABEL_36:
  if (v10 == -1)
  {
    return ~a3;
  }

  v22 = *(a1 + 8);
  if (!v22)
  {
    goto LABEL_40;
  }

  [v22 setWithInt:a5 withInt:v10];
  return (v9 + a3);
}

unint64_t sub_1002040AC(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_54;
  }

  LODWORD(v3) = a3;
  v6 = [a2 regionMatches:a3 aString:@"GMT" otherOffset:0 count:3];
  v7 = (v3 + 3);
  if (v6)
  {
    v3 = v7;
  }

  else
  {
    v3 = v3;
  }

  if (v3 >= [a2 length] || (v8 = objc_msgSend(a2, "charAtWithInt:", v3), v9 = v8, v8 != 45) && v8 != 43)
  {
    if (v6)
    {
      v17 = *(a1 + 8);
      if (!v17)
      {
        goto LABEL_54;
      }

      [v17 setTimeZoneWithJavaUtilTimeZone:JavaUtilTimeZone_getTimeZoneWithNSString_(@"GMT")];
      return v7;
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = [v18 internalZoneStrings];
      if (v19)
      {
        v40 = a1;
        v20 = (v19 + 24);
        v21 = &v19[8 * *(v19 + 2) + 24];
        v41 = v21;
LABEL_20:
        if (v20 >= v21)
        {
          return ~v3;
        }

        v23 = *v20++;
        v22 = v23;
        if (!v23)
        {
          goto LABEL_54;
        }

        v24 = 0;
        while (1)
        {
          v25 = *(v22 + 8);
          if (v24 + 1 >= v25)
          {
            IOSArray_throwOutOfBoundsWithMsg(v25, (v24 + 1));
          }

          v26 = *(v22 + 32 + 8 * v24);
          if (v26)
          {
            v27 = *(v22 + 8);
            if (v24 + 1 >= v27)
            {
              IOSArray_throwOutOfBoundsWithMsg(v27, (v24 + 1));
            }

            if ([a2 regionMatches:1 thisOffset:v3 aString:v26 otherOffset:0 count:{objc_msgSend(*(v22 + 32 + 8 * v24), "length")}])
            {
              break;
            }
          }

          if (++v24 == 4)
          {
            v21 = v41;
            goto LABEL_20;
          }
        }

        v31 = *(v22 + 8);
        if (v31 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, 0);
        }

        TimeZoneWithNSString = JavaUtilTimeZone_getTimeZoneWithNSString_(*(v22 + 24));
        if (!TimeZoneWithNSString)
        {
          return ~v3;
        }

        v33 = TimeZoneWithNSString;
        v34 = [TimeZoneWithNSString getRawOffset];
        if ((v24 - 2) <= 1)
        {
          v35 = [v33 getDSTSavings];
          if (v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = 3600000;
          }

          v34 += v36;
        }

        v37 = *(v40 + 8);
        if (v37)
        {
          [v37 setTimeZoneWithJavaUtilTimeZone:{new_JavaUtilSimpleTimeZone_initWithInt_withNSString_(v34, &stru_100484358)}];
          v38 = *(v22 + 8);
          if (v38 <= v24 + 1)
          {
            IOSArray_throwOutOfBoundsWithMsg(v38, v24 + 1);
          }

          v39 = *(v22 + 24 + 8 * v24 + 8);
          if (v39)
          {
            return v3 + [v39 length];
          }
        }
      }
    }

LABEL_54:
    JreThrowNullPointerException();
  }

  v10 = new_JavaTextParsePosition_initWithInt_(v3 + 1);
  v11 = *(a1 + 16);
  if (!v11)
  {
    goto LABEL_54;
  }

  v12 = [v11 parseWithNSString:a2 withJavaTextParsePosition:v10];
  if (!v12)
  {
    return ~[(JavaTextParsePosition *)v10 getErrorIndex];
  }

  v13 = [v12 intValue];
  v14 = 3600000 * v13;
  v15 = [(JavaTextParsePosition *)v10 getIndex];
  if (v15 < [a2 length] && objc_msgSend(a2, "charAtWithInt:", v15) == 58)
  {
    [(JavaTextParsePosition *)v10 setIndexWithInt:(v15 + 1)];
    v16 = [*(a1 + 16) parseWithNSString:a2 withJavaTextParsePosition:v10];
    if (v16)
    {
      v14 += 60000 * [v16 intValue];
      goto LABEL_33;
    }

    return ~[(JavaTextParsePosition *)v10 getErrorIndex];
  }

  if (v13 >= 24)
  {
    v14 = 60000 * (v13 % 0x64u) + 3600000 * (v13 / 0x64u);
  }

LABEL_33:
  v28 = *(a1 + 8);
  if (!v28)
  {
    goto LABEL_54;
  }

  if (v9 == 45)
  {
    v29 = -v14;
  }

  else
  {
    v29 = v14;
  }

  [v28 setTimeZoneWithJavaUtilTimeZone:{new_JavaUtilSimpleTimeZone_initWithInt_withNSString_(v29, &stru_100484358)}];

  return [(JavaTextParsePosition *)v10 getIndex];
}

JavaTextSimpleDateFormat *new_JavaTextSimpleDateFormat_initWithNSString_(void *a1)
{
  v2 = [JavaTextSimpleDateFormat alloc];
  Default = JavaUtilLocale_getDefault();
  JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_(v2, a1, Default);
  return v2;
}

JavaTextSimpleDateFormat *new_JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_(void *a1, void *a2)
{
  v4 = [JavaTextSimpleDateFormat alloc];
  JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_(v4, a1, a2);
  return v4;
}

const __CFString *JavaMathConversion_bigInteger2StringWithJavaMathBigInteger_withInt_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(JavaMathConversion__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_88;
    }
  }

  else
  {
    sub_10019A278();
    if (!a1)
    {
      goto LABEL_88;
    }
  }

  v4 = *(a1 + 20);
  if (!v4)
  {
    return @"0";
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == 1)
  {
    if (v6)
    {
      v7 = v6[2];
      if (v7 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, 0);
      }

      if (v4 >= 0)
      {
        v8 = v6[3];
      }

      else
      {
        v8 = -v6[3];
      }

      return JavaLangLong_toStringWithLong_withInt_(v8, a2);
    }

LABEL_88:
    JreThrowNullPointerException();
  }

  if (a2 == 10 || (a2 - 37) <= 0xFFFFFFDC)
  {

    return [a1 description];
  }

  else
  {
    v10 = JavaLangMath_logWithDouble_(a2);
    v11 = JavaLangMath_logWithDouble_(2.0);
    v12 = [a1 abs];
    if (!v12)
    {
      goto LABEL_88;
    }

    v13 = [v12 bitLength] / (v10 / v11) + (v4 >> 31);
    v14 = v13;
    if (v13 < 0.0)
    {
      v15 = 0x80000000;
    }

    else
    {
      v15 = 0x7FFFFFFF;
    }

    if (v14 == 0x80000000)
    {
      v14 = v15;
    }

    v16 = v14 + 1;
    v17 = [IOSCharArray arrayWithLength:v14 + 1];
    v18 = v17;
    v19 = &OBJC_IVAR___IOSArray_size_;
    v59 = v4;
    v58 = v16;
    if (a2 == 16)
    {
      if (v5 >= 1)
      {
        v20 = 0;
        v62 = v17 - 2;
        do
        {
          v21 = v16 - 1;
          if (v16 >= 1)
          {
            if (!v6)
            {
              goto LABEL_88;
            }

            v22 = 0;
            v23 = &v6[v20];
            v24 = v16;
            if (v21 >= 7)
            {
              v21 = 7;
            }

            v25 = 4 * v21 + 4;
            do
            {
              v26 = v6;
              v27 = *(v6 + *v19);
              v28 = v19;
              if (v20 >= v27)
              {
                IOSArray_throwOutOfBoundsWithMsg(v27, v20);
              }

              v29 = JavaLangCharacter_forDigitWithInt_withInt_((v23[3] >> v22) & 0xF, 16);
              v30 = *(&v18->super.super.isa + *v28);
              v19 = v28;
              if (v24 > v30)
              {
                IOSArray_throwOutOfBoundsWithMsg(v30, (v24 - 1));
              }

              *&v62[2 * v24-- + 12] = v29;
              v22 += 4;
              v6 = v26;
            }

            while (v25 != v22);
            v16 = v24;
          }

          ++v20;
        }

        while (v20 != v5);
      }
    }

    else
    {
      v31 = [IOSIntArray arrayWithLength:v5];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v6, 0, v31, 0, v5);
      if (!JavaMathConversion_digitFitInInt_)
      {
        goto LABEL_88;
      }

      v32 = *(JavaMathConversion_digitFitInInt_ + 8);
      if (v32 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v32, a2);
      }

      if (!JavaMathConversion_bigRadices_)
      {
        goto LABEL_88;
      }

      v61 = *(JavaMathConversion_digitFitInInt_ + 12 + 4 * a2);
      v33 = (a2 - 2);
      v34 = *(JavaMathConversion_bigRadices_ + 8);
      if (v33 >= v34)
      {
        IOSArray_throwOutOfBoundsWithMsg(v34, (a2 - 2));
      }

      v60 = *(JavaMathConversion_bigRadices_ + 12 + 4 * v33);
      v63 = v31;
      while (1)
      {
LABEL_46:
        v35 = JavaMathDivision_divideArrayByIntWithIntArray_withIntArray_withInt_withInt_(v31, v31, v5, v60);
        v36 = (v16 - 1);
        v37 = v36 + 1;
        v38 = v36 - 1;
        v39 = v61;
        do
        {
          v40 = v36;
          v41 = v38;
          v42 = v35 / a2;
          v43 = JavaLangCharacter_forDigitWithInt_withInt_(v35 % a2, a2);
          v16 = v37 - 1;
          size = v18->super.size_;
          if (v37 - 1 < 0 || v16 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v37 - 1);
          }

          *(&v18->super.size_ + v16 + 2) = v43;
          --v39;
          if (v37 == 1)
          {
            break;
          }

          LODWORD(v36) = v40 - 1;
          v38 = v41 - 1;
          --v37;
          v35 = v42;
        }

        while (v42);
        if (v16 < 1 || v39 <= 0)
        {
          v19 = &OBJC_IVAR___IOSArray_size_;
        }

        else
        {
          v45 = 1;
          v19 = &OBJC_IVAR___IOSArray_size_;
          do
          {
            v16 = v40 - 1;
            v46 = v18->super.size_;
            if (v46 < v40)
            {
              IOSArray_throwOutOfBoundsWithMsg(v46, (v40 - 1));
            }

            *(&v18->super.size_ + v41 + 2) = 48;
            if (v40 < 2)
            {
              break;
            }

            LODWORD(v41) = v41 - 1;
            --v40;
          }

          while (v45++ < v39);
        }

        v48 = v5 - 1;
        v31 = v63;
        while (1)
        {
          v49 = v5 - 1;
          if (v5 - 1 < 1)
          {
            break;
          }

          v50 = v63->super.size_;
          if (v50 <= v49)
          {
            IOSArray_throwOutOfBoundsWithMsg(v50, (v5 - 1));
          }

          v51 = *(&v63->super.size_ + (v48-- & 0x7FFFFFFF) + 1);
          LODWORD(v5) = v5 - 1;
          if (v51)
          {
            LODWORD(v5) = v49 + 1;
            goto LABEL_46;
          }
        }

        if (!v48)
        {
          v52 = v63->super.size_;
          if (v52 <= 0)
          {
            IOSArray_throwOutOfBoundsWithMsg(v52, 0);
          }

          LODWORD(v5) = 1;
          if (!*(&v63->super.size_ + 1))
          {
            break;
          }
        }
      }
    }

    v53 = *v19;
    do
    {
      v54 = *(&v18->super.super.isa + v53);
      if (v16 < 0 || v16 >= v54)
      {
        IOSArray_throwOutOfBoundsWithMsg(v54, v16);
      }

      v55 = *(&v18->super.size_ + v16++ + 2);
    }

    while (v55 == 48);
    if (v59 == -1)
    {
      v57 = *(&v18->super.super.isa + v53);
      v56 = (v16 - 2);
      if (v16 - 2 < 0 || v56 >= v57)
      {
        IOSArray_throwOutOfBoundsWithMsg(v57, (v16 - 2));
      }

      *(&v18->super.size_ + v56 + 2) = 45;
    }

    else
    {
      v56 = (v16 - 1);
    }

    return [NSString stringWithCharacters:v18 offset:v56 length:(v58 - v56)];
  }
}

__CFString *JavaMathConversion_toDecimalScaledStringWithJavaMathBigInteger_withInt_(uint64_t a1, int a2)
{
  if (atomic_load_explicit(JavaMathConversion__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_126;
    }
  }

  else
  {
    sub_10019A278();
    if (!a1)
    {
      goto LABEL_126;
    }
  }

  v4 = *(a1 + 20);
  if (!v4)
  {
    if (a2 < 7)
    {
      return off_10043E938[a2];
    }

    v54 = new_JavaLangStringBuilder_init();
    v55 = v54;
    if (a2 >= 0)
    {
      v56 = @"0E";
    }

    else
    {
      v56 = @"0E+";
    }

    [(JavaLangStringBuilder *)v54 appendWithNSString:v56];
    [(JavaLangStringBuilder *)v55 appendWithInt:-a2];
    v57 = v55;
    goto LABEL_92;
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 10 * v5 + 8;
  v76 = 10 * v5;
  v8 = [IOSCharArray arrayWithLength:10 * v5 + 9];
  v77 = v4;
  v73 = 10 * v5 + 9;
  if (v5 != 1)
  {
    v16 = [IOSIntArray arrayWithLength:v5];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v6, 0, v16, 0, v5);
    v17 = (v5 - 1);
    v18 = 10 * v5 + 8;
    v74 = a2;
    v75 = v18;
LABEL_17:
    if ((v17 & 0x80000000) != 0)
    {
      LODWORD(v19) = 0;
    }

    else
    {
      v19 = 0;
      v20 = v17 + 1;
      v21 = v16 + 4 * v17;
      do
      {
        v22 = v20 - 1;
        size = v16->super.size_;
        if (v20 - 1 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, (v20 - 1));
        }

        v24 = *(v21 + 3);
        if ((atomic_load_explicit(JavaMathConversion__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_10019A278();
        }

        v25 = v16->super.size_;
        if (v22 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v20 - 1));
        }

        v26 = (v19 << 32) | v24;
        v19 = v26 % 0x3B9ACA00;
        *(v21 + 3) = v26 / 0x3B9ACA00;
        v21 -= 4;
        --v20;
      }

      while (v22 > 0);
    }

    v27 = (v18 - 1);
    v28 = v27 + 1;
    v29 = v18 - 2;
    v30 = 9;
    do
    {
      v31 = v27;
      v32 = v29;
      v18 = v28 - 1;
      v33 = v8->super.size_;
      if (v28 - 1 < 0 || v18 >= v33)
      {
        IOSArray_throwOutOfBoundsWithMsg(v33, v28 - 1);
      }

      *(&v8->super.size_ + v18 + 2) = (v19 % 0xA) | 0x30;
      --v30;
      if ((v19 - 10) > 0xFFFFFFEC)
      {
        break;
      }

      LODWORD(v27) = v27 - 1;
      --v29;
      LODWORD(v19) = v19 / 0xA;
    }

    while (v28-- != 1);
    if (v30 >= 1 && v18 > 0)
    {
      v35 = 1;
      do
      {
        v18 = v31 - 1;
        v36 = v8->super.size_;
        if (v36 < v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (v31 - 1));
        }

        *(&v8->super.size_ + v32 + 2) = 48;
        if (v35 >= v30)
        {
          break;
        }

        --v32;
        ++v35;
      }

      while (v31-- > 1);
    }

    a2 = v74;
    v7 = v75;
    while (1)
    {
      v38 = v16->super.size_;
      if ((v17 & 0x80000000) != 0 || v17 >= v38)
      {
        IOSArray_throwOutOfBoundsWithMsg(v38, v17);
      }

      if (*(&v16->super.size_ + v17 + 1))
      {
        goto LABEL_17;
      }

      if (!v17)
      {
        break;
      }

      v17 = (v17 - 1);
    }

    do
    {
      v39 = v8->super.size_;
      if (v18 < 0 || v18 >= v39)
      {
        IOSArray_throwOutOfBoundsWithMsg(v39, v18);
      }

      v40 = *(&v8->super.size_ + v18++ + 2);
    }

    while (v40 == 48);
    v13 = (v18 - 1);
    goto LABEL_57;
  }

  if (!v6)
  {
LABEL_126:
    JreThrowNullPointerException();
  }

  v9 = v6[2];
  if (v9 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, 0);
  }

  v10 = v6[3];
  if ((v10 & 0x80000000) != 0)
  {
    LODWORD(v13) = v7;
    do
    {
      v58 = v8->super.size_;
      v13 = (v13 - 1);
      if (v13 < 0 || v13 >= v58)
      {
        IOSArray_throwOutOfBoundsWithMsg(v58, v13);
      }

      *(&v8->super.size_ + v13 + 2) = v10 % 0xA + 48;
      v14 = v10 >= 0xA;
      v10 /= 0xAuLL;
    }

    while (v14);
  }

  else
  {
    LODWORD(v11) = v7;
    do
    {
      v12 = v8->super.size_;
      v11 = (v11 - 1);
      if (v11 < 0 || v11 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v11);
      }

      *(&v8->super.size_ + v11 + 2) = v10 % 0xA + 48;
      v13 = v11;
      v14 = v10 >= 0xA;
      LODWORD(v10) = v10 / 0xA;
    }

    while (v14);
  }

LABEL_57:
  v41 = (v7 - v13);
  if (!a2)
  {
    if (v77 < 0)
    {
      v59 = v8->super.size_;
      v13 = (v13 - 1);
      if (v13 < 0 || v13 >= v59)
      {
        IOSArray_throwOutOfBoundsWithMsg(v59, v13);
      }

      *(&v8->super.size_ + v13 + 2) = 45;
      v41 = (v7 - v13);
    }

    v60 = v8;
    v61 = v13;
    v62 = v41;
    goto LABEL_122;
  }

  v42 = v41 + ~a2;
  if (a2 >= 1 && v42 >= -6)
  {
    if (v42 < 0)
    {
      if ((1 - v42) >= 3)
      {
        do
        {
          v63 = v8->super.size_;
          v13 = (v13 - 1);
          if (v13 < 0 || v13 >= v63)
          {
            IOSArray_throwOutOfBoundsWithMsg(v63, v13);
          }

          *(&v8->super.size_ + v13 + 2) = 48;
        }

        while (v76 - a2 + 8 != v13);
      }

      v68 = v8->super.size_;
      v69 = v13 - 1;
      if (v13 - 1 < 0 || v69 >= v68)
      {
        IOSArray_throwOutOfBoundsWithMsg(v68, v69);
      }

      *(&v8->super.size_ + v69 + 2) = 46;
      v70 = v8->super.size_;
      v71 = (v13 - 2);
      if (v13 - 2 < 0 || v71 >= v70)
      {
        IOSArray_throwOutOfBoundsWithMsg(v70, (v13 - 2));
      }

      *(&v8->super.size_ + v71 + 2) = 48;
      if (v77 < 0)
      {
        v72 = v8->super.size_;
        v71 = (v13 - 3);
        if (v13 - 3 < 0 || v71 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (v13 - 3));
        }

        *(&v8->super.size_ + v71 + 2) = 45;
      }

      v62 = (v7 - v71);
      v60 = v8;
      v61 = v71;
    }

    else
    {
      v43 = v7 + ~a2;
      v44 = v76 + 7;
      if (v76 + 7 >= v43)
      {
        do
        {
          v64 = v44;
          v65 = v8->super.size_;
          if (v44 < 0 || v44 >= v65)
          {
            IOSArray_throwOutOfBoundsWithMsg(v65, v44);
          }

          v66 = v44 + 1;
          if (v44 + 1 < 0 || v66 >= v65)
          {
            IOSArray_throwOutOfBoundsWithMsg(v65, v66);
          }

          *(&v8->super.size_ + v66 + 2) = *(&v8->super.size_ + v44-- + 2);
        }

        while (v64 - 1 >= v43);
      }

      v45 = v8->super.size_;
      v46 = v7 - a2;
      if (v7 - a2 < 0 || v46 >= v45)
      {
        IOSArray_throwOutOfBoundsWithMsg(v45, v46);
      }

      *(&v8->super.size_ + v46 + 2) = 46;
      if (v77 < 0)
      {
        v67 = v8->super.size_;
        v13 = (v13 - 1);
        if (v13 < 0 || v13 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, v13);
        }

        *(&v8->super.size_ + v13 + 2) = 45;
      }

      v62 = (v73 - v13);
      v60 = v8;
      v61 = v13;
    }

LABEL_122:

    return [NSString stringWithCharacters:v60 offset:v61 length:v62];
  }

  v47 = new_JavaLangStringBuilder_initWithInt_(v76 + ~v13 + 24);
  v48 = v47;
  if (v77 < 0)
  {
    [(JavaLangStringBuilder *)v47 appendWithChar:45];
  }

  if (v7 - (v13 + 1) < 1)
  {
    v51 = v48;
    v52 = v8;
    v53 = v13;
    v50 = (v7 - v13);
  }

  else
  {
    v49 = v8->super.size_;
    if ((v13 & 0x80000000) != 0 || v13 >= v49)
    {
      IOSArray_throwOutOfBoundsWithMsg(v49, v13);
    }

    [(JavaLangStringBuilder *)v48 appendWithChar:*(&v8->super.size_ + v13 + 2)];
    [(JavaLangStringBuilder *)v48 appendWithChar:46];
    v50 = (v41 - 1);
    v51 = v48;
    v52 = v8;
    v53 = (v13 + 1);
  }

  [(JavaLangStringBuilder *)v51 appendWithCharArray:v52 withInt:v53 withInt:v50];
  [(JavaLangStringBuilder *)v48 appendWithChar:69];
  if (v42 >= 1)
  {
    [(JavaLangStringBuilder *)v48 appendWithChar:43];
  }

  [(JavaLangStringBuilder *)v48 appendWithNSString:JavaLangInteger_toStringWithInt_(v42)];
  v57 = v48;
LABEL_92:

  return [(JavaLangStringBuilder *)v57 description];
}

__CFString *JavaMathConversion_toDecimalScaledStringWithLong_withInt_(uint64_t a1, int a2)
{
  if (atomic_load_explicit(JavaMathConversion__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_70:
    if (a2 < 7)
    {
      return off_10043E938[a2];
    }

    v42 = new_JavaLangStringBuilder_init();
    v43 = v42;
    if (a2 < 0)
    {
      [(JavaLangStringBuilder *)v42 appendWithNSString:@"0E+"];
      if (a2 == 0x80000000)
      {
        v44 = @"2147483648";
LABEL_77:
        [(JavaLangStringBuilder *)v43 appendWithNSString:v44];
        v28 = v43;
        goto LABEL_78;
      }
    }

    else
    {
      [(JavaLangStringBuilder *)v42 appendWithNSString:@"0E"];
    }

    v44 = JavaLangInteger_toStringWithInt_(-a2);
    goto LABEL_77;
  }

  sub_10019A278();
  if (!a1)
  {
    goto LABEL_70;
  }

LABEL_3:
  v47 = a1;
  if (a1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = -a1;
  }

  v5 = 19;
  v6 = [IOSCharArray arrayWithLength:19];
  v7 = -15;
  do
  {
    size = v6->super.size_;
    v9 = v7 + 32;
    v10 = v7 + 32;
    if (v7 + 32 < 0 || v9 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v9);
    }

    *(&v6->super.size_ + v9 + 2) = v4 % 10 + 48;
    v11 = v4 + 9;
    --v7;
    --v5;
    v4 /= 10;
  }

  while (v11 > 0x12);
  v12 = (v7 + 33);
  if (!a2)
  {
    if (v47 < 0)
    {
      v20 = v6->super.size_;
      v12 = (v7 + 32);
      if (v7 + 32 < 0 || v12 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, (v7 + 32));
      }

      *(&v6->super.size_ + v12 + 2) = 45;
    }

    v19 = 18;
    goto LABEL_29;
  }

  v13 = v9 + a2;
  v14 = 17 - v13;
  v15 = v7 + 34;
  if (a2 >= 1 && v13 <= 23)
  {
    if (v13 >= 18)
    {
      if (v13 != 18)
      {
        v39 = 3;
        do
        {
          v40 = v6->super.size_;
          v12 = (v12 - 1);
          if (v12 < 0 || v12 >= v40)
          {
            IOSArray_throwOutOfBoundsWithMsg(v40, v12);
          }

          *(&v6->super.size_ + v12 + 2) = 48;
        }

        while (v13 - 16 > v39++);
      }

      v29 = v6->super.size_;
      v30 = v12 - 1;
      if (v12 - 1 < 0 || v30 >= v29)
      {
        IOSArray_throwOutOfBoundsWithMsg(v29, v30);
      }

      *(&v6->super.size_ + v30 + 2) = 46;
      v31 = v6->super.size_;
      v32 = (v12 - 2);
      if (v12 - 2 < 0 || v32 >= v31)
      {
        IOSArray_throwOutOfBoundsWithMsg(v31, (v12 - 2));
      }

      *(&v6->super.size_ + v32 + 2) = 48;
      if (v47 < 0)
      {
        v33 = v6->super.size_;
        v32 = (v12 - 3);
        if (v12 - 3 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v12 - 3));
        }

        *(&v6->super.size_ + v32 + 2) = 45;
      }

      v21 = (18 - v32);
      v22 = v6;
      v23 = v32;
      goto LABEL_50;
    }

    if (v12 + v14 <= 17)
    {
      v35 = 17;
      do
      {
        v36 = v35;
        v37 = v6->super.size_;
        if (v35 < 0 || v35 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, v35);
        }

        v38 = v35 + 1;
        if (v35 + 1 < 0 || v38 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, v38);
        }

        *(&v6->super.size_ + v38 + 2) = *(&v6->super.size_ + v35-- + 2);
      }

      while (v36 - 1 >= v12 + v14);
    }

    v16 = v6->super.size_;
    v17 = v15 + v14;
    if (v15 + v14 < 0 || v17 >= v16)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, v17);
    }

    *(&v6->super.size_ + v17 + 2) = 46;
    if (v47 < 0)
    {
      v18 = v6->super.size_;
      v12 = (v7 + 32);
      if (v7 + 32 < 0 || v12 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, (v7 + 32));
      }

      *(&v6->super.size_ + v12 + 2) = 45;
    }

    v19 = 19;
LABEL_29:
    v21 = (v19 - v12);
    v22 = v6;
    v23 = v12;
LABEL_50:

    return [NSString stringWithCharacters:v22 offset:v23 length:v21];
  }

  v45 = 17 - v13;
  v24 = new_JavaLangStringBuilder_initWithInt_(-v7);
  v25 = v24;
  if (v47 < 0)
  {
    [(JavaLangStringBuilder *)v24 appendWithChar:45, v45];
  }

  if (v7 + 15 > -2)
  {
    v27 = 19;
  }

  else
  {
    v26 = v6->super.size_;
    if ((v10 & 0x80000000) != 0 || v12 >= v26)
    {
      IOSArray_throwOutOfBoundsWithMsg(v26, (v7 + 33));
    }

    [(JavaLangStringBuilder *)v25 appendWithChar:*(&v6->super.size_ + v10 + 2)];
    [(JavaLangStringBuilder *)v25 appendWithChar:46];
    v27 = 18;
    v12 = (v7 + 34);
  }

  [(JavaLangStringBuilder *)v25 appendWithCharArray:v6 withInt:v12 withInt:(v27 - v5), v45];
  [(JavaLangStringBuilder *)v25 appendWithChar:69];
  if (v13 <= 16)
  {
    [(JavaLangStringBuilder *)v25 appendWithChar:43];
  }

  [(JavaLangStringBuilder *)v25 appendWithNSString:JavaLangLong_toStringWithLong_(v46)];
  v28 = v25;
LABEL_78:

  return [(JavaLangStringBuilder *)v28 description];
}

double JavaMathConversion_bigInteger2DoubleWithJavaMathBigInteger_(uint64_t a1)
{
  if (atomic_load_explicit(JavaMathConversion__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_30;
    }
  }

  else
  {
    sub_10019A278();
    if (!a1)
    {
      goto LABEL_30;
    }
  }

  v2 = *(a1 + 16);
  if (v2 < 2)
  {
    return [a1 longLongValue];
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      goto LABEL_30;
    }

    v4 = *(v3 + 8);
    if (v4 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v4, 1);
    }

    if (*(v3 + 16) >= 1)
    {
      return [a1 longLongValue];
    }

    v2 = *(a1 + 16);
  }

  if (v2 >= 33)
  {
    goto LABEL_11;
  }

  v8 = [a1 abs];
  if (!v8 || (v9 = [v8 bitLength], (v10 = objc_msgSend(a1, "abs")) == 0) || (v11 = v9 - 54, (v12 = objc_msgSend(v10, "shiftRightWithInt:", v9 - 54)) == 0))
  {
LABEL_30:
    JreThrowNullPointerException();
  }

  v13 = v9 - 1;
  v14 = [v12 longLongValue];
  v15 = v14 & 0x1FFFFFFFFFFFFFLL;
  if (v13 == 1023)
  {
    if (v15 == 0x1FFFFFFFFFFFFELL)
    {
      v6 = *(a1 + 20) <= 0;
      result = -1.79769313e308;
      v7 = 1.79769313e308;
LABEL_12:
      if (!v6)
      {
        return v7;
      }

      return result;
    }

    if (v15 == 0x1FFFFFFFFFFFFFLL)
    {
LABEL_11:
      v6 = *(a1 + 20) <= 0;
      result = -INFINITY;
      v7 = INFINITY;
      goto LABEL_12;
    }
  }

  if ((v14 & 1) != 0 && ((v14 & 2) != 0 || JavaMathBitLevel_nonZeroDroppedBitsWithInt_withIntArray_(v11, *(a1 + 8))))
  {
    v15 += 2;
  }

  v16 = ((v13 << 52) + 0x3FF0000000000000) & 0x7FF0000000000000 | ((*(a1 + 20) & 0x80000000) >> 31 << 63) | (v15 >> 1);

  return JavaLangDouble_longBitsToDoubleWithLong_(v16);
}

JavaUtilFormatterClosedException *new_JavaUtilFormatterClosedException_init()
{
  v0 = [JavaUtilFormatterClosedException alloc];
  JavaLangIllegalStateException_init(v0, v1);
  return v0;
}

uint64_t JavaIoSerializable_class_()
{
  if (qword_100555040 != -1)
  {
    sub_1002075C4();
  }

  return qword_100555038;
}

uint64_t LibcoreUtilObjects_equalWithId_withId_(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (result)
  {
    return [result isEqual:a2];
  }

  return result;
}

NSString *LibcoreUtilObjects_toStringWithId_(void *a1)
{
  if (!a1 || (v2 = [a1 getClass], v3 = new_JavaLangStringBuilder_init(), (v4 = -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", objc_msgSend(v2, "getSimpleName"))) == 0) || (objc_msgSend(v4, "appendWithChar:", 91), (v5 = objc_msgSend(v2, "getDeclaredFields")) == 0))
  {
LABEL_53:
    JreThrowNullPointerException();
  }

  v6 = (v5 + 24);
  v7 = &v5[8 * *(v5 + 2) + 24];
  if ((v5 + 24) < v7)
  {
    v8 = 0;
    do
    {
      v10 = *v6++;
      v9 = v10;
      if (!v10)
      {
        goto LABEL_53;
      }

      if (([v9 getModifiers] & 0x88) == 0)
      {
        [v9 setAccessibleWithBoolean:1];
        v11 = [v9 getWithId:a1];
        if (v8 >= 1)
        {
          [(JavaLangStringBuilder *)v3 appendWithChar:44];
        }

        -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", [v9 getName]);
        [(JavaLangStringBuilder *)v3 appendWithChar:61];
        if (!v11)
        {
LABEL_54:
          JreThrowNullPointerException();
        }

        ++v8;
        if ([objc_msgSend(v11 "getClass")])
        {
          v12 = [v11 getClass];
          if (v12 == IOSClass_arrayType(+[IOSClass BOOLeanClass], 1u))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_55;
            }

            v20 = JavaUtilArrays_toStringWithBooleanArray_(v11);
          }

          else
          {
            v13 = [v11 getClass];
            if (v13 == IOSClass_arrayType(+[IOSClass byteClass], 1u))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_55;
              }

              v20 = JavaUtilArrays_toStringWithByteArray_(v11);
            }

            else
            {
              v14 = [v11 getClass];
              if (v14 == IOSClass_arrayType(+[IOSClass charClass], 1u))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_55;
                }

                v20 = JavaUtilArrays_toStringWithCharArray_(v11);
              }

              else
              {
                v15 = [v11 getClass];
                if (v15 == IOSClass_arrayType(+[IOSClass doubleClass], 1u))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_55;
                  }

                  v20 = JavaUtilArrays_toStringWithDoubleArray_(v11);
                }

                else
                {
                  v16 = [v11 getClass];
                  if (v16 == IOSClass_arrayType(+[IOSClass floatClass], 1u))
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      goto LABEL_55;
                    }

                    v20 = JavaUtilArrays_toStringWithFloatArray_(v11);
                  }

                  else
                  {
                    v17 = [v11 getClass];
                    if (v17 == IOSClass_arrayType(+[IOSClass intClass], 1u))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        goto LABEL_55;
                      }

                      v20 = JavaUtilArrays_toStringWithIntArray_(v11);
                    }

                    else
                    {
                      v18 = [v11 getClass];
                      if (v18 == IOSClass_arrayType(+[IOSClass longClass], 1u))
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          goto LABEL_55;
                        }

                        v20 = JavaUtilArrays_toStringWithLongArray_(v11);
                      }

                      else
                      {
                        v19 = [v11 getClass];
                        if (v19 == IOSClass_arrayType(+[IOSClass shortClass], 1u))
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
LABEL_55:
                            JreThrowClassCastException();
                          }

                          v20 = JavaUtilArrays_toStringWithShortArray_(v11);
                        }

                        else
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            goto LABEL_55;
                          }

                          v20 = JavaUtilArrays_toStringWithNSObjectArray_(v11);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          [(JavaLangStringBuilder *)v3 appendWithNSString:v20];
          continue;
        }

        v21 = [v11 getClass];
        if (v21 == JavaLangCharacter_class_())
        {
          v23 = [(JavaLangStringBuilder *)v3 appendWithChar:39];
          if (!v23)
          {
            goto LABEL_54;
          }

          v24 = [v23 appendWithId:v11];
          if (!v24)
          {
            goto LABEL_54;
          }

          v25 = 39;
          goto LABEL_33;
        }

        v22 = [v11 getClass];
        if (v22 == NSString_class_())
        {
          v26 = [(JavaLangStringBuilder *)v3 appendWithChar:34];
          if (!v26)
          {
            goto LABEL_54;
          }

          v24 = [v26 appendWithId:v11];
          if (!v24)
          {
            goto LABEL_54;
          }

          v25 = 34;
LABEL_33:
          [v24 appendWithChar:v25];
          continue;
        }

        [(JavaLangStringBuilder *)v3 appendWithId:v11];
      }
    }

    while (v6 < v7);
  }

  [(JavaLangStringBuilder *)v3 appendWithNSString:@"]"];

  return [(JavaLangStringBuilder *)v3 description];
}

void sub_100207AEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = new_JavaLangAssertionError_initWithId_(v2);
    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t JavaUtilNavigableMap_class_()
{
  if (qword_100555050 != -1)
  {
    sub_100207B9C();
  }

  return qword_100555048;
}

id JavaUtilDate_initWithInt_withInt_withInt_(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = new_JavaUtilGregorianCalendar_initWithBoolean_();
  [(JavaUtilCalendar *)v8 setWithInt:(a2 + 1900) withInt:a3 withInt:a4];
  result = [(JavaUtilCalendar *)v8 getTimeInMillis];
  *(a1 + 8) = result;
  return result;
}

id JavaUtilDate_initWithInt_withInt_withInt_withInt_withInt_(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = new_JavaUtilGregorianCalendar_initWithBoolean_();
  [(JavaUtilCalendar *)v12 setWithInt:(a2 + 1900) withInt:a3 withInt:a4 withInt:a5 withInt:a6];
  result = [(JavaUtilCalendar *)v12 getTimeInMillis];
  *(a1 + 8) = result;
  return result;
}

id JavaUtilDate_initWithInt_withInt_withInt_withInt_withInt_withInt_(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = new_JavaUtilGregorianCalendar_initWithBoolean_();
  [(JavaUtilCalendar *)v14 setWithInt:(a2 + 1900) withInt:a3 withInt:a4 withInt:a5 withInt:a6 withInt:a7];
  result = [(JavaUtilCalendar *)v14 getTimeInMillis];
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002081D0(void *a1, uint64_t a2)
{
  if (atomic_load_explicit(&JavaUtilDate__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_10020A090();
    if (!a2)
    {
LABEL_14:
      JreThrowNullPointerException();
    }
  }

  if (!a1)
  {
    goto LABEL_14;
  }

  v4 = *(a2 + 8);
  v5 = [a1 length];
  if (v4 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    v8 = *(a2 + 8);
    if (v7 >= v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, v7);
    }

    if ([a1 regionMatches:1 thisOffset:0 aString:*(a2 + 24 + 8 * v7) otherOffset:0 count:v6])
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

void sub_1002082D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(&JavaUtilDate__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v8 = JreStrcat("$$", a2, a3, a4, a5, a6, a7, a8, @"Parse error: ");
  v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
  objc_exception_throw(v9);
}

int64_t JavaUtilDate_parseWithNSString_(void *a1)
{
  if ((atomic_load_explicit(&JavaUtilDate__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10020A090();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_157:
    v66 = new_JavaLangIllegalArgumentException_initWithNSString_(@"The string argument is null");
    objc_exception_throw(v66);
  }

  if (!a1)
  {
    goto LABEL_157;
  }

LABEL_3:
  v75 = a1;
  v2 = [a1 length];
  v77 = new_JavaLangStringBuilder_init();
  if (v2 < 0)
  {
    goto LABEL_158;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v72 = 0;
  v73 = -1;
  v74 = -1;
  v70 = 0;
  v71 = -1;
  v67 = -1;
  v68 = -1;
  v69 = -1;
  do
  {
    if (v12 >= v2)
    {
      v14 = 13;
    }

    else
    {
      v14 = [v75 charAtWithInt:v12];
      if (v14 == 40)
      {
        ++v11;
      }
    }

    v15 = (v12 + 1);
    if (v11 >= 1)
    {
      v11 -= v14 == 41;
      if (v11)
      {
        goto LABEL_124;
      }

      v14 = 32;
      v19 = 32;
LABEL_19:
      if ((JavaLangCharacter_isSpaceWithChar_(v14) & 1) == 0 && [@" +-:{"indexOf:", v19}/"] == -1)
      {
        goto LABEL_158;
      }

      v16 = 0;
      v17 = 0;
      goto LABEL_22;
    }

    if (((v14 & 0xFFDF) - 65) >= 0x1Au)
    {
      if ((v14 - 48) < 0xAu)
      {
        if (v13 != 1)
        {
          isSpaceWithChar = JavaLangCharacter_isSpaceWithChar_(v14);
          v16 = 0;
          v17 = 2;
          v29 = v10;
LABEL_116:
          LOBYTE(v18) = 1;
          v52 = v29;
          goto LABEL_118;
        }

        v18 = 1;
        v76 = 2;
        goto LABEL_41;
      }

      v19 = v14;
      goto LABEL_19;
    }

    v16 = 1;
    v17 = 1;
LABEL_22:
    if (v13 != 1)
    {
      if (v13 == 2)
      {
        v76 = v17;
        v20 = [(JavaLangStringBuilder *)v77 description];
        v28 = JavaLangInteger_parseIntWithNSString_(v20, v21, v22, v23, v24, v25, v26, v27);
        [(JavaLangAbstractStringBuilder *)v77 setLengthWithInt:0];
        v29 = v10;
        if (v10 == 45 || v10 == 43)
        {
          if (HIDWORD(v72))
          {
            goto LABEL_158;
          }

          if (v14 == 58)
          {
            v30 = (v12 + 3);
            v31 = [v75 substring:v15 endIndex:v30];
            v39 = JavaLangInteger_parseIntWithNSString_(v31, v32, v33, v34, v35, v36, v37, v38);
            LOWORD(v29) = v10;
            if (v10 == 45)
            {
              v40 = -v39;
            }

            else
            {
              v40 = v39;
            }

            v70 = v40;
            v15 = v30;
          }

          v18 = 0;
          if (v29 == 45)
          {
            v41 = -v28;
          }

          else
          {
            v41 = v28;
          }

          LOBYTE(v72) = 1;
          HIDWORD(v72) = v41;
          v29 = 0;
          goto LABEL_105;
        }

        if (v28 >= 70)
        {
          if (v74 != -1 || (JavaLangCharacter_isSpaceWithChar_(v14) & 1) == 0 && (v14 > 0x2Fu || ((1 << v14) & 0x900000002000) == 0))
          {
            goto LABEL_158;
          }

LABEL_58:
          v18 = 0;
          v74 = v28;
          goto LABEL_105;
        }

        if (v14 == 47)
        {
          if (v71 == -1)
          {
            v71 = v28 - 1;
          }

          else
          {
            v50 = v68 == -1;
            v68 = v28;
            if (!v50)
            {
              goto LABEL_158;
            }
          }
        }

        else
        {
          if (v14 != 58)
          {
            if ((JavaLangCharacter_isSpaceWithChar_(v14) & 1) != 0 || v14 <= 0x2Du && ((1 << v14) & 0x300000002000) != 0)
            {
              if (v73 != -1 && v69 == -1)
              {
                v18 = 0;
                v69 = v28;
                goto LABEL_105;
              }

              if (v69 != -1 && v67 == -1)
              {
                v18 = 0;
                v67 = v28;
                goto LABEL_105;
              }

              if (v68 == -1)
              {
                v18 = 0;
                v68 = v28;
                goto LABEL_105;
              }

              if (v74 != -1)
              {
                goto LABEL_158;
              }
            }

            else if (v74 != -1 || v71 == -1 || v68 == -1)
            {
              goto LABEL_158;
            }

            goto LABEL_58;
          }

          if (v73 == -1)
          {
            v73 = v28;
          }

          else
          {
            v50 = v69 == -1;
            v69 = v28;
            if (!v50)
            {
              goto LABEL_158;
            }
          }
        }

        isSpaceWithChar = JavaLangCharacter_isSpaceWithChar_(v14);
        LOBYTE(v18) = 0;
        v52 = 0;
        v17 = v76;
        goto LABEL_118;
      }

      v18 = 0;
LABEL_39:
      v29 = v10;
      goto LABEL_106;
    }

    v18 = 0;
    if (v16)
    {
      v16 = 1;
      goto LABEL_39;
    }

    v76 = v17;
LABEL_41:
    v29 = v10;
    v42 = [(JavaLangStringBuilder *)v77 description];
    if (!v42)
    {
      goto LABEL_155;
    }

    v43 = v42;
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000458CC();
    }

    v44 = [(NSString *)v43 uppercaseStringWithJRELocale:JavaUtilLocale_US_];
    [(JavaLangAbstractStringBuilder *)v77 setLengthWithInt:0];
    if (!v44)
    {
LABEL_155:
      JreThrowNullPointerException();
    }

    if ([v44 length] == 1)
    {
      goto LABEL_158;
    }

    if ([v44 isEqual:@"AM"])
    {
      if (v73 == 12)
      {
        v16 = 0;
        v73 = 0;
LABEL_105:
        v17 = v76;
        goto LABEL_106;
      }

      v17 = v76;
      if (v73 - 13 <= 0xFFFFFFF3)
      {
        goto LABEL_158;
      }

      v16 = 0;
    }

    else
    {
      if (![v44 isEqual:@"PM"])
      {
        if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000458CC();
        }

        v47 = new_JavaTextDateFormatSymbols_initWithJavaUtilLocale_(JavaUtilLocale_US_);
        v48 = [(JavaTextDateFormatSymbols *)v47 getWeekdays];
        v49 = [(JavaTextDateFormatSymbols *)v47 getMonths];
        if (sub_1002081D0(v44, v48) == -1)
        {
          if (v71 != -1 || (v51 = sub_1002081D0(v44, v49), v51 == -1))
          {
            if ([v44 isEqual:@"GMT"] & 1) != 0 || (objc_msgSend(v44, "isEqual:", @"UT") & 1) != 0 || (objc_msgSend(v44, "isEqual:", @"UTC"))
            {
              v16 = 0;
              HIDWORD(v72) = 0;
            }

            else
            {
              HIDWORD(v72) = sub_100209200(v44);
              if (!HIDWORD(v72))
              {
                goto LABEL_158;
              }

              v16 = 0;
            }

            LOBYTE(v72) = 1;
          }

          else
          {
            v16 = 0;
            v71 = v51;
          }
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_105;
      }

      v17 = v76;
      if (v73 == 12)
      {
        v45 = 0;
      }

      else
      {
        v45 = v73;
        if (v73 - 13 <= 0xFFFFFFF3)
        {
          goto LABEL_158;
        }
      }

      v16 = 0;
      v73 = v45 + 12;
    }

LABEL_106:
    if (v14 == 43)
    {
      v10 = 43;
      goto LABEL_121;
    }

    if (v14 == 45 && v74 != -1)
    {
      v14 = 45;
      v13 = v17;
      v10 = 45;
      if ((v18 & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_123;
    }

    v53 = v17;
    isSpaceWithChar = JavaLangCharacter_isSpaceWithChar_(v14);
    if (v14 == 44)
    {
      isSpaceWithChar = 1;
    }

    if (v18)
    {
      v17 = v53;
      goto LABEL_116;
    }

    v52 = 0;
    v17 = v53;
LABEL_118:
    if (isSpaceWithChar)
    {
      v10 = v29;
    }

    else
    {
      v10 = v52;
    }

LABEL_121:
    v13 = v17;
    if ((v18 & 1) == 0)
    {
LABEL_122:
      if (!v16)
      {
        goto LABEL_124;
      }
    }

LABEL_123:
    [(JavaLangStringBuilder *)v77 appendWithChar:v14];
LABEL_124:
    v12 = v15;
  }

  while (v15 <= v2);
  if (v74 == -1 || v71 == -1 || v68 == -1)
  {
LABEL_158:
    sub_1002082D0(v75, v3, v4, v5, v6, v7, v8, v9);
  }

  if (v73 == -1)
  {
    v54 = 0;
  }

  else
  {
    v54 = v73;
  }

  if (v69 == -1)
  {
    v55 = 0;
  }

  else
  {
    v55 = v69;
  }

  if (v67 == -1)
  {
    v56 = 0;
  }

  else
  {
    v56 = v67;
  }

  v57 = v74 + 1900;
  if (v74 >= 100)
  {
    v57 = v74;
  }

  if (v74 >= dword_100555058 - 80)
  {
    v58 = v57;
  }

  else
  {
    v58 = v74 + 2000;
  }

  v59 = (v55 - v70);
  if (v72)
  {
    if ((HIDWORD(v72) - 24) <= 0xFFFFFFD0)
    {
      v60 = (v59 + 100 * (SHIDWORD(v72) / 100) - HIDWORD(v72));
    }

    else
    {
      v60 = v59;
    }

    if ((HIDWORD(v72) - 24) <= 0xFFFFFFD0)
    {
      v61 = (v54 + SHIDWORD(v72) / -100);
    }

    else
    {
      v61 = (v54 - HIDWORD(v72));
    }

    return JavaUtilDate_UTCWithInt_withInt_withInt_withInt_withInt_withInt_(v58 - 1900, v71, v68, v61, v60, v56);
  }

  else
  {
    v63 = v58 - 1900;
    v64 = [JavaUtilDate alloc];
    JavaUtilDate_initWithInt_withInt_withInt_withInt_withInt_withInt_(v64, v63, v71, v68, v54, v59, v56);
    v65 = v64;

    return [(JavaUtilDate *)v65 getTime];
  }
}

id sub_100209098(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&JavaUtilDate__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10020A090();
  }

  if (a2 <= 9)
  {
    if (a1)
    {
      [a1 appendWithChar:48];
      goto LABEL_7;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_7:

  return [a1 appendWithInt:a2];
}

int64_t JavaUtilDate_UTCWithInt_withInt_withInt_withInt_withInt_withInt_(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((atomic_load_explicit(&JavaUtilDate__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10020A090();
  }

  v12 = new_JavaUtilGregorianCalendar_initWithBoolean_();
  [(JavaUtilCalendar *)v12 setTimeZoneWithJavaUtilTimeZone:JavaUtilTimeZone_getTimeZoneWithNSString_(@"GMT")];
  [(JavaUtilCalendar *)v12 setWithInt:(a1 + 1900) withInt:a2 withInt:a3 withInt:a4 withInt:a5 withInt:a6];

  return [(JavaUtilCalendar *)v12 getTimeInMillis];
}

uint64_t sub_100209200(void *a1)
{
  if (atomic_load_explicit(&JavaUtilDate__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_19:
    JreThrowNullPointerException();
  }

  sub_10020A090();
  if (!a1)
  {
    goto LABEL_19;
  }

LABEL_3:
  if ([a1 isEqual:@"EST"])
  {
    return 4294967291;
  }

  if ([a1 isEqual:@"EDT"])
  {
    return 4294967292;
  }

  if ([a1 isEqual:@"CST"])
  {
    return 4294967290;
  }

  if ([a1 isEqual:@"CDT"])
  {
    return 4294967291;
  }

  if ([a1 isEqual:@"MST"])
  {
    return 4294967289;
  }

  if ([a1 isEqual:@"MDT"])
  {
    return 4294967290;
  }

  if ([a1 isEqual:@"PST"])
  {
    return 4294967288;
  }

  if ([a1 isEqual:@"PDT"])
  {
    return 4294967289;
  }

  return 0;
}

JavaUtilDate *new_JavaUtilDate_init()
{
  v0 = [JavaUtilDate alloc];
  v0->milliseconds_ = JavaLangSystem_currentTimeMillis();
  return v0;
}

JavaUtilDate *new_JavaUtilDate_initWithLong_(int64_t a1)
{
  result = [JavaUtilDate alloc];
  result->milliseconds_ = a1;
  return result;
}

uint64_t JavaUtilDate_class_()
{
  if ((atomic_load_explicit(&JavaUtilDate__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10020A090();
  }

  if (qword_100555068 != -1)
  {
    sub_10020A09C();
  }

  return qword_100555060;
}

uint64_t JavaUtilCollection_class_()
{
  if (qword_100555078 != -1)
  {
    sub_10020A11C();
  }

  return qword_100555070;
}

uint64_t JavaUtilIterator_class_()
{
  if (qword_100555088 != -1)
  {
    sub_10020A19C();
  }

  return qword_100555080;
}

id LibcoreReflectTypes_getTypeArray_clone_(void *a1, int a2)
{
  if (atomic_load_explicit(LibcoreReflectTypes__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_10020B140();
    if (!a1)
    {
      goto LABEL_14;
    }
  }

  if ([a1 length])
  {
    result = [a1 getResolvedTypes];
    if (!a2)
    {
      return result;
    }

    if (result)
    {

      return [result clone];
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BBB54();
  }

  return LibcoreUtilEmptyArray_TYPE_;
}

id LibcoreReflectTypes_getType_(void *a1)
{
  if ((atomic_load_explicit(LibcoreReflectTypes__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10020B140();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a1;
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

  return [a1 getResolvedType];
}

const __CFString *LibcoreReflectTypes_getSignature_(void *a1)
{
  if ((atomic_load_explicit(LibcoreReflectTypes__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10020B140();
  }

  if (!qword_100555090)
  {
    goto LABEL_10;
  }

  result = [qword_100555090 getWithId:a1];
  if (result)
  {
    return result;
  }

  if (!a1)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  if ([a1 isArray])
  {
    LibcoreReflectTypes_getSignature_([a1 getComponentType]);
    return JreStrcat("C$", v3, v4, v5, v6, v7, v8, v9, 91);
  }

  else
  {
    [a1 getName];
    return JreStrcat("C$C", v10, v11, v12, v13, v14, v15, v16, 76);
  }
}

const __CFString *LibcoreReflectTypes_toString_(uint64_t a1)
{
  if (atomic_load_explicit(LibcoreReflectTypes__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  sub_10020B140();
  if (!a1)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (!*(a1 + 8))
  {
    return &stru_100484358;
  }

  v2 = new_JavaLangStringBuilder_init();
  v3 = *(a1 + 8);
  if (v3 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, 0);
  }

  LibcoreReflectTypes_appendTypeName_class_(v2, *(a1 + 24));
  if (*(a1 + 8) > 1)
  {
    v4 = 1;
    do
    {
      [(JavaLangStringBuilder *)v2 appendWithChar:44];
      v5 = *(a1 + 8);
      if (v4 >= v5)
      {
        IOSArray_throwOutOfBoundsWithMsg(v5, v4);
      }

      LibcoreReflectTypes_appendTypeName_class_(v2, *(a1 + 24 + 8 * v4++));
    }

    while (v4 < *(a1 + 8));
  }

  return [(JavaLangStringBuilder *)v2 description];
}

id LibcoreReflectTypes_appendTypeName_class_(void *a1, void *a2)
{
  v2 = a2;
  if (atomic_load_explicit(LibcoreReflectTypes__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_10020B140();
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  while ([v2 isArray])
  {
    v2 = [v2 getComponentType];
    ++v4;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  if (!a1)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  result = [a1 appendWithNSString:{objc_msgSend(v2, "getName")}];
  if (v4 >= 1)
  {
    do
    {
      result = [a1 appendWithNSString:@"[]"];
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t LibcoreReflectTypes_appendArrayGenericType_types_(void *a1, uint64_t a2)
{
  if (atomic_load_explicit(LibcoreReflectTypes__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_10020B140();
    if (!a2)
    {
      goto LABEL_14;
    }
  }

  result = *(a2 + 8);
  if (result)
  {
    if (result < 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, 0);
    }

    result = LibcoreReflectTypes_appendGenericType_type_(a1, *(a2 + 24));
    if (*(a2 + 8) > 1)
    {
      if (a1)
      {
        v5 = a2 + 8;
        v6 = 1;
        do
        {
          [a1 appendWithChar:44];
          v7 = *(a2 + 8);
          if (v6 >= v7)
          {
            IOSArray_throwOutOfBoundsWithMsg(v7, v6);
          }

          result = LibcoreReflectTypes_appendGenericType_type_(a1, *(v5 + 24));
          ++v6;
          v5 += 8;
        }

        while (v6 < *(a2 + 8));
        return result;
      }

LABEL_14:
      JreThrowNullPointerException();
    }
  }

  return result;
}

uint64_t LibcoreReflectTypes_appendGenericType_type_(void *a1, void *a2)
{
  if ((atomic_load_explicit(LibcoreReflectTypes__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10020B140();
  }

  if (![JavaLangReflectTypeVariable_class_() isInstance:a2])
  {
    if ([JavaLangReflectParameterizedType_class_() isInstance:a2])
    {
      if (a1 && a2)
      {
        v5 = [a2 description];
        goto LABEL_12;
      }

      goto LABEL_82;
    }

    if ([JavaLangReflectGenericArrayType_class_() isInstance:a2])
    {
      v8 = JavaLangReflectGenericArrayType_class_();
      if (!a2)
      {
        goto LABEL_82;
      }

      if ([v8 isInstance:a2])
      {
        LibcoreReflectTypes_appendGenericType_type_(a1, [a2 getGenericComponentType]);
        if (a1)
        {
          v6 = @"[]";
          goto LABEL_13;
        }

        goto LABEL_82;
      }

LABEL_77:
      JreThrowClassCastException();
    }

    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if ((result & 1) == 0)
    {
      return result;
    }

    objc_opt_class();
    if (!a2)
    {
      goto LABEL_82;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_77;
    }

    if (![a2 isArray])
    {
      if (a1)
      {
        goto LABEL_7;
      }

LABEL_82:
      JreThrowNullPointerException();
    }

    v9 = [a2 getName];
    if (!v9)
    {
      goto LABEL_82;
    }

    v10 = [v9 split:@"\\["];
    if (!v10)
    {
      goto LABEL_82;
    }

    v11 = v10;
    v12 = v10[2];
    v13 = (v12 - 1);
    if (v12 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, (v12 - 1));
    }

    v14 = *&v11[2 * v13 + 6];
    if (!v14)
    {
      goto LABEL_82;
    }

    if ([v14 length] >= 2)
    {
      if (!a1)
      {
        goto LABEL_82;
      }

      v18 = v11[2];
      if ((v13 & 0x80000000) != 0 || v13 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v13);
      }

      v19 = *&v11[2 * v13 + 6];
      if (!v19)
      {
        goto LABEL_82;
      }

      v20 = v11[2];
      if ((v13 & 0x80000000) != 0 || v13 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v13);
      }

      result = sub_10020B14C(v19, v19, a1);
      goto LABEL_66;
    }

    v15 = v11[2];
    if ((v13 & 0x80000000) != 0 || v13 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v13);
    }

    v16 = *&v11[2 * v13 + 6];
    if (!v16)
    {
      goto LABEL_82;
    }

    result = [v16 charAtWithInt:0];
    if (result <= 72)
    {
      if (result > 67)
      {
        if (result == 68)
        {
          if (!a1)
          {
            goto LABEL_82;
          }

          v17 = @"double";
        }

        else
        {
          if (result != 70)
          {
            goto LABEL_66;
          }

          if (!a1)
          {
            goto LABEL_82;
          }

          v17 = @"float";
        }
      }

      else if (result == 66)
      {
        if (!a1)
        {
          goto LABEL_82;
        }

        v17 = @"byte";
      }

      else
      {
        if (result != 67)
        {
          goto LABEL_66;
        }

        if (!a1)
        {
          goto LABEL_82;
        }

        v17 = @"char";
      }
    }

    else if (result <= 82)
    {
      if (result == 73)
      {
        if (!a1)
        {
          goto LABEL_82;
        }

        v17 = @"int";
      }

      else
      {
        if (result != 74)
        {
          goto LABEL_66;
        }

        if (!a1)
        {
          goto LABEL_82;
        }

        v17 = @"long";
      }
    }

    else
    {
      switch(result)
      {
        case 'S':
          if (!a1)
          {
            goto LABEL_82;
          }

          v17 = @"short";
          break;
        case 'V':
          if (!a1)
          {
            goto LABEL_82;
          }

          v17 = @"void";
          break;
        case 'Z':
          if (!a1)
          {
            goto LABEL_82;
          }

          v17 = @"BOOLean";
          break;
        default:
          goto LABEL_66;
      }
    }

    result = [a1 appendWithNSString:v17];
LABEL_66:
    if (v13 < 1)
    {
      return result;
    }

    if (a1)
    {
      do
      {
        result = [a1 appendWithNSString:@"[]"];
        LODWORD(v13) = v13 - 1;
      }

      while (v13);
      return result;
    }

    goto LABEL_82;
  }

  if (!a1)
  {
    goto LABEL_82;
  }

  v4 = JavaLangReflectTypeVariable_class_();
  if (!a2)
  {
    goto LABEL_82;
  }

  if (([v4 isInstance:a2] & 1) == 0)
  {
    goto LABEL_77;
  }

LABEL_7:
  v5 = [a2 getName];
LABEL_12:
  v6 = v5;
LABEL_13:

  return [a1 appendWithNSString:v6];
}

id sub_10020B14C(void *a1, void *a2, void *a3)
{
  v4 = [a2 substring:1 endIndex:{objc_msgSend(a1, "length") - 1}];

  return [a3 appendWithNSString:v4];
}

JavaUtilInvalidPropertiesFormatException *new_JavaUtilInvalidPropertiesFormatException_initWithJavaLangThrowable_(uint64_t a1)
{
  v2 = [JavaUtilInvalidPropertiesFormatException alloc];
  JavaIoIOException_init(v2, v3);
  [(JavaLangThrowable *)v2 initCauseWithJavaLangThrowable:a1];
  return v2;
}

JavaLangNullPointerException *new_JavaLangNullPointerException_init()
{
  v0 = [JavaLangNullPointerException alloc];
  JavaLangRuntimeException_init(v0, v1);
  return v0;
}

JavaLangNullPointerException *new_JavaLangNullPointerException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangNullPointerException alloc];
  JavaLangRuntimeException_initWithNSString_(v2, a1);
  return v2;
}

JavaNioByteArrayBuffer *JavaNioByteBuffer_allocateWithInt_(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0x80000000) != 0)
  {
    v10 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"capacity < 0: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  v8 = new_JavaNioByteArrayBuffer_initWithByteArray_([IOSByteArray arrayWithLength:a1]);

  return v8;
}

JavaNioDirectByteBuffer *JavaNioByteBuffer_allocateDirectWithInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0x80000000) != 0)
  {
    v12 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"capacity < 0: ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  v9 = JavaNioMemoryBlock_allocateWithInt_(a1);
  v10 = new_JavaNioDirectByteBuffer_initWithJavaNioMemoryBlock_withInt_withInt_withBoolean_withJavaNioChannelsFileChannel_MapMode_(v9, a1, 0, 0, 0);

  return v10;
}

JavaNioByteArrayBuffer *JavaNioByteBuffer_wrapWithByteArray_(unsigned int *a1)
{
  v1 = new_JavaNioByteArrayBuffer_initWithByteArray_(a1);

  return v1;
}

JavaNioByteArrayBuffer *JavaNioByteBuffer_wrapWithByteArray_withInt_withInt_(unsigned int *a1, int a2, int a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(a1[2], a2, a3);
  result = new_JavaNioByteArrayBuffer_initWithByteArray_(a1);
  result->super.super.position_ = a2;
  result->super.super.limit_ = a3 + a2;
  return result;
}

id JavaNioByteBuffer_initWithInt_withLong_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  JavaNioBuffer_initWithInt_withInt_withLong_(a1, 0, a2, a3, a5, a6, a7, a8);
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  v9 = JavaNioByteOrder_BIG_ENDIAN__;

  return JreStrongAssign((a1 + 40), v9);
}

uint64_t JavaNioByteBuffer_class_()
{
  if (qword_1005550A0 != -1)
  {
    sub_10020C28C();
  }

  return qword_100555098;
}

JavaNioByteBufferAsCharBuffer *JavaNioByteBufferAsCharBuffer_asCharBufferWithJavaNioByteBuffer_(void *a1)
{
  if (!a1 || (v2 = [a1 slice]) == 0)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  [v2 orderWithJavaNioByteOrder:{objc_msgSend(a1, "order")}];
  v4 = [JavaNioByteBufferAsCharBuffer alloc];
  sub_10020C348(v4, v3);

  return v4;
}

id sub_10020C348(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 capacity];
  JavaNioCharBuffer_initWithInt_withLong_(a1, (v4 / 2), a2[4], v5, v6, v7, v8, v9);
  JreStrongAssign((a1 + 40), a2);
  v10 = *(a1 + 40);

  return [v10 clear];
}

id LibcoreReflectParameterizedTypeImpl_initWithLibcoreReflectParameterizedTypeImpl_withNSString_withLibcoreReflectListOfTypes_withJavaLangClassLoader_(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (!a4)
  {
    v10 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v10);
  }

  JreStrongAssign(a1 + 2, a2);
  JreStrongAssign(a1 + 5, a3);
  JreStrongAssign(a1 + 1, a4);

  return JreStrongAssign(a1 + 6, a5);
}

LibcoreReflectParameterizedTypeImpl *new_LibcoreReflectParameterizedTypeImpl_initWithLibcoreReflectParameterizedTypeImpl_withNSString_withLibcoreReflectListOfTypes_withJavaLangClassLoader_(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [LibcoreReflectParameterizedTypeImpl alloc];
  LibcoreReflectParameterizedTypeImpl_initWithLibcoreReflectParameterizedTypeImpl_withNSString_withLibcoreReflectListOfTypes_withJavaLangClassLoader_(&v8->super.isa, a1, a2, a3, a4);
  return v8;
}

JavaUtilZipCRC32 *new_JavaUtilZipCRC32_init()
{
  result = [JavaUtilZipCRC32 alloc];
  result->tbytes_ = 0;
  result->crc_ = 0;
  return result;
}

uint64_t JavaNioFileDescriptorChannel_class_()
{
  if (qword_1005550B0 != -1)
  {
    sub_10020D340();
  }

  return qword_1005550A8;
}

id JavaIoPrintWriter_initWithJavaIoOutputStream_(uint64_t a1, void *a2)
{
  v3 = new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_(a2);
  JavaIoWriter_initWithId_(a1, v3);
  *(a1 + 25) = 0;

  return JreStrongAssign((a1 + 16), v3);
}

id JavaIoPrintWriter_initWithJavaIoOutputStream_withBoolean_(uint64_t a1, void *a2, char a3)
{
  v5 = new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_(a2);
  JavaIoWriter_initWithId_(a1, v5);
  *(a1 + 25) = a3;

  return JreStrongAssign((a1 + 16), v5);
}

id JavaIoPrintWriter_initWithJavaIoFile_(uint64_t a1, void *a2)
{
  v3 = new_JavaIoFileOutputStream_initWithJavaIoFile_(a2);
  v4 = new_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_(v3);
  v5 = new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_(v4);
  JavaIoWriter_initWithId_(a1, v5);
  *(a1 + 25) = 0;

  return JreStrongAssign((a1 + 16), v5);
}

id JavaIoPrintWriter_initWithJavaIoFile_withNSString_(uint64_t a1, void *a2, __CFString *a3)
{
  v5 = new_JavaIoFileOutputStream_initWithJavaIoFile_(a2);
  v6 = new_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_(v5);
  v7 = new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(v6, a3);
  JavaIoWriter_initWithId_(a1, v7);
  *(a1 + 25) = 0;

  return JreStrongAssign((a1 + 16), v7);
}

id JavaIoPrintWriter_initWithNSString_(uint64_t a1, void *a2)
{
  v3 = new_JavaIoFileOutputStream_initWithNSString_(a2);
  v4 = new_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_(v3);
  v5 = new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_(v4);
  JavaIoWriter_initWithId_(a1, v5);
  *(a1 + 25) = 0;

  return JreStrongAssign((a1 + 16), v5);
}

id JavaIoPrintWriter_initWithNSString_withNSString_(uint64_t a1, void *a2, __CFString *a3)
{
  v5 = new_JavaIoFileOutputStream_initWithNSString_(a2);
  v6 = new_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_(v5);
  v7 = new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(v6, a3);
  JavaIoWriter_initWithId_(a1, v7);
  *(a1 + 25) = 0;

  return JreStrongAssign((a1 + 16), v7);
}

uint64_t sub_10020E128(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[1];
  objc_sync_enter(v8);
  v9 = a1[2];
  if (v9)
  {
    [v9 writeWithCharArray:a2 withInt:a3 withInt:a4];
  }

  else
  {
    [a1 setError];
  }

  return objc_sync_exit(v8);
}

JavaIoPrintWriter *new_JavaIoPrintWriter_initWithJavaIoWriter_(void *a1)
{
  v2 = [JavaIoPrintWriter alloc];
  JavaIoWriter_initWithId_(v2, a1);
  v2->autoFlush_ = 0;
  JreStrongAssign(&v2->out_, a1);
  return v2;
}

LibcoreReflectListOfVariables *new_LibcoreReflectListOfVariables_init()
{
  v0 = [LibcoreReflectListOfVariables alloc];
  v1 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&v0->array_, v1);
  return v0;
}

id JavaNioCharArrayBuffer_initWithCharArray_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaNioCharBuffer_initWithInt_withLong_(a1, a2[2], 0, a4, a5, a6, a7, a8);
  result = JreStrongAssign((a1 + 40), a2);
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  return result;
}

JavaNioCharArrayBuffer *sub_10020E728(uint64_t a1, int a2, BOOL a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_10020E950([a1 capacity], *(a1 + 40), *(a1 + 48), a3);
  v5->super.super.limit_ = *(a1 + 12);
  v5->super.super.position_ = [a1 position];
  v5->super.super.mark_ = a2;
  return v5;
}

JavaNioCharArrayBuffer *sub_10020E950(uint64_t a1, void *a2, int a3, BOOL a4)
{
  v8 = [JavaNioCharArrayBuffer alloc];
  JavaNioCharBuffer_initWithInt_withLong_(v8, a1, 0, v9, v10, v11, v12, v13);
  JreStrongAssign(&v8->backingArray_, a2);
  v8->arrayOffset_ = a3;
  v8->isReadOnly_ = a4;
  return v8;
}

JavaNioCharArrayBuffer *new_JavaNioCharArrayBuffer_initWithCharArray_(unsigned int *a1)
{
  v2 = [JavaNioCharArrayBuffer alloc];
  JavaNioCharArrayBuffer_initWithCharArray_(v2, a1, v3, v4, v5, v6, v7, v8);
  return v2;
}

void *AndroidUtilLruCache_initWithInt_(uint64_t a1, int a2)
{
  if (a2 <= 0)
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"maxSize <= 0");
    objc_exception_throw(v5);
  }

  *(a1 + 20) = a2;
  v3 = new_JavaUtilLinkedHashMap_initWithInt_withFloat_withBoolean_(0, 1, 0.75);

  return JreStrongAssignAndConsume((a1 + 8), v3);
}

id sub_10020F2A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = [a1 sizeOfWithId:a2 withId:a3];
  if ((result & 0x80000000) != 0)
  {
    v11 = JreStrcat("$@C@", v4, v5, v6, v7, v8, v9, v10, @"Negative size: ");
    v12 = new_JavaLangIllegalStateException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  return result;
}

AndroidUtilLruCache *new_AndroidUtilLruCache_initWithInt_(int a1)
{
  v2 = [AndroidUtilLruCache alloc];
  AndroidUtilLruCache_initWithInt_(v2, a1);
  return v2;
}

JavaNetDatagramPacket *new_JavaNetDatagramPacket_initWithByteArray_withInt_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaNetDatagramPacket alloc];
  *&v4->port_ = 0xFFFFFFFFLL;
  [(JavaNetDatagramPacket *)v4 setDataWithByteArray:a1 withInt:0 withInt:a2];
  return v4;
}

JavaNetDatagramPacket *new_JavaNetDatagramPacket_initWithByteArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [JavaNetDatagramPacket alloc];
  *&v6->port_ = 0xFFFFFFFFLL;
  [(JavaNetDatagramPacket *)v6 setDataWithByteArray:a1 withInt:a2 withInt:a3];
  return v6;
}

id sub_1002102C0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v11 = a2;
  JavaNioByteBuffer_initWithInt_withLong_(a1, a2, 0, a4, a5, a6, a7, a8);
  result = JreStrongAssign((a1 + 48), a3);
  *(a1 + 56) = v9;
  *(a1 + 60) = v8;
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (v9 + v11 > a3[2])
  {
    v23 = a3[2];
    v21 = JreStrcat("$I$I$I", v14, v15, v16, v17, v18, v19, v20, @"backingArray.length=");
    v22 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v21);
    objc_exception_throw(v22);
  }

  return result;
}

JavaNioByteArrayBuffer *sub_1002103AC(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v6 = [a1 capacity];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = [JavaNioByteArrayBuffer alloc];
  sub_1002102C0(v9, v6, v7, v8, a3, v10, v11, v12);
  v13 = v9;
  v13->super.super.limit_ = *(a1 + 12);
  v13->super.super.position_ = [a1 position];
  v13->super.super.mark_ = a2;
  return v13;
}

JavaNioByteArrayBuffer *new_JavaNioByteArrayBuffer_initWithByteArray_(unsigned int *a1)
{
  v2 = [JavaNioByteArrayBuffer alloc];
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v6 = v2;
  sub_1002102C0(v2, a1[2], a1, 0, 0, v3, v4, v5);
  return v6;
}

uint64_t JavaUtilSortedSet_class_()
{
  if (qword_1005550C0 != -1)
  {
    sub_100212304();
  }

  return qword_1005550B8;
}

JavaNetAddressCache *new_JavaNetAddressCache_init()
{
  v0 = [JavaNetAddressCache alloc];
  v1 = new_LibcoreUtilBasicLruCache_initWithInt_(16);
  JreStrongAssignAndConsume(&v0->cache_, v1);
  return v0;
}

void sub_100212654(uint64_t a1)
{
  objc_opt_class();
  v2 = sub_1000B60C8(a1);
  objc_exception_throw(v2);
}

JavaNetMalformedURLException *new_JavaNetMalformedURLException_init()
{
  v0 = [JavaNetMalformedURLException alloc];
  JavaIoIOException_init(v0, v1);
  return v0;
}

JavaNetMalformedURLException *new_JavaNetMalformedURLException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaNetMalformedURLException alloc];
  JavaIoIOException_initWithNSString_(v2, a1);
  return v2;
}

BOOL addHighPrecision(unint64_t *a1, int a2, unint64_t *a3, int a4)
{
  v4 = 0;
  if (a2 && a4)
  {
    v5 = 0;
    if (a2 >= a4)
    {
      LODWORD(v6) = a4;
    }

    else
    {
      LODWORD(v6) = a2;
    }

    if (v6 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v6;
    }

    v7 = v6;
    v8 = a1;
    do
    {
      v9 = *v8 + v5 + *a3;
      *v8++ = v9;
      v10 = *a3++;
      v11 = v10 >= v9;
      if (v10 != v9)
      {
        v5 = 1;
      }

      if (!v11)
      {
        v5 = 0;
      }

      --v7;
    }

    while (v7);
    if (v5)
    {
      if (v6 == a2)
      {
        return 1;
      }

      else
      {
        do
        {
          v12 = a1[v6];
          a1[v6] = v12 + 1;
          if (v12 != -1)
          {
            break;
          }

          LODWORD(v6) = v6 + 1;
        }

        while (v6 < a2);
        return v6 == a2;
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL subtractHighPrecision(unint64_t *a1, int a2, unint64_t *a3, int a4)
{
  v6 = a2;
  if (a2 >= 1)
  {
    v7 = a2;
    v8 = a1;
    do
    {
      *v8 = ~*v8;
      ++v8;
      --v7;
    }

    while (v7);
  }

  v9 = *a1 + 1;
  *a1 = v9;
  if (a2 != 1 && !v9)
  {
    if (a2 <= 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = a2;
    }

    v11 = v10 - 2;
    v12 = (a1 + 1);
    do
    {
      v13 = *v12 + 1;
      *v12++ = v13;
      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = v11 == 0;
      }

      --v11;
    }

    while (!v14);
  }

  if (a4 >= 1)
  {
    while (!a3[a4 - 1])
    {
      v15 = __OFSUB__(a4--, 1);
      if ((a4 < 0) ^ v15 | (a4 == 0))
      {
        a4 = 0;
        break;
      }
    }
  }

  result = addHighPrecision(a1, a2, a3, a4);
  if (a2 >= 1)
  {
    v17 = a1;
    do
    {
      *v17 = ~*v17;
      ++v17;
      --v6;
    }

    while (v6);
  }

  v18 = *a1 + 1;
  *a1 = v18;
  if (a2 != 1 && !v18)
  {
    if (a2 <= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2;
    }

    v20 = v19 - 2;
    v21 = (a1 + 1);
    do
    {
      v22 = *v21 + 1;
      *v21++ = v22;
      if (v22)
      {
        v23 = 1;
      }

      else
      {
        v23 = v20 == 0;
      }

      --v20;
    }

    while (!v23);
  }

  return result;
}

void multiplyHighPrecision(unsigned int *a1, int a2, unsigned int *a3, int a4, void *a5, int a6)
{
  if (a2 < a4)
  {
    v7 = a1;
  }

  else
  {
    v7 = a3;
  }

  if (a2 < a4)
  {
    v8 = a2;
  }

  else
  {
    v8 = a4;
  }

  if (a2 < a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a2;
  }

  if (a2 < a4)
  {
    v10 = a3;
  }

  else
  {
    v10 = a1;
  }

  bzero(a5, 8 * a6);
  if (v8 >= 1)
  {
    v11 = 0;
    v12 = 2 * v8;
    do
    {
      sub_100212C70(v10, v9, *v7, a5 + 4 * v11);
      sub_100212C70(v10, v9, v7[1], a5 + 4 * v11 + 4);
      v7 += 2;
      v11 += 2;
    }

    while (v12 != v11);
  }
}

uint64_t sub_100212C70(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = (result + 4);
  v8 = 2 * v6;
  do
  {
    v9 = v5 + *(a4 + 4 * v4) + *(v7 - 1) * a3;
    *(a4 + 4 * v4) = v9;
    v10 = *v7;
    v7 += 2;
    v11 = *(a4 + 4 * (v4 + 1)) + HIDWORD(v9) + v10 * a3;
    v5 = HIDWORD(v11);
    *(a4 + 4 * (v4 + 1)) = v11;
    v4 += 2;
  }

  while (v8 != v4);
  v12 = *(a4 + 4 * v4);
  *(a4 + 4 * v4) = v12 + HIDWORD(v11);
  if (__CFADD__(v12, HIDWORD(v11)))
  {
    v13 = v4 + 1;
    do
    {
      v14 = *(a4 + 4 * v13);
      *(a4 + 4 * v13++) = v14 + 1;
    }

    while (v14 == -1);
  }

  return result;
}

unint64_t simpleAppendDecimalDigitHighPrecision(unsigned int *a1, int a2, unsigned int a3)
{
  v3 = a3;
  if (a2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  do
  {
    v5 = v3 + 10 * *a1;
    v6 = HIDWORD(v5) + 10 * a1[1];
    v3 = HIDWORD(v6);
    *a1 = v5;
    a1[1] = v6;
    a1 += 2;
    --v4;
  }

  while (v4);
  return HIDWORD(v6);
}

void *simpleShiftLeftHighPrecision(void *result, unsigned int a2, int a3)
{
  if (a3 >= 64)
  {
    v3 = a2 - 1;
    for (i = a2 - 1 - (a3 >> 6); i >= 0; --i)
    {
      result[v3--] = result[i];
    }

    do
    {
      result[v3--] = 0;
    }

    while (v3 >= 0);
    a3 &= 0x3Fu;
  }

  if (a3)
  {
    v5 = a2 - 1;
    if (v5 >= 1)
    {
      v6 = a2 + 4294967294;
      v7 = v5 + 1;
      v8 = &result[v5];
      do
      {
        *v8 = (result[v6] >> (64 - a3)) | (*v8 << a3);
        --v8;
        --v6;
        --v7;
      }

      while (v7 > 1);
    }

    *result <<= a3;
  }

  return result;
}

uint64_t highestSetBit(void *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v1 = *(a1 + (HIDWORD(*a1) != 0));
  if (v1 >= 0x10000)
  {
    v2 = HIWORD(v1);
  }

  else
  {
    v2 = *(a1 + (HIDWORD(*a1) != 0));
  }

  if (v1 >= 0x10000)
  {
    v3 = (32 * (HIDWORD(*a1) != 0)) | 0x10;
  }

  else
  {
    v3 = 32 * (HIDWORD(*a1) != 0);
  }

  if (v2 < 0x100)
  {
    v4 = v3;
  }

  else
  {
    v2 >>= 8;
    v4 = v3 | 8;
  }

  v5 = (v2 & 0xF0) >> 4;
  if ((v2 & 0xF0) != 0)
  {
    v6 = v4 | 4;
  }

  else
  {
    v5 = v2;
    v6 = v4;
  }

  if (v5 >= 8)
  {
    return (v6 + 4);
  }

  if (v5 >= 4)
  {
    return (v6 + 3);
  }

  if (v5 < 2)
  {
    return (v6 + 1);
  }

  return (v6 + 2);
}

uint64_t lowestSetBit(void *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v1 = 32 * (*a1 == 0);
  if (*(a1 + (*a1 == 0)))
  {
    v2 = *(a1 + (*a1 == 0));
  }

  else
  {
    v2 = HIWORD(*(a1 + (*a1 == 0)));
  }

  if (!*(a1 + (*a1 == 0)))
  {
    v1 = (32 * (*a1 == 0)) | 0x10;
  }

  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v2 >>= 8;
    v3 = v1 | 8;
  }

  v4 = v2 >> 4;
  if ((v2 & 0xF) != 0)
  {
    LOBYTE(v4) = v2;
    v5 = v3;
  }

  else
  {
    v5 = v3 | 4;
  }

  if (v4)
  {
    return (v5 + 1);
  }

  if ((v4 & 2) != 0)
  {
    return (v5 + 2);
  }

  if ((v4 & 4) != 0)
  {
    return (v5 + 3);
  }

  return (v5 + 4);
}

uint64_t highestSetBitHighPrecision(uint64_t a1, int a2)
{
  v3 = a2;
  v4 = a2 << 6;
  while ((--v3 & 0x80000000) == 0)
  {
    v5 = highestSetBit((a1 + 8 * (v3 & 0x7FFFFFFF)));
    v4 -= 64;
    if (v5)
    {
      return (v5 + v4);
    }
  }

  return 0;
}

uint64_t lowestSetBitHighPrecision(void *a1, int a2)
{
  v2 = (a2 & ~(a2 >> 31)) + 1;
  v3 = 64;
  while (--v2)
  {
    v3 -= 64;
    v4 = a1 + 1;
    v5 = lowestSetBit(a1);
    a1 = v4;
    if (v5)
    {
      return (v5 - v3);
    }
  }

  return 0;
}

uint64_t compareHighPrecision(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = a2;
  if (a2 - 1 >= -1)
  {
    v5 = -1;
  }

  else
  {
    v5 = a2 - 1;
  }

  while ((--v4 & 0x80000000) == 0)
  {
    if (*(a1 + 8 * (v4 & 0x7FFFFFFF)))
    {
      v5 = v4;
      break;
    }
  }

  v6 = a4;
  v7 = a4 - 1;
  if (a4 - 1 >= -1)
  {
    v7 = -1;
  }

  while ((--v6 & 0x80000000) == 0)
  {
    if (*(a3 + 8 * (v6 & 0x7FFFFFFF)))
    {
      v7 = v6;
      break;
    }
  }

  if (v5 > v7)
  {
    return 1;
  }

  if (v5 >= v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  if ((v4 & 0x80000000) == 0 && v5 >= v7)
  {
    while (1)
    {
      v10 = *(a1 + 8 * v5);
      v11 = *(a3 + 8 * v5);
      if (v10 > v11)
      {
        break;
      }

      if (v10 < v11)
      {
        return 0xFFFFFFFFLL;
      }

      if (v5-- <= 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return v8;
}

void *toDoubleHighPrecision(void *result, int a2)
{
  v2 = a2;
  v3 = result;
  if (a2 < 1)
  {
    if (!a2)
    {
      return result;
    }

LABEL_12:
    v5 = v2 - 1;
    v6 = &result[v2 - 1];
    result = highestSetBit(v6);
    if (result > 53)
    {
      v9 = (*v6 << -result) & 0x7FF;
      if (v9 <= 0x400)
      {
        v10 = v9 != 1024 || ((*v6 >> (result - 53)) & 1) == 0;
        if (v10 && v9 == 1024)
        {
          do
          {
            --v5;
          }

          while (!v3[v5] && v5 > 0);
        }
      }
    }

    else
    {
      v7 = 53 - result;
      v8 = *v6;
      if (53 - result >= 1)
      {
        v8 = (v3[v2 - 2] >> (result + 11)) | (v8 << v7);
      }

      v11 = v3[v2 - 2] << v7;
      if (v11 <= 0x8000000000000000 && (v11 != 0x8000000000000000 || (v8 & 1) == 0) && v11 == 0x8000000000000000)
      {
        v13 = v2 - 3;
        do
        {
          if (v13 < 0)
          {
            break;
          }
        }

        while (!v3[v13-- & 0x7FFFFFFF]);
      }
    }

    return result;
  }

  while (!result[v2 - 1])
  {
    v4 = __OFSUB__(v2--, 1);
    if ((v2 < 0) ^ v4 | (v2 == 0))
    {
      return result;
    }
  }

  if (v2 <= 0x10)
  {
    if (v2 == 1)
    {
      result = highestSetBit(result);
      if (result > 53)
      {
        v12 = (*v3 >> (result - 53)) & 0xFFFFFFFFFFFFFLL | ((result + 1022) << 52);
      }

      return result;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t timesTenToTheEHighPrecision(unsigned int *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (a3 < 19)
    {
      v15 = a3;
    }

    else
    {
      do
      {
        v3 = 0;
        v4 = 0;
        v5 = 0;
        if (a2 <= 1)
        {
          v6 = 1;
        }

        else
        {
          v6 = a2;
        }

        v7 = a1;
        do
        {
          v8 = *v7;
          v9 = v4 | (v3 << 32);
          if (*v7 | v9)
          {
            v10 = 2328306436 * *v7;
            v11 = v5 + v10 + 2313682944 * HIDWORD(v8) + ((2313682944 * v8 + v9) >> 32);
            v12 = __PAIR128__(HIDWORD(v11), 2313682944u * v8) + __PAIR128__(2328306436u * HIDWORD(v8), v9);
            v5 = v11 < 2313682944u * HIDWORD(v8) || v11 < v10;
            *v7 = v12;
            v7[1] = v11;
            v4 = DWORD2(v12);
            v3 = HIDWORD(*(&v12 + 1));
          }

          v7 += 2;
          --v6;
        }

        while (v6);
        v14 = v4 | (v3 << 32);
        if (v14)
        {
          *&a1[2 * a2] = v14;
          a2 = (a2 + 1);
        }

        v15 = a3 - 19;
        v16 = a3 <= 37;
        a3 -= 19;
      }

      while (!v16);
    }

    if (v15 < 9)
    {
      v22 = v15;
    }

    else
    {
      do
      {
        v17 = 0;
        if (a2 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = a2;
        }

        v19 = a1 + 1;
        do
        {
          v20 = v17 + 1000000000 * *(v19 - 1);
          v21 = HIDWORD(v20) + 1000000000 * *v19;
          v17 = HIDWORD(v21);
          *(v19 - 1) = v20;
          *v19 = v21;
          v19 += 2;
          --v18;
        }

        while (v18);
        if (v17)
        {
          *&a1[2 * a2] = v17;
          a2 = (a2 + 1);
        }

        v22 = v15 - 9;
        v16 = v15 <= 17;
        v15 -= 9;
      }

      while (!v16);
    }

    if (v22 > 4)
    {
      if (v22 > 6)
      {
        if (v22 == 7)
        {
          v29 = 0;
          if (a2 <= 1)
          {
            v57 = 1;
          }

          else
          {
            v57 = a2;
          }

          v58 = a1 + 1;
          do
          {
            v59 = v29 + 10000000 * *(v58 - 1);
            v60 = HIDWORD(v59) + 10000000 * *v58;
            v29 = HIDWORD(v60);
            *(v58 - 1) = v59;
            *v58 = v60;
            v58 += 2;
            --v57;
          }

          while (v57);
        }

        else
        {
          if (v22 != 8)
          {
            return a2;
          }

          v29 = 0;
          if (a2 <= 1)
          {
            v41 = 1;
          }

          else
          {
            v41 = a2;
          }

          v42 = a1 + 1;
          do
          {
            v43 = v29 + 100000000 * *(v42 - 1);
            v44 = HIDWORD(v43) + 100000000 * *v42;
            v29 = HIDWORD(v44);
            *(v42 - 1) = v43;
            *v42 = v44;
            v42 += 2;
            --v41;
          }

          while (v41);
        }
      }

      else if (v22 == 5)
      {
        v29 = 0;
        if (a2 <= 1)
        {
          v49 = 1;
        }

        else
        {
          v49 = a2;
        }

        v50 = a1 + 1;
        do
        {
          v51 = v29 + 100000 * *(v50 - 1);
          v52 = HIDWORD(v51) + 100000 * *v50;
          v29 = HIDWORD(v52);
          *(v50 - 1) = v51;
          *v50 = v52;
          v50 += 2;
          --v49;
        }

        while (v49);
      }

      else
      {
        v29 = 0;
        if (a2 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = a2;
        }

        v34 = a1 + 1;
        do
        {
          v35 = v29 + 1000000 * *(v34 - 1);
          v36 = HIDWORD(v35) + 1000000 * *v34;
          v29 = HIDWORD(v36);
          *(v34 - 1) = v35;
          *v34 = v36;
          v34 += 2;
          --v33;
        }

        while (v33);
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        v29 = 0;
        if (a2 <= 1)
        {
          v53 = 1;
        }

        else
        {
          v53 = a2;
        }

        v54 = a1 + 1;
        do
        {
          v55 = v29 + 1000 * *(v54 - 1);
          v56 = HIDWORD(v55) + 1000 * *v54;
          v29 = HIDWORD(v56);
          *(v54 - 1) = v55;
          *v54 = v56;
          v54 += 2;
          --v53;
        }

        while (v53);
      }

      else
      {
        v29 = 0;
        if (a2 <= 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = a2;
        }

        v38 = a1 + 1;
        do
        {
          v39 = v29 + 10000 * *(v38 - 1);
          v40 = HIDWORD(v39) + 10000 * *v38;
          v29 = HIDWORD(v40);
          *(v38 - 1) = v39;
          *v38 = v40;
          v38 += 2;
          --v37;
        }

        while (v37);
      }
    }

    else if (v22 == 1)
    {
      v29 = 0;
      if (a2 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = a2;
      }

      v46 = a1;
      do
      {
        v47 = v29 + 10 * *v46;
        v48 = HIDWORD(v47) + 10 * v46[1];
        v29 = HIDWORD(v48);
        *v46 = v47;
        v46[1] = v48;
        v46 += 2;
        --v45;
      }

      while (v45);
    }

    else
    {
      if (v22 != 2)
      {
        return a2;
      }

      v23 = 0;
      if (a2 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = a2;
      }

      v25 = a1;
      v26 = v24;
      do
      {
        v27 = v23 + 10 * *v25;
        v28 = HIDWORD(v27) + 10 * v25[1];
        v23 = HIDWORD(v28);
        *v25 = v27;
        v25[1] = v28;
        v25 += 2;
        --v26;
      }

      while (v26);
      if (v23)
      {
        *&a1[2 * a2] = v23;
        if (a2 + 1 > 1)
        {
          v24 = (a2 + 1);
        }

        else
        {
          v24 = 1;
        }

        a2 = (a2 + 1);
      }

      v29 = 0;
      v30 = a1;
      do
      {
        v31 = v29 + 10 * *v30;
        v32 = HIDWORD(v31) + 10 * v30[1];
        v29 = HIDWORD(v32);
        *v30 = v31;
        v30[1] = v32;
        v30 += 2;
        --v24;
      }

      while (v24);
    }

    if (v29)
    {
      *&a1[2 * a2] = v29;
      return (a2 + 1);
    }
  }

  return a2;
}

uint64_t doubleMantissa(double a1)
{
  if ((*&a1 & 0x7FF0000000000000) != 0)
  {
    return *&a1 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    return *&a1 & 0xFFFFFFFFFFFFFLL;
  }
}

uint64_t doubleExponent(double a1)
{
  if (*&a1 >> 52)
  {
    return (*&a1 >> 52) - 1075;
  }

  else
  {
    return 4294966222;
  }
}

uint64_t floatMantissa(float a1)
{
  if ((LODWORD(a1) & 0x7F800000) != 0)
  {
    return LODWORD(a1) & 0x7FFFFF | 0x800000u;
  }

  else
  {
    return LODWORD(a1) & 0x7FFFFF;
  }
}

uint64_t floatExponent(float a1)
{
  if (LODWORD(a1) >= 0x800000)
  {
    return ((LODWORD(a1) >> 23) - 150);
  }

  else
  {
    return 4294967147;
  }
}

const __CFString *JavaLangReflectModifier_toStringWithInt_(__int16 a1)
{
  v2 = new_JavaLangStringBuilder_init();
  v3 = v2;
  if (a1)
  {
    [(JavaLangStringBuilder *)v2 appendWithNSString:@"public "];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [(JavaLangStringBuilder *)v3 appendWithNSString:@"protected "];
  if ((a1 & 2) == 0)
  {
LABEL_4:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"private "];
  if ((a1 & 0x400) == 0)
  {
LABEL_5:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"abstract "];
  if ((a1 & 8) == 0)
  {
LABEL_6:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"static "];
  if ((a1 & 0x10) == 0)
  {
LABEL_7:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"final "];
  if ((a1 & 0x80) == 0)
  {
LABEL_8:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"transient "];
  if ((a1 & 0x40) == 0)
  {
LABEL_9:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"volatile "];
  if ((a1 & 0x20) == 0)
  {
LABEL_10:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"synchronized "];
  if ((a1 & 0x100) == 0)
  {
LABEL_11:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"native "];
  if ((a1 & 0x800) == 0)
  {
LABEL_12:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_28:
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"strictfp "];
  if ((a1 & 0x200) != 0)
  {
LABEL_13:
    [(JavaLangStringBuilder *)v3 appendWithNSString:@"interface "];
  }

LABEL_14:
  if (![(JavaLangStringBuilder *)v3 length])
  {
    return &stru_100484358;
  }

  [(JavaLangAbstractStringBuilder *)v3 setLengthWithInt:[(JavaLangStringBuilder *)v3 length]- 1];

  return [(JavaLangStringBuilder *)v3 description];
}

id JavaNetURLConnection_initWithJavaNetURL_(uint64_t a1, void *a2)
{
  v4 = [JavaNetURLConnection_DefaultContentHandler alloc];
  JavaNetContentHandler_init(v4, v5);
  JreStrongAssignAndConsume((a1 + 16), v4);
  *(a1 + 48) = -1;
  *(a1 + 56) = 0;
  *(a1 + 32) = byte_100551410;
  *(a1 + 35) = 1;
  *(a1 + 36) = byte_1005550C8;

  return JreStrongAssign((a1 + 8), a2);
}

id JavaNetURLConnection_guessContentTypeFromNameWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaNetURLConnection__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100214DC8();
  }

  FileNameMap = JavaNetURLConnection_getFileNameMap();
  if (!FileNameMap)
  {
    JreThrowNullPointerException();
  }

  return [FileNameMap getContentTypeForWithNSString:a1];
}

const __CFString *JavaNetURLConnection_guessContentTypeFromStreamWithJavaIoInputStream_(void *a1)
{
  if (atomic_load_explicit(JavaNetURLConnection__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_71;
    }
  }

  else
  {
    sub_100214DC8();
    if (!a1)
    {
      goto LABEL_71;
    }
  }

  if (![a1 markSupported])
  {
    return 0;
  }

  [a1 markWithInt:64];
  v2 = [IOSByteArray arrayWithLength:64];
  v3 = [a1 readWithByteArray:v2];
  [a1 reset];
  if (v3 == -1)
  {
    return 0;
  }

  if (v3 < 2)
  {
    v5 = 0;
    v6 = @"US-ASCII";
  }

  else
  {
    size = v2->super.size_;
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    if (*(&v2->super.size_ + 4) == 255)
    {
      v8 = v2->super.size_;
      if (v8 <= 1)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, 1);
      }

      if (*(&v2->super.size_ + 5) == 254)
      {
        v6 = @"UTF-16LE";
      }

      else
      {
        v6 = @"US-ASCII";
      }

      if (*(&v2->super.size_ + 5) == 254)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }

      if (*(&v2->super.size_ + 5) == 254)
      {
        v3 &= 0x7FFFFFFEu;
      }
    }

    else
    {
      v5 = 0;
      v6 = @"US-ASCII";
    }

    v9 = v2->super.size_;
    if (v9 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, 0);
    }

    if (*(&v2->super.size_ + 4) == 254)
    {
      v10 = v2->super.size_;
      if (v10 <= 1)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, 1);
      }

      if (*(&v2->super.size_ + 5) == 255)
      {
        v3 &= 0x7FFFFFFEu;
        v5 = 2;
        v6 = @"UTF-16BE";
      }
    }

    if (v3 >= 3)
    {
      v11 = v2->super.size_;
      if (v11 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, 0);
      }

      if (*(&v2->super.size_ + 4) == 239)
      {
        v12 = v2->super.size_;
        if (v12 <= 1)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, 1);
        }

        if (*(&v2->super.size_ + 5) == 187)
        {
          v13 = v2->super.size_;
          if (v13 <= 2)
          {
            IOSArray_throwOutOfBoundsWithMsg(v13, 2);
          }

          if (*(&v2->super.size_ + 6) == 191)
          {
            v6 = @"UTF-8";
            v5 = 3;
          }

          else
          {
            v5 = v5;
          }
        }
      }

      if (v3 != 3)
      {
        v14 = v2->super.size_;
        if (v14 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, 0);
        }

        if (!*(&v2->super.size_ + 4))
        {
          v15 = v2->super.size_;
          if (v15 <= 1)
          {
            IOSArray_throwOutOfBoundsWithMsg(v15, 1);
          }

          if (!*(&v2->super.size_ + 5))
          {
            v16 = v2->super.size_;
            if (v16 <= 2)
            {
              IOSArray_throwOutOfBoundsWithMsg(v16, 2);
            }

            if (*(&v2->super.size_ + 6) == 254)
            {
              v17 = v2->super.size_;
              if (v17 <= 3)
              {
                IOSArray_throwOutOfBoundsWithMsg(v17, 3);
              }

              if (*(&v2->super.size_ + 7) == 255)
              {
                v3 &= 0x7FFFFFFCu;
                v5 = 4;
                v6 = @"UTF-32BE";
              }
            }
          }
        }

        v18 = v2->super.size_;
        if (v18 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, 0);
        }

        if (*(&v2->super.size_ + 4) == 255)
        {
          v19 = v2->super.size_;
          if (v19 <= 1)
          {
            IOSArray_throwOutOfBoundsWithMsg(v19, 1);
          }

          if (*(&v2->super.size_ + 5) == 254)
          {
            v20 = v2->super.size_;
            if (v20 <= 2)
            {
              IOSArray_throwOutOfBoundsWithMsg(v20, 2);
            }

            if (!*(&v2->super.size_ + 6))
            {
              v21 = v2->super.size_;
              if (v21 <= 3)
              {
                IOSArray_throwOutOfBoundsWithMsg(v21, 3);
              }

              if (!*(&v2->super.size_ + 7))
              {
                v3 &= 0x7FFFFFFCu;
                v5 = 4;
                v6 = @"UTF-32LE";
              }
            }
          }
        }
      }
    }
  }

  v22 = [NSString stringWithBytes:v2 offset:v5 length:(v3 - v5) charsetName:v6];
  if ([(NSString *)v22 hasPrefix:@"PK"])
  {
    return @"application/zip";
  }

  if ([(NSString *)v22 hasPrefix:@"GI"])
  {
    return @"image/gif";
  }

  v23 = [(NSString *)v22 trim];
  if (!v23)
  {
    goto LABEL_71;
  }

  v24 = v23;
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  v25 = [v24 uppercaseStringWithJRELocale:JavaUtilLocale_US_];
  if (!v25)
  {
LABEL_71:
    JreThrowNullPointerException();
  }

  v26 = v25;
  if ([v25 hasPrefix:@"<!DOCTYPE HTML"] & 1) != 0 || (objc_msgSend(v26, "hasPrefix:", @"<HTML") & 1) != 0 || (objc_msgSend(v26, "hasPrefix:", @"<HEAD") & 1) != 0 || (objc_msgSend(v26, "hasPrefix:", @"<BODY") & 1) != 0 || (objc_msgSend(v26, "hasPrefix:", @"<HEAD"))
  {
    return @"text/html";
  }

  if ([v26 hasPrefix:@"<?XML"])
  {
    return @"application/xml";
  }

  return 0;
}