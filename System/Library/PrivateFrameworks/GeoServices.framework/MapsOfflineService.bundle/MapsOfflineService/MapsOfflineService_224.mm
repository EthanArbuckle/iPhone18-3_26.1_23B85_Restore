uint64_t sub_D7A7F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = &v2[-*a1] >> 7;
  v4 = v3 + 1;
  if ((v3 + 1) >> 57)
  {
    sub_1794();
  }

  v6 = a1[2] - v1;
  if (v6 >> 6 > v4)
  {
    v4 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = &v2[-*a1] >> 7;
  v9 = v3 << 7;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 96) = -1;
  v10 = (v3 << 7) + 128;
  v11 = v9 - (v8 << 7);
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  if (v1 != v2)
  {
    v12 = v1;
    v13 = v11;
    do
    {
      *v13 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 40) = *(v12 + 5);
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      v14 = *(v12 + 3);
      v15 = *(v12 + 4);
      v16 = *(v12 + 5);
      *(v13 + 94) = *(v12 + 94);
      *(v13 + 64) = v15;
      *(v13 + 80) = v16;
      *(v13 + 48) = v14;
      v17 = *(v12 + 104);
      *(v13 + 120) = *(v12 + 15);
      *(v13 + 104) = v17;
      *(v12 + 14) = 0;
      *(v12 + 15) = 0;
      *(v12 + 13) = 0;
      v12 += 128;
      v13 += 128;
    }

    while (v12 != v2);
    do
    {
      sub_60B38C(v1);
      v1 += 128;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v11;
  a1[1] = v10;
  a1[2] = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v10;
}

uint64_t sub_D7A98C(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      if (*(a1 + 8))
      {
        sub_D72788(v4);
        operator delete(*v4);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

LABEL_20:
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v9 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v9;
      goto LABEL_21;
    }

    v8 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_D72788(v8);
      operator delete(*v8);
    }

    *v8 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 24);
        if (v6 != v5)
        {
          do
          {
            if (*(v6 - 1) < 0)
            {
              operator delete(*(v6 - 24));
            }

            v6 -= 32;
          }

          while (v6 != v5);
          v7 = *(a1 + 24);
        }

        *(a1 + 32) = v5;
        operator delete(v7);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      goto LABEL_20;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_21:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D7AAD4(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_D7ABD4@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "CyclingRouteSelectionModule", 0x1BuLL);
  v8 = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_CCEBC0((a2 + 24), "Runtime", &v8, a1);
    *(a2 + 32) = v5;
    v7 = 4;
    if (v5 >= *(a2 + 40))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_CCED74(*(a2 + 32), "Runtime", &v8, a1);
    v5 = v4 + 48;
    *(a2 + 32) = v5;
    v7 = 4;
    if (v5 >= *(a2 + 40))
    {
LABEL_3:
      result = sub_D7AD4C((a2 + 24), "Routes", &v7, a1 + 1);
      *(a2 + 32) = result;
      return result;
    }
  }

  sub_D7AF00(v5, "Routes", &v7, a1 + 1);
  result = v5 + 48;
  *(a2 + 32) = v5 + 48;
  return result;
}

