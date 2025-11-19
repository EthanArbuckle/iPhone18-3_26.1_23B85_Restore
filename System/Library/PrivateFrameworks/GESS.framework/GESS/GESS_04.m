void sub_24BCB7DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  a9 = &a11;
  sub_24BCB7FC8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCB7E1C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      if (*v2)
      {
        v4 += (*(**v2 + 88))(*v2);
      }

      v2 += 2;
    }

    while (v2 != v3);
  }

  v5 = a1[4];
  v6 = a1[5];
  while (v5 != v6)
  {
    if (*v5)
    {
      v4 += (*(**v5 + 88))(*v5);
    }

    v5 += 2;
  }

  v7 = a1[7];
  v8 = a1[8];
  while (v7 != v8)
  {
    if (*v7)
    {
      v4 += (*(**v7 + 88))(*v7);
    }

    v7 += 2;
  }

  v10 = a1[10];
  v9 = a1[11];
  while (v10 != v9)
  {
    if (*v10)
    {
      v4 += (*(**v10 + 88))(*v10);
    }

    v10 += 2;
  }

  return v4;
}

void **sub_24BCB7F80(void **a1)
{
  sub_24BCB8068(*a1, a1[1]);
  v3 = a1;
  sub_24BCB7FC8(&v3);
  return a1;
}

void sub_24BCB7FC8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BCB801C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_24BCB801C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_24BC9EC78(v4);
    }
  }

  a1[1] = v2;
}

void sub_24BCB8068(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      if (*v3)
      {
        v4 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        if (v4)
        {
          sub_24BC9EC78(v4);
        }
      }

      v3 += 2;
    }

    while (v3 != a2);
  }
}

