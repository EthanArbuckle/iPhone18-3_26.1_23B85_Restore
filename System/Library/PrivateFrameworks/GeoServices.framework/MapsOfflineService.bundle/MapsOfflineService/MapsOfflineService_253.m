BOOL sub_F93034(_BOOL8 result)
{
  v1 = result;
  while (*(v1 + 35) == 1)
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 33);
    if (v2 == 2 || v2 == ((v3 & 1) == 0))
    {
      v4 = *(v1 + 24);
      v5 = *v1;
      if (*(v1 + 33))
      {
        v6 = *v5;
        v7 = (v4 + 1) % (0xCCCCCCCCCCCCCCCDLL * ((v5[1] - *v5) >> 3));
      }

      else
      {
        v6 = *v5;
        if (!v4)
        {
          v4 = 0xCCCCCCCCCCCCCCCDLL * ((v5[1] - v6) >> 3);
        }

        v7 = v4 - 1;
      }

      *(v1 + 24) = v7;
      v8 = (v6 + 40 * v7);
      v9 = *(v8 + 38);
      v10 = *v8;
      v11 = (v10 - *v10);
      v12 = *v11;
      if (v9)
      {
        if (v12 >= 0x39)
        {
          v13 = v11[28];
          if (v13)
          {
            v14 = *(v10 + v13);
            if ((v14 & 2) != 0)
            {
              goto LABEL_20;
            }

            v15 = 1;
LABEL_19:
            if ((v14 & v15) != 0)
            {
LABEL_20:
              *(v1 + 32) = 2;
              if (v7 == *(v1 + 8))
              {
                goto LABEL_26;
              }

              goto LABEL_2;
            }
          }
        }

LABEL_22:
        LOBYTE(v15) = v3;
      }

      else
      {
        if (v12 < 0x39)
        {
          goto LABEL_22;
        }

        v16 = v11[28];
        if (!v16)
        {
          goto LABEL_22;
        }

        v14 = *(v10 + v16);
        v15 = 2;
        if ((v14 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      *(v1 + 32) = v15;
      if (v7 == *(v1 + 8))
      {
        goto LABEL_26;
      }

      goto LABEL_2;
    }

    sub_F93900(v1);
    if (*(v1 + 24) == *(v1 + 8))
    {
LABEL_26:
      if (*(v1 + 32) == *(v1 + 16))
      {
        *(v1 + 35) = 0;
      }
    }

LABEL_2:
    result = sub_F93788(v1);
    if (result)
    {
      return result;
    }
  }

  return result;
}

_DWORD *sub_F931B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v10 = *a1;
    v11 = v3 - *a1;
    v12 = (v11 >> 3) + 1;
    if (v12 >> 61)
    {
      sub_1794();
    }

    v13 = v4 - v10;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v15 = (8 * (v11 >> 3));
    v16 = HIDWORD(*a2) & 0x40000000;
    v17 = *a2 < 0 && v16 == 0;
    v18 = (*a2 >> 33) & 0x10000000 | HIDWORD(*a2) & 0xFFFFFFF;
    if (v17)
    {
      v19 = 0x40000000;
    }

    else
    {
      v19 = 0;
    }

    *v15 = *a2;
    dword_4[2 * (v11 >> 3)] = v18 | (v16 >> 1) | v19;
    v9 = v15 + 2;
    v20 = 0;
    memcpy(v20, v10, v11);
    *a1 = v20;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v5 = HIDWORD(*a2) & 0x40000000;
    v6 = *a2 < 0 && v5 == 0;
    v7 = (*a2 >> 33) & 0x10000000 | HIDWORD(*a2) & 0xFFFFFFF;
    if (v6)
    {
      v8 = 0x40000000;
    }

    else
    {
      v8 = 0;
    }

    *v3 = *a2;
    v3[1] = v7 | (v5 >> 1) | v8;
    v9 = v3 + 2;
  }

  *(a1 + 8) = v9;
  return v9 - 2;
}

uint64_t sub_F93324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8, char *a9, unsigned __int8 *a10)
{
  v10 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v10 > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v10)
  {
    v10 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v15 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v15 = v10;
  }

  if (v15)
  {
    if (v15 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_1808();
  }

  v16 = *(a2 + 16);
  v17 = 8 * ((*(a1 + 8) - *a1) >> 3);
  *v17 = *a2;
  *(v17 + 16) = v16;
  v18 = *(a3 + 16);
  *(v17 + 40) = *a3;
  v19 = *a6;
  v20 = *a7;
  v21 = *a8;
  v22 = *a9;
  v23 = *a10;
  *(v17 + 32) = *(a2 + 32);
  *(v17 + 56) = v18;
  *(v17 + 72) = *(a3 + 32);
  sub_F935A0((v17 + 80), a4, a5, v19, v20, v21, v22, v23);
  v45[0] = a2;
  v45[1] = a3;
  v24 = *(v17 + 80);
  v25 = v24 & 0x1F;
  if (v25 == 31)
  {
    v25 = -1;
  }

  v26 = (v24 >> 5) & 0x1F;
  if (v26 == 31)
  {
    v26 = -1;
  }

  v42.i64[0] = v25;
  v42.i64[1] = v26;
  if (((v24 >> 10) & 0x1FF) == 0x1FF)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v27 = 50 * ((v24 >> 10) & 0x1FF);
  }

  v28 = (v24 >> 19) & 0x1FF;
  if (v28 == 511)
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v29 = 50 * v28;
  }

  v43 = v27;
  v44 = v29;
  sub_49FC9C(v45, &v42, a4);
  v30 = *(v17 + 80);
  v31 = vdupq_n_s64(0x1FuLL);
  v32 = vandq_s8(vshlq_u64(vdupq_n_s64(v30), xmmword_2297E80), v31);
  v42 = vorrq_s8(v32, vceqq_s64(v32, v31));
  if (((v30 >> 38) & 0x1FF) == 0x1FF)
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = 50 * ((v30 >> 38) & 0x1FF);
  }

  v34 = (v30 >> 47) & 0x1FF;
  if (v34 == 511)
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v35 = 50 * v34;
  }

  v43 = v33;
  v44 = v35;
  sub_49FC9C(v45, &v42, a5);
  v36 = v17 + 88;
  v37 = *a1;
  v38 = *(a1 + 8) - *a1;
  v39 = (v17 - v38);
  memcpy(v39, *a1, v38);
  *a1 = v39;
  *(a1 + 8) = v36;
  *(a1 + 16) = 0;
  if (v37)
  {
    operator delete(v37);
  }

  return v36;
}

unint64_t *sub_F935A0(unint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5, int a6, char a7, int a8)
{
  v8 = 30;
  if (*a2 >= 0x1E)
  {
    v9 = 30;
  }

  else
  {
    v9 = *a2;
  }

  v10 = 31;
  if (*a2 != -1)
  {
    v10 = v9;
  }

  v11 = *result & 0xFFFFFFFFFFFFFFE0 | v10;
  *result = v11;
  v12 = a2[1];
  if (v12 < 0x1E)
  {
    v8 = a2[1];
  }

  v13 = 32 * v8;
  if (v12 == -1)
  {
    v13 = 992;
  }

  *result = v13 | v11 & 0xFFFFFFFFFFFFFC1FLL;
  v14 = a2[2];
  v15 = v14 / 0x32;
  if (v14 / 0x32 >= 0x1FE)
  {
    v15 = 510;
  }

  v16 = v15 << 10;
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 523264;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17 | v13 & 0xFFFFFFFFFFF803FFLL | v11 & 0xFFFFFFFFFFF8001FLL;
  *result = v18;
  v19 = a2[3];
  v20 = v19 / 0x32;
  if (v19 / 0x32 >= 0x1FE)
  {
    v20 = 510;
  }

  v21 = v20 << 19;
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 267911168;
  }

  else
  {
    v22 = v21;
  }

  v23 = v22 | v18 & 0xFFFFFFFFF007FFFFLL;
  *result = v23;
  v24 = 30;
  if (*a3 >= 0x1E)
  {
    v25 = 30;
  }

  else
  {
    v25 = *a3;
  }

  v26 = v25 << 28;
  v27 = 0x1F0000000;
  if (*a3 != -1)
  {
    v27 = v26;
  }

  v28 = v27 | v23 & 0xFFFFFFFE0FFFFFFFLL;
  *result = v28;
  v29 = a3[1];
  if (v29 < 0x1E)
  {
    v24 = a3[1];
  }

  v30 = v24 << 33;
  v31 = v29 == -1;
  v32 = 0x3E00000000;
  if (!v31)
  {
    v32 = v30;
  }

  v33 = v28 & 0xFFFFFFC1FFFFFFFFLL | v32;
  *result = v33;
  v34 = a3[2];
  v35 = v34 / 0x32;
  if (v34 / 0x32 >= 0x1FE)
  {
    v35 = 510;
  }

  v36 = v35 << 38;
  if (v34 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = 0x7FC000000000;
  }

  else
  {
    v37 = v36;
  }

  v38 = v37 | v33 & 0xFFFF803FFFFFFFFFLL;
  *result = v38;
  v39 = a3[3];
  v40 = v39 / 0x32;
  if (v39 / 0x32 >= 0x1FE)
  {
    v40 = 510;
  }

  v41 = v40 << 47;
  if (v39 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = 0xFF800000000000;
  }

  else
  {
    v42 = v41;
  }

  v43 = v38 & 0xC0007FFFFFFFFFFFLL;
  v44 = 0x100000000000000;
  if (!a4)
  {
    v44 = 0;
  }

  v45 = 0x200000000000000;
  if (!a5)
  {
    v45 = 0;
  }

  v46 = 0x400000000000000;
  if (!a6)
  {
    v46 = 0;
  }

  v47 = (v45 | v44 | v46 | v42 | v43) + ((a7 & 3) << 59);
  v48 = 0x2000000000000000;
  if (!a8)
  {
    v48 = 0;
  }

  *result = v47 + v48;
  return result;
}

