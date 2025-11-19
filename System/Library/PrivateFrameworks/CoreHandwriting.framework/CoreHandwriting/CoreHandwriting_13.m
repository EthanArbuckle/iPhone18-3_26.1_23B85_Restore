void sub_18383E010(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v7[4] = *(a2 + 4);
        v8 = *v7;
        sub_18383DAE4(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v9 = *v7;
        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_18383E0FC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_18383E144(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_74;
  }

  bzero(*a1, 8 * v5);
  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (!v6)
  {
    goto LABEL_74;
  }

  while (a2 != a3)
  {
    *(v6 + 4) = *(a2 + 4);
    if (v6 != a2)
    {
      v7 = v6[3];
      v8 = a2[3];
      v9 = a2[4];
      v10 = v9 - v8;
      v11 = v6[5];
      if (v11 - v7 < (v9 - v8))
      {
        if (v7)
        {
          v6[4] = v7;
          operator delete(v7);
          v11 = 0;
          v6[3] = 0;
          v6[4] = 0;
          v6[5] = 0;
        }

        v12 = v10 >> 3;
        if (!((v10 >> 3) >> 61))
        {
          if (v11 >> 2 > v12)
          {
            v12 = v11 >> 2;
          }

          if (v11 >= 0x7FFFFFFFFFFFFFF8)
          {
            v13 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v12;
          }

          if (!(v13 >> 61))
          {
            operator new();
          }
        }

        sub_18383B70C();
      }

      v14 = v6[4];
      v15 = v14 - v7;
      if (v14 - v7 >= v10)
      {
        if (v8 == v9)
        {
          v6[4] = v7;
        }

        else
        {
          v30 = v10 - 8;
          if ((v10 - 8) < 0x38)
          {
            goto LABEL_32;
          }

          v45 = v7 + 4 >= &v8[(v30 & 0xFFFFFFFFFFFFFFF8) + 8] || v8 + 4 >= &v7[(v30 & 0xFFFFFFFFFFFFFFF8) + 8];
          v46 = !v45;
          if (v8 < &v7[(v30 & 0xFFFFFFFFFFFFFFF8) + 4] && v7 < &v8[(v30 & 0xFFFFFFFFFFFFFFF8) + 4])
          {
            goto LABEL_32;
          }

          if (v46)
          {
            goto LABEL_32;
          }

          v48 = (v30 >> 3) + 1;
          v49 = 8 * (v48 & 0x3FFFFFFFFFFFFFF8);
          v31 = &v7[v49];
          v50 = &v8[v49];
          v51 = (v8 + 32);
          v52 = v7 + 32;
          v53 = v48 & 0x3FFFFFFFFFFFFFF8;
          do
          {
            v55 = *(v51 - 2);
            v54 = *(v51 - 1);
            v57 = *v51;
            v56 = v51[1];
            v51 += 4;
            *(v52 - 2) = v55;
            *(v52 - 1) = v54;
            *v52 = v57;
            v52[1] = v56;
            v52 += 4;
            v53 -= 8;
          }

          while (v53);
          v7 = v31;
          v8 = v50;
          if (v48 != (v48 & 0x3FFFFFFFFFFFFFF8))
          {
LABEL_32:
            v31 = v7;
            do
            {
              *v31 = *v8;
              *(v31 + 1) = *(v8 + 1);
              v8 += 8;
              v31 += 8;
            }

            while (v8 != v9);
          }

          v6[4] = v31;
        }

        goto LABEL_37;
      }

      v16 = &v8[v15];
      v17 = v14 - v7;
      if (v14 != v7)
      {
        v18 = v17 - 8;
        if ((v17 - 8) < 0x38 || (v7 + 4 < &v8[(v18 & 0xFFFFFFFFFFFFFFF8) + 8] ? (v33 = v8 + 4 >= &v7[(v18 & 0xFFFFFFFFFFFFFFF8) + 8]) : (v33 = 1), v33 ? (v34 = 0) : (v34 = 1), v8 < &v7[(v18 & 0xFFFFFFFFFFFFFFF8) + 4] ? (v35 = v7 >= &v8[(v18 & 0xFFFFFFFFFFFFFFF8) + 4]) : (v35 = 1), !v35))
        {
          v19 = v6[3];
          v20 = a2[3];
          goto LABEL_20;
        }

        v19 = v6[3];
        v20 = a2[3];
        if (v34)
        {
          goto LABEL_80;
        }

        v36 = (v18 >> 3) + 1;
        v37 = 8 * (v36 & 0x3FFFFFFFFFFFFFF8);
        v19 = &v7[v37];
        v20 = &v8[v37];
        v38 = (v8 + 32);
        v39 = v7 + 32;
        v40 = v36 & 0x3FFFFFFFFFFFFFF8;
        do
        {
          v42 = *(v38 - 2);
          v41 = *(v38 - 1);
          v44 = *v38;
          v43 = v38[1];
          v38 += 4;
          *(v39 - 2) = v42;
          *(v39 - 1) = v41;
          *v39 = v44;
          v39[1] = v43;
          v39 += 4;
          v40 -= 8;
        }

        while (v40);
        if (v36 != (v36 & 0x3FFFFFFFFFFFFFF8))
        {
LABEL_80:
          do
          {
LABEL_20:
            *v19 = *v20;
            *(v19 + 1) = *(v20 + 1);
            v20 += 8;
            v19 += 8;
          }

          while (v20 != v16);
        }
      }

      if (v16 == v9)
      {
        v6[4] = v14;
      }

      else
      {
        v21 = &v9[v7] - (v14 + v8) - 8;
        if (v21 < 0x18)
        {
          goto LABEL_27;
        }

        if ((v7 - v8) < 0x20)
        {
          goto LABEL_27;
        }

        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v24 = (v14 + v23);
        v25 = v14 + 1;
        v26 = &v8[v15 + 16];
        v27 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v28 = *v26;
          *(v25 - 1) = *(v26 - 1);
          *v25 = v28;
          v25 += 2;
          v26 += 32;
          v27 -= 4;
        }

        while (v27);
        v14 = v24;
        if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_27:
          v24 = v14;
          do
          {
            v29 = *v16;
            v16 += 8;
            *v24++ = v29;
          }

          while (v16 != v9);
        }

        v6[4] = v24;
      }
    }

LABEL_37:
    v32 = *v6;
    sub_18383DAE4(a1, v6);
    a2 = *a2;
    v6 = v32;
    if (!v32)
    {
      goto LABEL_74;
    }
  }

  do
  {
    v58 = *v6;
    v59 = v6[3];
    if (v59)
    {
      v6[4] = v59;
      operator delete(v59);
    }

    operator delete(v6);
    v6 = v58;
  }

  while (v58);
LABEL_74:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_18383E60C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_18383D884(v1);
  __cxa_rethrow();
}

void sub_18383E63C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 32) = v5;
    operator delete(v5);
    sub_183811838(va);
    _Unwind_Resume(a1);
  }

  sub_183811838(va);
  _Unwind_Resume(a1);
}

void sub_18383E678(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
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

          v15 = *(v10 - 5);
          v10 -= 5;
          v14 = v15;
          *v10 = 0;
          if (v15)
          {
            operator delete(v14);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x666666666666666)
    {
      v20 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v21 = 2 * v20;
      if (2 * v20 <= a4)
      {
        v21 = a4;
      }

      if (v20 >= 0x333333333333333)
      {
        v22 = 0x666666666666666;
      }

      else
      {
        v22 = v21;
      }

      if (v22 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_18383B70C();
  }

  v16 = a1[1];
  v17 = v16 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v16 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          *(v8 + 32) = *(v5 + 32);
          sub_18383E010(v8, *(v5 + 16), 0);
        }

        v5 += 40;
        v8 += 40;
      }

      while (v5 != a3);
      v16 = a1[1];
    }

    while (v16 != v8)
    {
      v23 = *(v16 - 3);
      if (v23)
      {
        do
        {
          v24 = *v23;
          operator delete(v23);
          v23 = v24;
        }

        while (v24);
      }

      v26 = *(v16 - 5);
      v16 -= 5;
      v25 = v26;
      *v16 = 0;
      if (v26)
      {
        operator delete(v25);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v16 != v8)
    {
      v18 = v16 - v8;
      v19 = a2;
      do
      {
        if (v19 != v8)
        {
          *(v8 + 32) = *(v19 + 32);
          sub_18383E010(v8, *(v19 + 16), 0);
        }

        v19 += 40;
        v8 += 40;
        v18 -= 40;
      }

      while (v18);
      v16 = a1[1];
    }

    a1[1] = sub_18383E8F8(a1, &v17[v5], a3, v16);
  }
}

