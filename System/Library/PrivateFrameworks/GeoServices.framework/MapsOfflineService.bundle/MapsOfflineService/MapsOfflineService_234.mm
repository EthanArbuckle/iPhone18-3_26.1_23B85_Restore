__n128 sub_E708A8(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = *(a2 + 12);
  v6 = *(a3 + 12);
  if (v5 >= *(a1 + 12))
  {
    if (v6 < v5)
    {
      result = *a2;
      v21 = *a2;
      v9 = *(a3 + 5);
      *a2 = *a3;
      *(a2 + 5) = v9;
      *(a3 + 5) = *(v21.n128_u64 + 5);
      *a3 = v21.n128_u64[0];
      if (*(a2 + 12) < *(a1 + 12))
      {
        result = *a1;
        v22 = *a1;
        v10 = *(a2 + 5);
        *a1 = *a2;
        *(a1 + 5) = v10;
        *(a2 + 5) = *(v22.n128_u64 + 5);
        *a2 = v22.n128_u64[0];
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      result = *a1;
      v20 = *a1;
      v8 = *(a3 + 5);
      *a1 = *a3;
      *(a1 + 5) = v8;
LABEL_9:
      *(a3 + 5) = *(v20.n128_u64 + 5);
      *a3 = v20.n128_u64[0];
      goto LABEL_10;
    }

    result = *a1;
    v23 = *a1;
    v11 = *(a2 + 5);
    *a1 = *a2;
    *(a1 + 5) = v11;
    *(a2 + 5) = *(v23.n128_u64 + 5);
    *a2 = v23.n128_u64[0];
    if (*(a3 + 12) < *(a2 + 12))
    {
      result = *a2;
      v20 = *a2;
      v12 = *(a3 + 5);
      *a2 = *a3;
      *(a2 + 5) = v12;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 12) < *(a3 + 12))
  {
    result = *a3;
    v24 = *a3;
    v13 = *(a4 + 5);
    *a3 = *a4;
    *(a3 + 5) = v13;
    *(a4 + 5) = *(&v24 + 5);
    *a4 = v24;
    if (*(a3 + 12) < *(a2 + 12))
    {
      result = *a2;
      v25 = *a2;
      v14 = *(a3 + 5);
      *a2 = *a3;
      *(a2 + 5) = v14;
      *(a3 + 5) = *(v25.n128_u64 + 5);
      *a3 = v25.n128_u64[0];
      if (*(a2 + 12) < *(a1 + 12))
      {
        result = *a1;
        v26 = *a1;
        v15 = *(a2 + 5);
        *a1 = *a2;
        *(a1 + 5) = v15;
        *(a2 + 5) = *(v26.n128_u64 + 5);
        *a2 = v26.n128_u64[0];
      }
    }
  }

  if (*(a5 + 12) < *(a4 + 12))
  {
    result = *a4;
    v27 = *a4;
    v16 = *(a5 + 5);
    *a4 = *a5;
    *(a4 + 5) = v16;
    *(a5 + 5) = *(&v27 + 5);
    *a5 = v27;
    if (*(a4 + 12) < *(a3 + 12))
    {
      result = *a3;
      v28 = *a3;
      v17 = *(a4 + 5);
      *a3 = *a4;
      *(a3 + 5) = v17;
      *(a4 + 5) = *(&v28 + 5);
      *a4 = v28;
      if (*(a3 + 12) < *(a2 + 12))
      {
        result = *a2;
        v29 = *a2;
        v18 = *(a3 + 5);
        *a2 = *a3;
        *(a2 + 5) = v18;
        *(a3 + 5) = *(v29.n128_u64 + 5);
        *a3 = v29.n128_u64[0];
        if (*(a2 + 12) < *(a1 + 12))
        {
          result = *a1;
          v30 = *a1;
          v19 = *(a2 + 5);
          *a1 = *a2;
          *(a1 + 5) = v19;
          *(a2 + 5) = *(v30.n128_u64 + 5);
          *a2 = v30.n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL sub_E70B40(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = (a2 - 16);
      v6 = *(a1 + 28);
      v7 = *(a2 - 4);
      if (v6 < *(a1 + 12))
      {
        if (v7 >= v6)
        {
          v36 = *a1;
          *a1 = *(a1 + 16);
          *(a1 + 5) = *(a1 + 21);
          *(a1 + 16) = v36;
          *(a1 + 21) = *(&v36 + 5);
          if (*(a2 - 4) >= *(a1 + 28))
          {
            return 1;
          }

          v28 = *(a1 + 16);
          v17 = *(a2 - 11);
          *(a1 + 16) = *v5;
          *(a1 + 21) = v17;
        }

        else
        {
          v28 = *a1;
          v8 = *(a2 - 11);
          *a1 = *v5;
          *(a1 + 5) = v8;
        }

        *(a2 - 11) = *(&v28 + 5);
        *v5 = v28;
        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      v31 = *(a1 + 16);
      v16 = *(a2 - 11);
      *(a1 + 16) = *v5;
      *(a1 + 21) = v16;
      *(a2 - 11) = *(&v31 + 5);
      *v5 = v31;
LABEL_49:
      if (*(a1 + 28) < *(a1 + 12))
      {
        v42 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 5) = *(a1 + 21);
        *(a1 + 16) = v42;
        *(a1 + 21) = *(&v42 + 5);
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_E708A8(a1, a1 + 16, (a1 + 32), (a1 + 48), a2 - 16);
        return 1;
      }

      goto LABEL_13;
    }

    v13 = *(a1 + 28);
    v14 = *(a1 + 12);
    v15 = *(a1 + 44);
    if (v13 >= v14)
    {
      if (v15 < v13)
      {
        v34 = *(a1 + 16);
        *(a1 + 16) = *(a1 + 32);
        *(a1 + 21) = *(a1 + 37);
        *(a1 + 32) = v34;
        *(a1 + 37) = *(&v34 + 5);
        if (*(a1 + 28) < v14)
        {
          v35 = *a1;
          *a1 = *(a1 + 16);
          *(a1 + 5) = *(a1 + 21);
          *(a1 + 16) = v35;
          *(a1 + 21) = *(&v35 + 5);
        }
      }

      goto LABEL_46;
    }

    if (v15 >= v13)
    {
      v39 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 5) = *(a1 + 21);
      *(a1 + 16) = v39;
      *(a1 + 21) = *(&v39 + 5);
      if (v15 >= *(a1 + 28))
      {
        goto LABEL_46;
      }

      v30 = *(a1 + 16);
      *(a1 + 16) = *(a1 + 32);
      *(a1 + 21) = *(a1 + 37);
    }

    else
    {
      v30 = *a1;
      *a1 = *(a1 + 32);
      *(a1 + 5) = *(a1 + 37);
    }

    *(a1 + 32) = v30;
    *(a1 + 37) = *(&v30 + 5);
LABEL_46:
    if (*(a2 - 4) >= *(a1 + 44))
    {
      return 1;
    }

    v25 = (a2 - 16);
    v40 = *(a1 + 32);
    v26 = *(a2 - 11);
    *(a1 + 32) = *(a2 - 16);
    *(a1 + 37) = v26;
    *(v25 + 5) = *(&v40 + 5);
    *v25 = v40;
    if (*(a1 + 44) >= *(a1 + 28))
    {
      return 1;
    }

    v41 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 21) = *(a1 + 37);
    *(a1 + 32) = v41;
    *(a1 + 37) = *(&v41 + 5);
    goto LABEL_49;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 4) < *(a1 + 12))
    {
      v27 = *a1;
      v3 = *(a2 - 11);
      *a1 = *(a2 - 16);
      *(a1 + 5) = v3;
      *(a2 - 11) = *(&v27 + 5);
      *(a2 - 16) = v27;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 32;
  v10 = *(a1 + 28);
  v11 = *(a1 + 12);
  v12 = *(a1 + 44);
  if (v10 >= v11)
  {
    if (v12 < v10)
    {
      v32 = *(a1 + 16);
      *(a1 + 16) = *v9;
      *(a1 + 21) = *(a1 + 37);
      *v9 = v32;
      *(a1 + 37) = *(&v32 + 5);
      if (*(a1 + 28) < v11)
      {
        v33 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 5) = *(a1 + 21);
        *(a1 + 16) = v33;
        *(a1 + 21) = *(&v33 + 5);
      }
    }
  }

  else
  {
    if (v12 >= v10)
    {
      v37 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 5) = *(a1 + 21);
      *(a1 + 16) = v37;
      *(a1 + 21) = *(&v37 + 5);
      if (v12 >= *(a1 + 28))
      {
        goto LABEL_33;
      }

      v29 = *(a1 + 16);
      *(a1 + 16) = *v9;
      *(a1 + 21) = *(a1 + 37);
    }

    else
    {
      v29 = *a1;
      *a1 = *v9;
      *(a1 + 5) = *(a1 + 37);
    }

    *v9 = v29;
    *(a1 + 37) = *(&v29 + 5);
  }

LABEL_33:
  v18 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    v22 = *(v18 + 12);
    if (v22 < *(v9 + 12))
    {
      v38 = *v18;
      v43 = *(v18 + 8);
      v23 = v19;
      do
      {
        v24 = a1 + v23;
        *(v24 + 48) = *(a1 + v23 + 32);
        *(v24 + 53) = *(a1 + v23 + 37);
        if (v23 == -32)
        {
          v21 = a1;
          goto LABEL_36;
        }

        v23 -= 16;
      }

      while (v22 < *(v24 + 28));
      v21 = a1 + v23 + 48;
LABEL_36:
      *v21 = v38;
      *(v21 + 8) = v43;
      *(v21 + 12) = v22;
      if (++v20 == 8)
      {
        return v18 + 16 == a2;
      }
    }

    v9 = v18;
    v19 += 16;
    v18 += 16;
    if (v18 == a2)
    {
      return 1;
    }
  }
}

