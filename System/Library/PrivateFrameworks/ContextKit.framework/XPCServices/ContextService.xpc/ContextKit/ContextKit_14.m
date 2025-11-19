IOSCharArray *JavaLangCharacter_toCharsWithInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  sub_1002551B4(a1, a2, a3, a4, a5, a6, a7, a8);
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  if ((a1 - 0x10000) >> 20)
  {
    v12 = a1;
    v9 = &v12;
    v10 = 1;
  }

  else
  {
    v13[0] = ((a1 - 0x10000) >> 10) | 0xD800;
    v13[1] = a1 & 0x3FF | 0xDC00;
    v9 = v13;
    v10 = 2;
  }

  return [IOSCharArray arrayWithChars:v9 count:v10];
}

uint64_t JavaLangCharacter_codePointCountWithJavaLangCharSequence_withInt_withInt_(void *a1, uint64_t a2, int a3)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_21:
    v11 = new_JavaLangNullPointerException_initWithNSString_(@"seq == null");
    goto LABEL_23;
  }

  if (!a1)
  {
    goto LABEL_21;
  }

LABEL_3:
  v6 = [a1 length];
  if (a2 > a3 || (a2 & 0x80000000) != 0 || v6 < a3)
  {
    v11 = new_JavaLangIndexOutOfBoundsException_init();
LABEL_23:
    objc_exception_throw(v11);
  }

  if (a2 >= a3)
  {
    return 0;
  }

  LODWORD(v7) = 0;
  do
  {
    v8 = [a1 charAtWithInt:a2];
    if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10025E130();
    }

    if ((v8 & 0xFC00) == 0xD800)
    {
      a2 = (a2 + 1);
      if (a2 < a3)
      {
        v9 = [a1 charAtWithInt:a2];
        if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_10025E130();
        }

        if ((v9 & 0xFC00) != 0xDC00)
        {
          LODWORD(v7) = v7 + 1;
        }
      }
    }

    v7 = (v7 + 1);
    a2 = (a2 + 1);
  }

  while (a2 < a3);
  return v7;
}

uint64_t JavaLangCharacter_codePointCountRaw(uint64_t a1, int a2, int a3)
{
  v3 = a3 + a2;
  if (a3 + a2 <= a2)
  {
    return 0;
  }

  LODWORD(v4) = a2;
  LODWORD(v6) = 0;
  do
  {
    v7 = *(a1 + 2 * v4);
    if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10025E130();
    }

    if ((v7 & 0xFC00) == 0xD800)
    {
      v4 = v4 + 1;
      if (v4 < v3)
      {
        v8 = *(a1 + 2 * v4);
        if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_10025E130();
        }

        if ((v8 & 0xFC00) != 0xDC00)
        {
          LODWORD(v6) = v6 + 1;
        }
      }
    }

    v6 = (v6 + 1);
    LODWORD(v4) = v4 + 1;
  }

  while (v4 < v3);
  return v6;
}

uint64_t JavaLangCharacter_codePointCountWithCharArray_withInt_withInt_(uint64_t a1, int a2, int a3)
{
  if (atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10025E130();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a1 + 8), a2, a3);

  return JavaLangCharacter_codePointCountRaw(a1 + 12, a2, a3);
}

uint64_t JavaLangCharacter_offsetByCodePointsWithJavaLangCharSequence_withInt_withInt_(void *a1, uint64_t a2, int a3)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_34:
    v17 = new_JavaLangNullPointerException_initWithNSString_(@"seq == null");
    goto LABEL_36;
  }

  if (!a1)
  {
    goto LABEL_34;
  }

LABEL_3:
  v6 = [a1 length];
  if ((a2 & 0x80000000) != 0 || (v7 = v6, v6 < a2))
  {
LABEL_35:
    v17 = new_JavaLangIndexOutOfBoundsException_init();
LABEL_36:
    objc_exception_throw(v17);
  }

  if (a3)
  {
    if (a3 >= 1)
    {
      v8 = a3 + 1;
      while (a2 < v7)
      {
        v9 = [a1 charAtWithInt:a2];
        if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_10025E130();
        }

        if ((v9 & 0xFC00) == 0xD800 && a2 + 1 < v7)
        {
          v10 = [a1 charAtWithInt:(a2 + 1)];
          if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_10025E130();
          }

          if ((v10 & 0xFC00) == 0xDC00)
          {
            LODWORD(a2) = a2 + 1;
          }
        }

        a2 = (a2 + 1);
        if (--v8 <= 1)
        {
          return a2;
        }
      }

      goto LABEL_35;
    }

    if (-a3 >= 1)
    {
      v11 = 1 - a3;
      v12 = a2;
      while (v12 > 0)
      {
        a2 = (v12 - 1);
        v13 = [a1 charAtWithInt:a2];
        if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_10025E130();
        }

        if ((v13 & 0xFC00) == 0xDC00 && v12 != 1)
        {
          v14 = v12 - 2;
          v15 = [a1 charAtWithInt:(v12 - 2)];
          if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_10025E130();
          }

          if ((v15 & 0xFC00) == 0xD800)
          {
            a2 = v14;
          }

          else
          {
            a2 = a2;
          }
        }

        --v11;
        v12 = a2;
        if (v11 <= 1)
        {
          return a2;
        }
      }

      goto LABEL_35;
    }
  }

  return a2;
}

uint64_t JavaLangCharacter_offsetByCodePointsRaw(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  if (a4 < a2)
  {
    goto LABEL_34;
  }

  v5 = a4;
  v7 = a3 + a2;
  if (a3 + a2 < a4)
  {
    goto LABEL_34;
  }

  if (a5)
  {
    if (a5 >= 1)
    {
      v9 = a5 + 1;
      while (v5 < v7)
      {
        v10 = *(a1 + 2 * v5);
        if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_10025E130();
        }

        v11 = v10 & 0xFC00;
        v12 = v5 + 1;
        if (v11 == 55296 && v12 < v7)
        {
          v14 = *(a1 + 2 * v12);
          if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_10025E130();
          }

          if ((v14 & 0xFC00) == 0xDC00)
          {
            LODWORD(v5) = v5 + 1;
          }
        }

        v5 = (v5 + 1);
        if (--v9 <= 1)
        {
          return v5;
        }
      }

      goto LABEL_34;
    }

    if (-a5 >= 1)
    {
      v15 = 1 - a5;
      v16 = a4;
      while (1)
      {
        v5 = (v16 - 1);
        if (v5 < a2)
        {
          break;
        }

        v17 = *(a1 + 2 * v5);
        if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_10025E130();
        }

        if ((v17 & 0xFC00) == 0xDC00)
        {
          v18 = v16 - 2;
          if (v18 >= a2)
          {
            v19 = *(a1 + 2 * v18);
            if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
            {
              sub_10025E130();
            }

            if ((v19 & 0xFC00) == 0xD800)
            {
              v5 = v18;
            }

            else
            {
              v5 = v5;
            }
          }
        }

        --v15;
        v16 = v5;
        if (v15 <= 1)
        {
          return v5;
        }
      }

LABEL_34:
      objc_exception_throw(objc_alloc_init(JavaLangIndexOutOfBoundsException));
    }
  }

  return v5;
}

uint64_t JavaLangCharacter_offsetByCodePointsWithCharArray_withInt_withInt_withInt_withInt_(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  if (atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10025E130();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a1 + 8), a2, a3);

  return JavaLangCharacter_offsetByCodePointsRaw(a1 + 12, a2, a3, a4, a5);
}

uint64_t JavaLangCharacter_digitWithChar_withInt_(UChar32 ch, int8_t a2)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_digitWithInt_withInt_(ch, a2);
}

uint64_t JavaLangCharacter_digitWithInt_withInt_(UChar32 ch, int8_t a2)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_digit(ch, a2);
}

uint64_t JavaLangCharacter_forDigitWithInt_withInt_(int32_t digit, int8_t a2)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_forDigit(digit, a2);
}

const __CFString *JavaLangCharacter_getNameWithInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  sub_1002551B4(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!JavaLangCharacter_getTypeWithInt_(a1))
  {
    return 0;
  }

  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  v16 = JavaLangCharacter_UnicodeBlock_ofWithInt_(a1, v9, v10, v11, v12, v13, v14, v15);
  if (!v16 || (v17 = *(v16 + 8)) == 0)
  {
    JreThrowNullPointerException();
  }

  v18 = [v17 replace:95 withChar:32];
  JavaLangIntegralToString_intToHexStringWithInt_withBoolean_withInt_(a1, 1, 0);
  return JreStrcat("$C$", v19, v20, v21, v22, v23, v24, v25, v18);
}

uint64_t JavaLangCharacter_getNumericValueWithChar_(int a1)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_getNumericValueWithInt_(a1);
}

uint64_t JavaLangCharacter_getNumericValueWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  if ((a1 - 65345) >= 0x1A)
  {
    v2 = -1;
  }

  else
  {
    v2 = a1 - 65335;
  }

  if ((a1 - 65313) <= 0x19)
  {
    v3 = a1 - 65303;
  }

  else
  {
    v3 = v2;
  }

  v4 = a1 - 48;
  if ((a1 - 65) >= 0x1A)
  {
    v5 = -1;
  }

  else
  {
    v5 = a1 - 55;
  }

  if ((a1 - 97) <= 0x19)
  {
    v6 = a1 - 87;
  }

  else
  {
    v6 = v5;
  }

  if (v4 >= 0xA)
  {
    v4 = v6;
  }

  if (a1 <= 127)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t JavaLangCharacter_getTypeWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_getTypeWithInt_(c);
}

uint64_t JavaLangCharacter_getTypeWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  LODWORD(result) = u_charType(c);
  if (result <= 16)
  {
    return result;
  }

  else
  {
    return (result + 1);
  }
}

uint64_t JavaLangCharacter_getDirectionalityWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_getDirectionalityWithInt_(c);
}

uint64_t JavaLangCharacter_getDirectionalityWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  if (JavaLangCharacter_getTypeWithInt_(c) && (v2 = u_charDirection(c), v2 <= U_BOUNDARY_NEUTRAL))
  {
    return byte_100315610[v2];
  }

  else
  {
    return -1;
  }
}

BOOL JavaLangCharacter_isMirroredWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isMirroredWithInt_(c);
}

BOOL JavaLangCharacter_isMirroredWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isMirrored(c) != 0;
}

BOOL JavaLangCharacter_isAlphabeticWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  if (a1 >= 0x8000)
  {
    return 0;
  }

  v3 = +[NSCharacterSet letterCharacterSet];

  return [(NSCharacterSet *)v3 characterIsMember:a1];
}

BOOL JavaLangCharacter_isDefinedWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isDefinedWithInt_(c);
}

BOOL JavaLangCharacter_isDefinedWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isdefined(c) != 0;
}

BOOL JavaLangCharacter_isDigitWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isDigitWithInt_(c);
}

BOOL JavaLangCharacter_isDigitWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isdigit(c) != 0;
}

BOOL JavaLangCharacter_isIdentifierIgnorableWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isIdentifierIgnorableWithInt_(c);
}

BOOL JavaLangCharacter_isIdeographicWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_getIntPropertyValue(c, UCHAR_IDEOGRAPHIC) != 0;
}

BOOL JavaLangCharacter_isIdentifierIgnorableWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isIDIgnorable(c) != 0;
}

BOOL JavaLangCharacter_isISOControlWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isISOControlWithInt_(c);
}

BOOL JavaLangCharacter_isISOControlWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isISOControl(c) != 0;
}

BOOL JavaLangCharacter_isJavaIdentifierPartWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isJavaIdentifierPartWithInt_(c);
}

BOOL JavaLangCharacter_isJavaIdentifierPartWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isJavaIDPart(c) != 0;
}

BOOL JavaLangCharacter_isJavaIdentifierStartWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isJavaIdentifierStartWithInt_(c);
}

BOOL JavaLangCharacter_isJavaIdentifierStartWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isJavaIDStart(c) != 0;
}

BOOL JavaLangCharacter_isJavaLetterWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isJavaIdentifierStartWithChar_(c);
}

BOOL JavaLangCharacter_isJavaLetterOrDigitWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isJavaIdentifierPartWithChar_(c);
}

BOOL JavaLangCharacter_isLetterWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isLetterWithInt_(c);
}

BOOL JavaLangCharacter_isLetterWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isalpha(c) != 0;
}

BOOL JavaLangCharacter_isLetterOrDigitWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isLetterOrDigitWithInt_(c);
}

BOOL JavaLangCharacter_isLetterOrDigitWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isalnum(c) != 0;
}

BOOL JavaLangCharacter_isLowerCaseWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isLowerCaseWithInt_(c);
}

BOOL JavaLangCharacter_isLowerCaseWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_islower(c) != 0;
}

uint64_t JavaLangCharacter_isSpaceWithChar_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (a1 < 0x21) & (0x100003600uLL >> a1);
}

BOOL JavaLangCharacter_isSpaceCharWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isSpaceCharWithInt_(c);
}

BOOL JavaLangCharacter_isSpaceCharWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isJavaSpaceChar(c) != 0;
}

BOOL JavaLangCharacter_isTitleCaseWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isTitleCaseWithInt_(c);
}

BOOL JavaLangCharacter_isTitleCaseWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_istitle(c) != 0;
}

BOOL JavaLangCharacter_isUnicodeIdentifierPartWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isUnicodeIdentifierPartWithInt_(c);
}

BOOL JavaLangCharacter_isUnicodeIdentifierPartWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isIDPart(c) != 0;
}

BOOL JavaLangCharacter_isUnicodeIdentifierStartWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isUnicodeIdentifierStartWithInt_(c);
}

BOOL JavaLangCharacter_isUnicodeIdentifierStartWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isIDStart(c) != 0;
}

BOOL JavaLangCharacter_isUpperCaseWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isUpperCaseWithInt_(c);
}

BOOL JavaLangCharacter_isUpperCaseWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isupper(c) != 0;
}

BOOL JavaLangCharacter_isWhitespaceWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_isWhitespaceWithInt_(c);
}

BOOL JavaLangCharacter_isWhitespaceWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_isWhitespace(c) != 0;
}

uint64_t JavaLangCharacter_toLowerCaseWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_toLowerCaseWithInt_(c);
}

uint64_t JavaLangCharacter_toLowerCaseWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_tolower(c);
}

NSString *JavaLangCharacter_toStringWithChar_(__int16 a1)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return NSString_valueOfChar_(a1);
}

uint64_t JavaLangCharacter_toTitleCaseWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_toTitleCaseWithInt_(c);
}

uint64_t JavaLangCharacter_toTitleCaseWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_totitle(c);
}

uint64_t JavaLangCharacter_toUpperCaseWithChar_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return JavaLangCharacter_toUpperCaseWithInt_(c);
}

uint64_t JavaLangCharacter_toUpperCaseWithInt_(UChar32 c)
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return u_toupper(c);
}

uint64_t JavaLangCharacter_UnicodeBlock_ofWithInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangCharacter_UnicodeBlock__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E150();
  }

  sub_1002551B4(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = sub_100258268(a1);
  if (v9 == -1)
  {
    return 0;
  }

  if (!qword_100556468)
  {
    JreThrowNullPointerException();
  }

  v10 = v9;
  v11 = *(qword_100556468 + 8);
  if (v10 >= v11)
  {
    return 0;
  }

  if ((v10 & 0x80000000) != 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v10);
  }

  return *(qword_100556468 + 24 + 8 * v10);
}

uint64_t JavaLangCharacter_class_()
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  if (qword_100556460 != -1)
  {
    sub_10025E15C();
  }

  return qword_100556458;
}

id JavaLangCharacter_Subset_initWithNSString_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"name == null");
    objc_exception_throw(v5);
  }

  v3 = (a1 + 8);

  return JreStrongAssign(v3, a2);
}

uint64_t JavaLangCharacter_UnicodeBlock_forNameWithNSString_(void *a1)
{
  if (atomic_load_explicit(JavaLangCharacter_UnicodeBlock__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v13 = new_JavaLangNullPointerException_initWithNSString_(@"blockName == null");
    goto LABEL_13;
  }

  sub_10025E150();
  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = sub_10025814C(a1);
  if (v2 == -1)
  {
    v14 = JreStrcat("$$", v3, v4, v5, v6, v7, v8, v9, @"Unknown block: ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
LABEL_13:
    objc_exception_throw(v13);
  }

  if (!qword_100556468)
  {
    JreThrowNullPointerException();
  }

  v10 = v2;
  v11 = *(qword_100556468 + 8);
  if ((v10 & 0x80000000) != 0 || v10 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v10);
  }

  return *(qword_100556468 + 24 + 8 * v10);
}

uint64_t JavaLangCharacter_UnicodeBlock_ofWithChar_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangCharacter_UnicodeBlock__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E150();
  }

  return JavaLangCharacter_UnicodeBlock_ofWithInt_(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10025814C(void *a1)
{
  if (atomic_load_explicit(JavaLangCharacter_UnicodeBlock__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_10025E150();
    if (!a1)
    {
      goto LABEL_16;
    }
  }

  v2 = [a1 uppercaseString];
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = [v2 replace:32 withChar:95];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = [v3 replace:45 withChar:95];
  if (!qword_100556470)
  {
    goto LABEL_16;
  }

  if ([qword_100556470 containsKeyWithId:v4])
  {
    v5 = [qword_100556470 getWithId:v4];
    if (!v5)
    {
      goto LABEL_16;
    }

    v4 = v5[1];
  }

  v6 = qword_100556468;
  if (!qword_100556468)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v7 = 1;
  while (v7 < *(v6 + 8))
  {
    if (v4)
    {
      v8 = *(v6 + 24 + 8 * v7);
      if (v8)
      {
        if ([v4 isEqual:*(v8 + 8)])
        {
          return v7;
        }

        v6 = qword_100556468;
        ++v7;
        if (qword_100556468)
        {
          continue;
        }
      }
    }

    goto LABEL_16;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100258268(int a1)
{
  if ((atomic_load_explicit(JavaLangCharacter_UnicodeBlock__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E150();
  }

  v2 = qword_100556468;
  if (!qword_100556468)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v3 = 1;
  while (v3 < *(v2 + 8))
  {
    v4 = *(v2 + 24 + 8 * v3);
    if (!v4)
    {
      goto LABEL_16;
    }

    if (*(v4 + 16) <= a1)
    {
      v5 = *(v2 + 8);
      if (v3 >= v5)
      {
        IOSArray_throwOutOfBoundsWithMsg(v5, v3);
      }

      if (*(v4 + 20) >= a1)
      {
        return v3;
      }

      v2 = qword_100556468;
    }

    ++v3;
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t JavaLangCharacter_UnicodeBlock_class_()
{
  if ((atomic_load_explicit(JavaLangCharacter_UnicodeBlock__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E150();
  }

  if (qword_100556480 != -1)
  {
    sub_10025E170();
  }

  return qword_100556478;
}

void sub_10025E0D8(id a1)
{
  for (i = 0; i != 128; ++i)
  {
    qword_100556488[i] = [[JavaLangCharacter alloc] initWithChar:i];
  }
}

uint64_t JavaLangFloat_compareWithFloat_withFloat_(float a1, float a2)
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
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

  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  v5 = LODWORD(a1);
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
    v5 = LODWORD(a1);
  }

  return ((LODWORD(a2) >> 31) + (v5 >> 31));
}

uint64_t JavaLangFloat_floatToIntBitsWithFloat_(float a1)
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  return LODWORD(a1);
}

uint64_t JavaLangFloat_floatToRawIntBitsWithFloat_(float a1)
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  return LODWORD(a1);
}

float JavaLangFloat_intBitsToFloatWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  return *&a1;
}

BOOL JavaLangFloat_isInfiniteWithFloat_(float a1)
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  return fabsf(a1) == INFINITY;
}

uint64_t JavaLangFloat_isNaNWithFloat_()
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  return 0;
}

void JavaLangFloat_parseFloatWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  JavaLangStringToReal_parseFloatWithNSString_(a1);
}

const __CFString *JavaLangFloat_toStringWithFloat_(float a1)
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  return JavaLangRealToString_floatToStringWithFloat_(a1);
}

JavaLangFloat *JavaLangFloat_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  JavaLangFloat_parseFloatWithNSString_(a1);

  return JavaLangFloat_valueOfWithFloat_(v2);
}

JavaLangFloat *JavaLangFloat_valueOfWithFloat_(float a1)
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  v2 = [JavaLangFloat alloc];
  v2->value_ = a1;

  return v2;
}

const __CFString *JavaLangFloat_toHexStringWithFloat_(float a1)
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  if (a1 == INFINITY)
  {
    return @"Infinity";
  }

  if (a1 == -INFINITY)
  {
    return @"-Infinity";
  }

  v3 = JavaLangFloat_floatToIntBitsWithFloat_(a1);
  v4 = v3;
  v5 = (v3 >> 23);
  v6 = 2 * (v3 & 0x7FFFFF);
  if (!(v5 | v6))
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
  v11 = (v4 & 7) == 0 && v6 != 0;
  if (!v5)
  {
    [(JavaLangStringBuilder *)v8 appendWithNSString:@"0."];
    v20 = 6;
    if (v11)
    {
      v21 = v6;
      do
      {
        v6 = v21 >> 4;
        --v20;
        if (!v21)
        {
          break;
        }

        v22 = v21 & 0xF0;
        v21 >>= 4;
      }

      while (!v22);
    }

    v23 = JavaLangInteger_toHexStringWithInt_(v6);
    v24 = v23;
    if (v6)
    {
      if (!v23)
      {
        goto LABEL_48;
      }

      if (v20 > [(NSString *)v23 length])
      {
        v25 = [(NSString *)v24 length];
        if (v20 != v25)
        {
          v26 = v25 - v20;
          do
          {
            [(JavaLangStringBuilder *)v8 appendWithChar:48];
            v19 = __CFADD__(v26++, 1);
          }

          while (!v19);
        }
      }
    }

    [(JavaLangStringBuilder *)v8 appendWithNSString:v24];
    [(JavaLangStringBuilder *)v8 appendWithNSString:@"p-126"];
    goto LABEL_45;
  }

  [(JavaLangStringBuilder *)v8 appendWithNSString:@"1."];
  v12 = 6;
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

  v15 = JavaLangInteger_toHexStringWithInt_(v6);
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
  [(JavaLangStringBuilder *)v8 appendWithInt:(v5 - 127)];
LABEL_45:

  return [(JavaLangStringBuilder *)v8 description];
}

JavaLangFloat *new_JavaLangFloat_initWithFloat_(float a1)
{
  result = [JavaLangFloat alloc];
  result->value_ = a1;
  return result;
}

