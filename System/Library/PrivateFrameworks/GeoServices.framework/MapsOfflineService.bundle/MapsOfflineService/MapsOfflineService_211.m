void sub_C8F6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

BOOL sub_C8F784(uint64_t a1)
{
  v2 = *a1 != 0x7FFFFFFF;
  if (*a1 != 0x7FFFFFFF || !sub_7E7E4(1u))
  {
    goto LABEL_19;
  }

  sub_19594F8(&v33);
  sub_4A5C(&v33, "The schedule lookup request entity has an invalid requested time", 64);
  if ((v43 & 0x10) != 0)
  {
    v4 = v42;
    if (v42 < v39)
    {
      v42 = v39;
      v4 = v39;
    }

    v5 = v38;
    v3 = v4 - v38;
    if (v4 - v38 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_57:
      sub_3244();
    }

LABEL_9:
    if (v3 >= 0x17)
    {
      operator new();
    }

    v32 = v3;
    if (v3)
    {
      memmove(&__dst, v5, v3);
    }

    goto LABEL_14;
  }

  if ((v43 & 8) != 0)
  {
    v5 = v36;
    v3 = v37 - v36;
    if (v37 - v36 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_57;
    }

    goto LABEL_9;
  }

  v3 = 0;
  v32 = 0;
LABEL_14:
  *(&__dst + v3) = 0;
  sub_7E854(&__dst, 1u);
  if (v32 < 0)
  {
    operator delete(__dst);
  }

  if (v41 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v35);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_19:
  if (*(a1 + 8) != 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v33);
    sub_4A5C(&v33, "The schedule lookup request entity has an invalid duration", 58);
    if ((v43 & 0x10) != 0)
    {
      v7 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v7 = v39;
      }

      v8 = v38;
      v6 = v7 - v38;
      if (v7 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v6 = 0;
        v32 = 0;
LABEL_32:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 1u);
        if (v32 < 0)
        {
          operator delete(__dst);
        }

        if (v41 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v35);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_37;
      }

      v8 = v36;
      v6 = v37 - v36;
      if (v37 - v36 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_59:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v32 = v6;
    if (v6)
    {
      memmove(&__dst, v8, v6);
    }

    goto LABEL_32;
  }

LABEL_37:
  v2 = 0;
LABEL_38:
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v9 == v10)
  {
LABEL_44:
    v12 = *(a1 + 72);
    v13 = *(a1 + 80);
    if (v12 != v13)
    {
      goto LABEL_68;
    }

    goto LABEL_73;
  }

  while (HIDWORD(*v9) && *v9 != 0xFFFFFFFFLL)
  {
    if (++v9 == v10)
    {
      goto LABEL_44;
    }
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v33);
    sub_4A5C(&v33, "The schedule lookup request entity has an invalid from stop ref", 63);
    if ((v43 & 0x10) != 0)
    {
      v15 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v15 = v39;
      }

      v16 = v38;
      v14 = v15 - v38;
      if (v15 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_121;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v14 = 0;
        v32 = 0;
LABEL_62:
        *(&__dst + v14) = 0;
        sub_7E854(&__dst, 1u);
        if (v32 < 0)
        {
          operator delete(__dst);
        }

        if (v41 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v35);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_67;
      }

      v16 = v36;
      v14 = v37 - v36;
      if (v37 - v36 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_121:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v32 = v14;
    if (v14)
    {
      memmove(&__dst, v16, v14);
    }

    goto LABEL_62;
  }

LABEL_67:
  v2 = 0;
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  if (v12 != v13)
  {
LABEL_68:
    while (HIDWORD(*v12) && *v12 != 0xFFFFFFFFLL)
    {
      if (++v12 == v13)
      {
        goto LABEL_73;
      }
    }

    if (!sub_7E7E4(1u))
    {
LABEL_92:
      v2 = 0;
      v19 = *(a1 + 96);
      v18 = *(a1 + 104);
      if (v19 != v18)
      {
        goto LABEL_93;
      }

      return v2;
    }

    sub_19594F8(&v33);
    sub_4A5C(&v33, "The schedule lookup request entity has an invalid to stop ref", 61);
    if ((v43 & 0x10) != 0)
    {
      v21 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v21 = v39;
      }

      v22 = v38;
      v20 = v21 - v38;
      if (v21 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_123;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v20 = 0;
        v32 = 0;
LABEL_87:
        *(&__dst + v20) = 0;
        sub_7E854(&__dst, 1u);
        if (v32 < 0)
        {
          operator delete(__dst);
        }

        if (v41 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v35);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_92;
      }

      v22 = v36;
      v20 = v37 - v36;
      if (v37 - v36 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_123:
        sub_3244();
      }
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    v32 = v20;
    if (v20)
    {
      memmove(&__dst, v22, v20);
    }

    goto LABEL_87;
  }

LABEL_73:
  v19 = *(a1 + 96);
  v18 = *(a1 + 104);
  if (v19 != v18)
  {
LABEL_93:
    while (1)
    {
      if (HIDWORD(*v19))
      {
        v23 = *v19 == 0xFFFFFFFFLL;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        goto LABEL_96;
      }

      if (sub_7E7E4(1u))
      {
        break;
      }

LABEL_95:
      v2 = 0;
LABEL_96:
      if (++v19 == v18)
      {
        return v2;
      }
    }

    sub_19594F8(&v33);
    sub_4A5C(&v33, "The schedule lookup request entity has an invalid permissible line ref", 70);
    if ((v43 & 0x10) != 0)
    {
      v25 = v42;
      v26 = &v38;
      if (v42 < v39)
      {
        v42 = v39;
        v25 = v39;
        v26 = &v38;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v24 = 0;
        v32 = 0;
LABEL_115:
        *(&__dst + v24) = 0;
        sub_7E854(&__dst, 1u);
        if (v32 < 0)
        {
          operator delete(__dst);
        }

        v33 = v30;
        *(&v33 + *(v30 - 3)) = v29;
        if (v41 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v35);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_95;
      }

      v25 = v37;
      v26 = &v36;
    }

    v27 = *v26;
    v24 = v25 - *v26;
    if (v24 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v32 = v25 - *v26;
    if (v24)
    {
      memmove(&__dst, v27, v24);
    }

    goto LABEL_115;
  }

  return v2;
}

void sub_C90324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_1959728(&a20);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a20);
  _Unwind_Resume(a1);
}

BOOL sub_C90434(_DWORD *a1)
{
  if (*a1 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v25);
    sub_4A5C(&v25, "Service frequency has an invalid start time", 43);
    if ((v35 & 0x10) != 0)
    {
      v9 = v34;
      if (v34 < v31)
      {
        v34 = v31;
        v9 = v31;
      }

      v10 = v30;
      v2 = v9 - v30;
      if (v9 - v30 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v35 & 8) == 0)
      {
        v2 = 0;
        v24 = 0;
LABEL_74:
        *(&__p + v2) = 0;
        sub_7E854(&__p, 1u);
        if (v24 < 0)
        {
          operator delete(__p);
        }

        if (v33 < 0)
        {
          operator delete(v32);
        }

        std::locale::~locale(&v27);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v10 = v28[0];
      v2 = v29 - v28[0];
      if (v29 - v28[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_33:
        sub_3244();
      }
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v24 = v2;
    if (!v2)
    {
      goto LABEL_74;
    }

LABEL_73:
    memmove(&__p, v10, v2);
    goto LABEL_74;
  }

  v4 = a1[1];
  if (v4 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v25);
    sub_4A5C(&v25, "Service frequency has an invalid end time", 41);
    if ((v35 & 0x10) != 0)
    {
      v12 = v34;
      if (v34 < v31)
      {
        v34 = v31;
        v12 = v31;
      }

      v10 = v30;
      v2 = v12 - v30;
      if (v12 - v30 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if ((v35 & 8) == 0)
      {
        v2 = 0;
        v24 = 0;
        goto LABEL_74;
      }

      v10 = v28[0];
      v2 = v29 - v28[0];
      if (v29 - v28[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_46:
        sub_3244();
      }
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v24 = v2;
    if (!v2)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (*a1 >= v4)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v25);
    v6 = sub_4A5C(&v25, "Service frequency covers an empty or negative time interval: ", 61);
    v7 = sub_258D4(v6);
    v8 = sub_4A5C(v7, " < ", 3);
    sub_258D4(v8);
    if ((v35 & 0x10) != 0)
    {
      v16 = v34;
      if (v34 < v31)
      {
        v34 = v31;
        v16 = v31;
      }

      v17 = &v30;
    }

    else
    {
      if ((v35 & 8) == 0)
      {
        v2 = 0;
        v24 = 0;
        goto LABEL_74;
      }

      v17 = v28;
      v16 = v29;
    }

    v10 = *v17;
    v2 = v16 - *v17;
    if (v2 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v24 = v16 - *v17;
    if (!v2)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v5 = a1[2];
  if (v5 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v25);
    sub_4A5C(&v25, "Service frequency has an invalid minimum headway", 48);
    if ((v35 & 0x10) != 0)
    {
      v19 = v34;
      if (v34 < v31)
      {
        v34 = v31;
        v19 = v31;
      }

      v20 = &v30;
    }

    else
    {
      if ((v35 & 8) == 0)
      {
        v2 = 0;
        v24 = 0;
        goto LABEL_74;
      }

      v20 = v28;
      v19 = v29;
    }

    v10 = *v20;
    v2 = v19 - *v20;
    if (v2 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v24 = v19 - *v20;
    if (!v2)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v11 = a1[3];
  if (v11 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v25);
    sub_4A5C(&v25, "Service frequency has an invalid maximum headway", 48);
    sub_1959680(&v25, &__p);
    sub_7E854(&__p, 1u);
    goto LABEL_83;
  }

  if (v5 > v11)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v25);
    v13 = sub_4A5C(&v25, "Service frequency has a minimum headway which is larger than the maximum headway: ", 82);
    v14 = sub_72140(v13, a1[2]);
    v15 = sub_4A5C(v14, " <= ", 4);
    sub_72140(v15, a1[3]);
    sub_1959680(&v25, &__p);
    sub_7E854(&__p, 1u);
    goto LABEL_83;
  }

  v18 = a1[4];
  result = 1;
  if (v18 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v25);
    sub_4A5C(&v25, "Service frequency has an invalid mean headway", 45);
    sub_1959680(&v25, &__p);
    sub_7E854(&__p, 1u);
    goto LABEL_83;
  }

  if (v5 <= 0)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v25);
      sub_4A5C(&v25, "Service frequency has a min headway value of ", 45);
      v22 = std::ostream::operator<<();
      sub_4A5C(v22, " sec", 4);
      sub_1959680(&v25, &__p);
      sub_7E854(&__p, 1u);
      goto LABEL_83;
    }
  }

  else if (v18 <= 0)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v25);
      sub_4A5C(&v25, "Service frequency has a mean headway value of ", 46);
      v21 = std::ostream::operator<<();
      sub_4A5C(v21, " sec", 4);
      sub_1959680(&v25, &__p);
      sub_7E854(&__p, 1u);
LABEL_83:
      if (v24 < 0)
      {
        operator delete(__p);
      }

      sub_1959728(&v25);
      return 0;
    }
  }

  return result;
}