int *sub_E71050(unint64_t a1, int *a2, unint64_t *a3)
{
  v3 = HIDWORD(a1);
  a3[1] = *a3;
  v4 = a1;
  if (a1)
  {
    result = sub_351010(a2, a1, a3);
    if (*a3 != a3[1])
    {
      return result;
    }

    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v18);
    v8 = sub_4A5C(&v18, "Roads of pathlet ", 17);
    v9 = sub_58200(v8, v4);
    sub_4A5C(v9, ".", 1);
    v10 = std::ostream::operator<<();
    v11 = sub_4A5C(v10, " ", 1);
    v12 = sub_7052C(v11, (v3 & 0x40000000) == 0);
    sub_4A5C(v12, " is_fallback=", 13);
    std::ostream::operator<<();
    sub_4A5C(v8, " could not be used to decode path.", 34);
    if ((v28 & 0x10) != 0)
    {
      v15 = v27;
      if (v27 < v24)
      {
        v27 = v24;
        v15 = v24;
      }

      v14 = v23;
      v7 = v15 - v23;
      if (v15 - v23 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if ((v28 & 8) == 0)
      {
        v7 = 0;
        v17 = 0;
        goto LABEL_30;
      }

      v14 = v21;
      v7 = v22 - v21;
      if ((v22 - v21) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_36:
        sub_3244();
      }
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v17 = v7;
    if (!v7)
    {
      goto LABEL_30;
    }

LABEL_29:
    memmove(&__p, v14, v7);
    goto LABEL_30;
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v18);
  sub_4A5C(&v18, "Could not decode pathlet geo ids onto the network.", 50);
  if ((v28 & 0x10) != 0)
  {
    v13 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v13 = v24;
    }

    v14 = v23;
    v7 = v13 - v23;
    if (v13 - v23 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_27:
      sub_3244();
    }

LABEL_15:
    if (v7 >= 0x17)
    {
      operator new();
    }

    v17 = v7;
    if (!v7)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if ((v28 & 8) != 0)
  {
    v14 = v21;
    v7 = v22 - v21;
    if ((v22 - v21) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  v7 = 0;
  v17 = 0;
LABEL_30:
  *(&__p + v7) = 0;
  sub_7E854(&__p, 1u);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_E71470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_E714E8(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v9 = a3;
  v12 = *a1;
  if (a3 < 0)
  {
    a3 = -a3;
  }

  v13 = sub_2D54A0(v12, 22, a3);
  if (!HIDWORD(v13) || v14 != 0)
  {
    return;
  }

  __p = 0;
  v71 = 0;
  v72 = 0;
  *(&v17 + 1) = v13 & 0x3FFFFFFF | ((v9 > 0) << 30);
  *&v17 = v13;
  v16 = v17 >> 32;
  sub_E71050(v16, a1, &__p);
  v18 = __p;
  if (__p == v71)
  {
    *(a4 + 8) = *a4;
    if (v18)
    {
      goto LABEL_94;
    }

    return;
  }

  v75 = v16;
  sub_363ADC((a1 + 974), &v75, v73);
  if (v73[0])
  {
    v19 = *(v74 + 8);
  }

  else
  {
    v19 = sub_363C44(a1, v75);
  }

  v20 = v19 * a5;
  if (v20 >= 0.0)
  {
    if (v20 >= 4.50359963e15)
    {
      goto LABEL_21;
    }

    v21 = (v20 + v20) + 1;
  }

  else
  {
    if (v20 <= -4.50359963e15)
    {
      goto LABEL_21;
    }

    v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_21:
  v75 = v16;
  sub_363ADC((a1 + 974), &v75, v73);
  if (v73[0])
  {
    v22 = *(v74 + 8);
  }

  else
  {
    v22 = sub_363C44(a1, v75);
  }

  v23 = v22 * a6;
  if (v23 >= 0.0)
  {
    if (v23 < 4.50359963e15)
    {
      v24 = (v23 + v23) + 1;
      goto LABEL_29;
    }
  }

  else if (v23 > -4.50359963e15)
  {
    v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_29:
    v23 = (v24 >> 1);
  }

  v25 = v20;
  v27 = __p;
  v26 = v71;
  if (__p == v71)
  {
    v29 = 0;
    goto LABEL_74;
  }

  v28 = 0;
  v29 = 0;
  v67 = v71;
  v68 = v23;
  while (1)
  {
    while (1)
    {
      v30 = *v27;
      v31 = sub_2B51D8(a2, *v27 & 0xFFFFFFFFFFFFLL);
      v32 = (v31 - *v31);
      if (*v32 >= 9u)
      {
        break;
      }

      v33 = 0;
      v34 = v28;
      if (v28 > v25)
      {
        goto LABEL_39;
      }

LABEL_32:
      v29 += v33;
      ++v27;
      v28 = v34;
      if (v27 == v26)
      {
        goto LABEL_74;
      }
    }

    v33 = v32[4];
    if (v33)
    {
      v33 = *(v31 + v33);
    }

    v34 = v33 + v28;
    if (v33 + v28 <= v25)
    {
      goto LABEL_32;
    }

LABEL_39:
    v69 = v29;
    v35 = a2;
    v36 = sub_2B51D8(a2, v30 & 0xFFFFFFFFFFFFLL);
    v37 = (v36 - *v36);
    if (*v37 < 0x1Du)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37[14];
      if (v38)
      {
        v38 = *(v36 + v38);
      }
    }

    v39 = (v30 & 0xFF000000000000) == 0x1000000000000 ? -v38 : v38;
    v41 = *(a4 + 8);
    v40 = *(a4 + 16);
    if (v41 >= v40)
    {
      v43 = *a4;
      v44 = v41 - *a4;
      v45 = (v44 >> 3) + 1;
      if (v45 >> 61)
      {
        sub_1794();
      }

      v46 = v40 - v43;
      if (v46 >> 2 > v45)
      {
        v45 = v46 >> 2;
      }

      if (v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        v47 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        if (!(v47 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v48 = (8 * (v44 >> 3));
      *v48 = v39;
      v42 = v48 + 1;
      memcpy(0, v43, v44);
      *a4 = 0;
      *(a4 + 8) = v42;
      *(a4 + 16) = 0;
      if (v43)
      {
        operator delete(v43);
      }

      a2 = v35;
      v25 = v20;
    }

    else
    {
      *v41 = v39;
      v42 = v41 + 1;
    }

    *(a4 + 8) = v42;
    if (v34 >= v68)
    {
      break;
    }

    v29 = v69;
    v26 = v67;
    ++v27;
    v28 = v34;
    if (v27 == v67)
    {
      goto LABEL_74;
    }
  }

  v49 = sub_2B51D8(a2, v30 & 0xFFFFFFFFFFFFLL);
  v29 = v69;
  v50 = (v49 - *v49);
  v51 = 0.0;
  if (*v50 >= 9u)
  {
    v52 = v50[4];
    if (v52)
    {
      LODWORD(v51) = *(v49 + v52);
      v51 = *&v51;
    }
  }

  v53 = (v68 - v28) / v51 * 1000000000.0;
  if (v53 >= 0.0)
  {
    if (v53 < 4.50359963e15)
    {
      v54 = (v53 + v53) + 1;
LABEL_72:
      v53 = (v54 >> 1);
    }
  }

  else if (v53 > -4.50359963e15)
  {
    v54 = (v53 + v53) - 1 + (((v53 + v53) - 1) >> 63);
    goto LABEL_72;
  }

  *(a4 + 28) = v53;
LABEL_74:
  v55 = **a4;
  if (v55 >= 0)
  {
    v56 = **a4;
  }

  else
  {
    v56 = -v55;
  }

  v57 = sub_335D84(a2, v56);
  v58 = v57;
  if (v57)
  {
    v59 = v57 > 0xFFFFFFFEFFFFFFFFLL;
  }

  else
  {
    v59 = 1;
  }

  v60 = v57 & 0xFFFF00000000;
  if (v59)
  {
    v60 = 0;
  }

  if (v57 > 0xFFFFFFFEFFFFFFFFLL)
  {
    v58 = 0;
  }

  v61 = sub_2B51D8(a2, v60 | v58);
  v62 = (v61 - *v61);
  v63 = 0.0;
  if (*v62 >= 9u)
  {
    v64 = v62[4];
    if (v64)
    {
      LODWORD(v63) = *(v61 + v64);
      v63 = *&v63;
    }
  }

  v65 = (v25 - v29) / v63 * 1000000000.0;
  if (v65 >= 0.0)
  {
    if (v65 < 4.50359963e15)
    {
      v66 = (v65 + v65) + 1;
LABEL_92:
      v65 = (v66 >> 1);
    }
  }

  else if (v65 > -4.50359963e15)
  {
    v66 = (v65 + v65) - 1 + (((v65 + v65) - 1) >> 63);
    goto LABEL_92;
  }

  *(a4 + 24) = v65;
  v18 = __p;
  if (__p)
  {
LABEL_94:
    v71 = v18;
    operator delete(v18);
  }
}

void sub_E71A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_E71AAC(uint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = *a1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  v6 = sub_2D54A0(v4, 22, v5);
  if (HIDWORD(v6))
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    return ((v6 & 0x3FFFFFFF | ((a2 > 0) << 30)) << 32) | HIDWORD(v6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_E71B40(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  sub_363ADC(a1 + 3896, &v5, v4);
  if (v4[0])
  {
    return v4[3][1];
  }

  else
  {
    return sub_363C44(a1, v5);
  }
}

uint64_t sub_E71BA8(uint64_t a1, unint64_t a2)
{
  v2 = sub_2B51D8(a1, a2);
  v3 = (v2 - *v2);
  if (*v3 >= 9u && (v4 = v3[4]) != 0)
  {
    return *(v2 + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_E71BEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v4 = (v3 - *v3);
  if (*v4 < 0x1Du)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[14];
    if (v5)
    {
      v5 = *(v3 + v5);
    }
  }

  if ((a2 & 0xFF000000000000) == 0x1000000000000)
  {
    return -v5;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_E71C4C(double a1)
{
  v1 = a1 * 1000000000.0;
  if (v1 >= 0.0)
  {
    if (v1 < 4.50359963e15)
    {
      v2 = (v1 + v1) + 1;
      return (v2 >> 1);
    }
  }

  else if (v1 > -4.50359963e15)
  {
    v2 = (v1 + v1) - 1 + (((v1 + v1) - 1) >> 63);
    return (v2 >> 1);
  }

  return v1;
}

uint64_t sub_E71CB4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    a2 = -a2;
  }

  v3 = sub_335D84(a1, a2);
  v4 = v3 > 0xFFFFFFFEFFFFFFFFLL;
  if (!v3)
  {
    v4 = 1;
  }

  if (v3 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2 < 1 || v4;
  v7 = 0x1000000000000;
  if (!v6)
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 & 0xFFFF00000000;
  }

  return v8 | v5 | v7;
}

void sub_E71D24(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1950CD0(a1 + 16, dword_278D168, qword_278D170);
  v7 = sub_1950CD0(a1 + 16, dword_278D168, qword_278D170);
  v8 = *(sub_1950CD0(a1 + 16, dword_278D168, qword_278D170) + 64);
  v9 = *(sub_1950CD0(a1 + 16, dword_278D168, qword_278D170) + 72);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0x3B9ACA0000000000;
  if (v8 < 1.0 && v8 >= 0.0 && v9 > 0.0 && v9 <= 1.0)
  {
    v11 = *(v6 + 24);
    if (v11)
    {
      if ((v11 & 0x80000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (*(v7 + 40))
    {
      v12 = sub_3B1AF0(a2);
      v13 = sub_3AF6B4(a2);
      if (*(v7 + 40) == 1)
      {
        sub_E714E8(v12, v13, **(v7 + 48), a3, v8, v9);
        return;
      }

      v14 = 0;
      v84 = 0uLL;
      v85 = 0;
      v15 = **(v7 + 48);
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_109;
      }

      if (v15 >= 0)
      {
        v16 = **(v7 + 48);
      }

      else
      {
        v16 = -v15;
      }

      v17 = sub_2D54A0(*v12, 22, v16);
      if (HIDWORD(v17))
      {
        v19 = v18 == 0;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
LABEL_108:
        v14 = v84;
LABEL_109:
        if (v14)
        {
          *(&v84 + 1) = v14;
          operator delete(v14);
        }

        return;
      }

      *(&v21 + 1) = v17 & 0x3FFFFFFF | ((v15 > 0) << 30);
      *&v21 = v17;
      v20 = v21 >> 32;
      __p[0] = v20;
      sub_363ADC((v12 + 974), __p, v83);
      if (v83[0])
      {
        v22 = v83[3][1];
      }

      else
      {
        v22 = sub_363C44(v12, __p[0]);
      }

      v23 = v8 * v22;
      if (v23 >= 0.0)
      {
        if (v23 >= 4.50359963e15)
        {
          goto LABEL_33;
        }

        v24 = (v23 + v23) + 1;
      }

      else
      {
        if (v23 <= -4.50359963e15)
        {
          goto LABEL_33;
        }

        v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
      }

      v23 = (v24 >> 1);
LABEL_33:
      sub_E71050(v20, v12, &v84);
      if (v84 != *(&v84 + 1))
      {
        v25 = sub_E71B40(v12, v20);
        v26 = v23;
        v80 = *(&v84 + 1);
        v27 = v84;
        if (v25 != v23 || v8 == 0.0)
        {
          v78 = v12;
          if (v84 == *(&v84 + 1))
          {
            v30 = 0;
          }

          else
          {
            v29 = 0;
            v30 = 0;
            do
            {
              while (1)
              {
                v31 = *v27;
                v32 = sub_2B51D8(v13, *v27 & 0xFFFFFFFFFFFFLL);
                v33 = (v32 - *v32);
                if (*v33 < 9u)
                {
                  v34 = 0;
                }

                else
                {
                  v34 = v33[4];
                  if (v34)
                  {
                    v34 = *(v32 + v34);
                  }
                }

                v29 += v34;
                if (v29 > v26)
                {
                  break;
                }

                v30 += v34;
                if (++v27 == v80)
                {
                  goto LABEL_73;
                }
              }

              v79 = v29;
              v35 = v30;
              v36 = sub_2B51D8(v13, v31 & 0xFFFFFFFFFFFFLL);
              v37 = (v36 - *v36);
              if (*v37 < 0x1Du)
              {
                v38 = 0;
              }

              else
              {
                v38 = v37[14];
                if (v38)
                {
                  v38 = *(v36 + v38);
                }
              }

              if ((v31 & 0xFF000000000000) == 0x1000000000000)
              {
                v39 = -v38;
              }

              else
              {
                v39 = v38;
              }

              v41 = *(a3 + 8);
              v40 = *(a3 + 16);
              if (v41 >= v40)
              {
                v43 = *a3;
                v44 = v41 - *a3;
                v45 = v44 >> 3;
                v46 = (v44 >> 3) + 1;
                if (v46 >> 61)
                {
                  sub_1794();
                }

                v47 = v40 - v43;
                if (v47 >> 2 > v46)
                {
                  v46 = v47 >> 2;
                }

                if (v47 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v48 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v48 = v46;
                }

                if (v48)
                {
                  if (!(v48 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                *(8 * v45) = v39;
                v42 = 8 * v45 + 8;
                memcpy(0, v43, v44);
                *a3 = 0;
                *(a3 + 8) = v42;
                *(a3 + 16) = 0;
                if (v43)
                {
                  operator delete(v43);
                }
              }

              else
              {
                *v41 = v39;
                v42 = (v41 + 1);
              }

              v30 = v35;
              v29 = v79;
              *(a3 + 8) = v42;
              ++v27;
            }

            while (v27 != v80);
          }

LABEL_73:
          v49 = sub_E71CB4(v13, **a3);
          v50 = v78;
          v51 = sub_E71BA8(v13, v49 & 0xFFFFFFFFFFFFLL);
          *(a3 + 24) = sub_E71C4C((v26 - v30) / v51);
          v52 = *(v7 + 40);
          if (v52 <= 2)
          {
            v53 = 2;
          }

          else
          {
            v53 = *(v7 + 40);
          }

          v54 = (v53 - 1);
          if (v53 != 2)
          {
            v62 = 1;
            while (1)
            {
              v63 = *(v7 + 48);
              v64 = *(v63 + 8 * v62);
              if (v64 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_107;
              }

              v65 = v64 >= 0 ? *(v63 + 8 * v62) : -v64;
              v66 = sub_2D54A0(*v50, 22, v65);
              if (!HIDWORD(v66) || v67 != 0)
              {
                goto LABEL_107;
              }

              *(&v69 + 1) = v66 & 0x3FFFFFFF | ((v64 > 0) << 30);
              *&v69 = v66;
              sub_E71050(v69 >> 32, v50, &v84);
              v70 = *(&v84 + 1);
              v71 = v84;
              if (v84 == *(&v84 + 1))
              {
                goto LABEL_107;
              }

              v83[0] = a3;
              do
              {
                v72 = *v71;
                v73 = sub_2B51D8(v13, *v71 & 0xFFFFFFFFFFFFLL);
                v74 = (v73 - *v73);
                if (*v74 < 0x1Du)
                {
                  v75 = 0;
                }

                else
                {
                  v75 = v74[14];
                  if (v75)
                  {
                    v75 = *(v73 + v75);
                  }
                }

                if ((v72 & 0xFF000000000000) == 0x1000000000000)
                {
                  v75 = -v75;
                }

                __p[0] = v75;
                sub_A2324(v83, __p);
                ++v71;
              }

              while (v71 != v70);
              ++v62;
              v50 = v78;
              if (v62 == v54)
              {
                v52 = *(v7 + 40);
                break;
              }
            }
          }

          v55 = sub_E71AAC(v50, *(*(v7 + 48) + 8 * v52 - 8));
          if (!v55)
          {
            goto LABEL_107;
          }

          v83[0] = sub_E71B40(v50, v55);
          v56 = sub_315004(v83, v9);
          sub_E71050(v55, v50, &v84);
          v58 = *(&v84 + 1);
          v57 = v84;
          if (v84 == *(&v84 + 1))
          {
            goto LABEL_107;
          }

          if (v56)
          {
            v59 = 0;
            while (1)
            {
              v60 = *v57;
              v61 = sub_E71BA8(v13, *v57 & 0xFFFFFFFFFFFFLL);
              v83[0] = sub_E71BEC(v13, v60);
              sub_7125C0(a3, v83);
              if (v61 + v59 >= v56)
              {
                break;
              }

              ++v57;
              v59 += v61;
              if (v57 == v58)
              {
                goto LABEL_108;
              }
            }

            v77 = sub_E71BA8(v13, v60 & 0xFFFFFFFFFFFFLL);
            *(a3 + 28) = sub_E71C4C((v56 - v59) / v77);
            goto LABEL_108;
          }

          if (!sub_7E7E4(1u))
          {
            goto LABEL_107;
          }

          sub_19594F8(v83);
          sub_4A5C(v83, "Destination fraction of ", 24);
          v76 = std::ostream::operator<<();
          sub_4A5C(v76, " would have required sub-centimeter resolution.", 47);
          sub_1959680(v83, __p);
          sub_7E854(__p, 1u);
          goto LABEL_39;
        }

        if (v84 != *(&v84 + 1) && sub_7E7E4(1u))
        {
          sub_19594F8(v83);
          sub_4A5C(v83, "Origin fraction of ", 19);
          v28 = std::ostream::operator<<();
          sub_4A5C(v28, " would have required sub-centimeter resolution.", 47);
          sub_1959680(v83, __p);
          sub_7E854(__p, 1u);
LABEL_39:
          if (v82 < 0)
          {
            operator delete(__p[0]);
          }

          sub_1959728(v83);
        }
      }

LABEL_107:
      *(a3 + 8) = *a3;
      goto LABEL_108;
    }
  }
}

void sub_E72674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a19);
  v22 = *(v20 - 144);
  if (v22)
  {
    *(v20 - 136) = v22;
    operator delete(v22);
    v23 = *v19;
    if (!*v19)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v23 = *v19;
    if (!*v19)
    {
      goto LABEL_5;
    }
  }

  *(v19 + 8) = v23;
  operator delete(v23);
  _Unwind_Resume(a1);
}

void sub_E72784(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E728B8(a1, a2);
  sub_E72BA4(a1, a2, v12);
  v7 = sub_E72EB8(a1, a2);
  sub_E7303C(a1, __p);
  v8 = *(a1 + 360);
  if (!v8)
  {
    v8 = &off_2776700;
  }

  v9 = v8[16];
  v10 = v8[25];
  if (!v10)
  {
    v10 = &off_277EBA8;
  }

  sub_E89D34(a3, v6, v12, v7, __p, (v9 & 0xFFFFFFFFFFFFFFFELL), *(v10 + 40));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_E7285C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_E728B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 360))
  {
    v3 = *(a1 + 360);
  }

  else
  {
    v3 = &off_2776700;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v4 = v3[6];
  if (v4)
  {
    v5 = (v4 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 10);
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = 0;
  v8 = 8 * v6;
  do
  {
    v10 = *v5;
    if (v7 < v23)
    {
      if (*(v10 + 23) < 0)
      {
        sub_325C(v7, *v10, *(v10 + 8));
      }

      else
      {
        v9 = *v10;
        *(v7 + 16) = *(v10 + 16);
        *v7 = v9;
      }

      v7 += 24;
    }

    else
    {
      v7 = sub_1CEE8(&__p, v10);
    }

    v22 = v7;
    ++v5;
    v8 -= 8;
  }

  while (v8);
  if (!*(v3 + 10))
  {
LABEL_23:
    v14 = 0;
    v15 = __p;
    if (!__p)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v11 = sub_6E9A8();
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v12 = sub_12330DC(0x14u);
  v27[0] = __p;
  v27[1] = v22;
  v28 = 0;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v22 - __p) >> 3);
  v24[0] = qword_27BAC10[0];
  v24[1] = unk_27BAC18;
  v25 = 2;
  v26 = (unk_27BAC18 - qword_27BAC10[0]) >> 3;
  v13 = (*(*v11 + 40))(v11, v27, v24);
  if ((v13 & 0x80000000) == 0 && v13 < ((unk_27BAC18 - qword_27BAC10[0]) >> 3))
  {
    v12 = *(8 * (v13 & 0x7FFFFFFF) + qword_27BAC10[0]);
  }

  v20 = v12;
  v14 = sub_1232E98(&v20);
  v15 = __p;
  if (__p)
  {
LABEL_24:
    v16 = v22;
    v17 = v15;
    if (v22 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v22 = v15;
    operator delete(v17);
  }

LABEL_31:
  if (!v14)
  {
    if (*(a2 + 72) != 1)
    {
      return 11;
    }

    v14 = sub_E7DEE0(a2);
    if (!v14)
    {
      return 11;
    }
  }

  return v14;
}

void sub_E72B1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_27B9BC8);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E72B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E72B50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E72B64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E72B78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E72B90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E72BA4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 360);
  if (!v4)
  {
    v4 = &off_2776700;
  }

  v5 = v4[6];
  if (v5)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 10);
  if (!v7)
  {
    if (*(a2 + 72) == 1)
    {
LABEL_34:
      v14 = sub_E7DEE0(a2);
      if (v14)
      {
        sub_123316C(v14);
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        operator new();
      }
    }

LABEL_36:
    sub_123316C(0xBu);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  v15 = a2;
  v8 = 8 * v7;
  while (1)
  {
    v9 = *(*v6 + 23);
    if (v9 >= 0)
    {
      v10 = *v6;
    }

    else
    {
      v10 = **v6;
    }

    if (v9 >= 0)
    {
      v11 = *(*v6 + 23);
    }

    else
    {
      v11 = (*v6)[1];
    }

    if (v11 >= 0x1F)
    {
      v12 = 31;
    }

    else
    {
      v12 = v11;
    }

    if (v11)
    {
      switch(v11)
      {
        case 1uLL:
          *&v17 = *v10;
          v13 = 1;
          break;
        case 2uLL:
          *&v17 = *v10;
          v13 = 2;
          break;
        case 3uLL:
          *&v17 = *v10 | (v10[2] << 16);
          v13 = 3;
          break;
        default:
          sub_852E4(v10, v12, &v17);
          goto LABEL_27;
      }

      *(&v17 + 1) = v13;
      v18 = 0u;
      v19 = 0u;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }

LABEL_27:
    v16 = sub_1232F28(&v17, 0);
    if (sub_1232E98(&v16))
    {
      operator new();
    }

    ++v6;
    v8 -= 8;
    if (!v8)
    {
      a2 = v15;
      if (*(v15 + 72) == 1)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }
}

void sub_E72E84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E72EB8(uint64_t a1, uint64_t a2)
{
  v4 = &off_2772E28;
  if (*(a1 + 336))
  {
    v4 = *(a1 + 336);
  }

  v5 = v4[9] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    sub_325C(v15, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v16 = *(v5 + 16);
    *v15 = v6;
  }

  sub_5275EC(&__p, v15, 1uLL);
  v7 = sub_E7DD9C(&__p);
  v8 = __p;
  if (__p)
  {
    v9 = v14;
    v10 = __p;
    if (v14 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v14 = v8;
    operator delete(v10);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
    if (v7)
    {
      return v7;
    }

    return sub_E728B8(a1, a2);
  }

  if (!v7)
  {
    return sub_E728B8(a1, a2);
  }

  return v7;
}

void sub_E73010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E7303C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 360);
  if (!v3)
  {
    v3 = &off_2776700;
  }

  v4 = v3[25];
  v5 = &off_277EBA8;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 6);
  if (!v6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  v7 = v5[4];
  v8 = 4 * v6;
  do
  {
    v9 = *v7;
    if (*v7 == 2)
    {
      operator new();
    }

    if (v9 == 1)
    {
      operator new();
    }

    if (!v9)
    {
      operator new();
    }

    v7 = (v7 + 4);
    v8 -= 4;
  }

  while (v8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_E73328(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_E73354(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E73488(a1, a2);
  sub_E73774(a1, a2, v12);
  v7 = sub_E73A88(a1, a2);
  sub_E73C0C(a1, __p);
  v8 = *(a1 + 320);
  if (!v8)
  {
    v8 = &off_2776700;
  }

  v9 = v8[16];
  v10 = v8[25];
  if (!v10)
  {
    v10 = &off_277EBA8;
  }

  sub_E89D34(a3, v6, v12, v7, __p, (v9 & 0xFFFFFFFFFFFFFFFELL), *(v10 + 40));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_E7342C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_E73488(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 320))
  {
    v3 = *(a1 + 320);
  }

  else
  {
    v3 = &off_2776700;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v4 = v3[6];
  if (v4)
  {
    v5 = (v4 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 10);
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = 0;
  v8 = 8 * v6;
  do
  {
    v10 = *v5;
    if (v7 < v23)
    {
      if (*(v10 + 23) < 0)
      {
        sub_325C(v7, *v10, *(v10 + 8));
      }

      else
      {
        v9 = *v10;
        *(v7 + 16) = *(v10 + 16);
        *v7 = v9;
      }

      v7 += 24;
    }

    else
    {
      v7 = sub_1CEE8(&__p, v10);
    }

    v22 = v7;
    ++v5;
    v8 -= 8;
  }

  while (v8);
  if (!*(v3 + 10))
  {
LABEL_23:
    v14 = 0;
    v15 = __p;
    if (!__p)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v11 = sub_6E9A8();
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v12 = sub_12330DC(0x14u);
  v27[0] = __p;
  v27[1] = v22;
  v28 = 0;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v22 - __p) >> 3);
  v24[0] = qword_27BAC10[0];
  v24[1] = unk_27BAC18;
  v25 = 2;
  v26 = (unk_27BAC18 - qword_27BAC10[0]) >> 3;
  v13 = (*(*v11 + 40))(v11, v27, v24);
  if ((v13 & 0x80000000) == 0 && v13 < ((unk_27BAC18 - qword_27BAC10[0]) >> 3))
  {
    v12 = *(8 * (v13 & 0x7FFFFFFF) + qword_27BAC10[0]);
  }

  v20 = v12;
  v14 = sub_1232E98(&v20);
  v15 = __p;
  if (__p)
  {
LABEL_24:
    v16 = v22;
    v17 = v15;
    if (v22 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v22 = v15;
    operator delete(v17);
  }

LABEL_31:
  if (!v14)
  {
    if (*(a2 + 72) != 1)
    {
      return 11;
    }

    v14 = sub_E7DEE0(a2);
    if (!v14)
    {
      return 11;
    }
  }

  return v14;
}

void sub_E736EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_27B9BC8);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7370C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E73720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E73734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E73748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E73760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E73774(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 320);
  if (!v4)
  {
    v4 = &off_2776700;
  }

  v5 = v4[6];
  if (v5)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 10);
  if (!v7)
  {
    if (*(a2 + 72) == 1)
    {
LABEL_34:
      v14 = sub_E7DEE0(a2);
      if (v14)
      {
        sub_123316C(v14);
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        operator new();
      }
    }

LABEL_36:
    sub_123316C(0xBu);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  v15 = a2;
  v8 = 8 * v7;
  while (1)
  {
    v9 = *(*v6 + 23);
    if (v9 >= 0)
    {
      v10 = *v6;
    }

    else
    {
      v10 = **v6;
    }

    if (v9 >= 0)
    {
      v11 = *(*v6 + 23);
    }

    else
    {
      v11 = (*v6)[1];
    }

    if (v11 >= 0x1F)
    {
      v12 = 31;
    }

    else
    {
      v12 = v11;
    }

    if (v11)
    {
      switch(v11)
      {
        case 1uLL:
          *&v17 = *v10;
          v13 = 1;
          break;
        case 2uLL:
          *&v17 = *v10;
          v13 = 2;
          break;
        case 3uLL:
          *&v17 = *v10 | (v10[2] << 16);
          v13 = 3;
          break;
        default:
          sub_852E4(v10, v12, &v17);
          goto LABEL_27;
      }

      *(&v17 + 1) = v13;
      v18 = 0u;
      v19 = 0u;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }

LABEL_27:
    v16 = sub_1232F28(&v17, 0);
    if (sub_1232E98(&v16))
    {
      operator new();
    }

    ++v6;
    v8 -= 8;
    if (!v8)
    {
      a2 = v15;
      if (*(v15 + 72) == 1)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }
}

void sub_E73A54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E73A88(uint64_t a1, uint64_t a2)
{
  v4 = &off_2772E28;
  if (*(a1 + 312))
  {
    v4 = *(a1 + 312);
  }

  v5 = v4[9] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    sub_325C(v15, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v16 = *(v5 + 16);
    *v15 = v6;
  }

  sub_5275EC(&__p, v15, 1uLL);
  v7 = sub_E7DD9C(&__p);
  v8 = __p;
  if (__p)
  {
    v9 = v14;
    v10 = __p;
    if (v14 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v14 = v8;
    operator delete(v10);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
    if (v7)
    {
      return v7;
    }

    return sub_E73488(a1, a2);
  }

  if (!v7)
  {
    return sub_E73488(a1, a2);
  }

  return v7;
}

void sub_E73BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E73C0C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 320);
  if (!v3)
  {
    v3 = &off_2776700;
  }

  v4 = v3[25];
  v5 = &off_277EBA8;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 6);
  if (!v6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  v7 = v5[4];
  v8 = 4 * v6;
  do
  {
    v9 = *v7;
    if (*v7 == 2)
    {
      operator new();
    }

    if (v9 == 1)
    {
      operator new();
    }

    if (!v9)
    {
      operator new();
    }

    v7 = (v7 + 4);
    v8 -= 4;
  }

  while (v8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_E73EF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_E73F24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E74058(a1, a2);
  sub_E74344(a1, a2, v12);
  v7 = sub_E74658(a1, a2);
  sub_E747DC(a1, __p);
  v8 = *(a1 + 136);
  if (!v8)
  {
    v8 = &off_2776700;
  }

  v9 = v8[16];
  v10 = v8[25];
  if (!v10)
  {
    v10 = &off_277EBA8;
  }

  sub_E89D34(a3, v6, v12, v7, __p, (v9 & 0xFFFFFFFFFFFFFFFELL), *(v10 + 40));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_E73FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_E74058(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136))
  {
    v3 = *(a1 + 136);
  }

  else
  {
    v3 = &off_2776700;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v4 = v3[6];
  if (v4)
  {
    v5 = (v4 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 10);
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = 0;
  v8 = 8 * v6;
  do
  {
    v10 = *v5;
    if (v7 < v23)
    {
      if (*(v10 + 23) < 0)
      {
        sub_325C(v7, *v10, *(v10 + 8));
      }

      else
      {
        v9 = *v10;
        *(v7 + 16) = *(v10 + 16);
        *v7 = v9;
      }

      v7 += 24;
    }

    else
    {
      v7 = sub_1CEE8(&__p, v10);
    }

    v22 = v7;
    ++v5;
    v8 -= 8;
  }

  while (v8);
  if (!*(v3 + 10))
  {
LABEL_23:
    v14 = 0;
    v15 = __p;
    if (!__p)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v11 = sub_6E9A8();
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v12 = sub_12330DC(0x14u);
  v27[0] = __p;
  v27[1] = v22;
  v28 = 0;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v22 - __p) >> 3);
  v24[0] = qword_27BAC10[0];
  v24[1] = unk_27BAC18;
  v25 = 2;
  v26 = (unk_27BAC18 - qword_27BAC10[0]) >> 3;
  v13 = (*(*v11 + 40))(v11, v27, v24);
  if ((v13 & 0x80000000) == 0 && v13 < ((unk_27BAC18 - qword_27BAC10[0]) >> 3))
  {
    v12 = *(8 * (v13 & 0x7FFFFFFF) + qword_27BAC10[0]);
  }

  v20 = v12;
  v14 = sub_1232E98(&v20);
  v15 = __p;
  if (__p)
  {
LABEL_24:
    v16 = v22;
    v17 = v15;
    if (v22 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v22 = v15;
    operator delete(v17);
  }

LABEL_31:
  if (!v14)
  {
    if (*(a2 + 72) != 1)
    {
      return 11;
    }

    v14 = sub_E7DEE0(a2);
    if (!v14)
    {
      return 11;
    }
  }

  return v14;
}

void sub_E742BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_27B9BC8);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E742DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E742F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E74304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E74318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E74330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E74344(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 136);
  if (!v4)
  {
    v4 = &off_2776700;
  }

  v5 = v4[6];
  if (v5)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 10);
  if (!v7)
  {
    if (*(a2 + 72) == 1)
    {
LABEL_34:
      v14 = sub_E7DEE0(a2);
      if (v14)
      {
        sub_123316C(v14);
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        operator new();
      }
    }

LABEL_36:
    sub_123316C(0xBu);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  v15 = a2;
  v8 = 8 * v7;
  while (1)
  {
    v9 = *(*v6 + 23);
    if (v9 >= 0)
    {
      v10 = *v6;
    }

    else
    {
      v10 = **v6;
    }

    if (v9 >= 0)
    {
      v11 = *(*v6 + 23);
    }

    else
    {
      v11 = (*v6)[1];
    }

    if (v11 >= 0x1F)
    {
      v12 = 31;
    }

    else
    {
      v12 = v11;
    }

    if (v11)
    {
      switch(v11)
      {
        case 1uLL:
          *&v17 = *v10;
          v13 = 1;
          break;
        case 2uLL:
          *&v17 = *v10;
          v13 = 2;
          break;
        case 3uLL:
          *&v17 = *v10 | (v10[2] << 16);
          v13 = 3;
          break;
        default:
          sub_852E4(v10, v12, &v17);
          goto LABEL_27;
      }

      *(&v17 + 1) = v13;
      v18 = 0u;
      v19 = 0u;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }

LABEL_27:
    v16 = sub_1232F28(&v17, 0);
    if (sub_1232E98(&v16))
    {
      operator new();
    }

    ++v6;
    v8 -= 8;
    if (!v8)
    {
      a2 = v15;
      if (*(v15 + 72) == 1)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }
}

void sub_E74624(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E74658(uint64_t a1, uint64_t a2)
{
  v4 = &off_2772E28;
  if (*(a1 + 152))
  {
    v4 = *(a1 + 152);
  }

  v5 = v4[9] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    sub_325C(v15, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v16 = *(v5 + 16);
    *v15 = v6;
  }

  sub_5275EC(&__p, v15, 1uLL);
  v7 = sub_E7DD9C(&__p);
  v8 = __p;
  if (__p)
  {
    v9 = v14;
    v10 = __p;
    if (v14 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v14 = v8;
    operator delete(v10);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
    if (v7)
    {
      return v7;
    }

    return sub_E74058(a1, a2);
  }

  if (!v7)
  {
    return sub_E74058(a1, a2);
  }

  return v7;
}

void sub_E747B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E747DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 136);
  if (!v3)
  {
    v3 = &off_2776700;
  }

  v4 = v3[25];
  v5 = &off_277EBA8;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 6);
  if (!v6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  v7 = v5[4];
  v8 = 4 * v6;
  do
  {
    v9 = *v7;
    if (*v7 == 2)
    {
      operator new();
    }

    if (v9 == 1)
    {
      operator new();
    }

    if (!v9)
    {
      operator new();
    }

    v7 = (v7 + 4);
    v8 -= 4;
  }

  while (v8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_E74AC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_E74AF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 41) & 1) != 0 && (*(*(a1 + 360) + 263))
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1065353216;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 1065353216;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 1065353216;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 1065353216;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 1065353216;
    *(a2 + 200) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 232) = 1065353216;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 256) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    v2 = *(a1 + 192);
    if (v2)
    {
      v3 = (v2 + 8);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 184);
    if (v4)
    {
      v127 = &v3[v4];
      do
      {
        while (1)
        {
          v5 = *v3;
          v129 = v3;
          if (*(*v3 + 23) < 0)
          {
            sub_325C(&v138, *v5, *(v5 + 1));
          }

          else
          {
            v6 = *v5;
            v138.__r_.__value_.__r.__words[2] = *(v5 + 2);
            *&v138.__r_.__value_.__l.__data_ = v6;
          }

          v7 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          v8 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
          size = v138.__r_.__value_.__l.__size_;
          v10 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v138 : v138.__r_.__value_.__r.__words[0];
          v11 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v138.__r_.__value_.__r.__words[2]) : v138.__r_.__value_.__l.__size_;
          v12 = byte_27BA60F >= 0 ? &qword_27BA5F8 : qword_27BA5F8;
          v13 = byte_27BA60F >= 0 ? byte_27BA60F : unk_27BA600;
          if (v13)
          {
            break;
          }

LABEL_48:
          v26 = v129;
LABEL_49:
          sub_148E0(&v138, 0, v13);
LABEL_50:
          sub_59E948(a2, &v138);
LABEL_269:
          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_270;
          }

LABEL_9:
          v3 = v26 + 1;
          if (v3 == v127)
          {
            return;
          }
        }

        v126 = v138.__r_.__value_.__r.__words[0];
        v14 = v10 + v11;
        if (v11 >= v13)
        {
          v20 = *v12;
          v21 = v11;
          v22 = v10;
          do
          {
            v23 = v21 - v13;
            if (v23 == -1)
            {
              break;
            }

            v24 = memchr(v22, v20, v23 + 1);
            if (!v24)
            {
              break;
            }

            v25 = v24;
            if (!memcmp(v24, v12, v13))
            {
              if (v25 == v14 || v25 - v10 == -1)
              {
                break;
              }

              if (v8 < 0)
              {
                v26 = v129;
                if (v13 != -1)
                {
                  goto LABEL_49;
                }

                v138.__r_.__value_.__l.__size_ = 0;
                *v126 = 0;
              }

              else
              {
                v26 = v129;
                if (v13 != -1)
                {
                  goto LABEL_49;
                }

                *(&v138.__r_.__value_.__s + 23) = 0;
                v138.__r_.__value_.__s.__data_[0] = 0;
              }

              goto LABEL_50;
            }

            v22 = (v25 + 1);
            v21 = v14 - (v25 + 1);
          }

          while (v21 >= v13);
        }

        if (v11 >= 20)
        {
          v15 = v11;
          v16 = v10;
          do
          {
            v17 = memchr(v16, 86, v15 - 19);
            if (!v17)
            {
              break;
            }

            if (*v17 == 0x52656C6261746F56 && *(v17 + 1) == 0x6469636E4964616FLL && *(v17 + 4) == 1601465957)
            {
              if (v17 != v14 && v17 - v10 != -1)
              {
                v13 = 20;
                goto LABEL_48;
              }

              break;
            }

            v16 = (v17 + 1);
            v15 = v14 - v16;
          }

          while (v14 - v16 >= 20);
          if (v11 >= 22)
          {
            v27 = v11;
            v28 = v10;
            do
            {
              v29 = memchr(v28, 73, v27 - 21);
              if (!v29)
              {
                break;
              }

              if (*v29 == 0x746E656469636E49 && *(v29 + 1) == 0x676E697375614373 && *(v29 + 14) == 0x5F79616C6544676ELL)
              {
                if (v29 != v14 && v29 - v10 != -1)
                {
                  sub_148E0(&v138, 0, 0x16uLL);
                  v26 = v129;
                  sub_59E950(a2, &v138);
                  goto LABEL_269;
                }

                break;
              }

              v28 = (v29 + 1);
              v27 = v14 - v28;
            }

            while (v14 - v28 >= 22);
          }
        }

        if (v11 >= 13)
        {
          v32 = v11;
          v33 = v10;
          do
          {
            v34 = memchr(v33, 65, v32 - 12);
            if (!v34)
            {
              break;
            }

            if (*v34 == 0x69636E4961657241 && *(v34 + 5) == 0x5F746E656469636ELL)
            {
              if (v34 != v14 && v34 - v10 != -1)
              {
                sub_148E0(&v138, 0, 0xDuLL);
                v26 = v129;
                sub_59E95C(a2, &v138);
                goto LABEL_269;
              }

              break;
            }

            v33 = (v34 + 1);
            v32 = v14 - v33;
          }

          while (v14 - v33 >= 13);
          if (v11 >= 15)
          {
            v36 = v10;
            do
            {
              v37 = memchr(v36, 67, v11 - 14);
              if (!v37)
              {
                break;
              }

              if (*v37 == 0x69747365676E6F43 && *(v37 + 7) == 0x5F656E6F5A6E6F69)
              {
                if (v37 != v14 && v37 - v10 != -1)
                {
                  sub_148E0(&v138, 0, 0xFuLL);
                  v26 = v129;
                  sub_59E968(a2, &v138);
                  goto LABEL_269;
                }

                break;
              }

              v36 = (v37 + 1);
              v11 = v14 - v36;
            }

            while (v14 - v36 >= 15);
          }
        }

        if (byte_27BA5AF < 0)
        {
          sub_325C(&v136, xmmword_27BA598, *(&xmmword_27BA598 + 1));
          v7 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          size = v138.__r_.__value_.__l.__size_;
          v40 = v138.__r_.__value_.__r.__words[0];
          v39 = byte_27BA5AF;
          LOBYTE(v8) = *(&v138.__r_.__value_.__s + 23);
        }

        else
        {
          v39 = byte_27BA5AF;
          v136 = xmmword_27BA598;
          v137 = unk_27BA5A8;
          v40 = v126;
        }

        if ((v8 & 0x80u) == 0)
        {
          v41 = &v138;
        }

        else
        {
          v41 = v40;
        }

        if ((v8 & 0x80u) == 0)
        {
          v42 = v7;
        }

        else
        {
          v42 = size;
        }

        if ((v39 & 0x80u) == 0)
        {
          v43 = &xmmword_27BA598;
        }

        else
        {
          v43 = xmmword_27BA598;
        }

        if ((v39 & 0x80u) == 0)
        {
          v44 = v39;
        }

        else
        {
          v44 = *(&xmmword_27BA598 + 1);
        }

        if (!v44)
        {
          v26 = v129;
LABEL_171:
          if (v137 >= 0)
          {
            v72 = HIBYTE(v137);
          }

          else
          {
            v72 = *(&v136 + 1);
          }

          if ((v8 & 0x80) != 0)
          {
            if (v72 != -1)
            {
              goto LABEL_178;
            }

            v138.__r_.__value_.__l.__size_ = 0;
            *v138.__r_.__value_.__l.__data_ = 0;
          }

          else
          {
            if (v72 == -1)
            {
              *(&v138.__r_.__value_.__s + 23) = 0;
              v138.__r_.__value_.__s.__data_[0] = 0;
              goto LABEL_179;
            }

LABEL_178:
            sub_148E0(&v138, 0, v72);
          }

LABEL_179:
          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = &v138;
          }

          else
          {
            v73 = v138.__r_.__value_.__r.__words[0];
          }

          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v74 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v74 = v138.__r_.__value_.__l.__size_;
          }

          v75 = v73 + v74;
          if (v74 >= 1)
          {
            v76 = v74;
            v77 = v73;
            do
            {
              v78 = memchr(v77, 95, v76);
              if (!v78)
              {
                break;
              }

              if (*v78 == 95)
              {
                goto LABEL_191;
              }

              v77 = (v78 + 1);
              v76 = v75 - v77;
            }

            while (v75 - v77 > 0);
          }

          v78 = v73 + v74;
LABEL_191:
          if (v78 == v75)
          {
            v79 = -1;
          }

          else
          {
            v79 = v78 - v73;
          }

          if (v74 >= v79)
          {
            v80 = v79;
          }

          else
          {
            v80 = v74;
          }

          if (v80 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v80 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v80;
          if (v80)
          {
            memmove(&__dst, v73, v80);
          }

          __dst.__r_.__value_.__s.__data_[v80] = 0;
          v81 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          p_dst = __dst.__r_.__value_.__r.__words[0];
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v81 = __dst.__r_.__value_.__l.__size_;
          }

          if (v81)
          {
            while (1)
            {
              v83 = p_dst->__r_.__value_.__s.__data_[0];
              if (v83 < 0 || (_DefaultRuneLocale.__runetype[v83] & 0x400) == 0)
              {
                break;
              }

              p_dst = (p_dst + 1);
              if (!--v81)
              {
                goto LABEL_211;
              }
            }

            if (!sub_7E7E4(1u))
            {
LABEL_252:
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_268;
              }

              goto LABEL_253;
            }

            sub_19594F8(&v133);
            v87 = sub_4A5C(&v133, "Got a tbr corrupted x coordinate: ", 34);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v88 = &__dst;
            }

            else
            {
              v88 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v89 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v89 = __dst.__r_.__value_.__l.__size_;
            }

            v90 = sub_4A5C(v87, v88, v89);
            v91 = sub_4A5C(v90, " in the read displayed banner id of a dodgeball offering a route avoiding a tbr. Full suffix: ", 94);
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v92 = &v138;
            }

            else
            {
              v92 = v138.__r_.__value_.__r.__words[0];
            }

            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v93 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v93 = v138.__r_.__value_.__l.__size_;
            }

            sub_4A5C(v91, v92, v93);
            sub_1959680(&v133, &__str);
            sub_7E854(&__str, 1u);
            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              sub_1959728(&v133);
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_268;
              }

LABEL_253:
              operator delete(__dst.__r_.__value_.__l.__data_);
              goto LABEL_268;
            }

            operator delete(__str.__r_.__value_.__l.__data_);
            sub_1959728(&v133);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_253;
            }
          }

          else
          {
LABEL_211:
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v84 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v84 = v138.__r_.__value_.__l.__size_;
            }

            sub_E75AF0(&v138, v79 + 1, v84, &__str);
            if (sub_E75BF4(&__str))
            {
              v85 = std::stod(&__dst, 0);
              LODWORD(v86) = std::stod(&__str, 0);
              if (v86 >= 0xFFFFFFFE)
              {
                v86 = 4294967294;
              }

              else
              {
                v86 = v86;
              }

              v133 = (v85 | (v86 << 32));
              v134 = 0x7FFFFFFF;
              sub_59E980(a2, &v133);
            }

            else if (sub_7E7E4(1u))
            {
              sub_19594F8(&v133);
              v94 = sub_4A5C(&v133, "Got a tbr corrupted y coordinate: ", 34);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_str = &__str;
              }

              else
              {
                p_str = __str.__r_.__value_.__r.__words[0];
              }

              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v96 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v96 = __str.__r_.__value_.__l.__size_;
              }

              v97 = sub_4A5C(v94, p_str, v96);
              v98 = sub_4A5C(v97, " in the read displayed banner id of a dodgeball offering a route avoiding a tbr. Full suffix: ", 94);
              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v99 = &v138;
              }

              else
              {
                v99 = v138.__r_.__value_.__r.__words[0];
              }

              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v100 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v100 = v138.__r_.__value_.__l.__size_;
              }

              sub_4A5C(v98, v99, v100);
              sub_1959680(&v133, __p);
              sub_7E854(__p, 1u);
              if (v131 < 0)
              {
                operator delete(__p[0]);
              }

              sub_1959728(&v133);
            }

            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_252;
            }

            operator delete(__str.__r_.__value_.__l.__data_);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_253;
            }
          }

          goto LABEL_268;
        }

        v45 = v41 + v42;
        v26 = v129;
        if (v42 >= v44)
        {
          v53 = *v43;
          v54 = v42;
          v55 = v41;
          do
          {
            v56 = v54 - v44;
            if (v56 == -1)
            {
              break;
            }

            v57 = memchr(v55, v53, v56 + 1);
            if (!v57)
            {
              break;
            }

            v58 = v57;
            if (!memcmp(v57, v43, v44))
            {
              if (v58 == v45 || v58 - v41 == -1)
              {
                break;
              }

              goto LABEL_171;
            }

            v55 = (v58 + 1);
            v54 = v45 - (v58 + 1);
          }

          while (v54 >= v44);
        }

        v46 = byte_27BA5F7;
        v47 = xmmword_27BA5E0;
        if (byte_27BA5F7 >= 0)
        {
          v48 = &xmmword_27BA5E0;
        }

        else
        {
          v48 = xmmword_27BA5E0;
        }

        if (byte_27BA5F7 >= 0)
        {
          v49 = byte_27BA5F7;
        }

        else
        {
          v49 = *(&xmmword_27BA5E0 + 1);
        }

        if (v49)
        {
          if (v42 >= v49)
          {
            v59 = *v48;
            v60 = v41;
            do
            {
              if (v42 - v49 == -1)
              {
                break;
              }

              v61 = memchr(v60, v59, v42 - v49 + 1);
              if (!v61)
              {
                break;
              }

              v50 = v61;
              if (!memcmp(v61, v48, v49))
              {
                goto LABEL_121;
              }

              v60 = (v50 + 1);
              v42 = v45 - (v50 + 1);
            }

            while (v42 >= v49);
          }

          v50 = v45;
LABEL_121:
          v52 = v50 == v45 || v50 - v41 == -1;
          if (SHIBYTE(v137) < 0)
          {
LABEL_139:
            sub_13B38(&v136, v48, v49);
            v26 = v129;
            goto LABEL_147;
          }
        }

        else
        {
          v52 = 0;
          if (SHIBYTE(v137) < 0)
          {
            goto LABEL_139;
          }
        }

        if (v46 < 0)
        {
          sub_13A68(&v136, v47, *(&v47 + 1));
        }

        else
        {
          v136 = xmmword_27BA5E0;
          v137 = unk_27BA5F0;
        }

        v26 = v129;
