uint64_t sub_1B5D07AD4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D57678))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1B5D07B14(uint64_t a1, uint64_t *a2, const void **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 64);
  v7 = sub_1B5D05010(*(**(a1 + 8) + 16));
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = **(a1 + 16);
  HIDWORD(v9) = *v4;
  LODWORD(v9) = *v4;
  *(v7 + 100) = v9 >> 16;
  *(v7 + 64) = *(v4 + 8) + (v8[13] << 28);
  v10 = *(v4 + 6);
  *(v7 + 76) = v10;
  *(v7 + 80) = v10;
  *(v7 + 56) = (*(*v8 + 152))(v8, v4);
  if (v5)
  {
    sub_1B5D06BFC((v7 + 104), v5);
  }

  v12 = *(a1 + 24);
  if ((*v12 & 2) == 0)
  {
    v13 = *(a1 + 32);
    v14 = **(a1 + 40);
    v15 = (*v13 + 24 * v14);
    v16 = *(v15 + 6);
    *(v7 + 96) = v16;
    *(v7 + 98) = v16;
    v17 = *(a1 + 48);
    if (*v17 == 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v15 + 2) + (*v17 << 28);
    }

    v19 = *v15;
    *(v7 + 72) = v18;
    *(v7 + 123) = *(**(a1 + 16) + 656);
    v20 = *v17;
    v21 = *(v4 + 4);
    if (*v17 == 7)
    {
      v22 = 9;
    }

    else if ((v21 & 2) != 0)
    {
      v22 = 5;
    }

    else if ((v21 & 1) == 0 || v20 == 6)
    {
      v22 = 6;
    }

    else
    {
      v22 = 0;
    }

    *(v7 + 124) = v22;
    v24 = *(a1 + 56);
    *(v7 + 24) = *v24;
    *(v7 + 122) = v19;
    if (v20 == 8)
    {
      v21 |= 0x10u;
    }

    *(v7 + 120) = v21;
    v25 = *v12;
    if ((v25 & 0x80) != 0)
    {
      if ((v25 & 0x80000) != 0 && v19 && (v21 & 2) == 0)
      {
        return result;
      }
    }

    else if ((v25 & 0x1500) == 0)
    {
      v26 = 0;
      v27 = *v13;
      if ((v25 & 8) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    v27 = *v13;
    v28 = v27 + 24 * v14;
    if (*v28)
    {
      v26 = (0.0 - (*(v28 + 4) * *(v6 + 1280)));
      if ((v25 & 8) == 0)
      {
LABEL_32:
        v31 = *(v7 + 80) + v26;
        if (v31 >= 0x7FFF)
        {
          v31 = 0x7FFF;
        }

        if (v26 >= 0x7FFF)
        {
          v26 = 0x7FFF;
        }

        *(v7 + 80) = v31;
        *(v7 + 84) = v26;
        result = *(v27 + 24 * v14 + 4);
        *(v7 + 88) = result;
        *v24 = v7;
        return result;
      }
    }

    else
    {
      v26 = 0;
      if ((v25 & 8) == 0)
      {
        goto LABEL_32;
      }
    }

LABEL_28:
    v29 = *(v27 + 24 * v14 + 14);
    if (v29 >= 2)
    {
      v30 = 1000 * (v29 >> 1) + 1000;
    }

    else
    {
      v30 = 0;
    }

    v26 += v30;
    goto LABEL_32;
  }

  return result;
}

