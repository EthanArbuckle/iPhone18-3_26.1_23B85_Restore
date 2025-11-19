uint64_t *sub_2500EF430(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  result = sub_2500EF298(a1, a2, a3, a4, a6);
  v13 = *a4;
  v14 = **a6;
  v15 = v14 + 8 * *a5;
  v16 = v14 + 8 * *a4;
  v17 = *(v15 + 4);
  v18 = *(v16 + 4);
  if (v17 == 1 && (v18 & 1) != 0)
  {
    v19 = -1;
    if (*v15 >= *v16)
    {
      v19 = 1;
    }

    if (*v15 == *v16)
    {
      v19 = 0;
    }

    if ((v19 & 0x80) == 0)
    {
      return result;
    }

LABEL_15:
    *a4 = *a5;
    *a5 = v13;
    v22 = *a3;
    v23 = v14 + 8 * *a4;
    v24 = v14 + 8 * *a3;
    v25 = *(v23 + 4);
    v26 = *(v24 + 4);
    if (v25 == 1 && (v26 & 1) != 0)
    {
      v27 = -1;
      if (*v23 >= *v24)
      {
        v27 = 1;
      }

      if (*v23 == *v24)
      {
        v27 = 0;
      }

      if ((v27 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v28 = -1;
      if (((v25 ^ 1) & v26) == 0)
      {
        v28 = 1;
      }

      if ((v26 | v25))
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      if ((v29 & 0x80) == 0)
      {
        return result;
      }
    }

    *a3 = *a4;
    *a4 = v22;
    v30 = *a2;
    v31 = v14 + 8 * *a3;
    v32 = v14 + 8 * *a2;
    v33 = *(v31 + 4);
    v34 = *(v32 + 4);
    if (v33 == 1 && (v34 & 1) != 0)
    {
      v35 = -1;
      if (*v31 >= *v32)
      {
        v35 = 1;
      }

      if (*v31 == *v32)
      {
        v35 = 0;
      }

      if ((v35 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v36 = -1;
      if (((v33 ^ 1) & v34) == 0)
      {
        v36 = 1;
      }

      if ((v34 | v33))
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      if ((v37 & 0x80) == 0)
      {
        return result;
      }
    }

    *a2 = *a3;
    *a3 = v30;
    v38 = *a1;
    v39 = v14 + 8 * *a2;
    v40 = v14 + 8 * *a1;
    v41 = *(v39 + 4);
    v42 = *(v40 + 4);
    if (v41 == 1 && (v42 & 1) != 0)
    {
      v43 = -1;
      if (*v39 >= *v40)
      {
        v43 = 1;
      }

      if (*v39 == *v40)
      {
        v43 = 0;
      }

      if ((v43 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v44 = -1;
      if (((v41 ^ 1) & v42) == 0)
      {
        v44 = 1;
      }

      if ((v42 | v41))
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      if ((v45 & 0x80) == 0)
      {
        return result;
      }
    }

    *a1 = *a2;
    *a2 = v38;
    return result;
  }

  v20 = -1;
  if (((v17 ^ 1) & v18) == 0)
  {
    v20 = 1;
  }

  if ((v18 | v17))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 < 0)
  {
    goto LABEL_15;
  }

  return result;
}

BOOL sub_2500EF634(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_2500EF0B8(a1, a1 + 1, a2 - 1, **a3);
        return 1;
      case 4:
        sub_2500EF298(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_2500EF430(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      v9 = **a3;
      v10 = v9 + 8 * v7;
      v11 = v9 + 8 * *a1;
      v12 = *(v10 + 4);
      v13 = *(v11 + 4);
      if (v12 == 1 && (v13 & 1) != 0)
      {
        v14 = -1;
        if (*v10 >= *v11)
        {
          v14 = 1;
        }

        if (*v10 == *v11)
        {
          v14 = 0;
        }

        if ((v14 & 0x80) == 0)
        {
          return 1;
        }
      }

      else
      {
        v41 = -1;
        if (((v12 ^ 1) & v13) == 0)
        {
          v41 = 1;
        }

        if ((v13 | v12))
        {
          v42 = v41;
        }

        else
        {
          v42 = 0;
        }

        if ((v42 & 0x80) == 0)
        {
          return 1;
        }
      }

      *a1 = v7;
      *(a2 - 1) = v8;
      return 1;
    }
  }

  v15 = a1 + 2;
  sub_2500EF0B8(a1, a1 + 1, a1 + 2, **a3);
  v16 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v17 = 0;
  v18 = **a3;
  for (i = 24; ; i += 8)
  {
    v20 = *v16;
    v21 = *v15;
    v22 = v18 + 8 * *v16;
    v23 = v18 + 8 * *v15;
    v24 = *(v22 + 4);
    v25 = *(v23 + 4);
    if (v24 == 1 && (v25 & 1) != 0)
    {
      break;
    }

    if (((v24 ^ 1) & v25) != 0)
    {
      v28 = -1;
    }

    else
    {
      v28 = 1;
    }

    if ((v25 | v24))
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    if (v29 < 0)
    {
      goto LABEL_35;
    }

LABEL_55:
    v15 = v16++;
    if (v16 == a2)
    {
      return 1;
    }
  }

  v26 = *v23;
  if (*v22 >= v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = -1;
  }

  if (*v22 == v26)
  {
    v27 = 0;
  }

  if ((v27 & 0x80) == 0)
  {
    goto LABEL_55;
  }

LABEL_35:
  v30 = v24 ^ 1;
  v31 = i;
  while (1)
  {
    *(a1 + v31) = v21;
    v32 = v31 - 8;
    if (v31 == 8)
    {
      break;
    }

    v21 = *(a1 + v31 - 16);
    v33 = v18 + 8 * v21;
    v34 = *(v33 + 4);
    if (v24 && (v34 & 1) != 0)
    {
      v35 = *v33;
      v36 = *v22 == v35;
      if (*v22 >= v35)
      {
        v37 = 1;
      }

      else
      {
        v37 = -1;
      }

      if (v36)
      {
        v37 = 0;
      }
    }

    else
    {
      v38 = v30 & v34;
      if ((v30 & v34) != 0)
      {
        v39 = -1;
      }

      else
      {
        v39 = 1;
      }

      if (v38 != v24)
      {
        v37 = v39;
      }

      else
      {
        v37 = 0;
      }
    }

    v31 = v32;
    if ((v37 & 0x80) == 0)
    {
      v40 = (a1 + v32);
      goto LABEL_54;
    }
  }

  v40 = a1;
LABEL_54:
  *v40 = v20;
  if (++v17 != 8)
  {
    goto LABEL_55;
  }

  return v16 + 1 == a2;
}

void sub_2500EF8A8()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, &unk_286298578, MEMORY[0x277D82618]);
}

void *sub_2500EF8F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2500E9AAC();
  }

  return operator new(4 * a1);
}

void *sub_2500EF92C(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = result;
    if (a4 >> 62)
    {
      sub_2500E9A94();
    }

    result = sub_2500EF8F4(a4);
    v7 = result;
    *v4 = result;
    v4[1] = result;
    v4[2] = result + 4 * v8;
    v9 = a3 - a2;
    if (v9)
    {
      result = memmove(result, a2, v9);
    }

    v4[1] = v7 + v9;
  }

  return result;
}

void sub_2500EF9A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2500EF9C4(void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2500EA010(a1, a2);
    v4 = a1[1];
    v5 = &v4[a2];
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_2500EFA1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2500EFA38(void *a1)
{
  *a1 = &unk_2862985A0;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;
    operator delete(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    a1[6] = v5;
    operator delete(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    a1[3] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_2500EFAC8(void *__p)
{
  *__p = &unk_2862985A0;
  v2 = __p[14];
  if (v2)
  {
    __p[15] = v2;
    operator delete(v2);
  }

  v3 = __p[11];
  if (v3)
  {
    __p[12] = v3;
    operator delete(v3);
  }

  v4 = __p[8];
  if (v4)
  {
    __p[9] = v4;
    operator delete(v4);
  }

  v5 = __p[5];
  if (v5)
  {
    __p[6] = v5;
    operator delete(v5);
  }

  v6 = __p[2];
  if (v6)
  {
    __p[3] = v6;
    operator delete(v6);
  }

  operator delete(__p);
}

_DWORD *sub_2500EFB68(uint64_t a1)
{
  v2 = operator new(0x90uLL);
  *v2 = &unk_2862985A0;
  sub_2500EFFE4((v2 + 2), a1 + 8);
  v2[35] = 0;
  *(v2 + 137) = 0;
  return v2;
}

uint64_t sub_2500EFBD8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862985A0;
  result = sub_2500EFFE4(a2 + 8, a1 + 8);
  *(a2 + 140) = 0;
  *(a2 + 137) = 0;
  return result;
}

void sub_2500EFC2C(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;
    operator delete(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    a1[6] = v5;
    operator delete(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    a1[3] = v6;

    operator delete(v6);
  }
}

void sub_2500EFCB4(void *__p)
{
  v2 = __p[14];
  if (v2)
  {
    __p[15] = v2;
    operator delete(v2);
  }

  v3 = __p[11];
  if (v3)
  {
    __p[12] = v3;
    operator delete(v3);
  }

  v4 = __p[8];
  if (v4)
  {
    __p[9] = v4;
    operator delete(v4);
  }

  v5 = __p[5];
  if (v5)
  {
    __p[6] = v5;
    operator delete(v5);
  }

  v6 = __p[2];
  if (v6)
  {
    __p[3] = v6;
    operator delete(v6);
  }

  operator delete(__p);
}

int *sub_2500EFD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 160) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 16) = 0u;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = *(a1 + 16);
    do
    {
      v8 = *v7++;
      v6 += *(v8 + 24) * *(v8 + 32);
    }

    while (v7 != v4);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  *(a2 + 24) = v6;
  *(a2 + 32) = vdupq_n_s64(1uLL);
  result = operator new[](4 * v6);
  v10 = result;
  *a2 = result;
  *(a2 + 48) = 1;
  if (v5 != v4)
  {
    if ((v4 - v5) <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v4 - v5;
    }

    do
    {
      v12 = *(*v5 + 24) * *(*v5 + 32);
      v13 = 4 * v12;
      if (v12)
      {
        result = memmove(v10, (**v5 + 4 * *(*v5 + 8)), v13);
      }

      v10 += v13;
      ++v5;
      --v11;
    }

    while (v11);
  }

  v14 = *(a1 + 8);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 4;
  *(a2 + 80) = v14;
  *(a2 + 88) = vdupq_n_s64(1uLL);
  *(a2 + 104) = 0;
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  if (v15 == v16)
  {
    if (*(a1 + 136) != 1)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = *v15++;
      v17 |= v18;
    }

    while (v15 != v16);
    if ((*(a1 + 136) & 1) == 0 && v17 <= 1)
    {
      goto LABEL_30;
    }
  }

  result = operator new[](4 * v14);
  v19 = result;
  *(a2 + 56) = result;
  *(a2 + 104) = 1;
  v21 = *(a1 + 40);
  v20 = *(a1 + 48);
  if (v20 != v21)
  {
    v22 = 0;
    do
    {
      v23 = *(v21 + 8 * v22);
      if (v23)
      {
        v24 = v23[3];
        v25 = 4 * v24;
        if (v24)
        {
          result = memmove(v19, (*v23 + 4 * v23[1]), 4 * v24);
          v21 = *(a1 + 40);
          v20 = *(a1 + 48);
        }

        v19 = (v19 + v25);
      }

      else
      {
        v26 = *(*(a1 + 88) + 8 * v22);
        if (v26)
        {
          v27 = *(*(a1 + 112) + v22) + 2;
          do
          {
            *v19++ = v27;
            --v26;
          }

          while (v26);
        }
      }

      ++v22;
    }

    while (v22 < (v20 - v21) >> 3);
  }

LABEL_30:
  if (*(a1 + 72) - *(a1 + 64) >= 5uLL)
  {
    v28 = *(a1 + 8);
    if (*(a2 + 160) == 1)
    {
      v29 = *(a2 + 112);
      if (v29)
      {
        operator delete[](v29);
      }
    }

    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 128) = 260;
    *(a2 + 136) = v28;
    *(a2 + 144) = vdupq_n_s64(1uLL);
    *(a2 + 160) = 0;
    result = operator new[](4 * v28);
    *(a2 + 112) = result;
    *(a2 + 160) = 1;
    v30 = *(a1 + 64);
    v31 = *(a1 + 72);
    v32 = v31 - v30;
    if (v31 != v30)
    {
      v33 = 0;
      v34 = v32 >> 2;
      v35 = *(a1 + 88);
      if (v34 <= 1)
      {
        v34 = 1;
      }

      do
      {
        v36 = *(v35 + 8 * v33);
        if (v36)
        {
          v37 = *(v30 + 4 * v33);
          do
          {
            *result++ = v37;
            --v36;
          }

          while (v36);
        }

        ++v33;
      }

      while (v33 != v34);
    }
  }

  return result;
}