uint64_t JavaLangFloat_class_()
{
  if ((atomic_load_explicit(JavaLangFloat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025EE68();
  }

  if (qword_100556898 != -1)
  {
    sub_10025EE74();
  }

  return qword_100556890;
}

id OrgXmlSaxHelpersParserFactory_makeParser()
{
  PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(@"org.xml.sax.parser");
  if (!PropertyWithNSString)
  {
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"No value for sax.parser property");
    objc_exception_throw(v4);
  }

  v1 = OrgXmlSaxHelpersNewInstance_newInstanceWithNSString_(PropertyWithNSString);
  v2 = OrgXmlSaxParser_class_();
  if (v1 && ([v2 isInstance:v1] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v1;
}

id JavaUtilObjects_deepEqualsWithId_withId_(void *a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return (a1 == a2);
  }

  v4 = NSObject_class_();
  if ([IOSClass_arrayType(v4 1u)])
  {
    v5 = NSObject_class_();
    if ([IOSClass_arrayType(v5 1u)])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          return JavaUtilArrays_deepEqualsWithNSObjectArray_withNSObjectArray_(a1, a2);
        }
      }

LABEL_70:
      JreThrowClassCastException();
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_70;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_70;
    }

    return JavaUtilArrays_equalsWithBooleanArray_withBooleanArray_(a1, a2);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_70;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_70;
      }

      return JavaUtilArrays_equalsWithByteArray_withByteArray_(a1, a2);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_70;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_70;
        }

        return JavaUtilArrays_equalsWithCharArray_withCharArray_(a1, a2);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_70;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_70;
          }

          return JavaUtilArrays_equalsWithDoubleArray_withDoubleArray_(a1, a2);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_70;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_70;
            }

            return JavaUtilArrays_equalsWithFloatArray_withFloatArray_(a1, a2);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_70;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_70;
              }

              return JavaUtilArrays_equalsWithIntArray_withIntArray_(a1, a2);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_70;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_70;
                }

                return JavaUtilArrays_equalsWithLongArray_withLongArray_(a1, a2);
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_70;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_70;
                  }

                  return JavaUtilArrays_equalsWithShortArray_withShortArray_(a1, a2);
                }

                else
                {

                  return [a1 isEqual:a2];
                }
              }
            }
          }
        }
      }
    }
  }
}

id JavaUtilObjects_equalsWithId_withId_(void *a1, uint64_t a2)
{
  if (a1)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return (a2 == 0);
  }
}

id JavaUtilObjects_hashCodeWithId_(id result)
{
  if (result)
  {
    return [result hash];
  }

  return result;
}

uint64_t JavaUtilObjects_requireNonNullWithId_(uint64_t result)
{
  if (!result)
  {
    v1 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v1);
  }

  return result;
}

uint64_t JavaUtilObjects_requireNonNullWithId_withNSString_(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v2 = new_JavaLangNullPointerException_initWithNSString_(a2);
    objc_exception_throw(v2);
  }

  return result;
}

id makeException(objc_class *a1)
{
  v1 = objc_alloc_init(a1);
  v2 = v1;
  return v1;
}

const __CFString *NSString_valueOf_(void *a1)
{
  if (a1)
  {
    return [a1 description];
  }

  else
  {
    return @"null";
  }
}

const __CFString *NSString_valueOfBool_(int a1)
{
  if (a1)
  {
    return @"true";
  }

  else
  {
    return @"false";
  }
}

NSString *NSString_valueOfChars_offset_count_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x80000000) == 0)
  {
    v6 = 0;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = [[JavaLangStringIndexOutOfBoundsException alloc] initWithInt:a2];
  v10 = v6;
  if ((a3 & 0x80000000) != 0)
  {
LABEL_3:
    v6 = [[JavaLangStringIndexOutOfBoundsException alloc] initWithInt:a3];
    v7 = v6;
  }

LABEL_4:
  if (a3 + a2 > *(a1 + 8))
  {
    v6 = [[JavaLangStringIndexOutOfBoundsException alloc] initWithInt:a2];
    v8 = v6;
  }

  if (v6)
  {
    objc_exception_throw(v6);
  }

  return [NSString stringWithCharacters:a1 + 12 + 2 * a2 length:a3];
}

id NSString_formatWithNSString_withNSObjectArray_(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(JavaUtilFormatter);
  v5 = [-[JavaUtilFormatter formatWithNSString:withNSObjectArray:](v4 formatWithNSString:a1 withNSObjectArray:{a2), "description"}];

  return v5;
}

id NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [[[JavaUtilFormatter alloc] initWithJavaUtilLocale:a1] formatWithNSString:a2 withNSObjectArray:a3];

  return [v3 description];
}

uint64_t NSString_class_()
{
  v0 = atomic_load(&NSString__initialized);
  if ((v0 & 1) == 0)
  {
    sub_1002615CC();
  }

  if (qword_1005568A8 != -1)
  {
    sub_1002615D8();
  }

  return qword_1005568A0;
}

id JavaUtilIdentityHashMap_initWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  JavaUtilAbstractMap_init(a1, a2);
  *(a1 + 40) = 0;
  if ((v2 & 0x80000000) != 0)
  {
    v15 = JreStrcat("$I", v4, v5, v6, v7, v8, v9, v10, @"maxSize < 0: ");
    v16 = new_JavaLangIllegalArgumentException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  *(a1 + 32) = 0;
  if (v2 <= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v2;
  }

  *(a1 + 36) = v11;
  v12 = 2 * (10000 * *(a1 + 36) / 7500);
  if (((10000 * *(a1 + 36) / 7500) & 0x40000000) != 0)
  {
    v12 = -2 * (10000 * *(a1 + 36) / 7500);
  }

  v13 = [IOSObjectArray arrayWithLength:v12 type:NSObject_class_()];

  return JreStrongAssign((a1 + 24), v13);
}

id JavaUtilIdentityHashMap_initWithJavaUtilMap_(void *a1, void *a2)
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

  JavaUtilIdentityHashMap_initWithInt_(a1, v4);

  return [a1 putAllImplWithJavaUtilMap:a2];
}

uint64_t sub_1002619CC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a2 + 8);
  v5 = JavaUtilCollections_secondaryIdentityHashWithId_(a1);
  v6 = v5 - (v5 & 0x7FFFFFFF) / (v4 / 2) * (v4 / 2);
  v7 = (2 * v6);
  v8 = (v4 + 2 * v6 - 2) % v4;
  if (v7 != v8)
  {
    while (1)
    {
      v9 = *(a2 + 8);
      if ((v7 & 0x80000000) != 0 || v7 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v7);
      }

      v10 = *(a2 + 24 + 8 * v7);
      if (v10 == a1)
      {
        break;
      }

      v11 = *(a2 + 8);
      if ((v7 & 0x80000000) != 0 || v7 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v7);
      }

      if (!v10)
      {
        break;
      }

      v7 = ((v7 + 2) % v4);
      if (v7 == v8)
      {
        return ((v4 + 2 * v6 - 2) % v4);
      }
    }
  }

  return v7;
}

JavaUtilIdentityHashMap_IdentityHashMapEntry *sub_100261CB0(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = qword_1005568B0;
  }

  v4 = sub_1002619CC(v3, a1[3]);
  v5 = a1[3];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = v4;
  v7 = *(v5 + 8);
  if ((v6 & 0x80000000) != 0 || v6 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, v6);
  }

  if (*(v5 + 24 + 8 * v6) != v3)
  {
    return 0;
  }

  return sub_100261D88(a1, v6);
}

JavaUtilIdentityHashMap_IdentityHashMapEntry *sub_100261D88(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v4 = *(v2 + 8);
  if ((a2 & 0x80000000) != 0 || v4 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, a2);
  }

  v5 = v2;
  v6 = *(v2 + 24 + 8 * a2);
  v7 = (a2 + 1);
  if (v7 < 0 || v7 >= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, v7);
  }

  if (v6 == qword_1005568B0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (*(v5 + 24 + 8 * v7) == qword_1005568B0)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v5 + 24 + 8 * v7);
  }

  v10 = new_JavaUtilIdentityHashMap_IdentityHashMapEntry_initWithJavaUtilIdentityHashMap_withId_withId_(a1, v8, v9);

  return v10;
}

void sub_1002624FC()
{
  v4 = *v3;
  v5 = *(*(v0 + v1) + *v2);
  JUMPOUT(0x100262364);
}

JavaUtilIdentityHashMap_IdentityHashMapEntrySet *new_JavaUtilIdentityHashMap_IdentityHashMapEntrySet_initWithJavaUtilIdentityHashMap_(void *a1)
{
  v2 = [JavaUtilIdentityHashMap_IdentityHashMapEntrySet alloc];
  JavaUtilAbstractSet_init(v2, v3);
  JreStrongAssign(&v2->associatedMap_, a1);
  return v2;
}

JavaUtilIdentityHashMap_KeySet *new_JavaUtilIdentityHashMap_KeySet_initWithJavaUtilIdentityHashMap_(void *a1)
{
  v2 = [JavaUtilIdentityHashMap_KeySet alloc];
  objc_storeWeak(&v2->this$0_, a1);
  JavaUtilAbstractSet_init(v2, v3);
  return v2;
}

JavaUtilIdentityHashMap_ValuesCollection *new_JavaUtilIdentityHashMap_ValuesCollection_initWithJavaUtilIdentityHashMap_(void *a1)
{
  v2 = [JavaUtilIdentityHashMap_ValuesCollection alloc];
  objc_storeWeak(&v2->this$0_, a1);
  JavaUtilAbstractCollection_init(v2, v3);
  return v2;
}

JavaUtilIdentityHashMap *new_JavaUtilIdentityHashMap_init()
{
  v0 = [JavaUtilIdentityHashMap alloc];
  JavaUtilIdentityHashMap_initWithInt_(v0, 21);
  return v0;
}

JavaUtilIdentityHashMap_IdentityHashMapEntry *new_JavaUtilIdentityHashMap_IdentityHashMapEntry_initWithJavaUtilIdentityHashMap_withId_withId_(void *a1, void *a2, void *a3)
{
  v6 = [JavaUtilIdentityHashMap_IdentityHashMapEntry alloc];
  JavaUtilMapEntry_initWithId_withId_(v6, a2, a3);
  JreStrongAssign(&v6->map_, a1);
  return v6;
}

id JavaUtilIdentityHashMap_IdentityHashMapIterator_initWithJavaUtilMapEntry_Type_withJavaUtilIdentityHashMap_(uint64_t a1, void *a2, _DWORD *a3)
{
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  JreStrongAssign((a1 + 8), a3);
  result = JreStrongAssign((a1 + 24), a2);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 16) = a3[10];
  return result;
}

JavaSecurityAllPermissionCollection *new_JavaSecurityAllPermissionCollection_init()
{
  v0 = [JavaSecurityAllPermissionCollection alloc];
  JavaSecurityPermissionCollection_init(v0, v1);
  return v0;
}

void *JavaIoWriter_init(uint64_t a1)
{
  v2 = [NSObject alloc];

  return JreStrongAssignAndConsume((a1 + 8), v2);
}

id JavaIoWriter_initWithId_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"lock == null");
    objc_exception_throw(v5);
  }

  v3 = (a1 + 8);

  return JreStrongAssign(v3, a2);
}

id sub_1002647DC(uint64_t a1, _DWORD *a2, int a3)
{
  JreStrongAssign((a1 + 32), a2);
  JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 20) = a2[2];
  if (a3 < 0 || (result = [a2 size], result < a3))
  {
    v7 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v7);
  }

  *(a1 + 16) = a3 - 1;
  return result;
}

id sub_100264B18(uint64_t a1, void *a2, int a3, int a4)
{
  JavaUtilAbstractCollection_init(a1, a2);
  result = JreStrongAssign((a1 + 16), a2);
  v9 = *(a1 + 16);
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 8) = *(v9 + 8);
  *(a1 + 24) = a3;
  *(a1 + 28) = a4 - a3;
  return result;
}

id JavaTextDecimalFormat_init(uint64_t a1, uint64_t a2)
{
  JavaTextNumberFormat_init(a1, a2);
  if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164E08();
  }

  JreStrongAssign((a1 + 44), qword_100557E40);
  Default = JavaUtilLocale_getDefault();
  v4 = new_JavaTextDecimalFormatSymbols_initWithJavaUtilLocale_(Default);
  JreStrongAssignAndConsume((a1 + 28), v4);
  v5 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(Default);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  numberPattern = v5->numberPattern_;

  return [a1 initNativeWithNSString:numberPattern];
}

id JavaTextDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(uint64_t a1, uint64_t a2, void *a3)
{
  JavaTextNumberFormat_init(a1, a2);
  if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164E08();
  }

  JreStrongAssign((a1 + 44), qword_100557E40);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = [a3 clone];
  objc_opt_class();
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign((a1 + 28), v6);

  return [a1 initNativeWithNSString:a2];
}

id JavaTextDecimalFormat_initWithNSString_withJavaUtilLocale_(uint64_t a1, uint64_t a2, void *a3)
{
  JavaTextNumberFormat_init(a1, a2);
  if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164E08();
  }

  JreStrongAssign((a1 + 44), qword_100557E40);
  v6 = new_JavaTextDecimalFormatSymbols_initWithJavaUtilLocale_(a3);
  JreStrongAssignAndConsume((a1 + 28), v6);

  return [a1 initNativeWithNSString:a2];
}

uint64_t sub_100265C90(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v2 = @"buffer == null";
    goto LABEL_6;
  }

  if (!a2)
  {
    v2 = @"position == null";
LABEL_6:
    v3 = new_JavaLangNullPointerException_initWithNSString_(v2);
    objc_exception_throw(v3);
  }

  return result;
}

JavaTextDecimalFormat *new_JavaTextDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(uint64_t a1, void *a2)
{
  v4 = [JavaTextDecimalFormat alloc];
  JavaTextDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(v4, a1, a2);
  return v4;
}

JavaTextDecimalFormat *new_JavaTextDecimalFormat_initWithNSString_withJavaUtilLocale_(uint64_t a1, void *a2)
{
  v4 = [JavaTextDecimalFormat alloc];
  JavaTextDecimalFormat_initWithNSString_withJavaUtilLocale_(v4, a1, a2);
  return v4;
}

JavaNioFloatArrayBuffer *JavaNioFloatBuffer_allocateWithInt_(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0x80000000) != 0)
  {
    v10 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"capacity < 0: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  v8 = new_JavaNioFloatArrayBuffer_initWithFloatArray_([IOSFloatArray arrayWithLength:a1]);

  return v8;
}

JavaNioFloatArrayBuffer *JavaNioFloatBuffer_wrapWithFloatArray_withInt_withInt_(unsigned int *a1, int a2, int a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(a1[2], a2, a3);
  result = new_JavaNioFloatArrayBuffer_initWithFloatArray_(a1);
  result->super.super.position_ = a2;
  result->super.super.limit_ = a3 + a2;
  return result;
}

JavaLangRuntimeException *new_JavaLangRuntimeException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangRuntimeException alloc];
  JavaLangException_initWithNSString_(v2, a1);
  return v2;
}

JavaLangRuntimeException *new_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaLangRuntimeException alloc];
  JavaLangException_initWithNSString_withJavaLangThrowable_(v4, a1, a2);
  return v4;
}

JavaLangRuntimeException *new_JavaLangRuntimeException_initWithJavaLangThrowable_(uint64_t a1)
{
  v2 = [JavaLangRuntimeException alloc];
  JavaLangException_initWithJavaLangThrowable_(v2, a1);
  return v2;
}

JavaLangIndexOutOfBoundsException *new_JavaLangIndexOutOfBoundsException_init()
{
  v0 = [JavaLangIndexOutOfBoundsException alloc];
  JavaLangRuntimeException_init(v0, v1);
  return v0;
}

JavaLangIndexOutOfBoundsException *new_JavaLangIndexOutOfBoundsException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangIndexOutOfBoundsException alloc];
  JavaLangRuntimeException_initWithNSString_(v2, a1);
  return v2;
}

JavaIoFileDescriptor *new_JavaIoFileDescriptor_init()
{
  result = [JavaIoFileDescriptor alloc];
  result->descriptor_ = -1;
  return result;
}

uint64_t JavaIoFileDescriptor_class_()
{
  if ((atomic_load_explicit(JavaIoFileDescriptor__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6F4();
  }

  if (qword_1005568C8 != -1)
  {
    sub_100267B6C();
  }

  return qword_1005568C0;
}

JavaNioByteBufferAsLongBuffer *JavaNioByteBufferAsLongBuffer_asLongBufferWithJavaNioByteBuffer_(void *a1)
{
  if (!a1 || (v2 = [a1 slice]) == 0)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  [v2 orderWithJavaNioByteOrder:{objc_msgSend(a1, "order")}];
  v4 = [JavaNioByteBufferAsLongBuffer alloc];
  sub_100267C28(v4, v3);

  return v4;
}

id sub_100267C28(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 capacity];
  JavaNioLongBuffer_initWithInt_withLong_(a1, (v4 / 8), a2[4], v5, v6, v7, v8, v9);
  JreStrongAssign((a1 + 40), a2);
  v10 = *(a1 + 40);

  return [v10 clear];
}

uint64_t JavaLangAssertionError_initWithId_(void *a1, void *a2)
{
  v4 = NSString_valueOf_(a2);
  JavaLangError_initWithNSString_(a1, v4);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    objc_opt_class();
    if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    return [a1 initCauseWithJavaLangThrowable:a2];
  }

  return result;
}

JavaLangAssertionError *new_JavaLangAssertionError_init()
{
  v0 = [JavaLangAssertionError alloc];
  JavaLangError_init(v0, v1);
  return v0;
}

JavaLangAssertionError *new_JavaLangAssertionError_initWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaLangAssertionError alloc];
  JavaLangError_initWithNSString_withJavaLangThrowable_(v4, a1, a2);
  return v4;
}

JavaLangAssertionError *new_JavaLangAssertionError_initWithId_(void *a1)
{
  v2 = [JavaLangAssertionError alloc];
  JavaLangAssertionError_initWithId_(v2, a1);
  return v2;
}

uint64_t LibcoreIoIoBridge_availableWithJavaIoFileDescriptor_(uint64_t a1)
{
  v2 = new_LibcoreUtilMutableInt_initWithInt_(0);
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ ioctlIntWithJavaIoFileDescriptor:a1 withInt:1074030207 withLibcoreUtilMutableInt:v2];
  result = v2->value_;
  if ((result & 0x80000000) != 0)
  {
    v2->value_ = 0;
    return v2->value_;
  }

  return result;
}

id LibcoreIoIoBridge_bindWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_(uint64_t a1, JavaNetInet6Address *a2, uint64_t a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a2)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    if (![(JavaNetInet6Address *)a2 getScopeId]&& [(JavaNetInet6Address *)a2 isLinkLocalAddress])
    {
      v6 = JavaNetNetworkInterface_getByInetAddressWithJavaNetInetAddress_(a2);
      if (!v6)
      {
        v15 = JreStrcat("$@", v7, v8, v9, v10, v11, v12, v13, @"Can't bind to a link-local address without a scope id: ");
        v16 = new_JavaNetSocketException_initWithNSString_(v15);
        objc_exception_throw(v16);
      }

      a2 = JavaNetInet6Address_getByAddressWithNSString_withByteArray_withInt_(-[JavaNetInetAddress getHostName](a2, "getHostName"), -[JavaNetInetAddress getAddress](a2, "getAddress"), [v6 getIndex]);
    }
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  return [LibcoreIoLibcore_os_ bindWithJavaIoFileDescriptor:a1 withJavaNetInetAddress:a2 withInt:a3];
}

id sub_100268CB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    LibcoreIoIoUtils_setBlockingWithJavaIoFileDescriptor_withBoolean_(a1, 0);
    JavaLangSystem_currentTimeMillis();
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_)
    {
      JreThrowNullPointerException();
    }

    [LibcoreIoLibcore_os_ connectWithJavaIoFileDescriptor:a1 withJavaNetInetAddress:a2 withInt:a3];
    return LibcoreIoIoUtils_setBlockingWithJavaIoFileDescriptor_withBoolean_(a1, 1);
  }

  else
  {
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100184238();
    }

    v8 = LibcoreIoLibcore_os_;
    if (!LibcoreIoLibcore_os_)
    {
      JreThrowNullPointerException();
    }

    return [v8 connectWithJavaIoFileDescriptor:a1 withJavaNetInetAddress:a2 withInt:a3];
  }
}

__CFString *sub_100268EC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v23 = JreStrcat("$@$IC", a2, a3, a4, a5, a6, a7, a8, @"failed to connect to ");
  if (v9 >= 1)
  {
    JreStrAppendStrong(&v23, "$I$", v10, v11, v12, v13, v14, v15, @" after ");
  }

  if (a4)
  {
    [a4 getMessage];
    JreStrAppendStrong(&v23, "$$", v16, v17, v18, v19, v20, v21, @": ");
  }

  return v23;
}

id LibcoreIoIoBridge_closeSocketWithJavaIoFileDescriptor_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 valid];
  if (result)
  {
    v3 = [a1 getInt$];
    [a1 setInt$WithInt:0xFFFFFFFFLL];
    v4 = new_JavaIoFileDescriptor_init();
    [(JavaIoFileDescriptor *)v4 setInt$WithInt:v3];
    LibcoreIoAsynchronousCloseMonitor_signalBlockedThreadsWithJavaIoFileDescriptor_(v4);
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_)
    {
      JreThrowNullPointerException();
    }

    return [LibcoreIoLibcore_os_ closeWithJavaIoFileDescriptor:v4];
  }

  return result;
}

uint64_t LibcoreIoIoBridge_isConnectedWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_withInt_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = new_LibcoreIoStructPollfd_init();
  v7 = [IOSObjectArray arrayWithObjects:&v15 count:1 type:LibcoreIoStructPollfd_class_()];
  size = v7->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  elementType = v7->elementType_;
  if (!elementType)
  {
    goto LABEL_14;
  }

  JreStrongAssign(&elementType[1].super.isa, a1);
  v10 = v7->super.size_;
  if (v10 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, 0);
  }

  v11 = v7->elementType_;
  if (!v11)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  LOWORD(v11[2].super.isa) = 4;
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  result = [LibcoreIoLibcore_os_ pollWithLibcoreIoStructPollfdArray:v7 withInt:{a5, v15}];
  if (result)
  {
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    v13 = [LibcoreIoLibcore_os_ getsockoptIntWithJavaIoFileDescriptor:a1 withInt:0xFFFFLL withInt:4103];
    if (v13)
    {
      v14 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"isConnected", v13);
      objc_exception_throw(v14);
    }

    return 1;
  }

  return result;
}

void sub_100269244(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v6 = objc_begin_catch(exception_object);
    if (v5)
    {
      v7 = v6;
      if (([v5 valid] & 1) == 0)
      {
        v13 = new_JavaNetSocketException_initWithNSString_(@"Socket closed");
        objc_exception_throw(v13);
      }

      if (v7)
      {
        v8 = v7[21];
        objc_end_catch();
        if (v8 == 4)
        {
          JUMPOUT(0x1002691ACLL);
        }

        v14 = sub_100268EC4(v4, v3, v2, v7, v9, v10, v11, v12);
        if (v7[21] == 60)
        {
          v15 = new_JavaNetSocketTimeoutException_initWithNSString_withJavaLangThrowable_(v14, v7);
          objc_exception_throw(v15);
        }

        v16 = new_JavaNetConnectException_initWithNSString_withJavaLangThrowable_(v14, v7);
        objc_exception_throw(v16);
      }
    }

    JreThrowNullPointerException();
  }

  _Unwind_Resume(exception_object);
}

