JavaMathBigInteger *JavaMathLogical_andNotWithJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *a1, _DWORD *a2)
{
  if (!a2)
  {
    goto LABEL_35;
  }

  v3 = a1;
  if (!a2[5])
  {
    return v3;
  }

  if (!a1)
  {
LABEL_35:
    JreThrowNullPointerException();
  }

  sign = a1->sign_;
  explicit = atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire);
  if (!sign)
  {
    if ((explicit & 1) == 0)
    {
      goto LABEL_17;
    }

    return JavaMathBigInteger_ZERO_;
  }

  if ((explicit & 1) == 0)
  {
    sub_100147554();
  }

  if ([(JavaMathBigInteger *)v3 isEqual:JavaMathBigInteger_MINUS_ONE_])
  {

    return [a2 not__];
  }

  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  if ([a2 isEqual:JavaMathBigInteger_MINUS_ONE_])
  {
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
LABEL_17:
      sub_100147554();
    }

    return JavaMathBigInteger_ZERO_;
  }

  v6 = a2[5];
  if (v3->sign_ < 1)
  {
    if (v6 < 1)
    {

      return JavaMathLogical_andNotNegativeWithJavaMathBigInteger_withJavaMathBigInteger_(v3, a2);
    }

    else
    {

      return JavaMathLogical_andNotNegativePositiveWithJavaMathBigInteger_withJavaMathBigInteger_(v3, a2);
    }
  }

  else if (v6 < 1)
  {

    return JavaMathLogical_andNotPositiveNegativeWithJavaMathBigInteger_withJavaMathBigInteger_(v3, a2);
  }

  else
  {

    return JavaMathLogical_andNotPositiveWithJavaMathBigInteger_withJavaMathBigInteger_(v3, a2);
  }
}

JavaMathBigInteger *JavaMathLogical_andNotPositiveWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_29;
  }

  v4 = [IOSIntArray arrayWithLength:*(a1 + 16)];
  if (!a2)
  {
    goto LABEL_29;
  }

  v5 = v4;
  v6 = JavaLangMath_minWithInt_withInt_(*(a1 + 16), *(a2 + 16));
  v7 = [a1 getFirstNonzeroDigit];
  if (v7 < v6)
  {
    v8 = v7;
    v24 = v6;
    v9 = v6;
    do
    {
      v10 = *(a1 + 8);
      if (!v10)
      {
        goto LABEL_29;
      }

      v11 = *(v10 + 8);
      if (v8 < 0 || v8 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v8);
      }

      v12 = *(v10 + 12 + 4 * v8);
      v13 = *(a2 + 8);
      v14 = *(v13 + 8);
      if (v8 < 0 || v8 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v8);
      }

      v15 = *(v13 + 12 + 4 * v8);
      v16 = v5[2];
      if (v8 < 0 || v8 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v8);
      }

      v5[v8++ + 3] = v12 & ~v15;
    }

    while (v9 != v8);
    v7 = v24;
  }

  LODWORD(v17) = *(a1 + 16);
  if (v7 < v17)
  {
    v18 = v7;
    while (1)
    {
      v19 = *(a1 + 8);
      if (!v19)
      {
        break;
      }

      v20 = *(v19 + 8);
      if (v18 < 0 || v18 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v18);
      }

      v21 = v5[2];
      if (v18 < 0 || v18 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v18);
      }

      v5[v18 + 3] = *(v19 + 12 + 4 * v18);
      ++v18;
      v17 = *(a1 + 16);
      if (v18 >= v17)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    JreThrowNullPointerException();
  }

LABEL_28:
  v22 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, v17, v5);
  [(JavaMathBigInteger *)v22 cutOffLeadingZeroes];
  return v22;
}

JavaMathBigInteger *JavaMathLogical_andNotPositiveNegativeWithJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_40;
  }

  v4 = [a2 getFirstNonzeroDigit];
  if (!a1)
  {
    goto LABEL_40;
  }

  v5 = v4;
  LODWORD(v6) = [(JavaMathBigInteger *)a1 getFirstNonzeroDigit];
  numberLength = a1->numberLength_;
  if (v5 < numberLength)
  {
    v8 = JavaLangMath_minWithInt_withInt_(numberLength, *(a2 + 16));
    v9 = [IOSIntArray arrayWithLength:v8];
    if (v6 < v5)
    {
      v6 = v6;
      while (1)
      {
        digits = a1->digits_;
        if (!digits)
        {
          break;
        }

        size = digits->super.size_;
        if (v6 < 0 || v6 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v6);
        }

        v12 = *(&digits->super.size_ + v6 + 1);
        v13 = v9->super.size_;
        if (v6 < 0 || v6 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v6);
        }

        *(&v9->super.size_ + ++v6) = v12;
        if (v5 == v6)
        {
          goto LABEL_16;
        }
      }

LABEL_40:
      JreThrowNullPointerException();
    }

    if (v6 == v5)
    {
LABEL_16:
      v14 = a1->digits_;
      if (!v14)
      {
        goto LABEL_40;
      }

      v15 = v14->super.size_;
      if ((v5 & 0x80000000) != 0 || v5 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v5);
      }

      v16 = *(&v14->super.size_ + v5 + 1);
      v17 = *(a2 + 8);
      v18 = *(v17 + 8);
      if ((v5 & 0x80000000) != 0 || v5 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v5);
      }

      v19 = (*(v17 + 12 + 4 * v5) - 1) & v16;
      v20 = v9->super.size_;
      if ((v5 & 0x80000000) != 0 || v5 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v5);
      }

      *(&v9->super.size_ + v5 + 1) = v19;
      LODWORD(v6) = v5 + 1;
    }

    if (v6 < v8)
    {
      v21 = v6;
      do
      {
        v22 = a1->digits_;
        if (!v22)
        {
          goto LABEL_40;
        }

        v23 = v22->super.size_;
        if (v21 < 0 || v21 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, v21);
        }

        v24 = *(&v22->super.size_ + v21 + 1);
        v25 = *(a2 + 8);
        v26 = *(v25 + 8);
        if (v21 < 0 || v21 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, v21);
        }

        v27 = *(v25 + 12 + 4 * v21);
        v28 = v9->super.size_;
        if (v21 < 0 || v21 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, v21);
        }

        *(&v9->super.size_ + ++v21) = v27 & v24;
      }

      while (v8 != v21);
    }

    a1 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, v8, v9);
    [(JavaMathBigInteger *)a1 cutOffLeadingZeroes];
  }

  return a1;
}

JavaMathBigInteger *JavaMathLogical_andNotNegativePositiveWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_115;
  }

  v4 = [a1 getFirstNonzeroDigit];
  if (!a2)
  {
    goto LABEL_115;
  }

  v5 = v4;
  v6 = [a2 getFirstNonzeroDigit];
  v7 = *(a2 + 16);
  if (v5 >= v7)
  {
    return a1;
  }

  v8 = v6;
  v9 = JavaLangMath_maxWithInt_withInt_(*(a1 + 16), v7);
  v70 = v9;
  if (v8 > v5)
  {
    v10 = [IOSIntArray arrayWithLength:v9];
    v11 = JavaLangMath_minWithInt_withInt_(*(a1 + 16), v8);
    if (v5 < v11)
    {
      v12 = v11;
      v5 = v5;
      v13 = v11;
      do
      {
        v14 = *(a1 + 8);
        if (!v14)
        {
          goto LABEL_115;
        }

        v15 = *(v14 + 8);
        if (v5 < 0 || v5 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v5);
        }

        v16 = *(v14 + 12 + 4 * v5);
        size = v10->super.size_;
        if (v5 < 0 || v5 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v5);
        }

        *(&v10->super.size_ + ++v5) = v16;
      }

      while (v13 != v5);
      v5 = v12;
    }

    if (v5 == *(a1 + 16))
    {
      if (v8 < *(a2 + 16))
      {
        v5 = v8;
        while (1)
        {
          v34 = *(a2 + 8);
          if (!v34)
          {
            break;
          }

          v35 = *(v34 + 8);
          if (v5 < 0 || v5 >= v35)
          {
            IOSArray_throwOutOfBoundsWithMsg(v35, v5);
          }

          v36 = *(v34 + 12 + 4 * v5);
          v37 = v10->super.size_;
          if (v5 < 0 || v5 >= v37)
          {
            IOSArray_throwOutOfBoundsWithMsg(v37, v5);
          }

          *(&v10->super.size_ + ++v5) = v36;
          if (v5 >= *(a2 + 16))
          {
            goto LABEL_72;
          }
        }

LABEL_115:
        JreThrowNullPointerException();
      }

      v5 = v8;
    }

    goto LABEL_72;
  }

  v19 = *(a1 + 8);
  if (!v19)
  {
    goto LABEL_115;
  }

  v20 = *(v19 + 8);
  if ((v5 & 0x80000000) != 0 || v5 >= v20)
  {
    IOSArray_throwOutOfBoundsWithMsg(v20, v5);
  }

  v21 = -*(v19 + 12 + 4 * v5);
  v22 = *(a2 + 8);
  v23 = *(v22 + 8);
  if ((v5 & 0x80000000) != 0 || v5 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v5);
  }

  v24 = v21 & ~*(v22 + 12 + 4 * v5);
  if (v24)
  {
LABEL_69:
    v10 = [IOSIntArray arrayWithLength:v9];
    v48 = v10->super.size_;
    if ((v5 & 0x80000000) != 0 || v5 >= v48)
    {
      IOSArray_throwOutOfBoundsWithMsg(v48, v5);
    }

    *(&v10->super.size_ + v5 + 1) = -v24;
    v5 = (v5 + 1);
LABEL_72:
    v49 = JavaLangMath_minWithInt_withInt_(*(a2 + 16), *(a1 + 16));
    if (v5 < v49)
    {
      v50 = v49;
      v5 = v5;
      v51 = v49;
      do
      {
        v52 = *(a1 + 8);
        if (!v52)
        {
          goto LABEL_115;
        }

        v53 = *(v52 + 8);
        if (v5 < 0 || v5 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, v5);
        }

        v54 = *(v52 + 12 + 4 * v5);
        v55 = *(a2 + 8);
        v56 = *(v55 + 8);
        if (v5 < 0 || v5 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, v5);
        }

        if (!v10)
        {
          goto LABEL_115;
        }

        v57 = *(v55 + 12 + 4 * v5);
        v58 = v10->super.size_;
        if (v5 < 0 || v5 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, v5);
        }

        *(&v10->super.size_ + ++v5) = v57 | v54;
      }

      while (v51 != v5);
      v5 = v50;
      LODWORD(v9) = v70;
    }

    if (v5 < *(a1 + 16))
    {
      v59 = v5;
      do
      {
        v60 = *(a1 + 8);
        if (!v60)
        {
          goto LABEL_115;
        }

        v61 = *(v60 + 8);
        if (v59 < 0 || v59 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, v5);
        }

        if (!v10)
        {
          goto LABEL_115;
        }

        v62 = *(v60 + 12 + 4 * v59);
        v63 = v10->super.size_;
        if (v59 < 0 || v59 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, v5);
        }

        *(&v10->super.size_ + ++v59) = v62;
        v5 = (v5 + 1);
      }

      while (v59 < *(a1 + 16));
    }

    if (v5 < *(a2 + 16))
    {
      v64 = v5;
      do
      {
        v65 = *(a2 + 8);
        if (!v65)
        {
          goto LABEL_115;
        }

        v66 = *(v65 + 8);
        if (v64 < 0 || v64 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, v64);
        }

        if (!v10)
        {
          goto LABEL_115;
        }

        v67 = *(v65 + 12 + 4 * v64);
        v68 = v10->super.size_;
        if (v64 < 0 || v64 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, v64);
        }

        *(&v10->super.size_ + ++v64) = v67;
      }

      while (v64 < *(a2 + 16));
    }

    v46 = v9;
    v47 = v10;
    goto LABEL_112;
  }

  v25 = JavaLangMath_minWithInt_withInt_(*(a2 + 16), *(a1 + 16));
  v26 = v5 + 1;
  v27 = &_mh_execute_header + (v5 << 32);
  while (v26 < v25)
  {
    v28 = *(a1 + 8);
    v29 = *(v28 + 8);
    if (v26 - 1 < -1 || v26 >= v29)
    {
      IOSArray_throwOutOfBoundsWithMsg(v29, (v5 + 1));
    }

    v30 = *(v28 + 12 + 4 * v26);
    v31 = *(a2 + 8);
    v32 = *(v31 + 8);
    if (v26 - 1 < -1 || v26 >= v32)
    {
      IOSArray_throwOutOfBoundsWithMsg(v32, (v5 + 1));
    }

    v33 = *(v31 + 12 + 4 * v26++) | v30;
    LODWORD(v5) = v5 + 1;
    v27 += &_mh_execute_header;
    if (v33 != -1)
    {
      v24 = ~v33;
      LODWORD(v9) = v70;
      goto LABEL_69;
    }
  }

  LODWORD(v5) = v5 + 1;
  if (*(a2 + 16) <= v5)
  {
    v24 = 0;
    v9 = v70;
  }

  else
  {
    v5 = v27 >> 32;
    v9 = v70;
    while (1)
    {
      v38 = *(a2 + 8);
      v39 = *(v38 + 8);
      if (v5 < 0 || v5 >= v39)
      {
        IOSArray_throwOutOfBoundsWithMsg(v39, v5);
      }

      v40 = *(v38 + 12 + 4 * v5);
      if (v40 != -1)
      {
        break;
      }

      if (++v5 >= *(a2 + 16))
      {
        v24 = 0;
        goto LABEL_56;
      }
    }

    v24 = ~v40;
  }

LABEL_56:
  if (v5 < *(a1 + 16))
  {
    v5 = v5;
    while (1)
    {
      v41 = *(a1 + 8);
      v42 = *(v41 + 8);
      if (v5 < 0 || v5 >= v42)
      {
        IOSArray_throwOutOfBoundsWithMsg(v42, v5);
      }

      v43 = *(v41 + 12 + 4 * v5);
      if (v43 != -1)
      {
        break;
      }

      if (++v5 >= *(a1 + 16))
      {
        goto LABEL_65;
      }
    }

    v24 = ~v43;
    goto LABEL_69;
  }

  if (v24)
  {
    goto LABEL_69;
  }

LABEL_65:
  v44 = [IOSIntArray arrayWithLength:v9 + 1];
  v45 = v44->super.size_;
  if ((v9 & 0x80000000) != 0 || v9 >= v45)
  {
    IOSArray_throwOutOfBoundsWithMsg(v45, v9);
  }

  *(&v44->super.size_ + v9 + 1) = 1;
  v46 = v9 + 1;
  v47 = v44;
LABEL_112:
  v69 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(-1, v46, v47);

  return v69;
}

uint64_t JavaMathLogical_andNotNegativeWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_83;
  }

  v4 = [a1 getFirstNonzeroDigit];
  if (!a2)
  {
    goto LABEL_83;
  }

  v5 = v4;
  v6 = [a2 getFirstNonzeroDigit];
  v7 = *(a2 + 16);
  if (v5 >= v7)
  {
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100147554();
    }

    return JavaMathBigInteger_ZERO_;
  }

  v8 = v6;
  v9 = [IOSIntArray arrayWithLength:*(a2 + 16)];
  v67 = v7;
  if (v5 >= v8)
  {
    v23 = *(a1 + 8);
    if (v8 >= v5)
    {
      if (!v23)
      {
        goto LABEL_83;
      }

      v24 = v5;
      v30 = *(v23 + 8);
      if ((v5 & 0x80000000) != 0 || v5 >= v30)
      {
        IOSArray_throwOutOfBoundsWithMsg(v30, v5);
      }

      v26 = -*(v23 + 12 + 4 * v5);
      v31 = *(a2 + 8);
      v32 = *(v31 + 8);
      if ((v5 & 0x80000000) != 0 || v5 >= v32)
      {
        IOSArray_throwOutOfBoundsWithMsg(v32, v5);
      }

      v29 = *(v31 + 12 + 4 * v5) - 1;
    }

    else
    {
      if (!v23)
      {
        goto LABEL_83;
      }

      v24 = v5;
      v25 = *(v23 + 8);
      if ((v5 & 0x80000000) != 0 || v5 >= v25)
      {
        IOSArray_throwOutOfBoundsWithMsg(v25, v5);
      }

      v26 = -*(v23 + 12 + 4 * v5);
      v27 = *(a2 + 8);
      v28 = *(v27 + 8);
      if ((v5 & 0x80000000) != 0 || v5 >= v28)
      {
        IOSArray_throwOutOfBoundsWithMsg(v28, v5);
      }

      v29 = *(v27 + 12 + 4 * v5);
    }

    v33 = v29 & v26;
    size = v9->super.size_;
    if ((v5 & 0x80000000) != 0)
    {
LABEL_84:
      IOSArray_throwOutOfBoundsWithMsg(size, v5);
    }
  }

  else
  {
    v10 = *(a1 + 8);
    if (!v10)
    {
      goto LABEL_83;
    }

    v11 = *(v10 + 8);
    if ((v5 & 0x80000000) != 0 || v5 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v5);
    }

    v12 = -*(v10 + 12 + 4 * v5);
    v13 = v9->super.size_;
    if ((v5 & 0x80000000) != 0 || v5 >= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, v5);
    }

    *(&v9->super.size_ + v5 + 1) = v12;
    v14 = JavaLangMath_minWithInt_withInt_(*(a1 + 16), v8);
    v66 = v8;
    if (v5 + 1 >= v14)
    {
      v35 = v5;
      v5 = (v5 + 1);
    }

    else
    {
      v15 = v14;
      v16 = v5 + 1;
      v17 = v14 - 1;
      do
      {
        v18 = *(a1 + 8);
        v19 = *(v18 + 8);
        if (v5 < -1 || v16 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v5 + 1));
        }

        v20 = *(v18 + 12 + 4 * v16);
        v21 = v9->super.size_;
        if (v16 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v5 + 1));
        }

        *(&v9->super.size_ + ++v16) = ~v20;
        LODWORD(v5) = v5 + 1;
      }

      while (v17 != v5);
      v35 = v5;
      v5 = v15;
      v8 = v66;
    }

    if (v5 == *(a1 + 16))
    {
      v36 = __OFSUB__(v8, v5);
      v37 = v8 - v5;
      if (!((v37 < 0) ^ v36 | (v37 == 0)))
      {
        v38 = v5;
        v39 = v9 + 4 * v5;
        do
        {
          v40 = v9->super.size_;
          if (v38 < 0 || v38 >= v40)
          {
            IOSArray_throwOutOfBoundsWithMsg(v40, v38);
          }

          *(v39 + 3) = -1;
          ++v38;
          v39 += 4;
          --v37;
        }

        while (v37);
        v5 = v66;
      }

      v46 = *(a2 + 8);
      v24 = v5;
      v47 = *(v46 + 8);
      if ((v5 & 0x80000000) != 0 || v5 >= v47)
      {
        IOSArray_throwOutOfBoundsWithMsg(v47, v5);
      }

      v33 = *(v46 + 12 + 4 * v5) - 1;
      v48 = v9->super.size_;
      if ((v5 & 0x80000000) != 0 || v5 >= v48)
      {
        IOSArray_throwOutOfBoundsWithMsg(v48, v5);
      }

      goto LABEL_56;
    }

    v41 = *(a1 + 8);
    v24 = v5;
    v42 = *(v41 + 8);
    if (v35 < -1 || v5 >= v42)
    {
      IOSArray_throwOutOfBoundsWithMsg(v42, v5);
    }

    v43 = ~*(v41 + 12 + 4 * v5);
    v44 = *(a2 + 8);
    v45 = *(v44 + 8);
    if (v5 >= v45)
    {
      IOSArray_throwOutOfBoundsWithMsg(v45, v5);
    }

    v33 = (*(v44 + 12 + 4 * v5) - 1) & v43;
    size = v9->super.size_;
  }

  if (v5 >= size)
  {
    goto LABEL_84;
  }

LABEL_56:
  *(&v9->super.size_ + v24 + 1) = v33;
  v49 = JavaLangMath_minWithInt_withInt_(*(a1 + 16), *(a2 + 16));
  v50 = v5 + 1;
  if (v5 + 1 < v49)
  {
    v51 = v49;
    v52 = v50;
    do
    {
      v53 = *(a1 + 8);
      if (!v53)
      {
        goto LABEL_83;
      }

      v54 = *(v53 + 8);
      if (v52 < 0 || v52 >= v54)
      {
        IOSArray_throwOutOfBoundsWithMsg(v54, v52);
      }

      v55 = *(v53 + 12 + 4 * v52);
      v56 = *(a2 + 8);
      v57 = *(v56 + 8);
      if (v52 < 0 || v52 >= v57)
      {
        IOSArray_throwOutOfBoundsWithMsg(v57, v52);
      }

      v58 = *(v56 + 12 + 4 * v52);
      v59 = v9->super.size_;
      if (v52 < 0 || v52 >= v59)
      {
        IOSArray_throwOutOfBoundsWithMsg(v59, v52);
      }

      *(&v9->super.size_ + ++v52) = v58 & ~v55;
    }

    while (v51 != v52);
    v50 = v51;
  }

  if (v50 < *(a2 + 16))
  {
    v60 = v50;
    while (1)
    {
      v61 = *(a2 + 8);
      if (!v61)
      {
        break;
      }

      v62 = *(v61 + 8);
      if (v60 < 0 || v60 >= v62)
      {
        IOSArray_throwOutOfBoundsWithMsg(v62, v60);
      }

      v63 = *(v61 + 12 + 4 * v60);
      v64 = v9->super.size_;
      if (v60 < 0 || v60 >= v64)
      {
        IOSArray_throwOutOfBoundsWithMsg(v64, v60);
      }

      *(&v9->super.size_ + ++v60) = v63;
      if (v60 >= *(a2 + 16))
      {
        goto LABEL_81;
      }
    }

LABEL_83:
    JreThrowNullPointerException();
  }

LABEL_81:
  v22 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, v67, v9);
  [(JavaMathBigInteger *)v22 cutOffLeadingZeroes];
  return v22;
}

JavaMathBigInteger *JavaMathLogical_or__WithJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *a1, JavaMathBigInteger *a2)
{
  if (!a2)
  {
    goto LABEL_36;
  }

  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  if ([(JavaMathBigInteger *)a2 isEqual:JavaMathBigInteger_MINUS_ONE_])
  {
    goto LABEL_9;
  }

  if (!a1)
  {
LABEL_36:
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  if ([(JavaMathBigInteger *)a1 isEqual:JavaMathBigInteger_MINUS_ONE_])
  {
LABEL_9:
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100147554();
    }

    return JavaMathBigInteger_MINUS_ONE_;
  }

  sign = a2->sign_;
  if (!sign)
  {
    return a1;
  }

  v6 = a1->sign_;
  if (!v6)
  {
    return a2;
  }

  if (v6 >= 1)
  {
    if (sign >= 1)
    {
      if (a1->numberLength_ <= a2->numberLength_)
      {
        v7 = a2;
        v8 = a1;
      }

      else
      {
        v7 = a1;
        v8 = a2;
      }

      return JavaMathLogical_orPositiveWithJavaMathBigInteger_withJavaMathBigInteger_(v7, v8);
    }

    v9 = a1;
    v10 = a2;
    goto LABEL_23;
  }

  if (sign >= 1)
  {
    v9 = a2;
    v10 = a1;
LABEL_23:

    return JavaMathLogical_orDiffSignsWithJavaMathBigInteger_withJavaMathBigInteger_(v9, v10);
  }

  v11 = [(JavaMathBigInteger *)a2 getFirstNonzeroDigit];
  if (v11 <= [(JavaMathBigInteger *)a1 getFirstNonzeroDigit])
  {
    v12 = a1;
    v13 = a2;
  }

  else
  {
    v12 = a2;
    v13 = a1;
  }

  return JavaMathLogical_orNegativeWithJavaMathBigInteger_withJavaMathBigInteger_(v12, v13);
}

JavaMathBigInteger *JavaMathLogical_orPositiveWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_27;
  }

  v4 = *(a1 + 16);
  v5 = [IOSIntArray arrayWithLength:v4];
  v6 = [a1 getFirstNonzeroDigit];
  if (!a2)
  {
    goto LABEL_27;
  }

  JavaLangMath_minWithInt_withInt_(v6, [a2 getFirstNonzeroDigit]);
  if (*(a2 + 16) < 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v22 = v4;
    v7 = 0;
    do
    {
      v8 = *(a1 + 8);
      if (!v8)
      {
        goto LABEL_27;
      }

      v9 = *(v8 + 8);
      if (v7 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v7);
      }

      v10 = *(v8 + 12 + 4 * v7);
      v11 = *(a2 + 8);
      v12 = *(v11 + 8);
      if (v7 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v7);
      }

      v13 = *(v11 + 12 + 4 * v7);
      size = v5->super.size_;
      if (v7 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v7);
      }

      *(&v5->super.size_ + ++v7) = v13 | v10;
    }

    while (v7 < *(a2 + 16));
    LODWORD(v4) = v22;
  }

  if (v7 < v4)
  {
    v15 = v7;
    while (1)
    {
      v16 = *(a1 + 8);
      if (!v16)
      {
        break;
      }

      v17 = *(v16 + 8);
      if (v15 >= v17)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, v15);
      }

      v18 = *(v16 + 12 + 4 * v15);
      v19 = v5->super.size_;
      if (v15 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v15);
      }

      *(&v5->super.size_ + ++v15) = v18;
      if (v4 == v15)
      {
        goto LABEL_24;
      }
    }

LABEL_27:
    JreThrowNullPointerException();
  }

LABEL_24:
  v20 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, v4, v5);

  return v20;
}