LABEL_147:
        v62 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        LOBYTE(v8) = *(&v138.__r_.__value_.__s + 23);
        if (!v52)
        {
          goto LABEL_171;
        }

        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = &v138;
        }

        else
        {
          v63 = v138.__r_.__value_.__r.__words[0];
        }

        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v62 = v138.__r_.__value_.__l.__size_;
        }

        if (byte_27BA7D7 >= 0)
        {
          v64 = &qword_27BA7C0;
        }

        else
        {
          v64 = qword_27BA7C0;
        }

        if (byte_27BA7D7 >= 0)
        {
          v65 = byte_27BA7D7;
        }

        else
        {
          v65 = unk_27BA7C8;
        }

        if (!v65)
        {
LABEL_267:
          std::string::erase(&v138, 0, v65);
          sub_59E974(a2, &v138);
          goto LABEL_268;
        }

        if (v62 >= v65)
        {
          v66 = v63 + v62;
          v67 = *v64;
          v68 = v63;
          do
          {
            v69 = v62 - v65;
            if (v69 == -1)
            {
              break;
            }

            v70 = memchr(v68, v67, v69 + 1);
            if (!v70)
            {
              break;
            }

            v71 = v70;
            if (!memcmp(v70, v64, v65))
            {
              if (v71 == v66 || v71 - v63 == -1)
              {
                break;
              }

              goto LABEL_267;
            }

            v68 = (v71 + 1);
            v62 = v66 - (v71 + 1);
          }

          while (v62 >= v65);
        }

        if (sub_6B93C(&v138, "EVDisconnect_", 0) != -1)
        {
          sub_59E98C(a2);
          goto LABEL_268;
        }

        if (sub_6B93C(&v138, "EVReconnect_", 0) != -1)
        {
          sub_59E99C(a2);
          goto LABEL_268;
        }

        if (sub_6B93C(&v138, "EVTowingNotSupported_", 0) != -1)
        {
          sub_59E9AC(a2);
          goto LABEL_268;
        }

        if (sub_6B93C(&v138, "NACS_ADAPTER_REQUIRED_", 0) != -1)
        {
          sub_59E9B8(a2);
          goto LABEL_268;
        }

        __dst.__r_.__value_.__s.__data_[0] = 0;
        v101 = byte_27BA78F;
        if (byte_27BA78F >= 0)
        {
          v102 = byte_27BA78F;
        }

        else
        {
          v102 = qword_27BA780;
        }

        v103 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v104 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v104 = v138.__r_.__value_.__l.__size_;
        }

        if (v104 >= v102 && ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v105 = &v138) : (v105 = v138.__r_.__value_.__r.__words[0]), (v106 = qword_27BA778, byte_27BA78F >= 0) ? (v107 = &qword_27BA778) : (v107 = qword_27BA778), !memcmp(v105, v107, v102)))
        {
          if (v101 >= 0)
          {
            v121 = &qword_27BA778;
          }

          else
          {
            v121 = v106;
          }

          v122 = sub_E75C48(&__dst, v121, v102, &v138);
          if (v122 != 0x7FFFFFFF)
          {
LABEL_326:
            v133 = (v122 | 0x7FFFFFFF00000000);
            LOWORD(v134) = 0;
            sub_59E9C4(a2, &v133);
          }
        }

        else
        {
          v108 = byte_27BA7A7;
          if (byte_27BA7A7 >= 0)
          {
            v109 = byte_27BA7A7;
          }

          else
          {
            v109 = qword_27BA798;
          }

          if (v104 >= v109 && (v103 >= 0 ? (v110 = &v138) : (v110 = v138.__r_.__value_.__r.__words[0]), (v111 = qword_27BA790, byte_27BA7A7 >= 0) ? (v112 = &qword_27BA790) : (v112 = qword_27BA790), !memcmp(v110, v112, v109)))
          {
            if (v108 >= 0)
            {
              v123 = &qword_27BA790;
            }

            else
            {
              v123 = v111;
            }

            v124 = sub_E75C48(&__dst, v123, v109, &v138);
            if (v124 != 0x7FFFFFFF)
            {
              LODWORD(v133) = 0x7FFFFFFF;
              HIDWORD(v133) = v124;
              LOWORD(v134) = 0;
              sub_59E9C4(a2, &v133);
            }
          }

          else
          {
            v113 = byte_27BA777;
            if (byte_27BA777 >= 0)
            {
              v114 = byte_27BA777;
            }

            else
            {
              v114 = qword_27BA768;
            }

            if (v104 >= v114 && (v103 >= 0 ? (v115 = &v138) : (v115 = v138.__r_.__value_.__r.__words[0]), (v116 = qword_27BA760, byte_27BA777 >= 0) ? (v117 = &qword_27BA760) : (v117 = qword_27BA760), !memcmp(v115, v117, v114)))
            {
              if (v113 >= 0)
              {
                v125 = &qword_27BA760;
              }

              else
              {
                v125 = v116;
              }

              v122 = sub_E75C48(&__dst, v125, v114, &v138);
              if (v122 != 0x7FFFFFFF)
              {
                goto LABEL_326;
              }
            }

            else
            {
              if (byte_27BA7BF >= 0)
              {
                v118 = byte_27BA7BF;
              }

              else
              {
                v118 = qword_27BA7B0;
              }

              if (v104 >= v118)
              {
                if (v103 >= 0)
                {
                  v119 = &v138;
                }

                else
                {
                  v119 = v138.__r_.__value_.__r.__words[0];
                }

                if (byte_27BA7BF >= 0)
                {
                  v120 = &qword_27BA7A8;
                }

                else
                {
                  v120 = qword_27BA7A8;
                }

                if (!memcmp(v119, v120, v118))
                {
                  v133 = 0x8000000080000000;
                  LOWORD(v134) = 1;
                  sub_59E9C4(a2, &v133);
                }
              }
            }
          }
        }