void sub_C90C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_C90DBC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __ROR8__(**(a3 + 72), 32);
  if ((sub_C7F708((a1 + 4136), v6) & 1) == 0)
  {
    if (!sub_7E7E4(3u))
    {
      return 0;
    }

    sub_19594F8(&v154);
    v14 = sub_4A5C(&v154, "Stop ", 5);
    v15 = sub_2FF718(v14, a2);
    sub_4A5C(v15, " (muid: ", 8);
    sub_A4FC74((a1 + 4120), a2);
    v16 = std::ostream::operator<<();
    v17 = sub_4A5C(v16, ") references stop pattern ", 26);
    v18 = sub_2FF718(v17, v6);
    sub_4A5C(v18, " which does not exist", 21);
    if ((v164 & 0x10) != 0)
    {
      v29 = v163;
      if (v163 < v160)
      {
        v163 = v160;
        v29 = v160;
      }

      v30 = v159;
      v19 = v29 - v159;
      if (v29 - v159 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if ((v164 & 8) == 0)
      {
        v19 = 0;
        v153 = 0;
LABEL_219:
        *(&__dst + v19) = 0;
        sub_7E854(&__dst, 3u);
        if (v153 < 0)
        {
          operator delete(__dst);
        }

        if (v162 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v156);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v30 = v157[0];
      v19 = v158 - v157[0];
      if (v158 - v157[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_99:
        sub_3244();
      }
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    v153 = v19;
    if (!v19)
    {
      goto LABEL_219;
    }

    goto LABEL_218;
  }

  v7 = sub_A57920((a1 + 4136), v6);
  v8 = (v7 - *v7);
  if (*v8 < 9u || (v9 = v8[4]) == 0 || *(v7 + v9 + *(v7 + v9)) <= *(*(a3 + 72) + 8) || (v10 = sub_A57920((a1 + 4136), v6), v11 = (v10 - *v10), *v11 < 9u) || (v12 = v11[4]) == 0 || *(v10 + v12 + *(v10 + v12)) <= *(*(a3 + 72) + 10))
  {
    if (!sub_7E7E4(3u))
    {
LABEL_38:
      v13 = 0;
      goto LABEL_39;
    }

    sub_19594F8(&v154);
    v20 = sub_4A5C(&v154, "Stop ", 5);
    v21 = sub_2FF718(v20, a2);
    sub_4A5C(v21, " (muid: ", 8);
    sub_A4FC74((a1 + 4120), a2);
    v22 = std::ostream::operator<<();
    v23 = sub_4A5C(v22, ") references stop pattern ", 26);
    v24 = sub_2FF718(v23, v6);
    v25 = sub_4A5C(v24, " at first stop index ", 21);
    std::ostream::operator<<();
    v26 = sub_4A5C(v25, " and last stop index ", 21);
    std::ostream::operator<<();
    v27 = sub_4A5C(v26, ", but the stop pattern has only ", 32);
    sub_A57920((a1 + 4136), v6);
    std::ostream::operator<<();
    sub_4A5C(v27, " stops", 6);
    if ((v164 & 0x10) != 0)
    {
      v31 = v163;
      if (v163 < v160)
      {
        v163 = v160;
        v31 = v160;
      }

      v32 = v159;
      v28 = v31 - v159;
      if (v31 - v159 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if ((v164 & 8) == 0)
      {
        v28 = 0;
        v153 = 0;
LABEL_33:
        *(&__dst + v28) = 0;
        sub_7E854(&__dst, 3u);
        if (v153 < 0)
        {
          operator delete(__dst);
        }

        if (v162 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v156);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_38;
      }

      v32 = v157[0];
      v28 = v158 - v157[0];
      if (v158 - v157[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_101:
        sub_3244();
      }
    }

    if (v28 >= 0x17)
    {
      operator new();
    }

    v153 = v28;
    if (v28)
    {
      memmove(&__dst, v32, v28);
    }

    goto LABEL_33;
  }

  v13 = 1;
LABEL_39:
  v33 = *(*(a3 + 72) + 8);
  v34 = sub_A57920((a1 + 4136), v6);
  v35 = (v34 - *v34);
  if (*v35 >= 9u && (v36 = v35[4]) != 0)
  {
    v37 = (v34 + v36 + *(v34 + v36));
  }

  else
  {
    v37 = 0;
  }

  v38 = __ROR8__(*sub_A571D4(v37, v33), 32);
  v39 = HIDWORD(a2);
  v40 = HIDWORD(v38) == HIDWORD(a2) && v38 == a2;
  if (!v40 || ((v41 = *(*(a3 + 72) + 10), v42 = sub_A57920((a1 + 4136), v6), v43 = (v42 - *v42), *v43 < 9u) || (v44 = v43[4]) == 0 ? (v45 = 0) : (v45 = (v42 + v44 + *(v42 + v44))), (v46 = __ROR8__(*sub_A571D4(v45, v41), 32), HIDWORD(v38) == HIDWORD(v46)) ? (v47 = v46 == v38) : (v47 = 0), !v47))
  {
    if (!sub_7E7E4(3u))
    {
LABEL_81:
      v13 = 0;
      goto LABEL_82;
    }

    sub_19594F8(&v154);
    v48 = sub_4A5C(&v154, "Stop ", 5);
    v49 = sub_2FF718(v48, a2);
    sub_4A5C(v49, " (muid: ", 8);
    sub_A4FC74((a1 + 4120), a2);
    v50 = std::ostream::operator<<();
    v51 = sub_4A5C(v50, ") references stop pattern ", 26);
    v52 = sub_2FF718(v51, v6);
    v53 = sub_4A5C(v52, " at first stop ", 15);
    v54 = *(*(a3 + 72) + 8);
    v55 = sub_A57920((a1 + 4136), v6);
    v56 = (v55 - *v55);
    if (*v56 >= 9u && (v57 = v56[4]) != 0)
    {
      v58 = (v55 + v57 + *(v55 + v57));
    }

    else
    {
      v58 = 0;
    }

    v59 = sub_A571D4(v58, v54);
    v60 = sub_2FF718(v53, __ROR8__(*v59, 32));
    v61 = sub_4A5C(v60, " and last stop  ", 16);
    v62 = *(*(a3 + 72) + 10);
    v63 = sub_A57920((a1 + 4136), v6);
    v64 = (v63 - *v63);
    if (*v64 >= 9u && (v65 = v64[4]) != 0)
    {
      v66 = (v63 + v65 + *(v63 + v65));
    }

    else
    {
      v66 = 0;
    }

    v67 = sub_A571D4(v66, v62);
    v68 = sub_2FF718(v61, __ROR8__(*v67, 32));
    sub_4A5C(v68, ", which are different from the stop", 35);
    if ((v164 & 0x10) != 0)
    {
      v70 = v163;
      if (v163 < v160)
      {
        v163 = v160;
        v70 = v160;
      }

      v71 = v159;
      v69 = v70 - v159;
      if (v70 - v159 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if ((v164 & 8) == 0)
      {
        v69 = 0;
        v153 = 0;
LABEL_76:
        *(&__dst + v69) = 0;
        sub_7E854(&__dst, 3u);
        if (v153 < 0)
        {
          operator delete(__dst);
        }

        if (v162 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v156);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_81;
      }

      v71 = v157[0];
      v69 = v158 - v157[0];
      if (v158 - v157[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_103:
        sub_3244();
      }
    }

    if (v69 >= 0x17)
    {
      operator new();
    }

    v153 = v69;
    if (v69)
    {
      memmove(&__dst, v71, v69);
    }

    goto LABEL_76;
  }

LABEL_82:
  v72 = *(a3 + 72);
  v73 = *(v72 + 8);
  if (!*(v72 + 8))
  {
    goto LABEL_120;
  }

  v74 = 0;
  while (1)
  {
    v75 = sub_A57920((a1 + 4136), v6);
    v76 = (v75 - *v75);
    if (*v76 >= 9u && (v77 = v76[4]) != 0)
    {
      v78 = (v75 + v77 + *(v75 + v77));
    }

    else
    {
      v78 = 0;
    }

    v79 = __ROR8__(*sub_A571D4(v78, v74), 32);
    if (v39 == HIDWORD(v79) && v79 == a2)
    {
      break;
    }

    if (v73 == ++v74)
    {
      goto LABEL_120;
    }
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v154);
    v81 = sub_4A5C(&v154, "Stop ", 5);
    v82 = sub_2FF718(v81, a2);
    sub_4A5C(v82, " (muid: ", 8);
    sub_A4FC74((a1 + 4120), a2);
    v83 = std::ostream::operator<<();
    v84 = sub_4A5C(v83, ") is referenced by stop pattern ", 32);
    v85 = sub_2FF718(v84, v6);
    v86 = sub_4A5C(v85, " as first stop index ", 21);
    std::ostream::operator<<();
    sub_4A5C(v86, " but the stop already appears at index ", 39);
    std::ostream::operator<<();
    if ((v164 & 0x10) != 0)
    {
      v88 = v163;
      if (v163 < v160)
      {
        v163 = v160;
        v88 = v160;
      }

      v89 = &v159;
    }

    else
    {
      if ((v164 & 8) == 0)
      {
        v87 = 0;
        v153 = 0;
LABEL_114:
        *(&__dst + v87) = 0;
        sub_7E854(&__dst, 3u);
        if (v153 < 0)
        {
          operator delete(__dst);
        }

        if (v162 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v156);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_119;
      }

      v89 = v157;
      v88 = v158;
    }

    v90 = *v89;
    v87 = v88 - *v89;
    if (v87 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v87 >= 0x17)
    {
      operator new();
    }

    v153 = v88 - *v89;
    if (v87)
    {
      memmove(&__dst, v90, v87);
    }

    goto LABEL_114;
  }

LABEL_119:
  v13 = 0;
LABEL_120:
  v91 = *(*(a3 + 72) + 10);
  v92 = sub_A57920((a1 + 4136), v6);
  v93 = (v92 - *v92);
  if (*v93 >= 9u)
  {
    v94 = v93[4];
    if (v94)
    {
      v95 = v91 + 1;
      v96 = *(v92 + v94 + *(v92 + v94));
      v97 = v95 <= v96 ? v96 : v95;
      if (v95 < v96)
      {
        while (1)
        {
          v98 = sub_A57920((a1 + 4136), v6);
          v99 = (v98 - *v98);
          if (*v99 >= 9u && (v100 = v99[4]) != 0)
          {
            v101 = (v98 + v100 + *(v98 + v100));
          }

          else
          {
            v101 = 0;
          }

          v102 = __ROR8__(*sub_A571D4(v101, v95), 32);
          if (v39 == HIDWORD(v102) && v102 == a2)
          {
            break;
          }

          if (v97 == ++v95)
          {
            goto LABEL_156;
          }
        }

        if (!sub_7E7E4(3u))
        {
          goto LABEL_155;
        }

        sub_19594F8(&v154);
        v104 = sub_4A5C(&v154, "Stop ", 5);
        v105 = sub_2FF718(v104, a2);
        sub_4A5C(v105, " (muid: ", 8);
        sub_A4FC74((a1 + 4120), a2);
        v106 = std::ostream::operator<<();
        v107 = sub_4A5C(v106, ") is referenced by stop pattern ", 32);
        v108 = sub_2FF718(v107, v6);
        v109 = sub_4A5C(v108, " as last stop index ", 20);
        std::ostream::operator<<();
        sub_4A5C(v109, " but the stop again appears at index ", 37);
        std::ostream::operator<<();
        if ((v164 & 0x10) != 0)
        {
          v111 = v163;
          if (v163 < v160)
          {
            v163 = v160;
            v111 = v160;
          }

          v112 = &v159;
        }

        else
        {
          if ((v164 & 8) == 0)
          {
            v110 = 0;
            v153 = 0;
LABEL_150:
            *(&__dst + v110) = 0;
            sub_7E854(&__dst, 3u);
            if (v153 < 0)
            {
              operator delete(__dst);
            }

            if (v162 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v156);
            std::ostream::~ostream();
            std::ios::~ios();
LABEL_155:
            v13 = 0;
            goto LABEL_156;
          }

          v112 = v157;
          v111 = v158;
        }

        v113 = *v112;
        v110 = v111 - *v112;
        if (v110 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v110 >= 0x17)
        {
          operator new();
        }

        v153 = v111 - *v112;
        if (v110)
        {
          memmove(&__dst, v113, v110);
        }

        goto LABEL_150;
      }
    }
  }

LABEL_156:
  v114 = *(*(a3 + 72) + 12);
  v115 = sub_A57920((a1 + 4136), v6);
  v116 = (v115 - *v115);
  if (*v116 >= 0xFu)
  {
    v117 = v116[7];
    if (v117)
    {
      if (v114 == *(v115 + v117))
      {
        goto LABEL_179;
      }

LABEL_161:
      if (!sub_7E7E4(3u))
      {
LABEL_178:
        v13 = 0;
        goto LABEL_179;
      }

      sub_19594F8(&v154);
      v118 = sub_4A5C(&v154, "Stop ", 5);
      v119 = sub_2FF718(v118, a2);
      sub_4A5C(v119, " (muid: ", 8);
      sub_A4FC74((a1 + 4120), a2);
      v120 = std::ostream::operator<<();
      v121 = sub_4A5C(v120, ") references stop pattern ", 26);
      v122 = sub_2FF718(v121, v6);
      sub_4A5C(v122, " with a different transit type than the stop pattern itself: ", 61);
      v123 = std::ostream::operator<<();
      sub_4A5C(v123, " != ", 4);
      sub_A57920((a1 + 4136), v6);
      std::ostream::operator<<();
      if ((v164 & 0x10) != 0)
      {
        v125 = v163;
        if (v163 < v160)
        {
          v163 = v160;
          v125 = v160;
        }

        v126 = v159;
        v124 = v125 - v159;
        if (v125 - v159 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_227;
        }
      }

      else
      {
        if ((v164 & 8) == 0)
        {
          v124 = 0;
          v153 = 0;
LABEL_173:
          *(&__dst + v124) = 0;
          sub_7E854(&__dst, 3u);
          if (v153 < 0)
          {
            operator delete(__dst);
          }

          if (v162 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v156);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_178;
        }

        v126 = v157[0];
        v124 = v158 - v157[0];
        if (v158 - v157[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_227:
          sub_3244();
        }
      }

      if (v124 >= 0x17)
      {
        operator new();
      }

      v153 = v124;
      if (v124)
      {
        memmove(&__dst, v126, v124);
      }

      goto LABEL_173;
    }
  }

  if (v114 != 0x7FFF)
  {
    goto LABEL_161;
  }

LABEL_179:
  v127 = *(*(a3 + 72) + 14);
  v128 = sub_A57920((a1 + 4136), v6);
  v129 = (v128 - *v128);
  if (*v129 >= 0xDu)
  {
    v130 = v129[6];
    if (v130)
    {
      if (v127 == *(v128 + v130))
      {
        goto LABEL_202;
      }

LABEL_184:
      if (!sub_7E7E4(3u))
      {
LABEL_201:
        v13 = 0;
        goto LABEL_202;
      }

      sub_19594F8(&v154);
      v131 = sub_4A5C(&v154, "Stop ", 5);
      v132 = sub_2FF718(v131, a2);
      sub_4A5C(v132, " (muid: ", 8);
      sub_A4FC74((a1 + 4120), a2);
      v133 = std::ostream::operator<<();
      v134 = sub_4A5C(v133, ") references stop pattern ", 26);
      v135 = sub_2FF718(v134, v6);
      sub_4A5C(v135, " with a different required market support version than the stop pattern itself: ", 80);
      v136 = std::ostream::operator<<();
      sub_4A5C(v136, " != ", 4);
      sub_A57920((a1 + 4136), v6);
      std::ostream::operator<<();
      if ((v164 & 0x10) != 0)
      {
        v138 = v163;
        if (v163 < v160)
        {
          v163 = v160;
          v138 = v160;
        }

        v139 = v159;
        v137 = v138 - v159;
        if (v138 - v159 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_229;
        }
      }

      else
      {
        if ((v164 & 8) == 0)
        {
          v137 = 0;
          v153 = 0;
LABEL_196:
          *(&__dst + v137) = 0;
          sub_7E854(&__dst, 3u);
          if (v153 < 0)
          {
            operator delete(__dst);
          }

          if (v162 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v156);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_201;
        }

        v139 = v157[0];
        v137 = v158 - v157[0];
        if (v158 - v157[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_229:
          sub_3244();
        }
      }

      if (v137 >= 0x17)
      {
        operator new();
      }

      v153 = v137;
      if (v137)
      {
        memmove(&__dst, v139, v137);
      }

      goto LABEL_196;
    }
  }

  if (v127 != 1)
  {
    goto LABEL_184;
  }

LABEL_202:
  v140 = *(*(a3 + 72) + 15);
  v141 = sub_A57920((a1 + 4136), v6);
  v142 = (v141 - *v141);
  if (*v142 >= 0x13u)
  {
    v143 = v142[9];
    if (v143)
    {
      if ((v140 & 1) == (*(v141 + v143) & 2) >> 1)
      {
        return v13;
      }

LABEL_207:
      if (sub_7E7E4(3u))
      {
        sub_19594F8(&v154);
        v144 = sub_4A5C(&v154, "Stop ", 5);
        v145 = sub_2FF718(v144, a2);
        sub_4A5C(v145, " (muid: ", 8);
        sub_A4FC74((a1 + 4120), a2);
        v146 = std::ostream::operator<<();
        v147 = sub_4A5C(v146, ") references stop pattern ", 26);
        v148 = sub_2FF718(v147, v6);
        sub_4A5C(v148, " with a different preflight flag than the stop pattern itself: ", 63);
        v149 = std::ostream::operator<<();
        sub_4A5C(v149, " != ", 4);
        sub_A57920((a1 + 4136), v6);
        std::ostream::operator<<();
        if ((v164 & 0x10) != 0)
        {
          v150 = v163;
          if (v163 < v160)
          {
            v163 = v160;
            v150 = v160;
          }

          v30 = v159;
          v19 = v150 - v159;
          if (v150 - v159 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_231;
          }
        }

        else
        {
          if ((v164 & 8) == 0)
          {
            v19 = 0;
            v153 = 0;
            goto LABEL_219;
          }

          v30 = v157[0];
          v19 = v158 - v157[0];
          if (v158 - v157[0] > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_231:
            sub_3244();
          }
        }

        if (v19 >= 0x17)
        {
          operator new();
        }

        v153 = v19;
        if (!v19)
        {
          goto LABEL_219;
        }

LABEL_218:
        memmove(&__dst, v30, v19);
        goto LABEL_219;
      }

      return 0;
    }
  }

  if (v140)
  {
    goto LABEL_207;
  }

  return v13;
}

void sub_C92768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_C928E8(uint64_t a1, unint64_t *a2)
{
  v2 = sub_A57920((a1 + 4136), *a2);
  v3 = (v2 - *v2);
  if (*v3 < 7u || (v4 = v3[3]) == 0 || !*(v2 + v4 + *(v2 + v4)))
  {
    if (!sub_7E7E4(3u))
    {
LABEL_22:
      v5 = 0;
      goto LABEL_23;
    }

    sub_19594F8(&v588);
    v6 = sub_4A5C(&v588, "Stop pattern ", 13);
    v7 = sub_2FF718(v6, *a2);
    sub_4A5C(v7, " has no trips on it", 19);
    if ((v601 & 0x10) != 0)
    {
      v9 = v600;
      if (v600 < v595)
      {
        v600 = v595;
        v9 = v595;
      }

      v10 = v594;
      v8 = v9 - v594;
      if ((v9 - v594) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v601 & 8) == 0)
      {
        v8 = 0;
        v587 = 0;
LABEL_17:
        *(&__dst + v8) = 0;
        sub_7E854(&__dst, 3u);
        if (v587 < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v599) < 0)
        {
          operator delete(v597);
        }

        std::locale::~locale(&v590);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_22;
      }

      v10 = v591;
      v8 = v593 - v591;
      if ((v593 - v591) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_68:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v587 = v8;
    if (v8)
    {
      memmove(&__dst, v10, v8);
    }

    goto LABEL_17;
  }

  v5 = 1;
LABEL_23:
  v11 = sub_A57920((a1 + 4136), *a2);
  v12 = (v11 - *v11);
  if (*v12 < 9u || (v13 = v12[4]) == 0 || *(v11 + v13 + *(v11 + v13)) <= 1)
  {
    if (!sub_7E7E4(3u))
    {
LABEL_43:
      v5 = 0;
      goto LABEL_44;
    }

    sub_19594F8(&v588);
    v14 = sub_4A5C(&v588, "Stop pattern ", 13);
    v15 = sub_2FF718(v14, *a2);
    v16 = sub_4A5C(v15, " has ", 5);
    sub_A57920((a1 + 4136), *a2);
    std::ostream::operator<<();
    sub_4A5C(v16, " which is too few (at least 2 required)", 39);
    if ((v601 & 0x10) != 0)
    {
      v18 = v600;
      if (v600 < v595)
      {
        v600 = v595;
        v18 = v595;
      }

      v19 = v594;
      v17 = v18 - v594;
      if ((v18 - v594) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if ((v601 & 8) == 0)
      {
        v17 = 0;
        v587 = 0;
LABEL_38:
        *(&__dst + v17) = 0;
        sub_7E854(&__dst, 3u);
        if (v587 < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v599) < 0)
        {
          operator delete(v597);
        }

        std::locale::~locale(&v590);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_43;
      }

      v19 = v591;
      v17 = v593 - v591;
      if ((v593 - v591) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_66:
        sub_3244();
      }
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    v587 = v17;
    if (v17)
    {
      memmove(&__dst, v19, v17);
    }

    goto LABEL_38;
  }

LABEL_44:
  v20 = sub_A57920((a1 + 4136), *a2);
  v21 = (v20 - *v20);
  if (*v21 < 0x15u || !v21[10])
  {
    goto LABEL_54;
  }

  v22 = sub_A57920((a1 + 4136), *a2);
  v23 = (v22 - *v22);
  if (*v23 >= 0x15u && (v24 = v23[10]) != 0)
  {
    v25 = *(v22 + v24 + *(v22 + v24));
  }

  else
  {
    v25 = 0;
  }

  v26 = sub_A57920((a1 + 4136), *a2);
  v27 = (v26 - *v26);
  if (*v27 < 9u)
  {
    if (!v25)
    {
      goto LABEL_54;
    }

LABEL_63:
    if (!sub_7E7E4(3u))
    {
LABEL_836:
      v256 = 0;
      return v256 & 1;
    }

    sub_19594F8(&v588);
    v37 = sub_4A5C(&v588, "Stop pattern ", 13);
    v38 = sub_2FF718(v37, *a2);
    sub_4A5C(v38, " has ", 5);
    sub_A57920((a1 + 4136), *a2);
    v484 = std::ostream::operator<<();
    sub_4A5C(v484, " boarding restriction groups which does not match its number of stops ", 70);
    sub_A57920((a1 + 4136), *a2);
    std::ostream::operator<<();
    if ((v601 & 0x10) != 0)
    {
      v548 = v600;
      if (v600 < v595)
      {
        v600 = v595;
        v548 = v595;
      }

      v549 = &v594;
    }

    else
    {
      if ((v601 & 8) == 0)
      {
        v485 = 0;
        v587 = 0;
LABEL_831:
        *(&__dst + v485) = 0;
        sub_7E854(&__dst, 3u);
        if (v587 < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v599) < 0)
        {
          operator delete(v597);
        }

        std::locale::~locale(&v590);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_836;
      }

      v549 = &v591;
      v548 = v593;
    }

    v550 = *v549;
    v485 = v548 - *v549;
    if (v485 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v485 >= 0x17)
    {
      operator new();
    }

    v587 = v548 - *v549;
    if (v485)
    {
      memmove(&__dst, v550, v485);
    }

    goto LABEL_831;
  }

  v28 = v27[4];
  if (v28)
  {
    v28 = *(v26 + v28 + *(v26 + v28));
  }

  if (v25 != v28)
  {
    goto LABEL_63;
  }

LABEL_54:
  v29 = sub_A57920((a1 + 4136), *a2);
  v30 = (v29 - *v29);
  v565 = v5;
  if (*v30 >= 9u)
  {
    v31 = v30[4];
    if (v31)
    {
      if (*(v29 + v31 + *(v29 + v31)))
      {
        v33 = sub_A57920((a1 + 4136), *a2);
        v34 = (v33 - *v33);
        if (*v34 >= 0x15u)
        {
          v35 = v34[10];
          if (v35)
          {
            sub_BCAB48((v33 + v35 + *(v33 + v35)), 0);
          }
        }

        operator new();
      }
    }
  }

  sub_C9D368(0, 0, 0, 1);
  v36 = v565;
  sub_C98A60((a1 + 4136), *a2, &v588);
  if (v589 != v588)
  {
    v39 = 0;
    if (!v588)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  v39 = 1;
  if (v588)
  {
LABEL_71:
    v589 = v588;
    operator delete(v588);
  }

LABEL_72:
  if (v39)
  {
    goto LABEL_93;
  }

  if (!sub_7E7E4(3u))
  {
    v36 = 0;
    goto LABEL_93;
  }

  sub_19594F8(&v588);
  v40 = sub_4A5C(&v588, "Stop pattern ", 13);
  v41 = sub_2FF718(v40, *a2);
  sub_4A5C(v41, " has a set of boarding restriction groups that is not reflected by the unique boarding restriction groups associated with the stop pattern", 138);
  if ((v601 & 0x10) != 0)
  {
    v43 = v600;
    if (v600 < v595)
    {
      v600 = v595;
      v43 = v595;
    }

    v44 = v594;
    v42 = v43 - v594;
    if ((v43 - v594) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_820:
      sub_3244();
    }

LABEL_83:
    if (v42 >= 0x17)
    {
      operator new();
    }

    v587 = v42;
    if (v42)
    {
      memmove(&__dst, v44, v42);
    }

    goto LABEL_88;
  }

  if ((v601 & 8) != 0)
  {
    v44 = v591;
    v42 = v593 - v591;
    if ((v593 - v591) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_820;
    }

    goto LABEL_83;
  }

  v42 = 0;
  v587 = 0;
LABEL_88:
  *(&__dst + v42) = 0;
  sub_7E854(&__dst, 3u);
  if (v587 < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v599) < 0)
  {
    operator delete(v597);
  }

  std::locale::~locale(&v590);
  std::ostream::~ostream();
  std::ios::~ios();
  v36 = 0;
LABEL_93:
  v45 = sub_A57920((a1 + 4136), *a2);
  v46 = (v45 - *v45);
  if (*v46 >= 9u)
  {
    v47 = v46[4];
    if (v47)
    {
      v48 = *(v45 + v47 + *(v45 + v47));
      if (v48)
      {
        v49 = 0;
        do
        {
          v50 = sub_A57920((a1 + 4136), *a2);
          v51 = (v50 - *v50);
          if (*v51 >= 9u && (v52 = v51[4]) != 0)
          {
            v53 = (v50 + v52 + *(v50 + v52));
          }

          else
          {
            v53 = 0;
          }

          v54 = __ROR8__(*sub_A571D4(v53, v49), 32);
          if (*(a1 + 16))
          {
            v55 = v54 + 3;
            v56 = 0x100000000;
            if ((v54 & 0xFFFFFFFF00000000) != 0x100000000 || v55 >= 2)
            {
              v58 = sub_2D5204(**(a1 + 4120));
              v56 = v54 & 0xFFFFFFFF00000000;
              if ((v58 & 1) == 0)
              {
                goto LABEL_99;
              }
            }

            if (v56 == 0x100000000 && v55 < 2)
            {
              goto LABEL_125;
            }
          }

          else if ((v54 & 0xFFFFFFFF00000000) == 0x100000000 && (v54 + 3) < 2)
          {
LABEL_125:
            sub_A7905C(&v588, a1, v54, 1, 1, 0);
            v65 = v597;
            v66 = *v598;
            do
            {
              while (1)
              {
LABEL_126:
                if (v65 >= v66)
                {
LABEL_158:
                  if (sub_7E7E4(3u))
                  {
                    sub_19594F8(&v588);
                    v79 = sub_4A5C(&v588, "Stop pattern ", 13);
                    v80 = sub_2FF718(v79, *a2);
                    v81 = sub_4A5C(v80, " has stop ", 10);
                    v82 = sub_2FF718(v81, v54);
                    sub_4A5C(v82, " (muid: ", 8);
                    sub_A4FC74((a1 + 4120), v54);
                    v83 = std::ostream::operator<<();
                    sub_4A5C(v83, "), which does not reference the stop pattern", 44);
                    if ((v601 & 0x10) != 0)
                    {
                      v89 = v600;
                      v90 = &v594;
                      if (v600 < v595)
                      {
                        v600 = v595;
                        v89 = v595;
                        v90 = &v594;
                      }
                    }

                    else
                    {
                      if ((v601 & 8) == 0)
                      {
                        v84 = 0;
                        v587 = 0;
                        goto LABEL_184;
                      }

                      v89 = v593;
                      v90 = &v591;
                    }

                    v93 = *v90;
                    v84 = v89 - *v90;
                    if (v84 > 0x7FFFFFFFFFFFFFF7)
                    {
                      sub_3244();
                    }

                    if (v84 >= 0x17)
                    {
                      operator new();
                    }

                    v587 = v89 - *v90;
                    if (v84)
                    {
                      memmove(&__dst, v93, v84);
                    }

                    goto LABEL_184;
                  }

                  goto LABEL_98;
                }

                if (__ROR8__(*v65, 32) == *a2)
                {
                  goto LABEL_99;
                }

                v65 += 16;
                v597 = v65;
                if (v65 != v66)
                {
                  break;
                }

                v67 = (v595 + 2);
                v595 = v67;
                if (v67 < v596)
                {
                  while (1)
                  {
                    v68 = *v67;
                    v69 = *(v67 + 1);
                    if (*v67 != v69)
                    {
                      break;
                    }

                    v67 += 8;
                    v595 = v67;
                    if (v67 >= v596)
                    {
                      goto LABEL_126;
                    }
                  }

                  v597 = *v67;
                  *v598 = v69;
                  v66 = v69;
                  v65 = v68;
                  if (v68 < v69)
                  {
                    goto LABEL_140;
                  }
                }
              }
            }

            while (v65 >= v66);
            while (1)
            {
LABEL_140:
              if ((v598[9] & 1) == 0 && (v70 = v588, v71 = *v65, v72 = v588[517], sub_68312C(v72 + 3896)) && *(v72 + 493) && (v73 = __ROR8__(v71, 32), !sub_A576FC(v70 + 517, SHIDWORD(v73))) && (v74 = *(v70[517] + 493), __dst = v73, sub_A794D0(v74, &__dst)))
              {
                v65 = v597;
              }

              else
              {
                if (v598[8] == 1)
                {
                  v65 = v597;
                  v66 = *v598;
                  goto LABEL_126;
                }

                v75 = sub_C9E544((v588 + 487));
                v65 = v597;
                if (v75 >= v597[14])
                {
                  if (v598[8])
                  {
                    goto LABEL_156;
                  }

                  v76 = sub_585D8(v588 + 3896);
                  v65 = v597;
                  if ((v76 & 1) != 0 || (v597[15] & 1) == 0)
                  {
                    goto LABEL_156;
                  }
                }
              }

              v65 += 16;
              v597 = v65;
              if (v65 == *v598)
              {
                v77 = v595 + 2;
                v595 = v77;
                if (v77 >= v596)
                {
                  goto LABEL_156;
                }

                while (1)
                {
                  v65 = *v77;
                  v78 = v77[1];
                  if (*v77 != v78)
                  {
                    break;
                  }

                  v77 += 2;
                  v595 = v77;
                  if (v77 >= v596)
                  {
                    goto LABEL_158;
                  }
                }

                v597 = *v77;
                *v598 = v78;
                if (v65 >= v78)
                {
LABEL_156:
                  v66 = *v598;
                  goto LABEL_126;
                }
              }

              else if (v65 >= *v598)
              {
                goto LABEL_156;
              }
            }
          }

          v61 = __ROR8__(v54, 32);
          v62 = sub_2C939C(*(a1 + 4120) + 24, v61, 1);
          if (v62)
          {
            v63 = &v62[-*v62];
            if (*v63 >= 0x1Du)
            {
              v64 = *(v63 + 14);
              if (v64)
              {
                if (*&v62[v64 + *&v62[v64]] > HIDWORD(v61))
                {
                  goto LABEL_125;
                }
              }
            }
          }

          if (sub_7E7E4(3u))
          {
            sub_19594F8(&v588);
            v85 = sub_4A5C(&v588, "Stop pattern ", 13);
            v86 = sub_2FF718(v85, *a2);
            v87 = sub_4A5C(v86, " has stop ", 10);
            v88 = sub_2FF718(v87, v54);
            sub_4A5C(v88, ", which does not exist in the data.", 35);
            if ((v601 & 0x10) != 0)
            {
              v91 = v600;
              v92 = &v594;
              if (v600 < v595)
              {
                v600 = v595;
                v91 = v595;
                v92 = &v594;
              }
            }

            else
            {
              if ((v601 & 8) == 0)
              {
                v84 = 0;
                v587 = 0;
                goto LABEL_184;
              }

              v91 = v593;
              v92 = &v591;
            }

            v94 = *v92;
            v84 = v91 - *v92;
            if (v84 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v84 >= 0x17)
            {
              operator new();
            }

            v587 = v91 - *v92;
            if (v84)
            {
              memmove(&__dst, v94, v84);
            }

LABEL_184:
            *(&__dst + v84) = 0;
            sub_7E854(&__dst, 3u);
            if (v587 < 0)
            {
              operator delete(__dst);
            }

            v588 = v566;
            *(&v588 + *(v566 - 3)) = v561;
            if (SHIBYTE(v599) < 0)
            {
              operator delete(v597);
            }

            std::locale::~locale(&v590);
            std::ostream::~ostream();
            std::ios::~ios();
          }

LABEL_98:
          v36 = 0;
LABEL_99:
          ++v49;
        }

        while (v49 != v48);
      }
    }
  }

  v95 = sub_A57920((a1 + 4136), *a2);
  v96 = (v95 - *v95);
  if (*v96 >= 9u && (v97 = v96[4]) != 0)
  {
    v98 = v36;
    v99 = *(v95 + v97 + *(v95 + v97));
    if (v99 >= 2)
    {
      v100 = 1;
      while (1)
      {
        v101 = sub_A57920((a1 + 4136), *a2);
        v102 = (v101 - *v101);
        if (*v102 >= 9u && (v103 = v102[4]) != 0)
        {
          v104 = (v101 + v103 + *(v101 + v103));
        }

        else
        {
          v104 = 0;
        }

        v105 = *sub_A571D4(v104, v100 - 1);
        v106 = sub_A57920((a1 + 4136), *a2);
        v107 = (v106 - *v106);
        if (*v107 >= 9u && (v108 = v107[4]) != 0)
        {
          v109 = (v106 + v108 + *(v106 + v108));
        }

        else
        {
          v109 = 0;
        }

        v110 = __ROR8__(v105, 32);
        v111 = __ROR8__(*sub_A571D4(v109, v100), 32);
        if (*(a1 + 16) == 1)
        {
          v112 = HIDWORD(v110) != 1 || (v110 + 3) >= 2;
          if (v112 && !sub_2D5204(**(a1 + 4120)) || (HIDWORD(v111) != 1 || (v111 + 3) >= 2) && (sub_2D5204(**(a1 + 4120)) & 1) == 0)
          {
            goto LABEL_194;
          }
        }

        v113 = sub_A82A90(*(a1 + 4120) + 24, v110, 0, "routing stop");
        v114 = (v113 - *v113);
        if (*v114 >= 5u && (v115 = v114[2]) != 0)
        {
          v116 = *(v113 + v115);
        }

        else
        {
          v116 = 0;
        }

        v117 = sub_A82A90(*(a1 + 4120) + 24, v111, 0, "routing stop");
        v118 = (v117 - *v117);
        if (*v118 < 5u)
        {
          if (!v116)
          {
            goto LABEL_194;
          }
        }

        else
        {
          v119 = v118[2];
          if (v119)
          {
            LODWORD(v119) = *(v117 + v119);
          }

          if (v116 == v119)
          {
            goto LABEL_194;
          }
        }

        if (sub_7E7E4(3u))
        {
          break;
        }

LABEL_193:
        v98 = 0;
LABEL_194:
        if (v99 == ++v100)
        {
          goto LABEL_241;
        }
      }

      sub_19594F8(&v588);
      v120 = sub_4A5C(&v588, "Stop pattern ", 13);
      v121 = sub_2FF718(v120, *a2);
      v122 = sub_4A5C(v121, " has stops ", 11);
      v123 = sub_2FF718(v122, v110);
      sub_4A5C(v123, " (muid: ", 8);
      sub_A4FC74((a1 + 4120), v110);
      v124 = std::ostream::operator<<();
      v125 = sub_4A5C(v124, ") and ", 6);
      v126 = sub_2FF718(v125, v111);
      sub_4A5C(v126, " (muid: ", 8);
      sub_A4FC74((a1 + 4120), v111);
      v127 = std::ostream::operator<<();
      v128 = sub_4A5C(v127, ") in different connected components: ", 37);
      sub_A82A90(*(a1 + 4120) + 24, v110, 0, "routing stop");
      std::ostream::operator<<();
      sub_4A5C(v128, " and ", 5);
      sub_A82A90(*(a1 + 4120) + 24, v111, 0, "routing stop");
      std::ostream::operator<<();
      if ((v601 & 0x10) != 0)
      {
        v130 = v600;
        v131 = &v594;
        if (v600 < v595)
        {
          v600 = v595;
          v130 = v595;
          v131 = &v594;
        }
      }

      else
      {
        if ((v601 & 8) == 0)
        {
          v129 = 0;
          v587 = 0;
LABEL_236:
          *(&__dst + v129) = 0;
          sub_7E854(&__dst, 3u);
          if (v587 < 0)
          {
            operator delete(__dst);
          }

          v588 = v567;
          *(&v588 + *(v567 - 3)) = v559;
          if (SHIBYTE(v599) < 0)
          {
            operator delete(v597);
          }

          std::locale::~locale(&v590);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_193;
        }

        v130 = v593;
        v131 = &v591;
      }

      v132 = *v131;
      v129 = v130 - *v131;
      if (v129 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v129 >= 0x17)
      {
        operator new();
      }

      v587 = v130 - *v131;
      if (v129)
      {
        memmove(&__dst, v132, v129);
      }

      goto LABEL_236;
    }
  }

  else
  {
    v98 = v36;
  }

LABEL_241:
  v133 = sub_A57920((a1 + 4136), *a2);
  v134 = (v133 - *v133);
  if (*v134 >= 5u)
  {
    v135 = v134[2];
    if (v135)
    {
      v136 = *(v133 + v135 + *(v133 + v135));
      if (v136)
      {
        v137 = 0;
        v138 = (a1 + 4056);
        while (1)
        {
          v139 = sub_A57920((a1 + 4136), *a2);
          v140 = (v139 - *v139);
          if (*v140 >= 5u && (v141 = v140[2]) != 0)
          {
            v142 = (v139 + v141 + *(v139 + v141));
          }

          else
          {
            v142 = 0;
          }

          v143 = __ROR8__(*sub_A6E4F4(v142, v137), 32);
          if (*(a1 + 16) == 1 && (sub_2D5204(**v138) & 1) == 0)
          {
            goto LABEL_250;
          }

          v144 = __ROR8__(v143, 32);
          v145 = sub_2C939C((*v138 + 3), v144, 1);
          if (v145)
          {
            v146 = &v145[-*v145];
            if (*v146 >= 0xFu)
            {
              v147 = *(v146 + 7);
              if (v147)
              {
                if (*&v145[v147 + *&v145[v147]] > HIDWORD(v144))
                {
                  break;
                }
              }
            }
          }

          if (sub_7E7E4(3u))
          {
            sub_19594F8(&v588);
            v150 = sub_4A5C(&v588, "Stop pattern ", 13);
            v151 = sub_2FF718(v150, *a2);
            v152 = sub_4A5C(v151, " has line ", 10);
            v153 = sub_2FF718(v152, v143);
            sub_4A5C(v153, ", which does not exist in the data.", 35);
            if ((v601 & 0x10) != 0)
            {
              v155 = v600;
              v156 = &v594;
              if (v600 < v595)
              {
                v600 = v595;
                v155 = v595;
                v156 = &v594;
              }
            }

            else
            {
              if ((v601 & 8) == 0)
              {
                v154 = 0;
                v587 = 0;
                goto LABEL_286;
              }

              v155 = v593;
              v156 = &v591;
            }

            v157 = *v156;
            v154 = v155 - *v156;
            if (v154 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v154 >= 0x17)
            {
              operator new();
            }

            v587 = v155 - *v156;
            if (v154)
            {
              memmove(&__dst, v157, v154);
            }

LABEL_286:
            *(&__dst + v154) = 0;
            sub_7E854(&__dst, 3u);
            if (v587 < 0)
            {
              goto LABEL_245;
            }

            goto LABEL_246;
          }

LABEL_249:
          v98 = 0;
LABEL_250:
          if (++v137 == v136)
          {
            goto LABEL_444;
          }
        }

        sub_C7FB60(&v588, a1, v143, 1, 0);
        while (v597 < *v598)
        {
          if (__ROR8__(*v597, 32) == *a2 && v137 == v597[8])
          {
            goto LABEL_307;
          }

          v597 += 12;
          if (v597 == *v598)
          {
            v595 += 2;
            v148 = v595;
            if (v595 < v596)
            {
              while (1)
              {
                v149 = *(v148 + 1);
                if (*v148 != v149)
                {
                  break;
                }

                v148 += 8;
                v595 = v148;
                if (v148 >= v596)
                {
                  goto LABEL_263;
                }
              }

              v597 = *v148;
              *v598 = v149;
            }
          }

LABEL_263:
          sub_C7FDC4(&v588);
        }

        if (!sub_7E7E4(3u))
        {
          goto LABEL_306;
        }

        sub_19594F8(&v588);
        v158 = sub_4A5C(&v588, "Stop pattern ", 13);
        v159 = sub_2FF718(v158, *a2);
        v160 = sub_4A5C(v159, " has line ", 10);
        v161 = sub_2FF718(v160, v143);
        sub_4A5C(v161, " (muid: ", 8);
        sub_A81B90(v138, v143);
        v162 = std::ostream::operator<<();
        sub_4A5C(v162, "), which does not reference the stop pattern", 44);
        if ((v601 & 0x10) != 0)
        {
          v164 = v600;
          v165 = &v594;
          if (v600 < v595)
          {
            v600 = v595;
            v164 = v595;
            v165 = &v594;
          }
        }

        else
        {
          if ((v601 & 8) == 0)
          {
            v163 = 0;
            v587 = 0;
LABEL_301:
            *(&__dst + v163) = 0;
            sub_7E854(&__dst, 3u);
            if (v587 < 0)
            {
              operator delete(__dst);
            }

            v588 = v568;
            *(&v588 + *(v568 - 3)) = v562;
            if (SHIBYTE(v599) < 0)
            {
              operator delete(v597);
            }

            std::locale::~locale(&v590);
            std::ostream::~ostream();
            std::ios::~ios();
LABEL_306:
            v98 = 0;
LABEL_307:
            if (v137)
            {
              goto LABEL_369;
            }

            v167 = sub_92FC60((*v138 + 3), v144, 0, "line");
            v168 = (v167 - *v167);
            v169 = *v168;
            if (v169 < 0x11)
            {
              goto LABEL_315;
            }

            if (v168[8] && *(v167 + v168[8]) == 101)
            {
              v170 = 2;
              goto LABEL_316;
            }

            if (v169 >= 0x2F && (v171 = v168[23]) != 0)
            {
              v170 = *(v167 + v171);
            }

            else
            {
LABEL_315:
              v170 = 0;
            }

LABEL_316:
            v172 = sub_A57920((a1 + 4136), *a2);
            v173 = (v172 - *v172);
            if (*v173 < 0xBu)
            {
              if (!v170)
              {
                goto LABEL_341;
              }
            }

            else
            {
              v174 = v173[5];
              if (v174)
              {
                LODWORD(v174) = *(v172 + v174);
              }

              if (v170 == v174)
              {
                goto LABEL_341;
              }
            }

            if (!sub_7E7E4(3u))
            {
LABEL_340:
              v98 = 0;
LABEL_341:
              v185 = sub_92FC60((*v138 + 3), v144, 0, "line");
              v186 = (v185 - *v185);
              if (*v186 >= 0x31u && (v187 = v186[24]) != 0)
              {
                v188 = *(v185 + v187);
              }

              else
              {
                v188 = 2;
              }

              v189 = sub_A57920((a1 + 4136), *a2);
              v190 = (v189 - *v189);
              if (*v190 >= 0x19u)
              {
                v191 = v190[12];
                if (v191)
                {
                  if (v188 == *(v189 + v191))
                  {
                    goto LABEL_369;
                  }

LABEL_350:
                  if (!sub_7E7E4(1u))
                  {
LABEL_368:
                    v98 = 0;
                    goto LABEL_369;
                  }

                  sub_19594F8(&v588);
                  v192 = sub_4A5C(&v588, "Stop pattern ", 13);
                  v193 = sub_2FF718(v192, *a2);
                  v194 = sub_4A5C(v193, " has line ", 10);
                  v195 = sub_2FF718(v194, v143);
                  sub_4A5C(v195, " (muid: ", 8);
                  sub_A81B90(v138, v143);
                  v196 = std::ostream::operator<<();
                  sub_4A5C(v196, ") with fare estimate of ", 24);
                  sub_92FC60((*v138 + 3), v144, 0, "line");
                  v197 = std::ostream::operator<<();
                  sub_4A5C(v197, ", which does not match the stop pattern: ", 41);
                  sub_A57920((a1 + 4136), *a2);
                  std::ostream::operator<<();
                  if ((v601 & 0x10) != 0)
                  {
                    v199 = v600;
                    v200 = &v594;
                    if (v600 < v595)
                    {
                      v600 = v595;
                      v199 = v595;
                      v200 = &v594;
                    }
                  }

                  else
                  {
                    if ((v601 & 8) == 0)
                    {
                      v198 = 0;
                      v587 = 0;
LABEL_363:
                      *(&__dst + v198) = 0;
                      sub_7E854(&__dst, 1u);
                      if (v587 < 0)
                      {
                        operator delete(__dst);
                      }

                      v588 = v568;
                      *(&v588 + *(v568 - 3)) = v562;
                      if (SHIBYTE(v599) < 0)
                      {
                        operator delete(v597);
                      }

                      std::locale::~locale(&v590);
                      std::ostream::~ostream();
                      std::ios::~ios();
                      goto LABEL_368;
                    }

                    v199 = v593;
                    v200 = &v591;
                  }

                  v201 = *v200;
                  v198 = v199 - *v200;
                  if (v198 > 0x7FFFFFFFFFFFFFF7)
                  {
                    sub_3244();
                  }

                  if (v198 >= 0x17)
                  {
                    operator new();
                  }

                  v587 = v199 - *v200;
                  if (v198)
                  {
                    memmove(&__dst, v201, v198);
                  }

                  goto LABEL_363;
                }
              }

              if (v188 != 2)
              {
                goto LABEL_350;
              }

LABEL_369:
              v202 = sub_C4C36C(v138, v143);
              v203 = sub_A57920((a1 + 4136), *a2);
              v204 = (v203 - *v203);
              if (*v204 >= 0xDu && (v205 = v204[6]) != 0)
              {
                if (v202 != *(v203 + v205))
                {
                  goto LABEL_372;
                }
              }

              else if (v202 != 1)
              {
LABEL_372:
                if (!sub_7E7E4(3u))
                {
                  goto LABEL_394;
                }

                sub_19594F8(&v588);
                v206 = sub_4A5C(&v588, "Stop pattern ", 13);
                v207 = sub_2FF718(v206, *a2);
                v208 = sub_4A5C(v207, " has line ", 10);
                v209 = sub_2FF718(v208, v143);
                sub_4A5C(v209, " (muid: ", 8);
                sub_A81B90(v138, v143);
                v210 = std::ostream::operator<<();
                sub_4A5C(v210, ") with minimum required market support version of ", 50);
                sub_C4C36C(v138, v143);
                v211 = std::ostream::operator<<();
                sub_4A5C(v211, ", which does not match the stop pattern: ", 41);
                sub_A57920((a1 + 4136), *a2);
                std::ostream::operator<<();
                if ((v601 & 0x10) != 0)
                {
                  v213 = v600;
                  v214 = &v594;
                  if (v600 < v595)
                  {
                    v600 = v595;
                    v213 = v595;
                    v214 = &v594;
                  }
                }

                else
                {
                  if ((v601 & 8) == 0)
                  {
                    v212 = 0;
                    v587 = 0;
LABEL_389:
                    *(&__dst + v212) = 0;
                    sub_7E854(&__dst, 3u);
                    if (v587 < 0)
                    {
                      operator delete(__dst);
                    }

                    v588 = v568;
                    *(&v588 + *(v568 - 3)) = v562;
                    if (SHIBYTE(v599) < 0)
                    {
                      operator delete(v597);
                    }

                    std::locale::~locale(&v590);
                    std::ostream::~ostream();
                    std::ios::~ios();
LABEL_394:
                    v98 = 0;
                    if (v137)
                    {
                      goto LABEL_423;
                    }

LABEL_395:
                    v216 = sub_92FC60((*v138 + 3), v144, 0, "line");
                    v217 = (v216 - *v216);
                    if (*v217 >= 0x11u && (v218 = v217[8]) != 0)
                    {
                      v219 = *(v216 + v218);
                    }

                    else
                    {
                      v219 = 0x7FFF;
                    }

                    v220 = sub_A57920((a1 + 4136), *a2);
                    v221 = (v220 - *v220);
                    if (*v221 >= 0xFu)
                    {
                      v222 = v221[7];
                      if (v222)
                      {
                        if (v219 == *(v220 + v222))
                        {
                          goto LABEL_423;
                        }

LABEL_404:
                        if (!sub_7E7E4(3u))
                        {
LABEL_422:
                          v98 = 0;
                          goto LABEL_423;
                        }

                        sub_19594F8(&v588);
                        v223 = sub_4A5C(&v588, "Stop pattern ", 13);
                        v224 = sub_2FF718(v223, *a2);
                        v225 = sub_4A5C(v224, " has line ", 10);
                        v226 = sub_2FF718(v225, v143);
                        sub_4A5C(v226, " (muid: ", 8);
                        sub_A81B90(v138, v143);
                        v227 = std::ostream::operator<<();
                        sub_4A5C(v227, ") with transit type of ", 23);
                        sub_92FC60((*v138 + 3), v144, 0, "line");
                        v228 = std::ostream::operator<<();
                        sub_4A5C(v228, ", which does not match the stop pattern: ", 41);
                        sub_A57920((a1 + 4136), *a2);
                        std::ostream::operator<<();
                        if ((v601 & 0x10) != 0)
                        {
                          v230 = v600;
                          v231 = &v594;
                          if (v600 < v595)
                          {
                            v600 = v595;
                            v230 = v595;
                            v231 = &v594;
                          }
                        }

                        else
                        {
                          if ((v601 & 8) == 0)
                          {
                            v229 = 0;
                            v587 = 0;
LABEL_417:
                            *(&__dst + v229) = 0;
                            sub_7E854(&__dst, 3u);
                            if (v587 < 0)
                            {
                              operator delete(__dst);
                            }

                            v588 = v568;
                            *(&v588 + *(v568 - 3)) = v562;
                            if (SHIBYTE(v599) < 0)
                            {
                              operator delete(v597);
                            }

                            std::locale::~locale(&v590);
                            std::ostream::~ostream();
                            std::ios::~ios();
                            goto LABEL_422;
                          }

                          v230 = v593;
                          v231 = &v591;
                        }

                        v232 = *v231;
                        v229 = v230 - *v231;
                        if (v229 > 0x7FFFFFFFFFFFFFF7)
                        {
                          sub_3244();
                        }

                        if (v229 >= 0x17)
                        {
                          operator new();
                        }

                        v587 = v230 - *v231;
                        if (v229)
                        {
                          memmove(&__dst, v232, v229);
                        }

                        goto LABEL_417;
                      }
                    }

                    if (v219 != 0x7FFF)
                    {
                      goto LABEL_404;
                    }

LABEL_423:
                    v233 = sub_92FC60((*v138 + 3), v144, 0, "line");
                    v234 = (v233 - *v233);
                    if (*v234 < 0x23u)
                    {
                      goto LABEL_250;
                    }

                    v235 = v234[17];
                    if (!v235)
                    {
                      goto LABEL_250;
                    }

                    if (!*(v233 + v235))
                    {
                      goto LABEL_250;
                    }

                    v236 = sub_A57920((a1 + 4136), *a2);
                    v237 = (v236 - *v236);
                    if (*v237 >= 0x13u)
                    {
                      v238 = v237[9];
                      if (v238)
                      {
                        if ((*(v236 + v238) & 2) != 0)
                        {
                          goto LABEL_250;
                        }
                      }
                    }

                    if (sub_7E7E4(3u))
                    {
                      sub_19594F8(&v588);
                      v239 = sub_4A5C(&v588, "Stop pattern ", 13);
                      v240 = sub_2FF718(v239, *a2);
                      v241 = sub_4A5C(v240, " has line ", 10);
                      v242 = sub_2FF718(v241, v143);
                      sub_4A5C(v242, " (muid: ", 8);
                      sub_A81B90(v138, v143);
                      v243 = std::ostream::operator<<();
                      sub_4A5C(v243, ") with preflight flag of ", 25);
                      sub_92FC60((*v138 + 3), v144, 0, "line");
                      v244 = std::ostream::operator<<();
                      sub_4A5C(v244, ", which does not match the stop pattern: ", 41);
                      sub_A57920((a1 + 4136), *a2);
                      std::ostream::operator<<();
                      if ((v601 & 0x10) != 0)
                      {
                        v246 = v600;
                        v247 = &v594;
                        if (v600 < v595)
                        {
                          v600 = v595;
                          v246 = v595;
                          v247 = &v594;
                        }
                      }

                      else
                      {
                        if ((v601 & 8) == 0)
                        {
                          v245 = 0;
                          v587 = 0;
                          goto LABEL_442;
                        }

                        v246 = v593;
                        v247 = &v591;
                      }

                      v248 = *v247;
                      v245 = v246 - *v247;
                      if (v245 > 0x7FFFFFFFFFFFFFF7)
                      {
                        sub_3244();
                      }

                      if (v245 >= 0x17)
                      {
                        operator new();
                      }

                      v587 = v246 - *v247;
                      if (v245)
                      {
                        memmove(&__dst, v248, v245);
                      }

LABEL_442:
                      *(&__dst + v245) = 0;
                      sub_7E854(&__dst, 3u);
                      if (v587 < 0)
                      {
LABEL_245:
                        operator delete(__dst);
                      }

LABEL_246:
                      v588 = v568;
                      *(&v588 + *(v568 - 3)) = v562;
                      if (SHIBYTE(v599) < 0)
                      {
                        operator delete(v597);
                      }

                      std::locale::~locale(&v590);
                      std::ostream::~ostream();
                      std::ios::~ios();
                      goto LABEL_249;
                    }

                    goto LABEL_249;
                  }

                  v213 = v593;
                  v214 = &v591;
                }

                v215 = *v214;
                v212 = v213 - *v214;
                if (v212 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_3244();
                }

                if (v212 >= 0x17)
                {
                  operator new();
                }

                v587 = v213 - *v214;
                if (v212)
                {
                  memmove(&__dst, v215, v212);
                }

                goto LABEL_389;
              }

              if (v137)
              {
                goto LABEL_423;
              }

              goto LABEL_395;
            }

            sub_19594F8(&v588);
            v175 = sub_4A5C(&v588, "Stop pattern ", 13);
            v176 = sub_2FF718(v175, *a2);
            v177 = sub_4A5C(v176, " has line ", 10);
            v178 = sub_2FF718(v177, v143);
            sub_4A5C(v178, " (muid: ", 8);
            sub_A81B90(v138, v143);
            v179 = std::ostream::operator<<();
            sub_4A5C(v179, ") with routing preference of ", 29);
            sub_92FC60((*v138 + 3), v144, 0, "line");
            v180 = std::ostream::operator<<();
            sub_4A5C(v180, ", which does not match the stop pattern: ", 41);
            sub_A57920((a1 + 4136), *a2);
            std::ostream::operator<<();
            if ((v601 & 0x10) != 0)
            {
              v182 = v600;
              v183 = &v594;
              if (v600 < v595)
              {
                v600 = v595;
                v182 = v595;
                v183 = &v594;
              }
            }

            else
            {
              if ((v601 & 8) == 0)
              {
                v181 = 0;
                v587 = 0;
LABEL_335:
                *(&__dst + v181) = 0;
                sub_7E854(&__dst, 3u);
                if (v587 < 0)
                {
                  operator delete(__dst);
                }

                v588 = v568;
                *(&v588 + *(v568 - 3)) = v562;
                if (SHIBYTE(v599) < 0)
                {
                  operator delete(v597);
                }

                std::locale::~locale(&v590);
                std::ostream::~ostream();
                std::ios::~ios();
                goto LABEL_340;
              }

              v182 = v593;
              v183 = &v591;
            }

            v184 = *v183;
            v181 = v182 - *v183;
            if (v181 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v181 >= 0x17)
            {
              operator new();
            }

            v587 = v182 - *v183;
            if (v181)
            {
              memmove(&__dst, v184, v181);
            }

            goto LABEL_335;
          }

          v164 = v593;
          v165 = &v591;
        }

        v166 = *v165;
        v163 = v164 - *v165;
        if (v163 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v163 >= 0x17)
        {
          operator new();
        }

        v587 = v164 - *v165;
        if (v163)
        {
          memmove(&__dst, v166, v163);
        }

        goto LABEL_301;
      }
    }
  }

LABEL_444:
  if ((v98 & sub_C98C38(a1, a2)) != 1)
  {
    v256 = 0;
    return v256 & 1;
  }

  v249 = sub_A57920((a1 + 4136), *a2);
  v250 = (v249 - *v249);
  if (*v250 >= 0x13u)
  {
    v251 = v250[9];
    if (v251)
    {
      if (*(v249 + v251))
      {
        v460 = sub_A57920((a1 + 4136), *a2);
        v461 = (v460 - *v460);
        if (*v461 >= 7u)
        {
          v462 = v461[3];
          if (v462)
          {
            v463 = *(v460 + v462 + *(v460 + v462));
            if (v463)
            {
              v464 = 0;
              v256 = 1;
              while (1)
              {
                sub_A78D38((a1 + 4136), *a2, v464, &__dst);
                v465 = __dst;
                if (v586 - __dst == 12)
                {
LABEL_694:
                  v474 = sub_3A25A8(*(a1 + 4184) + 24, __ROR8__(*v465, 32), 0, "trip");
                  v475 = (v474 - *v474);
                  if (*v475 < 0x13u || (v476 = v475[9]) == 0 || !*(v474 + v476 + *(v474 + v476)))
                  {
                    if (sub_7E7E4(3u))
                    {
                      sub_19594F8(&v588);
                      v477 = sub_4A5C(&v588, "Frequency trip at index ", 24);
                      std::ostream::operator<<();
                      v478 = sub_4A5C(v477, " on stop pattern ", 17);
                      v479 = sub_2FF718(v478, *a2);
                      sub_4A5C(v479, " has no associated frequencies.", 31);
                      if ((v601 & 0x10) != 0)
                      {
                        v481 = v600;
                        v482 = &v594;
                        if (v600 < v595)
                        {
                          v600 = v595;
                          v481 = v595;
                          v482 = &v594;
                        }
                      }

                      else
                      {
                        if ((v601 & 8) == 0)
                        {
                          v480 = 0;
                          v584 = 0;
                          goto LABEL_710;
                        }

                        v481 = v593;
                        v482 = &v591;
                      }

                      v483 = *v482;
                      v480 = v481 - *v482;
                      if (v480 > 0x7FFFFFFFFFFFFFF7)
                      {
                        sub_3244();
                      }

                      if (v480 >= 0x17)
                      {
                        operator new();
                      }

                      v584 = v481 - *v482;
                      if (v480)
                      {
                        memmove(&__p, v483, v480);
                      }

LABEL_710:
                      *(&__p + v480) = 0;
                      sub_7E854(&__p, 3u);
                      if (v584 < 0)
                      {
                        operator delete(__p);
                      }

                      v588 = v570;
                      *(&v588 + *(v570 - 3)) = v564;
                      if (SHIBYTE(v599) < 0)
                      {
                        operator delete(v597);
                      }

                      std::locale::~locale(&v590);
                      std::ostream::~ostream();
                      std::ios::~ios();
                    }

                    v256 = 0;
                  }

                  v465 = __dst;
                  goto LABEL_717;
                }

                if (sub_7E7E4(3u))
                {
                  break;
                }

LABEL_693:
                v256 = 0;
                v465 = __dst;
                if (__dst != v586)
                {
                  goto LABEL_694;
                }

LABEL_717:
                if (v465)
                {
                  v586 = v465;
                  operator delete(v465);
                }

                if (v463 == ++v464)
                {
                  goto LABEL_723;
                }
              }

              sub_19594F8(&v588);
              v466 = sub_4A5C(&v588, "Frequency trip at index ", 24);
              std::ostream::operator<<();
              v467 = sub_4A5C(v466, " on stop pattern ", 17);
              v468 = sub_2FF718(v467, *a2);
              sub_4A5C(v468, " has a trip sequence size of ", 29);
              v469 = std::ostream::operator<<();
              sub_4A5C(v469, ", which must be 1", 17);
              if ((v601 & 0x10) != 0)
              {
                v471 = v600;
                v472 = &v594;
                if (v600 < v595)
                {
                  v600 = v595;
                  v471 = v595;
                  v472 = &v594;
                }
              }

              else
              {
                if ((v601 & 8) == 0)
                {
                  v470 = 0;
                  v584 = 0;
LABEL_688:
                  *(&__p + v470) = 0;
                  sub_7E854(&__p, 3u);
                  if (v584 < 0)
                  {
                    operator delete(__p);
                  }

                  v588 = v570;
                  *(&v588 + *(v570 - 3)) = v564;
                  if (SHIBYTE(v599) < 0)
                  {
                    operator delete(v597);
                  }

                  std::locale::~locale(&v590);
                  std::ostream::~ostream();
                  std::ios::~ios();
                  goto LABEL_693;
                }

                v471 = v593;
                v472 = &v591;
              }

              v473 = *v472;
              v470 = v471 - *v472;
              if (v470 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v470 >= 0x17)
              {
                operator new();
              }

              v584 = v471 - *v472;
              if (v470)
              {
                memmove(&__p, v473, v470);
              }

              goto LABEL_688;
            }
          }
        }

        v256 = 1;
LABEL_723:
        v486 = sub_A57920((a1 + 4136), *a2);
        v487 = (v486 - *v486);
        if (*v487 < 7u)
        {
          return v256 & 1;
        }

        v488 = v487[3];
        if (!v488)
        {
          return v256 & 1;
        }

        v571 = *(v486 + v488 + *(v486 + v488));
        if (v571 < 2)
        {
          return v256 & 1;
        }

        v489 = 1;
        while (1)
        {
          sub_A78D38((a1 + 4136), *a2, v489, &__dst);
          v490 = __dst;
          if (__dst != v586)
          {
            break;
          }

LABEL_763:
          if (v490)
          {
            v586 = v490;
            operator delete(v490);
          }

          if (++v489 == v571)
          {
            return v256 & 1;
          }
        }

        v491 = *__dst;
        v581 = *(__dst + 2);
        v580 = v491;
        v492 = sub_3A25A8(*(a1 + 4184) + 24, __ROR8__(v491, 32), 0, "trip");
        v493 = (v492 - *v492);
        if (*v493 < 0x13u || (v494 = v493[9]) == 0 || !*(v492 + v494 + *(v492 + v494)))
        {
LABEL_762:
          v490 = __dst;
          goto LABEL_763;
        }

        sub_A78D38((a1 + 4136), *a2, v489 - 1, &__p);
        v495 = __p;
        if (__p == v583)
        {
LABEL_760:
          if (v495)
          {
            v583 = v495;
            operator delete(v495);
          }

          goto LABEL_762;
        }

        v496 = *__p;
        v579 = *(__p + 2);
        v578 = v496;
        v497 = sub_3A25A8(*(a1 + 4184) + 24, __ROR8__(v496, 32), 0, "trip");
        v498 = (v497 - *v497);
        if (*v498 < 0x13u || (v499 = v498[9]) == 0 || (v500 = *(v497 + v499 + *(v497 + v499))) == 0)
        {
LABEL_759:
          v495 = __p;
          goto LABEL_760;
        }

        v577 = sub_A6E970((a1 + 4184), &v578, v500 - 1);
        v576 = sub_A6E7D4((a1 + 4184), &v580, 0);
        if (v577 <= v576)
        {
          goto LABEL_756;
        }

        if (!sub_7E7E4(3u))
        {
LABEL_755:
          v256 = 0;
LABEL_756:
          v512 = sub_A57920((a1 + 4136), *a2);
          v513 = (v512 - *v512);
          if (*v513 < 9u)
          {
            goto LABEL_759;
          }

          v514 = v513[4];
          if (!v514)
          {
            goto LABEL_759;
          }

          v560 = *(v512 + v514 + *(v512 + v514));
          if (v560 < 2)
          {
            goto LABEL_759;
          }

          v515 = 1;
          while (1)
          {
            v516 = sub_C9CF18((a1 + 4184), &v578, v515);
            v517 = sub_C9D140((a1 + 4184), &v578, v515);
            v518 = sub_C9CF18((a1 + 4184), &v580, v515);
            v519 = sub_C9D140((a1 + 4184), &v580, v515);
            v520 = v516 < 0 ? -5 : 5;
            v521 = v516 / 10 + (((103 * (v520 + v516 % 10)) >> 15) & 1) + ((103 * (v520 + v516 % 10)) >> 10);
            v522 = v518 < 0 ? -5 : 5;
            if ((v577 + v521) > (v576 + v518 / 10 + (((103 * (v522 + v518 % 10)) >> 15) & 1) + ((103 * (v522 + v518 % 10)) >> 10)))
            {
              break;
            }

LABEL_795:
            if (v517 < 0)
            {
              v534 = -5;
            }

            else
            {
              v534 = 5;
            }

            v535 = v517 / 10 + (((103 * (v534 + v517 % 10)) >> 15) & 1) + ((103 * (v534 + v517 % 10)) >> 10);
            if (v519 < 0)
            {
              v536 = -5;
            }

            else
            {
              v536 = 5;
            }

            if ((v577 + v535) <= (v576 + v519 / 10 + (((103 * (v536 + v519 % 10)) >> 15) & 1) + ((103 * (v536 + v519 % 10)) >> 10)))
            {
              goto LABEL_768;
            }

            if (sub_7E7E4(3u))
            {
              sub_19594F8(&v588);
              v537 = sub_4A5C(&v588, "On stop pattern ", 16);
              v538 = sub_2FF718(v537, *a2);
              sub_4A5C(v538, " the last frequency trip manifestation at trip index ", 53);
              v539 = std::ostream::operator<<();
              v540 = sub_4A5C(v539, " is overtaken by the first frequency trip manifestation at trip index ", 70);
              std::ostream::operator<<();
              v541 = sub_4A5C(v540, " in terms of static relative departure time: ", 45);
              LODWORD(v574) = v577 + v535;
              v542 = sub_258D4(v541);
              v543 = sub_4A5C(v542, " > ", 3);
              sub_258D4(v543);
              if ((v601 & 0x10) != 0)
              {
                v545 = v600;
                v546 = &v594;
                if (v600 < v595)
                {
                  v600 = v595;
                  v545 = v595;
                  v546 = &v594;
                }
              }

              else
              {
                if ((v601 & 8) == 0)
                {
                  v544 = 0;
                  v575 = 0;
LABEL_815:
                  *(&v574 + v544) = 0;
                  sub_7E854(&v574, 3u);
                  if (v575 < 0)
                  {
                    operator delete(v574);
                  }

                  v588 = v558;
                  *(&v588 + *(v558 - 3)) = v556;
                  if (SHIBYTE(v599) < 0)
                  {
                    operator delete(v597);
                  }

                  std::locale::~locale(&v590);
                  std::ostream::~ostream();
                  std::ios::~ios();
                  goto LABEL_767;
                }

                v545 = v593;
                v546 = &v591;
              }

              v547 = *v546;
              v544 = v545 - *v546;
              if (v544 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v544 >= 0x17)
              {
                operator new();
              }

              v575 = v545 - *v546;
              if (v544)
              {
                memmove(&v574, v547, v544);
              }

              goto LABEL_815;
            }

LABEL_767:
            v256 = 0;
LABEL_768:
            if (v560 == ++v515)
            {
              goto LABEL_759;
            }
          }

          if (!sub_7E7E4(3u))
          {
LABEL_794:
            v256 = 0;
            goto LABEL_795;
          }

          sub_19594F8(&v588);
          v523 = sub_4A5C(&v588, "On stop pattern ", 16);
          v524 = sub_2FF718(v523, *a2);
          sub_4A5C(v524, " the last frequency trip manifestation at trip index ", 53);
          v525 = std::ostream::operator<<();
          v526 = sub_4A5C(v525, " overtakes the first frequency trip manifestation at trip index ", 64);
          std::ostream::operator<<();
          v527 = sub_4A5C(v526, " in terms of static relative arrival time: ", 43);
          LODWORD(v574) = v577 + v521;
          v528 = sub_258D4(v527);
          v529 = sub_4A5C(v528, " > ", 3);
          sub_258D4(v529);
          if ((v601 & 0x10) != 0)
          {
            v531 = v600;
            v532 = &v594;
            if (v600 < v595)
            {
              v600 = v595;
              v531 = v595;
              v532 = &v594;
            }
          }

          else
          {
            if ((v601 & 8) == 0)
            {
              v530 = 0;
              v575 = 0;
LABEL_789:
              *(&v574 + v530) = 0;
              sub_7E854(&v574, 3u);
              if (v575 < 0)
              {
                operator delete(v574);
              }

              v588 = v558;
              *(&v588 + *(v558 - 3)) = v556;
              if (SHIBYTE(v599) < 0)
              {
                operator delete(v597);
              }

              std::locale::~locale(&v590);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_794;
            }

            v531 = v593;
            v532 = &v591;
          }

          v533 = *v532;
          v530 = v531 - *v532;
          if (v530 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v530 >= 0x17)
          {
            operator new();
          }

          v575 = v531 - *v532;
          if (v530)
          {
            memmove(&v574, v533, v530);
          }

          goto LABEL_789;
        }

        sub_19594F8(&v588);
        v501 = sub_4A5C(&v588, "On stop pattern ", 16);
        v502 = sub_2FF718(v501, *a2);
        sub_4A5C(v502, " frequency trip ", 16);
        v503 = std::ostream::operator<<();
        v504 = sub_4A5C(v503, " has frequency end time of ", 27);
        v505 = sub_258D4(v504);
        v506 = sub_4A5C(v505, ", which is after the frequency start time ", 42);
        v507 = sub_258D4(v506);
        sub_4A5C(v507, " of frequency trip ", 19);
        std::ostream::operator<<();
        if ((v601 & 0x10) != 0)
        {
          v509 = v600;
          v510 = &v594;
          if (v600 < v595)
          {
            v600 = v595;
            v509 = v595;
            v510 = &v594;
          }
        }

        else
        {
          if ((v601 & 8) == 0)
          {
            v508 = 0;
            v575 = 0;
LABEL_750:
            *(&v574 + v508) = 0;
            sub_7E854(&v574, 3u);
            if (v575 < 0)
            {
              operator delete(v574);
            }

            v588 = v558;
            *(&v588 + *(v558 - 3)) = v556;
            if (SHIBYTE(v599) < 0)
            {
              operator delete(v597);
            }

            std::locale::~locale(&v590);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_755;
          }

          v509 = v593;
          v510 = &v591;
        }

        v511 = *v510;
        v508 = v509 - *v510;
        if (v508 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v508 >= 0x17)
        {
          operator new();
        }

        v575 = v509 - *v510;
        if (v508)
        {
          memmove(&v574, v511, v508);
        }

        goto LABEL_750;
      }
    }
  }

  v252 = sub_A57920((a1 + 4136), *a2);
  v253 = (v252 - *v252);
  if (*v253 >= 7u)
  {
    v254 = v253[3];
    if (v254)
    {
      v552 = *(v252 + v254 + *(v252 + v254));
      if (v552)
      {
        v255 = 0;
        v256 = 1;
        while (1)
        {
          if ((sub_C8D924((a1 + 4136), *a2, v255) & 1) == 0)
          {
            v257 = sub_A57920((a1 + 4136), *a2);
            v258 = (v257 - *v257);
            if (*v258 >= 9u)
            {
              v259 = v258[4];
              if (v259)
              {
                v563 = *(v257 + v259 + *(v257 + v259));
                if (v563)
                {
                  break;
                }
              }
            }
          }

LABEL_452:
          if (++v255 == v552)
          {
            return v256 & 1;
          }
        }

        v260 = 0;
        v569 = v255 - 1;
        while (1)
        {
          if (v260)
          {
            v261 = *a2;
            v262 = sub_A5706C((a1 + 4136), *a2);
            v263 = v262;
            v264 = &v262[-*v262];
            if (*v264 < 5u)
            {
              v265 = 0;
            }

            else
            {
              v265 = *(v264 + 2);
              if (v265)
              {
                v265 += &v262[*&v262[v265]];
              }
            }

            v266 = (v265 + 4 * v261 + 4 + *(v265 + 4 * v261 + 4));
            v267 = (v266 - *v266);
            if (*v267 >= 7u && (v268 = v267[3]) != 0)
            {
              v269 = (v266 + v268 + *(v266 + v268));
            }

            else
            {
              v269 = 0;
            }

            v270 = sub_A7AC40(v269, v255);
            v271 = (v263 - *v263);
            if (*v271 < 7u)
            {
              v272 = 0;
            }

            else
            {
              v272 = v271[3];
              if (v272)
              {
                v272 = (v272 + v263 + *(v272 + v263));
              }
            }

            v273 = *v270;
            v274 = *(sub_A7AEE0(v272, v260 + v270[1] - 1) + 4);
            v275 = *a2;
            v276 = sub_A5706C((a1 + 4136), *a2);
            v277 = v276;
            v278 = &v276[-*v276];
            if (*v278 < 5u)
            {
              v279 = 0;
            }

            else
            {
              v279 = *(v278 + 2);
              if (v279)
              {
                v279 += &v276[*&v276[v279]];
              }
            }

            v280 = (v279 + 4 * v275 + 4 + *(v279 + 4 * v275 + 4));
            v281 = (v280 - *v280);
            if (*v281 >= 7u && (v282 = v281[3]) != 0)
            {
              v283 = (v280 + v282 + *(v280 + v282));
            }

            else
            {
              v283 = 0;
            }

            v284 = sub_A7AC40(v283, v255);
            v285 = (v277 - *v277);
            if (*v285 < 7u)
            {
              v286 = 0;
            }

            else
            {
              v286 = v285[3];
              if (v286)
              {
                v286 = (v286 + v277 + *(v286 + v277));
              }
            }

            v287 = *v284;
            if (v274 + v273 > *sub_A7AEE0(v286, v260 + v284[1]) + v287)
            {
              if (sub_7E7E4(3u))
              {
                v603 = 0;
                v588 = v557;
                *(&v588 + *(v557 - 3)) = v555;
                v288 = (&v588 + *(v588 - 3));
                std::ios_base::init(v288, &v589);
                v288[1].__vftable = 0;
                v288[1].__fmtflags_ = -1;
                std::locale::locale(&v590);
                v591 = 0;
                v592 = 0;
                v593 = 0;
                v601 = 16;
                v600 = &v597;
                v597 = 0;
                memset(v598, 0, sizeof(v598));
                v599 = 5632;
                v594 = &v597;
                v595 = &v597;
                v596 = &v599;
                v289 = sub_4A5C(&v588, "On stop pattern ", 16);
                v290 = sub_2FF718(v289, *a2);
                v291 = sub_4A5C(v290, ", trip at index ", 16);
                std::ostream::operator<<();
                v292 = sub_4A5C(v291, " travels into the past between stop indices ", 44);
                std::ostream::operator<<();
                v293 = sub_4A5C(v292, " and ", 5);
                std::ostream::operator<<();
                sub_4A5C(v293, "  frequency trips ", 18);
                v294 = std::ostream::operator<<();
                v295 = sub_4A5C(v294, ": ", 2);
                v296 = *a2;
                v297 = sub_A5706C((a1 + 4136), *a2);
                v298 = v297;
                v299 = &v297[-*v297];
                if (*v299 < 5u)
                {
                  v300 = 0;
                }

                else
                {
                  v300 = *(v299 + 2);
                  if (v300)
                  {
                    v300 += &v297[*&v297[v300]];
                  }
                }

                v340 = (v300 + 4 * v296 + 4 + *(v300 + 4 * v296 + 4));
                v341 = (v340 - *v340);
                if (*v341 >= 7u && (v342 = v341[3]) != 0)
                {
                  v343 = (v340 + v342 + *(v340 + v342));
                }

                else
                {
                  v343 = 0;
                }

                v344 = sub_A7AC40(v343, v255);
                v345 = (v298 - *v298);
                if (*v345 < 7u)
                {
                  v346 = 0;
                }

                else
                {
                  v346 = v345[3];
                  if (v346)
                  {
                    v346 = (v346 + v298 + *(v346 + v298));
                  }
                }

                v347 = *v344;
                LODWORD(__dst) = *(sub_A7AEE0(v346, v260 + v344[1] - 1) + 4) + v347;
                v348 = sub_258D4(v295);
                v349 = sub_4A5C(v348, " > ", 3);
                v350 = *a2;
                v351 = sub_A5706C((a1 + 4136), *a2);
                v352 = v351;
                v353 = &v351[-*v351];
                if (*v353 < 5u)
                {
                  v354 = 0;
                }

                else
                {
                  v354 = *(v353 + 2);
                  if (v354)
                  {
                    v354 += &v351[*&v351[v354]];
                  }
                }

                v355 = (v354 + 4 * v350 + 4 + *(v354 + 4 * v350 + 4));
                v356 = (v355 - *v355);
                if (*v356 >= 7u && (v357 = v356[3]) != 0)
                {
                  v358 = (v355 + v357 + *(v355 + v357));
                }

                else
                {
                  v358 = 0;
                }

                v359 = sub_A7AC40(v358, v255);
                v360 = (v352 - *v352);
                if (*v360 < 7u)
                {
                  v361 = 0;
                }

                else
                {
                  v361 = v360[3];
                  if (v361)
                  {
                    v361 = (v361 + v352 + *(v361 + v352));
                  }
                }

                v369 = *v359;
                LODWORD(__p) = *sub_A7AEE0(v361, v260 + v359[1]) + v369;
                sub_258D4(v349);
                if ((v601 & 0x10) != 0)
                {
                  v379 = v600;
                  v380 = &v594;
                  if (v600 < v595)
                  {
                    v600 = v595;
                    v379 = v595;
                    v380 = &v594;
                  }
                }

                else
                {
                  if ((v601 & 8) == 0)
                  {
                    v370 = 0;
                    v587 = 0;
                    goto LABEL_581;
                  }

                  v379 = v593;
                  v380 = &v591;
                }

                v392 = *v380;
                v370 = v379 - *v380;
                if (v370 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_3244();
                }

                if (v370 >= 0x17)
                {
                  operator new();
                }

                v587 = v379 - *v380;
                if (v370)
                {
                  memmove(&__dst, v392, v370);
                }

LABEL_581:
                *(&__dst + v370) = 0;
                sub_7E854(&__dst, 3u);
                if (v587 < 0)
                {
                  operator delete(__dst);
                }

                v588 = v554;
                *(&v588 + *(v554 - 3)) = v553;
                if (SHIBYTE(v599) < 0)
                {
                  operator delete(v597);
                }

                std::locale::~locale(&v590);
                std::ostream::~ostream();
                std::ios::~ios();
                v256 = 0;
                if (!v255)
                {
                  goto LABEL_459;
                }

                goto LABEL_492;
              }

              v256 = 0;
            }
          }

          if (!v255)
          {
            goto LABEL_459;
          }

LABEL_492:
          v301 = *a2;
          v302 = sub_A5706C((a1 + 4136), *a2);
          v303 = v302;
          v304 = &v302[-*v302];
          if (*v304 < 5u)
          {
            v305 = 0;
          }

          else
          {
            v305 = *(v304 + 2);
            if (v305)
            {
              v305 += &v302[*&v302[v305]];
            }
          }

          v306 = (v305 + 4 * v301 + 4 + *(v305 + 4 * v301 + 4));
          v307 = (v306 - *v306);
          if (*v307 >= 7u && (v308 = v307[3]) != 0)
          {
            v309 = (v306 + v308 + *(v306 + v308));
          }

          else
          {
            v309 = 0;
          }

          v310 = sub_A7AC40(v309, v569);
          v311 = (v303 - *v303);
          if (*v311 < 7u)
          {
            v312 = 0;
          }

          else
          {
            v312 = v311[3];
            if (v312)
            {
              v312 = (v312 + v303 + *(v312 + v303));
            }
          }

          v313 = *v310;
          v314 = *sub_A7AEE0(v312, v260 + v310[1]);
          v315 = *a2;
          v316 = sub_A5706C((a1 + 4136), *a2);
          v317 = v316;
          v318 = &v316[-*v316];
          if (*v318 < 5u)
          {
            v319 = 0;
          }

          else
          {
            v319 = *(v318 + 2);
            if (v319)
            {
              v319 += &v316[*&v316[v319]];
            }
          }

          v320 = (v319 + 4 * v315 + 4 + *(v319 + 4 * v315 + 4));
          v321 = (v320 - *v320);
          if (*v321 >= 7u && (v322 = v321[3]) != 0)
          {
            v323 = (v320 + v322 + *(v320 + v322));
          }

          else
          {
            v323 = 0;
          }

          v324 = sub_A7AC40(v323, v255);
          v325 = (v317 - *v317);
          if (*v325 < 7u)
          {
            v326 = 0;
          }

          else
          {
            v326 = v325[3];
            if (v326)
            {
              v326 = (v326 + v317 + *(v326 + v317));
            }
          }

          v327 = *v324;
          if (v314 + v313 <= *sub_A7AEE0(v326, v260 + v324[1]) + v327)
          {
            goto LABEL_599;
          }

          if (sub_7E7E4(3u))
          {
            v603 = 0;
            v588 = v557;
            *(&v588 + *(v557 - 3)) = v555;
            v328 = (&v588 + *(v588 - 3));
            std::ios_base::init(v328, &v589);
            v328[1].__vftable = 0;
            v328[1].__fmtflags_ = -1;
            std::locale::locale(&v590);
            v591 = 0;
            v592 = 0;
            v593 = 0;
            v601 = 16;
            v600 = &v597;
            v597 = 0;
            memset(v598, 0, sizeof(v598));
            v599 = 5632;
            v594 = &v597;
            v595 = &v597;
            v596 = &v599;
            v329 = sub_4A5C(&v588, "On stop pattern ", 16);
            v330 = sub_2FF718(v329, *a2);
            v331 = sub_4A5C(v330, ", at stop index ", 16);
            std::ostream::operator<<();
            v332 = sub_4A5C(v331, ", trips ", 8);
            std::ostream::operator<<();
            v333 = sub_4A5C(v332, " and ", 5);
            std::ostream::operator<<();
            v334 = sub_4A5C(v333, " are not fifo with respect to their arrival times: ", 51);
            v335 = *a2;
            v336 = sub_A5706C((a1 + 4136), *a2);
            v337 = v336;
            v338 = &v336[-*v336];
            if (*v338 < 5u)
            {
              v339 = 0;
            }

            else
            {
              v339 = *(v338 + 2);
              if (v339)
              {
                v339 += &v336[*&v336[v339]];
              }
            }

            v362 = (v339 + 4 * v335 + 4 + *(v339 + 4 * v335 + 4));
            v363 = (v362 - *v362);
            if (*v363 >= 7u && (v364 = v363[3]) != 0)
            {
              v365 = (v362 + v364 + *(v362 + v364));
            }

            else
            {
              v365 = 0;
            }

            v366 = sub_A7AC40(v365, v569);
            v367 = (v337 - *v337);
            if (*v367 < 7u)
            {
              v368 = 0;
            }

            else
            {
              v368 = v367[3];
              if (v368)
              {
                v368 = (v368 + v337 + *(v368 + v337));
              }
            }

            v371 = *v366;
            LODWORD(__dst) = *sub_A7AEE0(v368, v260 + v366[1]) + v371;
            v372 = sub_258D4(v334);
            v373 = sub_4A5C(v372, " > ", 3);
            v374 = *a2;
            v375 = sub_A5706C((a1 + 4136), *a2);
            v376 = v375;
            v377 = &v375[-*v375];
            if (*v377 < 5u)
            {
              v378 = 0;
            }

            else
            {
              v378 = *(v377 + 2);
              if (v378)
              {
                v378 += &v375[*&v375[v378]];
              }
            }

            v381 = (v378 + 4 * v374 + 4 + *(v378 + 4 * v374 + 4));
            v382 = (v381 - *v381);
            if (*v382 >= 7u && (v383 = v382[3]) != 0)
            {
              v384 = (v381 + v383 + *(v381 + v383));
            }

            else
            {
              v384 = 0;
            }

            v385 = sub_A7AC40(v384, v255);
            v386 = (v376 - *v376);
            if (*v386 < 7u)
            {
              v387 = 0;
            }

            else
            {
              v387 = v386[3];
              if (v387)
              {
                v387 = (v387 + v376 + *(v387 + v376));
              }
            }

            v388 = *v385;
            LODWORD(__p) = *sub_A7AEE0(v387, v260 + v385[1]) + v388;
            sub_258D4(v373);
            if ((v601 & 0x10) != 0)
            {
              v390 = v600;
              v391 = &v594;
              if (v600 < v595)
              {
                v600 = v595;
                v390 = v595;
                v391 = &v594;
              }
            }

            else
            {
              if ((v601 & 8) == 0)
              {
                v389 = 0;
                v587 = 0;
LABEL_594:
                *(&__dst + v389) = 0;
                sub_7E854(&__dst, 3u);
                if (v587 < 0)
                {
                  operator delete(__dst);
                }

                v588 = v554;
                *(&v588 + *(v554 - 3)) = v553;
                if (SHIBYTE(v599) < 0)
                {
                  operator delete(v597);
                }

                std::locale::~locale(&v590);
                std::ostream::~ostream();
                std::ios::~ios();
                v256 = 0;
                goto LABEL_599;
              }

              v390 = v593;
              v391 = &v591;
            }

            v393 = *v391;
            v389 = v390 - *v391;
            if (v389 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v389 >= 0x17)
            {
              operator new();
            }

            v587 = v390 - *v391;
            if (v389)
            {
              memmove(&__dst, v393, v389);
            }

            goto LABEL_594;
          }

          v256 = 0;
LABEL_599:
          v394 = *a2;
          v395 = sub_A5706C((a1 + 4136), *a2);
          v396 = v395;
          v397 = &v395[-*v395];
          if (*v397 < 5u)
          {
            v398 = 0;
          }

          else
          {
            v398 = *(v397 + 2);
            if (v398)
            {
              v398 += &v395[*&v395[v398]];
            }
          }

          v399 = (v398 + 4 * v394 + 4 + *(v398 + 4 * v394 + 4));
          v400 = (v399 - *v399);
          if (*v400 >= 7u && (v401 = v400[3]) != 0)
          {
            v402 = (v399 + v401 + *(v399 + v401));
          }

          else
          {
            v402 = 0;
          }

          v403 = sub_A7AC40(v402, v569);
          v404 = (v396 - *v396);
          if (*v404 < 7u)
          {
            v405 = 0;
          }

          else
          {
            v405 = v404[3];
            if (v405)
            {
              v405 = (v405 + v396 + *(v405 + v396));
            }
          }

          v406 = *v403;
          v407 = *(sub_A7AEE0(v405, v260 + v403[1]) + 4);
          v408 = *a2;
          v409 = sub_A5706C((a1 + 4136), *a2);
          v410 = v409;
          v411 = &v409[-*v409];
          if (*v411 < 5u)
          {
            v412 = 0;
          }

          else
          {
            v412 = *(v411 + 2);
            if (v412)
            {
              v412 += &v409[*&v409[v412]];
            }
          }

          v413 = (v412 + 4 * v408 + 4 + *(v412 + 4 * v408 + 4));
          v414 = (v413 - *v413);
          if (*v414 >= 7u && (v415 = v414[3]) != 0)
          {
            v416 = (v413 + v415 + *(v413 + v415));
          }

          else
          {
            v416 = 0;
          }

          v417 = sub_A7AC40(v416, v255);
          v418 = (v410 - *v410);
          if (*v418 < 7u)
          {
            v419 = 0;
          }

          else
          {
            v419 = v418[3];
            if (v419)
            {
              v419 = (v419 + v410 + *(v419 + v410));
            }
          }

          v420 = *v417;
          if (v407 + v406 <= *(sub_A7AEE0(v419, v260 + v417[1]) + 4) + v420)
          {
            goto LABEL_459;
          }

          if (sub_7E7E4(3u))
          {
            v603 = 0;
            v588 = v557;
            *(&v588 + *(v557 - 3)) = v555;
            v421 = (&v588 + *(v588 - 3));
            std::ios_base::init(v421, &v589);
            v421[1].__vftable = 0;
            v421[1].__fmtflags_ = -1;
            std::locale::locale(&v590);
            v591 = 0;
            v592 = 0;
            v593 = 0;
            v601 = 16;
            v600 = &v597;
            v597 = 0;
            memset(v598, 0, sizeof(v598));
            v599 = 5632;
            v594 = &v597;
            v595 = &v597;
            v596 = &v599;
            v422 = sub_4A5C(&v588, "On stop pattern ", 16);
            v423 = sub_2FF718(v422, *a2);
            v424 = sub_4A5C(v423, ", at stop index ", 16);
            std::ostream::operator<<();
            v425 = sub_4A5C(v424, ", trips ", 8);
            std::ostream::operator<<();
            v426 = sub_4A5C(v425, " and ", 5);
            std::ostream::operator<<();
            v427 = sub_4A5C(v426, " are not fifo with respect to their departure times: ", 53);
            v428 = *a2;
            v429 = sub_A5706C((a1 + 4136), *a2);
            v430 = v429;
            v431 = &v429[-*v429];
            if (*v431 < 5u)
            {
              v432 = 0;
            }

            else
            {
              v432 = *(v431 + 2);
              if (v432)
              {
                v432 += &v429[*&v429[v432]];
              }
            }

            v433 = (v432 + 4 * v428 + 4 + *(v432 + 4 * v428 + 4));
            v434 = (v433 - *v433);
            if (*v434 >= 7u && (v435 = v434[3]) != 0)
            {
              v436 = (v433 + v435 + *(v433 + v435));
            }

            else
            {
              v436 = 0;
            }

            v437 = sub_A7AC40(v436, v569);
            v438 = (v430 - *v430);
            if (*v438 < 7u)
            {
              v439 = 0;
            }

            else
            {
              v439 = v438[3];
              if (v439)
              {
                v439 = (v439 + v430 + *(v439 + v430));
              }
            }

            v440 = *v437;
            LODWORD(__dst) = *(sub_A7AEE0(v439, v260 + v437[1]) + 4) + v440;
            v441 = sub_258D4(v427);
            v442 = sub_4A5C(v441, " > ", 3);
            v443 = *a2;
            v444 = sub_A5706C((a1 + 4136), *a2);
            v445 = v444;
            v446 = &v444[-*v444];
            if (*v446 < 5u)
            {
              v447 = 0;
            }

            else
            {
              v447 = *(v446 + 2);
              if (v447)
              {
                v447 += &v444[*&v444[v447]];
              }
            }

            v448 = (v447 + 4 * v443 + 4 + *(v447 + 4 * v443 + 4));
            v449 = (v448 - *v448);
            if (*v449 >= 7u && (v450 = v449[3]) != 0)
            {
              v451 = (v448 + v450 + *(v448 + v450));
            }

            else
            {
              v451 = 0;
            }

            v452 = sub_A7AC40(v451, v255);
            v453 = (v445 - *v445);
            if (*v453 < 7u)
            {
              v454 = 0;
            }

            else
            {
              v454 = v453[3];
              if (v454)
              {
                v454 = (v454 + v445 + *(v454 + v445));
              }
            }

            v455 = *v452;
            LODWORD(__p) = *(sub_A7AEE0(v454, v260 + v452[1]) + 4) + v455;
            sub_258D4(v442);
            if ((v601 & 0x10) != 0)
            {
              v457 = v600;
              v458 = &v594;
              if (v600 < v595)
              {
                v600 = v595;
                v457 = v595;
                v458 = &v594;
              }
            }

            else
            {
              if ((v601 & 8) == 0)
              {
                v456 = 0;
                v587 = 0;
LABEL_661:
                *(&__dst + v456) = 0;
                sub_7E854(&__dst, 3u);
                if (v587 < 0)
                {
                  operator delete(__dst);
                }

                v588 = v554;
                *(&v588 + *(v554 - 3)) = v553;
                if (SHIBYTE(v599) < 0)
                {
                  operator delete(v597);
                }

                std::locale::~locale(&v590);
                std::ostream::~ostream();
                std::ios::~ios();
                v256 = 0;
                goto LABEL_459;
              }

              v457 = v593;
              v458 = &v591;
            }

            v459 = *v458;
            v456 = v457 - *v458;
            if (v456 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v456 >= 0x17)
            {
              operator new();
            }

            v587 = v457 - *v458;
            if (v456)
            {
              memmove(&__dst, v459, v456);
            }

            goto LABEL_661;
          }

          v256 = 0;
LABEL_459:
          if (v563 == ++v260)
          {
            goto LABEL_452;
          }
        }
      }
    }
  }

  v256 = 1;
  return v256 & 1;
}

void sub_C986E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  sub_1959728(&a50);
  if (__p)
  {
    operator delete(__p);
  }

  if (a44)
  {
    operator delete(a44);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_C98A60(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = sub_A57920(a1, a2);
  v5 = (v4 - *v4);
  if (*v5 < 0x17u || (v6 = v5[11]) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = *(v4 + v6);
  v8 = *(v4 + v6 + v7);
  if (v8)
  {
    v9 = 0;
    v10 = 4 * v8;
    v11 = (v4 + v7 + v6 + 4);
    do
    {
      while (1)
      {
        v12 = *v11;
        v13 = a3[2];
        if (v9 >= v13)
        {
          break;
        }

        *v9 = v12;
        v9 += 8;
        a3[1] = v9;
        ++v11;
        v10 -= 4;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      v14 = v9;
      v15 = v9 >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        *a3 = 0;
        sub_1794();
      }

      if (v13 >> 2 > v16)
      {
        v16 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        *a3 = 0;
        sub_1808();
      }

      v18 = (8 * v15);
      *v18 = v12;
      v9 = (v18 + 1);
      memcpy(0, 0, v14);
      a3[1] = v9;
      a3[2] = 0;
      a3[1] = v9;
      ++v11;
      v10 -= 4;
    }

    while (v10);
  }

LABEL_19:
  *a3 = 0;
}

void sub_C98C10(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C98C38(uint64_t a1, unint64_t *a2)
{
  v2 = a2;
  v4 = *a2;
  if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339D8))
  {
    v427 = sub_A57824(-85.0, -13.0);
    sub_58168(v427 >> 17, v427 >> 49);
    dword_27339D0 = v428 | 0x40000000;
    __cxa_guard_release(&qword_27339D8);
  }

  v431 = dword_27339D0;
  v5 = sub_A57920((a1 + 4136), *v2);
  v6 = (v5 - *v5);
  if (*v6 >= 7u)
  {
    v7 = v6[3];
    if (v7)
    {
      v429 = *(v5 + v7 + *(v5 + v7));
      if (v429)
      {
        v8 = 0;
        v430 = HIDWORD(v4);
        v441 = 1;
        v435 = v2;
        while (1)
        {
          v9 = v8;
          v440 = v8;
          if ((sub_C8D924((a1 + 4136), *v2, v8) & 1) == 0)
          {
            sub_A78D38((a1 + 4136), *v2, v9, &v456);
            v10 = v456;
            v11 = v457;
            while (v10 != v11)
            {
              if (*(a1 + 16) == 1 && (sub_2D5204(**(a1 + 4184)) & 1) == 0)
              {
                v10 = (v10 + 12);
              }

              else
              {
                v12 = *(a1 + 4184);
                v13 = __ROR8__(*v10, 32);
                LODWORD(__dst[0]) = v13;
                v458 = 1;
                v445 = &v458;
                v446 = __dst;
                v14 = *(v12 + 3880) + 1;
                *(v12 + 3880) = v14;
                v15 = *(v12 + 24);
                if (!v15)
                {
                  goto LABEL_55;
                }

                if (*(v12 + 616) == v13)
                {
                  ++*(v12 + 3888);
                  *(v12 + 624) = v14;
                  v16 = *(v12 + 632);
                  if (!v16)
                  {
                    goto LABEL_55;
                  }
                }

                else if (*(v12 + 640) == v13)
                {
                  ++*(v12 + 3888);
                  *(v12 + 648) = v14;
                  v16 = *(v12 + 656);
                  if (!v16)
                  {
                    goto LABEL_55;
                  }
                }

                else if (*(v12 + 664) == v13)
                {
                  ++*(v12 + 3888);
                  *(v12 + 672) = v14;
                  v16 = *(v12 + 680);
                  if (!v16)
                  {
                    goto LABEL_55;
                  }
                }

                else if (*(v12 + 688) == v13)
                {
                  ++*(v12 + 3888);
                  *(v12 + 696) = v14;
                  v16 = *(v12 + 704);
                  if (!v16)
                  {
                    goto LABEL_55;
                  }
                }

                else
                {
                  v17 = *(v12 + 672);
                  v18 = *(v12 + 648);
                  v19 = *(v12 + 624);
                  v20 = *(v12 + 696);
                  v16 = sub_2D52A4(v15, 6, v13, 1);
                  if (v19 >= v14)
                  {
                    v21 = v14;
                  }

                  else
                  {
                    v21 = v19;
                  }

                  if (v19 >= v14)
                  {
                    v22 = 0;
                  }

                  else
                  {
                    v22 = 24;
                  }

                  if (v18 < v21)
                  {
                    v21 = v18;
                    v22 = 25;
                  }

                  if (v17 < v21)
                  {
                    v22 = 26;
                    v21 = v17;
                  }

                  v23 = v20 >= v21;
                  v24 = 27;
                  if (v23)
                  {
                    v24 = v22;
                  }

                  v25 = v12 + 40 + 24 * v24;
                  *v25 = __dst[0];
                  *(v25 + 8) = *(v12 + 3880);
                  *(v25 + 16) = v16;
                  if (!v16)
                  {
                    sub_2C9894(&v445);
                    goto LABEL_55;
                  }
                }

                v26 = (v16 + *v16);
                v27 = (v26 - *v26);
                if (*v27 >= 0x2Bu && (v28 = v27[21]) != 0 && (v29 = (v26 + v28 + *(v26 + v28)), v30 = (v29 - *v29), *v30 >= 5u) && (v31 = v30[2]) != 0 && *(v29 + v31 + *(v29 + v31)) > HIDWORD(v13))
                {
                  v32 = *(v10 + 2);
                  v33 = sub_3A25A8(*(a1 + 4184) + 24, __ROR8__(*v10, 32), 0, "trip");
                  v34 = (v33 - *v33);
                  if (*v34 >= 0x17u)
                  {
                    v35 = v34[11];
                    if (v35)
                    {
                      if (v32 < *(v33 + v35))
                      {
                        goto LABEL_88;
                      }
                    }
                  }

                  if (!sub_7E7E4(3u))
                  {
                    goto LABEL_10;
                  }

                  sub_19594F8(&v445);
                  v36 = sub_4A5C(&v445, "Stop pattern ", 13);
                  v37 = sub_2FF718(v36, *v435);
                  v38 = sub_4A5C(v37, " at trip sequence index ", 24);
                  std::ostream::operator<<();
                  v39 = sub_4A5C(v38, " has a trip ref ", 16);
                  v40 = sub_4A5C(v39, "(", 1);
                  v41 = sub_2FF718(v40, *v10);
                  sub_4A5C(v41, ", ", 2);
                  v42 = std::ostream::operator<<();
                  sub_4A5C(v42, ")", 1);
                  sub_4A5C(v39, ", whose schedule index is too large.", 36);
                  if ((v453 & 0x10) != 0)
                  {
                    v57 = p_p;
                    v58 = &v449 + 1;
                    if (p_p < v450)
                    {
                      p_p = v450;
                      v57 = v450;
                      v58 = &v449 + 1;
                    }

                    goto LABEL_77;
                  }

                  if ((v453 & 8) != 0)
                  {
                    v57 = v449;
                    v58 = &v448;
LABEL_77:
                    v59 = *v58;
                    v43 = v57 - *v58;
                    if (v43 > 0x7FFFFFFFFFFFFFF7)
                    {
                      sub_3244();
                    }

                    if (v43 >= 0x17)
                    {
                      operator new();
                    }

                    v444 = v57 - *v58;
                    if (v43)
                    {
                      memmove(__dst, v59, v43);
                    }

                    goto LABEL_83;
                  }

                  v43 = 0;
                  v444 = 0;
LABEL_83:
                  *(__dst + v43) = 0;
                  sub_7E854(__dst, 3u);
                  if (v444 < 0)
                  {
                    operator delete(__dst[0]);
                  }

                  v445 = v438;
                  *(&v445 + *(v438 - 3)) = v437;
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&v447);
                  std::ostream::~ostream();
                  std::ios::~ios();
                  v441 = 0;
LABEL_88:
                  v10 = (v10 + 12);
                }

                else
                {
LABEL_55:
                  if (!sub_7E7E4(3u))
                  {
                    goto LABEL_10;
                  }

                  v455 = 0;
                  v445 = v434;
                  *(&v445 + *(v434 - 3)) = v433;
                  v44 = (&v445 + *(v445 - 3));
                  std::ios_base::init(v44, &v446);
                  v44[1].__vftable = 0;
                  v44[1].__fmtflags_ = -1;
                  std::locale::locale(&v447);
                  v449 = 0u;
                  v450 = 0u;
                  v448 = 0u;
                  memset(&__p, 0, sizeof(__p));
                  v453 = 16;
                  p_p = &__p;
                  std::string::append(&__p, 0x16uLL, 0);
                  size = __p.__r_.__value_.__l.__size_;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  }

                  *(&v449 + 1) = &__p;
                  *&v450 = &__p;
                  *(&v450 + 1) = &__p + size;
                  v46 = sub_4A5C(&v445, "Stop pattern ", 13);
                  v47 = sub_2FF718(v46, *v435);
                  v48 = sub_4A5C(v47, " at trip sequence index ", 24);
                  std::ostream::operator<<();
                  v49 = sub_4A5C(v48, " has a trip ref ", 16);
                  v50 = sub_4A5C(v49, "(", 1);
                  v51 = sub_2FF718(v50, *v10);
                  sub_4A5C(v51, ", ", 2);
                  v52 = std::ostream::operator<<();
                  sub_4A5C(v52, ")", 1);
                  sub_4A5C(v49, ", which does not exist in the data.", 35);
                  if ((v453 & 0x10) != 0)
                  {
                    v54 = p_p;
                    v55 = &v449 + 1;
                    if (p_p < v450)
                    {
                      p_p = v450;
                      v54 = v450;
                      v55 = &v449 + 1;
                    }

                    goto LABEL_64;
                  }

                  if ((v453 & 8) != 0)
                  {
                    v54 = v449;
                    v55 = &v448;
LABEL_64:
                    v56 = *v55;
                    v53 = v54 - *v55;
                    if (v53 > 0x7FFFFFFFFFFFFFF7)
                    {
                      sub_3244();
                    }

                    if (v53 >= 0x17)
                    {
                      operator new();
                    }

                    v444 = v54 - *v55;
                    if (v53)
                    {
                      memmove(__dst, v56, v53);
                    }

                    goto LABEL_70;
                  }

                  v53 = 0;
                  v444 = 0;
LABEL_70:
                  *(__dst + v53) = 0;
                  sub_7E854(__dst, 3u);
                  if (v444 < 0)
                  {
                    operator delete(__dst[0]);
                  }

                  v445 = v438;
                  *(&v445 + *(v438 - 3)) = v437;
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&v447);
                  std::ostream::~ostream();
                  std::ios::~ios();
LABEL_10:
                  v441 = 0;
                  v10 = (v10 + 12);
                }
              }
            }

            if (v441)
            {
              v2 = v435;
              if (*(a1 + 16) == 1)
              {
                v60 = v457;
                if (v456 != v457)
                {
                  v61 = v456 + 12;
                  do
                  {
                    v62 = sub_2D5204(**(a1 + 4184));
                    if (v61 == v60)
                    {
                      v63 = 0;
                    }

                    else
                    {
                      v63 = v62;
                    }

                    v61 += 12;
                  }

                  while ((v63 & 1) != 0);
                  if (!v62)
                  {
                    goto LABEL_110;
                  }
                }
              }

              v64 = sub_A57920((a1 + 4136), *v435);
              v65 = (v64 - *v64);
              if (*v65 >= 0x15u && v65[10])
              {
                v66 = v456;
                v67 = v457;
                while (v66 != v67)
                {
                  v68 = *v66;
                  v69 = sub_3A231C(*(a1 + 4184) + 24, __ROR8__(*v66, 32), 0);
                  v70 = &v69[-*v69];
                  if (*v70 < 5u)
                  {
                    v71 = 0;
                  }

                  else
                  {
                    v71 = *(v70 + 2);
                    if (v71)
                    {
                      v71 += &v69[*&v69[v71]];
                    }
                  }

                  v72 = (v71 + 4 * v68 + 4 + *(v71 + 4 * v68 + 4));
                  v73 = (v72 - *v72);
                  if (*v73 >= 0x2Bu)
                  {
                    v74 = v73[21];
                    if (v74)
                    {
                      if (*(v72 + v74) != -1)
                      {
                        goto LABEL_110;
                      }
                    }
                  }

                  v66 = (v66 + 12);
                }

                if (sub_7E7E4(3u))
                {
                  sub_19594F8(&v445);
                  v75 = sub_4A5C(&v445, "Stop pattern ", 13);
                  v76 = sub_2FF718(v75, *v435);
                  v77 = sub_4A5C(v76, " has boarding restrictions and none of the trips at sequence index ", 67);
                  std::ostream::operator<<();
                  sub_4A5C(v77, " have any boarding restrictions.", 32);
                  if ((v453 & 0x10) != 0)
                  {
                    v79 = p_p;
                    v80 = &v449 + 1;
                    if (p_p < v450)
                    {
                      p_p = v450;
                      v79 = v450;
                      v80 = &v449 + 1;
                    }
                  }

                  else
                  {
                    if ((v453 & 8) == 0)
                    {
                      v78 = 0;
                      v444 = 0;
                      goto LABEL_125;
                    }

                    v79 = v449;
                    v80 = &v448;
                  }

                  v81 = *v80;
                  v78 = v79 - *v80;
                  if (v78 > 0x7FFFFFFFFFFFFFF7)
                  {
                    sub_3244();
                  }

                  if (v78 >= 0x17)
                  {
                    operator new();
                  }

                  v444 = v79 - *v80;
                  if (v78)
                  {
                    memmove(__dst, v81, v78);
                  }

LABEL_125:
                  *(__dst + v78) = 0;
                  sub_7E854(__dst, 3u);
                  if (v444 < 0)
                  {
                    operator delete(__dst[0]);
                  }

                  v445 = v438;
                  *(&v445 + *(v438 - 3)) = v437;
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&v447);
                  std::ostream::~ostream();
                  std::ios::~ios();
                }

                v441 = 0;
              }

              else
              {
LABEL_110:
                v441 = 1;
              }

              v82 = sub_A57920((a1 + 4136), *v435);
              v83 = (v82 - *v82);
              if (*v83 >= 9u)
              {
                v84 = v83[4];
                if (v84)
                {
                  v432 = *(v82 + v84 + *(v82 + v84));
                  if (v432)
                  {
                    for (i = 0; v432 != i; ++i)
                    {
                      v86 = *v435;
                      v87 = sub_A5706C((a1 + 4136), *v435);
                      v88 = v87;
                      v89 = &v87[-*v87];
                      if (*v89 < 5u)
                      {
                        v90 = 0;
                      }

                      else
                      {
                        v90 = *(v89 + 2);
                        if (v90)
                        {
                          v90 += &v87[*&v87[v90]];
                        }
                      }

                      v91 = (v90 + 4 * v86 + 4 + *(v90 + 4 * v86 + 4));
                      v92 = (v91 - *v91);
                      if (*v92 >= 9u && (v93 = v92[4]) != 0)
                      {
                        v94 = (v91 + v93 + *(v91 + v93));
                      }

                      else
                      {
                        v94 = 0;
                      }

                      v95 = sub_A571D4(v94, i);
                      v96 = (v88 - *v88);
                      if (*v96 < 0xBu)
                      {
                        v97 = 0;
                        v98 = (v91 - *v91);
                        if (*v98 < 0x11u)
                        {
                          goto LABEL_153;
                        }
                      }

                      else
                      {
                        v97 = v96[5];
                        if (v97)
                        {
                          v97 = (v97 + v88 + *(v97 + v88));
                        }

                        v98 = (v91 - *v91);
                        if (*v98 < 0x11u)
                        {
LABEL_153:
                          LODWORD(v99) = 0;
                          goto LABEL_154;
                        }
                      }

                      v99 = v98[8];
                      if (v98[8])
                      {
                        LODWORD(v99) = *(v91 + v99);
                      }

LABEL_154:
                      v100 = sub_A57320(v97, v99 + *(v91 + v98[2] + *(v91 + v98[2])) * v440 + *(v95 + 14));
                      if (v100)
                      {
                        v442 = __ROR8__(*v100, 32);
                        v101 = *(v100 + 8);
                      }

                      else
                      {
                        v101 = 0;
                        v442 = 0xFFFFFFFFLL;
                      }

                      v102 = sub_A57920((a1 + 4136), *v435);
                      v103 = (v102 - *v102);
                      if (*v103 >= 9u && (v104 = v103[4]) != 0)
                      {
                        v105 = (v102 + v104 + *(v102 + v104));
                      }

                      else
                      {
                        v105 = 0;
                      }

                      v439 = *(sub_A571D4(v105, i) + 12);
                      v436 = HIDWORD(v442);
                      if (*(a1 + 16) == 1 && (sub_2D5204(**(a1 + 4184)) & 1) == 0)
                      {
                        continue;
                      }

                      v106 = sub_A57920((a1 + 4136), *v435);
                      v107 = (v106 - *v106);
                      if (*v107 >= 9u && (v108 = v107[4]) != 0)
                      {
                        v109 = (v106 + v108 + *(v106 + v108));
                      }

                      else
                      {
                        v109 = 0;
                      }

                      v110 = *(sub_A571D4(v109, i) + 8);
                      v111 = __ROR8__(v442, 32);
                      v112 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                      v113 = &v112[-*v112];
                      v114 = *v113;
                      if (v114 <= 4)
                      {
                        v118 = 0;
                        v116 = (4 * v442 + 4 + dword_4[v442]);
                        v119 = (v116 - *(&dword_4[v442] + dword_4[v442]));
                        if (*v119 < 0xDu)
                        {
                          goto LABEL_179;
                        }
                      }

                      else
                      {
                        v115 = *(v113 + 2);
                        if (*(v113 + 2))
                        {
                          v115 += &v112[*&v112[v115]];
                        }

                        v116 = (v115 + 4 * v442 + 4 + *(v115 + 4 * v442 + 4));
                        if (v114 >= 7 && (v117 = *(v113 + 3)) != 0)
                        {
                          v118 = &v112[v117 + *&v112[v117]];
                          v119 = (v116 - *v116);
                          if (*v119 < 0xDu)
                          {
                            goto LABEL_179;
                          }
                        }

                        else
                        {
                          v118 = 0;
                          v119 = (v116 - *v116);
                          if (*v119 < 0xDu)
                          {
                            goto LABEL_179;
                          }
                        }
                      }

                      v120 = v119[6];
                      if (v120)
                      {
                        v121 = *(v116 + v120);
                        goto LABEL_180;
                      }

LABEL_179:
                      v121 = -1;
LABEL_180:
                      if (v110 != *(sub_3A2E6C(v118, v121 + v439) + 20))
                      {
                        if (sub_7E7E4(3u))
                        {
                          sub_19594F8(&v445);
                          v122 = sub_4A5C(&v445, "Stop pattern ", 13);
                          v123 = sub_2FF718(v122, *v435);
                          v124 = sub_4A5C(v123, " at trip sequence index ", 24);
                          std::ostream::operator<<();
                          v125 = sub_4A5C(v124, " and stop index ", 16);
                          std::ostream::operator<<();
                          sub_4A5C(v125, " has mismatching buffer durations (sp: ", 39);
                          v126 = sub_A57920((a1 + 4136), *v435);
                          v127 = (v126 - *v126);
                          if (*v127 >= 9u && (v128 = v127[4]) != 0)
                          {
                            v129 = (v126 + v128 + *(v126 + v128));
                          }

                          else
                          {
                            v129 = 0;
                          }

                          sub_A571D4(v129, i);
                          v130 = std::ostream::operator<<();
                          sub_4A5C(v130, " sec; trip: ", 12);
                          v131 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                          v132 = &v131[-*v131];
                          v133 = *v132;
                          if (v133 <= 4)
                          {
                            v137 = 0;
                            v135 = (4 * v442 + 4 + dword_4[v442]);
                            v138 = (v135 - *(&dword_4[v442] + dword_4[v442]));
                            if (*v138 >= 0xDu)
                            {
                              goto LABEL_196;
                            }

LABEL_198:
                            v140 = -1;
                          }

                          else
                          {
                            v134 = *(v132 + 2);
                            if (*(v132 + 2))
                            {
                              v134 += &v131[*&v131[v134]];
                            }

                            v135 = (v134 + 4 * v442 + 4 + *(v134 + 4 * v442 + 4));
                            if (v133 >= 7 && (v136 = *(v132 + 3)) != 0)
                            {
                              v137 = &v131[v136 + *&v131[v136]];
                              v138 = (v135 - *v135);
                              if (*v138 < 0xDu)
                              {
                                goto LABEL_198;
                              }
                            }

                            else
                            {
                              v137 = 0;
                              v138 = (v135 - *v135);
                              if (*v138 < 0xDu)
                              {
                                goto LABEL_198;
                              }
                            }

LABEL_196:
                            v139 = v138[6];
                            if (!v139)
                            {
                              goto LABEL_198;
                            }

                            v140 = *(v135 + v139);
                          }

                          sub_3A2E6C(v137, v140 + v439);
                          v141 = std::ostream::operator<<();
                          sub_4A5C(v141, " sec.", 5);
                          if ((v453 & 0x10) != 0)
                          {
                            v143 = p_p;
                            v144 = &v449 + 1;
                            if (p_p < v450)
                            {
                              p_p = v450;
                              v143 = v450;
                              v144 = &v449 + 1;
                            }
                          }

                          else
                          {
                            if ((v453 & 8) == 0)
                            {
                              v142 = 0;
                              v444 = 0;
                              goto LABEL_211;
                            }

                            v143 = v449;
                            v144 = &v448;
                          }

                          v145 = *v144;
                          v142 = v143 - *v144;
                          if (v142 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_3244();
                          }

                          if (v142 >= 0x17)
                          {
                            operator new();
                          }

                          v444 = v143 - *v144;
                          if (v142)
                          {
                            memmove(__dst, v145, v142);
                          }

LABEL_211:
                          *(__dst + v142) = 0;
                          sub_7E854(__dst, 3u);
                          if (v444 < 0)
                          {
                            operator delete(__dst[0]);
                          }

                          v445 = v438;
                          *(&v445 + *(v438 - 3)) = v437;
                          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__p.__r_.__value_.__l.__data_);
                          }

                          std::locale::~locale(&v447);
                          std::ostream::~ostream();
                          std::ios::~ios();
                        }

                        v441 = 0;
                      }

                      v146 = sub_585D8((*(a1 + 4184) + 3896));
                      v147 = *(a1 + 4184);
                      if (!sub_4C2B90(v147 + 3896) || !*(v147 + 3960) || (v148 = sub_39F47C(*(*(a1 + 4184) + 3960), v111, v101, v146)) == 0)
                      {
                        v151 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                        v152 = &v151[-*v151];
                        v153 = *v152;
                        if (v153 <= 4)
                        {
                          v157 = 0;
                          v155 = (4 * v442 + 4 + dword_4[v442]);
                          v158 = (v155 - *(&dword_4[v442] + dword_4[v442]));
                          if (*v158 >= 0xDu)
                          {
                            goto LABEL_232;
                          }

LABEL_234:
                          v160 = -1;
                        }

                        else
                        {
                          v154 = *(v152 + 2);
                          if (*(v152 + 2))
                          {
                            v154 += &v151[*&v151[v154]];
                          }

                          v155 = (v154 + 4 * v442 + 4 + *(v154 + 4 * v442 + 4));
                          if (v153 >= 7 && (v156 = *(v152 + 3)) != 0)
                          {
                            v157 = &v151[v156 + *&v151[v156]];
                            v158 = (v155 - *v155);
                            if (*v158 < 0xDu)
                            {
                              goto LABEL_234;
                            }
                          }

                          else
                          {
                            v157 = 0;
                            v158 = (v155 - *v155);
                            if (*v158 < 0xDu)
                            {
                              goto LABEL_234;
                            }
                          }

LABEL_232:
                          v159 = v158[6];
                          if (!v159)
                          {
                            goto LABEL_234;
                          }

                          v160 = *(v155 + v159);
                        }

                        v150 = (sub_3A2E6C(v157, v160 + v439) + 16);
                        goto LABEL_236;
                      }

                      v149 = v148[5];
                      if (0xCCCCCCCCCCCCCCCDLL * ((v148[6] - v149) >> 2) <= v439)
                      {
                        v161 = 0;
                        goto LABEL_237;
                      }

                      v150 = (v149 + 20 * v439 + 16);
LABEL_236:
                      v161 = *v150 != 1;
LABEL_237:
                      v162 = sub_585D8((*(a1 + 4184) + 3896));
                      v163 = *(a1 + 4184);
                      if (!sub_4C2B90(v163 + 3896) || !*(v163 + 3960) || (v164 = sub_39F47C(*(*(a1 + 4184) + 3960), v111, v101, v162)) == 0)
                      {
                        v167 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                        v168 = &v167[-*v167];
                        v169 = *v168;
                        if (v169 <= 4)
                        {
                          v173 = 0;
                          v171 = (4 * v442 + 4 + dword_4[v442]);
                          v174 = (v171 - *(&dword_4[v442] + dword_4[v442]));
                          if (*v174 >= 0xDu)
                          {
                            goto LABEL_252;
                          }

LABEL_254:
                          v176 = -1;
                        }

                        else
                        {
                          v170 = *(v168 + 2);
                          if (*(v168 + 2))
                          {
                            v170 += &v167[*&v167[v170]];
                          }

                          v171 = (v170 + 4 * v442 + 4 + *(v170 + 4 * v442 + 4));
                          if (v169 >= 7 && (v172 = *(v168 + 3)) != 0)
                          {
                            v173 = &v167[v172 + *&v167[v172]];
                            v174 = (v171 - *v171);
                            if (*v174 < 0xDu)
                            {
                              goto LABEL_254;
                            }
                          }

                          else
                          {
                            v173 = 0;
                            v174 = (v171 - *v171);
                            if (*v174 < 0xDu)
                            {
                              goto LABEL_254;
                            }
                          }

LABEL_252:
                          v175 = v174[6];
                          if (!v175)
                          {
                            goto LABEL_254;
                          }

                          v176 = *(v171 + v175);
                        }

                        v166 = (sub_3A2E6C(v173, v176 + v439) + 17);
LABEL_256:
                        v177 = *v166 != 1;
                        if (v431 == v430)
                        {
                          goto LABEL_257;
                        }

                        goto LABEL_269;
                      }

                      v165 = v164[5];
                      if (0xCCCCCCCCCCCCCCCDLL * ((v164[6] - v165) >> 2) > v439)
                      {
                        v166 = (v165 + 20 * v439 + 17);
                        goto LABEL_256;
                      }

                      v177 = 0;
                      if (v431 == v430)
                      {
LABEL_257:
                        if ((v161 & 1) == 0)
                        {
                          v178 = sub_A57920((a1 + 4136), *v435);
                          v179 = (v178 - *v178);
                          if (*v179 >= 9u && (v180 = v179[4]) != 0)
                          {
                            v181 = (v178 + v180 + *(v178 + v180));
                          }

                          else
                          {
                            v181 = 0;
                          }

                          if ((*(sub_A571D4(v181, i) + 15) & 2) != 0)
                          {
                            if (sub_7E7E4(3u))
                            {
                              sub_19594F8(&v445);
                              v182 = sub_4A5C(&v445, "Realtime stop pattern ", 22);
                              v183 = sub_2FF718(v182, *v435);
                              v184 = sub_4A5C(v183, " at trip sequence index ", 24);
                              std::ostream::operator<<();
                              v185 = sub_4A5C(v184, " and stop index ", 16);
                              std::ostream::operator<<();
                              sub_4A5C(v185, " has pickup flag where the trip does not (sp: ", 46);
                              v186 = sub_A57920((a1 + 4136), *v435);
                              v187 = (v186 - *v186);
                              if (*v187 >= 9u && (v188 = v187[4]) != 0)
                              {
                                v189 = (v186 + v188 + *(v186 + v188));
                              }

                              else
                              {
                                v189 = 0;
                              }

                              sub_A571D4(v189, i);
                              v207 = std::ostream::operator<<();
                              sub_4A5C(v207, "; trip: ", 8);
                              v208 = std::ostream::operator<<();
                              sub_4A5C(v208, ").", 2);
                              if ((v453 & 0x10) != 0)
                              {
                                v228 = p_p;
                                v229 = &v449 + 1;
                                if (p_p < v450)
                                {
                                  p_p = v450;
                                  v228 = v450;
                                  v229 = &v449 + 1;
                                }
                              }

                              else
                              {
                                if ((v453 & 8) == 0)
                                {
                                  v209 = 0;
                                  v444 = 0;
                                  goto LABEL_332;
                                }

                                v228 = v449;
                                v229 = &v448;
                              }

                              v231 = *v229;
                              v209 = v228 - *v229;
                              if (v209 > 0x7FFFFFFFFFFFFFF7)
                              {
                                sub_3244();
                              }

                              if (v209 >= 0x17)
                              {
                                operator new();
                              }

                              v444 = v228 - *v229;
                              if (v209)
                              {
                                memmove(__dst, v231, v209);
                              }

LABEL_332:
                              *(__dst + v209) = 0;
                              sub_7E854(__dst, 3u);
                              if (v444 < 0)
                              {
                                operator delete(__dst[0]);
                              }

                              v445 = v438;
                              *(&v445 + *(v438 - 3)) = v437;
                              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__p.__r_.__value_.__l.__data_);
                              }

                              std::locale::~locale(&v447);
                              std::ostream::~ostream();
                              std::ios::~ios();
                            }

                            v441 = 0;
                          }
                        }

                        if (!v177)
                        {
                          v232 = sub_A57920((a1 + 4136), *v435);
                          v233 = (v232 - *v232);
                          if (*v233 >= 9u && (v234 = v233[4]) != 0)
                          {
                            v235 = (v232 + v234 + *(v232 + v234));
                          }

                          else
                          {
                            v235 = 0;
                          }

                          if (*(sub_A571D4(v235, i) + 15))
                          {
                            if (sub_7E7E4(3u))
                            {
                              sub_19594F8(&v445);
                              v236 = sub_4A5C(&v445, "Realtime stop pattern ", 22);
                              v237 = sub_2FF718(v236, *v435);
                              v238 = sub_4A5C(v237, " at trip sequence index ", 24);
                              std::ostream::operator<<();
                              v239 = sub_4A5C(v238, " and stop index ", 16);
                              std::ostream::operator<<();
                              sub_4A5C(v239, " has dropoff flag where the trip does not (sp: ", 47);
                              v240 = sub_A57920((a1 + 4136), *v435);
                              v241 = (v240 - *v240);
                              if (*v241 >= 9u && (v242 = v241[4]) != 0)
                              {
                                v243 = (v240 + v242 + *(v240 + v242));
                              }

                              else
                              {
                                v243 = 0;
                              }

                              sub_A571D4(v243, i);
                              v244 = std::ostream::operator<<();
                              sub_4A5C(v244, "; trip: ", 8);
                              v245 = std::ostream::operator<<();
                              sub_4A5C(v245, ").", 2);
                              if ((v453 & 0x10) != 0)
                              {
                                v246 = p_p;
                                v247 = &v449 + 1;
                                if (p_p < v450)
                                {
                                  p_p = v450;
                                  v246 = v450;
                                  v247 = &v449 + 1;
                                }
                              }

                              else
                              {
                                if ((v453 & 8) == 0)
                                {
                                  v225 = 0;
                                  v444 = 0;
                                  goto LABEL_361;
                                }

                                v246 = v449;
                                v247 = &v448;
                              }

                              v230 = *v247;
                              v225 = v246 - *v247;
                              if (v225 > 0x7FFFFFFFFFFFFFF7)
                              {
                                sub_3244();
                              }

                              if (v225 >= 0x17)
                              {
                                operator new();
                              }

                              v444 = v246 - *v247;
                              if (v225)
                              {
                                goto LABEL_360;
                              }

LABEL_361:
                              *(__dst + v225) = 0;
                              sub_7E854(__dst, 3u);
                              if (v444 < 0)
                              {
                                operator delete(__dst[0]);
                              }

                              v445 = v438;
                              *(&v445 + *(v438 - 3)) = v437;
                              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__p.__r_.__value_.__l.__data_);
                              }

                              std::locale::~locale(&v447);
                              std::ostream::~ostream();
                              std::ios::~ios();
                            }

                            goto LABEL_366;
                          }
                        }

                        goto LABEL_367;
                      }

LABEL_269:
                      v190 = sub_A57920((a1 + 4136), *v435);
                      v191 = (v190 - *v190);
                      if (*v191 >= 9u && (v192 = v191[4]) != 0)
                      {
                        v193 = (v190 + v192 + *(v190 + v192));
                      }

                      else
                      {
                        v193 = 0;
                      }

                      if (v161 != (*(sub_A571D4(v193, i) + 15) & 2) >> 1)
                      {
                        if (sub_7E7E4(3u))
                        {
                          sub_19594F8(&v445);
                          v194 = sub_4A5C(&v445, "Stop pattern ", 13);
                          v195 = sub_2FF718(v194, *v435);
                          v196 = sub_4A5C(v195, " at trip sequence index ", 24);
                          std::ostream::operator<<();
                          v197 = sub_4A5C(v196, " and stop index ", 16);
                          std::ostream::operator<<();
                          sub_4A5C(v197, " has mismatching pickup flags (sp: ", 35);
                          v198 = sub_A57920((a1 + 4136), *v435);
                          v199 = (v198 - *v198);
                          if (*v199 >= 9u && (v200 = v199[4]) != 0)
                          {
                            v201 = (v198 + v200 + *(v198 + v200));
                          }

                          else
                          {
                            v201 = 0;
                          }

                          sub_A571D4(v201, i);
                          v202 = std::ostream::operator<<();
                          sub_4A5C(v202, "; trip: ", 8);
                          v203 = std::ostream::operator<<();
                          sub_4A5C(v203, ").", 2);
                          if ((v453 & 0x10) != 0)
                          {
                            v205 = p_p;
                            v206 = &v449 + 1;
                            if (p_p < v450)
                            {
                              p_p = v450;
                              v205 = v450;
                              v206 = &v449 + 1;
                            }
                          }

                          else
                          {
                            if ((v453 & 8) == 0)
                            {
                              v204 = 0;
                              v444 = 0;
                              goto LABEL_295;
                            }

                            v205 = v449;
                            v206 = &v448;
                          }

                          v210 = *v206;
                          v204 = v205 - *v206;
                          if (v204 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_3244();
                          }

                          if (v204 >= 0x17)
                          {
                            operator new();
                          }

                          v444 = v205 - *v206;
                          if (v204)
                          {
                            memmove(__dst, v210, v204);
                          }

LABEL_295:
                          *(__dst + v204) = 0;
                          sub_7E854(__dst, 3u);
                          if (v444 < 0)
                          {
                            operator delete(__dst[0]);
                          }

                          v445 = v438;
                          *(&v445 + *(v438 - 3)) = v437;
                          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__p.__r_.__value_.__l.__data_);
                          }

                          std::locale::~locale(&v447);
                          std::ostream::~ostream();
                          std::ios::~ios();
                        }

                        v441 = 0;
                      }

                      v211 = sub_A57920((a1 + 4136), *v435);
                      v212 = (v211 - *v211);
                      if (*v212 >= 9u && (v213 = v212[4]) != 0)
                      {
                        v214 = (v211 + v213 + *(v211 + v213));
                      }

                      else
                      {
                        v214 = 0;
                      }

                      if (v177 != (*(sub_A571D4(v214, i) + 15) & 1))
                      {
                        if (sub_7E7E4(3u))
                        {
                          sub_19594F8(&v445);
                          v215 = sub_4A5C(&v445, "Stop pattern ", 13);
                          v216 = sub_2FF718(v215, *v435);
                          v217 = sub_4A5C(v216, " at trip sequence index ", 24);
                          std::ostream::operator<<();
                          v218 = sub_4A5C(v217, " and stop index ", 16);
                          std::ostream::operator<<();
                          sub_4A5C(v218, " has mismatching dropoff flags (sp: ", 36);
                          v219 = sub_A57920((a1 + 4136), *v435);
                          v220 = (v219 - *v219);
                          if (*v220 >= 9u && (v221 = v220[4]) != 0)
                          {
                            v222 = (v219 + v221 + *(v219 + v221));
                          }

                          else
                          {
                            v222 = 0;
                          }

                          sub_A571D4(v222, i);
                          v223 = std::ostream::operator<<();
                          sub_4A5C(v223, "; trip: ", 8);
                          v224 = std::ostream::operator<<();
                          sub_4A5C(v224, ").", 2);
                          if ((v453 & 0x10) != 0)
                          {
                            v226 = p_p;
                            v227 = &v449 + 1;
                            if (p_p < v450)
                            {
                              p_p = v450;
                              v226 = v450;
                              v227 = &v449 + 1;
                            }
                          }

                          else
                          {
                            if ((v453 & 8) == 0)
                            {
                              v225 = 0;
                              v444 = 0;
                              goto LABEL_361;
                            }

                            v226 = v449;
                            v227 = &v448;
                          }

                          v230 = *v227;
                          v225 = v226 - *v227;
                          if (v225 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_3244();
                          }

                          if (v225 >= 0x17)
                          {
                            operator new();
                          }

                          v444 = v226 - *v227;
                          if (!v225)
                          {
                            goto LABEL_361;
                          }

LABEL_360:
                          memmove(__dst, v230, v225);
                          goto LABEL_361;
                        }

LABEL_366:
                        v441 = 0;
                      }

LABEL_367:
                      v248 = sub_A57920((a1 + 4136), *v435);
                      v249 = (v248 - *v248);
                      if (*v249 < 0x15u || !v249[10])
                      {
                        goto LABEL_421;
                      }

                      v250 = sub_A57920((a1 + 4136), *v435);
                      v251 = (v250 - *v250);
                      if (*v251 >= 0x15u && (v252 = v251[10]) != 0)
                      {
                        v253 = sub_BCAB48((v250 + v252 + *(v250 + v252)), i);
                      }

                      else
                      {
                        v253 = 0;
                      }

                      v254 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                      v255 = &v254[-*v254];
                      if (*v255 < 5u)
                      {
                        v256 = 0;
                      }

                      else
                      {
                        v256 = *(v255 + 2);
                        if (v256)
                        {
                          v256 += &v254[*&v254[v256]];
                        }
                      }

                      v257 = (v256 + 4 * v442 + 4 + *(v256 + 4 * v442 + 4));
                      v258 = (v257 - *v257);
                      if (*v258 >= 0x2Bu)
                      {
                        v259 = v258[21];
                        if (v259)
                        {
                          if (*(v257 + v259) != -1)
                          {
                            v260 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                            v261 = &v260[-*v260];
                            v262 = *v261;
                            if (v262 <= 4)
                            {
                              v266 = 0;
                              v264 = (4 * v442 + 4 + dword_4[v442]);
                              v267 = (v264 - *(&dword_4[v442] + dword_4[v442]));
                              if (*v267 >= 0x2Bu)
                              {
                                goto LABEL_390;
                              }

LABEL_392:
                              v269 = -1;
                            }

                            else
                            {
                              v263 = *(v261 + 2);
                              if (*(v261 + 2))
                              {
                                v263 += &v260[*&v260[v263]];
                              }

                              v264 = (v263 + 4 * v442 + 4 + *(v263 + 4 * v442 + 4));
                              if (v262 >= 0x17 && (v265 = *(v261 + 11)) != 0)
                              {
                                v266 = &v260[v265 + *&v260[v265]];
                                v267 = (v264 - *v264);
                                if (*v267 < 0x2Bu)
                                {
                                  goto LABEL_392;
                                }
                              }

                              else
                              {
                                v266 = 0;
                                v267 = (v264 - *v264);
                                if (*v267 < 0x2Bu)
                                {
                                  goto LABEL_392;
                                }
                              }

LABEL_390:
                              v268 = v267[21];
                              if (!v268)
                              {
                                goto LABEL_392;
                              }

                              v269 = *(v264 + v268);
                            }

                            v270 = sub_A7F86C(v266, v269 + v439);
                            v271 = (v270 - *v270);
                            if (*v271 >= 5u)
                            {
                              v272 = v271[2];
                              if (v272)
                              {
                                if (*(v270 + v272 + *(v270 + v272)))
                                {
                                  operator new();
                                }
                              }
                            }
                          }
                        }
                      }

                      if (!v253 || !sub_7E7E4(3u))
                      {
                        goto LABEL_421;
                      }

                      sub_19594F8(&v445);
                      v273 = sub_4A5C(&v445, "Stop pattern ", 13);
                      v274 = sub_2FF718(v273, *v435);
                      v275 = sub_4A5C(v274, " at trip sequence index ", 24);
                      std::ostream::operator<<();
                      v276 = sub_4A5C(v275, " and stop index ", 16);
                      std::ostream::operator<<();
                      sub_4A5C(v276, " has mismatching number of boarding restriction identifiers (sp: ", 65);
                      v277 = sub_A57920((a1 + 4136), *v435);
                      v278 = (v277 - *v277);
                      if (*v278 >= 0x15u)
                      {
                        v279 = v278[10];
                        if (v279)
                        {
                          sub_BCAB48((v277 + v279 + *(v277 + v279)), i);
                        }
                      }

                      v280 = std::ostream::operator<<();
                      sub_4A5C(v280, "; trip: ", 8);
                      sub_C9CCF4((a1 + 4184), v442, v439, __dst);
                      v281 = std::ostream::operator<<();
                      sub_4A5C(v281, ").", 2);
                      if (__dst[0])
                      {
                        __dst[1] = __dst[0];
                        operator delete(__dst[0]);
                      }

                      if ((v453 & 0x10) != 0)
                      {
                        v283 = p_p;
                        v284 = &v449 + 1;
                        if (p_p < v450)
                        {
                          p_p = v450;
                          v283 = v450;
                          v284 = &v449 + 1;
                        }

                        goto LABEL_410;
                      }

                      if ((v453 & 8) != 0)
                      {
                        v283 = v449;
                        v284 = &v448;
LABEL_410:
                        v285 = *v284;
                        v282 = v283 - *v284;
                        if (v282 > 0x7FFFFFFFFFFFFFF7)
                        {
                          sub_3244();
                        }

                        if (v282 >= 0x17)
                        {
                          operator new();
                        }

                        v444 = v283 - *v284;
                        if (v282)
                        {
                          memmove(__dst, v285, v282);
                        }

                        goto LABEL_416;
                      }

                      v282 = 0;
                      v444 = 0;
LABEL_416:
                      *(__dst + v282) = 0;
                      sub_7E854(__dst, 3u);
                      if (v444 < 0)
                      {
                        operator delete(__dst[0]);
                      }

                      v445 = v438;
                      *(&v445 + *(v438 - 3)) = v437;
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      std::locale::~locale(&v447);
                      std::ostream::~ostream();
                      std::ios::~ios();
LABEL_421:
                      v286 = sub_BD5F34((a1 + 4136), *v435, i);
                      v287 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                      v288 = &v287[-*v287];
                      if (*v288 >= 5u && (v289 = *(v288 + 2)) != 0)
                      {
                        v290 = &v287[v289 + *&v287[v289]];
                      }

                      else
                      {
                        v290 = 0;
                      }

                      v291 = sub_BCA9F8(v290, v442);
                      v292 = HIDWORD(v442);
                      v293 = (v291 - *v291);
                      v294 = *v293;
                      if (v294 < 0x27)
                      {
                        if (v294 < 0x11)
                        {
                          goto LABEL_434;
                        }
                      }

                      else if (v293[19])
                      {
                        v295 = sub_BCAB48((v291 + v293[19] + *(v291 + v293[19])), v439);
                        v296 = HIDWORD(v442);
                        if (v295 != -1)
                        {
                          goto LABEL_432;
                        }

                        goto LABEL_434;
                      }

                      v297 = v293[8];
                      if (v297)
                      {
                        v295 = *(v291 + v297);
                        v296 = HIDWORD(v442);
                        if (v295 != -1)
                        {
LABEL_432:
                          if (v295 != v286)
                          {
                            goto LABEL_436;
                          }

                          goto LABEL_435;
                        }
                      }

LABEL_434:
                      v296 = 0;
                      if (v286 != -1)
                      {
                        goto LABEL_436;
                      }

LABEL_435:
                      if (HIDWORD(v286) != v296)
                      {
LABEL_436:
                        if (sub_7E7E4(3u))
                        {
                          sub_19594F8(&v445);
                          v298 = sub_4A5C(&v445, "Stop pattern ", 13);
                          v299 = sub_2FF718(v298, *v435);
                          v300 = sub_4A5C(v299, " at trip sequence index ", 24);
                          std::ostream::operator<<();
                          v301 = sub_4A5C(v300, " and stop index ", 16);
                          std::ostream::operator<<();
                          v302 = sub_4A5C(v301, " has mismatching direction name ref (sp: ", 41);
                          v303 = sub_BD5F34((a1 + 4136), *v435, i);
                          v304 = sub_2FF718(v302, v303);
                          v305 = sub_4A5C(v304, "; trip: ", 8);
                          v306 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                          v307 = &v306[-*v306];
                          if (*v307 >= 5u && (v308 = *(v307 + 2)) != 0)
                          {
                            v309 = &v306[v308 + *&v306[v308]];
                          }

                          else
                          {
                            v309 = 0;
                          }

                          v310 = sub_BCA9F8(v309, v442);
                          v311 = (v310 - *v310);
                          v312 = *v311;
                          if (v312 < 0x27)
                          {
                            if (v312 < 0x11)
                            {
                              goto LABEL_448;
                            }
                          }

                          else if (v311[19])
                          {
                            v313 = sub_BCAB48((v310 + v311[19] + *(v310 + v311[19])), v439);
                            v314 = HIDWORD(v442);
                            if (v313 == -1)
                            {
                              goto LABEL_448;
                            }

                            goto LABEL_449;
                          }

                          v315 = v311[8];
                          if (!v315 || (v313 = *(v310 + v315), v314 = HIDWORD(v442), v313 == -1))
                          {
LABEL_448:
                            v314 = 0;
                            v313 = -1;
                          }

LABEL_449:
                          v316 = sub_2FF718(v305, v313 | (v314 << 32));
                          sub_4A5C(v316, ").", 2);
                          if ((v453 & 0x10) != 0)
                          {
                            v318 = p_p;
                            v319 = &v449 + 1;
                            if (p_p < v450)
                            {
                              p_p = v450;
                              v318 = v450;
                              v319 = &v449 + 1;
                            }
                          }

                          else
                          {
                            if ((v453 & 8) == 0)
                            {
                              v317 = 0;
                              v444 = 0;
                              goto LABEL_461;
                            }

                            v318 = v449;
                            v319 = &v448;
                          }

                          v320 = *v319;
                          v317 = v318 - *v319;
                          if (v317 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_3244();
                          }

                          if (v317 >= 0x17)
                          {
                            operator new();
                          }

                          v444 = v318 - *v319;
                          if (v317)
                          {
                            memmove(__dst, v320, v317);
                          }

LABEL_461:
                          *(__dst + v317) = 0;
                          sub_7E854(__dst, 3u);
                          if (v444 < 0)
                          {
                            operator delete(__dst[0]);
                          }

                          v445 = v438;
                          *(&v445 + *(v438 - 3)) = v437;
                          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__p.__r_.__value_.__l.__data_);
                          }

                          std::locale::~locale(&v447);
                          std::ostream::~ostream();
                          std::ios::~ios();
                        }

                        v441 = 0;
                      }

                      v321 = sub_BD5F34((a1 + 4136), *v435, i);
                      v322 = -1;
                      if (HIDWORD(v321) && v321 != 0xFFFFFFFFLL)
                      {
                        v323 = sub_BCAC94(*(a1 + 4136) + 24, v321, 0, "routing direction name");
                        v324 = (v323 - *v323);
                        if (*v324 >= 5u && (v325 = v324[2]) != 0)
                        {
                          v322 = *(v323 + v325);
                        }

                        else
                        {
                          v322 = 0;
                        }
                      }

                      v326 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                      v327 = &v326[-*v326];
                      if (*v327 >= 5u && (v328 = *(v327 + 2)) != 0)
                      {
                        v329 = &v326[v328 + *&v326[v328]];
                      }

                      else
                      {
                        v329 = 0;
                      }

                      v330 = sub_BCA9F8(v329, v442);
                      v331 = (v330 - *v330);
                      v332 = *v331;
                      if (v332 < 0x27)
                      {
                        if (v332 < 0x11)
                        {
                          if (v322 == -1)
                          {
                            goto LABEL_530;
                          }

                          goto LABEL_493;
                        }
                      }

                      else if (v331[19])
                      {
                        v333 = sub_BCAB48((v330 + v331[19] + *(v330 + v331[19])), v439);
                        LODWORD(v334) = -1;
                        if (v333 == -1)
                        {
                          goto LABEL_492;
                        }

                        goto LABEL_484;
                      }

                      v334 = v331[8];
                      if (!v334)
                      {
                        LODWORD(v334) = -1;
                        goto LABEL_492;
                      }

                      v333 = *(v330 + v334);
                      LODWORD(v334) = -1;
                      if (v333 == -1)
                      {
                        goto LABEL_492;
                      }

LABEL_484:
                      if (v436)
                      {
                        v335 = sub_BCAC94(*(a1 + 4184) + 24, v442 & 0xFFFFFFFF00000000 | v333, 0, "routing direction name");
                        v336 = (v335 - *v335);
                        if (*v336 < 5u)
                        {
                          if (!v322)
                          {
                            goto LABEL_530;
                          }

                          goto LABEL_493;
                        }

                        v334 = v336[2];
                        if (v334)
                        {
                          if (v322 == *(v335 + v334))
                          {
                            goto LABEL_530;
                          }

LABEL_493:
                          if (!sub_7E7E4(3u))
                          {
                            goto LABEL_529;
                          }

                          sub_19594F8(&v445);
                          v337 = sub_4A5C(&v445, "Stop pattern ", 13);
                          v338 = sub_2FF718(v337, *v435);
                          v339 = sub_4A5C(v338, " at trip sequence index ", 24);
                          std::ostream::operator<<();
                          v340 = sub_4A5C(v339, " and stop index ", 16);
                          std::ostream::operator<<();
                          v341 = sub_4A5C(v340, " has mismatching direction name sort key (sp: ", 46);
                          v342 = sub_BD5F34((a1 + 4136), *v435, i);
                          if (HIDWORD(v342) && v342 != 0xFFFFFFFFLL)
                          {
                            sub_BCAC94(*(a1 + 4136) + 24, v342, 0, "routing direction name");
                          }

                          std::ostream::operator<<();
                          v343 = sub_4A5C(v341, "; trip: ", 8);
                          v344 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                          v345 = &v344[-*v344];
                          if (*v345 >= 5u && (v346 = *(v345 + 2)) != 0)
                          {
                            v347 = &v344[v346 + *&v344[v346]];
                          }

                          else
                          {
                            v347 = 0;
                          }

                          v348 = sub_BCA9F8(v347, v442);
                          v349 = (v348 - *v348);
                          v350 = *v349;
                          if (v350 < 0x27)
                          {
                            if (v350 < 0x11)
                            {
                              goto LABEL_512;
                            }
                          }

                          else if (v349[19])
                          {
                            v351 = sub_BCAB48((v348 + v349[19] + *(v348 + v349[19])), v439);
                            if (v351 == -1)
                            {
                              goto LABEL_512;
                            }

LABEL_510:
                            if (v436)
                            {
                              sub_BCAC94(*(a1 + 4184) + 24, v442 & 0xFFFFFFFF00000000 | v351, 0, "routing direction name");
                            }

LABEL_512:
                            std::ostream::operator<<();
                            sub_4A5C(v343, ").", 2);
                            if ((v453 & 0x10) != 0)
                            {
                              v354 = p_p;
                              v355 = &v449 + 1;
                              if (p_p < v450)
                              {
                                p_p = v450;
                                v354 = v450;
                                v355 = &v449 + 1;
                              }
                            }

                            else
                            {
                              if ((v453 & 8) == 0)
                              {
                                v353 = 0;
                                v444 = 0;
                                goto LABEL_524;
                              }

                              v354 = v449;
                              v355 = &v448;
                            }

                            v356 = *v355;
                            v353 = v354 - *v355;
                            if (v353 > 0x7FFFFFFFFFFFFFF7)
                            {
                              sub_3244();
                            }

                            if (v353 >= 0x17)
                            {
                              operator new();
                            }

                            v444 = v354 - *v355;
                            if (v353)
                            {
                              memmove(__dst, v356, v353);
                            }

LABEL_524:
                            *(__dst + v353) = 0;
                            sub_7E854(__dst, 3u);
                            if (v444 < 0)
                            {
                              operator delete(__dst[0]);
                            }

                            v445 = v438;
                            *(&v445 + *(v438 - 3)) = v437;
                            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(__p.__r_.__value_.__l.__data_);
                            }

                            std::locale::~locale(&v447);
                            std::ostream::~ostream();
                            std::ios::~ios();
LABEL_529:
                            v441 = 0;
                            goto LABEL_530;
                          }

                          v352 = v349[8];
                          if (v352)
                          {
                            v351 = *(v348 + v352);
                            if (v351 != -1)
                            {
                              goto LABEL_510;
                            }
                          }

                          goto LABEL_512;
                        }
                      }

LABEL_492:
                      if (v322 != v334)
                      {
                        goto LABEL_493;
                      }

LABEL_530:
                      v357 = sub_BD5DA0((a1 + 4136), *v435, i);
                      v358 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                      v359 = &v358[-*v358];
                      if (*v359 >= 5u && (v360 = *(v359 + 2)) != 0)
                      {
                        v361 = &v358[v360 + *&v358[v360]];
                      }

                      else
                      {
                        v361 = 0;
                      }

                      v362 = sub_BCA9F8(v361, v442);
                      v363 = (v362 - *v362);
                      v364 = *v363;
                      if (v364 < 0x25)
                      {
                        if (v364 < 0xF)
                        {
                          goto LABEL_543;
                        }
                      }

                      else if (v363[18])
                      {
                        v365 = sub_BCAB48((v362 + v363[18] + *(v362 + v363[18])), v439);
                        v366 = HIDWORD(v442);
                        if (v365 != -1)
                        {
                          goto LABEL_541;
                        }

                        goto LABEL_543;
                      }

                      v367 = v363[7];
                      if (v367)
                      {
                        v365 = *(v362 + v367);
                        v366 = HIDWORD(v442);
                        if (v365 != -1)
                        {
LABEL_541:
                          if (v365 != v357)
                          {
                            goto LABEL_545;
                          }

                          goto LABEL_544;
                        }
                      }

LABEL_543:
                      v366 = 0;
                      if (v357 != -1)
                      {
                        goto LABEL_545;
                      }

LABEL_544:
                      if (HIDWORD(v357) != v366)
                      {
LABEL_545:
                        if (sub_7E7E4(3u))
                        {
                          sub_19594F8(&v445);
                          v368 = sub_4A5C(&v445, "Stop pattern ", 13);
                          v369 = sub_2FF718(v368, *v435);
                          v370 = sub_4A5C(v369, " at trip sequence index ", 24);
                          std::ostream::operator<<();
                          v371 = sub_4A5C(v370, " and stop index ", 16);
                          std::ostream::operator<<();
                          v372 = sub_4A5C(v371, " has mismatching headsign ref (sp: ", 35);
                          v373 = sub_BD5DA0((a1 + 4136), *v435, i);
                          v374 = sub_2FF718(v372, v373);
                          v375 = sub_4A5C(v374, "; trip: ", 8);
                          v376 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                          v377 = &v376[-*v376];
                          if (*v377 >= 5u && (v378 = *(v377 + 2)) != 0)
                          {
                            v379 = &v376[v378 + *&v376[v378]];
                          }

                          else
                          {
                            v379 = 0;
                          }

                          v380 = sub_BCA9F8(v379, v442);
                          v381 = (v380 - *v380);
                          v382 = *v381;
                          if (v382 < 0x25)
                          {
                            if (v382 < 0xF)
                            {
                              goto LABEL_557;
                            }
                          }

                          else if (v381[18])
                          {
                            v383 = sub_BCAB48((v380 + v381[18] + *(v380 + v381[18])), v439);
                            if (v383 == -1)
                            {
                              goto LABEL_557;
                            }

                            goto LABEL_558;
                          }

                          v384 = v381[7];
                          if (!v384 || (v383 = *(v380 + v384), v383 == -1))
                          {
LABEL_557:
                            v292 = 0;
                            v383 = -1;
                          }

LABEL_558:
                          v385 = sub_2FF718(v375, v383 | (v292 << 32));
                          sub_4A5C(v385, ").", 2);
                          if ((v453 & 0x10) != 0)
                          {
                            v387 = p_p;
                            v388 = &v449 + 1;
                            if (p_p < v450)
                            {
                              p_p = v450;
                              v387 = v450;
                              v388 = &v449 + 1;
                            }
                          }

                          else
                          {
                            if ((v453 & 8) == 0)
                            {
                              v386 = 0;
                              v444 = 0;
                              goto LABEL_570;
                            }

                            v387 = v449;
                            v388 = &v448;
                          }

                          v389 = *v388;
                          v386 = v387 - *v388;
                          if (v386 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_3244();
                          }

                          if (v386 >= 0x17)
                          {
                            operator new();
                          }

                          v444 = v387 - *v388;
                          if (v386)
                          {
                            memmove(__dst, v389, v386);
                          }

LABEL_570:
                          *(__dst + v386) = 0;
                          sub_7E854(__dst, 3u);
                          if (v444 < 0)
                          {
                            operator delete(__dst[0]);
                          }

                          v445 = v438;
                          *(&v445 + *(v438 - 3)) = v437;
                          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__p.__r_.__value_.__l.__data_);
                          }

                          std::locale::~locale(&v447);
                          std::ostream::~ostream();
                          std::ios::~ios();
                        }

                        v441 = 0;
                      }

                      v390 = sub_BD5DA0((a1 + 4136), *v435, i);
                      v391 = -1;
                      if (HIDWORD(v390) && v390 != 0xFFFFFFFFLL)
                      {
                        v392 = sub_BCAE50(*(a1 + 4136) + 24, v390, 0, "routing headsign");
                        v393 = (v392 - *v392);
                        if (*v393 >= 5u && (v394 = v393[2]) != 0)
                        {
                          v391 = *(v392 + v394);
                        }

                        else
                        {
                          v391 = 0;
                        }
                      }

                      v395 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                      v396 = &v395[-*v395];
                      if (*v396 >= 5u && (v397 = *(v396 + 2)) != 0)
                      {
                        v398 = &v395[v397 + *&v395[v397]];
                      }

                      else
                      {
                        v398 = 0;
                      }

                      v399 = sub_BCA9F8(v398, v442);
                      v400 = (v399 - *v399);
                      v401 = *v400;
                      if (v401 < 0x25)
                      {
                        if (v401 < 0xF)
                        {
                          if (v391 == -1)
                          {
                            continue;
                          }

                          goto LABEL_602;
                        }

LABEL_591:
                        v403 = v400[7];
                        if (!v403)
                        {
                          LODWORD(v403) = -1;
LABEL_601:
                          if (v391 == v403)
                          {
                            continue;
                          }

                          goto LABEL_602;
                        }

                        v402 = *(v399 + v403);
                        LODWORD(v403) = -1;
                        if (v402 == -1)
                        {
                          goto LABEL_601;
                        }

                        goto LABEL_593;
                      }

                      if (!v400[18])
                      {
                        goto LABEL_591;
                      }

                      v402 = sub_BCAB48((v399 + v400[18] + *(v399 + v400[18])), v439);
                      LODWORD(v403) = -1;
                      if (v402 == -1)
                      {
                        goto LABEL_601;
                      }

LABEL_593:
                      if (!v436)
                      {
                        goto LABEL_601;
                      }

                      v404 = sub_BCAE50(*(a1 + 4184) + 24, v442 & 0xFFFFFFFF00000000 | v402, 0, "routing headsign");
                      v405 = (v404 - *v404);
                      if (*v405 < 5u)
                      {
                        if (!v391)
                        {
                          continue;
                        }

                        goto LABEL_602;
                      }

                      v403 = v405[2];
                      if (!v403)
                      {
                        goto LABEL_601;
                      }

                      if (v391 == *(v404 + v403))
                      {
                        continue;
                      }

LABEL_602:
                      if (sub_7E7E4(3u))
                      {
                        sub_19594F8(&v445);
                        v406 = sub_4A5C(&v445, "Stop pattern ", 13);
                        v407 = sub_2FF718(v406, *v435);
                        v408 = sub_4A5C(v407, " at trip sequence index ", 24);
                        std::ostream::operator<<();
                        v409 = sub_4A5C(v408, " and stop index ", 16);
                        std::ostream::operator<<();
                        v410 = sub_4A5C(v409, " has mismatching headsign sort key (sp: ", 40);
                        v411 = sub_BD5DA0((a1 + 4136), *v435, i);
                        if (HIDWORD(v411) && v411 != 0xFFFFFFFFLL)
                        {
                          sub_BCAE50(*(a1 + 4136) + 24, v411, 0, "routing headsign");
                        }

                        std::ostream::operator<<();
                        v412 = sub_4A5C(v410, "; trip: ", 8);
                        v413 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                        v414 = &v413[-*v413];
                        if (*v414 >= 5u && (v415 = *(v414 + 2)) != 0)
                        {
                          v416 = &v413[v415 + *&v413[v415]];
                        }

                        else
                        {
                          v416 = 0;
                        }

                        v417 = sub_BCA9F8(v416, v442);
                        v418 = (v417 - *v417);
                        v419 = *v418;
                        if (v419 < 0x25)
                        {
                          if (v419 < 0xF)
                          {
                            goto LABEL_621;
                          }
                        }

                        else if (v418[18])
                        {
                          v420 = sub_BCAB48((v417 + v418[18] + *(v417 + v418[18])), v439);
                          if (v420 == -1)
                          {
                            goto LABEL_621;
                          }

LABEL_619:
                          if (v436)
                          {
                            sub_BCAE50(*(a1 + 4184) + 24, v442 & 0xFFFFFFFF00000000 | v420, 0, "routing headsign");
                          }

LABEL_621:
                          std::ostream::operator<<();
                          sub_4A5C(v412, ").", 2);
                          if ((v453 & 0x10) != 0)
                          {
                            v423 = p_p;
                            v424 = &v449 + 1;
                            if (p_p < v450)
                            {
                              p_p = v450;
                              v423 = v450;
                              v424 = &v449 + 1;
                            }
                          }

                          else
                          {
                            if ((v453 & 8) == 0)
                            {
                              v422 = 0;
                              v444 = 0;
LABEL_633:
                              *(__dst + v422) = 0;
                              sub_7E854(__dst, 3u);
                              if (v444 < 0)
                              {
                                operator delete(__dst[0]);
                              }

                              v445 = v438;
                              *(&v445 + *(v438 - 3)) = v437;
                              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__p.__r_.__value_.__l.__data_);
                              }

                              std::locale::~locale(&v447);
                              std::ostream::~ostream();
                              std::ios::~ios();
                              goto LABEL_136;
                            }

                            v423 = v449;
                            v424 = &v448;
                          }

                          v425 = *v424;
                          v422 = v423 - *v424;
                          if (v422 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_3244();
                          }

                          if (v422 >= 0x17)
                          {
                            operator new();
                          }

                          v444 = v423 - *v424;
                          if (v422)
                          {
                            memmove(__dst, v425, v422);
                          }

                          goto LABEL_633;
                        }

                        v421 = v418[7];
                        if (v421)
                        {
                          v420 = *(v417 + v421);
                          if (v420 != -1)
                          {
                            goto LABEL_619;
                          }
                        }

                        goto LABEL_621;
                      }

LABEL_136:
                      v441 = 0;
                    }
                  }
                }
              }
            }

            else
            {
              v441 = 0;
              v2 = v435;
            }

            if (v456)
            {
              v457 = v456;
              operator delete(v456);
            }
          }

          v8 = v440 + 1;
          if (v440 + 1 == v429)
          {
            return v441 & 1;
          }
        }
      }
    }
  }

  v441 = 1;
  return v441 & 1;
}

