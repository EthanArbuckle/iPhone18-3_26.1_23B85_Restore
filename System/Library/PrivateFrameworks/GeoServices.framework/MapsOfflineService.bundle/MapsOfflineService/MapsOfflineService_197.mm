void sub_BD50BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if (v10)
  {
    sub_BD4C2C(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BD5194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD52C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL sub_BD53C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 13) | *(a3 + 13))
  {
    return 0;
  }

  return *(a3 + 2) > 1u && *(a2 + 2) < 2u;
}

uint64_t sub_BD53F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD550C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD55F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671900;
  a2[1] = v2;
  return result;
}

BOOL sub_BD5620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 13) != 1 || *(a3 + 13) != 1)
  {
    return 0;
  }

  if (*(*(a1 + 8) + 184))
  {
    return *(a2 + 4 * (*(a2 + 36) != 0x7FFFFFFF) + 32) > *(a3 + 4 * (*(a3 + 36) != 0x7FFFFFFF) + 32);
  }

  return *(a2 + 4 * (*(a2 + 24) != 0x7FFFFFFF) + 20) < *(a3 + 4 * (*(a3 + 24) != 0x7FFFFFFF) + 20);
}

uint64_t sub_BD56B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_4")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_4" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_4"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_4" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD57A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671980;
  a2[1] = v2;
  return result;
}

BOOL sub_BD57CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 15) != 1 || *(a3 + 15) != 1)
  {
    return 0;
  }

  if (*(*(a1 + 8) + 184))
  {
    return *(a2 + 4 * (*(a2 + 36) != 0x7FFFFFFF) + 32) > *(a3 + 4 * (*(a3 + 36) != 0x7FFFFFFF) + 32);
  }

  return *(a2 + 4 * (*(a2 + 24) != 0x7FFFFFFF) + 20) < *(a3 + 4 * (*(a3 + 24) != 0x7FFFFFFF) + 20);
}

uint64_t sub_BD5868(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_5")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_5" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_5"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_5" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD58E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    v7 = result;
    do
    {
      v8 = *(a3 + 24);
      if (!v8)
      {
        sub_2B7420();
      }

      result = (*(*v8 + 48))(v8, v3);
      if (!result)
      {
        goto LABEL_4;
      }

      if (*(a2 + 184) != 1)
      {
        if (*(a2 + 184))
        {
          goto LABEL_4;
        }

        sub_A82F14(*v7, v3);
      }

      result = sub_A83B68(*v7, v3);
LABEL_4:
      v3 += 296;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_BD5998(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_A57920((*(a1 + 48) + 4136), *(a2 + 32));
  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 5)
  {
    v8 = 0;
    goto LABEL_6;
  }

  if (!v6[2])
  {
    v8 = 0;
    if (v7 >= 9)
    {
      goto LABEL_19;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = v5 + v6[2] + *(v5 + v6[2]);
  if (v7 < 9)
  {
    goto LABEL_6;
  }

LABEL_19:
  v22 = v6[4];
  if (!v22)
  {
    goto LABEL_6;
  }

  v9 = (v5 + v22 + *(v5 + v22));
LABEL_7:
  v10 = *&v8[8 * *(sub_A571D4(v9, v4) + 14) + 4];
  v29 = __ROR8__(v10, 32);
  v11 = sub_92FC60(*(*(a1 + 48) + 4056) + 24, v10, 0, "line");
  v12 = (v11 - *v11);
  if (*v12 < 0x25u)
  {
    if (*(a1 + 32))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = v12[18];
    if (v13)
    {
      LOBYTE(v13) = *(v11 + v13);
    }

    if ((*(a1 + 32) >> v13))
    {
LABEL_11:
      v27 = sub_A56F04((*(a1 + 48) + 4136), *(a2 + 32), *(a2 + 52), *(a2 + 40));
      v28 = v14;
      v26 = sub_BD5C90((*(a1 + 48) + 4184), &v27);
      v25 = sub_BD5DA0((*(a1 + 48) + 4136), *(a2 + 32), *(a2 + 52));
      v24 = sub_BD5F34((*(a1 + 48) + 4136), *(a2 + 32), *(a2 + 52));
      v15 = *(a2 + 32);
      v16 = *(a2 + 52);
      v17 = sub_A57920((*(a1 + 48) + 4136), v15);
      v18 = (v17 - *v17);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        v20 = (v17 + v19 + *(v17 + v19));
      }

      else
      {
        v20 = 0;
      }

      v23 = __ROR8__(*sub_A571D4(v20, v16), 32);
      operator new();
    }
  }

  return 0x7FFFFFFF7FFFFFFFLL;
}

void sub_BD5C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BD5C90(void *a1, unsigned int *a2)
{
  v3 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v4 = v3;
  v5 = &v3[-*v3];
  if (*v5 >= 5u && (v6 = *(v5 + 2)) != 0)
  {
    v7 = &v3[v6 + *&v3[v6]];
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_BCA9F8(v7, *a2);
  v9 = (v4 - *v4);
  if (*v9 < 0xDu)
  {
    v10 = 0;
    v11 = (v8 - *v8);
    if (*v11 < 0x15u)
    {
LABEL_13:
      v13 = -1;
      goto LABEL_14;
    }
  }

  else
  {
    v10 = v9[6];
    if (v10)
    {
      v10 = (v10 + v4 + *(v10 + v4));
    }

    v11 = (v8 - *v8);
    if (*v11 < 0x15u)
    {
      goto LABEL_13;
    }
  }

  v12 = v11[10];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v8 + v12);
LABEL_14:
  v14 = sub_A56DB8(v10, a2[2] + v13);
  return ((*(v14 + 2) + 1) << 16) | (*(v14 + 3) << 24) | *v14;
}

uint64_t sub_BD5DA0(void *a1, unint64_t a2, unsigned int a3)
{
  v6 = sub_A57920(a1, a2);
  v7 = (v6 - *v6);
  if (*v7 < 7u)
  {
    goto LABEL_20;
  }

  v8 = v7[3];
  if (v8)
  {
    if (*(v6 + v8 + *(v6 + v8)))
    {
      v9 = a3;
      v10 = sub_A57920(a1, a2);
      v11 = (v10 - *v10);
      if (*v11 >= 9u && (v12 = v11[4]) != 0)
      {
        v13 = (v10 + v12 + *(v10 + v12));
      }

      else
      {
        v13 = 0;
      }

      v14 = *(sub_A571D4(v13, a3) + 12);
      v15 = sub_A56F04(a1, a2, v9, 0);
      v16 = sub_3A231C(*a1 + 24, __ROR8__(v15, 32), 0);
      v17 = &v16[-*v16];
      if (*v17 >= 5u && (v18 = *(v17 + 2)) != 0)
      {
        v19 = &v16[v18 + *&v16[v18]];
      }

      else
      {
        v19 = 0;
      }

      v20 = sub_BCA9F8(v19, v15);
      v21 = (v20 - *v20);
      v22 = *v21;
      if (v22 >= 0x25)
      {
        if (v21[18])
        {
          v23 = sub_BCAB48((v20 + v21[18] + *(v20 + v21[18])), v14);
          if (v23 == -1)
          {
            goto LABEL_20;
          }

          return v23 | (HIDWORD(v15) << 32);
        }

LABEL_17:
        v24 = v21[7];
        if (!v24)
        {
          goto LABEL_20;
        }

        v23 = *(v20 + v24);
        if (v23 == -1)
        {
          goto LABEL_20;
        }

        return v23 | (HIDWORD(v15) << 32);
      }

      if (v22 >= 0xF)
      {
        goto LABEL_17;
      }
    }

LABEL_20:
    v8 = 0;
  }

  return (v8 << 32) | 0xFFFFFFFFLL;
}

uint64_t sub_BD5F34(void *a1, unint64_t a2, unsigned int a3)
{
  v6 = sub_A57920(a1, a2);
  v7 = (v6 - *v6);
  if (*v7 < 7u)
  {
    goto LABEL_20;
  }

  v8 = v7[3];
  if (v8)
  {
    if (*(v6 + v8 + *(v6 + v8)))
    {
      v9 = a3;
      v10 = sub_A57920(a1, a2);
      v11 = (v10 - *v10);
      if (*v11 >= 9u && (v12 = v11[4]) != 0)
      {
        v13 = (v10 + v12 + *(v10 + v12));
      }

      else
      {
        v13 = 0;
      }

      v14 = *(sub_A571D4(v13, a3) + 12);
      v15 = sub_A56F04(a1, a2, v9, 0);
      v16 = sub_3A231C(*a1 + 24, __ROR8__(v15, 32), 0);
      v17 = &v16[-*v16];
      if (*v17 >= 5u && (v18 = *(v17 + 2)) != 0)
      {
        v19 = &v16[v18 + *&v16[v18]];
      }

      else
      {
        v19 = 0;
      }

      v20 = sub_BCA9F8(v19, v15);
      v21 = (v20 - *v20);
      v22 = *v21;
      if (v22 >= 0x27)
      {
        if (v21[19])
        {
          v23 = sub_BCAB48((v20 + v21[19] + *(v20 + v21[19])), v14);
          if (v23 == -1)
          {
            goto LABEL_20;
          }

          return v23 | (HIDWORD(v15) << 32);
        }

LABEL_17:
        v24 = v21[8];
        if (!v24)
        {
          goto LABEL_20;
        }

        v23 = *(v20 + v24);
        if (v23 == -1)
        {
          goto LABEL_20;
        }

        return v23 | (HIDWORD(v15) << 32);
      }

      if (v22 >= 0x11)
      {
        goto LABEL_17;
      }
    }

LABEL_20:
    v8 = 0;
  }

  return (v8 << 32) | 0xFFFFFFFFLL;
}

uint64_t sub_BD60C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_A57920((*(a1 + 48) + 4136), *(a2 + 28));
  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 5)
  {
    v8 = 0;
    goto LABEL_6;
  }

  if (!v6[2])
  {
    v8 = 0;
    if (v7 >= 9)
    {
      goto LABEL_19;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = v5 + v6[2] + *(v5 + v6[2]);
  if (v7 < 9)
  {
    goto LABEL_6;
  }

LABEL_19:
  v22 = v6[4];
  if (!v22)
  {
    goto LABEL_6;
  }

  v9 = (v5 + v22 + *(v5 + v22));
LABEL_7:
  v10 = *&v8[8 * *(sub_A571D4(v9, v4) + 14) + 4];
  v29 = __ROR8__(v10, 32);
  v11 = sub_92FC60(*(*(a1 + 48) + 4056) + 24, v10, 0, "line");
  v12 = (v11 - *v11);
  if (*v12 < 0x25u)
  {
    if (*(a1 + 32))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = v12[18];
    if (v13)
    {
      LOBYTE(v13) = *(v11 + v13);
    }

    if ((*(a1 + 32) >> v13))
    {
LABEL_11:
      v27 = sub_A56F04((*(a1 + 48) + 4136), *(a2 + 28), *(a2 + 48), *(a2 + 36));
      v28 = v14;
      v26 = sub_BD5C90((*(a1 + 48) + 4184), &v27);
      v25 = sub_BD5DA0((*(a1 + 48) + 4136), *(a2 + 28), *(a2 + 48));
      v24 = sub_BD5F34((*(a1 + 48) + 4136), *(a2 + 28), *(a2 + 48));
      v15 = *(a2 + 28);
      v16 = *(a2 + 48);
      v17 = sub_A57920((*(a1 + 48) + 4136), v15);
      v18 = (v17 - *v17);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        v20 = (v17 + v19 + *(v17 + v19));
      }

      else
      {
        v20 = 0;
      }

      v23 = __ROR8__(*sub_A571D4(v20, v16), 32);
      operator new();
    }
  }

  return 0x7FFFFFFF7FFFFFFFLL;
}

void sub_BD6390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_BD63C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      *(a1 + 24) = a1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0;
  operator new();
}

void sub_BD6584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_A31E68(v14);
    _Unwind_Resume(a1);
  }

  sub_A31E68(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_BD65F8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v2 != v3)
  {
    v4 = result;
    v5 = v2 + 124;
    do
    {
      result = sub_BD60C8(v4, v5);
      *(v5 + 88) = result;
      v6 = v5 + 124;
      v5 += 248;
    }

    while (v6 != v3);
  }

  return result;
}

uint64_t sub_BD6650(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 24);
      if (!v5)
      {
        sub_2B7420();
      }

      result = (*(*v5 + 48))(v5, v2);
      if (result)
      {
        v6 = *(v2 + 200);
        v7 = *(v2 + 208);
        while (v6 != v7)
        {
          if (!*(v6 + 24))
          {
            v9 = *v6;
            v10 = *(v6 + 8);
            if (*v6 != v10)
            {
              do
              {
                if (*(v9 + 160))
                {
LABEL_36:
                  sub_5AF20();
                }

                result = sub_BD5998(v4, v9);
                *(v9 + 148) = result;
                v9 += 168;
              }

              while (v9 != v10);
              v9 = *v6;
              v10 = *(v6 + 8);
            }

            v19 = 0x7FFFFFFF;
            v20 = 0x7FFFFFFF;
            if (v9 == v10)
            {
              v8 = 0x7FFFFFFF7FFFFFFFLL;
            }

            else
            {
              v11 = (v9 + 148);
              LODWORD(v12) = 0x7FFFFFFF;
              LODWORD(v13) = 0x7FFFFFFF;
              do
              {
                if (v11[3])
                {
                  goto LABEL_36;
                }

                v15 = v11;
                if (v12 != 0x7FFFFFFF)
                {
                  if (*v11 >= v12)
                  {
                    v16 = &v20;
                  }

                  else
                  {
                    v16 = v11;
                  }

                  if (*v11 == 0x7FFFFFFF)
                  {
                    v15 = &v20;
                  }

                  else
                  {
                    v15 = v16;
                  }
                }

                v17 = v11 + 1;
                if (v13 != 0x7FFFFFFF)
                {
                  if (v13 >= *v17)
                  {
                    v18 = &v19;
                  }

                  else
                  {
                    v18 = v11 + 1;
                  }

                  if (*v17 == 0x7FFFFFFF)
                  {
                    v17 = &v19;
                  }

                  else
                  {
                    v17 = v18;
                  }
                }

                v12 = *v15;
                v13 = *v17;
                v19 = *v17;
                v20 = v12;
                v14 = v11 + 5;
                v11 += 42;
              }

              while (v14 != v10);
              v8 = v12 | (v13 << 32);
            }

            *(v6 + 60) = v8;
          }

          v6 += 72;
        }
      }

      v2 += 296;
    }

    while (v2 != v3);
  }

  return result;
}

unint64_t sub_BD67E0(uint64_t a1, unsigned int *a2, unint64_t a3, int a4, unsigned int a5)
{
  v10 = sub_A57920((*(a1 + 48) + 4136), a3);
  v11 = (v10 - *v10);
  if (*v11 < 0x13u || (v12 = v11[9]) == 0 || (*(v10 + v12) & 1) == 0)
  {
    v13 = *(a1 + 48);
    v53 = a5;
    v54 = -NAN;
    v14 = sub_BD6B10((v13 + 4136), a3, a4, &v53);
    v55 = v14;
    v15 = *a2;
    v16 = v14;
    if (*a2 != 0x7FFFFFFF)
    {
      if (v14 == 0x7FFFFFFF)
      {
        v18 = a2[1];
        v17 = a2 + 1;
        if (v18 == 0x7FFFFFFF)
        {
          v19 = &v55;
        }

        else
        {
          v19 = v17;
        }

        v16 = v15;
LABEL_20:
        v24 = *v19;
        return v16 | (v24 << 32);
      }

      v16 = v55;
      if (v14 >= v15)
      {
        v16 = *a2;
      }
    }

    v22 = a2[1];
    v21 = a2 + 1;
    v20 = v22;
    if (v22 >= v14)
    {
      v23 = v21;
    }

    else
    {
      v23 = &v55;
    }

    if (v14 == 0x7FFFFFFF)
    {
      v23 = v21;
    }

    if (v20 == 0x7FFFFFFF)
    {
      v19 = &v55;
    }

    else
    {
      v19 = v23;
    }

    goto LABEL_20;
  }

  v26 = sub_A5706C((*(a1 + 48) + 4136), a3);
  v27 = v26;
  v28 = &v26[-*v26];
  if (*v28 < 5u)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(v28 + 2);
    if (v29)
    {
      v29 += &v26[*&v26[v29]];
    }
  }

  v30 = 4 * a3;
  v31 = (v29 + v30 + 4 + *(v29 + v30 + 4));
  v32 = (v31 - *v31);
  if (*v32 >= 7u && (v33 = v32[3]) != 0)
  {
    v34 = (v31 + v33 + *(v31 + v33));
  }

  else
  {
    v34 = 0;
  }

  v35 = sub_A7AC40(v34, a5);
  v36 = (v27 - *v27);
  if (*v36 < 7u)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36[3];
    if (v37)
    {
      v37 = (v37 + v27 + *(v37 + v27));
    }
  }

  v38 = *(sub_A7AEE0(v37, *(v35 + 4) + a4) + 4);
  v39 = sub_A5706C((*(a1 + 48) + 4136), a3);
  v40 = &v39[-*v39];
  if (*v40 < 5u)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + 2);
    if (v41)
    {
      v41 += &v39[*&v39[v41]];
    }
  }

  v42 = (v41 + v30 + 4 + *(v41 + v30 + 4));
  v43 = (v42 - *v42);
  if (*v43 >= 7u && (v44 = v43[3]) != 0)
  {
    v45 = (v42 + v44 + *(v42 + v44));
  }

  else
  {
    v45 = 0;
  }

  v46 = *(sub_A7AC40(v45, a5) + 8);
  v47 = sub_A7AB44((*(a1 + 48) + 4136), a3, a5, 0) + v38;
  v53 = v47;
  v48 = sub_A7AA48((*(a1 + 48) + 4136), a3, a5, v46 - 1) + v38;
  v55 = v48;
  if (*a2 == 0x7FFFFFFF)
  {
    v49 = &v53;
  }

  else
  {
    v49 = a2;
    if (v47 != 0x7FFFFFFF)
    {
      v49 = &v53;
      if (v47 >= *a2)
      {
        v49 = a2;
      }
    }
  }

  v16 = *v49;
  v52 = a2[1];
  v51 = a2 + 1;
  v50 = v52;
  if (v52 == 0x7FFFFFFF)
  {
    v51 = &v55;
  }

  else if (v48 != 0x7FFFFFFF && v50 < v48)
  {
    v51 = &v55;
  }

  v24 = *v51;
  return v16 | (v24 << 32);
}

uint64_t sub_BD6B10(void *a1, unint64_t a2, int a3, unsigned int *a4)
{
  v6 = a2;
  v7 = sub_A5706C(a1, a2);
  v8 = v7;
  v9 = &v7[-*v7];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v7[*&v7[v10]];
    }
  }

  v11 = (v10 + 4 * v6 + 4 + *(v10 + 4 * v6 + 4));
  v12 = (v11 - *v11);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_A7AC40(v14, *a4);
  if (a4[1] == -1)
  {
    v16 = v15;
  }

  else
  {
    v16 = (a4 + 2);
  }

  v17 = *v16;
  v18 = (v8 - *v8);
  if (*v18 < 7u)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18[3];
    if (v19)
    {
      v19 = (v19 + v8 + *(v19 + v8));
    }
  }

  return (*(sub_A7AEE0(v19, *(v15 + 4) + a3) + 4) + v17);
}

uint64_t *sub_BD6C1C@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      sub_A7905C(v47, a1, *v4, 0, 0, 0);
LABEL_5:
      v7 = v50;