LABEL_268:
        if ((SHIBYTE(v137) & 0x80000000) == 0)
        {
          goto LABEL_269;
        }

        operator delete(v136);
        if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_270:
        operator delete(v138.__r_.__value_.__l.__data_);
        v3 = v26 + 1;
      }

      while (v3 != v127);
    }
  }

  else
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1065353216;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 1065353216;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 1065353216;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 152) = 1065353216;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 1065353216;
    *(a2 + 216) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 232) = 1065353216;
    *(a2 + 256) = 0;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 248) = 0;
    *(a2 + 240) = 0;
  }
}

void sub_E75984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (*(v25 - 137) < 0)
  {
    operator delete(*(v25 - 160));
    if (*(v25 - 105) < 0)
    {
      goto LABEL_6;
    }
  }

  else if (*(v25 - 105) < 0)
  {
LABEL_6:
    operator delete(*(v25 - 128));
    sub_52861C(a11);
    _Unwind_Resume(a1);
  }

  sub_52861C(a11);
  _Unwind_Resume(a1);
}

void sub_E75AE0()
{
  if (*(v0 - 105) < 0)
  {
    JUMPOUT(0xE75AC8);
  }

  JUMPOUT(0xE75A70);
}

void *sub_E75AF0@<X0>(void *result@<X0>, unint64_t a2@<X1>, size_t a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = result;
  v6 = *(result + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 >= a2)
    {
      v7 = v6 - a2;
      if (v7 >= a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = v7;
      }

      if (v8 < 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_7;
      }

LABEL_17:
      sub_3244();
    }

LABEL_18:
    sub_49D4();
  }

  v9 = result[1];
  if (v9 < a2)
  {
    goto LABEL_18;
  }

  v4 = *result;
  v10 = v9 - a2;
  if (v10 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v10;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_17;
  }

LABEL_7:
  if (v8 >= 0x17)
  {
    operator new();
  }

  a4[23] = v8;
  if (v8)
  {
    result = memmove(a4, v4 + a2, v8);
    a4[v8] = 0;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t sub_E75BF4(char *a1)
{
  v1 = a1[23];
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 < 0)
  {
    v1 = *(a1 + 1);
  }

  if (!v1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *v2;
    if (v3 < 0 || (_DefaultRuneLocale.__runetype[v3] & 0x400) == 0)
    {
      break;
    }

    ++v2;
    if (!--v1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_E75C48(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    if (a3 == -1)
    {
      v6 = *a4;
      *(a4 + 8) = 0;
      *v6 = 0;
      return sub_92B264(a4);
    }

    goto LABEL_5;
  }

  if (a3 != -1)
  {
LABEL_5:
    sub_148E0(a4, 0, a3);
    return sub_92B264(a4);
  }

  *(a4 + 23) = 0;
  *a4 = 0;
  return sub_92B264(a4);
}

uint64_t sub_E75CB0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0x7FFFFFFFLL;
}

void sub_E75CC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 40) & 0x80) != 0 && (*(*(a1 + 320) + 263))
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1065353216;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 1065353216;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 1065353216;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 1065353216;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 1065353216;
    *(a2 + 200) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 232) = 1065353216;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 256) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    v2 = *(a1 + 136);
    if (v2)
    {
      v3 = (v2 + 8);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 128);
    if (v4)
    {
      v127 = &v3[v4];
      do
      {
        while (1)
        {
          v5 = *v3;
          v129 = v3;
          if (*(*v3 + 23) < 0)
          {
            sub_325C(&v138, *v5, *(v5 + 1));
          }

          else
          {
            v6 = *v5;
            v138.__r_.__value_.__r.__words[2] = *(v5 + 2);
            *&v138.__r_.__value_.__l.__data_ = v6;
          }

          v7 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          v8 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
          size = v138.__r_.__value_.__l.__size_;
          v10 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v138 : v138.__r_.__value_.__r.__words[0];
          v11 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v138.__r_.__value_.__r.__words[2]) : v138.__r_.__value_.__l.__size_;
          v12 = byte_27BA60F >= 0 ? &qword_27BA5F8 : qword_27BA5F8;
          v13 = byte_27BA60F >= 0 ? byte_27BA60F : unk_27BA600;
          if (v13)
          {
            break;
          }

LABEL_48:
          v26 = v129;
LABEL_49:
          sub_148E0(&v138, 0, v13);
LABEL_50:
          sub_59E948(a2, &v138);
LABEL_269:
          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_270;
          }

LABEL_9:
          v3 = v26 + 1;
          if (v3 == v127)
          {
            return;
          }
        }

        v126 = v138.__r_.__value_.__r.__words[0];
        v14 = v10 + v11;
        if (v11 >= v13)
        {
          v20 = *v12;
          v21 = v11;
          v22 = v10;
          do
          {
            v23 = v21 - v13;
            if (v23 == -1)
            {
              break;
            }

            v24 = memchr(v22, v20, v23 + 1);
            if (!v24)
            {
              break;
            }

            v25 = v24;
            if (!memcmp(v24, v12, v13))
            {
              if (v25 == v14 || v25 - v10 == -1)
              {
                break;
              }

              if (v8 < 0)
              {
                v26 = v129;
                if (v13 != -1)
                {
                  goto LABEL_49;
                }

                v138.__r_.__value_.__l.__size_ = 0;
                *v126 = 0;
              }

              else
              {
                v26 = v129;
                if (v13 != -1)
                {
                  goto LABEL_49;
                }

                *(&v138.__r_.__value_.__s + 23) = 0;
                v138.__r_.__value_.__s.__data_[0] = 0;
              }

              goto LABEL_50;
            }

            v22 = (v25 + 1);
            v21 = v14 - (v25 + 1);
          }

          while (v21 >= v13);
        }

        if (v11 >= 20)
        {
          v15 = v11;
          v16 = v10;
          do
          {
            v17 = memchr(v16, 86, v15 - 19);
            if (!v17)
            {
              break;
            }

            if (*v17 == 0x52656C6261746F56 && *(v17 + 1) == 0x6469636E4964616FLL && *(v17 + 4) == 1601465957)
            {
              if (v17 != v14 && v17 - v10 != -1)
              {
                v13 = 20;
                goto LABEL_48;
              }

              break;
            }

            v16 = (v17 + 1);
            v15 = v14 - v16;
          }

          while (v14 - v16 >= 20);
          if (v11 >= 22)
          {
            v27 = v11;
            v28 = v10;
            do
            {
              v29 = memchr(v28, 73, v27 - 21);
              if (!v29)
              {
                break;
              }

              if (*v29 == 0x746E656469636E49 && *(v29 + 1) == 0x676E697375614373 && *(v29 + 14) == 0x5F79616C6544676ELL)
              {
                if (v29 != v14 && v29 - v10 != -1)
                {
                  sub_148E0(&v138, 0, 0x16uLL);
                  v26 = v129;
                  sub_59E950(a2, &v138);
                  goto LABEL_269;
                }

                break;
              }

              v28 = (v29 + 1);
              v27 = v14 - v28;
            }

            while (v14 - v28 >= 22);
          }
        }

        if (v11 >= 13)
        {
          v32 = v11;
          v33 = v10;
          do
          {
            v34 = memchr(v33, 65, v32 - 12);
            if (!v34)
            {
              break;
            }

            if (*v34 == 0x69636E4961657241 && *(v34 + 5) == 0x5F746E656469636ELL)
            {
              if (v34 != v14 && v34 - v10 != -1)
              {
                sub_148E0(&v138, 0, 0xDuLL);
                v26 = v129;
                sub_59E95C(a2, &v138);
                goto LABEL_269;
              }

              break;
            }

            v33 = (v34 + 1);
            v32 = v14 - v33;
          }

          while (v14 - v33 >= 13);
          if (v11 >= 15)
          {
            v36 = v10;
            do
            {
              v37 = memchr(v36, 67, v11 - 14);
              if (!v37)
              {
                break;
              }

              if (*v37 == 0x69747365676E6F43 && *(v37 + 7) == 0x5F656E6F5A6E6F69)
              {
                if (v37 != v14 && v37 - v10 != -1)
                {
                  sub_148E0(&v138, 0, 0xFuLL);
                  v26 = v129;
                  sub_59E968(a2, &v138);
                  goto LABEL_269;
                }

                break;
              }

              v36 = (v37 + 1);
              v11 = v14 - v36;
            }

            while (v14 - v36 >= 15);
          }
        }

        if (byte_27BA5AF < 0)
        {
          sub_325C(&v136, xmmword_27BA598, *(&xmmword_27BA598 + 1));
          v7 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          size = v138.__r_.__value_.__l.__size_;
          v40 = v138.__r_.__value_.__r.__words[0];
          v39 = byte_27BA5AF;
          LOBYTE(v8) = *(&v138.__r_.__value_.__s + 23);
        }

        else
        {
          v39 = byte_27BA5AF;
          v136 = xmmword_27BA598;
          v137 = unk_27BA5A8;
          v40 = v126;
        }

        if ((v8 & 0x80u) == 0)
        {
          v41 = &v138;
        }

        else
        {
          v41 = v40;
        }

        if ((v8 & 0x80u) == 0)
        {
          v42 = v7;
        }

        else
        {
          v42 = size;
        }

        if ((v39 & 0x80u) == 0)
        {
          v43 = &xmmword_27BA598;
        }

        else
        {
          v43 = xmmword_27BA598;
        }

        if ((v39 & 0x80u) == 0)
        {
          v44 = v39;
        }

        else
        {
          v44 = *(&xmmword_27BA598 + 1);
        }

        if (!v44)
        {
          v26 = v129;
LABEL_171:
          if (v137 >= 0)
          {
            v72 = HIBYTE(v137);
          }

          else
          {
            v72 = *(&v136 + 1);
          }

          if ((v8 & 0x80) != 0)
          {
            if (v72 != -1)
            {
              goto LABEL_178;
            }

            v138.__r_.__value_.__l.__size_ = 0;
            *v138.__r_.__value_.__l.__data_ = 0;
          }

          else
          {
            if (v72 == -1)
            {
              *(&v138.__r_.__value_.__s + 23) = 0;
              v138.__r_.__value_.__s.__data_[0] = 0;
              goto LABEL_179;
            }

LABEL_178:
            sub_148E0(&v138, 0, v72);
          }

LABEL_179:
          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = &v138;
          }

          else
          {
            v73 = v138.__r_.__value_.__r.__words[0];
          }

          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v74 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v74 = v138.__r_.__value_.__l.__size_;
          }

          v75 = v73 + v74;
          if (v74 >= 1)
          {
            v76 = v74;
            v77 = v73;
            do
            {
              v78 = memchr(v77, 95, v76);
              if (!v78)
              {
                break;
              }

              if (*v78 == 95)
              {
                goto LABEL_191;
              }

              v77 = (v78 + 1);
              v76 = v75 - v77;
            }

            while (v75 - v77 > 0);
          }

          v78 = v73 + v74;