uint64_t sub_24BCB80BC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6)
      {
        (*(*v6 + 24))(v6, a3);
      }

      if (v7)
      {
        sub_24BC9EC78(v7);
      }

      v5 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_24BCB8158(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BC9EC78(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCB8170(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BCB53E8(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void **sub_24BCB820C(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_24BC8E01C();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_24BCB53E8(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_24BCB5430(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

id GESSTestsSandboxDir(void *a1)
{
  v1 = a1;
  v2 = v1;
  v6 = objc_msgSend_UTF8String(v2, v3, v4, v5);
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
  }

  *(&__p + v8) = 0;
  sub_24BCDFADC(&__p, &v19);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  v10 = MEMORY[0x277CBEBC0];
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v9, &v19, 4, __p, v17, v18);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v9, v19.__r_.__value_.__l.__data_, 4, __p, v17, v18);
  }
  v11 = ;
  v14 = objc_msgSend_fileURLWithPath_(v10, v12, v11, v13);

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_24BCB8478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t GESSAlgMidpointSubdivide(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_valid(v3, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v17 = objc_msgSend_meshImpl(v3, v11, v12, v13);
    v18 = 0;
    v19 = 1;
    while (v18 < objc_msgSend_iterations(v4, v14, v15, v16))
    {
      if (v19)
      {
        sub_24BE6CD24(v17);
      }

      v19 = 0;
      ++v18;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t GESSAlgSplitLongEdges(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_valid(v3, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v17 = objc_msgSend_meshImpl(v3, v11, v12, v13);
    v18 = -1;
    do
    {
      if (++v18 >= objc_msgSend_iterations(v4, v14, v15, v16))
      {
        break;
      }

      sub_24BE243D0(v17);
      v20 = v19;
      objc_msgSend_ratio(v4, v21, v22, v23);
    }

    while (sub_24BE6AA94(v17, v20, v24));
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

uint64_t GESSAlgCollapseShortEdges(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_valid(v3, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v17 = objc_msgSend_meshImpl(v3, v11, v12, v13);
    v18 = -1;
    do
    {
      if (++v18 >= objc_msgSend_iterations(v4, v14, v15, v16))
      {
        break;
      }

      sub_24BE243D0(v17);
      v20 = v19;
      objc_msgSend_ratio(v4, v21, v22, v23);
    }

    while (sub_24BE6AF64(v17, v20, v24, 0, 0, 4));
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

uint64_t GESSAlgEqualizeValences(void *a1)
{
  v1 = a1;
  if ((objc_msgSend_valid(v1, v2, v3, v4) & 1) != 0 && objc_msgSend_meshType(v1, v5, v6, v7) == 1)
  {
    v11 = objc_msgSend_meshImpl(v1, v8, v9, v10);
    sub_24BE6B2E8(v11);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t GESSAlgIsotropicRemesh(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_valid(v3, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v14 = objc_msgSend_meshImpl(v3, v11, v12, v13);
    v18 = objc_msgSend_iterations(v4, v15, v16, v17);
    objc_msgSend_splitRatio(v4, v19, v20, v21);
    v23 = v22;
    objc_msgSend_collapseRatio(v4, v24, v25, v26);
    v28 = v27;
    objc_msgSend_smoothLambda(v4, v29, v30, v31);
    v33 = v32;
    objc_msgSend_smoothIterations(v4, v34, v35, v36);
    v38 = sub_24BE6B894(v14, v18, v37, v23, v28, v33);
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

uint64_t GESSAlgSplitNGonsToTrianglesAndQuads(void *a1)
{
  v1 = a1;
  if ((objc_msgSend_valid(v1, v2, v3, v4) & 1) != 0 && objc_msgSend_meshType(v1, v5, v6, v7) == 11)
  {
    v11 = objc_msgSend_meshImpl(v1, v8, v9, v10);
    v12 = sub_24BE703B0(v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void *sub_24BCB8C30(void *result)
{
  result[1] = *result;
  result[4] = result[3];
  result[7] = result[6];
  return result;
}

void *sub_24BCB8C4C(char **a1, char **a2)
{
  sub_24BCB8D20(a1, (a2[1] - *a2) >> 2);
  sub_24BCB8DC0(a1 + 3, 0xCCCCCCCCCCCCCCCDLL * ((a2[4] - a2[3]) >> 2));
  result = sub_24BCB8D20(a1 + 6, (a2[7] - a2[6]) >> 2);
  if (a1 != a2)
  {
    sub_24BCA2A30(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    sub_24BCB9558(a1 + 3, a2[3], a2[4], 0xCCCCCCCCCCCCCCCDLL * ((a2[4] - a2[3]) >> 2));
    v5 = a2[6];
    v6 = a2[7];

    return sub_24BCA2A30(a1 + 6, v5, v6, (v6 - v5) >> 2);
  }

  return result;
}

void *sub_24BCB8D20(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_24BC92E0C(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void *sub_24BCB8DC0(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      v2 = result[1] - *result;
      sub_24BCB9504(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

uint64_t sub_24BCB8E7C(void *a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 == -1)
  {
    return 0;
  }

  v3 = *(*a1 + 4 * v2);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = a1[3];
  if (*(v4 + 20 * *(v4 + 20 * v3) + 12) == -1)
  {
    return 0;
  }

  if (*(v4 + 20 * *(v4 + 20 * v3 + 4)) == v3)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = *(v4 + 20 * *(v4 + 20 * v3 + 4));
  }

  v6 = -1;
  do
  {
    if (v6 == -1001)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Topology::Valence exceed max valence allowed");
      __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
    }

    v7 = v6;
    if (v5 == 0xFFFFFFFFLL)
    {
      break;
    }

    v8 = a1[3];
    v9 = (v8 + 20 * v5);
    v10 = *v9;
    v5 = *(v8 + 20 * v9[1]);
    if (v5 == v3)
    {
      v5 = 0xFFFFFFFFLL;
    }

    v11 = *(v8 + 20 * v10 + 12);
    v6 = v7 - 1;
  }

  while (v11 != -1);
  return -v7;
}

uint64_t sub_24BCB8F94(uint64_t result, void *a2, unsigned int *a3)
{
  *result = a2;
  *(result + 8) = a2;
  *(result + 16) = -1;
  v3 = *a3;
  if (v3 != -1)
  {
    v4 = *(*a2 + 4 * v3);
    *(result + 16) = v4;
    *(result + 20) = v4;
  }

  return result;
}

uint64_t sub_24BCB8FBC(uint64_t *a1)
{
  v1 = *(a1 + 5);
  if (v1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  v3 = 5 * v1;
  v4 = *(*(a1[1] + 24) + 20 * *(*(a1[1] + 24) + 4 * v3 + 4));
  if (v4 == *(a1 + 4))
  {
    v4 = -1;
  }

  *(a1 + 5) = v4;
  return *(*(v2 + 24) + 20 * *(*(v2 + 24) + 4 * v3) + 12);
}

uint64_t sub_24BCB9048(uint64_t result, _DWORD *a2, unsigned int *a3)
{
  v3 = *a3;
  *(*(result + 24) + 20 * *a2 + 8) = *a3;
  *(*(result + 24) + 20 * v3 + 4) = *a2;
  return result;
}

uint64_t sub_24BCB9074(uint64_t result, _DWORD *a2, unsigned int *a3)
{
  v3 = *a3;
  *(*(result + 24) + 20 * *a2) = *a3;
  *(*(result + 24) + 20 * v3) = *a2;
  return result;
}

uint64_t sub_24BCB90A0(uint64_t result, _DWORD *a2, unsigned int *a3)
{
  v3 = *a3;
  *(*(result + 48) + 4 * *a2) = *a3;
  *(*(result + 24) + 20 * v3 + 16) = *a2;
  return result;
}

void *sub_24BCB90C8(void *result, _DWORD *a2, unsigned int *a3)
{
  v3 = *a3;
  *(result[3] + 20 * *a2 + 12) = v3;
  *(*result + 4 * v3) = *a2;
  return result;
}

void *sub_24BCB90F0(void *result, _DWORD *a2, unsigned int *a3)
{
  v3 = *a3;
  *(*result + 4 * *a2) = *a3;
  *(result[3] + 20 * v3 + 12) = *a2;
  return result;
}

unint64_t sub_24BCB9118(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 2;
    if ((v7 + 1) >> 62)
    {
      sub_24BC8E01C();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_24BC92E0C(a1, v10);
    }

    v11 = (4 * v7);
    *v11 = *a2;
    v6 = 4 * v7 + 4;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return (v6 - *a1 - 4) >> 2;
}

uint64_t sub_24BCB91FC(void *a1, __int128 *a2)
{
  v5 = a1[4];
  v4 = a1[5];
  if (v5 >= v4)
  {
    v8 = a1[3];
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v8) >> 2);
    v10 = v9 + 1;
    if (v9 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_24BC8E01C();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 2);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x666666666666666)
    {
      v12 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_24BCB9504((a1 + 3), v12);
    }

    v13 = 20 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 4);
    *v13 = v14;
    v7 = 20 * v9 + 20;
    v15 = a1[3];
    v16 = a1[4] - v15;
    v17 = v13 - v16;
    memcpy((v13 - v16), v15, v16);
    v18 = a1[3];
    a1[3] = v17;
    a1[4] = v7;
    a1[5] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 4);
    *v5 = v6;
    v7 = v5 + 20;
  }

  a1[4] = v7;
  return -858993459 * ((v7 - a1[3] - 20) >> 2);
}

unint64_t sub_24BCB9320(void *a1, _DWORD *a2)
{
  v5 = a1[7];
  v4 = a1[8];
  if (v5 >= v4)
  {
    v7 = a1[6];
    v8 = (v5 - v7) >> 2;
    if ((v8 + 1) >> 62)
    {
      sub_24BC8E01C();
    }

    v9 = v4 - v7;
    v10 = v9 >> 1;
    if (v9 >> 1 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_24BC92E0C((a1 + 6), v11);
    }

    v12 = (4 * v8);
    *v12 = *a2;
    v6 = 4 * v8 + 4;
    v13 = a1[6];
    v14 = a1[7] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[6];
    a1[6] = v15;
    a1[7] = v6;
    a1[8] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  a1[7] = v6;
  return (v6 - a1[6] - 4) >> 2;
}

void sub_24BCB9410(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24BCB96FC(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 20 * a2;
  }
}

uint64_t sub_24BCB9454(uint64_t result, void *a2, unsigned int *a3)
{
  *result = a2;
  *(result + 8) = -1;
  v3 = *a3;
  if (v3 != -1)
  {
    v4 = *(*a2 + 4 * v3);
    *(result + 8) = v4;
    *(result + 12) = v4;
  }

  return result;
}

uint64_t sub_24BCB947C(_DWORD *a1)
{
  result = a1[3];
  if (result == -1 || (v3 = *(*(*a1 + 24) + 20 * *(*(*a1 + 24) + 20 * result + 4)), v3 == a1[2]))
  {
    v3 = -1;
  }

  a1[3] = v3;
  return result;
}

uint64_t sub_24BCB94C0(_DWORD *a1)
{
  result = a1[3];
  if (result == -1 || (v3 = *(*(*a1 + 24) + 20 * *(*(*a1 + 24) + 20 * result) + 8), v3 == a1[2]))
  {
    v3 = -1;
  }

  a1[3] = v3;
  return result;
}

void sub_24BCB9504(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void *sub_24BCB9558(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 2) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xCCCCCCCCCCCCCCCLL)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x666666666666666)
      {
        v11 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v11 = v10;
      }

      sub_24BCB96B4(v6, v11);
    }

    sub_24BC8E01C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_24BCB96B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    sub_24BCB9504(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BCB96FC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 20 * ((20 * a2 - 20) / 0x14) + 20;
      memset(*(a1 + 8), 255, v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_24BCB9504(a1, v9);
    }

    v11 = 20 * v6;
    v12 = 20 * ((20 * a2 - 20) / 0x14) + 20;
    memset(v11, 255, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_24BCB9928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x24C2548B0](v12, v11);
  _Unwind_Resume(a1);
}

void sub_24BCB9A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x24C2548B0](v12, v11);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCB9A54(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    sub_24BE7F218();

    JUMPOUT(0x24C2548B0);
  }

  return result;
}

void sub_24BCB9A98(std::string *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_24BCCA6F0(&__p, a1);
  sub_24BD23084(&__p, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_24BC95764(&__p, (3 * HIDWORD(v9) * v9));
  v2 = v9;
  v1 = HIDWORD(v9);
  v3 = (v9 * HIDWORD(v9));
  if (v3)
  {
    v4 = (__p.__r_.__value_.__r.__words[0] + 8);
    v5 = (v11 + 8);
    v6 = 4 * v10;
    do
    {
      *(v4 - 2) = *(v5 - 2);
      *(v4 - 1) = *(v5 - 1);
      *v4 = *v5;
      v4 += 3;
      v5 = (v5 + v6);
      --v3;
    }

    while (v3);
  }

  v12[0] = v1;
  v12[1] = v2;
  v12[2] = 3;
  memset(v7, 0, sizeof(v7));
  sub_24BCC9910(v7, v12, &v13, 3uLL);
  sub_24BCCA338();
}

void sub_24BCB9C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a20)
  {
    MEMORY[0x24C254890](a20, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BCB9C70(uint64_t a1, uint64_t a2, float a3)
{
  v84 = *MEMORY[0x277D85DE8];
  sub_24BC836D4(&__p, off_27F078FC8[0]);
  LODWORD(v78) = 0;
  v6 = sub_24BCCA8D0((a1 + 56), &v78, &__p);
  if (SHIBYTE(v82) < 0)
  {
    operator delete(__p);
  }

  if (v6 == -1)
  {
    goto LABEL_67;
  }

  sub_24BC836D4(&__p, off_27F078FB8[0]);
  v79 = 0;
  v78 = 0;
  v7 = sub_24BCCAA0C((a1 + 56), &v78, &__p);
  if (SHIBYTE(v82) < 0)
  {
    operator delete(__p);
  }

  if (v7 == -1)
  {
    goto LABEL_67;
  }

  sub_24BC836D4(&__p, off_27F078F78[0]);
  v78 = 0;
  v8 = sub_24BCB74D4((a1 + 80), &v78, &__p);
  if (SHIBYTE(v82) < 0)
  {
    operator delete(__p);
  }

  if (v8 == -1)
  {
LABEL_67:
    v64 = 0;
  }

  else
  {
    __p = 0;
    v81 = 0;
    v82 = 0;
    v9 = (*(a1 + 80) + 16 * v8);
    v10 = v9[1];
    v68 = *v9;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v10);
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
    LOBYTE(v77[0]) = 0;
    sub_24BC9FEFC(&v78, v11);
    sub_24BCB7458(v77, 3uLL);
    v13 = *(a1 + 128);
    v12 = *(a1 + 136);
    if (v12 != v13)
    {
      v14 = 0;
      v69 = v6;
      v15 = v7;
      do
      {
        v16 = *(v78 + (v14 >> 6));
        if ((v16 & (1 << v14)) == 0)
        {
          *(v78 + (v14 >> 6)) = v16 | (1 << v14);
          v76 = v14;
          v17 = *sub_24BCB9024(a1 + 104, &v76);
          v75 = v17;
          if (v17 != -1)
          {
            *(v78 + ((v17 >> 3) & 0x1FFFFFF8)) |= 1 << v17;
            v74 = *(sub_24BCB9024(a1 + 104, &v76) + 16);
            v18 = *(sub_24BCB9024(a1 + 104, &v75) + 16);
            v73 = v18;
            if (v74 != -1 && v18 != -1)
            {
              v19 = (*(a1 + 56) + 16 * v69);
              v21 = *v19;
              v20 = v19[1];
              if (v20)
              {
                atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v20);
              }

              v22 = *(*(v21 + 40) + 4 * *(sub_24BCB9024(a1 + 104, &v76) + 16));
              v23 = (*(a1 + 56) + 16 * v69);
              v25 = *v23;
              v24 = v23[1];
              if (v24)
              {
                atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v24);
              }

              v26 = sub_24BCB9024(a1 + 104, &v76);
              if (v22 != *(*(v25 + 40) + 4 * *(sub_24BCB9024(a1 + 104, v26) + 16)))
              {
                goto LABEL_34;
              }

              v27 = (*(a1 + 56) + 16 * v15);
              v29 = *v27;
              v28 = v27[1];
              if (v28)
              {
                atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v28);
              }

              v30 = sub_24BCB9024(a1 + 104, &v76);
              v31 = *(sub_24BCB9024(a1 + 104, v30) + 16);
              v32 = *(v29 + 40);
              v33 = (*(a1 + 56) + 16 * v15);
              v35 = *v33;
              v34 = v33[1];
              if (v34)
              {
                atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v34);
              }

              v36 = sub_24BCB9024(a1 + 104, &v76);
              v37 = 0;
              v38 = 0;
              do
              {
                for (i = 0; i != 12; i += 4)
                {
                  if (*(v32 + 12 * v31 + 4 * v37) == *(*(v35 + 40) + 12 * *(v36 + 16) + i))
                  {
                    ++v38;
                  }
                }

                ++v37;
              }

              while (v37 != 3);
              if (v38 <= 1u)
              {
LABEL_34:
                sub_24BCD573C(a1, &v74, v77);
                v40 = 0;
                v41 = 1;
                while (*(v77[0] + v40) != v76)
                {
                  v40 += 4;
                  ++v41;
                  if (v40 == 12)
                  {
                    goto LABEL_57;
                  }
                }

                sub_24BCD573C(a1, &v73, v77);
                v42 = 0;
                while (*(v77[0] + v42) != v75)
                {
                  if (++v42 == 3)
                  {
                    goto LABEL_57;
                  }
                }

                v67 = a2;
                v43 = (*(a1 + 56) + 16 * v15);
                v45 = *v43;
                v44 = v43[1];
                if (v44)
                {
                  atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v44);
                  v46 = (*(a1 + 56) + 16 * v15);
                  v48 = *v46;
                  v47 = v46[1];
                  v49 = *(v45 + 40) + 12 * v74;
                  if (v47)
                  {
                    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
                    v50 = v49;
                    sub_24BC9EC78(v47);
                    v49 = v50;
                  }

                  v45 = v48;
                }

                else
                {
                  v49 = *(v45 + 40) + 12 * v74;
                }

                v51 = 0;
                v52 = *(v45 + 40) + 12 * v73;
                v53 = *(v68 + 40);
                v54 = *(v53 + 8 * *(v49 + v40));
                v55 = *(v53 + 8 * *(v49 + v40 - 12 * (v41 / 3) + 4));
                if (v42 == 2)
                {
                  v56 = 0;
                }

                else
                {
                  v56 = v42 + 1;
                }

                v57 = *(v53 + 8 * *(v52 + 4 * v56));
                v58 = *(v53 + 8 * *(v52 + 4 * v42));
                v59 = vsub_f32(vzip1_s32(v55, v58), vzip1_s32(v54, v57));
                v60 = vsub_f32(vzip2_s32(v55, v58), vzip2_s32(v54, v57));
                v61 = vsqrt_f32(vmla_f32(vmul_f32(v60, v60), v59, v59));
                if (v61.f32[0] < v61.f32[1])
                {
                  v61.f32[0] = v61.f32[1];
                }

                if ((((v61.f32[0] * a3) + (v61.f32[0] * a3)) + 2.0) <= 2)
                {
                  v62 = 2;
                }

                else
                {
                  v62 = (((v61.f32[0] * a3) + (v61.f32[0] * a3)) + 2.0);
                }

                a2 = v67;
                do
                {
                  v63 = v51 / v62;
                  *&v71 = vadd_f32(vmul_n_f32(v54, v63), vmul_n_f32(v55, 1.0 - v63));
                  v83[0] = vadd_f32(vmul_n_f32(v57, v63), vmul_n_f32(v58, 1.0 - v63));
                  sub_24BCBA418(&__p, &v71);
                  sub_24BCBA418(&__p, &v71 + 1);
                  v72 = 1065353216;
                  sub_24BCBA418(&__p, &v72);
                  sub_24BCBA418(&__p, v83);
                  sub_24BCBA418(&__p, v83 + 1);
                  v72 = 1065353216;
                  sub_24BCBA418(&__p, &v72);
                  ++v51;
                }

                while (v62 != v51);
              }
            }
          }

LABEL_57:
          v13 = *(a1 + 128);
          v12 = *(a1 + 136);
        }

        ++v14;
      }

      while (v14 < 0xCCCCCCCCCCCCCCCDLL * ((v12 - v13) >> 2));
    }

    v64 = v81 != __p;
    if (v81 != __p)
    {
      LODWORD(v83[0]) = 1;
      HIDWORD(v83[0]) = ((v81 - __p) >> 2) / 6uLL;
      v83[1] = 0x300000002;
      memset(v70, 0, sizeof(v70));
      sub_24BCC9910(v70, v83, &v84, 4uLL);
      sub_24BCCA338();
    }

    if (v77[0])
    {
      v77[1] = v77[0];
      operator delete(v77[0]);
    }

    if (v78)
    {
      operator delete(v78);
    }

    if (__p)
    {
      v81 = __p;
      operator delete(__p);
    }
  }

  v65 = *MEMORY[0x277D85DE8];
  return v64;
}

void sub_24BCBA36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCBA418(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_24BC8E01C();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_24BC92E0C(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_24BCBA4F8(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 104);
  v2 = *(a1 + 112);
  v4 = v2 - v3;
  v6 = *(a1 + 152);
  v5 = *(a1 + 160);
  sub_24BC95764(&v43, ((v2 - v3) >> 1) + ((v2 - v3) >> 2));
  v7 = (v5 - v6) >> 2;
  sub_24BC94F74(&v42, 3 * v7);
  if (v2 != v3)
  {
    v8 = 0;
    v9 = 0;
    if ((v4 >> 2) <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v4 >> 2;
    }

    do
    {
      v11 = (*(a1 + 8) + 16 * *(a1 + 176));
      v13 = *v11;
      v12 = v11[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v12);
      }

      v14 = *(*(v13 + 40) + 16 * v9);
      v15 = v43 + v8;
      *v15 = v14;
      *(v15 + 8) = DWORD2(v14);
      ++v9;
      v8 += 12;
    }

    while (v10 != v9);
  }

  sub_24BCB2008(&v44, 3uLL);
  if (v5 == v6)
  {
    v19 = v44;
    if (!v44)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    if (v7 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v5 - v6) >> 2;
    }

    do
    {
      LODWORD(v41) = v17;
      sub_24BCD567C(a1, &v41, &v44);
      v19 = v44;
      v20 = (v42 + v16);
      *v20 = *v44;
      v20[1] = v19[1];
      v20[2] = v19[2];
      ++v17;
      v16 += 12;
    }

    while (v18 != v17);
  }

  v45 = v19;
  operator delete(v19);
LABEL_16:
  sub_24BC836D4(&v44, off_27F078F78[0]);
  v41 = 0;
  v21 = sub_24BCB74D4((a1 + 80), &v41, &v44);
  if (v46 < 0)
  {
    operator delete(v44);
  }

  v22 = *(a1 + 80) + 16 * v21;
  v24 = *v22;
  v23 = *(v22 + 8);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v23);
  }

  v25 = (*(*v24 + 16))(v24);
  sub_24BC95764(&v41, 2 * v25);
  sub_24BC836D4(&v44, off_27F078FB8[0]);
  LODWORD(v40) = 0;
  v39 = 0;
  v26 = sub_24BCCAA0C((a1 + 56), &v39, &v44);
  if (v46 < 0)
  {
    operator delete(v44);
  }

  v27 = (*(a1 + 56) + 16 * v26);
  v29 = *v27;
  v28 = v27[1];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v28);
  }

  sub_24BC94F74(&v39, 3 * v7);
  v30 = 0;
  for (i = 0; i < (*(*v24 + 16))(v24); ++i)
  {
    v32 = (v24[5] + v30);
    v33 = v41 + v30;
    *v33 = *v32;
    v33[1] = v32[1];
    v30 += 8;
  }

  if (v5 != v6)
  {
    v34 = v39 + 8;
    if (v7 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = (v5 - v6) >> 2;
    }

    v36 = (*(v29 + 40) + 8);
    do
    {
      *(v34 - 2) = *(v36 - 2);
      *(v34 - 1) = *(v36 - 1);
      v37 = *v36;
      v36 += 3;
      *v34 = v37;
      v34 += 3;
      --v35;
    }

    while (v35);
  }

  LODWORD(v44) = v4 >> 2;
  HIDWORD(v44) = 3;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v44, &v45, 2uLL);
  sub_24BCCA338();
}

void sub_24BCBAAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  for (i = 48; i != -16; i -= 16)
  {
    sub_24BE7F218(v37 + i);
  }

  sub_24BE7F218(&a16);
  sub_24BE7F218(&a21);
  sub_24BE7F218(&a26);
  sub_24BE7F218(&a31);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  v41 = *(v38 - 208);
  if (v41)
  {
    *(v38 - 200) = v41;
    operator delete(v41);
  }

  v42 = *(v38 - 184);
  if (v42)
  {
    *(v38 - 176) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

void sub_24BCBAC20()
{
  sub_24BF19128();
  v1 = 1;
  sub_24BE80BBC(&v1);
  sub_24BD12550(4, 4, 0, v0, 0);
}

uint64_t sub_24BCBAD84(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v6[0] = *a1;
  v6[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v4, 0, sizeof(v4));
  sub_24BCC9984(v4, v6, &v7, 1uLL);
  sub_24BEF7C30(v4);
  v5 = v4;
  sub_24BCC961C(&v5);
  result = sub_24BE7F218(v6);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BCBAE2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  va_copy(v7, va);
  sub_24BCC961C(va1);
  sub_24BE7F218(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCBAE58(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BCCAEC8(a1, a2);
  }

  else
  {
    v4 = 0;
    *v3 = xmmword_24BFBE150;
    v3[1] = unk_24BFBE160;
    v3[2] = xmmword_24BFBE170;
    v3[3] = unk_24BFBE180;
    do
    {
      *(v3 + v4) = *(a2 + v4);
      v4 += 4;
    }

    while (v4 != 64);
    result = (v3 + 4);
  }

  a1[1] = result;
  return result;
}

void sub_24BCBAEC8(uint64_t a1, const std::__fs::filesystem::path *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  sub_24BF19128();
  __p.__r_.__value_.__r.__words[0] = 1;
  sub_24BE80BBC(&__p);
  v4 = sub_24BF55DE0();
  sub_24BD12090(v9, v4);
  std::__fs::filesystem::__create_directories(a2, 0);
  *&v11.__pn_.__r_.__value_.__l.__data_ = xmmword_24BFBD8F0;
  v7.__pn_.__r_.__value_.__r.__words[0] = sub_24BCBBD2C(&v11);
  sub_24BCCB0F4(&__p, &v7);
  sub_24BCBBCB8(&__p, a2, &v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6[0] = 0x293F3D3B37335ALL;
  v7.__pn_.__r_.__value_.__r.__words[0] = sub_24BCBBD58(v6);
  sub_24BCCB0F4(&__p, &v7);
  sub_24BCBBCB8(&__p, a2, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  strcpy(&v5 + 4, "ya");
  LODWORD(v5) = 1634959122;
  v6[0] = sub_24BCBBD84(&v5);
  sub_24BCCB0F4(&__p, v6);
  sub_24BCBBCB8(&__p, a2, &v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::__create_directories(&v11, 0);
  std::__fs::filesystem::__create_directories(&v7, 0);
  operator new();
}

void sub_24BCBBA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  sub_24BCBBEE8(&a73);
  sub_24BE7F218(&a39);
  if (a43)
  {
    MEMORY[0x24C254890](a43, 0x1000C8052888210);
  }

  if (a46)
  {
    MEMORY[0x24C254890](a46, 0x1000C8052888210);
  }

  sub_24BE7F218(&a53);
  a73 = &a55;
  sub_24BCC961C(&a73);
  sub_24BC9EC78(a12);
  if (a59)
  {
    sub_24BC9EC78(a59);
  }

  if (a61)
  {
    sub_24BC9EC78(a61);
  }

  if (a67 < 0)
  {
    operator delete(__p);
  }

  if (*(v73 - 137) < 0)
  {
    operator delete(*(v73 - 160));
  }

  if (a72 < 0)
  {
    operator delete(a68);
  }

  _Unwind_Resume(a1);
}

std::__fs::filesystem::path *sub_24BCBBCB8@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return sub_24BCC8860(a3, this);
}

void sub_24BCBBD10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BCBBD2C(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 15; ++i)
  {
    a1[i] ^= v3;
  }

  a1[15] = 0;
  return result;
}

_BYTE *sub_24BCBBD58(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 7; ++i)
  {
    a1[i] ^= v3;
  }

  a1[7] = 0;
  return result;
}

_BYTE *sub_24BCBBD84(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 6; ++i)
  {
    a1[i] ^= v3;
  }

  a1[6] = 0;
  return result;
}

void sub_24BCBBE1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    MEMORY[0x24C254890](v2, 0x1000C8052888210);
  }

  v3 = (*(a1 + 4) * *a1 * *(a1 + 8));
  operator new[]();
}

uint64_t sub_24BCBBE80(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  if (v5)
  {
    sub_24BC9EC78(v5);
    v3 = *(a1 + 8);
  }

  v6 = v3 && *(v3 + 16);
  *(a1 + 4) = v6;
  return 1;
}

uint64_t sub_24BCBBEE8(uint64_t a1)
{
  sub_24BCC88D8(a1 + 40, *(a1 + 48));
  sub_24BCC89B4(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_24BCBBF24(uint64_t a1, void *a2, void *a3)
{
  v13[31] = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = a2[1];
  if (a3[1] != *a3 && *a2 != v6 && (v6 - *a2) >> 6 == 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3))
  {
    sub_24BF19128();
    v13[0] = 1;
    sub_24BE80BBC(v13);
    v9 = sub_24BF55DE0();
    sub_24BD12090(v12, v9);
    operator new();
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BCBCAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::__shared_weak_count *a51, void *a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BCBBEE8(&STACK[0x2A0]);
  sub_24BCC9A98(v64 - 256);
  if (__p)
  {
    operator delete(__p);
  }

  if (a51)
  {
    sub_24BC9EC78(a51);
  }

  sub_24BE7F218(&a55);
  STACK[0x2A0] = &a58;
  sub_24BCC961C(&STACK[0x2A0]);
  if (a9)
  {
    sub_24BC9EC78(a9);
  }

  if (a62)
  {
    sub_24BC9EC78(a62);
  }

  if (a64)
  {
    sub_24BC9EC78(a64);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_24BCBCD64(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 14; ++i)
  {
    a1[i] ^= v3;
  }

  a1[14] = 0;
  return result;
}

uint64_t sub_24BCBCD90(uint64_t a1)
{
  sub_24BE7F218(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_24BCBCDCC(void **a1)
{
  v3 = a1 + 3;
  sub_24BCC961C(&v3);
  v3 = a1;
  sub_24BCC961C(&v3);
  return a1;
}

void sub_24BCBD130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_24BE7F218(v27 - 56);
  sub_24BE7F218(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  sub_24BE7F218(&a24);
  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  sub_24BE7F218(v27 - 128);
  _Unwind_Resume(a1);
}

void sub_24BCBD204(uint64_t **a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  strcpy(v7, "*i_Y^EG~ORgKZ");
  v4 = sub_24BCBD2F0(v7);
  sub_24BC836D4(__p, v4);
  sub_24BD4F008(a1, __p, a2, v5, 0);
}

void sub_24BCBD2CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BCBD2F0(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 13; ++i)
  {
    a1[i] ^= v3;
  }

  a1[13] = 0;
  return result;
}

void sub_24BCBD320(const void ***a1)
{
  *&v25[4] = *MEMORY[0x277D85DE8];
  v1 = **a1;
  v2 = (*a1)[1] - v1;
  if (v2 > 4 && v2 != 8)
  {
    v4 = *v1;
    v5 = v1[1];
    v6 = v1[2];
    v16 = 0;
    v17 = 0;
    memset(v14, 0, sizeof(v14));
    sub_24BCC9910(v14, &v16, &v18, 3uLL);
    v24[0] = v4 - 1;
    v24[1] = v5;
    v24[2] = v6;
    memset(v13, 0, sizeof(v13));
    sub_24BCC9910(v13, v24, v25, 3uLL);
    sub_24BEA8020(a1, v14, v13, v7, 0, v15);
    v21 = 1;
    v22 = 0;
    memset(v11, 0, sizeof(v11));
    sub_24BCC9910(v11, &v21, &v23, 3uLL);
    v19[0] = v4;
    v19[1] = v5;
    v19[2] = v6;
    memset(v10, 0, sizeof(v10));
    sub_24BCC9910(v10, v19, &v20, 3uLL);
    sub_24BEA8020(a1, v11, v10, v8, 0, v12);
    sub_24BEB73D0(v15, v12, v9);
  }

  sub_24BC923C0();
}

void sub_24BCBD9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  sub_24BE7F218(&a64);
  sub_24BE7F218(&a56);
  sub_24BE7F218(&a68);
  sub_24BE7F218(&a66);
  sub_24BE7F218(&a70);
  sub_24BE7F218(v70 - 248);
  _Unwind_Resume(a1);
}

void sub_24BCBDC94(const void ***a1)
{
  *&v25[4] = *MEMORY[0x277D85DE8];
  v1 = **a1;
  v2 = (*a1)[1] - v1;
  if (v2 > 4 && v2 != 8)
  {
    v4 = *v1;
    v5 = v1[1];
    v6 = v1[2];
    v18 = 0;
    v19 = 0;
    memset(v14, 0, sizeof(v14));
    sub_24BCC9910(v14, &v18, &v20, 3uLL);
    v16[0] = v4 - 1;
    v16[1] = v5;
    v16[2] = v6;
    memset(v13, 0, sizeof(v13));
    sub_24BCC9910(v13, v16, &v17, 3uLL);
    sub_24BEA8020(a1, v14, v13, v7, 0, v15);
    v23 = 1;
    v24 = 0;
    memset(v11, 0, sizeof(v11));
    sub_24BCC9910(v11, &v23, v25, 3uLL);
    v21[0] = v4;
    v21[1] = v5;
    v21[2] = v6;
    memset(__p, 0, sizeof(__p));
    sub_24BCC9910(__p, v21, &v22, 3uLL);
    sub_24BEA8020(a1, v11, __p, v8, 0, v12);
    sub_24BEB73D0(v15, v12, v9);
  }

  sub_24BC923C0();
}

void sub_24BCBE078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  sub_24BE7F218(v34 - 104);
  sub_24BE7F218(v34 - 136);
  sub_24BE7F218(v34 - 184);
  sub_24BE7F218(&a28);
  sub_24BE7F218(v34 - 168);
  sub_24BE7F218(v34 - 152);
  _Unwind_Resume(a1);
}

void sub_24BCBE204(const void ***a1, uint64_t **a2, uint64_t a3)
{
  v3 = **a1;
  if (((*a1)[1] - v3) > 8)
  {
    v5 = *(v3 + 2);
    sub_24BEA5B3C(a1, 0, a3, 0, v10);
    v8 = 0x100000001;
    v9 = 0x100000001;
    v7 = 0x100000001;
    sub_24BEC15BC(v10, a2, &v9, &v8, &v7, v5, v6, 0);
  }

  sub_24BC923C0();
}

void sub_24BCBE2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BCBE2DC(uint64_t **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  if (((*a1)[1] - v1) > 8)
  {
    v2 = *(v1 + 8);
    memset(v5, 0, sizeof(v5));
    DWORD1(v5[0]) = 1040187392;
    *(v5 + 12) = 0xBF0000003E000000;
    DWORD1(v5[1]) = 1040187392;
    HIDWORD(v5[1]) = 1040187392;
    v6 = 0;
    v4 = xmmword_24BFBD900;
    memset(__p, 0, sizeof(__p));
    sub_24BCC9910(__p, &v4, v5, 4uLL);
    sub_24BCCCCEC();
  }

  sub_24BC923C0();
}

void sub_24BCBE4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  sub_24BE7F218(&a14);
  sub_24BE7F218(&a21);
  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BCBE50C(void *a1, uint64_t **a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = **a2;
  if (((*a2)[1] - v3) > 8)
  {
    v4 = *(v3 + 8);
    sub_24BEB73D0(a1, a2, a3);
  }

  sub_24BC923C0();
}

void sub_24BCBE798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  sub_24BE7F218(&a17);
  sub_24BE7F218(v19 - 56);
  sub_24BE7F218(&a12);
  sub_24BE7F218(v19 - 72);
  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BCBE8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BCBE8EC(void *a1, uint64_t **a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = **a2;
  if (((*a2)[1] - v3) > 8)
  {
    v4 = *(v3 + 8);
    sub_24BEB73D0(a1, a2, a3);
  }

  sub_24BC923C0();
}

void sub_24BCBEAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  sub_24BE7F218(&a17);
  sub_24BE7F218(v17 - 40);
  sub_24BE7F218(&a12);
  sub_24BE7F218(&a10);
  sub_24BE7F218(v17 - 64);
  _Unwind_Resume(a1);
}

void sub_24BCBEB34(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v4 = sub_24BF02A98(a1, 0);
  sub_24BEB14B0(a3, 0, v4, v5 | 0x100000000, &v6);
  sub_24BEA5334(v6);
}

void sub_24BCBEC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  sub_24BE7F218(&a15);
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a11);
  sub_24BE7F218(&a9);
  sub_24BE7F218(v15 - 48);
  _Unwind_Resume(a1);
}

