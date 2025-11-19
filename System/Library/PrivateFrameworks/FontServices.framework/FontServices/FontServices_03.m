uint64_t sub_24BBF4254(int a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 40);
  v7 = (v6 + a1);
  if (a3 && v6 && (v8 = *(a2 + 16)) != 0 && (v9 = sub_24BBE2E50(v8, v7)) != 0)
  {
    *(a2 + 16) = v9;
    LODWORD(v10) = *(a2 + 40);
  }

  else
  {
    result = (*(*qword_28151C040 + 16))(qword_28151C040, v7);
    if (!result)
    {
      return result;
    }

    v12 = result;
    v10 = *(a2 + 40);
    if (v10)
    {
      v13 = *(a2 + 16);
      if (v13)
      {
        if (a3)
        {
          memcpy(result, v13, v10);
          v13 = *(a2 + 16);
        }

        j__free(v13);
        LODWORD(v10) = *(a2 + 40);
      }
    }

    *(a2 + 16) = v12;
  }

  *(a2 + 40) = v10 + a1;
  return 1;
}

int8x16_t sub_24BBF4368(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  *(a4 + 16) = *(a3 + 273);
  memmove((a4 + 1056), a3 + 69, 0x200uLL);
  (*(*a1 + 104))(a1, a2, a4, a4 + 4, a4 + 8);
  v8 = 0;
  v9 = 0;
  v10 = *a3;
  memset(v16, 0, sizeof(v16));
  do
  {
    (*(*a1 + 136))(a1, a2, *(a4 + 2 * v8 + 1056), v16);
    if ((*(a3 + 137) & 0x100) != 0)
    {
      v11 = LODWORD(v16[0]) + v10;
    }

    else
    {
      v11 = (v10 + 0x8000 + LODWORD(v16[0])) & 0xFFFF0000;
    }

    *(a4 + 4 * v8 + 32) = v11;
    if (v9 <= v11)
    {
      v9 = v11;
    }

    ++v8;
  }

  while (v8 != 256);
  v12.i64[0] = *a4;
  v12.i32[2] = *(a4 + 8);
  v12.i32[3] = v9;
  v13.i64[0] = 0x800000008000;
  v13.i64[1] = 0x800000008000;
  v14 = vaddq_s32(v12, v13);
  v13.i64[0] = 0xFFFF0000FFFF0000;
  v13.i64[1] = 0xFFFF0000FFFF0000;
  result = vandq_s8(v14, v13);
  *a4 = result;
  return result;
}

void sub_24BBF44CC(void *a1)
{
  sub_24BBE04C0(a1);

  JUMPOUT(0x24C252120);
}

_DWORD *sub_24BBF4504(_DWORD *a1, _DWORD *a2)
{
  v2 = -a1[66];
  v3 = -a1[68];
  *a2 = a1[65];
  a2[1] = v2;
  a2[2] = a1[67];
  a2[3] = v3;
  return a2;
}

int32x2_t sub_24BBF452C(int32x2_t *a1, int32x2_t *a2, int32x2_t *a3)
{
  result = vadd_s32(a1[40], *a2);
  *a3 = result;
  return result;
}

uint64_t sub_24BBF4540(uint64_t result, uint64_t a2)
{
  *result = &unk_285F8A900;
  *(result + 8) = a2;
  *(result + 60) = 0;
  return result;
}

int *sub_24BBF457C(uint64_t a1, int *a2, int *a3)
{
  v5 = *a2;
  if (*(a1 + 20) > *a2)
  {
    *(a1 + 20) = v5;
  }

  if (*(a1 + 16) < v5)
  {
    *(a1 + 16) = v5;
  }

  v6 = a2[1];
  if (*(a1 + 28) > v6)
  {
    *(a1 + 28) = v6;
  }

  if (*(a1 + 24) < v6)
  {
    *(a1 + 24) = v6;
  }

  (*(**(a1 + 8) + 16))(*(a1 + 8));
  v7 = *a3;
  if (*(a1 + 36) > *a3)
  {
    *(a1 + 36) = v7;
    v7 = *a3;
  }

  if (*(a1 + 44) < v7)
  {
    *(a1 + 44) = v7;
    *(a1 + 32) = *a3;
  }

  v8 = a3[1];
  if (*(a1 + 40) > v8)
  {
    *(a1 + 40) = v8;
    v8 = a3[1];
  }

  if (*(a1 + 48) < v8)
  {
    *(a1 + 48) = v8;
  }

  return a3;
}

__n128 sub_24BBF4670(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4, __n128 *a5)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8), a2, a2);
  (*(**(a1 + 8) + 16))(*(a1 + 8), a3, a3);
  v10 = *(a1 + 32);
  (*(**(a1 + 8) + 16))(*(a1 + 8), &v10, &v10);
  *a4 = vsub_s32(v10, *a4);
  result = *(a1 + 36);
  *a5 = result;
  return result;
}

void *sub_24BBF4758(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  result = sub_24BBD7BD4(a1, a2, a3, a4, a5);
  *(result + 396) = 0;
  *result = &unk_285F8A928;
  result[42] = &unk_285F8A9A8;
  result[43] = a3;
  return result;
}

void sub_24BBF47C8(void *a1)
{
  sub_24BBE04C0(a1);

  JUMPOUT(0x24C252120);
}

void sub_24BBF4800(uint64_t a1)
{
  sub_24BBE04C0((a1 - 336));

  JUMPOUT(0x24C252120);
}

void sub_24BBF483C(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4, __n128 *a5)
{
  sub_24BBF4670(a1 + 336, a2, a3, a4, a5);
  v8 = *(a2 + 4);
  *(a2 + 4) = -v8;
  *(a3 + 4) = v8;
  a4->i32[1] = -*(a2 + 4);
}

void sub_24BBF4890(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4, __n128 *a5)
{
  sub_24BBF4670(a1, a2, a3, a4, a5);
  v8 = *(a2 + 4);
  *(a2 + 4) = -v8;
  *(a3 + 4) = v8;
  a4->i32[1] = -*(a2 + 4);
}

uint64_t sub_24BBF48E0(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  *(a1 + 372) = xmmword_24BC06510;
  v10.i64[0] = 0xFFFFFFFF00000000;
  v10.i64[1] = 0xFFFFFFFF00000000;
  *(a1 + 352) = vnegq_f32(v10);
  sub_24BBD7F24(a1, a2, a3, a4, a5, a6);
  v11 = *(*a1 + 104);

  return v11(a1, a4, a5, a6, a1 + 260);
}

uint64_t sub_24BBF4A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  (*(*a1 + 80))(a1, a2, &v10);
  v10 = 0;
  (*(*a1 + 80))(a1, a3, &v10);
  v10 = 0;
  (*(*a1 + 80))(a1, a4, &v10);
  v10 = 0;
  return (*(*a1 + 80))(a1, a5, &v10);
}

void sub_24BBF4B68(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int *a8, int *a9, int *a10, int *a11)
{
  v11 = a5 * a7 * 0.0000152587891;
  v12 = 0.5;
  if (v11 < 0.0)
  {
    v12 = -0.5;
  }

  v13 = v11 + v12;
  if (v13 >= 2147483650.0)
  {
    v14 = 0x7FFFFFFF;
  }

  else if (v13 <= -2147483650.0)
  {
    v14 = 0x80000000;
  }

  else
  {
    v14 = v13;
  }

  *a8 = v14 >> 1;
  *a11 = v14 >> 1;
  *a10 = v14 >> 1;
  *a9 = v14 >> 1;
  if (a3)
  {
    a8[1] = 0;
    a9[1] = 0;
    v15 = -v14;
    a10[1] = -v14;
  }

  else
  {
    a9[1] = *(a6 + 4);
    a10[1] = *(a6 + 12);
    a8[1] = a9[1] + 3264;
    v15 = a10[1] - 3264;
  }

  a11[1] = v15;
}

uint64_t sub_24BBF4C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  (*(*a1 + 296))(a1, a2, a6, a4, a5, a7, a8, &v24, &v23, &v22, &v21);
  (*(*a3 + 16))(a3, &v24, &v24);
  (*(*a3 + 16))(a3, &v23, &v23);
  (*(*a3 + 16))(a3, &v22, &v22);
  result = (*(*a3 + 16))(a3, &v21, &v21);
  v14 = v24;
  v15 = HIDWORD(v24);
  v16 = v21;
  v17 = HIDWORD(v21);
  v18 = HIDWORD(v24) - HIDWORD(v21);
  *a9 = v21 - v24;
  a9[1] = v18;
  v19 = v15 - HIDWORD(v23);
  *a10 = v23 - v14;
  a10[1] = v19;
  v20 = v17 - HIDWORD(v22);
  *a11 = v22 - v16;
  a11[1] = v20;
  *a12 = -v14;
  a12[1] = v15;
  return result;
}

double sub_24BBF4DC0(uint64_t a1, uint64_t a2)
{
  *&result = 0x10000;
  *a2 = xmmword_24BC06520;
  *(a2 + 16) = 0;
  return result;
}

void *sub_24BBF4DD4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, int32x4_t *a10, BOOL *a11)
{
  v17 = (*(*a2 + 64))(a2);
  v18 = (*(*v17 + 16))(v17);
  if ((*(*a2 + 40))(a2))
  {
    *a8 = *v18;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    sub_24BBD7BD4(&v27, a1, a2, a3, a4);
    BYTE12(v51) = 0;
    *&v27 = &unk_285F8A928;
    *&v48 = &unk_285F8A9A8;
    *(&v48 + 1) = a2;
    sub_24BBF48E0(&v27, v18, 0, a5, a6, a7);
    *a10 = vzip2q_s32(vzip1q_s32(v49, vextq_s8(v49, v49, 0xCuLL)), v49);
    *a9 = HIDWORD(v44);
    *a11 = DWORD1(v43) == 0x7FFFFFFF;
    return sub_24BBE04C0(&v27);
  }

  else
  {
    v55[0] = 0x16A0900016A09;
    memset(v53, 0, sizeof(v53));
    (*(*a1 + 288))(a1, v53);
    v20 = (*(*a1 + 88))(a1);
    v21 = sub_24BBD20B4(a1, v20, (v18 + 162), v53, v55, 1, &v54);
    v52 = v21;
    *a8 = *v21;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    sub_24BBD7BD4(&v27, a1, a2, a3, a4);
    sub_24BBD7F24(&v27, v21, 0, a5, a6, a7);
    v22 = -DWORD2(v43);
    v23 = -v44;
    v24 = DWORD1(v43);
    a10->i32[0] = DWORD1(v43);
    a10->i32[1] = v22;
    a10->i32[2] = HIDWORD(v43);
    a10->i32[3] = v23;
    *a9 = HIDWORD(v44);
    *a11 = v24 == 0x7FFFFFFF;
    sub_24BBE04C0(&v27);
    return sub_24BBEC42C(&v52);
  }
}

void sub_24BBF5108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_24BBE04C0(va);
  sub_24BBEC42C((v5 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_24BBF513C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9)
{
  v17 = (*(*a3 + 64))(a3);
  v18 = (*(*v17 + 16))(v17);
  v22 = 0;
  v21 = 0uLL;
  v20 = 0;
  sub_24BBF4DD4(a1, a3, a4, a5, a6, a7, a8, &v22 + 1, &v22, &v21, &v20);
  return sub_24BBF4C28(a1, a2, a3, v18 + 648, HIDWORD(v22), v20, &v21, v22, a6, a7, a8, a9);
}

void *sub_24BBF5260(void *a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, int a6)
{
  result = sub_24BBD7C94(a1, a2, a3, a4, 1);
  *result = &unk_285F8A9D0;
  result[40] = a5;
  *(result + 82) = a6;
  *(result + 83) = 0;
  if (!a6)
  {
    *(result + 8) = 19;
  }

  return result;
}

void sub_24BBF52C8(void *a1)
{
  sub_24BBE04C0(a1);

  JUMPOUT(0x24C252120);
}

void *sub_24BBF5300(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, int a7)
{
  result = sub_24BBD7C94(a1, a2, a4, a5, 1);
  result[40] = a6;
  *(result + 82) = a7;
  *(result + 83) = 0;
  if (!a7)
  {
    *(result + 8) = 19;
  }

  *(result + 412) = 0;
  *result = &unk_285F8AA40;
  result[44] = &unk_285F8AAB8;
  result[45] = a3;
  return result;
}

void sub_24BBF53A4(void *a1)
{
  sub_24BBE04C0(a1);

  JUMPOUT(0x24C252120);
}

void sub_24BBF53DC(uint64_t a1)
{
  sub_24BBE04C0((a1 - 352));

  JUMPOUT(0x24C252120);
}

BOOL sub_24BBF5418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 388) = xmmword_24BC06510;
  v3.i64[0] = 0xFFFFFFFF00000000;
  v3.i64[1] = 0xFFFFFFFF00000000;
  *(a1 + 368) = vnegq_f32(v3);
  return sub_24BBE1F5C(a1, a2, a3);
}

uint64_t sub_24BBF5484(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, unsigned int a6)
{
  v9 = sub_24BBD7C94(a1, a2, a3, a4, 1);
  v9[40] = 0;
  v9[41] = 0;
  *v9 = &unk_285F8AAE0;
  v9[44] = a5;
  *(v9 + 90) = a6;
  *(v9 + 364) = 4;
  v10 = sub_24BBD7EAC(5u);
  *(a1 + 320) = *v10;
  *(a1 + 328) = *(v10 + 2);
  if (a6 > 3)
  {
    **(a1 + 352) = 0;
  }

  else
  {
    *(a1 + 16) = 19;
  }

  return a1;
}

uint64_t sub_24BBF5540(void *a1)
{
  *a1 = &unk_285F8AAE0;
  nullsub_1(5);

  return sub_24BBE04C0(a1);
}

void sub_24BBF55A0(void *a1)
{
  sub_24BBF5540(a1);

  JUMPOUT(0x24C252120);
}

BOOL sub_24BBF55D8(uint64_t a1)
{
  v2 = sub_24BBF2F64(5u, (*(a1 + 328) + 1024));
  if (v2)
  {
    *(a1 + 320) = *v2;
    *(a1 + 328) = *(v2 + 2);
  }

  else
  {
    *(a1 + 16) = 20;
  }

  return v2 != 0;
}

double sub_24BBF5630(_DWORD *a1, uint64_t a2, __int16 a3)
{
  v6 = a1[83];
  if (a1[82] - v6 < 0xB)
  {
    if (!(*(*a1 + 96))(a1))
    {
      return result;
    }

    v6 = a1[83];
  }

  v8 = *(a1 + 40) + v6;
  *v8 = a3;
  v9 = 0.0;
  (*(*a1 + 80))(a1, a2, &v9);
  result = v9;
  *(v8 + 2) = v9;
  a1[83] += 10;
  ++a1[92];
  return result;
}

uint64_t sub_24BBF5718(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 19 || v1 == 0)
  {
    *(result + 332) = 0;
    *(result + 368) = 0;
  }

  return result;
}

void sub_24BBF5734(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2 == 19 || v2 == 0)
  {
    sub_24BBF5630(a1, a2, 1);
    v6 = *a2;
    *(a1 + 336) = *a2;
    *(a1 + 344) = v6;
  }
}

void sub_24BBF577C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2 == 19 || v2 == 0)
  {
    sub_24BBF5630(a1, a2, 1);
    *(a1 + 344) = *a2;
  }
}

void sub_24BBF57CC(uint64_t a1, int *a2, int *a3, int *a4, _DWORD *a5)
{
  v15 = *(a1 + 16);
  if (v15 == 19 || v15 == 0)
  {
    v120 = v14;
    v121 = v13;
    v122 = v12;
    v123 = v11;
    v124 = v10;
    v125 = v9;
    v126 = v8;
    v127 = v7;
    v128 = v5;
    v129 = v6;
    v18 = *a3;
    v19 = a3[1];
    v20 = 3 * *a3;
    v21 = *a4;
    v22 = a4[1];
    v23 = v20 - *a2 + -3 * *a4 + *a5;
    v117 = a2[1];
    v118 = *a2;
    v24 = 3 * v19 - v117 + -3 * v22 + a5[1];
    v25 = -3 * *a2;
    if (v23 >= 0)
    {
      v26 = v20 - *a2 + -3 * *a4 + *a5;
    }

    else
    {
      v26 = -v23;
    }

    if (v24 >= 0)
    {
      v27 = 3 * v19 - v117 + -3 * v22 + a5[1];
    }

    else
    {
      v27 = -v24;
    }

    if (v26 <= v27)
    {
      v26 = v27;
    }

    if (v26 > 0x10000007)
    {
      v28 = 905969671;
      if (v26 < 0x69780008)
      {
        v34 = 15;
      }

      else
      {
        v34 = 16;
      }

      if (v26 < 0x44A80008)
      {
        v35 = 13;
      }

      else
      {
        v35 = 14;
      }

      if (v26 <= 0x55C00007)
      {
        v31 = v35;
      }

      else
      {
        v31 = v34;
      }

      if (v26 < 0x29980008)
      {
        v36 = 11;
      }

      else
      {
        v36 = 12;
      }

      if (v26 < 0x16C80008)
      {
        v37 = 9;
      }

      else
      {
        v37 = 10;
      }

      if (v26 <= 0x1F400007)
      {
        v33 = v37;
      }

      else
      {
        v33 = v36;
      }
    }

    else
    {
      v28 = 33554439;
      if (v26 < 0xAB80008)
      {
        v29 = 7;
      }

      else
      {
        v29 = 8;
      }

      if (v26 < 0x3E80008)
      {
        v30 = 5;
      }

      else
      {
        v30 = 6;
      }

      if (v26 <= 0x6C00007)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29;
      }

      if (v26 < 0xD80008)
      {
        v32 = 3;
      }

      else
      {
        v32 = 4;
      }

      if (v26 < 0x80008)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      if (v26 >= 0x400008)
      {
        v33 = v32;
      }
    }

    if (v26 <= v28)
    {
      v38 = v33;
    }

    else
    {
      v38 = v31;
    }

    v39 = v21 + v118;
    v40 = v20 + v25;
    v41 = 0.5;
    v42 = 65536.0 / (v38 << 16) * 1073741820.0 + 0.5;
    if (v42 >= 2147483650.0)
    {
      v43 = 0x7FFFFFFF;
    }

    else if (v42 <= -2147483650.0)
    {
      v43 = 0x80000000;
    }

    else
    {
      v43 = v42;
    }

    v44 = 3 * v39;
    v45 = 3 * v19 - 3 * v117;
    v46 = v43;
    v47 = v40 * v43 * 9.31322575e-10;
    v48 = -0.5;
    if (v47 < 0.0)
    {
      v41 = -0.5;
    }

    v49 = v47 + v41;
    if (v49 >= 2147483650.0)
    {
      v50 = 0x1FFFFFFF;
    }

    else if (v49 <= -2147483650.0)
    {
      v50 = -536870912;
    }

    else
    {
      v50 = v49 >> 2;
    }

    v51 = v118 >> 1;
    v52 = v117 >> 1;
    v116 = v44 - 6 * v18;
    v115 = 3 * (v22 + v117) - 6 * v19;
    v53 = v45 * v46 * 9.31322575e-10;
    if (v53 >= 0.0)
    {
      v48 = 0.5;
    }

    v54 = v53 + v48;
    if (v54 >= 2147483650.0)
    {
      v55 = 0x1FFFFFFF;
    }

    else if (v54 <= -2147483650.0)
    {
      v55 = -536870912;
    }

    else
    {
      v55 = v54 >> 2;
    }

    v113 = v24;
    v114 = v23;
    v56 = (3 * v23);
    v57 = v38 + 1;
    v58 = (3 * v24);
    v59 = v43;
    while (1)
    {
      v60 = v59;
      v61 = v114 * v59 * 9.31322575e-10;
      if (v61 >= 0.0)
      {
        v62 = 0.5;
      }

      else
      {
        v62 = -0.5;
      }

      v63 = v61 + v62;
      if (v63 >= 2147483650.0)
      {
        v64 = 0x7FFFFFFF;
      }

      else if (v63 <= -2147483650.0)
      {
        v64 = 0x80000000;
      }

      else
      {
        v64 = v63;
      }

      v65 = v60 * (v64 + v116) * 9.31322575e-10;
      if (v65 >= 0.0)
      {
        v66 = 0.5;
      }

      else
      {
        v66 = -0.5;
      }

      v67 = v65 + v66;
      if (v67 >= 2147483650.0)
      {
        v68 = 0x7FFFFFFF;
      }

      else if (v67 <= -2147483650.0)
      {
        v68 = 0x80000000;
      }

      else
      {
        v68 = v67;
      }

      v69 = v60 * (v68 + v40) * 9.31322575e-10;
      if (v69 >= 0.0)
      {
        v70 = 0.5;
      }

      else
      {
        v70 = -0.5;
      }

      v71 = v69 + v70;
      v72 = v71;
      if (v71 <= -2147483650.0)
      {
        v72 = 0x80000000;
      }

      v73 = 0x7FFFFFFF;
      if (v71 >= 2147483650.0)
      {
        v72 = 0x7FFFFFFF;
      }

      v74 = v113 * v60 * 9.31322575e-10;
      if (v74 >= 0.0)
      {
        v75 = 0.5;
      }

      else
      {
        v75 = -0.5;
      }

      v76 = v74 + v75;
      if (v76 < 2147483650.0)
      {
        if (v76 <= -2147483650.0)
        {
          v73 = 0x80000000;
        }

        else
        {
          v73 = v76;
        }
      }

      v77 = v60 * (v73 + v115) * 9.31322575e-10;
      v78 = v77 >= 0.0 ? 0.5 : -0.5;
      v79 = v77 + v78;
      if (v79 >= 2147483650.0)
      {
        v80 = 0x7FFFFFFF;
      }

      else
      {
        v80 = v79 <= -2147483650.0 ? 0x80000000 : v79;
      }

      v81 = v60 * (v80 + v45) * 9.31322575e-10;
      v82 = v81 >= 0.0 ? 0.5 : -0.5;
      v83 = v81 + v82;
      if (v83 >= 2147483650.0)
      {
        v84 = 0x7FFFFFFF;
      }

      else
      {
        v84 = v83;
        if (v83 <= -2147483650.0)
        {
          v84 = 0x80000000;
        }
      }

      v85 = v56 * v60 * 9.31322575e-10;
      if (v85 >= 0.0)
      {
        v86 = 0.5;
      }

      else
      {
        v86 = -0.5;
      }

      v87 = v85 + v86;
      if (v87 >= 2147483650.0)
      {
        v88 = 0x7FFFFFFF;
      }

      else if (v87 <= -2147483650.0)
      {
        v88 = 0x80000000;
      }

      else
      {
        v88 = v87;
      }

      v89 = v60 * (v88 + 2 * v116) * 9.31322575e-10;
      if (v89 >= 0.0)
      {
        v90 = 0.5;
      }

      else
      {
        v90 = -0.5;
      }

      v91 = v89 + v90;
      if (v91 >= 2147483650.0)
      {
        v92 = 0x7FFFFFFF;
      }

      else if (v91 <= -2147483650.0)
      {
        v92 = 0x80000000;
      }

      else
      {
        v92 = v91;
      }

      v93 = v46 * (v92 + v40) * 9.31322575e-10;
      if (v93 >= 0.0)
      {
        v94 = 0.5;
      }

      else
      {
        v94 = -0.5;
      }

      v95 = v93 + v94;
      v96 = v95 >> 2;
      if (v95 <= -2147483650.0)
      {
        v96 = -536870912;
      }

      v97 = v95 < 2147483650.0 ? v96 : 0x1FFFFFFF;
      v98 = v58 * v60 * 9.31322575e-10;
      v99 = v98 >= 0.0 ? 0.5 : -0.5;
      v100 = v98 + v99;
      if (v100 >= 2147483650.0)
      {
        v101 = 0x7FFFFFFF;
      }

      else
      {
        v101 = v100 <= -2147483650.0 ? 0x80000000 : v100;
      }

      v102 = v60 * (v101 + 2 * v115) * 9.31322575e-10;
      v103 = v102 >= 0.0 ? 0.5 : -0.5;
      v104 = v102 + v103;
      if (v104 >= 2147483650.0)
      {
        v105 = 0x7FFFFFFF;
      }

      else
      {
        v105 = v104 <= -2147483650.0 ? 0x80000000 : v104;
      }

      v106 = v46 * (v105 + v45) * 9.31322575e-10;
      v107 = v106 >= 0.0 ? 0.5 : -0.5;
      v108 = v106 + v107;
      if (v108 >= 2147483650.0)
      {
        v109 = 0x1FFFFFFF;
      }

      else
      {
        v109 = v108 <= -2147483650.0 ? -536870912 : v108 >> 2;
      }

      v110 = (v72 + v118) >> 1;
      v111 = (v84 + v117) >> 1;
      v119[0] = v51 + v50 + v110 - v97;
      v119[1] = v52 + v55 + v111 - v109;
      sub_24BBF5630(a1, v119, 0);
      if (*(a1 + 16))
      {
        break;
      }

      v59 += v43;
      --v57;
      v51 = v110;
      v52 = v111;
      v55 = v109;
      v50 = v97;
      if (v57 < 2)
      {
        sub_24BBF5630(a1, a5, 1);
        *(a1 + 344) = *a5;
        return;
      }
    }
  }
}