void sub_D7ACF4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D7AD4C(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7AF00(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D7AEEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7AF00(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7B058(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      if (*(a1 + 8))
      {
        sub_D7238C(v4);
        operator delete(*v4);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v6 = *(a2 + 64);
      v5 = *(a2 + 80);
      v7 = *(a2 + 48);
      *(a1 + 92) = *(a2 + 92);
LABEL_21:
      *(a1 + 64) = v6;
      *(a1 + 80) = v5;
      *(a1 + 48) = v7;
      *(a1 + 32) = *(a2 + 32);
      goto LABEL_22;
    }

    v11 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_D7238C(v11);
      operator delete(*v11);
    }

    *v11 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 24);
        if (v9 != v8)
        {
          do
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 24));
            }

            v9 -= 32;
          }

          while (v9 != v8);
          v10 = *(a1 + 24);
        }

        *(a1 + 32) = v8;
        operator delete(v10);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v5 = *(a2 + 80);
      v7 = *(a2 + 48);
      v6 = *(a2 + 64);
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_21;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_22:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D7B1D4(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_D7B2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  v4 = (a2 + 24);
  *(a2 + 23) = 10;
  *(a2 + 8) = 29541;
  *a2 = *"Probelines";
  v34 = 1;
  v5 = sub_D0ACE4((a2 + 24), "Runtime", &v34, a1);
  v6 = v5;
  v7 = *(a2 + 40);
  *(a2 + 32) = v5;
  v33 = 1;
  if (v5 >= v7)
  {
    v8 = sub_D0AFE8(v4, "Runtime.Distributor", &v33, (a1 + 8));
    *(a2 + 32) = v8;
    v32 = 1;
    if (v8 >= *(a2 + 40))
    {
LABEL_3:
      v9 = sub_D7BA0C(v4, "Runtime.Distributor.NearbyLineSegmentFinder", &v32, (a1 + 16));
      *(a2 + 32) = v9;
      v31 = 1;
      if (v9 >= *(a2 + 40))
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_D0B19C(v5, "Runtime.Distributor", &v33, (a1 + 8));
    v8 = v6 + 48;
    *(a2 + 32) = v8;
    v32 = 1;
    if (v8 >= *(a2 + 40))
    {
      goto LABEL_3;
    }
  }

  sub_D7BBC0(v8, "Runtime.Distributor.NearbyLineSegmentFinder", &v32, (a1 + 16));
  v9 = v8 + 48;
  *(a2 + 32) = v9;
  v31 = 1;
  if (v9 >= *(a2 + 40))
  {
LABEL_4:
    v10 = sub_D7BD10(v4, "Runtime.Distributor.Redistribute", &v31, (a1 + 24));
    *(a2 + 32) = v10;
    v30 = 6;
    if (v10 >= *(a2 + 40))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_D7BEC4(v9, "Runtime.Distributor.Redistribute", &v31, (a1 + 24));
  v10 = v9 + 48;
  *(a2 + 32) = v10;
  v30 = 6;
  if (v10 >= *(a2 + 40))
  {
LABEL_5:
    v11 = sub_D7C014(v4, "Distributor.HeuristicallyFixedPoints", &v30, (a1 + 32));
    *(a2 + 32) = v11;
    v29 = 4;
    if (v11 >= *(a2 + 40))
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_D7C1C8(v10, "Distributor.HeuristicallyFixedPoints", &v30, (a1 + 32));
  v11 = v10 + 48;
  *(a2 + 32) = v11;
  v29 = 4;
  if (v11 >= *(a2 + 40))
  {
LABEL_6:
    v12 = sub_D7C320(v4, "Probelines.NumTotalSubroutesWithProbeline", &v29, (a1 + 40));
    *(a2 + 32) = v12;
    v28 = 4;
    if (v12 >= *(a2 + 40))
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_D7C4D4(v11, "Probelines.NumTotalSubroutesWithProbeline", &v29, (a1 + 40));
  v12 = v11 + 48;
  *(a2 + 32) = v12;
  v28 = 4;
  if (v12 >= *(a2 + 40))
  {
LABEL_7:
    v13 = sub_D7C624(v4, "Probelines.NumTotalSubroutesWithoutProbeline", &v28, (a1 + 44));
    *(a2 + 32) = v13;
    v27 = 4;
    if (v13 >= *(a2 + 40))
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  sub_D7C7D8(v12, "Probelines.NumTotalSubroutesWithoutProbeline", &v28, (a1 + 44));
  v13 = v12 + 48;
  *(a2 + 32) = v13;
  v27 = 4;
  if (v13 >= *(a2 + 40))
  {
LABEL_8:
    result = sub_D7C928(v4, "GeometryProcessor.NumTotalAppliedDetourPatches", &v27, (a1 + 72));
    v15 = result;
    *(a2 + 32) = result;
    if (!*(a1 + 40))
    {
      return result;
    }

LABEL_17:
    v26 = 4;
    if (v15 >= *(a2 + 40))
    {
      v16 = sub_D7CC2C(v4, "Probelines.NumProbelinesUsed", &v26, (a1 + 48));
      *(a2 + 32) = v16;
      v25 = 4;
      if (v16 >= *(a2 + 40))
      {
LABEL_19:
        v17 = sub_D7CF30(v4, "Probelines.NumCenterlinesUsedInProbelineRegions", &v25, (a1 + 52));
        *(a2 + 32) = v17;
        v24 = 4;
        if (v17 >= *(a2 + 40))
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }

    else
    {
      sub_D7CDE0(v15, "Probelines.NumProbelinesUsed", &v26, (a1 + 48));
      v16 = v15 + 48;
      *(a2 + 32) = v16;
      v25 = 4;
      if (v16 >= *(a2 + 40))
      {
        goto LABEL_19;
      }
    }

    sub_D7D0E4(v16, "Probelines.NumCenterlinesUsedInProbelineRegions", &v25, (a1 + 52));
    v17 = v16 + 48;
    *(a2 + 32) = v17;
    v24 = 4;
    if (v17 >= *(a2 + 40))
    {
LABEL_20:
      v18 = sub_D7D234(v4, "Probelines.NumAcceptableProbelines", &v24, (a1 + 56));
      *(a2 + 32) = v18;
      v23 = 4;
      if (v18 >= *(a2 + 40))
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

LABEL_26:
    sub_D7D3E8(v17, "Probelines.NumAcceptableProbelines", &v24, (a1 + 56));
    v18 = v17 + 48;
    *(a2 + 32) = v18;
    v23 = 4;
    if (v18 >= *(a2 + 40))
    {
LABEL_21:
      v19 = sub_D7D538(v4, "Probelines.NumUnacceptableProbelines", &v23, (a1 + 60));
      *(a2 + 32) = v19;
      v22 = 4;
      if (v19 >= *(a2 + 40))
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }

LABEL_27:
    sub_D7D6EC(v18, "Probelines.NumUnacceptableProbelines", &v23, (a1 + 60));
    v19 = v18 + 48;
    *(a2 + 32) = v19;
    v22 = 4;
    if (v19 >= *(a2 + 40))
    {
LABEL_22:
      v20 = sub_D7D83C(v4, "Probelines.NumTotalCheckpointsFound", &v22, (a1 + 64));
      *(a2 + 32) = v20;
      v21 = 4;
      if (v20 >= *(a2 + 40))
      {
LABEL_23:
        result = sub_D7D538(v4, "Probelines.NumTotalMissingProbelines", &v21, (a1 + 68));
LABEL_30:
        *(a2 + 32) = result;
        return result;
      }

LABEL_29:
      sub_D7D6EC(v20, "Probelines.NumTotalMissingProbelines", &v21, (a1 + 68));
      result = v20 + 48;
      goto LABEL_30;
    }

LABEL_28:
    sub_D7D9F0(v19, "Probelines.NumTotalCheckpointsFound", &v22, (a1 + 64));
    v20 = v19 + 48;
    *(a2 + 32) = v20;
    v21 = 4;
    if (v20 >= *(a2 + 40))
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

LABEL_16:
  result = sub_D7CADC(v13, "GeometryProcessor.NumTotalAppliedDetourPatches", &v27, (a1 + 72));
  v15 = v13 + 48;
  *(a2 + 32) = v15;
  if (*(a1 + 40))
  {
    goto LABEL_17;
  }

  return result;
}

void sub_D7B8AC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D7BA0C(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7BBC0(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D7BBAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7BBC0(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7BD10(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7BEC4(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D7BEB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7BEC4(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7C014(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7C1C8(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D7C1B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7C1C8(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7C320(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7C4D4(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D7C4C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7C4D4(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7C624(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7C7D8(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D7C7C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7C7D8(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7C928(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7CADC(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D7CAC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7CADC(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7CC2C(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7CDE0(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D7CDCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7CDE0(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7CF30(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7D0E4(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D7D0D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7D0E4(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7D234(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7D3E8(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D7D3D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7D3E8(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7D538(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7D6EC(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D7D6D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7D6EC(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7D83C(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7D9F0(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D7D9DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7D9F0(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7DB40(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v4 = a1 + 8;
    if (*a2)
    {
      sub_D7DC2C(v4, a2 + 8);
      goto LABEL_16;
    }

    sub_D0ED74(v4);
LABEL_12:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_16;
  }

  if (!*a2)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24);
    if (v6 != v5)
    {
      do
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        v6 -= 32;
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;
    operator delete(v7);
  }

  sub_D7DE54(a1 + 8, a2 + 8);
LABEL_16:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D7DC2C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_789448(v5 - 7808);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_CFD5E4((a1 + 24), a2 + 24);
  v7 = *(a1 + 1112);
  if (v7)
  {
    v8 = (a1 + 1112);
    v9 = *(a1 + 1120);
    v10 = *(a1 + 1112);
    if (v9 != v7)
    {
      do
      {
        v9 = sub_3A9518(v9 - 1120);
      }

      while (v9 != v7);
      v10 = *v8;
    }

    *(a1 + 1120) = v7;
    operator delete(v10);
    *v8 = 0;
    *(a1 + 1120) = 0;
    *(a1 + 1128) = 0;
  }

  *(a1 + 1112) = *(a2 + 1112);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1128) = 0;
  *(a2 + 1112) = 0u;
  sub_D09358(a1 + 1136, a2 + 1136);
  v11 = *(a2 + 1968);
  *(a1 + 1952) = *(a2 + 1952);
  *(a1 + 1968) = v11;
  v12 = *(a2 + 2000);
  v13 = *(a2 + 2016);
  v14 = *(a2 + 2032);
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 2032) = v14;
  *(a1 + 2016) = v13;
  *(a1 + 2000) = v12;
  v15 = *(a2 + 2064);
  v16 = *(a2 + 2080);
  v17 = *(a2 + 2096);
  *(a1 + 2048) = *(a2 + 2048);
  *(a1 + 2096) = v17;
  *(a1 + 2080) = v16;
  *(a1 + 2064) = v15;
  v18 = *(a2 + 2128);
  v19 = *(a2 + 2144);
  v20 = *(a2 + 2154);
  *(a1 + 2112) = *(a2 + 2112);
  *(a1 + 2154) = v20;
  *(a1 + 2144) = v19;
  *(a1 + 2128) = v18;
  memcpy((a1 + 2176), (a2 + 2176), 0xAF0uLL);
  v21 = *(a1 + 4976);
  if (v21)
  {
    *(a1 + 4984) = v21;
    operator delete(v21);
    *(a1 + 4976) = 0;
    *(a1 + 4984) = 0;
    *(a1 + 4992) = 0;
  }

  *(a1 + 4976) = *(a2 + 4976);
  *(a1 + 4992) = *(a2 + 4992);
  *(a2 + 4992) = 0;
  *(a2 + 4976) = 0u;
  v22 = (a1 + 5000);
  if (*(a1 + 5023) < 0)
  {
    operator delete(*v22);
  }

  v23 = *(a2 + 5000);
  *(a1 + 5016) = *(a2 + 5016);
  *v22 = v23;
  *(a2 + 5023) = 0;
  *(a2 + 5000) = 0;
  sub_6BA20(a1 + 5024, (a2 + 5024));
  *(a1 + 5064) = *(a2 + 5064);
  return a1;
}

uint64_t sub_D7DE54(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 48) = 0u;
  sub_55A4D0(a1 + 72, a2 + 72);
  sub_55A4D0(a1 + 568, a2 + 568);
  *(a1 + 1080) = 0;
  *(a1 + 1064) = 0u;
  *(a1 + 1064) = *(a2 + 1064);
  *(a1 + 1072) = *(a2 + 1072);
  *(a2 + 1080) = 0;
  *(a2 + 1064) = 0u;
  *(a1 + 1104) = 0;
  *(a1 + 1088) = 0u;
  *(a1 + 1088) = *(a2 + 1088);
  *(a1 + 1104) = *(a2 + 1104);
  *(a2 + 1104) = 0;
  *(a2 + 1088) = 0u;
  *(a1 + 1128) = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1112) = *(a2 + 1112);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1128) = 0;
  *(a2 + 1112) = 0u;
  sub_5DB550(a1 + 1136, a2 + 1136);
  v4 = *(a2 + 1952);
  *(a1 + 1968) = *(a2 + 1968);
  *(a1 + 1952) = v4;
  v5 = *(a2 + 1984);
  v6 = *(a2 + 2000);
  v7 = *(a2 + 2016);
  *(a1 + 2032) = *(a2 + 2032);
  *(a1 + 2016) = v7;
  *(a1 + 2000) = v6;
  *(a1 + 1984) = v5;
  v8 = *(a2 + 2048);
  v9 = *(a2 + 2064);
  v10 = *(a2 + 2080);
  *(a1 + 2096) = *(a2 + 2096);
  *(a1 + 2080) = v10;
  *(a1 + 2064) = v9;
  *(a1 + 2048) = v8;
  v11 = *(a2 + 2112);
  v12 = *(a2 + 2128);
  v13 = *(a2 + 2144);
  *(a1 + 2154) = *(a2 + 2154);
  *(a1 + 2144) = v13;
  *(a1 + 2128) = v12;
  *(a1 + 2112) = v11;
  memcpy((a1 + 2176), (a2 + 2176), 0xAF0uLL);
  *(a1 + 4984) = 0u;
  *(a1 + 4976) = 0;
  *(a1 + 4976) = *(a2 + 4976);
  *(a1 + 4992) = *(a2 + 4992);
  *(a2 + 4976) = 0u;
  *(a2 + 4992) = 0;
  v14 = *(a2 + 5016);
  *(a1 + 5000) = *(a2 + 5000);
  *(a1 + 5016) = v14;
  *(a2 + 5016) = 0;
  *(a2 + 5008) = 0;
  *(a2 + 5000) = 0;
  v15 = *(a2 + 5024);
  *(a2 + 5024) = 0;
  *(a1 + 5024) = v15;
  *(a1 + 5032) = *(a2 + 5032);
  *(a2 + 5032) = 0;
  v16 = *(a2 + 5040);
  *(a1 + 5040) = v16;
  v17 = *(a2 + 5048);
  *(a1 + 5048) = v17;
  *(a1 + 5056) = *(a2 + 5056);
  if (v17)
  {
    v18 = *(v16 + 8);
    v19 = *(a1 + 5032);
    if ((v19 & (v19 - 1)) != 0)
    {
      if (v18 >= v19)
      {
        v18 %= v19;
      }
    }

    else
    {
      v18 &= v19 - 1;
    }

    *(v15 + 8 * v18) = a1 + 5040;
    *(a2 + 5040) = 0;
    *(a2 + 5048) = 0;
  }

  *(a1 + 5064) = *(a2 + 5064);
  return a1;
}

void sub_D7E19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_616CD4(&a13);
  _Unwind_Resume(a1);
}

void sub_D7E1C0(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_D71E14(a1, *a3, a3[1], 0x6FB586FB586FB587 * ((a3[1] - *a3) >> 3));
  sub_E78844((a1 + 3));
}

void sub_D7E448(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 1680) = v4;
    operator delete(v4);
  }

  sub_616CD4(v1 + 1632);
  sub_528AB4(v1 + 24);
  sub_44FD90(v1);
  _Unwind_Resume(a1);
}

void *sub_D7E4BC@<X0>(void *result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = result;
  v5 = *result;
  v6 = a3 + 8 * (a2 - *result);
  if (v6 < 0)
  {
    v8 = v6 - 63;
    if (v6 - 63 < 0)
    {
      v8 = a3 + 8 * (a2 - *result);
    }

    v7 = v8 >> 6;
  }

  else
  {
    v7 = v6 >> 6;
  }

  v9 = (v5 + 8 * v7);
  *a4 = v9;
  v10 = v6 & 0x3F;
  *(a4 + 8) = v10;
  v11 = (a2 + (((a3 + 1) >> 3) & 0x3FFFFFF8));
  v12 = (a3 + 1) & 0x3F;
  v13 = v5 + 8 * (result[1] >> 6);
  v14 = result[1] & 0x3FLL;
  if (v10 == v12)
  {
    v15 = v14 - v12 + 8 * (v13 - v11);
    if (v15 >= 1)
    {
      if (v12)
      {
        if (v15 >= (64 - v12))
        {
          v16 = 64 - v12;
        }

        else
        {
          v16 = v14 - v12 + 8 * (v13 - v11);
        }

        v15 -= v16;
        v17 = *v11++;
        *v9 = *v9 & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v12 - v16)) & (-1 << v12)) | v17 & (0xFFFFFFFFFFFFFFFFLL >> (64 - v12 - v16)) & (-1 << v12);
        v9 = (v9 + (((v16 + v12) >> 3) & 0x18));
      }

      if (v15 >= 0)
      {
        v18 = v15;
      }

      else
      {
        v18 = v15 + 63;
      }

      v19 = v18 >> 6;
      if ((v15 + 63) >= 0x7F)
      {
        result = memmove(v9, v11, 8 * v19);
      }

      if (v15 - (v19 << 6) >= 1)
      {
        v9[v19] = v9[v19] & ~(0xFFFFFFFFFFFFFFFFLL >> ((v19 << 6) - v15)) | v11[v19] & (0xFFFFFFFFFFFFFFFFLL >> ((v19 << 6) - v15));
      }
    }
  }

  else
  {
    v21 = v5 + 8 * v7;
    v22 = v10;
    result = sub_43058(v11, v12, v13, v14, &v21, &v20);
  }

  --v4[1];
  return result;
}

uint64_t sub_D7E648(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void **sub_D7E748(void **a1)
{
  v2 = a1[209];
  if (v2)
  {
    a1[210] = v2;
    operator delete(v2);
  }

  sub_616CD4((a1 + 204));
  sub_528AB4((a1 + 3));
  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = *a1;
    if (v4 != v3)
    {
      do
      {
        v4 = sub_44FDEC(v4 - 440);
      }

      while (v4 != v3);
      v5 = *a1;
    }

    a1[1] = v3;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_D7E7C4(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      sub_D7E910(a1 + 8, a2 + 8);
      v5 = *(a2 + 352);
      v4 = *(a2 + 368);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 352) = v5;
      *(a1 + 368) = v4;
      v7 = *(a2 + 400);
      v6 = *(a2 + 416);
      v8 = *(a2 + 384);
      *(a1 + 431) = *(a2 + 431);
      *(a1 + 400) = v7;
      *(a1 + 416) = v6;
      *(a1 + 384) = v8;
      goto LABEL_16;
    }

    sub_D71800(a1, a1 + 8);
LABEL_12:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_16;
  }

  if (!*a2)
  {
    goto LABEL_12;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 24);
    if (v10 != v9)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 24));
        }

        v10 -= 32;
      }

      while (v10 != v9);
      v11 = *(a1 + 24);
    }

    *(a1 + 32) = v9;
    operator delete(v11);
  }

  sub_CFBFF0((a1 + 8), a2 + 8);
  v12 = *(a2 + 336);
  v13 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v13;
  *(a1 + 336) = v12;
  v14 = *(a2 + 384);
  v15 = *(a2 + 400);
  v16 = *(a2 + 416);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 400) = v15;
  *(a1 + 416) = v16;
  *(a1 + 384) = v14;
LABEL_16:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D7E910(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_12C58C0(a1, a2);
    }

    else
    {
      sub_12C5844(a1, a2);
    }
  }

  v6 = *(a1 + 256);
  if (v6)
  {
    v7 = *(a1 + 264);
    v8 = *(a1 + 256);
    if (v7 != v6)
    {
      do
      {
        v7 = sub_12D8D7C(v7 - 64);
      }

      while (v7 != v6);
      v8 = *(a1 + 256);
    }

    *(a1 + 264) = v6;
    operator delete(v8);
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
  }

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  if (*(a1 + 280))
  {
    sub_D71280((a1 + 280));
    operator delete(*(a1 + 280));
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  if (*(a1 + 304))
  {
    sub_D72204((a1 + 304));
    operator delete(*(a1 + 304));
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
  }

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  return a1;
}

uint64_t sub_D7EA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  *a1 = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  sub_D7EBF4(a1 + 80, *a8, a8[1], 0xEEEEEEEEEEEEEEEFLL * ((a8[1] - *a8) >> 4));
  *(a1 + 104) = 0;
  sub_4ED880(a9, a1 + 112);
  *(a1 + 144) = a9;
  *(a1 + 152) = sub_4EF390(a9);
  *(a1 + 160) = v10;
  sub_E80194(*(a1 + 16), a1 + 168);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  *(a1 + 344) = -1;
  *(a1 + 352) = 0x7FFFFFFF;
  *(a1 + 360) = -1;
  *(a1 + 368) = -1;
  *(a1 + 376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 384) = 0;
  *(a1 + 392) = -1935635296;
  *(a1 + 400) = 0;
  *(a1 + 407) = 0;
  *(a1 + 416) = 0;
  *(a1 + 440) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 456) = 100;
  *(a1 + 464) = 0u;
  *(a1 + 480) = vnegq_f64(v11);
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 520) = 1;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 728) = -1;
  *(a1 + 736) = -1;
  *(a1 + 744) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 760) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  return a1;
}

void sub_D7EBD8(_Unwind_Exception *a1)
{
  sub_4F3AA4(v1 + 112);
  sub_49AE64((v1 + 80));
  _Unwind_Resume(a1);
}

void sub_D7EBF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D7ECD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = (v11 - 240);
    v15 = -v12;
    do
    {
      v14 = sub_49AEC0(v14) - 30;
      v15 += 240;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_49DF70(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_D7ED0C(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void sub_D7EE0C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 23) = 15;
  strcpy(a2, "AnalyticsModule");
  LOBYTE(__p[0]) = 1;
  v4 = sub_CCEBC0((a2 + 24), "Runtime", __p, a1);
  v5 = v4;
  v6 = *(a2 + 40);
  v7 = (a1 + 8);
  v8 = *(a1 + 8);
  *(a2 + 32) = v4;
  if (v8)
  {
    LOBYTE(__p[0]) = 2;
    if (v4 >= v6)
    {
      v5 = sub_D0CB0C((a2 + 24), "AnalyticsData.Size", __p, v7);
    }

    else
    {
      sub_D0CCC0(v4, "AnalyticsData.Size", __p, v7);
      v5 += 48;
    }

    *(a2 + 32) = v5;
    v6 = *(a2 + 40);
  }

  LOBYTE(__p[0]) = 1;
  if (v5 >= v6)
  {
    v9 = sub_D118C8((a2 + 24), "ClosureAnalytics.Runtime", __p, (a1 + 16));
    *(a2 + 32) = v9;
    v10 = (a1 + 24);
    if (!*(a1 + 24))
    {
LABEL_8:
      LOBYTE(__p[0]) = 1;
      if (v9 < *(a2 + 40))
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }
  }

  else
  {
    sub_D11A7C(v5, "ClosureAnalytics.Runtime", __p, (a1 + 16));
    v9 = v5 + 48;
    *(a2 + 32) = v9;
    v10 = (a1 + 24);
    if (!*(a1 + 24))
    {
      goto LABEL_8;
    }
  }

  LOBYTE(__p[0]) = 2;
  if (v9 >= *(a2 + 40))
  {
    v9 = sub_D0CE10((a2 + 24), "ClosureAnalytics.Size", __p, v10);
  }

  else
  {
    sub_D0CFC4(v9, "ClosureAnalytics.Size", __p, v10);
    v9 += 48;
  }

  *(a2 + 32) = v9;
  LOBYTE(__p[0]) = 1;
  if (v9 < *(a2 + 40))
  {
LABEL_9:
    sub_D7FA9C(v9, "TrajectoryAnalytics.Runtime", __p, (a1 + 32));
    v11 = v9 + 48;
    *(a2 + 32) = v11;
    v12 = (a1 + 40);
    if (!*(a1 + 40))
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = sub_D7F8E8((a2 + 24), "TrajectoryAnalytics.Runtime", __p, (a1 + 32));
  *(a2 + 32) = v11;
  v12 = (a1 + 40);
  if (!*(a1 + 40))
  {
LABEL_10:
    LOBYTE(__p[0]) = 1;
    if (v11 < *(a2 + 40))
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_26:
  LOBYTE(__p[0]) = 2;
  if (v11 >= *(a2 + 40))
  {
    v11 = sub_D0B5F0((a2 + 24), "TrajectoryAnalytics.Size", __p, v12);
  }

  else
  {
    sub_D0B7A4(v11, "TrajectoryAnalytics.Size", __p, v12);
    v11 += 48;
  }

  *(a2 + 32) = v11;
  LOBYTE(__p[0]) = 1;
  if (v11 < *(a2 + 40))
  {
LABEL_11:
    sub_CCFCB0(v11, "RouteAnalytics.Runtime", __p, (a1 + 48));
    v13 = v11 + 48;
    *(a2 + 32) = v13;
    v14 = (a1 + 56);
    if (!*(a1 + 56))
    {
      goto LABEL_12;
    }

LABEL_31:
    LOBYTE(__p[0]) = 2;
    if (v13 >= *(a2 + 40))
    {
      v13 = sub_D0AFE8((a2 + 24), "RouteAnalytics.Size", __p, v14);
      *(a2 + 32) = v13;
      v15 = (a1 + 68);
      if (*(a1 + 68))
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_D0B19C(v13, "RouteAnalytics.Size", __p, v14);
      v13 += 48;
      *(a2 + 32) = v13;
      v15 = (a1 + 68);
      if (*(a1 + 68))
      {
        goto LABEL_35;
      }
    }

LABEL_13:
    v16 = (a1 + 72);
    if (!*(a1 + 72))
    {
      goto LABEL_14;
    }

LABEL_39:
    v33.__r_.__value_.__s.__data_[0] = 4;
    LODWORD(__p[0]) = 0;
    if (v13 >= *(a2 + 40))
    {
      v13 = sub_D7FF0C((a2 + 24), "ClosureAnalytics.NumInactiveSoftClosures", &v33, v16, __p);
      *(a2 + 32) = v13;
      v17 = (a1 + 76);
      if (*(a1 + 76))
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_D800D0(v13, "ClosureAnalytics.NumInactiveSoftClosures", &v33, v16, __p);
      v13 += 48;
      *(a2 + 32) = v13;
      v17 = (a1 + 76);
      if (*(a1 + 76))
      {
        goto LABEL_43;
      }
    }

LABEL_15:
    if (*(a1 + 84) != 1)
    {
      goto LABEL_16;
    }

LABEL_47:
    LOBYTE(v31) = 4;
    LODWORD(__p[0]) = 1;
    LODWORD(v33.__r_.__value_.__l.__data_) = 0;
    if (v13 >= *(a2 + 40))
    {
      v13 = sub_D8053C((a2 + 24), "ClosureAnalytics.RoutesContainClosureColor", &v31, __p, &v33);
      *(a2 + 32) = v13;
      v18 = (a1 + 80);
      if (*(a1 + 80))
      {
        goto LABEL_51;
      }
    }

    else
    {
      sub_D80700(v13, "ClosureAnalytics.RoutesContainClosureColor", &v31, __p, &v33);
      v13 += 48;
      *(a2 + 32) = v13;
      v18 = (a1 + 80);
      if (*(a1 + 80))
      {
        goto LABEL_51;
      }
    }

LABEL_17:
    v19 = (a1 + 64);
    if (*(a1 + 64) != 1)
    {
      goto LABEL_18;
    }

LABEL_55:
    v33.__r_.__value_.__s.__data_[0] = 4;
    LODWORD(__p[0]) = 0;
    if (v13 >= *(a2 + 40))
    {
      v20 = sub_D80B6C((a2 + 24), "IsReroute", &v33, v19, __p);
    }

    else
    {
      sub_D80D30(v13, "IsReroute", &v33, v19, __p);
      v20 = v13 + 48;
    }

    *(a2 + 32) = v20;
    if (*(a1 + 101))
    {
      goto LABEL_74;
    }

    goto LABEL_59;
  }

LABEL_30:
  v13 = sub_CCFAFC((a2 + 24), "RouteAnalytics.Runtime", __p, (a1 + 48));
  *(a2 + 32) = v13;
  v14 = (a1 + 56);
  if (*(a1 + 56))
  {
    goto LABEL_31;
  }

LABEL_12:
  v15 = (a1 + 68);
  if (!*(a1 + 68))
  {
    goto LABEL_13;
  }

LABEL_35:
  v33.__r_.__value_.__s.__data_[0] = 4;
  LODWORD(__p[0]) = 0;
  if (v13 >= *(a2 + 40))
  {
    v13 = sub_D7FBF4((a2 + 24), "ClosureAnalytics.NumActiveSoftClosures", &v33, v15, __p);
    *(a2 + 32) = v13;
    v16 = (a1 + 72);
    if (*(a1 + 72))
    {
      goto LABEL_39;
    }
  }

  else
  {
    sub_D7FDB8(v13, "ClosureAnalytics.NumActiveSoftClosures", &v33, v15, __p);
    v13 += 48;
    *(a2 + 32) = v13;
    v16 = (a1 + 72);
    if (*(a1 + 72))
    {
      goto LABEL_39;
    }
  }

LABEL_14:
  v17 = (a1 + 76);
  if (!*(a1 + 76))
  {
    goto LABEL_15;
  }

LABEL_43:
  v33.__r_.__value_.__s.__data_[0] = 4;
  LODWORD(__p[0]) = 0;
  if (v13 >= *(a2 + 40))
  {
    v13 = sub_D80224((a2 + 24), "ClosureAnalytics.NumHardClosures", &v33, v17, __p);
    *(a2 + 32) = v13;
    if (*(a1 + 84) == 1)
    {
      goto LABEL_47;
    }
  }

  else
  {
    sub_D803E8(v13, "ClosureAnalytics.NumHardClosures", &v33, v17, __p);
    v13 += 48;
    *(a2 + 32) = v13;
    if (*(a1 + 84) == 1)
    {
      goto LABEL_47;
    }
  }

LABEL_16:
  v18 = (a1 + 80);
  if (!*(a1 + 80))
  {
    goto LABEL_17;
  }

LABEL_51:
  v33.__r_.__value_.__s.__data_[0] = 4;
  LODWORD(__p[0]) = 0;
  if (v13 >= *(a2 + 40))
  {
    v13 = sub_D80854((a2 + 24), "ClosureAnalytics.NumGeometryPatches", &v33, v18, __p);
    *(a2 + 32) = v13;
    v19 = (a1 + 64);
    if (*(a1 + 64) == 1)
    {
      goto LABEL_55;
    }
  }

  else
  {
    sub_D80A18(v13, "ClosureAnalytics.NumGeometryPatches", &v33, v18, __p);
    v13 += 48;
    *(a2 + 32) = v13;
    v19 = (a1 + 64);
    if (*(a1 + 64) == 1)
    {
      goto LABEL_55;
    }
  }

LABEL_18:
  if (*(a1 + 101))
  {
    goto LABEL_74;
  }

LABEL_59:
  if ((*(a1 + 100) & 1) == 0)
  {
    v21 = *(a1 + 88);
    if (v21 != 0.0)
    {
      if (v21 <= 0.0)
      {
        v21 = -v21;
      }

      if (v21 >= 2.22044605e-16)
      {
        std::to_string(&v33, *(a1 + 96));
        v22 = std::string::insert(&v33, 0, "EV.PredictionError.RelativeErrorRate.KM_", 0x28uLL);
        v23 = *&v22->__r_.__value_.__l.__data_;
        v35 = v22->__r_.__value_.__r.__words[2];
        *__p = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v32 = 6;
        v24 = *(a1 + 88) * 100.0;
        v31 = v24;
        v25 = *(a2 + 32);
        if (v25 >= *(a2 + 40))
        {
          v28 = sub_D80E84((a2 + 24), __p, &v32, &v31);
          v26 = HIBYTE(v35);
        }

        else
        {
          v26 = HIBYTE(v35);
          if (SHIBYTE(v35) < 0)
          {
            sub_325C(*(a2 + 32), __p[0], __p[1]);
          }

          else
          {
            v27 = *__p;
            *(v25 + 16) = v35;
            *v25 = v27;
          }

          *(v25 + 24) = 6;
          *(v25 + 32) = v24;
          *(v25 + 40) = 1;
          v28 = v25 + 48;
        }

        *(a2 + 32) = v28;
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }
    }
  }

LABEL_74:
  if (*(a1 + 102) == 1)
  {
    LOBYTE(v31) = 4;
    LODWORD(__p[0]) = 1;
    LODWORD(v33.__r_.__value_.__l.__data_) = 0;
    v29 = *(a2 + 32);
    if (v29 >= *(a2 + 40))
    {
      v30 = sub_D81074((a2 + 24), "IsMetricsRelevant", &v31, __p, &v33);
    }

    else
    {
      sub_D81238(*(a2 + 32), "IsMetricsRelevant", &v31, __p, &v33);
      v30 = v29 + 48;
    }

    *(a2 + 32) = v30;
  }
}

void sub_D7F5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  *(v23 + 32) = v24;
  operator delete(__p);
  if (a17 < 0)
  {
    operator delete(a12);
    sub_9DA0(v23);
    _Unwind_Resume(a1);
  }

  sub_9DA0(v23);
  _Unwind_Resume(a1);
}

void sub_D7F680(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D7F6AC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D7F6D8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D7F704(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D7F730(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D7F75C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D7F788(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D7F7B4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D7F7E0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D7F80C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D7F838(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D7F864(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D7F890(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D7F8BC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D7F8E8(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7FA9C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D7FA88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7FA9C(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7FBF4(uint64_t *a1, char *a2, char *a3, unsigned int *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 16 * ((a1[1] - *a1) >> 4);
  sub_D7FDB8(v18, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v18 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 24) = v16;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 48;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_D7FDA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7FDB8(uint64_t a1, char *__s, char *a3, unsigned int *a4, int *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
    *(&__dst + v11) = 0;
    v12 = *a3;
    v13 = *a4;
    v14 = *a5;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    operator delete(v15);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v18;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  return a1;
}

uint64_t sub_D7FF0C(uint64_t *a1, char *a2, char *a3, unsigned int *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 16 * ((a1[1] - *a1) >> 4);
  sub_D800D0(v18, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v18 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 24) = v16;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 48;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_D800BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D800D0(uint64_t a1, char *__s, char *a3, unsigned int *a4, int *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
    *(&__dst + v11) = 0;
    v12 = *a3;
    v13 = *a4;
    v14 = *a5;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    operator delete(v15);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v18;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  return a1;
}

uint64_t sub_D80224(uint64_t *a1, char *a2, char *a3, unsigned int *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 16 * ((a1[1] - *a1) >> 4);
  sub_D803E8(v18, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v18 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 24) = v16;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 48;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_D803D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D803E8(uint64_t a1, char *__s, char *a3, unsigned int *a4, int *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
    *(&__dst + v11) = 0;
    v12 = *a3;
    v13 = *a4;
    v14 = *a5;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    operator delete(v15);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v18;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  return a1;
}

uint64_t sub_D8053C(uint64_t *a1, char *a2, char *a3, int *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 16 * ((a1[1] - *a1) >> 4);
  sub_D80700(v18, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v18 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 24) = v16;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 48;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_D806EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D80700(uint64_t a1, char *__s, char *a3, int *a4, int *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
    *(&__dst + v11) = 0;
    v12 = *a3;
    v13 = *a4;
    v14 = *a5;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    operator delete(v15);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v18;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  return a1;
}

uint64_t sub_D80854(uint64_t *a1, char *a2, char *a3, unsigned int *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 16 * ((a1[1] - *a1) >> 4);
  sub_D80A18(v18, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v18 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 24) = v16;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 48;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_D80A04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D80A18(uint64_t a1, char *__s, char *a3, unsigned int *a4, int *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
    *(&__dst + v11) = 0;
    v12 = *a3;
    v13 = *a4;
    v14 = *a5;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    operator delete(v15);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v18;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  return a1;
}

uint64_t sub_D80B6C(uint64_t *a1, char *a2, char *a3, unsigned __int8 *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 16 * ((a1[1] - *a1) >> 4);
  sub_D80D30(v18, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v18 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 24) = v16;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 48;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_D80D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D80D30(uint64_t a1, char *__s, char *a3, unsigned __int8 *a4, int *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
    *(&__dst + v11) = 0;
    v12 = *a3;
    v13 = *a4;
    v14 = *a5;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    operator delete(v15);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v18;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  return a1;
}

uint64_t sub_D80E84(uint64_t *a1, uint64_t a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = v10 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_D81060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D81074(uint64_t *a1, char *a2, char *a3, int *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 16 * ((a1[1] - *a1) >> 4);
  sub_D81238(v18, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v18 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 24) = v16;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 48;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_D81224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D81238(uint64_t a1, char *__s, char *a3, int *a4, int *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
    *(&__dst + v11) = 0;
    v12 = *a3;
    v13 = *a4;
    v14 = *a5;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    operator delete(v15);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v18;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  return a1;
}

void *sub_D8138C(void *a1)
{
  sub_44FDEC((a1 + 43));
  v2 = a1[40];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    v5 = a1[16];
    v6 = a1[15];
    if (v5 != v4)
    {
      do
      {
        v5 -= 72;
        sub_3E4690(v5);
      }

      while (v5 != v4);
      v6 = a1[15];
    }

    a1[16] = v4;
    operator delete(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    v8 = a1[11];
    v9 = a1[10];
    if (v8 != v7)
    {
      do
      {
        v8 = sub_49AEC0(v8 - 30);
      }

      while (v8 != v7);
      v9 = a1[10];
    }

    a1[11] = v7;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_D8144C(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      sub_D81568(a1 + 8, a2 + 8);
      goto LABEL_16;
    }

    sub_1758FB8(a1 + 584);
    sub_1758FB8(a1 + 8);
LABEL_12:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_16;
  }

  if (!*a2)
  {
    goto LABEL_12;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 24);
    if (v5 != v4)
    {
      do
      {
        if (*(v5 - 1) < 0)
        {
          operator delete(*(v5 - 24));
        }

        v5 -= 32;
      }

      while (v5 != v4);
      v6 = *(a1 + 24);
    }

    *(a1 + 32) = v4;
    operator delete(v6);
  }

  sub_CE25A8(a1 + 8, a2 + 8);
  sub_CE25A8(a1 + 584, a2 + 584);
  v7 = *(a2 + 1160);
  v8 = *(a2 + 1176);
  *(a1 + 1192) = *(a2 + 1192);
  *(a1 + 1160) = v7;
  *(a1 + 1176) = v8;
LABEL_16:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D81568(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_175C55C(a1, a2);
    }

    else
    {
      sub_175C1D0(a1, a2);
    }

    v6 = *(a1 + 584);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v7 = *(a2 + 584);
    if ((v7 & 2) != 0)
    {
      v7 = 0;
    }

    else if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v6 == v7)
    {
      sub_175C55C(a1 + 576, a2 + 576);
    }

    else
    {
      sub_175C1D0(a1 + 576, a2 + 576);
    }
  }

  v8 = *(a2 + 1152);
  v9 = *(a2 + 1168);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1168) = v9;
  *(a1 + 1152) = v8;
  return a1;
}

uint64_t sub_D81670(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, _OWORD *a6, uint64_t *a7, uint64_t *a8)
{
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v77 = *a7;
  v14 = sub_3B2E6C(a5);
  sub_2C1B08(v59, v14);
  v65 = 1;
  sub_E85008(a2, v59, &v66);
  v42 = a6;
  v15 = sub_3B6890(a5);
  v16 = *v15;
  v17 = *(v15 + 8);
  sub_559C9C(v55);
  bzero(&v56, 0x348uLL);
  sub_5C0A00(v58);
  v18 = sub_E7A5E0(a2);
  v19 = sub_D81AEC(a2, a4, a3, a5);
  v20 = sub_E7FD98(a2);
  v52 = 0;
  v53 = sub_E80738(a2);
  v54 = v21;
  v50 = 0;
  v51 = 0;
  v49 = *a8;
  LOBYTE(a8) = sub_E7AAC4(a2);
  sub_5F328(v47);
  __p = 0;
  v45 = 0;
  v46 = 0;
  v22 = sub_E89630(a2);
  sub_D81C5C(a1, a3, a4, a5, v42, &v78, &v77, &v66, v16, v17, v55, v18, v19, v20 & 0xFFFFFFFFFFLL, &v53, &v50, &v49, a8, v47, &__p, v22);
  v23 = __p;
  if (__p)
  {
    v24 = v45;
    v25 = __p;
    if (v45 == __p)
    {
LABEL_13:
      v45 = v23;
      operator delete(v25);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v24 - 1) < 0)
      {
        operator delete(*(v24 - 3));
        v26 = *(v24 - 6);
        if (v26)
        {
          do
          {
LABEL_7:
            v27 = *v26;
            operator delete(v26);
            v26 = v27;
          }

          while (v27);
        }
      }

      else
      {
        v26 = *(v24 - 6);
        if (v26)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 8);
      *(v24 - 8) = 0;
      if (v28)
      {
        operator delete(v28);
      }

      v24 -= 9;
      if (v24 == v23)
      {
        v25 = __p;
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v29 = v48;
  if (v48)
  {
    do
    {
      v30 = *v29;
      v31 = *(v29 + 12);
      if (v31 != -1)
      {
        (off_2673D08[v31])(&v77, v29 + 5);
      }

      *(v29 + 12) = -1;
      if (*(v29 + 39) < 0)
      {
        operator delete(v29[2]);
      }

      operator delete(v29);
      v29 = v30;
    }

    while (v30);
  }

  v32 = v47[0];
  v47[0] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  v33 = v50;
  if (v50)
  {
    v34 = v51;
    v35 = v50;
    if (v51 != v50)
    {
      do
      {
        v36 = *(v34 - 1);
        v34 -= 3;
        if (v36 < 0)
        {
          operator delete(*v34);
        }
      }

      while (v34 != v33);
      v35 = v50;
    }

    v51 = v33;
    operator delete(v35);
  }

  sub_5C0F34(v58);
  v37 = v56;
  if (v56)
  {
    v38 = v57;
    v39 = v56;
    if (v57 != v56)
    {
      do
      {
        v38 = sub_3A9518(v38 - 1120);
      }

      while (v38 != v37);
      v39 = v56;
    }

    v57 = v37;
    operator delete(v39);
  }

  sub_559E70(v55);
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v74 < 0)
  {
    operator delete(v73);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v65 == 1)
  {
    if (v64 < 0)
    {
      operator delete(v63);
      if ((v62 & 0x80000000) == 0)
      {
LABEL_49:
        if ((v60 & 0x80000000) == 0)
        {
          goto LABEL_50;
        }

LABEL_55:
        operator delete(v59[0]);
        v40 = v78;
        if (!v78)
        {
          return a1;
        }

        goto LABEL_51;
      }
    }

    else if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    operator delete(v61);
    if (v60 < 0)
    {
      goto LABEL_55;
    }
  }

LABEL_50:
  v40 = v78;
  if (v78)
  {
LABEL_51:
    v79 = v40;
    operator delete(v40);
  }

  return a1;
}

void sub_D81A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_D0AA6C(&a38);
  sub_D71D0C(&STACK[0x8C0]);
  sub_D71D80(&STACK[0x870]);
  v40 = *(v38 - 112);
  if (v40)
  {
    *(v38 - 104) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_D81AEC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = sub_E7A5E0(a1);
  result = sub_EA7118(v7);
  if (result)
  {
    if (*a2 == a2[1])
    {
      return 0;
    }

    else if (*a3 == a3[1])
    {
      return 0;
    }

    else
    {
      v20 = 15;
      v18 = 0;
      strcpy(v19, "RerouteCategory");
      __p = 0;
      v17 = 0;
      v9 = sub_3AEC94(a4, v19, &__p);
      sub_4EB344(&v21, v9);
      result = sub_394BD0();
      v10 = __p;
      if (__p)
      {
        v11 = result;
        v12 = v17;
        v13 = __p;
        if (v17 != __p)
        {
          do
          {
            v14 = *(v12 - 1);
            v12 -= 3;
            if (v14 < 0)
            {
              operator delete(*v12);
            }
          }

          while (v12 != v10);
          v13 = __p;
        }

        v17 = v10;
        operator delete(v13);
        result = v11;
      }

      if (v20 < 0)
      {
        v15 = result;
        operator delete(v19[0]);
        return v15;
      }
    }
  }

  return result;
}

void sub_D81C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_D81C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, void *a7, int *a8, uint64_t a9, int a10, uint64_t a11, char a12, char a13, uint64_t a14, uint64_t *a15, uint64_t a16, void *a17, char a18, uint64_t *a19, uint64_t a20, uint64_t a21)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 8) = *a6;
  *(a1 + 24) = *(a6 + 16);
  *(a6 + 16) = 0;
  *a6 = 0u;
  *(a1 + 32) = 0u;
  v27 = a1 + 32;
  *(a1 + 48) = 0;
  *(a1 + 32) = *a11;
  *(a1 + 48) = *(a11 + 16);
  *(a11 + 16) = 0;
  *a11 = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 56) = *(a11 + 24);
  *(a1 + 72) = *(a11 + 40);
  *(a11 + 40) = 0;
  *(a11 + 24) = 0u;
  sub_55A4D0(a1 + 80, a11 + 48);
  sub_55A4D0(v27 + 544, a11 + 544);
  *(v27 + 1056) = 0;
  *(v27 + 1040) = 0u;
  *(v27 + 1040) = *(a11 + 1040);
  *(v27 + 1056) = *(a11 + 1056);
  *(a11 + 1056) = 0;
  *(a11 + 1040) = 0u;
  *(v27 + 1080) = 0;
  *(v27 + 1064) = 0u;
  *(v27 + 1064) = *(a11 + 1064);
  *(v27 + 1072) = *(a11 + 1072);
  *(a11 + 1080) = 0;
  *(a11 + 1064) = 0u;
  *(v27 + 1104) = 0;
  *(v27 + 1088) = 0u;
  *(v27 + 1088) = *(a11 + 1088);
  *(v27 + 1104) = *(a11 + 1104);
  *(a11 + 1104) = 0;
  *(a11 + 1088) = 0u;
  sub_5DB550(v27 + 1112, a11 + 1112);
  v28 = *a8;
  *(v27 + 1931) = *(a8 + 3);
  *(v27 + 1928) = v28;
  *(v27 + 1936) = 0;
  *(v27 + 1952) = 0;
  *(v27 + 1944) = 0;
  *(v27 + 1936) = *(a8 + 2);
  *(v27 + 1952) = *(a8 + 3);
  *(a8 + 1) = 0;
  *(a8 + 2) = 0;
  *(a8 + 3) = 0;
  v29 = *(a8 + 3);
  *(v27 + 1960) = *(a8 + 2);
  *(v27 + 1976) = v29;
  *(v27 + 1992) = a8[16];
  *(v27 + 2016) = 0;
  *(v27 + 2008) = 0;
  *(v27 + 2000) = 0;
  *(v27 + 2000) = *(a8 + 18);
  *(v27 + 2016) = *(a8 + 11);
  *(a8 + 10) = 0;
  *(a8 + 11) = 0;
  *(a8 + 9) = 0;
  *(v27 + 2024) = a8[24];
  *(v27 + 2032) = 0;
  *(v27 + 2048) = 0;
  *(v27 + 2040) = 0;
  *(v27 + 2032) = *(a8 + 26);
  *(v27 + 2048) = *(a8 + 15);
  *(a8 + 13) = 0;
  *(a8 + 14) = 0;
  *(a8 + 15) = 0;
  v30 = *(a8 + 8);
  *(v27 + 2072) = *(a8 + 18);
  *(v27 + 2056) = v30;
  *(a8 + 17) = 0;
  *(a8 + 18) = 0;
  *(a8 + 16) = 0;
  *(v27 + 2080) = *(a8 + 152);
  v31 = *(a8 + 20);
  *(v27 + 2096) = *(a8 + 168);
  *(v27 + 2088) = v31;
  *(v27 + 2104) = 0;
  *(v27 + 2120) = 0;
  *(v27 + 2112) = 0;
  *(v27 + 2104) = *(a8 + 11);
  *(v27 + 2120) = *(a8 + 24);
  *(a8 + 22) = 0;
  *(a8 + 23) = 0;
  *(a8 + 24) = 0;
  *(v27 + 2128) = a4;
  v32 = *a3;
  v33 = *(a3 + 8);
  if (*a3 != v33)
  {
    while (v32[44] != 1)
    {
      v32 += 110;
      if (v32 == v33)
      {
        goto LABEL_6;
      }
    }
  }

  if (v32 == v33)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v32 = &unk_27337E8;
  }

  sub_4E9DA4(v27 + 2136, v32);
  v34 = *a3;
  v35 = *(a3 + 8);
  if (*a3 != v35)
  {
    while (v34[44] != 2)
    {
      v34 += 110;
      if (v34 == v35)
      {
        goto LABEL_13;
      }
    }
  }

  if (v34 == v35)
  {
LABEL_13:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v34 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 2608, v34);
  *(a1 + 3048) = *a7;
  *(a1 + 3056) = a3;
  *(a1 + 3064) = a9;
  *(a1 + 3072) = a10;
  *(a1 + 3076) = a12;
  *(a1 + 3077) = a13;
  *(a1 + 3080) = a14;
  v36 = *a15;
  *(a1 + 3096) = *(a15 + 2);
  *(a1 + 3088) = v36;
  *(a1 + 3104) = 0;
  *(a1 + 3120) = 0;
  *(a1 + 3112) = 0;
  *(a1 + 3104) = *a16;
  *(a1 + 3120) = *(a16 + 16);
  *a16 = 0;
  *(a16 + 8) = 0;
  *(a16 + 16) = 0;
  *(a1 + 3128) = *a17;
  *(a1 + 3136) = *a5;
  *(a1 + 3152) = a18;
  v37 = *a19;
  *(a1 + 3168) = a19[1];
  *a19 = 0;
  *(a1 + 3160) = v37;
  a19[1] = 0;
  v38 = a19[3];
  v39 = *(a19 + 8);
  v40 = a19[2];
  *(a1 + 3176) = v40;
  *(a1 + 3184) = v38;
  *(a1 + 3192) = v39;
  if (v38)
  {
    v41 = *(v40 + 8);
    v42 = *(a1 + 3168);
    if ((v42 & (v42 - 1)) != 0)
    {
      if (v41 >= v42)
      {
        v41 %= v42;
      }
    }

    else
    {
      v41 &= v42 - 1;
    }

    *(v37 + 8 * v41) = a1 + 3176;
    a19[2] = 0;
    a19[3] = 0;
  }

  *(a1 + 3216) = 0;
  *(a1 + 3200) = 0u;
  *(a1 + 3200) = *a20;
  *(a1 + 3216) = *(a20 + 16);
  *a20 = 0;
  *(a20 + 8) = 0;
  *(a20 + 16) = 0;
  *(a1 + 3224) = a21;
  return a1;
}

void sub_D820C0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_44FDEC(v2 + 2136);
  sub_D71D0C(v3);
  sub_D0AA6C(v2);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_D82124(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_D82224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *a2 = *"ResponseBuilderModule";
  *(a2 + 16) = 0u;
  *(a2 + 23) = 21;
  *(a2 + 13) = *"erModule";
  v16 = 1;
  v4 = sub_D0ACE4((a2 + 24), "Runtime", &v16, a1);
  v5 = v4;
  v6 = *(a2 + 40);
  *(a2 + 32) = v4;
  v15 = 1;
  if (v4 >= v6)
  {
    v7 = sub_389CC8((a2 + 24), "SimpleRoutesResponse.Runtime", &v15, (a1 + 8));
    *(a2 + 32) = v7;
    v14 = 1;
    if (v7 >= *(a2 + 40))
    {
LABEL_3:
      v8 = sub_D0C504((a2 + 24), "WaypointRoutesResponse.Runtime", &v14, (a1 + 16));
      *(a2 + 32) = v8;
      v13 = 2;
      if (v8 >= *(a2 + 40))
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_D0B4A0(v8, "SessionState.Size", &v13, (a1 + 24));
      v10 = v8 + 48;
      *(a2 + 32) = v10;
      if (*(a1 + 32) != 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_389E7C(v4, "SimpleRoutesResponse.Runtime", &v15, (a1 + 8));
    v7 = v5 + 48;
    *(a2 + 32) = v7;
    v14 = 1;
    if (v7 >= *(a2 + 40))
    {
      goto LABEL_3;
    }
  }

  sub_D0C6B8(v7, "WaypointRoutesResponse.Runtime", &v14, (a1 + 16));
  v8 = v7 + 48;
  *(a2 + 32) = v8;
  v13 = 2;
  if (v8 < *(a2 + 40))
  {
    goto LABEL_8;
  }

LABEL_4:
  result = sub_D0B2EC((a2 + 24), "SessionState.Size", &v13, (a1 + 24));
  v10 = result;
  *(a2 + 32) = result;
  if (*(a1 + 32) != 1)
  {
    return result;
  }

LABEL_9:
  v12 = 4;
  v11 = 1;
  if (v10 >= *(a2 + 40))
  {
    result = sub_D824E8((a2 + 24), "Response.ContainsIncidentsOffRoute", &v12, &v11);
    *(a2 + 32) = result;
  }

  else
  {
    sub_D8269C(v10, "Response.ContainsIncidentsOffRoute", &v12, &v11);
    result = v10 + 48;
    *(a2 + 32) = v10 + 48;
  }

  return result;
}

void sub_D82474(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D824E8(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D8269C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D82688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D8269C(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D827EC(uint64_t a1)
{
  v2 = *(a1 + 3200);
  if (v2)
  {
    v3 = *(a1 + 3208);
    v4 = *(a1 + 3200);
    if (v3 == v2)
    {
LABEL_13:
      *(a1 + 3208) = v2;
      operator delete(v4);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        v5 = *(v3 - 48);
        if (v5)
        {
          do
          {
LABEL_7:
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }
      }

      else
      {
        v5 = *(v3 - 48);
        if (v5)
        {
          goto LABEL_7;
        }
      }

      v7 = *(v3 - 64);
      *(v3 - 64) = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v3 -= 72;
      if (v3 == v2)
      {
        v4 = *(a1 + 3200);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v8 = *(a1 + 3176);
  if (v8)
  {
    do
    {
      v9 = *v8;
      v10 = *(v8 + 12);
      if (v10 != -1)
      {
        (off_2673D08[v10])(&v25, v8 + 5);
      }

      *(v8 + 12) = -1;
      if (*(v8 + 39) < 0)
      {
        operator delete(v8[2]);
      }

      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v11 = *(a1 + 3160);
  *(a1 + 3160) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 3104);
  if (v12)
  {
    v13 = *(a1 + 3112);
    v14 = *(a1 + 3104);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(a1 + 3104);
    }

    *(a1 + 3112) = v12;
    operator delete(v14);
  }

  sub_44FDEC(a1 + 2608);
  sub_44FDEC(a1 + 2168);
  v16 = *(a1 + 2136);
  if (v16)
  {
    *(a1 + 2144) = v16;
    operator delete(v16);
  }

  if (*(a1 + 2111) < 0)
  {
    operator delete(*(a1 + 2088));
  }

  v17 = *(a1 + 2064);
  if (v17)
  {
    *(a1 + 2072) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 2032);
  if (v18)
  {
    *(a1 + 2040) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 1968);
  if (v19)
  {
    *(a1 + 1976) = v19;
    operator delete(v19);
  }

  sub_5C0F34(a1 + 1144);
  v20 = *(a1 + 1120);
  if (v20)
  {
    v21 = *(a1 + 1128);
    v22 = *(a1 + 1120);
    if (v21 != v20)
    {
      do
      {
        v21 = sub_3A9518(v21 - 1120);
      }

      while (v21 != v20);
      v22 = *(a1 + 1120);
    }

    *(a1 + 1128) = v20;
    operator delete(v22);
  }

  sub_559E70((a1 + 32));
  v23 = *(a1 + 8);
  if (v23)
  {
    *(a1 + 16) = v23;
    operator delete(v23);
  }

  return a1;
}

void sub_D82A18()
{
  byte_27B6637 = 3;
  LODWORD(qword_27B6620) = 5136193;
  byte_27B664F = 3;
  LODWORD(qword_27B6638) = 5136194;
  byte_27B6667 = 3;
  LODWORD(qword_27B6650) = 5136195;
  byte_27B667F = 15;
  strcpy(&qword_27B6668, "vehicle_mass_kg");
  byte_27B6697 = 21;
  strcpy(&xmmword_27B6680, "vehicle_cargo_mass_kg");
  byte_27B66AF = 19;
  strcpy(&qword_27B6698, "vehicle_aux_power_w");
  byte_27B66C7 = 15;
  strcpy(&qword_27B66B0, "dcdc_efficiency");
  strcpy(&qword_27B66C8, "drive_train_efficiency");
  HIBYTE(word_27B66DE) = 22;
  operator new();
}

void sub_D82EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_objecta, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (qword_27B65B0)
  {
    qword_27B65B8 = qword_27B65B0;
    operator delete(qword_27B65B0);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_D82F94()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = *sub_3B8500(v1);
  __p[1] = 0;
  __p[0] = 0;
  v64[0] = 0;
  v15 = 1851878480;
  v16 = 4;
  sub_D89468(&v17, __p);
  v5 = __p[0];
  if (__p[0])
  {
    v6 = __p[1];
    v7 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v8 = *(v6 - 25);
        v6 -= 6;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p[0];
    }

    __p[1] = v5;
    operator delete(v7);
  }

  HIBYTE(v64[0]) = 12;
  strcpy(__p, "Plan.Started");
  sub_7BDA0(7, __p, v4);
  if (SHIBYTE(v64[0]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_7E9A4(v14);
  if (sub_E8168C(v3))
  {
    if ((sub_3AF4C8(v2) & 1) == 0)
    {
      operator new();
    }

    LOBYTE(v13) = 4;
    LODWORD(__p[0]) = 1;
    v9 = *v18;
    if (*v18 >= v19)
    {
      v10 = sub_D895C0(&v17, "RequestWithTrafficAttached", &v13, __p);
    }

    else
    {
      sub_D89774(*v18, "RequestWithTrafficAttached", &v13, __p);
      v10 = v9 + 48;
    }

    *v18 = v10;
  }

  sub_E867B8(v3, &v13);
  v11 = sub_394BD0();
  sub_4FC024(3, v11, &v13);
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v20[12] = -1;
  v21 = 0x7FFFFFFF;
  v22 = -1;
  v23 = -1;
  v24 = 0x7FFFFFFFFFFFFFFFuLL;
  LODWORD(v25[0]) = -1935635296;
  v25[1] = 0;
  *(&v25[1] + 7) = 0;
  v25[3] = 0;
  v26 = 0uLL;
  v27 = 0;
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  v29 = 100;
  v31[0] = 0;
  v30 = 0;
  *&v31[1] = vnegq_f64(v12);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  memset(v38, 0, sizeof(v38));
  v37 = 1;
  v39 = -1;
  v40 = 0x7FFFFFFF;
  v41 = -1;
  v42 = -1;
  v43 = 0x7FFFFFFFFFFFFFFFLL;
  v44 = 0;
  v45 = -1935635296;
  *(v46 + 7) = 0;
  v49 = 0;
  v46[0] = 0;
  v47 = 0uLL;
  v48 = 0;
  v50 = 0x7FFFFFFFFFFFFFFFLL;
  v51 = 100;
  v52 = 0;
  v53 = 0;
  v59 = 0;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v54 = *&v31[1];
  v55 = 0u;
  v60 = 1;
  v61 = 0;
  v62 = 0;
  sub_3B8500(v2);
  __p[0] = v3;
  LODWORD(__p[1]) = 3;
  v64[0] = v2;
  LOBYTE(v64[1]) = sub_E88F70(__p);
  v65[0] = 0;
  sub_D11BD4(__p, v20);
}

void sub_D8690C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(STACK[0xA38]);
  }

  sub_1959728(&STACK[0xB58]);
  sub_D1D638(&STACK[0xCF0]);
  if (SLOBYTE(STACK[0xA7F]) < 0)
  {
    operator delete(STACK[0xA68]);
  }

  sub_CF4478(&STACK[0xA80]);
  sub_D130AC(&STACK[0x7E0]);
  sub_D898C4(&STACK[0x840]);
  sub_5287C0(&STACK[0x3F8]);
  sub_9DA0(&STACK[0x6C0]);
  _Unwind_Resume(a1);
}

uint64_t sub_D870F4(uint64_t a1, void (****a2)(std::error_category *__hidden this))
{
  sub_14D4048(a1, 0, 0);
  if (a2[1] != &off_2669FE0)
  {
    v4 = *a2;
    goto LABEL_29;
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v23);
    v5 = sub_4A5C(&v23, "[cycling eta sar] subError: ", 28);
    std::error_condition::message(&__p, a2);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v5, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v8 = v33;
      if ((v33 & 0x10) == 0)
      {
LABEL_12:
        if ((v8 & 8) == 0)
        {
          v9 = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_23:
          __p.__r_.__value_.__s.__data_[v9] = 0;
          sub_7E854(&__p, 3u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v31 < 0)
          {
            operator delete(v30);
          }

          std::locale::~locale(&v25);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_28;
        }

        v11 = v26;
        v9 = v27 - v26;
        if ((v27 - v26) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_56:
          sub_3244();
        }

LABEL_18:
        if (v9 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = v9;
        if (v9)
        {
          memmove(&__p, v11, v9);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v8 = v33;
      if ((v33 & 0x10) == 0)
      {
        goto LABEL_12;
      }
    }

    v10 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v10 = v29;
    }

    v11 = v28;
    v9 = v10 - v28;
    if (v10 - v28 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_56;
    }

    goto LABEL_18;
  }

LABEL_28:
  v4 = sub_EC7E5C(*a2);
LABEL_29:
  *(a1 + 40) |= 0x20u;
  *(a1 + 160) = v4;
  result = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v23);
  v13 = sub_4A5C(&v23, "[cycling eta sar] ETARequest: ", 30);
  v14 = sub_74700();
  v15 = sub_73F1C(v14);
  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = *v15;
  }

  if (v16 >= 0)
  {
    v18 = *(v15 + 23);
  }

  else
  {
    v18 = *(v15 + 8);
  }

  sub_4A5C(v13, v17, v18);
  if ((v33 & 0x10) != 0)
  {
    v20 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v20 = v29;
    }

    v21 = v28;
    v19 = v20 - v28;
    if (v20 - v28 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_54:
      sub_3244();
    }

LABEL_42:
    if (v19 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v19;
    if (v19)
    {
      memmove(&__p, v21, v19);
    }

    goto LABEL_47;
  }

  if ((v33 & 8) != 0)
  {
    v21 = v26;
    v19 = v27 - v26;
    if ((v27 - v26) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_54;
    }

    goto LABEL_42;
  }

  v19 = 0;
  *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_47:
  __p.__r_.__value_.__s.__data_[v19] = 0;
  sub_7E854(&__p, 3u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  std::locale::~locale(&v25);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_D87630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_14D4598(v15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_14D4598(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_D876F8(uint64_t a1, uint64_t a2)
{
  sub_14D4048(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_14D5848(a1, a2);
    }

    else
    {
      sub_14D5750(a1, a2);
    }
  }

  sub_14D4048(a1 + 168, 0, 0);
  return a1;
}

void sub_D877BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_3B8500(a6);
  v13 = a5;
  v10 = *(a5 + 408);
  if (!v10)
  {
    v10 = &off_2774478;
  }

  v11 = sub_100E6AC(*(v10 + 6));
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v12 = a3[1];
  if (v12 != *a3)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v12 - *a3) >> 4) < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }

  v16 = sub_CF1898(&v15, a2);
  sub_D8A0A0(&v14, v13, &v15, a6, v11);
}

void sub_D89010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a20);
  sub_D892D4(v60 - 160);
  sub_D71628(&a53);
  sub_5287C0(&a60);
  sub_D3AE40(&STACK[0x438]);
  sub_D02B88(&STACK[0x4A0]);
  sub_D8AB20(&STACK[0x4E0]);
  sub_D79CB0(&STACK[0x520]);
  sub_49AE64((v60 - 184));
  _Unwind_Resume(a1);
}

void sub_D8925C(_Unwind_Exception *a1)
{
  sub_D79CB0(&STACK[0x520]);
  sub_49AE64((v1 - 184));
  _Unwind_Resume(a1);
}

void sub_D892A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void **a57)
{
  if (v57)
  {
    v62 = (v58 - 240);
    v63 = -v57;
    do
    {
      v62 = sub_49AEC0(v62) - 30;
      v63 += 240;
    }

    while (v63);
  }

  *(v60 - 176) = v59;
  sub_49DF70(&a57);
  _Unwind_Resume(a1);
}

uint64_t sub_D892D4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v3 -= 376;
          sub_CFF804(v3);
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
      operator delete(v4);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 1) < 0)
          {
            operator delete(*(v6 - 24));
          }

          v6 -= 32;
        }

        while (v6 != v5);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      goto LABEL_15;
    }
  }

  return a1;
}

uint64_t sub_D8938C(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_49AEC0((a1 + 272));
    v2 = *(a1 + 248);
    if (v2)
    {
      v3 = *(a1 + 256);
      v4 = *(a1 + 248);
      if (v3 != v2)
      {
        do
        {
          v3 = sub_49AEC0(v3 - 30);
        }

        while (v3 != v2);
        v4 = *(a1 + 248);
      }

      *(a1 + 256) = v2;
      operator delete(v4);
    }

    sub_49AEC0((a1 + 8));
    return a1;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    return a1;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 24);
  if (v7 != v6)
  {
    do
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 24));
      }

      v7 -= 32;
    }

    while (v7 != v6);
    v8 = *(a1 + 24);
  }

  *(a1 + 32) = v6;
  operator delete(v8);
  return a1;
}

void *sub_D89468(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_D895A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_A504(&a11);
  *(v11 + 8) = v12;
  sub_A480(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_D895C0(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D89774(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D89760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D89774(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void *sub_D898C4(void *a1)
{
  sub_49AEC0(a1 + 33);
  v2 = a1[30];
  if (v2)
  {
    v3 = a1[31];
    v4 = a1[30];
    if (v3 != v2)
    {
      do
      {
        v3 = sub_49AEC0(v3 - 30);
      }

      while (v3 != v2);
      v4 = a1[30];
    }

    a1[31] = v2;
    operator delete(v4);
  }

  return sub_49AEC0(a1);
}

void sub_D89938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v7 = sub_394BD0();
  *(a1 + 32) = sub_EA7118(v7);
  v8 = sub_394BD0();
  if (v8)
  {
    LOBYTE(v8) = sub_3B6984(a4);
  }

  *(a1 + 33) = v8;
  *(a1 + 34) = sub_E84290(a2);
  *(a1 + 35) = sub_E80E0C(a2);
  *(a1 + 36) = sub_394BD0();
  sub_E77C2C(a2, a4);
}

void sub_D89AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_D4EF4C(&a9);
  v12 = *(v10 + 40);
  if (v12)
  {
    *(v10 + 48) = v12;
    operator delete(v12);
    sub_D4EF4C(v9);
    _Unwind_Resume(a1);
  }

  sub_D4EF4C(v9);
  _Unwind_Resume(a1);
}

void *sub_D89B00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      sub_D4E1A0(&v23, v8, **a4, **(a4 + 8), (*(a4 + 16) + 40));
      v9 = a3[1];
      if (v9 >= a3[2])
      {
        v16 = sub_D4EA20(a3, &v23);
        v17 = __p;
        a3[1] = v16;
        if (v17)
        {
          *(&__p + 1) = v17;
          operator delete(v17);
        }
      }

      else
      {
        *v9 = v23;
        *(v9 + 8) = v24;
        v10 = v25;
        v11 = v26;
        v12 = *v27;
        *(v9 + 71) = *&v27[15];
        *(v9 + 56) = v12;
        *(v9 + 40) = v11;
        *(v9 + 24) = v10;
        *(v9 + 88) = 0;
        *(v9 + 96) = 0;
        *(v9 + 80) = 0;
        *(v9 + 80) = *v28;
        *(v9 + 96) = v29;
        v13 = v30;
        *(v9 + 120) = v31;
        *(v9 + 104) = v13;
        v14 = v33;
        *(v9 + 128) = v32;
        *(v9 + 144) = v14;
        *(v9 + 160) = v34;
        *(v9 + 184) = v36;
        *(v9 + 192) = 0;
        *(v9 + 200) = 0;
        *(v9 + 208) = 0;
        *(v9 + 216) = 0;
        *(v9 + 192) = *v37;
        *(v9 + 224) = 0;
        *(v9 + 232) = 0;
        *(v9 + 216) = __p;
        v15 = v40;
        *(v9 + 208) = v38;
        v28[0] = 0;
        v28[1] = 0;
        v29 = 0;
        *(v9 + 168) = v35;
        v34 = 0;
        v35 = 0uLL;
        v37[0] = 0;
        v37[1] = 0;
        *(v9 + 232) = v15;
        v38 = 0;
        __p = 0uLL;
        v40 = 0;
        a3[1] = v9 + 240;
      }

      v18 = v37[0];
      if (v37[0])
      {
        v19 = v37[1];
        v20 = v37[0];
        if (v37[1] != v37[0])
        {
          do
          {
            v21 = *(v19 - 3);
            if (v21)
            {
              operator delete(v21);
            }

            v22 = *(v19 - 13);
            if (v22)
            {
              *(v19 - 12) = v22;
              operator delete(v22);
            }

            v19 -= 176;
          }

          while (v19 != v18);
          v20 = v37[0];
        }

        v37[1] = v18;
        operator delete(v20);
      }

      if (v34)
      {
        operator delete(v34);
      }

      if (v28[0])
      {
        v28[1] = v28[0];
        operator delete(v28[0]);
      }

      v8 += 440;
    }

    while (v8 != a2);
  }

  return a3;
}

uint64_t sub_D89D10(void *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) >= 0x88888888888888)
  {
    v5 = 0x111111111111111;
  }

  else
  {
    v5 = v3;
  }

  v19 = a1;
  if (v5)
  {
    if (v5 <= 0x111111111111111)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 240 * v2;
  __p = 0;
  v16 = v6;
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  *(v6 + 63) = *(a2 + 63);
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v6 + 112) = *(a2 + 112);
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 136) = *(a2 + 136);
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 152) = *(a2 + 152);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(v6 + 160) = v9;
  *(v6 + 176) = v10;
  *(v6 + 192) = *(a2 + 192);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(v6 + 200) = *(a2 + 200);
  *(v6 + 216) = *(a2 + 216);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(v6 + 224) = *(a2 + 224);
  v17 = 240 * v2 + 240;
  v18 = 0;
  sub_49C9C4(a1, &__p);
  v11 = a1[1];
  v13 = v16;
  for (i = v17; v17 != v13; i = v17)
  {
    v17 = i - 240;
    sub_49AEC0((i - 240));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_D89EC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49CB28(va);
  _Unwind_Resume(a1);
}

void sub_D89EDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = sub_394BD0();
  *(a1 + 4) = sub_68F8AC();
  *(a1 + 8) = sub_E8237C(a2);
  sub_E8328C(a2, (a1 + 16));
  *(a1 + 40) = -1;
  *(a1 + 48) = -1;
  sub_E83604(a2, (a1 + 56));
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 108) = xmmword_22AC800;
  *(a1 + 128) = -1;
  *(a1 + 136) = -1;
  *(a1 + 144) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 152) = 0;
  *(a1 + 160) = -1935635296;
  *(a1 + 168) = 0;
  *(a1 + 175) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 224) = 100;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  *(a1 + 248) = vnegq_f64(v10);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 296) = a3;
  sub_43EDEC((a1 + 304));
  sub_E8283C(a2, (a1 + 328));
  sub_E82D4C(a2, (a1 + 352));
  *(a1 + 384) = a4;
  *(a1 + 392) = a5;
  *(a1 + 400) = 0;
  sub_D75D50(a1);
}

void sub_D8A018(_Unwind_Exception *a1)
{
  v4 = *(v1 + 352);
  if (v4)
  {
    *(v1 + 360) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 328);
  if (v5)
  {
    *(v1 + 336) = v5;
    operator delete(v5);
  }

  sub_4E3C94((v2 + 224));
  sub_44D36C((v2 + 32));
  v6 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v6;
    operator delete(v6);
  }

  sub_1A104((v1 + 56));
  sub_1A104((v1 + 16));
  _Unwind_Resume(a1);
}

void sub_D8A0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = sub_68F8AC();
  v9 = sub_3B6890(a4);
  v10 = *v9;
  *(a1 + 92) = *(v9 + 8);
  *(a1 + 84) = v10;
  *(a1 + 96) = sub_E8237C(a2);
  *(a1 + 97) = sub_E7FE50(a2);
  *(a1 + 105) = v11;
  *(a1 + 112) = a4;
  *(a1 + 120) = sub_E81DF0(a2);
  *(a1 + 128) = v12;
  *(a1 + 136) = 0x7FFFFFFFFFFFFFFELL;
  *(a1 + 144) = 0;
  *(a1 + 148) = a5;
  sub_101A2A4();
}

void sub_D8A5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  sub_D78EB0(&a53);
  sub_5ECEBC((v53 + 56));
  sub_39393C(v54);
  v56 = *v53;
  if (*v53)
  {
    *(v53 + 8) = v56;
    operator delete(v56);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_D8A64C(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = sub_3B2E6C(a4);
  sub_2C1B08(v10, v8);
  v16 = 1;
  sub_E84AEC(a3, v10, (a1 + 3));
  if (v16 == 1)
  {
    if (v15 < 0)
    {
      operator delete(__p);
      if ((v13 & 0x80000000) == 0)
      {
LABEL_4:
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_8:
        operator delete(v10[0]);
        goto LABEL_5;
      }
    }

    else if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(v12);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_5:
  a1[17] = a4;
  sub_60BAC4(a1, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  sub_D8A790(*a2, a2[1], a1);
  return a1;
}

void sub_D8A740(_Unwind_Exception *a1)
{
  sub_5285C8((v1 + 3));
  sub_60A84C(v1);
  _Unwind_Resume(a1);
}

void sub_D8A760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_D71D80(&a9);
  sub_60A84C(v9);
  _Unwind_Resume(a1);
}

uint64_t *sub_D8A790(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 3)
    {
      v7 = *i;
      if (*i == i[1])
      {
        v35 = 0u;
        *v36 = 0u;
        v34 = 0u;
        *__p = 0u;
        memset(v33, 0, sizeof(v33));
        *&v36[16] = 0xFFFFFFFFLL;
        v37 = 0uLL;
        v38 = 0;
        v12 = a3[1];
        if (v12 < a3[2])
        {
LABEL_9:
          *(v12 + 16) = 0;
          *(v12 + 24) = 0;
          *v12 = 0;
          *(v12 + 8) = 0;
          *v12 = *__p;
          *(v12 + 16) = v33[0];
          __p[0] = 0;
          __p[1] = 0;
          v33[0] = 0;
          *(v12 + 32) = 0;
          *(v12 + 40) = 0;
          *(v12 + 24) = *&v33[1];
          *(v12 + 40) = v33[3];
          memset(&v33[1], 0, 24);
          v13 = v34;
          v14 = v35;
          v15 = *v36;
          *(v12 + 94) = *&v36[14];
          *(v12 + 64) = v14;
          *(v12 + 80) = v15;
          *(v12 + 48) = v13;
          v16 = v37;
          *(v12 + 120) = v38;
          *(v12 + 104) = v16;
          v38 = 0;
          v37 = 0uLL;
          a3[1] = v12 + 128;
          v17 = v33[1];
          if (v33[1])
          {
            goto LABEL_14;
          }

          goto LABEL_18;
        }
      }

      else
      {
        *__p = *v7;
        v33[0] = *(v7 + 16);
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *&v33[1] = *(v7 + 24);
        v33[3] = *(v7 + 40);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        v8 = *(v7 + 48);
        v9 = *(v7 + 64);
        v10 = *(v7 + 80);
        *&v36[14] = *(v7 + 94);
        v35 = v9;
        *v36 = v10;
        v34 = v8;
        v11 = *(v7 + 104);
        v38 = *(v7 + 120);
        v37 = v11;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
        *(v7 + 120) = 0;
        v12 = a3[1];
        if (v12 < a3[2])
        {
          goto LABEL_9;
        }
      }

      v18 = sub_60BC14(a3, __p);
      v19 = SHIBYTE(v38);
      a3[1] = v18;
      if (v19 < 0)
      {
        operator delete(v37);
        v17 = v33[1];
        if (v33[1])
        {
LABEL_14:
          v20 = v33[2];
          v21 = v17;
          if (v33[2] != v17)
          {
            do
            {
              v20 = sub_3EEA68(v20 - 1096);
            }

            while (v20 != v17);
            v21 = v33[1];
          }

          v33[2] = v17;
          operator delete(v21);
        }
      }

      else
      {
        v17 = v33[1];
        if (v33[1])
        {
          goto LABEL_14;
        }
      }

LABEL_18:
      v22 = __p[0];
      if (__p[0])
      {
        v23 = __p[1];
        v6 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v24 = *(v23 - 3);
            if (v24)
            {
              v25 = *(v23 - 2);
              v26 = *(v23 - 3);
              if (v25 != v24)
              {
                do
                {
                  v27 = v25 - 32;
                  v28 = *(v25 - 8);
                  if (v28 != -1)
                  {
                    (off_2673DA8[v28])(v39, v25 - 32);
                  }

                  *(v25 - 8) = -1;
                  v25 -= 32;
                }

                while (v27 != v24);
                v26 = *(v23 - 3);
              }

              *(v23 - 2) = v24;
              operator delete(v26);
            }

            v29 = *(v23 - 8);
            if (v29 != -1)
            {
              (off_2673DA8[v29])(v39, v23 - 7);
            }

            v30 = (v23 - 10);
            *(v23 - 8) = -1;
            if (*(v23 - 57) < 0)
            {
              operator delete(*v30);
            }

            v23 -= 10;
          }

          while (v30 != v22);
          v6 = __p[0];
        }

        __p[1] = v22;
        operator delete(v6);
      }
    }
  }

  return a3;
}

void sub_D8AA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_419F70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D8AA8C(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 128;
        sub_60B38C(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_D8AB20(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 == v2)
      {
LABEL_27:
        *(a1 + 16) = v2;
LABEL_30:
        operator delete(v4);
        return a1;
      }

      v5 = *(a1 + 16);
      while (1)
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }

        v9 = *(v3 - 2);
        v6 = v7;
        if (v9 != v7)
        {
          break;
        }

LABEL_6:
        *(v3 - 2) = v7;
        operator delete(v6);
LABEL_7:
        v3 = v5;
        if (v5 == v2)
        {
          v4 = *(a1 + 8);
          goto LABEL_27;
        }
      }

      while (1)
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*(v9 - 3));
          v10 = v9 - 6;
          v11 = *(v9 - 6);
          if (v11)
          {
LABEL_17:
            v12 = *(v9 - 5);
            v13 = v11;
            if (v12 != v11)
            {
              do
              {
                v12 = sub_4547F0(v12 - 552);
              }

              while (v12 != v11);
              v13 = *v10;
            }

            *(v9 - 5) = v11;
            operator delete(v13);
          }
        }

        else
        {
          v10 = v9 - 6;
          v11 = *(v9 - 6);
          if (v11)
          {
            goto LABEL_17;
          }
        }

        v9 = v10;
        if (v10 == v7)
        {
          v6 = *v5;
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
    v14 = *(a1 + 24);
    if (v14)
    {
      v15 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v15 != v14)
      {
        do
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 24));
          }

          v15 -= 32;
        }

        while (v15 != v14);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v14;
      goto LABEL_30;
    }
  }

  return a1;
}