LABEL_6:
      v8 = v51;
      while (v7 < v8)
      {
        v9 = __ROR8__(*v7, 32);
        v11 = *(a3 + 8);
        v10 = *(a3 + 16);
        if (v11 >= v10)
        {
          v13 = *a3;
          v14 = v11 - *a3;
          v15 = (v14 >> 3) + 1;
          if (v15 >> 61)
          {
            sub_1794();
          }

          v16 = v10 - v13;
          if (v16 >> 2 > v15)
          {
            v15 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            if (!(v17 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v18 = (8 * (v14 >> 3));
          *v18 = v9;
          v12 = v18 + 1;
          memcpy(0, v13, v14);
          *a3 = 0;
          *(a3 + 16) = 0;
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *v11 = v9;
          v12 = v11 + 1;
        }

        *(a3 + 8) = v12;
        v8 = v51;
        v7 = v50 + 2;
        v50 = v7;
        if (v7 == v51)
        {
          v19 = v48 + 2;
          v48 = v19;
          if (v19 >= v49)
          {
            break;
          }

          while (1)
          {
            v7 = *v19;
            v8 = v19[1];
            if (*v19 != v8)
            {
              break;
            }

            v19 += 2;
            v48 = v19;
            if (v19 >= v49)
            {
              goto LABEL_3;
            }
          }

          v50 = *v19;
          v51 = v8;
          if (v7 < v8)
          {
            goto LABEL_32;
          }
        }

        else if (v7 < v51)
        {
          while (1)
          {
LABEL_32:
            if ((v53 & 1) == 0)
            {
              v20 = v47[0];
              v21 = *v7;
              v22 = *(v47[0] + 4136);
              if (sub_68312C(v22 + 3896))
              {
                if (*(v22 + 3944))
                {
                  if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                  {
                    v42 = sub_A57824(-85.0, 0.0);
                    sub_58168(v42 >> 17, v42 >> 49);
                    dword_27339C0 = v43 | 0x40000000;
                    __cxa_guard_release(&qword_27339C8);
                  }

                  v23 = __ROR8__(v21, 32);
                  v24 = *(v20 + 4136);
                  if (dword_27339C0 == HIDWORD(v23))
                  {
                    if (!sub_68312C(v24 + 3896) || !*(v24 + 3944))
                    {
                      exception = __cxa_allocate_exception(0x40uLL);
                      v46 = sub_2D390(exception, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                    }
                  }

                  else
                  {
                    v27 = *(v24 + 3944);
                    v28 = v27[1];
                    if (v28)
                    {
                      v29 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v23 ^ (v23 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v23 ^ (v23 >> 33))) >> 33));
                      v30 = v29 ^ (v29 >> 33);
                      v31 = vcnt_s8(v28);
                      v31.i16[0] = vaddlv_u8(v31);
                      if (v31.u32[0] > 1uLL)
                      {
                        v32 = v30;
                        if (v30 >= *&v28)
                        {
                          v32 = v30 % *&v28;
                        }
                      }

                      else
                      {
                        v32 = (*&v28 - 1) & v30;
                      }

                      v33 = *(*v27 + 8 * v32);
                      if (v33)
                      {
                        v34 = *v33;
                        if (v34)
                        {
                          if (v31.u32[0] < 2uLL)
                          {
                            v35 = *&v28 - 1;
                            while (1)
                            {
                              v39 = v34[1];
                              if (v30 == v39)
                              {
                                if (*(v34 + 5) == HIDWORD(v23) && *(v34 + 4) == v23)
                                {
                                  goto LABEL_30;
                                }
                              }

                              else if ((v39 & v35) != v32)
                              {
                                goto LABEL_72;
                              }

                              v34 = *v34;
                              if (!v34)
                              {
                                goto LABEL_72;
                              }
                            }
                          }

                          do
                          {
                            v37 = v34[1];
                            if (v30 == v37)
                            {
                              if (*(v34 + 5) == HIDWORD(v23) && *(v34 + 4) == v23)
                              {
                                goto LABEL_30;
                              }
                            }

                            else
                            {
                              if (v37 >= *&v28)
                              {
                                v37 %= *&v28;
                              }

                              if (v37 != v32)
                              {
                                break;
                              }
                            }

                            v34 = *v34;
                          }

                          while (v34);
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_72:
            if (v52 == 1)
            {
              goto LABEL_5;
            }

            v40 = sub_C9E544(v47[0] + 3896);
            v7 = v50;
            if (v40 >= *(v50 + 14))
            {
              if (v52)
              {
                goto LABEL_6;
              }

              v41 = sub_585D8((v47[0] + 3896));
              v7 = v50;
              if ((v41 & 1) != 0 || (*(v50 + 15) & 1) == 0)
              {
                goto LABEL_6;
              }
            }

LABEL_30:
            v7 = v50 + 2;
            v50 = v7;
            if (v7 == v51)
            {
              v25 = v48 + 2;
              v48 = v25;
              if (v25 >= v49)
              {
                goto LABEL_6;
              }

              while (1)
              {
                v7 = *v25;
                v26 = v25[1];
                if (*v25 != v26)
                {
                  break;
                }

                v25 += 2;
                v48 = v25;
                if (v25 >= v49)
                {
                  goto LABEL_3;
                }
              }

              v50 = *v25;
              v51 = v26;
              if (v7 >= v26)
              {
                goto LABEL_6;
              }
            }

            else if (v7 >= v51)
            {
              goto LABEL_6;
            }
          }
        }
      }

LABEL_3:
      ++v4;
    }

    while (v4 != v5);
  }

  return sub_BD70E0(a3);
}

void sub_BD709C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339C8);
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_BD70E0(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz(v3 - v2);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  result = sub_BD71E4(v2, v3, &v18, v5, 1);
  v8 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
LABEL_22:
    if (v8 != v7)
    {
      a1[1] = v8;
    }
  }

  else
  {
    v9 = v8 + 1;
    while (v9 != v7)
    {
      LODWORD(v11) = *v9;
      v10 = *(v9 + 1);
      v13 = *(v9 - 2);
      v12 = *(v9++ - 1);
      if (v12 == v10 && v13 == v11)
      {
        v15 = v9 - 2;
        if (v9 != v7)
        {
          do
          {
            v16 = v11;
            v11 = *v9;
            if (*(v15 + 1) != HIDWORD(*v9) || v16 != v11)
            {
              v15[1] = v11;
              ++v15;
            }

            ++v9;
          }

          while (v9 != v7);
          v7 = a1[1];
        }

        v8 = v15 + 1;
        goto LABEL_22;
      }
    }
  }

  return result;
}

uint64_t *sub_BD71E4(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v128 = *v10;
        v129 = *(a2 - 1);
        v130 = HIDWORD(*v10);
        v131 = v129 == v130;
        v132 = v129 < v130;
        if (v131)
        {
          v132 = *(a2 - 2) < *v10;
        }

        if (!v132)
        {
          return result;
        }

LABEL_167:
        *v10 = *(a2 - 1);
LABEL_168:
        *(a2 - 1) = v128;
        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return sub_BD7C30(v10, (v10 + 8), (v10 + 16), a2 - 2);
    }

    if (v11 == 5)
    {
      result = sub_BD7C30(v10, (v10 + 8), (v10 + 16), (v10 + 24));
      v116 = *(v10 + 24);
      v117 = *(a2 - 1);
      v131 = v117 == HIDWORD(v116);
      v118 = v117 < HIDWORD(v116);
      if (v131)
      {
        v118 = *(a2 - 2) < v116;
      }

      if (v118)
      {
        *(v10 + 24) = *(a2 - 1);
        *(a2 - 1) = v116;
        v119 = *(v10 + 16);
        v120 = *(v10 + 28);
        v131 = v120 == HIDWORD(v119);
        v121 = v120 < HIDWORD(v119);
        if (v131)
        {
          v121 = *(v10 + 24) < v119;
        }

        if (v121)
        {
          v122 = *(v10 + 24);
          *(v10 + 16) = v122;
          *(v10 + 24) = v119;
          v123 = *(v10 + 8);
          v124 = HIDWORD(v122);
          v125 = v122 < v123;
          if (HIDWORD(v122) != HIDWORD(v123))
          {
            v125 = HIDWORD(v122) < HIDWORD(v123);
          }

          if (v125)
          {
            *(v10 + 8) = v122;
            *(v10 + 16) = v123;
            v126 = *v10;
            v131 = v124 == HIDWORD(*v10);
            v127 = v124 < HIDWORD(*v10);
            if (v131)
            {
              v127 = v122 < *v10;
            }

            if (v127)
            {
              *v10 = v122;
              *(v10 + 8) = v126;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v140 = (v10 + 8);
      v142 = v10 == a2 || v140 == a2;
      if (a5)
      {
        if (!v142)
        {
          v143 = 0;
          v144 = v10;
          do
          {
            v146 = *v144;
            v148 = *(v144 + 2);
            v147 = *(v144 + 3);
            v144 = v140;
            v149 = v148 < v146;
            v150 = v147 < HIDWORD(v146);
            if (v147 == HIDWORD(v146))
            {
              v150 = v149;
            }

            if (v150)
            {
              v151 = *v144;
              v152 = HIDWORD(*v144);
              v153 = v143;
              do
              {
                *(v10 + v153 + 8) = v146;
                if (!v153)
                {
                  v145 = v10;
                  goto LABEL_182;
                }

                v146 = *(v10 + v153 - 8);
                v154 = v151 < v146;
                if (v152 != HIDWORD(v146))
                {
                  v154 = v152 < HIDWORD(v146);
                }

                v153 -= 8;
              }

              while (v154);
              v145 = (v10 + v153 + 8);
LABEL_182:
              *v145 = v151;
            }

            v140 = v144 + 1;
            v143 += 8;
          }

          while (v144 + 1 != a2);
        }
      }

      else if (!v142)
      {
        do
        {
          v159 = *v9;
          v161 = *(v9 + 2);
          v160 = *(v9 + 3);
          v9 = v140;
          v162 = v161 < v159;
          v131 = v160 == HIDWORD(v159);
          v163 = v160 < HIDWORD(v159);
          if (v131)
          {
            v163 = v162;
          }

          if (v163)
          {
            v164 = *v140;
            v165 = HIDWORD(*v140);
            do
            {
              *v140 = v159;
              v159 = *(v140 - 2);
              v166 = v164 < v159;
              if (v165 != HIDWORD(v159))
              {
                v166 = v165 < HIDWORD(v159);
              }

              --v140;
            }

            while (v166);
            *v140 = v164;
          }

          v140 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_BD82D0(v10, a2, a2);
      }

      return result;
    }

    v12 = v10 + 8 * (v11 >> 1);
    v14 = *(a2 - 2);
    v13 = *(a2 - 1);
    if (v11 >= 0x81)
    {
      v15 = *v10;
      v16 = *(v12 + 4);
      v17 = HIDWORD(*v10);
      v18 = *v12 < *v10;
      v131 = v16 == v17;
      v19 = v16 < v17;
      if (!v131)
      {
        v18 = v19;
      }

      v20 = *v12;
      v21 = HIDWORD(*v12);
      v22 = v14 < *v12;
      v131 = v13 == v21;
      v23 = v13 < v21;
      if (v131)
      {
        v23 = v22;
      }

      if (v18)
      {
        if (v23)
        {
          *v10 = *(a2 - 1);
          goto LABEL_42;
        }

        *v10 = v20;
        *v12 = v15;
        v43 = *(a2 - 1);
        v131 = v43 == v17;
        v44 = v43 < v17;
        if (v131)
        {
          v44 = *(a2 - 2) < v15;
        }

        if (v44)
        {
          *v12 = *(a2 - 1);
LABEL_42:
          *(a2 - 1) = v15;
        }
      }

      else if (v23)
      {
        *v12 = *(a2 - 1);
        *(a2 - 1) = v20;
        v33 = *v10;
        v34 = *(v12 + 4);
        v35 = HIDWORD(*v10);
        v131 = v34 == v35;
        v36 = v34 < v35;
        if (v131)
        {
          v36 = *v12 < *v10;
        }

        if (v36)
        {
          *v10 = *v12;
          *v12 = v33;
        }
      }

      v45 = (v12 - 8);
      v46 = *(v12 - 8);
      v47 = *(v10 + 8);
      v48 = *(v12 - 4);
      v49 = *(v12 - 8) < v47;
      v131 = v48 == HIDWORD(v47);
      v50 = v48 < HIDWORD(v47);
      if (!v131)
      {
        v49 = v50;
      }

      v51 = *(a2 - 3);
      v131 = v51 == HIDWORD(v46);
      v52 = v51 < HIDWORD(v46);
      if (v131)
      {
        v52 = *(a2 - 4) < v46;
      }

      if (v49)
      {
        if (v52)
        {
          *(v10 + 8) = *(a2 - 2);
          goto LABEL_66;
        }

        *(v10 + 8) = v46;
        *v45 = v47;
        v58 = *(a2 - 3);
        v131 = v58 == HIDWORD(v47);
        v59 = v58 < HIDWORD(v47);
        if (v131)
        {
          v59 = *(a2 - 4) < v47;
        }

        if (v59)
        {
          *v45 = *(a2 - 2);
LABEL_66:
          *(a2 - 2) = v47;
        }
      }

      else if (v52)
      {
        *v45 = *(a2 - 2);
        *(a2 - 2) = v46;
        v53 = *(v10 + 8);
        v54 = *(v12 - 4);
        v131 = v54 == HIDWORD(v53);
        v55 = v54 < HIDWORD(v53);
        if (v131)
        {
          v55 = *v45 < v53;
        }

        if (v55)
        {
          *(v10 + 8) = *v45;
          *v45 = v53;
        }
      }

      v60 = (v12 + 8);
      v61 = *(v12 + 8);
      v62 = *(v10 + 16);
      v63 = *(v12 + 12);
      v64 = *(v12 + 8) < v62;
      v131 = v63 == HIDWORD(v62);
      v65 = v63 < HIDWORD(v62);
      if (!v131)
      {
        v64 = v65;
      }

      v66 = *(a2 - 5);
      v131 = v66 == HIDWORD(v61);
      v67 = v66 < HIDWORD(v61);
      if (v131)
      {
        v67 = *(a2 - 6) < v61;
      }

      if (v64)
      {
        if (v67)
        {
          *(v10 + 16) = *(a2 - 3);
          goto LABEL_83;
        }

        *(v10 + 16) = v61;
        *v60 = v62;
        v71 = *(a2 - 5);
        v131 = v71 == HIDWORD(v62);
        v72 = v71 < HIDWORD(v62);
        if (v131)
        {
          v72 = *(a2 - 6) < v62;
        }

        if (v72)
        {
          *v60 = *(a2 - 3);
LABEL_83:
          *(a2 - 3) = v62;
        }
      }

      else if (v67)
      {
        *v60 = *(a2 - 3);
        *(a2 - 3) = v61;
        v68 = *(v10 + 16);
        v69 = *(v12 + 12);
        v131 = v69 == HIDWORD(v68);
        v70 = v69 < HIDWORD(v68);
        if (v131)
        {
          v70 = *v60 < v68;
        }

        if (v70)
        {
          *(v10 + 16) = *v60;
          *v60 = v68;
        }
      }

      v73 = *v45;
      v74 = *(v12 + 4);
      v75 = HIDWORD(*v45);
      v131 = v74 == v75;
      v76 = v74 < v75;
      if (v131)
      {
        v77 = *v12 < *v45;
      }

      else
      {
        v77 = v76;
      }

      v78 = *v12;
      v80 = *v60;
      v79 = *(v12 + 12);
      v81 = HIDWORD(*v12);
      v131 = v79 == v81;
      v82 = v79 < v81;
      if (v131)
      {
        v82 = *v60 < *v12;
      }

      if (v77)
      {
        if (v82)
        {
          *v45 = *v60;
          goto LABEL_101;
        }

        *v45 = v78;
        *v12 = v73;
        v85 = v80 < v73;
        if (v79 != v75)
        {
          v85 = v79 < v75;
        }

        if (v85)
        {
          v78 = *v60;
          *v12 = *v60;
LABEL_101:
          *v60 = v73;
        }

        else
        {
          v78 = v73;
        }
      }

      else if (v82)
      {
        v83 = *v60;
        *v12 = *v60;
        *v60 = v78;
        v84 = HIDWORD(v83) < v75;
        if (HIDWORD(v83) == v75)
        {
          v84 = v83 < v73;
        }

        if (v84)
        {
          *v45 = v83;
          v60 = v12;
          v78 = v73;
          goto LABEL_101;
        }

        v78 = v83;
      }

      v86 = *v10;
      *v10 = v78;
      *v12 = v86;
      --a4;
      v41 = *v10;
      v42 = HIDWORD(*v10);
      if (a5)
      {
        goto LABEL_106;
      }

      goto LABEL_103;
    }

    v24 = *v12;
    v25 = *(v10 + 4);
    v26 = HIDWORD(*v12);
    v27 = *v10 < *v12;
    v131 = v25 == v26;
    v28 = v25 < v26;
    if (!v131)
    {
      v27 = v28;
    }

    v29 = *v10;
    v30 = HIDWORD(*v10);
    v31 = v14 < *v10;
    v131 = v13 == v30;
    v32 = v13 < v30;
    if (v131)
    {
      v32 = v31;
    }

    if (v27)
    {
      if (v32)
      {
        *v12 = *(a2 - 1);
LABEL_59:
        *(a2 - 1) = v24;
        goto LABEL_60;
      }

      *v12 = v29;
      *v10 = v24;
      v56 = *(a2 - 1);
      v131 = v56 == v26;
      v57 = v56 < v26;
      if (v131)
      {
        v57 = *(a2 - 2) < v24;
      }

      if (v57)
      {
        *v10 = *(a2 - 1);
        goto LABEL_59;
      }
    }

    else if (v32)
    {
      *v10 = *(a2 - 1);
      *(a2 - 1) = v29;
      v37 = *v12;
      v38 = *(v10 + 4);
      v39 = HIDWORD(*v12);
      v131 = v38 == v39;
      v40 = v38 < v39;
      if (v131)
      {
        v40 = *v10 < *v12;
      }

      if (v40)
      {
        *v12 = *v10;
        *v10 = v37;
        --a4;
        v41 = v37;
        v42 = HIDWORD(v37);
        if (a5)
        {
          goto LABEL_106;
        }

        goto LABEL_103;
      }
    }

LABEL_60:
    --a4;
    v41 = *v10;
    v42 = HIDWORD(*v10);
    if (a5)
    {
      goto LABEL_106;
    }

LABEL_103:
    v87 = *(v10 - 4);
    v131 = v87 == v42;
    v88 = v87 < v42;
    if (v131)
    {
      v88 = *(v10 - 8) < v41;
    }

    if (v88)
    {
LABEL_106:
      v89 = 0;
      do
      {
        v90 = *(v10 + v89 + 12);
        v91 = *(v10 + v89 + 8) < v41;
        v131 = v90 == v42;
        v92 = v90 < v42;
        if (!v131)
        {
          v91 = v92;
        }

        v89 += 8;
      }

      while (v91);
      v93 = v10 + v89;
      v94 = a2;
      if (v89 == 8)
      {
        v94 = a2;
        do
        {
          if (v93 >= v94)
          {
            break;
          }

          v99 = *(v94 - 2);
          v100 = *(v94-- - 1);
          v101 = v99 < v41;
          v131 = v100 == v42;
          v102 = v100 < v42;
          if (!v131)
          {
            v101 = v102;
          }
        }

        while (!v101);
      }

      else
      {
        do
        {
          v95 = *(v94 - 2);
          v96 = *(v94-- - 1);
          v97 = v95 < v41;
          v131 = v96 == v42;
          v98 = v96 < v42;
          if (!v131)
          {
            v97 = v98;
          }
        }

        while (!v97);
      }

      if (v93 >= v94)
      {
        v114 = (v93 - 8);
        if (v93 - 8 == v10)
        {
          goto LABEL_134;
        }

LABEL_133:
        *v10 = *v114;
        goto LABEL_134;
      }

      v103 = v93;
      v104 = v94;
      do
      {
        v105 = *v103;
        *v103 = *v104;
        *v104 = v105;
        do
        {
          v106 = *(v103 + 8);
          v107 = *(v103 + 12);
          v103 += 8;
          v108 = v106 < v41;
          v131 = v107 == v42;
          v109 = v107 < v42;
          if (!v131)
          {
            v108 = v109;
          }
        }

        while (v108);
        do
        {
          v110 = *(v104 - 2);
          v111 = *(v104-- - 1);
          v112 = v110 < v41;
          v131 = v111 == v42;
          v113 = v111 < v42;
          if (!v131)
          {
            v112 = v113;
          }
        }

        while (!v112);
      }

      while (v103 < v104);
      v114 = (v103 - 8);
      if (v103 - 8 != v10)
      {
        goto LABEL_133;
      }

LABEL_134:
      *v114 = v41;
      if (v93 < v94)
      {
        goto LABEL_137;
      }

      v115 = sub_BD7EC0(v10, v114);
      v10 = (v114 + 1);
      result = sub_BD7EC0((v114 + 1), a2);
      if (result)
      {
        a2 = v114;
        if (!v115)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v115)
      {
LABEL_137:
        result = sub_BD71E4(v9, v114, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v114 + 1);
      }
    }

    else
    {
      result = sub_BD7DA4(v10, a2);
      v10 = result;
      a5 = 0;
    }
  }

  v128 = *v10;
  v133 = *(v10 + 12);
  v134 = HIDWORD(*v10);
  v131 = v133 == v134;
  v135 = v133 < v134;
  if (v131)
  {
    v136 = *(v10 + 8) < *v10;
  }

  else
  {
    v136 = v135;
  }

  v137 = *(v10 + 8);
  v138 = *(a2 - 1);
  v131 = v138 == HIDWORD(v137);
  v139 = v138 < HIDWORD(v137);
  if (v131)
  {
    v139 = *(a2 - 2) < v137;
  }

  if (v136)
  {
    if (v139)
    {
      goto LABEL_167;
    }

    *v10 = v137;
    *(v10 + 8) = v128;
    v167 = *(a2 - 1);
    v131 = v167 == v134;
    v168 = v167 < v134;
    if (v131)
    {
      v168 = *(a2 - 2) < v128;
    }

    if (v168)
    {
      *(v10 + 8) = *(a2 - 1);
      goto LABEL_168;
    }
  }

  else if (v139)
  {
    *(v10 + 8) = *(a2 - 1);
    *(a2 - 1) = v137;
    v155 = *v10;
    v156 = *(v10 + 12);
    v157 = HIDWORD(*v10);
    v131 = v156 == v157;
    v158 = v156 < v157;
    if (v131)
    {
      v158 = *(v10 + 8) < *v10;
    }

    if (v158)
    {
      *v10 = *(v10 + 8);
      *(v10 + 8) = v155;
    }
  }

  return result;
}

uint64_t *sub_BD7C30(uint64_t *result, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *result;
  v5 = a2[1];
  v6 = HIDWORD(*result);
  v7 = v5 == v6;
  v8 = v5 < v6;
  if (v7)
  {
    v9 = *a2 < *result;
  }

  else
  {
    v9 = v8;
  }

  v10 = *a2;
  v11 = a3[1];
  v12 = HIDWORD(*a2);
  v7 = v11 == v12;
  v13 = v11 < v12;
  if (v7)
  {
    v13 = *a3 < *a2;
  }

  if (v9)
  {
    if (v13)
    {
      *result = *a3;
LABEL_19:
      *a3 = v4;
      goto LABEL_20;
    }

    *result = v10;
    *a2 = v4;
    v18 = a3[1];
    v7 = v18 == v6;
    v19 = v18 < v6;
    if (v7)
    {
      v20 = *a3 < v4;
    }

    else
    {
      v20 = v19;
    }

    v10 = *a3;
    if (v20)
    {
      *a2 = v10;
      goto LABEL_19;
    }
  }

  else
  {
    v4 = *a3;
    if (!v13)
    {
LABEL_20:
      v10 = v4;
      goto LABEL_21;
    }

    *a2 = v4;
    *a3 = v10;
    v14 = *result;
    v15 = a2[1];
    v16 = HIDWORD(*result);
    v7 = v15 == v16;
    v17 = v15 < v16;
    if (v7)
    {
      v17 = *a2 < *result;
    }

    if (v17)
    {
      *result = *a2;
      *a2 = v14;
      v10 = *a3;
    }
  }

LABEL_21:
  v21 = a4[1];
  v7 = v21 == HIDWORD(v10);
  v22 = v21 < HIDWORD(v10);
  if (v7)
  {
    v22 = *a4 < v10;
  }

  if (v22)
  {
    *a3 = *a4;
    *a4 = v10;
    v23 = *a2;
    v24 = a3[1];
    v25 = HIDWORD(*a2);
    v7 = v24 == v25;
    v26 = v24 < v25;
    if (v7)
    {
      v26 = *a3 < *a2;
    }

    if (v26)
    {
      *a2 = *a3;
      *a3 = v23;
      v27 = *result;
      v28 = a2[1];
      v29 = HIDWORD(*result);
      v7 = v28 == v29;
      v30 = v28 < v29;
      if (v7)
      {
        v30 = *a2 < *result;
      }

      if (v30)
      {
        *result = *a2;
        *a2 = v27;
      }
    }
  }

  return result;
}

uint64_t *sub_BD7DA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  v4 = *(a2 - 1);
  v5 = *a1 < v4;
  v6 = v3 == HIDWORD(v4);
  v7 = v3 < HIDWORD(v4);
  if (v6)
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = a1;
    do
    {
      v9 = v8[1];
      ++v8;
      v10 = v2 < v9;
      v11 = v3 < HIDWORD(v9);
      if (v3 == HIDWORD(v9))
      {
        v11 = v10;
      }
    }

    while (!v11);
  }

  else
  {
    v12 = a1 + 1;
    do
    {
      v8 = v12;
      if (v12 >= a2)
      {
        break;
      }

      ++v12;
      v13 = v3 < HIDWORD(*v8);
      if (v3 == HIDWORD(*v8))
      {
        v13 = v2 < *v8;
      }
    }

    while (!v13);
  }

  if (v8 < a2)
  {
    do
    {
      v14 = *--a2;
      v15 = v2 < v14;
      v16 = v3 < HIDWORD(v14);
      if (v3 == HIDWORD(v14))
      {
        v16 = v15;
      }
    }

    while (v16);
  }

  if (v8 < a2)
  {
    v17 = *v8;
    v18 = *a2;
    do
    {
      *v8 = v18;
      *a2 = v17;
      do
      {
        v19 = v8[1];
        ++v8;
        v17 = v19;
        v20 = v2 < v19;
        v21 = v3 < HIDWORD(v19);
        if (v3 != HIDWORD(v19))
        {
          v20 = v21;
        }
      }

      while (!v20);
      do
      {
        v22 = *--a2;
        v18 = v22;
        v23 = v2 < v22;
        v24 = v3 < HIDWORD(v22);
        if (v3 != HIDWORD(v22))
        {
          v23 = v24;
        }
      }

      while (v23);
    }

    while (v8 < a2);
  }

  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 1) = v2;
  return v8;
}

BOOL sub_BD7EC0(uint64_t a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = *a1;
        v23 = *(a1 + 12);
        v24 = HIDWORD(*a1);
        v6 = v23 == v24;
        v25 = v23 < v24;
        if (v6)
        {
          v26 = *(a1 + 8) < *a1;
        }

        else
        {
          v26 = v25;
        }

        v27 = *(a1 + 8);
        v28 = *(a2 - 1);
        v6 = v28 == HIDWORD(v27);
        v29 = v28 < HIDWORD(v27);
        if (v6)
        {
          v29 = *(a2 - 2) < v27;
        }

        if (!v26)
        {
          if (v29)
          {
            *(a1 + 8) = *(a2 - 1);
            *(a2 - 1) = v27;
            v42 = *a1;
            v43 = *(a1 + 12);
            v44 = HIDWORD(*a1);
            v6 = v43 == v44;
            v45 = v43 < v44;
            if (v6)
            {
              v45 = *(a1 + 8) < *a1;
            }

            if (v45)
            {
              *a1 = *(a1 + 8);
              *(a1 + 8) = v42;
              return 1;
            }
          }

          return 1;
        }

        if (!v29)
        {
          *a1 = v27;
          *(a1 + 8) = v3;
          v48 = *(a2 - 1);
          v6 = v48 == v24;
          v49 = v48 < v24;
          if (v6)
          {
            v49 = *(a2 - 2) < v3;
          }

          if (v49)
          {
            *(a1 + 8) = *(a2 - 1);
            *(a2 - 1) = v3;
            return 1;
          }

          return 1;
        }

        goto LABEL_31;
      case 4:
        sub_BD7C30(a1, (a1 + 8), (a1 + 16), a2 - 2);
        return 1;
      case 5:
        sub_BD7C30(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        v10 = *(a1 + 24);
        v11 = *(a2 - 1);
        v6 = v11 == HIDWORD(v10);
        v12 = v11 < HIDWORD(v10);
        if (v6)
        {
          v12 = *(a2 - 2) < v10;
        }

        if (v12)
        {
          *(a1 + 24) = *(a2 - 1);
          *(a2 - 1) = v10;
          v13 = *(a1 + 16);
          v14 = *(a1 + 28);
          v6 = v14 == HIDWORD(v13);
          v15 = v14 < HIDWORD(v13);
          if (v6)
          {
            v15 = *(a1 + 24) < v13;
          }

          if (v15)
          {
            v16 = *(a1 + 24);
            *(a1 + 16) = v16;
            *(a1 + 24) = v13;
            v17 = *(a1 + 8);
            v18 = HIDWORD(v16);
            v19 = v16 < v17;
            if (HIDWORD(v16) != HIDWORD(v17))
            {
              v19 = HIDWORD(v16) < HIDWORD(v17);
            }

            if (v19)
            {
              *(a1 + 8) = v16;
              *(a1 + 16) = v17;
              v20 = *a1;
              v6 = v18 == HIDWORD(*a1);
              v21 = v18 < HIDWORD(*a1);
              if (v6)
              {
                v21 = v16 < *a1;
              }

              if (v21)
              {
                *a1 = v16;
                *(a1 + 8) = v20;
                return 1;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *a1;
      v4 = *(a2 - 1);
      v5 = HIDWORD(*a1);
      v6 = v4 == v5;
      v7 = v4 < v5;
      if (v6)
      {
        v7 = *(a2 - 2) < *a1;
      }

      if (!v7)
      {
        return 1;
      }

LABEL_31:
      *a1 = *(a2 - 1);
      *(a2 - 1) = v3;
      return 1;
    }
  }

  v30 = (a1 + 16);
  v31 = *(a1 + 16);
  v32 = (a1 + 8);
  v33 = *a1;
  v34 = *(a1 + 12);
  v35 = HIDWORD(*a1);
  v6 = v34 == v35;
  v36 = v34 < v35;
  if (v6)
  {
    v37 = *(a1 + 8) < *a1;
  }

  else
  {
    v37 = v36;
  }

  v38 = *v32;
  v39 = *(a1 + 20);
  v40 = HIDWORD(*v32);
  v6 = v39 == v40;
  v41 = v39 < v40;
  if (v6)
  {
    v41 = v31 < *v32;
  }

  if (v37)
  {
    if (v41)
    {
      *a1 = *(a1 + 16);
LABEL_59:
      v32 = (a1 + 16);
      goto LABEL_60;
    }

    *a1 = v38;
    *(a1 + 8) = v33;
    v50 = v31 < v33;
    v6 = v39 == v35;
    v51 = v39 < v35;
    if (v6)
    {
      v51 = v50;
    }

    if (v51)
    {
      *v32 = *v30;
      goto LABEL_59;
    }
  }

  else if (v41)
  {
    v46 = *v30;
    *v32 = *v30;
    *v30 = v38;
    v6 = HIDWORD(v46) == v35;
    v47 = HIDWORD(v46) < v35;
    if (v6)
    {
      v47 = v46 < v33;
    }

    if (v47)
    {
      *a1 = v46;
LABEL_60:
      *v32 = v33;
    }
  }

  v52 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v53 = 0;
  for (i = 24; ; i += 8)
  {
    v55 = *v30;
    v56 = *(v52 + 1);
    v6 = v56 == HIDWORD(v55);
    v57 = v56 < HIDWORD(v55);
    if (v6)
    {
      v57 = *v52 < v55;
    }

    if (v57)
    {
      break;
    }

LABEL_74:
    v30 = v52++;
    if (v52 == a2)
    {
      return 1;
    }
  }

  v58 = *v52;
  v59 = HIDWORD(*v52);
  v60 = i;
  do
  {
    *(a1 + v60) = v55;
    v61 = v60 - 8;
    if (v60 == 8)
    {
      *a1 = v58;
      if (++v53 != 8)
      {
        goto LABEL_74;
      }

      return v52 + 1 == a2;
    }

    v55 = *(a1 + v60 - 16);
    v62 = v59 < HIDWORD(v55);
    if (v59 == HIDWORD(v55))
    {
      v62 = v58 < v55;
    }

    v60 -= 8;
  }

  while (v62);
  *(a1 + v61) = v58;
  if (++v53 != 8)
  {
    goto LABEL_74;
  }

  return v52 + 1 == a2;
}

uint64_t *sub_BD82D0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v3 = a2 - a1;
    if (v3 >= 2)
    {
      v4 = (v3 - 2) >> 1;
      v5 = v4;
      do
      {
        if (v4 >= v5)
        {
          v7 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
          v8 = &a1[v7];
          if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v3)
          {
            v9 = v8[1];
            v10 = *(v8 + 1);
            v11 = HIDWORD(v9);
            v12 = *v8 < v9;
            v44 = v10 == v11;
            v13 = v10 < v11;
            if (!v44)
            {
              v12 = v13;
            }

            if (v12)
            {
              ++v8;
              v7 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }
          }

          v14 = &a1[v5];
          v15 = *v14;
          v16 = *(v8 + 1);
          v17 = HIDWORD(*v14);
          v44 = v16 == v17;
          v18 = v16 < v17;
          if (v44)
          {
            v18 = *v8 < *v14;
          }

          if (!v18)
          {
            do
            {
              v22 = v14;
              v14 = v8;
              *v22 = *v8;
              if (v4 < v7)
              {
                break;
              }

              v23 = (2 * v7) | 1;
              v8 = &a1[v23];
              v24 = 2 * v7 + 2;
              if (v24 < v3)
              {
                v25 = v8[1];
                v26 = *(v8 + 1);
                v27 = HIDWORD(v25);
                v28 = *v8 < v25;
                v44 = v26 == v27;
                v29 = v26 < v27;
                if (!v44)
                {
                  v28 = v29;
                }

                if (v28)
                {
                  ++v8;
                  v23 = v24;
                }
              }

              v19 = *(v8 + 1);
              v20 = *v8 < v15;
              v44 = v19 == v17;
              v21 = v19 < v17;
              if (!v44)
              {
                v20 = v21;
              }

              v7 = v23;
            }

            while (!v20);
            *v14 = v15;
          }
        }

        v6 = v5-- <= 0;
      }

      while (!v6);
    }

    v30 = a2;
    if (a2 != a3)
    {
      if (v3 >= 2)
      {
        v30 = a2;
        do
        {
          v35 = *(v30 + 1);
          v36 = HIDWORD(*a1);
          v44 = v35 == v36;
          v37 = v35 < v36;
          if (v44)
          {
            v37 = *v30 < *a1;
          }

          if (v37)
          {
            v38 = *v30;
            *v30 = *a1;
            *a1 = v38;
            if (a2 - a1 == 16)
            {
              v39 = a1 + 1;
              v40 = 1;
            }

            else
            {
              v41 = *(a1 + 5);
              v42 = *(a1 + 3);
              v44 = v42 == v41;
              v43 = v42 < v41;
              if (v44)
              {
                v43 = *(a1 + 2) < *(a1 + 4);
              }

              v44 = !v43;
              if (v43)
              {
                v39 = a1 + 2;
              }

              else
              {
                v39 = a1 + 1;
              }

              if (v44)
              {
                v40 = 1;
              }

              else
              {
                v40 = 2;
              }
            }

            v45 = *(v39 + 1);
            v44 = v45 == HIDWORD(v38);
            v46 = v45 < HIDWORD(v38);
            if (v44)
            {
              v46 = *v39 < v38;
            }

            if (!v46)
            {
              v47 = a1;
              do
              {
                v51 = v47;
                v47 = v39;
                *v51 = *v39;
                if (((v3 - 2) >> 1) < v40)
                {
                  break;
                }

                v52 = (2 * v40) | 1;
                v39 = &a1[v52];
                v53 = 2 * v40 + 2;
                if (v53 < v3)
                {
                  v54 = v39[1];
                  v55 = *(v39 + 1);
                  v56 = HIDWORD(v54);
                  v57 = *v39 < v54;
                  v44 = v55 == v56;
                  v58 = v55 < v56;
                  if (!v44)
                  {
                    v57 = v58;
                  }

                  if (v57)
                  {
                    ++v39;
                    v52 = v53;
                  }
                }

                v48 = *(v39 + 1);
                v49 = *v39 < v38;
                v44 = v48 == HIDWORD(v38);
                v50 = v48 < HIDWORD(v38);
                if (!v44)
                {
                  v49 = v50;
                }

                v40 = v52;
              }

              while (!v49);
              *v47 = v38;
            }
          }

          ++v30;
        }

        while (v30 != a3);
      }

      else
      {
        v31 = *a1;
        v30 = a2;
        do
        {
          v32 = *(v30 + 1);
          v44 = v32 == HIDWORD(v31);
          v33 = v32 < HIDWORD(v31);
          if (v44)
          {
            v33 = *v30 < v31;
          }

          if (v33)
          {
            v34 = *v30;
            *v30 = v31;
            *a1 = v34;
            v31 = v34;
          }

          ++v30;
        }

        while (v30 != a3);
      }
    }

    if (v3 < 2)
    {
      return v30;
    }

    while (1)
    {
      v60 = 0;
      v61 = *a1;
      v62 = (v3 - 2) >> 1;
      v63 = a1;
      do
      {
        while (1)
        {
          v70 = &v63[v60];
          v69 = v70 + 1;
          v71 = (2 * v60) | 1;
          v60 = 2 * v60 + 2;
          if (v60 < v3)
          {
            break;
          }

          v60 = v71;
          *v63 = *v69;
          v63 = v70 + 1;
          if (v71 > v62)
          {
            goto LABEL_78;
          }
        }

        v65 = v70[2];
        v64 = v70 + 2;
        v66 = *(v64 - 1);
        v67 = *(v64 - 2) < v65;
        v44 = v66 == HIDWORD(v65);
        v68 = v66 < HIDWORD(v65);
        if (!v44)
        {
          v67 = v68;
        }

        if (v67)
        {
          v69 = v64;
        }

        else
        {
          v60 = v71;
        }

        *v63 = *v69;
        v63 = v69;
      }

      while (v60 <= v62);
LABEL_78:
      if (v69 != --a2)
      {
        *v69 = *a2;
        *a2 = v61;
        v72 = (v69 - a1 + 8) >> 3;
        v6 = v72 < 2;
        v73 = v72 - 2;
        if (v6)
        {
          goto LABEL_68;
        }

        v74 = v73 >> 1;
        v75 = &a1[v73 >> 1];
        v61 = *v69;
        v76 = *(v75 + 1);
        v77 = HIDWORD(*v69);
        v44 = v76 == v77;
        v78 = v76 < v77;
        if (v44)
        {
          v78 = *v75 < *v69;
        }

        if (!v78)
        {
          goto LABEL_68;
        }

        do
        {
          v79 = v69;
          v69 = v75;
          *v79 = *v75;
          if (!v74)
          {
            break;
          }

          v74 = (v74 - 1) >> 1;
          v75 = &a1[v74];
          v80 = *(v75 + 1);
          v44 = v80 == v77;
          v81 = v80 < v77;
          if (v44)
          {
            v81 = *v75 < v61;
          }
        }

        while (v81);
      }

      *v69 = v61;
LABEL_68:
      v6 = v3-- <= 2;
      if (v6)
      {
        return v30;
      }
    }
  }

  return a3;
}

unint64_t sub_BD8728(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v82 = a2;
  v5 = *a1;
  v80 = 0x7FFFFFFF;
  v81 = 0x7FFFFFFF;
  sub_A79708(v71, *(v5 + 48), a3, 0, 0, 0);
  v6 = **(a1 + 8);
  v83[0] = &v84;
  v83[1] = 1;
  v84 = v6;
  sub_BD8E68(v71, v83, &v69);
  v7 = v69;
  v8 = v70;
  if (v69 != v70)
  {
    while (1)
    {
      v9 = *v7;
      v10 = sub_A57920((*(v5 + 48) + 4136), a3);
      v11 = (v10 - *v10);
      v12 = *v11;
      if (v12 < 5)
      {
        v13 = 0;
        goto LABEL_9;
      }

      if (v11[2])
      {
        v13 = v10 + v11[2] + *(v10 + v11[2]);
        if (v12 < 9)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v13 = 0;
        if (v12 < 9)
        {
          goto LABEL_9;
        }
      }

      v65 = v11[4];
      if (v65)
      {
        v14 = (v10 + v65 + *(v10 + v65));
        goto LABEL_10;
      }

LABEL_9:
      v14 = 0;
LABEL_10:
      if (**(a1 + 16) == __ROR8__(*&v13[8 * *(sub_A571D4(v14, v9) + 14) + 4], 32) && **(a1 + 24) == sub_BD5DA0((*(v5 + 48) + 4136), a3, v9) && **(a1 + 32) == sub_BD5F34((*(v5 + 48) + 4136), a3, v9))
      {
        v15 = v73;
        v74 = v73;
        v16 = v73;
        do
        {
          if (v16 >= v75)
          {
            break;
          }

          v17 = v76;
          if (!v76)
          {
            break;
          }

          v18 = sub_585D8((v71[0] + 3896));
          v19 = 0xAAAAAAAAAAAAAAABLL * (v16 - v15);
          v20 = *v17;
          if (v19 < v20)
          {
            break;
          }

          v21 = *(v17 + 1);
          if (*(v17 + 2) + v20 - v21 <= v19)
          {
            break;
          }

          v22 = *(v21 + (v19 - v20));
          if ((v22 & 1) == 0)
          {
            break;
          }

          if (((v22 >> 1) & 1 & ~v18) != 0)
          {
            break;
          }

          v15 = v73;
          v16 = v74 + 3;
          v74 = v16;
        }

        while (v16 >= v73);
        v24 = v73;
        v23 = v74;
        if (v74 >= v73 && v74 < v75)
        {
          if (v77 == 1)
          {
            v78 = 0;
            v26 = (v72 + *(v72 - *v72 + 8));
            v79 = *(&v26[3 * (v74[2] >> 8) + 2] + *v26) + *v74;
          }

          do
          {
            v28 = sub_A5706C((*(v5 + 48) + 4136), a3);
            v29 = v28;
            v30 = &v28[-*v28];
            if (*v30 < 5u)
            {
              v31 = 0;
            }

            else
            {
              v31 = *(v30 + 2);
              if (v31)
              {
                v31 += &v28[*&v28[v31]];
              }
            }

            v32 = (v31 + 4 * a3 + 4 + *(v31 + 4 * a3 + 4));
            v33 = (v32 - *v32);
            if (*v33 >= 9u && (v34 = v33[4]) != 0)
            {
              v35 = (v32 + v34 + *(v32 + v34));
            }

            else
            {
              v35 = 0;
            }

            v36 = sub_A571D4(v35, v9);
            v37 = (v29 - *v29);
            if (*v37 < 0xBu)
            {
              v38 = 0;
              v39 = (v32 - *v32);
              if (*v39 < 0x11u)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v38 = v37[5];
              if (v38)
              {
                v38 = (v38 + v29 + *(v38 + v29));
              }

              v39 = (v32 - *v32);
              if (*v39 < 0x11u)
              {
LABEL_46:
                LODWORD(v40) = 0;
                goto LABEL_47;
              }
            }

            v40 = v39[8];
            if (v39[8])
            {
              LODWORD(v40) = *(v32 + v40);
            }

LABEL_47:
            v41 = sub_A57320(v38, v40 + *(v32 + v39[2] + *(v32 + v39[2])) * -1431655765 * ((v23 - v24) >> 2) + *(v36 + 14));
            if (v41)
            {
              v42 = __ROR8__(*v41, 32);
              v43 = *(v41 + 8);
            }

            else
            {
              v43 = 0;
              v42 = 0xFFFFFFFFLL;
            }

            v44 = sub_3A231C(*(*(v5 + 48) + 4184) + 24, __ROR8__(v42, 32), 0);
            v45 = v44;
            v46 = &v44[-*v44];
            if (*v46 >= 5u && (v47 = *(v46 + 2)) != 0)
            {
              v48 = &v44[v47 + *&v44[v47]];
            }

            else
            {
              v48 = 0;
            }

            v49 = sub_BCA9F8(v48, v42);
            v50 = (v45 - *v45);
            if (*v50 < 0xDu)
            {
              v51 = 0;
              v52 = (v49 - *v49);
              if (*v52 < 0x15u)
              {
                goto LABEL_62;
              }
            }

            else
            {
              v51 = v50[6];
              if (v51)
              {
                v51 = (v51 + v45 + *(v51 + v45));
              }

              v52 = (v49 - *v49);
              if (*v52 < 0x15u)
              {
                goto LABEL_62;
              }
            }

            v53 = v52[10];
            if (v53)
            {
              v54 = *(v49 + v53);
              goto LABEL_63;
            }

LABEL_62:
            v54 = -1;
LABEL_63:
            v55 = sub_A56DB8(v51, v54 + v43);
            v56 = *(a1 + 40);
            if (*v55 == *v56 && *(v56 + 2) == (*(v55 + 2) + 1) && *(v55 + 3) == *(v56 + 3))
            {
              v82 = sub_BD67E0(v5, &v82, a3, v9, -1431655765 * ((v74 - v73) >> 2));
            }

            v24 = v73;
            v23 = v74 + 3;
            v74 = v23;
            if (v23 >= v73)
            {
              do
              {
                if (v23 >= v75)
                {
                  break;
                }

                v57 = v76;
                if (!v76)
                {
                  break;
                }

                v58 = sub_585D8((v71[0] + 3896));
                v59 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 2);
                v60 = *v57;
                if (v59 < v60)
                {
                  break;
                }

                v61 = *(v57 + 1);
                if (*(v57 + 2) + v60 - v61 <= v59)
                {
                  break;
                }

                v62 = *(v61 + (v59 - v60));
                if ((v62 & 1) == 0)
                {
                  break;
                }

                if (((v62 >> 1) & 1 & ~v58) != 0)
                {
                  break;
                }

                v24 = v73;
                v23 = v74 + 3;
                v74 = v23;
              }

              while (v23 >= v73);
              v24 = v73;
              v23 = v74;
            }

            if (v77 == 1)
            {
              v78 = 0;
              if (v23 >= v24 && v23 < v75)
              {
                v64 = (v72 + *(v72 - *v72 + 8));
                v79 = *(&v64[3 * (v23[2] >> 8) + 2] + *v64) + *v23;
              }
            }
          }

          while (v23 >= v24 && v23 < v75);
        }
      }

      v7 += 2;
      if (v7 == v8)
      {
        v7 = v69;
        break;
      }
    }
  }

  if (v7)
  {
    v70 = v7;
    operator delete(v7);
  }

  v66 = &v81;
  if (v82 != 0x7FFFFFFF)
  {
    if (v81 >= v82)
    {
      v66 = &v82;
    }

    if (v81 == 0x7FFFFFFF)
    {
      v66 = &v82;
    }
  }

  v67 = &v80;
  if (HIDWORD(v82) != 0x7FFFFFFF)
  {
    if (SHIDWORD(v82) >= v80)
    {
      v67 = &v82 + 1;
    }

    if (v80 == 0x7FFFFFFF)
    {
      v67 = &v82 + 1;
    }
  }

  return *v66 | (*v67 << 32);
}

void sub_BD8E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_BD8E68(void *a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = a1[5];
  v6 = (v5 - 16);
  a1[4] = v5 - 16;
  if (*(*a1 + 16) == 1 && (a1[1] & 1) == 0 && v6 >= a1[3])
  {
    do
    {
      if (v6 >= a1[5])
      {
        break;
      }

      v7 = __ROR8__(*v6, 32);
      if (HIDWORD(v7) == 1 && (v7 + 3) < 2)
      {
        break;
      }

      v9 = sub_2D5204(**(*a1 + 4120));
      v6 = a1[4];
      if (v9)
      {
        break;
      }

      v6 -= 2;
      a1[4] = v6;
    }

    while (v6 >= a1[3]);
    v5 = a1[5];
  }

  v10 = a1[3];
  if (v6 >= v10 && v6 < v5)
  {
    v12 = 0;
    do
    {
      if (v12)
      {
        v13 = *(a2 + 8);
        if (v13)
        {
          v14 = __ROR8__(*v6, 32);
          v15 = *a2;
          v16 = 8 * v13;
          while (v14 != *v15)
          {
            ++v15;
            v16 -= 8;
            if (!v16)
            {
              goto LABEL_47;
            }
          }

          if ((*(v6 + 15) & 2) != 0)
          {
            v17 = a1[6];
            v18 = 0;
            if (v17)
            {
              v19 = *(v17 + 4 * ((v6 - v10) >> 4));
              v18 = 0;
              while ((*(v18 + 8) & v19) != 0)
              {
                v18 += 16;
                if (v18 == v12)
                {
                  goto LABEL_47;
                }
              }
            }

            if (v18 != v12)
            {
              v20 = (v6 - v10) >> 4;
              v21 = a3;
              v23 = a3[1];
              v22 = a3[2];
              if (v23 >= v22)
              {
                v25 = *a3;
                v26 = v23 - *a3;
                v27 = v26 >> 3;
                v28 = (v26 >> 3) + 1;
                if (v28 >> 61)
                {
                  sub_1794();
                }

                v29 = v22 - v25;
                if (v29 >> 2 > v28)
                {
                  v28 = v29 >> 2;
                }

                if (v29 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v30 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v30 = v28;
                }

                if (v30)
                {
                  if (!(v30 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v31 = (8 * v27);
                *v31 = v20;
                v31[1] = *v18;
                v24 = 8 * v27 + 8;
                memcpy(0, v25, v26);
                v21 = a3;
                *a3 = 0;
                a3[2] = 0;
                if (v25)
                {
                  operator delete(v25);
                  v21 = a3;
                }
              }

              else
              {
                *v23 = v20;
                *(v23 + 1) = *v18;
                v24 = (v23 + 8);
              }

              v21[1] = v24;
              v6 = a1[4];
            }
          }
        }

LABEL_47:
        if (*(v6 + 15))
        {
          v32 = a1[6];
          if (v32)
          {
            v33 = ~*(v32 + 4 * ((v6 - a1[3]) >> 4));
            v34 = 0;
            while ((*(v34 + 8) & v33) != 0)
            {
              v34 += 16;
              if (v34 == v12)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            v35 = 0;
            while (*(v35 + 8))
            {
              v35 += 16;
              if (v35 == v12)
              {
                goto LABEL_56;
              }
            }
          }
        }
      }

      else if (*(v6 + 15))
      {
LABEL_56:
        v36 = (v6 - a1[3]) >> 4;
        v37 = a1[6];
        if (v37)
        {
          v38 = *(v37 + 4 * v36);
        }

        else
        {
          v38 = 0;
        }

        v39 = v12;
        v40 = v12 >> 4;
        if (((v12 >> 4) + 1) >> 60)
        {
          sub_1794();
        }

        if (v12 >> 4 != -1)
        {
          if (!(((v12 >> 4) + 1) >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v41 = 16 * v40;
        *v41 = v36;
        *(v41 + 8) = v38;
        v12 = 16 * v40 + 16;
        memcpy(0, 0, v39);
      }

      v10 = a1[3];
      v6 = (a1[4] - 16);
      a1[4] = v6;
      if (*(*a1 + 16) == 1 && (a1[1] & 1) == 0 && v6 >= v10 && v6 < a1[5])
      {
        do
        {
          v43 = __ROR8__(*v6, 32);
          if (HIDWORD(v43) == 1 && (v43 + 3) < 2)
          {
            break;
          }

          v45 = sub_2D5204(**(*a1 + 4120));
          v10 = a1[3];
          v6 = a1[4];
          if (v45)
          {
            break;
          }

          v6 -= 2;
          a1[4] = v6;
        }

        while (v6 >= v10 && v6 < a1[5]);
      }
    }

    while (v6 >= v10 && v6 < a1[5]);
  }
}

void sub_BD92FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
    v14 = *a12;
    if (!*a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = *a12;
    if (!*a12)
    {
      goto LABEL_3;
    }
  }

  *(a12 + 8) = v14;
  operator delete(v14);
  _Unwind_Resume(exception_object);
}

unint64_t sub_BD9364(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v82 = a2;
  v5 = *a1;
  v80 = 0x7FFFFFFF;
  v81 = 0x7FFFFFFF;
  sub_A79708(v71, *(v5 + 48), a3, 0, 0, 0);
  v6 = **(a1 + 8);
  v83[0] = &v84;
  v83[1] = 1;
  v84 = v6;
  sub_BD8E68(v71, v83, &v69);
  v7 = v69;
  v8 = v70;
  if (v69 != v70)
  {
    while (1)
    {
      v9 = *v7;
      v10 = sub_A57920((*(v5 + 48) + 4136), a3);
      v11 = (v10 - *v10);
      v12 = *v11;
      if (v12 < 5)
      {
        v13 = 0;
        goto LABEL_9;
      }

      if (v11[2])
      {
        v13 = v10 + v11[2] + *(v10 + v11[2]);
        if (v12 < 9)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v13 = 0;
        if (v12 < 9)
        {
          goto LABEL_9;
        }
      }

      v65 = v11[4];
      if (v65)
      {
        v14 = (v10 + v65 + *(v10 + v65));
        goto LABEL_10;
      }

LABEL_9:
      v14 = 0;
LABEL_10:
      if (**(a1 + 16) == __ROR8__(*&v13[8 * *(sub_A571D4(v14, v9) + 14) + 4], 32) && **(a1 + 24) == sub_BD5DA0((*(v5 + 48) + 4136), a3, v9) && **(a1 + 32) == sub_BD5F34((*(v5 + 48) + 4136), a3, v9))
      {
        v15 = v73;
        v74 = v73;
        v16 = v73;
        do
        {
          if (v16 >= v75)
          {
            break;
          }

          v17 = v76;
          if (!v76)
          {
            break;
          }

          v18 = sub_585D8((v71[0] + 3896));
          v19 = 0xAAAAAAAAAAAAAAABLL * (v16 - v15);
          v20 = *v17;
          if (v19 < v20)
          {
            break;
          }

          v21 = *(v17 + 1);
          if (*(v17 + 2) + v20 - v21 <= v19)
          {
            break;
          }

          v22 = *(v21 + (v19 - v20));
          if ((v22 & 1) == 0)
          {
            break;
          }

          if (((v22 >> 1) & 1 & ~v18) != 0)
          {
            break;
          }

          v15 = v73;
          v16 = v74 + 3;
          v74 = v16;
        }

        while (v16 >= v73);
        v24 = v73;
        v23 = v74;
        if (v74 >= v73 && v74 < v75)
        {
          if (v77 == 1)
          {
            v78 = 0;
            v26 = (v72 + *(v72 - *v72 + 8));
            v79 = *(&v26[3 * (v74[2] >> 8) + 2] + *v26) + *v74;
          }

          do
          {
            v28 = sub_A5706C((*(v5 + 48) + 4136), a3);
            v29 = v28;
            v30 = &v28[-*v28];
            if (*v30 < 5u)
            {
              v31 = 0;
            }

            else
            {
              v31 = *(v30 + 2);
              if (v31)
              {
                v31 += &v28[*&v28[v31]];
              }
            }

            v32 = (v31 + 4 * a3 + 4 + *(v31 + 4 * a3 + 4));
            v33 = (v32 - *v32);
            if (*v33 >= 9u && (v34 = v33[4]) != 0)
            {
              v35 = (v32 + v34 + *(v32 + v34));
            }

            else
            {
              v35 = 0;
            }

            v36 = sub_A571D4(v35, v9);
            v37 = (v29 - *v29);
            if (*v37 < 0xBu)
            {
              v38 = 0;
              v39 = (v32 - *v32);
              if (*v39 < 0x11u)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v38 = v37[5];
              if (v38)
              {
                v38 = (v38 + v29 + *(v38 + v29));
              }

              v39 = (v32 - *v32);
              if (*v39 < 0x11u)
              {
LABEL_46:
                LODWORD(v40) = 0;
                goto LABEL_47;
              }
            }

            v40 = v39[8];
            if (v39[8])
            {
              LODWORD(v40) = *(v32 + v40);
            }

LABEL_47:
            v41 = sub_A57320(v38, v40 + *(v32 + v39[2] + *(v32 + v39[2])) * -1431655765 * ((v23 - v24) >> 2) + *(v36 + 14));
            if (v41)
            {
              v42 = __ROR8__(*v41, 32);
              v43 = *(v41 + 8);
            }

            else
            {
              v43 = 0;
              v42 = 0xFFFFFFFFLL;
            }

            v44 = sub_3A231C(*(*(v5 + 48) + 4184) + 24, __ROR8__(v42, 32), 0);
            v45 = v44;
            v46 = &v44[-*v44];
            if (*v46 >= 5u && (v47 = *(v46 + 2)) != 0)
            {
              v48 = &v44[v47 + *&v44[v47]];
            }

            else
            {
              v48 = 0;
            }

            v49 = sub_BCA9F8(v48, v42);
            v50 = (v45 - *v45);
            if (*v50 < 0xDu)
            {
              v51 = 0;
              v52 = (v49 - *v49);
              if (*v52 < 0x15u)
              {
                goto LABEL_62;
              }
            }

            else
            {
              v51 = v50[6];
              if (v51)
              {
                v51 = (v51 + v45 + *(v51 + v45));
              }

              v52 = (v49 - *v49);
              if (*v52 < 0x15u)
              {
                goto LABEL_62;
              }
            }

            v53 = v52[10];
            if (v53)
            {
              v54 = *(v49 + v53);
              goto LABEL_63;
            }

LABEL_62:
            v54 = -1;
LABEL_63:
            v55 = sub_A56DB8(v51, v54 + v43);
            v56 = *(a1 + 40);
            if (*v55 == *v56 && *(v56 + 2) == (*(v55 + 2) + 1) && *(v55 + 3) == *(v56 + 3))
            {
              v82 = sub_BD67E0(v5, &v82, a3, v9, -1431655765 * ((v74 - v73) >> 2));
            }

            v24 = v73;
            v23 = v74 + 3;
            v74 = v23;
            if (v23 >= v73)
            {
              do
              {
                if (v23 >= v75)
                {
                  break;
                }

                v57 = v76;
                if (!v76)
                {
                  break;
                }

                v58 = sub_585D8((v71[0] + 3896));
                v59 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 2);
                v60 = *v57;
                if (v59 < v60)
                {
                  break;
                }

                v61 = *(v57 + 1);
                if (*(v57 + 2) + v60 - v61 <= v59)
                {
                  break;
                }

                v62 = *(v61 + (v59 - v60));
                if ((v62 & 1) == 0)
                {
                  break;
                }

                if (((v62 >> 1) & 1 & ~v58) != 0)
                {
                  break;
                }

                v24 = v73;
                v23 = v74 + 3;
                v74 = v23;
              }

              while (v23 >= v73);
              v24 = v73;
              v23 = v74;
            }

            if (v77 == 1)
            {
              v78 = 0;
              if (v23 >= v24 && v23 < v75)
              {
                v64 = (v72 + *(v72 - *v72 + 8));
                v79 = *(&v64[3 * (v23[2] >> 8) + 2] + *v64) + *v23;
              }
            }
          }

          while (v23 >= v24 && v23 < v75);
        }
      }

      v7 += 2;
      if (v7 == v8)
      {
        v7 = v69;
        break;
      }
    }
  }

  if (v7)
  {
    v70 = v7;
    operator delete(v7);
  }

  v66 = &v81;
  if (v82 != 0x7FFFFFFF)
  {
    if (v81 >= v82)
    {
      v66 = &v82;
    }

    if (v81 == 0x7FFFFFFF)
    {
      v66 = &v82;
    }
  }

  v67 = &v80;
  if (HIDWORD(v82) != 0x7FFFFFFF)
  {
    if (SHIDWORD(v82) >= v80)
    {
      v67 = &v82 + 1;
    }

    if (v80 == 0x7FFFFFFF)
    {
      v67 = &v82 + 1;
    }
  }

  return *v66 | (*v67 << 32);
}

void sub_BD9A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

unint64_t sub_BD9AA4(void *a1, uint64_t a2)
{
  sub_C9E54C(*a1 + 3896, 2);

  return sub_BD9AF0(a1, a2);
}

unint64_t sub_BD9AF0(unint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 200);
      v6 = *(v2 + 208);
      while (v5 != v6)
      {
        if (!*(v5 + 24))
        {
          v7 = *v5;
          v8 = *(v5 + 8);
          while (v7 != v8)
          {
            if (*(v7 + 160))
            {
              sub_5AF20();
            }

            result = sub_BD9BE0(v4, v7);
            v9 = *(v7 + 64);
            for (i = *(v7 + 72); v9 != i; v9 += 60)
            {
              result = sub_BD9D50(v4, v9);
            }

            v11 = *(v7 + 88);
            for (j = *(v7 + 96); v11 != j; v11 += 60)
            {
              result = sub_BD9D50(v4, v11);
            }

            v7 += 168;
          }
        }

        v5 += 72;
      }

      v2 += 296;
    }

    while (v2 != v3);
  }

  return result;
}

unint64_t sub_BD9BE0(unint64_t result, uint64_t a2)
{
  if (*(a2 + 44) == -1)
  {
    v26 = v2;
    v27 = v3;
    v5 = result;
    v24 = sub_A56F04((*result + 4136), *(a2 + 32), *(a2 + 52), *(a2 + 40));
    v25 = v6;
    v7 = *(a2 + 52);
    v8 = sub_A57920((*v5 + 4136), *(a2 + 32));
    v9 = (v8 - *v8);
    if (*v9 >= 9u && (v10 = v9[4]) != 0)
    {
      v11 = (v8 + v10 + *(v8 + v10));
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_A571D4(v11, v7);
    *(a2 + 8) = sub_A56700((*v5 + 4184), &v24, *(v12 + 12), 0x7FFFFFFF);
    *(a2 + 16) = v13;
    v22 = sub_A56F04((*v5 + 4136), *(a2 + 32), *(a2 + 56), *(a2 + 40));
    v23 = v14;
    v15 = *(a2 + 56);
    v16 = sub_A57920((*v5 + 4136), *(a2 + 32));
    v17 = (v16 - *v16);
    if (*v17 >= 9u && (v18 = v17[4]) != 0)
    {
      v19 = (v16 + v18 + *(v16 + v18));
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_A571D4(v19, v15);
    result = sub_A56A5C((*v5 + 4184), &v22, *(v20 + 12), 0x7FFFFFFF);
    *(a2 + 20) = result;
    *(a2 + 28) = v21;
  }

  return result;
}

unint64_t sub_BD9D50(unint64_t result, uint64_t a2)
{
  if (*(a2 + 40) == -1)
  {
    v26 = v2;
    v27 = v3;
    v5 = result;
    v24 = sub_A56F04((*result + 4136), *(a2 + 28), *(a2 + 48), *(a2 + 36));
    v25 = v6;
    v7 = *(a2 + 48);
    v8 = sub_A57920((*v5 + 4136), *(a2 + 28));
    v9 = (v8 - *v8);
    if (*v9 >= 9u && (v10 = v9[4]) != 0)
    {
      v11 = (v8 + v10 + *(v8 + v10));
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_A571D4(v11, v7);
    *(a2 + 4) = sub_A56700((*v5 + 4184), &v24, *(v12 + 12), 0x7FFFFFFF);
    *(a2 + 12) = v13;
    v22 = sub_A56F04((*v5 + 4136), *(a2 + 28), *(a2 + 52), *(a2 + 36));
    v23 = v14;
    v15 = *(a2 + 52);
    v16 = sub_A57920((*v5 + 4136), *(a2 + 28));
    v17 = (v16 - *v16);
    if (*v17 >= 9u && (v18 = v17[4]) != 0)
    {
      v19 = (v16 + v18 + *(v16 + v18));
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_A571D4(v19, v15);
    result = sub_A56A5C((*v5 + 4184), &v22, *(v20 + 12), 0x7FFFFFFF);
    *(a2 + 16) = result;
    *(a2 + 24) = v21;
  }

  return result;
}

void sub_BD9EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  for (i = *(a2 + 56); v2 != i; v2 += 248)
  {
    v4 = *(v2 + 96);
    if (v4 != *(v2 + 104))
    {
      v5 = *(v2 + 120);
      if (v5 == -1)
      {
        v5 = 0;
      }

      v6 = (v4 + 60 * v5);
      v8 = v6[1];
      v7 = v6[2];
      v9 = *(v6 + 41);
      *(v2 + 124) = *v6;
      *(v2 + 165) = v9;
      *(v2 + 156) = v7;
      *(v2 + 140) = v8;
    }
  }
}

void sub_BD9F20(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_BDA12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BDA150(int **a1)
{
  v1 = *(a1 + 23);
  if (*(a1 + 23) < 0)
  {
    if (a1[1] == (dword_8 + 1) && **a1 == 0x4554534547475553 && *(*a1 + 8) == 68)
    {
      return 0;
    }

    if (a1[1] != (dword_4 + 2))
    {
      goto LABEL_21;
    }

    v2 = *a1;
  }

  else
  {
    v2 = a1;
    if (v1 != 6)
    {
      if (v1 != 9)
      {
        goto LABEL_50;
      }

      if (*a1 != 0x4554534547475553 || *(a1 + 8) != 68)
      {
        goto LABEL_50;
      }

      return 0;
    }
  }

  v6 = *v2;
  v7 = *(v2 + 2);
  if (v6 == 1414748499 && v7 == 19781)
  {
    return 1;
  }

LABEL_21:
  v9 = a1[1];
  if ((v1 & 0x80) != 0 && v9 == (&dword_1C + 1))
  {
    if (**a1 != 0x4C5F4D4554535953 || *(*a1 + 1) != 0x44455A494C41434FLL || *(*a1 + 2) != 0x5449534E4152545FLL || *(*a1 + 21) != 0x455059545F544953)
    {
      goto LABEL_50;
    }

    return 2;
  }

  else
  {
    if ((v1 & 0x80) == 0 || v9 != (dword_18 + 3) || (**a1 == 0x434F4C5F454E494CLL ? (v13 = *(*a1 + 1) == 0x545F44455A494C41) : (v13 = 0), v13 ? (v14 = *(*a1 + 2) == 0x545F5449534E4152) : (v14 = 0), v14 ? (v15 = *(*a1 + 19) == 0x455059545F544953) : (v15 = 0), !v15))
    {
LABEL_50:
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      sub_30F54(" provided", &v20, &v21);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v21;
      }

      else
      {
        v17 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      v19 = sub_2D390(exception, v17, size);
    }

    return 3;
  }
}

void sub_BDA3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BDA41C(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8) == 7 && **a1 == 1413567571 && *(*a1 + 3) == 1313818964)
    {
      return 0;
    }

    if (*(a1 + 8) == 4 && **a1 == 1280065864)
    {
      return 1;
    }

    if (*(a1 + 8) != 4)
    {
      goto LABEL_22;
    }

    v5 = *a1;
  }

  else
  {
    if (v1 != 4)
    {
      if (v1 != 7)
      {
        goto LABEL_37;
      }

      if (*a1 != 1413567571 || *(a1 + 3) != 1313818964)
      {
        goto LABEL_37;
      }

      return 0;
    }

    v5 = a1;
    if (*a1 == 1280065864)
    {
      return 1;
    }
  }

  if (*v5 == 1347376211)
  {
    return 2;
  }

LABEL_22:
  if ((v1 & 0x80) == 0 || *(a1 + 8) != 27 || (**a1 == 0x434F4C5F454E494CLL ? (v6 = *(*a1 + 8) == 0x545F44455A494C41) : (v6 = 0), v6 ? (v7 = *(*a1 + 16) == 0x545F5449534E4152) : (v7 = 0), v7 ? (v8 = *(*a1 + 19) == 0x455059545F544953) : (v8 = 0), !v8))
  {
LABEL_37:
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54(" provided", &v13, &v14);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v14;
    }

    else
    {
      v10 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v12 = sub_2D390(exception, v10, size);
  }

  return 3;
}

void sub_BDA648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_BDA6D0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      if ((*a1 >> *(v2 + 104)))
      {
        v6 = *(v2 + 80);
        v7 = *(v2 + 88);
        while (v6 != v7)
        {
          if ((a1[1] >> *(v6 + 104)))
          {
            sub_BDA768(a1, a2, v6);
          }

          v6 += 112;
        }
      }

      v2 += 112;
    }

    while (v2 != v3);
  }
}

void sub_BDA768(uint64_t a1, void *a2, uint64_t a3)
{
  *__p = 0u;
  *v31 = 0u;
  v32 = 1065353216;
  v7 = *(a3 + 80);
  v8 = *(a3 + 88);
  v6 = a3 + 80;
  if (v7 == v8)
  {
    goto LABEL_13;
  }

  do
  {
    v9 = sub_BDA9B0(a1, a2, __p, *v7);
    v10 = a2[3];
    sub_37E4FC(v10 + 160 * v9 + 72, *(v10 + 160 * v9 + 80), *(v10 + 160 * *v7 + 72), *(v10 + 160 * *v7 + 80), (*(v10 + 160 * *v7 + 80) - *(v10 + 160 * *v7 + 72)) >> 4);
    v7 += 4;
  }

  while (v7 != v8);
  v11 = v31[0];
  if (!v31[0])
  {
LABEL_13:
    *(a3 + 88) = *(a3 + 80);
  }

  else
  {
    v12 = v31[0];
    do
    {
      v18 = a2[3];
      v19 = v18 + 160 * *(v12 + 8);
      v21 = v12[5];
      v20 = v12[6];
      *(v19 + 156) = *(v18 + 160 * *v21 + 156);
      if (v21 == v20)
      {
        v13 = 0;
      }

      else
      {
        v22 = v21 + 1;
        do
        {
          v13 = *(v18 + 160 * *(v22 - 1) + 157);
          if (v13)
          {
            break;
          }
        }

        while (v22++ != v20);
      }

      *(v19 + 157) = v13;
      v14 = a2[6] + 248 * **(v19 + 72);
      v15 = *(v14 + 140);
      v16 = *(v14 + 156);
      v17 = *(v14 + 124);
      *(v19 + 137) = *(v14 + 165);
      *(v19 + 112) = v15;
      *(v19 + 128) = v16;
      *(v19 + 96) = v17;
      v12 = *v12;
    }

    while (v12);
    *(a3 + 88) = *(a3 + 80);
    v34 = v6;
    do
    {
      v33 = *(v11 + 8);
      sub_BDAF80(&v34, &v33);
      v11 = *v11;
    }

    while (v11);
  }

  if (*(a1 + 16) == 1)
  {
    v25 = *(a3 + 80);
    for (i = *(a3 + 88); v25 != i; v25 += 4)
    {
      sub_BDAD60(a1, a2, a2[3] + 160 * *v25);
    }
  }

  v26 = v31[0];
  if (v31[0])
  {
    do
    {
      v28 = *v26;
      v29 = v26[5];
      if (v29)
      {
        v26[6] = v29;
        operator delete(v29);
      }

      operator delete(v26);
      v26 = v28;
    }

    while (v28);
  }

  v27 = __p[0];
  __p[0] = 0;
  if (v27)
  {
    operator delete(v27);
  }
}

uint64_t sub_BDA9B0(uint64_t a1, void *a2, void *a3, unsigned int a4)
{
  v7 = a2 + 3;
  v42 = sub_BDAC30(a1, a2[3] + 160 * a4);
  v43 = v8;
  *&v33 = &v42;
  v9 = sub_BDB2F0(a3, &v42);
  v10 = v9;
  v12 = v9[6];
  v11 = v9[7];
  if (v12 >= v11)
  {
    v14 = v9[5];
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 2;
    v17 = v16 + 1;
    if ((v16 + 1) >> 62)
    {
      sub_1794();
    }

    v18 = v11 - v14;
    if (v18 >> 1 > v17)
    {
      v17 = v18 >> 1;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v19 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (!(v19 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    v20 = (v12 - v14) >> 2;
    v21 = (4 * v16);
    v22 = (4 * v16 - 4 * v20);
    *v21 = a4;
    v13 = v21 + 1;
    memcpy(v22, v14, v15);
    v10[5] = v22;
    v10[6] = v13;
    v10[7] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v12 = a4;
    v13 = v12 + 4;
  }

  v10[6] = v13;
  result = *(v10 + 8);
  if (result == -1)
  {
    *(v10 + 8) = sub_2FEF94(0xCCCCCCCCCCCCCCCDLL * ((a2[4] - a2[3]) >> 5));
    *(&v40 + 1) = 0xFFFFFFFF00000000;
    *v41 = 0;
    *&v41[24] = 0x10000000001;
    *__p = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *(&v33 + 4) = 0x8000000080000000;
    *&v39 = 0x8000000080000000;
    *(&v39 + 1) = 0x7FFFFFFFLL;
    *&v40 = 0x8000000080000000;
    *&v41[4] = xmmword_2266560;
    *&v41[20] = -1;
    v24 = a2[4];
    if (v24 >= a2[5])
    {
      v31 = sub_BDB0AC(v7, &v33);
      v32 = __p[1];
      a2[4] = v31;
      if (v32)
      {
        *&v38 = v32;
        operator delete(v32);
      }
    }

    else
    {
      *v24 = v33;
      v25 = v34;
      v26 = v36;
      v27 = __p[0];
      *(v24 + 32) = v35;
      *(v24 + 48) = v26;
      *(v24 + 16) = v25;
      *(v24 + 64) = v27;
      *(v24 + 72) = 0;
      *(v24 + 80) = 0;
      *(v24 + 88) = 0;
      v28 = v39;
      v29 = v40;
      v30 = *v41;
      *(v24 + 142) = *&v41[14];
      *(v24 + 112) = v29;
      *(v24 + 128) = v30;
      *(v24 + 96) = v28;
      a2[4] = v24 + 160;
    }

    return *(v10 + 8);
  }

  return result;
}

void sub_BDAC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_BDAC30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  v5 = sub_A57920((*(a1 + 24) + 4136), *(a2 + 124));
  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 5)
  {
    v8 = 0;
    goto LABEL_6;
  }

  if (v6[2])
  {
    v8 = v5 + v6[2] + *(v5 + v6[2]);
    if (v7 < 9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v7 < 9)
    {
      goto LABEL_6;
    }
  }

  v17 = v6[4];
  if (v17)
  {
    v9 = (v5 + v17 + *(v5 + v17));
    goto LABEL_7;
  }

LABEL_6:
  v9 = 0;
LABEL_7:
  v10 = sub_A571D4(v9, v4);
  v11 = __ROR8__(*&v8[8 * *(v10 + 14) + 4], 32);
  v12 = sub_92FC60(*(*(a1 + 24) + 4056) + 24, *&v8[8 * *(v10 + 14) + 4], 0, "line");
  v13 = (v12 - *v12);
  if (*v13 >= 7u && (v14 = v13[3]) != 0)
  {
    v15 = *(v12 + v14 + 4) | (*(v12 + v14) << 32);
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
  }

  if (*(a2 + 156) != 1)
  {
    v15 = 0xFFFFFFFFLL;
  }

  if (*(a2 + 156))
  {
    return v15;
  }

  else
  {
    return v11;
  }
}

void sub_BDAD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v4 = *(a3 + 72);
  v5 = *(a3 + 80);
  v6 = 126 - 2 * __clz((v5 - v4) >> 4);
  v20[0] = a2;
  v20[1] = a1;
  v28 = &v21;
  v29 = v20;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_BDB72C(v4, v5, &v28, v7, 1);
  v8 = *(a3 + 72);
  v9 = *(a3 + 80);
  if (v8 == v9)
  {
    v9 = *(a3 + 72);
  }

  else
  {
    for (i = v8 + 4; i != v9; i += 4)
    {
      sub_BDCB7C(&v28, *(v21 + 48), v22, *(i - 4));
      sub_BDCB7C(&v23, *(v21 + 48), v22, *i);
      if (v28 == v23)
      {
        v11 = BYTE4(v29);
        v12 = v25;
        if (BYTE4(v29) == v25 && BYTE4(v29))
        {
          v11 = v29;
          v12 = v24;
        }

        if (v11 == v12)
        {
          v13 = v31;
          v14 = v27;
          if (v31 == v27 && v31)
          {
            v13 = v30;
            v14 = v26;
          }

          if (v13 == v14)
          {
            v15 = i - 4;
            if (i - 4 != v9)
            {
              while (1)
              {
                i += 4;
                if (i == v9)
                {
                  break;
                }

                sub_BDCB7C(&v28, *(v21 + 48), v22, *v15);
                sub_BDCB7C(&v23, *(v21 + 48), v22, *i);
                if (v28 == v23)
                {
                  v16 = BYTE4(v29);
                  v17 = v25;
                  if (BYTE4(v29) == v25 && BYTE4(v29))
                  {
                    v16 = v29;
                    v17 = v24;
                  }

                  if (v16 == v17)
                  {
                    v18 = v31;
                    v19 = v27;
                    if (v31 == v27 && v31)
                    {
                      v18 = v30;
                      v19 = v26;
                    }

                    if (v18 == v19)
                    {
                      continue;
                    }
                  }
                }

                *(v15 + 1) = *i;
                v15 += 4;
              }

              v9 = v15 + 4;
            }

            break;
          }
        }
      }
    }
  }

  if (v9 != *(a3 + 80))
  {
    *(a3 + 80) = v9;
  }
}

uint64_t *sub_BDAF80(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 4;
    v8 = (v6 >> 4) + 1;
    if (v8 >> 60)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(16 * v7) = *a2;
    v12 = 16 * v7 + 16;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

uint64_t sub_BDB0AC(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = *(a2 + 48);
  v7 = 32 * ((a1[1] - *a1) >> 5);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v6;
  *(v7 + 64) = *(a2 + 64);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(a2 + 96);
  v10 = *(a2 + 112);
  v11 = *(a2 + 128);
  *(v7 + 142) = *(a2 + 142);
  *(v7 + 112) = v10;
  *(v7 + 128) = v11;
  *(v7 + 96) = v9;
  v12 = 160 * v2 + 160;
  v13 = *a1;
  v14 = a1[1];
  v15 = v7 + *a1 - v14;
  if (*a1 != v14)
  {
    v16 = *a1;
    v17 = v7 + *a1 - v14;
    do
    {
      *v17 = *v16;
      v18 = *(v16 + 1);
      v19 = *(v16 + 2);
      v20 = *(v16 + 3);
      *(v17 + 64) = v16[8];
      *(v17 + 32) = v19;
      *(v17 + 48) = v20;
      *(v17 + 16) = v18;
      *(v17 + 80) = 0;
      *(v17 + 88) = 0;
      *(v17 + 72) = *(v16 + 9);
      *(v17 + 88) = v16[11];
      v16[9] = 0;
      v16[10] = 0;
      v16[11] = 0;
      v21 = *(v16 + 6);
      v22 = *(v16 + 7);
      v23 = *(v16 + 8);
      *(v17 + 142) = *(v16 + 142);
      *(v17 + 112) = v22;
      *(v17 + 128) = v23;
      *(v17 + 96) = v21;
      v16 += 20;
      v17 += 160;
    }

    while (v16 != v14);
    do
    {
      v24 = v13[9];
      if (v24)
      {
        v13[10] = v24;
        operator delete(v24);
      }

      v13 += 20;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = v12;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

uint64_t sub_BDB284(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        v2[6] = v6;
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_BDB2F0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v5 = *(a2 + 8);
  v6 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_37;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_37:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v11[1];
      if (v15 == v6)
      {
        if (*(v11 + 5) == HIDWORD(v2) && *(v11 + 4) == v2 && *(v11 + 24) == v5)
        {
          return v11;
        }
      }

      else if ((v15 & (*&v7 - 1)) != v9)
      {
        goto LABEL_37;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_37;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_37;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_37;
    }
  }

  if (*(v11 + 5) != HIDWORD(v2) || *(v11 + 4) != v2 || *(v11 + 24) != v5)
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_BDB6B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BDB6C4(va);
  _Unwind_Resume(a1);
}

void **sub_BDB6C4(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[5];
      if (v4)
      {
        v2[6] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_BDB72C(unsigned int *a1, unsigned int *a2, void *a3, uint64_t a4, char a5)
{
  while (2)
  {
    v10 = a2 - 4;
    v90 = a2 - 12;
    v91 = a2 - 8;
    v11 = a1;
    v92 = a2;
    while (1)
    {
      while (1)
      {
        a1 = v11;
        v12 = (a2 - v11) >> 4;
        v13 = v12 - 2;
        if (v12 > 2)
        {
          switch(v12)
          {
            case 3uLL:
              v49 = sub_BDC3A0(a3, v11 + 4, v11);
              v50 = sub_BDC3A0(a3, v10, v11 + 4);
              if (v49)
              {
                if (v50)
                {
                  goto LABEL_112;
                }

                v89 = *(v11 + 1);
                v94 = *v11;
                *v11 = v89;
                *(v11 + 1) = v94;
                if (!sub_BDC3A0(a3, v10, v11 + 4))
                {
                  return;
                }

                v51 = *(v11 + 1);
                v94 = v51;
                *(v11 + 1) = *v10;
LABEL_113:
                *v10 = v51;
                return;
              }

              if (!v50)
              {
                return;
              }

              v94 = *(v11 + 1);
              v83 = v94;
              *(v11 + 1) = *v10;
              *v10 = v83;
LABEL_168:
              if (sub_BDC3A0(a3, v11 + 4, v11))
              {
                v84 = *(v11 + 1);
                v94 = *v11;
                *v11 = v84;
                *(v11 + 1) = v94;
              }

              return;
            case 4uLL:

              sub_BDC6D4(v11, v11 + 4, v11 + 8, v10, a3);
              return;
            case 5uLL:
              sub_BDC6D4(v11, v11 + 4, v11 + 8, v11 + 12, a3);
              if (!sub_BDC3A0(a3, v10, v11 + 12))
              {
                return;
              }

              v94 = *(v11 + 3);
              v45 = v94;
              *(v11 + 3) = *v10;
              *v10 = v45;
              if (!sub_BDC3A0(a3, v11 + 12, v11 + 8))
              {
                return;
              }

              v46 = *(v11 + 2);
              *(v11 + 2) = *(v11 + 3);
              *(v11 + 3) = v46;
              if (!sub_BDC3A0(a3, v11 + 8, v11 + 4))
              {
                return;
              }

              v47 = *(v11 + 1);
              *(v11 + 1) = *(v11 + 2);
              *(v11 + 2) = v47;
              goto LABEL_168;
          }
        }

        else
        {
          if (v12 < 2)
          {
            return;
          }

          if (v12 == 2)
          {
            if (!sub_BDC3A0(a3, v10, v11))
            {
              return;
            }

LABEL_112:
            v94 = *v11;
            *v11 = *v10;
            v51 = v94;
            goto LABEL_113;
          }
        }

        if (v12 <= 23)
        {
          v52 = v11 + 4;
          v53 = v11 == a2 || v52 == a2;
          v54 = v53;
          if (a5)
          {
            if ((v54 & 1) == 0)
            {
              v55 = 0;
              v56 = v11;
              do
              {
                v58 = v56;
                v56 = v52;
                if (sub_BDC3A0(a3, v52, v58))
                {
                  v94 = *v56;
                  v59 = v55;
                  do
                  {
                    *(v11 + v59 + 16) = *(v11 + v59);
                    if (!v59)
                    {
                      v57 = v11;
                      goto LABEL_127;
                    }

                    v59 -= 16;
                  }

                  while (sub_BDC3A0(a3, &v94, (v11 + v59)));
                  v57 = (v11 + v59 + 16);
LABEL_127:
                  *v57 = v94;
                }

                v52 = v56 + 4;
                v55 += 16;
              }

              while (v56 + 4 != a2);
            }
          }

          else if ((v54 & 1) == 0)
          {
            v85 = v11 - 4;
            do
            {
              v86 = a1;
              a1 = v52;
              if (sub_BDC3A0(a3, v52, v86))
              {
                v94 = *a1;
                v87 = v85;
                do
                {
                  *(v87 + 2) = *(v87 + 1);
                  v88 = sub_BDC3A0(a3, &v94, v87);
                  v87 -= 4;
                }

                while (v88);
                *(v87 + 2) = v94;
              }

              v52 = a1 + 4;
              v85 += 4;
            }

            while (a1 + 4 != a2);
          }

          return;
        }

        if (!a4)
        {
          if (v11 != a2)
          {
            v60 = v13 >> 1;
            v61 = v13 >> 1;
            do
            {
              v62 = v61;
              if (v60 >= v61)
              {
                v63 = (2 * v61) | 1;
                v64 = &a1[4 * v63];
                if (2 * v61 + 2 < v12 && sub_BDC3A0(a3, &a1[4 * v63], v64 + 4))
                {
                  v64 += 4;
                  v63 = 2 * v62 + 2;
                }

                v65 = &a1[4 * v62];
                if (!sub_BDC3A0(a3, v64, v65))
                {
                  v94 = *v65;
                  do
                  {
                    v66 = v64;
                    *v65 = *v64;
                    if (v60 < v63)
                    {
                      break;
                    }

                    v67 = (2 * v63) | 1;
                    v64 = &a1[4 * v67];
                    v68 = 2 * v63 + 2;
                    if (v68 < v12 && sub_BDC3A0(a3, &a1[4 * v67], v64 + 4))
                    {
                      v64 += 4;
                      v67 = v68;
                    }

                    v65 = v66;
                    v63 = v67;
                  }

                  while (!sub_BDC3A0(a3, v64, &v94));
                  *v66 = v94;
                }
              }

              v61 = v62 - 1;
            }

            while (v62);
            v69 = v92;
            do
            {
              v71 = 0;
              v93 = *a1;
              v72 = a1;
              do
              {
                v73 = &v72[4 * v71];
                v74 = v73 + 4;
                v75 = (2 * v71) | 1;
                v76 = 2 * v71 + 2;
                if (v76 < v12)
                {
                  v77 = v73 + 8;
                  if (sub_BDC3A0(a3, v73 + 4, v73 + 8))
                  {
                    v74 = v77;
                    v75 = v76;
                  }
                }

                *v72 = *v74;
                v72 = v74;
                v71 = v75;
              }

              while (v75 <= ((v12 - 2) >> 1));
              v69 -= 4;
              if (v74 == v69)
              {
                *v74 = v93;
              }

              else
              {
                *v74 = *v69;
                *v69 = v93;
                v78 = (v74 - a1 + 16) >> 4;
                v70 = v78 < 2;
                v79 = v78 - 2;
                if (!v70)
                {
                  v80 = v79 >> 1;
                  v81 = &a1[4 * (v79 >> 1)];
                  if (sub_BDC3A0(a3, v81, v74))
                  {
                    v94 = *v74;
                    do
                    {
                      v82 = v81;
                      *v74 = *v81;
                      if (!v80)
                      {
                        break;
                      }

                      v80 = (v80 - 1) >> 1;
                      v81 = &a1[4 * v80];
                      v74 = v82;
                    }

                    while (sub_BDC3A0(a3, v81, &v94));
                    *v82 = v94;
                  }
                }
              }

              v70 = v12-- <= 2;
            }

            while (!v70);
          }

          return;
        }

        v14 = &v11[4 * (v12 >> 1)];
        if (v12 >= 0x81)
        {
          break;
        }

        v17 = sub_BDC3A0(a3, a1, &a1[4 * (v12 >> 1)]);
        v18 = sub_BDC3A0(a3, v10, a1);
        if (v17)
        {
          if (v18)
          {
            v94 = *v14;
            *v14 = *v10;
          }

          else
          {
            v94 = *v14;
            *v14 = *a1;
            *a1 = v94;
            if (!sub_BDC3A0(a3, v10, a1))
            {
              goto LABEL_37;
            }

            v94 = *a1;
            *a1 = *v10;
          }

          *v10 = v94;
LABEL_37:
          --a4;
          if (a5)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        if (!v18)
        {
          goto LABEL_37;
        }

        v94 = *a1;
        *a1 = *v10;
        *v10 = v94;
        if (!sub_BDC3A0(a3, a1, &a1[4 * (v12 >> 1)]))
        {
          goto LABEL_37;
        }

        v94 = *v14;
        *v14 = *a1;
        *a1 = v94;
        --a4;
        if (a5)
        {
          goto LABEL_62;
        }

LABEL_61:
        if (sub_BDC3A0(a3, a1 - 4, a1))
        {
          goto LABEL_62;
        }

        v93 = *a1;
        if (sub_BDC3A0(a3, &v93, v10))
        {
          v11 = a1;
          a2 = v92;
          do
          {
            v11 += 4;
          }

          while (!sub_BDC3A0(a3, &v93, v11));
        }

        else
        {
          v41 = a1 + 4;
          a2 = v92;
          do
          {
            v11 = v41;
            if (v41 >= v92)
            {
              break;
            }

            v42 = sub_BDC3A0(a3, &v93, v41);
            v41 = v11 + 4;
          }

          while (!v42);
        }

        v43 = a2;
        if (v11 < a2)
        {
          v43 = a2;
          do
          {
            v43 -= 4;
          }

          while (sub_BDC3A0(a3, &v93, v43));
        }

        while (v11 < v43)
        {
          v94 = *v11;
          *v11 = *v43;
          *v43 = v94;
          do
          {
            v11 += 4;
          }

          while (!sub_BDC3A0(a3, &v93, v11));
          do
          {
            v43 -= 4;
          }

          while (sub_BDC3A0(a3, &v93, v43));
        }

        v44 = v11 - 4;
        if (v11 - 4 != a1)
        {
          *a1 = *v44;
        }

        a5 = 0;
        *v44 = v93;
      }

      v15 = sub_BDC3A0(a3, &a1[4 * (v12 >> 1)], a1);
      v16 = sub_BDC3A0(a3, v10, &a1[4 * (v12 >> 1)]);
      if (v15)
      {
        if (v16)
        {
          v94 = *a1;
          *a1 = *v10;
        }

        else
        {
          v94 = *a1;
          *a1 = *v14;
          *v14 = v94;
          if (!sub_BDC3A0(a3, v10, &a1[4 * (v12 >> 1)]))
          {
            goto LABEL_28;
          }

          v94 = *v14;
          *v14 = *v10;
        }

        *v10 = v94;
      }

      else if (v16)
      {
        v94 = *v14;
        *v14 = *v10;
        *v10 = v94;
        if (sub_BDC3A0(a3, &a1[4 * (v12 >> 1)], a1))
        {
          v94 = *a1;
          *a1 = *v14;
          *v14 = v94;
        }
      }

LABEL_28:
      v19 = v14 - 4;
      v20 = sub_BDC3A0(a3, v14 - 4, a1 + 4);
      v21 = sub_BDC3A0(a3, v91, v14 - 4);
      if (v20)
      {
        if (v21)
        {
          v22 = *(a1 + 1);
          v94 = v22;
          v23 = v91;
          *(a1 + 1) = *v91;
        }

        else
        {
          v94 = *(a1 + 1);
          v25 = v94;
          *(a1 + 1) = *v19;
          *v19 = v25;
          if (!sub_BDC3A0(a3, v91, v14 - 4))
          {
            goto LABEL_42;
          }

          v94 = *v19;
          v23 = v91;
          *v19 = *v91;
          v22 = v94;
        }

        *v23 = v22;
      }

      else if (v21)
      {
        v94 = *v19;
        *v19 = *v91;
        *v91 = v94;
        if (sub_BDC3A0(a3, v14 - 4, a1 + 4))
        {
          v94 = *(a1 + 1);
          v24 = v94;
          *(a1 + 1) = *v19;
          *v19 = v24;
        }
      }

LABEL_42:
      v26 = sub_BDC3A0(a3, v14 + 4, a1 + 8);
      v27 = sub_BDC3A0(a3, v90, v14 + 4);
      if (v26)
      {
        if (v27)
        {
          v28 = *(a1 + 2);
          v94 = v28;
          v29 = v90;
          *(a1 + 2) = *v90;
        }

        else
        {
          v94 = *(a1 + 2);
          v31 = v94;
          *(a1 + 2) = *(v14 + 1);
          *(v14 + 1) = v31;
          if (!sub_BDC3A0(a3, v90, v14 + 4))
          {
            goto LABEL_51;
          }

          v94 = *(v14 + 1);
          v29 = v90;
          *(v14 + 1) = *v90;
          v28 = v94;
        }

        *v29 = v28;
      }

      else if (v27)
      {
        v94 = *(v14 + 1);
        *(v14 + 1) = *v90;
        *v90 = v94;
        if (sub_BDC3A0(a3, v14 + 4, a1 + 8))
        {
          v94 = *(a1 + 2);
          v30 = v94;
          *(a1 + 2) = *(v14 + 1);
          *(v14 + 1) = v30;
        }
      }

LABEL_51:
      v32 = sub_BDC3A0(a3, v14, v14 - 4);
      v33 = sub_BDC3A0(a3, v14 + 4, v14);
      if (v32)
      {
        if (v33)
        {
          v94 = *v19;
          *v19 = *(v14 + 1);
        }

        else
        {
          v94 = *v19;
          *v19 = *v14;
          *v14 = v94;
          if (!sub_BDC3A0(a3, v14 + 4, v14))
          {
            goto LABEL_60;
          }

          v94 = *v14;
          *v14 = *(v14 + 1);
        }

        *(v14 + 1) = v94;
      }

      else if (v33)
      {
        v94 = *v14;
        *v14 = *(v14 + 1);
        *(v14 + 1) = v94;
        if (sub_BDC3A0(a3, v14, v14 - 4))
        {
          v94 = *v19;
          *v19 = *v14;
          *v14 = v94;
        }
      }

LABEL_60:
      v94 = *a1;
      *a1 = *v14;
      *v14 = v94;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v34 = 0;
      v93 = *a1;
      do
      {
        v34 += 4;
      }

      while (sub_BDC3A0(a3, &a1[v34], &v93));
      v35 = &a1[v34];
      v36 = v92;
      v53 = v34 == 4;
      a2 = v92;
      if (v53)
      {
        v36 = v92;
        do
        {
          if (v35 >= v36)
          {
            break;
          }

          v36 -= 4;
        }

        while (!sub_BDC3A0(a3, v36, &v93));
      }

      else
      {
        do
        {
          v36 -= 4;
        }

        while (!sub_BDC3A0(a3, v36, &v93));
      }

      if (v35 >= v36)
      {
        v39 = v35 - 4;
        if (v35 - 4 == a1)
        {
          goto LABEL_80;
        }

LABEL_79:
        *a1 = *v39;
        goto LABEL_80;
      }

      v37 = v35;
      v38 = v36;
      do
      {
        v94 = *v37;
        *v37 = *v38;
        *v38 = v94;
        do
        {
          v37 += 4;
        }

        while (sub_BDC3A0(a3, v37, &v93));
        do
        {
          v38 -= 4;
        }

        while (!sub_BDC3A0(a3, v38, &v93));
      }

      while (v37 < v38);
      v39 = v37 - 4;
      if (v39 != a1)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v39 = v93;
      if (v35 < v36)
      {
        goto LABEL_83;
      }

      v40 = sub_BDC830(a1, v39, a3);
      v11 = v39 + 4;
      if (sub_BDC830(v39 + 4, v92, a3))
      {
        break;
      }

      if (!v40)
      {
LABEL_83:
        sub_BDB72C(a1, v39, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v39 + 4;
      }
    }

    a2 = v39;
    if (!v40)
    {
      continue;
    }

    break;
  }
}

BOOL sub_BDC3A0(void *a1, unsigned int *a2, unsigned int *a3)
{
  sub_BDCB7C(&v57, *(**a1 + 48), *(*a1 + 8), *a2);
  v6 = a1[1];
  v7 = v6[1];
  v8 = *(*v6 + 48) + 248 * *a2;
  v9 = *(v8 + 172);
  v10 = sub_A57920((*(v7 + 24) + 4136), *(v8 + 152));
  v11 = (v10 - *v10);
  if (*v11 >= 9u && (v12 = v11[4]) != 0)
  {
    v13 = (v10 + v12 + *(v10 + v12));
  }

  else
  {
    v13 = 0;
  }

  v14 = __ROR8__(*sub_A571D4(v13, v9), 32);
  v53 = 0x1FFFFFFFELL;
  v54 = v14;
  if (sub_A5436C(*(v7 + 32), &v53))
  {
    v15 = sub_A5436C(*(v7 + 32), &v53);
    if (!v15)
    {
      goto LABEL_61;
    }

    v16 = *(v15 + 8);
    v17 = 0x7FFFFFFF;
    if (v16 != 0x7FFFFFFF)
    {
      v18 = *(v15 + 9);
      if (v18 != 0x7FFFFFFF)
      {
        v19 = *(v15 + 10);
        v20 = v18 + v16 + v19;
        if (v19 == 0x7FFFFFFF)
        {
          v17 = 0x7FFFFFFF;
        }

        else
        {
          v17 = v20;
        }
      }
    }
  }

  else
  {
    v17 = 2147483646;
  }

  v21 = v57;
  v22 = v58;
  v23 = v59;
  v24 = v60;
  v25 = v61;
  sub_BDCB7C(&v53, *(**a1 + 48), *(*a1 + 8), *a3);
  v26 = a1[1];
  v27 = v26[1];
  v28 = *(*v26 + 48) + 248 * *a3;
  v29 = *(v28 + 172);
  v30 = sub_A57920((*(v27 + 24) + 4136), *(v28 + 152));
  v31 = (v30 - *v30);
  if (*v31 >= 9u && (v32 = v31[4]) != 0)
  {
    v33 = (v30 + v32 + *(v30 + v32));
  }

  else
  {
    v33 = 0;
  }

  v34 = __ROR8__(*sub_A571D4(v33, v29), 32);
  v62[0] = 0x1FFFFFFFELL;
  v62[1] = v34;
  if (!sub_A5436C(*(v27 + 32), v62))
  {
    v37 = 2147483646;
    goto LABEL_24;
  }

  v35 = sub_A5436C(*(v27 + 32), v62);
  if (!v35)
  {
LABEL_61:
    sub_49EC("unordered_map::at: key not found");
  }

  v36 = *(v35 + 8);
  v37 = 0x7FFFFFFF;
  if (v36 != 0x7FFFFFFF)
  {
    v38 = *(v35 + 9);
    if (v38 != 0x7FFFFFFF)
    {
      v39 = *(v35 + 10);
      if (v39 != 0x7FFFFFFF)
      {
        v37 = v38 + v36 + v39;
      }
    }
  }

LABEL_24:
  v40 = HIDWORD(v21);
  v41 = HIDWORD(v53);
  v42 = v21 < v53;
  if (HIDWORD(v21) != HIDWORD(v53))
  {
    v42 = HIDWORD(v21) < HIDWORD(v53);
  }

  if (v42)
  {
    v43 = 255;
    return v43 > 0x7F;
  }

  if (v40 == v41)
  {
    v44 = v53 < v21;
  }

  else
  {
    v44 = v41 < v40;
  }

  if (v44)
  {
    v43 = 1;
    return v43 > 0x7F;
  }

  if ((v23 & 1) != 0 && (v54 & 0x100000000) != 0)
  {
    if (v22 < v54)
    {
      v45 = -1;
    }

    else
    {
      v45 = 1;
    }

    if (v22 != v54)
    {
LABEL_39:
      v46 = v45;
      goto LABEL_51;
    }
  }

  else
  {
    v47 = (v23 & 1) == 0;
    if ((v47 & BYTE4(v54)) != 0)
    {
      v45 = -1;
    }

    else
    {
      v45 = 1;
    }

    if (v47 == (v47 & BYTE4(v54)))
    {
      goto LABEL_39;
    }
  }

  if (v25 & 1) != 0 && (v56)
  {
    if (v24 < v55)
    {
      v48 = -1;
    }

    else
    {
      v48 = 1;
    }

    if (v24 != v55)
    {
LABEL_50:
      v46 = v48;
LABEL_51:
      v49 = v46 < 0;
      v43 = 255;
      if (!v49)
      {
        v43 = 1;
      }

      return v43 > 0x7F;
    }
  }

  else
  {
    v50 = (v25 & 1) == 0;
    if ((v50 & v56) != 0)
    {
      v48 = -1;
    }

    else
    {
      v48 = 1;
    }

    if (v50 == (v50 & v56))
    {
      goto LABEL_50;
    }
  }

  v51 = v17 < v37;
  v43 = 255;
  if (!v51)
  {
    v43 = 0;
  }

  return v43 > 0x7F;
}

__n128 sub_BDC6D4(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, void *a5)
{
  v10 = sub_BDC3A0(a5, a2, a1);
  v11 = sub_BDC3A0(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    v15 = *a1;
    *a1 = *a2;
    *a2 = v15;
    if (sub_BDC3A0(a5, a3, a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (sub_BDC3A0(a5, a2, a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  if (sub_BDC3A0(a5, a4, a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if (sub_BDC3A0(a5, a3, a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if (sub_BDC3A0(a5, a2, a1))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL sub_BDC830(unsigned int *a1, unsigned int *a2, void *a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 4;
        v12 = sub_BDC3A0(a3, a1 + 4, a1);
        v13 = sub_BDC3A0(a3, v7, a1 + 4);
        if (v12)
        {
          if (!v13)
          {
            v26 = *a1;
            *a1 = *(a1 + 1);
            *(a1 + 1) = v26;
            if (sub_BDC3A0(a3, v7, a1 + 4))
            {
              v27 = *(a1 + 1);
              *(a1 + 1) = *v7;
              *v7 = v27;
            }

            return 1;
          }

LABEL_15:
          v14 = *a1;
          *a1 = *v7;
          *v7 = v14;
          return 1;
        }

        if (!v13)
        {
          return 1;
        }

        v21 = *(a1 + 1);
        *(a1 + 1) = *v7;
        *v7 = v21;
        break;
      case 4:
        sub_BDC6D4(a1, a1 + 4, a1 + 8, a2 - 4, a3);
        return 1;
      case 5:
        v8 = a2 - 4;
        sub_BDC6D4(a1, a1 + 4, a1 + 8, a1 + 12, a3);
        if (!sub_BDC3A0(a3, v8, a1 + 12))
        {
          return 1;
        }

        v9 = *(a1 + 3);
        *(a1 + 3) = *v8;
        *v8 = v9;
        if (!sub_BDC3A0(a3, a1 + 12, a1 + 8))
        {
          return 1;
        }

        v10 = *(a1 + 2);
        *(a1 + 2) = *(a1 + 3);
        *(a1 + 3) = v10;
        if (!sub_BDC3A0(a3, a1 + 8, a1 + 4))
        {
          return 1;
        }

        v11 = *(a1 + 1);
        *(a1 + 1) = *(a1 + 2);
        *(a1 + 2) = v11;
        break;
      default:
        goto LABEL_16;
    }

    if (sub_BDC3A0(a3, a1 + 4, a1))
    {
      v22 = *a1;
      *a1 = *(a1 + 1);
      *(a1 + 1) = v22;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 4;
    if (!sub_BDC3A0(a3, a2 - 4, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_16:
  v16 = sub_BDC3A0(a3, a1 + 4, a1);
  v17 = a1 + 8;
  v15 = a1 + 8;
  v18 = sub_BDC3A0(a3, a1 + 8, a1 + 4);
  if (v16)
  {
    if (v18)
    {
      v19 = *a1;
      v20 = a1 + 8;
      *a1 = *v15;
      *v15 = v19;
    }

    else
    {
      v28 = *a1;
      *a1 = *(a1 + 1);
      *(a1 + 1) = v28;
      v29 = sub_BDC3A0(a3, a1 + 8, a1 + 4);
      v20 = a1 + 8;
      if (v29)
      {
        v30 = *(a1 + 1);
        *(a1 + 1) = *v17;
        *v17 = v30;
      }
    }
  }

  else
  {
    v20 = a1 + 8;
    if (v18)
    {
      v23 = *(a1 + 1);
      *(a1 + 1) = *v17;
      *v17 = v23;
      v24 = sub_BDC3A0(a3, a1 + 4, a1);
      v20 = a1 + 8;
      if (v24)
      {
        v25 = *a1;
        *a1 = *(a1 + 1);
        *(a1 + 1) = v25;
      }
    }
  }

  v31 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (!sub_BDC3A0(a3, v31, v20))
  {
LABEL_40:
    v20 = v31;
    v32 += 16;
    v31 += 4;
    if (v31 == a2)
    {
      return 1;
    }
  }

  v37[0] = *v31;
  v34 = v32;
  do
  {
    v35 = (a1 + v34);
    *(a1 + v34 + 48) = *(a1 + v34 + 32);
    if (v34 == -32)
    {
      *a1 = v37[0];
      if (++v33 != 8)
      {
        goto LABEL_40;
      }

      return v31 + 4 == a2;
    }

    v34 -= 16;
  }

  while (sub_BDC3A0(a3, v37, v35 + 4));
  *(a1 + v34 + 48) = v37[0];
  if (++v33 != 8)
  {
    goto LABEL_40;
  }

  return v31 + 4 == a2;
}

unint64_t sub_BDCB7C(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a2 + 248 * a4;
  v7 = *(v6 + 172);
  v8 = sub_A57920((*(a3 + 24) + 4136), *(v6 + 152));
  v9 = (v8 - *v8);
  v10 = *v9;
  if (v10 < 5)
  {
    v11 = 0;
    goto LABEL_6;
  }

  if (!v9[2])
  {
    v11 = 0;
    if (v10 >= 9)
    {
      goto LABEL_33;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v11 = v8 + v9[2] + *(v8 + v9[2]);
  if (v10 < 9)
  {
    goto LABEL_6;
  }

LABEL_33:
  v30 = v9[4];
  if (!v30)
  {
    goto LABEL_6;
  }

  v12 = (v8 + v30 + *(v8 + v30));
LABEL_7:
  v13 = *&v11[8 * *(sub_A571D4(v12, v7) + 14) + 4];
  v14 = *(a3 + 24);
  v15 = sub_BD5F34((v14 + 4136), *(v6 + 152), *(v6 + 172));
  if (HIDWORD(v15))
  {
    v16 = v15 == 0xFFFFFFFFLL;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    goto LABEL_12;
  }

  v20 = sub_BCAC94(*(v14 + 4136) + 24, v15, 0, "routing direction name");
  v21 = (v20 - *v20);
  if (*v21 < 5u)
  {
    LODWORD(v22) = 0;
  }

  else
  {
    v22 = v21[2];
    if (v22)
    {
      LODWORD(v22) = *(v20 + v22);
      if (v22 == -1)
      {
LABEL_12:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        goto LABEL_19;
      }
    }
  }

  v19 = v22 & 0xFFFFFF00;
  v17 = v22;
  v18 = 0x100000000;
LABEL_19:
  v23 = *(a3 + 24);
  result = sub_BD5DA0((v23 + 4136), *(v6 + 152), *(v6 + 172));
  if (HIDWORD(result))
  {
    v25 = result == 0xFFFFFFFFLL;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    goto LABEL_24;
  }

  result = sub_BCAE50(*(v23 + 4136) + 24, result, 0, "routing headsign");
  v29 = (result - *result);
  if (*v29 < 5u)
  {
    LODWORD(v26) = 0;
LABEL_30:
    v28 = v26 & 0xFFFFFF00;
    LODWORD(v26) = v26;
    v27 = 0x100000000;
    goto LABEL_31;
  }

  v26 = v29[2];
  if (!v26)
  {
    goto LABEL_30;
  }

  LODWORD(v26) = *(result + v26);
  if (v26 != -1)
  {
    goto LABEL_30;
  }

LABEL_24:
  LODWORD(v26) = 0;
  v27 = 0;
  v28 = 0;
LABEL_31:
  *a1 = __ROR8__(v13, 32);
  a1[1] = v18 | v19 | v17;
  a1[2] = v27 | v28 | v26;
  return result;
}

void sub_BDD4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_11BD8(v20);
  _Unwind_Resume(a1);
}

BOOL sub_BDD578(_BOOL8 result, int *a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  v4 = *(a3 + 56);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      result = sub_BDD8BC(v6, a2, v3);
      v3 += 248;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_BDD5CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v2 != v3)
  {
    v5 = result;
    do
    {
      result = sub_BDE0B4(v5, a2, v2);
      v2 += 160;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_BDD620(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = result;
    v6 = vneg_f32(0x100000001);
    do
    {
      v7 = *(v2 + 80);
      v8 = *(v2 + 88);
      while (v7 != v8)
      {
        v15 = *(v7 + 80);
        v16 = *(v7 + 88);
        if (v15 != v16)
        {
          if (*(v5 + 1) == 1)
          {
            v17 = (v15 + 4);
            if (v15 + 4 != v16)
            {
              do
              {
                if (*(v15 + 1) < v17[1])
                {
                  v15 = v17;
                }

                v17 += 2;
              }

              while (v17 != v16);
            }

            v16 = v15 + 4;
          }

          if (v15 == v16)
          {
            v9 = 0;
            v10 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
            v11 = -1.79769313e308;
            v12 = v10;
            v13 = v10;
            v14 = v6;
          }

          else
          {
            v18 = 0;
            v10 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
            v11 = -1.79769313e308;
            v12 = v10;
            v13 = v10;
            v14 = v6;
            do
            {
              v20 = v13;
              v21 = v12;
              v22 = v10;
              v19 = *v15;
              v15 += 4;
              result = sub_A5C314(a2 + 3, v19);
              v10 = vbslq_s8(vcgtq_f64(*(result + 16), v22), *(result + 16), v22);
              v18 |= *result;
              v14 = vmin_s32(*(result + 4), v14);
              v12 = vbslq_s8(vcgtq_f64(*(result + 32), v21), *(result + 32), v21);
              v13 = vbslq_s8(vcgtq_f64(*(result + 48), v20), *(result + 48), v20);
              if (v11 < *(result + 64))
              {
                v11 = *(result + 64);
              }
            }

            while (v15 != v16);
            v9 = v18 & 1;
          }

          *v7 = v9;
          *(v7 + 4) = v14;
          *(v7 + 16) = v10;
          *(v7 + 32) = v12;
          *(v7 + 48) = v13;
          *(v7 + 64) = v11;
        }

        v7 += 112;
      }

      v2 += 112;
    }

    while (v2 != v3);
  }

  return result;
}

_BYTE *sub_BDD7B0(_BYTE *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = vneg_f32(0x100000001);
    do
    {
      v11 = *(v2 + 80);
      v12 = *(v2 + 88);
      if (v11 != v12)
      {
        if (*result == 1)
        {
          for (i = v11 + 112; i != v12; i += 112)
          {
            if (*(v11 + 72) < *(i + 72))
            {
              v11 = i;
            }
          }

          v12 = v11 + 112;
        }

        if (v11 == v12)
        {
          v5 = 0;
          v6 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
          v7 = -1.79769313e308;
          v8 = v6;
          v9 = v6;
          v10 = v4;
        }

        else
        {
          v14 = 0;
          v6 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
          v7 = -1.79769313e308;
          v8 = v6;
          v9 = v6;
          v10 = v4;
          do
          {
            v6 = vbslq_s8(vcgtq_f64(*(v11 + 16), v6), *(v11 + 16), v6);
            v14 |= *v11;
            v10 = vmin_s32(*(v11 + 4), v10);
            v8 = vbslq_s8(vcgtq_f64(*(v11 + 32), v8), *(v11 + 32), v8);
            v9 = vbslq_s8(vcgtq_f64(*(v11 + 48), v9), *(v11 + 48), v9);
            if (v7 < *(v11 + 64))
            {
              v7 = *(v11 + 64);
            }

            v11 += 112;
          }

          while (v11 != v12);
          v5 = v14 & 1;
        }

        *v2 = v5;
        *(v2 + 4) = v10;
        *(v2 + 16) = v6;
        *(v2 + 32) = v8;
        *(v2 + 48) = v9;
        *(v2 + 64) = v7;
      }

      v2 += 112;
    }

    while (v2 != v3);
  }

  return result;
}

BOOL sub_BDD8BC(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a3 + 172);
  v7 = sub_A57920((*(a1 + 104) + 4136), *(a3 + 152));
  v8 = (v7 - *v7);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
  }

  else
  {
    v10 = 0;
  }

  v11 = __ROR8__(*sub_A571D4(v10, v6), 32);
  v83[0] = 0x1FFFFFFFELL;
  v83[1] = v11;
  if (!sub_A5436C(*(a1 + 112), v83))
  {
    LODWORD(v17) = 0;
    LODWORD(v13) = 0;
    v16 = 0;
LABEL_15:
    v15 = v13 + v17 + v16;
LABEL_16:
    v14 = v13;
    goto LABEL_17;
  }

  v12 = sub_A5436C(*(a1 + 112), v83);
  if (!v12)
  {
    goto LABEL_90;
  }

  v13 = v12[4];
  v14 = 0x7FFFFFFF;
  v15 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v16 = *(v12 + 10);
    v17 = HIDWORD(v13);
    v15 = 0x7FFFFFFF;
    if (HIDWORD(v13) == 0x7FFFFFFF || v16 == 0x7FFFFFFF)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  *(a3 + 4) = v15;
  *(a3 + 8) = v14;
  v19 = __ROR8__(v11, 32);
  v20 = sub_502FF8(*(*(a1 + 104) + 4120) + 24, v19, 0, "stop");
  v21 = (v20 - *v20);
  if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
  {
    v23 = *(v20 + v22 + 4) | (*(v20 + v22) << 32);
  }

  else
  {
    v23 = 0xFFFFFFFFLL;
  }

  v24 = *(a3 + 172);
  v25 = sub_A57920((*(a1 + 104) + 4136), *(a3 + 152));
  v26 = (v25 - *v25);
  v27 = *v26;
  if (v27 < 5)
  {
    v28 = 0;
    goto LABEL_26;
  }

  if (!v26[2])
  {
    v28 = 0;
    if (v27 >= 9)
    {
      goto LABEL_88;
    }

LABEL_26:
    v29 = 0;
    goto LABEL_27;
  }

  v28 = v25 + v26[2] + *(v25 + v26[2]);
  if (v27 < 9)
  {
    goto LABEL_26;
  }

LABEL_88:
  v80 = v26[4];
  if (!v80)
  {
    goto LABEL_26;
  }

  v29 = (v25 + v80 + *(v25 + v80));
LABEL_27:
  v30 = *&v28[8 * *(sub_A571D4(v29, v24) + 14) + 4];
  v31 = sub_92FC60(*(*(a1 + 104) + 4056) + 24, v30, 0, "line");
  v32 = (v31 - *v31);
  if (*v32 >= 7u && (v33 = v32[3]) != 0)
  {
    v34 = *(v31 + v33 + 4) | (*(v31 + v33) << 32);
  }

  else
  {
    v34 = 0xFFFFFFFFLL;
  }

  v35 = __ROR8__(v34, 32);
  v36 = sub_93E04C(*(*(a1 + 104) + 4144) + 24, v35, 0, "system");
  v37 = (v36 - *v36);
  v38 = 0.0;
  v39 = 0.0;
  if (*v37 >= 0x21u)
  {
    v40 = v37[16];
    if (v40)
    {
      v41 = (v36 + v40 + *(v36 + v40));
      v42 = (v41 - *v41);
      if (*v42 >= 5u)
      {
        v43 = v42[2];
        if (v43)
        {
          v39 = *(v41 + v43);
        }
      }
    }
  }

  if (*(a1 + 32) >= v39)
  {
    v39 = *(a1 + 32);
  }

  *(a3 + 16) = v39;
  *(a3 + 24) = log(v39 + 1.0);
  v44 = sub_92FC60(*(*(a1 + 104) + 4056) + 24, v30, 0, "line");
  v45 = (v44 - *v44);
  if (*v45 >= 0x47u)
  {
    v46 = v45[35];
    if (v46)
    {
      v47 = (v44 + v46 + *(v44 + v46));
      v48 = (v47 - *v47);
      if (*v48 >= 5u)
      {
        v49 = v48[2];
        if (v49)
        {
          v38 = *(v47 + v49);
        }
      }
    }
  }

  v50 = *(a1 + 24);
  if (v50 < v38)
  {
    v50 = v38;
  }

  *(a3 + 32) = v50;
  *(a3 + 40) = log(v50 + 1.0);
  if (v23 != -1 && HIDWORD(v23))
  {
    v59 = sub_93D480(*(*(a1 + 104) + 4112) + 24, __ROR8__(v23, 32), 0, "station");
    v60 = (v59 - *v59);
    v61 = 0.0;
    if (*v60 >= 0x35u)
    {
      v62 = v60[26];
      if (v62)
      {
        v63 = (v59 + v62 + *(v59 + v62));
        v64 = (v63 - *v63);
        if (*v64 >= 5u)
        {
          v65 = v64[2];
          if (v65)
          {
            v61 = *(v63 + v65);
          }
        }
      }
    }

    v82 = v61;
    v58 = &v82;
    if (*(a1 + 16) >= v61)
    {
      v58 = (a1 + 16);
    }
  }

  else
  {
    v51 = sub_502FF8(*(*(a1 + 104) + 4120) + 24, v19, 0, "stop");
    v52 = (v51 - *v51);
    v53 = 0.0;
    if (*v52 >= 0x3Du)
    {
      v54 = v52[30];
      if (v54)
      {
        v55 = (v51 + v54 + *(v51 + v54));
        v56 = (v55 - *v55);
        if (*v56 >= 5u)
        {
          v57 = v56[2];
          if (v57)
          {
            v53 = *(v55 + v57);
          }
        }
      }
    }

    v81 = v53;
    v58 = &v81;
    if (*(a1 + 8) >= v53)
    {
      v58 = (a1 + 8);
    }
  }

  v66 = *v58;
  *(a3 + 48) = *v58;
  *(a3 + 56) = log(v66 + 1.0);
  v67 = sub_93E04C(*(*(a1 + 104) + 4144) + 24, v35, 0, "system");
  v68 = (v67 - *v67);
  if (*v68 >= 0x19u && (v69 = v68[12]) != 0)
  {
    v70 = *(v67 + v69);
    v71 = *(a1 + 48);
    if (!v71)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v70 = 127;
    v71 = *(a1 + 48);
    if (!v71)
    {
      goto LABEL_90;
    }
  }

  v72 = vcnt_s8(v71);
  v72.i16[0] = vaddlv_u8(v72);
  if (v72.u32[0] > 1uLL)
  {
    v73 = v70;
    if (v71 <= v70)
    {
      v73 = v70 % v71;
    }
  }

  else
  {
    v73 = (v71 - 1) & v70;
  }

  v74 = *(*(a1 + 40) + 8 * v73);
  if (!v74 || (v75 = *v74) == 0)
  {
LABEL_90:
    sub_49EC("unordered_map::at: key not found");
  }

  if (v72.u32[0] < 2uLL)
  {
    v76 = v71 - 1;
    while (1)
    {
      v78 = v75[1];
      if (v78 == v70)
      {
        if (*(v75 + 16) == v70)
        {
          goto LABEL_86;
        }
      }

      else if ((v78 & v76) != v73)
      {
        goto LABEL_90;
      }

      v75 = *v75;
      if (!v75)
      {
        goto LABEL_90;
      }
    }
  }

  while (1)
  {
    v77 = v75[1];
    if (v77 == v70)
    {
      break;
    }

    if (v77 >= v71)
    {
      v77 %= v71;
    }

    if (v77 != v73)
    {
      goto LABEL_90;
    }

LABEL_76:
    v75 = *v75;
    if (!v75)
    {
      goto LABEL_90;
    }
  }

  if (*(v75 + 16) != v70)
  {
    goto LABEL_76;
  }

LABEL_86:
  *(a3 + 64) = v75[3];
  result = sub_BDDEAC(a1, a2, a3);
  *a3 = result;
  return result;
}

BOOL sub_BDDEAC(uint64_t a1, int *a2, uint64_t a3)
{
  if (*(a3 + 164) == -1)
  {
    v9 = *(a3 + 104);
    v10 = *(a3 + 96);
    if (v10 != v9)
    {
      v11 = v10 + 4;
      while (*(v11 + 4 * (*(v11 + 4) != 0x7FFFFFFF)) < *a2)
      {
        v12 = v11 + 56;
        v11 += 60;
        if (v12 == v9)
        {
          v13 = 0x7FFFFFFF;
          goto LABEL_20;
        }
      }

      v10 = v11 - 4;
    }

    v13 = 0x7FFFFFFF;
    if (v10 != v9)
    {
      v13 = 10 * (*(v10 + 4 * (*(v10 + 8) != 0x7FFFFFFF) + 4) - *a2);
    }

LABEL_20:
    v14 = *(a3 + 172);
    v15 = sub_A57920((*(a1 + 104) + 4136), *(a3 + 152));
    v16 = (v15 - *v15);
    v17 = *v16;
    if (v17 < 5)
    {
      v18 = 0;
      goto LABEL_25;
    }

    if (v16[2])
    {
      v18 = v15 + v16[2] + *(v15 + v16[2]);
      if (v17 < 9)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v18 = 0;
      if (v17 < 9)
      {
        goto LABEL_25;
      }
    }

    v24 = v16[4];
    if (v24)
    {
      v19 = (v15 + v24 + *(v15 + v24));
LABEL_26:
      v20 = sub_A571D4(v19, v14);
      v21 = sub_92FC60(*(*(a1 + 104) + 4056) + 24, *&v18[8 * *(v20 + 14) + 4], 0, "line");
      v22 = (v21 - *v21);
      if (*v22 < 0x25u)
      {
        v23 = 0;
        if (v13 == 0x7FFFFFFF)
        {
          return 0;
        }
      }

      else
      {
        v23 = v22[18];
        if (v23)
        {
          v23 = *(v21 + v23);
        }

        if (v13 == 0x7FFFFFFF)
        {
          return 0;
        }
      }

      return v13 <= *(a1 + 4 * v23 + 80);
    }

LABEL_25:
    v19 = 0;
    goto LABEL_26;
  }

  v3 = *(a3 + 184);
  v4 = *(a3 + 192);
  if (v3 != v4)
  {
    v5 = *a2;
    while (*v3 > v5 || v3[1] < v5)
    {
      v3 += 10;
      if (v3 == v4)
      {
        v3 = *(a3 + 192);
        return v3 != v4;
      }
    }
  }

  return v3 != v4;
}

uint64_t sub_BDE0B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  v4 = *(a3 + 80);
  if (v3 != v4)
  {
    *a3 = 0;
    v7 = vneg_f32(0x100000001);
    *(a3 + 4) = v7;
    v8 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a3 + 16) = v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v8;
    *(a3 + 64) = 0xFFEFFFFFFFFFFFFFLL;
    if (*(result + 2) == 1)
    {
      v9 = (v3 + 4);
      if (v3 + 4 != v4)
      {
        do
        {
          if (*(v3 + 1) < v9[1])
          {
            v3 = v9;
          }

          v9 += 2;
        }

        while (v9 != v4);
      }

      v4 = v3 + 4;
    }

    if (v3 == v4)
    {
      v15 = 0;
      v11 = -1.79769313e308;
      v12 = v8;
      v13 = v8;
    }

    else
    {
      v10 = 0;
      v7 = vneg_f32(0x100000001);
      v8 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v11 = -1.79769313e308;
      v12 = v8;
      v13 = v8;
      do
      {
        v16 = v13;
        v17 = v12;
        v18 = v8;
        v14 = *v3;
        v3 += 4;
        result = sub_BDE550((a2 + 48), v14);
        v8 = vbslq_s8(vcgtq_f64(*(result + 16), v18), *(result + 16), v18);
        v10 |= *result;
        v7 = vmin_s32(*(result + 4), v7);
        v12 = vbslq_s8(vcgtq_f64(*(result + 32), v17), *(result + 32), v17);
        v13 = vbslq_s8(vcgtq_f64(*(result + 48), v16), *(result + 48), v16);
        if (v11 < *(result + 64))
        {
          v11 = *(result + 64);
        }
      }

      while (v3 != v4);
      v15 = v10 & 1;
    }

    *a3 = v15;
    *(a3 + 4) = v7;
    *(a3 + 16) = v8;
    *(a3 + 32) = v12;
    *(a3 + 48) = v13;
    *(a3 + 64) = v11;
  }

  return result;
}

uint64_t **sub_BDE214(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 16) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t sub_BDE550(void *a1, unint64_t a2)
{
  if (0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 248 * a2;
}

void sub_BDE68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_BDE76C(uint64_t *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  sub_5D72C(v12, 0xCCCCCCCCCCCCCCCDLL * ((a1[4] - a1[3]) >> 5));
  sub_BE0FE4(a1[3], a1[4], v12, sub_BDEB78);
  *__p = *v12;
  v10 = v13;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  sub_5D72C(v12, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4));
  sub_BE11B8(*a1, a1[1], v12, sub_BDEE24);
  v2 = v7[0];
  if (v7[0])
  {
    v3 = v7[1];
    v4 = v7[0];
    if (v7[1] != v7[0])
    {
      do
      {
        v5 = v3 - 16;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_26719F0[v6])(&v11, v3 - 16);
        }

        *(v3 - 2) = -1;
        v3 -= 16;
      }

      while (v5 != v2);
      v4 = v7[0];
    }

    v7[1] = v2;
    operator delete(v4);
  }

  *v7 = *v12;
  v8 = v13;
  sub_BE0ACC(v12, "schedule_cells");
}

void sub_BDEAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_BDF3E0(v17 + 40);
  sub_BDF3E0(&a17);
  sub_5BF68(&a9);
  sub_5BF68(&a13);
  _Unwind_Resume(a1);
}

void sub_BDEB50(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

void sub_BDED98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_BDF3E0(v22 + 40);
  sub_BDF3E0(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a15);
  sub_5C010(v21);
  _Unwind_Resume(a1);
}

void sub_BDEE08(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

void sub_BDEE24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_5F328(a2);
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  sub_5D72C(v6, 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 88) - *(a1 + 80)) >> 4));
  sub_BE03A8(*(a1 + 80), *(a1 + 88), v6, sub_BDFEA4);
  *__p = *v6;
  v5 = v7;
  sub_BDF460(&v3, a1);
}

void sub_BDF300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_5C010(&a15);
  do
  {
    v25 -= 40;
    sub_BDF3E0(v25);
  }

  while (v25 != &a24);
  sub_5BF68(&a20);
  sub_5C010(v24);
  _Unwind_Resume(a1);
}

void sub_BDF3BC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

uint64_t sub_BDF3E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_26719F0[v2])(&v4, a1 + 24);
  }

  *(a1 + 32) = -1;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_BDF460(uint64_t a1, _BYTE *a2)
{
  sub_5F328(a1);
  v4[23] = 13;
  strcpy(v4, "is_in_service");
  if (*a2)
  {
    v3 = 7;
  }

  else
  {
    v3 = 8;
  }

  v5 = v3;
  operator new();
}

void sub_BDFB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_BDF3E0(v12);
  sub_BDF3E0(v8);
  sub_BDF3E0(v11);
  sub_BDF3E0(v10);
  sub_BDF3E0(v9);
  sub_BDF3E0(a3);
  sub_BDF3E0(a4);
  sub_BDF3E0(a5);
  sub_BDF3E0(v7);
  sub_BDF3E0(va);
  sub_5C010(a6);
  _Unwind_Resume(a1);
}

void sub_BDFBC0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 < 0x7FFFFFFFFFFFFFF8)
  {
    v5 = v4;
    if (v4 < 0x17)
    {
      a1[23] = v4;
      if (v4)
      {
        memmove(a1, __s, v4);
      }

      a1[v5] = 0;
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_BDFD00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_BDFD1C(_BYTE *a1, char *__s, void *a3)
{
  v6 = strlen(__s);
  if (v6 < 0x7FFFFFFFFFFFFFF8)
  {
    v7 = v6;
    if (v6 < 0x17)
    {
      a1[23] = v6;
      if (v6)
      {
        memmove(a1, __s, v6);
      }

      a1[v7] = 0;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 0;
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_BDFE6C(_Unwind_Exception *exception_object)
{
  if (v3 < 0)
  {
    operator delete(v2);
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_BDFEA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_5F328(a2);
  v5 = 0;
  v4 = 0uLL;
  sub_5D72C(&v4, (*(a1 + 88) - *(a1 + 80)) >> 4);
  sub_BE0688(*(a1 + 80), *(a1 + 88), &v4, sub_BE057C);
  *v6 = v4;
  v7 = v5;
  v5 = 0;
  v4 = 0uLL;
  sub_BDF460(&v3, a1);
}

void sub_BE02CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_5C010(&a15);
  do
  {
    v30 -= 40;
    sub_BDF3E0(v30);
  }

  while (v30 != &a29);
  sub_5BF68(&a24);
  sub_5C010(v29);
  _Unwind_Resume(a1);
}

void sub_BE0388(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

void *sub_BE03A8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void **__return_ptr, uint64_t))
{
  if (a1 != a2)
  {
    a4(&__p, a1);
    if (a3[1] < a3[2])
    {
      operator new();
    }

    sub_A728A8(a3);
  }

  return a3;
}

void sub_BE054C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_5C010(&a9);
  _Unwind_Resume(a1);
}

void sub_BE057C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_5F328(a2);
  v6 = 5;
  strcpy(__p, "score");
  v7 = *(a1 + 8);
  v8 = 2;
  sub_BE0D3C(v3, __p, &v9);
  if (v8 != -1)
  {
    (off_26719F0[v8])(&v4, &v7);
  }

  v8 = -1;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_BE065C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_BE0688(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void **__return_ptr, uint64_t))
{
  if (a1 != a2)
  {
    a4(&__p, a1);
    if (a3[1] < a3[2])
    {
      operator new();
    }

    sub_A728A8(a3);
  }

  return a3;
}

void sub_BE082C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_5C010(&a9);
  _Unwind_Resume(a1);
}

void sub_BE085C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 < 0x7FFFFFFFFFFFFFF8)
  {
    v5 = v4;
    if (v4 < 0x17)
    {
      a1[23] = v4;
      if (v4)
      {
        memmove(a1, __s, v4);
      }

      a1[v5] = 0;
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_BE0994(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 < 0x7FFFFFFFFFFFFFF8)
  {
    v5 = v4;
    if (v4 < 0x17)
    {
      a1[23] = v4;
      if (v4)
      {
        memmove(a1, __s, v4);
      }

      a1[v5] = 0;
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_BE0ACC(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 < 0x7FFFFFFFFFFFFFF8)
  {
    v5 = v4;
    if (v4 < 0x17)
    {
      a1[23] = v4;
      if (v4)
      {
        memmove(a1, __s, v4);
      }

      a1[v5] = 0;
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_BE0C04(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 < 0x7FFFFFFFFFFFFFF8)
  {
    v5 = v4;
    if (v4 < 0x17)
    {
      a1[23] = v4;
      if (v4)
      {
        memmove(a1, __s, v4);
      }

      a1[v5] = 0;
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_BE0D3C(uint64_t a1, size_t *a2, size_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (!v7 || a2 == a3)
    {
      v9 = v7;
    }

    else
    {
      do
      {
        v13[0] = (v7 + 2);
        v13[1] = (v7 + 5);
        sub_61BA8(v13, a2);
        v9 = *v7;
        sub_BE0E9C(a1, v7);
        a2 += 5;
        if (v9)
        {
          v10 = a2 == a3;
        }

        else
        {
          v10 = 1;
        }

        v7 = v9;
      }

      while (!v10);
    }

    if (v9)
    {
      do
      {
        v11 = *v9;
        v12 = *(v9 + 12);
        if (v12 != -1)
        {
          (off_26719F0[v12])(v13, v9 + 5);
        }

        *(v9 + 12) = -1;
        if (*(v9 + 39) < 0)
        {
          operator delete(v9[2]);
        }

        operator delete(v9);
        v9 = v11;
      }

      while (v11);
    }
  }

  while (a2 != a3)
  {
    sub_5AF6C(a1, a2);
    a2 += 5;
  }
}

void sub_BE0E6C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_61258(v1, v2);
  __cxa_rethrow();
}

uint64_t **sub_BE0E9C(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_AAD8(&v17, v7, v8);
  *(a2 + 8) = v9;
  result = sub_352A30(a1, v9, v4);
  if (!result)
  {
    v11 = a1[1];
    v12 = *(a2 + 8);
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      if (v12 >= *&v11)
      {
        v12 %= *&v11;
      }
    }

    else
    {
      v12 &= *&v11 - 1;
    }

    v14 = *a1;
    v15 = *(*a1 + 8 * v12);
    if (v15)
    {
      *a2 = *v15;
    }

    else
    {
      *a2 = a1[2];
      a1[2] = a2;
      *(v14 + 8 * v12) = a1 + 2;
      if (!*a2)
      {
        goto LABEL_15;
      }

      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }

        v15 = (v14 + 8 * v16);
      }

      else
      {
        v15 = (v14 + 8 * (v16 & (*&v11 - 1)));
      }
    }

    *v15 = a2;
LABEL_15:
    ++a1[3];
    return a2;
  }

  return result;
}

void *sub_BE0FE4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void **__return_ptr, uint64_t))
{
  if (a1 != a2)
  {
    a4(&__p, a1);
    if (a3[1] < a3[2])
    {
      operator new();
    }

    sub_A728A8(a3);
  }

  return a3;
}

void sub_BE1188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_5C010(&a9);
  _Unwind_Resume(a1);
}

void *sub_BE11B8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void **__return_ptr, uint64_t))
{
  if (a1 != a2)
  {
    a4(&__p, a1);
    if (a3[1] < a3[2])
    {
      operator new();
    }

    sub_A728A8(a3);
  }

  return a3;
}

void sub_BE135C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_5C010(&a9);
  _Unwind_Resume(a1);
}

void sub_BE138C(void *a1)
{
  a1[3] = 0;
  a1[6] = 0;
  a1[9] = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[4] = 0;
  a1[7] = 0;
  a1[10] = 0;
  operator new();
}

void sub_BE2340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
LABEL_8:
        __cxa_guard_abort(&qword_27B3E58);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a17);
      __cxa_guard_abort(&qword_27B3E58);
      _Unwind_Resume(a1);
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_BE23E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***sub_BE24D0(uint64_t (***a1)(), uint64_t *a2))()
{
  v5 = a2[3];
  v4 = a2[4];
  if (v5 != v4)
  {
    v6 = v4 - v5 - 160;
    v7 = a2[3];
    if (v6 < 0xA0)
    {
      goto LABEL_12;
    }

    v8 = v6 / 0xA0 + 1;
    v7 = v5 + 160 * (v8 & 0x3FFFFFFFFFFFFFELL);
    v9 = (v5 + 317);
    v10 = v8 & 0x3FFFFFFFFFFFFFELL;
    do
    {
      *(v9 - 160) = 0;
      *v9 = 0;
      v9 += 320;
      v10 -= 2;
    }

    while (v10);
    if (v8 != (v8 & 0x3FFFFFFFFFFFFFELL))
    {
LABEL_12:
      do
      {
        *(v7 + 157) = 0;
        v7 += 160;
      }

      while (v7 != v4);
    }
  }

  sub_BE25A0(a1, a2);
  v11 = sub_BE26D0(a1, a2);
  sub_BE3270(v11, a2);

  return sub_BE366C(a1, a2);
}

void sub_BE25A0(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 136))
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 128) = 0;
    v6 = *(a1 + 120);
    if (v6)
    {
      bzero(*(a1 + 112), 8 * v6);
    }

    *(a1 + 136) = 0;
  }

  v7 = *a2;
  v17 = a2[1];
  if (*a2 != v17)
  {
    do
    {
      v18 = v7;
      v9 = *(v7 + 80);
      v8 = *(v7 + 88);
      v19 = v8;
      while (v9 != v8)
      {
        v10 = *(v9 + 80);
        v11 = *(v9 + 88);
        while (v10 != v11)
        {
          v12 = a2[3] + 160 * *v10;
          v14 = *(v12 + 72);
          v13 = *(v12 + 80);
          while (v14 != v13)
          {
            v15 = *v14;
            v14 += 4;
            v16 = (a2[6] + 248 * v15);
            sub_BE5364(v16[9], v16[10], a1);
            sub_BE5364(v16[12], v16[13], a1);
          }

          v10 += 4;
        }

        v9 += 112;
        v8 = v19;
      }

      v7 = v18 + 112;
    }

    while (v18 + 112 != v17);
  }
}