JavaMathBigInteger *JavaMathLogical_orNegativeWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, JavaMathBigInteger *a2)
{
  if (!a2)
  {
    goto LABEL_48;
  }

  v2 = a2;
  v4 = [(JavaMathBigInteger *)a2 getFirstNonzeroDigit];
  if (!a1)
  {
    goto LABEL_48;
  }

  v5 = v4;
  v6 = [a1 getFirstNonzeroDigit];
  numberLength = v2->numberLength_;
  if (v6 < numberLength)
  {
    v8 = v6;
    v9 = *(a1 + 16);
    if (v5 >= v9)
    {
      return a1;
    }

    else
    {
      v10 = JavaLangMath_minWithInt_withInt_(v9, numberLength);
      v11 = [IOSIntArray arrayWithLength:v10];
      if (v5 == v8)
      {
        v12 = *(a1 + 8);
        if (!v12)
        {
          goto LABEL_48;
        }

        v13 = v5;
        v14 = *(v12 + 8);
        if ((v5 & 0x80000000) != 0 || v5 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v5);
        }

        v15 = -*(v12 + 12 + 4 * v5);
        digits = v2->digits_;
        size = digits->super.size_;
        if ((v5 & 0x80000000) != 0 || v5 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v5);
        }

        v18 = -(-*(&digits->super.size_ + v5 + 1) | v15);
      }

      else
      {
        if (v5 < v8)
        {
          v5 = v5;
          do
          {
            v19 = v2->digits_;
            if (!v19)
            {
              goto LABEL_48;
            }

            v20 = v19->super.size_;
            if (v5 < 0 || v5 >= v20)
            {
              IOSArray_throwOutOfBoundsWithMsg(v20, v5);
            }

            v21 = *(&v19->super.size_ + v5 + 1);
            v22 = v11->super.size_;
            if (v5 < 0 || v5 >= v22)
            {
              IOSArray_throwOutOfBoundsWithMsg(v22, v5);
            }

            *(&v11->super.size_ + ++v5) = v21;
          }

          while (v8 != v5);
          v5 = v8;
        }

        v23 = v2->digits_;
        if (!v23)
        {
LABEL_48:
          JreThrowNullPointerException();
        }

        v13 = v5;
        v24 = v23->super.size_;
        if ((v5 & 0x80000000) != 0 || v5 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, v5);
        }

        v25 = *(a1 + 8);
        v26 = *(v25 + 8);
        if ((v5 & 0x80000000) != 0 || v5 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, v5);
        }

        v18 = (*(v25 + 12 + 4 * v5) - 1) & *(&v23->super.size_ + v5 + 1);
      }

      v27 = v11->super.size_;
      if ((v5 & 0x80000000) != 0 || v5 >= v27)
      {
        IOSArray_throwOutOfBoundsWithMsg(v27, v5);
      }

      *(&v11->super.size_ + v13 + 1) = v18;
      if (v5 + 1 < v10)
      {
        v28 = v5 + 1;
        do
        {
          v29 = *(a1 + 8);
          if (!v29)
          {
            goto LABEL_48;
          }

          v30 = *(v29 + 8);
          if (v28 < 0 || v28 >= v30)
          {
            IOSArray_throwOutOfBoundsWithMsg(v30, v28);
          }

          v31 = *(v29 + 12 + 4 * v28);
          v32 = v2->digits_;
          v33 = v32->super.size_;
          if (v28 < 0 || v28 >= v33)
          {
            IOSArray_throwOutOfBoundsWithMsg(v33, v28);
          }

          v34 = *(&v32->super.size_ + v28 + 1);
          v35 = v11->super.size_;
          if (v28 < 0 || v28 >= v35)
          {
            IOSArray_throwOutOfBoundsWithMsg(v35, v28);
          }

          *(&v11->super.size_ + ++v28) = v34 & v31;
        }

        while (v10 != v28);
      }

      v2 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(-1, v10, v11);
      [(JavaMathBigInteger *)v2 cutOffLeadingZeroes];
    }
  }

  return v2;
}

void sub_1001692B0()
{
  v2 = *v0;
  v3 = *v1;
  JUMPOUT(0x100169100);
}

JavaMathBigInteger *JavaMathLogical_orDiffSignsWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, JavaMathBigInteger *a2)
{
  if (!a2)
  {
    goto LABEL_83;
  }

  v2 = a2;
  v4 = [(JavaMathBigInteger *)a2 getFirstNonzeroDigit];
  if (!a1)
  {
    goto LABEL_83;
  }

  v5 = v4;
  v6 = [a1 getFirstNonzeroDigit];
  numberLength = v2->numberLength_;
  if (v6 >= numberLength)
  {
    return v2;
  }

  v8 = v6;
  v9 = [IOSIntArray arrayWithLength:v2->numberLength_];
  v63 = numberLength;
  if (v5 < v8)
  {
    v5 = v5;
    while (1)
    {
      digits = v2->digits_;
      if (!digits)
      {
        break;
      }

      size = digits->super.size_;
      if (v5 < 0 || v5 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      v12 = *(&digits->super.size_ + v5 + 1);
      v13 = v9->super.size_;
      if (v5 < 0 || v5 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v5);
      }

      *(&v9->super.size_ + ++v5) = v12;
      if (v8 == v5)
      {
        goto LABEL_56;
      }
    }

LABEL_83:
    JreThrowNullPointerException();
  }

  if (v8 >= v5)
  {
    v26 = v2->digits_;
    if (!v26)
    {
      goto LABEL_83;
    }

    v27 = v8;
    v28 = v26->super.size_;
    if ((v8 & 0x80000000) != 0 || v8 >= v28)
    {
      IOSArray_throwOutOfBoundsWithMsg(v28, v8);
    }

    v29 = -*(&v26->super.size_ + v8 + 1);
    v30 = *(a1 + 8);
    v31 = *(v30 + 8);
    if ((v8 & 0x80000000) != 0 || v8 >= v31)
    {
      IOSArray_throwOutOfBoundsWithMsg(v31, v8);
    }

    v32 = -(*(v30 + 12 + 4 * v8) | v29);
    v33 = v9->super.size_;
    if ((v8 & 0x80000000) != 0 || v8 >= v33)
    {
      IOSArray_throwOutOfBoundsWithMsg(v33, v8);
    }

    goto LABEL_55;
  }

  v14 = *(a1 + 8);
  if (!v14)
  {
    goto LABEL_83;
  }

  v15 = *(v14 + 8);
  if ((v8 & 0x80000000) != 0 || v8 >= v15)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, v8);
  }

  v16 = -*(v14 + 12 + 4 * v8);
  v17 = v9->super.size_;
  if ((v8 & 0x80000000) != 0 || v8 >= v17)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17, v8);
  }

  *(&v9->super.size_ + v8 + 1) = v16;
  v18 = JavaLangMath_minWithInt_withInt_(*(a1 + 16), v5);
  if (v8 + 1 >= v18)
  {
    v34 = v8;
    v8 = (v8 + 1);
  }

  else
  {
    v19 = v18;
    v20 = v8 + 1;
    v21 = v18 - 1;
    do
    {
      v22 = *(a1 + 8);
      v23 = *(v22 + 8);
      if (v8 < -1 || v20 >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, (v8 + 1));
      }

      v24 = *(v22 + 12 + 4 * v20);
      v25 = v9->super.size_;
      if (v20 >= v25)
      {
        IOSArray_throwOutOfBoundsWithMsg(v25, (v8 + 1));
      }

      *(&v9->super.size_ + ++v20) = ~v24;
      LODWORD(v8) = v8 + 1;
    }

    while (v21 != v8);
    v34 = v8;
    v8 = v19;
  }

  if (v8 == *(a1 + 16))
  {
    v35 = v5 - v8;
    if (v5 > v8)
    {
      v36 = v8;
      v37 = v9 + 4 * v8;
      do
      {
        v38 = v9->super.size_;
        if (v36 < 0 || v36 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, v36);
        }

        *(v37 + 3) = -1;
        ++v36;
        v37 += 4;
        --v35;
      }

      while (v35);
      v8 = v5;
    }

    v45 = v2->digits_;
    v27 = v8;
    v46 = v45->super.size_;
    if ((v8 & 0x80000000) != 0 || v8 >= v46)
    {
      IOSArray_throwOutOfBoundsWithMsg(v46, v8);
    }

    v32 = *(&v45->super.size_ + v8 + 1) - 1;
    v44 = v9->super.size_;
    if ((v8 & 0x80000000) != 0)
    {
LABEL_89:
      IOSArray_throwOutOfBoundsWithMsg(v44, v8);
    }
  }

  else
  {
    v39 = v2->digits_;
    v27 = v8;
    v40 = v39->super.size_;
    if (v34 < -1 || v8 >= v40)
    {
      IOSArray_throwOutOfBoundsWithMsg(v40, v8);
    }

    v41 = *(&v39->super.size_ + v8 + 1);
    v42 = *(a1 + 8);
    v43 = *(v42 + 8);
    if (v8 >= v43)
    {
      IOSArray_throwOutOfBoundsWithMsg(v43, v8);
    }

    v32 = (v41 - 1) & ~*(v42 + 12 + 4 * v8);
    v44 = v9->super.size_;
  }

  if (v8 >= v44)
  {
    goto LABEL_89;
  }

LABEL_55:
  *(&v9->super.size_ + v27 + 1) = v32;
  LODWORD(v8) = v8 + 1;
LABEL_56:
  v47 = JavaLangMath_minWithInt_withInt_(v2->numberLength_, *(a1 + 16));
  if (v8 < v47)
  {
    v48 = v47;
    v8 = v8;
    v49 = v47;
    do
    {
      v50 = v2->digits_;
      if (!v50)
      {
        goto LABEL_83;
      }

      v51 = v50->super.size_;
      if (v8 < 0 || v8 >= v51)
      {
        IOSArray_throwOutOfBoundsWithMsg(v51, v8);
      }

      v52 = *(&v50->super.size_ + v8 + 1);
      v53 = *(a1 + 8);
      v54 = *(v53 + 8);
      if (v8 < 0 || v8 >= v54)
      {
        IOSArray_throwOutOfBoundsWithMsg(v54, v8);
      }

      v55 = *(v53 + 12 + 4 * v8);
      v56 = v9->super.size_;
      if (v8 < 0 || v8 >= v56)
      {
        IOSArray_throwOutOfBoundsWithMsg(v56, v8);
      }

      *(&v9->super.size_ + ++v8) = v52 & ~v55;
    }

    while (v49 != v8);
    LODWORD(v8) = v48;
  }

  if (v8 < v2->numberLength_)
  {
    v57 = v8;
    do
    {
      v58 = v2->digits_;
      if (!v58)
      {
        goto LABEL_83;
      }

      v59 = v58->super.size_;
      if (v57 < 0 || v57 >= v59)
      {
        IOSArray_throwOutOfBoundsWithMsg(v59, v57);
      }

      v60 = *(&v58->super.size_ + v57 + 1);
      v61 = v9->super.size_;
      if (v57 < 0 || v57 >= v61)
      {
        IOSArray_throwOutOfBoundsWithMsg(v61, v57);
      }

      *(&v9->super.size_ + ++v57) = v60;
    }

    while (v57 < v2->numberLength_);
  }

  v2 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(-1, v63, v9);
  [(JavaMathBigInteger *)v2 cutOffLeadingZeroes];
  return v2;
}

JavaMathBigInteger *JavaMathLogical_xor__WithJavaMathBigInteger_withJavaMathBigInteger_(_DWORD *a1, _DWORD *a2)
{
  if (!a2)
  {
    goto LABEL_38;
  }

  v3 = a1;
  if (!a2[5])
  {
    return v3;
  }

  if (!a1)
  {
LABEL_38:
    JreThrowNullPointerException();
  }

  if (!a1[5])
  {
    return a2;
  }

  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  if ([a2 isEqual:JavaMathBigInteger_MINUS_ONE_])
  {
    v4 = v3;
LABEL_15:

    return [v4 not__];
  }

  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  if ([v3 isEqual:JavaMathBigInteger_MINUS_ONE_])
  {
    v4 = a2;
    goto LABEL_15;
  }

  v6 = a2[5];
  if (v3[5] >= 1)
  {
    if (v6 >= 1)
    {
      if (v3[4] <= a2[4])
      {
        v7 = a2;
        v8 = v3;
      }

      else
      {
        v7 = v3;
        v8 = a2;
      }

      return JavaMathLogical_xorPositiveWithJavaMathBigInteger_withJavaMathBigInteger_(v7, v8);
    }

    v9 = v3;
    v10 = a2;
    goto LABEL_25;
  }

  if (v6 >= 1)
  {
    v9 = a2;
    v10 = v3;
LABEL_25:

    return JavaMathLogical_xorDiffSignsWithJavaMathBigInteger_withJavaMathBigInteger_(v9, v10);
  }

  v11 = [a2 getFirstNonzeroDigit];
  if (v11 <= [v3 getFirstNonzeroDigit])
  {
    v12 = v3;
    v13 = a2;
  }

  else
  {
    v12 = a2;
    v13 = v3;
  }

  return JavaMathLogical_xorNegativeWithJavaMathBigInteger_withJavaMathBigInteger_(v12, v13);
}

JavaMathBigInteger *JavaMathLogical_xorPositiveWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_29;
  }

  v4 = *(a1 + 16);
  v5 = [IOSIntArray arrayWithLength:v4];
  v6 = [a1 getFirstNonzeroDigit];
  if (!a2)
  {
    goto LABEL_29;
  }

  v7 = JavaLangMath_minWithInt_withInt_(v6, [a2 getFirstNonzeroDigit]);
  if (v7 < *(a2 + 16))
  {
    v22 = v4;
    v8 = v7;
    do
    {
      v9 = *(a1 + 8);
      if (!v9)
      {
        goto LABEL_29;
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
      size = v5->super.size_;
      if (v8 < 0 || v8 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v8);
      }

      *(&v5->super.size_ + ++v8) = v14 ^ v11;
    }

    while (v8 < *(a2 + 16));
    v7 = v8;
    v4 = v22;
  }

  if (v7 < *(a1 + 16))
  {
    v16 = v7;
    while (1)
    {
      v17 = *(a1 + 8);
      if (!v17)
      {
        break;
      }

      v18 = *(v17 + 8);
      if (v16 < 0 || v16 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v16);
      }

      v19 = v5->super.size_;
      if (v16 < 0 || v16 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v16);
      }

      *(&v5->super.size_ + v16 + 1) = *(v17 + 12 + 4 * v16);
      if (++v16 >= *(a1 + 16))
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    JreThrowNullPointerException();
  }

LABEL_28:
  v20 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, v4, v5);
  [(JavaMathBigInteger *)v20 cutOffLeadingZeroes];
  return v20;
}

JavaMathBigInteger *JavaMathLogical_xorNegativeWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    goto LABEL_85;
  }

  v4 = JavaLangMath_maxWithInt_withInt_(*(a1 + 16), *(a2 + 16));
  v5 = [IOSIntArray arrayWithLength:v4];
  v6 = [a1 getFirstNonzeroDigit];
  v7 = [a2 getFirstNonzeroDigit];
  v8 = v6;
  v65 = v4;
  if (v6 == v7)
  {
    v9 = *(a1 + 8);
    if (!v9)
    {
      goto LABEL_85;
    }

    v10 = v8;
    v11 = *(v9 + 8);
    if ((v8 & 0x80000000) != 0 || v8 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v8);
    }

    v12 = -*(v9 + 12 + 4 * v8);
    v13 = *(a2 + 8);
    v14 = *(v13 + 8);
    if ((v8 & 0x80000000) != 0 || v8 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v8);
    }

    v15 = -*(v13 + 12 + 4 * v8) ^ v12;
    size = v5->super.size_;
    if ((v8 & 0x80000000) == 0 && v8 < size)
    {
      LODWORD(v17) = v8;
      goto LABEL_48;
    }

LABEL_95:
    IOSArray_throwOutOfBoundsWithMsg(size, v8);
  }

  v18 = *(a2 + 8);
  if (!v18)
  {
    goto LABEL_85;
  }

  v19 = v7;
  v20 = *(v18 + 8);
  if ((v19 & 0x80000000) != 0 || v19 >= v20)
  {
    IOSArray_throwOutOfBoundsWithMsg(v20, v19);
  }

  v21 = -*(v18 + 12 + 4 * v19);
  v22 = v5->super.size_;
  if ((v19 & 0x80000000) != 0 || v19 >= v22)
  {
    IOSArray_throwOutOfBoundsWithMsg(v22, v19);
  }

  *(&v5->super.size_ + v19 + 1) = v21;
  v64 = v8;
  v23 = JavaLangMath_minWithInt_withInt_(*(a2 + 16), v8);
  v17 = (v19 + 1);
  if (v17 < v23)
  {
    v24 = v23;
    v17 = v17;
    do
    {
      v25 = *(a2 + 8);
      v26 = *(v25 + 8);
      if (v17 < 0 || v17 >= v26)
      {
        IOSArray_throwOutOfBoundsWithMsg(v26, v17);
      }

      v27 = *(v25 + 12 + 4 * v17);
      v28 = v5->super.size_;
      if (v17 < 0 || v17 >= v28)
      {
        IOSArray_throwOutOfBoundsWithMsg(v28, v17);
      }

      *(&v5->super.size_ + ++v17) = ~v27;
    }

    while (v24 != v17);
    v17 = v24;
  }

  if (v17 == *(a2 + 16))
  {
    v29 = v64;
    v30 = v64 - v17;
    if (v64 <= v17)
    {
      v29 = v17;
    }

    else
    {
      v31 = v17;
      v32 = v5 + 4 * v17;
      do
      {
        v33 = v5->super.size_;
        if (v31 < 0 || v31 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, v31);
        }

        *(v32 + 3) = -1;
        ++v31;
        v32 += 4;
        --v30;
      }

      while (v30);
    }

    v40 = *(a1 + 8);
    v10 = v29;
    v41 = *(v40 + 8);
    if ((v29 & 0x80000000) != 0 || v29 >= v41)
    {
      IOSArray_throwOutOfBoundsWithMsg(v41, v29);
    }

    v15 = *(v40 + 12 + 4 * v29) - 1;
    size = v5->super.size_;
    if ((v29 & 0x80000000) != 0 || v29 >= size)
    {
      v8 = v29;
      goto LABEL_95;
    }

    LODWORD(v17) = v29;
  }

  else
  {
    v34 = *(a1 + 8);
    v10 = v17;
    v35 = *(v34 + 8);
    if ((v17 & 0x80000000) != 0 || v17 >= v35)
    {
      IOSArray_throwOutOfBoundsWithMsg(v35, v17);
    }

    v36 = *(v34 + 12 + 4 * v17);
    v37 = *(a2 + 8);
    v38 = *(v37 + 8);
    if ((v17 & 0x80000000) != 0 || v17 >= v38)
    {
      IOSArray_throwOutOfBoundsWithMsg(v38, v17);
    }

    v15 = *(v37 + 12 + 4 * v17) ^ (v36 - 1);
    v39 = v5->super.size_;
    if ((v17 & 0x80000000) != 0 || v17 >= v39)
    {
      IOSArray_throwOutOfBoundsWithMsg(v39, v17);
    }
  }

LABEL_48:
  *(&v5->super.size_ + v10 + 1) = v15;
  v42 = JavaLangMath_minWithInt_withInt_(*(a1 + 16), *(a2 + 16));
  v43 = (v17 + 1);
  if (v43 < v42)
  {
    v44 = v42;
    v43 = v43;
    do
    {
      v45 = *(a1 + 8);
      if (!v45)
      {
        goto LABEL_85;
      }

      v46 = *(v45 + 8);
      if (v43 < 0 || v43 >= v46)
      {
        IOSArray_throwOutOfBoundsWithMsg(v46, v43);
      }

      v47 = *(v45 + 12 + 4 * v43);
      v48 = *(a2 + 8);
      v49 = *(v48 + 8);
      if (v43 < 0 || v43 >= v49)
      {
        IOSArray_throwOutOfBoundsWithMsg(v49, v43);
      }

      v50 = *(v48 + 12 + 4 * v43);
      v51 = v5->super.size_;
      if (v43 < 0 || v43 >= v51)
      {
        IOSArray_throwOutOfBoundsWithMsg(v51, v43);
      }

      *(&v5->super.size_ + ++v43) = v50 ^ v47;
    }

    while (v44 != v43);
    v43 = v44;
  }

  if (v43 < *(a1 + 16))
  {
    v52 = v43;
    while (1)
    {
      v53 = *(a1 + 8);
      if (!v53)
      {
        break;
      }

      v54 = *(v53 + 8);
      if (v52 < 0 || v52 >= v54)
      {
        IOSArray_throwOutOfBoundsWithMsg(v54, v43);
      }

      v55 = *(v53 + 12 + 4 * v52);
      v56 = v5->super.size_;
      if (v52 < 0 || v52 >= v56)
      {
        IOSArray_throwOutOfBoundsWithMsg(v56, v43);
      }

      *(&v5->super.size_ + ++v52) = v55;
      v43 = (v43 + 1);
      if (v52 >= *(a1 + 16))
      {
        goto LABEL_73;
      }
    }

LABEL_85:
    JreThrowNullPointerException();
  }

LABEL_73:
  if (v43 < *(a2 + 16))
  {
    v57 = v43;
    do
    {
      v58 = *(a2 + 8);
      if (!v58)
      {
        goto LABEL_85;
      }

      v59 = *(v58 + 8);
      if (v57 < 0 || v57 >= v59)
      {
        IOSArray_throwOutOfBoundsWithMsg(v59, v57);
      }

      v60 = *(v58 + 12 + 4 * v57);
      v61 = v5->super.size_;
      if (v57 < 0 || v57 >= v61)
      {
        IOSArray_throwOutOfBoundsWithMsg(v61, v57);
      }

      *(&v5->super.size_ + ++v57) = v60;
    }

    while (v57 < *(a2 + 16));
  }

  v62 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, v65, v5);
  [(JavaMathBigInteger *)v62 cutOffLeadingZeroes];
  return v62;
}

JavaMathBigInteger *JavaMathLogical_xorDiffSignsWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (!a2 || !a1)
  {
    goto LABEL_153;
  }

  v4 = JavaLangMath_maxWithInt_withInt_(*(a2 + 16), *(a1 + 16));
  v5 = [a2 getFirstNonzeroDigit];
  v6 = [a1 getFirstNonzeroDigit];
  v7 = v6;
  v104 = v4;
  if (v5 >= v6)
  {
    if (v6 >= v5)
    {
      v36 = *(a1 + 8);
      if (!v36)
      {
        goto LABEL_153;
      }

      v37 = *(v36 + 8);
      if ((v5 & 0x80000000) != 0 || v5 >= v37)
      {
        IOSArray_throwOutOfBoundsWithMsg(v37, v5);
      }

      v38 = *(v36 + 12 + 4 * v5);
      v39 = *(a2 + 8);
      v40 = *(v39 + 8);
      if ((v5 & 0x80000000) != 0 || v5 >= v40)
      {
        IOSArray_throwOutOfBoundsWithMsg(v40, v5);
      }

      v41 = *(v39 + 12 + 4 * v5);
      if (v38 + v41)
      {
        v73 = v38 ^ -v41;
        goto LABEL_113;
      }

      v42 = JavaLangMath_minWithInt_withInt_(*(a1 + 16), *(a2 + 16));
      while (1)
      {
        v5 = (v5 + 1);
        if (v5 >= v42)
        {
          break;
        }

        v43 = *(a1 + 8);
        v44 = *(v43 + 8);
        if ((v5 & 0x80000000) != 0 || v5 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, v5);
        }

        v45 = *(v43 + 12 + 4 * v5);
        v46 = *(a2 + 8);
        v47 = *(v46 + 8);
        if ((v5 & 0x80000000) != 0 || v5 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, v5);
        }

        v48 = *(v46 + 12 + 4 * v5) ^ v45;
        if (v48 != -1)
        {
          v73 = ~v48;
          goto LABEL_113;
        }
      }

      if (v5 >= *(a1 + 16))
      {
LABEL_96:
        v73 = 0;
      }

      else
      {
        v5 = v5;
        while (1)
        {
          v65 = *(a1 + 8);
          v66 = *(v65 + 8);
          if (v5 < 0 || v5 >= v66)
          {
            IOSArray_throwOutOfBoundsWithMsg(v66, v5);
          }

          v67 = *(v65 + 12 + 4 * v5);
          if (v67 != -1)
          {
            break;
          }

          if (++v5 >= *(a1 + 16))
          {
            goto LABEL_96;
          }
        }

        v73 = ~v67;
      }

      if (v5 >= *(a2 + 16))
      {
        if (v73)
        {
          goto LABEL_113;
        }

LABEL_107:
        v77 = [IOSIntArray arrayWithLength:v4 + 1];
        size = v77->super.size_;
        if ((v4 & 0x80000000) != 0 || v4 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v4);
        }

        *(&v77->super.size_ + v4 + 1) = 1;
        v79 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(-1, v4 + 1, v77);

        return v79;
      }

      v5 = v5;
      while (1)
      {
        v74 = *(a2 + 8);
        v75 = *(v74 + 8);
        if (v5 < 0 || v5 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, v5);
        }

        v76 = *(v74 + 12 + 4 * v5);
        if (v76 != -1)
        {
          break;
        }

        if (++v5 >= *(a2 + 16))
        {
          goto LABEL_107;
        }
      }

      v73 = ~v76;