void sub_C9CB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  sub_1959728(&a36);
  v52 = *(v50 - 120);
  if (!v52)
  {
    _Unwind_Resume(a1);
  }

  *(v50 - 112) = v52;
  operator delete(v52);
  _Unwind_Resume(a1);
}

int *sub_C9CCF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v5 = a2;
  v8 = __ROR8__(a2, 32);
  result = sub_3A231C(*a1 + 24, v8, 0);
  v10 = (result - *result);
  if (*v10 < 5u)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10[2];
    if (v11)
    {
      v11 += result + *(result + v11);
    }
  }

  v12 = (v11 + 4 * v5 + 4 + *(v11 + 4 * v5 + 4));
  v13 = (v12 - *v12);
  if (*v13 < 0x2Bu)
  {
    goto LABEL_26;
  }

  v14 = v13[21];
  if (!v14 || *(v12 + v14) == -1)
  {
    goto LABEL_26;
  }

  v15 = sub_3A231C(*a1 + 24, v8, 0);
  v16 = &v15[-*v15];
  v17 = *v16;
  if (v17 <= 4)
  {
    v21 = 0;
    v19 = (4 * v5 + 4 + dword_4[v5]);
    v22 = (v19 - *(&dword_4[v5] + dword_4[v5]));
    if (*v22 < 0x2Bu)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = *(v16 + 2);
    if (*(v16 + 2))
    {
      v18 += &v15[*&v15[v18]];
    }

    v19 = (v18 + 4 * v5 + 4 + *(v18 + 4 * v5 + 4));
    if (v17 >= 0x17 && (v20 = *(v16 + 11)) != 0)
    {
      v21 = &v15[v20 + *&v15[v20]];
      v22 = (v19 - *v19);
      if (*v22 < 0x2Bu)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v21 = 0;
      v22 = (v19 - *v19);
      if (*v22 < 0x2Bu)
      {
LABEL_20:
        v24 = -1;
        goto LABEL_21;
      }
    }
  }

  v23 = v22[21];
  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = *(v19 + v23);