BOOL sub_F93788(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 == 2)
  {
    v17 = **a1 + 40 * *(a1 + 24);
    v18 = *(v17 + 38);
    v19 = *v17;
    v20 = (v19 - *v19);
    v21 = *v20;
    if (*(a1 + 34))
    {
      if (!v18)
      {
        if (v21 >= 0x39)
        {
          v22 = v20[28];
          if (v22)
          {
            return (*(v19 + v22) & 2) != 0;
          }
        }

        return 0;
      }
    }

    else if (v18)
    {
      if (v21 >= 0x39)
      {
        v23 = v20[28];
        if (v23)
        {
          return (*(v19 + v23) & 2) != 0;
        }
      }

      return 0;
    }

    if (v21 >= 0x39)
    {
      v24 = v20[28];
      if (v24)
      {
        return (*(v19 + v24) & 1) != 0;
      }
    }
  }

  else if (v1 == 1)
  {
    v10 = **a1 + 40 * *(a1 + 24);
    v11 = *(v10 + 38);
    v4 = *v10;
    v5 = (v4 - *v4);
    v12 = *v5;
    v7 = v12 >= 0x39;
    if (!v11)
    {
      goto LABEL_14;
    }

    if (v12 >= 0x39)
    {
      v13 = v5[28];
      if (v13)
      {
        v9 = *(v4 + v13);
        if ((v9 & 3) == 0)
        {
          return (v9 >> 2) & 1;
        }
      }
    }
  }

  else if (!*(a1 + 32))
  {
    v2 = **a1 + 40 * *(a1 + 24);
    v3 = *(v2 + 38);
    v4 = *v2;
    v5 = (v4 - *v4);
    v6 = *v5;
    v7 = v6 >= 0x39;
    if (!v3)
    {
      if (v6 >= 0x39)
      {
        v8 = v5[28];
        if (v8)
        {
          v9 = *(v4 + v8);
          if ((v9 & 3) == 0)
          {
            return (v9 >> 2) & 1;
          }
        }
      }

      return 0;
    }

LABEL_14:
    if (v7)
    {
      v15 = v5[28];
      if (v15)
      {
        v16 = *(v4 + v15);
        if ((v16 & 3) == 0)
        {
          return (v16 >> 5) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_F93900(uint64_t result)
{
  if (*(result + 32) == 2)
  {
    v1 = 2;
  }

  else
  {
    v1 = *(result + 32) == 0;
  }

  *(result + 32) = v1;
  v2 = **result + 40 * *(result + 24);
  v3 = *(v2 + 38);
  v4 = *v2;
  v5 = (v4 - *v4);
  v6 = *v5;
  if (v3)
  {
    if (v6 >= 0x39)
    {
      v7 = v5[28];
      if (v7)
      {
        v8 = *(v4 + v7);
        if ((v8 & 0x4000) != 0)
        {
          if ((v8 & 0x1000) != 0)
          {
LABEL_9:
            ++*(result + 48);
            v9 = result;
            result = sub_314800(v4);
            *(v9 + 64) += result;
            return result;
          }

          goto LABEL_15;
        }
      }
    }

LABEL_13:
    *(result + 35) = 0;
    return result;
  }

  if (v6 < 0x39)
  {
    goto LABEL_13;
  }

  v10 = v5[28];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v4 + v10);
  if ((v11 & 0x2000) == 0)
  {
    goto LABEL_13;
  }

  if ((v11 & 0x800) != 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  ++*(result + 40);
  v12 = result;
  result = sub_314800(v4);
  *(v12 + 56) += result;
  return result;
}

void *sub_F93A08(void *result, int a2)
{
  if (a2 == 1)
  {
    v2 = "CONSERVATIVE";
    v3 = 12;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = "LIVE_SPEEDS";
    v3 = 11;
  }

  return sub_4A5C(result, v2, v3);
}

uint64_t sub_F93A38(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return *(a1 + 176) | 2;
  }

  else
  {
    return *(a1 + 176);
  }
}

void *sub_F93A50(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 72) = xmmword_2267060;
  v3 = a1 + 72;
  *(v3 - 48) = 0u;
  v85 = (v3 - 48);
  *(v3 + 26) = 0;
  *(v3 + 28) = 0;
  *(v3 - 32) = 0u;
  *(v3 - 16) = 0u;
  *(v3 + 16) = 0x3E4CCCCD3F000000;
  *(v3 + 32) = -1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 32;
  *(v3 + 64) = -1;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 24) = 0;
  LOWORD(v98) = -1;
  v100 = 0;
  v101 = 0;
  __p = 0;
  v97 = v3;
  v92 = v2;
  sub_F962DC(v3, &v98);
  if (__p)
  {
    v100 = __p;
    operator delete(__p);
  }

  v5 = v2[4];
  v4 = v2[5];
  if (v5 >= v4)
  {
    v7 = *v85;
    v8 = v5 - *v85;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      sub_1794();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    *(4 * v9) = 0;
    v6 = 4 * v9 + 4;
    memcpy(0, v7, v8);
    v2[3] = 0;
    v2[4] = v6;
    v2[5] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = 0;
    v6 = (v5 + 4);
  }

  v2[4] = v6;
  v14 = v2[7];
  v13 = v2[8];
  if (v14 >= v13)
  {
    v16 = v2[6];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 1;
    if (v18 <= -2)
    {
      sub_1794();
    }

    v19 = v13 - v16;
    if (v19 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v19;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20;
    }

    if (v21)
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1808();
    }

    v22 = (v14 - v16) >> 1;
    v23 = (2 * v18);
    v24 = (2 * v18 - 2 * v22);
    *v23 = 0;
    v15 = (v23 + 1);
    memcpy(v24, v16, v17);
    v2[6] = v24;
    v2[7] = v15;
    v2[8] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = 0;
    v15 = (v14 + 2);
  }

  v26 = *v2;
  v25 = v2[1];
  v27 = v25 - *v2;
  v2[7] = v15;
  if (v25 != v26)
  {
    v28 = 0;
    v29 = 0;
    __src = 0;
    v89 = 0;
    v30 = 0;
    v31 = 0;
    v86 = 0xB195E8EFDB195E8FLL * (v27 >> 4);
    while (1)
    {
      v87 = v89;
      v90 = __src;
      v32 = *(v2[4] - 4);
      v94 = *(v15 - 2);
      v95 = (*v2 + 1776 * v31);
      v34 = v95[15];
      v33 = v95[16];
      if (v34 == v33)
      {
        goto LABEL_41;
      }

      v35 = v33 - v34 - 104;
      if (v35 <= 0x67)
      {
        break;
      }

      v37 = v35 / 0x68 + 1;
      v36 = &v34[104 * (v37 & 0x7FFFFFFFFFFFFFELL)];
      v38 = v37 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        v39 = *(v34 + 26) + v32;
        *v34 += v32;
        *(v34 + 26) = v39;
        v34 += 208;
        v38 -= 2;
      }

      while (v38);
      if (v37 != (v37 & 0x7FFFFFFFFFFFFFELL))
      {
        goto LABEL_40;
      }

LABEL_41:
      v91 = v28;
      sub_F99154(v95, &v98);
      v40 = v98;
      __src = v91;
      v89 = v29;
      v93 = __p;
      v96 = v31;
      if (v98 != __p)
      {
        while (1)
        {
          sub_F99154(v95, &v98);
          v45 = v98;
          v46 = *(v40 + 1);
          if (v46 != -1)
          {
            *(v40 + 1) = *(v2[4] - 4) + v46;
          }

          v47 = v32;
          v48 = *(v40 + 24);
          if (v48 != -1)
          {
            *(v40 + 24) = *(v2[4] - 4) + v48;
          }

          v49 = v94 - 0x5555555555555555 * ((v40 - v45) >> 6);
          if (v31)
          {
            if (*v40 == 1)
            {
              *v40 = 4;
              if (v90 != v30)
              {
                v50 = v90;
                do
                {
                  LOWORD(v98) = *v50;
                  v52 = sub_F96528(v97, &v98);
                  v53 = v52;
                  v55 = v52[2];
                  v54 = v52[3];
                  if (v55 < v54)
                  {
                    *v55 = v49;
                    v51 = v55 + 2;
                  }

                  else
                  {
                    v56 = v52[1];
                    v57 = v55 - v56;
                    v58 = (v55 - v56) >> 1;
                    if (v58 <= -2)
                    {
                      sub_1794();
                    }

                    v59 = v54 - v56;
                    if (v59 <= v58 + 1)
                    {
                      v60 = v58 + 1;
                    }

                    else
                    {
                      v60 = v59;
                    }

                    if (v59 >= 0x7FFFFFFFFFFFFFFELL)
                    {
                      v61 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v61 = v60;
                    }

                    if (v61)
                    {
                      if ((v61 & 0x8000000000000000) == 0)
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v62 = (v55 - v56) >> 1;
                    v63 = (2 * v58);
                    v64 = (2 * v58 - 2 * v62);
                    *v63 = v49;
                    v51 = v63 + 1;
                    memcpy(v64, v56, v57);
                    v53[1] = v64;
                    v53[2] = v51;
                    v53[3] = 0;
                    if (v56)
                    {
                      operator delete(v56);
                    }
                  }

                  v53[2] = v51;
                  ++v50;
                }

                while (v50 != v30);
              }
            }
          }

          v31 = v96;
          if (v96 == v86 - 1)
          {
            break;
          }

          v32 = v47;
          if (*v40 == 2)
          {
            *v40 = 3;
            v2 = v92;
            if (v91 < v89)
            {
              *v91++ = v49;
              goto LABEL_45;
            }

            v65 = v91 - __src;
            v66 = v91 - __src;
            if (v66 <= -2)
            {
              sub_1794();
            }

            if (v89 - __src <= v66 + 1)
            {
              v67 = v66 + 1;
            }

            else
            {
              v67 = v89 - __src;
            }

            if (v89 - __src >= 0x7FFFFFFFFFFFFFFELL)
            {
              v68 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v68 = v67;
            }

            if (v68)
            {
              if ((v68 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_1808();
            }

            v89 = 0;
            *(2 * v66) = v49;
            v91 = (2 * v66 + 2);
            memcpy(0, __src, v65);
            __src = 0;
            v31 = v96;
            goto LABEL_71;
          }

          v2 = v92;
LABEL_45:
          v40 += 192;
          if (v40 == v93)
          {
            goto LABEL_42;
          }
        }

        v2 = v92;
LABEL_71:
        v32 = v47;
        goto LABEL_45;
      }

LABEL_42:
      v30 = v91;
      v41 = v32 + ((v95[13] - v95[12]) >> 2);
      v43 = v2[4];
      v42 = v2[5];
      if (v43 >= v42)
      {
        v69 = *v85;
        v70 = v43 - *v85;
        v71 = (v70 >> 2) + 1;
        if (v71 >> 62)
        {
          sub_1794();
        }

        v72 = v42 - v69;
        if (v72 >> 1 > v71)
        {
          v71 = v72 >> 1;
        }

        if (v72 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v73 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v73 = v71;
        }

        if (v73)
        {
          if (!(v73 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        v74 = (4 * (v70 >> 2));
        *v74 = v41;
        v44 = v74 + 1;
        memcpy(0, v69, v70);
        v2[3] = 0;
        v2[4] = v44;
        v2[5] = 0;
        if (v69)
        {
          operator delete(v69);
        }

        v31 = v96;
      }

      else
      {
        *v43 = v41;
        v44 = v43 + 4;
      }

      v2[4] = v44;
      v75 = sub_F99138(v95) + v94;
      v77 = v2[7];
      v76 = v2[8];
      if (v77 < v76)
      {
        *v77 = v75;
        v15 = (v77 + 2);
      }

      else
      {
        v78 = v2[6];
        v79 = v77 - v78;
        v80 = (v77 - v78) >> 1;
        if (v80 <= -2)
        {
          sub_1794();
        }

        v81 = v76 - v78;
        if (v81 <= v80 + 1)
        {
          v82 = v80 + 1;
        }

        else
        {
          v82 = v81;
        }

        if (v81 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v83 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v83 = v82;
        }

        if (v83)
        {
          if ((v83 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1808();
        }

        *(2 * v80) = v75;
        v15 = 2 * v80 + 2;
        memcpy(0, v78, v79);
        v2[6] = 0;
        v2[7] = v15;
        v2[8] = 0;
        if (v78)
        {
          operator delete(v78);
        }

        v31 = v96;
      }

      v29 = v87;
      v2[7] = v15;
      ++v31;
      v28 = v90;
      if (v31 == v86)
      {
        return v2;
      }
    }

    v36 = v95[15];
    do
    {
LABEL_40:
      *v36 += v32;
      v36 += 104;
    }

    while (v36 != v33);
    goto LABEL_41;
  }

  return v2;
}

void sub_F94290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = a18[21];
  if (v27)
  {
    v32 = a18[16];
    if (v32)
    {
      v33 = 0;
      do
      {
        v34 = a18[21] + v33;
        v35 = *(v34 + 1);
        if (v35)
        {
          *(v34 + 2) = v35;
          operator delete(v35);
        }

        v33 += 32;
        --v32;
      }

      while (v32);
      v27 = a18[21];
    }

    free(v27);
    v28 = *a9;
    if (!*a9)
    {
LABEL_5:
      v29 = a18[6];
      if (!v29)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v28 = *a9;
    if (!*a9)
    {
      goto LABEL_5;
    }
  }

  a18[19] = v28;
  operator delete(v28);
  v29 = a18[6];
  if (!v29)
  {
LABEL_6:
    v30 = *a10;
    if (!*a10)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  a18[7] = v29;
  operator delete(v29);
  v30 = *a10;
  if (!*a10)
  {
LABEL_7:
    v31 = *a18;
    if (!*a18)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  a18[4] = v30;
  operator delete(v30);
  v31 = *a18;
  if (!*a18)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_19:
  v36 = a18[1];
  v37 = v31;
  if (v36 != v31)
  {
    do
    {
      v36 -= 1776;
      sub_F96138(v36);
    }

    while (v36 != v31);
    v37 = *a18;
  }

  a18[1] = v31;
  operator delete(v37);
  _Unwind_Resume(exception_object);
}

uint64_t sub_F94464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = 0;
  v20 = 0uLL;
  v4 = a1[1] - *a1;
  if (v4)
  {
    if (!((0xB195E8EFDB195E8FLL * (v4 >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *a1;
  v6 = a1[1];
  *&v17 = &v19;
  if (v5 != v6)
  {
    do
    {
      v21 = *(v5 + 120);
      sub_2C99C0(&v17, &v21);
      v5 += 1776;
    }

    while (v5 != v6);
    v5 = *a1;
    v6 = a1[1];
  }

  v17 = 0uLL;
  v18 = 0;
  if (v6 != v5)
  {
    if (!((0xB195E8EFDB195E8FLL * ((v6 - v5) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v21 = &v17;
  v8 = vdupq_n_s64(0);
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = v19;
  *(a2 + 16) = v19;
  v10 = v20;
  *(a2 + 24) = v20;
  v19 = 0;
  v20 = 0uLL;
  *(a2 + 40) = v8;
  *(a2 + 56) = 0;
  v18 = 0;
  v17 = 0uLL;
  if (v9 != v10)
  {
    v11 = v10 - v9;
    v12 = v11 - 1;
    if (v11 == 1)
    {
      v13 = 0;
    }

    else
    {
      if (*v9 == *v8.i64[0])
      {
        v13 = 0;
        v14 = v11 - 2;
        while (v14 != v13)
        {
          v15 = v9[v13 + 1];
          v16 = *(v8.i64[0] + 8 + 8 * v13++);
          if (v15 != v16)
          {
            goto LABEL_20;
          }
        }

        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

LABEL_20:
      *(a2 + 8) = v13;
    }

    *a2 = v9[v13];
  }

  return result;
}

void sub_F946BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F94724@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0;
  v15 = 0uLL;
  v4 = a1[1] - *a1;
  if (v4)
  {
    if (!((0xB195E8EFDB195E8FLL * (v4 >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *a1;
  v6 = a1[1];
  v11 = &v14;
  if (v5 != v6)
  {
    do
    {
      v16 = *(v5 + 120);
      sub_2C99C0(&v11, &v16);
      v5 += 1776;
    }

    while (v5 != v6);
    v5 = *a1;
    v6 = a1[1];
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v7 = v6 - v5;
  if (v6 != v5)
  {
    if (!((0xB195E8EFDB195E8FLL * (v7 >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v16 = &v11;
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = v14;
  *(a2 + 16) = v14;
  v10 = v15;
  *(a2 + 24) = v15;
  v14 = 0;
  v15 = 0uLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v7;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (v9 != v10)
  {
    *(a2 + 8) = -1;
    *a2 = MEMORY[0xFFFFFFFFFFFFFFF8];
  }

  return result;
}

void sub_F94920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_F9495C@<X0>(void *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[3];
  v4 = result[4];
  LODWORD(v5) = v3 + 4;
  v6 = v3;
  if ((v3 + 4) != v4)
  {
    v7 = (v3 + 4);
    while (*v7 <= a2)
    {
      ++v7;
      LODWORD(v5) = v5 + 4;
      if (v7 == v4)
      {
        v5 = result[4];
        break;
      }
    }

    v6 = v5 - 4;
  }

  v8 = ((v6 - v3) >> 2);
  v9 = a2 - *(v3 + 4 * v8);
  v10 = *result + 1776 * v8;
  v11 = *(v10 + 96);
  if (v9 >= (*(v10 + 104) - v11) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v12 = *(v11 + 4 * v9);
  *a3 = v10 + 120;
  *(a3 + 8) = v10 + 144;
  *(a3 + 16) = v12;
  return result;
}

unint64_t sub_F94A20(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = v2 + 4;
  v5 = v2;
  if ((v2 + 4) != v3)
  {
    v6 = (v2 + 4);
    while (*v6 <= a2)
    {
      ++v6;
      v4 += 4;
      if (v6 == v3)
      {
        v4 = *(a1 + 32);
        break;
      }
    }

    v5 = v4 - 4;
  }

  return (v5 - v2) >> 2;
}

void *sub_F94A68@<X0>(void *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[3];
  v4 = result[4];
  LODWORD(v5) = v3 + 4;
  v6 = v3;
  if ((v3 + 4) != v4)
  {
    v7 = (v3 + 4);
    while (*v7 <= a2)
    {
      ++v7;
      LODWORD(v5) = v5 + 4;
      if (v7 == v4)
      {
        v5 = result[4];
        break;
      }
    }

    v6 = v5 - 4;
  }

  v8 = a2 - *(v3 + 4 * ((v6 - v3) >> 2));
  v9 = *result + 1776 * ((v6 - v3) >> 2);
  if (v8 >= (*(v9 + 104) - *(v9 + 96)) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v11 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  *a3 = v9 + 120;
  *(a3 + 8) = v9 + 144;
  *(a3 + 16) = -1;
  return result;
}

uint64_t sub_F94B2C(void *a1, unsigned int a2)
{
  v2 = a1[3];
  v3 = a1[4];
  LODWORD(v4) = v2 + 4;
  v5 = v2;
  if ((v2 + 4) != v3)
  {
    v6 = (v2 + 4);
    while (*v6 <= a2)
    {
      ++v6;
      LODWORD(v4) = v4 + 4;
      if (v6 == v3)
      {
        v4 = a1[4];
        break;
      }
    }

    v5 = v4 - 4;
  }

  v7 = ((v5 - v2) >> 2);
  return *(*(*a1 + 1776 * v7 + 168) + 4 * (a2 - *(v2 + 4 * v7)));
}

uint64_t sub_F94B9C(void *a1, unsigned int a2)
{
  v2 = a1[3];
  v3 = a1[4];
  LODWORD(v4) = v2 + 4;
  v5 = v2;
  if ((v2 + 4) != v3)
  {
    v6 = (v2 + 4);
    while (*v6 <= a2)
    {
      ++v6;
      LODWORD(v4) = v4 + 4;
      if (v6 == v3)
      {
        v4 = a1[4];
        break;
      }
    }

    v5 = v4 - 4;
  }

  return sub_F98E1C((*a1 + 1776 * ((v5 - v2) >> 2)), a2 - *(v2 + 4 * ((v5 - v2) >> 2)));
}

BOOL sub_F94BF8(void *a1, unsigned int a2)
{
  v2 = a1[3];
  v3 = a1[4];
  LODWORD(v4) = v2 + 4;
  v5 = v2;
  if ((v2 + 4) != v3)
  {
    v6 = (v2 + 4);
    while (*v6 <= a2)
    {
      ++v6;
      LODWORD(v4) = v4 + 4;
      if (v6 == v3)
      {
        v4 = a1[4];
        break;
      }
    }

    v5 = v4 - 4;
  }

  return sub_F9903C(*a1 + 1776 * ((v5 - v2) >> 2), a2 - *(v2 + 4 * ((v5 - v2) >> 2)));
}

uint64_t sub_F94C54(void *a1, unsigned __int16 a2)
{
  v2 = a1[6];
  v3 = a1[7];
  LODWORD(v4) = v2 + 2;
  v5 = v2;
  if ((v2 + 2) != v3)
  {
    v6 = (v2 + 2);
    while (*v6 <= a2)
    {
      ++v6;
      LODWORD(v4) = v4 + 2;
      if (v6 == v3)
      {
        v4 = a1[7];
        break;
      }
    }

    v5 = v4 - 2;
  }

  v7 = ((v5 - v2) >> 1);
  return sub_F99124(*a1 + 1776 * v7, a2 - *(v2 + 2 * v7));
}

uint64_t sub_F94CB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += sub_F99138(v1);
    v1 += 1776;
  }

  while (v1 != v2);
  return v3;
}

uint64_t sub_F94D1C@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  LODWORD(v5) = v3 + 4;
  v6 = v3;
  if ((v3 + 4) != v4)
  {
    v7 = (v3 + 4);
    while (*v7 <= a2)
    {
      ++v7;
      LODWORD(v5) = v5 + 4;
      if (v7 == v4)
      {
        v5 = a1[4];
        break;
      }
    }

    v6 = v5 - 4;
  }

  return sub_F99160(*a1 + 1776 * ((v6 - v3) >> 2), a2 - *(v3 + 4 * ((v6 - v3) >> 2)), a3);
}

unint64_t sub_F94D78@<X0>(void *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  LODWORD(v6) = v4 + 4;
  v7 = v4;
  if ((v4 + 4) != v5)
  {
    v8 = (v4 + 4);
    while (*v8 <= a2)
    {
      ++v8;
      LODWORD(v6) = v6 + 4;
      if (v8 == v5)
      {
        v6 = a1[4];
        break;
      }
    }

    v7 = v6 - 4;
  }

  result = sub_F992C4(*a1 + 1776 * ((v7 - v4) >> 2), a2 - *(v4 + 4 * ((v7 - v4) >> 2)), &v10);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = a3;
  return result;
}

void sub_F94E90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F94EAC@<X0>(uint64_t result@<X0>, unsigned __int16 a2@<W1>, void *a3@<X8>)
{
  v3 = *(result + 112);
  if (*(result + 120) == v3)
  {
    goto LABEL_12;
  }

  v4 = *(result + 128);
  v5 = v4 - 1;
  v6 = (a2 & (v4 - 1));
  v7 = *(result + 168);
  v8 = *(result + 136);
  v9 = *(v7 + 32 * v6);
  if (v9 == v8)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v11 = 1;
    while (v9 == *(result + 104) || v9 != a2)
    {
      v6 = (v6 + v11) & v5;
      v9 = *(v7 + 32 * v6);
      ++v11;
      if (v9 == v8)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v13 = 1;
    while (v9 != a2)
    {
      v6 = (v6 + v13) & v5;
      v9 = *(v7 + 32 * v6);
      ++v13;
      if (v9 == v8)
      {
        goto LABEL_12;
      }
    }
  }

  if (v6 == -1 || (v12 = v7 + 32 * v6, v12 == v7 + 32 * v4))
  {
LABEL_12:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v10 = *(v12 + 16);
    *a3 = *(v12 + 8);
    a3[1] = v10;
  }

  return result;
}

void *sub_F94FA4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 72) = xmmword_2267060;
  v3 = a1 + 72;
  *(v3 - 48) = 0u;
  v84 = (v3 - 48);
  *(v3 + 26) = 0;
  *(v3 + 28) = 0;
  *(v3 - 32) = 0u;
  *(v3 - 16) = 0u;
  *(v3 + 16) = 0x3E4CCCCD3F000000;
  *(v3 + 32) = -1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 32;
  *(v3 + 64) = -1;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 24) = 0;
  LOWORD(v97) = -1;
  v99 = 0;
  v100 = 0;
  __p = 0;
  v96 = v3;
  v91 = v2;
  sub_F962DC(v3, &v97);
  if (__p)
  {
    v99 = __p;
    operator delete(__p);
  }

  v5 = v2[4];
  v4 = v2[5];
  if (v5 >= v4)
  {
    v7 = *v84;
    v8 = v5 - *v84;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      sub_1794();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    *(4 * v9) = 0;
    v6 = 4 * v9 + 4;
    memcpy(0, v7, v8);
    v2[3] = 0;
    v2[4] = v6;
    v2[5] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = 0;
    v6 = (v5 + 4);
  }

  v2[4] = v6;
  v14 = v2[7];
  v13 = v2[8];
  if (v14 >= v13)
  {
    v16 = v2[6];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 1;
    if (v18 <= -2)
    {
      sub_1794();
    }

    v19 = v13 - v16;
    if (v19 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v19;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20;
    }

    if (v21)
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1808();
    }

    v22 = (v14 - v16) >> 1;
    v23 = (2 * v18);
    v24 = (2 * v18 - 2 * v22);
    *v23 = 0;
    v15 = (v23 + 1);
    memcpy(v24, v16, v17);
    v2[6] = v24;
    v2[7] = v15;
    v2[8] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = 0;
    v15 = (v14 + 2);
  }

  v26 = *v2;
  v25 = v2[1];
  v27 = v25 - *v2;
  v2[7] = v15;
  if (v25 != v26)
  {
    v28 = 0;
    v29 = 0;
    __src = 0;
    v88 = 0;
    v30 = 0;
    v31 = 0;
    v85 = 0xB195E8EFDB195E8FLL * (v27 >> 4);
    while (1)
    {
      v86 = v88;
      v89 = __src;
      v32 = *(v2[4] - 4);
      v93 = *(v15 - 2);
      v94 = (*v2 + 1776 * v31);
      v34 = v94[15];
      v33 = v94[16];
      if (v34 == v33)
      {
        goto LABEL_41;
      }

      v35 = v33 - v34 - 104;
      if (v35 <= 0x67)
      {
        break;
      }

      v37 = v35 / 0x68 + 1;
      v36 = &v34[104 * (v37 & 0x7FFFFFFFFFFFFFELL)];
      v38 = v37 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        v39 = *(v34 + 26) + v32;
        *v34 += v32;
        *(v34 + 26) = v39;
        v34 += 208;
        v38 -= 2;
      }

      while (v38);
      if (v37 != (v37 & 0x7FFFFFFFFFFFFFELL))
      {
        goto LABEL_40;
      }

LABEL_41:
      v90 = v28;
      sub_F99154(v94, &v97);
      v40 = v97;
      __src = v90;
      v88 = v29;
      v92 = __p;
      v95 = v31;
      if (v97 != __p)
      {
        while (1)
        {
          sub_F99154(v94, &v97);
          v45 = *(v40 + 5);
          if (v45 != -1)
          {
            *(v40 + 5) = *(v2[4] - 4) + v45;
          }

          v46 = v32;
          v47 = *(v40 + 28);
          if (v47 != -1)
          {
            *(v40 + 28) = *(v2[4] - 4) + v47;
          }

          v48 = v93 + 0x4EC4EC4EC4EC4EC5 * ((v40 - v97) >> 4);
          if (v31)
          {
            if (v40[16] == 1)
            {
              v40[16] = 4;
              if (v89 != v30)
              {
                v49 = v89;
                do
                {
                  LOWORD(v97) = *v49;
                  v51 = sub_F96528(v96, &v97);
                  v52 = v51;
                  v54 = v51[2];
                  v53 = v51[3];
                  if (v54 < v53)
                  {
                    *v54 = v48;
                    v50 = v54 + 2;
                  }

                  else
                  {
                    v55 = v51[1];
                    v56 = v54 - v55;
                    v57 = (v54 - v55) >> 1;
                    if (v57 <= -2)
                    {
                      sub_1794();
                    }

                    v58 = v53 - v55;
                    if (v58 <= v57 + 1)
                    {
                      v59 = v57 + 1;
                    }

                    else
                    {
                      v59 = v58;
                    }

                    if (v58 >= 0x7FFFFFFFFFFFFFFELL)
                    {
                      v60 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v60 = v59;
                    }

                    if (v60)
                    {
                      if ((v60 & 0x8000000000000000) == 0)
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v61 = (v54 - v55) >> 1;
                    v62 = (2 * v57);
                    v63 = (2 * v57 - 2 * v61);
                    *v62 = v48;
                    v50 = v62 + 1;
                    memcpy(v63, v55, v56);
                    v52[1] = v63;
                    v52[2] = v50;
                    v52[3] = 0;
                    if (v55)
                    {
                      operator delete(v55);
                    }
                  }

                  v52[2] = v50;
                  ++v49;
                }

                while (v49 != v30);
              }
            }
          }

          v31 = v95;
          if (v95 == v85 - 1)
          {
            break;
          }

          v32 = v46;
          if (v40[16] == 2)
          {
            v40[16] = 3;
            v2 = v91;
            if (v90 < v88)
            {
              *v90++ = v48;
              goto LABEL_45;
            }

            v64 = v90 - __src;
            v65 = v90 - __src;
            if (v65 <= -2)
            {
              sub_1794();
            }

            if (v88 - __src <= v65 + 1)
            {
              v66 = v65 + 1;
            }

            else
            {
              v66 = v88 - __src;
            }

            if (v88 - __src >= 0x7FFFFFFFFFFFFFFELL)
            {
              v67 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v67 = v66;
            }

            if (v67)
            {
              if ((v67 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_1808();
            }

            v88 = 0;
            *(2 * v65) = v48;
            v90 = (2 * v65 + 2);
            memcpy(0, __src, v64);
            __src = 0;
            v31 = v95;
            goto LABEL_71;
          }

          v2 = v91;
LABEL_45:
          v40 += 208;
          if (v40 == v92)
          {
            goto LABEL_42;
          }
        }

        v2 = v91;
LABEL_71:
        v32 = v46;
        goto LABEL_45;
      }

LABEL_42:
      v30 = v90;
      v41 = v32 + ((v94[13] - v94[12]) >> 2);
      v43 = v2[4];
      v42 = v2[5];
      if (v43 >= v42)
      {
        v68 = *v84;
        v69 = v43 - *v84;
        v70 = (v69 >> 2) + 1;
        if (v70 >> 62)
        {
          sub_1794();
        }

        v71 = v42 - v68;
        if (v71 >> 1 > v70)
        {
          v70 = v71 >> 1;
        }

        if (v71 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v72 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v72 = v70;
        }

        if (v72)
        {
          if (!(v72 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        v73 = (4 * (v69 >> 2));
        *v73 = v41;
        v44 = v73 + 1;
        memcpy(0, v68, v69);
        v2[3] = 0;
        v2[4] = v44;
        v2[5] = 0;
        if (v68)
        {
          operator delete(v68);
        }

        v31 = v95;
      }

      else
      {
        *v43 = v41;
        v44 = v43 + 4;
      }

      v2[4] = v44;
      v74 = sub_F9A9DC(v94) + v93;
      v76 = v2[7];
      v75 = v2[8];
      if (v76 < v75)
      {
        *v76 = v74;
        v15 = (v76 + 2);
      }

      else
      {
        v77 = v2[6];
        v78 = v76 - v77;
        v79 = (v76 - v77) >> 1;
        if (v79 <= -2)
        {
          sub_1794();
        }

        v80 = v75 - v77;
        if (v80 <= v79 + 1)
        {
          v81 = v79 + 1;
        }

        else
        {
          v81 = v80;
        }

        if (v80 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v82 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v82 = v81;
        }

        if (v82)
        {
          if ((v82 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1808();
        }

        *(2 * v79) = v74;
        v15 = 2 * v79 + 2;
        memcpy(0, v77, v78);
        v2[6] = 0;
        v2[7] = v15;
        v2[8] = 0;
        if (v77)
        {
          operator delete(v77);
        }

        v31 = v95;
      }

      v29 = v86;
      v2[7] = v15;
      ++v31;
      v28 = v89;
      if (v31 == v85)
      {
        return v2;
      }
    }

    v36 = v94[15];
    do
    {
LABEL_40:
      *v36 += v32;
      v36 += 104;
    }

    while (v36 != v33);
    goto LABEL_41;
  }

  return v2;
}

void sub_F957EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = a18[21];
  if (v27)
  {
    v32 = a18[16];
    if (v32)
    {
      v33 = 0;
      do
      {
        v34 = a18[21] + v33;
        v35 = *(v34 + 1);
        if (v35)
        {
          *(v34 + 2) = v35;
          operator delete(v35);
        }

        v33 += 32;
        --v32;
      }

      while (v32);
      v27 = a18[21];
    }

    free(v27);
    v28 = *a9;
    if (!*a9)
    {
LABEL_5:
      v29 = a18[6];
      if (!v29)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v28 = *a9;
    if (!*a9)
    {
      goto LABEL_5;
    }
  }

  a18[19] = v28;
  operator delete(v28);
  v29 = a18[6];
  if (!v29)
  {
LABEL_6:
    v30 = *a10;
    if (!*a10)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  a18[7] = v29;
  operator delete(v29);
  v30 = *a10;
  if (!*a10)
  {
LABEL_7:
    v31 = *a18;
    if (!*a18)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  a18[4] = v30;
  operator delete(v30);
  v31 = *a18;
  if (!*a18)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_19:
  v36 = a18[1];
  v37 = v31;
  if (v36 != v31)
  {
    do
    {
      v36 -= 1776;
      sub_F96138(v36);
    }

    while (v36 != v31);
    v37 = *a18;
  }

  a18[1] = v31;
  operator delete(v37);
  _Unwind_Resume(exception_object);
}

uint64_t sub_F959C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = 0;
  v20 = 0uLL;
  v4 = a1[1] - *a1;
  if (v4)
  {
    if (!((0xB195E8EFDB195E8FLL * (v4 >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *a1;
  v6 = a1[1];
  *&v17 = &v19;
  if (v5 != v6)
  {
    do
    {
      v21 = *(v5 + 120);
      sub_2C99C0(&v17, &v21);
      v5 += 1776;
    }

    while (v5 != v6);
    v5 = *a1;
    v6 = a1[1];
  }

  v17 = 0uLL;
  v18 = 0;
  if (v6 != v5)
  {
    if (!((0xB195E8EFDB195E8FLL * ((v6 - v5) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v21 = &v17;
  v8 = vdupq_n_s64(0);
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = v19;
  *(a2 + 16) = v19;
  v10 = v20;
  *(a2 + 24) = v20;
  v19 = 0;
  v20 = 0uLL;
  *(a2 + 40) = v8;
  *(a2 + 56) = 0;
  v18 = 0;
  v17 = 0uLL;
  if (v9 != v10)
  {
    v11 = v10 - v9;
    v12 = v11 - 1;
    if (v11 == 1)
    {
      v13 = 0;
    }

    else
    {
      if (*v9 == *v8.i64[0])
      {
        v13 = 0;
        v14 = v11 - 2;
        while (v14 != v13)
        {
          v15 = v9[v13 + 1];
          v16 = *(v8.i64[0] + 8 + 8 * v13++);
          if (v15 != v16)
          {
            goto LABEL_20;
          }
        }

        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

LABEL_20:
      *(a2 + 8) = v13;
    }

    *a2 = v9[v13];
  }

  return result;
}

void sub_F95C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F95C80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0;
  v15 = 0uLL;
  v4 = a1[1] - *a1;
  if (v4)
  {
    if (!((0xB195E8EFDB195E8FLL * (v4 >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *a1;
  v6 = a1[1];
  v11 = &v14;
  if (v5 != v6)
  {
    do
    {
      v16 = *(v5 + 120);
      sub_2C99C0(&v11, &v16);
      v5 += 1776;
    }

    while (v5 != v6);
    v5 = *a1;
    v6 = a1[1];
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v7 = v6 - v5;
  if (v6 != v5)
  {
    if (!((0xB195E8EFDB195E8FLL * (v7 >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v16 = &v11;
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = v14;
  *(a2 + 16) = v14;
  v10 = v15;
  *(a2 + 24) = v15;
  v14 = 0;
  v15 = 0uLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v7;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (v9 != v10)
  {
    *(a2 + 8) = -1;
    *a2 = MEMORY[0xFFFFFFFFFFFFFFF8];
  }

  return result;
}

void sub_F95E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F95EB8(void *a1, unsigned __int16 a2)
{
  v2 = a1[6];
  v3 = a1[7];
  LODWORD(v4) = v2 + 2;
  v5 = v2;
  if ((v2 + 2) != v3)
  {
    v6 = (v2 + 2);
    while (*v6 <= a2)
    {
      ++v6;
      LODWORD(v4) = v4 + 2;
      if (v6 == v3)
      {
        v4 = a1[7];
        break;
      }
    }

    v5 = v4 - 2;
  }

  v7 = ((v5 - v2) >> 1);
  return sub_F9A9C8(*a1 + 1776 * v7, a2 - *(v2 + 2 * v7));
}

uint64_t sub_F95F18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += sub_F9A9DC(v1);
    v1 += 1776;
  }

  while (v1 != v2);
  return v3;
}

unint64_t sub_F95F80@<X0>(void *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  LODWORD(v6) = v4 + 4;
  v7 = v4;
  if ((v4 + 4) != v5)
  {
    v8 = (v4 + 4);
    while (*v8 <= a2)
    {
      ++v8;
      LODWORD(v6) = v6 + 4;
      if (v8 == v5)
      {
        v6 = a1[4];
        break;
      }
    }

    v7 = v6 - 4;
  }

  result = sub_F992C4(*a1 + 1776 * ((v7 - v4) >> 2), a2 - *(v4 + 4 * ((v7 - v4) >> 2)), &v10);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = a3;
  return result;
}

void sub_F96098(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_F960B4(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    v3 = a1[7];
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = a1[12] + v4;
        v6 = *(v5 + 8);
        if (v6)
        {
          *(v5 + 16) = v6;
          operator delete(v6);
        }

        v4 += 32;
        --v3;
      }

      while (v3);
      v2 = a1[12];
    }

    free(v2);
  }

  v7 = a1[9];
  if (v7)
  {
    a1[10] = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_F96138(uint64_t a1)
{
  sub_360988(a1 + 1008);
  v2 = 1008;
  do
  {
    v3 = a1 + v2;
    v2 -= 48;
    v4 = *(v3 - 24);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = (v3 - 40);
      do
      {
        if ((*(*(a1 + v2) + v6) & 0x80000000) == 0)
        {
          v8 = *v7 + v5;
          v9 = *(v8 + 8);
          if (v9)
          {
            *(v8 + 16) = v9;
            operator delete(v9);
            v4 = *(v3 - 24);
          }
        }

        ++v6;
        v5 += 32;
      }

      while (v6 != v4);
      operator delete(*(a1 + v2));
      *(a1 + v2) = &unk_2290750;
      *(v3 - 8) = 0;
      *(v3 - 32) = 0;
      *(v3 - 24) = 0;
      *v7 = 0;
    }
  }

  while (v2 != 240);
  v10 = *(a1 + 216);
  if (v10)
  {
    *(a1 + 224) = v10;
    operator delete(v10);
  }

  return sub_F96228(a1);
}

uint64_t sub_F96228(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    *(a1 + 200) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    *(a1 + 152) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    *(a1 + 128) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    *(a1 + 104) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    *(a1 + 56) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    *(a1 + 32) = v9;
    operator delete(v9);
  }

  v10 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_F962DC(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 72);
  v4 = *(a1 + 72);
  *(v5 - 47) = 1;
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  *(a1 + 64) = *a2;
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = malloc_type_malloc(32 * *(a1 + 56), 0x102004084B5A0ACuLL);
  *(a1 + 96) = v8;
  v9 = v8 + 32 * *(a1 + 56);

  return sub_F963E4(v8, v9, (v5 - 1));
}

void sub_F963C8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F963E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = 0;
  v4 = a1;
  do
  {
    *v4 = *a3;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 8) = 0;
    v6 = *(a3 + 8);
    v5 = *(a3 + 16);
    if (v5 != v6)
    {
      if (((v5 - v6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v4 += 32;
    v3 -= 32;
  }

  while (v4 != a2);
  return v4;
}

void *sub_F96528(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 56) - 1;
  v5 = *a2;
  v6 = v4 & v5;
  v7 = *(a1 + 96);
  v8 = *(a1 + 64);
  v9 = *(v7 + 32 * (v4 & v5));
  if (v9 == v8)
  {
LABEL_2:
    v10 = v6;
    goto LABEL_3;
  }

  if (*(a1 + 40))
  {
    v10 = -1;
    v19 = 1;
    do
    {
      if (v9 == *(a1 + 32))
      {
        if (v10 == -1)
        {
          v10 = v6;
        }
      }

      else if (v9 == v5)
      {
        goto LABEL_16;
      }

      v6 = (v6 + v19) & v4;
      v9 = *(v7 + 32 * v6);
      ++v19;
    }

    while (v9 != v8);
    if (v10 == -1)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v21 = 1;
    while (v9 != v5)
    {
      v6 = (v6 + v21) & v4;
      v9 = *(v7 + 32 * v6);
      ++v21;
      if (v9 == v8)
      {
        goto LABEL_2;
      }
    }

LABEL_16:
    if (v6 != -1)
    {
      return (v7 + 32 * v6);
    }

    v10 = -1;
  }

LABEL_3:
  if (sub_F967E0(a1, 1))
  {
    LOWORD(v23) = *a2;
    v25 = 0;
    v26 = 0;
    __p = 0;
    v11 = *(a1 + 56) - 1;
    v12 = (v11 & v23);
    v13 = *(a1 + 96);
    v14 = *(a1 + 64);
    v15 = *(v13 + 32 * v12);
    if (v15 == v14)
    {
LABEL_5:
      v16 = v12;
      goto LABEL_6;
    }

    if (*(a1 + 40))
    {
      v16 = -1;
      v20 = 1;
      do
      {
        if (v15 == *(a1 + 32))
        {
          if (v16 == -1)
          {
            v16 = v12;
          }
        }

        else if (v15 == v23)
        {
          goto LABEL_27;
        }

        v12 = (v12 + v20) & v11;
        v15 = *(v13 + 32 * v12);
        ++v20;
      }

      while (v15 != v14);
      if (v16 != -1)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v22 = 1;
    while (v15 != v23)
    {
      v12 = (v12 + v22) & v11;
      v15 = *(v13 + 32 * v12);
      ++v22;
      if (v15 == v14)
      {
        goto LABEL_5;
      }
    }

LABEL_27:
    if (v12 == -1)
    {
      v16 = -1;
LABEL_6:
      sub_F96A8C(a1, &v23, v16, &v27);
      LOBYTE(v30) = 1;
      v17 = v28;
      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      return v17;
    }

    return (v13 + 32 * v12);
  }

  else
  {
    LOWORD(v27) = *a2;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    sub_F96A8C(a1, &v27, v10, &v23);
    v17 = __p;
    if (!v28)
    {
      return v17;
    }

    v29 = v28;
    operator delete(v28);
    return v17;
  }
}

void sub_F967B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F967E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_F96C20(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= ~a2)
  {
    goto LABEL_35;
  }

  v6 = *(a1 + 56);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    v9 = vcvts_n_u32_f32(v8, 2uLL);
    v10 = 4;
    if (v7 >= v9)
    {
      while ((v10 & 0x8000000000000000) == 0)
      {
        v10 *= 2;
        if (v7 < (v8 * v10))
        {
          goto LABEL_10;
        }
      }

LABEL_35:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_10:
    if (v10 > v6)
    {
      v11 = *(a1 + 40);
      v12 = v5 - v11 + a2;
      v13 = 4;
      if (v6 > 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (v12 >= (v8 * v13))
      {
LABEL_13:
        while ((v13 & 0x8000000000000000) == 0)
        {
          v13 *= 2;
          if (v13 >= v6)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_35;
      }

      v14 = v7 - (v11 >> 2);
      v15 = 4;
      if (v14 >= v9)
      {
        while ((v15 & 0x8000000000000000) == 0)
        {
          v15 *= 2;
          if (v14 < (v8 * v15))
          {
            goto LABEL_19;
          }
        }

        goto LABEL_35;
      }

LABEL_19:
      if (v13 <= 0x7FFFFFFFFFFFFFFELL && v13 < v15 && v12 >= (*(a1 + 20) * (2 * v13)))
      {
        v13 *= 2;
      }

      sub_F96FB0(v21, a1, v13);
      sub_F96D44(a1, v21);
      v16 = v25;
      if (v25)
      {
        v17 = v22;
        if (v22)
        {
          v18 = 0;
          do
          {
            v19 = *(v25 + v18 + 8);
            if (v19)
            {
              *(v25 + v18 + 16) = v19;
              operator delete(v19);
            }

            v18 += 32;
            --v17;
          }

          while (v17);
          v16 = v25;
        }

        free(v16);
      }

      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      return 1;
    }
  }

  return result;
}

void sub_F96A28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_F960B4(va);
  _Unwind_Resume(a1);
}

void sub_F96A8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  if ((v5 - v6) >= 0x7FFFFFFFFFFFFFFLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  v10 = *(a1 + 96);
  if (!v6 || *(v10 + 32 * a3) != *(a1 + 32))
  {
    *(a1 + 48) = v5 + 1;
    v11 = v10 + 32 * a3;
    v13 = (v11 + 8);
    v12 = *(v11 + 8);
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(a1 + 40) = v6 - 1;
  v11 = v10 + 32 * a3;
  v13 = (v11 + 8);
  v12 = *(v11 + 8);
  if (v12)
  {
LABEL_7:
    *(v11 + 16) = v12;
    operator delete(v12);
  }

LABEL_8:
  *v11 = *a2;
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  v15 = *(a2 + 8);
  v14 = *(a2 + 16);
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v16 = *(a1 + 96);
  v17 = v16 + 32 * a3;
  v18 = v16 + 32 * *(a1 + 56);
  *a4 = a1;
  a4[1] = v17;
  a4[2] = v18;
}

void sub_F96BFC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (!*v2)
  {
    _Unwind_Resume(exception_object);
  }

  *(v1 + 16) = v4;
  operator delete(v4);
  _Unwind_Resume(exception_object);
}

uint64_t sub_F96C20(uint64_t a1)
{
  v2 = *(a1 + 48) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 56), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = v2;
    do
    {
      v7 = v5;
      v5 >>= 1;
    }

    while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
    sub_F96FB0(v13, a1, v5);
    sub_F96D44(a1, v13);
    v8 = v17;
    if (v17)
    {
      v9 = v14;
      if (v14)
      {
        v10 = 0;
        do
        {
          v11 = *(v17 + v10 + 8);
          if (v11)
          {
            *(v17 + v10 + 16) = v11;
            operator delete(v11);
          }

          v10 += 32;
          --v9;
        }

        while (v9);
        v8 = v17;
      }

      free(v8);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_F96D30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_F960B4(va);
  _Unwind_Resume(a1);
}

uint64x2_t sub_F96D44(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 16);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *a2 = v5;
  *(a2 + 16) = v4;
  v7 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v7;
  v9 = (a1 + 72);
  v8 = *(a1 + 72);
  v10 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v10;
  v11 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v11;
  v12 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v12;
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  if (v14 != v8)
  {
    if (((v14 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v8)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
  }

  *(a1 + 64) = *(a2 + 64);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  v16 = *(a2 + 72);
  v15 = *(a2 + 80);
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v16)
  {
    *(a2 + 80) = v16;
    operator delete(v16);
  }

  *(a2 + 64) = v13;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  v17 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v17;
  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 56))));
  *(a1 + 24) = 0;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a2 + 16), *(a2 + 56))));
  *a2 = result;
  *(a2 + 24) = 0;
  return result;
}

void sub_F96F74(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F96FB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v7 = *(a2 + 72);
  v6 = *(a2 + 80);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 96) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 56))));
    *(a1 + 24) = 0;
    sub_F9718C(a1, a2, a3);
  }

  else
  {
    v8 = 4;
    if (a3 > 4)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v9 = *(a1 + 16) * v8;
      if (*(a2 + 48) - *(a2 + 40) < v9)
      {
        break;
      }

      do
      {
LABEL_8:
        if ((v8 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v8 *= 2;
      }

      while (v8 < a3);
    }

    *(a1 + 56) = v8;
    v10 = *(a1 + 20) * v8;
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_F9715C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_F9718C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a2 + 48) - *(a2 + 40);
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (*(a1 + 16) * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_F97440(a1, v6);
  v7 = *(a2 + 56);
  if (v7)
  {
    v8 = *(a2 + 64);
    if (*(a2 + 40))
    {
      v9 = 32 * v7;
      v10 = *(a2 + 96);
      while (1)
      {
        v11 = *v10;
        if (v11 != v8 && v11 != *(a2 + 32))
        {
          break;
        }

        v10 += 16;
        v9 -= 32;
        if (!v9)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v27 = 32 * v7;
      v10 = *(a2 + 96);
      while (*v10 == v8)
      {
        v10 += 16;
        v27 -= 32;
        if (!v27)
        {
          goto LABEL_43;
        }
      }
    }
  }

  else
  {
    v10 = *(a2 + 96);
  }

  v13 = *(a2 + 96) + 32 * v7;
  if (v10 != v13)
  {
    do
    {
      v14 = *(a1 + 56) - 1;
      v15 = *v10;
      v16 = *(a1 + 96);
      v17 = *(a1 + 64);
      v18 = v14 & v15;
      if (*(v16 + 32 * (v14 & v15)) != v17)
      {
        v19 = 1;
        do
        {
          v18 = (v18 + v19++) & v14;
        }

        while (*(v16 + 32 * v18) != v17);
      }

      v20 = v16 + 32 * v18;
      v21 = *(v20 + 8);
      if (v21)
      {
        *(v20 + 16) = v21;
        operator delete(v21);
        LOWORD(v15) = *v10;
      }

      *v20 = v15;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 8) = 0;
      v23 = *(v10 + 1);
      v22 = *(v10 + 2);
      if (v22 != v23)
      {
        if (((v22 - v23) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      ++*(a1 + 48);
      v10 += 16;
      if (v10 != v13)
      {
        v24 = *(a2 + 64);
        if (*(a2 + 40))
        {
          do
          {
            v25 = *v10;
            if (v25 != v24 && v25 != *(a2 + 32))
            {
              break;
            }

            v10 += 16;
          }

          while (v10 != v13);
        }

        else
        {
          do
          {
            if (*v10 != v24)
            {
              break;
            }

            v10 += 16;
          }

          while (v10 != v13);
        }
      }
    }

    while (v10 != (*(a2 + 96) + 32 * *(a2 + 56)));
  }

LABEL_43:
  ++*(a1 + 28);
}

void sub_F9740C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64x2_t sub_F97440(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 96);
  if (!v4)
  {
    v4 = malloc_type_malloc(32 * a2, 0x102004084B5A0ACuLL);
LABEL_12:
    *(a1 + 96) = v4;
    goto LABEL_13;
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v6 = 0;
  do
  {
    v7 = *(a1 + 96) + v6;
    v8 = *(v7 + 8);
    if (v8)
    {
      *(v7 + 16) = v8;
      operator delete(v8);
    }

    v6 += 32;
    --v5;
  }

  while (v5);
  v4 = *(a1 + 96);
  if (*(a1 + 56) != a2)
  {
LABEL_11:
    v9 = v4;
    v4 = malloc_type_realloc(v4, 32 * a2, 0x102004084B5A0ACuLL);
    if (!v4)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v9);
      exit(1);
    }

    goto LABEL_12;
  }

LABEL_13:
  sub_F963E4(v4, v4 + 32 * a2, a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

double sub_F97568(uint64_t a1)
{
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 760) = 0;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 768) = &unk_2290750;
  *(a1 + 808) = 0;
  *(a1 + 792) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 816) = &unk_2290750;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 864) = &unk_2290750;
  *(a1 + 904) = 0;
  *(a1 + 888) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 912) = &unk_2290750;
  *(a1 + 952) = 0;
  *(a1 + 936) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 960) = &unk_2290750;
  *(a1 + 1000) = 0;
  *(a1 + 984) = 0;
  *(a1 + 968) = 0u;
  *(a1 + 1008) = &unk_2290750;
  *(a1 + 1048) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1056) = &unk_2290750;
  *(a1 + 1096) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1064) = 0u;
  *(a1 + 1104) = &unk_2290750;
  *(a1 + 1144) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1152) = &unk_2290750;
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1160) = 0u;
  *(a1 + 1200) = &unk_2290750;
  *(a1 + 1240) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1208) = 0u;
  *(a1 + 1248) = &unk_2290750;
  *(a1 + 1288) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1256) = 0u;
  *(a1 + 1296) = &unk_2290750;
  *(a1 + 1336) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1304) = 0u;
  *(a1 + 1344) = &unk_2290750;
  *(a1 + 1384) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1352) = 0u;
  *(a1 + 1392) = &unk_2290750;
  *(a1 + 1432) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1400) = 0u;
  *(a1 + 1440) = &unk_2290750;
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1448) = 0u;
  *(a1 + 1488) = &unk_2290750;
  *(a1 + 1528) = 0;
  *(a1 + 1512) = 0;
  *(a1 + 1496) = 0u;
  *(a1 + 1536) = &unk_2290750;
  *(a1 + 1576) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1544) = 0u;
  *(a1 + 1584) = &unk_2290750;
  *(a1 + 1624) = 0;
  *(a1 + 1608) = 0;
  *(a1 + 1592) = 0u;
  *(a1 + 1632) = &unk_2290750;
  *(a1 + 1672) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1640) = 0u;
  *(a1 + 1680) = &unk_2290750;
  *(a1 + 1720) = 0;
  *(a1 + 1704) = 0;
  *(a1 + 1688) = 0u;
  *(a1 + 1728) = &unk_2290750;
  *(a1 + 1768) = 0;
  *(a1 + 1752) = 0;
  *(a1 + 1736) = 0u;
  return result;
}

void sub_F977FC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_F97568(a2);
  v4 = *(sub_10E2C7C(a1) + 120);
  v117 = a1;
  v5 = *(sub_10E2C7C(a1) + 128);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      if (sub_10DF6A4(v4))
      {
        v7 = sub_10DF6C4(v4);
        v8 = *(v7 + 16);
        v123 = *v7;
        v124 = v8;
        v9 = *(v7 + 32);
        v10 = *(v7 + 56);
        v121 = *(v7 + 40);
        v122 = v10;
        v11 = *(v7 + 72);
        v12 = *(v7 + 80);
        v13 = *(v7 + 88);
        v120[0] = *(v7 + 89);
        *(v120 + 3) = *(v7 + 92);
        v118 = v12;
        v14 = v12;
        v15 = (((v9 >> 16) & 0xFFFF0000 | (v9 << 32) | (2 * ((v9 & 0xFF000000000000) == 0))) + 4 * v12) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
        *v133 = v15;
        sub_F98EF8((a2 + 126), v133, v125);
        if (*v125)
        {
          sub_40D9F8((a2 + 126), v133, v125);
          if (v125[16] == 1)
          {
            v16 = *(*v125 + 8) + 16 * *&v125[8];
            *v16 = *v133;
            *(v16 + 8) = -1;
          }
        }

        else
        {
          sub_40D9F8((a2 + 126), v133, v125);
          v18 = *(*v125 + 8) + 16 * *&v125[8];
          if (v125[16] == 1)
          {
            *v18 = *v133;
            *(v18 + 8) = -1;
          }

          *(v18 + 8) = v6++;
        }

        v19 = (((v11 >> 16) & 0xFFFF0000 | (v11 << 32) | (2 * ((v11 & 0xFF000000000000) == 0))) + ((v14 >> 14) & 0x3FFFC)) & 0xFFFFFFFFFFFFFFFELL | (v13 >> 1) & 1;
        *v133 = v19;
        sub_F98EF8((a2 + 126), v133, v125);
        if (*v125)
        {
          sub_40D9F8((a2 + 126), v133, v125);
          if (v125[16] == 1)
          {
            v20 = *(*v125 + 8) + 16 * *&v125[8];
            *v20 = *v133;
            *(v20 + 8) = -1;
          }
        }

        else
        {
          sub_40D9F8((a2 + 126), v133, v125);
          v22 = *(*v125 + 8) + 16 * *&v125[8];
          if (v125[16] == 1)
          {
            *v22 = *v133;
            *(v22 + 8) = -1;
          }

          *(v22 + 8) = v6++;
        }

        *v133 = v15;
        sub_40D9F8((a2 + 126), v133, v125);
        v23 = *(*v125 + 8) + 16 * *&v125[8];
        if (v125[16] == 1)
        {
          *v23 = *v133;
          *(v23 + 8) = -1;
        }

        v24 = *(v23 + 8);
        *v133 = v19;
        sub_40D9F8((a2 + 126), v133, v125);
        v25 = *(*v125 + 8) + 16 * *&v125[8];
        if (v125[16] == 1)
        {
          *v25 = *v133;
          *(v25 + 8) = -1;
        }

        v26 = *(v25 + 8);
        v27 = a2[12];
        v28 = a2[13] - v27;
        if (v24 >= (v28 >> 2) || v26 >= (v28 >> 2))
        {
          goto LABEL_33;
        }

        if (v24 >= v28 >> 2)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          v116 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
        }

        v29 = *(v27 + 4 * v24);
        if (v29 == -1)
        {
LABEL_33:
          *&v133[4] = v123;
          *&v133[20] = v124;
          if (v26 <= v24)
          {
            v30 = v24;
          }

          else
          {
            v30 = v26;
          }

          sub_F98CE4(a2, v30);
          *v125 = v26;
          *&v125[4] = *v133;
          *&v125[20] = *&v133[16];
          *&v125[36] = *&v133[32];
          v127 = v121;
          v128 = v122;
          v126 = v9;
          v129 = v11;
          v130 = v118;
          v131 = v13;
          *v132 = v120[0];
          *&v132[3] = *(v120 + 3);
          sub_F9AD10(a2 + 12, v24, v125, v119);
          ++*(a2[21] + 4 * v24);
        }

        else
        {
          while (*(a2[15] + 104 * v29) != v26)
          {
            v29 = *(a2[18] + 4 * v29);
            if (v29 == -1)
            {
              goto LABEL_33;
            }
          }
        }
      }

      else
      {
        *v133 = *sub_10DF6E4(v4);
        sub_F98EF8((a2 + 126), v133, v125);
        if (*v125)
        {
          sub_40D9F8((a2 + 126), v133, v125);
          if (v125[16] == 1)
          {
            v17 = *(*v125 + 8) + 16 * *&v125[8];
            *v17 = *v133;
            *(v17 + 8) = -1;
          }
        }

        else
        {
          sub_40D9F8((a2 + 126), v133, v125);
          v21 = *(*v125 + 8) + 16 * *&v125[8];
          if (v125[16] == 1)
          {
            *v21 = *v133;
            *(v21 + 8) = -1;
          }

          *(v21 + 8) = v6++;
        }
      }

      v4 += 176;
    }

    while (v4 != v5);
  }

  v31 = sub_3068E4(v117);
  sub_F98648(a2, v117, v31, 1);
  v32 = sub_10E2C84(v117);
  sub_F98648(a2, v117, v32, 2);
  v33 = sub_10E2C8C(v117);
  sub_F98934(a2, v117, v33, 5);
  v34 = a2[28] - a2[27];
  if (v34)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 6);
    do
    {
      v39 = a2[27] + v35;
      v40 = *(v39 + 4);
      *v133 = v40;
      v41 = *(v39 + 96);
      LODWORD(v123) = v41;
      if (v40 != -1)
      {
        sub_F9AFE4((a2 + 30), v133, v125);
        v42 = *v125;
        if (v125[16] == 1)
        {
          v43 = *(*v125 + 8) + 32 * *&v125[8];
          *v43 = *v133;
          *(v43 + 16) = 0;
          *(v43 + 24) = 0;
          *(v43 + 8) = 0;
        }

        v44 = (*(v42 + 8) + 32 * *&v125[8]);
        v46 = v44[2];
        v45 = v44[3];
        if (v46 >= v45)
        {
          v48 = v44[1];
          v49 = v46 - v48;
          v50 = (v46 - v48) >> 1;
          if (v50 <= -2)
          {
            goto LABEL_138;
          }

          v51 = v45 - v48;
          if (v51 <= v50 + 1)
          {
            v52 = v50 + 1;
          }

          else
          {
            v52 = v51;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v53 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v52;
          }

          if (v53)
          {
            if ((v53 & 0x8000000000000000) == 0)
            {
              operator new();
            }

LABEL_139:
            sub_1808();
          }

          v54 = (v46 - v48) >> 1;
          v55 = (2 * v50);
          v56 = (2 * v50 - 2 * v54);
          *v55 = v36;
          v47 = v55 + 1;
          memcpy(v56, v48, v49);
          v44[1] = v56;
          v44[2] = v47;
          v44[3] = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        else
        {
          *v46 = v36;
          v47 = v46 + 2;
        }

        v44[2] = v47;
        v41 = v123;
        v40 = *v133;
      }

      if (v41 != -1 && v41 != v40)
      {
        sub_F9AFE4((a2 + 30), &v123, v125);
        v58 = *v125;
        if (v125[16] == 1)
        {
          v59 = *(*v125 + 8) + 32 * *&v125[8];
          *v59 = v123;
          *(v59 + 16) = 0;
          *(v59 + 24) = 0;
          *(v59 + 8) = 0;
        }

        v60 = (*(v58 + 8) + 32 * *&v125[8]);
        v62 = v60[2];
        v61 = v60[3];
        if (v62 < v61)
        {
          *v62 = v36;
          v38 = v62 + 2;
        }

        else
        {
          v63 = v60[1];
          v64 = v62 - v63;
          v65 = (v62 - v63) >> 1;
          if (v65 < -1)
          {
LABEL_138:
            sub_1794();
          }

          v66 = v61 - v63;
          if (v66 <= v65 + 1)
          {
            v67 = v65 + 1;
          }

          else
          {
            v67 = v66;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v68 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v68 = v67;
          }

          if (v68)
          {
            if ((v68 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_139;
          }

          v69 = (v62 - v63) >> 1;
          v70 = (2 * v65);
          v71 = (2 * v65 - 2 * v69);
          *v70 = v36;
          v38 = v70 + 1;
          memcpy(v71, v63, v64);
          v60[1] = v71;
          v60[2] = v38;
          v60[3] = 0;
          if (v63)
          {
            operator delete(v63);
          }
        }

        v60[2] = v38;
      }

      ++v36;
      v35 += 192;
    }

    while (v37 != v36);
  }

  v72 = a2 + 126;
  v73 = a2[126];
  v74 = a2[127];
  v75 = *v73;
  v76 = v74;
  v77 = v73;
  if (v75 <= -2)
  {
    v76 = a2[127];
    v77 = a2[126];
    do
    {
      v78 = (__clz(__rbit64(((*v77 >> 7) & ~*v77 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v77 = (v77 + v78);
      v76 += 16 * v78;
    }

    while (*v77 < -1);
  }

  v79 = &v73[a2[129]];
  if (v77 == v79)
  {
    v106 = 6;
    v80 = 1056;
    v107 = a2 + 126;
    while (1)
    {
      v108 = *(a2 + v80);
      v76 = v107[7];
      v77 = v108;
      if (*v108 <= -2)
      {
        do
        {
          v109 = (__clz(__rbit64(((*v77 >> 7) & ~*v77 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v77 = (v77 + v109);
          v76 += 16 * v109;
        }

        while (*v77 < -1);
      }

      v79 = &v108[v107[9]];
      if (v77 != v79)
      {
        break;
      }

      v107 = &v72[v106];
      v80 = v106 * 8 + 1056;
      v106 += 6;
      if (v106 == 96)
      {
        v81 = 0;
        v101 = a2 + 222;
        if (v75 <= -2)
        {
          goto LABEL_114;
        }

        goto LABEL_124;
      }
    }
  }

  else
  {
    v80 = 1008;
  }

  v81 = 0;
  while (1)
  {
    v82 = v81;
    v83 = *v76;
    v84 = *(v76 + 8);
    v85 = a2[24];
    v86 = a2[13] - a2[12];
    v87 = v86 >> 2;
    v88 = v86 >> 2;
    if (0xAAAAAAAAAAAAAAABLL * ((a2[25] - v85) >> 3) < v87 || v88 <= v84)
    {
      sub_F98CE4(a2, *(v76 + 8));
      v90 = (a2[13] - a2[12]) >> 2;
      *v125 = 0;
      *&v125[8] = 0;
      *&v125[16] = -1;
      v85 = a2[24];
      v91 = 0xAAAAAAAAAAAAAAABLL * ((a2[25] - v85) >> 3);
      if (v90 <= v91)
      {
        if (v90 < v91)
        {
          a2[25] = v85 + 24 * v90;
        }
      }

      else
      {
        sub_F9B6DC((a2 + 24), v90 - v91, v125);
        v85 = a2[24];
      }
    }

    *(v85 + 24 * v84) = v83;
    if (v83 == (v83 & 0xFFFFFFFFFFFF0002))
    {
      v81 = v82;
      v72 = a2 + 126;
      v92 = *(v77 + 1);
      v77 = (v77 + 1);
      v76 += 16;
      if (v92 > -2)
      {
        goto LABEL_103;
      }

      do
      {
LABEL_102:
        v95 = (__clz(__rbit64(((*v77 >> 7) & ~*v77 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v77 = (v77 + v95);
        v76 += 16 * v95;
      }

      while (*v77 < -1);
      goto LABEL_103;
    }

    v93 = v82 >> 4;
    if (((v82 >> 4) + 1) >> 60)
    {
      sub_1794();
    }

    if (v82 >> 4 != -1)
    {
      if (!(((v82 >> 4) + 1) >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v94 = 16 * v93;
    *v94 = v83 & 0xFFFFFFFFFFFF0002;
    *(v94 + 8) = v84;
    v81 = 16 * v93 + 16;
    memcpy(0, 0, v82);
    v72 = a2 + 126;
    v100 = *(v77 + 1);
    v77 = (v77 + 1);
    v76 += 16;
    if (v100 <= -2)
    {
      goto LABEL_102;
    }

LABEL_103:
    if (v77 == v79)
    {
      break;
    }

LABEL_85:
    if (!a2)
    {
      goto LABEL_113;
    }
  }

  if (v80 != 1728)
  {
    v96 = a2 + v80;
    v80 += 48;
    do
    {
      v97 = a2 + v80;
      v98 = *(a2 + v80);
      v76 = *(v96 + 7);
      v77 = v98;
      if (*v98 <= -2)
      {
        do
        {
          v99 = (__clz(__rbit64(((*v77 >> 7) & ~*v77 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v77 = (v77 + v99);
          v76 += 16 * v99;
        }

        while (*v77 < -1);
      }

      v79 = &v98[*(v96 + 9)];
      if (v77 != v79)
      {
        goto LABEL_85;
      }

      v80 += 48;
      v96 = v97;
    }

    while (v80 != 1776);
  }

LABEL_113:
  v73 = a2[126];
  v74 = a2[127];
  v101 = a2 + 222;
  if (*v73 <= -2)
  {
LABEL_114:
    v102 = v73;
    do
    {
      v103 = (__clz(__rbit64(((*v102 >> 7) & ~*v102 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v102 += v103;
      v74 += 16 * v103;
    }

    while (*v102 < -1);
    v104 = &v73[a2[129]];
    v105 = v72;
    if (v102 == v104)
    {
      goto LABEL_125;
    }

    goto LABEL_134;
  }

LABEL_124:
  v102 = v73;
  v104 = &v73[a2[129]];
  v105 = v72;
  if (v102 == v104)
  {
LABEL_125:
    v105 = a2 + 132;
    v110 = 6;
    v111 = v72;
    do
    {
      v112 = *v105;
      v74 = v111[7];
      if (**v105 > -2)
      {
        v102 = *v105;
        v104 = &v112[v111[9]];
        if (v112 != v104)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v102 = *v105;
        do
        {
          v113 = (__clz(__rbit64(((*v102 >> 7) & ~*v102 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v102 += v113;
          v74 += 16 * v113;
        }

        while (*v102 < -1);
        v104 = &v112[v111[9]];
        if (v102 != v104)
        {
          goto LABEL_134;
        }
      }

      v111 = &v72[v110];
      v110 += 6;
      v105 = &v72[v110];
    }

    while (v110 != 96);
    v105 = 0;
    v104 = v102;
  }

LABEL_134:
  *v125 = v72;
  *&v125[8] = v105;
  *&v125[16] = v101;
  *&v125[24] = v102;
  *&v125[32] = v74;
  v126 = v104;
  if (v81)
  {
    for (i = 0; i != v81; i += 16)
    {
      *v133 = *i;
      *&v133[8] = *(i + 8);
      sub_F9AA00(v125, v133);
    }
  }
}

void sub_F98538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    sub_F96138(v11);
    _Unwind_Resume(a1);
  }

  sub_F96138(v11);
  _Unwind_Resume(a1);
}

void sub_F98648(void *a1, uint64_t a2, uint64_t *a3, char a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    do
    {
      if (*(v4 + 8) && (v32[0] = *(v4 + 8), sub_F98EF8((a1 + 126), v32, &v26), v26))
      {
        v8 = *(*(&v27 + 1) + 8);
        v9 = *(v4 + 104);
        if (!v9)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v8 = -1;
        v9 = *(v4 + 104);
        if (!v9)
        {
          goto LABEL_12;
        }
      }

      v32[0] = v9;
      sub_F98EF8((a1 + 126), v32, &v26);
      if (!v26)
      {
LABEL_12:
        v10 = -1;
        goto LABEL_13;
      }

      v10 = *(*(&v27 + 1) + 8);
LABEL_13:
      v11 = *(v4 + 64);
      v28 = *(v4 + 48);
      v12 = *(v4 + 80);
      v29 = v11;
      v30 = v12;
      v31 = *(v4 + 96);
      v13 = *(v4 + 32);
      v26 = *(v4 + 16);
      v27 = v13;
      *&v25[36] = *(v4 + 144);
      *&v25[52] = *(v4 + 160);
      *&v25[68] = *(v4 + 176);
      *&v25[4] = *(v4 + 112);
      *&v25[84] = *(v4 + 192);
      *&v25[20] = *(v4 + 128);
      v14 = a1[28];
      v15 = a1[29];
      if (v14 < v15)
      {
        *v14 = a4;
        *(v14 + 4) = v8;
        *(v14 + 40) = v28;
        *(v14 + 56) = v29;
        *(v14 + 72) = v30;
        *(v14 + 88) = v31;
        *(v14 + 8) = v26;
        *(v14 + 24) = v27;
        *(v14 + 96) = v10;
        *(v14 + 116) = *&v25[16];
        *(v14 + 100) = *v25;
        *(v14 + 176) = *&v25[76];
        *(v14 + 164) = *&v25[64];
        *(v14 + 148) = *&v25[48];
        *(v14 + 132) = *&v25[32];
        v7 = v14 + 192;
      }

      else
      {
        v16 = a1[27];
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v16) >> 6) + 1;
        if (v17 > 0x155555555555555)
        {
          sub_1794();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 6);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0xAAAAAAAAAAAAAALL)
        {
          v19 = 0x155555555555555;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (v19 <= 0x155555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v20 = (v14 - v16) >> 6 << 6;
        *v20 = a4;
        *(v20 + 4) = v8;
        *(v20 + 40) = v28;
        v21 = v30;
        *(v20 + 56) = v29;
        *(v20 + 72) = v21;
        *(v20 + 88) = v31;
        v22 = v27;
        *(v20 + 8) = v26;
        *(v20 + 24) = v22;
        *(v20 + 96) = v10;
        *(v20 + 116) = *&v25[16];
        *(v20 + 100) = *v25;
        *(v20 + 176) = *&v25[76];
        *(v20 + 164) = *&v25[64];
        *(v20 + 148) = *&v25[48];
        v7 = v20 + 192;
        v23 = (v20 - (v14 - v16));
        *(v20 + 132) = *&v25[32];
        memcpy(v23, v16, v14 - v16);
        a1[27] = v23;
        a1[28] = v7;
        a1[29] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      a1[28] = v7;
      v4 += 200;
    }

    while (v4 != v5);
  }
}

void sub_F98934(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3[57];
  v8 = a3[31];
  v9 = v7 + 200 * v8;
  if (v8)
  {
    v10 = 200 * v8;
    while (sub_1106280((a3 + 32), v7) || a3[29] && sub_1106280((a3 + 4), v7))
    {
      v7 += 200;
      v10 -= 200;
      if (!v10)
      {
        v7 = v9;
        break;
      }
    }

    v11 = v7;
    v12 = a3[57] + 200 * a3[31];
    if (v11 != v12)
    {
      v30 = a3[57] + 200 * a3[31];
      do
      {
        if (*(v11 + 8) && (v38[0] = *(v11 + 8), sub_F98EF8((a1 + 126), v38, &v32), v32))
        {
          v13 = *(*(&v33 + 1) + 8);
          v14 = *(v11 + 104);
          if (!v14)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v13 = -1;
          v14 = *(v11 + 104);
          if (!v14)
          {
            goto LABEL_20;
          }
        }

        v38[0] = v14;
        sub_F98EF8((a1 + 126), v38, &v32);
        if (!v32)
        {
LABEL_20:
          v15 = -1;
          goto LABEL_21;
        }

        v15 = *(*(&v33 + 1) + 8);
LABEL_21:
        v16 = *(v11 + 64);
        v34 = *(v11 + 48);
        v17 = *(v11 + 80);
        v35 = v16;
        v36 = v17;
        v37 = *(v11 + 96);
        v18 = *(v11 + 32);
        v32 = *(v11 + 16);
        v33 = v18;
        *&v31[36] = *(v11 + 144);
        *&v31[52] = *(v11 + 160);
        *&v31[68] = *(v11 + 176);
        *&v31[4] = *(v11 + 112);
        *&v31[84] = *(v11 + 192);
        *&v31[20] = *(v11 + 128);
        v19 = a1[28];
        v20 = a1[29];
        if (v19 >= v20)
        {
          v22 = a1[27];
          v23 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v22) >> 6) + 1;
          if (v23 > 0x155555555555555)
          {
            sub_1794();
          }

          v24 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v22) >> 6);
          if (2 * v24 > v23)
          {
            v23 = 2 * v24;
          }

          if (v24 >= 0xAAAAAAAAAAAAAALL)
          {
            v25 = 0x155555555555555;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            if (v25 <= 0x155555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v26 = (v19 - v22) >> 6 << 6;
          *v26 = a4;
          *(v26 + 4) = v13;
          *(v26 + 40) = v34;
          v27 = v36;
          *(v26 + 56) = v35;
          *(v26 + 72) = v27;
          *(v26 + 88) = v37;
          v28 = v33;
          *(v26 + 8) = v32;
          *(v26 + 24) = v28;
          *(v26 + 96) = v15;
          *(v26 + 116) = *&v31[16];
          *(v26 + 100) = *v31;
          *(v26 + 176) = *&v31[76];
          *(v26 + 164) = *&v31[64];
          *(v26 + 148) = *&v31[48];
          v21 = v26 + 192;
          v29 = (v26 - (v19 - v22));
          *(v26 + 132) = *&v31[32];
          memcpy(v29, v22, v19 - v22);
          a1[27] = v29;
          a1[28] = v21;
          a1[29] = 0;
          if (v22)
          {
            operator delete(v22);
          }

          v12 = v30;
        }

        else
        {
          *v19 = a4;
          *(v19 + 4) = v13;
          *(v19 + 40) = v34;
          *(v19 + 56) = v35;
          *(v19 + 72) = v36;
          *(v19 + 88) = v37;
          *(v19 + 8) = v32;
          *(v19 + 24) = v33;
          *(v19 + 96) = v15;
          *(v19 + 116) = *&v31[16];
          *(v19 + 100) = *v31;
          *(v19 + 176) = *&v31[76];
          *(v19 + 164) = *&v31[64];
          *(v19 + 148) = *&v31[48];
          *(v19 + 132) = *&v31[32];
          v21 = v19 + 192;
        }

        a1[28] = v21;
        do
        {
          v11 += 200;
        }

        while (v11 != v9 && (sub_1106280((a3 + 32), v11) || a3[29] && sub_1106280((a3 + 4), v11)));
      }

      while (v11 != v12);
    }
  }
}

void sub_F98CE4(uint64_t *a1, unsigned int a2)
{
  v4 = a1[12];
  v5 = a1[13];
  v3 = (a1 + 12);
  v6 = v5 - v4;
  if (a2 >= (v6 >> 2))
  {
    v7 = a2;
    v8 = v6 >> 2;
    v9 = a2 + 1;
    if (v8 <= a2)
    {
      v18 = -1;
      if (v9 <= v8)
      {
        if (v9 < v8)
        {
          a1[13] = v4 + 4 * v9;
        }
      }

      else
      {
        sub_569AC(v3, v9 - v8, &v18);
      }
    }

    v10 = a1[21];
    v11 = a1[22];
    v18 = 0;
    v12 = (v11 - v10) >> 2;
    if (v9 <= v12)
    {
      if (v9 < v12)
      {
        a1[22] = v10 + 4 * v9;
      }
    }

    else
    {
      sub_569AC((a1 + 21), v9 - v12, &v18);
    }

    v13 = *a1;
    v14 = (a1[1] - *a1) >> 2;
    if (v14 <= v7)
    {
      v18 = -1;
      if (v9 <= v14)
      {
        if (v9 < v14)
        {
          a1[1] = v13 + 4 * v9;
        }
      }

      else
      {
        sub_569AC(a1, v9 - v14, &v18);
      }
    }

    v15 = a1[9];
    v16 = a1[10];
    v18 = 0;
    v17 = (v16 - v15) >> 2;
    if (v9 <= v17)
    {
      if (v9 < v17)
      {
        a1[10] = v15 + 4 * v9;
      }
    }

    else
    {
      sub_569AC((a1 + 9), v9 - v17, &v18);
    }
  }
}

uint64_t sub_F98E3C(void *a1, unsigned int a2)
{
  v2 = a1[13] - a1[12];
  if (a2 >= (v2 >> 2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v3 = v2 >> 2;
  v4 = a1[24];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[25] - v4) >> 3) < v3)
  {
    v8 = __cxa_allocate_exception(0x40uLL);
    v9 = sub_2D390(v8, "no or incomplete vertex data stored", 0x23uLL);
  }

  return v4 + 24 * a2;
}

uint64_t sub_F98EF8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v6 = (v5 ^ ~(v5 >> 47)) + ((v5 ^ (v5 >> 47)) << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = (result + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF));
  v10 = v8 >> 7;
  v11 = v9[3];
  v12 = *v9;
  v13 = 0x101010101010101 * (v8 & 0x7F);
  while (1)
  {
    v14 = v10 & v11;
    v15 = *(v12 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v12;
      a3[4] = 0;
      return result;
    }

    v3 += 8;
    v10 = v3 + v14;
  }

  v17 = v9[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v11;
    if (*(v17 + 16 * v18) == v4)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  v19 = v11 == v18;
  v20 = v12 + v18;
  v21 = v12 + v11;
  v22 = result + 768;
  if (v11 == v18)
  {
    v20 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v23 = v9;
  }

  if (v19)
  {
    v24 = a3;
  }

  else
  {
    v24 = (v17 + 16 * v18);
  }

  if (v19)
  {
    v25 = 0;
  }

  else
  {
    v25 = v21;
  }

  *a3 = v23;
  a3[1] = v22;
  a3[2] = v20;
  a3[3] = v24;
  a3[4] = v25;
  return result;
}

BOOL sub_F9903C(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = ~a2 + (a2 << 21);
  v4 = 21 * ((265 * (v3 ^ (v3 >> 24))) ^ ((265 * (v3 ^ (v3 >> 24))) >> 14));
  v5 = 2147483649u * (v4 ^ (v4 >> 28));
  v6 = a1 + 48 * (((((v4 ^ (v4 >> 28)) >> 8) ^ ((-2147483647 * (v4 ^ (v4 >> 28))) >> 16)) ^ ((-2147483647 * (v4 ^ (v4 >> 28))) >> 24)) & 0xF);
  v9 = *(v6 + 240);
  v7 = v6 + 240;
  v8 = v9;
  v10 = v5 >> 7;
  v11 = *(v7 + 24);
  v12 = 0x101010101010101 * (v5 & 0x7F);
  while (1)
  {
    v13 = v10 & v11;
    v14 = *(v8 + v13);
    v15 = ((v14 ^ v12) - 0x101010101010101) & ~(v14 ^ v12) & 0x8080808080808080;
    if (v15)
    {
      break;
    }

LABEL_5:
    if ((v14 & (~v14 << 6) & 0x8080808080808080) != 0)
    {
      return 0;
    }

    v2 += 8;
    v10 = v2 + v13;
  }

  while (1)
  {
    v16 = (v13 + (__clz(__rbit64(v15)) >> 3)) & v11;
    if (*(*(v7 + 8) + 32 * v16) == a2)
    {
      break;
    }

    v15 &= v15 - 1;
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  return v11 != v16;
}

uint64_t sub_F99154@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 224);
  *a2 = *(result + 216);
  a2[1] = v2;
  return result;
}

uint64_t sub_F99160@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == -1)
  {
    goto LABEL_10;
  }

  v3 = 0;
  v4 = ~a2 + (a2 << 21);
  v5 = 21 * ((265 * (v4 ^ (v4 >> 24))) ^ ((265 * (v4 ^ (v4 >> 24))) >> 14));
  v6 = 2147483649u * (v5 ^ (v5 >> 28));
  v7 = result + 48 * (((((v5 ^ (v5 >> 28)) >> 8) ^ ((-2147483647 * (v5 ^ (v5 >> 28))) >> 16)) ^ ((-2147483647 * (v5 ^ (v5 >> 28))) >> 24)) & 0xF);
  v10 = *(v7 + 240);
  v9 = v7 + 240;
  v8 = v10;
  v11 = v6 >> 7;
  v12 = *(v9 + 24);
  v13 = 0x101010101010101 * (v6 & 0x7F);
  for (i = v11; ; i = v3 + v15)
  {
    v15 = i & v12;
    v16 = *(v8 + (i & v12));
    v17 = ((v16 ^ v13) - 0x101010101010101) & ~(v16 ^ v13) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_7:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_10;
    }

    v3 += 8;
  }

  v18 = *(v9 + 8);
  while (1)
  {
    v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    if (*(v18 + 32 * v19) == a2)
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  if (v12 == v19)
  {
LABEL_10:
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    for (j = 0; ; v11 = j + v21)
    {
      v21 = v11 & v12;
      v22 = ((*(v8 + v21) ^ v13) - 0x101010101010101) & ~(*(v8 + v21) ^ v13) & 0x8080808080808080;
      if (v22)
      {
        break;
      }

LABEL_12:
      j += 8;
    }

    while (1)
    {
      v23 = (v21 + (__clz(__rbit64(v22)) >> 3)) & v12;
      if (*(v18 + 32 * v23) == a2)
      {
        break;
      }

      v22 &= v22 - 1;
      if (!v22)
      {
        goto LABEL_12;
      }
    }

    v24 = v18 + 32 * v23;
    v26 = *(v24 + 8);
    v25 = *(v24 + 16);
    *a3 = v26;
    *(a3 + 8) = result + 216;
    *(a3 + 16) = v25;
    *(a3 + 24) = result + 216;
  }

  return result;
}

unint64_t sub_F992C4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v3 = 0;
  v4 = ~a2 + (a2 << 21);
  v5 = 21 * ((265 * (v4 ^ (v4 >> 24))) ^ ((265 * (v4 ^ (v4 >> 24))) >> 14));
  v6 = 2147483649u * (v5 ^ (v5 >> 28));
  v7 = a1 + 48 * (((((v5 ^ (v5 >> 28)) >> 8) ^ ((-2147483647 * (v5 ^ (v5 >> 28))) >> 16)) ^ ((-2147483647 * (v5 ^ (v5 >> 28))) >> 24)) & 0xF);
  v10 = *(v7 + 240);
  v8 = v7 + 240;
  v9 = v10;
  v11 = v6 >> 7;
  v12 = *(v8 + 24);
  v13 = 0x101010101010101 * (v6 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(v9 + v14);
    result = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (result)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v3 += 8;
    v11 = v3 + v14;
  }

  v17 = *(v8 + 8);
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(result)) >> 3)) & v12;
    if (*(v17 + 32 * v18) == a2)
    {
      break;
    }

    result &= result - 1;
    if (!result)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  v19 = v17 + 32 * v18;
  v21 = *(v19 + 8);
  v20 = *(v19 + 16);
  *a3 = v21;
  a3[1] = v20;
  return result;
}

void sub_F993BC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_F97568(a2);
  v4 = *(sub_10E2C7C(a1) + 120);
  v117 = a1;
  v5 = *(sub_10E2C7C(a1) + 128);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      if (sub_10DF6A4(v4))
      {
        v7 = sub_10DF6C4(v4);
        v8 = *(v7 + 16);
        v123 = *v7;
        v124 = v8;
        v9 = *(v7 + 32);
        v10 = *(v7 + 56);
        v121 = *(v7 + 40);
        v122 = v10;
        v11 = *(v7 + 72);
        v12 = *(v7 + 80);
        v13 = *(v7 + 88);
        v120[0] = *(v7 + 89);
        *(v120 + 3) = *(v7 + 92);
        v118 = v12;
        v14 = v12;
        v15 = (((v9 >> 16) & 0xFFFF0000 | (v9 << 32) | (2 * ((v9 & 0xFF000000000000) == 0))) + 4 * v12) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
        *v133 = v15;
        sub_F98EF8((a2 + 126), v133, v125);
        if (*v125)
        {
          sub_40D9F8((a2 + 126), v133, v125);
          if (v125[16] == 1)
          {
            v16 = *(*v125 + 8) + 16 * *&v125[8];
            *v16 = *v133;
            *(v16 + 8) = -1;
          }
        }

        else
        {
          sub_40D9F8((a2 + 126), v133, v125);
          v18 = *(*v125 + 8) + 16 * *&v125[8];
          if (v125[16] == 1)
          {
            *v18 = *v133;
            *(v18 + 8) = -1;
          }

          *(v18 + 8) = v6++;
        }

        v19 = (((v11 >> 16) & 0xFFFF0000 | (v11 << 32) | (2 * ((v11 & 0xFF000000000000) == 0))) + ((v14 >> 14) & 0x3FFFC)) & 0xFFFFFFFFFFFFFFFELL | (v13 >> 1) & 1;
        *v133 = v19;
        sub_F98EF8((a2 + 126), v133, v125);
        if (*v125)
        {
          sub_40D9F8((a2 + 126), v133, v125);
          if (v125[16] == 1)
          {
            v20 = *(*v125 + 8) + 16 * *&v125[8];
            *v20 = *v133;
            *(v20 + 8) = -1;
          }
        }

        else
        {
          sub_40D9F8((a2 + 126), v133, v125);
          v22 = *(*v125 + 8) + 16 * *&v125[8];
          if (v125[16] == 1)
          {
            *v22 = *v133;
            *(v22 + 8) = -1;
          }

          *(v22 + 8) = v6++;
        }

        *v133 = v15;
        sub_40D9F8((a2 + 126), v133, v125);
        v23 = *(*v125 + 8) + 16 * *&v125[8];
        if (v125[16] == 1)
        {
          *v23 = *v133;
          *(v23 + 8) = -1;
        }

        v24 = *(v23 + 8);
        *v133 = v19;
        sub_40D9F8((a2 + 126), v133, v125);
        v25 = *(*v125 + 8) + 16 * *&v125[8];
        if (v125[16] == 1)
        {
          *v25 = *v133;
          *(v25 + 8) = -1;
        }

        v26 = *(v25 + 8);
        v27 = a2[12];
        v28 = a2[13] - v27;
        if (v24 >= (v28 >> 2) || v26 >= (v28 >> 2))
        {
          goto LABEL_33;
        }

        if (v24 >= v28 >> 2)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          v116 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
        }

        v29 = *(v27 + 4 * v24);
        if (v29 == -1)
        {
LABEL_33:
          *&v133[4] = v123;
          *&v133[20] = v124;
          if (v26 <= v24)
          {
            v30 = v24;
          }

          else
          {
            v30 = v26;
          }

          sub_F98CE4(a2, v30);
          *v125 = v26;
          *&v125[4] = *v133;
          *&v125[20] = *&v133[16];
          *&v125[36] = *&v133[32];
          v127 = v121;
          v128 = v122;
          v126 = v9;
          v129 = v11;
          v130 = v118;
          v131 = v13;
          *v132 = v120[0];
          *&v132[3] = *(v120 + 3);
          sub_F9AD10(a2 + 12, v24, v125, v119);
          ++*(a2[21] + 4 * v24);
        }

        else
        {
          while (*(a2[15] + 104 * v29) != v26)
          {
            v29 = *(a2[18] + 4 * v29);
            if (v29 == -1)
            {
              goto LABEL_33;
            }
          }
        }
      }

      else
      {
        *v133 = *sub_10DF6E4(v4);
        sub_F98EF8((a2 + 126), v133, v125);
        if (*v125)
        {
          sub_40D9F8((a2 + 126), v133, v125);
          if (v125[16] == 1)
          {
            v17 = *(*v125 + 8) + 16 * *&v125[8];
            *v17 = *v133;
            *(v17 + 8) = -1;
          }
        }

        else
        {
          sub_40D9F8((a2 + 126), v133, v125);
          v21 = *(*v125 + 8) + 16 * *&v125[8];
          if (v125[16] == 1)
          {
            *v21 = *v133;
            *(v21 + 8) = -1;
          }

          *(v21 + 8) = v6++;
        }
      }

      v4 += 176;
    }

    while (v4 != v5);
  }

  v31 = sub_3068E4(v117);
  sub_F9A210(a2, v117, v31, 1);
  v32 = sub_10E2C84(v117);
  sub_F9A210(a2, v117, v32, 2);
  v33 = sub_10E2C8C(v117);
  sub_F9A594(a2, v117, v33, 5);
  v34 = a2[28] - a2[27];
  if (v34)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0x4EC4EC4EC4EC4EC5 * (v34 >> 4);
    do
    {
      v39 = a2[27] + v35;
      v40 = *(v39 + 20);
      *v133 = v40;
      v41 = *(v39 + 112);
      LODWORD(v123) = v41;
      if (v40 != -1)
      {
        sub_F9AFE4((a2 + 30), v133, v125);
        v42 = *v125;
        if (v125[16] == 1)
        {
          v43 = *(*v125 + 8) + 32 * *&v125[8];
          *v43 = *v133;
          *(v43 + 16) = 0;
          *(v43 + 24) = 0;
          *(v43 + 8) = 0;
        }

        v44 = (*(v42 + 8) + 32 * *&v125[8]);
        v46 = v44[2];
        v45 = v44[3];
        if (v46 >= v45)
        {
          v48 = v44[1];
          v49 = v46 - v48;
          v50 = (v46 - v48) >> 1;
          if (v50 <= -2)
          {
            goto LABEL_138;
          }

          v51 = v45 - v48;
          if (v51 <= v50 + 1)
          {
            v52 = v50 + 1;
          }

          else
          {
            v52 = v51;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v53 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v52;
          }

          if (v53)
          {
            if ((v53 & 0x8000000000000000) == 0)
            {
              operator new();
            }

LABEL_139:
            sub_1808();
          }

          v54 = (v46 - v48) >> 1;
          v55 = (2 * v50);
          v56 = (2 * v50 - 2 * v54);
          *v55 = v36;
          v47 = v55 + 1;
          memcpy(v56, v48, v49);
          v44[1] = v56;
          v44[2] = v47;
          v44[3] = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        else
        {
          *v46 = v36;
          v47 = v46 + 2;
        }

        v44[2] = v47;
        v41 = v123;
        v40 = *v133;
      }

      if (v41 != -1 && v41 != v40)
      {
        sub_F9AFE4((a2 + 30), &v123, v125);
        v58 = *v125;
        if (v125[16] == 1)
        {
          v59 = *(*v125 + 8) + 32 * *&v125[8];
          *v59 = v123;
          *(v59 + 16) = 0;
          *(v59 + 24) = 0;
          *(v59 + 8) = 0;
        }

        v60 = (*(v58 + 8) + 32 * *&v125[8]);
        v62 = v60[2];
        v61 = v60[3];
        if (v62 < v61)
        {
          *v62 = v36;
          v38 = v62 + 2;
        }

        else
        {
          v63 = v60[1];
          v64 = v62 - v63;
          v65 = (v62 - v63) >> 1;
          if (v65 < -1)
          {
LABEL_138:
            sub_1794();
          }

          v66 = v61 - v63;
          if (v66 <= v65 + 1)
          {
            v67 = v65 + 1;
          }

          else
          {
            v67 = v66;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v68 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v68 = v67;
          }

          if (v68)
          {
            if ((v68 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_139;
          }

          v69 = (v62 - v63) >> 1;
          v70 = (2 * v65);
          v71 = (2 * v65 - 2 * v69);
          *v70 = v36;
          v38 = v70 + 1;
          memcpy(v71, v63, v64);
          v60[1] = v71;
          v60[2] = v38;
          v60[3] = 0;
          if (v63)
          {
            operator delete(v63);
          }
        }

        v60[2] = v38;
      }

      ++v36;
      v35 += 208;
    }

    while (v37 != v36);
  }

  v72 = a2 + 126;
  v73 = a2[126];
  v74 = a2[127];
  v75 = *v73;
  v76 = v74;
  v77 = v73;
  if (v75 <= -2)
  {
    v76 = a2[127];
    v77 = a2[126];
    do
    {
      v78 = (__clz(__rbit64(((*v77 >> 7) & ~*v77 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v77 = (v77 + v78);
      v76 += 16 * v78;
    }

    while (*v77 < -1);
  }

  v79 = &v73[a2[129]];
  if (v77 == v79)
  {
    v106 = 6;
    v80 = 1056;
    v107 = a2 + 126;
    while (1)
    {
      v108 = *(a2 + v80);
      v76 = v107[7];
      v77 = v108;
      if (*v108 <= -2)
      {
        do
        {
          v109 = (__clz(__rbit64(((*v77 >> 7) & ~*v77 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v77 = (v77 + v109);
          v76 += 16 * v109;
        }

        while (*v77 < -1);
      }

      v79 = &v108[v107[9]];
      if (v77 != v79)
      {
        break;
      }

      v107 = &v72[v106];
      v80 = v106 * 8 + 1056;
      v106 += 6;
      if (v106 == 96)
      {
        v81 = 0;
        v101 = a2 + 222;
        if (v75 <= -2)
        {
          goto LABEL_114;
        }

        goto LABEL_124;
      }
    }
  }

  else
  {
    v80 = 1008;
  }

  v81 = 0;
  while (1)
  {
    v82 = v81;
    v83 = *v76;
    v84 = *(v76 + 8);
    v85 = a2[24];
    v86 = a2[13] - a2[12];
    v87 = v86 >> 2;
    v88 = v86 >> 2;
    if (0xAAAAAAAAAAAAAAABLL * ((a2[25] - v85) >> 3) < v87 || v88 <= v84)
    {
      sub_F98CE4(a2, *(v76 + 8));
      v90 = (a2[13] - a2[12]) >> 2;
      *v125 = 0;
      *&v125[8] = 0;
      *&v125[16] = -1;
      v85 = a2[24];
      v91 = 0xAAAAAAAAAAAAAAABLL * ((a2[25] - v85) >> 3);
      if (v90 <= v91)
      {
        if (v90 < v91)
        {
          a2[25] = v85 + 24 * v90;
        }
      }

      else
      {
        sub_F9B6DC((a2 + 24), v90 - v91, v125);
        v85 = a2[24];
      }
    }

    *(v85 + 24 * v84) = v83;
    if (v83 == (v83 & 0xFFFFFFFFFFFF0002))
    {
      v81 = v82;
      v72 = a2 + 126;
      v92 = *(v77 + 1);
      v77 = (v77 + 1);
      v76 += 16;
      if (v92 > -2)
      {
        goto LABEL_103;
      }

      do
      {
LABEL_102:
        v95 = (__clz(__rbit64(((*v77 >> 7) & ~*v77 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v77 = (v77 + v95);
        v76 += 16 * v95;
      }

      while (*v77 < -1);
      goto LABEL_103;
    }

    v93 = v82 >> 4;
    if (((v82 >> 4) + 1) >> 60)
    {
      sub_1794();
    }

    if (v82 >> 4 != -1)
    {
      if (!(((v82 >> 4) + 1) >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v94 = 16 * v93;
    *v94 = v83 & 0xFFFFFFFFFFFF0002;
    *(v94 + 8) = v84;
    v81 = 16 * v93 + 16;
    memcpy(0, 0, v82);
    v72 = a2 + 126;
    v100 = *(v77 + 1);
    v77 = (v77 + 1);
    v76 += 16;
    if (v100 <= -2)
    {
      goto LABEL_102;
    }

LABEL_103:
    if (v77 == v79)
    {
      break;
    }

LABEL_85:
    if (!a2)
    {
      goto LABEL_113;
    }
  }

  if (v80 != 1728)
  {
    v96 = a2 + v80;
    v80 += 48;
    do
    {
      v97 = a2 + v80;
      v98 = *(a2 + v80);
      v76 = *(v96 + 7);
      v77 = v98;
      if (*v98 <= -2)
      {
        do
        {
          v99 = (__clz(__rbit64(((*v77 >> 7) & ~*v77 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v77 = (v77 + v99);
          v76 += 16 * v99;
        }

        while (*v77 < -1);
      }

      v79 = &v98[*(v96 + 9)];
      if (v77 != v79)
      {
        goto LABEL_85;
      }

      v80 += 48;
      v96 = v97;
    }

    while (v80 != 1776);
  }

LABEL_113:
  v73 = a2[126];
  v74 = a2[127];
  v101 = a2 + 222;
  if (*v73 <= -2)
  {
LABEL_114:
    v102 = v73;
    do
    {
      v103 = (__clz(__rbit64(((*v102 >> 7) & ~*v102 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v102 += v103;
      v74 += 16 * v103;
    }

    while (*v102 < -1);
    v104 = &v73[a2[129]];
    v105 = v72;
    if (v102 == v104)
    {
      goto LABEL_125;
    }

    goto LABEL_134;
  }

LABEL_124:
  v102 = v73;
  v104 = &v73[a2[129]];
  v105 = v72;
  if (v102 == v104)
  {
LABEL_125:
    v105 = a2 + 132;
    v110 = 6;
    v111 = v72;
    do
    {
      v112 = *v105;
      v74 = v111[7];
      if (**v105 > -2)
      {
        v102 = *v105;
        v104 = &v112[v111[9]];
        if (v112 != v104)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v102 = *v105;
        do
        {
          v113 = (__clz(__rbit64(((*v102 >> 7) & ~*v102 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v102 += v113;
          v74 += 16 * v113;
        }

        while (*v102 < -1);
        v104 = &v112[v111[9]];
        if (v102 != v104)
        {
          goto LABEL_134;
        }
      }

      v111 = &v72[v110];
      v110 += 6;
      v105 = &v72[v110];
    }

    while (v110 != 96);
    v105 = 0;
    v104 = v102;
  }

LABEL_134:
  *v125 = v72;
  *&v125[8] = v105;
  *&v125[16] = v101;
  *&v125[24] = v102;
  *&v125[32] = v74;
  v126 = v104;
  if (v81)
  {
    for (i = 0; i != v81; i += 16)
    {
      *v133 = *i;
      *&v133[8] = *(i + 8);
      sub_F9AA00(v125, v133);
    }
  }
}

void sub_F9A100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    sub_F96138(v11);
    _Unwind_Resume(a1);
  }

  sub_F96138(v11);
  _Unwind_Resume(a1);
}

void sub_F9A210(void *a1, uint64_t a2, uint64_t *a3, char a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    do
    {
      if (*(v4 + 8) && (v38[0] = *(v4 + 8), sub_F98EF8((a1 + 126), v38, &v32), v32))
      {
        v30 = *(*(&v33 + 1) + 8);
        v12 = *(v4 + 104);
        if (!v12)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v30 = -1;
        v12 = *(v4 + 104);
        if (!v12)
        {
          goto LABEL_12;
        }
      }

      v38[0] = v12;
      sub_F98EF8((a1 + 126), v38, &v32);
      if (!v32)
      {
LABEL_12:
        v13 = -1;
        goto LABEL_13;
      }

      v13 = *(*(&v33 + 1) + 8);
LABEL_13:
      v14 = *(v4 + 64);
      v34 = *(v4 + 48);
      v15 = *(v4 + 80);
      v35 = v14;
      v36 = v15;
      v37 = *(v4 + 96);
      v16 = *(v4 + 32);
      v32 = *(v4 + 16);
      v33 = v16;
      *&v31[36] = *(v4 + 144);
      *&v31[52] = *(v4 + 160);
      *&v31[68] = *(v4 + 176);
      *&v31[4] = *(v4 + 112);
      *&v31[84] = *(v4 + 192);
      *&v31[20] = *(v4 + 128);
      v17 = sub_10E2B7C(a2, v4);
      v20 = a1[28];
      v19 = a1[29];
      if (v20 < v19)
      {
        *v20 = v17;
        *(v20 + 8) = v18;
        *(v20 + 16) = a4;
        *(v20 + 20) = v30;
        v9 = v32;
        *(v20 + 56) = v34;
        *(v20 + 72) = v35;
        *(v20 + 88) = v36;
        v10 = v37;
        *(v20 + 24) = v9;
        *(v20 + 40) = v33;
        *(v20 + 132) = *&v31[16];
        *(v20 + 116) = *v31;
        *(v20 + 192) = *&v31[76];
        *(v20 + 180) = *&v31[64];
        *(v20 + 164) = *&v31[48];
        *(v20 + 104) = v10;
        *(v20 + 112) = v13;
        *(v20 + 148) = *&v31[32];
        v11 = v20 + 208;
      }

      else
      {
        v29 = v13;
        v21 = a1[27];
        v22 = 0x4EC4EC4EC4EC4EC5 * ((v20 - v21) >> 4) + 1;
        if (v22 > 0x13B13B13B13B13BLL)
        {
          sub_1794();
        }

        v23 = 0x4EC4EC4EC4EC4EC5 * ((v19 - v21) >> 4);
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x9D89D89D89D89DLL)
        {
          v24 = 0x13B13B13B13B13BLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          if (v24 <= 0x13B13B13B13B13BLL)
          {
            operator new();
          }

          sub_1808();
        }

        v25 = 16 * ((v20 - v21) >> 4);
        *(v25 + 56) = v34;
        v26 = v36;
        *(v25 + 72) = v35;
        *(v25 + 88) = v26;
        v27 = v33;
        *(v25 + 24) = v32;
        *(v25 + 40) = v27;
        *(v25 + 132) = *&v31[16];
        *(v25 + 116) = *v31;
        *(v25 + 192) = *&v31[76];
        *(v25 + 180) = *&v31[64];
        *(v25 + 164) = *&v31[48];
        *v25 = v17;
        *(v25 + 8) = v18;
        *(v25 + 16) = a4;
        *(v25 + 20) = v30;
        *(v25 + 104) = v37;
        *(v25 + 112) = v29;
        v11 = v25 + 208;
        v28 = (v25 - (v20 - v21));
        *(v25 + 148) = *&v31[32];
        memcpy(v28, v21, v20 - v21);
        a1[27] = v28;
        a1[28] = v11;
        a1[29] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      a1[28] = v11;
      v4 += 200;
    }

    while (v4 != v5);
  }
}

void sub_F9A594(void *a1, uint64_t a2, void *a3, char a4)
{
  v8 = a3[57];
  v9 = a3[31];
  v10 = v8 + 200 * v9;
  if (v9)
  {
    v11 = 200 * v9;
    while (sub_1106280((a3 + 32), v8) || a3[29] && sub_1106280((a3 + 4), v8))
    {
      v8 += 200;
      v11 -= 200;
      if (!v11)
      {
        v8 = v10;
        break;
      }
    }

    v12 = v8;
    v13 = a3[57] + 200 * a3[31];
    if (v8 != v13)
    {
      v35 = a3[57] + 200 * a3[31];
      v36 = a2;
      v34 = a4;
      do
      {
        if (*(v12 + 8) && (v45[0] = *(v12 + 8), sub_F98EF8((a1 + 126), v45, &v39), v39))
        {
          v37 = *(*(&v40 + 1) + 8);
          v14 = *(v12 + 104);
          if (!v14)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v37 = -1;
          v14 = *(v12 + 104);
          if (!v14)
          {
            goto LABEL_20;
          }
        }

        v45[0] = v14;
        sub_F98EF8((a1 + 126), v45, &v39);
        if (!v39)
        {
LABEL_20:
          v15 = -1;
          goto LABEL_21;
        }

        v15 = *(*(&v40 + 1) + 8);
LABEL_21:
        v16 = *(v12 + 64);
        v41 = *(v12 + 48);
        v17 = *(v12 + 80);
        v42 = v16;
        v43 = v17;
        v44 = *(v12 + 96);
        v18 = *(v12 + 32);
        v39 = *(v12 + 16);
        v40 = v18;
        *&v38[36] = *(v12 + 144);
        *&v38[52] = *(v12 + 160);
        *&v38[68] = *(v12 + 176);
        *&v38[4] = *(v12 + 112);
        *&v38[84] = *(v12 + 192);
        *&v38[20] = *(v12 + 128);
        v19 = sub_10E2B7C(a2, v12);
        v22 = a1[28];
        v21 = a1[29];
        if (v22 >= v21)
        {
          v26 = a1[27];
          v27 = 0x4EC4EC4EC4EC4EC5 * ((v22 - v26) >> 4) + 1;
          if (v27 > 0x13B13B13B13B13BLL)
          {
            sub_1794();
          }

          v28 = 0x4EC4EC4EC4EC4EC5 * ((v21 - v26) >> 4);
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          if (v28 >= 0x9D89D89D89D89DLL)
          {
            v29 = 0x13B13B13B13B13BLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            if (v29 <= 0x13B13B13B13B13BLL)
            {
              operator new();
            }

            sub_1808();
          }

          v30 = 16 * ((v22 - v26) >> 4);
          *(v30 + 56) = v41;
          v31 = v43;
          *(v30 + 72) = v42;
          *(v30 + 88) = v31;
          v32 = v40;
          *(v30 + 24) = v39;
          *(v30 + 40) = v32;
          *(v30 + 192) = *&v38[76];
          *(v30 + 180) = *&v38[64];
          *(v30 + 164) = *&v38[48];
          *(v30 + 148) = *&v38[32];
          *(v30 + 132) = *&v38[16];
          *v30 = v19;
          *(v30 + 8) = v20;
          a4 = v34;
          *(v30 + 16) = v34;
          *(v30 + 17) = v45[0];
          *(v30 + 19) = BYTE2(v45[0]);
          *(v30 + 20) = v37;
          *(v30 + 104) = v44;
          *(v30 + 112) = v15;
          v25 = v30 + 208;
          v33 = (v30 - (v22 - v26));
          *(v30 + 116) = *v38;
          memcpy(v33, v26, v22 - v26);
          a1[27] = v33;
          a1[28] = v25;
          a1[29] = 0;
          if (v26)
          {
            operator delete(v26);
          }

          v13 = v35;
          a2 = v36;
        }

        else
        {
          *v22 = v19;
          *(v22 + 8) = v20;
          *(v22 + 16) = a4;
          *(v22 + 17) = v45[0];
          *(v22 + 19) = BYTE2(v45[0]);
          *(v22 + 20) = v37;
          v23 = v39;
          *(v22 + 56) = v41;
          *(v22 + 72) = v42;
          *(v22 + 88) = v43;
          v24 = v44;
          *(v22 + 24) = v23;
          *(v22 + 40) = v40;
          *(v22 + 192) = *&v38[76];
          *(v22 + 180) = *&v38[64];
          *(v22 + 164) = *&v38[48];
          *(v22 + 148) = *&v38[32];
          *(v22 + 132) = *&v38[16];
          *(v22 + 104) = v24;
          *(v22 + 112) = v15;
          *(v22 + 116) = *v38;
          v25 = v22 + 208;
        }

        a1[28] = v25;
        do
        {
          v12 += 200;
        }

        while (v12 != v10 && (sub_1106280((a3 + 32), v12) || a3[29] && sub_1106280((a3 + 4), v12)));
      }

      while (v12 != v13);
    }
  }
}

uint64_t sub_F9AA00(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  *&v16[0] = a2;
  *(&v16[0] + 1) = a2 + 1;
  sub_F9AB84(v3, a2, v16, v16 + 1, &v17);
  v4 = v19;
  v5 = v18;
  v16[1] = v18;
  v16[2] = v19;
  v16[0] = v17;
  *(a1 + 8) = v17;
  *(a1 + 24) = v5;
  *(a1 + 40) = v4;
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32) + 16;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  if (*v6 <= -2)
  {
    do
    {
      v8 = (__clz(__rbit64(((*v6 >> 7) & ~*v6 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v6 = (v6 + v8);
      v7 += 16 * v8;
      *(a1 + 24) = v6;
      *(a1 + 32) = v7;
    }

    while (*v6 < -1);
  }

  if (v6 != *(a1 + 40))
  {
    return a1;
  }

  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  while (1)
  {
    *(a1 + 8) = v11 + 6;
    if (v11 + 6 == v10)
    {
      break;
    }

    v13 = v11[6];
    v14 = v11[7];
    if (*v13 <= -2)
    {
      do
      {
        v15 = (__clz(__rbit64(((*v13 >> 7) & ~*v13 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v13 = (v13 + v15);
        v14 += 16 * v15;
      }

      while (*v13 < -1);
    }

    *(a1 + 24) = v13;
    *(a1 + 32) = v14;
    v12 = (v11[6] + v11[9]);
    *(a1 + 40) = v12;
    v11 += 6;
    if (v13 != v12)
    {
      return a1;
    }
  }

  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_F9AB84@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void **a3@<X3>, _DWORD **a4@<X4>, uint64_t a5@<X8>)
{
  v5 = 0;
  v6 = *a2;
  v7 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v8 = (v7 ^ ~(v7 >> 47)) + ((v7 ^ (v7 >> 47)) << 21);
  v9 = 21 * ((265 * (v8 ^ (v8 >> 24))) ^ ((265 * (v8 ^ (v8 >> 24))) >> 14));
  v10 = 2147483649u * (v9 ^ (v9 >> 28));
  v11 = (result + 48 * (((((v9 ^ (v9 >> 28)) >> 8) ^ ((-2147483647 * (v9 ^ (v9 >> 28))) >> 16)) ^ ((-2147483647 * (v9 ^ (v9 >> 28))) >> 24)) & 0xF));
  v12 = v10 >> 7;
  v13 = v11[3];
  v14 = *v11;
  while (1)
  {
    v15 = v12 & v13;
    v16 = *(v14 + (v12 & v13));
    v17 = ((v16 ^ (0x101010101010101 * (v10 & 0x7F))) - 0x101010101010101) & ~(v16 ^ (0x101010101010101 * (v10 & 0x7F))) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_6:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      v21 = result;
      v22 = a5;
      v25 = sub_40DB30(v11, v10);
      a5 = v22;
      v19 = v25;
      result = v21;
      v14 = *v11;
      v18 = v11[1];
      v26 = v18 + 16 * v19;
      v27 = *a4;
      *v26 = **a3;
      *(v26 + 8) = *v27;
      v13 = v11[3];
      v20 = 1;
      goto LABEL_10;
    }

    v5 += 8;
    v12 = v5 + v15;
  }

  v18 = v11[1];
  while (1)
  {
    v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v13;
    if (*(v18 + 16 * v19) == v6)
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_6;
    }
  }

  v20 = 0;
LABEL_10:
  *a5 = v11;
  *(a5 + 8) = result + 768;
  *(a5 + 16) = v14 + v19;
  *(a5 + 24) = v18 + 16 * v19;
  *(a5 + 32) = v14 + v13;
  *(a5 + 48) = v20;
  return result;
}

void sub_F9AD10(void *a1@<X0>, unsigned int a2@<W1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2;
  v8 = *a1;
  v9 = (a1[1] - *a1) >> 2;
  if (v9 <= a2)
  {
    v10 = a2 + 1;
    v41 = -1;
    if (v10 <= v9)
    {
      if (v10 < v9)
      {
        a1[1] = v8 + 4 * v10;
      }
    }

    else
    {
      sub_569AC(a1, v10 - v9, &v41);
      v8 = *a1;
    }
  }

  v11 = (a1 + 6);
  v13 = a1[7];
  v12 = a1[8];
  if (v13 >= v12)
  {
    v15 = *v11;
    v16 = v13 - *v11;
    v17 = v16 >> 2;
    v18 = (v16 >> 2) + 1;
    if (v18 >> 62)
    {
      sub_1794();
    }

    v19 = v12 - v15;
    if (v19 >> 1 > v18)
    {
      v18 = v19 >> 1;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v20 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (!(v20 >> 62))
      {
        operator new();
      }

LABEL_33:
      sub_1808();
    }

    *(4 * v17) = *(v8 + 4 * v7);
    v14 = 4 * v17 + 4;
    memcpy(0, v15, v16);
    a1[6] = 0;
    a1[7] = v14;
    a1[8] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = *(v8 + 4 * v7);
    v14 = (v13 + 4);
  }

  v21 = a1[3];
  a1[7] = v14;
  v22 = a1[4];
  v23 = a1[5];
  v24 = (v22 - v21) >> 3;
  v25 = 0x4EC4EC4EC4EC4EC5 * v24;
  *(v8 + 4 * v7) = -991146299 * v24;
  if (v22 < v23)
  {
    v26 = *a3;
    v27 = a3[2];
    *(v22 + 16) = a3[1];
    *(v22 + 32) = v27;
    *v22 = v26;
    v28 = a3[3];
    v29 = a3[4];
    v30 = a3[5];
    *(v22 + 96) = *(a3 + 12);
    *(v22 + 64) = v29;
    *(v22 + 80) = v30;
    *(v22 + 48) = v28;
    v31 = v22 + 104;
    goto LABEL_32;
  }

  if ((v25 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  v32 = 0x4EC4EC4EC4EC4EC5 * ((v23 - v21) >> 3);
  v33 = 2 * v32;
  if (2 * v32 <= v25 + 1)
  {
    v33 = v25 + 1;
  }

  if (v32 >= 0x13B13B13B13B13BLL)
  {
    v34 = 0x276276276276276;
  }

  else
  {
    v34 = v33;
  }

  if (v34)
  {
    if (v34 <= 0x276276276276276)
    {
      operator new();
    }

    goto LABEL_33;
  }

  v35 = a3[5];
  v36 = 8 * v24;
  *(v36 + 64) = a3[4];
  *(v36 + 80) = v35;
  *(v36 + 96) = *(a3 + 12);
  v37 = a3[1];
  *v36 = *a3;
  *(v36 + 16) = v37;
  v38 = a3[3];
  *(v36 + 32) = a3[2];
  *(v36 + 48) = v38;
  v31 = 8 * v24 + 104;
  v39 = (8 * v24 - (v22 - v21));
  memcpy(v39, v21, v22 - v21);
  a1[3] = v39;
  a1[4] = v31;
  a1[5] = 0;
  if (v21)
  {
    operator delete(v21);
  }

LABEL_32:
  a1[4] = v31;
  v40 = -991146299 * ((v31 - a1[3]) >> 3) - 1;
  *a4 = a1 + 3;
  *(a4 + 8) = v11;
  *(a4 + 16) = v40;
}

unint64_t sub_F9AFE4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 265 * ((~v4 + (v4 << 21)) ^ ((~v4 + (v4 << 21)) >> 24));
  v6 = 2147483649u * ((21 * (v5 ^ (v5 >> 14))) ^ ((21 * (v5 ^ (v5 >> 14))) >> 28));
  v7 = (a1 + 48 * (((BYTE1(v6) ^ BYTE2(v6)) ^ BYTE3(v6)) & 0xF));
  v8 = v6 >> 7;
  v9 = v7[3];
  while (1)
  {
    v10 = v8 & v9;
    v11 = *(*v7 + v10);
    v12 = ((v11 ^ (0x101010101010101 * (v6 & 0x7F))) - 0x101010101010101) & ~(v11 ^ (0x101010101010101 * (v6 & 0x7F))) & 0x8080808080808080;
    if (v12)
    {
      break;
    }

LABEL_5:
    if ((v11 & (~v11 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_F9B100(v7, v6);
      *a3 = v7;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v8 = v3 + v10;
  }

  while (1)
  {
    result = (v10 + (__clz(__rbit64(v12)) >> 3)) & v9;
    if (*(v7[1] + 32 * result) == v4)
    {
      break;
    }

    v12 &= v12 - 1;
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  *a3 = v7;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_F9B100(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_F9B1F8(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_F9B1F8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_F9B228();
  }

  return sub_F9B3F4(a1);
}

uint64_t sub_F9B3F4(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_27;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_27:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = 32 * i;
        v19 = *(*(result + 8) + 32 * i);
        v20 = 265 * ((~v19 + (v19 << 21)) ^ ((~v19 + (v19 << 21)) >> 24));
        v21 = 2147483649u * ((21 * (v20 ^ (v20 >> 14))) ^ ((21 * (v20 ^ (v20 >> 14))) >> 28));
        v22 = v13 & (v21 >> 7);
        v23 = *(v17->i64 + v22) & (~*(v17->i64 + v22) << 7) & 0x8080808080808080;
        if (v23)
        {
          v15 = v13 & (v21 >> 7);
        }

        else
        {
          v24 = 8;
          v15 = v13 & (v21 >> 7);
          do
          {
            v15 = (v15 + v24) & v13;
            v24 += 8;
            v23 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v23);
        }

        v16 = (v15 + (__clz(__rbit64(v23)) >> 3)) & v13;
        if ((((v16 - v22) ^ (i - v22)) & v13) > 7)
        {
          v25 = v17->u8[v16];
          v17->i8[v16] = v21 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v21 & 0x7F;
          v26 = *(result + 8);
          if (v25 == 128)
          {
            v27 = v26 + 32 * v16;
            v28 = v26 + 32 * i;
            *v27 = *v28;
            *(v27 + 16) = 0;
            *(v27 + 24) = 0;
            *(v27 + 8) = 0;
            *(v27 + 8) = *(v28 + 8);
            *(v27 + 24) = *(v28 + 24);
            *(v28 + 16) = 0;
            *(v28 + 24) = 0;
            *(v28 + 8) = 0;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v29 = (v26 + v18);
            v30 = *v29;
            v31 = *(v29 + 3);
            v32 = *(v29 + 2);
            *(v29 + 2) = 0;
            *(v29 + 3) = 0;
            *(v29 + 1) = 0;
            v33 = *(result + 8);
            v34 = v33 + v18;
            v35 = v33 + 32 * v16;
            *v34 = *v35;
            *(v34 + 8) = 0;
            *(v34 + 16) = 0;
            *(v34 + 24) = 0;
            *(v34 + 8) = *(v35 + 8);
            *(v34 + 24) = *(v35 + 24);
            *(v35 + 16) = 0;
            *(v35 + 24) = 0;
            *(v35 + 8) = 0;
            v36 = *(result + 8) + 32 * v16;
            *v36 = v30;
            *(v36 + 8) = v32;
            *(v36 + 24) = v31;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v21 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v21 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v37 = i - (i >> 3);
    v38 = i == 7;
    v39 = 6;
    if (!v38)
    {
      v39 = v37;
    }

    *(result + 40) = v39 - *(result + 16);
  }

  else
  {
    *(result + 40) = -*(result + 16);
  }

  return result;
}

void sub_F9B6DC(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        v12 = *a3;
        *(v4 + 16) = *(a3 + 2);
        *v4 = v12;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v13 = 24 * v6;
    v14 = 24 * a2;
    v15 = 24 * v6 + 24 * a2;
    v16 = 24 * v6;
    do
    {
      v17 = *a3;
      *(v16 + 16) = *(a3 + 2);
      *v16 = v17;
      v16 += 24;
      v14 -= 24;
    }

    while (v14);
    v18 = *a1;
    v19 = *(a1 + 8) - *a1;
    v20 = v13 - v19;
    memcpy((v13 - v19), *a1, v19);
    *a1 = v20;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

void sub_F9B880(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_10AC4E0(a1, a2);
  *(a1 + 72) = sub_3AF23C(a2, a3);
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a2, &qword_27C0160, __p);
  sub_F9E420(a1 + 80);
}

void sub_F9B944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = *(v10 + 48);
  if (v12)
  {
    *(v10 + 56) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

double sub_F9B974@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v36 = 0uLL;
  v37 = 0;
  if (a4)
  {
    v8 = nullsub_1(a2);
    v10 = *v8;
    v9 = v8[1];
    if (v9 != *v8)
    {
      do
      {
        v9 -= 552;
        if (*(a1 + 80) == 1)
        {
          sub_F9BFDC(a1, v9, a3, a4, &v38);
        }

        else
        {
          sub_F9C5F0(a1, v9, a3, a4, &v38);
        }

        v15 = HIDWORD(v38);
        if (v38 < 0)
        {
          v16 = -5;
        }

        else
        {
          v16 = 5;
        }

        v17 = *(&v36 + 1);
        if (*(&v36 + 1) < v37)
        {
          v11 = v38;
          *(*(&v36 + 1) + 8) = v39;
          *v17 = v11;
          *(v17 + 16) = 0;
          *(v17 + 24) = 0;
          *(v17 + 32) = 0;
          *(v17 + 40) = 0;
          *(v17 + 16) = v40;
          *(v17 + 32) = v41;
          v40 = 0uLL;
          *(v17 + 48) = 0;
          *(v17 + 56) = 0;
          *(v17 + 40) = v42;
          *(v17 + 56) = v43;
          *(v17 + 64) = 0;
          v41 = 0;
          v42 = 0uLL;
          v43 = 0;
          *(v17 + 72) = 0;
          *(v17 + 80) = 0;
          *(v17 + 64) = v44;
          v44 = 0uLL;
          *(v17 + 80) = v45;
          *(v17 + 88) = 0;
          *(v17 + 96) = 0;
          *(v17 + 104) = 0;
          *(v17 + 88) = v46;
          *(v17 + 104) = v47;
          *(v17 + 112) = 0;
          v45 = 0;
          v46 = 0uLL;
          v47 = 0;
          *(v17 + 120) = 0;
          *(v17 + 128) = 0;
          *(v17 + 112) = v48;
          v48 = 0uLL;
          *(v17 + 128) = v49;
          *(v17 + 136) = 0;
          *(v17 + 144) = 0;
          *(v17 + 152) = 0;
          *(v17 + 136) = v50;
          *(v17 + 152) = v51;
          *(v17 + 160) = 0;
          v49 = 0;
          v50 = 0uLL;
          v51 = 0;
          *(v17 + 168) = 0;
          *(v17 + 176) = 0;
          *(v17 + 160) = v52;
          v52 = 0uLL;
          *(v17 + 176) = v53;
          *(v17 + 184) = 0;
          *(v17 + 192) = 0;
          *(v17 + 200) = 0;
          *(v17 + 184) = v54;
          *(v17 + 200) = v55;
          *(v17 + 208) = 0;
          v53 = 0;
          v54 = 0uLL;
          v55 = 0;
          *(v17 + 216) = 0;
          *(v17 + 224) = 0;
          *(v17 + 208) = v56;
          v56 = 0uLL;
          *(v17 + 224) = v57;
          *(v17 + 232) = 0;
          *(v17 + 240) = 0;
          *(v17 + 248) = 0;
          *(v17 + 232) = v58;
          *(v17 + 248) = v59;
          v57 = 0;
          v58 = 0uLL;
          v59 = 0;
          v12 = v61;
          *(v17 + 256) = v60;
          *(v17 + 272) = v12;
          v13 = v17 + 288;
        }

        else
        {
          v13 = sub_FA01A4(&v36, &v38);
        }

        v14 = -103 * (v16 + v15 - 10 * (((1717986919 * v15) >> 34) + (1717986919 * v15 < 0)));
        a3 += v15 / -10 + ((v14 >> 15) & 1) + (v14 >> 10);
        *(&v36 + 1) = v13;
        sub_3EE9A4(&v38);
      }

      while (v9 != v10);
    }

    v18 = v36;
    v19 = (*(&v36 + 1) - 288);
    if (v36 != *(&v36 + 1) && v19 > v36)
    {
      do
      {
        v21 = *v18;
        v39 = *(v18 + 8);
        v38 = v21;
        v40 = *(v18 + 16);
        v41 = *(v18 + 32);
        *(v18 + 24) = 0;
        *(v18 + 32) = 0;
        *(v18 + 16) = 0;
        v42 = *(v18 + 40);
        v43 = *(v18 + 56);
        *(v18 + 48) = 0;
        *(v18 + 56) = 0;
        *(v18 + 40) = 0;
        v44 = *(v18 + 64);
        v45 = *(v18 + 80);
        *(v18 + 64) = 0;
        *(v18 + 72) = 0;
        *(v18 + 80) = 0;
        v46 = *(v18 + 88);
        v47 = *(v18 + 104);
        *(v18 + 88) = 0;
        *(v18 + 96) = 0;
        *(v18 + 104) = 0;
        v48 = *(v18 + 112);
        v49 = *(v18 + 128);
        *(v18 + 112) = 0;
        *(v18 + 120) = 0;
        *(v18 + 128) = 0;
        v50 = *(v18 + 136);
        v51 = *(v18 + 152);
        *(v18 + 136) = 0;
        *(v18 + 144) = 0;
        *(v18 + 152) = 0;
        v52 = *(v18 + 160);
        v53 = *(v18 + 176);
        *(v18 + 160) = 0;
        *(v18 + 168) = 0;
        *(v18 + 176) = 0;
        v54 = *(v18 + 184);
        v55 = *(v18 + 200);
        *(v18 + 184) = 0;
        *(v18 + 192) = 0;
        *(v18 + 200) = 0;
        v56 = *(v18 + 208);
        v57 = *(v18 + 224);
        *(v18 + 208) = 0;
        *(v18 + 216) = 0;
        *(v18 + 224) = 0;
        v58 = *(v18 + 232);
        v59 = *(v18 + 248);
        *(v18 + 232) = 0;
        *(v18 + 240) = 0;
        *(v18 + 248) = 0;
        v22 = *(v18 + 272);
        v60 = *(v18 + 256);
        v61 = v22;
        sub_419B60(v18, v19);
        sub_419B60(v19, &v38);
        sub_3EE9A4(&v38);
        v18 += 288;
        v19 -= 36;
      }

      while (v18 < v19);
    }
  }

  else
  {
    v23 = nullsub_1(a2);
    v24 = *v23;
    v25 = v23[1];
    if (*v23 != v25)
    {
      do
      {
        v30 = a3;
        if (*(a1 + 80) == 1)
        {
          sub_F9BFDC(a1, v24, a3, 0, &v38);
        }

        else
        {
          sub_F9C5F0(a1, v24, a3, 0, &v38);
        }

        v31 = HIDWORD(v38);
        if (v38 < 0)
        {
          v32 = -5;
        }

        else
        {
          v32 = 5;
        }

        v33 = *(&v36 + 1);
        if (*(&v36 + 1) < v37)
        {
          v26 = v38;
          *(*(&v36 + 1) + 8) = v39;
          *v33 = v26;
          *(v33 + 16) = 0;
          *(v33 + 24) = 0;
          *(v33 + 32) = 0;
          *(v33 + 40) = 0;
          *(v33 + 16) = v40;
          *(v33 + 32) = v41;
          v40 = 0uLL;
          *(v33 + 48) = 0;
          *(v33 + 56) = 0;
          *(v33 + 40) = v42;
          *(v33 + 56) = v43;
          *(v33 + 64) = 0;
          v41 = 0;
          v42 = 0uLL;
          v43 = 0;
          *(v33 + 72) = 0;
          *(v33 + 80) = 0;
          *(v33 + 64) = v44;
          v44 = 0uLL;
          *(v33 + 80) = v45;
          *(v33 + 88) = 0;
          *(v33 + 96) = 0;
          *(v33 + 104) = 0;
          *(v33 + 88) = v46;
          *(v33 + 104) = v47;
          *(v33 + 112) = 0;
          v45 = 0;
          v46 = 0uLL;
          v47 = 0;
          *(v33 + 120) = 0;
          *(v33 + 128) = 0;
          *(v33 + 112) = v48;
          v48 = 0uLL;
          *(v33 + 128) = v49;
          *(v33 + 136) = 0;
          *(v33 + 144) = 0;
          *(v33 + 152) = 0;
          *(v33 + 136) = v50;
          *(v33 + 152) = v51;
          *(v33 + 160) = 0;
          v49 = 0;
          v50 = 0uLL;
          v51 = 0;
          *(v33 + 168) = 0;
          *(v33 + 176) = 0;
          *(v33 + 160) = v52;
          v52 = 0uLL;
          *(v33 + 176) = v53;
          *(v33 + 184) = 0;
          *(v33 + 192) = 0;
          *(v33 + 200) = 0;
          *(v33 + 184) = v54;
          *(v33 + 200) = v55;
          *(v33 + 208) = 0;
          v53 = 0;
          v54 = 0uLL;
          v55 = 0;
          *(v33 + 216) = 0;
          *(v33 + 224) = 0;
          *(v33 + 208) = v56;
          v56 = 0uLL;
          *(v33 + 224) = v57;
          *(v33 + 232) = 0;
          *(v33 + 240) = 0;
          *(v33 + 248) = 0;
          *(v33 + 232) = v58;
          *(v33 + 248) = v59;
          v57 = 0;
          v58 = 0uLL;
          v59 = 0;
          v27 = v61;
          *(v33 + 256) = v60;
          *(v33 + 272) = v27;
          v28 = v33 + 288;
        }

        else
        {
          v28 = sub_FA01A4(&v36, &v38);
        }

        v29 = 103 * (v32 + v31 % 10);
        a3 = v31 / 10 + v30 + ((v29 >> 15) & 1) + (v29 >> 10);
        *(&v36 + 1) = v28;
        sub_3EE9A4(&v38);
        v24 += 552;
      }

      while (v24 != v25);
    }
  }

  result = *&v36;
  *a5 = v36;
  *(a5 + 16) = v37;
  return result;
}

void sub_F9BF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_419F14(va);
  _Unwind_Resume(a1);
}

void sub_F9BF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_419F14(va);
  _Unwind_Resume(a1);
}

void sub_F9BF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_3EE9A4(va1);
  sub_419F14(va);
  _Unwind_Resume(a1);
}

void sub_F9BFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_419F14(va);
  _Unwind_Resume(a1);
}

void sub_F9BFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_419F14(va);
  _Unwind_Resume(a1);
}

char *sub_F9BFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0x8000000080000000;
  *(a5 + 16) = 0u;
  v70 = (a5 + 16);
  *(a5 + 8) = 0x7FFFFFFF;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 176) = 0u;
  *(a5 + 192) = 0u;
  *(a5 + 208) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 240) = 0u;
  *&v10 = 0x8000000080000000;
  *(&v10 + 1) = 0x8000000080000000;
  *(a5 + 256) = v10;
  *(a5 + 272) = v10;
  sub_F9CDE0(a1, a2, a5);
  *(a5 + 4) = *(a5 + 260) + *(a5 + 256);
  if (sub_F695B8(a2))
  {
    v11 = a3;
    v12 = a4;
    v13 = sub_F69654(a2);
    v14 = sub_F6A030(a2);
    v15 = sub_F9D088(a1, v13, v14);
    *(a5 + 4) += v15;
    v17 = *(a5 + 24);
    v16 = *(a5 + 32);
    if (v17 >= v16)
    {
      v28 = *v70;
      v29 = v17 - *v70;
      v30 = v29 >> 2;
      v31 = (v29 >> 2) + 1;
      if (v31 >> 62)
      {
        sub_1794();
      }

      v32 = v16 - v28;
      if (v32 >> 1 > v31)
      {
        v31 = v32 >> 1;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v33 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        if (!(v33 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      *(4 * v30) = v15;
      v18 = 4 * v30 + 4;
      memcpy(0, v28, v29);
      *(a5 + 16) = 0;
      *(a5 + 24) = v18;
      *(a5 + 32) = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v17 = v15;
      v18 = (v17 + 4);
    }

    v40 = v12;
    *(a5 + 24) = v18;
  }

  else
  {
    v67 = a3;
    v68 = a4;
    v69 = a2;
    sub_4C35D4(a2, &v71);
    v20 = v71;
    v19 = v72;
    if (v71 != v72)
    {
      v21 = sub_F6A040(a2);
      v22 = sub_F9D088(a1, v20, v21);
      if (*(a1 + 240) == 1)
      {
        v23 = sub_F9DAB8(a1, v20);
        if (v23 == 0x7FFFFFFF || v22 == 0x7FFFFFFF)
        {
          v22 = 0x7FFFFFFF;
        }

        else
        {
          v22 += v23;
        }
      }

      *(a5 + 4) += v22;
      v26 = *(a5 + 24);
      v25 = *(a5 + 32);
      if (v26 >= v25)
      {
        v34 = *v70;
        v35 = v26 - *v70;
        v36 = v35 >> 2;
        v37 = (v35 >> 2) + 1;
        if (v37 >> 62)
        {
LABEL_75:
          sub_1794();
        }

        v38 = v25 - v34;
        if (v38 >> 1 > v37)
        {
          v37 = v38 >> 1;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v39 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          if (!(v39 >> 62))
          {
            operator new();
          }

LABEL_76:
          sub_1808();
        }

        *(4 * v36) = v22;
        v27 = 4 * v36 + 4;
        memcpy(0, v34, v35);
        *(a5 + 16) = 0;
        *(a5 + 24) = v27;
        *(a5 + 32) = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v26 = v22;
        v27 = (v26 + 1);
      }

      *(a5 + 24) = v27;
      for (i = v20 + 11; i != v19; i += 11)
      {
        v43 = sub_F9D088(a1, i, 0x3B9ACA00u);
        if (*(a1 + 240) == 1)
        {
          v44 = sub_F9DAB8(a1, i);
          if (v44 == 0x7FFFFFFF || v43 == 0x7FFFFFFF)
          {
            v43 = 0x7FFFFFFF;
          }

          else
          {
            v43 += v44;
          }
        }

        *(a5 + 4) += v43;
        v47 = *(a5 + 24);
        v46 = *(a5 + 32);
        if (v47 < v46)
        {
          *v47 = v43;
          v42 = (v47 + 1);
        }

        else
        {
          v48 = *v70;
          v49 = v47 - *v70;
          v50 = v49 >> 2;
          v51 = (v49 >> 2) + 1;
          if (v51 >> 62)
          {
            goto LABEL_75;
          }

          v52 = v46 - v48;
          if (v52 >> 1 > v51)
          {
            v51 = v52 >> 1;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v53 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v51;
          }

          if (v53)
          {
            if (!(v53 >> 62))
            {
              operator new();
            }

            goto LABEL_76;
          }

          *(4 * v50) = v43;
          v42 = 4 * v50 + 4;
          memcpy(0, v48, v49);
          *(a5 + 16) = 0;
          *(a5 + 24) = v42;
          *(a5 + 32) = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        *(a5 + 24) = v42;
      }
    }

    v54 = sub_F6966C(v69);
    v55 = sub_F6A054(v69);
    v56 = sub_F9D088(a1, v54, v55);
    *(a5 + 4) += v56;
    v58 = *(a5 + 24);
    v57 = *(a5 + 32);
    if (v58 >= v57)
    {
      v60 = *v70;
      v61 = v58 - *v70;
      v62 = (v61 >> 2) + 1;
      if (v62 >> 62)
      {
        sub_1794();
      }

      v63 = v57 - v60;
      if (v63 >> 1 > v62)
      {
        v62 = v63 >> 1;
      }

      if (v63 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v64 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = v62;
      }

      if (v64)
      {
        if (!(v64 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      v65 = (4 * (v61 >> 2));
      *v65 = v56;
      v59 = v65 + 1;
      memcpy(0, v60, v61);
      *(a5 + 16) = 0;
      *(a5 + 24) = v59;
      *(a5 + 32) = 0;
      if (v60)
      {
        operator delete(v60);
      }
    }

    else
    {
      *v58 = v56;
      v59 = v58 + 4;
    }

    v40 = v68;
    v11 = v67;
    *(a5 + 24) = v59;
  }

  return sub_F9CF30(a1, v11, v40, a5);
}

char *sub_F9C5F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0x8000000080000000;
  *(a5 + 16) = 0u;
  v80 = (a5 + 16);
  *(a5 + 8) = 0x7FFFFFFF;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 176) = 0u;
  *(a5 + 192) = 0u;
  *(a5 + 208) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 240) = 0u;
  *&v10 = 0x8000000080000000;
  *(&v10 + 1) = 0x8000000080000000;
  *(a5 + 256) = v10;
  *(a5 + 272) = v10;
  sub_F9CDE0(a1, a2, a5);
  *(a5 + 4) = *(a5 + 260) + *(a5 + 256);
  if (!sub_F695B8(a2))
  {
    v77 = a3;
    v78 = a4;
    v79 = a2;
    sub_4C35D4(a2, &v82);
    v26 = v82;
    v25 = v83;
    __asm { FMOV            V0.2D, #1.0 }

    v81 = _Q0;
    if (v82 == v83)
    {
      goto LABEL_51;
    }

    v28 = sub_F6A040(v79);
    v29 = a1[9];
    v84 = 0u;
    v85 = 0u;
    v86 = v81;
    v87 = 0x3FF0000000000000;
    v88 = 1;
    sub_10AB718(a1, &v84, v26, v28, v29);
    if (v88 == 1)
    {
      v31 = sub_F8634C(&v84, &v86, v30);
      v32 = DWORD1(v85) + HIDWORD(v31);
      *(a5 + 4) += DWORD1(v85) + HIDWORD(v31);
      v34 = *(a5 + 24);
      v33 = *(a5 + 32);
      if (v34 >= v33)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v32 = 0x7FFFFFFF;
      *(a5 + 4) += 0x7FFFFFFF;
      v34 = *(a5 + 24);
      v33 = *(a5 + 32);
      if (v34 >= v33)
      {
LABEL_8:
        v35 = *v80;
        v36 = v34 - *v80;
        v37 = (v36 >> 2) + 1;
        if (v37 >> 62)
        {
LABEL_67:
          sub_1794();
        }

        v38 = v33 - v35;
        if (v38 >> 1 > v37)
        {
          v37 = v38 >> 1;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v39 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          if (!(v39 >> 62))
          {
            operator new();
          }

          goto LABEL_68;
        }

        v47 = (4 * (v36 >> 2));
        *v47 = v32;
        v48 = v47 + 1;
        memcpy(0, v35, v36);
        *(a5 + 16) = 0;
        *(a5 + 24) = v48;
        *(a5 + 32) = 0;
        if (v35)
        {
          operator delete(v35);
        }

        *(a5 + 24) = v48;
        for (i = v26 + 11; i != v25; i += 11)
        {
LABEL_35:
          while (1)
          {
            v49 = a1[9];
            v84 = 0u;
            v85 = 0u;
            v86 = v81;
            v87 = 0x3FF0000000000000;
            v88 = 1;
            sub_10AB718(a1, &v84, i, 0x3B9ACA00u, v49);
            if (v88 == 1)
            {
              break;
            }

            v52 = 0x7FFFFFFF;
            *(a5 + 4) += 0x7FFFFFFF;
            v54 = *(a5 + 24);
            v53 = *(a5 + 32);
            if (v54 >= v53)
            {
              goto LABEL_39;
            }

LABEL_34:
            *v54 = v52;
            *(a5 + 24) = v54 + 1;
            i += 11;
            if (i == v25)
            {
              goto LABEL_51;
            }
          }

          v51 = sub_F8634C(&v84, &v86, v50);
          v52 = DWORD1(v85) + HIDWORD(v51);
          *(a5 + 4) += DWORD1(v85) + HIDWORD(v51);
          v54 = *(a5 + 24);
          v53 = *(a5 + 32);
          if (v54 < v53)
          {
            goto LABEL_34;
          }

LABEL_39:
          v55 = *v80;
          v56 = v54 - *v80;
          v57 = v56 >> 2;
          v58 = (v56 >> 2) + 1;
          if (v58 >> 62)
          {
            goto LABEL_67;
          }

          v59 = v53 - v55;
          if (v59 >> 1 > v58)
          {
            v58 = v59 >> 1;
          }

          if (v59 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v60 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v60 = v58;
          }

          if (v60)
          {
            if (!(v60 >> 62))
            {
              operator new();
            }

LABEL_68:
            sub_1808();
          }

          *(4 * v57) = v52;
          v61 = 4 * v57 + 4;
          memcpy(0, v55, v56);
          *(a5 + 16) = 0;
          *(a5 + 24) = v61;
          *(a5 + 32) = 0;
          if (v55)
          {
            operator delete(v55);
          }

          *(a5 + 24) = v61;
        }

LABEL_51:
        v62 = sub_F6966C(v79);
        v63 = sub_F6A054(v79);
        v64 = a1[9];
        v84 = 0u;
        v85 = 0u;
        v86 = v81;
        v87 = 0x3FF0000000000000;
        v88 = 1;
        sub_10A8B08(a1, &v84, v62, v63, v64, *&v81, v65);
        a4 = v78;
        a3 = v77;
        if (v88 == 1)
        {
          v67 = sub_F8634C(&v84, &v86, v66);
          v22 = DWORD1(v85) + HIDWORD(v67);
          *(a5 + 4) += DWORD1(v85) + HIDWORD(v67);
          v24 = *(a5 + 24);
          v68 = *(a5 + 32);
          if (v24 < v68)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v22 = 0x7FFFFFFF;
          *(a5 + 4) += 0x7FFFFFFF;
          v24 = *(a5 + 24);
          v68 = *(a5 + 32);
          if (v24 < v68)
          {
            goto LABEL_63;
          }
        }

        v40 = *v80;
        v41 = v24 - *v80;
        v42 = v41 >> 2;
        v69 = (v41 >> 2) + 1;
        if (v69 >> 62)
        {
          sub_1794();
        }

        v70 = v68 - v40;
        if (v70 >> 1 > v69)
        {
          v69 = v70 >> 1;
        }

        if (v70 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v45 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v69;
        }

        if (v45)
        {
          if (!(v45 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        goto LABEL_64;
      }
    }

    *v34 = v32;
    *(a5 + 24) = v34 + 1;
    i = v26 + 11;
    if (i != v25)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  v11 = sub_F69654(a2);
  v12 = sub_F6A030(a2);
  v13 = a1[9];
  v84 = 0u;
  v85 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v86 = _Q0;
  v87 = 0x3FF0000000000000;
  v88 = 1;
  sub_10A8B08(a1, &v84, v11, v12, v13, *&_Q0, v19);
  if (v88 == 1)
  {
    v21 = sub_F8634C(&v84, &v86, v20);
    v22 = DWORD1(v85) + HIDWORD(v21);
    *(a5 + 4) += DWORD1(v85) + HIDWORD(v21);
    v24 = *(a5 + 24);
    v23 = *(a5 + 32);
    if (v24 >= v23)
    {
      goto LABEL_18;
    }

LABEL_63:
    *v24 = v22;
    v71 = v24 + 1;
    goto LABEL_66;
  }

  v22 = 0x7FFFFFFF;
  *(a5 + 4) += 0x7FFFFFFF;
  v24 = *(a5 + 24);
  v23 = *(a5 + 32);
  if (v24 < v23)
  {
    goto LABEL_63;
  }

LABEL_18:
  v40 = *v80;
  v41 = v24 - *v80;
  v42 = v41 >> 2;
  v43 = (v41 >> 2) + 1;
  if (v43 >> 62)
  {
    sub_1794();
  }

  v44 = v23 - v40;
  if (v44 >> 1 > v43)
  {
    v43 = v44 >> 1;
  }

  if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v45 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v45 = v43;
  }

  if (v45)
  {
    if (!(v45 >> 62))
    {
      operator new();
    }

    sub_1808();
  }

LABEL_64:
  v72 = v42;
  v73 = (4 * v42);
  v74 = 4 * v45;
  v75 = &v73[-v72];
  *v73 = v22;
  v71 = v73 + 1;
  memcpy(v75, v40, v41);
  *(a5 + 16) = v75;
  *(a5 + 24) = v71;
  *(a5 + 32) = v74;
  if (v40)
  {
    operator delete(v40);
  }

LABEL_66:
  *(a5 + 24) = v71;
  return sub_F9CF30(a1, a3, a4, a5);
}

unint64_t sub_F9CDE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = sub_F695C8(a2);
  v6 = sub_73F1C(a2);
  v7 = a1[9];
  v23 = 0u;
  v24 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v21 = _Q0;
  v25 = _Q0;
  v26 = 0x3FF0000000000000;
  v27 = 1;
  sub_10A5C78(a1, &v23, &v22, v6, v7);
  if (v27 == 1)
  {
    v14 = sub_F8634C(&v23, &v25, v13);
    v15 = DWORD1(v24) + HIDWORD(v14);
  }

  else
  {
    v15 = 0x7FFFFFFF;
  }

  v22 = sub_F69610(a2);
  v16 = sub_F69058(a2);
  v17 = a1[9];
  v23 = 0u;
  v24 = 0u;
  v25 = v21;
  v26 = 0x3FF0000000000000;
  v27 = 1;
  result = sub_10A5C78(a1, &v23, &v22, v16, v17);
  if (v27 == 1)
  {
    result = sub_F8634C(&v23, &v25, v19);
    v20 = DWORD1(v24) + HIDWORD(result);
  }

  else
  {
    v20 = 0x7FFFFFFF;
  }

  *(a3 + 256) = v15;
  *(a3 + 260) = v20;
  return result;
}

char *sub_F9CF30(uint64_t a1, int a2, int a3, uint64_t a4)
{
  *(a4 + 264) = *(a4 + 4);
  sub_146EC((a4 + 40), *(a4 + 16), *(a4 + 24), (*(a4 + 24) - *(a4 + 16)) >> 2);
  *(a4 + 268) = *(a4 + 4);
  result = sub_146EC((a4 + 64), *(a4 + 16), *(a4 + 24), (*(a4 + 24) - *(a4 + 16)) >> 2);
  v9 = *(a4 + 4);
  *(a4 + 272) = v9;
  *(a4 + 280) = v9;
  v10 = *(a1 + 88) * v9;
  if (v10 >= 0.0)
  {
    if (v10 < 4.50359963e15)
    {
      v11 = (v10 + v10) + 1;
      goto LABEL_6;
    }
  }

  else if (v10 > -4.50359963e15)
  {
    v11 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
LABEL_6:
    v10 = (v11 >> 1);
  }

  *(a4 + 276) = v10;
  if (a3 == 1 && a2 != 0x7FFFFFFF)
  {
    v12 = v9 / -10;
    v13 = v9 % 10;
    if (v9 < 0)
    {
      v14 = -5;
    }

    else
    {
      v14 = 5;
    }

    a2 += v12 + (((-103 * (v14 + v13)) >> 15) & 1) + ((-103 * (v14 + v13)) >> 10);
  }

  *a4 = a2;
  return result;
}

uint64_t sub_F9D088(uint64_t a1, int **a2, unsigned int a3)
{
  v6 = *a2;
  v7 = (*a2 - **a2);
  v8 = *v7;
  if (v8 >= 0x9B && v7[77] && (*(v6 + v7[77]) & 8) != 0)
  {
    v10 = 1;
    goto LABEL_14;
  }

  if (!*(a2 + 38))
  {
    if (v8 >= 0x47)
    {
      v9 = v7[35];
      if (v9)
      {
        v10 = 1;
        goto LABEL_11;
      }
    }

LABEL_12:
    v10 = 2;
    goto LABEL_14;
  }

  if (v8 < 0x47)
  {
    goto LABEL_12;
  }

  v9 = v7[35];
  v10 = 2;
  if (v9)
  {
LABEL_11:
    v10 = 2 * ((*(v6 + v9) & v10) == 0);
  }

LABEL_14:
  v11 = sub_F9E068(a1, a2, v10);
  v14 = *a2;
  v15 = (*a2 - **a2);
  v16 = *v15;
  if (*(a2 + 38))
  {
    if (v16 >= 0x57)
    {
      if (v15[43])
      {
        v17 = (v14 + v15[43]);
        v18 = (v17 + *v17);
        v19 = (v18 - *v18);
        v20 = 0.0;
        v21 = 0.0;
        if (*v19 >= 7u)
        {
          v22 = v19[3];
          if (v22)
          {
            LOWORD(v21) = *(v18 + v22);
            v21 = (*&v21 + *&v21) / 65535.0;
          }
        }

        v23 = v11 * v21 + 1.0;
        v24 = (v17 + *v17);
        v25 = (v24 - *v24);
        if (*v25 < 5u)
        {
          goto LABEL_46;
        }

        v26 = v25[2];
        if (!v26)
        {
          goto LABEL_46;
        }

LABEL_45:
        LOWORD(v20) = *(v24 + v26);
        v20 = *&v20 + *&v20;
        goto LABEL_46;
      }

      if (v16 < 0x7D)
      {
        v20 = 0.0;
        v23 = v11 * 0.0 + 1.0;
        if (v16 < 0x7B)
        {
          goto LABEL_46;
        }

        v26 = v15[61];
        if (!v15[61])
        {
          goto LABEL_35;
        }
      }

      else if (v15[62])
      {
        LOWORD(v13) = *(v14 + v15[62]);
        v33 = v11 * ((v13 + v13) / 65535.0);
        v20 = 1.0;
        v23 = v33 + 1.0;
        v26 = v15[61];
        if (!v15[61])
        {
LABEL_35:
          v20 = 0.0;
          goto LABEL_46;
        }
      }

      else
      {
        v20 = 1.0;
        v23 = v11 * 0.0 + 1.0;
        v26 = v15[61];
        if (!v15[61])
        {
          goto LABEL_35;
        }
      }

      v24 = *a2;
      goto LABEL_45;
    }

LABEL_31:
    v20 = 0.0;
    v23 = v11 * 0.0 + 1.0;
    goto LABEL_46;
  }

  if (v16 < 0x57)
  {
    goto LABEL_31;
  }

  if (v15[43])
  {
    v27 = (v14 + v15[43]);
    v28 = (v27 + *v27);
    v29 = (v28 - *v28);
    v20 = 0.0;
    v30 = 0.0;
    if (*v29 >= 5u)
    {
      v31 = v29[2];
      if (v31)
      {
        LOWORD(v30) = *(v28 + v31);
        v30 = (*&v30 + *&v30) / 65535.0;
      }
    }

    v23 = v11 * v30 + 1.0;
    v24 = (v27 + *v27);
    v32 = (v24 - *v24);
    if (*v32 >= 7u)
    {
      v26 = v32[3];
      if (v26)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    v20 = 0.0;
    v34 = 0.0;
    if (v16 >= 0x7B && v15[61])
    {
      LOWORD(v34) = *(v14 + v15[61]);
      v34 = (*&v34 + *&v34) / 65535.0;
    }

    v23 = v11 * v34 + 1.0;
    if (v16 >= 0x7D)
    {
      v26 = v15[62];
      v24 = *a2;
      if (v15[62])
      {
        goto LABEL_45;
      }
    }
  }

LABEL_46:
  v35 = v23 / (v12 * (v20 / 65535.0) + 1.0);
  if (v10 == 2 && v16 >= 0x2F && v15[23] && *(v14 + v15[23]) == 9)
  {
    v35 = v35 * *(a1 + 120);
  }

  if (*(a1 + 376) != 1)
  {
    goto LABEL_63;
  }

  if (*(a2 + 38))
  {
    if (v16 >= 0x47)
    {
      if (v15[35])
      {
        v36 = *(v14 + v15[35]);
        if ((v36 & 0x141510) != 0 || (v36 & 0x40) != 0)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_64;
    }

LABEL_63:
    if (v16 < 0x2F)
    {
      goto LABEL_71;
    }

    goto LABEL_64;
  }

  if (v16 < 0x47)
  {
    goto LABEL_63;
  }

  if (v15[35])
  {
    v37 = *(v14 + v15[35]);
    if ((v37 & 0xA0A88) != 0 || (v37 & 0x20) != 0)
    {
      goto LABEL_106;
    }
  }

LABEL_64:
  v38 = v15[23];
  if (v38)
  {
    v39 = *(v14 + v38);
    if (!v10)
    {
      goto LABEL_66;
    }

LABEL_72:
    if (v10 != 2)
    {
      goto LABEL_106;
    }

    v40 = *(a1 + 352);
    if (v39 >= (*(a1 + 360) - v40) >> 3)
    {
      if (!sub_7E7E4(1u))
      {
        goto LABEL_106;
      }

      sub_19594F8(&v70);
      sub_4A5C(&v70, "Invalid FOW factor access for form_of_way_idx: ", 47);
      v43 = std::ostream::operator<<();
      sub_4A5C(v43, " and fow_factors_walking size: ", 31);
      std::ostream::operator<<();
      if ((v80 & 0x10) != 0)
      {
        v46 = v79;
        if (v79 < v76)
        {
          v79 = v76;
          v46 = v76;
        }

        v47 = &v75;
      }

      else
      {
        if ((v80 & 8) == 0)
        {
          v42 = 0;
          v69 = 0;
          goto LABEL_101;
        }

        v47 = &v73;
        v46 = v74;
      }

      v45 = *v47;
      v42 = v46 - *v47;
      if (v42 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v42 >= 0x17)
      {
        operator new();
      }

      v69 = v46 - *v47;
      if (!v42)
      {
        goto LABEL_101;
      }

LABEL_100:
      memmove(&__p, v45, v42);
      goto LABEL_101;
    }

LABEL_74:
    v35 = v35 * *(v40 + 8 * v39);
    goto LABEL_106;
  }

LABEL_71:
  v39 = 32;
  if (v10)
  {
    goto LABEL_72;
  }

LABEL_66:
  v40 = *(a1 + 328);
  if (v39 < (*(a1 + 336) - v40) >> 3)
  {
    goto LABEL_74;
  }

  if (!sub_7E7E4(1u))
  {
    goto LABEL_106;
  }

  sub_19594F8(&v70);
  sub_4A5C(&v70, "Invalid FOW factor access for form_of_way_idx: ", 47);
  v41 = std::ostream::operator<<();
  sub_4A5C(v41, " and fow_factors_cycling size: ", 31);
  std::ostream::operator<<();
  if ((v80 & 0x10) != 0)
  {
    v44 = v79;
    if (v79 < v76)
    {
      v79 = v76;
      v44 = v76;
    }

    v45 = v75;
    v42 = v44 - v75;
    if (v44 - v75 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_93:
      sub_3244();
    }

    goto LABEL_82;
  }

  if ((v80 & 8) != 0)
  {
    v45 = v73;
    v42 = v74 - v73;
    if (v74 - v73 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_93;
    }

LABEL_82:
    if (v42 >= 0x17)
    {
      operator new();
    }

    v69 = v42;
    if (!v42)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  v42 = 0;
  v69 = 0;
LABEL_101:
  *(&__p + v42) = 0;
  sub_7E854(&__p, 1u);
  if (v69 < 0)
  {
    operator delete(__p);
  }

  if (v78 < 0)
  {
    operator delete(v77);
  }

  std::locale::~locale(&v72);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_106:
  v48 = (*a2 - **a2);
  v49 = 0.0;
  if (*v48 >= 9u)
  {
    v50 = v48[4];
    if (v50)
    {
      LODWORD(v49) = *(*a2 + v50);
      v49 = *&v49;
    }
  }

  v51 = a3 / 1000000000.0 * v49;
  if (v51 >= 0.0)
  {
    if (v51 >= 4.50359963e15)
    {
      goto LABEL_115;
    }

    v52 = (v51 + v51) + 1;
  }

  else
  {
    if (v51 <= -4.50359963e15)
    {
      goto LABEL_115;
    }

    v52 = (v51 + v51) - 1 + (((v51 + v51) - 1) >> 63);
  }

  v51 = (v52 >> 1);
LABEL_115:
  v53 = v51;
  if (!v10)
  {
    v54 = 96;
    goto LABEL_135;
  }

  if (v10 == 2)
  {
    v54 = 104;
LABEL_135:
    v57 = *(a1 + v54);
    goto LABEL_136;
  }

  v55 = 3;
  if (!*(a2 + 38))
  {
    v55 = 2;
  }

  v56 = a2[v55];
  v57 = -1.0;
  if (v56)
  {
    v58 = (v56 - *v56);
    if (*v58 >= 9u)
    {
      v59 = v58[4];
      if (v59)
      {
        v60 = *(v56 + v59);
        if ((v60 - 1) <= 0xFFFDu)
        {
          v57 = v60 / 100.0;
        }
      }
    }
  }

  if ((*&v57 <= -1 || ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v57 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v54 = 112;
    goto LABEL_135;
  }

LABEL_136:
  v63 = v53 / (v57 / 3.6) / 10.0;
  if (v63 >= 0.0)
  {
    if (v63 >= 4.50359963e15)
    {
      goto LABEL_142;
    }

    v64 = (v63 + v63) + 1;
  }

  else
  {
    if (v63 <= -4.50359963e15)
    {
      goto LABEL_142;
    }

    v64 = (v63 + v63) - 1 + (((v63 + v63) - 1) >> 63);
  }

  v63 = (v64 >> 1);
LABEL_142:
  v65 = v35 * v63;
  if (v65 >= 0.0)
  {
    if (v65 < 4.50359963e15)
    {
      v66 = (v65 + v65) + 1;
      goto LABEL_147;
    }
  }

  else if (v65 > -4.50359963e15)
  {
    v66 = (v65 + v65) - 1 + (((v65 + v65) - 1) >> 63);
LABEL_147:
    v65 = (v66 >> 1);
  }

  return v65;
}

void sub_F9DA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_F9DAB8(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 >= 0x47)
    {
      v5 = v3[35];
      if (v3[35])
      {
        if ((*&v2[v3[35]] & 2) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_9;
      }
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (v4 < 0x47)
  {
    goto LABEL_14;
  }

  v5 = v3[35];
  if (!v3[35])
  {
    goto LABEL_14;
  }

  if ((*&v2[v3[35]] & 1) == 0)
  {
LABEL_27:
    v10 = 0;
    goto LABEL_29;
  }

LABEL_9:
  v6 = a2[5];
  v7 = (v6 - *v6);
  v8 = *v7;
  if (*(a2 + 78))
  {
    if (v8 >= 0x47)
    {
      v9 = v7[35];
      if (v9)
      {
        if ((*(v6 + v9) & 2) != 0)
        {
          goto LABEL_27;
        }
      }
    }
  }

  else if (v8 >= 0x47)
  {
    v16 = v7[35];
    if (v16)
    {
      if (*(v6 + v16))
      {
        goto LABEL_27;
      }
    }
  }

  v10 = *(a1 + 244);
LABEL_29:
  if (*(a2 + 38))
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  if ((*&v2[v5] & v17) == 0)
  {
LABEL_15:
    v11 = a2[5];
    v12 = (v11 - *v11);
    v13 = *v12;
    if (*(a2 + 78))
    {
      if (v13 < 0x47)
      {
        goto LABEL_33;
      }

      v14 = v12[35];
      if (!v14 || (*(v11 + v14) & 2) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v13 < 0x47)
      {
        goto LABEL_33;
      }

      v15 = v12[35];
      if (!v15 || (*(v11 + v15) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v10 = (*(a1 + 248) + v10);
  }

LABEL_33:
  if (*(a2 + 38))
  {
    if (v4 >= 0x4D)
    {
      if (v3[38])
      {
        if ((v2[v3[38]] & 8) == 0)
        {
          if ((*&v2[v3[38]] & 2) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_43;
        }

LABEL_46:
        v18 = 252;
        goto LABEL_47;
      }

      goto LABEL_48;
    }

LABEL_44:
    v19 = 0;
    v20 = a2[5];
    v21 = (v20 - *v20);
    if (*v21 < 0x9Bu)
    {
      goto LABEL_58;
    }

    goto LABEL_54;
  }

  if (v4 < 0x4D)
  {
    goto LABEL_44;
  }

  if (v3[38])
  {
    if ((v2[v3[38]] & 4) != 0)
    {
      goto LABEL_46;
    }

    if (*&v2[v3[38]])
    {
LABEL_43:
      v18 = 256;
LABEL_47:
      v10 = (*(a1 + v18) + v10);
    }
  }

LABEL_48:
  if (v4 < 0x9B)
  {
    v19 = 0;
    goto LABEL_53;
  }

  if (v3[77])
  {
    v19 = 1;
    if ((v2[v3[77]] & 8) != 0)
    {
      goto LABEL_58;
    }

LABEL_53:
    v20 = a2[5];
    v21 = (v20 - *v20);
    if (*v21 < 0x9Bu)
    {
      goto LABEL_58;
    }

    goto LABEL_54;
  }

  v19 = 1;
  v20 = a2[5];
  v21 = (v20 - *v20);
  if (*v21 < 0x9Bu)
  {
    goto LABEL_58;
  }

LABEL_54:
  v22 = v21[77];
  if (v22 && (*(v20 + v22) & 8) != 0)
  {
    v10 = (*(a1 + 128) + v10);
  }

LABEL_58:
  if ((*(a2 + 84) & 4) != 0)
  {
    return v10;
  }

  if (v4 >= 0x2F && v3[23])
  {
    v23 = v2[v3[23]];
    v55 = v23 > 0x36;
    v24 = (1 << v23) & 0x44000000000008;
    if (!v55 && v24 != 0)
    {
      v26 = a2[5];
      v27 = (v26 - *v26);
      if (*v27 >= 0x2Fu)
      {
        v28 = v27[23];
        if (v28)
        {
          v29 = *(v26 + v28);
          v55 = v29 > 0x36;
          v30 = (1 << v29) & 0x44000000000008;
          if (!v55 && v30 != 0)
          {
            return v10;
          }
        }
      }
    }
  }

  if (!*(a2 + 38))
  {
    if (v4 < 0x4B)
    {
      goto LABEL_79;
    }

    v32 = v3[37];
    if (!v3[37])
    {
      goto LABEL_79;
    }

LABEL_78:
    v33 = *&v2[v32];
    goto LABEL_80;
  }

  if (v4 >= 0x49)
  {
    v32 = v3[36];
    if (v3[36])
    {
      goto LABEL_78;
    }
  }

LABEL_79:
  v33 = -1;
LABEL_80:
  v34 = v33 + 18000;
  v35 = v33 - 18000;
  if ((v34 >> 5) < 0x465u)
  {
    v35 = v34;
  }

  v36 = a2[5];
  v37 = (v36 - *v36);
  v38 = *v37;
  if (!*(a2 + 78))
  {
    if (v38 < 0x49)
    {
      goto LABEL_89;
    }

    v39 = v37[36];
    if (!v39)
    {
      goto LABEL_89;
    }

LABEL_88:
    v40 = *(v36 + v39);
    goto LABEL_90;
  }

  if (v38 >= 0x4B)
  {
    v39 = v37[37];
    if (v39)
    {
      goto LABEL_88;
    }
  }

LABEL_89:
  v40 = 0xFFFF;
LABEL_90:
  v41 = v40 - v35;
  if (v41 > 18000)
  {
    v41 -= 36000;
  }

  if (v41 < -17999)
  {
    v41 += 36000;
  }

  v42 = round(v41 / 100.0);
  if (v19 && v3[77])
  {
    if (v42 < 0.0 == v2[v3[77] + 1] >> 7)
    {
      return (*sub_762504((a1 + 264), fabs(v42)) + v10);
    }
  }

  else if (v42 >= 0.0)
  {
    return (*sub_762504((a1 + 264), fabs(v42)) + v10);
  }

  v44 = 3;
  if (!*(a2 + 38))
  {
    v44 = 2;
  }

  v45 = a2[v44];
  v46 = -1.0;
  if (*(a2 + 38))
  {
    if (v4 < 0x11)
    {
      goto LABEL_110;
    }

    v47 = v3[8];
    if (!v47)
    {
      goto LABEL_110;
    }
  }

  else
  {
    if (v4 < 0xF)
    {
      goto LABEL_110;
    }

    v47 = v3[7];
    if (!v47)
    {
      goto LABEL_110;
    }
  }

  v48 = v2[v47];
  v46 = v48;
  if (!v48)
  {
    v46 = -1.0;
  }

LABEL_110:
  v49 = -1.0;
  if (v45)
  {
    v50 = (v45 - *v45);
    if (*v50 >= 9u)
    {
      v51 = v50[4];
      if (v51)
      {
        v52 = *(v45 + v51);
        if ((v52 - 1) <= 0xFFFDu)
        {
          v49 = v52 / 100.0;
        }
      }
    }
  }

  v55 = (*&v46 <= -1 || ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && *&v46 != 0 || v46 <= 0.0;
  if (v55)
  {
    v46 = 0.0;
  }

  if ((*&v49 <= -1 || ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v49 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v49 = 0.0;
  }

  if (v46 < v49)
  {
    v46 = v49;
  }

  v58 = 1.0;
  if (*&v46 >> 52 <= 0x7FEuLL && v46 > 0.0 && v46 >= *(a1 + 312))
  {
    v58 = *(a1 + 320);
  }

  v59 = v58 * *sub_762504((a1 + 288), fabs(v42));
  if (v59 >= 0.0)
  {
    if (v59 < 4.50359963e15)
    {
      v60 = (v59 + v59) + 1;
      goto LABEL_147;
    }
  }

  else if (v59 > -4.50359963e15)
  {
    v60 = (v59 + v59) - 1 + (((v59 + v59) - 1) >> 63);
LABEL_147:
    v59 = (v60 >> 1);
  }

  return (v10 + v59);
}

double sub_F9E068(uint64_t a1, int **a2, int a3)
{
  v3 = *a2;
  v4 = (*a2 - **a2);
  v5 = *v4;
  if (v5 >= 0x2F && v4[23] && *(v3 + v4[23]) == 9)
  {
    return *(a1 + 144);
  }

  if (a3 == 2)
  {
    return *(a1 + 152);
  }

  result = 0.0;
  v7 = 0.0;
  if (a3)
  {
    return result;
  }

  if (*(a1 + 184) != 1)
  {
    return *(a1 + 136);
  }

  if (*(a2 + 38))
  {
    if (v5 >= 0x57)
    {
      if (v4[43])
      {
        v8 = (v3 + v4[43]);
        v9 = (v8 + *v8);
        v10 = (v9 - *v9);
        if (*v10 >= 7u)
        {
          v11 = v10[3];
          if (v11)
          {
            LOWORD(result) = *(v9 + v11);
            result = (*&result + *&result) / 65535.0;
          }
        }

        v3 = (v8 + *v8);
        v12 = (v3 - *v3);
        if (*v12 < 5u)
        {
          goto LABEL_40;
        }

        v13 = v12[2];
        if (!v13)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (v5 < 0x7D)
      {
        if (v5 < 0x7B)
        {
          goto LABEL_40;
        }
      }

      else if (v4[62])
      {
        LOWORD(result) = *(v3 + v4[62]);
        result = (*&result + *&result) / 65535.0;
      }

      v13 = v4[61];
      v7 = 0.0;
      if (v13)
      {
LABEL_39:
        LOWORD(v7) = *(v3 + v13);
        v7 = *&v7 + *&v7;
      }
    }
  }

  else if (v5 >= 0x57)
  {
    if (v4[43])
    {
      v14 = (v3 + v4[43]);
      v15 = (v14 + *v14);
      v16 = (v15 - *v15);
      if (*v16 >= 5u)
      {
        v17 = v16[2];
        if (v17)
        {
          LOWORD(result) = *(v15 + v17);
          result = (*&result + *&result) / 65535.0;
        }
      }

      v3 = (v14 + *v14);
      v18 = (v3 - *v3);
      if (*v18 < 7u)
      {
        goto LABEL_40;
      }

      v13 = v18[3];
      if (!v13)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v5 < 0x7B)
      {
        goto LABEL_40;
      }

      if (v4[61])
      {
        LOWORD(result) = *(v3 + v4[61]);
        result = (*&result + *&result) / 65535.0;
      }

      if (v5 < 0x7D)
      {
        goto LABEL_40;
      }

      v13 = v4[62];
      if (!v13)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_39;
  }

LABEL_40:
  v19 = v7 / 65535.0;
  v20 = *(a1 + 192);
  v21 = *v20;
  if (result <= *v20)
  {
    goto LABEL_51;
  }

  v22 = *(a1 + 200);
  v23 = (v22 - v20) >> 4;
  if (v23 >= 1)
  {
    if (v22 - v20 != 16)
    {
      do
      {
        v24 = (4 * v23) & 0xFFFFFFFFFFFFFFF0;
        _X13 = v20 + v24;
        __asm { PRFM            #0, [X13] }

        v31 = &v20[2 * (v23 >> 1)];
        _X12 = v31 + v24;
        __asm { PRFM            #0, [X12] }

        if (*v31 >= result)
        {
          v34 = 0;
        }

        else
        {
          v34 = v23 >> 1;
        }

        v20 += 2 * v34;
        v23 -= v23 >> 1;
      }

      while (v23 > 1);
      v21 = *v20;
    }

    v20 += 2 * (v21 < result);
  }

  if (v22 == v20)
  {
    result = *(v22 - 1);
    v36 = *(a1 + 216);
    if (v19 <= *v36)
    {
      return result;
    }

    goto LABEL_52;
  }

  v35 = *(v20 - 2);
  if (v35 == *v20)
  {
LABEL_51:
    result = v20[1];
    v36 = *(a1 + 216);
    if (v19 <= *v36)
    {
      return result;
    }
  }

  else
  {
    result = *(v20 - 1) + (result - v35) / (*v20 - v35) * (v20[1] - *(v20 - 1));
    v36 = *(a1 + 216);
    if (v19 <= *v36)
    {
      return result;
    }
  }

LABEL_52:
  v37 = *(a1 + 224) - v36;
  v38 = v37 >> 4;
  if (v37 >> 4 >= 1 && v37 != 16)
  {
    do
    {
      v39 = (4 * v38) & 0xFFFFFFFFFFFFFFF0;
      _X13 = v36 + v39;
      __asm { PRFM            #0, [X13] }

      v42 = &v36[2 * (v38 >> 1)];
      _X12 = v42 + v39;
      __asm { PRFM            #0, [X12] }

      if (*v42 >= v19)
      {
        v45 = 0;
      }

      else
      {
        v45 = v38 >> 1;
      }

      v36 += 2 * v45;
      v38 -= v38 >> 1;
    }

    while (v38 > 1);
  }

  return result;
}