uint64_t sub_2500EFFE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_2500F019C((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_2500F019C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_2500EF92C((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v5 = *(a2 + 80);
  v4 = *(a2 + 88);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    sub_2500EE2DC((a1 + 80), v6 >> 3);
    v7 = *(a1 + 88);
    memmove(v7, v5, v6);
    *(a1 + 88) = &v7[v6];
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v9 = *(a2 + 104);
  v8 = *(a2 + 112);
  v10 = v8 - v9;
  if (v8 != v9)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      sub_2500E9A94();
    }

    v11 = operator new(v8 - v9);
    *(a1 + 104) = v11;
    *(a1 + 112) = v11;
    v12 = &v11[v10];
    *(a1 + 120) = &v11[v10];
    memcpy(v11, v9, v10);
    *(a1 + 112) = v12;
  }

  *(a1 + 128) = *(a2 + 128);
  return a1;
}

void sub_2500F0128(_Unwind_Exception *exception_object)
{
  v7 = *v5;
  if (*v5)
  {
    v1[11] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v1[8] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[5] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v1[2] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2500F019C(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_2500EBF20(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_2500F01FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2500F0218(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      operator delete[](v2);
    }
  }

  if (*(a1 + 104) == 1)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  if (*(a1 + 48) == 1 && *a1)
  {
    operator delete[](*a1);
  }

  return a1;
}

void *sub_2500F0284(void *a1)
{
  *a1 = &unk_2862985E8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2500F02D4(void *__p)
{
  *__p = &unk_2862985E8;
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void *sub_2500F0334(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2862985E8;
  v2[2] = 0;
  v2[3] = 0;
  v2[1] = 0;
  sub_2500F019C(v2 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  return v2;
}

void *sub_2500F03AC(uint64_t a1, void *a2)
{
  *a2 = &unk_2862985E8;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  return sub_2500F019C(a2 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
}

void sub_2500F03E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_2500F0400(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

char *sub_2500F0444@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v2 = *(result + 1);
  v3 = *(result + 2);
  if (v2 != v3)
  {
    v5 = 0;
    v6 = *(result + 1);
    do
    {
      v7 = *v6++;
      v5 += *(v7 + 24) * *(v7 + 32);
    }

    while (v6 != v3);
    *(a2 + 16) = 4;
    *(a2 + 24) = v5;
    *(a2 + 32) = vdupq_n_s64(1uLL);
    *(a2 + 8) = 0;
    result = operator new[](4 * v5);
    v8 = result;
    *a2 = result;
    *(a2 + 48) = 1;
    if ((v3 - v2) <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v3 - v2;
    }

    do
    {
      v10 = *(*v2 + 24) * *(*v2 + 32);
      v11 = 4 * v10;
      if (v10)
      {
        result = memmove(v8, (**v2 + 4 * *(*v2 + 8)), v11);
      }

      v8 += v11;
      ++v2;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_2500F0524(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = *a1;
    if (os_signpost_enabled(*a1))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_2500E5000, v3, OS_SIGNPOST_INTERVAL_END, v2, "GCLEncodeMeshFromBufferList", byte_2501106A1, v5, 2u);
    }
  }

  return a1;
}

uint64_t sub_2500F05AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2500F06A4(&v10, *a2, *(a2 + 8));
  v6 = *(a1 + 8);
  v7 = *v6;
  *v6 = v10;
  v8 = (*(***(a1 + 8) + 16))(**(a1 + 8), a2, a3);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return v8;
}

void sub_2500F066C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2500F06A4(void *a1, _DWORD *a2, uint64_t a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0xEEB6CC7FFAA28E71;
  if (sub_2500EA484(a2, a3 & ~(a3 >> 63), v7, 2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25305EAE0](exception, "No handler");
    __cxa_throw(exception, &unk_286298448, MEMORY[0x277D82600]);
  }

  result = operator new(0x20uLL);
  *result = &unk_286298470;
  result[1] = result + 1;
  result[2] = result + 1;
  result[3] = 0;
  *a1 = result;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2500F07A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2500F06A4(&v10, *a2, *(a2 + 8));
  v6 = *(a1 + 8);
  v7 = *v6;
  *v6 = v10;
  v8 = (*(***(a1 + 8) + 24))(**(a1 + 8), a2, a3);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return v8;
}

void sub_2500F0864(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2500F08A4(char *a1)
{
  if ((atomic_load_explicit(&qword_27F3C08C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F3C08C8))
  {
    qword_27F3C08C0 = sub_2500F0930(a1);
    __cxa_guard_release(&qword_27F3C08C8);
  }

  return qword_27F3C08C0;
}

void *sub_2500F0930(char *__symbol)
{
  if ((atomic_load_explicit(&qword_27F3C0F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F3C0F08))
  {
    qword_27F3C0F00 = sub_2500F0A58();
    __cxa_guard_release(&qword_27F3C0F08);
  }

  result = qword_27F3C0F00;
  if (qword_27F3C0F00)
  {

    return dlsym(result, __symbol);
  }

  return result;
}

uint64_t sub_2500F09CC(char *a1)
{
  if ((atomic_load_explicit(&qword_27F3C08D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F3C08D8))
  {
    qword_27F3C08D0 = sub_2500F0930(a1);
    __cxa_guard_release(&qword_27F3C08D8);
  }

  return qword_27F3C08D0;
}

void *sub_2500F0A58()
{
  v0 = dlopen("/AppleInternal/Library/Frameworks/GeometryCompressionInternal.framework/GeometryCompressionInternal", 262);
  v1 = v0;
  if (v0)
  {
    v2 = dlsym(v0, "GeometryCompressionInternalVersionNumber");
    if (!v2 || *v2 != 18.0)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_2500F0AB8(uint64_t result)
{
  v1 = 0;
  *result = 0;
  *&v2 = 0xFFFF00000000;
  *(&v2 + 1) = 0xFFFF00000000;
  *(result + 24) = v2;
  *(result + 16) = 0;
  *(result + 40) = 0;
  v3 = 0x217u;
  do
  {
    *(result + v1 * 2 + 48) = word_27F3C08E0[v1];
    *(result + v3 * 2) = word_27F3C08E0[v3 - 280];
    ++v1;
    --v3;
  }

  while (v1 != 256);
  return result;
}

void *sub_2500F0B0C(uint64_t a1)
{
  *&v1 = 0xFFFF000000000000;
  *(&v1 + 1) = 0xFFFF000000000000;
  *(a1 + 24) = v1;
  *(a1 + 40) = 16;
  v2 = *a1;
  if (!*a1)
  {
    v4 = -16777216;
    goto LABEL_7;
  }

  v3 = *(a1 + 8);
  v4 = *v3 << 24;
  *(a1 + 32) = v4;
  if (v2 == 1)
  {
LABEL_7:
    v5 = v4 | 0xFF0000;
    goto LABEL_8;
  }

  v5 = v4 | (v3[1] << 16);
  *(a1 + 32) = v5;
  if (v2 <= 2)
  {
LABEL_8:
    v6 = v5 | 0xFF00;
    goto LABEL_9;
  }

  v6 = v5 | (v3[2] << 8);
  *(a1 + 32) = v6;
  if (v2 == 3)
  {
LABEL_9:
    v7 = 255;
    goto LABEL_10;
  }

  v7 = v3[3];
LABEL_10:
  *(a1 + 32) = v7 | v6;
  *(a1 + 16) = 3;
  return memcpy((a1 + 48), &unk_27F3C0AE0, 0x400uLL);
}

char *sub_2500F0BA4(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = a3 - 4;
  if (a3 >= 4)
  {
    v7 = *a2;
    v6 = a2 + 1;
    v5 = v7;
    if (v6)
    {
      v4 = &v5[v6];
      goto LABEL_7;
    }

    v4 = v5;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v5 = 0;
  }

  v6 = 0;
LABEL_7:
  if (!v4)
  {
    return 0;
  }

  v8 = 0;
  if (((v3 - v5) & 0x8000000000000000) == 0)
  {
    *a1 = v5;
    *(a1 + 8) = v6;
    sub_2500F0B0C(a1);
    return v4;
  }

  return v8;
}

uint64_t sub_2500F0C28(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, int32x2_t *a5, _DWORD *a6, void *a7, int *a8)
{
  *(a1 + 4384) = 0;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v60 = 0;
  v61 = 4;
  v62 = 0x101010100000002;
  v63 = 1;
  v16 = sub_2500F1000(a2, a3, &v57);
  if (!v16)
  {
    goto LABEL_51;
  }

  if (v17 < 0)
  {
    goto LABEL_51;
  }

  if (!a2)
  {
    goto LABEL_51;
  }

  if (((a3 - DWORD2(v57)) & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

  if (v16 + v17 < a2)
  {
    goto LABEL_51;
  }

  v18 = a2 + DWORD2(v57);
  if (v18 < v16)
  {
    goto LABEL_51;
  }

  v19 = v18 - v16;
  if ((v18 - v16) < 0)
  {
    goto LABEL_51;
  }

  if (!a5 || !a7 || !a6 && (HIDWORD(v58) & 0xFFFFFFFE) == 2 || !a8 && v59)
  {
    goto LABEL_14;
  }

  v23 = BYTE5(v57) == 6 || (BYTE5(v57) & 0xFE) == 4 || BYTE5(v57) == 8;
  if (BYTE4(v57) || !v23 || (BYTE5(v57) & 0xE) == 4 && (v61 & 0xFB) != 0 && v59)
  {
    v20 = 4;
    goto LABEL_52;
  }

  if (a3 < DWORD2(v57) || (v62 - 3) < 2 || (v61 & 0xFD) == 1)
  {
    goto LABEL_51;
  }

  v20 = 0;
  if (!v58 || !HIDWORD(v57))
  {
    return v20;
  }

  v54 = 0;
  v53 = 0;
  if (v19 < 4 || (LODWORD(v55) = *v16, (v19 & 0x7FFFFFFFFFFFFFFCLL) == 4) || (HIDWORD(v55) = v16[1], (v19 & 0x7FFFFFFFFFFFFFFCLL) == 8))
  {
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = v19 - 12;
    v25 = v16 + 3;
    v56 = v16[2];
  }

  if (v63 == 1)
  {
    if (!v24)
    {
      goto LABEL_51;
    }

    v26 = *v25;
    LODWORD(v53) = v26;
    if (v24 == 1)
    {
      goto LABEL_51;
    }

    v27 = *(v25 + 1);
    HIDWORD(v53) = v27;
    if (v24 == 2)
    {
      goto LABEL_51;
    }

    v24 -= 3;
    v28 = *(v25 + 2);
    v25 = (v25 + 3);
    v54 = v28;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v26 = 0;
  }

  if (!v25)
  {
    goto LABEL_51;
  }

  if (v26 <= v27)
  {
    v26 = v27;
  }

  if (v26 <= v28)
  {
    v26 = v28;
  }

  if (v26 >= 0x1D)
  {
    goto LABEL_51;
  }

  v51 = v58;
  v52 = v59;
  v49 = HIDWORD(v57);
  v50 = DWORD2(v57);
  sub_2500F116C(a1 + 1072, &v57, &v55, &v53);
  sub_2500F127C(a1 + 1304, a1 + 1072);
  v30 = sub_2500F0BA4(a1, v25, v24);
  if (!v30)
  {
    goto LABEL_51;
  }

  v33 = v31;
  if (v31 < 0)
  {
    goto LABEL_51;
  }

  v34 = v30;
  if (*(a1 + 1152) == 1)
  {
    sub_2500F1470(a1, v32);
  }

  else
  {
    sub_2500F1AC4(a1, v32);
  }

  v20 = *(a1 + 4384);
  if (v20)
  {
    return v20;
  }

  if (v52)
  {
    if (!a8)
    {
LABEL_14:
      v20 = 5;
LABEL_52:
      *(a1 + 4384) = v20;
      return v20;
    }

    if (sub_2500F0BA4(a1, v34, v33) && (v35 & 0x8000000000000000) == 0)
    {
      sub_2500F1CA0(a1, a8);
      v20 = *(a1 + 4384);
      if (v20)
      {
        return v20;
      }

      v20 = sub_2500F1FF4(a1, a8);
      *(a1 + 4384) = v20;
      goto LABEL_68;
    }

LABEL_51:
    v20 = 3;
    goto LABEL_52;
  }

  sub_2500F247C((a1 + 1232), 2uLL);
  v36 = *(a1 + 1232);
  *v36 = 0;
  v36[1] = v51;
  v20 = *(a1 + 4384);
LABEL_68:
  if (!v20)
  {
    v37 = *(a1 + 1184);
    v38 = *(a1 + 1192);
    if (v38 != v37)
    {
      memmove(a7, v37, v38 - v37);
    }

    v39 = v49;
    if (v49 >= 1)
    {
      v40 = *(a1 + 1092);
      v41 = *(a1 + 1100);
      v42 = a5 + 1;
      v43 = (*(a1 + 1160) + 8);
      do
      {
        v44 = *v43 + v41;
        v42[-1] = vadd_s32(*(v43 - 2), v40);
        v42->i32[0] = v44;
        v42 = (v42 + 12);
        v43 += 3;
        --v39;
      }

      while (v39);
    }

    if (a6)
    {
      v45 = *(a1 + 1208);
      v46 = (*(a1 + 1216) - v45) >> 2;
      if (v46 >= 2)
      {
        v47 = v46 - 1;
        v48 = (v45 + 4);
        do
        {
          *a6++ = *v48 - *(v48 - 1);
          ++v48;
          --v47;
        }

        while (v47);
      }
    }

    v20 = 0;
    *a4 = v50;
  }

  return v20;
}

uint64_t sub_2500F1000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 4)
  {
    return 0;
  }

  v3 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  if ((a2 & 0x7FFFFFFFFFFFFFFCLL) == 4 || a2 == 8 || a2 == 9 || (a2 & 0x7FFFFFFFFFFFFFFELL) == 0xA || v3 == 12 || v3 == 16 || v3 == 20 || a2 == 24 || a2 == 25 || a2 == 26 || a2 == 27 || v3 == 28)
  {
    return 0;
  }

  v6 = a1 + 32;
  if (a1 == -32)
  {
    return 0;
  }

  v4 = 0;
  if (*a1 == -90009999)
  {
    v7 = *(a1 + 4);
    v8 = *(a1 + 8);
    v9 = *(a1 + 9);
    v10 = *(a1 + 10);
    v11 = *(a1 + 12);
    v12 = *(a1 + 16) & 0x7FFFFFFF;
    v13 = *(a1 + 20) & 0x7FFFFFFF;
    v14 = *(a1 + 24);
    v15 = *(a1 + 25);
    v16 = *(a1 + 26);
    v17 = *(a1 + 27);
    v18 = *(a1 + 28) & 0x7FFFFFFF;
    v19 = vshl_u16(vdup_n_s16(v16), 0xFFFCFFFDFFFEFFFFLL);
    if (v16 >> 6 == 1)
    {
      v18 = 4 * v13;
    }

    if (v16 < 0x40)
    {
      v18 = 3 * v13;
    }

    *a3 = 0;
    *(a3 + 4) = v8;
    *(a3 + 5) = v9;
    *(a3 + 6) = v10;
    *(a3 + 8) = v11;
    *(a3 + 12) = v12;
    *(a3 + 16) = v13;
    *(a3 + 20) = v18;
    *(a3 + 24) = v17;
    *(a3 + 28) = v16 >> 6;
    *(a3 + 32) = v16 & 1;
    *(a3 + 36) = v7;
    *(a3 + 40) = v14;
    *(a3 + 44) = v15;
    *(a3 + 48) = vuzp1_s8((*&v19 & 0xFF01FF01FF01FF01), (*&v19 & 0xFF01FF01FF01FF01)).u32[0];
    *(a3 + 52) = (v16 & 0x20) != 0;
    return v6;
  }

  return v4;
}

void sub_2500F116C(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  *(a1 + 77) = *(a2 + 45);
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  *(a1 + 32) = v6;
  *a1 = 0;
  v9 = *a4;
  *(a1 + 16) = *(a4 + 2);
  *(a1 + 8) = v9;
  v10 = *a3;
  *(a1 + 28) = *(a3 + 2);
  *(a1 + 20) = v10;
  v11 = *(a2 + 3);
  sub_2500FBD48((a1 + 88), v11);
  sub_2500F247C((a1 + 136), 0);
  v12 = *(a2 + 4);
  LODWORD(v13) = 0;
  sub_2500F6064((a1 + 136), v12 + 1, &v13);
  sub_2500F247C((a1 + 112), *(a2 + 5));
  sub_2500FBD48((a1 + 184), 0);
  v14 = -1;
  v13 = -1;
  sub_2500FBD84((a1 + 184), v11, &v13);
  sub_2500FBD48((a1 + 208), 0);
  v14 = -1;
  v13 = -1;
  sub_2500FBD84((a1 + 208), v11, &v13);
  sub_2500F247C((a1 + 160), 0);
}

void sub_2500F127C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  if (*(a2 + 81) == 1 && *(a2 + 80) == 1 || (sub_2500F247C((a1 + 120), 0), v13 = 0, sub_2500F6064((a1 + 120), v4, &v13), (*(a2 + 80) & 1) != 0))
  {
    sub_2500FC244((a1 + 168), v4);
    sub_2500FC280(a1 + 192, 64);
  }

  sub_2500FC318((a1 + 144), v4);
  v5 = *(a1 + 144);
  v6 = *(a1 + 152);
  if (v5 != v6)
  {
    memset(v5, 255, (v6 - v5) & 0xFFFFFFFFFFFFFFF0);
  }

  sub_2500FC348(a1, 0x100uLL);
  sub_2500FC348(a1 + 96, 0x40uLL);
  sub_2500FC348(a1 + 72, 0x40uLL);
  sub_2500FC348(a1 + 24, 0x20uLL);
  sub_2500FC3E8(a1 + 48, 0x20uLL);
  memset_pattern16((a1 + 1992), &unk_250110610, 0xAuLL);
  *(a1 + 2002) = 0x8000;
  v7 = (a1 + 2004);
  v8 = 96;
  do
  {
    memset_pattern16(v7, &unk_250110610, 6uLL);
    v7 += 6;
    v8 -= 6;
  }

  while (v8);
  *(a1 + 2100) = 0x8000;
  memset_pattern16((a1 + 2102), &unk_250110610, 6uLL);
  *(a1 + 2108) = 0x8000;
  v9 = (a1 + 2110);
  v10 = 80;
  do
  {
    memset_pattern16(v9, &unk_250110610, 0x10uLL);
    v9 += 16;
    v10 -= 16;
  }

  while (v10);
  memset_pattern16((a1 + 2194), &unk_250110610, 0x20uLL);
  memset_pattern16((a1 + 2232), &unk_250110610, 0x80uLL);
  *(a1 + 2230) = 0x8000;
  *(a1 + 2190) = -2147450880;
  *(a1 + 2226) = -2147450880;
  memset_pattern16((a1 + 2368), &unk_250110610, 6uLL);
  v11 = (a1 + 2376);
  v12 = 240;
  do
  {
    sub_2500F3ECC(v11, 3);
    v11 += 15;
    v12 -= 120;
  }

  while (v12);
}

void sub_2500F1470(uint64_t a1, int32x2_t a2)
{
  v3 = *(a1 + 1116);
  v108 = 0;
  v107 = 0;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = (a1 + 1496);
    LODWORD(v6) = -1;
    while (1)
    {
      if (v4 == HIDWORD(v108))
      {
        ++HIDWORD(v108);
        v7 = *(a1 + 1156) ? -1 : v6;
        *(*(a1 + 1256) + 12 * v4) = v7;
        sub_2500F6094(a1, v4, a2);
        sub_2500F6938((a1 + 1496), (*(a1 + 1472) + 12 * v4));
        if (*(a1 + 1496))
        {
          break;
        }
      }

LABEL_151:
      if (++v4 == v3)
      {
        v104 = v108;
        v103 = HIDWORD(v108);
        LODWORD(v3) = *(a1 + 1116);
        goto LABEL_154;
      }
    }

    while (1)
    {
      v8 = *(a1 + 1500);
      v9 = v8 < 0 ? 0 : sub_2500FD7D0((a1 + 1496), v8);
      v6 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *(a1 + 1472)) >> 2);
      v10 = *(*(a1 + 1448) + 16 * v6);
      v11 = *(*(a1 + 1448) + 16 * v6 + 4);
      v12 = v10 != -1;
      v13 = v11 == v10 && v10 != -1;
      v14 = (v12 | (2 * (v11 != -1))) + v13;
      if (sub_2500F2F8C(a1, (a1 + 3296 + 2 * v14)))
      {
        break;
      }

LABEL_150:
      if (!*v5)
      {
        goto LABEL_151;
      }
    }

    while (1)
    {
      v106 = 0;
      v15 = sub_2500F6AB8(a1, v6, v14, &v106, &v108 + 1, &v108, &v107);
      if (v15 < 0)
      {
        return;
      }

      if (*(a1 + 4384))
      {
        return;
      }

      v17 = v15;
      sub_2500F6878(a1, v106, v15, v16);
      if (*(a1 + 4384))
      {
        return;
      }

      v18 = v17;
      v19.i64[0] = 0x100000001000;
      v19.i64[1] = 0x100000001000;
      if (v17 >= 2)
      {
        break;
      }

LABEL_139:
      if (v17 >= 1)
      {
        v96 = 0;
        do
        {
          v97 = (*(a1 + 1472) + 12 * *(*(a1 + 1328) + 4 * v96));
          v98 = (a1 + 1496);
          if (*(*(a1 + 1352) + v96))
          {
            sub_2500F6938(v98, v97);
          }

          else
          {
            sub_2500F6A68(v98, v97);
          }

          ++v96;
        }

        while (v18 != v96);
        if (*(a1 + 4384))
        {
          return;
        }
      }

      v99 = *(*(a1 + 1448) + 16 * v6);
      v100 = *(*(a1 + 1448) + 16 * v6 + 4);
      v101 = v99 != -1;
      v102 = v100 == v99 && v99 != -1;
      v14 = (v101 | (2 * (v100 != -1))) + v102;
      if (!sub_2500F2F8C(a1, (a1 + 3306)))
      {
        goto LABEL_150;
      }
    }

    v20 = *(a1 + 1154);
    v21 = v17 - 1;
    v22 = (*(a1 + 1328) + 4);
    while (1)
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      if (!v20)
      {
        v53 = *(a1 + 1472);
        *(v53 + 12 * v24) += 8;
        *(v53 + 12 * v23) += 8;
        goto LABEL_138;
      }

      v25 = *(a1 + 1160);
      v26 = (v25 + 12 * v6);
      v27 = v25 + 12 * v24;
      v28 = (v25 + 12 * v23);
      v29 = *v28;
      v30.i64[0] = *v27;
      v31 = *v28 - *v27;
      v32 = *(v28 + 1);
      v33 = *(v27 + 8);
      v34 = *v26;
      v35 = v26[1].i32[0];
      v36 = v35 - v33;
      if (v31 >= 0)
      {
        v37 = v31;
      }

      else
      {
        v37 = -v31;
      }

      *v38.i8 = v34;
      v38.u64[1] = v32;
      v30.i64[1] = __PAIR64__(v33, v30.u32[1]);
      v39 = vmovn_s32(vcgtq_u32(v19, vabdq_s32(v38, v30)));
      v40 = vsubq_s32(v38, v30);
      if (v36 >= 0)
      {
        v41 = v35 - v33;
      }

      else
      {
        v41 = v33 - v35;
      }

      if (((v37 < 0x1000) & v39.i8[4] & v39.i8[6]) == 1 && (v39.i8[0] & 1) != 0 && (v39.i8[2] & 1) != 0 && v41 <= 0xFFF)
      {
        v42 = v40.i32[0] * v31 + v40.i32[1] * v40.i32[2] + v36 * v40.i32[3];
        if (!v42)
        {
          goto LABEL_74;
        }

        v43 = v36 * v40.i32[2] - v40.i32[1] * v40.i32[3];
        if (v43 < 0)
        {
          v43 = v40.i32[1] * v40.i32[3] - v36 * v40.i32[2];
        }

        v44 = v40.i32[0] * v40.i32[3] - v36 * v31;
        if (v44 < 0)
        {
          v44 = -v44;
        }

        v45 = v40.i32[1] * v31 - v40.i32[0] * v40.i32[2];
        if (v45 < 0)
        {
          v45 = v40.i32[0] * v40.i32[2] - v40.i32[1] * v31;
        }

        v46 = v43 + v44;
        if (v44 < v45)
        {
          v47 = v45;
        }

        else
        {
          v46 = v43 + v45;
          v47 = v44;
        }

        v48 = v43 >= v44 && v43 >= v45;
        if (v48)
        {
          v49 = v44 + v45;
        }

        else
        {
          v49 = v46;
        }

        if (v48)
        {
          v50 = v43;
        }

        else
        {
          v50 = v47;
        }

        v51 = v50 + (v49 >> 2);
        if (v42 < 0)
        {
          LODWORD(v52) = -16 * v42 / (v51 - v42) + 16;
        }

        else
        {
          LODWORD(v52) = (16 * v51) / (v51 + v42);
        }
      }

      else
      {
        v54 = v40.i32[1] * v40.i32[2] + v40.i32[0] * v31 + v36 * v40.i32[3];
        if (!v54)
        {
LABEL_74:
          LODWORD(v52) = 16;
          goto LABEL_77;
        }

        v55 = v36 * v40.i32[2] - v40.i32[1] * v40.i32[3];
        if (v55 < 0)
        {
          v55 = v40.i32[1] * v40.i32[3] - v36 * v40.i32[2];
        }

        v56 = v40.i32[0] * v40.i32[3] - v36 * v31;
        if (v56 < 0)
        {
          v56 = -v56;
        }

        v57 = v40.i32[1] * v31 - v40.i32[0] * v40.i32[2];
        if (v57 < 0)
        {
          v57 = v40.i32[0] * v40.i32[2] - v40.i32[1] * v31;
        }

        v58 = v55 + v56;
        if (v56 < v57)
        {
          v59 = v57;
        }

        else
        {
          v58 = v55 + v57;
          v59 = v56;
        }

        v60 = v55 >= v56 && v55 >= v57;
        if (v60)
        {
          v61 = v56 + v57;
        }

        else
        {
          v61 = v58;
        }

        if (v60)
        {
          v62 = v55;
        }

        else
        {
          v62 = v59;
        }

        v52 = v62 + (v61 >> 2);
        if (v54 < 0)
        {
          LODWORD(v52) = -16 * v54 / (v52 - v54) + 16;
        }

        else
        {
          v52 = 16 * v52 / (v52 + v54);
        }
      }

LABEL_77:
      v63 = v34.i32[0] - v29;
      v64 = vsub_s32(vdup_lane_s32(v34, 1), v32).u32[0];
      v65 = v35 - v32.i32[1];
      v66 = -v31;
      v67 = -v40.i32[2];
      v68 = -v40.i32[3];
      if (v63 >= 0)
      {
        v69 = v63;
      }

      else
      {
        v69 = -v63;
      }

      if (v69 < 0x1000)
      {
        v70 = (v37 < 0x1000) & v39.i8[4] & v39.i8[6];
      }

      else
      {
        v70 = 0;
      }

      if (v64 >= 0)
      {
        v71 = v64;
      }

      else
      {
        v71 = -v64;
      }

      if (v65 >= 0)
      {
        v72 = v65;
      }

      else
      {
        v72 = -v65;
      }

      if (v70 == 1 && v71 <= 0xFFF && v72 <= 0xFFF)
      {
        v73 = v63 * v66 + v64 * v67 + v65 * v68;
        if (!v73)
        {
          goto LABEL_133;
        }

        v74 = v64 * v40.i32[3] + v65 * v67;
        if (v74 < 0)
        {
          v74 = -v74;
        }

        v75 = v63 * v68 + v65 * v31;
        if (v75 < 0)
        {
          v75 = -v75;
        }

        v76 = v63 * v40.i32[2] + v64 * v66;
        if (v76 < 0)
        {
          v76 = -v76;
        }

        v77 = v74 + v75;
        if (v75 < v76)
        {
          v78 = v76;
        }

        else
        {
          v77 = v74 + v76;
          v78 = v75;
        }

        v79 = v74 >= v75 && v74 >= v76;
        if (v79)
        {
          v80 = v75 + v76;
        }

        else
        {
          v80 = v77;
        }

        if (v79)
        {
          v81 = v74;
        }

        else
        {
          v81 = v78;
        }

        v82 = v81 + (v80 >> 2);
        if (v73 < 0)
        {
          LODWORD(v83) = -16 * v73 / (v82 - v73) + 16;
        }

        else
        {
          LODWORD(v83) = (16 * v82) / (v82 + v73);
        }
      }

      else
      {
        v83 = v64 * v67 + v63 * v66 + v65 * v68;
        if (!v83)
        {
LABEL_133:
          LODWORD(v83) = 16;
          goto LABEL_136;
        }

        v84 = v65 * v67 - v64 * v68;
        if (v84 < 0)
        {
          v84 = v64 * v68 - v65 * v67;
        }

        v85 = v63 * v68 - v65 * v66;
        if (v85 < 0)
        {
          v85 = v65 * v66 - v63 * v68;
        }

        v86 = v64 * v66 - v63 * v67;
        if (v86 < 0)
        {
          v86 = -v86;
        }

        v87 = v84 + v85;
        if (v85 < v86)
        {
          v88 = v86;
        }

        else
        {
          v87 = v84 + v86;
          v88 = v85;
        }

        v89 = v84 >= v85 && v84 >= v86;
        if (v89)
        {
          v90 = v85 + v86;
        }

        else
        {
          v90 = v87;
        }

        if (!v89)
        {
          v84 = v88;
        }

        v91 = v84 + (v90 >> 2);
        if (v83 < 0)
        {
          LODWORD(v83) = -16 * v83 / (v91 - v83) + 16;
        }

        else
        {
          v83 = 16 * v91 / (v91 + v83);
        }
      }

LABEL_136:
      v92 = *(a1 + 1472);
      v93 = 12 * v24;
      *(v92 + v93) += v52;
      v94 = 12 * v23;
      v95 = *(v92 + v94) + v83;
      *(v92 + v94) = v95;
      if ((*(v92 + v93) & 0x80000000) != 0 || v95 < 0)
      {
        goto LABEL_160;
      }

LABEL_138:
      ++v22;
      if (!--v21)
      {
        goto LABEL_139;
      }
    }
  }

  v103 = 0;
  v104 = 0;
LABEL_154:
  v105 = *(a1 + 1120) == v104 && v3 == v103;
  if (!v105 || *(a1 + 1124) != v107)
  {
LABEL_160:
    *(a1 + 4384) = 3;
  }
}

void sub_2500F1AC4(uint64_t a1, int32x2_t a2)
{
  v3 = *(a1 + 1116);
  v24 = 0;
  v25 = 0;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    LODWORD(v6) = 0;
    LODWORD(v7) = -1;
    while (1)
    {
      if (v5 == v4)
      {
        v8 = v4 + 1;
        v26 = v4 + 1;
        if (*(a1 + 1156))
        {
          v9 = -1;
        }

        else
        {
          v9 = v7;
        }

        *(*(a1 + 1256) + 12 * v5) = v9;
        a2 = sub_2500F6094(a1, v5, a2);
        if (v6 <= v4)
        {
          v6 = v6;
          while (1)
          {
            v7 = v6;
            v10 = *(*(a1 + 1448) + 16 * v6);
            v11 = *(*(a1 + 1448) + 16 * v6 + 4);
            v12 = v10 != -1;
            v13 = v11 == v10 && v10 != -1;
            v14 = (v12 | (2 * (v11 != -1))) + v13;
            if (sub_2500F2F8C(a1, (a1 + 3296 + 2 * v14)))
            {
              break;
            }

LABEL_24:
            ++v6;
            if (v7 + 1 >= v8)
            {
              v4 = v8;
              goto LABEL_9;
            }
          }

          while (1)
          {
            v23 = 0;
            v15 = sub_2500F6AB8(a1, v6, v14, &v23, &v26, &v25, &v24);
            if (v15 < 0)
            {
              break;
            }

            if (*(a1 + 4384))
            {
              break;
            }

            sub_2500F6878(a1, v23, v15, v16);
            if (*(a1 + 4384))
            {
              break;
            }

            v17 = *(*(a1 + 1448) + 16 * v6);
            v18 = *(*(a1 + 1448) + 16 * v6 + 4);
            v19 = v17 != -1;
            v20 = v18 == v17 && v17 != -1;
            v14 = (v19 | (2 * (v18 != -1))) + v20;
            if (!sub_2500F2F8C(a1, (a1 + 3306)))
            {
              v8 = v26;
              goto LABEL_24;
            }
          }

          return;
        }

        ++v4;
      }

LABEL_9:
      if (++v5 == v3)
      {
        v22 = v25;
        LODWORD(v3) = *(a1 + 1116);
        goto LABEL_27;
      }
    }
  }

  v4 = 0;
  v22 = 0;
LABEL_27:
  v21 = *(a1 + 1120) == v22 && v3 == v4;
  if (!v21 || *(a1 + 1124) != v24)
  {
    *(a1 + 4384) = 3;
  }
}

uint64_t sub_2500F1CA0(uint64_t result, _DWORD *a2)
{
  v2 = result;
  v41 = *MEMORY[0x277D85DE8];
  v3 = *(result + 1120);
  if (v3 <= 0)
  {
    *(result + 4384) = 3;
  }

  else if (*(result + 1144))
  {
    v39 = 0x8000;
    v38 = 0x8000;
    memset_pattern16(__b, &unk_250110610, 0x80uLL);
    v5 = 0;
    v37 = 0x8000;
    v6 = 6;
    do
    {
      result = sub_2500F2F8C(v2, &v39);
      if (result)
      {
        v7 = sub_2500F2F8C(v2, &v38);
        if (sub_2500F2F8C(v2, __b))
        {
          v8 = 32;
        }

        else
        {
          v8 = 0;
        }

        if (sub_2500F2F8C(v2, &__b[(v8 >> 5) + 1]))
        {
          v9 = 16;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9 | v8;
        if (sub_2500F2F8C(v2, &__b[(v10 >> 4) + 3]))
        {
          v11 = 8;
        }

        else
        {
          v11 = 0;
        }

        v12 = v10 | v11;
        if (sub_2500F2F8C(v2, &__b[(v12 >> 3) + 7]))
        {
          v13 = 4;
        }

        else
        {
          v13 = 0;
        }

        v14 = v12 | v13;
        if (sub_2500F2F8C(v2, &__b[(v14 >> 2) + 15]))
        {
          v15 = 2;
        }

        else
        {
          v15 = 0;
        }

        v16 = v14 | v15;
        result = sub_2500F2F8C(v2, &__b[(v16 >> 1) + 31]);
        v17 = v16 | result;
        if ((v16 | result) == 0x3F)
        {
          result = sub_2500F307C(v2, v6, &v37);
          v17 = result + 63;
          v18 = -63 - result;
          if (result + 63 >= 0)
          {
            v18 = result + 63;
          }

          v19 = v18 >> v6;
          if (!v6 || v19)
          {
            if (v19 > 1)
            {
              ++v6;
            }
          }

          else
          {
            --v6;
          }
        }

        if (v7)
        {
          v20 = v17 + 1;
        }

        else
        {
          v20 = ~v17;
        }
      }

      else
      {
        v20 = 0;
      }

      v5 += v20;
      *a2++ = v5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v39 = 0x8000;
    v38 = 0x8000;
    memset_pattern16(__b, &unk_250110610, 0x80uLL);
    v21 = 0;
    v37 = 0x8000;
    do
    {
      result = sub_2500F2F8C(v2, &v39);
      if (result)
      {
        v22 = sub_2500F2F8C(v2, &v38);
        v23 = sub_2500F2F8C(v2, __b);
        if (v23)
        {
          v24 = 2;
        }

        else
        {
          v24 = 1;
        }

        if (sub_2500F2F8C(v2, &__b[v24]))
        {
          v25 = 2;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25 | v23;
        if (sub_2500F2F8C(v2, &__b[v26 + 3]))
        {
          v27 = 4;
        }

        else
        {
          v27 = 0;
        }

        v28 = v26 | v27;
        if (sub_2500F2F8C(v2, &__b[v28 + 7]))
        {
          v29 = 8;
        }

        else
        {
          v29 = 0;
        }

        v30 = v28 | v29;
        if (sub_2500F2F8C(v2, &__b[v30 + 15]))
        {
          v31 = 16;
        }

        else
        {
          v31 = 0;
        }

        v32 = v30 | v31;
        result = sub_2500F2F8C(v2, &__b[v32 + 31]);
        if (result)
        {
          v33 = 32;
        }

        else
        {
          v33 = 0;
        }

        v34 = v32 | v33;
        if (v34 == 63)
        {
          result = sub_2500F307C(v2, 6, &v37);
          v34 = result + 63;
        }

        if (v22)
        {
          v35 = v34 + 1;
        }

        else
        {
          v35 = ~v34;
        }
      }

      else
      {
        v35 = 0;
      }

      v21 += v35;
      *a2++ = v21;
      --v3;
    }

    while (v3);
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2500F1FF4(uint64_t a1, int *a2)
{
  v3 = *(a1 + 1120);
  v4 = *(a1 + 1124);
  if (v4 < 3 || v3 <= 0)
  {
    goto LABEL_41;
  }

  v7 = a2;
  v8 = a2;
  if (v3 == 1)
  {
    goto LABEL_38;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  v10 = *a2;
  if (v9 >= *a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 + 1;
  }

  if (v9 < v10)
  {
    v8 = a2;
  }

  if (v3 == 2)
  {
    goto LABEL_38;
  }

  v11 = a2 + 2;
  if (v9 <= v10)
  {
    v12 = *a2;
  }

  else
  {
    v12 = a2[1];
  }

  if (v9 < v10)
  {
    v10 = a2[1];
  }

  v13 = 4 * v3 - 12;
  while (v13)
  {
    v15 = *v11;
    v14 = v11[1];
    if (v14 >= *v11)
    {
      if (v15 < v10)
      {
        v10 = *v11;
        v7 = v11;
      }

      v16 = v14 < v12;
      if (v14 > v12)
      {
        v12 = v11[1];
      }

      if (!v16)
      {
        v8 = v11 + 1;
      }
    }

    else
    {
      v10 = *v7;
      if (v14 < *v7)
      {
        v10 = v11[1];
        v7 = v11 + 1;
      }

      v12 = *v8;
      if (v15 > *v8)
      {
        v12 = *v11;
      }

      if (v15 >= *v8)
      {
        v8 = v11;
      }
    }

    v11 += 2;
    v13 -= 8;
    if (v13 == -4)
    {
      goto LABEL_38;
    }
  }

  v17 = *v11;
  if (*v11 >= *v7)
  {
    if (v17 >= *v8)
    {
      v8 = v11;
    }

LABEL_38:
    v17 = *v7;
  }

  if (v17 < 0 || (v18 = *v8, v19 = v18 - v17, v18 - v17 > v3))
  {
LABEL_41:
    result = 3;
    *(a1 + 4384) = 3;
    return result;
  }

  v21 = v19 + 2;
  *(a1 + 1076) = v17;
  *(a1 + 1072) = v18;
  v22 = (a1 + 1232);
  sub_2500F247C((a1 + 1232), 0);
  LODWORD(v72[0]) = 0;
  sub_2500F6064((a1 + 1232), v19 + 2, v72);
  v23 = *(a1 + 1232);
  v24 = a2;
  v25 = v3;
  do
  {
    v26 = *v24++;
    ++v23[v26 - v17 + 1];
    --v25;
  }

  while (v25);
  if ((v19 & 0x80000000) == 0)
  {
    if (v21 <= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v21;
    }

    v30 = *v23;
    v28 = v23 + 1;
    v29 = v30;
    v31 = v27 - 1;
    do
    {
      v29 += *v28;
      *v28++ = v29;
      --v31;
    }

    while (v31);
  }

  sub_2500FCF2C(v72, v3);
  LODWORD(v69[0]) = 0;
  sub_2500FC9FC(v71, v3 + 1, v69);
  v32 = 0;
  v33 = *(a1 + 1232);
  v34 = v72[0];
  v35 = v71[0] + 4;
  v36 = (*(a1 + 1208) + 4);
  do
  {
    v37 = a2[v32] - v17;
    v38 = *(v33 + 4 * v37);
    *(v33 + 4 * v37) = v38 + 1;
    v34[v38] = v32++;
    *v35 = *v36 - *(v36 - 1) + *(v35 - 1);
    ++v35;
    ++v36;
  }

  while (v3 != v32);
  sub_2500FCF2C(v69, v4);
  sub_2500FCF2C(__p, v3);
  v39 = 0;
  v40 = 0;
  do
  {
    v41 = *(v72[0] + v39);
    v42 = *(a1 + 1208);
    v43 = 4 * v41 + 4;
    v44 = *(v42 + v43);
    LODWORD(v42) = *(v42 + 4 * v41);
    v45 = *(v71[0] + v41);
    v46 = *(v71[0] + v43);
    v47 = v44 - v42;
    *(__p[0] + v39) = v44 - v42;
    if (4 * v46 != 4 * v45)
    {
      memmove(v69[0] + 4 * v40, (4 * v45 + *(a1 + 1184)), 4 * v46 - 4 * v45);
    }

    v40 += v47;
    ++v39;
  }

  while (v3 != v39);
  v48 = 0;
  v49 = *(a1 + 1184);
  *(a1 + 1184) = *v69;
  *v69 = v49;
  v50 = *(a1 + 1200);
  *(a1 + 1200) = v70;
  v70 = v50;
  v51 = *(a1 + 1208);
  v52 = __p[0];
  v55 = *v51;
  v53 = v51 + 1;
  v54 = v55;
  do
  {
    v54 += v52[v48];
    v53[v48++] = v54;
  }

  while (v3 != v48);
  if (v19 < 0)
  {
    goto LABEL_71;
  }

  v56 = 0;
  v57 = 0;
  v58 = *v22;
  do
  {
    v59 = *(v58 + 4 * v56);
    if (v57 < v59)
    {
      v60 = 0;
      v61 = v17 + v56;
      v62 = v59 - v57;
      v63 = (v62 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v64 = vdupq_n_s64(v62 - 1);
      v65 = &a2[v57 + 2];
      do
      {
        v66 = vdupq_n_s64(v60);
        v67 = vmovn_s64(vcgeq_u64(v64, vorrq_s8(v66, xmmword_2501105B0)));
        if (vuzp1_s16(v67, 2).u8[0])
        {
          *(v65 - 2) = v61;
        }

        if (vuzp1_s16(v67, 2).i8[2])
        {
          *(v65 - 1) = v61;
        }

        if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v64, vorrq_s8(v66, xmmword_2501105F0)))).i32[1])
        {
          *v65 = v61;
          v65[1] = v61;
        }

        v60 += 4;
        v65 += 4;
      }

      while (v63 != v60);
    }

    *(v58 + 4 * v56++) = v57;
    v57 = v59;
  }

  while (v56 != v19 + 1);
  if (v52)
  {
LABEL_71:
    __p[1] = v52;
    operator delete(v52);
  }

  if (v69[0])
  {
    v69[1] = v69[0];
    operator delete(v69[0]);
  }

  if (v71[0])
  {
    v71[1] = v71[0];
    operator delete(v71[0]);
  }

  if (v72[0])
  {
    v72[1] = v72[0];
    operator delete(v72[0]);
  }

  return 0;
}

void sub_2500F2430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500F247C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_2500FC8CC(a1, a2 - v2);
  }
}

uint64_t sub_2500F24AC(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  result = 5;
  if (a2 && a5)
  {
    if (*(a1 + 4384))
    {
      return 6;
    }

    v14 = sub_2500F27D0(a2, a3, a1 + 3992);
    result = 3;
    if (v14)
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        v15 = *(a1 + 4000);
        if ((a3 - v15) >= 0 && v14 + v13 >= a2)
        {
          v16 = a2 + v15;
          if (a2 + v15 >= v14)
          {
            v17 = v16 - v14;
            if (v16 - v14 >= 0 && !*(a1 + 4028))
            {
              if (*(a1 + 3996))
              {
                return 4;
              }

              v18 = *(a1 + 3997);
              result = 4;
              if (v18 <= 8 && ((1 << v18) & 0x160) != 0)
              {
                if (a3 < v15)
                {
                  return 3;
                }

                v19 = *(a1 + 1116);
                if (*(a1 + 4004) != v19)
                {
                  return 3;
                }

                v20 = *(a1 + 4008);
                if (!a6)
                {
                  if (*(a1 + 4032))
                  {
                    return 3;
                  }
                }

                v21 = (a1 + 3920);
                v22 = v20;
                if ((*(a1 + 4048) - 5) > 1)
                {
                  if (*(a1 + 4020) <= 0x1Bu)
                  {
                    v23 = (a1 + 3944);
                    v46 = *(a1 + 4008);
                    sub_2500F247C((a1 + 3944), v20);
                    if (v22 < 1)
                    {
                      sub_2500F247C((a1 + 3920), v46);
                      v45 = 0;
                      v30 = 0;
LABEL_46:
                      v37 = sub_2500F0BA4(a1, v14, v17);
                      result = 3;
                      if (v37)
                      {
                        if ((v36 & 0x8000000000000000) == 0)
                        {
                          result = sub_2500F2924(a1, a5, a6);
                          if (!result)
                          {
                            if ((v30 & (v19 > 0)) == 1)
                            {
                              v38 = 0;
                              v39 = 0;
                              do
                              {
                                if (v45)
                                {
                                  v40 = *v23;
                                  v41 = (a5 + 4 * v38);
                                  v38 += v46;
                                  v42 = v22;
                                  do
                                  {
                                    v43 = *v40++;
                                    *v41++ += v43;
                                    --v42;
                                  }

                                  while (v42);
                                }

                                ++v39;
                              }

                              while (v39 != v19);
                            }

                            result = 0;
                            *a4 = *(a1 + 4000);
                          }
                        }
                      }

                      return result;
                    }

                    v44 = v46;
LABEL_29:
                    v24 = 0;
                    do
                    {
                      v25 = v17 < 4;
                      v17 -= 4;
                      if (v25)
                      {
                        v17 = 0;
                        v14 = 0;
                      }

                      else
                      {
                        v26 = *v14++;
                        (*v23)[v24] = v26;
                      }

                      ++v24;
                    }

                    while (v22 != v24);
                    sub_2500F247C((a1 + 3920), v44);
                    v27 = 0;
                    result = 3;
                    do
                    {
                      while (!v17)
                      {
                        v14 = 0;
                        if (++v27 == v22)
                        {
                          return result;
                        }
                      }

                      v28 = *v21;
                      --v17;
                      v29 = *v14;
                      v14 = (v14 + 1);
                      (*v21)[v27++] = v29;
                    }

                    while (v27 != v22);
                    if (!v14)
                    {
                      return 3;
                    }

                    v30 = 0;
                    v31 = *v23;
                    v32 = 1;
                    v33 = v22;
                    do
                    {
                      v34 = *v31++;
                      v30 |= v34 != 0;
                      v35 = *v28++;
                      v32 &= v35 < 29;
                      --v33;
                    }

                    while (v33);
                    if ((v32 & 1) == 0)
                    {
                      return 3;
                    }

                    v45 = 1;
                    goto LABEL_46;
                  }
                }

                else
                {
                  LODWORD(v46) = *(a1 + 4008);
                  if (v20 == 2 && (*(a1 + 4020) - 28) >= 0xFFFFFFE5)
                  {
                    v23 = (a1 + 3944);
                    v44 = 2;
                    sub_2500F247C((a1 + 3944), 2uLL);
                    goto LABEL_29;
                  }
                }

                return 3;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2500F27D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 4)
  {
    return 0;
  }

  v3 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  if ((a2 & 0x7FFFFFFFFFFFFFFCLL) == 4 || a2 == 8 || a2 == 9 || (a2 & 0x7FFFFFFFFFFFFFFELL) == 0xA || v3 == 12 || v3 == 16 || a2 == 20 || a2 == 21 || a2 == 22 || a2 == 23 || a2 == 24 || a2 == 25 || a2 == 26 || a2 == 27 || v3 == 28)
  {
    return 0;
  }

  v6 = a1 + 32;
  if (a1 == -32)
  {
    return 0;
  }

  v4 = 0;
  if (*a1 == -290009985)
  {
    v7 = *(a1 + 4);
    v8 = *(a1 + 8);
    v9 = *(a1 + 9);
    v10 = *(a1 + 10);
    v11 = *(a1 + 12);
    v12 = *(a1 + 16) & 0x7FFFFFFF;
    v13 = *(a1 + 20);
    v14 = *(a1 + 21);
    v15 = *(a1 + 22);
    v16 = *(a1 + 23);
    v17 = *(a1 + 24);
    v18 = *(a1 + 25);
    v19 = *(a1 + 26);
    v20 = *(a1 + 27);
    v21 = *(a1 + 28) & 0x7FFFFFFF;
    *a3 = 0;
    *(a3 + 4) = v8;
    *(a3 + 5) = v9;
    *(a3 + 6) = v10;
    *(a3 + 8) = v11;
    *(a3 + 12) = v12;
    *(a3 + 16) = v15;
    *(a3 + 20) = v21;
    *(a3 + 24) = v14;
    *(a3 + 28) = v20;
    *(a3 + 32) = v13;
    *(a3 + 36) = v18 & 0xF;
    *(a3 + 40) = v19;
    *(a3 + 44) = v18 >> 4;
    *(a3 + 48) = v7;
    *(a3 + 52) = v16;
    v4 = v6;
    *(a3 + 56) = v17;
  }

  return v4;
}

uint64_t sub_2500F2924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 4032) == 1)
  {
    memset_pattern16(__b, &unk_250110610, 4uLL);
    if (*(a1 + 4004) >= 1)
    {
      v6 = 0;
      for (i = 0; i < *(a1 + 4004); ++i)
      {
        v8 = (*(a1 + 1256) + v6);
        v10 = *v8;
        v9 = v8[1];
        v11 = v8[2];
        v12 = (*(a1 + 1280) + v6);
        v13 = v12[2];
        if (v13 != -1)
        {
          v14 = *(a3 + v9) + *(a3 + v10) + *(a3 + v11) + *(a3 + *v12) + *(a3 + v12[1]) + *(a3 + v13) > 2;
          goto LABEL_8;
        }

        if (v11 != -1)
        {
          v14 = *(a3 + v9) + *(a3 + v10) + *(a3 + v11) > 1;
LABEL_8:
          v15 = v14;
          goto LABEL_11;
        }

        if (v9 == -1)
        {
          if (v10 == -1)
          {
LABEL_18:
            v15 = 0;
            goto LABEL_11;
          }

          v15 = *(a3 + v10);
        }

        else
        {
          if (*(a3 + v10) != 1)
          {
            goto LABEL_18;
          }

          v15 = *(a3 + v9);
        }

LABEL_11:
        *(a3 + i) = sub_2500F2F8C(a1, &__b[v15]);
        v6 += 12;
      }
    }
  }

  v16 = *(a1 + 4048);
  if (v16 > 6)
  {
    return 3;
  }

  (*(&off_286298650 + 2 * v16))(a1, a2, a3);
  return 0;
}

void sub_2500F2AB4(unsigned int *a1, uint64_t a2, int a3, void *a4, _BYTE *a5, void *a6, uint64_t a7)
{
  v74 = 0;
  sub_2500FC9FC(__p, a3, &v74);
  v14 = *a5;
  v70 = a2;
  v71 = a7;
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      if (a3 >= 1)
      {
        v63 = 0;
        v72 = a3;
        v64 = __p[0];
        do
        {
          v65 = *(*a4 + 4 * v63);
          if (v65 < 1)
          {
            v67 = 0;
          }

          else
          {
            v66 = 0;
            v67 = 0;
            do
            {
              LOWORD(v74) = 0x8000;
              v67 += sub_2500F2F8C(a1, &v74) << v66++;
            }

            while (v65 != v66);
          }

          v64[v63++] = v67;
        }

        while (v63 != a3);
        goto LABEL_90;
      }

      goto LABEL_94;
    }

    v72 = a3;
    if (v14 != 4)
    {
      goto LABEL_90;
    }

    if (a3 < 1)
    {
      goto LABEL_94;
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    while (!sub_2500F2F8C(a1, (*a6 + v25)))
    {
      v43 = 0;
LABEL_50:
      *(__p[0] + v26) = v43;
      v27 += 64;
      v26 += 4;
      v25 += 2;
      if (v72 << 6 == v27)
      {
        goto LABEL_90;
      }
    }

    v28 = sub_2500F2F8C(a1, (a6[3] + v25));
    v29 = (a6[6] + 2 * v27);
    if (sub_2500F2F8C(a1, v29))
    {
      v30 = 32;
    }

    else
    {
      v30 = 0;
    }

    if (sub_2500F2F8C(a1, &v29[(v30 >> 5) + 1]))
    {
      v31 = 16;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31 | v30;
    if (sub_2500F2F8C(a1, &v29[(v32 >> 4) + 3]))
    {
      v33 = 8;
    }

    else
    {
      v33 = 0;
    }

    v34 = v32 | v33;
    if (sub_2500F2F8C(a1, &v29[(v34 >> 3) + 7]))
    {
      v35 = 4;
    }

    else
    {
      v35 = 0;
    }

    v36 = v34 | v35;
    if (sub_2500F2F8C(a1, &v29[(v36 >> 2) + 15]))
    {
      v37 = 2;
    }

    else
    {
      v37 = 0;
    }

    v38 = v36 | v37 | sub_2500F2F8C(a1, (v29 + (v36 | v37) + 62));
    if (v38 == 63)
    {
      v39 = a6[12];
      v38 = sub_2500F307C(a1, *(v39 + v26), (a6[9] + v25)) + 63;
      v40 = *(v39 + v26);
      v41 = v38 >> v40;
      if (!v40 || v41)
      {
        if (v41 < 2)
        {
          goto LABEL_47;
        }

        v42 = 1;
      }

      else
      {
        v42 = -1;
      }

      *(v39 + v26) = v42 + v40;
    }

LABEL_47:
    if (v28)
    {
      v43 = v38 + 1;
    }

    else
    {
      v43 = ~v38;
    }

    goto LABEL_50;
  }

  if (!*a5)
  {
    if (a3 >= 1)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = a3 << 6;
      v72 = a3;
      v73 = v47;
      do
      {
        if (sub_2500F2F8C(a1, (*a6 + v44)))
        {
          v48 = sub_2500F2F8C(a1, (a6[3] + v44));
          v49 = (a6[6] + 2 * v46);
          v50 = sub_2500F2F8C(a1, v49);
          if (v50)
          {
            v51 = 2;
          }

          else
          {
            v51 = 1;
          }

          if (sub_2500F2F8C(a1, &v49[v51]))
          {
            v52 = 2;
          }

          else
          {
            v52 = 0;
          }

          v53 = v52 | v50;
          if (sub_2500F2F8C(a1, &v49[(v52 | v50) + 3]))
          {
            v54 = 4;
          }

          else
          {
            v54 = 0;
          }

          v55 = v53 | v54;
          if (sub_2500F2F8C(a1, &v49[v55 + 7]))
          {
            v56 = 8;
          }

          else
          {
            v56 = 0;
          }

          v57 = v55 | v56;
          if (sub_2500F2F8C(a1, &v49[v57 + 15]))
          {
            v58 = 16;
          }

          else
          {
            v58 = 0;
          }

          v59 = v57 | v58;
          if (sub_2500F2F8C(a1, &v49[v59 + 31]))
          {
            v60 = 32;
          }

          else
          {
            v60 = 0;
          }

          v61 = v59 | v60;
          if (v61 == 63)
          {
            v61 = sub_2500F307C(a1, *(a6[12] + v45), (a6[9] + v44)) + 63;
          }

          if (v48)
          {
            v62 = v61 + 1;
          }

          else
          {
            v62 = ~v61;
          }

          v47 = v73;
        }

        else
        {
          v62 = 0;
        }

        *(__p[0] + v45) = v62;
        v46 += 64;
        v45 += 4;
        v44 += 2;
      }

      while (v47 != v46);
      goto LABEL_90;
    }

LABEL_94:
    v68 = __p[0];
LABEL_95:
    if (!v68)
    {
      return;
    }

    goto LABEL_96;
  }

  v72 = a3;
  if (v14 == 2)
  {
    if (a3 >= 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = 2 * a3;
      while (1)
      {
        v18 = a6[12];
        v19 = sub_2500F3144(a1, *(v18 + v15), (a6[3] + v16), (a6[9] + v16));
        v20 = v19 >= 0 ? v19 : -v19;
        v21 = *(v18 + v15);
        v22 = v20 >> v21;
        if (v21 && v22 == 0)
        {
          break;
        }

        if (v22 >= 2)
        {
          v24 = 1;
LABEL_16:
          *(v18 + v15) = v24 + v21;
        }

        *(__p[0] + v15) = v19;
        v16 += 2;
        v15 += 4;
        if (v17 == v16)
        {
          goto LABEL_90;
        }
      }

      v24 = -1;
      goto LABEL_16;
    }

    goto LABEL_94;
  }

LABEL_90:
  v68 = __p[0];
  if (v72 < 1)
  {
    goto LABEL_95;
  }

  v69 = 0;
  do
  {
    *(v71 + v69) = *&v68[v69] + *(v70 + v69);
    v69 += 4;
  }

  while (4 * v72 != v69);
LABEL_96:
  __p[1] = v68;
  operator delete(v68);
}

BOOL sub_2500F2F8C(unsigned int *a1, _WORD *a2)
{
  v2 = *a2;
  v3 = a1[7];
  v4 = a1[8];
  if (v3 > 0x40000000)
  {
    v11 = a1[7];
  }

  else
  {
    v5 = a1[10];
    do
    {
      v4 *= 2;
      a1[10] = --v5;
      if (!v5)
      {
        v6 = *(a1 + 2);
        *(a1 + 2) = v6 + 1;
        v7 = *a1;
        if (v6 + 1 >= v7)
        {
          v8 = 65280;
        }

        else
        {
          v8 = *(*(a1 + 1) + v6 + 1) << 8;
        }

        v9 = v6 + 2;
        *(a1 + 2) = v9;
        if (v9 >= v7)
        {
          v10 = 255;
        }

        else
        {
          v10 = *(*(a1 + 1) + v9);
        }

        v4 |= v8 | v10;
        v5 = 16;
        a1[10] = 16;
      }

      v11 = 2 * v3;
      v12 = v3 >= 0x20000001;
      v3 *= 2;
    }

    while (!v12);
  }

  v13 = (HIWORD(v11) * v2) & 0xFFFF0000;
  v14 = (v2 >> 7) & 0x1FE;
  v15 = v11 - v13;
  v16 = v4 >= v13;
  if (v4 >= v13)
  {
    ++v14;
  }

  *a2 = *(a1 + v14 + 24) + v2;
  if (v4 < v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  if (v4 < v13)
  {
    v13 = 0;
  }

  a1[7] = v17;
  a1[8] = v4 - v13;
  return v16;
}

uint64_t sub_2500F307C(unsigned int *a1, int a2, _WORD *a3)
{
  v6 = 0;
  if (sub_2500F2F8C(a1, a3) && a2 <= 30)
  {
    v6 = 0;
    do
    {
      v7 = a2 + 1;
      v6 |= 1 << a2;
      if (!sub_2500F2F8C(a1, a3))
      {
        break;
      }
    }

    while (a2++ < 30);
  }

  else
  {
    v7 = a2;
  }

  v9 = 0;
  if (v7)
  {
    v10 = v7 - 1;
    do
    {
      v12 = 0x8000;
      v9 |= sub_2500F2F8C(a1, &v12) << v10--;
    }

    while (v10 != -1);
  }

  return (v9 + v6);
}

uint64_t sub_2500F3144(unsigned int *a1, int a2, _WORD *a3, _WORD *a4)
{
  result = sub_2500F307C(a1, a2, a4);
  if (result)
  {
    v7 = result;
    if (sub_2500F2F8C(a1, a3))
    {
      return v7;
    }

    else
    {
      return -v7;
    }
  }

  return result;
}

void sub_2500F3194(uint64_t a1, double *a2, _BYTE *a3)
{
  v168 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4004);
  v5 = *(a1 + 4008);
  v149 = ~(-1 << (*(a1 + 4020) - 1));
  sub_2500F8F40((a1 + 1160), (a1 + 1208), (a1 + 1184), (a1 + 1184), -1431655765 * ((*(a1 + 1168) - *(a1 + 1160)) >> 2), (a1 + 3968), v149);
  v6 = 0;
  v167 = 0;
  memset(v166, 0, sizeof(v166));
  memset(v165, 0, sizeof(v165));
  do
  {
    sub_2500F3ECC((v165 + v6), v5);
    v6 += 120;
  }

  while (v6 != 360);
  memset_pattern16(__b, &unk_250110610, 6uLL);
  memset_pattern16(v163, &unk_250110610, 6uLL);
  v162 = 0x8000;
  v161 = 0x8000;
  v7 = v149;
  if (v4 > 0)
  {
    v8 = 0;
    v9 = *(a1 + 4032);
    v10 = vdup_n_s32(v149);
    v151 = 12 * v4;
    v150 = 4 * v5;
    v11 = vdup_n_s32(2 * v149);
    v12 = a3;
    v13 = a2;
    v148 = v9;
    v154 = v5;
    while (v9 && *v12 != 1)
    {
LABEL_139:
      v8 += 12;
      v13 = (v13 + v150);
      ++v12;
      if (v151 == v8)
      {
        goto LABEL_140;
      }
    }

    v14 = (*(a1 + 3968) + v8);
    v15 = *v14;
    v16 = v14[1].i32[0];
    v17 = (*(a1 + 1256) + v8);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = (*(a1 + 1280) + v8);
    v22 = v21[2];
    v155 = v15;
    if (v22 != -1 && (!v9 || a3[v18] == 1 && a3[v19] == 1 && a3[v20] == 1 && a3[*v21] == 1 && a3[v21[1]] == 1 && a3[v22] == 1))
    {
      v23 = *(a2 + 4 * v18 * v154);
      v24 = vsub_s32(v23, v10);
      v25 = vabd_s32(v23, v10);
      v145 = v7 - v25.i32[0] - v25.i32[1];
      v141 = *v21;
      v142 = v21[1];
      if (v145 < 0)
      {
        v143 = vbsl_s8(vcltz_s32(v24), vrev64_s32(vsub_s32(v25, v10)), __PAIR64__(v7 - v25.i32[0], v7 - v25.i32[1]));
      }

      else
      {
        v143 = v24;
      }

      v46 = sub_2500F2F8C(a1, v163);
      v47 = 2;
      if (!v46)
      {
        v47 = 1;
      }

      if (sub_2500F2F8C(a1, &v163[v47]))
      {
        v48 = 2;
      }

      else
      {
        v48 = 0;
      }

      v49 = v48 | v46;
      if (v49 > 1)
      {
        if (v49 == 2)
        {
          v50 = *(a2 + 4 * v141 * v154);
          v51 = vsub_s32(v50, v10);
          v52 = vabd_s32(v50, v10);
          v53 = v149 - v52.i32[0] - v52.i32[1];
          if (v53 < 0)
          {
            v51 = vbsl_s8(vcltz_s32(v51), vrev64_s32(vsub_s32(v52, v10)), __PAIR64__(v149 - v52.i32[0], v149 - v52.i32[1]));
          }

          v54 = *(a2 + 4 * v142 * v154);
          v55 = vsub_s32(v54, v10);
          v56 = vabd_s32(v54, v10);
          v57 = v149 - v56.i32[0] - v56.i32[1];
          if (v57 < 0)
          {
            v55 = vbsl_s8(vcltz_s32(v55), vrev64_s32(vsub_s32(v56, v10)), __PAIR64__(v149 - v56.i32[0], v149 - v56.i32[1]));
          }

          v58 = v22 * v154;
          v29 = v154;
          v59 = *(a2 + 4 * v58);
          v60 = vsub_s32(v59, v10);
          v61 = vabd_s32(v59, v10);
          if (v149 - v61.i32[0] - v61.i32[1] < 0)
          {
            v60 = vbsl_s8(vcltz_s32(v60), vrev64_s32(vsub_s32(v61, v10)), __PAIR64__(v149 - v61.i32[0], v149 - v61.i32[1]));
          }

          v39 = COERCE_DOUBLE(vsub_s32(vadd_s32(v55, v51), v60));
          v16 = v57 + v53 - (v149 - v61.i32[0] - v61.i32[1]);
        }

        else
        {
          v82 = (a2 + 4 * v20 * v154);
          v83 = *(a2 + 4 * v19 * v154);
          v84 = (a2 + 4 * v141 * v154);
          v85 = COERCE_DOUBLE(vsub_s32(v83, v10));
          v86 = vabd_s32(v83, v10);
          v87 = v86.i32[1];
          v88.i32[0] = v149 - v86.i32[1];
          v88.i32[1] = v149 - v86.i32[0];
          v89 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(*&v85), vrev64_s32(vsub_s32(v86, v10)), v88));
          v90 = v88.i32[1] - v87;
          if (v90 >= 0)
          {
            v89 = v85;
          }

          v91 = COERCE_DOUBLE(vsub_s32(*v82, v10));
          v92 = vabd_s32(*v82, v10);
          v93 = v92.i32[1];
          v94.i32[0] = v149 - v92.i32[1];
          v94.i32[1] = v149 - v92.i32[0];
          v95 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(*&v91), vrev64_s32(vsub_s32(v92, v10)), v94));
          v96 = v94.i32[1] - v93;
          if (v96 >= 0)
          {
            v95 = v91;
          }

          v97 = vsub_s32(*v84, v10);
          v98 = vabd_s32(*v84, v10);
          v99 = v149 - v98.i32[0] - v98.i32[1];
          if (v99 < 0)
          {
            v97 = vbsl_s8(vcltz_s32(v97), vrev64_s32(vsub_s32(v98, v10)), __PAIR64__(v149 - v98.i32[0], v149 - v98.i32[1]));
          }

          v100 = *(a2 + 4 * v142 * v154);
          v101 = vsub_s32(v100, v10);
          v102 = vabd_s32(v100, v10);
          v103 = v149 - v102.i32[0] - v102.i32[1];
          if (v103 < 0)
          {
            v101 = vbsl_s8(vcltz_s32(v101), vrev64_s32(vsub_s32(v102, v10)), __PAIR64__(v149 - v102.i32[0], v149 - v102.i32[1]));
          }

          v104 = v22 * v154;
          v29 = v154;
          v105 = *(a2 + 4 * v104);
          v106 = vsub_s32(v105, v10);
          v107 = vabd_s32(v105, v10);
          if (v149 - v107.i32[0] - v107.i32[1] < 0)
          {
            v106 = vbsl_s8(vcltz_s32(v106), vrev64_s32(vsub_s32(v107, v10)), __PAIR64__(v149 - v107.i32[0], v149 - v107.i32[1]));
          }

          v108 = vadd_s32(v97, v143);
          v109 = vadd_s32(v101, *&v89);
          v110 = vmull_s32(vsub_s32(vsra_n_s32(vadd_s32(v109, v109), vsra_n_u32(v108, v108, 0x1FuLL), 1uLL), vadd_s32(*&v95, v106)), vdup_n_s32(0x55555556u));
          v39 = COERCE_DOUBLE(vadd_s32(vshrn_n_s64(v110, 0x20uLL), vmovn_s64(vshrq_n_u64(v110, 0x3FuLL))));
          v111 = 1431655766 * ((v99 + v145) / 2 + 2 * (v103 + v90) - (v96 + v149 - v107.i32[0] - v107.i32[1]));
          v16 = HIDWORD(v111) + (v111 >> 63);
        }
      }

      else if (v49)
      {
        v29 = v154;
        v75 = *(a2 + 4 * v19 * v154);
        v76 = vsub_s32(v75, v10);
        v77 = vabd_s32(v75, v10);
        v78 = v149 - v77.i32[0] - v77.i32[1];
        if (v78 < 0)
        {
          v76 = vbsl_s8(vcltz_s32(v76), vrev64_s32(vsub_s32(v77, v10)), __PAIR64__(v149 - v77.i32[0], v149 - v77.i32[1]));
        }

        v79 = *(a2 + 4 * v20 * v154);
        v80 = vsub_s32(v79, v10);
        v81 = vabd_s32(v79, v10);
        if (v149 - v81.i32[0] - v81.i32[1] < 0)
        {
          v80 = vbsl_s8(vcltz_s32(v80), vrev64_s32(vsub_s32(v81, v10)), __PAIR64__(v149 - v81.i32[0], v149 - v81.i32[1]));
        }

        v39 = COERCE_DOUBLE(vsub_s32(vadd_s32(v76, v143), v80));
        v16 = v78 + v145 - (v149 - v81.i32[0] - v81.i32[1]);
      }

      else
      {
        v39 = *&v155;
        v29 = v154;
        if (v16 * v145 + v143.i32[0] * v155.i32[0] + v143.i32[1] * v155.i32[1] < 0)
        {
          v39 = COERCE_DOUBLE(vneg_s32(v155));
          v16 = -v16;
        }
      }

      v45 = v166;
      goto LABEL_104;
    }

    if (v20 != -1 && (!v9 || a3[v18] == 1 && a3[v19] == 1 && a3[v20] == 1))
    {
      v26 = *(a2 + 4 * v18 * v154);
      v27 = vsub_s32(v26, v10);
      v28 = vabd_s32(v26, v10);
      v146 = v7 - v28.i32[0] - v28.i32[1];
      if (v146 < 0)
      {
        v144 = vbsl_s8(vcltz_s32(v27), vrev64_s32(vsub_s32(v28, v10)), __PAIR64__(v7 - v28.i32[0], v7 - v28.i32[1]));
      }

      else
      {
        v144 = v27;
      }

      v62 = *(a2 + 4 * v19 * v154);
      v63 = vsub_s32(v62, v10);
      v64 = vabd_s32(v62, v10);
      v65 = v7 - v64.i32[0] - v64.i32[1];
      if (v65 < 0)
      {
        v63 = vbsl_s8(vcltz_s32(v63), vrev64_s32(vsub_s32(v64, v10)), __PAIR64__(v7 - v64.i32[0], v7 - v64.i32[1]));
      }

      v66 = *(a2 + 4 * v20 * v154);
      v67 = vsub_s32(v66, v10);
      v68 = vabd_s32(v66, v10);
      v69 = v7 - v68.i32[0] - v68.i32[1];
      if (v69 < 0)
      {
        v67 = vbsl_s8(vcltz_s32(v67), vrev64_s32(vsub_s32(v68, v10)), __PAIR64__(v7 - v68.i32[0], v7 - v68.i32[1]));
      }

      v70 = sub_2500F2F8C(a1, __b);
      v71 = 2;
      if (!v70)
      {
        v71 = 1;
      }

      if (sub_2500F2F8C(a1, &__b[v71]))
      {
        v72 = 2;
      }

      else
      {
        v72 = 0;
      }

      v73 = v72 | v70;
      if (v73 > 1)
      {
        if (v73 == 2)
        {
          v74 = vsub_s32(v63, vmvn_s8(v144));
          v39 = COERCE_DOUBLE(vshr_n_s32(vsra_n_u32(v74, v74, 0x1FuLL), 1uLL));
          v16 = (v146 + v65 + 1) / 2;
        }

        else
        {
          v112 = vmull_s32(vadd_s32(vsub_s32(v63, vmvn_s8(v144)), v67), vdup_n_s32(0x55555556u));
          v39 = COERCE_DOUBLE(vadd_s32(vshrn_n_s64(v112, 0x20uLL), vmovn_s64(vshrq_n_u64(v112, 0x3FuLL))));
          v16 = (v146 + v65 + v69 + 1) / 3;
        }
      }

      else if (v73)
      {
        v39 = COERCE_DOUBLE(vsub_s32(vadd_s32(v63, v144), v67));
        v16 = v65 + v146 - v69;
      }

      else
      {
        v39 = *&v155;
        if (v16 * v146 + v144.i32[0] * v155.i32[0] + v144.i32[1] * v155.i32[1] < 0)
        {
          v39 = COERCE_DOUBLE(vneg_s32(v155));
          v16 = -v16;
        }
      }

      v45 = (&v165[7] + 8);
      v29 = v154;
      goto LABEL_104;
    }

    v29 = v154;
    if (v19 == -1 || v9 && (a3[v18] != 1 || a3[v19] != 1))
    {
      if (v18 == -1 || v9 && a3[v18] != 1)
      {
        v43 = sub_2500F2F8C(a1, &v161);
        v39 = *&v155;
        v44 = COERCE_DOUBLE(vneg_s32(v155));
        if (v43)
        {
          v16 = -v16;
        }

        v45 = v165;
        if (v43)
        {
          v39 = v44;
        }

LABEL_104:
        v113 = vabs_s32(*&v39);
        if (v16 >= 0)
        {
          v114 = v16;
        }

        else
        {
          v114 = -v16;
        }

        v115 = v113.u32[1];
        v116 = v113.i32[0];
        v118 = v113.i32[0] < v113.i32[1] || v113.i32[0] < v114;
        v119 = HIDWORD(v39);
        v156 = LODWORD(v39);
        if (v118)
        {
          v120 = LODWORD(v39);
          if (v113.i32[1] < v114)
          {
            v116 = v114;
            v121 = HIDWORD(v39);
LABEL_119:
            v159 = v120;
            v160[0] = v121;
            v160[1] = v116;
            sub_2500F2AB4(a1, &v159, v29, (a1 + 3920), (a1 + 4044), v45, v157);
            v123 = v157[0];
            v124 = vabs_s32(v157[0]);
            v7 = v149;
            v125 = v149 - v124.i32[0] - v124.i32[1];
            if (v125 < 0)
            {
              v123 = vbsl_s8(vcltz_s32(v157[0]), vrev64_s32(vsub_s32(v124, v10)), __PAIR64__(v149 - v124.i32[0], v149 - v124.i32[1]));
            }

            if (v118)
            {
              if (v16 >= 0)
              {
                v126 = v149 - v124.i32[0] - v124.i32[1];
              }

              else
              {
                v126 = v124.i32[1] - (v149 - v124.i32[0]);
              }

              if (v119 < 0)
              {
                v125 = v124.i32[1] - (v149 - v124.i32[0]);
              }

              v127 = COERCE_DOUBLE(__PAIR64__(v125, v123.u32[0]));
              if (v115 >= v114)
              {
                v128 = v123.i32[1];
              }

              else
              {
                v128 = v126;
              }

              if (v115 < v114)
              {
                v127 = *&v123;
              }
            }

            else
            {
              if (v156 < 0)
              {
                v125 = v124.i32[1] - (v149 - v124.i32[0]);
              }

              v127 = COERCE_DOUBLE(__PAIR64__(v123.u32[1], v125));
              v128 = v123.i32[0];
            }

            v9 = v148;
            v129 = vrev64_s32(vabs_s32(*&v127));
            v130 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(*&v127), v129, vsub_s32(v11, v129)));
            v131 = COERCE_DOUBLE(vadd_s32(*&v127, v10));
            if (v128 >= 0)
            {
              v130 = v131;
            }

            *v13 = v130;
            goto LABEL_139;
          }

          v122 = &v158;
          v116 = v113.u32[1];
          v121 = v16;
        }

        else
        {
          v122 = v157;
          v121 = HIDWORD(v39);
          v120 = v16;
        }

        v122->i32[0] = v16;
        goto LABEL_119;
      }

      v40 = *(a2 + 4 * v18 * v154);
      v41 = vsub_s32(v40, v10);
      v42 = vabd_s32(v40, v10);
      v33 = v7 - v42.i32[0] - v42.i32[1];
      if (v33 < 0)
      {
        v147 = vbsl_s8(vcltz_s32(v41), vrev64_s32(vsub_s32(v42, v10)), __PAIR64__(v7 - v42.i32[0], v7 - v42.i32[1]));
      }

      else
      {
        v147 = v41;
      }

      if (sub_2500F2F8C(a1, &v162))
      {
        v45 = v165;
        v16 = v33;
        v39 = *&v147;
        goto LABEL_104;
      }
    }

    else
    {
      v30 = *(a2 + 4 * v18 * v154);
      v31 = vsub_s32(v30, v10);
      v32 = vabd_s32(v30, v10);
      v33 = v7 - v32.i32[0] - v32.i32[1];
      if (v33 < 0)
      {
        v31 = vbsl_s8(vcltz_s32(v31), vrev64_s32(vsub_s32(v32, v10)), __PAIR64__(v7 - v32.i32[0], v7 - v32.i32[1]));
      }

      v147 = v31;
      v34 = *(a2 + 4 * v19 * v154);
      v35 = vsub_s32(v34, v10);
      v36 = vabd_s32(v34, v10);
      v37 = v7 - v36.i32[0] - v36.i32[1];
      if (v37 < 0)
      {
        v35 = vbsl_s8(vcltz_s32(v35), vrev64_s32(vsub_s32(v36, v10)), __PAIR64__(v7 - v36.i32[0], v7 - v36.i32[1]));
      }

      if (sub_2500F2F8C(a1, &v162))
      {
        v38 = vsub_s32(v35, vmvn_s8(v147));
        v39 = COERCE_DOUBLE(vshr_n_s32(vsra_n_u32(v38, v38, 0x1FuLL), 1uLL));
        v16 = (v33 + v37 + 1) / 2;
LABEL_100:
        v45 = v165;
        goto LABEL_104;
      }
    }

    v39 = *&v155;
    if (v16 * v33 + v147.i32[0] * v155.i32[0] + v147.i32[1] * v155.i32[1] < 0)
    {
      v39 = COERCE_DOUBLE(vneg_s32(v155));
      v16 = -v16;
    }

    goto LABEL_100;
  }

LABEL_140:
  v132 = 360;
  do
  {
    v133 = v165 + v132;
    v134 = *&v160[v132 / 4];
    if (v134)
    {
      *(v133 - 2) = v134;
      operator delete(v134);
    }

    v135 = *(v133 - 6);
    if (v135)
    {
      v157[v132 / 8 + 1] = v135;
      operator delete(v135);
    }

    v136 = v165 + v132;
    v137 = *(&v165[-4] + v132 - 8);
    if (v137)
    {
      *(v136 - 8) = v137;
      operator delete(v137);
    }

    v138 = *(v136 - 12);
    if (v138)
    {
      *(&v165[-5] + v132 - 8) = v138;
      operator delete(v138);
    }

    v139 = *(v133 - 15);
    if (v139)
    {
      *(&v165[-7] + v132) = v139;
      operator delete(v139);
    }

    v132 -= 120;
  }

  while (v132);
  v140 = *MEMORY[0x277D85DE8];
}

void sub_2500F3EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  for (i = 240; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a33 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2500F3ECC(void **a1, int a2)
{
  v4 = a2;
  sub_2500FCB4C(a1, a2);
  sub_2500FCB4C(a1 + 3, v4);
  sub_2500FCB4C(a1 + 6, a2 << 6);
  sub_2500FCB4C(a1 + 9, v4);
  sub_2500F247C(a1 + 12, v4);
  v5 = a1[12];
  v6 = a1[13] - v5;
  if (v6 >= 1)
  {
    memset_pattern16(v5, &unk_250110600, v6);
  }

  v7 = a1[1];
  if (*a1 != v7)
  {
    memset_pattern16(*a1, &unk_250110610, v7 - *a1);
  }

  v8 = a1[3];
  v9 = a1[4];
  if (v8 != v9)
  {
    memset_pattern16(v8, &unk_250110610, v9 - v8);
  }

  v10 = a1[6];
  v11 = a1[7];
  if (v10 != v11)
  {
    memset_pattern16(v10, &unk_250110610, v11 - v10);
  }

  v12 = a1[9];
  v13 = a1[10];
  if (v12 != v13)
  {

    memset_pattern16(v12, &unk_250110610, v13 - v12);
  }
}

uint64_t sub_2500F3FE0(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_2500F4054(uint64_t a1, double *a2, _BYTE *a3)
{
  v4 = *(a1 + 4004);
  v5 = *(a1 + 4008);
  v6 = ~(-1 << (*(a1 + 4020) - 1));
  v7 = *(a1 + 4032);
  sub_2500F8F40((a1 + 1160), (a1 + 1208), (a1 + 1184), (a1 + 1184), -1431655765 * ((*(a1 + 1168) - *(a1 + 1160)) >> 2), (a1 + 3968), v6);
  v66 = 0;
  v64 = 0u;
  *__p = 0u;
  *v62 = 0u;
  *v63 = 0u;
  *v60 = 0u;
  v61 = 0u;
  *v59 = 0u;
  sub_2500F3ECC(v59, v5);
  v58 = 0x8000;
  if (v4 >= 1)
  {
    v8 = 0;
    v9 = vdup_n_s32(v6);
    v10 = vdup_n_s32(2 * v6);
    v50 = v5;
    v51 = 4 * v5;
    v52 = 12 * v4;
    v12 = a3;
    v11 = a2;
    v49 = v7;
    while (v7 && *v12 != 1)
    {
LABEL_59:
      v8 += 12;
      v11 = (v11 + v51);
      ++v12;
      if (v52 == v8)
      {
        goto LABEL_60;
      }
    }

    v13 = *(a1 + 3968) + v8;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(*(a1 + 1256) + v8);
    if (v16 == -1 || v7 && a3[v16] != 1)
    {
      v53 = *&v14;
      v26 = sub_2500F2F8C(a1, &v58);
      v14 = *&v53;
      v27 = COERCE_DOUBLE(vneg_s32(v53));
      if (v26)
      {
        v15 = -v15;
        v14 = v27;
      }
    }

    else
    {
      v17 = a2 + v16 * v50;
      v18 = *v17 - v6;
      v19 = v17[1] - v6;
      if (v18 >= 0)
      {
        v20 = v18;
      }

      else
      {
        v20 = -v18;
      }

      if (v19 >= 0)
      {
        v21 = v19;
      }

      else
      {
        v21 = -v19;
      }

      v22 = v6 - v20;
      v23 = v21 - v6;
      if (v18 >= 0)
      {
        v23 = v6 - v21;
      }

      v24 = v20 - v6;
      if (v19 >= 0)
      {
        v24 = v22;
      }

      v25 = v22 - v21;
      if (v25 < 0)
      {
        v18 = v23;
        v19 = v24;
      }

      if (v15 * v25 + v18 * SLODWORD(v14) + v19 * SHIDWORD(v14) < 0)
      {
        v14 = COERCE_DOUBLE(vneg_s32(*&v14));
        v15 = -v15;
      }
    }

    v28 = vabs_s32(*&v14);
    if (v15 >= 0)
    {
      v29 = v15;
    }

    else
    {
      v29 = -v15;
    }

    v30 = v28.u32[1];
    v31 = v28.i32[0];
    v33 = v28.i32[0] < v28.i32[1] || v28.i32[0] < v29;
    v34 = HIDWORD(v14);
    v54 = LODWORD(v14);
    if (v33)
    {
      v35 = LODWORD(v14);
      if (v28.i32[1] < v29)
      {
        v31 = v29;
        v36 = HIDWORD(v14);
LABEL_39:
        v57[0] = v35;
        v57[1] = v36;
        v57[2] = v31;
        sub_2500F2AB4(a1, v57, v50, (a1 + 3920), (a1 + 4044), v59, &v55);
        v38 = v55;
        v39 = vabs_s32(v55);
        v40 = v6 - v39.i32[0] - v39.i32[1];
        if (v40 < 0)
        {
          v38 = vbsl_s8(vcltz_s32(v55), vrev64_s32(vsub_s32(v39, v9)), __PAIR64__(v6 - v39.i32[0], v6 - v39.i32[1]));
        }

        if (v33)
        {
          if (v15 >= 0)
          {
            v41 = v6 - v39.i32[0] - v39.i32[1];
          }

          else
          {
            v41 = v39.i32[1] - (v6 - v39.i32[0]);
          }

          if (v34 < 0)
          {
            v40 = v39.i32[1] - (v6 - v39.i32[0]);
          }

          v42 = COERCE_DOUBLE(__PAIR64__(v40, v38.u32[0]));
          if (v30 >= v29)
          {
            v43 = v38.i32[1];
          }

          else
          {
            v43 = v41;
          }

          if (v30 < v29)
          {
            v42 = *&v38;
          }
        }

        else
        {
          if (v54 < 0)
          {
            v40 = v39.i32[1] - (v6 - v39.i32[0]);
          }

          v42 = COERCE_DOUBLE(__PAIR64__(v38.u32[1], v40));
          v43 = v38.i32[0];
        }

        v44 = vrev64_s32(vabs_s32(*&v42));
        v45 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(*&v42), v44, vsub_s32(v10, v44)));
        v46 = COERCE_DOUBLE(vadd_s32(*&v42, v9));
        if (v43 >= 0)
        {
          v45 = v46;
        }

        *v11 = v45;
        v7 = v49;
        goto LABEL_59;
      }

      v37 = &v56;
      v31 = v28.u32[1];
      v36 = v15;
    }

    else
    {
      v37 = &v55;
      v36 = HIDWORD(v14);
      v35 = v15;
    }

    v37->i32[0] = v15;
    goto LABEL_39;
  }

LABEL_60:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v63[1])
  {
    *&v64 = v63[1];
    operator delete(v63[1]);
  }

  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }

  if (v60[1])
  {
    *&v61 = v60[1];
    operator delete(v60[1]);
  }

  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }
}