LABEL_113:
      v10 = [IOSIntArray arrayWithLength:v4];
      v81 = v10->super.size_;
      if ((v5 & 0x80000000) != 0 || v5 >= v81)
      {
        IOSArray_throwOutOfBoundsWithMsg(v81, v5);
      }

      *(&v10->super.size_ + v5 + 1) = -v73;
      v16 = (v5 + 1);
    }

    else
    {
      v24 = [IOSIntArray arrayWithLength:v4];
      v25 = *(a1 + 8);
      if (!v25)
      {
        goto LABEL_153;
      }

      v10 = v24;
      v26 = *(v25 + 8);
      if ((v7 & 0x80000000) != 0 || v7 >= v26)
      {
        IOSArray_throwOutOfBoundsWithMsg(v26, v7);
      }

      v27 = -*(v25 + 12 + 4 * v7);
      v28 = v10->super.size_;
      if ((v7 & 0x80000000) != 0 || v7 >= v28)
      {
        IOSArray_throwOutOfBoundsWithMsg(v28, v7);
      }

      *(&v10->super.size_ + v7 + 1) = v27;
      v29 = JavaLangMath_minWithInt_withInt_(*(a1 + 16), v5);
      v16 = (v7 + 1);
      if (v16 < v29)
      {
        v30 = v29;
        v16 = v16;
        v31 = v29 - 1;
        do
        {
          v32 = *(a1 + 8);
          v33 = *(v32 + 8);
          if (v7 < -1 || v16 >= v33)
          {
            IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 1));
          }

          v34 = *(v32 + 12 + 4 * v16);
          v35 = v10->super.size_;
          if (v16 >= v35)
          {
            IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 1));
          }

          *(&v10->super.size_ + ++v16) = ~v34;
          LODWORD(v7) = v7 + 1;
        }

        while (v31 != v7);
        v16 = v30;
      }

      v54 = v5 - v16;
      if (v5 == v16)
      {
        v55 = *(a1 + 8);
        v56 = *(v55 + 8);
        if (v7 < -1 || v5 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, v5);
        }

        v57 = *(v55 + 12 + 4 * v5);
        v58 = *(a2 + 8);
        v59 = *(v58 + 8);
        if (v5 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, v5);
        }

        v60 = (*(v58 + 12 + 4 * v5) - 1) ^ v57;
        v61 = v10->super.size_;
        if (v5 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, v5);
        }

        *(&v10->super.size_ + v5 + 1) = v60;
        v16 = (v7 + 2);
      }

      else
      {
        if (v5 > v16)
        {
          v62 = v16;
          v63 = v10 + 4 * v16;
          do
          {
            v64 = v10->super.size_;
            if (v62 < 0 || v62 >= v64)
            {
              IOSArray_throwOutOfBoundsWithMsg(v64, v62);
            }

            *(v63 + 3) = -1;
            ++v62;
            v63 += 4;
            --v54;
          }

          while (v54);
          v16 = v5;
        }

        if (v16 < *(a2 + 16))
        {
          v68 = v16;
          do
          {
            v69 = *(a2 + 8);
            v70 = *(v69 + 8);
            if (v68 < 0 || v68 >= v70)
            {
              IOSArray_throwOutOfBoundsWithMsg(v70, v16);
            }

            v71 = *(v69 + 12 + 4 * v68);
            v72 = v10->super.size_;
            if (v68 < 0 || v68 >= v72)
            {
              IOSArray_throwOutOfBoundsWithMsg(v72, v16);
            }

            *(&v10->super.size_ + ++v68) = v71;
            v16 = (v16 + 1);
          }

          while (v68 < *(a2 + 16));
        }
      }
    }
  }

  else
  {
    v8 = [IOSIntArray arrayWithLength:v4];
    v9 = *(a2 + 8);
    if (!v9)
    {
      goto LABEL_153;
    }

    v10 = v8;
    v11 = *(v9 + 8);
    if ((v5 & 0x80000000) != 0 || v5 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v5);
    }

    v12 = *(v9 + 12 + 4 * v5);
    v13 = v10->super.size_;
    if ((v5 & 0x80000000) != 0 || v5 >= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, v5);
    }

    *(&v10->super.size_ + v5 + 1) = v12;
    v14 = JavaLangMath_minWithInt_withInt_(*(a2 + 16), v7);
    v15 = (v5 + 1);
    v16 = v15;
    if (v15 < v14)
    {
      v17 = v14;
      v18 = v15;
      v19 = v14 - 1;
      do
      {
        v20 = *(a2 + 8);
        v21 = *(v20 + 8);
        if (v5 < -1 || v18 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v5 + 1));
        }

        v22 = *(v20 + 12 + 4 * v18);
        v23 = v10->super.size_;
        if (v18 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v5 + 1));
        }

        *(&v10->super.size_ + ++v18) = v22;
        LODWORD(v5) = v5 + 1;
      }

      while (v19 != v5);
      v16 = v17;
    }

    if (v16 == *(a2 + 16) && v16 < *(a1 + 16))
    {
      v49 = v16;
      do
      {
        v50 = *(a1 + 8);
        v51 = *(v50 + 8);
        if (v49 < 0 || v49 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, v16);
        }

        v52 = *(v50 + 12 + 4 * v49);
        v53 = v10->super.size_;
        if (v49 < 0 || v49 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, v16);
        }

        *(&v10->super.size_ + ++v49) = v52;
        v16 = (v16 + 1);
      }

      while (v49 < *(a1 + 16));
    }
  }

  v82 = JavaLangMath_minWithInt_withInt_(*(a2 + 16), *(a1 + 16));
  if (v16 < v82)
  {
    v83 = v82;
    v84 = v16;
    v85 = v82;
    do
    {
      v86 = *(a2 + 8);
      if (!v86)
      {
        goto LABEL_153;
      }

      v87 = *(v86 + 8);
      if (v84 < 0 || v84 >= v87)
      {
        IOSArray_throwOutOfBoundsWithMsg(v87, v84);
      }

      v88 = *(v86 + 12 + 4 * v84);
      v89 = *(a1 + 8);
      v90 = *(v89 + 8);
      if (v84 < 0 || v84 >= v90)
      {
        IOSArray_throwOutOfBoundsWithMsg(v90, v84);
      }

      v91 = *(v89 + 12 + 4 * v84);
      v92 = v10->super.size_;
      if (v84 < 0 || v84 >= v92)
      {
        IOSArray_throwOutOfBoundsWithMsg(v92, v84);
      }

      *(&v10->super.size_ + ++v84) = v91 ^ v88;
    }

    while (v85 != v84);
    v16 = v83;
  }

  if (v16 < *(a1 + 16))
  {
    v93 = v16;
    while (1)
    {
      v94 = *(a1 + 8);
      if (!v94)
      {
        break;
      }

      v95 = *(v94 + 8);
      if (v93 < 0 || v93 >= v95)
      {
        IOSArray_throwOutOfBoundsWithMsg(v95, v16);
      }

      v96 = *(v94 + 12 + 4 * v93);
      v97 = v10->super.size_;
      if (v93 < 0 || v93 >= v97)
      {
        IOSArray_throwOutOfBoundsWithMsg(v97, v16);
      }

      *(&v10->super.size_ + ++v93) = v96;
      v16 = (v16 + 1);
      if (v93 >= *(a1 + 16))
      {
        goto LABEL_141;
      }
    }

LABEL_153:
    JreThrowNullPointerException();
  }

LABEL_141:
  if (v16 < *(a2 + 16))
  {
    v98 = v16;
    do
    {
      v99 = *(a2 + 8);
      if (!v99)
      {
        goto LABEL_153;
      }

      v100 = *(v99 + 8);
      if (v98 < 0 || v98 >= v100)
      {
        IOSArray_throwOutOfBoundsWithMsg(v100, v98);
      }

      v101 = *(v99 + 12 + 4 * v98);
      v102 = v10->super.size_;
      if (v98 < 0 || v98 >= v102)
      {
        IOSArray_throwOutOfBoundsWithMsg(v102, v98);
      }

      *(&v10->super.size_ + ++v98) = v101;
    }

    while (v98 < *(a2 + 16));
  }

  v103 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(-1, v104, v10);
  [(JavaMathBigInteger *)v103 cutOffLeadingZeroes];
  return v103;
}

JavaLangNumberFormatException *new_JavaLangNumberFormatException_init()
{
  v0 = [JavaLangNumberFormatException alloc];
  JavaLangIllegalArgumentException_init(v0, v1);
  return v0;
}

JavaLangNumberFormatException *new_JavaLangNumberFormatException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangNumberFormatException alloc];
  JavaLangIllegalArgumentException_initWithNSString_(v2, a1);
  return v2;
}

void *JavaIoBufferedOutputStream_initWithJavaIoOutputStream_withInt_(uint64_t a1, void *a2, int a3)
{
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(a1, a2);
  if (a3 <= 0)
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"size <= 0");
    objc_exception_throw(v7);
  }

  v5 = [IOSByteArray newArrayWithLength:a3];

  return JreStrongAssignAndConsume((a1 + 16), v5);
}

void sub_10016B5C0(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

JavaIoBufferedOutputStream *new_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_(void *a1)
{
  v2 = [JavaIoBufferedOutputStream alloc];
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(v2, a1);
  JreStrongAssignAndConsume(&v2->buf_, [IOSByteArray newArrayWithLength:0x2000]);
  return v2;
}

JavaIoBufferedOutputStream *new_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_withInt_(void *a1, int a2)
{
  v4 = [JavaIoBufferedOutputStream alloc];
  JavaIoBufferedOutputStream_initWithJavaIoOutputStream_withInt_(v4, a1, a2);
  return v4;
}

id sub_10016B82C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksLockSupport__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10016BDD0();
  }

  v4 = qword_100554AA8;
  if (!qword_100554AA8)
  {
    JreThrowNullPointerException();
  }

  v5 = qword_100554AB0;

  return [v4 putObjectWithId:a1 withLong:v5 withId:a2];
}

id JavaUtilConcurrentLocksLockSupport_unparkWithJavaLangThread_(id result)
{
  v1 = result;
  if (atomic_load_explicit(JavaUtilConcurrentLocksLockSupport__initialized, memory_order_acquire))
  {
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_10016BDD0();
    if (!v1)
    {
      return result;
    }
  }

  v2 = qword_100554AA8;
  if (!qword_100554AA8)
  {
    JreThrowNullPointerException();
  }

  return [v2 unparkWithId:v1];
}

id JavaUtilConcurrentLocksLockSupport_parkWithId_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksLockSupport__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10016BDD0();
  }

  v2 = JavaLangThread_currentThread();
  sub_10016B82C(v2, a1);
  if (!qword_100554AA8)
  {
    JreThrowNullPointerException();
  }

  [qword_100554AA8 parkWithBoolean:0 withLong:0];

  return sub_10016B82C(v2, 0);
}

id JavaUtilConcurrentLocksLockSupport_parkNanosWithId_withLong_(id result, uint64_t a2)
{
  v3 = result;
  if ((atomic_load_explicit(JavaUtilConcurrentLocksLockSupport__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_10016BDD0();
  }

  if (a2 >= 1)
  {
    v4 = JavaLangThread_currentThread();
    sub_10016B82C(v4, v3);
    if (!qword_100554AA8)
    {
      JreThrowNullPointerException();
    }

    [qword_100554AA8 parkWithBoolean:0 withLong:a2];

    return sub_10016B82C(v4, 0);
  }

  return result;
}

id JavaUtilConcurrentLocksLockSupport_parkUntilWithId_withLong_(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksLockSupport__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10016BDD0();
  }

  v4 = JavaLangThread_currentThread();
  sub_10016B82C(v4, a1);
  if (!qword_100554AA8)
  {
    JreThrowNullPointerException();
  }

  [qword_100554AA8 parkWithBoolean:1 withLong:a2];

  return sub_10016B82C(v4, 0);
}

id JavaUtilConcurrentLocksLockSupport_getBlockerWithJavaLangThread_(uint64_t a1)
{
  if (atomic_load_explicit(JavaUtilConcurrentLocksLockSupport__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v5);
  }

  sub_10016BDD0();
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = qword_100554AA8;
  if (!qword_100554AA8)
  {
    JreThrowNullPointerException();
  }

  v3 = qword_100554AB0;

  return [v2 getObjectVolatileWithId:a1 withLong:v3];
}

id JavaUtilConcurrentLocksLockSupport_parkNanosWithLong_(id result)
{
  v1 = result;
  if ((atomic_load_explicit(JavaUtilConcurrentLocksLockSupport__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_10016BDD0();
  }

  if (v1 >= 1)
  {
    v2 = qword_100554AA8;
    if (!qword_100554AA8)
    {
      JreThrowNullPointerException();
    }

    return [v2 parkWithBoolean:0 withLong:v1];
  }

  return result;
}

id JavaUtilConcurrentLocksLockSupport_parkUntilWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksLockSupport__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10016BDD0();
  }

  v2 = qword_100554AA8;
  if (!qword_100554AA8)
  {
    JreThrowNullPointerException();
  }

  return [v2 parkWithBoolean:1 withLong:a1];
}

id JavaUtilConcurrentLocksLockSupport_park()
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksLockSupport__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10016BDD0();
  }

  v0 = qword_100554AA8;
  if (!qword_100554AA8)
  {
    JreThrowNullPointerException();
  }

  return [v0 parkWithBoolean:0 withLong:0];
}

uint64_t JavaUtilConcurrentLocksLockSupport_class_()
{
  if ((atomic_load_explicit(JavaUtilConcurrentLocksLockSupport__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10016BDD0();
  }

  if (qword_100554AC0 != -1)
  {
    sub_10016BDDC();
  }

  return qword_100554AB8;
}

id JavaTextDecimalFormatSymbols_initWithJavaUtilLocale_(uint64_t a1, void *a2)
{
  v4 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(a2);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  *(a1 + 8) = v4->zeroDigit_;
  *(a1 + 10) = 35;
  *(a1 + 12) = v4->decimalSeparator_;
  *(a1 + 14) = v4->groupingSeparator_;
  *(a1 + 16) = v4->patternSeparator_;
  *(a1 + 18) = v4->percent_;
  *(a1 + 20) = v4->perMill_;
  *(a1 + 22) = v4->monetarySeparator_;
  *(a1 + 24) = v4->minusSign_;
  JreStrongAssign((a1 + 32), v4->infinity_);
  JreStrongAssign((a1 + 40), v5->NaN_);
  JreStrongAssign((a1 + 80), v5->exponentSeparator_);
  JreStrongAssign((a1 + 72), a2);
  InstanceWithJavaUtilLocale = JavaUtilCurrency_getInstanceWithJavaUtilLocale_(a2);
  JreStrongAssign((a1 + 64), InstanceWithJavaUtilLocale);
  v7 = *(a1 + 64);
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 48), [v7 getSymbolWithJavaUtilLocale:a2]);
  return JreStrongAssign((a1 + 56), [*(a1 + 64) getCurrencyCode]);
}

JavaTextDecimalFormatSymbols *JavaTextDecimalFormatSymbols_getInstanceWithJavaUtilLocale_(void *a1)
{
  if (!a1)
  {
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"locale == null");
    objc_exception_throw(v4);
  }

  v2 = [JavaTextDecimalFormatSymbols alloc];
  JavaTextDecimalFormatSymbols_initWithJavaUtilLocale_(v2, a1);

  return v2;
}

JavaTextDecimalFormatSymbols *new_JavaTextDecimalFormatSymbols_initWithJavaUtilLocale_(void *a1)
{
  v2 = [JavaTextDecimalFormatSymbols alloc];
  JavaTextDecimalFormatSymbols_initWithJavaUtilLocale_(v2, a1);
  return v2;
}

id JavaNioDoubleArrayBuffer_initWithDoubleArray_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaNioDoubleBuffer_initWithInt_withLong_(a1, a2[2], 0, a4, a5, a6, a7, a8);
  result = JreStrongAssign((a1 + 40), a2);
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  return result;
}

JavaNioDoubleArrayBuffer *sub_10016CA2C(uint64_t a1, int a2, BOOL a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_10016CC54([a1 capacity], *(a1 + 40), *(a1 + 48), a3);
  v5->super.super.limit_ = *(a1 + 12);
  v5->super.super.position_ = [a1 position];
  v5->super.super.mark_ = a2;
  return v5;
}

JavaNioDoubleArrayBuffer *sub_10016CC54(uint64_t a1, void *a2, int a3, BOOL a4)
{
  v8 = [JavaNioDoubleArrayBuffer alloc];
  JavaNioDoubleBuffer_initWithInt_withLong_(v8, a1, 0, v9, v10, v11, v12, v13);
  JreStrongAssign(&v8->backingArray_, a2);
  v8->arrayOffset_ = a3;
  v8->isReadOnly_ = a4;
  return v8;
}

JavaNioDoubleArrayBuffer *new_JavaNioDoubleArrayBuffer_initWithDoubleArray_(unsigned int *a1)
{
  v2 = [JavaNioDoubleArrayBuffer alloc];
  JavaNioDoubleArrayBuffer_initWithDoubleArray_(v2, a1, v3, v4, v5, v6, v7, v8);
  return v2;
}

id JavaUtilLinkedHashSet_initWithJavaUtilCollection_(void *a1, void *a2)
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

  v5 = new_JavaUtilLinkedHashMap_initWithInt_(v4);
  JavaUtilHashSet_initWithJavaUtilHashMap_(a1, v5);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(a2);
        }

        [a1 addWithId:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

JavaUtilLinkedHashSet *new_JavaUtilLinkedHashSet_init()
{
  v0 = [JavaUtilLinkedHashSet alloc];
  v1 = new_JavaUtilLinkedHashMap_init();
  JavaUtilHashSet_initWithJavaUtilHashMap_(v0, v1);
  return v0;
}

JavaUtilServiceConfigurationError *new_JavaUtilServiceConfigurationError_initWithNSString_(uint64_t a1)
{
  v2 = [JavaUtilServiceConfigurationError alloc];
  JavaLangError_initWithNSString_(v2, a1);
  return v2;
}

JavaUtilServiceConfigurationError *new_JavaUtilServiceConfigurationError_initWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaUtilServiceConfigurationError alloc];
  JavaLangError_initWithNSString_withJavaLangThrowable_(v4, a1, a2);
  return v4;
}

void *JavaUtilTreeSet_initWithJavaUtilComparator_(uint64_t a1, void *a2)
{
  JavaUtilAbstractSet_init(a1, a2);
  v4 = new_JavaUtilTreeMap_initWithJavaUtilComparator_(a2);

  return JreStrongAssignAndConsume((a1 + 8), v4);
}

id JavaUtilTreeSet_initWithJavaUtilSortedSet_(void *a1, void *a2)
{
  if (!a2 || (JavaUtilTreeSet_initWithJavaUtilComparator_(a1, [a2 comparator]), (v4 = objc_msgSend(a2, "iterator")) == 0))
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  result = [v4 hasNext];
  if (result)
  {
    do
    {
      [a1 addWithId:{objc_msgSend(v5, "next")}];
      result = [v5 hasNext];
    }

    while ((result & 1) != 0);
  }

  return result;
}

JavaUtilTreeSet *new_JavaUtilTreeSet_initWithJavaUtilNavigableMap_(void *a1)
{
  v2 = [JavaUtilTreeSet alloc];
  JavaUtilAbstractSet_init(v2, v3);
  JreStrongAssign(&v2->backingMap_, a1);
  return v2;
}

JavaUtilTreeSet *new_JavaUtilTreeSet_init()
{
  v0 = [JavaUtilTreeSet alloc];
  JavaUtilAbstractSet_init(v0, v1);
  v2 = new_JavaUtilTreeMap_init();
  JreStrongAssignAndConsume(&v0->backingMap_, v2);
  return v0;
}

JavaUtilTreeSet *new_JavaUtilTreeSet_initWithJavaUtilCollection_(uint64_t a1)
{
  v2 = [JavaUtilTreeSet alloc];
  JavaUtilAbstractSet_init(v2, v3);
  v4 = new_JavaUtilTreeMap_init();
  JreStrongAssignAndConsume(&v2->backingMap_, v4);
  [(JavaUtilTreeSet *)v2 addAllWithJavaUtilCollection:a1];
  return v2;
}

JavaUtilTreeSet *new_JavaUtilTreeSet_initWithJavaUtilComparator_(void *a1)
{
  v2 = [JavaUtilTreeSet alloc];
  JavaUtilTreeSet_initWithJavaUtilComparator_(v2, a1);
  return v2;
}

JavaLangRefWeakReference *new_JavaLangRefWeakReference_initWithId_(unint64_t a1)
{
  v2 = [JavaLangRefWeakReference alloc];
  JavaLangRefReference_initWithId_withJavaLangRefReferenceQueue_(v2, a1, 0);
  return v2;
}

JavaLangRefWeakReference *new_JavaLangRefWeakReference_initWithId_withJavaLangRefReferenceQueue_(unint64_t a1, unint64_t a2)
{
  v4 = [JavaLangRefWeakReference alloc];
  JavaLangRefReference_initWithId_withJavaLangRefReferenceQueue_(v4, a1, a2);
  return v4;
}

_DWORD *sub_10016E508(unsigned int a1, uint64_t a2, char a3)
{
  if ((a1 & 0x80000000) != 0)
  {
    objc_exception_throw(objc_alloc_init(JavaLangNegativeArraySizeException));
  }

  v6 = objc_opt_class();
  v7 = NSAllocateObject(v6, 8 * a1, 0);
  v8 = v7;
  if ((a3 & 1) == 0)
  {
    v9 = v7;
  }

  v8[2] = a1;
  *(v8 + 2) = a2;
  *(v8 + 12) = a3;
  return v8;
}

_DWORD *sub_10016E5C8(unsigned int a1, uint64_t a2, int a3, void **a4)
{
  LODWORD(v6) = a1;
  v7 = sub_10016E508(a1, a2, a3);
  v8 = v7;
  if (a3)
  {
    if (v6 >= 1)
    {
      v6 = v6;
      v9 = v7;
      do
      {
        v10 = *a4++;
        *(v9 + 3) = v10;
        v9 += 2;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    memcpy(v7 + 6, a4, 8 * v6);
  }

  return v8;
}

void *IOSObjectArray_Set(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v6 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, a2);
  }

  if (a3 && ([*(a1 + 16) isInstance:a3] & 1) == 0)
  {
    sub_10016EF9C(a1, a3);
  }

  if (*(a1 + 12) == 1)
  {
    v7 = *(a1 + 24 + 8 * a2);
    v8 = a3;
  }

  *(a1 + 24 + 8 * a2) = a3;
  return a3;
}

id IOSObjectArray_SetAndConsume(uint64_t a1, uint64_t a2, id a3)
{
  v6 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v6 <= a2)
  {
    v7 = a3;
    IOSArray_throwOutOfBoundsWithMsg(v6, a2);
  }

  if (a3 && ([*(a1 + 16) isInstance:a3] & 1) == 0)
  {
    v11 = a3;
    sub_10016EF9C(a1, a3);
  }

  v8 = a3;
  if (*(a1 + 12) == 1)
  {
    v8 = *(a1 + 24 + 8 * a2);
  }

  v9 = v8;
  *(a1 + 24 + 8 * a2) = a3;
  return a3;
}

void sub_10016EA08()
{
  if (!v0)
  {
    JUMPOUT(0x10016E9F4);
  }

  JUMPOUT(0x10016E9D8);
}

id CopyWithMemmove(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a4 + a3;
  v9 = a4 + a2;
  v11 = a4 + a3 <= a2 || v8 > v9;
  v12 = !v11;
  if (v11)
  {
    v13 = a2;
  }

  else
  {
    v13 = a4 + a3;
  }

  if (v12)
  {
    v14 = a2;
  }

  else
  {
    v14 = a4 + a3;
  }

  v15 = v9 <= a3 || v9 > v8;
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = a2;
  }

  if (v15)
  {
    v17 = a4 + a2;
  }

  else
  {
    v17 = a3;
  }

  if (v15)
  {
    v18 = v14;
  }

  else
  {
    v18 = a4 + a3;
  }

  if (v15)
  {
    v19 = a3;
  }

  else
  {
    v19 = a4 + a2;
  }

  v20 = v18 - v19;
  if (v18 > v19)
  {
    v21 = (a1 + 8 * v19);
    do
    {
      v22 = *v21++;
      v23 = v22;
      --v20;
    }

    while (v20);
  }

  result = memmove((a1 + 8 * a3), (a1 + 8 * a2), 8 * a4);
  v25 = v17 - v16;
  if (v17 > v16)
  {
    v26 = (a1 + 8 * v16);
    do
    {
      v27 = *v26++;
      result = v27;
      --v25;
    }

    while (v25);
  }

  return result;
}

id LibcoreReflectTypeVariableImpl_initWithJavaLangReflectGenericDeclaration_withNSString_withLibcoreReflectListOfTypes_(id *a1, void *a2, void *a3, void *a4)
{
  JreStrongAssign(a1 + 4, a2);
  JreStrongAssign(a1 + 3, a3);
  JreStrongAssign(a1 + 5, a4);
  JreStrongAssign(a1 + 1, a1);

  return JreStrongAssign(a1 + 2, 0);
}

void *LibcoreReflectTypeVariableImpl_findFormalVarWithJavaLangReflectGenericDeclaration_withNSString_(void *a1, void *a2)
{
  if (!a1 || (v3 = [a1 getTypeParameters]) == 0)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v4 = (v3 + 24);
  v5 = &v3[8 * *(v3 + 2) + 24];
  while (v4 < v5)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    v7 = *v4++;
    v6 = v7;
    if (!v7)
    {
      goto LABEL_11;
    }

    if ([a2 isEqual:{objc_msgSend(v6, "getName")}])
    {
      return v6;
    }
  }

  return 0;
}

id sub_10016F2C4(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {
        result = [a1 getEnclosingMethod];
        if (!result)
        {
          result = [a1 getEnclosingConstructor];
          if (!result)
          {

            return [a1 getEnclosingClass];
          }
        }

        return result;
      }

LABEL_17:
      JreThrowClassCastException();
    }

LABEL_18:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = new_JavaLangAssertionError_init();
      objc_exception_throw(v3);
    }
  }

  objc_opt_class();
  if (!a1)
  {
    goto LABEL_18;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  return [a1 getDeclaringClass];
}

LibcoreReflectTypeVariableImpl *new_LibcoreReflectTypeVariableImpl_initWithJavaLangReflectGenericDeclaration_withNSString_withLibcoreReflectListOfTypes_(void *a1, void *a2, void *a3)
{
  v6 = [LibcoreReflectTypeVariableImpl alloc];
  LibcoreReflectTypeVariableImpl_initWithJavaLangReflectGenericDeclaration_withNSString_withLibcoreReflectListOfTypes_(&v6->super.isa, a1, a2, a3);
  return v6;
}

LibcoreReflectTypeVariableImpl *new_LibcoreReflectTypeVariableImpl_initWithJavaLangReflectGenericDeclaration_withNSString_(void *a1, void *a2)
{
  v4 = [LibcoreReflectTypeVariableImpl alloc];
  JreStrongAssign(&v4->name_, a2);
  JreStrongAssign(&v4->declOfVarUser_, a1);
  return v4;
}

JavaNioLongArrayBuffer *JavaNioLongBuffer_allocateWithInt_(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0x80000000) != 0)
  {
    v10 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"capacity < 0: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  v8 = new_JavaNioLongArrayBuffer_initWithLongArray_([IOSLongArray arrayWithLength:a1]);

  return v8;
}

JavaNioLongArrayBuffer *JavaNioLongBuffer_wrapWithLongArray_withInt_withInt_(unsigned int *a1, int a2, int a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(a1[2], a2, a3);
  result = new_JavaNioLongArrayBuffer_initWithLongArray_(a1);
  result->super.super.position_ = a2;
  result->super.super.limit_ = a3 + a2;
  return result;
}

id JavaUtilMissingFormatArgumentException_initWithNSString_(uint64_t a1, void *a2)
{
  JavaUtilIllegalFormatException_init(a1, a2);
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"s == null");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 88), a2);
}

JavaUtilMissingFormatArgumentException *new_JavaUtilMissingFormatArgumentException_initWithNSString_(void *a1)
{
  v2 = [JavaUtilMissingFormatArgumentException alloc];
  JavaUtilMissingFormatArgumentException_initWithNSString_(v2, a1);
  return v2;
}

id JavaNioLongArrayBuffer_initWithLongArray_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaNioLongBuffer_initWithInt_withLong_(a1, a2[2], 0, a4, a5, a6, a7, a8);
  result = JreStrongAssign((a1 + 40), a2);
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  return result;
}

JavaNioLongArrayBuffer *sub_1001701F4(uint64_t a1, int a2, BOOL a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_10017041C([a1 capacity], *(a1 + 40), *(a1 + 48), a3);
  v5->super.super.limit_ = *(a1 + 12);
  v5->super.super.position_ = [a1 position];
  v5->super.super.mark_ = a2;
  return v5;
}

JavaNioLongArrayBuffer *sub_10017041C(uint64_t a1, void *a2, int a3, BOOL a4)
{
  v8 = [JavaNioLongArrayBuffer alloc];
  JavaNioLongBuffer_initWithInt_withLong_(v8, a1, 0, v9, v10, v11, v12, v13);
  JreStrongAssign(&v8->backingArray_, a2);
  v8->arrayOffset_ = a3;
  v8->isReadOnly_ = a4;
  return v8;
}

JavaNioLongArrayBuffer *new_JavaNioLongArrayBuffer_initWithLongArray_(unsigned int *a1)
{
  v2 = [JavaNioLongArrayBuffer alloc];
  JavaNioLongArrayBuffer_initWithLongArray_(v2, a1, v3, v4, v5, v6, v7, v8);
  return v2;
}

JavaNetInet4Address *new_JavaNetInet4Address_initWithByteArray_withNSString_(void *a1, void *a2)
{
  v4 = [JavaNetInet4Address alloc];
  JavaNetInetAddress_initWithInt_withByteArray_withNSString_(v4, 2, a1, a2);
  return v4;
}

id JavaNioDatagramChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_(uint64_t a1)
{
  JavaNioChannelsDatagramChannel_initWithJavaNioChannelsSpiSelectorProvider_();
  *(a1 + 71) = 0;
  *(a1 + 72) = 0;
  JreStrongAssignAndConsume((a1 + 103), [NSObject alloc]);
  JreStrongAssignAndConsume((a1 + 111), [NSObject alloc]);
  v2 = LibcoreIoIoBridge_socketWithBoolean_(0);

  return JreStrongAssign((a1 + 79), v2);
}

void sub_100171B68(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_100171D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  objc_end_catch();
  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_100171F20(void *exc_buf, int a2)
{
  objc_begin_catch(exc_buf);
  if (a2 == 2)
  {
    objc_end_catch();
  }

  JUMPOUT(0x100171ECCLL);
}

id sub_100171F68(uint64_t a1, void *a2, char a3)
{
  if (!a2 || ((v6 = [a2 position], !objc_msgSend(a2, "hasArray")) ? (v7 = new_JavaNetDatagramPacket_initWithByteArray_withInt_(+[IOSByteArray arrayWithLength:](IOSByteArray, "arrayWithLength:", objc_msgSend(a2, "remaining")), objc_msgSend(a2, "remaining"))) : (v7 = new_JavaNetDatagramPacket_initWithByteArray_withInt_withInt_(objc_msgSend(a2, "array"), objc_msgSend(a2, "arrayOffset") + objc_msgSend(a2, "position"), objc_msgSend(a2, "remaining"))), (v8 = v7) == 0))
  {
    JreThrowNullPointerException();
  }

  v9 = v8;
  while (1)
  {
    v10 = LibcoreIoIoBridge_recvfromWithBoolean_withJavaIoFileDescriptor_withByteArray_withInt_withInt_withInt_withJavaNetDatagramPacket_withBoolean_(0, *(a1 + 79), -[JavaNetDatagramPacket getData](v9, "getData"), -[JavaNetDatagramPacket getOffset](v9, "getOffset"), -[JavaNetDatagramPacket getLength](v9, "getLength"), 0, v9, [a1 isConnected]);
    if ([(JavaNetDatagramPacket *)v9 getAddress])
    {
      break;
    }

    if ((a3 & 1) == 0)
    {
      return 0;
    }
  }

  if (v10 >= 1)
  {
    if ([a2 hasArray])
    {
      [a2 positionWithInt:v10 + v6];
    }

    else
    {
      [a2 putWithByteArray:-[JavaNetDatagramPacket getData](v9 withInt:"getData") withInt:{0, v10}];
    }
  }

  return [(JavaNetDatagramPacket *)v9 getSocketAddress];
}

id sub_100172134(uint64_t a1, void *a2, char a3)
{
  if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100173320();
  }

  v6 = new_JavaNetDatagramPacket_initWithByteArray_withInt_(LibcoreUtilEmptyArray_BYTE_, 0);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v7 = v6;
  v8 = [a2 position];
  while (1)
  {
    v9 = LibcoreIoIoBridge_recvfromWithBoolean_withJavaIoFileDescriptor_withJavaNioByteBuffer_withInt_withJavaNetDatagramPacket_withBoolean_(0, *(a1 + 79), a2, 0, v7, [a1 isConnected]);
    if ([(JavaNetDatagramPacket *)v7 getAddress])
    {
      break;
    }

    if ((a3 & 1) == 0)
    {
      return 0;
    }
  }

  if (v9 >= 1)
  {
    [a2 positionWithInt:v9 + v8];
  }

  return [(JavaNetDatagramPacket *)v7 getSocketAddress];
}

void sub_100172434(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100172474(uint64_t result)
{
  if (!result)
  {
    v1 = new_JavaLangNullPointerException_initWithNSString_(@"source == null");
    objc_exception_throw(v1);
  }

  return result;
}

uint64_t sub_1001725CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 103);
  objc_sync_enter(v4);
  [a1 begin];
  v5 = LibcoreIoIoBridge_recvfromWithBoolean_withJavaIoFileDescriptor_withJavaNioByteBuffer_withInt_withJavaNetDatagramPacket_withBoolean_(0, *(a1 + 79), a2, 0, 0, [a1 isConnected]);
  [a1 endWithBoolean:v5 > 0];
  objc_sync_exit(v4);
  return v5;
}

void sub_100172674(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_10017269C(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x100172638);
  }

  JUMPOUT(0x10017263CLL);
}

id sub_1001728BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 111);
  objc_sync_enter(v4);
  [a1 begin];
  v5 = LibcoreIoIoBridge_sendtoWithJavaIoFileDescriptor_withJavaNioByteBuffer_withInt_withJavaNetInetAddress_withInt_(*(a1 + 79), a2, 0, 0, 0);
  [a1 endWithBoolean:v5 > 0];
  objc_sync_exit(v4);
  return v5;
}

void sub_100172954(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

JavaNioDatagramChannelImpl *new_JavaNioDatagramChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_()
{
  v0 = [JavaNioDatagramChannelImpl alloc];
  JavaNioDatagramChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_(v0);
  return v0;
}

id sub_100172D50(id *a1, void *a2, uint64_t a3)
{
  JavaNetDatagramSocket_initWithJavaNetDatagramSocketImpl_(a1, a2);
  objc_storeWeak(a1 + 7, a3);
  if (!a3)
  {
    goto LABEL_12;
  }

  if (*(a3 + 72) == 1)
  {
    [a1 onBindWithJavaNetInetAddress:*(a3 + 63) withInt:*(a3 + 95)];
  }

  if (*(a3 + 71) == 1)
  {
    v5 = *(a3 + 55);
    if (v5)
    {
      [a1 onConnectWithJavaNetInetAddress:objc_msgSend(v5 withInt:{"getAddress"), objc_msgSend(*(a3 + 55), "getPort")}];
      goto LABEL_8;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  [a1 onDisconnect];
LABEL_8:
  result = [a3 isOpen];
  if ((result & 1) == 0)
  {

    return [a1 onClose];
  }

  return result;
}

void sub_100173024(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

id JavaUtilLinkedHashMap_initWithJavaUtilMap_(_BYTE *a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  inited = JavaUtilHashMap_capacityForInitSizeWithInt_([a2 size]);
  JavaUtilHashMap_initWithInt_withFloat_(a1, inited, 0.75);
  [a1 init];
  a1[88] = 0;

  return [a1 constructorPutAllWithJavaUtilMap:a2];
}

id sub_1001739FC(uint64_t a1, id *a2)
{
  Weak = objc_loadWeak(a2 + 5);
  if (!a2 || (v5 = Weak, (v6 = objc_loadWeak(a2 + 6)) == 0) || (objc_storeWeak(v6 + 5, v5), v7 = objc_loadWeak(a2 + 6), (v8 = objc_loadWeak(a2 + 5)) == 0) || (objc_storeWeak(v8 + 6, v7), (v9 = *(a1 + 80)) == 0))
  {
    JreThrowNullPointerException();
  }

  v10 = objc_loadWeak(v9 + 6);
  objc_storeWeak(a2 + 5, v9);
  objc_storeWeak(a2 + 6, v10);
  v11 = objc_storeWeak(v9 + 6, a2);
  result = objc_storeWeak(v10 + 5, v11);
  ++*(a1 + 44);
  return result;
}

JavaUtilLinkedHashMap *new_JavaUtilLinkedHashMap_init()
{
  v0 = [JavaUtilLinkedHashMap alloc];
  JavaUtilHashMap_init(v0, v1);
  [(JavaUtilLinkedHashMap *)v0 init];
  v0->accessOrder_ = 0;
  return v0;
}

JavaUtilLinkedHashMap *new_JavaUtilLinkedHashMap_initWithInt_(uint64_t a1)
{
  v2 = [JavaUtilLinkedHashMap alloc];
  JavaUtilHashMap_initWithInt_withFloat_(v2, a1, 0.75);
  [(JavaUtilLinkedHashMap *)v2 init];
  v2->accessOrder_ = 0;
  return v2;
}

JavaUtilLinkedHashMap *new_JavaUtilLinkedHashMap_initWithInt_withFloat_(uint64_t a1, float a2)
{
  v4 = [JavaUtilLinkedHashMap alloc];
  JavaUtilHashMap_initWithInt_withFloat_(v4, a1, a2);
  [(JavaUtilLinkedHashMap *)v4 init];
  v4->accessOrder_ = 0;
  return v4;
}

JavaUtilLinkedHashMap *new_JavaUtilLinkedHashMap_initWithInt_withFloat_withBoolean_(uint64_t a1, BOOL a2, float a3)
{
  v6 = [JavaUtilLinkedHashMap alloc];
  JavaUtilHashMap_initWithInt_withFloat_(v6, a1, a3);
  [(JavaUtilLinkedHashMap *)v6 init];
  v6->accessOrder_ = a2;
  return v6;
}

JavaUtilLinkedHashMap *new_JavaUtilLinkedHashMap_initWithJavaUtilMap_(void *a1)
{
  v2 = [JavaUtilLinkedHashMap alloc];
  JavaUtilLinkedHashMap_initWithJavaUtilMap_(v2, a1);
  return v2;
}

id JavaUtilLinkedHashMap_LinkedEntry_init(id *a1)
{
  JavaUtilHashMap_HashMapEntry_initWithId_withId_withInt_withJavaUtilHashMap_HashMapEntry_(a1, 0, 0, 0, 0);
  v2 = objc_storeWeak(a1 + 6, a1);

  return objc_storeWeak(a1 + 5, v2);
}

id JavaUtilLinkedHashMap_LinkedEntry_initWithId_withId_withInt_withJavaUtilHashMap_HashMapEntry_withJavaUtilLinkedHashMap_LinkedEntry_withJavaUtilLinkedHashMap_LinkedEntry_(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6, void *a7)
{
  JavaUtilHashMap_HashMapEntry_initWithId_withId_withInt_withJavaUtilHashMap_HashMapEntry_(a1, a2, a3, a4, a5);
  objc_storeWeak((a1 + 40), a6);

  return objc_storeWeak((a1 + 48), a7);
}

id sub_100174628(uint64_t a1, uint64_t a2)
{
  objc_storeWeak((a1 + 8), a2);
  v4 = *(a2 + 80);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  Weak = objc_loadWeak((v4 + 40));
  JreStrongAssign((a1 + 16), Weak);
  result = JreStrongAssign((a1 + 24), 0);
  *(a1 + 32) = *(a2 + 44);
  return result;
}

uint64_t JavaNioDirectByteBuffer_initWithJavaNioMemoryBlock_withInt_withInt_withBoolean_withJavaNioChannelsFileChannel_MapMode_(uint64_t a1, void *a2, uint64_t a3, int a4, char a5, void *a6)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v12 = [a2 toLong];
  JavaNioMappedByteBuffer_initWithJavaNioMemoryBlock_withInt_withJavaNioChannelsFileChannel_MapMode_withLong_(a1, a2, a3, a6, v12 + a4, v13, v14, v15);
  result = [a2 getSize];
  if ((result & 0x8000000000000000) == 0 && result < a4 + a3)
  {
    v17 = new_JavaLangIllegalArgumentException_initWithNSString_(@"capacity + offset > baseSize");
    objc_exception_throw(v17);
  }

  *(a1 + 64) = a4;
  *(a1 + 69) = a5;
  return result;
}

JavaNioDirectByteBuffer *sub_1001749B4(uint64_t a1, int a2, char a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  [JavaNioDirectByteBuffer checkNotFreed]_0(a1);
  v6 = *(a1 + 56);
  v7 = [a1 capacity];
  v8 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = [JavaNioDirectByteBuffer alloc];
  JavaNioDirectByteBuffer_initWithJavaNioMemoryBlock_withInt_withInt_withBoolean_withJavaNioChannelsFileChannel_MapMode_(v10, v6, v7, v8, a3, v9);
  v11 = v10;
  v11->super.super.super.limit_ = *(a1 + 12);
  v11->super.super.super.position_ = [a1 position];
  v11->super.super.super.mark_ = a2;
  return v11;
}

JavaNioDirectByteBuffer *new_JavaNioDirectByteBuffer_initWithJavaNioMemoryBlock_withInt_withInt_withBoolean_withJavaNioChannelsFileChannel_MapMode_(void *a1, uint64_t a2, int a3, char a4, void *a5)
{
  v10 = [JavaNioDirectByteBuffer alloc];
  JavaNioDirectByteBuffer_initWithJavaNioMemoryBlock_withInt_withInt_withBoolean_withJavaNioChannelsFileChannel_MapMode_(v10, a1, a2, a3, a4, a5);
  return v10;
}

id LibcoreNetUriCodec_validateSimpleWithNSString_withNSString_(void *a1, void *a2)
{
  if (!a1)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  result = [a1 length];
  if (result >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [a1 charAtWithInt:v5];
      if ((v6 - 48) >= 0xA && (v6 & 0xFFFFFFDF) - 65 >= 0x1A)
      {
        if (!a2)
        {
          goto LABEL_13;
        }

        if (([a2 indexOf:v6] & 0x80000000) != 0)
        {
          v8 = new_JavaNetURISyntaxException_initWithNSString_withNSString_withInt_(a1, @"Illegal character", v5);
          objc_exception_throw(v8);
        }
      }

      v5 = (v5 + 1);
      result = [a1 length];
    }

    while (v5 < result);
  }

  return result;
}

char *sub_100177150(void *a1, void *a2, void *a3, uint64_t a4, int a5)
{
  if (!a3)
  {
    v19 = new_JavaLangNullPointerException_initWithNSString_(@"s == null");
    objc_exception_throw(v19);
  }

  result = [a3 length];
  if (result >= 1)
  {
    v10 = 0;
    v11 = 0xFFFFFFFFLL;
    do
    {
      v12 = [a3 charAtWithInt:v10];
      v13 = (v12 - 48) >= 0xA && ((v12 & 0xFFDF) - 65) >= 0x1Au;
      if (!v13 || ((v14 = [a1 isRetainedWithChar:v12], v12 == 37) ? (v15 = a5) : (v15 = 0), (v15 & 1) != 0 || v14))
      {
        if (v11 != -1)
        {
          sub_1001777F8(a2, [a3 substring:v11 endIndex:v10]);
        }

        if (v12 == 37 && a5)
        {
          if (!a2)
          {
            goto LABEL_35;
          }

          [a2 appendWithJavaLangCharSequence:a3 withInt:v10 withInt:{JavaLangMath_minWithInt_withInt_((v10 + 3), objc_msgSend(a3, "length"))}];
          LODWORD(v10) = v10 + 2;
        }

        else
        {
          if (v12 == 32)
          {
            if (!a2)
            {
              goto LABEL_35;
            }

            v16 = a2;
            v17 = 43;
          }

          else
          {
            if (!a2)
            {
LABEL_35:
              JreThrowNullPointerException();
            }

            v16 = a2;
            v17 = v12;
          }

          [v16 appendWithChar:v17];
        }

        v11 = 0xFFFFFFFFLL;
      }

      else if (v11 == -1)
      {
        v11 = v10;
      }

      else
      {
        v11 = v11;
      }

      v10 = (v10 + 1);
      result = [a3 length];
    }

    while (v10 < result);
    if (v11 != -1)
    {
      v18 = [a3 substring:v11 endIndex:{objc_msgSend(a3, "length")}];

      return sub_1001777F8(a2, v18);
    }
  }

  return result;
}

NSString *LibcoreNetUriCodec_decodeWithNSString_withBoolean_withJavaNioCharsetCharset_withBoolean_(void *a1, int a2, uint64_t a3, int a4)
{
  if (!a1)
  {
LABEL_37:
    JreThrowNullPointerException();
  }

  if ([a1 indexOf:37] == -1 && (!a2 || objc_msgSend(a1, "indexOf:", 43) == -1))
  {
    return a1;
  }

  v7 = new_JavaLangStringBuilder_initWithInt_([a1 length]);
  v8 = new_JavaIoByteArrayOutputStream_init();
  if ([a1 length] >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = [a1 charAtWithInt:v9];
      if (v10 == 37)
      {
        break;
      }

      if (((v10 == 43) & a2) != 0)
      {
        v23 = 32;
      }

      else
      {
        v23 = v10;
      }

      [(JavaLangStringBuilder *)v7 appendWithChar:v23];
      v9 = (v9 + 1);
LABEL_30:
      if (v9 >= [a1 length])
      {
        goto LABEL_31;
      }
    }

    while (v9 + 2 < [a1 length])
    {
      v18 = [a1 charAtWithInt:(v9 + 1)];
      v19 = v18 - 48;
      if (v18 - 48 > 9)
      {
        if (v18 - 97 > 5)
        {
          if (v18 - 65 > 5)
          {
            break;
          }

          v19 = v18 - 55;
        }

        else
        {
          v19 = v18 - 87;
        }
      }

      if (v19 == -1)
      {
        break;
      }

      v20 = [a1 charAtWithInt:(v9 + 2)];
      v21 = v20 - 48;
      if (v20 - 48 > 9)
      {
        if (v20 - 97 > 5)
        {
          if (v20 - 65 > 5)
          {
            break;
          }

          v21 = v20 - 55;
        }

        else
        {
          v21 = v20 - 87;
        }
      }

      if (v21 == -1)
      {
        break;
      }

      [(JavaIoByteArrayOutputStream *)v8 writeWithInt:(((v21 << 24) + (v19 << 28)) >> 24)];
LABEL_23:
      v9 = (v9 + 3);
      if (v9 >= [a1 length] || objc_msgSend(a1, "charAtWithInt:", v9) != 37)
      {
        [(JavaLangStringBuilder *)v7 appendWithNSString:[NSString stringWithBytes:[(JavaIoByteArrayOutputStream *)v8 toByteArray] charset:a3]];
        [(JavaIoByteArrayOutputStream *)v8 reset];
        goto LABEL_30;
      }
    }

    if (a4)
    {
      v25 = JreStrcat("$I$$", v11, v12, v13, v14, v15, v16, v17, @"Invalid % sequence at ");
      v26 = new_JavaLangIllegalArgumentException_initWithNSString_(v25);
      objc_exception_throw(v26);
    }

    v22 = [@"\uFFFD" getBytesWithCharset:a3];
    if (!v22)
    {
      goto LABEL_37;
    }

    [(JavaIoByteArrayOutputStream *)v8 writeWithByteArray:v22 withInt:0 withInt:v22[2]];
    goto LABEL_23;
  }

LABEL_31:

  return [(JavaLangStringBuilder *)v7 description];
}

NSString *LibcoreNetUriCodec_decodeWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaNioCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140190();
  }

  v2 = JavaNioCharsetStandardCharsets_UTF_8_;

  return LibcoreNetUriCodec_decodeWithNSString_withBoolean_withJavaNioCharsetCharset_withBoolean_(a1, 0, v2, 1);
}

char *sub_1001777F8(void *a1, void *a2)
{
  if (!a2 || (result = [a2 getBytesWithCharset:?]) == 0)
  {
    JreThrowNullPointerException();
  }

  v4 = (result + 12);
  v5 = *(result + 2);
  if (result + 12 < &result[v5 + 12])
  {
    do
    {
      v6 = *v4++;
      result = sub_100177880(a1, v6);
      --v5;
    }

    while (v5);
  }

  return result;
}

id sub_100177880(void *a1, unsigned __int8 a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  [a1 appendWithChar:37];
  v4 = JavaLangByte_toHexStringWithByte_withBoolean_(a2, 1);

  return [a1 appendWithNSString:v4];
}

id JavaUtilFormatFlagsConversionMismatchException_initWithNSString_withChar_(uint64_t a1, void *a2, __int16 a3)
{
  JavaUtilIllegalFormatException_init(a1, a2);
  if (!a2)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"f == null");
    objc_exception_throw(v7);
  }

  result = JreStrongAssign((a1 + 88), a2);
  *(a1 + 96) = a3;
  return result;
}

JavaUtilFormatFlagsConversionMismatchException *new_JavaUtilFormatFlagsConversionMismatchException_initWithNSString_withChar_(void *a1, __int16 a2)
{
  v4 = [JavaUtilFormatFlagsConversionMismatchException alloc];
  JavaUtilFormatFlagsConversionMismatchException_initWithNSString_withChar_(v4, a1, a2);
  return v4;
}

id JavaUtilLoggingIOSLogHandler_init(id *a1)
{
  JavaUtilLoggingHandler_init(a1);
  v2 = [JavaUtilLoggingIOSLogHandler_IOSLogFormatter alloc];
  JavaUtilLoggingFormatter_init(v2, v3);
  v4 = v2;

  return [a1 setFormatterWithJavaUtilLoggingFormatter:v4];
}

void sub_100177C84(uint64_t a1, os_log_type_t a2)
{
  if (os_log_type_enabled(&_os_log_default, a2))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, a2, "%@", &v4, 0xCu);
  }
}

uint64_t JavaLangReflectType_class_()
{
  if (qword_100554AD0 != -1)
  {
    sub_100177DE0();
  }

  return qword_100554AC8;
}

void sub_100177E84(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 8));
  if (v1)
  {
    if (!sub_1001784F4(v1))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && ([v1 retainCount] & 0xFFFFFFFF7FFFFFFFLL) != 0x7FFFFFFF)
      {
        Class = object_getClass(v1);
        ClassPair = [qword_100554B38 objectForKey:Class];
        if (!ClassPair)
        {
          v5 = [+[NSString stringWithFormat:](NSString UTF8String:@"%s_ReferentSubclass"];
          ClassPair = objc_allocateClassPair(Class, v5, 0);
          InstanceMethod = class_getInstanceMethod(Class, "dealloc");
          TypeEncoding = method_getTypeEncoding(InstanceMethod);
          class_addMethod(ClassPair, "dealloc", sub_100178544, TypeEncoding);
          v8 = class_getInstanceMethod(Class, "release");
          v9 = method_getTypeEncoding(v8);
          class_addMethod(ClassPair, "release", sub_1001785D4, v9);
          v10 = class_getInstanceMethod(Class, "getClass");
          v11 = method_getTypeEncoding(v10);
          class_addMethod(ClassPair, "getClass", sub_100178664, v11);
          objc_registerClassPair(ClassPair);
          [qword_100554B38 setObject:ClassPair forKey:Class];
          [qword_100554B30 addObject:ClassPair];
        }

        if (class_getSuperclass(ClassPair) == Class)
        {
          object_setClass(v1, ClassPair);
        }
      }
    }

    v12 = *(a1 + 32);
    Value = CFDictionaryGetValue(qword_100554B28, v1);
    if (!Value)
    {
      Value = CFSetCreateMutable(0, 0, 0);
      CFDictionarySetValue(qword_100554B28, v1, Value);
      CFRelease(Value);
    }

    CFSetAddValue(Value, v12);
  }
}

void sub_1001781BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001781F0(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 8));
  *(*(*(a1 + 40) + 8) + 40) = v1;
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return v2;
}

uint64_t sub_1001782D8(uint64_t result)
{
  v1 = result;
  v2 = atomic_load((*(result + 32) + 8));
  if (v2)
  {
    v3 = *(result + 32);
    result = CFDictionaryGetValue(qword_100554B28, v2);
    if (result)
    {
      v4 = result;
      CFSetRemoveValue(result, v3);
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        result = sub_100178A1C(v4);
        if ((result & 1) == 0)
        {
          result = [qword_100554AE0 removeObject:v2];
        }
      }
    }
  }

  atomic_store(0, (*(v1 + 32) + 8));
  return result;
}

objc_class *sub_1001784F4(void *a1)
{
  for (i = object_getClass(a1); i; i = class_getSuperclass(i))
  {
    if ([qword_100554B30 containsObject:i])
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100178544(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100178768;
  v2[3] = &unk_1003FFC90;
  v2[4] = a1;
  pthread_mutex_lock(&stru_100554AE8);
  sub_100178768(v2);
  return pthread_mutex_unlock(&stru_100554AE8);
}

uint64_t sub_1001785D4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100178978;
  v2[3] = &unk_1003FFC90;
  v2[4] = a1;
  pthread_mutex_lock(&stru_100554AE8);
  sub_100178978(v2);
  return pthread_mutex_unlock(&stru_100554AE8);
}

uint64_t sub_100178664(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = sub_1001781D4;
  v8 = sub_1001781E4;
  v9 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100178B24;
  v3[3] = &unk_1003FFCB8;
  v3[4] = a1;
  v3[5] = &v4;
  pthread_mutex_lock(&stru_100554AE8);
  sub_100178B24(v3);
  pthread_mutex_unlock(&stru_100554AE8);
  v1 = IOSClass_fromClass(v5[5]);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100178750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100178768(uint64_t a1)
{
  Value = CFDictionaryGetValue(qword_100554B28, *(a1 + 32));
  if (Value)
  {
    v3 = Value;
    [Value count];
    v18[1] = v18;
    __chkstk_darwin();
    v5 = (v18 - v4);
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v19 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v3);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          atomic_store(0, v11 + 1);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5[v8++] = v11;
          }

          else
          {
            [v11 enqueueInternal];
          }
        }

        v7 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v12 = *(a1 + 32);
    v13 = sub_1001784F4(v12);
    Superclass = class_getSuperclass(v13);
    MethodImplementation = class_getMethodImplementation(Superclass, "dealloc");
    (MethodImplementation)(v12, "dealloc");
    CFDictionaryRemoveValue(qword_100554B28, *(a1 + 32));
    if (v8 >= 1)
    {
      v16 = v8;
      do
      {
        v17 = *v5++;
        [v17 enqueueInternal];
        --v16;
      }

      while (v16);
    }
  }
}

uint64_t sub_100178978(uint64_t a1)
{
  if ([*(a1 + 32) retainCount] == 1 && (byte_100554AD8 & 1) == 0)
  {
    Value = CFDictionaryGetValue(qword_100554B28, *(a1 + 32));
    if (Value)
    {
      if (sub_100178A1C(Value))
      {
        [qword_100554AE0 addObject:*(a1 + 32)];
      }
    }
  }

  v3 = *(a1 + 32);
  v4 = sub_1001784F4(v3);
  Superclass = class_getSuperclass(v4);
  MethodImplementation = class_getMethodImplementation(Superclass, "release");

  return (MethodImplementation)(v3, "release");
}