JavaLangInteger *sub_100269394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 30)
  {
    if (a2 > 7)
    {
      if (a2 <= 16)
      {
        if (a2 != 8)
        {
          if (a2 == 16)
          {
            if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
            {
              sub_100184238();
            }

            v9 = LibcoreIoLibcore_os_;
            if (LibcoreIoLibcore_os_)
            {

              return [v9 getsockoptInAddrWithJavaIoFileDescriptor:a1 withInt:0 withInt:9];
            }

LABEL_89:
            JreThrowNullPointerException();
          }

LABEL_90:
          v23 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Unknown socket option: ");
          v24 = new_JavaNetSocketException_initWithNSString_(v23);
          objc_exception_throw(v24);
        }

        if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100184238();
        }

        v14 = LibcoreIoLibcore_os_;
        if (!LibcoreIoLibcore_os_)
        {
          goto LABEL_89;
        }

        v15 = a1;
        v16 = 0xFFFFLL;
        v17 = 8;
        goto LABEL_84;
      }

      if (a2 != 17)
      {
        if (a2 != 18)
        {
          goto LABEL_90;
        }

        if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100184238();
        }

        v14 = LibcoreIoLibcore_os_;
        if (!LibcoreIoLibcore_os_)
        {
          goto LABEL_89;
        }

        v15 = a1;
        v16 = 41;
        v17 = 11;
        goto LABEL_84;
      }

      if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100184238();
      }

      v10 = LibcoreIoLibcore_os_;
      if (!LibcoreIoLibcore_os_)
      {
        goto LABEL_89;
      }

      v11 = a1;
      v12 = 41;
      v13 = 10;
      goto LABEL_76;
    }

    if (a2 != 1)
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
          goto LABEL_90;
        }

        if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100184238();
        }

        v14 = LibcoreIoLibcore_os_;
        if (!LibcoreIoLibcore_os_)
        {
          goto LABEL_89;
        }

        v15 = a1;
        v16 = 0xFFFFLL;
        v17 = 4;
        goto LABEL_84;
      }

      if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100184238();
      }

      v10 = LibcoreIoLibcore_os_;
      if (!LibcoreIoLibcore_os_)
      {
        goto LABEL_89;
      }

      v11 = a1;
      v12 = 41;
      v13 = 36;
LABEL_76:
      v20 = [v10 getsockoptIntWithJavaIoFileDescriptor:v11 withInt:v12 withInt:v13];
      goto LABEL_77;
    }

    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100184238();
    }

    v14 = LibcoreIoLibcore_os_;
    if (!LibcoreIoLibcore_os_)
    {
      goto LABEL_89;
    }

    v15 = a1;
    v16 = 6;
    v17 = 1;
    goto LABEL_84;
  }

  if (a2 > 4096)
  {
    if (a2 <= 4098)
    {
      if (a2 == 4097)
      {
        if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100184238();
        }

        v10 = LibcoreIoLibcore_os_;
        if (!LibcoreIoLibcore_os_)
        {
          goto LABEL_89;
        }

        v11 = a1;
        v12 = 0xFFFFLL;
        v13 = 4097;
      }

      else
      {
        if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100184238();
        }

        v10 = LibcoreIoLibcore_os_;
        if (!LibcoreIoLibcore_os_)
        {
          goto LABEL_89;
        }

        v11 = a1;
        v12 = 0xFFFFLL;
        v13 = 4098;
      }

      goto LABEL_76;
    }

    if (a2 != 4099)
    {
      if (a2 != 4102)
      {
        goto LABEL_90;
      }

      if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100184238();
      }

      if (!LibcoreIoLibcore_os_)
      {
        goto LABEL_89;
      }

      v21 = [LibcoreIoLibcore_os_ getsockoptTimevalWithJavaIoFileDescriptor:a1 withInt:0xFFFFLL withInt:4102];
      if (!v21)
      {
        goto LABEL_89;
      }

      v20 = [v21 toMillis];
      goto LABEL_77;
    }

    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100184238();
    }

    v14 = LibcoreIoLibcore_os_;
    if (!LibcoreIoLibcore_os_)
    {
      goto LABEL_89;
    }

    v15 = a1;
    v16 = 0xFFFFLL;
    v17 = 256;
LABEL_84:
    v22 = [v14 getsockoptIntWithJavaIoFileDescriptor:v15 withInt:v16 withInt:v17] != 0;
LABEL_85:

    return JavaLangBoolean_valueOfWithBoolean_(v22);
  }

  if (a2 == 31)
  {
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100184238();
    }

    v10 = LibcoreIoLibcore_os_;
    if (!LibcoreIoLibcore_os_)
    {
      goto LABEL_89;
    }

    v11 = a1;
    v12 = 41;
    v13 = 9;
    goto LABEL_76;
  }

  if (a2 == 32)
  {
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100184238();
    }

    v14 = LibcoreIoLibcore_os_;
    if (!LibcoreIoLibcore_os_)
    {
      goto LABEL_89;
    }

    v15 = a1;
    v16 = 0xFFFFLL;
    v17 = 32;
    goto LABEL_84;
  }

  if (a2 != 128)
  {
    goto LABEL_90;
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100184238();
  }

  if (!LibcoreIoLibcore_os_)
  {
    goto LABEL_89;
  }

  v18 = [LibcoreIoLibcore_os_ getsockoptLingerWithJavaIoFileDescriptor:a1 withInt:0xFFFFLL withInt:128];
  if (!v18)
  {
    goto LABEL_89;
  }

  v19 = v18;
  if (([v18 isOn] & 1) == 0)
  {
    v22 = 0;
    goto LABEL_85;
  }

  v20 = v19[3];
LABEL_77:

  return JavaLangInteger_valueOfWithInt_(v20);
}

id sub_1002698BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if (a2 <= 20)
  {
    if (a2 <= 16)
    {
      if (a2 <= 3)
      {
        if (a2 == 1)
        {
          if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_100184238();
          }

          v40 = LibcoreIoLibcore_os_;
          if (!LibcoreIoLibcore_os_)
          {
            goto LABEL_147;
          }

          objc_opt_class();
          if (!a3)
          {
            goto LABEL_147;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_146;
          }

          v23 = [a3 BOOLeanValue];
          v24 = v40;
          v25 = a1;
          v26 = 6;
          v27 = 1;
          goto LABEL_136;
        }

        if (a2 == 3)
        {
          if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_100184238();
          }

          v33 = LibcoreIoLibcore_os_;
          if (!LibcoreIoLibcore_os_)
          {
            goto LABEL_147;
          }

          objc_opt_class();
          if (!a3)
          {
            goto LABEL_147;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_146;
          }

          [v33 setsockoptIntWithJavaIoFileDescriptor:a1 withInt:0 withInt:3 withInt:{objc_msgSend(a3, "intValue")}];
          if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_100184238();
          }

          v34 = LibcoreIoLibcore_os_;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_146;
          }

          v23 = [a3 intValue];
          v24 = v34;
          v25 = a1;
          v26 = 41;
          v27 = 36;
          goto LABEL_136;
        }
      }

      else
      {
        switch(a2)
        {
          case 4:
            if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
            {
              sub_100184238();
            }

            v47 = LibcoreIoLibcore_os_;
            if (!LibcoreIoLibcore_os_)
            {
              goto LABEL_147;
            }

            objc_opt_class();
            if (!a3)
            {
              goto LABEL_147;
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_146;
            }

            v23 = [a3 BOOLeanValue];
            v24 = v47;
            v25 = a1;
            v26 = 0xFFFFLL;
            v27 = 4;
            goto LABEL_136;
          case 8:
            if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
            {
              sub_100184238();
            }

            v22 = LibcoreIoLibcore_os_;
            if (!LibcoreIoLibcore_os_)
            {
              goto LABEL_147;
            }

            objc_opt_class();
            if (!a3)
            {
              goto LABEL_147;
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_146;
            }

            v23 = [a3 BOOLeanValue];
            v24 = v22;
            v25 = a1;
            v26 = 0xFFFFLL;
            v27 = 8;
            goto LABEL_136;
          case 0x10:
            v52 = new_JavaLangUnsupportedOperationException_initWithNSString_(@"Use IP_MULTICAST_IF2 on Android");
            goto LABEL_151;
        }
      }

      goto LABEL_150;
    }

    if ((a2 - 19) >= 2)
    {
      if (a2 == 17)
      {
        if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100184238();
        }

        v48 = LibcoreIoLibcore_os_;
        if (!LibcoreIoLibcore_os_)
        {
          goto LABEL_147;
        }

        objc_opt_class();
        if (!a3)
        {
          goto LABEL_147;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_146;
        }

        [v48 setsockoptByteWithJavaIoFileDescriptor:a1 withInt:0 withInt:10 withInt:{objc_msgSend(a3, "intValue")}];
        if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100184238();
        }

        v49 = LibcoreIoLibcore_os_;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_146;
        }

        v23 = [a3 intValue];
        v24 = v49;
        v25 = a1;
        v26 = 41;
        v27 = 10;
        goto LABEL_136;
      }

      if (a2 == 18)
      {
        if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100184238();
        }

        v30 = LibcoreIoLibcore_os_;
        if (!LibcoreIoLibcore_os_)
        {
          goto LABEL_147;
        }

        objc_opt_class();
        if (!a3)
        {
          goto LABEL_147;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_146;
        }

        [v30 setsockoptByteWithJavaIoFileDescriptor:a1 withInt:0 withInt:11 withInt:{objc_msgSend(a3, "BOOLeanValue")}];
        if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100184238();
        }

        v31 = LibcoreIoLibcore_os_;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_146;
        }

        v23 = [a3 BOOLeanValue];
        v24 = v31;
        v25 = a1;
        v26 = 41;
        v27 = 11;
        goto LABEL_136;
      }

      goto LABEL_150;
    }

    objc_opt_class();
    if (!a3)
    {
      goto LABEL_147;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_146;
    }

    v36 = a3[2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = 0;
    }

    else
    {
      v37 = 41;
    }

    if (v9 == 19)
    {
      v38 = 80;
    }

    else
    {
      v38 = 81;
    }

    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100184238();
    }

    v39 = LibcoreIoLibcore_os_;
    if (!LibcoreIoLibcore_os_)
    {
      goto LABEL_147;
    }

    return [v39 setsockoptGroupReqWithJavaIoFileDescriptor:a1 withInt:v37 withInt:v38 withLibcoreIoStructGroupReq:a3];
  }

  else
  {
    if (a2 <= 127)
    {
      if ((a2 - 21) < 4)
      {
        objc_opt_class();
        if (!a3)
        {
          goto LABEL_147;
        }

        if (objc_opt_isKindOfClass())
        {
          v11 = a3[2];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = 0;
          }

          else
          {
            v19 = 41;
          }

          v20 = sub_10026A290(v9, v12, v13, v14, v15, v16, v17, v18);
          if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_100184238();
          }

          v21 = LibcoreIoLibcore_os_;
          if (LibcoreIoLibcore_os_)
          {

            return [v21 setsockoptGroupSourceReqWithJavaIoFileDescriptor:a1 withInt:v19 withInt:v20 withLibcoreIoStructGroupSourceReq:a3];
          }

LABEL_147:
          JreThrowNullPointerException();
        }

LABEL_146:
        JreThrowClassCastException();
      }

      if (a2 == 31)
      {
        if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100184238();
        }

        v45 = LibcoreIoLibcore_os_;
        if (!LibcoreIoLibcore_os_)
        {
          goto LABEL_147;
        }

        objc_opt_class();
        if (!a3)
        {
          goto LABEL_147;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_146;
        }

        [v45 setsockoptIpMreqnWithJavaIoFileDescriptor:a1 withInt:0 withInt:9 withInt:{objc_msgSend(a3, "intValue")}];
        if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100184238();
        }

        v46 = LibcoreIoLibcore_os_;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_146;
        }

        v23 = [a3 intValue];
        v24 = v46;
        v25 = a1;
        v26 = 41;
        v27 = 9;
        goto LABEL_136;
      }

      if (a2 == 32)
      {
        if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100184238();
        }

        v32 = LibcoreIoLibcore_os_;
        if (!LibcoreIoLibcore_os_)
        {
          goto LABEL_147;
        }

        objc_opt_class();
        if (!a3)
        {
          goto LABEL_147;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_146;
        }

        v23 = [a3 BOOLeanValue];
        v24 = v32;
        v25 = a1;
        v26 = 0xFFFFLL;
        v27 = 32;
LABEL_136:

        return [v24 setsockoptIntWithJavaIoFileDescriptor:v25 withInt:v26 withInt:v27 withInt:v23];
      }

      goto LABEL_150;
    }

    if (a2 > 4097)
    {
      switch(a2)
      {
        case 0x1002:
          if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_100184238();
          }

          v42 = LibcoreIoLibcore_os_;
          if (!LibcoreIoLibcore_os_)
          {
            goto LABEL_147;
          }

          objc_opt_class();
          if (!a3)
          {
            goto LABEL_147;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_146;
          }

          v23 = [a3 intValue];
          v24 = v42;
          v25 = a1;
          v26 = 0xFFFFLL;
          v27 = 4098;
          goto LABEL_136;
        case 0x1003:
          if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_100184238();
          }

          v41 = LibcoreIoLibcore_os_;
          if (!LibcoreIoLibcore_os_)
          {
            goto LABEL_147;
          }

          objc_opt_class();
          if (!a3)
          {
            goto LABEL_147;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_146;
          }

          v23 = [a3 BOOLeanValue];
          v24 = v41;
          v25 = a1;
          v26 = 0xFFFFLL;
          v27 = 256;
          goto LABEL_136;
        case 0x1006:
          objc_opt_class();
          if (!a3)
          {
            goto LABEL_147;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_146;
          }

          v28 = LibcoreIoStructTimeval_fromMillisWithLong_([a3 intValue]);
          if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_100184238();
          }

          v29 = LibcoreIoLibcore_os_;
          if (!LibcoreIoLibcore_os_)
          {
            goto LABEL_147;
          }

          return [v29 setsockoptTimevalWithJavaIoFileDescriptor:a1 withInt:0xFFFFLL withInt:4102 withLibcoreIoStructTimeval:v28];
      }

LABEL_150:
      v53 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Unknown socket option: ");
      v52 = new_JavaNetSocketException_initWithNSString_(v53);
LABEL_151:
      objc_exception_throw(v52);
    }

    if (a2 != 128)
    {
      if (a2 == 4097)
      {
        if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100184238();
        }

        v35 = LibcoreIoLibcore_os_;
        if (!LibcoreIoLibcore_os_)
        {
          goto LABEL_147;
        }

        objc_opt_class();
        if (!a3)
        {
          goto LABEL_147;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_146;
        }

        v23 = [a3 intValue];
        v24 = v35;
        v25 = a1;
        v26 = 0xFFFFLL;
        v27 = 4097;
        goto LABEL_136;
      }

      goto LABEL_150;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      objc_opt_class();
      if (!a3)
      {
        goto LABEL_147;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_146;
      }

      v44 = JavaLangMath_minWithInt_withInt_([a3 intValue], 0xFFFF);
    }

    else
    {
      v44 = 0;
    }

    v50 = new_LibcoreIoStructLinger_initWithInt_withInt_(isKindOfClass & 1, v44);
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100184238();
    }

    v51 = LibcoreIoLibcore_os_;
    if (!LibcoreIoLibcore_os_)
    {
      goto LABEL_147;
    }

    return [v51 setsockoptLingerWithJavaIoFileDescriptor:a1 withInt:0xFFFFLL withInt:128 withLibcoreIoStructLinger:v50];
  }
}

uint64_t sub_10026A290(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 - 21) >= 4)
  {
    v9 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Unknown java value for setsocketopt op lookup: ");
    v10 = new_JavaLangAssertionError_initWithId_(v9);
    objc_exception_throw(v10);
  }

  return (a1 + 61);
}

id LibcoreIoIoBridge_openWithNSString_withInt_(uint64_t a1, uint64_t a2)
{
  if ((a2 & 3) != 0)
  {
    v4 = 384;
  }

  else
  {
    v4 = 0;
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  v5 = [LibcoreIoLibcore_os_ openWithNSString:a1 withInt:a2 withInt:v4];
  if ([NSString isEqualToString:?]
  {
    v7 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"open", 0x15u);
    objc_exception_throw(v7);
  }

  return v5;
}

uint64_t LibcoreIoIoBridge_readWithJavaIoFileDescriptor_withByteArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a2 + 8), a3, a4);
  if (!a4)
  {
    return 0;
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  LODWORD(result) = [LibcoreIoLibcore_os_ readWithJavaIoFileDescriptor:a1 withByteArray:a2 withInt:a3 withInt:a4];
  if (result)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

id LibcoreIoIoBridge_writeWithJavaIoFileDescriptor_withByteArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = a4;
  v5 = a3;
  result = JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a2 + 8), a3, a4);
  if (v4 >= 1)
  {
    do
    {
      if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
      {
        objc_opt_class();
      }

      if (!LibcoreIoLibcore_os_)
      {
        JreThrowNullPointerException();
      }

      result = [LibcoreIoLibcore_os_ writeWithJavaIoFileDescriptor:a1 withByteArray:a2 withInt:v5 withInt:v4];
      v4 = (v4 - result);
      v5 = (result + v5);
    }

    while (v4 > 0);
  }

  return result;
}

void sub_10026A6E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    if (v2)
    {
      objc_exception_throw([v2 rethrowAsIOException]);
    }

    JreThrowNullPointerException();
  }

  _Unwind_Resume(exception_object);
}

id LibcoreIoIoBridge_sendtoWithJavaIoFileDescriptor_withByteArray_withInt_withInt_withInt_withJavaNetInetAddress_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a4 <= 0 && !a6)
  {
    return 0;
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  LODWORD(v15) = a7;
  return [LibcoreIoLibcore_os_ sendtoWithJavaIoFileDescriptor:a1 withByteArray:a2 withInt:a3 withInt:a4 withInt:a5 withJavaNetInetAddress:a6 withInt:v15];
}

id LibcoreIoIoBridge_sendtoWithJavaIoFileDescriptor_withJavaNioByteBuffer_withInt_withJavaNetInetAddress_withInt_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    goto LABEL_4;
  }

  if (!a2)
  {
    JreThrowNullPointerException();
  }

  result = [a2 remaining];
  if (result)
  {
LABEL_4:
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_)
    {
      JreThrowNullPointerException();
    }

    return [LibcoreIoLibcore_os_ sendtoWithJavaIoFileDescriptor:a1 withJavaNioByteBuffer:a2 withInt:a3 withJavaNetInetAddress:a4 withInt:a5];
  }

  return result;
}

uint64_t sub_10026A978(uint64_t result, _DWORD *a2)
{
  if (!result)
  {
    if (a2)
    {
      if (a2[21] != 35)
      {
        goto LABEL_5;
      }

      return result;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  v2 = a2[21];
  if (v2 != 54 && v2 != 61)
  {
LABEL_5:
    objc_exception_throw([a2 rethrowAsSocketException]);
  }

  return result;
}

uint64_t LibcoreIoIoBridge_recvfromWithBoolean_withJavaIoFileDescriptor_withByteArray_withInt_withInt_withInt_withJavaNetDatagramPacket_withBoolean_(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  v16 = 0;
  if (a7 && (a8 & 1) == 0)
  {
    v16 = new_JavaNetInetSocketAddress_init();
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  return sub_10026AC68(a1, a7, a8, v16, [LibcoreIoLibcore_os_ recvfromWithJavaIoFileDescriptor:a2 withByteArray:a3 withInt:a4 withInt:a5 withInt:a6 withJavaNetInetSocketAddress:v16]);
}

uint64_t LibcoreIoIoBridge_recvfromWithBoolean_withJavaIoFileDescriptor_withJavaNioByteBuffer_withInt_withJavaNetDatagramPacket_withBoolean_(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v12 = 0;
  if (a5 && (a6 & 1) == 0)
  {
    v12 = new_JavaNetInetSocketAddress_init();
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  return sub_10026AC68(a1, a5, a6, v12, [LibcoreIoLibcore_os_ recvfromWithJavaIoFileDescriptor:a2 withJavaNioByteBuffer:a3 withInt:a4 withJavaNetInetSocketAddress:v12]);
}

uint64_t sub_10026AC68(char a1, void *a2, char a3, void *a4, uint64_t a5)
{
  v5 = a5;
  if (!a5 && (a1 & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    [a2 setReceivedLengthWithInt:a5];
    if ((a3 & 1) == 0)
    {
      if (!a4)
      {
        JreThrowNullPointerException();
      }

      [a2 setAddressWithJavaNetInetAddress:{objc_msgSend(a4, "getAddress")}];
      [a2 setPortWithInt:{objc_msgSend(a4, "getPort")}];
    }
  }

  return v5;
}

uint64_t sub_10026AD1C(uint64_t result, int a2, _DWORD *a3)
{
  if (!result)
  {
    if (a2)
    {
      if (a3)
      {
        v3 = a3[21];
        if (v3 == 61)
        {
          v4 = new_JavaNetPortUnreachableException_initWithNSString_withJavaLangThrowable_(&stru_100484358, a3);
          goto LABEL_13;
        }

LABEL_11:
        if (v3 != 35)
        {
LABEL_15:
          objc_exception_throw([a3 rethrowAsSocketException]);
        }

        v4 = new_JavaNetSocketTimeoutException_initWithJavaLangThrowable_(a3);
LABEL_13:
        objc_exception_throw(v4);
      }
    }

    else if (a3)
    {
      v3 = a3[21];
      goto LABEL_11;
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  if (a3[21] != 35)
  {
    goto LABEL_15;
  }

  return result;
}

id LibcoreIoIoBridge_socketWithBoolean_(int a1)
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = [LibcoreIoLibcore_os_ socketWithInt:30 withInt:v2 withInt:0];
  if ((a1 & 1) == 0)
  {
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    [LibcoreIoLibcore_os_ setsockoptIntWithJavaIoFileDescriptor:v3 withInt:41 withInt:10 withInt:1];
  }

  return v3;
}

id LibcoreIoIoBridge_getSocketLocalAddressWithJavaIoFileDescriptor_(uint64_t a1)
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  v2 = [LibcoreIoLibcore_os_ getsocknameWithJavaIoFileDescriptor:a1];
  objc_opt_class();
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v2 getAddress];
}

void sub_10026AF5C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    if (v2)
    {
      objc_exception_throw([v2 rethrowAsSocketException]);
    }

    JreThrowNullPointerException();
  }

  _Unwind_Resume(exception_object);
}

id LibcoreIoIoBridge_getSocketLocalPortWithJavaIoFileDescriptor_(uint64_t a1)
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  v2 = [LibcoreIoLibcore_os_ getsocknameWithJavaIoFileDescriptor:a1];
  objc_opt_class();
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v2 getPort];
}

void sub_10026B040(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    if (v2)
    {
      objc_exception_throw([v2 rethrowAsSocketException]);
    }

    JreThrowNullPointerException();
  }

  _Unwind_Resume(exception_object);
}

id JavaLangReflectAccessibleObject_setAccessibleWithJavaLangReflectAccessibleObjectArray_withBoolean_(void *a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(a1);
        }

        [*(*(&v8 + 1) + 8 * v7) setAccessibleWithBoolean:a2];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