void sub_24BCBEDD0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a4;
  v6 = 0;
  sub_24BCBF458();
}

void sub_24BCBF228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a33);
  sub_24BE7F218(&a26);
  *(v35 - 96) = v35 - 144;
  sub_24BCC961C((v35 - 96));
  sub_24BE7F218(&a35);
  _Unwind_Resume(a1);
}

void sub_24BCBF444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BCBF4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BCBF4DC(void *a1, _DWORD *a2)
{
  sub_24BCBF56C(a1);
  v4 = **a1;
  if (*(*a1 + 8) - v4 > 4uLL)
  {
    *a2 = v4[1];
    a2[1] = *v4;
    a2[2] = 1;
    sub_24BCBF640(a2);
  }

  sub_24BC923C0();
}

uint64_t sub_24BCBF56C(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v6[0] = *a1;
  v6[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v4, 0, sizeof(v4));
  sub_24BCC9984(v4, v6, &v7, 1uLL);
  sub_24BEF7C30(v4);
  v5 = v4;
  sub_24BCC961C(&v5);
  result = sub_24BE7F218(v6);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BCBF614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  va_copy(v7, va);
  sub_24BCC961C(va1);
  sub_24BE7F218(va2);
  _Unwind_Resume(a1);
}

void sub_24BCBF640(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    MEMORY[0x24C254890](v2, 0x1000C8077774924);
  }

  v3 = (*(a1 + 4) * *a1);
  v4 = *(a1 + 8);
  operator new[]();
}

void *sub_24BCBF6A0(MTL::Private::Selector *a1, void *a2)
{
  v2 = **(*a1 + 136);
  v3 = *(*a1 + 152);
  *a2 = v3 - [v2 MTL:? :? Private:? :? Selector:? :?s_kcontents(a1)];
  return v2;
}

NS::Private::Selector *sub_24BCBF6F4(NS::Private::Class *a1, void *a2, uint64_t *a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  v6 = NS::Private::Class::s_kNSString(a1);
  v7 = [v6 NS:v5 :4 Private:? :? Selector:? :?s_kstringWithCString_encoding_(v6)];
  v8 = [a2 MTL:v7 :? Private:? :? Selector:? :?s_knewFunctionWithName_(v7)];
  v11 = 0;
  v9 = [a1 MTL:v8 :&v11 Private:? :? Selector:? :?s_knewComputePipelineStateWithFunction_error_(v8)];
  [v8 NS:? :? Private:? :? Selector:? :?s_krelease(v9)];
  return v9;
}

void sub_24BCBF7A8(uint64_t a1, void **a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = **a2;
  if ((*a2)[1] != v2)
  {
    v4[0] = *v2;
    v4[1] = 4;
    memset(v3, 0, sizeof(v3));
    sub_24BCC9910(v3, v4, v5, 2uLL);
    sub_24BEA51FC(v3);
  }

  sub_24BC923C0();
}

void sub_24BCC0070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_24BE7F218(&a32);
  sub_24BE7F218(&a36);
  _Unwind_Resume(a1);
}

void sub_24BCC0544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    MEMORY[0x24C254890](a29, 0x1000C8052888210);
  }

  sub_24BE7F218(&a12);
  v31 = *(v29 - 80);
  if (v31)
  {
    *(v29 - 72) = v31;
    operator delete(v31);
  }

  sub_24BE7F218(&a17);
  sub_24BE7F218(&a23);
  _Unwind_Resume(a1);
}

void sub_24BCC0654(uint64_t **a1, const void ***a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  memset(v20, 0, sizeof(v20));
  sub_24BCC9A1C(v20, *v4, v4[1], (v4[1] - *v4) >> 2);
  v29 = 0;
  v30 = 0;
  memset(v18, 0, sizeof(v18));
  sub_24BCC9910(v18, &v29, &v31, 3uLL);
  v5 = **a2;
  v6 = (*a2)[1] - v5;
  if (v6)
  {
    v28[0] = *v5;
    if (v6 > 4)
    {
      v28[1] = v5[1];
      v28[2] = 1;
      memset(v17, 0, sizeof(v17));
      sub_24BCC9910(v17, v28, &v29, 3uLL);
      sub_24BEA8020(a2, v18, v17, v7, 0, &v32);
      v26 = 0;
      v27 = 1;
      memset(v16, 0, sizeof(v16));
      sub_24BCC9910(v16, &v26, v28, 3uLL);
      v8 = **a2;
      v9 = (*a2)[1] - v8;
      if (v9)
      {
        DWORD1(v25) = *v8;
        if (v9 > 4)
        {
          DWORD2(v25) = v8[1];
          HIDWORD(v25) = 2;
          memset(v15, 0, sizeof(v15));
          sub_24BCC9910(v15, &v25 + 4, &v26, 3uLL);
          sub_24BEA8020(a2, v16, v15, v10, 0, &v33);
          memset(v19, 0, sizeof(v19));
          sub_24BCC9984(v19, &v32, v34, 2uLL);
          v24 = 0x100000000;
          memset(v14, 0, sizeof(v14));
          sub_24BCC9910(v14, &v24, &v25, 2uLL);
          v21 = 0x100000001;
          v11 = **a1;
          if (((*a1)[1] - v11) > 8)
          {
            v22 = *(v11 + 8);
            memset(__p, 0, sizeof(__p));
            sub_24BCC9910(__p, &v21, &v23, 3uLL);
            sub_24BEBC9A8(a1, v19, v14, __p, v12, 0);
          }

          sub_24BC923C0();
        }
      }

      sub_24BC923C0();
    }
  }

  sub_24BC923C0();
}

void sub_24BCC09FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  sub_24BE7F218(v35);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BCC0B60(uint64_t a1, int a2, void *a3)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3 == v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  while (*(v4 + v5) != a2)
  {
LABEL_7:
    ++v6;
    v5 += 48;
    if (v6 >= 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4))
    {
      return 0;
    }
  }

  v7 = v4 + v5;
  if (*(v4 + v5 + 4) != 1)
  {
    if (*(v7 + 5) == 1)
    {
      operator new();
    }

    goto LABEL_7;
  }

  v10 = *(v7 + 8);
  v9 = *(v7 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a3[1];
  *a3 = v10;
  a3[1] = v9;
  if (v11)
  {
    sub_24BC9EC78(v11);
  }

  return 1;
}

void sub_24BCC0DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

double sub_24BCC0E30@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__extension(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_24BCC0EF8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v4 = sub_24BCC0B60(a1, 1, &v6);
  if (v4)
  {
    operator new();
  }

  if (v7)
  {
    sub_24BC9EC78(v7);
  }

  if (v4)
  {
    v6 = 0;
    v7 = 0;
    if (sub_24BCC0B60(a1, 5, &v6) && *v6 == **a2 && v6[1] == *(*a2 + 4))
    {
      operator new();
    }

    if (v7)
    {
      sub_24BC9EC78(v7);
    }

    v6 = 0;
    v7 = 0;
    if (sub_24BCC0B60(a1, 6, &v6) && *v6 == **a2 && v6[1] == *(*a2 + 4))
    {
      operator new();
    }

    if (v7)
    {
      sub_24BC9EC78(v7);
    }
  }

  return v4;
}

void sub_24BCC1214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24BC9EC78(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCC1240(uint64_t result)
{
  if ((result & (result - 1)) != 0)
  {
    return (1 << vcvtas_u32_f32(log2f(result)));
  }

  return result;
}

void sub_24BCC1278(unsigned int **a1, unsigned int **a2, unsigned int **a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = **a1;
  if ((v6 & (v6 - 1)) != 0)
  {
    log2f(v6);
  }

  v7 = v5[1];
  if ((v7 & (v7 - 1)) != 0)
  {
    log2f(v7);
  }

  v8 = *a2;
  if (*a2)
  {
    if ((*v8 & (*v8 - 1)) != 0)
    {
      v9 = 1 << vcvtas_u32_f32(log2f(*v8));
    }

    v10 = v8[1];
    if ((v10 & (v10 - 1)) != 0)
    {
      log2f(v10);
    }
  }

  v11 = *a3;
  if (*a3)
  {
    if ((*v11 & (*v11 - 1)) != 0)
    {
      v12 = 1 << vcvtas_u32_f32(log2f(*v11));
    }

    v13 = v11[1];
    if ((v13 & (v13 - 1)) != 0)
    {
      log2f(v13);
    }
  }

  sub_24BE80D1C();
  sub_24BCCCD5C();
}

void sub_24BCC1ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    MEMORY[0x24C254890](a31, 0x1000C8052888210);
  }

  sub_24BE7F218(v37 - 224);
  sub_24BE7F218(v37 - 176);
  sub_24BE7F218(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCC1CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = MEMORY[0x28223BE20]();
  v24 = v12;
  v14 = v13;
  v16 = v15;
  v23 = v11;
  v39 = *MEMORY[0x277D85DE8];
  v17 = objc_autoreleasePoolPush();
  std::chrono::system_clock::now();
  v37[0] = &unk_285F93A58;
  v37[1] = a11;
  v37[3] = v37;
  v36[0] = &unk_285F93AE8;
  v36[1] = a11;
  v36[3] = v36;
  sub_24BE4A50C(v38, v37, v36);
  sub_24BCC9738(v36);
  sub_24BCC9738(v37);
  v18 = v14[1] - *v14;
  if (v18)
  {
    v19 = v16[1];
    if (*v16 != v19 && (v19 - *v16) >> 6 == v18 >> 3)
    {
      sub_24BF19128();
      *&v35 = 1;
      sub_24BE80BBC(&v35);
      v20 = sub_24BF55DE0();
      sub_24BD12090(v34, v20);
      if (sub_24BD47518(v23, v24))
      {
        v33 = 0;
        v32 = 0;
        v31 = 0;
        v30 = 0;
        v29 = 0;
        v28 = 0;
        if (sub_24BCC0EF8(v24, &v32))
        {
          v27[0] = v32;
          v27[1] = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v26[0] = v30;
          v26[1] = v31;
          v25[0] = v28;
          v25[1] = v29;
          sub_24BCC1278(v27, v26, v25);
        }

        if (v33)
        {
          sub_24BC9EC78(v33);
        }
      }
    }
  }

  sub_24BE4A5A0(v38);
  objc_autoreleasePoolPop(v17);
  v21 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BCC35CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, void *a40, std::__shared_weak_count *a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BC9F08C(&STACK[0x3E0]);
  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  v74 = STACK[0x490];
  if (STACK[0x490])
  {
    STACK[0x498] = v74;
    operator delete(v74);
  }

  if (a35)
  {
    sub_24BC9EC78(a35);
  }

  if (a38)
  {
    sub_24BC9EC78(a38);
  }

  if (a41)
  {
    sub_24BC9EC78(a41);
  }

  sub_24BE7F218(&a43);
  sub_24BE4A5A0(&STACK[0x460]);
  sub_24BE4A5A0(&STACK[0x588]);
  std::random_device::~random_device(&a69);
  if (a70)
  {
    a71 = a70;
    operator delete(a70);
  }

  sub_24BCC9A98(&STACK[0xF80]);
  v75 = a72;
  if (a72)
  {
    STACK[0x200] = a72;
    operator delete(v75);
  }

  if (STACK[0x238])
  {
    sub_24BC9EC78(STACK[0x238]);
  }

  sub_24BE7F218(&STACK[0x250]);
  sub_24BE7F218(&STACK[0x260]);
  if (STACK[0x280])
  {
    MEMORY[0x24C254890](STACK[0x280], 0x1000C8077774924);
  }

  STACK[0x5B0] = &STACK[0x2A0];
  sub_24BCC961C(&STACK[0x5B0]);
  STACK[0x5B0] = &STACK[0x2B8];
  sub_24BCC961C(&STACK[0x5B0]);
  sub_24BE7F218(&STACK[0x300]);
  if (STACK[0x318])
  {
    sub_24BC9EC78(STACK[0x318]);
  }

  if (STACK[0x328])
  {
    sub_24BC9EC78(STACK[0x328]);
  }

  if (STACK[0x338])
  {
    sub_24BC9EC78(STACK[0x338]);
  }

  sub_24BE4A5A0(v72 - 208);
  _Unwind_Resume(a1);
}