LABEL_191:
          if (v78 == v75)
          {
            v79 = -1;
          }

          else
          {
            v79 = v78 - v73;
          }

          if (v74 >= v79)
          {
            v80 = v79;
          }

          else
          {
            v80 = v74;
          }

          if (v80 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v80 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v80;
          if (v80)
          {
            memmove(&__dst, v73, v80);
          }

          __dst.__r_.__value_.__s.__data_[v80] = 0;
          v81 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          p_dst = __dst.__r_.__value_.__r.__words[0];
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v81 = __dst.__r_.__value_.__l.__size_;
          }

          if (v81)
          {
            while (1)
            {
              v83 = p_dst->__r_.__value_.__s.__data_[0];
              if (v83 < 0 || (_DefaultRuneLocale.__runetype[v83] & 0x400) == 0)
              {
                break;
              }

              p_dst = (p_dst + 1);
              if (!--v81)
              {
                goto LABEL_211;
              }
            }

            if (!sub_7E7E4(1u))
            {
LABEL_252:
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_268;
              }

              goto LABEL_253;
            }

            sub_19594F8(&v133);
            v87 = sub_4A5C(&v133, "Got a tbr corrupted x coordinate: ", 34);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v88 = &__dst;
            }

            else
            {
              v88 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v89 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v89 = __dst.__r_.__value_.__l.__size_;
            }

            v90 = sub_4A5C(v87, v88, v89);
            v91 = sub_4A5C(v90, " in the read displayed banner id of a dodgeball offering a route avoiding a tbr. Full suffix: ", 94);
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v92 = &v138;
            }

            else
            {
              v92 = v138.__r_.__value_.__r.__words[0];
            }

            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v93 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v93 = v138.__r_.__value_.__l.__size_;
            }

            sub_4A5C(v91, v92, v93);
            sub_1959680(&v133, &__str);
            sub_7E854(&__str, 1u);
            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              sub_1959728(&v133);
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_268;
              }

LABEL_253:
              operator delete(__dst.__r_.__value_.__l.__data_);
              goto LABEL_268;
            }

            operator delete(__str.__r_.__value_.__l.__data_);
            sub_1959728(&v133);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_253;
            }
          }

          else
          {
LABEL_211:
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v84 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v84 = v138.__r_.__value_.__l.__size_;
            }

            sub_E75AF0(&v138, v79 + 1, v84, &__str);
            if (sub_E75BF4(&__str))
            {
              v85 = std::stod(&__dst, 0);
              LODWORD(v86) = std::stod(&__str, 0);
              if (v86 >= 0xFFFFFFFE)
              {
                v86 = 4294967294;
              }

              else
              {
                v86 = v86;
              }

              v133 = (v85 | (v86 << 32));
              v134 = 0x7FFFFFFF;
              sub_59E980(a2, &v133);
            }

            else if (sub_7E7E4(1u))
            {
              sub_19594F8(&v133);
              v94 = sub_4A5C(&v133, "Got a tbr corrupted y coordinate: ", 34);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_str = &__str;
              }

              else
              {
                p_str = __str.__r_.__value_.__r.__words[0];
              }

              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v96 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v96 = __str.__r_.__value_.__l.__size_;
              }

              v97 = sub_4A5C(v94, p_str, v96);
              v98 = sub_4A5C(v97, " in the read displayed banner id of a dodgeball offering a route avoiding a tbr. Full suffix: ", 94);
              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v99 = &v138;
              }

              else
              {
                v99 = v138.__r_.__value_.__r.__words[0];
              }

              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v100 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v100 = v138.__r_.__value_.__l.__size_;
              }

              sub_4A5C(v98, v99, v100);
              sub_1959680(&v133, __p);
              sub_7E854(__p, 1u);
              if (v131 < 0)
              {
                operator delete(__p[0]);
              }

              sub_1959728(&v133);
            }

            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_252;
            }

            operator delete(__str.__r_.__value_.__l.__data_);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_253;
            }
          }

          goto LABEL_268;
        }

        v45 = v41 + v42;
        v26 = v129;
        if (v42 >= v44)
        {
          v53 = *v43;
          v54 = v42;
          v55 = v41;
          do
          {
            v56 = v54 - v44;
            if (v56 == -1)
            {
              break;
            }

            v57 = memchr(v55, v53, v56 + 1);
            if (!v57)
            {
              break;
            }

            v58 = v57;
            if (!memcmp(v57, v43, v44))
            {
              if (v58 == v45 || v58 - v41 == -1)
              {
                break;
              }

              goto LABEL_171;
            }

            v55 = (v58 + 1);
            v54 = v45 - (v58 + 1);
          }

          while (v54 >= v44);
        }

        v46 = byte_27BA5F7;
        v47 = xmmword_27BA5E0;
        if (byte_27BA5F7 >= 0)
        {
          v48 = &xmmword_27BA5E0;
        }

        else
        {
          v48 = xmmword_27BA5E0;
        }

        if (byte_27BA5F7 >= 0)
        {
          v49 = byte_27BA5F7;
        }

        else
        {
          v49 = *(&xmmword_27BA5E0 + 1);
        }

        if (v49)
        {
          if (v42 >= v49)
          {
            v59 = *v48;
            v60 = v41;
            do
            {
              if (v42 - v49 == -1)
              {
                break;
              }

              v61 = memchr(v60, v59, v42 - v49 + 1);
              if (!v61)
              {
                break;
              }

              v50 = v61;
              if (!memcmp(v61, v48, v49))
              {
                goto LABEL_121;
              }

              v60 = (v50 + 1);
              v42 = v45 - (v50 + 1);
            }

            while (v42 >= v49);
          }

          v50 = v45;
LABEL_121:
          v52 = v50 == v45 || v50 - v41 == -1;
          if (SHIBYTE(v137) < 0)
          {
LABEL_139:
            sub_13B38(&v136, v48, v49);
            v26 = v129;
            goto LABEL_147;
          }
        }

        else
        {
          v52 = 0;
          if (SHIBYTE(v137) < 0)
          {
            goto LABEL_139;
          }
        }

        if (v46 < 0)
        {
          sub_13A68(&v136, v47, *(&v47 + 1));
        }

        else
        {
          v136 = xmmword_27BA5E0;
          v137 = unk_27BA5F0;
        }

        v26 = v129;
LABEL_147:
        v62 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        LOBYTE(v8) = *(&v138.__r_.__value_.__s + 23);
        if (!v52)
        {
          goto LABEL_171;
        }

        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = &v138;
        }

        else
        {
          v63 = v138.__r_.__value_.__r.__words[0];
        }

        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v62 = v138.__r_.__value_.__l.__size_;
        }

        if (byte_27BA7D7 >= 0)
        {
          v64 = &qword_27BA7C0;
        }

        else
        {
          v64 = qword_27BA7C0;
        }

        if (byte_27BA7D7 >= 0)
        {
          v65 = byte_27BA7D7;
        }

        else
        {
          v65 = unk_27BA7C8;
        }

        if (!v65)
        {
LABEL_267:
          std::string::erase(&v138, 0, v65);
          sub_59E974(a2, &v138);
          goto LABEL_268;
        }

        if (v62 >= v65)
        {
          v66 = v63 + v62;
          v67 = *v64;
          v68 = v63;
          do
          {
            v69 = v62 - v65;
            if (v69 == -1)
            {
              break;
            }

            v70 = memchr(v68, v67, v69 + 1);
            if (!v70)
            {
              break;
            }

            v71 = v70;
            if (!memcmp(v70, v64, v65))
            {
              if (v71 == v66 || v71 - v63 == -1)
              {
                break;
              }

              goto LABEL_267;
            }

            v68 = (v71 + 1);
            v62 = v66 - (v71 + 1);
          }

          while (v62 >= v65);
        }

        if (sub_6B93C(&v138, "EVDisconnect_", 0) != -1)
        {
          sub_59E98C(a2);
          goto LABEL_268;
        }

        if (sub_6B93C(&v138, "EVReconnect_", 0) != -1)
        {
          sub_59E99C(a2);
          goto LABEL_268;
        }

        if (sub_6B93C(&v138, "EVTowingNotSupported_", 0) != -1)
        {
          sub_59E9AC(a2);
          goto LABEL_268;
        }

        if (sub_6B93C(&v138, "NACS_ADAPTER_REQUIRED_", 0) != -1)
        {
          sub_59E9B8(a2);
          goto LABEL_268;
        }

        __dst.__r_.__value_.__s.__data_[0] = 0;
        v101 = byte_27BA78F;
        if (byte_27BA78F >= 0)
        {
          v102 = byte_27BA78F;
        }

        else
        {
          v102 = qword_27BA780;
        }

        v103 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v104 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v104 = v138.__r_.__value_.__l.__size_;
        }

        if (v104 >= v102 && ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v105 = &v138) : (v105 = v138.__r_.__value_.__r.__words[0]), (v106 = qword_27BA778, byte_27BA78F >= 0) ? (v107 = &qword_27BA778) : (v107 = qword_27BA778), !memcmp(v105, v107, v102)))
        {
          if (v101 >= 0)
          {
            v121 = &qword_27BA778;
          }

          else
          {
            v121 = v106;
          }

          v122 = sub_E76CC4(&__dst, v121, v102, &v138);
          if (v122 != 0x7FFFFFFF)
          {
LABEL_326:
            v133 = (v122 | 0x7FFFFFFF00000000);
            LOWORD(v134) = 0;
            sub_59E9C4(a2, &v133);
          }
        }

        else
        {
          v108 = byte_27BA7A7;
          if (byte_27BA7A7 >= 0)
          {
            v109 = byte_27BA7A7;
          }

          else
          {
            v109 = qword_27BA798;
          }

          if (v104 >= v109 && (v103 >= 0 ? (v110 = &v138) : (v110 = v138.__r_.__value_.__r.__words[0]), (v111 = qword_27BA790, byte_27BA7A7 >= 0) ? (v112 = &qword_27BA790) : (v112 = qword_27BA790), !memcmp(v110, v112, v109)))
          {
            if (v108 >= 0)
            {
              v123 = &qword_27BA790;
            }

            else
            {
              v123 = v111;
            }

            v124 = sub_E76CC4(&__dst, v123, v109, &v138);
            if (v124 != 0x7FFFFFFF)
            {
              LODWORD(v133) = 0x7FFFFFFF;
              HIDWORD(v133) = v124;
              LOWORD(v134) = 0;
              sub_59E9C4(a2, &v133);
            }
          }

          else
          {
            v113 = byte_27BA777;
            if (byte_27BA777 >= 0)
            {
              v114 = byte_27BA777;
            }

            else
            {
              v114 = qword_27BA768;
            }

            if (v104 >= v114 && (v103 >= 0 ? (v115 = &v138) : (v115 = v138.__r_.__value_.__r.__words[0]), (v116 = qword_27BA760, byte_27BA777 >= 0) ? (v117 = &qword_27BA760) : (v117 = qword_27BA760), !memcmp(v115, v117, v114)))
            {
              if (v113 >= 0)
              {
                v125 = &qword_27BA760;
              }

              else
              {
                v125 = v116;
              }

              v122 = sub_E76CC4(&__dst, v125, v114, &v138);
              if (v122 != 0x7FFFFFFF)
              {
                goto LABEL_326;
              }
            }

            else
            {
              if (byte_27BA7BF >= 0)
              {
                v118 = byte_27BA7BF;
              }

              else
              {
                v118 = qword_27BA7B0;
              }

              if (v104 >= v118)
              {
                if (v103 >= 0)
                {
                  v119 = &v138;
                }

                else
                {
                  v119 = v138.__r_.__value_.__r.__words[0];
                }

                if (byte_27BA7BF >= 0)
                {
                  v120 = &qword_27BA7A8;
                }

                else
                {
                  v120 = qword_27BA7A8;
                }

                if (!memcmp(v119, v120, v118))
                {
                  v133 = 0x8000000080000000;
                  LOWORD(v134) = 1;
                  sub_59E9C4(a2, &v133);
                }
              }
            }
          }
        }

LABEL_268:
        if ((SHIBYTE(v137) & 0x80000000) == 0)
        {
          goto LABEL_269;
        }

        operator delete(v136);
        if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_270:
        operator delete(v138.__r_.__value_.__l.__data_);
        v3 = v26 + 1;
      }

      while (v3 != v127);
    }
  }

  else
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1065353216;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 1065353216;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 1065353216;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 152) = 1065353216;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 1065353216;
    *(a2 + 216) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 232) = 1065353216;
    *(a2 + 256) = 0;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 248) = 0;
    *(a2 + 240) = 0;
  }
}

void sub_E76B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (*(v25 - 137) < 0)
  {
    operator delete(*(v25 - 160));
    if (*(v25 - 105) < 0)
    {
      goto LABEL_6;
    }
  }

  else if (*(v25 - 105) < 0)
  {
LABEL_6:
    operator delete(*(v25 - 128));
    sub_52861C(a11);
    _Unwind_Resume(a1);
  }

  sub_52861C(a11);
  _Unwind_Resume(a1);
}

void sub_E76CB4()
{
  if (*(v0 - 105) < 0)
  {
    JUMPOUT(0xE76C9CLL);
  }

  JUMPOUT(0xE76C44);
}

uint64_t sub_E76CC4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    if (a3 == -1)
    {
      v6 = *a4;
      *(a4 + 8) = 0;
      *v6 = 0;
      return sub_92B264(a4);
    }

    goto LABEL_5;
  }

  if (a3 != -1)
  {
LABEL_5:
    sub_148E0(a4, 0, a3);
    return sub_92B264(a4);
  }

  *(a4 + 23) = 0;
  *a4 = 0;
  return sub_92B264(a4);
}

uint64_t sub_E76D2C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0x7FFFFFFFLL;
}