void sub_D8AC7C(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0x51B3BEA3677D46CFLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 376 * a2;
      *&v10 = 0x8000000080000000;
      *(&v10 + 1) = 0x8000000080000000;
      do
      {
        *(v3 + 320) = 0;
        *(v3 + 32) = 0uLL;
        *(v3 + 48) = 0uLL;
        *v3 = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 24) = 0x7FFFFFFFFFFFFFFFLL;
        *(v3 + 32) = 0x8000000080000000;
        *(v3 + 40) = 0x7FFFFFFF;
        *(v3 + 48) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 80) = 0uLL;
        *(v3 + 80) = 0uLL;
        *(v3 + 96) = 0uLL;
        *(v3 + 96) = 0uLL;
        *(v3 + 112) = 0uLL;
        *(v3 + 112) = 0uLL;
        *(v3 + 128) = 0uLL;
        *(v3 + 128) = 0uLL;
        *(v3 + 144) = 0uLL;
        *(v3 + 144) = 0uLL;
        *(v3 + 160) = 0uLL;
        *(v3 + 160) = 0uLL;
        *(v3 + 176) = 0uLL;
        *(v3 + 176) = 0uLL;
        *(v3 + 192) = 0uLL;
        *(v3 + 192) = 0uLL;
        *(v3 + 208) = 0uLL;
        *(v3 + 208) = 0uLL;
        *(v3 + 224) = 0uLL;
        *(v3 + 224) = 0uLL;
        *(v3 + 240) = 0uLL;
        *(v3 + 240) = 0uLL;
        *(v3 + 256) = 0uLL;
        *(v3 + 256) = 0uLL;
        *(v3 + 272) = 0uLL;
        *(v3 + 272) = 0uLL;
        *(v3 + 288) = 0uLL;
        *(v3 + 288) = v10;
        *(v3 + 304) = 0uLL;
        *(v3 + 304) = v10;
        *(v3 + 320) = 5;
        v11 = (v3 + 328);
        *(v3 + 344) = 0uLL;
        *(v3 + 360) = 0uLL;
        v3 += 376;
        *v11 = 0uLL;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0x51B3BEA3677D46CFLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAE4C415C9882B9)
    {
      sub_1794();
    }

    v7 = 0x51B3BEA3677D46CFLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x572620AE4C415CLL)
    {
      v8 = 0xAE4C415C9882B9;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAE4C415C9882B9)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 376 * v5;
    v13 = 376 * v5 + 376 * a2;
    *&v14 = 0x8000000080000000;
    *(&v14 + 1) = 0x8000000080000000;
    v15 = 376 * v5;
    do
    {
      *(v15 + 320) = 0;
      *(v15 + 32) = 0uLL;
      *(v15 + 48) = 0uLL;
      *v15 = 0uLL;
      *(v15 + 16) = 0uLL;
      *(v15 + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(v15 + 32) = 0x8000000080000000;
      *(v15 + 40) = 0x7FFFFFFF;
      *(v15 + 48) = 0uLL;
      *(v15 + 64) = 0uLL;
      *(v15 + 64) = 0uLL;
      *(v15 + 80) = 0uLL;
      *(v15 + 80) = 0uLL;
      *(v15 + 96) = 0uLL;
      *(v15 + 96) = 0uLL;
      *(v15 + 112) = 0uLL;
      *(v15 + 112) = 0uLL;
      *(v15 + 128) = 0uLL;
      *(v15 + 128) = 0uLL;
      *(v15 + 144) = 0uLL;
      *(v15 + 144) = 0uLL;
      *(v15 + 160) = 0uLL;
      *(v15 + 160) = 0uLL;
      *(v15 + 176) = 0uLL;
      *(v15 + 176) = 0uLL;
      *(v15 + 192) = 0uLL;
      *(v15 + 192) = 0uLL;
      *(v15 + 208) = 0uLL;
      *(v15 + 208) = 0uLL;
      *(v15 + 224) = 0uLL;
      *(v15 + 224) = 0uLL;
      *(v15 + 240) = 0uLL;
      *(v15 + 240) = 0uLL;
      *(v15 + 256) = 0uLL;
      *(v15 + 256) = 0uLL;
      *(v15 + 272) = 0uLL;
      *(v15 + 272) = 0uLL;
      *(v15 + 288) = 0uLL;
      *(v15 + 288) = v14;
      *(v15 + 304) = 0uLL;
      *(v15 + 304) = v14;
      *(v15 + 320) = 5;
      v16 = (v15 + 328);
      *(v15 + 344) = 0uLL;
      *(v15 + 360) = 0uLL;
      v15 += 376;
      *v16 = 0uLL;
    }

    while (v15 != v13);
    v17 = *a1;
    v18 = a1[1];
    v19 = v12 + *a1 - v18;
    if (v18 != *a1)
    {
      v20 = *a1;
      v21 = v12 + *a1 - v18;
      do
      {
        sub_D8AF48(v21, v20);
        v20 += 376;
        v21 = v22 + 376;
      }

      while (v20 != v18);
      do
      {
        sub_CFF804(v17);
        v17 += 376;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = v13;
    a1[2] = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

__n128 sub_D8AF48(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v2 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  v3 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v3;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  result = *(a2 + 352);
  *(a1 + 352) = result;
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  return result;
}

uint64_t sub_D8B114(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_5EFB28(a1, *a2, *(a2 + 8), 0x86BCA1AF286BCA1BLL * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = *(a2 + 24);
  sub_3EDCF4(a1 + 32, (a2 + 32));
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  sub_5CEC4C(a1 + 328, *(a2 + 328), *(a2 + 336), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 336) - *(a2 + 328)) >> 5));
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  sub_5713F4(a1 + 352, *(a2 + 352), *(a2 + 360), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 360) - *(a2 + 352)) >> 5));
  return a1;
}