id decodeTypeEncoding(const char *a1)
{
  v2 = strlen(a1);
  v3 = *a1;
  if (v2 >= 4 && v3 == 64)
  {
    if (a1[2] == 60)
    {
      v4 = v2 - 5;
      v5 = a1 + 3;
    }

    else
    {
      v4 = v2 - 3;
      v5 = a1 + 2;
    }

    v7 = strndup(v5, v4);
    v8 = [NSString stringWithUTF8String:v7];
    free(v7);

    return [IOSClass forName:v8];
  }

  if (*a1 > 0x63u)
  {
    if (*a1 <= 0x6Bu)
    {
      switch(v3)
      {
        case 'd':

          return +[IOSClass doubleClass];
        case 'f':

          return +[IOSClass floatClass];
        case 'i':

          return +[IOSClass intClass];
        default:
          goto LABEL_62;
      }
    }

    else
    {
      if (*a1 <= 0x72u)
      {
        if (v3 != 108 && v3 != 113)
        {
LABEL_62:
          objc_exception_throw([(JavaLangError *)[JavaLangAssertionError alloc] initWithNSString:[NSString stringWithFormat:@"unknown Java type encoding: '%s'", a1]]);
        }

        goto LABEL_15;
      }

      if (v3 == 115)
      {

        return +[IOSClass shortClass];
      }

      else
      {
        if (v3 != 118)
        {
          goto LABEL_62;
        }

        return +[IOSClass voidClass];
      }
    }
  }

  else if (*a1 <= 0x4Bu)
  {
    switch(v3)
    {
      case '#':

        return IOSClass_class_();
      case '@':

        return NSObject_class_();
      case 'B':

        return +[IOSClass BOOLeanClass];
      default:
        goto LABEL_62;
    }
  }

  else
  {
    if (*a1 <= 0x52u)
    {
      if (v3 != 76 && v3 != 81)
      {
        goto LABEL_62;
      }

LABEL_15:

      return +[IOSClass longClass];
    }

    if (v3 == 83)
    {

      return +[IOSClass charClass];
    }

    else
    {
      if (v3 != 99)
      {
        goto LABEL_62;
      }

      return +[IOSClass byteClass];
    }
  }
}

id JavaUtilZipInflater_initWithBoolean_(uint64_t a1, int a2)
{
  *(a1 + 24) = xmmword_1003148A0;
  v4 = DalvikSystemCloseGuard_get();
  JreStrongAssign((a1 + 40), v4);
  *(a1 + 24) = sub_10026B75C(a2);
  v5 = *(a1 + 40);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  return [v5 openWithNSString:@"end"];
}

z_stream *sub_10026B75C(int a1)
{
  v2 = malloc_type_malloc(0x70uLL, 0x10B0040E8CA615DuLL);
  v3 = v2;
  v2->zfree = 0;
  v2->opaque = 0;
  v2->zalloc = 0;
  v2->adler = 1;
  if (a1)
  {
    v4 = -15;
  }

  else
  {
    v4 = 15;
  }

  if (inflateInit2_(v2, v4, "1.2.12", 112))
  {
    free(v3);
    objc_exception_throw(objc_alloc_init(JavaLangIllegalArgumentException));
  }

  return v3;
}

uint64_t sub_10026BD54(uint64_t a1, int *a2, int a3, uInt a4, z_stream *a5)
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
    v8 = [a2 byteRefAtIndex:a3];
    LODWORD(next_out) = v8;
    a5->next_out = v8;
  }

  a5->avail_out = a4;
  next_in = a5->next_in;
  v12 = inflate(a5, 2);
  if (v12 > 0)
  {
    if (v12 == 2)
    {
      v13 = 17;
    }

    else
    {
      if (v12 != 1)
      {
        goto LABEL_17;
      }

      v13 = 16;
    }

    *(a1 + v13) = 1;
  }

  else
  {
    if (v12 == -2)
    {
      return 0;
    }

    if (v12)
    {
LABEL_17:
      objc_exception_throw(objc_alloc_init(JavaUtilZipDataFormatException));
    }
  }

  result = (LODWORD(a5->next_out) - next_out);
  *(a1 + 12) += LODWORD(a5->next_in) - next_in;
  return result;
}

uint64_t sub_10026BF34(z_stream *a1)
{
  result = inflateReset(a1);
  if (result)
  {
    objc_exception_throw(objc_alloc_init(JavaLangIllegalArgumentException));
  }

  return result;
}

uint64_t sub_10026C08C(void *a1, int a2, uInt a3, z_stream *a4)
{
  result = inflateSetDictionary(a4, [a1 byteRefAtIndex:a2], a3);
  if (result)
  {
    objc_exception_throw(objc_alloc_init(JavaLangIllegalArgumentException));
  }

  return result;
}

uint64_t sub_10026C2B0(void *a1, void *a2, off_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [[JavaIoFileInputStream alloc] initWithJavaIoFileDescriptor:a2];
  lseek([a2 getInt$], a3, 0);
  v11 = [IOSByteArray arrayWithLength:a4];
  if ([(JavaIoFileInputStream *)v10 readWithByteArray:v11 withInt:0 withInt:a4]< 0)
  {
    objc_exception_throw(objc_alloc_init(JavaIoIOException));
  }

  [a1 setInputImplWithByteArray:v11 withInt:0 withInt:a4 withLong:a5];
  [(JavaIoFileInputStream *)v10 close];

  return a4;
}

JavaUtilZipInflater *new_JavaUtilZipInflater_initWithBoolean_(int a1)
{
  v2 = [JavaUtilZipInflater alloc];
  JavaUtilZipInflater_initWithBoolean_(v2, a1);
  return v2;
}

uint64_t sub_10026C668(unint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v8 = JavaLangIllegalArgumentException;
    goto LABEL_12;
  }

  v4 = JavaLangThread_currentThread();
  v5 = v4;
  if (v4->interrupted_)
  {
    v4->interrupted_ = 0;
LABEL_11:
    v8 = JavaLangInterruptedException;
    goto LABEL_12;
  }

  if (v4->blocker_)
  {
    sub_10026C840();
  }

  v4->blocker_ = a1;
  result = j2objc_sync_wait(a1, a2);
  v5->blocker_ = 0;
  interrupted = v5->interrupted_;
  v5->interrupted_ = 0;
  if (interrupted)
  {
    goto LABEL_11;
  }

  if (result != -2 && result)
  {
    if (result != -1)
    {
      v9 = [[JavaLangInternalError alloc] initWithNSString:[NSString stringWithFormat:@"system error %d", result]];
LABEL_13:
      objc_exception_throw(v9);
    }

    v8 = JavaLangIllegalMonitorStateException;
LABEL_12:
    v9 = objc_alloc_init(v8);
    goto LABEL_13;
  }

  return result;
}

uint64_t NSObject_class_()
{
  if (qword_1005568D8 != -1)
  {
    sub_10026C86C();
  }

  return qword_1005568D0;
}

void sub_10026CD6C(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x10026CD60);
}

id sub_10026CD7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 136);
  if (!v3)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v5 = [v3 size];
  if ((v5 - 1) < 0)
  {
    return 0;
  }

  LODWORD(v6) = v5;
  while (1)
  {
    v6 = (v6 - 1);
    v7 = [*(a1 + 136) getWithInt:v6];
    v8 = v7;
    if (!a2)
    {
      break;
    }

    if (!v7)
    {
      goto LABEL_15;
    }

    if ([a2 isEqual:{objc_msgSend(v7, "getKey")}])
    {
      goto LABEL_12;
    }

LABEL_10:
    if (v6 < 1)
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  if ([v7 getKey])
  {
    goto LABEL_10;
  }

LABEL_12:

  return [v8 getValue];
}

void sub_10026D018(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x10026D008);
}

id sub_10026D120(uint64_t a1, void *a2, void *a3)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 136);
  if (!v3)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v7 = [*(a1 + 136) countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (!v11)
        {
          goto LABEL_14;
        }

        if (*(v11 + 8) == a2)
        {
          [*(a1 + 136) removeWithId:v13];
          return [*(a1 + 136) addWithId:{sub_10026E754(a2, a3)}];
        }
      }

      v8 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return [*(a1 + 136) addWithId:{sub_10026E754(a2, a3)}];
}

id sub_10026D2DC(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 136);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = sub_10026E754(a2, a3);

  return [v3 addWithId:v4];
}

id sub_10026D440(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  if (!v2 || (v4 = [v2 iterator]) == 0)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v5 = v4;
  while (1)
  {
    result = [v5 hasNext];
    if ((result & 1) == 0)
    {
      return result;
    }

    v7 = [v5 next];
    if (!v7)
    {
      goto LABEL_11;
    }

    if (v7[1] == a2)
    {

      return [v5 remove];
    }
  }
}

void sub_10026D5AC(uint64_t a1)
{
  if (*(a1 + 72) == -1)
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      objc_exception_throw(v2);
    }

    [a1 connect];
    v3 = objc_autoreleasePoolPush();
    v4 = +[NSMutableURLRequest requestWithURL:](NSMutableURLRequest, "requestWithURL:", +[NSURL URLWithString:](NSURL, "URLWithString:", [*(a1 + 8) toExternalForm]));
    [(NSMutableURLRequest *)v4 setHTTPShouldHandleCookies:0];
    [(NSMutableURLRequest *)v4 setHTTPMethod:*(a1 + 64)];
    [(NSMutableURLRequest *)v4 setCachePolicy:*(a1 + 32) ^ 1];
    v5 = [a1 getReadTimeout];
    if (v5 < 1)
    {
      v6 = 1.79769313e308;
    }

    else
    {
      v6 = v5 / 1000.0;
    }

    [(NSMutableURLRequest *)v4 setTimeoutInterval:v6];
    v7 = [*(a1 + 136) size];
    if (v7 >= 1)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        v10 = [*(a1 + 136) getWithInt:v9];
        if (v10[1])
        {
          -[NSMutableURLRequest setValue:forHTTPHeaderField:](v4, "setValue:forHTTPHeaderField:", [v10 getValue], v10[1]);
        }

        v9 = (v9 + 1);
      }

      while (v8 != v9);
    }

    if (*(a1 + 34))
    {
      if ([*(a1 + 64) isEqualToString:@"GET"])
      {
        *(a1 + 64) = @"POST";
      }

      else if (([*(a1 + 64) isEqualToString:@"POST"] & 1) == 0 && (objc_msgSend(*(a1 + 64), "isEqualToString:", @"PUT") & 1) == 0 && (objc_msgSend(*(a1 + 64), "isEqualToString:", @"PATCH") & 1) == 0)
      {
        v33 = [[JavaNetProtocolException alloc] initWithNSString:[NSString stringWithFormat:@"%@ does not support writing", *(a1 + 64)]];
        *(a1 + 152) = v33;
        objc_exception_throw(v33);
      }

      v11 = *(a1 + 112);
      if (v11)
      {
        -[NSMutableURLRequest setHTTPBody:](v4, "setHTTPBody:", [v11 data]);
      }
    }

    v51 = 0;
    v52 = &v51;
    v53 = 0x3052000000;
    v54 = sub_10026E6B4;
    v55 = sub_10026E6C4;
    v56 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3052000000;
    v48 = sub_10026E6B4;
    v49 = sub_10026E6C4;
    v50 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3052000000;
    v42 = sub_10026E6B4;
    v43 = sub_10026E6C4;
    v44 = 0;
    v12 = dispatch_semaphore_create(0);
    v13 = +[NSURLSession sessionWithConfiguration:delegate:delegateQueue:](NSURLSession, "sessionWithConfiguration:delegate:delegateQueue:", +[NSURLSessionConfiguration defaultSessionConfiguration], a1, 0);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10026E6D0;
    v38[3] = &unk_1004710C0;
    v38[6] = &v45;
    v38[7] = &v39;
    v38[4] = v12;
    v38[5] = &v51;
    [(NSURLSessionDataTask *)[(NSURLSession *)v13 dataTaskWithRequest:v4 completionHandler:v38] resume];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v12);
    [(NSURLSession *)v13 finishTasksAndInvalidate];
    v14 = v52[5];
    v15 = v46[5];
    v16 = v40[5];
    if (!v46[5])
    {
      goto LABEL_23;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = [JavaLangAssertionError alloc];
      v30 = v46[5];
      v31 = objc_opt_class();
      v32 = [(JavaLangError *)v29 initWithNSString:[NSString stringWithFormat:@"Unknown class %@", NSStringFromClass(v31)]];
      objc_exception_throw(v32);
    }

    v17 = v46[5];
    if (v17)
    {
      v18 = [v46[5] statusCode];
    }

    else
    {
LABEL_23:
      v18 = [v52[5] code];
      v17 = 0;
    }

    *(a1 + 72) = v18;
    v19 = sub_10026DE2C(*(a1 + 72));
    JreStrongAssign((a1 + 80), v19);
    v20 = v40;
    v21 = v40[5];
    if (v21)
    {
      LODWORD(v21) = [v21 length];
      v20 = v40;
    }

    *(a1 + 144) = v21;
    if (v20[5])
    {
      v22 = [NSDataInputStream alloc];
      v23 = [(NSDataInputStream *)v22 initWithData:v40[5]];
      v24 = &OBJC_IVAR___ComGoogleJ2objcNetIosHttpURLConnection_errorDataStream_;
      if (!v52[5] && [v17 statusCode] <= 399)
      {
        v24 = &OBJC_IVAR___ComGoogleJ2objcNetIosHttpURLConnection_responseDataStream_;
      }

      JreStrongAssign((a1 + *v24), v23);
    }

    v25 = [*(a1 + 8) description];
    v26 = v52[5];
    if (!v26)
    {
      [*(a1 + 136) clear];
      JreStrongAssign((a1 + 8), -[JavaNetURL initWithNSString:]([JavaNetURL alloc], "initWithNSString:", [objc_msgSend(v17 "URL")]));
      [a1 addHeaderWithNSString:0 withNSString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"HTTP/1.1 %d %@", *(a1 + 72), *(a1 + 80))}];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10026E744;
      v37[3] = &unk_1004710E8;
      v37[4] = a1;
      [objc_msgSend(v17 "allHeaderFields")];
      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&v45, 8);
      _Block_object_dispose(&v51, 8);
      objc_autoreleasePoolPop(v3);
      return;
    }

    if ([objc_msgSend(v26 "domain")])
    {
      v27 = [v52[5] code];
      if (v27 > -1004)
      {
        switch(v27)
        {
          case -1003:
            v34 = off_1003E8CC8;
            break;
          case -1001:
            v34 = off_1003E8CC0;
            break;
          case -1000:
            v34 = off_1003E8CB8;
            break;
          default:
            goto LABEL_51;
        }

        v28 = objc_alloc(*v34);
      }

      else
      {
        if (v27 != -1200 && v27 != -1009 && v27 != -1004)
        {
          goto LABEL_51;
        }

        v28 = [JavaNetConnectException alloc];
        v25 = [v52[5] description];
      }

      *(a1 + 152) = [(JavaNetConnectException *)v28 initWithNSString:v25];
    }

LABEL_51:
    v35 = *(a1 + 152);
    if (!v35)
    {
      v36 = [JavaIoIOException alloc];
      v35 = -[JavaIoIOException initWithNSString:](v36, "initWithNSString:", [v52[5] description]);
      *(a1 + 152) = v35;
    }

    objc_exception_throw(v35);
  }
}

void sub_10026DD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

id sub_10026DE2C(int a1)
{
  if ((atomic_load_explicit(ComGoogleJ2objcNetIosHttpURLConnection__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10026E7AC();
  }

  v2 = qword_1005568E0;
  if (!qword_1005568E0)
  {
    JreThrowNullPointerException();
  }

  v3 = JavaLangInteger_valueOfWithInt_(a1);

  return [v2 getWithId:v3];
}

ComGoogleJ2objcNetIosHttpURLConnection *new_ComGoogleJ2objcNetIosHttpURLConnection_initWithJavaNetURL_(void *a1)
{
  v2 = [ComGoogleJ2objcNetIosHttpURLConnection alloc];
  JavaNetHttpURLConnection_initWithJavaNetURL_(v2, a1);
  v3 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&v2->headers_, v3);
  return v2;
}

intptr_t sub_10026E6D0(void *a1, void *a2, void *a3, void *a4)
{
  *(*(a1[5] + 8) + 40) = a4;
  *(*(a1[6] + 8) + 40) = a3;
  *(*(a1[7] + 8) + 40) = a2;
  v7 = a1[4];

  return dispatch_semaphore_signal(v7);
}

ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry *sub_10026E754(void *a1, void *a2)
{
  v4 = [ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry alloc];
  JreStrongAssign(&v4->key_, a1);
  JreStrongAssign(&v4->value_, a2);
  return v4;
}

JavaUtilLoggingLoggingPermission *new_JavaUtilLoggingLoggingPermission_initWithNSString_withNSString_()
{
  v0 = [JavaUtilLoggingLoggingPermission alloc];
  JavaSecurityBasicPermission_initWithNSString_withNSString_(v0);
  return v0;
}

__CFString *sub_10026EC4C(void *a1, __CFString *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if ([(__CFString *)a2 hasPrefix:@"/"])
  {
    v4 = a2;
  }

  else
  {
    if (!a1)
    {
      return a2;
    }

    v5 = [a1 substring:0 endIndex:{objc_msgSend(a1, "lastIndexOf:", 47) + 1}];
    v4 = JreStrcat("$$", v6, v7, v8, v9, v10, v11, v12, v5);
  }

  return LibcoreNetUrlUrlUtils_canonicalizePathWithNSString_withBoolean_(v4, 1);
}

JavaNioCharsetUnmappableCharacterException *new_JavaNioCharsetUnmappableCharacterException_initWithInt_(unsigned int a1)
{
  v2 = [JavaNioCharsetUnmappableCharacterException alloc];
  JavaNioCharsetCharacterCodingException_init(v2, v3);
  *(&v2->super.super.super.super.rawFrameCount + 1) = a1;
  return v2;
}

JavaNetPlainServerSocketImpl *new_JavaNetPlainServerSocketImpl_init()
{
  v0 = [JavaNetPlainServerSocketImpl alloc];
  JavaNetPlainSocketImpl_init(v0);
  return v0;
}

uint64_t JavaLangInteger_compareWithInt_withInt_(int a1, int a2)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
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

void sub_10026F680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v8 = JreStrcat("$$C", a2, a3, a4, a5, a6, a7, a8, @"Invalid int: ");
  v9 = new_JavaLangNumberFormatException_initWithNSString_(v8);
  objc_exception_throw(v9);
}

double JavaLangInteger_decodeWithNSString_(void *a1)
{
  if (atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_24:
    JreThrowNullPointerException();
  }

  sub_1001B7348();
  if (!a1)
  {
    goto LABEL_24;
  }

LABEL_3:
  v9 = [a1 length];
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = [a1 charAtWithInt:0];
  v11 = v10;
  if (v10 == 45)
  {
    if (v9 == 1)
    {
      goto LABEL_25;
    }

    v12 = 1;
    v10 = [a1 charAtWithInt:1];
  }

  else
  {
    v12 = 0;
  }

  if (v10 == 35)
  {
    v12 = (v12 + 1);
  }

  else
  {
    if (v10 != 48)
    {
      v14 = 10;
      goto LABEL_19;
    }

    if (v12 + 1 == v9)
    {
      v13 = 0;
      goto LABEL_20;
    }

    if (([a1 charAtWithInt:(v12 + 1)] & 0xFFFFFFDF) != 0x58)
    {
      v14 = 8;
      v12 = (v12 + 1);
      goto LABEL_19;
    }

    v12 = v12 | 2;
  }

  if (v12 == v9)
  {
LABEL_25:
    sub_10026F680(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v14 = 16;
LABEL_19:
  v13 = sub_10026FC30(a1, v12, v14, v11 == 45);
LABEL_20:

  JavaLangInteger_valueOfWithInt_(v13);
  return result;
}

void JavaLangInteger_getIntegerWithNSString_(void *a1)
{
  if (atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    sub_1001B7348();
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
      JavaLangInteger_decodeWithNSString_(PropertyWithNSString);
    }
  }
}

void JavaLangInteger_getIntegerWithNSString_withInt_(void *a1, int a2)
{
  if (atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1001B7348();
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
      JavaLangInteger_decodeWithNSString_(PropertyWithNSString);
      return;
    }
  }

LABEL_7:

  JavaLangInteger_valueOfWithInt_(a2);
}

uint64_t JavaLangInteger_getIntegerWithNSString_withJavaLangInteger_(void *a1, uint64_t a2)
{
  if (atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      return a2;
    }
  }

  else
  {
    sub_1001B7348();
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
      JavaLangInteger_decodeWithNSString_(PropertyWithNSString);
      return v5;
    }
  }

  return a2;
}

uint64_t JavaLangInteger_parseIntWithNSString_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return JavaLangInteger_parseIntWithNSString_withInt_(a1, 10, a3, a4, a5, a6, a7, a8);
}

uint64_t JavaLangInteger_parseIntWithNSString_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  if ((v8 - 37) <= 0xFFFFFFDC)
  {
    v20 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Invalid radix: ");
    v21 = new_JavaLangNumberFormatException_initWithNSString_(v20);
    objc_exception_throw(v21);
  }

  if (!a1)
  {
    sub_10026F680(0, a2, a3, a4, a5, a6, a7, a8);
  }

  v17 = [a1 length];
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = [a1 charAtWithInt:0];
  v10 = 0;
  if (v18 != 45)
  {
    goto LABEL_9;
  }

  if (v17 == 1)
  {
LABEL_12:
    sub_10026F680(a1, v10, v11, v12, v13, v14, v15, v16);
  }

  v10 = 1;
LABEL_9:

  return sub_10026FC30(a1, v10, v8, v18 == 45);
}

uint64_t sub_10026FC30(void *a1, uint64_t a2, int a3, char a4)
{
  if (atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  sub_1001B7348();
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
    if (v18 != -1 && 0x80000000 / a3 <= v16)
    {
      a2 = (a2 + 1);
      v19 = v16 * a3 - v18 <= v16;
      v16 = (v16 * a3 - v18);
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
      sub_10026F680(a1, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  return v16;
}

NSString *JavaLangInteger_toBinaryStringWithInt_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return JavaLangIntegralToString_intToBinaryStringWithInt_(a1);
}

NSString *JavaLangInteger_toHexStringWithInt_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return JavaLangIntegralToString_intToHexStringWithInt_withBoolean_withInt_(a1, 0, 0);
}

NSString *JavaLangInteger_toOctalStringWithInt_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return JavaLangIntegralToString_intToOctalStringWithInt_(a1);
}

NSString *JavaLangInteger_toStringWithInt_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return JavaLangIntegralToString_intToStringWithInt_(a1);
}

NSString *JavaLangInteger_toStringWithInt_withInt_(unsigned int a1, int a2)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return JavaLangIntegralToString_intToStringWithInt_withInt_(a1, a2);
}

JavaLangInteger *JavaLangInteger_valueOfWithNSString_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  v9 = JavaLangInteger_parseIntWithNSString_(a1, a2, a3, a4, a5, a6, a7, a8);

  return JavaLangInteger_valueOfWithInt_(v9);
}

JavaLangInteger *JavaLangInteger_valueOfWithNSString_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  v10 = JavaLangInteger_parseIntWithNSString_withInt_(a1, a2, a3, a4, a5, a6, a7, a8);

  return JavaLangInteger_valueOfWithInt_(v10);
}

uint64_t JavaLangInteger_highestOneBitWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  v2 = a1 | (a1 >> 1) | ((a1 | (a1 >> 1)) >> 2);
  v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
  return (v3 | (v3 >> 16)) - ((v3 | (v3 >> 16)) >> 1);
}