unint64_t sub_E76D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  v3 = 0uLL;
  *a2 = 0u;
  v4 = &off_2772E28;
  if (*(a1 + 336))
  {
    v4 = *(a1 + 336);
  }

  v5 = *(v4 + 10);
  if (v5)
  {
    v6 = v4[6];
    v7 = 4 * v5;
    do
    {
      v8 = *v6;
      if ((*v6 - 1) >= 4)
      {
        v8 = 3;
      }

      v18 = v8;
      sub_DD38(a2, &v18);
      ++v6;
      v7 -= 4;
    }

    while (v7);
    v3 = *a2;
  }

  v9 = 126 - 2 * __clz((*(&v3 + 1) - v3) >> 2);
  if (*(&v3 + 1) == v3)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  result = sub_9BD1AC(v3, *(&v3 + 1), &v19, v10, 1);
  v12 = *(a2 + 8);
  if (*a2 != v12)
  {
    v13 = (*a2 + 4);
    while (v13 != v12)
    {
      v14 = *(v13 - 1);
      v15 = *v13++;
      if (v14 == v15)
      {
        v16 = v13 - 2;
        while (v13 != v12)
        {
          v17 = v14;
          v14 = *v13;
          if (v17 != *v13)
          {
            v16[1] = v14;
            ++v16;
          }

          ++v13;
        }

        if (v16 + 1 != v12)
        {
          *(a2 + 8) = v16 + 1;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_E76E8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_E76EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  v3 = 0uLL;
  *a2 = 0u;
  v4 = &off_2772E28;
  if (*(a1 + 312))
  {
    v4 = *(a1 + 312);
  }

  v5 = *(v4 + 10);
  if (v5)
  {
    v6 = v4[6];
    v7 = 4 * v5;
    do
    {
      v8 = *v6;
      if ((*v6 - 1) >= 4)
      {
        v8 = 3;
      }

      v18 = v8;
      sub_DD38(a2, &v18);
      ++v6;
      v7 -= 4;
    }

    while (v7);
    v3 = *a2;
  }

  v9 = 126 - 2 * __clz((*(&v3 + 1) - v3) >> 2);
  if (*(&v3 + 1) == v3)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  result = sub_9BD1AC(v3, *(&v3 + 1), &v19, v10, 1);
  v12 = *(a2 + 8);
  if (*a2 != v12)
  {
    v13 = (*a2 + 4);
    while (v13 != v12)
    {
      v14 = *(v13 - 1);
      v15 = *v13++;
      if (v14 == v15)
      {
        v16 = v13 - 2;
        while (v13 != v12)
        {
          v17 = v14;
          v14 = *v13;
          if (v17 != *v13)
          {
            v16[1] = v14;
            ++v16;
          }

          ++v13;
        }

        if (v16 + 1 != v12)
        {
          *(a2 + 8) = v16 + 1;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_E76FF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_E77AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a22);
  if (v27)
  {
    operator delete(v27);
  }

  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_E786DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a22);
  if (v27)
  {
    operator delete(v27);
  }

  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_E79DEC(_Unwind_Exception *a1)
{
  sub_E7AB7C((v2 - 176));
  sub_528AB4(v1);
  _Unwind_Resume(a1);
}

BOOL sub_E79FF8(uint64_t a1)
{
  v2 = &off_2776700;
  if (*(a1 + 360))
  {
    v2 = *(a1 + 360);
  }

  v3 = *(v2 + 18);
  if (v3)
  {
    v4 = 0;
    v5 = v2[10];
    v6 = 4 * v3;
    do
    {
      v7 = *v5++;
      v4 |= 1 << sub_899A0(v7);
      v6 -= 4;
    }

    while (v6);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v8 = *(a1 + 336);
  if (!v8)
  {
    v8 = &off_2772E28;
  }

  v9 = *(v8 + 32);
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      return v9 != 3 || (v4 & 8) != 0;
    }

    return (v4 & 4) != 0;
  }

  if (!v9)
  {
    return (v4 & 1) != 0;
  }

  return v9 != 1 || (v4 & 2) != 0;
}

unint64_t sub_E7A124(uint64_t a1)
{
  if (*(a1 + 360))
  {
    v2 = *(a1 + 360);
  }

  else
  {
    v2 = &off_2776700;
  }

  if (*(a1 + 336))
  {
    v3 = *(a1 + 336);
  }

  else
  {
    v3 = &off_2772E28;
  }

  v4 = &off_2773750;
  if (v3[15])
  {
    v4 = v3[15];
  }

  v5 = v4[3];
  v6 = &off_2773710;
  if (v5)
  {
    v6 = v5;
  }

  v7 = *(v6 + 26);
  v8 = *(v6 + 25);
  v9 = v3[11];
  if (!v9)
  {
    v9 = &off_2773678;
  }

  v10 = v9[3];
  if (!v10)
  {
    v10 = &off_2773640;
  }

  v11 = *(v10 + 48);
  v12 = *(v10 + 49);
  v13 = *(v2 + 244);
  v14 = *(v2 + 253);
  v15 = *(v9 + 41);
  v16 = v3[13];
  v17 = &off_2773810;
  if (v16)
  {
    v17 = v16;
  }

  v18 = *(v17 + 6);
  if (v18)
  {
    v19 = v17[4];
    v20 = 4 * v18;
    do
    {
      if (!*v19)
      {
        break;
      }

      v19 = (v19 + 4);
      v20 -= 4;
    }

    while (v20);
  }

  v21 = v7 | (v8 << 8) | (v11 << 40) | (v12 << 48) | (v13 << 32) | (v14 << 24) | (v15 << 56);
  v22 = v21 >> 40;
  v23 = HIWORD(v21);
  if ((*(a1 + 40) & 4) != 0)
  {
    sub_11FD59C(v36, 0, 0);
    if ((sub_194DB28(v36, *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
    {
LABEL_48:
      sub_11FD994(v36);
      return v21 & 0xFF0000FFFFFFFFFFLL | (v22 << 40) & 0xFF00FFFFFFFFFFFFLL | (v23 << 48);
    }

    v24 = *(a1 + 40);
    if ((v24 & 0x10000) != 0)
    {
      v25 = *(a1 + 424);
      if (*(v25 + 16))
      {
        v26 = *(v25 + 48);
        goto LABEL_41;
      }
    }

    if ((v24 & 1) == 0)
    {
      LOBYTE(v26) = 0;
      v27 = 0;
      if (v38)
      {
        v28 = (v38 + 8);
      }

      else
      {
        v28 = 0;
      }

      v29 = v37;
      if (!v37)
      {
LABEL_30:
        v30 = v28;
LABEL_31:
        if (v30 != &v28[v29])
        {
          v31 = *v30;
          LOBYTE(v22) = v11 & *(v31 + 161);
          LOBYTE(v23) = v12 & *(v31 + 162);
        }

        goto LABEL_48;
      }

LABEL_45:
      v33 = v27 | v26;
      v34 = 8 * v29;
      v30 = v28;
      while (*(*v30 + 144) != v33)
      {
        ++v30;
        v34 -= 8;
        if (!v34)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_31;
    }

    v32 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v32 + 23) < 0)
    {
      if (*(v32 + 8) >= 4uLL)
      {
        v32 = *v32;
LABEL_40:
        v26 = *v32;
LABEL_41:
        v27 = v26 & 0xFFFFFF00;
        if (v38)
        {
          v28 = (v38 + 8);
        }

        else
        {
          v28 = 0;
        }

        v29 = v37;
        if (!v37)
        {
          goto LABEL_30;
        }

        goto LABEL_45;
      }
    }

    else if (*(v32 + 23) >= 4u)
    {
      goto LABEL_40;
    }

    v26 = 0;
    goto LABEL_41;
  }

  return v21 & 0xFF0000FFFFFFFFFFLL | (v22 << 40) & 0xFF00FFFFFFFFFFFFLL | (v23 << 48);
}

void sub_E7A3BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_11FD994(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E7A3D0(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = v1[11];
  if (!v2)
  {
    v2 = &off_2773678;
  }

  v3 = v1 + 41;
  if ((v2[2] & 0x10) != 0)
  {
    v3 = v2 + 11;
  }

  v4 = *v3;
  if (v4 == 3)
  {
    return 2;
  }

  else
  {
    return v4 == 2;
  }
}

BOOL sub_E7A428(uint64_t a1)
{
  v2 = &off_2776700;
  if (*(a1 + 360))
  {
    v2 = *(a1 + 360);
  }

  v3 = *(v2 + 18);
  if (v3)
  {
    v4 = 0;
    v5 = v2[10];
    v6 = 4 * v3;
    do
    {
      v7 = *v5++;
      v4 |= 1 << sub_899A0(v7);
      v6 -= 4;
    }

    while (v6);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v8 = *(a1 + 336);
  if (!v8)
  {
    v8 = &off_2772E28;
  }

  v9 = *(v8 + 32);
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 == 3 && (v4 & 8) == 0)
      {
        return 0;
      }

      return *(a1 + 112) > 2;
    }

    if ((v4 & 4) != 0)
    {
      return *(a1 + 112) > 2;
    }

    return 0;
  }

  if (!v9)
  {
    if (v4)
    {
      return *(a1 + 112) > 2;
    }

    return 0;
  }

  if (v9 == 1 && (v4 & 2) == 0)
  {
    return 0;
  }

  return *(a1 + 112) > 2;
}

BOOL sub_E7A55C(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  return !*(v1 + 32) && (*(a1 + 496) & 0xFFFFFFFE) == 2;
}

BOOL sub_E7A58C(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  if (*(v1 + 32))
  {
    return 0;
  }

  v2 = *(a1 + 376);
  if (!v2)
  {
    v2 = &off_2773488;
  }

  return *(v2 + 10) == 8 && (*(a1 + 43) & 0x20) == 0;
}

uint64_t sub_E7A5E0(uint64_t a1)
{
  if (*(sub_1950CD0(a1 + 16, dword_278D168, qword_278D170) + 57) == 1 && (*(sub_1950CD0(a1 + 16, dword_278D168, qword_278D170) + 24) || *(sub_1950CD0(a1 + 16, dword_278D168, qword_278D170) + 40)) || (*(a1 + 484) & 1) != 0)
  {
    return 3;
  }

  if (*(a1 + 42))
  {
    v4 = *(*(a1 + 424) + 64) - 1;
    if (v4 < 0xD)
    {
      return byte_22ACD80[v4];
    }

    return 0;
  }

  v3 = *(a1 + 540);
  if (v3 <= 1)
  {
    if (v3 <= 1)
    {
      return *(a1 + 88) > 0;
    }

    return 0;
  }

  if (v3 == 2)
  {
    return 3;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      return 6;
    }

    return 0;
  }

  return 5;
}

uint64_t sub_E7A70C(uint64_t a1)
{
  v1 = *(a1 + 424);
  if (!v1)
  {
    v1 = &off_27721B8;
  }

  v2 = *(v1 + 13);
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

BOOL sub_E7A738(uint64_t a1)
{
  v1 = *(a1 + 384);
  if (!v1)
  {
    v1 = &off_27770C8;
  }

  return *(v1 + 6) > 0;
}

uint64_t sub_E7A75C(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  v2 = *(v1 + 74);
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_E7A78C(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return sub_5080D4(*(v1 + 69));
}

uint64_t sub_E7A7A8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 4)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

BOOL sub_E7A7CC(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = v1[12];
  if (!v2)
  {
    v2 = &off_2773798;
  }

  return (*(v2 + 19) - 1) < 2;
}

BOOL sub_E7A808(uint64_t a1)
{
  v1 = *(a1 + 376);
  if (!v1)
  {
    v1 = &off_2773488;
  }

  return *(v1 + 10) == 5;
}

uint64_t sub_E7A82C(uint64_t a1)
{
  if ((*(a1 + 40) & 0x20) == 0)
  {
    return 0;
  }

  sub_1491CC4(v5, *(a1 + 336));
  if ((v5[16] & 0x40) != 0)
  {
    sub_1491CC0(v3, v6);
    if ((v3[16] & 2) != 0)
    {
      v2 = *(v4 + 24);
    }

    else
    {
      v2 = 0;
    }

    sub_14AD440(v3);
  }

  else
  {
    v2 = 0;
  }

  sub_1491E84(v5);
  return v2 & 1;
}

void sub_E7A8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1491E84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E7A8D8(uint64_t a1)
{
  if ((*(a1 + 40) & 0x20) == 0)
  {
    return 0;
  }

  sub_1491CC4(v5, *(a1 + 336));
  if ((v5[16] & 4) != 0)
  {
    sub_1491CB4(v3, v6);
    if ((v3[16] & 2) != 0)
    {
      v2 = *(v4 + 16) & 1;
    }

    else
    {
      v2 = 0;
    }

    sub_14AB24C(v3);
  }

  else
  {
    v2 = 0;
  }

  sub_1491E84(v5);
  return v2;
}

void sub_E7A974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1491E84(va);
  _Unwind_Resume(a1);
}

double sub_E7A988@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 336);
  v6 = sub_3B6890(a2);
  if (sub_E7F33C(a1))
  {
    v7 = &off_2772E28;
    if (v5)
    {
      v7 = v5;
    }

    v8 = *(v6 + 4);
    v9 = v7[11];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = &off_2773678;
    }

    sub_E7F3EC(v8, v10, a3);
  }

  else
  {
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 152) = 0;
    *(a3 + 136) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 56) = 0u;
    *a3 = 0x7FFFFFFF;
    *(a3 + 4) = 0x7FFFFFFF7FFFFFFFLL;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0;
    sub_5F328(a3 + 56);
    *(a3 + 96) = 0;
    sub_5F328(a3 + 104);
    result = NAN;
    *(a3 + 144) = xmmword_229BA60;
  }

  return result;
}

void sub_E7AA8C(_Unwind_Exception *a1)
{
  sub_5C010(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

BOOL sub_E7AAC4(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  if (*(v1 + 32) != 2)
  {
    return 0;
  }

  if (*(a1 + 42))
  {
    v2 = *(a1 + 424);
    if ((*(v2 + 16) & 8) != 0 && (*(v2 + 60) - 1) < 2)
    {
      return 1;
    }
  }

  v4 = sub_E7A5E0(a1);
  return v4 == 8 || v4 == 4 || v4 == 2;
}

uint64_t sub_E7AB44(uint64_t a1)
{
  if ((*(a1 + 42) & 1) != 0 && (v1 = *(a1 + 424), *(v1 + 32) >= 1) && (v2 = *(*(v1 + 40) + 8), (*(v2 + 40) & 0x20) != 0))
  {
    return nullsub_1(*(v2 + 88));
  }

  else
  {
    return -1;
  }
}

void **sub_E7AB7C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_154CF7C(v3 - 88);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_E7BD4C(_Unwind_Exception *a1)
{
  sub_E7AB7C((v2 - 176));
  sub_528AB4(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_E7BE68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_E86338(a1, a2);
  if ((*(a1 + 40) & 0x80) == 0)
  {
    if (*(a1 + 128) <= 0)
    {
      return result;
    }

LABEL_6:
    v5 = *(*(a1 + 136) + 8);
    if ((*(v5 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v5 + 8))
      {
        return result;
      }
    }

    else if (!*(v5 + 23))
    {
      return result;
    }

    return sub_4EC344(a2, v5);
  }

  if ((*(*(a1 + 320) + 263) & 1) == 0 && *(a1 + 128) >= 1)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_E7BF98@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 104) >= 1)
  {
    sub_14CD334(v3, *(*(result + 112) + 8));
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_E7C07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  v13 = v12;
  *(v11 + 8) = v13;
  sub_E8B92C(&a9);
  sub_154CF7C(&a11);
  _Unwind_Resume(a1);
}

void sub_E7C0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_E8B92C(&a9);
  sub_154CF7C(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_E7C0C0(uint64_t a1)
{
  v2 = &off_2776700;
  if (*(a1 + 320))
  {
    v2 = *(a1 + 320);
  }

  v3 = *(v2 + 18);
  if (v3)
  {
    v4 = 0;
    v5 = v2[10];
    v6 = 4 * v3;
    do
    {
      v7 = *v5++;
      v4 |= 1 << sub_899A0(v7);
      v6 -= 4;
    }

    while (v6);
    LOBYTE(v3) = v4 & 1;
  }

  v8 = *(a1 + 312);
  if (!v8)
  {
    v8 = &off_2772E28;
  }

  return (*(v8 + 32) != 0) | (v3 & 1);
}

unint64_t sub_E7C160(uint64_t a1)
{
  if (*(a1 + 320))
  {
    v2 = *(a1 + 320);
  }

  else
  {
    v2 = &off_2776700;
  }

  if (*(a1 + 312))
  {
    v3 = *(a1 + 312);
  }

  else
  {
    v3 = &off_2772E28;
  }

  v4 = &off_2773750;
  if (v3[15])
  {
    v4 = v3[15];
  }

  v5 = v4[3];
  v6 = &off_2773710;
  if (v5)
  {
    v6 = v5;
  }

  v7 = *(v6 + 26);
  v8 = *(v6 + 25);
  v9 = v3[11];
  if (!v9)
  {
    v9 = &off_2773678;
  }

  v10 = v9[3];
  if (!v10)
  {
    v10 = &off_2773640;
  }

  v11 = *(v10 + 48);
  v12 = *(v10 + 49);
  v13 = *(v2 + 244);
  v14 = *(v2 + 253);
  v15 = *(v9 + 41);
  v16 = v3[13];
  v17 = &off_2773810;
  if (v16)
  {
    v17 = v16;
  }

  v18 = *(v17 + 6);
  if (v18)
  {
    v19 = v17[4];
    v20 = 4 * v18;
    do
    {
      if (!*v19)
      {
        break;
      }

      v19 = (v19 + 4);
      v20 -= 4;
    }

    while (v20);
  }

  v21 = v7 | (v8 << 8) | (v11 << 40) | (v12 << 48) | (v13 << 32) | (v14 << 24) | (v15 << 56);
  v22 = v21 >> 40;
  v23 = HIWORD(v21);
  if ((*(a1 + 40) & 2) != 0)
  {
    sub_11FD59C(v35, 0, 0);
    if ((sub_194DB28(v35, *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
    {
LABEL_42:
      sub_11FD994(v35);
      return v21 & 0xFF0000FFFFFFFFFFLL | (v22 << 40) & 0xFF00FFFFFFFFFFFFLL | (v23 << 48);
    }

    if ((*(a1 + 41) & 0x10) != 0)
    {
      v24 = *(*(a1 + 360) + 160);
      goto LABEL_35;
    }

    v24 = *(a1 + 80);
    if (!v24)
    {
      goto LABEL_27;
    }

    v25 = *(*(a1 + 88) + 8);
    if ((*(v25 + 40) & 1) == 0)
    {
      LOBYTE(v24) = 0;
LABEL_27:
      v26 = 0;
      if (v37)
      {
        v27 = (v37 + 8);
      }

      else
      {
        v27 = 0;
      }

      v28 = v36;
      if (!v36)
      {
LABEL_31:
        v29 = v27;
LABEL_32:
        if (v29 != &v27[v28])
        {
          v30 = *v29;
          LOBYTE(v22) = v11 & *(v30 + 161);
          LOBYTE(v23) = v12 & *(v30 + 162);
        }

        goto LABEL_42;
      }

LABEL_39:
      v31 = v26 | v24;
      v32 = 8 * v28;
      v29 = v27;
      while (*(*v29 + 144) != v31)
      {
        ++v29;
        v32 -= 8;
        if (!v32)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_32;
    }

    v34 = *(v25 + 456) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v34 + 23) < 0)
    {
      if (*(v34 + 8) >= 4uLL)
      {
        v34 = *v34;
LABEL_50:
        v24 = *v34;
LABEL_35:
        v26 = v24 & 0xFFFFFF00;
        if (v37)
        {
          v27 = (v37 + 8);
        }

        else
        {
          v27 = 0;
        }

        v28 = v36;
        if (!v36)
        {
          goto LABEL_31;
        }

        goto LABEL_39;
      }
    }

    else if (*(v34 + 23) >= 4u)
    {
      goto LABEL_50;
    }

    v24 = 0;
    goto LABEL_35;
  }

  return v21 & 0xFF0000FFFFFFFFFFLL | (v22 << 40) & 0xFF00FFFFFFFFFFFFLL | (v23 << 48);
}

void sub_E7C400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_11FD994(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E7C414(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = v1[11];
  if (!v2)
  {
    v2 = &off_2773678;
  }

  v3 = v1 + 41;
  if ((v2[2] & 0x10) != 0)
  {
    v3 = v2 + 11;
  }

  v4 = *v3;
  if (v4 == 3)
  {
    return 2;
  }

  else
  {
    return v4 == 2;
  }
}

BOOL sub_E7C46C(uint64_t a1)
{
  v2 = &off_2776700;
  if (*(a1 + 320))
  {
    v2 = *(a1 + 320);
  }

  v3 = *(v2 + 18);
  if (v3)
  {
    v4 = 0;
    v5 = v2[10];
    v6 = 4 * v3;
    do
    {
      v7 = *v5++;
      v4 |= 1 << sub_899A0(v7);
      v6 -= 4;
    }

    while (v6);
    LODWORD(v3) = v4 & 1;
  }

  v8 = &off_2772E28;
  if (*(a1 + 312))
  {
    v8 = *(a1 + 312);
  }

  if (*(v8 + 32))
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 == 0;
  }

  return !v9 && *(a1 + 152) > 1;
}

BOOL sub_E7C52C(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_27770C8;
  }

  return *(v1 + 6) > 0;
}

uint64_t sub_E7C550(uint64_t a1)
{
  if ((*(a1 + 40) & 0x40) == 0)
  {
    return 0;
  }

  sub_1491CC4(v5, *(a1 + 312));
  if ((v5[16] & 0x40) != 0)
  {
    sub_1491CC0(v3, v6);
    if ((v3[16] & 2) != 0)
    {
      v2 = *(v4 + 24);
    }

    else
    {
      v2 = 0;
    }

    sub_14AD440(v3);
  }

  else
  {
    v2 = 0;
  }

  sub_1491E84(v5);
  return v2 & 1;
}

void sub_E7C5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1491E84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E7C5FC(uint64_t a1)
{
  if ((*(a1 + 40) & 0x40) == 0)
  {
    return 0;
  }

  sub_1491CC4(v5, *(a1 + 312));
  if ((v5[16] & 4) != 0)
  {
    sub_1491CB4(v3, v6);
    if ((v3[16] & 2) != 0)
    {
      v2 = *(v4 + 16) & 1;
    }

    else
    {
      v2 = 0;
    }

    sub_14AB24C(v3);
  }

  else
  {
    v2 = 0;
  }

  sub_1491E84(v5);
  return v2;
}

void sub_E7C698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1491E84(va);
  _Unwind_Resume(a1);
}

double sub_E7C6AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 312);
  v6 = sub_3B6890(a2);
  if (sub_E7F8D4(a1))
  {
    v7 = &off_2772E28;
    if (v5)
    {
      v7 = v5;
    }

    v8 = *(v6 + 4);
    v9 = v7[11];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = &off_2773678;
    }

    sub_E7F3EC(v8, v10, a3);
  }

  else
  {
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 152) = 0;
    *(a3 + 136) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 56) = 0u;
    *a3 = 0x7FFFFFFF;
    *(a3 + 4) = 0x7FFFFFFF7FFFFFFFLL;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0;
    sub_5F328(a3 + 56);
    *(a3 + 96) = 0;
    sub_5F328(a3 + 104);
    result = NAN;
    *(a3 + 144) = xmmword_229BA60;
  }

  return result;
}