void sub_D8B1E0(_Unwind_Exception *a1)
{
  sub_5C0ED8((v1 + 328));
  sub_3EE9A4((v1 + 32));
  sub_593FC8(v1);
  _Unwind_Resume(a1);
}

void **sub_D8B220(void **a1)
{
  sub_CFF804((a1 + 6));
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        v3 = sub_CFF804(v3 - 376);
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    v7 = *a1;
    if (v6 != v5)
    {
      do
      {
        v6 = sub_CFF804(v6 - 376);
      }

      while (v6 != v5);
      v7 = *a1;
    }

    a1[1] = v5;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_D8B2BC(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D8B470(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D8B45C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D8B470(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D8B5C8(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D8B77C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D8B768(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D8B77C(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D8B8D4(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D8BA88(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_D8BA74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D8BA88(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D8BBE0(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_14D4598(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

void sub_D8BC7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAE4C415C9882BALL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D8BD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 376;
    v15 = -v12;
    do
    {
      v14 = sub_CFF804(v14) - 376;
      v15 += 376;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_D8BD98(&a9);
  _Unwind_Resume(a1);
}

void ***sub_D8BD98(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_CFF804(v4 - 376);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void **sub_D8BE10(void **result, char *a2, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x51B3BEA3677D46CFLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_CFF804(v10 - 376);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAE4C415C9882B9)
    {
      v12 = 0x51B3BEA3677D46CFLL * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x572620AE4C415CLL)
      {
        v14 = 0xAE4C415C9882B9;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0xAE4C415C9882B9)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x51B3BEA3677D46CFLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v21 = 0;
      do
      {
        v22 = &v8[v21];
        v23 = &a2[v21];
        if (a2 != v8)
        {
          sub_5F9374(&v8[v21], *v23, *(v23 + 1), 0x86BCA1AF286BCA1BLL * ((*(v23 + 1) - *v23) >> 3));
        }

        *(v22 + 3) = *(v23 + 3);
        result = sub_4D0F94((v22 + 32), v23 + 4);
        *(v22 + 80) = *(v23 + 80);
        if (v23 != v22)
        {
          sub_5F9F30(&v8[v21 + 328], *&a2[v21 + 328], *&a2[v21 + 336], 0xCCCCCCCCCCCCCCCDLL * ((*&a2[v21 + 336] - *&a2[v21 + 328]) >> 5));
          result = sub_5D8C78(&v8[v21 + 352], *&a2[v21 + 352], *&a2[v21 + 360], 0xAF8AF8AF8AF8AF8BLL * ((*&a2[v21 + 360] - *&a2[v21 + 352]) >> 5));
        }

        v21 += 376;
      }

      while (&a2[v21] != a3);
      v15 = v6[1];
      v8 += v21;
    }

    while (v15 != v8)
    {
      v15 -= 376;
      result = sub_CFF804(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &a2[v16];
    if (v15 != v8)
    {
      v18 = 0;
      do
      {
        v19 = &v8[v18];
        v20 = &a2[v18];
        if (a2 != v8)
        {
          sub_5F9374(&v8[v18], *v20, *(v20 + 1), 0x86BCA1AF286BCA1BLL * ((*(v20 + 1) - *v20) >> 3));
        }

        *(v19 + 3) = *(v20 + 3);
        result = sub_4D0F94((v19 + 32), v20 + 4);
        *(v19 + 80) = *(v20 + 80);
        if (v20 != v19)
        {
          sub_5F9F30(&v8[v18 + 328], *&a2[v18 + 328], *&a2[v18 + 336], 0xCCCCCCCCCCCCCCCDLL * ((*&a2[v18 + 336] - *&a2[v18 + 328]) >> 5));
          result = sub_5D8C78(&v8[v18 + 352], *&a2[v18 + 352], *&a2[v18 + 360], 0xAF8AF8AF8AF8AF8BLL * ((*&a2[v18 + 360] - *&a2[v18 + 352]) >> 5));
        }

        v18 += 376;
      }

      while (v16 != v18);
      v15 = v6[1];
    }

    v24 = v15;
    if (v17 != a3)
    {
      v25 = 0;
      do
      {
        result = sub_D8B114(v15 + v25, &v17[v25]);
        v25 += 376;
      }

      while (&v17[v25] != a3);
      v24 = v15 + v25;
    }

    v6[1] = v24;
  }

  return result;
}

void sub_D8C1F8()
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
  xmmword_27B6728 = 0u;
  unk_27B6738 = 0u;
  dword_27B6748 = 1065353216;
  sub_3A9A34(&xmmword_27B6728, v0);
  sub_3A9A34(&xmmword_27B6728, v3);
  sub_3A9A34(&xmmword_27B6728, __p);
  sub_3A9A34(&xmmword_27B6728, v9);
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
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    byte_27B6767 = 3;
    LODWORD(qword_27B6750) = 5136193;
    byte_27B677F = 3;
    LODWORD(qword_27B6768) = 5136194;
    byte_27B6797 = 3;
    LODWORD(qword_27B6780) = 5136195;
    byte_27B67AF = 15;
    strcpy(&qword_27B6798, "vehicle_mass_kg");
    byte_27B67C7 = 21;
    strcpy(&xmmword_27B67B0, "vehicle_cargo_mass_kg");
    byte_27B67DF = 19;
    strcpy(&qword_27B67C8, "vehicle_aux_power_w");
    byte_27B67F7 = 15;
    strcpy(&qword_27B67E0, "dcdc_efficiency");
    strcpy(&qword_27B67F8, "drive_train_efficiency");
    HIBYTE(word_27B680E) = 22;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_D8C584(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (SHIBYTE(word_27B680E) < 0)
  {
    sub_21E474C();
  }

  sub_21E476C(a1, a2, &exception_object);
  _Unwind_Resume(exception_object);
}

void sub_D8C5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27B6728);
  if (a36 < 0)
  {
    operator delete(a31);
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
    if (a15 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if (a15 < 0)
  {
LABEL_5:
    operator delete(__p);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

void sub_D9D8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  __cxa_guard_abort(&qword_2733B88);
  if (*(v32 + 1767) < 0)
  {
    operator delete(*(v32 + 1744));
  }

  sub_1959728(&STACK[0x3F40]);
  sub_DB048C(&STACK[0x48D0]);
  sub_D35A8C(&a32);
  if (*(v32 + 1743) < 0)
  {
    operator delete(*(v32 + 1720));
  }

  sub_60A84C(&STACK[0x1BC8]);
  sub_1758FB8(&STACK[0x2B50]);
  sub_1758FB8(&STACK[0x2910]);
  sub_D71160(&STACK[0x2D90]);
  sub_5C010(&STACK[0x2DA8]);
  sub_CD5434(&STACK[0x2DD0]);
  sub_D0AA6C(&STACK[0x2F18]);
  sub_5DAA94(&STACK[0x36A0]);
  sub_D9F6A0(&STACK[0x36C0]);
  v34 = STACK[0x36E0];
  if (STACK[0x36E0])
  {
    STACK[0x36E8] = v34;
    operator delete(v34);
  }

  sub_CEFBD8(&STACK[0x3700]);
  v35 = STACK[0x3720];
  if (STACK[0x3720])
  {
    STACK[0x3728] = v35;
    operator delete(v35);
  }

  sub_419F70(&STACK[0x3740]);
  sub_419F70(&STACK[0x37C0]);
  sub_D02C48(&STACK[0x3840]);
  sub_D02C48(&STACK[0x3860]);
  sub_D71208(&STACK[0x3880]);
  sub_D71208(&STACK[0x38A0]);
  sub_CE67E8(&STACK[0x38B8]);
  sub_454784(&STACK[0x38D0]);
  sub_CE67E8(&STACK[0x3908]);
  sub_D02C48(&STACK[0x3920]);
  sub_D71208(&STACK[0x3940]);
  sub_616CD4(&STACK[0x3960]);
  sub_CE67E8(&STACK[0x3990]);
  sub_D9F480(&STACK[0x39A8]);
  sub_49AE64(&STACK[0x3BB0]);
  sub_49AE64(&STACK[0x3BD0]);
  sub_1A104(&STACK[0x3BE8]);
  sub_44FD90(&STACK[0x3C00]);
  sub_5287C0(&STACK[0x3C18]);
  sub_CF3C94(&STACK[0x3EC8]);
  _Unwind_Resume(a1);
}

uint64_t sub_D9F1F0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v4;
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = a2[4];
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  v7 = a2[5];
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 40) = v7;
  sub_6BA20(a1 + 56, a2 + 7);
  *(a1 + 96) = *(a2 + 24);
  sub_6BA20(a1 + 104, a2 + 13);
  v8 = (a1 + 168);
  v9 = *(a1 + 168);
  *(a1 + 144) = *(a2 + 9);
  *(a1 + 160) = *(a2 + 160);
  if (v9)
  {
    v10 = *(a1 + 176);
    v11 = v9;
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 3);
        if (v12)
        {
          do
          {
            v13 = *v12;
            operator delete(v12);
            v12 = v13;
          }

          while (v13);
        }

        v14 = *(v10 - 5);
        *(v10 - 5) = 0;
        if (v14)
        {
          operator delete(v14);
        }

        v10 -= 56;
      }

      while (v10 != v9);
      v11 = *v8;
    }

    *(a1 + 176) = v9;
    operator delete(v11);
    *v8 = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  *(a1 + 168) = *(a2 + 21);
  *(a1 + 184) = a2[23];
  a2[21] = 0;
  a2[22] = 0;
  a2[23] = 0;
  *(a1 + 192) = a2[24];
  sub_6BE5B4(a1 + 200, a2 + 25);
  sub_6BE5B4(a1 + 240, a2 + 30);
  v15 = a2[35];
  a2[35] = 0;
  v16 = *(a1 + 280);
  *(a1 + 280) = v15;
  if (v16)
  {
    sub_44FF58(a1 + 280, v16);
  }

  v17 = a2[36];
  a2[36] = 0;
  v18 = *(a1 + 288);
  *(a1 + 288) = v17;
  if (v18)
  {
    sub_AD01C(v18);
    operator delete();
  }

  v19 = a2[37];
  a2[37] = 0;
  v20 = *(a1 + 296);
  *(a1 + 296) = v19;
  if (v20)
  {
    sub_AD01C(v20);
    operator delete();
  }

  v21 = a2[38];
  a2[38] = 0;
  v22 = *(a1 + 304);
  *(a1 + 304) = v21;
  if (v22)
  {
    sub_AA22C(v22);
    operator delete();
  }

  v23 = a2[39];
  a2[39] = 0;
  v24 = *(a1 + 312);
  *(a1 + 312) = v23;
  if (v24)
  {
    sub_9DBC4(v24);
    operator delete();
  }

  v25 = *(a2 + 20);
  v26 = *(a2 + 21);
  v27 = *(a2 + 23);
  *(a1 + 352) = *(a2 + 22);
  *(a1 + 368) = v27;
  *(a1 + 320) = v25;
  *(a1 + 336) = v26;
  v28 = *(a2 + 24);
  v29 = *(a2 + 25);
  v30 = *(a2 + 26);
  *(a1 + 425) = *(a2 + 425);
  *(a1 + 400) = v29;
  *(a1 + 416) = v30;
  *(a1 + 384) = v28;
  if (*(a1 + 471) < 0)
  {
    operator delete(*(a1 + 448));
  }

  v31 = *(a2 + 28);
  *(a1 + 464) = a2[58];
  *(a1 + 448) = v31;
  *(a2 + 471) = 0;
  *(a2 + 448) = 0;
  sub_6BA20(a1 + 472, a2 + 59);
  *(a1 + 512) = *(a2 + 256);
  return a1;
}

void *sub_D9F480(void *a1)
{
  sub_44D3AC((a1 + 56));
  v2 = a1[39];
  a1[39] = 0;
  if (v2)
  {
    sub_9DBC4(v2);
    operator delete();
  }

  v3 = a1[38];
  a1[38] = 0;
  if (v3)
  {
    sub_AA22C(v3);
    operator delete();
  }

  v4 = a1[37];
  a1[37] = 0;
  if (v4)
  {
    sub_AD01C(v4);
    operator delete();
  }

  v5 = a1[36];
  a1[36] = 0;
  if (v5)
  {
    sub_AD01C(v5);
    operator delete();
  }

  v6 = a1[35];
  a1[35] = 0;
  if (v6)
  {
    sub_44FF58((a1 + 35), v6);
  }

  sub_44FBAC(a1 + 20);

  return sub_44FA80(a1);
}

uint64_t sub_D9F560(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_D9F6DC((a1 + 8));
      v3 = *v2;
LABEL_12:
      operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = *(a1 + 32);
      v3 = *(a1 + 24);
      if (v5 != v4)
      {
        do
        {
          if (*(v5 - 1) < 0)
          {
            operator delete(*(v5 - 24));
          }

          v5 -= 32;
        }

        while (v5 != v4);
        v3 = *(a1 + 24);
      }

      *(a1 + 32) = v4;
      goto LABEL_12;
    }
  }

  return a1;
}

void **sub_D9F5FC(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 7);
        if (v5)
        {
          *(v3 - 6) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 10);
        if (v6)
        {
          *(v3 - 9) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 16);
        if (v7)
        {
          *(v3 - 15) = v7;
          operator delete(v7);
        }

        v8 = *(v3 - 19);
        if (v8)
        {
          *(v3 - 18) = v8;
          operator delete(v8);
        }

        v3 -= 176;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void ***sub_D9F6A0(void ***a1)
{
  if (*a1)
  {
    sub_D9F6DC(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_D9F6DC(void ***a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    do
    {
      v4 = *(v2 - 3);
      if (v4)
      {
        v5 = *(v2 - 2);
        v6 = *(v2 - 3);
        if (v5 != v4)
        {
          do
          {
            v8 = *(v5 - 4);
            if (v8)
            {
              do
              {
                v9 = *v8;
                operator delete(v8);
                v8 = v9;
              }

              while (v9);
            }

            v10 = *(v5 - 6);
            *(v5 - 6) = 0;
            if (v10)
            {
              operator delete(v10);
            }

            v11 = *(v5 - 9);
            if (v11)
            {
              do
              {
                v12 = *v11;
                operator delete(v11);
                v11 = v12;
              }

              while (v12);
            }

            v13 = *(v5 - 11);
            *(v5 - 11) = 0;
            if (v13)
            {
              operator delete(v13);
            }

            v14 = v5 - 14;
            v15 = *(v5 - 14);
            if (v15)
            {
              v16 = *(v5 - 13);
              v7 = *(v5 - 14);
              if (v16 != v15)
              {
                v17 = *(v5 - 13);
                do
                {
                  v19 = *(v17 - 5);
                  v17 -= 40;
                  v18 = v19;
                  if (v19)
                  {
                    *(v16 - 4) = v18;
                    operator delete(v18);
                  }

                  v16 = v17;
                }

                while (v17 != v15);
                v7 = *v14;
              }

              *(v5 - 13) = v15;
              operator delete(v7);
            }

            v5 -= 14;
          }

          while (v14 != v4);
          v6 = *(v2 - 3);
        }

        *(v2 - 2) = v4;
        operator delete(v6);
      }

      if (*(v2 - 25) < 0)
      {
        operator delete(*(v2 - 6));
        v20 = *(v2 - 16);
        if (v20)
        {
LABEL_33:
          v23 = *(v2 - 15);
          v24 = v20;
          if (v23 != v20)
          {
            do
            {
              v23 = sub_3EEA68(v23 - 1096);
            }

            while (v23 != v20);
            v24 = *(v2 - 16);
          }

          *(v2 - 15) = v20;
          operator delete(v24);
          v21 = v2 - 19;
          v22 = *(v2 - 19);
          if (!v22)
          {
            goto LABEL_5;
          }

LABEL_37:
          v25 = *(v2 - 18);
          v3 = v22;
          if (v25 != v22)
          {
            do
            {
              v26 = *(v25 - 3);
              if (v26)
              {
                v27 = *(v25 - 2);
                v28 = *(v25 - 3);
                if (v27 != v26)
                {
                  do
                  {
                    v29 = v27 - 32;
                    v30 = *(v27 - 2);
                    if (v30 != -1)
                    {
                      (off_2673E20[v30])(&v34, v27 - 32);
                    }

                    *(v27 - 2) = -1;
                    v27 -= 32;
                  }

                  while (v29 != v26);
                  v28 = *(v25 - 3);
                }

                *(v25 - 2) = v26;
                operator delete(v28);
              }

              v31 = *(v25 - 8);
              if (v31 != -1)
              {
                (off_2673E20[v31])(&v35, v25 - 7);
              }

              v32 = v25 - 10;
              *(v25 - 8) = -1;
              if (*(v25 - 57) < 0)
              {
                operator delete(*v32);
              }

              v25 -= 10;
            }

            while (v32 != v22);
            v3 = *v21;
          }

          *(v2 - 18) = v22;
          operator delete(v3);
          goto LABEL_5;
        }
      }

      else
      {
        v20 = *(v2 - 16);
        if (v20)
        {
          goto LABEL_33;
        }
      }

      v21 = v2 - 19;
      v22 = *(v2 - 19);
      if (v22)
      {
        goto LABEL_37;
      }

LABEL_5:
      v2 = v21;
    }

    while (v21 != v1);
  }

  a1[1] = v1;
}

uint64_t sub_D9F95C(uint64_t a1, __int128 *a2)
{
  v10[0] = 0;
  v3 = a2[1];
  v11 = *a2;
  *__p = v3;
  v13 = *(a2 + 4);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v14 = *(a2 + 10);
  sub_D9FA58(a1, v10);
  if (v10[0] == 1)
  {
    if (v15 < 0)
    {
      operator delete(__p[1]);
    }

    v4 = v11;
    if (v11)
    {
      v5 = *(&v11 + 1);
      v6 = v11;
      if (*(&v11 + 1) != v11)
      {
        do
        {
          v5 -= 552;
          sub_4547F0(v5);
        }

        while (v5 != v4);
        v6 = v11;
      }

      *(&v11 + 1) = v4;
LABEL_17:
      operator delete(v6);
    }
  }

  else
  {
    v7 = __p[0];
    if (__p[0])
    {
      v8 = __p[1];
      v6 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          if (*(v8 - 1) < 0)
          {
            operator delete(*(v8 - 3));
          }

          v8 -= 4;
        }

        while (v8 != v7);
        v6 = __p[0];
      }

      __p[1] = v7;
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t sub_D9FA58(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = (a1 + 8);
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(a1 + 16);
        v7 = *(a1 + 8);
        if (v6 != v5)
        {
          do
          {
            v6 = sub_4547F0(v6 - 552);
          }

          while (v6 != v5);
          v7 = *v4;
        }

        *(a1 + 16) = v5;
        operator delete(v7);
        *v4 = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      if (*(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      v8 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v8;
      *(a2 + 55) = 0;
      *(a2 + 32) = 0;
      goto LABEL_29;
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = *(a1 + 16);
      v14 = *(a1 + 8);
      if (v13 != v12)
      {
        do
        {
          v13 = sub_4547F0(v13 - 552);
        }

        while (v13 != v12);
        v14 = *(a1 + 8);
      }

      *(a1 + 16) = v12;
      operator delete(v14);
    }

LABEL_25:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_29;
  }

  if (!*a2)
  {
    goto LABEL_25;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 24);
    if (v10 != v9)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 24));
        }

        v10 -= 32;
      }

      while (v10 != v9);
      v11 = *(a1 + 24);
    }

    *(a1 + 32) = v9;
    operator delete(v11);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v15 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v15;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
LABEL_29:
  *a1 = *a2;
  return a1;
}