uint64_t JavaLangInteger_numberOfLeadingZerosWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  v2 = a1 << 16;
  if (a1 < 0x10000)
  {
    v3 = 17;
  }

  else
  {
    v2 = a1;
    v3 = 1;
  }

  v4 = HIBYTE(v2);
  if (!HIBYTE(v2))
  {
    v2 <<= 8;
  }

  if (!v4)
  {
    v3 |= 8u;
  }

  v5 = v2 >> 28;
  if (!(v2 >> 28))
  {
    v2 *= 16;
  }

  if (!v5)
  {
    v3 |= 4u;
  }

  v6 = v2 >> 30;
  if (!(v2 >> 30))
  {
    v2 *= 4;
  }

  if (!v6)
  {
    v3 |= 2u;
  }

  v7 = v3 + (v2 >> 31);
  if (a1 <= 0)
  {
    return ~(a1 >> 26) & 0x20;
  }

  else
  {
    return v7;
  }
}

uint64_t JavaLangInteger_numberOfTrailingZerosWithInt_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  if (!qword_1005568E8)
  {
    JreThrowNullPointerException();
  }

  v2 = (72416175 * (-a1 & a1)) >> 26;
  v3 = *(qword_1005568E8 + 8);
  if (v2 >= v3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, v2);
  }

  return *(qword_1005568E8 + 12 + v2);
}

uint64_t JavaLangInteger_bitCountWithInt_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  v2 = ((((a1 - ((a1 >> 1) & 0x55555555)) >> 2) & 0x33333333) + ((a1 - ((a1 >> 1) & 0x55555555)) & 0x33333333) + (((((a1 - ((a1 >> 1) & 0x55555555)) >> 2) & 0x33333333) + ((a1 - ((a1 >> 1) & 0x55555555)) & 0x33333333)) >> 4)) & 0xF0F0F0F;
  return (v2 + (v2 >> 8) + ((v2 + (v2 >> 8)) >> 16)) & 0x3F;
}

uint64_t JavaLangInteger_rotateLeftWithInt_withInt_(int a1, char a2)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return __ROR4__(a1, -a2);
}

uint64_t JavaLangInteger_reverseBytesWithInt_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return bswap32(a1);
}

uint64_t JavaLangInteger_signumWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return (a1 >> 31) | (a1 > 0);
}

JavaLangInteger *JavaLangInteger_valueOfWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  if (a1 == a1)
  {
    if (!qword_1005568F0)
    {
      JreThrowNullPointerException();
    }

    v4 = (a1 + 128);
    v5 = *(qword_1005568F0 + 8);
    if (v4 >= v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v5, v4);
    }

    return *(qword_1005568F0 + 24 + 8 * v4);
  }

  else
  {
    v2 = [JavaLangInteger alloc];
    v2->value_ = a1;

    return v2;
  }
}

JavaLangInteger *new_JavaLangInteger_initWithInt_(int a1)
{
  result = [JavaLangInteger alloc];
  result->value_ = a1;
  return result;
}

uint64_t JavaLangInteger_class_()
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  if (qword_100556900 != -1)
  {
    sub_100270718();
  }

  return qword_1005568F8;
}

JavaUtilConcurrentAtomicAtomicLong *new_JavaUtilConcurrentAtomicAtomicLong_initWithLong_(unint64_t a1)
{
  result = [JavaUtilConcurrentAtomicAtomicLong alloc];
  atomic_store(a1, &result->value_);
  return result;
}

JavaNioByteBufferAsShortBuffer *JavaNioByteBufferAsShortBuffer_asShortBufferWithJavaNioByteBuffer_(void *a1)
{
  if (!a1 || (v2 = [a1 slice]) == 0)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  [v2 orderWithJavaNioByteOrder:{objc_msgSend(a1, "order")}];
  v4 = [JavaNioByteBufferAsShortBuffer alloc];
  sub_100270A6C(v4, v3);

  return v4;
}

id sub_100270A6C(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 capacity];
  JavaNioShortBuffer_initWithInt_withLong_(a1, (v4 / 2), a2[4], v5, v6, v7, v8, v9);
  JreStrongAssign((a1 + 40), a2);
  v10 = *(a1 + 40);

  return [v10 clear];
}

id JavaNioShortArrayBuffer_initWithShortArray_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaNioShortBuffer_initWithInt_withLong_(a1, a2[2], 0, a4, a5, a6, a7, a8);
  result = JreStrongAssign((a1 + 40), a2);
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  return result;
}

JavaNioShortArrayBuffer *sub_1002713FC(uint64_t a1, int a2, BOOL a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_100271624([a1 capacity], *(a1 + 40), *(a1 + 48), a3);
  v5->super.super.limit_ = *(a1 + 12);
  v5->super.super.position_ = [a1 position];
  v5->super.super.mark_ = a2;
  return v5;
}

JavaNioShortArrayBuffer *sub_100271624(uint64_t a1, void *a2, int a3, BOOL a4)
{
  v8 = [JavaNioShortArrayBuffer alloc];
  JavaNioShortBuffer_initWithInt_withLong_(v8, a1, 0, v9, v10, v11, v12, v13);
  JreStrongAssign(&v8->backingArray_, a2);
  v8->arrayOffset_ = a3;
  v8->isReadOnly_ = a4;
  return v8;
}

JavaNioShortArrayBuffer *new_JavaNioShortArrayBuffer_initWithShortArray_(unsigned int *a1)
{
  v2 = [JavaNioShortArrayBuffer alloc];
  JavaNioShortArrayBuffer_initWithShortArray_(v2, a1, v3, v4, v5, v6, v7, v8);
  return v2;
}

JavaNioDoubleArrayBuffer *JavaNioDoubleBuffer_allocateWithInt_(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0x80000000) != 0)
  {
    v10 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"capacity < 0: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  v8 = new_JavaNioDoubleArrayBuffer_initWithDoubleArray_([IOSDoubleArray arrayWithLength:a1]);

  return v8;
}

JavaNioDoubleArrayBuffer *JavaNioDoubleBuffer_wrapWithDoubleArray_withInt_withInt_(unsigned int *a1, int a2, int a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(a1[2], a2, a3);
  result = new_JavaNioDoubleArrayBuffer_initWithDoubleArray_(a1);
  result->super.super.position_ = a2;
  result->super.super.limit_ = a3 + a2;
  return result;
}

NSString *Java_java_lang_IntegralToString_intToString__II(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a4 == 10 || (a4 - 37) <= 0xFFFFFFDC)
  {

    return IntegralToString_convertInt(0, a3);
  }

  else
  {
    __chkstk_darwin();
    v9 = &v13 - v8;
    v10 = v6;
    do
    {
      *&v9[2 * --v10] = a0123456789abcd_0[v7 / v5 * v5 - v7];
      v7 /= v5;
    }

    while (v7);
    if (v4 < 0)
    {
      v11 = --v10;
      *&v9[2 * v10] = 45;
    }

    else
    {
      v11 = v10;
    }

    return [NSString stringWithCharacters:&v9[2 * v11] length:v6 - v10];
  }
}

NSString *IntegralToString_convertInt(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v4 = a2;
    if (a2 <= 0x63)
    {
      v5 = qword_100556C38[a2];
      if (v5)
      {
        goto LABEL_14;
      }

      if (a2 > 9)
      {
        v11 = a0123456789abcd_0[a2 + 36];
        v20 = a0123456789abcd_0[a2 + 136];
        v21 = v11;
        v6 = [NSString alloc];
        v7 = 2;
      }

      else
      {
        v20 = a0123456789abcd_0[a2 + 36];
        v6 = [NSString alloc];
        v7 = 1;
      }

      v5 = [v6 initWithCharacters:&v20 length:v7];
      qword_100556C38[a2] = v5;
      v4 = a2;
      if (v5)
      {
        goto LABEL_14;
      }
    }

LABEL_18:
    __chkstk_darwin();
    if (v4 < 0x10000)
    {
      v14 = 11;
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v14 = 11;
      v15 = v4;
      do
      {
        v4 = v15 / 0x64;
        v19[v14 - 1] = a0123456789abcd_0[v15 % 0x64 + 36];
        v14 -= 2;
        v19[v14] = a0123456789abcd_0[v15 % 0x64 + 136];
        v16 = v15 >> 18;
        v15 /= 0x64u;
      }

      while (v16 > 0x18);
      if (!v4)
      {
LABEL_25:
        if ((a2 & 0x80000000) != 0)
        {
          v19[--v14] = 45;
          if (a1)
          {
            goto LABEL_27;
          }
        }

        else if (a1)
        {
LABEL_27:
          JreStringBuilder_appendBuffer(a1, &v19[v14], 11 - v14);
          return 0;
        }

        return [NSString stringWithCharacters:&v19[v14] length:11 - v14];
      }
    }

    do
    {
      v19[--v14] = a0123456789abcd_0[v4 - 10 * ((52429 * v4) >> 19)];
      v17 = v4 > 9;
      v4 = (52429 * v4) >> 19;
    }

    while (v17);
    goto LABEL_25;
  }

  v4 = -a2;
  if (-a2 > 99)
  {
    goto LABEL_18;
  }

  if ((v4 & 0x80000000) == 0)
  {
    v5 = qword_100556918[v4];
    if (v5)
    {
      goto LABEL_14;
    }

    if (v4 > 9)
    {
      v12 = a0123456789abcd_0[v4 + 136];
      v13 = a0123456789abcd_0[v4 + 36];
      v20 = 45;
      v21 = v12;
      v22 = v13;
      v9 = [NSString alloc];
      v10 = 3;
    }

    else
    {
      v8 = a0123456789abcd_0[v4 + 36];
      v20 = 45;
      v21 = v8;
      v9 = [NSString alloc];
      v10 = 2;
    }

    v5 = [v9 initWithCharacters:&v20 length:v10];
    qword_100556918[v4] = v5;
    if (v5)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v5 = @"-2147483648";
LABEL_14:
  if (a1)
  {
    JreStringBuilder_appendString(a1, v5);
    return 0;
  }

  return v5;
}

const __CFString *Java_java_lang_IntegralToString_longToString__JI(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a3 == a3)
  {

    return JavaLangIntegralToString_intToStringWithInt_withInt_(a3, a4);
  }

  else if (a4 == 10 || (a4 - 37) <= 0xFFFFFFDC)
  {

    return IntegralToString_convertLong(0, a3);
  }

  else
  {
    __chkstk_darwin();
    v10 = &v13 - v9;
    v11 = v7;
    do
    {
      *&v10[2 * --v11] = a0123456789abcd_0[(v8 / v6 * v6 - v8)];
      v8 /= v6;
    }

    while (v8);
    if (v5 < 0)
    {
      v12 = --v11;
      *&v10[2 * v11] = 45;
    }

    else
    {
      v12 = v11;
    }

    return [NSString stringWithCharacters:&v10[2 * v12] length:v7 - v11];
  }
}

const __CFString *IntegralToString_convertLong(uint64_t a1, uint64_t a2)
{
  if (a2 != a2)
  {
    v5 = a2;
    if (a2 < 0)
    {
      v5 = -a2;
      if (a2 > 0)
      {
        if (!a1)
        {
          return @"-9223372036854775808";
        }

        JreStringBuilder_appendString(a1, @"-9223372036854775808");
        return 0;
      }
    }

    __chkstk_darwin();
    v6 = sub_100272F64(v13, 20, v5 % 0x3B9ACA00);
    if (v6 != 11)
    {
      v7 = v6 - 1;
      do
      {
        v13[v7--] = 48;
      }

      while (v7 != 10);
    }

    v8 = 0x8E47CE423A2E9C6DLL * ((v5 - v5 % 0x3B9ACA00) >> 9);
    if (HIDWORD(v8))
    {
      v10 = byte_10031583C[(-1015176667 * ((v5 - v5 % 0x3B9ACA00) >> 9) + ((976133229 * ((v5 - v5 % 0x3B9ACA00) >> 9)) >> 1) + ((976133229 * ((v5 - v5 % 0x3B9ACA00) >> 9)) >> 3)) >> 28] - (((0x8E47CE423A2E9C6DLL * ((v5 - v5 % 0x3B9ACA00) >> 9)) >> 30) & 0xFFFFFFFC);
      v11 = v10 + (v10 < 0 ? 0xA : 0);
      v13[10] = a0123456789abcd_0[v11];
      LODWORD(v8) = -858993459 * ((v8 - v11) >> 1);
      v9 = 10;
    }

    else
    {
      v9 = 11;
    }

    v12 = sub_100272F64(v13, v9, v8);
    if (a2 < 0)
    {
      v13[--v12] = 45;
      if (a1)
      {
        goto LABEL_15;
      }
    }

    else if (a1)
    {
LABEL_15:
      JreStringBuilder_appendBuffer(a1, &v13[v12], 20 - v12);
      return 0;
    }

    return [NSString stringWithCharacters:&v13[v12] length:20 - v12];
  }

  return IntegralToString_convertInt(a1, a2);
}

uint64_t sub_100272F64(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 0x10000)
  {
    do
    {
      v3 = a3 / 0x64;
      *(a1 + 2 * (a2 - 1)) = a0123456789abcd_0[a3 % 0x64 + 36];
      a2 = (a2 - 2);
      *(a1 + 2 * a2) = a0123456789abcd_0[a3 % 0x64 + 136];
      v4 = a3 >= 0x640000;
      a3 /= 0x64u;
    }

    while (v4);
  }

  else
  {
    v3 = a3;
  }

  if (v3)
  {
    do
    {
      a2 = (a2 - 1);
      *(a1 + 2 * a2) = a0123456789abcd_0[v3 - 10 * ((52429 * v3) >> 19)];
      v5 = v3 > 9;
      v3 = (52429 * v3) >> 19;
    }

    while (v5);
  }

  return a2;
}

NSString *Java_java_lang_IntegralToString_intToBinaryString(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = __clz(a3 >> 1);
  v4 = 33 - v3;
  v5 = v3 - 33;
  v6 = &v9;
  do
  {
    *(v6 - 1) = a0123456789abcd_0[a3 & 1];
    v6 = (v6 - 2);
    a3 >>= 1;
  }

  while (!__CFADD__(v5++, 1));
  return [NSString stringWithCharacters:v6 length:v4];
}

NSString *Java_java_lang_IntegralToString_longToBinaryString(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 31)
  {
    __chkstk_darwin();
    v5 = &v10;
    v6 = __clz(v4 >> 1);
    v7 = 65 - v6;
    v8 = v6 - 65;
    do
    {
      *(v5 - 1) = a0123456789abcd_0[v4 & 1];
      v5 = (v5 - 2);
      v4 >>= 1;
    }

    while (!__CFADD__(v8++, 1));
    return [NSString stringWithCharacters:v5 length:v7];
  }

  else
  {

    return JavaLangIntegralToString_intToBinaryStringWithInt_(a3);
  }
}

void *Java_java_lang_IntegralToString_appendByteAsHex(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, int a5)
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (a5)
  {
    v7 = L"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  }

  else
  {
    v7 = a0123456789abcd_0;
  }

  [a3 appendWithChar:v7[a4 >> 4]];
  [a3 appendWithChar:v7[a4 & 0xF]];
  return a3;
}

NSString *Java_java_lang_IntegralToString_byteToHexString(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4)
{
  v4 = a0123456789abcd_0;
  if (a4)
  {
    v4 = L"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  }

  v6[0] = v4[a3 >> 4];
  v6[1] = v4[a3 & 0xF];
  return [NSString stringWithCharacters:v6 length:2];
}

NSString *Java_java_lang_IntegralToString_bytesToHexString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  __chkstk_darwin();
  v8 = &v13 - v7;
  if (v6 >= 1)
  {
    v9 = 0;
    v10 = (v4 + 12);
    do
    {
      v11 = *v10++;
      *&v8[2 * v9] = *(v5 + ((v11 >> 3) & 0x1E));
      *&v8[2 * v9 + 2] = *(v5 + 2 * (v11 & 0xF));
      v9 += 2;
    }

    while (2 * v6 != v9);
  }

  return [NSString stringWithCharacters:"stringWithCharacters:length:" length:?];
}

NSString *Java_java_lang_IntegralToString_intToHexString(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v5 = a0123456789abcd_0;
  if (a4)
  {
    v5 = L"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  }

  v6 = 1;
  for (i = 7; ; --i)
  {
    v9[i] = v5[a3 & 0xF];
    if (a3 <= 0xF)
    {
      break;
    }

    a3 >>= 4;
LABEL_8:
    ++v6;
  }

  if (v6 < a5)
  {
    a3 = 0;
    goto LABEL_8;
  }

  return [NSString stringWithCharacters:&v9[i] length:v6];
}

NSString *Java_java_lang_IntegralToString_longToHexString(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 31)
  {
    __chkstk_darwin();
    v5 = &v8;
    v6 = 0;
    do
    {
      *(v5 - 1) = a0123456789abcd_0[v4 & 0xF];
      v5 = (v5 - 2);
      v6 += &_mh_execute_header;
      v7 = v4 > 0xF;
      v4 >>= 4;
    }

    while (v7);
    return [NSString stringWithCharacters:v5 length:v6 >> 32];
  }

  else
  {

    return JavaLangIntegralToString_intToHexStringWithInt_withBoolean_withInt_(a3, 0, 0);
  }
}

NSString *Java_java_lang_IntegralToString_intToOctalString(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = 0;
  v5 = &v8;
  do
  {
    *(v5 - 1) = a0123456789abcd_0[a3 & 7];
    v5 = (v5 - 2);
    v4 += &_mh_execute_header;
    v6 = a3 > 7;
    a3 >>= 3;
  }

  while (v6);
  return [NSString stringWithCharacters:v5 length:v4 >> 32];
}

NSString *Java_java_lang_IntegralToString_longToOctalString(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 31)
  {
    __chkstk_darwin();
    v5 = 0;
    v6 = &v8;
    do
    {
      *(v6 - 1) = a0123456789abcd_0[v4 & 7];
      v6 = (v6 - 2);
      v5 += &_mh_execute_header;
      v7 = v4 > 7;
      v4 >>= 3;
    }

    while (v7);
    return [NSString stringWithCharacters:v6 length:v5 >> 32];
  }

  else
  {

    return JavaLangIntegralToString_intToOctalStringWithInt_(a3);
  }
}

id JavaNioChannelsSpiAbstractSelectableChannel_initWithJavaNioChannelsSpiSelectorProvider_(uint64_t a1, void *a2)
{
  JavaNioChannelsSelectableChannel_init();
  v4 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 39), v4);
  JreStrongAssignAndConsume((a1 + 47), [NSObject alloc]);
  *(a1 + 24) = 1;

  return JreStrongAssign((a1 + 31), a2);
}

uint64_t sub_100273800(uint64_t a1, id a2)
{
  objc_sync_enter(a1);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 39);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = [*(a1 + 39) countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v10 + 1) + 8 * v7);
      if (v8)
      {
        if ([*(*(&v10 + 1) + 8 * v7) selector] == a2)
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v8 = 0;
  }

  objc_sync_exit(a1);
  return v8;
}

uint64_t JavaMathBitLevel_bitLengthWithJavaMathBigInteger_(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v2 = *(a1 + 20);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v4 = *(a1 + 16);
  v5 = *(v3 + 8);
  v6 = v4 - 1;
  if (v4 - 1 < 0 || v6 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, v6);
  }

  v7 = *(v3 + 12 + 4 * (v4 - 1));
  if (v2 < 0)
  {
    v7 -= [a1 getFirstNonzeroDigit] == *(a1 + 16) - 1;
  }

  return 32 * v4 - JavaLangInteger_numberOfLeadingZerosWithInt_(v7);
}

uint64_t JavaMathBitLevel_bitCountWithJavaMathBigInteger_(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_25;
  }

  if (!*(a1 + 20))
  {
    return 0;
  }

  v2 = [a1 getFirstNonzeroDigit];
  v3 = v2;
  if (*(a1 + 20) >= 1)
  {
    if (v2 < *(a1 + 16))
    {
      LODWORD(v4) = 0;
      v5 = v2;
      while (1)
      {
        v6 = *(a1 + 8);
        if (!v6)
        {
          break;
        }

        v7 = *(v6 + 8);
        if (v5 < 0 || v5 >= v7)
        {
          IOSArray_throwOutOfBoundsWithMsg(v7, v5);
        }

        v4 = JavaLangInteger_bitCountWithInt_(*(v6 + 12 + 4 * v5++)) + v4;
        if (v5 >= *(a1 + 16))
        {
          return v4;
        }
      }

LABEL_25:
      JreThrowNullPointerException();
    }

    return 0;
  }

  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = *(v8 + 8);
  if ((v3 & 0x80000000) != 0 || v3 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, v3);
  }

  v10 = JavaLangInteger_bitCountWithInt_(-*(v8 + 12 + 4 * v3));
  LODWORD(v11) = *(a1 + 16);
  if (v3 + 1 < v11)
  {
    v12 = v3 + 1;
    do
    {
      v13 = *(a1 + 8);
      v14 = *(v13 + 8);
      if (v12 < 0 || v12 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v12);
      }

      v10 += JavaLangInteger_bitCountWithInt_(~*(v13 + 12 + 4 * v12++));
      v11 = *(a1 + 16);
    }

    while (v12 < v11);
  }

  return (32 * v11 - v10);
}

uint64_t JavaMathBitLevel_testBitWithJavaMathBigInteger_withInt_(uint64_t a1, int a2)
{
  if (!a1 || (v2 = *(a1 + 8)) == 0)
  {
    JreThrowNullPointerException();
  }

  v3 = a2 >> 5;
  v4 = *(v2 + 8);
  if (a2 >> 5 < 0 || v3 >= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, (a2 >> 5));
  }

  return (*(v2 + 12 + 4 * v3) >> a2) & 1;
}

BOOL JavaMathBitLevel_nonZeroDroppedBitsWithInt_withIntArray_(int a1, uint64_t a2)
{
  v2 = a1;
  v3 = (a1 >> 5);
  if (v3 < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_15;
    }

    v4 = 0;
    v5 = a2;
    while (1)
    {
      v6 = *(a2 + 8);
      if (v4 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v4);
      }

      if (*(v5 + 12))
      {
        break;
      }

      v4 = (v4 + 1);
      v5 += 4;
      if (v3 == v4)
      {
        goto LABEL_12;
      }
    }
  }

  if (v4 != v3)
  {
    return 1;
  }

  if (!a2)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

LABEL_12:
  v7 = *(a2 + 8);
  if (v3 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, v3);
  }

  return *(a2 + 12 + 4 * v3) << -v2 != 0;
}

JavaMathBigInteger *JavaMathBitLevel_shiftLeftWithJavaMathBigInteger_withInt_(uint64_t a1, int a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = (a2 >> 5);
  v4 = *(a1 + 16);
  v5 = a2 & 0x1F;
  if ((a2 & 0x1F) != 0)
  {
    v6 = v3 + 1;
  }

  else
  {
    v6 = a2 >> 5;
  }

  v7 = v6 + v4;
  v8 = [IOSIntArray arrayWithLength:v6 + v4];
  JavaMathBitLevel_shiftLeftWithIntArray_withIntArray_withInt_withInt_(v8, *(a1 + 8), v3, v5);
  v9 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(*(a1 + 20), v7, v8);
  [(JavaMathBigInteger *)v9 cutOffLeadingZeroes];
  return v9;
}