void sub_24BBF5EBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 19 || v1 == 0)
  {
    if (*(a1 + 344) != *(a1 + 336) || *(a1 + 348) != *(a1 + 340))
    {
      sub_24BBF5630(a1, a1 + 336, 1);
      v1 = *(a1 + 16);
    }

    if (v1 == 19 || v1 == 0)
    {
      v5 = *(a1 + 368);
      v6 = (v5 + 31) >> 5;
      v7 = *(a1 + 364);
      v8 = v7 + 8 * v5 + 4 * v6 + 4;
      if (v8 <= *(a1 + 360))
      {
        v9 = *(a1 + 352);
        ++*v9;
        *(v9 + v7) = v5;
        v10 = v9 + v7;
        v11 = *(a1 + 320);
        v12 = *(a1 + 332);
        *(v10 + 1) = 0;
        v13 = v10 + 4;
        v14 = *(a1 + 368);
        if (v14)
        {
          v15 = &v13[v6];
          v16 = v12 + v11 - 10;
          v17 = 0x80000000;
          do
          {
            if (!v17)
            {
              v13[1] = 0;
              ++v13;
              v17 = 0x80000000;
            }

            if (!*v16)
            {
              *v13 |= v17;
            }

            *v15++ = *(v16 + 2);
            v17 >>= 1;
            v16 -= 10;
            --v14;
          }

          while (v14);
        }
      }

      else
      {
        *(a1 + 16) = 19;
      }

      *(a1 + 332) = 0;
      *(a1 + 364) = v8;
    }

    *(a1 + 368) = 0;
  }
}

void sub_24BBF5FF0(void *a1)
{
  sub_24BBF5540(a1);

  JUMPOUT(0x24C252120);
}

void sub_24BBF6028(uint64_t a1)
{
  sub_24BBF5540((a1 - 376));

  JUMPOUT(0x24C252120);
}

BOOL sub_24BBF6064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 412) = xmmword_24BC06510;
  v3.i64[0] = 0xFFFFFFFF00000000;
  v3.i64[1] = 0xFFFFFFFF00000000;
  *(a1 + 392) = vnegq_f32(v3);
  return sub_24BBD800C(a1, a2, a3);
}

void *sub_24BBF60D4(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4, uint64_t a5, _DWORD *a6)
{
  v46 = a3;
  v11 = (*(*a2 + 64))(a2);
  v45 = 0;
  v44 = (*(*a1 + 200))(a1, v11, &v46, &v45);
  v12 = (*(*v11 + 16))(v11);
  if ((*(*a2 + 40))(a2))
  {
    v43 = 0;
    v41 = 0u;
    memset(v42, 0, sizeof(v42));
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    sub_24BBF5484(&v18, a1, v44, v45, a5, a4);
    BYTE4(v43) = 0;
    *&v18 = &unk_285F8AB58;
    *(&v41 + 1) = &unk_285F8ABD8;
    *&v42[0] = a2;
    *(&v42[1] + 12) = xmmword_24BC06510;
    v13.i64[0] = 0xFFFFFFFF00000000;
    v13.i64[1] = 0xFFFFFFFF00000000;
    *(v42 + 8) = vnegq_f32(v13);
    sub_24BBD800C(&v18, v12, 0);
    *a6 = HIDWORD(v40);
    if (v19 == 19)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(exception, v19);
      __cxa_throw(exception, &unk_285F89D90, nullsub_8);
    }
  }

  else
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    sub_24BBF5484(&v18, a1, v44, v45, a5, a4);
    v15 = sub_24BBD7F18(a2);
    sub_24BBD800C(&v18, v12, v15);
    *a6 = HIDWORD(v40);
    if (v19 == 19)
    {
      v17 = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(v17, v19);
      __cxa_throw(v17, &unk_285F89D90, nullsub_8);
    }
  }

  sub_24BBF5540(&v18);
  return sub_24BBEC42C(&v44);
}

void sub_24BBF63CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_24BBF5540(&a9);
  sub_24BBEC42C((v10 - 80));
  _Unwind_Resume(a1);
}

uint64_t sub_24BBF6410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v7 = sub_24BBD7D34(a1, a2, a4, a5, 1);
  *v7 = &unk_285F8AC00;
  *(v7 + 372) = 0;
  *(a1 + 376) = sub_24BBF86B8(a3);
  *(a1 + 380) = sub_24BBD6C14(a3);
  v8 = (*(*a3 + 64))(a3);
  *(a1 + 364) = *(*(*v8 + 24))(v8);
  *(a1 + 304) = 20 * *(a1 + 376);
  v9 = (*(*qword_28151C040 + 16))(qword_28151C040);
  *(a1 + 280) = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 20);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  *(a1 + 192) = sub_24BBD7EAC(0);
  *(a1 + 200) = sub_24BBD7EAC(1u);
  *(a1 + 208) = sub_24BBD7EAC(2u);
  *(a1 + 216) = sub_24BBD7EAC(3u);
  *(a1 + 224) = sub_24BBD7EAC(4u);
  *(a1 + 232) = sub_24BBD7EAC(5u);
  *(a1 + 240) = sub_24BBD7EAC(6u);
  return a1;
}

void sub_24BBF65B4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_24BBD1708(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BBF65D8(void *a1)
{
  *a1 = &unk_285F8AC00;
  nullsub_1(6);
  nullsub_1(5);
  nullsub_1(4);
  nullsub_1(3);
  nullsub_1(2);
  nullsub_1(1);
  nullsub_1(0);
  v2 = a1[35];
  if (v2)
  {
    j__free(v2);
  }

  return sub_24BBD1708(a1);
}

void sub_24BBF6674(void *a1)
{
  sub_24BBF65D8(a1);

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBF66AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v40 = a3;
  v5 = *(a1 + 40);
  v29 = vextq_s8(v5, v5, 8uLL);
  v6 = *(a1 + 96);
  v32 = vextq_s8(v6, v6, 8uLL);
  v7 = *(a1 + 34);
  v33 = 0x40000000000;
  BYTE4(v33) = v7;
  BYTE6(v33) = *(a1 + 88);
  v34 = *(a1 + 32);
  v35 = *(a1 + 56);
  v36 = *(a1 + 112);
  v8 = *(a1 + 80) - v5.i32[0];
  v9 = *(a1 + 136) - v6.i32[0];
  v10 = *(a1 + 24);
  v30 = 0;
  v31 = 0;
  v27[4] = 0;
  v28 = v10;
  v37 = 0;
  v38 = v8;
  v39 = v9;
  v11 = a1 + 312;
  v27[0] = (a1 + 192);
  v27[1] = (a1 + 312);
  v27[2] = (a1 + 348);
  v27[3] = 0;
  *(a1 + 328) = 0;
  v26 = -9;
  memset(v23, 0, sizeof(v23));
  v25 = 0;
  v24 = qword_28151C018;
  qword_28151C018 = v23;
  if (_setjmp(v23))
  {
    v26 = v25;
  }

  else
  {
    v12 = *(sub_24BBD2908() + 2);
    sub_24BBD2CC8();
    v26 = v12(a2, &qword_28151C188, &v28, v27, 0, a1 + 264, &v40);
    if (v26 == -9)
    {
      sub_24BBD2CC8();
      v13 = sub_24BBD2908();
      v15 = v13[1];
      v14 = v13[2];
      v21[0] = *v13;
      v21[1] = v15;
      v21[2] = v14;
      v17 = v13[4];
      v16 = v13[5];
      v18 = v13[3];
      v22 = *(v13 + 12);
      v21[4] = v17;
      v21[5] = v16;
      v21[3] = v18;
      v26 = sub_24BBE5F9C(a2, &qword_28151C188, &v28, v27, 0, a1 + 264, &v40, v21);
    }

    qword_28151C018 = v24;
  }

  if (sub_24BBD5D7C(v26) || *(a1 + 16))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, *(a1 + 16));
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  result = (*(**(a1 + 8) + 240))(*(a1 + 8), a2, v11);
  *(a1 + 372) = result;
  return result;
}

uint64_t sub_24BBF6910(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 264);
  switch(a2)
  {
    case 16:
      v5 &= 0xFFF0u;
      v6 = *(a1 + 268) & 0xFFF0;
      *(a3 + 18) = ((*(a1 + 266) + 15) & 0xFFF0) - v5;
      v7 = (*(a1 + 270) + 15) & 0xFFF0;
      break;
    case 4:
      v5 &= 0xFFFCu;
      v6 = *(a1 + 268) & 0xFFFC;
      *(a3 + 18) = ((*(a1 + 266) + 3) & 0xFFFC) - v5;
      v7 = (*(a1 + 270) + 3) & 0xFFFC;
      break;
    case 2:
      v5 &= 0xFFFEu;
      v6 = *(a1 + 268) & 0xFFFE;
      *(a3 + 18) = ((*(a1 + 266) + 1) & 0xFFFE) - v5;
      v7 = (*(a1 + 270) + 1) & 0xFFFE;
      break;
    default:
      v6 = *(a1 + 268);
      *(a3 + 18) = *(a1 + 266) - v5;
      v7 = *(a1 + 270);
      break;
  }

  *(a3 + 16) = v7 - v6;
  *(a3 + 8) = v5 << 16;
  *(a3 + 12) = -65536 * v6;
  result = (*(*a1 + 40))(a1, a3);
  v9 = *(a3 + 8);
  if (v9 != 0x7FFFFFFF)
  {
    *(a3 + 8) = *(a1 + 364) + v9 - *(a1 + 372);
  }

  *(a3 + 12) -= *(a1 + 368);
  return result;
}

_DWORD *sub_24BBF6A6C(_DWORD *result, _DWORD *a2)
{
  v2 = -result[86];
  *a2 = result[85];
  a2[1] = v2;
  v3 = result[83];
  v4 = result[84];
  a2[5] = v3;
  a2[6] = -v4;
  a2[7] = -v3;
  a2[8] = v4;
  return result;
}

void *sub_24BBF6A98(int16x4_t *a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v4 = a1[34].i32[0];
  v5 = 2 * v4 + 46;
  *a4 = v5;
  if (v5 > a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 19);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  memset(v11, 0, 36);
  result = (*(*a1 + 40))(a1, v11);
  *a3 = *&v11[0];
  *(a3 + 8) = *(&v11[1] + 4);
  v9 = -a1[46].i32[0];
  *(a3 + 24) = a1[45].i32[1] - a1[46].i32[1];
  *(a3 + 28) = v9;
  *(a3 + 32) = vuzp1_s16(a1[33], vrev32_s16(a1[33]));
  *(a3 + 44) = 0;
  *(a3 + 40) = v4;
  if (v4)
  {
    return memcpy((a3 + 46), *&a1[35], 2 * v4);
  }

  *(a3 + 46) = 0;
  return result;
}

void sub_24BBF6BCC(void *a1)
{
  sub_24BBE04C0(a1);

  JUMPOUT(0x24C252120);
}

void sub_24BBF6C04(uint64_t a1)
{
  sub_24BBE04C0((a1 - 320));

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBF6C4C(uint64_t a1, int *a2)
{
  v5 = 0;
  v3 = *(*(a1 + 384) + 8);
  sub_24BBF457C(a1 + 320, a2, &v5);
  return v3(&v5, *(a1 + 392));
}

uint64_t sub_24BBF6C98(uint64_t a1, int *a2)
{
  v5 = 0;
  v3 = *(*(a1 + 384) + 16);
  sub_24BBF457C(a1 + 320, a2, &v5);
  return v3(&v5, *(a1 + 392));
}

uint64_t sub_24BBF6CE4(uint64_t a1, int *a2, int *a3, int *a4, int *a5)
{
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v9 = *(*(a1 + 384) + 24);
  sub_24BBF457C(a1 + 320, a2, &v14);
  sub_24BBF457C(a1 + 320, a3, &v13);
  sub_24BBF457C(a1 + 320, a4, &v12);
  sub_24BBF457C(a1 + 320, a5, &v11);
  return v9(&v14, &v13, &v12, &v11, *(a1 + 392));
}

uint64_t sub_24BBF6D98(uint64_t result)
{
  v1 = *(*(result + 384) + 40);
  if (v1)
  {
    return v1(*(result + 392));
  }

  return result;
}

uint64_t sub_24BBF6DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v10 = sub_24BBF6410(a1, a2, a3, a4, a5);
  *v10 = &unk_285F8AC40;
  sub_24BBD7C94(v10 + 48, a2, a4, a5, 0);
  *(a1 + 712) = a3;
  *(a1 + 764) = 0;
  *(a1 + 384) = &unk_285F8AE98;
  *(a1 + 704) = &unk_285F8AF00;
  v11 = sub_24BBD2908();
  v12 = *v11;
  v13 = v11[2];
  *(a1 + 800) = v11[1];
  *(a1 + 816) = v13;
  *(a1 + 784) = v12;
  v14 = v11[3];
  v15 = v11[4];
  v16 = v11[5];
  *(a1 + 880) = *(v11 + 12);
  *(a1 + 848) = v15;
  *(a1 + 864) = v16;
  *(a1 + 832) = v14;
  *(a1 + 888) = *(a1 + 696);
  *(a1 + 896) = *(a1 + 816);
  *(a1 + 816) = sub_24BBF6EE4;
  return a1;
}

void sub_24BBF6EC0(_Unwind_Exception *a1)
{
  sub_24BBE04C0(v2);
  sub_24BBF65D8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BBF6EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a7 + 776) = 0;
  *(a7 + 768) = a5;
  return (*(a7 + 896))(a1, a2, a3, a4, *(a7 + 888), 0, a7 + 384);
}

uint64_t sub_24BBF6F00(void *a1)
{
  *a1 = &unk_285F8AC40;
  sub_24BBE04C0(a1 + 48);

  return sub_24BBF65D8(a1);
}

void sub_24BBF6F58(void *a1)
{
  *a1 = &unk_285F8AC40;
  sub_24BBE04C0(a1 + 48);
  sub_24BBF65D8(a1);

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBF6FC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v24 = vextq_s8(v4, v4, 8uLL);
  v5 = *(a1 + 96);
  v27 = vextq_s8(v5, v5, 8uLL);
  v6 = *(a1 + 34);
  v28 = 0x40000000000;
  BYTE4(v28) = v6;
  BYTE6(v28) = *(a1 + 88);
  v29 = *(a1 + 32);
  v30 = *(a1 + 56);
  v31 = *(a1 + 112);
  v7 = *(a1 + 80) - v4.i32[0];
  v8 = *(a1 + 136) - v5.i32[0];
  v9 = *(a1 + 24);
  v25 = 0;
  v26 = 0;
  v22[4] = 0;
  v23 = v9;
  v32 = 0;
  v33 = v7;
  v34 = v8;
  v10 = a1 + 312;
  v22[0] = (a1 + 192);
  v22[1] = (a1 + 312);
  v22[2] = (a1 + 348);
  v22[3] = 0;
  *(a1 + 328) = 0;
  v21 = 0;
  memset(v18, 0, sizeof(v18));
  v20 = 0;
  v19 = qword_28151C018;
  qword_28151C018 = v18;
  if (_setjmp(v18))
  {
    v21 = v20;
  }

  else
  {
    sub_24BBD2CC8();
    v11 = *(a1 + 864);
    v16[4] = *(a1 + 848);
    v16[5] = v11;
    v17 = *(a1 + 880);
    v12 = *(a1 + 800);
    v16[0] = *(a1 + 784);
    v16[1] = v12;
    v13 = *(a1 + 832);
    v16[2] = *(a1 + 816);
    v16[3] = v13;
    v21 = sub_24BBE5F9C(a2, &qword_28151C188, &v23, v22, 0, a1 + 264, a1, v16);
    qword_28151C018 = v19;
  }

  if (sub_24BBD5D7C(v21) || *(a1 + 16))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, *(a1 + 16));
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  result = (*(**(a1 + 8) + 240))(*(a1 + 8), a2, v10);
  *(a1 + 372) = result;
  return result;
}

uint64_t sub_24BBF71D4(void *a1)
{
  *a1 = &unk_285F8AC40;
  sub_24BBE04C0(a1 + 48);

  return sub_24BBF65D8(a1);
}

void sub_24BBF722C(void *a1)
{
  *a1 = &unk_285F8AC40;
  sub_24BBE04C0(a1 + 48);
  sub_24BBF65D8(a1);

  JUMPOUT(0x24C252120);
}

double sub_24BBF7298(uint64_t a1, uint64_t a2)
{
  sub_24BBF6FC4(a1, a2);
  v4 = 0;
  *&result = sub_24BBF4670(a1 + 704, a1 + 340, a1 + 332, &v4, (a1 + 348)).n128_u64[0];
  return result;
}

int8x16_t sub_24BBF72E4(int a1, uint64_t a2)
{
  v2 = *a2;
  if (a1 < 2)
  {
    v10.i64[0] = 0x800000008000;
    v10.i64[1] = 0x800000008000;
    v11.i64[0] = 0xFFFF0000FFFF0000;
    v11.i64[1] = 0xFFFF0000FFFF0000;
    *(a2 + 20) = vandq_s8(vaddq_s32(*(a2 + 20), v10), v11);
    v12.i32[0] = v2;
    v12.i32[1] = *(a2 + 4);
    v13 = *(a2 + 8);
    v12.i64[1] = *(a2 + 8);
    result = vandq_s8(vaddq_s32(v12, v10), v11);
    *a2 = result;
  }

  else
  {
    if (v2)
    {
      *a2 = (v2 / a1 + 0x8000) & 0xFFFF0000;
    }

    v3 = *(a2 + 4);
    if (v3)
    {
      *(a2 + 4) = (v3 / a1 + 0x8000) & 0xFFFF0000;
    }

    v4 = *(a2 + 20);
    if (v4)
    {
      *(a2 + 20) = (v4 / a1 + 0x8000) & 0xFFFF0000;
    }

    v5 = *(a2 + 24);
    if (v5)
    {
      *(a2 + 24) = (v5 / a1 + 0x8000) & 0xFFFF0000;
    }

    v6 = *(a2 + 28);
    if (v6)
    {
      *(a2 + 28) = (v6 / a1 + 0x8000) & 0xFFFF0000;
    }

    v7 = *(a2 + 32);
    if (v7)
    {
      *(a2 + 32) = (v7 / a1 + 0x8000) & 0xFFFF0000;
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      *(a2 + 8) = (v8 / a1 + 0x8000) & 0xFFFF0000;
    }

    v9 = *(a2 + 12);
    if (v9)
    {
      *(a2 + 12) = (v9 / a1 + 0x8000) & 0xFFFF0000;
    }

    *(a2 + 16) = *(a2 + 16) / a1;
    *(a2 + 18) = *(a2 + 18) / a1;
  }

  return result;
}

int32x2_t sub_24BBF7404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, int32x2_t *a6)
{
  v12 = (*(*a2 + 64))(a2);
  v13 = (*(*v12 + 16))(v12);
  if ((*(*a2 + 40))(a2))
  {
    bzero(v16, 0x388uLL);
    sub_24BBF6DB0(v16, a1, a2, a4, a5);
    v16[0].n128_u64[0] = &unk_285F8AF78;
    sub_24BBF6FC4(v16, v13);
    v19 = 0;
    sub_24BBF4670(&v18, v16[21].n128_i64 + 4, &v16[20].n128_i64[1] + 4, &v19, (&v16[21].n128_f64[1] + 4));
    sub_24BBF6910(v16, *(v13 + 824), a6);
    v16[0].n128_u64[0] = &unk_285F8AC40;
    sub_24BBE04C0(v17);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    sub_24BBF6410(v16, a1, a2, a4, a5);
    v14 = sub_24BBD7F18(a2);
    sub_24BBF66AC(v16, v13, v14);
    sub_24BBF6910(v16, *(v13 + 824), a6);
  }

  sub_24BBF65D8(v16);
  if (sub_24BBD6C14(a2))
  {
    v16[0].n128_u64[0] = 0;
    sub_24BBF513C(a1, a3, a2, a4, a5, a6, &a6[2] + 1, &a6[3] + 1, v16);
    result = vadd_s32(a6[1], v16[0].n128_u64[0]);
    a6[1] = result;
  }

  return result;
}

void sub_24BBF7650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BBF65D8(va);
  _Unwind_Resume(a1);
}

void *sub_24BBF7674(uint64_t a1, uint64_t a2, unsigned __int16 a3, int32x2_t *a4)
{
  v13 = a3;
  v12 = 0;
  v7 = (*(*a2 + 64))(a2);
  v11 = (*(*a1 + 200))(a1, v7, &v13, &v12);
  *&v8 = sub_24BBF7404(a1, a2, v13, v11, v12, a4);
  v9 = (*(*v7 + 16))(v7, v8);
  sub_24BBF72E4(*(v9 + 824), a4);
  return sub_24BBEC42C(&v11);
}

void **sub_24BBF7784(uint64_t a1, uint64_t a2, unsigned __int16 **a3, unsigned int a4, unsigned int *a5, _WORD *a6)
{
  v6 = *a3;
  v47 = *a3;
  v7 = *(a3 + 7);
  v8 = *(a3 + 3);
  v9 = *(a2 + 824);
  v10 = *(a3 + 6) / v9;
  v11 = ((v7 / v9 + 7) >> 1) & 0x7FFFFFFC;
  v12 = v7 + 7;
  if (v7 < -7)
  {
    v12 = v7 + 14;
  }

  v13 = v12 >> 3;
  if (v7 <= 16)
  {
    v14 = v13;
  }

  else
  {
    v14 = ((v7 + 31) >> 3) & 0xFFFFFFC;
  }

  if (v9 == 1)
  {
    v10 = *(a3 + 6);
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  v16 = v15 * v10;
  v17 = (v16 & 1) + v16;
  *a5 = v17;
  if (!a4 || v17 > a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 19);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  if (v17)
  {
    v18 = *(a2 + 824);
    if (v18 == 1)
    {
      if (v15 == 1)
      {
        for (; v10; --v10)
        {
          *a6 = *(v6 + 1);
          a6 = (a6 + 1);
          v6 += 2;
        }
      }

      else if (v15 == 2)
      {
        for (; v10; --v10)
        {
          v19 = *v6;
          v6 += 2;
          *a6++ = bswap32(v19) >> 16;
        }
      }

      else if (v15 >= 3 && v16 >= 4)
      {
        v35 = v16 >> 2;
        do
        {
          *a6 = bswap32(v6[1] | (*v6 << 16));
          a6 += 2;
          v6 += 2;
          --v35;
        }

        while (v35);
      }
    }

    else
    {
      v20 = 0;
      v21 = *(a2 + 748);
      if (v21)
      {
        if (v21 < 0x40000)
        {
          v20 = 0x40000;
          if ((v21 + 0x7FFF) < 0x10000 || (v20 = 0x40000 / ((v21 + 0x7FFF) >> 16), v21 < 196608))
          {
            v22 = 2 * v21 + 0x7FFF;
            v23 = 0x80000;
            if (v22 >= 0x10000)
            {
              v23 = 0x80000 / (v22 >> 16);
            }

            v20 = (v23 + v20) >> 1;
          }
        }
      }

      v43 = v20;
      if (v18 != 4)
      {
        v38 = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(v38, 8);
        __cxa_throw(v38, &unk_285F89D90, nullsub_8);
      }

      if (v10)
      {
        v24 = 4 * (v8 & 0xFFFFFFFC);
        v25 = &v6[3 * (v8 >> 1)];
        v26 = &v6[2 * (v8 >> 1)];
        v40 = v8 >> 1;
        v41 = v8;
        v27 = &v6[v8 >> 1];
        v39 = v24;
        do
        {
          if (v8 >= 2)
          {
            v42 = v10;
            v28 = 0;
            v29 = v40;
            v44 = v6;
            v45 = a6;
            do
            {
              --v29;
              v30 = v6[v28];
              v31 = v27[v28];
              v32 = v26[v28];
              v33 = v25[v28];
              v46 = sub_24BBF8464(v30 >> 8, v31 >> 8, v32 >> 8, v33 >> 8, v43);
              v34 = sub_24BBF8464(v30, v31, v32, v33, v43);
              v6 = v44;
              v45[v28++] = bswap32(v34 | (v46 << 8)) >> 16;
            }

            while (v29);
            a6 = &v45[v28];
            v8 = v41;
            v10 = v42;
            v24 = v39;
          }

          v25 = (v25 + v24);
          v26 = (v26 + v24);
          v27 = (v27 + v24);
          v6 = (v6 + v24);
          --v10;
        }

        while (v10);
      }
    }
  }

  return sub_24BBF33B8(&v47);
}

void sub_24BBF7A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_24BBF33B8(va);
  _Unwind_Resume(a1);
}

void *sub_24BBF7AA8(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4, _WORD *a5, unsigned int *a6)
{
  v24 = a3;
  v11 = (*(*a2 + 64))(a2);
  v23 = 0;
  v12 = (*(*a1 + 200))(a1, v11, &v24, &v23);
  v22 = v12;
  v13 = (*(*v11 + 16))(v11);
  memset(v21, 0, sizeof(v21));
  if ((*(*a2 + 40))(a2))
  {
    bzero(v18, 0x388uLL);
    sub_24BBF6DB0(v18, a1, a2, v12, v23);
    v18[0].n128_u64[0] = &unk_285F8AF78;
    sub_24BBF6FC4(v18, v13);
    v25 = 0;
    sub_24BBF4670(&v20, v18[21].n128_i64 + 4, &v18[20].n128_i64[1] + 4, &v25, (&v18[21].n128_f64[1] + 4));
    sub_24BBD2CC8();
    v14 = sub_24BBE6DB4(&v18[16].n128_i16[4], v21, &qword_28151C188, *(v13 + 824), 0);
    v18[0].n128_u64[0] = &unk_285F8AC40;
    sub_24BBE04C0(v19);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    sub_24BBF6410(v18, a1, a2, v12, v23);
    v15 = sub_24BBD7F18(a2);
    sub_24BBF66AC(v18, v13, v15);
    sub_24BBD2CC8();
    v14 = sub_24BBE6DB4(&v18[16].n128_i16[4], v21, &qword_28151C188, *(v13 + 824), 0);
  }

  sub_24BBF65D8(v18);
  v16 = sub_24BBD5D7C(v14);
  if (!v16)
  {
    sub_24BBF7784(v16, v13, v21, a4, a6, a5);
  }

  return sub_24BBEC42C(&v22);
}