void sub_2500F43EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2500F3FE0(va);
  _Unwind_Resume(a1);
}

void sub_2500F4404(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v132 = *MEMORY[0x277D85DE8];
  v7 = a1[1001];
  v8 = a1[1002];
  v122 = v8;
  v9 = a1[1008];
  v131 = 0;
  memset(v130, 0, sizeof(v130));
  memset(v129, 0, sizeof(v129));
  do
  {
    sub_2500F3ECC((v129 + v6), v8);
    v6 += 120;
  }

  while (v6 != 360);
  v128 = 0x8000;
  memset_pattern16(__b, &unk_250110610, 6uLL);
  memset_pattern16(v126, &unk_250110610, 6uLL);
  LODWORD(__p[0]) = 0;
  sub_2500FC9FC(v125, v8, __p);
  v123 = 0;
  sub_2500FC9FC(__p, v8, &v123);
  if (v7 >= 1)
  {
    v10 = 0;
    v119 = a2;
    v120 = v5;
    v121 = v8;
    v117 = v9;
    v118 = a3;
    v113 = v7;
    v114 = 4 * v8;
    do
    {
      if (v9 && *(a3 + v10) != 1)
      {
        goto LABEL_90;
      }

      v11 = (*(v5 + 157) + 12 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = v11[2];
      v15 = (*(v5 + 160) + 12 * v10);
      v16 = v15[2];
      if (v16 != -1 && ((v18 = *v15, v17 = v15[1], !v9) || *(a3 + v13) == 1 && *(a3 + v12) == 1 && *(a3 + v14) == 1 && *(a3 + v18) == 1 && *(a3 + v17) == 1 && *(a3 + v16) == 1))
      {
        v111 = v12;
        v112 = v13;
        v19 = v8;
        v20 = (a2 + 4 * v13 * v122);
        v21 = v5;
        v22 = (a2 + 4 * v12 * v19);
        v115 = v14;
        v23 = (a2 + 4 * v14 * v122);
        v109 = *v15;
        v110 = v15[1];
        v24 = (a2 + 4 * v18 * v19);
        v25 = (a2 + 4 * v17 * v122);
        v26 = (a2 + 4 * v16 * v19);
        v27 = sub_2500F2F8C(v21, v126);
        v28 = 2;
        if (!v27)
        {
          v28 = 1;
        }

        if (sub_2500F2F8C(v21, &v126[v28]))
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29 | v27;
        if (v30 > 1)
        {
          if (v30 == 2)
          {
            sub_2500EBFF8(v20, v22, v23, v122, (*(v120 + 145) + 12 * v112), (*(v120 + 145) + 12 * v111), (*(v120 + 145) + 12 * v115), (*(v120 + 145) + 12 * v10), v125[0]);
            sub_2500EBFF8(v24, v25, v26, v121, (*(v120 + 145) + 12 * v109), (*(v120 + 145) + 12 * v110), (*(v120 + 145) + 12 * v16), (*(v120 + 145) + 12 * v10), __p[0]);
            v31 = v130;
            v7 = v113;
            if (v121 >= 1)
            {
              v62 = v125[0];
              v63 = __p[0];
              v64 = v122;
              do
              {
                v65 = *v63++;
                *v62 = (v65 + *v62) / 2;
                ++v62;
                --v64;
              }

              while (v64);
              goto LABEL_88;
            }
          }

          else if (v121 == 2)
          {
            sub_2500EC6E4(v20, v22, v23, (*(v120 + 145) + 12 * v112), (*(v120 + 145) + 12 * v111), (*(v120 + 145) + 12 * v10), v125[0]);
            sub_2500EC6E4(v24, v25, v26, (*(v120 + 145) + 12 * v109), (*(v120 + 145) + 12 * v110), (*(v120 + 145) + 12 * v10), __p[0]);
            v87 = v125[0];
            v88 = __p[0];
            v89 = *(v125[0] + 1);
            *v125[0] = (*__p[0] + *v125[0]) / 2;
            v87[1] = (v88[1] + v89) / 2;
            v31 = v130;
            v7 = v113;
          }

          else
          {
            v31 = v130;
            v7 = v113;
            if (v122 >= 1)
            {
              v90 = 0;
              v91 = v125[0];
              do
              {
                v92 = 1431655766 * ((v24[v90 / 4] + v20[v90 / 4]) / 2 - (v23[v90 / 4] + v26[v90 / 4]) + 2 * (v25[v90 / 4] + v22[v90 / 4]));
                *&v91[v90] = HIDWORD(v92) + (v92 >> 63);
                v90 += 4;
              }

              while (v114 != v90);
              goto LABEL_88;
            }
          }
        }

        else if (v30)
        {
          v31 = v130;
          v7 = v113;
          if (v122 >= 1)
          {
            v80 = v125[0];
            v81 = v122;
            do
            {
              v83 = *v24++;
              v82 = v83;
              v84 = *v25++;
              v85 = v84 + v82;
              v86 = *v26++;
              *v80++ = v85 - v86;
              --v81;
            }

            while (v81);
            goto LABEL_88;
          }
        }

        else
        {
          v31 = v130;
          v7 = v113;
          if (v122 >= 1)
          {
            v32 = v125[0];
            v33 = v122;
            do
            {
              v35 = *v20++;
              v34 = v35;
              v36 = *v22++;
              v37 = v36 + v34;
              v38 = *v23++;
              *v32++ = v37 - v38;
              --v33;
            }

            while (v33);
LABEL_88:
            v31 = v130;
          }
        }
      }

      else
      {
        if (v14 == -1 || v9 && (*(a3 + v13) != 1 || *(a3 + v12) != 1 || *(a3 + v14) != 1))
        {
          if (v12 == -1 || v9 && (*(a3 + v13) != 1 || *(a3 + v12) != 1))
          {
            if (v13 == -1 || v9 && *(a3 + v13) != 1)
            {
              v61 = v125[0];
              if (v122 >= 1)
              {
                bzero(v125[0], v114);
              }

              LOBYTE(v123) = 3;
              sub_2500F2AB4(v5, v61, v8, v5 + 490, &v123, 0, a2 + 4 * v10 * v8);
              goto LABEL_90;
            }

            if (v8 >= 1)
            {
              v57 = (a2 + 4 * v13 * v8);
              v58 = v125[0];
              v59 = v122;
              do
              {
                v60 = *v57++;
                *v58++ = v60;
                --v59;
              }

              while (v59);
            }

            v31 = v129;
          }

          else
          {
            v55 = v12;
            if (v8 == 2)
            {
              v56 = sub_2500F2F8C(v5, &v128);
              sub_2500EC4C8(a2 + 8 * v13, (a2 + 8 * v55), (*(v5 + 145) + 12 * v13), (*(v5 + 145) + 12 * v55), (*(v5 + 145) + 12 * v10), v56, v125[0]);
              v31 = &v129[7] + 8;
            }

            else
            {
              v31 = &v129[7] + 8;
              if (v122 >= 1)
              {
                v73 = v122;
                v74 = (v119 + 4 * v13 * v121);
                v75 = (v119 + 4 * v55 * v122);
                v76 = v125[0];
                do
                {
                  v78 = *v74++;
                  v77 = v78;
                  v79 = *v75++;
                  *v76++ = (v79 + v77) / 2;
                  --v73;
                }

                while (v73);
                v31 = &v129[7] + 8;
              }
            }
          }

          goto LABEL_89;
        }

        v39 = v13;
        v40 = (a2 + 4 * v13 * v122);
        v41 = v12;
        v42 = (a2 + 4 * v12 * v8);
        v116 = v14;
        v43 = (a2 + 4 * v14 * v122);
        v44 = sub_2500F2F8C(v5, __b);
        v45 = 2;
        if (!v44)
        {
          v45 = 1;
        }

        if (sub_2500F2F8C(v5, &__b[v45]))
        {
          v46 = 2;
        }

        else
        {
          v46 = 0;
        }

        v47 = v46 | v44;
        if (v47 > 1)
        {
          if (v47 == 2)
          {
            sub_2500EBFF8(v40, v42, v43, v122, (*(v5 + 145) + 12 * v39), (*(v5 + 145) + 12 * v41), (*(v5 + 145) + 12 * v116), (*(v5 + 145) + 12 * v10), v125[0]);
            v7 = v113;
            v31 = v130;
            if (v122 >= 1)
            {
              v66 = v125[0];
              v67 = v122;
              do
              {
                v69 = *v40++;
                v68 = v69;
                v70 = *v42++;
                v71 = v70 + v68;
                v72 = *v43++;
                *v66 = (v71 - v72 + *v66) / 2;
                ++v66;
                --v67;
              }

              while (v67);
              goto LABEL_88;
            }
          }

          else if (v122 == 2)
          {
            sub_2500EC6E4((v119 + 8 * v39), (v119 + 8 * v41), (v119 + 8 * v116), (*(v5 + 145) + 12 * v39), (*(v5 + 145) + 12 * v41), (*(v5 + 145) + 12 * v10), v125[0]);
            v31 = v130;
            v7 = v113;
          }

          else
          {
            v31 = v130;
            v7 = v113;
            if (v8 >= 1)
            {
              v93 = v125[0];
              v94 = v122;
              do
              {
                v96 = *v40++;
                v95 = v96;
                v97 = *v42++;
                v98 = v97 + v95;
                v99 = *v43++;
                *v93++ = v98 - v99;
                --v94;
              }

              while (v94);
              goto LABEL_88;
            }
          }
        }

        else if (v47)
        {
          sub_2500EBFF8(v40, v42, v43, v8, (*(v5 + 145) + 12 * v39), (*(v5 + 145) + 12 * v41), (*(v5 + 145) + 12 * v116), (*(v5 + 145) + 12 * v10), v125[0]);
          v31 = v130;
          v7 = v113;
        }

        else
        {
          v31 = v130;
          v7 = v113;
          if (v8 >= 1)
          {
            v48 = v125[0];
            v49 = v122;
            do
            {
              v51 = *v40++;
              v50 = v51;
              v52 = *v42++;
              v53 = v52 + v50;
              v54 = *v43++;
              *v48++ = v53 - v54;
              --v49;
            }

            while (v49);
            goto LABEL_88;
          }
        }
      }

LABEL_89:
      v5 = v120;
      v8 = v121;
      a2 = v119;
      sub_2500F2AB4(v120, v125[0], v122, v120 + 490, v120 + 4044, v31, v119 + 4 * v10 * v121);
      v9 = v117;
      a3 = v118;
LABEL_90:
      ++v10;
    }

    while (v10 != v7);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v125[0])
  {
    v125[1] = v125[0];
    operator delete(v125[0]);
  }

  v100 = 360;
  do
  {
    v101 = v129 + v100;
    v102 = v125[v100 / 8 + 2];
    if (v102)
    {
      *(v101 - 2) = v102;
      operator delete(v102);
    }

    v103 = *(v101 - 6);
    if (v103)
    {
      v125[v100 / 8] = v103;
      operator delete(v103);
    }

    v104 = v129 + v100;
    v105 = *(&v129[-4] + v100 - 8);
    if (v105)
    {
      *(v104 - 8) = v105;
      operator delete(v105);
    }

    v106 = *(v104 - 12);
    if (v106)
    {
      *(&v129[-5] + v100 - 8) = v106;
      operator delete(v106);
    }

    v107 = *(v101 - 15);
    if (v107)
    {
      *(&v129[-7] + v100) = v107;
      operator delete(v107);
    }

    v100 -= 120;
  }

  while (v100);
  v108 = *MEMORY[0x277D85DE8];
}

void sub_2500F4D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 240; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a35 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2500F4DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v56 = *MEMORY[0x277D85DE8];
  v46 = *(a1 + 4004);
  v6 = *(a1 + 4008);
  v7 = *(a1 + 4008);
  v47 = *(a1 + 4032);
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  memset(v53, 0, sizeof(v53));
  do
  {
    sub_2500F3ECC((v53 + v5), v6);
    v5 += 120;
  }

  while (v5 != 360);
  v52 = 0x8000;
  LODWORD(__p[0]) = 0;
  sub_2500FC9FC(&v50, v6, __p);
  v48 = 0;
  sub_2500FC9FC(__p, v6, &v48);
  v8 = a3;
  if (v46 >= 1)
  {
    for (i = 0; i != v46; ++i)
    {
      if (!v47 || *(v8 + i) == 1)
      {
        v10 = (*(a1 + 1256) + 12 * i);
        v11 = *v10;
        v12 = v10[1];
        v13 = v10[2];
        v14 = (*(a1 + 1280) + 12 * i);
        v15 = v14[2];
        if (v15 != -1 && ((v16 = *v14, v17 = v14[1], !v47) || *(v8 + v11) == 1 && *(v8 + v12) == 1 && *(v8 + v13) == 1 && *(v8 + v16) == 1 && *(v8 + v17) == 1 && *(v8 + v15) == 1))
        {
          sub_2500EBFF8((a2 + 4 * v11 * v7), (a2 + 4 * v12 * v6), (a2 + 4 * v13 * v7), v6, (*(a1 + 1160) + 12 * v11), (*(a1 + 1160) + 12 * v12), (*(a1 + 1160) + 12 * v13), (*(a1 + 1160) + 12 * i), v50);
          sub_2500EBFF8((a2 + 4 * v16 * v6), (a2 + 4 * v17 * v6), (a2 + 4 * v15 * v6), v6, (*(a1 + 1160) + 12 * v16), (*(a1 + 1160) + 12 * v17), (*(a1 + 1160) + 12 * v15), (*(a1 + 1160) + 12 * i), __p[0]);
          v18 = v54;
          if (v6 >= 1)
          {
            v19 = v50;
            v20 = __p[0];
            v21 = v6;
            do
            {
              v22 = *v20++;
              *v19 = (v22 + *v19) / 2;
              ++v19;
              --v21;
            }

            while (v21);
            v18 = v54;
          }
        }

        else if (v13 != -1 && (!v47 || *(v8 + v11) == 1 && *(v8 + v12) == 1 && *(v8 + v13) == 1))
        {
          sub_2500EBFF8((a2 + 4 * v11 * v7), (a2 + 4 * v12 * v6), (a2 + 4 * v13 * v7), v6, (*(a1 + 1160) + 12 * v11), (*(a1 + 1160) + 12 * v12), (*(a1 + 1160) + 12 * v13), (*(a1 + 1160) + 12 * i), v50);
          v18 = v54;
        }

        else if (v12 == -1 || v47 && (*(v8 + v11) != 1 || *(v8 + v12) != 1))
        {
          if (v11 == -1 || v47 && *(v8 + v11) != 1)
          {
            v28 = v50;
            if (v7 >= 1)
            {
              bzero(v50, 4 * v6);
            }

            LOBYTE(v48) = 3;
            sub_2500F2AB4(a1, v28, v6, (a1 + 3920), &v48, 0, a2 + 4 * i * v6);
            v8 = a3;
            continue;
          }

          if (v6 >= 1)
          {
            v24 = (a2 + 4 * v11 * v6);
            v25 = v50;
            v26 = v6;
            do
            {
              v27 = *v24++;
              *v25++ = v27;
              --v26;
            }

            while (v26);
          }

          v18 = v53;
        }

        else if (v7 == 2)
        {
          v23 = sub_2500F2F8C(a1, &v52);
          sub_2500EC4C8(a2 + 8 * v11, (a2 + 8 * v12), (*(a1 + 1160) + 12 * v11), (*(a1 + 1160) + 12 * v12), (*(a1 + 1160) + 12 * i), v23, v50);
          v18 = &v53[7] + 8;
        }

        else
        {
          v18 = &v53[7] + 8;
          if (v7 >= 1)
          {
            v29 = (a2 + 4 * v11 * v6);
            v30 = (a2 + 4 * v12 * v6);
            v31 = v50;
            v32 = v6;
            do
            {
              v34 = *v29++;
              v33 = v34;
              v35 = *v30++;
              *v31++ = (v35 + v33) / 2;
              --v32;
            }

            while (v32);
            v18 = &v53[7] + 8;
          }
        }

        sub_2500F2AB4(a1, v50, v6, (a1 + 3920), (a1 + 4044), v18, a2 + 4 * i * v6);
        v8 = a3;
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v50)
  {
    v51[0] = v50;
    operator delete(v50);
  }

  v36 = 360;
  do
  {
    v37 = v53 + v36;
    v38 = v51[v36 / 8];
    if (v38)
    {
      *(v37 - 2) = v38;
      operator delete(v38);
    }

    v39 = *(v37 - 6);
    if (v39)
    {
      __p[v36 / 8 + 2] = v39;
      operator delete(v39);
    }

    v40 = v53 + v36;
    v41 = *(&v53[-4] + v36 - 8);
    if (v41)
    {
      *(v40 - 8) = v41;
      operator delete(v41);
    }

    v42 = *(v40 - 12);
    if (v42)
    {
      *(&v53[-5] + v36 - 8) = v42;
      operator delete(v42);
    }

    v43 = *(v37 - 15);
    if (v43)
    {
      *(&v53[-7] + v36) = v43;
      operator delete(v43);
    }

    v36 -= 120;
  }

  while (v36);
  v44 = *MEMORY[0x277D85DE8];
}

void sub_2500F52EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 240; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a23 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2500F5354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v60 = *MEMORY[0x277D85DE8];
  v50 = *(a1 + 4004);
  v5 = *(a1 + 4008);
  v6 = *(a1 + 4008);
  v7 = *(a1 + 4032);
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  memset(v57, 0, sizeof(v57));
  do
  {
    sub_2500F3ECC((v57 + v4), v5);
    v4 += 120;
  }

  while (v4 != 360);
  memset_pattern16(__b, &unk_250110610, 6uLL);
  v53 = 0;
  sub_2500FC9FC(&__p, v5, &v53);
  if (v50 >= 1)
  {
    v8 = 0;
    v9 = 4 * v5;
    v49 = a3;
    v46 = v7;
    do
    {
      if (v7 && *(a3 + v8) != 1)
      {
        goto LABEL_67;
      }

      v10 = (*(a1 + 1256) + 12 * v8);
      v12 = *v10;
      v11 = v10[1];
      v13 = v10[2];
      v14 = (*(a1 + 1280) + 12 * v8);
      v15 = v14[2];
      if (v15 != -1 && (!v7 || *(a3 + v12) == 1 && *(a3 + v11) == 1 && *(a3 + v13) == 1 && *(a3 + *v14) == 1 && *(a3 + v14[1]) == 1 && *(a3 + v15) == 1))
      {
        v47 = *v14;
        v48 = v14[1];
        v16 = sub_2500F2F8C(a1, __b);
        v17 = 2;
        if (!v16)
        {
          v17 = 1;
        }

        if (sub_2500F2F8C(a1, &__b[v17]))
        {
          v18 = 2;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18 | v16;
        v20 = a2 + 4 * v12 * v5;
        v21 = a2 + 4 * v11 * v6;
        v22 = a2 + 4 * v13 * v5;
        v23 = a2 + 4 * v47 * v6;
        v24 = a2 + 4 * v48 * v5;
        v25 = a2 + 4 * v15 * v6;
        v26 = __p;
        if (v19 > 1)
        {
          if (v19 == 2)
          {
            a3 = v49;
            v7 = v46;
            if (v6 >= 1)
            {
              v33 = 0;
              do
              {
                *&v26[v33] = *(v24 + v33) + *(v21 + v33) - (*(v23 + v33) + *(v20 + v33)) / 2;
                v33 += 4;
              }

              while (v9 != v33);
            }
          }

          else
          {
            a3 = v49;
            v7 = v46;
            if (v6 >= 1)
            {
              v35 = 0;
              do
              {
                v36 = 1431655766 * ((*(v23 + v35) + *(v20 + v35)) / 2 - (*(v22 + v35) + *(v25 + v35)) + 2 * (*(v24 + v35) + *(v21 + v35)));
                *&v26[v35] = HIDWORD(v36) + (v36 >> 63);
                v35 += 4;
              }

              while (v9 != v35);
            }
          }
        }

        else if (v19)
        {
          a3 = v49;
          v7 = v46;
          if (v5 >= 1)
          {
            v34 = 0;
            do
            {
              *&v26[v34] = *(v24 + v34) + *(v23 + v34) - *(v25 + v34);
              v34 += 4;
            }

            while (v9 != v34);
          }
        }

        else
        {
          a3 = v49;
          v7 = v46;
          if (v6 >= 1)
          {
            v27 = 0;
            do
            {
              *&v26[v27] = *(v21 + v27) + *(v20 + v27) - *(v22 + v27);
              v27 += 4;
            }

            while (v9 != v27);
          }
        }
      }

      else
      {
        if (v13 == -1 || v7 && (*(a3 + v12) != 1 || *(a3 + v11) != 1 || *(a3 + v13) != 1))
        {
          if (v11 == -1 || v7 && (*(a3 + v12) != 1 || *(a3 + v11) != 1))
          {
            if (v12 == -1 || v7 && *(a3 + v12) != 1)
            {
              v32 = __p;
              if (v6 >= 1)
              {
                bzero(__p, v9);
              }

              LOBYTE(v53) = 3;
              sub_2500F2AB4(a1, v32, v5, (a1 + 3920), &v53, 0, a2 + 4 * v8 * v5);
              a3 = v49;
              goto LABEL_67;
            }

            v26 = __p;
            if (v5 >= 1)
            {
              v31 = 0;
              do
              {
                *&v26[v31] = *(a2 + 4 * v12 * v6 + v31);
                v31 += 4;
              }

              while (v9 != v31);
            }

            v30 = v57;
          }

          else
          {
            v26 = __p;
            if (v6 >= 1)
            {
              v29 = 0;
              do
              {
                *&v26[v29] = (*(a2 + 4 * v11 * v5 + v29) + *(a2 + 4 * v12 * v6 + v29)) / 2;
                v29 += 4;
              }

              while (v9 != v29);
            }

            v30 = &v57[7] + 8;
          }

          goto LABEL_66;
        }

        v26 = __p;
        if (v5 >= 1)
        {
          v28 = 0;
          do
          {
            *&v26[v28] = *(a2 + 4 * v11 * v6 + v28) + *(a2 + 4 * v12 * v5 + v28) - *(a2 + 4 * v13 * v5 + v28);
            v28 += 4;
          }

          while (v9 != v28);
        }
      }

      v30 = v58;
LABEL_66:
      sub_2500F2AB4(a1, v26, v5, (a1 + 3920), (a1 + 4044), v30, a2 + 4 * v8 * v5);
LABEL_67:
      ++v8;
    }

    while (v8 != v50);
  }

  if (__p)
  {
    v55[0] = __p;
    operator delete(__p);
  }

  v37 = 360;
  do
  {
    v38 = v57 + v37;
    v39 = v55[v37 / 8];
    if (v39)
    {
      *(v38 - 2) = v39;
      operator delete(v39);
    }

    v40 = *(v38 - 6);
    if (v40)
    {
      *(&v57[-2] + v37 - 8) = v40;
      operator delete(v40);
    }

    v41 = v57 + v37;
    v42 = *(&v57[-4] + v37 - 8);
    if (v42)
    {
      *(v41 - 8) = v42;
      operator delete(v42);
    }

    v43 = *(v41 - 12);
    if (v43)
    {
      *(&v57[-5] + v37 - 8) = v43;
      operator delete(v43);
    }

    v44 = *(v38 - 15);
    if (v44)
    {
      *(&v57[-7] + v37) = v44;
      operator delete(v44);
    }

    v37 -= 120;
  }

  while (v37);
  v45 = *MEMORY[0x277D85DE8];
}

void sub_2500F5930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  for (i = 240; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a23 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2500F5978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v44 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 4004);
  v8 = *(a1 + 4008);
  v9 = *(a1 + 4008);
  v10 = *(a1 + 4032);
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  memset(v41, 0, sizeof(v41));
  do
  {
    sub_2500F3ECC((v41 + v6), v8);
    v6 += 120;
  }

  while (v6 != 360);
  v39 = 0;
  sub_2500FC9FC(__p, v8, &v39);
  if (v7 >= 1)
  {
    v11 = 0;
    v12 = 4 * v8;
    while (v10)
    {
      if (*(a3 + v11))
      {
        v13 = (*(a1 + 1256) + 12 * v11);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        if (v16 == -1 || *(a3 + v14) != 1 || *(a3 + v15) != 1 || *(a3 + v16) != 1)
        {
          if (v15 == -1 || *(a3 + v14) != 1 || *(a3 + v15) != 1)
          {
            if (v14 == -1 || *(a3 + v14) != 1)
            {
LABEL_16:
              v17 = __p[0];
              if (v9 >= 1)
              {
                bzero(__p[0], 4 * v8);
              }

              LOBYTE(v39) = 3;
              sub_2500F2AB4(a1, v17, v8, (a1 + 3920), &v39, 0, a2 + 4 * v11 * v8);
              goto LABEL_35;
            }

LABEL_30:
            v19 = __p[0];
            if (v8 >= 1)
            {
              v28 = 0;
              v29 = a2 + 4 * v14 * v9;
              do
              {
                *&v19[v28] = *(v29 + v28);
                v28 += 4;
              }

              while (v12 != v28);
            }

            v24 = v41;
LABEL_34:
            sub_2500F2AB4(a1, v19, v8, (a1 + 3920), (a1 + 4044), v24, a2 + 4 * v11 * v8);
            goto LABEL_35;
          }

LABEL_25:
          v19 = __p[0];
          if (v9 >= 1)
          {
            v25 = 0;
            v26 = a2 + 4 * v14 * v9;
            v27 = a2 + 4 * v15 * v8;
            do
            {
              *&v19[v25] = (*(v27 + v25) + *(v26 + v25)) / 2;
              v25 += 4;
            }

            while (v12 != v25);
          }

          v24 = &v41[7] + 8;
          goto LABEL_34;
        }

        goto LABEL_20;
      }

LABEL_35:
      if (++v11 == v7)
      {
        goto LABEL_36;
      }
    }

    v18 = (*(a1 + 1256) + 12 * v11);
    v14 = *v18;
    v15 = v18[1];
    v16 = v18[2];
    if (v16 == -1)
    {
      if (v15 == -1)
      {
        if (v14 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_30;
      }

      goto LABEL_25;
    }

LABEL_20:
    v19 = __p[0];
    if (v9 >= 1)
    {
      v20 = 0;
      v21 = a2 + 4 * v14 * v8;
      v22 = a2 + 4 * v15 * v9;
      v23 = a2 + 4 * v16 * v8;
      do
      {
        *&v19[v20] = *(v22 + v20) + *(v21 + v20) - *(v23 + v20);
        v20 += 4;
      }

      while (v12 != v20);
    }

    v24 = v42;
    goto LABEL_34;
  }

LABEL_36:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v30 = 360;
  do
  {
    v31 = v41 + v30;
    v32 = __p[v30 / 8];
    if (v32)
    {
      *(v31 - 2) = v32;
      operator delete(v32);
    }

    v33 = *(v31 - 6);
    if (v33)
    {
      *(&v41[-2] + v30 - 8) = v33;
      operator delete(v33);
    }

    v34 = v41 + v30;
    v35 = *(&v41[-4] + v30 - 8);
    if (v35)
    {
      *(v34 - 8) = v35;
      operator delete(v35);
    }

    v36 = *(v34 - 12);
    if (v36)
    {
      *(&v41[-5] + v30 - 8) = v36;
      operator delete(v36);
    }

    v37 = *(v31 - 15);
    if (v37)
    {
      *(&v41[-7] + v30) = v37;
      operator delete(v37);
    }

    v30 -= 120;
  }

  while (v30);
  v38 = *MEMORY[0x277D85DE8];
}

void sub_2500F5CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  for (i = 240; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a15 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2500F5D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 4004);
  v7 = *(a1 + 4008);
  v8 = *(a1 + 4032);
  v35 = 0u;
  memset(v36, 0, 112);
  memset(v34, 0, sizeof(v34));
  sub_2500F3ECC(v34, v7);
  sub_2500F3ECC(&v35 + 1, v7);
  v32 = 0;
  sub_2500FC9FC(__p, v7, &v32);
  if (v6 >= 1)
  {
    v9 = 0;
    v10 = 4 * v7;
    while (v8)
    {
      if (*(a3 + v9))
      {
        v11 = (*(a1 + 1256) + 12 * v9);
        v12 = *v11;
        v13 = v11[1];
        if (v13 == -1 || *(a3 + v12) != 1 || *(a3 + v13) != 1)
        {
          if (v12 == -1 || *(a3 + v12) != 1)
          {
LABEL_10:
            v14 = __p[0];
            if (v7 >= 1)
            {
              bzero(__p[0], 4 * v7);
            }

            LOBYTE(v32) = 3;
            sub_2500F2AB4(a1, v14, v7, (a1 + 3920), &v32, 0, a2 + 4 * v9 * v7);
            goto LABEL_24;
          }

LABEL_19:
          v16 = __p[0];
          if (v7 >= 1)
          {
            v21 = 0;
            v22 = a2 + 4 * v12 * v7;
            do
            {
              *&v16[v21] = *(v22 + v21);
              v21 += 4;
            }

            while (v10 != v21);
          }

          v20 = v34;
LABEL_23:
          sub_2500F2AB4(a1, v16, v7, (a1 + 3920), (a1 + 4044), v20, a2 + 4 * v9 * v7);
          goto LABEL_24;
        }

LABEL_14:
        v16 = __p[0];
        if (v7 >= 1)
        {
          v17 = 0;
          v18 = a2 + 4 * v12 * v7;
          v19 = a2 + 4 * v13 * v7;
          do
          {
            *&v16[v17] = (*(v19 + v17) + *(v18 + v17)) / 2;
            v17 += 4;
          }

          while (v10 != v17);
        }

        v20 = &v35 + 1;
        goto LABEL_23;
      }

LABEL_24:
      if (++v9 == v6)
      {
        goto LABEL_25;
      }
    }

    v15 = (*(a1 + 1256) + 12 * v9);
    v12 = *v15;
    v13 = v15[1];
    if (v13 == -1)
    {
      if (v12 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

LABEL_25:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  for (i = 0; i != -240; i -= 120)
  {
    v24 = (v34 + i);
    v25 = *&v36[i + 88];
    if (v25)
    {
      v24[28] = v25;
      operator delete(v25);
    }

    v26 = v24[24];
    if (v26)
    {
      *&v36[i + 72] = v26;
      operator delete(v26);
    }

    v27 = v34 + i;
    v28 = *&v36[i + 40];
    if (v28)
    {
      *(v27 + 22) = v28;
      operator delete(v28);
    }

    v29 = *(v27 + 18);
    if (v29)
    {
      *&v36[i + 24] = v29;
      operator delete(v29);
    }

    v30 = v24[15];
    if (v30)
    {
      *&v36[i] = v30;
      operator delete(v30);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_2500F601C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  for (i = 120; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a15 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2500F6064(void *a1, unint64_t a2, int *a3)
{
  v3 = (a1[1] - *a1) >> 2;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_2500FCCE4(a1, a2 - v3, a3);
  }
}

int32x2_t sub_2500F6094(uint64_t a1, int a2, int32x2_t result)
{
  if (*(a1 + 1116) <= a2)
  {
    *(a1 + 4384) = 3;
    return result;
  }

  v5 = (*(a1 + 1256) + 12 * a2);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = *(a1 + 1148);
  if (v9 != 1)
  {
    if (v9 != 2)
    {
      goto LABEL_16;
    }

    v10 = (*(a1 + 1280) + 12 * a2);
    v11 = v10[2];
    if (v11 != -1)
    {
      v12 = *v10;
      v52 = v10[1];
      v13 = sub_2500F2F8C(a1, (a1 + 3672));
      v14 = 4;
      if (!v13)
      {
        v14 = 2;
      }

      if (sub_2500F2F8C(a1, (a1 + 3672 + v14)))
      {
        v15 = 2;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 | v13;
      v17 = *(a1 + 1160);
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v33 = (v17 + 12 * v7);
          v34 = (v17 + 12 * v52);
          v35 = (v17 + 12 * v6);
          v36 = (v17 + 12 * v12);
          v37 = vadd_s32(*v36, *v35);
          v53 = vsub_s32(vadd_s32(*v34, *v33), vshr_n_s32(vsra_n_u32(v37, v37, 0x1FuLL), 1uLL));
          v27 = v34[1].i32[0] + v33[1].i32[0] - (v36[1].i32[0] + v35[1].i32[0]) / 2;
        }

        else
        {
          v41 = (v17 + 12 * v6);
          v42 = (v17 + 12 * v12);
          v43 = (v17 + 12 * v7);
          v44 = (v17 + 12 * v52);
          v45 = (v17 + 12 * v8);
          v46 = (v17 + 12 * v11);
          v47 = vadd_s32(*v42, *v41);
          v48 = vadd_s32(*v44, *v43);
          v49 = vmull_s32(vsub_s32(vsra_n_s32(vadd_s32(v48, v48), vsra_n_u32(v47, v47, 0x1FuLL), 1uLL), vadd_s32(*v45, *v46)), vdup_n_s32(0x55555556u));
          v53 = vadd_s32(vshrn_n_s64(v49, 0x20uLL), vmovn_s64(vshrq_n_u64(v49, 0x3FuLL)));
          v50 = 1431655766 * (2 * (v44[1].i32[0] + v43[1].i32[0]) + (v42[1].i32[0] + v41[1].i32[0]) / 2 - (v45[1].i32[0] + v46[1].i32[0]));
          v27 = HIDWORD(v50) + (v50 >> 63);
        }
      }

      else
      {
        if (v16)
        {
          v18 = (v17 + 12 * v12);
          v19 = (v17 + 12 * v52);
          v20 = v19[1].i32[0] + v18[1].i32[0];
          v21 = (v17 + 12 * v11);
        }

        else
        {
          v18 = (v17 + 12 * v6);
          v19 = (v17 + 12 * v7);
          v20 = v19[1].i32[0] + v18[1].i32[0];
          v21 = (v17 + 12 * v8);
        }

        v53 = vsub_s32(vadd_s32(*v19, *v18), *v21);
        v27 = v20 - v21[1].i32[0];
      }

      v22 = 1;
      goto LABEL_28;
    }
  }

  if (v8 != -1)
  {
    v22 = 0;
    v23 = *(a1 + 1160);
    v24 = (v23 + 12 * v6);
    v25 = (v23 + 12 * v7);
    v26 = (v23 + 12 * v8);
    v53 = vsub_s32(vadd_s32(*v25, *v24), *v26);
    v27 = v25[1].i32[0] + v24[1].i32[0] - v26[1].i32[0];
LABEL_28:
    sub_2500F6468(&v54, a1, *(a1 + 1144), (a1 + 120 * v22 + 3680));
    v38 = v54;
    v39 = v55;
    v40 = v53;
    goto LABEL_29;
  }

LABEL_16:
  if (v7 != -1)
  {
    v22 = 0;
    v28 = *(a1 + 1160);
    v29 = (v28 + 12 * v6);
    v30 = (v28 + 12 * v7);
    v31 = vadd_s32(*v30, *v29);
    v53 = vshr_n_s32(vsra_n_u32(v31, v31, 0x1FuLL), 1uLL);
    v27 = (v30[1].i32[0] + v29[1].i32[0]) / 2;
    goto LABEL_28;
  }

  if (v6 != -1)
  {
    v22 = 0;
    v32 = *(a1 + 1160) + 12 * v6;
    v53 = *v32;
    v27 = *(v32 + 8);
    goto LABEL_28;
  }

  if (!*(a1 + 1156))
  {
    v22 = 0;
    v27 = 0;
    v53 = 0;
    goto LABEL_28;
  }

  sub_2500F6468(&v54, a1, 3u, 0);
  v27 = 0;
  v38 = v54;
  v39 = v55;
  v40 = 0;
LABEL_29:
  v51 = (*(a1 + 1160) + 12 * a2);
  result = vadd_s32(v38, v40);
  *v51 = result;
  v51[1].i32[0] = v39 + v27;
  return result;
}

uint64_t sub_2500F6468(uint64_t result, unsigned int *a2, unsigned __int8 a3, void *a4)
{
  v6 = result;
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      for (i = 0; i != 3; ++i)
      {
        v53 = a2[i + 270];
        if (v53 < 1)
        {
          v55 = 0;
        }

        else
        {
          v54 = 0;
          v55 = 0;
          do
          {
            v58 = 0x8000;
            result = sub_2500F2F8C(a2, &v58);
            v55 += result << v54++;
          }

          while (v53 != v54);
        }

        *(v6 + 4 * i) = v55;
      }

      return result;
    }

    if (a3 != 4)
    {
      return result;
    }

    v15 = 0;
    v16 = 0;
    v17 = 62;
    while (1)
    {
      result = sub_2500F2F8C(a2, (*a4 + v15));
      if (result)
      {
        break;
      }

      v34 = 0;
LABEL_48:
      *(v6 + v16) = v34;
      v17 += 128;
      v16 += 4;
      v15 += 2;
      if (v17 == 446)
      {
        return result;
      }
    }

    v18 = sub_2500F2F8C(a2, (a4[3] + v15));
    v19 = a4[6] + v17;
    if (sub_2500F2F8C(a2, (v19 - 62)))
    {
      v20 = 32;
    }

    else
    {
      v20 = 0;
    }

    if (sub_2500F2F8C(a2, (v19 + 2 * (v20 >> 5) - 60)))
    {
      v21 = 16;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21 | v20;
    if (sub_2500F2F8C(a2, (v19 + 2 * (v22 >> 4) - 56)))
    {
      v23 = 8;
    }

    else
    {
      v23 = 0;
    }

    v24 = v22 | v23;
    if (sub_2500F2F8C(a2, (v19 + 2 * (v24 >> 3) - 48)))
    {
      v25 = 4;
    }

    else
    {
      v25 = 0;
    }

    v26 = v24 | v25;
    if (sub_2500F2F8C(a2, (v19 + 2 * (v26 >> 2) - 32)))
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }

    v28 = v26 | v27;
    result = sub_2500F2F8C(a2, (v19 + v28));
    v29 = v28 | result;
    if ((v28 | result) == 0x3F)
    {
      v30 = a4[12];
      result = sub_2500F307C(a2, *(v30 + v16), (a4[9] + v15));
      v29 = result + 63;
      v31 = *(v30 + v16);
      v32 = (result + 63) >> v31;
      if (!v31 || v32)
      {
        if (v32 < 2)
        {
          goto LABEL_45;
        }

        v33 = 1;
      }

      else
      {
        v33 = -1;
      }

      *(v30 + v16) = v33 + v31;
    }

LABEL_45:
    if (v18)
    {
      v34 = v29 + 1;
    }

    else
    {
      v34 = ~v29;
    }

    goto LABEL_48;
  }

  if (a3)
  {
    if (a3 == 2)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = a4[12];
        result = sub_2500F3144(a2, *(v9 + v7), (a4[3] + v8), (a4[9] + v8));
        v10 = result >= 0 ? result : -result;
        v11 = *(v9 + v7);
        v12 = v10 >> v11;
        if (v11 && v12 == 0)
        {
          break;
        }

        if (v12 >= 2)
        {
          v14 = 1;
LABEL_15:
          *(v9 + v7) = v14 + v11;
        }

        *(v6 + v7) = result;
        v8 += 2;
        v7 += 4;
        if (v8 == 6)
        {
          return result;
        }
      }

      v14 = -1;
      goto LABEL_15;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = 62;
    v56 = result;
    do
    {
      result = sub_2500F2F8C(a2, (*a4 + v35));
      if (result)
      {
        v57 = sub_2500F2F8C(a2, (a4[3] + v35));
        v38 = a4[6] + v37;
        v39 = sub_2500F2F8C(a2, (v38 - 62));
        if (v39)
        {
          v40 = 4;
        }

        else
        {
          v40 = 2;
        }

        if (sub_2500F2F8C(a2, (v38 - 62 + v40)))
        {
          v41 = 2;
        }

        else
        {
          v41 = 0;
        }

        v42 = v41 | v39;
        if (sub_2500F2F8C(a2, (v38 + 2 * (v41 | v39) - 56)))
        {
          v43 = 4;
        }

        else
        {
          v43 = 0;
        }

        v44 = v42 | v43;
        if (sub_2500F2F8C(a2, (v38 + 2 * v44 - 48)))
        {
          v45 = 8;
        }

        else
        {
          v45 = 0;
        }

        v46 = v44 | v45;
        if (sub_2500F2F8C(a2, (v38 + 2 * v46 - 32)))
        {
          v47 = 16;
        }

        else
        {
          v47 = 0;
        }

        v48 = v46 | v47;
        result = sub_2500F2F8C(a2, (v38 + 2 * v48));
        if (result)
        {
          v49 = 32;
        }

        else
        {
          v49 = 0;
        }

        v50 = v48 | v49;
        if (v50 == 63)
        {
          result = sub_2500F307C(a2, *(a4[12] + v36), (a4[9] + v35));
          v50 = result + 63;
        }

        if (v57)
        {
          v51 = v50 + 1;
        }

        else
        {
          v51 = ~v50;
        }

        v6 = v56;
      }

      else
      {
        v51 = 0;
      }

      *(v6 + v36) = v51;
      v37 += 128;
      v36 += 4;
      v35 += 2;
    }

    while (v37 != 446);
  }

  return result;
}

void sub_2500F6878(uint64_t a1, int a2, int a3, int32x2_t a4)
{
  if (a2 == 3 || a2 == 5)
  {
    if (a3 >= 1)
    {
      v5 = a3 - 1;
      do
      {
        if (*(a1 + 4384))
        {
          break;
        }

        if (*(*(a1 + 1352) + v5))
        {
          a4 = sub_2500F6094(a1, *(*(a1 + 1328) + 4 * v5), a4);
        }

        v6 = v5-- + 1;
      }

      while (v6 > 1);
    }
  }

  else if (a3 >= 1)
  {
    v7 = 0;
    v8 = a3;
    do
    {
      if (*(a1 + 4384))
      {
        break;
      }

      if (*(*(a1 + 1352) + v7))
      {
        a4 = sub_2500F6094(a1, *(*(a1 + 1328) + 4 * v7), a4);
      }

      ++v7;
    }

    while (v8 != v7);
  }
}

void sub_2500F6938(_DWORD *a1, int *a2)
{
  if (*a2 >= 63)
  {
    v4 = 63;
  }

  else
  {
    v4 = *a2;
  }

  v5 = a1[1];
  if (v4 > v5)
  {
    v5 = v4;
  }

  a1[1] = v5;
  v6 = &a1[6 * v4];
  v7 = *(v6 + 1);
  v9 = *(v6 + 2);
  v8 = (v6 + 2);
  v10 = *(v8 + 16);
  v11 = (v9 - v7) >> 3;
  a2[1] = v4;
  a2[2] = v11;
  if (v9 >= v10)
  {
    if ((v11 + 1) >> 61)
    {
      sub_2500E9A94();
    }

    v13 = v10 - v7;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v11 + 1))
    {
      v14 = v11 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      v16 = sub_2500EBDCC(v8, v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * v11];
    v18 = &v16[8 * v15];
    *v17 = a2;
    v12 = v17 + 1;
    v19 = *(v8 + 8) - *v8;
    v20 = v17 - v19;
    memcpy(v17 - v19, *v8, v19);
    v21 = *v8;
    *v8 = v20;
    *(v8 + 8) = v12;
    *(v8 + 16) = v18;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = a2;
    v12 = v9 + 1;
  }

  *(v8 + 8) = v12;
  ++*a1;
  v22 = &a1[v4];
  v23 = (v12 - *v8) >> 3;
  if (v22[386] > v23)
  {
    LODWORD(v23) = v22[386];
  }

  v22[386] = v23;
}

void sub_2500F6A68(_DWORD *a1, int *a2)
{
  if (sub_2500FD77C(a1, a2))
  {

    sub_2500F6938(a1, a2);
  }
}

uint64_t sub_2500F6AB8(uint64_t a1, int a2, unsigned int a3, unsigned int *a4, _DWORD *a5, int *a6, int *a7)
{
  v11 = a2;
  v13 = *a6;
  v14 = a1 + 3414;
  v15 = (a1 + 3414 + 16 * a3);
  if (!sub_2500F2F8C(a1, v15))
  {
    v29 = a3;
    v30 = sub_2500F2F8C(a1, v15 + 1);
    v31 = 4;
    if (v30)
    {
      v31 = 6;
    }

    v32 = v14 + 16 * v29;
    if (sub_2500F2F8C(a1, (v32 + v31)))
    {
      v33 = 2;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33 | v30;
    v35 = sub_2500F2F8C(a1, (v32 + 2 * (v33 | v30 | 4u)));
    v17 = v34 + 5;
    if (!v35)
    {
      v17 = v34 + 1;
    }

    if (v17 <= 3)
    {
      if (v17 == 1)
      {
        v16 = 0;
        v100 = 1;
        v99 = 0x100000000;
        v11 = a2;
        goto LABEL_4;
      }

      v11 = a2;
      if (v17 == 2)
      {
        v16 = 0;
        v99 = 0x100000000;
        v100 = 0;
        goto LABEL_4;
      }

      if (v17 == 3)
      {
        HIDWORD(v99) = 0;
        v100 = 0;
        v16 = 1;
        goto LABEL_3;
      }
    }

    else
    {
      if (v17 <= 5)
      {
        v11 = a2;
        if (v17 == 4)
        {
          v100 = 0;
          v99 = 0;
          v16 = 1;
          goto LABEL_4;
        }

        v16 = 0;
        HIDWORD(v99) = 0;
        v100 = 0;
        goto LABEL_3;
      }

      v11 = a2;
      if (v17 == 6)
      {
        v16 = 0;
        v99 = 0;
        goto LABEL_80;
      }

      if (v17 == 7)
      {
        v99 = 0;
        v16 = 1;
LABEL_80:
        v100 = 1;
        goto LABEL_4;
      }
    }

    v16 = 0;
    v100 = 0;
    v99 = 0;
    v17 = 8;
    goto LABEL_4;
  }

  v16 = 0;
  v17 = 0;
  HIDWORD(v99) = 1;
  v100 = 0;
LABEL_3:
  LOBYTE(v99) = 1;
LABEL_4:
  *a4 = v17;
  if (*(a1 + 1153) == 1 && (*(a1 + 1152) & 1) != 0)
  {
    v18 = *(*(a1 + 1472) + 12 * v11);
    if (v18 <= 19)
    {
      v18 = 19;
    }

    v19 = v18 - 19;
    v103 = v19 >> 1;
    v104 = 15;
    v20 = v19 >= 0x1E;
    v21 = &v104;
    if (!v20)
    {
      v21 = &v103;
    }
  }

  else
  {
    v105 = 7;
    v21 = (*(a1 + 1424) + 4 * v11);
    if (*v21 >= 7)
    {
      v21 = &v105;
    }
  }

  v22 = (a1 + 6 * *v21 + 3308);
  v23 = sub_2500F2F8C(a1, v22);
  v24 = 2;
  if (!v23)
  {
    v24 = 1;
  }

  if (sub_2500F2F8C(a1, &v22[v24]))
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 | v23;
  if ((v25 | v23) == 3)
  {
    v27 = sub_2500F307C(a1, 0, (a1 + 3404));
    if (v27 < -3)
    {
      goto LABEL_70;
    }

    v26 = v27 + 3;
    v28 = v27 + 4;
  }

  else
  {
    v28 = v26 + 1;
  }

  v36 = *a6;
  if (v26 >= *(a1 + 1120) - *a6)
  {
    goto LABEL_70;
  }

  v37 = *(a1 + 1132);
  if (v37 > 1)
  {
    if (v37 == 2)
    {
      v96 = a7;
      v98 = v13;
      v28 = 0;
      v48 = v26 + 1;
      do
      {
        if (sub_2500F2F8C(a1, (a1 + 3406)))
        {
          v49 = 4;
        }

        else
        {
          v49 = 3;
        }

        v50 = (*(a1 + 1208) + 4 * *a6);
        v50[1] = *v50 + v49;
        ++*a6;
        v28 = v28 + v49 - 2;
        --v48;
      }

      while (v48);
    }

    else
    {
      if (v37 != 3)
      {
        goto LABEL_70;
      }

      v96 = a7;
      v98 = v13;
      v28 = 0;
      v40 = v26 + 1;
      do
      {
        v41 = sub_2500F2F8C(a1, (a1 + 3406));
        if (v41)
        {
          v42 = 4;
        }

        else
        {
          v42 = 2;
        }

        if (sub_2500F2F8C(a1, (a1 + 3406 + v42)))
        {
          v43 = 2;
        }

        else
        {
          v43 = 0;
        }

        v44 = v43 | v41;
        if (v44 == 3)
        {
          v44 = sub_2500F307C(a1, 0, (a1 + 3412)) + 3;
        }

        v45 = (*(a1 + 1208) + 4 * *a6);
        v45[1] = v44 + *v45 + 3;
        ++*a6;
        v28 += v44 + 1;
        --v40;
      }

      while (v40);
    }

LABEL_68:
    if (v28 <= 0 || v28 > *(a1 + 1124))
    {
      goto LABEL_70;
    }

    v52 = v28 + 1;
    v95 = *(a1 + 1116);
    v54 = a1 + 1328;
    v55 = (a1 + 1352);
    sub_2500F247C((a1 + 1328), v52);
    v56 = *(a1 + 1352);
    v57 = *(a1 + 1360) - v56;
    if (v52 <= v57)
    {
      v58 = v96;
      if (v52 < v57)
      {
        *(a1 + 1360) = &v56[v52];
      }
    }

    else
    {
      sub_2500FD2AC(a1 + 1352, v52 - v57);
      v56 = *v55;
      v58 = v96;
    }

    *v56 = v16;
    v59 = v28;
    *(*(a1 + 1352) + v28) = v100;
    v60 = *(a1 + 1328);
    v61 = (*(a1 + 1448) + 16 * a2);
    v97 = *v61;
    if (HIDWORD(v99))
    {
      v62 = v61[1];
    }

    else
    {
      if (v16)
      {
LABEL_88:
        v63 = v60;
        if (v28 != 1)
        {
          if (sub_2500F2F8C(a1, (a1 + 3534)))
          {
              ;
            }
          }

          else if (v52 == 3)
          {
            *(*(a1 + 1352) + 1) = 0;
            if (*(a1 + 1152) == 1)
            {
              v65 = sub_2500FCF9C(a1, v95);
            }

            else
            {
              v65 = v95 - sub_2500F307C(a1, 0, (a1 + 3532));
            }

            *(*v54 + 4) = v65;
          }

          else
          {
            for (j = 1; j != v28; ++j)
            {
              *(*(a1 + 1352) + j) = sub_2500F2F8C(a1, (a1 + 3494));
              if (!*(*(a1 + 1352) + j))
              {
                if (*(a1 + 1152) == 1)
                {
                  v67 = sub_2500FCF9C(a1, v95);
                }

                else
                {
                  v67 = v95 - sub_2500F307C(a1, 0, (a1 + 3532));
                }

                *(*v54 + 4 * j) = v67;
              }
            }
          }
        }

        if (*(a1 + 4384))
        {
          return 0xFFFFFFFFLL;
        }

        if ((v99 & 1) == 0)
        {
          if (v100)
          {
LABEL_116:
            v51 = (a1 + 4384);
            if (*a4 == 3 || *a4 == 5)
            {
              v68 = *v55;
              v69 = v52;
              v70 = v28;
              v71 = a2;
              do
              {
                if (v68[v70])
                {
                  v72 = (*a5)++;
                  *(*v54 + 4 * v70) = v72;
                }

                --v70;
                --v69;
              }

              while (v69 > 0);
            }

            else
            {
              v73 = 0;
              v74 = *v55;
              v71 = a2;
              do
              {
                if (v74[v73])
                {
                  v75 = (*a5)++;
                  *(*v54 + 4 * v73) = v75;
                }

                ++v73;
              }

              while (v52 != v73);
            }

            v76 = *(a1 + 1328);
            v77 = v28 + 1;
            while (1)
            {
              v79 = *v76++;
              v78 = v79;
              if (v79 < 0 || v78 >= ((*(a1 + 1456) - *(a1 + 1448)) >> 4))
              {
                goto LABEL_71;
              }

              if (!--v77)
              {
                sub_2500FD160(a1, v71, *a4, v52);
                if (*(a1 + 1152) == 1)
                {
                  v80 = *(a1 + 1153) ^ 1;
                }

                else
                {
                  v80 = 1;
                }

                v81 = 0;
                for (k = (*(a1 + 1328) + 4); ; ++k)
                {
                  v84 = *(k - 1);
                  v83 = *k;
                  if (!v81)
                  {
                    v85 = *v58;
                    if (v85 + 2 > *(a1 + 1124))
                    {
                      goto LABEL_71;
                    }

                    v81 = *(*(a1 + 1208) + 4 * (v98 + 1)) - *(*(a1 + 1208) + 4 * v98) - 2;
                    *v58 = v85 + 1;
                    v86 = *(a1 + 1184);
                    *(v86 + 4 * v85) = v71;
                    v87 = *v58;
                    *v58 = v87 + 1;
                    *(v86 + 4 * v87) = v84;
                    ++v98;
                  }

                  v88 = *v58;
                  if (v88 >= *(a1 + 1124))
                  {
                    break;
                  }

                  v89 = v84;
                  v90 = v83;
                  *v58 = v88 + 1;
                  *(*(a1 + 1184) + 4 * v88) = v83;
                  v91 = *(a1 + 1448);
                  v92 = v91 + 16 * v83;
                  *(v92 + 4) = v84;
                  *(v92 + 8) = v71;
                  v93 = (v91 + 16 * v84);
                  *v93 = v83;
                  v93[3] = v71;
                  if (v80)
                  {
                    v94 = *(a1 + 1424);
                    ++*(v94 + 4 * v89);
                    ++*(v94 + 4 * v90);
                  }

                  --v81;
                  if (!--v59)
                  {
                    return v52;
                  }
                }

                goto LABEL_71;
              }
            }
          }

          if (*(a1 + 1152) == 1)
          {
            v97 = sub_2500FCF9C(a1, a2 + 1);
          }

          else
          {
            v97 = sub_2500F3144(a1, 0, (a1 + 3530), (a1 + 3532)) + a2 + 1;
          }
        }

        v63[v28] = v97;
        goto LABEL_116;
      }

      if (*(a1 + 1152) == 1)
      {
        v62 = sub_2500FCF9C(a1, a2 - 1);
      }

      else
      {
        v62 = sub_2500F3144(a1, 0, (a1 + 3530), (a1 + 3532)) + a2 - 1;
      }
    }

    *v60 = v62;
    goto LABEL_88;
  }

  if (!v37)
  {
    v96 = a7;
    v98 = v13;
    v46 = *(a1 + 1208);
    v47 = v26 + 1;
    do
    {
      *(v46 + 4 + 4 * v36) = *(v46 + 4 * v36) + 3;
      v36 = *a6 + 1;
      *a6 = v36;
      --v47;
    }

    while (v47);
    goto LABEL_68;
  }

  if (v37 == 1)
  {
    v96 = a7;
    v98 = v13;
    v38 = *(a1 + 1208);
    v39 = v26 + 1;
    do
    {
      *(v38 + 4 + 4 * v36) = *(v38 + 4 * v36) + 4;
      v36 = *a6 + 1;
      *a6 = v36;
      --v39;
    }

    while (v39);
    v28 *= 2;
    goto LABEL_68;
  }

LABEL_70:
  v51 = (a1 + 4384);
LABEL_71:
  *v51 = 3;
  return 0xFFFFFFFFLL;
}

uint64_t sub_2500F7358(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  result = 5;
  if (a2 && a5)
  {
    if (*(a1 + 4384))
    {
      return 6;
    }

    v16 = sub_2500F27D0(a2, a3, a1 + 4320);
    result = 3;
    if (v16)
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        v17 = *(a1 + 4328);
        if (a3 - v17 >= 0 && v16 + v15 >= a2)
        {
          v18 = a2 + v17;
          if (v18 >= v16)
          {
            v19 = v18 - v16;
            if ((v18 - v16) >= 0)
            {
              v20 = *(a1 + 1124);
              if (v20 >= 1)
              {
                v21 = *(a1 + 4332);
                if (v21 >= 1)
                {
                  v22 = *(a1 + 4336);
                  if (v22 >= 1 && *(a1 + 4356) == 3 && *(a1 + 4340) == v20 && (a7 || !*(a1 + 4364)) && (a6 || !*(a1 + 4360)))
                  {
                    if ((*(a1 + 4376) - 5) >= 2)
                    {
                      v23 = *(a1 + 4348);
                    }

                    else
                    {
                      if (v22 != 2)
                      {
                        return result;
                      }

                      v23 = *(a1 + 4348);
                      if (!v23)
                      {
                        return result;
                      }
                    }

                    if (v23 > 0x1B)
                    {
                      return result;
                    }

                    v24 = (a1 + 4056);
                    v47 = (a1 + 4080);
                    sub_2500F247C((a1 + 4080), v22);
                    for (i = 0; i != v22; ++i)
                    {
                      v26 = v19 < 4;
                      v19 -= 4;
                      if (v26)
                      {
                        v19 = 0;
                        v16 = 0;
                      }

                      else
                      {
                        v27 = *v16++;
                        (*v47)[i] = v27;
                      }
                    }

                    sub_2500F247C((a1 + 4056), v22);
                    v28 = 0;
                    result = 3;
                    do
                    {
                      while (!v19)
                      {
                        v16 = 0;
                        if (++v28 == v22)
                        {
                          return result;
                        }
                      }

                      v29 = *v24;
                      --v19;
                      v30 = *v16;
                      v16 = (v16 + 1);
                      (*v24)[v28++] = v30;
                    }

                    while (v28 != v22);
                    if (!v16)
                    {
                      return 3;
                    }

                    v31 = 0;
                    v32 = *v47;
                    v33 = 1;
                    v34 = v22;
                    do
                    {
                      v35 = *v32++;
                      v31 |= v35 != 0;
                      v36 = *v29++;
                      v33 &= v36 < 29;
                      --v34;
                    }

                    while (v34);
                    if ((v33 & 1) == 0)
                    {
                      return 3;
                    }

                    v38 = sub_2500F0BA4(a1, v16, v19);
                    result = 3;
                    if (!v38 || v37 < 0)
                    {
                      return result;
                    }

                    if (*(a1 + 4364))
                    {
                      sub_2500F765C(a1);
                    }

                    if (*(a1 + 4112) - *(a1 + 4104) != *(a1 + 1192) - *(a1 + 1184))
                    {
                      return 3;
                    }

                    result = sub_2500F7B3C(a1, a5, a6);
                    if (!result)
                    {
                      if (a7)
                      {
                        v39 = *(a1 + 4104);
                        v40 = *(a1 + 4112);
                        if (v40 != v39)
                        {
                          memmove(a7, v39, v40 - v39);
                        }
                      }

                      if (v31)
                      {
                        LODWORD(v41) = 0;
                        v42 = 0;
                        v43 = *v47;
                        do
                        {
                          v41 = v41;
                          v44 = v43;
                          v45 = v22;
                          do
                          {
                            v46 = *v44++;
                            *(a5 + 4 * v41++) += v46;
                            --v45;
                          }

                          while (v45);
                          ++v42;
                        }

                        while (v42 != v21);
                      }

                      result = 0;
                      *a4 = *(a1 + 4328);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2500F765C(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1116);
  sub_2500F80EC((a1 + 4248), v2);
  memset_pattern16(__b, &unk_250110610, 6uLL);
  v71 = 0x8000;
  v70 = 0x8000;
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 4;
    do
    {
      v5 = (*(a1 + 1256) + v3);
      v6 = *v5;
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 0;
      }

      else
      {
        v7 = *(*(a1 + 4248) + 4 * v6 + 4);
      }

      v8 = v5[1];
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(*(a1 + 4248) + 4 * v8 + 4);
      }

      v10 = (*(a1 + 1280) + v3);
      v11 = *v10;
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(*(a1 + 4248) + 4 * v11 + 4);
      }

      v13 = v10[1];
      if ((v13 & 0x80000000) != 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(*(a1 + 4248) + 4 * v13 + 4);
      }

      v15 = v12 == v14;
      if (v7 == v9)
      {
        v16 = v15 + 1;
      }

      else
      {
        v16 = v15;
      }

      if (sub_2500F2F8C(a1, &__b[v16]))
      {
        v17 = 1;
      }

      else if (sub_2500F2F8C(a1, &v71))
      {
        v17 = 0;
      }

      else
      {
        v17 = sub_2500F307C(a1, 0, &v70) + 2;
      }

      *(*(a1 + 4248) + v4) += v17;
      v3 += 12;
      v4 += 4;
    }

    while (12 * v2 != v3);
  }

  sub_2500F8158((a1 + 4248));
  v18 = *(a1 + 4332);
  sub_2500F247C((a1 + 4128), 0);
  v73[0] = -1;
  sub_2500F6064((a1 + 4128), v18, v73);
  v69 = 0x8000;
  v68 = 0x8000;
  if (v2 > 0)
  {
    v19 = 0;
    v20 = 0;
    v21 = *(a1 + 4248);
    do
    {
      v22 = *(v21 + 4 * v19 + 4) - *(v21 + 4 * v19);
      if (v22 >= 1)
      {
        do
        {
          if (sub_2500F2F8C(a1, &v69))
          {
            v21 = *(a1 + 4248);
            v23 = *(v21 + 4 * v19);
            v24 = *(a1 + 4272);
            v25 = *(v24 + 4 * v19);
            *(v24 + 4 * v19) = v25 + 1;
            *(*(a1 + 4296) + 4 * (v25 + v23)) = v20;
            v26 = v20++;
            v27 = (a1 + 4128);
            v28 = v19;
          }

          else
          {
            v29 = sub_2500F307C(a1, 0, &v68);
            v21 = *(a1 + 4248);
            v30 = *(v21 + 4 * v19);
            v31 = *(a1 + 4272);
            v32 = *(v31 + 4 * v19);
            v28 = v20 + ~v29;
            *(v31 + 4 * v19) = v32 + 1;
            v26 = v32 + v30;
            v27 = (a1 + 4296);
          }

          *(*v27 + 4 * v26) = v28;
          --v22;
        }

        while (v22);
      }

      ++v19;
    }

    while (v19 != v2);
  }

  v33 = *(a1 + 4296);
  sub_2500F80EC((a1 + 4176), v18);
  v34 = *(a1 + 1120);
  v73[0] = 0;
  sub_2500FC9FC(__p, v2, v73);
  memset_pattern16(v73, &unk_250110610, 0x28uLL);
  sub_2500F247C((a1 + 4104), (*(a1 + 1192) - *(a1 + 1184)) >> 2);
  if (v34 >= 1)
  {
    v35 = 0;
    v36 = 0;
    v65 = v34;
    do
    {
      v37 = *(a1 + 1208);
      v38 = *(v37 + 4 * v35);
      v66 = v35 + 1;
      v39 = *(v37 + 4 * (v35 + 1));
      if (v38 < v39)
      {
        v40 = __p[0];
        do
        {
          v41 = *(*(a1 + 1184) + 4 * v38);
          v42 = *(*(a1 + 4248) + 4 * v41);
          v43 = *(*(a1 + 4272) + 4 * v41);
          if (v43 >= 2)
          {
            if (v36 >= 1)
            {
              v44 = 1;
            }

            else
            {
              v44 = v36;
            }

            v45 = v40[v41];
            v40[v41] = v45 + 1;
            if (v45 >= 4)
            {
              v46 = 4;
            }

            else
            {
              v46 = v45;
            }

            v47 = &v73[2 * v46 + v44];
            if (sub_2500F2F8C(a1, v47))
            {
              v48 = v43 - 1;
              v36 = 1;
              if (v48 >= 2)
              {
                do
                {
                  v49 = sub_2500F2F8C(a1, v47 + 1);
                  v36 += v49;
                  if (v48 < 3)
                  {
                    break;
                  }

                  --v48;
                }

                while ((v49 & 1) != 0);
              }
            }

            else
            {
              v36 = 0;
            }

            v42 += v36;
          }

          v50 = *(v33 + 4 * v42);
          *(*(a1 + 4104) + 4 * v38) = v50;
          ++*(*(a1 + 4176) + 4 * v50 + 4);
          ++v38;
        }

        while (v39 != v38);
      }

      v34 = v65;
      v35 = v66;
    }

    while (v66 != v65);
  }

  sub_2500F8158((a1 + 4176));
  if (v34 >= 1)
  {
    v51 = 0;
    v52 = *(a1 + 1208);
    do
    {
      v53 = *(v52 + 4 * v51);
      v54 = v51 + 1;
      v55 = *(v52 + 4 * (v51 + 1));
      if (v53 < v55)
      {
        v56 = *(a1 + 4176);
        v57 = *(a1 + 4200);
        v58 = *(a1 + 4224);
        v59 = v55 - v53;
        v60 = (*(a1 + 4104) + 4 * v53);
        do
        {
          v61 = *v60++;
          v62 = *(v56 + 4 * v61);
          v63 = *(v57 + 4 * v61);
          *(v57 + 4 * v61) = v63 + 1;
          *(v58 + 4 * (v63 + v62)) = v51;
          --v59;
        }

        while (v59);
      }

      ++v51;
    }

    while (v54 != v34);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v64 = *MEMORY[0x277D85DE8];
}

void sub_2500F7B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2500F7B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 4360) == 1)
  {
    memset_pattern16(__b, &unk_250110610, 4uLL);
    v6 = *(a1 + 4332);
    if (v6 >= 1)
    {
      v7 = 0;
      while (1)
      {
        v8 = *(*(a1 + 4128) + 4 * v7);
        v20 = -1;
        v19 = -1;
        v18 = -1;
        v17 = -1;
        if ((v8 & 0x80000000) != 0)
        {
          break;
        }

        v9 = (*(a1 + 1280) + 12 * v8);
        sub_2500F7D4C(a1, v8, v7, (*(a1 + 1256) + 12 * v8), &v19);
        sub_2500F7D4C(a1, v8, v7, v9, &v17);
        v10 = v20;
        if ((v20 & 0x80000000) == 0 || v18 < 0)
        {
          v12 = v20;
          v10 = v18;
        }

        else
        {
          v11 = v19;
          v19 = v17;
          v12 = v18;
          v20 = v18;
          v17 = v11;
        }

        if (v10 != -1)
        {
          v13 = *(a3 + SHIDWORD(v19)) + *(a3 + v19) + *(a3 + v12) + *(a3 + v17) + *(a3 + SHIDWORD(v17)) + *(a3 + v10) > 2;
          goto LABEL_13;
        }

        if (v12 != -1)
        {
          v13 = *(a3 + SHIDWORD(v19)) + *(a3 + v19) + *(a3 + v12) > 1;
LABEL_13:
          v14 = v13;
          goto LABEL_22;
        }

        if (HIDWORD(v19) == -1)
        {
          if (v19 == -1)
          {
            break;
          }

          v14 = *(a3 + v19);
        }

        else
        {
          if (*(a3 + v19) != 1)
          {
            break;
          }

          v14 = *(a3 + SHIDWORD(v19));
        }

LABEL_22:
        *(a3 + v7++) = sub_2500F2F8C(a1, &__b[v14]);
        if (v6 == v7)
        {
          goto LABEL_23;
        }
      }

      v14 = 0;
      goto LABEL_22;
    }
  }

LABEL_23:
  v15 = *(a1 + 4376);
  if (v15 > 6)
  {
    return 3;
  }

  (*(&off_2862986C0 + 2 * v15))(a1, a2, a3);
  return 0;
}

void *sub_2500F7D4C(void *result, unsigned int a2, int a3, unsigned int *a4, _DWORD *a5)
{
  v5 = *a4;
  *a5 = -1;
  a5[2] = -1;
  if ((v5 & 0x80000000) == 0)
  {
    v7 = result;
    v31 = result[537];
    v8 = result[534];
    v9 = *(v8 + 4 * a2);
    v10 = a4[2];
    v11 = a4[1];
    if ((v10 & 0x80000000) != 0)
    {
      if ((v11 & 0x80000000) == 0)
      {
        v17 = *(v8 + 4 * v5);
        v18 = *(v8 + 4 * v11);
        if (v9 == 1 && v17 == 1 && v18 == 1)
        {
          v30 = result[531];
          *a5 = *(v31 + 4 * *(v30 + 4 * v5));
          a5[1] = *(v31 + 4 * *(v30 + 4 * v11));
        }

        else
        {

          return sub_2500F7F5C(result, a3, a2, v5, v11, a5, a5 + 1);
        }
      }
    }

    else
    {
      v12 = *(v8 + 4 * v5);
      v13 = *(v8 + 4 * v11);
      if (v9 == 1 && v12 == 1 && v13 == 1)
      {
        v21 = result[531];
        v16 = *(v31 + 4 * *(v21 + 4 * v5));
        *a5 = v16;
        a5[1] = *(v31 + 4 * *(v21 + 4 * v11));
        if (v16 < 0)
        {
          return result;
        }
      }

      else
      {
        result = sub_2500F7F5C(result, a3, a2, v5, v11, a5, a5 + 1);
        v16 = *a5;
        if ((*a5 & 0x80000000) != 0)
        {
          return result;
        }
      }

      v22 = a5[1];
      if ((v22 & 0x80000000) == 0)
      {
        v23 = *(v7[534] + 4 * v10);
        if (v23 == 1 && v12 == 1 && v13 == 1)
        {
          a5[2] = *(v31 + 4 * *(v7[531] + 4 * v10));
        }

        else if (v23 >= 1)
        {
          v26 = *(v7[531] + 4 * v10);
          v27 = v26 + v23;
          do
          {
            v28 = *(v31 + 4 * v26);
            v32 = 0;
            result = sub_2500F7F5C(v7, v28, v10, v5, v11, &v32 + 1, &v32);
            if (HIDWORD(v32) == v16 && v32 == v22)
            {
              a5[2] = v28;
            }

            ++v26;
          }

          while (v26 < v27);
        }
      }
    }
  }

  return result;
}

void *sub_2500F7F5C(void *result, int a2, int a3, int a4, int a5, _DWORD *a6, int *a7)
{
  v7 = *(result[525] + 4 * a2);
  if (v7 >= 1)
  {
    v8 = *(result[522] + 4 * a2);
    v9 = v8 + v7;
    v10 = result[151];
    v11 = result[148];
    while (2)
    {
      v12 = *(result[528] + 4 * v8);
      v13 = *(v10 + 4 * v12);
      v14 = *(v10 + 4 + 4 * v12);
      v15 = *(v11 + 4 * v13);
      v16 = v13 + 1;
      v17 = 4 * v16 - 4;
      v18 = v16 + 1;
      while (v18 < v14)
      {
        v19 = *(v11 + v17 + 4);
        v20 = *(v11 + v17 + 8);
        if (v15 == a3 && v19 == a4 && v20 == a5)
        {
          v28 = result[513] + v17;
          *a6 = *(v28 + 4);
LABEL_41:
          v27 = *(v28 + 8);
          goto LABEL_45;
        }

        if (v15 == a3 && v20 == a4 && v19 == a5)
        {
          v29 = result[513] + v17;
          *a7 = *(v29 + 4);
LABEL_43:
          v34 = *(v29 + 8);
          goto LABEL_46;
        }

        if (v19 == a3 && v15 == a4 && v20 == a5)
        {
          v30 = result[513];
          *a6 = *(v30 + 4 * v13);
          v28 = v30 + v17;
          goto LABEL_41;
        }

        if (v19 == a3 && v20 == a4 && v15 == a5)
        {
          v31 = result[513];
          *a7 = *(v31 + 4 * v13);
          v29 = v31 + v17;
          goto LABEL_43;
        }

        if (v20 == a3 && v15 == a4 && v19 == a5)
        {
          v32 = result[513];
          *a6 = *(v32 + 4 * v13);
          v27 = *(v32 + v17 + 4);
          goto LABEL_45;
        }

        v17 += 4;
        ++v18;
        if (v20 == a3 && v19 == a4 && v15 == a5)
        {
          v33 = result[513];
          *a7 = *(v33 + 4 * v13);
          v34 = *(v33 + v17);
LABEL_46:
          *a6 = v34;
          return result;
        }
      }

      if (++v8 < v9)
      {
        continue;
      }

      break;
    }
  }

  v27 = -1;
  *a6 = -1;
LABEL_45:
  *a7 = v27;
  return result;
}

void sub_2500F80EC(void *a1, int a2)
{
  sub_2500F247C(a1, 0);
  v5 = 0;
  sub_2500F6064(a1, a2 + 1, &v5);
  sub_2500F247C(a1 + 3, 0);
  v4 = 0;
  sub_2500F6064(a1 + 3, a2, &v4);
}

void sub_2500F8158(int **a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = v1 - *a1;
  if ((v3 >> 2) >= 2)
  {
    v4 = (v3 >> 2) & 0x7FFFFFFF;
    v7 = *v2;
    v5 = v2 + 1;
    v6 = v7;
    v8 = v4 - 1;
    do
    {
      v6 += *v5;
      *v5++ = v6;
      --v8;
    }

    while (v8);
  }

  sub_2500F247C(a1 + 6, *(v1 - 1));
}

void sub_2500F8198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v157 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4336);
  v5 = ~(-1 << (*(a1 + 4348) - 1));
  v144 = *(a1 + 4360);
  v140 = *(a1 + 4332);
  sub_2500F8F40((a1 + 1160), (a1 + 1208), (a1 + 1184), (a1 + 4104), v140, (a1 + 4152), v5);
  v6 = 0;
  v156 = 0;
  memset(v155, 0, sizeof(v155));
  do
  {
    sub_2500F3ECC((v155 + v6), v4);
    v6 += 120;
  }

  while (v6 != 360);
  v141 = v5;
  v143 = v4;
  memset_pattern16(__b, &unk_250110610, 6uLL);
  memset_pattern16(v153, &unk_250110610, 6uLL);
  v152 = 0x8000;
  v151 = 0x8000;
  if (v140 > 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = vdup_n_s32(v5);
    v10 = vdup_n_s32(2 * v5);
    v11 = a2;
    v138 = 4 * v4;
    while (v144 && *(a3 + v8) != 1)
    {
LABEL_154:
      ++v8;
      v11 = (v11 + v138);
      v7 += 12;
      if (v140 == v8)
      {
        goto LABEL_157;
      }
    }

    v12 = *(*(a1 + 4128) + 4 * v8);
    v13 = (*(a1 + 4152) + v7);
    v14 = v13[1].i32[0];
    v139 = *v13;
    if ((v12 & 0x80000000) == 0)
    {
      v150[0] = -1;
      v149 = -1;
      v148[0] = -1;
      v147 = -1;
      sub_2500F7D4C(a1, v12, v8, (*(a1 + 1256) + 12 * v12), &v149);
      sub_2500F7D4C(a1, v12, v8, (*(a1 + 1280) + 12 * v12), &v147);
      v15 = v150[0];
      v16 = v148[0];
      if ((v150[0] & 0x80000000) == 0 || (v148[0] & 0x80000000) != 0)
      {
        v18 = v147;
        v17 = HIDWORD(v147);
        v19 = v150[0];
      }

      else
      {
        v18 = v149;
        v17 = HIDWORD(v149);
        v149 = v147;
        v19 = v148[0];
        v150[0] = v148[0];
        v16 = v15;
      }

      v20 = HIDWORD(v149);
      if (v16 != -1 && (!v144 || *(a3 + v149) == 1 && *(a3 + SHIDWORD(v149)) == 1 && *(a3 + v19) == 1 && *(a3 + v18) == 1 && *(a3 + v17) == 1 && *(a3 + v16) == 1))
      {
        v21 = *(a2 + 4 * v149 * v143);
        v22 = vsub_s32(v21, v9);
        v23 = vabd_s32(v21, v9);
        v135 = v141 - v23.i32[0] - v23.i32[1];
        v132 = v18;
        v133 = v17;
        if (v135 < 0)
        {
          v134 = vbsl_s8(vcltz_s32(v22), vrev64_s32(vsub_s32(v23, v9)), __PAIR64__(v141 - v23.i32[0], v141 - v23.i32[1]));
        }

        else
        {
          v134 = v22;
        }

        v36 = sub_2500F2F8C(a1, v153);
        v37 = 2;
        if (!v36)
        {
          v37 = 1;
        }

        if (sub_2500F2F8C(a1, &v153[v37]))
        {
          v38 = 2;
        }

        else
        {
          v38 = 0;
        }

        v39 = v38 | v36;
        if (v39 > 1)
        {
          if (v39 == 2)
          {
            v41 = *(a2 + 4 * v132 * v143);
            v42 = vsub_s32(v41, v9);
            v43 = vabd_s32(v41, v9);
            v44 = v141 - v43.i32[0] - v43.i32[1];
            if (v44 < 0)
            {
              v42 = vbsl_s8(vcltz_s32(v42), vrev64_s32(vsub_s32(v43, v9)), __PAIR64__(v141 - v43.i32[0], v141 - v43.i32[1]));
            }

            v45 = *(a2 + 4 * v133 * v143);
            v46 = vsub_s32(v45, v9);
            v47 = vabd_s32(v45, v9);
            v48 = v141 - v47.i32[0] - v47.i32[1];
            if (v48 < 0)
            {
              v46 = vbsl_s8(vcltz_s32(v46), vrev64_s32(vsub_s32(v47, v9)), __PAIR64__(v141 - v47.i32[0], v141 - v47.i32[1]));
            }

            v49 = *(a2 + 4 * v16 * v143);
            v50 = vsub_s32(v49, v9);
            v51 = vabd_s32(v49, v9);
            if (v141 - v51.i32[0] - v51.i32[1] < 0)
            {
              v50 = vbsl_s8(vcltz_s32(v50), vrev64_s32(vsub_s32(v51, v9)), __PAIR64__(v141 - v51.i32[0], v141 - v51.i32[1]));
            }

            v40 = vsub_s32(vadd_s32(v46, v42), v50);
            v14 = v48 + v44 - (v141 - v51.i32[0] - v51.i32[1]);
          }

          else
          {
            v76 = *(a2 + 4 * v20 * v143);
            v77 = vsub_s32(v76, v9);
            v78 = vabd_s32(v76, v9);
            v79 = v141 - v78.i32[0] - v78.i32[1];
            if (v79 < 0)
            {
              v77 = vbsl_s8(vcltz_s32(v77), vrev64_s32(vsub_s32(v78, v9)), __PAIR64__(v141 - v78.i32[0], v141 - v78.i32[1]));
            }

            v80 = *(a2 + 4 * v19 * v143);
            v81 = vsub_s32(v80, v9);
            v82 = vabd_s32(v80, v9);
            v83 = v141 - v82.i32[0] - v82.i32[1];
            if (v83 < 0)
            {
              v81 = vbsl_s8(vcltz_s32(v81), vrev64_s32(vsub_s32(v82, v9)), __PAIR64__(v141 - v82.i32[0], v141 - v82.i32[1]));
            }

            v84 = *(a2 + 4 * v132 * v143);
            v85 = vsub_s32(v84, v9);
            v86 = vabd_s32(v84, v9);
            v87 = v141 - v86.i32[0] - v86.i32[1];
            if (v87 < 0)
            {
              v85 = vbsl_s8(vcltz_s32(v85), vrev64_s32(vsub_s32(v86, v9)), __PAIR64__(v141 - v86.i32[0], v141 - v86.i32[1]));
            }

            v88 = *(a2 + 4 * v133 * v143);
            v89 = vsub_s32(v88, v9);
            v90 = vabd_s32(v88, v9);
            v91 = v141 - v90.i32[0] - v90.i32[1];
            if (v91 < 0)
            {
              v89 = vbsl_s8(vcltz_s32(v89), vrev64_s32(vsub_s32(v90, v9)), __PAIR64__(v141 - v90.i32[0], v141 - v90.i32[1]));
            }

            v92 = *(a2 + 4 * v16 * v143);
            v93 = vsub_s32(v92, v9);
            v94 = vabd_s32(v92, v9);
            if (v141 - v94.i32[0] - v94.i32[1] < 0)
            {
              v93 = vbsl_s8(vcltz_s32(v93), vrev64_s32(vsub_s32(v94, v9)), __PAIR64__(v141 - v94.i32[0], v141 - v94.i32[1]));
            }

            v95 = vadd_s32(v85, v134);
            v96 = vadd_s32(v89, v77);
            v97 = vmull_s32(vsub_s32(vsra_n_s32(vadd_s32(v96, v96), vsra_n_u32(v95, v95, 0x1FuLL), 1uLL), vadd_s32(v81, v93)), vdup_n_s32(0x55555556u));
            v40 = vadd_s32(vshrn_n_s64(v97, 0x20uLL), vmovn_s64(vshrq_n_u64(v97, 0x3FuLL)));
            v98 = 1431655766 * ((v87 + v135) / 2 + 2 * (v91 + v79) - (v83 + v141 - v94.i32[0] - v94.i32[1]));
            v14 = HIDWORD(v98) + (v98 >> 63);
          }
        }

        else if (v39)
        {
          v69 = *(a2 + 4 * v20 * v143);
          v70 = vsub_s32(v69, v9);
          v71 = vabd_s32(v69, v9);
          v72 = v141 - v71.i32[0] - v71.i32[1];
          if (v72 < 0)
          {
            v70 = vbsl_s8(vcltz_s32(v70), vrev64_s32(vsub_s32(v71, v9)), __PAIR64__(v141 - v71.i32[0], v141 - v71.i32[1]));
          }

          v73 = *(a2 + 4 * v19 * v143);
          v74 = vsub_s32(v73, v9);
          v75 = vabd_s32(v73, v9);
          if (v141 - v75.i32[0] - v75.i32[1] < 0)
          {
            v74 = vbsl_s8(vcltz_s32(v74), vrev64_s32(vsub_s32(v75, v9)), __PAIR64__(v141 - v75.i32[0], v141 - v75.i32[1]));
          }

          v40 = vsub_s32(vadd_s32(v70, v134), v74);
          v14 = v72 + v135 - (v141 - v75.i32[0] - v75.i32[1]);
        }

        else
        {
          v40 = v139;
          if (v14 * v135 + v134.i32[0] * v139.i32[0] + v134.i32[1] * v139.i32[1] < 0)
          {
            v40 = vneg_s32(v139);
            v14 = -v14;
          }
        }

        v35 = 2;
LABEL_111:
        v33 = v40.i32[0];
        v32 = v40.i32[1];
        goto LABEL_112;
      }

      if (v19 != -1 && (!v144 || *(a3 + v149) == 1 && *(a3 + SHIDWORD(v149)) == 1 && *(a3 + v19) == 1))
      {
        v24 = *(a2 + 4 * v149 * v143);
        v25 = vsub_s32(v24, v9);
        v26 = vabd_s32(v24, v9);
        v27 = v141 - v26.i32[0] - v26.i32[1];
        if (v27 < 0)
        {
          v136 = vbsl_s8(vcltz_s32(v25), vrev64_s32(vsub_s32(v26, v9)), __PAIR64__(v141 - v26.i32[0], v141 - v26.i32[1]));
        }

        else
        {
          v136 = v25;
        }

        v52 = *(a2 + 4 * HIDWORD(v149) * v143);
        v53 = vsub_s32(v52, v9);
        v54 = vabd_s32(v52, v9);
        v55 = v141 - v54.i32[0] - v54.i32[1];
        if (v55 < 0)
        {
          v53 = vbsl_s8(vcltz_s32(v53), vrev64_s32(vsub_s32(v54, v9)), __PAIR64__(v141 - v54.i32[0], v141 - v54.i32[1]));
        }

        v56 = *(a2 + 4 * v19 * v143);
        v57 = vsub_s32(v56, v9);
        v58 = vabd_s32(v56, v9);
        v59 = v141 - v58.i32[0] - v58.i32[1];
        if (v59 < 0)
        {
          v57 = vbsl_s8(vcltz_s32(v57), vrev64_s32(vsub_s32(v58, v9)), __PAIR64__(v141 - v58.i32[0], v141 - v58.i32[1]));
        }

        v60 = sub_2500F2F8C(a1, __b);
        v61 = 2;
        if (!v60)
        {
          v61 = 1;
        }

        if (sub_2500F2F8C(a1, &__b[v61]))
        {
          v62 = 2;
        }

        else
        {
          v62 = 0;
        }

        v63 = v62 | v60;
        if (v63 > 1)
        {
          if (v63 == 2)
          {
            v64 = vsub_s32(v53, vmvn_s8(v136));
            v40 = vshr_n_s32(vsra_n_u32(v64, v64, 0x1FuLL), 1uLL);
            v14 = (v27 + v55 + 1) / 2;
          }

          else
          {
            v99 = vmull_s32(vadd_s32(vsub_s32(v53, vmvn_s8(v136)), v57), vdup_n_s32(0x55555556u));
            v40 = vadd_s32(vshrn_n_s64(v99, 0x20uLL), vmovn_s64(vshrq_n_u64(v99, 0x3FuLL)));
            v14 = (v27 + v55 + v59 + 1) / 3;
          }
        }

        else if (v63)
        {
          v40 = vsub_s32(vadd_s32(v53, v136), v57);
          v14 = v55 + v27 - v59;
        }

        else
        {
          v40 = v139;
          if (v14 * v27 + v136.i32[0] * v139.i32[0] + v136.i32[1] * v139.i32[1] < 0)
          {
            v40 = vneg_s32(v139);
            v14 = -v14;
          }
        }

        v35 = 1;
        goto LABEL_111;
      }

      if (HIDWORD(v149) != -1 && (!v144 || *(a3 + v149) == 1 && *(a3 + SHIDWORD(v149)) == 1))
      {
        v28 = *(a2 + 4 * v149 * v143);
        v29 = vsub_s32(v28, v9);
        v30 = vabd_s32(v28, v9);
        v31 = v141 - v30.i32[0] - v30.i32[1];
        if (v31 < 0)
        {
          v137 = vbsl_s8(vcltz_s32(v29), vrev64_s32(vsub_s32(v30, v9)), __PAIR64__(v141 - v30.i32[0], v141 - v30.i32[1]));
        }

        else
        {
          v137 = v29;
        }

        if (sub_2500F2F8C(a1, &v152))
        {
          v65 = *(a2 + 4 * v20 * v143);
          v66 = vsub_s32(v65, v9);
          v67 = vabd_s32(v65, v9);
          if (v141 - v67.i32[0] - v67.i32[1] < 0)
          {
            v66 = vbsl_s8(vcltz_s32(v66), vrev64_s32(vsub_s32(v67, v9)), __PAIR64__(v141 - v67.i32[0], v141 - v67.i32[1]));
          }

          v35 = 0;
          v68 = vsub_s32(v66, vmvn_s8(v137));
          v40 = vshr_n_s32(vsra_n_u32(v68, v68, 0x1FuLL), 1uLL);
          v14 = (v31 + v141 - v67.i32[0] - v67.i32[1] + 1) / 2;
        }

        else
        {
          v40 = v139;
          v35 = 0;
          if (v14 * v31 + v137.i32[0] * v139.i32[0] + v137.i32[1] * v139.i32[1] < 0)
          {
            v40 = vneg_s32(v139);
            v14 = -v14;
          }
        }

        goto LABEL_111;
      }
    }

    if (sub_2500F92C4(a1, v8, a2, a3, &v149))
    {
      if (sub_2500F2F8C(a1, &v152))
      {
        v32 = HIDWORD(v149);
        v14 = v150[0];
        v33 = v149;
      }

      else
      {
        v33 = v139.i32[0];
        v32 = v139.i32[1];
        if (v149 * v139.i32[0] + SHIDWORD(v149) * v139.i32[1] + v150[0] * v14 < 0)
        {
          v33 = -v139.i32[0];
          v32 = -v139.i32[1];
          v14 = -v14;
        }
      }
    }

    else
    {
      v34 = sub_2500F2F8C(a1, &v151);
      if (v34)
      {
        v33 = -v139.i32[0];
      }

      else
      {
        v33 = v139.i32[0];
      }

      if (v34)
      {
        v32 = -v139.i32[1];
      }

      else
      {
        v32 = v139.i32[1];
      }

      if (v34)
      {
        v14 = -v14;
      }
    }

    v35 = 0;
LABEL_112:
    if (v33 >= 0)
    {
      v100 = v33;
    }

    else
    {
      v100 = -v33;
    }

    if (v32 >= 0)
    {
      v101 = v32;
    }

    else
    {
      v101 = -v32;
    }

    if (v14 >= 0)
    {
      v102 = v14;
    }

    else
    {
      v102 = -v14;
    }

    v104 = v100 < v101 || v100 < v102;
    if (v104)
    {
      v100 = v102;
      v105 = v32;
      v106 = v33;
      if (v101 < v102)
      {
LABEL_132:
        v149 = __PAIR64__(v105, v106);
        v150[0] = v100;
        sub_2500F2AB4(a1, &v149, v143, (a1 + 4056), (a1 + 4372), v155 + 15 * v35, &v147);
        v108 = v147;
        v109 = vabs_s32(v147);
        v110 = v109.i32[1];
        v111 = v141 - v109.i32[0];
        v112 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(v147), vrev64_s32(vsub_s32(v109, v9)), __PAIR64__(v141 - v109.i32[0], v141 - v109.i32[1])));
        v113 = v111 - v110;
        if (v113 < 0)
        {
          *&v108 = v112;
        }

        v114 = -v113;
        if (v14 >= 0)
        {
          v115 = v113;
        }

        else
        {
          v115 = -v113;
        }

        if (v32 >= 0)
        {
          v114 = v113;
        }

        v116 = COERCE_DOUBLE(__PAIR64__(v114, v108.u32[0]));
        if (v101 >= v102)
        {
          v117 = v108.i32[1];
        }

        else
        {
          v117 = v115;
        }

        if (v101 < v102)
        {
          v116 = *&v108;
        }

        if (v33 < 0)
        {
          v113 = -v113;
        }

        v118 = v108.i32[0];
        v108.i32[0] = v113;
        if (v104)
        {
          v119 = v117;
        }

        else
        {
          v119 = v118;
        }

        if (v104)
        {
          *&v108 = v116;
        }

        v120 = vrev64_s32(vabs_s32(v108));
        v121 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(v108), v120, vsub_s32(v10, v120)));
        v122 = COERCE_DOUBLE(vadd_s32(v108, v9));
        if (v119 < 0)
        {
          v122 = v121;
        }

        *v11 = v122;
        goto LABEL_154;
      }

      v107 = &v146;
      v100 = v101;
      v105 = v14;
      v106 = v33;
    }

    else
    {
      v107 = &v147;
      v105 = v32;
      v106 = v14;
    }

    v107->i32[0] = v14;
    goto LABEL_132;
  }