uint64_t sub_18383E8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v15 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 32) = *(v6 + 32);
      prime = *(v6 + 8);
      if (prime == 1)
      {
        prime = 2;
      }

      else if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(*(v6 + 8));
        v8 = *(v4 + 8);
        v9 = prime >= *&v8;
        if (prime <= *&v8)
        {
LABEL_10:
          if (v9)
          {
            goto LABEL_21;
          }

          v10 = vcvtps_u32_f32(*(v4 + 24) / *(v4 + 32));
          if (*&v8 < 3uLL || (v11 = vcnt_s8(v8), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
          {
            v10 = std::__next_prime(v10);
          }

          else
          {
            v12 = 1 << -__clz(v10 - 1);
            if (v10 >= 2)
            {
              v10 = v12;
            }
          }

          if (prime <= v10)
          {
            prime = v10;
          }

          if (prime >= *&v8)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v8 = 0;
        v9 = 1;
        if (!prime)
        {
          goto LABEL_10;
        }
      }

      sub_183689098(v4, prime);
LABEL_21:
      for (i = *(v6 + 16); i; i = *i)
      {
        sub_18383D490(v4, i + 4);
      }

      v6 += 40;
      v4 = v15 + 40;
      v15 += 40;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_18383EA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1836CFA48(v9);
  sub_18372D7E4(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_18383EA88(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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
        if (*(v7 + 4) == v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t sub_18383EDC0(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 8);
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v123 = *v9;
          v124 = *(v9 + 8);
          if (*v9 >= v124 && (v124 < v123 || *(v9 + 4) >= *(v9 + 12)))
          {
            v200 = *(a2 - 8);
            if (v124 >= v200)
            {
              if (v200 < v124)
              {
                return result;
              }

              v201 = *(v9 + 12);
              v202 = *(a2 - 4);
              if (v201 >= v202)
              {
                return result;
              }
            }

            else
            {
              v201 = *(v9 + 12);
              v202 = *(a2 - 4);
            }

            *(v9 + 8) = v200;
            *(a2 - 8) = v124;
            *(v9 + 12) = v202;
            *(a2 - 4) = v201;
            v203 = *v9;
            v204 = *(v9 + 8);
            if (*v9 >= v204)
            {
              if (v204 < v203)
              {
                return result;
              }

              v205 = *(v9 + 4);
              v206 = *(v9 + 12);
              if (v205 >= v206)
              {
                return result;
              }
            }

            else
            {
              v205 = *(v9 + 4);
              v206 = *(v9 + 12);
            }

            *v9 = v204;
            *(v9 + 8) = v203;
            *(v9 + 4) = v206;
            *(v9 + 12) = v205;
            return result;
          }

          v125 = *(a2 - 8);
          if (v124 >= v125)
          {
            v214 = *(v9 + 12);
            if (v125 < v124 || (v126 = *(a2 - 4), v214 >= v126))
            {
              *v9 = v124;
              *(v9 + 8) = v123;
              v130 = *(v9 + 4);
              *(v9 + 4) = v214;
              *(v9 + 12) = v130;
              v215 = *(a2 - 8);
              if (v123 >= v215)
              {
                if (v215 < v123)
                {
                  return result;
                }

                v216 = *(a2 - 4);
                if (v130 >= v216)
                {
                  return result;
                }
              }

              else
              {
                v216 = *(a2 - 4);
              }

              *(v9 + 8) = v215;
              *(a2 - 8) = v123;
              *(v9 + 12) = v216;
              goto LABEL_227;
            }
          }

          else
          {
            v126 = *(a2 - 4);
          }

          *v9 = v125;
          *(a2 - 8) = v123;
          v127 = *(v9 + 4);
          *(v9 + 4) = v126;
          *(a2 - 4) = v127;
          return result;
        case 4:

          return sub_18383FFB0(v9, v9 + 8, v9 + 16, a2 - 8);
        case 5:
          result = sub_18383FFB0(v9, v9 + 8, v9 + 16, v9 + 24);
          v132 = *(v9 + 24);
          v133 = *(a2 - 8);
          if (v132 >= v133)
          {
            if (v133 < v132)
            {
              return result;
            }

            v134 = *(v9 + 28);
            v135 = *(a2 - 4);
            if (v134 >= v135)
            {
              return result;
            }
          }

          else
          {
            v134 = *(v9 + 28);
            v135 = *(a2 - 4);
          }

          *(v9 + 24) = v133;
          *(a2 - 8) = v132;
          *(v9 + 28) = v135;
          *(a2 - 4) = v134;
          v136 = *(v9 + 16);
          v137 = *(v9 + 24);
          if (v136 >= v137)
          {
            if (v137 < v136)
            {
              return result;
            }

            v138 = *(v9 + 20);
            v139 = *(v9 + 28);
            if (v138 >= v139)
            {
              return result;
            }
          }

          else
          {
            v138 = *(v9 + 20);
            v139 = *(v9 + 28);
          }

          *(v9 + 16) = v137;
          *(v9 + 24) = v136;
          *(v9 + 20) = v139;
          *(v9 + 28) = v138;
          v140 = *(v9 + 8);
          if (v140 >= v137)
          {
            if (v137 < v140)
            {
              return result;
            }

            v141 = *(v9 + 12);
            if (v141 >= v139)
            {
              return result;
            }
          }

          else
          {
            v141 = *(v9 + 12);
          }

          *(v9 + 8) = v137;
          *(v9 + 16) = v140;
          *(v9 + 12) = v139;
          *(v9 + 20) = v141;
          v142 = *v9;
          if (*v9 >= v137)
          {
            if (v137 < v142)
            {
              return result;
            }

            v143 = *(v9 + 4);
            if (v143 >= v139)
            {
              return result;
            }
          }

          else
          {
            v143 = *(v9 + 4);
          }

          *v9 = v137;
          *(v9 + 8) = v142;
          *(v9 + 4) = v139;
          *(v9 + 12) = v143;
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v128 = *v9;
        v129 = *(a2 - 8);
        if (*v9 < v129)
        {
          v130 = *(v9 + 4);
          v131 = *(a2 - 4);
          goto LABEL_226;
        }

        if (v129 < v128)
        {
          return result;
        }

        v130 = *(v9 + 4);
        v131 = *(a2 - 4);
        if (v130 >= v131)
        {
          return result;
        }

LABEL_226:
        *v9 = v129;
        *(a2 - 8) = v128;
        *(v9 + 4) = v131;
LABEL_227:
        *(a2 - 4) = v130;
        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v159 = (v10 - 2) >> 1;
      v160 = v159;
      do
      {
        v162 = v160;
        if (v159 >= v160)
        {
          v163 = (2 * v160) | 1;
          v164 = v9 + 8 * v163;
          if (2 * v162 + 2 < v10)
          {
            v165 = *(v164 + 8);
            if (v165 < *v164 || *v164 >= v165 && *(v164 + 12) < *(v164 + 4))
            {
              v164 += 8;
              v163 = 2 * v162 + 2;
            }
          }

          v166 = v9 + 8 * v162;
          v167 = *v166;
          v168 = *v164;
          if (*v166 >= *v164)
          {
            v169 = *(v166 + 4);
            v170 = *(v164 + 4);
            v171 = v168 >= v167 && v169 < v170;
            if (!v171)
            {
              *v166 = v168;
              *(v166 + 4) = v170;
              if (v159 >= v163)
              {
                while (1)
                {
                  v172 = 2 * v163;
                  v163 = (2 * v163) | 1;
                  v161 = v9 + 8 * v163;
                  v173 = v172 + 2;
                  if (v173 < v10)
                  {
                    v174 = *(v161 + 8);
                    if (v174 < *v161 || *v161 >= v174 && (result = *(v161 + 4), *(v161 + 12) < result))
                    {
                      v161 += 8;
                      v163 = v173;
                    }
                  }

                  v175 = *v161;
                  if (v167 < *v161)
                  {
                    break;
                  }

                  v176 = *(v161 + 4);
                  if (v175 >= v167 && v169 < v176)
                  {
                    break;
                  }

                  *v164 = v175;
                  *(v164 + 4) = v176;
                  v164 = v161;
                  if (v159 < v163)
                  {
                    goto LABEL_266;
                  }
                }
              }

              v161 = v164;
LABEL_266:
              *v161 = v167;
              *(v161 + 4) = v169;
            }
          }
        }

        v160 = v162 - 1;
      }

      while (v162);
      while (1)
      {
        if (v10 >= 2)
        {
          v178 = 0;
          v179 = *v9;
          v180 = *(v9 + 4);
          v181 = v9;
          do
          {
            v182 = v181;
            v183 = &v181[2 * v178];
            v181 = v183 + 2;
            v184 = 2 * v178;
            v178 = (2 * v178) | 1;
            v185 = v184 + 2;
            if (v185 < v10)
            {
              v186 = *(v183 + 4);
              v187 = *(v183 + 2);
              if (v186 < v187 || v187 >= v186 && v183[5] < v183[3])
              {
                v181 = v183 + 4;
                v178 = v185;
              }
            }

            *v182 = *v181;
            v182[1] = v181[1];
          }

          while (v178 <= ((v10 - 2) >> 1));
          if (v181 == (a2 - 8))
          {
            *v181 = v179;
            v181[1] = v180;
          }

          else
          {
            *v181 = *(a2 - 8);
            v181[1] = *(a2 - 4);
            *(a2 - 8) = v179;
            *(a2 - 4) = v180;
            v188 = (v181 - v9 + 8) >> 3;
            v189 = v188 - 2;
            if (v188 >= 2)
            {
              v190 = v189 >> 1;
              v191 = v9 + 8 * (v189 >> 1);
              v192 = *v181;
              v193 = *v191;
              if (*v181 < *v191)
              {
                v194 = v181[1];
                v195 = *(v191 + 4);
LABEL_308:
                *v181 = v193;
                v181[1] = v195;
                if (v189 >= 2)
                {
                  while (1)
                  {
                    v198 = v190 - 1;
                    v190 = (v190 - 1) >> 1;
                    v196 = v9 + 8 * v190;
                    v199 = *v196;
                    if (v192 < *v196)
                    {
                      v197 = *(v196 + 4);
                    }

                    else
                    {
                      if (v199 < v192)
                      {
                        break;
                      }

                      v197 = *(v196 + 4);
                      if (v194 >= v197)
                      {
                        break;
                      }
                    }

                    *v191 = v199;
                    *(v191 + 4) = v197;
                    v191 = v9 + 8 * v190;
                    if (v198 <= 1)
                    {
                      goto LABEL_310;
                    }
                  }
                }

                v196 = v191;
LABEL_310:
                *v196 = v192;
                *(v196 + 4) = v194;
                goto LABEL_293;
              }

              if (v193 >= v192)
              {
                v194 = v181[1];
                v195 = *(v191 + 4);
                if (v194 < v195)
                {
                  goto LABEL_308;
                }
              }
            }
          }
        }

LABEL_293:
        a2 -= 8;
        v171 = v10-- > 2;
        if (!v171)
        {
          return result;
        }
      }
    }

    v11 = v9 + 8 * (v10 >> 1);
    v12 = v11;
    if (v10 < 0x81)
    {
      v18 = *v11;
      v19 = *v9;
      if (*v11 < *v9 || v19 >= v18 && *(v11 + 4) < *(v9 + 4))
      {
        v20 = *v8;
        if (v19 < *v8)
        {
          v21 = *(a2 - 4);
LABEL_20:
          *v12 = v20;
          *(a2 - 8) = v18;
          v22 = *(v12 + 4);
          *(v12 + 4) = v21;
          *(a2 - 4) = v22;
          --a3;
          v23 = *v9;
          if (a4)
          {
            goto LABEL_142;
          }

          goto LABEL_139;
        }

        v42 = *(v9 + 4);
        if (v20 >= v19)
        {
          v21 = *(a2 - 4);
          if (v42 < v21)
          {
            goto LABEL_20;
          }
        }

        *v12 = v19;
        *v9 = v18;
        v43 = *(v12 + 4);
        *(v12 + 4) = v42;
        *(v9 + 4) = v43;
        v44 = *v8;
        if (v18 >= *v8)
        {
          if (v44 < v18)
          {
            goto LABEL_83;
          }

          v45 = *(a2 - 4);
          if (v43 >= v45)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v45 = *(a2 - 4);
        }

        *v9 = v44;
        *(a2 - 8) = v18;
        *(v9 + 4) = v45;
        *(a2 - 4) = v43;
        --a3;
        v23 = *v9;
        if (a4)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v31 = *v8;
        if (v19 >= *v8)
        {
          if (v31 < v19 || (v32 = *(v9 + 4), v33 = *(a2 - 4), v32 >= v33))
          {
LABEL_83:
            --a3;
            v23 = *v9;
            if ((a4 & 1) == 0)
            {
              goto LABEL_139;
            }

            goto LABEL_142;
          }
        }

        else
        {
          v32 = *(v9 + 4);
          v33 = *(a2 - 4);
        }

        *v9 = v31;
        *(a2 - 8) = v19;
        *(v9 + 4) = v33;
        *(a2 - 4) = v32;
        v34 = *v12;
        v35 = *v9;
        if (*v12 >= *v9)
        {
          if (v35 < v34)
          {
            goto LABEL_83;
          }

          v36 = *(v12 + 4);
          v37 = *(v9 + 4);
          if (v36 >= v37)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v36 = *(v12 + 4);
          v37 = *(v9 + 4);
        }

        *v12 = v35;
        *v9 = v34;
        *(v12 + 4) = v37;
        *(v9 + 4) = v36;
        --a3;
        v23 = *v9;
        if (a4)
        {
          goto LABEL_142;
        }
      }

LABEL_139:
      v95 = *(v9 - 8);
      if (v23 < v95)
      {
        goto LABEL_142;
      }

      v96 = *(v9 + 4);
      if (v95 >= v23 && v96 < *(v9 - 4))
      {
        goto LABEL_142;
      }

      v112 = *v8;
      if (*v8 < v23 || v23 >= v112 && *(a2 - 4) < v96)
      {
        do
        {
          v113 = *(v9 + 8);
          v9 += 8;
          v114 = v113;
        }

        while (v113 >= v23 && (v23 < v114 || *(v9 + 4) >= v96));
      }

      else
      {
          ;
        }
      }

      i = a2;
      if (v9 < a2)
      {
        for (i = a2 - 8; v112 < v23 || v23 >= v112 && *(i + 4) < v96; i -= 8)
        {
          v116 = *(i - 8);
          v112 = v116;
        }
      }

      if (v9 < i)
      {
        v117 = *v9;
        v118 = *i;
        do
        {
          *v9 = v118;
          *i = v117;
          v119 = *(v9 + 8);
          v9 += 8;
          v117 = v119;
          v120 = *(v9 - 4);
          *(v9 - 4) = *(i + 4);
          *(i + 4) = v120;
          while (v117 >= v23 && (v23 < v117 || *(v9 + 4) >= v96))
          {
            v121 = *(v9 + 8);
            v9 += 8;
            v117 = v121;
          }

          do
          {
            do
            {
              v122 = *(i - 8);
              i -= 8;
              v118 = v122;
            }

            while (v122 < v23);
          }

          while (v23 >= v118 && *(i + 4) < v96);
        }

        while (v9 < i);
      }

      if ((v9 - 8) != v7)
      {
        *v7 = *(v9 - 8);
        v7[1] = *(v9 - 4);
      }

      a4 = 0;
      *(v9 - 8) = v23;
      *(v9 - 4) = v96;
    }

    else
    {
      v13 = *v9;
      v14 = *v11;
      if (*v9 < *v11 || v14 >= v13 && *(v9 + 4) < *(v11 + 4))
      {
        v15 = *v8;
        if (v14 < *v8)
        {
          v16 = *(a2 - 4);
LABEL_16:
          *v9 = v15;
          *(a2 - 8) = v13;
          v17 = *(v9 + 4);
          *(v9 + 4) = v16;
          *(a2 - 4) = v17;
          goto LABEL_62;
        }

        v38 = *(v11 + 4);
        if (v15 >= v14)
        {
          v16 = *(a2 - 4);
          if (v38 < v16)
          {
            goto LABEL_16;
          }
        }

        *v9 = v14;
        *v11 = v13;
        v39 = *(v9 + 4);
        *(v9 + 4) = v38;
        *(v11 + 4) = v39;
        v40 = *v8;
        if (v13 < *v8)
        {
          v41 = *(a2 - 4);
LABEL_41:
          *v11 = v40;
          *(a2 - 8) = v13;
          *(v11 + 4) = v41;
          *(a2 - 4) = v39;
          goto LABEL_62;
        }

        if (v40 >= v13)
        {
          v41 = *(a2 - 4);
          if (v39 < v41)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        v24 = *v8;
        if (v14 >= *v8)
        {
          if (v24 < v14)
          {
            goto LABEL_62;
          }

          v25 = *(v11 + 4);
          v26 = *(a2 - 4);
          if (v25 >= v26)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v25 = *(v11 + 4);
          v26 = *(a2 - 4);
        }

        *v11 = v24;
        *(a2 - 8) = v14;
        *(v11 + 4) = v26;
        *(a2 - 4) = v25;
        v27 = *v9;
        v28 = *v11;
        if (*v9 < *v11)
        {
          v29 = *(v9 + 4);
          v30 = *(v11 + 4);
LABEL_28:
          *v9 = v28;
          *v11 = v27;
          *(v9 + 4) = v30;
          *(v11 + 4) = v29;
          goto LABEL_62;
        }

        if (v28 >= v27)
        {
          v29 = *(v9 + 4);
          v30 = *(v11 + 4);
          if (v29 < v30)
          {
            goto LABEL_28;
          }
        }
      }

LABEL_62:
      v46 = v11 - 8;
      v47 = *(v11 - 8);
      v48 = *(v9 + 8);
      if (v48 < v47 || v47 >= v48 && *(v9 + 12) < *(v11 - 4))
      {
        v49 = *(a2 - 16);
        if (v47 < v49)
        {
          v50 = *(a2 - 12);
LABEL_65:
          *(v9 + 8) = v49;
          *(a2 - 16) = v48;
          v51 = *(v9 + 12);
          *(v9 + 12) = v50;
          *(a2 - 12) = v51;
          goto LABEL_90;
        }

        v59 = *(v11 - 4);
        if (v49 >= v47)
        {
          v50 = *(a2 - 12);
          if (v59 < v50)
          {
            goto LABEL_65;
          }
        }

        *(v9 + 8) = v47;
        *v46 = v48;
        v60 = *(v9 + 12);
        *(v9 + 12) = v59;
        *(v11 - 4) = v60;
        v61 = *(a2 - 16);
        if (v48 < v61)
        {
          v62 = *(a2 - 12);
LABEL_77:
          *v46 = v61;
          *(a2 - 16) = v48;
          *(v11 - 4) = v62;
          *(a2 - 12) = v60;
          goto LABEL_90;
        }

        if (v61 >= v48)
        {
          v62 = *(a2 - 12);
          if (v60 < v62)
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        v52 = *(a2 - 16);
        if (v47 >= v52)
        {
          if (v52 < v47)
          {
            goto LABEL_90;
          }

          v53 = *(v11 - 4);
          v54 = *(a2 - 12);
          if (v53 >= v54)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v53 = *(v11 - 4);
          v54 = *(a2 - 12);
        }

        *v46 = v52;
        *(a2 - 16) = v47;
        *(v11 - 4) = v54;
        *(a2 - 12) = v53;
        v55 = *(v9 + 8);
        v56 = *v46;
        if (v55 < *v46)
        {
          v57 = *(v9 + 12);
          v58 = *(v11 - 4);
LABEL_72:
          *(v9 + 8) = v56;
          *v46 = v55;
          *(v9 + 12) = v58;
          *(v11 - 4) = v57;
          goto LABEL_90;
        }

        if (v56 >= v55)
        {
          v57 = *(v9 + 12);
          v58 = *(v11 - 4);
          if (v57 < v58)
          {
            goto LABEL_72;
          }
        }
      }

LABEL_90:
      v64 = *(v11 + 8);
      v63 = v11 + 8;
      v65 = v64;
      v66 = *(v9 + 16);
      if (v66 < v64 || v65 >= v66 && *(v9 + 20) < *(v63 + 4))
      {
        v67 = *(a2 - 24);
        if (v65 < v67)
        {
          v68 = *(a2 - 20);
LABEL_93:
          *(v9 + 16) = v67;
          *(a2 - 24) = v66;
          v69 = *(v9 + 20);
          *(v9 + 20) = v68;
          *(a2 - 20) = v69;
          goto LABEL_114;
        }

        v77 = *(v63 + 4);
        if (v67 >= v65)
        {
          v68 = *(a2 - 20);
          if (v77 < v68)
          {
            goto LABEL_93;
          }
        }

        *(v9 + 16) = v65;
        *v63 = v66;
        v78 = *(v9 + 20);
        *(v9 + 20) = v77;
        *(v63 + 4) = v78;
        v79 = *(a2 - 24);
        if (v66 < v79)
        {
          v80 = *(a2 - 20);
LABEL_105:
          *v63 = v79;
          *(a2 - 24) = v66;
          *(v63 + 4) = v80;
          *(a2 - 20) = v78;
          goto LABEL_114;
        }

        if (v79 >= v66)
        {
          v80 = *(a2 - 20);
          if (v78 < v80)
          {
            goto LABEL_105;
          }
        }
      }

      else
      {
        v70 = *(a2 - 24);
        if (v65 >= v70)
        {
          if (v70 < v65)
          {
            goto LABEL_114;
          }

          v71 = *(v63 + 4);
          v72 = *(a2 - 20);
          if (v71 >= v72)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v71 = *(v63 + 4);
          v72 = *(a2 - 20);
        }

        *v63 = v70;
        *(a2 - 24) = v65;
        *(v63 + 4) = v72;
        *(a2 - 20) = v71;
        v73 = *(v9 + 16);
        v74 = *v63;
        if (v73 < *v63)
        {
          v75 = *(v9 + 20);
          v76 = *(v63 + 4);
LABEL_100:
          *(v9 + 16) = v74;
          *v63 = v73;
          *(v9 + 20) = v76;
          *(v63 + 4) = v75;
          goto LABEL_114;
        }

        if (v74 >= v73)
        {
          v75 = *(v9 + 20);
          v76 = *(v63 + 4);
          if (v75 < v76)
          {
            goto LABEL_100;
          }
        }
      }

LABEL_114:
      v81 = *v46;
      v82 = *v12;
      if (*v46 < *v12 || v82 >= v81 && *(v46 + 4) < *(v12 + 4))
      {
        v83 = *v63;
        if (v82 < *v63)
        {
          v84 = *(v63 + 4);
LABEL_117:
          *v46 = v83;
          *v63 = v81;
          v85 = *(v46 + 4);
          *(v46 + 4) = v84;
          *(v63 + 4) = v85;
          v81 = v82;
          goto LABEL_138;
        }

        v90 = *(v12 + 4);
        if (v83 >= v82)
        {
          v84 = *(v63 + 4);
          if (v90 < v84)
          {
            goto LABEL_117;
          }
        }

        *v46 = v82;
        *v12 = v81;
        v91 = *(v46 + 4);
        *(v46 + 4) = v90;
        *(v12 + 4) = v91;
        if (v81 < v83)
        {
          v92 = *(v63 + 4);
LABEL_129:
          *v12 = v83;
          *v63 = v81;
          *(v12 + 4) = v92;
          v81 = v83;
          *(v63 + 4) = v91;
          goto LABEL_138;
        }

        if (v83 >= v81)
        {
          v92 = *(v63 + 4);
          if (v91 < v92)
          {
            goto LABEL_129;
          }
        }
      }

      else
      {
        v86 = *v63;
        if (v82 >= *v63)
        {
          if (v86 < v82 || (v87 = *(v12 + 4), v88 = *(v63 + 4), v87 >= v88))
          {
            v81 = *v12;
            goto LABEL_138;
          }
        }

        else
        {
          v87 = *(v12 + 4);
          v88 = *(v63 + 4);
        }

        *v12 = v86;
        *v63 = v82;
        *(v12 + 4) = v88;
        *(v63 + 4) = v87;
        if (v81 < v86)
        {
          v89 = *(v46 + 4);
LABEL_124:
          *v46 = v86;
          *v12 = v81;
          *(v46 + 4) = v88;
          *(v12 + 4) = v89;
          goto LABEL_138;
        }

        if (v86 >= v81)
        {
          v89 = *(v46 + 4);
          if (v89 < v88)
          {
            goto LABEL_124;
          }
        }

        v81 = v86;
      }

LABEL_138:
      v93 = *v9;
      *v9 = v81;
      *v12 = v93;
      v94 = *(v9 + 4);
      *(v9 + 4) = *(v12 + 4);
      *(v12 + 4) = v94;
      --a3;
      v23 = *v9;
      if ((a4 & 1) == 0)
      {
        goto LABEL_139;
      }

LABEL_142:
      v97 = 0;
      v98 = *(v9 + 4);
      while (1)
      {
        v99 = *(v9 + v97 + 8);
        if (v23 >= v99 && (v99 < v23 || v98 >= *(v9 + v97 + 12)))
        {
          break;
        }

        v97 += 8;
      }

      v100 = v9 + v97 + 8;
      if (v97)
      {
        v101 = *v8;
        v102 = a2 - 8;
        if (v23 >= *v8)
        {
          do
          {
            if (v101 >= v23 && v98 < *(v102 + 4))
            {
              break;
            }

            v103 = *(v102 - 8);
            v102 -= 8;
            v101 = v103;
          }

          while (v23 >= v103);
        }
      }

      else
      {
        v102 = a2;
        if (v100 < a2)
        {
          v104 = *v8;
          v102 = a2 - 8;
          if (v23 >= *v8)
          {
            v102 = a2 - 8;
            do
            {
              if (v104 < v23)
              {
                if (v100 >= v102)
                {
                  break;
                }
              }

              else if (v100 >= v102 || v98 < *(v102 + 4))
              {
                break;
              }

              v111 = *(v102 - 8);
              v102 -= 8;
              v104 = v111;
            }

            while (v23 >= v111);
          }
        }
      }

      if (v100 >= v102)
      {
        v9 = v100;
      }

      else
      {
        v105 = *v102;
        v9 = v100;
        v106 = v102;
        do
        {
          *v9 = v105;
          *v106 = v99;
          v107 = *(v9 + 4);
          *(v9 + 4) = *(v106 + 4);
          *(v106 + 4) = v107;
          do
          {
            do
            {
              v108 = *(v9 + 8);
              v9 += 8;
              v99 = v108;
            }

            while (v23 < v108);
          }

          while (v99 >= v23 && v98 < *(v9 + 4));
          do
          {
            v109 = *(v106 - 8);
            v106 -= 8;
            v105 = v109;
          }

          while (v23 >= v109 && (v105 < v23 || v98 >= *(v106 + 4)));
        }

        while (v9 < v106);
      }

      if ((v9 - 8) != v7)
      {
        *v7 = *(v9 - 8);
        v7[1] = *(v9 - 4);
      }

      *(v9 - 8) = v23;
      *(v9 - 4) = v98;
      if (v100 < v102)
      {
LABEL_173:
        result = sub_18383EDC0(v7, v9 - 8, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v110 = sub_1838401F4(v7, v9 - 8);
        result = sub_1838401F4(v9, a2);
        if (result)
        {
          a2 = v9 - 8;
          if (v110)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v110)
        {
          goto LABEL_173;
        }
      }
    }
  }

  v144 = (v9 + 8);
  v146 = v9 == a2 || v144 == a2;
  if (a4)
  {
    if (v146)
    {
      return result;
    }

    v147 = 0;
    v148 = v9;
LABEL_249:
    v150 = v148;
    v148 = v144;
    v151 = *v150;
    v152 = *(v150 + 8);
    if (*v150 >= v152)
    {
      if (v152 < v151)
      {
        goto LABEL_248;
      }

      v154 = *(v150 + 4);
      v153 = *(v150 + 12);
      if (v154 >= v153)
      {
        goto LABEL_248;
      }
    }

    else
    {
      v153 = *(v150 + 12);
      v154 = *(v150 + 4);
    }

    *(v150 + 8) = v151;
    *(v148 + 4) = v154;
    v149 = v9;
    if (v150 == v9)
    {
      goto LABEL_247;
    }

    v155 = v147;
    while (1)
    {
      v158 = *(v9 + v155 - 8);
      if (v158 < v152)
      {
        v156 = *(v9 + v155 - 4);
      }

      else
      {
        if (v152 < v158)
        {
          v149 = v150;
LABEL_247:
          *v149 = v152;
          *(v149 + 4) = v153;
LABEL_248:
          v144 = (v148 + 8);
          v147 += 8;
          if (v148 + 8 == a2)
          {
            return result;
          }

          goto LABEL_249;
        }

        v149 = v9 + v155;
        v156 = *(v9 + v155 - 4);
        if (v156 >= v153)
        {
          goto LABEL_247;
        }
      }

      v150 -= 8;
      v157 = v9 + v155;
      *v157 = v158;
      *(v157 + 4) = v156;
      v155 -= 8;
      if (!v155)
      {
        v149 = v9;
        goto LABEL_247;
      }
    }
  }

  if (!v146)
  {
    for (j = v9 + 4; ; j += 8)
    {
      v208 = v7;
      v7 = v144;
      v209 = *v208;
      v210 = v208[2];
      if (*v208 < v210)
      {
        break;
      }

      if (v210 >= v209)
      {
        v213 = *(v208 + 1);
        v211 = *(v208 + 3);
        if (v213 < v211)
        {
          goto LABEL_339;
        }
      }

LABEL_336:
      v144 += 2;
      if (v7 + 2 == a2)
      {
        return result;
      }
    }

    v211 = *(v208 + 3);
LABEL_339:
    for (k = j; ; k -= 8)
    {
      *(k + 4) = v209;
      *(k + 8) = *k;
      v209 = *(k - 12);
      if (v209 >= v210 && (v210 < v209 || *(k - 8) >= v211))
      {
        break;
      }
    }

    *(k - 4) = v210;
    *k = v211;
    goto LABEL_336;
  }

  return result;
}

uint64_t sub_18383FFB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v5 = *a2;
  if (*result >= *a2 && (v5 < v4 || *(result + 4) >= *(a2 + 4)))
  {
    v12 = *a3;
    if (v5 >= *a3)
    {
      if (v12 < v5 || (v13 = *(a2 + 4), v14 = *(a3 + 4), v13 >= v14))
      {
        v5 = *a3;
        v9 = *a4;
        if (*a3 < *a4)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v13 = *(a2 + 4);
      v14 = *(a3 + 4);
    }

    *a2 = v12;
    *a3 = v5;
    *(a2 + 4) = v14;
    *(a3 + 4) = v13;
    v15 = *result;
    v16 = *a2;
    if (*result < *a2)
    {
      v17 = *(result + 4);
      v18 = *(a2 + 4);
      goto LABEL_14;
    }

    if (v16 >= v15)
    {
      v17 = *(result + 4);
      v18 = *(a2 + 4);
      if (v17 < v18)
      {
LABEL_14:
        *result = v16;
        *a2 = v15;
        *(result + 4) = v18;
        *(a2 + 4) = v17;
        v5 = *a3;
        v9 = *a4;
        if (*a3 >= *a4)
        {
          goto LABEL_5;
        }

LABEL_32:
        v10 = *(a3 + 4);
        v11 = *(a4 + 4);
        goto LABEL_33;
      }
    }

    goto LABEL_31;
  }

  v6 = *a3;
  if (v5 >= *a3)
  {
    v19 = *(a2 + 4);
    if (v6 < v5 || (v7 = *(a3 + 4), v19 >= v7))
    {
      *result = v5;
      *a2 = v4;
      v20 = *(result + 4);
      *(result + 4) = v19;
      *(a2 + 4) = v20;
      v5 = *a3;
      if (v4 >= *a3)
      {
        if (v5 < v4 || (v21 = *(a3 + 4), v20 >= v21))
        {
LABEL_31:
          v9 = *a4;
          if (v5 < *a4)
          {
            goto LABEL_32;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *(a3 + 4);
      }

      *a2 = v5;
      *a3 = v4;
      *(a2 + 4) = v21;
      v5 = v4;
      *(a3 + 4) = v20;
      v9 = *a4;
      if (v5 < *a4)
      {
        goto LABEL_32;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v7 = *(a3 + 4);
  }

  *result = v6;
  *a3 = v4;
  v8 = *(result + 4);
  *(result + 4) = v7;
  *(a3 + 4) = v8;
  v5 = v4;
  v9 = *a4;
  if (v5 < *a4)
  {
    goto LABEL_32;
  }

LABEL_5:
  if (v9 >= v5)
  {
    v10 = *(a3 + 4);
    v11 = *(a4 + 4);
    if (v10 < v11)
    {
LABEL_33:
      *a3 = v9;
      *a4 = v5;
      *(a3 + 4) = v11;
      *(a4 + 4) = v10;
      v22 = *a2;
      v23 = *a3;
      if (*a2 >= *a3)
      {
        if (v23 < v22)
        {
          return result;
        }

        v24 = *(a2 + 4);
        v25 = *(a3 + 4);
        if (v24 >= v25)
        {
          return result;
        }
      }

      else
      {
        v24 = *(a2 + 4);
        v25 = *(a3 + 4);
      }

      *a2 = v23;
      *a3 = v22;
      *(a2 + 4) = v25;
      *(a3 + 4) = v24;
      v26 = *result;
      v27 = *a2;
      if (*result >= *a2)
      {
        if (v27 < v26)
        {
          return result;
        }

        v28 = *(result + 4);
        v29 = *(a2 + 4);
        if (v28 >= v29)
        {
          return result;
        }
      }

      else
      {
        v28 = *(result + 4);
        v29 = *(a2 + 4);
      }

      *result = v27;
      *a2 = v26;
      *(result + 4) = v29;
      *(a2 + 4) = v28;
    }
  }

  return result;
}

BOOL sub_1838401F4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v22 = *a1;
        v23 = *(a1 + 8);
        if (*a1 >= v23 && (v23 < v22 || *(a1 + 4) >= *(a1 + 12)))
        {
          v33 = *(a2 - 8);
          if (v23 >= v33)
          {
            if (v33 < v23)
            {
              return 1;
            }

            v34 = *(a1 + 12);
            v35 = *(a2 - 4);
            if (v34 >= v35)
            {
              return 1;
            }
          }

          else
          {
            v34 = *(a1 + 12);
            v35 = *(a2 - 4);
          }

          *(a1 + 8) = v33;
          *(a2 - 8) = v23;
          *(a1 + 12) = v35;
          *(a2 - 4) = v34;
          v36 = *a1;
          v37 = *(a1 + 8);
          if (*a1 >= v37)
          {
            if (v37 < v36)
            {
              return 1;
            }

            v38 = *(a1 + 4);
            v39 = *(a1 + 12);
            if (v38 >= v39)
            {
              return 1;
            }
          }

          else
          {
            v38 = *(a1 + 4);
            v39 = *(a1 + 12);
          }

          *a1 = v37;
          *(a1 + 8) = v36;
          *(a1 + 4) = v39;
          *(a1 + 12) = v38;
          return 1;
        }

        v24 = *(a2 - 8);
        if (v23 >= v24)
        {
          v44 = *(a1 + 12);
          if (v24 < v23 || (v25 = *(a2 - 4), v44 >= v25))
          {
            *a1 = v23;
            *(a1 + 8) = v22;
            v45 = *(a1 + 4);
            *(a1 + 4) = v44;
            *(a1 + 12) = v45;
            v46 = *(a2 - 8);
            if (v22 >= v46)
            {
              if (v46 < v22)
              {
                return 1;
              }

              v47 = *(a2 - 4);
              if (v45 >= v47)
              {
                return 1;
              }
            }

            else
            {
              v47 = *(a2 - 4);
            }

            *(a1 + 8) = v46;
            *(a2 - 8) = v22;
            *(a1 + 12) = v47;
            result = 1;
            *(a2 - 4) = v45;
            return result;
          }
        }

        else
        {
          v25 = *(a2 - 4);
        }

        *a1 = v24;
        *(a2 - 8) = v22;
        v26 = *(a1 + 4);
        *(a1 + 4) = v25;
        *(a2 - 4) = v26;
        return 1;
      case 4:
        sub_18383FFB0(a1, a1 + 8, a1 + 16, a2 - 8);
        return 1;
      case 5:
        sub_18383FFB0(a1, a1 + 8, a1 + 16, a1 + 24);
        v10 = *(a1 + 24);
        v11 = *(a2 - 8);
        if (v10 >= v11)
        {
          if (v11 < v10)
          {
            return 1;
          }

          v12 = *(a1 + 28);
          v13 = *(a2 - 4);
          if (v12 >= v13)
          {
            return 1;
          }
        }

        else
        {
          v12 = *(a1 + 28);
          v13 = *(a2 - 4);
        }

        *(a1 + 24) = v11;
        *(a2 - 8) = v10;
        *(a1 + 28) = v13;
        *(a2 - 4) = v12;
        v14 = *(a1 + 16);
        v15 = *(a1 + 24);
        if (v14 >= v15)
        {
          if (v15 < v14)
          {
            return 1;
          }

          v16 = *(a1 + 20);
          v17 = *(a1 + 28);
          if (v16 >= v17)
          {
            return 1;
          }
        }

        else
        {
          v16 = *(a1 + 20);
          v17 = *(a1 + 28);
        }

        *(a1 + 16) = v15;
        *(a1 + 24) = v14;
        *(a1 + 20) = v17;
        *(a1 + 28) = v16;
        v18 = *(a1 + 8);
        if (v18 >= v15)
        {
          if (v15 < v18)
          {
            return 1;
          }

          v19 = *(a1 + 12);
          if (v19 >= v17)
          {
            return 1;
          }
        }

        else
        {
          v19 = *(a1 + 12);
        }

        *(a1 + 8) = v15;
        *(a1 + 16) = v18;
        *(a1 + 12) = v17;
        *(a1 + 20) = v19;
        v20 = *a1;
        if (*a1 >= v15)
        {
          if (v15 < v20)
          {
            return 1;
          }

          v21 = *(a1 + 4);
          if (v21 >= v17)
          {
            return 1;
          }
        }

        else
        {
          v21 = *(a1 + 4);
        }

        *a1 = v15;
        *(a1 + 8) = v20;
        *(a1 + 4) = v17;
        result = 1;
        *(a1 + 12) = v21;
        return result;
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
      v4 = *(a2 - 8);
      if (*a1 < v4)
      {
        v5 = *(a1 + 4);
        v6 = *(a2 - 4);
LABEL_6:
        *a1 = v4;
        *(a2 - 8) = v3;
        *(a1 + 4) = v6;
        result = 1;
        *(a2 - 4) = v5;
        return result;
      }

      if (v4 >= v3)
      {
        v5 = *(a1 + 4);
        v6 = *(a2 - 4);
        if (v5 < v6)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v27 = a1 + 16;
  v28 = *a1;
  v29 = *(a1 + 8);
  if (*a1 >= v29 && (v29 < v28 || *(a1 + 4) >= *(a1 + 12)))
  {
    v40 = *v27;
    if (v29 >= *v27)
    {
      if (v40 < v29)
      {
        goto LABEL_85;
      }

      v41 = *(a1 + 12);
      v42 = *(a1 + 20);
      if (v41 >= v42)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v41 = *(a1 + 12);
      v42 = *(a1 + 20);
    }

    *(a1 + 8) = v40;
    *(a1 + 16) = v29;
    *(a1 + 12) = v42;
    *(a1 + 20) = v41;
    if (v28 >= v40)
    {
      if (v40 < v28)
      {
        goto LABEL_85;
      }

      v43 = *(a1 + 4);
      if (v43 >= v42)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v43 = *(a1 + 4);
    }

    *a1 = v40;
    *(a1 + 8) = v28;
    *(a1 + 4) = v42;
    *(a1 + 12) = v43;
    goto LABEL_85;
  }

  v30 = *v27;
  if (v29 < *v27)
  {
    v31 = *(a1 + 20);
LABEL_27:
    *a1 = v30;
    *(a1 + 16) = v28;
    v32 = *(a1 + 4);
    *(a1 + 4) = v31;
    *(a1 + 20) = v32;
    goto LABEL_85;
  }

  v48 = *(a1 + 12);
  if (v30 >= v29)
  {
    v31 = *(a1 + 20);
    if (v48 < v31)
    {
      goto LABEL_27;
    }
  }

  *a1 = v29;
  *(a1 + 8) = v28;
  v49 = *(a1 + 4);
  *(a1 + 4) = v48;
  *(a1 + 12) = v49;
  if (v28 >= v30)
  {
    if (v30 < v28)
    {
      goto LABEL_85;
    }

    v50 = *(a1 + 20);
    if (v49 >= v50)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v50 = *(a1 + 20);
  }

  *(a1 + 8) = v30;
  *(a1 + 16) = v28;
  *(a1 + 12) = v50;
  *(a1 + 20) = v49;
LABEL_85:
  v51 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v52 = 0;
  v53 = 0;
  while (2)
  {
    v54 = *v27;
    v55 = *v51;
    if (*v27 >= *v51)
    {
      if (v55 < v54)
      {
        goto LABEL_89;
      }

      v57 = *(v27 + 4);
      v56 = *(v51 + 4);
      if (v57 >= v56)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v56 = *(v51 + 4);
      v57 = *(v27 + 4);
    }

    *v51 = v54;
    *(v51 + 4) = v57;
    v58 = v52;
    while (1)
    {
      v60 = a1 + v58;
      v61 = *(a1 + v58 + 8);
      if (v61 >= v55)
      {
        break;
      }

      v59 = *(v60 + 12);
LABEL_94:
      v27 -= 8;
      *(v60 + 16) = v61;
      *(a1 + v58 + 20) = v59;
      v58 -= 8;
      if (v58 == -16)
      {
        v27 = a1;
        goto LABEL_88;
      }
    }

    if (v55 >= v61)
    {
      v59 = *(a1 + v58 + 12);
      if (v59 >= v56)
      {
        goto LABEL_88;
      }

      goto LABEL_94;
    }

    v27 = a1 + v58 + 16;
LABEL_88:
    *v27 = v55;
    *(v27 + 4) = v56;
    if (++v53 != 8)
    {
LABEL_89:
      v27 = v51;
      v52 += 8;
      v51 += 8;
      if (v51 == a2)
      {
        return 1;
      }

      continue;
    }

    return v51 + 8 == a2;
  }
}

uint64_t sub_18384075C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    sub_18383AB38(i - 248);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1838407B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_50;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = v6[1] ? v6[1] : v6;
  v26 = v9;
  if (!v9)
  {
    goto LABEL_50;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v23 = v10[1];
        if (!v23)
        {
          break;
        }

        do
        {
          v10 = v23;
          v23 = *v23;
        }

        while (v23);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v25 = v10;
  if (a2 == a3)
  {
    v12 = a1;
    sub_18368A374(a1, v9);
    if (v10)
    {
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  v13 = a2;
  do
  {
    *(v9 + 8) = *(v13 + 8);
    if (v9 != v13)
    {
      sub_183840B30(v9 + 5, v13[5], v13[6], (v13[6] - v13[5]) >> 3);
      v9 = v26;
    }

    v14 = *v8;
    v15 = (a1 + 8);
    v16 = (a1 + 8);
    if (!*v8)
    {
LABEL_22:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v15;
      *v16 = v9;
      v17 = **a1;
      if (!v17)
      {
        goto LABEL_24;
      }

LABEL_23:
      *a1 = v17;
      goto LABEL_24;
    }

    do
    {
      while (1)
      {
        v15 = v14;
        if (*(v9 + 8) >= *(v14 + 8))
        {
          break;
        }

        v14 = *v14;
        v16 = v15;
        if (!*v15)
        {
          goto LABEL_22;
        }
      }

      v14 = v14[1];
    }

    while (v14);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v15;
    v15[1] = v9;
    v17 = **a1;
    if (v17)
    {
      goto LABEL_23;
    }

LABEL_24:
    sub_1836894A0(*(a1 + 8), v9);
    ++*(a1 + 16);
    v9 = v25;
    v26 = v25;
    if (v25)
    {
      v10 = v25[2];
      if (v10)
      {
        v18 = *v10;
        if (*v10 == v25)
        {
          *v10 = 0;
          while (1)
          {
            v21 = v10[1];
            if (!v21)
            {
              break;
            }

            do
            {
              v10 = v21;
              v21 = *v21;
            }

            while (v21);
          }
        }

        else
        {
          for (v10[1] = 0; v18; v18 = v10[1])
          {
            do
            {
              v10 = v18;
              v18 = *v18;
            }

            while (v18);
          }
        }
      }

      v25 = v10;
      v19 = v13[1];
      if (!v19)
      {
        do
        {
LABEL_35:
          a2 = v13[2];
          v20 = *a2 == v13;
          v13 = a2;
        }

        while (!v20);
        goto LABEL_37;
      }
    }

    else
    {
      v10 = 0;
      v19 = v13[1];
      if (!v19)
      {
        goto LABEL_35;
      }
    }

    do
    {
      a2 = v19;
      v19 = *v19;
    }

    while (v19);
LABEL_37:
    if (!v9)
    {
      break;
    }

    v13 = a2;
  }

  while (a2 != a3);
  v12 = a1;
  sub_18368A374(a1, v9);
  if (v10)
  {
LABEL_47:
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    sub_18368A374(v12, v10);
  }

LABEL_50:
  if (a2 != a3)
  {
    sub_18383B618();
  }
}

void sub_183840B1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183840EA4(va);
  _Unwind_Resume(a1);
}

char *sub_183840B30(char **a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = a1[2];
  v6 = *a1;
  result = v6;
  if (a4 > (v5 - v6) >> 3)
  {
    if (v6)
    {
      a1[1] = v6;
      v8 = a4;
      operator delete(v6);
      a4 = v8;
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v5 >> 2;
      if (v5 >> 2 <= a4)
      {
        v9 = a4;
      }

      v31 = v5 >= 0x7FFFFFFFFFFFFFF8;
      v10 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v31)
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }
    }

    sub_18383B70C();
  }

  v11 = a1[1];
  if (a4 <= (v11 - v6) >> 3)
  {
    if (a2 != a3)
    {
      v25 = a3 - a2 - 8;
      if (v25 >= 0x78)
      {
        v43 = v25 & 0xFFFFFFFFFFFFFFF8 | 4;
        v44 = &v6[v43];
        v45 = a2 + v43;
        v46 = (v25 & 0xFFFFFFFFFFFFFFF8) + 8;
        v48 = (v6 + 4) < a2 + v46 && a2 + 4 < &v6[v46];
        if (v44 <= a2 || v6 >= v45)
        {
          if (v48)
          {
            v26 = a2;
          }

          else
          {
            v50 = (v25 >> 3) + 1;
            v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFF8);
            result = &v6[v51];
            v26 = (a2 + v51);
            v52 = (a2 + 32);
            v53 = v6 + 32;
            v54 = v50 & 0x3FFFFFFFFFFFFFF8;
            do
            {
              v56 = *(v52 - 2);
              v55 = *(v52 - 1);
              v58 = *v52;
              v57 = v52[1];
              v52 += 4;
              *(v53 - 2) = v56;
              *(v53 - 1) = v55;
              *v53 = v58;
              v53[1] = v57;
              v53 += 4;
              v54 -= 8;
            }

            while (v54);
            if (v50 == (v50 & 0x3FFFFFFFFFFFFFF8))
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v26 = a2;
        }
      }

      else
      {
        v26 = a2;
      }

      do
      {
        *result = *v26;
        *(result + 1) = *(v26++ + 1);
        result += 8;
      }

      while (v26 != a3);
    }

LABEL_29:
    a1[1] = result;
    return result;
  }

  v12 = (a2 + v11 - v6);
  v13 = v11 - v6;
  if (v11 == v6)
  {
    goto LABEL_16;
  }

  v14 = v13 - 8;
  if ((v13 - 8) < 0x78)
  {
    v15 = a2;
    do
    {
LABEL_15:
      *result = *v15;
      *(result + 1) = *(v15++ + 1);
      result += 8;
    }

    while (v15 != v12);
    goto LABEL_16;
  }

  v27 = v14 & 0xFFFFFFFFFFFFFFF8 | 4;
  v28 = &v6[v27];
  v29 = a2 + v27;
  v30 = (v14 & 0xFFFFFFFFFFFFFFF8) + 8;
  v31 = (v6 + 4) >= a2 + v30 || a2 + 4 >= &v6[v30];
  v32 = !v31;
  v15 = a2;
  if (v28 > a2 && v6 < v29)
  {
    goto LABEL_15;
  }

  if (v32)
  {
    goto LABEL_15;
  }

  v34 = (v14 >> 3) + 1;
  v35 = 8 * (v34 & 0x3FFFFFFFFFFFFFF8);
  result = &v6[v35];
  v15 = (a2 + v35);
  v36 = (a2 + 32);
  v37 = v6 + 32;
  v38 = v34 & 0x3FFFFFFFFFFFFFF8;
  do
  {
    v40 = *(v36 - 2);
    v39 = *(v36 - 1);
    v42 = *v36;
    v41 = v36[1];
    v36 += 4;
    *(v37 - 2) = v40;
    *(v37 - 1) = v39;
    *v37 = v42;
    v37[1] = v41;
    v37 += 4;
    v38 -= 8;
  }

  while (v38);
  if (v34 != (v34 & 0x3FFFFFFFFFFFFFF8))
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v12 == a3)
  {
    a1[1] = v11;
  }

  else
  {
    v16 = a3 + v6 - &v11[a2] - 8;
    if (v16 < 0x18)
    {
      goto LABEL_22;
    }

    if (&v6[-a2] < 0x20)
    {
      goto LABEL_22;
    }

    v17 = (v16 >> 3) + 1;
    v18 = 8 * (v17 & 0x3FFFFFFFFFFFFFFCLL);
    v12 = (v12 + v18);
    v19 = &v11[v18];
    v20 = v11 + 16;
    v21 = (a2 + v20 - v6);
    v22 = v17 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v21;
      *(v20 - 1) = *(v21 - 1);
      *v20 = v23;
      v20 += 32;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    v11 = v19;
    if (v17 != (v17 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_22:
      v19 = v11;
      do
      {
        v24 = *v12++;
        *v19 = v24;
        v19 += 8;
      }

      while (v12 != a3);
    }

    a1[1] = v19;
  }

  return result;
}

uint64_t sub_183840EA4(uint64_t a1)
{
  sub_18368A374(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_18368A374(*a1, v2);
  }

  return a1;
}

void sub_183840EFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a2 - 248;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = a2 - v8;
    v10 = 0xEF7BDEF7BDEF7BDFLL * ((a2 - v8) >> 3);
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          sub_18384215C(a1, a1 + 248, v7);
          return;
        case 4:
          sub_183842538(a1, a1 + 248, a1 + 496, v7);
          return;
        case 5:
          sub_1838427CC(a1, a1 + 248, a1 + 496, a1 + 744, v7);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v94 = *(a2 - 168) - *(a2 - 176);
        if (v94)
        {
          v95 = *(a2 - 56);
          v96 = v95 / pow((v94 >> 2), 0.330993);
          v97 = *(a1 + 80) - *(a1 + 72);
          if (v97)
          {
LABEL_102:
            v98 = *(a1 + 192);
            v99 = v98 / pow((v97 >> 2), 0.330993);
            if (v96 <= v99)
            {
              return;
            }

LABEL_217:
            sub_18383ACBC(v204, a1);
            sub_183842EDC(a1, v7);
            sub_183842EDC(v7, v204);
            sub_18383AB38(v204);
            return;
          }
        }

        else
        {
          v96 = *(a2 - 56);
          v97 = *(a1 + 80) - *(a1 + 72);
          if (v97)
          {
            goto LABEL_102;
          }
        }

        if (v96 <= *(a1 + 192))
        {
          return;
        }

        goto LABEL_217;
      }
    }

    if (v9 <= 5951)
    {
      if (a4)
      {
        if (a1 == a2)
        {
          return;
        }

        v100 = a1 + 248;
        if (a1 + 248 == a2)
        {
          return;
        }

        v101 = 0;
        v102 = a1;
        while (1)
        {
          v103 = v100;
          v104 = *(v102 + 328) - *(v102 + 320);
          if (v104)
          {
            v105 = *(v102 + 440);
            v106 = v105 / pow((v104 >> 2), 0.330993);
            v107 = a2;
            v108 = *(v102 + 80) - *(v102 + 72);
            if (v108)
            {
              goto LABEL_112;
            }
          }

          else
          {
            v106 = *(v102 + 440);
            v107 = a2;
            v108 = *(v102 + 80) - *(v102 + 72);
            if (v108)
            {
LABEL_112:
              v109 = *(v102 + 192);
              v110 = v109 / pow((v108 >> 2), 0.330993);
              if (v106 <= v110)
              {
                goto LABEL_109;
              }

              goto LABEL_116;
            }
          }

          if (v106 <= *(v102 + 192))
          {
            goto LABEL_109;
          }

LABEL_116:
          sub_18383ACBC(v204, v103);
          v111 = v101;
          while (1)
          {
            sub_183842EDC(a1 + v111 + 248, a1 + v111);
            if (!v111)
            {
              break;
            }

            if (v206 == v205)
            {
              v115 = v207;
              v116 = a1 + v111;
              v117 = *(a1 + v111 - 168) - *(a1 + v111 - 176);
              if (v117)
              {
                goto LABEL_117;
              }

LABEL_123:
              v111 -= 248;
              if (v115 <= *(v116 - 56))
              {
LABEL_124:
                v118 = a1 + v111 + 248;
                goto LABEL_126;
              }
            }

            else
            {
              v114 = v207;
              v115 = v114 / pow(((v206 - v205) >> 2), 0.330993);
              v116 = a1 + v111;
              v117 = *(a1 + v111 - 168) - *(a1 + v111 - 176);
              if (!v117)
              {
                goto LABEL_123;
              }

LABEL_117:
              v112 = *(v116 - 56);
              v113 = v112 / pow((v117 >> 2), 0.330993);
              v111 -= 248;
              if (v115 <= v113)
              {
                goto LABEL_124;
              }
            }
          }

          v118 = a1;
LABEL_126:
          sub_183842EDC(v118, v204);
          sub_18383AB38(v204);
LABEL_109:
          v100 = v103 + 248;
          v101 += 248;
          v102 = v103;
          if (v103 + 248 == v107)
          {
            return;
          }
        }
      }

      if (a1 == a2)
      {
        return;
      }

      v184 = a1 + 248;
      if (a1 + 248 == a2)
      {
        return;
      }

      while (2)
      {
        v185 = v184;
        v186 = *(a1 + 328) - *(a1 + 320);
        if (v186)
        {
          v187 = *(a1 + 440);
          v188 = v187 / pow((v186 >> 2), 0.330993);
          v189 = a2;
          v190 = *(a1 + 80) - *(a1 + 72);
          if (v190)
          {
LABEL_203:
            v191 = *(a1 + 192);
            v192 = v191 / pow((v190 >> 2), 0.330993);
            if (v188 > v192)
            {
              break;
            }

            goto LABEL_200;
          }
        }

        else
        {
          v188 = *(a1 + 440);
          v189 = a2;
          v190 = *(a1 + 80) - *(a1 + 72);
          if (v190)
          {
            goto LABEL_203;
          }
        }

        if (v188 <= *(a1 + 192))
        {
LABEL_200:
          v184 = v185 + 248;
          a1 = v185;
          if (v185 + 248 == v189)
          {
            return;
          }

          continue;
        }

        break;
      }

      sub_18383ACBC(v204, v185);
      while (1)
      {
        sub_183842EDC(a1 + 248, a1);
        if (v206 == v205)
        {
          v196 = v207;
          v197 = *(a1 - 168) - *(a1 - 176);
          if (v197)
          {
LABEL_208:
            v193 = *(a1 - 56);
            v194 = v193 / pow((v197 >> 2), 0.330993);
            a1 -= 248;
            if (v196 <= v194)
            {
              goto LABEL_214;
            }

            continue;
          }
        }

        else
        {
          v195 = v207;
          v196 = v195 / pow(((v206 - v205) >> 2), 0.330993);
          v197 = *(a1 - 168) - *(a1 - 176);
          if (v197)
          {
            goto LABEL_208;
          }
        }

        v198 = *(a1 - 56);
        a1 -= 248;
        if (v196 <= v198)
        {
LABEL_214:
          sub_183842EDC(a1 + 248, v204);
          sub_18383AB38(v204);
          goto LABEL_200;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v12 = v10 >> 1;
    v13 = a1 + 248 * (v10 >> 1);
    if (v9 < 0x7C01)
    {
      sub_18384215C(v13, a1, v7);
      --a3;
      if (a4)
      {
        goto LABEL_18;
      }

LABEL_15:
      v15 = *(a1 - 168) - *(a1 - 176);
      if (v15)
      {
        v16 = *(a1 - 56);
        v17 = v16 / pow((v15 >> 2), 0.330993);
        v18 = *(a1 + 80) - *(a1 + 72);
        if (v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v17 = *(a1 - 56);
        v18 = *(a1 + 80) - *(a1 + 72);
        if (v18)
        {
LABEL_17:
          v19 = *(a1 + 192);
          v20 = v19 / pow((v18 >> 2), 0.330993);
          if (v17 > v20)
          {
            goto LABEL_18;
          }

          goto LABEL_58;
        }
      }

      if (v17 > *(a1 + 192))
      {
        goto LABEL_18;
      }

LABEL_58:
      sub_18383ACBC(v200, a1);
      v59 = v201;
      v58 = v202;
      if (v202 == v201)
      {
        v60 = v203;
        v62 = v203;
        v63 = a2;
        v64 = *(a2 - 168) - *(a2 - 176);
        if (v64)
        {
LABEL_60:
          v65 = *(v63 - 56);
          v66 = v65 / pow((v64 >> 2), 0.330993);
          goto LABEL_63;
        }
      }

      else
      {
        v60 = v203;
        v61 = v203;
        v62 = v61 / pow(((v202 - v201) >> 2), 0.330993);
        v63 = a2;
        v64 = *(a2 - 168) - *(a2 - 176);
        if (v64)
        {
          goto LABEL_60;
        }
      }

      v66 = *(v63 - 56);
LABEL_63:
      v67 = v60 / pow(((v58 - v59) >> 2), 0.330993);
      if (v58 != v59)
      {
        v60 = v67;
      }

      if (v62 <= v66)
      {
        v72 = a1 + 248;
        while (1)
        {
          v8 = v72;
          if (v72 >= v63)
          {
            break;
          }

          v75 = *(v72 + 80) - *(v72 + 72);
          if (v75)
          {
            v73 = *(v8 + 192);
            v74 = v73 / pow((v75 >> 2), 0.330993);
            v72 = v8 + 248;
            if (v60 > v74)
            {
              break;
            }
          }

          else
          {
            v72 = v8 + 248;
            if (v60 > *(v8 + 192))
            {
              break;
            }
          }
        }
      }

      else
      {
        v8 = a1;
        do
        {
          while (1)
          {
            v70 = *(v8 + 328) - *(v8 + 320);
            if (!v70)
            {
              break;
            }

            v68 = *(v8 + 440);
            v69 = v68 / pow((v70 >> 2), 0.330993);
            v8 += 248;
            if (v60 > v69)
            {
              goto LABEL_76;
            }
          }

          v71 = *(v8 + 440);
          v8 += 248;
        }

        while (v60 <= v71);
      }

LABEL_76:
      v76 = v63;
      if (v8 < v63)
      {
        v76 = v63;
        do
        {
          while (1)
          {
            v79 = *(v76 - 168) - *(v76 - 176);
            if (!v79)
            {
              break;
            }

            v77 = *(v76 - 56);
            v78 = v77 / pow((v79 >> 2), 0.330993);
            v76 -= 248;
            if (v60 <= v78)
            {
              goto LABEL_92;
            }
          }

          v80 = *(v76 - 56);
          v76 -= 248;
        }

        while (v60 > v80);
      }

LABEL_92:
      while (v8 < v76)
      {
        sub_18383ACBC(v204, v8);
        sub_183842EDC(v8, v76);
        sub_183842EDC(v76, v204);
        sub_18383AB38(v204);
        v82 = v201;
        v81 = v202;
        v83 = pow(((v202 - v201) >> 2), 0.330993);
        v84 = v203 / v83;
        if (v81 == v82)
        {
          v85 = v203;
        }

        else
        {
          v85 = v84;
        }

        do
        {
          while (1)
          {
            v87 = *(v8 + 328) - *(v8 + 320);
            if (v87)
            {
              break;
            }

            v86 = *(v8 + 440);
            v8 += 248;
            if (v85 > v86)
            {
              goto LABEL_90;
            }
          }

          v88 = *(v8 + 440);
          v89 = v88 / pow((v87 >> 2), 0.330993);
          v8 += 248;
        }

        while (v85 <= v89);
        do
        {
LABEL_90:
          while (1)
          {
            v91 = *(v76 - 168) - *(v76 - 176);
            if (v91)
            {
              break;
            }

            v90 = *(v76 - 56);
            v76 -= 248;
            if (v85 <= v90)
            {
              goto LABEL_92;
            }
          }

          v92 = *(v76 - 56);
          v93 = v92 / pow((v91 >> 2), 0.330993);
          v76 -= 248;
        }

        while (v85 > v93);
      }

      if (v8 - 248 != a1)
      {
        sub_183842EDC(a1, v8 - 248);
      }

      sub_183842EDC(v8 - 248, v200);
      sub_18383AB38(v200);
      a4 = 0;
    }

    else
    {
      sub_18384215C(a1, v13, v7);
      v14 = 248 * v12;
      sub_18384215C(a1 + 248, v14 + a1 - 248, a2 - 496);
      sub_18384215C(a1 + 496, a1 + 248 + v14, a2 - 744);
      sub_18384215C(v14 + a1 - 248, v13, a1 + 248 + v14);
      sub_18383ACBC(v204, a1);
      sub_183842EDC(a1, v13);
      sub_183842EDC(v13, v204);
      sub_18383AB38(v204);
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_18:
      sub_18383ACBC(v200, a1);
      v22 = v201;
      v21 = v202;
      v23 = pow(((v202 - v201) >> 2), 0.330993);
      v24 = 0;
      v25 = v203 / v23;
      if (v21 == v22)
      {
        v26 = v203;
      }

      else
      {
        v26 = v25;
      }

      do
      {
        while (1)
        {
          v29 = a1 + v24;
          v30 = *(a1 + v24 + 328) - *(a1 + v24 + 320);
          if (!v30)
          {
            break;
          }

          v27 = *(v29 + 440);
          v28 = v27 / pow((v30 >> 2), 0.330993);
          v24 += 248;
          if (v28 <= v26)
          {
            goto LABEL_24;
          }
        }

        v24 += 248;
      }

      while (*(v29 + 440) > v26);
LABEL_24:
      v31 = a1 + v24;
      v32 = a2;
      if (v24 == 248)
      {
        v32 = a2;
        while (v31 < v32)
        {
          v39 = *(v32 - 168) - *(v32 - 176);
          if (v39)
          {
            v37 = *(v32 - 56);
            v38 = v37 / pow((v39 >> 2), 0.330993);
            v32 -= 248;
            if (v38 > v26)
            {
              break;
            }
          }

          else
          {
            v40 = *(v32 - 56);
            v32 -= 248;
            if (v40 > v26)
            {
              break;
            }
          }
        }
      }

      else
      {
        do
        {
          while (1)
          {
            v35 = *(v32 - 168) - *(v32 - 176);
            if (!v35)
            {
              break;
            }

            v33 = *(v32 - 56);
            v34 = v33 / pow((v35 >> 2), 0.330993);
            v32 -= 248;
            if (v34 > v26)
            {
              goto LABEL_34;
            }
          }

          v36 = *(v32 - 56);
          v32 -= 248;
        }

        while (v36 <= v26);
      }

LABEL_34:
      if (v31 >= v32)
      {
        v56 = v31 - 248;
        if (v31 - 248 != a1)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v41 = a1 + v24;
        v42 = v32;
        do
        {
          sub_18383ACBC(v204, v41);
          sub_183842EDC(v41, v42);
          sub_183842EDC(v42, v204);
          sub_18383AB38(v204);
          v44 = v201;
          v43 = v202;
          v45 = pow(((v202 - v201) >> 2), 0.330993);
          v46 = v203 / v45;
          if (v43 == v44)
          {
            v47 = v203;
          }

          else
          {
            v47 = v46;
          }

          do
          {
            while (1)
            {
              v50 = *(v41 + 328) - *(v41 + 320);
              if (!v50)
              {
                break;
              }

              v48 = *(v41 + 440);
              v49 = v48 / pow((v50 >> 2), 0.330993);
              v41 += 248;
              if (v49 <= v47)
              {
                goto LABEL_45;
              }
            }

            v51 = *(v41 + 440);
            v41 += 248;
          }

          while (v51 > v47);
          do
          {
LABEL_45:
            while (1)
            {
              v54 = *(v42 - 168) - *(v42 - 176);
              if (!v54)
              {
                break;
              }

              v52 = *(v42 - 56);
              v53 = v52 / pow((v54 >> 2), 0.330993);
              v42 -= 248;
              if (v53 > v47)
              {
                goto LABEL_36;
              }
            }

            v55 = *(v42 - 56);
            v42 -= 248;
          }

          while (v55 <= v47);
LABEL_36:
          ;
        }

        while (v41 < v42);
        v56 = v41 - 248;
        if (v41 - 248 != a1)
        {
LABEL_51:
          sub_183842EDC(a1, v56);
        }
      }

      sub_183842EDC(v56, v200);
      sub_18383AB38(v200);
      if (v31 < v32)
      {
        goto LABEL_55;
      }

      v57 = sub_183842B2C(a1, v56);
      v8 = v56 + 248;
      if (sub_183842B2C(v56 + 248, a2))
      {
        a2 = v56;
        if (v57)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v57)
      {
LABEL_55:
        sub_183840EFC(a1, v56, a3, a4 & 1);
        a4 = 0;
        v8 = v56 + 248;
      }
    }
  }

  if (a1 == a2)
  {
    return;
  }

  v119 = v11 >> 1;
  v120 = v11 >> 1;
  do
  {
    v121 = v120;
    if (v119 < v120)
    {
      goto LABEL_130;
    }

    v122 = (2 * v120) | 1;
    v123 = a1 + 248 * v122;
    if (2 * v120 + 2 < v10)
    {
      v124 = *(v123 + 80) - *(v123 + 72);
      if (v124)
      {
        v125 = *(v123 + 192);
        v126 = v125 / pow((v124 >> 2), 0.330993);
        v127 = *(v123 + 328) - *(v123 + 320);
        if (v127)
        {
          goto LABEL_135;
        }
      }

      else
      {
        v126 = *(v123 + 192);
        v127 = *(v123 + 328) - *(v123 + 320);
        if (v127)
        {
LABEL_135:
          v128 = *(v123 + 440);
          v129 = v128 / pow((v127 >> 2), 0.330993);
          if (v126 <= v129)
          {
            goto LABEL_137;
          }

LABEL_136:
          v123 += 248;
          v122 = 2 * v121 + 2;
          goto LABEL_137;
        }
      }

      if (v126 > *(v123 + 440))
      {
        goto LABEL_136;
      }
    }

LABEL_137:
    v130 = *(v123 + 80) - *(v123 + 72);
    if (!v130)
    {
      v132 = *(v123 + 192);
      v133 = a1 + 248 * v121;
      v134 = *(v133 + 80) - *(v133 + 72);
      if (v134)
      {
        goto LABEL_139;
      }

LABEL_142:
      v135 = v133;
      if (v132 > *(v133 + 192))
      {
        goto LABEL_130;
      }

LABEL_143:
      sub_18383ACBC(v204, v135);
      v138 = v135;
      while (1)
      {
        v141 = v123;
        sub_183842EDC(v138, v123);
        if (v119 < v122)
        {
LABEL_129:
          sub_183842EDC(v141, v204);
          sub_18383AB38(v204);
          goto LABEL_130;
        }

        v142 = 2 * v122;
        v122 = (2 * v122) | 1;
        v123 = a1 + 248 * v122;
        v143 = v142 + 2;
        if (v142 + 2 >= v10)
        {
          goto LABEL_151;
        }

        v144 = *(v123 + 80) - *(v123 + 72);
        if (v144)
        {
          v145 = *(v123 + 192);
          v146 = v145 / pow((v144 >> 2), 0.330993);
          v147 = *(v123 + 328) - *(v123 + 320);
          if (!v147)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v146 = *(v123 + 192);
          v147 = *(v123 + 328) - *(v123 + 320);
          if (!v147)
          {
LABEL_158:
            if (v146 <= *(v123 + 440))
            {
              goto LABEL_151;
            }

LABEL_150:
            v123 += 248;
            v122 = v143;
            goto LABEL_151;
          }
        }

        v148 = *(v123 + 440);
        v149 = v148 / pow((v147 >> 2), 0.330993);
        if (v146 > v149)
        {
          goto LABEL_150;
        }

LABEL_151:
        v150 = *(v123 + 80) - *(v123 + 72);
        if (v150)
        {
          v151 = *(v123 + 192);
          v152 = v151 / pow((v150 >> 2), 0.330993);
          v153 = v206 - v205;
          if (v206 == v205)
          {
            goto LABEL_155;
          }

LABEL_144:
          v139 = v207;
          v140 = v139 / pow((v153 >> 2), 0.330993);
          v138 = v141;
          if (v152 > v140)
          {
            goto LABEL_129;
          }
        }

        else
        {
          v152 = *(v123 + 192);
          v153 = v206 - v205;
          if (v206 != v205)
          {
            goto LABEL_144;
          }

LABEL_155:
          v138 = v141;
          if (v152 > v207)
          {
            goto LABEL_129;
          }
        }
      }
    }

    v131 = *(v123 + 192);
    v132 = v131 / pow((v130 >> 2), 0.330993);
    v133 = a1 + 248 * v121;
    v134 = *(v133 + 80) - *(v133 + 72);
    if (!v134)
    {
      goto LABEL_142;
    }

LABEL_139:
    v135 = v133;
    v136 = *(v133 + 192);
    v137 = v136 / pow((v134 >> 2), 0.330993);
    if (v132 <= v137)
    {
      goto LABEL_143;
    }

LABEL_130:
    v120 = v121 - 1;
  }

  while (v121);
  v154 = 0xEF7BDEF7BDEF7BDFLL * (v9 >> 3);
  do
  {
    if (v154 < 2)
    {
      goto LABEL_166;
    }

    sub_18383ACBC(v200, a1);
    v156 = 0;
    v157 = a1;
    do
    {
      v158 = v157 + 248 * v156;
      v159 = v158 + 248;
      v160 = 2 * v156;
      v156 = (2 * v156) | 1;
      v161 = v160 + 2;
      if (v160 + 2 >= v154)
      {
        goto LABEL_175;
      }

      v162 = *(v158 + 328) - *(v158 + 320);
      if (v162)
      {
        v163 = *(v158 + 440);
        v164 = v163 / pow((v162 >> 2), 0.330993);
        v165 = *(v158 + 576) - *(v158 + 568);
        if (v165)
        {
          goto LABEL_173;
        }
      }

      else
      {
        v164 = *(v158 + 440);
        v165 = *(v158 + 576) - *(v158 + 568);
        if (v165)
        {
LABEL_173:
          v166 = *(v158 + 688);
          v167 = v166 / pow((v165 >> 2), 0.330993);
          if (v164 <= v167)
          {
            goto LABEL_175;
          }

LABEL_174:
          v159 = v158 + 496;
          v156 = v161;
          goto LABEL_175;
        }
      }

      if (v164 > *(v158 + 688))
      {
        goto LABEL_174;
      }

LABEL_175:
      sub_183842EDC(v157, v159);
      v157 = v159;
    }

    while (v156 <= ((v154 - 2) >> 1));
    if (v159 == a2 - 248)
    {
      sub_183842EDC(v159, v200);
      goto LABEL_165;
    }

    sub_183842EDC(v159, a2 - 248);
    sub_183842EDC(a2 - 248, v200);
    v168 = v159 - a1 + 248;
    if (v168 >= 249)
    {
      v169 = (-2 - 0x1084210842108421 * (v168 >> 3)) >> 1;
      v170 = a1 + 248 * v169;
      v171 = *(v170 + 80) - *(v170 + 72);
      if (v171)
      {
        v172 = *(v170 + 192);
        v173 = v172 / pow((v171 >> 2), 0.330993);
        v174 = *(v159 + 80) - *(v159 + 72);
        if (v174)
        {
LABEL_184:
          v175 = *(v159 + 192);
          v176 = v175 / pow((v174 >> 2), 0.330993);
          if (v173 <= v176)
          {
            goto LABEL_165;
          }

          goto LABEL_188;
        }
      }

      else
      {
        v173 = *(v170 + 192);
        v174 = *(v159 + 80) - *(v159 + 72);
        if (v174)
        {
          goto LABEL_184;
        }
      }

      if (v173 <= *(v159 + 192))
      {
        goto LABEL_165;
      }

LABEL_188:
      sub_18383ACBC(v204, v159);
      while (1)
      {
        v179 = v170;
        sub_183842EDC(v159, v170);
        if (!v169)
        {
LABEL_196:
          sub_183842EDC(v179, v204);
          sub_18383AB38(v204);
          break;
        }

        v169 = (v169 - 1) >> 1;
        v170 = a1 + 248 * v169;
        v180 = *(v170 + 80) - *(v170 + 72);
        if (v180)
        {
          v181 = *(v170 + 192);
          v182 = v181 / pow((v180 >> 2), 0.330993);
          v183 = v206 - v205;
          if (v206 != v205)
          {
            goto LABEL_189;
          }
        }

        else
        {
          v182 = *(v170 + 192);
          v183 = v206 - v205;
          if (v206 != v205)
          {
LABEL_189:
            v177 = v207;
            v178 = v177 / pow((v183 >> 2), 0.330993);
            v159 = v179;
            if (v182 <= v178)
            {
              goto LABEL_196;
            }

            continue;
          }
        }

        v159 = v179;
        if (v182 <= v207)
        {
          goto LABEL_196;
        }
      }
    }

LABEL_165:
    sub_18383AB38(v200);
LABEL_166:
    a2 -= 248;
  }

  while (v154-- > 2);
}

void sub_1838420DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_18384215C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 72);
  v6 = *(a2 + 80);
  if (v6 == v7)
  {
    v8 = *(a2 + 192);
    v9 = v8;
    v10 = *(a1 + 80) - *(a1 + 72);
    if (v10)
    {
LABEL_3:
      v11 = *(a1 + 192);
      v12 = v11 / pow((v10 >> 2), 0.330993);
      v14 = *(a3 + 72);
      v13 = *(a3 + 80);
      if (v9 > v12)
      {
        goto LABEL_4;
      }

LABEL_11:
      v19 = v13 - v14;
      if (v19)
      {
        v20 = *(a3 + 192);
        v21 = v20 / pow((v19 >> 2), 0.330993);
        v22 = v6 - v7;
        if (v6 == v7)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v21 = *(a3 + 192);
        v22 = v6 - v7;
        if (v6 == v7)
        {
LABEL_14:
          if (v21 <= v8)
          {
            return;
          }

          sub_18383ACBC(v35, a2);
          sub_183842EDC(a2, a3);
          sub_183842EDC(a3, v35);
          sub_18383AB38(v35);
          v23 = *(a2 + 80) - *(a2 + 72);
          if (v23)
          {
            v24 = *(a2 + 192);
            v25 = v24 / pow((v23 >> 2), 0.330993);
            v26 = *(a1 + 80) - *(a1 + 72);
            if (v26)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v25 = *(a2 + 192);
            v26 = *(a1 + 80) - *(a1 + 72);
            if (v26)
            {
LABEL_17:
              v27 = *(a1 + 192);
              v28 = v27 / pow((v26 >> 2), 0.330993);
              if (v25 <= v28)
              {
                return;
              }

LABEL_29:
              sub_18383ACBC(v35, a1);
              sub_183842EDC(a1, a2);
              sub_183842EDC(a2, v35);
              goto LABEL_33;
            }
          }

          if (v25 <= *(a1 + 192))
          {
            return;
          }

          goto LABEL_29;
        }
      }

      v8 = v8 / pow((v22 >> 2), 0.330993);
      goto LABEL_14;
    }
  }

  else
  {
    v8 = *(a2 + 192);
    v9 = v8 / pow(((v6 - v7) >> 2), 0.330993);
    v10 = *(a1 + 80) - *(a1 + 72);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v14 = *(a3 + 72);
  v13 = *(a3 + 80);
  if (v9 <= *(a1 + 192))
  {
    goto LABEL_11;
  }

LABEL_4:
  v15 = v13 - v14;
  if (v15)
  {
    v16 = *(a3 + 192);
    v17 = v16 / pow((v15 >> 2), 0.330993);
    v18 = v6 - v7;
    if (v6 == v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = *(a3 + 192);
  v18 = v6 - v7;
  if (v6 != v7)
  {
LABEL_6:
    v8 = v8 / pow((v18 >> 2), 0.330993);
  }

LABEL_7:
  if (v17 > v8)
  {
    sub_18383ACBC(v35, a1);
    sub_183842EDC(a1, a3);
    sub_183842EDC(a3, v35);
LABEL_33:
    sub_18383AB38(v35);
    return;
  }

  sub_18383ACBC(v35, a1);
  sub_183842EDC(a1, a2);
  sub_183842EDC(a2, v35);
  sub_18383AB38(v35);
  v29 = *(a3 + 80) - *(a3 + 72);
  if (v29)
  {
    v30 = *(a3 + 192);
    v31 = v30 / pow((v29 >> 2), 0.330993);
    v32 = *(a2 + 80) - *(a2 + 72);
    if (v32)
    {
      goto LABEL_21;
    }

LABEL_31:
    if (v31 <= *(a2 + 192))
    {
      return;
    }

    goto LABEL_32;
  }

  v31 = *(a3 + 192);
  v32 = *(a2 + 80) - *(a2 + 72);
  if (!v32)
  {
    goto LABEL_31;
  }

LABEL_21:
  v33 = *(a2 + 192);
  v34 = v33 / pow((v32 >> 2), 0.330993);
  if (v31 > v34)
  {
LABEL_32:
    sub_18383ACBC(v35, a2);
    sub_183842EDC(a2, a3);
    sub_183842EDC(a3, v35);
    goto LABEL_33;
  }
}

void sub_1838424D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_1838424E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_1838424FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_183842510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_183842524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_183842538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18384215C(a1, a2, a3);
  v8 = *(a4 + 80) - *(a4 + 72);
  if (v8)
  {
    v9 = *(a4 + 192);
    v10 = v9 / pow((v8 >> 2), 0.330993);
    v11 = *(a3 + 80) - *(a3 + 72);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v10 <= *(a3 + 192))
    {
      return;
    }

    goto LABEL_7;
  }

  v10 = *(a4 + 192);
  v11 = *(a3 + 80) - *(a3 + 72);
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = *(a3 + 192);
  v13 = v12 / pow((v11 >> 2), 0.330993);
  if (v10 <= v13)
  {
    return;
  }

LABEL_7:
  sub_18383ACBC(v26, a3);
  sub_183842EDC(a3, a4);
  sub_183842EDC(a4, v26);
  sub_18383AB38(v26);
  v14 = *(a3 + 80) - *(a3 + 72);
  if (v14)
  {
    v15 = *(a3 + 192);
    v16 = v15 / pow((v14 >> 2), 0.330993);
    v17 = *(a2 + 80) - *(a2 + 72);
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_12:
    if (v16 <= *(a2 + 192))
    {
      return;
    }

    goto LABEL_13;
  }

  v16 = *(a3 + 192);
  v17 = *(a2 + 80) - *(a2 + 72);
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_9:
  v18 = *(a2 + 192);
  v19 = v18 / pow((v17 >> 2), 0.330993);
  if (v16 <= v19)
  {
    return;
  }

LABEL_13:
  sub_18383ACBC(v26, a2);
  sub_183842EDC(a2, a3);
  sub_183842EDC(a3, v26);
  sub_18383AB38(v26);
  v20 = *(a2 + 80) - *(a2 + 72);
  if (v20)
  {
    v21 = *(a2 + 192);
    v22 = v21 / pow((v20 >> 2), 0.330993);
    v23 = *(a1 + 80) - *(a1 + 72);
    if (v23)
    {
      goto LABEL_15;
    }

LABEL_18:
    if (v22 <= *(a1 + 192))
    {
      return;
    }

    goto LABEL_19;
  }

  v22 = *(a2 + 192);
  v23 = *(a1 + 80) - *(a1 + 72);
  if (!v23)
  {
    goto LABEL_18;
  }

LABEL_15:
  v24 = *(a1 + 192);
  v25 = v24 / pow((v23 >> 2), 0.330993);
  if (v22 > v25)
  {
LABEL_19:
    sub_18383ACBC(v26, a1);
    sub_183842EDC(a1, a2);
    sub_183842EDC(a2, v26);
    sub_18383AB38(v26);
  }
}

void sub_183842790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_1838427A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_1838427B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_1838427CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_183842538(a1, a2, a3, a4);
  v10 = *(a5 + 80) - *(a5 + 72);
  if (v10)
  {
    v11 = *(a5 + 192);
    v12 = v11 / pow((v10 >> 2), 0.330993);
    v13 = *(a4 + 80) - *(a4 + 72);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v12 <= *(a4 + 192))
    {
      return;
    }

    goto LABEL_7;
  }

  v12 = *(a5 + 192);
  v13 = *(a4 + 80) - *(a4 + 72);
  if (!v13)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = *(a4 + 192);
  v15 = v14 / pow((v13 >> 2), 0.330993);
  if (v12 <= v15)
  {
    return;
  }

LABEL_7:
  sub_18383ACBC(v34, a4);
  sub_183842EDC(a4, a5);
  sub_183842EDC(a5, v34);
  sub_18383AB38(v34);
  v16 = *(a4 + 80) - *(a4 + 72);
  if (v16)
  {
    v17 = *(a4 + 192);
    v18 = v17 / pow((v16 >> 2), 0.330993);
    v19 = *(a3 + 80) - *(a3 + 72);
    if (v19)
    {
      goto LABEL_9;
    }

LABEL_12:
    if (v18 <= *(a3 + 192))
    {
      return;
    }

    goto LABEL_13;
  }

  v18 = *(a4 + 192);
  v19 = *(a3 + 80) - *(a3 + 72);
  if (!v19)
  {
    goto LABEL_12;
  }

LABEL_9:
  v20 = *(a3 + 192);
  v21 = v20 / pow((v19 >> 2), 0.330993);
  if (v18 <= v21)
  {
    return;
  }

LABEL_13:
  sub_18383ACBC(v34, a3);
  sub_183842EDC(a3, a4);
  sub_183842EDC(a4, v34);
  sub_18383AB38(v34);
  v22 = *(a3 + 80) - *(a3 + 72);
  if (v22)
  {
    v23 = *(a3 + 192);
    v24 = v23 / pow((v22 >> 2), 0.330993);
    v25 = *(a2 + 80) - *(a2 + 72);
    if (v25)
    {
      goto LABEL_15;
    }

LABEL_18:
    if (v24 <= *(a2 + 192))
    {
      return;
    }

    goto LABEL_19;
  }

  v24 = *(a3 + 192);
  v25 = *(a2 + 80) - *(a2 + 72);
  if (!v25)
  {
    goto LABEL_18;
  }

LABEL_15:
  v26 = *(a2 + 192);
  v27 = v26 / pow((v25 >> 2), 0.330993);
  if (v24 <= v27)
  {
    return;
  }

LABEL_19:
  sub_18383ACBC(v34, a2);
  sub_183842EDC(a2, a3);
  sub_183842EDC(a3, v34);
  sub_18383AB38(v34);
  v28 = *(a2 + 80) - *(a2 + 72);
  if (v28)
  {
    v29 = *(a2 + 192);
    v30 = v29 / pow((v28 >> 2), 0.330993);
    v31 = *(a1 + 80) - *(a1 + 72);
    if (v31)
    {
      goto LABEL_21;
    }

LABEL_24:
    if (v30 <= *(a1 + 192))
    {
      return;
    }

    goto LABEL_25;
  }

  v30 = *(a2 + 192);
  v31 = *(a1 + 80) - *(a1 + 72);
  if (!v31)
  {
    goto LABEL_24;
  }

LABEL_21:
  v32 = *(a1 + 192);
  v33 = v32 / pow((v31 >> 2), 0.330993);
  if (v30 > v33)
  {
LABEL_25:
    sub_18383ACBC(v34, a1);
    sub_183842EDC(a1, a2);
    sub_183842EDC(a2, v34);
    sub_18383AB38(v34);
  }
}

void sub_183842ADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_183842AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_183842B04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_183842B18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

BOOL sub_183842B2C(uint64_t a1, uint64_t a2)
{
  v4 = 0xEF7BDEF7BDEF7BDFLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_18384215C(a1, a1 + 248, a2 - 248);
        return 1;
      case 4:
        sub_183842538(a1, a1 + 248, a1 + 496, a2 - 248);
        return 1;
      case 5:
        sub_1838427CC(a1, a1 + 248, a1 + 496, a1 + 744, a2 - 248);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 168) - *(a2 - 176);
      if (v5)
      {
        v6 = *(a2 - 56);
        v7 = v6 / pow((v5 >> 2), 0.330993);
        v8 = *(a1 + 80) - *(a1 + 72);
        if (v8)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v7 = *(a2 - 56);
        v8 = *(a1 + 80) - *(a1 + 72);
        if (v8)
        {
LABEL_6:
          v9 = *(a1 + 192);
          v10 = v9 / pow((v8 >> 2), 0.330993);
          if (v7 <= v10)
          {
            return 1;
          }

          goto LABEL_37;
        }
      }

      if (v7 > *(a1 + 192))
      {
LABEL_37:
        v29 = a2 - 248;
        sub_18383ACBC(v31, a1);
        sub_183842EDC(a1, v29);
        sub_183842EDC(v29, v31);
        sub_18383AB38(v31);
      }

      return 1;
    }
  }

  v11 = a1 + 496;
  sub_18384215C(a1, a1 + 248, a1 + 496);
  v12 = a1 + 744;
  if (a1 + 744 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (2)
  {
    v15 = *(v12 + 80) - *(v12 + 72);
    if (v15)
    {
      v16 = *(v12 + 192);
      v17 = v16 / pow((v15 >> 2), 0.330993);
      v18 = *(v11 + 80) - *(v11 + 72);
      if (v18)
      {
        goto LABEL_18;
      }

LABEL_21:
      if (v17 <= *(v11 + 192))
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }

    v17 = *(v12 + 192);
    v18 = *(v11 + 80) - *(v11 + 72);
    if (!v18)
    {
      goto LABEL_21;
    }

LABEL_18:
    v19 = *(v11 + 192);
    v20 = v19 / pow((v18 >> 2), 0.330993);
    if (v17 <= v20)
    {
      goto LABEL_15;
    }

LABEL_22:
    sub_18383ACBC(v31, v12);
    v21 = v13;
    while (1)
    {
      sub_183842EDC(a1 + v21 + 744, a1 + v21 + 496);
      if (v21 == -496)
      {
        break;
      }

      if (v33 == v32)
      {
        v25 = v34;
        v26 = a1 + v21;
        v27 = *(a1 + v21 + 328) - *(a1 + v21 + 320);
        if (v27)
        {
          goto LABEL_23;
        }

LABEL_29:
        v21 -= 248;
        if (v25 <= *(v26 + 440))
        {
LABEL_30:
          v28 = a1 + v21 + 744;
          goto LABEL_32;
        }
      }

      else
      {
        v24 = v34;
        v25 = v24 / pow(((v33 - v32) >> 2), 0.330993);
        v26 = a1 + v21;
        v27 = *(a1 + v21 + 328) - *(a1 + v21 + 320);
        if (!v27)
        {
          goto LABEL_29;
        }

LABEL_23:
        v22 = *(v26 + 440);
        v23 = v22 / pow((v27 >> 2), 0.330993);
        v21 -= 248;
        if (v25 <= v23)
        {
          goto LABEL_30;
        }
      }
    }

    v28 = a1;
LABEL_32:
    sub_183842EDC(v28, v31);
    if (++v14 != 8)
    {
      sub_18383AB38(v31);
LABEL_15:
      v11 = v12;
      v13 += 248;
      v12 += 248;
      if (v12 == a2)
      {
        return 1;
      }

      continue;
    }

    break;
  }

  sub_18383AB38(v31);
  return v12 + 248 == a2;
}

void sub_183842EA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_183842EB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_183842EC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_183842EDC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v7 = *(a2 + 192);
    *(a1 + 196) = *(a2 + 196);
    *(a1 + 192) = v7;
  }

  else
  {
    sub_183843070(a1, *a2, (a2 + 8));
    sub_1838407B0(a1 + 24, *(a2 + 24), (a2 + 32));
    sub_1838435A4((a1 + 48), *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
    sub_183709070((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    sub_18372F694((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 2);
    sub_1836E0FD4((a1 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
    v4 = *(a2 + 152);
    if (v4)
    {
      v5 = *(a1 + 144);
      if (v4 > *(a1 + 160) << 6)
      {
        if (v5)
        {
          operator delete(v5);
          *(a1 + 144) = 0;
          *(a1 + 152) = 0;
          *(a1 + 160) = 0;
          v4 = *(a2 + 152);
        }

        if ((v4 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18369F168();
      }

      memmove(v5, *(a2 + 144), (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v4 = *(a2 + 152);
    }

    *(a1 + 152) = v4;
    sub_18383BEDC(a1 + 168, *(a2 + 168), (a2 + 176));
    v6 = *(a2 + 192);
    *(a1 + 196) = *(a2 + 196);
    *(a1 + 192) = v6;
    sub_18383C228((a1 + 200), *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  }

  std::string::operator=((a1 + 224), (a2 + 224));
  return a1;
}

void sub_183843070(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_64;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = v6[1] ? v6[1] : v6;
  v38 = v9;
  if (!v9)
  {
    goto LABEL_64;
  }

  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v35 = *(v10 + 1);
        if (!v35)
        {
          break;
        }

        do
        {
          v10 = v35;
          v35 = *v35;
        }

        while (v35);
      }
    }

    else
    {
      for (*(v10 + 1) = 0; v11; v11 = *(v10 + 1))
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v37 = v10;
  if (a2 == a3)
  {
    v12 = a1;
    sub_18383AC30(a1, v9);
    if (v10)
    {
      goto LABEL_61;
    }

    goto LABEL_64;
  }

  v13 = a2;
  do
  {
    std::string::operator=((v9 + 32), (v13 + 4));
    objc_storeStrong(v9 + 7, v13[7]);
    v14 = *v8;
    v15 = (a1 + 8);
    v16 = (a1 + 8);
    if (!*v8)
    {
LABEL_36:
      *v38 = 0;
      v38[1] = 0;
      v38[2] = v15;
      *v16 = v38;
      v29 = **a1;
      if (!v29)
      {
        goto LABEL_38;
      }

LABEL_37:
      *a1 = v29;
      goto LABEL_38;
    }

    v17 = *(v38 + 55);
    if (v17 >= 0)
    {
      v18 = *(v38 + 55);
    }

    else
    {
      v18 = v38[5];
    }

    if (v17 >= 0)
    {
      v19 = v38 + 4;
    }

    else
    {
      v19 = v38[4];
    }

    do
    {
      while (1)
      {
        v15 = v14;
        v22 = v14[4];
        v20 = v14 + 4;
        v21 = v22;
        v23 = *(v20 + 23);
        if (v23 >= 0)
        {
          v24 = *(v20 + 23);
        }

        else
        {
          v24 = v20[1];
        }

        if (v23 >= 0)
        {
          v25 = v20;
        }

        else
        {
          v25 = v21;
        }

        if (v24 >= v18)
        {
          v26 = v18;
        }

        else
        {
          v26 = v24;
        }

        v27 = memcmp(v19, v25, v26);
        v28 = v18 < v24;
        if (v27)
        {
          v28 = v27 < 0;
        }

        if (!v28)
        {
          break;
        }

        v14 = *v15;
        v16 = v15;
        if (!*v15)
        {
          goto LABEL_36;
        }
      }

      v14 = v15[1];
    }

    while (v14);
    *v38 = 0;
    v38[1] = 0;
    v38[2] = v15;
    v15[1] = v38;
    v29 = **a1;
    if (v29)
    {
      goto LABEL_37;
    }

LABEL_38:
    sub_1836894A0(*(a1 + 8), v38);
    ++*(a1 + 16);
    v9 = v37;
    v38 = v37;
    if (v37)
    {
      v10 = *(v37 + 2);
      if (v10)
      {
        v30 = *v10;
        if (*v10 == v37)
        {
          *v10 = 0;
          while (1)
          {
            v33 = *(v10 + 1);
            if (!v33)
            {
              break;
            }

            do
            {
              v10 = v33;
              v33 = *v33;
            }

            while (v33);
          }
        }

        else
        {
          for (*(v10 + 1) = 0; v30; v30 = *(v10 + 1))
          {
            do
            {
              v10 = v30;
              v30 = *v30;
            }

            while (v30);
          }
        }
      }

      v37 = v10;
      v31 = v13[1];
      if (!v31)
      {
        do
        {
LABEL_49:
          v4 = v13[2];
          v32 = *v4 == v13;
          v13 = v4;
        }

        while (!v32);
        goto LABEL_51;
      }
    }

    else
    {
      v10 = 0;
      v31 = v13[1];
      if (!v31)
      {
        goto LABEL_49;
      }
    }

    do
    {
      v4 = v31;
      v31 = *v31;
    }

    while (v31);
LABEL_51:
    if (!v9)
    {
      break;
    }

    v13 = v4;
  }

  while (v4 != a3);
  v12 = a1;
  sub_18383AC30(a1, v9);
  if (v10)
  {
LABEL_61:
    for (i = *(v10 + 2); i; i = *(i + 2))
    {
      v10 = i;
    }

    sub_18383AC30(v12, v10);
  }

LABEL_64:
  if (v4 != a3)
  {
    sub_183843410();
  }
}

void sub_1838433A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1838433B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1838433B8(uint64_t a1)
{
  sub_18383AC30(*a1, *(a1 + 16));
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

    sub_18383AC30(*a1, v2);
  }

  return a1;
}

void sub_183843590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1836E1D48(va);
  _Unwind_Resume(a1);
}

void sub_1838435A4(char ***a1, char **a2, char **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1836D58DC();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_183709070(v8, *v5, v5[1], (v5[1] - *v5) >> 2);
        }

        v5 += 3;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v22 = v15;
    do
    {
      v24 = *(v22 - 3);
      v22 -= 24;
      v23 = v24;
      if (v24)
      {
        *(v15 - 2) = v23;
        operator delete(v23);
      }

      v15 = v22;
    }

    while (v22 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_183709070(v8, *v18, v18[1], (v18[1] - *v18) >> 2);
      }

      v18 += 3;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_18383B724(a1, (v5 + v16), a3, v15);
}

void sub_183843828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (0xEF7BDEF7BDEF7BDFLL * ((a3 - a1) >> 3)))
    {
      v8 = (0xDEF7BDEF7BDEF7BELL * ((a3 - a1) >> 3)) | 1;
      v9 = a1 + 248 * v8;
      v10 = 0xDEF7BDEF7BDEF7BELL * ((a3 - a1) >> 3) + 2;
      if (v10 >= a2)
      {
        goto LABEL_8;
      }

      v11 = *(v9 + 80) - *(v9 + 72);
      if (v11)
      {
        v12 = *(v9 + 192);
        v13 = v12 / pow((v11 >> 2), 0.330993);
        v14 = *(v9 + 328) - *(v9 + 320);
        if (v14)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v13 = *(v9 + 192);
        v14 = *(v9 + 328) - *(v9 + 320);
        if (v14)
        {
LABEL_6:
          v15 = *(v9 + 440);
          v16 = v15 / pow((v14 >> 2), 0.330993);
          if (v13 <= v16)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }
      }

      if (v13 <= *(v9 + 440))
      {
LABEL_8:
        v17 = *(v9 + 80) - *(v9 + 72);
        if (v17)
        {
          v18 = *(v9 + 192);
          v19 = v18 / pow((v17 >> 2), 0.330993);
          v20 = *(v4 + 80) - *(v4 + 72);
          if (v20)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v19 = *(v9 + 192);
          v20 = *(v4 + 80) - *(v4 + 72);
          if (v20)
          {
LABEL_10:
            v21 = *(v4 + 192);
            v22 = v21 / pow((v20 >> 2), 0.330993);
            if (v19 > v22)
            {
              return;
            }

LABEL_14:
            sub_18383ACBC(v38, v4);
            while (1)
            {
              v25 = v4;
              v4 = v9;
              sub_183842EDC(v25, v9);
              if (v6 < v8)
              {
LABEL_31:
                sub_183842EDC(v4, v38);
                sub_18383AB38(v38);
                return;
              }

              v26 = 2 * v8;
              v8 = (2 * v8) | 1;
              v9 = a1 + 248 * v8;
              v27 = v26 + 2;
              if (v26 + 2 >= a2)
              {
                goto LABEL_22;
              }

              v28 = *(v9 + 80) - *(v9 + 72);
              if (v28)
              {
                v29 = *(v9 + 192);
                v30 = v29 / pow((v28 >> 2), 0.330993);
                v31 = *(v9 + 328) - *(v9 + 320);
                if (!v31)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v30 = *(v9 + 192);
                v31 = *(v9 + 328) - *(v9 + 320);
                if (!v31)
                {
LABEL_29:
                  if (v30 <= *(v9 + 440))
                  {
                    goto LABEL_22;
                  }

LABEL_21:
                  v9 += 248;
                  v8 = v27;
                  goto LABEL_22;
                }
              }

              v32 = *(v9 + 440);
              v33 = v32 / pow((v31 >> 2), 0.330993);
              if (v30 > v33)
              {
                goto LABEL_21;
              }

LABEL_22:
              v34 = *(v9 + 80) - *(v9 + 72);
              if (v34)
              {
                v35 = *(v9 + 192);
                v36 = v35 / pow((v34 >> 2), 0.330993);
                v37 = v40 - v39;
                if (v40 == v39)
                {
                  goto LABEL_26;
                }

LABEL_15:
                v23 = v41;
                v24 = v23 / pow((v37 >> 2), 0.330993);
                if (v36 > v24)
                {
                  goto LABEL_31;
                }
              }

              else
              {
                v36 = *(v9 + 192);
                v37 = v40 - v39;
                if (v40 != v39)
                {
                  goto LABEL_15;
                }

LABEL_26:
                if (v36 > v41)
                {
                  goto LABEL_31;
                }
              }
            }
          }
        }

        if (v19 > *(v4 + 192))
        {
          return;
        }

        goto LABEL_14;
      }

LABEL_7:
      v9 += 248;
      v8 = v10;
      goto LABEL_8;
    }
  }
}

void sub_183843B54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void sub_183843B68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB38(va);
  _Unwind_Resume(a1);
}

void ***sub_183843B7C(void ***result)
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
          v4 = sub_18383AB38(v4 - 248);
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

uint64_t sub_183843F70(void *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v3;
  v8 = 0;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v30, v34, 16, v7);
  if (v14)
  {
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v5);
        }

        v17 = objc_msgSend_encodedStrokeIdentifier(*(*(&v30 + 1) + 8 * v16), v9, v10, v11, v12, v13, v30);
        v22 = objc_msgSend_objectForKeyedSubscript_(v4, v18, v17, v19, v20, v21);
        v28 = objc_msgSend_count(v22, v23, v24, v25, v26, v27);

        v8 += v28;
        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v9, &v30, v34, 16, v13);
    }

    while (v14);
  }

  return v8;
}