id JavaMathBitLevel_inplaceShiftLeftWithJavaMathBigInteger_withInt_(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a1 + 16);
  v6 = *(v2 + 8);
  v7 = v5 - 1;
  if (v5 - 1 < 0 || v7 >= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, (v5 - 1));
  }

  *(a1 + 16) += ((JavaLangInteger_numberOfLeadingZerosWithInt_(*(v2 + 12 + 4 * v7)) - (a2 & 0x1F)) >> 31) + (a2 >> 5);
  JavaMathBitLevel_shiftLeftWithIntArray_withIntArray_withInt_withInt_(*(a1 + 8), *(a1 + 8), (a2 >> 5), a2 & 0x1F);
  [a1 cutOffLeadingZeroes];

  return [a1 unCache];
}

uint64_t JavaMathBitLevel_shiftLeftWithIntArray_withIntArray_withInt_withInt_(_DWORD *a1, unsigned int *a2, uint64_t a3, int a4)
{
  v4 = a3;
  if (!a4)
  {
    if (a1)
    {
      v18 = a3;
      result = JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a2, 0, a1, a3, (a1[2] - a3));
      v4 = v18;
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  if (!a1)
  {
    goto LABEL_30;
  }

  result = a1[2];
  v7 = result - 1;
  if (result <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v7);
  }

  a1[v7 + 3] = 0;
  v8 = a1[2];
  v9 = v8 - 1;
  if (v8 - 1 > a3)
  {
    if (a2)
    {
      v10 = v9;
      v11 = (v8 - 2);
      v12 = &a1[v9];
      do
      {
        v13 = a2[2];
        v14 = v11 - a3;
        v15 = v11 - a3;
        if (v11 - a3 < 0 || v14 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v14);
        }

        v16 = a1[2];
        if (v10 < 0 || v10 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (v11 + 1));
        }

        v12[3] |= a2[v15 + 3] >> (-a4 & 0x1F);
        v17 = a2[2];
        if ((v15 & 0x80000000) != 0 || v15 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v15);
        }

        result = a1[2];
        if ((v11 & 0x80000000) != 0 || v11 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v11);
        }

        a1[v11 + 3] = a2[v15 + 3] << (a4 & 0x1F);
        --v10;
        --v12;
        v11 = (v11 - 1);
      }

      while (v10 > a3);
      goto LABEL_23;
    }

LABEL_30:
    JreThrowNullPointerException();
  }

LABEL_23:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; a1[i++ + 3] = 0)
    {
      result = a1[2];
      if (i >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, i);
      }
    }
  }

  return result;
}

uint64_t JavaMathBitLevel_shiftLeftOneBitWithIntArray_withIntArray_withInt_(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    if (!a2)
    {
LABEL_15:
      JreThrowNullPointerException();
    }

    v3 = result;
    v4 = 0;
    v5 = 0;
    v6 = result;
    v7 = a2;
    do
    {
      v8 = *(a2 + 8);
      if (v4 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v4);
      }

      if (!v3)
      {
        goto LABEL_15;
      }

      v9 = *(v7 + 12);
      result = *(v3 + 8);
      if (v4 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v4);
      }

      *(v6 + 12) = v5 | (2 * v9);
      v5 = v9 >> 31;
      ++v4;
      v7 += 4;
      v6 += 4;
    }

    while (a3 != v4);
    if ((v9 & 0x80000000) != 0)
    {
      result = *(v3 + 8);
      if (result <= a3)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, a3);
      }

      *(v3 + 12 + 4 * a3) = v5;
    }
  }

  return result;
}

JavaMathBigInteger *JavaMathBitLevel_shiftLeftOneBitWithJavaMathBigInteger_(uint64_t a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = *(a1 + 16);
  v3 = [IOSIntArray arrayWithLength:v2 + 1];
  JavaMathBitLevel_shiftLeftOneBitWithIntArray_withIntArray_withInt_(v3, *(a1 + 8), v2);
  v4 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(*(a1 + 20), v2 + 1, v3);
  [(JavaMathBigInteger *)v4 cutOffLeadingZeroes];
  return v4;
}

JavaMathBigInteger *JavaMathBitLevel_shiftRightWithJavaMathBigInteger_withInt_(uint64_t a1, int a2)
{
  if (!a1)
  {
    goto LABEL_38;
  }

  v3 = (a2 >> 5);
  v4 = *(a1 + 16);
  v5 = (v4 - v3);
  if (v4 <= v3)
  {
    v11 = *(a1 + 20);
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100147554();
    }

    v12 = &JavaMathBigInteger_MINUS_ONE_;
    if (v11 >= 0)
    {
      v12 = &JavaMathBigInteger_ZERO_;
    }

    return *v12;
  }

  else
  {
    v6 = a2 & 0x1F;
    v7 = [IOSIntArray arrayWithLength:v5 + 1];
    JavaMathBitLevel_shiftRightWithIntArray_withInt_withIntArray_withInt_withInt_(v7, v5, *(a1 + 8), v3, v6);
    if ((*(a1 + 20) & 0x80000000) != 0)
    {
      if (v3 >= 1)
      {
        v8 = 0;
        while (1)
        {
          v9 = *(a1 + 8);
          if (!v9)
          {
            break;
          }

          v10 = *(v9 + 8);
          if (v8 >= v10)
          {
            IOSArray_throwOutOfBoundsWithMsg(v10, v8);
          }

          if (*(v9 + 12 + 4 * v8))
          {
            goto LABEL_22;
          }

          if (v3 == ++v8)
          {
            goto LABEL_18;
          }
        }

LABEL_38:
        JreThrowNullPointerException();
      }

      v3 = 0;
LABEL_18:
      if (v6)
      {
        v14 = *(a1 + 8);
        if (!v14)
        {
          goto LABEL_38;
        }

        v15 = *(v14 + 8);
        if (v3 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v3);
        }

        if (*(v14 + 12 + 4 * v3) << -v6)
        {
LABEL_22:
          if (v5 < 1)
          {
            LODWORD(v16) = 0;
          }

          else
          {
            v16 = 0;
            while (1)
            {
              size = v7->super.size_;
              if (v16 >= size)
              {
                IOSArray_throwOutOfBoundsWithMsg(size, v16);
              }

              if (*(&v7->super.size_ + v16 + 1) != -1)
              {
                break;
              }

              v18 = v7->super.size_;
              if (v16 >= v18)
              {
                IOSArray_throwOutOfBoundsWithMsg(v18, v16);
              }

              *(&v7->super.size_ + ++v16) = 0;
              if (v5 == v16)
              {
                LODWORD(v16) = v5;
                break;
              }
            }
          }

          if (v16 == v5)
          {
            LODWORD(v5) = v5 + 1;
          }

          v19 = v7->super.size_;
          if (v16 >= v19)
          {
            IOSArray_throwOutOfBoundsWithMsg(v19, v16);
          }

          ++*(&v7->super.size_ + v16 + 1);
        }
      }
    }

    v13 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(*(a1 + 20), v5, v7);
    [(JavaMathBigInteger *)v13 cutOffLeadingZeroes];
  }

  return v13;
}

id JavaMathBitLevel_inplaceShiftRightWithJavaMathBigInteger_withInt_(uint64_t a1, int a2)
{
  if (!a1)
  {
    goto LABEL_28;
  }

  result = [a1 signum];
  if (!a2)
  {
    return result;
  }

  v5 = result;
  result = [a1 signum];
  if (!result)
  {
    return result;
  }

  *(a1 + 16) -= a2 >> 5;
  if ((JavaMathBitLevel_shiftRightWithIntArray_withInt_withIntArray_withInt_withInt_(*(a1 + 8), *(a1 + 16), *(a1 + 8), (a2 >> 5), a2 & 0x1F) & 1) == 0 && v5 < 0)
  {
    v6 = *(a1 + 16);
    if (v6 < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      while (1)
      {
        v8 = *(a1 + 8);
        if (!v8)
        {
          goto LABEL_28;
        }

        v9 = *(v8 + 8);
        if (v7 >= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, v7);
        }

        if (*(v8 + 12 + 4 * v7) != -1)
        {
          break;
        }

        v10 = *(a1 + 8);
        if (!v10)
        {
          goto LABEL_28;
        }

        v11 = *(v10 + 8);
        if (v7 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v7);
        }

        *(v10 + 12 + 4 * v7) = 0;
        v6 = *(a1 + 16);
        if (++v7 >= v6)
        {
          goto LABEL_20;
        }
      }

      v6 = *(a1 + 16);
    }

LABEL_20:
    if (v7 == v6)
    {
      *(a1 + 16) = v6 + 1;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = *(v12 + 8);
      if (v7 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v7);
      }

      ++*(v12 + 12 + 4 * v7);
      goto LABEL_25;
    }

LABEL_28:
    JreThrowNullPointerException();
  }

LABEL_25:
  [a1 cutOffLeadingZeroes];

  return [a1 unCache];
}

uint64_t JavaMathBitLevel_shiftRightWithIntArray_withInt_withIntArray_withInt_withInt_(int *a1, uint64_t a2, int *a3, uint64_t a4, int a5)
{
  if (a4 >= 1)
  {
    if (!a3)
    {
      goto LABEL_38;
    }

    v6 = 0;
    LOBYTE(v7) = 1;
    v8 = a3;
    do
    {
      v9 = a3[2];
      if (v6 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v6);
      }

      v7 = v7 & (v8[3] == 0);
      ++v6;
      ++v8;
    }

    while (a4 != v6);
    v10 = a4;
    if (a5)
    {
      goto LABEL_9;
    }

LABEL_28:
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a3, a4, a1, 0, a2);
    return v7;
  }

  v10 = 0;
  v7 = 1;
  if (!a5)
  {
    goto LABEL_28;
  }

LABEL_9:
  if (!a3)
  {
    goto LABEL_38;
  }

  v11 = -a5;
  v12 = a3[2];
  if (v10 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v10);
  }

  if (a3[v10 + 3] << v11)
  {
    v7 = 0;
  }

  else
  {
    v7 = v7;
  }

  v13 = (a2 - 1);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = v11 & 0x1F;
    v16 = a1;
    while (1)
    {
      v17 = a4 + v14;
      v18 = a3[2];
      if (a4 + v14 < 0 || v17 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, a4 + v14);
      }

      v19 = a3[v17 + 3];
      v20 = a4 + v14 + 1;
      if (v20 < 0 || v20 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, a4 + v14 + 1);
      }

      if (!a1)
      {
        goto LABEL_38;
      }

      v21 = a3[v20 + 3];
      v22 = a1[2];
      if (v14 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v14);
      }

      v16[3] = (v21 << v15) | (v19 >> (a5 & 0x1F));
      ++v14;
      ++v16;
      if (v13 == v14)
      {
        goto LABEL_30;
      }
    }
  }

  v13 = 0;
LABEL_30:
  v23 = a3[2];
  v24 = v13 + a4;
  if (v13 + a4 < 0 || v24 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v24);
  }

  if (!a1)
  {
LABEL_38:
    JreThrowNullPointerException();
  }

  v25 = a1[2];
  if (v13 >= v25)
  {
    IOSArray_throwOutOfBoundsWithMsg(v25, v13);
  }

  a1[v13 + 3] = a3[v13 + 3 + a4] >> a5;
  return v7;
}

JavaMathBigInteger *JavaMathBitLevel_flipBitWithJavaMathBigInteger_withInt_(uint64_t a1, int a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = a2;
  v4 = *(a1 + 20);
  v5 = (a2 >> 5);
  v6 = v5 + 1;
  v7 = JavaLangMath_maxWithInt_withInt_((v5 + 1), *(a1 + 16)) + 1;
  v8 = [IOSIntArray arrayWithLength:v7];
  v9 = 1 << v2;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 8), 0, v8, 0, *(a1 + 16));
  if ((*(a1 + 20) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  if (v5 >= *(a1 + 16))
  {
    size = v8->super.size_;
    if ((v5 & 0x80000000) != 0 || v5 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v5);
    }

    *(&v8->super.size_ + v5 + 1) = v9;
  }

  else
  {
    v11 = [a1 getFirstNonzeroDigit];
    if (v5 > v11)
    {
LABEL_3:
      v10 = v8->super.size_;
      if ((v5 & 0x80000000) != 0 || v5 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v5);
      }

      *(&v8->super.size_ + v5 + 1) ^= v9;
      goto LABEL_21;
    }

    if (v5 >= v11)
    {
      v22 = v8->super.size_;
      if ((v5 & 0x80000000) != 0 || v5 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v5);
      }

      v23 = -(v9 ^ -*(&v8->super.size_ + v5 + 1));
      if ((v5 & 0x80000000) != 0 || v5 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v5);
      }

      *(&v8->super.size_ + v5 + 1) = v23;
      v24 = v8->super.size_;
      if ((v5 & 0x80000000) != 0 || v5 >= v24)
      {
        IOSArray_throwOutOfBoundsWithMsg(v24, v5);
      }

      if (!*(&v8->super.size_ + v5 + 1))
      {
        while (1)
        {
          v25 = v8->super.size_;
          if (v6 < 0 || v6 >= v25)
          {
            IOSArray_throwOutOfBoundsWithMsg(v25, v6);
          }

          v26 = *(&v8->super.size_ + v6 + 1);
          v27 = v8->super.size_;
          v28 = v6 >= 0 && v6 < v27;
          v29 = !v28;
          if (v26 != -1)
          {
            break;
          }

          if (v29)
          {
            IOSArray_throwOutOfBoundsWithMsg(v27, v6);
          }

          *(&v8->super.size_ + ++v6) = 0;
        }

        if (v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, v6);
        }

        *(&v8->super.size_ + v6 + 1) = v26 + 1;
      }
    }

    else
    {
      v12 = v11;
      v13 = v5;
      v14 = v8->super.size_;
      if ((v5 & 0x80000000) != 0 || v5 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v5);
      }

      *(&v8->super.size_ + v5 + 1) = -v9;
      if (v6 < v12)
      {
        v15 = v5 + 1;
        v16 = &v8->super.super.isa + 4 * v13 + 4;
        do
        {
          v17 = v8->super.size_;
          if (v15 < 0 || v15 >= v17)
          {
            IOSArray_throwOutOfBoundsWithMsg(v17, v15);
          }

          *(v16 + 12) = -1;
          ++v15;
          v16 += 4;
        }

        while (v12 != v15);
        v6 = v12;
      }

      v30 = v6;
      v31 = v8->super.size_;
      if (v6 < 0 || v6 >= v31)
      {
        IOSArray_throwOutOfBoundsWithMsg(v31, v6);
      }

      v32 = *(&v8->super.size_ + v6 + 1);
      *(&v8->super.size_ + v30 + 1) = v32 - 1;
      v33 = v8->super.size_;
      if ((v30 & 0x80000000) != 0 || v30 >= v33)
      {
        IOSArray_throwOutOfBoundsWithMsg(v33, v30);
      }

      *(&v8->super.size_ + v30 + 1) = v32;
    }
  }

LABEL_21:
  if (v4 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v4;
  }

  v20 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v19, v7, v8);
  [(JavaMathBigInteger *)v20 cutOffLeadingZeroes];
  return v20;
}

id JavaNioChannelsFileLock_initWithJavaNioChannelsFileChannel_withLong_withLong_withBoolean_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 | a3) < 0 || a4 + a3 < 0)
  {
    v13 = JreStrcat("$J$J", a2, a3, a4, a5, a6, a7, a8, @"position=");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  v10 = a5;
  result = objc_storeWeak((a1 + 8), a2);
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = v10;
  return result;
}

float Java_java_lang_StringToReal_parseFltImpl(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v5 = [a3 UTF8String];
  if (!v5)
  {
    return 0.0;
  }

  v6 = v5;
  v18[0] = 0;
  v7 = *v5;
  v8 = 1;
  while (1)
  {
    if ((v7 - 48) > 9)
    {
      v13 = strlen(v6);
      *&v8 = NAN;
      v14 = NAN;
      goto LABEL_17;
    }

    __memcpy_chk();
    appended = simpleAppendDecimalDigitHighPrecision(v18, v8, v7 - 48);
    if (appended)
    {
      v18[v8] = appended;
      if ((v8 + 1) >= 8)
      {
        __memcpy_chk();
LABEL_12:
        v15 = strlen(v6);
        if (v15 <= 0)
        {
          if ((v8 & 0x80000000) != 0)
          {
            return *&v8;
          }

          v17 = v8;
          v16 = a4;
        }

        else
        {
          if ((v8 & 0x80000000) != 0)
          {
            return *&v8;
          }

          v16 = v15 + a4;
          if ((v15 + a4) > 0)
          {
            return INFINITY;
          }

          v17 = v8;
        }

        return sub_100275BDC(v18, v17, v16);
      }

      if (v8++ > 0x7FFFFFFE)
      {
        break;
      }
    }

    v11 = *++v6;
    v7 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  v13 = strlen(v6);
  *&v8 = -0.0;
  v14 = -0.0;
LABEL_17:
  if (v13 > 0)
  {
    return *&v8;
  }

  return v14;
}

double Java_java_lang_StringToReal_parseDblImpl(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v5 = [a3 UTF8String];
  if (v5)
  {
    v6 = v5;
    v18[0] = 0;
    v7 = *v5;
    v8 = 1;
    while (1)
    {
      v9 = NAN;
      if ((v7 - 48) > 9)
      {
        return v9;
      }

      __memcpy_chk();
      appended = simpleAppendDecimalDigitHighPrecision(v18, v8, v7 - 48);
      if (appended)
      {
        v18[v8] = appended;
        if ((v8 + 1) >= 17)
        {
          __memcpy_chk();
LABEL_11:
          v13 = strlen(v6);
          if (v13 < 1)
          {
            if ((v8 & 0x80000000) != 0)
            {
              return v9;
            }

            if (a4)
            {
              v15 = v8;
              v14 = a4;
              return sub_100276394(v18, v15, v14);
            }
          }

          else
          {
            if ((v8 & 0x80000000) != 0)
            {
              return v9;
            }

            v14 = v13 + a4;
            if (v13 + a4)
            {
              if ((v14 & 0x80000000) == 0)
              {
                return INFINITY;
              }

              v15 = v8;
              return sub_100276394(v18, v15, v14);
            }
          }

          toDoubleHighPrecision(v18, v8);
          return v16;
        }

        if (v8++ > 0x7FFFFFFE)
        {
          return v9;
        }
      }

      v12 = *++v6;
      v7 = v12;
      if (!v12)
      {
        goto LABEL_11;
      }
    }
  }

  return 0.0;
}

float sub_100275BDC(int *a1, unsigned int a2, unsigned int a3)
{
  v5 = highestSetBitHighPrecision(a1, a2) + 1;
  if (a3 <= 0xA && v5 <= 24)
  {
    return flt_1003158A0[a3] * *a1;
  }

  if ((a3 & 0x80000000) != 0 && v5 <= 24)
  {
    if (-a3 <= 10)
    {
      return *a1 / flt_1003158A0[-a3];
    }
  }

  else
  {
    if (a3 <= 0x26)
    {
      toDoubleHighPrecision(a1, a2);
      v8 = __exp10(a3) * v7;
      goto LABEL_38;
    }

    if (a3 >= 39)
    {
      toDoubleHighPrecision(a1, a2);
      *&v9 = v9;
      v13 = *&v9 == 0.0;
      v8 = INFINITY;
      if (v13)
      {
        v8 = COERCE_FLOAT(1);
      }

      goto LABEL_38;
    }
  }

  v8 = 0.0;
  if (a3 >= 0xFFFFFECC)
  {
    toDoubleHighPrecision(a1, a2);
    v11 = v10 / __exp10(-a3);
    v12 = v11;
    if ((HIDWORD(v11) & 0x7FF00000) == 0)
    {
      v6 = 0.0;
      v13 = !LODWORD(v12) && (HIDWORD(v11) & 0xFFFFF) == 0;
      if (!v13)
      {
        return v6;
      }
    }

    v14 = doubleExponent(v11) + 51;
    v15 = doubleMantissa(v11);
    v6 = 0.0;
    if (v14 < -154)
    {
      return v6;
    }

    if (v14 > -127)
    {
      v8 = v11;
      goto LABEL_38;
    }

    v16 = v15 >> 29;
    v17 = 8 * v15;
    if (v14 == -127 || 8 * v15 == 0)
    {
      if ((v17 & 0x80000000) != 0)
      {
        if ((v15 & 0xFFFFFFF) != 0)
        {
          v22 = v16 + 1;
        }

        else
        {
          v22 = ((v15 & 0x20000000) != 0) + (v15 >> 29);
        }

LABEL_36:
        v8 = *&v22;
        goto LABEL_38;
      }

      v19 = v15 >> 29;
    }

    else
    {
      do
      {
        v17 = (v17 | (v16 << 31)) >> 1;
        LODWORD(v19) = v16 >> 1;
        if (v14 > 0xFFFFFF7F)
        {
          break;
        }

        ++v14;
        v20 = v17 | (v16 >> 1);
        LODWORD(v16) = v16 >> 1;
      }

      while (v20);
    }

    v21 = (v17 & 0x3FFFFFFC) != 0 && (v17 & 0xC0000000) != 0;
    v22 = v19 + v21;
    goto LABEL_36;
  }

LABEL_38:
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v8 == 0.0 || a3 < -308)
  {
    v6 = COERCE_FLOAT(1);
  }

  else
  {
    v6 = v8;
  }

  v65 = 0;
  __n = 8 * a2;
  v62 = a2;
  v56 = -a3;
  v28 = -a3 / 19;
  v53 = (v28 + 2);
  v52 = 8 * v28;
  v54 = a2 + 1;
  v55 = v28 + 3;
  v57 = a2 + a3 / 0x13 + 2;
  v29 = a3 / 0x13 + 1;
  v30 = v29 + a2;
  v59 = a2;
  size = 8 * v30;
  v58 = 8 * v29;
  for (i = v30; ; v30 = i)
  {
    v65 = floatMantissa(v6);
    v31 = floatExponent(v6);
    if (v23 && v23 != a1)
    {
      free(v23);
    }

    free(v24);
    free(v25);
    free(v26);
    if ((a3 & 0x80000000) != 0 || (v31 & 0x80000000) != 0)
    {
      if ((a3 & 0x80000000) != 0)
      {
        if ((v31 & 0x80000000) != 0)
        {
          LODWORD(v30) = v54 + (-v31 >> 6);
          v39 = malloc_type_malloc(8 * v30, 0x100004000313F17uLL);
          if (!v39)
          {
            goto LABEL_103;
          }

          v23 = v39;
          bzero(&v39[8 * v62], 8 * (v30 - v59));
          memcpy(v23, a1, __n);
          simpleShiftLeftHighPrecision(v23, v30, -v31);
          v40 = malloc_type_malloc(8 * v53, 0x100004000313F17uLL);
          v24 = v40;
          if (!v40)
          {
            goto LABEL_100;
          }

          bzero(v40 + 1, v52 + 8);
          *v24 = v65;
          LODWORD(v34) = v53;
          timesTenToTheEHighPrecision(v24, v53, v56);
        }

        else
        {
          v34 = v55 + (v31 >> 6);
          v38 = malloc_type_malloc(8 * v34, 0x100004000313F17uLL);
          v24 = v38;
          if (!v38)
          {
            goto LABEL_103;
          }

          bzero(v38 + 1, 8 * v34 - 8);
          *v24 = v65;
          timesTenToTheEHighPrecision(v24, v34, v56);
          simpleShiftLeftHighPrecision(v24, v34, v31);
          v23 = a1;
          LODWORD(v30) = v59;
        }
      }

      else
      {
        v30 = v57 + (-v31 >> 6);
        v36 = malloc_type_malloc(8 * v30, 0x100004000313F17uLL);
        if (!v36)
        {
          goto LABEL_103;
        }

        v23 = v36;
        bzero(&v36[8 * v62], 8 * (v30 - v59));
        memcpy(v23, a1, __n);
        timesTenToTheEHighPrecision(v23, v30, a3);
        simpleShiftLeftHighPrecision(v23, v30, -v31);
        v37 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        v24 = v37;
        if (!v37)
        {
          goto LABEL_100;
        }

        *v37 = v65;
        LODWORD(v34) = 1;
      }
    }

    else
    {
      v32 = malloc_type_malloc(size, 0x100004000313F17uLL);
      if (!v32)
      {
        goto LABEL_103;
      }

      v23 = v32;
      bzero(&v32[8 * v62], v58);
      memcpy(v23, a1, __n);
      timesTenToTheEHighPrecision(v23, v30, a3);
      v33 = v31 >> 6;
      LODWORD(v34) = (v31 >> 6) + 2;
      v35 = malloc_type_malloc((8 * v34), 0x100004000313F17uLL);
      v24 = v35;
      if (!v35)
      {
        goto LABEL_100;
      }

      bzero(v35 + 1, 8 * v33 + 8);
      *v24 = v65;
      simpleShiftLeftHighPrecision(v24, v33 + 2, v31);
    }

    v41 = compareHighPrecision(v23, v30, v24, v34);
    v42 = v41;
    if (v41 < 1)
    {
      if (v41)
      {
        v44 = malloc_type_malloc(8 * v34, 0x100004000313F17uLL);
        v25 = v44;
        if (!v44)
        {
          goto LABEL_100;
        }

        memcpy(v44, v24, 8 * v34);
        subtractHighPrecision(v25, v34, v23, v30);
        LODWORD(v30) = v34;
      }

      else
      {
        v45 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        v25 = v45;
        if (!v45)
        {
          goto LABEL_100;
        }

        *v45 = 0;
        LODWORD(v30) = 1;
      }
    }

    else
    {
      v43 = malloc_type_malloc(8 * v30, 0x100004000313F17uLL);
      v25 = v43;
      if (!v43)
      {
        goto LABEL_100;
      }

      memcpy(v43, v23, 8 * v30);
      subtractHighPrecision(v25, v30, v24, v34);
    }

    v46 = v30 + 1;
    v26 = malloc_type_malloc(8 * (v30 + 1), 0x100004000313F17uLL);
    if (!v26)
    {
LABEL_100:
      if (v23 && v23 != a1)
      {
        free(v23);
      }

LABEL_103:
      free(v24);
      free(v25);
      free(v26);
      objc_exception_throw(objc_alloc_init(JavaLangOutOfMemoryError));
    }

    v65 *= 2;
    multiplyHighPrecision(v25, v30, &v65, 1, v26, v30 + 1);
    v65 >>= 1;
    v47 = compareHighPrecision(v26, v30 + 1, v24, v34);
    if (v47 < 0)
    {
      if (v6 == 1.1755e-38)
      {
        goto LABEL_92;
      }

      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_92;
      }

      if (v65 != 0x800000)
      {
        goto LABEL_92;
      }

      simpleShiftLeftHighPrecision(v26, v46, 1);
      if (compareHighPrecision(v26, v46, v24, v34) < 1)
      {
        goto LABEL_92;
      }

      v49 = LODWORD(v6) - 1;
      goto LABEL_87;
    }

    if (!v47)
    {
      break;
    }

    v48 = v6;
    if (v42 < 0)
    {
      goto LABEL_86;
    }

    if (v6 == INFINITY)
    {
      goto LABEL_92;
    }

    v49 = LODWORD(v6) + 1;
LABEL_87:
    v6 = *&v49;
  }

  if ((v65 & 1) == 0)
  {
    if ((v42 & 0x80000000) == 0 || v65 != 0x800000)
    {
      goto LABEL_92;
    }

    v48 = v6;
LABEL_86:
    v49 = LODWORD(v48) - 1;
    goto LABEL_87;
  }

  if (v42 < 0)
  {
    v50 = LODWORD(v6) - 1;
  }

  else
  {
    v50 = LODWORD(v6) + 1;
  }

  v6 = *&v50;