__n128 sub_1B5D07D74(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D57618;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D07E40(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (&a3[-a2] <= 0xFFFE)
  {
    v9 = a3;
  }

  else
  {
    v9 = (a2 + 0xFFFF);
  }

  v10 = a2;
  if (v9 > a2)
  {
    v11 = *(a1 + 248);
    v10 = a2;
    while (1)
    {
      v12 = v9 - v10;
      if ((*(a1 + 304) - 4) > 2)
      {
        v13 = *v10;
        if ((*v10 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        if (v12 >= 2 && (v13 & 0xE0) == 0xC0)
        {
          v14 = 2;
          v13 = v10[1] & 0x3F | ((v13 & 0x1F) << 6);
        }

        else
        {
          if (v12 < 3)
          {
            goto LABEL_21;
          }

          if ((v13 & 0xF0) == 0xE0)
          {
            v13 = (v13 << 12) | ((v10[1] & 0x3F) << 6) | v10[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            if (v12 == 3)
            {
              goto LABEL_21;
            }

            if ((v13 & 0xF8) == 0xF0)
            {
              v13 = 0;
              v14 = 4;
            }

            else
            {
              if (v12 < 5)
              {
                goto LABEL_21;
              }

              if ((v13 & 0xFC) == 0xF8)
              {
                v13 = 0;
                v14 = 5;
              }

              else
              {
                if (v12 == 5 || (v13 & 0xFE) != 0xFC)
                {
LABEL_21:
                  v13 = 0;
LABEL_10:
                  v14 = 1;
                  goto LABEL_14;
                }

                v13 = 0;
                v14 = 6;
              }
            }
          }
        }
      }

      else
      {
        if (v12 < 2)
        {
          if ((v11 & **(a1 + 296) & 0x3FFFF) == 0)
          {
            break;
          }

          return 0;
        }

        v13 = *v10;
        v14 = 2;
      }

LABEL_14:
      v15 = *(*(a1 + 296) + 4 * v13);
      if ((v11 & v15 & 0x3FFFF) != 0)
      {
        v10 += v14;
        v11 = v15;
        if (v10 < v9)
        {
          continue;
        }
      }

      break;
    }
  }

  result = 0;
  if (v10 && v10 != v9)
  {
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    if (v17 == v18)
    {
      return 0;
    }

    v19 = v9 - v10;
    v20 = (a5 >> 4) & 8;
    v21 = (a5 >> 15) & 0x10;
    v22 = v20 | (a5 >> 2) & 7 | v21 | 2;
    v23 = v21 | v20;
    v24 = v20 | (a5 >> 2) & 1 | v21 | 4;
    v25 = a5 & 0x18;
    if ((a5 & 8) == 0)
    {
      v22 = v23 + 1;
    }

    v26 = v25 == 16;
    v27 = v25 != 16;
    if (v26)
    {
      v22 = v24;
    }

    v33 = v22;
    v34 = v19;
    v28 = v19 > 2 || v27;
    do
    {
      v29 = *(*v17 + 52);
      if (((a5 & 0x40000) != 0 || v29 != 1) && ((a5 & 0x100000) == 0 || (v29 & 0xFFFFFFFD) != 1))
      {
        v30 = *(a4 + 104);
        bzero(v30, 0x3000uLL);
        if (v28)
        {
          v31 = (*(**v17 + 80))(*v17, v33, v10, v34, *(a1 + 1288), *(a1 + 1296), 0, v30, 512);
          sub_1B5D06538(a1, a4, a2, v10, v34, a5, v31, *v17);
          if (v31)
          {
            v32 = 16;
            do
            {
              sub_1B5D066D0((*(a4 + 104) + v32), 0);
              v32 += 24;
              --v31;
            }

            while (v31);
          }
        }
      }

      v17 += 2;
    }

    while (v17 != v18);
    return 0;
  }

  return result;
}

size_t *sub_1B5D08170(size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_1B5D04FA0();
    }

    v9 = v4 - *result;
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

    v17[4] = v2;
    if (v10)
    {
      sub_1B5D08280(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_1B5D082C8(v17);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[1] = v6;
  return result;
}

void sub_1B5D08280(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_1B5CE5968();
}

uint64_t sub_1B5D082C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      sub_1B5CDD904(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5D0832C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D577F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D08368(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1B5D08398(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D083D4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1B5D04F58(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t sub_1B5D084D8(uint64_t a1, void *a2)
{
  sub_1B5D05DDC((a1 + 8));
  v4 = *(a1 + 72);
  __p = *(a1 + 64);
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1B5D087D8((a1 + 8), &__p);
  if (v8)
  {
    sub_1B5CDD904(v8);
  }

  if (*(a1 + 80))
  {
    v5 = *(a1 + 88);
    __p = *(a1 + 80);
    v8 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1B5D087D8((a1 + 8), &__p);
    if (v8)
    {
      sub_1B5CDD904(v8);
    }
  }

  if (*a2 != a2[1])
  {
    LOWORD(__p) = 2;
    sub_1B5D088C8();
  }

  return 1;
}

void sub_1B5D08770(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1B5D02D54(v15);
}

void sub_1B5D08790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1B5CDD904(a14);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1B5D087D8(const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      sub_1B5D04FA0();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      sub_1B5D08280(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = sub_1B5D082C8(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

void sub_1B5D08968(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D08980()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  v230 = *MEMORY[0x1E69E9840];
  sub_1B5D05B2C(v0);
  sub_1B5D0AA34(v193, v2, "dicdir");
  sub_1B5D0AA34(__dst, v2, "dicdir");
  sub_1B5CE410C(__p, "char.bin");
  sub_1B5D1523C(v229, __dst, __p);
  if (v196 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v229[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = v229;
  }

  else
  {
    v4 = v229[0].__r_.__value_.__r.__words[0];
  }

  v5 = sub_1B5D19698((v3 + 32), v4);
  if (SHIBYTE(v229[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v229[0].__r_.__value_.__l.__data_);
  }

  if ((SBYTE7(v198) & 0x80000000) == 0)
  {
    if (v5)
    {
      goto LABEL_10;
    }

LABEL_26:
    if (setjmp(v3 + 272) != 1)
    {
      std::ios_base::clear((v3 + *(v3[100] - 24) + 800), 0);
      v147 = sub_1B5CE599C(v3 + 100, "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/tokenizer.cpp", 72);
      v148 = sub_1B5CE599C(v147, "(", 1);
      v149 = MEMORY[0x1B8C87F00](v148, 217);
      v150 = sub_1B5CE599C(v149, ") [", 3);
      v151 = sub_1B5CE599C(v150, "property_.open(param)", 21);
      v152 = sub_1B5CE599C(v151, "] ", 2);
      v153 = sub_1B5D02C64((v3 + 39));
      v154 = sub_1B5CE410C(__dst, v153);
      if ((SBYTE7(v198) & 0x80u) == 0)
      {
        v155 = v154;
      }

      else
      {
        v155 = __dst[0];
      }

      if ((SBYTE7(v198) & 0x80u) == 0)
      {
        v156 = BYTE7(v198);
      }

      else
      {
        v156 = __dst[1];
      }

      sub_1B5CE599C(v152, v155, v156);
      if (SBYTE7(v198) < 0)
      {
        operator delete(__dst[0]);
      }

      longjmp(v3 + 272, 1);
    }

    goto LABEL_30;
  }

  operator delete(__dst[0]);
  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  *(v3 + 320) = sub_1B5D02D74(v2, "correction-penalty");
  if (sub_1B5D0AB2C(v2, "open-mutable-dictionary"))
  {
    v6 = "r+";
  }

  else
  {
    v6 = "r";
  }

  v7 = v3[7];
  sub_1B5CE410C(v229, "unk.dic");
  sub_1B5D1523C(__dst, v193, v229);
  if ((SBYTE7(v198) & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  v9 = (*(*v7 + 16))(v7, v8, v6);
  if (SBYTE7(v198) < 0)
  {
    operator delete(__dst[0]);
  }

  if ((SHIBYTE(v229[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v9)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  operator delete(v229[0].__r_.__value_.__l.__data_);
  if ((v9 & 1) == 0)
  {
LABEL_29:
    if (setjmp(v3 + 272) != 1)
    {
      std::ios_base::clear((v3 + *(v3[100] - 24) + 800), 0);
      v157 = sub_1B5CE599C(v3 + 100, "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/tokenizer.cpp", 72);
      v158 = sub_1B5CE599C(v157, "(", 1);
      v159 = MEMORY[0x1B8C87F00](v158, 225);
      v160 = sub_1B5CE599C(v159, ") [", 3);
      v161 = sub_1B5CE599C(v160, "unkSuccess", 10);
      v162 = sub_1B5CE599C(v161, "] ", 2);
      v163 = sub_1B5D02C64(v3[7] + 96);
      v164 = sub_1B5CE410C(__dst, v163);
      if ((SBYTE7(v198) & 0x80u) == 0)
      {
        v165 = v164;
      }

      else
      {
        v165 = __dst[0];
      }

      if ((SBYTE7(v198) & 0x80u) == 0)
      {
        v166 = BYTE7(v198);
      }

      else
      {
        v166 = __dst[1];
      }

      sub_1B5CE599C(v162, v165, v166);
      if (SBYTE7(v198) < 0)
      {
        operator delete(__dst[0]);
      }

      longjmp(v3 + 272, 1);
    }

LABEL_30:
    sub_1B5D05B2C(v3);
    goto LABEL_31;
  }

LABEL_20:
  sub_1B5CE410C(__dst, "completion-lookahead");
  v10 = sub_1B5D030FC(v2 + 8, __dst);
  if (SBYTE7(v198) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v2 + 16 == v10)
  {
    operator new();
  }

  if (*(v10 + 79) < 0)
  {
    sub_1B5CE4AC4(v229, *(v10 + 56), *(v10 + 64));
  }

  else
  {
    v229[0] = *(v10 + 56);
  }

  v13 = sub_1B5CF7CDC(__dst);
  LODWORD(__src[0]) = 0;
  if ((v229[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = v229;
  }

  else
  {
    v14 = v229[0].__r_.__value_.__r.__words[0];
  }

  if ((v229[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v229[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v229[0].__r_.__value_.__l.__size_;
  }

  v16 = sub_1B5CE599C(v13 + 2, v14, size);
  if ((*(v16 + *(*v16 - 24) + 32) & 5) != 0 || (v17 = MEMORY[0x1B8C87E70](__dst, __src), (*(v17 + *(*v17 - 24) + 32) & 5) != 0) || (v18 = sub_1B5D0317C(__dst), (*(v18 + *(__dst[0] - 3) + 32) & 2) == 0))
  {
    operator new();
  }

  v53 = __src[0];
  __dst[0] = *MEMORY[0x1E69E54D8];
  v19 = *(MEMORY[0x1E69E54D8] + 72);
  *(__dst + *(__dst[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v198 = v19;
  *(&v198 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v203) < 0)
  {
    operator delete(*(&v202 + 1));
  }

  *(&v198 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v199);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C88080](&v205);
  if (SHIBYTE(v229[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v229[0].__r_.__value_.__l.__data_);
  }

  *(v3[8] + 676) = v53;
  sub_1B5D0AA34(__p, v2, "lexicon-data-file");
  v20 = v196;
  if ((v196 & 0x80u) != 0)
  {
    v20 = __p[1];
  }

  if (!v20)
  {
    if (setjmp(v3 + 272) != 1)
    {
      std::ios_base::clear((v3 + *(v3[100] - 24) + 800), 0);
      v167 = sub_1B5CE599C(v3 + 100, "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/tokenizer.cpp", 72);
      v168 = sub_1B5CE599C(v167, "(", 1);
      v169 = MEMORY[0x1B8C87F00](v168, 231);
      v170 = sub_1B5CE599C(v169, ") [", 3);
      v171 = sub_1B5CE599C(v170, "!lexiconDataFile.empty()", 24);
      v172 = sub_1B5CE599C(v171, "] ", 2);
      sub_1B5CE599C(v172, "need lexicon data file path specified", 37);
      longjmp(v3 + 272, 1);
    }

    goto LABEL_76;
  }

  sub_1B5D0AA34(__dst, v2, "primary-locale");
  v21 = (v3 + 163);
  if (*(v3 + 1327) < 0)
  {
    operator delete(*v21);
  }

  *v21 = *__dst;
  v3[165] = v198;
  v22 = v3[8];
  if ((*(v3 + 1327) & 0x8000000000000000) != 0)
  {
    v21 = v3[163];
    v23 = v3[164];
  }

  else
  {
    v23 = *(v3 + 1327);
  }

  sub_1B5D1523C(__dst, v193, __p);
  if ((SBYTE7(v198) & 0x80u) == 0)
  {
    v24 = __dst;
  }

  else
  {
    v24 = __dst[0];
  }

  v25 = sub_1B5D54868(v22, v21, v23, v24);
  v26 = v25;
  if ((SBYTE7(v198) & 0x80000000) == 0)
  {
    if (v25)
    {
      goto LABEL_65;
    }

LABEL_75:
    if (setjmp(v3 + 272) != 1)
    {
      std::ios_base::clear((v3 + *(v3[100] - 24) + 800), 0);
      v173 = sub_1B5CE599C(v3 + 100, "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/tokenizer.cpp", 72);
      v174 = sub_1B5CE599C(v173, "(", 1);
      v175 = MEMORY[0x1B8C87F00](v174, 236);
      v176 = sub_1B5CE599C(v175, ") [", 3);
      v177 = sub_1B5CE599C(v176, "sysSuccess", 10);
      v178 = sub_1B5CE599C(v177, "] ", 2);
      v179 = sub_1B5D02C64(v3[8] + 96);
      v180 = sub_1B5CE410C(__dst, v179);
      if ((SBYTE7(v198) & 0x80u) == 0)
      {
        v181 = v180;
      }

      else
      {
        v181 = __dst[0];
      }

      if ((SBYTE7(v198) & 0x80u) == 0)
      {
        v182 = BYTE7(v198);
      }

      else
      {
        v182 = __dst[1];
      }

      sub_1B5CE599C(v178, v181, v182);
      if (SBYTE7(v198) < 0)
      {
        operator delete(__dst[0]);
      }

      longjmp(v3 + 272, 1);
    }

    goto LABEL_76;
  }

  operator delete(__dst[0]);
  if (!v26)
  {
    goto LABEL_75;
  }

LABEL_65:
  v27 = v3[8];
  if (v27[13])
  {
    if (setjmp(v3 + 272) != 1)
    {
      std::ios_base::clear((v3 + *(v3[100] - 24) + 800), 0);
      v28 = sub_1B5CE599C(v3 + 100, "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/tokenizer.cpp", 72);
      v29 = sub_1B5CE599C(v28, "(", 1);
      v30 = MEMORY[0x1B8C87F00](v29, 237);
      v31 = sub_1B5CE599C(v30, ") [", 3);
      v32 = sub_1B5CE599C(v31, "primary_locale_sysdic_->type() == MECAB_SYS_DIC", 47);
      v33 = sub_1B5CE599C(v32, "] ", 2);
      v34 = sub_1B5CE599C(v33, "not a system dictionary: ", 25);
      if ((v194 & 0x80u) == 0)
      {
        v35 = v193;
      }

      else
      {
        v35 = v193[0];
      }

      if ((v194 & 0x80u) == 0)
      {
        v36 = v194;
      }

      else
      {
        v36 = v193[1];
      }

      sub_1B5CE599C(v34, v35, v36);
      longjmp(v3 + 272, 1);
    }

LABEL_76:
    sub_1B5D05B2C(v3);
    goto LABEL_77;
  }

  v37 = (*(*v27 + 32))(v27);
  sub_1B5CE410C(__dst, v37);
  v38 = BYTE7(v198);
  v39 = __dst[1];
  if ((SBYTE7(v198) & 0x80u) == 0)
  {
    v40 = BYTE7(v198);
  }

  else
  {
    v40 = __dst[1];
  }

  v41 = SBYTE7(v198) < 0;
  if (v40)
  {
    v42 = 0;
    do
    {
      v43 = v42;
      v44 = __dst[0];
      if (!v41)
      {
        v44 = __dst;
      }

      v45 = *(v44 + v42);
      v46 = v39;
      v47 = v38;
      if ((v45 - 65) <= 0x19)
      {
        *(v44 + v43) = v45 | 0x20;
        v47 = BYTE7(v198);
        v46 = __dst[1];
      }

      v38 = v47;
      v39 = v46;
      v48 = v43 + 1;
      v42 = v43 + 1;
      v41 = (v38 & 0x80u) != 0;
      if ((v38 & 0x80u) == 0)
      {
        v49 = v38;
      }

      else
      {
        v49 = v39;
      }

      v50 = v39;
      v51 = v38;
      v52 = (v38 & 0x80u) != 0;
    }

    while (v48 < v49);
  }

  else
  {
    v50 = __dst[1];
    v51 = BYTE7(v198);
    v52 = SBYTE7(v198) < 0;
  }

  v54 = v51;
  if (!v52)
  {
    if (v51 <= 4)
    {
      if (v51 == 3)
      {
        if (LOWORD(__dst[0]) == 30053 && BYTE2(__dst[0]) == 99)
        {
          goto LABEL_163;
        }
      }

      else
      {
        if (v51 != 4)
        {
          goto LABEL_148;
        }

        if (LODWORD(__dst[0]) == 1936288371)
        {
          goto LABEL_139;
        }
      }
    }

    else
    {
      switch(v51)
      {
        case 5:
          if (LODWORD(__dst[0]) == 859402339 && BYTE4(__dst[0]) == 50)
          {
            goto LABEL_139;
          }

          break;
        case 6:
          v64 = __dst;
LABEL_142:
          v65 = *v64;
          v66 = *(v64 + 2);
          v67 = v65 == 1600353637;
          v68 = 28778;
          goto LABEL_144;
        case 9:
          if (__dst[0] == 0x696A2D7466696873 && LOBYTE(__dst[1]) == 115)
          {
            goto LABEL_139;
          }

          if (__dst[0] == 0x696A5F7466696873 && LOBYTE(__dst[1]) == 115)
          {
            goto LABEL_139;
          }

          break;
        default:
          goto LABEL_148;
      }
    }

    v70 = (v51 & 0x80u) != 0;
    goto LABEL_156;
  }

  if (v50 > 4)
  {
    if (v50 == 5)
    {
      v57 = *(__dst[0] + 4);
      v58 = *__dst[0] == 859402339;
      v55 = 50;
LABEL_128:
      if (!v58 || v57 != v55)
      {
        goto LABEL_148;
      }

LABEL_139:
      v63 = 1;
      goto LABEL_208;
    }

    if (v50 != 6)
    {
      if (v50 != 9)
      {
        goto LABEL_148;
      }

      v55 = 115;
      if (*__dst[0] == 0x696A2D7466696873 && *(__dst[0] + 8) == 115)
      {
        goto LABEL_139;
      }

      v57 = *(__dst[0] + 8);
      v58 = *__dst[0] == 0x696A5F7466696873;
      goto LABEL_128;
    }

    v64 = __dst[0];
    goto LABEL_142;
  }

  if (v50 != 3)
  {
    if (v50 != 4 || *__dst[0] != 1936288371)
    {
      goto LABEL_148;
    }

    goto LABEL_139;
  }

  v66 = *(__dst[0] + 2);
  v67 = *__dst[0] == 30053;
  v68 = 99;
LABEL_144:
  if (v67 && v66 == v68)
  {
    goto LABEL_163;
  }

LABEL_148:
  v70 = (v54 & 0x80u) != 0;
  if ((v54 & 0x80) != 0)
  {
    if (v50 != 6)
    {
      goto LABEL_167;
    }

    v71 = __dst[0];
LABEL_158:
    v73 = *v71;
    v74 = *(v71 + 2);
    v75 = v73 == 761492837 && v74 == 28778;
    v76 = v70;
    if (!v75)
    {
      goto LABEL_165;
    }

LABEL_163:
    v63 = 0;
    goto LABEL_208;
  }

LABEL_156:
  if (v54 == 6)
  {
    v71 = __dst;
    goto LABEL_158;
  }

  v76 = v70;
LABEL_165:
  if (!v76)
  {
    if (v54 != 4)
    {
      v78 = v76;
      goto LABEL_176;
    }

    v77 = __dst;
LABEL_171:
    if (*v77 == 946238581)
    {
      goto LABEL_194;
    }

    v70 = v76;
    v78 = v76;
    if (v76)
    {
      goto LABEL_173;
    }

LABEL_176:
    if (v54 != 5)
    {
      goto LABEL_201;
    }

    v80 = v78;
    v79 = __dst;
    goto LABEL_178;
  }

  v70 = v76;
LABEL_167:
  if (v50 == 4)
  {
    v77 = __dst[0];
    v76 = v70;
    goto LABEL_171;
  }

LABEL_173:
  if (v50 != 5)
  {
    goto LABEL_201;
  }

  v79 = __dst[0];
  v80 = v70;
LABEL_178:
  v81 = *v79;
  v82 = *(v79 + 4);
  if (v81 == 1600550005 && v82 == 56)
  {
    goto LABEL_194;
  }

  if (v80)
  {
    if (v50 != 5)
    {
      goto LABEL_201;
    }

    v84 = __dst[0];
  }

  else
  {
    if (v54 != 5)
    {
      goto LABEL_201;
    }

    v84 = __dst;
  }

  v85 = *v84;
  v86 = *(v84 + 4);
  if (v85 == 761689205 && v86 == 56)
  {
LABEL_194:
    v63 = 2;
    goto LABEL_208;
  }

  if (v80)
  {
    if (v50 != 5)
    {
      goto LABEL_201;
    }

    v88 = __dst[0];
  }

  else
  {
    if (v54 != 5)
    {
      goto LABEL_201;
    }

    v88 = __dst;
  }

  v89 = *v88;
  v90 = *(v88 + 4);
  if (v89 == 1768125281 && v90 == 105)
  {
    v63 = 3;
    goto LABEL_208;
  }

LABEL_201:
  if (sub_1B5D151A0(__dst, "utf-16be"))
  {
    v63 = 5;
  }

  else if (sub_1B5D151A0(__dst, "utf-16le"))
  {
    v63 = 6;
  }

  else if (sub_1B5D151A0(__dst, "utf-16"))
  {
    v63 = 4;
  }

  else
  {
    v63 = 2;
  }

LABEL_208:
  v92 = v63;
  if (SBYTE7(v198) < 0)
  {
    operator delete(__dst[0]);
  }

  *(v3 + 76) = v92;
  v93 = v3[9];
  __dst[0] = *(v3 + 8);
  __dst[1] = v93;
  if (v93)
  {
    atomic_fetch_add_explicit(v93 + 1, 1uLL, memory_order_relaxed);
  }

  sub_1B5D087D8(v3 + 1, __dst);
  if (__dst[1])
  {
    sub_1B5CDD904(__dst[1]);
  }

  sub_1B5D0AA34(__dst, v2, "secondary-locale");
  v94 = (v3 + 166);
  if (*(v3 + 1351) < 0)
  {
    operator delete(*v94);
  }

  *v94 = *__dst;
  v3[168] = v198;
  v95 = *(v3 + 1351);
  if (v95 < 0)
  {
    v95 = v3[167];
  }

  if (v95)
  {
    LOWORD(v229[0].__r_.__value_.__l.__data_) = 1;
    sub_1B5D088C8();
  }

  sub_1B5D0AA34(__src, v2, "userdic");
  if (v192 < 0)
  {
    if (!__src[1])
    {
      goto LABEL_253;
    }

    v96 = 0uLL;
    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v97 = __src[0];
  }

  else
  {
    if (!v192)
    {
      goto LABEL_253;
    }

    v96 = 0uLL;
    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v97 = __src;
  }

  *__dst = v96;
  v198 = v96;
  v98 = strncpy(v229, v97, 0x2000uLL);
  v99 = strlen(v98);
  if (v99 >= 1)
  {
    v100 = (v229 + v99);
    v101 = __dst;
    v102 = v229;
    v103 = 0;
    v104 = 0x10000;
    do
    {
      v105 = v104;
      while (1)
      {
        v106 = v102->__r_.__value_.__s.__data_[0];
        if (v106 != 9 && v106 != 32)
        {
          break;
        }

        v102 = (v102 + 1);
      }

      if (v106 == 34)
      {
        v102 = (v102 + 1);
        v107 = v102;
        v108 = v102;
        if (v102 < v100)
        {
          v109 = v102;
          v110 = v102;
          while (1)
          {
            v107 = v109;
            v111 = v110->__r_.__value_.__s.__data_[0];
            if (v111 == 34)
            {
              v112 = v110->__r_.__value_.__s.__data_[1];
              v110 = (v110 + 1);
              if (v112 != 34)
              {
                break;
              }
            }

            v107->__r_.__value_.__s.__data_[0] = v111;
            v107 = (v107 + 1);
            v109 = v107;
            v110 = (v110 + 1);
            v108 = v110;
            if (v110 >= v100)
            {
              goto LABEL_243;
            }
          }

          v108 = v110;
        }

LABEL_243:
        v117 = v107;
        v118 = memchr(v108, 44, v100 - v108);
        if (v118)
        {
          v116 = v118;
        }

        else
        {
          v116 = v100;
        }

        v115 = v117;
      }

      else
      {
        v113 = memchr(v102, 44, v100 - v102);
        if (v113)
        {
          v114 = v113;
        }

        else
        {
          v114 = v100;
        }

        v115 = v114;
        v116 = v114;
      }

      v104 = v105 - 1;
      if (v105 < 2)
      {
        *v101 = v102;
        v120 = v103 + 1;
        v119 = v103 + 1;
        if (v105 == 1)
        {
          break;
        }
      }

      else
      {
        v115->__r_.__value_.__s.__data_[0] = 0;
        *v101 = v102;
        v119 = v103 + 1;
      }

      v103 = v119;
      ++v101;
      v102 = (&v116->__r_.__value_.__l.__data_ + 1);
      v120 = v119;
    }

    while ((&v116->__r_.__value_.__l.__data_ + 1) < v100);
    if (v120)
    {
      operator new();
    }
  }

LABEL_253:
  v3[30] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v121 = ((v3[2] - v3[1]) >> 4) - 1;
  if (v121 >= 0)
  {
    v122 = v121 + 1;
    v123 = 16 * (((v3[2] - v3[1]) >> 4) - 1);
    do
    {
      v124 = v3[25];
      if (v3[24] == v3[26])
      {
        ++v124;
        v3[24] = 0;
        v3[25] = v124;
        v125 = 0;
      }

      else
      {
        v125 = v3[24];
      }

      v126 = v3[21];
      if (v124 == (v3[22] - v126) >> 3)
      {
        operator new[]();
      }

      v127 = *(v126 + 8 * v124);
      v3[24] = v125 + 1;
      v128 = v127 + 48 * v125;
      *(v128 + 16) = 0u;
      *(v128 + 32) = 0u;
      *v128 = 0u;
      *(v128 + 40) = v3[30];
      v129 = *(v3[1] + v123);
      v130 = v129 + 72;
      if (v129[95] < 0)
      {
        v130 = *v130;
      }

      *v128 = v130;
      *(v128 + 8) = (*(*v129 + 32))(v129);
      v131 = *(v3[1] + v123);
      *&v132 = vrev64q_s32(*(v131 + 52)).u64[0];
      *(&v132 + 1) = *(v131 + 60);
      *(v128 + 16) = v132;
      *(v128 + 32) = *(v131 + 48);
      v3[30] = v128;
      v123 -= 16;
    }

    while (v122-- > 1);
  }

  v3[28] = v3[27];
  if (!v3[7])
  {
LABEL_280:
    *(v3 + 62) = *(v3[37] + 128);
    sub_1B5D0AA34(__dst, v2, "bos-feature");
    sub_1B5D0AFA8((v3 + 16), __dst);
  }

  for (i = 0; ; ++i)
  {
    v135 = v3[34];
    if (i >= (v3[35] - v135) >> 3)
    {
      *(v3 + 105) = 1;
      v3[12] = (v3[28] - v3[27]) >> 4;
      v139 = &unk_1E7C21C28;
      v140 = 16;
      do
      {
        v141 = v140;
        v142 = *(v139 - 1);
        v143 = *v139;
        (*(*v3[7] + 56))(__dst);
        v144 = __dst[1];
        if (LODWORD(__dst[1]))
        {
          v145 = (*(*v3[7] + 128))(v3[7], __dst, 0);
          v146 = (*(*v3[7] + 136))(v3[7], __dst);
          v229[0].__r_.__value_.__r.__words[0] = v145;
          v229[0].__r_.__value_.__l.__size_ = v146;
          sub_1B5D0AEA0((v3 + 27), v229);
        }

        else if (*(v3 + 105) == 1)
        {
          *(v3 + 105) = 0;
        }

        if (v198)
        {
          CFRelease(v198);
        }

        if (!v144)
        {
          break;
        }

        v139 += 2;
        v140 = v141 - 16;
      }

      while (v141);
      goto LABEL_280;
    }

    v136 = *(v135 + 8 * i);
    (*(*v3[7] + 64))(__dst);
    if (!LODWORD(__dst[1]))
    {
      break;
    }

    v137 = (*(*v3[7] + 128))(v3[7], __dst, 0);
    v138 = (*(*v3[7] + 136))(v3[7], __dst);
    v229[0].__r_.__value_.__r.__words[0] = v137;
    v229[0].__r_.__value_.__l.__size_ = v138;
    sub_1B5D0AEA0((v3 + 27), v229);
    if (v198)
    {
      CFRelease(v198);
    }
  }

  if (setjmp(v3 + 272) != 1)
  {
    std::ios_base::clear((v3 + *(v3[100] - 24) + 800), 0);
    v183 = sub_1B5CE599C(v3 + 100, "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/tokenizer.cpp", 72);
    v184 = sub_1B5CE599C(v183, "(", 1);
    v185 = MEMORY[0x1B8C87F00](v184, 286);
    v186 = sub_1B5CE599C(v185, ") [", 3);
    v187 = sub_1B5CE599C(v186, "n.value != 0", 12);
    v188 = sub_1B5CE599C(v187, "] ", 2);
    v189 = sub_1B5CE599C(v188, "cannot find UNK category: ", 26);
    v190 = strlen(v136);
    sub_1B5CE599C(v189, v136, v190);
    longjmp(v3 + 272, 1);
  }

  sub_1B5D05B2C(v3);
  if (v198)
  {
    CFRelease(v198);
  }

  if (v192 < 0)
  {
    operator delete(__src[0]);
  }

LABEL_77:
  if (v196 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_31:
  if (v194 < 0)
  {
    operator delete(v193[0]);
  }

  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1B5D0A778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a2)
  {
    sub_1B5CE56B8(a1);
  }

  _Unwind_Resume(a1);
}

double sub_1B5D0AA34(uint64_t a1, uint64_t a2, char *__s)
{
  sub_1B5CE410C(&__p, __s);
  v5 = sub_1B5D030FC(a2 + 8, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (a2 + 16 == v5)
  {
    operator new();
  }

  if (*(v5 + 79) < 0)
  {
    sub_1B5CE4AC4(&v7, *(v5 + 56), *(v5 + 64));
  }

  else
  {
    v7 = *(v5 + 56);
    v8 = *(v5 + 72);
  }

  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_1B5D0AB2C(uint64_t a1, char *a2)
{
  sub_1B5CE410C(&__p, a2);
  v3 = sub_1B5D030FC(a1 + 8, &__p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v3)
  {
    operator new();
  }

  if (*(v3 + 79) < 0)
  {
    sub_1B5CE4AC4(v11, *(v3 + 56), *(v3 + 64));
  }

  else
  {
    *v11 = *(v3 + 56);
    v12 = *(v3 + 72);
  }

  sub_1B5CF7CDC(&__p);
  v13 = 0;
  if (v12 >= 0)
  {
    v4 = v11;
  }

  else
  {
    v4 = v11[0];
  }

  if (v12 >= 0)
  {
    v5 = HIBYTE(v12);
  }

  else
  {
    v5 = v11[1];
  }

  v6 = sub_1B5CE599C(&v15, v4, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0 || (v7 = MEMORY[0x1B8C87E40](&__p, &v13), (*(v7 + *(*v7 - 24) + 32) & 5) != 0) || (sub_1B5D0317C(&__p), (*(&v17[0].__locale_ + *(__p - 3)) & 2) == 0))
  {
    operator new();
  }

  v10 = v13;
  __p = *MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 72);
  *(&__p + *(__p - 3)) = *(MEMORY[0x1E69E54D8] + 64);
  v15 = v8;
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C88080](&v19);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return v10 & 1;
}

void sub_1B5D0AE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_1B5D0B3AC(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B5D0AEA0(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_1B5D04FA0();
    }

    v10 = v3 - v6;
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

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_1B5CE5968();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1B5D0AFA8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v2 = *(a2 + 8);
  }

  operator new[]();
}

uint64_t sub_1B5D0B030(uint64_t a1)
{
  sub_1B5CE410C(&__p, "max-grouping-size");
  v2 = sub_1B5D030FC(a1 + 8, &__p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v2)
  {
    operator new();
  }

  if (*(v2 + 79) < 0)
  {
    sub_1B5CE4AC4(v10, *(v2 + 56), *(v2 + 64));
  }

  else
  {
    *v10 = *(v2 + 56);
    v11 = *(v2 + 72);
  }

  sub_1B5CF7CDC(&__p);
  v12 = 0;
  if (v11 >= 0)
  {
    v3 = v10;
  }

  else
  {
    v3 = v10[0];
  }

  if (v11 >= 0)
  {
    v4 = HIBYTE(v11);
  }

  else
  {
    v4 = v10[1];
  }

  v5 = sub_1B5CE599C(&v14, v3, v4);
  if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0 || (v6 = MEMORY[0x1B8C87E80](&__p, &v12), (*(v6 + *(*v6 - 24) + 32) & 5) != 0) || (sub_1B5D0317C(&__p), (*(&v16[0].__locale_ + *(__p - 3)) & 2) == 0))
  {
    operator new();
  }

  v9 = v12;
  __p = *MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 72);
  *(&__p + *(__p - 3)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v7;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C88080](&v18);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  return v9;
}

void sub_1B5D0B37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_1B5D0B3AC(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D0B3AC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C88080](a1 + 128);
  return a1;
}

void sub_1B5D0B500(void *a1)
{
  *a1 = &unk_1F2D562C0;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x1B8C880F0](v1, 0x1000C4000313F17);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D0B57C(void *a1)
{
  *a1 = &unk_1F2D562C0;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x1B8C880F0](v2, 0x1000C4000313F17);
  }

  return a1;
}

void sub_1B5D0B600(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D57850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D0B674(void *a1)
{
  *a1 = &unk_1F2D57820;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x1B8C880F0](v1, 0x1000C4052888210);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D0B6F0(void *a1)
{
  *a1 = &unk_1F2D57820;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x1B8C880F0](v2, 0x1000C4052888210);
  }

  return a1;
}

void sub_1B5D0B74C(void *a1)
{
  *a1 = &unk_1F2D56320;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x1B8C880F0](v1, 0x1000C4077774924);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D0B7C8(void *a1)
{
  *a1 = &unk_1F2D56320;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x1B8C880F0](v2, 0x1000C4077774924);
  }

  return a1;
}

void *sub_1B5D0B824(void *a1)
{
  *a1 = &unk_1F2D56340;
  v2 = a1[1];
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1B8C880F0](v2, 0x1012C40EC159624);
  }

  return a1;
}

void sub_1B5D0B894(void *a1)
{
  sub_1B5D0B824(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D0B8D0(void *a1)
{
  *a1 = 0;
  a1[3] = 0;
  a1[4] = 0x1FF00000000;
  operator new[]();
}

void sub_1B5D0B958(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v4)
  {
    MEMORY[0x1B8C880C0](v4, v2);
  }

  v5 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v5)
  {
    MEMORY[0x1B8C880C0](v5, v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D0B994()
{
  pthread_mutex_lock(&stru_1ED8337E0);
  if (!qword_1ED833970)
  {
    operator new();
  }

  pthread_mutex_unlock(&stru_1ED8337E0);
  return qword_1ED833970;
}

void sub_1B5D0BA40(_Unwind_Exception *a1)
{
  sub_1B5D0BFF4(*(v2 + 40));
  sub_1B5D0C050(*(v2 + 16));
  MEMORY[0x1B8C880F0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D0BA68(uint64_t a1, unint64_t a2)
{
  pthread_mutex_lock((a1 + 64));
  if (a2)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = a1 + 40;
      do
      {
        v6 = *(v4 + 32);
        v7 = v6 >= a2;
        v8 = v6 < a2;
        if (v7)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * v8);
      }

      while (v4);
      if (v5 != a1 + 40 && *(v5 + 32) <= a2)
      {
        v9 = *(v5 + 64) - 1;
        *(v5 + 64) = v9;
        if (!v9)
        {
          v10 = sub_1B5D030FC(a1 + 8, (v5 + 40));
          v11 = v10;
          v12 = *(v10 + 8);
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            v14 = v10;
            do
            {
              v13 = v14[2];
              v15 = *v13 == v14;
              v14 = v13;
            }

            while (!v15);
          }

          if (*(a1 + 8) == v10)
          {
            *(a1 + 8) = v13;
          }

          v16 = *(a1 + 16);
          --*(a1 + 24);
          sub_1B5D0BC10(v16, v11);
          if (*(v11 + 55) < 0)
          {
            operator delete(*(v11 + 32));
          }

          operator delete(v11);
          v17 = *(v5 + 8);
          if (v17)
          {
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            v19 = v5;
            do
            {
              v18 = v19[2];
              v15 = *v18 == v19;
              v19 = v18;
            }

            while (!v15);
          }

          if (*(a1 + 32) == v5)
          {
            *(a1 + 32) = v18;
          }

          v20 = *(a1 + 40);
          --*(a1 + 48);
          sub_1B5D0BC10(v20, v5);
          if (*(v5 + 63) < 0)
          {
            operator delete(*(v5 + 40));
          }

          operator delete(v5);
          (*(*a2 + 8))(a2);
        }
      }
    }
  }

  return pthread_mutex_unlock((a1 + 64));
}

uint64_t *sub_1B5D0BC10(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

uint64_t sub_1B5D0BF88(uint64_t a1)
{
  *a1 = &unk_1F2D55EB0;
  sub_1B5D0218C((a1 + 72));
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  pthread_mutex_init((a1 + 8), 0);
  return a1;
}

void sub_1B5D0BFF4(char *a1)
{
  if (a1)
  {
    sub_1B5D0BFF4(*a1);
    sub_1B5D0BFF4(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

void sub_1B5D0C050(char *a1)
{
  if (a1)
  {
    sub_1B5D0C050(*a1);
    sub_1B5D0C050(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t sub_1B5D0C0AC(uint64_t a1)
{
  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](a1 + 112);
  return a1;
}

void sub_1B5D0C1DC(uint64_t a1)
{
  sub_1B5D0C214(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D0C214(uint64_t a1)
{
  *a1 = &unk_1F2D55EB0;
  pthread_mutex_destroy((a1 + 8));
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *(a1 + 72) = *MEMORY[0x1E69E54E8];
  *(a1 + 72 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 80) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  *(a1 + 80) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 88));
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](a1 + 184);
  return a1;
}

void sub_1B5D0C370(uint64_t a1)
{
  sub_1B5D0C3A8(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D0C3A8(uint64_t a1)
{
  *a1 = &unk_1F2D565C8;
  v2 = (a1 + 64);
  pthread_mutex_lock((a1 + 64));
  v3 = *(a1 + 8);
  if (v3 != (a1 + 16))
  {
    do
    {
      v4 = v3[7];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (a1 + 16));
  }

  pthread_mutex_unlock(v2);
  sub_1B5D0C214(a1 + 56);
  sub_1B5D0BFF4(*(a1 + 40));
  sub_1B5D0C050(*(a1 + 16));
  return a1;
}

uint64_t sub_1B5D0C498(uint64_t a1)
{
  v2 = sub_1B5D0B994();
  sub_1B5D0BA68(v2, *a1);
  *a1 = 0;
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  *(a1 + 56) = *MEMORY[0x1E69E54E8];
  *(a1 + 56 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 64) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  *(a1 + 64) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 72));
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](a1 + 168);
  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v5)
  {
    MEMORY[0x1B8C880C0](v5, 0x1000C8052888210);
  }

  v6 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v6)
  {
    MEMORY[0x1B8C880C0](v6, 0x1000C8052888210);
  }

  return a1;
}

uint64_t sub_1B5D0C620(void *a1, char *a2, _BYTE *a3)
{
  v6 = sub_1B5D0B994();
  sub_1B5CE410C(v35, a2);
  pthread_mutex_lock(v6 + 1);
  v7 = sub_1B5D030FC(v6->__opaque, v35);
  v39 = 0;
  if (&v6->__opaque[8] == v7)
  {
    operator new();
  }

  v39 = *(v7 + 56);
  __p[0] = &v39;
  v8 = sub_1B5D0D54C(&v6->__opaque[24], v39);
  ++v8[8];
  pthread_mutex_unlock(v6 + 1);
  *a1 = v39;
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  pthread_mutex_lock(v6 + 1);
  v9 = *a1;
  if (*(*a1 + 8))
  {
    goto LABEL_12;
  }

  v10 = sub_1B5CE410C(__p, a2);
  if (v38 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = sub_1B5D0CC1C(v9, v11, a3);
  v13 = v12;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v22 = sub_1B5D02C64(*a1 + 48);
    v23 = sub_1B5CE410C(__p, v22);
    if (v38 >= 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = __p[0];
    }

    if (v38 >= 0)
    {
      v25 = HIBYTE(v38);
    }

    else
    {
      v25 = __p[1];
    }

    sub_1B5CE599C(a1 + 7, v24, v25);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[0]);
    }

    pthread_mutex_unlock(v6 + 1);
    v26 = sub_1B5D0B994();
    sub_1B5D0BA68(v26, *a1);
    result = 0;
    *a1 = 0;
    return result;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  pthread_mutex_unlock(v6 + 1);
  v14 = *(*a1 + 8);
  if (v14)
  {
    if (*(*a1 + 16) > 3uLL)
    {
      return sub_1B5D0D218(a1, v14);
    }

    if (setjmp(a1 + 86) != 1)
    {
      std::ios_base::clear((a1 + *(a1[7] - 24) + 56), 0);
      v27 = sub_1B5CE599C(a1 + 7, "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/compressed_connector.cpp", 83);
      v28 = sub_1B5CE599C(v27, "(", 1);
      v29 = MEMORY[0x1B8C87F00](v28, 66);
      v30 = sub_1B5CE599C(v29, ") [", 3);
      v31 = sub_1B5CE599C(v30, "cmmap_->size() >= 2", 19);
      v32 = sub_1B5CE599C(v31, "] ", 2);
      v33 = sub_1B5CE599C(v32, "file size is invalid: ", 22);
      v34 = strlen(a2);
      sub_1B5CE599C(v33, a2, v34);
      longjmp(a1 + 86, 1);
    }
  }

  else if (setjmp(a1 + 86) != 1)
  {
    std::ios_base::clear((a1 + *(a1[7] - 24) + 56), 0);
    v16 = sub_1B5CE599C(a1 + 7, "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/compressed_connector.cpp", 83);
    v17 = sub_1B5CE599C(v16, "(", 1);
    v18 = MEMORY[0x1B8C87F00](v17, 65);
    v19 = sub_1B5CE599C(v18, ") [", 3);
    v20 = sub_1B5CE599C(v19, "cmmap_->begin()", 15);
    v21 = sub_1B5CE599C(v20, "] ", 2);
    sub_1B5CE599C(v21, "matrix is NULL", 14);
    longjmp(a1 + 86, 1);
  }

  return 0;
}

void sub_1B5D0CB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D0CC1C(uint64_t a1, char *a2, _BYTE *a3)
{
  sub_1B5D0D504(a1);
  sub_1B5CE410C(&v51, a2);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  *(a1 + 24) = *&v51.st_dev;
  *(a1 + 40) = *&v51.st_uid;
  if (*a3 != 114)
  {
    goto LABEL_7;
  }

  if (a3[1])
  {
    if (a3[1] != 43 || a3[2])
    {
LABEL_7:
      if (setjmp((a1 + 336)) != 1)
      {
        std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
        v43 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/mmap.h", 65);
        v44 = sub_1B5CE599C(v43, "(", 1);
        v45 = MEMORY[0x1B8C87F00](v44, 167);
        v46 = sub_1B5CE599C(v45, ") [", 3);
        v47 = sub_1B5CE599C(v46, "false", 5);
        v48 = sub_1B5CE599C(v47, "] ", 2);
        v49 = sub_1B5CE599C(v48, "unknown open mode: ", 19);
        v50 = strlen(a2);
        sub_1B5CE599C(v49, a2, v50);
        longjmp((a1 + 336), 1);
      }

LABEL_8:
      sub_1B5D0D504(a1);
      return 0;
    }

    *(a1 + 532) = 514;
    v7 = open(a2, 514, 384);
    *(a1 + 528) = v7;
    if (v7 < 0)
    {
      if (setjmp((a1 + 336)) != 1)
      {
        std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
        v27 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/mmap.h", 65);
        v28 = sub_1B5CE599C(v27, "(", 1);
        v29 = MEMORY[0x1B8C87F00](v28, 171);
        v30 = sub_1B5CE599C(v29, ") [", 3);
        v31 = sub_1B5CE599C(v30, "(fd = ::open(filename, flag | O_BINARY, S_IRUSR | S_IWUSR)) >= 0", 64);
        v32 = sub_1B5CE599C(v31, "] ", 2);
        v33 = sub_1B5CE599C(v32, "open failed: ", 13);
        v34 = strlen(a2);
        sub_1B5CE599C(v33, a2, v34);
        longjmp((a1 + 336), 1);
      }

      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 532) = 0;
    v7 = open(a2, 0);
    *(a1 + 528) = v7;
    if (v7 < 0)
    {
      if (setjmp((a1 + 336)) != 1)
      {
        std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
        v8 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/mmap.h", 65);
        v9 = sub_1B5CE599C(v8, "(", 1);
        v10 = MEMORY[0x1B8C87F00](v9, 174);
        v11 = sub_1B5CE599C(v10, ") [", 3);
        v12 = sub_1B5CE599C(v11, "(fd = ::open(filename, flag | O_BINARY)) >= 0", 45);
        v13 = sub_1B5CE599C(v12, "] ", 2);
        v14 = sub_1B5CE599C(v13, "open failed: ", 13);
        v15 = strlen(a2);
        sub_1B5CE599C(v14, a2, v15);
        longjmp((a1 + 336), 1);
      }

      goto LABEL_8;
    }
  }

  if (fstat(v7, &v51) < 0)
  {
    if (setjmp((a1 + 336)) != 1)
    {
      std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
      v19 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/mmap.h", 65);
      v20 = sub_1B5CE599C(v19, "(", 1);
      v21 = MEMORY[0x1B8C87F00](v20, 178);
      v22 = sub_1B5CE599C(v21, ") [", 3);
      v23 = sub_1B5CE599C(v22, "fstat(fd, &st) >= 0", 19);
      v24 = sub_1B5CE599C(v23, "] ", 2);
      v25 = sub_1B5CE599C(v24, "failed to get file size: ", 25);
      v26 = strlen(a2);
      sub_1B5CE599C(v25, a2, v26);
      longjmp((a1 + 336), 1);
    }

    goto LABEL_8;
  }

  st_size = v51.st_size;
  *(a1 + 16) = v51.st_size;
  if (st_size)
  {
    v17 = mmap(0, st_size, *(a1 + 532) & 2 | 1u, 1, *(a1 + 528), 0);
    if (v17 == -1)
    {
      if (setjmp((a1 + 336)) != 1)
      {
        std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
        v35 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/mmap.h", 65);
        v36 = sub_1B5CE599C(v35, "(", 1);
        v37 = MEMORY[0x1B8C87F00](v36, 191);
        v38 = sub_1B5CE599C(v37, ") [", 3);
        v39 = sub_1B5CE599C(v38, "(p = reinterpret_cast<char*>(mmap(0, length, prot, MAP_SHARED, fd, 0))) != MAP_FAILED", 85);
        v40 = sub_1B5CE599C(v39, "] ", 2);
        v41 = sub_1B5CE599C(v40, "mmap() failed: ", 15);
        v42 = strlen(a2);
        sub_1B5CE599C(v41, a2, v42);
        longjmp((a1 + 336), 1);
      }

      goto LABEL_8;
    }

    v18 = v17;
    madvise(v17, *(a1 + 16), 1);
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 8) = v18;
  close(*(a1 + 528));
  *(a1 + 528) = -1;
  return 1;
}

uint64_t sub_1B5D0D218(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *(a1 + 32) = v3;
  v4 = *(a2 + 10);
  *(a1 + 34) = v4;
  if (v3)
  {
    if (v4)
    {
      v5 = *(a2 + 12);
      if (v5)
      {
        v6 = a2 + 16 + 4 * v3 + 4;
        *(a1 + 8) = a2 + 16;
        *(a1 + 16) = v6;
        *(a1 + 24) = v6 + 2 * v5;
        return 1;
      }

      if (setjmp((a1 + 344)) != 1)
      {
        std::ios_base::clear((a1 + 56 + *(*(a1 + 56) - 24)), 0);
        v20 = sub_1B5CE599C((a1 + 56), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/compressed_connector.cpp", 83);
        v21 = sub_1B5CE599C(v20, "(", 1);
        v22 = MEMORY[0x1B8C87F00](v21, 85);
        v23 = sub_1B5CE599C(v22, ") [", 3);
        v24 = sub_1B5CE599C(v23, "num_elements > 0", 16);
        v25 = sub_1B5CE599C(v24, "] ", 2);
        sub_1B5CE599C(v25, "number of elements is invalid", 29);
        longjmp((a1 + 344), 1);
      }
    }

    else if (setjmp((a1 + 344)) != 1)
    {
      std::ios_base::clear((a1 + 56 + *(*(a1 + 56) - 24)), 0);
      v14 = sub_1B5CE599C((a1 + 56), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/compressed_connector.cpp", 83);
      v15 = sub_1B5CE599C(v14, "(", 1);
      v16 = MEMORY[0x1B8C87F00](v15, 83);
      v17 = sub_1B5CE599C(v16, ") [", 3);
      v18 = sub_1B5CE599C(v17, "rsize_ > 0", 10);
      v19 = sub_1B5CE599C(v18, "] ", 2);
      sub_1B5CE599C(v19, "left size is invalid", 20);
      longjmp((a1 + 344), 1);
    }
  }

  else if (setjmp((a1 + 344)) != 1)
  {
    std::ios_base::clear((a1 + 56 + *(*(a1 + 56) - 24)), 0);
    v8 = sub_1B5CE599C((a1 + 56), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/compressed_connector.cpp", 83);
    v9 = sub_1B5CE599C(v8, "(", 1);
    v10 = MEMORY[0x1B8C87F00](v9, 82);
    v11 = sub_1B5CE599C(v10, ") [", 3);
    v12 = sub_1B5CE599C(v11, "lsize_ > 0", 10);
    v13 = sub_1B5CE599C(v12, "] ", 2);
    sub_1B5CE599C(v13, "left size is invalid", 20);
    longjmp((a1 + 344), 1);
  }

  return 0;
}

void *sub_1B5D0D504(uint64_t a1)
{
  v2 = *(a1 + 528);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(a1 + 528) = -1;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = munmap(result, *(a1 + 16));
  }

  *(a1 + 8) = 0;
  return result;
}

void *sub_1B5D0D54C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_1B5D0D638(uint64_t a1)
{
  sub_1B5D0D670(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D0D670(uint64_t a1)
{
  *a1 = &unk_1F2D55ED0;
  sub_1B5D0D504(a1);
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *(a1 + 48) = *MEMORY[0x1E69E54E8];
  *(a1 + 48 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 56) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 56) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 64));
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](a1 + 160);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t *sub_1B5D0D7DC(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1B8C87DE0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1B5D0D968(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1B8C88080](v1);
  _Unwind_Resume(a1);
}

void sub_1B5D0D9A0()
{
  std::ios_base::getloc((MEMORY[0x1E69E5300] + *(*MEMORY[0x1E69E5300] - 24)));
  v0 = std::locale::use_facet(&v1, MEMORY[0x1E69E5318]);
  (v0->__vftable[2].~facet_0)(v0, 10);
  std::locale::~locale(&v1);
  std::ostream::put();
  std::ostream::flush();
  exit(-1);
}

void *sub_1B5D0DA64(void *a1)
{
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1B8C87DF0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x1B8C88080](a1 + 53);
  return a1;
}

uint64_t sub_1B5D0DB30(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E0];
  v3 = *MEMORY[0x1E69E54E0];
  *a1 = *MEMORY[0x1E69E54E0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

void sub_1B5D0DC50(void *a1, __int128 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = *a2;
  if (v3 != *a2)
  {
    v6 = (a1 + 1);
    if (*(a2 + 3) <= *a1)
    {
      v7 = v4 + 1;
      do
      {
        if (*v7 != 0x7FFF)
        {
          sub_1B5D0DD84((a1 + 7), v7 - 1);
          sub_1B5D0DD84(v6, v7);
        }

        v8 = v7 + 1;
        v7 += 2;
      }

      while (v8 != v3);
    }

    else
    {
      do
      {
        sub_1B5D0DD84((a1 + 7), v4);
        sub_1B5D0DD84(v6, v4 + 1);
        v4 += 2;
      }

      while (v4 != v3);
    }

    v9 = (a1[2] - a1[1]) >> 1;
    sub_1B5D0DE58((a1 + 4), &v9);
  }
}

void *sub_1B5D0DD30(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_1B5D0DD84(uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_1B5D04FA0();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      sub_1B5D0DF78(v12);
    }

    v13 = (2 * v9);
    v14 = *a2;
    v15 = &v13[-(v8 >> 1)];
    *v13 = v14;
    v6 = v13 + 1;
    memcpy(v15, v7, v8);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_1B5D0DE58(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_1B5D04FA0();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1B5D0DF30(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_1B5D0DF30(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5D0DF78(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_1B5CE5968();
}

void *sub_1B5D0DFBC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    v2 = result[1] - *result;
    sub_1B5D0DF78(a2);
  }

  return result;
}

void sub_1B5D0E048(uint64_t a1)
{
  sub_1B5D0E080(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D0E080(uint64_t a1)
{
  *a1 = &unk_1F2D56158;
  *(a1 + 192) = &unk_1F2D56360;
  v2 = *(a1 + 200);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 + 176) = &unk_1F2D56440;
  v3 = *(a1 + 184);
  if (v3)
  {
    (*(*v3 + 8))(v3);
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

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return a1;
}

void sub_1B5D0E1A8(void *a1)
{
  *a1 = &unk_1F2D56440;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D0E234(void *a1)
{
  *a1 = &unk_1F2D56440;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1B5D0E2A0(void *a1)
{
  *a1 = &unk_1F2D56360;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D0E32C(void *a1)
{
  *a1 = &unk_1F2D56360;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

std::string *sub_1B5D0E3A4(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1B5D0E3EC(a1, __s, v4);
}

std::string *sub_1B5D0E3EC(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

uint64_t sub_1B5D0E4A8(uint64_t a1)
{
  result = a1 + 48;
  if (*(a1 + 71) < 0)
  {
    return *result;
  }

  return result;
}

void sub_1B5D0E4C4(uint64_t a1, const char *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 200))(a1);
  v5 = strlen(a2);
  v6 = sub_1B5D0EC50(v4, v5 + 1);
  strncpy(v6, a2, v5 + 1);
  v7 = strlen(a2);
  v8 = strlen(v6);
  if (v7)
  {
    v9 = &v6[v8];
    if (v6 != &v6[v8])
    {
      v9 = v6;
      do
      {
        if (*v9 == 10)
        {
          goto LABEL_7;
        }

        ++v9;
      }

      while (v9 != &v6[v8]);
      v9 = &v6[v8];
    }

LABEL_7:
    *v9 = 0;
    sub_1B5D04F58(1uLL);
  }

  memset(&v37, 0, sizeof(v37));
  v34 = 0;
  v35 = 0;
  v36 = 0;
  memset(v33, 0, sizeof(v33));
  v10 = (*(*a1 + 200))(a1);
  v11 = sub_1B5D0EC50(v10, 1);
  strncpy(v11, &v37, 1uLL);
  (*(*a1 + 72))(a1, v11);
  v12 = (*(*a1 + 200))(a1);
  v13 = sub_1B5D05010(*(v12 + 16));
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 48) = "BOS/EOS";
  *(v13 + 56) = "BOS/EOS";
  *(v13 + 124) = 2;
  v14 = (*(*a1 + 200))(a1);
  v15 = sub_1B5D05010(*(v14 + 16));
  *(v15 + 96) = 0u;
  *(v15 + 112) = 0u;
  *(v15 + 64) = 0u;
  *(v15 + 80) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 48) = "BOS/EOS";
  *(v15 + 56) = "BOS/EOS";
  *(v15 + 124) = 3;
  *(v13 + 48) = *(a1 + 8);
  **(a1 + 72) = v13;
  if (v35 == v34)
  {
    v21 = v13;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (*(*a1 + 200))(a1);
      v20 = sub_1B5D05010(*(v19 + 16));
      v21 = v20;
      *(v20 + 120) = 0;
      *(v20 + 104) = 0u;
      *(v20 + 88) = 0u;
      *(v20 + 72) = 0u;
      *(v20 + 56) = 0u;
      *(v20 + 40) = 0u;
      *(v20 + 24) = 0u;
      *(v20 + 8) = 0u;
      *v20 = v13;
      *(v13 + 8) = v20;
      *(v20 + 48) = *(a1 + 8) + v18;
      v22 = v34;
      v23 = v34 + v16 * 8;
      v24 = *(v34 + v16 * 8 + 23);
      if (v24 < 0)
      {
        v24 = *(v23 + 8);
      }

      *(v20 + 96) = v24;
      v25 = *(v23 + 23);
      if (v25 < 0)
      {
        v25 = *(v22 + v16 * 8 + 8);
      }

      *(v20 + 98) = v25;
      *(v20 + 124) = 0;
      *(v20 + 80) = 0;
      *(v20 + 112) = 0;
      v26 = (*(*a1 + 200))(a1);
      v27 = &v33[0][v16];
      v28 = SHIBYTE(v33[0][v16 + 2]);
      if (v28 < 0)
      {
        v29 = *v27;
        v28 = v27[1];
      }

      else
      {
        v29 = &v33[0][v16];
      }

      v30 = sub_1B5D0EC50(v26, v28 + 1);
      *(v21 + 56) = strncpy(v30, v29, v28 + 1);
      *(*(a1 + 96) + 8 * v18) = v21;
      v18 += *(v21 + 96);
      *(*(a1 + 72) + 8 * v18) = v21;
      ++v17;
      v16 += 3;
      v13 = v21;
    }

    while (v17 < 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3));
  }

  *(v21 + 8) = v15;
  *v15 = v21;
  __p = v33;
  sub_1B5CE5D7C(&__p);
  v33[0] = &v34;
  sub_1B5CE5D7C(v33);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_1B5D0EBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char **a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  a10 = &a16;
  sub_1B5CE5D7C(&a10);
  a16 = &a19;
  sub_1B5CE5D7C(&a16);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D0EC50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    operator new();
  }

  v3 = a2 + 1;
  v4 = v2[1];
  v5 = v2[2] - v4;
  v6 = v2[5];
  if (v6 >= v5 >> 4)
  {
LABEL_7:
    if (v3 <= v2[6])
    {
      v11 = v2[6];
    }

    operator new[]();
  }

  v7 = v5 >> 4;
  v8 = v2[4];
  v9 = (v4 + 16 * v6);
  while (1)
  {
    v10 = *v9;
    v9 += 2;
    if (v8 + v3 < v10)
    {
      break;
    }

    v8 = 0;
    ++v6;
    v2[4] = 0;
    v2[5] = v6;
    if (v7 == v6)
    {
      goto LABEL_7;
    }
  }

  result = *(v4 + 16 * v6 + 8) + v8;
  v2[4] = v8 + v3;
  return result;
}

uint64_t sub_1B5D0EE84(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1B5D04FA0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_1B5CE5E20(result, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(result + 8) - *result;
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
    result = sub_1B5CE5E78(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  v3[1] = v7;
  return result;
}

void sub_1B5D0EFB4(void *a1)
{
  sub_1B5D0EFEC(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D0EFEC(void *a1)
{
  *a1 = &unk_1F2D56070;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[2 * v5 + 1])
      {
        MEMORY[0x1B8C880C0](v2[2 * v5 + 1], 0x1000C8077774924);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 4);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_1B5D0F094(void *result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 >= a3 || !a4)
  {
    return result;
  }

  v5 = a3;
  v7 = result;
  if (result[15] == result[16])
  {
    v8 = (*(*result + 88))(result);
    v9 = v8 + 4;
    v11 = v7[15];
    v10 = v7[16];
    v12 = (v10 - v11) >> 3;
    if (v8 + 4 > v12)
    {
      v13 = v9 - v12;
      v14 = v7[17];
      if (v13 > (v14 - v10) >> 3)
      {
        if (!(v9 >> 61))
        {
          v15 = v14 - v11;
          v16 = (v14 - v11) >> 2;
          if (v16 <= v9)
          {
            v16 = v8 + 4;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          sub_1B5D0F384(v17);
        }

        sub_1B5D04FA0();
      }

      v19 = 0;
      v20 = (v13 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v21 = vdupq_n_s64(v20);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v19), xmmword_1B5DC2630)));
        if (v22.i8[0])
        {
          *(v10 + 8 * v19) = 0;
        }

        if (v22.i8[4])
        {
          *(v10 + 8 * v19 + 8) = 0;
        }

        v19 += 2;
      }

      while (v20 - ((v13 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v19);
      v18 = v10 + 8 * v13;
      goto LABEL_22;
    }

    if (v9 < v12)
    {
      v18 = v11 + 8 * v9;
LABEL_22:
      v7[16] = v18;
    }
  }

  v23 = (*(*v7 + 88))(v7);
  if (v23 < v5)
  {
    v5 = v23;
  }

  (*(*v7 + 288))(v7, a2, 1);
  result = (*(*v7 + 288))(v7, v5, 1);
  v24 = a2 + 1;
  if (a2 + 1 < v5)
  {
    do
    {
      result = (*(*v7 + 288))(v7, v24++, 2);
    }

    while (v5 != v24);
  }

  *(v7[15] + 8 * a2) = a4;
  return result;
}

void sub_1B5D0F384(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5D0F3CC(void *a1, uint64_t a2, char a3)
{
  v5 = a1[18];
  if (v5 == a1[19])
  {
    v7 = (*(*a1 + 88))(a1) + 4;
    v5 = a1[18];
    v8 = a1[19];
    if (v7 <= &v8[-v5])
    {
      if (v7 < &v8[-v5])
      {
        a1[19] = v5 + v7;
      }
    }

    else
    {
      v9 = a1[20];
      if (v9 - v8 < v7 - &v8[-v5])
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1B5D04FA0();
      }

      v10 = v7 + v5;
      bzero(v8, v7 - &v8[-v5]);
      a1[19] = v10;
      v5 = a1[18];
    }
  }

  *(v5 + a2) = a3;
}

uint64_t sub_1B5D0F530(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  if (v2 == *(a1 + 128))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t sub_1B5D0F54C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  if (v2 == *(a1 + 152))
  {
    return 0;
  }

  else
  {
    return *(v2 + a2);
  }
}

uint64_t sub_1B5D0F578(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = &unk_1F2D560D0;
  v6[1] = 0;
  v6[2] = a4;
  v6[3] = a3;
  v7 = 0;
  v4 = sub_1B5D0F5F0(a1, a2, v6);
  sub_1B5D14FF0(v6);
  return v4;
}

void sub_1B5D0F5DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D14FF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D0F5F0(void *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  if ((a2 - 513) < 0xFFFFFFFFFFFFFE00)
  {
    v4 = "nbest size must be 1 <= nbest <= 512";
    goto LABEL_17;
  }

  v6 = a2;
  do
  {
    if (!(*(*a1 + 128))(a1))
    {
      break;
    }

    v7 = a1[21];
    if (v7)
    {
      if ((sub_1B5D195C8(v7, a1, a3) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      sub_1B5D0F7CC(a1, a3);
    }

    --v6;
  }

  while (v6);
  if (a1[21])
  {
    v8 = (*(*a1 + 64))(a1);
    v11 = v8 + (*(*a1 + 88))(a1);
    v9 = *(a1[21] + 80);
    sub_1B5D1867C();
  }

  if (sub_1B5D15060(a3, 1))
  {
    *(*(a3 + 24) + (*(a3 + 8))++) = 0;
  }

  if ((*(a3 + 33) & 1) != 0 || (result = *(a3 + 24)) == 0)
  {
    v4 = "output buffer overflow";
LABEL_17:
    (*(*a1 + 320))(a1, v4);
    return 0;
  }

  return result;
}

void sub_1B5D0F7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1B5D05220(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D0F7CC(uint64_t a1, uint64_t a2)
{
  v3 = *((*(*a1 + 16))(a1) + 8);
  v4 = (v3 + 8);
  if (*(v3 + 8))
  {
    do
    {
      v5 = *(v3 + 48);
      v6 = *(v3 + 96);
      if (sub_1B5D15060(a2, v6))
      {
        memcpy((*(a2 + 24) + *(a2 + 8)), v5, v6);
        *(a2 + 8) += v6;
      }

      if (sub_1B5D15060(a2, 1))
      {
        *(*(a2 + 24) + (*(a2 + 8))++) = 9;
      }

      v7 = sub_1B5D15130(a2, *(v3 + 56));
      if (sub_1B5D15060(v7, 1))
      {
        *(*(a2 + 24) + (*(a2 + 8))++) = 10;
      }

      v3 = *v4;
      v8 = *v4;
      v9 = *(v8 + 8);
      v4 = (v8 + 8);
    }

    while (v9);
  }

  return sub_1B5D15130(a2, "EOS\n");
}

uint64_t sub_1B5D0F900(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = &unk_1F2D560D0;
  v6[1] = 0;
  v6[2] = a4;
  v6[3] = a3;
  v7 = 0;
  v4 = sub_1B5D0F978(a1, a2, v6);
  sub_1B5D14FF0(v6);
  return v4;
}

void sub_1B5D0F964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D14FF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D0F978(void *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  if (!a2)
  {
    v9 = "node is NULL";
LABEL_16:
    (*(*a1 + 320))(a1, v9);
    return 0;
  }

  v6 = a1[21];
  if (v6)
  {
    v7 = *(a2 + 124);
    if (v7 <= 4)
    {
      v8 = *(v6 + qword_1B5DC46C8[v7]);
      sub_1B5D1867C();
    }
  }

  else
  {
    v10 = *(a2 + 48);
    v11 = *(a2 + 96);
    if (sub_1B5D15060(a3, v11))
    {
      memcpy((*(a3 + 24) + *(a3 + 8)), v10, v11);
      *(a3 + 8) += v11;
    }

    if (sub_1B5D15060(a3, 1))
    {
      *(*(a3 + 24) + (*(a3 + 8))++) = 9;
    }

    sub_1B5D15130(a3, *(a2 + 56));
  }

  if (sub_1B5D15060(a3, 1))
  {
    *(*(a3 + 24) + (*(a3 + 8))++) = 0;
  }

  if ((*(a3 + 33) & 1) != 0 || (result = *(a3 + 24)) == 0)
  {
    v9 = "output buffer overflow";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B5D0FAE8(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = &unk_1F2D560D0;
  v5[1] = 0;
  v5[2] = a3;
  v5[3] = a2;
  v6 = 0;
  v3 = sub_1B5D0FB60(a1, v5);
  sub_1B5D14FF0(v5);
  return v3;
}

void sub_1B5D0FB4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D14FF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D0FB60(void *a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  v4 = a1[21];
  if (v4)
  {
    if ((sub_1B5D195C8(v4, a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_1B5D0F7CC(a1, a2);
  }

  if (sub_1B5D15060(a2, 1))
  {
    *(*(a2 + 24) + (*(a2 + 8))++) = 0;
  }

  if ((*(a2 + 33) & 1) != 0 || (result = *(a2 + 24)) == 0)
  {
    (*(*a1 + 320))(a1, "output buffer overflow");
    return 0;
  }

  return result;
}

uint64_t sub_1B5D0FC24(void *a1, uint64_t a2)
{
  v4 = sub_1B5D0FC68(a1);

  return sub_1B5D0F5F0(a1, a2, v4);
}

uint64_t sub_1B5D0FC68(uint64_t a1)
{
  if (!*(a1 + 184))
  {
    operator new();
  }

  return *(a1 + 184);
}

uint64_t sub_1B5D0FD08(void *a1, uint64_t a2)
{
  v4 = sub_1B5D0FC68(a1);

  return sub_1B5D0F978(a1, a2, v4);
}

uint64_t sub_1B5D0FD4C(void *a1)
{
  v2 = sub_1B5D0FC68(a1);

  return sub_1B5D0FB60(a1, v2);
}

double sub_1B5D0FD88(uint64_t a1)
{
  v1 = sub_1B5D05010(*(*(a1 + 200) + 16));
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[6] = 0u;
  v1[7] = 0u;
  return result;
}

uint64_t sub_1B5D0FE14(void *a1)
{
  if (!a1[26])
  {
    return 0;
  }

  v1 = (*(*a1 + 200))(a1);
  v2 = sub_1B5D100B8(v1);
  v3 = v2[2];
  v4 = v2[3];
  if (v3 == v4)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *v3;
    v7 = (v4 - v3) >> 3;
    if (v7 >= 2)
    {
      v8 = 0;
      v9 = v3;
      do
      {
        v10 = &v9[v8 + 1];
        v11 = (2 * v8) | 1;
        v12 = 2 * v8 + 2;
        if (v12 < v7)
        {
          v13 = *(*v10 + 16);
          v14 = *(v10[1] + 16);
          v10 += v13 > v14;
          if (v13 > v14)
          {
            v11 = v12;
          }
        }

        *v9 = *v10;
        v9 = v10;
        v8 = v11;
      }

      while (v11 <= ((v7 - 2) >> 1));
      v15 = (v4 - 8);
      if (v15 == v10)
      {
        *v10 = v6;
      }

      else
      {
        *v10 = *v15;
        *v15 = v6;
        sub_1B5D21E2C(v3, (v10 + 1), v10 + 1 - v3);
      }
    }

    v4 = v2[3] - 8;
    v2[3] = v4;
    result = *v6;
    v17 = v6[1];
    if (*(*v6 + 124) == 2)
    {
      break;
    }

    if (v17 && (v18 = *(v17 + 32), v19 = v2[1], v18 <= v19))
    {
      if (v18 == v19)
      {
        goto LABEL_38;
      }

      if (v5 > 15)
      {
        return 0;
      }

      ++v5;
    }

    else
    {
      v20 = *(result + 40);
      if (v20)
      {
        do
        {
          sub_1B5D21CE4(v2 + 6);
          v22 = v21;
          v23 = *v20;
          v24 = v6[4] - *(*v20 + 96);
          v25 = *(v20 + 4);
          v21[3] = v6[3] + v25;
          v26 = *(v23 + 112) + v25 + v6[3];
          v21[1] = v6;
          v21[2] = v26;
          *v21 = v23;
          v21[4] = v24;
          v28 = v2[3];
          v27 = v2[4];
          if (v28 >= v27)
          {
            v30 = v2[2];
            v31 = (v28 - v30) >> 3;
            if ((v31 + 1) >> 61)
            {
              sub_1B5D04FA0();
            }

            v32 = v27 - v30;
            v33 = v32 >> 2;
            if (v32 >> 2 <= (v31 + 1))
            {
              v33 = v31 + 1;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFF8)
            {
              v34 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v33;
            }

            if (v34)
            {
              sub_1B5D051D8(v34);
            }

            v35 = (8 * v31);
            *v35 = v22;
            v29 = 8 * v31 + 8;
            v36 = v2[2];
            v37 = v2[3] - v36;
            v38 = v35 - v37;
            memcpy(v35 - v37, v36, v37);
            v39 = v2[2];
            v2[2] = v38;
            v2[3] = v29;
            v2[4] = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *v28 = v21;
            v29 = (v28 + 1);
          }

          v2[3] = v29;
          sub_1B5D21E2C(v2[2], v29, (v29 - v2[2]) >> 3);
          v20 = v20[1];
        }

        while (v20);
        v4 = v2[3];
      }
    }

    v3 = v2[2];
    if (v3 == v4)
    {
      return 0;
    }
  }

  if (!v17)
  {
    return result;
  }

LABEL_38:
  v40 = *v6;
  do
  {
    v41 = *v17;
    v40[1] = *v17;
    *v41 = v40;
    v17 = *(v17 + 8);
    v40 = v41;
  }

  while (v17);
  return result;
}

uint64_t sub_1B5D100B8(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    operator new();
  }

  return *(a1 + 64);
}

void sub_1B5D10188(void *a1)
{
  sub_1B5D101C0(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D101C0(void *a1)
{
  *a1 = &unk_1F2D55DD0;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x1B8C880C0](v2[v5], 0x1020C80E349F4B1);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1B5D10264(void *a1)
{
  sub_1B5D1029C(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D1029C(void *a1)
{
  *a1 = &unk_1F2D56010;
  sub_1B5D101C0(a1 + 6);
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

double sub_1B5D10308(uint64_t a1, float a2)
{
  result = a2;
  *(a1 + 24) = result;
  return result;
}

void sub_1B5D1032C(uint64_t *a1, const void *a2, size_t a3)
{
  (**a1)(a1);
  v6 = a3 + 4;
  sub_1B5D10474(a1 + 9, a3 + 4);
  sub_1B5D10474(a1 + 12, a3 + 4);
  if (((*(*a1 + 168))(a1, 64) & 1) != 0 || (*(*a1 + 168))(a1, 4))
  {
    v7 = (*(*a1 + 200))(a1);
    v8 = sub_1B5D0EC50(v7, a3);
    memcpy(v8, a2, a3);
    a2 = v8;
  }

  a1[1] = a2;
  a1[2] = a3;
  bzero(a1[9], 8 * v6);
  v9 = a1[12];

  bzero(v9, 8 * v6);
}

void sub_1B5D10474(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_1B5D051D8(v10);
      }

      sub_1B5D04FA0();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

uint64_t sub_1B5D10574(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(*a1 + 80);

  return v5(a1, __s, v4);
}

double sub_1B5D10690(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = v1[2];
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  v3 = v1[4];
  if (v3)
  {
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
  }

  v4 = v1[6];
  if (v4)
  {
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
  }

  v5 = *(a1 + 184);
  if (v5)
  {
    *(v5 + 8) = 0;
  }

  *(a1 + 104) = *(a1 + 96);
  *(a1 + 80) = *(a1 + 72);
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 152) = *(a1 + 144);
  result = 0.75;
  *(a1 + 24) = xmmword_1B5DC3A00;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 208) = 0;
  return result;
}

void sub_1B5D106F8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D56158;
  *(a1 + 24) = xmmword_1B5DC3A00;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = a2;
  *(a1 + 176) = &unk_1F2D56440;
  *(a1 + 184) = 0;
  operator new();
}

void sub_1B5D1097C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10)
{
  v20 = v14[9];
  if (v20)
  {
    v14[10] = v20;
    operator delete(v20);
  }

  *v12 = v18;
  if (*v13)
  {
    (*(**v13 + 8))(*v13);
  }

  v14[5] = v17;
  v21 = v14[6];
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v14[3] = v16;
  v22 = v14[4];
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v14[1] = v15;
  v23 = v14[2];
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  MEMORY[0x1B8C880F0](v14, 0xB1C40E0AC591ALL);
  *(v10 + 176) = a10;
  v24 = *(v10 + 184);
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(v10 + 144);
  if (v25)
  {
    *(v10 + 152) = v25;
    operator delete(v25);
  }

  v26 = *(v10 + 120);
  if (v26)
  {
    *(v10 + 128) = v26;
    operator delete(v26);
  }

  v27 = *v11;
  if (*v11)
  {
    *(v10 + 104) = v27;
    operator delete(v27);
  }

  v28 = *(v10 + 72);
  if (v28)
  {
    *(v10 + 80) = v28;
    operator delete(v28);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*v19);
  }

  _Unwind_Resume(a1);
}

void *sub_1B5D10B3C(void *result)
{
  if (!((result[2] - *result) >> 16))
  {
    v1 = result[1] - *result;
    operator new();
  }

  return result;
}

void sub_1B5D10BF4(void *a1)
{
  sub_1B5D10C2C(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D10C2C(void *a1)
{
  *a1 = &unk_1F2D560B0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = (v2 + 24 * v4 - 8);
      v6 = -24 * v4;
      do
      {
        sub_1B5D066D0(v5, 0);
        v5 -= 3;
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x1B8C880C0](v3, 0x1060C8035ECB431);
  }

  return a1;
}

void sub_1B5D10CD0(void *a1)
{
  *a1 = &unk_1F2D56400;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D10D5C(void *a1)
{
  *a1 = &unk_1F2D56400;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1B5D10DC8(void *a1)
{
  *a1 = &unk_1F2D56420;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D10E54(void *a1)
{
  *a1 = &unk_1F2D56420;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1B5D10EC0(void *a1)
{
  *a1 = &unk_1F2D56380;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D10F4C(void *a1)
{
  *a1 = &unk_1F2D56380;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1B5D10FB8(void *a1)
{
  *a1 = &unk_1F2D563A0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D11044(void *a1)
{
  *a1 = &unk_1F2D563A0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1B5D110B0(void *a1)
{
  sub_1B5D110E8(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D110E8(void *a1)
{
  *a1 = &unk_1F2D55E30;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        v7 = *(v6 - 8);
        if (v7)
        {
          v8 = (v6 + (v7 << 7) - 24);
          v9 = -128 * v7;
          do
          {
            sub_1B5D05220(v8, 0);
            v8 -= 16;
            v9 += 128;
          }

          while (v9);
        }

        MEMORY[0x1B8C880C0](v6 - 16, 0x1070C80FE750B47);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1B5D111C8(void *a1)
{
  sub_1B5D11200(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D11200(void *a1)
{
  *a1 = &unk_1F2D55DB0;
  sub_1B5D10C2C(a1 + 12);
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  a1[7] = &unk_1F2D56400;
  v3 = a1[8];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  a1[5] = &unk_1F2D56420;
  v4 = a1[6];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[3] = &unk_1F2D56380;
  v5 = a1[4];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  a1[1] = &unk_1F2D563A0;
  v6 = a1[2];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

CFStringRef LXAnalyzerCandidateCopySurface(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    sub_1B5D11434(__p, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *__p = *(a1 + 16);
    v6 = *(a1 + 32);
  }

  if (v6 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  if (v6 >= 0)
  {
    v2 = HIBYTE(v6);
  }

  else
  {
    v2 = __p[1];
  }

  v3 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], v1, v2);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1B5D11418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1B5D11434(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0xA)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if ((a3 | 3) == 0xB)
      {
        v3 = 13;
      }

      else
      {
        v3 = (a3 | 3) + 1;
      }

      sub_1B5D0DF78(v3);
    }

    sub_1B5D114C8();
  }

  __dst[23] = a3;
  v4 = 2 * a3 + 2;

  return memmove(__dst, __src, v4);
}

BOOL LXAnalyzerCandidateGetFlags(uint64_t a1)
{
  v2 = *(a1 + 64);
  v1 = *(a1 + 72);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = v2 + 16;
  do
  {
    v4 = *(v3 - 16);
    if (!v4)
    {
      __assert_rtn("LXEntryGetMetaFlags", "LXEntry.cpp", 45, "entry");
    }

    v5 = *(v4 + 52) & 0x3800000;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 == v1;
    }

    v3 += 16;
  }

  while (!v6);
  return v5 != 0;
}

uint64_t LXAnalyzerCandidateEnumerateMorphemeLexiconEntries(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  v3 = *(result + 72);
  if (v2 != v3)
  {
    v5 = v2 + 16;
    do
    {
      v7 = 0;
      result = (*(a2 + 16))(a2, *(v5 - 16), &v7);
      if (v7)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5 == v3;
      }

      v5 += 16;
    }

    while (!v6);
  }

  return result;
}

uint64_t LXAnalyzerCandidateEnumerateMorphemeLexiconEntriesAndLengths(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  v3 = *(result + 72);
  if (v2 != v3)
  {
    do
    {
      v6 = 0;
      result = (*(a2 + 16))(a2, *v2, *(v2 + 8), &v6);
      v2 += 16;
      if (v6)
      {
        v5 = 1;
      }

      else
      {
        v5 = v2 == v3;
      }
    }

    while (!v5);
  }

  return result;
}

unint64_t sub_1B5D116A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 136))(a1);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v8 = (*(*a1 + 128))(a1, a2, i);
      sub_1B5D1177C(*(a3 + 24), v8, 0);
      result = (*(*a1 + 136))(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1B5D1177C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  if (!a1)
  {
    sub_1B5CEC274();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t sub_1B5D117D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (*(a1 + 616) - *(a1 + 608) == 8)
  {
    return *(a1 + 24) + 12 * (v3 >> 8) + 12 * a3;
  }

  else
  {
    return *(a1 + 24) + 12 * *(*(*(a1 + 632) + 8 * *(a1 + 576)) + ((v3 >> 6) & 0x3FFFFFC) + 4 * a3);
  }
}

void sub_1B5D1183C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1B5D11848(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1B5D1186C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 20) = 0;
}

uint64_t sub_1B5D11880(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(*a1 + 56);

  return v5(a1, __s, v4);
}

uint64_t sub_1B5D118F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 12) = 0;
  *(a4 + 4) = 0;
  *(a4 + 20) = 0;
  v5 = *(result + 608);
  v6 = *(result + 616);
  if (v5 != v6)
  {
    v7 = *(result + 576);
    if (v7 < (v6 - v5) >> 3)
    {
      result = *(v5 + 8 * v7);
      if (result)
      {
        v8 = a3;
        v9 = 0;
        result = (*(*result + 80))(result, a2, a3, &v9);
        if (result)
        {
          *(a4 + 8) = v9;
        }

        *(a4 + 12) = v8;
      }
    }
  }

  return result;
}

uint64_t sub_1B5D119B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 608);
  v5 = *(a1 + 616);
  if (v4 == v5 || (v6 = *(a1 + 576), v6 >= (v5 - v4) >> 3))
  {
    result = 0;
  }

  else
  {
    result = *(v4 + 8 * v6);
    if (result)
    {
      v9 = 0;
      v10[0] = &unk_1F2D55428;
      v10[1] = a4;
      v10[2] = &v9;
      v10[3] = v10;
      (*(*result + 88))(result, a2, a3, v10);
      sub_1B5D11AAC(v10);
      result = v9;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D11A98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D11AAC(uint64_t a1)
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

uint64_t sub_1B5D11B38(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56B38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D11B78(uint64_t result, int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 8);
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = (*v6)++;
  v8 = v5 + 24 * v7;
  *(v8 + 8) = v3;
  *(v8 + 12) = v4;
  return result;
}

__n128 sub_1B5D11BAC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D55428;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D11C54(uint64_t result)
{
  if (*(result + 52) != 3)
  {
    v1 = result;
    result = sub_1B5D11CBC((result + 608));
    v1[74] = v1[73];
    v1[80] = v1[79];
    v2 = v1[2];
    if (v2)
    {
      if (*(v2 + 16))
      {
        v3 = sub_1B5D11D28();
        result = sub_1B5D11DFC(v3, v1[2]);
        v1[2] = 0;
      }
    }
  }

  return result;
}

void *sub_1B5D11CBC(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_1B5D11D28()
{
  pthread_mutex_lock(&stru_1EB90C790);
  if (!qword_1EB90CA10)
  {
    operator new();
  }

  pthread_mutex_unlock(&stru_1EB90C790);
  return qword_1EB90CA10;
}

void sub_1B5D11DD4(_Unwind_Exception *a1)
{
  sub_1B5D0BFF4(*(v2 + 40));
  sub_1B5D0C050(*(v2 + 16));
  MEMORY[0x1B8C880F0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D11DFC(uint64_t a1, unint64_t a2)
{
  pthread_mutex_lock((a1 + 64));
  if (a2)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = a1 + 40;
      do
      {
        v6 = *(v4 + 32);
        v7 = v6 >= a2;
        v8 = v6 < a2;
        if (v7)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * v8);
      }

      while (v4);
      if (v5 != a1 + 40 && *(v5 + 32) <= a2)
      {
        v9 = *(v5 + 64) - 1;
        *(v5 + 64) = v9;
        if (!v9)
        {
          v10 = sub_1B5D030FC(a1 + 8, (v5 + 40));
          v11 = v10;
          v12 = *(v10 + 8);
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            v14 = v10;
            do
            {
              v13 = v14[2];
              v15 = *v13 == v14;
              v14 = v13;
            }

            while (!v15);
          }

          if (*(a1 + 8) == v10)
          {
            *(a1 + 8) = v13;
          }

          v16 = *(a1 + 16);
          --*(a1 + 24);
          sub_1B5D0BC10(v16, v11);
          if (*(v11 + 55) < 0)
          {
            operator delete(*(v11 + 32));
          }

          operator delete(v11);
          v17 = *(v5 + 8);
          if (v17)
          {
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            v19 = v5;
            do
            {
              v18 = v19[2];
              v15 = *v18 == v19;
              v19 = v18;
            }

            while (!v15);
          }

          if (*(a1 + 32) == v5)
          {
            *(a1 + 32) = v18;
          }

          v20 = *(a1 + 40);
          --*(a1 + 48);
          sub_1B5D0BC10(v20, v5);
          if (*(v5 + 63) < 0)
          {
            operator delete(*(v5 + 40));
          }

          operator delete(v5);
          (*(*a2 + 8))(a2);
        }
      }
    }
  }

  return pthread_mutex_unlock((a1 + 64));
}

void sub_1B5D11FA4(uint64_t a1)
{
  sub_1B5D11FDC(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D11FDC(uint64_t a1)
{
  *a1 = &unk_1F2D565E8;
  v2 = (a1 + 64);
  pthread_mutex_lock((a1 + 64));
  v3 = *(a1 + 8);
  if (v3 != (a1 + 16))
  {
    do
    {
      v4 = v3[7];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (a1 + 16));
  }

  pthread_mutex_unlock(v2);
  sub_1B5D0C214(a1 + 56);
  sub_1B5D0BFF4(*(a1 + 40));
  sub_1B5D0C050(*(a1 + 16));
  return a1;
}

uint64_t sub_1B5D120CC(uint64_t a1, char *a2, _BYTE *a3)
{
  v6 = (a1 + 72);
  sub_1B5D0E3A4((a1 + 72), a2);
  v7 = sub_1B5D11D28();
  *(a1 + 16) = sub_1B5D1274C(v7, v6);
  pthread_mutex_lock(v7 + 1);
  v8 = *(a1 + 16);
  if (*(v8 + 8) || (*(a1 + 95) < 0 ? (v9 = *v6) : (v9 = v6), (sub_1B5D129DC(v8, v9, a3) & 1) != 0))
  {
    pthread_mutex_unlock(v7 + 1);
    v10 = *(a1 + 16);
    v11 = *(v10 + 16);
    if (v11 <= 0x63)
    {
      if (setjmp((a1 + 384)) != 1)
      {
        std::ios_base::clear((a1 + 96 + *(*(a1 + 96) - 24)), 0);
        v17 = sub_1B5CE599C((a1 + 96), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/dictionary.cpp", 73);
        v18 = sub_1B5CE599C(v17, "(", 1);
        v19 = MEMORY[0x1B8C87F00](v18, 115);
        v20 = sub_1B5CE599C(v19, ") [", 3);
        v21 = sub_1B5CE599C(v20, "dmmap_->size() >= 100", 21);
        v22 = sub_1B5CE599C(v21, "] ", 2);
        v23 = sub_1B5CE599C(v22, "dictionary file is broken: ", 27);
        v24 = strlen(a2);
        sub_1B5CE599C(v23, a2, v24);
        longjmp((a1 + 384), 1);
      }
    }

    else
    {
      v12 = *(v10 + 8);
      if (v11 == (*v12 ^ 0xEF718F77))
      {
        *(a1 + 48) = v12[1];
        *(a1 + 52) = v12[2];
        *(a1 + 56) = v12[3];
        *(a1 + 60) = v12[4];
        *(a1 + 64) = v12[5];
        v13 = v12[7];
        v14 = v12[6];
        v16 = v12[8];
        v15 = v12[9];
        if ((v15 & 0x3FFFFF) == 0)
        {
          *(a1 + 8) = v15 >> 28;
          *(a1 + 12) = (v15 >> 26) & 3;
          *(a1 + 13) = HIBYTE(v15) & 3;
          *(a1 + 14) = (v15 >> 22) & 3;
        }

        *(a1 + 40) = v12 + 10;
        operator new();
      }

      if (setjmp((a1 + 384)) != 1)
      {
        std::ios_base::clear((a1 + 96 + *(*(a1 + 96) - 24)), 0);
        v25 = sub_1B5CE599C((a1 + 96), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/dictionary.cpp", 73);
        v26 = sub_1B5CE599C(v25, "(", 1);
        v27 = MEMORY[0x1B8C87F00](v26, 125);
        v28 = sub_1B5CE599C(v27, ") [", 3);
        v29 = sub_1B5CE599C(v28, "(magic ^ DictionaryMagicID) == dmmap_->size()", 45);
        v30 = sub_1B5CE599C(v29, "] ", 2);
        v31 = sub_1B5CE599C(v30, "dictionary file is broken: ", 27);
        v32 = strlen(a2);
        sub_1B5CE599C(v31, a2, v32);
        longjmp((a1 + 384), 1);
      }
    }
  }

  else
  {
    v33 = sub_1B5D02C64(*(a1 + 16) + 48);
    v34 = sub_1B5CE410C(__p, v33);
    if ((v39 & 0x80u) == 0)
    {
      v35 = v34;
    }

    else
    {
      v35 = __p[0];
    }

    if ((v39 & 0x80u) == 0)
    {
      v36 = v39;
    }

    else
    {
      v36 = __p[1];
    }

    sub_1B5CE599C((a1 + 96), v35, v36);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    pthread_mutex_unlock(v7 + 1);
  }

  (*(*a1 + 24))(a1);
  return 0;
}

unint64_t sub_1B5D1274C(pthread_mutex_t *a1, void *a2)
{
  pthread_mutex_lock(a1 + 1);
  v4 = sub_1B5D030FC(a1->__opaque, a2);
  v8 = 0;
  if (&a1->__opaque[8] == v4)
  {
    operator new();
  }

  v8 = *(v4 + 56);
  __p[0] = &v8;
  v5 = sub_1B5D0D54C(&a1->__opaque[24], v8);
  ++v5[8];
  pthread_mutex_unlock(a1 + 1);
  return v8;
}

void sub_1B5D12998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D129DC(uint64_t a1, char *a2, _BYTE *a3)
{
  sub_1B5D0D504(a1);
  sub_1B5CE410C(&v51, a2);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  *(a1 + 24) = *&v51.st_dev;
  *(a1 + 40) = *&v51.st_uid;
  if (*a3 != 114)
  {
    goto LABEL_7;
  }

  if (a3[1])
  {
    if (a3[1] != 43 || a3[2])
    {
LABEL_7:
      if (setjmp((a1 + 336)) != 1)
      {
        std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
        v43 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/mmap.h", 65);
        v44 = sub_1B5CE599C(v43, "(", 1);
        v45 = MEMORY[0x1B8C87F00](v44, 167);
        v46 = sub_1B5CE599C(v45, ") [", 3);
        v47 = sub_1B5CE599C(v46, "false", 5);
        v48 = sub_1B5CE599C(v47, "] ", 2);
        v49 = sub_1B5CE599C(v48, "unknown open mode: ", 19);
        v50 = strlen(a2);
        sub_1B5CE599C(v49, a2, v50);
        longjmp((a1 + 336), 1);
      }

LABEL_8:
      sub_1B5D0D504(a1);
      return 0;
    }

    *(a1 + 532) = 514;
    v7 = open(a2, 514, 384);
    *(a1 + 528) = v7;
    if (v7 < 0)
    {
      if (setjmp((a1 + 336)) != 1)
      {
        std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
        v27 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/mmap.h", 65);
        v28 = sub_1B5CE599C(v27, "(", 1);
        v29 = MEMORY[0x1B8C87F00](v28, 171);
        v30 = sub_1B5CE599C(v29, ") [", 3);
        v31 = sub_1B5CE599C(v30, "(fd = ::open(filename, flag | O_BINARY, S_IRUSR | S_IWUSR)) >= 0", 64);
        v32 = sub_1B5CE599C(v31, "] ", 2);
        v33 = sub_1B5CE599C(v32, "open failed: ", 13);
        v34 = strlen(a2);
        sub_1B5CE599C(v33, a2, v34);
        longjmp((a1 + 336), 1);
      }

      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 532) = 0;
    v7 = open(a2, 0);
    *(a1 + 528) = v7;
    if (v7 < 0)
    {
      if (setjmp((a1 + 336)) != 1)
      {
        std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
        v8 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/mmap.h", 65);
        v9 = sub_1B5CE599C(v8, "(", 1);
        v10 = MEMORY[0x1B8C87F00](v9, 174);
        v11 = sub_1B5CE599C(v10, ") [", 3);
        v12 = sub_1B5CE599C(v11, "(fd = ::open(filename, flag | O_BINARY)) >= 0", 45);
        v13 = sub_1B5CE599C(v12, "] ", 2);
        v14 = sub_1B5CE599C(v13, "open failed: ", 13);
        v15 = strlen(a2);
        sub_1B5CE599C(v14, a2, v15);
        longjmp((a1 + 336), 1);
      }

      goto LABEL_8;
    }
  }

  if (fstat(v7, &v51) < 0)
  {
    if (setjmp((a1 + 336)) != 1)
    {
      std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
      v19 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/mmap.h", 65);
      v20 = sub_1B5CE599C(v19, "(", 1);
      v21 = MEMORY[0x1B8C87F00](v20, 178);
      v22 = sub_1B5CE599C(v21, ") [", 3);
      v23 = sub_1B5CE599C(v22, "fstat(fd, &st) >= 0", 19);
      v24 = sub_1B5CE599C(v23, "] ", 2);
      v25 = sub_1B5CE599C(v24, "failed to get file size: ", 25);
      v26 = strlen(a2);
      sub_1B5CE599C(v25, a2, v26);
      longjmp((a1 + 336), 1);
    }

    goto LABEL_8;
  }

  st_size = v51.st_size;
  *(a1 + 16) = v51.st_size;
  if (st_size)
  {
    v17 = mmap(0, st_size, *(a1 + 532) & 2 | 1u, 1, *(a1 + 528), 0);
    if (v17 == -1)
    {
      if (setjmp((a1 + 336)) != 1)
      {
        std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
        v35 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/mmap.h", 65);
        v36 = sub_1B5CE599C(v35, "(", 1);
        v37 = MEMORY[0x1B8C87F00](v36, 191);
        v38 = sub_1B5CE599C(v37, ") [", 3);
        v39 = sub_1B5CE599C(v38, "(p = reinterpret_cast<char*>(mmap(0, length, prot, MAP_SHARED, fd, 0))) != MAP_FAILED", 85);
        v40 = sub_1B5CE599C(v39, "] ", 2);
        v41 = sub_1B5CE599C(v40, "mmap() failed: ", 15);
        v42 = strlen(a2);
        sub_1B5CE599C(v41, a2, v42);
        longjmp((a1 + 336), 1);
      }

      goto LABEL_8;
    }

    v18 = v17;
    madvise(v17, *(a1 + 16), 1);
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 8) = v18;
  close(*(a1 + 528));
  *(a1 + 528) = -1;
  return 1;
}

uint64_t sub_1B5D12FD8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9[4] = *MEMORY[0x1E69E9840];
  sub_1B5CF45AC(0, 0, a2, a3);
  v7[0] = &unk_1F2D55638;
  v7[3] = v7;
  v8 = v4;
  sub_1B5D130A0(v9, v7);
  sub_1B5D13120(v7);
  sub_1B5D131A0((a1 + 8), &v8);
  sub_1B5D132A8(&v8, 0);
  sub_1B5D13120(v9);
  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t sub_1B5D130A0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_1B5D13120(uint64_t a1)
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

uint64_t *sub_1B5D131A0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = a2 + 1;
  sub_1B5D132A8(a1, v4);
  v7 = (a1 + 4);
  v6 = a1[4];
  a1[4] = 0;
  if (v6 == a1 + 1)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v10 = a2[4];
  v9 = a2 + 4;
  v8 = v10;
  if (v10)
  {
    if (v8 == v5)
    {
      *v7 = a1 + 1;
      (*(**v9 + 24))(*v9, a1 + 1);
      return a1;
    }

    *v7 = v8;
  }

  else
  {
    v9 = a1 + 4;
  }

  *v9 = 0;
  return a1;
}

uint64_t *sub_1B5D132A8(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v4 = v2;
    v3 = result[4];
    if (!v3)
    {
      sub_1B5CEC274();
    }

    return (*(*v3 + 48))(v3, &v4);
  }

  return result;
}

uint64_t sub_1B5D1331C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56B98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D133EC(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v6 = 0;
  v4 = sub_1B5CF3300();
  sub_1B5CF34FC(v4, *(a1 + 8), a2);
  _Block_object_dispose(v5, 8);
}

void sub_1B5D134A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D134BC(uint64_t a1, char a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  result = sub_1B5D13508(*(*(a1 + 40) + 24), a2);
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1B5D13508(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_1B5CEC274();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void sub_1B5D13558(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((*(*a1 + 112))(a1))
  {
    if (a4)
    {
      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x2000000000;
      v12 = 0;
      sub_1B5CF3300();
      v8 = a1[1];
      off_1EE895050();
      sub_1B5CF34CC(v10, v9, a2);
      _Block_object_dispose(v11, 8);
    }

    else
    {
      LODWORD(v11[0]) = 0;
      v13 = 0;
      if ((*(*a1 + 128))(a1, a2, v11))
      {
        sub_1B5D136E8(*(a3 + 24), v11[0], 0, 0, &v13);
      }
    }
  }
}

void sub_1B5D136D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D136E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  if (!a1)
  {
    sub_1B5CEC274();
  }

  return (*(*a1 + 48))(a1, &v6, v7, a5);
}

uint64_t sub_1B5D13744(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 40);
  v7 = off_1EE895050();
  result = sub_1B5D136E8(*(v8 + 24), v9, v7, v10, *(*(a1 + 32) + 8) + 24);
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1B5D137A8(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v7 = sub_1B5CF3300();
    v8 = sub_1B5CF352C(v7, a1[1], a2);
    *a3 = v8;
    return v8 != 0;
  }

  return result;
}

uint64_t sub_1B5D1381C(uint64_t a1, __int128 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v11 = *a2;
  if (!a4)
  {
    return v11;
  }

  v4 = a4;
  while (1)
  {
    v7 = *a3;
    v8 = sub_1B5CF3300();
    *&v11 = sub_1B5CF349C(v8, *(a1 + 8), &v11);
    *(&v11 + 1) = v9;
    if (!sub_1B5CF3568(&v11))
    {
      break;
    }

    ++a3;
    if (!--v4)
    {
      return v11;
    }
  }

  return 0;
}

uint64_t sub_1B5D138B4(uint64_t a1, const void *a2, size_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = (*(*a1 + 104))(a1);
  v13 = v6;
  v12 = (*(*a1 + 120))(a1, &v12, a2, a3);
  v13 = v7;
  result = (*(*a1 + 112))(a1, &v12);
  if (result)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a3 < 0x17)
      {
        v11 = a3;
        if (a3)
        {
          memmove(&__p, a2, a3);
        }

        *(&__p + a3) = 0;
        operator new();
      }

      operator new();
    }

    sub_1B5D114C8();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D13AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_1B5D11AAC(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D13B10(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56B18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D13B50(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = a1[3];
  v10 = v9 + v8;
  v11 = a1[1];
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
  }

  else
  {
    v13 = *(v11 + 23);
  }

  v14 = *a3;
  if (v13 < v10)
  {
    std::string::resize(a1[1], v9 + v8, 0);
    v11 = a1[1];
    v9 = a1[3];
    LOBYTE(v12) = *(v11 + 23);
  }

  v15 = v11;
  if ((v12 & 0x80) != 0)
  {
    v15 = *v11;
  }

  if (v8)
  {
    memmove((v15 + v9), v14, v8);
    v11 = a1[1];
    LOBYTE(v12) = *(v11 + 23);
  }

  v16 = *a2;
  if ((v12 & 0x80) != 0)
  {
    v11 = *v11;
  }

  v17 = *(a1[4] + 24);

  return sub_1B5D136E8(v17, v16, v11, v10, a4);
}

__n128 sub_1B5D13C38(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D553D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D13CE4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    v14 = 0;
    v8 = 0;
    v12 = (*(*result + 104))(result);
    v13 = v9;
    v11 = 0;
    do
    {
      v12 = (*(*v7 + 120))(v7, &v12, v8 + a2, 1);
      v13 = v10;
      result = (*(*v7 + 112))(v7, &v12);
      if (!result)
      {
        break;
      }

      result = (*(*v7 + 128))(v7, &v12, &v11);
      if (result)
      {
        result = sub_1B5D136E8(*(a4 + 24), v11, a2, ++v8, &v14);
        if (v14)
        {
          return result;
        }
      }

      else
      {
        ++v8;
      }
    }

    while (v8 < a3);
  }

  return result;
}

uint64_t sub_1B5D13E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = (*(*a1 + 104))(a1);
  v11[1] = v8;
  v12[0] = (*(*a1 + 120))(a1, v11, a2, a3);
  v12[1] = v9;
  return (*(*a1 + 128))(a1, v12, a4);
}

BOOL sub_1B5D13F00(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
  (*(*a1 + 72))(a1, 0, 0);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v7 = *a3;
  v6 = *(a3 + 8);
  v21 = &v24;
  while (v7 != v6)
  {
    LODWORD(__p) = *v7;
    sub_1B5D14260(&v21, &__p);
    ++v7;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  __p = 0;
  v19 = 0;
  v20 = 0;
  v9 = *a2;
  v8 = a2[1];
  if (v9 == v8)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  else
  {
    do
    {
      v10 = v9;
      if (*(v9 + 23) < 0)
      {
        v10 = *v9;
      }

      v17 = v10;
      sub_1B5D140B0(&v21, &v17);
      v11 = *(v9 + 23);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v11 = v9[1];
      }

      v17 = v11;
      sub_1B5D14180(&__p, &v17);
      v9 += 3;
    }

    while (v9 != v8);
    v13 = v21;
    v12 = v22;
    v14 = __p;
  }

  v15 = sub_1B5CFD430(a1[1], (v12 - v13) >> 3, v13, v14, v24);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    operator delete(v13);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  return v15 == 0;
}

void sub_1B5D14068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D140B0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_1B5D04FA0();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_1B5D0F384(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1B5D14180(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1B5D04FA0();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_1B5CE1E28(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

uint64_t *sub_1B5D14260(uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      sub_1B5D04FA0();
    }

    v11 = v5 - v8;
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
      sub_1B5D0DF30(v12);
    }

    v13 = (4 * (v9 >> 2));
    *v13 = *a2;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v14 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

BOOL sub_1B5D14348(void *a1, uint64_t **a2)
{
  (*(*a1 + 72))(a1, 0, 0);
  memset(v24, 0, sizeof(v24));
  LODWORD(v21) = 1;
  v5 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v6 = 2;
    do
    {
      sub_1B5D0DE58(v24, &v21);
      LODWORD(v21) = v6;
      v5 = *a2;
      v4 = a2[1];
    }

    while (0xAAAAAAAAAAAAAAABLL * (v4 - *a2) >= v6++);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  __p = 0;
  v19 = 0;
  v20 = 0;
  if (v5 == v4)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  else
  {
    do
    {
      v8 = v5;
      if (*(v5 + 23) < 0)
      {
        v8 = *v5;
      }

      v17 = v8;
      sub_1B5D140B0(&v21, &v17);
      v9 = *(v5 + 23);
      if ((v9 & 0x8000000000000000) != 0)
      {
        v9 = v5[1];
      }

      v17 = v9;
      sub_1B5D14180(&__p, &v17);
      v5 += 3;
    }

    while (v5 != v4);
    v11 = v21;
    v10 = v22;
    v12 = __p;
  }

  v13 = a1[1];
  v14 = v24[0];
  v15 = sub_1B5CFD430(v13, (v10 - v11) >> 3, v11, v12, v24[0]);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    operator delete(v11);
  }

  if (v14)
  {
    operator delete(v14);
  }

  return v15 == 0;
}

void sub_1B5D144CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1B5D14510@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  __len = 0;
  v3 = sub_1B5CF468C(*(a1 + 8), &__len);
  return sub_1B5D5EC18(a2, v3, __len);
}

uint64_t sub_1B5D14558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D55378;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D145FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D1461C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56B08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D14678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  if (!a1)
  {
    sub_1B5CEC274();
  }

  return (*(*a1 + 48))(a1, &v6, v7, a5);
}

uint64_t sub_1B5D146DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D55378;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D14770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D55320;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D14814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D14834(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56AF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D14898(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D55320;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D1492C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

BOOL sub_1B5D14988(uint64_t *a1, unint64_t a2, unsigned __int8 **a3, uint64_t *a4, void *a5)
{
  (*(*a1 + 72))(a1, 0, 0);
  __p = 0;
  v16 = 0;
  v17 = 0;
  if (a5)
  {
    p_p = &__p;
    if (a2)
    {
      v10 = 8 * a2;
      do
      {
        v18 = *a5;
        sub_1B5D14260(&p_p, &v18);
        ++a5;
        v10 -= 8;
      }

      while (v10);
    }
  }

  else
  {
    LODWORD(p_p) = 1;
    if (a2)
    {
      v11 = 2;
      do
      {
        sub_1B5D0DE58(&__p, &p_p);
        LODWORD(p_p) = v11;
        v12 = v11++;
      }

      while (v12 <= a2);
    }
  }

  v13 = sub_1B5CFD430(a1[1], a2, a3, a4, __p);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13 == 0;
}

void sub_1B5D14AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D14AC4(void *a1)
{
  *a1 = &unk_1F2D56850;
  v1 = (a1 + 2);
  sub_1B5D132A8(a1 + 1, 0);
  sub_1B5D13120(v1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D14B3C(void *a1)
{
  *a1 = &unk_1F2D56850;
  v2 = (a1 + 2);
  sub_1B5D132A8(a1 + 1, 0);
  sub_1B5D13120(v2);
  return a1;
}

void sub_1B5D14B94(uint64_t a1)
{
  sub_1B5D14BCC(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D14BCC(uint64_t a1)
{
  *a1 = &unk_1F2D55EF0;
  sub_1B5D0D504(a1);
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *(a1 + 48) = *MEMORY[0x1E69E54E8];
  *(a1 + 48 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 56) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 56) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 64));
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](a1 + 160);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1B5D14D38(uint64_t a1)
{
  sub_1B5D14D70(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D14D70(uint64_t a1)
{
  *a1 = &unk_1F2D56608;
  sub_1B5D11C54(a1);
  v2 = *(a1 + 632);
  if (v2)
  {
    *(a1 + 640) = v2;
    operator delete(v2);
  }

  if (*(a1 + 608))
  {
    sub_1B5D11CBC((a1 + 608));
    operator delete(*(a1 + 608));
  }

  v3 = *(a1 + 584);
  if (v3)
  {
    *(a1 + 592) = v3;
    operator delete(v3);
  }

  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  v4 = MEMORY[0x1E69E54E8];
  v5 = *MEMORY[0x1E69E54E8];
  *(a1 + 96) = *MEMORY[0x1E69E54E8];
  *(a1 + 96 + *(v5 - 24)) = *(v4 + 24);
  *(a1 + 104) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](a1 + 208);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return a1;
}

uint64_t sub_1B5D14F18(uint64_t a1)
{
  *(a1 + 72) = 0;
  *a1 = &unk_1F2D56608;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  sub_1B5D0218C((a1 + 96));
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 641) = 0u;
  return a1;
}

void sub_1B5D14F9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D14FB8(uint64_t a1)
{
  sub_1B5D14FF0(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D14FF0(uint64_t a1)
{
  *a1 = &unk_1F2D560D0;
  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
    }

    *(a1 + 24) = 0;
  }

  return a1;
}

BOOL sub_1B5D15060(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v5 + a2;
  if (v3)
  {
    if (v6 >= v4)
    {
      if (!v4)
      {
        *(a1 + 16) = 0x2000;
        operator new[]();
      }

      do
      {
        v7 = v6 >= 2 * v4;
        v4 *= 2;
      }

      while (v7);
      *(a1 + 16) = v4;
      operator new[]();
    }

    return 1;
  }

  else
  {
    v7 = v6 >= v4;
    result = v6 < v4;
    v9 = v7;
    *(a1 + 33) = v9;
  }

  return result;
}

uint64_t sub_1B5D15130(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (sub_1B5D15060(a1, v4))
  {
    memcpy((*(a1 + 24) + *(a1 + 8)), __s, v4);
    *(a1 + 8) += v4;
  }

  return a1;
}

BOOL sub_1B5D151A0(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1B5D15224();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

std::string *sub_1B5D1523C(std::string *__dst, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1B5CE4AC4(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *&__dst->__r_.__value_.__l.__data_ = *a2;
    __dst->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  v5 = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if (v5 < 0)
  {
    size = __dst->__r_.__value_.__l.__size_;
    if (!size)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(&__dst->__r_.__value_.__s + 23))
    {
      goto LABEL_13;
    }

    size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  }

  if (v5 >= 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  if (v7->__r_.__value_.__s.__data_[size - 1] != 47)
  {
    std::string::push_back(__dst, 47);
  }

LABEL_13:
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  return std::string::append(__dst, v9, v10);
}

void sub_1B5D152F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D1530C(void *a1)
{
  v1 = MEMORY[0x1E69E54C8];
  v2 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x1B8C87DF0](a1 + 2);

  return std::istream::~istream();
}

void sub_1B5D153D8(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  sub_1B5CE410C(v17, a2);
  if (a4)
  {
    goto LABEL_9;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = a1 + 16;
  do
  {
    v9 = sub_1B5D03480((v7 + 32), v17);
    if ((v9 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v7 = *(v7 + ((v9 >> 4) & 8));
  }

  while (v7);
  if (v8 == a1 + 16 || (sub_1B5D03480(v17, (v8 + 32)) & 0x80) != 0)
  {
LABEL_9:
    if (*(a3 + 23) < 0)
    {
      sub_1B5CE4AC4(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      __p[2] = *(a3 + 16);
    }

    v10 = __p[0];
    v20[0] = __p[1];
    *(v20 + 7) = *(&__p[1] + 7);
    v11 = HIBYTE(__p[2]);
    memset(__p, 0, sizeof(__p));
    v19 = v17;
    v12 = sub_1B5D1558C(a1 + 8, v17);
    v13 = v12;
    if (*(v12 + 79) < 0)
    {
      operator delete(v12[7]);
    }

    v14 = v20[0];
    v13[7] = v10;
    v13[8] = v14;
    *(v13 + 71) = *(v20 + 7);
    *(v13 + 79) = v11;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1B5D15544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1B5D1558C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((sub_1B5D03480(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((sub_1B5D03480(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_1B5D156D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D156E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D156E4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1B5D15730(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1B5D15730(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1B5D15788(void *a1)
{
  sub_1B5D157C0(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D157C0(void *a1)
{
  *a1 = &unk_1F2D55D68;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  a1[1] = 0;
  a1[2] = &unk_1F2D563C0;
  v3 = a1[3];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1B5D15878(void *a1)
{
  *a1 = &unk_1F2D563C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D15904(void *a1)
{
  *a1 = &unk_1F2D563C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_1B5D15974(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) && *(a1 + 24))
  {
    v2 = "atomic model replacement is not supported";
  }

  else
  {
    v2 = "current model is not available";
  }

  sub_1B5D21E88(v2);
  if (a2)
  {
    (*(*a2 + 48))(a2);
  }

  return 0;
}

void sub_1B5D15A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 48))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D15A54(void *a1)
{
  *a1 = &unk_1F2D563E0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 48))(v1);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D15AE0(void *a1)
{
  *a1 = &unk_1F2D563E0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  return a1;
}

uint64_t sub_1B5D15B4C(uint64_t a1)
{
  if (*(a1 + 8) && *(a1 + 24))
  {
    operator new();
  }

  sub_1B5D21E88("Model is not available");
  return 0;
}

uint64_t sub_1B5D15BDC(uint64_t a1)
{
  if (*(a1 + 8) && *(a1 + 24))
  {
    operator new();
  }

  sub_1B5D21E88("Model is not available");
  return 0;
}

uint64_t sub_1B5D15D78(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 80);
  if (v1)
  {
    return *(v1 + 240);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D15D94(uint64_t a1)
{
  *a1 = &unk_1F2D55E90;
  v2 = a1 + 128;
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  *(a1 + 128) = *MEMORY[0x1E69E54E8];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 136) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 136) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 144));
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](a1 + 240);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v6 = (a1 + 32);
  sub_1B5CE5D7C(&v6);
  sub_1B5D15F34(*(a1 + 16));
  return a1;
}

void sub_1B5D15F34(void *a1)
{
  if (a1)
  {
    sub_1B5D15F34(*a1);
    sub_1B5D15F34(a1[1]);
    sub_1B5D15730((a1 + 4));

    operator delete(a1);
  }
}

void sub_1B5D15F88(uint64_t a1)
{
  sub_1B5D15D94(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D15FC4(void *a1)
{
  *a1 = &unk_1F2D56300;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x1B8C880F0](v1, 0x1000C4000313F17);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D16040(void *a1)
{
  *a1 = &unk_1F2D56300;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x1B8C880F0](v2, 0x1000C4000313F17);
  }

  return a1;
}

void sub_1B5D1609C(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_1B5CE57CC(a1, cf);
  }
}

uint64_t **sub_1B5D160FC(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      (*(*v3 + 336))(v3);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

void sub_1B5D1618C(uint64_t a1)
{
  sub_1B5D161C4(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D161C4(uint64_t a1)
{
  *a1 = &unk_1F2D56AE8;
  v2 = (a1 + 8);
  sub_1B5CE57CC((a1 + 24), 0);
  sub_1B5CE5794((a1 + 16), 0);
  sub_1B5D160FC(v2, 0);
  return a1;
}

__n128 sub_1B5D16230(__int128 *a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (qword_1EB90C930 != -1)
  {
    dispatch_once(&qword_1EB90C930, &unk_1F2D550D8);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = *a1;
  *(Instance + 32) = *(a1 + 2);
  *(Instance + 16) = v4;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v5 = *(a1 + 24);
  *(Instance + 56) = *(a1 + 10);
  *(Instance + 40) = v5;
  *(Instance + 72) = 0;
  *(Instance + 80) = 0;
  *(Instance + 64) = 0;
  result = a1[3];
  *(Instance + 64) = result;
  *(Instance + 80) = *(a1 + 8);
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  return result;
}

void sub_1B5D162E4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

void sub_1B5D16318(void ***a1)
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
        v4 -= 72;
        sub_1B5D1639C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5D1639C(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_1B5D16400(&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1B5D16400(void ***a1)
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
        v4 -= 2;
        sub_1B5D05220(v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1B5D16488()
{
  qword_1EB90C938 = 0;
  unk_1EB90C940 = "_LXAnalyzerCandidate";
  qword_1EB90C948 = 0;
  unk_1EB90C950 = 0;
  qword_1EB90C958 = sub_1B5D164DC;
  unk_1EB90C960 = 0u;
  unk_1EB90C970 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EB90C998 = result;
  return result;
}

void sub_1B5D164DC(uint64_t a1)
{
  v3 = (a1 + 64);
  sub_1B5D16400(&v3);
  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void LXAnalyzerCreate(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (qword_1EB90C9A0 != -1)
  {
    dispatch_once(&qword_1EB90C9A0, &unk_1F2D57890);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = &unk_1F2D56AE8;
  *(Instance + 24) = 0;
  *(Instance + 40) = 0;
  *(Instance + 32) = 0;
  sub_1B5D1609C((Instance + 40), a1);
  operator new();
}

void sub_1B5D16650(_Unwind_Exception *a1)
{
  sub_1B5CE57CC(v3, 0);
  sub_1B5CE5794((v1 + 32), 0);
  sub_1B5D160FC(v2, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D16680()
{
  qword_1EB90C9A8 = 0;
  unk_1EB90C9B0 = "LXAnalyzer";
  qword_1EB90C9B8 = 0;
  unk_1EB90C9C0 = 0;
  qword_1EB90C9C8 = sub_1B5D166D4;
  unk_1EB90C9D0 = 0u;
  unk_1EB90C9E0 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EB90CA08 = result;
  return result;
}

uint64_t LXAnalyzerSetSupplementalLexicons(uint64_t a1, CFArrayRef theArray, CFErrorRef *a3)
{
  v3 = a3;
  if (!a1)
  {
    if (a3)
    {
      v22 = @"LXAnalyzer not provided";
      goto LABEL_45;
    }

    return 0;
  }

  v28 = *(a1 + 24);
  if (!*v28)
  {
    if (a3)
    {
      v23 = 0;
      *a3 = sub_1B5D4E9A0(@"Tagger does not exist", 0);
      if (v3)
      {
        goto LABEL_43;
      }

      return v23;
    }

    return 0;
  }

  v5 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  while (1)
  {
    if (v5 >= CFArrayGetCount(theArray))
    {
      v24 = (***v28)(*v28, &v33);
      v23 = v24;
      if (v3)
      {
        v25 = v24;
      }

      else
      {
        v25 = 1;
      }

      if (v25)
      {
        goto LABEL_42;
      }

      v26 = sub_1B5D4E9A0(@"Failed to load lexicon", 0);
LABEL_40:
      v23 = 0;
      *v3 = v26;
      goto LABEL_42;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    v8 = CFGetTypeID(ValueAtIndex);
    if (v8 != CFDictionaryGetTypeID())
    {
      if (!v3)
      {
        goto LABEL_41;
      }

      v26 = sub_1B5D4E9A0(@"Array should contains dictionaries", 0);
      goto LABEL_40;
    }

    Value = CFDictionaryGetValue(ValueAtIndex, @"locale");
    v10 = CFDictionaryGetValue(ValueAtIndex, @"lexiconDataFile");
    if (!Value)
    {
      break;
    }

    v11 = v10;
    sub_1B5CE4DD0(Value, v31);
    sub_1B5CE4DD0(v11, __p);
    v12 = v34;
    if (v34 >= v35)
    {
      v14 = v33;
      v15 = v34 - v33;
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 4);
      v17 = v16 + 1;
      if (v16 + 1 > 0x555555555555555)
      {
        sub_1B5D04FA0();
      }

      if (0x5555555555555556 * ((v35 - v33) >> 4) > v17)
      {
        v17 = 0x5555555555555556 * ((v35 - v33) >> 4);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v35 - v33) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v18 = 0x555555555555555;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        if (v18 <= 0x555555555555555)
        {
          operator new();
        }

        sub_1B5CE5968();
      }

      v19 = 16 * ((v34 - v33) >> 4);
      *(v19 + 16) = v32;
      *v19 = *v31;
      v31[1] = 0;
      v32 = 0;
      *(v19 + 24) = *__p;
      *(v19 + 40) = v30;
      __p[0] = 0;
      __p[1] = 0;
      v20 = 48 * v16 + 48;
      v21 = 48 * v16 - v15;
      v30 = 0;
      v31[0] = 0;
      memcpy((v19 - v15), v14, v15);
      v33 = v21;
      v34 = v20;
      v35 = 0;
      if (v14)
      {
        operator delete(v14);
        v34 = v20;
        v3 = a3;
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v34 = v20;
        v3 = a3;
      }
    }

    else
    {
      v13 = *v31;
      *(v34 + 16) = v32;
      *v12 = v13;
      v31[1] = 0;
      v32 = 0;
      v31[0] = 0;
      *(v12 + 24) = *__p;
      *(v12 + 40) = v30;
      v34 = v12 + 48;
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }

    ++v5;
  }

  if (v3)
  {
    v26 = sub_1B5D4E9A0(@"Locale was not provided", 0);
    goto LABEL_40;
  }

LABEL_41:
  v23 = 0;
LABEL_42:
  v31[0] = &v33;
  sub_1B5D84CE0(v31);
  if (v3)
  {
LABEL_43:
    if ((v23 & 1) == 0)
    {
      v22 = @"Failed to set additional lexicons";
LABEL_45:
      v23 = 0;
      *v3 = sub_1B5D4E9A0(v22, 0);
    }
  }

  return v23;
}

void sub_1B5D16A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  a16 = &a22;
  sub_1B5D84CE0(&a16);
  _Unwind_Resume(a1);
}

void LXAnalyzerEnumerateCandidates(uint64_t a1, CFStringRef theString, unsigned int a3, uint64_t a4)
{
  v7 = *(a1 + 24);
  CharactersPtr = CFStringGetCharactersPtr(theString);
  Length = CFStringGetLength(theString);
  if (!CharactersPtr)
  {
    operator new[]();
  }

  if ((a3 & 0x10) != 0)
  {
    v10 = 156;
  }

  else
  {
    v10 = 148;
  }

  (*(**v7 + 56))(*v7, CharactersPtr, 2 * Length, 0, v10 & 0xFFDFFFFF | (((a3 >> 5) & 1) << 21));
  sub_1B5D84D64(&v18, v7, Length);
  v11 = v18;
  for (i = v19; v11 != i; v11 = (v11 + 72))
  {
    v13 = sub_1B5D16230(v11);
    v15 = v14;
    v20 = v14;
    v17 = 0;
    (*(a4 + 16))(a4, v14, &v17, v13);
    v16 = v17;
    if (v15)
    {
      CFRelease(v15);
    }

    if (v16)
    {
      break;
    }
  }

  v20 = &v18;
  sub_1B5D16318(&v20);
}

void LXAnalyzerEnumerateCandidatesWithLattice(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  v6 = a3 >> 5;
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  sub_1B5D7CED0(__p, v8);
  v9 = v22;
  if ((v22 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v22 & 0x80u) != 0)
  {
    v9 = __p[1];
  }

  if ((v5 & 0x10) != 0)
  {
    v11 = 156;
  }

  else
  {
    v11 = 148;
  }

  (*(**v7 + 64))(*v7, v8, v10, 2 * v9, 0, v11 & 0xFFDFFFFF | ((v6 & 1) << 21));
  sub_1B5D84D64(&v19, v7, 0);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v19;
  for (i = v20; v12 != i; v12 = (v12 + 72))
  {
    v14 = sub_1B5D16230(v12);
    v16 = v15;
    __p[0] = v15;
    v18 = 0;
    (*(a4 + 16))(a4, v15, &v18, v14);
    v17 = v18;
    if (v16)
    {
      CFRelease(v16);
    }

    if (v17)
    {
      break;
    }
  }

  __p[0] = &v19;
  sub_1B5D16318(__p);
}

void sub_1B5D16E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D16E50(uint64_t a1)
{
  sub_1B5D16E88(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D16E88(uint64_t a1)
{
  *a1 = &unk_1F2D55E70;
  v2 = a1 + 88;
  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  *(a1 + 88) = *MEMORY[0x1E69E54E8];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 96) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  *(a1 + 96) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 104));
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](a1 + 200);
  *(a1 + 72) = &unk_1F2D56090;
  v5 = *(a1 + 80);
  if (v5)
  {
    MEMORY[0x1B8C880C0](v5, 0x1000C8077774924);
  }

  *(a1 + 56) = &unk_1F2D56090;
  v6 = *(a1 + 64);
  if (v6)
  {
    MEMORY[0x1B8C880C0](v6, 0x1000C8077774924);
  }

  *(a1 + 40) = &unk_1F2D56090;
  v7 = *(a1 + 48);
  if (v7)
  {
    MEMORY[0x1B8C880C0](v7, 0x1000C8077774924);
  }

  *(a1 + 24) = &unk_1F2D56090;
  v8 = *(a1 + 32);
  if (v8)
  {
    MEMORY[0x1B8C880C0](v8, 0x1000C8077774924);
  }

  *(a1 + 8) = &unk_1F2D56090;
  v9 = *(a1 + 16);
  if (v9)
  {
    MEMORY[0x1B8C880C0](v9, 0x1000C8077774924);
  }

  return a1;
}

uint64_t sub_1B5D170E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *((*(*a2 + 16))(a2) + 8);
  v5 = (v4 + 8);
  if (*(v4 + 8))
  {
    do
    {
      v6 = *(v4 + 48);
      v7 = *(v4 + 96);
      if (sub_1B5D15060(a3, v7))
      {
        memcpy((*(a3 + 24) + *(a3 + 8)), v6, v7);
        *(a3 + 8) += v7;
      }

      if (sub_1B5D15060(a3, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 9;
      }

      v8 = sub_1B5D15130(a3, *(v4 + 56));
      if (sub_1B5D15060(v8, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 10;
      }

      v4 = *v5;
      v9 = *v5;
      v10 = *(v9 + 8);
      v5 = (v9 + 8);
    }

    while (v10);
  }

  sub_1B5D15130(a3, "EOS\n");
  return 1;
}

uint64_t sub_1B5D17214(uint64_t a1, uint64_t a2)
{
  sub_1B5D0AA34(&v93, a2, "output-format-type");
  *(a1 + 568) = sub_1B5D170E4;
  *(a1 + 576) = 0;
  if ((v95 & 0x80) == 0)
  {
    if (v95 != 4)
    {
      if (v95 != 6)
      {
        goto LABEL_19;
      }

      v4 = v93 == 1634427255 && WORD2(v93) == 26996;
      goto LABEL_12;
    }

    v5 = sub_1B5D18450;
    if (v93 == 1701736302)
    {
LABEL_123:
      *(a1 + 568) = v5;
      *(a1 + 576) = 0;
LABEL_221:
      v61 = 1;
      goto LABEL_224;
    }

    v6 = &v93;
LABEL_18:
    v5 = sub_1B5D17EC4;
    if (*v6 != 1886221668)
    {
      goto LABEL_19;
    }

    goto LABEL_123;
  }

  if (v94 == 4)
  {
    v6 = v93;
    v5 = sub_1B5D18450;
    if (*v93 == 1701736302)
    {
      goto LABEL_123;
    }

    goto LABEL_18;
  }

  if (v94 != 6)
  {
    goto LABEL_19;
  }

  v4 = *v93 == 1634427255 && v93[2] == 26996;
LABEL_12:
  v5 = sub_1B5D18458;
  if (v4)
  {
    goto LABEL_123;
  }

LABEL_19:
  sub_1B5CE410C(&v92, "%m\\t%H\\n");
  sub_1B5CE410C(&v91, "%m\\t%H\\n");
  sub_1B5CE410C(&v90, "");
  sub_1B5CE410C(&v89, "EOS\\n");
  sub_1B5CE410C(&v88, "");
  sub_1B5CE410C(&v87, "node-format");
  sub_1B5CE410C(&v86, "bos-format");
  sub_1B5CE410C(&v85, "eos-format");
  sub_1B5CE410C(&v84, "unk-format");
  sub_1B5CE410C(&v83, "eon-format");
  v7 = v95;
  if ((v95 & 0x80u) != 0)
  {
    v7 = v94;
  }

  if (v7)
  {
    std::string::append(&v87, "-", 1uLL);
    if ((v95 & 0x80u) == 0)
    {
      v8 = &v93;
    }

    else
    {
      v8 = v93;
    }

    if ((v95 & 0x80u) == 0)
    {
      v9 = v95;
    }

    else
    {
      v9 = v94;
    }

    std::string::append(&v87, v8, v9);
    std::string::append(&v86, "-", 1uLL);
    if ((v95 & 0x80u) == 0)
    {
      v10 = &v93;
    }

    else
    {
      v10 = v93;
    }

    if ((v95 & 0x80u) == 0)
    {
      v11 = v95;
    }

    else
    {
      v11 = v94;
    }

    std::string::append(&v86, v10, v11);
    std::string::append(&v85, "-", 1uLL);
    if ((v95 & 0x80u) == 0)
    {
      v12 = &v93;
    }

    else
    {
      v12 = v93;
    }

    if ((v95 & 0x80u) == 0)
    {
      v13 = v95;
    }

    else
    {
      v13 = v94;
    }

    std::string::append(&v85, v12, v13);
    std::string::append(&v84, "-", 1uLL);
    if ((v95 & 0x80u) == 0)
    {
      v14 = &v93;
    }

    else
    {
      v14 = v93;
    }

    if ((v95 & 0x80u) == 0)
    {
      v15 = v95;
    }

    else
    {
      v15 = v94;
    }

    std::string::append(&v84, v14, v15);
    std::string::append(&v83, "-", 1uLL);
    if ((v95 & 0x80u) == 0)
    {
      v16 = &v93;
    }

    else
    {
      v16 = v93;
    }

    if ((v95 & 0x80u) == 0)
    {
      v17 = v95;
    }

    else
    {
      v17 = v94;
    }

    std::string::append(&v83, v16, v17);
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v87;
    }

    else
    {
      v18 = v87.__r_.__value_.__r.__words[0];
    }

    sub_1B5D0AA34(&__p, a2, v18);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      if (setjmp((a1 + 376)) != 1)
      {
        v67 = (a1 + 88);
        std::ios_base::clear((v67 + *(*v67 - 24)), 0);
        v68 = sub_1B5CE599C(v67, "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/writer.cpp", 69);
        v69 = sub_1B5CE599C(v68, "(", 1);
        v70 = MEMORY[0x1B8C87F00](v69, 61);
        v71 = sub_1B5CE599C(v70, ") [", 3);
        v72 = sub_1B5CE599C(v71, "!tmp.empty()", 12);
        v73 = sub_1B5CE599C(v72, "] ", 2);
        v74 = sub_1B5CE599C(v73, "unkown format type [", 20);
        if ((v95 & 0x80u) == 0)
        {
          v75 = &v93;
        }

        else
        {
          v75 = v93;
        }

        if ((v95 & 0x80u) == 0)
        {
          v76 = v95;
        }

        else
        {
          v76 = v94;
        }

        v77 = sub_1B5CE599C(v74, v75, v76);
        sub_1B5CE599C(v77, "]", 1);
        sub_1B5D02D54(v67);
      }

      if (v20 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v60 = 0;
      goto LABEL_201;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v87;
  }

  else
  {
    v21 = v87.__r_.__value_.__r.__words[0];
  }

  sub_1B5D0AA34(&__p, a2, v21);
  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v86;
  }

  else
  {
    v22 = v86.__r_.__value_.__r.__words[0];
  }

  sub_1B5D0AA34(&__str, a2, v22);
  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v85;
  }

  else
  {
    v23 = v85.__r_.__value_.__r.__words[0];
  }

  sub_1B5D0AA34(&v80, a2, v23);
  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v84;
  }

  else
  {
    v24 = v84.__r_.__value_.__r.__words[0];
  }

  sub_1B5D0AA34(&v79, a2, v24);
  if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v83;
  }

  else
  {
    v25 = v83.__r_.__value_.__r.__words[0];
  }

  sub_1B5D0AA34(&v78, a2, v25);
  v26 = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = v92.__r_.__value_.__l.__size_;
  }

  v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v29 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v28 = __p.__r_.__value_.__l.__size_;
  }

  if (v27 != v28)
  {
    *(a1 + 568) = sub_1B5D18568;
    *(a1 + 576) = 0;
    goto LABEL_125;
  }

  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v92;
  }

  else
  {
    v30 = v92.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (memcmp(v30, p_p, v27))
  {
    goto LABEL_115;
  }

  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v90.__r_.__value_.__l.__size_;
  }

  v33 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v33 = __str.__r_.__value_.__l.__size_;
  }

  if (v32 != v33)
  {
    goto LABEL_115;
  }

  v34 = (v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v90 : v90.__r_.__value_.__r.__words[0];
  v35 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
  if (memcmp(v34, v35, v32))
  {
    goto LABEL_115;
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v89.__r_.__value_.__l.__size_;
  }

  v37 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v37 = v80.__r_.__value_.__l.__size_;
  }

  if (v36 != v37 || ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v38 = &v89) : (v38 = v89.__r_.__value_.__r.__words[0]), (v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v39 = &v80) : (v39 = v80.__r_.__value_.__r.__words[0]), memcmp(v38, v39, v36) || !sub_1B5D17E50(&v91, &v79)))
  {
LABEL_115:
    *(a1 + 568) = sub_1B5D18568;
    *(a1 + 576) = 0;
    if (v26 >= 0)
    {
      v40 = &v92;
    }

    else
    {
      v40 = v92.__r_.__value_.__r.__words[0];
    }

    if (v29 >= 0)
    {
      v41 = &__p;
    }

    else
    {
      v41 = __p.__r_.__value_.__r.__words[0];
    }

    if (!memcmp(v40, v41, v27))
    {
LABEL_126:
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = v90.__r_.__value_.__l.__size_;
      }

      v43 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v43 = __str.__r_.__value_.__l.__size_;
      }

      if (v42 != v43 || ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v44 = &v90) : (v44 = v90.__r_.__value_.__r.__words[0]), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), memcmp(v44, p_str, v42)))
      {
        std::string::operator=(&v90, &__str);
      }

      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v46 = v89.__r_.__value_.__l.__size_;
      }

      v47 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v47 = v80.__r_.__value_.__l.__size_;
      }

      if (v46 != v47 || ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v48 = &v89) : (v48 = v89.__r_.__value_.__r.__words[0]), (v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v49 = &v80) : (v49 = v80.__r_.__value_.__r.__words[0]), memcmp(v48, v49, v46)))
      {
        std::string::operator=(&v89, &v80);
      }

      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v91.__r_.__value_.__l.__size_;
      }

      v51 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v51 = v79.__r_.__value_.__l.__size_;
      }

      if (v50 == v51 && ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v52 = &v91) : (v52 = v91.__r_.__value_.__r.__words[0]), (v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v53 = &v79) : (v53 = v79.__r_.__value_.__r.__words[0]), !memcmp(v52, v53, v50)))
      {
        if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v63 = v92.__r_.__value_.__l.__size_;
        }

        v64 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v64 = __p.__r_.__value_.__l.__size_;
        }

        v54 = &__p;
        if (v63 == v64)
        {
          if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v65 = &v92;
          }

          else
          {
            v65 = v92.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v66 = &__p;
          }

          else
          {
            v66 = __p.__r_.__value_.__r.__words[0];
          }

          if (!memcmp(v65, v66, v63))
          {
            v54 = &v92;
          }

          else
          {
            v54 = &__p;
          }
        }
      }

      else
      {
        v54 = &v79;
      }

      std::string::operator=(&v91, v54);
      if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v55 = v88.__r_.__value_.__l.__size_;
      }

      v56 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
      if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v78.__r_.__value_.__l.__size_;
      }

      if (v55 != v56 || ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v57 = &v88) : (v57 = v88.__r_.__value_.__r.__words[0]), (v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v58 = &v78) : (v58 = v78.__r_.__value_.__r.__words[0]), memcmp(v57, v58, v55)))
      {
        std::string::operator=(&v88, &v78);
      }

      if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v92;
      }

      else
      {
        v59 = v92.__r_.__value_.__r.__words[0];
      }

      sub_1B5D0600C(a1 + 8, v59);
    }

LABEL_125:
    std::string::operator=(&v92, &__p);
    goto LABEL_126;
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v60 = 1;
LABEL_201:
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
    if (v60)
    {
      goto LABEL_221;
    }
  }

  else if (v60)
  {
    goto LABEL_221;
  }

  v61 = 0;
LABEL_224:
  if (v95 < 0)
  {
    operator delete(v93);
  }

  return v61;
}

void sub_1B5D17CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (v53 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (*(v54 - 185) < 0)
  {
    operator delete(*(v54 - 208));
  }

  if (*(v54 - 161) < 0)
  {
    operator delete(*(v54 - 184));
  }

  if (*(v54 - 137) < 0)
  {
    operator delete(*(v54 - 160));
  }

  if (*(v54 - 113) < 0)
  {
    operator delete(*(v54 - 136));
  }

  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 65) < 0)
  {
    operator delete(*(v54 - 88));
  }

  _Unwind_Resume(a1);
}

BOOL sub_1B5D17E50(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_1B5D17EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 64))(a2);
  v6 = (*(*a2 + 16))(a2);
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = *(v7 + 124);
      if (v8 == 3)
      {
        v9 = a3;
        v10 = "EOS";
      }

      else
      {
        if (v8 != 2)
        {
          v18 = *(v7 + 48);
          v19 = *(v7 + 96);
          if (sub_1B5D15060(a3, v19))
          {
            memcpy((*(a3 + 24) + *(a3 + 8)), v18, v19);
            *(a3 + 8) += v19;
          }

          goto LABEL_8;
        }

        v9 = a3;
        v10 = "BOS";
      }

      sub_1B5D15130(v9, v10);
LABEL_8:
      if (sub_1B5D15060(a3, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v11 = sub_1B5D15130(a3, *(v7 + 56));
      if (sub_1B5D15060(v11, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v12 = sub_1B5D181C8(a3, *(v7 + 48) - v5);
      if (sub_1B5D15060(v12, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v13 = sub_1B5D181C8(a3, *(v7 + 48) - v5 + *(v7 + 96));
      if (sub_1B5D15060(v13, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v14 = sub_1B5D182A8(a3, *(v7 + 100));
      if (sub_1B5D15060(v14, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v15 = sub_1B5D182A8(a3, *(v7 + 102));
      if (sub_1B5D15060(v15, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v16 = sub_1B5D181C8(a3, *(v7 + 124));
      if (sub_1B5D15060(v16, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      sub_1B5D18370(a3, *(v7 + 112));
      for (i = *(v7 + 40); i; i = *(i + 8))
      {
        if (sub_1B5D15060(a3, 1))
        {
          *(*(a3 + 24) + (*(a3 + 8))++) = 32;
        }

        sub_1B5D181C8(a3, *(i + 16));
      }

      if (sub_1B5D15060(a3, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 10;
      }

      v7 = *(v7 + 8);
    }

    while (v7);
  }

  return 1;
}

uint64_t sub_1B5D181C8(uint64_t a1, unsigned int a2)
{
  *&v13[63] = *MEMORY[0x1E69E9840];
  p_s = &__s;
  if ((a2 & 0x80000000) != 0)
  {
    p_s = v13;
    __s = 45;
    a2 = -a2;
LABEL_5:
    v3 = p_s;
    do
    {
      *v3++ = (a2 % 0xA) | 0x30;
      v4 = a2 >= 0xA;
      a2 /= 0xAu;
    }

    while (v4);
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_5;
  }

  v3 = v13;
  __s = 48;
LABEL_7:
  v5 = p_s == v3;
  *v3 = 0;
  v6 = v3 - 1;
  if (!v5 && v6 > p_s)
  {
    v8 = p_s + 1;
    do
    {
      v9 = *(v8 - 1);
      *(v8 - 1) = *v6;
      *v6-- = v9;
      v4 = v8++ >= v6;
    }

    while (!v4);
  }

  result = sub_1B5D15130(a1, &__s);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5D182A8(uint64_t a1, int a2)
{
  *&v11[63] = *MEMORY[0x1E69E9840];
  p_s = &__s;
  if (a2)
  {
    do
    {
      v3 = a2;
      *p_s++ = (a2 % 0xAu) | 0x30;
      LOWORD(a2) = a2 / 0xAu;
    }

    while (v3 >= 0xA);
  }

  else
  {
    p_s = v11;
    __s = 48;
  }

  *p_s = 0;
  v4 = p_s - 1;
  if (v4 > &__s)
  {
    v5 = v11;
    do
    {
      v6 = *(v5 - 1);
      *(v5 - 1) = *v4;
      *v4-- = v6;
    }

    while (v5++ < v4);
  }

  result = sub_1B5D15130(a1, &__s);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5D18370(uint64_t a1, unint64_t a2)
{
  *&v13[63] = *MEMORY[0x1E69E9840];
  p_s = &__s;
  if ((a2 & 0x8000000000000000) != 0)
  {
    p_s = v13;
    __s = 45;
    a2 = -a2;
LABEL_5:
    v3 = p_s;
    do
    {
      *v3++ = (a2 % 0xA) | 0x30;
      v4 = a2 >= 0xA;
      a2 /= 0xAuLL;
    }

    while (v4);
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_5;
  }

  v3 = v13;
  __s = 48;
LABEL_7:
  v5 = p_s == v3;
  *v3 = 0;
  v6 = v3 - 1;
  if (!v5 && v6 > p_s)
  {
    v8 = p_s + 1;
    do
    {
      v9 = *(v8 - 1);
      *(v8 - 1) = *v6;
      *v6-- = v9;
      v4 = v8++ >= v6;
    }

    while (!v4);
  }

  result = sub_1B5D15130(a1, &__s);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5D18458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *((*(*a2 + 16))(a2) + 8);
  v5 = (v4 + 8);
  if (*(v4 + 8))
  {
    do
    {
      v6 = *(v4 + 48);
      v7 = *(v4 + 96);
      if (sub_1B5D15060(a3, v7))
      {
        memcpy((*(a3 + 24) + *(a3 + 8)), v6, v7);
        *(a3 + 8) += v7;
      }

      if (sub_1B5D15060(a3, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v4 = *v5;
      v8 = *v5;
      v9 = *(v8 + 8);
      v5 = (v8 + 8);
    }

    while (v9);
  }

  if (sub_1B5D15060(a3, 1))
  {
    *(*(a3 + 24) + (*(a3 + 8))++) = 10;
  }

  return 1;
}

void sub_1B5D18568(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  (*(*a2 + 16))(a2);
  sub_1B5D1867C();
}

void sub_1B5D19378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a20)
  {
    MEMORY[0x1B8C880C0](a20, 0x10C80436913F5);
  }

  if (a23)
  {
    MEMORY[0x1B8C880C0](a23, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D19418(void *a1)
{
  *a1 = &unk_1F2D55F30;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x1B8C880C0](v1, 0x10C80436913F5);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D19494(void *a1)
{
  *a1 = &unk_1F2D55F30;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x10C80436913F5);
  }

  return a1;
}

void sub_1B5D194F0(void *a1)
{
  *a1 = &unk_1F2D55F10;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x1B8C880C0](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D1956C(void *a1)
{
  *a1 = &unk_1F2D55F10;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
  }

  return a1;
}