uint64_t sub_1838441C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v12 = objc_msgSend_encodedStrokeIdentifier(a2, v7, v8, v9, v10, v11);
  v17 = objc_msgSend_objectForKeyedSubscript_(v6, v13, v12, v14, v15, v16);
  v23 = objc_msgSend_firstObject(v17, v18, v19, v20, v21, v22);
  objc_msgSend_bounds(v23, v24, v25, v26, v27, v28);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = *(a1 + 32);
  v43 = objc_msgSend_encodedStrokeIdentifier(v5, v38, v39, v40, v41, v42);
  v48 = objc_msgSend_objectForKeyedSubscript_(v37, v44, v43, v45, v46, v47);
  v54 = objc_msgSend_firstObject(v48, v49, v50, v51, v52, v53);
  objc_msgSend_bounds(v54, v55, v56, v57, v58, v59);
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;

  v78.origin.x = v30;
  v78.origin.y = v32;
  v78.size.width = v34;
  v78.size.height = v36;
  MidX = CGRectGetMidX(v78);
  v79.origin.x = v30;
  v79.origin.y = v32;
  v79.size.width = v34;
  v79.size.height = v36;
  MidY = CGRectGetMidY(v79);
  v80.origin.x = v61;
  v80.origin.y = v63;
  v80.size.width = v65;
  v80.size.height = v67;
  v69 = CGRectGetMidX(v80);
  v81.origin.x = v61;
  v81.origin.y = v63;
  v81.size.width = v65;
  v81.size.height = v67;
  v70 = CGRectGetMidY(v81);
  v71 = *(a1 + 40);
  if (v71 >= 2)
  {
    if (v71 == 2)
    {
      v73 = v70 - MidY;
      v74 = MidX - v69 <= 0.0;
      if (MidX - v69 != 0.0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v71 != 3)
      {
        goto LABEL_10;
      }

      v72 = v70 - MidY;
      v73 = v69 - MidX;
      v74 = v72 <= 0.0;
      if (v72 != 0.0)
      {
        goto LABEL_11;
      }
    }

LABEL_9:
    v74 = v73 <= 0.0;
    if (v73 != 0.0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v75 = 0;
    goto LABEL_14;
  }

  v73 = v70 - MidY;
  v74 = v69 - MidX <= 0.0;
  if (v69 - MidX == 0.0)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (v74)
  {
    v75 = 1;
  }

  else
  {
    v75 = -1;
  }

LABEL_14:

  return v75;
}