LABEL_21:
  result = sub_A7F86C(v21, v24 + a3);
  v25 = (result - *result);
  if (*v25 < 5u || (v26 = v25[2]) == 0)
  {
LABEL_26:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  v27 = *(result + v26 + *(result + v26));
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v27)
  {
    operator new();
  }

  return result;
}

uint64_t sub_C9CF18(uint64_t *a1, unsigned int *a2, unsigned int a3)
{
  v6 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v7 = &v6[-*v6];
  v8 = *v7;
  if (v8 <= 4)
  {
    v12 = 0;
    v10 = (4 * *a2 + 4 + dword_4[*a2]);
    v13 = (v10 - *(&dword_4[*a2] + dword_4[*a2]));
    if (*v13 < 0xDu)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *(v7 + 2);
    if (*(v7 + 2))
    {
      v9 += &v6[*&v6[v9]];
    }

    v10 = (v9 + 4 * *a2 + 4 + *(v9 + 4 * *a2 + 4));
    if (v8 >= 7 && (v11 = *(v7 + 3)) != 0)
    {
      v12 = &v6[v11 + *&v6[v11]];
      v13 = (v10 - *v10);
      if (*v13 < 0xDu)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
      v13 = (v10 - *v10);
      if (*v13 < 0xDu)
      {
LABEL_13:
        v15 = -1;
        goto LABEL_14;
      }
    }
  }

  v14 = v13[6];
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = *(v10 + v14);
LABEL_14:
  v16 = (10 * *(sub_3A2E6C(v12, v15 + a3) + 8));
  v17 = sub_585D8((*a1 + 3896));
  v18 = *a1;
  if (!sub_4C2B90(*a1 + 3896))
  {
    return v16 | (v16 << 32);
  }

  if (!*(v18 + 3960))
  {
    return v16 | (v16 << 32);
  }

  v19 = sub_39F47C(*(*a1 + 3960), a2[1] | (*a2 << 32), a2[2], v17);
  if (!v19)
  {
    return v16 | (v16 << 32);
  }

  v20 = v19[5];
  if (0xCCCCCCCCCCCCCCCDLL * ((v19[6] - v20) >> 2) <= a3)
  {
    v21 = 0x7FFFFFFFLL;
  }

  else
  {
    v21 = *(v20 + 20 * a3 + 8);
  }

  v23 = v21 << 32;
  if (*(v19 + 32) == 1)
  {
    v23 = 0x7FFFFFFF00000000;
  }

  return v23 | v16;
}