LABEL_92:
  if (v23 && v23 != a1)
  {
    free(v23);
  }

  free(v24);
  free(v25);
  free(v26);
  return v6;
}

double sub_100276394(void *a1, int a2, unsigned int a3)
{
  v6 = highestSetBitHighPrecision(a1, a2);
  __src = a1;
  v7 = v6 - lowestSetBitHighPrecision(a1, a2) + 1;
  if (a3 <= 0x16 && v7 <= 53)
  {
    toDoubleHighPrecision(a1, a2);
    return v8 * dbl_1003158D0[a3];
  }

  if ((a3 & 0x80000000) != 0 && v7 <= 53)
  {
    if (-a3 <= 22)
    {
      toDoubleHighPrecision(a1, a2);
      return v10 / dbl_1003158D0[-a3];
    }

    goto LABEL_14;
  }

  if (a3 > 0x134)
  {
    if (a3 < 309)
    {
LABEL_14:
      toDoubleHighPrecision(a1, a2);
      if (a3 < 0xFFFFFECC)
      {
        v12 = __exp10((a3 + 52)) * v15 * 1.0e-52;
      }

      else
      {
        v12 = v15 / __exp10(-a3);
      }

      v14 = a2;
      goto LABEL_18;
    }

    toDoubleHighPrecision(a1, a2);
    if (v13 != 0.0)
    {
      return INFINITY;
    }

    *&v12 = 1;
  }

  else
  {
    toDoubleHighPrecision(a1, a2);
    v12 = __exp10(a3) * v11;
  }

  v14 = a2;
LABEL_18:
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v12 == 0.0)
  {
    v9 = COERCE_DOUBLE(1);
  }

  else
  {
    v9 = v12;
  }

  v57 = 0;
  __n = 8 * v14;
  v54 = v14;
  v48 = -a3;
  v20 = -a3 / 19;
  v45 = (v20 + 2);
  v44 = 8 * v20;
  v46 = v14 + 1;
  v47 = v20 + 3;
  v49 = v14 + a3 / 0x13 + 2;
  v21 = a3 / 0x13 + 1;
  v22 = v21 + v14;
  v51 = v14;
  size = 8 * v22;
  v50 = 8 * v21;
  for (i = v22; ; v22 = i)
  {
    v57 = doubleMantissa(v9);
    v23 = doubleExponent(v9);
    if (v16 && v16 != __src)
    {
      free(v16);
    }

    free(v17);
    free(v18);
    free(v19);
    if ((a3 & 0x80000000) != 0 || (v23 & 0x80000000) != 0)
    {
      if ((a3 & 0x80000000) != 0)
      {
        if ((v23 & 0x80000000) != 0)
        {
          LODWORD(v22) = v46 + (-v23 >> 6);
          v31 = malloc_type_malloc(8 * v22, 0x100004000313F17uLL);
          if (!v31)
          {
            goto LABEL_78;
          }

          v16 = v31;
          bzero(&v31[8 * v54], 8 * (v22 - v51));
          memcpy(v16, __src, __n);
          simpleShiftLeftHighPrecision(v16, v22, -v23);
          v32 = malloc_type_malloc(8 * v45, 0x100004000313F17uLL);
          v17 = v32;
          if (!v32)
          {
            goto LABEL_75;
          }

          bzero(v32 + 1, v44 + 8);
          *v17 = v57;
          LODWORD(v26) = v45;
          timesTenToTheEHighPrecision(v17, v45, v48);
        }

        else
        {
          v26 = v47 + (v23 >> 6);
          v30 = malloc_type_malloc(8 * v26, 0x100004000313F17uLL);
          v17 = v30;
          if (!v30)
          {
            goto LABEL_78;
          }

          bzero(v30 + 1, 8 * v26 - 8);
          *v17 = v57;
          timesTenToTheEHighPrecision(v17, v26, v48);
          simpleShiftLeftHighPrecision(v17, v26, v23);
          v16 = __src;
          LODWORD(v22) = v51;
        }
      }

      else
      {
        v22 = v49 + (-v23 >> 6);
        v28 = malloc_type_malloc(8 * v22, 0x100004000313F17uLL);
        if (!v28)
        {
          goto LABEL_78;
        }

        v16 = v28;
        bzero(&v28[8 * v54], 8 * (v22 - v51));
        memcpy(v16, __src, __n);
        timesTenToTheEHighPrecision(v16, v22, a3);
        simpleShiftLeftHighPrecision(v16, v22, -v23);
        v29 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        v17 = v29;
        if (!v29)
        {
          goto LABEL_75;
        }

        *v29 = v57;
        LODWORD(v26) = 1;
      }
    }

    else
    {
      v24 = malloc_type_malloc(size, 0x100004000313F17uLL);
      if (!v24)
      {
        goto LABEL_78;
      }

      v16 = v24;
      bzero(&v24[8 * v54], v50);
      memcpy(v16, __src, __n);
      timesTenToTheEHighPrecision(v16, v22, a3);
      v25 = v23 >> 6;
      LODWORD(v26) = (v23 >> 6) + 2;
      v27 = malloc_type_malloc((8 * v26), 0x100004000313F17uLL);
      v17 = v27;
      if (!v27)
      {
        goto LABEL_75;
      }

      bzero(v27 + 1, 8 * v25 + 8);
      *v17 = v57;
      simpleShiftLeftHighPrecision(v17, v25 + 2, v23);
    }

    v33 = compareHighPrecision(v16, v22, v17, v26);
    v34 = v33;
    if (v33 < 1)
    {
      if (v33)
      {
        v36 = malloc_type_malloc(8 * v26, 0x100004000313F17uLL);
        v18 = v36;
        if (!v36)
        {
          goto LABEL_75;
        }

        memcpy(v36, v17, 8 * v26);
        subtractHighPrecision(v18, v26, v16, v22);
        LODWORD(v22) = v26;
      }

      else
      {
        v37 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        v18 = v37;
        if (!v37)
        {
          goto LABEL_75;
        }

        *v37 = 0;
        LODWORD(v22) = 1;
      }
    }

    else
    {
      v35 = malloc_type_malloc(8 * v22, 0x100004000313F17uLL);
      v18 = v35;
      if (!v35)
      {
        goto LABEL_75;
      }

      memcpy(v35, v16, 8 * v22);
      subtractHighPrecision(v18, v22, v17, v26);
    }

    v38 = v22 + 1;
    v19 = malloc_type_malloc(8 * (v22 + 1), 0x100004000313F17uLL);
    if (!v19)
    {
LABEL_75:
      if (v16 && v16 != __src)
      {
        free(v16);
      }

LABEL_78:
      free(v17);
      free(v18);
      free(v19);
      objc_exception_throw(objc_alloc_init(JavaLangOutOfMemoryError));
    }

    v57 *= 2;
    multiplyHighPrecision(v18, v22, &v57, 1, v19, v22 + 1);
    v57 >>= 1;
    v39 = compareHighPrecision(v19, v22 + 1, v17, v26);
    if (v39 < 0)
    {
      if (v9 == 2.22507386e-308)
      {
        goto LABEL_70;
      }

      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_70;
      }

      if (v57 != 0x10000000000000)
      {
        goto LABEL_70;
      }

      simpleShiftLeftHighPrecision(v19, v38, 1);
      if (compareHighPrecision(v19, v38, v17, v26) < 1)
      {
        goto LABEL_70;
      }

      v41 = *&v9 - 1;
      goto LABEL_64;
    }

    if (!v39)
    {
      break;
    }

    v40 = v9;
    if (v34 < 0)
    {
      goto LABEL_63;
    }

    if (v9 == INFINITY)
    {
      goto LABEL_70;
    }

    v41 = *&v9 + 1;
LABEL_64:
    v9 = *&v41;
  }

  if ((v57 & 1) == 0)
  {
    if ((v34 & 0x80000000) == 0 || v57 != 0x10000000000000)
    {
      goto LABEL_70;
    }

    v40 = v9;
LABEL_63:
    v41 = *&v40 - 1;
    goto LABEL_64;
  }

  if (v34 < 0)
  {
    v42 = *&v9 - 1;
  }

  else
  {
    v42 = *&v9 + 1;
  }

  v9 = *&v42;
LABEL_70:
  if (v16 && v16 != __src)
  {
    free(v16);
  }

  free(v17);
  free(v18);
  free(v19);
  return v9;
}

JavaTextSimpleDateFormat *JavaTextDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10027748C(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!a2)
  {
    v13 = new_JavaLangNullPointerException_initWithNSString_(@"locale == null");
    objc_exception_throw(v13);
  }

  v10 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(a2);
  if (!v10)
  {
    JreThrowNullPointerException();
  }

  v11 = new_JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_([(LibcoreIcuLocaleData *)v10 getDateFormatWithInt:a1], a2);

  return v11;
}

JavaTextSimpleDateFormat *JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1002774D4(a2, a2, a3, a4, a5, a6, a7, a8);
  sub_10027748C(a1, v10, v11, v12, v13, v14, v15, v16);
  Default = JavaUtilLocale_getDefault();

  return JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilLocale_(a1, a2, Default, v18, v19, v20, v21, v22);
}

JavaTextSimpleDateFormat *JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilLocale_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1002774D4(a2, a2, a3, a4, a5, a6, a7, a8);
  sub_10027748C(a1, v11, v12, v13, v14, v15, v16, v17);
  if (!a3)
  {
    v31 = new_JavaLangNullPointerException_initWithNSString_(@"locale == null");
    objc_exception_throw(v31);
  }

  v18 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(a3);
  if (!v18)
  {
    JreThrowNullPointerException();
  }

  v19 = v18;
  v20 = [(LibcoreIcuLocaleData *)v18 getDateFormatWithInt:a1];
  [(LibcoreIcuLocaleData *)v19 getTimeFormatWithInt:a2];
  v28 = JreStrcat("$C$", v21, v22, v23, v24, v25, v26, v27, v20);
  v29 = new_JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_(v28, a3);

  return v29;
}

JavaTextSimpleDateFormat *JavaTextDateFormat_getTimeInstanceWithInt_withJavaUtilLocale_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1002774D4(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!a2)
  {
    v13 = new_JavaLangNullPointerException_initWithNSString_(@"locale == null");
    objc_exception_throw(v13);
  }

  v10 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(a2);
  if (!v10)
  {
    JreThrowNullPointerException();
  }

  v11 = new_JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_([(LibcoreIcuLocaleData *)v10 getTimeFormatWithInt:a1], a2);

  return v11;
}

uint64_t sub_10027748C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result >= 4)
  {
    v8 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Illegal date style: ");
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  return result;
}

uint64_t sub_1002774D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result >= 4)
  {
    v8 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Illegal time style: ");
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  return result;
}

id JavaTextDateFormat_Field_initWithNSString_withInt_(uint64_t a1, uint64_t a2, int a3)
{
  result = JavaTextFormat_Field_initWithNSString_(a1, a2);
  *(a1 + 16) = -1;
  *(a1 + 16) = a3;
  if (a3 != -1)
  {
    if (!qword_100556F58)
    {
      JreThrowNullPointerException();
    }

    result = [qword_100556F58 getWithId:JavaLangInteger_valueOfWithInt_(a3)];
    if (!result)
    {
      v6 = qword_100556F58;
      v7 = JavaLangInteger_valueOfWithInt_(a3);

      return [v6 putWithId:v7 withId:a1];
    }
  }

  return result;
}

id JavaTextDateFormat_Field_ofCalendarFieldWithInt_(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(JavaTextDateFormat_Field__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100204B78();
  }

  if (a1 >= 0x11)
  {
    v12 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Field out of range: ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  v9 = qword_100556F58;
  if (!qword_100556F58)
  {
    JreThrowNullPointerException();
  }

  v10 = JavaLangInteger_valueOfWithInt_(a1);

  return [v9 getWithId:v10];
}

ComGoogleJ2objcNetIosHttpsHandler *new_ComGoogleJ2objcNetIosHttpsHandler_init()
{
  v0 = [ComGoogleJ2objcNetIosHttpsHandler alloc];
  ComGoogleJ2objcNetIosHttpHandler_init(v0, v1);
  return v0;
}

OrgXmlSaxHelpersNamespaceSupport *new_OrgXmlSaxHelpersNamespaceSupport_init()
{
  v0 = [OrgXmlSaxHelpersNamespaceSupport alloc];
  [(OrgXmlSaxHelpersNamespaceSupport *)v0 reset];
  return v0;
}

void *OrgXmlSaxHelpersNamespaceSupport_Context_initWithOrgXmlSaxHelpersNamespaceSupport_(uint64_t a1, void *a2)
{
  objc_storeWeak((a1 + 56), a2);
  JreStrongAssign((a1 + 40), 0);
  *(a1 + 48) = 1;
  JreStrongAssign((a1 + 64), 0);
  *(a1 + 72) = 0;
  JreStrongAssign((a1 + 80), 0);

  return [OrgXmlSaxHelpersNamespaceSupport_Context copyTables]_0(a1);
}

id JavaLangThread_init(uint64_t a1)
{
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  *(a1 + 80) = 1;
  JreStrongAssignAndConsume((a1 + 88), [NSObject alloc]);
  v2 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 96), v2);
  v3 = off_1005538E0;

  return sub_1002797AC(a1, 0, 0, v3, 0, 1);
}

id JavaLangThread_initWithJavaLangRunnable_(uint64_t a1, uint64_t a2)
{
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  *(a1 + 80) = 1;
  JreStrongAssignAndConsume((a1 + 88), [NSObject alloc]);
  v4 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 96), v4);
  v5 = off_1005538E0;

  return sub_1002797AC(a1, 0, a2, v5, 0, 1);
}

id JavaLangThread_initWithJavaLangRunnable_withNSString_(uint64_t a1, uint64_t a2, void *a3)
{
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  *(a1 + 80) = 1;
  JreStrongAssignAndConsume((a1 + 88), [NSObject alloc]);
  v6 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 96), v6);

  return sub_1002797AC(a1, 0, a2, a3, 0, 1);
}

id JavaLangThread_initWithNSString_(uint64_t a1, void *a2)
{
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  *(a1 + 80) = 1;
  JreStrongAssignAndConsume((a1 + 88), [NSObject alloc]);
  v4 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 96), v4);

  return sub_1002797AC(a1, 0, 0, a2, 0, 1);
}

id JavaLangThread_initWithJavaLangThreadGroup_withJavaLangRunnable_(uint64_t a1, void *a2, uint64_t a3)
{
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  *(a1 + 80) = 1;
  JreStrongAssignAndConsume((a1 + 88), [NSObject alloc]);
  v6 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 96), v6);
  v7 = off_1005538E0;

  return sub_1002797AC(a1, a2, a3, v7, 0, 1);
}

id JavaLangThread_initWithJavaLangThreadGroup_withJavaLangRunnable_withNSString_withLong_(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  *(a1 + 80) = 1;
  JreStrongAssignAndConsume((a1 + 88), [NSObject alloc]);
  v10 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 96), v10);

  return sub_1002797AC(a1, a2, a3, a4, a5, 1);
}

id JavaLangThread_initWithJavaLangThreadGroup_withJavaLangRunnable_withNSString_(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  *(a1 + 80) = 1;
  JreStrongAssignAndConsume((a1 + 88), [NSObject alloc]);
  v8 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 96), v8);

  return sub_1002797AC(a1, a2, a3, a4, 0, 1);
}

id JavaLangThread_initWithJavaLangThreadGroup_withNSString_(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  *(a1 + 80) = 1;
  JreStrongAssignAndConsume((a1 + 88), [NSObject alloc]);
  v6 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 96), v6);

  return sub_1002797AC(a1, a2, 0, a3, 0, 1);
}

id sub_1002797AC(uint64_t a1, id a2, uint64_t a3, id a4, uint64_t a5, int a6)
{
  v12 = CKContextExecutor_ptr;
  v13 = +[NSThread currentThread];
  v14 = [(NSThread *)v13 threadDictionary];
  if (!a2)
  {
    a2 = [+[JavaLangThread currentThread](JavaLangThread "currentThread")];
    if (!a2)
    {
      sub_10027B608();
    }
  }

  objc_storeWeak((a1 + 72), a2);
  if (a6)
  {
    if (!a3)
    {
      a3 = a1;
    }

    v15 = [[NSThread alloc] initWithTarget:a1 selector:"run0WithId:" object:0];
    v16 = v15;
    v17 = [(NSThread *)v15 threadDictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v30 = a3;
      v31 = a5;
      v32 = a4;
      v20 = *v34;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = *(*(&v33 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v22 hasPrefix:off_1005538E8] & 1) == 0)
          {
            [(NSMutableDictionary *)v17 setObject:[(NSMutableDictionary *)v14 objectForKey:v22] forKey:v22];
          }
        }

        v19 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v19);
      a4 = v32;
      a3 = v30;
      a5 = v31;
      v12 = CKContextExecutor_ptr;
    }
  }

  else
  {
    v15 = v13;
    v17 = v14;
  }

  if (a3)
  {
    [(NSMutableDictionary *)v17 setObject:a3 forKey:off_1005538B8[0]];
  }

  if (a5)
  {
    [(NSThread *)v15 setStackSize:a5];
  }

  [v12[71] threadPriority];
  [(NSThread *)v15 setThreadPriority:?];
  v23 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", +[JavaLangThread getNextThreadId]_0());
  [(NSMutableDictionary *)v17 setObject:v23 forKey:off_1005538C0[0]];
  if (!a4)
  {
    v28 = objc_alloc_init(JavaLangNullPointerException);
    v29 = v28;
    objc_exception_throw(v28);
  }

  if ([a4 isEqual:off_1005538E0])
  {
    a4 = [a4 stringByAppendingFormat:@"%@", v23];
  }

  [(NSThread *)v15 setName:a4];
  [a1 setNameWithNSString:a4];
  if ([(NSThread *)v13 isMainThread])
  {
    v24 = 5;
  }

  else
  {
    [(NSThread *)v13 threadPriority];
    v24 = (v25 * 10.0);
  }

  [a1 setPriority0WithInt:v24];
  [objc_loadWeak((a1 + 72)) addWithJavaLangThread:a1];
  *(a1 + 40) = v15;
  v26 = v15;
  return [(NSMutableDictionary *)v17 setObject:a1 forKey:off_1005538D0];
}

void sub_100279C68(void *a1)
{
  objc_end_catch();
  objc_begin_catch(a1);
  JUMPOUT(0x100279BD8);
}

void sub_100279C80()
{
  if (v0)
  {
    JUMPOUT(0x100279C88);
  }

  JUMPOUT(0x100279C8CLL);
}