uint64_t sub_100178A1C(void *a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

Class sub_100178B24(uint64_t a1)
{
  v2 = sub_1001784F4(*(a1 + 32));
  result = class_getSuperclass(v2);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

id JavaIoFilterOutputStream_initWithJavaIoOutputStream_(uint64_t a1, void *a2)
{
  JavaIoOutputStream_init();

  return JreStrongAssign((a1 + 8), a2);
}

LibcoreIcuLocaleData *LibcoreIcuLocaleData_getWithJavaUtilLocale_(void *a1)
{
  Default = a1;
  if (atomic_load_explicit(LibcoreIcuLocaleData__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_1001792E0();
    if (Default)
    {
      goto LABEL_4;
    }
  }

  Default = JavaUtilLocale_getDefault();
  if (!Default)
  {
    JreThrowNullPointerException();
  }

LABEL_4:
  v2 = [Default description];
  v3 = qword_100554B40;
  objc_sync_enter(qword_100554B40);
  if (!qword_100554B40)
  {
    JreThrowNullPointerException();
  }

  v4 = [qword_100554B40 getWithId:v2];
  objc_sync_exit(v3);
  if (!v4)
  {
    v5 = sub_100178F90(Default);
    v6 = qword_100554B40;
    objc_sync_enter(qword_100554B40);
    v4 = [qword_100554B40 getWithId:v2];
    if (!v4)
    {
      [qword_100554B40 putWithId:v2 withId:v5];
      v4 = v5;
    }

    objc_sync_exit(v6);
  }

  return v4;
}

LibcoreIcuLocaleData *sub_100178F90(void *a1)
{
  if ((atomic_load_explicit(LibcoreIcuLocaleData__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001792E0();
  }

  v2 = [LibcoreIcuLocaleData alloc];
  v2->patternSeparator_ = 59;
  v3 = v2;
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  v5 = [a1 description];
  if ((atomic_load_explicit(LibcoreIcuLocaleData__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001792E0();
  }

  [IOSLocaleData initLocaleDataImplWithNSString:v5 withLibcoreIcuLocaleData:v4];
  fullTimeFormat = v4->fullTimeFormat_;
  if (fullTimeFormat)
  {
    JreStrongAssign(&v4->fullTimeFormat_, [(NSString *)fullTimeFormat replace:118 withChar:122]);
  }

  numberPattern = v4->numberPattern_;
  if (numberPattern)
  {
    JreStrongAssign(&v4->integerPattern_, [(NSString *)numberPattern replaceAll:@"\\.[# withReplacement:]*", &stru_100484358]);
  }

  return v4;
}

JavaUtilArrays_ArrayList *JavaUtilArrays_asListWithNSObjectArray_(void *a1)
{
  v2 = [JavaUtilArrays_ArrayList alloc];
  sub_10017E31C(v2, a1);

  return v2;
}

unint64_t JavaUtilArrays_binarySearchWithByteArray_withInt_withInt_withByte_(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v6 = a2;
  sub_100179F34(a2, a3, *(a1 + 8));
  v8 = a3 - 1;
  while (v6 <= v8)
  {
    v9 = (v6 + v8) >> 1;
    v11 = *(a1 + 8);
    if (((v6 + v8) >> 1) >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, (v6 + v8) >> 1);
    }

    v12 = *(a1 + 12 + v9);
    if (v12 >= a4)
    {
      if (v12 <= a4)
      {
        return v9;
      }

      v8 = v9 - 1;
    }

    else
    {
      v6 = v9 + 1;
    }
  }

  return ~v6;
}

uint64_t JavaUtilArrays_binarySearchWithCharArray_withInt_withInt_withChar_(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v6 = a2;
  sub_100179F34(a2, a3, *(a1 + 8));
  v8 = a3 - 1;
  while (v6 <= v8)
  {
    v9 = (v6 + v8) >> 1;
    v11 = *(a1 + 8);
    if (v9 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, (v6 + v8) >> 1);
    }

    v12 = *(a1 + 12 + 2 * v9);
    if (v12 >= a4)
    {
      if (v12 <= a4)
      {
        return v9;
      }

      v8 = v9 - 1;
    }

    else
    {
      v6 = v9 + 1;
    }
  }

  return ~v6;
}

uint64_t JavaUtilArrays_binarySearchWithDoubleArray_withInt_withInt_withDouble_(uint64_t a1, uint64_t a2, int a3, double a4)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v6 = a2;
  sub_100179F34(a2, a3, *(a1 + 8));
  v8 = a3 - 1;
  if (a3 - 1 >= v6)
  {
    while (1)
    {
      v9 = (v6 + v8) >> 1;
      v11 = *(a1 + 8);
      if (v9 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, (v6 + v8) >> 1);
      }

      v12 = *(a1 + 16 + 8 * v9);
      if (v12 >= a4)
      {
        if (v12 > a4)
        {
          goto LABEL_15;
        }

        if (v12 != 0.0 && v12 == a4)
        {
          return v9;
        }

        v14 = JavaLangDouble_doubleToLongBitsWithDouble_(v12);
        v15 = JavaLangDouble_doubleToLongBitsWithDouble_(a4);
        if (v14 >= v15)
        {
          break;
        }
      }

      v6 = v9 + 1;
LABEL_16:
      if (v6 > v8)
      {
        return ~v6;
      }
    }

    if (v14 <= v15)
    {
      return v9;
    }

LABEL_15:
    v8 = v9 - 1;
    goto LABEL_16;
  }

  return ~v6;
}

uint64_t JavaUtilArrays_binarySearchWithFloatArray_withInt_withInt_withFloat_(uint64_t a1, uint64_t a2, int a3, float a4)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v6 = a2;
  sub_100179F34(a2, a3, *(a1 + 8));
  v8 = a3 - 1;
  if (a3 - 1 >= v6)
  {
    while (1)
    {
      v9 = (v6 + v8) >> 1;
      v11 = *(a1 + 8);
      if (v9 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, (v6 + v8) >> 1);
      }

      v12 = *(a1 + 12 + 4 * v9);
      if (v12 >= a4)
      {
        if (v12 > a4)
        {
          goto LABEL_15;
        }

        if (v12 != 0.0 && v12 == a4)
        {
          return v9;
        }

        v14 = JavaLangFloat_floatToIntBitsWithFloat_(v12);
        v15 = JavaLangFloat_floatToIntBitsWithFloat_(a4);
        if (v14 >= v15)
        {
          break;
        }
      }

      v6 = v9 + 1;
LABEL_16:
      if (v6 > v8)
      {
        return ~v6;
      }
    }

    if (v14 <= v15)
    {
      return v9;
    }

LABEL_15:
    v8 = v9 - 1;
    goto LABEL_16;
  }

  return ~v6;
}

uint64_t JavaUtilArrays_binarySearchWithIntArray_withInt_(uint64_t a1, int a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = *(a1 + 8);

  return JavaUtilArrays_binarySearchWithIntArray_withInt_withInt_withInt_(a1, 0, v3, a2);
}

uint64_t JavaUtilArrays_binarySearchWithIntArray_withInt_withInt_withInt_(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v6 = a2;
  sub_100179F34(a2, a3, *(a1 + 8));
  v8 = a3 - 1;
  while (v6 <= v8)
  {
    v9 = (v6 + v8) >> 1;
    v11 = *(a1 + 8);
    if (v9 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, (v6 + v8) >> 1);
    }

    v12 = *(a1 + 12 + 4 * v9);
    if (v12 >= a4)
    {
      if (v12 <= a4)
      {
        return v9;
      }

      v8 = v9 - 1;
    }

    else
    {
      v6 = v9 + 1;
    }
  }

  return ~v6;
}

uint64_t JavaUtilArrays_binarySearchWithLongArray_withInt_withInt_withLong_(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v6 = a2;
  sub_100179F34(a2, a3, *(a1 + 8));
  v8 = a3 - 1;
  while (v6 <= v8)
  {
    v9 = (v6 + v8) >> 1;
    v11 = *(a1 + 8);
    if (v9 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, (v6 + v8) >> 1);
    }

    v12 = *(a1 + 16 + 8 * v9);
    if (v12 >= a4)
    {
      if (v12 <= a4)
      {
        return v9;
      }

      v8 = v9 - 1;
    }

    else
    {
      v6 = v9 + 1;
    }
  }

  return ~v6;
}

uint64_t JavaUtilArrays_binarySearchWithNSObjectArray_withInt_withInt_withId_(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_16;
  }

  v6 = a2;
  sub_100179F34(a2, a3, *(a1 + 8));
  v8 = a3 - 1;
  if (a3 - 1 >= v6)
  {
    while (1)
    {
      v9 = (v6 + v8) >> 1;
      v11 = *(a1 + 8);
      if (v9 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, (v6 + v8) >> 1);
      }

      v12 = *(a1 + 24 + 8 * v9);
      v13 = JavaLangComparable_class_();
      if (!v12)
      {
        break;
      }

      if (([v13 isInstance:v12] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v14 = [v12 compareToWithId:a4];
      if ((v14 & 0x80000000) != 0)
      {
        v6 = v9 + 1;
      }

      else
      {
        if (!v14)
        {
          return v9;
        }

        v8 = v9 - 1;
      }

      if (v6 > v8)
      {
        return ~v6;
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  return ~v6;
}

uint64_t JavaUtilArrays_binarySearchWithNSObjectArray_withId_withJavaUtilComparator_(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a1 + 8);

  return JavaUtilArrays_binarySearchWithNSObjectArray_withInt_withInt_withId_withJavaUtilComparator_(a1, 0, v5, a2, a3);
}

uint64_t JavaUtilArrays_binarySearchWithNSObjectArray_withInt_withInt_withId_withJavaUtilComparator_(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v7 = a2;
  if (a5)
  {
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    sub_100179F34(a2, a3, *(a1 + 8));
    v10 = a3 - 1;
    while (v7 <= v10)
    {
      v11 = (v7 + v10) >> 1;
      v13 = *(a1 + 8);
      if (v11 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, (v7 + v10) >> 1);
      }

      v14 = [a5 compareWithId:*(a1 + 24 + 8 * v11) withId:a4];
      if ((v14 & 0x80000000) != 0)
      {
        v7 = v11 + 1;
      }

      else
      {
        if (!v14)
        {
          return v11;
        }

        v10 = v11 - 1;
      }
    }

    return ~v7;
  }

  else
  {

    return JavaUtilArrays_binarySearchWithNSObjectArray_withInt_withInt_withId_(a1, a2, a3, a4);
  }
}

uint64_t JavaUtilArrays_binarySearchWithShortArray_withInt_withInt_withShort_(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v6 = a2;
  sub_100179F34(a2, a3, *(a1 + 8));
  v8 = a3 - 1;
  while (v6 <= v8)
  {
    v9 = (v6 + v8) >> 1;
    v11 = *(a1 + 8);
    if (v9 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, (v6 + v8) >> 1);
    }

    v12 = *(a1 + 12 + 2 * v9);
    if (v12 >= a4)
    {
      if (v12 <= a4)
      {
        return v9;
      }

      v8 = v9 - 1;
    }

    else
    {
      v6 = v9 + 1;
    }
  }

  return ~v6;
}

uint64_t sub_100179F34(uint64_t result, int a2, int a3)
{
  if (result > a2)
  {
    v3 = new_JavaLangIllegalArgumentException_init();
    goto LABEL_7;
  }

  if ((result & 0x80000000) != 0 || a2 > a3)
  {
    v3 = new_JavaLangArrayIndexOutOfBoundsException_init();
LABEL_7:
    objc_exception_throw(v3);
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithByteArray_withByte_(uint64_t result, char a2)
{
  if (!result)
  {
    JreThrowNullPointerException();
  }

  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      *(result + 12 + v2++) = a2;
    }

    while (v2 < *(result + 8));
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithByteArray_withInt_withInt_withByte_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v8 = a4;
  v9 = a3;
  v10 = a2;
  result = JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);
  if (v10 < v9)
  {
    v13 = v10;
    v14 = a1 + v10;
    do
    {
      result = *(a1 + 8);
      if (v13 < 0 || v13 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v13);
      }

      *(v14 + 12) = v8;
      ++v13;
      ++v14;
    }

    while (v9 != v13);
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithShortArray_withShort_(uint64_t result, __int16 a2)
{
  if (!result)
  {
    JreThrowNullPointerException();
  }

  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      *(result + 12 + 2 * v2++) = a2;
    }

    while (v2 < *(result + 8));
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithShortArray_withInt_withInt_withShort_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v8 = a4;
  v9 = a3;
  v10 = a2;
  result = JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);
  if (v10 < v9)
  {
    v13 = v10;
    v14 = a1 + 2 * v10;
    do
    {
      result = *(a1 + 8);
      if (v13 < 0 || v13 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v13);
      }

      *(v14 + 12) = v8;
      ++v13;
      v14 += 2;
    }

    while (v9 != v13);
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithCharArray_withChar_(uint64_t result, __int16 a2)
{
  if (!result)
  {
    JreThrowNullPointerException();
  }

  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      *(result + 12 + 2 * v2++) = a2;
    }

    while (v2 < *(result + 8));
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithCharArray_withInt_withInt_withChar_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v8 = a4;
  v9 = a3;
  v10 = a2;
  result = JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);
  if (v10 < v9)
  {
    v13 = v10;
    v14 = a1 + 2 * v10;
    do
    {
      result = *(a1 + 8);
      if (v13 < 0 || v13 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v13);
      }

      *(v14 + 12) = v8;
      ++v13;
      v14 += 2;
    }

    while (v9 != v13);
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithIntArray_withInt_(uint64_t result, int a2)
{
  if (!result)
  {
    JreThrowNullPointerException();
  }

  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      *(result + 12 + 4 * v2++) = a2;
    }

    while (v2 < *(result + 8));
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithIntArray_withInt_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v8 = a4;
  v9 = a3;
  v10 = a2;
  result = JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);
  if (v10 < v9)
  {
    v13 = v10;
    v14 = a1 + 4 * v10;
    do
    {
      result = *(a1 + 8);
      if (v13 < 0 || v13 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v13);
      }

      *(v14 + 12) = v8;
      ++v13;
      v14 += 4;
    }

    while (v9 != v13);
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithLongArray_withLong_(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    JreThrowNullPointerException();
  }

  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      *(result + 16 + 8 * v2++) = a2;
    }

    while (v2 < *(result + 8));
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v9 = a3;
  v10 = a2;
  result = JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);
  if (v10 < v9)
  {
    v13 = v10;
    v14 = a1 + 8 * v10;
    do
    {
      result = *(a1 + 8);
      if (v13 < 0 || v13 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v13);
      }

      *(v14 + 16) = a4;
      ++v13;
      v14 += 8;
    }

    while (v9 != v13);
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithFloatArray_withFloat_(uint64_t result, float a2)
{
  if (!result)
  {
    JreThrowNullPointerException();
  }

  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      *(result + 12 + 4 * v2++) = a2;
    }

    while (v2 < *(result + 8));
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithFloatArray_withInt_withInt_withFloat_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v10 = a3;
  v11 = a2;
  result = JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);
  if (v11 < v10)
  {
    v14 = v11;
    v15 = a1 + 4 * v11;
    do
    {
      result = *(a1 + 8);
      if (v14 < 0 || v14 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v14);
      }

      *(v15 + 12) = a9;
      ++v14;
      v15 += 4;
    }

    while (v10 != v14);
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithDoubleArray_withInt_withInt_withDouble_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v10 = a3;
  v11 = a2;
  result = JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);
  if (v11 < v10)
  {
    v14 = v11;
    v15 = a1 + 8 * v11;
    do
    {
      result = *(a1 + 8);
      if (v14 < 0 || v14 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v14);
      }

      *(v15 + 16) = a9;
      ++v14;
      v15 += 8;
    }

    while (v10 != v14);
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithBooleanArray_withBoolean_(uint64_t result, char a2)
{
  if (!result)
  {
    JreThrowNullPointerException();
  }

  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      *(result + 12 + v2++) = a2;
    }

    while (v2 < *(result + 8));
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithBooleanArray_withInt_withInt_withBoolean_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v8 = a4;
  v9 = a3;
  v10 = a2;
  result = JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);
  if (v10 < v9)
  {
    v13 = v10;
    v14 = a1 + v10;
    do
    {
      result = *(a1 + 8);
      if (v13 < 0 || v13 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v13);
      }

      *(v14 + 12) = v8;
      ++v13;
      ++v14;
    }

    while (v9 != v13);
  }

  return result;
}

int *JavaUtilArrays_fillWithNSObjectArray_withId_(int *result, void *a2)
{
  if (!result)
  {
    JreThrowNullPointerException();
  }

  v2 = result;
  if (result[2] >= 1)
  {
    v4 = 0;
    do
    {
      result = IOSObjectArray_Set(v2, v4++, a2);
    }

    while (v4 < *(v2 + 8));
  }

  return result;
}

uint64_t JavaUtilArrays_fillWithNSObjectArray_withInt_withInt_withId_(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v9 = a3;
  LODWORD(v10) = a2;
  result = JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);
  if (v10 < v9)
  {
    v10 = v10;
    do
    {
      result = IOSObjectArray_Set(a1, v10++, a4);
    }

    while (v9 != v10);
  }

  return result;
}

uint64_t JavaUtilArrays_hashCodeWithByteArray_(uint64_t result)
{
  if (result)
  {
    v1 = (result + 12);
    v2 = *(result + 8);
    v3 = result + 12 + v2;
    result = 1;
    if (v1 < v3)
    {
      do
      {
        v4 = *v1++;
        result = (v4 - result + 32 * result);
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t JavaUtilArrays_hashCodeWithFloatArray_(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = (a1 + 12);
  v2 = a1 + 12 + 4 * *(a1 + 8);
  v3 = 1;
  while (v1 < v2)
  {
    v4 = *v1++;
    v3 = JavaLangFloat_floatToIntBitsWithFloat_(v4) - v3 + 32 * v3;
  }

  return v3;
}

uint64_t JavaUtilArrays_hashCodeWithDoubleArray_(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = (a1 + 16);
  v2 = a1 + 16 + 8 * *(a1 + 8);
  v3 = 1;
  while (v1 < v2)
  {
    v4 = *v1++;
    v5 = JavaLangDouble_doubleToLongBitsWithDouble_(v4);
    v3 = (HIDWORD(v5) ^ v5) - v3 + 32 * v3;
  }

  return v3;
}

uint64_t JavaUtilArrays_hashCodeWithNSObjectArray_(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = (a1 + 24);
  v2 = a1 + 24 + 8 * *(a1 + 8);
  v3 = 1;
  while (v1 < v2)
  {
    v5 = *v1++;
    v4 = v5;
    if (v5)
    {
      LODWORD(v4) = [v4 hash];
    }

    v3 = (v4 - v3 + 32 * v3);
  }

  return v3;
}

uint64_t JavaUtilArrays_deepHashCodeWithNSObjectArray_(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = (a1 + 24);
  v2 = a1 + 24 + 8 * *(a1 + 8);
  v3 = 1;
  while (v1 < v2)
  {
    v4 = *v1++;
    v3 = sub_10017B124(v4) - v3 + 32 * v3;
  }

  return v3;
}

uint64_t sub_10017B124(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [objc_msgSend(result "getClass")];
  if (!v2)
  {
    return [v1 hash];
  }

  v3 = v2;
  v4 = NSObject_class_();
  if ([IOSClass_arrayType(v4 1u)])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return JavaUtilArrays_deepHashCodeWithNSObjectArray_(v1);
    }

LABEL_59:
    JreThrowClassCastException();
  }

  if (v3 == +[IOSClass intClass])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_59;
    }

    v8 = v1 + 3;
    v9 = &v1[v1[2] + 3];
    if ((v1 + 3) < v9)
    {
      LODWORD(result) = 1;
      do
      {
        v10 = *v8++;
        result = (v10 - result + 32 * result);
      }

      while (v8 < v9);
      return result;
    }

    return 1;
  }

  if (v3 == +[IOSClass charClass])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_59;
    }

    v11 = (v1 + 3);
    v12 = v1 + 2 * v1[2] + 12;
    if ((v1 + 3) < v12)
    {
      LODWORD(result) = 1;
      do
      {
        v13 = *v11++;
        result = (v13 - result + 32 * result);
      }

      while (v11 < v12);
      return result;
    }

    return 1;
  }

  if (v3 == +[IOSClass BOOLeanClass])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_59;
    }

    v14 = (v1 + 3);
    v15 = v1[2];
    if (v1 + 3 < (v1 + v15 + 12))
    {
      LODWORD(result) = 1;
      do
      {
        if (*v14++)
        {
          v17 = 1231;
        }

        else
        {
          v17 = 1237;
        }

        result = (v17 - result + 32 * result);
        --v15;
      }

      while (v15);
      return result;
    }

    return 1;
  }

  if (v3 == +[IOSClass byteClass])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_59;
    }

    v18 = (v1 + 3);
    v19 = v1[2];
    if (v1 + 3 < (v1 + v19 + 12))
    {
      LODWORD(result) = 1;
      do
      {
        v20 = *v18++;
        result = (v20 - result + 32 * result);
        --v19;
      }

      while (v19);
      return result;
    }

    return 1;
  }

  if (v3 == +[IOSClass longClass])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_59;
    }

    v21 = (v1 + 4);
    v22 = &v1[2 * v1[2] + 4];
    if ((v1 + 4) < v22)
    {
      LODWORD(result) = 1;
      do
      {
        v23 = *v21++;
        result = (HIDWORD(v23) ^ v23) - result + 32 * result;
      }

      while (v21 < v22);
      return result;
    }

    return 1;
  }

  if (v3 == +[IOSClass floatClass])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_59;
    }

    return JavaUtilArrays_hashCodeWithFloatArray_(v1);
  }

  else
  {
    if (v3 != +[IOSClass doubleClass])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_59;
      }

      v5 = (v1 + 3);
      v6 = v1 + 2 * v1[2] + 12;
      if ((v1 + 3) < v6)
      {
        LODWORD(result) = 1;
        do
        {
          v7 = *v5++;
          result = (v7 - result + 32 * result);
        }

        while (v5 < v6);
        return result;
      }

      return 1;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_59;
    }

    return JavaUtilArrays_hashCodeWithDoubleArray_(v1);
  }
}