void sub_24BCC3A3C()
{
  v0 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x24BCC39B0);
}

uint64_t *sub_24BCC3A64(uint64_t *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_24BC8E01C();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v14[4] = result;
    if (v11)
    {
      sub_24BCB53E8(result, v11);
    }

    v12 = (16 * v8);
    v14[0] = 0;
    v14[1] = v12;
    v14[3] = 0;
    v13 = *a2;
    *v12 = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v14[2] = v12 + 1;
    sub_24BCC9818(result, v14);
    v7 = v3[1];
    result = sub_24BCC98C0(v14);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  v3[1] = v7;
  return result;
}

void sub_24BCC3B68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC98C0(va);
  _Unwind_Resume(a1);
}

std::random_device *sub_24BCC3B7C(std::random_device *a1)
{
  sub_24BC836D4(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_24BCC3BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BCC3BF0(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 20; ++i)
  {
    a1[i] ^= v3;
  }

  a1[20] = 0;
  return result;
}

void sub_24BCC3C1C(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_24BCCF33C(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 48 * a2;
    while (v3 != v7)
    {
      v3 -= 48;
      sub_24BCCB568(a1, v3);
    }

    a1[1] = v7;
  }
}

uint64_t sub_24BCC3CB8(uint64_t *a1, int *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BCCF7C0(a1, a2);
  }

  else
  {
    sub_24BCCF71C(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_24BCC3CF8(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  return a1;
}

void sub_24BCC3D38()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  sub_24BF19128();
  __p[0] = 1;
  sub_24BE80BBC(__p);
  v1 = sub_24BF55DE0();
  sub_24BD12090(v2, v1);
  sub_24BCBAC20();
}

void sub_24BCC4708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (STACK[0x210])
  {
    MEMORY[0x24C254890](STACK[0x210], 0x1000C8077774924);
  }

  sub_24BE7F218(&a37);
  sub_24BE7F218(&a43);
  sub_24BE7F218(&a48);
  sub_24BE7F218(&a53);
  if (__p)
  {
    a56 = __p;
    operator delete(__p);
  }

  if (a58)
  {
    a59 = a58;
    operator delete(a58);
  }

  if (a63)
  {
    sub_24BC9EC78(a63);
  }

  _Unwind_Resume(a1);
}

void sub_24BCC4A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BCC4A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[7] = *MEMORY[0x277D85DE8];
  objc_autoreleasePoolPush();
  sub_24BF19128();
  __p[0].__r_.__value_.__r.__words[0] = 1;
  sub_24BE80BBC(__p);
  v4 = sub_24BF55DE0();
  sub_24BD12090(v6, v4);
  v9[0] = 0x7F69647F69610CLL;
  v8 = sub_24BCBBD58(v9);
  sub_24BCCB0F4(__p, &v8);
  sub_24BCBBCB8(__p, a3, &v5);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::__create_directories(&v5, 0);
  operator new();
}

void sub_24BCC5350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  sub_24BCC8F58(v64 - 160);
  sub_24BCC9B18(&STACK[0x200]);
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BCC96A0(&STACK[0x240]);
  sub_24BE7F218(&a48);
  if (a50)
  {
    a51 = a50;
    operator delete(a50);
  }

  sub_24BE7F218(&a53);
  if (a56)
  {
    sub_24BC9EC78(a56);
  }

  if (a10)
  {
    sub_24BC9EC78(a10);
  }

  if (a58)
  {
    sub_24BC9EC78(a58);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  _Unwind_Resume(a1);
}

double sub_24BCC5638(uint64_t a1)
{
  v3 = (a1 + 16);
  sub_24BCC961C(&v3);
  *&result = sub_24BE7F218(a1).n128_u64[0];
  return result;
}

void sub_24BCC5678(const void ***a1, uint64_t a2, unsigned int ***a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = **a1;
  if (((*a1)[1] - v10) > 4)
  {
    v11 = **a3;
    if ((*a3)[1] != v11)
    {
      v13 = *v10;
      v14 = v10[1];
      v15 = *v11;
      LODWORD(v22) = *v10;
      DWORD1(v22) = 1;
      *(&v22 + 1) = v14 | 0x300000000;
      v17 = 0;
      v18 = 0;
      __p = 0;
      sub_24BCC9910(&__p, &v22, &v23, 4uLL);
      sub_24BEA4500(a1, &__p, a9, a10, &v19);
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      v22 = v19;
      if (*(&v19 + 1))
      {
        atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v20[0] = v13;
      v20[1] = 1;
      v20[2] = v14;
      v20[3] = 1;
      v25 = 0;
      v24 = 0uLL;
      sub_24BCC9910(&v24, v20, v21, 4uLL);
      sub_24BEA5334(&v24);
    }
  }

  sub_24BC923C0();
}

void sub_24BCC5FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, char a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(v64 + i);
  }

  sub_24BE7F218(&a21);
  sub_24BE7F218(&a23);
  sub_24BE7F218(&a25);
  sub_24BE7F218(&a35);
  sub_24BE7F218(&a37);
  sub_24BE7F218(&a43);
  sub_24BE7F218(&a46);
  sub_24BE7F218(&a51);
  sub_24BE7F218(&a57);
  sub_24BE7F218(&a59);
  sub_24BE7F218(&a64);
  _Unwind_Resume(a1);
}

void sub_24BCC62AC()
{
  v0 = MEMORY[0x28223BE20]();
  v27[318] = *MEMORY[0x277D85DE8];
  objc_autoreleasePoolPush();
  sub_24BF19128();
  __p = 1;
  sub_24BE80BBC(&__p);
  v1 = sub_24BF55DE0();
  sub_24BD12090(v25, v1);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = v2 - v3;
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  sub_24BC95764(&v24, ((v2 - v3) >> 1) + ((v2 - v3) >> 2));
  v7 = (v5 - v6) >> 2;
  sub_24BC94F74(&v23, 3 * v7);
  if (v2 != v3)
  {
    v8 = 0;
    v9 = 0;
    if ((v4 >> 2) <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v4 >> 2;
    }

    do
    {
      v11 = (*(v0 + 8) + 16 * *(v0 + 176));
      v13 = *v11;
      v12 = v11[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v12);
      }

      v14 = *(*(v13 + 40) + 16 * v9);
      v15 = v24 + v8;
      *v15 = v14;
      *(v15 + 2) = DWORD2(v14);
      ++v9;
      v8 += 12;
    }

    while (v10 != v9);
  }

  sub_24BCB2008(&__p, 3uLL);
  if (v5 == v6)
  {
    v19 = __p;
    if (!__p)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    if (v7 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v7;
    }

    do
    {
      v21[0] = v17;
      sub_24BCD567C(v0, v21, &__p);
      v19 = __p;
      v20 = v23 + v16;
      *v20 = *__p;
      v20[1] = v19[1];
      v20[2] = v19[2];
      ++v17;
      v16 += 12;
    }

    while (v18 != v17);
  }

  v27[0] = v19;
  operator delete(v19);
LABEL_16:
  LODWORD(__p) = v4 >> 2;
  HIDWORD(__p) = 3;
  memset(v22, 0, sizeof(v22));
  sub_24BCC9910(v22, &__p, v27, 2uLL);
  sub_24BCCA338();
}

void sub_24BCC7F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = STACK[0x780];
  if (STACK[0x780])
  {
    STACK[0x788] = v70;
    operator delete(v70);
  }

  v71 = STACK[0x6E0];
  if (STACK[0x6E0])
  {
    STACK[0x6E8] = v71;
    operator delete(v71);
  }

  sub_24BE7F218(&a54);
  sub_24BE7F218(&a57);
  STACK[0x6E0] = &STACK[0x640];
  sub_24BCC961C(&STACK[0x6E0]);
  sub_24BE7F218(&STACK[0x278]);
  sub_24BE7F218(&STACK[0x6B8]);
  sub_24BE7F218(&STACK[0x758]);
  sub_24BE7F218(&a68);
  std::random_device::~random_device(&STACK[0x314]);
  v72 = STACK[0x318];
  if (STACK[0x318])
  {
    STACK[0x320] = v72;
    operator delete(v72);
  }

  sub_24BE7F218(&STACK[0x360]);
  sub_24BE7F218(&STACK[0x3A0]);
  sub_24BE7F218(&STACK[0x3B0]);
  sub_24BE7F218(&STACK[0x3C0]);
  STACK[0x7F0] = &STACK[0x3D0];
  sub_24BCC961C(&STACK[0x7F0]);
  if (STACK[0x3F0])
  {
    sub_24BC9EC78(STACK[0x3F0]);
  }

  sub_24BE7F218(&STACK[0x418]);
  sub_24BE7F218(&STACK[0x428]);
  sub_24BE7F218(&STACK[0x438]);
  sub_24BCC9A98(v68 - 216);
  v73 = STACK[0x448];
  if (STACK[0x448])
  {
    STACK[0x450] = v73;
    operator delete(v73);
  }

  sub_24BE7F218(&STACK[0x468]);
  sub_24BCC96F4(&STACK[0x478]);
  sub_24BE7F218(a18);
  sub_24BE7F218(&STACK[0x4A8]);
  sub_24BE7F218(&STACK[0x4E0]);
  sub_24BD59960(&STACK[0x4F0]);
  sub_24BE7F218(&STACK[0x590]);
  sub_24BE7F218(&STACK[0x5A0]);
  sub_24BE7F218(&STACK[0x5C8]);
  sub_24BE7F218(&STACK[0x5F0]);
  v74 = STACK[0x600];
  if (STACK[0x600])
  {
    STACK[0x608] = v74;
    operator delete(v74);
  }

  v75 = STACK[0x618];
  if (STACK[0x618])
  {
    STACK[0x620] = v75;
    operator delete(v75);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_24BCC87B0(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 4; ++i)
  {
    a1[i] ^= v3;
  }

  a1[4] = 0;
  return result;
}

void sub_24BCC884C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

std::__fs::filesystem::path *sub_24BCC8860(std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

void sub_24BCC88D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_24BCC88D8(a1, *a2);
    sub_24BCC88D8(a1, a2[1]);
    sub_24BCC8934((a2 + 5));

    operator delete(a2);
  }
}

uint64_t sub_24BCC8934(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_24BCC89B4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_24BCC89B4(a1, *a2);
    sub_24BCC89B4(a1, *(a2 + 1));
    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
    }

    operator delete(a2);
  }
}