id JavaLangThread_enumerateWithJavaLangThreadArray_(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  v2 = JavaLangThread_currentThread();
  if (!v2 || (v3 = [(JavaLangThread *)v2 getThreadGroup]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 enumerateWithJavaLangThreadArray:a1];
}

void sub_10027A160(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

id sub_10027A194(void *a1)
{
  result = [a1 isAlive];
  if (result)
  {
    v3 = a1[6];
    objc_sync_enter(v3);
    while ([a1 isAlive])
    {
      v4 = a1[6];
      if (!v4)
      {
        JreThrowNullPointerException();
      }

      [v4 waitWithLong:20];
    }

    return objc_sync_exit(v3);
  }

  return result;
}

id sub_10027A234(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  if ((a2 & 0x8000000000000000) != 0 || a3 >= 0xF4240)
  {
    v18 = JreStrcat("$J$I", a2, a3, a4, a5, a6, a7, a8, @"bad timeout: millis=");
    v19 = new_JavaLangIllegalArgumentException_initWithNSString_(v18);
    objc_exception_throw(v19);
  }

  if (a3 | a2 && (a3 ^ 0x7FFFFFFFFFFFFFC0uLL) / 0xF4240 > a2)
  {
    result = [a1 isAlive];
    if (result)
    {
      v12 = a1[6];
      objc_sync_enter(v12);
      if ([a1 isAlive])
      {
        v13 = JavaLangSystem_nanoTime();
        for (i = v8 + 1000000 * v9; ; v8 = (i + v13 - v16) % 0xF4240)
        {
          v15 = a1[6];
          if (v9 < 0x15)
          {
            if (!v15)
            {
LABEL_23:
              JreThrowNullPointerException();
            }

            [v15 waitWithLong:v9 withInt:v8];
          }

          else
          {
            if (!v15)
            {
              goto LABEL_23;
            }

            [v15 waitWithLong:20];
          }

          if (![a1 isAlive])
          {
            break;
          }

          v16 = JavaLangSystem_nanoTime();
          v17 = i + v13 - v16;
          if (v17 < 1)
          {
            break;
          }

          v9 = v17 / 0xF4240uLL;
        }
      }

      return objc_sync_exit(v12);
    }
  }

  else
  {

    return sub_10027A194(a1);
  }

  return result;
}

uint64_t JavaLangThread_sleepWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  return JavaLangThread_sleepWithLong_withInt_(a1, 0);
}

uint64_t JavaLangThread_sleepWithLong_withInt_(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  v4 = JavaLangThread_currentThread();
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  vmThread = v4->vmThread_;
  objc_sync_enter(vmThread);
  if (!vmThread)
  {
    JreThrowNullPointerException();
  }

  [vmThread waitWithLong:a1 withInt:a2];

  return objc_sync_exit(vmThread);
}

BOOL JavaLangThread_holdsLockWithId_(unint64_t a1)
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  return j2objc_sync_holds_lock(a1);
}

void sub_10027A86C(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

id JavaLangThread_setDefaultUncaughtExceptionHandlerWithJavaLangThread_UncaughtExceptionHandler_(void *a1)
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  return JreStrongAssign(&qword_100556F78, a1);
}

JavaLangThread *JavaLangThread_currentThread()
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  v0 = [+[NSThread currentThread](NSThread threadDictionary];
  v1 = [(NSMutableDictionary *)v0 objectForKey:off_1005538D0];
  if (!v1)
  {
    v2 = [+[NSThread currentThread](NSThread name];
    v3 = [JavaLangThread alloc];
    v1 = [(JavaLangThread *)v3 initWithJavaLangThreadGroup:qword_100556F88 withNSString:v2 withBoolean:0];
    v4 = v1;
  }

  return v1;
}

id JavaLangThread_activeCount()
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  v0 = JavaLangThread_currentThread();
  if (!v0 || (v1 = [(JavaLangThread *)v0 getThreadGroup]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v1 activeCount];
}

id JavaLangThread_dumpStack()
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  v0 = new_JavaLangThrowable_initWithNSString_(@"stack dump");

  return [(JavaLangThrowable *)v0 printStackTrace];
}

BOOL JavaLangThread_interrupted()
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  v0 = JavaLangThread_currentThread();
  interrupted = v0->interrupted_;
  v0->interrupted_ = 0;
  return interrupted;
}

id JavaLangThread_yield()
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  if (!JavaLangThread_currentThread())
  {
    JreThrowNullPointerException();
  }

  return [NSThread sleepForTimeInterval:0.0];
}

uint64_t JavaLangThread_getDefaultUncaughtExceptionHandler()
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  return qword_100556F78;
}

uint64_t JavaLangThread_class_()
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  if (qword_100556F98 != -1)
  {
    sub_10027B640();
  }

  return qword_100556F90;
}

IOSObjectArray *JavaLangThread_StateEnum_values()
{
  if ((atomic_load_explicit(JavaLangThread_StateEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B654();
  }

  v0 = JavaLangThread_StateEnum_class_();

  return [IOSObjectArray arrayWithObjects:&JavaLangThread_StateEnum_values_ count:6 type:v0];
}

void *JavaLangThread_StateEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaLangThread_StateEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B654();
  }

  v2 = 0;
  while (1)
  {
    v3 = JavaLangThread_StateEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 6)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t JavaLangThread_StateEnum_class_()
{
  if ((atomic_load_explicit(JavaLangThread_StateEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B654();
  }

  if (qword_100556FA8 != -1)
  {
    sub_10027B660();
  }

  return qword_100556FA0;
}

uint64_t OrgXmlSaxParser_class_()
{
  if (qword_100556FB8 != -1)
  {
    sub_10027B7FC();
  }

  return qword_100556FB0;
}

uint64_t maybeThrowIcuException(uint64_t a1, UErrorCode code)
{
  if (code > U_ZERO_ERROR)
  {
    v12 = v2;
    v10 = [NSString stringWithFormat:@"%s failed: %s", a1, u_errorName(code), v5, v4, v3, v12, v6, v7];
    if (code <= U_INVALID_TABLE_FILE)
    {
      if (code != U_ILLEGAL_ARGUMENT_ERROR)
      {
        if (code == U_INDEX_OUTOFBOUNDS_ERROR)
        {
          goto LABEL_7;
        }

LABEL_10:
        v11 = off_1003E8CA8;
        goto LABEL_14;
      }

      v11 = off_1003E8CA0;
    }

    else
    {
      switch(code)
      {
        case U_FORMAT_INEXACT_ERROR:
          v11 = off_1003E8C90;
          break;
        case U_UNSUPPORTED_ERROR:
          v11 = off_1003E8CB0;
          break;
        case U_BUFFER_OVERFLOW_ERROR:
LABEL_7:
          v11 = off_1003E8C98;
          break;
        default:
          goto LABEL_10;
      }
    }

LABEL_14:
    objc_exception_throw([objc_alloc(*v11) initWithNSString:v10]);
  }

  return 0;
}

BOOL Java_java_util_regex_Matcher_findImpl(int a1, int a2, URegularExpression *regexp, int32_t startIndex, uint64_t a5)
{
  status = U_ZERO_ERROR;
  v7 = uregex_find(regexp, startIndex, &status);
  if (v7)
  {
    sub_10027BBC0(regexp, a5, &status);
  }

  maybeThrowIcuException("uregex_find", status);
  return v7 != 0;
}

uint64_t sub_10027BBC0(URegularExpression *a1, uint64_t a2, UErrorCode *status)
{
  result = uregex_groupCount(a1, status);
  if ((result & 0x80000000) == 0)
  {
    v7 = result;
    v8 = 0;
    v9 = 1;
    do
    {
      *(a2 + 12 + 4 * (v9 - 1)) = uregex_start(a1, v8, status);
      result = uregex_end(a1, v8, status);
      *(a2 + 12 + 4 * v9) = result;
      ++v8;
      v9 += 2;
    }

    while (v8 <= v7);
  }

  return result;
}

BOOL Java_java_util_regex_Matcher_findNextImpl(int a1, int a2, URegularExpression *regexp, uint64_t a4)
{
  status = U_ZERO_ERROR;
  Next = uregex_findNext(regexp, &status);
  if (Next)
  {
    sub_10027BBC0(regexp, a4, &status);
  }

  maybeThrowIcuException("uregex_findNext", status);
  return Next != 0;
}

uint64_t Java_java_util_regex_Matcher_groupCountImpl(int a1, int a2, URegularExpression *regexp)
{
  status = U_ZERO_ERROR;
  v3 = uregex_groupCount(regexp, &status);
  maybeThrowIcuException("uregex_groupCount", status);
  return v3;
}

BOOL Java_java_util_regex_Matcher_hitEndImpl(int a1, int a2, URegularExpression *regexp)
{
  status = U_ZERO_ERROR;
  v3 = uregex_hitEnd(regexp, &status) != 0;
  maybeThrowIcuException("uregex_hitEnd", status);
  return v3;
}

BOOL Java_java_util_regex_Matcher_lookingAtImpl(int a1, int a2, URegularExpression *regexp, uint64_t a4)
{
  status = U_ZERO_ERROR;
  v6 = uregex_lookingAt(regexp, -1, &status);
  if (v6)
  {
    sub_10027BBC0(regexp, a4, &status);
  }

  maybeThrowIcuException("uregex_lookingAt", status);
  return v6 != 0;
}

BOOL Java_java_util_regex_Matcher_matchesImpl(int a1, int a2, URegularExpression *regexp, uint64_t a4)
{
  status = U_ZERO_ERROR;
  v6 = uregex_matches(regexp, -1, &status);
  if (v6)
  {
    sub_10027BBC0(regexp, a4, &status);
  }

  maybeThrowIcuException("uregex_matches", status);
  return v6 != 0;
}

URegularExpression *Java_java_util_regex_Matcher_openImpl(int a1, int a2, URegularExpression *regexp)
{
  status = U_ZERO_ERROR;
  v3 = uregex_clone(regexp, &status);
  maybeThrowIcuException("uregex_clone", status);
  return v3;
}

BOOL Java_java_util_regex_Matcher_requireEndImpl(int a1, int a2, URegularExpression *regexp)
{
  status = U_ZERO_ERROR;
  v3 = uregex_requireEnd(regexp, &status) != 0;
  maybeThrowIcuException("uregex_requireEnd", status);
  return v3;
}

uint64_t Java_java_util_regex_Matcher_setInputImpl(int a1, int a2, URegularExpression *regexp, uint64_t a4, int32_t a5, int32_t a6)
{
  status = U_ZERO_ERROR;
  uregex_setText(regexp, (a4 + 12), *(a4 + 8), &status);
  uregex_setRegion(regexp, a5, a6, &status);
  return maybeThrowIcuException("uregex_setText", status);
}

uint64_t Java_java_util_regex_Matcher_useAnchoringBoundsImpl(int a1, int a2, URegularExpression *regexp, UBool b)
{
  status = U_ZERO_ERROR;
  uregex_useAnchoringBounds(regexp, b, &status);
  return maybeThrowIcuException("uregex_useAnchoringBounds", status);
}

uint64_t Java_java_util_regex_Matcher_useTransparentBoundsImpl(int a1, int a2, URegularExpression *regexp, UBool b)
{
  status = U_ZERO_ERROR;
  uregex_useTransparentBounds(regexp, b, &status);
  return maybeThrowIcuException("uregex_useTransparentBounds", status);
}

uint64_t LibcoreIoStructPollfd_class_()
{
  if (qword_100556FC8 != -1)
  {
    sub_10027C154();
  }

  return qword_100556FC0;
}

JavaNioChannelsUnresolvedAddressException *new_JavaNioChannelsUnresolvedAddressException_init()
{
  v0 = [JavaNioChannelsUnresolvedAddressException alloc];
  JavaLangIllegalArgumentException_init(v0, v1);
  return v0;
}

id JavaUtilMissingFormatWidthException_initWithNSString_(uint64_t a1, void *a2)
{
  JavaUtilIllegalFormatException_init(a1, a2);
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"s == null");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 88), a2);
}

JavaUtilMissingFormatWidthException *new_JavaUtilMissingFormatWidthException_initWithNSString_(void *a1)
{
  v2 = [JavaUtilMissingFormatWidthException alloc];
  JavaUtilMissingFormatWidthException_initWithNSString_(v2, a1);
  return v2;
}

id LibcoreIoStreams_readSingleByteWithJavaIoInputStream_(void *a1)
{
  if ((atomic_load_explicit(&LibcoreIoStreams__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027CBA8();
  }

  v2 = [IOSByteArray arrayWithLength:1];
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  result = [a1 readWithByteArray:v2 withInt:0 withInt:1];
  if (result != -1)
  {
    size = v3->super.size_;
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    return *(&v3->super.size_ + 4);
  }

  return result;
}

id LibcoreIoStreams_writeSingleByteWithJavaIoOutputStream_withInt_(void *a1, char a2)
{
  if ((atomic_load_explicit(&LibcoreIoStreams__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027CBA8();
  }

  v4 = [IOSByteArray arrayWithLength:1];
  size = v4->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  *(&v4->super.size_ + 4) = a2;
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  return [a1 writeWithByteArray:v4];
}

uint64_t LibcoreIoStreams_readFullyWithJavaIoInputStream_withByteArray_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(&LibcoreIoStreams__initialized, memory_order_acquire))
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10027CBA8();
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = *(a2 + 8);

  return LibcoreIoStreams_readFullyWithJavaIoInputStream_withByteArray_withInt_withInt_(a1, a2, 0, v4);
}

uint64_t LibcoreIoStreams_readFullyWithJavaIoInputStream_withByteArray_withInt_withInt_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if (atomic_load_explicit(&LibcoreIoStreams__initialized, memory_order_acquire))
  {
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    result = sub_10027CBA8();
    if (!v4)
    {
      return result;
    }
  }

  if (!v7)
  {
    v10 = @"in == null";
LABEL_16:
    v9 = new_JavaLangNullPointerException_initWithNSString_(v10);
    goto LABEL_13;
  }

  if (!a2)
  {
    v10 = @"dst == null";
    goto LABEL_16;
  }

  result = JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a2 + 8), a3, v4);
  if (v4 >= 1)
  {
    while (1)
    {
      result = [v7 readWithByteArray:a2 withInt:a3 withInt:v4];
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      a3 = (result + a3);
      v8 = __OFSUB__(v4, result);
      v4 = (v4 - result);
      if ((v4 < 0) ^ v8 | (v4 == 0))
      {
        return result;
      }
    }

    v9 = new_JavaIoEOFException_init();
LABEL_13:
    objc_exception_throw(v9);
  }

  return result;
}

id LibcoreIoStreams_readFullyWithJavaIoInputStream_(void *a1)
{
  if ((atomic_load_explicit(&LibcoreIoStreams__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027CBA8();
  }

  FullyNoCloseWithJavaIoInputStream = LibcoreIoStreams_readFullyNoCloseWithJavaIoInputStream_(a1);
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  [a1 close];
  return FullyNoCloseWithJavaIoInputStream;
}

void sub_10027C66C()
{
  if (v0)
  {
    JUMPOUT(0x10027C674);
  }

  JUMPOUT(0x10027C678);
}

id LibcoreIoStreams_readFullyNoCloseWithJavaIoInputStream_(void *a1)
{
  if ((atomic_load_explicit(&LibcoreIoStreams__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027CBA8();
  }

  v2 = new_JavaIoByteArrayOutputStream_init();
  v3 = [IOSByteArray arrayWithLength:1024];
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  v5 = [a1 readWithByteArray:v3];
  if (v5 != -1)
  {
    v6 = v5;
    do
    {
      [(JavaIoByteArrayOutputStream *)v2 writeWithByteArray:v4 withInt:0 withInt:v6];
      v6 = [a1 readWithByteArray:v4];
    }

    while (v6 != -1);
  }

  return [(JavaIoByteArrayOutputStream *)v2 toByteArray];
}

id LibcoreIoStreams_readFullyWithJavaIoReader_(void *a1)
{
  if ((atomic_load_explicit(&LibcoreIoStreams__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027CBA8();
  }

  v2 = new_JavaIoStringWriter_init();
  v3 = [IOSCharArray arrayWithLength:1024];
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  for (i = v3; ; [(JavaIoStringWriter *)v2 writeWithCharArray:i withInt:0 withInt:v5])
  {
    v5 = [a1 readWithCharArray:i];
    if (v5 == -1)
    {
      break;
    }
  }

  v6 = [(JavaIoStringWriter *)v2 description];
  [a1 close];
  return v6;
}

void sub_10027C810(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_10027C81C(void *a1)
{
  objc_begin_catch(a1);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  JUMPOUT(0x10027C7D8);
}

id LibcoreIoStreams_skipAllWithJavaIoInputStream_(void *a1)
{
  if (atomic_load_explicit(&LibcoreIoStreams__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    JreThrowNullPointerException();
  }

  sub_10027CBA8();
  if (!a1)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_3:
    [a1 skipWithLong:0x7FFFFFFFFFFFFFFFLL];
    result = [a1 read];
  }

  while (result != -1);
  return result;
}

uint64_t LibcoreIoStreams_skipByReadingWithJavaIoInputStream_withLong_(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&LibcoreIoStreams__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027CBA8();
  }

  if (!qword_100556FD0)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  v4 = [qword_100556FD0 getAndSetWithId:0];
  if (!v4)
  {
    v4 = [IOSByteArray arrayWithLength:4096];
  }

  v5 = 0;
  do
  {
    if (a2 <= v5)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_19;
    }

    v6 = JavaLangMath_minWithLong_withLong_(a2 - v5, v4->super.size_);
    if (!a1)
    {
      goto LABEL_19;
    }

    v7 = v6;
    v8 = [a1 readWithByteArray:v4 withInt:0 withInt:v6];
    v9 = v8 == -1 ? 0 : v8;
    v5 += v9;
  }

  while (v8 != -1 && v8 >= v7);
  [qword_100556FD0 setWithId:v4];
  return v5;
}

uint64_t LibcoreIoStreams_copy__WithJavaIoInputStream_withJavaIoOutputStream_(void *a1, void *a2)
{
  if ((atomic_load_explicit(&LibcoreIoStreams__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027CBA8();
  }

  v4 = [IOSByteArray arrayWithLength:0x2000];
  if (!a1)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [a1 readWithByteArray:v4];
  if (v6 != -1)
  {
    v7 = v6;
    LODWORD(v8) = 0;
    while (a2)
    {
      v8 = v7 + v8;
      [a2 writeWithByteArray:v5 withInt:0 withInt:?];
      v7 = [a1 readWithByteArray:v5];
      if (v7 == -1)
      {
        return v8;
      }
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  return 0;
}

NSString *LibcoreIoStreams_readAsciiLineWithJavaIoInputStream_(void *a1)
{
  if ((atomic_load_explicit(&LibcoreIoStreams__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027CBA8();
  }

  v2 = new_JavaLangStringBuilder_initWithInt_(0x50u);
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  for (i = v2; ; [(JavaLangStringBuilder *)i appendWithChar:v4])
  {
    v4 = [a1 read];
    if (v4 == 10)
    {
      break;
    }

    if (v4 == -1)
    {
      v8 = new_JavaIoEOFException_init();
      objc_exception_throw(v8);
    }
  }

  v5 = [(JavaLangStringBuilder *)i length];
  v6 = (v5 - 1);
  if (v5 >= 1 && [(JavaLangAbstractStringBuilder *)i charAtWithInt:v6]== 13)
  {
    [(JavaLangAbstractStringBuilder *)i setLengthWithInt:v6];
  }

  return [(JavaLangStringBuilder *)i description];
}

JavaUtilLocale *LibcoreIcuICU_localeFromStringWithNSString_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 indexOf:95];
  v3 = [a1 indexOf:95 fromIndex:(v2 + 1)];
  v4 = (v2 + 1);
  if (v2 == -1)
  {
    v5 = new_JavaUtilLocale_initWithNSString_(a1);
  }

  else
  {
    v6 = v3;
    v7 = [a1 substring:0 endIndex:v2];
    if (v6 == -1)
    {
      v5 = new_JavaUtilLocale_initWithNSString_withNSString_(v7, [a1 substring:v4]);
    }

    else
    {
      v5 = new_JavaUtilLocale_initWithNSString_withNSString_withNSString_(v7, [a1 substring:v4 endIndex:v6], objc_msgSend(a1, "substring:", (v6 + 1)));
    }
  }

  return v5;
}

id LibcoreIcuICU_localesFromStringsWithNSStringArray_(uint64_t a1)
{
  v2 = new_JavaUtilLinkedHashSet_init();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  v4 = (a1 + 24);
  v5 = a1 + 24 + 8 * *(a1 + 8);
  while (v4 < v5)
  {
    v6 = *v4++;
    [(JavaUtilHashSet *)v3 addWithId:LibcoreIcuICU_localeFromStringWithNSString_(v6)];
  }

  v7 = [IOSObjectArray arrayWithLength:[(JavaUtilHashSet *)v3 size] type:JavaUtilLocale_class_()];

  return [(JavaUtilAbstractCollection *)v3 toArrayWithNSObjectArray:v7];
}

id LibcoreIcuICU_getDisplayCountryNativeWithNSString_withNSString_(uint64_t a1, uint64_t a2)
{
  v3 = [[NSLocale alloc] initWithLocaleIdentifier:a2];
  v4 = [v3 objectForKey:NSLocaleCountryCode];

  if (v4)
  {
    return v4;
  }

  else
  {
    return a1;
  }
}

id LibcoreIcuICU_getDisplayLanguageNativeWithNSString_withNSString_(uint64_t a1, uint64_t a2)
{
  v3 = [[NSLocale alloc] initWithLocaleIdentifier:a2];
  v4 = [v3 objectForKey:NSLocaleLanguageCode];

  if (v4)
  {
    return v4;
  }

  else
  {
    return a1;
  }
}

id LibcoreIcuICU_getDisplayVariantNativeWithNSString_withNSString_(uint64_t a1, uint64_t a2)
{
  v3 = [[NSLocale alloc] initWithLocaleIdentifier:a2];
  v4 = [v3 objectForKey:NSLocaleVariantCode];

  if (v4)
  {
    return v4;
  }

  else
  {
    return a1;
  }
}

id LibcoreIcuICU_getCurrencyCodeWithNSString_(uint64_t a1)
{
  v1 = [[NSLocale alloc] initWithLocaleIdentifier:a1];
  v2 = objc_alloc_init(NSNumberFormatter);
  [v2 setNumberStyle:2];
  [v2 setLocale:v1];

  return [v2 currencyCode];
}

id LibcoreIcuICU_getCurrencySymbolWithNSString_(uint64_t a1)
{
  v1 = [[NSLocale alloc] initWithLocaleIdentifier:a1];
  v2 = objc_alloc_init(NSNumberFormatter);
  [v2 setNumberStyle:2];
  [v2 setLocale:v1];

  return [v2 currencySymbol];
}

id LibcoreIcuICU_getCurrencyFractionDigitsWithNSString_(uint64_t a1)
{
  v2 = objc_alloc_init(NSNumberFormatter);
  [v2 setCurrencyCode:a1];
  return [v2 maximumFractionDigits];
}

id LibcoreIcuICU_getISOLanguages()
{
  v0 = qword_100556FD8;
  if (!qword_100556FD8)
  {
    v1 = +[LibcoreIcuICU getISOLanguagesNative]_0();
    JreStrongAssign(&qword_100556FD8, v1);
    v0 = qword_100556FD8;
    if (!qword_100556FD8)
    {
      JreThrowNullPointerException();
    }
  }

  return [v0 clone];
}

id LibcoreIcuICU_getISOCountries()
{
  v0 = qword_100556FE0;
  if (!qword_100556FE0)
  {
    v1 = +[LibcoreIcuICU getISOCountriesNative]_0();
    JreStrongAssign(&qword_100556FE0, v1);
    v0 = qword_100556FE0;
    if (!qword_100556FE0)
    {
      JreThrowNullPointerException();
    }
  }

  return [v0 clone];
}