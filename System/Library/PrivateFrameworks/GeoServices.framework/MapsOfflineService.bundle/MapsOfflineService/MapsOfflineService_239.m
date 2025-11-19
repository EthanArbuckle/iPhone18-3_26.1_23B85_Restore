uint64_t sub_EBFC40(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v2;
  sub_EBFDD4(a1, 32 * v2, a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 - v9;
  v11 = v16 + v10;
  if (*a1 != v9)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v16 + v10;
    do
    {
      sub_EBFDD4(a1, v14, v13);
      v13 += 32;
      v14 += 32;
      v12 -= 32;
    }

    while (v13 != v9);
    do
    {
      sub_14A52AC(v8);
      v8 += 32;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v11;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_EBFD94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_EBFE68(va);
  _Unwind_Resume(a1);
}

void sub_EBFDA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v3)
  {
    v5 = v2 - 32;
    do
    {
      v5 = sub_14A52AC(v5) - 32;
      v3 += 32;
    }

    while (v3);
  }

  sub_EBFE68(va);
  _Unwind_Resume(a1);
}

void sub_EBFDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_14A5204(a2, 0, 0);
  if (v4 != a3)
  {
    size = v4->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a3 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (size == v6)
    {
      sub_14A580C(v4, a3);
    }

    else
    {
      sub_14A57B8(v4, a3);
    }
  }
}

uint64_t sub_EBFE68(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_14A52AC(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_EC2F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_36:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_37:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_38:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_39:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_40:
              operator delete(a75);
              if ((a74 & 0x80000000) == 0)
              {
LABEL_41:
                if (a72 < 0)
                {
                  goto LABEL_42;
                }

                goto LABEL_44;
              }

LABEL_34:
              operator delete(a73);
              if (a72 < 0)
              {
LABEL_42:
                operator delete(a69);
                if ((a68 & 0x80000000) == 0)
                {
                  goto LABEL_43;
                }

                goto LABEL_45;
              }

LABEL_44:
              if ((a68 & 0x80000000) == 0)
              {
LABEL_43:
                _Unwind_Resume(a1);
              }

LABEL_45:
              operator delete(a63);
              _Unwind_Resume(a1);
            }

LABEL_33:
            if ((a74 & 0x80000000) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_40;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_36;
  }

  goto LABEL_29;
}