void sub_1838460E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a55, 8);
  if (__p)
  {
    a62 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a69, 8);
  v72 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v72;
    operator delete(v72);
  }

  _Unwind_Resume(a1);
}

id sub_18384660C(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (a1)
  {
    a1 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4, v5, v6, v7);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v8;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v26, v30, 16, v11);
    if (v17)
    {
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v9);
          }

          v20 = objc_msgSend_encodedStrokeIdentifier(*(*(&v26 + 1) + 8 * i), v12, v13, v14, v15, v16, v26);
          objc_msgSend_addObject_(a1, v21, v20, v22, v23, v24);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v26, v30, 16, v16);
      }

      while (v17);
    }
  }

  return a1;
}

id sub_18384678C(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v258 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v245 = a3;
  v244 = a4;
  v246 = v9;
  if (a1)
  {
    if (!objc_msgSend_count(v9, v10, v11, v12, v13, v14))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v20 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_ERROR, "Attempt to create an empty stroke group.", buf, 2u);
      }
    }

    if (!objc_msgSend_count(v9, v15, v16, v17, v18, v19))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v26 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v26, OS_LOG_TYPE_FAULT, "Attempt to create an empty stroke group.", buf, 2u);
      }
    }

    v27 = objc_msgSend_set(MEMORY[0x1E695DFA8], v21, v22, v23, v24, v25);
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v251 = 0u;
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    v32 = v9;
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v251, v257, 16, v34);
    if (v40)
    {
      v41 = *v252;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v252 != v41)
          {
            objc_enumerationMutation(v32);
          }

          v43 = *(*(&v251 + 1) + 8 * i);
          v44 = objc_msgSend_encodedStrokeIdentifier(v43, v35, v36, v37, v38, v39);
          objc_msgSend_addObject_(v27, v45, v44, v46, v47, v48);

          objc_msgSend_bounds(v43, v49, v50, v51, v52, v53);
          v262.origin.x = v54;
          v262.origin.y = v55;
          v262.size.width = v56;
          v262.size.height = v57;
          v260.origin.x = x;
          v260.origin.y = y;
          v260.size.width = width;
          v260.size.height = height;
          v261 = CGRectUnion(v260, v262);
          x = v261.origin.x;
          y = v261.origin.y;
          width = v261.size.width;
          height = v261.size.height;
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v251, v257, 16, v39);
      }

      while (v40);
    }

    if (!a5)
    {
      v201 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_44;
    }

    v249 = 0u;
    v250 = 0u;
    v247 = 0u;
    v248 = 0u;
    v58 = v244;
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v247, v256, 16, v60);
    if (v61)
    {
      v242 = *v248;
      obj = v58;
LABEL_24:
      v241 = v61;
      v67 = 0;
      while (1)
      {
        if (*v248 != v242)
        {
          objc_enumerationMutation(obj);
        }

        v68 = *(*(&v247 + 1) + 8 * v67);
        v69 = objc_msgSend_strokeProvider(a1, v62, v63, v64, v65, v66);
        v75 = objc_msgSend_lastStrokeIdentifier(v68, v70, v71, v72, v73, v74);
        v80 = objc_msgSend_strokeIdentifierFromData_(v69, v76, v75, v77, v78, v79);

        v86 = objc_msgSend_strokeIdentifiers(v68, v81, v82, v83, v84, v85);
        if (objc_msgSend_count(v86, v87, v88, v89, v90, v91) == 1 && objc_msgSend_count(v32, v92, v93, v94, v95, v96) == 1)
        {
          v102 = objc_msgSend_strokeProvider(a1, v97, v98, v99, v100, v101);
          v108 = objc_msgSend_lastObject(v32, v103, v104, v105, v106, v107);
          isStroke_versionOfStrokeWithIdentifier = objc_msgSend_isStroke_versionOfStrokeWithIdentifier_(v102, v109, v108, v80, v110, v111);

          if (isStroke_versionOfStrokeWithIdentifier)
          {
            v195 = objc_msgSend_uniqueIdentifier(v68, v113, v114, v115, v116, v117);
            v201 = objc_msgSend_ancestorIdentifier(v68, v196, v197, v198, v199, v200);

            if (v195 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v202 = [CHOrderedStrokeGroup alloc];
              v153 = objc_msgSend_firstObject(v32, v203, v204, v205, v206, v207);
              v159 = objc_msgSend_encodedStrokeIdentifier(v153, v208, v209, v210, v211, v212);
              v165 = objc_msgSend_lastObject(v32, v213, v214, v215, v216, v217);
              v171 = objc_msgSend_encodedStrokeIdentifier(v165, v218, v219, v220, v221, v222);
              v177 = objc_msgSend_strategyIdentifier(a1, v223, v224, v225, v226, v227);
              v183 = objc_msgSend_firstObject(v32, v228, v229, v230, v231, v232);
              objc_msgSend_bounds(v183, v233, v234, v235, v236, v237);
              StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_orderedStrokeIdentifiers = objc_msgSend_initWithUniqueIdentifier_ancestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_orderedStrokeIdentifiers_(v202, v238, v195, v201, v27, v159, v171, 1, x, y, width, height, 1.0, v239, v240, v177, v245);
              goto LABEL_45;
            }

            goto LABEL_44;
          }
        }

        else
        {
        }

        v118 = objc_msgSend_strokeIdentifiers(v68, v113, v114, v115, v116, v117);
        isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v118, v119, v27, v120, v121, v122);

        if ((isSubsetOfSet & 1) != 0 || (objc_msgSend_strokeIdentifiers(v68, v124, v125, v126, v127, v128), v129 = objc_claimAutoreleasedReturnValue(), v134 = objc_msgSend_isSubsetOfSet_(v27, v130, v129, v131, v132, v133), v129, v134))
        {
LABEL_37:
          v201 = objc_msgSend_ancestorIdentifier(v68, v124, v125, v126, v127, v128);

          v58 = obj;
          goto LABEL_43;
        }

        v135 = objc_msgSend_count(v32, v124, v125, v126, v127, v128) - 1;
        while ((v135 & 0x8000000000000000) == 0)
        {
          v136 = objc_msgSend_objectAtIndexedSubscript_(v32, v124, v135, v126, v127, v128);
          v142 = objc_msgSend_strokeProvider(a1, v137, v138, v139, v140, v141);
          v146 = objc_msgSend_isStroke_versionOfStrokeWithIdentifier_(v142, v143, v136, v80, v144, v145);

          --v135;
          if (v146)
          {
            goto LABEL_37;
          }
        }

        if (++v67 == v241)
        {
          v58 = obj;
          v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, &v247, v256, 16, v66);
          v201 = 0x7FFFFFFFFFFFFFFFLL;
          if (v61)
          {
            goto LABEL_24;
          }

          goto LABEL_43;
        }
      }
    }

    v201 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_43:

LABEL_44:
    v147 = [CHOrderedStrokeGroup alloc];
    v153 = objc_msgSend_firstObject(v32, v148, v149, v150, v151, v152);
    v159 = objc_msgSend_encodedStrokeIdentifier(v153, v154, v155, v156, v157, v158);
    v165 = objc_msgSend_lastObject(v32, v160, v161, v162, v163, v164);
    v171 = objc_msgSend_encodedStrokeIdentifier(v165, v166, v167, v168, v169, v170);
    v177 = objc_msgSend_strategyIdentifier(a1, v172, v173, v174, v175, v176);
    v183 = objc_msgSend_firstObject(v32, v178, v179, v180, v181, v182);
    objc_msgSend_bounds(v183, v184, v185, v186, v187, v188);
    StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_orderedStrokeIdentifiers = objc_msgSend_initWithAncestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_orderedStrokeIdentifiers_(v147, v189, v201, v27, v159, v171, 1, v177, x, y, width, height, 1.0, v190, v191, v245);
LABEL_45:
    v193 = StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_orderedStrokeIdentifiers;
  }

  else
  {
    v193 = 0;
  }

  return v193;
}

double sub_183846FF4(void *a1)
{
  v1 = a1;
  if (!objc_msgSend_count(v1, v2, v3, v4, v5, v6))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v12 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_ERROR, "At least one stroke is needed to calculate accumulated time differences", buf, 2u);
    }
  }

  if (!objc_msgSend_count(v1, v7, v8, v9, v10, v11))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v18 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *v65 = 0;
      _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_FAULT, "At least one stroke is needed to calculate accumulated time differences", v65, 2u);
    }
  }

  v24 = objc_msgSend_firstObject(v1, v13, v14, v15, v16, v17);
  v25 = 0.0;
  for (i = 1; i < objc_msgSend_count(v1, v19, v20, v21, v22, v23); ++i)
  {
    v31 = objc_msgSend_objectAtIndexedSubscript_(v1, v27, i, v28, v29, v30);
    objc_msgSend_startTimestamp(v31, v32, v33, v34, v35, v36);
    v38 = v37;
    objc_msgSend_startTimestamp(v24, v39, v40, v41, v42, v43);
    if (v38 >= v49)
    {
      objc_msgSend_startTimestamp(v31, v44, v45, v46, v47, v48);
      v51 = v58;
      objc_msgSend_endTimestamp(v24, v59, v60, v61, v62, v63);
    }

    else
    {
      objc_msgSend_startTimestamp(v24, v44, v45, v46, v47, v48);
      v51 = v50;
      objc_msgSend_endTimestamp(v31, v52, v53, v54, v55, v56);
    }

    v25 = v25 + v51 - v57;

    v24 = v31;
  }

  return v25;
}