uint64_t JavaUtilArrays_equalsWithByteArray_withByteArray_(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v3 = *(a1 + 8);
  if (v3 != *(a2 + 8))
  {
    return 0;
  }

  if (v3 < 1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = *(a1 + 12 + v4);
    v6 = *(a2 + 8);
    if (v4 >= v6)
    {
      v8 = *(a1 + 12 + v4);
      IOSArray_throwOutOfBoundsWithMsg(v6, v4);
    }

    v2 = v5 == *(a2 + 12 + v4);
    if (v5 != *(a2 + 12 + v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(a1 + 8));
  return v2;
}

uint64_t JavaUtilArrays_equalsWithShortArray_withShortArray_(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v3 = *(a1 + 8);
  if (v3 != *(a2 + 8))
  {
    return 0;
  }

  if (v3 < 1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = *(a1 + 12 + 2 * v4);
    v6 = *(a2 + 8);
    if (v4 >= v6)
    {
      v8 = *(a1 + 12 + 2 * v4);
      IOSArray_throwOutOfBoundsWithMsg(v6, v4);
    }

    v2 = v5 == *(a2 + 12 + 2 * v4);
    if (v5 != *(a2 + 12 + 2 * v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(a1 + 8));
  return v2;
}

uint64_t JavaUtilArrays_equalsWithCharArray_withCharArray_(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v3 = *(a1 + 8);
  if (v3 != *(a2 + 8))
  {
    return 0;
  }

  if (v3 < 1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = *(a1 + 12 + 2 * v4);
    v6 = *(a2 + 8);
    if (v4 >= v6)
    {
      v8 = *(a1 + 12 + 2 * v4);
      IOSArray_throwOutOfBoundsWithMsg(v6, v4);
    }

    v2 = v5 == *(a2 + 12 + 2 * v4);
    if (v5 != *(a2 + 12 + 2 * v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(a1 + 8));
  return v2;
}

uint64_t JavaUtilArrays_equalsWithIntArray_withIntArray_(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v3 = *(a1 + 8);
  if (v3 != *(a2 + 8))
  {
    return 0;
  }

  if (v3 < 1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = *(a1 + 12 + 4 * v4);
    v6 = *(a2 + 8);
    if (v4 >= v6)
    {
      v8 = *(a1 + 12 + 4 * v4);
      IOSArray_throwOutOfBoundsWithMsg(v6, v4);
    }

    v2 = v5 == *(a2 + 12 + 4 * v4);
    if (v5 != *(a2 + 12 + 4 * v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(a1 + 8));
  return v2;
}

uint64_t JavaUtilArrays_equalsWithLongArray_withLongArray_(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v3 = *(a1 + 8);
  if (v3 != *(a2 + 8))
  {
    return 0;
  }

  if (v3 < 1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = *(a1 + 16 + 8 * v4);
    v6 = *(a2 + 8);
    if (v4 >= v6)
    {
      v8 = *(a1 + 16 + 8 * v4);
      IOSArray_throwOutOfBoundsWithMsg(v6, v4);
    }

    v2 = v5 == *(a2 + 16 + 8 * v4);
    if (v5 != *(a2 + 16 + 8 * v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(a1 + 8));
  return v2;
}

uint64_t JavaUtilArrays_equalsWithFloatArray_withFloatArray_(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 8);
    if (v5 == *(a2 + 8))
    {
      if (v5 < 1)
      {
        return 1;
      }

      else
      {
        v6 = 0;
        do
        {
          v7 = JavaLangFloat_floatToIntBitsWithFloat_(*(a1 + 12 + 4 * v6));
          v8 = *(a2 + 8);
          if (v6 >= v8)
          {
            IOSArray_throwOutOfBoundsWithMsg(v8, v6);
          }

          v9 = v7 == JavaLangFloat_floatToIntBitsWithFloat_(*(a2 + 12 + 4 * v6));
          result = v9;
          if (!v9)
          {
            break;
          }

          ++v6;
        }

        while (v6 < *(a1 + 8));
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t JavaUtilArrays_equalsWithDoubleArray_withDoubleArray_(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 8);
    if (v5 == *(a2 + 8))
    {
      if (v5 < 1)
      {
        return 1;
      }

      else
      {
        v6 = 0;
        do
        {
          v7 = JavaLangDouble_doubleToLongBitsWithDouble_(*(a1 + 16 + 8 * v6));
          v8 = *(a2 + 8);
          if (v6 >= v8)
          {
            IOSArray_throwOutOfBoundsWithMsg(v8, v6);
          }

          v9 = v7 == JavaLangDouble_doubleToLongBitsWithDouble_(*(a2 + 16 + 8 * v6));
          result = v9;
          if (!v9)
          {
            break;
          }

          ++v6;
        }

        while (v6 < *(a1 + 8));
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t JavaUtilArrays_equalsWithBooleanArray_withBooleanArray_(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v3 = *(a1 + 8);
  if (v3 != *(a2 + 8))
  {
    return 0;
  }

  if (v3 < 1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = *(a1 + 12 + v4);
    v6 = *(a2 + 8);
    if (v4 >= v6)
    {
      v8 = *(a1 + 12 + v4);
      IOSArray_throwOutOfBoundsWithMsg(v6, v4);
    }

    v2 = v5 == *(a2 + 12 + v4);
    if (v5 != *(a2 + 12 + v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(a1 + 8));
  return v2;
}

uint64_t JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 8);
    if (v5 == *(a2 + 8))
    {
      if (v5 >= 1)
      {
        v6 = 0;
        do
        {
          v7 = *(a1 + 24 + 8 * v6);
          v8 = *(a2 + 8);
          if (v6 >= v8)
          {
            v10 = *(a1 + 24 + 8 * v6);
            IOSArray_throwOutOfBoundsWithMsg(v8, v6);
          }

          v9 = *(a2 + 24 + 8 * v6);
          if (v7)
          {
            result = [v7 isEqual:v9];
            if (!result)
            {
              return result;
            }
          }

          else if (v9)
          {
            return 0;
          }

          ++v6;
        }

        while (v6 < *(a1 + 8));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t JavaUtilArrays_deepEqualsWithNSObjectArray_withNSObjectArray_(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 8);
    if (v5 == *(a2 + 8))
    {
      if (v5 < 1)
      {
        return 1;
      }

      else
      {
        v6 = 0;
        do
        {
          v7 = *(a2 + 8);
          if (v6 >= v7)
          {
            v8 = *(a1 + 24 + 8 * v6);
            IOSArray_throwOutOfBoundsWithMsg(v7, v6);
          }

          result = sub_10017BF9C(*(a1 + 24 + 8 * v6), *(a2 + 24 + 8 * v6));
          if ((result & 1) == 0)
          {
            break;
          }

          ++v6;
        }

        while (v6 < *(a1 + 8));
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10017BF9C(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = [objc_msgSend(a1 "getClass")];
    if (v5 != [objc_msgSend(a2 "getClass")])
    {
      return 0;
    }

    if (v5)
    {
      v6 = NSObject_class_();
      if ([IOSClass_arrayType(v6 1u)])
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

LABEL_65:
        JreThrowClassCastException();
      }

      if (v5 == +[IOSClass intClass])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        return JavaUtilArrays_equalsWithIntArray_withIntArray_(a1, a2);
      }

      else if (v5 == +[IOSClass charClass])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        return JavaUtilArrays_equalsWithCharArray_withCharArray_(a1, a2);
      }

      else if (v5 == +[IOSClass BOOLeanClass])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        return JavaUtilArrays_equalsWithBooleanArray_withBooleanArray_(a1, a2);
      }

      else if (v5 == +[IOSClass byteClass])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        return JavaUtilArrays_equalsWithByteArray_withByteArray_(a1, a2);
      }

      else if (v5 == +[IOSClass longClass])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        return JavaUtilArrays_equalsWithLongArray_withLongArray_(a1, a2);
      }

      else if (v5 == +[IOSClass floatClass])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        return JavaUtilArrays_equalsWithFloatArray_withFloatArray_(a1, a2);
      }

      else if (v5 == +[IOSClass doubleClass])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        return JavaUtilArrays_equalsWithDoubleArray_withDoubleArray_(a1, a2);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_65;
        }

        return JavaUtilArrays_equalsWithShortArray_withShortArray_(a1, a2);
      }
    }

    else
    {

      return [a1 isEqual:a2];
    }
  }

  return result;
}

uint64_t JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(uint64_t result, int a2, int a3)
{
  v3 = result - a2 < a3 || result < a2;
  if (v3 || (a3 | a2) < 0)
  {
    v4 = new_JavaLangArrayIndexOutOfBoundsException_initWithInt_withInt_withInt_();
    objc_exception_throw(v4);
  }

  return result;
}

uint64_t JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > a3)
  {
    v8 = JreStrcat("$I$I", a2, a3, a4, a5, a6, a7, a8, @"start > end: ");
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    goto LABEL_7;
  }

  if ((a2 & 0x80000000) != 0 || a3 > result)
  {
    v10 = JreStrcat("$I$I$I", a2, a3, a4, a5, a6, a7, a8, @"start < 0 || end > len. start=");
    v9 = new_JavaLangArrayIndexOutOfBoundsException_initWithNSString_(v10);
LABEL_7:
    objc_exception_throw(v9);
  }

  return result;
}

const __CFString *JavaUtilArrays_toStringWithBooleanArray_(uint64_t a1)
{
  if (!a1)
  {
    return @"null";
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return @"[]";
  }

  v3 = new_JavaLangStringBuilder_initWithInt_(7 * v2);
  [(JavaLangStringBuilder *)v3 appendWithChar:91];
  v4 = *(a1 + 8);
  if (v4 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  [(JavaLangStringBuilder *)v3 appendWithBoolean:*(a1 + 12)];
  if (*(a1 + 8) > 1)
  {
    v5 = 1;
    do
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
      v6 = *(a1 + 8);
      if (v5 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v5);
      }

      [(JavaLangStringBuilder *)v3 appendWithBoolean:*(a1 + 12 + v5++)];
    }

    while (v5 < *(a1 + 8));
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:93];

  return [(JavaLangStringBuilder *)v3 description];
}

const __CFString *JavaUtilArrays_toStringWithByteArray_(uint64_t a1)
{
  if (!a1)
  {
    return @"null";
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return @"[]";
  }

  v3 = new_JavaLangStringBuilder_initWithInt_(6 * v2);
  [(JavaLangStringBuilder *)v3 appendWithChar:91];
  v4 = *(a1 + 8);
  if (v4 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  [(JavaLangStringBuilder *)v3 appendWithInt:*(a1 + 12)];
  if (*(a1 + 8) > 1)
  {
    v5 = 1;
    do
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
      v6 = *(a1 + 8);
      if (v5 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v5);
      }

      [(JavaLangStringBuilder *)v3 appendWithInt:*(a1 + 12 + v5++)];
    }

    while (v5 < *(a1 + 8));
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:93];

  return [(JavaLangStringBuilder *)v3 description];
}

const __CFString *JavaUtilArrays_toStringWithCharArray_(uint64_t a1)
{
  if (!a1)
  {
    return @"null";
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return @"[]";
  }

  v3 = new_JavaLangStringBuilder_initWithInt_(3 * v2);
  [(JavaLangStringBuilder *)v3 appendWithChar:91];
  v4 = *(a1 + 8);
  if (v4 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:*(a1 + 12)];
  if (*(a1 + 8) > 1)
  {
    v5 = 1;
    do
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
      v6 = *(a1 + 8);
      if (v5 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v5);
      }

      [(JavaLangStringBuilder *)v3 appendWithChar:*(a1 + 12 + 2 * v5++)];
    }

    while (v5 < *(a1 + 8));
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:93];

  return [(JavaLangStringBuilder *)v3 description];
}

const __CFString *JavaUtilArrays_toStringWithDoubleArray_(uint64_t a1)
{
  if (!a1)
  {
    return @"null";
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return @"[]";
  }

  v3 = new_JavaLangStringBuilder_initWithInt_(7 * v2);
  [(JavaLangStringBuilder *)v3 appendWithChar:91];
  v4 = *(a1 + 8);
  if (v4 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  [(JavaLangStringBuilder *)v3 appendWithDouble:*(a1 + 16)];
  if (*(a1 + 8) > 1)
  {
    v5 = 1;
    do
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
      v6 = *(a1 + 8);
      if (v5 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v5);
      }

      [(JavaLangStringBuilder *)v3 appendWithDouble:*(a1 + 16 + 8 * v5++)];
    }

    while (v5 < *(a1 + 8));
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:93];

  return [(JavaLangStringBuilder *)v3 description];
}

const __CFString *JavaUtilArrays_toStringWithFloatArray_(uint64_t a1)
{
  if (!a1)
  {
    return @"null";
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return @"[]";
  }

  v3 = new_JavaLangStringBuilder_initWithInt_(7 * v2);
  [(JavaLangStringBuilder *)v3 appendWithChar:91];
  v5 = *(a1 + 8);
  if (v5 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, 0);
  }

  LODWORD(v4) = *(a1 + 12);
  [(JavaLangStringBuilder *)v3 appendWithFloat:v4];
  if (*(a1 + 8) > 1)
  {
    v6 = 1;
    do
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
      v8 = *(a1 + 8);
      if (v6 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v6);
      }

      LODWORD(v7) = *(a1 + 12 + 4 * v6);
      [(JavaLangStringBuilder *)v3 appendWithFloat:v7];
      ++v6;
    }

    while (v6 < *(a1 + 8));
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:93];

  return [(JavaLangStringBuilder *)v3 description];
}

const __CFString *JavaUtilArrays_toStringWithIntArray_(uint64_t a1)
{
  if (!a1)
  {
    return @"null";
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return @"[]";
  }

  v3 = new_JavaLangStringBuilder_initWithInt_(6 * v2);
  [(JavaLangStringBuilder *)v3 appendWithChar:91];
  v4 = *(a1 + 8);
  if (v4 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  [(JavaLangStringBuilder *)v3 appendWithInt:*(a1 + 12)];
  if (*(a1 + 8) > 1)
  {
    v5 = 1;
    do
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
      v6 = *(a1 + 8);
      if (v5 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v5);
      }

      [(JavaLangStringBuilder *)v3 appendWithInt:*(a1 + 12 + 4 * v5++)];
    }

    while (v5 < *(a1 + 8));
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:93];

  return [(JavaLangStringBuilder *)v3 description];
}

const __CFString *JavaUtilArrays_toStringWithLongArray_(uint64_t a1)
{
  if (!a1)
  {
    return @"null";
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return @"[]";
  }

  v3 = new_JavaLangStringBuilder_initWithInt_(6 * v2);
  [(JavaLangStringBuilder *)v3 appendWithChar:91];
  v4 = *(a1 + 8);
  if (v4 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  [(JavaLangStringBuilder *)v3 appendWithLong:*(a1 + 16)];
  if (*(a1 + 8) > 1)
  {
    v5 = 1;
    do
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
      v6 = *(a1 + 8);
      if (v5 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v5);
      }

      [(JavaLangStringBuilder *)v3 appendWithLong:*(a1 + 16 + 8 * v5++)];
    }

    while (v5 < *(a1 + 8));
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:93];

  return [(JavaLangStringBuilder *)v3 description];
}

const __CFString *JavaUtilArrays_toStringWithShortArray_(uint64_t a1)
{
  if (!a1)
  {
    return @"null";
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return @"[]";
  }

  v3 = new_JavaLangStringBuilder_initWithInt_(6 * v2);
  [(JavaLangStringBuilder *)v3 appendWithChar:91];
  v4 = *(a1 + 8);
  if (v4 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  [(JavaLangStringBuilder *)v3 appendWithInt:*(a1 + 12)];
  if (*(a1 + 8) > 1)
  {
    v5 = 1;
    do
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
      v6 = *(a1 + 8);
      if (v5 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v5);
      }

      [(JavaLangStringBuilder *)v3 appendWithInt:*(a1 + 12 + 2 * v5++)];
    }

    while (v5 < *(a1 + 8));
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:93];

  return [(JavaLangStringBuilder *)v3 description];
}

const __CFString *JavaUtilArrays_toStringWithNSObjectArray_(uint64_t a1)
{
  if (!a1)
  {
    return @"null";
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return @"[]";
  }

  v3 = new_JavaLangStringBuilder_initWithInt_(7 * v2);
  [(JavaLangStringBuilder *)v3 appendWithChar:91];
  v4 = *(a1 + 8);
  if (v4 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  [(JavaLangStringBuilder *)v3 appendWithId:*(a1 + 24)];
  if (*(a1 + 8) > 1)
  {
    v5 = 1;
    do
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
      v6 = *(a1 + 8);
      if (v5 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v5);
      }

      [(JavaLangStringBuilder *)v3 appendWithId:*(a1 + 24 + 8 * v5++)];
    }

    while (v5 < *(a1 + 8));
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:93];

  return [(JavaLangStringBuilder *)v3 description];
}

const __CFString *JavaUtilArrays_deepToStringWithNSObjectArray_(uint64_t a1)
{
  if (!a1)
  {
    return @"null";
  }

  v2 = new_JavaLangStringBuilder_initWithInt_(9 * *(a1 + 8));
  v5 = a1;
  v3 = [IOSObjectArray arrayWithObjects:&v5 count:1 type:NSObject_class_()];
  sub_10017D2D4(a1, v3, v2);
  return [(JavaLangStringBuilder *)v2 description];
}

id sub_10017D2D4(uint64_t a1, char *a2, void *a3)
{
  v3 = a3;
  if (!a1)
  {
    if (a3)
    {

      return [a3 appendWithNSString:@"null"];
    }

LABEL_61:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_61;
  }

  v5 = a1;
  [a3 appendWithChar:91];
  v6 = &OBJC_IVAR___IOSArray_size_;
  LODWORD(v7) = 8;
  if (*(v5 + 8) >= 1)
  {
    v8 = 0;
    v9 = &OBJC_IVAR___IOSObjectArray_buffer_;
    v10 = @"null";
    p_vtable = JavaNetURLConnection.vtable;
    v39 = v5;
    while (1)
    {
      if (v8)
      {
        [v3 appendWithNSString:{@", "}];
        LODWORD(v7) = *v6;
      }

      v12 = *(v5 + v7);
      if (v8 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v8);
      }

      v13 = v5 + *v9;
      v14 = *(v13 + 8 * v8);
      if (!v14)
      {
        break;
      }

      v15 = [*(v13 + 8 * v8) getClass];
      if (![v15 isArray])
      {
        v21 = *(v5 + *v6);
        if (v8 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, v8);
        }

        [v3 appendWithId:*(v5 + *v9 + 8 * v8)];
        goto LABEL_50;
      }

      v16 = [v15 getComponentType];
      if (!v16)
      {
        goto LABEL_61;
      }

      v17 = v16;
      if ([v16 isPrimitive])
      {
        if ([objc_msgSend(p_vtable + 67 "BOOLeanClass")])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_62;
          }

          v18 = JavaUtilArrays_toStringWithBooleanArray_(v14);
        }

        else if ([objc_msgSend(p_vtable + 67 "byteClass")])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_62;
          }

          v18 = JavaUtilArrays_toStringWithByteArray_(v14);
        }

        else if ([objc_msgSend(p_vtable + 67 "charClass")])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_62;
          }

          v18 = JavaUtilArrays_toStringWithCharArray_(v14);
        }

        else if ([objc_msgSend(p_vtable + 67 "doubleClass")])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_62;
          }

          v18 = JavaUtilArrays_toStringWithDoubleArray_(v14);
        }

        else if ([objc_msgSend(p_vtable + 67 "floatClass")])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_62;
          }

          v18 = JavaUtilArrays_toStringWithFloatArray_(v14);
        }

        else if ([objc_msgSend(p_vtable + 67 "intClass")])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_62;
          }

          v18 = JavaUtilArrays_toStringWithIntArray_(v14);
        }

        else if ([objc_msgSend(p_vtable + 67 "longClass")])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_62;
          }

          v18 = JavaUtilArrays_toStringWithLongArray_(v14);
        }

        else
        {
          if (![objc_msgSend(p_vtable + 67 "shortClass")])
          {
            v38 = new_JavaLangAssertionError_init();
            objc_exception_throw(v38);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_62:
            JreThrowClassCastException();
          }

          v18 = JavaUtilArrays_toStringWithShortArray_(v14);
        }

        v20 = v18;
        v19 = v3;
        goto LABEL_49;
      }

      if (a2)
      {
        v22 = *&a2[*v6];
        if (v22)
        {
          v23 = &a2[*v9];
          v24 = &v23[v22];
          do
          {
            if (v23 >= v24)
            {
              goto LABEL_24;
            }

            v25 = *v23++;
          }

          while (v25 != v14);
          v19 = v3;
          v20 = @"[...]";
          goto LABEL_49;
        }
      }

LABEL_24:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_62;
      }

      if (!a2)
      {
        goto LABEL_61;
      }

      v26 = *&a2[*v6] + 1;
      v27 = v3;
      v28 = v6;
      v29 = a2;
      v30 = v9;
      v31 = p_vtable;
      v32 = v10;
      v33 = v26;
      v34 = NSObject_class_();
      v35 = v33;
      v10 = v32;
      p_vtable = v31;
      v9 = v30;
      a2 = v29;
      v6 = v28;
      v3 = v27;
      v5 = v39;
      v36 = [IOSObjectArray arrayWithLength:v35 type:v34];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a2, 0, v36, 0, *&a2[*v6]);
      IOSObjectArray_Set(v36, *&a2[*v6], v14);
      sub_10017D2D4(v14, v36, v3);
LABEL_50:
      ++v8;
      v7 = *v6;
      if (v8 >= *(v5 + v7))
      {
        goto LABEL_54;
      }
    }

    v19 = v3;
    v20 = v10;
LABEL_49:
    [v19 appendWithNSString:v20];
    goto LABEL_50;
  }

LABEL_54:

  return [v3 appendWithChar:93];
}

IOSBooleanArray *JavaUtilArrays_copyOfWithBooleanArray_withInt_(_DWORD *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v4 = JavaLangInteger_toStringWithInt_(a2);
    v5 = new_JavaLangNegativeArraySizeException_initWithNSString_(v4);
    objc_exception_throw(v5);
  }

  return JavaUtilArrays_copyOfRangeWithBooleanArray_withInt_withInt_(a1, 0, a2);
}

IOSByteArray *JavaUtilArrays_copyOfWithByteArray_withInt_(_DWORD *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v4 = JavaLangInteger_toStringWithInt_(a2);
    v5 = new_JavaLangNegativeArraySizeException_initWithNSString_(v4);
    objc_exception_throw(v5);
  }

  return JavaUtilArrays_copyOfRangeWithByteArray_withInt_withInt_(a1, 0, a2);
}

IOSCharArray *JavaUtilArrays_copyOfWithCharArray_withInt_(_DWORD *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v4 = JavaLangInteger_toStringWithInt_(a2);
    v5 = new_JavaLangNegativeArraySizeException_initWithNSString_(v4);
    objc_exception_throw(v5);
  }

  return JavaUtilArrays_copyOfRangeWithCharArray_withInt_withInt_(a1, 0, a2);
}

IOSDoubleArray *JavaUtilArrays_copyOfWithDoubleArray_withInt_(_DWORD *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v4 = JavaLangInteger_toStringWithInt_(a2);
    v5 = new_JavaLangNegativeArraySizeException_initWithNSString_(v4);
    objc_exception_throw(v5);
  }

  return JavaUtilArrays_copyOfRangeWithDoubleArray_withInt_withInt_(a1, 0, a2);
}

IOSFloatArray *JavaUtilArrays_copyOfWithFloatArray_withInt_(_DWORD *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v4 = JavaLangInteger_toStringWithInt_(a2);
    v5 = new_JavaLangNegativeArraySizeException_initWithNSString_(v4);
    objc_exception_throw(v5);
  }

  return JavaUtilArrays_copyOfRangeWithFloatArray_withInt_withInt_(a1, 0, a2);
}

IOSIntArray *JavaUtilArrays_copyOfWithIntArray_withInt_(_DWORD *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v4 = JavaLangInteger_toStringWithInt_(a2);
    v5 = new_JavaLangNegativeArraySizeException_initWithNSString_(v4);
    objc_exception_throw(v5);
  }

  return JavaUtilArrays_copyOfRangeWithIntArray_withInt_withInt_(a1, 0, a2);
}

IOSLongArray *JavaUtilArrays_copyOfWithLongArray_withInt_(_DWORD *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v4 = JavaLangInteger_toStringWithInt_(a2);
    v5 = new_JavaLangNegativeArraySizeException_initWithNSString_(v4);
    objc_exception_throw(v5);
  }

  return JavaUtilArrays_copyOfRangeWithLongArray_withInt_withInt_(a1, 0, a2);
}

IOSShortArray *JavaUtilArrays_copyOfWithShortArray_withInt_(_DWORD *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v4 = JavaLangInteger_toStringWithInt_(a2);
    v5 = new_JavaLangNegativeArraySizeException_initWithNSString_(v4);
    objc_exception_throw(v5);
  }

  return JavaUtilArrays_copyOfRangeWithShortArray_withInt_withInt_(a1, 0, a2);
}

IOSObjectArray *JavaUtilArrays_copyOfWithNSObjectArray_withInt_(_DWORD *a1, unsigned int a2)
{
  if (!a1)
  {
    v3 = new_JavaLangNullPointerException_initWithNSString_(@"original == null");
    goto LABEL_8;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v4 = JavaLangInteger_toStringWithInt_(a2);
    v3 = new_JavaLangNegativeArraySizeException_initWithNSString_(v4);
LABEL_8:
    objc_exception_throw(v3);
  }

  return JavaUtilArrays_copyOfRangeWithNSObjectArray_withInt_withInt_(a1, 0, a2);
}

IOSObjectArray *JavaUtilArrays_copyOfWithNSObjectArray_withInt_withIOSClass_(_DWORD *a1, unsigned int a2, void *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    v5 = JavaLangInteger_toStringWithInt_(a2);
    v6 = new_JavaLangNegativeArraySizeException_initWithNSString_(v5);
    objc_exception_throw(v6);
  }

  return JavaUtilArrays_copyOfRangeWithNSObjectArray_withInt_withInt_withIOSClass_(a1, 0, a2, a3);
}

IOSBooleanArray *JavaUtilArrays_copyOfRangeWithBooleanArray_withInt_withInt_(_DWORD *a1, uint64_t a2, int a3)
{
  v3 = (a3 - a2);
  if (a3 < a2)
  {
    v11 = new_JavaLangIllegalArgumentException_init();
    goto LABEL_9;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((a2 & 0x80000000) != 0 || (v6 = a1[2], v7 = v6 - a2, v6 < a2))
  {
    v11 = new_JavaLangArrayIndexOutOfBoundsException_init();
LABEL_9:
    objc_exception_throw(v11);
  }

  v8 = JavaLangMath_minWithInt_withInt_(v3, v7);
  v9 = [IOSBooleanArray arrayWithLength:v3];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a1, a2, v9, 0, v8);
  return v9;
}

IOSByteArray *JavaUtilArrays_copyOfRangeWithByteArray_withInt_withInt_(_DWORD *a1, uint64_t a2, int a3)
{
  v3 = (a3 - a2);
  if (a3 < a2)
  {
    v11 = new_JavaLangIllegalArgumentException_init();
    goto LABEL_9;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((a2 & 0x80000000) != 0 || (v6 = a1[2], v7 = v6 - a2, v6 < a2))
  {
    v11 = new_JavaLangArrayIndexOutOfBoundsException_init();
LABEL_9:
    objc_exception_throw(v11);
  }

  v8 = JavaLangMath_minWithInt_withInt_(v3, v7);
  v9 = [IOSByteArray arrayWithLength:v3];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a1, a2, v9, 0, v8);
  return v9;
}

IOSCharArray *JavaUtilArrays_copyOfRangeWithCharArray_withInt_withInt_(_DWORD *a1, uint64_t a2, int a3)
{
  v3 = (a3 - a2);
  if (a3 < a2)
  {
    v11 = new_JavaLangIllegalArgumentException_init();
    goto LABEL_9;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((a2 & 0x80000000) != 0 || (v6 = a1[2], v7 = v6 - a2, v6 < a2))
  {
    v11 = new_JavaLangArrayIndexOutOfBoundsException_init();
LABEL_9:
    objc_exception_throw(v11);
  }

  v8 = JavaLangMath_minWithInt_withInt_(v3, v7);
  v9 = [IOSCharArray arrayWithLength:v3];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a1, a2, v9, 0, v8);
  return v9;
}

IOSDoubleArray *JavaUtilArrays_copyOfRangeWithDoubleArray_withInt_withInt_(_DWORD *a1, uint64_t a2, int a3)
{
  v3 = (a3 - a2);
  if (a3 < a2)
  {
    v11 = new_JavaLangIllegalArgumentException_init();
    goto LABEL_9;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((a2 & 0x80000000) != 0 || (v6 = a1[2], v7 = v6 - a2, v6 < a2))
  {
    v11 = new_JavaLangArrayIndexOutOfBoundsException_init();
LABEL_9:
    objc_exception_throw(v11);
  }

  v8 = JavaLangMath_minWithInt_withInt_(v3, v7);
  v9 = [IOSDoubleArray arrayWithLength:v3];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a1, a2, v9, 0, v8);
  return v9;
}

IOSFloatArray *JavaUtilArrays_copyOfRangeWithFloatArray_withInt_withInt_(_DWORD *a1, uint64_t a2, int a3)
{
  v3 = (a3 - a2);
  if (a3 < a2)
  {
    v11 = new_JavaLangIllegalArgumentException_init();
    goto LABEL_9;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((a2 & 0x80000000) != 0 || (v6 = a1[2], v7 = v6 - a2, v6 < a2))
  {
    v11 = new_JavaLangArrayIndexOutOfBoundsException_init();
LABEL_9:
    objc_exception_throw(v11);
  }

  v8 = JavaLangMath_minWithInt_withInt_(v3, v7);
  v9 = [IOSFloatArray arrayWithLength:v3];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a1, a2, v9, 0, v8);
  return v9;
}

IOSIntArray *JavaUtilArrays_copyOfRangeWithIntArray_withInt_withInt_(_DWORD *a1, uint64_t a2, int a3)
{
  v3 = (a3 - a2);
  if (a3 < a2)
  {
    v11 = new_JavaLangIllegalArgumentException_init();
    goto LABEL_9;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((a2 & 0x80000000) != 0 || (v6 = a1[2], v7 = v6 - a2, v6 < a2))
  {
    v11 = new_JavaLangArrayIndexOutOfBoundsException_init();
LABEL_9:
    objc_exception_throw(v11);
  }

  v8 = JavaLangMath_minWithInt_withInt_(v3, v7);
  v9 = [IOSIntArray arrayWithLength:v3];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a1, a2, v9, 0, v8);
  return v9;
}

IOSLongArray *JavaUtilArrays_copyOfRangeWithLongArray_withInt_withInt_(_DWORD *a1, uint64_t a2, int a3)
{
  v3 = (a3 - a2);
  if (a3 < a2)
  {
    v11 = new_JavaLangIllegalArgumentException_init();
    goto LABEL_9;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((a2 & 0x80000000) != 0 || (v6 = a1[2], v7 = v6 - a2, v6 < a2))
  {
    v11 = new_JavaLangArrayIndexOutOfBoundsException_init();
LABEL_9:
    objc_exception_throw(v11);
  }

  v8 = JavaLangMath_minWithInt_withInt_(v3, v7);
  v9 = [IOSLongArray arrayWithLength:v3];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a1, a2, v9, 0, v8);
  return v9;
}

IOSShortArray *JavaUtilArrays_copyOfRangeWithShortArray_withInt_withInt_(_DWORD *a1, uint64_t a2, int a3)
{
  v3 = (a3 - a2);
  if (a3 < a2)
  {
    v11 = new_JavaLangIllegalArgumentException_init();
    goto LABEL_9;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((a2 & 0x80000000) != 0 || (v6 = a1[2], v7 = v6 - a2, v6 < a2))
  {
    v11 = new_JavaLangArrayIndexOutOfBoundsException_init();
LABEL_9:
    objc_exception_throw(v11);
  }

  v8 = JavaLangMath_minWithInt_withInt_(v3, v7);
  v9 = [IOSShortArray arrayWithLength:v3];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a1, a2, v9, 0, v8);
  return v9;
}

IOSObjectArray *JavaUtilArrays_copyOfRangeWithNSObjectArray_withInt_withInt_(_DWORD *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = (a3 - a2);
  if (a3 < a2)
  {
    v11 = new_JavaLangIllegalArgumentException_init();
    goto LABEL_12;
  }

  if ((a2 & 0x80000000) != 0 || (v6 = a1[2], v7 = v6 - a2, v6 < a2))
  {
    v11 = new_JavaLangArrayIndexOutOfBoundsException_init();
LABEL_12:
    objc_exception_throw(v11);
  }

  v8 = JavaLangMath_minWithInt_withInt_(v4, v7);
  v9 = JavaLangReflectArray_newInstanceWithIOSClass_withInt_([objc_msgSend(a1 "getClass")], v4);
  objc_opt_class();
  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a1, a2, v9, 0, v8);
  return v9;
}