uint64_t sub_C9D140(uint64_t *a1, unsigned int *a2, unsigned int a3)
{
  v6 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v7 = &v6[-*v6];
  v8 = *v7;
  if (v8 <= 4)
  {
    v12 = 0;
    v10 = (4 * *a2 + 4 + dword_4[*a2]);
    v13 = (v10 - *(&dword_4[*a2] + dword_4[*a2]));
    if (*v13 < 0xDu)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *(v7 + 2);
    if (*(v7 + 2))
    {
      v9 += &v6[*&v6[v9]];
    }

    v10 = (v9 + 4 * *a2 + 4 + *(v9 + 4 * *a2 + 4));
    if (v8 >= 7 && (v11 = *(v7 + 3)) != 0)
    {
      v12 = &v6[v11 + *&v6[v11]];
      v13 = (v10 - *v10);
      if (*v13 < 0xDu)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
      v13 = (v10 - *v10);
      if (*v13 < 0xDu)
      {
LABEL_13:
        v15 = -1;
        goto LABEL_14;
      }
    }
  }

  v14 = v13[6];
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = *(v10 + v14);
LABEL_14:
  v16 = (10 * *(sub_3A2E6C(v12, v15 + a3) + 12));
  v17 = sub_585D8((*a1 + 3896));
  v18 = *a1;
  if (!sub_4C2B90(*a1 + 3896))
  {
    return v16 | (v16 << 32);
  }

  if (!*(v18 + 3960))
  {
    return v16 | (v16 << 32);
  }

  v19 = sub_39F47C(*(*a1 + 3960), a2[1] | (*a2 << 32), a2[2], v17);
  if (!v19)
  {
    return v16 | (v16 << 32);
  }

  v20 = v19[5];
  if (0xCCCCCCCCCCCCCCCDLL * ((v19[6] - v20) >> 2) <= a3)
  {
    v21 = 0x7FFFFFFFLL;
  }

  else
  {
    v21 = *(v20 + 20 * a3 + 12);
  }

  v23 = v21 << 32;
  if (*(v19 + 32) == 1)
  {
    v23 = 0x7FFFFFFF00000000;
  }

  return v23 | v16;
}

