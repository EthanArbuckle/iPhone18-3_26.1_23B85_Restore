void sub_24BE3C2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  sub_24BD6B968(v24, a6);
  v8 = 0;
  v9 = std::system_category();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 1;
  v15 = 0;
  v17 = 0;
  v16 = 0;
  v18 = 0;
  v19 = 0;
  v20 = v9;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  sub_24BCB35B4(v7, a1);
  v7[0] = &unk_285F941E8;
  sub_24BE3E800(v7);
}

void sub_24BE3C8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(*(v56 + 336));
  }

  sub_24BCD528C(&a12);
  sub_24BD6B9D8(&a56);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE3C988(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BE3CA20(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BE3CAB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = result + 16 * v3;
    v5 = *(a2 - 8);
    if (*(v4 + 8) < v5)
    {
      v8 = *(a2 - 16);
      v6 = a2 - 16;
      v7 = v8;
      do
      {
        v9 = v6;
        v6 = v4;
        *v9 = *v4;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = result + 16 * v3;
      }

      while (*(v4 + 8) < v5);
      *v6 = v7;
      *(v6 + 8) = v5;
    }
  }

  return result;
}

uint64_t sub_24BE3CB84(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96D78;
  a2[1] = v2;
  return result;
}

__n128 sub_24BE3CBB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *v2 = *a2;
  result = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(v2 + 64) = *(a2 + 64);
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 16) = result;
  return result;
}

void *sub_24BE3CBD8(void *result, void *a2)
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

void sub_24BE3CE30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

uint64_t sub_24BE3CEAC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96DC0;
  a2[1] = v2;
  return result;
}

__n128 sub_24BE3CED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  result = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  *(v2 + 76) = *(a2 + 76);
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  *(v2 + 32) = result;
  return result;
}

uint64_t sub_24BE3CF70(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96E08;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BE3D034(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96E50;
  a2[1] = v2;
  return result;
}

void sub_24BE3D060(uint64_t a1, std::string **a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    sub_24BE3D090(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

void sub_24BE3D090(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_24BE3D230(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BD2E1AC(a1, v10);
    }

    sub_24BC8E01C();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_24BE3D270(a1, (v6 + v12), a3, v11);
  }
}

void sub_24BE3D230(uint64_t a1)
{
  if (*a1)
  {
    sub_24BC8DC58(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

char *sub_24BE3D270(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_24BC8DE9C(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_24BE3D330(v9);
  return v4;
}

uint64_t sub_24BE3D330(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BD2E2F0(a1);
  }

  return a1;
}

uint64_t sub_24BE3D3D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96E98;
  a2[1] = v2;
  return result;
}

double sub_24BE3D404(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 336);
  *(v2 + 408) = *(a2 + 328);
  *(v2 + 416) = v3;
  *(v2 + 424) = *(a2 + 344);
  *(v2 + 384) = *(a2 + 304);
  result = *(a2 + 384);
  *(v2 + 464) = result;
  return result;
}

void *sub_24BE3D42C(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_24BC8DE9C(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_24BE3D48C(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_24BC8E034(a1, v6);
  }

  v7 = 24 * v2;
  v16 = 0;
  v17 = 24 * v2;
  v18 = 24 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(v7, *a2, *(a2 + 1));
    v7 = v17;
    v9 = v18;
  }

  else
  {
    v8 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v8;
    v9 = 24 * v2;
  }

  *&v18 = v9 + 24;
  v10 = *(a1 + 8);
  v11 = v7 + *a1 - v10;
  sub_24BE3D5DC(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_24BC8E08C(&v16);
  return v15;
}

void sub_24BE3D5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC8E08C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE3D5DC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      a4 += 24;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v6 = (v6 + 24);
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 24);
    }
  }

  return sub_24BE3D330(v9);
}

uint64_t sub_24BE3D6F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96EE0;
  a2[1] = v2;
  return result;
}

char **sub_24BE3D724(uint64_t a1, char **a2)
{
  result = *(a1 + 8);
  if (result != a2)
  {
    return sub_24BCA2A30(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

void *sub_24BE3D748(void *result, void *a2)
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

void sub_24BE3D9A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

uint64_t sub_24BE3DA1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96F28;
  a2[1] = v2;
  return result;
}

__n128 sub_24BE3DAE8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F96F70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BE3DB18(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(result + 8);
  *v7 = v5;
  v7[1] = v6;
  v8 = *(result + 16);
  if (*(v8 + 56))
  {
    return sub_24BC98654(v8 + 32, v5, v6, a3);
  }

  return result;
}

uint64_t sub_24BE3DBB8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96FB8;
  a2[1] = v2;
  return result;
}

void *sub_24BE3DBE4(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 8);
  result = memmove(v2, a2, 0x68uLL);
  v2[13] = 0;
  return result;
}

uint64_t sub_24BE3DC84(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97000;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BE3DD48(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97048;
  a2[1] = v2;
  return result;
}

__n128 sub_24BE3DE14(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F97090;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BE3DE44(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(result + 8);
  *v7 = v5;
  v7[1] = v6;
  v8 = *(result + 16);
  if (*(v8 + 56))
  {
    return sub_24BC98654(v8 + 32, v5, v6, a3);
  }

  return result;
}

uint64_t sub_24BE3DEE4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F970D8;
  a2[1] = v2;
  return result;
}

__n128 sub_24BE3DFAC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F97120;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BE3DFDC(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(result + 8);
  *v7 = v5;
  v7[1] = v6;
  v8 = *(result + 16);
  if (*(v8 + 56))
  {
    return sub_24BC98654(v8 + 32, v5, v6, a3);
  }

  return result;
}

uint64_t sub_24BE3E07C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97168;
  a2[1] = v2;
  return result;
}

__n128 sub_24BE3E148(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F971B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BE3E178(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(result + 8);
  *v7 = v5;
  v7[1] = v6;
  v8 = *(result + 16);
  if (*(v8 + 56))
  {
    return sub_24BC98654(v8 + 32, v5, v6, a3);
  }

  return result;
}

uint64_t sub_24BE3E218(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F971F8;
  a2[1] = v2;
  return result;
}

void sub_24BE3E244(uint64_t a1, std::string **a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    sub_24BE3D090(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

uint64_t sub_24BE3E2E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97240;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BE3E3AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97288;
  a2[1] = v2;
  return result;
}

__n128 sub_24BE3E3D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(v2 + 160) = *(a2 + 48);
  *(v2 + 128) = v4;
  *(v2 + 144) = v5;
  *(v2 + 112) = result;
  if (*a2)
  {
    result = *a2;
    **(a1 + 8) = *a2;
  }

  return result;
}

uint64_t sub_24BE3E47C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F972D0;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BE3E544(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97318;
  a2[1] = v2;
  return result;
}

__n128 sub_24BE3E570(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 32);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 32) = v4;
  *v2 = v3;
  result = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 96);
  *(v2 + 80) = *(a2 + 80);
  *(v2 + 96) = v7;
  *(v2 + 48) = result;
  *(v2 + 64) = v6;
  if (*a2)
  {
    result = *a2;
    **(a1 + 8) = *a2;
  }

  return result;
}

uint64_t sub_24BE3E6AC(void *a1, _BYTE *a2)
{
  *a2 = 0;
  if ((sub_24BE257B8(a1) & 1) == 0)
  {
    sub_24BCD52C8(a1);
  }

  return 1;
}

uint64_t sub_24BE3E794(void *a1, _BYTE *a2)
{
  *a2 = 0;
  if ((sub_24BE257B8(a1) & 1) == 0)
  {
    sub_24BCB15E4(a1);
  }

  return 1;
}

void sub_24BE3E850(uint64_t a1)
{
  v3 = -1;
  sub_24BC836D4(&__p, "ring hedges");
  sub_24BCB3D7C(a1);
}

void sub_24BE3EDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE3EE28(void *a1)
{
  v2 = a1[14] - a1[13];
  v3 = (a1[20] - a1[19]) >> 2;
  v4 = (a1[17] - a1[16]) >> 2;
  sub_24BD79520(a1);
  return v3 + (v2 >> 2) - 0x3333333333333333 * v4 - (((a1[14] - a1[13]) >> 2) + ((a1[20] - a1[19]) >> 2)) + 0x3333333333333333 * ((a1[17] - a1[16]) >> 2);
}

double *sub_24BE3EEBC(double *result, double *a2, double *a3, double *a4, int *a5)
{
  v5 = a3[1];
  v6 = a2[1];
  v7 = *a3 - *a2;
  v8 = a4[1];
  v9 = *a4 - *a2;
  v10 = v7 * (v8 - v6) - (v5 - v6) * v9;
  v11 = v10 + -0.0000001;
  v12 = v10 + 0.0000001;
  v13 = result[1];
  v14 = v7 * (v13 - v6) - (v5 - v6) * (*result - *a2);
  v15 = (*a4 - *a3) * (v13 - v5) - (v8 - v5) * (*result - *a3);
  v16 = (*result - *a4) * (v8 - v6) - (v13 - v8) * v9;
  v17 = v14 > 0.0000001 && v14 < v11;
  if (v17 && (v15 > 0.0000001 ? (v18 = v15 < v11) : (v18 = 0), v18 && (v16 > 0.0000001 ? (v19 = v16 < v11) : (v19 = 0), (v20 = v14 + v15 + v16, v19) ? (v22 = v20 == v12, v21 = v20 >= v12) : (v21 = 1, v22 = 0), v22 || !v21)))
  {
    v32 = 0;
  }

  else
  {
    if (v14 >= 0.0)
    {
      v24 = v14 == v12;
      v23 = v14 >= v12;
    }

    else
    {
      v23 = 1;
      v24 = 0;
    }

    if (!v24 && v23)
    {
      goto LABEL_24;
    }

    if (v15 >= 0.0)
    {
      v26 = v15 == v12;
      v25 = v15 >= v12;
    }

    else
    {
      v25 = 1;
      v26 = 0;
    }

    if (!v26 && v25 || (v16 >= 0.0 ? (v28 = v16 == v12, v27 = v16 >= v12) : (v27 = 1, v28 = 0), (v29 = v14 + v15 + v16, v28 || !v27) ? (v31 = v29 == v12, v30 = v29 >= v12) : (v30 = 1, v31 = 0), !v31 && v30))
    {
LABEL_24:
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }
  }

  *a5 = v32;
  return result;
}

uint64_t sub_24BE3EFB0(double *a1, double *a2, double *a3)
{
  v3 = (*a2 - *a1) * (a3[1] - a1[1]) - (a2[1] - a1[1]) * (*a3 - *a1);
  if (fabs(v3) <= 0.0000001)
  {
    return 2;
  }

  else
  {
    return v3 <= 0.0;
  }
}

uint64_t sub_24BE3F020(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v6 = 0.0;
  if (*(a1 + 160) != *(a1 + 152))
  {
    v7 = 1;
    do
    {
      LODWORD(__p[0]) = v7 - 1;
      v6 = v6 + sub_24BC96B00(a1, __p);
      v9 = *(a1 + 152);
      v8 = *(a1 + 160);
      v10 = (v8 - v9) >> 2;
    }

    while (v10 > v7++);
    if (v8 != v9)
    {
      v6 = v6 / v10;
    }
  }

  v12 = v6 * 0.0001;
  if (v6 * 0.0001 > 0.000001)
  {
    v12 = 0.000001;
  }

  if (v12 >= 1.0e-10)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0e-10;
  }

  *a3 = 0;
  sub_24BCB2008(__p, 3uLL);
  if (*(a1 + 160) != *(a1 + 152))
  {
    LODWORD(v14) = 0;
    while (1)
    {
      v53 = v14;
      v15 = sub_24BCB9038(a1 + 104, &v53);
      v16 = sub_24BCB9024(a1 + 104, v15);
      v17 = sub_24BCB9024(a1 + 104, v16);
      *__p[0] = *(v17 + 12);
      v18 = sub_24BCB9038(a1 + 104, &v53);
      v19 = sub_24BCB9024(a1 + 104, v18);
      v20 = sub_24BCB9024(a1 + 104, (v19 + 8));
      v21 = sub_24BCB9024(a1 + 104, v20);
      *(__p[0] + 1) = *(v21 + 12);
      v22 = sub_24BCB9038(a1 + 104, &v53);
      v23 = sub_24BCB9024(a1 + 104, v22);
      v24 = __p[0];
      *(__p[0] + 2) = *(v23 + 12);
      v25 = v24[1];
      v26 = (*(a1 + 8) + 16 * *(a1 + 176));
      v28 = *v26;
      v27 = v26[1];
      if (!v27)
      {
        break;
      }

      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v27);
      v24 = __p[0];
      v29 = (*(a1 + 8) + 16 * *(a1 + 176));
      v31 = *v29;
      v30 = v29[1];
      v32 = *(*(v28 + 40) + 16 * v25);
      v33 = *__p[0];
      if (!v30)
      {
        v28 = *v29;
        goto LABEL_21;
      }

      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      v51 = v32;
      sub_24BC9EC78(v30);
      v24 = __p[0];
      v34 = (*(a1 + 8) + 16 * *(a1 + 176));
      v28 = *v34;
      v35 = v34[1];
      v36 = vsubq_f32(v51, *(*(v31 + 40) + 16 * v33));
      v37 = *(__p[0] + 2);
      if (v35)
      {
        v52 = v36;
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v35);
        v38 = (*(a1 + 8) + 16 * *(a1 + 176));
        v40 = *v38;
        v39 = v38[1];
        v41 = *(*(v28 + 40) + 16 * v37);
        v42 = *__p[0];
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          v50 = v41;
          sub_24BC9EC78(v39);
          v41 = v50;
        }

        v36 = v52;
        goto LABEL_23;
      }

LABEL_22:
      v41 = *(*(v28 + 40) + 16 * v37);
      v42 = *v24;
      v40 = v28;
LABEL_23:
      v43 = vsubq_f32(v41, *(*(v40 + 40) + 16 * v42));
      v44 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v36, vextq_s8(v36, v36, 0xCuLL)), v36), vuzp2q_s32(vextq_s8(v43, v43, 4uLL), v43)), vzip2q_s32(vzip1q_s32(v43, vextq_s8(v43, v43, 0xCuLL)), v43), vuzp2q_s32(vextq_s8(v36, v36, 4uLL), v36));
      v45 = vmulq_f32(v44, v44);
      v45.i32[3] = 0;
      if (sqrtf(vaddv_f32(*&vpaddq_f32(v45, v45))) * 0.5 < v13)
      {
        v46 = 0;
        v47 = __p[0];
        v48 = *a2;
        do
        {
          *(v48 + 4 * *&v47[v46]) = 1056964608;
          v46 += 4;
        }

        while (v46 != 12);
        *a3 = 1;
      }

      v14 = (v14 + 1);
      if (v14 >= (*(a1 + 160) - *(a1 + 152)) >> 2)
      {
        goto LABEL_28;
      }
    }

    v32 = *(*(v28 + 40) + 16 * v25);
    v33 = *v24;
LABEL_21:
    v36 = vsubq_f32(v32, *(*(v28 + 40) + 16 * v33));
    v37 = v24[2];
    goto LABEL_22;
  }

LABEL_28:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 1;
}