id sub_18384721C(void *a1, double *a2, double *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a1;
  v59.origin.x = a4;
  v59.origin.y = a5;
  v59.size.width = a6;
  v59.size.height = a7;
  MinY = CGRectGetMinY(v59);
  v60.origin.x = a4;
  v60.origin.y = a5;
  v60.size.width = a6;
  v60.size.height = a7;
  MaxY = CGRectGetMaxY(v60);
  v19 = 0;
  v57 = 0.0;
  v20 = -1;
  v56 = 2147483650.0;
  v21 = -1;
  v55 = a4;
  while (v19 < objc_msgSend_count(v13, v14, v15, v16, v17, v18))
  {
    v26 = objc_msgSend_objectAtIndexedSubscript_(v13, v22, v19, v23, v24, v25);
    objc_msgSend_frame(v26, v27, v28, v29, v30, v31);
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v61.origin.x = a4;
    v40 = a5;
    v61.origin.y = a5;
    v41 = a6;
    v61.size.width = a6;
    v42 = a7;
    v61.size.height = a7;
    v65.origin.x = v33;
    v65.origin.y = v35;
    v65.size.width = v37;
    v65.size.height = v39;
    v62 = CGRectIntersection(v61, v65);
    height = v62.size.height;
    IsNull = CGRectIsNull(v62);
    v45 = height <= v57 || IsNull;
    if (v45)
    {
      v63.origin.x = v33;
      v63.origin.y = v35;
      v63.size.width = v37;
      v63.size.height = v39;
      v46 = CGRectGetMinY(v63);
      v64.origin.x = v33;
      v64.origin.y = v35;
      v64.size.width = v37;
      v64.size.height = v39;
      v47 = MinY - CGRectGetMaxY(v64);
      v48 = v47 >= 0.0 && v47 < v56;
      if (v47 < 0.0 || v47 >= v56)
      {
        v47 = v56;
      }

      v49 = v46 - MaxY >= 0.0 && v46 - MaxY < v47 || v48;
      if (v46 - MaxY >= 0.0 && v46 - MaxY < v47)
      {
        v47 = v46 - MaxY;
      }

      v56 = v47;
      if (v49)
      {
        v20 = v19;
      }
    }

    else
    {
      v21 = v19;
      v57 = height;
    }

    ++v19;
    a7 = v42;
    a6 = v41;
    a5 = v40;
    a4 = v55;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      *a2 = v57;
    }

    v50 = 0.0;
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      *a2 = 0.0;
    }

    v21 = v20;
    v50 = v56;
    if (!a3)
    {
      goto LABEL_21;
    }

LABEL_20:
    *a3 = v50;
LABEL_21:
    v51 = objc_msgSend_objectAtIndexedSubscript_(v13, v22, v21, v23, v24, v25, v50);
    goto LABEL_22;
  }

  v51 = 0;
LABEL_22:

  return v51;
}

double sub_183847500(void *a1, void *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v5 = v3;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v53, v57, 16, v7);
  if (v13)
  {
    v14 = *v54;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(v5);
        }

        v17 = *(*(&v53 + 1) + 8 * i);
        v18 = objc_msgSend_encodedStrokeIdentifier(v17, v8, v9, v10, v11, v12, v53);
        v23 = objc_msgSend_objectForKeyedSubscript_(v4, v19, v18, v20, v21, v22);

        if (v23)
        {
          objc_msgSend_doubleValue(v23, v24, v25, v26, v27, v28);
          v30 = v29;
        }

        else
        {
          v31 = objc_opt_class();
          objc_msgSend_arcLengthForStroke_(v31, v32, v17, v33, v34, v35);
          v30 = v36;
          v42 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v37, v38, v39, v40, v41);
          v48 = objc_msgSend_encodedStrokeIdentifier(v17, v43, v44, v45, v46, v47);
          objc_msgSend_setObject_forKeyedSubscript_(v4, v49, v42, v48, v50, v51);
        }

        v15 = v15 + v30;
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v53, v57, 16, v12);
    }

    while (v13);
  }

  else
  {
    v15 = 0.0;
  }

  return v15;
}

__n128 sub_18384772C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_183847750(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_183847768(uint64_t a1, double a2, double a3)
{
  *&v3 = a2;
  *(&v3 + 1) = a3;
  sub_1836973A4(*(*(a1 + 32) + 8) + 48, &v3);
}

void sub_18384779C(uint64_t a1, double a2, double a3)
{
  *&v3 = a2;
  *(&v3 + 1) = a3;
  sub_1836973A4(*(*(a1 + 32) + 8) + 48, &v3);
}

uint64_t sub_183847C24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = objc_msgSend_strokeProvider(*(a1 + 32), v7, v8, v9, v10, v11);
  v17 = objc_msgSend_strokeIdentifierFromData_(v12, v13, v5, v14, v15, v16);

  v23 = objc_msgSend_strokeProvider(*(a1 + 32), v18, v19, v20, v21, v22);
  v28 = objc_msgSend_strokeIdentifierFromData_(v23, v24, v6, v25, v26, v27);

  v34 = objc_msgSend_strokeProvider(*(a1 + 32), v29, v30, v31, v32, v33);
  v38 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v34, v35, v17, v28, v36, v37);

  return v38;
}

uint64_t sub_183847D50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_msgSend_addPoint_(v7, a2, a3, a4, a5, a6);
  }

  v8 = *(a1 + 40);

  return objc_msgSend_addPoint_(v8, a2, a3, a4, a5, a6);
}

void sub_183847E0C(uint64_t a1, void *a2, void *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  (*(*a1 + 24))(__p, a1, a2);
  v6 = a2[7];
  v21 = a2[6];
  v22 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*a1 + 32))(a1, a2);
  v8 = a2[4];
  v9 = a2[5];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = sub_18384AC9C(v8, __p);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v10, v14, v11, v12, v13);
  v24[0] = v15;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v24, 1, v17, v18);
  v20 = sub_1836E823C(v19, &unk_1EF1EC628);
  sub_18384B030(v21, v7, v20);

  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_18384802C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_18369D8F8(&a12);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1838480BC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = *v3;
  v5 = v3[1];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t sub_183848418(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *a1 = a1 + 8;
  *(a1 + 24) = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  v11 = v9;
  *(a1 + 160) = v11;
  v12 = v10;
  *(a1 + 184) = a5;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 216) = a2;
  *(a1 + 168) = v12;
  *(a1 + 176) = @"diffusion_zhja_ids_decomposition.json";
  sub_1838485A8(a1);

  return a1;
}

void sub_183848510(_Unwind_Exception *a1)
{
  sub_18368922C(v7, *(v1 + 200));

  sub_18368922C(v6, *(v1 + 80));
  sub_18368A374(v4, *(v1 + 56));
  sub_18368D56C(v2, *(v1 + 32));
  sub_18368D56C(v1, *(v1 + 8));

  _Unwind_Resume(a1);
}

void sub_1838485A8(uint64_t a1)
{
  v332 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 216);
  v2 = objc_alloc_init(CHModelCatalog);
  if (objc_msgSend_assetDeliveryReady(v2, v3, v4, v5, v6, v7))
  {
    v11 = objc_msgSend_getMetadata_variant_(v2, v8, 0, v1, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v16 = objc_msgSend_valueForKey_(v11, v12, @"codemap", v13, v14, v15);
  v21 = objc_msgSend_valueForKey_(v11, v17, @"modelResourceURL", v18, v19, v20);
  v26 = v21;
  if (!v16)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v47 = qword_1EA84DC98;
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v48 = "Model asset metadata dictionary does not include codemap key-value pair.";
    goto LABEL_22;
  }

  if (!v21)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v47 = qword_1EA84DC98;
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v48 = "Model asset metadata dictionary does not include modelResourceURL key-value pair.";
LABEL_22:
    _os_log_impl(&dword_18366B000, v47, OS_LOG_TYPE_ERROR, v48, buf, 2u);
LABEL_23:

    v310 = 0;
    goto LABEL_29;
  }

  v27 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v22, v21, v23, v24, v25);
  v32 = objc_msgSend_URLByAppendingPathComponent_(v27, v28, v16, v29, v30, v31);

  *&__dst = 0;
  v37 = objc_msgSend_checkResourceIsReachableAndReturnError_(v32, v33, &__dst, v34, v35, v36);
  v38 = __dst;
  if (v37)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v39 = qword_1EA84DC98;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v32;
      _os_log_impl(&dword_18366B000, v39, OS_LOG_TYPE_DEBUG, "Succeeded to load codemap with url. %@", buf, 0xCu);
    }

    v45 = objc_msgSend_path(v32, v40, v41, v42, v43, v44);
    sub_18384B360(&v310, v45);

    LOBYTE(v45) = v310 == 0;
    v46 = a1;
    if ((v45 & 1) == 0)
    {
      goto LABEL_58;
    }

    if (!*(a1 + 160))
    {
      goto LABEL_60;
    }

    goto LABEL_30;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v49 = qword_1EA84DC98;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v38;
    _os_log_impl(&dword_18366B000, v49, OS_LOG_TYPE_ERROR, "Failed to load codemap from asset. %@", buf, 0xCu);
  }

  v310 = 0;
LABEL_29:
  if (!*(a1 + 160))
  {
LABEL_60:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v80 = qword_1EA84DC98;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v80, OS_LOG_TYPE_ERROR, "CHDiffusionExecutionContext failed to load codemap from model OTA asset as well as from the local framework bundle. ", buf, 2u);
    }

    return;
  }

LABEL_30:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v50 = qword_1EA84DC98;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v50, OS_LOG_TYPE_DEBUG, "Failed to load codemap from model OTA asset, attempting to load from bundle", buf, 2u);
  }

  v51 = *(a1 + 160);
  v52 = v51;
  v58 = objc_msgSend_UTF8String(v51, v53, v54, v55, v56, v57);
  if (!sub_1837A3290(v58, 0, buf))
  {
    if (qword_1EA84DC48 == -1)
    {
      v64 = qword_1EA84DC98;
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
LABEL_42:

        goto LABEL_60;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v64 = qword_1EA84DC98;
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }
    }

    LODWORD(__dst) = 138412290;
    *(&__dst + 4) = v51;
    _os_log_impl(&dword_18366B000, v64, OS_LOG_TYPE_ERROR, "Failed to find codemap from asset name %@ in the bundle", &__dst, 0xCu);
    goto LABEL_42;
  }

  v59 = strlen(buf);
  if (v59 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_183688FF0();
  }

  v63 = v59;
  if (v59 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v321) = v59;
  if (v59)
  {
    memcpy(&__dst, buf, v59);
  }

  *(&__dst + v63) = 0;
  if (v321 >= 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v60, &__dst, 4, v61, v62);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v60, __dst, 4, v61, v62);
  }
  v65 = ;
  if (qword_1EA84DC48 == -1)
  {
    v66 = qword_1EA84DC98;
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v66 = qword_1EA84DC98;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
LABEL_50:
    LODWORD(v318) = 138412290;
    *(&v318 + 4) = v65;
    _os_log_impl(&dword_18366B000, v66, OS_LOG_TYPE_DEBUG, "Found codemap from bundle, with path %@", &v318, 0xCu);
  }