LABEL_157:
  v123 = 360;
  do
  {
    v124 = v155 + v123;
    v125 = *&v150[v123 / 4];
    if (v125)
    {
      *(v124 - 2) = v125;
      operator delete(v125);
    }

    v126 = *(v124 - 6);
    if (v126)
    {
      *&v148[v123 / 4] = v126;
      operator delete(v126);
    }

    v127 = v155 + v123;
    v128 = *(&v155[-4] + v123 - 8);
    if (v128)
    {
      *(v127 - 8) = v128;
      operator delete(v128);
    }

    v129 = *(v127 - 12);
    if (v129)
    {
      *(&v155[-5] + v123 - 8) = v129;
      operator delete(v129);
    }

    v130 = *(v124 - 15);
    if (v130)
    {
      *(&v155[-7] + v123) = v130;
      operator delete(v130);
    }

    v123 -= 120;
  }

  while (v123);
  v131 = *MEMORY[0x277D85DE8];
}

void sub_2500F8F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  for (i = 240; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a33 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2500F8F40(void *a1, void *a2, void *a3, uint64_t *a4, int a5, int32x2_t **a6, int a7)
{
  v12 = a2[1] - *a2;
  v13 = a5;
  sub_2500FBD48(a6, a5);
  v14 = a6[1] - *a6;
  if (v14 >= 1)
  {
    bzero(*a6, 12 * (v14 / 0xCuLL - (v14 > 0xB)) + 12);
  }

  LOBYTE(v69) = 0;
  sub_2500FD3BC(__p, v13, &v69);
  if ((v12 >> 2) >= 2)
  {
    v15 = 0;
    v16 = (v12 >> 2) - 1;
    do
    {
      v17 = *(*a2 + 4 * v15++);
      v18 = *(*a2 + 4 * v15) - 1;
      if (v17 + 1 >= v18)
      {
        continue;
      }

      v19 = v17 + 1;
      do
      {
        v20 = 0;
        v21 = *(*a3 + 4 * v17);
        v22 = 4 * v19;
        v23 = *(*a3 + 4 * v19++);
        v24 = *(*a3 + 4 * v19);
        v25 = *a4;
        v69 = *(*a4 + 4 * v17);
        v70 = *(v25 + v22);
        v26 = (*a1 + 12 * v21);
        v27 = (*a1 + 12 * v23);
        v28 = (*a1 + 12 * v24);
        v29 = *v26;
        v30 = v26[1];
        v31 = *v27 - v29;
        v32 = *v28 - v29;
        v33 = v27[1] - v30;
        v34 = v28[1] - v30;
        v35 = v26[2];
        v36 = v27[2] - v35;
        v37 = v28[2] - v35;
        v38 = v37 * v33 - v34 * v36;
        v39 = v32 * v36 - v37 * v31;
        v40 = v34 * v31 - v32 * v33;
        do
        {
          v41 = *(&v69 + v20);
          v42 = *a6 + 3 * v41;
          v43 = *(__p[0] + v41);
          if (!v43)
          {
            v48 = v39 + v42[1];
            v49 = v40 + v42[2];
            v45 = v38;
            goto LABEL_18;
          }

          v44 = 1 << (v43 - 1);
          if (v38 < 0)
          {
            v45 = -((v44 - v38) >> v43);
            if ((v39 & 0x8000000000000000) == 0)
            {
LABEL_11:
              v46 = (v44 + v39) >> v43;
              if (v40 < 0)
              {
                goto LABEL_16;
              }

              goto LABEL_12;
            }
          }

          else
          {
            v45 = (v44 + v38) >> v43;
            if ((v39 & 0x8000000000000000) == 0)
            {
              goto LABEL_11;
            }
          }

          v46 = -((v44 - v39) >> v43);
          if (v40 < 0)
          {
LABEL_16:
            v47 = -((v44 - v40) >> v43);
            goto LABEL_17;
          }

LABEL_12:
          v47 = (v44 + v40) >> v43;
LABEL_17:
          v48 = v46 + v42[1];
          v49 = v47 + v42[2];
LABEL_18:
          v50 = v45 + *v42;
          v51 = fabs(v50);
          v52 = fabs(v48);
          v53 = fabs(v49);
          if (v51 < v52)
          {
            v51 = v52;
          }

          if (v51 < v53)
          {
            v51 = v53;
          }

          v54 = v51 + 1;
          if (v54 >> 30)
          {
            v55 = __clz(v54);
            v56 = 34 - v55;
            *(__p[0] + v41) = v43 + 34 - v55;
            v57 = 1 << (33 - v55);
            if (v50 < 0)
            {
              v50 = -((v57 - v50) >> (34 - v55));
            }

            else
            {
              v50 = (v57 + v50) >> (34 - v55);
            }

            if (v48 < 0)
            {
              v48 = -((v57 - v48) >> v56);
            }

            else
            {
              v48 = (v57 + v48) >> v56;
            }

            if (v49 < 0)
            {
              v49 = -((v57 - v49) >> v56);
            }

            else
            {
              v49 = (v57 + v49) >> v56;
            }
          }

          *v42 = v50;
          v42[1] = v48;
          v42[2] = v49;
          v20 += 4;
        }

        while (v20 != 12);
      }

      while (v18 != v19);
    }

    while (v15 != v16);
  }

  v58 = *a6;
  v59 = a6[1];
  while (v58 != v59)
  {
    v60 = v58[1].i32[0];
    v61 = *v58;
    v62 = vabs_s32(*v58);
    if (v60 >= 0)
    {
      v63 = v58[1].i32[0];
    }

    else
    {
      v63 = -v60;
    }

    v64 = v62.u32[1] + v62.u32[0] + v63;
    if (v64)
    {
      v65 = a7 * v61.i32[0] / v64;
      v66 = a7 * v61.i32[1] / v64;
      v67 = v60 * a7 / v64;
    }

    else
    {
      LODWORD(v65) = 0;
      LODWORD(v66) = 0;
      LODWORD(v67) = a7;
    }

    v58->i32[0] = v65;
    v58->i32[1] = v66;
    v58[1].i32[0] = v67;
    v58 = (v58 + 12);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t sub_2500F92C4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 4360);
  v6 = *(a1 + 4336);
  v7 = *(*(a1 + 4176) + 4 * a2);
  v8 = *(*(a1 + 4200) + 4 * a2);
  v9 = *(a1 + 4224);
  v10 = *(a1 + 4348);
  *a5 = 0;
  *(a5 + 8) = 0;
  if (v8 < 1)
  {
    return 0;
  }

  result = 0;
  v13 = 0;
  v14 = ~(-1 << (v10 - 1));
  v15 = v8 + v7;
  v16 = *(a1 + 1208);
  v17 = 0;
  v18 = vdup_n_s32(v14);
  do
  {
    v19 = *(v9 + 4 * v7);
    v20 = *(v16 + 4 * v19);
    v21 = *(v16 + 4 + 4 * v19);
    if (v20 < v21)
    {
      v22 = v20 + 1;
      v23 = (*(a1 + 4104) + 4 * v20);
      do
      {
        v25 = *v23++;
        v24 = v25;
        if (v25 < a2 && (!v5 || *(a4 + v24) == 1))
        {
          v26 = *(a3 + 4 * v24 * v6);
          v27 = vsub_s32(v26, v18);
          v28 = vabd_s32(v26, v18);
          if ((v14 - v28.i32[0] - v28.i32[1]) < 0)
          {
            v27 = vbsl_s8(vcltz_s32(v27), vrev64_s32(vsub_s32(v28, v18)), __PAIR64__(v14 - v28.i32[0], v14 - v28.i32[1]));
          }

          v17 = vadd_s32(v27, v17);
          *a5 = v17;
          v13 += v14 - v28.i32[0] - v28.i32[1];
          *(a5 + 8) = v13;
          result = (result + 1);
        }

        if (v22 >= v21)
        {
          break;
        }

        ++v22;
      }

      while (result < 4);
    }

    ++v7;
  }

  while (v7 < v15 && result < 4);
  if (v6 >= 1 && result >= 2)
  {
    do
    {
      *a5 /= result;
      a5 += 4;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_2500F9424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 4332);
  v5 = *(a1 + 4336);
  v41 = *(a1 + 4360);
  v39 = ~(-1 << (*(a1 + 4348) - 1));
  sub_2500F8F40((a1 + 1160), (a1 + 1208), (a1 + 1184), (a1 + 4104), v4, (a1 + 4152), v39);
  v58 = 0;
  v56 = 0u;
  *__p = 0u;
  *v54 = 0u;
  *v55 = 0u;
  *v52 = 0u;
  v53 = 0u;
  *v51 = 0u;
  sub_2500F3ECC(v51, v5);
  v50 = 0x8000;
  v49 = 0x8000;
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = vdup_n_s32(v39);
    v9 = vdup_n_s32(2 * v39);
    v36 = v4;
    v37 = v5;
    v40 = 4 * v5;
    v10 = a2;
    while (v41 && *(a3 + v7) != 1)
    {
LABEL_53:
      ++v7;
      v10 = (v10 + v40);
      v6 += 12;
      if (v4 == v7)
      {
        goto LABEL_54;
      }
    }

    v11 = (*(a1 + 4152) + v6);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    if (sub_2500F92C4(a1, v7, a2, a3, &v46))
    {
      if (sub_2500F2F8C(a1, &v50))
      {
        v13 = v47;
        v14 = v48;
        v12 = v46;
      }

      else if (v46 * v12 + v47 * v13 + v48 * v14 < 0)
      {
        v12 = -v12;
        v13 = -v13;
        v14 = -v14;
      }
    }

    else if (sub_2500F2F8C(a1, &v49))
    {
      v12 = -v12;
      v13 = -v13;
      v14 = -v14;
    }

    if (v12 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = -v12;
    }

    if (v13 >= 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = -v13;
    }

    if (v14 >= 0)
    {
      v17 = v14;
    }

    else
    {
      v17 = -v14;
    }

    v19 = v15 < v16 || v15 < v17;
    if (v19)
    {
      v15 = v17;
      v20 = v13;
      v21 = v12;
      if (v16 < v17)
      {
LABEL_33:
        v45[0] = v21;
        v45[1] = v20;
        v45[2] = v15;
        sub_2500F2AB4(a1, v45, v37, (a1 + 4056), (a1 + 4372), v51, v43);
        v23 = v43[0];
        v24 = vabs_s32(v43[0]);
        v25 = v39 - v24.i32[0] - v24.i32[1];
        if (v25 < 0)
        {
          v23 = vbsl_s8(vcltz_s32(v43[0]), vrev64_s32(vsub_s32(v24, v8)), __PAIR64__(v39 - v24.i32[0], v39 - v24.i32[1]));
        }

        v26 = v24.i32[1] - (v39 - v24.i32[0]);
        if (v14 >= 0)
        {
          v27 = v39 - v24.i32[0] - v24.i32[1];
        }

        else
        {
          v27 = v24.i32[1] - (v39 - v24.i32[0]);
        }

        if (v13 >= 0)
        {
          v26 = v39 - v24.i32[0] - v24.i32[1];
        }

        v28 = COERCE_DOUBLE(__PAIR64__(v26, v23.u32[0]));
        if (v16 >= v17)
        {
          v29 = v23.i32[1];
        }

        else
        {
          v29 = v27;
        }

        if (v16 < v17)
        {
          v28 = *&v23;
        }

        if (v12 < 0)
        {
          v25 = -v25;
        }

        v30 = COERCE_DOUBLE(__PAIR64__(v23.u32[1], v25));
        v31 = v23.i32[0];
        if (v19)
        {
          v31 = v29;
          *&v32 = v28;
        }

        else
        {
          *&v32 = v30;
        }

        v33 = vrev64_s32(vabs_s32(v32));
        v34 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(v32), v33, vsub_s32(v9, v33)));
        v35 = COERCE_DOUBLE(vadd_s32(v32, v8));
        if (v31 < 0)
        {
          v35 = v34;
        }

        *v10 = v35;
        v4 = v36;
        goto LABEL_53;
      }

      v22 = &v44;
      v15 = v16;
      v20 = v14;
      v21 = v12;
    }

    else
    {
      v22 = v43;
      v20 = v13;
      v21 = v14;
    }

    v22->i32[0] = v14;
    goto LABEL_33;
  }