void sub_24BE3F374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE3F390(void *a1, int a2, _BYTE *a3, float a4)
{
  v8 = (a1[14] - a1[13]) >> 2;
  v14 = 0;
  sub_24BCDEA88(&__p, v8);
  *a3 = 0;
  v9 = a4;
  v10 = -1;
  do
  {
    sub_24BE3F020(a1, &__p, &v14);
    v11 = v14;
    if (a2 && (v14 & 1) != 0)
    {
      sub_24BE243D0(a1);
      if (!sub_24BE6AF64(a1, v12, v9, 0, 1, 4))
      {
        goto LABEL_9;
      }

      sub_24BC8CAB0(&__p, (a1[14] - a1[13]) >> 2);
      if (v16 - __p >= 1)
      {
        bzero(__p, v16 - __p);
      }

      sub_24BE3F020(a1, &__p, &v14);
      *a3 = 1;
      v11 = v14;
    }

    if ((v11 & 1) == 0)
    {
      break;
    }

LABEL_9:
    sub_24BE6B79C(a1, &__p, 5, 0);
    *a3 = 1;
    ++v10;
  }

  while (v10 < 9);
  sub_24BE3EE28(a1);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_24BE3F4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BE3F508(float *a1, float *a2, float *a3, float *a4)
{
  v4 = a3[1];
  v5 = a2[1];
  v6 = *a3 - *a2;
  v7 = v4 - v5;
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 * (v9 - v5)) - ((v4 - v5) * (*a1 - *a2));
  result = 0;
  if (v10 >= 0.0)
  {
    v12 = *a4;
    v13 = a4[1];
    v14 = *a4 - *a2;
    v15 = v13 - v5;
    v16 = ((v6 * v15) - (v7 * v14)) + 1.0e-12;
    if (v10 <= v16)
    {
      v17 = ((v12 - *a3) * (v9 - v4)) - ((v13 - v4) * (v8 - *a3));
      if (v17 >= 0.0)
      {
        result = 0;
        if (v17 <= v16)
        {
          v18 = ((v8 - v12) * v15) - ((v9 - v13) * v14);
          if (v18 >= 0.0 && v18 <= v16)
          {
            return ((v10 + v17) + v18) <= v16;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_24BE3F5C0(float *a1, float *a2, float *a3, float *a4, double *a5, double *a6)
{
  v6 = a1[1];
  v7 = *a2 - *a1;
  v8 = a2[1] - v6;
  v9 = a4[1];
  v10 = a3[1];
  v11 = *a4 - *a3;
  v12 = v9 - v10;
  v13 = ((v7 * (v9 - v10)) - (v8 * v11));
  v14 = *a3 - *a1;
  v15 = v10 - v6;
  v16 = *a5;
  v17 = *a6 * *a6;
  v18 = ((v8 * v8) + (v7 * v7));
  if (fabs(v13 / sqrt(fmax(v18 * ((v12 * v12) + (v11 * v11)), 1.17549435e-38))) < v17)
  {
    if (fabs(((v14 * v8) - (v15 * v7)) / sqrt(fmax(v18 * ((v15 * v15) + (v14 * v14)), 1.17549435e-38))) < v17)
    {
      v19 = v16 * v16;
      v20 = (v8 * v15) + (v14 * v7);
      if (v20 >= 0.0 && v19 + v18 >= v20)
      {
        return 4;
      }

      v21 = (v8 * (v9 - v6)) + ((*a4 - *a1) * v7);
      if (v21 >= 0.0 && v19 + v18 >= v21)
      {
        return 4;
      }
    }

    return 3;
  }

  v23 = ((v14 * v12) - (v15 * v11)) / v13;
  v24 = ((v14 * v8) - (v15 * v7)) / v13;
  v25 = 1.0 - v16;
  if (v23 > v16 && v23 < v25 && v24 > v16 && v24 < v25)
  {
    return 0;
  }

  v29 = -v16;
  v30 = v23 >= v25;
  if (v23 > v16 + 1.0)
  {
    v30 = 0;
  }

  v32 = v23 <= v16 && v23 >= v29 || v30;
  if (v24 > v16 || v24 < v29)
  {
    if (v24 > v16 + 1.0)
    {
      v34 = 0;
      goto LABEL_37;
    }

    v34 = v24 >= 1.0 - v16;
  }

  else
  {
    v34 = 1;
  }

  if (v32 & v34)
  {
    return 2;
  }

LABEL_37:
  if (!v32 || (v24 >= v29 ? (v35 = v24 > v16 + 1.0) : (v35 = 1), v35))
  {
    if (!v34)
    {
      return 3;
    }

    v36 = v16 + 1.0;
    if (v23 < v29 || v23 > v36)
    {
      return 3;
    }
  }

  return 1;
}

uint64_t sub_24BE3F7BC(uint64_t a1, void *a2)
{
  v2 = *(a2 + 6);
  v3 = *(a2 + 28);
  v4 = *(a2 + 29);
  return sub_24BE3F7CC(a1, a2);
}

uint64_t sub_24BE3F7CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 112) - *(a1 + 104);
  v3 = a2[1] - *a2;
  v4 = v3 == 4 || (v2 >> 2) == v3 >> 2;
  result = v4;
  if (v4)
  {
    sub_24BE0B630(&v6, (v2 >> 2), (v2 >> 2));
  }

  return result;
}

void sub_24BE3FF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE0B78C(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE3FFBC(uint64_t a1, int a2, char a3, char a4, float a5)
{
  v17 = a5;
  v12 = 0;
  v13 = 0;
  __p = 0;
  sub_24BDB6E64(&__p, &v17, &v18, 1uLL);
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v9 = sub_24BE3F7CC(a1, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_24BE40058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE40074(uint64_t a1, int a2, char a3, char a4, float a5)
{
  v10 = a5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  sub_24BDB6E64(a1, &v10, &v11, 1uLL);
  *(a1 + 24) = a2;
  *(a1 + 28) = a3;
  *(a1 + 29) = a4;
  return a1;
}

uint64_t sub_24BE400E0(uint64_t a1, void *a2, void *a3)
{
  v3 = a3[1] - *a3;
  if (v3 >> 2 == ((*(a1 + 112) - *(a1 + 104)) >> 2))
  {
    v4 = a2[1] - *a2;
    if (v4 == 4 || v4 == v3)
    {
      sub_24BE0B630(&v7, v3 >> 2, v3 >> 2);
    }
  }

  return 0;
}

void sub_24BE4073C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE0B78C(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE407E0(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v6 = (a1 + 104);
  v7 = *(a1 + 112) - *(a1 + 104);
  v8 = a2[1] - *a2;
  v9 = (v7 >> 2);
  v10 = v8 == 4 || v9 == v8 >> 2;
  result = v10;
  if (v10)
  {
    v38 = result;
    sub_24BCA18B0(__p, (v7 >> 2));
    v15 = (*(a1 + 8) + 16 * *(a1 + 176));
    v17 = *v15;
    v16 = v15[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v16);
    }

    v46 = 0uLL;
    if (a3)
    {
      v18 = 0;
      v19 = v7 & 0x3FFFFFFFCLL;
      v39 = v7 & 0x3FFFFFFFCLL;
      do
      {
        if (v19)
        {
          v20 = 0;
          do
          {
            v45 = v20;
            if (a4 && sub_24BCD93B0(a1, &v45))
            {
              *(__p[0] + v20) = *(*(v17 + 40) + 16 * v20);
            }

            else
            {
              sub_24BCB8F94(v44, v6, &v45);
              v21 = sub_24BCB8FBC(v44);
              if (v21 == -1)
              {
                v25 = 0;
                v23 = 0uLL;
              }

              else
              {
                v23 = 0uLL;
                v24 = 0.0;
                do
                {
                  v41 = *(*(v17 + 40) + 16 * v21);
                  v42 = v23;
                  v21 = sub_24BCB8FBC(v44);
                  v25.i32[1] = v41.i32[1];
                  v23 = vaddq_f32(v42, v41);
                  v24 = v24 + 1.0;
                }

                while (v21 != -1);
                *v25.i32 = v24;
              }

              v26 = vdivq_f32(v23, vdupq_lane_s32(v25, 0));
              v27 = vmulq_f32(v26, v26);
              v27.i32[3] = 0;
              v28 = vpaddq_f32(v27, v27);
              v28.f32[0] = vaddv_f32(*v28.f32);
              v22.i64[0] = 0;
              v29 = *(*(v17 + 40) + 16 * v20);
              v30 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vorrq_s8(vcgtq_f32(v22, v28), vcgeq_f32(v28, v22))), 0), v29, v26);
              if (v8 == 4)
              {
                v31 = 0;
              }

              else
              {
                v31 = v20;
              }

              v32 = vaddq_f32(vmulq_n_f32(v30, *(*a2 + 4 * v31)), vmulq_n_f32(v29, 1.0 - *(*a2 + 4 * v31)));
              if (a5)
              {
                v43 = v32;
                sub_24BD3EDC4(a1, v45, &v46);
                v33 = vmulq_f32(v46, v46);
                v33.i32[3] = 0;
                if (vaddv_f32(*&vpaddq_f32(v33, v33)) <= 0.0)
                {
                  v32 = v43;
                }

                else
                {
                  v34 = *(*(v17 + 40) + 16 * v20);
                  v35 = vsubq_f32(v43, v34);
                  v36 = vmulq_f32(v46, v35);
                  v36.i32[3] = 0;
                  v32 = vaddq_f32(v34, vsubq_f32(v35, vmulq_n_f32(v46, vaddv_f32(*&vpaddq_f32(v36, v36)))));
                }
              }

              *(__p[0] + v20) = v32;
            }

            ++v20;
          }

          while (v20 != v9);
          v19 = v39;
          if (v39)
          {
            v37 = 0;
            do
            {
              *(*(v17 + 40) + 16 * v37) = *(__p[0] + v37);
              ++v37;
            }

            while (v9 != v37);
          }
        }

        ++v18;
      }

      while (v18 != a3);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v38;
  }

  return result;
}

void sub_24BE40A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE40AAC(uint64_t a1, int a2, int a3, int a4, float a5)
{
  v17 = a5;
  v12 = 0;
  v13 = 0;
  __p = 0;
  sub_24BDB6E64(&__p, &v17, &v18, 1uLL);
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v9 = sub_24BE407E0(a1, &__p, a2, a3, a4);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_24BE40B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE40B64(uint64_t a1, uint64_t *a2, int a3, char a4, char a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_24BD07D84(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 29) = a5;
  return a1;
}

void sub_24BE40BC4()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAE62C();
}

void sub_24BE40F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_24BC9F18C((v38 + 8), a10);
  v42 = (v40 - 96);
  v43 = -128;
  do
  {
    sub_24BC9F18C(v42, *(v42 - 8));
    v42 -= 4;
    v43 += 32;
  }

  while (v43);
  v44 = &a19;
  v45 = -64;
  do
  {
    sub_24BC9F18C(v44, *(v44 - 8));
    v44 -= 4;
    v45 += 32;
  }

  while (v45);
  v46 = &a27;
  v47 = -64;
  do
  {
    sub_24BC9F18C(v46, *(v46 - 8));
    v46 -= 4;
    v47 += 32;
  }

  while (v47);
  v48 = &a35;
  v49 = -64;
  do
  {
    sub_24BC9F18C(v48, *(v48 - 8));
    v48 -= 4;
    v49 += 32;
  }

  while (v49);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a38 + i + 40), *(&a38 + i + 32));
  }

  sub_24BC9F18C((v39 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE41104(uint64_t a1, void *a2)
{
  v23[0] = 0;
  v24 = 0;
  sub_24BC9C7E0(a2, v23);
  v3 = sub_24BC9C8EC(v23, "lambda_weights");
  LOBYTE(__p) = 0;
  v19 = 0;
  v4 = sub_24BCB01B0(v3, &__p);
  sub_24BC9F18C(&v19, __p);
  if ((v4 & 1) == 0)
  {
    v5 = sub_24BC9C8EC(v23, "lambda_weights");
    sub_24BE41B74(v5, &__p);
    if (&__p != a1)
    {
      sub_24BCA2A30(a1, __p, v19, (v19 - __p) >> 2);
    }

    sub_24BC836D4(&v21, "lambda_weights");
    sub_24BC9CAB4(v23, &v21.__locale_);
    if (v22 < 0)
    {
      operator delete(v21.__locale_);
    }

    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }
  }

  if (v23[0] == 1)
  {
    v6 = sub_24BCB0080(v24, "iterations");
    if (v24 + 8 != v6)
    {
      v7 = sub_24BC9C8EC(v23, "iterations");
      LOBYTE(__p) = 0;
      v19 = 0;
      v8 = sub_24BCB01B0(v7, &__p);
      sub_24BC9F18C(&v19, __p);
      if ((v8 & 1) == 0)
      {
        v9 = sub_24BC9C8EC(v23, "iterations");
        LODWORD(__p) = 0;
        sub_24BCB07E0(v9, &__p);
        *(a1 + 24) = __p;
        sub_24BC836D4(&__p, "iterations");
        sub_24BC9CAB4(v23, &__p);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v23[0] == 1)
    {
      v10 = sub_24BCB0080(v24, "fix_boundary");
      if (v24 + 8 != v10)
      {
        v11 = sub_24BC9C8EC(v23, "fix_boundary");
        LOBYTE(__p) = 0;
        v19 = 0;
        v12 = sub_24BCB01B0(v11, &__p);
        sub_24BC9F18C(&v19, __p);
        if ((v12 & 1) == 0)
        {
          v13 = sub_24BC9C8EC(v23, "fix_boundary");
          LOBYTE(__p) = 0;
          sub_24BCB0940(v13, &__p);
          *(a1 + 28) = __p;
          sub_24BC836D4(&__p, "fix_boundary");
          sub_24BC9CAB4(v23, &__p);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v23[0] == 1)
      {
        v14 = sub_24BCB0080(v24, "tangetial_relaxation");
        if (v24 + 8 != v14)
        {
          v15 = sub_24BC9C8EC(v23, "tangetial_relaxation");
          LOBYTE(__p) = 0;
          v19 = 0;
          v16 = sub_24BCB01B0(v15, &__p);
          sub_24BC9F18C(&v19, __p);
          if ((v16 & 1) == 0)
          {
            v17 = sub_24BC9C8EC(v23, "tangetial_relaxation");
            LOBYTE(__p) = 0;
            sub_24BCB0940(v17, &__p);
            *(a1 + 29) = __p;
            sub_24BC836D4(&__p, "tangetial_relaxation");
            sub_24BC9CAB4(v23, &__p);
            if (SHIBYTE(v20) < 0)
            {
              operator delete(__p);
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&v20 + *(v20 - 24) + 24) = 2;
  sub_24BC9BD14(&v20);
}

void sub_24BE41624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 64));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE41608);
  }

  _Unwind_Resume(a1);
}

void sub_24BE41708(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE40BC4();
}

void sub_24BE4183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_24BD2741C(&a9, MEMORY[0x277D82810]);
  MEMORY[0x24C2547D0](v9 + 416);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE41868(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE41104(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE419D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD6BA18(va, MEMORY[0x277D82808]);
  MEMORY[0x24C2547D0](v2 + 424);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE41AE0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA69B0(result, a4);
  }

  return result;
}

double sub_24BE41B74@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_24BE41BC0(a1, a2);
}

void sub_24BE41BA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_24BE41BC0(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_24BCA6188(a1);
    sub_24BC836D4(&v8, v5);
    v6 = std::string::insert(&v8, 0, "type must be array, but is ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(302, &v9, exception);
    __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  return sub_24BE41CF8(a1, a2);
}

void sub_24BE41C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

double sub_24BE41CF8(unsigned __int8 *a1, uint64_t a2)
{
  v21 = 0uLL;
  v22 = 0;
  v4 = *a1;
  if (*a1)
  {
    if (v4 == 1)
    {
      v4 = *(*(a1 + 1) + 16);
    }

    else if (v4 == 2)
    {
      v4 = (*(*(a1 + 1) + 8) - **(a1 + 1)) >> 4;
    }

    else
    {
      v4 = 1;
    }
  }

  sub_24BCB8D20(&v21, v4);
  v17 = a1;
  v18 = 0;
  v19 = 0;
  v20 = 0x8000000000000000;
  v5 = *a1;
  if (*a1)
  {
    if (v5 == 2)
    {
      v7 = *(a1 + 1);
      v19 = *v7;
      v14 = a1;
      v15 = 0;
      *(&v16 + 1) = 0x8000000000000000;
      *&v16 = v7[1];
      goto LABEL_15;
    }

    if (v5 == 1)
    {
      v6 = *(a1 + 1);
      v18 = *v6;
      v16 = xmmword_24BFBD220;
      v14 = a1;
      v15 = v6 + 1;
      goto LABEL_15;
    }

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v14 = a1;
  v15 = 0;
  *&v16 = 0;
  *(&v16 + 1) = 1;
LABEL_15:
  for (i = *(&v21 + 1); !sub_24BCA6F80(&v17, &v14); i = v11 + 4)
  {
    v9 = sub_24BCA7288(&v17);
    v23 = 0;
    sub_24BCB0594(v9, &v23, v10);
    v11 = sub_24BE41E9C(&v21, i, &v23);
    sub_24BCA6F10(&v17);
  }

  v12 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v12;
    operator delete(v12);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v21;
  *a2 = v21;
  *(a2 + 16) = v22;
  return result;
}

void sub_24BE41E7C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 48);
  if (v3)
  {
    *(v1 - 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_24BE41E9C(void *a1, char *__src, float *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_24BC8E01C();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = a1;
    if (v14)
    {
      sub_24BC92E0C(a1, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    sub_24BE4205C(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_24BE42024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_24BE4205C(void *a1, float *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      sub_24BC92E0C(a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = v4 + 4;
  return result;
}

uint64_t sub_24BE4215C(uint64_t a1, uint64_t *a2, char *a3, float a4)
{
  v64 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v6 = *a2;
  v7 = a2[1];
  v8 = a4 < 0.00000011921 || v6 == v7;
  result = !v8;
  if (!v8)
  {
    v49 = result;
    v62 = 0;
    *v60 = 0u;
    v61 = 0u;
    *v58 = 0u;
    v59 = 0u;
    *v56 = 0u;
    v57 = 0u;
    sub_24BD07E00(&v53, (v7 - v6) >> 2, 3);
    v12 = 0uLL;
    v52 = 0u;
    v13 = *a2;
    v14 = a2[1] - *a2;
    if (v14)
    {
      v15 = 0;
      do
      {
        v50 = v12;
        v16 = 0;
        v17 = *(sub_24BCB9024(a1 + 104, (v13 + 4 * v15)) + 12);
        do
        {
          v18 = (*(a1 + 8) + 16 * *(a1 + 176));
          v20 = *v18;
          v19 = v18[1];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v19);
          }

          v63[0] = *(*(v20 + 40) + 16 * v17);
          *(__p + v16 * v53 + v15) = *(v63 + v16);
          ++v16;
        }

        while (v16 != 3);
        v21 = (*(a1 + 8) + 16 * *(a1 + 176));
        v23 = *v21;
        v22 = v21[1];
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v22);
        }

        v12 = vaddq_f32(*(*(v23 + 40) + 16 * v17), v50);
        ++v15;
        v13 = *a2;
        v14 = a2[1] - *a2;
      }

      while (v15 < v14 >> 2);
      v24 = v12;
    }

    else
    {
      v24 = 0uLL;
    }

    v25 = v14 >> 2;
    v12.f32[0] = (v14 >> 2);
    v52 = vdivq_f32(v24, vdupq_lane_s32(*v12.f32, 0));
    if (v14 >> 2)
    {
      v26 = 0;
      v27 = __p;
      v28 = 4 * v53;
      do
      {
        v29 = 0;
        v30 = &v27[4 * v26];
        do
        {
          *v30 = *v30 - v52.f32[v29++];
          v30 = (v30 + v28);
        }

        while (v29 != 3);
        ++v26;
      }

      while (v26 != v25);
    }

    sub_24BD06F94(&v53, v56);
    v31 = 0;
    LODWORD(v32) = *(v60[1] + 1);
    LODWORD(v33) = *(v60[1] + 2);
    DWORD1(v32) = *(v60[1] + 4);
    DWORD2(v32) = *(v60[1] + 7);
    DWORD1(v33) = *(v60[1] + 5);
    DWORD2(v33) = *(v60[1] + 8);
    *a3 = 1;
    v63[0] = v32;
    v63[1] = v33;
    v34 = *a2;
    v35 = a2[1];
    v36 = 1;
    do
    {
      if (v35 == v34)
      {
        v47 = -INFINITY;
        v35 = v34;
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v51 = v63[v31];
        v39 = -3.4028e38;
        v40 = 3.4028e38;
        do
        {
          v41 = *(sub_24BCB9024(a1 + 104, (v34 + v37)) + 12);
          v42 = (*(a1 + 8) + 16 * *(a1 + 176));
          v44 = *v42;
          v43 = v42[1];
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v43);
          }

          v45 = vmulq_f32(v51, *(*(v44 + 40) + 16 * v41));
          v45.i32[3] = 0;
          v46 = vaddv_f32(*&vpaddq_f32(v45, v45));
          if (v46 < v40)
          {
            v40 = v46;
          }

          if (v39 < v46)
          {
            v39 = v46;
          }

          ++v38;
          v34 = *a2;
          v35 = a2[1];
          v37 += 4;
        }

        while (v38 < (v35 - *a2) >> 2);
        v36 = *a3;
        v47 = v39 - v40;
      }

      if (v36)
      {
        v36 = v47 < a4;
      }

      else
      {
        v36 = 0;
      }

      *a3 = v36;
      ++v31;
    }

    while (v31 != 2);
    if (__p)
    {
      v55 = __p;
      operator delete(__p);
    }

    if (v60[1])
    {
      *&v61 = v60[1];
      operator delete(v60[1]);
    }

    if (v58[1])
    {
      *&v59 = v58[1];
      operator delete(v58[1]);
    }

    if (v56[1])
    {
      *&v57 = v56[1];
      operator delete(v56[1]);
    }

    result = v49;
  }

  v48 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BE424D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BD41118(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE4250C(uint64_t a1, uint64_t a2)
{
  sub_24BE2493C(a1, v87);
  v72 = v87[1];
  v73 = v87[0];
  v4 = *a2;
  v74 = *(a1 + 152);
  v75 = *(a1 + 160);
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v5 = -858993459 * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  LOBYTE(__p) = 0;
  sub_24BC9FEFC(v83, v5);
  v77 = a2;
  if (v5)
  {
    v6 = 0;
    v7 = vsubq_f32(v72, v73);
    v8 = vmulq_f32(v7, v7);
    v8.i32[3] = 0;
    v9 = sqrtf(vaddv_f32(*&vpaddq_f32(v8, v8))) * v4;
    v76 = v5;
    do
    {
      if ((*(v83[0] + (v6 >> 6)) & (1 << v6)) == 0)
      {
        v10 = sub_24BC9ECE4(a1, *(a1 + 180), v6);
        if ((*v10 & v11) != 0)
        {
          __p = 0;
          v81 = 0;
          v82 = 0;
          sub_24BCB6E2C(&v84, &__p);
          if (__p)
          {
            v81 = __p;
            operator delete(__p);
          }

          v12 = 0;
          v13 = v85;
          v14 = (v85 - 24);
          LODWORD(__p) = v6;
          v15 = 0.0;
          do
          {
            v16 = sub_24BD865DC(a1, &__p);
            v17 = __p;
            *(v83[0] + ((__p >> 3) & 0x1FFFFFF8)) |= 1 << __p;
            v19 = *(v13 - 16);
            v18 = *(v13 - 8);
            if (v19 >= v18)
            {
              v21 = (v19 - *v14) >> 2;
              if ((v21 + 1) >> 62)
              {
                sub_24BC8E01C();
              }

              v22 = v18 - *v14;
              v23 = v22 >> 1;
              if (v22 >> 1 <= (v21 + 1))
              {
                v23 = v21 + 1;
              }

              if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v24 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v23;
              }

              if (v24)
              {
                sub_24BC92E0C(v14, v24);
              }

              *(4 * v21) = v17;
              v20 = 4 * v21 + 4;
              v25 = *(v13 - 24);
              v26 = *(v13 - 16) - v25;
              v27 = (4 * v21 - v26);
              memcpy(v27, v25, v26);
              v28 = *(v13 - 24);
              *(v13 - 24) = v27;
              *(v13 - 16) = v20;
              *(v13 - 8) = 0;
              if (v28)
              {
                operator delete(v28);
              }
            }

            else
            {
              *v19 = v17;
              v20 = (v19 + 1);
            }

            *(v13 - 16) = v20;
            v15 = v15 + v16;
            LODWORD(__p) = *(sub_24BCB9024(a1 + 104, &__p) + 8);
            ++v12;
          }

          while (v6 != __p);
          if (v12 > *(v77 + 8))
          {
            v29 = v85;
            v31 = v85 - 24;
            v30 = *(v85 - 24);
            v5 = v76;
            if (v30)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          v5 = v76;
          if (v15 > v9)
          {
            LOBYTE(v79[0]) = 0;
            sub_24BE4215C(a1, v14, v79, v9 * *(v77 + 4));
            if ((v79[0] & 1) == 0)
            {
              v29 = v85;
              v31 = v85 - 24;
              v30 = *(v85 - 24);
              if (v30)
              {
LABEL_23:
                *(v29 - 16) = v30;
                operator delete(v30);
              }

LABEL_24:
              v85 = v31;
            }
          }

          a2 = v77;
          goto LABEL_29;
        }

        *(v83[0] + (v6 >> 6)) |= 1 << v6;
      }

LABEL_29:
      ++v6;
    }

    while (v6 != v5);
  }

  v32 = v84;
  if (v85 != v84)
  {
    v33 = 0;
    v34 = 1;
    do
    {
      sub_24BE42D78(a1, (v32 + 24 * v33), a2);
      v33 = v34;
      v32 = v84;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v85 - v84) >> 3) > v34++);
  }

  if (*(a2 + 17))
  {
    LODWORD(v79[0]) = -1;
    sub_24BC836D4(&__p, "v:is_on_boundary_loop_fill_hole");
    LOBYTE(v78) = 0;
    v36 = sub_24BCDCDF8((a1 + 8), &v78, &__p);
    LODWORD(v79[0]) = v36;
    if (SHIBYTE(v82) < 0)
    {
      operator delete(__p);
    }

    if (v36 == -1)
    {
      sub_24BC836D4(&__p, "v:is_on_boundary_loop_fill_hole");
      sub_24BE1E090(a1);
    }

    v38 = *(a1 + 104);
    v37 = *(a1 + 112);
    if (v37 != v38)
    {
      v39 = 0;
      v40 = 1;
      do
      {
        v41 = (*(a1 + 8) + 16 * LODWORD(v79[0]));
        v43 = *v41;
        v42 = v41[1];
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v42);
          v38 = *(a1 + 104);
          v37 = *(a1 + 112);
        }

        *(*(v43 + 40) + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v39);
        v39 = v40++;
      }

      while (v39 < (v37 - v38) >> 2);
    }

    v44 = v84;
    v45 = v85;
    if (v85 != v84)
    {
      v46 = 0;
      v47 = 0;
      do
      {
        if (*(v44 + 24 * v46 + 8) != *(v44 + 24 * v46))
        {
          v48 = 0;
          v49 = 1;
          do
          {
            v50 = (*(a1 + 8) + 16 * LODWORD(v79[0]));
            v52 = *v50;
            v51 = v50[1];
            if (v51)
            {
              atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v51);
              v44 = v84;
            }

            v53 = sub_24BCB9024(a1 + 104, (*(v44 + 24 * v46) + 4 * v48));
            *(*(v52 + 40) + ((*(v53 + 12) >> 3) & 0x1FFFFFF8)) |= 1 << *(v53 + 12);
            v48 = v49;
            v44 = v84;
            ++v49;
          }

          while (v48 < (*(v84 + 24 * v46 + 8) - *(v84 + 24 * v46)) >> 2);
          v45 = v85;
        }

        v46 = ++v47;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3) > v47);
    }

    a2 = v77;
  }

  sub_24BD79520(a1);
  if (((v75 - v74) >> 2) < ((*(a1 + 160) - *(a1 + 152)) >> 2))
  {
    if (*(a2 + 17) == 1)
    {
      v54 = 0;
      v55 = (v75 - v74) >> 2;
      __p = 0;
      v81 = 0;
      v82 = 0;
      do
      {
        if (v54 >= v82)
        {
          v56 = (v54 - __p) >> 2;
          if ((v56 + 1) >> 62)
          {
            sub_24BC8E01C();
          }

          v57 = (v82 - __p) >> 1;
          if (v57 <= v56 + 1)
          {
            v57 = v56 + 1;
          }

          if (v82 - __p >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v58 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v58 = v57;
          }

          if (v58)
          {
            sub_24BC92E0C(&__p, v58);
          }

          *(4 * v56) = v55;
          v54 = (4 * v56 + 4);
          v59 = (4 * v56 - (v81 - __p));
          memcpy(v59, __p, v81 - __p);
          v60 = __p;
          __p = v59;
          v81 = v54;
          v82 = 0;
          if (v60)
          {
            operator delete(v60);
          }
        }

        else
        {
          *v54 = v55;
          v54 += 4;
        }

        v81 = v54;
        v55 = (v55 + 1);
      }

      while (v55 < (*(a1 + 160) - *(a1 + 152)) >> 2);
      sub_24BE6BA0C(a1, &__p, 10, 2, 1.33333333, 0.8, 0.2);
      a2 = v77;
      if (__p)
      {
        v81 = __p;
        operator delete(__p);
      }

      sub_24BC836D4(&__p, "v:is_on_boundary_loop_fill_hole");
      LOBYTE(v79[0]) = 0;
      v61 = sub_24BCDCDF8((a1 + 8), v79, &__p);
      if (SHIBYTE(v82) < 0)
      {
        operator delete(__p);
      }

      if (v61 != -1)
      {
        v62 = (*(a1 + 112) - *(a1 + 104)) >> 2;
        LODWORD(v79[0]) = 0;
        sub_24BCDEA88(&__p, v62);
        if (*(a1 + 112) != *(a1 + 104))
        {
          v63 = 0;
          v64 = 0;
          do
          {
            v65 = (*(a1 + 8) + 16 * v61);
            v67 = *v65;
            v66 = v65[1];
            if (v66)
            {
              atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v66);
            }

            if ((*(*(v67 + 40) + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v63))
            {
              *(__p + v63) = 1061997773;
              v78 = v64;
              sub_24BCB8F94(v79, (a1 + 104), &v78);
              for (i = sub_24BCB8FBC(v79); i != -1; i = sub_24BCB8FBC(v79))
              {
                *(__p + i) = 1061997773;
              }
            }

            v63 = ++v64;
          }

          while (v64 < ((*(a1 + 112) - *(a1 + 104)) >> 2));
        }

        sub_24BE3F7CC(a1, &__p);
        v69 = (*(a1 + 8) + 16 * v61);
        v70 = v69[1];
        *v69 = 0;
        v69[1] = 0;
        a2 = v77;
        if (v70)
        {
          sub_24BC9EC78(v70);
        }

        if (__p)
        {
          v81 = __p;
          operator delete(__p);
        }
      }
    }

    if (!*(a2 + 12))
    {
      sub_24BCB3A30(a1);
    }
  }

  if (v83[0])
  {
    operator delete(v83[0]);
  }

  v83[0] = &v84;
  sub_24BC8EE84(v83);
  return 1;
}

void sub_24BE42CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char *a28, uint64_t a29, uint64_t a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  a28 = &a31;
  sub_24BC8EE84(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE42D78(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  if (*(a3 + 12))
  {
    return sub_24BD490C8(a1, a2);
  }

  else
  {
    return sub_24BD44C4C(a1, a2);
  }
}

_BYTE *sub_24BE42D88@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1 == 1)
  {
    v6 = xmmword_24BFEDB90;
    v3 = sub_24BCBBD2C(&v6);
  }

  else
  {
    if (a1)
    {
      v7 = 4215639;
      v6 = xmmword_24BFEDBC4;
    }

    else
    {
      v7 = 7110523;
      v6 = xmmword_24BFEDBB0;
    }

    v3 = sub_24BD18A4C(&v6);
  }

  result = sub_24BC836D4(a2, v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_24BE42E58(const std::string *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_24BD56008(a1, &__s1);
  v16 = 200724;
  v15 = xmmword_24BFEDBD8;
  v1 = sub_24BD18A4C(&v15);
  v2 = strlen(v1);
  v3 = v2;
  v4 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v2 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    if (v2 == -1)
    {
      sub_24BD2237C();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v2 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (!memcmp(p_s1, v1, v3))
  {
    v11 = 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_8:
  v15 = xmmword_24BFEDBA0;
  v6 = sub_24BCBBD2C(&v15);
  v7 = strlen(v6);
  v8 = v7;
  v9 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v7 == __s1.__r_.__value_.__l.__size_)
    {
      if (v7 == -1)
      {
        sub_24BD2237C();
      }

      v10 = __s1.__r_.__value_.__r.__words[0];
LABEL_14:
      v11 = memcmp(v10, v6, v8) == 0;
      if (v9 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  else if (v7 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
  {
    v10 = &__s1;
    goto LABEL_14;
  }

  v11 = 0;
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_17:
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_24BE42FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE42FF0()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAF51C();
}

void sub_24BE4347C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sub_24BC9F18C((v51 + 8), a15);
  v55 = (v53 - 96);
  v56 = -160;
  do
  {
    sub_24BC9F18C(v55, *(v55 - 8));
    v55 -= 4;
    v56 += 32;
  }

  while (v56);
  v57 = &a24;
  v58 = -64;
  do
  {
    sub_24BC9F18C(v57, *(v57 - 8));
    v57 -= 4;
    v58 += 32;
  }

  while (v58);
  v59 = &a32;
  v60 = -64;
  do
  {
    sub_24BC9F18C(v59, *(v59 - 8));
    v59 -= 4;
    v60 += 32;
  }

  while (v60);
  v61 = &a40;
  v62 = -64;
  do
  {
    sub_24BC9F18C(v61, *(v61 - 8));
    v61 -= 4;
    v62 += 32;
  }

  while (v62);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v63 = &a48;
  v64 = -64;
  do
  {
    sub_24BC9F18C(v63, *(v63 - 8));
    v63 -= 4;
    v64 += 32;
  }

  while (v64);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a51 + i + 40), *(&a51 + i + 32));
  }

  sub_24BC9F18C((v52 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_24BE43658(uint64_t a1, void *a2)
{
  v24[0] = 0;
  v25 = 0;
  sub_24BC9C7E0(a2, v24);
  if (v24[0] == 1)
  {
    v3 = sub_24BCB0080(v25, "max_boundary_length_ratio");
    if (v25 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v24, "max_boundary_length_ratio");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v24, "max_boundary_length_ratio");
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        sub_24BCB0594(v6, &__p, v7);
        *a1 = __p.__r_.__value_.__l.__data_;
        sub_24BC836D4(&__p, "max_boundary_length_ratio");
        sub_24BC9CAB4(v24, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v24[0] == 1)
    {
      v8 = sub_24BCB0080(v25, "max_boundary_vertices_size");
      if (v25 + 8 != v8)
      {
        v9 = sub_24BC9C8EC(v24, "max_boundary_vertices_size");
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        v10 = sub_24BCB01B0(v9, &__p);
        sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
        if ((v10 & 1) == 0)
        {
          v11 = sub_24BC9C8EC(v24, "max_boundary_vertices_size");
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          sub_24BCB07E0(v11, &__p);
          *(a1 + 8) = __p.__r_.__value_.__l.__data_;
          sub_24BC836D4(&__p, "max_boundary_vertices_size");
          sub_24BC9CAB4(v24, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  v12 = sub_24BC9C8EC(v24, "fill_hole_method");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v13 = sub_24BCB01B0(v12, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v13 & 1) == 0)
  {
    v14 = sub_24BC9C8EC(v24, "fill_hole_method");
    sub_24BDAEAC8(v14, &__p);
    *(a1 + 12) = sub_24BE42E58(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "fill_hole_method");
    sub_24BC9CAB4(v24, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v24[0] == 1)
  {
    v15 = sub_24BCB0080(v25, "calculate_vertex_normal");
    if (v25 + 8 != v15)
    {
      v16 = sub_24BC9C8EC(v24, "calculate_vertex_normal");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v17 = sub_24BCB01B0(v16, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v17 & 1) == 0)
      {
        v18 = sub_24BC9C8EC(v24, "calculate_vertex_normal");
        __p.__r_.__value_.__s.__data_[0] = 0;
        sub_24BCB0940(v18, &__p);
        *(a1 + 16) = __p.__r_.__value_.__s.__data_[0];
        sub_24BC836D4(&__p, "calculate_vertex_normal");
        sub_24BC9CAB4(v24, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v24[0] == 1)
    {
      v19 = sub_24BCB0080(v25, "remesh_filled_triangles");
      if (v25 + 8 != v19)
      {
        v20 = sub_24BC9C8EC(v24, "remesh_filled_triangles");
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        v21 = sub_24BCB01B0(v20, &__p);
        sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
        if ((v21 & 1) == 0)
        {
          v22 = sub_24BC9C8EC(v24, "remesh_filled_triangles");
          __p.__r_.__value_.__s.__data_[0] = 0;
          sub_24BCB0940(v22, &__p);
          *(a1 + 17) = __p.__r_.__value_.__s.__data_[0];
          sub_24BC836D4(&__p, "remesh_filled_triangles");
          sub_24BC9CAB4(v24, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BE43C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE43BFCLL);
  }

  _Unwind_Resume(a1);
}

void sub_24BE43CDC(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE42FF0();
}

void sub_24BE43E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_24BD2741C(&a9, MEMORY[0x277D82810]);
  MEMORY[0x24C2547D0](v9 + 416);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE43E3C(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE43658(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE43FAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD6BA18(va, MEMORY[0x277D82808]);
  MEMORY[0x24C2547D0](v2 + 424);
  _Unwind_Resume(a1);
}

BOOL sub_24BE44038(uint64_t a1, int *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  memset(v6, 0, sizeof(v6));
  memset(v7, 0, sizeof(v7));
  v2 = sub_24BE440D8(a1, a2, v5);
  sub_24BC9F10C(v7);
  sub_24BC9F08C(v6);
  sub_24BC9F00C(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL sub_24BE440D8(uint64_t a1, int *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  sub_24BCA2DD0(v14, a3 + 64);
  v11 = 0;
  v9 = *(a2 + 5);
  v10 = a2[2];
  v8 = *a2;
  sub_24BD8D7C8(v12, a1, &v8);
  if (v15)
  {
    sub_24BC9B100(v13, v14);
  }

  sub_24BD8D7CC(v12);
  sub_24BDE9F90(v12);
  v5 = sub_24BD79520(a1);
  sub_24BC9F10C(v14);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_24BE441D8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BDE9F90(va);
  JUMPOUT(0x24BE441E8);
}

void sub_24BE44208()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAE8B0();
}

void sub_24BE445C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_24BC9F18C((v38 + 8), a10);
  v42 = (v40 - 96);
  v43 = -128;
  do
  {
    sub_24BC9F18C(v42, *(v42 - 8));
    v42 -= 4;
    v43 += 32;
  }

  while (v43);
  v44 = &a19;
  v45 = -64;
  do
  {
    sub_24BC9F18C(v44, *(v44 - 8));
    v44 -= 4;
    v45 += 32;
  }

  while (v45);
  v46 = &a27;
  v47 = -64;
  do
  {
    sub_24BC9F18C(v46, *(v46 - 8));
    v46 -= 4;
    v47 += 32;
  }

  while (v47);
  v48 = &a35;
  v49 = -64;
  do
  {
    sub_24BC9F18C(v48, *(v48 - 8));
    v48 -= 4;
    v49 += 32;
  }

  while (v49);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a38 + i + 40), *(&a38 + i + 32));
  }

  sub_24BC9F18C((v39 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE4472C(uint64_t a1, void *a2)
{
  v24[0] = 0;
  v25 = 0;
  sub_24BC9C7E0(a2, v24);
  if (v24[0] == 1)
  {
    v3 = sub_24BCB0080(v25, "strength");
    if (v25 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v24, "strength");
      LOBYTE(__p) = 0;
      v22 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v22, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v24, "strength");
        LODWORD(__p) = 0;
        sub_24BCB0594(v6, &__p, v7);
        *a1 = __p;
        sub_24BC836D4(&__p, "strength");
        sub_24BC9CAB4(v24, &__p);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v24[0] == 1)
    {
      v8 = sub_24BCB0080(v25, "topology_modifiable");
      if (v25 + 8 != v8)
      {
        v9 = sub_24BC9C8EC(v24, "topology_modifiable");
        LOBYTE(__p) = 0;
        v22 = 0;
        v10 = sub_24BCB01B0(v9, &__p);
        sub_24BC9F18C(&v22, __p);
        if ((v10 & 1) == 0)
        {
          v11 = sub_24BC9C8EC(v24, "topology_modifiable");
          LOBYTE(__p) = 0;
          sub_24BCB0940(v11, &__p);
          *(a1 + 4) = __p;
          sub_24BC836D4(&__p, "topology_modifiable");
          sub_24BC9CAB4(v24, &__p);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v24[0] == 1)
      {
        v12 = sub_24BCB0080(v25, "fix_boundary");
        if (v25 + 8 != v12)
        {
          v13 = sub_24BC9C8EC(v24, "fix_boundary");
          LOBYTE(__p) = 0;
          v22 = 0;
          v14 = sub_24BCB01B0(v13, &__p);
          sub_24BC9F18C(&v22, __p);
          if ((v14 & 1) == 0)
          {
            v15 = sub_24BC9C8EC(v24, "fix_boundary");
            LOBYTE(__p) = 0;
            sub_24BCB0940(v15, &__p);
            *(a1 + 5) = __p;
            sub_24BC836D4(&__p, "fix_boundary");
            sub_24BC9CAB4(v24, &__p);
            if (SHIBYTE(v23) < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v24[0] == 1)
        {
          v16 = sub_24BCB0080(v25, "border_constraint");
          if (v25 + 8 != v16)
          {
            v17 = sub_24BC9C8EC(v24, "border_constraint");
            LOBYTE(__p) = 0;
            v22 = 0;
            v18 = sub_24BCB01B0(v17, &__p);
            sub_24BC9F18C(&v22, __p);
            if ((v18 & 1) == 0)
            {
              v19 = sub_24BC9C8EC(v24, "border_constraint");
              LODWORD(__p) = 0;
              sub_24BCB0594(v19, &__p, v20);
              *(a1 + 8) = __p;
              sub_24BC836D4(&__p, "border_constraint");
              sub_24BC9CAB4(v24, &__p);
              if (SHIBYTE(v23) < 0)
              {
                operator delete(__p);
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v24 + 8 * *(v23 - 24) + 272) = 2;
  sub_24BC9BD14(&v23);
}

void sub_24BE44C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE44C38);
  }

  _Unwind_Resume(a1);
}

void sub_24BE44CF4(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE44208();
}

uint64_t sub_24BE44E44(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE4472C(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE44FB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_24BE4502C@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1 == 1)
  {
    v6 = 0x1913081E1B0F0B5ALL;
    v7 = 0;
    v3 = sub_24BD09B90(&v6);
  }

  else
  {
    if (a1)
    {
      v6 = 0x5755534057445312;
    }

    else
    {
      v6 = 0x7B797F6C7B687F3ELL;
    }

    v7 = 0;
    v3 = sub_24BD09B90(&v6);
  }

  result = sub_24BC836D4(a2, v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_24BE45100(const std::string *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_24BD56008(a1, &__s1);
  v15 = 0x1416100314071051;
  v16 = 0;
  v1 = sub_24BD09B90(&v15);
  v2 = strlen(v1);
  v3 = v2;
  v4 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v2 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    if (v2 == -1)
    {
      sub_24BD2237C();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v2 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (!memcmp(p_s1, v1, v3))
  {
    v11 = 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_8:
  v15 = 0x6963786E6B7F7B2ALL;
  v16 = 0;
  v6 = sub_24BD09B90(&v15);
  v7 = strlen(v6);
  v8 = v7;
  v9 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v7 == __s1.__r_.__value_.__l.__size_)
    {
      if (v7 == -1)
      {
        sub_24BD2237C();
      }

      v10 = __s1.__r_.__value_.__r.__words[0];
LABEL_14:
      v11 = memcmp(v10, v6, v8) == 0;
      if (v9 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  else if (v7 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
  {
    v10 = &__s1;
    goto LABEL_14;
  }

  v11 = 0;
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_17:
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_24BE45264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE452A0()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BCB0A6C();
}

void sub_24BE45590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_24BC9F18C((v27 + 8), a15);
  v31 = (v29 - 96);
  v32 = -64;
  do
  {
    sub_24BC9F18C(v31, *(v31 - 8));
    v31 -= 4;
    v32 += 32;
  }

  while (v32);
  v33 = &a24;
  v34 = -64;
  do
  {
    sub_24BC9F18C(v33, *(v33 - 8));
    v33 -= 4;
    v34 += 32;
  }

  while (v34);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a27 + i + 40), *(&a27 + i + 32));
  }

  sub_24BC9F18C((v28 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_24BE456D0(_DWORD *a1, void *a2)
{
  v12[0] = 0;
  v13 = 0;
  sub_24BC9C7E0(a2, v12);
  if (v12[0] == 1)
  {
    v3 = sub_24BCB0080(v13, "voxel_size");
    if (v13 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v12, "voxel_size");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v12, "voxel_size");
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        sub_24BCB0594(v6, &__p, v7);
        *a1 = __p.__r_.__value_.__l.__data_;
        sub_24BC836D4(&__p, "voxel_size");
        sub_24BC9CAB4(v12, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v8 = sub_24BC9C8EC(v12, "contraction");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v9 = sub_24BCB01B0(v8, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v9 & 1) == 0)
  {
    v10 = sub_24BC9C8EC(v12, "contraction");
    sub_24BDAEAC8(v10, &__p);
    a1[1] = sub_24BE45100(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "contraction");
    sub_24BC9CAB4(v12, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BE45A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE45A58);
  }

  _Unwind_Resume(a1);
}

void sub_24BE45B0C(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE452A0();
}

uint64_t sub_24BE45C5C(_DWORD *a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE456D0(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE45DC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

BOOL sub_24BE45E44(void *a1)
{
  v1 = a1;
  v5 = v1;
  v6 = v1 && objc_msgSend_code(v1, v2, v3, v4);

  return v6;
}

uint64_t sub_24BE45E9C(unint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = MTLCreateSystemDefaultDevice();
  v18[0] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v18, 1);

  if (objc_msgSend_count(v5, v6, v7, v8) <= a1)
  {
    v15 = 0;
  }

  else
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(v5, v9, a1, v10);
    v15 = objc_msgSend_supportsRaytracing(v11, v12, v13, v14);
  }

  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_24BE45FA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  v7 = objc_autoreleasePoolPush();
  a1[2] = a4;
  a1[3] = 0;
  a1[1] = a3;
  operator new();
}

void *sub_24BE4612C(void *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *result) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_24BC8E01C();
    }

    v9 = v4 - *result;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = result;
    if (v11)
    {
      sub_24BDBD3F4(result, v11);
    }

    v13[0] = 0;
    v13[1] = 8 * v8;
    v13[3] = 0;
    v12 = *a2;
    *a2 = 0;
    *(8 * v8) = v12;
    v13[2] = 8 * v8 + 8;
    sub_24BE49A50(result, v13);
    v7 = v3[1];
    result = sub_24BE49B00(v13);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
    result[1] = v7;
  }

  v3[1] = v7;
  return result;
}

void sub_24BE46210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE49B00(va);
  _Unwind_Resume(a1);
}

id **sub_24BE46228(id **a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  if (v5 != v4)
  {
    v6 = 0;
    do
    {
      v7 = v4[v6];
      v4[v6] = 0;

      ++v6;
      v3 = *a1;
      v4 = (*a1)[1];
      v5 = (*a1)[2];
    }

    while (v6 < (v5 - v4) >> 3);
  }

  v8 = v3;
  if (v5 != v4)
  {
    do
    {
      v9 = *(v5 - 1);
      v5 -= 8;
    }

    while (v5 != v4);
    v8 = *a1;
  }

  v3[2] = v4;
  v10 = v8[4];
  v11 = v8[5];
  if (v11 != v10)
  {
    v12 = 0;
    do
    {
      v13 = v10[v12];
      v10[v12] = 0;

      ++v12;
      v8 = *a1;
      v10 = (*a1)[4];
      v11 = (*a1)[5];
    }

    while (v12 < (v11 - v10) >> 3);
  }

  v14 = v8;
  if (v11 != v10)
  {
    do
    {
      v15 = *(v11 - 1);
      v11 -= 8;
    }

    while (v11 != v10);
    v14 = *a1;
  }

  v8[5] = v10;
  v16 = *v14;
  *v14 = 0;

  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  objc_autoreleasePoolPop(v2);
  sub_24BE49960(a1, 0);
  return a1;
}

void sub_24BE46350(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  objc_autoreleasePoolPush();
  operator new();
}

void *sub_24BE46DA0(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  result[1] = *a2;
  if (*(*result + 32) == 1)
  {
    v5 = *(*result + 48);
    if (v4 >= 3)
    {
      return objc_msgSend_setCullMode_(v5, a2, 0, a4);
    }

    else
    {
      return objc_msgSend_setCullMode_(v5, a2, v4, a4);
    }
  }

  return result;
}

void sub_24BE46DD0(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  objc_autoreleasePoolPush();
  operator new();
}

id **sub_24BE47850(id **a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_msgSend_setPurgeableState_((*a1)[2], v3, 4, v4);
  v5 = (*a1)[2];
  (*a1)[2] = 0;

  objc_msgSend_setPurgeableState_((*a1)[3], v6, 4, v7);
  v8 = (*a1)[3];
  (*a1)[3] = 0;

  v9 = (*a1)[1];
  (*a1)[1] = 0;

  v10 = **a1;
  **a1 = 0;

  v11 = (*a1)[6];
  (*a1)[6] = 0;

  v12 = (*a1)[5];
  (*a1)[5] = 0;

  v13 = (*a1)[7];
  (*a1)[7] = 0;

  v14 = (*a1)[8];
  (*a1)[8] = 0;

  objc_autoreleasePoolPop(v2);
  sub_24BE49B54(a1, 0);
  return a1;
}

double sub_24BE47938(uint64_t a1, double *a2)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

BOOL sub_24BE4794C(uint64_t a1, uint64_t *a2, void *a3)
{
  context = objc_autoreleasePoolPush();
  v6 = *a2;
  v5 = a2[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 4);
  v9 = objc_msgSend_newBufferWithLength_options_(**a1, v8, 0x5555555555555560 * ((v5 - *a2) >> 4), 0);
  v11 = objc_msgSend_newBufferWithLength_options_(**a1, v10, 16 * v7, 0);
  v12 = v9;
  v16 = objc_msgSend_contents(v12, v13, v14, v15);
  if (v5 != v6)
  {
    v20 = 0;
    if (v7 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v7;
    }

    v22 = *a2;
    v23 = v16 + 16;
    do
    {
      v24 = v22 + v20;
      v25 = *(v24 + 24);
      *v23 = *(v24 + 16);
      *(v23 + 8) = v25;
      v26 = *a2 + v20;
      v27 = *(v26 + 8);
      *(v23 - 16) = *v26;
      *(v23 - 8) = v27;
      v22 = *a2;
      v28 = *a2 + v20;
      v29 = *(v28 + 36);
      *(v23 - 4) = *(v28 + 32);
      *(v23 + 12) = v29;
      v20 += 48;
      v23 += 32;
      --v21;
    }

    while (v21);
  }

  v33 = objc_msgSend_commandBuffer(*(*a1 + 8), v17, v18, v19);
  v34 = *a1;
  if (*(*a1 + 32) == 1)
  {
    objc_msgSend_encodeIntersectionToCommandBuffer_intersectionType_rayBuffer_rayBufferOffset_intersectionBuffer_intersectionBufferOffset_rayCount_accelerationStructure_(v34[6], v30, v33, *(a1 + 12) == 1, v9, 0, v11, 0, v7, v34[5]);
  }

  else
  {
    v35 = *(a1 + 8);
    if (*(a1 + 12) == 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    v83 = v36;
    if (v35 > 2)
    {
      v37 = 5;
    }

    else
    {
      v37 = dword_24BFEDDBC[v35];
    }

    v82 = v37;
    v38 = objc_msgSend_maxTotalThreadsPerThreadgroup(v34[8], v30, v31, v32);
    if (v38 >= v7)
    {
      v42 = v7;
    }

    else
    {
      v42 = v38;
    }

    v43 = objc_msgSend_computeCommandEncoder(v33, v39, v40, v41);
    objc_msgSend_setBuffer_offset_atIndex_(v43, v44, v9, 0, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v43, v45, v11, 0, 1);
    objc_msgSend_setAccelerationStructure_atBufferIndex_(v43, v46, *(*a1 + 56), 2);
    objc_msgSend_useResource_usage_(v43, v47, *(*a1 + 56), 1);
    objc_msgSend_setBytes_length_atIndex_(v43, v48, &v83, 4, 3);
    objc_msgSend_setBytes_length_atIndex_(v43, v49, &v82, 4, 4);
    objc_msgSend_setComputePipelineState_(v43, v50, *(*a1 + 64), v51);
    v80 = v7;
    v81 = vdupq_n_s64(1uLL);
    v78 = v42;
    v79 = v81;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v43, v52, &v80, &v78);
    objc_msgSend_endEncoding(v43, v53, v54, v55);
  }

  sub_24BCDF83C();
  objc_msgSend_commit(v33, v56, v57, v58);
  objc_msgSend_waitUntilCompleted(v33, v59, v60, v61);
  v65 = objc_msgSend_error(v33, v62, v63, v64);
  v66 = sub_24BE45E44(v65);

  v67 = v11;
  v71 = objc_msgSend_contents(v67, v68, v69, v70);
  if (v5 != v6)
  {
    if (v7 <= 1)
    {
      v72 = 1;
    }

    else
    {
      v72 = v7;
    }

    v73 = (*a3 + 8);
    v74 = v71 + 8;
    do
    {
      *(v73 - 2) = *(v74 - 8);
      *(v73 - 1) = *(v74 - 4);
      *v73 = *v74;
      v73[1] = *(v74 + 4);
      v73 += 4;
      v74 += 16;
      --v72;
    }

    while (v72);
  }

  objc_autoreleasePoolPop(context);
  return !v66;
}

BOOL sub_24BE47CDC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  *__p = *a2;
  v14 = v5;
  v15 = *(a2 + 32);
  v11 = 0;
  v12 = 0;
  v10 = 0;
  sub_24BE49BEC(&v10, __p, v16, 1uLL);
  sub_24BE075AC(__p, 1uLL);
  v6 = sub_24BE4794C(a1, &v10, __p);
  v7 = __p[0];
  *a3 = *__p[0];
  a3[1] = v7[1];
  a3[2] = v7[2];
  a3[3] = v7[3];
  __p[1] = v7;
  operator delete(v7);
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_24BE47DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE47E00(unsigned int *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v95[4] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  dispatch_semaphore_wait(**a2, 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(a2 + 24);
  v11 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) >= *(a2 + 16))
  {
    v12 = *(a2 + 16);
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4);
  }

  *(a2 + 24) = (v10 + 1) % *(a2 + 8);
  v13 = v11[1][v10].isa;
  v17 = objc_msgSend_contents(v13, v14, v15, v16);
  if (v12)
  {
    v21 = 0;
    v22 = *a3;
    v23 = v17 + 16;
    v24 = v12;
    do
    {
      v25 = v22 + v21;
      v26 = *(v25 + 24);
      *v23 = *(v25 + 16);
      *(v23 + 8) = v26;
      v27 = *a3 + v21;
      v28 = *(v27 + 8);
      *(v23 - 16) = *v27;
      *(v23 - 8) = v28;
      v22 = *a3;
      v29 = *a3 + v21;
      *(v23 - 4) = *(v29 + 32);
      *(v23 + 12) = *(v29 + 36);
      v21 += 48;
      v23 += 32;
      --v24;
    }

    while (v24);
  }

  v33 = objc_msgSend_commandBuffer(*(*a1 + 8), v18, v19, v20);
  if ((a5 & 1) == 0)
  {
    __p = 0;
    v90.i64[0] = &__p;
    v90.i64[1] = 0x3032000000;
    v91 = sub_24BE48404;
    v92 = sub_24BE48414;
    v93 = **a2;
    v84 = 0;
    v85.i64[0] = &v84;
    v85.i64[1] = 0x3032000000;
    v86 = sub_24BE48404;
    v87 = sub_24BE48414;
    v88 = *(*(*a2 + 32) + 8 * v10);
    v83[0] = 0;
    v83[1] = v83;
    v83[2] = 0x2020000000;
    v83[3] = v12;
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3321888768;
    v94[2] = sub_24BE4841C;
    v94[3] = &unk_285F97358;
    v94[4] = &__p;
    v94[5] = &v84;
    v94[6] = v83;
    sub_24BE49C78(v95, a4);
    objc_msgSend_addCompletedHandler_(v33, v34, v94, v35);
    sub_24BE1A5F8(v95);
    _Block_object_dispose(v83, 8);
    _Block_object_dispose(&v84, 8);

    _Block_object_dispose(&__p, 8);
  }

  v36 = *a1;
  if (*(*a1 + 32) == 1)
  {
    v37 = *(*(*a2 + 8) + 8 * v10);
    if (a1[3] == 1)
    {
      objc_msgSend_encodeIntersectionToCommandBuffer_intersectionType_rayBuffer_rayBufferOffset_intersectionBuffer_intersectionBufferOffset_rayCount_accelerationStructure_(*(v36 + 48), v30, v33, 1, v37, 0, *(*(*a2 + 32) + 8 * v10), 0, v12, *(v36 + 40));
    }

    else
    {
      objc_msgSend_encodeIntersectionToCommandBuffer_intersectionType_rayBuffer_rayBufferOffset_intersectionBuffer_intersectionBufferOffset_rayCount_accelerationStructure_(*(v36 + 48), v30, v33, 0, v37, 0, *(*(*a2 + 32) + 8 * v10), 0, v12, *(v36 + 40));
    }
  }

  else
  {
    v38 = a1[2];
    if (a1[3] == 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = 2;
    }

    LODWORD(v83[0]) = v39;
    if (v38 > 2)
    {
      v40 = 5;
    }

    else
    {
      v40 = dword_24BFEDDBC[v38];
    }

    v82 = v40;
    v41 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(v36 + 64), v30, v31, v32);
    if (v41 >= v12)
    {
      v45 = v12;
    }

    else
    {
      v45 = v41;
    }

    v46 = objc_msgSend_computeCommandEncoder(v33, v42, v43, v44);
    objc_msgSend_setBuffer_offset_atIndex_(v46, v47, *(*(*a2 + 8) + 8 * v10), 0, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v46, v48, *(*(*a2 + 32) + 8 * v10), 0, 1);
    objc_msgSend_setAccelerationStructure_atBufferIndex_(v46, v49, *(*a1 + 56), 2);
    objc_msgSend_useResource_usage_(v46, v50, *(*a1 + 56), 1);
    objc_msgSend_setBytes_length_atIndex_(v46, v51, v83, 4, 3);
    objc_msgSend_setBytes_length_atIndex_(v46, v52, &v82, 4, 4);
    objc_msgSend_setComputePipelineState_(v46, v53, *(*a1 + 64), v54);
    __p = v12;
    v90 = vdupq_n_s64(1uLL);
    v84 = v45;
    v85 = v90;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v46, v55, &__p, &v84);
    objc_msgSend_endEncoding(v46, v56, v57, v58);
  }

  sub_24BCDF83C();
  objc_msgSend_commit(v33, v59, v60, v61);
  if (a5)
  {
    objc_msgSend_waitUntilCompleted(v33, v62, v63, v64);
    v68 = objc_msgSend_error(v33, v65, v66, v67);
    v69 = sub_24BE45E44(v68);

    dispatch_semaphore_signal(**a2);
    v70 = *(*(*a2 + 32) + 8 * v10);
    v74 = objc_msgSend_contents(v70, v71, v72, v73);
    sub_24BE075AC(&__p, v12);
    if (v12)
    {
      v75 = __p + 8;
      v76 = v74 + 8;
      do
      {
        *(v75 - 2) = *(v76 - 8);
        *(v75 - 1) = *(v76 - 4);
        *v75 = *v76;
        v75[1] = *(v76 + 4);
        v75 += 4;
        v76 += 16;
        --v12;
      }

      while (v12);
    }

    v77 = *(a4 + 24);
    if (!v77)
    {
      sub_24BCA1F3C();
    }

    (*(*v77 + 48))(v77, &__p);
    v78 = !v69;
    if (__p)
    {
      v90.i64[0] = __p;
      operator delete(__p);
    }
  }

  else
  {
    v78 = 1;
  }

  objc_autoreleasePoolPop(context);
  v79 = *MEMORY[0x277D85DE8];
  return v78;
}

uint64_t sub_24BE48404(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24BE4841C(void *a1, void *a2)
{
  v3 = a2;
  dispatch_semaphore_signal(*(*(a1[4] + 8) + 40));
  v4 = *(*(a1[5] + 8) + 40);
  v8 = objc_msgSend_contents(v4, v5, v6, v7);
  sub_24BE075AC(__p, *(*(a1[6] + 8) + 24));
  if (*(*(a1[6] + 8) + 24))
  {
    v9 = 0;
    v10 = __p[0] + 8;
    v11 = v8 + 8;
    do
    {
      *(v10 - 2) = *(v11 - 8);
      *(v10 - 1) = *(v11 - 4);
      *v10 = *v11;
      v10[1] = *(v11 + 4);
      ++v9;
      v10 += 4;
      v11 += 16;
    }

    while (v9 < *(*(a1[6] + 8) + 24));
  }

  v12 = a1[10];
  if (!v12)
  {
    sub_24BCA1F3C();
  }

  (*(*v12 + 48))(v12, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t sub_24BE48588(uint64_t a1)
{
  if (*(*a1 + 32))
  {
    return 0;
  }

  else
  {
    return *(*a1 + 56);
  }
}

uint64_t sub_24BE485A4(uint64_t a1)
{
  if (*(*a1 + 32) == 1)
  {
    return *(*a1 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BE485C4(uint64_t a1)
{
  if (*(*a1 + 32) == 1)
  {
    return *(*a1 + 40);
  }

  else
  {
    return 0;
  }
}

void sub_24BE485E4()
{
  v0[8] = *MEMORY[0x277D85DE8];
  v0[3] = 0;
  sub_24BE46350(v0);
}

void sub_24BE486E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, id *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_24BC9EF8C(va1);
  sub_24BE47850(va);
  _Unwind_Resume(a1);
}

void sub_24BE48710(uint64_t *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_24BE49D10(a1, a2 - v2);
  }
}

_BYTE *sub_24BE48740@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 == 1)
  {
    *&v6[16] = 3;
    *v6 = xmmword_24BFEDCEB;
    v3 = sub_24BD09DEC(v6);
  }

  else
  {
    if (a1)
    {
      *v6 = xmmword_24BFEDCFD;
      strcpy(&v6[14], "\\WS@WAF");
    }

    else
    {
      *v6 = xmmword_24BFEDCD5;
      *&v6[14] = 0x6A6D7B6C7F7B70;
    }

    v3 = sub_24BCE1904(v6);
  }

  result = sub_24BC836D4(a2, v3->i8);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_24BE48814(const std::string *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  sub_24BD56008(a1, &__s1);
  *v15 = xmmword_24BFEDD13;
  *&v15[14] = 0x502140310141FLL;
  v1 = sub_24BCE1904(v15);
  v2 = strlen(v1);
  v3 = v2;
  v4 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v2 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    if (v2 == -1)
    {
      sub_24BD2237C();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v2 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (!memcmp(p_s1, v1, v3))
  {
    v11 = 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_8:
  strcpy(v15, "*cd~oxyoi~cedukds");
  v6 = sub_24BD09DEC(v15);
  v7 = strlen(v6->i8);
  v8 = v7;
  v9 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v7 == __s1.__r_.__value_.__l.__size_)
    {
      if (v7 == -1)
      {
        sub_24BD2237C();
      }

      v10 = __s1.__r_.__value_.__r.__words[0];
LABEL_14:
      v11 = memcmp(v10, v6, v8) == 0;
      if (v9 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  else if (v7 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
  {
    v10 = &__s1;
    goto LABEL_14;
  }

  v11 = 0;
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_17:
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_24BE48978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BE489B4@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v6[2] = *MEMORY[0x277D85DE8];
  if (a1 == 2)
  {
    strcpy(v6, "\aDRKKXEFDL");
    v3 = sub_24BD1F27C(v6);
  }

  else if (a1 == 1)
  {
    v6[0] = 0x511081B1B021457;
    LODWORD(v6[1]) = 203032;
    v3 = sub_24BD0E030(v6);
  }

  else
  {
    if (a1)
    {
      v6[0] = 0x1E1F0E1D1D041251;
      BYTE2(v6[1]) = 0;
      LOWORD(v6[1]) = 5151;
    }

    else
    {
      v6[0] = 0x1C1D0C1F1F061053;
      BYTE2(v6[1]) = 0;
      LOWORD(v6[1]) = 5661;
    }

    v3 = sub_24BD1F27C(v6);
  }

  result = sub_24BC836D4(a2, v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BE48AD4(const std::string *a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  sub_24BD56008(a1, &__s1);
  v20[0] = 0x65647566667F692ALL;
  strcpy(&v20[1], "do");
  v1 = sub_24BD1F27C(v20);
  v2 = strlen(v1);
  v3 = v2;
  v4 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v2 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    if (v2 == -1)
    {
      sub_24BD2237C();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v2 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (memcmp(p_s1, v1, v3))
  {
LABEL_8:
    v20[0] = 0x1501180B0B120447;
    LODWORD(v20[1]) = 1247496;
    v6 = sub_24BD0E030(v20);
    v7 = strlen(v6);
    v8 = v7;
    v9 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v7 != __s1.__r_.__value_.__l.__size_)
      {
        goto LABEL_15;
      }

      if (v7 == -1)
      {
        sub_24BD2237C();
      }

      v10 = __s1.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v7 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_15;
      }

      v10 = &__s1;
    }

    if (!memcmp(v10, v6, v8))
    {
      v16 = 1;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    strcpy(v20, "c 6//<! (");
    v11 = sub_24BD1F27C(v20);
    v12 = strlen(v11);
    v13 = v12;
    v14 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v12 == __s1.__r_.__value_.__l.__size_)
      {
        if (v12 == -1)
        {
          sub_24BD2237C();
        }

        v15 = __s1.__r_.__value_.__r.__words[0];
LABEL_21:
        v16 = 2 * (memcmp(v15, v11, v13) == 0);
        if (v14 < 0)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    else if (v12 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      v15 = &__s1;
      goto LABEL_21;
    }

    v16 = 0;
    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v16 = 0;
  if (v4 < 0)
  {
LABEL_26:
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

LABEL_27:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_24BE48CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE48D14()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAE6E4();
}

void sub_24BE4904C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, unsigned __int8 a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_24BC9F18C((v34 + 8), a22);
  v38 = (v36 - 96);
  v39 = -64;
  do
  {
    sub_24BC9F18C(v38, *(v38 - 8));
    v38 -= 4;
    v39 += 32;
  }

  while (v39);
  v40 = &a31;
  v41 = -64;
  do
  {
    sub_24BC9F18C(v40, *(v40 - 8));
    v40 -= 4;
    v41 += 32;
  }

  while (v41);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a34 + i + 40), *(&a34 + i + 32));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_24BC9F18C((v35 + 8), a24);
  _Unwind_Resume(a1);
}

void sub_24BE491C8(_DWORD *a1, void *a2)
{
  v10[0] = 0;
  v11 = 0;
  sub_24BC9C7E0(a2, v10);
  v3 = sub_24BC9C8EC(v10, "cull_mode");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v4 = sub_24BCB01B0(v3, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v4 & 1) == 0)
  {
    v5 = sub_24BC9C8EC(v10, "cull_mode");
    sub_24BDAEAC8(v5, &__p);
    *a1 = sub_24BE48AD4(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "cull_mode");
    sub_24BC9CAB4(v10, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v6 = sub_24BC9C8EC(v10, "intersection_type");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v7 = sub_24BCB01B0(v6, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v7 & 1) == 0)
  {
    v8 = sub_24BC9C8EC(v10, "intersection_type");
    sub_24BDAEAC8(v8, &__p);
    a1[1] = sub_24BE48814(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "intersection_type");
    sub_24BC9CAB4(v10, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BE49550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE49534);
  }

  _Unwind_Resume(a1);
}

void sub_24BE49604(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE48D14();
}

void sub_24BE49738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_24BD2741C(&a9, MEMORY[0x277D82810]);
  MEMORY[0x24C2547D0](v9 + 416);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE49764(_DWORD *a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE491C8(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE498D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD6BA18(va, MEMORY[0x277D82808]);
  MEMORY[0x24C2547D0](v2 + 424);
  _Unwind_Resume(a1);
}

id **sub_24BE49960(id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2 + 4;
    sub_24BE499D0(&v3);
    v3 = v2 + 1;
    sub_24BE499D0(&v3);

    return MEMORY[0x24C2548B0](v2, 0x80C40C96DFCA5);
  }

  return result;
}

void sub_24BE499D0(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_24BE49A50(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_24BE49B00(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

id **sub_24BE49B54(id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x24C2548B0);
  }

  return result;
}

uint64_t sub_24BE49BEC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BE07508(result, a4);
  }

  return result;
}

void sub_24BE49C5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE49C78(uint64_t a1, uint64_t a2)
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

void sub_24BE49D10(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v3) >> 4)
  {
    if (a2)
    {
      v10 = &v3[2 * a2];
      do
      {
        *v3 = -1082130432;
        v3[1] = 0;
        v3 += 2;
      }

      while (v3 != v10);
      v3 = v10;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = v3 - *a1;
    v6 = a2 + (v5 >> 4);
    if (v6 >> 60)
    {
      sub_24BC8E01C();
    }

    v7 = v5 >> 4;
    v8 = v4 - *a1;
    if (v8 >> 3 > v6)
    {
      v6 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v6;
    }

    v16 = a1;
    if (v9)
    {
      sub_24BCA1868(a1, v9);
    }

    v11 = (16 * v7);
    __p = 0;
    v13 = 16 * v7;
    v15 = 0;
    do
    {
      *v11 = -1082130432;
      v11[1] = 0;
      v11 += 2;
    }

    while (v11 != (16 * v7 + 16 * a2));
    v14 = 16 * v7 + 16 * a2;
    sub_24BE49E6C(a1, &__p);
    if (v14 != v13)
    {
      v14 += (v13 - v14 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BE49E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BE49E6C(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 12) = *(v2 + 12);
      v2 += 16;
      v5 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

__n128 sub_24BE49F68(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F97398;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BE49FA0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a3 - *a2;
  if (v6 >= 0x40000)
  {
    v7 = 0x40000;
  }

  else
  {
    v7 = *a3 - *a2;
  }

  sub_24BE07478(&v22, v7);
  sub_24BE075AC(__p, v7);
  if (v5 > v4)
  {
    v8 = 48 * v4;
    v9 = 16 * v4;
    v10 = v6;
    do
    {
      if (v10 >= v6)
      {
        v11 = v6;
      }

      else
      {
        v11 = v10;
      }

      if (v11 >= 0x40000)
      {
        v12 = 0x40000;
      }

      else
      {
        v12 = v11;
      }

      if (v5 - v4 >= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = v5 - v4;
      }

      if (v7 > v5 - v4)
      {
        sub_24BE1A134(&v22, v13);
        sub_24BE48710(__p, 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 4));
      }

      if (v13)
      {
        v14 = 0;
        do
        {
          v15 = **(a1 + 8) + v8 + v14;
          v16 = v22 + v14;
          *v16 = *v15;
          *(v16 + 1) = *(v15 + 16);
          *(v16 + 4) = *(v15 + 32);
          v14 += 48;
        }

        while (48 * v12 != v14);
      }

      sub_24BE4794C(*(a1 + 24), &v22, __p);
      if (v13)
      {
        v17 = 0;
        v18 = v9;
        do
        {
          v19 = __p[0] + v17;
          v20 = **(a1 + 16) + v18;
          *v20 = *(__p[0] + v17);
          *(v20 + 8) = *(v19 + 2);
          *(v20 + 12) = *(v19 + 3);
          v18 += 16;
          v17 += 16;
          --v12;
        }

        while (v12);
      }

      v4 += v7;
      v10 -= v7;
      v8 += 48 * v7;
      v9 += 16 * v7;
    }

    while (v4 < v5);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_24BE4A174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_24BE4A1A8(char *__dst, __int128 *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 7) = 0;
  *(__dst + 40) = 0u;
  *(__dst + 24) = 0u;
  *(__dst + 16) = 1065353216;
  v11 = xmmword_24BFEDDE0;
  v5 = sub_24BCBBD2C(&v11);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = os_log_create(v5, v6);
  v8 = *(__dst + 3);
  *(__dst + 3) = v7;

  v9 = *MEMORY[0x277D85DE8];
  return __dst;
}

void sub_24BE4A278(_Unwind_Exception *a1)
{
  sub_24BE4A5A4(v1 + 32);

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

const void *sub_24BE4A2B8(uint64_t a1, char *a2)
{
  sub_24BC836D4(&v11, a2);
  sub_24BC836D4(__p, a2);
  v4 = sub_24BD1B270((a1 + 32), __p);
  v5 = v4;
  if (v10 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v6 = os_signpost_id_generate(*(a1 + 24));
  sub_24BC836D4(__p, a2);
  v13 = __p;
  sub_24BE4A62C((a1 + 32), __p)[5] = v6;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_7:
  sub_24BC836D4(__p, a2);
  v13 = __p;
  v7 = sub_24BE4A62C((a1 + 32), __p)[5];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  return v7;
}

void sub_24BE4A3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE4A418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0;
  sub_24BE4A498((a1 + 8), a3);
  v5 = *(a2 + 24);
  if (!v5)
  {
    sub_24BCA1F3C();
  }

  (*(*v5 + 48))(v5);
  return a1;
}

void *sub_24BE4A498(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_24BE4A910(v5, a2);
  sub_24BE4A9A8(v5, a1);
  sub_24BCC9738(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_24BE4A510(uint64_t a1)
{
  sub_24BE4A544(a1);
  sub_24BCC9738(a1 + 8);
  return a1;
}

uint64_t sub_24BE4A544(uint64_t result)
{
  if ((*result & 1) == 0)
  {
    *result = 1;
    v2 = *(result + 32);
    if (!v2)
    {
      sub_24BCA1F3C();
    }

    v3 = *(*v2 + 48);

    return v3();
  }

  return result;
}

uint64_t sub_24BE4A5A4(uint64_t a1)
{
  sub_24BE4A5E0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24BE4A5E0(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **sub_24BE4A62C(void *a1, const void **a2)
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
    operator new();
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

void sub_24BE4A8AC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_24BE4A910(uint64_t a1, uint64_t a2)
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

void *sub_24BE4A9A8(void *result, void *a2)
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

void sub_24BE4AC00(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

void sub_24BE4AC0C(uint64_t a1, float *a2, uint64_t a3)
{
  v236 = *MEMORY[0x277D85DE8];
  std::chrono::system_clock::now();
  sub_24BD6B968(v229, a3);
  LODWORD(v223) = 0;
  v224 = std::system_category();
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  memset(v228, 0, sizeof(v228));
  v6 = cosf(*a2);
  sub_24BCB3B5C(a1);
  sub_24BC836D4(__p, off_27F078FD0[0]);
  v233 = 0uLL;
  v194 = sub_24BCB6470((a1 + 56), &v233, __p);
  if (SBYTE7(v231) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  v8 = v7;
  sub_24BD98A10(&v221, v7);
  if (v7)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      LODWORD(__p[0]) = v10;
      v9 = sub_24BC96B00(a1, __p);
      v12 = (v221 + v11);
      *v12 = *__p;
      v12[1] = v9;
      v11 += 8;
      ++v10;
    }

    while (8 * v7 != v11);
  }

  v13 = 126 - 2 * __clz((v222 - v221) >> 3);
  if (v222 == v221)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  sub_24BD98A84(v221, v222, v14, 1, v9);
  v218 = 0;
  v219 = 0;
  v220 = 0;
  sub_24BCB58AC(&v218, 0x32uLL);
  LOBYTE(__p[0]) = 0;
  sub_24BC9FEFC(&v216, v7);
  v213 = 0;
  v214 = 0;
  v215 = 0;
  sub_24BCB8D20(&v213, vcvtd_n_f64_u64(v7, 1uLL));
  v195 = v7;
  if (v7)
  {
    v15 = 0;
    do
    {
      if ((*(v216 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15))
      {
        ++v15;
      }

      else
      {
        v214 = v213;
        v16 = v221;
        v17 = 8 * v15;
        v18 = *(v221 + 2 * v15);
        v19 = (*(a1 + 56) + 16 * v194);
        v21 = *v19;
        v20 = v19[1];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v20);
          v16 = v221;
        }

        v22 = *(v21 + 40);
        v199 = v16[2 * v15 + 1];
        v197 = *(v22 + 16 * v18);
        LODWORD(__p[0]) = v15;
        sub_24BC97D60(&v213, __p);
        v200 = vaddq_f32(vmulq_n_f32(v197, v199), 0);
        ++v15;
        v23 = v221;
        if (v15 < (v222 - v221) >> 3)
        {
          v24 = v15;
          do
          {
            v25 = *&v23[v17 + 8];
            v26 = (*(a1 + 56) + 16 * v194);
            v28 = *v26;
            v27 = v26[1];
            if (v27)
            {
              atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v27);
              v23 = v221;
            }

            v29 = vmulq_f32(*(*(v28 + 40) + 16 * v25), *(v22 + 16 * v18));
            v29.i32[3] = 0;
            if (vaddv_f32(*&vpaddq_f32(v29, v29)) > v6)
            {
              v196 = *&v23[v17 + 12];
              v198 = *(*(v28 + 40) + 16 * v25);
              LODWORD(__p[0]) = v24;
              sub_24BC97D60(&v213, __p);
              v200 = vaddq_f32(v200, vmulq_n_f32(v198, v196));
              v23 = v221;
            }

            ++v24;
            v17 += 8;
          }

          while (v24 < (v222 - v23) >> 3);
        }

        v30 = vmulq_f32(v200, v200);
        v30.i32[3] = 0;
        v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
        v30.f32[0] = sqrtf(vaddv_f32(*v30.f32));
        v31 = vdivq_f32(v200, vdupq_lane_s32(*v30.f32, 0));
        *__p = v31;
        v32 = v219;
        if (v219 >= v220)
        {
          v33 = sub_24BD47100(&v218, __p);
        }

        else
        {
          *v219 = v31;
          v33 = (v32 + 16);
        }

        v219 = v33;
        v34 = v213;
        v35 = v214;
        while (v34 != v35)
        {
          v36 = *(v221 + 2 * *v34);
          v37 = (*(a1 + 56) + 16 * v194);
          v39 = *v37;
          v38 = v37[1];
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v38);
          }

          v40 = vmulq_f32(*(*(v39 + 40) + 16 * v36), *__p);
          v40.i32[3] = 0;
          if (vaddv_f32(*&vpaddq_f32(v40, v40)) > v6)
          {
            *(v216 + ((*v34 >> 3) & 0x1FFFFFF8)) |= 1 << *v34;
          }

          ++v34;
        }

        v8 = v195;
      }
    }

    while (v15 != v8);
  }

  v222 = v221;
  sub_24BCA123C(&v212, v8);
  v41 = v218;
  v42 = (v219 - v218) >> 4;
  if (v8)
  {
    v43 = 0;
    do
    {
      if (v42)
      {
        v44 = 0;
        v45 = 0;
        v46 = -3.4028e38;
        do
        {
          v47 = (*(a1 + 56) + 16 * v194);
          v49 = *v47;
          v48 = v47[1];
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v48);
            v41 = v218;
          }

          v50 = vmulq_f32(*(*(v49 + 40) + 16 * v43), v41[v44]);
          v50.i32[3] = 0;
          v51 = vaddv_f32(*&vpaddq_f32(v50, v50));
          if (v51 > v46)
          {
            v46 = v51;
            v45 = v44;
          }

          ++v44;
        }

        while (v42 != v44);
      }

      else
      {
        v45 = 0;
      }

      *(v212 + v43++) = v45;
    }

    while (v43 != v195);
  }

  v209 = 0;
  v210 = 0;
  v211 = 0;
  sub_24BCA123C(&v208, v195);
  sub_24BCB29DC(&v216, v195, 0);
  if (v217 >= 1)
  {
    __p[0] = v216;
    LODWORD(__p[1]) = 0;
    sub_24BCA00C8(__p, v217);
  }

  if (v195)
  {
    for (i = 0; i != v195; ++i)
    {
      if ((*(v216 + (i >> 6)) & (1 << i)) == 0)
      {
        LODWORD(__p[0]) = 1;
        sub_24BC97D60(&v209, __p);
        v54 = v209;
        v53 = v210;
        v231 = 0u;
        v232 = 0u;
        *__p = 0u;
        LODWORD(v233) = i;
        sub_24BD94C40(__p, &v233);
        v55 = ((v53 - v54) >> 2) - 1;
        *(v216 + (i >> 6)) |= 1 << i;
        *(v208 + i) = v55;
        v56 = *(&v232 + 1);
        if (*(&v232 + 1))
        {
          v57 = *(v212 + i);
          do
          {
            v58 = v232;
            LODWORD(v233) = *(*(__p[1] + ((v232 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v232 & 0x3FF));
            *(&v232 + 1) = v56 - 1;
            *&v232 = v232 + 1;
            if ((v58 + 1) >= 0x800)
            {
              operator delete(*__p[1]);
              __p[1] = __p[1] + 8;
              *&v232 = v232 - 1024;
            }

            v59 = *sub_24BCB9038(a1 + 104, &v233);
            LODWORD(v205) = v59;
            do
            {
              LODWORD(v205) = *(sub_24BCB9024(a1 + 104, &v205) + 8);
              v60 = sub_24BCB9024(a1 + 104, &v205);
              v61 = sub_24BC9ECE4(a1, *(a1 + 180), *v60);
              if ((*v61 & v62) == 0)
              {
                v63 = sub_24BCB9024(a1 + 104, &v205);
                LODWORD(v203) = *(sub_24BCB9024(a1 + 104, v63) + 16);
                if (((*(v216 + ((v203 >> 3) & 0x1FFFFFF8)) >> v203) & 1) == 0 && *(v212 + v203) == v57)
                {
                  sub_24BD94C40(__p, &v203);
                  v64 = v203;
                  *(v216 + ((v203 >> 3) & 0x1FFFFFF8)) |= 1 << v203;
                  *(v208 + v64) = v55;
                  ++*(v209 + v55);
                }
              }
            }

            while (v205 != v59);
            v56 = *(&v232 + 1);
          }

          while (*(&v232 + 1));
        }

        sub_24BCA102C(__p);
      }
    }

    for (j = 0; j != v195; ++j)
    {
      if (*(v209 + *(v208 + j)) == 1)
      {
        v66 = (*(a1 + 56) + 16 * v194);
        v68 = *v66;
        v67 = v66[1];
        if (v67)
        {
          atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v67);
        }

        v69 = *(v68 + 40);
        v70 = *(v212 + j);
        LODWORD(__p[0]) = j;
        v71 = *sub_24BCB9038(a1 + 104, __p);
        LODWORD(__p[0]) = v71;
        v72 = 0.0;
        v73 = 0xFFFFFFFFLL;
        do
        {
          LODWORD(__p[0]) = *(sub_24BCB9024(a1 + 104, __p) + 8);
          v74 = sub_24BCB9024(a1 + 104, __p);
          v75 = sub_24BC9ECE4(a1, *(a1 + 180), *v74);
          if ((*v75 & v76) == 0)
          {
            v77 = sub_24BCB9024(a1 + 104, __p);
            v78 = sub_24BCB9024(a1 + 104, v77);
            v79 = *(v78 + 16);
            v80 = vmulq_f32(*(v218 + *(v212 + v79)), *(v69 + 16 * j));
            v80.i32[3] = 0;
            v81 = vaddv_f32(*&vpaddq_f32(v80, v80));
            if (v81 > v72)
            {
              v82 = v81 * *(v209 + *(v208 + v79));
              if (v82 > v6)
              {
                v73 = *(v78 + 16);
                v72 = v82;
                v70 = *(v212 + v79);
              }
            }
          }
        }

        while (LODWORD(__p[0]) != v71);
        if (*(v212 + j) != v70)
        {
          *(v212 + j) = v70;
          v83 = v208;
          v84 = v209;
          *(v209 + *(v208 + j)) = 0;
          v85 = v83[v73];
          v83[j] = v85;
          ++v84[v85];
        }
      }
    }

    for (k = 0; k != v195; ++k)
    {
      if (*(v209 + *(v208 + k)) == 2)
      {
        LODWORD(__p[0]) = k;
        v87 = *sub_24BCB9038(a1 + 104, __p);
        LODWORD(__p[0]) = v87;
        while (1)
        {
          LODWORD(__p[0]) = *(sub_24BCB9024(a1 + 104, __p) + 8);
          v88 = sub_24BCB9024(a1 + 104, __p);
          v89 = sub_24BC9ECE4(a1, *(a1 + 180), *v88);
          if ((*v89 & v90) == 0)
          {
            v91 = sub_24BCB9024(a1 + 104, __p);
            v92 = *(sub_24BCB9024(a1 + 104, v91) + 16);
            if (*(v212 + v92) == *(v212 + k))
            {
              break;
            }
          }

          if (LODWORD(__p[0]) == v87)
          {
            goto LABEL_83;
          }
        }

        if (v92 != -1)
        {
          v93 = (*(a1 + 56) + 16 * v194);
          v95 = *v93;
          v94 = v93[1];
          if (v94)
          {
            atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v94);
            v96 = (*(a1 + 56) + 16 * v194);
            v98 = *v96;
            v97 = v96[1];
            v99 = (*(v95 + 40) + 16 * k);
            if (v97)
            {
              atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v97);
            }

            v95 = v98;
          }

          else
          {
            v99 = (*(v95 + 40) + 16 * k);
          }

          v100 = *(v95 + 40);
          v101 = *(v212 + k);
          LODWORD(v233) = k;
          v102 = *sub_24BCB9038(a1 + 104, &v233);
          LODWORD(__p[0]) = v102;
          v103 = 0.0;
          v201 = 0xFFFFFFFFLL;
          do
          {
            LODWORD(__p[0]) = *(sub_24BCB9024(a1 + 104, __p) + 8);
            v104 = sub_24BCB9024(a1 + 104, __p);
            v105 = sub_24BC9ECE4(a1, *(a1 + 180), *v104);
            if ((*v105 & v106) == 0)
            {
              v107 = sub_24BCB9024(a1 + 104, __p);
              v108 = sub_24BCB9024(a1 + 104, v107);
              v109 = *(v108 + 16);
              v110 = *(v212 + v109);
              if (v110 != *(v212 + k))
              {
                v111 = *(v218 + v110);
                v112 = vmulq_f32(*v99, v111);
                v112.i32[3] = 0;
                v113 = vaddv_f32(*&vpaddq_f32(v112, v112));
                v114 = vmulq_f32(v111, *(v100 + 16 * v92));
                v114.i32[3] = 0;
                v115 = vaddv_f32(*&vpaddq_f32(v114, v114));
                if (v113 > v6 && v115 > v6)
                {
                  v117 = (v113 + v115) * *(v209 + *(v208 + v109));
                  if (v117 > v103)
                  {
                    v201 = *(v108 + 16);
                    v103 = v117;
                    v101 = *(v212 + v109);
                  }
                }
              }
            }
          }

          while (LODWORD(__p[0]) != v102);
          LODWORD(v233) = v92;
          v118 = *sub_24BCB9038(a1 + 104, &v233);
          LODWORD(__p[0]) = v118;
          do
          {
            LODWORD(__p[0]) = *(sub_24BCB9024(a1 + 104, __p) + 8);
            v119 = sub_24BCB9024(a1 + 104, __p);
            v120 = sub_24BC9ECE4(a1, *(a1 + 180), *v119);
            if ((*v120 & v121) == 0)
            {
              v122 = sub_24BCB9024(a1 + 104, __p);
              v123 = sub_24BCB9024(a1 + 104, v122);
              v124 = *(v123 + 16);
              v125 = *(v212 + v124);
              if (v125 != *(v212 + v92))
              {
                v126 = *(v218 + v125);
                v127 = vmulq_f32(*v99, v126);
                v127.i32[3] = 0;
                v128 = vaddv_f32(*&vpaddq_f32(v127, v127));
                v129 = vmulq_f32(v126, *(v100 + 16 * v92));
                v129.i32[3] = 0;
                v130 = vaddv_f32(*&vpaddq_f32(v129, v129));
                if (v128 > v6 && v130 > v6)
                {
                  v132 = (v128 + v130) * *(v209 + *(v208 + v124));
                  if (v132 > v103)
                  {
                    v201 = *(v123 + 16);
                    v103 = v132;
                    v101 = *(v212 + v124);
                  }
                }
              }
            }
          }

          while (LODWORD(__p[0]) != v118);
          v133 = v212;
          if (*(v212 + k) != v101 && *(v212 + v92) != v101)
          {
            *(v212 + v92) = v101;
            v133[k] = v101;
            v134 = v208;
            v135 = v209;
            *(v209 + *(v208 + k)) = 0;
            v136 = v134[v201];
            v134[v92] = v136;
            v134[k] = v136;
            v135[v136] += 2;
          }
        }
      }

LABEL_83:
      ;
    }
  }

  v206 = -1;
  v207 = -1;
  sub_24BC836D4(__p, off_27F078FE8[0]);
  v137 = sub_24BD265CC(a1, &v207, __p);
  v138 = v137;
  if (SBYTE7(v231) < 0)
  {
    operator delete(__p[0]);
    if (v138)
    {
LABEL_116:
      v139 = (*(a1 + 80) + 16 * v207);
      v141 = *v139;
      v140 = v139[1];
      if (v140)
      {
        atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v140);
      }

      (*(*v141 + 40))(v141);
      sub_24BC836D4(__p, off_27F078FC8[0]);
      LODWORD(v233) = 0;
      v142 = sub_24BCCA8D0((a1 + 56), &v233, __p);
      v143 = v142;
      v206 = v142;
      if (SBYTE7(v231) < 0)
      {
        operator delete(__p[0]);
      }

      if (v143 == -1)
      {
        sub_24BC836D4(__p, off_27F078FC8[0]);
        sub_24BD95714(a1);
      }

      if (v217 >= 1)
      {
        __p[0] = v216;
        LODWORD(__p[1]) = 0;
        sub_24BCA00C8(__p, v217);
      }

      if (v195)
      {
        for (m = 0; m != v195; ++m)
        {
          if ((*(v216 + (m >> 6)) & (1 << m)) == 0)
          {
            v145 = (*(a1 + 80) + 16 * v207);
            v147 = *v145;
            v146 = v145[1];
            if (v146)
            {
              atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v146);
            }

            (*(*v147 + 48))(v147);
            v148 = (*(a1 + 80) + 16 * v207);
            v150 = *v148;
            v149 = v148[1];
            if (v149)
            {
              atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v149);
            }

            v151 = (*(*v150 + 16))(v150) - 1;
            std::to_string(__p, v151);
            v152 = std::string::insert(__p, 0, "g");
            v153 = v152->__r_.__value_.__r.__words[0];
            *&v233 = v152->__r_.__value_.__l.__size_;
            *(&v233 + 7) = *(&v152->__r_.__value_.__r.__words[1] + 7);
            v154 = HIBYTE(v152->__r_.__value_.__r.__words[2]);
            v152->__r_.__value_.__l.__size_ = 0;
            v152->__r_.__value_.__r.__words[2] = 0;
            v152->__r_.__value_.__r.__words[0] = 0;
            v155 = (*(a1 + 80) + 16 * v207);
            v157 = *v155;
            v156 = v155[1];
            if (v156)
            {
              atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v156);
            }

            v158 = *(v157 + 40) + 24 * v151;
            if (*(v158 + 23) < 0)
            {
              operator delete(*v158);
            }

            *v158 = v153;
            *(v158 + 8) = v233;
            *(v158 + 15) = *(&v233 + 7);
            *(v158 + 23) = v154;
            if (SBYTE7(v231) < 0)
            {
              operator delete(__p[0]);
            }

            v231 = 0u;
            v232 = 0u;
            *__p = 0u;
            LODWORD(v233) = m;
            sub_24BD94C40(__p, &v233);
            *(v216 + (m >> 6)) |= 1 << m;
            v159 = *(&v232 + 1);
            if (*(&v232 + 1))
            {
              v160 = *(v212 + m);
              do
              {
                v161 = v232;
                v162 = *(*(__p[1] + ((v232 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v232 & 0x3FF));
                LODWORD(v233) = *(*(__p[1] + ((v232 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v232 & 0x3FF));
                *(&v232 + 1) = v159 - 1;
                *&v232 = v232 + 1;
                if ((v161 + 1) >= 0x800)
                {
                  operator delete(*__p[1]);
                  __p[1] = __p[1] + 8;
                  *&v232 = v232 - 1024;
                  v162 = v233;
                }

                v163 = (*(a1 + 56) + 16 * v206);
                v165 = *v163;
                v164 = v163[1];
                if (v164)
                {
                  atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v164);
                }

                *(*(v165 + 40) + 4 * v162) = v151;
                v166 = *sub_24BCB9038(a1 + 104, &v233);
                LODWORD(v205) = v166;
                do
                {
                  LODWORD(v205) = *(sub_24BCB9024(a1 + 104, &v205) + 8);
                  v167 = sub_24BCB9024(a1 + 104, &v205);
                  v168 = sub_24BC9ECE4(a1, *(a1 + 180), *v167);
                  if ((*v168 & v169) == 0)
                  {
                    v170 = sub_24BCB9024(a1 + 104, &v205);
                    LODWORD(v203) = *(sub_24BCB9024(a1 + 104, v170) + 16);
                    if (((*(v216 + ((v203 >> 3) & 0x1FFFFFF8)) >> v203) & 1) == 0 && *(v212 + v203) == v160)
                    {
                      sub_24BD94C40(__p, &v203);
                      *(v216 + ((v203 >> 3) & 0x1FFFFFF8)) |= 1 << v203;
                    }
                  }
                }

                while (v205 != v166);
                v159 = *(&v232 + 1);
              }

              while (*(&v232 + 1));
            }

            sub_24BCA102C(__p);
          }
        }
      }

      if (v194 != -1)
      {
        v171 = (*(a1 + 56) + 16 * v194);
        v172 = v171[1];
        *v171 = 0;
        v171[1] = 0;
        if (v172)
        {
          sub_24BC9EC78(v172);
        }
      }

      __p[0] = &unk_285F973E0;
      __p[1] = &v212;
      *(&v231 + 1) = __p;
      sub_24BE4C8DC(a1, __p);
      sub_24BD99F28(__p);
      sub_24BD99FA8(&v205, v42);
      if (v42)
      {
        v173 = 0;
        v174 = 0;
        v175 = xmmword_24BFEDE54;
        v176 = unk_24BFEDE64;
        do
        {
          v177 = 0;
          v178 = v205;
          v179 = v205 + 36 * v174;
          v180 = *(v218 + v174);
          v181 = vuzp2q_s32(vextq_s8(v180, v180, 4uLL), v180);
          v182 = vmulq_f32(v180, xmmword_24BFD2970);
          v183 = vmulq_f32(v180, xmmword_24BFBD200);
          v183.i32[3] = 0;
          v202 = v183;
          v184 = vmlsq_f32(vzip2q_s32(vzip1q_s32(v182, vextq_s8(v182, v182, 0xCuLL)), v182), xmmword_24BFD2970, v181);
          v185 = vmulq_f32(v184, v184);
          v185.i32[3] = 0;
          LODWORD(v233) = 0;
          DWORD1(v233) = v184.i32[2];
          LODWORD(v234) = 0;
          *(&v234 + 3) = -v184.f32[0];
          *(&v233 + 1) = vneg_f32(*&vextq_s8(v184, v184, 4uLL));
          *(&v234 + 4) = v184.i64[0];
          v186 = vaddv_f32(*&vpaddq_f32(v185, v185));
          v235 = 0;
          *v179 = xmmword_24BFBD1C0;
          *(v179 + 1) = xmmword_24BFBD1C0;
          *(v179 + 8) = 1065353216;
          *__p = v175;
          v231 = v176;
          LODWORD(v232) = 1065353216;
          do
          {
            *(__p + v177) = *&v178[v173 + v177] + *(&v233 + v177);
            v177 += 4;
          }

          while (v177 != 36);
          *v179 = *__p;
          *(v179 + 1) = v231;
          *(v179 + 8) = v232;
          sub_24BD95788(&v233, &v233);
          v187 = 0;
          v188 = sqrtf(v186);
          LODWORD(v232) = 1065353216;
          v189 = (1.0 - vaddv_f32(*&vpaddq_f32(v202, v202))) / (v188 * v188);
          v176 = unk_24BFEDE64;
          v175 = xmmword_24BFEDE54;
          *__p = xmmword_24BFEDE54;
          v231 = unk_24BFEDE64;
          do
          {
            *(__p + v187) = *(&v233 + v187) * v189;
            v187 += 4;
          }

          while (v187 != 36);
          v190 = 0;
          v233 = *__p;
          v234 = v231;
          v235 = v232;
          *__p = xmmword_24BFEDE54;
          v231 = unk_24BFEDE64;
          LODWORD(v232) = 1065353216;
          do
          {
            *(__p + v190) = *&v178[v173 + v190] + *(&v233 + v190);
            v190 += 4;
          }

          while (v190 != 36);
          *v179 = *__p;
          *(v179 + 1) = v231;
          *(v179 + 8) = v232;
          ++v174;
          v173 += 36;
        }

        while (v174 != v42);
      }

      v204 = -1;
      sub_24BC836D4(__p, off_27F078FB8[0]);
      *(&v233 + 4) = 0;
      LODWORD(v233) = 0;
      v191 = sub_24BCCAA0C((a1 + 56), &v233, __p);
      v204 = v191;
      if (SBYTE7(v231) < 0)
      {
        operator delete(__p[0]);
      }

      if (v191 != -1)
      {
        if (v204 != -1)
        {
          v192 = (*(a1 + 56) + 16 * v204);
          v193 = v192[1];
          *v192 = 0;
          v192[1] = 0;
          if (v193)
          {
            sub_24BC9EC78(v193);
          }
        }

        v204 = -1;
      }

      sub_24BC836D4(__p, off_27F078FB8[0]);
      sub_24BCD5A78(a1);
    }
  }

  else if (v137)
  {
    goto LABEL_116;
  }

  sub_24BC836D4(__p, off_27F078FE8[0]);
  sub_24BD2CC04(a1);
}

void sub_24BE4C664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a39)
  {
    operator delete(a39);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a51)
  {
    operator delete(a51);
  }

  if (a54)
  {
    operator delete(a54);
  }

  sub_24BD6B9D8(&a69);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE4C8DC(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_24BC836D4(__p, off_27F078FC8[0]);
  v11 = 0;
  v4 = sub_24BCCA8D0((a1 + 56), &v11, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = (*(a1 + 56) + 16 * v4);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v6);
  }

  v10 = ((*(a1 + 160) - *(a1 + 152)) >> 2) - 1;
  v11 = 0;
  __p[0] = &unk_285F97470;
  __p[1] = a1;
  v13 = a2;
  v14 = __p;
  sub_24BE4E368(v7, &v11, &v10, __p);
  sub_24BD99F28(__p);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t sub_24BE4CA24(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_24BCA1F3C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_24BE4CA6C(uint64_t a1, float *a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10[3] = 0;
  v11[3] = 0;
  v12[3] = 0;
  sub_24BCA1524(v4, v8);
  sub_24BCA2D38(&v5, v10);
  sub_24BCA2DD0(&v6, v11);
  sub_24BD55A04(&v7, v12);
  sub_24BE4AC0C(a1, a2, v4);
}

void sub_24BE4CB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_24BD5561C(&a10);
  sub_24BD5561C(&a26);
  _Unwind_Resume(a1);
}

void sub_24BE4CBD8(void *a1, float *a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v6, a3);
  sub_24BCA2D38(&v7, a3 + 32);
  sub_24BCA2DD0(&v8, a3 + 64);
  sub_24BD55A04(v9, a3 + 96);
  sub_24BD95984(a1, a2, v6);
}

void sub_24BE4CCB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD5561C(va);
  _Unwind_Resume(a1);
}

void sub_24BE4CD00(void *a1, float *a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10[3] = 0;
  v11[3] = 0;
  v12[3] = 0;
  sub_24BCA1524(v4, v8);
  sub_24BCA2D38(&v5, v10);
  sub_24BCA2DD0(&v6, v11);
  sub_24BD55A04(&v7, v12);
  sub_24BE4CBD8(a1, a2, v4);
}

void sub_24BE4CE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_24BD5561C(&a10);
  sub_24BD5561C(&a26);
  _Unwind_Resume(a1);
}

void sub_24BE4CE6C(uint64_t a1, float *a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v6, a3);
  sub_24BCA2D38(&v7, a3 + 32);
  sub_24BCA2DD0(&v8, a3 + 64);
  sub_24BD55A04(v9, a3 + 96);
  sub_24BD9A558(a1, a2, v6);
}

void sub_24BE4CF48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD5561C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE4CF94(uint64_t a1, uint64_t a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[3] = 0;
  v14[3] = 0;
  v15[3] = 0;
  sub_24BCA1524(v7, v11);
  sub_24BCA2D38(v8, v13);
  sub_24BCA2DD0(v9, v14);
  sub_24BD55A04(v10, v15);
  v4 = sub_24BE4D100(a1, a2, v7);
  sub_24BD55A9C(v10);
  sub_24BC9F10C(v9);
  sub_24BC9F08C(v8);
  sub_24BC9F00C(v7);
  sub_24BD55A9C(v15);
  sub_24BC9F10C(v14);
  sub_24BC9F08C(v13);
  sub_24BC9F00C(v11);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_24BE4D0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_24BD5561C(&a10);
  sub_24BD5561C(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE4D100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x277D85DE8];
  LODWORD(v32) = 0;
  v33 = std::system_category();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  sub_24BD6B968(v31, a3);
  v30 = -1;
  sub_24BC836D4(&__p, off_27F078F78[0]);
  v38 = 0;
  v6 = sub_24BCB74D4((a1 + 80), &v38, &__p);
  if (SHIBYTE(v43[0]) < 0)
  {
    operator delete(__p);
  }

  sub_24BC836D4(&__p, off_27F078FE8[0]);
  sub_24BD265CC(a1, &v30, &__p);
  if (SHIBYTE(v43[0]) < 0)
  {
    operator delete(__p);
  }

  sub_24BC836D4(&__p, off_27F078FB8[0]);
  v39 = 0;
  v38 = 0;
  v7 = sub_24BCCAA0C((a1 + 56), &v38, &__p);
  if (SHIBYTE(v43[0]) < 0)
  {
    operator delete(__p);
  }

  sub_24BC836D4(&__p, off_27F078FC8[0]);
  LOWORD(v38) = 0;
  v8 = sub_24BD274E4((a1 + 56), &v38, &__p);
  if (SHIBYTE(v43[0]) < 0)
  {
    operator delete(__p);
  }

  if (v6 != -1)
  {
    v9 = (*(a1 + 80) + 16 * v6);
    v10 = v9[1];
    *v9 = 0;
    v9[1] = 0;
    if (v10)
    {
      sub_24BC9EC78(v10);
    }
  }

  if (v30 != -1)
  {
    v11 = (*(a1 + 80) + 16 * v30);
    v12 = v11[1];
    *v11 = 0;
    v11[1] = 0;
    if (v12)
    {
      sub_24BC9EC78(v12);
    }

    v30 = -1;
  }

  if (v7 != -1)
  {
    v13 = (*(a1 + 56) + 16 * v7);
    v14 = v13[1];
    *v13 = 0;
    v13[1] = 0;
    if (v14)
    {
      sub_24BC9EC78(v14);
    }
  }

  if (v8 != -1)
  {
    v15 = (*(a1 + 56) + 16 * v8);
    v16 = v15[1];
    *v15 = 0;
    v15[1] = 0;
    if (v16)
    {
      sub_24BC9EC78(v16);
    }
  }

  sub_24BCA18B0(v29, (*(a1 + 112) - *(a1 + 104)) >> 2);
  sub_24BDF1788(a1, v29);
  if (sub_24BD6B70C(a3, &v32))
  {
    goto LABEL_36;
  }

  __p = 4286578687;
  v42 = 0;
  v43[3] = 0;
  v43[4] = a1;
  v43[5] = a2;
  v43[7] = a2 + 8;
  v44 = *(a2 + 16);
  v45 = *(a2 + 12);
  v46 = *(a2 + 20);
  v47 = a2 + 24;
  v48 = a2 + 28;
  v49 = a2 + 44;
  v50 = *(a2 + 41);
  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  v53 = &v32;
  v54 = a2 + 32;
  v55 = a2 + 36;
  v56 = *(a2 + 40);
  v57 = *(a2 + 42);
  memset(v58.__m_.__opaque, 0, sizeof(v58.__m_.__opaque));
  v58.__m_.__sig = 850045863;
  sub_24BCA2DD0(&v38, a3 + 64);
  if (v40)
  {
    sub_24BC9B100(v43, &v38);
  }

  sub_24BDB8D08(&__p);
  sub_24BC9F10C(&v38);
  std::mutex::~mutex(&v58);
  v38 = &v52[8];
  sub_24BCB7FC8(&v38);
  if (v51)
  {
    *(&v51 + 1) = v51;
    operator delete(v51);
  }

  sub_24BC9F10C(v43);
  if (sub_24BD6B70C(a3, &v32))
  {
    goto LABEL_36;
  }

  if (*(a1 + 112) != *(a1 + 104))
  {
    v17 = 0;
    do
    {
      v18 = v29[0];
      v19 = (*(a1 + 8) + 16 * *(a1 + 176));
      v21 = *v19;
      v20 = v19[1];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v20);
      }

      *(*(v21 + 40) + 16 * v17) = v18[v17];
      ++v17;
    }

    while (v17 < (*(a1 + 112) - *(a1 + 104)) >> 2);
  }

  if (v32)
  {
    v22 = v32;
    v23 = v33;
    sub_24BC836D4(&__p, &unk_24C0435AF);
    sub_24BD6B59C(a3, v22, v23, &__p, &v32);
    if (SHIBYTE(v43[0]) < 0)
    {
      operator delete(__p);
    }

LABEL_36:
    v24 = *(a3 + 120);
    if (v24)
    {
      (*(*v24 + 48))(v24, &v32);
    }

    v25 = 0;
    goto LABEL_39;
  }

  v28 = *(a3 + 120);
  if (v28)
  {
    (*(*v28 + 48))(v28, &v32);
  }

  v25 = 1;
LABEL_39:
  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  sub_24BD6B9D8(v31);
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void sub_24BE4D59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  sub_24BD6B9D8(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE4D730(uint64_t a1, void *a2, _DWORD *a3)
{
  a2[1] = *a2;
  v5 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  LODWORD(__p[0]) = -1;
  sub_24BD7B3FC(a2, v5, __p);
  sub_24BC836D4(__p, off_27F078F78[0]);
  v64 = 0;
  v58 = a1;
  v6 = sub_24BCB74D4((a1 + 80), &v64, __p);
  if (SBYTE7(v61) < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, off_27F078FB8[0]);
  v65 = 0;
  v64 = 0;
  v7 = sub_24BCCAA0C((a1 + 56), &v64, __p);
  if (SBYTE7(v61) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*(a1 + 80) + 16 * v6);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v9);
  }

  v11 = (*(*v10 + 16))(v10);
  __p[0] = 0;
  __p[1] = 0;
  *&v61 = 0;
  sub_24BDC0F88(&v64, v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*(a1 + 160) == *(a1 + 152))
  {
    v31 = 0;
  }

  else
  {
    LODWORD(v12) = 0;
    v56 = v7;
    v13 = v7;
    do
    {
      v14 = 12 * v12;
      v15 = 3;
      do
      {
        v16 = (v58[7] + 16 * v13);
        v18 = *v16;
        v17 = v16[1];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v17);
        }

        v19 = v64 + 24 * *(*(v18 + 40) + v14);
        v21 = *(v19 + 8);
        v20 = *(v19 + 16);
        if (v21 >= v20)
        {
          v23 = (v21 - *v19) >> 2;
          if ((v23 + 1) >> 62)
          {
            sub_24BC8E01C();
          }

          v24 = v20 - *v19;
          v25 = v24 >> 1;
          if (v24 >> 1 <= (v23 + 1))
          {
            v25 = v23 + 1;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v26 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v25;
          }

          if (v26)
          {
            sub_24BC92E0C(v19, v26);
          }

          v27 = (4 * v23);
          *v27 = v12;
          v22 = 4 * v23 + 4;
          v28 = *(v19 + 8) - *v19;
          v29 = v27 - v28;
          memcpy(v27 - v28, *v19, v28);
          v30 = *v19;
          *v19 = v29;
          *(v19 + 8) = v22;
          *(v19 + 16) = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v21 = v12;
          v22 = (v21 + 1);
        }

        *(v19 + 8) = v22;
        v14 += 4;
        --v15;
      }

      while (v15);
      v12 = (v12 + 1);
      v31 = (v58[20] - v58[19]) >> 2;
    }

    while (v31 > v12);
    v7 = v56;
  }

  LOBYTE(__p[0]) = 0;
  sub_24BC9FEFC(&v63, v31);
  v61 = 0u;
  v62 = 0u;
  *__p = 0u;
  v33 = v58[19];
  v32 = v58[20];
  if (v32 == v33)
  {
    v36 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = v7;
    do
    {
      v38 = *(v63 + (v34 >> 6));
      if ((v38 & (1 << v34)) == 0)
      {
        *(v63 + (v34 >> 6)) = v38 | (1 << v34);
        v57 = v35;
        v59 = v35;
        sub_24BD94C40(__p, &v59);
        *(*a2 + 4 * v34) = v36;
        while (*(&v62 + 1))
        {
          v39 = *(*(__p[1] + ((v62 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v62 & 0x3FF));
          *&v62 = v62 + 1;
          --*(&v62 + 1);
          if (v62 >= 0x800)
          {
            operator delete(*__p[1]);
            __p[1] = __p[1] + 8;
            *&v62 = v62 - 1024;
          }

          v40 = (v58[7] + 16 * v37);
          v42 = *v40;
          v41 = v40[1];
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v41);
          }

          v43 = 0;
          v44 = *(v42 + 40) + 12 * v39;
          do
          {
            v45 = (v64 + 24 * *(v44 + 4 * v43));
            v46 = *v45;
            v47 = v45[1];
            while (v46 != v47)
            {
              v59 = *v46;
              v48 = v59;
              if (((*(v63 + ((v59 >> 3) & 0x1FFFFFF8)) >> v59) & 1) == 0)
              {
                v49 = (v58[7] + 16 * v37);
                v51 = *v49;
                v50 = v49[1];
                if (v50)
                {
                  atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v50);
                  v48 = v59;
                }

                v52 = 0;
                v53 = *(v51 + 40) + 12 * v48;
                do
                {
                  if (*(v53 + v52) == *(v44 + 4 * v43))
                  {
                    *(*a2 + 4 * v59) = v36;
                    *(v63 + ((v59 >> 3) & 0x1FFFFFF8)) |= 1 << v59;
                    sub_24BD94C40(__p, &v59);
                  }

                  v52 += 4;
                }

                while (v52 != 12);
              }

              ++v46;
            }

            ++v43;
          }

          while (v43 != 3);
        }

        ++v36;
        v33 = v58[19];
        v32 = v58[20];
        v35 = v57;
      }

      v34 = ++v35;
    }

    while (v35 < ((v32 - v33) >> 2));
  }

  *a3 = v36;
  sub_24BCA102C(__p);
  if (v63)
  {
    operator delete(v63);
  }

  __p[0] = &v64;
  sub_24BC8EE84(__p);
  return 1;
}

void sub_24BE4DC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25)
{
  __p = &a25;
  sub_24BC8EE84(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE4DC88(uint64_t a1, int a2, _DWORD *a3, unsigned int *a4, float *a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  sub_24BE4D730(a1, &v44, &v43);
  v42 = -1;
  v40 = -1;
  v41 = -1;
  sub_24BC836D4(__p, "f:original_id");
  sub_24BC836D4(v47, off_27F078FE8[0]);
  sub_24BD265CC(a1, &v42, v47);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  sub_24BC836D4(v47, off_27F078FC8[0]);
  v32 = 0;
  v41 = sub_24BCCA8D0((a1 + 56), &v32, v47);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  LODWORD(v47[0]) = 0;
  v40 = sub_24BCCA8D0((a1 + 56), v47, __p);
  if (v42 == -1)
  {
    sub_24BC836D4(v47, off_27F078FE8[0]);
    sub_24BD2CC04(a1);
  }

  if (v41 == -1)
  {
    sub_24BC836D4(v47, off_27F078FC8[0]);
    sub_24BD95714(a1);
  }

  if (v40 == -1)
  {
    sub_24BD95714(a1);
  }

  v9 = (*(a1 + 80) + 16 * v42);
  v11 = *v9;
  v10 = v9[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v10);
  }

  (*(*v11 + 32))(v11, v43);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v44[v12];
      v15 = *(a1 + 56);
      v16 = (v15 + 16 * v41);
      v18 = *v16;
      v17 = v16[1];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v17);
        v15 = *(a1 + 56);
      }

      *(*(v18 + 40) + 4 * v12) = v14;
      v19 = (v15 + 16 * v40);
      v21 = *v19;
      v20 = v19[1];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v20);
      }

      *(*(v21 + 40) + 4 * v12) = v13++;
      v12 = v13;
    }

    while (v13 < ((*(a1 + 160) - *(a1 + 152)) >> 2));
  }

  sub_24BE4E134(a1);
  if (a2 == 2)
  {
    v22 = sub_24BDB2E98(a1, a3, a4, a5, 0, 1);
  }

  else if (a2 == 1)
  {
    v32 = 0;
    v33 = std::system_category();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    memset(v37, 0, sizeof(v37));
    v31 = *a4;
    sub_24BDE2DA4(v47, a1, &v32, a3, &v31, a5, 1, 0);
    sub_24BDE2DA8(v47);
    v23 = sub_24BD6A604(0x191u);
    v22 = v33 != v24 || v32 != v23;
    sub_24BD98828(v47);
  }

  else if (a2)
  {
    v22 = 1;
  }

  else
  {
    LOBYTE(v32) = *a4;
    sub_24BDB024C(v47, a1, a3, &v32);
    v22 = sub_24BDB0250(v47);
    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }
  }

  sub_24BE4E270(a1, &v40);
  if (v40 != -1)
  {
    v26 = (*(a1 + 56) + 16 * v40);
    v27 = v26[1];
    *v26 = 0;
    v26[1] = 0;
    if (v27)
    {
      sub_24BC9EC78(v27);
    }
  }

  v40 = -1;
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_24BE4E08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE4E134(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  sub_24BC836D4(__p, off_27F078FC8[0]);
  v9 = 0;
  v2 = sub_24BCCA8D0((a1 + 56), &v9, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = (*(a1 + 56) + 16 * v2);
  v5 = *v3;
  v4 = v3[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v4);
  }

  v8 = ((*(a1 + 160) - *(a1 + 152)) >> 2) - 1;
  v9 = 0;
  __p[0] = &unk_285F97500;
  __p[1] = a1;
  v12 = __p;
  sub_24BE4E368(v5, &v9, &v8, __p);
  sub_24BD99F28(__p);
  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL sub_24BE4E270(void *a1, unsigned int *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (v2 != -1)
  {
    v4 = (a1[7] + 16 * v2);
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v5);
    }

    v9 = ((a1[20] - a1[19]) >> 2) - 1;
    v10 = 0;
    v11[0] = &unk_285F97428;
    v11[1] = a1;
    v11[3] = v11;
    sub_24BE4E368(v6, &v10, &v9, v11);
    sub_24BD99F28(v11);
  }

  result = v2 != -1;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BE4E354(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD99F28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE4E368(uint64_t result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *a3;
  if (*a2 < *a3)
  {
    v7 = result;
    v18 = 0u;
    memset(v17, 0, sizeof(v17));
    v16 = __PAIR64__(v5, v4);
    sub_24BE5398C(v17, &v16);
    while (1)
    {
      do
      {
        if (!*(&v18 + 1))
        {
          return sub_24BD4106C(v17);
        }

        v8 = *(*(*(&v17[0] + 1) + (((v18 + *(&v18 + 1) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v18 + *(&v18 + 1) - 1) & 0x1FF));
        --*(&v18 + 1);
        sub_24BE53BEC(v17, 1);
      }

      while (v8 >= SHIDWORD(v8));
      v9 = *(*(v7 + 40) + 4 * v8);
      v10 = v8;
      v11 = v8;
      v12 = HIDWORD(v8);
      do
      {
        v13 = *(*(v7 + 40) + 4 * v10);
        if (v13 < v9)
        {
          LODWORD(v16) = v11;
          v19 = v10;
          v14 = *(a4 + 24);
          if (!v14)
          {
            goto LABEL_17;
          }

          (*(*v14 + 48))(v14, &v16, &v19);
          ++v11;
LABEL_12:
          ++v10;
          continue;
        }

        if (v13 <= v9)
        {
          goto LABEL_12;
        }

        LODWORD(v16) = v10;
        v19 = v12;
        v15 = *(a4 + 24);
        if (!v15)
        {
LABEL_17:
          sub_24BCA1F3C();
        }

        (*(*v15 + 48))(v15, &v16, &v19);
        LODWORD(v12) = v12 - 1;
      }

      while (v10 <= v12);
      v16 = __PAIR64__(HIDWORD(v8), v10);
      sub_24BE5398C(v17, &v16);
      LODWORD(v16) = v8;
      HIDWORD(v16) = v11 - 1;
      sub_24BE5398C(v17, &v16);
    }
  }

  return result;
}

void sub_24BE4E518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BD4106C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE4E540(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_24BC836D4(__p, off_27F078FC8[0]);
  LOWORD(v20[0]) = 0;
  v2 = sub_24BD274E4((a1 + 56), v20, __p);
  if (SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = (*(a1 + 56) + 16 * v2);
  v5 = *v3;
  v4 = v3[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v4);
  }

  v6 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  v20[0] = &unk_285F974B8;
  v20[1] = a1;
  v21 = v20;
  if (v6 >= 2)
  {
    v17 = 0u;
    v18 = 0u;
    *__p = 0u;
    LODWORD(v15) = 0;
    HIDWORD(v15) = v6 - 1;
    sub_24BE5398C(__p, &v15);
    while (1)
    {
      do
      {
        if (!*(&v18 + 1))
        {
          sub_24BD4106C(__p);
          goto LABEL_20;
        }

        v7 = *(*(__p[1] + (((v18 + *(&v18 + 1) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v18 + *(&v18 + 1) - 1) & 0x1FF));
        --*(&v18 + 1);
        sub_24BE53BEC(__p, 1);
      }

      while (v7 >= SHIDWORD(v7));
      v8 = *(*(v5 + 40) + 2 * v7);
      v9 = v7;
      v10 = v7;
      v11 = HIDWORD(v7);
      do
      {
        v12 = *(*(v5 + 40) + 2 * v9);
        if (v12 < v8)
        {
          LODWORD(v15) = v10;
          v19 = v9;
          if (!v21)
          {
            goto LABEL_21;
          }

          (*(*v21 + 48))(v21, &v15, &v19);
          ++v10;
LABEL_16:
          ++v9;
          continue;
        }

        if (v12 <= v8)
        {
          goto LABEL_16;
        }

        LODWORD(v15) = v9;
        v19 = v11;
        if (!v21)
        {
LABEL_21:
          sub_24BCA1F3C();
        }

        (*(*v21 + 48))(v21, &v15, &v19);
        LODWORD(v11) = v11 - 1;
      }

      while (v9 <= v11);
      v15 = __PAIR64__(HIDWORD(v7), v9);
      sub_24BE5398C(__p, &v15);
      LODWORD(v15) = v7;
      HIDWORD(v15) = v10 - 1;
      sub_24BE5398C(__p, &v15);
    }
  }

LABEL_20:
  sub_24BD99F28(v20);
  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_24BE4E7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_24BD4106C(&__p);
  sub_24BD99F28(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE4E7FC(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  if (v3 <= v4 && ((v6 = ((*(a1 + 160) - *(a1 + 152)) >> 2) - 1, v6 >= v3) ? (v7 = v6 >= v4) : (v7 = 0), v7))
  {
    sub_24BC836D4(__p, off_27F078FC8[0]);
    v18 = 0;
    v11 = sub_24BCCA8D0((a1 + 56), &v18, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = (*(a1 + 56) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v13);
    }

    v15 = *a2;
    v17 = *a3;
    v18 = v15;
    __p[0] = &unk_285F97548;
    __p[1] = a1;
    v21 = __p;
    sub_24BE4E368(v14, &v18, &v17, __p);
    sub_24BD99F28(__p);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BE4E974@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 == 2)
  {
    v6 = xmmword_24BFEDDF0;
    v3 = sub_24BCBBD2C(&v6);
  }

  else if (a1 == 1)
  {
    v6 = xmmword_24BFEDE00;
    v3 = sub_24BCBBD2C(&v6);
  }

  else if (a1)
  {
    v6 = xmmword_24BFEDE10;
    v3 = sub_24BCBBD2C(&v6);
  }

  else
  {
    *&v6 = 0x757D7F6E70777C3ELL;
    BYTE8(v6) = 0;
    v3 = sub_24BD09B90(&v6);
  }

  result = sub_24BC836D4(a2, v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BE4EA50(const std::string *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  sub_24BD56008(a1, &__s1);
  strcpy(&v20, "*hcdzkia");
  v1 = sub_24BD09B90(&v20);
  v2 = strlen(v1);
  v3 = v2;
  v4 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v2 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    if (v2 == -1)
    {
      sub_24BD2237C();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v2 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (!memcmp(p_s1, v1, v3))
  {
    v16 = 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_8:
  v20 = xmmword_24BFEDE20;
  v6 = sub_24BCBBD2C(&v20);
  v7 = strlen(v6);
  v8 = v7;
  v9 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v7 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_15;
    }

    if (v7 == -1)
    {
      sub_24BD2237C();
    }

    v10 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v7 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_15;
    }

    v10 = &__s1;
  }

  if (!memcmp(v10, v6, v8))
  {
    v16 = 1;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_15:
  v20 = xmmword_24BFEDE30;
  v11 = sub_24BCBBD2C(&v20);
  v12 = strlen(v11);
  v13 = v12;
  v14 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v12 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      v15 = &__s1;
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (v12 != __s1.__r_.__value_.__l.__size_)
  {
LABEL_26:
    v16 = 1;
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_29:
    operator delete(__s1.__r_.__value_.__l.__data_);
    goto LABEL_30;
  }

  if (v12 == -1)
  {
    sub_24BD2237C();
  }

  v15 = __s1.__r_.__value_.__r.__words[0];
LABEL_21:
  if (!memcmp(v15, v11, v13))
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  if (v14 < 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_24BE4EC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BE4EC60@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1 == 2)
  {
    v6 = 0x75726F7C6465692ALL;
    LOBYTE(v8) = 0;
    v7 = 1717993314;
    v3 = sub_24BD510F4(&v6);
  }

  else if (a1 == 1)
  {
    v6 = 0x1F18151F041E1351;
    v8 = 9;
    v7 = 504565270;
    v3 = sub_24BCBD2F0(&v6);
  }

  else
  {
    if (a1)
    {
      BYTE6(v6) = 0;
      WORD2(v6) = 4885;
      LODWORD(v6) = 101647431;
    }

    else
    {
      strcpy(&v6, "\aDOFUS");
    }

    v3 = sub_24BCBBD84(&v6);
  }

  result = sub_24BC836D4(a2, v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BE4ED7C(const std::string *a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  sub_24BD56008(a1, &__s1);
  strcpy(v20, "c +17");
  v1 = sub_24BCBBD84(v20);
  v2 = strlen(v1);
  v3 = v2;
  v4 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v2 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    if (v2 == -1)
    {
      sub_24BD2237C();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v2 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (memcmp(p_s1, v1, v3))
  {
LABEL_8:
    v20[0] = 0x15121F150E14195BLL;
    WORD2(v20[1]) = 3;
    LODWORD(v20[1]) = 337183772;
    v6 = sub_24BCBD2F0(v20);
    v7 = strlen(v6);
    v8 = v7;
    v9 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v7 != __s1.__r_.__value_.__l.__size_)
      {
        goto LABEL_15;
      }

      if (v7 == -1)
      {
        sub_24BD2237C();
      }

      v10 = __s1.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v7 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_15;
      }

      v10 = &__s1;
    }

    if (!memcmp(v10, v6, v8))
    {
      v16 = 1;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    strcpy(v20, "+hde}nstc~gg");
    v11 = sub_24BD510F4(v20);
    v12 = strlen(v11);
    v13 = v12;
    v14 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v12 == __s1.__r_.__value_.__l.__size_)
      {
        if (v12 == -1)
        {
          sub_24BD2237C();
        }

        v15 = __s1.__r_.__value_.__r.__words[0];
LABEL_21:
        v16 = 2 * (memcmp(v15, v11, v13) == 0);
        if (v14 < 0)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    else if (v12 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      v15 = &__s1;
      goto LABEL_21;
    }

    v16 = 0;
    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v16 = 0;
  if (v4 < 0)
  {
LABEL_26:
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

LABEL_27:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_24BE4EF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE4EFC0()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAE5D0();
}

void sub_24BE4F454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sub_24BC9F18C((v51 + 8), a15);
  v55 = (v53 - 96);
  v56 = -160;
  do
  {
    sub_24BC9F18C(v55, *(v55 - 8));
    v55 -= 4;
    v56 += 32;
  }

  while (v56);
  v57 = &a24;
  v58 = -64;
  do
  {
    sub_24BC9F18C(v57, *(v57 - 8));
    v57 -= 4;
    v58 += 32;
  }

  while (v58);
  v59 = &a32;
  v60 = -64;
  do
  {
    sub_24BC9F18C(v59, *(v59 - 8));
    v59 -= 4;
    v60 += 32;
  }

  while (v60);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v61 = &a40;
  v62 = -64;
  do
  {
    sub_24BC9F18C(v61, *(v61 - 8));
    v61 -= 4;
    v62 += 32;
  }

  while (v62);
  v63 = &a48;
  v64 = -64;
  do
  {
    sub_24BC9F18C(v63, *(v63 - 8));
    v63 -= 4;
    v64 += 32;
  }

  while (v64);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a51 + i + 40), *(&a51 + i + 32));
  }

  sub_24BC9F18C((v52 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_24BE4F630(uint64_t a1, void *a2)
{
  v25[0] = 0;
  v26 = 0;
  sub_24BC9C7E0(a2, v25);
  if (v25[0] == 1)
  {
    v3 = sub_24BCB0080(v26, "chart_thres_angle");
    if (v26 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v25, "chart_thres_angle");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v25, "chart_thres_angle");
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        sub_24BCB0594(v6, &__p, v7);
        *a1 = __p.__r_.__value_.__l.__data_;
        sub_24BC836D4(&__p, "chart_thres_angle");
        sub_24BC9CAB4(v25, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v25[0] == 1)
    {
      v8 = sub_24BCB0080(v26, "tex_size");
      if (v26 + 8 != v8)
      {
        v9 = sub_24BC9C8EC(v25, "tex_size");
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        v10 = sub_24BCB01B0(v9, &__p);
        sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
        if ((v10 & 1) == 0)
        {
          v11 = sub_24BC9C8EC(v25, "tex_size");
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          sub_24BCB07E0(v11, &__p);
          *(a1 + 4) = __p.__r_.__value_.__l.__data_;
          sub_24BC836D4(&__p, "tex_size");
          sub_24BC9CAB4(v25, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      if (v25[0] == 1)
      {
        v12 = sub_24BCB0080(v26, "tex_num");
        if (v26 + 8 != v12)
        {
          v13 = sub_24BC9C8EC(v25, "tex_num");
          __p.__r_.__value_.__s.__data_[0] = 0;
          __p.__r_.__value_.__l.__size_ = 0;
          v14 = sub_24BCB01B0(v13, &__p);
          sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
          if ((v14 & 1) == 0)
          {
            v15 = sub_24BC9C8EC(v25, "tex_num");
            __p.__r_.__value_.__s.__data_[0] = 0;
            sub_24BE54014(v15, &__p);
            *(a1 + 8) = __p.__r_.__value_.__s.__data_[0];
            sub_24BC836D4(&__p, "tex_num");
            sub_24BC9CAB4(v25, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }
  }

  v16 = sub_24BC9C8EC(v25, "packing_method");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v17 = sub_24BCB01B0(v16, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v17 & 1) == 0)
  {
    v18 = sub_24BC9C8EC(v25, "packing_method");
    sub_24BDAEAC8(v18, &__p);
    *(a1 + 12) = sub_24BE4EA50(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "packing_method");
    sub_24BC9CAB4(v25, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v25[0] == 1)
  {
    v19 = sub_24BCB0080(v26, "gutter");
    if (v26 + 8 != v19)
    {
      v20 = sub_24BC9C8EC(v25, "gutter");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v21 = sub_24BCB01B0(v20, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v21 & 1) == 0)
      {
        v22 = sub_24BC9C8EC(v25, "gutter");
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        sub_24BCB0594(v22, &__p, v23);
        *(a1 + 16) = __p.__r_.__value_.__l.__data_;
        sub_24BC836D4(&__p, "gutter");
        sub_24BC9CAB4(v25, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BE4FBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE4FBD4);
  }

  _Unwind_Resume(a1);
}

void sub_24BE4FCA0(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE4EFC0();
}

uint64_t sub_24BE4FDF0(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE4F630(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE4FF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE4FFD8(const std::error_code *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = 0;
  sub_24BC848F0(&v4);
  sub_24BD6A950(a1);
}

void sub_24BE508CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BC9F18C((v67 + 8), a10);
  v70 = &STACK[0x430];
  v71 = -352;
  do
  {
    sub_24BC9F18C(v70, *(v70 - 8));
    v70 -= 4;
    v71 += 32;
  }

  while (v71);
  v72 = &a19;
  v73 = -64;
  do
  {
    sub_24BC9F18C(v72, *(v72 - 8));
    v72 -= 4;
    v73 += 32;
  }

  while (v73);
  v74 = &a27;
  v75 = -64;
  do
  {
    sub_24BC9F18C(v74, *(v74 - 8));
    v74 -= 4;
    v75 += 32;
  }

  while (v75);
  v76 = &a35;
  v77 = -64;
  do
  {
    sub_24BC9F18C(v76, *(v76 - 8));
    v76 -= 4;
    v77 += 32;
  }

  while (v77);
  v78 = &a43;
  v79 = -64;
  do
  {
    sub_24BC9F18C(v78, *(v78 - 8));
    v78 -= 4;
    v79 += 32;
  }

  while (v79);
  v80 = &a51;
  v81 = -64;
  do
  {
    sub_24BC9F18C(v80, *(v80 - 8));
    v80 -= 4;
    v81 += 32;
  }

  while (v81);
  v82 = &a59;
  v83 = -64;
  do
  {
    sub_24BC9F18C(v82, *(v82 - 8));
    v82 -= 4;
    v83 += 32;
  }

  while (v83);
  v84 = &a67;
  v85 = -64;
  do
  {
    sub_24BC9F18C(v84, *(v84 - 8));
    v84 -= 4;
    v85 += 32;
  }

  while (v85);
  v86 = &STACK[0x210];
  v87 = -64;
  do
  {
    sub_24BC9F18C(v86, *(v86 - 8));
    v86 -= 4;
    v87 += 32;
  }

  while (v87);
  v88 = &STACK[0x250];
  v89 = -64;
  do
  {
    sub_24BC9F18C(v88, *(v88 - 8));
    v88 -= 4;
    v89 += 32;
  }

  while (v89);
  v90 = &STACK[0x290];
  v91 = -64;
  do
  {
    sub_24BC9F18C(v90, *(v90 - 8));
    v90 -= 4;
    v91 += 32;
  }

  while (v91);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&STACK[0x2A8] + i + 40), *(&STACK[0x2A8] + i + 32));
  }

  sub_24BC9F18C((v68 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE50BB8(uint64_t a1, void *a2)
{
  v53[0] = 0;
  v54 = 0;
  sub_24BC9C7E0(a2, v53);
  if (v53[0] == 1)
  {
    v3 = sub_24BCB0080(v54, "chart_time");
    if (v54 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v53, "chart_time");
      LOBYTE(__p) = 0;
      v51 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v51, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v53, "chart_time");
        __p = 0;
        sub_24BCB0BDC(v6, &__p);
        *(a1 + 16) = __p;
        sub_24BC836D4(&__p, "chart_time");
        sub_24BC9CAB4(v53, &__p);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v53[0] == 1)
    {
      v7 = sub_24BCB0080(v54, "initial_param_time");
      if (v54 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v53, "initial_param_time");
        LOBYTE(__p) = 0;
        v51 = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&v51, __p);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v53, "initial_param_time");
          __p = 0;
          sub_24BCB0BDC(v10, &__p);
          *(a1 + 24) = __p;
          sub_24BC836D4(&__p, "initial_param_time");
          sub_24BC9CAB4(v53, &__p);
          if (SHIBYTE(v52) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v53[0] == 1)
      {
        v11 = sub_24BCB0080(v54, "split_param_time");
        if (v54 + 8 != v11)
        {
          v12 = sub_24BC9C8EC(v53, "split_param_time");
          LOBYTE(__p) = 0;
          v51 = 0;
          v13 = sub_24BCB01B0(v12, &__p);
          sub_24BC9F18C(&v51, __p);
          if ((v13 & 1) == 0)
          {
            v14 = sub_24BC9C8EC(v53, "split_param_time");
            __p = 0;
            sub_24BCB0BDC(v14, &__p);
            *(a1 + 32) = __p;
            sub_24BC836D4(&__p, "split_param_time");
            sub_24BC9CAB4(v53, &__p);
            if (SHIBYTE(v52) < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v53[0] == 1)
        {
          v15 = sub_24BCB0080(v54, "chart_merge_time");
          if (v54 + 8 != v15)
          {
            v16 = sub_24BC9C8EC(v53, "chart_merge_time");
            LOBYTE(__p) = 0;
            v51 = 0;
            v17 = sub_24BCB01B0(v16, &__p);
            sub_24BC9F18C(&v51, __p);
            if ((v17 & 1) == 0)
            {
              v18 = sub_24BC9C8EC(v53, "chart_merge_time");
              __p = 0;
              sub_24BCB0BDC(v18, &__p);
              *(a1 + 40) = __p;
              sub_24BC836D4(&__p, "chart_merge_time");
              sub_24BC9CAB4(v53, &__p);
              if (SHIBYTE(v52) < 0)
              {
                operator delete(__p);
              }
            }
          }

          if (v53[0] == 1)
          {
            v19 = sub_24BCB0080(v54, "fix_self_intersect_time");
            if (v54 + 8 != v19)
            {
              v20 = sub_24BC9C8EC(v53, "fix_self_intersect_time");
              LOBYTE(__p) = 0;
              v51 = 0;
              v21 = sub_24BCB01B0(v20, &__p);
              sub_24BC9F18C(&v51, __p);
              if ((v21 & 1) == 0)
              {
                v22 = sub_24BC9C8EC(v53, "fix_self_intersect_time");
                __p = 0;
                sub_24BCB0BDC(v22, &__p);
                *(a1 + 48) = __p;
                sub_24BC836D4(&__p, "fix_self_intersect_time");
                sub_24BC9CAB4(v53, &__p);
                if (SHIBYTE(v52) < 0)
                {
                  operator delete(__p);
                }
              }
            }

            if (v53[0] == 1)
            {
              v23 = sub_24BCB0080(v54, "chart_number");
              if (v54 + 8 != v23)
              {
                v24 = sub_24BC9C8EC(v53, "chart_number");
                LOBYTE(__p) = 0;
                v51 = 0;
                v25 = sub_24BCB01B0(v24, &__p);
                sub_24BC9F18C(&v51, __p);
                if ((v25 & 1) == 0)
                {
                  v26 = sub_24BC9C8EC(v53, "chart_number");
                  __p = 0;
                  sub_24BDAE90C(v26, &__p);
                  *(a1 + 56) = __p;
                  sub_24BC836D4(&__p, "chart_number");
                  sub_24BC9CAB4(v53, &__p);
                  if (SHIBYTE(v52) < 0)
                  {
                    operator delete(__p);
                  }
                }
              }

              if (v53[0] == 1)
              {
                v27 = sub_24BCB0080(v54, "pack_time");
                if (v54 + 8 != v27)
                {
                  v28 = sub_24BC9C8EC(v53, "pack_time");
                  LOBYTE(__p) = 0;
                  v51 = 0;
                  v29 = sub_24BCB01B0(v28, &__p);
                  sub_24BC9F18C(&v51, __p);
                  if ((v29 & 1) == 0)
                  {
                    v30 = sub_24BC9C8EC(v53, "pack_time");
                    __p = 0;
                    sub_24BCB0BDC(v30, &__p);
                    *(a1 + 64) = __p;
                    sub_24BC836D4(&__p, "pack_time");
                    sub_24BC9CAB4(v53, &__p);
                    if (SHIBYTE(v52) < 0)
                    {
                      operator delete(__p);
                    }
                  }
                }

                if (v53[0] == 1)
                {
                  v31 = sub_24BCB0080(v54, "pack_img_number");
                  if (v54 + 8 != v31)
                  {
                    v32 = sub_24BC9C8EC(v53, "pack_img_number");
                    LOBYTE(__p) = 0;
                    v51 = 0;
                    v33 = sub_24BCB01B0(v32, &__p);
                    sub_24BC9F18C(&v51, __p);
                    if ((v33 & 1) == 0)
                    {
                      v34 = sub_24BC9C8EC(v53, "pack_img_number");
                      __p = 0;
                      sub_24BDAE90C(v34, &__p);
                      *(a1 + 72) = __p;
                      sub_24BC836D4(&__p, "pack_img_number");
                      sub_24BC9CAB4(v53, &__p);
                      if (SHIBYTE(v52) < 0)
                      {
                        operator delete(__p);
                      }
                    }
                  }

                  if (v53[0] == 1)
                  {
                    v35 = sub_24BCB0080(v54, "max_stretch_ratio");
                    if (v54 + 8 != v35)
                    {
                      v36 = sub_24BC9C8EC(v53, "max_stretch_ratio");
                      LOBYTE(__p) = 0;
                      v51 = 0;
                      v37 = sub_24BCB01B0(v36, &__p);
                      sub_24BC9F18C(&v51, __p);
                      if ((v37 & 1) == 0)
                      {
                        v38 = sub_24BC9C8EC(v53, "max_stretch_ratio");
                        LODWORD(__p) = 0;
                        sub_24BCB0594(v38, &__p, v39);
                        *(a1 + 80) = __p;
                        sub_24BC836D4(&__p, "max_stretch_ratio");
                        sub_24BC9CAB4(v53, &__p);
                        if (SHIBYTE(v52) < 0)
                        {
                          operator delete(__p);
                        }
                      }
                    }

                    if (v53[0] == 1)
                    {
                      v40 = sub_24BCB0080(v54, "avg_stretch_ratio");
                      if (v54 + 8 != v40)
                      {
                        v41 = sub_24BC9C8EC(v53, "avg_stretch_ratio");
                        LOBYTE(__p) = 0;
                        v51 = 0;
                        v42 = sub_24BCB01B0(v41, &__p);
                        sub_24BC9F18C(&v51, __p);
                        if ((v42 & 1) == 0)
                        {
                          v43 = sub_24BC9C8EC(v53, "avg_stretch_ratio");
                          LODWORD(__p) = 0;
                          sub_24BCB0594(v43, &__p, v44);
                          *(a1 + 84) = __p;
                          sub_24BC836D4(&__p, "avg_stretch_ratio");
                          sub_24BC9CAB4(v53, &__p);
                          if (SHIBYTE(v52) < 0)
                          {
                            operator delete(__p);
                          }
                        }
                      }

                      if (v53[0] == 1)
                      {
                        v45 = sub_24BCB0080(v54, "self_intersect_ratio");
                        if (v54 + 8 != v45)
                        {
                          v46 = sub_24BC9C8EC(v53, "self_intersect_ratio");
                          LOBYTE(__p) = 0;
                          v51 = 0;
                          v47 = sub_24BCB01B0(v46, &__p);
                          sub_24BC9F18C(&v51, __p);
                          if ((v47 & 1) == 0)
                          {
                            v48 = sub_24BC9C8EC(v53, "self_intersect_ratio");
                            LODWORD(__p) = 0;
                            sub_24BCB0594(v48, &__p, v49);
                            *(a1 + 88) = __p;
                            sub_24BC836D4(&__p, "self_intersect_ratio");
                            sub_24BC9CAB4(v53, &__p);
                            if (SHIBYTE(v52) < 0)
                            {
                              operator delete(__p);
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
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v53 + 8 * *(v52 - 24) + 272) = 2;
  sub_24BC9BD14(&v52);
}

void sub_24BE515CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE515B0);
  }

  _Unwind_Resume(a1);
}

void sub_24BE516A0(const std::error_code *a1, uint64_t *a2)
{
  v4[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0D30(v4);
  sub_24BE4FFD8(a1);
}

uint64_t sub_24BE517F4(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE50BB8(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE51960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE519DC()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BCA5A84();
}

void sub_24BE5232C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, unsigned __int8 a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BC9F18C((v71 + 8), a22);
  v74 = &STACK[0x520];
  v75 = -416;
  do
  {
    sub_24BC9F18C(v74, *(v74 - 8));
    v74 -= 4;
    v75 += 32;
  }

  while (v75);
  v76 = &a31;
  v77 = -64;
  do
  {
    sub_24BC9F18C(v76, *(v76 - 8));
    v76 -= 4;
    v77 += 32;
  }

  while (v77);
  v78 = &a39;
  v79 = -64;
  do
  {
    sub_24BC9F18C(v78, *(v78 - 8));
    v78 -= 4;
    v79 += 32;
  }

  while (v79);
  v80 = &a47;
  v81 = -64;
  do
  {
    sub_24BC9F18C(v80, *(v80 - 8));
    v80 -= 4;
    v81 += 32;
  }

  while (v81);
  v82 = &a55;
  v83 = -64;
  do
  {
    sub_24BC9F18C(v82, *(v82 - 8));
    v82 -= 4;
    v83 += 32;
  }

  while (v83);
  v84 = &a63;
  v85 = -64;
  do
  {
    sub_24BC9F18C(v84, *(v84 - 8));
    v84 -= 4;
    v85 += 32;
  }

  while (v85);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v86 = &a71;
  v87 = -64;
  do
  {
    sub_24BC9F18C(v86, *(v86 - 8));
    v86 -= 4;
    v87 += 32;
  }

  while (v87);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  v88 = &STACK[0x200];
  v89 = -64;
  do
  {
    sub_24BC9F18C(v88, *(v88 - 8));
    v88 -= 4;
    v89 += 32;
  }

  while (v89);
  v90 = &STACK[0x240];
  v91 = -64;
  do
  {
    sub_24BC9F18C(v90, *(v90 - 8));
    v90 -= 4;
    v91 += 32;
  }

  while (v91);
  v92 = &STACK[0x280];
  v93 = -64;
  do
  {
    sub_24BC9F18C(v92, *(v92 - 8));
    v92 -= 4;
    v93 += 32;
  }

  while (v93);
  v94 = &STACK[0x2C0];
  v95 = -64;
  do
  {
    sub_24BC9F18C(v94, *(v94 - 8));
    v94 -= 4;
    v95 += 32;
  }

  while (v95);
  v96 = &STACK[0x300];
  v97 = -64;
  do
  {
    sub_24BC9F18C(v96, *(v96 - 8));
    v96 -= 4;
    v97 += 32;
  }

  while (v97);
  v98 = &STACK[0x340];
  v99 = -64;
  do
  {
    sub_24BC9F18C(v98, *(v98 - 8));
    v98 -= 4;
    v99 += 32;
  }

  while (v99);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&STACK[0x358] + i + 40), *(&STACK[0x358] + i + 32));
  }

  sub_24BC9F18C((v72 + 8), a24);
  _Unwind_Resume(a1);
}

void sub_24BE526E4(uint64_t a1, void *a2)
{
  v56[0] = 0;
  v57 = 0;
  sub_24BC9C7E0(a2, v56);
  if (v56[0] == 1)
  {
    v3 = sub_24BCB0080(v57, "min_chart_number");
    if (v57 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v56, "min_chart_number");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v56, "min_chart_number");
        __p.__r_.__value_.__r.__words[0] = 0;
        sub_24BDAE90C(v6, &__p);
        *a1 = __p.__r_.__value_.__r.__words[0];
        sub_24BC836D4(&__p, "min_chart_number");
        sub_24BC9CAB4(v56, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v56[0] == 1)
    {
      v7 = sub_24BCB0080(v57, "max_stretch_ratio");
      if (v57 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v56, "max_stretch_ratio");
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v56, "max_stretch_ratio");
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          sub_24BCB0594(v10, &__p, v11);
          *(a1 + 8) = __p.__r_.__value_.__l.__data_;
          sub_24BC836D4(&__p, "max_stretch_ratio");
          sub_24BC9CAB4(v56, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      if (v56[0] == 1)
      {
        v12 = sub_24BCB0080(v57, "skip_stretch_optimize_in_initial_param");
        if (v57 + 8 != v12)
        {
          v13 = sub_24BC9C8EC(v56, "skip_stretch_optimize_in_initial_param");
          __p.__r_.__value_.__s.__data_[0] = 0;
          __p.__r_.__value_.__l.__size_ = 0;
          v14 = sub_24BCB01B0(v13, &__p);
          sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
          if ((v14 & 1) == 0)
          {
            v15 = sub_24BC9C8EC(v56, "skip_stretch_optimize_in_initial_param");
            __p.__r_.__value_.__s.__data_[0] = 0;
            sub_24BCB0940(v15, &__p);
            *(a1 + 12) = __p.__r_.__value_.__s.__data_[0];
            sub_24BC836D4(&__p, "skip_stretch_optimize_in_initial_param");
            sub_24BC9CAB4(v56, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v56[0] == 1)
        {
          v16 = sub_24BCB0080(v57, "optimize_boundary_if_face_number_less_than");
          if (v57 + 8 != v16)
          {
            v17 = sub_24BC9C8EC(v56, "optimize_boundary_if_face_number_less_than");
            __p.__r_.__value_.__s.__data_[0] = 0;
            __p.__r_.__value_.__l.__size_ = 0;
            v18 = sub_24BCB01B0(v17, &__p);
            sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
            if ((v18 & 1) == 0)
            {
              v19 = sub_24BC9C8EC(v56, "optimize_boundary_if_face_number_less_than");
              LODWORD(__p.__r_.__value_.__l.__data_) = 0;
              sub_24BCB07E0(v19, &__p);
              *(a1 + 16) = __p.__r_.__value_.__l.__data_;
              sub_24BC836D4(&__p, "optimize_boundary_if_face_number_less_than");
              sub_24BC9CAB4(v56, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }

          if (v56[0] == 1)
          {
            v20 = sub_24BCB0080(v57, "repair_self_intersection");
            if (v57 + 8 != v20)
            {
              v21 = sub_24BC9C8EC(v56, "repair_self_intersection");
              __p.__r_.__value_.__s.__data_[0] = 0;
              __p.__r_.__value_.__l.__size_ = 0;
              v22 = sub_24BCB01B0(v21, &__p);
              sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
              if ((v22 & 1) == 0)
              {
                v23 = sub_24BC9C8EC(v56, "repair_self_intersection");
                __p.__r_.__value_.__s.__data_[0] = 0;
                sub_24BCB0940(v23, &__p);
                *(a1 + 20) = __p.__r_.__value_.__s.__data_[0];
                sub_24BC836D4(&__p, "repair_self_intersection");
                sub_24BC9CAB4(v56, &__p.__r_.__value_.__l.__data_);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }

            if (v56[0] == 1)
            {
              v24 = sub_24BCB0080(v57, "tex_size");
              if (v57 + 8 != v24)
              {
                v25 = sub_24BC9C8EC(v56, "tex_size");
                __p.__r_.__value_.__s.__data_[0] = 0;
                __p.__r_.__value_.__l.__size_ = 0;
                v26 = sub_24BCB01B0(v25, &__p);
                sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
                if ((v26 & 1) == 0)
                {
                  v27 = sub_24BC9C8EC(v56, "tex_size");
                  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
                  sub_24BCB07E0(v27, &__p);
                  *(a1 + 24) = __p.__r_.__value_.__l.__data_;
                  sub_24BC836D4(&__p, "tex_size");
                  sub_24BC9CAB4(v56, &__p.__r_.__value_.__l.__data_);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }
              }

              if (v56[0] == 1)
              {
                v28 = sub_24BCB0080(v57, "tex_num");
                if (v57 + 8 != v28)
                {
                  v29 = sub_24BC9C8EC(v56, "tex_num");
                  __p.__r_.__value_.__s.__data_[0] = 0;
                  __p.__r_.__value_.__l.__size_ = 0;
                  v30 = sub_24BCB01B0(v29, &__p);
                  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
                  if ((v30 & 1) == 0)
                  {
                    v31 = sub_24BC9C8EC(v56, "tex_num");
                    __p.__r_.__value_.__s.__data_[0] = 0;
                    sub_24BE54014(v31, &__p);
                    *(a1 + 28) = __p.__r_.__value_.__s.__data_[0];
                    sub_24BC836D4(&__p, "tex_num");
                    sub_24BC9CAB4(v56, &__p.__r_.__value_.__l.__data_);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
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

  v32 = sub_24BC9C8EC(v56, "packing_method");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v33 = sub_24BCB01B0(v32, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v33 & 1) == 0)
  {
    v34 = sub_24BC9C8EC(v56, "packing_method");
    sub_24BDAEAC8(v34, &__p);
    *(a1 + 32) = sub_24BE4EA50(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "packing_method");
    sub_24BC9CAB4(v56, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v35 = sub_24BC9C8EC(v56, "overlap_check_mode");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v36 = sub_24BCB01B0(v35, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v36 & 1) == 0)
  {
    v37 = sub_24BC9C8EC(v56, "overlap_check_mode");
    sub_24BDAEAC8(v37, &__p);
    *(a1 + 36) = sub_24BE4ED7C(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "overlap_check_mode");
    sub_24BC9CAB4(v56, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v56[0] == 1)
  {
    v38 = sub_24BCB0080(v57, "enable_uv_utilization_optimization");
    if (v57 + 8 != v38)
    {
      v39 = sub_24BC9C8EC(v56, "enable_uv_utilization_optimization");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v40 = sub_24BCB01B0(v39, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v40 & 1) == 0)
      {
        v41 = sub_24BC9C8EC(v56, "enable_uv_utilization_optimization");
        __p.__r_.__value_.__s.__data_[0] = 0;
        sub_24BCB0940(v41, &__p);
        *(a1 + 40) = __p.__r_.__value_.__s.__data_[0];
        sub_24BC836D4(&__p, "enable_uv_utilization_optimization");
        sub_24BC9CAB4(v56, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v56[0] == 1)
    {
      v42 = sub_24BCB0080(v57, "enable_signal");
      if (v57 + 8 != v42)
      {
        v43 = sub_24BC9C8EC(v56, "enable_signal");
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        v44 = sub_24BCB01B0(v43, &__p);
        sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
        if ((v44 & 1) == 0)
        {
          v45 = sub_24BC9C8EC(v56, "enable_signal");
          __p.__r_.__value_.__s.__data_[0] = 0;
          sub_24BCB0940(v45, &__p);
          *(a1 + 41) = __p.__r_.__value_.__s.__data_[0];
          sub_24BC836D4(&__p, "enable_signal");
          sub_24BC9CAB4(v56, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      if (v56[0] == 1)
      {
        v46 = sub_24BCB0080(v57, "enable_parallel");
        if (v57 + 8 != v46)
        {
          v47 = sub_24BC9C8EC(v56, "enable_parallel");
          __p.__r_.__value_.__s.__data_[0] = 0;
          __p.__r_.__value_.__l.__size_ = 0;
          v48 = sub_24BCB01B0(v47, &__p);
          sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
          if ((v48 & 1) == 0)
          {
            v49 = sub_24BC9C8EC(v56, "enable_parallel");
            __p.__r_.__value_.__s.__data_[0] = 0;
            sub_24BCB0940(v49, &__p);
            *(a1 + 42) = __p.__r_.__value_.__s.__data_[0];
            sub_24BC836D4(&__p, "enable_parallel");
            sub_24BC9CAB4(v56, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v56[0] == 1)
        {
          v50 = sub_24BCB0080(v57, "gutter");
          if (v57 + 8 != v50)
          {
            v51 = sub_24BC9C8EC(v56, "gutter");
            __p.__r_.__value_.__s.__data_[0] = 0;
            __p.__r_.__value_.__l.__size_ = 0;
            v52 = sub_24BCB01B0(v51, &__p);
            sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
            if ((v52 & 1) == 0)
            {
              v53 = sub_24BC9C8EC(v56, "gutter");
              LODWORD(__p.__r_.__value_.__l.__data_) = 0;
              sub_24BCB0594(v53, &__p, v54);
              *(a1 + 44) = __p.__r_.__value_.__l.__data_;
              sub_24BC836D4(&__p, "gutter");
              sub_24BC9CAB4(v56, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BE53228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE5320CLL);
  }

  _Unwind_Resume(a1);
}

void sub_24BE53320(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE519DC();
}

uint64_t sub_24BE53470(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE526E4(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE535DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE53658(uint64_t a1)
{
  std::mutex::~mutex((a1 + 208));
  v4 = (a1 + 152);
  sub_24BCB7FC8(&v4);
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  sub_24BC9F10C(a1 + 16);
  return a1;
}

uint64_t sub_24BE53724(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F973E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BE53750(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = **(result + 8);
  v5 = *(v4 + 4 * v3);
  *(v4 + 4 * v3) = *(v4 + 4 * *a3);
  *(v4 + 4 * *a3) = v5;
  return result;
}

uint64_t sub_24BE537E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97428;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BE53814(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  v7 = *a2;
  v6 = v3;
  return sub_24BE53850(v4, &v7, &v6);
}

uint64_t sub_24BE53850(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v18 = *a2;
  v6 = *sub_24BCB9038(a1 + 104, &v18);
  v18 = *a3;
  v7 = *sub_24BCB9038(a1 + 104, &v18);
  v18 = v6;
  do
  {
    v8 = *(sub_24BCB9024(a1 + 104, &v18) + 8);
    v17 = *a3;
    v18 = v8;
    sub_24BCB90A0(a1 + 104, &v17, &v18);
  }

  while (v18 != -1 && v18 != v6);
  v18 = v7;
  do
  {
    v10 = *(sub_24BCB9024(a1 + 104, &v18) + 8);
    v17 = *a2;
    v18 = v10;
    result = sub_24BCB90A0(a1 + 104, &v17, &v18);
  }

  while (v18 != -1 && v18 != v7);
  v14 = *(a1 + 56);
  v13 = *(a1 + 64);
  if (v14 != v13)
  {
    v15 = *a2;
    v16 = *a3;
    do
    {
      result = *v14;
      if (*v14)
      {
        result = (*(*result + 56))(result, v15, v16);
      }

      v14 += 2;
    }

    while (v14 != v13);
  }

  return result;
}