void sub_E7C7B0(_Unwind_Exception *a1)
{
  sub_5C010(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_E7D8F8(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27B9BC0);
  sub_E7AB7C((v2 - 176));
  sub_528AB4(v1);
  _Unwind_Resume(a1);
}

void sub_E7D920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  sub_E7AB7C((v29 - 176));
  sub_528AB4(v28);
  _Unwind_Resume(a1);
}

double sub_E7DA20@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 264) = 0;
  *(a1 + 396) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 364) = 0u;
  *(a1 + 448) = 0x3FF0000000000000;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 480) = 5;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0x7FFFFFFF;
  *(a1 + 624) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 601) = 0u;
  result = NAN;
  *(a1 + 640) = -1;
  *(a1 + 648) = 0x7FFFFFFF;
  *(a1 + 660) = 0;
  *(a1 + 652) = 0;
  *(a1 + 664) = -1;
  *(a1 + 672) = -1;
  *(a1 + 680) = 0;
  return result;
}

uint64_t sub_E7DAD0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 80);
  if (v3 >= 2)
  {
    sub_14CD334(v4, *(*(result + 88) + 8 * (v3 - 1) + 8));
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_E7DBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  v13 = v12;
  *(v11 + 8) = v13;
  sub_E8B92C(&a9);
  sub_154CF7C(&a11);
  _Unwind_Resume(a1);
}

void sub_E7DBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_E8B92C(&a9);
  sub_154CF7C(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_E7DBEC(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v1 = *(a1 + 136);
  }

  else
  {
    v1 = &off_2776700;
  }

  if (*(a1 + 152))
  {
    v2 = *(a1 + 152);
  }

  else
  {
    v2 = &off_2772E28;
  }

  v3 = v2[15];
  if (!v3)
  {
    v3 = &off_2773750;
  }

  v4 = v3[3];
  v5 = &off_2773710;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 26);
  v7 = *(v5 + 25);
  if (v2[11])
  {
    v8 = v2[11];
  }

  else
  {
    v8 = &off_2773678;
  }

  v9 = &off_2773640;
  if (v8[3])
  {
    v9 = v8[3];
  }

  v10 = *(v9 + 48);
  v11 = *(v9 + 49);
  v12 = *(v1 + 244);
  v13 = *(v1 + 253);
  v14 = *(v8 + 41);
  v15 = v2[13];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &off_2773810;
  }

  v17 = *(v16 + 6);
  if (v17)
  {
    v18 = v16[4];
    v19 = 4 * v17;
    do
    {
      if (!*v18)
      {
        break;
      }

      v18 = (v18 + 4);
      v19 -= 4;
    }

    while (v19);
  }

  return v6 | (v7 << 8) | (v10 << 40) | (v11 << 48) | (v12 << 32) | (v13 << 24) | (v14 << 56);
}

BOOL sub_E7DD0C(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    v1 = &off_27770C8;
  }

  return *(v1 + 6) > 0;
}