unint64_t sub_C9D368(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v72 = *(a2 - 1);
      v73 = *v8;
      if (v72 < *v8)
      {
        *v8 = v72;
        *(a2 - 1) = v73;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v84 = v8 + 1;
      v86 = v8 == a2 || v84 == a2;
      if (a4)
      {
        if (!v86)
        {
          v87 = 0;
          v88 = v8;
          do
          {
            v91 = *v88;
            v90 = v88[1];
            v88 = v84;
            if (v90 < v91)
            {
              v92 = v87;
              do
              {
                *(v8 + v92 + 8) = v91;
                if (!v92)
                {
                  v89 = v8;
                  goto LABEL_128;
                }

                v91 = *(v8 + v92 - 8);
                v92 -= 8;
              }

              while (v90 < v91);
              v89 = (v8 + v92 + 8);
LABEL_128:
              *v89 = v90;
            }

            v84 = v88 + 1;
            v87 += 8;
          }

          while (v88 + 1 != a2);
        }
      }

      else if (!v86)
      {
        do
        {
          v126 = *v7;
          v125 = v7[1];
          v7 = v84;
          if (v125 < v126)
          {
            do
            {
              *v84 = v126;
              v126 = *(v84 - 2);
              --v84;
            }

            while (v125 < v126);
            *v84 = v125;
          }

          v84 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v93 = (v9 - 2) >> 1;
        v94 = v93;
        do
        {
          if (v93 >= v94)
          {
            v96 = (2 * (v94 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
            v97 = &v8[v96];
            if (2 * (v94 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v9)
            {
              v98 = *v97;
              v100 = &v8[v94];
              v101 = *v100;
              if (*v97 >= *v100)
              {
                goto LABEL_155;
              }
            }

            else
            {
              v98 = v97[1];
              v99 = *v97 >= v98;
              if (*v97 > v98)
              {
                v98 = *v97;
              }

              if (!v99)
              {
                ++v97;
                v96 = 2 * (v94 & 0x1FFFFFFFFFFFFFFFLL) + 2;
              }

              v100 = &v8[v94];
              v101 = *v100;
              if (v98 >= *v100)
              {
LABEL_155:
                while (1)
                {
                  *v100 = v98;
                  v100 = v97;
                  if (v93 < v96)
                  {
                    break;
                  }

                  v102 = (2 * v96) | 1;
                  v97 = &v8[v102];
                  v96 = 2 * v96 + 2;
                  if (v96 < v9)
                  {
                    v98 = *v97;
                    result = v97[1];
                    if (*v97 <= result)
                    {
                      v98 = v97[1];
                    }

                    if (*v97 >= result)
                    {
                      v96 = v102;
                    }

                    else
                    {
                      ++v97;
                    }

                    if (v98 < v101)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v98 = *v97;
                    v96 = v102;
                    if (*v97 < v101)
                    {
                      break;
                    }
                  }
                }

                *v100 = v101;
              }
            }
          }

          v95 = v94-- <= 0;
        }

        while (!v95);
        do
        {
          v103 = 0;
          v104 = *v8;
          v105 = (v9 - 2) >> 1;
          v106 = v8;
          do
          {
            while (1)
            {
              v113 = &v106[v103];
              v112 = v113 + 1;
              v114 = (2 * v103) | 1;
              v103 = 2 * v103 + 2;
              if (v103 < v9)
              {
                break;
              }

              v103 = v114;
              *v106 = *v112;
              v106 = v113 + 1;
              if (v114 > v105)
              {
                goto LABEL_170;
              }
            }

            v109 = v113[2];
            v108 = v113 + 2;
            v107 = v109;
            v110 = *(v108 - 1);
            v111 = v110 >= v109;
            if (v110 > v109)
            {
              v107 = *(v108 - 1);
            }

            if (v111)
            {
              v103 = v114;
            }

            else
            {
              v112 = v108;
            }

            *v106 = v107;
            v106 = v112;
          }

          while (v103 <= v105);
LABEL_170:
          if (v112 == --a2)
          {
            *v112 = v104;
          }

          else
          {
            *v112 = *a2;
            *a2 = v104;
            v115 = (v112 - v8 + 8) >> 3;
            v95 = v115 < 2;
            v116 = v115 - 2;
            if (!v95)
            {
              v117 = v116 >> 1;
              v118 = &v8[v117];
              v119 = *v118;
              v120 = *v112;
              if (*v118 < *v112)
              {
                do
                {
                  *v112 = v119;
                  v112 = v118;
                  if (!v117)
                  {
                    break;
                  }

                  v117 = (v117 - 1) >> 1;
                  v118 = &v8[v117];
                  v119 = *v118;
                }

                while (*v118 < v120);
                *v112 = v120;
              }
            }
          }

          v95 = v9-- <= 2;
        }

        while (!v95);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v15 = *v8;
      v16 = *v11;
      if (*v8 < *v11)
      {
        if (v12 < v15)
        {
          *v11 = v12;
          goto LABEL_37;
        }

        *v11 = v15;
        *v8 = v16;
        v26 = *(a2 - 1);
        if (v26 < v16)
        {
          *v8 = v26;
LABEL_37:
          *(a2 - 1) = v16;
        }

LABEL_38:
        --a3;
        v19 = *v8;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v12 >= v15)
      {
        goto LABEL_38;
      }

      *v8 = v12;
      *(a2 - 1) = v15;
      v18 = *v11;
      if (*v8 >= *v11)
      {
        goto LABEL_38;
      }

      *v11 = *v8;
      *v8 = v18;
      --a3;
      v19 = v18;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v8 - 1) < v19)
      {
        goto LABEL_62;
      }

      if (v19 >= *(a2 - 1))
      {
        v55 = v8 + 1;
        do
        {
          v8 = v55;
          if (v55 >= a2)
          {
            break;
          }

          ++v55;
        }

        while (v19 >= *v8);
      }

      else
      {
        do
        {
          v54 = v8[1];
          ++v8;
        }

        while (v19 >= v54);
      }

      v56 = a2;
      if (v8 < a2)
      {
        v56 = a2;
        do
        {
          v57 = *--v56;
        }

        while (v19 < v57);
      }

      if (v8 < v56)
      {
        v58 = *v8;
        v59 = *v56;
        do
        {
          *v8 = v59;
          *v56 = v58;
          do
          {
            v60 = v8[1];
            ++v8;
            v58 = v60;
          }

          while (v19 >= v60);
          do
          {
            v61 = *--v56;
            v59 = v61;
          }

          while (v19 < v61);
        }

        while (v8 < v56);
      }

      v62 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v62;
      }

      a4 = 0;
      *v62 = v19;
    }

    else
    {
      v13 = *v10;
      v14 = *v8;
      if (*v10 >= *v8)
      {
        if (v12 < v13)
        {
          *v10 = v12;
          *(a2 - 1) = v13;
          v17 = *v8;
          if (*v10 < *v8)
          {
            *v8 = *v10;
            *v10 = v17;
          }
        }
      }

      else
      {
        if (v12 >= v13)
        {
          *v8 = v13;
          *v10 = v14;
          v20 = *(a2 - 1);
          if (v20 >= v14)
          {
            goto LABEL_29;
          }

          *v10 = v20;
        }

        else
        {
          *v8 = v12;
        }

        *(a2 - 1) = v14;
      }

LABEL_29:
      v21 = v10 - 1;
      v22 = *(v10 - 1);
      v23 = v8[1];
      v24 = *(a2 - 2);
      if (v22 >= v23)
      {
        if (v24 < v22)
        {
          *v21 = v24;
          *(a2 - 2) = v22;
          v25 = v8[1];
          if (*v21 < v25)
          {
            v8[1] = *v21;
            *v21 = v25;
          }
        }
      }

      else
      {
        if (v24 >= v22)
        {
          v8[1] = v22;
          *v21 = v23;
          v27 = *(a2 - 2);
          if (v27 >= v23)
          {
            goto LABEL_43;
          }

          *v21 = v27;
        }

        else
        {
          v8[1] = v24;
        }

        *(a2 - 2) = v23;
      }

LABEL_43:
      v30 = v10[1];
      v28 = v10 + 1;
      v29 = v30;
      v31 = v8[2];
      v32 = *(a2 - 3);
      if (v30 >= v31)
      {
        if (v32 < v29)
        {
          *v28 = v32;
          *(a2 - 3) = v29;
          v33 = v8[2];
          if (*v28 < v33)
          {
            v8[2] = *v28;
            *v28 = v33;
          }
        }
      }

      else
      {
        if (v32 >= v29)
        {
          v8[2] = v29;
          *v28 = v31;
          v34 = *(a2 - 3);
          if (v34 >= v31)
          {
            goto LABEL_52;
          }

          *v28 = v34;
        }

        else
        {
          v8[2] = v32;
        }

        *(a2 - 3) = v31;
      }

LABEL_52:
      v35 = *v11;
      v36 = *v21;
      v37 = *v28;
      if (*v11 >= *v21)
      {
        if (v37 >= v35)
        {
          goto LABEL_60;
        }

        *v11 = v37;
        *v28 = v35;
        v28 = v11;
        v35 = v36;
        if (v37 < v36)
        {
LABEL_59:
          *v21 = v37;
          *v28 = v36;
LABEL_60:
          v39 = *v8;
          *v8 = v35;
          *v11 = v39;
          --a3;
          v19 = *v8;
          if ((a4 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v53 = *v8;
        *v8 = v37;
        *v11 = v53;
        --a3;
        v19 = *v8;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v37 < v35)
      {
        goto LABEL_59;
      }

      *v21 = v35;
      *v11 = v36;
      v21 = v11;
      v35 = v37;
      if (v37 < v36)
      {
        goto LABEL_59;
      }

      v38 = *v8;
      *v8 = v36;
      *v11 = v38;
      --a3;
      v19 = *v8;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v40 = 0;
      do
      {
        v41 = v8[++v40];
      }

      while (v41 < v19);
      v42 = &v8[v40];
      v43 = a2;
      if (v40 == 1)
      {
        v43 = a2;
        do
        {
          if (v42 >= v43)
          {
            break;
          }

          v45 = *--v43;
        }

        while (v45 >= v19);
      }

      else
      {
        do
        {
          v44 = *--v43;
        }

        while (v44 >= v19);
      }

      if (v42 >= v43)
      {
        v51 = v42 - 1;
        if (v42 - 1 == v8)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v8 = *v51;
        goto LABEL_80;
      }

      v46 = *v43;
      v47 = &v8[v40];
      v48 = v43;
      do
      {
        *v47 = v46;
        *v48 = v41;
        do
        {
          v49 = v47[1];
          ++v47;
          v41 = v49;
        }

        while (v49 < v19);
        do
        {
          v50 = *--v48;
          v46 = v50;
        }

        while (v50 >= v19);
      }

      while (v47 < v48);
      v51 = v47 - 1;
      if (v47 - 1 != v8)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v51 = v19;
      if (v42 < v43)
      {
        goto LABEL_83;
      }

      v52 = sub_C9DDEC(v8, v51);
      v8 = v51 + 1;
      result = sub_C9DDEC(v51 + 1, a2);
      if (result)
      {
        a2 = v51;
        if (!v52)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v52)
      {
LABEL_83:
        result = sub_C9D368(v7, v51, a3, a4 & 1);
        a4 = 0;
        v8 = v51 + 1;
      }
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v77 = v8 + 1;
      v78 = v8[1];
      v79 = v8 + 2;
      v80 = v8[2];
      v81 = *v8;
      if (v78 >= *v8)
      {
        if (v80 < v78)
        {
          *v77 = v80;
          *v79 = v78;
          v82 = v8;
          v83 = v8 + 1;
          result = v78;
          if (v80 < v81)
          {
            goto LABEL_185;
          }

          goto LABEL_186;
        }

LABEL_194:
        v78 = v80;
        v124 = *(a2 - 1);
        if (v124 >= v78)
        {
          return result;
        }
      }

      else
      {
        v82 = v8;
        v83 = v8 + 2;
        result = *v8;
        if (v80 >= v78)
        {
          *v8 = v78;
          v8[1] = v81;
          v82 = v8 + 1;
          v83 = v8 + 2;
          result = v81;
          if (v80 >= v81)
          {
            goto LABEL_194;
          }
        }

LABEL_185:
        *v82 = v80;
        *v83 = v81;
        v78 = result;
LABEL_186:
        v124 = *(a2 - 1);
        if (v124 >= v78)
        {
          return result;
        }
      }

      *v79 = v124;
      *(a2 - 1) = v78;
      v127 = *v79;
      v128 = *v77;
      if (v127 < v128)
      {
        v8[1] = v127;
        v8[2] = v128;
        v129 = *v8;
        if (v127 < *v8)
        {
          *v8 = v127;
          v8[1] = v129;
        }
      }

      return result;
    }

    if (v9 == 5)
    {
      v63 = v8 + 1;
      v64 = v8[1];
      v66 = v8 + 2;
      v65 = v8[2];
      v67 = *v8;
      if (v64 >= *v8)
      {
        if (v65 >= v64)
        {
          v70 = *v8;
          v67 = v8[1];
          v121 = v8[3];
          if (v121 >= v65)
          {
            goto LABEL_204;
          }
        }

        else
        {
          v68 = v8;
          v69 = v8 + 1;
          *v63 = v65;
          *v66 = v64;
          v70 = v65;
          result = v67;
          v71 = v64;
          if (v65 < v67)
          {
            goto LABEL_199;
          }

          v70 = v67;
          v67 = v65;
          v65 = v64;
          v121 = v8[3];
          if (v121 >= v65)
          {
            goto LABEL_204;
          }
        }
      }

      else
      {
        if (v65 < v64)
        {
          v68 = v8;
          v69 = v8 + 2;
          v70 = v8[2];
          result = v8[1];
          v71 = *v8;
          goto LABEL_199;
        }

        v68 = v8 + 1;
        v69 = v8 + 2;
        *v8 = v64;
        v8[1] = v67;
        v70 = v64;
        result = v65;
        v71 = v67;
        if (v65 < v67)
        {
LABEL_199:
          *v68 = v65;
          *v69 = v67;
          v67 = result;
          v65 = v71;
          v121 = v8[3];
          if (v121 < v71)
          {
            goto LABEL_200;
          }

LABEL_204:
          v65 = v121;
LABEL_205:
          v130 = *(a2 - 1);
          if (v130 >= v65)
          {
            return result;
          }

          v8[3] = v130;
          *(a2 - 1) = v65;
          v131 = v8[2];
          v122 = v8[3];
          if (v122 >= v131)
          {
            return result;
          }

          v8[2] = v122;
          v8[3] = v131;
          v132 = v8[1];
          if (v122 >= v132)
          {
            return result;
          }

          v8[1] = v122;
          v8[2] = v132;
          v123 = *v8;
          if (v122 >= *v8)
          {
            return result;
          }

LABEL_209:
          *v8 = v122;
          v8[1] = v123;
          return result;
        }

        v70 = v64;
        v121 = v8[3];
        if (v121 >= v65)
        {
          goto LABEL_204;
        }
      }

LABEL_200:
      v8[2] = v121;
      v8[3] = v65;
      if (v121 < v67)
      {
        *v63 = v121;
        *v66 = v67;
        if (v121 < v70)
        {
          *v8 = v121;
          v8[1] = v70;
        }
      }

      goto LABEL_205;
    }

    goto LABEL_10;
  }

  v74 = *v8;
  v75 = v8[1];
  v76 = *(a2 - 1);
  if (v75 < *v8)
  {
    if (v76 >= v75)
    {
      *v8 = v75;
      v8[1] = v74;
      v133 = *(a2 - 1);
      if (v133 >= v74)
      {
        return result;
      }

      v8[1] = v133;
    }

    else
    {
      *v8 = v76;
    }

    *(a2 - 1) = v74;
    return result;
  }

  if (v76 < v75)
  {
    v8[1] = v76;
    *(a2 - 1) = v75;
    v123 = *v8;
    v122 = v8[1];
    if (v122 < *v8)
    {
      goto LABEL_209;
    }
  }

  return result;
}

BOOL sub_C9DDEC(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v47 = *(a2 - 1);
          if (v47 >= v16)
          {
            return 1;
          }

          a1[1] = v47;
          *(a2 - 1) = v16;
          return 1;
        }

        else
        {
          *a1 = v18;
          *(a2 - 1) = v16;
          return 1;
        }
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v34 = *a1;
      v33 = a1[1];
      if (v33 >= *a1)
      {
        return 1;
      }

LABEL_66:
      *a1 = v33;
      a1[1] = v34;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
LABEL_57:
            a1[2] = v42;
            a1[3] = v6;
            if (v42 < v8)
            {
              *v4 = v42;
              *v7 = v8;
              if (v42 < v11)
              {
                *a1 = v42;
                a1[1] = v11;
              }
            }

LABEL_62:
            v48 = *(a2 - 1);
            if (v48 >= v6)
            {
              return 1;
            }

            a1[3] = v48;
            *(a2 - 1) = v6;
            v49 = a1[2];
            v33 = a1[3];
            if (v33 >= v49)
            {
              return 1;
            }

            a1[2] = v33;
            a1[3] = v49;
            v50 = a1[1];
            if (v33 >= v50)
            {
              return 1;
            }

            a1[1] = v33;
            a1[2] = v50;
            v34 = *a1;
            if (v33 >= *a1)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v42;
          goto LABEL_62;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v42 = a1[3];
      if (v42 < v13)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
        goto LABEL_49;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v43 = *(a2 - 1);
        if (v43 >= v26)
        {
          return 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
LABEL_49:
          v26 = v28;
          v43 = *(a2 - 1);
          if (v43 >= v26)
          {
            return 1;
          }

LABEL_50:
          *v27 = v43;
          *(a2 - 1) = v26;
          v44 = *v27;
          v45 = *v25;
          if (v44 >= v45)
          {
            return 1;
          }

          a1[1] = v44;
          a1[2] = v45;
          v46 = *a1;
          if (v44 >= *a1)
          {
            return 1;
          }

          *a1 = v44;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v21 >= *a1)
    {
      if (v19 >= v21)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v19 < v21)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
        goto LABEL_30;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v19 < v22)
    {
      goto LABEL_29;
    }

LABEL_30:
    v35 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v36 = 0;
    for (i = 24; ; i += 8)
    {
      v38 = *v35;
      v39 = *v20;
      if (*v35 < v39)
      {
        break;
      }

LABEL_33:
      v20 = v35++;
      if (v35 == a2)
      {
        return 1;
      }
    }

    v40 = i;
    do
    {
      *(a1 + v40) = v39;
      v41 = v40 - 8;
      if (v40 == 8)
      {
        *a1 = v38;
        if (++v36 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v39 = *(a1 + v40 - 16);
      v40 -= 8;
    }

    while (v38 < v39);
    *(a1 + v41) = v38;
    if (++v36 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *(a2 - 1);
  v15 = *a1;
  if (v14 >= *a1)
  {
    return 1;
  }

  *a1 = v14;
  *(a2 - 1) = v15;
  return 1;
}

uint64_t *sub_C9E1D8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (!sub_A794D0(*(a1 + 24), &v5))
  {
    return &unk_22AC028;
  }

  v3 = sub_C9F594(*(a1 + 24), &v5);
  if (!v3)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  return v3 + 4;
}

uint64_t *sub_C9E24C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (!sub_A794D0(*(a1 + 24), &v5))
  {
    return &unk_22AC040;
  }

  v3 = sub_C9F594(*(a1 + 24), &v5);
  if (!v3)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  return v3 + 10;
}

void sub_C9E2C0(uint64_t a1)
{
  *a1 = 256;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  operator new();
}

uint64_t sub_C9E484(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  if (*(a2 + 3))
  {
    sub_C9E320();
  }

  *(result + 24) = 0;
  return result;
}

void sub_C9E4D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(v2 + 24))
  {
    sub_C9F13C(*(a1 + 24), *(v2 + 16));
    *(v2 + 16) = 0;
    v3 = *(v2 + 8);
    if (v3)
    {
      bzero(*v2, 8 * v3);
    }

    *(v2 + 24) = 0;
  }

  *a1 = 256;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_C9E554(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 <= 1)
  {
    v1 = 1;
  }

  *(result + 16) = v1;
  return result;
}

uint64_t sub_C9E568(uint64_t result, char a2, int a3)
{
  v3 = 1 << a2;
  if (a3)
  {
    v4 = *(result + 8) | v3;
  }

  else
  {
    v4 = *(result + 8) & ~v3;
  }

  *(result + 8) = v4;
  return result;
}

void sub_C9E5B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v45 = a3;
  v46 = a2;
  v7 = *(a1 + 24);
  v47 = &v46;
  v8 = sub_C9F1F0(v7, &v46);
  v9 = v8;
  v10 = __ROR8__(a3, 32);
  v11 = v8[5];
  v12 = v8[6];
  if (v11 >= v12)
  {
    v14 = v8[4];
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 2) + 1;
    if (v15 > 0x1555555555555555)
    {
      goto LABEL_41;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 2);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 >= 0xAAAAAAAAAAAAAAALL)
    {
      v17 = 0x1555555555555555;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (v17 <= 0x1555555555555555)
      {
        operator new();
      }

LABEL_42:
      sub_1808();
    }

    v18 = 4 * ((v11 - v14) >> 2);
    *v18 = v10;
    *(v18 + 8) = a4;
    v13 = v18 + 12;
    v19 = (v18 - (v11 - v14));
    memcpy(v19, v14, v11 - v14);
    v9[4] = v19;
    v9[5] = v13;
    v9[6] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v11 = v10;
    *(v11 + 8) = a4;
    v13 = v11 + 12;
  }

  v9[5] = v13;
  v20 = *(a1 + 24);
  v47 = &v46;
  v21 = sub_C9F1F0(v20, &v46);
  v22 = v21;
  v23 = v21[8];
  v24 = v21[9];
  if (v23 < v24)
  {
    *v23 = 0;
    *(v23 + 8) = 0;
    v25 = v23 + 20;
    *(v23 + 16) = 0;
    goto LABEL_27;
  }

  v26 = v21[7];
  v27 = 0xCCCCCCCCCCCCCCCDLL * ((v23 - v26) >> 2) + 1;
  if (v27 > 0xCCCCCCCCCCCCCCCLL)
  {
    sub_1794();
  }

  v28 = 0xCCCCCCCCCCCCCCCDLL * ((v24 - v26) >> 2);
  if (2 * v28 > v27)
  {
    v27 = 2 * v28;
  }

  if (v28 >= 0x666666666666666)
  {
    v29 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v29 = v27;
  }

  if (v29)
  {
    if (v29 <= 0xCCCCCCCCCCCCCCCLL)
    {
      operator new();
    }

    goto LABEL_42;
  }

  v30 = 4 * ((v23 - v26) >> 2);
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = 0;
  v25 = v30 + 20;
  v31 = (v30 - (v23 - v26));
  memcpy(v31, v26, v23 - v26);
  v22[7] = v31;
  v22[8] = v25;
  v22[9] = 0;
  if (v26)
  {
    operator delete(v26);
  }