IOSObjectArray *JavaUtilArrays_copyOfRangeWithNSObjectArray_withInt_withInt_withIOSClass_(_DWORD *a1, uint64_t a2, int a3, void *a4)
{
  v4 = (a3 - a2);
  if (a3 < a2)
  {
    v14 = new_JavaLangIllegalArgumentException_init();
    goto LABEL_13;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x80000000) != 0 || (v7 = a1[2], v8 = v7 - a2, v7 < a2))
  {
    v14 = new_JavaLangArrayIndexOutOfBoundsException_init();
LABEL_13:
    objc_exception_throw(v14);
  }

  v10 = JavaLangMath_minWithInt_withInt_(v4, v8);
  if (!a4)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v11 = v10;
  v12 = JavaLangReflectArray_newInstanceWithIOSClass_withInt_([a4 getComponentType], v4);
  objc_opt_class();
  if (v12 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a1, a2, v12, 0, v11);
  return v12;
}

id sub_10017E31C(uint64_t a1, void *a2)
{
  JavaUtilAbstractList_init(a1, a2);
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"storage == null");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 16), a2);
}

id JavaLangBoolean_getBooleanWithNSString_(void *a1)
{
  if (atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      return 0;
    }
  }

  else
  {
    sub_100129828();
    if (!a1)
    {
      return 0;
    }
  }

  if (![a1 length])
  {
    return 0;
  }

  PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(a1);
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  return [@"true" equalsIgnoreCase:PropertyWithNSString];
}

id JavaLangBoolean_parseBooleanWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  return [@"true" equalsIgnoreCase:a1];
}

const __CFString *JavaLangBoolean_toStringWithBoolean_(int a1)
{
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  return NSString_valueOfBool_(a1);
}

uint64_t JavaLangBoolean_valueOfWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  v2 = [@"true" equalsIgnoreCase:a1];
  v3 = &JavaLangBoolean_TRUE__;
  if (!v2)
  {
    v3 = &JavaLangBoolean_FALSE__;
  }

  return *v3;
}

uint64_t JavaLangBoolean_valueOfWithBoolean_(int a1)
{
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  v2 = &JavaLangBoolean_TRUE__;
  if (!a1)
  {
    v2 = &JavaLangBoolean_FALSE__;
  }

  return *v2;
}

uint64_t JavaLangBoolean_class_()
{
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  if (qword_100554B50 != -1)
  {
    sub_10017EFC0();
  }

  return qword_100554B48;
}

JavaUtilConcurrentAtomicAtomicInteger *new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(unsigned int a1)
{
  result = [JavaUtilConcurrentAtomicAtomicInteger alloc];
  atomic_store(a1, &result->value_);
  return result;
}

JavaNioChannelsNonReadableChannelException *new_JavaNioChannelsNonReadableChannelException_init()
{
  v0 = [JavaNioChannelsNonReadableChannelException alloc];
  JavaLangIllegalStateException_init(v0, v1);
  return v0;
}

id JavaLangClassLoader_getSystemResourceWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaLangSystemClassLoader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10017FFBC();
  }

  v2 = JavaLangSystemClassLoader_loader_;
  if (!JavaLangSystemClassLoader_loader_)
  {
    JreThrowNullPointerException();
  }

  return [v2 getResourceWithNSString:a1];
}

id JavaLangClassLoader_getSystemResourcesWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaLangSystemClassLoader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10017FFBC();
  }

  v2 = JavaLangSystemClassLoader_loader_;
  if (!JavaLangSystemClassLoader_loader_)
  {
    JreThrowNullPointerException();
  }

  return [v2 getResourcesWithNSString:a1];
}

id JavaLangClassLoader_getSystemResourceAsStreamWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaLangSystemClassLoader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10017FFBC();
  }

  v2 = JavaLangSystemClassLoader_loader_;
  if (!JavaLangSystemClassLoader_loader_)
  {
    JreThrowNullPointerException();
  }

  return [v2 getResourceAsStreamWithNSString:a1];
}

id JavaLangClassLoader_init(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaLangSystemClassLoader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10017FFBC();
  }

  v2 = JavaLangSystemClassLoader_loader_;

  return JavaLangClassLoader_initWithJavaLangClassLoader_withBoolean_(a1, v2, 0);
}

id JavaLangClassLoader_initWithJavaLangClassLoader_withBoolean_(uint64_t a1, void *a2, char a3)
{
  v6 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 16), v6);
  if (!a2 && (a3 & 1) == 0)
  {
    v8 = new_JavaLangNullPointerException_initWithNSString_(@"parentLoader == null && !nullAllowed");
    objc_exception_throw(v8);
  }

  return JreStrongAssign((a1 + 8), a2);
}

id sub_10017F598(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaLangSystemClassLoader__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!JavaLangSystemClassLoader_loader_)
  {
    JreThrowNullPointerException();
  }

  return [JavaLangSystemClassLoader_loader_ findClassWithNSString:a1];
}

void sub_10017F5F4(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x10017F5D0);
}

JavaLangTwoEnumerationsInOne *new_JavaLangTwoEnumerationsInOne_initWithJavaUtilEnumeration_withJavaUtilEnumeration_(void *a1, void *a2)
{
  v4 = [JavaLangTwoEnumerationsInOne alloc];
  JreStrongAssign(&v4->first_, a1);
  JreStrongAssign(&v4->second_, a2);
  return v4;
}

uint64_t JavaLangClassLoader_getSystemClassLoader()
{
  if ((atomic_load_explicit(&JavaLangSystemClassLoader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10017FFBC();
  }

  return JavaLangSystemClassLoader_loader_;
}

JavaLangSystemClassLoader *new_JavaLangSystemClassLoader_init()
{
  v0 = [JavaLangSystemClassLoader alloc];
  v1 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(&v0->super.packages_, v1);
  JreStrongAssign(&v0->super.parent_, 0);
  return v0;
}

uint64_t sub_100180000(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = v2 - 1;
  if (v2 - 1 >= -1)
  {
    v3 = -1;
  }

  v4 = v2 + 1;
  v5 = v2 - 1;
  while (1)
  {
    v6 = (v4 - 2);
    if (v4 - 2 < 0)
    {
      break;
    }

    v7 = *(v1 + 8);
    if (!v7)
    {
      JreThrowNullPointerException();
    }

    result = *(v7 + 8);
    if (result <= v6)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, v6);
    }

    v8 = *(v7 + 16 + 8 * (v5 & 0x7FFFFFFF));
    --v4;
    --v5;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  v4 = v3 + 1;
LABEL_11:
  *(v1 + 16) = v4;
  return result;
}

id JavaUtilBitSet_initWithInt_(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v5 = JavaLangInteger_toStringWithInt_(a2);
    v6 = new_JavaLangNegativeArraySizeException_initWithNSString_(v5);
    objc_exception_throw(v6);
  }

  v3 = sub_100180204(a2);
  result = JreStrongAssign((a1 + 8), v3);
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1001801A0(uint64_t a1, _DWORD *a2)
{
  JreStrongAssign((a1 + 8), a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 16) = a2[2];

  return sub_100180000(a1);
}

IOSLongArray *sub_100180204(int a1)
{
  if ((atomic_load_explicit(JavaUtilBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100182988();
  }

  v2 = a1 + 63;
  if (a1 + 63 < 0)
  {
    v2 = a1 + 126;
  }

  return [IOSLongArray arrayWithLength:v2 >> 6];
}

char *sub_100180478(char *result, uint64_t a2)
{
  v3 = (result + 8);
  v2 = *(result + 1);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v4 = *(v2 + 8);
  if (v4 < a2)
  {
    v5 = result;
    v6 = [IOSLongArray arrayWithLength:JavaLangMath_maxWithInt_withInt_(a2, 2 * v4)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v5[1], 0, v6, 0, *(v5 + 4));

    return JreStrongAssign(v3, v6);
  }

  return result;
}

uint64_t sub_100180690(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((result & 0x80000000) != 0)
  {
    v8 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"index < 0: ");
    v9 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  return result;
}

uint64_t sub_100180990(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < result || ((a2 | result) & 0x80000000) != 0)
  {
    v8 = JreStrcat("$I$I", a2, a3, a4, a5, a6, a7, a8, @"fromIndex=");
    v9 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  return result;
}

JavaUtilBitSet *new_JavaUtilBitSet_initWithInt_(unsigned int a1)
{
  v2 = [JavaUtilBitSet alloc];
  JavaUtilBitSet_initWithInt_(v2, a1);
  return v2;
}

JavaUtilBitSet *JavaUtilBitSet_valueOfWithLongArray_(void *a1)
{
  if (atomic_load_explicit(JavaUtilBitSet__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_100182988();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = [a1 clone];
  v3 = [JavaUtilBitSet alloc];
  sub_1001801A0(v3, v2);

  return v3;
}

JavaUtilBitSet *JavaUtilBitSet_valueOfWithJavaNioLongBuffer_(void *a1)
{
  if (atomic_load_explicit(JavaUtilBitSet__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  sub_100182988();
  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = +[IOSLongArray arrayWithLength:](IOSLongArray, "arrayWithLength:", [a1 remaining]);
  if (v2->super.size_ >= 1)
  {
    v3 = 0;
    do
    {
      v4 = [a1 getWithInt:{v3 + objc_msgSend(a1, "position")}];
      size = v2->super.size_;
      if (v3 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v3);
      }

      v2->buffer_[v3++] = v4;
    }

    while (v3 < v2->super.size_);
  }

  return JavaUtilBitSet_valueOfWithLongArray_(v2);
}

JavaUtilBitSet *JavaUtilBitSet_valueOfWithByteArray_(unsigned int *a1)
{
  if ((atomic_load_explicit(JavaUtilBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100182988();
  }

  v2 = JavaNioByteBuffer_wrapWithByteArray_(a1);

  return JavaUtilBitSet_valueOfWithJavaNioByteBuffer_(v2);
}

JavaUtilBitSet *JavaUtilBitSet_valueOfWithJavaNioByteBuffer_(void *a1)
{
  if (atomic_load_explicit(JavaUtilBitSet__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_100182988();
    if (!a1)
    {
      goto LABEL_28;
    }
  }

  v2 = [a1 slice];
  if (!v2)
  {
    goto LABEL_28;
  }

  v3 = v2;
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  v4 = [v3 orderWithJavaNioByteOrder:JavaNioByteOrder_LITTLE_ENDIAN__];
  if (!v4)
  {
LABEL_28:
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = sub_100180204(8 * [v4 remaining]);
  v7 = [v5 remaining];
  if (v7 >= dword_100554B58)
  {
    v8 = 0;
    while (1)
    {
      v14 = [v5 getLong];
      if (!v6)
      {
        goto LABEL_28;
      }

      v15 = v14;
      size = v6->super.size_;
      if ((v8 & 0x80000000) != 0 || v8 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v8);
      }

      v6->buffer_[v8] = v15;
      v17 = [v5 remaining];
      v8 = (v8 + 1);
      if (v17 < dword_100554B58)
      {
        goto LABEL_9;
      }
    }
  }

  v8 = 0;
LABEL_9:
  if ([v5 hasRemaining])
  {
    v9 = 0;
    do
    {
      v10 = [v5 get];
      if (!v6)
      {
        goto LABEL_28;
      }

      v11 = v10;
      v12 = v6->super.size_;
      if ((v8 & 0x80000000) != 0 || v8 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v8);
      }

      v6->buffer_[v8] |= v11 << (v9 & 0x38);
      v9 += 8;
    }

    while (([v5 hasRemaining] & 1) != 0);
  }

  return JavaUtilBitSet_valueOfWithLongArray_(v6);
}

JavaUtilBitSet *new_JavaUtilBitSet_init()
{
  v0 = [JavaUtilBitSet alloc];
  sub_1001801A0(v0, [IOSLongArray arrayWithLength:1]);
  return v0;
}

uint64_t JavaLangReflectGenericArrayType_class_()
{
  if (qword_100554B68 != -1)
  {
    sub_100182A00();
  }

  return qword_100554B60;
}

id JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 8), [a2 getKey]);
  v4 = [a2 getValue];

  return JreStrongAssign((a1 + 16), v4);
}

JavaUtilAbstractMap_SimpleImmutableEntry *new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(void *a1)
{
  v2 = [JavaUtilAbstractMap_SimpleImmutableEntry alloc];
  JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(v2, a1);
  return v2;
}

id JavaUtilAbstractMap_SimpleEntry_initWithJavaUtilMap_Entry_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 8), [a2 getKey]);
  v4 = [a2 getValue];

  return JreStrongAssign((a1 + 16), v4);
}

id sub_100183C58(uint64_t a1, uint64_t a2)
{
  v3 = [objc_loadWeak((a2 + 8)) entrySet];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = [v3 iterator];

  return JreStrongAssign((a1 + 8), v4);
}

id sub_100183F44(uint64_t a1, uint64_t a2)
{
  v3 = [objc_loadWeak((a2 + 8)) entrySet];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = [v3 iterator];

  return JreStrongAssign((a1 + 8), v4);
}

JavaNetConnectException *new_JavaNetConnectException_initWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaNetConnectException alloc];
  JavaNetSocketException_initWithNSString_withJavaLangThrowable_(v4, a1, a2);
  return v4;
}

id JavaUtilLocale_initWithNSString_withNSString_withNSString_(id *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || !a3 || !a4)
  {
    v17 = JreStrcat("$$$$$$", a2, a3, a4, a5, a6, a7, a8, @"language=");
    v18 = new_JavaLangNullPointerException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  if ([a2 isEmpty] && objc_msgSend(a3, "isEmpty"))
  {
    JreStrongAssign(a1 + 2, &stru_100484358);
    v12 = a1 + 1;
    v13 = &stru_100484358;
    goto LABEL_16;
  }

  JreStrongAssign(a1 + 2, [a2 lowercaseStringWithJRELocale:JavaUtilLocale_US_]);
  v14 = a1[2];
  if (!v14)
  {
    JreThrowNullPointerException();
  }

  if ([v14 isEqual:@"he"])
  {
    v15 = @"iw";
LABEL_14:
    JreStrongAssign(a1 + 2, v15);
    goto LABEL_15;
  }

  if ([a1[2] isEqual:@"id"])
  {
    v15 = @"in";
    goto LABEL_14;
  }

  if ([a1[2] isEqual:@"yi"])
  {
    v15 = @"ji";
    goto LABEL_14;
  }

LABEL_15:
  v13 = [a3 uppercaseStringWithJRELocale:JavaUtilLocale_US_];
  v12 = a1 + 1;
LABEL_16:
  JreStrongAssign(v12, v13);

  return JreStrongAssign(a1 + 3, a4);
}

const __CFString *sub_100184A34(void *a1, void *a2, void *a3)
{
  if (atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_1000458CC();
    if (!a1)
    {
      goto LABEL_19;
    }
  }

  if (![a1 length])
  {
    if (!a2)
    {
      goto LABEL_19;
    }

    if (![a2 length])
    {
      return &stru_100484358;
    }
  }

  v6 = new_JavaLangStringBuilder_initWithInt_(0xBu);
  [(JavaLangStringBuilder *)v6 appendWithNSString:a1];
  if (!a2)
  {
    goto LABEL_19;
  }

  if ([a2 length] <= 0)
  {
    if (!a3)
    {
      goto LABEL_19;
    }

    if ([a3 length] <= 0)
    {
      [(JavaLangStringBuilder *)v6 appendWithNSString:a2];
      goto LABEL_11;
    }
  }

  [(JavaLangStringBuilder *)v6 appendWithChar:95];
  [(JavaLangStringBuilder *)v6 appendWithNSString:a2];
  if (!a3)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

LABEL_11:
  if ([a3 length] >= 1)
  {
    [(JavaLangStringBuilder *)v6 appendWithChar:95];
  }

  [(JavaLangStringBuilder *)v6 appendWithNSString:a3];

  return [(JavaLangStringBuilder *)v6 description];
}

void *sub_100184E70(void *a1)
{
  v3 = *(v1 + 8);
  if (!v3)
  {
    goto LABEL_6;
  }

  if ([v3 isEmpty])
  {
    return a1;
  }

  if (!a1)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  if ([a1 isEmpty])
  {
    v12 = JreStrcat("$@", v4, v5, v6, v7, v8, v9, v10, @"No 3-letter country code for locale: ");
    v20 = JreStrcat("$@", v13, v14, v15, v16, v17, v18, v19, @"FormatData_");
    v21 = new_JavaUtilMissingResourceException_initWithNSString_withNSString_withNSString_(v12, v20, @"ShortCountry");
    objc_exception_throw(v21);
  }

  return a1;
}

void *sub_100184F24(void *a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_6;
  }

  if ([v3 isEmpty])
  {
    return a1;
  }

  if (!a1)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  if ([a1 isEmpty])
  {
    v12 = JreStrcat("$@", v4, v5, v6, v7, v8, v9, v10, @"No 3-letter language code for locale: ");
    v20 = JreStrcat("$@", v13, v14, v15, v16, v17, v18, v19, @"FormatData_");
    v21 = new_JavaUtilMissingResourceException_initWithNSString_withNSString_withNSString_(v12, v20, @"ShortLanguage");
    objc_exception_throw(v21);
  }

  return a1;
}

uint64_t JavaUtilLocale_setDefaultWithJavaUtilLocale_(void *a1)
{
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  v2 = JavaUtilLocale_class_();
  objc_sync_enter(v2);
  if (!a1)
  {
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"locale == null");
    objc_exception_throw(v4);
  }

  JreStrongAssign(&qword_100554B70, a1);

  return objc_sync_exit(v2);
}

JavaUtilLocale *sub_1001855D0(void *a1, void *a2)
{
  v4 = [JavaUtilLocale alloc];
  JreStrongAssign(&v4->languageCode_, a1);
  JreStrongAssign(&v4->countryCode_, a2);
  JreStrongAssign(&v4->variantCode_, &stru_100484358);
  return v4;
}

JavaUtilLocale *new_JavaUtilLocale_initWithNSString_withNSString_withNSString_(void *a1, void *a2, void *a3)
{
  v6 = [JavaUtilLocale alloc];
  JavaUtilLocale_initWithNSString_withNSString_withNSString_(&v6->super.isa, a1, a2, a3, v7, v8, v9, v10);
  return v6;
}

JavaUtilLocale *new_JavaUtilLocale_initWithNSString_(void *a1)
{
  v2 = [JavaUtilLocale alloc];
  JavaUtilLocale_initWithNSString_withNSString_withNSString_(&v2->super.isa, a1, &stru_100484358, &stru_100484358, v3, v4, v5, v6);
  return v2;
}

JavaUtilLocale *new_JavaUtilLocale_initWithNSString_withNSString_(void *a1, void *a2)
{
  v4 = [JavaUtilLocale alloc];
  JavaUtilLocale_initWithNSString_withNSString_withNSString_(&v4->super.isa, a1, a2, &stru_100484358, v5, v6, v7, v8);
  return v4;
}

uint64_t JavaUtilLocale_getDefault()
{
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  return qword_100554B70;
}

uint64_t JavaUtilLocale_class_()
{
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  if (qword_100554B80 != -1)
  {
    sub_1001857E4();
  }

  return qword_100554B78;
}

JavaLangNegativeArraySizeException *new_JavaLangNegativeArraySizeException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangNegativeArraySizeException alloc];
  JavaLangRuntimeException_initWithNSString_(v2, a1);
  return v2;
}

void sub_100185FB0(void *a1)
{
  objc_begin_catch(a1);
  v2 = *(v1 + 8);
  objc_end_catch();
  JUMPOUT(0x100185F90);
}

LibcoreReflectGenericArrayTypeImpl *new_LibcoreReflectGenericArrayTypeImpl_initWithJavaLangReflectType_(void *a1)
{
  v2 = [LibcoreReflectGenericArrayTypeImpl alloc];
  JreStrongAssign(&v2->componentType_, a1);
  return v2;
}

id IOSArray_NewArrayWithDimensions(void *a1, uint64_t a2, int *a3)
{
  if (!a2)
  {
    objc_exception_throw([[JavaLangAssertionError alloc] initWithId:@"invalid dimension count"]);
  }

  __chkstk_darwin();
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v7[v8];
  *(v9 - 1) = v10;
  if (v8 - 2 >= 0)
  {
    v11 = a2 - 1;
    v12 = (v9 - 1);
    do
    {
      if (*v12)
      {
        v13 = IOSClass_arrayOf(*v12);
      }

      else
      {
        v13 = [a1 iosClass];
      }

      *--v12 = v13;
      --v11;
    }

    while (v11 > 0);
  }

  return sub_10018625C(a1, a2, a3, v7);
}

id sub_10018625C(id a1, uint64_t a2, int *a3, id *a4)
{
  v4 = a1;
  v5 = *a3;
  v6 = *a4;
  v7 = a2 - 1;
  if (a2 == 1)
  {
    if (!v6)
    {
LABEL_9:

      return [a1 newArrayWithLength:v5];
    }

    if ([*a4 isPrimitive])
    {
      a1 = [v6 objcArrayClass];
      goto LABEL_9;
    }

    return [IOSObjectArray newArrayWithLength:v5 type:v6];
  }

  else
  {
    v10 = v5;
    __chkstk_darwin();
    v12 = (v11 + 15) & 0xFFFFFFFF0;
    v13 = &v16 - v12;
    if (v5 >= 1)
    {
      v14 = (&v16 - v12);
      do
      {
        *v14++ = sub_10018625C(v4, v7, a3 + 1, a4 + 1);
        --v10;
      }

      while (v10);
    }

    return [IOSObjectArray newArrayWithObjects:v13 count:v5 type:v6];
  }
}

id JavaLangThreadLocal_init(unint64_t a1)
{
  v2 = new_JavaLangRefWeakReference_initWithId_(a1);
  JreStrongAssignAndConsume((a1 + 8), v2);
  if (!qword_100554B98)
  {
    JreThrowNullPointerException();
  }

  result = [qword_100554B98 getAndAddWithInt:3281063054];
  *(a1 + 16) = result;
  return result;
}

JavaLangThreadLocal *new_JavaLangThreadLocal_init()
{
  v0 = [JavaLangThreadLocal alloc];
  JavaLangThreadLocal_init(v0);
  return v0;
}

double JavaLangThreadLocal_Values_init(uint64_t a1)
{
  v2 = [IOSObjectArray newArrayWithLength:32 type:NSObject_class_()];
  JreStrongAssignAndConsume((a1 + 8), v2);
  *(a1 + 16) = *(*(a1 + 8) + 8) - 1;
  result = 0.0;
  *(a1 + 20) = xmmword_100314A50;
  return result;
}

uint64_t JavaLangThreadLocal_Values_initWithJavaLangThreadLocal_Values_(uint64_t a1, uint64_t a2)
{
  if (!a2 || (v4 = *(a2 + 8)) == 0)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 8), [v4 clone]);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  return sub_100186C44(a1, a2);
}

uint64_t sub_100186C44(uint64_t result, uint64_t a2)
{
  v15 = result;
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_24:
    JreThrowNullPointerException();
  }

  v3 = *(v2 + 8);
  v4 = (v3 - 2);
  if (v3 - 2 >= 0)
  {
    v6 = (v3 - 1);
    do
    {
      result = *(v2 + 8);
      if (v4 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v4);
      }

      v7 = *(v2 + 24 + 8 * v4);
      if (v7)
      {
        v8 = v7 == qword_100554BA0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        v9 = [v7 get];
        if (v9)
        {
          if (!a2)
          {
            goto LABEL_24;
          }

          v10 = *(a2 + 8);
          if (!v10)
          {
            goto LABEL_24;
          }

          v11 = v9;
          v12 = *(v10 + 8);
          if ((v6 & 0x80000000) != 0 || v6 >= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v12, v6);
          }

          result = IOSObjectArray_Set(v2, v6, [v11 childValueWithId:*(v10 + 24 + 8 * v6)]);
        }

        else
        {
          IOSObjectArray_Set(v2, v4, qword_100554BA0);
          IOSObjectArray_Set(v2, v6, 0);
          if (!a2)
          {
            goto LABEL_24;
          }

          v13 = *(a2 + 8);
          if (!v13)
          {
            goto LABEL_24;
          }

          IOSObjectArray_Set(v13, v4, qword_100554BA0);
          result = IOSObjectArray_Set(*(a2 + 8), v6, 0);
          ++*(v15 + 24);
          ++*(a2 + 24);
          --*(v15 + 20);
          --*(a2 + 20);
        }
      }

      v6 = (v6 - 2);
      v14 = v4 > 1;
      v4 -= 2;
    }

    while (v14);
  }

  return result;
}

void *sub_100186E30(uint64_t a1, int a2)
{
  v3 = 2 * a2;
  v4 = [IOSObjectArray newArrayWithLength:2 * a2 type:NSObject_class_()];
  result = JreStrongAssignAndConsume((a1 + 8), v4);
  *(a1 + 16) = *(*(a1 + 8) + 8) - 1;
  *(a1 + 28) = (v3 / 3);
  return result;
}

uint64_t sub_100186EC4(uint64_t a1)
{
  result = sub_10018701C(a1);
  if ((result & 1) == 0 && *(a1 + 20))
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    v4 = *(a1 + 32);
    v5 = *(v3 + 8);
    if (v5 >= 1)
    {
      do
      {
        v6 = v4;
        result = *(v3 + 8);
        if (v4 < 0 || v4 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v4);
        }

        v7 = *(v3 + 24 + 8 * v4);
        if (v7)
        {
          v8 = v7 == qword_100554BA0;
        }

        else
        {
          v8 = 1;
        }

        if (!v8)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            JreThrowClassCastException();
          }

          result = [v7 get];
          if (!result)
          {
            IOSObjectArray_Set(v3, v6, qword_100554BA0);
            result = IOSObjectArray_Set(v3, v6 + 1, 0);
            *(a1 + 20) = vadd_s32(*(a1 + 20), 0x1FFFFFFFFLL);
          }
        }

        v4 = *(a1 + 16) & (v6 + 2);
        v9 = v5 >= 2;
        v5 = v5 >> 1;
      }

      while (v9);
    }

    *(a1 + 32) = v4;
  }

  return result;
}

BOOL sub_10018701C(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = v1 + *(a1 + 24);
  v3 = *(a1 + 28);
  if (v2 >= v3)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      JreThrowNullPointerException();
    }

    v6 = *(v5 + 8);
    if (v1 <= v6 >> 2)
    {
      v7 = v6 >> 1;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    sub_100186E30(a1, v7);
    *(a1 + 24) = 0;
    if (*(a1 + 20))
    {
      v8 = *(v5 + 8);
      v9 = (v8 - 2);
      if (v8 - 2 >= 0)
      {
        v10 = (v8 - 1);
        do
        {
          v11 = *(v5 + 8);
          if (v9 >= v11)
          {
            IOSArray_throwOutOfBoundsWithMsg(v11, v9);
          }

          v12 = *(v5 + 24 + 8 * v9);
          if (v12)
          {
            v13 = v12 == qword_100554BA0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              JreThrowClassCastException();
            }

            v14 = [v12 get];
            if (v14)
            {
              v15 = v14;
              v16 = *(v5 + 8);
              if ((v10 & 0x80000000) != 0 || v10 >= v16)
              {
                IOSArray_throwOutOfBoundsWithMsg(v16, v10);
              }

              [a1 addWithJavaLangThreadLocal:v15 withId:*(v5 + 24 + 8 * v10)];
            }

            else
            {
              --*(a1 + 20);
            }
          }

          v10 = (v10 - 2);
          v17 = v9 > 1;
          v9 -= 2;
        }

        while (v17);
      }
    }
  }

  return v2 >= v3;
}