LABEL_51:

  sub_18384B360(&v312, v65);
  if (SHIBYTE(v321) < 0)
  {
    operator delete(__dst);
  }

  v67 = v312;
  v68 = v310;

  v310 = v67;
  v46 = a1;
  if (v68)
  {
    if (*v68)
    {
      munmap(*v68, *(v68 + 8));
    }

    MEMORY[0x1865E5EC0](v68, 0x1010C40A749B91FLL);
  }

  if (!v67)
  {
    goto LABEL_60;
  }

LABEL_58:
  sub_18368D56C(v46, *(v46 + 8));
  *v46 = v46 + 8;
  *(v46 + 16) = 0;
  v296 = (v46 + 8);
  *(v46 + 8) = 0;
  v69 = *(v46 + 216);
  v70 = objc_alloc_init(CHModelCatalog);
  if (objc_msgSend_assetDeliveryReady(v70, v71, v72, v73, v74, v75))
  {
    v79 = objc_msgSend_getMetadata_variant_(v70, v76, 0, v69, v77, v78);
  }

  else
  {
    v79 = 0;
  }

  v85 = objc_msgSend_valueForKey_(v79, v81, @"ppc_lookup", v82, v83, v84);
  v90 = objc_msgSend_valueForKey_(v79, v86, @"modelResourceURL", v87, v88, v89);
  v95 = v90;
  if (v85 && v90)
  {
    v96 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v91, v90, v92, v93, v94);
    v101 = objc_msgSend_URLByAppendingPathComponent_(v96, v97, v85, v98, v99, v100);

    *&v318 = 0;
    v106 = objc_msgSend_checkResourceIsReachableAndReturnError_(v101, v102, &v318, v103, v104, v105);
    v112 = v318;
    if (v106)
    {
      v113 = objc_msgSend_path(v101, v107, v108, v109, v110, v111);
      sub_18384B48C(buf, v113);
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v114 = qword_1EA84DC98;
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__dst) = 138412290;
        *(&__dst + 4) = v112;
        _os_log_impl(&dword_18366B000, v114, OS_LOG_TYPE_DEBUG, "Failed to load ppc lookup from asset. %@", &__dst, 0xCu);
      }

      *&buf[16] = 0;
      *&buf[8] = 0;
      *buf = &buf[8];
    }
  }

  else
  {
    *&buf[16] = 0;
    *&buf[8] = 0;
    *buf = &buf[8];
  }

  v115 = a1 + 32;
  v116 = (a1 + 24);
  sub_18368D56C(a1 + 24, *(a1 + 32));
  v117 = *&buf[8];
  *(a1 + 24) = *buf;
  *(a1 + 32) = v117;
  v118 = *&buf[16];
  *(a1 + 40) = *&buf[16];
  if (v118)
  {
    v117[2] = v115;
    *buf = &buf[8];
    *&buf[8] = 0;
    *&buf[16] = 0;
    sub_18368D56C(buf, 0);
    v124 = a1;
    if (!*(a1 + 40))
    {
LABEL_81:
      v125 = *(v124 + 168);
      if (v125)
      {
        v126 = v125;
        v127 = v126;
        v133 = objc_msgSend_UTF8String(v126, v128, v129, v130, v131, v132);
        if (sub_1837A3290(v133, 0, buf))
        {
          v134 = strlen(buf);
          if (v134 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_183688FF0();
          }

          v138 = v134;
          if (v134 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v321) = v134;
          if (v134)
          {
            memcpy(&__dst, buf, v134);
          }

          *(&__dst + v138) = 0;
          if (v321 >= 0)
          {
            objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v135, &__dst, 4, v136, v137);
          }

          else
          {
            objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v135, __dst, 4, v136, v137);
          }
          v140 = ;
          sub_18384B48C(&v318, v140);

          if (SHIBYTE(v321) < 0)
          {
            operator delete(__dst);
          }
        }

        else
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v139 = qword_1EA84DC98;
          if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__dst) = 138412290;
            *(&__dst + 4) = v126;
            _os_log_impl(&dword_18366B000, v139, OS_LOG_TYPE_ERROR, "Failed to access PPC from %@", &__dst, 0xCu);
          }

          *(&v318 + 1) = 0;
          v319 = 0;
          *&v318 = &v318 + 8;
        }

        sub_18368D56C(v116, *(a1 + 32));
        v141 = *(&v318 + 1);
        *(a1 + 24) = v318;
        *(a1 + 32) = v141;
        v142 = v319;
        *(a1 + 40) = v319;
        if (v142)
        {
          v141[2] = v115;
          *&v318 = &v318 + 8;
          *(&v318 + 1) = 0;
          v319 = 0;
          v141 = 0;
        }

        else
        {
          *v116 = v115;
        }

        sub_18368D56C(&v318, v141);
        v124 = a1;
      }
    }
  }

  else
  {
    *v116 = v115;
    sub_18368D56C(buf, v117);
    v124 = a1;
    if (!*(a1 + 40))
    {
      goto LABEL_81;
    }
  }

  v143 = *(v124 + 176);
  if (v143)
  {
    v308 = 0;
    v309 = 0;
    v307 = &v308;
    v295 = v143;
    v144 = v295;
    v150 = objc_msgSend_UTF8String(v295, v145, v146, v147, v148, v149);
    if (sub_1837A3290(v150, 0, buf))
    {
      v151 = strlen(buf);
      if (v151 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_183688FF0();
      }

      v155 = v151;
      if (v151 >= 0x17)
      {
        operator new();
      }

      v317 = v151;
      if (v151)
      {
        memcpy(&__p, buf, v151);
      }

      *(&__p + v155) = 0;
      if (v317 >= 0)
      {
        objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v152, &__p, 4, v153, v154);
      }

      else
      {
        objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v152, __p, 4, v153, v154);
      }
      v293 = ;
      v294 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v157, v293, v158, v159, v160);
      v163 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v161, v294, 1, 0, v162);
      v314 = 0u;
      v315 = 0u;
      v313 = 0u;
      v312 = 0u;
      v299 = v163;
      v169 = objc_msgSend_allKeys(v163, v164, v165, v166, v167, v168);
      v177 = objc_msgSend_countByEnumeratingWithState_objects_count_(v169, v170, &v312, &__dst, 16, v171);
      if (v177)
      {
        v298 = *v313;
        do
        {
          v301 = 0;
          do
          {
            if (*v313 != v298)
            {
              objc_enumerationMutation(v169);
            }

            v178 = *(*(&v312 + 1) + 8 * v301);
            v179 = objc_msgSend_intValue(v178, v172, v173, v174, v175, v176);
            v184 = objc_msgSend_objectForKey_(v299, v180, v178, v181, v182, v183);
            v190 = objc_msgSend_count(v184, v185, v186, v187, v188, v189);
            if (v190)
            {
              if (!(v190 >> 61))
              {
                operator new();
              }

              sub_1836D58DC();
            }

            memset(v311, 0, sizeof(v311));
            obj = v184;
            if (objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v191, v311, &v318, 16, v192))
            {
              objc_msgSend_intValue(**(&v311[0] + 1), v193, v194, v195, v196, v197);
              operator new();
            }

            v198 = v308;
LABEL_131:
            if (!v198)
            {
LABEL_135:
              operator new();
            }

            while (1)
            {
              v199 = v198;
              v200 = v198[4];
              if (v200 > v179)
              {
                v198 = *v199;
                goto LABEL_131;
              }

              if (v200 >= v179)
              {
                break;
              }

              v198 = v199[1];
              if (!v198)
              {
                goto LABEL_135;
              }
            }

            v201 = v199[5];
            v199[5] = 0;
            v199[6] = 0;
            v199[7] = 0;
            if (v201)
            {
              operator delete(v201);
            }

            ++v301;
          }

          while (v301 != v177);
          v202 = objc_msgSend_countByEnumeratingWithState_objects_count_(v169, v172, &v312, &__dst, 16, v176);
          v177 = v202;
        }

        while (v202);
      }

      if (v317 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v156 = qword_1EA84DC98;
      if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__dst) = 138412290;
        *(&__dst + 4) = v295;
        _os_log_impl(&dword_18366B000, v156, OS_LOG_TYPE_ERROR, "Failed to access IDSDecomposition from %@", &__dst, 0xCu);
      }
    }

    v203 = a1 + 56;
    sub_18368A374(a1 + 48, *(a1 + 56));
    v204 = v308;
    *(a1 + 48) = v307;
    *(a1 + 56) = v204;
    v205 = v309;
    *(a1 + 64) = v309;
    if (v205)
    {
      v204[2] = v203;
      v307 = &v308;
      v308 = 0;
      v309 = 0;
      v204 = 0;
    }

    else
    {
      *(a1 + 48) = v203;
    }

    sub_18368A374(&v307, v204);
  }

  v300 = objc_msgSend_set(MEMORY[0x1E695DFA8], v119, v120, v121, v122, v123);
  v302 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v211 = v310;
  if (*(v310 + 24))
  {
    v212 = 0;
    while (1)
    {
      v213 = *sub_1838B8A5C(v211, v212);
      if (v213 != 10)
      {
        break;
      }

LABEL_150:
      if (++v212 >= *(v211 + 24))
      {
        goto LABEL_163;
      }
    }

    v214 = v296;
LABEL_153:
    v215 = *v214;
    if (!*v214)
    {
LABEL_157:
      operator new();
    }

    while (1)
    {
      v214 = v215;
      v216 = *(v215 + 32);
      if (v213 < v216)
      {
        goto LABEL_153;
      }

      if (v216 >= v213)
      {
        break;
      }

      v215 = v214[1];
      if (!v215)
      {
        goto LABEL_157;
      }
    }

    v214[5] = v212;
    v217 = (a1 + 120);
    if (v213 != 57426)
    {
      if (v213 != 32)
      {
LABEL_162:
        v218 = sub_1837A4260(v213, v206, v207, v208, v209, v210);
        objc_msgSend_addObject_(v300, v219, v218, v220, v221, v222);
        objc_msgSend_addCharactersInString_(v302, v223, v218, v224, v225, v226);

        goto LABEL_150;
      }

      v217 = (a1 + 128);
    }

    *v217 = v212;
    goto LABEL_162;
  }

LABEL_163:
  v227 = objc_msgSend_copy(v300, v206, v207, v208, v209, v210);
  v228 = *(a1 + 136);
  *(a1 + 136) = v227;

  v234 = objc_msgSend_copy(v302, v229, v230, v231, v232, v233);
  v235 = *(a1 + 144);
  *(a1 + 144) = v234;

  v236 = *(a1 + 160);
  if (objc_msgSend_isEqualToString_(v236, v237, @"diffusion_latn.codemap", v238, v239, v240) || objc_msgSend_isEqualToString_(v236, v241, @"diffusion_latn_legacy.codemap", v242, v243, v244))
  {
    goto LABEL_170;
  }

  if (objc_msgSend_isEqualToString_(v236, v245, @"diffusion_zhja.codemap", v246, v247, v248))
  {
    buf[23] = 12;
    strcpy(buf, "input_length");
    v323 = 10;
    HIBYTE(v324[2]) = 18;
    strcpy(v324, "style_input_length");
    v325 = 10;
    HIBYTE(v326[2]) = 21;
    strcpy(v326, "model_features_length");
    v327 = 960;
    HIBYTE(v328[2]) = 16;
    strcpy(v328, "ids_input_length");
    v329 = 480;
    v305 = 0;
    v306 = 0;
    v304 = &v305;
    sub_1837DE228(&v304, &v305, buf);
    sub_1837DE228(&v304, &v305, v324);
    sub_1837DE228(&v304, &v305, v326);
    sub_1837DE228(&v304, &v305, v328);
    if (SHIBYTE(v328[2]) < 0)
    {
      operator delete(v328[0]);
    }

LABEL_171:
    if (SHIBYTE(v326[2]) < 0)
    {
      operator delete(v326[0]);
      if ((SHIBYTE(v324[2]) & 0x80000000) == 0)
      {
LABEL_173:
        if ((buf[23] & 0x80000000) == 0)
        {
          goto LABEL_178;
        }

LABEL_177:
        operator delete(*buf);
        goto LABEL_178;
      }
    }

    else if ((SHIBYTE(v324[2]) & 0x80000000) == 0)
    {
      goto LABEL_173;
    }

    operator delete(v324[0]);
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_177;
  }

  if (objc_msgSend_isEqualToString_(v236, v249, @"diffusion_ko_style_encoder.codemap", v250, v251, v252))
  {
LABEL_170:
    buf[23] = 12;
    strcpy(buf, "input_length");
    v323 = 48;
    HIBYTE(v324[2]) = 18;
    strcpy(v324, "style_input_length");
    v325 = 48;
    HIBYTE(v326[2]) = 21;
    strcpy(v326, "model_features_length");
    v327 = 1152;
    v305 = 0;
    v306 = 0;
    v304 = &v305;
    sub_1837DE228(&v304, &v305, buf);
    sub_1837DE228(&v304, &v305, v324);
    sub_1837DE228(&v304, &v305, v326);
    goto LABEL_171;
  }

  v305 = 0;
  v306 = 0;
  v304 = &v305;
LABEL_178:

  v253 = a1 + 80;
  sub_18368922C(a1 + 72, *(a1 + 80));
  v254 = v305;
  *(a1 + 72) = v304;
  *(a1 + 80) = v254;
  v255 = v306;
  *(a1 + 88) = v306;
  if (v255)
  {
    *(v254 + 16) = v253;
    v304 = &v305;
    v305 = 0;
    v306 = 0;
    v254 = 0;
  }

  else
  {
    *(a1 + 72) = v253;
  }

  sub_18368922C(&v304, v254);
  if (objc_msgSend_hasPrefix_(*(a1 + 160), v256, @"diffusion_latn", v257, v258, v259))
  {
    strcpy(buf, "input_style_labels_len");
    buf[23] = 22;
    v323 = 65568;
    HIBYTE(v324[2]) = 18;
    strcpy(v324, "input_style_labels");
    HIBYTE(v326[2]) = 12;
    v325 = 65568;
    strcpy(v326, "input_length");
    HIBYTE(v328[2]) = 12;
    v327 = 65568;
    strcpy(v328, "input_labels");
    v329 = 65568;
    v330[23] = 19;
    strcpy(v330, "input_labels_length");
    v331 = 65568;
    operator new();
  }

  *(&__dst + 1) = 0;
  v321 = 0;
  *&__dst = &__dst + 8;
  v260 = (a1 + 192);
  if ((a1 + 192) != &__dst)
  {
    v261 = __dst;
    if (*(a1 + 208))
    {
      v263 = *(a1 + 200);
      v262 = (a1 + 200);
      v264 = *(a1 + 192);
      *(a1 + 192) = a1 + 200;
      *(v263 + 16) = 0;
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      if (*(v264 + 8))
      {
        v265 = *(v264 + 8);
      }

      else
      {
        v265 = v264;
      }

      *buf = a1 + 192;
      *&buf[16] = v265;
      if (!v265)
      {
        v287 = v261;
        goto LABEL_247;
      }

      v266 = *(v265 + 16);
      if (v266)
      {
        v267 = *v266;
        if (*v266 == v265)
        {
          *v266 = 0;
          while (1)
          {
            v292 = *(v266 + 1);
            if (!v292)
            {
              break;
            }

            do
            {
              v266 = v292;
              v292 = *v292;
            }

            while (v292);
          }
        }

        else
        {
          for (*(v266 + 1) = 0; v267; v267 = *(v266 + 1))
          {
            do
            {
              v266 = v267;
              v267 = *v267;
            }

            while (v267);
          }
        }
      }

      *&buf[8] = v266;
      if (v261 != (&__dst + 8))
      {
        while (1)
        {
          std::string::operator=((v265 + 32), (v261 + 2));
          *(v265 + 56) = *(v261 + 7);
          v268 = *&buf[16];
          v269 = *v262;
          v270 = (a1 + 200);
          v271 = (a1 + 200);
          if (!*v262)
          {
            break;
          }

          v272 = *(*&buf[16] + 55);
          if (v272 >= 0)
          {
            v273 = *(*&buf[16] + 55);
          }

          else
          {
            v273 = *(*&buf[16] + 40);
          }

          if (v272 >= 0)
          {
            v274 = (*&buf[16] + 32);
          }

          else
          {
            v274 = *(*&buf[16] + 32);
          }

          do
          {
            while (1)
            {
              v270 = v269;
              v277 = v269[4];
              v275 = v269 + 4;
              v276 = v277;
              v278 = *(v275 + 23);
              if (v278 >= 0)
              {
                v279 = *(v275 + 23);
              }

              else
              {
                v279 = v275[1];
              }

              if (v278 >= 0)
              {
                v280 = v275;
              }

              else
              {
                v280 = v276;
              }

              if (v279 >= v273)
              {
                v281 = v273;
              }

              else
              {
                v281 = v279;
              }

              v282 = memcmp(v274, v280, v281);
              v283 = v273 < v279;
              if (v282)
              {
                v283 = v282 < 0;
              }

              if (!v283)
              {
                break;
              }

              v269 = *v270;
              v271 = v270;
              if (!*v270)
              {
                goto LABEL_216;
              }
            }

            v269 = v270[1];
          }

          while (v269);
          *v268 = 0;
          v268[1] = 0;
          v268[2] = v270;
          v270[1] = v268;
          v284 = **v260;
          if (v284)
          {
            goto LABEL_217;
          }

LABEL_218:
          sub_1836894A0(*(a1 + 200), v268);
          ++*(a1 + 208);
          v265 = *&buf[8];
          *&buf[16] = *&buf[8];
          if (*&buf[8])
          {
            v266 = *(*&buf[8] + 16);
            if (v266)
            {
              v285 = *v266;
              if (*v266 == *&buf[8])
              {
                *v266 = 0;
                while (1)
                {
                  v289 = *(v266 + 1);
                  if (!v289)
                  {
                    break;
                  }

                  do
                  {
                    v266 = v289;
                    v289 = *v289;
                  }

                  while (v289);
                }
              }

              else
              {
                for (*(v266 + 1) = 0; v285; v285 = *(v266 + 1))
                {
                  do
                  {
                    v266 = v285;
                    v285 = *v285;
                  }

                  while (v285);
                }
              }
            }

            *&buf[8] = v266;
            v286 = *(v261 + 1);
            if (v286)
            {
              do
              {
LABEL_227:
                v287 = v286;
                v286 = *v286;
              }

              while (v286);
              goto LABEL_231;
            }
          }

          else
          {
            v266 = 0;
            v286 = *(v261 + 1);
            if (v286)
            {
              goto LABEL_227;
            }
          }

          do
          {
            v287 = *(v261 + 2);
            v288 = *v287 == v261;
            v261 = v287;
          }

          while (!v288);
LABEL_231:
          if (v265)
          {
            v261 = v287;
            if (v287 != (&__dst + 8))
            {
              continue;
            }
          }

          v290 = *buf;
          sub_18368922C(*buf, v265);
          if (!v266)
          {
            goto LABEL_247;
          }

          goto LABEL_244;
        }

LABEL_216:
        *v268 = 0;
        v268[1] = 0;
        v268[2] = v270;
        *v271 = v268;
        v284 = **v260;
        if (!v284)
        {
          goto LABEL_218;
        }

LABEL_217:
        *v260 = v284;
        goto LABEL_218;
      }

      v290 = a1 + 192;
      v287 = v261;
      sub_18368922C(v260, v265);
      if (!v266)
      {
        goto LABEL_247;
      }

LABEL_244:
      for (i = *(v266 + 2); i; i = *(i + 2))
      {
        v266 = i;
      }

      sub_18368922C(v290, v266);
LABEL_247:
      v261 = v287;
    }

    if (v261 != (&__dst + 8))
    {
      operator new();
    }
  }

  sub_18368922C(&__dst, *(&__dst + 1));

  if (*v211)
  {
    munmap(*v211, *(v211 + 8));
  }

  MEMORY[0x1865E5EC0](v211, 0x1010C40A749B91FLL);
}

void sub_18384A384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a70 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    if (*a28)
    {
      munmap(*a28, *(a28 + 8));
    }

    MEMORY[0x1865E5EC0](a28, 0x1010C40A749B91FLL);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_18384A7B0(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *a1 = a1 + 8;
  *(a1 + 24) = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = @"diffusion_latn.codemap";
  *(a1 + 168) = @"diffusion_latn_ppc_lookup.json";
  *(a1 + 176) = 0;
  *(a1 + 184) = 24;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  sub_1838485A8(a1);
  return a1;
}