LABEL_27:
  v22[8] = v25;
  v32 = *(a1 + 24);
  v47 = &v45;
  v33 = sub_C9F1F0(v32, &v45);
  v34 = v33;
  v35 = __ROR8__(v46, 32);
  v36 = v33[11];
  v37 = v33[12];
  if (v36 < v37)
  {
    *v36 = v35;
    *(v36 + 8) = a4;
    v38 = v36 + 12;
    goto LABEL_40;
  }

  v39 = v33[10];
  v40 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v39) >> 2) + 1;
  if (v40 > 0x1555555555555555)
  {
LABEL_41:
    sub_1794();
  }

  v41 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v39) >> 2);
  if (2 * v41 > v40)
  {
    v40 = 2 * v41;
  }

  if (v41 >= 0xAAAAAAAAAAAAAAALL)
  {
    v42 = 0x1555555555555555;
  }

  else
  {
    v42 = v40;
  }

  if (v42)
  {
    if (v42 <= 0x1555555555555555)
    {
      operator new();
    }

    goto LABEL_42;
  }

  v43 = 4 * ((v36 - v39) >> 2);
  *v43 = v35;
  *(v43 + 8) = a4;
  v38 = v43 + 12;
  v44 = (v43 - (v36 - v39));
  memcpy(v44, v39, v36 - v39);
  v34[10] = v44;
  v34[11] = v38;
  v34[12] = 0;
  if (v39)
  {
    operator delete(v39);
  }

LABEL_40:
  v34[11] = v38;
}