LABEL_54:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v55[1])
  {
    *&v56 = v55[1];
    operator delete(v55[1]);
  }

  if (v54[0])
  {
    v54[1] = v54[0];
    operator delete(v54[0]);
  }

  if (v52[1])
  {
    *&v53 = v52[1];
    operator delete(v52[1]);
  }

  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }
}

void sub_2500F9778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2500F3FE0(va);
  _Unwind_Resume(a1);
}

void sub_2500F9790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v152 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 4332);
  v8 = *(a1 + 4336);
  v127 = v8;
  v131 = *(a1 + 4360);
  v151 = 0;
  memset(v150, 0, sizeof(v150));
  do
  {
    sub_2500F3ECC(&v150[v6], v8);
    v6 += 15;
  }

  while (v6 != 45);
  v149 = 0x8000;
  memset_pattern16(__b, &unk_250110610, 6uLL);
  memset_pattern16(v147, &unk_250110610, 6uLL);
  memset_pattern16(v146, &unk_250110610, 6uLL);
  sub_2500FD43C(&v144, v8);
  LODWORD(__p) = 0;
  sub_2500FC9FC(&v142, v8, &__p);
  v9 = v8;
  LODWORD(v138) = 0;
  sub_2500FC9FC(&__p, v8, &v138);
  if (v7 >= 1)
  {
    v10 = 0;
    v119 = v7;
    v130 = 4 * v8;
    v11 = a2;
    v120 = a3;
    v121 = a2;
    v128 = v8;
    while (v131 && *(a3 + v10) != 1)
    {
LABEL_99:
      ++v10;
      v11 = (v11 + v130);
      if (v10 == v7)
      {
        goto LABEL_106;
      }
    }

    v12 = *(*(a1 + 4128) + 4 * v10);
    if ((v12 & 0x80000000) == 0)
    {
      v13 = (*(a1 + 1256) + 12 * v12);
      LODWORD(v138) = *v13;
      v14 = v13[1];
      HIDWORD(v138) = v14;
      LODWORD(v129) = v13[2];
      HIDWORD(v129) = v138;
      v139 = v129;
      v15 = (*(a1 + 1280) + 12 * v12);
      v125 = v15[1];
      v126 = *v15;
      LODWORD(v136) = *v15;
      HIDWORD(v136) = v125;
      v124 = v15[2];
      v137 = v124;
      v135 = -1;
      v134 = -1;
      v133 = -1;
      v132 = -1;
      sub_2500F7D4C(a1, v12, v10, &v138, &v134);
      sub_2500F7D4C(a1, v12, v10, &v136, &v132);
      v16 = v135;
      v17 = v133;
      if ((v135 & 0x80000000) == 0 || v133 < 0)
      {
        v123 = v14;
        v18 = v7;
        v19 = v132;
        v20 = HIDWORD(v132);
      }

      else
      {
        v18 = v7;
        v125 = v14;
        v126 = HIDWORD(v129);
        v138 = v136;
        v124 = v129;
        v139 = v137;
        v19 = v134;
        v20 = HIDWORD(v134);
        v134 = v132;
        v17 = v135;
        v16 = v133;
        v135 = v133;
        v123 = HIDWORD(v136);
        v129 = __PAIR64__(v136, v137);
      }

      v22 = v134;
      v21 = SHIDWORD(v134);
      if (v17 != -1 && (!v131 || *(a3 + v134) == 1 && *(a3 + SHIDWORD(v134)) == 1 && *(a3 + v16) == 1 && *(a3 + v19) == 1 && *(a3 + v20) == 1 && *(a3 + v17) == 1))
      {
        v122 = v11;
        v23 = v9;
        v24 = (a2 + 4 * v134 * v9);
        v25 = (a2 + 4 * HIDWORD(v134) * v128);
        v26 = (a2 + 4 * v16 * v23);
        v27 = (a2 + 4 * v19 * v128);
        v28 = (a2 + 4 * v20 * v23);
        v29 = (a2 + 4 * v17 * v128);
        v30 = sub_2500F2F8C(a1, v146);
        v31 = 2;
        if (!v30)
        {
          v31 = 1;
        }

        if (sub_2500F2F8C(a1, &v146[v31]))
        {
          v32 = 2;
        }

        else
        {
          v32 = 0;
        }

        v33 = v32 | v30;
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v65 = v24;
            v66 = v127;
            sub_2500EBFF8(v65, v25, v26, v127, (*(a1 + 1160) + 12 * SHIDWORD(v129)), (*(a1 + 1160) + 12 * v123), (*(a1 + 1160) + 12 * v129), (*(a1 + 1160) + 12 * v12), v142);
            v8 = v128;
            sub_2500EBFF8(v27, v28, v29, v128, (*(a1 + 1160) + 12 * v126), (*(a1 + 1160) + 12 * v125), (*(a1 + 1160) + 12 * v124), (*(a1 + 1160) + 12 * v12), __p);
            if (v127 >= 1)
            {
              v67 = v142;
              v68 = __p;
              do
              {
                v69 = *v68++;
                *v67 = (v69 + *v67) / 2;
                ++v67;
                --v66;
              }

              while (v66);
            }
          }

          else
          {
            v8 = v128;
            if (v128 == 2)
            {
              sub_2500EC6E4(v24, v25, v26, (*(a1 + 1160) + 12 * SHIDWORD(v129)), (*(a1 + 1160) + 12 * v123), (*(a1 + 1160) + 12 * v12), v142);
              sub_2500EC6E4(v27, v28, v29, (*(a1 + 1160) + 12 * v126), (*(a1 + 1160) + 12 * v125), (*(a1 + 1160) + 12 * v12), __p);
              v91 = v142;
              v92 = __p;
              v93 = *(v142 + 1);
              *v142 = (*__p + *v142) / 2;
              v91[1] = (v92[1] + v93) / 2;
            }

            else if (v128 >= 1)
            {
              v95 = 0;
              v96 = v142;
              do
              {
                v97 = 1431655766 * ((v27[v95] + v24[v95]) / 2 - (v26[v95] + v29[v95]) + 2 * (v28[v95] + v25[v95]));
                *&v96[v95 * 4] = HIDWORD(v97) + (v97 >> 63);
                ++v95;
                v57 = 2;
              }

              while (v127 != v95);
              goto LABEL_93;
            }
          }
        }

        else if (v33)
        {
          v84 = v127;
          v8 = v128;
          if (v127 >= 1)
          {
            v85 = v142;
            do
            {
              v87 = *v27++;
              v86 = v87;
              v88 = *v28++;
              v89 = v88 + v86;
              v90 = *v29++;
              *v85++ = v89 - v90;
              --v84;
            }

            while (v84);
          }
        }

        else
        {
          v8 = v128;
          if (v128 >= 1)
          {
            v34 = v142;
            v35 = v127;
            do
            {
              v37 = *v24++;
              v36 = v37;
              v38 = *v25++;
              v39 = v38 + v36;
              v40 = *v26++;
              *v34++ = v39 - v40;
              --v35;
            }

            while (v35);
          }
        }

LABEL_92:
        v57 = 2;
LABEL_93:
        a3 = v120;
        a2 = v121;
        v7 = v119;
        v9 = v127;
        v11 = v122;
LABEL_94:
        sub_2500F2AB4(a1, v142, v8, (a1 + 4056), (a1 + 4372), &v150[15 * v57], a2 + 4 * v10 * v8);
        if (v9 >= 1)
        {
          v98 = v144 + 4;
          v99 = v11;
          v100 = v9;
          do
          {
            v102 = *v99++;
            v101 = v102;
            v103 = *(v98 - 1);
            if (*&v98[4 * ((v103 - 1) & 3)] != v102)
            {
              *(v98 - 1) = v103 + 1;
              *&v98[4 * (v103 & 3)] = v101;
            }

            v98 += 20;
            --v100;
          }

          while (v100);
        }

        goto LABEL_99;
      }

      if (v16 != -1 && (!v131 || *(a3 + v134) == 1 && *(a3 + SHIDWORD(v134)) == 1 && *(a3 + v16) == 1))
      {
        v122 = v11;
        v41 = (a2 + 4 * v134 * v9);
        v42 = (a2 + 4 * HIDWORD(v134) * v128);
        v43 = (a2 + 4 * v16 * v9);
        v44 = sub_2500F2F8C(a1, v147);
        v45 = 2;
        if (!v44)
        {
          v45 = 1;
        }

        if (sub_2500F2F8C(a1, &v147[v45]))
        {
          v46 = 2;
        }

        else
        {
          v46 = 0;
        }

        v47 = v46 | v44;
        if (v47 > 1)
        {
          if (v47 == 2)
          {
            v70 = v127;
            sub_2500EBFF8(v41, v42, v43, v127, (*(a1 + 1160) + 12 * SHIDWORD(v129)), (*(a1 + 1160) + 12 * v123), (*(a1 + 1160) + 12 * v129), (*(a1 + 1160) + 12 * v12), v142);
            v8 = v128;
            if (v128 >= 1)
            {
              v71 = v142;
              do
              {
                v73 = *v41++;
                v72 = v73;
                v74 = *v42++;
                v75 = v74 + v72;
                v76 = *v43++;
                *v71 = (v75 - v76 + *v71) / 2;
                ++v71;
                --v70;
              }

              while (v70);
            }
          }

          else
          {
            v94 = v127;
            if (v127 != 2)
            {
              if (v127 < 1)
              {
                v57 = 2;
                v8 = v128;
              }

              else
              {
                v104 = v142;
                v8 = v128;
                do
                {
                  v106 = *v41++;
                  v105 = v106;
                  v108 = *v42++;
                  v107 = v108;
                  v109 = *v43++;
                  *v104++ = v107 + v105 - v109;
                  v57 = 2;
                  --v94;
                }

                while (v94);
              }

              goto LABEL_93;
            }

            sub_2500EC6E4((v121 + 8 * v22), (v121 + 8 * v21), (v121 + 8 * v16), (*(a1 + 1160) + 12 * SHIDWORD(v129)), (*(a1 + 1160) + 12 * v123), (*(a1 + 1160) + 12 * v12), v142);
            v8 = v128;
          }
        }

        else if (v47)
        {
          v8 = v128;
          sub_2500EBFF8(v41, v42, v43, v128, (*(a1 + 1160) + 12 * SHIDWORD(v129)), (*(a1 + 1160) + 12 * v123), (*(a1 + 1160) + 12 * v129), (*(a1 + 1160) + 12 * v12), v142);
        }

        else
        {
          v48 = v127;
          v8 = v128;
          if (v127 >= 1)
          {
            v49 = v142;
            do
            {
              v51 = *v41++;
              v50 = v51;
              v52 = *v42++;
              v53 = v52 + v50;
              v54 = *v43++;
              *v49++ = v53 - v54;
              --v48;
            }

            while (v48);
          }
        }

        goto LABEL_92;
      }

      if (HIDWORD(v134) != -1 && (!v131 || *(a3 + v134) == 1 && *(a3 + SHIDWORD(v134)) == 1))
      {
        v8 = v128;
        v122 = v11;
        if (v128 == 2)
        {
          v55 = sub_2500F2F8C(a1, &v149);
          sub_2500EC4C8(a2 + 8 * v22, (a2 + 8 * v21), (*(a1 + 1160) + 12 * SHIDWORD(v129)), (*(a1 + 1160) + 12 * v123), (*(a1 + 1160) + 12 * v12), v55, v142);
        }

        else if (v128 >= 1)
        {
          v77 = (a2 + 4 * v134 * v9);
          v78 = (a2 + 4 * HIDWORD(v134) * v128);
          v79 = v142;
          v80 = v9;
          do
          {
            v82 = *v77++;
            v81 = v82;
            v83 = *v78++;
            *v79++ = (v83 + v81) / 2;
            --v80;
          }

          while (v80);
        }

        v57 = 1;
        goto LABEL_93;
      }

      v8 = v128;
      v7 = v18;
    }

    v56 = sub_2500FA2D8(a1, v10, a2, a3, v142, v143);
    v57 = 0;
    if (v9 >= 1 && !v56)
    {
      v58 = v142;
      v59 = v144 + 4;
      v60 = v9;
      do
      {
        v61 = sub_2500F2F8C(a1, __b);
        v62 = v61;
        if (v61)
        {
          v63 = 2;
        }

        else
        {
          v63 = 1;
        }

        if (sub_2500F2F8C(a1, &__b[v63]))
        {
          v64 = 2;
        }

        else
        {
          v64 = 0;
        }

        *v58++ = *&v59[4 * ((*(v59 - 1) + ~(v64 | v62)) & 3)];
        v59 += 20;
        --v60;
      }

      while (v60);
      v57 = 0;
      v9 = v127;
      v8 = v128;
      a3 = v120;
      a2 = v121;
      v7 = v119;
    }

    goto LABEL_94;
  }

LABEL_106:
  if (__p)
  {
    v141[0] = __p;
    operator delete(__p);
  }

  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  if (v144)
  {
    *v145 = v144;
    operator delete(v144);
  }

  v110 = 360;
  do
  {
    v111 = &v150[v110 / 8];
    v112 = *&v145[v110 / 4 + 4];
    if (v112)
    {
      *(v111 - 2) = v112;
      operator delete(v112);
    }

    v113 = *(v111 - 6);
    if (v113)
    {
      *&v145[v110 / 4] = v113;
      operator delete(v113);
    }

    v114 = &v150[v110 / 8];
    v115 = *(&v142 + v110);
    if (v115)
    {
      *(v114 - 8) = v115;
      operator delete(v115);
    }

    v116 = *(v114 - 12);
    if (v116)
    {
      v141[v110 / 8] = v116;
      operator delete(v116);
    }

    v117 = *(v111 - 15);
    if (v117)
    {
      *(&v138 + v110) = v117;
      operator delete(v117);
    }

    v110 -= 120;
  }

  while (v110);
  v118 = *MEMORY[0x277D85DE8];
}