void sub_18384A874(_Unwind_Exception *a1)
{
  v6 = v5;
  sub_18368922C(v6, *(v1 + 200));

  sub_18368922C(v4, *(v1 + 80));
  sub_18368A374(v3, *(v1 + 56));
  sub_18368D56C(v2, *(v1 + 32));
  sub_18368D56C(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

id sub_18384A908(uint64_t a1, id **a2)
{
  v4 = objc_alloc(MEMORY[0x1E695FE48]);
  v5 = **a2;
  v19 = 0;
  v9 = objc_msgSend_initWithDictionary_error_(v4, v6, v5, &v19, v7, v8);
  v10 = v19;

  v11 = *(a1 + 104);
  v18 = 0;
  v15 = objc_msgSend_predictionFromFeatureProvider_error_(v11, v12, v9, &v18, v13, v14);
  v16 = v18;

  return v15;
}

void sub_18384AA0C(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1[1];
  if (*a1 != v3)
  {
    if (v3 - *a1 >= 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_18384AB44(_Unwind_Exception *a1)
{
  *(v2 + 8) = v1;
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_18384AB5C(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1[1];
  if (*a1 != v3)
  {
    if (v3 - *a1 >= 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_18384AC84(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

unint64_t sub_18384AC9C(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*a2 == a2[1])
  {
    return 0;
  }

  sub_18384AA0C(a2, &__p);
  if (__p == v29)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v3 = v29 - __p - 8;
  if (v3 >= 0x38)
  {
    v8 = (v3 >> 3) + 1;
    v5 = (__p + 8 * (v8 & 0x3FFFFFFFFFFFFFF8));
    v9 = (__p + 32);
    v10 = 0uLL;
    v11 = v8 & 0x3FFFFFFFFFFFFFF8;
    v12 = 0uLL;
    do
    {
      v14 = v9[-2];
      v13 = v9[-1];
      v16 = *v9;
      v15 = v9[1];
      v9 += 4;
      v10 = vaddq_s32(v10, vuzp1q_s32(v14, v13));
      v12 = vaddq_s32(v12, vuzp1q_s32(v16, v15));
      v11 -= 8;
    }

    while (v11);
    v4 = vaddvq_s32(vaddq_s32(v12, v10));
    if (v8 == (v8 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    v5 = __p;
  }

  do
  {
    v17 = *v5;
    v5 += 2;
    v4 += v17;
  }

  while (v5 != v29);
LABEL_11:
  v7 = v4;
LABEL_12:
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  v18 = *(a1 + 72);
  v19 = (a1 + 80);
  if (v18 != v19)
  {
    do
    {
      sub_1837DE228(buf, &buf[8], v18 + 4);
      v24 = v18[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v18[2];
          v26 = *v25 == v18;
          v18 = v25;
        }

        while (!v26);
      }

      v18 = v25;
    }

    while (v25 != v19);
  }

  HIBYTE(v27[2]) = 21;
  strcpy(v27, "model_features_length");
  v30 = v27;
  v6 = sub_18369F498(buf, v27)[7];
  if ((SHIBYTE(v27[2]) & 0x80000000) == 0)
  {
    sub_18368922C(buf, *&buf[8]);
    if (v6 < v7)
    {
      goto LABEL_15;
    }

LABEL_33:
    v6 = v7;
    v22 = __p;
    if (!__p)
    {
      return v6;
    }

    goto LABEL_23;
  }

  operator delete(v27[0]);
  sub_18368922C(buf, *&buf[8]);
  if (v6 >= v7)
  {
    goto LABEL_33;
  }

LABEL_15:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v20 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_ERROR, "Model: Expected numPoints <= %lu but got numPoints=%lu", buf, 0x16u);
  }

  if (qword_1EA84DC48 == -1)
  {
    v21 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v21 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
LABEL_21:
    *buf = 134218240;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_FAULT, "Model: Expected numPoints <= %lu but got numPoints=%lu", buf, 0x16u);
  }

LABEL_22:

  v22 = __p;
  if (__p)
  {
LABEL_23:
    operator delete(v22);
  }

  return v6;
}

void sub_18384AFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char *a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_18368922C(&a20, a21);
  if (!a15)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a15);
  _Unwind_Resume(a1);
}

void sub_18384B030(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v13 = objc_msgSend_UTF8String(v7, v8, v9, v10, v11, v12);
  v14 = strlen(v13);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  v58 = v14;
  if (v14)
  {
    memmove(&__dst, v13, v14);
  }

  *(&__dst + v15) = 0;
  v16 = *(a1 + 8);
  v55 = 0;
  v56 = 0;
  v54 = &v55;
  v17 = *(v16 + 192);
  v18 = (v16 + 200);
  if (v17 != (v16 + 200))
  {
    do
    {
      sub_18384B960(&v54, &v55, v17 + 4);
      v33 = v17[1];
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = v17[2];
          v35 = *v34 == v17;
          v17 = v34;
        }

        while (!v35);
      }

      v17 = v34;
    }

    while (v34 != v18);
  }

  p_dst = &__dst;
  v19 = sub_18384BACC(&v54, &__dst)[7];
  sub_18368922C(&v54, v55);
  if (!v19)
  {
    goto LABEL_11;
  }

  v23 = *(a1 + 8);
  v55 = 0;
  v56 = 0;
  v54 = &v55;
  v24 = *(v23 + 192);
  v25 = (v23 + 200);
  if (v24 != (v23 + 200))
  {
    do
    {
      sub_18384B960(&v54, &v55, v24 + 4);
      v36 = v24[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v24[2];
          v35 = *v37 == v24;
          v24 = v37;
        }

        while (!v35);
      }

      v24 = v37;
    }

    while (v37 != v25);
  }

  p_dst = &__dst;
  v26 = sub_18384BACC(&v54, &__dst)[7];
  sub_18368922C(&v54, v55);
  if (objc_msgSend_dataType(v6, v27, v28, v29, v30, v31) != v26)
  {
    v38 = objc_alloc(MEMORY[0x1E695FED0]);
    v44 = objc_msgSend_shape(v6, v39, v40, v41, v42, v43);
    v32 = objc_msgSend_initWithShape_dataType_error_(v38, v45, v44, v26, 0, v46);

    objc_msgSend_transferToMultiArray_(v6, v47, v32, v48, v49, v50);
    objc_msgSend_setObject_forKeyedSubscript_(*a1, v51, v32, v5, v52, v53);
  }

  else
  {
LABEL_11:
    v32 = v6;
    objc_msgSend_setObject_forKeyedSubscript_(*a1, v20, v6, v5, v21, v22);
  }

  if (v58 < 0)
  {
    operator delete(__dst);
  }
}

void sub_18384B2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_18384B360(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v9 = objc_msgSend_cStringUsingEncoding_(v4, v5, 4, v6, v7, v8);
  v10 = strlen(v9);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v15 = v10;
  if (v10)
  {
    memmove(&__dst, v9, v10);
  }

  *(&__dst + v11) = 0;
  v12 = sub_1838B88A8(&__dst);
  if (v15 < 0)
  {
    v13 = v12;
    operator delete(__dst);
    v12 = v13;
  }

  *a1 = v12;
}

void sub_18384B45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_18384B48C(void *a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v44 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC98;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v53 = v44;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_DEBUG, "Loading PPC lookup from %@", buf, 0xCu);
  }

  v43 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v4, v44, v5, v6, v7);
  v10 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v8, v43, 1, 0, v9);
  a1[1] = 0;
  v11 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v46 = v10;
  obj = objc_msgSend_allKeys(v10, v12, v13, v14, v15, v16);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v47, v51, 16, v18);
  if (v24)
  {
    v25 = *v48;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v47 + 1) + 8 * i);
        v28 = objc_msgSend_intValue(v27, v19, v20, v21, v22, v23);
        v33 = objc_msgSend_objectForKey_(v46, v29, v27, v30, v31, v32);
        v39 = objc_msgSend_intValue(v33, v34, v35, v36, v37, v38);

        v40 = *v11;
        if (!*v11)
        {
LABEL_16:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v41 = v40;
            v42 = v40[4];
            if (v42 <= v28)
            {
              break;
            }

            v40 = *v41;
            if (!*v41)
            {
              goto LABEL_16;
            }
          }

          if (v42 >= v28)
          {
            break;
          }

          v40 = v41[1];
          if (!v40)
          {
            goto LABEL_16;
          }
        }

        *(v41 + 10) = v39;
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v47, v51, 16, v23);
    }

    while (v24);
  }
}

void sub_18384B8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  sub_18368D56C(v12, *(v12 + 8));

  _Unwind_Resume(a1);
}

uint64_t sub_18384B960(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = sub_1837DE33C(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_18384BA60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

uint64_t sub_18384BA74(uint64_t a1)
{
  sub_18368922C(*a1, *(a1 + 16));
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

    sub_18368922C(*a1, v2);
  }

  return a1;
}

void *sub_18384BACC(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_18384BC6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

uint64_t sub_18384C900(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v11 = objc_msgSend_strokeIdentifier(a2, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_strokeIdentifier(v5, v12, v13, v14, v15, v16);

  v21 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v4, v18, v11, v17, v19, v20);
  return v21;
}

uint64_t sub_18384CC98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v11 = *(a1 + 32);
  if (v11)
  {
    objc_msgSend_addPoint_(v11, a2, a3, a4, a5, a6, a7, a8);
  }

  v12 = a7 - *(a1 + 48);
  v13 = a8 - *(a1 + 56);
  v14 = *(a1 + 40);

  return objc_msgSend_addPoint_(v14, a2, a3, a4, a5, a6, v12, v13);
}

uint64_t sub_18384CCFC(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_msgSend_startTimestamp(a2, v5, v6, v7, v8, v9);
  v11 = v10;
  objc_msgSend_startTimestamp(v4, v12, v13, v14, v15, v16);
  v18 = v17;

  if (v11 >= v18)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_183853F24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38, void *a39, void *a40, void *a41, uint64_t a42, void *a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x258] = a1;

  _Unwind_Resume(STACK[0x258]);
}

void sub_18385556C(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 520);
    objc_opt_self();
    if (v4 && (v4 != 2 && v4 != 1 || a2 != 2))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v5 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 520);
        v10 = 134218240;
        v11 = v6;
        v12 = 2048;
        v13 = a2;
        _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_ERROR, "Invalid status transition from %ld to %ld.", &v10, 0x16u);
      }
    }

    v7 = *(a1 + 520);
    objc_opt_self();
    if (v7 && (v7 != 2 && v7 != 1 || a2 != 2))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v8 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = *(a1 + 520);
        v10 = 134218240;
        v11 = v9;
        v12 = 2048;
        v13 = a2;
        _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_FAULT, "Invalid status transition from %ld to %ld.", &v10, 0x16u);
      }
    }

    *(a1 + 520) = a2;
  }
}

id sub_183855780(void *a1, void *a2, void *a3)
{
  v133 = a2;
  v5 = a3;
  v131 = v5;
  if (a1)
  {
    v11 = v5;
    hasPrincipalLines = objc_msgSend_hasPrincipalLines(v5, v6, v7, v8, v9, v10);
    v13 = v11;
    v19 = v13;
    if ((hasPrincipalLines & 1) == 0)
    {
      v132 = objc_msgSend_preferredLocale(v13, v14, v15, v16, v17, v18);
      v25 = objc_msgSend_recognitionResultsByLocale(v19, v20, v21, v22, v23, v24);
      v30 = objc_msgSend_objectForKeyedSubscript_(v25, v26, v132, v27, v28, v29);

      if (v30)
      {
        v130 = v30;
        v36 = objc_msgSend_inputStrokeIdentifiers(v30, v31, v32, v33, v34, v35);
        v42 = objc_msgSend_count(v36, v37, v38, v39, v40, v41);

        if (!v42)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v48 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_ERROR, "CHRecognitionSessionTasks can not add principal lines on a text result with no stroke identifiers.", buf, 2u);
          }
        }

        v49 = objc_msgSend_inputStrokeIdentifiers(v130, v43, v44, v45, v46, v47);
        v55 = objc_msgSend_count(v49, v50, v51, v52, v53, v54);

        if (!v55)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v60 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
          {
            *v134 = 0;
            _os_log_impl(&dword_18366B000, v60, OS_LOG_TYPE_FAULT, "CHRecognitionSessionTasks can not add principal lines on a text result with no stroke identifiers.", v134, 2u);
          }
        }

        objc_msgSend_setLocale_(v130, v56, v132, v57, v58, v59);
        v129 = sub_18385F5A4(a1, v133, 0, v130);
        v66 = objc_msgSend_recognitionResultsByLocale(v19, v61, v62, v63, v64, v65);
        v72 = objc_msgSend_mutableCopy(v66, v67, v68, v69, v70, v71);

        v128 = v72;
        objc_msgSend_setObject_forKeyedSubscript_(v72, v73, v129, v132, v74, v75);
        v81 = objc_msgSend_processing(v19, v76, v77, v78, v79, v80);
        v82 = [CHStrokeGroupRecognitionResult alloc];
        v127 = objc_msgSend_recognitionLocales(a1, v83, v84, v85, v86, v87);
        v126 = objc_msgSend_errorsByLocale(v19, v88, v89, v90, v91, v92);
        v125 = objc_msgSend_languageFitnessByLocale(v19, v93, v94, v95, v96, v97);
        v103 = objc_msgSend_mathResult(v19, v98, v99, v100, v101, v102);
        v109 = objc_msgSend_inputStrokeIdentifiers(v19, v104, v105, v106, v107, v108);
        v115 = objc_msgSend_inputDrawing(v19, v110, v111, v112, v113, v114);
        v121 = objc_msgSend_inputDrawingCutPoints(v19, v116, v117, v118, v119, v120);
        v123 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_inputDrawing_inputDrawingCutPoints_(v82, v122, v127, v128, v126, v125, v103, v109, v81 | 2, v115, v121);

        v19 = v123;
        v30 = v130;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id sub_183855BF0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v125 = *MEMORY[0x1E69E9840];
  v116 = a2;
  v8 = a3;
  v111 = a4;
  v115 = a5;
  v110 = v8;
  v14 = objc_msgSend_strokeGroup(v8, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_ancestorIdentifier(v14, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_strokeGroup(v116, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_ancestorIdentifier(v26, v27, v28, v29, v30, v31);

  if (v20 != v32)
  {
    goto LABEL_7;
  }

  v118 = v110;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v38 = qword_1EA84DC60;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v38, OS_LOG_TYPE_DEFAULT, "Inventory data ingestion: (autorefine) matched current result", buf, 2u);
  }

  if (!v118)
  {
LABEL_7:
    if (objc_msgSend_count(v111, v33, v34, v35, v36, v37) > 0xA)
    {
      v118 = 0;
    }

    else
    {
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      obj = v111;
      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v119, v124, 16, v40);
      if (v46)
      {
        v118 = 0;
        v114 = *v120;
LABEL_10:
        v47 = 0;
        while (1)
        {
          if (*v120 != v114)
          {
            objc_enumerationMutation(obj);
          }

          v48 = *(*(&v119 + 1) + 8 * v47);
          v49 = MEMORY[0x1E696AD98];
          v50 = objc_msgSend_uniqueIdentifier(v48, v41, v42, v43, v44, v45);
          v117 = objc_msgSend_numberWithInteger_(v49, v51, v50, v52, v53, v54);
          v59 = objc_msgSend_objectForKeyedSubscript_(v115, v55, v117, v56, v57, v58);
          v65 = objc_msgSend_preferredLocale(v59, v60, v61, v62, v63, v64);
          v71 = objc_msgSend_recognitionResultsByLocale(v59, v66, v67, v68, v69, v70);
          v76 = objc_msgSend_objectForKeyedSubscript_(v71, v72, v65, v73, v74, v75);

          v82 = objc_msgSend_topTranscription(v76, v77, v78, v79, v80, v81);
          v88 = objc_msgSend_textResult(v116, v83, v84, v85, v86, v87);
          v94 = objc_msgSend_topTranscription(v88, v89, v90, v91, v92, v93);
          LODWORD(v71) = objc_msgSend_isEqualToString_(v82, v95, v94, v96, v97, v98);

          if (v71)
          {
            if (v118)
            {
              v104 = 0;
              v105 = 0;
            }

            else
            {
              v106 = objc_msgSend_inputStrokeIdentifiers(v59, v99, v100, v101, v102, v103);
              v118 = sub_183860680(a1, v76, v106);

              v107 = [CHRecognitionSessionAutoRefineResult alloc];
              v104 = objc_msgSend_initWithStrokeGroupResult_strokeGroup_textResult_refinedColumns_strokeProvider_(v107, v108, v59, v48, v76, v118, *(a1 + 560));
              v105 = 1;
            }

            v118 = v104;
          }

          else
          {
            v105 = 1;
          }

          if (!v105)
          {
            break;
          }

          if (v46 == ++v47)
          {
            v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v119, v124, 16, v45);
            if (v46)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }

      else
      {
        v118 = 0;
      }
    }
  }

  return v118;
}

void sub_1838560A8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v9)
  {
    if (CHHasPersonalizedSynthesisSupport())
    {
      v18 = objc_msgSend_delegate(a1, v13, v14, v15, v16, v17);
      v24 = objc_msgSend_textSynthesizer(v18, v19, v20, v21, v22, v23);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v31 = objc_msgSend_delegate(a1, v26, v27, v28, v29, v30);
        v103 = objc_msgSend_textSynthesizer(v31, v32, v33, v34, v35, v36);

        v102 = objc_msgSend_strokeGroup(v9, v37, v38, v39, v40, v41);
        v101 = objc_msgSend_delegate(a1, v42, v43, v44, v45, v46);
        v52 = objc_msgSend_textSynthesizer(v101, v47, v48, v49, v50, v51);
        v58 = objc_msgSend_strokeProvider(a1, v53, v54, v55, v56, v57);
        v64 = objc_msgSend_strokeGroupResult(v9, v59, v60, v61, v62, v63);
        LOBYTE(v31) = objc_msgSend_isGroupAcceptableForInventory_textSynthesizer_strokeProvider_recognitionResult_strokeClassificationResult_allowSyntheticStrokes_(CHRecognitionSessionTask, v65, v102, v52, v58, v64, v11, 1);

        if (v31)
        {
          v71 = objc_msgSend_textResult(v10, v66, v67, v68, v69, v70);
          v77 = objc_msgSend_tokenColumnCount(v71, v72, v73, v74, v75, v76);
          v83 = objc_msgSend_textResult(v9, v78, v79, v80, v81, v82);
          v89 = objc_msgSend_tokenColumnCount(v83, v84, v85, v86, v87, v88);

          if (v77 <= v89)
          {
            v96 = objc_msgSend_textResult(v10, v90, v91, v92, v93, v94);
            v104[0] = MEMORY[0x1E69E9820];
            v104[1] = 3221225472;
            v104[2] = sub_1838626E4;
            v104[3] = &unk_1E6DDF0C0;
            v105 = v10;
            v106 = v12;
            v107 = v9;
            v108 = a1;
            v109 = v103;
            objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v96, v97, v104, v98, v99, v100);

            v95 = v105;
          }

          else
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v95 = qword_1EA84DC60;
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v95, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: (autorefine) rejecting group for incompatible column count with previous result", buf, 2u);
            }
          }
        }
      }
    }
  }
}

void sub_18385648C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v81 = a4;
  if (a1)
  {
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = objc_msgSend_strokeGroups(v7, v9, v10, v11, v12, v13);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v91, v113, 16, v15);
    if (v21)
    {
      v87 = 0;
      v88 = 0;
      v84 = 0;
      v85 = 0;
      v89 = 0;
      v82 = 0;
      v83 = 0;
      v86 = 0;
      v22 = *v92;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v92 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v91 + 1) + 8 * i);
          v25 = objc_msgSend_createdStrokeGroups(v7, v16, v17, v18, v19, v20, v81);
          v30 = objc_msgSend_containsObject_(v25, v26, v24, v27, v28, v29);

          v31 = MEMORY[0x1E696AD98];
          v37 = objc_msgSend_uniqueIdentifier(v24, v32, v33, v34, v35, v36);
          v42 = objc_msgSend_numberWithInteger_(v31, v38, v37, v39, v40, v41);
          v47 = objc_msgSend_objectForKeyedSubscript_(v8, v43, v42, v44, v45, v46);

          if (v47)
          {
            v58 = objc_msgSend_mathResult(v47, v48, v49, v50, v51, v52);
            if (!v58 || (objc_msgSend_recognitionResultsByLocale(v47, v53, v54, v55, v56, v57), v59 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend_count(v59, v60, v61, v62, v63, v64) == 0, v59, v58, v65))
            {
              v66 = objc_msgSend_mathResult(v47, v53, v54, v55, v56, v57);
              v67 = v66 == 0;

              if (v67)
              {
                v73 = objc_msgSend_recognitionResultsByLocale(v47, v68, v69, v70, v71, v72);
                v79 = objc_msgSend_count(v73, v74, v75, v76, v77, v78) == 0;

                if (v79)
                {
                  ++v82;
                  v83 += v30;
                }

                else
                {
                  ++v84;
                  v85 += v30;
                }
              }

              else
              {
                ++v86;
                v87 += v30;
              }
            }

            else
            {
              ++v88;
              v89 += v30;
            }
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v91, v113, 16, v20);
      }

      while (v21);
    }

    else
    {
      v87 = 0;
      v88 = 0;
      v84 = 0;
      v85 = 0;
      v89 = 0;
      v82 = 0;
      v83 = 0;
      v86 = 0;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v80 = qword_1EA84DC60;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138414338;
      v96 = v81;
      v97 = 2048;
      v98 = v86;
      v99 = 2048;
      v100 = v87;
      v101 = 2048;
      v102 = v84;
      v103 = 2048;
      v104 = v85;
      v105 = 2048;
      v106 = v88;
      v107 = 2048;
      v108 = v89;
      v109 = 2048;
      v110 = v82;
      v111 = 2048;
      v112 = v83;
      _os_log_impl(&dword_18366B000, v80, OS_LOG_TYPE_DEFAULT, "%@ session result contains the following groups (newly created). Math: %lu (%lu), Text: %lu (%lu), Both: %lu (%lu), None: %lu (%lu)", buf, 0x5Cu);
    }
  }
}

void sub_1838568FC()
{
  if (MGGetBoolAnswer())
  {
    byte_1EA84D038 = 1;
  }

  else
  {
    v5 = MGGetBoolAnswer();
    byte_1EA84D038 = v5;
    if (!v5)
    {
      byte_1EA84D038 = 0;
      return;
    }
  }

  v10 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v0, v1, v2, v3, v4);
  byte_1EA84D038 = objc_msgSend_BOOLForKey_(v10, v6, @"CHRecognitionSessionLogging", v7, v8, v9);
}

uint64_t sub_1838569B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v11 = objc_msgSend_uniqueIdentifier(v3, v6, v7, v8, v9, v10);
  v16 = objc_msgSend_numberWithInteger_(v5, v12, v11, v13, v14, v15);
  v21 = objc_msgSend_containsObject_(v4, v17, v16, v18, v19, v20);

  return v21;
}