uint64_t (***sub_BE26D0(uint64_t (***result)(), void *a2))()
{
  v2 = *a2;
  v82 = a2[1];
  if (*a2 != v82)
  {
    v3 = a2;
    v4 = result;
    while (1)
    {
      v86 = v2;
      if ((*v4 >> *(v2 + 104)))
      {
        break;
      }

LABEL_61:
      v37 = *(v2 + 80);
      v36 = *(v2 + 88);
      v88 = v36;
      while (v37 != v36)
      {
        v38 = 1 << *(v2 + 104);
        if ((v38 & *(v4 + 24)) == 0 || ((*(v4 + 32) >> *(v37 + 104)) & 1) == 0)
        {
          goto LABEL_108;
        }

        v39 = *(v4 + 40);
        if (v39 == 2)
        {
          v93 = off_2671B58;
          v94 = v4;
          v41 = &v95;
        }

        else
        {
          if (v39 == 1)
          {
            v40 = off_2671AD8;
          }

          else
          {
            if (v39)
            {
              v96 = 0;
              v42 = *(v37 + 80);
              v91 = *(v37 + 88);
              v43 = v91;
              if (v42 != v91)
              {
LABEL_79:
                while (1)
                {
                  v44 = v3[3] + 160 * *v42;
                  v45 = *(v44 + 72);
                  v46 = *(v44 + 80);
                  if (v45 == v46)
                  {
                    break;
                  }

                  while (1)
                  {
                    v47 = (v3[6] + 248 * *v45);
                    v48 = v47[9];
                    v49 = v47[10];
                    if (v48 != v49)
                    {
                      break;
                    }

LABEL_83:
                    v50 = v47[12];
                    v51 = v47[13];
                    if (v50 != v51)
                    {
                      while ((sub_BE3A0C(v4, v50, &v93) & 1) != 0)
                      {
                        v50 += 60;
                        if (v50 == v51)
                        {
                          goto LABEL_86;
                        }
                      }

                      goto LABEL_78;
                    }

LABEL_86:
                    v45 += 4;
                    if (v45 == v46)
                    {
                      goto LABEL_87;
                    }
                  }

                  while ((sub_BE3A0C(v4, v48, &v93) & 1) != 0)
                  {
                    v48 += 60;
                    if (v48 == v49)
                    {
                      goto LABEL_83;
                    }
                  }

LABEL_78:
                  v42 += 4;
                  if (v42 == v91)
                  {
                    goto LABEL_101;
                  }
                }
              }

              goto LABEL_87;
            }

            v40 = off_2671A48;
          }

          v93 = v40;
          v41 = &v94;
        }

        *v41 = v4;
        v96 = &v93;
        v42 = *(v37 + 80);
        v91 = *(v37 + 88);
        v43 = v91;
        if (v42 != v91)
        {
          goto LABEL_79;
        }

LABEL_87:
        if (v42 != v91)
        {
          v52 = v42 + 4;
          v53 = v91;
          v43 = v42;
          while (v52 != v53)
          {
            v54 = v3[3] + 160 * *v52;
            v55 = *(v54 + 72);
            v56 = *(v54 + 80);
            if (v55 != v56)
            {
              while (1)
              {
                v57 = (v3[6] + 248 * *v55);
                v58 = v57[9];
                v59 = v57[10];
                if (v58 != v59)
                {
                  break;
                }

LABEL_96:
                v60 = v57[12];
                v61 = v57[13];
                if (v60 != v61)
                {
                  while ((sub_BE3A0C(v4, v60, &v93) & 1) != 0)
                  {
                    v60 += 60;
                    if (v60 == v61)
                    {
                      goto LABEL_99;
                    }
                  }

                  goto LABEL_89;
                }

LABEL_99:
                v55 += 4;
                if (v55 == v56)
                {
                  goto LABEL_90;
                }
              }

              while ((sub_BE3A0C(v4, v58, &v93) & 1) != 0)
              {
                v58 += 60;
                if (v58 == v59)
                {
                  goto LABEL_96;
                }
              }

LABEL_89:
              *v43 = *v52;
              v43 += 4;
            }

LABEL_90:
            v52 += 4;
            v53 = v91;
          }
        }

LABEL_101:
        v2 = v86;
        if (v43 != *(v37 + 88))
        {
          a2 = *(v37 + 88);
          *(v37 + 88) = v43;
        }

        result = v96;
        if (v96 == &v93)
        {
          result = ((*v96)[4])(v96, a2);
        }

        else if (v96)
        {
          result = (*v96)[5]();
        }

        v38 = 1 << *(v86 + 104);
LABEL_108:
        if ((v38 & *(v4 + 48)) == 0 || ((*(v4 + 56) >> *(v37 + 104)) & 1) == 0)
        {
          goto LABEL_63;
        }

        v62 = *(v4 + 64);
        if (v62 == 2)
        {
          v93 = off_2671B58;
          v94 = v4;
          v64 = &v95;
        }

        else
        {
          if (v62 == 1)
          {
            v63 = off_2671AD8;
          }

          else
          {
            if (v62)
            {
              result = 0;
              v96 = 0;
              v65 = *(v37 + 80);
              v92 = *(v37 + 88);
              if (v65 == v92)
              {
LABEL_118:
                if (result == &v93)
                {
                  goto LABEL_62;
                }

LABEL_147:
                if (result)
                {
                  result = ((*result)[5])(result);
                }

                goto LABEL_63;
              }

              goto LABEL_121;
            }

            v63 = off_2671A48;
          }

          v93 = v63;
          v64 = &v94;
        }

        *v64 = v4;
        result = &v93;
        v96 = &v93;
        v65 = *(v37 + 80);
        v92 = *(v37 + 88);
        if (v65 == v92)
        {
          goto LABEL_118;
        }

LABEL_121:
        v85 = v37;
        do
        {
          v66 = v3[3] + 160 * *v65;
          v67 = *(v66 + 72);
          v69 = *(v66 + 80);
          v68 = v66 + 72;
          v70 = v69;
          if (v67 != v69)
          {
            while (1)
            {
              v71 = (v3[6] + 248 * *v67);
              v72 = v71[9];
              v73 = v71[10];
              if (v72 == v73)
              {
LABEL_129:
                v74 = v71[12];
                v75 = v71[13];
                if (v74 == v75)
                {
                  break;
                }

                while ((sub_BE3A0C(v4, v74, &v93) & 1) != 0)
                {
                  v74 += 60;
                  if (v74 == v75)
                  {
                    goto LABEL_132;
                  }
                }
              }

              else
              {
                while ((sub_BE3A0C(v4, v72, &v93) & 1) != 0)
                {
                  v72 += 60;
                  if (v72 == v73)
                  {
                    goto LABEL_129;
                  }
                }
              }

              v67 += 4;
              if (v67 == v69)
              {
                goto LABEL_144;
              }
            }
          }

LABEL_132:
          if (v67 != v69)
          {
            v76 = v67 + 4;
            v70 = v67;
            while (1)
            {
              if (v76 == v69)
              {
                goto LABEL_144;
              }

              v77 = (v3[6] + 248 * *v76);
              v78 = v77[9];
              v79 = v77[10];
              if (v78 != v79)
              {
                break;
              }

LABEL_140:
              v81 = v77[12];
              v80 = v77[13];
              if (v81 != v80)
              {
                while ((sub_BE3A0C(v4, v81, &v93) & 1) != 0)
                {
                  v81 += 60;
                  if (v81 == v80)
                  {
                    goto LABEL_135;
                  }
                }

LABEL_134:
                *v70 = *v76;
                v70 += 4;
              }

LABEL_135:
              v76 += 4;
            }

            while ((sub_BE3A0C(v4, v78, &v93) & 1) != 0)
            {
              v78 += 60;
              if (v78 == v79)
              {
                goto LABEL_140;
              }
            }

            goto LABEL_134;
          }

LABEL_144:
          if (v70 != *(v68 + 8))
          {
            a2 = *(v68 + 8);
            *(v68 + 8) = v70;
          }

          v65 += 4;
        }

        while (v65 != v92);
        result = v96;
        v37 = v85;
        v2 = v86;
        if (v96 != &v93)
        {
          goto LABEL_147;
        }

LABEL_62:
        result = ((*result)[4])(result);
LABEL_63:
        v37 += 112;
        v36 = v88;
      }

      v2 += 112;
      if (v2 == v82)
      {
        return result;
      }
    }

    v5 = *(v4 + 16);
    if (v5 == 2)
    {
      v93 = off_2671B58;
      v94 = v4;
      v7 = &v95;
    }

    else
    {
      if (v5 == 1)
      {
        v6 = off_2671AD8;
      }

      else
      {
        if (v5)
        {
          v96 = 0;
          v9 = *(v2 + 80);
          v8 = *(v2 + 88);
          v10 = v8;
          if (v9 == v8)
          {
LABEL_13:
            if (v9 != v8)
            {
              goto LABEL_31;
            }

            goto LABEL_50;
          }

          goto LABEL_16;
        }

        v6 = off_2671A48;
      }

      v93 = v6;
      v7 = &v94;
    }

    *v7 = v4;
    v96 = &v93;
    v9 = *(v2 + 80);
    v8 = *(v2 + 88);
    v10 = v8;
    if (v9 == v8)
    {
      goto LABEL_13;
    }

LABEL_16:
    v87 = v8;
    while (((*(v4 + 8) >> *(v9 + 104)) & 1) == 0)
    {
LABEL_17:
      v9 += 112;
      if (v9 == v87)
      {
        goto LABEL_50;
      }
    }

    v11 = *(v9 + 80);
    if (v11 != *(v9 + 88))
    {
      v12 = *(v9 + 88);
      while (1)
      {
        v13 = v3[3] + 160 * *v11;
        v14 = *(v13 + 72);
        v89 = *(v13 + 80);
        if (v14 != v89)
        {
          break;
        }

LABEL_29:
        v11 += 4;
        if (v11 == v12)
        {
          goto LABEL_30;
        }
      }

      while (1)
      {
        v15 = (v3[6] + 248 * *v14);
        v16 = v15[9];
        v17 = v15[10];
        if (v16 != v17)
        {
          break;
        }

LABEL_25:
        v18 = v15[12];
        v19 = v15[13];
        if (v18 != v19)
        {
          while ((sub_BE3A0C(v4, v18, &v93) & 1) != 0)
          {
            v18 += 60;
            if (v18 == v19)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_17;
        }

LABEL_28:
        v14 += 4;
        if (v14 == v89)
        {
          goto LABEL_29;
        }
      }

      while ((sub_BE3A0C(v4, v16, &v93) & 1) != 0)
      {
        v16 += 60;
        if (v16 == v17)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_17;
    }

LABEL_30:
    v8 = v87;
    if (v9 != v87)
    {
LABEL_31:
      v20 = v9 + 112;
      if (v9 + 112 != v8)
      {
        v10 = v9;
        while (1)
        {
          v21 = v9;
          v9 = v20;
          if (((*(v4 + 8) >> *(v21 + 216)) & 1) == 0)
          {
            goto LABEL_47;
          }

          v22 = *(v21 + 192);
          v83 = *(v21 + 200);
          if (v22 != v83)
          {
            break;
          }

LABEL_34:
          v20 = v9 + 112;
          if (v9 + 112 == v8)
          {
            goto LABEL_50;
          }
        }

        while (1)
        {
          v84 = v22;
          v23 = v3[3] + 160 * *v22;
          v24 = *(v23 + 72);
          v90 = *(v23 + 80);
          if (v24 != v90)
          {
            break;
          }

LABEL_45:
          v22 = v84 + 4;
          if (v84 + 4 == v83)
          {
            goto LABEL_34;
          }
        }

        while (1)
        {
          v25 = (v3[6] + 248 * *v24);
          v26 = v25[9];
          v27 = v25[10];
          if (v26 != v27)
          {
            break;
          }

LABEL_41:
          v28 = v25[12];
          v29 = v25[13];
          if (v28 != v29)
          {
            while ((sub_BE3A0C(v4, v28, &v93) & 1) != 0)
            {
              v28 += 60;
              if (v28 == v29)
              {
                goto LABEL_44;
              }
            }

            goto LABEL_47;
          }

LABEL_44:
          v24 += 4;
          if (v24 == v90)
          {
            goto LABEL_45;
          }
        }

        while ((sub_BE3A0C(v4, v26, &v93) & 1) != 0)
        {
          v26 += 60;
          if (v26 == v27)
          {
            goto LABEL_41;
          }
        }

LABEL_47:
        *v10 = *v9;
        v30 = *(v9 + 16);
        v31 = *(v9 + 32);
        v32 = *(v9 + 64);
        *(v10 + 48) = *(v9 + 48);
        *(v10 + 64) = v32;
        *(v10 + 16) = v30;
        *(v10 + 32) = v31;
        v33 = *(v10 + 80);
        if (v33)
        {
          *(v10 + 88) = v33;
          operator delete(v33);
          *(v10 + 80) = 0;
          *(v10 + 88) = 0;
          *(v10 + 96) = 0;
        }

        *(v10 + 80) = *(v21 + 192);
        *(v10 + 96) = *(v21 + 208);
        *(v21 + 192) = 0;
        *(v21 + 200) = 0;
        *(v21 + 208) = 0;
        *(v10 + 104) = *(v21 + 216);
        v10 += 112;
        goto LABEL_34;
      }

      v10 = v9;
    }

LABEL_50:
    v2 = v86;
    v34 = *(v86 + 88);
    if (v10 != v34)
    {
      while (v34 != v10)
      {
        v35 = *(v34 - 32);
        if (v35)
        {
          *(v34 - 24) = v35;
          operator delete(v35);
        }

        v34 -= 112;
      }

      *(v86 + 88) = v10;
    }

    result = v96;
    if (v96 == &v93)
    {
      result = ((*v96)[4])(v96);
    }

    else if (v96)
    {
      result = (*v96)[5]();
    }

    goto LABEL_61;
  }

  return result;
}

void sub_BE3180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE3194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE31A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE31BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE31D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE31E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE31F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE3220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE3234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE3248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE325C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BE3270(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v6 = *(v3 + 80);
      v5 = *(v3 + 88);
      if (v6 != v5)
      {
        do
        {
          v8 = *(v6 + 80);
          v7 = *(v6 + 88);
          if (v8 != v7)
          {
            while (1)
            {
              v9 = a2[3] + 160 * *v8;
              if (*(v9 + 72) == *(v9 + 80))
              {
                break;
              }

              v8 += 4;
              if (v8 == v7)
              {
                goto LABEL_7;
              }
            }

            if (v8 != v7)
            {
              v10 = v8 + 4;
              if (v8 + 4 != v7)
              {
                do
                {
                  v11 = a2[3] + 160 * *v10;
                  if (*(v11 + 72) != *(v11 + 80))
                  {
                    *v8 = *v10;
                    v8 += 4;
                  }

                  v10 += 4;
                }

                while (v10 != v7);
                v7 = *(v6 + 88);
              }
            }
          }

          if (v8 != v7)
          {
            *(v6 + 88) = v8;
          }

LABEL_7:
          v6 += 112;
        }

        while (v6 != v5);
        v13 = *(v3 + 80);
        v12 = *(v3 + 88);
        if (v13 != v12)
        {
          v14 = v13 + 112;
          while (*(v14 - 32) != *(v14 - 24))
          {
            v15 = v14 == v12;
            v14 += 112;
            if (v15)
            {
              goto LABEL_4;
            }
          }

          v16 = v14 - 112;
          if (v14 - 112 != v12 && v14 != v12)
          {
            do
            {
              if (*(v14 + 80) != *(v14 + 88))
              {
                *v16 = *v14;
                v17 = *(v14 + 16);
                v18 = *(v14 + 32);
                v19 = *(v14 + 64);
                *(v16 + 48) = *(v14 + 48);
                *(v16 + 64) = v19;
                *(v16 + 16) = v17;
                *(v16 + 32) = v18;
                v20 = *(v16 + 80);
                if (v20)
                {
                  *(v16 + 88) = v20;
                  operator delete(v20);
                  *(v16 + 80) = 0;
                  *(v16 + 88) = 0;
                  *(v16 + 96) = 0;
                }

                *(v16 + 80) = *(v14 + 80);
                *(v16 + 96) = *(v14 + 96);
                *(v14 + 80) = 0;
                *(v14 + 88) = 0;
                *(v14 + 96) = 0;
                *(v16 + 104) = *(v14 + 104);
                v16 += 112;
              }

              v14 += 112;
            }

            while (v14 != v12);
            v12 = *(v3 + 88);
          }

          if (v16 != v12)
          {
            while (v12 != v16)
            {
              v21 = *(v12 - 32);
              if (v21)
              {
                *(v12 - 24) = v21;
                operator delete(v21);
              }

              v12 -= 112;
            }

            *(v3 + 88) = v16;
          }
        }
      }

LABEL_4:
      v3 += 112;
    }

    while (v3 != v4);
    v3 = *a2;
    v4 = a2[1];
  }

  if (v3 == v4)
  {
LABEL_48:
    v23 = v4;
  }

  else
  {
    v22 = (v3 + 112);
    while (*(v22 - 4) != *(v22 - 3))
    {
      v15 = v22 == v4;
      v22 += 7;
      if (v15)
      {
        goto LABEL_48;
      }
    }

    v25 = v22 - 7;
    if (v22 - 7 == v4 || v22 == v4)
    {
      v23 = (v22 - 7);
    }

    else
    {
      v23 = (v22 - 7);
      do
      {
        v27 = v22;
        if (*(v25 + 24) != *(v25 + 25))
        {
          *v23 = *v22;
          v28 = v22[1];
          v29 = v22[2];
          v30 = v22[4];
          *(v23 + 48) = v22[3];
          *(v23 + 64) = v30;
          *(v23 + 16) = v28;
          *(v23 + 32) = v29;
          v31 = (v23 + 80);
          v32 = *(v23 + 80);
          if (v32)
          {
            v33 = *(v23 + 88);
            v26 = *(v23 + 80);
            if (v33 != v32)
            {
              do
              {
                v34 = *(v33 - 32);
                if (v34)
                {
                  *(v33 - 24) = v34;
                  operator delete(v34);
                }

                v33 -= 112;
              }

              while (v33 != v32);
              v26 = *v31;
            }

            *(v23 + 88) = v32;
            operator delete(v26);
            *v31 = 0;
            *(v23 + 88) = 0;
            *(v23 + 96) = 0;
          }

          *(v23 + 80) = v25[12];
          *(v23 + 96) = *(v25 + 26);
          *(v25 + 24) = 0;
          *(v25 + 25) = 0;
          *(v25 + 26) = 0;
          *(v23 + 104) = *(v25 + 216);
          v23 += 112;
        }

        v22 = v27 + 7;
        v25 = v27;
      }

      while (v27 + 7 != v4);
      v4 = a2[1];
    }
  }

  return sub_BE4C58(a2, v23, v4);
}