void *sub_24BCC8A18(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  v6 = a3[1];
  __dst[3] = *a3;
  __dst[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

void sub_24BCC8A84(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_24BCC8A84(a1, *a2);
    sub_24BCC8A84(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_24BCC8AD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_24BCC8C0C(_Unwind_Exception *a1)
{
  sub_24BCC9B18(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_24BCC8C30(void *a1)
{
  *a1 = &unk_285F93628;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  sub_24BCC9B18((a1 + 1));
  return a1;
}

void sub_24BCC8C88(void *a1)
{
  *a1 = &unk_285F93628;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  sub_24BCC9B18((a1 + 1));

  JUMPOUT(0x24C2548B0);
}

void sub_24BCC8D90(_Unwind_Exception *a1)
{
  sub_24BCC9B18(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCC8DB4(uint64_t a1, void *a2)
{
  v2 = a2;
  *a2 = &unk_285F93628;
  sub_24BCC8AD8((a2 + 1), a1 + 8);
  v2[5] = 0;
  v2[6] = 0;
  v2 += 5;
  v2[2] = 0;
  return sub_24BCC9A1C(v2, *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 2);
}

void sub_24BCC8E44(void *a1)
{
  sub_24BCC8F58(a1 + 8);

  operator delete(a1);
}

void sub_24BCC8E80(uint64_t a1, uint64_t *a2)
{
  memset(v3, 0, sizeof(v3));
  sub_24BCC9548(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  sub_24BCC8F9C(a1 + 8);
}

void sub_24BCC8EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCC8F0C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93728))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BCC8F58(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return sub_24BCC9B18(a1);
}

void sub_24BCC8F9C(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  sub_24BCC8AD8(v1, a1);
  sub_24BCC9100(v2);
}

void *sub_24BCC918C(void *a1)
{
  *a1 = &unk_285F936A8;
  sub_24BCC9B18((a1 + 1));
  return a1;
}

void sub_24BCC91D0(void *a1)
{
  *a1 = &unk_285F936A8;
  sub_24BCC9B18((a1 + 1));

  JUMPOUT(0x24C2548B0);
}

void sub_24BCC92E0(void *a1)
{
  sub_24BCC9B18(a1 + 8);

  operator delete(a1);
}

void sub_24BCC931C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v7, 0, 24);
  sub_24BCC9548(v7, *a2, a2[1], (a2[1] - *a2) >> 4);
  v5 = *(a1 + 32);
  if (!v5)
  {
    sub_24BCA1F3C();
  }

  (*(*v5 + 48))(v8);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCC9984(a3, v8, &v9, 1uLL);
  sub_24BE7F218(v8);
  v8[0] = v7;
  sub_24BCC961C(v8);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BCC9408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void **);
  sub_24BE7F218(va2);
  va_copy(v7, va);
  sub_24BCC961C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCC943C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93718))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_24BCC9488(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_24BCC94DC(void *a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_24BCC9548((a1 + 2), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

uint64_t sub_24BCC9548(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCC95E0(result, a4);
  }

  return result;
}

void sub_24BCC95E0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_24BCB53E8(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BCC961C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_24BE7F218(v4 - 16);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_24BCC96A0(uint64_t a1)
{
  sub_24BE7F218(a1 + 216);
  sub_24BE7F218(a1 + 200);
  sub_24BE7F218(a1 + 184);
  sub_24BE7F218(a1 + 168);
  sub_24BE7F218(a1 + 152);
  sub_24BE7F218(a1 + 136);
  return a1;
}

uint64_t sub_24BCC96F4(uint64_t a1)
{
  sub_24BE7F218(a1 + 32);
  sub_24BE7F218(a1 + 16);

  return sub_24BE7F218(a1);
}

uint64_t sub_24BCC9738(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_24BCC97B8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_24BE7F218(v3 - 16);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_24BCC9818(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = *v8;
      *v8 = 0;
      *(v8 + 8) = 0;
      v8 += 16;
    }

    while (v8 != v5);
    do
    {
      result = sub_24BE7F218(result) + 16;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v10 = *a1;
  *a1 = v7;
  a1[1] = v10;
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_24BCC98C0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    sub_24BE7F218(i - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_24BCC9910(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BCC9968(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCC9984(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCC95E0(result, a4);
  }

  return result;
}

uint64_t sub_24BCC9A1C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BCC9A7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCC9A98(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_24BCC9B18(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_24BCC9B98(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_24BCC9C18(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_24BCC9CF0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_24BC9EC78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCC9D08(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BCC9F9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void *sub_24BCCA058(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F93748;
  sub_24BCCA14C(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_24BCCA0EC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F93748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCCA14C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *__p = *a3;
  v5 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  sub_24BE7F7B0(a2, __p, *a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24BCCA1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCCA234(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_285F93798;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BCCA26C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93818))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BCCA2B8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_24BCCA390(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_24BC9EC78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCCA3A8(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BCCA6A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

std::string *sub_24BCCA6F0(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  sub_24BCCA758(a1, a2, (a2 + v3));
  return a1;
}

void sub_24BCCA73C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_24BCCA758(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    sub_24BC927D8(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_24BCCA8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCCA8D0(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BCCA9F8;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_24BCCAA0C(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BCCAB34;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

void sub_24BCCABA0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_24BC9EC78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCCABB8(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BCCAE80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCCAEC8(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_24BC8E01C();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16 = a1;
  if (v7)
  {
    sub_24BCCB0AC(a1, v7);
  }

  v8 = 0;
  v9 = (v2 << 6);
  __p = 0;
  v13 = v9;
  v15 = 0;
  *(v9 + 2) = xmmword_24BFBE170;
  *(v9 + 3) = unk_24BFBE180;
  *v9 = xmmword_24BFBE150;
  *(v9 + 1) = unk_24BFBE160;
  do
  {
    *&v9[v8] = *(a2 + v8);
    v8 += 4;
  }

  while (v8 != 64);
  v14 = v9 + 64;
  sub_24BCCB014(a1, &__p);
  v10 = a1[1];
  if (v14 != v13)
  {
    v14 += (v13 - v14 + 63) & 0xFFFFFFFFFFFFFFC0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_24BCCAFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BCCB014(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = 0;
      *v5 = xmmword_24BFBE150;
      v5[1] = unk_24BFBE160;
      v5[2] = xmmword_24BFBE170;
      v5[3] = unk_24BFBE180;
      do
      {
        *(v5 + v6) = *(v2 + v6);
        v6 += 4;
      }

      while (v6 != 64);
      v2 += 64;
      v5 += 4;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void sub_24BCCB0AC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

std::string *sub_24BCCB0F4(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  sub_24BCCA758(this, v3, v4);
  return this;
}

void sub_24BCCB138(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCCB1BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C40(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCCB1D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCCB210(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_24BCCB240(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93898))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_24BCCB2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_24BCCB394(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCCB314(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCCB354(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93910))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BCCB394(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_24BC900B8(a2 + 48, *(a2 + 56));
    v4 = (a2 + 24);
    sub_24BCCB404(&v4);
    v4 = a2;
    sub_24BCCB4E0(&v4);
    return MEMORY[0x24C2548B0](a2, 0x1020C40DA29F49ELL);
  }

  return result;
}

void sub_24BCCB404(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_24BCCB48C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_24BCCB48C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  v3 = *(a2 + 16);
  if (v3)
  {

    sub_24BC9EC78(v3);
  }
}

void sub_24BCCB4E0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_24BCCB568(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_24BCCB568(uint64_t a1, uint64_t a2)
{
  sub_24BCC8A84(a2 + 24, *(a2 + 32));
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_24BCCB5DC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F93938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCCB630(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = MEMORY[0x24C254890](result, 0x1000C8052888210);
    *(a1 + 40) = 0;
  }

  return result;
}

void *sub_24BCCB700(void *a1, float *a2, double *a3, float *a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F93988;
  v6 = *a3;
  v7 = *a5;
  sub_24BD1A708((a1 + 3), *a2, v6, *a4, v7);
  return a1;
}

void sub_24BCCB794(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F93988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

__n128 sub_24BCCB884(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F939D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_24BCCBA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(v18 + i);
  }

  sub_24BE7F218(&a11);
  sub_24BE7F218(&a13);
  a18 = &a15;
  sub_24BCC961C(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCCBAA0(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93A38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24BCCBB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BCCBBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_24BC9EC78(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCCBC0C(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BCCBF0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void sub_24BCCC01C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_24BC9EC78(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BCCC044(uint64_t a1)
{
  sub_24BCCC080(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24BCCC080(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_24BCCC0C4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_24BCCC0C4(uint64_t a1)
{
  sub_24BE7F218(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_24BCCC114(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 40 * a3;
    do
    {
      sub_24BCCC190(a1, a2);
      a2 += 5;
      v5 -= 40;
    }

    while (v5);
  }

  return a1;
}

const void **sub_24BCCC190(void *a1, const void **a2)
{
  v4 = sub_24BCCC4B4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_24BCCC3EC();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_24BCCC960(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_24BCCC3D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCC468(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCCC468(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24BCCC0C4(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t sub_24BCCC4B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_24BCCC4F4(&v5, a2, v3);
}

unint64_t sub_24BCCC4F4(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_24BCCC8A0(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_24BCCC7F4(a2, a3);
  }

  else
  {
    return sub_24BCCC6FC(a2, a3);
  }
}

unint64_t sub_24BCCC6FC(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_24BCCC7F4(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_24BCCC8A0(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_24BCCC960(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void *sub_24BCCC9D8(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 4);
  __dst[3] = *(a2 + 3);
  __dst[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

uint64_t sub_24BCCCA40(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCCCAC8(result, a4);
  }

  return result;
}

void sub_24BCCCAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BCCCC68(&a9);
  _Unwind_Resume(a1);
}

void sub_24BCCCAC8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_24BCCCB14(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BCCCB14(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BCCCB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_24BCCCBF0(a4, v6);
      v6 += 40;
      a4 += 40;
      v7 -= 40;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_24BCCCBCC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 40;
    do
    {
      v4 = sub_24BCCC044(v4) - 40;
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCCCBF0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_24BCA3EB4(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_24BCCC190(a1, i + 2);
  }

  return a1;
}

void sub_24BCCCC68(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_24BCCC044(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_24BCCCD44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_24BC9EC78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCCCDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_24BC9EC78(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCCCDF8(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BCCD11C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void sub_24BCCD164(unsigned int *a1)
{
  v2 = *a1;
  v1 = a1[1];
  operator new[]();
}

void sub_24BCCD428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  MEMORY[0x24C254890](v17, 0x1000C8077774924);
  _Unwind_Resume(a1);
}

void sub_24BCCD48C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_24BC8E01C();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_24BC91F60(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

char *sub_24BCCD560(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BC91F24(a1, v10);
    }

    sub_24BC8E01C();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      v17 = *v5++;
      *result = v17;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 8;
        v12 -= 8;
      }

      while (v12);
    }

    if (v13 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v11 = v16;
        v11 += 8;
        v15 += 8;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

uint64_t sub_24BCCD684(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BCCD6DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCCD768(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F93A58;
  a2[1] = v2;
  return result;
}

void sub_24BCCD794(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (v2)
  {
    v3 = sub_24BE4A2B0(v2);
    v4 = sub_24BE4A2B8(**(a1 + 8), "Preparation");
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_24BC7E000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Preparation", &unk_24C0CF52B, v5, 2u);
    }
  }
}

uint64_t sub_24BCCD84C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93AC8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BCCD908(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F93AE8;
  a2[1] = v2;
  return result;
}

void sub_24BCCD934(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (v2)
  {
    v3 = sub_24BE4A2B0(v2);
    v4 = sub_24BE4A2B8(**(a1 + 8), "Preparation");
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_24BC7E000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Preparation", &unk_24C0CF52B, v5, 2u);
    }
  }
}

uint64_t sub_24BCCD9EC(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93B48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_24BCCDAC4(void *a1, float *a2, void *a3, float *a4, float *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F93B68;
  sub_24BD1ADA0((a1 + 3), a3, *a2, *a4, *a5);
  return a1;
}

void sub_24BCCDB50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F93B68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

__n128 sub_24BCCDC48(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F93BB8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BCCE288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_24BE7F218(v29 - 112);
  sub_24BE7F218(v29 - 160);
  sub_24BE7F218(&a15);
  sub_24BE7F218(&a24);
  *(v29 - 160) = &a26;
  sub_24BCC961C((v29 - 160));
  sub_24BE7F218(&a29);
  _Unwind_Resume(a1);
}

void sub_24BCCE398(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  JUMPOUT(0x24BCCE378);
}

uint64_t sub_24BCCE3E8(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93C18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BCCE434(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 - a1) >> 2;
  if (v4 >= 2)
  {
    v5 = a1;
    v14 = xmmword_24BFBD970;
    v6 = a2 - 4;
    if (a2 - 4 > a1)
    {
      v8 = v4 - 1;
      v9 = a1;
      do
      {
        v13[0] = 0;
        v13[1] = v8;
        v10 = sub_24BCCE4E4(&v14, a3, v13);
        if (v10)
        {
          v11 = *v9;
          *v9 = *(v5 + 4 * v10);
          *(v5 + 4 * v10) = v11;
        }

        ++v9;
        --v8;
        v5 += 4;
      }

      while (v9 < v6);
    }
  }

  return a2;
}

uint64_t sub_24BCCE4E4(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      sub_24BCCE574(v12, a2, 0x40uLL);
      return sub_24BCCE654(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      sub_24BCCE574(v12, a2, v10 - v9);
      do
      {
        v11 = sub_24BCCE654(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t sub_24BCCE574(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x100000000;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x100000000) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & 0x100000000;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x80000000uLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t sub_24BCCE654(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = sub_24BCCE728(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v2 << v5;
      }

      v2 = v6 + (*(a1 + 56) & v4);
      ++v3;
      v7 = *(a1 + 32);
    }

    while (v3 < v7);
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = sub_24BCCE728(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 << (v9 + 1);
    }

    v2 = v10 + (*(a1 + 60) & v8);
  }

  return v2;
}

uint64_t sub_24BCCE728(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t sub_24BCCE838(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F93C38;
  a2[1] = v2;
  return result;
}

void sub_24BCCE864(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (v2)
  {
    v3 = sub_24BE4A2B0(v2);
    v4 = sub_24BE4A2B8(**(a1 + 8), "Optimization");
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_24BC7E000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Optimization", &unk_24C0CF52B, v5, 2u);
    }
  }
}

uint64_t sub_24BCCE91C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93C98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BCCE9D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F93CB8;
  a2[1] = v2;
  return result;
}

void sub_24BCCEA04(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (v2)
  {
    v3 = sub_24BE4A2B0(v2);
    v4 = sub_24BE4A2B8(**(a1 + 8), "Optimization");
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_24BC7E000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Optimization", &unk_24C0CF52B, v5, 2u);
    }
  }
}

uint64_t sub_24BCCEABC(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93D18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BCCEB78(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F93D38;
  a2[1] = v2;
  return result;
}

void sub_24BCCEBA4(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (v2)
  {
    v3 = sub_24BE4A2B0(v2);
    v4 = sub_24BE4A2B8(**(a1 + 8), "PostProcessing");
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_24BC7E000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PostProcessing", &unk_24C0CF52B, v5, 2u);
    }
  }
}

uint64_t sub_24BCCEC5C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93D98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BCCED18(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F93DB8;
  a2[1] = v2;
  return result;
}

void sub_24BCCED44(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (v2)
  {
    v3 = sub_24BE4A2B0(v2);
    v4 = sub_24BE4A2B8(**(a1 + 8), "PostProcessing");
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_24BC7E000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PostProcessing", &unk_24C0CF52B, v5, 2u);
    }
  }
}

uint64_t sub_24BCCEDFC(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93E18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *sub_24BCCEE48(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  sub_24BCCA758(this, a2, v3);
  return this;
}

void sub_24BCCEE88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_24BCCEEA4(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_24BCCF0F8(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          *(v8 + 28) = *(v9 + 28);
          v10 = sub_24BCCF030(v5, &v16, v15 + 4);
          sub_24BC8FEC4(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_24BCCF0F8(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_24BCCF14C(&v13);
  }

  if (a2 != a3)
  {
    sub_24BCCF1A4();
  }

  return result;
}

void *sub_24BCCF030(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v5 = v4;
        v11 = v4[4];
        v9 = v4 + 4;
        v10 = v11;
        v12 = *(v9 + 23);
        v13 = v12 >= 0 ? *(v9 + 23) : v9[1];
        v14 = v12 >= 0 ? v9 : v10;
        v15 = (v13 >= v7 ? v7 : v13);
        v16 = memcmp(v8, v14, v15);
        v17 = v7 < v13;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (!v17)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_25;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_25:
  *a2 = v5;
  return result;
}

void *sub_24BCCF0F8(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_24BCCF14C(uint64_t a1)
{
  sub_24BC900B8(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_24BC900B8(*a1, v2);
  }

  return a1;
}

void sub_24BCCF1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_24BCCF2D8(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCCF2BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24BCCF2D8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_24BCCF2D8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_24BCCF33C(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = &v4[6 * a2];
      do
      {
        *v4 = 0;
        v4[1] = 0;
        v4[5] = 0;
        v4[4] = 0;
        v4[2] = 0;
        v4[3] = v4 + 4;
        v4 += 6;
      }

      while (v4 != v10);
      v4 = v10;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      sub_24BCCF4C0(result, v9);
    }

    v11 = 48 * v6;
    v17 = 0;
    v18 = 48 * v6;
    *(&v19 + 1) = 0;
    v12 = 48 * v6;
    do
    {
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 40) = 0;
      *(v12 + 32) = 0;
      *(v12 + 16) = 0;
      *(v12 + 24) = v12 + 32;
      v12 += 48;
    }

    while (v12 != 48 * v6 + 48 * a2);
    *&v19 = v11 + 48 * a2;
    v13 = result[1];
    v14 = v11 + *result - v13;
    sub_24BCCF518(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = v3[2];
    *(v3 + 1) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return sub_24BCCF6A0(&v17);
  }

  return result;
}

void sub_24BCCF4AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCF6A0(va);
  _Unwind_Resume(a1);
}

void sub_24BCCF4C0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BCCF518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      v10 = *(a2 + v7);
      *(v8 + 16) = *(a2 + v7 + 16);
      *v8 = v10;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = 0;
      *(v8 + 24) = *(a2 + v7 + 24);
      v11 = (a2 + v7 + 32);
      v12 = *v11;
      *(a4 + v7 + 32) = *v11;
      v13 = a4 + v7 + 32;
      v14 = *(a2 + v7 + 40);
      *(v8 + 40) = v14;
      if (v14)
      {
        *(v12 + 16) = v13;
        v9[3] = v11;
        *v11 = 0;
        *(a2 + v7 + 40) = 0;
      }

      else
      {
        *(v8 + 24) = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    v19 = a4 + v7;
    v17 = 1;
    while (v5 != a3)
    {
      sub_24BCCB568(a1, v5);
      v5 += 48;
    }
  }

  return sub_24BCCF614(v16);
}

uint64_t sub_24BCCF614(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BCCF64C(a1);
  }

  return a1;
}

void sub_24BCCF64C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      sub_24BCCB568(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_24BCCF6A0(void **a1)
{
  sub_24BCCF6D4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BCCF6D4(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_24BCCB568(v4, i - 48);
  }
}

void *sub_24BCCF71C(void *result, int *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *a2;
  *(v3 + 4) = *(a2 + 2);
  *v3 = v4;
  v5 = *(a2 + 2);
  *(v3 + 8) = *(a2 + 1);
  *(v3 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 47) < 0)
  {
    result = sub_24BC8DE9C((v3 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 6);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v6;
  }

  v2[1] = v3 + 48;
  return result;
}

void sub_24BCCF7A4(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    sub_24BC9EC78(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCCF7C0(uint64_t *a1, int *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_24BCCF94C(a1, v6);
  }

  v7 = 48 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  v8 = *a2;
  *(v7 + 4) = *(a2 + 2);
  *v7 = v8;
  v9 = *(a2 + 2);
  *(v7 + 8) = *(a2 + 1);
  *(v7 + 16) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 47) < 0)
  {
    sub_24BC8DE9C((v7 + 24), *(a2 + 3), *(a2 + 4));
    v7 = v19;
    v11 = v20;
  }

  else
  {
    v10 = *(a2 + 6);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v10;
    v11 = v7;
  }

  *&v20 = v11 + 48;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  sub_24BCCF9A4(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_24BCCFB04(&v18);
  return v17;
}

void sub_24BCCF924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(v4 + 16);
  if (v6)
  {
    sub_24BC9EC78(v6);
  }

  sub_24BCCFB04(va);
  _Unwind_Resume(a1);
}

void sub_24BCCF94C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BCCF9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 4) = *(v7 + 4);
      *a4 = v8;
      *(a4 + 8) = *(v7 + 8);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_24BCCB48C(a1, v5);
      v5 += 48;
    }
  }

  return sub_24BCCFA78(v11);
}

uint64_t sub_24BCCFA78(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BCCFAB0(a1);
  }

  return a1;
}

void sub_24BCCFAB0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      sub_24BCCB48C(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_24BCCFB04(void **a1)
{
  sub_24BCCFB38(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BCCFB38(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_24BCCB48C(v4, i - 48);
  }
}

uint64_t *sub_24BCCFB80(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_24BCCFCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_24BCCFD68(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCCFCE8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCCFD28(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93E88))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_24BCCFD68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      sub_24BC9EC78(v3);
    }

    v4 = *(a2 + 8);
    if (v4)
    {
      sub_24BC9EC78(v4);
    }

    JUMPOUT(0x24C2548B0);
  }
}

void sub_24BCCFDCC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_24BCCFE4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCFE60(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BCCFE60(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_24BE7F218(v2);
    MEMORY[0x24C2548B0](v3, 0x20C40A4A59CD2);
  }

  return a1;
}

void sub_24BCCFEAC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCCFEE4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_24BE7F218(result);

    JUMPOUT(0x24C2548B0);
  }

  return result;
}

uint64_t sub_24BCCFF28(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93F00))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_24BCCFFEC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F93F28;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_24BCD002C(uint64_t a1, uint64_t ***a2, uint64_t a3)
{
  v8[13] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = (*a2)[1];
  v8[0] = **a2;
  v8[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    v3 = *a2;
  }

  v6 = v3[2];
  v5 = v3[3];
  v7[0] = v6;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BD14904(v8, v7, a3, 0);
}

void sub_24BCD04C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37)
{
  sub_24BE7F218(&a33);
  sub_24BE7F218(&a35);
  sub_24BE7F218(&a37);
  sub_24BE7F218(v37 - 224);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCD05F0(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F93F98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BCD063C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCD06B0(result, a4);
  }

  return result;
}

void sub_24BCD0694(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCD06B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_24BCD06EC(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BCD06EC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BCD0734(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC8F47C(result, a4);
  }

  return result;
}

void sub_24BCD079C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC8EE84(&a9);
  _Unwind_Resume(a1);
}

void *sub_24BCD07BC(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_24BCD0870(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_24BCD08EC(v8);
  return v4;
}

uint64_t sub_24BCD0870(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCD06B0(result, a4);
  }

  return result;
}

void sub_24BCD08D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCD08EC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BCB71DC(a1);
  }

  return a1;
}

void sub_24BCD0990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_24BC9EC78(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCD09C0(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BCD0C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

__n128 sub_24BCD0D6C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F93FB8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

void sub_24BCD0DC4(uint64_t a1, const void ****a2)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = (*a2)[1];
  v29[2] = **a2;
  v29[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    v3 = *a2;
  }

  v5 = v3[3];
  v29[0] = v3[2];
  v29[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    v3 = *a2;
  }

  v6 = v3[5];
  v28[10] = v3[4];
  v28[11] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    v3 = *a2;
  }

  v7 = v3[7];
  v28[8] = v3[6];
  v28[9] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    v3 = *a2;
  }

  v8 = v3[9];
  v28[6] = v3[8];
  v28[7] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    v3 = *a2;
  }

  v9 = v3[11];
  v28[4] = v3[10];
  v28[5] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    v3 = *a2;
  }

  v11 = v3[12];
  v10 = v3[13];
  v28[2] = v11;
  v28[3] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v40 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  sub_24BCC9910(&v25, &v40, v41, 2uLL);
  v12 = ***(a1 + 8);
  if (*(**(a1 + 8) + 8) != v12)
  {
    LODWORD(v38) = *v12;
    HIDWORD(v38) = 12;
    v23 = 0;
    v24 = 0;
    __p = 0;
    sub_24BCC9910(&__p, &v38, v39, 2uLL);
    sub_24BEA8020(v29, &v25, &__p, v13, 0, v28);
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    v36 = 0xC00000000;
    v41[0] = 0;
    v41[1] = 0;
    v40 = 0;
    sub_24BCC9910(&v40, &v36, v37, 2uLL);
    v14 = ***(a1 + 8);
    if (*(**(a1 + 8) + 8) != v14)
    {
      LODWORD(v34) = *v14;
      HIDWORD(v34) = 20;
      v39[0] = 0;
      v39[1] = 0;
      v38 = 0;
      sub_24BCC9910(&v38, &v34, v35, 2uLL);
      sub_24BEA8020(v29, &v40, &v38, v15, 0, &v21);
      if (v38)
      {
        v39[0] = v38;
        operator delete(v38);
      }

      if (v40)
      {
        v41[0] = v40;
        operator delete(v40);
      }

      v32 = 0x1400000000;
      v37[0] = 0;
      v37[1] = 0;
      v36 = 0;
      sub_24BCC9910(&v36, &v32, &v33, 2uLL);
      v16 = ***(a1 + 8);
      if (*(**(a1 + 8) + 8) != v16)
      {
        v30[0] = *v16;
        v30[1] = 21;
        v35[0] = 0;
        v35[1] = 0;
        v34 = 0;
        sub_24BCC9910(&v34, v30, &v31, 2uLL);
        sub_24BEA8020(v29, &v36, &v34, v17, 0, &v20);
        if (v34)
        {
          v35[0] = v34;
          operator delete(v34);
        }

        if (v36)
        {
          v37[0] = v36;
          operator delete(v36);
        }

        v19 = *(a1 + 16);
        v18 = *(a1 + 24);
        sub_24BCC87DC();
      }

      sub_24BC923C0();
    }

    sub_24BC923C0();
  }

  sub_24BC923C0();
}

void sub_24BCD17FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, char a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, char a52, uint64_t a53, char a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  sub_24BE7F218(v72 - 224);
  sub_24BE7F218(&a19);
  sub_24BE7F218(&a21);
  sub_24BE7F218(&a23);
  sub_24BE7F218(&a25);
  sub_24BE7F218(&a27);
  sub_24BE7F218(&a29);
  sub_24BE7F218(&a31);
  sub_24BE7F218(&a39);
  sub_24BE7F218(&a41);
  a41 = v72 - 208;
  sub_24BCC961C(&a41);
  sub_24BE7F218(&a43);
  sub_24BE7F218(&a45);
  sub_24BE7F218(&a47);
  *(v72 - 208) = v72 - 176;
  sub_24BCC961C((v72 - 208));
  sub_24BE7F218(&a50);
  sub_24BE7F218(&a52);
  sub_24BE7F218(&a54);
  sub_24BE7F218(&a62);
  sub_24BE7F218(&a64);
  sub_24BE7F218(&a66);
  sub_24BE7F218(&a68);
  sub_24BE7F218(&a70);
  sub_24BE7F218(&a72);
  sub_24BE7F218(&STACK[0x208]);
  sub_24BE7F218(&STACK[0x218]);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCD1B58(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F94018))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24BCD1C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void *sub_24BCD1CB4(void *a1, float *a2, void *a3, float *a4, float *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F93B68;
  sub_24BD1ADA0((a1 + 3), a3, *a2, *a4, *a5);
  return a1;
}

void sub_24BCD1D20(uint64_t a1, __int128 *a2, _DWORD *a3)
{
  *a1 = *a3;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v3;
  }

  sub_24BCD1DBC();
}

void sub_24BCD1D8C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_24BC9EC78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCD20A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  __cxa_free_exception(v33);
  if (*(v34 - 65) < 0)
  {
    operator delete(*(v34 - 88));
  }

  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  _Unwind_Resume(a1);
}

__n128 sub_24BCD2194@<Q0>(std::string *this@<X1>, uint64_t a2@<X0>, std::string *a3@<X8>)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::string::insert(this, 0, v5, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_24BCD21F0(uint64_t a1)
{
  std::__fs::filesystem::__status((a1 + 24), 0);
  v2 = v21 == 255 || v21 == 0;
  if (v2 && *(a1 + 5) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BC836D4(&v20, "Release texture memory failed, file doesn't exist on ");
    if (*(a1 + 47) < 0)
    {
      sub_24BC8DE9C(&v18, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v18 = *(a1 + 24);
      v19 = *(a1 + 40);
    }

    if (v19 >= 0)
    {
      v14 = &v18;
    }

    else
    {
      v14 = v18;
    }

    if (v19 >= 0)
    {
      v15 = HIBYTE(v19);
    }

    else
    {
      v15 = *(&v18 + 1);
    }

    v16 = std::string::append(&v20, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v22 = v16->__r_.__value_.__r.__words[2];
    v21 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](exception, &v21);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v3 = *(a1 + 4);
  if (v3 == 1)
  {
    v4 = *(a1 + 8);
    if (!v4 || (v5 = *(v4 + 16)) == 0)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      sub_24BC836D4(&v20, "Release texture memory failed, image already released ");
      if (*(a1 + 47) < 0)
      {
        sub_24BC8DE9C(&v18, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        v18 = *(a1 + 24);
        v19 = *(a1 + 40);
      }

      if (v19 >= 0)
      {
        v10 = &v18;
      }

      else
      {
        v10 = v18;
      }

      if (v19 >= 0)
      {
        v11 = HIBYTE(v19);
      }

      else
      {
        v11 = *(&v18 + 1);
      }

      v12 = std::string::append(&v20, v10, v11);
      v13 = *&v12->__r_.__value_.__l.__data_;
      v22 = v12->__r_.__value_.__r.__words[2];
      v21 = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x24C254100](v8, &v21);
      __cxa_throw(v8, &unk_285F93280, MEMORY[0x277D82600]);
    }

    MEMORY[0x24C254890](v5, 0x1000C8052888210);
    *(*(a1 + 8) + 16) = 0;
    v6 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (v6)
    {
      sub_24BC9EC78(v6);
    }

    *(a1 + 4) = 0;
  }

  return v3;
}

void sub_24BCD240C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v26);
  _Unwind_Resume(a1);
}

void sub_24BCD2490(uint64_t a1)
{
  std::__fs::filesystem::__status((a1 + 24), 0);
  if (v15 && v15 != 255 && (*(a1 + 5) & 1) != 0)
  {
    if (*(a1 + 4) != 1)
    {
      sub_24BCD1DBC();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BC836D4(&v14, "Reload texture failed, image wasn't released ");
    if (*(a1 + 47) < 0)
    {
      sub_24BC8DE9C(&v12, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v12 = *(a1 + 24);
      v13 = *(a1 + 40);
    }

    if (v13 >= 0)
    {
      v8 = &v12;
    }

    else
    {
      v8 = v12;
    }

    if (v13 >= 0)
    {
      v9 = HIBYTE(v13);
    }

    else
    {
      v9 = *(&v12 + 1);
    }

    v10 = std::string::append(&v14, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v16 = v10->__r_.__value_.__r.__words[2];
    v15 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](exception, &v15);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v2 = __cxa_allocate_exception(0x10uLL);
  sub_24BC836D4(&v14, "Reload texture failed, file doesn't exist on ");
  if (*(a1 + 47) < 0)
  {
    sub_24BC8DE9C(&v12, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 40);
  }

  if (v13 >= 0)
  {
    v4 = &v12;
  }

  else
  {
    v4 = v12;
  }

  if (v13 >= 0)
  {
    v5 = HIBYTE(v13);
  }

  else
  {
    v5 = *(&v12 + 1);
  }

  v6 = std::string::append(&v14, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16 = v6->__r_.__value_.__r.__words[2];
  v15 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x24C254100](v2, &v15);
  __cxa_throw(v2, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BCD2674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v26);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCD26F8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  result = 1;
  while (v1 != v2)
  {
    if (result)
    {
      result = sub_24BCD21F0(v1);
    }

    else
    {
      result = 0;
    }

    v1 += 48;
  }

  return result;
}

uint64_t sub_24BCD2740(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 != *(a1 + 32))
  {
    sub_24BCD2490(v1);
  }

  return 1;
}

void sub_24BCD278C(void *a1, uint64_t a2)
{
  v32 = a1;
  objc_msgSend_lambdaWeight(v32, v3, v4, v5);
  *a2 = v6;
  objc_msgSend_eta(v32, v7, v8, v9);
  *(a2 + 4) = v10;
  objc_msgSend_mu(v32, v11, v12, v13);
  *(a2 + 8) = v14;
  objc_msgSend_nu(v32, v15, v16, v17);
  *(a2 + 12) = v18;
  objc_msgSend_closenessWeight(v32, v19, v20, v21);
  *(a2 + 16) = v22;
  *(a2 + 20) = objc_msgSend_normalSmoothMaxIterations(v32, v23, v24, v25);
  *(a2 + 24) = objc_msgSend_meshUpdateIterations(v32, v26, v27, v28);
  *(a2 + 28) = objc_msgSend_fixBoundary(v32, v29, v30, v31);
}

void sub_24BCD2840(void *a1, uint64_t a2)
{
  v35 = a1;
  objc_msgSend_lambdaWeight(v35, v3, v4, v5);
  *a2 = v6;
  objc_msgSend_eta(v35, v7, v8, v9);
  *(a2 + 4) = v10;
  objc_msgSend_mu(v35, v11, v12, v13);
  *(a2 + 8) = v14;
  objc_msgSend_nu(v35, v15, v16, v17);
  *(a2 + 12) = v18;
  objc_msgSend_closenessWeight(v35, v19, v20, v21);
  *(a2 + 16) = v22;
  *(a2 + 20) = objc_msgSend_normalSmoothMaxIterations(v35, v23, v24, v25);
  *(a2 + 24) = objc_msgSend_meshUpdateIterations(v35, v26, v27, v28);
  *(a2 + 28) = objc_msgSend_fixBoundary(v35, v29, v30, v31);
  *(a2 + 32) = objc_msgSend_iterations(v35, v32, v33, v34);
}

uint64_t GESSAlgImplicitLaplacianSmooth(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_valid(v3, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v14 = objc_msgSend_meshImpl(v3, v11, v12, v13);
    objc_msgSend_lambda(v4, v15, v16, v17);
    v19 = v18;
    v23 = objc_msgSend_iterations(v4, v20, v21, v22);
    fixed = objc_msgSend_fixBoundary(v4, v24, v25, v26);
    v31 = objc_msgSend_enableTangentialRelaxation(v4, v28, v29, v30);
    v32 = sub_24BE3FFBC(v14, v23, fixed, v31, v19);
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

uint64_t GESSAlgExplicitUmbrellaSmooth(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_valid(v3, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v14 = objc_msgSend_meshImpl(v3, v11, v12, v13);
    objc_msgSend_lambda(v4, v15, v16, v17);
    v19 = v18;
    v23 = objc_msgSend_iterations(v4, v20, v21, v22);
    fixed = objc_msgSend_fixBoundary(v4, v24, v25, v26);
    v31 = objc_msgSend_enableTangentialRelaxation(v4, v28, v29, v30);
    v32 = sub_24BE40AAC(v14, v23, fixed, v31, v19);
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

uint64_t GESSAlgSDSmooth(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_valid(v3, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v14 = objc_msgSend_meshImpl(v3, v11, v12, v13);
    v18 = xmmword_24BFBF8C0;
    v19 = 981668463;
    v20 = 0x1400000005;
    v21 = 1;
    sub_24BCD278C(v4, &v18);
    memset(v25, 0, sizeof(v25));
    memset(v24, 0, sizeof(v24));
    memset(v23, 0, sizeof(v23));
    memset(v22, 0, sizeof(v22));
    v15 = sub_24BC9A66C(v14, &v18, v22);
    sub_24BC9EE14(v25);
    sub_24BC9F10C(v24);
    sub_24BC9F08C(v23);
    sub_24BC9F00C(v22);
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_24BCD2E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_24BC98BA0(va);

  _Unwind_Resume(a1);
}

uint64_t GESSAlgSDDenoise(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_valid(v3, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v14 = objc_msgSend_meshImpl(v3, v11, v12, v13);
    v18 = xmmword_24BFBF8C0;
    v19 = 981668463;
    v20 = 0x1400000005;
    v21 = 1;
    v22 = 5;
    sub_24BCD2840(v4, &v18);
    memset(v26, 0, sizeof(v26));
    memset(v25, 0, sizeof(v25));
    memset(v24, 0, sizeof(v24));
    memset(v23, 0, sizeof(v23));
    v15 = sub_24BC9AB38(v14, &v18, v23);
    sub_24BCD3C30(v26);
    sub_24BC9F10C(v25);
    sub_24BC9F08C(v24);
    sub_24BC9F00C(v23);
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_24BCD3048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_24BCD307C(va);

  _Unwind_Resume(a1);
}

uint64_t sub_24BCD307C(uint64_t a1)
{
  sub_24BCD3C30(a1 + 96);
  sub_24BC9F10C(a1 + 64);
  sub_24BC9F08C(a1 + 32);

  return sub_24BC9F00C(a1);
}

uint64_t sub_24BCD3C30(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_24BCD3CB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_24BCD3DB8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F94038;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BCD3E78(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F94080;
  a2[1] = v2;
  return result;
}

void sub_24BCD3EA4(uint64_t a1, std::error_code *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v3 = MEMORY[0x277CCACA8];
  std::error_code::message(&v16, &v14);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, &v16, v5);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, v16.__r_.__value_.__l.__data_, v5);
  }
  v7 = ;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v15 = *MEMORY[0x277CCA450];
  v16.__r_.__value_.__r.__words[0] = v7;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, &v16, &v15, 1);
  v9 = MEMORY[0x277CCA9B8];
  v10 = sub_24BE7C890();
  v12 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, v10, v14.__val_, v8);

  (*(*(**(a1 + 8) + 104) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24BCD40B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F940C8;
  a2[1] = v2;
  return result;
}

__n128 sub_24BCD40DC(uint64_t a1, __int128 *a2)
{
  v2 = **(a1 + 8) + 40;
  v4 = a2[1];
  result = a2[2];
  v5 = *a2;
  *(v2 + 48) = *(a2 + 12);
  *(v2 + 16) = v4;
  *(v2 + 32) = result;
  *v2 = v5;
  return result;
}

void *sub_24BCD410C(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BCD4364(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

uint64_t sub_24BCD43E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F94110;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BCD44A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F94158;
  a2[1] = v2;
  return result;
}

void sub_24BCD44CC(uint64_t a1, std::error_code *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v3 = MEMORY[0x277CCACA8];
  std::error_code::message(&v16, &v14);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, &v16, v5);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, v16.__r_.__value_.__l.__data_, v5);
  }
  v7 = ;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v15 = *MEMORY[0x277CCA450];
  v16.__r_.__value_.__r.__words[0] = v7;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, &v16, &v15, 1);
  v9 = MEMORY[0x277CCA9B8];
  v10 = sub_24BE7C890();
  v12 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, v10, v14.__val_, v8);

  (*(*(**(a1 + 8) + 104) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24BCD46D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F941A0;
  a2[1] = v2;
  return result;
}

__n128 sub_24BCD4704(uint64_t a1, __int128 *a2)
{
  v2 = **(a1 + 8) + 40;
  v4 = a2[1];
  result = a2[2];
  v5 = *a2;
  *(v2 + 48) = *(a2 + 12);
  *(v2 + 16) = v4;
  *(v2 + 32) = result;
  *v2 = v5;
  return result;
}

void *sub_24BCD4734(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BCD498C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

void sub_24BCD4998(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_24BCB3798(a1);
  v6 = (a2[1] - *a2) >> 2;
  v7 = v6 / 3;
  if (v6 == 3 * (v6 / 3))
  {
    v8 = (a3[1] - *a3) >> 2;
    v9 = v8 / 3;
    if (v8 == 3 * (v8 / 3))
    {
      v10 = v7;
      sub_24BCB38F8(a1, v7);
      v11 = (*(a1 + 8) + 16 * *(a1 + 176));
      v13 = *v11;
      v12 = v11[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v12);
      }

      if (v10)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *a2 + v15;
          *&v17 = *v16;
          *(&v17 + 1) = *(v16 + 8);
          *(*(v13 + 40) + v14) = v17;
          v15 += 12;
          v14 += 16;
        }

        while (12 * v10 != v15);
      }

      sub_24BCB39C8(a1, v9);
      sub_24BCB3CFC(a1);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "indices length not divisible by 3");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "in_positions length not divisible by 3");
  }

  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BCD4BC4(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  sub_24BCB3798(a1);
  v6 = (a2[1] - *a2) >> 3;
  v7 = v6 / 3;
  if (v6 == 3 * (v6 / 3))
  {
    v8 = (a3[1] - *a3) >> 2;
    v9 = v8 / 3;
    if (v8 == 3 * (v8 / 3))
    {
      v10 = v7;
      sub_24BCB38F8(a1, v7);
      v11 = (*(a1 + 8) + 16 * *(a1 + 176));
      v13 = *v11;
      v12 = v11[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v12);
      }

      if (v10)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = (*a2 + v15);
          *&v17 = vcvt_f32_f64(*v16);
          *&v18 = v16[1].f64[0];
          *(&v17 + 1) = v18;
          *(*(v13 + 40) + v14) = v17;
          v15 += 24;
          v14 += 16;
        }

        while (24 * v10 != v15);
      }

      sub_24BCB39C8(a1, v9);
      sub_24BCB3CFC(a1);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "indices length not divisible by 3");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "in_positions length not divisible by 3");
  }

  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BCD4DF8(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  sub_24BCB3798(a1);
  v6 = (a2[1] - *a2) >> 2;
  if (v6 == 3 * (v6 / 3))
  {
    v7 = (a3[1] - *a3) >> 3;
    if (v7 == 3 * (v7 / 3))
    {
      sub_24BCB38F8(a1, v6 / 3);
      v8 = (*(a1 + 8) + 16 * *(a1 + 176));
      v10 = *v8;
      v9 = v8[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v9);
      }

      if (v6 >= 3)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = *a2 + v11;
          *&v14 = *v13;
          *(&v14 + 1) = *(v13 + 8);
          *(*(v10 + 40) + 16 * v12++) = v14;
          v11 += 12;
        }

        while (v6 / 3 != v12);
      }

      sub_24BCB39C8(a1, v7 / 3);
      sub_24BCB3CFC(a1);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "indices length not divisible by 3");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "in_positions length not divisible by 3");
  }

  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BCD5024(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_24BCB3798(a1);
  v6 = (a2[1] - *a2) >> 3;
  if (v6 == 3 * (v6 / 3))
  {
    v7 = (a3[1] - *a3) >> 3;
    if (v7 == 3 * (v7 / 3))
    {
      sub_24BCB38F8(a1, v6 / 3);
      v8 = (*(a1 + 8) + 16 * *(a1 + 176));
      v10 = *v8;
      v9 = v8[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v9);
      }

      if (v6 >= 3)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = (*a2 + v11);
          *&v14 = vcvt_f32_f64(*v13);
          *&v15 = v13[1].f64[0];
          *(&v14 + 1) = v15;
          *(*(v10 + 40) + 16 * v12++) = v14;
          v11 += 24;
        }

        while (v6 / 3 != v12);
      }

      sub_24BCB39C8(a1, v7 / 3);
      sub_24BCB3CFC(a1);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "indices length not divisible by 3");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "in_positions length not divisible by 3");
  }

  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BCD5290(uint64_t a1)
{
  sub_24BCB36B8(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCD52C8(void *a1)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v2 = a1[13];
  v4 = a1[14];
  v3 = a1 + 13;
  v5 = a1[20] - a1[19];
  sub_24BCA123C(v14, 3 * (v5 >> 2));
  sub_24BCB2008(&v13, 3uLL);
  if ((v5 >> 2))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      LODWORD(__p[0]) = v7;
      sub_24BCD567C(a1, __p, &v13);
      v8 = 0;
      v9 = v13;
      v10 = v14[0];
      v11 = v6;
      do
      {
        v10[v11++] = *&v9[v8];
        v8 += 4;
      }

      while (v8 != 12);
      ++v7;
      v6 += 3;
    }

    while (v7 != (v5 >> 2));
  }

  sub_24BCB8C30(v3);
  sub_24BCB9404(v3, ((v4 - v2) >> 2));
  memset(__p, 0, sizeof(__p));
  sub_24BCB944C(v3, (v5 >> 2));
  sub_24BCB3CFC(a1);
}

void sub_24BCD5610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCD567C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = sub_24BCB9038(a1 + 104, a2);
  v7 = sub_24BCB9024(a1 + 104, v6);
  **a3 = *(sub_24BCB9024(a1 + 104, v7) + 12);
  v8 = sub_24BCB9038(a1 + 104, a2);
  v9 = sub_24BCB9024(a1 + 104, v8);
  v10 = sub_24BCB9024(a1 + 104, (v9 + 8));
  *(*a3 + 4) = *(sub_24BCB9024(a1 + 104, v10) + 12);
  v11 = sub_24BCB9038(a1 + 104, a2);
  result = sub_24BCB9024(a1 + 104, v11);
  *(*a3 + 8) = *(result + 12);
  return result;
}

_DWORD *sub_24BCD573C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = sub_24BCB9038(a1 + 104, a2);
  **a3 = *(sub_24BCB9024(a1 + 104, v6) + 8);
  v7 = sub_24BCB9038(a1 + 104, a2);
  *(*a3 + 4) = *(sub_24BCB9024(a1 + 104, v7) + 4);
  result = sub_24BCB9038(a1 + 104, a2);
  *(*a3 + 8) = *result;
  return result;
}

uint64_t sub_24BCD57C8(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  if (((a2[2] - *a2) & 4) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 160) - *(a1 + 152);
  if ((v5 >> 1) + (v5 >> 2) != (a3[1] - *a3) >> 2)
  {
    return 0;
  }

  sub_24BC836D4(__p, off_27F078F78[0]);
  v32 = 0;
  v7 = sub_24BCB74D4((a1 + 80), &v32, __p);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 == -1)
  {
    sub_24BC836D4(__p, off_27F078F78[0]);
    v32 = 0;
    sub_24BCDB6E4(a1 + 80);
  }

  sub_24BC836D4(__p, off_27F078FB8[0]);
  v33 = 0;
  v32 = 0;
  v8 = sub_24BCCAA0C((a1 + 56), &v32, __p);
  v29 = v8;
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 == -1)
  {
    sub_24BC836D4(__p, off_27F078FB8[0]);
    sub_24BCD5A78(a1);
  }

  v9 = *(a1 + 80) + 16 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v10);
  }

  v12 = ((*(a2 + 1) - *a2) >> 3);
  (*(*v11 + 32))(v11, v12);
  if (v12)
  {
    v13 = *a2;
    v14 = v11[5];
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
  }

  v16 = *(a1 + 56) + 16 * v29;
  v18 = *v16;
  v17 = *(v16 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v17);
  }

  (*(*v18 + 32))(v18, (*(a1 + 160) - *(a1 + 152)) >> 2);
  v19 = *(a1 + 160) - *(a1 + 152);
  if (v19)
  {
    v20 = v19 >> 2;
    v21 = *a3;
    v22 = (v18[5] + 8);
    v23 = 2;
    v24 = 1;
    do
    {
      v25 = *(v21 + 4 * (v23 - 1));
      v26 = *(v21 + 4 * v23);
      *(v22 - 2) = *(v21 + 4 * (v23 - 2));
      *(v22 - 1) = v25;
      *v22 = v26;
      v22 += 3;
      v23 += 3;
    }

    while (v20 > v24++);
  }

  return 1;
}

void sub_24BCD5A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCD5AF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_24BC836D4(__p, off_27F078F78[0]);
  v30 = 0;
  v6 = sub_24BCB74D4((a1 + 80), &v30, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 == -1)
  {
    return 0;
  }

  sub_24BC836D4(__p, off_27F078FB8[0]);
  v31 = 0;
  v30 = 0;
  v7 = sub_24BCCAA0C((a1 + 56), &v30, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 == -1)
  {
    return 0;
  }

  v8 = *(a1 + 80) + 16 * v6;
  v10 = *v8;
  v9 = *(v8 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v9);
  }

  v11 = *(a1 + 56) + 16 * v7;
  v13 = *v11;
  v12 = *(v11 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v12);
  }

  v14 = (*(*v10 + 16))(v10);
  sub_24BC8CAB0(a2, 2 * v14);
  v15 = (*(*v13 + 16))(v13);
  sub_24BC8CAB0(a3, 3 * v15);
  if ((*(*v10 + 16))(v10))
  {
    v16 = 0;
    v17 = 1;
    v18 = 1;
    do
    {
      v19 = (v10[5] + 8 * v16);
      v20 = *a2;
      *(*a2 + 4 * (v17 - 1)) = *v19;
      *(v20 + 4 * v17) = v19[1];
      v16 = v18;
      v21 = (*(*v10 + 16))(v10) > v18++;
      v17 += 2;
    }

    while (v21);
  }

  if ((*(*v13 + 16))(v13))
  {
    v22 = 0;
    v23 = 1;
    v24 = 1;
    do
    {
      v25 = (v13[5] + 12 * v22);
      v26 = *a3;
      *(*a3 + 4 * (v24 - 1)) = *v25;
      *(v26 + 4 * v24) = v25[1];
      *(v26 + 4 * (v24 + 1)) = v25[2];
      v22 = v23;
      v24 += 3;
      v21 = (*(*v13 + 16))(v13) > v23++;
    }

    while (v21);
  }

  return 1;
}

void sub_24BCD5DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCD5DD0(uint64_t a1, unsigned int *a2, int a3, _DWORD *a4)
{
  v8 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
  if ((v9 & *v8) != 0)
  {
    return 0;
  }

  v10 = sub_24BCB9024(a1 + 104, a2);
  v11 = sub_24BC9ECE4(a1, *(a1 + 180), *v10);
  if ((v12 & *v11) != 0)
  {
    return 0;
  }

  v108 = *a2;
  v107 = *(sub_24BCB9024(a1 + 104, &v108) + 8);
  v106 = *(sub_24BCB9024(a1 + 104, &v107) + 8);
  v105 = *sub_24BCB9024(a1 + 104, &v108);
  v104 = *(sub_24BCB9024(a1 + 104, &v105) + 8);
  v103 = *(sub_24BCB9024(a1 + 104, &v104) + 8);
  v102 = *(sub_24BCB9024(a1 + 104, &v108) + 16);
  v101 = *(sub_24BCB9024(a1 + 104, &v105) + 16);
  v100 = *(sub_24BCB9024(a1 + 104, &v108) + 12);
  v13 = v100;
  v99 = *(sub_24BCB9024(a1 + 104, &v105) + 12);
  v14 = v99;
  v98 = *(sub_24BCB9024(a1 + 104, &v106) + 12);
  v15 = sub_24BCB9024(a1 + 104, &v103);
  v16 = *(v15 + 12);
  v97 = *(v15 + 12);
  if (v100 == v99)
  {
    return 0;
  }

  result = 0;
  if (v99 != v98 && v100 != v98 && v100 != v16 && v99 != v16 && v98 != v16)
  {
    sub_24BCB8F94(v96, (a1 + 104), &v98);
    while (1)
    {
      v18 = sub_24BCB8FBC(v96);
      if (v18 == -1)
      {
        break;
      }

      if (v18 == v16)
      {
        return 0;
      }
    }

    if (!a3)
    {
LABEL_30:
      if (*a4 == -1)
      {
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v80 = 0;
      }

      else
      {
        sub_24BCB2008(__p, 3uLL);
        sub_24BCD567C(a1, &v102, __p);
        v63 = 0;
        v64 = v100;
        while (*(__p[0] + v63) != v100)
        {
          if (++v63 == 3)
          {
            v63 = 0;
            break;
          }
        }

        v65 = 0;
        v66 = v99;
        while (*(__p[0] + v65) != v99)
        {
          if (++v65 == 3)
          {
            LODWORD(v65) = 0;
            break;
          }
        }

        sub_24BCD567C(a1, &v101, __p);
        v67 = 0;
        while (*(__p[0] + v67) != v64)
        {
          if (++v67 == 3)
          {
            LODWORD(v67) = 0;
            break;
          }
        }

        v68 = 0;
        while (*(__p[0] + v68) != v66)
        {
          if (++v68 == 3)
          {
            v68 = 0;
            break;
          }
        }

        v69 = (*(a1 + 56) + 16 * *a4);
        v71 = *v69;
        v70 = v69[1];
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v70);
          v72 = (*(a1 + 56) + 16 * *a4);
          v74 = *v72;
          v73 = v72[1];
          v75 = *(v71 + 40) + 12 * v102;
          if (v73)
          {
            atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v73);
          }

          v71 = v74;
        }

        else
        {
          v75 = *(v71 + 40) + 12 * v102;
        }

        v81 = *(v71 + 40) + 12 * v101;
        v79 = *(v75 + 4 * v63);
        if (v79 == *(v81 + 4 * v67) && (v78 = *(v75 + 4 * v65), v78 == *(v81 + 4 * v68)))
        {
          v80 = 0;
          v77 = *(v75 + 4 * ((v65 + 1) % 3u));
          v76 = *(v81 + 4 * ((v67 + 1) % 3u));
        }

        else
        {
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 1;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      sub_24BCB9048(a1 + 104, &v107, &v105);
      sub_24BCB9048(a1 + 104, &v105, &v103);
      sub_24BCB9048(a1 + 104, &v103, &v107);
      sub_24BCB9048(a1 + 104, &v108, &v106);
      sub_24BCB9048(a1 + 104, &v106, &v104);
      sub_24BCB9048(a1 + 104, &v104, &v108);
      sub_24BCB90C8((a1 + 104), &v108, &v97);
      sub_24BCB90C8((a1 + 104), &v105, &v98);
      sub_24BCB90F0((a1 + 104), &v100, &v104);
      sub_24BCB90F0((a1 + 104), &v99, &v107);
      sub_24BCB90F0((a1 + 104), &v98, &v106);
      sub_24BCB90F0((a1 + 104), &v97, &v103);
      sub_24BCB90A0(a1 + 104, &v102, &v104);
      sub_24BCB90A0(a1 + 104, &v101, &v107);
      result = 1;
      if ((v80 & 1) == 0)
      {
        v82 = *a4;
        if (v82 != -1)
        {
          v83 = *(a1 + 56);
          v84 = (v83 + 16 * v82);
          v86 = *v84;
          v85 = v84[1];
          if (v85)
          {
            atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v85);
            v83 = *(a1 + 56);
          }

          v87 = (*(v86 + 40) + 12 * v102);
          *v87 = v76;
          v87[1] = v77;
          v87[2] = v79;
          v88 = (v83 + 16 * *a4);
          v90 = *v88;
          v89 = v88[1];
          if (v89)
          {
            atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v89);
          }

          v91 = (*(v90 + 40) + 12 * v101);
          *v91 = v77;
          v91[1] = v76;
          v91[2] = v78;
          return 1;
        }
      }

      return result;
    }

    v19 = (*(a1 + 8) + 16 * *(a1 + 176));
    v21 = *v19;
    v20 = v19[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v20);
      v22 = (*(a1 + 8) + 16 * *(a1 + 176));
      v24 = *v22;
      v23 = v22[1];
      v25 = *(v21 + 40);
      v26 = *(v25 + 16 * v13);
      if (v23)
      {
        v94 = *(v25 + 16 * v13);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v23);
        v27 = (*(a1 + 8) + 16 * *(a1 + 176));
        v21 = *v27;
        v28 = v27[1];
        v29 = *(*(v24 + 40) + 16 * v14);
        v30 = v98;
        if (v28)
        {
          v93 = v29;
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v28);
          v31 = (*(a1 + 8) + 16 * *(a1 + 176));
          v33 = *v31;
          v32 = v31[1];
          v34 = *(*(v21 + 40) + 16 * v30);
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            v92 = v34;
            sub_24BC9EC78(v32);
            v34 = v92;
          }

          v29 = v93;
          v26 = v94;
LABEL_26:
          v35 = *(*(v33 + 40) + 16 * v16);
          v36 = vsubq_f32(v29, v26);
          v37 = vsubq_f32(v34, v26);
          v38 = vsubq_f32(v29, v35);
          v39 = vsubq_f32(v34, v35);
          v40 = vzip2q_s32(vzip1q_s32(v36, vextq_s8(v36, v36, 0xCuLL)), v36);
          v41 = vuzp2q_s32(vextq_s8(v37, v37, 4uLL), v37);
          v42 = vuzp2q_s32(vextq_s8(v36, v36, 4uLL), v36);
          v43 = vzip2q_s32(vzip1q_s32(v37, vextq_s8(v37, v37, 0xCuLL)), v37);
          v44 = vmlsq_f32(vmulq_f32(v40, v41), v43, v42);
          v45 = vmulq_f32(v44, v44);
          v45.i32[3] = 0;
          v46 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v38, vextq_s8(v38, v38, 0xCuLL)), v38), vuzp2q_s32(vextq_s8(v39, v39, 4uLL), v39)), vzip2q_s32(vzip1q_s32(v39, vextq_s8(v39, v39, 0xCuLL)), v39), vuzp2q_s32(vextq_s8(v38, v38, 4uLL), v38));
          v47 = vmulq_f32(v46, v46);
          v47.i32[3] = 0;
          v48 = vaddv_f32(*&vpaddq_f32(v47, v47));
          v49 = vmulq_f32(v44, v46);
          v49.i32[3] = 0;
          v50 = vaddv_f32(*&vpaddq_f32(v45, v45)) * 0.70711;
          if (vaddv_f32(*&vpaddq_f32(v49, v49)) < (v50 * v48))
          {
            return 0;
          }

          v51 = vsubq_f32(v35, v26);
          v52 = vzip2q_s32(vzip1q_s32(v51, vextq_s8(v51, v51, 0xCuLL)), v51);
          v53 = vuzp2q_s32(vextq_s8(v51, v51, 4uLL), v51);
          v54 = vmlsq_f32(vmulq_f32(v41, v52), v43, v53);
          v55 = vmulq_f32(v54, v54);
          v55.i32[3] = 0;
          v56 = vaddv_f32(*&vpaddq_f32(v55, v55));
          v57 = vmulq_f32(v44, v54);
          v57.i32[3] = 0;
          if (vaddv_f32(*&vpaddq_f32(v57, v57)) < (v50 * v56))
          {
            return 0;
          }

          v58 = vmlsq_f32(vmulq_f32(v42, v52), v40, v53);
          v59 = vmulq_f32(v58, v58);
          v59.i32[3] = 0;
          v60 = vmulq_f32(v58, v46);
          v60.i32[3] = 0;
          v61 = vaddv_f32(*&vpaddq_f32(v59, v59)) * 0.70711;
          if (vaddv_f32(*&vpaddq_f32(v60, v60)) < (v61 * v48))
          {
            return 0;
          }

          v62 = vmulq_f32(v58, v54);
          v62.i32[3] = 0;
          if (vaddv_f32(*&vpaddq_f32(v62, v62)) < (v61 * v56))
          {
            return 0;
          }

          goto LABEL_30;
        }

        v26 = v94;
LABEL_25:
        v34 = *(*(v21 + 40) + 16 * v30);
        v33 = v21;
        goto LABEL_26;
      }

      v21 = v24;
    }

    else
    {
      v26 = *(*(v21 + 40) + 16 * v13);
    }

    v29 = *(*(v21 + 40) + 16 * v14);
    v30 = v98;
    goto LABEL_25;
  }

  return result;
}

void sub_24BCD6570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCD658C(uint64_t a1, unsigned int *a2, unsigned int *a3, int a4)
{
  v35[3] = *MEMORY[0x277D85DE8];
  v8 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
  v10 = v9 & *v8;
  v11 = sub_24BCB9024(a1 + 104, a2);
  v12 = v11;
  if (v10)
  {
    v13 = *MEMORY[0x277D85DE8];
    v14 = a1;
    v15 = v12;
LABEL_5:

    return sub_24BCD6828(v14, v15, a3);
  }

  v16 = sub_24BC9ECE4(a1, *(a1 + 180), *v11);
  if ((v17 & *v16) != 0)
  {
    v18 = *MEMORY[0x277D85DE8];
    v14 = a1;
    v15 = a2;
    goto LABEL_5;
  }

  v20 = sub_24BCB9024(a1 + 104, a2);
  v21 = sub_24BCB9024(a1 + 104, (v20 + 8));
  v22 = *(sub_24BCB9024(a1 + 104, v21) + 12);
  v23 = sub_24BCB9024(a1 + 104, a2);
  v24 = sub_24BCB9024(a1 + 104, v23);
  if (v22 == *(sub_24BCB9024(a1 + 104, (v24 + 4)) + 12))
  {
    result = 0;
  }

  else
  {
    memset(v35, 255, 24);
    v25 = -858993459 * ((*(a1 + 136) - *(a1 + 128)) >> 2);
    sub_24BCB3960(a1, v25 + 6);
    for (i = 0; i != 24; i += 4)
    {
      *(v35 + i) = v25;
      v27 = sub_24BC9ECE4(a1, *(a1 + 180), v25);
      *v27 &= ~v28;
      ++v25;
    }

    v29 = (*(a1 + 160) - *(a1 + 152)) >> 2;
    sub_24BCB39C8(a1, (v29 + 2));
    v34[0] = v29;
    v34[1] = v29 + 1;
    v30 = *a3;
    if (*a3 == -1)
    {
      v33 = -1;
      *a3 = sub_24BCB9118(a1 + 104, &v33);
      v31 = (*(*a1 + 16))(a1);
      sub_24BCB514C(*(a1 + 8), *(a1 + 16), v31);
    }

    result = sub_24BCD73E8(a1, a2, a3, v34, v35, a4, v30 == -1);
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BCD6828(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a2;
  v6 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
  if ((v7 & *v6) == 0)
  {
    v8 = sub_24BCB9024(a1 + 104, v4);
    v9 = sub_24BC9ECE4(a1, *(a1 + 180), *v8);
    if ((v10 & *v9) == 0)
    {
      return 0;
    }
  }

  sub_24BC836D4(__p, off_27F078F78[0]);
  v130 = 0;
  v11 = sub_24BCB74D4((a1 + 80), &v130, __p);
  if (v129 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, off_27F078FB8[0]);
  LODWORD(v131) = 0;
  v130 = 0;
  v114 = sub_24BCCAA0C((a1 + 56), &v130, __p);
  if (v129 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, off_27F078F90[0]);
  v130 = 0;
  v131 = 0;
  v12 = sub_24BCB6470((a1 + 8), &v130, __p);
  if (v129 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, off_27F078F98[0]);
  v130 = 0;
  v131 = 0;
  v13 = sub_24BCB6470((a1 + 8), &v130, __p);
  if (v129 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = sub_24BC9ECE4(a1, *(a1 + 180), *v4);
  if ((v15 & *v14) != 0)
  {
    v4 = sub_24BCB9024(a1 + 104, v4);
  }

  LODWORD(v130) = *v4;
  v127 = *sub_24BCB9024(a1 + 104, &v130);
  v126 = *(sub_24BCB9024(a1 + 104, &v130) + 8);
  v125 = *(sub_24BCB9024(a1 + 104, &v126) + 8);
  v124 = *(sub_24BCB9024(a1 + 104, &v127) + 8);
  v123 = *(sub_24BCB9024(a1 + 104, &v130) + 16);
  v16 = sub_24BCB9024(a1 + 104, &v130);
  v17 = *(v16 + 12);
  v122 = *(v16 + 12);
  v121 = *(sub_24BCB9024(a1 + 104, &v126) + 12);
  v120 = *(sub_24BCB9024(a1 + 104, &v125) + 12);
  if (*a3 == -1)
  {
    v18 = (*(a1 + 8) + 16 * *(a1 + 176));
    v20 = *v18;
    v19 = v18[1];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v19);
      v21 = (*(a1 + 8) + 16 * *(a1 + 176));
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v20 + 40) + 16 * v17);
      v25 = v121;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        v110 = v24;
        sub_24BC9EC78(v22);
        v24 = v110;
      }

      v20 = v23;
    }

    else
    {
      v24 = *(*(v20 + 40) + 16 * v17);
      v25 = v121;
    }

    v27 = vaddq_f32(v24, *(*(v20 + 40) + 16 * v25));
    v28.i64[0] = 0x3F0000003F000000;
    v28.i64[1] = 0x3F0000003F000000;
    *__p = vmulq_f32(v27, v28);
    v119 = -1;
    *a3 = sub_24BCD869C(a1, __p, &v119);
  }

  LODWORD(__p[0]) = -1;
  v119 = sub_24BCD8740(a1, __p);
  if (v12 != -1)
  {
    v29 = (*(a1 + 8) + 16 * v12);
    v31 = *v29;
    v30 = v29[1];
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v30);
      v32 = (*(a1 + 8) + 16 * v12);
      v34 = *v32;
      v33 = v32[1];
      v35 = (*(v31 + 40) + 16 * v121);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v33);
        v36 = (*(a1 + 8) + 16 * v12);
        v31 = *v36;
        v37 = v36[1];
        v38 = vaddq_f32(*(*(v34 + 40) + 16 * v17), *v35);
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          v111 = v38;
          sub_24BC9EC78(v37);
          v38 = v111;
        }

        goto LABEL_29;
      }

      v31 = *v32;
    }

    else
    {
      v35 = (*(v31 + 40) + 16 * v121);
    }

    v38 = vaddq_f32(*(*(v31 + 40) + 16 * v17), *v35);