void sub_EC31E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a1;
  if (*a1 != v3)
  {
    v6 = *a1;
    do
    {
      if (*v6 == -1 && v6[1] == -1)
      {
        return;
      }

      v6 += 110;
    }

    while (v6 != v3);
    if (v4 != v3)
    {
LABEL_11:
      v8 = *(a2 + 88);
      if (v8 && (v9 = *(a2 + 80), v9 < *v8))
      {
        *(a2 + 80) = v9 + 1;
        v10 = *&v8[2 * v9 + 2];
        *(v10 + 16) |= 8u;
        *(v10 + 144) = 0;
        v11 = *(v10 + 40);
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_155218C(*(a2 + 72));
        v10 = sub_19593CC(a2 + 72, v12);
        *(v10 + 16) |= 8u;
        *(v10 + 144) = 0;
        v11 = *(v10 + 40);
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      v13 = *(v10 + 32);
      if (v13 < *v11)
      {
        *(v10 + 32) = v13 + 1;
        v14 = *&v11[2 * v13 + 2];
        *(v14 + 16) |= 4u;
        v15 = *(v14 + 184);
        if (!v15)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }

LABEL_20:
      sub_15520A4(*(v10 + 24));
      v14 = sub_19593CC(v10 + 24, v17);
      *(v14 + 16) |= 4u;
      v15 = *(v14 + 184);
      if (!v15)
      {
LABEL_21:
        v18 = *(v14 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v15 = sub_1550F20(v19);
        *(v14 + 184) = v15;
        *(v15 + 40) |= 0x80u;
        v16 = *(v15 + 176);
        if (v16)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

LABEL_18:
      *(v15 + 40) |= 0x80u;
      v16 = *(v15 + 176);
      if (v16)
      {
LABEL_27:
        LODWORD(v2) = *(v4 + 4);
        v22 = exp(v2 * -6.28318531 / 4294967300.0 + 3.14159265);
        *&v2 = atan((v22 + -1.0 / v22) * 0.5) * 57.2957795;
        v23 = *(v16 + 40);
        *(v16 + 40) = v23 | 1;
        LODWORD(v24) = *v4;
        *(v16 + 40) = v23 | 3;
        *(v16 + 48) = v2;
        *(v16 + 56) = v24 * 360.0 / 4294967300.0 + -180.0;
        v25 = *(v4 + 312);
        v26 = *(v4 + 320);
        while (1)
        {
          if (v25 == v26)
          {
            v4 += 440;
            if (v4 == v3)
            {
              return;
            }

            goto LABEL_11;
          }

          v34 = *(v15 + 112);
          if (v34 && (v35 = *(v15 + 104), v35 < *v34))
          {
            *(v15 + 104) = v35 + 1;
            sub_EA3534(v25, *&v34[2 * v35 + 2], *&v2);
            v36 = *(v15 + 88);
            if (!v36)
            {
              goto LABEL_28;
            }
          }

          else
          {
            sub_16F60C0(*(v15 + 96));
            v38 = sub_19593CC(v15 + 96, v37);
            sub_EA3534(v25, v38, v39);
            v36 = *(v15 + 88);
            if (!v36)
            {
              goto LABEL_28;
            }
          }

          v40 = *(v15 + 80);
          if (v40 >= *v36)
          {
LABEL_28:
            v27 = sub_16F5828(*(v15 + 72));
            v28 = sub_19593CC(v15 + 72, v27);
            goto LABEL_29;
          }

          *(v15 + 80) = v40 + 1;
          v28 = *&v36[2 * v40 + 2];
LABEL_29:
          LODWORD(v29) = v25[1];
          v30 = exp(v29 * -6.28318531 / 4294967300.0 + 3.14159265);
          *&v2 = atan((v30 + -1.0 / v30) * 0.5) * 57.2957795;
          v31 = *(v28 + 40);
          *(v28 + 40) = v31 | 1;
          v32 = *v25;
          v25 += 44;
          LODWORD(v33) = v32;
          *(v28 + 40) = v31 | 3;
          *(v28 + 48) = v2;
          *(v28 + 56) = v33 * 360.0 / 4294967300.0 + -180.0;
        }
      }

LABEL_24:
      v20 = *(v15 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v16 = sub_16F5828(v21);
      *(v15 + 176) = v16;
      goto LABEL_27;
    }
  }
}

uint64_t sub_EC3570(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 80) >= 2)
  {
    sub_21E2C18(result, 3, a2);
  }

  return result;
}

void sub_EC673C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a75);
              if ((a74 & 0x80000000) == 0)
              {
LABEL_42:
                if (a72 < 0)
                {
LABEL_43:
                  operator delete(a69);
                  if ((a68 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a68 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a73);
              if (a72 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a74 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

void sub_EC6954(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = *(a2 + 144);
    if (v5 == *(a2 + 148))
    {
      v7 = v5 + 1;
      sub_1958E5C((a2 + 144), v5 + 1);
      *(*(a2 + 152) + 4 * v5) = 4;
      v8 = (a2 + 168);
      v9 = *(a2 + 168);
      *(a2 + 144) = v7;
      if (v9 != *(a2 + 172))
      {
LABEL_4:
        *(*(a2 + 176) + 4 * v9) = 0;
        v10 = v9 + 1;
LABEL_7:
        *v8 = v10;
        v3 = *a1;
        v4 = a1[1];
        goto LABEL_8;
      }
    }

    else
    {
      *(*(a2 + 152) + 4 * v5) = 4;
      v11 = v5 + 1;
      v8 = (a2 + 168);
      v9 = *(a2 + 168);
      *(a2 + 144) = v11;
      if (v9 != *(a2 + 172))
      {
        goto LABEL_4;
      }
    }

    v10 = v9 + 1;
    sub_1958E5C(v8, v9 + 1);
    *(*(a2 + 176) + 4 * v9) = 0;
    goto LABEL_7;
  }

LABEL_8:
  while (v3 != v4)
  {
    while (1)
    {
      v12 = (*(v3 + 16) - 1) >= 4 ? 4 : *(v3 + 16) - 1;
      v13 = *(a2 + 144);
      if (v13 == *(a2 + 148))
      {
        v14 = v13 + 1;
        sub_1958E5C((a2 + 144), v13 + 1);
        *(*(a2 + 152) + 4 * v13) = v12;
      }

      else
      {
        *(*(a2 + 152) + 4 * v13) = v12;
        v14 = v13 + 1;
      }

      *(a2 + 144) = v14;
      v15 = *v3 < 0 ? -50 : 50;
      v16 = *v3 / 100 + ((5243 * (v15 + *v3 % 100)) >> 19) + ((5243 * (v15 + *v3 % 100)) >> 31);
      v17 = *(a2 + 168);
      if (v17 != *(a2 + 172))
      {
        break;
      }

      sub_1958E5C((a2 + 168), v17 + 1);
      *(*(a2 + 176) + 4 * v17) = v16;
      *(a2 + 168) = v17 + 1;
      v3 += 24;
      if (v3 == v4)
      {
        return;
      }
    }

    *(*(a2 + 176) + 4 * v17) = v16;
    *(a2 + 168) = v17 + 1;
    v3 += 24;
  }
}

void sub_EC6B44(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = *(a2 + 152);
    if (v5 == *(a2 + 156))
    {
      v7 = v5 + 1;
      sub_1958E5C((a2 + 152), v5 + 1);
      *(*(a2 + 160) + 4 * v5) = 4;
      v8 = (a2 + 176);
      v9 = *(a2 + 176);
      *(a2 + 152) = v7;
      if (v9 != *(a2 + 180))
      {
LABEL_4:
        *(*(a2 + 184) + 4 * v9) = 0;
        v10 = v9 + 1;
LABEL_7:
        *v8 = v10;
        v3 = *a1;
        v4 = a1[1];
        goto LABEL_8;
      }
    }

    else
    {
      *(*(a2 + 160) + 4 * v5) = 4;
      v11 = v5 + 1;
      v8 = (a2 + 176);
      v9 = *(a2 + 176);
      *(a2 + 152) = v11;
      if (v9 != *(a2 + 180))
      {
        goto LABEL_4;
      }
    }

    v10 = v9 + 1;
    sub_1958E5C(v8, v9 + 1);
    *(*(a2 + 184) + 4 * v9) = 0;
    goto LABEL_7;
  }

LABEL_8:
  while (v3 != v4)
  {
    while (1)
    {
      v12 = (*(v3 + 16) - 1) >= 4 ? 4 : *(v3 + 16) - 1;
      v13 = *(a2 + 152);
      if (v13 == *(a2 + 156))
      {
        v14 = v13 + 1;
        sub_1958E5C((a2 + 152), v13 + 1);
        *(*(a2 + 160) + 4 * v13) = v12;
      }

      else
      {
        *(*(a2 + 160) + 4 * v13) = v12;
        v14 = v13 + 1;
      }

      *(a2 + 152) = v14;
      v15 = *v3 < 0 ? -50 : 50;
      v16 = *v3 / 100 + ((5243 * (v15 + *v3 % 100)) >> 19) + ((5243 * (v15 + *v3 % 100)) >> 31);
      v17 = *(a2 + 176);
      if (v17 != *(a2 + 180))
      {
        break;
      }

      sub_1958E5C((a2 + 176), v17 + 1);
      *(*(a2 + 184) + 4 * v17) = v16;
      *(a2 + 176) = v17 + 1;
      v3 += 24;
      if (v3 == v4)
      {
        return;
      }
    }

    *(*(a2 + 184) + 4 * v17) = v16;
    *(a2 + 176) = v17 + 1;
    v3 += 24;
  }
}

long double sub_EC6D34(_DWORD *a1, uint64_t a2, double a3)
{
  LODWORD(a3) = a1[1];
  v5 = exp(*&a3 * -6.28318531 / 4294967300.0 + 3.14159265);
  v6 = atan((v5 + -1.0 / v5) * 0.5);
  HIDWORD(v7) = 1078765020;
  result = v6 * 57.2957795;
  v9 = *(a2 + 40);
  *(a2 + 40) = v9 | 1;
  LODWORD(v7) = *a1;
  *(a2 + 40) = v9 | 3;
  *(a2 + 48) = result;
  *(a2 + 56) = v7 * 360.0 / 4294967300.0 + -180.0;
  return result;
}

void sub_EC6DFC(_DWORD *a1, uint64_t a2, double a3)
{
  LODWORD(a3) = a1[1];
  v5 = exp(*&a3 * -6.28318531 / 4294967300.0 + 3.14159265);
  v6 = atan((v5 + -1.0 / v5) * 0.5);
  HIDWORD(v7) = 1078765020;
  v8 = *(a2 + 40);
  *(a2 + 40) = v8 | 1;
  LODWORD(v7) = *a1;
  *(a2 + 40) = v8 | 3;
  *(a2 + 48) = v6 * 57.2957795;
  *(a2 + 56) = v7 * 360.0 / 4294967300.0 + -180.0;
  v9 = a1[2];
  if (v9 != 0x7FFFFFFF)
  {
    *(a2 + 40) = v8 | 7;
    *(a2 + 64) = v9 / 100.0;
  }
}

uint64_t sub_EC6EF0(uint64_t result)
{
  result = result;
  if (result <= 0xDu)
  {
    if (result <= 2u)
    {
      if (result < 2u)
      {
        return result;
      }
    }

    else if (result == 3 || result == 6 || result == 12)
    {
      return result;
    }

    return 64;
  }

  if (result <= 0x11u)
  {
    if (result != 14 && result != 15)
    {
      return 64;
    }
  }

  else if (result != 18 && result != 23 && result != 79)
  {
    return 64;
  }

  return result;
}

uint64_t *sub_EC6F6C(uint64_t a1, uint64_t a2, int a3, double a4)
{
  if (*(a1 + 700) == 1)
  {
    v7 = (a1 + 688);
    *(a2 + 40) |= 0x10u;
    v8 = *(a2 + 104);
    if (!v8)
    {
      v9 = *(a2 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      v8 = sub_16F5828(v10);
      *(a2 + 104) = v8;
    }

    v11 = (a1 + 692);
LABEL_15:
    LODWORD(a4) = *v11;
    v15 = exp(*&a4 * -6.28318531 / 4294967300.0 + 3.14159265);
    v16 = atan((v15 + -1.0 / v15) * 0.5) * 57.2957795;
    v17 = *(v8 + 40);
    *(v8 + 40) = v17 | 1;
    *(v8 + 48) = v16;
    LODWORD(v16) = *v7;
    *(v8 + 40) = v17 | 3;
    *(v8 + 56) = *&v16 * 360.0 / 4294967300.0 + -180.0;
    goto LABEL_16;
  }

  v7 = (a1 + 32);
  v11 = (a1 + 36);
  if (*(a1 + 32) != -1 || *(a1 + 36) != -1)
  {
    *(a2 + 40) |= 0x10u;
    v8 = *(a2 + 104);
    if (!v8)
    {
      v13 = *(a2 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v8 = sub_16F5828(v14);
      *(a2 + 104) = v8;
    }

    goto LABEL_15;
  }

LABEL_16:
  *(a2 + 40) |= 1u;
  v18 = *(a2 + 8);
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
    v19 = *v19;
  }

  sub_194EA1C((a2 + 72), (a1 + 48), v19);
  *(a2 + 40) |= 2u;
  v20 = *(a2 + 8);
  v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
  if (v20)
  {
    sub_194EA1C((a2 + 80), (a1 + 480), *v21);
    v22 = *(a1 + 96);
    if (v22 <= 0xF)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_194EA1C((a2 + 80), (a1 + 480), v21);
    v22 = *(a1 + 96);
    if (v22 <= 0xF)
    {
LABEL_20:
      v23 = dword_22AD7E8[v22];
      goto LABEL_23;
    }
  }

  v23 = 3;
LABEL_23:
  v24 = *(a2 + 40);
  *(a2 + 136) = v23;
  *(a2 + 40) = v24 | 0x104;
  v25 = *(a2 + 8);
  v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
  if (v25)
  {
    v26 = *v26;
  }

  sub_194EA1C((a2 + 88), (a1 + 104), v26);
  *(a2 + 40) |= 8u;
  v27 = *(a2 + 8);
  v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
  if (v27)
  {
    v28 = *v28;
  }

  sub_194EA1C((a2 + 96), (a1 + 128), v28);
  v29 = 1000 * *(a1 + 152);
  v30 = *(a2 + 40);
  v31 = v30 | 0x80;
  *(a2 + 40) = v30 | 0x80;
  *(a2 + 128) = v29;
  v32 = *(a1 + 156);
  if (v32 != 0x7FFFFFFF)
  {
    v31 = v30 | 0x480;
    *(a2 + 40) = v30 | 0x480;
    *(a2 + 144) = 1000 * v32;
  }

  v33 = *(a1 + 160);
  if (v33 && v33 != 0x7FFFFFFF)
  {
    v31 |= 0x800u;
    *(a2 + 40) = v31;
    *(a2 + 152) = 1000 * v33;
  }

  *(a2 + 176) = *(a1 + 164);
  *(a2 + 140) = *(a1 + 165);
  v34 = *(a1 + 166);
  *(a2 + 40) = v31 | 0x11200;
  *(a2 + 160) = v34;
  v35 = *(a1 + 168);
  if (v35)
  {
    *(a2 + 40) = v31 | 0x15200;
    *(a2 + 168) = v35;
  }

  v36 = *(a1 + 200);
  v37 = *(a1 + 208);
  while (v36 != v37)
  {
    if (*(v36 + 23) < 0)
    {
      sub_325C(__p, *v36, *(v36 + 1));
    }

    else
    {
      v38 = *v36;
      v43 = *(v36 + 2);
      *__p = v38;
    }

    sub_4F803C(a2, __p);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }

    v36 = (v36 + 24);
  }

  v39 = sub_6597CC(a1);
  *(a2 + 40) |= 0x20000u;
  *(a2 + 180) = v39;
  if (a3)
  {
    if (sub_659540(a1) && (*(a1 + 800) - 1) < 0x16)
    {
      sub_58872C();
    }

    if (*(a1 + 96) < 0x10u)
    {
      sub_58872C();
    }

    sub_58872C();
  }

  if (((*(a1 + 224) - 1) & 0xFC) != 0)
  {
    v40 = 0;
  }

  else
  {
    v40 = (*(a1 + 224) - 1) + 1;
  }

  return sub_19500C0(a2 + 16, qword_278D0D0, 14, v40, 0);
}

void sub_EC74CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EC74E8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  if (*(a1 + 492) == 1)
  {
    *(a3 + 140) = 1;
    *(a3 + 16) = v6 | 0x11;
    v7 = *(a3 + 112);
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a3 + 16) = v6 | 1;
    v7 = *(a3 + 112);
    if (!v7)
    {
LABEL_3:
      v8 = *(a3 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      sub_14BAE64(v9);
      *(a3 + 112) = v10;
      sub_64D110(a1, v10);
      v11 = *(a1 + 168);
      v12 = *(a1 + 176);
      if (v11 == v12)
      {
        goto LABEL_109;
      }

LABEL_11:
      while (1)
      {
        v13 = *(v11 + 768);
        if (v13)
        {
          break;
        }

LABEL_10:
        v11 += 800;
        if (v11 == v12)
        {
          goto LABEL_109;
        }
      }

      v14 = *(a3 + 80);
      if (v14 && (v15 = *(a3 + 72), v15 < *v14))
      {
        *(a3 + 72) = v15 + 1;
        v16 = *&v14[2 * v15 + 2];
        if (v13 == 1)
        {
LABEL_15:
          v17 = sub_589204(a2, v11);
          if (!v17)
          {
            sub_49EC("unordered_map::at: key not found");
          }

          v18 = *(v17 + 10);
          *(v16 + 16) |= 2u;
          *(v16 + 56) = v18;
          goto LABEL_83;
        }
      }

      else
      {
        v19 = sub_14BCDF8(*(a3 + 64));
        v16 = sub_19593CC(a3 + 64, v19);
        v13 = *(v11 + 768);
        if (v13 == 1)
        {
          goto LABEL_15;
        }
      }

      if (v13 == 3)
      {
        v32 = *v11;
        *(v16 + 16) |= 4u;
        *(v16 + 60) = v32;
      }

      else if (v13 == 2)
      {
        *(v16 + 16) |= 1u;
        v20 = *(v16 + 48);
        if (!v20)
        {
          v21 = *(v16 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          sub_14BCD74(v22);
          v20 = v23;
          *(v16 + 48) = v23;
        }

        if (*(v11 + 768) != 2)
        {
          sub_5AF20();
        }

        *(v20 + 16) |= 1u;
        v24 = *(v20 + 24);
        if (!v24)
        {
          v25 = *(v20 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          sub_14BAE64(v26);
          v24 = v27;
          *(v20 + 24) = v27;
        }

        sub_64D110(v11, v24);
        *(v20 + 16) |= 2u;
        v28 = *(v20 + 32);
        if (v28)
        {
          sub_64D110((v11 + 160), v28);
          v30 = (v11 + 320);
          v31 = *(v11 + 352);
          if (v31 <= 2)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v33 = *(v20 + 8);
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
          if (v33)
          {
            v34 = *v34;
          }

          sub_14BAE64(v34);
          *(v20 + 32) = v35;
          sub_64D110((v11 + 160), v35);
          v30 = (v11 + 320);
          v31 = *(v11 + 352);
          if (v31 <= 2)
          {
LABEL_31:
            if (v31 == 1)
            {
              if (*v30 == -1)
              {
                goto LABEL_46;
              }
            }

            else if (v31 != 2 || *(v11 + 324) == -1 && *v30 == -1 && *(v11 + 328) == *(v11 + 336))
            {
              goto LABEL_46;
            }

            goto LABEL_51;
          }
        }

        if (v31 != 3 && v31 != 4)
        {
          goto LABEL_46;
        }

        v36 = *(v11 + 343);
        if (v36 < 0)
        {
          v36 = *(v11 + 328);
        }

        if (!v36)
        {
LABEL_46:
          if (sub_4D1F6C((v11 + 432)))
          {
            goto LABEL_47;
          }

LABEL_53:
          *(v20 + 16) |= 8u;
          v39 = *(v20 + 48);
          if (v39)
          {
            sub_64D110((v11 + 432), v39);
            if (!sub_4D1F6C((v11 + 592)))
            {
              goto LABEL_55;
            }
          }

          else
          {
            v45 = *(v20 + 8);
            v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
            if (v45)
            {
              v46 = *v46;
            }

            sub_14BAE64(v46);
            *(v20 + 48) = v47;
            sub_64D110((v11 + 432), v47);
            if (!sub_4D1F6C((v11 + 592)))
            {
              goto LABEL_55;
            }
          }

LABEL_48:
          if (*(v11 + 752) != 1)
          {
            goto LABEL_83;
          }

LABEL_69:
          if (*(v11 + 756) != -1 || *(v11 + 760) != -1)
          {
            *(v20 + 16) |= 0x20u;
            v51 = *(v20 + 64);
            if (v51)
            {
              v52 = 1;
            }

            else
            {
              v53 = *(v20 + 8);
              v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
              if (v53)
              {
                v54 = *v54;
              }

              v51 = sub_14BCCF8(v54);
              *(v20 + 64) = v51;
              v52 = *(v11 + 752) == 1;
            }

            v55 = *(v51 + 16);
            *(v51 + 16) = v55 | 2;
            *(v51 + 32) = v52;
            if (*(v11 + 756) != -1 || *(v11 + 760) != -1)
            {
              *(v51 + 16) = v55 | 3;
              v56 = *(v51 + 24);
              if (!v56)
              {
                v57 = *(v51 + 8);
                v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
                if (v57)
                {
                  v58 = *v58;
                }

                v56 = sub_16F5828(v58);
                *(v51 + 24) = v56;
              }

              LODWORD(v37) = *(v11 + 760);
              v59 = exp(v37 * -6.28318531 / 4294967300.0 + 3.14159265);
              v60 = atan((v59 + -1.0 / v59) * 0.5);
              v61 = *(v56 + 40);
              *(v56 + 40) = v61 | 1;
              LODWORD(v62) = *(v11 + 756);
              *(v56 + 40) = v61 | 3;
              *(v56 + 48) = v60 * 57.2957795;
              *(v56 + 56) = v62 * 360.0 / 4294967300.0 + -180.0;
            }
          }

          goto LABEL_83;
        }

LABEL_51:
        *(v20 + 16) |= 4u;
        v38 = *(v20 + 40);
        if (v38)
        {
          sub_586C94(v30, v38, v29);
          if (!sub_4D1F6C((v11 + 432)))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v41 = *(v20 + 8);
          v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
          if (v41)
          {
            v42 = *v42;
          }

          v43 = sub_14BF484(v42);
          *(v20 + 40) = v43;
          sub_586C94(v30, v43, v44);
          if (!sub_4D1F6C((v11 + 432)))
          {
            goto LABEL_53;
          }
        }

LABEL_47:
        if (sub_4D1F6C((v11 + 592)))
        {
          goto LABEL_48;
        }

LABEL_55:
        *(v20 + 16) |= 0x10u;
        v40 = *(v20 + 56);
        if (v40)
        {
          sub_64D110((v11 + 592), v40);
          if (*(v11 + 752) != 1)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v48 = *(v20 + 8);
          v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
          if (v48)
          {
            v49 = *v49;
          }

          sub_14BAE64(v49);
          *(v20 + 56) = v50;
          sub_64D110((v11 + 592), v50);
          if (*(v11 + 752) != 1)
          {
            goto LABEL_83;
          }
        }

        goto LABEL_69;
      }

LABEL_83:
      v63 = *(v11 + 776);
      v64 = *(v11 + 784);
      while (1)
      {
        if (v63 == v64)
        {
          goto LABEL_10;
        }

        if ((*(v63 + 23) & 0x8000000000000000) != 0)
        {
          if (!v63[1])
          {
            goto LABEL_91;
          }
        }

        else if (!*(v63 + 23))
        {
          goto LABEL_91;
        }

        v67 = *(v16 + 40);
        if (v67 && (v68 = *(v16 + 32), v68 < *v67))
        {
          *(v16 + 32) = v68 + 1;
          v69 = *&v67[2 * v68 + 2];
          if (v63 == v69)
          {
            goto LABEL_91;
          }

LABEL_105:
          v73 = *(v63 + 23);
          if (*(v69 + 23) < 0)
          {
            if (v73 >= 0)
            {
              v65 = v63;
            }

            else
            {
              v65 = *v63;
            }

            if (v73 >= 0)
            {
              v66 = *(v63 + 23);
            }

            else
            {
              v66 = v63[1];
            }

            sub_13B38(v69, v65, v66);
            goto LABEL_91;
          }

          if ((*(v63 + 23) & 0x80) != 0)
          {
            v75 = *v63;
            v76 = v63[1];
            v63 += 3;
            sub_13A68(v69, v75, v76);
          }

          else
          {
            v74 = *v63;
            *(v69 + 16) = v63[2];
            *v69 = v74;
            v63 += 3;
          }
        }

        else
        {
          v70 = *(v16 + 24);
          if (!v70)
          {
            operator new();
          }

          *v72 = v71;
          v72[1] = sub_195A650;
          *v71 = 0;
          v71[1] = 0;
          v71[2] = 0;
          v69 = sub_19593CC(v16 + 24, v71);
          if (v63 != v69)
          {
            goto LABEL_105;
          }

LABEL_91:
          v63 += 3;
        }
      }
    }
  }

  sub_64D110(a1, v7);
  v11 = *(a1 + 168);
  v12 = *(a1 + 176);
  if (v11 != v12)
  {
    goto LABEL_11;
  }

LABEL_109:
  v77 = *(a1 + 160);
  *(a3 + 16) |= 8u;
  *(a3 + 136) = v77;
  if (!sub_4D1F6C((a1 + 192)))
  {
    *(a3 + 16) |= 2u;
    v79 = *(a3 + 120);
    if (!v79)
    {
      v80 = *(a3 + 8);
      v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
      if (v80)
      {
        v81 = *v81;
      }

      sub_14BAE64(v81);
      v79 = v82;
      *(a3 + 120) = v82;
    }

    sub_64D110((a1 + 192), v79);
  }

  v83 = *(a1 + 384);
  if (v83 > 2)
  {
    if (v83 != 3 && v83 != 4)
    {
      goto LABEL_134;
    }

    v84 = *(a1 + 375);
    if ((v84 & 0x80u) != 0)
    {
      v84 = *(a1 + 360);
    }

    if (!v84)
    {
      goto LABEL_134;
    }

    goto LABEL_129;
  }

  if (v83 != 1)
  {
    if (v83 != 2 || *(a1 + 356) == -1 && *(a1 + 352) == -1 && *(a1 + 360) == *(a1 + 368))
    {
      goto LABEL_134;
    }

LABEL_129:
    *(a3 + 16) |= 4u;
    v85 = *(a3 + 128);
    if (!v85)
    {
      v86 = *(a3 + 8);
      v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
      if (v86)
      {
        v87 = *v87;
      }

      v85 = sub_14BF484(v87);
      *(a3 + 128) = v85;
    }

    sub_586C94(a1 + 352, v85, v78);
    goto LABEL_134;
  }

  if (*(a1 + 352) != -1)
  {
    goto LABEL_129;
  }

LABEL_134:
  v89 = *(a1 + 464);
  v88 = *(a1 + 472);
  while (v89 != v88)
  {
    if ((*(v89 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v89 + 8))
      {
        goto LABEL_135;
      }

LABEL_141:
      sub_EC7CEC(a3, v89);
      goto LABEL_135;
    }

    if (*(v89 + 23))
    {
      goto LABEL_141;
    }

LABEL_135:
    v89 += 24;
  }
}

__int128 *sub_EC7CEC(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = *(a1 + 96);
    if (v5 < *v4)
    {
      *(a1 + 96) = v5 + 1;
      result = *&v4[2 * v5 + 2];
      if (result == a2)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  v7 = *(a1 + 88);
  if (!v7)
  {
    operator new();
  }

  *v9 = v8;
  v9[1] = sub_195A650;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = sub_19593CC(a1 + 88, v8);
  if (result != a2)
  {
LABEL_9:
    v10 = *(a2 + 23);
    if (*(result + 23) < 0)
    {
      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v10 >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = *(a2 + 1);
      }

      return sub_13B38(result, v12, v13);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      v14 = *a2;
      v15 = *(a2 + 1);

      return sub_13A68(result, v14, v15);
    }

    else
    {
      v11 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v11;
    }
  }

  return result;
}

uint64_t sub_EC7E24(int a1)
{
  if ((a1 - 1) > 0x60)
  {
    return 0;
  }

  else
  {
    return dword_22AD868[a1 - 1];
  }
}

uint64_t sub_EC7E48(unsigned int *a1)
{
  if (*a1 >= 0xE)
  {
    return 8;
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_EC7E5C(unsigned int a1)
{
  if (a1 > 0x2C)
  {
    return 1;
  }

  else
  {
    return dword_22AD9EC[a1];
  }
}

uint64_t sub_EC7E7C(unsigned int a1)
{
  if (a1 > 5)
  {
    return 4;
  }

  else
  {
    return dword_22ADAA0[a1];
  }
}

uint64_t sub_EC7E9C(int a1)
{
  if (a1)
  {
    if (a1 != 2 || !sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v7);
    sub_4A5C(&v7, "Encountered side-of-street that is not supported in driving.", 60);
    if ((v17 & 0x10) != 0)
    {
      v3 = v16;
      if (v16 < v13)
      {
        v16 = v13;
        v3 = v13;
      }

      v4 = v12;
      v2 = v3 - v12;
      if (v3 - v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v17 & 8) == 0)
      {
        v2 = 0;
        v6 = 0;
LABEL_17:
        *(&__p + v2) = 0;
        sub_7E854(&__p, 1u);
        if (v6 < 0)
        {
          operator delete(__p);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }

        std::locale::~locale(&v9);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v4 = v10;
      v2 = v11 - v10;
      if ((v11 - v10) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_23:
        sub_3244();
      }
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v6 = v2;
    if (v2)
    {
      memmove(&__p, v4, v2);
    }

    goto LABEL_17;
  }

  return 1;
}

void sub_EC8118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_EC8164@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1491264(a2, 0, 0);
  v4 = *(result + 16);
  *(result + 24) = *a1 + -978307200.0;
  v5 = a1[2] != 0;
  *(result + 16) = v4 | 5;
  *(result + 40) = v5;
  return result;
}

unint64_t sub_EC81D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a2 + 32) = *a1;
  v5 = *(a1 + 8);
  if (v5 >= 3)
  {
    v5 = 0;
  }

  *(a2 + 16) = v4 | 0xA;
  *(a2 + 44) = v5;
  result = sub_329BC(a1 + 12);
  if (result)
  {
    *(a2 + 16) |= 1u;
    v7 = *(a2 + 24);
    if (!v7)
    {
      v8 = *(a2 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      sub_16F58FC(v9);
      v7 = v10;
      *(a2 + 24) = v10;
    }

    v11 = sub_32DBC((a1 + 12));
    v12 = exp(3.14159265 - HIDWORD(v11) * 6.28318531 / 4294967300.0);
    v13 = atan((v12 - 1.0 / v12) * 0.5);
    *(v7 + 16) |= 2u;
    *(v7 + 56) = v13 * 57.2957795;
    v14 = sub_32DBC((a1 + 12));
    *(v7 + 16) |= 4u;
    *(v7 + 64) = v14 * 360.0 / 4294967300.0 + -180.0;
    v15 = sub_32DA0(a1 + 12);
    v16 = exp(3.14159265 - HIDWORD(v15) * 6.28318531 / 4294967300.0);
    v17 = atan((v16 - 1.0 / v16) * 0.5);
    *(v7 + 16) |= 8u;
    *(v7 + 72) = v17 * 57.2957795;
    result = sub_32DA0(a1 + 12);
    *(v7 + 16) |= 0x10u;
    *(v7 + 80) = result * 360.0 / 4294967300.0 + -180.0;
  }

  return result;
}

uint64_t sub_EC83A0(uint64_t result)
{
  if ((result - 1) >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_EC83B0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 40);
  *(a2 + 136) = 9;
  v6 = v5 | 0x120;
  *(a2 + 40) = v6;
  v7 = *(a2 + 112);
  if (v7)
  {
    *(a2 + 40) = v6 | 0x10;
    v8 = *(a2 + 104);
    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *(a2 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v7 = sub_14BDDBC(v10);
    *(a2 + 112) = v7;
    *(a2 + 40) |= 0x10u;
    v8 = *(a2 + 104);
    if (v8)
    {
LABEL_10:
      LODWORD(a3) = *(a1 + 44);
      v13 = exp(*&a3 * -6.28318531 / 4294967300.0 + 3.14159265);
      v14 = atan((v13 + -1.0 / v13) * 0.5);
      HIDWORD(v15) = 1078765020;
      v16 = *(v8 + 40);
      *(v8 + 40) = v16 | 1;
      LODWORD(v15) = *(a1 + 40);
      *(v8 + 40) = v16 | 3;
      *(v8 + 48) = v14 * 57.2957795;
      *(v8 + 56) = v15 * 360.0 / 4294967300.0 + -180.0;
      *(a2 + 40) |= 1u;
      v17 = *(a2 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_194EA1C((a2 + 72), (a1 + 8), v18);
      v19 = *(a1 + 79);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(a1 + 64);
      }

      if (v19)
      {
        *(v7 + 16) |= 1u;
        v20 = *(v7 + 48);
        if (!v20)
        {
          v21 = *(v7 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          sub_14BAE64(v22);
          *(v7 + 48) = v20;
        }

        sub_64E090(v20, (a1 + 56));
      }

      v23 = *(a1 + 103);
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(a1 + 88);
      }

      if (v23)
      {
        *(v7 + 16) |= 2u;
        v24 = *(v7 + 56);
        if (!v24)
        {
          v25 = *(v7 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          sub_14BAE64(v26);
          *(v7 + 56) = v24;
        }

        sub_64E090(v24, (a1 + 80));
      }

      v27 = *(v7 + 40);
      if (v27 && (v28 = *(v7 + 32), v28 < *v27))
      {
        *(v7 + 32) = v28 + 1;
        v29 = *&v27[2 * v28 + 2];
      }

      else
      {
        v30 = sub_14BDD20(*(v7 + 24));
        v29 = sub_19593CC(v7 + 24, v30);
      }

      v31 = *(a1 + 104);
      v32 = *(a1 + 112);
      while (v31 != v32)
      {
        v35 = *(v29 + 40);
        if (v35 && (v36 = *(v29 + 32), v36 < *v35))
        {
          *(v29 + 32) = v36 + 1;
          v34 = *&v35[2 * v36 + 2];
        }

        else
        {
          sub_14BAE64(*(v29 + 24));
          v34 = sub_19593CC(v29 + 24, v33);
        }

        sub_64E090(v34, v31);
        v31 = (v31 + 24);
      }

      v37 = *(a1 + 128);
      *(a2 + 40) |= 0x20000u;
      *(a2 + 180) = v37;
      sub_81338C(a1);
      sub_58872C();
    }
  }

  v11 = *(a2 + 8);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  v8 = sub_16F5828(v12);
  *(a2 + 104) = v8;
  goto LABEL_10;
}

void sub_EC8744(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_EC8758(__int128 **a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = a1[1];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a2 + 16) |= 4u;
    *(a2 + 88) = v4;
    v5 = a1[1];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_3:
      if (sub_4D1F6C(a1 + 9))
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  *(a2 + 16) |= 8u;
  *(a2 + 92) = v5;
  if (sub_4D1F6C(a1 + 9))
  {
    goto LABEL_12;
  }

LABEL_7:
  *(a2 + 16) |= 2u;
  v6 = *(a2 + 80);
  if (!v6)
  {
    v7 = *(a2 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    sub_14BAE64(v8);
    v6 = v9;
    *(a2 + 80) = v9;
  }

  sub_64D110(a1 + 9, v6);
LABEL_12:
  sub_1959254(a2 + 24, (a1[3] - a1[2]) >> 4);
  v10 = a1[2];
  for (i = a1[3]; v10 != i; ++v10)
  {
    v18 = *(a2 + 40);
    if (v18 && (v19 = *(a2 + 32), v19 < *v18))
    {
      *(a2 + 32) = v19 + 1;
      v13 = *&v18[2 * v19 + 2];
    }

    else
    {
      v12 = sub_14BBE00(*(a2 + 24));
      v13 = sub_19593CC(a2 + 24, v12);
    }

    if (*v10 < 0)
    {
      v14 = -50;
    }

    else
    {
      v14 = 50;
    }

    v15 = *v10 / 100 + ((5243 * (v14 + *v10 % 100)) >> 19) + ((5243 * (v14 + *v10 % 100)) >> 31);
    v16 = v13[4];
    v13[4] = v16 | 1;
    v17 = *(v10 + 2);
    v13[4] = v16 | 3;
    v13[6] = v15;
    v13[7] = v17;
  }

  if (*(a1 + 10) != 0x7FFFFFFF && *(a1 + 11) != 0x7FFFFFFF)
  {
    *(a2 + 16) |= 1u;
    v20 = *(a2 + 72);
    if (!v20)
    {
      v21 = *(a2 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_14BBE78(v22);
      *(a2 + 72) = v20;
    }

    v23 = *(a1 + 10);
    v24 = v20[4];
    v20[4] = v24 | 1;
    v25 = *(a1 + 11);
    v20[4] = v24 | 3;
    v20[6] = v23;
    v20[7] = v25;
  }

  sub_1959254(a2 + 48, -1171354717 * ((a1[7] - a1[6]) >> 4));
  v26 = a1[6];
  for (j = a1[7]; v26 != j; v26 += 11)
  {
    v30 = *(a2 + 64);
    if (v30 && (v31 = *(a2 + 56), v31 < *v30))
    {
      *(a2 + 56) = v31 + 1;
      v32 = *&v30[2 * v31 + 2];
    }

    else
    {
      v33 = sub_14BBEF0(*(a2 + 48));
      v32 = sub_19593CC(a2 + 48, v33);
    }

    v34 = *(v26 + 1);
    if (*v26 < 0)
    {
      v35 = -50;
    }

    else
    {
      v35 = 50;
    }

    v36 = *v26 / 100 + ((5243 * (v35 + *v26 % 100)) >> 19) + ((5243 * (v35 + *v26 % 100)) >> 31);
    v37 = v34 / 100;
    v38 = v34 % 100;
    if (v34 < 0)
    {
      v39 = -50;
    }

    else
    {
      v39 = 50;
    }

    v40 = ((5243 * (v39 + v38)) >> 19) + ((5243 * (v39 + v38)) >> 31);
    v41 = *(v32 + 16);
    *(v32 + 32) = v36;
    *(v32 + 36) = v37 + v40;
    *(v32 + 16) = v41 | 7;
    v29 = *(v32 + 24);
    if (!v29)
    {
      v42 = *(v32 + 8);
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        v43 = *v43;
      }

      sub_14BAE64(v43);
      v29 = v28;
      *(v32 + 24) = v28;
    }

    sub_64D110(v26 + 2, v29);
  }
}

void sub_EC8AE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a2 + 64) = 3;
  *(a2 + 16) = v4 | 6;
  v5 = *(a2 + 56);
  if (!v5)
  {
    v6 = *(a2 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_14BE228(v7);
    v5 = v8;
    *(a2 + 56) = v8;
  }

  v9 = *(a1 + 8);
  v10 = v9 / 100.0;
  *&v10 = v10;
  v11 = *(v5 + 16);
  *(v5 + 44) = LODWORD(v10);
  v12 = v9 / 100;
  v13 = v9 % 100;
  if (v9 < 0)
  {
    v14 = -50;
  }

  else
  {
    v14 = 50;
  }

  *(v5 + 40) = v12 + ((5243 * (v14 + v13)) >> 19) + ((5243 * (v14 + v13)) >> 31);
  *(v5 + 16) = v11 | 0xD;
  v15 = *(v5 + 24);
  if (v15)
  {
    sub_586C94(a1 + 16, v15, *&v10);
    if (sub_4D1F6C((a1 + 136)))
    {
      goto LABEL_34;
    }

LABEL_14:
    if (sub_4D1F6C((a1 + 296)))
    {
      goto LABEL_34;
    }

    *(v5 + 16) |= 2u;
    v20 = *(v5 + 32);
    if (v20)
    {
      *(v20 + 16) |= 2u;
      v21 = *(v20 + 32);
      if (v21)
      {
LABEL_24:
        sub_64D110((a1 + 136), v21);
        *(v20 + 16) |= 4u;
        v27 = *(v20 + 40);
        if (!v27)
        {
          v28 = *(v20 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          sub_14BAE64(v29);
          v27 = v30;
          *(v20 + 40) = v30;
        }

        sub_64D110((a1 + 296), v27);
        if (!sub_4D1F6C((a1 + 456)))
        {
          *(v20 + 16) |= 8u;
          v31 = *(v20 + 48);
          if (!v31)
          {
            v32 = *(v20 + 8);
            v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
            if (v32)
            {
              v33 = *v33;
            }

            sub_14BAE64(v33);
            v31 = v34;
            *(v20 + 48) = v34;
          }

          sub_64D110((a1 + 456), v31);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v22 = *(v5 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v20 = sub_14BDC94(v23);
      *(v5 + 32) = v20;
      *(v20 + 16) |= 2u;
      v21 = *(v20 + 32);
      if (v21)
      {
        goto LABEL_24;
      }
    }

    v24 = *(v20 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    sub_14BAE64(v25);
    v21 = v26;
    *(v20 + 32) = v26;
    goto LABEL_24;
  }

  v16 = *(v5 + 8);
  v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
  if (v16)
  {
    v17 = *v17;
  }

  v18 = sub_14BF484(v17);
  *(v5 + 24) = v18;
  sub_586C94(a1 + 16, v18, v19);
  if (!sub_4D1F6C((a1 + 136)))
  {
    goto LABEL_14;
  }

LABEL_34:
  v35 = *(a1 + 128);
  *(a2 + 16) |= 0x20u;
  *(a2 + 76) = v35;
}

double sub_EC8D54(int *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = (a1 + 2);
  v5 = v4 / 10;
  v6 = v4 % 10;
  if (v4 < 0)
  {
    v7 = -5;
  }

  else
  {
    v7 = 5;
  }

  *(a2 + 16) |= 2u;
  *(a2 + 32) = v5 + (((103 * (v7 + v6)) >> 15) & 1) + ((103 * (v7 + v6)) >> 10);
  result = sub_4470E4(v3);
  *(a2 + 16) |= 1u;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_EC8DEC(uint64_t result, uint64_t a2)
{
  if (*(result + 72) != -1 || *(result + 76) != -1)
  {
    v4 = result;
    v5 = nullsub_1(*(result + 88));
    v6 = *(a2 + 16);
    *(a2 + 48) = v5;
    *(a2 + 16) = v6 | 9;
    v7 = *(a2 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    sub_194EA1C((a2 + 24), v4, v8);
    *(a2 + 16) |= 2u;
    v10 = *(a2 + 32);
    if (!v10)
    {
      v11 = *(a2 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_16F5828(v12);
      *(a2 + 32) = v10;
    }

    LODWORD(v9) = *(v4 + 76);
    v13 = exp(v9 * -6.28318531 / 4294967300.0 + 3.14159265);
    v14 = atan((v13 + -1.0 / v13) * 0.5);
    HIDWORD(v15) = 1078765020;
    v16 = *(v10 + 40);
    *(v10 + 40) = v16 | 1;
    LODWORD(v15) = *(v4 + 72);
    *(v10 + 40) = v16 | 3;
    *(v10 + 48) = v14 * 57.2957795;
    *(v10 + 56) = v15 * 360.0 / 4294967300.0 + -180.0;
    *(a2 + 16) |= 4u;
    v17 = *(a2 + 40);
    if (v17)
    {
      v18 = v17[8];
      if (!v18)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v19 = *(a2 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v17 = sub_1551A70(*v20);
        *(a2 + 40) = v17;
        v18 = v17[8];
        if (!v18)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v17 = sub_1551A70(v20);
        *(a2 + 40) = v17;
        v18 = v17[8];
        if (!v18)
        {
          goto LABEL_19;
        }
      }
    }

    v21 = *(v17 + 14);
    if (v21 < *v18)
    {
      *(v17 + 14) = v21 + 1;
      result = *&v18[2 * v21 + 2];
LABEL_20:
      v23 = *(result + 16);
      *(result + 16) = v23 | 1;
      v24 = *(v4 + 84);
      *(result + 16) = v23 | 3;
      *(result + 24) = 6;
      *(result + 28) = v24;
      return result;
    }

LABEL_19:
    v22 = sub_15519F8(v17[6]);
    result = sub_19593CC((v17 + 6), v22);
    goto LABEL_20;
  }

  return result;
}

std::string *sub_EC8FF0(std::string *result, uint64_t a2)
{
  size = HIBYTE(result[1].__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = result[1].__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v3 = result;
    v4 = HIBYTE(result[6].__r_.__value_.__r.__words[2]);
    if ((v4 & 0x80u) != 0)
    {
      v4 = result[6].__r_.__value_.__l.__size_;
    }

    if (v4)
    {
      v5 = HIBYTE(result[9].__r_.__value_.__r.__words[2]);
      if ((v5 & 0x80u) != 0)
      {
        v5 = result[9].__r_.__value_.__l.__size_;
      }

      if (v5)
      {
        v6 = result->__r_.__value_.__l.__size_;
        v7 = result->__r_.__value_.__r.__words[0];
        if (result->__r_.__value_.__l.__data_ != v6)
        {
          v9 = result[11].__r_.__value_.__s.__data_[0];
          if (v9 == 2)
          {
            v10 = 2;
          }

          else
          {
            v10 = v9 == 1;
          }

          *(a2 + 16) |= 2u;
          *(a2 + 56) = v10;
          do
          {
            sub_64E090(a2, v7);
            v7 = (v7 + 24);
          }

          while (v7 != v6);
          *(a2 + 16) |= 1u;
          v11 = *(a2 + 48);
          if (!v11)
          {
            v12 = *(a2 + 8);
            v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
            if (v12)
            {
              v13 = *v13;
            }

            v11 = sub_16F5DB8(v13);
            *(a2 + 48) = v11;
          }

          *(v11 + 4) |= 1u;
          v14 = v11[1];
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          sub_194EA1C(v11 + 14, (v3 + 24), v15);
          *(v11 + 4) |= 2u;
          v16 = v11[1];
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          sub_194EA1C(v11 + 15, v3 + 3, v17);
          *(v11 + 4) |= 4u;
          v18 = v11[1];
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          sub_194EA1C(v11 + 16, (v3 + 72), v19);
          *(v11 + 4) |= 8u;
          v20 = v11[1];
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          sub_194EA1C(v11 + 17, v3 + 6, v21);
          *(v11 + 4) |= 0x10u;
          v22 = v11[1];
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          sub_194EA1C(v11 + 18, (v3 + 120), v23);
          *(v11 + 4) |= 0x20u;
          v24 = v11[1];
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          sub_194EA1C(v11 + 19, v3 + 9, v25);
          *(v11 + 4) |= 0x40u;
          v26 = v11[1];
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          sub_194EA1C(v11 + 20, (v3 + 168), v27);
          *(v11 + 4) |= 0x80u;
          v28 = v11[1];
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          sub_194EA1C(v11 + 21, v3 + 12, v29);
          *(v11 + 4) |= 0x200u;
          v30 = v11[1];
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (v30)
          {
            v31 = *v31;
          }

          sub_194EA1C(v11 + 23, (v3 + 216), v31);
          *(v11 + 4) |= 0x400u;
          v32 = v11[1];
          v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
          if (v32)
          {
            v33 = *v33;
          }

          return sub_194EA1C(v11 + 24, v3 + 15, v33);
        }
      }
    }
  }

  return result;
}

BOOL sub_EC92BC(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 467) == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *(a4 + 16) |= 0x400u;
  *(a4 + 104) = v4;
  if (*(a2 + 32) == 0x7FFFFFFF || *(a2 + 68) == 0x7FFFFFFF)
  {
    return result;
  }

  v8 = result;
  result = sub_4566B4((a2 + 40));
  if (!result)
  {
    return result;
  }

  v9 = *(a2 + 144);
  if (!v9)
  {
    return result;
  }

  if (v9 == 2)
  {
    v10 = *(a2 + 136);
    if (v10 > 0xFFFFFFFEFFFFFFFFLL || !v10)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v9 != 1)
  {
    sub_5AF20();
  }

  if (*(a2 + 136) != -1)
  {
LABEL_16:
    if (*(v8 + 72) == -1 && *(v8 + 76) == -1)
    {
      return result;
    }

    *(a4 + 16) |= 0x10u;
    v11 = *(a4 + 56);
    if (!v11)
    {
      v12 = *(a4 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_14BC8C8(v13);
      *(a4 + 56) = v11;
    }

    v86 = v8;
    v14 = *(a2 + 32);
    v15 = v14 / 10;
    v16 = v14 % 10;
    if (v14 < 0)
    {
      v17 = -5;
    }

    else
    {
      v17 = 5;
    }

    *(v11 + 16) |= 2u;
    *(v11 + 32) = v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10);
    v18 = sub_3F80((a2 + 40));
    if (v18 < 0)
    {
      v19 = 65036;
    }

    else
    {
      v19 = 500;
    }

    v20 = v19 + v18 % 1000 + ((-31981 * (v19 + v18 % 1000)) >> 16);
    *(v11 + 16) |= 8u;
    *(v11 + 40) = v18 / 1000 + (v20 >> 9) + ((v20 & 0x8000) >> 15);
    v21 = sub_4470E4(a2 + 40);
    v22 = *(v11 + 16);
    *(v11 + 36) = v21;
    *(v11 + 16) = v22 | 5;
    v23 = *(v11 + 24);
    if (!v23)
    {
      v24 = *(v11 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_14BC824(v25);
      *(v11 + 24) = v23;
    }

    v27 = *(a2 + 72);
    v26 = *(a2 + 80);
    if (v27 != v26)
    {
      while (1)
      {
        v28 = *(v23 + 32);
        if (v28 && (v29 = *(v23 + 24), v29 < *v28))
        {
          *(v23 + 24) = v29 + 1;
          v30 = *&v28[2 * v29 + 2];
        }

        else
        {
          v31 = sub_14BC7A8(*(v23 + 16));
          v30 = sub_19593CC(v23 + 16, v31);
        }

        if (*v27 - 1 < 0xA)
        {
          v32 = (*v27 - 1) + 1;
        }

        else
        {
          v32 = 0;
        }

        v33 = v30[4];
        v30[4] = v33 | 1;
        v30[6] = v32;
        v34 = *(v27 + 1);
        if (v34 != 0x7FFFFFFF)
        {
          v36 = v34 / 1000;
          v37 = v34 % 1000;
          if (v34 < 0)
          {
            v38 = 65036;
          }

          else
          {
            v38 = 500;
          }

          v39 = v38 + v37 + ((-31981 * (v38 + v37)) >> 16);
          v40 = v33 | 3;
          v30[4] = v40;
          v30[7] = v36 + (v39 >> 9) + ((v39 & 0x8000) >> 15);
          v41 = *(v27 + 2);
          if (v41 == 0x7FFFFFFF)
          {
            goto LABEL_34;
          }

LABEL_67:
          v45 = v41 / 1000;
          v46 = v41 % 1000;
          if (v41 < 0)
          {
            v47 = 65036;
          }

          else
          {
            v47 = 500;
          }

          v48 = v47 + v46 + ((-31981 * (v47 + v46)) >> 16);
          v30[4] = v40 | 4;
          v30[8] = v45 + (v48 >> 9) + ((v48 & 0x8000) >> 15);
          goto LABEL_34;
        }

        if (sub_7E7E4(3u))
        {
          break;
        }

LABEL_66:
        v40 = v30[4] | 2;
        v30[4] = v40;
        v30[7] = 50000;
        v41 = *(v27 + 2);
        if (v41 != 0x7FFFFFFF)
        {
          goto LABEL_67;
        }

LABEL_34:
        v27 += 16;
        if (v27 == v26)
        {
          goto LABEL_71;
        }
      }

      sub_19594F8(&v93);
      sub_4A5C(&v93, "Maximum power associated to the suggested charger plug is missing, using a default value for now.", 97);
      if ((v102 & 0x10) != 0)
      {
        v42 = v101;
        v43 = v98;
        if (v101 < *&v98[8])
        {
          v101 = *&v98[8];
          v42 = *&v98[8];
          v43 = v98;
        }
      }

      else
      {
        if ((v102 & 8) == 0)
        {
          v35 = 0;
          v92 = 0;
LABEL_61:
          *(&__dst + v35) = 0;
          sub_7E854(&__dst, 3u);
          if (v92 < 0)
          {
            operator delete(__dst);
          }

          v93 = v89;
          *(&v93 + *(v89 - 3)) = v87;
          if (v100 < 0)
          {
            operator delete(*&__p[1]);
          }

          std::locale::~locale(&v95);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_66;
        }

        v42 = v97;
        v43 = &v96;
      }

      v44 = *v43;
      v35 = v42 - *v43;
      if (v35 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v35 >= 0x17)
      {
        operator new();
      }

      v92 = v42 - *v43;
      if (v35)
      {
        memmove(&__dst, v44, v35);
      }

      goto LABEL_61;
    }

LABEL_71:
    v49 = *(a2 + 96);
    v50 = *(a2 + 104);
    if (v49 == v50)
    {
LABEL_110:
      v72 = nullsub_1(*(v86 + 88));
      v73 = *(a4 + 16);
      *(a4 + 96) = v72;
      *(a4 + 16) = v73 | 0x201;
      v74 = *(a4 + 8);
      v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
      if (v74)
      {
        v75 = *v75;
      }

      sub_194EA1C((a4 + 24), v86, v75);
      *(a4 + 16) |= 2u;
      v77 = *(a4 + 32);
      if (!v77)
      {
        v78 = *(a4 + 8);
        v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
        if (v78)
        {
          v79 = *v79;
        }

        v77 = sub_16F5828(v79);
        *(a4 + 32) = v77;
      }

      LODWORD(v76) = *(v86 + 76);
      v80 = exp(v76 * -6.28318531 / 4294967300.0 + 3.14159265);
      v81 = atan((v80 + -1.0 / v80) * 0.5) * 57.2957795;
      v82 = *(v77 + 40);
      *(v77 + 40) = v82 | 1;
      *(v77 + 48) = v81;
      LODWORD(v81) = *(v86 + 72);
      *(v77 + 40) = v82 | 3;
      *(v77 + 56) = *&v81 * 360.0 / 4294967300.0 + -180.0;
      *(a4 + 16) |= 0x40u;
      v83 = *(a4 + 72);
      if (!v83)
      {
        v84 = *(a4 + 8);
        v85 = (v84 & 0xFFFFFFFFFFFFFFFCLL);
        if (v84)
        {
          v85 = *v85;
        }

        v83 = sub_16F5E18(v85);
        *(a4 + 72) = v83;
      }

      sub_EC8FF0((v86 + 96), v83);
      operator new();
    }

    while (1)
    {
      v51 = *(v23 + 56);
      if (v51 && (v52 = *(v23 + 48), v52 < *v51))
      {
        *(v23 + 48) = v52 + 1;
        v53 = *&v51[2 * v52 + 2];
      }

      else
      {
        v54 = sub_14BC7A8(*(v23 + 40));
        v53 = sub_19593CC(v23 + 40, v54);
      }

      if (*v49 - 1 < 0xA)
      {
        v55 = (*v49 - 1) + 1;
      }

      else
      {
        v55 = 0;
      }

      v56 = v53[4];
      v53[4] = v56 | 1;
      v53[6] = v55;
      v57 = *(v49 + 1);
      if (v57 != 0x7FFFFFFF)
      {
        v59 = v57 / 1000;
        v60 = v57 % 1000;
        if (v57 < 0)
        {
          v61 = 65036;
        }

        else
        {
          v61 = 500;
        }

        v62 = v61 + v60 + ((-31981 * (v61 + v60)) >> 16);
        v63 = v56 | 3;
        v53[4] = v63;
        v53[7] = v59 + (v62 >> 9) + ((v62 & 0x8000) >> 15);
        v64 = *(v49 + 2);
        if (v64 == 0x7FFFFFFF)
        {
          goto LABEL_73;
        }

LABEL_106:
        v68 = v64 / 1000;
        v69 = v64 % 1000;
        if (v64 < 0)
        {
          v70 = 65036;
        }

        else
        {
          v70 = 500;
        }

        v71 = v70 + v69 + ((-31981 * (v70 + v69)) >> 16);
        v53[4] = v63 | 4;
        v53[8] = v68 + (v71 >> 9) + ((v71 & 0x8000) >> 15);
        goto LABEL_73;
      }

      if (sub_7E7E4(3u))
      {
        break;
      }

LABEL_105:
      v63 = v53[4] | 2;
      v53[4] = v63;
      v53[7] = 50000;
      v64 = *(v49 + 2);
      if (v64 != 0x7FFFFFFF)
      {
        goto LABEL_106;
      }

LABEL_73:
      v49 += 16;
      if (v49 == v50)
      {
        goto LABEL_110;
      }
    }

    sub_19594F8(&v93);
    sub_4A5C(&v93, "Maximum power associated to the supported charger plug is missing, using a default value for now.", 97);
    if ((v102 & 0x10) != 0)
    {
      v65 = v101;
      v66 = v98;
      if (v101 < *&v98[8])
      {
        v101 = *&v98[8];
        v65 = *&v98[8];
        v66 = v98;
      }
    }

    else
    {
      if ((v102 & 8) == 0)
      {
        v58 = 0;
        v92 = 0;
LABEL_100:
        *(&__dst + v58) = 0;
        sub_7E854(&__dst, 3u);
        if (v92 < 0)
        {
          operator delete(__dst);
        }

        v93 = v90;
        *(&v93 + *(v90 - 3)) = v88;
        if (v100 < 0)
        {
          operator delete(*&__p[1]);
        }

        std::locale::~locale(&v95);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_105;
      }

      v65 = v97;
      v66 = &v96;
    }

    v67 = *v66;
    v58 = v65 - *v66;
    if (v58 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v58 >= 0x17)
    {
      operator new();
    }

    v92 = v65 - *v66;
    if (v58)
    {
      memmove(&__dst, v67, v58);
    }

    goto LABEL_100;
  }

  return result;
}

void sub_EC9F18(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_EC9F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_EC9F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_EC9F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_EC9F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_EC9F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_EC9FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1959728(&a22);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

void sub_EC9FFC(uint64_t *a1, uint64_t a2)
{
  *(a2 + 16) |= 0x20u;
  v3 = *(a2 + 64);
  if (!v3)
  {
    v5 = *(a2 + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      v6 = *v6;
    }

    v3 = sub_14BC948(v6);
    *(a2 + 64) = v3;
  }

  v7 = *a1;
  v8 = a1[1];
  while (v7 != v8)
  {
    v11 = *(v3 + 32);
    if (v11 && (v12 = *(v3 + 24), v12 < *v11))
    {
      *(v3 + 24) = v12 + 1;
      v10 = *&v11[2 * v12 + 2];
    }

    else
    {
      sub_155A67C(*(v3 + 16));
      v10 = sub_19593CC(v3 + 16, v9);
    }

    sub_437268(v7, v10);
    v7 += 72;
  }
}

double sub_ECA0BC(uint64_t a1, uint64_t a2)
{
  result = sub_4470E4(a1);
  *(a2 + 16) |= 2u;
  *(a2 + 32) = result;
  return result;
}

void sub_ECA0F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      while (1)
      {
        v5 = *v2 < 0 ? -50 : 50;
        v6 = *v2 / 100 + ((5243 * (v5 + *v2 % 100)) >> 19) + ((5243 * (v5 + *v2 % 100)) >> 31);
        v7 = *(a2 + 176);
        if (v7 == *(a2 + 180))
        {
          v8 = v7 + 1;
          sub_1958E5C((a2 + 176), v7 + 1);
          *(*(a2 + 184) + 4 * v7) = v6;
        }

        else
        {
          *(*(a2 + 184) + 4 * v7) = v6;
          v8 = v7 + 1;
        }

        *(a2 + 176) = v8;
        v9 = *(v2 + 8) == 1 ? 1 : 4;
        v10 = *(a2 + 152);
        if (v10 != *(a2 + 156))
        {
          break;
        }

        sub_1958E5C((a2 + 152), v10 + 1);
        *(*(a2 + 160) + 4 * v10) = v9;
        *(a2 + 152) = v10 + 1;
        v2 += 16;
        if (v2 == v3)
        {
          return;
        }
      }

      *(*(a2 + 160) + 4 * v10) = v9;
      *(a2 + 152) = v10 + 1;
      v2 += 16;
    }

    while (v2 != v3);
  }
}

uint64_t *sub_ECA238(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      v7 = *(a2 + 168);
      if (v7 && (v8 = *(a2 + 160), v8 < *v7))
      {
        *(a2 + 160) = v8 + 1;
        v9 = *&v7[2 * v8 + 2];
        *(v9 + 16) |= 1u;
        v5 = *(v9 + 24);
        if (!v5)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = sub_14BC020(*(a2 + 152));
        v9 = sub_19593CC(a2 + 152, v10);
        *(v9 + 16) |= 1u;
        v5 = *(v9 + 24);
        if (!v5)
        {
LABEL_13:
          v11 = *(v9 + 8);
          v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          if (v11)
          {
            v12 = *v12;
          }

          sub_14BAE64(v12);
          *(v9 + 24) = v5;
        }
      }

      sub_64E090(v5, (v2 + 16));
      result = sub_754A5C(v2);
      if ((result - 1) >= 3)
      {
        v6 = 0;
      }

      else
      {
        v6 = result;
      }

      *(v9 + 16) |= 2u;
      *(v9 + 32) = v6;
      v2 += 40;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_ECA330(uint64_t *a1, uint64_t a2, long double a3)
{
  v4 = a1[1];
  if (*a1 < 0)
  {
    v5 = -50;
  }

  else
  {
    v5 = 50;
  }

  v6 = *a1 / 100 + ((5243 * (v5 + *a1 % 100)) >> 19) + ((5243 * (v5 + *a1 % 100)) >> 31);
  v7 = v4 / 100;
  v8 = v4 % 100;
  if (v4 < 0)
  {
    v9 = -50;
  }

  else
  {
    v9 = 50;
  }

  *(a2 + 16) |= 3u;
  *(a2 + 72) = v6;
  *(a2 + 76) = v7 + ((5243 * (v9 + v8)) >> 19) + ((5243 * (v9 + v8)) >> 31);
  v11 = a1[2];
  for (i = a1[3]; v11 != i; v11 += 24)
  {
    v20 = *(a2 + 40);
    if (v20 && (v21 = *(a2 + 32), v21 < *v20))
    {
      *(a2 + 32) = v21 + 1;
      v22 = *&v20[2 * v21 + 2];
      *(v22 + 16) |= 1u;
      v12 = *(v22 + 24);
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v23 = sub_14BE2A4(*(a2 + 24));
      v22 = sub_19593CC(a2 + 24, v23);
      *(v22 + 16) |= 1u;
      v12 = *(v22 + 24);
      if (!v12)
      {
LABEL_19:
        v24 = *(v22 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v12 = sub_16F5828(v25);
        *(v22 + 24) = v12;
      }
    }

    LODWORD(a3) = *(v11 + 4);
    v13 = exp(*&a3 * -6.28318531 / 4294967300.0 + 3.14159265);
    a3 = atan((v13 + -1.0 / v13) * 0.5) * 57.2957795;
    v14 = *(v12 + 40);
    *(v12 + 40) = v14 | 1;
    LODWORD(v15) = *v11;
    *(v12 + 40) = v14 | 3;
    *(v12 + 48) = a3;
    *(v12 + 56) = v15 * 360.0 / 4294967300.0 + -180.0;
    v16 = *(v11 + 16);
    v17 = v16 / 100;
    v18 = v16 % 100;
    if (v16 < 0)
    {
      v19 = -50;
    }

    else
    {
      v19 = 50;
    }

    *(v22 + 16) |= 2u;
    *(v22 + 32) = v17 + ((5243 * (v19 + v18)) >> 19) + ((5243 * (v19 + v18)) >> 31);
  }

  v26 = a1[5];
  for (j = a1[6]; v26 != j; v26 += 64)
  {
    v28 = *(a2 + 64);
    if (v28 && (v29 = *(a2 + 56), v29 < *v28))
    {
      *(a2 + 56) = v29 + 1;
      v30 = *&v28[2 * v29 + 2];
      *(v30 + 16) |= 1u;
      v31 = *(v30 + 24);
      if (v31)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v32 = sub_14BE320(*(a2 + 48));
      v30 = sub_19593CC(a2 + 48, v32);
      *(v30 + 16) |= 1u;
      v31 = *(v30 + 24);
      if (v31)
      {
        goto LABEL_32;
      }
    }

    v33 = *(v30 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    sub_16F58FC(v34);
    v31 = v35;
    *(v30 + 24) = v35;
LABEL_32:
    sub_4B6994(v26, v31);
    v36 = *(v26 + 48);
    if (v36 <= 8)
    {
      if (((1 << v36) & 0x1EE) != 0)
      {
        goto LABEL_34;
      }

      if (v36 == 4)
      {
        v39 = *(v30 + 16);
        *(v30 + 16) = v39 | 8;
        *(v30 + 40) = 4;
        v40 = *(v26 + 52);
        v41 = v40 / 10;
        v42 = v40 % 10;
        if (v40 < 0)
        {
          v43 = -5;
        }

        else
        {
          v43 = 5;
        }

        v37 = v39 | 0xA;
        *(v30 + 16) = v37;
        *(v30 + 32) = v41 + (((103 * (v43 + v42)) >> 15) & 1) + ((103 * (v43 + v42)) >> 10);
        v38 = *(v26 + 56);
        if (v38 == 0x7FFFFFFFFFFFFFFFLL)
        {
          continue;
        }

LABEL_35:
        *(v30 + 16) = v37 | 4;
        *(v30 + 36) = v38;
        continue;
      }
    }

    v36 = 1;
LABEL_34:
    v37 = *(v30 + 16) | 8;
    *(v30 + 16) = v37;
    *(v30 + 40) = v36;
    v38 = *(v26 + 56);
    if (v38 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_35;
    }
  }
}

void sub_ECA76C(int a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 248);
  if (v6 == *(a3 + 252))
  {
    sub_1958E5C((a3 + 248), v6 + 1);
    *(*(a3 + 256) + 4 * v6) = a1;
    *(a3 + 248) = v6 + 1;
    v7 = (a3 + 272);
    v8 = *(a3 + 272);
    if (v8 != *(a3 + 276))
    {
LABEL_3:
      *(*(a3 + 280) + 4 * v8) = a2;
      *v7 = v8 + 1;
      return;
    }
  }

  else
  {
    *(*(a3 + 256) + 4 * v6) = a1;
    *(a3 + 248) = v6 + 1;
    v7 = (a3 + 272);
    v8 = *(a3 + 272);
    if (v8 != *(a3 + 276))
    {
      goto LABEL_3;
    }
  }

  sub_1958E5C(v7, v8 + 1);
  *(*(a3 + 280) + 4 * v8) = a2;
  *v7 = v8 + 1;
}

void sub_ECA844(int a1, uint64_t a2)
{
  v4 = (a2 + 264);
  v5 = *(a2 + 264);
  if (v5 == *(a2 + 268))
  {
    sub_1958E5C((a2 + 264), v5 + 1);
    *(*(a2 + 272) + 4 * v5) = a1;
  }

  else
  {
    *(*(a2 + 272) + 4 * v5) = a1;
  }

  *v4 = v5 + 1;
}

uint64_t sub_ECA8CC(int a1)
{
  result = 0;
  if (a1 < 5)
  {
    switch(a1)
    {
      case 2:
        return 1;
      case 3:
        return 2;
      case 4:
        exception = __cxa_allocate_exception(0x40uLL);
        v8 = sub_2D390(exception, "Got invalid route type USER_ROUTE in response.", 0x2EuLL);
    }
  }

  else if (a1 <= 5)
  {
    return 4;
  }

  else
  {
    switch(a1)
    {
      case 6:
        return 5;
      case 7:
        v5 = __cxa_allocate_exception(0x40uLL);
        v6 = sub_2D390(v5, "Got invalid route type ALTERNATE_NON_NAVIGABLE in response.", 0x3BuLL);
      case 8:
        v3 = __cxa_allocate_exception(0x40uLL);
        v4 = sub_2D390(v3, "Got invalid route type UNKNOWN in response.", 0x2BuLL);
    }
  }

  return result;
}

int32x2_t sub_ECA9F0(uint64_t a1, int32x2_t *a2)
{
  a2[2].i32[0] |= 1u;
  v4 = a2[3];
  if (!v4)
  {
    v5 = a2[1];
    v6 = (*&v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5.i8[0])
    {
      v6 = *v6;
    }

    sub_14BAE64(v6);
    v4 = v7;
    a2[3] = v7;
  }

  sub_64D110(a1, v4);
  a2[2].i32[0] |= 6u;
  v8 = *(a1 + 160);
  v9 = vceq_s32(v8, 0x200000002);
  result = vsub_s32(vand_s8(v9, 0x200000002), vbic_s8(vceq_s32(v8, 0x100000001), v9));
  a2[4] = result;
  return result;
}

uint64_t sub_ECAA80(int a1)
{
  if ((a1 - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return (a1 - 1);
  }
}

BOOL sub_ECAA94(uint64_t a1, uint64_t a2)
{
  if (sub_5CBB30(a1))
  {
    *(a2 + 16) |= 1u;
    v5 = *(a2 + 24);
    if (!v5)
    {
      v6 = *(a2 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v5 = sub_14BDABC(v7);
      *(a2 + 24) = v5;
    }

    v8 = *(v5 + 16);
    *(v5 + 28) = *a1;
    v9 = *(a1 + 8);
    *(v5 + 16) = v8 | 0xA;
    *(v5 + 33) = v9;
    if (!sub_5CBB44(a1))
    {
LABEL_3:
      result = sub_5CBB58(a1);
      if (!result)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  else if (!sub_5CBB44(a1))
  {
    goto LABEL_3;
  }

  *(a2 + 16) |= 2u;
  v10 = *(a2 + 32);
  if (!v10)
  {
    v11 = *(a2 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v10 = sub_14BDABC(v12);
    *(a2 + 32) = v10;
  }

  v13 = *(v10 + 16);
  *(v10 + 28) = *(a1 + 16);
  v14 = *(a1 + 24);
  *(v10 + 16) = v13 | 0xA;
  *(v10 + 33) = v14;
  result = sub_5CBB58(a1);
  if (result)
  {
LABEL_15:
    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = v15 / 10;
      v17 = v15 % 10;
      if (v15 < 0)
      {
        v18 = -5;
      }

      else
      {
        v18 = 5;
      }

      *(a2 + 16) |= 4u;
      *(a2 + 40) = v16 + (((103 * (v18 + v17)) >> 15) & 1) + ((103 * (v18 + v17)) >> 10);
    }
  }

  return result;
}

void sub_ECAC00(void *a1, uint64_t a2, long double a3)
{
  for (i = a1[2]; i; i = *i)
  {
    v6 = *(a2 + 40);
    if (v6 && (v7 = *(a2 + 32), v7 < *v6))
    {
      *(a2 + 32) = v7 + 1;
      v8 = *&v6[2 * v7 + 2];
    }

    else
    {
      v9 = sub_16F5828(*(a2 + 24));
      v8 = sub_19593CC(a2 + 24, v9);
    }

    LODWORD(a3) = *(i + 5);
    v10 = exp(*&a3 * -6.28318531 / 4294967300.0 + 3.14159265);
    a3 = atan((v10 + -1.0 / v10) * 0.5) * 57.2957795;
    v11 = *(v8 + 40);
    *(v8 + 40) = v11 | 1;
    LODWORD(v12) = *(i + 4);
    *(v8 + 40) = v11 | 3;
    *(v8 + 48) = a3;
    *(v8 + 56) = v12 * 360.0 / 4294967300.0 + -180.0;
    v13 = *(i + 6);
    if (v13 != 0x7FFFFFFF)
    {
      a3 = v13 / 100.0;
      *(v8 + 40) = v11 | 7;
      *(v8 + 64) = a3;
    }
  }

  *(a2 + 16) |= 1u;
  v14 = *(a2 + 48);
  if (!v14)
  {
    v15 = *(a2 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v14 = sub_1551A70(v16);
    *(a2 + 48) = v14;
  }

  v18 = a1[5];
  v17 = a1[6];
  while (v18 != v17)
  {
    if (*v18 != -1 && v18[1] != -1)
    {
      v24 = v14[8];
      if (v24 && (v25 = *(v14 + 14), v25 < *v24))
      {
        *(v14 + 14) = v25 + 1;
        v20 = *&v24[2 * v25 + 2];
      }

      else
      {
        v19 = sub_15519F8(v14[6]);
        v20 = sub_19593CC((v14 + 6), v19);
      }

      v21 = *v18;
      v22 = v20[4];
      v20[4] = v22 | 1;
      v20[6] = v21;
      v23 = v18[1];
      v20[4] = v22 | 3;
      v20[7] = v23;
    }

    v18 += 2;
  }
}

void sub_ECAE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_734C10(a1))
  {
    *(a3 + 40) |= 1u;
    v6 = *(a3 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_194EA1C((a3 + 48), a1, v7);
  }

  if (sub_734C10(a1 + 32) && *(a2 + 1) == 1)
  {
    *(a3 + 40) |= 2u;
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    sub_194EA1C((a3 + 56), (a1 + 32), v9);
    v10 = *(a1 + 60);
    if (v10 == 3)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    if (v10 == 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    *(a3 + 40) |= 0x20u;
    *(a3 + 84) = v12;
  }

  v13 = *(a1 + 120) - 1;
  if (v13 <= 3)
  {
    v14 = dword_22ADCF0[v13];
    *(a3 + 40) |= 0x40u;
    *(a3 + 88) = v14;
    if (!sub_7345C4(a1 + 64))
    {
LABEL_18:
      if (*(a2 + 6) != 1)
      {
        return;
      }

LABEL_24:
      if (!sub_1232EB4((a1 + 24)))
      {
        return;
      }

      v18 = sub_1232E84((a1 + 24));
      v19 = (v18 + 16 * (*(v18 + 8) > 7uLL));
      *(a3 + 40) |= 8u;
      v20 = *(a3 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
        v22 = strlen(v19);
        if (v22 < 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = strlen(v19);
        if (v22 < 0x7FFFFFFFFFFFFFF8)
        {
LABEL_27:
          v23 = v22;
          if (v22 >= 0x17)
          {
            operator new();
          }

          v25 = v22;
          if (v22)
          {
            memmove(&__dst, v19, v22);
          }

          *(&__dst + v23) = 0;
          sub_194EA1C((a3 + 72), &__dst, v21);
          if (v25 < 0)
          {
            operator delete(__dst);
          }

          return;
        }
      }

      sub_3244();
    }
  }

  else if (!sub_7345C4(a1 + 64))
  {
    goto LABEL_18;
  }

  *(a3 + 40) |= 4u;
  v15 = *(a3 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  sub_194EA1C((a3 + 64), (a1 + 72), v16);
  v17 = *(a1 + 64);
  *(a3 + 40) |= 0x10u;
  *(a3 + 80) = v17;
  if (*(a2 + 6) == 1)
  {
    goto LABEL_24;
  }
}

void sub_ECB0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ECB0E0(__int128 **a1, uint64_t a2)
{
  *(a2 + 16) |= 1u;
  v4 = *(a2 + 24);
  if (!v4)
  {
    v5 = *(a2 + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      v6 = *v6;
    }

    sub_14BAE64(v6);
    v4 = v7;
    *(a2 + 24) = v7;
  }

  sub_64D110(a1, v4);
  *(a2 + 16) |= 2u;
  v8 = *(a2 + 32);
  if (!v8)
  {
    v9 = *(a2 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    sub_14BAE64(v10);
    v8 = v11;
    *(a2 + 32) = v11;
  }

  sub_64D110(a1 + 20, v8);
  *(a2 + 16) |= 4u;
  v12 = *(a2 + 40);
  if (!v12)
  {
    v13 = *(a2 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_14BB040(v14);
    v12 = v15;
    *(a2 + 40) = v15;
  }

  sub_74E3A0((a1 + 40), v12);
  *(a2 + 16) |= 8u;
  v16 = *(a2 + 48);
  if (v16)
  {
    v17 = (a1 + 220);
  }

  else
  {
    v18 = *(a2 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_14BB040(v19);
    v16 = v20;
    *(a2 + 48) = v20;
    v17 = (a1 + 220);
  }

  sub_74E3A0(v17, v16);
}

uint64_t sub_ECB220(unsigned int *a1, _DWORD *a2)
{
  if (sub_3F80(a1) == 0x7FFFFFFF)
  {
    v4 = sub_5AAC4(a1);
  }

  else
  {
    v4 = sub_3F80(a1);
  }

  if (v4 < 0)
  {
    v5 = 65036;
  }

  else
  {
    v5 = 500;
  }

  v6 = v5 + v4 % 1000 + ((-31981 * (v5 + v4 % 1000)) >> 16);
  a2[4] |= 2u;
  a2[7] = v4 / 1000 + (v6 >> 9) + ((v6 & 0x8000) >> 15);
  result = sub_4470E4(a1);
  a2[4] |= 1u;
  a2[6] = result;
  return result;
}

uint64_t sub_ECB2E4(unsigned int a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return dword_22ADAB8[a1];
  }
}

uint64_t sub_ECB304(int a1)
{
  if ((a1 - 1) > 0x28)
  {
    return 0;
  }

  else
  {
    return dword_22ADAE0[a1 - 1];
  }
}

int32x2_t sub_ECB328(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!*a1)
  {
    v4 |= 4u;
    *(a2 + 64) = 0;
  }

  *(a2 + 68) = vmovn_s64(*(a1 + 8));
  *(a2 + 76) = *(a1 + 576);
  *(a2 + 16) = v4 | 0x39;
  v5 = *(a2 + 48);
  if (!v5)
  {
    v6 = *(a2 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    v5 = sub_1551A70(v7);
    *(a2 + 48) = v5;
  }

  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  while (v8 != v9)
  {
    if (*v8 != -1 && v8[1] != -1)
    {
      v15 = v5[8];
      if (v15 && (v16 = *(v5 + 14), v16 < *v15))
      {
        *(v5 + 14) = v16 + 1;
        v11 = *&v15[2 * v16 + 2];
      }

      else
      {
        v10 = sub_15519F8(v5[6]);
        v11 = sub_19593CC((v5 + 6), v10);
      }

      v12 = *v8;
      v13 = v11[4];
      v11[4] = v13 | 1;
      v11[6] = v12;
      v14 = v8[1];
      v11[4] = v13 | 3;
      v11[7] = v14;
    }

    v8 += 2;
  }

  if (sub_685BAC(a1))
  {
    *(a2 + 16) |= 2u;
    v18 = *(a2 + 56);
    if (v18)
    {
      *(v18 + 16) |= 1u;
      v19 = *(v18 + 24);
      if (v19)
      {
LABEL_27:
        sub_64D110((a1 + 96), v19);
        *(v18 + 16) |= 2u;
        v26 = *(v18 + 32);
        if (!v26)
        {
          v27 = *(v18 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          sub_14BAE64(v28);
          v26 = v29;
          *(v18 + 32) = v29;
        }

        sub_64D110((a1 + 256), v26);
        *(v18 + 16) |= 4u;
        v31 = *(v18 + 40);
        if (!v31)
        {
          v32 = *(v18 + 8);
          v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
          if (v32)
          {
            v33 = *v33;
          }

          v31 = sub_14BF484(v33);
          *(v18 + 40) = v31;
        }

        sub_586C94(a1 + 416, v31, v30);
        *(v18 + 16) |= 8u;
        v34 = *(v18 + 48);
        if (!v34)
        {
          v35 = *(v18 + 8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v36 = *v36;
          }

          v34 = sub_1551A70(v36);
          *(v18 + 48) = v34;
        }

        v37 = *(a1 + 528);
        v38 = *(a1 + 536);
        while (v37 != v38)
        {
          if (*v37 != -1 && v37[1] != -1)
          {
            v44 = v34[8];
            if (v44 && (v45 = *(v34 + 14), v45 < *v44))
            {
              *(v34 + 14) = v45 + 1;
              v40 = *&v44[2 * v45 + 2];
            }

            else
            {
              v39 = sub_15519F8(v34[6]);
              v40 = sub_19593CC((v34 + 6), v39);
            }

            v41 = *v37;
            v42 = v40[4];
            v40[4] = v42 | 1;
            v40[6] = v41;
            v43 = v37[1];
            v40[4] = v42 | 3;
            v40[7] = v43;
          }

          v37 += 2;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v20 = *(a2 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      sub_14BA464(v21);
      v18 = v22;
      *(a2 + 56) = v22;
      *(v22 + 16) |= 1u;
      v19 = *(v22 + 24);
      if (v19)
      {
        goto LABEL_27;
      }
    }

    v23 = *(v18 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    sub_14BAE64(v24);
    v19 = v25;
    *(v18 + 24) = v25;
    goto LABEL_27;
  }

LABEL_49:
  v46 = *(a1 + 552);
  v47 = *(a1 + 560);
  while (v46 != v47)
  {
    v52 = *(a2 + 40);
    if (v52 && (v53 = *(a2 + 32), v53 < *v52))
    {
      *(a2 + 32) = v53 + 1;
      v49 = *&v52[2 * v53 + 2];
    }

    else
    {
      v48 = sub_14BA4E4(*(a2 + 24));
      v49 = sub_19593CC(a2 + 24, v48);
    }

    v50 = v49[2].i32[0];
    result = vmovn_s64(*v46);
    v49[3] = result;
    v51 = v46[1].i64[0];
    v49[2].i32[0] = v50 | 7;
    v49[4].i32[0] = v51;
    v46 = (v46 + 24);
  }

  return result;
}

uint64_t sub_ECB694(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  v5 = *(result + 8);
  if (*result != v5)
  {
    do
    {
      v6 = *(a2 + 40);
      if (v6 && (v7 = *(a2 + 32), v7 < *v6))
      {
        *(a2 + 32) = v7 + 1;
        result = *&v6[2 * v7 + 2];
      }

      else
      {
        v8 = sub_14BA608(*(a2 + 24));
        result = sub_19593CC(a2 + 24, v8);
      }

      v9 = *v4;
      v10 = *(result + 16);
      *(result + 16) = v10 | 1;
      *(result + 24) = v9;
      if (*(v4 + 2) == 1)
      {
        *(result + 16) = v10 | 5;
        *(result + 32) = 2;
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  v11 = *(v3 + 24);
  if (v11 < 2)
  {
    *(a2 + 16) |= 1u;
    *(a2 + 48) = v11;
  }

  if (*(v3 + 32) == 1)
  {
    v12 = 0;
  }

  else
  {
    if (*(v3 + 32))
    {
      return result;
    }

    v12 = 1;
  }

  *(a2 + 16) |= 4u;
  *(a2 + 56) = v12;
  return result;
}

uint64_t sub_ECB7A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_588D8(a1);
  *(a2 + 16) |= 1u;
  *(a2 + 24) = v4;
  result = sub_588E0(a1);
  *(a2 + 16) |= 2u;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_ECB7F4(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

std::string *sub_ECB804(__int128 *a1, uint64_t a2)
{
  *(a2 + 16) |= 1u;
  v4 = *(a2 + 8);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
  if (v4)
  {
    v5 = *v5;
  }

  sub_194EA1C((a2 + 24), a1, v5);
  *(a2 + 16) |= 2u;
  v6 = *(a2 + 8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if (v6)
  {
    v7 = *v7;
    v8 = (a2 + 32);
    v9 = (a1 + 24);
  }

  else
  {
    v8 = (a2 + 32);
    v9 = (a1 + 24);
  }

  return sub_194EA1C(v8, v9, v7);
}

uint64_t sub_ECB8AC(unsigned int a1)
{
  if (a1 > 0x59)
  {
    return 0;
  }

  else
  {
    return dword_22ADB84[a1];
  }
}

uint64_t sub_ECB8CC(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_ECB8D8()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BD150 = 0u;
  unk_27BD160 = 0u;
  dword_27BD170 = 1065353216;
  sub_3A9A34(&xmmword_27BD150, v0);
  sub_3A9A34(&xmmword_27BD150, v3);
  sub_3A9A34(&xmmword_27BD150, __p);
  sub_3A9A34(&xmmword_27BD150, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_ECBAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27BD150);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_ECBB20(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  v5[23] = 15;
  strcpy(v5, "ResponseBuilder");
  memset(v4, 0, sizeof(v4));
  v3 = sub_3AEC94(a2, v5, v4);
  sub_41D598(v3, &v6);
  sub_ED2100();
}

void sub_ECBC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_ECBCC0(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1757EA4(a5, 0, 0);
  v8 = *a2;
  v129 = a2[1];
  v130 = a2;
  if (*a2 == v129)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_155:
      *(a5 + 40) |= 0x400000u;
      *(a5 + 552) = 20;
      return;
    }

    sub_19594F8(__p);
    sub_4A5C(__p, "No routes found", 15);
    if ((v144 & 0x10) != 0)
    {
      v126 = v143;
      if (v143 < v139)
      {
        v143 = v139;
        v126 = v139;
      }

      v127 = v138;
      v75 = v126 - v138;
      if (v126 - v138 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if ((v144 & 8) == 0)
      {
        v75 = 0;
        v133 = 0;
LABEL_150:
        *(&__dst + v75) = 0;
        sub_7E854(&__dst, 1u);
        if (v133 < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v142) < 0)
        {
          operator delete(v140);
        }

        std::locale::~locale(&v135);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_155;
      }

      v127 = locale;
      v75 = v137 - locale;
      if ((v137 - locale) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_158:
        sub_3244();
      }
    }

    if (v75 >= 0x17)
    {
      operator new();
    }

    v133 = v75;
    if (v75)
    {
      memmove(&__dst, v127, v75);
    }

    goto LABEL_150;
  }

  do
  {
    v9 = *(a5 + 64);
    if (v9 && (v10 = *(a5 + 56), v10 < *v9))
    {
      *(a5 + 56) = v10 + 1;
      v11 = *&v9[2 * v10 + 2];
    }

    else
    {
      v12 = sub_14BD738(*(a5 + 48));
      v11 = sub_19593CC(a5 + 48, v12);
    }

    v13 = sub_68DB24(v8);
    *(v11 + 40) |= 4u;
    v14 = *(v11 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    HIBYTE(v135.__locale_) = 4;
    LODWORD(__p[0]) = v13;
    BYTE4(__p[0]) = 0;
    sub_194EA1C((v11 + 720), __p, v15);
    if (SHIBYTE(v135.__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = sub_68D7F4(v8);
    v17 = sub_ECA8CC(v16);
    *(v11 + 40) |= 0x1000000u;
    *(v11 + 884) = v17;
    if (sub_68D828(v8, 4))
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_68D828(v8, 9);
    }

    *(v11 + 44) |= 1u;
    *(v11 + 916) = v18 ^ 1;
    v19 = sub_68D828(v8, 5);
    *(v11 + 44) |= 2u;
    *(v11 + 917) = v19 ^ 1;
    sub_ECCB58(a1, v8, v11);
    v20 = sub_68F8AC();
    v21 = sub_EC7E7C(v20);
    *(v11 + 40) |= 0x200000u;
    *(v11 + 872) = v21;
    v22 = sub_68C454(v8, 0);
    v23 = sub_EC7E9C(*(v22 + 1097));
    *(v11 + 40) |= 0x2000000u;
    *(v11 + 888) = v23;
    v24 = sub_68DEC0(v8);
    v25 = *v24;
    v26 = v24[1];
    if (*v24 != v26)
    {
      while (1)
      {
        v45 = *(v11 + 144);
        if (v45 && (v46 = *(v11 + 136), v46 < *v45))
        {
          *(v11 + 136) = v46 + 1;
          v47 = *&v45[2 * v46 + 2];
        }

        else
        {
          v48 = *(v11 + 128);
          if (!v48)
          {
            operator new();
          }

          *v50 = v49;
          v50[1] = sub_195A650;
          *v49 = 0;
          v49[1] = 0;
          v49[2] = 0;
          v47 = sub_19593CC(v11 + 128, v49);
        }

        if (v25 == v47)
        {
          goto LABEL_40;
        }

        v51 = *(v25 + 23);
        if (*(v47 + 23) < 0)
        {
          break;
        }

        if ((*(v25 + 23) & 0x80) != 0)
        {
          sub_13A68(v47, *v25, *(v25 + 1));
LABEL_40:
          v25 = (v25 + 24);
          if (v25 == v26)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v52 = *v25;
          *(v47 + 16) = *(v25 + 2);
          *v47 = v52;
          v25 = (v25 + 24);
          if (v25 == v26)
          {
            goto LABEL_14;
          }
        }
      }

      if (v51 >= 0)
      {
        v43 = v25;
      }

      else
      {
        v43 = *v25;
      }

      if (v51 >= 0)
      {
        v44 = *(v25 + 23);
      }

      else
      {
        v44 = *(v25 + 1);
      }

      sub_13B38(v47, v43, v44);
      goto LABEL_40;
    }

LABEL_14:
    v27 = sub_68DDC0(v8);
    v28 = *v27;
    v29 = v27[1];
    if (*v27 != v29)
    {
      while (1)
      {
        v55 = *(v11 + 312);
        if (v55 && (v56 = *(v11 + 304), v56 < *v55))
        {
          *(v11 + 304) = v56 + 1;
          v57 = *&v55[2 * v56 + 2];
          v58 = *(v57 + 40);
          if (!v58)
          {
            goto LABEL_68;
          }
        }

        else
        {
          sub_14BAE64(*(v11 + 296));
          v57 = sub_19593CC(v11 + 296, v59);
          v58 = *(v57 + 40);
          if (!v58)
          {
            goto LABEL_68;
          }
        }

        v60 = *(v57 + 32);
        if (v60 >= *v58)
        {
LABEL_68:
          v62 = *(v57 + 24);
          if (!v62)
          {
            operator new();
          }

          *v64 = v63;
          v64[1] = sub_195A650;
          *v63 = 0;
          v63[1] = 0;
          v63[2] = 0;
          v61 = sub_19593CC(v57 + 24, v63);
          goto LABEL_71;
        }

        *(v57 + 32) = v60 + 1;
        v61 = *&v58[2 * v60 + 2];
LABEL_71:
        if (v28 == v61)
        {
LABEL_60:
          v28 += 3;
          if (v28 == v29)
          {
            break;
          }
        }

        else
        {
          v65 = *(v28 + 23);
          if (*(v61 + 23) < 0)
          {
            if (v65 >= 0)
            {
              v53 = v28;
            }

            else
            {
              v53 = *v28;
            }

            if (v65 >= 0)
            {
              v54 = *(v28 + 23);
            }

            else
            {
              v54 = v28[1];
            }

            sub_13B38(v61, v53, v54);
            goto LABEL_60;
          }

          if ((*(v28 + 23) & 0x80) != 0)
          {
            sub_13A68(v61, *v28, v28[1]);
            goto LABEL_60;
          }

          v66 = *v28;
          *(v61 + 16) = v28[2];
          *v61 = v66;
          v28 += 3;
          if (v28 == v29)
          {
            break;
          }
        }
      }
    }

    v30 = sub_68DE5C(v8);
    if (!sub_4D1F6C(v30))
    {
      v31 = sub_68DE5C(v8);
      *(v11 + 40) |= 0x2000u;
      v32 = *(v11 + 808);
      if (!v32)
      {
        v33 = *(v11 + 8);
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v34 = *v34;
        }

        sub_14BAE64(v34);
        v32 = v35;
        *(v11 + 808) = v35;
      }

      sub_64D110(v31, v32);
    }

    sub_ECCE4C(a1, v8, a3, v11);
    v36 = sub_68C454(v8, 0);
    v37 = v36;
    if (v36[1503] != v36[1504] && v36[1501] != 0x7FFFFFFFFFFFFFFFLL && v36[1502] != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v11 + 40) |= 0x4000u;
      v38 = *(v11 + 816);
      if (!v38)
      {
        v39 = *(v11 + 8);
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v40 = *v40;
        }

        sub_14BBF6C(v40);
        v38 = v41;
        *(v11 + 816) = v41;
      }

      sub_EC8758(v37 + 1501, v38);
    }

    sub_ECCFB0(a1, v8, v11);
    v42 = nullsub_1(v8);
    if (-1189124953 * ((v42[1] - *v42) >> 4))
    {
      sub_68C454(v8, 0);
      sub_ECE580(a1);
    }

    sub_ECD094(a1, v8, v11);
    v8 += 976;
  }

  while (v8 != v129);
  v67 = sub_3B2A90(*a1);
  v69 = *a2;
  v68 = a2[1];
  if (*a2 == v68)
  {
LABEL_83:
    v74 = 1;
  }

  else
  {
    v70 = v67;
    while (1)
    {
      v71 = nullsub_1(v69);
      v73 = *v71;
      v72 = v71[1];
      if (*v71 != v72)
      {
        break;
      }

LABEL_82:
      v69 += 976;
      if (v69 == v68)
      {
        goto LABEL_83;
      }
    }

    while (sub_4B7810(v70, v73, *(a3 + 40)) == 2)
    {
      v73 += 12656;
      if (v73 == v72)
      {
        goto LABEL_82;
      }
    }

    v74 = 0;
  }

  *(a5 + 40) |= 0x4000000u;
  *(a5 + 565) = v74;
  v77 = *v130;
  v76 = v130[1];
  if (*v130 == v76)
  {
LABEL_94:
    v81 = 0;
  }

  else
  {
    while (1)
    {
      v78 = nullsub_1(v77);
      v79 = *v78;
      v80 = *(v78 + 8);
      if (*v78 != v80)
      {
        break;
      }

LABEL_93:
      v77 += 7808;
      if (v77 == v76)
      {
        goto LABEL_94;
      }
    }

    while (1)
    {
      sub_4D1DDC(v79, __p);
      __dst = a1;
      if (sub_EDE414(__p[0], __p[1], v135.__locale_, locale, &__dst))
      {
        break;
      }

      v79 += 1582;
      if (v79 == v80)
      {
        goto LABEL_93;
      }
    }

    v81 = 1;
  }

  *(a5 + 40) |= 0x10000000u;
  *(a5 + 567) = v81;
  if (*a3 == 1)
  {
    sub_ECD4F0(a1[1], v130, a5);
  }

  v82 = 0x4FBCDA3AC10C9715 * ((v130[1] - *v130) >> 7);
  if (v82 >= 1)
  {
    v83 = 0;
    v84 = v82 & 0x7FFFFFFF;
    do
    {
      v85 = *(*(a5 + 64) + 8 * v83 + 8);
      v86 = nullsub_1(&(*v130)[7808 * v83]);
      v88 = *v86;
      v87 = v86[1];
      if (*v86 != v87)
      {
        v89 = (v88 + 7392);
        do
        {
          if (v89[619] == v89[620])
          {
            sub_EC6B44(v89, v85);
          }

          else
          {
            sub_ECA0F4((v88 + 12344), v85);
          }

          v88 += 12656;
          v89 += 1582;
        }

        while (v88 != v87);
      }

      ++v83;
    }

    while (v83 != v84);
  }

  sub_ECD828(a1, v130, a5);
  v92 = *a4;
  v91 = a4[1];
  if (*a4 != v91)
  {
    do
    {
      v93 = *(a5 + 136);
      if (v93 && (v94 = *(a5 + 128), v94 < *v93))
      {
        *(a5 + 128) = v94 + 1;
        v95 = *&v93[2 * v94 + 2];
      }

      else
      {
        v96 = sub_14BDE5C(*(a5 + 120));
        v95 = sub_19593CC(a5 + 120, v96);
      }

      sub_EC6F6C(v92, v95, 0, v90);
      v92 += 1120;
    }

    while (v92 != v91);
  }

  sub_ECDC24(a1, v130, a5);
  v97 = sub_1950D4C((a5 + 16), dword_278CFF0, 11, &off_2769490, 0);
  v98 = sub_68C454(*v130, 0);
  *(v97 + 16) |= 1u;
  v99 = *(v97 + 8);
  v100 = (v99 & 0xFFFFFFFFFFFFFFFCLL);
  if (v99)
  {
    v100 = *v100;
  }

  sub_194EA1C((v97 + 48), (v98 + 7464), v100);
  v101 = sub_3AF114(*a1);
  v102 = sub_2D5630(*v101);
  v103 = *(a5 + 40);
  *(a5 + 566) = v102;
  *(a5 + 40) = v103 | 0x8400000;
  *(a5 + 552) = 0;
  if (*(a3 + 32) == 1)
  {
    sub_EE8048(__p, a3);
    v104 = -1056139499 * ((v130[1] - *v130) >> 7);
    if (v104 >= 1)
    {
      sub_EE807C(__p, *v130, *(*(a5 + 64) + 8));
      v105 = sub_1950D4C((a5 + 16), dword_278CFF0, 11, &off_2769490, 0);
      v106 = sub_68E91C(*v130);
      *(v105 + 16) |= 2u;
      v107 = *(v105 + 8);
      v108 = (v107 & 0xFFFFFFFFFFFFFFFCLL);
      if (v107)
      {
        v108 = *v108;
      }

      sub_194EA1C((v105 + 56), v106, v108);
      v109 = (v104 & 0x7FFFFFFF) - 1;
      if ((v104 & 0x7FFFFFFF) != 1)
      {
        v110 = 16;
        v111 = 7808;
        do
        {
          sub_EE807C(__p, &(*v130)[v111], *(*(a5 + 64) + v110));
          v111 += 7808;
          v110 += 8;
          --v109;
        }

        while (v109);
      }

      v112 = 0x4FBCDA3AC10C9715 * ((v130[1] - *v130) >> 7);
      if (v112 >= 1)
      {
        v113 = 0;
        v114 = v112 & 0x7FFFFFFF;
        do
        {
          v115 = *(*(a5 + 64) + 8 * v113 + 8);
          v116 = &(*v130)[7808 * v113];
          v117 = nullsub_1(v116);
          v118 = v117[1] - *v117;
          if (v118)
          {
            v119 = 0;
            v120 = 0x5DDB1ADCB91F64A7 * (v118 >> 4);
            do
            {
              v121 = sub_68C454(v116, v119);
              sub_ED0B64(a1, v121, v113, v119++, v115, a5);
            }

            while (v120 != v119);
          }

          ++v113;
        }

        while (v113 != v114);
      }
    }
  }

  else
  {
    sub_EA7200(__p, a3);
    v122 = 0x4FBCDA3AC10C9715 * ((v130[1] - *v130) >> 7);
    if (v122 >= 1)
    {
      v123 = 0;
      v124 = v122 & 0x7FFFFFFF;
      v125 = 8;
      do
      {
        sub_EA7244(__p, &(*v130)[v123], *(*(a5 + 64) + v125));
        v123 += 7808;
        v125 += 8;
        --v124;
      }

      while (v124);
    }
  }

  __p[0] = &off_2674490;
  if (v149)
  {
    v150 = v149;
    operator delete(v149);
  }

  if (v148 < 0)
  {
    operator delete(v147);
  }

  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  if (v141)
  {
    v142 = v141;
    operator delete(v141);
  }

  if (v135.__locale_)
  {
    locale = v135.__locale_;
    operator delete(v135.__locale_);
  }
}

void sub_ECCA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1959728(&a19);
    sub_1758FB8(a12);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a19);
  sub_1758FB8(a12);
  _Unwind_Resume(a1);
}

void sub_ECCABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_EDE138(va);
  sub_1758FB8(a5);
  _Unwind_Resume(a1);
}

void sub_ECCAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1758FB8(a12);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xECCB48);
}

void sub_ECCB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_EDE138(va);
  sub_1758FB8(a5);
  _Unwind_Resume(a1);
}

uint64_t sub_ECCB58(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v5 = sub_68C7DC(a2);
  if (v5 < 0)
  {
    v6 = -50;
  }

  else
  {
    v6 = 50;
  }

  a3[10] |= 0x400000u;
  a3[219] = v5 / 100 + ((5243 * (v6 + v5 % 100)) >> 19) + ((5243 * (v6 + v5 % 100)) >> 31);
  v7 = sub_68C850(a2);
  if (v7 < 0)
  {
    v8 = -5;
  }

  else
  {
    v8 = 5;
  }

  a3[10] |= 0x800000u;
  a3[220] = v7 / 10 + (((103 * (v8 + v7 % 10)) >> 15) & 1) + ((103 * (v8 + v7 % 10)) >> 10);
  if (sub_68C900(a2))
  {
    v10 = sub_68C8EC(a2);
    if (v10 < 0)
    {
      v11 = -5;
    }

    else
    {
      v11 = 5;
    }

    a3[10] |= 0x80000000;
    a3[228] = v10 / 10 + (((103 * (v11 + v10 % 10)) >> 15) & 1) + ((103 * (v11 + v10 % 10)) >> 10);
    if (!sub_68C99C(a2))
    {
LABEL_9:
      if (!sub_68CAD4(a2))
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if (!sub_68C99C(a2))
  {
    goto LABEL_9;
  }

  v12 = sub_68C988(a2);
  if (v12 < 0)
  {
    v13 = -5;
  }

  else
  {
    v13 = 5;
  }

  a3[10] |= 0x10000000u;
  a3[225] = v12 / 10 + (((103 * (v13 + v12 % 10)) >> 15) & 1) + ((103 * (v13 + v12 % 10)) >> 10);
  if (!sub_68CAD4(a2))
  {
LABEL_10:
    result = sub_68CA38(a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_24;
  }

LABEL_20:
  v14 = sub_68CAC0(a2);
  if (v14 < 0)
  {
    v15 = -5;
  }

  else
  {
    v15 = 5;
  }

  a3[10] |= 0x40000000u;
  a3[227] = v14 / 10 + (((103 * (v15 + v14 % 10)) >> 15) & 1) + ((103 * (v15 + v14 % 10)) >> 10);
  result = sub_68CA38(a2);
  if (result)
  {
LABEL_24:
    result = sub_68CA24(a2);
    if (result < 0)
    {
      v16 = -5;
    }

    else
    {
      v16 = 5;
    }

    a3[10] |= 0x20000000u;
    a3[226] = result / 10 + (((103 * (v16 + result % 10)) >> 15) & 1) + ((103 * (v16 + result % 10)) >> 10);
  }

  return result;
}

std::string *sub_ECCE4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_68EC38(a2, *(a3 + 39));
  if (!result)
  {
    return result;
  }

  v8 = sub_58BBC(a2);
  v9 = *v8;
  v10 = v8[1];
  while (v9 != v10)
  {
    v12 = *(a4 + 216);
    if (v12 && (v13 = *(a4 + 208), v13 < *v12))
    {
      *(a4 + 208) = v13 + 1;
      v14 = *&v12[2 * v13 + 2];
      *(v14 + 16) |= 1u;
      v11 = *(v14 + 48);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = sub_14BD508(*(a4 + 200));
      v14 = sub_19593CC(a4 + 200, v15);
      *(v14 + 16) |= 1u;
      v11 = *(v14 + 48);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    v16 = *(v14 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v11 = sub_16F5CD4(v17);
    *(v14 + 48) = v11;
LABEL_4:
    sub_ECAE3C(v9, a3, v11);
    v9 += 176;
  }

  result = sub_58BBC(a2);
  if (result->__r_.__value_.__r.__words[0] != result->__r_.__value_.__l.__size_)
  {
    v18 = *sub_58BBC(a2);
    *(a4 + 40) |= 1u;
    v19 = *(a4 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    return sub_194EA1C((a4 + 704), v18, v20);
  }

  return result;
}

void sub_ECCFB0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = nullsub_1(a2);
  v6 = v5[1] - *v5;
  if (v6)
  {
    v7 = 0;
    v8 = 0x5DDB1ADCB91F64A7 * (v6 >> 4);
    do
    {
      v9 = sub_68C454(a2, v7);
      v10 = *(v9 + 12272);
      v11 = *(v9 + 12280);
      while (v10 != v11)
      {
        v14 = *(a3 + 240);
        if (v14 && (v15 = *(a3 + 232), v15 < *v14))
        {
          *(a3 + 232) = v15 + 1;
          v13 = *&v14[2 * v15 + 2];
        }

        else
        {
          sub_14BE174(*(a3 + 224));
          v13 = sub_19593CC(a3 + 224, v12);
        }

        sub_EC8AE4(v10, v13);
        v10 += 616;
      }

      ++v7;
    }

    while (v7 != v8);
  }
}

void sub_ECD094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 1)
  {
    v5 = sub_3B1D8C(*a1);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v6 = nullsub_1(a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        if (!sub_69AE68(v7))
        {
          goto LABEL_4;
        }

        v9 = sub_73F54(v7);
        sub_2AD1B4(v5, *(v9 + 104), *(v9 + 112), &v31);
        v10 = v44;
        if (v44 >= v45)
        {
          v13 = v43;
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v43) >> 2);
          v15 = v14 + 1;
          if (v14 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v45 - v43) >> 2) > v15)
          {
            v15 = 0x5555555555555556 * ((v45 - v43) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v45 - v43) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v16 = 0x1555555555555555;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            if (v16 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v17 = 4 * ((v44 - v43) >> 2);
          *v17 = v38;
          *(v17 + 8) = v39;
          v18 = 12 * v14 + 12;
          v19 = (12 * v14 - (v10 - v13));
          memcpy((v17 - (v10 - v13)), v13, v10 - v13);
          v43 = v19;
          v44 = v18;
          v45 = 0;
          if (v13)
          {
            operator delete(v13);
          }

          v44 = v18;
          sub_99F0C(v42);
          v12 = __p;
          if (!__p)
          {
LABEL_8:
            if ((v37 & 0x80000000) == 0)
            {
              goto LABEL_9;
            }

            goto LABEL_31;
          }
        }

        else
        {
          v11 = v38;
          *(v44 + 2) = v39;
          *v10 = v11;
          v44 = v10 + 12;
          sub_99F0C(v42);
          v12 = __p;
          if (!__p)
          {
            goto LABEL_8;
          }
        }

        v20 = v41;
        if (v41 == v12)
        {
          v41 = v12;
          operator delete(v12);
          if ((v37 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          do
          {
            v21 = *(v20 - 1);
            v20 -= 3;
            if (v21 < 0)
            {
              operator delete(*v20);
            }
          }

          while (v20 != v12);
          v41 = v12;
          operator delete(__p);
          if ((v37 & 0x80000000) == 0)
          {
LABEL_9:
            if ((v35 & 0x80000000) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_32;
          }
        }

LABEL_31:
        operator delete(v36);
        if ((v35 & 0x80000000) == 0)
        {
LABEL_10:
          if (SHIBYTE(v33) < 0)
          {
            goto LABEL_33;
          }

          goto LABEL_4;
        }

LABEL_32:
        operator delete(v34);
        if (SHIBYTE(v33) < 0)
        {
LABEL_33:
          operator delete(v31);
        }

LABEL_4:
        v7 += 12656;
      }

      while (v7 != v8);
    }

    v31 = 0;
    v32 = 0;
    v33 = 0;
    HIBYTE(v30[2]) = 17;
    strcpy(v30, "Charging Stations");
    sub_EAC188(&v31, &v43, v30, 0xFFFFFFFF, 0, 0, 0.0);
    if (SHIBYTE(v30[2]) < 0)
    {
      operator delete(v30[0]);
    }

    sub_EAC680(&v31, v30);
    v22 = v30[0];
    v23 = v30[1];
    if (v30[0] != v30[1])
    {
      do
      {
        v24 = sub_1950FFC((a3 + 16), dword_278D070, 11, &off_2769C00, 0);
        sub_12CC584(v24, v22);
        v22 += 48;
      }

      while (v22 != v23);
      v22 = v30[0];
    }

    if (v22)
    {
      v25 = v30[1];
      v26 = v22;
      if (v30[1] != v22)
      {
        do
        {
          v25 = sub_12CBDFC(v25 - 48);
        }

        while (v25 != v22);
        v26 = v30[0];
      }

      v30[1] = v22;
      operator delete(v26);
    }

    v27 = v31;
    if (!v31)
    {
      goto LABEL_55;
    }

    v28 = v32;
    v29 = v31;
    if (v32 == v31)
    {
LABEL_54:
      v32 = v27;
      operator delete(v29);
LABEL_55:
      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      return;
    }

    while (1)
    {
      if (*(v28 - 25) < 0)
      {
        operator delete(*(v28 - 6));
        if (*(v28 - 49) < 0)
        {
LABEL_52:
          operator delete(*(v28 - 9));
        }
      }

      else if (*(v28 - 49) < 0)
      {
        goto LABEL_52;
      }

      v28 -= 10;
      if (v28 == v27)
      {
        v29 = v31;
        goto LABEL_54;
      }
    }
  }
}

void sub_ECD478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16)
{
  sub_D37F50(&a16);
  v18 = *(v16 - 112);
  if (v18)
  {
    *(v16 - 104) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_ECD4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1950D4C((a3 + 16), dword_278D178, 11, &off_2769460, 0);
  v6 = *a2;
  v35 = *(a2 + 8);
  if (*a2 != v35)
  {
    v7 = v5;
    v34 = v5;
    while (1)
    {
      v8 = *(v7 + 32);
      if (v8 && (v9 = *(v7 + 24), v9 < *v8))
      {
        *(v7 + 24) = v9 + 1;
        v10 = *&v8[2 * v9 + 2];
      }

      else
      {
        v11 = sub_12CFE5C(*(v7 + 16));
        v10 = sub_19593CC(v7 + 16, v11);
      }

      v36 = v6;
      v12 = sub_68C454(v6, 0);
      v13 = *(v12 + 1104);
      v14 = *(v12 + 1112);
      if (v13 != v14)
      {
        break;
      }

LABEL_3:
      v6 = v36 + 976;
      v7 = v34;
      if (v36 + 976 == v35)
      {
        return;
      }
    }

    v15 = v12;
    v16 = 0;
    while (1)
    {
      v18 = v16;
      if (*(v13 + 24) <= v16)
      {
        v20 = *(v10 + 16);
        v19 = v16;
      }

      else
      {
        v19 = v16;
        do
        {
          v21 = sub_4D1F50(v15, v19);
          v22 = sub_2B51D8(a1, *(v21 + 32) | (*(v21 + 36) << 32));
          v23 = (v22 - *v22);
          if (*v23 >= 0x1Du && (v24 = v23[14]) != 0)
          {
            v25 = *(v22 + v24);
          }

          else
          {
            v25 = 0;
          }

          if (*(sub_4D1F50(v15, v19) + 38))
          {
            v26 = -v25;
          }

          else
          {
            v26 = v25;
          }

          v27 = *(v10 + 16);
          if (v27 == *(v10 + 20))
          {
            v20 = v27 + 1;
            sub_1959094((v10 + 16), v27 + 1);
            *(*(v10 + 24) + 8 * v27) = v26;
          }

          else
          {
            *(*(v10 + 24) + 8 * v27) = v26;
            v20 = v27 + 1;
          }

          *(v10 + 16) = v20;
          LODWORD(v16) = v16 + 1;
          v19 = v16;
          v18 = v16;
        }

        while (*(v13 + 24) > v16);
      }

      v16 = v19;
      if (v20)
      {
        v28 = v20 - 1;
      }

      else
      {
        v28 = 0;
      }

      v29 = *(v10 + 32);
      if (v29 == *(v10 + 36))
      {
        sub_1958E5C((v10 + 32), v29 + 1);
        *(*(v10 + 40) + 4 * v29) = v28;
        *(v10 + 32) = v29 + 1;
        if (v19)
        {
          goto LABEL_33;
        }
      }

      else
      {
        *(*(v10 + 40) + 4 * v29) = v28;
        *(v10 + 32) = v29 + 1;
        if (v19)
        {
          goto LABEL_33;
        }
      }

      v31 = *(v13 + 160);
      if ((v31 - 25) <= 0x3F && ((1 << (v31 - 25)) & 0x9000000000000001) != 0 || v31 == 17)
      {
        v30 = (1000000000 - sub_4D2138(v15));
        goto LABEL_39;
      }

LABEL_33:
      if (sub_4D1DC0(v15) == v18)
      {
        v30 = sub_4D2140(v15);
LABEL_39:
        v32 = v30 / 1000000000.0;
        v33 = *(v10 + 48);
        if (v33 != *(v10 + 52))
        {
          *(*(v10 + 56) + 4 * v33) = v32;
LABEL_44:
          v17 = v33 + 1;
          goto LABEL_11;
        }

        v17 = v33 + 1;
        sub_1958E5C((v10 + 48), v33 + 1);
        *(*(v10 + 56) + 4 * v33) = v32;
        goto LABEL_11;
      }

      v33 = *(v10 + 48);
      if (v33 != *(v10 + 52))
      {
        *(*(v10 + 56) + 4 * v33) = 1065353216;
        goto LABEL_44;
      }

      v17 = v33 + 1;
      sub_1958E5C((v10 + 48), v33 + 1);
      *(*(v10 + 56) + 4 * v33) = 1065353216;
LABEL_11:
      *(v10 + 48) = v17;
      v13 += 2616;
      if (v13 == v14)
      {
        goto LABEL_3;
      }
    }
  }
}

void sub_ECD828(uint64_t a1, void *a2, uint64_t a3)
{
  *__p = 0u;
  *v54 = 0u;
  v55 = 1065353216;
  v3 = 0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7);
  if (v3 >= 1)
  {
    v5 = 0;
    v47 = v3 & 0x7FFFFFFF;
    do
    {
      v52 = *(*(a3 + 64) + 8 * v5 + 8);
      v49 = v5;
      v6 = nullsub_1(*a2 + 7808 * v5);
      v8 = *v6;
      v7 = v6[1];
      v50 = v7;
      while (v8 != v7)
      {
        v9 = *(v8 + 7416);
        v51 = v8;
        for (i = *(v8 + 7424); v9 != i; v9 += 1120)
        {
          v11 = *(v9 + 71);
          if (v11 >= 0)
          {
            v12 = (v9 + 48);
          }

          else
          {
            v12 = *(v9 + 48);
          }

          if (v11 >= 0)
          {
            v13 = *(v9 + 71);
          }

          else
          {
            v13 = *(v9 + 56);
          }

          v14 = sub_AAD8(&v56, v12, v13);
          v15 = __p[1];
          if (__p[1])
          {
            v16 = v14;
            v17 = vcnt_s8(__p[1]);
            v17.i16[0] = vaddlv_u8(v17);
            if (v17.u32[0] > 1uLL)
            {
              v18 = v14;
              if (v14 >= __p[1])
              {
                v18 = v14 % __p[1];
              }
            }

            else
            {
              v18 = (__p[1] - 1) & v14;
            }

            v19 = *(__p[0] + v18);
            if (v19)
            {
              v20 = *v19;
              if (*v19)
              {
                v21 = *(v9 + 71);
                if (v21 >= 0)
                {
                  v22 = *(v9 + 71);
                }

                else
                {
                  v22 = *(v9 + 56);
                }

                if (v21 >= 0)
                {
                  v23 = (v9 + 48);
                }

                else
                {
                  v23 = *(v9 + 48);
                }

                if (v17.u32[0] < 2uLL)
                {
                  v24 = __p[1] - 1;
                  while (1)
                  {
                    v29 = v20[1];
                    if (v16 == v29)
                    {
                      v30 = *(v20 + 39);
                      v31 = v30;
                      if (v30 < 0)
                      {
                        v30 = v20[3];
                      }

                      if (v30 == v22)
                      {
                        v32 = v31 >= 0 ? (v20 + 2) : v20[2];
                        if (!memcmp(v32, v23, v22))
                        {
                          goto LABEL_58;
                        }
                      }
                    }

                    else if ((v29 & v24) != v18)
                    {
                      goto LABEL_53;
                    }

                    v20 = *v20;
                    if (!v20)
                    {
                      goto LABEL_53;
                    }
                  }
                }

                do
                {
                  v25 = v20[1];
                  if (v16 == v25)
                  {
                    v26 = *(v20 + 39);
                    v27 = v26;
                    if (v26 < 0)
                    {
                      v26 = v20[3];
                    }

                    if (v26 == v22)
                    {
                      v28 = v27 >= 0 ? (v20 + 2) : v20[2];
                      if (!memcmp(v28, v23, v22))
                      {
                        goto LABEL_58;
                      }
                    }
                  }

                  else
                  {
                    if (v25 >= v15)
                    {
                      v25 %= v15;
                    }

                    if (v25 != v18)
                    {
                      break;
                    }
                  }

                  v20 = *v20;
                }

                while (v20);
              }
            }
          }

LABEL_53:
          v33 = *(a3 + 104);
          v56 = v9 + 48;
          sub_EDE7E0(__p, v9 + 48)[5] = v33;
          v35 = *(a3 + 112);
          if (v35 && (v36 = *(a3 + 104), v36 < *v35))
          {
            *(a3 + 104) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            v38 = sub_14BDE5C(*(a3 + 96));
            v37 = sub_19593CC(a3 + 96, v38);
          }

          sub_EC6F6C(v9, v37, 0, v34);
LABEL_58:
          v56 = v9 + 48;
          v39 = *(sub_EDE7E0(__p, v9 + 48) + 10);
          v40 = *(v9 + 464);
          v41 = v40 / 100;
          v42 = v40 % 100;
          if (v40 < 0)
          {
            v43 = -50;
          }

          else
          {
            v43 = 50;
          }

          sub_ECA76C(v39, v41 + ((5243 * (v43 + v42)) >> 19) + ((5243 * (v43 + v42)) >> 31), v52);
        }

        v8 = v51 + 12656;
        v7 = v50;
      }

      v5 = v49 + 1;
    }

    while (v49 + 1 != v47);
    v44 = v54[0];
    if (v54[0])
    {
      do
      {
        v46 = *v44;
        if (*(v44 + 39) < 0)
        {
          operator delete(v44[2]);
        }

        operator delete(v44);
        v44 = v46;
      }

      while (v46);
    }
  }

  v45 = __p[0];
  __p[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }
}

void sub_ECDBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_ECDC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_ECDC24(uint64_t a1, void *a2, uint64_t a3)
{
  __p = 0;
  v92 = 0;
  v93 = 0;
  v3 = 0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7);
  if (v3 < 1)
  {
    return;
  }

  v4 = a3;
  v5 = 0;
  v83 = v3 & 0x7FFFFFFF;
  do
  {
    v6 = *(*(v4 + 64) + 8 * v5 + 8);
    v89 = (*a2 + 7808 * v5);
    v7 = nullsub_1(v89);
    v8 = v7[1] - *v7;
    if (v8)
    {
      v9 = 0;
      v88 = 0x5DDB1ADCB91F64A7 * (v8 >> 4);
      v90 = v5;
      while (1)
      {
        v10 = sub_68C454(v89, v9);
        v11 = v10;
        v12 = v10[1281];
        v13 = v10[1282];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

LABEL_6:
        if (++v9 == v88)
        {
          goto LABEL_3;
        }
      }

      v15 = __p;
      v16 = v92;
      if (__p == v92)
      {
        v21 = __p;
LABEL_45:
        if (v21 != v92)
        {
          v32 = 954437177 * ((v21 - __p) >> 3);
          *(v6 + 44) |= 8u;
          *(v6 + 920) = v32;
          v5 = v90;
          goto LABEL_93;
        }
      }

      else
      {
        v17 = v10[1284];
        v18 = v10[1283];
        v19 = v10[1287];
        v20 = v10[1286];
        v21 = __p;
        do
        {
          if (v12 == *v21)
          {
            v22 = *(v21 + 2);
            if (v17 - v18 == *(v21 + 3) - v22)
            {
              if (v18 == v17)
              {
LABEL_24:
                v24 = *(v21 + 5);
                if (v19 - v20 == *(v21 + 6) - v24)
                {
                  if (v20 == v19)
                  {
LABEL_13:
                    if (v13 == *(v21 + 1))
                    {
                      goto LABEL_45;
                    }
                  }

                  else
                  {
                    v25 = v11[1286];
                    while (*v25 == *v24)
                    {
                      if (*(v25 + 4) != *(v24 + 4))
                      {
                        break;
                      }

                      if (*(v25 + 8) != *(v24 + 8))
                      {
                        break;
                      }

                      if (*(v25 + 12) != *(v24 + 12))
                      {
                        break;
                      }

                      v27 = *(v25 + 16);
                      v26 = *(v25 + 24);
                      v28 = *(v24 + 16);
                      if (v26 - v27 != *(v24 + 24) - v28)
                      {
                        break;
                      }

                      for (; v27 != v26; v28 += 24)
                      {
                        v30 = *v27;
                        v29 = *(v27 + 8);
                        v31 = *v28;
                        if ((v29 - *v27) != (*(v28 + 8) - *v28))
                        {
                          goto LABEL_14;
                        }

                        if (v30 != v29)
                        {
                          while (*v30 == *v31 && v30[1] == v31[1] && v30[2] == v31[2])
                          {
                            v30 += 3;
                            v31 += 3;
                            if (v30 == v29)
                            {
                              goto LABEL_39;
                            }
                          }

                          goto LABEL_14;
                        }

LABEL_39:
                        v27 += 24;
                      }

                      if (*(v25 + 40) != *(v24 + 40) || *(v25 + 48) != *(v24 + 48))
                      {
                        break;
                      }

                      v25 += 64;
                      v24 += 64;
                      if (v25 == v19)
                      {
                        goto LABEL_13;
                      }
                    }
                  }
                }
              }

              else
              {
                v23 = v11[1283];
                while (*v23 == *v22 && *(v23 + 4) == *(v22 + 4) && *(v23 + 8) == *(v22 + 8) && *(v23 + 16) == *(v22 + 16))
                {
                  v23 += 24;
                  v22 += 24;
                  if (v23 == v17)
                  {
                    goto LABEL_24;
                  }
                }
              }
            }
          }

LABEL_14:
          v21 += 72;
        }

        while (v21 != v92);
      }

      v33 = 0x8E38E38E38E38E39 * ((v92 - __p) >> 3);
      *(v6 + 44) |= 8u;
      *(v6 + 920) = v33;
      if (v16 >= v93)
      {
        if (v33 + 1 > 0x38E38E38E38E38ELL)
        {
          sub_1794();
        }

        v39 = 0x8E38E38E38E38E39 * ((v93 - v15) >> 3);
        v40 = 2 * v39;
        if (2 * v39 <= v33 + 1)
        {
          v40 = v33 + 1;
        }

        if (v39 >= 0x1C71C71C71C71C7)
        {
          v41 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v41 = v40;
        }

        p_p = &__p;
        if (v41)
        {
          if (v41 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }

          sub_1808();
        }

        v42 = 72 * v33;
        v94 = 0;
        v95 = 72 * v33;
        v96 = 72 * v33;
        v97 = 0;
        v43 = *(v11 + 1281);
        *&dword_10[18 * v33] = 0;
        *v42 = v43;
        *(v42 + 24) = 0;
        *(v42 + 32) = 0;
        v44 = v11[1283];
        v45 = v11[1284];
        if (v45 != v44)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1794();
        }

        *&stru_20.segname[72 * v33] = 0;
        *&stru_20.segname[72 * v33 + 8] = 0;
        *&stru_20.segname[72 * v33 + 16] = 0;
        sub_7C0AEC(v42 + 40, v11[1286], v11[1287], (v11[1287] - v11[1286]) >> 6);
        *(&stru_20.vmsize + 18 * v33) = *(v11 + 2578);
        v85 = v96;
        v46 = __p;
        v47 = v92;
        v87 = (v95 + __p - v92);
        v5 = v90;
        if (__p != v92)
        {
          v48 = __p;
          v49 = (v95 + __p - v92);
          do
          {
            *v49 = *v48;
            *(v49 + 3) = 0;
            *(v49 + 4) = 0;
            *(v49 + 2) = 0;
            *(v49 + 1) = v48[1];
            *(v49 + 4) = *(v48 + 4);
            *(v48 + 2) = 0;
            *(v48 + 3) = 0;
            *(v48 + 4) = 0;
            *(v49 + 5) = 0;
            *(v49 + 6) = 0;
            *(v49 + 7) = 0;
            v37 = *(v48 + 40);
            *(v49 + 40) = v37;
            *(v49 + 7) = *(v48 + 7);
            *(v48 + 5) = 0;
            *(v48 + 6) = 0;
            *(v48 + 7) = 0;
            *(v49 + 16) = *(v48 + 16);
            v48 = (v48 + 72);
            v49 += 72;
          }

          while (v48 != v47);
          do
          {
            v50 = v46[5];
            if (v50)
            {
              v51 = v46[6];
              v52 = v46[5];
              if (v51 != v50)
              {
                do
                {
                  v54 = *(v51 - 48);
                  if (v54)
                  {
                    v55 = *(v51 - 40);
                    v53 = *(v51 - 48);
                    if (v55 != v54)
                    {
                      v56 = *(v51 - 40);
                      do
                      {
                        v58 = *(v56 - 24);
                        v56 -= 24;
                        v57 = v58;
                        if (v58)
                        {
                          *(v55 - 16) = v57;
                          operator delete(v57);
                        }

                        v55 = v56;
                      }

                      while (v56 != v54);
                      v53 = *(v51 - 48);
                    }

                    *(v51 - 40) = v54;
                    operator delete(v53);
                  }

                  v51 -= 64;
                }

                while (v51 != v50);
                v52 = v46[5];
              }

              v46[6] = v50;
              operator delete(v52);
              v5 = v90;
            }

            v59 = v46[2];
            if (v59)
            {
              v46[3] = v59;
              operator delete(v59);
            }

            v46 += 9;
          }

          while (v46 != v47);
        }

        v60 = __p;
        __p = v87;
        v92 = (v85 + 72);
        v95 = v60;
        v96 = v60;
        v93 = v97;
        if (v60)
        {
          operator delete(v60);
        }

        v4 = a3;
        v92 = (v85 + 72);
        v38 = *(a3 + 248);
        if (!v38)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v34 = *(v11 + 1281);
        *(v16 + 2) = 0;
        *v16 = v34;
        *(v16 + 3) = 0;
        *(v16 + 4) = 0;
        v35 = v11[1283];
        v36 = v11[1284];
        if (v36 != v35)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1794();
        }

        *(v16 + 5) = 0;
        *(v16 + 6) = 0;
        *(v16 + 7) = 0;
        sub_7C0AEC((v16 + 40), v11[1286], v11[1287], (v11[1287] - v11[1286]) >> 6);
        *(v16 + 16) = *(v11 + 2578);
        v4 = a3;
        v5 = v90;
        v92 = v16 + 72;
        v38 = *(a3 + 248);
        if (!v38)
        {
          goto LABEL_91;
        }
      }

      v61 = *(v4 + 240);
      if (v61 < *v38)
      {
        *(v4 + 240) = v61 + 1;
        v62 = *&v38[2 * v61 + 2];
LABEL_92:
        sub_ECA330(v11 + 1281, v62, *&v37);
LABEL_93:
        v64 = 0x3795876FF3795877 * ((v11[139] - v11[138]) >> 3);
        if (v64 >= 1)
        {
          v65 = 0;
          v66 = v64 & 0x7FFFFFFF;
          do
          {
            v67 = sub_50EA30(v11 + 138, v65);
            v68 = sub_1950D4C((*(*(v6 + 72) + 8 * v65 + 8) + 16), dword_278D0E8, 11, &off_2769CA8, 0);
            v69 = *(v67 + 2417);
            *(v68 + 16) |= 2u;
            *(v68 + 97) = v69;
            ++v65;
          }

          while (v66 != v65);
        }

        goto LABEL_6;
      }

LABEL_91:
      v63 = sub_14BE3A4(*(v4 + 232));
      v62 = sub_19593CC(v4 + 232, v63);
      goto LABEL_92;
    }

LABEL_3:
    ++v5;
  }

  while (v5 != v83);
  v70 = __p;
  if (__p)
  {
    v71 = v92;
    v72 = __p;
    if (v92 != __p)
    {
      do
      {
        v73 = *(v71 - 4);
        if (v73)
        {
          v74 = *(v71 - 3);
          v75 = *(v71 - 4);
          if (v74 != v73)
          {
            do
            {
              v77 = *(v74 - 48);
              if (v77)
              {
                v78 = *(v74 - 40);
                v76 = *(v74 - 48);
                if (v78 != v77)
                {
                  v79 = *(v74 - 40);
                  do
                  {
                    v81 = *(v79 - 24);
                    v79 -= 24;
                    v80 = v81;
                    if (v81)
                    {
                      *(v78 - 16) = v80;
                      operator delete(v80);
                    }

                    v78 = v79;
                  }

                  while (v79 != v77);
                  v76 = *(v74 - 48);
                }

                *(v74 - 40) = v77;
                operator delete(v76);
              }

              v74 -= 64;
            }

            while (v74 != v73);
            v75 = *(v71 - 4);
          }

          *(v71 - 3) = v73;
          operator delete(v75);
        }

        v82 = *(v71 - 7);
        if (v82)
        {
          *(v71 - 6) = v82;
          operator delete(v82);
        }

        v71 -= 72;
      }

      while (v71 != v70);
      v72 = __p;
    }

    v92 = v70;
    operator delete(v72);
  }
}

void sub_ECE4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17)
  {
    sub_21E5364(&a18, a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_ECF950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v29 = *(v27 - 184);
  if (!v29)
  {
    sub_4AE168((v27 - 160));
    _Unwind_Resume(a1);
  }

  *(v27 - 176) = v29;
  operator delete(v29);
  sub_4AE168((v27 - 160));
  _Unwind_Resume(a1);
}

void sub_ECFAB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[49];
  v8 = a2[50];
  while (v7 != v8)
  {
    v11 = *(a4 + 72);
    if (v11 && (v12 = *(a4 + 64), v12 < *v11))
    {
      *(a4 + 64) = v12 + 1;
      v13 = *&v11[2 * v12 + 2];
      v14 = *(v13 + 32);
      if (!v14)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v15 = sub_16F5C34(*(a4 + 56));
      v13 = sub_19593CC(a4 + 56, v15);
      v14 = *(v13 + 32);
      if (!v14)
      {
        goto LABEL_2;
      }
    }

    v16 = *(v13 + 24);
    if (v16 >= *v14)
    {
LABEL_2:
      v9 = sub_16F5CD4(*(v13 + 16));
      v10 = sub_19593CC(v13 + 16, v9);
      goto LABEL_3;
    }

    *(v13 + 24) = v16 + 1;
    v10 = *&v14[2 * v16 + 2];
LABEL_3:
    sub_ECAE3C(v7, a3, v10);
    v7 += 152;
  }

  v17 = a2[52];
  v18 = a2[53];
  while (v17 != v18)
  {
    v21 = *(a4 + 120);
    if (v21 && (v22 = *(a4 + 112), v22 < *v21))
    {
      *(a4 + 112) = v22 + 1;
      v20 = *&v21[2 * v22 + 2];
    }

    else
    {
      v19 = sub_16F5CD4(*(a4 + 104));
      v20 = sub_19593CC(a4 + 104, v19);
    }

    sub_ECAE3C(v17, a3, v20);
    v17 += 152;
  }

  v23 = a2[55];
  if (v23 != a2[56])
  {
    *(a4 + 40) |= 4u;
    v24 = *(a4 + 192);
    if (!v24)
    {
      v25 = *(a4 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_16F5CD4(v26);
      *(a4 + 192) = v24;
      v23 = a2[55];
    }

    sub_ECAE3C(v23, a3, v24);
  }
}

void sub_ECFC68(void *a1@<X1>, unsigned int a2@<W2>, unsigned int a3@<W3>, _DWORD *a4@<X4>, unsigned int *a5@<X5>, void *a6@<X8>)
{
  v12 = a3;
  v13 = sub_69ADA0(a1, a3);
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  v14 = v13[1];
  if (v14 != *v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_4D1DC0(a1) - 1 == v12)
  {
    v15 = 0.0;
    if (!a3)
    {
      v15 = (1000000000 - sub_4D2138(a1));
    }

    v16 = sub_4D2140(a1);
    sub_2F4C8(__p, 0, a6, v15 / 1000000000.0, v16 / 1000000000.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return;
  }

  if (a3)
  {
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = sub_4D2138(a1);
    sub_2F4C8(__p, 0, &v33, (1000000000 - v24) / 1000000000.0, 1.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v33;
    v36 = v34;
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
LABEL_11:
      if (v17[13] == v12)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  v25 = v17[11];
  v26 = v25 / 100;
  v27 = v25 % 100;
  if (v25 < 0)
  {
    v28 = -50;
  }

  else
  {
    v28 = 50;
  }

  *a4 = sub_4DE8CC(__p, (v26 + (((5243 * (v28 + v27)) >> 19) + ((5243 * (v28 + v27)) >> 31))), 0.1);
  if (v17[13] == v12)
  {
LABEL_12:
    v18 = v17[14];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL || ((v19 = v18 / 100, v20 = v18 % 100, v18 < 0) ? (v21 = -50) : (v21 = 50), v22 = v19 + (((5243 * (v21 + v20)) >> 19) + ((5243 * (v21 + v20)) >> 31)), v22 < 1))
    {
      v23 = 0;
      *a5 = 0;
    }

    else
    {
      v23 = sub_4DE8CC(__p, v22, 0.1);
      *a5 = v23;
    }

    goto LABEL_27;
  }

LABEL_25:
  v23 = *a5;
LABEL_27:
  v29 = __p[1];
  v30 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2) - 1;
  v31 = v30 > v23 && v30 > *a4;
  v32 = -12;
  if (!v31)
  {
    v32 = 0;
  }

  *a6 = __p[0];
  a6[1] = &v29[v32];
  a6[2] = v36;
}

void sub_ECFFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ECFFF4(double a1, uint64_t a2, void *a3, unsigned int a4)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v4 = a3[1] - *a3;
  if (!v4)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  v27 = a4;
  v28 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  do
  {
    while ((*(sub_ED0948(a3, v8) + 16) & 1) != 0 || (*(sub_ED0948(a3, v8) + 17) & 1) != 0 || (*(sub_ED0948(a3, v8) + 18) & 1) != 0 || v8 == 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) - 1)
    {
      v35 = v34;
      v30 = v8 + 1;
      v9 = v8 + 1 - v7;
      if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) < v9)
      {
        if (v9 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v29 = v8;
      if (v7 <= v30)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = v7;
      if (v30 > v7)
      {
        do
        {
          while (1)
          {
            v13 = sub_ED0948(a3, v11);
            v14 = v35;
            if (v35 >= v36)
            {
              break;
            }

            v12 = *v13;
            *(v35 + 2) = *(v13 + 8);
            *v14 = v12;
            v35 = v14 + 12;
            if (v10 == ++v11)
            {
              goto LABEL_29;
            }
          }

          v15 = v34;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 2);
          v17 = v16 + 1;
          if (v16 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v36 - v34) >> 2) > v17)
          {
            v17 = 0x5555555555555556 * ((v36 - v34) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v18 = 0x1555555555555555;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (v18 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v19 = 4 * ((v35 - v34) >> 2);
          v20 = *v13;
          *(v19 + 8) = *(v13 + 8);
          *v19 = v20;
          v21 = 12 * v16 + 12;
          v22 = (12 * v16 - (v14 - v15));
          memcpy((v19 - (v14 - v15)), v15, v14 - v15);
          v34 = v22;
          v35 = v21;
          v36 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v35 = v21;
          ++v11;
        }

        while (v10 != v11);
      }

LABEL_29:
      memset(__p, 0, sizeof(__p));
      sub_41DB4(&v34, v27, 0, 1, __p, &v32, a1);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v23 = v33;
      if (v33)
      {
        v24 = 0;
        do
        {
          v25 = sub_ED0948(a3, v7);
          v26 = v32;
          *(v25 + 20) = (*(v32 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1;
          ++v24;
          ++v7;
        }

        while (v23 != v24);
LABEL_36:
        operator delete(v26);
        goto LABEL_37;
      }

      v26 = v32;
      if (v32)
      {
        goto LABEL_36;
      }

LABEL_37:
      v7 = v29;
      v8 = v30;
      if (v30 == v28)
      {
        goto LABEL_40;
      }
    }

    ++v8;
  }

  while (v8 != v28);
LABEL_40:
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_ED0398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_ED08A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED08BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED08D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED08E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED08F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED090C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED0920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED0934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_ED0948(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 24 * a2;
}

void sub_ED0A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_ED0B64(_BYTE *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_4D1DC0(a2);
  v9 = a2[1290];
  v10 = a2[1291];
  if (v9 != v10)
  {
    v11 = v8;
    v12 = v8 - 1;
    do
    {
      v13 = *(v9 + 8);
      if (v13 >= v11 || v13 == v12 && sub_4D2140(a2) < 0x3B9ACA00)
      {
        goto LABEL_3;
      }

      if (sub_683A0C(v9))
      {
        if (a1[16])
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (!sub_445A90(v9))
        {
          if (!sub_683864(v9) && !sub_683854(v9) || a1[18] != 1)
          {
            goto LABEL_3;
          }

LABEL_16:
          std::to_string(&v36, a3);
          v14 = std::string::append(&v36, "_", 1uLL);
          v15 = *&v14->__r_.__value_.__l.__data_;
          v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
          *&v37.__r_.__value_.__l.__data_ = v15;
          v14->__r_.__value_.__l.__size_ = 0;
          v14->__r_.__value_.__r.__words[2] = 0;
          v14->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v35, a4);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v35;
          }

          else
          {
            v16 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }

          v18 = std::string::append(&v37, v16, size);
          v19 = *&v18->__r_.__value_.__l.__data_;
          v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
          *&v38.__r_.__value_.__l.__data_ = v19;
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          v20 = std::string::append(&v38, "_", 1uLL);
          v21 = *&v20->__r_.__value_.__l.__data_;
          v39.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
          *&v39.__r_.__value_.__l.__data_ = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v34, *(v9 + 8));
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v34;
          }

          else
          {
            v22 = v34.__r_.__value_.__r.__words[0];
          }

          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = v34.__r_.__value_.__l.__size_;
          }

          v24 = std::string::append(&v39, v22, v23);
          v25 = *&v24->__r_.__value_.__l.__data_;
          v41 = v24->__r_.__value_.__r.__words[2];
          v40 = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
            if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_37;
            }

LABEL_30:
            if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_31;
            }

LABEL_38:
            operator delete(v38.__r_.__value_.__l.__data_);
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_39;
            }

LABEL_32:
            if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_33;
            }

LABEL_40:
            operator delete(v37.__r_.__value_.__l.__data_);
            if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_41;
            }

LABEL_34:
            if (*(v9 + 4) == 2)
            {
LABEL_42:
              v26 = SHIBYTE(v41);
              if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
              {
                v26 = *(&v40 + 1);
                if ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 1 - *(&v40 + 1) < 9)
                {
                  if (0x7FFFFFFFFFFFFFF7 - (v41 & 0x7FFFFFFFFFFFFFFFLL) < *(&v40 + 1) + 9 - ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 1))
                  {
                    sub_3244();
                  }

LABEL_47:
                  operator new();
                }

                v27 = v40;
              }

              else
              {
                if ((SHIBYTE(v41) - 14) < 9)
                {
                  goto LABEL_47;
                }

                v27 = &v40;
              }

              v28 = v27 + v26;
              *v28 = 0x74756F5266664F5FLL;
              v28[8] = 101;
              v29 = v26 + 9;
              if (SHIBYTE(v41) < 0)
              {
                *(&v40 + 1) = v26 + 9;
              }

              else
              {
                HIBYTE(v41) = v29 & 0x7F;
              }

              *(v27 + v29) = 0;
            }
          }

          else
          {
            if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

LABEL_37:
            operator delete(v39.__r_.__value_.__l.__data_);
            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_38;
            }

LABEL_31:
            if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_32;
            }

LABEL_39:
            operator delete(v35.__r_.__value_.__l.__data_);
            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_40;
            }

LABEL_33:
            if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_34;
            }

LABEL_41:
            operator delete(v36.__r_.__value_.__l.__data_);
            if (*(v9 + 4) == 2)
            {
              goto LABEL_42;
            }
          }

          sub_ED10A0(a1, v9, &v40, a4, a5, a6);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40);
          }

          goto LABEL_3;
        }

        if (a1[17])
        {
          goto LABEL_16;
        }
      }

LABEL_3:
      v9 += 104;
    }

    while (v9 != v10);
  }
}

void sub_ED0FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 105) < 0)
  {
    operator delete(*(v46 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_ED10A0(uint64_t a1, uint64_t a2, const void **a3, int a4, uint64_t a5, uint64_t a6)
{
  if (sub_6834F4(a2))
  {
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    if (v10 != v11)
    {
      v117 = a6;
      v118 = a5;
      v119 = *(a2 + 40);
      do
      {
        if (!sub_683140(v10))
        {
          goto LABEL_6;
        }

        v14 = *(a5 + 240);
        if (v14 && (v15 = *(a5 + 232), v15 < *v14))
        {
          *(a5 + 232) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          sub_14BE174(*(a5 + 224));
          v16 = sub_19593CC(a5 + 224, v17);
        }

        v18 = *(a2 + 4) != 0;
        *(v16 + 16) |= 0x20u;
        *(v16 + 76) = v18;
        v19 = sub_683530(a2);
        v20 = *(v16 + 16);
        if (v19)
        {
          *(v16 + 72) = *(a2 + 16);
          *(v16 + 88) = *(v10 + 22);
          v21 = *(v10 + 24);
          v20 |= 0x190u;
          *(v16 + 16) = v20;
          *(v16 + 84) = v21;
        }

        *(v16 + 16) = v20 | 0x40;
        *(v16 + 80) = a4;
        v22 = *(v10 + 16);
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 2;
            if (*(a3 + 23) >= 0)
            {
              v29 = *(a3 + 23);
            }

            else
            {
              v29 = a3[1];
            }

            if (v29 + 13 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v29 + 13 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v29 + 13;
            if (v29)
            {
              if (*(a3 + 23) >= 0)
              {
                v40 = a3;
              }

              else
              {
                v40 = *a3;
              }

              memmove(&__p, v40, v29);
            }

            strcpy(&__p + v29, "_TrafficLight");
            *(v16 + 16) |= 1u;
            v41 = *(v16 + 8);
            v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
            if (v41)
            {
              v42 = *v42;
            }

            sub_194EA30((v16 + 48), &__p, v42);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v43 = *(a6 + 272);
              if (!v43)
              {
                goto LABEL_170;
              }
            }

            else
            {
              v43 = *(a6 + 272);
              if (!v43)
              {
LABEL_170:
                v77 = sub_14BE0EC(*(a6 + 256));
                v76 = sub_19593CC(a6 + 256, v77);
                goto LABEL_171;
              }
            }

            v75 = *(a6 + 264);
            if (v75 >= *v43)
            {
              goto LABEL_170;
            }

            *(a6 + 264) = v75 + 1;
            v76 = *&v43[2 * v75 + 2];
LABEL_171:
            if (*(a3 + 23) >= 0)
            {
              v78 = *(a3 + 23);
            }

            else
            {
              v78 = a3[1];
            }

            if (v78 + 13 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v78 + 13 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v78 + 13;
            v11 = v119;
            if (v78)
            {
              if (*(a3 + 23) >= 0)
              {
                v79 = a3;
              }

              else
              {
                v79 = *a3;
              }

              memmove(&__p, v79, v78);
            }

            a6 = v117;
            strcpy(&__p + v78, "_TrafficLight");
            *(v76 + 16) |= 1u;
            v80 = *(v76 + 8);
            v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
            if (v80)
            {
              v81 = *v81;
            }

            sub_194EA30((v76 + 24), &__p, v81);
            a5 = v118;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              *(v76 + 16) |= 2u;
              v83 = *(v76 + 32);
              if (!v83)
              {
                goto LABEL_246;
              }
            }

            else
            {
              *(v76 + 16) |= 2u;
              v83 = *(v76 + 32);
              if (!v83)
              {
LABEL_246:
                v113 = *(v76 + 8);
                v114 = (v113 & 0xFFFFFFFFFFFFFFFCLL);
                if (v113)
                {
                  v114 = *v114;
                }

                v83 = sub_16F5828(v114);
                *(v76 + 32) = v83;
              }
            }

            sub_EC6D34((a2 + 20), v83, v82);
            *(v76 + 16) |= 4u;
            *(v76 + 40) = 1;
            goto LABEL_6;
          }

          if (v22 == 2)
          {
            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 2;
            if (*(a3 + 23) >= 0)
            {
              v25 = *(a3 + 23);
            }

            else
            {
              v25 = a3[1];
            }

            if (v25 + 9 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v25 + 9 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v25 + 9;
            if (v25)
            {
              if (*(a3 + 23) >= 0)
              {
                v50 = a3;
              }

              else
              {
                v50 = *a3;
              }

              memmove(&__p, v50, v25);
            }

            strcpy(&__p + v25, "_StopSign");
            *(v16 + 16) |= 1u;
            v51 = *(v16 + 8);
            v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
            if (v51)
            {
              v52 = *v52;
            }

            sub_194EA30((v16 + 48), &__p, v52);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v53 = *(a6 + 272);
              if (!v53)
              {
                goto LABEL_224;
              }
            }

            else
            {
              v53 = *(a6 + 272);
              if (!v53)
              {
LABEL_224:
                v102 = sub_14BE0EC(*(a6 + 256));
                v101 = sub_19593CC(a6 + 256, v102);
                goto LABEL_225;
              }
            }

            v100 = *(a6 + 264);
            if (v100 >= *v53)
            {
              goto LABEL_224;
            }

            *(a6 + 264) = v100 + 1;
            v101 = *&v53[2 * v100 + 2];
LABEL_225:
            if (*(a3 + 23) >= 0)
            {
              v103 = *(a3 + 23);
            }

            else
            {
              v103 = a3[1];
            }

            if (v103 + 9 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v103 + 9 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v103 + 9;
            v11 = v119;
            if (v103)
            {
              if (*(a3 + 23) >= 0)
              {
                v104 = a3;
              }

              else
              {
                v104 = *a3;
              }

              memmove(&__p, v104, v103);
            }

            a6 = v117;
            strcpy(&__p + v103, "_StopSign");
            *(v101 + 16) |= 1u;
            v105 = *(v101 + 8);
            v106 = (v105 & 0xFFFFFFFFFFFFFFFCLL);
            if (v105)
            {
              v106 = *v106;
            }

            sub_194EA30((v101 + 24), &__p, v106);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              *(v101 + 16) |= 2u;
              v108 = *(v101 + 32);
              if (!v108)
              {
                goto LABEL_251;
              }
            }

            else
            {
              *(v101 + 16) |= 2u;
              v108 = *(v101 + 32);
              if (!v108)
              {
LABEL_251:
                v115 = *(v101 + 8);
                v116 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
                if (v115)
                {
                  v116 = *v116;
                }

                v108 = sub_16F5828(v116);
                *(v101 + 32) = v108;
              }
            }

            sub_EC6D34((a2 + 20), v108, v107);
            *(v101 + 16) |= 4u;
            *(v101 + 40) = 2;
            goto LABEL_6;
          }

          goto LABEL_6;
        }

        if (v22 != 3)
        {
          if (v22 != 4)
          {
            if (v22 != 5)
            {
              goto LABEL_6;
            }

            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 1;
            if (*(a3 + 23) >= 0)
            {
              v23 = *(a3 + 23);
            }

            else
            {
              v23 = a3[1];
            }

            if (byte_27BD1D7 >= 0)
            {
              v24 = byte_27BD1D7;
            }

            else
            {
              v24 = qword_27BD1C8;
            }

            if (v24 + v23 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v24 + v23 > 0x16)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v24 + v23;
            if (v23)
            {
              if (*(a3 + 23) >= 0)
              {
                v44 = a3;
              }

              else
              {
                v44 = *a3;
              }

              memmove(&__p, v44, v23);
            }

            v45 = &__p + v23;
            if (v24)
            {
              if (byte_27BD1D7 >= 0)
              {
                v46 = &qword_27BD1C0;
              }

              else
              {
                v46 = qword_27BD1C0;
              }

              memmove(v45, v46, v24);
            }

            v45[v24] = 0;
            *(v16 + 16) |= 1u;
            v47 = *(v16 + 8);
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
            if (v47)
            {
              v48 = *v48;
            }

            sub_194EA30((v16 + 48), &__p, v48);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v49 = *(a6 + 224);
              if (!v49)
              {
                goto LABEL_190;
              }
            }

            else
            {
              v49 = *(a6 + 224);
              if (!v49)
              {
LABEL_190:
                sub_14BE058(*(a6 + 208));
                v65 = sub_19593CC(a6 + 208, v85);
                goto LABEL_191;
              }
            }

            v84 = *(a6 + 216);
            if (v84 >= *v49)
            {
              goto LABEL_190;
            }

            *(a6 + 216) = v84 + 1;
            v65 = *&v49[2 * v84 + 2];
LABEL_191:
            v86 = sub_683938(a2);
            std::to_string(&__p, v86);
            *(v65 + 16) |= 2u;
            v87 = *(v65 + 8);
            v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
            if (v87)
            {
              v88 = *v88;
            }

            sub_194EA30((v65 + 32), &__p, v88);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v89 = *(a2 + 88) / 3.6;
            *(v65 + 16) |= 0x80u;
            *(v65 + 72) = v89;
            if (*(a3 + 23) >= 0)
            {
              v90 = *(a3 + 23);
            }

            else
            {
              v90 = a3[1];
            }

            if (byte_27BD1D7 >= 0)
            {
              v91 = byte_27BD1D7;
            }

            else
            {
              v91 = qword_27BD1C8;
            }

            if (v91 + v90 > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_256:
              sub_3244();
            }

            if (v91 + v90 > 0x16)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v91 + v90;
            a5 = v118;
            if (v90)
            {
              if (*(a3 + 23) >= 0)
              {
                v92 = a3;
              }

              else
              {
                v92 = *a3;
              }

              memmove(&__p, v92, v90);
            }

            v93 = &__p + v90;
            if (v91)
            {
              if (byte_27BD1D7 >= 0)
              {
                v94 = &qword_27BD1C0;
              }

              else
              {
                v94 = qword_27BD1C0;
              }

              memmove(v93, v94, v91);
            }

            v93[v91] = 0;
            *(v65 + 16) |= 1u;
            v95 = *(v65 + 8);
            v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
            if (v95)
            {
              v96 = *v96;
            }

            sub_194EA30((v65 + 24), &__p, v96);
            v11 = v119;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v97 = *(v65 + 16);
            *(v65 + 64) = 1;
            *(v65 + 16) = v97 | 0x24;
            v12 = *(v65 + 40);
            if (!v12)
            {
LABEL_219:
              v98 = *(v65 + 8);
              v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
              if (v98)
              {
                v99 = *v99;
              }

              v12 = sub_16F5828(v99);
              *(v65 + 40) = v12;
            }

LABEL_5:
            sub_EC6D34((a2 + 20), v12, v13);
            goto LABEL_6;
          }

          *(v16 + 16) = v20 | 0x44;
          *(v16 + 64) = 1;
          if (*(a3 + 23) >= 0)
          {
            v27 = *(a3 + 23);
          }

          else
          {
            v27 = a3[1];
          }

          if (byte_27BD1BF >= 0)
          {
            v28 = byte_27BD1BF;
          }

          else
          {
            v28 = qword_27BD1B0;
          }

          if (v28 + v27 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_256;
          }

          if (v28 + v27 > 0x16)
          {
            operator new();
          }

          memset(&__p, 0, sizeof(__p));
          *(&__p.__r_.__value_.__s + 23) = v28 + v27;
          if (v27)
          {
            if (*(a3 + 23) >= 0)
            {
              v34 = a3;
            }

            else
            {
              v34 = *a3;
            }

            memmove(&__p, v34, v27);
          }

          v35 = &__p + v27;
          if (v28)
          {
            if (byte_27BD1BF >= 0)
            {
              v36 = &qword_27BD1A8;
            }

            else
            {
              v36 = qword_27BD1A8;
            }

            memmove(v35, v36, v28);
          }

          v35[v28] = 0;
          *(v16 + 16) |= 1u;
          v37 = *(v16 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          sub_194EA30((v16 + 48), &__p, v38);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            v39 = *(a6 + 224);
            if (!v39)
            {
              goto LABEL_141;
            }
          }

          else
          {
            v39 = *(a6 + 224);
            if (!v39)
            {
LABEL_141:
              sub_14BE058(*(a6 + 208));
              v65 = sub_19593CC(a6 + 208, v66);
              goto LABEL_142;
            }
          }

          v64 = *(a6 + 216);
          if (v64 >= *v39)
          {
            goto LABEL_141;
          }

          *(a6 + 216) = v64 + 1;
          v65 = *&v39[2 * v64 + 2];
LABEL_142:
          if (*(a3 + 23) >= 0)
          {
            v67 = *(a3 + 23);
          }

          else
          {
            v67 = a3[1];
          }

          if (byte_27BD1BF >= 0)
          {
            v68 = byte_27BD1BF;
          }

          else
          {
            v68 = qword_27BD1B0;
          }

          if (v68 + v67 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_256;
          }

          if (v68 + v67 > 0x16)
          {
            operator new();
          }

          memset(&__p, 0, sizeof(__p));
          *(&__p.__r_.__value_.__s + 23) = v68 + v67;
          a5 = v118;
          if (v67)
          {
            if (*(a3 + 23) >= 0)
            {
              v69 = a3;
            }

            else
            {
              v69 = *a3;
            }

            memmove(&__p, v69, v67);
          }

          v70 = &__p + v67;
          if (v68)
          {
            if (byte_27BD1BF >= 0)
            {
              v71 = &qword_27BD1A8;
            }

            else
            {
              v71 = qword_27BD1A8;
            }

            memmove(v70, v71, v68);
          }

          v70[v68] = 0;
          *(v65 + 16) |= 1u;
          v72 = *(v65 + 8);
          v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
          if (v72)
          {
            v73 = *v73;
          }

          sub_194EA30((v65 + 24), &__p, v73);
          v11 = v119;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v74 = *(v65 + 16);
          *(v65 + 64) = 5;
          *(v65 + 16) = v74 | 0x24;
          v12 = *(v65 + 40);
          if (!v12)
          {
            goto LABEL_219;
          }

          goto LABEL_5;
        }

        *(v16 + 16) = v20 | 0x44;
        *(v16 + 64) = 1;
        if (*(a3 + 23) >= 0)
        {
          v26 = *(a3 + 23);
        }

        else
        {
          v26 = a3[1];
        }

        if (v26 + 15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_256;
        }

        if (v26 + 15 >= 0x17)
        {
          operator new();
        }

        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v26 + 15;
        if (v26)
        {
          if (*(a3 + 23) >= 0)
          {
            v30 = a3;
          }

          else
          {
            v30 = *a3;
          }

          memmove(&__p, v30, v26);
        }

        strcpy(&__p + v26, "_RedLightCamera");
        *(v16 + 16) |= 1u;
        v31 = *(v16 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        sub_194EA30((v16 + 48), &__p, v32);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v33 = *(a6 + 224);
          if (!v33)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v33 = *(a6 + 224);
          if (!v33)
          {
            goto LABEL_119;
          }
        }

        v54 = *(a6 + 216);
        if (v54 >= *v33)
        {
LABEL_119:
          sub_14BE058(*(a6 + 208));
          v55 = sub_19593CC(a6 + 208, v56);
          goto LABEL_120;
        }

        *(a6 + 216) = v54 + 1;
        v55 = *&v33[2 * v54 + 2];
LABEL_120:
        if (*(a3 + 23) >= 0)
        {
          v57 = *(a3 + 23);
        }

        else
        {
          v57 = a3[1];
        }

        if (v57 + 15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_256;
        }

        if (v57 + 15 >= 0x17)
        {
          operator new();
        }

        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v57 + 15;
        v11 = v119;
        if (v57)
        {
          if (*(a3 + 23) >= 0)
          {
            v58 = a3;
          }

          else
          {
            v58 = *a3;
          }

          memmove(&__p, v58, v57);
        }

        a6 = v117;
        strcpy(&__p + v57, "_RedLightCamera");
        *(v55 + 16) |= 1u;
        v59 = *(v55 + 8);
        v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
        if (v59)
        {
          v60 = *v60;
        }

        sub_194EA30((v55 + 24), &__p, v60);
        a5 = v118;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v62 = *(v55 + 16);
        *(v55 + 64) = 2;
        *(v55 + 16) = v62 | 0x24;
        v63 = *(v55 + 40);
        if (!v63)
        {
          v109 = *(v55 + 8);
          v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
          if (v109)
          {
            v110 = *v110;
          }

          v111 = sub_16F5828(v110);
          *(v55 + 40) = v111;
          sub_EC6D34((a2 + 20), v111, v112);
          if (!sub_683530(a2))
          {
            goto LABEL_6;
          }

LABEL_244:
          *(v55 + 16) |= 0x20u;
          *(v55 + 64) = 5;
          goto LABEL_6;
        }

        sub_EC6D34((a2 + 20), v63, v61);
        if (sub_683530(a2))
        {
          goto LABEL_244;
        }

LABEL_6:
        v10 += 184;
      }

      while (v10 != v11);
    }
  }
}

void sub_ED20BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED2340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED236C(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  v5[23] = 15;
  strcpy(v5, "ResponseBuilder");
  memset(v4, 0, sizeof(v4));
  v3 = sub_3AEC94(a2, v5, v4);
  sub_41D7AC(v3, &v6);
  sub_ED7F90();
}

void sub_ED24D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_ED250C(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char **a5@<X4>, uint64_t a6@<X8>)
{
  sub_1757EA4(a6, 0, 0);
  v10 = *a2;
  v133 = a2[1];
  v134 = a2;
  if (*a2 == v133)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_156:
      *(a6 + 40) |= 0x400000u;
      *(a6 + 552) = 20;
      return;
    }

    sub_19594F8(__p);
    sub_4A5C(__p, "No routes found", 15);
    if ((v148 & 0x10) != 0)
    {
      v129 = v147;
      if (v147 < v143)
      {
        v147 = v143;
        v129 = v143;
      }

      v130 = v142;
      v77 = v129 - v142;
      if (v129 - v142 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_159;
      }
    }

    else
    {
      if ((v148 & 8) == 0)
      {
        v77 = 0;
        v137 = 0;
LABEL_151:
        *(&__dst + v77) = 0;
        sub_7E854(&__dst, 1u);
        if (v137 < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v146) < 0)
        {
          operator delete(v144);
        }

        std::locale::~locale(&v139);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_156;
      }

      v130 = locale;
      v77 = v141 - locale;
      if ((v141 - locale) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_159:
        sub_3244();
      }
    }

    if (v77 >= 0x17)
    {
      operator new();
    }

    v137 = v77;
    if (v77)
    {
      memmove(&__dst, v130, v77);
    }

    goto LABEL_151;
  }

  v131 = a4;
  do
  {
    v11 = *(a6 + 64);
    if (v11 && (v12 = *(a6 + 56), v12 < *v11))
    {
      *(a6 + 56) = v12 + 1;
      v13 = *&v11[2 * v12 + 2];
    }

    else
    {
      v14 = sub_14BD738(*(a6 + 48));
      v13 = sub_19593CC(a6 + 48, v14);
    }

    v15 = sub_68DB24(v10);
    *(v13 + 40) |= 4u;
    v16 = *(v13 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    HIBYTE(v139.__locale_) = 4;
    LODWORD(__p[0]) = v15;
    BYTE4(__p[0]) = 0;
    sub_194EA1C((v13 + 720), __p, v17);
    if (SHIBYTE(v139.__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    v18 = sub_68D7F4(v10);
    v19 = sub_ECA8CC(v18);
    *(v13 + 40) |= 0x1000000u;
    *(v13 + 884) = v19;
    if (sub_68D828(v10, 4))
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_68D828(v10, 9);
    }

    *(v13 + 44) |= 1u;
    *(v13 + 916) = v20 ^ 1;
    v21 = sub_68D828(v10, 5);
    *(v13 + 44) |= 2u;
    *(v13 + 917) = v21 ^ 1;
    sub_ECCB58(a1, v10, v13);
    v22 = sub_394BD0();
    v23 = sub_EC7E7C(v22);
    *(v13 + 40) |= 0x200000u;
    *(v13 + 872) = v23;
    v24 = sub_68C454(v10, 0);
    v25 = sub_EC7E9C(*(v24 + 1097));
    *(v13 + 40) |= 0x2000000u;
    *(v13 + 888) = v25;
    v26 = sub_68DEC0(v10);
    v27 = *v26;
    v28 = v26[1];
    if (*v26 != v28)
    {
      while (1)
      {
        v47 = *(v13 + 144);
        if (v47 && (v48 = *(v13 + 136), v48 < *v47))
        {
          *(v13 + 136) = v48 + 1;
          v49 = *&v47[2 * v48 + 2];
        }

        else
        {
          v50 = *(v13 + 128);
          if (!v50)
          {
            operator new();
          }

          *v52 = v51;
          v52[1] = sub_195A650;
          *v51 = 0;
          v51[1] = 0;
          v51[2] = 0;
          v49 = sub_19593CC(v13 + 128, v51);
        }

        if (v27 == v49)
        {
          goto LABEL_41;
        }

        v53 = *(v27 + 23);
        if (*(v49 + 23) < 0)
        {
          break;
        }

        if ((*(v27 + 23) & 0x80) != 0)
        {
          sub_13A68(v49, *v27, *(v27 + 1));
LABEL_41:
          v27 = (v27 + 24);
          if (v27 == v28)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v54 = *v27;
          *(v49 + 16) = *(v27 + 2);
          *v49 = v54;
          v27 = (v27 + 24);
          if (v27 == v28)
          {
            goto LABEL_15;
          }
        }
      }

      if (v53 >= 0)
      {
        v45 = v27;
      }

      else
      {
        v45 = *v27;
      }

      if (v53 >= 0)
      {
        v46 = *(v27 + 23);
      }

      else
      {
        v46 = *(v27 + 1);
      }

      sub_13B38(v49, v45, v46);
      goto LABEL_41;
    }

LABEL_15:
    v29 = sub_68DDC0(v10);
    v30 = *v29;
    v31 = v29[1];
    if (*v29 != v31)
    {
      while (1)
      {
        v57 = *(v13 + 312);
        if (v57 && (v58 = *(v13 + 304), v58 < *v57))
        {
          *(v13 + 304) = v58 + 1;
          v59 = *&v57[2 * v58 + 2];
          v60 = *(v59 + 40);
          if (!v60)
          {
            goto LABEL_69;
          }
        }

        else
        {
          sub_14BAE64(*(v13 + 296));
          v59 = sub_19593CC(v13 + 296, v61);
          v60 = *(v59 + 40);
          if (!v60)
          {
            goto LABEL_69;
          }
        }

        v62 = *(v59 + 32);
        if (v62 >= *v60)
        {
LABEL_69:
          v64 = *(v59 + 24);
          if (!v64)
          {
            operator new();
          }

          *v66 = v65;
          v66[1] = sub_195A650;
          *v65 = 0;
          v65[1] = 0;
          v65[2] = 0;
          v63 = sub_19593CC(v59 + 24, v65);
          goto LABEL_72;
        }

        *(v59 + 32) = v62 + 1;
        v63 = *&v60[2 * v62 + 2];
LABEL_72:
        if (v30 == v63)
        {
LABEL_61:
          v30 += 3;
          if (v30 == v31)
          {
            break;
          }
        }

        else
        {
          v67 = *(v30 + 23);
          if (*(v63 + 23) < 0)
          {
            if (v67 >= 0)
            {
              v55 = v30;
            }

            else
            {
              v55 = *v30;
            }

            if (v67 >= 0)
            {
              v56 = *(v30 + 23);
            }

            else
            {
              v56 = v30[1];
            }

            sub_13B38(v63, v55, v56);
            goto LABEL_61;
          }

          if ((*(v30 + 23) & 0x80) != 0)
          {
            sub_13A68(v63, *v30, v30[1]);
            goto LABEL_61;
          }

          v68 = *v30;
          *(v63 + 16) = v30[2];
          *v63 = v68;
          v30 += 3;
          if (v30 == v31)
          {
            break;
          }
        }
      }
    }

    v32 = sub_68DE5C(v10);
    if (!sub_4D1F6C(v32))
    {
      v33 = sub_68DE5C(v10);
      *(v13 + 40) |= 0x2000u;
      v34 = *(v13 + 808);
      if (!v34)
      {
        v35 = *(v13 + 8);
        v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v36 = *v36;
        }

        sub_14BAE64(v36);
        v34 = v37;
        *(v13 + 808) = v37;
      }

      sub_64D110(v33, v34);
    }

    sub_ECCE4C(a1, v10, a3, v13);
    v38 = sub_68C454(v10, 0);
    v39 = v38;
    if (v38[1503] != v38[1504] && v38[1501] != 0x7FFFFFFFFFFFFFFFLL && v38[1502] != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v13 + 40) |= 0x4000u;
      v40 = *(v13 + 816);
      if (!v40)
      {
        v41 = *(v13 + 8);
        v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
        if (v41)
        {
          v42 = *v42;
        }

        sub_14BBF6C(v42);
        v40 = v43;
        *(v13 + 816) = v43;
      }

      sub_EC8758(v39 + 1501, v40);
    }

    sub_ECCFB0(a1, v10, v13);
    v44 = nullsub_1(v10);
    if (-1189124953 * ((v44[1] - *v44) >> 4))
    {
      sub_68C454(v10, 0);
      sub_ED47E4(a1);
    }

    sub_ED33B8(a1, v10, v13);
    v10 += 976;
  }

  while (v10 != v133);
  v69 = sub_3B2A90(*a1);
  v71 = *a2;
  v70 = a2[1];
  if (*a2 == v70)
  {
LABEL_84:
    v76 = 1;
  }

  else
  {
    v72 = v69;
    while (1)
    {
      v73 = nullsub_1(v71);
      v75 = *v73;
      v74 = v73[1];
      if (*v73 != v74)
      {
        break;
      }

LABEL_83:
      v71 += 976;
      if (v71 == v70)
      {
        goto LABEL_84;
      }
    }

    while (sub_4B7C5C(v72, v75, *(a3 + 40)) == 2)
    {
      v75 += 12656;
      if (v75 == v74)
      {
        goto LABEL_83;
      }
    }

    v76 = 0;
  }

  *(a6 + 40) |= 0x4000000u;
  *(a6 + 565) = v76;
  v79 = *v134;
  v78 = v134[1];
  if (*v134 == v78)
  {
LABEL_95:
    v83 = 0;
  }

  else
  {
    while (1)
    {
      v80 = nullsub_1(v79);
      v81 = *v80;
      v82 = *(v80 + 8);
      if (*v80 != v82)
      {
        break;
      }

LABEL_94:
      v79 += 976;
      if (v79 == v78)
      {
        goto LABEL_95;
      }
    }

    while (1)
    {
      sub_4D1DDC(v81, __p);
      __dst = a1;
      if (sub_EDE414(__p[0], __p[1], v139.__locale_, locale, &__dst))
      {
        break;
      }

      v81 += 1582;
      if (v81 == v82)
      {
        goto LABEL_94;
      }
    }

    v83 = 1;
  }

  *(a6 + 40) |= 0x10000000u;
  *(a6 + 567) = v83;
  if (*a3 == 1)
  {
    sub_ECD4F0(a1[1], v134, a6);
  }

  v84 = 0x4FBCDA3AC10C9715 * ((v134[1] - *v134) >> 7);
  if (v84 >= 1)
  {
    v85 = 0;
    v86 = v84 & 0x7FFFFFFF;
    do
    {
      v87 = *(*(a6 + 64) + 8 * v85 + 8);
      v88 = nullsub_1(&(*v134)[976 * v85]);
      v90 = *v88;
      v89 = v88[1];
      if (*v88 != v89)
      {
        v91 = (v90 + 7392);
        do
        {
          if (v91[619] == v91[620])
          {
            sub_EC6B44(v91, v87);
          }

          else
          {
            sub_ECA0F4((v90 + 12344), v87);
          }

          v90 += 12656;
          v91 += 1582;
        }

        while (v90 != v89);
      }

      ++v85;
    }

    while (v85 != v86);
  }

  sub_ED3814(a1, v134, a6);
  v94 = *v131;
  v93 = v131[1];
  if (*v131 != v93)
  {
    do
    {
      v95 = *(a6 + 136);
      if (v95 && (v96 = *(a6 + 128), v96 < *v95))
      {
        *(a6 + 128) = v96 + 1;
        v97 = *&v95[2 * v96 + 2];
      }

      else
      {
        v98 = sub_14BDE5C(*(a6 + 120));
        v97 = sub_19593CC(a6 + 120, v98);
      }

      sub_EC6F6C(v94, v97, 0, v92);
      v94 += 1120;
    }

    while (v94 != v93);
  }

  sub_ED3C10(a1, v134, a6);
  sub_ED456C(v99, v134, a5, a6);
  v100 = sub_1950D4C((a6 + 16), dword_278CFF0, 11, &off_2769490, 0);
  v101 = sub_68C454(*v134, 0);
  *(v100 + 16) |= 1u;
  v102 = *(v100 + 8);
  v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
  if (v102)
  {
    v103 = *v103;
  }

  sub_194EA1C((v100 + 48), (v101 + 7464), v103);
  v104 = sub_3AF114(*a1);
  v105 = sub_2D5630(*v104);
  v106 = *(a6 + 40);
  *(a6 + 566) = v105;
  *(a6 + 40) = v106 | 0x8400000;
  *(a6 + 552) = 0;
  if (*(a3 + 32) == 1)
  {
    sub_EEA6F4(__p, a3);
    v107 = -1056139499 * ((v134[1] - *v134) >> 7);
    if (v107 >= 1)
    {
      sub_EEA728(__p, *v134, *(*(a6 + 64) + 8));
      v108 = sub_1950D4C((a6 + 16), dword_278CFF0, 11, &off_2769490, 0);
      v109 = sub_68E91C(*v134);
      *(v108 + 16) |= 2u;
      v110 = *(v108 + 8);
      v111 = (v110 & 0xFFFFFFFFFFFFFFFCLL);
      if (v110)
      {
        v111 = *v111;
      }

      sub_194EA1C((v108 + 56), v109, v111);
      v112 = (v107 & 0x7FFFFFFF) - 1;
      if ((v107 & 0x7FFFFFFF) != 1)
      {
        v113 = 16;
        v114 = 976;
        do
        {
          sub_EEA728(__p, &(*v134)[v114], *(*(a6 + 64) + v113));
          v114 += 976;
          v113 += 8;
          --v112;
        }

        while (v112);
      }

      v115 = 0x4FBCDA3AC10C9715 * ((v134[1] - *v134) >> 7);
      if (v115 >= 1)
      {
        v116 = 0;
        v117 = v115 & 0x7FFFFFFF;
        do
        {
          v118 = *(*(a6 + 64) + 8 * v116 + 8);
          v119 = &(*v134)[976 * v116];
          v120 = nullsub_1(v119);
          v121 = v120[1] - *v120;
          if (v121)
          {
            v122 = 0;
            v123 = 0x5DDB1ADCB91F64A7 * (v121 >> 4);
            do
            {
              v124 = sub_68C454(v119, v122);
              sub_ED69F4(a1, v124, v116, v122++, v118, a6);
            }

            while (v123 != v122);
          }

          ++v116;
        }

        while (v116 != v117);
      }
    }
  }

  else
  {
    sub_EA8604(__p, a3);
    v125 = 0x4FBCDA3AC10C9715 * ((v134[1] - *v134) >> 7);
    if (v125 >= 1)
    {
      v126 = 0;
      v127 = v125 & 0x7FFFFFFF;
      v128 = 8;
      do
      {
        sub_EA8648(__p, &(*v134)[v126], *(*(a6 + 64) + v128));
        v126 += 976;
        v128 += 8;
        --v127;
      }

      while (v127);
    }
  }

  __p[0] = &off_26744A8;
  if (v153)
  {
    v154 = v153;
    operator delete(v153);
  }

  if (v152 < 0)
  {
    operator delete(v151);
  }

  if (v149)
  {
    v150 = v149;
    operator delete(v149);
  }

  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  if (v139.__locale_)
  {
    locale = v139.__locale_;
    operator delete(v139.__locale_);
  }
}