uint64_t sub_E7DD30(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  v2 = *(v1 + 74);
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

BOOL sub_E7DD60(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = v1[12];
  if (!v2)
  {
    v2 = &off_2773798;
  }

  return (*(v2 + 19) - 1) < 2;
}

uint64_t sub_E7DD9C(uint64_t *a1)
{
  v2 = sub_6EAFC();
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v3 = sub_12330DC(1u);
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = 0;
  v13 = v5;
  v8[0] = qword_27BAC10[0];
  v8[1] = unk_27BAC18;
  v9 = 2;
  v10 = (unk_27BAC18 - qword_27BAC10[0]) >> 3;
  v6 = (*(*v2 + 40))(v2, v11, v8);
  if ((v6 & 0x80000000) == 0 && v6 < ((unk_27BAC18 - qword_27BAC10[0]) >> 3))
  {
    v3 = *(8 * (v6 & 0x7FFFFFFF) + qword_27BAC10[0]);
  }

  v11[0] = v3;
  return sub_1232E98(v11);
}

uint64_t sub_E7DEE0(__int128 *a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (!v1)
  {
    return 0;
  }

  v3 = sub_6EC50();
  if (*(a1 + 23) < 0)
  {
    sub_325C(&v19, *a1, *(a1 + 1));
  }

  else
  {
    v19 = *a1;
    v20 = *(a1 + 2);
  }

  sub_5275EC(&__p, &v19, 1uLL);
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v5 = sub_12330DC(0x14u);
  v16[0] = __p;
  v16[1] = v12;
  v17 = 0;
  v18 = 0xAAAAAAAAAAAAAAABLL * ((v12 - __p) >> 3);
  v13[0] = qword_27BAC10[0];
  v13[1] = unk_27BAC18;
  v14 = 2;
  v15 = (unk_27BAC18 - qword_27BAC10[0]) >> 3;
  v6 = (*(*v3 + 40))(v3, v16, v13);
  if ((v6 & 0x80000000) == 0 && v6 < ((unk_27BAC18 - qword_27BAC10[0]) >> 3))
  {
    v5 = *(8 * (v6 & 0x7FFFFFFF) + qword_27BAC10[0]);
  }

  v16[0] = v5;
  v7 = __p;
  if (__p)
  {
    v8 = v12;
    v9 = __p;
    if (v12 != __p)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v12 = v7;
    operator delete(v9);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  return sub_1232E98(v16);
}

void sub_E7E0EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_27B9BC8);
  sub_1A104(va);
  if (*(v2 - 41) < 0)
  {
    operator delete(*(v2 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_E7E130(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 352);
  if (!v4)
  {
    v4 = &off_2776700;
  }

  v5 = v4[6];
  if (v5)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 10);
  if (!v7)
  {
    if (*(a2 + 72) == 1)
    {
LABEL_34:
      v14 = sub_E7DEE0(a2);
      if (v14)
      {
        sub_123316C(v14);
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        operator new();
      }
    }

LABEL_36:
    sub_123316C(0xBu);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  v15 = a2;
  v8 = 8 * v7;
  while (1)
  {
    v9 = *(*v6 + 23);
    if (v9 >= 0)
    {
      v10 = *v6;
    }

    else
    {
      v10 = **v6;
    }

    if (v9 >= 0)
    {
      v11 = *(*v6 + 23);
    }

    else
    {
      v11 = (*v6)[1];
    }

    if (v11 >= 0x1F)
    {
      v12 = 31;
    }

    else
    {
      v12 = v11;
    }

    if (v11)
    {
      switch(v11)
      {
        case 1uLL:
          *&v17 = *v10;
          v13 = 1;
          break;
        case 2uLL:
          *&v17 = *v10;
          v13 = 2;
          break;
        case 3uLL:
          *&v17 = *v10 | (v10[2] << 16);
          v13 = 3;
          break;
        default:
          sub_852E4(v10, v12, &v17);
          goto LABEL_27;
      }

      *(&v17 + 1) = v13;
      v18 = 0u;
      v19 = 0u;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }

LABEL_27:
    v16 = sub_1232F28(&v17, 0);
    if (sub_1232E98(&v16))
    {
      operator new();
    }

    ++v6;
    v8 -= 8;
    if (!v8)
    {
      a2 = v15;
      if (*(v15 + 72) == 1)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }
}

void sub_E7E410(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_E7E444(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 56);
  if (!v6)
  {
    if (*(a2 + 72) == 1)
    {
LABEL_32:
      v13 = sub_E7DEE0(a2);
      if (v13)
      {
        sub_123316C(v13);
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        operator new();
      }
    }

LABEL_34:
    sub_123316C(0xBu);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  v14 = a2;
  v7 = 8 * v6;
  while (1)
  {
    v8 = *(*v5 + 23);
    if (v8 >= 0)
    {
      v9 = *v5;
    }

    else
    {
      v9 = **v5;
    }

    if (v8 >= 0)
    {
      v10 = *(*v5 + 23);
    }

    else
    {
      v10 = (*v5)[1];
    }

    if (v10 >= 0x1F)
    {
      v11 = 31;
    }

    else
    {
      v11 = v10;
    }

    if (v10)
    {
      switch(v10)
      {
        case 1uLL:
          *&v16 = *v9;
          v12 = 1;
          break;
        case 2uLL:
          *&v16 = *v9;
          v12 = 2;
          break;
        case 3uLL:
          *&v16 = *v9 | (v9[2] << 16);
          v12 = 3;
          break;
        default:
          sub_852E4(v9, v11, &v16);
          goto LABEL_25;
      }

      *(&v16 + 1) = v12;
      v17 = 0u;
      v18 = 0u;
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

LABEL_25:
    v15 = sub_1232F28(&v16, 0);
    if (sub_1232E98(&v15))
    {
      operator new();
    }

    ++v5;
    v7 -= 8;
    if (!v7)
    {
      a2 = v14;
      if (*(v14 + 72) == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_34;
    }
  }
}

void sub_E7E710(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E7E744(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 352))
  {
    v3 = *(a1 + 352);
  }

  else
  {
    v3 = &off_2776700;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v4 = v3[6];
  if (v4)
  {
    v5 = (v4 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 10);
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = 0;
  v8 = 8 * v6;
  do
  {
    v10 = *v5;
    if (v7 < v23)
    {
      if (*(v10 + 23) < 0)
      {
        sub_325C(v7, *v10, *(v10 + 8));
      }

      else
      {
        v9 = *v10;
        *(v7 + 16) = *(v10 + 16);
        *v7 = v9;
      }

      v7 += 24;
    }

    else
    {
      v7 = sub_1CEE8(&__p, v10);
    }

    v22 = v7;
    ++v5;
    v8 -= 8;
  }

  while (v8);
  if (!*(v3 + 10))
  {
LABEL_23:
    v14 = 0;
    v15 = __p;
    if (!__p)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v11 = sub_6E9A8();
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v12 = sub_12330DC(0x14u);
  v27[0] = __p;
  v27[1] = v22;
  v28 = 0;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v22 - __p) >> 3);
  v24[0] = qword_27BAC10[0];
  v24[1] = unk_27BAC18;
  v25 = 2;
  v26 = (unk_27BAC18 - qword_27BAC10[0]) >> 3;
  v13 = (*(*v11 + 40))(v11, v27, v24);
  if ((v13 & 0x80000000) == 0 && v13 < ((unk_27BAC18 - qword_27BAC10[0]) >> 3))
  {
    v12 = *(8 * (v13 & 0x7FFFFFFF) + qword_27BAC10[0]);
  }

  v20 = v12;
  v14 = sub_1232E98(&v20);
  v15 = __p;
  if (__p)
  {
LABEL_24:
    v16 = v22;
    v17 = v15;
    if (v22 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v22 = v15;
    operator delete(v17);
  }

LABEL_31:
  if (!v14)
  {
    if (*(a2 + 72) != 1)
    {
      return 11;
    }

    v14 = sub_E7DEE0(a2);
    if (!v14)
    {
      return 11;
    }
  }

  return v14;
}

void sub_E7E9A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_27B9BC8);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7E9C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7E9DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7E9F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7EA04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7EA1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E7EA30(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    goto LABEL_20;
  }

  v7 = 0;
  v8 = 8 * v5;
  do
  {
    v10 = *v4;
    if (v7 < v23)
    {
      if (*(v10 + 23) < 0)
      {
        sub_325C(v7, *v10, *(v10 + 8));
      }

      else
      {
        v9 = *v10;
        *(v7 + 16) = *(v10 + 16);
        *v7 = v9;
      }

      v7 += 24;
    }

    else
    {
      v7 = sub_1CEE8(&__p, v10);
    }

    v22 = v7;
    ++v4;
    v8 -= 8;
  }

  while (v8);
  if (!*(a1 + 56))
  {
LABEL_20:
    v14 = 0;
    v15 = __p;
    if (!__p)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v11 = sub_6E9A8();
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v12 = sub_12330DC(0x14u);
  v27[0] = __p;
  v27[1] = v22;
  v28 = 0;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v22 - __p) >> 3);
  v24[0] = qword_27BAC10[0];
  v24[1] = unk_27BAC18;
  v25 = 2;
  v26 = (unk_27BAC18 - qword_27BAC10[0]) >> 3;
  v13 = (*(*v11 + 40))(v11, v27, v24);
  if ((v13 & 0x80000000) == 0 && v13 < ((unk_27BAC18 - qword_27BAC10[0]) >> 3))
  {
    v12 = *(8 * (v13 & 0x7FFFFFFF) + qword_27BAC10[0]);
  }

  v20 = v12;
  v14 = sub_1232E98(&v20);
  v15 = __p;
  if (__p)
  {
LABEL_21:
    v16 = v22;
    v17 = v15;
    if (v22 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v22 = v15;
    operator delete(v17);
  }

LABEL_28:
  if (!v14)
  {
    if (*(a2 + 72) != 1)
    {
      return 11;
    }

    v14 = sub_E7DEE0(a2);
    if (!v14)
    {
      return 11;
    }
  }

  return v14;
}

void sub_E7EC84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_27B9BC8);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7ECA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7ECB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7ECCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7ECE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7ECF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7ED0C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 352);
  if (!v3)
  {
    v3 = &off_2776700;
  }

  v4 = v3[25];
  v5 = &off_277EBA8;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 6);
  if (!v6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  v7 = v5[4];
  v8 = 4 * v6;
  do
  {
    v9 = *v7;
    if (*v7 == 2)
    {
      operator new();
    }

    if (v9 == 1)
    {
      operator new();
    }

    if (!v9)
    {
      operator new();
    }

    v7 = (v7 + 4);
    v8 -= 4;
  }

  while (v8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_E7EFF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_E7F024(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    v3 = &off_278B980;
  }

  v4 = v3[37];
  v5 = &off_277EBA8;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 6);
  if (!v6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  v7 = v5[4];
  v8 = 4 * v6;
  do
  {
    v9 = *v7;
    if (*v7 == 2)
    {
      operator new();
    }

    if (v9 == 1)
    {
      operator new();
    }

    if (!v9)
    {
      operator new();
    }

    v7 = (v7 + 4);
    v8 -= 4;
  }

  while (v8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_E7F310(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E7F33C(uint64_t a1)
{
  if ((*(a1 + 40) & 0x20) == 0)
  {
    return 0;
  }

  sub_1491CC4(v5, *(a1 + 336));
  if ((v5[16] & 4) != 0)
  {
    sub_1491CB4(v3, v6);
    if ((v3[16] & 2) != 0)
    {
      v2 = (*(v4 + 16) >> 1) & 1;
    }

    else
    {
      v2 = 0;
    }

    sub_14AB24C(v3);
  }

  else
  {
    v2 = 0;
  }

  sub_1491E84(v5);
  return v2;
}

void sub_E7F3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1491E84(va);
  _Unwind_Resume(a1);
}

void sub_E7F3EC(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = *(a2 + 32);
  if (!v6)
  {
    v6 = &off_2773608;
  }

  v7 = v6[4];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &off_2773580;
  }

  v64 = 0;
  v65 = 0;
  v63 = 0;
  if ((v8[2] & 0x10) != 0)
  {
    sub_1478514(v59, v8[7]);
    v10 = v61;
    if (v61 >= 1)
    {
      v11 = 8;
      do
      {
        v13 = *(v62 + v11);
        if ((v13[6] - 1) >= 0xA)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13[6];
        }

        LODWORD(v9) = v13[7];
        v15 = v9 * 1000.0;
        if (v15 < 4.50359963e15)
        {
          v15 = (((v15 + v15) + 1) >> 1);
        }

        v16 = v15;
        LODWORD(v15) = v13[8];
        v17 = llround(*&v15 * 1000.0);
        v18 = v64;
        if (v64 < v65)
        {
          sub_96DCC(v64, v14, v16, v17, 0);
          v12 = v18 + 16;
        }

        else
        {
          v19 = (v64 - v63) >> 4;
          if ((v19 + 1) >> 60)
          {
            sub_1794();
          }

          v20 = (v65 - v63) >> 3;
          if (v20 <= v19 + 1)
          {
            v20 = v19 + 1;
          }

          if (v65 - v63 >= 0x7FFFFFFFFFFFFFF0)
          {
            v21 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            if (!(v21 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v22 = sub_96DCC(16 * v19, v14, v16, v17, 0);
          v12 = (v22 + 16);
          v23 = v63;
          v24 = (v22 - (v64 - v63));
          memcpy(v24, v63, v64 - v63);
          v63 = v24;
          v65 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        v64 = v12;
        v11 += 8;
        --v10;
      }

      while (v10);
    }

    sub_14785A0(v59);
    v4 = a1;
    v3 = a2;
  }

  sub_E842C0(v59, v8[3] & 0xFFFFFFFFFFFFFFFELL);
  sub_E842C0(v57, v8[4] & 0xFFFFFFFFFFFFFFFELL);
  v25 = *(v8 + 4);
  if ((v25 & 0x800) != 0)
  {
    v26 = *(v8 + 22) + 978307200;
    if ((v25 & 0x20) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v26 = 0x7FFFFFFF;
    if ((v25 & 0x20) != 0)
    {
LABEL_31:
      v27 = *(v8 + 16);
      goto LABEL_34;
    }
  }

  v27 = 0xFFFFFFFFLL;
LABEL_34:
  v28 = *(v3 + 32);
  if (!v28)
  {
    v28 = &off_2773608;
  }

  v29 = v28[4];
  if (!v29)
  {
    v29 = &off_2773580;
  }

  v30 = *(v29 + 21);
  v33 = v29 + 9;
  v31 = *(v29 + 18);
  v32 = *(v33 + 1);
  if (v32 >= v31)
  {
    v34 = v31;
  }

  else
  {
    v34 = v32;
  }

  if (v31 >= v30)
  {
    v35 = v34;
  }

  else
  {
    v35 = v30;
  }

  sub_456538(&v66, 1000 * v35, 1000 * v30, 1000 * v32);
  v55 = v66;
  v56 = v67;
  v36 = *(v3 + 32);
  if (!v36)
  {
    v36 = &off_2773608;
  }

  v37 = v36[5];
  if (!v37)
  {
    v37 = &off_27735E8;
  }

  v38 = *(v37 + 4);
  v40 = *(v37 + 6);
  v39 = *(v37 + 7);
  v41 = v40 == 1;
  v42 = v40 == 1;
  v43 = !v41;
  if (v39 == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = v43;
  }

  if ((~v38 & 3) != 0)
  {
    v44 = 0;
  }

  if ((v38 & v42) != 0)
  {
    v44 = 2;
  }

  sub_E6EFFC(a3, &v55, *(v8 + 80), v59, v57, &v63, v4, v26, v27, SHIDWORD(v27), v44);
  v45 = __p;
  if (__p)
  {
    do
    {
      v46 = *v45;
      v47 = *(v45 + 12);
      if (v47 != -1)
      {
        (off_26743C0[v47])(&v66, v45 + 5);
      }

      *(v45 + 12) = -1;
      if (*(v45 + 39) < 0)
      {
        operator delete(v45[2]);
      }

      operator delete(v45);
      v45 = v46;
    }

    while (v46);
  }

  v48 = v57[0];
  v57[0] = 0;
  if (v48)
  {
    operator delete(v48);
  }

  v49 = v60;
  if (v60)
  {
    do
    {
      v50 = *v49;
      v51 = *(v49 + 12);
      if (v51 != -1)
      {
        (off_26743C0[v51])(v57, v49 + 5);
      }

      *(v49 + 12) = -1;
      if (*(v49 + 39) < 0)
      {
        operator delete(v49[2]);
      }

      operator delete(v49);
      v49 = v50;
    }

    while (v50);
  }

  v52 = v59[0];
  v59[0] = 0;
  if (v52)
  {
    operator delete(v52);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }
}

void sub_E7F854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v24 = *(v22 - 144);
  if (v24)
  {
    *(v22 - 136) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E7F8D4(uint64_t a1)
{
  if ((*(a1 + 40) & 0x40) == 0)
  {
    return 0;
  }

  sub_1491CC4(v5, *(a1 + 312));
  if ((v5[16] & 4) != 0)
  {
    sub_1491CB4(v3, v6);
    if ((v3[16] & 2) != 0)
    {
      v2 = (*(v4 + 16) >> 1) & 1;
    }

    else
    {
      v2 = 0;
    }

    sub_14AB24C(v3);
  }

  else
  {
    v2 = 0;
  }

  sub_1491E84(v5);
  return v2;
}

void sub_E7F970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1491E84(va);
  _Unwind_Resume(a1);
}

void sub_E7F984(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = &off_2772E28;
  if (*(a1 + 336))
  {
    v3 = *(a1 + 336);
  }

  v4 = v3[11];
  if (!v4)
  {
    v4 = &off_2773678;
  }

  v5 = v4[3];
  if (!v5)
  {
    v5 = &off_2773640;
  }

  v6 = v5[5];
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 8);
  if (v8)
  {
    v9 = 0;
    v10 = 8 * v8;
    do
    {
      while (1)
      {
        v11 = *(*v7 + 3);
        if (!v11)
        {
          v11 = &off_27734E8;
        }

        v12 = *(*v7 + 8) >= 3u ? 0 : *(*v7 + 8);
        v13 = nullsub_1(v11[3]);
        v14 = a2[2];
        if (v9 >= v14)
        {
          break;
        }

        *v9 = v13;
        *(v9 + 8) = v12;
        v9 += 16;
        a2[1] = v9;
        ++v7;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_29;
        }
      }

      v15 = v9;
      v16 = v9 >> 4;
      v17 = v16 + 1;
      if ((v16 + 1) >> 60)
      {
        *a2 = 0;
        sub_1794();
      }

      if (v14 >> 3 > v17)
      {
        v17 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        if (!(v18 >> 60))
        {
          operator new();
        }

        *a2 = 0;
        sub_1808();
      }

      v19 = 16 * v16;
      *v19 = v13;
      *(v19 + 8) = v12;
      v9 = 16 * v16 + 16;
      memcpy(0, 0, v15);
      a2[1] = v9;
      a2[2] = 0;
      a2[1] = v9;
      ++v7;
      v10 -= 8;
    }

    while (v10);
  }

LABEL_29:
  *a2 = 0;
}

void sub_E7FB5C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E7FB84(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 3)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

void sub_E7FB98(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = &off_2772E28;
  if (*(a1 + 312))
  {
    v3 = *(a1 + 312);
  }

  v4 = v3[11];
  if (!v4)
  {
    v4 = &off_2773678;
  }

  v5 = v4[3];
  if (!v5)
  {
    v5 = &off_2773640;
  }

  v6 = v5[5];
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 8);
  if (v8)
  {
    v9 = 0;
    v10 = 8 * v8;
    do
    {
      while (1)
      {
        v11 = *(*v7 + 3);
        if (!v11)
        {
          v11 = &off_27734E8;
        }

        v12 = *(*v7 + 8) >= 3u ? 0 : *(*v7 + 8);
        v13 = nullsub_1(v11[3]);
        v14 = a2[2];
        if (v9 >= v14)
        {
          break;
        }

        *v9 = v13;
        *(v9 + 8) = v12;
        v9 += 16;
        a2[1] = v9;
        ++v7;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_29;
        }
      }

      v15 = v9;
      v16 = v9 >> 4;
      v17 = v16 + 1;
      if ((v16 + 1) >> 60)
      {
        *a2 = 0;
        sub_1794();
      }

      if (v14 >> 3 > v17)
      {
        v17 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        if (!(v18 >> 60))
        {
          operator new();
        }

        *a2 = 0;
        sub_1808();
      }

      v19 = 16 * v16;
      *v19 = v13;
      *(v19 + 8) = v12;
      v9 = 16 * v16 + 16;
      memcpy(0, 0, v15);
      a2[1] = v9;
      a2[2] = 0;
      a2[1] = v9;
      ++v7;
      v10 -= 8;
    }

    while (v10);
  }

LABEL_29:
  *a2 = 0;
}

void sub_E7FD70(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E7FD98(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((v1 & 0x10000) != 0)
  {
    v2 = *(a1 + 424);
    if (*(v2 + 16))
    {
      return *(v2 + 48) | 0x100000000;
    }
  }

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v4 = (*(a1 + 296) & 0xFFFFFFFFFFFFFFFELL);
  if (*(v4 + 23) < 0)
  {
    if (*(v4 + 1) < 4uLL)
    {
      return 0x100000000;
    }

    v4 = *v4;
  }

  else if (*(v4 + 23) < 4u)
  {
    return 0x100000000;
  }

  return *v4 | 0x100000000;
}

unint64_t sub_E7FE50(uint64_t a1)
{
  if (*(a1 + 352))
  {
    v2 = *(a1 + 352);
  }

  else
  {
    v2 = &off_2776700;
  }

  v3 = &off_2773750;
  if (*(a1 + 376))
  {
    v3 = *(a1 + 376);
  }

  v4 = v3[3];
  v5 = &off_2773710;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 26);
  v7 = *(v5 + 25);
  v8 = *(a1 + 320);
  if (!v8)
  {
    v8 = &off_2773678;
  }

  v9 = v8[3];
  if (!v9)
  {
    v9 = &off_2773640;
  }

  v10 = *(v9 + 48);
  v11 = *(v9 + 49);
  v12 = *(v2 + 244);
  v13 = *(v2 + 253);
  v14 = *(v8 + 41);
  v15 = &off_2773810;
  if (*(a1 + 336))
  {
    v15 = *(a1 + 336);
  }

  v16 = *(v15 + 6);
  if (v16)
  {
    v17 = v15[4];
    v18 = 4 * v16;
    do
    {
      if (!*v17)
      {
        break;
      }

      v17 = (v17 + 4);
      v18 -= 4;
    }

    while (v18);
  }

  v19 = v6 | (v7 << 8) | (v10 << 40) | (v11 << 48) | (v12 << 32) | (v13 << 24) | (v14 << 56);
  v20 = v19 >> 40;
  v21 = HIWORD(v19);
  if (*(a1 + 40))
  {
    sub_11FD59C(v29, 0, 0);
    if ((sub_194DB28(v29, *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
    {
LABEL_41:
      sub_11FD994(v29);
      return v19 & 0xFF0000FFFFFFFFFFLL | (v20 << 40) & 0xFF00FFFFFFFFFFFFLL | (v21 << 48);
    }

    if ((*(a1 + 40) & 2) != 0)
    {
      v22 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v22 + 23) < 0)
      {
        if (*(v22 + 8) >= 4uLL)
        {
          v22 = *v22;
          goto LABEL_34;
        }
      }

      else if (*(v22 + 23) >= 4u)
      {
LABEL_34:
        v23 = *v22;
        if (v31)
        {
          v24 = v31 + 8;
        }

        else
        {
          v24 = 0;
        }

        v25 = v30;
        if (!v30)
        {
LABEL_38:
          v27 = v24;
LABEL_39:
          if (v27 != v24 + 8 * v25)
          {
            LOBYTE(v20) = v10 & *(*v27 + 161);
            LOBYTE(v21) = v11 & *(*v27 + 162);
          }

          goto LABEL_41;
        }

LABEL_29:
        v26 = 8 * v25;
        v27 = v24;
        while (*(*v27 + 144) != v23)
        {
          v27 += 8;
          v26 -= 8;
          if (!v26)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_39;
      }
    }

    v23 = 0;
    if (v31)
    {
      v24 = v31 + 8;
    }

    else
    {
      v24 = 0;
    }

    v25 = v30;
    if (!v30)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  return v19 & 0xFF0000FFFFFFFFFFLL | (v20 << 40) & 0xFF00FFFFFFFFFFFFLL | (v21 << 48);
}

void sub_E800A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_11FD994(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E800B8(uint64_t a1)
{
  if ((*(a1 + 41) & 0x10) != 0)
  {
    return *(*(a1 + 360) + 160) & 0xFFFFFF00 | *(*(a1 + 360) + 160) | 0x100000000;
  }

  if (!*(a1 + 80))
  {
    return 0;
  }

  v1 = *(*(a1 + 88) + 8);
  if ((*(v1 + 40) & 1) == 0)
  {
    return 0;
  }

  v3 = (*(v1 + 456) & 0xFFFFFFFFFFFFFFFELL);
  if (*(v3 + 23) < 0)
  {
    if (*(v3 + 1) < 4uLL)
    {
      return 0x100000000;
    }

    v3 = *v3;
  }

  else if (*(v3 + 23) < 4u)
  {
    return 0x100000000;
  }

  return *v3 | 0x100000000;
}

void sub_E80194(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  *a2 = -1;
  *(a2 + 8) = 0x7FFFFFFF;
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
  *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = -1935635296;
  *(a2 + 56) = 0;
  *(a2 + 63) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 112) = 100;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = vnegq_f64(v2);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  if ((*(a1 + 40) & 0x40) != 0)
  {
    v3 = *(a1 + 344);
    v4 = &off_277E5E8;
    if (*(v3 + 48))
    {
      v4 = *(v3 + 48);
    }

    v5 = *(v4 + 7);
    v6 = -1;
    if (v5 <= 180.0)
    {
      v7 = *(v4 + 6);
      if (fabs(v7) <= 85.0511288 && v5 >= -180.0)
      {
        v8 = a2;
        v9 = sin(fmin(fmax(v7, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
        v10 = log((v9 + 1.0) / (1.0 - v9));
        a2 = v8;
        LODWORD(v11) = ((v10 / -12.5663706 + 0.5) * 4294967300.0);
        if (v11 >= 0xFFFFFFFE)
        {
          v11 = 4294967294;
        }

        else
        {
          v11 = v11;
        }

        v6 = ((v5 + 180.0) / 360.0 * 4294967300.0) | (v11 << 32);
      }
    }

    *a2 = v6;
    *(a2 + 8) = 0x7FFFFFFF;
    v12 = fmax(*(v3 + 88), 0.0) * 3.6;
    v13 = 0x406F400000000000;
    if (v12 <= 250.0)
    {
      v13 = *&v12;
    }

    *(a2 + 56) = v13;
    *(a2 + 40) = *(v3 + 72);
    v14 = *(v3 + 40);
    if ((v14 & 0x200) != 0)
    {
      v15 = *(v3 + 112);
      if (v15 >= 0.0)
      {
        v16 = llround(v15 * 100.0) % 36000;
        if (v16 > 0xFFFF735F)
        {
          LOWORD(v16) = v16 - 29536;
        }

        *(a2 + 50) = v16;
        if ((v14 & 0x400) != 0)
        {
          v17 = *(v3 + 120);
          if (v17 >= 0.0)
          {
            v18 = llround(fabs(v17) * 100.0) % 36000;
            if (v18 > 0xFFFF735F)
            {
              LOWORD(v18) = v18 - 29536;
            }

            *(a2 + 48) = v18;
          }
        }
      }
    }
  }
}

uint64_t sub_E8041C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  *a2 = -1;
  *(a2 + 16) = -1;
  v3 = (a2 + 16);
  *(a2 + 8) = 0x7FFFFFFF;
  *(a2 + 24) = -1;
  *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = -1935635296;
  *(a2 + 56) = 0;
  *(a2 + 63) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 112) = 100;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = vnegq_f64(v2);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v4 = *(result + 40);
  if ((v4 & 0x20) != 0)
  {
    v5 = *(result + 304);
    v6 = &off_277E5E8;
    if (*(v5 + 48))
    {
      v6 = *(v5 + 48);
    }

    v7 = *(v6 + 7);
    v8 = -1;
    if (v7 <= 180.0)
    {
      v9 = *(v6 + 6);
      if (fabs(v9) <= 85.0511288 && v7 >= -180.0)
      {
        v10 = a2;
        v11 = result;
        v12 = sin(fmin(fmax(v9, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
        v13 = log((v12 + 1.0) / (1.0 - v12));
        result = v11;
        a2 = v10;
        LODWORD(v14) = ((v13 / -12.5663706 + 0.5) * 4294967300.0);
        if (v14 >= 0xFFFFFFFE)
        {
          v14 = 4294967294;
        }

        else
        {
          v14 = v14;
        }

        v8 = ((v7 + 180.0) / 360.0 * 4294967300.0) | (v14 << 32);
      }
    }

    *a2 = v8;
    *(a2 + 8) = 0x7FFFFFFF;
    v15 = fmax(*(v5 + 88), 0.0) * 3.6;
    v16 = 0x406F400000000000;
    if (v15 <= 250.0)
    {
      v16 = *&v15;
    }

    *(a2 + 56) = v16;
    *(a2 + 40) = *(v5 + 72);
    if ((v4 & 0x1000) != 0 && (v17 = *(result + 360), *(v17 + 32) >= 1) && (v18 = *(*(v17 + 40) + 8), (*(v18 + 40) & 8) != 0))
    {
      v24 = a2;
      result = nullsub_1(*(*(v18 + 480) + 96));
      a2 = v24;
      *v3 = result;
      v19 = *(v5 + 40);
      if ((v19 & 0x200) == 0)
      {
        return result;
      }
    }

    else
    {
      result = -1;
      *v3 = -1;
      v19 = *(v5 + 40);
      if ((v19 & 0x200) == 0)
      {
        return result;
      }
    }

    v20 = *(v5 + 112);
    if (v20 >= 0.0)
    {
      v21 = llround(v20 * 100.0) % 36000;
      if (v21 > 0xFFFF735F)
      {
        LOWORD(v21) = v21 - 29536;
      }

      *(a2 + 50) = v21;
      if ((v19 & 0x400) != 0)
      {
        v22 = *(v5 + 120);
        if (v22 >= 0.0)
        {
          v23 = llround(fabs(v22) * 100.0) % 36000;
          if (v23 > 0xFFFF735F)
          {
            LOWORD(v23) = v23 - 29536;
          }

          *(a2 + 48) = v23;
        }
      }
    }
  }

  return result;
}

uint64_t sub_E80738(uint64_t a1)
{
  if ((*(a1 + 40) & 0x40) == 0)
  {
    return -1;
  }

  v2 = *(*(a1 + 344) + 48);
  if (!v2)
  {
    v2 = &off_277E5E8;
  }

  v3 = *(v2 + 7);
  result = -1;
  if (v3 <= 180.0)
  {
    v4 = *(v2 + 6);
    if (fabs(v4) <= 85.0511288 && v3 >= -180.0)
    {
      v5 = sin(fmin(fmax(v4, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v6) = ((log((v5 + 1.0) / (1.0 - v5)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v6 >= 0xFFFFFFFE)
      {
        v6 = 4294967294;
      }

      else
      {
        v6 = v6;
      }

      return ((v3 + 180.0) / 360.0 * 4294967300.0) | (v6 << 32);
    }
  }

  return result;
}

uint64_t sub_E80868(uint64_t a1)
{
  if ((*(a1 + 40) & 0x20) == 0)
  {
    return -1;
  }

  v2 = *(*(a1 + 304) + 48);
  if (!v2)
  {
    v2 = &off_277E5E8;
  }

  v3 = *(v2 + 7);
  result = -1;
  if (v3 <= 180.0)
  {
    v4 = *(v2 + 6);
    if (fabs(v4) <= 85.0511288 && v3 >= -180.0)
    {
      v5 = sin(fmin(fmax(v4, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v6) = ((log((v5 + 1.0) / (1.0 - v5)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v6 >= 0xFFFFFFFE)
      {
        v6 = 4294967294;
      }

      else
      {
        v6 = v6;
      }

      return ((v3 + 180.0) / 360.0 * 4294967300.0) | (v6 << 32);
    }
  }

  return result;
}

uint64_t *sub_E80998@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_E8BF4C(a2, *(a1 + 256));
  v4 = *(a1 + 264);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  return sub_E8C0F0(v5, &v5[*(a1 + 256)], a2);
}

uint64_t *sub_E80A18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_E8BF4C(a2, *(a1 + 224));
  v4 = *(a1 + 232);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  return sub_E8C2FC(v5, &v5[*(a1 + 224)], a2);
}

uint64_t *sub_E80A98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_E8BF4C(a2, *(a1 + 208));
  v4 = *(a1 + 216);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  return sub_E8C3E0(v5, &v5[*(a1 + 208)], a2);
}

uint64_t sub_E80B18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 280);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return sub_E8C4C4(a1 + 272, a2);
}

uint64_t sub_E80BFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 248);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return sub_E8C6EC(a1 + 240, a2);
}

uint64_t sub_E80CE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 232);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return sub_E8C7AC(a1 + 224, a2);
}

uint64_t sub_E80DC4(uint64_t a1)
{
  if (*(a1 + 44))
  {
    return *(a1 + 512);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t sub_E80DDC(uint64_t a1)
{
  if ((*(a1 + 43) & 4) != 0)
  {
    return *(a1 + 452);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t sub_E80DF4(uint64_t a1)
{
  if (*(a1 + 40) >= 0)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return *(a1 + 444);
  }
}

BOOL sub_E80E0C(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (!v1)
  {
    v1 = &off_27770C8;
  }

  return *(v1 + 6) > 0;
}

BOOL sub_E80E30(uint64_t a1)
{
  v1 = &off_278B980;
  if (*(a1 + 184))
  {
    v1 = *(a1 + 184);
  }

  v2 = v1[35];
  if (!v2)
  {
    v2 = &off_27770C8;
  }

  return *(v2 + 6) > 0;
}

uint64_t sub_E80E68(uint64_t a1)
{
  v1 = *(a1 + 352);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  v2 = *(v1 + 74);
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_E80E98(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (!v1)
  {
    v1 = &off_278B980;
  }

  v2 = *(v1 + 87);
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}