void *sub_24BBF7D98(uint64_t a1, uint64_t a2, unsigned __int16 a3, int32x2_t *a4, unsigned int a5, _WORD *a6, unsigned int *a7)
{
  v18 = a3;
  v13 = (*(*a2 + 64))(a2);
  v17 = 0;
  v16 = (*(*a1 + 200))(a1, v13, &v18, &v17);
  v14 = (*(*v13 + 16))(v13);
  sub_24BBF7EDC(a1, a2, v14, v18, v16, v17, a4, a5, a6, a7);
  if (a4)
  {
    sub_24BBF72E4(*(v14 + 824), a4);
  }

  return sub_24BBEC42C(&v16);
}

void sub_24BBF7EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BBEC42C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BBF7EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, int32x2_t *a7, unsigned int a8, _WORD *a9, unsigned int *a10)
{
  memset(v24, 0, sizeof(v24));
  if ((*(*a2 + 40))(a2))
  {
    bzero(v21, 0x388uLL);
    sub_24BBF6DB0(v21, a1, a2, a5, a6);
    v21[0].n128_u64[0] = &unk_285F8AF78;
    sub_24BBF6FC4(v21, a3);
    v25 = 0;
    sub_24BBF4670(&v23, v21[21].n128_i64 + 4, &v21[20].n128_i64[1] + 4, &v25, (&v21[21].n128_f64[1] + 4));
    sub_24BBD2CC8();
    v18 = sub_24BBE6DB4(&v21[16].n128_i16[4], v24, &qword_28151C188, *(a3 + 824), 0);
    if (a7)
    {
      sub_24BBF6910(v21, *(a3 + 824), a7);
    }

    v21[0].n128_u64[0] = &unk_285F8AC40;
    sub_24BBE04C0(v22);
  }

  else
  {
    memset(v21, 0, sizeof(v21));
    sub_24BBF6410(v21, a1, a2, a5, a6);
    v19 = sub_24BBD7F18(a2);
    sub_24BBF66AC(v21, a3, v19);
    sub_24BBD2CC8();
    v18 = sub_24BBE6DB4(&v21[16].n128_i16[4], v24, &qword_28151C188, *(a3 + 824), 0);
    if (a7)
    {
      sub_24BBF6910(v21, *(a3 + 824), a7);
    }
  }

  sub_24BBF65D8(v21);
  if (a7 && sub_24BBD6C14(a2))
  {
    v21[0].n128_u64[0] = 0;
    sub_24BBF513C(a1, a4, a2, a5, a6, a7, &a7[2] + 1, &a7[3] + 1, v21);
    a7[1] = vadd_s32(a7[1], v21[0].n128_u64[0]);
  }

  result = sub_24BBD5D7C(v18);
  if ((result & 1) == 0)
  {
    return sub_24BBF7784(result, a3, v24, a8, a10, a9);
  }

  return result;
}

void sub_24BBF8168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BBF65D8(va);
  _Unwind_Resume(a1);
}