JavaNioChannelsNoConnectionPendingException *new_JavaNioChannelsNoConnectionPendingException_init()
{
  v0 = [JavaNioChannelsNoConnectionPendingException alloc];
  JavaLangIllegalStateException_init(v0, v1);
  return v0;
}

JavaUtilNoSuchElementException *new_JavaUtilNoSuchElementException_init()
{
  v0 = [JavaUtilNoSuchElementException alloc];
  JavaLangRuntimeException_init(v0, v1);
  return v0;
}

id JavaNioCharsetCharsetEncoder_initWithJavaNioCharsetCharset_withFloat_withFloat_withByteArray_(uint64_t a1, void *a2, void *a3, float a4, float a5)
{
  if (a4 <= 0.0 || a5 <= 0.0)
  {
    v10 = @"averageBytesPerChar and maxBytesPerChar must both be positive";
    goto LABEL_13;
  }

  if (a4 > a5)
  {
    v10 = @"averageBytesPerChar is greater than maxBytesPerChar";
LABEL_13:
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a4;
  *(a1 + 20) = a5;
  *(a1 + 32) = 4;
  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  JreStrongAssign((a1 + 40), JavaNioCharsetCodingErrorAction_REPORT_);
  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  JreStrongAssign((a1 + 48), JavaNioCharsetCodingErrorAction_REPORT_);

  return JreStrongAssign((a1 + 24), a3);
}

uint64_t sub_100187B90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if ((v4 - 3) > 1)
  {
    if (v4)
    {
      v9 = new_JavaLangIllegalStateException_initWithNSString_(@"encoding already in progress");
      objc_exception_throw(v9);
    }
  }

  else
  {
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  sub_100187E34(a1, JavaNioCharsetCodingErrorAction_REPORT_);
  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  [sub_100187E80(a1 JavaNioCharsetCodingErrorAction:"encodeWithJavaNioCharBuffer:" REPORT:a2)];
  v7 = sub_100187E34(a1, v6);
  sub_100187E80(v7, v5);
  return 1;
}

uint64_t sub_100187E34(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v4 = new_JavaLangIllegalArgumentException_initWithNSString_(@"newAction == null");
    objc_exception_throw(v4);
  }

  JreStrongAssign((a1 + 40), a2);
  return a1;
}

uint64_t sub_100187E80(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v4 = new_JavaLangIllegalArgumentException_initWithNSString_(@"newAction == null");
    objc_exception_throw(v4);
  }

  JreStrongAssign((a1 + 48), a2);
  return a1;
}

JavaTextParsePosition *new_JavaTextParsePosition_initWithInt_(int a1)
{
  result = [JavaTextParsePosition alloc];
  result->currentPosition_ = a1;
  result->errorIndex_ = -1;
  return result;
}

JavaBeansIndexedPropertyChangeEvent *new_JavaBeansIndexedPropertyChangeEvent_initWithId_withNSString_withId_withId_withInt_(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v10 = [JavaBeansIndexedPropertyChangeEvent alloc];
  JavaBeansPropertyChangeEvent_initWithId_withNSString_withId_withId_(&v10->super.super.super.isa, a1, a2, a3, a4);
  v10->index_ = a5;
  return v10;
}

id JavaIoFileInputStream_initWithJavaIoFile_(uint64_t a1, void *a2)
{
  JavaIoInputStream_init();
  v4 = DalvikSystemCloseGuard_get();
  JreStrongAssign((a1 + 32), v4);
  if (!a2)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"file == null");
    objc_exception_throw(v7);
  }

  v5 = LibcoreIoIoBridge_openWithNSString_withInt_([a2 getAbsolutePath], 0);
  JreStrongAssign((a1 + 8), v5);
  *(a1 + 16) = 1;
  v6 = *(a1 + 32);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  return [v6 openWithNSString:@"close"];
}

id JavaIoFileInputStream_initWithJavaIoFileDescriptor_(uint64_t a1, void *a2)
{
  JavaIoInputStream_init(a1, a2);
  v4 = DalvikSystemCloseGuard_get();
  JreStrongAssign((a1 + 32), v4);
  if (!a2)
  {
    v6 = new_JavaLangNullPointerException_initWithNSString_(@"fd == null");
    objc_exception_throw(v6);
  }

  result = JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = 0;
  return result;
}

JavaIoFileInputStream *new_JavaIoFileInputStream_initWithJavaIoFile_(void *a1)
{
  v2 = [JavaIoFileInputStream alloc];
  JavaIoFileInputStream_initWithJavaIoFile_(v2, a1);
  return v2;
}

JavaIoFileInputStream *new_JavaIoFileInputStream_initWithJavaIoFileDescriptor_(void *a1)
{
  v2 = [JavaIoFileInputStream alloc];
  JavaIoFileInputStream_initWithJavaIoFileDescriptor_(v2, a1);
  return v2;
}

JavaIoFileInputStream *new_JavaIoFileInputStream_initWithNSString_(void *a1)
{
  v2 = [JavaIoFileInputStream alloc];
  v3 = new_JavaIoFile_initWithNSString_(a1);
  JavaIoFileInputStream_initWithJavaIoFile_(v2, v3);
  return v2;
}

LibcoreUtilMutableInt *new_LibcoreUtilMutableInt_initWithInt_(int a1)
{
  result = [LibcoreUtilMutableInt alloc];
  result->value_ = a1;
  return result;
}

id sub_100188938(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(LibcoreNetMimeUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10018A8D8();
  }

  if (!qword_100554BA8)
  {
    goto LABEL_10;
  }

  if (([qword_100554BA8 containsKeyWithId:a1] & 1) == 0)
  {
    [qword_100554BA8 putWithId:a1 withId:a2];
  }

  v4 = qword_100554BB0;
  if (!qword_100554BB0)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  return [v4 putWithId:a2 withId:a1];
}

id LibcoreNetMimeUtils_hasMimeTypeWithNSString_(void *a1)
{
  if (atomic_load_explicit(LibcoreNetMimeUtils__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      return 0;
    }
  }

  else
  {
    sub_10018A8D8();
    if (!a1)
    {
      return 0;
    }
  }

  if ([a1 isEmpty])
  {
    return 0;
  }

  v3 = qword_100554BA8;
  if (!qword_100554BA8)
  {
    JreThrowNullPointerException();
  }

  return [v3 containsKeyWithId:a1];
}

id LibcoreNetMimeUtils_guessMimeTypeFromExtensionWithNSString_(void *a1)
{
  if (atomic_load_explicit(LibcoreNetMimeUtils__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      return 0;
    }
  }

  else
  {
    sub_10018A8D8();
    if (!a1)
    {
      return 0;
    }
  }

  if ([a1 isEmpty])
  {
    return 0;
  }

  v3 = qword_100554BB0;
  if (!qword_100554BB0)
  {
    JreThrowNullPointerException();
  }

  return [v3 getWithId:a1];
}

id LibcoreNetMimeUtils_hasExtensionWithNSString_(void *a1)
{
  if (atomic_load_explicit(LibcoreNetMimeUtils__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      return 0;
    }
  }

  else
  {
    sub_10018A8D8();
    if (!a1)
    {
      return 0;
    }
  }

  if ([a1 isEmpty])
  {
    return 0;
  }

  v3 = qword_100554BB0;
  if (!qword_100554BB0)
  {
    JreThrowNullPointerException();
  }

  return [v3 containsKeyWithId:a1];
}

id LibcoreNetMimeUtils_guessExtensionFromMimeTypeWithNSString_(void *a1)
{
  if (atomic_load_explicit(LibcoreNetMimeUtils__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      return 0;
    }
  }

  else
  {
    sub_10018A8D8();
    if (!a1)
    {
      return 0;
    }
  }

  if ([a1 isEmpty])
  {
    return 0;
  }

  v3 = qword_100554BA8;
  if (!qword_100554BA8)
  {
    JreThrowNullPointerException();
  }

  return [v3 getWithId:a1];
}

void sub_10018A894(_Unwind_Exception *a1, int a2)
{
  objc_end_catch();
  if (a2 == 2)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x10018A850);
  }

  _Unwind_Resume(a1);
}

void sub_10018A8D0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x10018A80CLL);
}

__CFString *LibcoreIoOsConstants_gaiNameWithInt_(int a1)
{
  if ((a1 - 2) > 0xC)
  {
    return 0;
  }

  else
  {
    return off_10040B848[a1 - 2];
  }
}

__CFString *LibcoreIoOsConstants_errnoNameWithInt_(int a1)
{
  if ((a1 - 1) > 0x65)
  {
    return 0;
  }

  else
  {
    return off_10040B8B0[a1 - 1];
  }
}

JavaUtilEmptyStackException *new_JavaUtilEmptyStackException_init()
{
  v0 = [JavaUtilEmptyStackException alloc];
  JavaLangRuntimeException_init(v0, v1);
  return v0;
}

uint64_t JavaUtilDualPivotQuicksort_sortWithIntArray_(uint64_t a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = (*(a1 + 8) - 1);

  return sub_10018AB98(a1, 0, v2);
}

uint64_t JavaUtilDualPivotQuicksort_sortWithIntArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v8 = a3;
  JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);

  return sub_10018AB98(a1, a2, (v8 - 1));
}

uint64_t sub_10018AB98(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a3 - a2 + 1 > 31)
  {

    return sub_10018ADAC(result, a2, a3);
  }

  else
  {
    v4 = (a2 + 1);
    if (v4 <= a3)
    {
      if (!result)
      {
        JreThrowNullPointerException();
      }

      v5 = a2;
      do
      {
        v6 = v4;
        v7 = v4;
        v8 = *(v3 + 8);
        if ((v4 & 0x80000000) != 0 || v4 >= v8)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, v4);
        }

        v9 = *(v3 + 12 + 4 * v4);
        while (v5 >= a2)
        {
          v10 = *(v3 + 8);
          if ((v5 & 0x80000000) != 0 || v5 >= v10)
          {
            IOSArray_throwOutOfBoundsWithMsg(v10, v5);
          }

          v11 = *(v3 + 12 + 4 * v5);
          if (v9 >= v11)
          {
            break;
          }

          v12 = *(v3 + 8);
          if ((v5 & 0x80000000) != 0 || v5 >= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v12, v5);
          }

          v13 = v5 + 1;
          if (v5 + 1 < 0 || v13 >= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v12, v13);
          }

          *(v3 + 12 + 4 * v13) = v11;
          v5 = (v5 - 1);
        }

        result = *(v3 + 8);
        v14 = v5 + 1;
        if (v5 + 1 < 0 || v14 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v14);
        }

        *(v3 + 12 + 4 * v14) = v9;
        v4 = (v7 + 1);
        v5 = v6;
      }

      while (v4 <= a3);
    }
  }

  return result;
}

uint64_t sub_10018ADAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = (a3 - a2 + 1) / 6;
  v5 = (v4 + a2);
  v6 = (a3 + a2) >> 1;
  v7 = (v6 - v4);
  v8 = *(a1 + 8);
  if ((v5 & 0x80000000) != 0 || v5 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (v4 + a2));
  }

  v9 = v4 + ((a3 + a2) >> 1);
  v10 = *(a1 + 12 + 4 * v5);
  if ((v7 & 0x80000000) != 0 || v7 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (v6 - v4));
  }

  v11 = (a3 - v4);
  v12 = *(a1 + 12 + 4 * v7);
  v103 = a3 - v4;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  v13 = *(a1 + 12 + 4 * v6);
  if ((v9 & 0x80000000) != 0 || v9 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v9);
  }

  v14 = *(a1 + 12 + 4 * v9);
  if ((v11 & 0x80000000) != 0 || v11 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v11);
  }

  v15 = *(a1 + 12 + 4 * v11);
  if (v10 <= v12)
  {
    v16 = *(a1 + 12 + 4 * v7);
  }

  else
  {
    v16 = *(a1 + 12 + 4 * v5);
  }

  if (v10 >= v12)
  {
    v17 = *(a1 + 12 + 4 * v7);
  }

  else
  {
    v17 = *(a1 + 12 + 4 * v5);
  }

  if (v14 <= v15)
  {
    v18 = *(a1 + 12 + 4 * v11);
  }

  else
  {
    v18 = *(a1 + 12 + 4 * v9);
  }

  if (v14 < v15)
  {
    v15 = *(a1 + 12 + 4 * v9);
  }

  if (v17 <= v13)
  {
    v19 = *(a1 + 12 + 4 * v6);
  }

  else
  {
    v19 = v17;
  }

  if (v17 >= v13)
  {
    v17 = *(a1 + 12 + 4 * v6);
  }

  if (v16 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  if (v16 >= v19)
  {
    v16 = v19;
  }

  if (v17 <= v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = v17;
  }

  if (v17 >= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v17;
  }

  if (v20 <= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  if (v20 >= v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if (v16 <= v18)
  {
    v25 = v18;
  }

  else
  {
    v25 = v16;
  }

  if (v16 >= v18)
  {
    v16 = v18;
  }

  if (v16 <= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v16;
  }

  if (v16 >= v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = v16;
  }

  if (v23 <= v25)
  {
    v28 = v25;
  }

  else
  {
    v28 = v23;
  }

  if (v23 >= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v23;
  }

  if ((v5 & 0x80000000) != 0 || v5 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v5);
  }

  *(a1 + 12 + 4 * v5) = v22;
  v30 = *(a1 + 8);
  if (v6 >= v30)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, v6);
  }

  *(a1 + 12 + 4 * v6) = v26;
  v31 = *(a1 + 8);
  if ((v11 & 0x80000000) != 0 || v11 >= v31)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, v11);
  }

  *(a1 + 12 + 4 * v11) = v28;
  v32 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v32 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, a2);
  }

  if ((v7 & 0x80000000) != 0 || v7 >= v32)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, v7);
  }

  *(a1 + 12 + 4 * v7) = *(a1 + 12 + 4 * a2);
  v33 = *(a1 + 8);
  if ((a3 & 0x80000000) != 0 || v33 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, a3);
  }

  if ((v9 & 0x80000000) != 0 || v9 >= v33)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, v9);
  }

  *(a1 + 12 + 4 * v9) = *(a1 + 12 + 4 * a3);
  v34 = a2 + 1;
  v35 = a3 - 1;
  v104 = v5;
  if (v27 == v29)
  {
    if (v34 <= v35)
    {
      v36 = a2 + 1;
      v37 = a3 - 1;
      v38 = (a2 + 1);
      do
      {
        v39 = *(a1 + 8);
        if (v36 < 0 || v36 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, v36);
        }

        v40 = *(a1 + 12 + 4 * v36);
        if (v40 != v27)
        {
          if (v40 >= v27)
          {
            do
            {
              v43 = v37;
              v44 = *(a1 + 8);
              if (v37 < 0 || v37 >= v44)
              {
                IOSArray_throwOutOfBoundsWithMsg(v44, v37);
              }

              v45 = *(a1 + 12 + 4 * v37--);
            }

            while (v45 > v27);
            v46 = *(a1 + 8);
            v47 = v37 + 1;
            if ((v43 & 0x80000000) != 0 || v47 >= v46)
            {
              IOSArray_throwOutOfBoundsWithMsg(v46, (v37 + 1));
            }

            if (v45 >= v27)
            {
              v51 = *(a1 + 8);
              if (v36 < 0 || v36 >= v51)
              {
                IOSArray_throwOutOfBoundsWithMsg(v51, v36);
              }

              *(a1 + 12 + 4 * v36) = v27;
              v52 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v52)
              {
                IOSArray_throwOutOfBoundsWithMsg(v52, (v37 + 1));
              }
            }

            else
            {
              v48 = *(a1 + 8);
              if ((v38 & 0x80000000) != 0 || v38 >= v48)
              {
                IOSArray_throwOutOfBoundsWithMsg(v48, v38);
              }

              if (v36 < 0 || v36 >= v48)
              {
                IOSArray_throwOutOfBoundsWithMsg(v48, v36);
              }

              *(a1 + 12 + 4 * v36) = *(a1 + 12 + 4 * v38);
              v49 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v49)
              {
                IOSArray_throwOutOfBoundsWithMsg(v49, (v37 + 1));
              }

              if ((v38 & 0x80000000) != 0 || v38 >= v49)
              {
                IOSArray_throwOutOfBoundsWithMsg(v49, v38);
              }

              *(a1 + 12 + 4 * v38) = *(a1 + 12 + 4 * v43);
              v50 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v50)
              {
                IOSArray_throwOutOfBoundsWithMsg(v50, (v37 + 1));
              }

              v38 = (v38 + 1);
            }

            *(a1 + 12 + 4 * v43) = v40;
          }

          else
          {
            if (v36 != v38)
            {
              v41 = *(a1 + 8);
              if ((v38 & 0x80000000) != 0 || v38 >= v41)
              {
                IOSArray_throwOutOfBoundsWithMsg(v41, v38);
              }

              if (v36 < 0 || v36 >= v41)
              {
                IOSArray_throwOutOfBoundsWithMsg(v41, v36);
              }

              *(a1 + 12 + 4 * v36) = *(a1 + 12 + 4 * v38);
              v42 = *(a1 + 8);
              if ((v38 & 0x80000000) != 0 || v38 >= v42)
              {
                IOSArray_throwOutOfBoundsWithMsg(v42, v38);
              }

              *(a1 + 12 + 4 * v38) = v40;
            }

            v38 = (v38 + 1);
          }
        }

        ++v36;
        LODWORD(v53) = v38;
        v35 = v37;
      }

      while (v36 <= v37);
      goto LABEL_130;
    }

LABEL_129:
    LODWORD(v53) = a2 + 1;
    goto LABEL_130;
  }

  if (v34 > v35)
  {
    goto LABEL_129;
  }

  v66 = a2;
  v53 = (a2 + 1);
  do
  {
    v67 = v34;
    v68 = *(a1 + 8);
    if (v34 < 0 || v34 >= v68)
    {
      IOSArray_throwOutOfBoundsWithMsg(v68, v34);
    }

    v69 = *(a1 + 12 + 4 * v34);
    if (v69 >= v27)
    {
      if (v69 > v29)
      {
        while (1)
        {
          v72 = v35;
          v73 = *(a1 + 8);
          if (v35 < 0 || v35 >= v73)
          {
            IOSArray_throwOutOfBoundsWithMsg(v73, v35);
          }

          v74 = *(a1 + 12 + 4 * v35);
          if (v74 <= v29)
          {
            break;
          }

          v35 = v72 - 1;
          if (v66 == v72 - 1)
          {
            goto LABEL_130;
          }
        }

        v75 = *(a1 + 8);
        if ((v72 & 0x80000000) != 0 || v72 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, v72);
        }

        if (v74 >= v27)
        {
          v79 = *(a1 + 8);
          if ((v72 & 0x80000000) != 0 || v72 >= v79)
          {
            IOSArray_throwOutOfBoundsWithMsg(v79, v72);
          }

          if (v34 < 0 || v34 >= v79)
          {
            IOSArray_throwOutOfBoundsWithMsg(v79, v34);
          }

          *(a1 + 12 + 4 * v34) = v74;
          v80 = *(a1 + 8);
          if ((v72 & 0x80000000) != 0 || v72 >= v80)
          {
            IOSArray_throwOutOfBoundsWithMsg(v80, v72);
          }
        }

        else
        {
          v76 = *(a1 + 8);
          if ((v53 & 0x80000000) != 0 || v53 >= v76)
          {
            IOSArray_throwOutOfBoundsWithMsg(v76, v53);
          }

          if (v34 < 0 || v34 >= v76)
          {
            IOSArray_throwOutOfBoundsWithMsg(v76, v34);
          }

          *(a1 + 12 + 4 * v34) = *(a1 + 12 + 4 * v53);
          v77 = *(a1 + 8);
          if ((v72 & 0x80000000) != 0 || v72 >= v77)
          {
            IOSArray_throwOutOfBoundsWithMsg(v77, v72);
          }

          if ((v53 & 0x80000000) != 0 || v53 >= v77)
          {
            IOSArray_throwOutOfBoundsWithMsg(v77, v53);
          }

          *(a1 + 12 + 4 * v53) = *(a1 + 12 + 4 * v72);
          v78 = *(a1 + 8);
          if ((v72 & 0x80000000) != 0 || v72 >= v78)
          {
            IOSArray_throwOutOfBoundsWithMsg(v78, v72);
          }

          v53 = (v53 + 1);
        }

        v35 = v72 - 1;
        *(a1 + 12 + 4 * v72) = v69;
      }
    }

    else
    {
      if (v34 != v53)
      {
        v70 = *(a1 + 8);
        if ((v53 & 0x80000000) != 0 || v53 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, v53);
        }

        if (v34 < 0 || v34 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, v34);
        }

        *(a1 + 12 + 4 * v34) = *(a1 + 12 + 4 * v53);
        v71 = *(a1 + 8);
        if ((v53 & 0x80000000) != 0 || v53 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, v53);
        }

        *(a1 + 12 + 4 * v53) = v69;
      }

      v53 = (v53 + 1);
    }

    ++v34;
    ++v66;
  }

  while (v67 + 1 <= v35);
LABEL_130:
  v54 = *(a1 + 8);
  v55 = v53 - 1;
  v56 = v53 - 1;
  if (v53 - 1 < 0 || v55 >= v54)
  {
    IOSArray_throwOutOfBoundsWithMsg(v54, v55);
  }

  if ((a2 & 0x80000000) != 0 || v54 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v54, a2);
  }

  *(a1 + 12 + 4 * a2) = *(a1 + 12 + 4 * v56);
  v57 = *(a1 + 8);
  if ((v56 & 0x80000000) != 0 || v56 >= v57)
  {
    IOSArray_throwOutOfBoundsWithMsg(v57, v56);
  }

  *(a1 + 12 + 4 * v56) = v27;
  v58 = *(a1 + 8);
  v59 = v35 + 1;
  v60 = v35 + 1;
  if (v35 + 1 < 0 || v59 >= v58)
  {
    IOSArray_throwOutOfBoundsWithMsg(v58, v59);
  }

  if ((a3 & 0x80000000) != 0 || v58 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v58, a3);
  }

  *(a1 + 12 + 4 * a3) = *(a1 + 12 + 4 * v60);
  v61 = *(a1 + 8);
  if ((v60 & 0x80000000) != 0 || v60 >= v61)
  {
    IOSArray_throwOutOfBoundsWithMsg(v61, v60);
  }

  *(a1 + 12 + 4 * v60) = v29;
  v62 = v29;
  sub_10018AB98(a1);
  result = sub_10018AB98(a1);
  if (v27 != v62)
  {
    if (v53 >= v104 || v35 <= v103)
    {
      goto LABEL_213;
    }

    do
    {
      v64 = *(a1 + 8);
      if ((v53 & 0x80000000) != 0 || v53 >= v64)
      {
        IOSArray_throwOutOfBoundsWithMsg(v64, v53);
      }

      v65 = *(a1 + 12 + 4 * v53);
      LODWORD(v53) = v53 + 1;
    }

    while (v65 == v27);
    v81 = v53 - 2;
    v82 = v53 - 1;
    do
    {
      v83 = *(a1 + 8);
      if (v35 < 0 || v35 >= v83)
      {
        IOSArray_throwOutOfBoundsWithMsg(v83, v35);
      }

      v84 = *(a1 + 12 + 4 * v35--);
    }

    while (v84 == v62);
    v85 = v35 + 1;
    if (v82 > v85)
    {
LABEL_213:

      return sub_10018AB98(a1);
    }

    v86 = (v53 - 1);
    while (1)
    {
      v87 = v82;
      v88 = *(a1 + 8);
      if (v82 < 0 || v82 >= v88)
      {
        IOSArray_throwOutOfBoundsWithMsg(v88, v82);
      }

      v89 = *(a1 + 12 + 4 * v82);
      if (v89 == v62)
      {
        break;
      }

      if (v89 == v27)
      {
        v93 = *(a1 + 8);
        if ((v86 & 0x80000000) != 0 || v86 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, v86);
        }

        v90 = v86;
        if ((v87 & 0x80000000) != 0 || v87 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, v87);
        }

        *(a1 + 12 + 4 * v87) = *(a1 + 12 + 4 * v86);
        v94 = (v86 + 1);
        v95 = *(a1 + 8);
        if ((v86 & 0x80000000) != 0 || v86 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, v86);
        }

        v96 = v27;
LABEL_252:
        *(a1 + 12 + 4 * v90) = v96;
        v86 = v94;
      }

      v82 = v87 + 1;
      ++v81;
      if (v87 + 1 > v85)
      {
        goto LABEL_213;
      }
    }

    while (1)
    {
      v90 = v85;
      v91 = *(a1 + 8);
      if (v85 < 0 || v85 >= v91)
      {
        IOSArray_throwOutOfBoundsWithMsg(v91, v85);
      }

      v92 = *(a1 + 12 + 4 * v85);
      if (v92 != v62)
      {
        break;
      }

      v85 = v90 - 1;
      if (v81 == v90 - 1)
      {
        goto LABEL_213;
      }
    }

    v97 = *(a1 + 8);
    if ((v90 & 0x80000000) != 0 || v90 >= v97)
    {
      IOSArray_throwOutOfBoundsWithMsg(v97, v90);
    }

    if (v92 == v27)
    {
      v98 = *(a1 + 8);
      if ((v86 & 0x80000000) != 0 || v86 >= v98)
      {
        IOSArray_throwOutOfBoundsWithMsg(v98, v86);
      }

      v99 = v86;
      if ((v87 & 0x80000000) != 0 || v87 >= v98)
      {
        IOSArray_throwOutOfBoundsWithMsg(v98, v87);
      }

      *(a1 + 12 + 4 * v87) = *(a1 + 12 + 4 * v86);
      v94 = (v86 + 1);
      v100 = *(a1 + 8);
      if ((v86 & 0x80000000) != 0 || v86 >= v100)
      {
        IOSArray_throwOutOfBoundsWithMsg(v100, v86);
      }

      v92 = v27;
    }

    else
    {
      v101 = *(a1 + 8);
      if ((v90 & 0x80000000) != 0 || v90 >= v101)
      {
        IOSArray_throwOutOfBoundsWithMsg(v101, v90);
      }

      if ((v87 & 0x80000000) != 0 || v87 >= v101)
      {
        IOSArray_throwOutOfBoundsWithMsg(v101, v87);
      }

      v99 = v87;
      v94 = v86;
    }

    *(a1 + 12 + 4 * v99) = v92;
    v85 = v90 - 1;
    v102 = *(a1 + 8);
    if ((v90 & 0x80000000) != 0 || v90 >= v102)
    {
      IOSArray_throwOutOfBoundsWithMsg(v102, v90);
    }

    v96 = v62;
    goto LABEL_252;
  }

  return result;
}