LABEL_29:
    v39.i64[0] = 0x3F0000003F000000;
    v39.i64[1] = 0x3F0000003F000000;
    *(*(v31 + 40) + 16 * *a3) = vmulq_f32(v38, v39);
  }

  if (v13 != -1)
  {
    v40 = (*(a1 + 8) + 16 * v13);
    v42 = *v40;
    v41 = v40[1];
    if (v41)
    {
      v43 = v13;
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v41);
      v44 = (*(a1 + 8) + 16 * v13);
      v45 = *v44;
      v41 = v44[1];
      v46 = (*(v42 + 40) + 16 * v121);
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v41);
        v47 = (*(a1 + 8) + 16 * v43);
        v42 = v45;
        v45 = *v47;
        v41 = v47[1];
      }

      else
      {
        v42 = *v44;
      }
    }

    else
    {
      v46 = (*(v42 + 40) + 16 * v121);
      v45 = *v40;
    }

    v48.i64[0] = 0x3F0000003F000000;
    v48.i64[1] = 0x3F0000003F000000;
    v49 = vmulq_f32(vaddq_f32(*(*(v42 + 40) + 16 * v122), *v46), v48);
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      v112 = v49;
      sub_24BC9EC78(v41);
      v49 = v112;
    }

    *(*(v45 + 40) + 16 * *a3) = v49;
  }

  v50 = v122;
  sub_24BCB1BC8(a1, v122, *a3, 0);
  sub_24BCB50D4(a1, a3, &v121);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = v11 == -1 || v114 == -1;
  v56 = !v55;
  v113 = v56;
  if (!v55)
  {
    sub_24BCB2008(__p, 3uLL);
    sub_24BCD567C(a1, &v123, __p);
    v57 = 0;
    while (*(__p[0] + v57) != v50)
    {
      if (++v57 == 3)
      {
        LODWORD(v57) = 0;
        break;
      }
    }

    v58 = (*(a1 + 56) + 16 * v114);
    v60 = *v58;
    v59 = v58[1];
    if (v59)
    {
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v59);
      v61 = (*(a1 + 56) + 16 * v114);
      v62 = *v61;
      v59 = v61[1];
      v63 = v123;
      v54 = *(*(v60 + 40) + 12 * v123 + 4 * v57);
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v59);
        v63 = v123;
        v64 = (*(a1 + 56) + 16 * v114);
        v60 = v62;
        v62 = *v64;
        v59 = v64[1];
      }

      else
      {
        v60 = v62;
      }
    }

    else
    {
      v63 = v123;
      v54 = *(*(v60 + 40) + 12 * v123 + 4 * v57);
      v62 = v60;
    }

    if (v57 > 1)
    {
      v65 = -2;
    }

    else
    {
      v65 = 1;
    }

    v53 = *(*(v60 + 40) + 12 * v63 + 4 * (v65 + v57));
    if (v59)
    {
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v59);
      v63 = v123;
    }

    v66 = *(v62 + 40) + 12 * v63;
    if (v57)
    {
      v67 = v57 - 1;
    }

    else
    {
      v67 = 2;
    }

    v52 = *(v66 + 4 * v67);
    v68 = (*(a1 + 80) + 16 * v11);
    v70 = *v68;
    v69 = v68[1];
    if (v69)
    {
      atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v69);
    }

    (*(*v70 + 48))(v70);
    v71 = v11;
    v72 = (*(a1 + 80) + 16 * v11);
    v74 = *v72;
    v73 = v72[1];
    if (v73)
    {
      atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v73);
    }

    v75 = (*(*v74 + 16))(v74);
    v76 = (*(a1 + 80) + 16 * v71);
    v78 = *v76;
    v77 = v76[1];
    if (v77)
    {
      atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v77);
      v79 = (*(a1 + 80) + 16 * v71);
      v80 = *v79;
      v77 = v79[1];
      v81 = (*(v78 + 40) + 8 * v54);
      if (v77)
      {
        atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v77);
        v82 = (*(a1 + 80) + 16 * v71);
        v78 = v80;
        v80 = *v82;
        v77 = v82[1];
      }

      else
      {
        v78 = *v79;
      }
    }

    else
    {
      v81 = (*(v78 + 40) + 8 * v54);
      v80 = *v76;
    }

    v51 = v75 - 1;
    v83 = vmul_f32(vadd_f32(*v81, *(*(v78 + 40) + 8 * v53)), 0x3F0000003F000000);
    if (v77)
    {
      atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v77);
    }

    *(*(v80 + 40) + 8 * v51) = v83;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v84 = -858993459 * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  sub_24BCB3960(a1, v84 + 4);
  v117 = v84 + 1;
  v118 = v84;
  v115 = v84 + 3;
  v116 = v84 + 2;
  v85 = sub_24BC9ECE4(a1, *(a1 + 180), v84);
  *v85 &= ~v86;
  v87 = sub_24BC9ECE4(a1, *(a1 + 180), v84 + 1);
  *v87 &= ~v88;
  v89 = sub_24BC9ECE4(a1, *(a1 + 180), v84 + 2);
  *v89 &= ~v90;
  v91 = sub_24BC9ECE4(a1, *(a1 + 180), v84 + 3);
  *v91 |= v92;
  sub_24BCB9048(a1 + 104, &v126, &v118);
  sub_24BCB9048(a1 + 104, &v118, &v130);
  sub_24BCB9048(a1 + 104, &v125, &v116);
  sub_24BCB9048(a1 + 104, &v116, &v117);
  sub_24BCB9048(a1 + 104, &v117, &v125);
  sub_24BCB9048(a1 + 104, &v127, &v115);
  sub_24BCB9048(a1 + 104, &v115, &v124);
  sub_24BCB9074(a1 + 104, &v118, &v117);
  sub_24BCB9074(a1 + 104, &v116, &v115);
  sub_24BCB90C8((a1 + 104), &v130, a3);
  sub_24BCB90C8((a1 + 104), &v118, &v120);
  sub_24BCB90C8((a1 + 104), &v117, a3);
  sub_24BCB90C8((a1 + 104), &v116, &v122);
  sub_24BCB90C8((a1 + 104), &v115, a3);
  sub_24BCB90A0(a1 + 104, &v123, &v118);
  sub_24BCB90A0(a1 + 104, &v119, &v117);
  sub_24BCB90A0(a1 + 104, &v119, &v125);
  sub_24BCB90A0(a1 + 104, &v119, &v116);
  if (v113)
  {
    v93 = (*(*a1 + 32))(a1);
    sub_24BCB514C(*(a1 + 56), *(a1 + 64), v93);
    v94 = (*(a1 + 56) + 16 * v114);
    v96 = *v94;
    v95 = v94[1];
    if (v95)
    {
      atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v95);
      v97 = (*(a1 + 56) + 16 * v114);
      v98 = *v97;
      v95 = v97[1];
    }

    else
    {
      v98 = *v94;
    }

    v99 = (*(v96 + 40) + 12 * v123);
    *v99 = v51;
    v99[1] = v53;
    v99[2] = v52;
    if (v95)
    {
      atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v95);
    }

    v100 = (*(v98 + 40) + 12 * v119);
    *v100 = v51;
    v100[1] = v52;
    v100[2] = v54;
  }

  sub_24BC836D4(__p, "th:isnew_subdiv");
  v132[0] = 0;
  v101 = sub_24BCDCDF8((a1 + 32), v132, __p);
  if (v129 < 0)
  {
    operator delete(__p[0]);
  }

  if (v101 != -1)
  {
    sub_24BC836D4(__p, "tv:isnew_subdiv");
    v132[0] = 0;
    v102 = sub_24BCDCDF8((a1 + 8), v132, __p);
    if (v129 < 0)
    {
      operator delete(__p[0]);
    }

    if (v102 != -1)
    {
      v103 = (*(a1 + 32) + 16 * v101);
      v105 = *v103;
      v104 = v103[1];
      if (v104)
      {
        atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v104);
      }

      v106 = *(v105 + 40);
      *(v106 + ((v118 >> 3) & 0x1FFFFFF8)) |= 1 << v118;
      *(v106 + ((v117 >> 3) & 0x1FFFFFF8)) |= 1 << v117;
      *(v106 + ((v116 >> 3) & 0x1FFFFFF8)) &= ~(1 << v116);
      *(v106 + ((v115 >> 3) & 0x1FFFFFF8)) &= ~(1 << v115);
      v107 = (*(a1 + 8) + 16 * v102);
      v109 = *v107;
      v108 = v107[1];
      if (v108)
      {
        atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v108);
      }

      *(*(v109 + 40) + ((*a3 >> 3) & 0x1FFFFFF8)) |= 1 << *a3;
    }
  }

  return 1;
}