void sub_24BBF818C(void *a1)
{
  *a1 = &unk_285F8AC80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBF8218(uint64_t a1, int a2, int *a3)
{
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (a2 > 1)
  {
    v6 = 0;
    do
    {
      v7 = *v5++;
      v8 = bswap32(v7);
      v9 = *a3++;
      v6 += v9 * (v8 >> 16);
      --a2;
    }

    while (a2);
  }

  else
  {
    v6 = bswap32(*v5);
  }

  return SHIWORD(v6);
}

unsigned __int16 *sub_24BBF82A0(uint64_t a1, int a2, int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v12 = (a2 - 1);
  if (a2 > 1)
  {
    v14 = 0;
    v15 = a2;
    v16 = result;
    v17 = a3;
    do
    {
      v18 = *v16++;
      v19 = bswap32(v18);
      v20 = *v17++;
      v14 += v20 * (v19 >> 16);
      --v15;
    }

    while (v15);
    v21 = &result[v12 + 1];
    *a4 = v14;
    v13 = a2;
    v22 = a3;
    do
    {
      v23 = *v21++;
      v24 = bswap32(v23);
      v25 = *v22++;
      v15 += v25 * (v24 >> 16);
      --v13;
    }

    while (v13);
    *a5 = v15;
    v26 = &result[2 * v12 + 2];
    do
    {
      v27 = *v26++;
      v28 = bswap32(v27);
      v29 = *a3++;
      v13 += v29 * (v28 >> 16);
      --a2;
    }

    while (a2);
  }

  else
  {
    *a4 = bswap32(*result) & 0xFFFF0000;
    *a5 = bswap32(result[1]) & 0xFFFF0000;
    v13 = bswap32(result[2]) & 0xFFFF0000;
  }

  *a6 = v13;
  return result;
}

void sub_24BBF83C8(void *a1)
{
  *a1 = &unk_285F8ACA0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBF8464(int a1, int a2, int a3, int a4, unsigned int a5)
{
  v5 = byte_24BC067C7[a2] + byte_24BC067C7[a1];
  v6 = byte_24BC067C7[a4] + byte_24BC067C7[a3];
  v7 = v6 - (((v6 & v5) >> 3) & 0x11) + v5;
  if ((a5 & 0xFFFEFFFF) == 0 || (v7 + 1) <= 1u)
  {
    return (v6 - (((v6 & v5) >> 3) & 0x11) + v5);
  }

  if (dword_27F078358 != a5)
  {
    v8 = vdupq_n_s32(a5);
    v9 = vmulq_s32(v8, xmmword_24BC06530);
    v10 = vmulq_s32(v8, xmmword_24BC06540);
    v11 = vmulq_s32(v8, xmmword_24BC06550);
    v12 = vmulq_s32(v8, xmmword_24BC06560);
    v13 = vshrq_n_s32(v11, 0x10uLL);
    v14 = vshrq_n_s32(v9, 0x10uLL);
    v15 = v14.i8[4];
    v16 = vshrq_n_s32(v10, 0x10uLL);
    if (v14.i32[0] >= 0x10u)
    {
      v17 = 15;
    }

    else
    {
      v17 = v14.i8[0];
    }

    byte_27F078349 = v17;
    if (v14.i32[1] >= 0x10u)
    {
      v15 = 15;
    }

    byte_27F07834A = v15;
    if (v14.i32[2] >= 0x10u)
    {
      v18 = 15;
    }

    else
    {
      v18 = v14.i8[8];
    }

    byte_27F07834B = v18;
    if (v14.i32[3] >= 0x10u)
    {
      v19 = 15;
    }

    else
    {
      v19 = v14.i8[12];
    }

    v20 = v16.i8[0];
    byte_27F07834C = v19;
    v21 = v13.i8[8];
    v22.i64[0] = 0x1000000010;
    v22.i64[1] = 0x1000000010;
    v23 = vmovn_s16(vuzp1q_s16(vcgtq_u32(v22, v16), vcgtq_u32(v22, v13)));
    v24 = vshrq_n_s32(v12, 0x10uLL);
    if ((v23.i8[0] & 1) == 0)
    {
      v20 = 15;
    }

    byte_27F07834D = v20;
    if (v23.i8[1])
    {
      v25 = v16.i8[4];
    }

    else
    {
      v25 = 15;
    }

    byte_27F07834E = v25;
    if (v23.i8[2])
    {
      v26 = v16.i8[8];
    }

    else
    {
      v26 = 15;
    }

    byte_27F07834F = v26;
    if (v23.i8[3])
    {
      v27 = v16.i8[12];
    }

    else
    {
      v27 = 15;
    }

    byte_27F078350 = v27;
    if (v23.i8[4])
    {
      v28 = v13.i8[0];
    }

    else
    {
      v28 = 15;
    }

    byte_27F078351 = v28;
    if (v23.i8[5])
    {
      v29 = v13.i8[4];
    }

    else
    {
      v29 = 15;
    }

    byte_27F078352 = v29;
    if ((v23.i8[6] & 1) == 0)
    {
      v21 = 15;
    }

    byte_27F078353 = v21;
    if (v23.i8[7])
    {
      v30 = v13.i8[12];
    }

    else
    {
      v30 = 15;
    }

    byte_27F078354 = v30;
    if (v24.i32[0] >= 0x10u)
    {
      v31 = 15;
    }

    else
    {
      v31 = v24.i8[0];
    }

    byte_27F078355 = v31;
    if (v24.i32[1] >= 0x10u)
    {
      v32 = 15;
    }

    else
    {
      v32 = v24.i8[4];
    }

    byte_27F078356 = v32;
    if (v24.i32[2] >= 0x10u)
    {
      v33 = 15;
    }

    else
    {
      v33 = v24.i8[8];
    }

    byte_27F078357 = v33;
    dword_27F078358 = a5;
  }

  return *(&unk_27F078348 + (v7 & 0xF)) | (16 * *(&unk_27F078348 + (v7 >> 4)));
}

double sub_24BBF8690(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285F8B040;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

void *sub_24BBF86CC(void *a1)
{
  *a1 = &unk_285F8B098;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_24BBF8738(uint64_t result, _DWORD *a2)
{
  v2 = a2[1];
  *(result + 8) = *a2;
  *(result + 12) = v2;
  *result = &unk_285F8B098;
  *(result + 16) = 0;
  v3 = a2[12];
  v4 = a2[11] / 4718592.0 * 65536.0;
  v5 = 0.5;
  if (v4 >= 0.0)
  {
    v6 = 0.5;
  }

  else
  {
    v6 = -0.5;
  }

  v7 = v4 + v6;
  if (v7 > -2147483650.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x80000000;
  }

  if (v7 >= 2147483650.0)
  {
    v8 = 0x7FFFFFFF;
  }

  *(result + 24) = v8;
  v9 = v3 / 4718592.0 * 65536.0;
  if (v9 < 0.0)
  {
    v5 = -0.5;
  }

  v10 = v9 + v5;
  if (v10 >= 2147483650.0)
  {
    v11 = 0x7FFFFFFF;
  }

  else if (v10 <= -2147483650.0)
  {
    v11 = 0x80000000;
  }

  else
  {
    v11 = v10;
  }

  *(result + 28) = v11;
  v12 = a2[2];
  *(result + 32) = v12;
  v13 = a2[3];
  *(result + 36) = v13;
  v14 = a2[5];
  *(result + 40) = v14;
  v15 = a2[6];
  *(result + 44) = v15;
  if (v2 < 1 || a2[11] < 1 || a2[12] < 1 || !(v13 | v12 | v14 | v15))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return result;
}

__n128 sub_24BBF88D0(__n128 *a1, __n128 *a2)
{
  result = a1[2];
  *a2 = result;
  a2[1].n128_u64[0] = 0;
  return result;
}

int *sub_24BBF88E0(int *result, int *a2, _DWORD *a3)
{
  v3 = a2[1];
  v4 = *a2;
  v5 = result[9];
  v6 = v4 * result[8] * 0.0000152587891;
  v7 = 0.5;
  if (v6 >= 0.0)
  {
    v8 = 0.5;
  }

  else
  {
    v8 = -0.5;
  }

  v9 = v6 + v8;
  if (v9 > -2147483650.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x80000000;
  }

  if (v9 >= 2147483650.0)
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = v3;
  v12 = result[11];
  v13 = v3 * result[10] * 0.0000152587891;
  if (v13 >= 0.0)
  {
    v14 = 0.5;
  }

  else
  {
    v14 = -0.5;
  }

  v15 = v13 + v14;
  if (v15 > -2147483650.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x80000000;
  }

  if (v15 >= 2147483650.0)
  {
    v16 = 0x7FFFFFFF;
  }

  *a3 = v16 + v10;
  v17 = v4 * v5 * 0.0000152587891;
  if (v17 >= 0.0)
  {
    v18 = 0.5;
  }

  else
  {
    v18 = -0.5;
  }

  v19 = v17 + v18;
  if (v19 > -2147483650.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0x80000000;
  }

  if (v19 < 2147483650.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0x7FFFFFFF;
  }

  v22 = v11 * v12 * 0.0000152587891;
  if (v22 < 0.0)
  {
    v7 = -0.5;
  }

  v23 = v22 + v7;
  if (v23 >= 2147483650.0)
  {
    v24 = 0x7FFFFFFF;
  }

  else if (v23 <= -2147483650.0)
  {
    v24 = 0x80000000;
  }

  else
  {
    v24 = v23;
  }

  a3[1] = v24 + v21;
  return result;
}

uint64_t sub_24BBF8A30(uint64_t a1, int *a2)
{
  v2 = *(a1 + 28);
  v3 = *(a1 + 24) * 4718592.0 * 0.0000152587891;
  v4 = 0.5;
  if (v3 >= 0.0)
  {
    v5 = 0.5;
  }

  else
  {
    v5 = -0.5;
  }

  v6 = v3 + v5;
  if (v6 > -2147483650.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x80000000;
  }

  if (v6 < 2147483650.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

  *a2 = v8;
  v9 = v2 * 4718592.0 * 0.0000152587891;
  if (v9 < 0.0)
  {
    v4 = -0.5;
  }

  v10 = v9 + v4;
  if (v10 >= 2147483650.0)
  {
    v11 = 0x7FFFFFFF;
  }

  else if (v10 <= -2147483650.0)
  {
    v11 = 0x80000000;
  }

  else
  {
    v11 = v10;
  }

  a2[1] = v11;
  return *a2;
}

void *sub_24BBF8AF4(void *a1)
{
  *a1 = &unk_285F8B098;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_24BBF8B60(void *a1)
{
  *a1 = &unk_285F8B098;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  j__free(a1);
}

uint64_t sub_24BBF8BDC(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v10 = sub_24BBF8738(a1, a4);
  *v10 = &unk_285F8B0F0;
  *(v10 + 48) = a4[4];
  v11 = a4[7];
  *(v10 + 52) = v11;
  v12 = a4[8];
  *(v10 + 56) = v12;
  v13 = a4[9];
  *(v10 + 60) = -v13;
  v14 = a4[10];
  *(v10 + 64) = v14;
  *(v10 + 72) = a2;
  v15 = *(v10 + 12) * a5;
  *(v10 + 12) = v15;
  *(v10 + 36) = -*(v10 + 36);
  v16 = *(v10 + 44);
  *(v10 + 44) = -v16;
  v17 = v15 * *(v10 + 24) * 0.0000152587891;
  v18 = 0.5;
  if (v17 < 0.0)
  {
    v18 = -0.5;
  }

  v19 = v17 + v18;
  if (v19 >= 2147483650.0)
  {
    v53 = 0x7FFFFFFF;
LABEL_65:
    *(a1 + 24) = v53;
LABEL_70:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  if (v19 <= -2147483650.0)
  {
    v53 = 0x80000000;
    goto LABEL_65;
  }

  *(a1 + 24) = v19;
  if ((v19 - 0x7FFFFFFF) <= 1)
  {
    goto LABEL_70;
  }

  v20 = v15 * *(a1 + 28) * 0.0000152587891;
  v21 = 0.5;
  if (v20 < 0.0)
  {
    v21 = -0.5;
  }

  v22 = v20 + v21;
  if (v22 >= 2147483650.0)
  {
    v54 = 0x7FFFFFFF;
LABEL_69:
    *(a1 + 28) = v54;
    goto LABEL_70;
  }

  if (v22 <= -2147483650.0)
  {
    v54 = 0x80000000;
    goto LABEL_69;
  }

  v23 = v22;
  *(a1 + 28) = v22;
  if ((v22 - 0x7FFFFFFF) <= 1)
  {
    goto LABEL_70;
  }

  v24 = v23;
  v25 = v11 * v23 * 9.31322575e-10;
  v26 = 0.5;
  if (v25 < 0.0)
  {
    v26 = -0.5;
  }

  v27 = v25 + v26;
  if (v27 >= 2147483650.0)
  {
    v28 = 0x7FFFFFFF;
  }

  else if (v27 <= -2147483650.0)
  {
    v28 = 0x80000000;
  }

  else
  {
    v28 = v27;
  }

  v29 = v28 + v14;
  if (v29 < 0x4000)
  {
    goto LABEL_61;
  }

  v30 = v29 >> 14;
  v31 = v24 * *(a1 + 40) * 0.0000152587891;
  v32 = 0.5;
  if (v31 >= 0.0)
  {
    v33 = 0.5;
  }

  else
  {
    v33 = -0.5;
  }

  v34 = v31 + v33;
  if (v34 >= 2147483650.0)
  {
    v35 = 0x7FFFFFFF;
  }

  else if (v34 <= -2147483650.0)
  {
    v35 = 0x80000000;
  }

  else
  {
    v35 = v34;
  }

  v36 = v30;
  v37 = (v35 + v12) / v30 * 65536.0;
  if (v37 >= 0.0)
  {
    v38 = 0.5;
  }

  else
  {
    v38 = -0.5;
  }

  v39 = v37 + v38;
  if (v39 > -2147483650.0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0x80000000;
  }

  if (v39 < 2147483650.0)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0x7FFFFFFF;
  }

  v42 = v16 * v24 * 0.0000152587891;
  if (v42 < 0.0)
  {
    v32 = -0.5;
  }

  v43 = v42 + v32;
  if (v43 >= 2147483650.0)
  {
    v44 = 0x7FFFFFFF;
  }

  else if (v43 <= -2147483650.0)
  {
    v44 = 0x80000000;
  }

  else
  {
    v44 = v43;
  }

  v45 = (v44 + v13) / v36 * 65536.0;
  v46 = 0.5;
  if (v45 < 0.0)
  {
    v46 = -0.5;
  }

  v47 = v45 + v46;
  if (v47 >= 2147483650.0)
  {
    v48 = 0x7FFFFFFF;
  }

  else if (v47 <= -2147483650.0)
  {
    v48 = 0x80000000;
  }

  else
  {
    v48 = v47;
  }

  if (v41 >= 0)
  {
    v49 = v41;
  }

  else
  {
    v49 = -v41;
  }

  if ((v48 & 0x80000000) != 0)
  {
    v48 = -v48;
  }

  v50 = v49 <= v48 ? v48 : v49;
  if (v49 < v48)
  {
    v48 = v49;
  }

  v51 = v50 + (v48 >> 1) - (v48 >> 4);
  if (v51 <= 0)
  {
LABEL_61:
    v51 = v23;
  }

  *(a1 + 12) = v51;
  v56 = xmmword_24BC068D0;
  v57 = 0;
  *(a1 + 16) = (*(*a2 + 80))(a2, a3, &v56, a4 + 13, a5);
  return a1;
}

void sub_24BBF8FFC(_Unwind_Exception *exception_object)
{
  *v1 = &unk_285F8B098;
  v3 = v1[2];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_24BBF9068(uint64_t a1, uint64_t a2)
{
  *&result = 0x10000;
  *a2 = xmmword_24BC068D0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_24BBF9080(_DWORD *a1, int *a2)
{
  v2 = a1[6];
  v3 = a1[3];
  if (v3)
  {
    v4 = v2 / v3 * 65536.0;
    v5 = 0.5;
    if (v4 < 0.0)
    {
      v5 = -0.5;
    }

    v6 = v4 + v5;
    if (v6 >= 2147483650.0)
    {
      v7 = 0x7FFFFFFF;
    }

    else if (v6 <= -2147483650.0)
    {
      v7 = 0x80000000;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = (v2 >> 31) ^ 0x7FFFFFFF;
  }

  v8 = v7 * 4718592.0 * 0.0000152587891;
  v9 = 0.5;
  if (v8 >= 0.0)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = -0.5;
  }

  v11 = v8 + v10;
  if (v11 > -2147483650.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x80000000;
  }

  if (v11 >= 2147483650.0)
  {
    v12 = 0x7FFFFFFF;
  }

  *a2 = v12;
  v13 = a1[7];
  if (v3)
  {
    v14 = v13 / v3 * 65536.0;
    if (v14 < 0.0)
    {
      v9 = -0.5;
    }

    v15 = v14 + v9;
    if (v15 >= 2147483650.0)
    {
      v16 = 0x7FFFFFFF;
    }

    else if (v15 <= -2147483650.0)
    {
      v16 = 0x80000000;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = (v13 >> 31) ^ 0x7FFFFFFF;
  }

  v17 = v16 * 4718592.0 * 0.0000152587891;
  v18 = 0.5;
  if (v17 < 0.0)
  {
    v18 = -0.5;
  }

  v19 = v17 + v18;
  if (v19 >= 2147483650.0)
  {
    v20 = 0x7FFFFFFF;
  }

  else if (v19 <= -2147483650.0)
  {
    v20 = 0x80000000;
  }

  else
  {
    v20 = v19;
  }

  a2[1] = v20;
  return *a2;
}

int *sub_24BBF9220(int *result, int *a2, int *a3)
{
  v3 = *a2 * result[6] * 0.0000152587891;
  v4 = 0.5;
  if (v3 >= 0.0)
  {
    v5 = 0.5;
  }

  else
  {
    v5 = -0.5;
  }

  v6 = v3 + v5;
  v7 = 2147483650.0;
  if (v6 < 2147483650.0)
  {
    v7 = -2147483650.0;
    if (v6 > -2147483650.0)
    {
      v7 = v6;
    }
  }

  v8 = a2[1] * result[7] * 0.0000152587891;
  if (v8 < 0.0)
  {
    v4 = -0.5;
  }

  v9 = v8 + v4;
  v10 = v8 + v4 < 2147483650.0;
  v11 = 2147483650.0;
  if (v10)
  {
    v11 = -2147483650.0;
    if (v9 > -2147483650.0)
    {
      v11 = v9;
    }
  }

  v12 = v7 * result[12] * 9.31322575e-10;
  v13 = 0.5;
  if (v12 >= 0.0)
  {
    v14 = 0.5;
  }

  else
  {
    v14 = -0.5;
  }

  v15 = v12 + v14;
  if (v15 > -2147483650.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x80000000;
  }

  if (v15 < 2147483650.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x7FFFFFFF;
  }

  v18 = v11 * result[13] * 9.31322575e-10;
  if (v18 >= 0.0)
  {
    v19 = 0.5;
  }

  else
  {
    v19 = -0.5;
  }

  v20 = v18 + v19;
  if (v20 > -2147483650.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0x80000000;
  }

  if (v20 < 2147483650.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0x7FFFFFFF;
  }

  v23 = v22 + v17 + (result[16] >> 14);
  v24 = v7 * result[8] * 0.0000152587891;
  if (v24 >= 0.0)
  {
    v25 = 0.5;
  }

  else
  {
    v25 = -0.5;
  }

  v26 = v24 + v25;
  if (v26 > -2147483650.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0x80000000;
  }

  if (v26 < 2147483650.0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0x7FFFFFFF;
  }

  v29 = v11 * result[10] * 0.0000152587891;
  if (v29 >= 0.0)
  {
    v30 = 0.5;
  }

  else
  {
    v30 = -0.5;
  }

  v31 = v29 + v30;
  if (v31 > -2147483650.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0x80000000;
  }

  if (v31 < 2147483650.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0x7FFFFFFF;
  }

  v34 = v33 + v28 + result[14];
  if (v23)
  {
    v35 = v34 / v23 * 65536.0;
    if (v35 < 0.0)
    {
      v13 = -0.5;
    }

    v36 = v35 + v13;
    if (v36 >= 2147483650.0)
    {
      v37 = 0x7FFFFFFF;
    }

    else if (v36 <= -2147483650.0)
    {
      v37 = 0x80000000;
    }

    else
    {
      v37 = v36;
    }
  }

  else
  {
    v37 = (v34 >> 31) ^ 0x7FFFFFFF;
  }

  v38 = result[9];
  *a3 = v37;
  v39 = v7 * v38 * 0.0000152587891;
  v40 = 0.5;
  if (v39 >= 0.0)
  {
    v41 = 0.5;
  }

  else
  {
    v41 = -0.5;
  }

  v42 = v39 + v41;
  if (v42 >= 2147483650.0)
  {
    v43 = 0x7FFFFFFF;
  }

  else if (v42 > -2147483650.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0x80000000;
  }

  v44 = v11 * result[11] * 0.0000152587891;
  if (v44 < 0.0)
  {
    v40 = -0.5;
  }

  v45 = v44 + v40;
  if (v45 >= 2147483650.0)
  {
    v46 = 0x7FFFFFFF;
  }

  else if (v45 <= -2147483650.0)
  {
    v46 = 0x80000000;
  }

  else
  {
    v46 = v45;
  }

  v47 = v46 + v43 + result[15];
  if (v23)
  {
    v48 = v47 / v23 * 65536.0;
    v49 = 0.5;
    if (v48 < 0.0)
    {
      v49 = -0.5;
    }

    v50 = v48 + v49;
    if (v50 >= 2147483650.0)
    {
      v51 = 0x7FFFFFFF;
    }

    else if (v50 <= -2147483650.0)
    {
      v51 = 0x80000000;
    }

    else
    {
      v51 = v50;
    }
  }

  else
  {
    v51 = (v47 >> 31) ^ 0x7FFFFFFF;
  }

  a3[1] = v51;
  return result;
}

uint64_t sub_24BBF9594(void **a1, int *a2, uint64_t a3)
{
  v6 = (*(*a1[9] + 88))(a1[9]);
  v25 = 0;
  v7 = *a2;
  if (!v6)
  {
    v17 = v7 * 1073741.0 * 9.31322575e-10;
    if (v17 >= 0.0)
    {
      v18 = 0.5;
    }

    else
    {
      v18 = -0.5;
    }

    v19 = v17 + v18;
    if (v19 > -2147483650.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0x80000000;
    }

    if (v19 < 2147483650.0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0x7FFFFFFF;
    }

    LODWORD(v25) = v21;
    v22 = a2[1] * 1073741.0 * 9.31322575e-10;
    if (v22 >= 0.0)
    {
      v23 = 0.5;
    }

    else
    {
      v23 = -0.5;
    }

    v15 = v22 + v23;
    if (v15 < 2147483650.0)
    {
      goto LABEL_14;
    }

LABEL_29:
    v16 = 0x7FFFFFFF;
    goto LABEL_31;
  }

  v8 = v7 * *(v6 + 4) * 9.31322575e-10;
  v9 = 0.5;
  if (v8 >= 0.0)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = -0.5;
  }

  v11 = v8 + v10;
  if (v11 > -2147483650.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x80000000;
  }

  if (v11 < 2147483650.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x7FFFFFFF;
  }

  LODWORD(v25) = v13;
  v14 = a2[1] * *(v6 + 16) * 9.31322575e-10;
  if (v14 < 0.0)
  {
    v9 = -0.5;
  }

  v15 = v14 + v9;
  if (v15 >= 2147483650.0)
  {
    goto LABEL_29;
  }

LABEL_14:
  if (v15 <= -2147483650.0)
  {
    v16 = 0x80000000;
  }

  else
  {
    v16 = v15;
  }

LABEL_31:
  HIDWORD(v25) = v16;
  return ((*a1)[2])(a1, &v25, a3);
}

void sub_24BBF9784(MCacheData *a1)
{
  sub_24BBF37CC(a1);

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBF97BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_24BBE22D4(a1, a2);
  *v3 = &unk_285F8B190;
  *(v3 + 4) = 0;
  v4 = sub_24BBE244C(v3);
  v5 = (*(*a1 + 176))(a1);
  if ((*(*v4 + 64))(v4, v5) + 1 <= 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  *(a1 + 32) = *(*(*(a1 + 48) + 128) + 56);
  return a1;
}

void sub_24BBF98C0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_24BBF37CC(v1);
  _Unwind_Resume(a1);
}

void *sub_24BBF98F4(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v10 = 0u;
  v11 = 0u;
  *__src = 0u;
  v9 = 0u;
  (*(**(a1 + 48) + 488))(__src);
  v4 = v9;
  *a3 = v9;
  if (v4)
  {
    v5 = sub_24BBD0E00(v4, qword_28151C040, 0);
    memmove(v5, __src[1], *a3);
    v7 = 0;
    sub_24BBF33B8(&v7);
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x24C251FE0](__src);
  return v5;
}

void *sub_24BBF99C8(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v3 = *(a1 + 48);
  v4 = *(*(v3 + 192) + 4 * a2);
  if ((v4 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  v6 = (*(v3 + 48) + v4);
  result = memcpy(a3 + 2, v6 + 1, *v6);
  a3[1] = 47;
  *a3 = *v6 + 1;
  return result;
}

uint64_t sub_24BBF9A6C(uint64_t a1, const void *a2, int a3)
{
  v6 = *(a1 + 48);
  v7 = v6[24];
  v8 = (*(*v6 + 168))(v6);
  if (v8)
  {
    v9 = 0;
    if (v8 >= 0xFFFF)
    {
      v10 = 0xFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    while (1)
    {
      v11 = *(v7 + 4 * v9);
      if ((v11 & 0x80000000) == 0)
      {
        v12 = (*(*(a1 + 48) + 48) + v11);
        v13 = *v12;
        if (v13 == a3 && !memcmp(v12 + 1, a2, v13))
        {
          break;
        }
      }

      if (v10 == ++v9)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOWORD(v9) = 0;
  }

  return v9;
}

uint64_t sub_24BBF9B54(uint64_t a1, uint64_t a2)
{
  v3 = sub_24BBE22D4(a1, a2);
  *v3 = &unk_285F8B2E0;
  *(v3 + 4) = 0;
  v4 = (*(*v3[6] + 56))(v3[6]);
  if ((*(*v4 + 24))(v4) + 1 <= 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  *(a1 + 32) = *(*(*(a1 + 48) + 128) + 56);
  return a1;
}

void sub_24BBF9C48(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_24BBF37CC(v1);
  _Unwind_Resume(a1);
}

void sub_24BBF9C74(MCacheData *a1)
{
  sub_24BBF37CC(a1);

  JUMPOUT(0x24C252120);
}

void sub_24BBF9CB0(MCacheData *a1)
{
  sub_24BBF37CC(a1);

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBF9CE8(uint64_t result, int a2, char *__s, _WORD *a4)
{
  v6 = result;
  if (a2)
  {
    v7 = result;
    v8 = 0;
    v9 = off_27F078340;
    while (1)
    {
      result = strlen(__s);
      v10 = result;
      v11 = 0;
      if (result)
      {
        v12 = 0;
        while (1)
        {
          result = strlen(v9[v12]);
          if (result == v10)
          {
            result = strcmp(v9[v12], __s);
            if (!result)
            {
              break;
            }
          }

          if (++v12 == 391)
          {
            goto LABEL_16;
          }
        }

        v11 = v12;
      }

      if (v11 >= 0x187)
      {
        break;
      }

      v13 = *(v7 + 48);
      if (*(v13 + 306) + 391 <= v11)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(*(v13 + 296) + 2 * v11);
      }

      *a4++ = v14;
      __s += (v10 + 1);
      if (++v8 == a2)
      {
        v8 = a2;
        break;
      }
    }

LABEL_16:
    v6 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a2 == v8)
  {
    return result;
  }

  v44 = a2 - v8;
  v15 = v6[6];
  v16 = *(v15 + 305);
  v17 = *(v15 + 306) * v16;
  v52 = 0;
  v51 = 0u;
  memset(v50, 0, sizeof(v50));
  v18 = (*(*v6 + 280))(v6);
  v19 = (*(*v6 + 176))(v6);
  sub_24BBE2A94(v50, v18, v19, *(v6[6] + 308), v17 + v16);
  v49 = 0;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v20 = (*(*v6 + 280))(v6);
  v21 = (*(*v6 + 176))(v6);
  v22 = *(v6[6] + 312);
  v23 = sub_24BBE2D50((*(&v51 + 1) + v17), v16);
  sub_24BBE2A94(v47, v20, v21, v22, v23);
  v45 = 0;
  v43 = v6;
  do
  {
    v24 = strlen(__s);
    if (!v24)
    {
      goto LABEL_43;
    }

    v25 = *(&v51 + 1);
    v26 = *(&v48 + 1);
    v27 = v6[6];
    v28 = *(v27 + 305);
    v29 = sub_24BBE2D50(*(&v51 + 1), *(v27 + 305));
    if (v28)
    {
      v30 = v29;
      v31 = 0;
      v32 = (v25 + v28);
      while (1)
      {
        v33 = sub_24BBE2D50(v32, v28);
        if (v33 - v30 == v24 && !memcmp((v26 + v30), __s, v24))
        {
          break;
        }

        ++v31;
        v32 += v28;
        v30 = v33;
        if (v28 <= v31)
        {
          goto LABEL_26;
        }
      }

      v6 = v43;
      v41 = v43[6];
      if (*(v41 + 306) + 391 <= (v31 + 391))
      {
        v42 = 0;
      }

      else
      {
        v42 = *(*(v41 + 296) + 2 * (v31 + 391));
      }

      *a4++ = v42;
      __s += v24 + 1;
      v40 = v44 - 1;
      goto LABEL_45;
    }

LABEL_26:
    if (!v45)
    {
      v45 = 0;
      v6 = v43;
LABEL_43:
      v40 = v44;
LABEL_44:
      *a4++ = 0;
      __s += v24 + 1;
      --v40;
LABEL_45:
      ++v45;
      goto LABEL_46;
    }

    v34 = 0;
    v35 = off_27F078340;
    v6 = v43;
    while (1)
    {
      v36 = strlen(__s);
      LOWORD(v37) = 0;
      if (v36)
      {
        v37 = 0;
        while (strlen(v35[v37]) != v36 || strcmp(v35[v37], __s))
        {
          if (++v37 == 391)
          {
            goto LABEL_40;
          }
        }
      }

      if (v37 >= 0x187u)
      {
        break;
      }

      v38 = v43[6];
      if (*(v38 + 306) + 391 <= v37)
      {
        v39 = 0;
      }

      else
      {
        v39 = *(*(v38 + 296) + 2 * v37);
      }

      *a4++ = v39;
      __s += (v36 + 1);
      if (++v34 == v44)
      {
        goto LABEL_52;
      }
    }

LABEL_40:
    v45 = 0;
    v40 = v44 - v34;
    if (!v34)
    {
      goto LABEL_44;
    }

LABEL_46:
    v44 = v40;
  }

  while (v40);
LABEL_52:
  sub_24BBE28C0(v47);
  return sub_24BBE28C0(v50);
}

void sub_24BBFA168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_24BBE28C0(va);
  _Unwind_Resume(a1);
}

void *sub_24BBFA190(void *a1, unsigned int a2, _BYTE *a3)
{
  v5 = 254;
  result = sub_24BBFA1E0(a1, a2, a3 + 2, &v5);
  a3[1] = 47;
  *a3 = v5 + 1;
  return result;
}

void *sub_24BBFA1E0(void *a1, unsigned int a2, _BYTE *a3, _DWORD *a4)
{
  *a3 = 0;
  v6 = a1[6];
  v7 = *(*(v6 + 288) + 2 * a2);
  if (v7 >= 0x187)
  {
    v10 = v7 - 391;
    if (*(v6 + 306) <= v10)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(exception, 8);
      __cxa_throw(exception, &unk_285F89D90, nullsub_8);
    }

    v12 = v10;
    v13 = *(v6 + 305);
    v24 = 0;
    v22 = 0u;
    *__src = 0u;
    v21 = 0u;
    v14 = (*(*a1 + 280))(a1);
    v15 = (*(*a1 + 176))(a1);
    sub_24BBE2A94(&v21, v14, v15, *(a1[6] + 308) + v13 * v12, 2 * v13);
    v16 = sub_24BBE2D50(__src[1], v13);
    v17 = sub_24BBE2D50(__src[1] + v13, v13) - v16;
    result = sub_24BBE28C0(&v21);
    if (*a4 > v17)
    {
      *a4 = v17;
      v24 = 0;
      v22 = 0u;
      *__src = 0u;
      v21 = 0u;
      v18 = (*(*a1 + 280))(a1);
      v19 = (*(*a1 + 176))(a1);
      sub_24BBE2A94(&v21, v18, v19, (*(a1[6] + 312) + v16), v17);
      memcpy(a3, __src[1], v17);
      return sub_24BBE28C0(&v21);
    }
  }

  else
  {
    v8 = off_27F078340[v7];
    result = strlen(v8);
    if (*a4 > result)
    {
      *a4 = result;

      return memcpy(a3, v8, result);
    }
  }

  return result;
}

uint64_t sub_24BBFA478(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  v11 = a3;
  if (!a4 || ((v7 = (*(**(a1 + 48) + 168))(*(a1 + 48)), v7 >= 0xFFFF) ? (v8 = 0xFFFF) : (v8 = v7), v8 <= a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  sub_24BBFA1E0(a1, a2, a4, &v11);
  result = v11;
  a4[v11] = 0;
  return result;
}

uint64_t sub_24BBFA558(void *a1, const char *a2, unsigned int a3)
{
  LOWORD(v6) = 0;
  if (a3)
  {
    v6 = 0;
    v7 = off_27F078340;
    while (strlen(v7[v6]) != a3 || strcmp(v7[v6], a2))
    {
      if (++v6 == 391)
      {
        LOWORD(v6) = 391;
        goto LABEL_8;
      }
    }
  }

  if (v6 >= 0x187u)
  {
LABEL_8:
    __s2 = a2;
    v8 = a1[6];
    v9 = *(v8 + 305);
    v10 = *(v8 + 306) * v9;
    v34 = 0;
    v33 = 0u;
    memset(v32, 0, sizeof(v32));
    v11 = (*(*a1 + 280))(a1);
    v12 = (*(*a1 + 176))(a1);
    sub_24BBE2A94(v32, v11, v12, *(a1[6] + 308), v10 + v9);
    v31 = 0;
    v30 = 0u;
    memset(v29, 0, sizeof(v29));
    v13 = (*(*a1 + 280))(a1);
    v14 = (*(*a1 + 176))(a1);
    v15 = *(a1[6] + 312);
    v16 = sub_24BBE2D50((*(&v33 + 1) + v10), v9);
    sub_24BBE2A94(v29, v13, v14, v15, v16);
    v17 = *(&v33 + 1);
    v18 = *(&v30 + 1);
    v19 = a1[6];
    v20 = *(v19 + 305);
    v21 = sub_24BBE2D50(*(&v33 + 1), *(v19 + 305));
    v22 = v6 - 391;
    if (v20 <= (v6 - 391))
    {
      goto LABEL_16;
    }

    v23 = v21;
    v24 = (v17 + v20);
    while (1)
    {
      v25 = sub_24BBE2D50(v24, v20);
      if (v25 - v23 == a3 && !memcmp((v18 + v23), __s2, a3))
      {
        break;
      }

      ++v22;
      v24 += v20;
      v23 = v25;
      if (v20 <= v22)
      {
        goto LABEL_16;
      }
    }

    v26 = a1[6];
    if (*(v26 + 306) + 391 <= (v22 + 391))
    {
LABEL_16:
      LOWORD(v6) = 0;
    }

    else
    {
      LOWORD(v6) = *(*(v26 + 296) + 2 * (v22 + 391));
    }

    sub_24BBE28C0(v29);
    sub_24BBE28C0(v32);
  }

  return v6;
}

void sub_24BBFA814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_24BBE28C0(va);
  sub_24BBE28C0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BBFA848(uint64_t a1, uint64_t a2, _WORD *a3, void *a4)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 146);
  *a3 = v5;
  v8 = v4 + 112;
  v7 = *(v4 + 112);
  v6 = *(v8 + 8);
  *a2 = v7;
  if (v7)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    result = 0;
    *a4 = 0;
  }

  else
  {
    *a4 = v7 + v6;
    return *a2;
  }

  return result;
}

uint64_t sub_24BBFA88C(uint64_t a1, _WORD *a2, void *a3, void *a4, void *a5, void *a6)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  return 0;
}

uint64_t sub_24BBFA8A8(void *a1, uint64_t a2, uint64_t *a3, __int16 *a4, int *a5)
{
  sub_24BBE11F4(a1, a2, *a3, *a4, a5);
  v10 = a5[2];
  v11 = *a5;
  v12 = *(a1[6] + 150);
  v39[0] = 0;
  v39[1] = 0;
  sub_24BBD6C20(v39, a1);
  if (v12 > 1)
  {
    v13 = ((*(*a2 + 16))(a2) + 648);
    v14 = sub_24BBF8218(v39, v12, v13);
  }

  else
  {
    v13 = 0;
    v14 = sub_24BBF8218(v39, v12, 0);
  }

  v15 = v14;
  sub_24BBD70C8(v39);
  v16 = (*(*a1 + 88))(a1);
  v17 = v16;
  if (v12 > 1)
  {
    if (!v13)
    {
      v13 = ((*(*a2 + 16))(a2) + 648);
    }

    if (v12 < 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      v19 = v17 + 108;
      do
      {
        v20 = *v13++;
        v18 += *(v19 + 2) * v20;
        v21 = v12--;
        v19 += 360;
      }

      while (v21 > 1);
    }
  }

  else
  {
    v18 = *(v16 + 108);
  }

  v22 = sub_24BBD0E00(0x48u, qword_28151C040, 0);
  if (*a3)
  {
    j__free(*a3);
  }

  v23 = ((v18 >> 15) & 0xFFFFFFFE) + 2 * (v11 >> 16);
  v24 = v23 <= v10 >> 16;
  if (v23 <= v10 >> 16)
  {
    v25 = HIWORD(v11);
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v26 = HIWORD(v18);
  }

  else
  {
    v26 = ((v10 >> 16) - (v10 >> 20)) >> 1;
  }

  *a3 = v22;
  *a4 = 72;
  v39[0] = v22;
  v40 = v25;
  v27 = HIWORD(v10) - 2 * v25;
  sub_24BBFB624(v39, &v40);
  v40 = HIWORD(v10);
  sub_24BBFB624(v39, &v40);
  v28 = v39[0];
  *v39[0] = 13;
  v39[0] = v28 + 1;
  v40 = 0;
  sub_24BBFB624(v39, &v40);
  v29 = v39[0];
  *v39[0] = 22;
  v39[0] = v29 + 1;
  v40 = v27;
  sub_24BBFB624(v39, &v40);
  v30 = v39[0];
  *v39[0] = 6;
  v39[0] = v30 + 1;
  v40 = v15;
  sub_24BBFB624(v39, &v40);
  v31 = v39[0];
  *v39[0] = 7;
  v39[0] = v31 + 1;
  v40 = -v27;
  sub_24BBFB624(v39, &v40);
  v32 = v39[0];
  *v39[0] = 2310;
  v39[0] = v32 + 2;
  v40 = v26;
  sub_24BBFB624(v39, &v40);
  v40 = v26 - v15;
  sub_24BBFB624(v39, &v40);
  v33 = v39[0];
  *v39[0] = 21;
  v39[0] = v33 + 1;
  v34 = v15 - 2 * v26;
  v40 = v34;
  sub_24BBFB624(v39, &v40);
  v35 = v39[0];
  *v39[0] = 7;
  v39[0] = v35 + 1;
  v40 = v27 - 2 * v26;
  sub_24BBFB624(v39, &v40);
  v36 = v39[0];
  *v39[0] = 6;
  v39[0] = v36 + 1;
  v40 = -v34;
  sub_24BBFB624(v39, &v40);
  v37 = v39[0];
  *v39[0] = 2311;
  v37[2] = 14;
  return (v37 - v22 + 3);
}

void sub_24BBFAC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    v11 = -*((*(*v10 + 88))(v10) + 132) >> 16;
    __cxa_end_catch();
    JUMPOUT(0x24BBFA980);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BBFAC90(void *a1, uint64_t a2, _WORD *a3, __int16 *a4)
{
  v8 = (*(*a1 + 192))(a1, *a3, a4);
  v9 = v8;
  v14 = v8;
  if (v8 && *v8 == 14)
  {
    j__free(v8);
    *a3 = 0;
    v9 = (*(*a1 + 192))(a1, 0, a4);
    v14 = v9;
  }

  if (!*a3)
  {
    v13 = v9;
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_24BBFA8A8(a1, a2, &v14, a4, v11);
    v13 = 0;
    v9 = v14;
    sub_24BBF33B8(&v13);
  }

  return v9;
}

void sub_24BBFADA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_24BBF33B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BBFADB4(void *a1, unsigned int a2, int a3, int *a4, int a5, uint64_t a6, int a7, int *a8, int *a9, int *a10, int *a11)
{
  v11 = a8;
  v15 = a11;
  v16 = a5;
  v17 = a5 * a7 * 0.0000152587891;
  v18 = 0.5;
  if (v17 < 0.0)
  {
    v18 = -0.5;
  }

  v19 = v17 + v18;
  if (v19 >= 2147483650.0)
  {
    v20 = 0x7FFFFFFF;
  }

  else if (v19 <= -2147483650.0)
  {
    v20 = 0x80000000;
  }

  else
  {
    v20 = v19;
  }

  v67 = v20;
  v21 = v20 >> 1;
  *a8 = v21;
  *a11 = v21;
  *a10 = v21;
  *a9 = v21;
  v76 = 0;
  v75 = 0u;
  memset(v74, 0, sizeof(v74));
  v22 = (*(*a1 + 280))(a1);
  sub_24BBE24E0(v74, v22, 1447447896, 0x10000, 4, 2);
  v23 = **(&v75 + 1);
  v24 = *(a1[6] + 150);
  v25 = v24;
  v26 = 16 * v24;
  if (v23 <= a2)
  {
    v66 = v11;
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    v40 = (*(*a1 + 280))(a1);
    v41 = 4 * v24;
    v42 = (2 * v24);
    sub_24BBE2A94(&v70, v40, 1447447896, v26 + 4 * v24 * (v23 - 1), v42);
    v43 = *(&v72 + 1);
    if (v24 > 1)
    {
      v28 = 0;
      v44 = v25;
      v45 = a4;
      do
      {
        v46 = *v43++;
        v47 = bswap32(v46);
        v48 = *v45++;
        v28 += v48 * (v47 >> 16);
        --v44;
      }

      while (v44);
    }

    else
    {
      v28 = bswap32(**(&v72 + 1)) & 0xFFFF0000;
    }

    sub_24BBE28C0(&v70);
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    v49 = (*(*a1 + 280))(a1);
    sub_24BBE2A94(&v70, v49, 1447447896, v26 + v41 * v23 + v42 * (a2 - v23), v42);
    v50 = *(&v72 + 1);
    if (v25 > 1)
    {
      v35 = 0;
      v11 = v66;
      v15 = a11;
      do
      {
        v51 = *v50++;
        v52 = bswap32(v51);
        v53 = *a4++;
        v35 += v53 * (v52 >> 16);
        --v25;
      }

      while (v25);
    }

    else
    {
      v35 = bswap32(**(&v72 + 1)) & 0xFFFF0000;
      v11 = v66;
      v15 = a11;
    }
  }

  else
  {
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    v27 = (*(*a1 + 280))(a1);
    sub_24BBE2A94(&v70, v27, 1447447896, v26 + 4 * v24 * a2, (4 * v24));
    if (v24 < 2)
    {
      v28 = bswap32(**(&v72 + 1)) & 0xFFFF0000;
      v35 = bswap32(*(*(&v72 + 1) + 2)) & 0xFFFF0000;
    }

    else
    {
      v28 = 0;
      v29 = v25;
      v30 = *(&v72 + 1);
      v31 = a4;
      do
      {
        v32 = *v30++;
        v33 = bswap32(v32);
        v34 = *v31++;
        v28 += v34 * (v33 >> 16);
        --v29;
      }

      while (v29);
      v35 = 0;
      v36 = (*(&v72 + 1) + 2 * (v25 - 1) + 2);
      do
      {
        v37 = *v36++;
        v38 = bswap32(v37);
        v39 = *a4++;
        v35 += v39 * (v38 >> 16);
        --v25;
      }

      while (v25);
    }
  }

  sub_24BBE28C0(&v70);
  result = sub_24BBE28C0(v74);
  if (v35 > 2097151999)
  {
    if (a3)
    {
      v11[1] = 0;
      a9[1] = 0;
      v65 = -v67;
      a10[1] = -v67;
    }

    else
    {
      a9[1] = *(a6 + 4);
      a10[1] = *(a6 + 12);
      v11[1] = a9[1] + 3264;
      v65 = a10[1] - 3264;
    }
  }

  else
  {
    v55 = v16 * v28 * 0.0000152587891;
    v56 = 0.5;
    if (v55 >= 0.0)
    {
      v57 = 0.5;
    }

    else
    {
      v57 = -0.5;
    }

    v58 = v55 + v57;
    if (v58 > -2147483650.0)
    {
      v59 = v58;
    }

    else
    {
      v59 = 0x80000000;
    }

    if (v58 < 2147483650.0)
    {
      v60 = v59;
    }

    else
    {
      v60 = 0x7FFFFFFF;
    }

    v61 = v16 * v35 * 0.0000152587891;
    if (v61 < 0.0)
    {
      v56 = -0.5;
    }

    v62 = v61 + v56;
    if (v62 >= 2147483650.0)
    {
      v63 = 0x7FFFFFFF;
    }

    else if (v62 <= -2147483650.0)
    {
      v63 = 0x80000000;
    }

    else
    {
      v63 = v62;
    }

    a9[1] = *(a6 + 4);
    a10[1] = *(a6 + 12);
    v64 = a9[1] - v63;
    v11[1] = v64;
    v65 = v64 + v60;
  }

  v15[1] = v65;
  return result;
}

void *sub_24BBFB2D4(void *a1, uint64_t a2)
{
  *sub_24BBD6E88(a1) = &unk_285F8B5C8;
  v4 = (*(*a2 + 280))(a2);
  a1[1] = v4;
  sub_24BBF2BA4(a1 + 2, v4, 1212566872);
  return a1;
}

uint64_t sub_24BBFB378(void *a1)
{
  *a1 = &unk_285F8B5C8;
  sub_24BBE28C0((a1 + 2));

  return nullsub_1(a1);
}

void sub_24BBFB3CC(void *a1)
{
  *a1 = &unk_285F8B5C8;
  sub_24BBE28C0((a1 + 2));
  v2 = nullsub_1(a1);

  sub_24BBD7160(v2);
}

void *sub_24BBFB430(void *a1, uint64_t a2)
{
  *sub_24BBE06EC(a1) = &unk_285F8B5F0;
  v4 = (*(*a2 + 280))(a2);
  a1[1] = v4;
  sub_24BBF2BA4(a1 + 2, v4, 1447447896);
  return a1;
}

uint64_t sub_24BBFB4D4(void *a1)
{
  *a1 = &unk_285F8B5F0;
  sub_24BBE28C0((a1 + 2));

  return nullsub_1(a1);
}

void sub_24BBFB528(void *a1)
{
  *a1 = &unk_285F8B5F0;
  sub_24BBE28C0((a1 + 2));
  v2 = nullsub_1(a1);

  sub_24BBD7160(v2);
}

void *sub_24BBFB58C(uint64_t a1)
{
  v2 = sub_24BBD6D84(0x48u);
  sub_24BBFB2D4(v2, a1);
  return v2;
}

void *sub_24BBFB5D8(uint64_t a1)
{
  v2 = sub_24BBD6D84(0x48u);
  sub_24BBFB430(v2, a1);
  return v2;
}

_BYTE **sub_24BBFB624(_BYTE **result, __int16 *a2)
{
  v2 = *result;
  v3 = *a2;
  if ((*a2 + 107) > 0xD6u)
  {
    v5 = v3 - 108;
    if ((v3 - 108) > 0x3FFu)
    {
      if ((v3 + 1131) > 0x3FFu)
      {
        *v2 = -1;
        v2[1] = *a2 >> 15;
        v2[2] = *a2 >> 15;
        v2[3] = *(a2 + 1);
        v2[4] = *a2;
        v4 = v2 + 5;
        goto LABEL_9;
      }

      *a2 = v3 + 108;
      *v2 = ((-108 - v3) >> 8) - 5;
      v6 = -*a2;
    }

    else
    {
      *a2 = v5;
      *v2 = HIBYTE(v5) - 9;
      LOBYTE(v6) = *a2;
    }

    v2[1] = v6;
    v4 = v2 + 2;
  }

  else
  {
    *v2 = v3 - 117;
    v4 = v2 + 1;
  }

LABEL_9:
  *result = v4;
  return result;
}

unint64_t sub_24BBFB6EC(unint64_t a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (!a1)
  {
    return a2 | (v2 << 32);
  }

  v3 = HIDWORD(a1);
  if (!a2)
  {
    LODWORD(a2) = a1;
    v2 = HIDWORD(a1);
    return a2 | (v2 << 32);
  }

  v4 = HIDWORD(a1) - HIDWORD(a2);
  if (HIDWORD(a1) - HIDWORD(a2) < 0)
  {
    LOBYTE(v4) = BYTE4(a2) - BYTE4(a1);
    v5 = a1;
    LODWORD(a1) = a2;
    v3 = HIDWORD(a2);
  }

  else
  {
    v5 = a2;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  v6 = v4 - 1;
  v7 = ((-v5 >> v6) & 1) + (-v5 >> v6 >> 1);
  v8 = ((v5 >> v6) & 1) + (v5 >> v6 >> 1);
  if (v5 < 0)
  {
    LODWORD(a2) = -v7;
  }

  else
  {
    LODWORD(a2) = v8;
  }

LABEL_11:
  v9 = a2 ^ a1;
  if ((a1 & 0x80000000) == 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = -a1;
  }

  if ((a1 & 0x80000000) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = -a2;
  }

  v12 = __OFADD__(v11, v10);
  v13 = v11 + v10;
  v14 = (v13 & 1) + (v13 >> 1);
  if (v13 < 0 == v12)
  {
    v14 = v13;
  }

  v15 = v3 + (v13 >> 31);
  if ((a1 & 0x80000000) != 0)
  {
    v14 = -v14;
  }

  v16 = v9 >= 0;
  if (v9 >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = a2 + a1;
  }

  if (v16)
  {
    LODWORD(v3) = v15;
  }

  if (v17)
  {
    if (v17 >= 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = -v17;
    }

    v19 = v18 >> 30;
    v20 = __clz(v18);
    v21 = v18 << (30 - (v20 ^ 0x1F));
    v22 = v3 - v20;
    if (!(v18 >> 30))
    {
      v18 = v21;
    }

    if (v19)
    {
      v3 = v3;
    }

    else
    {
      v3 = (v22 + 1);
    }

    if (v17 >= 0)
    {
      v23 = v18;
    }

    else
    {
      v23 = -v18;
    }

    a2 = v23 | (v3 << 32);
  }

  else
  {
    a2 = 0;
  }

  v2 = HIDWORD(a2);
  return a2 | (v2 << 32);
}

uint64_t sub_24BBFB7E8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v2 = -((a1 & 1) + (-a1 >> 1));
  }

  else
  {
    v2 = (a1 & 1) + (a1 >> 1);
  }

  v3 = a2 * v2 * 9.31322575e-10;
  v4 = 0.5;
  if (v3 < 0.0)
  {
    v4 = -0.5;
  }

  v5 = v3 + v4;
  if (v5 >= 2147483650.0)
  {
    v6 = 0x7FFFFFFF;
  }

  else if (v5 <= -2147483650.0)
  {
    v6 = 0x80000000;
  }

  else
  {
    v6 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  v8 = HIDWORD(a2) + HIDWORD(a1);
  if (v6 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = -v6;
  }

  v10 = v9 >> 30;
  v11 = __clz(v9);
  v12 = v9 << (30 - (v11 ^ 0x1F));
  v13 = v8 - v11 + 2;
  if (!(v9 >> 30))
  {
    v9 = v12;
  }

  if (v10)
  {
    v14 = (v8 + 1);
  }

  else
  {
    v14 = v13;
  }

  if (v6 >= 0)
  {
    v15 = v9;
  }

  else
  {
    v15 = -v9;
  }

  return v15 | (v14 << 32);
}

uint64_t sub_24BBFB8B8(void *a1, uint64_t a2)
{
  v2 = 8;
  if (a1 && a2)
  {
    v6 = 0;
    v7 = 0;
    sub_24BBCFF00(a1, &v6);
    v4 = v6;
    if (v6)
    {
      (*(*v6 + 40))(v6, a2);
    }

    if (v7)
    {
      sub_24BBECA0C(v7);
    }

    if (v4)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return v2;
}

void sub_24BBFB948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24BBECA0C(a10);
  }

  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    sub_24BBE2308(v12);
    __cxa_end_catch();
    JUMPOUT(0x24BBFB934);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BBFB99C(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  result = 8;
  if (a1 && a2 && a3)
  {
    v7 = 0;
    v8 = 0;
    sub_24BBCFBC8(a1, &v7);
    if (v7)
    {
      sub_24BBEC724(v7, a2, a3);
    }

    if (v8)
    {
      sub_24BBECA0C(v8);
    }

    return 0;
  }

  return result;
}

void sub_24BBFBA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24BBECA0C(a10);
  }

  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    sub_24BBE2308(v12);
    __cxa_end_catch();
    JUMPOUT(0x24BBFBA00);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BBFBA68(uint64_t a1, unsigned int *a2, int *a3, int *a4)
{
  result = 8;
  if (a2 && a3 && a4)
  {
    v7 = 0;
    v8 = 0;
    sub_24BBCFBC8(a2, &v7);
    if (v7)
    {
      sub_24BBEC75C(v7, a3, a4);
    }

    if (v8)
    {
      sub_24BBECA0C(v8);
    }

    return 0;
  }

  return result;
}

void sub_24BBFBAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24BBECA0C(a10);
  }

  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    sub_24BBE2308(v12);
    __cxa_end_catch();
    JUMPOUT(0x24BBFBAC8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BBFBB30(uint64_t a1, unsigned int *a2, _DWORD *a3, int *a4)
{
  result = 8;
  if (a2 && a3 && a4)
  {
    v7 = 0;
    v8 = 0;
    sub_24BBCFBC8(a2, &v7);
    if (v7)
    {
      sub_24BBEC970(v7, a3, a4);
    }

    if (v8)
    {
      sub_24BBECA0C(v8);
    }

    return 0;
  }

  return result;
}

void sub_24BBFBBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24BBECA0C(a10);
  }

  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    sub_24BBE2308(v12);
    __cxa_end_catch();
    JUMPOUT(0x24BBFBB90);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BBFBBF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 8;
  }

  v9 = 0;
  v10 = 0;
  sub_24BBCFF00(a1, &v9);
  if (v9)
  {
    (*(*v9 + 48))(v9, a2, a3, a4);
  }

  if (v10)
  {
    sub_24BBECA0C(v10);
  }

  return 0;
}

void sub_24BBFBC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24BBECA0C(a10);
  }

  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    sub_24BBE2308(v12);
    __cxa_end_catch();
    JUMPOUT(0x24BBFBC7CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BBFBCE8(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v5 = 8;
  if (a1 && a3 && a4 && a5)
  {
    v14 = 0;
    v12 = 0;
    v13 = 0;
    sub_24BBCFF00(a1, &v12);
    v10 = v12;
    if (v12)
    {
      (*(*v12 + 24))(v12, a2, a3, *a4, a5, &v14);
    }

    if (v13)
    {
      sub_24BBECA0C(v13);
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return v5;
}

void sub_24BBFBDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, int a13)
{
  if (a11)
  {
    sub_24BBECA0C(a11);
  }

  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(exception_object);
    *v13 = a13;
    sub_24BBE2308(v16);
    __cxa_end_catch();
    JUMPOUT(0x24BBFBD94);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BBFBE0C(void *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  result = 8;
  if (a1 && a2 && a3 && a4)
  {
    v8 = *a3;
    v10 = 0;
    v11 = 0;
    sub_24BBCFF00(a1, &v10);
    v9 = v10;
    if (v10)
    {
      (*(*v10 + 32))(v10, v8 >> 1, a2, a4);
    }

    if (v11)
    {
      sub_24BBECA0C(v11);
    }

    if (v9)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

void sub_24BBFBEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24BBECA0C(a10);
  }

  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    sub_24BBE2308(v12);
    __cxa_end_catch();
    JUMPOUT(0x24BBFBEACLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BBFBF18(int *a1, int *a2, int *a3, int *a4, void *a5)
{
  v5 = *a5;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  LODWORD(v9) = *(v5 + 24);
  *(&v9 + 1) = a5[2];
  v7 = a5;
  return sub_24BBED660(a1, a2, a3, a4, &v7);
}

uint64_t sub_24BBFBF60(int a1, int a2, int a3)
{
  v4 = 932;
  if (!a3)
  {
    v4 = 928;
  }

  v5 = *(qword_28151C028 + v4);
  v6 = 940;
  if (!a3)
  {
    v6 = 936;
  }

  v7 = *(qword_28151C028 + v6);
  v8 = &qword_27F078548;
  while (1)
  {
    do
    {
      v8 = *v8;
    }

    while (*(v8 + 3) != a1);
    if (*(v8 + 4) == a2)
    {
      v9 = *(v8 + 36);
      if ((v9 & 1) == a3)
      {
        break;
      }
    }
  }

  *(v8 + 36) = v9 | 0x10;
  v8[7] = 0;
  v8[8] = 0;
  sub_24BBFC29C(v8);
  v10 = qword_27F078548;
  if (qword_27F078548)
  {
    v11 = v5;
    v12 = v7;
    while (1)
    {
      if (v8 == v10)
      {
        goto LABEL_61;
      }

      v13 = *(v10 + 72);
      if ((v13 & 1) != a3)
      {
        goto LABEL_61;
      }

      v14 = *(v8 + 36);
      if ((v14 & 0x60) == 0)
      {
        goto LABEL_16;
      }

      if ((v13 & 0x60) != 0)
      {
        goto LABEL_61;
      }

      if ((v14 & 0x20) == 0)
      {
LABEL_16:
        v15 = *(v8 + 3);
        v16 = *(v10 + 12);
        if ((v13 & 0x20) == 0 && v15 > v16 && v5 <= *(v10 + 36))
        {
          v5 = *(v10 + 36);
        }

        if ((v13 & 0x20) != 0 || v15 >= v16)
        {
          if ((v13 & 0x40) != 0 || v15 >= *(v10 + 16))
          {
            goto LABEL_28;
          }

          v17 = *(v10 + 40);
        }

        else
        {
          v17 = *(v10 + 36);
        }

        if (v12 >= v17)
        {
          v12 = v17;
        }
      }

LABEL_28:
      if ((v14 & 0x40) != 0)
      {
        goto LABEL_41;
      }

      v18 = *(v8 + 4);
      v19 = *(v10 + 16);
      if ((v13 & 0x40) == 0 && v18 > v19)
      {
        v20 = *(v10 + 40);
        goto LABEL_35;
      }

      if ((v13 & 0x20) == 0 && v18 > *(v10 + 12))
      {
        v20 = *(v10 + 36);
LABEL_35:
        if (v11 <= v20)
        {
          v11 = v20;
        }
      }

      if ((v13 & 0x40) == 0 && v18 < v19 && v7 >= *(v10 + 40))
      {
        v7 = *(v10 + 40);
      }

LABEL_41:
      if (*(v8 + 3) == *(v10 + 12))
      {
        v21 = *(v10 + 36);
        if (v21 >= v5 && v21 <= v12)
        {
          v12 = *(v10 + 36);
          v5 = v12;
        }
      }

      if (*(v8 + 4) == *(v10 + 16))
      {
        v24 = *(v10 + 40);
        if (v24 >= v11 && v24 <= v7)
        {
          v11 = *(v10 + 40);
          v7 = v11;
        }
      }

      if (v5 >= v12 && v11 >= v7)
      {
        goto LABEL_64;
      }

LABEL_61:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_64;
      }
    }
  }

  v12 = v7;
  v11 = v5;
LABEL_64:
  v27 = *(v8 + 9);
  if (v5 <= v27)
  {
    if (v12 >= v27)
    {
      v28 = *(v8 + 10);
    }

    else
    {
      v28 = v12 - v27 + *(v8 + 10);
      *(v8 + 9) = v12;
      *(v8 + 10) = v28;
      v27 = v12;
    }
  }

  else
  {
    v28 = v5 - v27 + *(v8 + 10);
    *(v8 + 9) = v5;
    *(v8 + 10) = v28;
    v27 = v5;
  }

  if (v11 > v28)
  {
    v27 += v11 - v28;
    if (v27 >= v12)
    {
      v27 = v12;
    }

    goto LABEL_77;
  }

  if (v7 < v28)
  {
    if (v7 - v28 + v27 <= v5)
    {
      v27 = v5;
    }

    else
    {
      v27 += v7 - v28;
    }

    v11 = v7;
LABEL_77:
    *(v8 + 9) = v27;
    *(v8 + 10) = v11;
    v28 = v11;
  }

  v29 = *(v8 + 36);
  if ((v29 & 0x60) == 0 && v28 - v27 < 0x10000)
  {
    v30 = 0x10000 - (v28 - v27);
    v28 += v30 >> 1;
    v27 -= v30 >> 1;
    *(v8 + 9) = v27;
    *(v8 + 10) = v28;
  }

  *(v8 + 36) = v29 | 2;
  if (a3)
  {
    LODWORD(v33) = 0;
    HIDWORD(v33) = v28 - v27;
    if (!off_28151BD68)
    {
      sub_24BBEDB70(257, 0);
    }

    result = off_28151BD68(v33, &v33);
    v32 = SHIDWORD(v33) >> 1;
  }

  else
  {
    v33 = (v28 - v27);
    if (!off_28151BD68)
    {
      sub_24BBEDB70(257, 0);
    }

    result = off_28151BD68(v33, &v33);
    v32 = v33 >> 1;
  }

  *(v8 + 12) = v32;
  return result;
}

uint64_t sub_24BBFC29C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 72);
  if ((v2 & 0x40) != 0)
  {
    v5 = *(result + 20);
LABEL_8:
    v6 = (v5 + 0x8000) & 0xFFFF0000;
    *(result + 36) = v6;
    *(result + 40) = v6;
    *(result + 48) = 0;
    return result;
  }

  if ((v2 & 0x20) != 0)
  {
    v5 = *(result + 24);
    goto LABEL_8;
  }

  v3 = (*(result + 24) >> 1) + (*(result + 20) >> 1);
  v4 = sub_24BBFF8CC(dword_28151C020, dword_28151C024, *(result + 8), v3) - v3;

  return sub_24BC00044(v1, v4);
}

uint64_t sub_24BBFC330(int a1, int a2, int a3)
{
  v4 = &qword_27F078548;
  while (1)
  {
    do
    {
      v4 = *v4;
    }

    while (*(v4 + 3) != a1);
    if (*(v4 + 4) == a2)
    {
      v5 = *(v4 + 36);
      if ((v5 & 1) == a3)
      {
        break;
      }
    }
  }

  *(v4 + 36) = v5 | 0x10;
  v4[7] = 0;
  v4[8] = 0;
  sub_24BBFC29C(v4);
  sub_24BBFC844(v4);
  v6 = qword_27F078548;
  if (qword_27F078548)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v4 == v6 || (*(v6 + 72) & 1) != a3)
      {
        goto LABEL_100;
      }

      v9 = *(v4 + 5);
      v10 = *(v6 + 20);
      if (v9 == v10 || v9 > v10 && *(v4 + 6) <= *(v6 + 24) || v9 < v10 && *(v4 + 6) >= *(v6 + 24))
      {
        v12 = *(v4 + 9);
        v11 = *(v4 + 10);
        v14 = *(v6 + 36);
        v13 = *(v6 + 40);
        v15 = v14 - v12;
        if (v14 - v12 + v11 - v13)
        {
          v16 = v15 / (v14 - v12 + v11 - v13) * 1073741820.0;
          if (v16 >= 0.0)
          {
            v17 = 0.5;
          }

          else
          {
            v17 = -0.5;
          }

          v18 = v16 + v17;
          if (v18 >= 2147483650.0)
          {
            v19 = 0x7FFFFFFF;
          }

          else if (v18 <= -2147483650.0)
          {
            v19 = 0x80000000;
          }

          else
          {
            v19 = v18;
          }
        }

        else
        {
          v19 = (v15 >> 31) ^ 0x7FFFFFFF;
        }

        v20 = v11 - v12;
        v21 = (v20 - v13 + v14) * v19 * 9.31322575e-10;
        if (v21 >= 0.0)
        {
          v22 = 0.5;
        }

        else
        {
          v22 = -0.5;
        }

        v23 = v21 + v22;
        v24 = v23 > -2147483650.0 && v23 < 2147483650.0;
        v25 = (v23 + 0x8000) & 0xFFFF0000;
        if (!v24)
        {
          v25 = 0x80000000;
        }

        if (v8)
        {
          if (!v7)
          {
            goto LABEL_38;
          }
        }

        else
        {
          *(v4 + 9) = v14 - v25;
          if (!v7)
          {
LABEL_38:
            *(v4 + 10) = v14 + v20 - v25;
            if (v8)
            {
              goto LABEL_53;
            }

            goto LABEL_39;
          }
        }
      }

      if (v8)
      {
        goto LABEL_53;
      }

LABEL_39:
      v26 = *(v4 + 3);
      v27 = *(v6 + 12);
      if (v26 >= v27 && (v28 = *(v4 + 9), v29 = *(v6 + 36), v28 < v29) || v26 <= v27 && (v28 = *(v4 + 9), v29 = *(v6 + 36), v28 > v29))
      {
        if (!v7)
        {
          *(v4 + 10) += v29 - v28;
        }

        *(v4 + 9) = v29;
      }

      v30 = *(v6 + 16);
      if (v26 >= v30 && (v31 = *(v4 + 9), v32 = *(v6 + 40), v31 < v32) || v26 <= v30 && (v31 = *(v4 + 9), v32 = *(v6 + 40), v31 > v32))
      {
        if (!v7)
        {
          *(v4 + 10) += v32 - v31;
          v32 = *(v6 + 40);
        }

        *(v4 + 9) = v32;
      }

LABEL_53:
      if (!v7)
      {
        v33 = *(v4 + 4);
        v34 = *(v6 + 12);
        if (v33 >= v34 && (v35 = *(v4 + 10), v36 = *(v6 + 36), v35 < v36) || v33 <= v34 && (v35 = *(v4 + 10), v36 = *(v6 + 36), v35 > v36))
        {
          if (!v8)
          {
            *(v4 + 9) += v36 - v35;
            v36 = *(v6 + 36);
          }

          *(v4 + 10) = v36;
        }

        v37 = *(v6 + 16);
        if (v33 >= v37 && (v38 = *(v4 + 10), v39 = *(v6 + 40), v38 < v39) || v33 <= v37 && (v38 = *(v4 + 10), v39 = *(v6 + 40), v38 > v39))
        {
          if (!v8)
          {
            *(v4 + 9) += v39 - v38;
          }

          *(v4 + 10) = v39;
        }
      }

      if (!v8)
      {
        v40 = *(v4 + 3);
        v41 = *(v6 + 12);
        if (v40 >= v41 && (v42 = *(v6 + 36), *(v4 + 9) < v42) || v40 <= v41 && (v42 = *(v6 + 36), *(v4 + 9) > v42))
        {
          *(v4 + 9) = v42;
        }

        v43 = *(v6 + 16);
        if (v40 >= v43 && (v44 = *(v6 + 40), *(v4 + 9) < v44) || v40 <= v43 && (v44 = *(v6 + 40), *(v4 + 9) > v44))
        {
          *(v4 + 9) = v44;
        }
      }

      if (v7)
      {
        v45 = *(v6 + 12);
        if (v8)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v46 = *(v4 + 4);
        v45 = *(v6 + 12);
        if (v46 >= v45 && (v47 = *(v6 + 36), *(v4 + 10) < v47) || v46 <= v45 && (v47 = *(v6 + 36), *(v4 + 10) > v47))
        {
          *(v4 + 10) = v47;
        }

        v48 = *(v6 + 16);
        if (v46 >= v48 && (v49 = *(v6 + 40), *(v4 + 10) < v49) || v46 <= v48 && (v49 = *(v6 + 40), *(v4 + 10) > v49))
        {
          *(v4 + 10) = v49;
        }

        if (v46 == v48)
        {
          *(v4 + 10) = *(v6 + 40);
          v7 = 1;
          if (v8)
          {
            goto LABEL_98;
          }
        }

        else
        {
          v7 = 0;
          if (v8)
          {
            goto LABEL_98;
          }
        }
      }

      if (*(v4 + 3) == v45)
      {
        *(v4 + 9) = *(v6 + 36);
        v8 = 1;
      }

LABEL_98:
      if (v7 == 1 && v8 == 1)
      {
        break;
      }

LABEL_100:
      v6 = *v6;
    }

    while (v6);
  }

  *(v4 + 36) |= 2u;
  if (a3)
  {
    v52 = 0;
    HIDWORD(v52) = *(v4 + 10) - *(v4 + 9);
    if (!off_28151BD68)
    {
      sub_24BBEDB70(257, 0);
    }

    result = off_28151BD68(v52, &v52);
    v51 = SHIDWORD(v52) >> 1;
  }

  else
  {
    v52 = (*(v4 + 10) - *(v4 + 9));
    if (!off_28151BD68)
    {
      sub_24BBEDB70(257, 0);
    }

    result = off_28151BD68(v52, &v52);
    v51 = v52 >> 1;
  }

  *(v4 + 12) = v51;
  return result;
}

uint64_t sub_24BBFC844(uint64_t result)
{
  v1 = qword_27F078548;
  if (!qword_27F078548)
  {
    return result;
  }

  v2 = 0;
  v3 = 0x80000000;
  v4 = 0x7FFFFFFFLL;
  v5 = 0x7FFFFFFF;
  v6 = 0x80000000;
  do
  {
    while (v1 != result)
    {
      v7 = *(result + 72);
      v8 = *(v1 + 72);
      if ((v8 ^ v7))
      {
        break;
      }

      v9 = *(result + 20);
      v10 = *(v1 + 20);
      if ((v8 & 2) == 0)
      {
        v11 = *(result + 24);
        goto LABEL_22;
      }

      if (v10 <= v9)
      {
        v13 = *(v1 + 36);
        v12 = v13 > v6;
        if (v13 > v6)
        {
          v6 = *(v1 + 36);
        }
      }

      else
      {
        v12 = 0;
      }

      v14 = *(v1 + 24);
      v11 = *(result + 24);
      if (v14 <= v11 && *(v1 + 40) > v3)
      {
        v3 = *(v1 + 40);
        v12 = 1;
      }

      if (v10 >= v9 && *(v1 + 36) < v5)
      {
        v5 = *(v1 + 36);
        v12 = 1;
      }

      if (v14 < v11 || (v15 = *(v1 + 40), v15 >= v4))
      {
        v15 = v4;
        if (!v12)
        {
          break;
        }
      }

      if ((v7 & 2) == 0)
      {
        v2 = 1;
        v4 = v15;
LABEL_22:
        if (v9 >= v10 && (v16 = v1, v17 = result, v11 <= *(v1 + 24)) || v10 >= v9 && (v16 = result, v17 = v1, *(v1 + 24) <= v11))
        {
          v26 = *(v17 + 36);
          v27 = *(v16 + 36);
          if (v26 >= v27)
          {
            v29 = *(v17 + 40);
            v30 = *(v16 + 40);
            if (v29 > v30)
            {
              if ((*(v16 + 72) & 2) != 0)
              {
                *(v17 + 36) = v26 - v29 + v30;
                *(v17 + 40) = v30;
              }

              else
              {
                *(v16 + 36) = v29 + v27 - v30;
                *(v16 + 40) = v29;
              }
            }
          }

          else if ((*(v16 + 72) & 2) != 0)
          {
            v31 = v27 - v26 + *(v17 + 40);
            *(v17 + 36) = v27;
            *(v17 + 40) = v31;
          }

          else
          {
            v28 = v26 - v27 + *(v16 + 40);
            *(v16 + 36) = v26;
            *(v16 + 40) = v28;
          }
        }

        else
        {
          if (v11 <= v10)
          {
            v18 = *(result + 40);
            v19 = *(v1 + 36);
            v20 = __OFSUB__(v19, v18);
            v21 = v19 - v18;
            if (v21 < 0 != v20)
            {
              *(result + 36) += v21;
              *(result + 40) = v19;
            }
          }

          if (v9 <= *(v1 + 24))
          {
            v22 = *(result + 36);
            v23 = *(v1 + 40);
            v20 = __OFSUB__(v23, v22);
            v24 = v23 - v22;
            if (v24 < 0 != v20)
            {
              v25 = v24 + *(result + 40);
              *(result + 36) = v23;
              *(result + 40) = v25;
            }
          }
        }

        break;
      }

      v1 = *v1;
      v2 = 1;
      v4 = v15;
      if (!v1)
      {
        goto LABEL_46;
      }
    }

    v1 = *v1;
  }

  while (v1);
  LODWORD(v15) = v4;
  if (!v2)
  {
    return result;
  }

LABEL_46:
  v32 = *(result + 36);
  if (v6 <= v32)
  {
    v33 = v5 < v32;
  }

  else
  {
    v32 = v6;
    v33 = 1;
  }

  if (v33)
  {
    if (v5 >= v32)
    {
      v5 = v32;
    }

    *(result + 36) = v5;
  }

  if (v3 > *(result + 40) || (v3 = *(result + 40), v15 < v3))
  {
    if (v15 < v3)
    {
      v3 = v15;
    }

    *(result + 40) = v3;
  }

  return result;
}

uint64_t sub_24BBFCA78(uint64_t result, uint64_t a2, uint64_t a3)
{
  qword_27F0784A8 = a2;
  qword_27F0784B0 = result;
  qword_27F0784B8 = *a2;
  qword_27F0784C0 = qword_27F0784B8 + 80 * (*(a2 + 8) / 0x50u);
  qword_27F0784C8 = *result;
  qword_27F0784D0 = qword_27F0784C8 + 48 * (*(result + 8) / 0x30u);
  qword_27F078550 = 0;
  dword_27F078484 = 0;
  dword_27F078480 = 0;
  qword_27F078490 = a3;
  dword_27F078498 = 0;
  qword_27F078488 = 0;
  qword_27F0784A0 = 0;
  return result;
}

uint64_t sub_24BBFCB24(uint64_t a1, int a2, int a3)
{
  v3 = a3 * a2;
  v4 = 1;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v4 = (*(a1 + v3) << 16) | (*(a1 + v3 + 1) << 8) | *(a1 + v3 + 2);
    }

    else if (a3 == 4)
    {
      v4 = bswap32(*(a1 + v3));
    }
  }

  else if (a3 == 1)
  {
    v4 = *(a1 + v3);
  }

  else if (a3 == 2)
  {
    v4 = __rev16(*(a1 + v3));
  }

  return (v4 - 1);
}

uint64_t sub_24BBFCB98(int *a1, _DWORD *a2)
{
  if (!qword_28151C1D0)
  {
    sub_24BBFE1E0(dword_28151BD18, dword_28151BD24);
    qword_28151C1D0 = sub_24BBFCB98;
  }

  *a2 = sub_24BBFD400(qword_28151C1C0, *a1);
  result = sub_24BBFD400(qword_28151C1C8, a1[1]);
  a2[1] = result;
  return result;
}

int *sub_24BBFCC1C(int *result, void *a2)
{
  v3 = result;
  if (dword_28151C1F8)
  {
    if (!qword_28151C1D0)
    {
      sub_24BBFE1E0(0x10000, 0x10000);
      qword_28151C1D0 = sub_24BBFCC1C;
    }

    v4 = sub_24BBFD400(qword_28151C1C0, *v3);
    v5 = sub_24BBFD400(qword_28151C1C8, v3[1]);
    v6 = off_28151BD50;
    if (!off_28151BD50)
    {

      sub_24BBEDB70(257, 0);
    }

    v7 = v4 | (v5 << 32);

    return (v6)(v7, a2);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

int *sub_24BBFCD0C(int *result, int a2, _DWORD *a3, uint64_t a4)
{
  v4 = result[1];
  if (v4 >= 0)
  {
    v5 = result[1];
  }

  else
  {
    v5 = -v4;
  }

  if (v5 < 0x40000)
  {
    return result;
  }

  v8 = result;
  v9 = *result + a2;
  *result = v9;
  dword_28151C020 = v9;
  dword_28151C024 = v4;
  sub_24BBFE738(result, 1);
  v11 = *v8;
  v10 = v8[1];
  if (v10 <= 0)
  {
    v12 = *v8 + v10;
  }

  else
  {
    v12 = *v8;
  }

  if (v10 <= 0)
  {
    v13 = *v8;
  }

  else
  {
    v13 = *v8 + v10;
  }

  if (dword_28151C1F8 <= 1)
  {
    if (!dword_28151C1F8)
    {
      v14 = dword_28151C024;

      return sub_24BBFF324(v12, v13, 1, v14);
    }

    goto LABEL_21;
  }

  if (dword_28151C1F8 == 3)
  {
    result = sub_24BBFF54C(v12, v13, 1, a4);
    if (!result)
    {
      return result;
    }

    result = sub_24BBFF324(v12, v13, 1, dword_28151C024);
    if (!result)
    {
      return result;
    }

    sub_24BBFBF60(v12, v13, 1);
LABEL_21:
    result = sub_24BBFF54C(v12, v13, 1, a4);
    if (result)
    {

      sub_24BBEDB70(257, 0);
    }

    return result;
  }

  v15 = dword_28151C024;

  return sub_24BBFE888(v12, v13, v15, 0, a3);
}

int *sub_24BBFCE9C(int *result, int a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = result[1];
  if (v3 >= 0)
  {
    v4 = result[1];
  }

  else
  {
    v4 = -v3;
  }

  if (v4 < 0x40000)
  {
    goto LABEL_5;
  }

  v7 = result;
  v8 = *result + a2;
  *result = v8;
  dword_28151C020 = v8;
  dword_28151C024 = v3;
  sub_24BBFE738(result, 0);
  v9 = *v7;
  v10 = v7[1];
  v11 = v10 + *v7;
  if (v10 >= 0)
  {
    v12 = v10 + *v7;
  }

  else
  {
    v12 = *v7;
  }

  if (v10 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (dword_28151C1F8 > 1)
  {
    if (dword_28151C1F8 == 3)
    {
      result = sub_24BBFF54C(v13, v12, 0, a3);
      if (result)
      {
        result = sub_24BBFF324(v13, v12, 0, dword_28151C024);
        if (result)
        {
          sub_24BBFBF60(v13, v12, 0);
LABEL_21:
          result = sub_24BBFF54C(v13, v12, 0, a3);
          if (result)
          {
            v16 = *MEMORY[0x277D85DE8];

            sub_24BBEDB70(257, 0);
          }
        }
      }

LABEL_5:
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (dword_28151C024 == -1310720)
    {
      v20 = v12;
      if (!off_28151BD50)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD50(v20);
      LODWORD(v20) = (v20 + 0x8000) & 0xFFFF0000;
      if (!off_28151BD58)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD58(v20, &v20);
      v19 = v20 + sub_24BBFF778(0);
      LODWORD(v20) = v19;
      v22 = 0;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v23 = v12;
      v24 = v19;
      DWORD2(v26) = v12;
    }

    else
    {
      if (dword_28151C024 != -1376256)
      {
        v21 = 0;
        v17 = sub_24BC00180(v13, v12, &v21, &v20);
        v22 = 0;
        v25 = 0u;
        *&v26 = 0;
        v27 = 0u;
        v23 = v13;
        v24 = v21 - v17;
        DWORD2(v26) = v12;
        HIDWORD(v26) = v21 + v17;
        LODWORD(v25) = 512;
        v18 = 256;
LABEL_41:
        LODWORD(v27) = v18;
        result = sub_24BBFFD3C(qword_28151C1C0, &v22);
        goto LABEL_5;
      }

      v20 = v13;
      if (!off_28151BD50)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD50(v20);
      LODWORD(v20) = (v20 + 0x8000) & 0xFFFF0000;
      if (!off_28151BD58)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD58(v20, &v20);
      v19 = v20 - sub_24BBFF778(0);
      LODWORD(v20) = v19;
      v22 = 0;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v23 = v13;
      v24 = v19;
      DWORD2(v26) = v13;
    }

    HIDWORD(v26) = v19;
    LODWORD(v25) = 528;
    v18 = 272;
    goto LABEL_41;
  }

  if (dword_28151C1F8)
  {
    goto LABEL_21;
  }

  v14 = dword_28151C024;
  v15 = *MEMORY[0x277D85DE8];

  return sub_24BBFF324(v13, v12, 0, v14);
}

uint64_t sub_24BBFD20C(int *a1, int a2, uint64_t a3)
{
  if (dword_28151C1F8 > 1)
  {
    if (dword_28151C1F8 != 3)
    {
      v5 = sub_24BC00560;
      v6 = sub_24BBFF850;
      return sub_24BC002DC(a1, a2, v5, v6, a3);
    }

    goto LABEL_5;
  }

  if (dword_28151C1F8)
  {
LABEL_5:
    v4 = sub_24BC006FC;
    goto LABEL_6;
  }

  v4 = sub_24BC006C0;
LABEL_6:
  v5 = v4;
  v6 = 0;
  return sub_24BC002DC(a1, a2, v5, v6, a3);
}

uint64_t sub_24BBFD278(int *a1, int a2, uint64_t a3)
{
  if (dword_28151C1F8 > 1)
  {
    if (dword_28151C1F8 != 3)
    {
      v5 = sub_24BC00180;
      v6 = sub_24BC00104;
      return sub_24BC002DC(a1, a2, v5, v6, a3);
    }

    goto LABEL_5;
  }

  if (dword_28151C1F8)
  {
LABEL_5:
    v4 = sub_24BC007D8;
    goto LABEL_6;
  }

  v4 = sub_24BC0079C;
LABEL_6:
  v5 = v4;
  v6 = 0;
  return sub_24BC002DC(a1, a2, v5, v6, a3);
}

unint64_t sub_24BBFD2E4(unint64_t result, unint64_t a2)
{
  v2 = HIDWORD(result);
  v3 = a2 - result;
  v4 = HIDWORD(a2) - HIDWORD(result);
  if (a2 - result >= 0)
  {
    v5 = a2 - result;
  }

  else
  {
    v5 = result - a2;
  }

  if (v4 >= 0)
  {
    v6 = HIDWORD(a2) - HIDWORD(result);
  }

  else
  {
    v6 = HIDWORD(result) - HIDWORD(a2);
  }

  if (v5 > 0x20000 || v6 <= 983039)
  {
    if (v5 <= 983039 || v6 >= 131073)
    {
      return result;
    }

    v8 = v4 >> 1;
    if (HIDWORD(a2) == v2)
    {
      v8 = 0;
    }

    v9 = v8 + HIDWORD(result);
    v10 = 16;
    v11 = v3 >= 0;
    if (v3 >= 0)
    {
      v12 = result;
    }

    else
    {
      v12 = a2;
    }

    if (v11)
    {
      LODWORD(v2) = a2;
    }

    else
    {
      LODWORD(v2) = result;
    }

    if (v11)
    {
      v10 = 12;
    }

    v13 = 1;
  }

  else
  {
    v9 = result + (v3 >> 1);
    if (v4 >= 0)
    {
      v12 = HIDWORD(result);
    }

    else
    {
      v12 = HIDWORD(a2);
    }

    if (v4 < 0)
    {
      v10 = 12;
    }

    else
    {
      LODWORD(v2) = HIDWORD(a2);
      v10 = 16;
    }

    v13 = 0;
  }

  v14 = qword_27F078548;
  if (qword_27F078548)
  {
    v15 = 0;
    v16 = 655360000;
    do
    {
      v17 = *(v14 + 72);
      if ((v17 & 4) != 0)
      {
        result = v17 & 1;
        if ((v17 & 0x60) == 0 && v13 == result)
        {
          v19 = v9 - *(v14 + v10);
          if (v19 < 0)
          {
            v19 = *(v14 + v10) - v9;
          }

          if (v19 < v16)
          {
            v15 = v14;
            v16 = v19;
          }
        }
      }

      v14 = *v14;
    }

    while (v14);
    if (v16 < 196609)
    {
      if (v12 < *(v15 + 28))
      {
        *(v15 + 28) = v12;
      }

      if (v2 > *(v15 + 32))
      {
        *(v15 + 32) = v2;
      }
    }
  }

  return result;
}

uint64_t sub_24BBFD400(int *a1, int a2)
{
  v3 = *(a1 + 1);
  if ((a2 + 399507455) >= 0x2F9FFFFF)
  {
    sub_24BBEDB70(-1, 0);
  }

  if (v3[10] <= a2)
  {
    result = 0x7FFFFFFFLL;
    if (a2 == 0x7FFFFFFF)
    {
      return result;
    }

    do
    {
      v4 = v3 + 8;
      v7 = v3[18];
      v3 += 8;
    }

    while (v7 <= a2);
    goto LABEL_9;
  }

  if (v3[2] > a2)
  {
    do
    {
      v4 = v3 - 8;
      v5 = *(v3 - 6);
      v3 -= 8;
    }

    while (v5 > a2);
LABEL_9:
    *(a1 + 1) = v4;
    v3 = v4;
  }

  if (v3 >= &a1[8 * *a1 + 6])
  {
    sub_24BBEDB70(-1, 0);
  }

  v8 = *v3;
  if ((a2 & 0xF0007FFF) != 0)
  {
    v9 = a2 * v8 * 0.0000152587891;
    v10 = 0.5;
    if (v9 < 0.0)
    {
      v10 = -0.5;
    }

    v11 = v9 + v10;
    if (v11 >= 2147483650.0)
    {
      v12 = 0x7FFFFFFF;
    }

    else if (v11 <= -2147483650.0)
    {
      v12 = 0x80000000;
    }

    else
    {
      v12 = v11;
    }

    return (v3[1] + v12);
  }

  else
  {
    if (v8 >= 175637)
    {
      sub_24BBEDB70(-1, 0);
    }

    return (v3[1] + ((v8 * (a2 >> 15)) >> 1));
  }
}

double sub_24BBFD570(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v7 = *(a1 + 8) + a4;
  LODWORD(v9) = *(a1 + 4) + a3 - *a1;
  HIDWORD(v9) = v7;
  *(a2 + 12) = *(a1 + 14);
  *(a2 + 8) = *(a1 + 18);
  if (!off_28151BD60)
  {
    sub_24BBEDB70(257, 0);
  }

  off_28151BD60(*&v9, &v9);
  sub_24BBD53EC(*&v9, &v9, a5);
  result = v9;
  *a2 = v9;
  return result;
}

uint64_t sub_24BBFD608(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = **a3;
  v13 = *(*a3 + 16);
  if (*(a1 + 718))
  {
    sub_24BBDDADC(a1, 1);
  }

  if (*a2 == a2[1] || a2[2] == a2[3])
  {
    v14 = sub_24BBE8688(a2, a3[2], a5, a6);
    if (*(a1 + 718))
    {
      sub_24BBDDADC(a1, 0);
    }

    return v14;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  *&v26 = *v13;
  DWORD2(v27) = *(v13 + 8);
  v31 = *(a5 + 48);
  v15 = *(a5 + 32);
  v29 = *(a5 + 16);
  v30 = v15;
  v28 = *a5;
  *&v29 = sub_24BBE3F68;
  v22[1] = a5;
  v22[2] = v13;
  v22[0] = a6;
  v16 = sub_24BBE8688(&v25, a3[2], &v28, v22);
  if (v16 == -5)
  {
    v14 = 4294967292;
  }

  else
  {
    v14 = v16;
  }

  if (*(a1 + 718))
  {
    sub_24BBDDADC(a1, 0);
  }

  if (!v14)
  {
    v17 = (2 * *(a2 + 2));
    if (v17 <= *(v12 + 8))
    {
      v20 = *(a2 + 1);
      v23 = *a2;
      v24 = v20;
      v18 = *v12;
      *&v24 = *v12;
      if (!v17)
      {
        return sub_24BBE70F8(&v25, &v23, a4, SHIWORD(a4), a2, a5, a6);
      }
    }

    else
    {
      if (*v12)
      {
        (*(**(a5 + 40) + 16))(*(a5 + 40));
      }

      v18 = (***(a5 + 40))(*(a5 + 40), v17);
      *v12 = v18;
      if (!v18)
      {
        *(v12 + 8) = 0;
        return 4294967292;
      }

      *(v12 + 8) = v17;
      v19 = *(a2 + 1);
      v23 = *a2;
      *(&v24 + 1) = *(&v19 + 1);
      *&v24 = v18;
    }

    memmove(v18, *(a2 + 2), v17);
    return sub_24BBE70F8(&v25, &v23, a4, SHIWORD(a4), a2, a5, a6);
  }

  return v14;
}

void sub_24BBFD810()
{
  v0 = qword_27F078548;
  if (qword_28151C1F0)
  {
    v1 = qword_27F078548 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    while (1)
    {
      v2 = *(v0 + 72);
      if ((v2 & 1) == 0 || !HIDWORD(qword_28151C1F0))
      {
        goto LABEL_9;
      }

      if (!sub_24BBFDC88(*(v0 + 16) - *(v0 + 12), (v0 + 8), qword_28151C1E8, SHIDWORD(qword_28151C1F0), *(qword_28151C028 + 764)))
      {
        break;
      }

LABEL_12:
      *(v0 + 72) |= 8u;
LABEL_13:
      v0 = *v0;
      if (!v0)
      {
        return;
      }
    }

    v2 = *(v0 + 72);
LABEL_9:
    if ((v2 & 1) != 0 || !qword_28151C1F0 || !sub_24BBFDC88(*(v0 + 16) - *(v0 + 12), (v0 + 8), qword_28151C1E0, qword_28151C1F0, *(qword_28151C028 + 760)))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }
}

uint64_t sub_24BBFD8E4(_DWORD *a1, uint64_t *a2, int a3)
{
  v5 = qword_27F078548;
  if (qword_27F078548)
  {
    do
    {
      if (*(v5 + 72))
      {
        sub_24BBFE888(*(v5 + 12), *(v5 + 16), 0, v5, a1);
      }

      else
      {
        sub_24BBFC29C(v5);
      }

      v5 = *v5;
    }

    while (v5);
    v7 = qword_27F078548;
    if (qword_27F078548)
    {
      do
      {
        sub_24BBFC844(v7);
        v7 = *v7;
      }

      while (v7);
      v8 = qword_27F078548;
      if (qword_27F078548)
      {
        v9 = qword_27F078548;
        do
        {
          v10 = *(v9 + 40) - *(v9 + 36);
          if (v10 < 0)
          {
            v10 = *(v9 + 36) - *(v9 + 40);
          }

          *(v9 + 8) = v10;
          v9 = *v9;
        }

        while (v9);
        if (v8)
        {
          while (1)
          {
            v11 = *v8;
            if (!*v8)
            {
              goto LABEL_24;
            }

            v12 = *(v8 + 72);
            v13 = *(v8 + 12);
            v14 = *(v8 + 16);
            do
            {
              if ((*(v11 + 72) ^ v12))
              {
                goto LABEL_22;
              }

              if (*(v11 + 12) <= v14)
              {
                if (v13 <= *(v11 + 16))
                {
                  goto LABEL_22;
                }

                v15 = v8;
                v16 = v11;
              }

              else
              {
                v15 = v11;
                v16 = v8;
              }

              sub_24BC00878(v15, v16);
LABEL_22:
              v11 = *v11;
            }

            while (v11);
            v8 = *v8;
            if (!v8)
            {
LABEL_24:
              v17 = qword_27F078548;
              goto LABEL_26;
            }
          }
        }
      }
    }
  }

  v17 = 0;
LABEL_26:
  result = sub_24BBEEEB0(v17, qword_27F078550, a2, a3, dword_27F078480, dword_27F078484);
  if (!result)
  {
    byte_27F078474 = 1;
  }

  return result;
}

uint64_t sub_24BBFDA4C(int a1, int a2, int a3)
{
  for (result = qword_27F078548; result; result = *result)
  {
    v5 = *(result + 12) - a1;
    if (v5 < 0)
    {
      v5 = a1 - *(result + 12);
    }

    if (!(v5 >> 17))
    {
      v6 = *(result + 16) - a2;
      if (v6 < 0)
      {
        v6 = a2 - *(result + 16);
      }

      if (!(v6 >> 17) && (*(result + 72) & 1) == a3)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_24BBFDAA0(void *a1, void *a2)
{
  v2 = qword_27F0784B8;
  if (qword_27F0784B8 < qword_27F0784C0)
  {
LABEL_17:
    ++dword_27F078484;
    qword_27F0784B8 = v2 + 80;
    return v2;
  }

  v5 = qword_27F0784A8;
  v6 = *qword_27F0784A8;
  v7 = (*(**(qword_28151C038 + 40) + 40))(*(qword_28151C038 + 40), *qword_27F0784A8, (*(qword_27F0784A8 + 8) + 80));
  *v5 = v7;
  if (v7)
  {
    v8 = *(v5 + 8) + 80;
    *(v5 + 8) = v8;
    if (v7 == v6)
    {
      v2 = qword_27F0784B8;
    }

    else
    {
      if (*a1)
      {
        *a1 = v7 + *a1 - v6;
      }

      if (*a2)
      {
        *a2 = v7 + *a2 - v6;
      }

      v2 = v7 + qword_27F0784B8 - v6;
      qword_27F0784B8 = v2;
      if (qword_27F078548)
      {
        v9 = (v7 + qword_27F078548 - v6);
        qword_27F078548 = v9;
        v10 = *v9;
        if (*v9)
        {
          do
          {
            v11 = (v7 + v10 - v6);
            *v9 = v11;
            v10 = *v11;
            v9 = v11;
          }

          while (*v11);
        }

        v12 = qword_27F078550;
        if (qword_27F078550)
        {
          do
          {
            v13 = v7 + v12[3] - v6;
            v12[2] = v7 + v12[2] - v6;
            v12[3] = v13;
            v12 = *v12;
          }

          while (v12);
        }
      }
    }

    qword_27F0784C0 = v7 + 80 * (v8 / 0x50);
    goto LABEL_17;
  }

  v2 = 0;
  *(v5 + 8) = 0;
  return v2;
}

uint64_t sub_24BBFDC20(int a1, _DWORD *a2)
{
  LODWORD(v4) = 0;
  HIDWORD(v4) = a1;
  if (!off_28151BD60)
  {
    sub_24BBEDB70(257, 0);
  }

  result = off_28151BD60(v4, &v4);
  *a2 = HIDWORD(v4);
  return result;
}

BOOL sub_24BBFDC88(int a1, int *a2, int *a3, int a4, int a5)
{
  if (!a4)
  {
    sub_24BBEDB70(-1, 0);
  }

  v5 = *a2;
  if (a4 < 1)
  {
    goto LABEL_26;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v10 = a3;
  v11 = a4;
  while (v10[12] < 0)
  {
LABEL_7:
    ++v6;
    ++v10;
    if (!--v11)
    {
      goto LABEL_25;
    }
  }

  v12 = *v10;
  v13 = *v10 - a1;
  if (*v10 < a1)
  {
    v7 = a1 - v12;
    v9 = v6;
    v8 = *v10;
    goto LABEL_7;
  }

  if (v12 == a1)
  {
    v14 = *a2;
    v5 = -1;
    goto LABEL_81;
  }

  if (a1 - v8 > 2 * v13)
  {
    v15 = v6;
  }

  else
  {
    v15 = v9;
  }

  if (a1 - v8 > 2 * v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v7;
  }

  if (v8)
  {
    v9 = v15;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    v7 = v16;
  }

  else
  {
    v7 = v13;
  }

LABEL_25:
  v14 = *a2;
  if (v9 < 0)
  {
LABEL_26:
    sub_24BBEDB70(-1, 0);
  }

  v17 = a3[v9 + 12];
  if (v5 <= v17)
  {
    if (v9 < 1)
    {
      v27 = 0x7FFFFFFF;
    }

    else
    {
      v26 = 0x7FFFFFFF;
      v27 = 0x7FFFFFFF;
      do
      {
        v28 = &a3[v9];
        if (v28[11] > 0)
        {
          break;
        }

        LODWORD(v29) = a3[--v9] - a1;
        v29 = v29 >= 0 ? v29 : (a1 - a3[v9]);
        if (v29 > v7)
        {
          break;
        }

        if (v28[35] < v26)
        {
          v27 = v28[23];
          v26 = v28[35];
        }
      }

      while ((v9 + 1) > 1);
    }

    if (v17 - v5 < 22273)
    {
      if (v27 >= v17)
      {
        v14 = v17;
      }

      else
      {
        v14 = v27;
      }
    }

    else
    {
      v30 = v5 / (v17 - v5) * 65536.0;
      v31 = 0.5;
      if (v30 >= 0.0)
      {
        v32 = 0.5;
      }

      else
      {
        v32 = -0.5;
      }

      v33 = v30 + v32;
      if (v33 >= 2147483650.0)
      {
        v34 = -729786624.0;
      }

      else if (v33 <= -2147483650.0)
      {
        v34 = -729786624.0;
      }

      else
      {
        v34 = (v33 + 0x10000) * 22272.0 * 0.0000152587891;
      }

      if (v34 < 0.0)
      {
        v31 = -0.5;
      }

      v35 = v34 + v31;
      if (v35 >= 2147483650.0)
      {
        v36 = 0x7FFFFFFF;
      }

      else
      {
        if (v35 <= -2147483650.0)
        {
          goto LABEL_81;
        }

        v36 = v35;
      }

      if (v27 >= v36)
      {
        v27 = v36;
      }

      if (v36 <= v5)
      {
        v14 = *a2;
      }

      else
      {
        v14 = v27;
      }
    }
  }

  else if (v5 - v17 < 44545)
  {
    v14 = a3[v9 + 12];
  }

  else if (v9 + 1 < a4)
  {
    v18 = 0;
    v19 = &a3[v9 + 1];
    v20 = 0x7FFFFFFF;
    v21 = 0x7FFFFFFF;
    do
    {
      v22 = &a3[v9];
      v23 = v22[13];
      if (v23 > 0)
      {
        break;
      }

      LODWORD(v24) = *v19 - a1;
      v24 = v24 >= 0 ? v24 : (a1 - *v19);
      if (v24 > v7)
      {
        break;
      }

      if (v22[37] < v20)
      {
        v21 = v22[25];
        v18 = -v23;
        v20 = v22[37];
      }

      ++v9;
      ++v19;
    }

    while (a4 - 1 != v9);
    if (v5 - v18 < 44545 && v21 < v5)
    {
      v14 = v21;
    }

    else
    {
      v14 = *a2;
    }
  }

LABEL_81:
  v37 = v14 - a5 + 92681;
  if (v37 <= 1)
  {
    v37 = 1;
  }

  *a2 = v37;
  if (*(qword_28151C028 + 828) != 1)
  {
    return v37 != v5;
  }

  v38 = *(qword_28151C028 + 824);
  switch(v38)
  {
    case 16:
      v37 = ((2 * v37) & 0x100000) + (v37 & 0x7FF00000);
      v39 = v37 > 0x100000;
      v40 = 0x100000;
      goto LABEL_90;
    case 4:
      v37 = ((2 * v37) & 0x40000) + (v37 & 0x7FFC0000);
      v39 = v37 > 0x40000;
      v40 = 0x40000;
LABEL_90:
      if (!v39)
      {
        v37 = v40;
      }

      *a2 = v37;
      return v37 != v5;
    case 2:
      v37 = ((2 * v37) & 0x20000) + (v37 & 0x7FFE0000);
      v39 = v37 > 0x20000;
      v40 = 0x20000;
      goto LABEL_90;
  }

  return v37 != v5;
}

uint64_t sub_24BBFE034(unsigned int a1, _DWORD *a2)
{
  v4 = a1;
  if (!off_28151BD60)
  {
    sub_24BBEDB70(257, 0);
  }

  result = off_28151BD60(v4, &v4);
  *a2 = v4;
  return result;
}

uint64_t sub_24BBFE09C()
{
  result = qword_27F0784C8;
  if (qword_27F0784C8 < qword_27F0784D0)
  {
LABEL_12:
    ++dword_27F078480;
    qword_27F0784C8 = result + 48;
    return result;
  }

  v1 = qword_27F0784B0;
  v2 = *qword_27F0784B0;
  result = (*(**(qword_28151C038 + 40) + 40))(*(qword_28151C038 + 40), *qword_27F0784B0, (*(qword_27F0784B0 + 8) + 48));
  *v1 = result;
  if (result)
  {
    v3 = result;
    v4 = *(v1 + 8) + 48;
    *(v1 + 8) = v4;
    result = qword_27F0784C8;
    if (v3 != v2)
    {
      result = v3 + qword_27F0784C8 - v2;
      qword_27F0784C8 = result;
      if (qword_27F078550)
      {
        v5 = (v3 + qword_27F078550 - v2);
        qword_27F078550 = v5;
        v6 = *v5;
        if (*v5)
        {
          do
          {
            v7 = (v3 + v6 - v2);
            *v5 = v7;
            v6 = *v7;
            v5 = v7;
          }

          while (*v7);
        }

        v8 = qword_27F078548;
        if (qword_27F078548)
        {
          do
          {
            v9 = v8[8];
            v8[7] = v3 + v8[7] - v2;
            if (v9)
            {
              v8[8] = v3 + v9 - v2;
            }

            v8 = *v8;
          }

          while (v8);
        }
      }
    }

    qword_27F0784D0 = v3 + 48 * (v4 / 0x30);
    goto LABEL_12;
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_24BBFE1E0(int a1, int a2)
{
  v4 = qword_28151C1C0;
  if (dword_27F078468)
  {
    v5 = byte_28151C1D8 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_24BBFE268(qword_28151C1C0);
    sub_24BBFE268(qword_28151C1C8);
  }

  sub_24BBFE3E4(v4, a1);
  v6 = qword_28151C1C8;

  return sub_24BBFE3E4(v6, a2);
}

int *sub_24BBFE268(int *result)
{
  v1 = *result;
  v2 = &result[8 * v1 - 2];
  if ((result + 22) < v2)
  {
    v3 = 0;
    v4 = result[4];
    v5 = result + 6;
    v6 = v4 + (v4 >> 1);
    v7 = v6 + v4;
    v8 = 32 * v1 - 128;
    do
    {
      v9 = *&result[v3 / 4 + 28];
      if (&result[v3 / 4 + 30] == v9)
      {
        goto LABEL_16;
      }

      v10 = result[v3 / 4 + 26];
      if ((v10 & 0x200) != 0)
      {
        goto LABEL_16;
      }

      v11 = &result[v3 / 4];
      v12 = result[v3 / 4 + 34];
      if (((v12 | v10) & 0x10) != 0)
      {
        goto LABEL_16;
      }

      v13 = v11[33];
      v14 = *(v11 + 18);
      v15 = (*(v14 + 12) + v13) >> 1;
      v16 = v11[25];
      v17 = v9[3] + v16;
      if (v15 - (v17 >> 1) >= v6)
      {
        goto LABEL_16;
      }

      if ((v12 & 1) != 0 || v8 != v3 && v7 + v15 >= (*(*&result[v3 / 4 + 52] + 12) + result[v3 / 4 + 49]) >> 1)
      {
        if (v10)
        {
          goto LABEL_16;
        }

        if (result[v3 / 4 + 23] < 1)
        {
          goto LABEL_16;
        }

        if (v3 != 32)
        {
          if (v9 < v5)
          {
            goto LABEL_16;
          }

          if (v9 >= v2)
          {
            goto LABEL_16;
          }

          v18 = *&result[v3 / 4 + 12];
          if (v18 < v5 || v18 >= v2 || (v17 >> 1) - v7 <= (*(v18 + 12) + result[v3 / 4 + 9]) >> 1)
          {
            goto LABEL_16;
          }
        }

        v11[25] = v16 - v4;
        v9[3] -= v4;
      }

      else
      {
        v11[33] = v13 + v4;
        *(v14 + 12) += v4;
      }

      byte_27F07847C = 1;
LABEL_16:
      v3 += 32;
    }

    while (&result[v3 / 4 + 22] < v2);
  }

  return result;
}

uint64_t sub_24BBFE3E4(uint64_t result, int a2)
{
  v2 = result;
  if (*result <= 0)
  {
    sub_24BBEDB70(-1, 0);
  }

  if ((a2 - 1) >= 0x10000)
  {
    sub_24BBEDB70(-1, 0);
  }

  v3 = *result;
  *result = v3 + 1;
  v4 = (result + 32 * v3);
  if (v3 < 2)
  {
    *(result + 56) = a2;
    *(result + 60) = -0.0;
    v4[16] = 0x7FFFFFFF;
  }

  else
  {
    v5 = v4 + 6;
    v6 = *(result + 100) - *(result + 96);
    *(result + 68) = v6 - 399507455;
    v7 = a2;
    v8 = a2 * v6 * 0.0000152587891;
    v9 = 0.5;
    if (v8 >= 0.0)
    {
      v10 = 0.5;
    }

    else
    {
      v10 = -0.5;
    }

    v11 = v8 + v10;
    v12 = v11;
    if (v11 <= -2147483650.0)
    {
      v12 = 0x80000000;
    }

    if (v11 < 2147483650.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x7FFFFFFF;
    }

    *(result + 56) = a2;
    *(result + 60) = v13;
    v14 = v4[9] - v4[8];
    *v5 = a2;
    v15 = v7 * v14 * 0.0000152587891;
    if (v15 < 0.0)
    {
      v9 = -0.5;
    }

    v16 = v15 + v9;
    v17 = 0x7FFFFFFF;
    if (v16 < 2147483650.0)
    {
      if (v16 <= -2147483650.0)
      {
        v17 = 0x80000000;
      }

      else
      {
        v17 = v16;
      }
    }

    v4[7] = v17;
    *(result + 64) = 0x80000000;
    v4[16] = 0x7FFFFFFF;
    if (v3 != 2)
    {
      for (i = (result + 88); i < v5; i += 8)
      {
        v19 = i[10];
        v20 = i[2];
        v21 = v19 - v20;
        if (v19 <= v20)
        {
          v34 = (v20 + v19) >> 1;
          v35 = i[3] + (v21 >> 1);
          i[2] = v34;
          i[3] = v35;
          v36 = i[11] - (v21 >> 1);
          i[10] = v34;
          i[11] = v36;
          v37 = v35;
        }

        else
        {
          v22 = i[11];
          v23 = i[3];
          v24 = __OFSUB__(v22, v23);
          v25 = v22 - v23;
          if (!((v25 < 0) ^ v24 | (v25 == 0)))
          {
            v26 = v25 / v21 * 65536.0;
            if (v26 >= 0.0)
            {
              v27 = 0.5;
            }

            else
            {
              v27 = -0.5;
            }

            v28 = v26 + v27;
            v29 = 2147483650.0;
            if (v28 < 2147483650.0)
            {
              v29 = -2147483650.0;
              if (v28 > -2147483650.0)
              {
                v29 = v28;
              }
            }

            v30 = v29 * v7 * 0.0000152587891;
            if (v30 >= 0.0)
            {
              v31 = 0.5;
            }

            else
            {
              v31 = -0.5;
            }

            v32 = v30 + v31;
            if (v32 >= 2147483650.0)
            {
              v33 = 0x7FFFFFFF;
            }

            else if (v32 <= -2147483650.0)
            {
              v33 = 0x80000000;
            }

            else
            {
              v33 = v32;
            }

            v42 = v23;
            if (v33 >= 175636)
            {
              v41 = 175636;
            }

            else
            {
              v41 = v33;
            }

            v43 = v7 * v42 * 0.0000152587891;
            if (v43 >= 0.0)
            {
              v44 = 0.5;
            }

            else
            {
              v44 = -0.5;
            }

            v45 = v43 + v44;
            v46 = v45;
            if (v45 <= -2147483650.0)
            {
              v46 = 0x80000000;
            }

            if (v45 >= 2147483650.0)
            {
              v46 = 0x7FFFFFFF;
            }

            v47 = v20 * v41 * 0.0000152587891;
            if (v47 >= 0.0)
            {
              v48 = 0.5;
            }

            else
            {
              v48 = -0.5;
            }

            v49 = v47 + v48;
            if (v49 >= 2147483650.0)
            {
              v50 = 0x7FFFFFFF;
            }

            else if (v49 <= -2147483650.0)
            {
              v50 = 0x80000000;
            }

            else
            {
              v50 = v49;
            }

            result = (v46 - v50);
            goto LABEL_68;
          }

          i[11] = v23;
          v37 = v23;
        }

        v38 = v7 * v37 * 0.0000152587891;
        if (v38 >= 0.0)
        {
          v39 = 0.5;
        }

        else
        {
          v39 = -0.5;
        }

        v40 = v38 + v39;
        if (v40 >= 2147483650.0)
        {
          v41 = 0;
          result = 0x7FFFFFFFLL;
        }

        else
        {
          v41 = 0;
          if (v40 <= -2147483650.0)
          {
            result = 0x80000000;
          }

          else
          {
            result = v40;
          }
        }

LABEL_68:
        *i = v41;
        i[1] = result;
      }
    }
  }

  *(v2 + 8) = v2 + 56;
  return result;
}

int *sub_24BBFE738(int *result, int a2)
{
  v2 = *result;
  v3 = result[1] + *result;
  v4 = qword_27F078548;
  if (qword_27F078548)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if ((*(v4 + 72) & 1) != a2)
      {
        v7 = v6;
        goto LABEL_45;
      }

      if (v6)
      {
        v7 = 1;
        if (v5)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v13 = *(v4 + 12);
        v14 = v2 - v13;
        if (v2 - v13 < 0)
        {
          v14 = v13 - v2;
        }

        if (!(v14 >> 17))
        {
          if (v5)
          {
            v2 = *(v4 + 12);
            break;
          }

          v8 = *(v4 + 16);
          v15 = v13 - v8;
          if (v13 - v8 < 0)
          {
            v15 = v8 - v13;
          }

          if (v15 >= 0x20000)
          {
            v2 = *(v4 + 12);
          }

          else
          {
            v2 = *(v4 + 16);
          }

LABEL_35:
          v17 = v3 - v13;
          if (v3 - v13 < 0)
          {
            v17 = v13 - v3;
          }

          if (v17 < 0x20000)
          {
            v3 = *(v4 + 12);
            break;
          }

          v18 = v3 - v8;
          if (v3 - v8 < 0)
          {
            v18 = v8 - v3;
          }

          if (v18 < 0x20000)
          {
LABEL_47:
            v3 = v8;
            break;
          }

          v5 = 0;
          v7 = 1;
          goto LABEL_45;
        }

        v8 = *(v4 + 16);
        v16 = v2 - v8;
        if (v2 - v8 < 0)
        {
          v16 = v8 - v2;
        }

        if (v16 < 0x20000)
        {
          v2 = *(v4 + 16);
          if (v5)
          {
            v2 = *(v4 + 16);
            break;
          }

          goto LABEL_35;
        }

        v7 = 0;
        if (v5)
        {
          goto LABEL_44;
        }
      }

      v8 = *(v4 + 12);
      v9 = v3 - v8;
      if (v3 - v8 < 0)
      {
        v9 = v8 - v3;
      }

      v10 = v9 >> 17;
      if (v9 >> 17)
      {
        v7 = v7;
      }

      else
      {
        v7 = 0;
      }

      if (v6 && !v10)
      {
        goto LABEL_47;
      }

      v5 = v9 < 0x20000;
      if (v10)
      {
        v11 = v3;
      }

      else
      {
        v11 = *(v4 + 12);
      }

      v3 = *(v4 + 16);
      v12 = v11 - v3;
      if (v11 - v3 < 0)
      {
        v12 = v3 - v11;
      }

      if (v12 < 0x20000)
      {
        if (v7)
        {
          break;
        }

LABEL_44:
        v5 = 1;
        goto LABEL_45;
      }

      v3 = v11;
LABEL_45:
      v4 = *v4;
      v6 = v7;
    }

    while (v4);
  }

  *result = v2;
  result[1] = v3 - v2;
  return result;
}

uint64_t sub_24BBFE888(int a1, int a2, int a3, uint64_t a4, _DWORD *a5)
{
  v83 = *MEMORY[0x277D85DE8];
  v78 = 0;
  v7 = a2 - a1;
  if (a2 < a1)
  {
    sub_24BBEDB70(-1, 0);
  }

  LODWORD(v77) = 0;
  HIDWORD(v77) = a2 - a1;
  if (!off_28151BD60)
  {
    sub_24BBEDB70(257, 0);
  }

  off_28151BD60(v77, &v77);
  v8 = HIDWORD(v77);
  if (a4)
  {
    v9 = *(a4 + 8);
LABEL_11:
    v71 = v9;
    goto LABEL_12;
  }

  v71 = HIDWORD(v77);
  if (dword_28151C1F4)
  {
    v78 = HIDWORD(v77);
    v10 = sub_24BBFDC88(v7, &v78, qword_28151C1E8, dword_28151C1F4, *(qword_28151C028 + 764));
    v9 = v78;
    if (!v10)
    {
      v9 = v8;
    }

    goto LABEL_11;
  }

LABEL_12:
  v72 = a4;
  v70 = v8;
  v11 = v7 >> 1;
  if ((a5[105] & 0x80000000) != 0)
  {
    sub_24BBEDB70(-1, 0);
  }

  v12 = 0;
  v13 = 0;
  v69 = v7 >> 1;
  v14 = a5[107];
  do
  {
    v15 = v12;
    v16 = a5[186];
    if (v14 && (v16 & 1) == 0)
    {
      sub_24BBEDB70(-1, 0);
    }

    if (v14)
    {
      v17 = 0;
      v18 = a5[107];
      v19 = a5 + 108;
      do
      {
        if (v16)
        {
          if (a3 != -1310720)
          {
            v20 = v19[1];
            if (v20 - v13 <= a1)
            {
              v21 = *v19;
              if (*v19 + v13 >= a1)
              {
LABEL_32:
                v23 = a5[104];
                v76 = 0;
                v24 = a5[105];
                v25 = a5[186] & (1 << (-v17 >> 4));
                if (v25)
                {
                  v26 = 0;
                  LODWORD(v27) = a1 - v21;
                  if (a1 - v21 >= 0)
                  {
                    v27 = v27;
                  }

                  else
                  {
                    v27 = (v21 - a1);
                  }

                  if (v27 <= v24)
                  {
                    v28 = v21;
                  }

                  else
                  {
                    v28 = a1;
                  }

                  LODWORD(v76) = 0;
                  HIDWORD(v76) = v21;
                  v29 = *(qword_28151C028 + 824);
                  if (v29 > 3)
                  {
                    if (v29 == 4)
                    {
                      v30 = -262144;
                      v31 = 0x20000;
                    }

                    else
                    {
                      if (v29 != 16)
                      {
                        goto LABEL_92;
                      }

                      v30 = -1048576;
                      v31 = 0x80000;
                    }
                  }

                  else
                  {
                    if (v29 != 1)
                    {
                      if (v29 == 2)
                      {
                        v30 = -131072;
                        v31 = 0x10000;
                        goto LABEL_61;
                      }

LABEL_92:
                      if (!off_28151BD50)
                      {
                        sub_24BBEDB70(257, 0);
                      }

                      off_28151BD50(v76);
                      if (v25)
                      {
                        v41 = v21 - v28;
                      }

                      else
                      {
                        v41 = v28 - v20;
                      }

                      if (v41)
                      {
                        v42 = v23;
                        LODWORD(v77) = 0;
                        HIDWORD(v77) = v41;
                        v39 = v72;
                        if (!off_28151BD60)
                        {
                          sub_24BBEDB70(257, 0);
                        }

                        off_28151BD60(v77, &v77);
                        if (v41 >= 0)
                        {
                          v43 = v41;
                        }

                        else
                        {
                          v43 = v41 + 0x7FFFFFFF;
                        }

                        v44 = *(qword_28151C028 + 824);
                        if (v43 >= a5[106])
                        {
                          switch(v44)
                          {
                            case 16:
                              v45 = 0x7FFFF;
                              break;
                            case 4:
                              v45 = 0x1FFFF;
                              break;
                            case 2:
                              v45 = 0xFFFF;
                              break;
                            default:
                              v45 = 0x7FFF;
                              break;
                          }

                          v46 = v43 * (v44 * v42) * 0.0000152587891;
                          v47 = 0.5;
                          if (v46 < 0.0)
                          {
                            v47 = -0.5;
                          }

                          v48 = v46 + v47;
                          if (v48 >= 2147483650.0)
                          {
                            v49 = 2147450879;
                          }

                          else if (v48 <= -2147483650.0)
                          {
                            v49 = 2147450880;
                          }

                          else
                          {
                            v49 = v48 - 0x8000;
                          }

                          if (v49 >= v45)
                          {
                            v49 = v45;
                          }

                          if ((v49 + v45 < 0) ^ __OFADD__(v49, v45) | (v49 + v45 == 0))
                          {
                            v50 = -v45;
                          }

                          else
                          {
                            v50 = v49;
                          }

                          HIDWORD(v77) -= v50;
                        }

                        switch(v44)
                        {
                          case 16:
                            v51 = -1048576;
                            v52 = 0x80000;
                            break;
                          case 4:
                            v51 = -262144;
                            v52 = 0x20000;
                            break;
                          case 2:
                            v51 = -131072;
                            v52 = 0x10000;
                            break;
                          default:
                            v51 = -65536;
                            v52 = 0x8000;
                            break;
                        }

                        v53 = (HIDWORD(v77) + v52) & v51;
                        HIDWORD(v77) = v53;
                        if (v25)
                        {
                          v26 -= v53;
                        }

                        else
                        {
                          v26 += v53;
                        }
                      }

                      else
                      {
                        v39 = v72;
                      }

LABEL_137:
                      if (a3 == -1310720 || a3 == -1376256)
                      {
                        if (v39)
                        {
                          v54 = v26 - ((*(v39 + 20) >> 1) + (*(v39 + 24) >> 1));
                          goto LABEL_158;
                        }

                        HIDWORD(v76) = v26;
                        if (!off_28151BD58)
                        {
                          sub_24BBEDB70(257, 0);
                        }

                        off_28151BD58(v76, &v76);
                        v59 = sub_24BBFF778(1);
                        if (v25)
                        {
                          v60 = HIDWORD(v76) - v59;
                          HIDWORD(v76) -= v59;
                          v79 = 0u;
                          v80 = 0u;
                          v81 = 0u;
                          v82 = 0u;
                          v61 = a1;
                        }

                        else
                        {
                          v60 = HIDWORD(v76) + v59;
                          HIDWORD(v76) += v59;
                          v79 = 0u;
                          v80 = 0u;
                          v81 = 0u;
                          v82 = 0u;
                          v61 = a2;
                        }

                        *(&v79 + 1) = __PAIR64__(v60, v61);
                        *(&v81 + 1) = __PAIR64__(v60, v61);
                        LODWORD(v80) = 529;
                        v63 = 273;
LABEL_186:
                        LODWORD(v82) = v63;
                        result = sub_24BBFFD3C(qword_28151C1C8, &v79);
                        goto LABEL_187;
                      }

                      v55 = (v71 + 0x8000) & 0xFFFF0000;
                      if (!v55)
                      {
                        v55 = 0x10000;
                        if (!dword_27F07846C && dword_28151C030 < 0x8000)
                        {
                          v56 = 0;
                          goto LABEL_150;
                        }
                      }

                      v56 = v55 >> 1;
                      if (dword_27F07846C && dword_27F078470)
                      {
LABEL_152:
                        v56 += 0x8000;
                      }

                      else
                      {
LABEL_150:
                        if (!dword_27F07846C && dword_28151C030 < 0x8000)
                        {
                          goto LABEL_152;
                        }
                      }

                      if (v25)
                      {
                        v57 = v56;
                      }

                      else
                      {
                        v57 = -v56;
                      }

                      v58 = v57 + v26;
                      if (!v39)
                      {
                        HIDWORD(v76) = v58;
                        if (!off_28151BD58)
                        {
                          sub_24BBEDB70(257, 0);
                        }

                        off_28151BD58(v76, &v76);
                        v62 = sub_24BBFFBB8(v69, v70, v71, 1);
                        *&v79 = 0;
                        v80 = 0u;
                        *&v81 = 0;
                        v82 = 0u;
                        DWORD2(v79) = a1;
                        HIDWORD(v79) = HIDWORD(v76) - v62;
                        DWORD2(v81) = a2;
                        HIDWORD(v81) = HIDWORD(v76) + v62;
                        LODWORD(v80) = 513;
                        v63 = 257;
                        goto LABEL_186;
                      }

                      v54 = v58 - ((*(v39 + 20) >> 1) + (*(v39 + 24) >> 1));
LABEL_158:
                      result = sub_24BC00044(v39, v54);
                      *(v39 + 72) |= 2u;
                      goto LABEL_187;
                    }

                    v30 = -65536;
                    v31 = 0x8000;
                  }

LABEL_61:
                  v37 = 2;
                }

                else
                {
                  LODWORD(v32) = a2 - v20;
                  if (a2 - v20 >= 0)
                  {
                    v32 = v32;
                  }

                  else
                  {
                    v32 = (v20 - a2);
                  }

                  if (v32 <= v24)
                  {
                    v28 = v20;
                  }

                  else
                  {
                    v28 = a2;
                  }

                  v33 = v21 * (*(qword_28151C028 + 824) * v23) * 0.0000152587891;
                  v34 = 0.5;
                  if (v33 < 0.0)
                  {
                    v34 = -0.5;
                  }

                  v35 = v33 + v34;
                  if (v35 >= 2147483650.0)
                  {
                    v36 = 0x80000000;
                  }

                  else if (v35 <= -2147483650.0)
                  {
                    v36 = 0;
                  }

                  else
                  {
                    v36 = (v35 + 0x8000) & 0xFFFF0000;
                    if (v35 <= -32769)
                    {
                      v36 = -v36;
                    }
                  }

                  LODWORD(v77) = 0;
                  HIDWORD(v77) = v20;
                  if (!off_28151BD60)
                  {
                    sub_24BBEDB70(257, 0);
                  }

                  off_28151BD60(v77, &v77);
                  LODWORD(v76) = 0;
                  if (((HIDWORD(v77) + 0x8000) & 0xFFFF0000) < v36)
                  {
                    HIDWORD(v76) = *v19;
                    if (!off_28151BD50)
                    {
                      sub_24BBEDB70(257, 0);
                    }

                    off_28151BD50(v76);
                    v39 = v72;
                    v26 = 0;
                    v40 = *(qword_28151C028 + 824);
                    if (v40 > 3)
                    {
                      if (v40 == 4)
                      {
                        v26 = (v19[2] + 0x20000) & 0xFFFC0000;
                      }

                      else if (v40 == 16)
                      {
                        v26 = (v19[2] + 0x80000) & 0xFFF00000;
                      }
                    }

                    else if (v40 == 1)
                    {
                      v26 = (v19[2] + 0x8000) & 0xFFFF0000;
                    }

                    else if (v40 == 2)
                    {
                      v26 = (v19[2] + 0x10000) & 0xFFFE0000;
                    }

                    goto LABEL_137;
                  }

                  v26 = 0;
                  HIDWORD(v76) = v19[1];
                  v38 = *(qword_28151C028 + 824);
                  if (v38 > 3)
                  {
                    if (v38 == 4)
                    {
                      v30 = -262144;
                      v31 = 0x20000;
                    }

                    else
                    {
                      if (v38 != 16)
                      {
                        goto LABEL_92;
                      }

                      v30 = -1048576;
                      v31 = 0x80000;
                    }
                  }

                  else if (v38 == 1)
                  {
                    v30 = -65536;
                    v31 = 0x8000;
                  }

                  else
                  {
                    if (v38 != 2)
                    {
                      goto LABEL_92;
                    }

                    v30 = -131072;
                    v31 = 0x10000;
                  }

                  v37 = 3;
                }

                v26 = (v19[v37] + v31) & v30;
                goto LABEL_92;
              }
            }
          }
        }

        else if (a3 != -1376256)
        {
          v20 = v19[1];
          if (v20 - v13 <= a2)
          {
            v21 = *v19;
            if (*v19 + v13 >= a2)
            {
              goto LABEL_32;
            }
          }
        }

        v16 >>= 1;
        v19 += 4;
        v17 -= 16;
        --v18;
      }

      while (v18);
    }

    v13 = a5[105];
    v12 = 1;
  }

  while ((v15 & 1) == 0);
  if (!v72)
  {
    if (a3 == -1310720)
    {
      LODWORD(v76) = 0;
      HIDWORD(v76) = a2;
      if (!off_28151BD50)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD50(v76);
      HIDWORD(v76) = (HIDWORD(v76) + 0x8000) & 0xFFFF0000;
      if (!off_28151BD58)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD58(v76, &v76);
      v64 = HIDWORD(v76) + sub_24BBFF778(1);
      HIDWORD(v76) = v64;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v65 = a2;
    }

    else
    {
      if (a3 != -1376256)
      {
        LODWORD(v76) = 0;
        HIDWORD(v76) = v11 + a1;
        if (!off_28151BD50)
        {
          sub_24BBEDB70(257, 0);
        }

        off_28151BD50(v76);
        v66 = sub_24BBFF8CC(dword_28151C020, dword_28151C024, v71, SHIDWORD(v76));
        HIDWORD(v76) = v66;
        if (!off_28151BD58)
        {
          sub_24BBEDB70(257, 0);
        }

        off_28151BD58(v76, &v76);
        v67 = sub_24BBFFBB8(v11, v70, v71, 1);
        *&v79 = 0;
        v80 = 0u;
        *&v81 = 0;
        v82 = 0u;
        DWORD2(v79) = a1;
        HIDWORD(v79) = HIDWORD(v76) - v67;
        DWORD2(v81) = a2;
        HIDWORD(v81) = HIDWORD(v76) + v67;
        LODWORD(v80) = 512;
        v63 = 256;
        goto LABEL_186;
      }

      LODWORD(v76) = 0;
      HIDWORD(v76) = a1;
      if (!off_28151BD50)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD50(v76);
      HIDWORD(v76) = (HIDWORD(v76) + 0x8000) & 0xFFFF0000;
      if (!off_28151BD58)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD58(v76, &v76);
      v64 = HIDWORD(v76) - sub_24BBFF778(1);
      HIDWORD(v76) = v64;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v65 = a1;
    }

    *(&v79 + 1) = __PAIR64__(v64, v65);
    *(&v81 + 1) = __PAIR64__(v64, v65);
    LODWORD(v80) = 528;
    v63 = 272;
    goto LABEL_186;
  }

  result = sub_24BBFC29C(v72);
LABEL_187:
  v68 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BBFF324(unsigned int a1, unsigned int a2, int a3, int a4)
{
  if (dword_28151C1F8 || (result = 0, a4 != -1376256) && a4 != -1310720)
  {
    v27 = 0;
    if (a3)
    {
      sub_24BBFDC20(a1, &v27 + 1);
      sub_24BBFDC20(a2, &v27);
    }

    else
    {
      sub_24BBFE034(a1, &v27 + 1);
      sub_24BBFE034(a2, &v27);
    }

    v9 = v27;
    v10 = HIDWORD(v27);
    v11 = qword_27F078548;
    if (qword_27F078548)
    {
      while (1)
      {
        v12 = v11;
        v13 = *(v11 + 12) - a1;
        if (v13 < 0)
        {
          v13 = -v13;
        }

        if (!(v13 >> 17))
        {
          v14 = *(v12 + 16) - a2;
          if (v14 < 0)
          {
            v14 = a2 - *(v12 + 16);
          }

          if (!(v14 >> 17))
          {
            v15 = *(v12 + 72);
            if ((v15 & 1) == a3)
            {
              break;
            }
          }
        }

        v11 = *v12;
        if (!*v12)
        {
          goto LABEL_19;
        }
      }

      *(v12 + 72) = v15 | 4;
      return 1;
    }

    v12 = 0;
LABEL_19:
    v28 = 0;
    v29 = v12;
    result = sub_24BBFDAA0(&v29, &v28);
    if (!result)
    {
      byte_27F078474 = 1;
      return result;
    }

    v16 = result;
    v17 = v9 - v10;
    v18 = *(result + 72) & 0xFF9F;
    v19 = v18 | 0x20;
    if (a4 == -1376256)
    {
      v20 = v10;
    }

    else
    {
      v20 = v9;
    }

    if (a4 == -1376256)
    {
      v18 |= 0x40u;
    }

    if (a4 == -1310720)
    {
      v21 = v9;
    }

    else
    {
      v21 = v10;
    }

    if (a4 == -1310720)
    {
      v20 = v9;
      v18 = v19;
    }

    *(result + 8) = v17;
    v22 = (result + 8);
    *(result + 20) = v21;
    *(result + 24) = v20;
    *(result + 12) = a1;
    *(result + 16) = a2;
    *(result + 28) = -4503599626321920000;
    *(result + 44) = v17;
    *(result + 72) = v18 & 0xFFF4 | a3 & 1;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if ((v18 & 0x60) == 0)
    {
      if (a3)
      {
        v23 = dword_28151C1F4;
        if (!dword_28151C1F4)
        {
          goto LABEL_39;
        }

        v24 = a2 - a1;
        v25 = qword_28151C1E8;
        v26 = *(qword_28151C028 + 764);
      }

      else
      {
        v23 = dword_28151C1F0;
        if (!dword_28151C1F0)
        {
          goto LABEL_39;
        }

        v24 = a2 - a1;
        v25 = qword_28151C1E0;
        v26 = *(qword_28151C028 + 760);
      }

      sub_24BBFDC88(v24, v22, v25, v23, v26);
    }

LABEL_39:
    *(v16 + 72) |= 4u;
    if (v29)
    {
      *v29 = v16;
      *v16 = v28;
    }

    else
    {
      *v16 = qword_27F078548;
      qword_27F078548 = v16;
    }

    return 1;
  }

  return result;
}

uint64_t sub_24BBFF54C(int a1, int a2, int a3, uint64_t a4)
{
  LODWORD(v6) = a2;
  v8 = sub_24BBFDA4C(a1, a2, a3);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v26 = 0;
  if (a1 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = a1;
  }

  if (a1 >= v6)
  {
    v6 = v6;
  }

  else
  {
    v6 = a1;
  }

  v11 = *(v8 + 72);
  if ((v11 & 0x60) != 0)
  {
    v12 = (v11 & 0x40) == 0;
    v13 = 36;
    if (v12)
    {
      v13 = 40;
    }

    v14 = *(v8 + v13);
    if (a3)
    {
      LODWORD(v26) = 0;
      HIDWORD(v26) = v14;
      if (!off_28151BD68)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD68(v26, &v26);
      v15 = sub_24BBFF850;
      v16 = HIDWORD(v26);
    }

    else
    {
      v26 = v14;
      if (!off_28151BD68)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD68(v26, &v26);
      v15 = sub_24BC00104;
      v16 = v26;
    }

    if ((*(v9 + 72) & 0x40) != 0)
    {
      v20 = v6;
      v21 = v16;
      v22 = 17;
      v23 = v6;
    }

    else
    {
      v20 = v10;
      v21 = v16;
      v22 = 17;
      v23 = v10;
    }

    v24 = v16;
  }

  else
  {
    v18 = (*(v8 + 40) >> 1) + (*(v8 + 36) >> 1);
    if (a3)
    {
      LODWORD(v26) = 0;
      HIDWORD(v26) = v18;
      if (!off_28151BD68)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD68(v26, &v26);
      v15 = sub_24BBFF850;
      v19 = HIDWORD(v26);
    }

    else
    {
      v26 = v18;
      if (!off_28151BD68)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD68(v26, &v26);
      v15 = sub_24BC00104;
      v19 = v26;
    }

    v25 = *(v9 + 48);
    v21 = (v19 - v25);
    v24 = (v25 + v19);
    v20 = v6;
    v22 = 1;
    v23 = v10;
  }

  (v15)(v20, v21, v22, v23, v24, a4);
  return 0;
}

uint64_t sub_24BBFF778(int a1)
{
  v1 = 764;
  if (!a1)
  {
    v1 = 760;
  }

  v2 = (19777 * (((*(qword_28151C028 + v1) << 14) - 0x40000000) >> 16)) >> 15;
  v5 = 0;
  if (a1)
  {
    LODWORD(v5) = 0;
    HIDWORD(v5) = -v2;
    if (!off_28151BD68)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD68(v5, &v5);
    return HIDWORD(v5);
  }

  else
  {
    v5 = -v2;
    if (!off_28151BD68)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD68(v5, &v5);
    return v5;
  }
}

int *sub_24BBFF850(int a1, int a2, int a3, int a4, int a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v10 = 0u;
  v11 = 0;
  v14 = 0u;
  v8 = a1;
  v9 = a2;
  v12 = a4;
  v13 = a5;
  LODWORD(v10) = a3 | 0x200;
  LODWORD(v14) = a3 | 0x100;
  result = sub_24BBFFD3C(qword_28151C1C8, &v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BBFF8CC(int a1, int a2, int a3, int a4)
{
  v4 = *(qword_28151C028 + 824);
  if (v4 == 2)
  {
    if (!a1 || a2 == -1376256 || (v8 = a3 + 0x10000, a1 < 13107200) && (v8 & 0xFFFE0000) < 0x40000)
    {
      v6 = (a4 - (a3 >> 1) + 0x10000) & 0xFFFE0000;
      return v6 + (a3 >> 1);
    }

    v14 = a4 + 0x10000;
    if (a2 != -1310720)
    {
      v24 = v14 & 0xFFFE0000;
      v25 = a3 >> 1;
      v26 = ((v24 + v25 + 0x10000) & 0xFFFE0000) - v25;
      v19 = v25 + ((v24 - v25 + 0x10000) & 0xFFFE0000);
      if (a1 >= 13107200)
      {
        v19 = v26;
      }

      v27 = a4 & 0xFFFE0000 | 0x10000;
      v28 = ((v27 + v25 + 0x10000) & 0xFFFE0000) - v25;
      v22 = v25 + ((v27 - v25 + 0x10000) & 0xFFFE0000);
      if (a1 >= 13107200)
      {
        v22 = v28;
      }

      v23 = (v8 & 0x20000) == 0;
      goto LABEL_54;
    }

    v13 = (v14 + (a3 >> 1)) & 0xFFFE0000;
    return v13 - (a3 >> 1);
  }

  if (v4 == 4)
  {
    if (!a1 || a2 == -1376256 || (v7 = a3 + 0x20000, a1 < 13107200) && (v7 & 0xFFFC0000) < 0x80000)
    {
      v6 = (a4 - (a3 >> 1) + 0x20000) & 0xFFFC0000;
      return v6 + (a3 >> 1);
    }

    v12 = a4 + 0x20000;
    if (a2 != -1310720)
    {
      v16 = v12 & 0xFFFC0000;
      v17 = a3 >> 1;
      v18 = ((v16 + v17 + 0x20000) & 0xFFFC0000) - v17;
      v19 = v17 + ((v16 - v17 + 0x20000) & 0xFFFC0000);
      if (a1 >= 13107200)
      {
        v19 = v18;
      }

      v20 = a4 & 0xFFFC0000 | 0x20000;
      v21 = ((v20 + v17 + 0x20000) & 0xFFFC0000) - v17;
      v22 = v17 + ((v20 - v17 + 0x20000) & 0xFFFC0000);
      if (a1 >= 13107200)
      {
        v22 = v21;
      }

      v23 = (v7 & 0x40000) == 0;
      goto LABEL_54;
    }

    v13 = (v12 + (a3 >> 1)) & 0xFFFC0000;
    return v13 - (a3 >> 1);
  }

  if (v4 != 16)
  {
    if (a3 == a3)
    {
      if (!dword_27F07846C || !dword_27F078470)
      {
        return a4 & 0xFFFF0000 | 0x8000;
      }

      v10 = 1;
    }

    else
    {
      v11 = (a3 + 0x8000) >> 16;
      v10 = v11 & 1;
      if ((!dword_27F07846C || !dword_27F078470) && (dword_27F07846C || v11 > (a3 - dword_28151C030) >> 16))
      {
LABEL_33:
        if (!v10)
        {
          return (a4 + 0x8000) & 0xFFFF0000;
        }

        return a4 & 0xFFFF0000 | 0x8000;
      }
    }

    v10 ^= 1u;
    goto LABEL_33;
  }

  if (!a1 || a2 == -1376256 || (v5 = a3 + 0x80000, a1 < 13107200) && (v5 & 0xFFF00000) < 0x200000)
  {
    v6 = (a4 - (a3 >> 1) + 0x80000) & 0xFFF00000;
    return v6 + (a3 >> 1);
  }

  v15 = a4 + 0x80000;
  if (a2 == -1310720)
  {
    v13 = (v15 + (a3 >> 1)) & 0xFFF00000;
    return v13 - (a3 >> 1);
  }

  v29 = v15 & 0xFFF00000;
  v30 = a3 >> 1;
  v31 = ((v29 + v30 + 0x80000) & 0xFFF00000) - v30;
  v19 = v30 + ((v29 - v30 + 0x80000) & 0xFFF00000);
  if (a1 >= 13107200)
  {
    v19 = v31;
  }

  v32 = a4 & 0xFFF00000 | 0x80000;
  v33 = ((v32 + v30 + 0x80000) & 0xFFF00000) - v30;
  v22 = v30 + ((v32 - v30 + 0x80000) & 0xFFF00000);
  if (a1 >= 13107200)
  {
    v22 = v33;
  }

  v23 = (v5 & 0x100000) == 0;
LABEL_54:
  if (v23)
  {
    return v19;
  }

  else
  {
    return v22;
  }
}

uint64_t sub_24BBFFBB8(int a1, int a2, int a3, int a4)
{
  if (a1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = -a1;
  }

  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  if (a3 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = -a3;
  }

  if (!(dword_27F07846C | (dword_28151C030 < 0x8000)))
  {
    v17 = 0;
    v7 = (v6 + 0x8000) & 0x7FFF0000;
    v8 = 764;
    if (!a4)
    {
      v8 = 760;
    }

    v9 = (*(qword_28151C028 + v8) - 0x10000) >> 2;
    v10 = 19777 * v9;
    v11 = v10 >> 14;
    if (v9 >= 0x8000)
    {
      sub_24BBEDB70(-1, 0);
    }

    v12 = v7 - v11;
    v13 = v7 - v11 - 12288;
    if (v7 <= 0x10000 || (v5 <= v12 ? (v14 = v5 < v13) : (v14 = 1), v14))
    {
      if (v6 > v13)
      {
        v13 = v6;
      }

      if (v6 <= v12)
      {
        v12 = v13;
      }

      if (v7 > 0x10000)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0x10000 - (v10 >> 14);
      }

      if (a4)
      {
        LODWORD(v17) = 0;
        HIDWORD(v17) = v15;
        if (!off_28151BD68)
        {
          sub_24BBEDB70(257, 0);
        }

        off_28151BD68(v17, &v17);
        return (SHIDWORD(v17) >> 1);
      }

      else
      {
        v17 = v15;
        if (!off_28151BD68)
        {
          sub_24BBEDB70(257, 0);
        }

        off_28151BD68(v17, &v17);
        return (v17 >> 1);
      }
    }
  }

  return v4;
}

int *sub_24BBFFD3C(int *result, _DWORD *a2)
{
  if (qword_28151C1D0)
  {
    qword_28151C1D0 = 0;
    v2 = qword_28151C1C0;
    *qword_28151C1C0 = 1;
    v3 = qword_28151C1C8;
    *qword_28151C1C8 = 1;
    v4 = vdup_n_s32(0xE8300001);
    *(v2 + 64) = v4;
    *(v3 + 64) = v4;
    *(v2 + 80) = v2 + 56;
    *(v3 + 80) = v3 + 56;
  }

  v5 = *result;
  if (*result >= 125)
  {
    sub_24BBEDB70(257, 0);
  }

  v6 = v5;
  v7 = &result[8 * v5 + 14];
  v8 = (a2 + 2);
  v9 = (a2 + 10);
  v10 = (a2[10] + a2[2]) >> 1;
  v11 = (a2[11] + a2[3]) >> 1;
  v12 = 1;
  v13 = 14;
  while (1)
  {
    v14 = &result[v13];
    if (v13 != 14 && (v14[4] & 0x200) == 0)
    {
      sub_24BBEDB70(-1, 0);
    }

    v15 = *(v14 + 3);
    if (!v15)
    {
      *(v14 + 3) = v14;
      v15 = &result[v13];
    }

    v16 = v15[2] + v14[2];
    if (v10 == v16 >> 1)
    {
      return result;
    }

    v17 = v14[3];
    v18 = v15[3];
    v19 = v16 >> 1;
    if (v10 < v16 >> 1)
    {
      break;
    }

    v20 = &result[v13 + 8];
    if (v20 == v7)
    {
      v13 += 8;
    }

    else
    {
      v21 = v20[4];
      if ((v21 & 0x100) != 0)
      {
        v13 += 16;
      }

      else
      {
        v13 += 8;
      }

      if ((v21 & 0x100) != 0)
      {
        v12 = 0;
      }
    }

    if (&result[v13] == v7)
    {
      v22 = v18 + v17;
      if (v11 < v22 >> 1)
      {
        return result;
      }

      if (v11 == v22 >> 1)
      {
        v14 = (v7 - 64);
        goto LABEL_26;
      }

      v32 = *v9;
      *(v7 + 48) = a2[12];
      *(v7 + 40) = v32;
      v33 = *v8;
      *(v7 + 16) = a2[4];
      *(v7 + 8) = v33;
      *(v7 + 56) = v7;
      *(v7 + 24) = v7 + 32;
LABEL_39:
      *result += 2;
      return result;
    }
  }

  v23 = v18 + v17;
  if (v11 > v23 >> 1)
  {
    return result;
  }

  if (v11 != v23 >> 1)
  {
    if (v12)
    {
      goto LABEL_35;
    }

    v34 = *(v14 - 5);
    v35 = *(v34 + 12) + *(v14 - 13);
    if (v11 < v35 >> 1)
    {
      return result;
    }

    if (v11 != v35 >> 1)
    {
LABEL_35:
      v28 = v13 * 4 - 32 * v6 - 56;
      v29 = &result[8 * v6 + 24];
      do
      {
        *v29 = *(v29 - 64);
        *(v29 + 8) = *(v29 - 56);
        *(v29 + 16) = *(v29 - 48) + 64;
        v29 -= 32;
        v28 += 32;
      }

      while (v28);
      v30 = *v8;
      v14[4] = a2[4];
      *(v14 + 1) = v30;
      v31 = *v9;
      v14[12] = a2[12];
      *(v14 + 5) = v31;
      *(v14 + 3) = v14 + 8;
      *(v14 + 7) = v14;
      goto LABEL_39;
    }

    v36 = *(v14 - 14);
    v14 -= 16;
    v19 = (*(v34 + 8) + v36) >> 1;
  }

LABEL_26:
  v24 = v14[4];
  v25 = a2[4];
  if (v24)
  {
    if ((v25 & 1) == 0)
    {
      return result;
    }

LABEL_30:
    if (v10 <= v19)
    {
      return result;
    }

    goto LABEL_31;
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  if ((v24 & 0x200) == 0)
  {
    sub_24BBEDB70(-1, 0);
  }

  v26 = *v8;
  v14[4] = a2[4];
  *(v14 + 1) = v26;
  v27 = *v9;
  v14[12] = a2[12];
  *(v14 + 5) = v27;
  *(v14 + 3) = v14 + 8;
  *(v14 + 7) = v14;
  return result;
}

uint64_t sub_24BC00044(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = ((v3 + 0x8000) >> 1) & 0xFFFF8000;
  if (v5 <= 0x8000)
  {
    v5 = 0x8000;
  }

  v6 = *(a1 + 16);
  v7 = a2 + ((*(a1 + 20) + *(a1 + 24)) >> 1);
  v8 = v7 - v5;
  v9 = v7 + v5;
  v10 = v8 + 0x8000;
  if (dword_27F07846C == 0 && dword_28151C030 >= 0x8000)
  {
    v9 -= 0x8000;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 & 0xFFFF0000;
  v12 = (v9 & 0xFFFF0000) + 0x10000;
  if (v12 <= v11)
  {
    v12 = v11 + 0x10000;
  }

  *(a1 + 36) = v11;
  *(a1 + 40) = v12;
  result = sub_24BBFFBB8((v6 - v4) >> 1, *(a1 + 44), v3, *(a1 + 72) & 1);
  *(a1 + 48) = result;
  return result;
}

int *sub_24BC00104(int a1, int a2, int a3, int a4, int a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v10 = 0u;
  v11 = 0;
  v14 = 0u;
  v8 = a1;
  v9 = a2;
  v12 = a4;
  v13 = a5;
  LODWORD(v10) = a3 | 0x200;
  LODWORD(v14) = a3 | 0x100;
  result = sub_24BBFFD3C(qword_28151C1C0, &v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BC00180(int a1, int a2, _DWORD *a3, _DWORD *a4)
{
  v7 = a2 - a1;
  v13 = (a2 - a1);
  if (!off_28151BD60)
  {
    sub_24BBEDB70(257, 0);
  }

  off_28151BD60(v13, &v13);
  if (v13 >= 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = -v13;
  }

  v12 = v8;
  if (dword_28151C1F0)
  {
    sub_24BBFDC88(v7, &v12, qword_28151C1E0, dword_28151C1F0, *(qword_28151C028 + 760));
  }

  v13 = (a1 + (v7 >> 1));
  *a4 = v13;
  if (!off_28151BD50)
  {
    sub_24BBEDB70(257, 0);
  }

  off_28151BD50(v13);
  v9 = v12;
  v10 = sub_24BBFF8CC(dword_28151C020, dword_28151C024, v12, v13);
  LODWORD(v13) = v10;
  if (!off_28151BD58)
  {
    sub_24BBEDB70(257, 0);
  }

  off_28151BD58(v13, &v13);
  *a3 = v13;
  return sub_24BBFFBB8(v7 >> 1, v8, v9, 0);
}

uint64_t sub_24BC002DC(int *a1, int a2, uint64_t (*a3)(void, void, unint64_t *, char *), void (*a4)(void, void, uint64_t, void, void, uint64_t), uint64_t a5)
{
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v9 = a1[1];
  v10 = *a1 + a2;
  *a1 = v10;
  v11 = a1[3];
  a1[2] += a2;
  v38 = a1[5];
  a1[4] += a2;
  dword_28151C020 = v10;
  dword_28151C024 = v9;
  v12 = a3(*a1, (*a1 + v9), &v40, &v41 + 4);
  v13 = a1[3];
  dword_28151C020 = a1[2];
  dword_28151C024 = v13;
  v14 = (a3)(dword_28151C020, (v13 + dword_28151C020), &v39 + 4, &v41, a5);
  v15 = a1[5];
  dword_28151C020 = a1[4];
  dword_28151C024 = v15;
  result = (a3)(dword_28151C020, (v15 + dword_28151C020), &v39, &v40 + 4, a5);
  if (a4)
  {
    v17 = v41;
    v18 = HIDWORD(v41);
    if (v41 >= SHIDWORD(v41))
    {
      v20 = v41;
      v17 = HIDWORD(v41);
      v21 = v9;
      v9 = v11;
      v22 = v12;
      v12 = v14;
    }

    else
    {
      v19 = HIDWORD(v39);
      HIDWORD(v39) = v40;
      LODWORD(v40) = v19;
      v41 = __PAIR64__(v41, HIDWORD(v41));
      v20 = v18;
      v21 = v11;
      v22 = v14;
    }

    v23 = HIDWORD(v40);
    if (SHIDWORD(v40) >= v17)
    {
      v24 = v39;
      if (SHIDWORD(v40) >= v20)
      {
        v20 = HIDWORD(v40);
        v25 = v21;
        v21 = v9;
        v9 = v38;
        v26 = v22;
        v22 = v12;
        v12 = result;
      }

      else
      {
        v27 = HIDWORD(v39);
        HIDWORD(v39) = v39;
        v24 = v27;
        HIDWORD(v40) = v20;
        LODWORD(v41) = v23;
        v25 = v21;
        v21 = v38;
        v26 = v22;
        v22 = result;
      }
    }

    else
    {
      v24 = HIDWORD(v39);
      HIDWORD(v39) = v40;
      v40 = __PAIR64__(v20, v39);
      v41 = __PAIR64__(v23, v17);
      v17 = v23;
      v25 = v38;
      v26 = result;
    }

    v28 = v24 - v40;
    v29 = v20 - v17;
    v30 = v24 - HIDWORD(v39);
    if (HIDWORD(v39) - v40 >= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = HIDWORD(v39) - v40;
    }

    if (HIDWORD(v39) - v40 > v30)
    {
      v30 = HIDWORD(v39) - v40;
    }

    if (v28 <= v29)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    LODWORD(v39) = v32 + v40 + v32;
    HIDWORD(v39) = v32 + v40;
    if (v25 >= 0)
    {
      v33 = v25;
    }

    else
    {
      v33 = -v25;
    }

    v34 = v33 >> 1;
    if (v21 >= 0)
    {
      v35 = v21;
    }

    else
    {
      v35 = -v21;
    }

    if (v9 >= 0)
    {
      v36 = v9;
    }

    else
    {
      v36 = -v9;
    }

    if (v26)
    {
      v34 = v26;
    }

    if (v22)
    {
      v37 = v22;
    }

    else
    {
      v37 = v35 >> 1;
    }

    if (!v12)
    {
      v12 = v36 >> 1;
    }

    a4(v17 - (v33 >> 1), v40 - v34, 1, v17 + (v33 >> 1), v40 + v34, a5);
    a4(v41 - (v35 >> 1), HIDWORD(v39) - v37, 1, v41 + (v35 >> 1), HIDWORD(v39) + v37, a5);
    return (a4)(HIDWORD(v40) - (v36 >> 1), v39 - v12, 1, HIDWORD(v40) + (v36 >> 1), v39 + v12, a5);
  }

  return result;
}